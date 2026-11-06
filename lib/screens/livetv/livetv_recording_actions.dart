import 'package:flutter/material.dart';

import '../../exceptions/media_server_exceptions.dart';
import '../../i18n/strings.g.dart';
import '../../media/media_server_client.dart';
import '../../models/livetv_program.dart';
import '../../models/media_grab_operation.dart';
import '../../models/media_subscription.dart';
import '../../utils/app_logger.dart';
import '../../utils/error_dialog.dart';
import '../../utils/dialogs.dart';
import 'record_options_sheet.dart';

/// Outcome of an attempted recording rule create or edit. Returned by
/// [RecordOptionsSheet.push] / [RecordOptionsSheet.pushEdit] so callers can
/// show the right user feedback.
enum RecordOutcome { scheduled, updated, alreadyScheduled, adminRequired, targetMissing, failed, cancelled }

/// Fetch the recording template for [program] and push the options sheet so
/// the user can review prefs and create a recording rule.
///
/// Returns the outcome so callers can decide whether to dismiss the parent
/// sheet (e.g. close the program details sheet on a successful schedule).
///
/// Handles the standard error envelope:
/// - 403: surface "DVR settings require an admin account".
/// - 409 (duplicate): silent (the sheet state already reflects it).
/// - Other: error dialog.
Future<RecordOutcome?> recordProgram(BuildContext context, MediaServerClient client, LiveTvProgram program) async {
  final dvr = client.liveTvDvr;
  final guid = program.guid;
  if (dvr == null || guid == null || guid.isEmpty) {
    if (!context.mounted) return null;
    showErrorDialog(context, t.liveTv.recordNotAvailable);
    return RecordOutcome.failed;
  }

  List<SubscriptionTemplate> templates;
  try {
    templates = await dvr.getSubscriptionTemplate(guid);
  } catch (e) {
    appLogger.e('Failed to fetch recording template', error: e);
    if (!context.mounted) return null;
    if (_statusCode(e) == 403) {
      showErrorDialog(context, t.liveTv.dvrAdminRequired);
      return RecordOutcome.adminRequired;
    }
    showErrorDialog(context, t.liveTv.recordingFailed);
    return RecordOutcome.failed;
  }

  final entries = <MediaSubscription>[for (final template in templates) ...template.subscriptions];
  if (entries.isEmpty) {
    if (!context.mounted) return null;
    showErrorDialog(context, t.liveTv.recordNotAvailable);
    return RecordOutcome.failed;
  }

  if (!context.mounted) return null;
  final outcome = await RecordOptionsSheet.push(context, client: client, program: program, entries: entries);
  if (!context.mounted) return outcome;
  switch (outcome) {
    case RecordOutcome.scheduled:
    case RecordOutcome.alreadyScheduled:
    case RecordOutcome.adminRequired:
      showErrorDialog(context, t.liveTv.dvrAdminRequired);
    case RecordOutcome.targetMissing:
      showErrorDialog(context, t.liveTv.recordingTargetMissing);
    case RecordOutcome.failed:
      showErrorDialog(context, t.liveTv.recordingFailed);
    case RecordOutcome.updated:
    case RecordOutcome.cancelled:
    case null:
      // user dismissed without creating
      break;
  }
  return outcome;
}

/// Push the [RecordOptionsSheet] in edit mode against an existing rule, then
/// surface a success / error snackbar.
Future<RecordOutcome?> editRecordingRule(BuildContext context, MediaServerClient client, MediaSubscription rule) async {
  final outcome = await RecordOptionsSheet.pushEdit(context, client: client, rule: rule);
  if (!context.mounted) return outcome;
  switch (outcome) {
    case RecordOutcome.updated:
    case RecordOutcome.adminRequired:
      showErrorDialog(context, t.liveTv.dvrAdminRequired);
    case RecordOutcome.failed:
      showErrorDialog(context, t.liveTv.recordingFailed);
    case RecordOutcome.scheduled:
    case RecordOutcome.alreadyScheduled:
    case RecordOutcome.targetMissing:
    case RecordOutcome.cancelled:
    case null:
      break;
  }
  return outcome;
}

Future<bool> confirmCancelGrab(BuildContext context, MediaServerClient client, MediaGrabOperation op) async {
  final dvr = client.liveTvDvr;
  final operationKey = op.operationKey;
  if (dvr == null || operationKey.isEmpty) {
    showErrorDialog(context, t.liveTv.recordingFailed);
    return false;
  }
  final title = op.program?.displayTitle ?? '';
  final confirmed = await showConfirmDialog(
    context,
    title: t.liveTv.cancelRecordingTitle,
    message: t.liveTv.cancelRecordingMessage(title: title),
    confirmText: t.liveTv.cancelRecording,
    isDestructive: true,
  );
  if (!confirmed) return false;
  try {
    await dvr.cancelGrab(operationKey);
    if (context.mounted) {
    }
    return true;
  } catch (e) {
    appLogger.e('Failed to cancel grab', error: e);
    if (context.mounted) {
      showErrorDialog(context, t.liveTv.recordingFailed);
    }
    return false;
  }
}

Future<bool> confirmDeleteRule(BuildContext context, MediaServerClient client, MediaSubscription rule) async {
  final dvr = client.liveTvDvr;
  if (dvr == null) {
    showErrorDialog(context, t.liveTv.recordingFailed);
    return false;
  }
  final confirmed = await showConfirmDialog(
    context,
    title: t.liveTv.deleteRuleTitle,
    message: t.liveTv.deleteRuleMessage(title: rule.title ?? ''),
    confirmText: t.liveTv.deleteRule,
    isDestructive: true,
  );
  if (!confirmed) return false;
  try {
    await dvr.deleteRecordingRule(rule.key);
    if (context.mounted) {
    }
    return true;
  } catch (e) {
    appLogger.e('Failed to delete recording rule', error: e);
    if (context.mounted) {
      showErrorDialog(context, t.liveTv.recordingFailed);
    }
    return false;
  }
}

int? _statusCode(Object e) {
  if (e is MediaServerHttpException) return e.statusCode;
  return null;
}
