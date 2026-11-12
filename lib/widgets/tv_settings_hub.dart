import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../focus/dpad_navigator.dart';
import '../focus/focusable_button.dart';
import '../focus/focusable_text_field.dart';
import '../focus/key_event_utils.dart';
import '../i18n/strings.g.dart';
import '../profiles/active_profile_provider.dart';
import '../profiles/profile_avatar.dart';
import '../utils/app_identity.dart';
import '../utils/platform_detector.dart';
import '../services/settings_service.dart';
import '../utils/error_dialog.dart';
import 'app_icon.dart';
import 'focusable_list_tile.dart';
import 'luroka_mark.dart';
import 'settings_surface.dart';
import 'settings_workspace_scope.dart';
import 'setting_tile.dart';
import 'system_clock.dart';
import 'tv_settings_preview.dart';
import 'appearance_workspace.dart';
import 'mobile_settings_preview.dart';
import 'account_recovery_menu.dart';

class TvSettingsSearchEntry {
  const TvSettingsSearchEntry({
    required this.categoryId,
    required this.title,
    this.settingId,
    this.keywords = '',
    this.advanced = false,
  });
  final String categoryId, title, keywords;
  final String? settingId;
  final bool advanced;
}

class TvSettingsCategory {
  const TvSettingsCategory({
    required this.id,
    required this.title,
    required this.icon,
    required this.builder,
    required this.firstFocus,
    this.description,
    this.onOpen,
    this.advanced = false,
    this.preview = false,
    this.keywords = '',
  });
  final String id, title, keywords;
  final IconData icon;
  final String? description;
  final WidgetBuilder builder;
  final FocusNode firstFocus;
  final VoidCallback? onOpen;
  final bool advanced;

  /// Opt-in live preview pane (right column): a miniature, live-rendered home
  /// bound to the current theme/home settings. Only meaningful for
  /// appearance-affecting categories; ignored below 1200 px width.
  final bool preview;
}

/// Dedicated theme-aware workspace. Selected categories and remote focus are
/// independent; visited pages retain their scroll and local tab state.
class TvSettingsHub extends StatefulWidget {
  const TvSettingsHub({super.key, required this.categories, required this.onExitLeft, this.searchEntries = const []});
  final List<TvSettingsCategory> categories;
  final List<TvSettingsSearchEntry> searchEntries;
  final VoidCallback onExitLeft;
  @override
  State<TvSettingsHub> createState() => TvSettingsHubState();
}

class TvSettingsHubState extends State<TvSettingsHub> {
  final Map<String, FocusNode> _nodes = {};
  final Map<String, FocusScopeNode> _scopes = {};
  final Map<String, GlobalKey> _settingKeys = {};
  final Map<String, TvSettingsSearchEntry> _registered = {};
  final Set<String> _visited = {};
  final Set<String> _entered = {};
  final _everyday = FocusNode(debugLabel: 'settings_everyday');
  final _advancedFocus = FocusNode(debugLabel: 'settings_advanced');
  final _searchFocus = FocusNode(debugLabel: 'settings_search');
  final _previewFocus = FocusNode(debugLabel: 'settings_preview');
  final _help = ValueNotifier<SettingsHelp?>(null);
  late bool _advanced;
  bool _writingMode = false;
  String? _selected;
  FocusNode _node(String id) => _nodes.putIfAbsent(id, () => FocusNode(debugLabel: 'SettingsCategory:$id'));
  FocusScopeNode _scope(String id) => _scopes.putIfAbsent(
    id,
    () => FocusScopeNode(
      debugLabel: 'SettingsContent:$id',
      directionalTraversalEdgeBehavior: TraversalEdgeBehavior.parentScope,
    ),
  );
  List<TvSettingsCategory> get _visible => widget.categories.where((c) => !c.advanced || _advanced).toList();
  TvSettingsCategory? get _category => _visible.where((c) => c.id == _selected).firstOrNull ?? _visible.firstOrNull;

  @override
  void initState() {
    super.initState();
    _advanced = SettingsService.instanceOrNull?.read(_modePreference) ?? false;
  }

