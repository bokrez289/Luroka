import '../services/settings_service.dart';
import '../services/kids_profile_service.dart';
import 'active_profile_provider.dart';

extension ProfileSelectionPolicy on ActiveProfileProvider {
  /// Fresh-launch selection: explicit preference or a household with children,
  /// only when there is more than one profile to pick from. Returning to an
  /// existing foreground session retains its selected profile.
  ///
  /// Stated once because the sites must agree — ActiveProfileBinder defers its
  /// cold-start bind exactly when this holds, and SetupScreen/MainScreen pop the
  /// picker exactly when it holds. If they drifted, the binder would defer a bind
  /// that nothing ever prompts for and the user would land on an unbound screen.
  bool requiresSelectionOnOpen(SettingsService settings) {
    if (!hasMultipleProfiles) return false;
    final kids = KidsProfileService.instance;
    final current = active;
    final canResume = settings.read(SettingsService.autoLoginLastProfile) && current != null && !current.isPinProtected;
    if (canResume) return false;
    return kids.hasKids || settings.read(SettingsService.requireProfileSelectionOnOpen);
  }
}
