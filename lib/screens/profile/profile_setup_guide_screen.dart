import 'dart:async';
import '../../providers/discover_provider.dart';
import '../../providers/multi_server_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../focus/focusable_button.dart';
import '../../focus/key_event_utils.dart';
import '../../i18n/strings.g.dart';
import '../../media/home_layout.dart';
import '../../profiles/active_profile_provider.dart';
import '../../providers/home_layout_provider.dart';
import '../../providers/theme_provider.dart';
import '../../services/profile_appearance_service.dart';
import '../../services/settings_service.dart' as settings;
import '../../theme/mono_theme.dart';
import '../../utils/error_dialog.dart';
import '../../widgets/focusable_list_tile.dart';
import '../../widgets/live_home_preview.dart';
import '../../widgets/device_preview_frame.dart';
import '../../widgets/expanded_settings_preview.dart';
import '../../widgets/settings_preview_thumbnail.dart';
import '../../widgets/palette_swatch.dart';
import '../settings/settings_utils.dart';
import '../settings/studio_preferences_screen.dart';

/// Optional, device-local customization shown only to newly created profiles.
class ProfileSetupGuideScreen extends StatefulWidget {
  const ProfileSetupGuideScreen({super.key, required this.profileId});
  final String profileId;

  @override
  State<ProfileSetupGuideScreen> createState() => _ProfileSetupGuideScreenState();
}

class _ProfileSetupGuideScreenState extends State<ProfileSetupGuideScreen> {
  late final settings.SettingsService _settings;
  late final ActiveProfileProvider _active;
  late final HomeLayoutProvider _home;
  late final int _ownerGeneration;
  late final settings.ThemeMode _initialTheme;
  late final bool _initialPosterDetails;
  late final bool _initialThemeMusic;
  late final bool _initialShowSpotlight;
  late final HomeSpotlightSource _initialSpotlight;
  late final bool _initialSplit;
  late final bool _initialEpisodeThumbnails;
  late HomeLayout _studioDraft;
  bool _studiosEdited = false;
  late settings.ThemeMode _theme;
  late bool _posterDetails;
  late bool _themeMusic;
  late bool _showSpotlight;
  late HomeSpotlightSource _spotlight;
  late bool _split;
  late bool _episodeThumbnails;
  bool _initialized = false;
  bool _moreThemes = false;
  bool _busy = false;
  int _page = 0;
  final FocusNode _pageStart = FocusNode(debugLabel: 'guide_page_start');
  final ScrollController _formScroll = ScrollController();

  @override
  void dispose() {
    _pageStart.dispose();
    _formScroll.dispose();
    super.dispose();
  }

