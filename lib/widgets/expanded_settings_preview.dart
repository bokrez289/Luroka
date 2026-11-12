import 'package:flutter/material.dart';
import '../i18n/strings.g.dart';
import 'package:provider/provider.dart';
import '../providers/discover_provider.dart';
import '../providers/home_layout_provider.dart';
import '../providers/home_favorites_snapshot.dart';
import '../providers/home_taste_provider.dart';
import '../providers/studios_provider.dart';
import '../providers/trending_spotlight_provider.dart';
import '../providers/multi_server_provider.dart';
import '../focus/focusable_button.dart';
import '../focus/dpad_navigator.dart';

Future<void> showExpandedSettingsPreview(BuildContext context, Widget preview) async {
  final opener = FocusManager.instance.primaryFocus;
  // Dialog routes are siblings of the page. Retain its profile-owned providers
  // instead of silently falling back to empty/sample content in the larger view.
  final content = MultiProvider(
    providers: [
      ChangeNotifierProvider<HomeFavoritesSnapshot?>.value(value: context.read<HomeFavoritesSnapshot?>()),
      ChangeNotifierProvider<HomeTasteProvider?>.value(value: context.read<HomeTasteProvider?>()),
      ChangeNotifierProvider<DiscoverProvider?>.value(value: context.read<DiscoverProvider?>()),
      ChangeNotifierProvider<HomeLayoutProvider?>.value(value: context.read<HomeLayoutProvider?>()),
      ChangeNotifierProvider<StudiosProvider?>.value(value: context.read<StudiosProvider?>()),
      ChangeNotifierProvider<TrendingSpotlightProvider?>.value(value: context.read<TrendingSpotlightProvider?>()),
      ChangeNotifierProvider<MultiServerProvider?>.value(value: context.read<MultiServerProvider?>()),
    ],
    child: preview,
  );
  await showDialog<void>(
    context: context,
    useRootNavigator: false,
    builder: (dialog) => _ExpandedPreview(content: content),
  );
  if (opener?.context != null && opener!.canRequestFocus) opener.requestFocus();
}

class _ExpandedPreview extends StatefulWidget {
  const _ExpandedPreview({required this.content});
  final Widget content;
  @override
  State<_ExpandedPreview> createState() => _ExpandedPreviewState();
}

class _ExpandedPreviewState extends State<_ExpandedPreview> {
  final _scroll = ScrollController();
  final _homeScroll = ScrollController();
  @override
  void dispose() {
    _homeScroll.dispose();
    _scroll.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Focus(
    canRequestFocus: false,
    onKeyEvent: (_, event) {
      if (!event.isActionable) return KeyEventResult.ignored;
      if (event.logicalKey.isBackKey) {
        Navigator.pop(context);
        return KeyEventResult.handled;
      }
      final controller = _homeScroll.hasClients ? _homeScroll : _scroll;
      if ((event.logicalKey.isDownKey || event.logicalKey.isUpKey) && controller.hasClients) {
        final position = controller.position;
        controller.jumpTo(
          (controller.offset + (event.logicalKey.isDownKey ? 200 : -200)).clamp(
            position.minScrollExtent,
            position.maxScrollExtent,
          ),
        );
        return KeyEventResult.handled;
      }
      return KeyEventResult.ignored;
    },
    child: Dialog.fullscreen(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(t.tvSettingsV2.previewLive),
          actions: [
            FocusableButton(
              autofocus: true,
              onPressed: () => Navigator.pop(context),
              child: TextButton.icon(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.close),
                label: Text(t.common.close),
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: PrimaryScrollController(
            controller: _homeScroll,
            child: SingleChildScrollView(
              controller: _scroll,
              primary: false,
              padding: const EdgeInsets.all(16),
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 1100),
                  child: ExcludeFocus(child: IgnorePointer(child: widget.content)),
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
