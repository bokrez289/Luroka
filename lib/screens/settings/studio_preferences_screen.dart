import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../i18n/strings.g.dart';
import '../../media/studio_brands.dart';
import '../../media/home_layout.dart';
import '../../providers/home_layout_provider.dart';
import '../../utils/error_dialog.dart';
import '../../widgets/app_menu.dart';
import '../../widgets/focusable_list_tile.dart';
import '../../widgets/settings_page.dart';
import '../../widgets/studio_card.dart';
import '../../media/media_item.dart';
import '../../media/media_backend.dart';
import '../../media/media_kind.dart';
import '../../focus/focusable_button.dart';
import '../../providers/studios_provider.dart';
import '../../widgets/settings_preview_thumbnail.dart';
import '../../utils/platform_detector.dart';

/// Profile-owned studio visibility and ordering, usable with a TV remote.
class StudioPreferencesScreen extends StatefulWidget {
  const StudioPreferencesScreen({
    super.key,
    this.draft,
    this.onDraftChanged,
    this.previewTheme,
    this.showSpotlight,
    this.posterDetails,
    this.episodeThumbnails,
  });
  final HomeLayout? draft;
  final ValueChanged<HomeLayout>? onDraftChanged;
  final ThemeData? previewTheme;
  final bool? showSpotlight;
  final bool? posterDetails;
  final bool? episodeThumbnails;
  @override
  State<StudioPreferencesScreen> createState() => _StudioPreferencesScreenState();
}

class _StudioPreferencesScreenState extends State<StudioPreferencesScreen> {
  HomeLayout? _draft;
  HomeLayout? _optimistic;
  int _pending = 0;

  @override
  void initState() {
    super.initState();
    _draft = widget.draft;
  }

  List<StudioBrand> _ordered(HomeLayout layout) {
    final positions = {for (final (index, key) in layout.studioOrder.indexed) key: index};
    final ordered = studioBrands.indexed.toList()
      ..sort((a, b) {
        final compare = (positions[a.$2.key] ?? positions.length).compareTo(positions[b.$2.key] ?? positions.length);
        return compare == 0 ? a.$1.compareTo(b.$1) : compare;
      });
    return ordered.map((entry) => entry.$2).toList();
  }

  HomeLayout _current(HomeLayoutProvider provider) => _draft ?? _optimistic ?? provider.layout;

  void _update(HomeLayout next, HomeLayoutProvider provider) {
    if (_draft != null) {
      setState(() => _draft = next);
      widget.onDraftChanged?.call(next);
      return;
    }
    // Keep rapid switches responsive while the profile-owned write queue
    // persists each snapshot in order. Intermediate notifications must not
    // roll the visible selection back over later taps.
    setState(() {
      _optimistic = next;
      _pending++;
    });
    provider
        .setStudios(order: next.studioOrder, hidden: next.hiddenStudios)
        .then(
          (_) {},
          onError: (Object _) {
            if (mounted) showErrorDialog(context, t.homeLayout.saveFailed);
          },
        )
        .whenComplete(() {
          if (!mounted) return;
          setState(() {
            _pending--;
            if (_pending == 0) _optimistic = null;
          });
        });
  }

  void _toggle(StudioBrand brand, bool visible, HomeLayoutProvider provider) {
    final layout = _current(provider);
    final hidden = {...layout.hiddenStudios};
    visible ? hidden.remove(brand.key) : hidden.add(brand.key);
    _update(layout.copyWith(hiddenStudios: hidden), provider);
  }

  void _setAll(bool visible, HomeLayoutProvider provider) {
    final layout = _current(provider);
    final hidden = {...layout.hiddenStudios};
    final keys = studioBrands.map((brand) => brand.key);
    visible ? hidden.removeAll(keys) : hidden.addAll(keys);
    _update(layout.copyWith(hiddenStudios: hidden), provider);
  }

