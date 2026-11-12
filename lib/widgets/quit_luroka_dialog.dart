import 'package:flutter/material.dart';
import '../i18n/strings.g.dart';
import '../utils/dialogs.dart';
import 'dialog_action_button.dart';
import 'luroka_mark.dart';

Future<bool> showQuitLurokaDialog(BuildContext context) async =>
    await showScopedDialog<bool>(
      context: context,
      builder: (context) {
        final theme = Theme.of(context);
        final colors = theme.colorScheme;
        return AlertDialog(
          constraints: const BoxConstraints(maxWidth: 460),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28),
            side: BorderSide(color: colors.outlineVariant.withValues(alpha: .65)),
          ),
          backgroundColor: colors.surfaceContainer,
          surfaceTintColor: Colors.transparent,
          titlePadding: const EdgeInsets.fromLTRB(28, 28, 28, 0),
          contentPadding: const EdgeInsets.fromLTRB(28, 16, 28, 24),
          actionsPadding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [colors.primary.withValues(alpha: .18), colors.surfaceContainerHigh],
                  ),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: const LurokaMark(size: 36),
              ),
              const SizedBox(height: 20),
              Text(t.startup.quitLuroka, style: theme.textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w700)),
            ],
          ),
          content: Text(
            t.common.exitAppBody,
            style: theme.textTheme.bodyLarge?.copyWith(color: colors.onSurfaceVariant),
          ),
          actions: [
            DialogActionButton(
              autofocus: true,
              isPrimary: true,
              label: t.common.stay,
              icon: const Icon(Icons.play_arrow_rounded, size: 20),
              onPressed: () => Navigator.pop(context, false),
              style: FilledButton.styleFrom(
                minimumSize: const Size(120, 48),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
              ),
            ),
            DialogActionButton(
              label: t.common.exitApp,
              icon: const Icon(Icons.power_settings_new_rounded, size: 20),
              onPressed: () => Navigator.pop(context, true),
              style: TextButton.styleFrom(
                minimumSize: const Size(120, 48),
                foregroundColor: colors.onSurface,
                side: BorderSide(color: colors.outlineVariant),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
              ),
            ),
          ],
        );
      },
    ) ??
    false;
