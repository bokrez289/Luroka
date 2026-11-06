import 'dart:async' show Timer;
import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:provider/provider.dart';

import '../../i18n/strings.g.dart';
import '../../navigation/navigation_tabs.dart';
import '../../profiles/active_profile_provider.dart';
import '../../services/settings_service.dart';
import '../../services/settings_mutation_service.dart';
import '../../utils/platform_detector.dart';
import '../../widgets/app_icon.dart';
import '../../widgets/focusable_list_tile.dart';
import '../../widgets/setting_tile.dart';
import '../../widgets/settings_page.dart';
import '../../widgets/settings_section.dart';
import '../../widgets/settings_workspace_scope.dart';
import 'settings_utils.dart';

/// App-level preferences that are not about looks or playback: language,
/// what happens at startup, and desktop window behavior.
class GeneralSettingsScreen extends StatelessWidget {
  const GeneralSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Watched at build level so the tiles can be excluded with a plain `if` —
    // a child that renders SizedBox.shrink() would corrupt the group corners.
    final hasMultipleProfiles = context.watch<ActiveProfileProvider>().hasMultipleProfiles;
    return SettingsPage(
      title: Text(t.settings.general),
      children: [
        SettingsGroup(title: t.settings.languageAndRegion, children: [_languageSelector(context)]),

        SettingsGroup(
          title: t.settings.startup,
          children: [
            _startupSectionSelector(),
            SettingSwitchTile(
              pref: SettingsService.autoLoginLastProfile,
              icon: Symbols.person_rounded,
              title: t.profileStartup.autoLogin,
              subtitle: t.profileStartup.autoLoginHint,
            ),
            if (hasMultipleProfiles)
              SettingSwitchTile(
                pref: SettingsService.requireProfileSelectionOnOpen,
                icon: Symbols.person_rounded,
                title: t.settings.requireProfileSelectionOnOpen,
                subtitle: t.settings.requireProfileSelectionOnOpenDescription,
              ),
            if ((Platform.isAndroid || PlatformDetector.isDesktopOS()) &&
                (!PlatformDetector.isTV() || (SettingsWorkspaceScope.maybeOf(context)?.advanced ?? true)))
              SettingSwitchTile(
                pref: SettingsService.forceTvMode,
                icon: Symbols.tv_rounded,
                title: PlatformDetector.isTV() ? t.tvSettingsV2.tvLayout : t.settings.forceTvMode,
                subtitle: t.settings.forceTvModeDescription,
                onAfterWrite: (enabled) async {
                  if (enabled) await _confirmKeepTvLayout(context);
                },
              ),
          ],
        ),

        if (PlatformDetector.isDesktopOS())
          SettingsGroup(
            title: t.settings.window,
            children: [
              SettingSwitchTile(
                pref: SettingsService.startInFullscreen,
                icon: Symbols.fullscreen_rounded,
                title: t.settings.startInFullscreen,
                subtitle: t.settings.startInFullscreenDescription,
              ),
            ],
          ),
        const SizedBox(height: 24),
      ],
    );
  }

  Widget _languageSelector(BuildContext context) {
    return FocusableListTile(
      leading: const AppIcon(Symbols.language_rounded, fill: 1),
      title: Text(t.settings.language),
      subtitle: Text(_getLanguageDisplayName(LocaleSettings.currentLocale)),
      trailing: const AppIcon(Symbols.chevron_right_rounded, fill: 1),
      onTap: () async {
        final picked = await showSelectionDialog<AppLocale>(
          context: context,
          title: t.settings.language,
          options: AppLocale.values
              .map((locale) => DialogOption(value: locale, title: _getLanguageDisplayName(locale)))
              .toList(),
          currentValue: LocaleSettings.currentLocale,
        );
        if (picked != null) {
          final value = picked.value;
          if (context.mounted) {
            await const SettingsMutationService().write(context, SettingsService.appLocale, value);
          }
        }
      },
    );
  }

  // Sections offered as a startup destination, in display order. Live TV is
  // always listed; if no server provides it, startup falls back to Home.
  static const _startupSectionOptions = [
    NavigationTabId.discover,
    NavigationTabId.favorites,
    NavigationTabId.libraries,
    NavigationTabId.liveTv,
    NavigationTabId.search,
  ];

  String _startupSectionLabel(NavigationTabId id) =>
      allNavigationTabs.followedBy(kidsNavigationTabs).firstWhere((t) => t.id == id).getLabel();

  Widget _startupSectionSelector() => SettingSelectionTile<NavigationTabId>(
    pref: SettingsService.startupSection,
    icon: Symbols.start_rounded,
    title: t.settings.startupSection,
    subtitleBuilder: _startupSectionLabel,
    options: _startupSectionOptions.map((id) => DialogOption(value: id, title: _startupSectionLabel(id))).toList(),
  );

  String _getLanguageDisplayName(AppLocale locale) {
    switch (locale) {
      case AppLocale.en:
        return 'English';
      case AppLocale.sv:
        return 'Svenska';
      case AppLocale.fr:
        return 'Français';
      case AppLocale.it:
        return 'Italiano';
      case AppLocale.nl:
        return 'Nederlands';
      case AppLocale.de:
        return 'Deutsch';
      case AppLocale.hu:
        return 'Magyar';
      case AppLocale.zh:
        return '简体中文';
      case AppLocale.zhHant:
        return '繁體中文';
      case AppLocale.ko:
        return '한국어';
      case AppLocale.es:
        return 'Español';
      case AppLocale.pt:
        return 'Português';
      case AppLocale.ja:
        return '日本語';
      case AppLocale.ru:
        return 'Русский';
      case AppLocale.pl:
        return 'Polski';
      case AppLocale.da:
        return 'Dansk';
      case AppLocale.nb:
        return 'Norsk bokmål';
      case AppLocale.bg:
        return 'Български';
      case AppLocale.tr:
        return 'Türkçe';
      case AppLocale.az:
        return 'Azərbaycanca';
      case AppLocale.kk:
        return 'Қазақша';
      case AppLocale.uz:
        return 'Oʻzbekcha';
      case AppLocale.hr:
        return 'Hrvatski';
    }
  }
}

