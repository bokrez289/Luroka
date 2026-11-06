import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../profiles/active_profile_provider.dart';
import '../../profiles/profile.dart';
import '../../profiles/profile_activation.dart';
import '../../i18n/strings.g.dart';
import 'parent_access.dart';
import 'pin_entry_dialog.dart';

/// Shared by the picker and family hub. Managing never activates the target.
Future<bool> ensureProfileManagementAccess(BuildContext context, Profile profile) async {
  final active = context.read<ActiveProfileProvider>();
  final owner = active.activeId;
  if (!await ensureParentAccess(context) || !context.mounted || active.activeId != owner) return false;
  String? error;
  while (context.mounted && active.activeId == owner) {
    final current = active.profiles.where((p) => p.id == profile.id).firstOrNull;
    if (current == null) return false;
    if (!current.isLocal || !current.isPinProtected || current.id == owner) return true;
    final pin = await showPinEntryDialog(context, current.displayName, errorMessage: error);
    if (!context.mounted || pin == null || active.activeId != owner) return false;
    final latest = active.profiles.where((p) => p.id == profile.id).firstOrNull;
    if (latest == null) return false;
    if (verifyProfilePin(latest, pin)) return true;
    error = t.profiles.incorrectPinTryAgain;
  }
  return false;
}
