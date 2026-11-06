import 'package:flutter/material.dart';

import '../utils/app_identity.dart';
import 'luroka_mark.dart';

/// A quiet, responsive sign-in surface shared by the service connection flows.
class ConnectionSetupScaffold extends StatelessWidget {
  const ConnectionSetupScaffold({
    super.key,
    required this.title,
    required this.description,
    required this.child,
    this.emblem,
    this.canGoBack = true,
  });

  final String title;
  final String description;
  final Widget child;
  final Widget? emblem;
  final bool canGoBack;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    return Scaffold(
      backgroundColor: colors.surface,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, bounds) {
            // Keyboard insets must not move the form into a different tree:
            // that would dispose the active field halfway through typing.
            final wide = bounds.maxWidth >= 960;
            final intro = Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                if (emblem != null) ...[emblem!, const SizedBox(height: 24)],
                Text(
                  title,
                  style: (wide ? theme.textTheme.displaySmall : theme.textTheme.headlineMedium)?.copyWith(
                    fontWeight: FontWeight.w700,
                    letterSpacing: -1,
                    height: 1.15,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  description,
                  style: theme.textTheme.bodyLarge?.copyWith(color: colors.onSurfaceVariant, height: 1.5),
                ),
              ],
            );
            return Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(wide ? 40 : 16, 12, wide ? 40 : 20, 12),
                  child: Row(
                    children: [
                      if (canGoBack && Navigator.of(context).canPop()) ...[
                        const BackButton(),
                        const SizedBox(width: 8),
                      ],
                      const LurokaMark(size: 28),
                      const SizedBox(width: 10),
                      Text(AppIdentity.name, style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700)),
                    ],
                  ),
                ),
                Expanded(
                  child: Center(
                    child: SingleChildScrollView(
                      padding: EdgeInsets.symmetric(horizontal: wide ? 48 : 24, vertical: wide ? 32 : 24),
                      child: ConstrainedBox(
                        constraints: BoxConstraints(maxWidth: wide ? 1080 : 520),
                        child: wide
                            ? Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(child: intro),
                                  const SizedBox(width: 80),
                                  Expanded(child: child),
                                ],
                              )
                            : Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [intro, const SizedBox(height: 28), child],
                              ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
