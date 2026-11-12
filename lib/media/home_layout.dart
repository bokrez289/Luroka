import 'dart:convert';

import 'media_hub.dart';
import 'media_item.dart';
import 'home_progress.dart';
import 'media_kind.dart';

const homeContinueWatchingId = 'continue_watching';
const homeNextUpId = 'home.nextup';
const homePinnedCollectionsId = 'custom_pinned_collections';
const homeStudiosId = 'custom_studios';

enum HomeSpotlightSource { forYou, trending, continueWatching }

/// Includes library identity: split hubs from two libraries may share an identifier.
String homeRowKey(MediaHub hub) => jsonEncode([hub.serverId, hub.libraryId, hub.identifier ?? hub.id]);

String get homeContinueWatchingKey =>
    homeRowKey(const MediaHub(id: homeContinueWatchingId, title: '', type: 'mixed', items: []));
String get homeNextUpKey => homeRowKey(const MediaHub(id: homeNextUpId, title: '', type: 'mixed', items: []));

/// Seasonal recommendation shelves are optional by default, while ordinary
/// server recommendations and recently-added shelves remain visible.
bool isSeasonalHomeRow(MediaHub hub) {
  final text = '${hub.title} ${hub.identifier ?? ''}'.replaceAll(RegExp(r'[._/\-]'), ' ');
  return RegExp(
        r'\b(christmas|xmas|halloween|thanksgiving|holiday|holidays|valentine|easter|new year)\b',
        caseSensitive: false,
      ).hasMatch(text) ||
      RegExp(r'\boh\s*[,!–-]?\s*the\s+horror\b', caseSensitive: false).hasMatch(text);
}

List<MediaHub> buildHomeRows({
  required List<MediaHub> hubs,
  required List<MediaItem> onDeck,
  required List<MediaItem> pins,
  required String continueWatchingTitle,
  required String pinnedTitle,
  List<MediaItem> studios = const [],
  String studiosTitle = 'Studios',
  bool hasMoreContinueWatching = false,
  bool splitContinueWatching = false,
  bool hasMoreNextUp = false,
  String nextUpTitle = 'Next Up',
  bool includeEmpty = false,
}) {
  final resume = splitContinueWatching ? onDeck.where((item) => !isHomeNextUp(item)).toList() : onDeck;
  final nextUp = splitContinueWatching ? onDeck.where(isHomeNextUp).toList() : const <MediaItem>[];
  return [
    if (includeEmpty || resume.isNotEmpty)
      MediaHub(
        id: homeContinueWatchingId,
        title: continueWatchingTitle,
        type: 'mixed',
        items: resume,
        size: resume.length + (hasMoreContinueWatching ? 1 : 0),
        more: hasMoreContinueWatching,
      ),
    if (splitContinueWatching && (includeEmpty || nextUp.isNotEmpty))
      MediaHub(
        id: homeNextUpId,
        title: nextUpTitle,
        type: 'mixed',
        items: nextUp,
        size: nextUp.length + (hasMoreNextUp ? 1 : 0),
        more: hasMoreNextUp,
      ),
    if (includeEmpty || pins.isNotEmpty)
      MediaHub(id: homePinnedCollectionsId, title: pinnedTitle, type: 'collection', items: pins, size: pins.length),
    if (includeEmpty || studios.isNotEmpty)
      MediaHub(id: homeStudiosId, title: studiosTitle, type: 'studio', items: studios, size: studios.length),
    ...hubs.where((hub) => includeEmpty || hub.items.isNotEmpty),
  ];
}

/// Local presentation preferences, independent of upstream's fetch/watch state.
class HomeLayout {
  HomeLayout({
    Iterable<String> order = const [],
    Iterable<String> hidden = const [],
    Iterable<String> shown = const [],
    Iterable<MediaItem> pins = const [],
    this.splitContinueWatching = false,
    this.spotlightSource = HomeSpotlightSource.trending,
    Iterable<String> studioOrder = const [],
    Iterable<String> hiddenStudios = const [],
  }) : order = List.unmodifiable(order.toSet()),
       hidden = Set.unmodifiable(hidden),
       shown = Set.unmodifiable(shown),
       pins = List.unmodifiable(pins),
       studioOrder = List.unmodifiable(studioOrder.toSet()),
       hiddenStudios = Set.unmodifiable(hiddenStudios);

  final List<String> order;
  final Set<String> hidden;
  final Set<String> shown;
  final List<MediaItem> pins;
  final bool splitContinueWatching;
  final HomeSpotlightSource spotlightSource;
  final List<String> studioOrder;
  final Set<String> hiddenStudios;

