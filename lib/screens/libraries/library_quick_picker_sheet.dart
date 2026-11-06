import 'dart:async';

import 'package:flutter/material.dart';

import '../../i18n/strings.g.dart';
import '../../media/ids.dart';
import '../../media/media_library.dart';
import '../../utils/content_utils.dart';
import '../../utils/provider_extensions.dart';
import '../../widgets/library_choice_grid.dart';
import '../../widgets/library_cover_artwork.dart';
import '../../widgets/library_selection_panel.dart';
import '../../widgets/overlay_sheet.dart';
import 'library_server_label.dart';
import '../../utils/server_label_policy.dart';

class LibraryQuickPickerSheet extends StatelessWidget {
  const LibraryQuickPickerSheet({
    super.key,
    required this.libraries,
    required this.selectedLibraryKey,
    required this.isLoading,
    required this.groupByServer,
    required this.emptyMessage,
    required this.onSelected,
  });

  final List<MediaLibrary> libraries;
  final String? selectedLibraryKey;
  final bool isLoading;
  final bool groupByServer;
  final String emptyMessage;
  final ValueChanged<String> onSelected;

  @override
  Widget build(BuildContext context) {
    final multipleServers = librariesSpanMultipleServers(libraries);
    final byKey = {for (final library in libraries) library.globalKey: library};
    final choices = buildLibraryServerEntries<LibraryChoice?>(
      libraries,
      groupByServer: groupByServer,
      buildHeader: (_, _) => null,
      buildItem: (library, {required bool showServerName}) => LibraryChoice(
        id: library.globalKey,
        title: library.title,
        icon: ContentTypeHelper.getLibraryIcon(library.kind.id),
        accent: libraryCoverColor(library.globalKey),
        selected: library.globalKey == selectedLibraryKey,
        subtitle: showServerName ? library.serverName : null,
        groupLabel: groupByServer && multipleServers ? library.serverName ?? library.serverId : null,
        onSelected: () => onSelected(library.globalKey),
      ),
    ).whereType<LibraryChoice>().toList();
    return LibrarySelectionPanel(
      title: t.libraries.selectLibrary,
      subtitle: !multipleServers && showServerLabels(context) ? libraries.firstOrNull?.serverName : null,
      choices: choices,
      loading: isLoading,
      emptyMessage: emptyMessage,
      rowKeyPrefix: 'library_quick_picker_',
      onClose: () {
        final controller = OverlaySheetController.maybeOf(context);
        if (controller != null) {
          controller.close();
        } else {
          unawaited(Navigator.of(context).maybePop());
        }
      },
      previewBuilder: (context, choice) {
        final library = byKey[choice.id]!;
        final id = library.serverId;
        final client = context.tryGetMediaClientForServer(id == null ? null : ServerId(id));
        return LibrarySelectionPreview(
          title: library.title,
          artwork: LibraryCoverArtwork(library: library, client: client),
        );
      },
    );
  }
}