  BoolPref get _modePreference =>
      PlatformDetector.isTV() ? SettingsService.tvSettingsAdvancedMode : SettingsService.mobileSettingsAdvancedMode;

  void requestFocus() {
    final category = _category;
    if (category != null) _node(category.id).requestFocus();
  }

  void _focusContent() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      final category = _category;
      if (category == null) return;
      if (_entered.add(category.id) && category.firstFocus.context != null) {
        category.firstFocus.requestFocus();
        return;
      }
      final scope = _scope(category.id);
      final previous = scope.focusedChild;
      if (previous != null && previous.canRequestFocus) {
        previous.requestFocus();
      } else if (category.firstFocus.context != null) {
        category.firstFocus.requestFocus();
      } else {
        final nodes = scope.traversalDescendants.where((n) => n.canRequestFocus && !n.skipTraversal);
        if (nodes.isNotEmpty) nodes.first.requestFocus();
      }
    });
    // Returning from the preview does not rebuild the category. Ensure the
    // deferred focus request runs even when there is no animation or new frame.
    WidgetsBinding.instance.ensureVisualUpdate();
  }

  void _select(TvSettingsCategory category, {bool enter = false}) {
    if (_selected != category.id) _help.value = null;
    setState(() {
      _selected = category.id;
      _visited.add(category.id);
    });
    if (enter) _focusContent();
  }

  Future<void> _mode(bool advanced) async {
    if (_advanced == advanced || _writingMode) return;
    _writingMode = true;
    try {
      await SettingsService.instanceOrNull?.write(_modePreference, advanced);
      if (!mounted) return;
      setState(() {
        _advanced = advanced;
        // Registrations from the previous mode may describe controls that are
        // now hidden. Re-register the mounted pages for the current mode.
        _registered.clear();
        if (!_visible.any((c) => c.id == _selected)) _selected = _visible.firstOrNull?.id;
      });
      if (!advanced) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (mounted && FocusManager.instance.primaryFocus?.context == null) requestFocus();
        });
      }
    } catch (_) {
      if (mounted) unawaited(showErrorDialog(context, t.household.saveFailed));
    } finally {
      _writingMode = false;
    }
  }

  void _back() {
    final category = _category;
    if (category?.firstFocus.context?.findAncestorStateOfType<AppearanceWorkspaceState>()?.focusTabsFromContent() ==
        true) {
      return;
    }
    if (category != null && _scope(category.id).hasFocus) {
      _node(category.id).requestFocus();
    } else {
      widget.onExitLeft();
    }
  }

  void _focusSetting(String? id) {
    final target = _settingKeys['${_category?.id}:$id']?.currentContext;
    if (target == null) {
      _focusContent();
      return;
    }
    final appearance = target.findAncestorStateOfType<AppearanceWorkspaceState>();
    if (appearance?.revealSetting(id) == true) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) _focusSetting(id);
      });
      return;
    }
    Scrollable.ensureVisible(target, alignment: .2);
    FocusNode? found;
    void visit(Element element) {
      final candidate = element.widget;
      if (candidate is Focus && candidate.focusNode?.canRequestFocus == true && !candidate.skipTraversal) {
        found ??= candidate.focusNode;
      }
      if (found == null) element.visitChildElements(visit);
    }

    (target as Element).visitChildElements(visit);
    if (found != null) {
      found!.requestFocus();
    } else {
      _focusContent();
    }
  }

  Future<void> _search() async {
    final all = <String, TvSettingsSearchEntry>{};
    for (final c in widget.categories) {
      all['category:${c.id}'] = TvSettingsSearchEntry(
        categoryId: c.id,
        title: c.title,
        keywords: '${c.keywords} ${c.description ?? ''}',
      );
    }
    // Explicit entries provide synonyms and advanced-mode metadata even after
    // the page has been visited and registered its ordinary visible rows.
    for (final entry in [..._registered.values, ...widget.searchEntries]) {
      all['${entry.categoryId}:${entry.settingId ?? entry.title}'] = entry;
    }
    final picked = await showDialog<TvSettingsSearchEntry>(
      context: context,
      builder: (_) => _SettingsSearchDialog(entries: all.values.toList()),
    );
    if (!mounted || picked == null) return;
    final category = widget.categories.where((c) => c.id == picked.categoryId).firstOrNull;
    if (category == null) return;
    if ((category.advanced || picked.advanced) && !_advanced) {
      await _mode(true);
      if (!mounted) return;
    }
    setState(() {
      _selected = category.id;
      _visited.add(category.id);
    });
    if (!PlatformDetector.isTV() || MediaQuery.sizeOf(context).width < 600) {
      await _openMobile(category, settingId: picked.settingId);
      return;
    }
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) _focusSetting(picked.settingId);
    });
  }

  @override
  void dispose() {
    for (final node in _nodes.values) {
      node.dispose();
    }
    for (final node in _scopes.values) {
      node.dispose();
    }
    _everyday.dispose();
    _advancedFocus.dispose();
    _searchFocus.dispose();
    _previewFocus.dispose();
    _help.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!PlatformDetector.isTV() || MediaQuery.sizeOf(context).width < 600) return _buildMobile(context);
    final category = _category;
    if (category != null) _visited.add(category.id);
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    final compact = MediaQuery.sizeOf(context).width < 1200;
    final narrowHeader = MediaQuery.sizeOf(context).width < 850;
    final active = context.watch<ActiveProfileProvider?>();
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, _) {
        if (!didPop) _back();
      },
      child: Scaffold(
        body: Focus(
          canRequestFocus: false,
          onKeyEvent: (_, event) =>
              event.logicalKey.isBackKey ? handleBackKeyAction(event, _back) : KeyEventResult.ignored,
          child: DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [theme.scaffoldBackgroundColor, colors.surface],
              ),
            ),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(24, 12, 24, 20),
                child: Column(
                  children: [
                    SizedBox(
                      height: 58,
                      child: Row(
                        children: [
                          const LurokaMark(size: 30),
                          const SizedBox(width: 10),
                          if (!narrowHeader)
                            Text(
                              AppIdentity.name.toUpperCase(),
                              style: theme.textTheme.titleLarge?.copyWith(
                                letterSpacing: 2,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          if (!narrowHeader)
                            Container(
                              height: 28,
                              width: 1,
                              margin: const EdgeInsets.symmetric(horizontal: 22),
                              color: colors.outlineVariant,
                            ),
                          if (!narrowHeader) const Icon(Icons.settings_outlined, size: 24),
                          if (!narrowHeader) const SizedBox(width: 10),
                          Text(t.settings.title, style: theme.textTheme.titleLarge),
                          const Spacer(),
                          for (final advanced in [false, true])
                            FocusableButton(
                              focusNode: advanced ? _advancedFocus : _everyday,
                              onNavigateDown: requestFocus,
                              onPressed: () => _mode(advanced),
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: _advanced == advanced ? colors.primary : null,
                                  foregroundColor: _advanced == advanced ? colors.onPrimary : colors.onSurfaceVariant,
                                  padding: EdgeInsets.symmetric(horizontal: narrowHeader ? 10 : 16),
                                ),
                                onPressed: () => _mode(advanced),
                                child: Text(advanced ? t.settings.advanced : t.tvSettingsV2.simple),
                              ),
                            ),
                          const SizedBox(width: 10),
                          FocusableButton(
                            focusNode: _searchFocus,
                            onPressed: _search,
                            onNavigateDown: requestFocus,
                            child: IconButton(
                              tooltip: t.lurokaWorkspace.searchSettings,
                              onPressed: _search,
                              icon: const Icon(Icons.search_rounded),
                            ),
                          ),
                          if (active?.active != null)
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 14),
                              child: ProfileAvatar(
                                profile: active!.active!,
                                size: 32,
                                avatarUrl: active.avatarUrlFor(active.active!.id),
                              ),
                            ),
                          if (!narrowHeader) ...[const SizedBox(width: 10), const SystemClock()],
                        ],
                      ),
                    ),
                    SizedBox(height: compact ? 8 : 18),
                    Expanded(
                      child: LayoutBuilder(
                        builder: (context, bounds) => Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            SizedBox(
                              width: (bounds.maxWidth * .19).clamp(160, 260),
                              child: SettingsSurface(
                                child: ListView(
                                  children: [
                                    for (final (index, entry) in _visible.indexed)
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 8),
                                        child: Focus(
                                          canRequestFocus: false,
                                          onKeyEvent: (_, event) {
                                            if (!event.isActionable) return KeyEventResult.ignored;
                                            if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
                                              _select(entry, enter: true);
                                              return KeyEventResult.handled;
                                            }
                                            if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
                                              return KeyEventResult.handled;
                                            }
                                            if (index == 0 && event.logicalKey == LogicalKeyboardKey.arrowUp) {
                                              (_advanced ? _advancedFocus : _everyday).requestFocus();
                                              return KeyEventResult.handled;
                                            }
                                            return KeyEventResult.ignored;
                                          },
                                          child: ListTileTheme.merge(
                                            minTileHeight: compact ? 56 : 64,
                                            titleTextStyle: theme.textTheme.bodyMedium?.copyWith(
                                              fontSize: compact ? 15 : 17,
                                              fontWeight: FontWeight.w600,
                                            ),
                                            selectedTileColor: colors.primary.withValues(alpha: .16),
                                            selectedColor: colors.onSurface,
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                                            child: FocusableListTile(
                                              focusNode: _node(entry.id),
                                              selected: category?.id == entry.id,
                                              leading: AppIcon(entry.icon, size: 22),
                                              title: Text(entry.title, maxLines: 2),
                                              contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                                              onTap: () => _select(entry, enter: true),
                                            ),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: compact ? 12 : 22),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  if (category != null)
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(16, 0, 16, compact ? 10 : 16),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            category.title,
                                            style: theme.textTheme.headlineMedium?.copyWith(
                                              fontWeight: FontWeight.w600,
                                              fontSize: compact ? 22 : 26,
                                            ),
                                          ),
                                          if (category.description?.isNotEmpty == true) ...[
                                            const SizedBox(height: 6),
                                            Text(
                                              category.description!,
                                              style: theme.textTheme.bodyMedium?.copyWith(
                                                color: colors.onSurfaceVariant,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ],
                                        ],
                                      ),
                                    ),
                                  if ((category?.preview ?? false) && bounds.maxWidth < 1050)
                                    ValueListenableBuilder<SettingsHelp?>(
                                      valueListenable: _help,
                                      builder: (_, help, _) => MobileSettingsPreviewFrame(
                                        categoryId:
                                            category!.id == 'library' && help?.title == t.homeLayout.episodeThumbnails
                                            ? 'home'
                                            : category.id,
                                        previewFocus: _previewFocus,
                                        onReturn: _focusContent,
                                      ),
                                    ),
                                  Expanded(
                                    child: IndexedStack(
                                      index: widget.categories
                                          .indexWhere((c) => c.id == category?.id)
                                          .clamp(0, widget.categories.length - 1),
                                      children: [
                                        for (final c in widget.categories)
                                          ExcludeFocus(
                                            excluding: c.id != category?.id,
                                            child: TickerMode(
                                              enabled: c.id == category?.id,
                                              child: !_visited.contains(c.id)
                                                  ? const SizedBox.shrink()
                                                  : FocusScope(
                                                      node: _scope(c.id),
                                                      child: Focus(
                                                        canRequestFocus: false,
                                                        onKeyEvent: (_, event) {
                                                          if (event.isActionable &&
                                                              c.preview &&
                                                              event.logicalKey == LogicalKeyboardKey.arrowRight &&
                                                              _previewFocus.context != null) {
                                                            _previewFocus.requestFocus();
                                                            return KeyEventResult.handled;
                                                          }
                                                          if (event.isActionable &&
                                                              event.logicalKey == LogicalKeyboardKey.arrowLeft) {
                                                            _node(c.id).requestFocus();
                                                            return KeyEventResult.handled;
                                                          }
                                                          return KeyEventResult.ignored;
                                                        },
                                                        child: SettingsWorkspaceScope(
                                                          help: _help,
                                                          categoryId: c.id,
                                                          advanced: _advanced,
                                                          settingKeys: _settingKeys,
                                                          onRegistered: (id, title, description) =>
                                                              _registered['${c.id}:$id'] = TvSettingsSearchEntry(
                                                                categoryId: c.id,
                                                                title: title,
                                                                settingId: id,
                                                                keywords: description,
                                                              ),
                                                          child: SettingsSurface(
                                                            child: c.onOpen == null
                                                                ? Builder(builder: c.builder)
                                                                : SingleChildScrollView(
                                                                    child: SettingNavigationTile(
                                                                      icon: c.icon,
                                                                      title: c.title,
                                                                      subtitle: c.description,
                                                                      onTap: c.onOpen,
                                                                    ),
                                                                  ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            if ((category?.preview ?? false) && bounds.maxWidth >= 1050)
                              SizedBox(
                                width: (bounds.maxWidth * .30).clamp(150.0, 400.0),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 4),
                                  child: TvSettingsPreviewPanel(
                                    categoryId: category!.id,
                                    help: _help,
                                    previewFocus: _previewFocus,
                                    onReturn: _focusContent,
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMobile(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    final active = context.watch<ActiveProfileProvider?>();
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const LurokaMark(size: 27),
            const SizedBox(width: 10),
            Flexible(child: Text(t.settings.title, overflow: TextOverflow.ellipsis)),
          ],
        ),
        actions: [
          const AccountRecoveryMenu(),
          if (active?.active != null)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: ProfileAvatar(
                profile: active!.active!,
                size: 32,
                avatarUrl: active.avatarUrlFor(active.active!.id),
              ),
            ),
          IconButton(
            tooltip: t.lurokaWorkspace.searchSettings,
            onPressed: _search,
            icon: const Icon(Icons.search_rounded),
          ),
        ],
      ),
      body: SafeArea(
        top: false,
        child: SettingsSurface(
          child: ListView(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 32),
            children: [
              DecoratedBox(
                decoration: BoxDecoration(
                  color: colors.surfaceContainerLow,
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: colors.outlineVariant.withValues(alpha: .45)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    children: [
                      for (final advanced in [false, true])
                        Expanded(
                          child: TextButton(
                            key: ValueKey('mobile-settings-mode-${advanced ? 'advanced' : 'simple'}'),
                            onPressed: _writingMode ? null : () => _mode(advanced),
                            style: TextButton.styleFrom(
                              minimumSize: const Size(0, 48),
                              backgroundColor: _advanced == advanced ? colors.primary : Colors.transparent,
                              foregroundColor: _advanced == advanced ? colors.onPrimary : colors.onSurfaceVariant,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
                            ),
                            child: Text(
                              advanced ? t.settings.advanced : t.tvSettingsV2.simple,
                              textAlign: TextAlign.center,
                              maxLines: 2,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(4, 12, 4, 20),
                child: Text(
                  t.tvSettingsV2.settingsSaved,
                  style: theme.textTheme.bodySmall?.copyWith(color: colors.onSurfaceVariant),
                ),
              ),
              for (final entry in _visible)
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Material(
                    color: theme.colorScheme.surfaceContainerLow,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                      side: BorderSide(color: theme.colorScheme.outlineVariant.withValues(alpha: .5)),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: ListTileTheme.merge(
                      minTileHeight: 72,
                      child: FocusableListTile(
                        key: ValueKey('mobile-settings-category-${entry.id}'),
                        dense: false,
                        visualDensity: VisualDensity.standard,
                        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        leading: Container(
                          width: 46,
                          height: 46,
                          decoration: BoxDecoration(
                            color: colors.primary.withValues(alpha: .12),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Center(child: AppIcon(entry.icon, color: colors.primary, size: 23)),
                        ),
                        title: Text(
                          entry.title,
                          style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700),
                        ),
                        subtitle: entry.description == null
                            ? null
                            : Text(entry.description!, maxLines: 2, overflow: TextOverflow.ellipsis),
                        trailing: Icon(Icons.chevron_right_rounded, color: colors.onSurfaceVariant),
                        onTap: () => _openMobile(entry),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _openMobile(TvSettingsCategory category, {String? settingId}) async {
    setState(() => _selected = category.id);
    final closed = Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: AppBar(title: Text(category.title)),
          body: SafeArea(
            top: false,
            minimum: const EdgeInsets.only(bottom: 12),
            child: SettingsWorkspaceScope(
              help: _help,
              categoryId: category.id,
              advanced: _advanced,
              settingKeys: _settingKeys,
              onRegistered: (id, title, description) => _registered['${category.id}:$id'] = TvSettingsSearchEntry(
                categoryId: category.id,
                title: title,
                settingId: id,
                keywords: description,
              ),
              child: SettingsSurface(child: _MobileSettingsCategory(category: category)),
            ),
          ),
        ),
      ),
    );
    if (settingId != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) _focusSetting(settingId);
      });
    }
    await closed;
  }
}

/// Keeps a compact preview visible while settings scroll; it can be collapsed
/// when the viewer wants more room for the form.
class _MobileSettingsCategory extends StatefulWidget {
  const _MobileSettingsCategory({required this.category});
  final TvSettingsCategory category;

  @override
  State<_MobileSettingsCategory> createState() => _MobileSettingsCategoryState();
}

class _MobileSettingsCategoryState extends State<_MobileSettingsCategory> {
  bool? _expanded;

  @override
  Widget build(BuildContext context) {
    final showPreview =
        PlatformDetector.isMobile(context) && const {'appearance', 'home', 'library'}.contains(widget.category.id);
    if (!showPreview) return Builder(builder: widget.category.builder);
    _expanded ??= MediaQuery.sizeOf(context).height >= 500;
    return Column(
      children: [
        if (_expanded!) MobileSettingsPreviewFrame(categoryId: widget.category.id),
        Align(
          alignment: Alignment.centerRight,
          child: TextButton.icon(
            key: const ValueKey('mobile-settings-preview-toggle'),
            onPressed: () => setState(() => _expanded = !_expanded!),
            icon: Icon(_expanded! ? Icons.expand_less_rounded : Icons.visibility_outlined, size: 18),
            label: Text(t.tvSettingsV2.previewLive),
          ),
        ),
        Expanded(child: Builder(builder: widget.category.builder)),
      ],
    );
  }
}

class _SettingsSearchDialog extends StatefulWidget {
  const _SettingsSearchDialog({required this.entries});
  final List<TvSettingsSearchEntry> entries;
  @override
  State<_SettingsSearchDialog> createState() => _SettingsSearchDialogState();
}

class _SettingsSearchDialogState extends State<_SettingsSearchDialog> {
  final _query = TextEditingController();
  final _first = FocusNode();
  @override
  void dispose() {
    _query.dispose();
    _first.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final query = _query.text.trim().toLowerCase();
    final results = widget.entries
        .where((e) => query.isEmpty ? e.settingId == null : '${e.title} ${e.keywords}'.toLowerCase().contains(query))
        .toList();
    return Dialog(
      child: SizedBox(
        width: 640,
        height: MediaQuery.sizeOf(context).height * .75,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              FocusableTextField(
                controller: _query,
                autofocus: true,
                decoration: InputDecoration(
                  labelText: t.lurokaWorkspace.searchSettings,
                  prefixIcon: const Icon(Icons.search_rounded),
                ),
                onChanged: (_) => setState(() {}),
                onNavigateDown: _first.requestFocus,
                onSubmitted: (_) => _first.requestFocus(),
              ),
              const SizedBox(height: 12),
              Expanded(
                child: ListView.builder(
                  itemCount: results.length,
                  itemBuilder: (context, index) => FocusableListTile(
                    focusNode: index == 0 ? _first : null,
                    title: Text(results[index].title),
                    subtitle: results[index].advanced ? Text(t.settings.advanced) : null,
                    onTap: () => Navigator.of(context).pop(results[index]),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
