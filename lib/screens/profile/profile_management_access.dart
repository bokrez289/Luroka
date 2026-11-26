import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../profiles/active_profile_provider.dart';
import '../../profiles/profile.dart';
import '../../profiles/profile_activation.dart';
import '../../i18n/strings.g.dart';
import 'parent_access.dart';
import 'pin_entry_dialog.dart';
import '../../profiles/plex_home_switch.dart';
import '../../connection/connection.dart';

/// Shared by the picker and family hub. Managing never activates the target.
Future<bool> ensureProfileManagementAccess(
  BuildContext context,
  Profile profile, {
  FamilyParentAccess? familyAccess,
}) async {
  final active = context.read<ActiveProfileProvider>();
  final owner = active.activeId;
  final generation = active.identityMutationGeneration;
  if (!await (familyAccess?.ensure(context) ?? ensureParentAccess(context)) ||
      !context.mounted ||
      active.activeId != owner) {
    return false;
  }
  String? error;
  while (context.mounted && active.activeId == owner) {
    final current = active.profiles.where((p) => p.id == profile.id).firstOrNull;
    if (current == null) return false;
    if (!current.isPinProtected || current.id == owner) return true;
    if (current.isPlexHome) {
      final account = active.connectionsById[current.parentConnectionId];
      final uuid = current.plexHomeUserUuid;
      if (account is! PlexAccountConnection || uuid == null || uuid.isEmpty) return false;
      final result = await mintPlexHomeUserToken(
        account: account,
        homeUserUuid: uuid,
        requiresPin: true,
        promptForPin: dialogPinPrompt(context, current.displayName),
      );
      final latest = active.profiles.where((p) => p.id == current.id).firstOrNull;
      return context.mounted &&
          active.activeId == owner &&
          active.identityMutationGeneration == generation &&
          (familyAccess?.isValid ?? true) &&
          latest?.isPlexHome == true &&
          latest?.isPinProtected == true &&
          latest?.parentConnectionId == current.parentConnectionId &&
          latest?.plexHomeUserUuid == uuid &&
          result.succeeded;
    }
    final pin = await showPinEntryDialog(context, current.displayName, errorMessage: error);
    if (!context.mounted || pin == null || active.activeId != owner) return false;
    final latest = active.profiles.where((p) => p.id == profile.id).firstOrNull;
    if (latest == null) return false;
    if (verifyProfilePin(latest, pin)) {
      return active.identityMutationGeneration == generation && (familyAccess?.isValid ?? true);
    }
    error = t.profiles.incorrectPinTryAgain;
  }
  return false;
}
