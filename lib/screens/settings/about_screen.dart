import 'dart:io';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import '../../i18n/strings.g.dart';
import '../../media/media_backend.dart';
import '../../services/android_update_service.dart';
import '../../services/settings_service.dart' hide ThemeMode;
import '../../services/update_service.dart';
import '../../utils/app_identity.dart';
import '../../utils/error_dialog.dart';
import '../../utils/update_dialog.dart';
import '../../widgets/backend_badge.dart';
import '../../widgets/luroka_mark.dart';
import '../../widgets/setting_tile.dart';
import '../../widgets/settings_page.dart';
import '../../widgets/settings_section.dart';
import 'licenses_screen.dart';
import 'privacy_policy_screen.dart';

/// About is immediately usable even if a platform metadata plugin is absent.
/// Device discovery must never gate product information or update controls.
class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key, this.firstFocus, this.extraChildren = const []});
  final FocusNode? firstFocus;
  final List<Widget> extraChildren;
  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  String _version = '—';
  bool _storeManaged = Platform.isAndroid;
  bool _checking = false;
  String? _status;
  Map<String, dynamic>? _update = UpdateService.lastKnownUpdate;
  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    try {
      final info = await PackageInfo.fromPlatform().timeout(const Duration(seconds: 5));
      if (mounted) setState(() => _version = info.version);
    } catch (_) {
      /* Product information remains available. */
    }
    final storeManaged = Platform.isAndroid && await AndroidUpdateService.isStoreManagedInstall();
    if (mounted) setState(() => _storeManaged = storeManaged);
  }

  Future<void> _check() async {
    if (_checking) return;
    setState(() => _checking = true);
    try {
      if (_storeManaged) return;
      if (UpdateService.useNativeUpdater) {
        await UpdateService.checkForUpdatesNative(inBackground: false);
        return;
      }
      final update = await UpdateService.checkForUpdates();
      if (!mounted) return;
      setState(() => _update = update);
      if (update != null) {
        await _showUpdate(update);
      } else {
        setState(() => _status = t.update.latestVersion);
      }
    } catch (_) {
      if (mounted) await showErrorDialog(context, t.update.checkFailed);
    } finally {
      if (mounted) setState(() => _checking = false);
    }
  }

  Future<void> _showUpdate(Map<String, dynamic> update) =>
      showUpdateAvailableDialog(context, update, title: t.update.available, dismissLabel: t.common.later);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    return SettingsPage(
      title: Text(t.about.title),
      children: [
        Focus(
          focusNode: widget.firstFocus,
          canRequestFocus: widget.firstFocus != null,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24, 8, 24, 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const LurokaMark(size: 48),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppIdentity.name,
                            style: theme.textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            t.settingsRedesign.aboutTagline,
                            style: theme.textTheme.titleMedium?.copyWith(color: colors.primary),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  '${t.about.versionDetails}: $_version',
                  key: const ValueKey('luroka-version'),
                  style: theme.textTheme.bodyMedium,
                ),
                const SizedBox(height: 12),
                Text(t.settingsRedesign.aboutDescription, style: theme.textTheme.bodyLarge?.copyWith(height: 1.5)),
                const SizedBox(height: 10),
                Wrap(
                  spacing: 12,
                  runSpacing: 10,
                  children: [
                    for (final backend in [MediaBackend.plex, MediaBackend.jellyfin, MediaBackend.emby])
                      Chip(
                        avatar: BackendBadge(backend: backend, size: 20),
                        label: Text(
                          backend.name == 'plex'
                              ? 'Plex'
                              : backend.name == 'jellyfin'
                              ? 'Jellyfin'
                              : 'Emby',
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  t.settingsRedesign.aboutFeatures,
                  style: theme.textTheme.bodyMedium?.copyWith(color: colors.onSurfaceVariant, height: 1.5),
                ),
              ],
            ),
          ),
        ),
        SettingsGroup(
          title: t.about.appSection,
          children: [
            if (UpdateService.isUpdateCheckAvailable && !_storeManaged)
              SettingNavigationTile(
                icon: Icons.system_update_rounded,
                title: _checking ? t.common.loading : t.settings.checkForUpdates,
                subtitle: _update == null
                    ? _status ?? _version
                    : t.update.versionAvailable(version: _update!['latestVersion'].toString()),
                onTap: _check,
              ),
            if (_update != null && !_storeManaged)
              SettingNavigationTile(
                icon: Icons.download_rounded,
                title: t.update.viewRelease,
                onTap: () => _showUpdate(_update!),
              ),
            if (UpdateService.isUpdateCheckAvailable && !_storeManaged)
              SettingSwitchTile(
                pref: SettingsService.autoCheckUpdatesOnStartup,
                icon: Icons.notifications_active_outlined,
                title: t.settings.autoCheckUpdatesOnStartup,
                subtitle: t.settings.autoCheckUpdatesOnStartupDescription,
              ),
          ],
        ),
        SettingsGroup(
          children: [
            SettingNavigationTile(
              key: const ValueKey('about-privacy-policy'),
              icon: Icons.privacy_tip_outlined,
              title: t.about.privacyPolicy,
              subtitle: t.about.privacyPolicyDescription,
              destinationBuilder: (_) => const PrivacyPolicyScreen(),
            ),
            SettingNavigationTile(
              icon: Icons.description_outlined,
              title: t.about.openSourceLicenses,
              subtitle: t.about.attributionDescription,
              destinationBuilder: (_) => const LicensesScreen(),
            ),
            ...widget.extraChildren,
          ],
        ),
        const SizedBox(height: 28),
      ],
    );
  }
}
