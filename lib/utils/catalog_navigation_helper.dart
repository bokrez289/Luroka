import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/catalog/catalog_item.dart';
import '../media/media_item.dart';
import '../screens/catalog_item_detail_screen.dart';
import '../screens/media_detail_screen.dart';
import '../services/catalog/catalog_library_matcher.dart';
import '../services/data_aggregation_service.dart';
import '../services/kids_profile_service.dart';
import 'platform_detector.dart';

final _pendingNavigations = Expando<Object>('catalog navigation');

@visibleForTesting
MediaItem? singleResolvedCatalogCopy(CatalogItem item, LibraryLookupResult result) {
  if (item.season != null ||
      result.items.length != 1 ||
      result.failedServerIds.isNotEmpty ||
      result.cancelledServerIds.isNotEmpty ||
      result.unqueriedServerIds.isNotEmpty) {
    return null;
  }
  return result.items.single;
}

/// Open the normal detail page for one verified, fully resolved library copy.
/// Multiple or uncertain matches stay on catalog details, which can show all
/// sources and resolve richer identifiers without silently choosing a copy.
Future<void> navigateToCatalogItem(BuildContext context, CatalogItem item) async {
  if (KidsProfileService.instance.isActiveKids) return;
  final navigator = Navigator.of(context);
  if (_pendingNavigations[navigator] != null) return;
  final token = Object();
  _pendingNavigations[navigator] = token;
  final origin = ModalRoute.of(context);
  try {
    final matcher = context.read<CatalogLibraryMatcher?>();
    if (matcher != null && item.season == null) {
      try {
        final requests = await Future.wait([
          matcher.match(item),
          if (PlatformDetector.isTV()) matcher.matchOtherSources(item),
        ]).timeout(const Duration(milliseconds: 900));
        final result = requests.first;
        if (!context.mounted || (origin != null && !origin.isCurrent)) return;
        if (PlatformDetector.isTV()) {
          final all = requests.last;
          final copies = <String, MediaItem>{
            for (final copy in [...result.items, ...all.items]) copy.globalKey: copy,
          };
          if (copies.isNotEmpty &&
              all.failedServerIds.isEmpty &&
              all.cancelledServerIds.isEmpty &&
              all.unqueriedServerIds.isEmpty) {
            _pendingNavigations[navigator] = null;
            await navigator.push(
              mediaDetailRoute(
                metadata: result.items.firstOrNull ?? copies.values.first,
                showLibrarySource: true,
                catalogCopies: copies.values.toList(),
                catalogPreviewOnly: copies.length > 1 || result.items.isEmpty,
              ),
            );
            return;
          }
        }
        final copy = singleResolvedCatalogCopy(item, result);
        if (copy != null) {
          _pendingNavigations[navigator] = null;
          await navigator.push(mediaDetailRoute(metadata: copy, showLibrarySource: true));
          return;
        }
      } on TimeoutException {
        // The catalog page joins the in-flight matcher and can paint at once.
      } catch (_) {
        // Catalog details retain the normal retry and unavailable states.
      }
    }
    if (!context.mounted || (origin != null && !origin.isCurrent)) return;
    _pendingNavigations[navigator] = null;
    await navigator.push(
      MaterialPageRoute(builder: (_) => CatalogItemDetailScreen(item: item, showOtherSources: true)),
    );
  } finally {
    if (identical(_pendingNavigations[navigator], token)) _pendingNavigations[navigator] = null;
  }
}
