import 'package:flutter/material.dart';
import 'package:luroka/widgets/app_icon.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:provider/provider.dart';

import '../../focus/focusable_wrapper.dart';
import '../../i18n/strings.g.dart';
import '../../media/media_backend.dart';
import '../../media/media_browser_dialect.dart';
import '../../media/ids.dart';
import '../../theme/mono_tokens.dart';
import '../../utils/platform_detector.dart';
import '../../services/kids_profile_service.dart';
import '../../profiles/profile.dart';
import '../../profiles/active_profile_provider.dart';
import '../../providers/multi_server_provider.dart';
import '../../services/storage_service.dart';
import '../../utils/dialogs.dart';
import '../../widgets/backend_badge.dart';
import '../../widgets/dialog_action_button.dart';
import '../../widgets/focused_scroll_scaffold.dart';
import '../profile/borrow_connection_screen.dart';
import 'add_jellyfin_screen.dart';
import 'add_plex_account_screen.dart';
import 'phone_server_pairing_screen.dart';
import 'tv_server_pairing_dialog.dart';
import 'source_libraries_screen.dart';

/// Picker shown when the user taps "Add connection".
///
/// When [targetProfile] is provided, also offers a "Borrow from another
/// profile" option that opens [BorrowConnectionScreen] for the target. The
/// global Connections screen invokes this without a target — Plex auto-
/// surfaces its Home users as new profiles, while MediaBrowser servers bind
/// to the active profile via [AddJellyfinScreen].
///
/// Pops with `true` after the underlying flow succeeds so the parent list
/// refreshes; pops with `null` (the default) when the user backs out.
class AddConnectionScreen extends StatelessWidget {
  final Profile? targetProfile;

  /// Settings entry points can offer library selection after a successful add.
  /// Onboarding and the library picker itself have their own continuation.
  final bool offerLibrarySelection;

  const AddConnectionScreen({super.key, this.targetProfile, this.offerLibrarySelection = false});

