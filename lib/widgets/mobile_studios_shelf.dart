import 'package:flutter/material.dart';
import '../media/media_item.dart';
import '../media/media_server_client.dart';
import '../screens/studios_screen.dart';
import '../i18n/strings.g.dart';
import 'studio_card.dart';

/// Compact logo strip, shared by both mobile Home presentations.
class MobileStudiosShelf extends StatefulWidget {
  const MobileStudiosShelf({super.key, required this.items, required this.onTap, required this.resolveClient});
  final List<MediaItem> items;
  final ValueChanged<MediaItem> onTap;
  final MediaServerClient? Function(MediaItem) resolveClient;

  @override
  State<MobileStudiosShelf> createState() => MobileStudiosShelfState();
}

class MobileStudiosShelfState extends State<MobileStudiosShelf> {
  final _scroll = ScrollController(keepScrollOffset: false);

  void resetHorizontalScroll() {
    if (_scroll.hasClients) _scroll.jumpTo(_scroll.position.minScrollExtent);
  }

  @override
  void dispose() {
    _scroll.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          Expanded(
            child: Text(
              t.studios.title,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
            ),
          ),
          IconButton(
            tooltip: t.studios.title,
            onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (_) => const StudiosScreen())),
            icon: const Icon(Icons.chevron_right_rounded),
          ),
        ],
      ),
      SizedBox(
        height: 104,
        child: ListView.separated(
          controller: _scroll,
          scrollDirection: Axis.horizontal,
          itemCount: widget.items.length,
          separatorBuilder: (_, _) => const SizedBox(width: 8),
          itemBuilder: (context, index) => StudioCard(
            item: widget.items[index],
            width: 170,
            height: 96,
            client: widget.resolveClient(widget.items[index]),
            imagePath: widget.items[index].thumbPath,
            onTap: () => widget.onTap(widget.items[index]),
          ),
        ),
      ),
    ],
  );
}
