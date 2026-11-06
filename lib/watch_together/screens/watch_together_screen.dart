import 'dart:async';

import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:openwatchparty/openwatchparty.dart' as owp;
import 'package:provider/provider.dart';

import '../../focus/focusable_text_field.dart';
import '../../focus/focusable_wrapper.dart';
import '../../i18n/strings.g.dart';
import '../../mixins/mounted_set_state_mixin.dart';
import '../../theme/mono_theme.dart';
import '../../utils/app_logger.dart';
import '../../utils/dialogs.dart';
import '../../utils/platform_detector.dart';
import '../../widgets/app_icon.dart';
import '../../widgets/app_menu.dart';
import '../../widgets/dialog_action_button.dart';
import '../../widgets/focused_scroll_scaffold.dart';
import '../../widgets/loading_indicator_box.dart';
import '../../widgets/overlay_sheet.dart';
import '../providers/watch_together_provider.dart';
import '../services/recent_rooms_service.dart';
import '../widgets/join_session_dialog.dart';
import '../widgets/watch_labels.dart';
import '../widgets/watch_room_sections.dart';
import '../widgets/watch_theme.dart';

enum _View { lobby, connecting, room }

/// Watch Together: create or join a room (with recent rooms) when out of one,
/// and the room itself when in one — rendered in its own cinematic venue look
/// on phone and TV alike.
class WatchTogetherScreen extends StatefulWidget {
  const WatchTogetherScreen({super.key, this.initialCode});

  /// A `luroka://watch` invite code: join immediately instead of idling in the
  /// lobby.
  final String? initialCode;

  @override
  State<WatchTogetherScreen> createState() => _WatchTogetherScreenState();
}

class _WatchTogetherScreenState extends State<WatchTogetherScreen> with MountedSetStateMixin {
  /// The create or join this screen started: null, `''` for a create, or the
  /// recent room's code.
  String? _attempt;
  String? _error;