  @override
  Widget build(BuildContext context) {
    final scoped = targetProfile != null;
    const jellyfinDialect = MediaBrowserDialect.jellyfin;
    const embyDialect = MediaBrowserDialect.emby;
    final options = <_BackendOption>[
      _BackendOption(
        backend: MediaBackend.plex,
        title: t.addServer.signInWithPlexCard,
        subtitle: scoped ? t.addServer.signInWithPlexCardSubtitleScoped : t.addServer.signInWithPlexCardSubtitle,
        builder: (_) => AddPlexAccountScreen(targetProfile: targetProfile),
      ),
      _BackendOption(
        backend: MediaBackend.jellyfin,
        title: t.addServer.connectToMediaBrowserCard(product: jellyfinDialect.productName),
        subtitle: scoped
            ? t.addServer.connectToMediaBrowserCardSubtitleScoped(
                product: jellyfinDialect.productName,
                name: targetProfile!.displayName,
              )
            : t.addServer.connectToMediaBrowserCardSubtitle,
        builder: (_) => AddJellyfinScreen(targetProfile: targetProfile, dialect: jellyfinDialect),
      ),
      _BackendOption(
        backend: MediaBackend.emby,
        title: t.addServer.connectToMediaBrowserCard(product: embyDialect.productName),
        subtitle: scoped
            ? t.addServer.connectToMediaBrowserCardSubtitleScoped(
                product: embyDialect.productName,
                name: targetProfile!.displayName,
              )
            : t.addServer.connectToMediaBrowserCardSubtitle,
        builder: (_) => AddJellyfinScreen(targetProfile: targetProfile, dialect: embyDialect),
      ),
      if (serverPairingEnabled && !PlatformDetector.isTV() && !KidsProfileService.instance.isActiveKids)
        _BackendOption(
          backend: null,
          title: 'Connect a TV',
          subtitle: 'Use this phone to sign in on a TV',
          builder: (_) => const PhoneServerPairingScreen(),
        ),
      if (scoped)
        _BackendOption(
          backend: null,
          title: t.addServer.borrowFromAnotherProfile,
          subtitle: t.addServer.borrowFromAnotherProfileSubtitle,
          builder: (_) => BorrowConnectionScreen(targetProfile: targetProfile!, popOnSuccess: true),
        ),
    ];
    final tokensRef = tokens(context);
    return FocusedScrollScaffold(
      title: Text(
        scoped
            ? t.addServer.addConnectionTitleScoped(name: targetProfile!.displayName)
            : t.addServer.addConnectionTitle,
      ),
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.all(16),
          sliver: SliverList(
            delegate: SliverChildListDelegate([
              for (var i = 0; i < options.length; i++) ...[
                if (i > 0) SizedBox(height: tokensRef.groupGap),
                _BackendCard(
                  borderRadius: groupItemRadii(context, i, options.length),
                  leading: options[i].backend != null
                      ? BackendBadge(backend: options[i].backend!, size: 28)
                      : const AppIcon(Symbols.share_rounded, fill: 1, size: 28),
                  title: options[i].title,
                  subtitle: options[i].subtitle,
                  onTap: () async {
                    final active = offerLibrarySelection ? context.read<ActiveProfileProvider?>() : null;
                    final ownerId = active?.activeId;
                    final generation = active?.identityMutationGeneration;
                    final servers = offerLibrarySelection ? context.read<MultiServerProvider?>() : null;
                    final previousServers = servers?.expectedServerIds.toSet() ?? <String>{};
                    final added = await Navigator.push<bool>(context, MaterialPageRoute(builder: options[i].builder));
                    if (added == true && context.mounted) {
                      if (offerLibrarySelection &&
                          options[i].backend != null &&
                          active != null &&
                          ownerId != null &&
                          active.activeId == ownerId &&
                          active.identityMutationGeneration == generation &&
                          (targetProfile == null || targetProfile!.id == ownerId)) {
                        final storage = await StorageService.getInstance();
                        if (!context.mounted ||
                            active.activeId != ownerId ||
                            active.identityMutationGeneration != generation) {
                          return;
                        }
                        final selected = storage.getSelectedSourceLibraries(profileId: ownerId);
                        final newServers = servers?.expectedServerIds.toSet().difference(previousServers) ?? <String>{};
                        final serverName = newServers.length == 1
                            ? servers?.getClientForServer(ServerId(newServers.single))?.serverName
                            : null;
                        final choose =
                            await showScopedDialog<bool>(
                              context: context,
                              builder: (dialog) => AlertDialog(
                                title: Text(
                                  serverName?.isNotEmpty == true ? '$serverName connected' : t.onboarding.connected,
                                ),
                                content: Text(
                                  '${t.sourceLibraries.description}\n\n${selected == null ? 'Unless hidden, accessible libraries are visible if you choose later.' : 'New libraries are not automatically included in your saved selection if you choose later.'}',
                                ),
                                actions: [
                                  DialogActionButton(
                                    label: t.profileSetupGuide.chooseLater,
                                    onPressed: () => Navigator.pop(dialog, false),
                                  ),
                                  DialogActionButton(
                                    label: 'Choose libraries',
                                    isPrimary: true,
                                    autofocus: true,
                                    onPressed: () => Navigator.pop(dialog, true),
                                  ),
                                ],
                              ),
                            ) ??
                            false;
                        if (!context.mounted ||
                            active.activeId != ownerId ||
                            active.identityMutationGeneration != generation) {
                          return;
                        }
                        if (choose) {
                          await Navigator.of(context).push<bool>(
                            MaterialPageRoute(
                              builder: (_) => SourceLibrariesScreen(profileId: ownerId, preferredServerIds: newServers),
                            ),
                          );
                        }
                        if (!context.mounted ||
                            active.activeId != ownerId ||
                            active.identityMutationGeneration != generation) {
                          return;
                        }
                      }
                      Navigator.of(context).pop(true);
                    }
                  },
                ),
              ],
            ]),
          ),
        ),
      ],
    );
  }
}

class _BackendOption {
  /// Null for the borrow option (renders a share icon instead of a badge).
  final MediaBackend? backend;
  final String title;
  final String subtitle;
  final WidgetBuilder builder;

  const _BackendOption({required this.backend, required this.title, required this.subtitle, required this.builder});
}

class _BackendCard extends StatelessWidget {
  final BorderRadius borderRadius;
  final Widget leading;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const _BackendCard({
    required this.borderRadius,
    required this.leading,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    // The wrapper sits inside the Material so the focus fill paints above the
    // opaque surface color (an outside wrapper's fill would be invisible and
    // fall back to outline chrome).
    return Material(
      color: theme.colorScheme.surfaceContainerHighest,
      borderRadius: borderRadius,
      clipBehavior: Clip.antiAlias,
      child: FocusableWrapper(
        disableScale: true,
        useBackgroundFocus: true,
        borderRadii: borderRadius,
        descendantsAreFocusable: false,
        onSelect: onTap,
        child: InkWell(
          onTap: onTap,
          borderRadius: borderRadius,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                leading,
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      Text(title, style: theme.textTheme.titleMedium),
                      const SizedBox(height: 4),
                      Text(
                        subtitle,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.onSurface.withValues(alpha: 0.7),
                        ),
                      ),
                    ],
                  ),
                ),
                const AppIcon(Symbols.chevron_right_rounded, fill: 1),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
