import 'dart:async';

import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../../../focus/focusable_wrapper.dart';
import '../../../i18n/strings.g.dart';
import '../../../mpv/mpv.dart';
import '../../../services/player_sync_offsets.dart';
import '../../../services/scoped_player_prefs.dart';
import '../../../theme/mono_tokens.dart';
import '../../app_icon.dart';
import '../../overlay_sheet.dart';
import '../models/track_controls_state.dart';
import '../widgets/sync_offset_control.dart';

/// Replaces the current sheet with a small bar so the picture stays visible.
void showPlayerSyncBar(BuildContext context, Player player, TrackControlsState state, {required bool isSubtitle}) {
  final controller = OverlaySheetController.maybeOf(context);
  if (controller == null) return;
  final sliderFocusNode = FocusNode(debugLabel: 'SyncSlider');
  final offsets = PlayerSyncOffsets.of(player);
  controller
      .show(
        alignment: Alignment.topCenter,
        constraints: const BoxConstraints(maxHeight: 80, maxWidth: 900),
        initialFocusNode: sliderFocusNode,
        builder: (_) => _PlayerSyncBar(
          title: isSubtitle ? t.videoSettings.subtitleSync : t.videoSettings.audioSync,
          icon: isSubtitle ? Symbols.subtitles_rounded : Symbols.sync_rounded,
          player: player,
          propertyName: isSubtitle ? 'sub-delay' : 'audio-delay',
          initialOffset: isSubtitle ? offsets.subtitleMs : offsets.audioMs,
          sliderFocusNode: sliderFocusNode,
          onOffsetChanged: (offset) => ScopedPlayerPrefs.write(
            isSubtitle ? ScopedPlayerPrefs.subtitleSyncOffset : ScopedPlayerPrefs.audioSyncOffset,
            state.metadata,
            offset,
          ),
        ),
      )
      .whenComplete(() {
        sliderFocusNode.dispose();
        state.onStartAutoHide?.call();
      });
  // The replaced sheet restarts auto-hide in a microtask.
  Future.microtask(() => state.onCancelAutoHide?.call());
}

class _PlayerSyncBar extends StatefulWidget {
  const _PlayerSyncBar({
    required this.title,
    required this.icon,
    required this.player,
    required this.propertyName,
    required this.initialOffset,
    required this.onOffsetChanged,
    required this.sliderFocusNode,
  });

  final String title;
  final IconData icon;
  final Player player;
  final String propertyName;
  final int initialOffset;
  final Future<void> Function(int offset) onOffsetChanged;
  final FocusNode sliderFocusNode;

  @override
  State<_PlayerSyncBar> createState() => _PlayerSyncBarState();
}

class _PlayerSyncBarState extends State<_PlayerSyncBar> {
  final _resetFocusNode = FocusNode(debugLabel: 'SyncResetButton');
  final _closeFocusNode = FocusNode(debugLabel: 'SyncCloseButton');

  @override
  void dispose() {
    _resetFocusNode.dispose();
    _closeFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final compact = MediaQuery.sizeOf(context).width < 600;
    return Row(
      children: [
        SizedBox(width: compact ? 8 : 16),
        AppIcon(widget.icon, fill: 1, color: Theme.of(context).colorScheme.primary, size: 20),
        if (!compact) ...[
          const SizedBox(width: 8),
          Text(widget.title, style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14)),
        ],
        Expanded(
          child: SyncOffsetControl(
            player: widget.player,
            propertyName: widget.propertyName,
            initialOffset: widget.initialOffset,
            onOffsetChanged: widget.onOffsetChanged,
            sliderFocusNode: widget.sliderFocusNode,
            resetFocusNode: _resetFocusNode,
            closeFocusNode: _closeFocusNode,
          ),
        ),
        FocusableWrapper(
          focusNode: _closeFocusNode,
          onSelect: () => OverlaySheetController.of(context).close(),
          onNavigateLeft: () => _resetFocusNode.requestFocus(),
          borderRadius: 18,
          autoScroll: false,
          useBackgroundFocus: true,
          child: GestureDetector(
            onTap: () => OverlaySheetController.of(context).close(),
            child: SizedBox(
              width: 36,
              height: 36,
              child: Center(child: AppIcon(Symbols.close_rounded, fill: 1, color: tokens(context).textMuted, size: 22)),
            ),
          ),
        ),
        SizedBox(width: compact ? 4 : 12),
      ],
    );
  }
}
