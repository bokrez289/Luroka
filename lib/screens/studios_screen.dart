import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../i18n/strings.g.dart';
import '../providers/studios_provider.dart';
import '../widgets/desktop_app_bar.dart';
import '../widgets/poster_loading_placeholder.dart';
import '../widgets/studio_card.dart';
import 'studio_browser_screen.dart';

/// A touch-friendly directory over the same library-scoped studio facets as TV.
class StudiosScreen extends StatefulWidget {
  const StudiosScreen({super.key});
  @override
  State<StudiosScreen> createState() => _StudiosScreenState();
}

class _StudiosScreenState extends State<StudiosScreen> {
  String _query = '';
  @override
  void initState() {
    super.initState();
    context.read<StudiosProvider>().ensureLoaded();
  }

  @override
  Widget build(BuildContext context) {
    final studios = context.watch<StudiosProvider>();
    final groups = studios.groups.where((group) => group.name.toLowerCase().contains(_query.toLowerCase())).toList();
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            DesktopSliverAppBar(
              title: Text(t.studios.title),
              pinned: true,
              actions: [
                IconButton(
                  onPressed: studios.refresh,
                  tooltip: t.common.refresh,
                  icon: const Icon(Icons.refresh_rounded),
                ),
              ],
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: TextField(
                  onChanged: (query) => setState(() => _query = query.trim()),
                  decoration: InputDecoration(labelText: t.studios.title, prefixIcon: const Icon(Icons.search_rounded)),
                ),
              ),
            ),
            if (studios.loading && studios.groups.isEmpty)
              const PosterLoadingSliver()
            else if (groups.isEmpty)
              SliverFillRemaining(hasScrollBody: false, child: Center(child: Text(t.studios.empty)))
            else
              SliverPadding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
                sliver: SliverLayoutBuilder(
                  builder: (context, bounds) => SliverGrid.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: (bounds.crossAxisExtent / 170).floor().clamp(2, 5),
                      childAspectRatio: 16 / 10,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                    ),
                    itemCount: groups.length,
                    itemBuilder: (context, index) => LayoutBuilder(
                      builder: (context, tile) {
                        final group = groups[index];
                        final source = group.sources.first;
                        return StudioCard(
                          item: group.homeItem,
                          width: tile.maxWidth,
                          height: tile.maxHeight - 6,
                          client: source.client,
                          imagePath: group.homeItem.thumbPath,
                          onTap: () => Navigator.of(
                            context,
                          ).push(MaterialPageRoute<void>(builder: (_) => StudioBrowserScreen(studioKey: group.key))),
                        );
                      },
                    ),
                  ),
                ),
              ),
            if (studios.failed)
              SliverToBoxAdapter(
                child: Center(
                  child: TextButton(onPressed: studios.refresh, child: Text(t.studios.retry)),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
