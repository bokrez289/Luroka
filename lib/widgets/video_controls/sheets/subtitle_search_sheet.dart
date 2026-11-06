import 'dart:async';
import 'dart:io';
import '../../../media/ids.dart';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../../../focus/focusable_button.dart';
import '../../../focus/focusable_text_field.dart';
import '../../../focus/input_mode_tracker.dart';
import '../../../i18n/strings.g.dart';
import '../../../media/online_subtitle_transport.dart';
import '../../../mixins/controller_disposer_mixin.dart';
import '../../../services/settings_service.dart';
import '../../../services/file_picker_service.dart';
import '../../../utils/error_message_utils.dart';
import '../../../utils/language_codes.dart';
import '../../../utils/provider_extensions.dart';
import '../../../utils/error_dialog.dart';
import '../../../widgets/app_icon.dart';
import '../../../widgets/focusable_list_tile.dart';
import '../../../widgets/overlay_sheet.dart';
import '../../../widgets/pill_input_decoration.dart';
import 'base_video_control_sheet.dart';
import '../../loading_indicator_box.dart';
import '../models/track_controls_state.dart';

@visibleForTesting
String resolveSubtitleSearchLanguageCode({String? savedLanguageCode, required Locale systemLocale}) {
  return LanguageCodes.getIso6391Code(savedLanguageCode ?? '') ??
      LanguageCodes.getIso6391Code(systemLocale.languageCode) ??
      'en';
}

class SubtitleSearchSheet extends StatefulWidget {
  final String ratingKey;
  final String serverId;
  final String? mediaSourceId;
  final String? mediaTitle;
  final Future<SubtitleDownloadApplyOutcome> Function({required String serverId, required String ratingKey})?
  onSubtitleDownloaded;
  final Future<SubtitleDownloadApplyOutcome> Function({
    required String serverId,
    required String ratingKey,
    required Set<int> previousSourceIds,
  })?
  onSubtitleDownloadedWithBaseline;

  const SubtitleSearchSheet({
    super.key,
    required this.ratingKey,
    required this.serverId,
    this.mediaSourceId,
    this.mediaTitle,
    this.onSubtitleDownloaded,
    this.onSubtitleDownloadedWithBaseline,
  });

  @override
  State<SubtitleSearchSheet> createState() => _SubtitleSearchSheetState();
}

class _SubtitleSearchSheetState extends State<SubtitleSearchSheet> with ControllerDisposerMixin {
  String _languageCode = 'en';
  String _languageName = 'English';
  late final _titleController = createTextEditingController();
  final _languageFocusNode = FocusNode(debugLabel: 'SubtitleSearch_language');
  final _titleFocusNode = FocusNode(debugLabel: 'SubtitleSearch_title');
  final _firstResultFocusNode = FocusNode(debugLabel: 'SubtitleSearch_firstResult');
  Timer? _debounceTimer;

  List<OnlineSubtitleSearchResult>? _results;
  bool _isSearching = false;
  String? _error;
  String? _downloadingKey;
  int _searchGeneration = 0;

  bool _showLanguagePicker = false;

  @override
  void initState() {
    super.initState();
    _initDefaultLanguage();
    WidgetsBinding.instance.addPostFrameCallback((_) => _search());
  }

  void _initDefaultLanguage() {
    final code = resolveSubtitleSearchLanguageCode(
      savedLanguageCode: SettingsService.instanceOrNull?.read(SettingsService.subtitleSearchLanguage),
      systemLocale: WidgetsBinding.instance.platformDispatcher.locale,
    );
    final name = LanguageCodes.getLanguageName(code);
    if (name == null) return;
    _languageCode = code;
    _languageName = name;
  }

  @override
  void dispose() {
    ++_searchGeneration;
    _debounceTimer?.cancel();
    _languageFocusNode.dispose();
    _titleFocusNode.dispose();
    _firstResultFocusNode.dispose();
    super.dispose();
  }