  @override
  void initState() {
    super.initState();
    final code = widget.initialCode;
    if (code != null && code.isNotEmpty) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) _joinRecent(code);
      });
    }
  }

  Future<void> _run(String attempt, Future<void> Function(WatchTogetherProvider provider) action) async {
    final provider = context.read<WatchTogetherProvider>();
    setState(() {
      _attempt = attempt;
      _error = null;
    });
    try {
      await action(provider);
    } on owp.PartyException catch (error) {
      if (error.code != owp.ErrorCode.cancelled) setStateIfMounted(() => _error = watchErrorText(error.code));
    } catch (error, stackTrace) {
      appLogger.w('WatchTogether: room attempt failed', error: error, stackTrace: stackTrace);
      setStateIfMounted(() => _error = t.watchTogether.errors.generic);
    } finally {
      setStateIfMounted(() => _attempt = null);
    }
  }

  Future<void> _create() => _run('', (provider) => provider.createRoom());

  Future<void> _joinRecent(String code) => _run(code, (provider) => provider.joinRoom(code));

  Future<void> _openJoinDialog() async {
    setState(() => _error = null);
    await showJoinRoomDialog(context);
  }

  @override
  Widget build(BuildContext context) {
    final view = context.select<WatchTogetherProvider, _View>(
      (provider) => switch (provider.connection) {
        owp.Connection.connected || owp.Connection.reconnecting => _View.room,
        owp.Connection.connecting => _View.connecting,
        owp.Connection.idle || owp.Connection.ended => _View.lobby,
      },
    );
    final Widget body = switch (view) {
      _View.lobby => _LobbyView(
        busyCode: _attempt,
        error: _error,
        onCreate: _create,
        onJoin: _openJoinDialog,
        onJoinRecent: _joinRecent,
      ),
      _View.connecting => _ConnectingView(attempt: _attempt),
      _View.room => const _RoomView(),
    };
    // The venue: forced dark theme over the night backdrop, so every shared
    // section widget reads as designed on phone and TV.
    return WatchCinema.backdrop(
      child: Theme(
        data: Theme.of(context).brightness == Brightness.dark ? Theme.of(context) : monoTheme(MonoPalette.dark),
        child: OverlaySheetHost(
          canPop: true,
          child: FocusedScrollScaffold(
            backgroundColor: Colors.transparent,
            title: Text(t.watchTogether.title),
            slivers: [
              // Consumes the side insets once, so the tiles inside don't add
              // them again.
              SliverSafeArea(
                top: false,
                bottom: false,
                sliver: SliverPadding(
                  padding: const EdgeInsets.all(16),
                  sliver: SliverToBoxAdapter(
                    child: Center(
                      child: ConstrainedBox(
                        constraints: BoxConstraints(maxWidth: PlatformDetector.isTV() ? 1100 : 640),
                        child: KeyedSubtree(key: ValueKey(view), child: body),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _LobbyView extends StatefulWidget {
  const _LobbyView({
    required this.busyCode,
    required this.error,
    required this.onCreate,
    required this.onJoin,
    required this.onJoinRecent,
  });

  /// See [_WatchTogetherScreenState._attempt].
  final String? busyCode;
  final String? error;
  final VoidCallback onCreate;
  final VoidCallback onJoin;
  final ValueChanged<String> onJoinRecent;

  @override
  State<_LobbyView> createState() => _LobbyViewState();
}

class _LobbyViewState extends State<_LobbyView> with MountedSetStateMixin {
  @override
  Widget build(BuildContext context) {
    final provider = context.watch<WatchTogetherProvider>();
    final busy = widget.busyCode != null;
    final profileId = provider.profileId;
    final relayScope = provider.relayScope;
    final rooms = profileId == null
        ? const <RecentRoom>[]
        : RecentRoomsService.getRecentRooms(profileId: profileId, relayScope: relayScope);
    final relay = provider.customRelayBaseUrl;
    final theme = Theme.of(context);
    Widget intro() => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 64,
          height: 64,
          decoration: BoxDecoration(
            color: theme.colorScheme.primary.withValues(alpha: .16),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Icon(Symbols.groups_rounded, size: 32, color: theme.colorScheme.primary),
        ),
        const SizedBox(height: 20),
        Text(
          t.watchTogether.title,
          style: theme.textTheme.headlineLarge?.copyWith(
            color: theme.colorScheme.onSurface,
            fontWeight: FontWeight.w800,
            letterSpacing: -1,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          t.watchTogether.description,
          style: theme.textTheme.bodyLarge?.copyWith(color: WatchCinema.textMuted(context), height: 1.5),
        ),
      ],
    );
    Widget actions() => Container(
      padding: const EdgeInsets.all(22),
      decoration: WatchCinema.card(context, radius: 22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          WatchButton(
            label: widget.busyCode == '' ? t.watchTogether.creatingRoom : t.watchTogether.createRoom,
            icon: Symbols.add_rounded,
            style: WatchButtonStyle.filled,
            autofocus: true,
            busy: widget.busyCode == '',
            onPressed: busy ? null : widget.onCreate,
          ),
          const SizedBox(height: 12),
          WatchButton(
            label: t.watchTogether.joinRoom,
            icon: Symbols.group_add_rounded,
            onPressed: busy ? null : widget.onJoin,
          ),
          const SizedBox(height: 16),
          Text(
            relay == null ? t.watchTogether.relayPublic : t.watchTogether.relayCustom(url: relay),
            style: theme.textTheme.bodySmall?.copyWith(color: WatchCinema.textMuted(context)),
          ),
        ],
      ),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        LayoutBuilder(
          builder: (context, bounds) => bounds.maxWidth >= 720
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(child: intro()),
                    const SizedBox(width: 48),
                    Expanded(child: actions()),
                  ],
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [intro(), const SizedBox(height: 24), actions()],
                ),
        ),
        if (widget.error case final error?) ...[
          const SizedBox(height: 16),
          DecoratedBox(
            decoration: BoxDecoration(
              color: const Color(0xff3a1220),
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              border: Border.all(color: const Color(0xffe5486d).withValues(alpha: .6)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  const AppIcon(Symbols.error_rounded, color: Color(0xffff8fa8)),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(error, style: const TextStyle(color: Color(0xffffd4dd))),
                  ),
                ],
              ),
            ),
          ),
        ],
        if (profileId != null && rooms.isNotEmpty) ...[
          const SizedBox(height: 32),
          Text(
            t.watchTogether.recentRooms,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(color: WatchCinema.textMuted(context)),
          ),
          const SizedBox(height: 8),
          for (final room in rooms)
            _RecentRoomTile(
              room: room,
              busy: busy,
              joining: widget.busyCode == room.code,
              onJoin: () => widget.onJoinRecent(room.code),
              onRename: () => unawaited(_rename(room, profileId, relayScope)),
              onRemove: () => unawaited(_remove(room, profileId, relayScope)),
            ),
        ],
      ],
    );
  }

  Future<void> _rename(RecentRoom room, String profileId, String relayScope) async {
    final name = await showScopedDialog<String>(
      context: context,
      builder: (_) => _RenameRoomDialog(room: room),
    );
    if (name == null) return;
    final trimmed = name.trim();
    await RecentRoomsService.renameRoom(
      room.code,
      trimmed.isEmpty ? null : trimmed,
      profileId: profileId,
      relayScope: relayScope,
    );
    setStateIfMounted(() {});
  }

  Future<void> _remove(RecentRoom room, String profileId, String relayScope) async {
    await RecentRoomsService.removeRoom(room.code, profileId: profileId, relayScope: relayScope);
    setStateIfMounted(() {});
  }
}

class _RecentRoomTile extends StatelessWidget {
  const _RecentRoomTile({
    required this.room,
    required this.busy,
    required this.joining,
    required this.onJoin,
    required this.onRename,
    required this.onRemove,
  });

  final RecentRoom room;
  final bool busy;
  final bool joining;
  final VoidCallback onJoin;
  final VoidCallback onRename;
  final VoidCallback onRemove;

  @override
  Widget build(BuildContext context) {
    final code = owp.formatCode(room.code);
    final name = room.name;
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: FocusableWrapper(
        useBackgroundFocus: true,
        borderRadius: 14,
        // Hold Select/OK for rename and remove on TV, as on media cards.
        enableLongPress: true,
        // The wrapper owns the keys; the tile and its menu button must not
        // take focus from it.
        descendantsAreFocusable: false,
        onSelect: busy ? null : onJoin,
        onLongPress: () => _showActions(context),
        child: Material(
          color: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(Radius.circular(14)),
            side: BorderSide(color: WatchCinema.glassBorder(context)),
          ),
          child: ListTile(
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14))),
            leading: joining
                ? const LoadingIndicatorBox(size: 24)
                : Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                      color: Theme.of(context).colorScheme.primaryContainer,
                    ),
                    alignment: Alignment.center,
                    child: AppIcon(
                      Symbols.meeting_room_rounded,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                      fill: 1,
                    ),
                  ),
            title: Text(name ?? code, maxLines: 1, overflow: TextOverflow.ellipsis),
            subtitle: name == null
                ? null
                : Text(
                    code,
                    style: TextStyle(fontFamily: 'monospace', color: WatchCinema.textMuted(context)),
                  ),
            trailing: IconButton(
              tooltip: t.watchTogether.roomActions,
              icon: const AppIcon(Symbols.more_vert_rounded),
              onPressed: () => _showActions(context),
            ),
            onTap: busy ? null : onJoin,
            onLongPress: () => _showActions(context),
          ),
        ),
      ),
    );
  }

  void _showActions(BuildContext context) {
    unawaited(
      OverlaySheetController.showAdaptive<void>(
        context,
        builder: (_) => AppMenuSheet<String>(
          title: room.name ?? owp.formatCode(room.code),
          focusFirstItem: true,
          entries: [
            AppMenuItem(value: 'rename', icon: Symbols.edit_rounded, label: t.watchTogether.renameRoom),
            AppMenuItem(
              value: 'remove',
              icon: Symbols.delete_rounded,
              label: t.watchTogether.removeRoom,
              destructive: true,
            ),
          ],
          onSelected: (value) {
            if (value == 'rename') {
              onRename();
            } else {
              onRemove();
            }
          },
        ),
      ),
    );
  }
}