  HomeLayout copyWith({
    Iterable<String>? order,
    Iterable<String>? hidden,
    Iterable<String>? shown,
    Iterable<MediaItem>? pins,
    bool? splitContinueWatching,
    HomeSpotlightSource? spotlightSource,
    Iterable<String>? studioOrder,
    Iterable<String>? hiddenStudios,
  }) => HomeLayout(
    order: order ?? this.order,
    hidden: hidden ?? this.hidden,
    shown: shown ?? this.shown,
    pins: pins ?? this.pins,
    splitContinueWatching: splitContinueWatching ?? this.splitContinueWatching,
    spotlightSource: spotlightSource ?? this.spotlightSource,
    studioOrder: studioOrder ?? this.studioOrder,
    hiddenStudios: hiddenStudios ?? this.hiddenStudios,
  );

  bool isHidden(MediaHub hub) =>
      hidden.contains(homeRowKey(hub)) || (isSeasonalHomeRow(hub) && !shown.contains(homeRowKey(hub)));

  List<T> arrangeStudios<T>(Iterable<T> studios, String Function(T) keyOf) {
    final positions = {for (final (index, key) in studioOrder.indexed) key: index};
    final indexed = studios.indexed.where((entry) => !hiddenStudios.contains(keyOf(entry.$2))).toList();
    indexed.sort((a, b) {
      final comparison = (positions[keyOf(a.$2)] ?? studioOrder.length).compareTo(
        positions[keyOf(b.$2)] ?? studioOrder.length,
      );
      return comparison == 0 ? a.$1.compareTo(b.$1) : comparison;
    });
    return [for (final entry in indexed) entry.$2];
  }

  List<MediaHub> arrange(List<MediaHub> rows, {bool includeHidden = false}) {
    final positions = {for (final (index, key) in order.indexed) key: index};
    final indexed = rows.indexed.where((entry) => includeHidden || !isHidden(entry.$2)).toList();
    indexed.sort((a, b) {
      final comparison = (positions[homeRowKey(a.$2)] ?? order.length).compareTo(
        positions[homeRowKey(b.$2)] ?? order.length,
      );
      return comparison == 0 ? a.$1.compareTo(b.$1) : comparison;
    });
    return List.unmodifiable(indexed.map((entry) => entry.$2));
  }

  Map<String, dynamic> toJson() => {
    'version': 2,
    'order': order,
    'hidden': hidden.toList(),
    'shown': shown.toList(),
    'splitContinueWatching': splitContinueWatching,
    'spotlightSource': spotlightSource.name,
    'studioOrder': studioOrder,
    'hiddenStudios': hiddenStudios.toList(),
    // Only display/navigation metadata; never retain raw server responses.
    'pins': [for (final pin in pins) _pinSnapshot(pin).toJson()],
  };

  factory HomeLayout.fromJson(Map<String, dynamic> json) {
    Iterable<String> strings(Object? value) =>
        value is List ? value.whereType<String>().where((s) => s.isNotEmpty) : [];
    final pins = <MediaItem>[];
    final seen = <String>{};
    if (json['pins'] case final List entries) {
      for (final entry in entries) {
        if (entry is! Map<String, dynamic>) continue;
        try {
          final item = MediaItem.fromJson(entry);
          if (item.kind == MediaKind.collection &&
              item.id.isNotEmpty &&
              item.serverId?.isNotEmpty == true &&
              seen.add(item.globalKey)) {
            pins.add(_pinSnapshot(item));
          }
        } catch (_) {
          // A malformed pin must not discard other valid preferences.
        }
      }
    }
    return HomeLayout(
      order: strings(json['order']),
      hidden: strings(json['hidden']),
      shown: strings(json['shown']),
      pins: pins,
      splitContinueWatching: json['splitContinueWatching'] == true,
      spotlightSource:
          HomeSpotlightSource.values.where((value) => value.name == json['spotlightSource']).firstOrNull ??
          HomeSpotlightSource.trending,
      studioOrder: strings(json['studioOrder']),
      hiddenStudios: strings(json['hiddenStudios']),
    );
  }

  static MediaItem _pinSnapshot(MediaItem item) => MediaItem(
    id: item.id,
    backend: item.backend,
    kind: MediaKind.collection,
    title: item.title,
    thumbPath: item.thumbPath,
    artPath: item.artPath,
    libraryId: item.libraryId,
    libraryTitle: item.libraryTitle,
    serverId: item.serverId,
    serverName: item.serverName,
  );
}
