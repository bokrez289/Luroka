import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../media/media_item.dart';
import '../focus/card_focus_scope.dart';
import '../i18n/strings.g.dart';
import '../utils/platform_detector.dart';
import '../focus/key_event_utils.dart';

class DetailReviewCard extends StatelessWidget {
  const DetailReviewCard({super.key, required this.item, required this.width, required this.height});
  final MediaItem item;
  final double width, height;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainer,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 2,
          color: CardFocusScope.maybeOf(context) == true ? theme.colorScheme.primary : theme.colorScheme.outlineVariant,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            item.title ?? '',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w700),
          ),
          Text(
            '${item.raw?['reviewSource'] ?? ''}${item.raw?['reviewRating'] == null ? '' : ' · ${item.raw!['reviewRating']}/10'}',
            maxLines: 1,
            style: theme.textTheme.labelSmall?.copyWith(color: theme.colorScheme.primary),
          ),
          const SizedBox(height: 8),
          Expanded(
            child: Text(
              item.summary ?? '',
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall?.copyWith(height: 1.4),
            ),
          ),
          Text(
            t.detailExtras.readReview,
            style: theme.textTheme.labelSmall?.copyWith(color: theme.colorScheme.primary),
          ),
        ],
      ),
    );
  }
}

Future<void> showDetailReview(BuildContext context, MediaItem item) async {
  final tv = PlatformDetector.isTV();
  final scroll = ScrollController();
  Widget content(BuildContext context) => SafeArea(
    child: Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(child: Text(item.title ?? '', style: Theme.of(context).textTheme.titleLarge)),
              IconButton(
                autofocus: true,
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.close),
                tooltip: t.common.close,
              ),
            ],
          ),
          Text(
            '${item.raw?['reviewSource'] ?? ''}${item.raw?['reviewRating'] == null ? '' : ' · ${item.raw!['reviewRating']}/10'}',
          ),
          if (item.raw?['reviewDate'] case final String date) Text(date, style: Theme.of(context).textTheme.labelSmall),
          const SizedBox(height: 20),
          Flexible(
            child: SingleChildScrollView(
              controller: scroll,
              child: Text(item.summary ?? '', style: Theme.of(context).textTheme.bodyLarge?.copyWith(height: 1.65)),
            ),
          ),
        ],
      ),
    ),
  );
  Widget remoteReader(BuildContext context) => Focus(
    onKeyEvent: (_, event) {
      final back = handleBackKeyNavigation(context, event);
      if (back == KeyEventResult.handled) return back;
      if (event is! KeyDownEvent && event is! KeyRepeatEvent) return KeyEventResult.ignored;
      final direction = event.logicalKey == LogicalKeyboardKey.arrowDown
          ? 1
          : event.logicalKey == LogicalKeyboardKey.arrowUp
          ? -1
          : 0;
      if (direction == 0 || !scroll.hasClients) return KeyEventResult.ignored;
      scroll.jumpTo((scroll.offset + direction * 100).clamp(0, scroll.position.maxScrollExtent));
      return KeyEventResult.handled;
    },
    child: content(context),
  );
  try {
    if (tv) {
      await showDialog<void>(
        context: context,
        builder: (context) => Dialog(
          child: SizedBox(width: 780, height: MediaQuery.sizeOf(context).height * .8, child: remoteReader(context)),
        ),
      );
    } else {
      await showModalBottomSheet<void>(
        context: context,
        isScrollControlled: true,
        useSafeArea: true,
        builder: (context) => SizedBox(height: MediaQuery.sizeOf(context).height * .8, child: content(context)),
      );
    }
  } finally {
    scroll.dispose();
  }
}
