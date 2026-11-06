import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../media/library_cover.dart';
import '../media/media_library.dart';
import '../media/media_server_client.dart';
import '../profiles/active_profile_provider.dart';
import '../services/library_cover_service.dart';
import '../services/storage_service.dart';
import '../utils/content_utils.dart';
import '../utils/media_image_helper.dart';
import 'optimized_media_image.dart';

/// Stable accents identify arbitrary library names without guessing categories.
Color libraryCoverColor(String key) {
  var hash = 2166136261;
  for (final unit in key.codeUnits) {
    hash = ((hash ^ unit) * 16777619) & 0xffffffff;
  }
  const colors = [0xff658fd4, 0xff5aafa5, 0xffa583c5, 0xffd59979, 0xff728dc3, 0xffbc83a0, 0xff8eac7c, 0xffaa996d];
  return Color(colors[hash % colors.length]);
}

/// Server covers take precedence; failed/missing covers use a stable collage,
/// and empty libraries still get an intentional, local piece of category art.
class LibraryCoverArtwork extends StatelessWidget {
  const LibraryCoverArtwork({super.key, required this.library, required this.client, this.covers});
  final MediaLibrary library;
  final MediaServerClient? client;
  final LibraryCoverService? covers;

  @override
  Widget build(BuildContext context) {
    Widget generated() => _GeneratedLibraryCover(library: library, client: client, covers: covers);
    if (library.imagePath?.isNotEmpty != true || client == null) return generated();
    return OptimizedMediaImage(
      client: client,
      imagePath: library.imagePath,
      imageType: ImageType.art,
      fit: BoxFit.cover,
      placeholder: (_, _) => _CoverBackdrop(library: library),
      errorWidget: (_, _, _) => generated(),
    );
  }
}

class _GeneratedLibraryCover extends StatefulWidget {
  const _GeneratedLibraryCover({required this.library, required this.client, this.covers});
  final MediaLibrary library;
  final MediaServerClient? client;
  final LibraryCoverService? covers;
  @override
  State<_GeneratedLibraryCover> createState() => _GeneratedLibraryCoverState();
}

class _GeneratedLibraryCoverState extends State<_GeneratedLibraryCover> {
  LibraryCoverService? _covers;
  bool _ownsService = false;
  Future<LibraryCoverRecipe>? _recipe;
  Timer? _dwell;
  bool _retried = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _ensureService();
  }

  void _ensureService() {
    if (_covers != null || widget.client == null) return;
    _covers = widget.covers ?? context.read<LibraryCoverService?>();
    if (_covers == null) {
      _ownsService = true;
      _covers = LibraryCoverService(
        profileId: context.read<ActiveProfileProvider?>()?.activeId,
        storage: StorageService.getInstance(),
      );
    }
    _load();
  }

  @override
  void didUpdateWidget(_GeneratedLibraryCover oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.library.globalKey != widget.library.globalKey || !identical(oldWidget.client, widget.client)) {
      _recipe = null;
      _retried = false;
      _ensureService();
      _load();
    }
  }

  void _load({bool refresh = false}) {
    _dwell?.cancel();
    if (widget.client == null || _covers == null) return;
    // Quick remote sweeps should not fetch a page for every library passed.
    _dwell = Timer(const Duration(milliseconds: 180), () {
      if (!mounted) return;
      setState(() => _recipe = _covers!.load(widget.library, widget.client!, refresh: refresh));
    });
  }

  void _artworkFailed() {
    if (_retried) return;
    _retried = true;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) _load(refresh: true);
    });
  }

  @override
  void dispose() {
    _dwell?.cancel();
    if (_ownsService) _covers?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => FutureBuilder<LibraryCoverRecipe>(
    future: _recipe,
    builder: (context, snapshot) {
      final images = snapshot.data?.images ?? const <LibraryCoverImage>[];
      return _CoverBackdrop(
        library: widget.library,
        child: images.isEmpty
            ? null
            : LayoutBuilder(
                builder: (context, bounds) {
                  final width = bounds.maxWidth;
                  final height = bounds.maxHeight;
                  final single = images.length == 1;
                  final cardHeight = height * (single ? 0.86 : 0.90);
                  final cardWidth = single
                      ? math.min(width * 0.84, cardHeight * images.first.aspectRatio)
                      : math.min(height * 0.62, width * (images.length == 2 ? 0.44 : 0.36));
                  final span = width - cardWidth - width * 0.12;
                  return Stack(
                    clipBehavior: Clip.hardEdge,
                    children: [
                      for (final (index, image) in images.indexed)
                        Positioned(
                          left: single ? (width - cardWidth) / 2 : width * 0.06 + span * index / (images.length - 1),
                          top:
                              (height - math.min(cardHeight, cardWidth / image.aspectRatio)) / 2 +
                              (index.isEven ? 0 : height * 0.04),
                          width: cardWidth,
                          height: math.min(cardHeight, cardWidth / image.aspectRatio),
                          child: Transform.rotate(
                            angle: single ? -0.035 : (index - (images.length - 1) / 2) * 0.055,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                boxShadow: const [
                                  BoxShadow(color: Color(0x50000000), blurRadius: 10, offset: Offset(0, 5)),
                                ],
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(7),
                                child: OptimizedMediaImage(
                                  client: widget.client,
                                  imagePath: image.path,
                                  fit: BoxFit.cover,
                                  imageType: image.poster
                                      ? ImageType.poster
                                      : image.aspectRatio == 1
                                      ? ImageType.square
                                      : ImageType.art,
                                  placeholder: (_, _) => ColoredBox(
                                    color: libraryCoverColor(widget.library.globalKey).withValues(alpha: 0.3),
                                  ),
                                  errorWidget: (_, _, _) {
                                    _artworkFailed();
                                    return ColoredBox(
                                      color: libraryCoverColor(widget.library.globalKey).withValues(alpha: 0.3),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                    ],
                  );
                },
              ),
      );
    },
  );
}

class _CoverBackdrop extends StatelessWidget {
  const _CoverBackdrop({required this.library, this.child});
  final MediaLibrary library;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final accent = libraryCoverColor(library.globalKey);
    final icon = ContentTypeHelper.getLibraryIcon(library.kind.id);
    return ExcludeSemantics(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color.alphaBlend(accent.withValues(alpha: 0.5), const Color(0xff152037)), const Color(0xff10182a)],
          ),
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            if (child == null)
              Center(
                child: Transform.rotate(
                  angle: -0.08,
                  child: Container(
                    width: 116,
                    height: 78,
                    decoration: BoxDecoration(
                      border: Border.all(color: accent.withValues(alpha: 0.36), width: 2),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Icon(icon, size: 42, color: Colors.white.withValues(alpha: 0.82)),
                  ),
                ),
              ),
            ?child,
            Positioned(
              left: 10,
              top: 10,
              child: Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(color: const Color(0xA010182A), borderRadius: BorderRadius.circular(9)),
                child: Icon(icon, size: 16, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
