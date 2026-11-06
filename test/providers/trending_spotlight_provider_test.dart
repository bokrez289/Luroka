import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/media/media_item.dart';
import 'package:luroka/media/media_kind.dart';
import 'package:luroka/models/catalog/catalog_item.dart';
import 'package:luroka/providers/catalog_sources_provider.dart';
import 'package:luroka/providers/hidden_libraries_provider.dart';
import 'package:luroka/providers/multi_server_provider.dart';
import 'package:luroka/providers/trending_spotlight_provider.dart';
import 'package:luroka/services/catalog/catalog_library_matcher.dart';
import 'package:luroka/services/catalog/catalog_source.dart';

class _Source extends Fake implements CatalogSource {
  @override
  Future<CatalogPage> fetchRow(CatalogRowId row, {int page = 1, int limit = 25}) async => CatalogPage(
    items: [
      CatalogItem(
        source: CatalogSourceId.tmdb,
        kind: MediaKind.movie,
        title: 'Movie',
        year: 2026,
        ids: const CatalogItemIds(tmdb: 42),
      ),
    ],
    hasMore: false,
  );
}

class _Sources extends ChangeNotifier implements CatalogSourcesProvider {
  @override
  CatalogSource? discoverySource = _Source();

  void clearSource() {
    discoverySource = null;
    notifyListeners();
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class _Servers extends ChangeNotifier implements MultiServerProvider {
  @override
  List<String> get onlineServerIds => ['server'];
  @override
  void addOnlineServersListener(void Function(Set<String>) listener) {}
  @override
  void removeOnlineServersListener(void Function(Set<String>) listener) {}
  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class _Hidden extends ChangeNotifier implements HiddenLibrariesProvider {
  @override
  Future<void> ensureInitialized() async {}
  @override
  bool allowsItem(MediaItem item) => item.libraryId == 'selected';
  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class _NoNetworkMatcher extends Fake implements CatalogLibraryMatcher {}

void main() {
  test('Home Spotlight uses fetched library rows without reverse-searching servers', () async {
    final sources = _Sources();
    final servers = _Servers();
    final hidden = _Hidden();
    final provider = TrendingSpotlightProvider(sources, _NoNetworkMatcher(), servers, hidden);
    addTearDown(() {
      provider.dispose();
      sources.dispose();
      servers.dispose();
      hidden.dispose();
    });
    provider.ensureFresh();
    for (var i = 0; i < 10 && provider.loading; i++) {
      await Future<void>.delayed(Duration.zero);
    }
    expect(provider.items, isEmpty);
    const selected = MediaItem.plex(
      id: 'owned',
      kind: MediaKind.movie,
      title: 'Movie',
      year: 2026,
      serverId: 'server',
      libraryId: 'selected',
    );
    provider.updateLibraryItems([selected, selected.copyWith(id: 'unselected', libraryId: 'other')]);
    expect(provider.items.map((item) => item.id), ['owned']);
    provider.updateLibraryItems([selected.copyWith(serverId: 'offline')]);
    expect(provider.items, isEmpty);

    provider.updateLibraryItems([
      selected.copyWith(
        raw: {
          'ProviderIds': {'Tmdb': '99'},
        },
      ),
    ]);
    expect(provider.items, isEmpty, reason: 'A matching title cannot override conflicting provider IDs');

    provider.updateLibraryItems([
      selected.copyWith(
        title: 'Localized title',
        raw: {
          'ProviderIds': {'Tmdb': '42'},
        },
      ),
    ]);
    expect(provider.items.single.title, 'Localized title');

    sources.clearSource();
    provider.updateLibraryItems([selected]);
    expect(provider.items, isEmpty, reason: 'Rows must not rematch candidates from a removed catalog source');
  });
}