  Future<void> _edit(StudioBrand brand, List<StudioBrand> ordered, HomeLayoutProvider provider) async {
    final index = ordered.indexOf(brand);
    final action = await showAdaptiveAppMenu<String>(
      context,
      title: brand.name,
      position: Offset(MediaQuery.sizeOf(context).width / 2, MediaQuery.sizeOf(context).height / 3),
      focusFirstItem: true,
      entries: [
        if (index > 0) AppMenuItem(value: 'up', label: t.homeLayout.moveUp),
        if (index + 1 < ordered.length) AppMenuItem(value: 'down', label: t.homeLayout.moveDown),
      ],
    );
    if (!mounted || action == null) return;
    final layout = _current(provider);
    final keys = _ordered(layout).map((item) => item.key).toList();
    final currentIndex = keys.indexOf(brand.key);
    final target = currentIndex + (action == 'up' ? -1 : 1);
    if (currentIndex < 0 || target < 0 || target >= keys.length) return;
    keys.insert(target, keys.removeAt(currentIndex));
    final order = [...keys, ...layout.studioOrder.where((key) => !keys.contains(key))];
    _update(layout.copyWith(studioOrder: order), provider);
  }

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<HomeLayoutProvider>();
    final layout = _current(provider);
    final brands = _ordered(layout);
    final available = context.watch<StudiosProvider?>()?.groups ?? const <StudioGroup>[];
    final visible = layout.arrangeStudios(available, (group) => group.key);
    final preview = Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(t.studios.title, style: Theme.of(context).textTheme.headlineSmall),
          const SizedBox(height: 20),
          if (visible.isEmpty) Text(t.homeLayout.studioUnavailable),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            children: [
              for (final group in visible)
                StudioCard(
                  key: ValueKey('studio-preview-${group.key}'),
                  item: group.homeItem,
                  width: 200,
                  height: 112,
                  onTap: () {},
                ),
            ],
          ),
        ],
      ),
    );
    return SettingsPage(
      title: Text(t.homeLayout.manageStudios),
      previewHeader: PlatformDetector.isTV()
          ? AspectRatio(
              aspectRatio: 16 / 9,
              child: SettingsPreviewThumbnail(preview: preview),
            )
          : Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(t.studios.title, style: Theme.of(context).textTheme.titleMedium),
                  const SizedBox(height: 8),
                  SizedBox(
                    height: 112,
                    child: ListView(
                      key: const ValueKey('studio-order-preview'),
                      scrollDirection: Axis.horizontal,
                      children: [
                        for (final brand in brands.where((brand) => !layout.hiddenStudios.contains(brand.key)))
                          StudioCard(
                            key: ValueKey('studio-preview-${brand.key}'),
                            item: MediaItem(
                              id: brand.key,
                              backend: MediaBackend.plex,
                              kind: MediaKind.collection,
                              title: brand.name,
                              raw: {'customStudio': brand.key},
                            ),
                            width: 172,
                            height: 100,
                            onTap: () {},
                          ),
                        if (brands.every((brand) => layout.hiddenStudios.contains(brand.key)))
                          Center(child: Text(t.homeLayout.hideAllStudios)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
      children: [
        Padding(padding: const EdgeInsets.all(16), child: Text(t.homeLayout.studioUnavailable)),
        Row(
          children: [
            Expanded(
              child: FocusableListTile(
                key: const ValueKey('studio-show-all'),
                leading: const Icon(Icons.visibility_outlined),
                title: Text(t.homeLayout.showAllStudios),
                onTap: () => _setAll(true, provider),
              ),
            ),
            Expanded(
              child: FocusableListTile(
                key: const ValueKey('studio-hide-all'),
                leading: const Icon(Icons.visibility_off_outlined),
                title: Text(t.homeLayout.hideAllStudios),
                onTap: () => _setAll(false, provider),
              ),
            ),
          ],
        ),
        for (final brand in brands)
          Row(
            children: [
              Expanded(
                child: FocusableSwitchListTile(
                  key: ValueKey('studio-pref-${brand.key}'),
                  title: Text(brand.name),
                  value: !layout.hiddenStudios.contains(brand.key),
                  onChanged: (visible) => _toggle(brand, visible, provider),
                ),
              ),
              FocusableButton(
                onPressed: () => _edit(brand, brands, provider),
                child: IconButton(
                  key: ValueKey('studio-reorder-${brand.key}'),
                  tooltip: '${t.homeLayout.reorderStudio}: ${brand.name}',
                  onPressed: () => _edit(brand, brands, provider),
                  icon: const Icon(Icons.swap_vert_rounded),
                ),
              ),
              const SizedBox(width: 8),
            ],
          ),
      ],
    );
  }
}
