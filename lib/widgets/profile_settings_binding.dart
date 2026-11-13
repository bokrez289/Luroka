import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:intl/date_symbol_data_local.dart';

import '../i18n/app_locale_utils.dart';
import '../i18n/strings.g.dart';
import '../services/settings_service.dart';
import '../services/device_performance.dart';
import '../utils/app_logger.dart';

/// Applies the active profile's app-wide runtime preferences.
class ProfileSettingsBinding extends StatefulWidget {
  const ProfileSettingsBinding({
    super.key,
    required this.settings,
    required this.updateServerLanguage,
    required this.child,
    this.applyLocale,
  });

  final SettingsService settings;
  final void Function(String language) updateServerLanguage;
  final Widget child;
  final Future<void> Function(AppLocale locale)? applyLocale;

  @override
  State<ProfileSettingsBinding> createState() => _ProfileSettingsBindingState();
}

class _ProfileSettingsBindingState extends State<ProfileSettingsBinding> {
  late ValueNotifier<AppLocale> _locale;
  late ValueNotifier<bool> _debug;
  late ValueNotifier<bool> _fireStick;
  late ValueNotifier<VisualEffectsSetting> _effects;
  bool? _appliedDebug;
  bool? _appliedFireStick;
  VisualEffectsSetting? _appliedEffects;
  int _generation = 0;
  bool _scheduled = false;
  bool _running = false;

  @override
  void initState() {
    super.initState();
    _attach();
    _changed();
  }

  void _attach() {
    _locale = widget.settings.listenable(SettingsService.appLocale)..addListener(_changed);
    _debug = widget.settings.listenable(SettingsService.enableDebugLogging)..addListener(_changed);
    _fireStick = widget.settings.listenable(SettingsService.fireStickMode)..addListener(_changed);
    _effects = widget.settings.listenable(SettingsService.visualEffects)..addListener(_changed);
    widget.settings.profileSettingsRevision.addListener(_changed);
  }

  void _detach(SettingsService settings) {
    _locale.removeListener(_changed);
    _debug.removeListener(_changed);
    _fireStick.removeListener(_changed);
    _effects.removeListener(_changed);
    settings.profileSettingsRevision.removeListener(_changed);
  }

  @override
  void didUpdateWidget(covariant ProfileSettingsBinding oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.settings == widget.settings) return;
    _detach(oldWidget.settings);
    _attach();
    _changed();
  }

  void _changed() {
    _generation++;
    if (widget.settings.hasActiveProfileSettings) {
      final debug = widget.settings.read(SettingsService.enableDebugLogging);
      final fireStick = widget.settings.read(SettingsService.fireStickMode);
      final effects = widget.settings.read(SettingsService.visualEffects);
      if (_appliedDebug != debug) {
        _appliedDebug = debug;
        setLoggerLevel(debug);
      }
      if (_appliedFireStick != fireStick) {
        _appliedFireStick = fireStick;
        DevicePerformance.setFireStickModeSync(fireStick);
      }
      if (_appliedEffects != effects) {
        _appliedEffects = effects;
        DevicePerformance.setOverrideSync(effects);
      }
    }
    if (_scheduled) return;
    _scheduled = true;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scheduled = false;
      if (mounted) unawaited(_drain());
    });
  }

  Future<void> _drain() async {
    if (_running) return;
    _running = true;
    try {
      var applied = -1;
      while (mounted && applied != _generation) {
        final generation = _generation;
        if (!widget.settings.hasActiveProfileSettings) break;
        final locale = widget.settings.read(SettingsService.appLocale);
        try {
          final apply = widget.applyLocale;
          if (apply != null) {
            await apply(locale);
          } else {
            await initializeDateFormatting(locale.intlLocaleName, null);
            if (!mounted || generation != _generation) continue;
            await LocaleSettings.setLocale(locale);
          }
          if (!mounted || generation != _generation) continue;
          widget.updateServerLanguage(locale.plexLanguageCode);
        } catch (error, stack) {
          appLogger.w('Could not apply profile language', error: error, stackTrace: stack);
        }
        applied = generation;
      }
    } finally {
      _running = false;
    }
  }

  @override
  void dispose() {
    _generation++;
    _detach(widget.settings);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.child;
}
