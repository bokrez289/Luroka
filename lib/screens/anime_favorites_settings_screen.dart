import 'package:flutter/material.dart';

import '../focus/focusable_button.dart';
import '../i18n/strings.g.dart';
import '../media/anime_favorites.dart';
import '../media/media_item.dart';
import '../media/media_kind.dart';
import '../media/media_library.dart';
import '../widgets/app_menu.dart';
import '../widgets/focusable_list_tile.dart';
import '../widgets/focused_scroll_scaffold.dart';

enum _AnimeChoice { automatic, include, exclude }

/// Edits a local draft; the caller persists it to the active profile on save.
class AnimeFavoritesSettingsScreen extends StatefulWidget {
  const AnimeFavoritesSettingsScreen({
    super.key,
    required this.rules,
    required this.libraries,
    required this.items,
    required this.copiesFor,
  });

  final AnimeFavoritesRules rules;
  final List<MediaLibrary> libraries;
  final List<MediaItem> items;
  final List<MediaItem> Function(MediaItem) copiesFor;

  @override
  State<AnimeFavoritesSettingsScreen> createState() => _AnimeFavoritesSettingsScreenState();
}

class _AnimeFavoritesSettingsScreenState extends State<AnimeFavoritesSettingsScreen> {
  late AnimeFavoritesRules _rules = widget.rules;
  late final _libraryTitles = {for (final library in widget.libraries) library.globalKey: library.title};
  late final List<MediaItem> _items =
      widget.items.where((item) => item.kind == MediaKind.movie || item.kind == MediaKind.show).toList()
        ..sort((a, b) => a.displayTitle.toLowerCase().compareTo(b.displayTitle.toLowerCase()));

  String _status(bool? override, bool detected) => switch (override) {
    true => t.animeFavorites.include,
    false => t.animeFavorites.exclude,
    null => detected ? t.animeFavorites.automaticIncluded : t.animeFavorites.automaticExcluded,
  };

  Future<void> _editLibrary(MediaLibrary library) async {
    final focus = FocusManager.instance.primaryFocus;
    final current = _rules.libraries[library.globalKey];
    final choice = await _showChoices(library.title, current);
    if (!mounted) return;
    if (choice != null) {
      setState(() => _rules = _rules.withLibrary(library.globalKey, _value(choice)));
    }
    if (focus?.context?.mounted == true) focus!.requestFocus();
  }

  Future<void> _editTitle(MediaItem item) async {
    final focus = FocusManager.instance.primaryFocus;
    final copies = widget.copiesFor(item);
    final choice = await _showChoices(item.displayTitle, _rules.titleOverride(copies));
    if (!mounted) return;
    if (choice != null) setState(() => _rules = _rules.withTitles(copies, _value(choice)));
    if (focus?.context?.mounted == true) focus!.requestFocus();
  }

  bool? _value(_AnimeChoice choice) => switch (choice) {
    _AnimeChoice.automatic => null,
    _AnimeChoice.include => true,
    _AnimeChoice.exclude => false,
  };

  Future<_AnimeChoice?> _showChoices(String title, bool? current) => showAdaptiveAppMenu<_AnimeChoice>(
    context,
    title: title,
    position: Offset(MediaQuery.sizeOf(context).width / 2, 160),
    focusFirstItem: true,
    entries: [
      AppMenuItem(value: _AnimeChoice.automatic, label: t.animeFavorites.automatic, selected: current == null),
      AppMenuItem(value: _AnimeChoice.include, label: t.animeFavorites.include, selected: current == true),
      AppMenuItem(value: _AnimeChoice.exclude, label: t.animeFavorites.exclude, selected: current == false),
    ],
  );

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    Widget heading(String title, String hint) => Padding(
      padding: const EdgeInsets.fromLTRB(24, 20, 24, 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: theme.textTheme.titleLarge),
          const SizedBox(height: 6),
          Text(hint, style: theme.textTheme.bodyMedium),
        ],
      ),
    );
    return FocusedScrollScaffold(
      title: Text(t.animeFavorites.manage),
      bottomBar: SafeArea(
        top: false,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: FocusableButton(
            onPressed: () => Navigator.of(context).pop(_rules),
            child: FilledButton(onPressed: () => Navigator.of(context).pop(_rules), child: Text(t.common.save)),
          ),
        ),
      ),
      slivers: [
        SliverToBoxAdapter(
          child: Padding(padding: const EdgeInsets.fromLTRB(24, 16, 24, 0), child: Text(t.animeFavorites.description)),
        ),
        SliverToBoxAdapter(child: heading(t.animeFavorites.libraries, t.animeFavorites.libraryHint)),
        if (widget.libraries.isEmpty)
          SliverToBoxAdapter(
            child: Padding(padding: const EdgeInsets.all(24), child: Text(t.animeFavorites.noLibraries)),
          )
        else
          SliverList.builder(
            itemCount: widget.libraries.length,
            itemBuilder: (context, index) {
              final library = widget.libraries[index];
              final state = _status(_rules.libraries[library.globalKey], _rules.includesLibrary(library));
              return FocusableListTile(
                key: ValueKey('anime-library-${library.globalKey}'),
                title: Text(library.title),
                subtitle: Text([if (library.serverName != null) library.serverName!, state].join(' · ')),
                trailing: const Icon(Icons.chevron_right_rounded),
                onTap: () => _editLibrary(library),
              );
            },
          ),
        SliverToBoxAdapter(child: heading(t.animeFavorites.titles, t.animeFavorites.titleHint)),
        if (_items.isEmpty)
          SliverToBoxAdapter(
            child: Padding(padding: const EdgeInsets.all(24), child: Text(t.animeFavorites.noTitles)),
          )
        else
          SliverList.builder(
            itemCount: _items.length,
            itemBuilder: (context, index) {
              final item = _items[index];
              final copies = widget.copiesFor(item);
              final state = _status(
                _rules.titleOverride(copies),
                _rules.includesTitle(copies, libraryTitles: _libraryTitles),
              );
              return FocusableListTile(
                key: ValueKey('anime-title-${item.globalKey}'),
                title: Text(item.displayTitle, maxLines: 1, overflow: TextOverflow.ellipsis),
                subtitle: Text([if (item.libraryTitle != null) item.libraryTitle!, state].join(' · ')),
                trailing: const Icon(Icons.chevron_right_rounded),
                onTap: () => _editTitle(item),
              );
            },
          ),
      ],
    );
  }
}