class _RenameRoomDialog extends StatefulWidget {
  const _RenameRoomDialog({required this.room});

  final RecentRoom room;

  @override
  State<_RenameRoomDialog> createState() => _RenameRoomDialogState();
}

class _RenameRoomDialogState extends State<_RenameRoomDialog> {
  late final _controller = TextEditingController(text: widget.room.name ?? '');
  final _fieldFocusNode = FocusNode(debugLabel: 'WatchTogetherRenameField');
  final _cancelFocusNode = FocusNode(debugLabel: 'WatchTogetherRenameCancel');
  final _saveFocusNode = FocusNode(debugLabel: 'WatchTogetherRenameSave');

  @override
  void dispose() {
    _fieldFocusNode.dispose();
    _cancelFocusNode.dispose();
    _saveFocusNode.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(t.watchTogether.renameRoom),
      content: FocusableTextField(
        controller: _controller,
        focusNode: _fieldFocusNode,
        autofocus: true,
        decoration: InputDecoration(hintText: owp.formatCode(widget.room.code)),
        onNavigateDown: _saveFocusNode.requestFocus,
        onSubmitted: (value) => Navigator.pop(context, value),
      ),
      actions: [
        DialogActionButton(
          focusNode: _cancelFocusNode,
          onPressed: () => Navigator.pop(context),
          onNavigateUp: _fieldFocusNode.requestFocus,
          onNavigateRight: _saveFocusNode.requestFocus,
          label: t.common.cancel,
        ),
        DialogActionButton(
          focusNode: _saveFocusNode,
          onPressed: () => Navigator.pop(context, _controller.text),
          onNavigateUp: _fieldFocusNode.requestFocus,
          onNavigateLeft: _cancelFocusNode.requestFocus,
          isPrimary: true,
          label: t.common.save,
        ),
      ],
    );
  }
}

