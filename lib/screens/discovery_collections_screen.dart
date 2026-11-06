import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../i18n/strings.g.dart';
import '../focus/focusable_action_bar.dart';
import '../providers/explore_provider.dart';
import '../services/catalog/award_catalog.dart';
import '../widgets/desktop_app_bar.dart';
import '../widgets/focusable_list_tile.dart';
import '../widgets/tv_screen_insets.dart';
import 'hub_detail_screen.dart';
import 'award_category_screen.dart';
import 'discovery_shelves_screen.dart';

/// A fast entry point to award categories and library-matched chart shelves.
class DiscoveryCollectionsScreen extends StatelessWidget {
  const DiscoveryCollectionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final explore = context.watch<ExploreProvider>();
    final rows = explore.rowHubs.where((row) => row.providerHubId?.startsWith('imdb') == true).toList();
    return Scaffold(
      body: TvScreenInsets(
        child: CustomScrollView(
          slivers: [
            DesktopSliverAppBar(
              title: Text(t.searchDiscovery.collections),
              pinned: true,
              actions: [
                if (explore.customizableShelves)
                  FocusableActionBar(
                    actions: [
                      FocusableAction(
                        debugLabel: 'CustomizeDiscoverAwards',
                        onPressed: () => Navigator.of(
                          context,
                        ).push(MaterialPageRoute<void>(builder: (_) => const DiscoveryShelvesScreen())),
                        child: TextButton.icon(
                          onPressed: () => Navigator.of(
                            context,
                          ).push(MaterialPageRoute<void>(builder: (_) => const DiscoveryShelvesScreen())),
                          icon: const Icon(Icons.tune_rounded),
                          label: Text(t.awardsCatalog.customize),
                        ),
                      ),
                    ],
                  ),
              ],
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(24, 8, 24, 20),
                child: Text(t.awardsCatalog.chooseCategory, style: Theme.of(context).textTheme.bodyLarge),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 24),
              sliver: SliverList.builder(
                itemCount: awardFamilies.length,
                itemBuilder: (context, index) {
                  final family = awardFamilies[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Material(
                      color: Theme.of(context).colorScheme.surfaceContainer,
                      borderRadius: BorderRadius.circular(14),
                      clipBehavior: Clip.antiAlias,
                      child: FocusableListTile(
                        autofocus: index == 0,
                        dense: false,
                        visualDensity: VisualDensity.standard,
                        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                        leading: Icon(
                          Icons.emoji_events_outlined,
                          size: 32,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        title: Text(
                          family.name,
                          style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
                        ),
                        subtitle: Text(
                          family.categories.take(3).map((category) => category.title).join(' · '),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        trailing: const Icon(Icons.chevron_right_rounded),
                        onTap: () => Navigator.of(
                          context,
                        ).push(MaterialPageRoute<void>(builder: (_) => AwardFamilyScreen(family: family))),
                      ),
                    ),
                  );
                },
              ),
            ),
            if (rows.isNotEmpty)
              SliverPadding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 24),
                sliver: SliverList.builder(
                  itemCount: rows.length,
                  itemBuilder: (context, index) {
                    final row = rows[index];
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Material(
                        color: Theme.of(context).colorScheme.surfaceContainer,
                        borderRadius: BorderRadius.circular(14),
                        clipBehavior: Clip.antiAlias,
                        child: FocusableListTile(
                          autofocus: false,
                          dense: false,
                          visualDensity: VisualDensity.standard,
                          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          leading: Icon(
                            row.providerHubId?.startsWith('imdb') == true
                                ? Icons.star_rounded
                                : Icons.emoji_events_outlined,
                            color: Theme.of(context).colorScheme.primary,
                            size: 32,
                          ),
                          title: Text(
                            row.hub.title,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
                          ),
                          subtitle: Text(t.discover.titleCount(n: row.hub.items.length)),
                          trailing: const Icon(Icons.chevron_right_rounded),
                          onTap: () => unawaited(
                            Navigator.of(context).push(
                              MaterialPageRoute<void>(
                                builder: (_) =>
                                    HubDetailScreen(hub: row.hub, loadItems: () => explore.loadAllForHub(row)),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}
