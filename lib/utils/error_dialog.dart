import 'dart:async' show unawaited;

import 'package:flutter/material.dart';

import '../../main.dart' show rootNavigatorKey;
import '../i18n/strings.g.dart';

/// Whether an error dialog is currently open, and the message it shows.
/// New errors arriving while one is open update the text instead of stacking
/// a second dialog — repeated stream/player failures must not pile up modals.
final ValueNotifier<String?> _activeErrorMessage = ValueNotifier<String?>(null);
Route<void>? _activeErrorRoute;

/// Shows [message] as a small centered dialog with an OK action.
///
/// Replaces the old red snackbars (speed-plan-adjacent UX decision): success
/// confirmations are gone entirely and failures are the only thing the app
/// still speaks about — so they get the user's attention instead of sliding
/// past at the bottom of the screen. Repeated calls while a dialog is open
/// coalesce: the open dialog's text updates rather than stacking.
Future<void> showErrorDialog(BuildContext context, String message) async {
  if (!context.mounted) return;
  final active = _activeErrorRoute;
  if (active != null && active.isActive) {
    _activeErrorMessage.value = message;
    return;
  }
  if (active != null) _activeErrorRoute = null;
  await showDialogAt(context, message, context);
}

/// [showErrorDialog] for call sites without a [BuildContext] (background
/// services, player state handlers). Shows on the root navigator.
Future<void> showGlobalErrorDialog(String message) async {
  final navigator = rootNavigatorKey.currentState;
  if (navigator == null) return;
  final context = navigator.context;
  final active = _activeErrorRoute;
  if (active != null && active.isActive) {
    _activeErrorMessage.value = message;
    return;
  }
  if (active != null) _activeErrorRoute = null;
  await showDialogAt(context, message, context);
}

/// Opens the shared error-dialog route. [routeContext] is the context whose
/// navigator hosts the dialog; [mountContext] is what validated mounted-ness.
Future<void> showDialogAt(BuildContext routeContext, String message, BuildContext mountContext) async {
  _activeErrorMessage.value = message;
  final route = DialogRoute<void>(
    context: routeContext,
    barrierDismissible: true,
    builder: (dialogContext) => ValueListenableBuilder<String?>(
      valueListenable: _activeErrorMessage,
      builder: (context, current, _) => AlertDialog(
        content: Text(current ?? message),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(),
            child: Text(t.common.ok),
          ),
        ],
      ),
    ),
  );
  _activeErrorRoute = route;
  try {
    await Navigator.of(mountContext, rootNavigator: true).push(route);
  } on Object {
    // The navigator may have been torn down before the route settled.
  } finally {
    if (identical(_activeErrorRoute, route)) {
      _activeErrorRoute = null;
      _activeErrorMessage.value = null;
    }
  }
}

/// Fire-and-forget convenience so `unawaited`-style call sites stay terse.
void showErrorDialogNow(BuildContext context, String message) {
  unawaited(showErrorDialog(context, message));
}