/// Countdown confirmation shown after enabling Force TV mode.
///
/// TV layout on a touch-only device is a trap: no keyboard, no D-pad, and a
/// settings screen that was not built for taps — the user could not undo the
/// choice. So the write does not stick until it survives this dialog, and the
/// default outcome (ignore, dismiss, or wait out the timer) reverts it. Same
/// shape as the OS display-resolution confirms: only an explicit "Keep" wins.
Future<void> _confirmKeepTvLayout(BuildContext context) async {
  const countdownSeconds = 10;
  var secondsLeft = countdownSeconds;
  Timer? ticker;
  final keep = await showDialog<bool>(
    context: context,
    builder: (dialogContext) => StatefulBuilder(
      builder: (dialogContext, setState) {
        ticker ??= Timer.periodic(const Duration(seconds: 1), (timer) {
          if (!dialogContext.mounted) {
            timer.cancel();
            return;
          }
          secondsLeft--;
          if (secondsLeft <= 0) {
            timer.cancel();
            Navigator.of(dialogContext).pop(false);
            return;
          }
          setState(() {});
        });
        return AlertDialog(
          title: Text(t.settings.forceTvModeKeepTitle),
          content: Text(t.settings.forceTvModeKeepBody(seconds: secondsLeft)),
          actions: [
            TextButton(onPressed: () => Navigator.of(dialogContext).pop(false), child: Text(t.common.cancel)),
            FilledButton(
              onPressed: () => Navigator.of(dialogContext).pop(true),
              child: Text(t.settings.forceTvModeKeepConfirm),
            ),
          ],
        );
      },
    ),
  );
  ticker?.cancel();
  if (keep == true) return;
  if (!context.mounted) return;
  await const SettingsMutationService().write(context, SettingsService.forceTvMode, false);
}
