import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:provider/provider.dart';
import '../connection/connection.dart';
import '../connection/connection_registry.dart';
import '../connection/plex_account_setup.dart';
import '../database/app_database.dart';
import '../mixins/controller_disposer_mixin.dart';
import '../profiles/active_profile_binder.dart';
import '../profiles/active_profile_provider.dart';
import '../profiles/plex_home_service.dart';
import '../profiles/profile.dart';
import '../profiles/profile_connection.dart';
import '../profiles/profile_registry.dart';
import '../profiles/profile_connection_registry.dart';
import '../profiles/profile_selection_policy.dart';
import '../services/plex_auth_service.dart';
import '../services/settings_service.dart';
import '../services/storage_service.dart';
import '../providers/account_preferences_controller.dart';
import '../i18n/strings.g.dart';
import '../utils/app_logger.dart';
import '../utils/dialogs.dart';
import '../utils/platform_detector.dart';
import '../focus/focusable_button.dart';
import '../focus/focusable_text_field.dart';
import '../focus/key_event_utils.dart';
import '../media/media_backend.dart';
import '../media/media_browser_dialect.dart';
import '../navigation/profile_session_screen.dart';
import '../utils/navigation_transitions.dart';
import '../widgets/backend_badge.dart';
import '../widgets/dialog_action_button.dart';
import '../widgets/connection_setup_scaffold.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'auth/plex_pin_auth_flow.dart';
import 'auth/plex_home_identity_screen.dart';
import 'profile/profile_switch_screen.dart';
import 'settings/add_jellyfin_screen.dart';
import 'settings/phone_server_pairing_screen.dart';
import 'settings/tv_server_pairing_dialog.dart';
import 'profile/onboarding_profile_screen.dart';
import 'profile/full_backup_actions.dart';
import 'profile/cloud_backup_actions.dart';
import 'settings/connection_persistence.dart';
import '../services/profile_appearance_service.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({
    super.key,
    this.initialErrorMessage,
    this.initializeServices = true,
    this.databaseRecoveryRequired = false,
  });

  final String? initialErrorMessage;
  final bool initializeServices;
  final bool databaseRecoveryRequired;
  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool _isAuthenticating = false;
  bool _backupRestored = false;
  String? _errorMessage;
  // Reuse a one-shot service for the debug-token verify path; the Plex
  // PIN/QR flow inside [PlexPinAuthFlow] owns its own service instance.
  PlexAuthService? _verifyOnlyService;
  Future<void>? _recoveryAcknowledgement;
  bool _recoveryAcknowledged = false;

  @override
  void initState() {
    super.initState();
    _errorMessage = widget.initialErrorMessage;
    // Debug-token verification only — release builds must not hold an idle
    // auth service (and its HTTP client) for a dialog that can't open.
    if (kDebugMode && widget.initializeServices) unawaited(_initVerifyService());
  }

  Future<void> _initVerifyService() async {
    final svc = await PlexAuthService.create();
    if (!mounted) {
      svc.dispose();
      return;
    }
    setState(() => _verifyOnlyService = svc);
  }

  @override
  void dispose() {
    _verifyOnlyService?.dispose();
    super.dispose();
  }

  /// Auto-select the active profile after sign-in *only* when there's a
  /// single, unprotected Plex Home user — there's no choice for the user to
  /// make. With multiple Home users (the "real" Home case) we leave the active
  /// id unset so [MainScreen] forces the picker before the binder runs,
  /// avoiding a surprise PIN prompt on whichever user we'd otherwise
  /// pre-select. A PIN-protected single user also goes through the picker —
  /// see [initialPlexHomeProfileFromCache].
  Future<void> _selectInitialProfile(
    PlexHomeService plexHome,
    ActiveProfileProvider activeProfiles,
    PlexAccountConnection accountConn,
  ) async {
    await activeProfiles.initialize();
    final profile = initialPlexHomeProfileFromCache(plexHome, accountConn);
    if (profile == null) {
      await activeProfiles.clearActiveProfile();
      return;
    }
    await activeProfiles.activate(profile);
  }

  Future<bool> _prepareDatabaseRecoveryForSignIn() async {
    if (!widget.databaseRecoveryRequired || _recoveryAcknowledged) return true;
    final acknowledgement = _recoveryAcknowledgement ??= context
        .read<AppDatabase>()
        .acknowledgeTvosDatabaseRecoveryRequired();
    try {
      await acknowledgement;
      _recoveryAcknowledged = true;
      if (mounted) setState(() => _errorMessage = null);
      return mounted;
    } catch (_) {
      _recoveryAcknowledgement = null;
      if (mounted) setState(() => _errorMessage = t.auth.localDataRecoveryRequired);
      return false;
    }
  }

  Future<void> _startPlexAfterRecovery(VoidCallback start) async {
    if (await _prepareDatabaseRecoveryForSignIn()) start();
  }

  /// Persist the new Plex account into the connection pipeline, resolve the
  /// initial active profile when possible, and navigate to the main screen.
  /// The top-level [ActiveProfileBinder] picks up the active profile id and
  /// connects servers via [MultiServerManager.refreshTokensForProfile].
  Future<void> _connectToAllServersAndNavigate(String plexToken) async {
    if (!await _prepareDatabaseRecoveryForSignIn()) return;
    if (!mounted) return;

    setState(() {
      _isAuthenticating = true;
      _errorMessage = null;
    });

    final connectionRegistry = context.read<ConnectionRegistry>();
    final profileConnections = context.read<ProfileConnectionRegistry>();
    final plexHome = context.read<PlexHomeService>();

    try {
      final storage = await StorageService.getInstance();
      final registration = await registerPlexAccountFromToken(
        token: plexToken,
        connections: connectionRegistry,
        profileConnections: profileConnections,
        storage: storage,
        plexHome: plexHome,
      );
      final accountConnection = registration.connection;

      if (accountConnection.servers.isEmpty) {
        // Nothing to roll back — the registered account row is exactly what
        // a retry will upsert over; wiping global credentials here would
        // also nuke the device identity and every server-endpoint cache.
        if (!mounted) return;
        setState(() {
          _isAuthenticating = false;
          _errorMessage = t.serverSelection.noServersFoundForAccount(
            username: registration.username,
            email: registration.email,
          );
        });
        return;
      }

      if (!registration.homeUsersFetched && plexHome.current[accountConnection.id] == null) {
        // A failed home-user fetch is NOT "multiple users, let them pick":
        // with no home users and no locals there is no profile to select,
        // and navigating lands in a dead session. Surface a retry instead.
        if (!mounted) return;
        setState(() {
          _isAuthenticating = false;
          _errorMessage = t.profiles.failedToLoadHomeUsers;
        });
        return;
      }

      if (!mounted) return;
      final activeProfiles = context.read<ActiveProfileProvider>();
      await ProfileAppearanceService.instance.initialize();
      if (!mounted) return;
      final homeUsers = plexHome.current[accountConnection.id] ?? const [];
      final identity = homeUsers.isEmpty
          ? null
          : await selectPlexHomeIdentity(
              context,
              account: accountConnection,
              users: homeUsers,
              accountUuid: registration.accountUuid,
            );
      if (!mounted) return;
      if (homeUsers.isNotEmpty && identity == null) {
        setState(() => _isAuthenticating = false);
        return;
      }
      final locals = await context.read<ProfileRegistry>().list();
      if (!mounted) return;
      if (!ProfileAppearanceService.instance.setupComplete && locals.isEmpty && identity != null) {
        final profile = Profile.local(
          id: 'local-${const Uuid().v4()}',
          displayName: identity.user.displayName,
          avatarThumbUrl: identity.user.thumb,
          createdAt: DateTime.now(),
        );
        await persistAndBindConnection(
          context: context,
          connection: accountConnection,
          firstRunProfile: profile,
          bindToProfile: ProfileConnection(
            profileId: profile.id,
            connectionId: accountConnection.id,
            userIdentifier: identity.user.uuid,
            userToken: identity.token,
            tokenAcquiredAt: DateTime.now(),
          ),
        );
      } else if (identity != null) {
        final profile = Profile.virtualPlexHome(connectionId: accountConnection.id, homeUser: identity.user);
        await profileConnections.upsert(
          ProfileConnection(
            profileId: profile.id,
            connectionId: accountConnection.id,
            userIdentifier: identity.user.uuid,
            userToken: identity.token,
            tokenAcquiredAt: DateTime.now(),
          ),
        );
        await activeProfiles.initialize();
        if (!mounted) return;
        context.read<ActiveProfileBinder>().markPlexHomePreVerified(profile.id);
        await activeProfiles.activate(profile);
      } else {
        await _selectInitialProfile(plexHome, activeProfiles, accountConnection);
      }

      if (!mounted) return;

      // Start the binder before the picker/MainScreen, mirroring the
      // cold-start SetupScreen ordering. On a fresh install SetupScreen
      // routes here without ever starting it, so without this the profile
      // activated above is bound only by MainScreen's post-frame start() —
      // Discover renders a "No servers available" flash in the gap, and the
      // picker's awaitBindingSettle resolves before anything is bound.
      context.read<ActiveProfileBinder>().start();

      final settings = await SettingsService.getInstance();
      if (!mounted) return;

      final promptHandled = shouldPromptForInitialProfileSelection(
        activeProfile: activeProfiles.active,
        hasProfiles: activeProfiles.profiles.isNotEmpty,
        accountHasHomeUsers: plexHome.current[accountConnection.id]?.isNotEmpty == true,
        requireProfileSelectionOnOpen: activeProfiles.requiresSelectionOnOpen(settings),
      );
      if (promptHandled) {
        final selected = await Navigator.of(
          context,
        ).push<bool>(MaterialPageRoute(builder: (_) => const ProfileSwitchScreen(requireSelection: true)));
        if (!mounted) return;
        if (selected != true || activeProfiles.active == null) {
          setState(() => _isAuthenticating = false);
          return;
        }
      }

      await context.read<AccountPreferencesController>().ensureActiveLoaded();
      await ProfileAppearanceService.instance.beginSetup();

      if (!mounted) return;
      unawaited(
        Navigator.pushReplacement(
          context,
          fadeRoute(
            ProfileAppearanceService.instance.setupComplete
                ? ProfileSessionScreen(initialPromptHandled: promptHandled)
                : OnboardingProfileScreen(initialPromptHandled: promptHandled),
          ),
        ),
      );
    } catch (e) {
      appLogger.e('Failed to connect to servers', error: e);
      if (!mounted) return;
      setState(() {
        _isAuthenticating = false;
        _errorMessage = t.serverSelection.failedToLoadServers(error: e);
      });
    }
  }

  void _handleDebugTap() {
    if (!kDebugMode) return;
    _showDebugTokenDialog();
  }

  Future<void> _connectToMediaBrowser(MediaBrowserDialect dialect) async {
    if (!await _prepareDatabaseRecoveryForSignIn()) return;
    if (!mounted) return;
    final added = await Navigator.push<bool>(
      context,
      MaterialPageRoute(builder: (_) => AddJellyfinScreen(dialect: dialect)),
    );
    if (!mounted || added != true) return;
    await ProfileAppearanceService.instance.initialize();
    await ProfileAppearanceService.instance.beginSetup();
    if (!mounted) return;
    // The connection persisted and the manager registered the client; move
    // straight to the main screen. [MainScreen] reads the active client
    // from the server provider, so no client argument is needed here.
    unawaited(
      Navigator.pushReplacement(
        context,
        fadeRoute(
          ProfileAppearanceService.instance.setupComplete
              ? const ProfileSessionScreen()
              : const OnboardingProfileScreen(),
        ),
      ),
    );
  }

  void _showDebugTokenDialog() {
    unawaited(
      showScopedDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return _DebugTokenDialog(verifyService: _verifyOnlyService, onTokenAccepted: _connectToAllServersAndNavigate);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Focus(
      canRequestFocus: false,
      onKeyEvent: (_, event) => handleBackKeyNavigation(context, event),
      child: ConnectionSetupScaffold(
        title: t.onboarding.connectTitle,
        description: t.onboarding.connectHint,
        canGoBack: false,
        child: _buildAuthBody(),
      ),
    );
  }

  Widget _buildAuthBody() {
    if (_backupRestored) {
      return const Text('Backup restored. Close and reopen Luroka to load your profiles and settings.');
    }
    if (_isAuthenticating) {
      return Column(
        mainAxisSize: .min,
        children: [
          const Center(child: CircularProgressIndicator()),
          const SizedBox(height: 16),
          Text(
            t.auth.waitingForAuth,
            textAlign: TextAlign.center,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7)),
          ),
        ],
      );
    }
    return PlexPinAuthFlow(
      onTokenReceived: _connectToAllServersAndNavigate,
      autoStartQrOnTV: false,
      initializeService: widget.initializeServices,
      initialButtonsBuilder: _buildInitialButtons,
    );
  }

  Widget _buildInitialButtons(BuildContext context, VoidCallback startBrowser, VoidCallback startQr, bool busy) {
    final isTV = PlatformDetector.isTV();
    final isAppleTV = PlatformDetector.isAppleTV();
    void startBrowserAfterRecovery() => unawaited(_startPlexAfterRecovery(startBrowser));
    void startQrAfterRecovery() => unawaited(_startPlexAfterRecovery(startQr));
    const jellyfinDialect = MediaBrowserDialect.jellyfin;
    const embyDialect = MediaBrowserDialect.emby;
    void connectToJellyfin() => unawaited(_connectToMediaBrowser(jellyfinDialect));
    void connectToEmby() => unawaited(_connectToMediaBrowser(embyDialect));
    return Column(
      mainAxisSize: .min,
      crossAxisAlignment: .stretch,
      children: [
        _serviceChoice(
          backend: MediaBackend.plex,
          label: t.auth.signInWithPlex,
          primary: true,
          autofocus: isTV,
          onPressed: busy
              ? null
              : isTV
              ? startQrAfterRecovery
              : startBrowserAfterRecovery,
        ),
        const SizedBox(height: 4),
        if (!isTV || !isAppleTV)
          Align(
            alignment: Alignment.center,
            child: TextButton.icon(
              onPressed: busy
                  ? null
                  : isTV
                  ? startBrowserAfterRecovery
                  : startQrAfterRecovery,
              icon: Icon(isTV ? Symbols.open_in_browser_rounded : Symbols.qr_code_rounded, size: 18),
              label: Text(isTV ? t.auth.useBrowser : t.auth.showQRCode),
            ),
          ),
        const SizedBox(height: 20),
        _serviceChoice(
          backend: MediaBackend.jellyfin,
          label: t.auth.connectToMediaBrowser(product: jellyfinDialect.productName),
          onPressed: busy ? null : connectToJellyfin,
        ),
        const SizedBox(height: 12),
        _serviceChoice(
          backend: MediaBackend.emby,
          label: t.auth.connectToMediaBrowser(product: embyDialect.productName),
          onPressed: busy ? null : connectToEmby,
        ),
        if (serverPairingEnabled && !isTV)
          TextButton.icon(
            onPressed: busy
                ? null
                : () => Navigator.of(
                    context,
                  ).push<void>(MaterialPageRoute(builder: (_) => const PhoneServerPairingScreen())),
            icon: const Icon(Icons.tv_rounded),
            label: const Text('Connect a TV'),
          ),
        const SizedBox(height: 12),
        TextButton.icon(
          onPressed: busy
              ? null
              : () async {
                  final restored = await restoreFullBackup(context);
                  if (mounted && restored) setState(() => _backupRestored = true);
                },
          icon: const Icon(Icons.restore_rounded),
          label: const Text('Restore encrypted backup'),
        ),
        if (cloudBackupEnabled)
          TextButton.icon(
            onPressed: busy
                ? null
                : () async {
                    final restored = await showCloudBackupRestore(context);
                    if (mounted && restored) setState(() => _backupRestored = true);
                  },
            icon: const Icon(Icons.cloud_download_outlined),
            label: const Text('Restore cloud backup'),
          ),
        if (kDebugMode) ...[
          const SizedBox(height: 12),
          FocusableButton(
            onPressed: _handleDebugTap,
            child: OutlinedButton(
              onPressed: _handleDebugTap,
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 12),
                side: BorderSide(color: Theme.of(context).colorScheme.outline.withValues(alpha: 0.5)),
              ),
              child: const Text('Debug: Enter Plex Token', style: TextStyle(fontSize: 12)),
            ),
          ),
        ],
        if (_errorMessage != null) ...[
          const SizedBox(height: 16),
          Text(
            _errorMessage!,
            style: TextStyle(color: Theme.of(context).colorScheme.error),
            textAlign: TextAlign.center,
          ),
        ],
      ],
    );
  }

  Widget _serviceChoice({
    required MediaBackend backend,
    required String label,
    required VoidCallback? onPressed,
    bool primary = false,
    bool autofocus = false,
  }) {
    final colors = Theme.of(context).colorScheme;
    final accent = switch (backend) {
      MediaBackend.plex => const Color(0xffe5a00d),
      MediaBackend.jellyfin => const Color(0xff9b7bda),
      MediaBackend.emby => const Color(0xff52b54b),
    };
    return FocusableButton(
      autofocus: autofocus,
      borderRadius: 16,
      useBackgroundFocus: true,
      onPressed: onPressed,
      child: Material(
        color: primary ? colors.surfaceContainerHigh : colors.surfaceContainerLow,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(color: colors.outlineVariant.withValues(alpha: .6)),
        ),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onPressed,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              children: [
                Container(
                  width: 46,
                  height: 46,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: accent.withValues(alpha: .12),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: BackendBadge(backend: backend, size: 26, color: accent),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    label,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(width: 12),
                Icon(Symbols.arrow_forward_rounded, size: 20, color: colors.onSurfaceVariant),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

@visibleForTesting
/// The profile to auto-select after sign-in: the account's only Plex Home
/// user, unless it is PIN-protected. A bare activation skips the PIN check
/// the picker performs, and the first bind of the session may reuse a cached
/// user token — after an in-app logout, the one the previous session minted —
/// so a protected user must be picked (and its PIN entered) explicitly.
Profile? initialPlexHomeProfileFromCache(PlexHomeService plexHome, PlexAccountConnection accountConn) {
  final users = plexHome.current[accountConn.id];
  if (users == null || users.length != 1 || users.single.protected) return null;
  return Profile.virtualPlexHome(connectionId: accountConn.id, homeUser: users.single);
}

@visibleForTesting
bool shouldPromptForInitialProfileSelection({
  required Profile? activeProfile,
  required bool hasProfiles,
  required bool accountHasHomeUsers,
  required bool requireProfileSelectionOnOpen,
}) {
  return requireProfileSelectionOnOpen || (activeProfile == null && (hasProfiles || accountHasHomeUsers));
}

/// Stateful so the [TextEditingController] is disposed when the dialog
/// closes — the previous inline `showDialog` builder created the
/// controller in a closure and leaked it on every dismissal.
class _DebugTokenDialog extends StatefulWidget {
  final PlexAuthService? verifyService;
  final Future<void> Function(String token) onTokenAccepted;

  const _DebugTokenDialog({required this.verifyService, required this.onTokenAccepted});

  @override
  State<_DebugTokenDialog> createState() => _DebugTokenDialogState();
}

class _DebugTokenDialogState extends State<_DebugTokenDialog> with ControllerDisposerMixin {
  late final TextEditingController _tokenController = createTextEditingController();
  String? _errorMessage;
  bool _busy = false;

  Future<void> _submit() async {
    final token = _tokenController.text.trim();
    if (token.isEmpty) {
      setState(() => _errorMessage = t.errors.pleaseEnterToken);
      return;
    }
    final svc = widget.verifyService;
    if (svc == null) {
      setState(() => _errorMessage = 'Auth service not ready');
      return;
    }
    final navigator = Navigator.of(context);
    setState(() {
      _errorMessage = null;
      _busy = true;
    });
    try {
      final isValid = await svc.verifyToken(token);
      if (!mounted) return;
      if (!isValid) {
        setState(() {
          _errorMessage = t.errors.invalidToken;
          _busy = false;
        });
        return;
      }
      navigator.pop();
      await widget.onTokenAccepted(token);
    } catch (e) {
      if (!mounted) return;
      setState(() {
        _errorMessage = t.errors.failedToVerifyToken(error: e);
        _busy = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Debug: Enter Plex Token'),
      content: Column(
        mainAxisSize: .min,
        children: [
          FocusableTextFormField(
            controller: _tokenController,
            decoration: InputDecoration(
              labelText: 'Plex Auth Token',
              hintText: 'Enter your Plex.tv token',
              errorText: _errorMessage,
              border: const OutlineInputBorder(),
            ),
            obscureText: true,
            maxLines: 1,
            textInputAction: TextInputAction.done,
            onFieldSubmitted: (_) => _busy ? null : _submit(),
          ),
        ],
      ),
      actions: [
        DialogActionButton(onPressed: _busy ? null : () => Navigator.of(context).pop(), label: t.common.cancel),
        DialogActionButton(onPressed: _busy ? null : _submit, label: t.auth.authenticate, isPrimary: true),
      ],
    );
  }
}