/// A create or join under way, with cancel.
class _ConnectingView extends StatelessWidget {
  const _ConnectingView({required this.attempt});

  final String? attempt;

  @override
  Widget build(BuildContext context) {
    final label = switch (attempt) {
      null => t.watchTogether.connecting,
      '' => t.watchTogether.creatingRoom,
      _ => t.watchTogether.joiningRoom,
    };
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 48),
      child: Column(
        children: [
          const LoadingIndicatorBox(size: 40),
          const SizedBox(height: 24),
          Text(label, style: Theme.of(context).textTheme.titleMedium, textAlign: TextAlign.center),
          const SizedBox(height: 24),
          WatchButton(
            label: t.common.cancel,
            icon: Symbols.close_rounded,
            autofocus: true,
            onPressed: context.read<WatchTogetherProvider>().leave,
          ),
        ],
      ),
    );
  }
}

/// The room: code, media and match, offset, participants, host settings,
/// leave and end — as glass cards over the venue backdrop.
class _RoomView extends StatelessWidget {
  const _RoomView();

  @override
  Widget build(BuildContext context) {
    final (hasMedia, isHost) = context.select<WatchTogetherProvider, (bool, bool)>(
      (provider) => (provider.hasMedia, provider.isHost),
    );
    Widget card(Widget child, {EdgeInsets padding = const EdgeInsets.all(16)}) => Card(
      margin: EdgeInsets.zero,
      color: WatchCinema.glass(context),
      elevation: 0,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(Radius.circular(WatchCinema.cardRadius)),
        side: BorderSide(color: WatchCinema.glassBorder(context)),
      ),
      child: Padding(padding: padding, child: child),
    );
    Widget roomInfo() => Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        card(const WatchRoomHeader(autofocus: true)),
        const SizedBox(height: 12),
        card(const WatchMediaSection()),
        if (hasMedia) ...[const SizedBox(height: 12), card(const WatchOffsetSection())],
      ],
    );
    Widget roomPeople() => Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        card(
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    t.watchTogether.participants,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(color: WatchCinema.textMuted(context)),
                  ),
                ),
                const WatchParticipantsSection(),
              ],
            ),
          ),
        ),
        if (isHost) ...[
          const SizedBox(height: 12),
          card(
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      t.watchTogether.roomSettings,
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(color: WatchCinema.textMuted(context)),
                    ),
                  ),
                  const WatchHostSettingsSection(),
                ],
              ),
            ),
          ),
        ],
        const SizedBox(height: 12),
        WatchButtonRow(
          alignment: WrapAlignment.center,
          children: [
            WatchButton(
              label: t.watchTogether.leaveRoom,
              icon: Symbols.logout_rounded,
              onPressed: () => unawaited(confirmLeaveRoom(context)),
            ),
            if (isHost)
              WatchButton(
                label: t.watchTogether.endRoom,
                icon: Symbols.cancel_rounded,
                style: WatchButtonStyle.tonal,
                onPressed: () => unawaited(confirmEndRoom(context)),
              ),
          ],
        ),
      ],
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const WatchReconnectingBanner(),
        const SizedBox(height: 12),
        LayoutBuilder(
          builder: (context, bounds) => bounds.maxWidth >= 720
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(child: roomInfo()),
                    const SizedBox(width: 20),
                    Expanded(child: roomPeople()),
                  ],
                )
              : Column(children: [roomInfo(), const SizedBox(height: 12), roomPeople()]),
        ),
      ],
    );
  }
}
