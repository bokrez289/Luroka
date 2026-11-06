import 'package:flutter/material.dart';

import '../utils/error_dialog.dart';import 'package:provider/provider.dart';

import '../focus/focusable_action_bar.dart';
import '../i18n/strings.g.dart';
import '../providers/catalog_sources_provider.dart';
import '../providers/explore_provider.dart';
import '../services/catalog/award_catalog.dart';
import '../services/catalog/catalog_source.dart';
import '../services/catalog/discovery_shelves.dart';
import '../widgets/desktop_app_bar.dart';
import '../widgets/focusable_list_tile.dart';
import '../widgets/tv_screen_insets.dart';

/// Changes are staged, then saved once so browsing checkboxes does not trigger
/// repeated network refreshes or disrupt focus on the Discover shelves behind it.
class DiscoveryShelvesScreen extends StatefulWidget {
  const DiscoveryShelvesScreen({super.key});

  @override
  State<DiscoveryShelvesScreen> createState() => _DiscoveryShelvesScreenState();
}

class _DiscoveryShelvesScreenState extends State<DiscoveryShelvesScreen> {
  late final _sources = context.read<CatalogSourcesProvider>();
  late Set<String> _selected = {..._sources.discoveryShelfIds};
  bool _saving = false;

  Future<void> _save() async {
    setState(() => _saving = true);
    try {
      await _sources.setDiscoveryShelves(_selected);
      if (mounted) Navigator.of(context).pop();
    } catch (_) {
      if (mounted) {
        setState(() => _saving = false);
        showErrorDialog(context, t.awardsCatalog.saveShelvesFailed);
      }
    }
  }

  Widget _heading(String text) => Padding(
    padding: const EdgeInsets.fromLTRB(24, 24, 24, 8),
    child: Text(text, style: Theme.of(context).textTheme.titleMedium),
  );

  Widget _toggle(String id, String title, {bool autofocus = false}) => FocusableSwitchListTile(
    key: ValueKey('discover_shelf_$id'),
    title: Text(title),
    value: _selected.contains(id),
    dense: false,
    autofocus: autofocus,
    onChanged: _saving
        ? null
        : (enabled) => setState(() {
            if (enabled) {
              _selected.add(id);
            } else {
              _selected.remove(id);
            }
          }),
  );

  @override
  Widget build(BuildContext context) {
    final rows = _sources.activeSource?.supportedRows ?? const <CatalogRowId>[];
    final children = <Widget>[
      Padding(padding: const EdgeInsets.all(24), child: Text(t.awardsCatalog.shelvesDescription)),
      FocusableListTile(
        title: Text(t.awardsCatalog.restoreShelves),
        leading: const Icon(Icons.restore_rounded),
        dense: false,
        onTap: _saving ? null : () => setState(() => _selected = {...defaultDiscoveryShelves}),
      ),
      _heading(t.awardsCatalog.generalShelves),
      for (final row in rows) _toggle(row.name, ExploreProvider.rowTitle(row), autofocus: row == rows.first),
      _heading(t.awardsCatalog.charts),
      for (final shelf in discoveryShelves.where((shelf) => shelf.family == null)) _toggle(shelf.id, shelf.title),
      for (final family in awardFamilies) ...[
        _heading(family.name),
        for (final shelf in discoveryShelves.where((shelf) => shelf.family == family))
          _toggle(shelf.id, shelf.category!.title),
      ],
      const SizedBox(height: 32),
    ];
    return Scaffold(
      body: TvScreenInsets(
        child: CustomScrollView(
          slivers: [
            DesktopSliverAppBar(
              title: Text(t.awardsCatalog.chooseShelves),
              pinned: true,
              actions: [
                FocusableActionBar(
                  actions: [
                    FocusableAction(
                      debugLabel: 'SaveDiscoveryShelves',
                      onPressed: _saving ? null : _save,
                      child: TextButton.icon(
                        onPressed: _saving ? null : _save,
                        icon: const Icon(Icons.check_rounded),
                        label: Text(t.common.save),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SliverList.builder(itemCount: children.length, itemBuilder: (_, index) => children[index]),
          ],
        ),
      ),
    );
  }
}
