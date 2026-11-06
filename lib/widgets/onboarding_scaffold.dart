import 'package:flutter/material.dart';

import '../utils/app_identity.dart';
import 'luroka_mark.dart';

/// A spacious split composition on TV; one scrollable column on phones and
/// short windows, including when the software keyboard is open.
class OnboardingScaffold extends StatelessWidget {
  const OnboardingScaffold({
    super.key,
    required this.title,
    required this.description,
    required this.step,
    required this.child,
  });

  final String title;
  final String description;
  final String step;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    return Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            center: const Alignment(-0.9, -0.7),
            radius: 1.5,
            colors: [colors.primary.withValues(alpha: 0.10), colors.surface],
          ),
        ),
        child: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) {
              final wide = constraints.maxWidth >= 900 && constraints.maxHeight >= 480;
              final intro = Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const LurokaMark(size: 36),
                      const SizedBox(width: 12),
                      Text(AppIdentity.name, style: theme.textTheme.titleLarge?.copyWith(letterSpacing: 2)),
                    ],
                  ),
                  SizedBox(height: wide ? 56 : 32),
                  Text(
                    step.toUpperCase(),
                    style: theme.textTheme.labelMedium?.copyWith(color: colors.primary, letterSpacing: 2),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    title,
                    style: (wide ? theme.textTheme.displaySmall : theme.textTheme.headlineLarge)?.copyWith(
                      fontWeight: FontWeight.w600,
                      height: 1.12,
                    ),
                  ),
                  const SizedBox(height: 18),
                  Text(
                    description,
                    style: theme.textTheme.bodyLarge?.copyWith(color: colors.onSurfaceVariant, height: 1.6),
                  ),
                ],
              );
              final panel = DecoratedBox(
                decoration: BoxDecoration(
                  color: colors.surfaceContainerLow.withValues(alpha: 0.8),
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: colors.outlineVariant.withValues(alpha: 0.45)),
                ),
                child: Padding(padding: EdgeInsets.all(wide ? 28 : 20), child: child),
              );
              return Center(
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: wide ? 56 : 24, vertical: wide ? 36 : 28),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: wide ? 1120 : 520),
                    child: wide
                        ? Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(child: intro),
                              const SizedBox(width: 72),
                              Expanded(child: panel),
                            ],
                          )
                        : Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisSize: MainAxisSize.min,
                            children: [intro, const SizedBox(height: 32), panel],
                          ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
