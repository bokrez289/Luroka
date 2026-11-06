import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show ValueListenable;

import '../i18n/strings.g.dart';
import '../media/ids.dart';
import '../media/media_item.dart';
import '../utils/content_utils.dart';
import '../utils/formatters.dart';
import '../utils/media_image_helper.dart';
import '../utils/media_quality_labels.dart';
import '../utils/provider_extensions.dart';
import '../utils/server_label_policy.dart';
import 'library_choice_grid.dart';
import 'library_selection_panel.dart';
import 'optimized_media_image.dart';
import 'package:provider/provider.dart';
import '../providers/hidden_libraries_provider.dart';

class MovieCopySearchState {
  const MovieCopySearchState({required this.copies, this.searching = false, this.incomplete = false});
  final List<MediaItem> copies;
  final bool searching;
  final bool incomplete;
}

/// Returns the exact movie/show library item, including its own resume state.
Future<MediaItem?> chooseMovieCopy(
  BuildContext context,
  List<MediaItem> copies, {
  bool includeUnselectedSources = false,
}) async {
  final state = ValueNotifier(MovieCopySearchState(copies: copies));
  try {
    return await chooseProgressiveMovieCopy(context, state, includeUnselectedSources: includeUnselectedSources);
  } finally {
    state.dispose();
  }
}

/// Lets the viewer choose a known copy while other libraries are still being
/// checked. The dialog stays open and retains focus as further copies arrive.
/// [openSingleImmediately] uses the copies known when called, even if the
/// lookup is still running or some sources could not be checked.
Future<MediaItem?> chooseProgressiveMovieCopy(
  BuildContext context,
  ValueListenable<MovieCopySearchState> state, {
  bool includeUnselectedSources = false,
  bool openSingleImmediately = false,
}) async {
  final initial = state.value;
  final sources = context.read<HiddenLibrariesProvider?>();
  await sources?.ensureInitialized();
  if (!context.mounted) return null;
  List<MediaItem> visible(MovieCopySearchState current) => {
    for (final copy in current.copies)
      if (includeUnselectedSources || (sources?.allowsItem(copy) ?? true)) copy.globalKey: copy,
  }.values.toList();
  final unique = visible(openSingleImmediately ? initial : state.value);
  if (unique.isEmpty) return null;
  if (unique.length == 1 && (openSingleImmediately || (!state.value.searching && !state.value.incomplete))) {
    return unique.single;
  }
  return showDialog<MediaItem>(
    context: context,
    useRootNavigator: false,
    builder: (dialogContext) => ValueListenableBuilder<MovieCopySearchState>(
      valueListenable: state,
      builder: (dialogContent, current, _) {
        final unique = visible(current);
        final multipleServers = unique.map((item) => item.serverId ?? item.serverName).toSet().length > 1;
        final sharedServer = !multipleServers && unique.isNotEmpty && showServerLabels(context, listen: false)
            ? unique.first.serverName
            : null;
        final byKey = {for (final copy in unique) copy.globalKey: copy};
        return Dialog(
          insetPadding: const EdgeInsets.all(24),
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 880, maxHeight: MediaQuery.sizeOf(dialogContext).height * 0.84),
            child: LibrarySelectionPanel(
              title: t.libraries.selectLibrary,
              subtitle: [
                if (sharedServer?.isNotEmpty == true) sharedServer!,
                if (current.searching)
                  t.studios.checkingCopies
                else if (current.incomplete)
                  t.studios.incompleteCopies
                else
                  t.lurokaDiscovery.chooseCopyHint,
              ].join(' · '),
              loading: current.searching,
              onClose: () => Navigator.pop(dialogContext),
              choices: [
                for (final item in unique)
                  LibraryChoice(
                    id: item.globalKey,
                    title: item.libraryTitle ?? item.libraryId ?? item.serverName ?? t.libraries.selectLibrary,
                    icon: ContentTypeHelper.getLibraryIcon(item.kind.id),
                    subtitle: [
                      if (multipleServers && item.serverName?.isNotEmpty == true) item.serverName!,
                      if (item.editionTitle?.isNotEmpty == true) item.editionTitle!,
                      if ((item.mediaVersions?.length ?? 0) > 1)
                        item.mediaVersions!.map((version) => version.displayLabel).toSet().join(' / ')
                      else
                        ...buildMediaQualityLabels(item),
                    ].join(' · '),
                    detail: item.hasActiveProgress
                        ? '${t.common.resume} · ${formatDurationTextual(item.viewOffsetMs!)}'
                        : null,
                    onSelected: () => Navigator.pop(dialogContext, item),
                  ),
              ],
              previewBuilder: (previewContext, choice) {
                final copy = byKey[choice.id]!;
                final artwork = copy.artPath != null || copy.thumbPath != null
                    ? copy
                    : unique.where((item) => item.artPath != null || item.thumbPath != null).firstOrNull ?? copy;
                final client = context.tryGetMediaClientForServer(
                  artwork.serverId == null ? null : ServerId(artwork.serverId!),
                );
                final colors = Theme.of(previewContext).colorScheme;
                return LibrarySelectionPreview(
                  title: copy.displayTitle,
                  subtitle: [
                    if (copy.year != null) '${copy.year}',
                    if ((copy.durationMs ?? 0) > 0) formatDurationTextual(copy.durationMs!),
                  ].join(' · '),
                  artwork: ColoredBox(
                    color: colors.surfaceContainerHighest,
                    child: artwork.artPath == null && artwork.thumbPath == null
                        ? Center(
                            child: Icon(
                              ContentTypeHelper.getLibraryIcon(copy.kind.id),
                              size: 56,
                              color: colors.primary.withValues(alpha: 0.6),
                            ),
                          )
                        : OptimizedMediaImage(
                            client: client,
                            imagePath: artwork.artPath ?? artwork.thumbPath,
                            imageType: artwork.artPath == null ? ImageType.poster : ImageType.art,
                            fit: artwork.artPath == null ? BoxFit.contain : BoxFit.cover,
                          ),
                  ),
                );
              },
            ),
          ),
        );
      },
    ),
  );
}
