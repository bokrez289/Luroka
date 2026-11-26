import 'package:flutter/material.dart';
import '../../profiles/active_profile_provider.dart';

import '../../i18n/strings.g.dart';
import '../../services/kids_profile_service.dart';
import '../../utils/error_dialog.dart';
import '../../utils/dialogs.dart';
import 'pin_entry_dialog.dart';

/// A route-owned, short-lived permission for ordinary family editing only.
/// Sensitive operations must continue to call [ensureParentAccess] directly.
class FamilyParentAccess with WidgetsBindingObserver {
  FamilyParentAccess(this.active) {
    WidgetsBinding.instance.addObserver(this);
    active.addListener(_identityChanged);
    KidsProfileService.instance.addListener(_policyChanged);
  }

  final ActiveProfileProvider active;
  String? _owner;
  int? _generation;
  DateTime? _expires;
  bool _disposed = false;
  int _revision = 0;

  void _clear() {
    _revision++;
    _owner = null;
    _generation = null;
    _expires = null;
  }

  void _identityChanged() {
    if (active.activeId != _owner || active.identityMutationGeneration != _generation) _clear();
  }

  void _policyChanged() => _clear();

  bool get isValid =>
      !_disposed &&
      _owner != null &&
      active.activeId == _owner &&
      active.identityMutationGeneration == _generation &&
      KidsProfileService.instance.activeId == _owner &&
      !KidsProfileService.instance.isActiveKids &&
      _expires?.isAfter(DateTime.now()) == true;

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state != AppLifecycleState.resumed) _clear();
  }

  Future<bool> ensure(BuildContext context) async {
    final kids = KidsProfileService.instance;
    final owner = active.activeId;
    final generation = active.identityMutationGeneration;
    final revision = _revision;
    if (_disposed || owner == null || kids.isActiveKids || kids.activeId != owner) return false;
    if (isValid) return true;
    // Setting up an initially absent PIN changes the policy itself, so it
    // cannot simultaneously grant this lease: the caller must authenticate
    // again against the newly established policy.
    if (!await ensureParentAccess(context) ||
        !context.mounted ||
        _disposed ||
        _revision != revision ||
        active.activeId != owner ||
        active.identityMutationGeneration != generation ||
        kids.isActiveKids ||
        kids.activeId != owner) {
      return false;
    }
    _owner = owner;
    _generation = generation;
    _expires = DateTime.now().add(const Duration(minutes: 5));
    return true;
  }

  void dispose() {
    if (_disposed) return;
    _disposed = true;
    _clear();
    active.removeListener(_identityChanged);
    KidsProfileService.instance.removeListener(_policyChanged);
    WidgetsBinding.instance.removeObserver(this);
  }
}

Future<String?> requestParentPin(BuildContext context) async {
  String? error;
  while (context.mounted) {
    final pin = await showPinEntryDialog(context, t.kids.parentPin, errorMessage: error);
    if (!context.mounted || pin == null) return null;
    if (KidsProfileService.instance.verifyParentPin(pin)) return pin;
    error = t.profiles.incorrectPinTryAgain;
  }
  return null;
}

Future<bool> ensureParentAccess(BuildContext context) async {
  if (!KidsProfileService.instance.hasParentPin) {
    if (!KidsProfileService.instance.hasKids) return true;
    if (KidsProfileService.instance.isActiveKids) return false;
    if (KidsProfileService.instance.parentPinOptedOut) return true;
    return setUpParentPin(context);
  }
  return await requestParentPin(context) != null;
}

/// Recovery is only available from an adult session; never asks for a PIN
/// that does not exist. Existing PIN changes still verify the current PIN.
Future<bool> setUpParentPin(BuildContext context) async {
  final service = KidsProfileService.instance;
  final owner = service.activeId;
  if (service.isActiveKids) return false;
  if (service.hasParentPin) {
    if (await requestParentPin(context) == null || !context.mounted) return false;
  } else if (service.hasKids &&
      !service.parentPinOptedOut &&
      (!await showConfirmDialog(
            context,
            title: t.kids.setParentPin,
            message: t.family.missingPin,
            confirmText: t.kids.setParentPin,
          ) ||
          !context.mounted)) {
    return false;
  }
  final pin = await captureAndConfirmPin(
    context,
    setLabel: t.kids.setParentPin,
    confirmLabel: t.family.confirmParentPin,
    onMismatch: (ctx) => showErrorDialog(ctx, t.profiles.pinsDontMatch),
  );
  if (!context.mounted || pin == null || service.isActiveKids || service.activeId != owner) return false;
  try {
    await service.setParentPin(pin);
    return true;
  } catch (_) {
    if (context.mounted) await showErrorDialog(context, t.kids.saveFailed);
    return false;
  }
}
