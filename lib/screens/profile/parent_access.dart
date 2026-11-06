import 'package:flutter/material.dart';

import '../../i18n/strings.g.dart';
import '../../services/kids_profile_service.dart';
import '../../utils/error_dialog.dart';
import '../../utils/dialogs.dart';
import 'pin_entry_dialog.dart';

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
  } else if (!await showConfirmDialog(
        context,
        title: t.kids.setParentPin,
        message: t.family.missingPin,
        confirmText: t.kids.setParentPin,
      ) ||
      !context.mounted) {
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
    if (context.mounted) showErrorDialog(context, t.kids.saveFailed);
    return false;
  }
}