  void _showPage(int page) {
    if (_formScroll.hasClients) _formScroll.jumpTo(0);
    FocusManager.instance.primaryFocus?.unfocus();
    setState(() => _page = page);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      _pageStart.requestFocus();
      if (_formScroll.hasClients) _formScroll.jumpTo(0);
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_initialized) return;
    _initialized = true;
    _settings = settings.SettingsService.instance;
    _active = context.read<ActiveProfileProvider>();
    _home = context.read<HomeLayoutProvider>();
    _ownerGeneration = _active.committedIdentityGeneration;
    _theme = _initialTheme = _settings.readForProfile(widget.profileId, settings.SettingsService.themeMode);
    _posterDetails = _initialPosterDetails = _settings.readForProfile(
      widget.profileId,
      settings.SettingsService.posterDetails,
    );
    _themeMusic = _initialThemeMusic = _settings.readForProfile(
      widget.profileId,
      settings.SettingsService.showThemeMusic,
    );
    _showSpotlight = _initialShowSpotlight = _settings.readForProfile(
      widget.profileId,
      settings.SettingsService.showHeroSection,
    );
    _spotlight = _initialSpotlight = _home.layout.spotlightSource;
    _split = _initialSplit = _home.layout.splitContinueWatching;
    _episodeThumbnails = _initialEpisodeThumbnails = _settings.readForProfile(
      widget.profileId,
      settings.SettingsService.homeEpisodeThumbnails,
    );
    _studioDraft = _home.layout;
    final discover = context.read<DiscoverProvider?>();
    final servers = context.read<MultiServerProvider?>();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      unawaited(() async {
        if (_active.isBinding) await _active.awaitBindingSettle();
        if (!_isCurrent || discover == null || servers == null) return;
        await discover.syncToOnlineServers(servers.onlineServerIds.toSet());
      }());
    });
  }

  bool get _isCurrent =>
      mounted && _active.activeId == widget.profileId && _active.committedIdentityGeneration == _ownerGeneration;

  Future<void> _finish({required bool useDefaults}) async {
    if (_busy || !_isCurrent) return;
    setState(() => _busy = true);
    try {
      if (!useDefaults) {
        if (_spotlight != _initialSpotlight || _split != _initialSplit || _studiosEdited) {
          await _home.setGuideChoices(
            spotlight: _spotlight != _initialSpotlight ? _spotlight : null,
            splitProgress: _split != _initialSplit ? _split : null,
            studioOrder: _studiosEdited ? _studioDraft.studioOrder : null,
            hiddenStudios: _studiosEdited ? _studioDraft.hiddenStudios : null,
          );
          if (!_isCurrent) return;
        }
        await _settings.saveProfileAppearanceChoices(
          profileId: widget.profileId,
          theme: _theme != _initialTheme ? _theme : null,
          showPosterDetails: _posterDetails != _initialPosterDetails ? _posterDetails : null,
          playThemeMusic: _themeMusic != _initialThemeMusic ? _themeMusic : null,
          showSpotlight: _showSpotlight != _initialShowSpotlight ? _showSpotlight : null,
          showEpisodeThumbnails: _episodeThumbnails != _initialEpisodeThumbnails ? _episodeThumbnails : null,
        );
        if (!_isCurrent) return;
      }
      await ProfileAppearanceService.instance.completePersonalization(widget.profileId);
      if (mounted && _isCurrent) Navigator.of(context).pop();
    } catch (_) {
      if (mounted && _isCurrent) await showErrorDialog(context, t.household.saveFailed);
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  void _back() {
    if (_busy) return;
    if (_page == 1) {
      _showPage(0);
    } else {
      _finish(useDefaults: true);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, _) {
        if (!didPop) _back();
      },
      child: Focus(
        canRequestFocus: false,
        onKeyEvent: (_, event) => handleBackKeyAction(event, _back),
        child: Scaffold(
          body: SafeArea(
            child: LayoutBuilder(
              builder: (context, constraints) {
                final wide = constraints.maxWidth >= 900 && constraints.maxHeight >= 480;
                final controls = Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      _page == 0 ? t.profileSetupGuide.appearanceStep : t.profileSetupGuide.homeStep,
                      style: theme.textTheme.labelLarge?.copyWith(color: theme.colorScheme.primary),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        for (var i = 0; i < 2; i++) ...[
                          if (i > 0) const SizedBox(width: 6),
                          Expanded(
                            child: Container(
                              height: 4,
                              decoration: BoxDecoration(
                                color: i <= _page ? theme.colorScheme.primary : theme.colorScheme.outlineVariant,
                                borderRadius: BorderRadius.circular(3),
                              ),
                            ),
                          ),
                        ],
                      ],
                    ),
                    const SizedBox(height: 8),
                    Focus(
                      focusNode: _pageStart,
                      child: Text(t.profileSetupGuide.title, style: theme.textTheme.headlineMedium),
                    ),
                    const SizedBox(height: 8),
                    Text(t.profileSetupGuide.description, style: theme.textTheme.bodyMedium),
                    const SizedBox(height: 20),
                    if (_page == 0) _appearanceChoices(context) else _homeChoices(context),
                    const SizedBox(height: 24),
                    Wrap(
                      spacing: 12,
                      runSpacing: 10,
                      children: [
                        if (_page == 1)
                          _button(
                            key: const ValueKey('profile-guide-back'),
                            label: t.profileSetupGuide.back,
                            onPressed: _back,
                          ),
                        _button(
                          key: const ValueKey('profile-guide-next'),
                          label: _page == 0 ? t.profileSetupGuide.kContinue : t.profileSetupGuide.finish,
                          primary: true,
                          autofocus: true,
                          onPressed: _page == 0 ? () => _showPage(1) : () => _finish(useDefaults: false),
                        ),
                        _button(
                          key: const ValueKey('profile-guide-skip'),
                          label: t.profileSetupGuide.skip,
                          onPressed: () => _finish(useDefaults: true),
                        ),
                      ],
                    ),
                  ],
                );
                final form = SingleChildScrollView(
                  key: const ValueKey('profile-guide-form'),
                  controller: _formScroll,
                  padding: EdgeInsets.fromLTRB(wide ? 48 : 20, 24, wide ? 0 : 20, 24),
                  child: controls,
                );
                if (wide) {
                  return Center(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 1100),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(flex: 6, child: form),
                          const SizedBox(width: 32),
                          Expanded(
                            flex: 5,
                            child: SingleChildScrollView(
                              padding: const EdgeInsets.fromLTRB(0, 24, 48, 24),
                              child: _preview(context),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }
                final previewHeight = (constraints.maxHeight * .25).clamp(90.0, 180.0);
                return Column(
                  children: [
                    SizedBox(
                      height: previewHeight,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 8, 20, 0),
                        child: _preview(context, thumbnailHeight: previewHeight - 64),
                      ),
                    ),
                    Expanded(child: form),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _button({
    required Key key,
    required String label,
    required VoidCallback onPressed,
    bool primary = false,
    bool autofocus = false,
  }) {
    final callback = _busy ? null : onPressed;
    return FocusableButton(
      autofocus: autofocus,
      onPressed: callback,
      child: primary
          ? FilledButton(key: key, onPressed: callback, child: Text(label))
          : OutlinedButton(key: key, onPressed: callback, child: Text(label)),
    );
  }

  Widget _appearanceChoices(BuildContext context) {
    final featured = [settings.ThemeMode.lurokaCoral, settings.ThemeMode.dark, settings.ThemeMode.light];
    final modes = [
      ...featured,
      if (_moreThemes)
        ...{
          ...settings.ThemeMode.cinemaDark,
          ...settings.ThemeMode.cinemaLight,
        }.where((mode) => !featured.contains(mode) && !mode.isSupporterPerk),
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(t.settings.theme, style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 8),
        LayoutBuilder(
          builder: (context, bounds) {
            final columns = bounds.maxWidth >= 500 ? 3 : 2;
            final width = (bounds.maxWidth - (columns - 1) * 8) / columns;
            return Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                for (final mode in modes)
                  SizedBox(
                    width: width,
                    child: Semantics(
                      selected: _theme == mode,
                      child: FocusableButton(
                        onPressed: _busy ? null : () => setState(() => _theme = mode),
                        child: OutlinedButton(
                          key: ValueKey('profile-guide-theme-${mode.name}'),
                          onPressed: _busy ? null : () => setState(() => _theme = mode),
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                            foregroundColor: Theme.of(context).colorScheme.onSurface,
                            backgroundColor: Theme.of(context).colorScheme.surfaceContainerLow,
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                            alignment: Alignment.centerLeft,
                            side: BorderSide(
                              color: _theme == mode
                                  ? Theme.of(context).colorScheme.primary
                                  : Theme.of(context).colorScheme.outlineVariant,
                              width: _theme == mode ? 2 : 1,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Center(
                                child: PaletteSwatch(
                                  palette: ThemeProvider.paletteFor(mode),
                                  size: 64,
                                  aspectRatio: 1.6,
                                ),
                              ),
                              const SizedBox(height: 12),
                              Row(
                                children: [
                                  Expanded(
                                    child: SizedBox(
                                      height: MediaQuery.textScalerOf(context).scale(16) * 2.6,
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(themeModeLabel(mode), maxLines: 2, overflow: TextOverflow.ellipsis),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 4),
                                  Icon(
                                    _theme == mode ? Icons.check_circle : Icons.circle_outlined,
                                    size: 18,
                                    color: Theme.of(context).colorScheme.primary,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            );
          },
        ),
        const SizedBox(height: 8),
        _button(
          key: const ValueKey('profile-guide-more-themes'),
          label: _moreThemes ? t.profileSetupGuide.fewerThemes : t.profileSetupGuide.moreThemes,
          onPressed: () => setState(() => _moreThemes = !_moreThemes),
        ),
        const SizedBox(height: 16),
        FocusableSwitchListTile(
          key: const ValueKey('profile-guide-posters'),
          title: Text(t.posterDetails.title),
          subtitle: Text(_posterDetails ? t.profileSetupGuide.posterWithDetails : t.profileSetupGuide.posterArtwork),
          value: _posterDetails,
          onChanged: _busy ? null : (value) => setState(() => _posterDetails = value),
        ),
        FocusableSwitchListTile(
          key: const ValueKey('profile-guide-music'),
          title: Text(t.posterDetails.showThemeMusic),
          subtitle: Text(t.profileSetupGuide.musicDescription),
          value: _themeMusic,
          onChanged: _busy ? null : (value) => setState(() => _themeMusic = value),
        ),
      ],
    );
  }

  Widget _homeChoices(BuildContext context) {
    String description(HomeSpotlightSource source) => switch (source) {
      HomeSpotlightSource.forYou => t.homeLayout.spotlightForYouDescription,
      HomeSpotlightSource.trending => t.homeLayout.spotlightTrendingDescription,
      HomeSpotlightSource.continueWatching => t.homeLayout.spotlightContinueDescription,
    };
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FocusableSwitchListTile(
          key: const ValueKey('profile-guide-show-spotlight'),
          title: Text(t.dashboard.showFeatured),
          subtitle: Text(t.dashboard.showFeaturedDescription),
          value: _showSpotlight,
          onChanged: _busy ? null : (value) => setState(() => _showSpotlight = value),
        ),
        Text(t.profileSetupGuide.spotlightHeading, style: Theme.of(context).textTheme.titleMedium),
        for (final source in HomeSpotlightSource.values)
          FocusableListTile(
            key: ValueKey('profile-guide-spotlight-${source.name}'),
            title: Text(_spotlightLabel(source)),
            subtitle: Text(description(source)),
            leading: Icon(_spotlight == source ? Icons.radio_button_checked : Icons.radio_button_unchecked),
            selected: _spotlight == source,
            onTap: _busy ? null : () => setState(() => _spotlight = source),
          ),
        const SizedBox(height: 16),
        Text(t.profileSetupGuide.progressHeading, style: Theme.of(context).textTheme.titleMedium),
        Text(t.homeLayout.progressDescription, style: Theme.of(context).textTheme.bodySmall),
        for (final split in [false, true])
          FocusableListTile(
            key: ValueKey('profile-guide-progress-$split'),
            title: Text(split ? t.homeLayout.progressSeparate : t.homeLayout.progressCombined),
            leading: Icon(_split == split ? Icons.radio_button_checked : Icons.radio_button_unchecked),
            selected: _split == split,
            onTap: _busy ? null : () => setState(() => _split = split),
          ),
        FocusableSwitchListTile(
          key: const ValueKey('profile-guide-episode-thumbnails'),
          title: Text(t.homeLayout.episodeThumbnails),
          subtitle: Text(t.homeLayout.episodeThumbnailsDescription),
          value: _episodeThumbnails,
          onChanged: _busy ? null : (value) => setState(() => _episodeThumbnails = value),
        ),
        FocusableListTile(
          key: const ValueKey('profile-guide-studios'),
          title: Text(t.homeLayout.manageStudios),
          subtitle: Text(t.homeLayout.manageStudiosDescription),
          trailing: const Icon(Icons.chevron_right),
          onTap: _busy
              ? null
              : () => Navigator.of(context).push(
                  MaterialPageRoute<void>(
                    builder: (_) => StudioPreferencesScreen(
                      draft: _studioDraft.copyWith(spotlightSource: _spotlight, splitContinueWatching: _split),
                      previewTheme: monoTheme(
                        ThemeProvider.paletteFor(
                              _theme,
                              customPalette: _settings.readForProfile(
                                widget.profileId,
                                settings.SettingsService.customThemePalette,
                              ),
                            ) ??
                            (Theme.of(context).brightness == Brightness.dark ? MonoPalette.dark : MonoPalette.light),
                      ).copyWith(platform: Theme.of(context).platform),
                      showSpotlight: _showSpotlight,
                      posterDetails: _posterDetails,
                      episodeThumbnails: _episodeThumbnails,
                      onDraftChanged: (layout) {
                        if (_isCurrent) {
                          setState(() {
                            _studioDraft = layout;
                            _studiosEdited = true;
                          });
                        }
                      },
                    ),
                  ),
                ),
        ),
      ],
    );
  }

  String _spotlightLabel(HomeSpotlightSource source) => switch (source) {
    HomeSpotlightSource.forYou => t.homeLayout.spotlightForYou,
    HomeSpotlightSource.trending => t.homeLayout.spotlightTrending,
    HomeSpotlightSource.continueWatching => t.homeLayout.spotlightContinue,
  };

  Widget _preview(BuildContext context, {bool expanded = false, double thumbnailHeight = 240}) {
    final custom = _settings.readForProfile(widget.profileId, settings.SettingsService.customThemePalette);
    final palette =
        ThemeProvider.paletteFor(_theme, customPalette: custom) ??
        (Theme.of(context).brightness == Brightness.dark ? MonoPalette.dark : MonoPalette.light);
    return Semantics(
      label: t.profileSetupGuide.preview,
      child: Container(
        key: ValueKey(expanded ? 'profile-guide-preview-expanded' : 'profile-guide-preview'),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (!expanded)
              Row(
                children: [
                  Expanded(
                    child: Text(t.profileSetupGuide.previewTitle, style: Theme.of(context).textTheme.titleSmall),
                  ),
                  IconButton(
                    tooltip: t.common.fullscreen,
                    icon: const Icon(Icons.open_in_full_rounded),
                    onPressed: () => showExpandedSettingsPreview(context, _preview(context, expanded: true)),
                  ),
                ],
              ),
            const SizedBox(height: 8),
            if (!expanded)
              SizedBox(
                height: thumbnailHeight,
                child: SettingsPreviewThumbnail(
                  preview: _preview(context, expanded: true),
                  onExpand: () => showExpandedSettingsPreview(context, _preview(context, expanded: true)),
                ),
              )
            else
              Theme(
                data: monoTheme(palette).copyWith(platform: Theme.of(context).platform),
                child: DevicePreviewFrame(
                  child: LiveHomePreview(
                    layout: _studioDraft.copyWith(spotlightSource: _spotlight, splitContinueWatching: _split),
                    showSpotlight: _showSpotlight,
                    posterDetails: _posterDetails,
                    episodeThumbnails: _episodeThumbnails,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
