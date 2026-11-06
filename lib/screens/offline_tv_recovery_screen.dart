import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../focus/focusable_button.dart';
import '../i18n/strings.g.dart';
import '../widgets/app_icon.dart';
import '../widgets/luroka_mark.dart';

/// Recovery surface for televisions without offline downloads, notably tvOS.
class OfflineTvRecoveryScreen extends StatefulWidget {
  const OfflineTvRecoveryScreen({
    super.key,
    required this.reconnecting,
    required this.onReconnect,
    this.onAddServer,
    this.onSwitchProfile,
  });

  final bool reconnecting;
  final VoidCallback onReconnect;
  final VoidCallback? onAddServer;
  final VoidCallback? onSwitchProfile;

  @override
  State<OfflineTvRecoveryScreen> createState() => _OfflineTvRecoveryScreenState();
}

class _OfflineTvRecoveryScreenState extends State<OfflineTvRecoveryScreen> {
  final _retryFocus = FocusNode(debugLabel: 'offline_tv_reconnect');
  final _secondaryFocus = FocusNode(debugLabel: 'offline_tv_secondary');
  bool _restoreRetryFocus = false;

  @override
  void didUpdateWidget(covariant OfflineTvRecoveryScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!oldWidget.reconnecting && widget.reconnecting) {
      _restoreRetryFocus = _retryFocus.hasFocus;
    } else if (oldWidget.reconnecting && !widget.reconnecting && _restoreRetryFocus) {
      _restoreRetryFocus = false;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted && ModalRoute.of(context)?.isCurrent == true) _retryFocus.requestFocus();
      });
    }
  }

  @override
  void dispose() {
    _retryFocus.dispose();
    _secondaryFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    final secondary = widget.onAddServer ?? widget.onSwitchProfile;
    return DecoratedBox(
      key: const ValueKey('apple_tv_offline_recovery'),
      decoration: BoxDecoration(
        gradient: RadialGradient(
          center: const Alignment(-.75, -.65),
          radius: 1.5,
          colors: [colors.primary.withValues(alpha: .16), colors.surface],
        ),
      ),
      child: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 24),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 660),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const LurokaMark(size: 38),
                  const SizedBox(height: 24),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(color: colors.primaryContainer, borderRadius: BorderRadius.circular(16)),
                    child: AppIcon(Symbols.cloud_off_rounded, size: 30, color: colors.onPrimaryContainer),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    t.offlineRecovery.title,
                    style: theme.textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.w700, height: 1.1),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    widget.onAddServer == null
                        ? t.offlineRecovery.kidsDescription
                        : t.offlineRecovery.appleTvDescription,
                    style: theme.textTheme.bodyLarge?.copyWith(color: colors.onSurfaceVariant, height: 1.45),
                  ),
                  const SizedBox(height: 26),
                  Wrap(
                    spacing: 14,
                    runSpacing: 12,
                    children: [
                      FocusableButton(
                        autofocus: true,
                        focusNode: _retryFocus,
                        useBackgroundFocus: true,
                        onNavigateRight: secondary == null ? null : _secondaryFocus.requestFocus,
                        onPressed: widget.reconnecting ? null : widget.onReconnect,
                        child: FilledButton.icon(
                          key: const ValueKey('apple_tv_offline_reconnect'),
                          onPressed: widget.reconnecting ? null : widget.onReconnect,
                          icon: widget.reconnecting
                              ? const SizedBox.square(dimension: 18, child: CircularProgressIndicator(strokeWidth: 2))
                              : const AppIcon(Symbols.refresh_rounded),
                          label: Text(widget.reconnecting ? t.offlineRecovery.retrying : t.common.reconnect),
                        ),
                      ),
                      if (secondary != null)
                        FocusableButton(
                          focusNode: _secondaryFocus,
                          useBackgroundFocus: true,
                          onNavigateLeft: widget.reconnecting ? null : _retryFocus.requestFocus,
                          onPressed: widget.reconnecting ? null : secondary,
                          child: OutlinedButton.icon(
                            key: const ValueKey('apple_tv_offline_secondary'),
                            onPressed: widget.reconnecting ? null : secondary,
                            icon: AppIcon(
                              widget.onAddServer != null ? Symbols.add_link_rounded : Symbols.account_circle_rounded,
                            ),
                            label: Text(
                              widget.onAddServer != null ? t.offlineRecovery.addServer : t.screens.switchProfile,
                            ),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
