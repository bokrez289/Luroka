import 'package:flutter/material.dart';
import '../../i18n/strings.g.dart';
import '../../media/ids.dart';
import '../../media/media_library.dart';
import '../../utils/content_utils.dart';
import '../../utils/provider_extensions.dart';
import '../../widgets/library_cover_artwork.dart';

class MobileLibraryPicker extends StatefulWidget {
  const MobileLibraryPicker({super.key, required this.libraries, required this.selectedKey});
  final List<MediaLibrary> libraries;
  final String? selectedKey;
  @override
  State<MobileLibraryPicker> createState() => _MobileLibraryPickerState();
}

class _MobileLibraryPickerState extends State<MobileLibraryPicker> {
  String _query = '';
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final filtered = widget.libraries.where((library) => library.title.toLowerCase().contains(_query)).toList();
    final multipleServers = widget.libraries.map((lib) => lib.serverId).toSet().length > 1;
    return SafeArea(
      top: false,
      child: Padding(
        padding: EdgeInsets.only(bottom: MediaQuery.viewInsetsOf(context).bottom),
        child: SizedBox(
          height: (MediaQuery.sizeOf(context).height * 0.76 - MediaQuery.viewInsetsOf(context).bottom).clamp(
            120.0,
            double.infinity,
          ),
          child: Column(
            children: [
              Container(
                width: 38,
                height: 4,
                margin: const EdgeInsets.only(top: 10, bottom: 12),
                decoration: BoxDecoration(
                  color: colors.onSurfaceVariant.withValues(alpha: 0.4),
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            t.libraries.selectLibrary,
                            style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w800),
                          ),
                          Text(
                            t.mobileLibrary.pickerSubtitle,
                            style: Theme.of(context).textTheme.bodySmall?.copyWith(color: colors.onSurfaceVariant),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      tooltip: t.common.close,
                      icon: const Icon(Icons.close_rounded),
                    ),
                  ],
                ),
              ),
              if (widget.libraries.length > 6)
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 14, 20, 6),
                  child: TextField(
                    onChanged: (value) => setState(() => _query = value.trim().toLowerCase()),
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search_rounded),
                      labelText: t.mobileLibrary.searchLibraries,
                      filled: true,
                      fillColor: colors.onSurface.withValues(alpha: 0.04),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: BorderSide.none),
                    ),
                  ),
                ),
              Expanded(
                child: filtered.isEmpty
                    ? Center(child: Text(t.mobileLibrary.noLibraries))
                    : GridView.builder(
                        padding: const EdgeInsets.fromLTRB(16, 14, 16, 24),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: MediaQuery.sizeOf(context).width >= 600 ? 3 : 2,
                          childAspectRatio: 1.35,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                        ),
                        itemCount: filtered.length,
                        itemBuilder: (context, index) {
                          final library = filtered[index];
                          final selected = library.globalKey == widget.selectedKey;
                          final client = context.tryGetMediaClientForServer(
                            library.serverId == null ? null : ServerId(library.serverId!),
                          );
                          return Semantics(
                            button: true,
                            selected: selected,
                            label: library.title,
                            excludeSemantics: true,
                            onTap: () => Navigator.pop(context, library.globalKey),
                            child: Material(
                              color: colors.surfaceContainerHigh,
                              borderRadius: BorderRadius.circular(18),
                              clipBehavior: Clip.antiAlias,
                              child: InkWell(
                                key: ValueKey('mobile_library_${library.globalKey}'),
                                onTap: () => Navigator.pop(context, library.globalKey),
                                child: Stack(
                                  fit: StackFit.expand,
                                  children: [
                                    Opacity(
                                      opacity: 0.4,
                                      child: LibraryCoverArtwork(library: library, client: client),
                                    ),
                                    const DecoratedBox(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [Color(0x22000000), Color(0xe9000000)],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 12,
                                      top: 12,
                                      child: Icon(
                                        ContentTypeHelper.getLibraryIcon(library.kind.id),
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                    ),
                                    if (selected)
                                      Positioned(
                                        right: 10,
                                        top: 10,
                                        child: Icon(Icons.check_circle_rounded, color: colors.primary),
                                      ),
                                    Positioned(
                                      left: 12,
                                      right: 12,
                                      bottom: 12,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            library.title,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w800,
                                              fontSize: 16,
                                            ),
                                          ),
                                          if (multipleServers && library.serverName != null)
                                            Text(
                                              library.serverName!,
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: const TextStyle(color: Colors.white70, fontSize: 11),
                                            ),
                                        ],
                                      ),
                                    ),
                                  ],
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
      ),
    );
  }
}