  Future<void> _search() async {
    if (!mounted) return;
    final generation = ++_searchGeneration;
    setState(() {
      _isSearching = true;
      _error = null;
    });

    try {
      final client = context.tryGetMediaClientForServer(ServerId(widget.serverId));
      final OnlineSubtitleTransport? transport = client is OnlineSubtitleTransport
          ? client as OnlineSubtitleTransport
          : null;
      if (transport == null) {
        if (!mounted || generation != _searchGeneration) return;
        setState(() => _isSearching = false);
        return;
      }
      final title = _titleController.text.trim();
      final language = _languageCode;
      final results = await transport.searchOnlineSubtitles(
        widget.ratingKey,
        language: language,
        mediaSourceId: widget.mediaSourceId,
        title: title.isEmpty ? null : title,
      );
      if (!mounted || generation != _searchGeneration) return;
      setState(() {
        _results = results;
        _isSearching = false;
      });
    } catch (e) {
      if (!mounted || generation != _searchGeneration) return;
      setState(() {
        _error = t.errors.searchFailed(error: localizedErrorReason(e));
        _isSearching = false;
      });
    }
  }

  void _onTitleChanged(String _) {
    _debounceTimer?.cancel();
    _debounceTimer = Timer(const Duration(milliseconds: 500), _search);
  }

  void _showLanguagePickerView() {
    setState(() => _showLanguagePicker = true);
    OverlaySheetController.of(context).refocus();
  }

  void _hideLanguagePickerView() {
    setState(() => _showLanguagePicker = false);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) _languageFocusNode.requestFocus();
    });
  }

  void _focusFirstResult() {
    if (_results != null && _results!.isNotEmpty && !_isSearching && _error == null) {
      _firstResultFocusNode.requestFocus();
    }
  }

  Future<void> _submitSearchAndFocusFirstResult() async {
    _debounceTimer?.cancel();
    await _search();
    if (!mounted || !InputModeTracker.isKeyboardMode(context, listen: false)) return;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      _focusFirstResult();
    });
  }

  void _onLanguageSelected(String code, String name) {
    _debounceTimer?.cancel();
    setState(() {
      _languageCode = code;
      _languageName = name;
      _showLanguagePicker = false;
    });
    final settings = SettingsService.instanceOrNull;
    if (settings != null) {
      unawaited(settings.write(SettingsService.subtitleSearchLanguage, code));
    }
    OverlaySheetController.of(context).refocus();
    _search();
  }

  Future<void> _downloadSubtitle(OnlineSubtitleSearchResult result) async {
    if (_downloadingKey != null) return;
    setState(() => _downloadingKey = result.id);

    try {
      final client = context.tryGetMediaClientForServer(ServerId(widget.serverId));
      final OnlineSubtitleTransport? transport = client is OnlineSubtitleTransport
          ? client as OnlineSubtitleTransport
          : null;
      if (transport == null) {
        if (!mounted) return;
        setState(() => _downloadingKey = null);
        return;
      }
      Set<int>? previousSourceIds;
      if (widget.onSubtitleDownloadedWithBaseline != null) {
        final before = await transport.fetchFreshOnlineSubtitleSource(
          widget.ratingKey,
          mediaSourceId: widget.mediaSourceId,
        );
        if (!mounted) return;
        if (before == null) throw StateError('Subtitle source is unavailable');
        previousSourceIds = before.subtitleTracks.where((t) => t.isExternal).map((t) => t.id).toSet();
      }
      final success = await transport.downloadOnlineSubtitle(
        widget.ratingKey,
        subtitle: result,
        mediaSourceId: widget.mediaSourceId,
      );

      if (!mounted) return;

      if (success) {
        final outcome = widget.onSubtitleDownloadedWithBaseline != null
            ? await widget.onSubtitleDownloadedWithBaseline!(
                serverId: widget.serverId,
                ratingKey: widget.ratingKey,
                previousSourceIds: previousSourceIds!,
              )
            : await widget.onSubtitleDownloaded?.call(serverId: widget.serverId, ratingKey: widget.ratingKey) ??
                  SubtitleDownloadApplyOutcome.unavailable;
        if (!mounted) return;
        if (outcome == SubtitleDownloadApplyOutcome.applied) {
          OverlaySheetController.of(context).close();
        } else {
          unawaited(showErrorDialog(context, t.videoControls.subtitleDownloadedNotApplied));
          setState(() => _downloadingKey = null);
        }
      } else {
        unawaited(showErrorDialog(context, t.videoControls.subtitleDownloadFailed));
        setState(() => _downloadingKey = null);
      }
    } catch (e) {
      if (!mounted) return;
      unawaited(showErrorDialog(context, t.videoControls.subtitleDownloadFailed));
      setState(() => _downloadingKey = null);
    }
  }

  Future<void> _uploadSubtitle() async {
    if (_downloadingKey != null) return;
    final client = context.tryGetMediaClientForServer(ServerId(widget.serverId));
    final transport = client is SubtitleUploadTransport ? client as SubtitleUploadTransport : null;
    if (transport == null || !transport.supportsSubtitleUpload) return;
    setState(() => _downloadingKey = 'local-upload');
    try {
      final picked = await FilePickerService.instance.pickFiles(
        type: FileType.custom,
        allowedExtensions: const ['srt', 'ass', 'ssa', 'vtt'],
      );
      if (!mounted || picked == null || picked.files.isEmpty) return;
      final file = picked.files.single;
      if (file.size <= 0 || file.size > 5 * 1024 * 1024 || file.path == null) {
        throw const FormatException('Invalid file');
      }
      final source = File(file.path!);
      if (await source.length() > 5 * 1024 * 1024) throw const FormatException('Invalid file');
      final bytes = <int>[];
      await for (final chunk in source.openRead()) {
        if (bytes.length + chunk.length > 5 * 1024 * 1024) throw const FormatException('Invalid file');
        bytes.addAll(chunk);
      }
      if (bytes.isEmpty) throw const FormatException('Invalid file');
      final format = file.name.split('.').last.toLowerCase();
      Set<int>? previousSourceIds;
      if (widget.onSubtitleDownloadedWithBaseline != null && client is OnlineSubtitleTransport) {
        try {
          final source = await (client as OnlineSubtitleTransport).fetchFreshOnlineSubtitleSource(
            widget.ratingKey,
            mediaSourceId: widget.mediaSourceId,
          );
          previousSourceIds = source?.subtitleTracks.where((track) => track.isExternal).map((track) => track.id).toSet();
        } catch (_) {
          // Upload remains useful even if an optional playback baseline fails.
        }
      }
      await transport.uploadSubtitle(widget.ratingKey, language: _languageCode, format: format, bytes: bytes);
      if (!mounted) return;
      if (previousSourceIds != null && widget.onSubtitleDownloadedWithBaseline != null) {
        final outcome = await widget.onSubtitleDownloadedWithBaseline!(
          serverId: widget.serverId,
          ratingKey: widget.ratingKey,
          previousSourceIds: previousSourceIds,
        );
        if (!mounted) return;
        if (outcome == SubtitleDownloadApplyOutcome.applied) {
          OverlaySheetController.of(context).close();
          return;
        }
      }
      await showDialog<void>(
        context: context,
        builder: (context) => AlertDialog(
          content: Text(t.subtitleUpload.success),
          actions: [TextButton(onPressed: () => Navigator.of(context).pop(), child: Text(t.common.ok))],
        ),
      );
    } catch (_) {
      if (mounted) await showErrorDialog(context, t.subtitleUpload.failed);
    } finally {
      if (mounted) setState(() => _downloadingKey = null);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_showLanguagePicker) {
      return _LanguagePickerView(
        currentCode: _languageCode,
        onSelected: _onLanguageSelected,
        onBack: _hideLanguagePickerView,
      );
    }

    final fillColor = Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.08);
    final hasResults = _results != null && _results!.isNotEmpty && !_isSearching && _error == null;
    final uploadClient = context.tryGetMediaClientForServer(ServerId(widget.serverId));
    final upload = uploadClient is SubtitleUploadTransport ? uploadClient as SubtitleUploadTransport : null;

    return BaseVideoControlSheet(
      title: t.videoControls.searchSubtitles,
      icon: Symbols.search_rounded,
      compactPlayerSurface: true,
      onBack: () => OverlaySheetController.of(context).pop(),
      // Deliberately fills the sheet's height cap instead of hugging content.
      // Overlay sheets are bottom-anchored, so a content-driven height would
      // move the search field on every state transition — spinner, results,
      // error, empty — while the user is still typing in it. A search surface
      // needs a stable frame; the results list normally fills it anyway.
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: MediaQuery.sizeOf(context).width * .38),
                  child: FocusableButton(
                    focusNode: _languageFocusNode,
                    onPressed: _showLanguagePickerView,
                    onNavigateRight: _titleFocusNode.requestFocus,
                    onNavigateDown: hasResults ? _focusFirstResult : null,
                    autoScroll: false,
                    child: Material(
                      color: fillColor,
                      borderRadius: pillInputRadius,
                      child: InkWell(
                        borderRadius: pillInputRadius,
                        canRequestFocus: false,
                        onTap: _showLanguagePickerView,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                          child: Row(
                            mainAxisSize: .min,
                            children: [
                              Flexible(child: Text(_languageName, maxLines: 1, overflow: TextOverflow.ellipsis)),
                              const SizedBox(width: 2),
                              const AppIcon(Symbols.arrow_drop_down_rounded, size: 20),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: FocusableTextField(
                    controller: _titleController,
                    focusNode: _titleFocusNode,
                    tvTextInputPresentation: TvTextInputPresentation.flutterOverlay,
                    decoration: pillInputDecoration(
                      context,
                      hintText: widget.mediaTitle ?? t.metadataEdit.title,
                      prefixIcon: const AppIcon(Symbols.search_rounded, size: 20),
                    ),
                    onChanged: _onTitleChanged,
                    textInputAction: TextInputAction.search,
                    onSubmitted: (_) => unawaited(_submitSearchAndFocusFirstResult()),
                    onSelect: () => unawaited(_submitSearchAndFocusFirstResult()),
                    onNavigateLeft: _languageFocusNode.requestFocus,
                    onNavigateDown: hasResults ? _focusFirstResult : null,
                  ),
                ),
              ],
            ),
          ),
          if (upload?.supportsSubtitleUpload == true)
            FocusableButton(
              onPressed: _downloadingKey == null ? () => unawaited(_uploadSubtitle()) : null,
              child: TextButton.icon(
                onPressed: _downloadingKey == null ? () => unawaited(_uploadSubtitle()) : null,
                icon: const Icon(Icons.upload_file_rounded),
                label: Text('${t.subtitleUpload.chooseFile} · $_languageName'),
              ),
            ),
          Expanded(child: _buildResults()),
        ],
      ),
    );
  }

  Widget _buildResults() {
    if (_isSearching) {
      return const Center(child: CircularProgressIndicator());
    }

    if (_error != null) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
        ),
      );
    }

    if (_results == null) {
      return const SizedBox.shrink();
    }

    if (_results!.isEmpty) {
      return Center(
        child: Text(
          t.videoControls.noSubtitlesFound,
          style: TextStyle(color: Theme.of(context).colorScheme.onSurfaceVariant),
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 20),
      itemCount: _results!.length,
      itemBuilder: (context, index) {
        final result = _results![index];
        final isDownloading = _downloadingKey == result.id;
        final colorScheme = Theme.of(context).colorScheme;

        Widget? trailing;
        if (isDownloading) {
          trailing = const LoadingIndicatorBox(size: 20);
        } else {
          final trailingChildren = <Widget>[];
          if (result.perfectMatch) {
            trailingChildren.add(const AppIcon(Symbols.star_rounded, fill: 1, color: Color(0xFFCC7B19), size: 16));
          }
          if (result.score != null) {
            trailingChildren.add(
              Text(
                result.score!.toInt().toString(),
                style: TextStyle(fontSize: 12, color: colorScheme.onSurfaceVariant),
              ),
            );
          }
          if (trailingChildren.isNotEmpty) {
            trailing = Row(mainAxisSize: .min, spacing: 4, children: trailingChildren);
          }
        }

        final title = result.title ?? result.displayTitle ?? t.common.unknown;
        final detail = result.displayTitle;
        return Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Material(
            color: colorScheme.surfaceContainerHigh,
            borderRadius: BorderRadius.circular(14),
            clipBehavior: Clip.antiAlias,
            child: FocusableListTile(
              focusNode: index == 0 ? _firstResultFocusNode : null,
              leading: AppIcon(Symbols.subtitles_rounded, color: colorScheme.primary),
              title: Text(title, maxLines: 2, overflow: TextOverflow.ellipsis),
              subtitle: detail == null || detail.isEmpty || detail == title
                  ? null
                  : Text(
                      detail,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: colorScheme.onSurfaceVariant),
                    ),
              trailing: trailing ?? AppIcon(Symbols.download_rounded, color: colorScheme.onSurfaceVariant),
              onTap: _downloadingKey == null ? () => _downloadSubtitle(result) : null,
            ),
          ),
        );
      },
    );
  }
}

class _LanguagePickerView extends StatefulWidget {
  final String currentCode;
  final void Function(String code, String name) onSelected;
  final VoidCallback onBack;

  const _LanguagePickerView({required this.currentCode, required this.onSelected, required this.onBack});

  @override
  State<_LanguagePickerView> createState() => _LanguagePickerViewState();
}

class _LanguagePickerViewState extends State<_LanguagePickerView> with ControllerDisposerMixin {
  late final _filterController = createTextEditingController();
  final _filterFocusNode = FocusNode(debugLabel: 'SubtitleLanguage_filter');
  final _firstLanguageFocusNode = FocusNode(debugLabel: 'SubtitleLanguage_firstResult');
  late List<({String code, String name})> _allLanguages;
  List<({String code, String name})> _filteredLanguages = [];

  @override
  void initState() {
    super.initState();
    _allLanguages = LanguageCodes.getAllLanguages();
    _filteredLanguages = _allLanguages;
  }

  @override
  void dispose() {
    _filterFocusNode.dispose();
    _firstLanguageFocusNode.dispose();
    super.dispose();
  }

  void _focusFirstLanguage() {
    if (_filteredLanguages.isNotEmpty) {
      _firstLanguageFocusNode.requestFocus();
    }
  }

  void _focusFirstLanguageAfterSubmit() {
    if (!InputModeTracker.isKeyboardMode(context)) return;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      _focusFirstLanguage();
    });
  }

  void _onFilterChanged(String query) {
    final lower = query.toLowerCase();
    setState(() {
      if (lower.isEmpty) {
        _filteredLanguages = _allLanguages;
      } else {
        _filteredLanguages = _allLanguages.where((l) {
          return l.name.toLowerCase().contains(lower) || l.code.toLowerCase().contains(lower);
        }).toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BaseVideoControlSheet(
      title: t.videoControls.language,
      icon: Symbols.language_rounded,
      compactPlayerSurface: true,
      onBack: widget.onBack,
      // Fills the height cap for the same reason as the search body: the filter
      // field is autofocused and refilters on every keystroke, so a
      // content-driven height would slide the field the user is typing in.
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: FocusableTextField(
              controller: _filterController,
              focusNode: _filterFocusNode,
              tvTextInputPresentation: TvTextInputPresentation.flutterOverlay,
              autofocus: true,
              decoration: pillInputDecoration(
                context,
                hintText: t.videoControls.searchLanguages,
                prefixIcon: const AppIcon(Symbols.search_rounded, size: 20),
              ),
              onChanged: _onFilterChanged,
              onSubmitted: (_) => _focusFirstLanguageAfterSubmit(),
              onSelect: _focusFirstLanguageAfterSubmit,
              onNavigateDown: _filteredLanguages.isNotEmpty ? _focusFirstLanguage : null,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _filteredLanguages.length,
              itemBuilder: (context, index) {
                final lang = _filteredLanguages[index];
                final isSelected = lang.code == widget.currentCode;
                return FocusableListTile(
                  focusNode: index == 0 ? _firstLanguageFocusNode : null,
                  title: Text(
                    lang.name,
                    style: TextStyle(color: isSelected ? Theme.of(context).colorScheme.primary : null),
                  ),
                  trailing: isSelected
                      ? AppIcon(Symbols.check_rounded, fill: 1, color: Theme.of(context).colorScheme.primary)
                      : null,
                  onTap: () => widget.onSelected(lang.code, lang.name),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
