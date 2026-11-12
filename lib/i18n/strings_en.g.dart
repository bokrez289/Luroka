///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations with BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations
	late final Translations$mobileLibrary$en mobileLibrary = Translations$mobileLibrary$en.internal(_root);
	late final Translations$profileStartup$en profileStartup = Translations$profileStartup$en.internal(_root);
	late final Translations$subtitleUpload$en subtitleUpload = Translations$subtitleUpload$en.internal(_root);
	late final Translations$personSpotlight$en personSpotlight = Translations$personSpotlight$en.internal(_root);
	late final Translations$detailExtras$en detailExtras = Translations$detailExtras$en.internal(_root);
	late final Translations$mobileUi$en mobileUi = Translations$mobileUi$en.internal(_root);
	late final Translations$family$en family = Translations$family$en.internal(_root);
	late final Translations$posterDetails$en posterDetails = Translations$posterDetails$en.internal(_root);
	late final Translations$libraryPolish$en libraryPolish = Translations$libraryPolish$en.internal(_root);
	late final Translations$showSchedule$en showSchedule = Translations$showSchedule$en.internal(_root);
	late final Translations$awardsCatalog$en awardsCatalog = Translations$awardsCatalog$en.internal(_root);
	late final Translations$searchDiscovery$en searchDiscovery = Translations$searchDiscovery$en.internal(_root);
	late final Translations$lurokaPlayerDesign$en lurokaPlayerDesign = Translations$lurokaPlayerDesign$en.internal(_root);
	late final Translations$lurokaWorkspace$en lurokaWorkspace = Translations$lurokaWorkspace$en.internal(_root);
	late final Translations$mobileFixes$en mobileFixes = Translations$mobileFixes$en.internal(_root);
	late final Translations$downloadsRedesign$en downloadsRedesign = Translations$downloadsRedesign$en.internal(_root);
	late final Translations$kidsShelf$en kidsShelf = Translations$kidsShelf$en.internal(_root);
	late final Translations$kidsHome$en kidsHome = Translations$kidsHome$en.internal(_root);
	late final Translations$tvSettingsV2$en tvSettingsV2 = Translations$tvSettingsV2$en.internal(_root);
	late final Translations$settingsRedesign$en settingsRedesign = Translations$settingsRedesign$en.internal(_root);
	late final Translations$onboarding$en onboarding = Translations$onboarding$en.internal(_root);
	late final Translations$household$en household = Translations$household$en.internal(_root);
	late final Translations$detailComposition$en detailComposition = Translations$detailComposition$en.internal(_root);
	late final Translations$kids$en kids = Translations$kids$en.internal(_root);
	late final Translations$lurokaDiscovery$en lurokaDiscovery = Translations$lurokaDiscovery$en.internal(_root);
	late final Translations$app$en app = Translations$app$en.internal(_root);
	late final Translations$appIcon$en appIcon = Translations$appIcon$en.internal(_root);
	late final Translations$auth$en auth = Translations$auth$en.internal(_root);
	late final Translations$common$en common = Translations$common$en.internal(_root);
	late final Translations$tvHints$en tvHints = Translations$tvHints$en.internal(_root);
	late final Translations$screens$en screens = Translations$screens$en.internal(_root);
	late final Translations$mediaExtras$en mediaExtras = Translations$mediaExtras$en.internal(_root);
	late final Translations$update$en update = Translations$update$en.internal(_root);
	late final Translations$supporter$en supporter = Translations$supporter$en.internal(_root);
	late final Translations$settings$en settings = Translations$settings$en.internal(_root);
	late final Translations$themeEditor$en themeEditor = Translations$themeEditor$en.internal(_root);
	late final Translations$seriesBrowser$en seriesBrowser = Translations$seriesBrowser$en.internal(_root);
	late final Translations$titlePage$en titlePage = Translations$titlePage$en.internal(_root);
	late final Translations$tvMenus$en tvMenus = Translations$tvMenus$en.internal(_root);
	late final Translations$lurokaPlayer$en lurokaPlayer = Translations$lurokaPlayer$en.internal(_root);
	late final Translations$lurokaSettings$en lurokaSettings = Translations$lurokaSettings$en.internal(_root);
	late final Translations$playerChrome$en playerChrome = Translations$playerChrome$en.internal(_root);
	late final Translations$tvLayout$en tvLayout = Translations$tvLayout$en.internal(_root);
	late final Translations$studios$en studios = Translations$studios$en.internal(_root);
	late final Translations$dashboard$en dashboard = Translations$dashboard$en.internal(_root);
	late final Translations$lurokaCatalog$en lurokaCatalog = Translations$lurokaCatalog$en.internal(_root);
	late final Translations$referenceDetails$en referenceDetails = Translations$referenceDetails$en.internal(_root);
	late final Translations$lurokaThemes$en lurokaThemes = Translations$lurokaThemes$en.internal(_root);
	late final Translations$customPerformance$en customPerformance = Translations$customPerformance$en.internal(_root);
	late final Translations$homeLayout$en homeLayout = Translations$homeLayout$en.internal(_root);
	late final Translations$screenTime$en screenTime = Translations$screenTime$en.internal(_root);
	late final Translations$activityStats$en activityStats = Translations$activityStats$en.internal(_root);
	late final Translations$search$en search = Translations$search$en.internal(_root);
	late final Translations$hotkeys$en hotkeys = Translations$hotkeys$en.internal(_root);
	late final Translations$fileInfo$en fileInfo = Translations$fileInfo$en.internal(_root);
	late final Translations$mediaMenu$en mediaMenu = Translations$mediaMenu$en.internal(_root);
	late final Translations$rateSheet$en rateSheet = Translations$rateSheet$en.internal(_root);
	late final Translations$accessibility$en accessibility = Translations$accessibility$en.internal(_root);
	late final Translations$tooltips$en tooltips = Translations$tooltips$en.internal(_root);
	late final Translations$audioTracks$en audioTracks = Translations$audioTracks$en.internal(_root);
	late final Translations$videoControls$en videoControls = Translations$videoControls$en.internal(_root);
	late final Translations$messages$en messages = Translations$messages$en.internal(_root);
	late final Translations$sourceLibraries$en sourceLibraries = Translations$sourceLibraries$en.internal(_root);
	late final Translations$subtitlingStyling$en subtitlingStyling = Translations$subtitlingStyling$en.internal(_root);
	late final Translations$mpvConfig$en mpvConfig = Translations$mpvConfig$en.internal(_root);
	late final Translations$dialog$en dialog = Translations$dialog$en.internal(_root);
	late final Translations$profiles$en profiles = Translations$profiles$en.internal(_root);
	late final Translations$connections$en connections = Translations$connections$en.internal(_root);
	late final Translations$serversAccounts$en serversAccounts = Translations$serversAccounts$en.internal(_root);
	late final Translations$accountPreferences$en accountPreferences = Translations$accountPreferences$en.internal(_root);
	late final Translations$discover$en discover = Translations$discover$en.internal(_root);
	late final Translations$errors$en errors = Translations$errors$en.internal(_root);
	late final Translations$libraries$en libraries = Translations$libraries$en.internal(_root);
	late final Translations$about$en about = Translations$about$en.internal(_root);
	late final Translations$serverSelection$en serverSelection = Translations$serverSelection$en.internal(_root);
	late final Translations$hubDetail$en hubDetail = Translations$hubDetail$en.internal(_root);
	late final Translations$logs$en logs = Translations$logs$en.internal(_root);
	late final Translations$startup$en startup = Translations$startup$en.internal(_root);
	late final Translations$licenses$en licenses = Translations$licenses$en.internal(_root);
	late final Translations$navigation$en navigation = Translations$navigation$en.internal(_root);
	late final Translations$explore$en explore = Translations$explore$en.internal(_root);
	late final Translations$liveTv$en liveTv = Translations$liveTv$en.internal(_root);
	late final Translations$collections$en collections = Translations$collections$en.internal(_root);
	late final Translations$playlists$en playlists = Translations$playlists$en.internal(_root);
	late final Translations$music$en music = Translations$music$en.internal(_root);
	late final Translations$watchTogether$en watchTogether = Translations$watchTogether$en.internal(_root);
	late final Translations$downloads$en downloads = Translations$downloads$en.internal(_root);
	late final Translations$shaders$en shaders = Translations$shaders$en.internal(_root);
	late final Translations$companionRemote$en companionRemote = Translations$companionRemote$en.internal(_root);
	late final Translations$videoSettings$en videoSettings = Translations$videoSettings$en.internal(_root);
	late final Translations$performanceOverlay$en performanceOverlay = Translations$performanceOverlay$en.internal(_root);
	late final Translations$externalPlayer$en externalPlayer = Translations$externalPlayer$en.internal(_root);
	late final Translations$metadataEdit$en metadataEdit = Translations$metadataEdit$en.internal(_root);
	late final Translations$matchScreen$en matchScreen = Translations$matchScreen$en.internal(_root);
	late final Translations$serverTasks$en serverTasks = Translations$serverTasks$en.internal(_root);
	late final Translations$trakt$en trakt = Translations$trakt$en.internal(_root);
	late final Translations$seerr$en seerr = Translations$seerr$en.internal(_root);
	late final Translations$services$en services = Translations$services$en.internal(_root);
	late final Translations$offlineRecovery$en offlineRecovery = Translations$offlineRecovery$en.internal(_root);
	late final Translations$releaseUpdates$en releaseUpdates = Translations$releaseUpdates$en.internal(_root);
	late final Translations$profileIntegrations$en profileIntegrations = Translations$profileIntegrations$en.internal(_root);
	late final Translations$profileSetupGuide$en profileSetupGuide = Translations$profileSetupGuide$en.internal(_root);
	late final Translations$animeFavorites$en animeFavorites = Translations$animeFavorites$en.internal(_root);
	late final Translations$addServer$en addServer = Translations$addServer$en.internal(_root);
}

// Path: mobileLibrary
class Translations$mobileLibrary$en {
	Translations$mobileLibrary$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Choose a collection to explore'
	String get pickerSubtitle => 'Choose a collection to explore';

	/// en: 'Search libraries'
	String get searchLibraries => 'Search libraries';

	/// en: 'No matching libraries'
	String get noLibraries => 'No matching libraries';

	/// en: 'Ascending'
	String get ascending => 'Ascending';

	/// en: 'Descending'
	String get descending => 'Descending';

	/// en: 'Sort'
	String get sort => 'Sort';

	/// en: '$count unwatched episodes'
	String unwatchedCount({required Object count}) => '${count} unwatched episodes';

	/// en: 'Latest episode'
	String get latestEpisode => 'Latest episode';
}

// Path: profileStartup
class Translations$profileStartup$en {
	Translations$profileStartup$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Open the last used profile'
	String get autoLogin => 'Open the last used profile';

	/// en: 'Automatically open the last profile when it does not require a PIN.'
	String get autoLoginHint => 'Automatically open the last profile when it does not require a PIN.';

	/// en: 'Allow leaving Kids without a parent PIN'
	String get allowKidsExit => 'Allow leaving Kids without a parent PIN';

	/// en: 'Lets a child switch to another profile without the parent PIN. Profile PINs still apply.'
	String get allowKidsExitHint => 'Lets a child switch to another profile without the parent PIN. Profile PINs still apply.';

	/// en: 'Choose a different account or server'
	String get chooseKidsConnection => 'Choose a different account or server';

	/// en: 'After saving, connect a separate account or choose a connection from another profile.'
	String get chooseKidsConnectionHint => 'After saving, connect a separate account or choose a connection from another profile.';
}

// Path: subtitleUpload
class Translations$subtitleUpload$en {
	Translations$subtitleUpload$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Upload subtitle file'
	String get chooseFile => 'Upload subtitle file';

	/// en: 'Choose the language above, then upload an SRT, ASS, SSA or VTT file to this server.'
	String get hint => 'Choose the language above, then upload an SRT, ASS, SSA or VTT file to this server.';

	/// en: 'Subtitle uploaded to the server. It will appear when the server refreshes the item.'
	String get success => 'Subtitle uploaded to the server. It will appear when the server refreshes the item.';

	/// en: 'Could not upload the subtitle. Check the file and server permissions.'
	String get failed => 'Could not upload the subtitle. Check the file and server permissions.';
}

// Path: personSpotlight
class Translations$personSpotlight$en {
	Translations$personSpotlight$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'in your libraries'
	String get inYourLibraries => 'in your libraries';

	/// en: 'In your libraries · ${n} titles'
	String libraryTitles({required Object n}) => 'In your libraries · ${n} titles';

	/// en: 'Read biography'
	String get readBiography => 'Read biography';

	/// en: 'Newest first'
	String get newestFirst => 'Newest first';

	/// en: 'Oldest first'
	String get oldestFirst => 'Oldest first';

	/// en: 'Title A–Z'
	String get titleAscending => 'Title A–Z';

	/// en: 'Sort filmography'
	String get sortTitles => 'Sort filmography';

	/// en: '${n} unwatched episodes'
	String unwatchedEpisodes({required Object n}) => '${n} unwatched episodes';

	/// en: '${n} library copies'
	String copies({required Object n}) => '${n} library copies';

	/// en: '${n} file versions'
	String versions({required Object n}) => '${n} file versions';

	/// en: 'Could not load all titles. Retry'
	String get retryTitles => 'Could not load all titles. Retry';
}

// Path: detailExtras
class Translations$detailExtras$en {
	Translations$detailExtras$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Trailers & extras'
	String get onlineVideos => 'Trailers & extras';

	/// en: 'Reviews'
	String get reviews => 'Reviews';

	/// en: 'Read full review'
	String get readReview => 'Read full review';

	/// en: 'More directed by ${name}'
	String directedBy({required Object name}) => 'More directed by ${name}';

	/// en: 'This preview could not be played. You can open it in its original app instead.'
	String get previewUnavailable => 'This preview could not be played. You can open it in its original app instead.';

	/// en: 'Open original video'
	String get openExternally => 'Open original video';
}

// Path: mobileUi
class Translations$mobileUi$en {
	Translations$mobileUi$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Read more'
	String get readMore => 'Read more';

	/// en: 'Show less'
	String get readLess => 'Show less';

	/// en: 'Playback options'
	String get playbackTools => 'Playback options';

	/// en: 'Streaming quality'
	String get streamingQuality => 'Streaming quality';

	/// en: 'File versions'
	String get fileVersions => 'File versions';

	/// en: 'Streaming quality & file versions'
	String get qualityAndVersions => 'Streaming quality & file versions';

	/// en: 'Hide playback tools'
	String get hidePlaybackTools => 'Hide playback tools';

	/// en: '$time left'
	String remaining({required Object time}) => '${time} left';

	/// en: 'Ends at $time'
	String endsAt({required Object time}) => 'Ends at ${time}';

	/// en: 'Your collection'
	String get collection => 'Your collection';

	/// en: 'NOW PLAYING'
	String get nowPlaying => 'NOW PLAYING';

	/// en: 'Popular in your library'
	String get popularLibrary => 'Popular in your library';

	/// en: 'Trending in your library this week'
	String get weeklyLibrary => 'Trending in your library this week';
}

// Path: family
class Translations$family$en {
	Translations$family$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Profiles & Family'
	String get title => 'Profiles & Family';

	/// en: 'Your people'
	String get yourPeople => 'Your people';

	/// en: 'Manage people, kids’ safety and viewing activity on this device.'
	String get manageHint => 'Manage people, kids’ safety and viewing activity on this device.';

	/// en: 'People'
	String get people => 'People';

	/// en: '(one) {$n person} (other) {$n people}'
	String peopleCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		one: '${n} person',
		other: '${n} people',
	);

	/// en: '(one) {$n child} (other) {$n kids}'
	String kidsCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		one: '${n} child',
		other: '${n} kids',
	);

	/// en: 'You'
	String get you => 'You';

	/// en: 'Adult'
	String get adult => 'Adult';

	/// en: 'Child'
	String get child => 'Child';

	/// en: 'Adult or teen'
	String get adultTeen => 'Adult or teen';

	/// en: 'Their own profile, optional Profile PIN and their own server connections.'
	String get adultHint => 'Their own profile, optional Profile PIN and their own server connections.';

	/// en: 'Age limits, safe libraries and a kid-friendly look. A Parent PIN protects these controls.'
	String get childHint => 'Age limits, safe libraries and a kid-friendly look. A Parent PIN protects these controls.';

	/// en: 'Up to age $age'
	String upToAge({required Object age}) => 'Up to age ${age}';

	/// en: 'All ages'
	String get allAges => 'All ages';

	/// en: 'Switch profile'
	String get switchProfile => 'Switch profile';

	/// en: 'Choose who is watching. Managing a person does not switch profiles.'
	String get switchHint => 'Choose who is watching. Managing a person does not switch profiles.';

	/// en: 'Add person'
	String get addPerson => 'Add person';

	/// en: 'Add child'
	String get addChild => 'Add child';

	/// en: 'Create an adult, teen or child profile on this device.'
	String get addHint => 'Create an adult, teen or child profile on this device.';

	/// en: 'Make room for everyone who watches with you.'
	String get emptyPeople => 'Make room for everyone who watches with you.';

	/// en: 'No kids profiles yet. Add a child to choose age limits and safe libraries.'
	String get emptyKids => 'No kids profiles yet. Add a child to choose age limits and safe libraries.';

	/// en: 'Kids & safety'
	String get safety => 'Kids & safety';

	/// en: 'Parent PIN, kids profiles and age restrictions.'
	String get safetyHint => 'Parent PIN, kids profiles and age restrictions.';

	/// en: 'Protection'
	String get protection => 'Protection';

	/// en: 'Kids profiles'
	String get kidsProfiles => 'Kids profiles';

	/// en: 'Backup & history'
	String get backupHistory => 'Backup & history';

	/// en: 'Parent PIN on'
	String get parentPinOn => 'Parent PIN on';

	/// en: 'Profile PIN'
	String get profilePin => 'Profile PIN';

	/// en: 'Confirm Parent PIN'
	String get confirmParentPin => 'Confirm Parent PIN';

	/// en: 'Parent PIN not set'
	String get parentPinOff => 'Parent PIN not set';

	/// en: 'Add a Parent PIN to protect these controls.'
	String get missingPin => 'Add a Parent PIN to protect these controls.';

	/// en: 'Hide kids’ activity from Continue Watching in this Luroka profile. This does not change shared server watch history.'
	String get hideScope => 'Hide kids’ activity from Continue Watching in this Luroka profile. This does not change shared server watch history.';

	/// en: 'Kids profiles and restrictions are stored on this device. Profiles using the same server account still share that account’s watch progress.'
	String get localScope => 'Kids profiles and restrictions are stored on this device. Profiles using the same server account still share that account’s watch progress.';

	/// en: 'Allow titles watched by kids to appear in Continue Watching again? Kids profiles, restrictions, viewing-time statistics and server watch history will be kept.'
	String get clearHistoryConfirm => 'Allow titles watched by kids to appear in Continue Watching again? Kids profiles, restrictions, viewing-time statistics and server watch history will be kept.';

	/// en: 'Edit kids restrictions'
	String get editRestrictions => 'Edit kids restrictions';

	/// en: 'Viewing activity'
	String get activity => 'Viewing activity';

	/// en: '$name’s viewing activity'
	String namedActivity({required Object name}) => '${name}’s viewing activity';

	/// en: 'This profile'
	String get thisProfile => 'This profile';

	/// en: 'Playback time recorded by Luroka on this device for the active profile. These are statistics, not viewing limits or complete server history.'
	String get activityScope => 'Playback time recorded by Luroka on this device for the active profile. These are statistics, not viewing limits or complete server history.';

	/// en: 'Viewing activity is not available for this profile yet.'
	String get activityUnavailable => 'Viewing activity is not available for this profile yet.';

	/// en: 'Done'
	String get finished => 'Done';
}

// Path: posterDetails
class Translations$posterDetails$en {
	Translations$posterDetails$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Play theme music'
	String get showThemeMusic => 'Play theme music';

	/// en: 'Play a movie or show's theme while its details page is open, when available on the server.'
	String get showThemeMusicDescription => 'Play a movie or show\'s theme while its details page is open, when available on the server.';

	/// en: 'Show episode count and runtime on catalog cards'
	String get catalogEpisodeInfo => 'Show episode count and runtime on catalog cards';

	/// en: 'Show episode counts and average duration on Discover posters.'
	String get catalogEpisodeInfoDescription => 'Show episode counts and average duration on Discover posters.';

	/// en: 'Poster details'
	String get title => 'Poster details';

	/// en: 'Show the title, year and IMDb rating beneath posters across Studio, Search, Discover and Libraries. Missing IMDb ratings stay hidden. Turn off for artwork-only posters.'
	String get description => 'Show the title, year and IMDb rating beneath posters across Studio, Search, Discover and Libraries. Missing IMDb ratings stay hidden. Turn off for artwork-only posters.';
}

// Path: libraryPolish
class Translations$libraryPolish$en {
	Translations$libraryPolish$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Compact library navigation'
	String get compactTvNavigation => 'Compact library navigation';

	/// en: 'Show library sections and browse options in a slide-out menu, leaving more room for posters.'
	String get compactTvNavigationDescription => 'Show library sections and browse options in a slide-out menu, leaving more room for posters.';

	/// en: 'Open library menu'
	String get openLibraryMenu => 'Open library menu';

	/// en: 'Poster details'
	String get posterDetails => 'Poster details';

	/// en: 'Show poster details · name, year & IMDb'
	String get showPosterDetails => 'Show poster details · name, year & IMDb';

	/// en: 'Hide poster details'
	String get hidePosterDetails => 'Hide poster details';

	/// en: 'Overview'
	String get overview => 'Overview';

	/// en: 'Refreshing library…'
	String get refreshing => 'Refreshing library…';

	/// en: 'All collections on this server'
	String get serverCollections => 'All collections on this server';

	/// en: 'All video playlists on this server'
	String get serverPlaylists => 'All video playlists on this server';

	/// en: 'Collections in this library'
	String get libraryCollections => 'Collections in this library';

	/// en: 'Search collections'
	String get searchCollections => 'Search collections';

	/// en: 'Search playlists'
	String get searchPlaylists => 'Search playlists';

	/// en: 'Search by name'
	String get searchHint => 'Search by name';

	/// en: 'Title A–Z'
	String get titleAscending => 'Title A–Z';

	/// en: 'Title Z–A'
	String get titleDescending => 'Title Z–A';

	/// en: 'Clear filters'
	String get clearFilters => 'Clear filters';

	/// en: 'Your movie nights, in your order'
	String get playlistEmptyTitle => 'Your movie nights, in your order';

	/// en: 'Open a title’s More menu and choose Add to playlist to create your first playlist.'
	String get playlistEmptyHint => 'Open a title’s More menu and choose Add to playlist to create your first playlist.';

	/// en: 'No matching names'
	String get noMatches => 'No matching names';

	/// en: 'Searching the full catalogue…'
	String get indexing => 'Searching the full catalogue…';
}

// Path: showSchedule
class Translations$showSchedule$en {
	Translations$showSchedule$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Today'
	String get today => 'Today';

	/// en: 'Tomorrow'
	String get tomorrow => 'Tomorrow';

	/// en: 'Latest & Upcoming'
	String get latestUpcoming => 'Latest & Upcoming';

	/// en: 'Latest episode'
	String get latestEpisode => 'Latest episode';

	/// en: 'Upcoming'
	String get upcoming => 'Upcoming';

	/// en: 'In your library'
	String get inLibrary => 'In your library';

	/// en: 'Not in your library'
	String get notInLibrary => 'Not in your library';

	/// en: 'Not yet aired'
	String get notYetAired => 'Not yet aired';

	/// en: 'Episode $number'
	String episode({required Object number}) => 'Episode ${number}';

	/// en: 'You’re all caught up'
	String get caughtUp => 'You’re all caught up';

	/// en: 'You’ve finished this series'
	String get finished => 'You’ve finished this series';

	/// en: 'Next episode airs $date'
	String nextAirs({required Object date}) => 'Next episode airs ${date}';

	/// en: 'Watch from beginning'
	String get watchBeginning => 'Watch from beginning';

	/// en: 'Replay'
	String get replay => 'Replay';

	/// en: 'Play next'
	String get playNext => 'Play next';
}

// Path: awardsCatalog
class Translations$awardsCatalog$en {
	Translations$awardsCatalog$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Awards'
	String get awards => 'Awards';

	/// en: 'Customize'
	String get customize => 'Customize';

	/// en: 'Customize Discover'
	String get chooseShelves => 'Customize Discover';

	/// en: 'Choose the rows you want on Discover. Award rows show winners from your libraries. Your choices are saved for this profile.'
	String get shelvesDescription => 'Choose the rows you want on Discover. Award rows show winners from your libraries. Your choices are saved for this profile.';

	/// en: 'Restore defaults'
	String get restoreShelves => 'Restore defaults';

	/// en: 'IMDb charts'
	String get charts => 'IMDb charts';

	/// en: 'Popular & trending'
	String get generalShelves => 'Popular & trending';

	/// en: 'Could not save your Discover choices. Please try again.'
	String get saveShelvesFailed => 'Could not save your Discover choices. Please try again.';

	/// en: 'Lead Actress · Comedy'
	String get comedyActress => 'Lead Actress · Comedy';

	/// en: 'Lead Actor · Drama'
	String get leadDramaActor => 'Lead Actor · Drama';

	/// en: 'Lead Actress · Drama'
	String get leadDramaActress => 'Lead Actress · Drama';

	/// en: 'Supporting Actor · Comedy'
	String get comedySupportingActor => 'Supporting Actor · Comedy';

	/// en: 'Supporting Actress · Comedy'
	String get comedySupportingActress => 'Supporting Actress · Comedy';

	/// en: 'Silver Bear · Best Leading Performance'
	String get leadingPerformance => 'Silver Bear · Best Leading Performance';

	/// en: 'Best Television Series · Musical or Comedy'
	String get globesComedySeries => 'Best Television Series · Musical or Comedy';

	/// en: 'Supporting Actor · Limited Series or Movie'
	String get limitedSupportingActor => 'Supporting Actor · Limited Series or Movie';

	/// en: 'Supporting Actress · Limited Series or Movie'
	String get limitedSupportingActress => 'Supporting Actress · Limited Series or Movie';

	/// en: 'Berlinale Documentary Award'
	String get berlinDocumentary => 'Berlinale Documentary Award';

	/// en: 'Awards & festivals'
	String get title => 'Awards & festivals';

	/// en: 'Choose an award category'
	String get chooseCategory => 'Choose an award category';

	/// en: 'Winners'
	String get winners => 'Winners';

	/// en: 'Nominees'
	String get nominees => 'Nominees';

	/// en: 'Release decade'
	String get releaseDecade => 'Release decade';

	/// en: 'All years'
	String get allYears => 'All years';

	/// en: 'Loading award titles…'
	String get loading => 'Loading award titles…';

	/// en: 'Finding these titles in your libraries…'
	String get matching => 'Finding these titles in your libraries…';

	/// en: 'Award data is unavailable right now. Try again.'
	String get unavailable => 'Award data is unavailable right now. Try again.';

	/// en: 'No matching titles in your visible libraries for this category.'
	String get empty => 'No matching titles in your visible libraries for this category.';

	/// en: 'Membership comes from Wikidata and can be incomplete. Actor and director categories show the films or shows they were awarded for. Years refer to title release, not the ceremony.'
	String get coverage => 'Membership comes from Wikidata and can be incomplete. Actor and director categories show the films or shows they were awarded for. Years refer to title release, not the ceremony.';

	/// en: 'Best Picture'
	String get picture => 'Best Picture';

	/// en: 'Best Film'
	String get film => 'Best Film';

	/// en: 'Best International Feature'
	String get international => 'Best International Feature';

	/// en: 'Best International Film'
	String get internationalFilm => 'Best International Film';

	/// en: 'Best Film Not in the English Language'
	String get nonEnglishFilm => 'Best Film Not in the English Language';

	/// en: 'Best Animated Feature'
	String get animated => 'Best Animated Feature';

	/// en: 'Best Animated Film'
	String get animatedFilm => 'Best Animated Film';

	/// en: 'Best Documentary Feature'
	String get documentary => 'Best Documentary Feature';

	/// en: 'Best Director'
	String get director => 'Best Director';

	/// en: 'Best Actor'
	String get actor => 'Best Actor';

	/// en: 'Best Actress'
	String get actress => 'Best Actress';

	/// en: 'Best Supporting Actor'
	String get supportingActor => 'Best Supporting Actor';

	/// en: 'Best Supporting Actress'
	String get supportingActress => 'Best Supporting Actress';

	/// en: 'Best Original Screenplay'
	String get originalScreenplay => 'Best Original Screenplay';

	/// en: 'Best Adapted Screenplay'
	String get adaptedScreenplay => 'Best Adapted Screenplay';

	/// en: 'Best Screenplay'
	String get screenplay => 'Best Screenplay';

	/// en: 'Best Cinematography'
	String get cinematography => 'Best Cinematography';

	/// en: 'Best Editing'
	String get editing => 'Best Editing';

	/// en: 'Best Original Score'
	String get score => 'Best Original Score';

	/// en: 'Best Original Song'
	String get song => 'Best Original Song';

	/// en: 'Best Sound'
	String get sound => 'Best Sound';

	/// en: 'Best Visual Effects'
	String get effects => 'Best Visual Effects';

	/// en: 'Best Production Design'
	String get productionDesign => 'Best Production Design';

	/// en: 'Best Costume Design'
	String get costume => 'Best Costume Design';

	/// en: 'Best Makeup and Hairstyling'
	String get makeup => 'Best Makeup and Hairstyling';

	/// en: 'Outstanding Drama Series'
	String get dramaSeries => 'Outstanding Drama Series';

	/// en: 'Outstanding Comedy Series'
	String get comedySeries => 'Outstanding Comedy Series';

	/// en: 'Outstanding Limited Series'
	String get limitedSeries => 'Outstanding Limited Series';

	/// en: 'Outstanding Animated Program'
	String get animatedProgram => 'Outstanding Animated Program';

	/// en: 'Lead Actor · Comedy'
	String get comedyActor => 'Lead Actor · Comedy';

	/// en: 'Lead Actor · Limited Series or Movie'
	String get limitedActor => 'Lead Actor · Limited Series or Movie';

	/// en: 'Lead Actress · Limited Series or Movie'
	String get limitedActress => 'Lead Actress · Limited Series or Movie';

	/// en: 'Directing · Limited Series or Movie'
	String get limitedDirecting => 'Directing · Limited Series or Movie';

	/// en: 'Best British Film'
	String get britishFilm => 'Best British Film';

	/// en: 'Golden Bear'
	String get goldenBear => 'Golden Bear';

	/// en: 'Grand Jury Prize'
	String get grandJury => 'Grand Jury Prize';

	/// en: 'Jury Prize'
	String get jury => 'Jury Prize';

	/// en: 'Teddy Award'
	String get teddy => 'Teddy Award';

	/// en: 'Golden Lion'
	String get goldenLion => 'Golden Lion';

	/// en: 'Volpi Cup · Best Actor'
	String get volpiActor => 'Volpi Cup · Best Actor';

	/// en: 'Volpi Cup · Best Actress'
	String get volpiActress => 'Volpi Cup · Best Actress';

	/// en: 'Queer Lion'
	String get queerLion => 'Queer Lion';

	/// en: 'Best Motion Picture · Drama'
	String get dramaFilm => 'Best Motion Picture · Drama';

	/// en: 'Best Motion Picture · Musical or Comedy'
	String get comedyFilm => 'Best Motion Picture · Musical or Comedy';

	/// en: 'Best Actor · Drama'
	String get dramaActor => 'Best Actor · Drama';

	/// en: 'Best Actress · Drama'
	String get dramaActress => 'Best Actress · Drama';

	/// en: 'U.S. Dramatic Grand Jury Prize'
	String get usDramatic => 'U.S. Dramatic Grand Jury Prize';

	/// en: 'Documentary Grand Jury Prize'
	String get documentaryJury => 'Documentary Grand Jury Prize';

	/// en: 'World Cinema Grand Jury Prize'
	String get worldCinema => 'World Cinema Grand Jury Prize';

	/// en: 'U.S. Dramatic Audience Award'
	String get dramaticAudience => 'U.S. Dramatic Audience Award';

	/// en: 'U.S. Directing Award'
	String get usDirecting => 'U.S. Directing Award';

	/// en: 'People’s Choice Award'
	String get peopleChoice => 'People’s Choice Award';

	/// en: 'Best Canadian Film'
	String get canadianFilm => 'Best Canadian Film';

	/// en: 'Best First Feature'
	String get firstFeature => 'Best First Feature';

	/// en: 'John Cassavetes Award'
	String get cassavetes => 'John Cassavetes Award';

	/// en: 'Best Science Fiction Film'
	String get scienceFiction => 'Best Science Fiction Film';

	/// en: 'Best Fantasy Film'
	String get fantasy => 'Best Fantasy Film';

	/// en: 'Best Horror Film'
	String get horror => 'Best Horror Film';

	/// en: 'Best Action or Adventure Film'
	String get action => 'Best Action or Adventure Film';

	/// en: 'Best Thriller Film'
	String get thriller => 'Best Thriller Film';
}

// Path: searchDiscovery
class Translations$searchDiscovery$en {
	Translations$searchDiscovery$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Something to watch'
	String get suggestions => 'Something to watch';

	/// en: 'Awards & collections'
	String get collections => 'Awards & collections';

	/// en: 'Award winners and curated charts from your libraries'
	String get collectionsHint => 'Award winners and curated charts from your libraries';

	/// en: 'All discovery'
	String get all => 'All discovery';

	/// en: 'Awards & charts'
	String get awards => 'Awards & charts';
}

// Path: lurokaPlayerDesign
class Translations$lurokaPlayerDesign$en {
	Translations$lurokaPlayerDesign$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Seek preview'
	String get seeking => 'Seek preview';

	/// en: 'Keep watching'
	String get keepWatching => 'Keep watching';

	/// en: 'Up next'
	String get upNext => 'Up next';

	/// en: 'Playing in $seconds s'
	String playingIn({required Object seconds}) => 'Playing in ${seconds} s';
}

// Path: lurokaWorkspace
class Translations$lurokaWorkspace$en {
	Translations$lurokaWorkspace$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Everyday'
	String get everyday => 'Everyday';

	/// en: 'Home & Discovery'
	String get homeDiscovery => 'Home & Discovery';

	/// en: 'Libraries & Accounts'
	String get librariesAccounts => 'Libraries & Accounts';

	/// en: 'Profiles & Family'
	String get profilesFamily => 'Profiles & Family';

	/// en: 'This device'
	String get thisDevice => 'This device';

	/// en: 'This profile'
	String get thisProfile => 'This profile';

	/// en: 'Search settings'
	String get searchSettings => 'Search settings';

	/// en: 'Changes are saved automatically. Everyday and Advanced only change which controls are shown.'
	String get savedAutomatically => 'Changes are saved automatically. Everyday and Advanced only change which controls are shown.';

	/// en: 'Audio & Subtitles'
	String get audioSubtitles => 'Audio & Subtitles';

	/// en: 'Sound output, volume and subtitle appearance. Preferred languages are set per server account using Account preferences when connected.'
	String get audioDescription => 'Sound output, volume and subtitle appearance. Preferred languages are set per server account using Account preferences when connected.';

	/// en: 'Picture & Sound'
	String get pictureSound => 'Picture & Sound';

	/// en: 'Frame-rate matching, resolution, HDR and Dolby Vision tuning for this device.'
	String get pictureDescription => 'Frame-rate matching, resolution, HDR and Dolby Vision tuning for this device.';

	/// en: 'Player engine, decoding, custom configuration and advanced playback rules.'
	String get engineDescription => 'Player engine, decoding, custom configuration and advanced playback rules.';

	/// en: 'Network & Streaming'
	String get networkStreaming => 'Network & Streaming';

	/// en: 'Streaming quality, direct-play codec preferences and bandwidth choices.'
	String get networkDescription => 'Streaming quality, direct-play codec preferences and bandwidth choices.';

	/// en: 'Home options'
	String get homeOptions => 'Home options';

	/// en: 'Refresh Home & Popular Now'
	String get refreshHome => 'Refresh Home & Popular Now';

	/// en: 'Customize Home'
	String get customizeHome => 'Customize Home';

	/// en: 'Home Spotlight'
	String get spotlight => 'Home Spotlight';

	/// en: 'Automatically rotate featured titles'
	String get rotateSpotlight => 'Automatically rotate featured titles';

	/// en: 'Rotate while Home is idle. Interaction pauses rotation; browsing shelves, opening a page or leaving the app pauses it completely.'
	String get rotateDescription => 'Rotate while Home is idle. Interaction pauses rotation; browsing shelves, opening a page or leaving the app pauses it completely.';

	/// en: 'Time between featured titles'
	String get rotationInterval => 'Time between featured titles';
}

// Path: mobileFixes
class Translations$mobileFixes$en {
	Translations$mobileFixes$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Server unavailable? Manage your accounts or connect another server.'
	String get connectionRecoveryHint => 'Server unavailable? Manage your accounts or connect another server.';
}

// Path: downloadsRedesign
class Translations$downloadsRedesign$en {
	Translations$downloadsRedesign$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Items per shelf'
	String get shelfSize => 'Items per shelf';

	/// en: 'Show 16, 32 or 48 items in Continue Watching and recommendation shelves. Servers may return fewer available titles.'
	String get shelfSizeHint => 'Show 16, 32 or 48 items in Continue Watching and recommendation shelves. Servers may return fewer available titles.';

	/// en: 'Your favorites, ready for the journey.'
	String get subtitle => 'Your favorites, ready for the journey.';

	/// en: 'Transfers'
	String get transfers => 'Transfers';

	/// en: 'Ready offline'
	String get ready => 'Ready offline';

	/// en: 'Downloading'
	String get active => 'Downloading';

	/// en: 'Waiting'
	String get waiting => 'Waiting';

	/// en: 'Downloaded'
	String get downloaded => 'Downloaded';

	/// en: 'Download speed'
	String get speed => 'Download speed';

	/// en: '{progress} · {networkSpeed} · {timeRemaining} remaining'
	String get notificationProgress => '{progress} · {networkSpeed} · {timeRemaining} remaining';
}

// Path: kidsShelf
class Translations$kidsShelf$en {
	Translations$kidsShelf$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Movie time'
	String get movieShelf => 'Movie time';

	/// en: 'Find your next show'
	String get showShelf => 'Find your next show';

	/// en: 'Aurora — deep teal & lime'
	String get aurora => 'Aurora — deep teal & lime';

	/// en: 'Marquee — velvet & gold'
	String get marquee => 'Marquee — velvet & gold';

	/// en: 'Electric — indigo & ice'
	String get electric => 'Electric — indigo & ice';

	/// en: 'Midnight — steel & amber'
	String get midnight => 'Midnight — steel & amber';

	/// en: 'Your movie shelf'
	String get yourShelf => 'Your movie shelf';

	/// en: 'Everything'
	String get all => 'Everything';

	/// en: 'What do you want to watch?'
	String get pickSomething => 'What do you want to watch?';
}

// Path: kidsHome
class Translations$kidsHome$en {
	Translations$kidsHome$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'For you'
	String get everything => 'For you';

	/// en: 'Keep watching'
	String get keepWatching => 'Keep watching';

	/// en: 'Nothing here yet. Try For you, or ask your grown-up to add something you love.'
	String get emptyFilter => 'Nothing here yet. Try For you, or ask your grown-up to add something you love.';
}

// Path: tvSettingsV2
class Translations$tvSettingsV2$en {
	Translations$tvSettingsV2$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'More themes & custom colors'
	String get moreThemes => 'More themes & custom colors';

	/// en: 'Open all available presets and custom theme options.'
	String get moreThemesHint => 'Open all available presets and custom theme options.';

	/// en: 'Live preview'
	String get previewLive => 'Live preview';

	/// en: 'Preview example'
	String get previewIllustration => 'Preview example';

	/// en: 'Up to $count items per shelf'
	String previewShelfCount({required Object count}) => 'Up to ${count} items per shelf';

	/// en: 'Simple'
	String get simple => 'Simple';

	/// en: 'Home & Navigation'
	String get homeNavigation => 'Home & Navigation';

	/// en: 'Library & Cards'
	String get libraryCards => 'Library & Cards';

	/// en: 'Accounts & Libraries'
	String get accountsLibraries => 'Accounts & Libraries';

	/// en: 'Profiles & Family'
	String get profilesFamily => 'Profiles & Family';

	/// en: 'About & Support'
	String get aboutSupport => 'About & Support';

	/// en: 'Playback'
	String get playback => 'Playback';

	/// en: 'Choose what appears on Home and in navigation.'
	String get homeHint => 'Choose what appears on Home and in navigation.';

	/// en: 'Adjust poster sizes, labels, and watched indicators.'
	String get libraryHint => 'Adjust poster sizes, labels, and watched indicators.';

	/// en: 'Player engine & streaming'
	String get advancedPlayback => 'Player engine & streaming';

	/// en: 'Player, video output, streaming and advanced playback choices.'
	String get advancedPlaybackHint => 'Player, video output, streaming and advanced playback choices.';

	/// en: 'Diagnostics & backups'
	String get advancedTools => 'Diagnostics & backups';

	/// en: 'Logs, troubleshooting, settings backup and reset.'
	String get advancedToolsHint => 'Logs, troubleshooting, settings backup and reset.';

	/// en: 'Theme preview'
	String get themePreview => 'Theme preview';

	/// en: 'Library preview'
	String get libraryPreview => 'Library preview';

	/// en: 'Home preview'
	String get homePreview => 'Home preview';

	/// en: 'Subtitle preview'
	String get subtitlePreview => 'Subtitle preview';

	/// en: 'Your subtitles will look like this.'
	String get subtitleSample => 'Your subtitles will look like this.';

	/// en: 'Your artwork appears here'
	String get previewPlaceholder => 'Your artwork appears here';

	/// en: 'Poster size'
	String get posterSize => 'Poster size';

	/// en: 'Home recommendations from your server'
	String get serverRecommendations => 'Home recommendations from your server';

	/// en: 'Use TV layout'
	String get tvLayout => 'Use TV layout';

	/// en: 'Use hardware video decoding'
	String get hardwareDecode => 'Use hardware video decoding';

	/// en: 'Show server names on Home rows'
	String get serverNames => 'Show server names on Home rows';

	/// en: 'Changes are saved automatically.'
	String get settingsSaved => 'Changes are saved automatically.';

	/// en: 'Advanced playback'
	String get morePlayback => 'Advanced playback';

	/// en: 'Picture & Sound'
	String get screenDisplay => 'Picture & Sound';

	/// en: 'Player engine'
	String get engine => 'Player engine';

	/// en: 'Streaming & network'
	String get network => 'Streaming & network';

	/// en: 'Performance'
	String get performance => 'Performance';

	/// en: 'Languages & subtitle appearance'
	String get simpleAudio => 'Languages & subtitle appearance';
}

// Path: settingsRedesign
class Translations$settingsRedesign$en {
	Translations$settingsRedesign$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Theme & Effects'
	String get themeEffects => 'Theme & Effects';

	/// en: 'Library Layout'
	String get libraryLayout => 'Library Layout';

	/// en: 'Poster information'
	String get posterInformation => 'Poster information';

	/// en: 'Library behavior'
	String get libraryBehavior => 'Library behavior';

	/// en: 'Customize the look, layout and behavior of Luroka.'
	String get appearanceHint => 'Customize the look, layout and behavior of Luroka.';

	/// en: 'Live Preview'
	String get livePreview => 'Live Preview';

	/// en: 'See how your library will look with the current settings.'
	String get previewHint => 'See how your library will look with the current settings.';

	/// en: 'Show Live TV'
	String get showLiveTv => 'Show Live TV';

	/// en: 'Show Live TV in navigation when a connected server supports it. This does not change your server.'
	String get showLiveTvHint => 'Show Live TV in navigation when a connected server supports it. This does not change your server.';

	/// en: 'Your media. Your space.'
	String get aboutTagline => 'Your media. Your space.';

	/// en: 'Luroka brings your Plex, Jellyfin and Emby libraries together in a cinematic player for phones, TVs and desktops.'
	String get aboutDescription => 'Luroka brings your Plex, Jellyfin and Emby libraries together in a cinematic player for phones, TVs and desktops.';

	/// en: 'Browse your libraries, resume movies and shows, personalize profiles, enjoy downloads and watch together. Live TV is available with a compatible server.'
	String get aboutFeatures => 'Browse your libraries, resume movies and shows, personalize profiles, enjoy downloads and watch together. Live TV is available with a compatible server.';

	/// en: 'Connect your world'
	String get services => 'Connect your world';

	/// en: 'Update source'
	String get updateSource => 'Update source';

	/// en: 'HTTPS address of your Luroka release feed. Your distributor can preconfigure this in the app.'
	String get updateSourceHint => 'HTTPS address of your Luroka release feed. Your distributor can preconfigure this in the app.';

	/// en: 'Automatic updates are not configured for this build.'
	String get updateNotConfigured => 'Automatic updates are not configured for this build.';

	/// en: 'Download & install'
	String get downloadInstall => 'Download & install';

	/// en: 'Install update'
	String get installUpdate => 'Install update';

	/// en: 'Downloading update…'
	String get downloading => 'Downloading update…';

	/// en: 'Could not download or verify the update. Please try again.'
	String get downloadFailed => 'Could not download or verify the update. Please try again.';

	/// en: 'Allow Luroka to install updates in Android settings, then return and select Install update.'
	String get installPermission => 'Allow Luroka to install updates in Android settings, then return and select Install update.';

	/// en: 'Download verified. Ready to install.'
	String get updateReady => 'Download verified. Ready to install.';

	/// en: 'Release notes'
	String get releaseNotes => 'Release notes';

	/// en: 'Enter a valid HTTPS update feed address.'
	String get invalidFeed => 'Enter a valid HTTPS update feed address.';
}

// Path: onboarding
class Translations$onboarding$en {
	Translations$onboarding$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: '01 · Connect'
	String get connectStep => '01 · Connect';

	/// en: 'Welcome to Luroka'
	String get connectTitle => 'Welcome to Luroka';

	/// en: 'Sign in to bring your libraries here.'
	String get connectHint => 'Sign in to bring your libraries here.';

	/// en: 'Enter your server address, or choose a server found on your network.'
	String get serverAddressHint => 'Enter your server address, or choose a server found on your network.';

	/// en: 'Use your server username and password to connect your libraries.'
	String get serverSignInHint => 'Use your server username and password to connect your libraries.';

	/// en: 'Server address'
	String get serverAddressTitle => 'Server address';

	/// en: 'Your server account'
	String get serverAccountTitle => 'Your server account';

	/// en: 'Choose your Plex Home user'
	String get plexHomeTitle => 'Choose your Plex Home user';

	/// en: 'Select the Plex user whose libraries you want to use. You’ll set up your Luroka profile next.'
	String get plexHomeHint => 'Select the Plex user whose libraries you want to use. You’ll set up your Luroka profile next.';

	/// en: 'Choose your service'
	String get chooseService => 'Choose your service';

	/// en: '02 · Your profile'
	String get profileStep => '02 · Your profile';

	/// en: 'Make yourself at home.'
	String get profileTitle => 'Make yourself at home.';

	/// en: 'Choose a name and an avatar for your Luroka profile. Your connected account stays the same.'
	String get profileHint => 'Choose a name and an avatar for your Luroka profile. Your connected account stays the same.';

	/// en: '03 · Ready to watch'
	String get readyStep => '03 · Ready to watch';

	/// en: 'A little more you.'
	String get readyTitle => 'A little more you.';

	/// en: 'Bring your services together or make room for someone else. You can always do this later.'
	String get readyHint => 'Bring your services together or make room for someone else. You can always do this later.';

	/// en: 'Connect another service'
	String get addService => 'Connect another service';

	/// en: 'Edit your name & avatar'
	String get editProfile => 'Edit your name & avatar';

	/// en: 'Connected and ready'
	String get connected => 'Connected and ready';

	/// en: 'Back to your profile'
	String get backToProfile => 'Back to your profile';

	/// en: 'Show other Plex Home members'
	String get showOtherPlexHome => 'Show other Plex Home members';

	/// en: 'Off by default. Your Luroka profiles and Plex Home members you’ve used stay visible. Turn on to choose someone else.'
	String get showOtherPlexHomeHint => 'Off by default. Your Luroka profiles and Plex Home members you’ve used stay visible. Turn on to choose someone else.';
}

// Path: household
class Translations$household$en {
	Translations$household$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Your Luroka household'
	String get title => 'Your Luroka household';

	/// en: 'Make Luroka yours'
	String get welcome => 'Make Luroka yours';

	/// en: 'Your first account is connected. Personalise your profile or add someone else before you start watching.'
	String get welcomeHint => 'Your first account is connected. Personalise your profile or add someone else before you start watching.';

	/// en: 'Profiles & household'
	String get profiles => 'Profiles & household';

	/// en: 'Add people, change pictures, and manage each profile’s connections.'
	String get manageHint => 'Add people, change pictures, and manage each profile’s connections.';

	/// en: 'Add Luroka profile'
	String get addProfile => 'Add Luroka profile';

	/// en: 'Each person can connect their own Plex, Emby or Jellyfin login. Only connections added to their profile appear for them.'
	String get addHint => 'Each person can connect their own Plex, Emby or Jellyfin login. Only connections added to their profile appear for them.';

	/// en: 'Reusing another profile’s connection shares that server user’s watched status and playback progress. Choose a separate login for independent viewing history.'
	String get sharedHint => 'Reusing another profile’s connection shares that server user’s watched status and playback progress. Choose a separate login for independent viewing history.';

	/// en: 'Personalise profile'
	String get personalise => 'Personalise profile';

	/// en: 'Change profile picture'
	String get changePicture => 'Change profile picture';

	/// en: 'Choose a Luroka avatar or a photo. This changes the picture on this device only; your server account is untouched.'
	String get pictureHint => 'Choose a Luroka avatar or a photo. This changes the picture on this device only; your server account is untouched.';

	/// en: 'Use server picture / initials'
	String get serverPicture => 'Use server picture / initials';

	/// en: 'Choose a photo'
	String get choosePhoto => 'Choose a photo';

	/// en: 'JPEG, PNG or another supported image, up to 10 MB. Photos are resized and stored on this device.'
	String get photoHint => 'JPEG, PNG or another supported image, up to 10 MB. Photos are resized and stored on this device.';

	/// en: 'Profile picture updated'
	String get pictureSaved => 'Profile picture updated';

	/// en: 'Could not update the profile picture. Try a supported image up to 10 MB.'
	String get pictureFailed => 'Could not update the profile picture. Try a supported image up to 10 MB.';

	/// en: 'Could not save profile settings. Please try again.'
	String get saveFailed => 'Could not save profile settings. Please try again.';

	/// en: 'Start watching'
	String get startWatching => 'Start watching';

	/// en: 'Manage or switch profiles'
	String get manageProfiles => 'Manage or switch profiles';

	/// en: 'You can add more people later in Settings → Profiles & household.'
	String get addLater => 'You can add more people later in Settings → Profiles & household.';

	/// en: 'Add a server connection to finish setting up this profile.'
	String get connectionRequired => 'Add a server connection to finish setting up this profile.';

	/// en: 'Mountain'
	String get mountain => 'Mountain';

	/// en: 'Explorer'
	String get orbit => 'Explorer';

	/// en: 'Ocean'
	String get waves => 'Ocean';

	/// en: 'Blossom'
	String get blossom => 'Blossom';

	/// en: 'Lightning'
	String get lightning => 'Lightning';

	/// en: 'Moon'
	String get moon => 'Moon';

	/// en: 'Choose an avatar'
	String get avatarGallery => 'Choose an avatar';

	/// en: 'Original illustrated portraits, kids and animal friends'
	String get avatarIllustrationHint => 'Original illustrated portraits, kids and animal friends';

	/// en: 'Sunrise portrait'
	String get avatarPortraitSunrise => 'Sunrise portrait';

	/// en: 'Meadow portrait'
	String get avatarPortraitMeadow => 'Meadow portrait';

	/// en: 'Berry portrait'
	String get avatarPortraitBerry => 'Berry portrait';

	/// en: 'Golden portrait'
	String get avatarPortraitGolden => 'Golden portrait';

	/// en: 'Indigo portrait'
	String get avatarPortraitIndigo => 'Indigo portrait';

	/// en: 'Ocean portrait'
	String get avatarPortraitOcean => 'Ocean portrait';

	/// en: 'Little artist'
	String get avatarKidArtist => 'Little artist';

	/// en: 'Little skater'
	String get avatarKidSkater => 'Little skater';

	/// en: 'Curious cat'
	String get avatarCat => 'Curious cat';

	/// en: 'Happy dog'
	String get avatarDog => 'Happy dog';

	/// en: 'Panda'
	String get avatarPanda => 'Panda';

	/// en: 'Owl'
	String get avatarOwl => 'Owl';

	/// en: 'Fox'
	String get avatarFox => 'Fox';

	/// en: 'Dinosaur'
	String get avatarDinosaur => 'Dinosaur';

	/// en: 'Robot'
	String get avatarRobot => 'Robot';
}

// Path: detailComposition
class Translations$detailComposition$en {
	Translations$detailComposition$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Start over'
	String get startOver => 'Start over';

	/// en: 'Series cast'
	String get seriesCast => 'Series cast';

	/// en: 'Streaming quality…'
	String get streamingQuality => 'Streaming quality…';

	/// en: 'Trailer'
	String get trailer => 'Trailer';

	/// en: 'Manage media…'
	String get manageMedia => 'Manage media…';

	/// en: 'Playback options…'
	String get playbackOptions => 'Playback options…';

	/// en: 'More actions'
	String get moreActions => 'More actions';

	/// en: 'Watched'
	String get watched => 'Watched';

	/// en: 'Unwatched'
	String get unwatched => 'Unwatched';

	/// en: 'Ends at $time'
	String endsAt({required Object time}) => 'Ends at ${time}';

	/// en: 'Automatic'
	String get automatic => 'Automatic';

	/// en: 'Use your playback preferences'
	String get usePreferences => 'Use your playback preferences';

	/// en: 'Media Information'
	String get mediaInformation => 'Media Information';

	/// en: 'Full file information'
	String get fullFileInformation => 'Full file information';

	/// en: 'Cast & Crew'
	String get castAndCrew => 'Cast & Crew';
}

// Path: kids
class Translations$kids$en {
	Translations$kids$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Screen time limits'
	String get timeLimits => 'Screen time limits';

	/// en: 'Daily watch time'
	String get dailyWatchLimit => 'Daily watch time';

	/// en: 'Limits video playback on this device each day.'
	String get dailyWatchLimitHint => 'Limits video playback on this device each day.';

	/// en: 'No limit'
	String get noTimeLimit => 'No limit';

	/// en: '${minutes} minutes'
	String minutesLimit({required Object minutes}) => '${minutes} minutes';

	/// en: 'Bedtime'
	String get bedtime => 'Bedtime';

	/// en: 'A parent PIN is needed to use this profile during these hours.'
	String get bedtimeHint => 'A parent PIN is needed to use this profile during these hours.';

	/// en: 'Bedtime starts'
	String get bedtimeStart => 'Bedtime starts';

	/// en: 'Bedtime ends'
	String get bedtimeEnd => 'Bedtime ends';

	/// en: 'Watch time is over for today'
	String get timeLimitReached => 'Watch time is over for today';

	/// en: 'It is bedtime'
	String get bedtimeReached => 'It is bedtime';

	/// en: 'Ask a parent to enter their PIN to continue for this session.'
	String get timeLimitParentHint => 'Ask a parent to enter their PIN to continue for this session.';

	/// en: 'Parent unlock'
	String get parentUnlock => 'Parent unlock';

	/// en: 'Back up kids profile'
	String get backupProfile => 'Back up kids profile';

	/// en: 'Back up this profile’s saved name, character, restrictions, appearance and local viewing exclusions. Parent PINs, server logins, downloads and server playback progress are not included.'
	String get backupExplain => 'Back up this profile’s saved name, character, restrictions, appearance and local viewing exclusions. Parent PINs, server logins, downloads and server playback progress are not included.';

	/// en: 'Save backup file'
	String get saveBackupFile => 'Save backup file';

	/// en: 'Copy backup text'
	String get copyBackup => 'Copy backup text';

	/// en: 'Kids profile backup saved to ${path}'
	String backupSaved({required Object path}) => 'Kids profile backup saved to ${path}';

	/// en: 'Kids profile backup copied'
	String get backupCopied => 'Kids profile backup copied';

	/// en: 'Could not save the kids profile backup. Please try again.'
	String get backupFailed => 'Could not save the kids profile backup. Please try again.';

	/// en: 'Restore kids profile'
	String get restoreProfile => 'Restore kids profile';

	/// en: 'Choose backup file'
	String get chooseBackupFile => 'Choose backup file';

	/// en: 'Paste backup text'
	String get pasteBackup => 'Paste backup text';

	/// en: 'Kids profile backup JSON'
	String get backupText => 'Kids profile backup JSON';

	/// en: 'Paste from clipboard'
	String get pasteFromClipboard => 'Paste from clipboard';

	/// en: 'Review these restored settings, then Save to create a new kids profile using your current server connections. Existing profiles are not overwritten. Library selections and viewing exclusions match only the same server/library IDs.'
	String get restoreReview => 'Review these restored settings, then Save to create a new kids profile using your current server connections. Existing profiles are not overwritten. Library selections and viewing exclusions match only the same server/library IDs.';

	/// en: 'This is not a valid supported kids profile backup. Choose a Luroka kids profile JSON backup.'
	String get restoreInvalid => 'This is not a valid supported kids profile backup. Choose a Luroka kids profile JSON backup.';

	/// en: 'Delete kids profile'
	String get deleteProfile => 'Delete kids profile';

	/// en: 'Delete ${name} from Luroka? Their local settings, downloads and viewing exclusions will be removed. Your server account and server-side history will remain. Create a backup first if you want to restore the profile later.'
	String deleteExplain({required Object name}) => 'Delete ${name} from Luroka? Their local settings, downloads and viewing exclusions will be removed. Your server account and server-side history will remain. Create a backup first if you want to restore the profile later.';

	/// en: 'Kids profile deleted'
	String get profileDeleted => 'Kids profile deleted';

	/// en: 'Allowed libraries'
	String get allowedLibraries => 'Allowed libraries';

	/// en: 'Previously selected library (currently unavailable)'
	String get unavailableLibrary => 'Previously selected library (currently unavailable)';

	/// en: 'Allow all connected movie and TV libraries'
	String get allLibraries => 'Allow all connected movie and TV libraries';

	/// en: 'Turn this off to choose specific libraries. Age and animation rules still apply inside the selected libraries. New libraries are not added automatically when using a selection.'
	String get librariesExplain => 'Turn this off to choose specific libraries. Age and animation rules still apply inside the selected libraries. New libraries are not added automatically when using a selection.';

	/// en: 'No movie or TV libraries are loaded. Connect to the server and open Libraries, then return here to choose.'
	String get librariesUnavailable => 'No movie or TV libraries are loaded. Connect to the server and open Libraries, then return here to choose.';

	/// en: 'No libraries selected: this child will not see any titles.'
	String get noLibrariesSelected => 'No libraries selected: this child will not see any titles.';

	/// en: 'Animation only'
	String get animationOnly => 'Animation only';

	/// en: 'Show only titles tagged with the Animation genre on your server. This does not replace the age limit: animation can also be intended for adults. Missing genre metadata is hidden.'
	String get animationExplain => 'Show only titles tagged with the Animation genre on your server. This does not replace the age limit: animation can also be intended for adults. Missing genre metadata is hidden.';

	/// en: 'Allow titles without an age rating'
	String get allowUnrated => 'Allow titles without an age rating';

	/// en: 'Off by default. When enabled, missing or unrated classifications can appear if the library and animation rules allow them. Their suitability cannot be checked by age. Known ratings above the age limit and unrecognized classifications remain hidden.'
	String get unratedExplain => 'Off by default. When enabled, missing or unrated classifications can appear if the library and animation rules allow them. Their suitability cannot be checked by age. Known ratings above the age limit and unrecognized classifications remain hidden.';

	/// en: 'Who’s watching?'
	String get whoIsWatching => 'Who’s watching?';

	/// en: 'A little world of big adventures.'
	String get chooseAdventure => 'A little world of big adventures.';

	/// en: 'Choose your space. Make it a movie night.'
	String get chooseProfile => 'Choose your space. Make it a movie night.';

	/// en: 'Hi, ${name}!'
	String welcome({required Object name}) => 'Hi, ${name}!';

	/// en: 'Your next great story, ${name}.'
	String welcomeOlder({required Object name}) => 'Your next great story, ${name}.';

	/// en: 'Big adventures. Little discoveries. All for you.'
	String get homeSubtitle => 'Big adventures. Little discoveries. All for you.';

	/// en: 'Find a new favourite. Pick up where you left off.'
	String get homeSubtitleOlder => 'Find a new favourite. Pick up where you left off.';

	/// en: 'Today’s big adventure'
	String get featured => 'Today’s big adventure';

	/// en: 'In the spotlight'
	String get featuredOlder => 'In the spotlight';

	/// en: 'More info'
	String get moreInfo => 'More info';

	/// en: 'Movies'
	String get movies => 'Movies';

	/// en: 'Shows'
	String get shows => 'Shows';

	/// en: 'Profiles'
	String get profiles => 'Profiles';

	/// en: 'Grown-ups'
	String get adultBadge => 'Grown-ups';

	/// en: 'Choose your character'
	String get avatar => 'Choose your character';

	/// en: 'Space explorer'
	String get avatarExplorer => 'Space explorer';

	/// en: 'Fox'
	String get avatarFox => 'Fox';

	/// en: 'Dinosaur'
	String get avatarDinosaur => 'Dinosaur';

	/// en: 'Robot'
	String get avatarRobot => 'Robot';

	/// en: 'Little artist'
	String get avatarChildArtist => 'Little artist';

	/// en: 'Little skater'
	String get avatarChildSkater => 'Little skater';

	/// en: 'Sunrise portrait'
	String get avatarSunrisePerson => 'Sunrise portrait';

	/// en: 'Ocean portrait'
	String get avatarOceanPerson => 'Ocean portrait';

	/// en: 'Curious cat'
	String get avatarCat => 'Curious cat';

	/// en: 'Happy dog'
	String get avatarDog => 'Happy dog';

	/// en: 'Panda'
	String get avatarPanda => 'Panda';

	/// en: 'Owl'
	String get avatarOwl => 'Owl';

	/// en: 'Bear'
	String get avatarBear => 'Bear';

	/// en: 'Keep the adventure going'
	String get continueAdventure => 'Keep the adventure going';

	/// en: 'New stories to discover'
	String get freshStories => 'New stories to discover';

	/// en: 'Movie-time favourites'
	String get yourMovies => 'Movie-time favourites';

	/// en: 'One more episode'
	String get yourShows => 'One more episode';

	/// en: 'New adventures will appear here when your server has titles with an allowed age classification.'
	String get emptyHint => 'New adventures will appear here when your server has titles with an allowed age classification.';

	/// en: 'Luroka Kids'
	String get title => 'Luroka Kids';

	/// en: 'Add kids profile'
	String get addProfile => 'Add kids profile';

	/// en: 'Parental controls'
	String get parentalControls => 'Parental controls';

	/// en: 'Parent PIN'
	String get parentPin => 'Parent PIN';

	/// en: 'Set parent PIN'
	String get setParentPin => 'Set parent PIN';

	/// en: 'Change parent PIN'
	String get changeParentPin => 'Change parent PIN';

	/// en: 'This PIN protects adult profiles and parental controls on this device.'
	String get pinExplain => 'This PIN protects adult profiles and parental controls on this device.';

	/// en: 'Child’s name'
	String get name => 'Child’s name';

	/// en: 'Allowed age classification'
	String get ageGroup => 'Allowed age classification';

	/// en: 'All ages · G, TV-Y, TV-G, U'
	String get allAges => 'All ages · G, TV-Y, TV-G, U';

	/// en: 'Up to 7 · also PG, TV-PG, TV-Y7'
	String get age7 => 'Up to 7 · also PG, TV-PG, TV-Y7';

	/// en: 'Up to 12 · also 12 and 12A'
	String get age12 => 'Up to 12 · also 12 and 12A';

	/// en: 'Up to 16 · also PG-13, TV-14, 15 and 16'
	String get age16 => 'Up to 16 · also PG-13, TV-14, 15 and 16';

	/// en: 'Titles above the age limit and unrecognized classifications are hidden. Titles without a rating are hidden unless you allow them below. Unrated episodes can inherit an approved series classification. Ratings depend on your server’s metadata.'
	String get ratingExplain => 'Titles above the age limit and unrecognized classifications are hidden. Titles without a rating are hidden unless you allow them below. Unrated episodes can inherit an approved series classification. Ratings depend on your server’s metadata.';

	/// en: 'Kids appearance'
	String get theme => 'Kids appearance';

	/// en: 'Use a colourful theme when this profile is active.'
	String get themeExplain => 'Use a colourful theme when this profile is active.';

	/// en: 'Uses your existing server login. Plex/Emby progress and watched status remain shared. Restrictions and kids profiles are stored on this device.'
	String get sharedLogin => 'Uses your existing server login. Plex/Emby progress and watched status remain shared. Restrictions and kids profiles are stored on this device.';

	/// en: 'Hide kids’ viewing from my Continue Watching'
	String get hideWatched => 'Hide kids’ viewing from my Continue Watching';

	/// en: 'Hide movies and entire series played by kids profiles on this device. This does not remove them from your library or change server history.'
	String get hideExplain => 'Hide movies and entire series played by kids profiles on this device. This does not remove them from your library or change server history.';

	/// en: 'Reset kids’ viewing exclusions'
	String get clearHistory => 'Reset kids’ viewing exclusions';

	/// en: 'Kids’ viewing exclusions reset'
	String get historyReset => 'Kids’ viewing exclusions reset';

	/// en: 'This title is not available in this kids profile.'
	String get blocked => 'This title is not available in this kids profile.';

	/// en: 'Switch profile'
	String get switchProfile => 'Switch profile';

	/// en: 'Switch to an adult profile to manage settings.'
	String get manageFromAdult => 'Switch to an adult profile to manage settings.';

	/// en: 'Connect a server to your adult profile before adding a kids profile.'
	String get noConnections => 'Connect a server to your adult profile before adding a kids profile.';

	/// en: 'Kids profile created'
	String get created => 'Kids profile created';

	/// en: 'Kids profile updated'
	String get updated => 'Kids profile updated';

	/// en: 'Could not save parental controls. Please try again.'
	String get saveFailed => 'Could not save parental controls. Please try again.';

	/// en: 'Kids'
	String get kidsBadge => 'Kids';
}

// Path: lurokaDiscovery
class Translations$lurokaDiscovery$en {
	Translations$lurokaDiscovery$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Discover'
	String get title => 'Discover';

	/// en: 'Choose a library to explore'
	String get chooseLibraryHint => 'Choose a library to explore';

	/// en: 'Available in multiple libraries. Choose your preferred copy.'
	String get chooseCopyHint => 'Available in multiple libraries. Choose your preferred copy.';

	/// en: 'Trending movies this week · TMDb'
	String get weeklyMovies => 'Trending movies this week · TMDb';

	/// en: 'Trending shows this week · TMDb'
	String get weeklyShows => 'Trending shows this week · TMDb';

	/// en: 'Trending this week · In your library'
	String get weeklyLibrary => 'Trending this week · In your library';

	/// en: 'Popular now · In your library · Cinemeta'
	String get popularLibrary => 'Popular now · In your library · Cinemeta';

	/// en: 'Cinemeta discovery is unavailable. Please try again.'
	String get publicFeedError => 'Cinemeta discovery is unavailable. Please try again.';

	/// en: 'Oscars · Best Picture winners'
	String get oscars => 'Oscars · Best Picture winners';

	/// en: 'IMDb Top 100 movies · Sep 2026 snapshot'
	String get imdb100 => 'IMDb Top 100 movies · Sep 2026 snapshot';

	/// en: 'IMDb Top 100 shows · Sep 2026 snapshot'
	String get imdbTv100 => 'IMDb Top 100 shows · Sep 2026 snapshot';

	/// en: 'Emmys · Comedy Series winners · 1971–2026'
	String get emmyComedy => 'Emmys · Comedy Series winners · 1971–2026';

	/// en: 'Emmys · Drama Series winners · 1966–2026'
	String get emmys => 'Emmys · Drama Series winners · 1966–2026';

	/// en: 'BAFTA · Best Film winners'
	String get bafta => 'BAFTA · Best Film winners';

	/// en: 'Cannes · Palme d’Or winners'
	String get cannes => 'Cannes · Palme d’Or winners';

	/// en: 'Award collections include Oscar Best Picture history, Emmy drama/comedy winners, and expanded BAFTA/Cannes selections. Repeated winning titles appear once. Membership uses award-category histories and Wikidata facts. IMDb Top 100 movie/show lists preserve September 2026 chart snapshots from mmdju/imdb-top250-api. Only matches in your visible, online libraries appear; collection size depends on library availability.'
	String get awardsNote => 'Award collections include Oscar Best Picture history, Emmy drama/comedy winners, and expanded BAFTA/Cannes selections. Repeated winning titles appear once. Membership uses award-category histories and Wikidata facts. IMDb Top 100 movie/show lists preserve September 2026 chart snapshots from mmdju/imdb-top250-api. Only matches in your visible, online libraries appear; collection size depends on library availability.';

	/// en: 'Public popularity lists, metadata and IMDb ratings are supplied by Cinemeta; its Popular lists are not weekly viewing charts. This product uses the TMDB API but is not endorsed or certified by TMDB. Optional TMDb weekly trends reflect TMDb interest, not viewing figures. Scores retain their source labels.'
	String get attribution => 'Public popularity lists, metadata and IMDb ratings are supplied by Cinemeta; its Popular lists are not weekly viewing charts. This product uses the TMDB API but is not endorsed or certified by TMDB. Optional TMDb weekly trends reflect TMDb interest, not viewing figures. Scores retain their source labels.';

	/// en: 'Discovery sources'
	String get tmdbSettings => 'Discovery sources';

	/// en: 'Cinemeta discovery works immediately without an account: popular movies and shows, IMDb ratings and award winners. Optionally connect TMDb for weekly trends using an API key or API Read Access Token from themoviedb.org/settings/api. Your credential is stored on this device.'
	String get setupDescription => 'Cinemeta discovery works immediately without an account: popular movies and shows, IMDb ratings and award winners. Optionally connect TMDb for weekly trends using an API key or API Read Access Token from themoviedb.org/settings/api. Your credential is stored on this device.';

	/// en: 'TMDb API key / Read Access Token'
	String get apiKey => 'TMDb API key / Read Access Token';

	/// en: 'Connect TMDb'
	String get connect => 'Connect TMDb';

	/// en: 'Connecting…'
	String get connecting => 'Connecting…';

	/// en: 'TMDb connected · Weekly trends and awards enabled'
	String get connected => 'TMDb connected · Weekly trends and awards enabled';

	/// en: 'Running on Luroka's built-in shared TMDb key. Add your own free key below for dedicated rate limits and full control.'
	String get builtInKeyNote => 'Running on Luroka\'s built-in shared TMDb key. Add your own free key below for dedicated rate limits and full control.';

	/// en: 'Disconnect TMDb'
	String get disconnect => 'Disconnect TMDb';

	/// en: 'Could not validate TMDb. Check your credential and internet connection.'
	String get invalidKey => 'Could not validate TMDb. Check your credential and internet connection.';

	/// en: 'TMDb discovery is unavailable. Please try again.'
	String get feedError => 'TMDb discovery is unavailable. Please try again.';

	/// en: 'All titles'
	String get allTitles => 'All titles';

	/// en: 'In your library'
	String get available => 'In your library';

	/// en: 'Checking your libraries…'
	String get checking => 'Checking your libraries…';

	/// en: 'Some libraries could not be checked. Try refreshing.'
	String get availabilityUnknown => 'Some libraries could not be checked. Try refreshing.';

	/// en: 'No matching titles found in the libraries checked.'
	String get noAvailable => 'No matching titles found in the libraries checked.';

	/// en: 'Weekly trends & selected award winners · TMDb'
	String get sourceInfo => 'Weekly trends & selected award winners · TMDb';

	/// en: 'Discovery settings'
	String get configure => 'Discovery settings';
}

// Path: app
class Translations$app$en {
	Translations$app$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Luroka'
	String get title => 'Luroka';
}

// Path: appIcon
class Translations$appIcon$en {
	Translations$appIcon$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'App icon'
	String get title => 'App icon';

	/// en: 'Default'
	String get defaultIcon => 'Default';

	/// en: 'Current icon'
	String get current => 'Current icon';

	/// en: 'Supporter perk'
	String get locked => 'Supporter perk';

	/// en: 'Alternate icons are a Supporter perk.'
	String get lockedHint => 'Alternate icons are a Supporter perk.';

	/// en: 'Couldn't change the app icon'
	String get changeFailed => 'Couldn\'t change the app icon';

	/// en: 'The new icon appears on your home screen once you leave Luroka.'
	String get launcherHint => 'The new icon appears on your home screen once you leave Luroka.';

	/// en: 'The new banner appears once you leave Luroka. Android TV can keep showing the old one until the TV restarts.'
	String get tvLauncherHint => 'The new banner appears once you leave Luroka. Android TV can keep showing the old one until the TV restarts.';

	late final Translations$appIcon$names$en names = Translations$appIcon$names$en.internal(_root);
}

// Path: auth
class Translations$auth$en {
	Translations$auth$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Sign in with Plex'
	String get signInWithPlex => 'Sign in with Plex';

	/// en: 'Show QR Code'
	String get showQRCode => 'Show QR Code';

	/// en: 'Authenticate'
	String get authenticate => 'Authenticate';

	/// en: 'Authentication timed out. Please try again.'
	String get authenticationTimeout => 'Authentication timed out. Please try again.';

	/// en: 'Scan this QR code to sign in'
	String get scanQRToSignIn => 'Scan this QR code to sign in';

	/// en: 'Waiting for authentication... Sign in from your browser.'
	String get waitingForAuth => 'Waiting for authentication...\nSign in from your browser.';

	/// en: 'Use browser'
	String get useBrowser => 'Use browser';

	/// en: 'or'
	String get or => 'or';

	/// en: 'Connect to ${product}'
	String connectToMediaBrowser({required Object product}) => 'Connect to ${product}';

	/// en: 'Quick Connect'
	String get quickConnect => 'Quick Connect';

	/// en: 'Use Quick Connect'
	String get useQuickConnect => 'Use Quick Connect';

	/// en: 'Open Quick Connect in Jellyfin and enter this code.'
	String get quickConnectInstructions => 'Open Quick Connect in Jellyfin and enter this code.';

	/// en: 'Waiting for approval…'
	String get quickConnectWaiting => 'Waiting for approval…';

	/// en: 'Cancel'
	String get quickConnectCancel => 'Cancel';

	/// en: 'Quick Connect expired. Try again.'
	String get quickConnectExpired => 'Quick Connect expired. Try again.';

	/// en: 'Luroka could not safely recover local sign-in and pending playback data. Please sign in again.'
	String get localDataRecoveryRequired => 'Luroka could not safely recover local sign-in and pending playback data. Please sign in again.';

	/// en: 'The Plex PIN check was rejected'
	String get pinCheckRejected => 'The Plex PIN check was rejected';
}

// Path: common
class Translations$common$en {
	Translations$common$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Cancel'
	String get cancel => 'Cancel';

	/// en: 'Save'
	String get save => 'Save';

	/// en: 'Close'
	String get close => 'Close';

	/// en: 'Clear'
	String get clear => 'Clear';

	/// en: 'Reset'
	String get reset => 'Reset';

	/// en: 'Later'
	String get later => 'Later';

	/// en: 'Submit'
	String get submit => 'Submit';

	/// en: 'Confirm'
	String get confirm => 'Confirm';

	/// en: 'Retry'
	String get retry => 'Retry';

	/// en: 'Log out'
	String get logout => 'Log out';

	/// en: 'Unknown'
	String get unknown => 'Unknown';

	/// en: 'Refresh'
	String get refresh => 'Refresh';

	/// en: 'Yes'
	String get yes => 'Yes';

	/// en: 'No'
	String get no => 'No';

	/// en: 'Delete'
	String get delete => 'Delete';

	/// en: 'Edit'
	String get edit => 'Edit';

	/// en: 'Shuffle'
	String get shuffle => 'Shuffle';

	/// en: 'Add to...'
	String get addTo => 'Add to...';

	/// en: 'Create new'
	String get createNew => 'Create new';

	/// en: 'Connect'
	String get connect => 'Connect';

	/// en: 'Disconnect'
	String get disconnect => 'Disconnect';

	/// en: 'Play'
	String get play => 'Play';

	/// en: 'Pause'
	String get pause => 'Pause';

	/// en: 'Resume'
	String get resume => 'Resume';

	/// en: 'Error'
	String get error => 'Error';

	/// en: 'Search'
	String get search => 'Search';

	/// en: 'Home'
	String get home => 'Home';

	/// en: 'Back'
	String get back => 'Back';

	/// en: 'Settings'
	String get settings => 'Settings';

	/// en: 'Mute'
	String get mute => 'Mute';

	/// en: 'OK'
	String get ok => 'OK';

	/// en: 'Off'
	String get off => 'Off';

	/// en: 'Options'
	String get options => 'Options';

	/// en: 'Season ${number}'
	String seasonNumber({required Object number}) => 'Season ${number}';

	/// en: 'Episode ${number} - ${title}'
	String episodeNumberTitle({required Object number, required Object title}) => 'Episode ${number} - ${title}';

	/// en: 'Chapter ${number}'
	String chapterNumber({required Object number}) => 'Chapter ${number}';

	/// en: 'Reconnect'
	String get reconnect => 'Reconnect';

	/// en: 'View All'
	String get viewAll => 'View All';

	/// en: 'Servers unreachable'
	String get serversUnreachable => 'Servers unreachable';

	/// en: 'Loading...'
	String get loading => 'Loading...';

	/// en: 'Fullscreen'
	String get fullscreen => 'Fullscreen';

	/// en: 'Exit fullscreen'
	String get exitFullscreen => 'Exit fullscreen';

	late final Translations$common$ratingSource$en ratingSource = Translations$common$ratingSource$en.internal(_root);

	/// en: 'N/A'
	String get notAvailable => 'N/A';

	/// en: 'URL'
	String get url => 'URL';

	/// en: 'ABC'
	String get letterKeys => 'ABC';

	late final Translations$common$mediaKind$en mediaKind = Translations$common$mediaKind$en.internal(_root);

	/// en: 'Stay'
	String get stay => 'Stay';

	/// en: 'Exit'
	String get exitApp => 'Exit';

	/// en: 'Are you sure you want to exit Luroka?'
	String get exitAppBody => 'Are you sure you want to exit Luroka?';
}

// Path: tvHints
class Translations$tvHints$en {
	Translations$tvHints$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Select'
	String get select => 'Select';

	/// en: 'Browse'
	String get browse => 'Browse';

	/// en: 'Back'
	String get back => 'Back';
}

// Path: screens
class Translations$screens$en {
	Translations$screens$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Licenses'
	String get licenses => 'Licenses';

	/// en: 'Switch Profile'
	String get switchProfile => 'Switch Profile';

	/// en: 'Subtitle Styling'
	String get subtitleStyling => 'Subtitle Styling';

	/// en: 'mpv.conf'
	String get mpvConfig => 'mpv.conf';

	/// en: 'Logs'
	String get logs => 'Logs';
}

// Path: mediaExtras
class Translations$mediaExtras$en {
	Translations$mediaExtras$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Trailers'
	String get trailers => 'Trailers';

	/// en: 'Featurettes'
	String get featurettes => 'Featurettes';

	/// en: 'Interviews'
	String get interviews => 'Interviews';

	/// en: 'Deleted Scenes'
	String get deletedScenes => 'Deleted Scenes';

	/// en: 'Behind the Scenes'
	String get behindTheScenes => 'Behind the Scenes';

	/// en: 'Scenes & Clips'
	String get scenesAndClips => 'Scenes & Clips';

	/// en: 'Other Extras'
	String get other => 'Other Extras';
}

// Path: update
class Translations$update$en {
	Translations$update$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Update Available'
	String get available => 'Update Available';

	/// en: 'Version ${version} is available'
	String versionAvailable({required Object version}) => 'Version ${version} is available';

	/// en: 'Current: ${version}'
	String currentVersion({required Object version}) => 'Current: ${version}';

	/// en: 'Skip This Version'
	String get skipVersion => 'Skip This Version';

	/// en: 'View Release'
	String get viewRelease => 'View Release';

	/// en: 'You are on the latest version'
	String get latestVersion => 'You are on the latest version';

	/// en: 'Failed to check for updates'
	String get checkFailed => 'Failed to check for updates';
}

// Path: supporter
class Translations$supporter$en {
	Translations$supporter$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Luroka Supporter'
	String get title => 'Luroka Supporter';

	/// en: 'A one-time purchase that supports Luroka's development and unlocks cosmetic extras:'
	String get intro => 'A one-time purchase that supports Luroka\'s development and unlocks cosmetic extras:';

	/// en: 'Preset themes'
	String get presetThemes => 'Preset themes';

	/// en: 'Ember, Glacier, Forest, Plum and Paper'
	String get presetThemesDescription => 'Ember, Glacier, Forest, Plum and Paper';

	/// en: 'Custom theme'
	String get customTheme => 'Custom theme';

	/// en: 'Pick every color yourself'
	String get customThemeDescription => 'Pick every color yourself';

	/// en: 'App icons'
	String get appIcons => 'App icons';

	/// en: 'Choose an alternate Luroka icon'
	String get appIconsDescription => 'Choose an alternate Luroka icon';

	/// en: 'Buy for ${price}'
	String buy({required Object price}) => 'Buy for ${price}';

	/// en: 'Loading price...'
	String get loadingPrice => 'Loading price...';

	/// en: 'Restore Purchases'
	String get restore => 'Restore Purchases';

	/// en: 'Your purchase is waiting for payment or approval. The extras unlock as soon as the store completes it.'
	String get pending => 'Your purchase is waiting for payment or approval. The extras unlock as soon as the store completes it.';

	/// en: 'Thank you for supporting Luroka'
	String get thankYouTitle => 'Thank you for supporting Luroka';

	/// en: 'Your Supporter extras are unlocked.'
	String get thankYouBody => 'Your Supporter extras are unlocked.';

	/// en: 'Unlock themes and app icons with a one-time purchase'
	String get tileSubtitle => 'Unlock themes and app icons with a one-time purchase';

	/// en: 'Unlock themes with a one-time purchase'
	String get tileSubtitleThemesOnly => 'Unlock themes with a one-time purchase';

	/// en: 'Thank you for your support'
	String get tileUnlocked => 'Thank you for your support';

	late final Translations$supporter$errors$en errors = Translations$supporter$errors$en.internal(_root);
}

// Path: settings
class Translations$settings$en {
	Translations$settings$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Settings'
	String get title => 'Settings';

	/// en: 'Support Luroka'
	String get supportDeveloper => 'Support Luroka';

	/// en: 'Donate via Liberapay to fund development'
	String get supportDeveloperDescription => 'Donate via Liberapay to fund development';

	/// en: 'Language'
	String get language => 'Language';

	/// en: 'Theme'
	String get theme => 'Theme';

	/// en: 'Appearance'
	String get appearance => 'Appearance';

	/// en: 'Video Playback'
	String get videoPlayback => 'Video Playback';

	/// en: 'Configure playback behavior'
	String get videoPlaybackDescription => 'Configure playback behavior';

	/// en: 'Advanced'
	String get advanced => 'Advanced';

	/// en: 'Episode Poster Style'
	String get episodePosterMode => 'Episode Poster Style';

	/// en: 'Series Poster'
	String get seriesPoster => 'Series Poster';

	/// en: 'Season Poster'
	String get seasonPoster => 'Season Poster';

	/// en: 'Thumbnail'
	String get episodeThumbnail => 'Thumbnail';

	/// en: 'Carousel Size'
	String get homeHeroSize => 'Carousel Size';

	/// en: 'Small'
	String get homeHeroSizeSmall => 'Small';

	/// en: 'Medium'
	String get homeHeroSizeMedium => 'Medium';

	/// en: 'Large'
	String get homeHeroSizeLarge => 'Large';

	/// en: 'Seconds'
	String get secondsLabel => 'Seconds';

	/// en: 'Minutes'
	String get minutesLabel => 'Minutes';

	/// en: 's'
	String get secondsShort => 's';

	/// en: 'm'
	String get minutesShort => 'm';

	/// en: 'Enter duration (${min}-${max})'
	String durationHint({required Object min, required Object max}) => 'Enter duration (${min}-${max})';

	/// en: 'System'
	String get systemTheme => 'System';

	/// en: 'Light'
	String get lightTheme => 'Light';

	/// en: 'Dark'
	String get darkTheme => 'Dark';

	/// en: 'OLED'
	String get oledTheme => 'OLED';

	/// en: 'Library Density'
	String get libraryDensity => 'Library Density';

	/// en: 'Display Scale'
	String get displayScale => 'Display Scale';

	/// en: 'Compact'
	String get compact => 'Compact';

	/// en: 'Comfortable'
	String get comfortable => 'Comfortable';

	/// en: 'Grid Spacing'
	String get gridSpacing => 'Grid Spacing';

	/// en: 'Tight'
	String get gridSpacingTight => 'Tight';

	/// en: 'Normal'
	String get gridSpacingNormal => 'Normal';

	/// en: 'Spacious'
	String get gridSpacingSpacious => 'Spacious';

	/// en: 'Corner Spotlight Backdrop'
	String get tvCornerSpotlightBackdrop => 'Corner Spotlight Backdrop';

	/// en: 'Show spotlight artwork in the top-right corner instead of filling the screen'
	String get tvCornerSpotlightBackdropDescription => 'Show spotlight artwork in the top-right corner instead of filling the screen';

	/// en: 'View Mode'
	String get viewMode => 'View Mode';

	/// en: 'Grid'
	String get gridView => 'Grid';

	/// en: 'List'
	String get listView => 'List';

	/// en: 'Continue Watching Action'
	String get continueWatchingAction => 'Continue Watching Action';

	/// en: 'Play'
	String get continueWatchingPlay => 'Play';

	/// en: 'Open Details'
	String get continueWatchingDetails => 'Open Details';

	/// en: 'Episode Action'
	String get episodeAction => 'Episode Action';

	/// en: 'Play'
	String get episodePlay => 'Play';

	/// en: 'Open Details'
	String get episodeDetails => 'Open Details';

	/// en: 'Use Home Layout'
	String get useGlobalHubs => 'Use Home Layout';

	/// en: 'Combine all servers into one Home screen. Turn off to show each library's own recommendations.'
	String get useGlobalHubsDescription => 'Combine all servers into one Home screen. Turn off to show each library\'s own recommendations.';

	/// en: 'Show Server Name on Hubs'
	String get showServerNameOnHubs => 'Show Server Name on Hubs';

	/// en: 'Always show server names in hub titles.'
	String get showServerNameOnHubsDescription => 'Always show server names in hub titles.';

	/// en: 'Group Libraries by Server'
	String get groupLibrariesByServer => 'Group Libraries by Server';

	/// en: 'Group sidebar libraries under each media server.'
	String get groupLibrariesByServerDescription => 'Group sidebar libraries under each media server.';

	/// en: 'Always Keep Sidebar Open'
	String get alwaysKeepSidebarOpen => 'Always Keep Sidebar Open';

	/// en: 'Sidebar stays expanded and content area adjusts to fit'
	String get alwaysKeepSidebarOpenDescription => 'Sidebar stays expanded and content area adjusts to fit';

	/// en: 'Show Unwatched Count'
	String get showUnwatchedCount => 'Show Unwatched Count';

	/// en: 'Display unwatched episode count on shows and seasons'
	String get showUnwatchedCountDescription => 'Display unwatched episode count on shows and seasons';

	/// en: 'Show Watched Indicators'
	String get showWatchedIndicators => 'Show Watched Indicators';

	/// en: 'Display a checkmark on watched movies, shows, and episodes'
	String get showWatchedIndicatorsDescription => 'Display a checkmark on watched movies, shows, and episodes';

	/// en: 'Show Episode Number on Cards'
	String get showEpisodeNumberOnCards => 'Show Episode Number on Cards';

	/// en: 'Show season and episode number on episode cards'
	String get showEpisodeNumberOnCardsDescription => 'Show season and episode number on episode cards';

	/// en: 'Show Season Posters on Tabs'
	String get showSeasonPostersOnTabs => 'Show Season Posters on Tabs';

	/// en: 'Show each season's poster above its tab'
	String get showSeasonPostersOnTabsDescription => 'Show each season\'s poster above its tab';

	/// en: 'Full TV Cards'
	String get tvFullCardLayout => 'Full TV Cards';

	/// en: 'Use image-only TV cards with actor names overlaid'
	String get tvFullCardLayoutDescription => 'Use image-only TV cards with actor names overlaid';

	/// en: 'Focus Glow'
	String get focusGlow => 'Focus Glow';

	/// en: 'Draw a soft glow around the focused card'
	String get focusGlowDescription => 'Draw a soft glow around the focused card';

	/// en: 'Visual Effects'
	String get visualEffects => 'Visual Effects';

	/// en: 'Auto'
	String get visualEffectsAuto => 'Auto';

	/// en: 'Reduce effects automatically on low-power devices'
	String get visualEffectsAutoDescription => 'Reduce effects automatically on low-power devices';

	/// en: 'Full'
	String get visualEffectsFull => 'Full';

	/// en: 'Reduced'
	String get visualEffectsReduced => 'Reduced';

	/// en: 'Fewer animations and lower-resolution artwork'
	String get visualEffectsReducedDescription => 'Fewer animations and lower-resolution artwork';

	/// en: 'Hide Spoilers for Unwatched Episodes'
	String get hideSpoilers => 'Hide Spoilers for Unwatched Episodes';

	/// en: 'Blur thumbnails and descriptions for unwatched episodes'
	String get hideSpoilersDescription => 'Blur thumbnails and descriptions for unwatched episodes';

	/// en: 'Player Backend'
	String get playerBackend => 'Player Backend';

	/// en: 'mpv plays more formats and enables more features — recommended. ExoPlayer helps if playback fails or stutters on this device.'
	String get playerBackendDescription => 'mpv plays more formats and enables more features — recommended. ExoPlayer helps if playback fails or stutters on this device.';

	/// en: 'ExoPlayer'
	String get exoPlayer => 'ExoPlayer';

	/// en: 'mpv'
	String get mpv => 'mpv';

	/// en: 'Hardware Decoding'
	String get hardwareDecoding => 'Hardware Decoding';

	/// en: 'Use hardware acceleration when available'
	String get hardwareDecodingDescription => 'Use hardware acceleration when available';

	/// en: 'Playback Buffer'
	String get playbackBuffer => 'Playback Buffer';

	/// en: 'Auto (Recommended)'
	String get playbackBufferAuto => 'Auto (Recommended)';

	/// en: 'Large'
	String get playbackBufferLarge => 'Large';

	/// en: 'Extra Large'
	String get playbackBufferExtraLarge => 'Extra Large';

	/// en: 'Buffer more ahead to guard against unstable connections.'
	String get playbackBufferDescription => 'Buffer more ahead to guard against unstable connections.';

	/// en: 'Streaming Quality'
	String get defaultQualityTitle => 'Streaming Quality';

	/// en: 'Plays the file exactly as stored — best quality, uses the most bandwidth'
	String get streamingQualityOriginalHint => 'Plays the file exactly as stored — best quality, uses the most bandwidth';

	/// en: 'Streaming Quality on Mobile Data'
	String get cellularQualityTitle => 'Streaming Quality on Mobile Data';

	/// en: 'Same as Streaming Quality'
	String get cellularQualitySameAsDefault => 'Same as Streaming Quality';

	/// en: 'Don't Convert Files That Already Fit'
	String get directPlayCoveredQuality => 'Don\'t Convert Files That Already Fit';

	/// en: 'Videos within the quality limit play as-is instead of being converted — faster and lighter on the server'
	String get directPlayCoveredQualityDescription => 'Videos within the quality limit play as-is instead of being converted — faster and lighter on the server';

	/// en: 'Video Codecs'
	String get videoCodecs => 'Video Codecs';

	/// en: 'Unchecked codecs are transcoded by the server'
	String get videoCodecsDescription => 'Unchecked codecs are transcoded by the server';

	/// en: 'Always accepted'
	String get videoCodecsAlwaysAccepted => 'Always accepted';

	/// en: 'Music Quality'
	String get musicQualityTitle => 'Music Quality';

	/// en: 'Subtitle Styling'
	String get subtitleStyling => 'Subtitle Styling';

	/// en: 'Customize subtitle appearance'
	String get subtitleStylingDescription => 'Customize subtitle appearance';

	/// en: 'Small Skip Duration'
	String get smallSkipDuration => 'Small Skip Duration';

	/// en: 'Large Skip Duration'
	String get largeSkipDuration => 'Large Skip Duration';

	/// en: 'Rewind on Resume'
	String get rewindOnResume => 'Rewind on Resume';

	/// en: '${seconds} seconds'
	String secondsUnit({required Object seconds}) => '${seconds} seconds';

	/// en: 'Default Sleep Timer'
	String get defaultSleepTimer => 'Default Sleep Timer';

	/// en: '${minutes} minutes'
	String minutesUnit({required Object minutes}) => '${minutes} minutes';

	/// en: 'Remember track selections per show/movie'
	String get rememberTrackSelections => 'Remember track selections per show/movie';

	/// en: 'Remember audio and subtitle choices per title'
	String get rememberTrackSelectionsDescription => 'Remember audio and subtitle choices per title';

	/// en: 'Plex saves each choice on the server per file; Jellyfin also turns on the account's Remember selections; Emby is not supported'
	String get rememberTrackSelectionsBackendRule => 'Plex saves each choice on the server per file; Jellyfin also turns on the account\'s Remember selections; Emby is not supported';

	/// en: 'Use server's per-episode track selections'
	String get followServerTrackSelections => 'Use server\'s per-episode track selections';

	/// en: 'On episode change, apply the audio and subtitles selected on the server instead of carrying over the current choice'
	String get followServerTrackSelectionsDescription => 'On episode change, apply the audio and subtitles selected on the server instead of carrying over the current choice';

	/// en: 'Remember music session'
	String get resumeMusicOnLaunch => 'Remember music session';

	/// en: 'Reopen the last song paused where it left off when the app starts'
	String get resumeMusicOnLaunchDescription => 'Reopen the last song paused where it left off when the app starts';

	/// en: 'Show chapter markers on seek bar'
	String get showChapterMarkersOnTimeline => 'Show chapter markers on seek bar';

	/// en: 'Segment the seek bar at chapter boundaries'
	String get showChapterMarkersOnTimelineDescription => 'Segment the seek bar at chapter boundaries';

	/// en: 'Specials in episode order'
	String get specialsOrdering => 'Specials in episode order';

	/// en: 'Where specials play in a show's watch order'
	String get specialsOrderingDescription => 'Where specials play in a show\'s watch order';

	/// en: 'Follow server order'
	String get specialsOrderingServer => 'Follow server order';

	/// en: 'Interleave by air date'
	String get specialsOrderingAirDate => 'Interleave by air date';

	/// en: 'After regular seasons'
	String get specialsOrderingLast => 'After regular seasons';

	/// en: 'Click on video to toggle play/pause'
	String get clickVideoTogglesPlayback => 'Click on video to toggle play/pause';

	/// en: 'Click video to play/pause instead of showing controls.'
	String get clickVideoTogglesPlaybackDescription => 'Click video to play/pause instead of showing controls.';

	/// en: 'Video Player Controls'
	String get videoPlayerControls => 'Video Player Controls';

	/// en: 'Keyboard Shortcuts'
	String get keyboardShortcuts => 'Keyboard Shortcuts';

	/// en: 'Customize keyboard shortcuts'
	String get keyboardShortcutsDescription => 'Customize keyboard shortcuts';

	/// en: 'Video Player Navigation'
	String get videoPlayerNavigation => 'Video Player Navigation';

	/// en: 'Use arrow keys to navigate video player controls'
	String get videoPlayerNavigationDescription => 'Use arrow keys to navigate video player controls';

	/// en: 'Watch Together Relay'
	String get watchTogetherRelay => 'Watch Together Relay';

	/// en: 'Public Open Watch Party relays unless you set your own'
	String get watchTogetherRelayDescription => 'Public Open Watch Party relays unless you set your own';

	/// en: 'https://my-relay.example.com'
	String get watchTogetherRelayHint => 'https://my-relay.example.com';

	/// en: 'Enter a valid HTTP or HTTPS relay base URL.'
	String get watchTogetherRelayInvalid => 'Enter a valid HTTP or HTTPS relay base URL.';

	/// en: 'Crash Reporting'
	String get crashReporting => 'Crash Reporting';

	/// en: 'Send crash reports to help improve the app'
	String get crashReportingDescription => 'Send crash reports to help improve the app';

	/// en: 'Debug Logging'
	String get debugLogging => 'Debug Logging';

	/// en: 'Enable detailed logging for troubleshooting'
	String get debugLoggingDescription => 'Enable detailed logging for troubleshooting';

	/// en: 'View Logs'
	String get viewLogs => 'View Logs';

	/// en: 'View application logs'
	String get viewLogsDescription => 'View application logs';

	/// en: 'Clear Image Cache'
	String get clearImageCache => 'Clear Image Cache';

	/// en: 'Clear cached artwork and thumbnails. Images may load slower until downloaded again.'
	String get clearImageCacheDescription => 'Clear cached artwork and thumbnails. Images may load slower until downloaded again.';

	/// en: 'Image cache cleared successfully'
	String get clearImageCacheSuccess => 'Image cache cleared successfully';

	/// en: 'Reset Settings'
	String get resetSettings => 'Reset Settings';

	/// en: 'Restore default settings. This can't be undone.'
	String get resetSettingsDescription => 'Restore default settings. This can\'t be undone.';

	/// en: 'Settings reset successfully'
	String get resetSettingsSuccess => 'Settings reset successfully';

	/// en: 'Backup'
	String get backup => 'Backup';

	/// en: 'Export Settings'
	String get exportSettings => 'Export Settings';

	/// en: 'Save your preferences to a file'
	String get exportSettingsDescription => 'Save your preferences to a file';

	/// en: 'Settings exported'
	String get exportSettingsSuccess => 'Settings exported';

	/// en: 'Import Settings'
	String get importSettings => 'Import Settings';

	/// en: 'Restore preferences from a file'
	String get importSettingsDescription => 'Restore preferences from a file';

	/// en: 'This will replace your current settings. Continue?'
	String get importSettingsConfirm => 'This will replace your current settings. Continue?';

	/// en: 'Settings imported'
	String get importSettingsSuccess => 'Settings imported';

	/// en: 'This file isn't a valid Luroka settings export'
	String get importSettingsInvalidFile => 'This file isn\'t a valid Luroka settings export';

	/// en: 'Sign in before importing settings'
	String get importSettingsNoUser => 'Sign in before importing settings';

	/// en: 'Shortcuts reset to defaults'
	String get shortcutsReset => 'Shortcuts reset to defaults';

	/// en: 'This will replace your custom shortcuts with the defaults. Continue?'
	String get resetShortcutsConfirm => 'This will replace your custom shortcuts with the defaults. Continue?';

	/// en: 'About'
	String get about => 'About';

	/// en: 'Version, credits, and legal information'
	String get aboutDescription => 'Version, credits, and legal information';

	/// en: 'Updates'
	String get updates => 'Updates';

	/// en: 'Update Available'
	String get updateAvailable => 'Update Available';

	/// en: 'Check for Updates'
	String get checkForUpdates => 'Check for Updates';

	/// en: 'Automatically check for updates on startup'
	String get autoCheckUpdatesOnStartup => 'Automatically check for updates on startup';

	/// en: 'Notify when an update is available at launch'
	String get autoCheckUpdatesOnStartupDescription => 'Notify when an update is available at launch';

	/// en: 'Please enter a valid number'
	String get validationErrorEnterNumber => 'Please enter a valid number';

	/// en: 'Duration must be between ${min} and ${max} ${unit}'
	String validationErrorDuration({required Object min, required Object max, required Object unit}) => 'Duration must be between ${min} and ${max} ${unit}';

	/// en: 'Shortcut already assigned to ${action}'
	String shortcutAlreadyAssigned({required Object action}) => 'Shortcut already assigned to ${action}';

	/// en: 'Shortcut updated for ${action}'
	String shortcutUpdated({required Object action}) => 'Shortcut updated for ${action}';

	/// en: 'Could not save changes. Try again.'
	String get saveFailed => 'Could not save changes. Try again.';

	/// en: 'Auto-Play & Skip'
	String get autoPlayAndSkip => 'Auto-Play & Skip';

	/// en: 'Auto-Play Next Episode'
	String get autoPlayNextEpisode => 'Auto-Play Next Episode';

	/// en: 'Start the next episode automatically when one ends'
	String get autoPlayNextEpisodeDescription => 'Start the next episode automatically when one ends';

	/// en: 'Shuffle Starts at Beginning'
	String get shuffleStartsFromBeginning => 'Shuffle Starts at Beginning';

	/// en: 'Start each episode at the beginning when shuffling instead of resuming'
	String get shuffleStartsFromBeginningDescription => 'Start each episode at the beginning when shuffling instead of resuming';

	/// en: 'Play Next Countdown'
	String get playNextCountdown => 'Play Next Countdown';

	/// en: 'Play immediately'
	String get playNextCountdownImmediate => 'Play immediately';

	/// en: 'Skip Intro'
	String get skipIntroMode => 'Skip Intro';

	/// en: 'Play intros normally without a skip button'
	String get skipIntroModeOffDescription => 'Play intros normally without a skip button';

	/// en: 'Show a skip button when an intro starts'
	String get skipIntroModeButtonDescription => 'Show a skip button when an intro starts';

	/// en: 'Skip intros automatically after the delay below'
	String get skipIntroModeAutoDescription => 'Skip intros automatically after the delay below';

	/// en: 'Skip Credits'
	String get skipCreditsMode => 'Skip Credits';

	/// en: 'Play credits normally without a skip button'
	String get skipCreditsModeOffDescription => 'Play credits normally without a skip button';

	/// en: 'Show a skip button when credits start'
	String get skipCreditsModeButtonDescription => 'Show a skip button when credits start';

	/// en: 'Skip credits automatically and play the next episode'
	String get skipCreditsModeAutoDescription => 'Skip credits automatically and play the next episode';

	/// en: 'Off'
	String get skipMarkerModeOff => 'Off';

	/// en: 'Show button'
	String get skipMarkerModeButton => 'Show button';

	/// en: 'Automatic'
	String get skipMarkerModeAuto => 'Automatic';

	/// en: 'Detect Skips from Chapter Names'
	String get forceSkipMarkerFallback => 'Detect Skips from Chapter Names';

	/// en: 'Find intros and credits from chapter names even when the server provides its own skip markers'
	String get forceSkipMarkerFallbackDescription => 'Find intros and credits from chapter names even when the server provides its own skip markers';

	/// en: 'Auto Skip Delay'
	String get autoSkipDelay => 'Auto Skip Delay';

	/// en: 'Wait ${seconds} seconds before auto-skipping'
	String autoSkipDelayDescription({required Object seconds}) => 'Wait ${seconds} seconds before auto-skipping';

	/// en: 'Intro Marker Pattern'
	String get introPattern => 'Intro Marker Pattern';

	/// en: 'Regex pattern to match intro markers in chapter titles'
	String get introPatternDescription => 'Regex pattern to match intro markers in chapter titles';

	/// en: 'Credits Marker Pattern'
	String get creditsPattern => 'Credits Marker Pattern';

	/// en: 'Regex pattern to match credits markers in chapter titles'
	String get creditsPatternDescription => 'Regex pattern to match credits markers in chapter titles';

	/// en: 'Invalid regular expression'
	String get invalidRegex => 'Invalid regular expression';

	/// en: 'Regular expression'
	String get regex => 'Regular expression';

	/// en: 'Downloads'
	String get downloads => 'Downloads';

	/// en: 'Choose where to store downloaded content'
	String get downloadLocationDescription => 'Choose where to store downloaded content';

	/// en: 'Default (App Storage)'
	String get downloadLocationDefault => 'Default (App Storage)';

	/// en: 'Custom Location'
	String get downloadLocationCustom => 'Custom Location';

	/// en: 'Select Folder'
	String get selectFolder => 'Select Folder';

	/// en: 'Reset to Default'
	String get resetToDefault => 'Reset to Default';

	/// en: 'Current: ${path}'
	String currentPath({required Object path}) => 'Current: ${path}';

	/// en: 'Download location changed'
	String get downloadLocationChanged => 'Download location changed';

	/// en: 'Download location reset to default'
	String get downloadLocationReset => 'Download location reset to default';

	/// en: 'Selected folder is not writable'
	String get downloadLocationInvalid => 'Selected folder is not writable';

	/// en: 'Folder selection is not available on this device'
	String get downloadLocationPickerUnavailable => 'Folder selection is not available on this device';

	/// en: 'Download on Wi-Fi only'
	String get downloadOnWifiOnly => 'Download on Wi-Fi only';

	/// en: 'Prevent downloads when on cellular data'
	String get downloadOnWifiOnlyDescription => 'Prevent downloads when on cellular data';

	/// en: 'Applies to all profiles and downloads on this device.'
	String get downloadWifiScope => 'Applies to all profiles and downloads on this device.';

	/// en: 'Auto-remove watched downloads'
	String get autoRemoveWatchedDownloads => 'Auto-remove watched downloads';

	/// en: 'Delete watched downloads automatically'
	String get autoRemoveWatchedDownloadsDescription => 'Delete watched downloads automatically';

	/// en: 'Downloads are blocked on cellular. Use Wi-Fi or change the setting.'
	String get cellularDownloadBlocked => 'Downloads are blocked on cellular. Use Wi-Fi or change the setting.';

	/// en: 'Maximum Volume'
	String get maxVolume => 'Maximum Volume';

	/// en: 'Allow volume boost above 100% for quiet media'
	String get maxVolumeDescription => 'Allow volume boost above 100% for quiet media';

	/// en: '${percent}%'
	String maxVolumePercent({required Object percent}) => '${percent}%';

	/// en: 'Discord Rich Presence'
	String get discordRichPresence => 'Discord Rich Presence';

	/// en: 'Show what you're watching on Discord'
	String get discordRichPresenceDescription => 'Show what you\'re watching on Discord';

	/// en: 'Integrations'
	String get services => 'Integrations';

	/// en: 'Link Trakt, MyAnimeList, Seerr, and more'
	String get servicesDescription => 'Link Trakt, MyAnimeList, Seerr, and more';

	/// en: 'Reorder and hide libraries'
	String get manageLibrariesDescription => 'Reorder and hide libraries';

	/// en: 'Companion Remote Server'
	String get companionRemoteServer => 'Companion Remote Server';

	/// en: 'Allow mobile devices on your network to control this app'
	String get companionRemoteServerDescription => 'Allow mobile devices on your network to control this app';

	/// en: 'Couldn't start the companion server'
	String get companionRemoteServerStartFailed => 'Couldn\'t start the companion server';

	/// en: 'Couldn't stop the companion server'
	String get companionRemoteServerStopFailed => 'Couldn\'t stop the companion server';

	/// en: 'Auto Picture-in-Picture'
	String get autoPip => 'Auto Picture-in-Picture';

	/// en: 'Automatically enter picture-in-picture when you leave the app during playback'
	String get autoPipDescription => 'Automatically enter picture-in-picture when you leave the app during playback';

	/// en: 'Match Content Frame Rate'
	String get matchContentFrameRate => 'Match Content Frame Rate';

	/// en: 'Switch the display to the video's frame rate, so movies play without judder'
	String get matchContentFrameRateDescription => 'Switch the display to the video\'s frame rate, so movies play without judder';

	/// en: 'Match Content Resolution'
	String get matchContentResolution => 'Match Content Resolution';

	/// en: 'Switch the display to the video's native resolution so your TV handles upscaling. Menus and subtitles are upscaled too during playback'
	String get matchContentResolutionDescription => 'Switch the display to the video\'s native resolution so your TV handles upscaling. Menus and subtitles are upscaled too during playback';

	/// en: 'Match Refresh Rate'
	String get matchRefreshRate => 'Match Refresh Rate';

	/// en: 'Match display refresh rate in fullscreen'
	String get matchRefreshRateDescription => 'Match display refresh rate in fullscreen';

	/// en: 'Match Dynamic Range'
	String get matchDynamicRange => 'Match Dynamic Range';

	/// en: 'Switch HDR on for HDR content, then back to SDR'
	String get matchDynamicRangeDescription => 'Switch HDR on for HDR content, then back to SDR';

	/// en: 'Display Switch Delay'
	String get displaySwitchDelay => 'Display Switch Delay';

	/// en: 'Tunneled Playback'
	String get tunneledPlayback => 'Tunneled Playback';

	/// en: 'Use video tunneling. Disable if HDR playback shows black video or motion stutters.'
	String get tunneledPlaybackDescription => 'Use video tunneling. Disable if HDR playback shows black video or motion stutters.';

	/// en: 'Audio Passthrough'
	String get audioPassthrough => 'Audio Passthrough';

	/// en: 'Send Dolby/DTS audio to your receiver or TV without re-encoding, preserving surround sound. Turn off if you have no sound.'
	String get audioPassthroughDescription => 'Send Dolby/DTS audio to your receiver or TV without re-encoding, preserving surround sound. Turn off if you have no sound.';

	/// en: 'Use Apple's native Dolby decoder for Dolby Digital Plus, including Atmos. DTS and TrueHD still play as multichannel PCM. Turn off if you have no sound.'
	String get audioPassthroughDescriptionApple => 'Use Apple\'s native Dolby decoder for Dolby Digital Plus, including Atmos. DTS and TrueHD still play as multichannel PCM. Turn off if you have no sound.';

	/// en: 'Use Apple's native Dolby decoder for Dolby Digital Plus, including Atmos. On iOS, iPadOS and tvOS 26 or later, TrueHD Atmos and DTS:X play as spatial audio. Other DTS and TrueHD tracks play as multichannel PCM. Turn off if you have no sound.'
	String get audioPassthroughDescriptionAppleSpatial => 'Use Apple\'s native Dolby decoder for Dolby Digital Plus, including Atmos. On iOS, iPadOS and tvOS 26 or later, TrueHD Atmos and DTS:X play as spatial audio. Other DTS and TrueHD tracks play as multichannel PCM. Turn off if you have no sound.';

	/// en: 'Off while loudness normalization is on'
	String get audioPassthroughOverriddenByNormalization => 'Off while loudness normalization is on';

	/// en: 'Audio Channels'
	String get audioChannelLimit => 'Audio Channels';

	/// en: 'Mix decoded audio down for speakers, headphones, or HDMI setups that cannot play every channel'
	String get audioChannelLimitDescription => 'Mix decoded audio down for speakers, headphones, or HDMI setups that cannot play every channel';

	/// en: 'Original'
	String get audioChannelLimitOriginal => 'Original';

	/// en: 'Play every channel in the track'
	String get audioChannelLimitOriginalDescription => 'Play every channel in the track';

	/// en: 'Up to 5.1'
	String get audioChannelLimitSurround51 => 'Up to 5.1';

	/// en: 'Mix 7.1 down to 5.1 for TVs and receivers that only take 5.1 PCM. Passthrough is unaffected.'
	String get audioChannelLimitSurround51Description => 'Mix 7.1 down to 5.1 for TVs and receivers that only take 5.1 PCM. Passthrough is unaffected.';

	/// en: 'Stereo'
	String get audioChannelLimitStereo => 'Stereo';

	/// en: 'Mix down to two channels for stereo speakers or headphones. Turns passthrough off.'
	String get audioChannelLimitStereoDescription => 'Mix down to two channels for stereo speakers or headphones. Turns passthrough off.';

	/// en: 'Center Channel Boost'
	String get downmixCenterBoost => 'Center Channel Boost';

	/// en: '${db} dB'
	String downmixCenterBoostValue({required Object db}) => '${db} dB';

	/// en: 'Boost (dB)'
	String get downmixCenterBoostLabel => 'Boost (dB)';

	/// en: 'dB'
	String get downmixCenterBoostShort => 'dB';

	/// en: 'Normalize Volume on Downmix'
	String get audioDownmixNormalize => 'Normalize Volume on Downmix';

	/// en: 'Lower the mix to prevent clipping. Turn off to keep the original volume (may distort loud scenes).'
	String get audioDownmixNormalizeDescription => 'Lower the mix to prevent clipping. Turn off to keep the original volume (may distort loud scenes).';

	/// en: 'Dolby Vision Conversion'
	String get dvConversionMode => 'Dolby Vision Conversion';

	/// en: 'Choose how Dolby Vision Profile 7 files are handled.'
	String get dvConversionModeDescription => 'Choose how Dolby Vision Profile 7 files are handled.';

	/// en: 'Auto'
	String get dvConversionAuto => 'Auto';

	/// en: 'Native / Disabled'
	String get dvConversionNative => 'Native / Disabled';

	/// en: 'P7 → P8.1'
	String get dvConversionDv81 => 'P7 → P8.1';

	/// en: 'P7 → HEVC'
	String get dvConversionHevcStrip => 'P7 → HEVC';

	/// en: 'Use device capability detection and normal fallback behavior'
	String get dvConversionAutoDescription => 'Use device capability detection and normal fallback behavior';

	/// en: 'Force native DV7 and suppress DV conversion retry'
	String get dvConversionNativeDescription => 'Force native DV7 and suppress DV conversion retry';

	/// en: 'Force inline RPU conversion to Dolby Vision profile 8.1'
	String get dvConversionDv81Description => 'Force inline RPU conversion to Dolby Vision profile 8.1';

	/// en: 'Strip Dolby Vision RPU/EL layers and present plain HEVC'
	String get dvConversionHevcStripDescription => 'Strip Dolby Vision RPU/EL layers and present plain HEVC';

	/// en: 'Disable Dolby Vision'
	String get disableDolbyVision => 'Disable Dolby Vision';

	/// en: 'Play the file's HDR10 or HLG layer instead of Dolby Vision, when it has one'
	String get disableDolbyVisionDescription => 'Play the file\'s HDR10 or HLG layer instead of Dolby Vision, when it has one';

	/// en: 'HDR to SDR Conversion'
	String get hdrSdrConversion => 'HDR to SDR Conversion';

	/// en: 'Choose what converts HDR video when the display can't show HDR.'
	String get hdrSdrConversionDescription => 'Choose what converts HDR video when the display can\'t show HDR.';

	/// en: 'Auto'
	String get hdrSdrConversionAuto => 'Auto';

	/// en: 'Let the app pick what works best on this device'
	String get hdrSdrConversionAutoDescription => 'Let the app pick what works best on this device';

	/// en: 'Device'
	String get hdrSdrConversionDevice => 'Device';

	/// en: 'Your device's video hardware converts it. Fastest, but colors depend on the device'
	String get hdrSdrConversionDeviceDescription => 'Your device\'s video hardware converts it. Fastest, but colors depend on the device';

	/// en: 'Player'
	String get hdrSdrConversionPlayer => 'Player';

	/// en: 'The player converts it. Consistent colors, but 4K may stutter on low-end TV boxes'
	String get hdrSdrConversionPlayerDescription => 'The player converts it. Consistent colors, but 4K may stutter on low-end TV boxes';

	/// en: 'Deinterlacing'
	String get deinterlace => 'Deinterlacing';

	/// en: 'Fix jagged edges in old TV recordings and DVDs (mpv player only)'
	String get deinterlaceDescription => 'Fix jagged edges in old TV recordings and DVDs (mpv player only)';

	/// en: 'Off'
	String get deinterlaceOff => 'Off';

	/// en: 'Show interlaced video as it is decoded'
	String get deinterlaceOffDescription => 'Show interlaced video as it is decoded';

	/// en: 'Video'
	String get deinterlaceVideo => 'Video';

	/// en: 'Turn each field into a full frame. For video shot for TV, like sports, news, and concerts'
	String get deinterlaceVideoDescription => 'Turn each field into a full frame. For video shot for TV, like sports, news, and concerts';

	/// en: 'Film'
	String get deinterlaceFilm => 'Film';

	/// en: 'Restore the original frames of film and animation telecined to 29.97 fps, common on NTSC DVDs. Video shot for TV stutters. Live TV uses Video'
	String get deinterlaceFilmDescription => 'Restore the original frames of film and animation telecined to 29.97 fps, common on NTSC DVDs. Video shot for TV stutters. Live TV uses Video';

	/// en: 'Ask for profile on app open'
	String get requireProfileSelectionOnOpen => 'Ask for profile on app open';

	/// en: 'Show profile selection every time the app is opened'
	String get requireProfileSelectionOnOpenDescription => 'Show profile selection every time the app is opened';

	/// en: 'Force TV mode'
	String get forceTvMode => 'Force TV mode';

	/// en: 'Keep TV layout?'
	String get forceTvModeKeepTitle => 'Keep TV layout?';

	/// en: 'TV layout is designed for remote controls. Reverting to the normal layout in ${seconds} s.'
	String forceTvModeKeepBody({required Object seconds}) => 'TV layout is designed for remote controls. Reverting to the normal layout in ${seconds} s.';

	/// en: 'Keep TV layout'
	String get forceTvModeKeepConfirm => 'Keep TV layout';

	/// en: 'TV layout reverted'
	String get forceTvModeReverted => 'TV layout reverted';

	/// en: 'Force TV layout. For devices that don't auto-detect. Requires restart.'
	String get forceTvModeDescription => 'Force TV layout. For devices that don\'t auto-detect. Requires restart.';

	/// en: 'Start in fullscreen'
	String get startInFullscreen => 'Start in fullscreen';

	/// en: 'Open Luroka in fullscreen mode at launch'
	String get startInFullscreenDescription => 'Open Luroka in fullscreen mode at launch';

	/// en: 'Exit fullscreen on player close'
	String get exitFullscreenOnPlayerClose => 'Exit fullscreen on player close';

	/// en: 'Automatically exit fullscreen when closing the video player'
	String get exitFullscreenOnPlayerCloseDescription => 'Automatically exit fullscreen when closing the video player';

	/// en: 'Auto-Hide Performance Overlay'
	String get autoHidePerformanceOverlay => 'Auto-Hide Performance Overlay';

	/// en: 'Fade the performance overlay with the playback controls'
	String get autoHidePerformanceOverlayDescription => 'Fade the performance overlay with the playback controls';

	/// en: 'Show Navigation Bar Labels'
	String get showNavBarLabels => 'Show Navigation Bar Labels';

	/// en: 'Display text labels under navigation bar icons'
	String get showNavBarLabelsDescription => 'Display text labels under navigation bar icons';

	/// en: 'Startup Section'
	String get startupSection => 'Startup Section';

	/// en: 'Show Explore Tab'
	String get showExploreTab => 'Show Explore Tab';

	/// en: 'Display the Explore tab with content from Plex Discover and connected trackers'
	String get showExploreTabDescription => 'Display the Explore tab with content from Plex Discover and connected trackers';

	/// en: 'Default to Favorite Channels'
	String get liveTvDefaultFavorites => 'Default to Favorite Channels';

	/// en: 'Show only favorite channels when opening Live TV'
	String get liveTvDefaultFavoritesDescription => 'Show only favorite channels when opening Live TV';

	/// en: 'General'
	String get general => 'General';

	/// en: 'Language, startup, and window behavior'
	String get generalDescription => 'Language, startup, and window behavior';

	/// en: 'Language & Region'
	String get languageAndRegion => 'Language & Region';

	/// en: 'Startup'
	String get startup => 'Startup';

	/// en: 'Display'
	String get display => 'Display';

	/// en: 'Library & Cards'
	String get libraryAndCards => 'Library & Cards';

	/// en: 'Home Screen'
	String get homeScreen => 'Home Screen';

	/// en: 'Navigation'
	String get navigation => 'Navigation';

	/// en: 'Window'
	String get window => 'Window';

	/// en: 'Live TV'
	String get liveTv => 'Live TV';

	/// en: 'Player'
	String get player => 'Player';

	/// en: 'Video & Display'
	String get videoAndDisplay => 'Video & Display';

	/// en: 'Audio'
	String get audio => 'Audio';

	/// en: 'Quality'
	String get quality => 'Quality';

	/// en: 'Subtitles'
	String get subtitles => 'Subtitles';

	/// en: 'Seek & Timing'
	String get seekAndTiming => 'Seek & Timing';

	/// en: 'Behavior'
	String get behavior => 'Behavior';

	/// en: 'Gestures'
	String get gestures => 'Gestures';

	/// en: 'Brightness Swipe'
	String get gestureBrightnessSwipe => 'Brightness Swipe';

	/// en: 'Swipe up or down on the left edge to adjust brightness'
	String get gestureBrightnessSwipeDescription => 'Swipe up or down on the left edge to adjust brightness';

	/// en: 'Volume Swipe'
	String get gestureVolumeSwipe => 'Volume Swipe';

	/// en: 'Swipe up or down on the right edge to adjust volume'
	String get gestureVolumeSwipeDescription => 'Swipe up or down on the right edge to adjust volume';

	/// en: 'Pinch to Zoom'
	String get gesturePinchToZoom => 'Pinch to Zoom';

	/// en: 'Pinch on the video to zoom in or out'
	String get gesturePinchToZoomDescription => 'Pinch on the video to zoom in or out';

	/// en: 'Remember Brightness Level'
	String get rememberBrightnessLevel => 'Remember Brightness Level';

	/// en: 'Start playback at the brightness set by the last swipe'
	String get rememberBrightnessLevelDescription => 'Start playback at the brightness set by the last swipe';

	/// en: 'Controls'
	String get controls => 'Controls';

	/// en: 'Remember Player Changes'
	String get rememberPlayerChanges => 'Remember Player Changes';

	/// en: 'Save changes made during playback and reuse them next time'
	String get rememberPlayerChangesDescription => 'Save changes made during playback and reuse them next time';

	/// en: 'Playback Speed'
	String get scopePlaybackSpeed => 'Playback Speed';

	/// en: 'Shader Preset'
	String get scopeShaderPreset => 'Shader Preset';

	/// en: 'Aspect Ratio'
	String get scopeAspectRatio => 'Aspect Ratio';

	/// en: 'Audio & Subtitle Sync'
	String get scopeSyncOffsets => 'Audio & Subtitle Sync';

	/// en: 'Don't save'
	String get playerScopeOff => 'Don\'t save';

	/// en: 'Everywhere'
	String get playerScopeGlobal => 'Everywhere';

	/// en: 'Per library'
	String get playerScopeLibrary => 'Per library';

	/// en: 'Per show or movie'
	String get playerScopeTitle => 'Per show or movie';

	/// en: 'Export Luroka settings'
	String get exportDialogTitle => 'Export Luroka settings';

	/// en: 'Velvet Hour'
	String get velvetHourTheme => 'Velvet Hour';
}

// Path: themeEditor
class Translations$themeEditor$en {
	Translations$themeEditor$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Built-in'
	String get builtIn => 'Built-in';

	/// en: 'Presets'
	String get presets => 'Presets';

	/// en: 'Custom'
	String get custom => 'Custom';

	/// en: 'Not created yet'
	String get customEmpty => 'Not created yet';

	/// en: 'Edit custom theme'
	String get editCustom => 'Edit custom theme';

	/// en: 'Choose every color yourself'
	String get editCustomDescription => 'Choose every color yourself';

	/// en: 'Unlock with Supporter'
	String get locked => 'Unlock with Supporter';

	/// en: 'Saved — unlocks with Supporter'
	String get savedLocked => 'Saved — unlocks with Supporter';

	/// en: 'Custom Theme'
	String get title => 'Custom Theme';

	/// en: 'Start from'
	String get startFrom => 'Start from';

	/// en: 'Copy all colors from another theme'
	String get startFromDescription => 'Copy all colors from another theme';

	/// en: 'Colors'
	String get colors => 'Colors';

	/// en: 'Preview'
	String get preview => 'Preview';

	late final Translations$themeEditor$slots$en slots = Translations$themeEditor$slots$en.internal(_root);

	/// en: 'Opacity'
	String get opacity => 'Opacity';

	/// en: '#RRGGBB or #AARRGGBB'
	String get hexHint => '#RRGGBB or #AARRGGBB';

	/// en: 'From other themes'
	String get fromOtherThemes => 'From other themes';

	/// en: '${theme} ${color}'
	String swatchLabel({required Object theme, required Object color}) => '${theme} ${color}';

	late final Translations$themeEditor$contrast$en contrast = Translations$themeEditor$contrast$en.internal(_root);

	/// en: '${pair}: ${ratio}:1, below the recommended ${minimum}:1'
	String lowContrast({required Object pair, required Object ratio, required Object minimum}) => '${pair}: ${ratio}:1, below the recommended ${minimum}:1';

	/// en: 'Discard changes?'
	String get discardTitle => 'Discard changes?';

	/// en: 'Your unsaved color changes will be lost.'
	String get discardMessage => 'Your unsaved color changes will be lost.';

	/// en: 'Discard'
	String get discard => 'Discard';

	/// en: 'Episode ${number}'
	String previewCardTitle({required Object number}) => 'Episode ${number}';

	/// en: '${minutes} min left'
	String previewCardSubtitle({required Object minutes}) => '${minutes} min left';

	/// en: 'Autoplay'
	String get previewSwitch => 'Autoplay';

	/// en: 'Secondary text reads like this'
	String get previewMutedText => 'Secondary text reads like this';
}

// Path: seriesBrowser
class Translations$seriesBrowser$en {
	Translations$seriesBrowser$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: '1 episode'
	String get oneEpisode => '1 episode';

	/// en: '$count watched'
	String watchedCount({required Object count}) => '${count} watched';

	/// en: '$count episodes'
	String episodeCount({required Object count}) => '${count} episodes';

	/// en: '$season · Episodes'
	String episodesFor({required Object season}) => '${season} · Episodes';

	/// en: 'Select: open season · ↓: episodes'
	String get enterHint => 'Select: open season · ↓: episodes';
}

// Path: titlePage
class Translations$titlePage$en {
	Translations$titlePage$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Genre'
	String get genre => 'Genre';

	/// en: '$time remaining'
	String remaining({required Object time}) => '${time} remaining';

	/// en: 'Continue S${season} E${episode}'
	String continueEpisode({required Object season, required Object episode}) => 'Continue S${season} E${episode}';

	/// en: 'Watchlist'
	String get watchlist => 'Watchlist';

	/// en: 'More'
	String get more => 'More';
}

// Path: tvMenus
class Translations$tvMenus$en {
	Translations$tvMenus$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Theme, screen margins and posters'
	String get appearanceDescription => 'Theme, screen margins and posters';
}

// Path: lurokaPlayer
class Translations$lurokaPlayer$en {
	Translations$lurokaPlayer$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Player settings'
	String get title => 'Player settings';

	/// en: 'Watch'
	String get watch => 'Watch';

	/// en: 'Set the pace, wind down, and decide what plays next.'
	String get watchDescription => 'Set the pace, wind down, and decide what plays next.';

	/// en: 'Picture settings'
	String get picture => 'Picture settings';

	/// en: 'Zoom, HDR and video processing'
	String get pictureDescription => 'Zoom, HDR and video processing';

	/// en: 'Audio & subtitles'
	String get sound => 'Audio & subtitles';

	/// en: 'Audio settings'
	String get audioSettings => 'Audio settings';

	/// en: 'Timing, volume and audio output'
	String get soundDescription => 'Timing, volume and audio output';

	/// en: 'Choose languages and subtitle tracks'
	String get chooseTracks => 'Choose languages and subtitle tracks';

	/// en: 'Advanced'
	String get tools => 'Advanced';

	/// en: 'Playback information and diagnostics'
	String get toolsDescription => 'Playback information and diagnostics';

	/// en: 'Playback preferences'
	String get preferences => 'Playback preferences';

	/// en: 'Your cinema, your defaults. Start with sound and captions, then fine-tune streaming and your screen.'
	String get preferencesDescription => 'Your cinema, your defaults. Start with sound and captions, then fine-tune streaming and your screen.';

	/// en: 'Streaming quality'
	String get streamPreferences => 'Streaming quality';

	/// en: 'Display'
	String get displayPreferences => 'Display';

	/// en: 'Advanced player options'
	String get enginePreferences => 'Advanced player options';

	/// en: 'Seeking'
	String get seekPreferences => 'Seeking';

	/// en: 'Autoplay & skipping'
	String get watchPreferences => 'Autoplay & skipping';

	/// en: 'Remember preferences'
	String get rememberPreferences => 'Remember preferences';
}

// Path: lurokaSettings
class Translations$lurokaSettings$en {
	Translations$lurokaSettings$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Quick setup'
	String get quickSetup => 'Quick setup';

	/// en: 'Start with the essentials: smoother TV browsing, a comfortable screen fit, your Home layout, and playback preferences.'
	String get quickSetupDescription => 'Start with the essentials: smoother TV browsing, a comfortable screen fit, your Home layout, and playback preferences.';

	/// en: 'Your experience'
	String get experience => 'Your experience';

	/// en: 'Make Luroka feel right: appearance, languages, playback, libraries, and screen time.'
	String get experienceDescription => 'Make Luroka feel right: appearance, languages, playback, libraries, and screen time.';

	/// en: '↑ ↓ Browse categories · → / Select Open options · ← Return to categories'
	String get remoteHint => '↑ ↓ Browse categories  ·  → / Select Open options  ·  ← Return to categories';
}

// Path: playerChrome
class Translations$playerChrome$en {
	Translations$playerChrome$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Chapters & queue'
	String get browse => 'Chapters & queue';

	/// en: 'Back to playback'
	String get backToPlayback => 'Back to playback';

	/// en: 'NOW PLAYING'
	String get nowPlaying => 'NOW PLAYING';

	/// en: 'PLAYER OPTIONS'
	String get options => 'PLAYER OPTIONS';
}

// Path: tvLayout
class Translations$tvLayout$en {
	Translations$tvLayout$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'TV screen margins'
	String get screenMargins => 'TV screen margins';

	/// en: 'Shrink the app's edges if your TV cuts off part of the picture'
	String get screenMarginsDescription => 'Shrink the app\'s edges if your TV cuts off part of the picture';

	/// en: '0% (default)'
	String get screenMarginsDefault => '0% (default)';
}

// Path: studios
class Translations$studios$en {
	Translations$studios$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Checking other libraries… Choose a known copy at any time.'
	String get checkingCopies => 'Checking other libraries… Choose a known copy at any time.';

	/// en: 'Some libraries could not be checked. Choose a known copy or cancel and retry.'
	String get incompleteCopies => 'Some libraries could not be checked. Choose a known copy or cancel and retry.';

	/// en: 'Some favorites could not be loaded. Select Refresh to retry.'
	String get partialFavorites => 'Some favorites could not be loaded. Select Refresh to retry.';

	/// en: 'Could not check all copies'
	String get copyLookupFailedTitle => 'Could not check all copies';

	/// en: 'Some libraries did not respond. You can open one of the copies already found or cancel and try again.'
	String get copyLookupFailedMessage => 'Some libraries did not respond. You can open one of the copies already found or cancel and try again.';

	/// en: 'Show known copies'
	String get openKnownCopies => 'Show known copies';

	/// en: 'Browse all'
	String get browseAll => 'Browse all';

	/// en: '${count} titles'
	String titleCount({required Object count}) => '${count} titles';

	/// en: 'Top rated'
	String get topRated => 'Top rated';

	/// en: 'Most watched in your library'
	String get mostWatched => 'Most watched in your library';

	/// en: 'STUDIO COLLECTION'
	String get collection => 'STUDIO COLLECTION';

	/// en: '${count} titles loaded'
	String loadedTitles({required Object count}) => '${count} titles loaded';

	/// en: 'Sort titles'
	String get sort => 'Sort titles';

	/// en: 'Title A–Z'
	String get sortTitleAscending => 'Title A–Z';

	/// en: 'Title Z–A'
	String get sortTitleDescending => 'Title Z–A';

	/// en: 'Newest release'
	String get sortNewest => 'Newest release';

	/// en: 'Oldest release'
	String get sortOldest => 'Oldest release';

	/// en: 'Recently added'
	String get sortAdded => 'Recently added';

	/// en: 'Recently added episode'
	String get sortEpisodeAdded => 'Recently added episode';

	/// en: 'Highest rated'
	String get sortRating => 'Highest rated';

	/// en: 'Browse by Studio'
	String get title => 'Browse by Studio';

	/// en: 'All'
	String get all => 'All';

	/// en: 'Movies'
	String get movies => 'Movies';

	/// en: 'TV Shows'
	String get shows => 'TV Shows';

	/// en: 'Load more titles'
	String get loadMore => 'Load more titles';

	/// en: 'No matching titles in your currently visible libraries.'
	String get empty => 'No matching titles in your currently visible libraries.';

	/// en: 'Could not load more titles — select to retry'
	String get retry => 'Could not load more titles — select to retry';

	/// en: 'Explore movies and shows from this studio in your libraries.'
	String get description => 'Explore movies and shows from this studio in your libraries.';
}

// Path: dashboard
class Translations$dashboard$en {
	Translations$dashboard$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Previous featured title'
	String get previousFeature => 'Previous featured title';

	/// en: 'Next featured title'
	String get nextFeature => 'Next featured title';

	/// en: 'HOME'
	String get cinemaHome => 'HOME';

	/// en: 'TV episode'
	String get episodeFallback => 'TV episode';

	/// en: '${minutes} min left'
	String timeLeft({required Object minutes}) => '${minutes} min left';

	/// en: '${hours}h ${minutes}m left'
	String timeLeftHours({required Object hours, required Object minutes}) => '${hours}h ${minutes}m left';

	/// en: 'Episode details hidden by your spoiler preference.'
	String get spoilerHidden => 'Episode details hidden by your spoiler preference.';

	/// en: 'Open Details to see more about this title.'
	String get synopsisUnavailable => 'Open Details to see more about this title.';

	/// en: 'YOUR SPACE'
	String get yourSpace => 'YOUR SPACE';

	/// en: 'Your cinema.'
	String get title => 'Your cinema.';

	/// en: 'Pick up a story, or find your next one.'
	String get subtitle => 'Pick up a story, or find your next one.';

	/// en: 'LUROKA SPOTLIGHT'
	String get featured => 'LUROKA SPOTLIGHT';

	/// en: 'Jump back in'
	String get jumpBackIn => 'Jump back in';

	/// en: 'S${season} · E${episode}'
	String episodeLabel({required Object season, required Object episode}) => 'S${season} · E${episode}';

	/// en: 'Another pick'
	String get anotherPick => 'Another pick';

	/// en: 'Explore series'
	String get exploreSeries => 'Explore series';

	/// en: 'Home Spotlight'
	String get showFeatured => 'Home Spotlight';

	/// en: 'Show featured movies and shows at the top of Home.'
	String get showFeaturedDescription => 'Show featured movies and shows at the top of Home.';
}

// Path: lurokaCatalog
class Translations$lurokaCatalog$en {
	Translations$lurokaCatalog$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'IN THE SPOTLIGHT'
	String get aboutPerson => 'IN THE SPOTLIGHT';

	/// en: 'A biography is not available from this server.'
	String get biographyUnavailable => 'A biography is not available from this server.';

	/// en: 'Movies & shows in your libraries'
	String get filmography => 'Movies & shows in your libraries';

	/// en: 'Discover'
	String get recommended => 'Discover';

	/// en: 'All titles'
	String get browse => 'All titles';

	/// en: 'Collections'
	String get collections => 'Collections';

	/// en: 'Explore your catalog. Shape the selection with filters and sorting.'
	String get browseHint => 'Explore your catalog. Shape the selection with filters and sorting.';

	/// en: 'Find your next story'
	String get recommendedHint => 'Find your next story';

	/// en: 'Behind the story'
	String get details => 'Behind the story';
}

// Path: referenceDetails
class Translations$referenceDetails$en {
	Translations$referenceDetails$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: '1 episode left'
	String get oneEpisodeLeft => '1 episode left';

	/// en: 'Play all'
	String get playAll => 'Play all';

	/// en: 'Present'
	String get present => 'Present';

	/// en: 'Continuing'
	String get continuing => 'Continuing';

	/// en: 'Up next'
	String get upNext => 'Up next';

	/// en: '${count} episodes left'
	String episodesLeft({required Object count}) => '${count} episodes left';
}

// Path: lurokaThemes
class Translations$lurokaThemes$en {
	Translations$lurokaThemes$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Luroka cinema palettes'
	String get title => 'Luroka cinema palettes';

	/// en: 'Coral · midnight blue & sunset'
	String get coral => 'Coral · midnight blue & sunset';

	/// en: 'Ocean · deep blue & ice'
	String get ocean => 'Ocean · deep blue & ice';

	/// en: 'Jade · evergreen & mint'
	String get jade => 'Jade · evergreen & mint';

	/// en: 'Amethyst · midnight violet'
	String get amethyst => 'Amethyst · midnight violet';

	/// en: 'Dark cinema themes'
	String get darkThemes => 'Dark cinema themes';

	/// en: 'Light cinema themes'
	String get lightThemes => 'Light cinema themes';

	/// en: 'More themes'
	String get moreThemes => 'More themes';

	/// en: 'Browse additional palettes and custom colors'
	String get moreThemesDescription => 'Browse additional palettes and custom colors';

	/// en: 'Obsidian · pure black & champagne'
	String get obsidian => 'Obsidian · pure black & champagne';

	/// en: 'Nocturne · charcoal & champagne'
	String get nocturne => 'Nocturne · charcoal & champagne';

	/// en: 'Burgundy · velvet wine & rose'
	String get burgundy => 'Burgundy · velvet wine & rose';

	/// en: 'Slate · graphite & periwinkle'
	String get slate => 'Slate · graphite & periwinkle';

	/// en: 'Espresso · cocoa & caramel'
	String get espresso => 'Espresso · cocoa & caramel';

	/// en: 'Pearl · porcelain & sapphire'
	String get pearl => 'Pearl · porcelain & sapphire';

	/// en: 'Linen · warm ivory & terracotta'
	String get linen => 'Linen · warm ivory & terracotta';

	/// en: 'Sunrise · peach & coral'
	String get sunrise => 'Sunrise · peach & coral';

	/// en: 'Coastal · mist & ocean teal'
	String get coastal => 'Coastal · mist & ocean teal';

	/// en: 'Latte · cream & caramel'
	String get latte => 'Latte · cream & caramel';

	/// en: 'Sage · soft green & eucalyptus'
	String get sage => 'Sage · soft green & eucalyptus';

	/// en: 'Lavender · lilac & deep violet'
	String get lavender => 'Lavender · lilac & deep violet';
}

// Path: customPerformance
class Translations$customPerformance$en {
	Translations$customPerformance$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Performance & effects'
	String get title => 'Performance & effects';

	/// en: 'Low-power device mode'
	String get fireStickMode => 'Low-power device mode';

	/// en: 'Use reduced effects, static backdrops, artwork capped at 720p, and a 40 MiB image cache. While enabled, this overrides Visual effects; turning it off restores your Visual effects preference.'
	String get description => 'Use reduced effects, static backdrops, artwork capped at 720p, and a 40 MiB image cache. While enabled, this overrides Visual effects; turning it off restores your Visual effects preference.';

	/// en: 'Performance details'
	String get detailsTitle => 'Performance details';

	/// en: 'Active effects, image-cache limit, and browsing performance measurements'
	String get details => 'Active effects, image-cache limit, and browsing performance measurements';

	/// en: 'Active effects tier'
	String get effectsTier => 'Active effects tier';

	/// en: 'Image-cache limit'
	String get imageCache => 'Image-cache limit';

	/// en: 'Browsing measurement'
	String get measurement => 'Browsing measurement';

	/// en: 'Start a 20-second sample, go back to Home, and browse using the remote. Return here to see the results. Repeat the same actions with the mode on and off to compare. This measures Flutter UI work, not video decoder performance.'
	String get measureInstructions => 'Start a 20-second sample, go back to Home, and browse using the remote. Return here to see the results. Repeat the same actions with the mode on and off to compare. This measures Flutter UI work, not video decoder performance.';

	/// en: 'Start 20-second sample'
	String get startSample => 'Start 20-second sample';

	/// en: 'Finish sample now'
	String get stopSample => 'Finish sample now';

	/// en: 'Sampling — return to Home and browse. Results will be kept here.'
	String get sampling => 'Sampling — return to Home and browse. Results will be kept here.';

	/// en: 'Frames sampled'
	String get frames => 'Frames sampled';

	/// en: 'Frames over budget'
	String get slowFrames => 'Frames over budget';

	/// en: 'UI build time (95th percentile)'
	String get buildP95 => 'UI build time (95th percentile)';

	/// en: 'Raster time (95th percentile)'
	String get rasterP95 => 'Raster time (95th percentile)';

	/// en: 'Per-frame budget'
	String get frameBudget => 'Per-frame budget';

	/// en: 'App process memory at sample end'
	String get processMemory => 'App process memory at sample end';

	/// en: 'No rendered frames were captured. Start another sample and browse the app.'
	String get noFrames => 'No rendered frames were captured. Start another sample and browse the app.';
}

// Path: homeLayout
class Translations$homeLayout$en {
	Translations$homeLayout$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Choose and order studios'
	String get manageStudios => 'Choose and order studios';

	/// en: 'Choose which studios appear for this profile, and arrange their order.'
	String get manageStudiosDescription => 'Choose which studios appear for this profile, and arrange their order.';

	/// en: 'Only studios found in your selected libraries appear on Home.'
	String get studioUnavailable => 'Only studios found in your selected libraries appear on Home.';

	/// en: 'Show all studios'
	String get showAllStudios => 'Show all studios';

	/// en: 'Hide all studios'
	String get hideAllStudios => 'Hide all studios';

	/// en: 'Change studio order'
	String get reorderStudio => 'Change studio order';

	/// en: 'Episode images in Continue Watching'
	String get episodeThumbnails => 'Episode images in Continue Watching';

	/// en: 'Show episode images instead of series or season posters in Continue Watching and Next Up.'
	String get episodeThumbnailsDescription => 'Show episode images instead of series or season posters in Continue Watching and Next Up.';

	/// en: 'Spotlight source'
	String get spotlightSource => 'Spotlight source';

	/// en: 'For You uses this profile’s viewing activity on this device, together with favorites and library titles.'
	String get spotlightSourceDescription => 'For You uses this profile’s viewing activity on this device, together with favorites and library titles.';

	/// en: 'For You'
	String get spotlightForYou => 'For You';

	/// en: 'A mix of what you’re watching, favorites, new additions and trends, using this profile’s viewing activity on this device.'
	String get spotlightForYouDescription => 'A mix of what you’re watching, favorites, new additions and trends, using this profile’s viewing activity on this device.';

	/// en: 'Trending'
	String get spotlightTrending => 'Trending';

	/// en: 'Popular movies and shows in your libraries.'
	String get spotlightTrendingDescription => 'Popular movies and shows in your libraries.';

	/// en: 'Continue Watching'
	String get spotlightContinue => 'Continue Watching';

	/// en: 'Titles you’ve started and episodes you can continue.'
	String get spotlightContinueDescription => 'Titles you’ve started and episodes you can continue.';

	/// en: 'From your favorites'
	String get spotlightFavorites => 'From your favorites';

	/// en: 'Inspired by your viewing'
	String get spotlightInspired => 'Inspired by your viewing';

	/// en: 'Next up'
	String get spotlightNextUp => 'Next up';

	/// en: 'Personalize Home'
	String get title => 'Personalize Home';

	/// en: 'Choose the row order and visibility for this profile. Select a row to move or hide it.'
	String get description => 'Choose the row order and visibility for this profile. Select a row to move or hide it.';

	/// en: 'Home rows'
	String get rows => 'Home rows';

	/// en: 'Continue Watching and Next Up'
	String get progressLayout => 'Continue Watching and Next Up';

	/// en: 'Combined in one row'
	String get progressCombined => 'Combined in one row';

	/// en: 'Separate rows'
	String get progressSeparate => 'Separate rows';

	/// en: 'Separate Next Up when supported by the server. Other servers stay combined.'
	String get progressDescription => 'Separate Next Up when supported by the server. Other servers stay combined.';

	/// en: 'Visible'
	String get visible => 'Visible';

	/// en: 'Hidden'
	String get hidden => 'Hidden';

	/// en: 'Show row'
	String get showRow => 'Show row';

	/// en: 'Hide row'
	String get hideRow => 'Hide row';

	/// en: 'Move up'
	String get moveUp => 'Move up';

	/// en: 'Move down'
	String get moveDown => 'Move down';

	/// en: 'Pinned collections'
	String get pinnedCollections => 'Pinned collections';

	/// en: 'Open a collection's menu and choose Pin to Home. Select a pinned collection here to remove its shortcut.'
	String get pinInstructions => 'Open a collection\'s menu and choose Pin to Home. Select a pinned collection here to remove its shortcut.';

	/// en: 'Pin to Home'
	String get pinCollection => 'Pin to Home';

	/// en: 'Unpin from Home'
	String get unpinCollection => 'Unpin from Home';

	/// en: 'Restore default rows'
	String get reset => 'Restore default rows';

	/// en: 'Restore the original row order and show all rows for this profile? Your pinned collections will be kept.'
	String get resetDescription => 'Restore the original row order and show all rows for this profile? Your pinned collections will be kept.';

	/// en: 'Could not save your home layout. Please try again.'
	String get saveFailed => 'Could not save your home layout. Please try again.';

	/// en: 'Rows may be hidden. Open Personalize Home to show them again.'
	String get emptyHint => 'Rows may be hidden. Open Personalize Home to show them again.';
}

// Path: screenTime
class Translations$screenTime$en {
	Translations$screenTime$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Screen Time'
	String get title => 'Screen Time';

	/// en: 'See time spent watching video on this profile'
	String get description => 'See time spent watching video on this profile';

	/// en: 'Today'
	String get today => 'Today';

	/// en: 'This Week'
	String get thisWeek => 'This Week';

	/// en: 'This Month'
	String get thisMonth => 'This Month';

	/// en: '< 1 min'
	String get lessThanMinute => '< 1 min';

	/// en: '${count} min'
	String minutes({required Object count}) => '${count} min';

	/// en: '${count} hr'
	String hours({required Object count}) => '${count} hr';

	/// en: '${hours} hr ${minutes} min'
	String hoursMinutes({required Object hours, required Object minutes}) => '${hours} hr ${minutes} min';
}

// Path: activityStats
class Translations$activityStats$en {
	Translations$activityStats$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Viewing statistics'
	String get title => 'Viewing statistics';

	/// en: 'Period'
	String get period => 'Period';

	/// en: '7 days'
	String get last7Days => '7 days';

	/// en: '30 days'
	String get last30Days => '30 days';

	/// en: '90 days'
	String get last90Days => '90 days';

	/// en: 'Year'
	String get thisYear => 'Year';

	/// en: 'All'
	String get allTime => 'All';

	/// en: 'All time'
	String get heroAllTime => 'All time';

	/// en: 'Daily average'
	String get heroDailyAverage => 'Daily average';

	/// en: 'Consistency'
	String get consistency => 'Consistency';

	/// en: 'Current streak'
	String get currentStreak => 'Current streak';

	/// en: '(one) {$n day} (other) {$n days}'
	String dayCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		one: '${n} day',
		other: '${n} days',
	);

	/// en: 'Longest streak'
	String get longestStreak => 'Longest streak';

	/// en: 'Best day'
	String get bestDay => 'Best day';

	/// en: 'Best week'
	String get bestWeek => 'Best week';

	/// en: 'Watch time'
	String get trendTitle => 'Watch time';

	/// en: 'Today'
	String get trendToday => 'Today';

	/// en: '$stat on $range'
	String gapDetail({required Object stat, required Object range}) => '${stat} on ${range}';

	/// en: 'Your patterns'
	String get patternsTitle => 'Your patterns';

	/// en: 'Mostly $kind'
	String mostlyKind({required Object kind}) => 'Mostly ${kind}';

	/// en: 'By weekday'
	String get weekdayTitle => 'By weekday';

	/// en: 'By time of day'
	String get hoursTitle => 'By time of day';

	/// en: 'AM'
	String get amLabel => 'AM';

	/// en: 'PM'
	String get pmLabel => 'PM';

	/// en: 'By category'
	String get kindsTitle => 'By category';

	/// en: 'Movies'
	String get kindMovie => 'Movies';

	/// en: 'TV'
	String get kindTv => 'TV';

	/// en: 'Live TV'
	String get kindLiveTv => 'Live TV';

	/// en: 'Music'
	String get kindMusic => 'Music';

	/// en: 'Other'
	String get kindOther => 'Other';

	/// en: 'Most watched'
	String get topTitlesTitle => 'Most watched';

	/// en: 'Recent sessions'
	String get sessionsTitle => 'Recent sessions';

	/// en: 'Recent viewing'
	String get recentViewingTitle => 'Recent viewing';

	/// en: 'Total time watched in the selected period. Dates show the latest viewing.'
	String get recentViewingHint => 'Total time watched in the selected period. Dates show the latest viewing.';

	/// en: 'Show more'
	String get showMore => 'Show more';

	/// en: 'Unidentified playback'
	String get sessionNoTitle => 'Unidentified playback';

	/// en: 'Nothing here yet'
	String get emptyTitle => 'Nothing here yet';

	/// en: 'Watch something and your statistics will build up here.'
	String get emptyBody => 'Watch something and your statistics will build up here.';

	/// en: 'No playback recorded in this period.'
	String get noDataInPeriod => 'No playback recorded in this period.';

	/// en: 'Overview'
	String get overview => 'Overview';

	/// en: 'History'
	String get history => 'History';

	/// en: 'Patterns'
	String get patternsTab => 'Patterns';

	/// en: 'Activity is just getting started. Viewing patterns will appear after a few active days.'
	String get gettingStarted => 'Activity is just getting started. Viewing patterns will appear after a few active days.';

	/// en: 'Monthly recap'
	String get monthlyRecap => 'Monthly recap';

	/// en: 'Time reflects recorded playback, not titles completed.'
	String get measurementHint => 'Time reflects recorded playback, not titles completed.';

	/// en: 'Activity comes from this profile’s local Luroka playback ledger. Server watch history and playback in other apps are not included.'
	String get ledgerScope => 'Activity comes from this profile’s local Luroka playback ledger. Server watch history and playback in other apps are not included.';

	/// en: 'Watched this period'
	String get watchedPeriod => 'Watched this period';

	/// en: 'Active days'
	String get activeDays => 'Active days';

	/// en: 'Daily average'
	String get dailyAverage => 'Daily average';

	/// en: 'Previous period'
	String get previousPeriod => 'Previous period';

	/// en: 'Not enough history'
	String get insufficientHistory => 'Not enough history';

	/// en: 'View activity for these dates'
	String get drillDown => 'View activity for these dates';

	/// en: 'Search viewing history'
	String get searchHistory => 'Search viewing history';

	/// en: 'All'
	String get allKinds => 'All';

	/// en: 'Movies'
	String get moviesFilter => 'Movies';

	/// en: 'Episodes'
	String get episodesFilter => 'Episodes';

	/// en: 'Dates'
	String get datesFilter => 'Dates';

	/// en: 'Clear dates'
	String get clearDates => 'Clear dates';

	/// en: 'No viewing matches these filters.'
	String get noMatches => 'No viewing matches these filters.';

	/// en: 'View all history'
	String get allHistory => 'View all history';

	/// en: 'Could not load history. Please try again.'
	String get historyError => 'Could not load history. Please try again.';

	/// en: '${count} titles played · episodes counted separately'
	String titlesPlayed({required Object count}) => '${count} titles played · episodes counted separately';

	/// en: '${duration} watched this month'
	String monthWatched({required Object duration}) => '${duration} watched this month';

	/// en: 'All time: ${total} · Daily average: ${average}'
	String lifetimeSummary({required Object total, required Object average}) => 'All time: ${total} · Daily average: ${average}';

	/// en: 'Scale: 0 – ${duration}'
	String chartScale({required Object duration}) => 'Scale: 0 – ${duration}';

	/// en: 'Titles played'
	String get titlesPlayedLabel => 'Titles played';

	/// en: 'Episodes count separately. Playback time does not indicate completion.'
	String get playedHint => 'Episodes count separately. Playback time does not indicate completion.';
}

// Path: search
class Translations$search$en {
	Translations$search$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Search movies, shows, music...'
	String get hint => 'Search movies, shows, music...';

	/// en: 'Try a different search term'
	String get tryDifferentTerm => 'Try a different search term';

	/// en: 'Search your media'
	String get searchYourMedia => 'Search your media';

	/// en: 'Enter a title, actor, or keyword'
	String get enterTitleActorOrKeyword => 'Enter a title, actor, or keyword';

	/// en: 'People'
	String get people => 'People';

	/// en: 'Recent searches'
	String get recentSearches => 'Recent searches';

	/// en: 'Clear history'
	String get clearHistory => 'Clear history';
}

// Path: hotkeys
class Translations$hotkeys$en {
	Translations$hotkeys$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Set Shortcut for ${actionName}'
	String setShortcutFor({required Object actionName}) => 'Set Shortcut for ${actionName}';

	/// en: 'Clear shortcut'
	String get clearShortcut => 'Clear shortcut';

	/// en: 'No shortcut set'
	String get noShortcutSet => 'No shortcut set';

	/// en: 'Current shortcut:'
	String get currentShortcut => 'Current shortcut:';

	/// en: 'Select to record a shortcut'
	String get pressToRecord => 'Select to record a shortcut';

	/// en: 'Press the shortcut now'
	String get recordingShortcut => 'Press the shortcut now';

	late final Translations$hotkeys$actions$en actions = Translations$hotkeys$actions$en.internal(_root);
}

// Path: fileInfo
class Translations$fileInfo$en {
	Translations$fileInfo$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'File Info'
	String get title => 'File Info';

	/// en: 'Overview'
	String get overview => 'Overview';

	/// en: 'Video'
	String get video => 'Video';

	/// en: 'Audio'
	String get audio => 'Audio';

	/// en: 'Subtitles'
	String get subtitles => 'Subtitles';

	/// en: 'Embedded Images'
	String get images => 'Embedded Images';

	/// en: 'Data Streams'
	String get dataStreams => 'Data Streams';

	/// en: 'Lyrics'
	String get lyrics => 'Lyrics';

	/// en: 'File'
	String get file => 'File';

	/// en: 'Attachments'
	String get attachments => 'Attachments';

	/// en: 'Delivery'
	String get delivery => 'Delivery';

	/// en: 'Version ${index} of ${count}'
	String versionCounter({required Object index, required Object count}) => 'Version ${index} of ${count}';

	/// en: 'File ${index} of ${count}'
	String fileCounter({required Object index, required Object count}) => 'File ${index} of ${count}';

	/// en: 'The server reported no streams for this file.'
	String get noStreams => 'The server reported no streams for this file.';

	/// en: 'Copy path'
	String get copyPath => 'Copy path';

	/// en: 'File path copied'
	String get pathCopied => 'File path copied';

	/// en: 'Codec'
	String get codec => 'Codec';

	/// en: 'Codec Tag'
	String get codecTag => 'Codec Tag';

	/// en: 'Resolution'
	String get resolution => 'Resolution';

	/// en: 'Coded Resolution'
	String get codedResolution => 'Coded Resolution';

	/// en: 'Bitrate'
	String get bitrate => 'Bitrate';

	/// en: 'Frame Rate'
	String get frameRate => 'Frame Rate';

	/// en: 'Rotation'
	String get rotation => 'Rotation';

	/// en: 'Comment'
	String get comment => 'Comment';

	/// en: 'Audio Description'
	String get audioDescription => 'Audio Description';

	/// en: 'Header Compression'
	String get headerCompression => 'Header Compression';

	/// en: 'Sidecar File'
	String get sidecarFile => 'Sidecar File';

	/// en: 'Transport Timestamp'
	String get transportTimestamp => 'Transport Timestamp';

	/// en: 'Display Offset'
	String get displayOffset => 'Display Offset';

	/// en: 'Preview Failure Code'
	String get previewFailureCode => 'Preview Failure Code';

	/// en: 'Preview Retries'
	String get previewRetries => 'Preview Retries';

	/// en: 'Aspect Ratio'
	String get aspectRatio => 'Aspect Ratio';

	/// en: 'Pixel Aspect Ratio'
	String get pixelAspectRatio => 'Pixel Aspect Ratio';

	/// en: 'Profile'
	String get profile => 'Profile';

	/// en: 'Level'
	String get level => 'Level';

	/// en: 'Bit Depth'
	String get bitDepth => 'Bit Depth';

	/// en: 'Pixel Format'
	String get pixelFormat => 'Pixel Format';

	/// en: 'Color Space'
	String get colorSpace => 'Color Space';

	/// en: 'Color Range'
	String get colorRange => 'Color Range';

	/// en: 'Color Primaries'
	String get colorPrimaries => 'Color Primaries';

	/// en: 'Color Transfer'
	String get colorTransfer => 'Color Transfer';

	/// en: 'Chroma Subsampling'
	String get chromaSubsampling => 'Chroma Subsampling';

	/// en: 'Chroma Location'
	String get chromaLocation => 'Chroma Location';

	/// en: 'Scan Type'
	String get scanType => 'Scan Type';

	/// en: 'Interlaced'
	String get interlaced => 'Interlaced';

	/// en: 'Anamorphic'
	String get anamorphic => 'Anamorphic';

	/// en: 'Reference Frames'
	String get referenceFrames => 'Reference Frames';

	/// en: 'Dynamic Range'
	String get dynamicRange => 'Dynamic Range';

	/// en: 'Dolby Vision'
	String get dolbyVision => 'Dolby Vision';

	/// en: 'Dolby Vision Level'
	String get dolbyVisionLevel => 'Dolby Vision Level';

	/// en: 'Dolby Vision Version'
	String get dolbyVisionVersion => 'Dolby Vision Version';

	/// en: 'Dolby Vision Layers'
	String get dolbyVisionLayers => 'Dolby Vision Layers';

	/// en: 'Base Layer Compatibility'
	String get baseLayerCompatibility => 'Base Layer Compatibility';

	/// en: 'AVC Bitstream'
	String get avcBitstream => 'AVC Bitstream';

	/// en: 'NAL Length Size'
	String get nalLengthSize => 'NAL Length Size';

	/// en: 'Custom Scaling Matrix'
	String get scalingMatrix => 'Custom Scaling Matrix';

	/// en: 'Stream Identifier'
	String get streamIdentifier => 'Stream Identifier';

	/// en: 'Stream Index'
	String get streamIndex => 'Stream Index';

	/// en: 'Stream ID'
	String get streamId => 'Stream ID';

	/// en: 'Language'
	String get language => 'Language';

	/// en: 'Language Code'
	String get languageCode => 'Language Code';

	/// en: 'Track Title'
	String get streamTitle => 'Track Title';

	/// en: 'Channels'
	String get channels => 'Channels';

	/// en: 'Sample Rate'
	String get sampleRate => 'Sample Rate';

	/// en: 'Spatial Audio'
	String get spatialAudio => 'Spatial Audio';

	/// en: 'Text Based'
	String get textBased => 'Text Based';

	/// en: 'Sidecar Format'
	String get subtitleFormat => 'Sidecar Format';

	/// en: 'Provider'
	String get provider => 'Provider';

	/// en: 'Match Score'
	String get matchScore => 'Match Score';

	/// en: 'Can Be Served Separately'
	String get externalDelivery => 'Can Be Served Separately';

	/// en: 'Sidecar Path'
	String get sidecarPath => 'Sidecar Path';

	/// en: 'Copied From'
	String get sourceStream => 'Copied From';

	/// en: 'Temporary'
	String get temporary => 'Temporary';

	/// en: 'Time Base'
	String get timeBase => 'Time Base';

	/// en: 'Overall Bitrate'
	String get overallBitrate => 'Overall Bitrate';

	/// en: 'Path'
	String get path => 'Path';

	/// en: 'File Name'
	String get fileName => 'File Name';

	/// en: 'Size'
	String get size => 'Size';

	/// en: 'Total Size'
	String get totalSize => 'Total Size';

	/// en: 'Container'
	String get container => 'Container';

	/// en: 'Duration'
	String get duration => 'Duration';

	/// en: 'Preview Thumbnails'
	String get previewThumbnails => 'Preview Thumbnails';

	/// en: 'Preview Index'
	String get previewIndex => 'Preview Index';

	/// en: 'Packet Length'
	String get packetLength => 'Packet Length';

	/// en: 'File Present'
	String get filePresent => 'File Present';

	/// en: 'Readable by Server'
	String get fileReadable => 'Readable by Server';

	/// en: 'Stream Path'
	String get streamPath => 'Stream Path';

	/// en: 'Optimized for Streaming'
	String get optimizedForStreaming => 'Optimized for Streaming';

	/// en: '64-bit Offsets'
	String get has64bitOffsets => '64-bit Offsets';

	/// en: 'Protocol'
	String get protocol => 'Protocol';

	/// en: 'Media Type'
	String get mediaType => 'Media Type';

	/// en: 'Source Kind'
	String get sourceKind => 'Source Kind';

	/// en: 'Optimized Version'
	String get optimizedVersion => 'Optimized Version';

	/// en: 'Optimization Target'
	String get optimizationTarget => 'Optimization Target';

	/// en: 'Deleted'
	String get deletedAt => 'Deleted';

	/// en: 'Remote Source'
	String get remoteSource => 'Remote Source';

	/// en: 'Infinite Stream'
	String get infiniteStream => 'Infinite Stream';

	/// en: 'Direct Play'
	String get directPlay => 'Direct Play';

	/// en: 'Direct Stream'
	String get directStream => 'Direct Stream';

	/// en: 'Transcoding'
	String get transcoding => 'Transcoding';

	/// en: 'ETag'
	String get etag => 'ETag';

	/// en: 'Version ID'
	String get versionId => 'Version ID';

	/// en: 'File ID'
	String get fileId => 'File ID';

	/// en: 'Default Audio Track'
	String get defaultAudioTrack => 'Default Audio Track';

	/// en: 'Default Subtitle Track'
	String get defaultSubtitleTrack => 'Default Subtitle Track';

	/// en: 'Off'
	String get subtitlesOff => 'Off';

	/// en: 'Default'
	String get flagDefault => 'Default';

	/// en: 'Forced'
	String get flagForced => 'Forced';

	/// en: 'Selected'
	String get flagSelected => 'Selected';

	/// en: 'External'
	String get flagExternal => 'External';

	/// en: 'Hearing impaired'
	String get flagHearingImpaired => 'Hearing impaired';

	/// en: 'Dub'
	String get flagDub => 'Dub';

	/// en: 'Original'
	String get flagOriginal => 'Original';

	/// en: 'Mono'
	String get channelsMono => 'Mono';

	/// en: 'Profile ${profile}'
	String dolbyVisionProfile({required Object profile}) => 'Profile ${profile}';
}

// Path: mediaMenu
class Translations$mediaMenu$en {
	Translations$mediaMenu$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Mark as Watched'
	String get markAsWatched => 'Mark as Watched';

	/// en: 'Mark as Unwatched'
	String get markAsUnwatched => 'Mark as Unwatched';

	/// en: 'Clear progress'
	String get clearProgress => 'Clear progress';

	/// en: 'Remove from Continue Watching'
	String get removeFromContinueWatching => 'Remove from Continue Watching';

	/// en: 'View details'
	String get viewDetails => 'View details';

	/// en: 'Go to series'
	String get goToSeries => 'Go to series';

	/// en: 'Shuffle Play'
	String get shufflePlay => 'Shuffle Play';

	/// en: 'Shuffle not available offline'
	String get shuffleNotAvailableOffline => 'Shuffle not available offline';

	/// en: 'File Info'
	String get fileInfo => 'File Info';

	/// en: 'Delete episode from server'
	String get deleteEpisodeFromServer => 'Delete episode from server';

	/// en: 'Delete season from server'
	String get deleteSeasonFromServer => 'Delete season from server';

	/// en: 'Delete show from server'
	String get deleteShowFromServer => 'Delete show from server';

	/// en: 'Delete movie from server'
	String get deleteMovieFromServer => 'Delete movie from server';

	/// en: 'Delete this episode?'
	String get deleteEpisodeTitle => 'Delete this episode?';

	/// en: 'Delete this season?'
	String get deleteSeasonTitle => 'Delete this season?';

	/// en: 'Delete this show?'
	String get deleteShowTitle => 'Delete this show?';

	/// en: 'Delete this movie?'
	String get deleteMovieTitle => 'Delete this movie?';

	/// en: 'Delete episode'
	String get deleteEpisodeConfirm => 'Delete episode';

	/// en: 'Delete season'
	String get deleteSeasonConfirm => 'Delete season';

	/// en: 'Delete show'
	String get deleteShowConfirm => 'Delete show';

	/// en: 'Delete movie'
	String get deleteMovieConfirm => 'Delete movie';

	/// en: 'Delete anyway'
	String get deleteAnyway => 'Delete anyway';

	/// en: 'Permanently delete ${title} from your server?'
	String confirmDeleteTarget({required Object title}) => 'Permanently delete ${title} from your server?';

	/// en: 'This includes all episodes and their files.'
	String get deleteMultipleWarning => 'This includes all episodes and their files.';

	/// en: '(one) {This deletes all ${n} episode in it, and its file.} (other) {This deletes all ${n} episodes in it, and their files.}'
	String deleteEpisodeCountWarning({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		one: 'This deletes all ${n} episode in it, and its file.',
		other: 'This deletes all ${n} episodes in it, and their files.',
	);

	/// en: '(one) {This item is stored as ${n} file, which will be deleted.} (other) {This item is stored across ${n} files, and all of them will be deleted.}'
	String deleteMultiPartWarning({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		one: 'This item is stored as ${n} file, which will be deleted.',
		other: 'This item is stored across ${n} files, and all of them will be deleted.',
	);

	/// en: '(one) {${n} other episode is stored in the same file and will be deleted too:} (other) {${n} other episodes are stored in the same file and will be deleted too:}'
	String deleteSharedFileHeading({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		one: '${n} other episode is stored in the same file and will be deleted too:',
		other: '${n} other episodes are stored in the same file and will be deleted too:',
	);

	/// en: 'Luroka could not check which files this will remove, so it may delete more than the item named above. Cancel and try again, or delete anyway.'
	String get deleteScopeUnverifiedProbeFailed => 'Luroka could not check which files this will remove, so it may delete more than the item named above. Cancel and try again, or delete anyway.';

	/// en: 'Your server did not provide file details for this item, so Luroka cannot check which files this will remove. It may delete more than the item named above.'
	String get deleteScopeUnverifiedNoFileInfo => 'Your server did not provide file details for this item, so Luroka cannot check which files this will remove. It may delete more than the item named above.';

	/// en: 'Media item deleted successfully'
	String get mediaDeletedSuccessfully => 'Media item deleted successfully';

	/// en: 'Failed to delete media item'
	String get mediaFailedToDelete => 'Failed to delete media item';

	/// en: 'Rate'
	String get rate => 'Rate';

	/// en: 'Play from Beginning'
	String get playFromBeginning => 'Play from Beginning';

	/// en: 'Play Version...'
	String get playVersion => 'Play Version...';
}

// Path: rateSheet
class Translations$rateSheet$en {
	Translations$rateSheet$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Rate'
	String get title => 'Rate';

	/// en: 'Server'
	String get server => 'Server';

	/// en: 'Favorite'
	String get favorite => 'Favorite';

	/// en: 'Favorited'
	String get favorited => 'Favorited';

	/// en: 'Saved'
	String get saved => 'Saved';

	/// en: 'No match found'
	String get notAvailable => 'No match found';

	/// en: 'Connect a service in Settings to rate there.'
	String get noConnectedServices => 'Connect a service in Settings to rate there.';
}

// Path: accessibility
class Translations$accessibility$en {
	Translations$accessibility$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: '${title}, movie'
	String mediaCardMovie({required Object title}) => '${title}, movie';

	/// en: '${title}, TV show'
	String mediaCardShow({required Object title}) => '${title}, TV show';

	/// en: '${title}, ${episodeInfo}'
	String mediaCardEpisode({required Object title, required Object episodeInfo}) => '${title}, ${episodeInfo}';

	/// en: '${title}, ${seasonInfo}'
	String mediaCardSeason({required Object title, required Object seasonInfo}) => '${title}, ${seasonInfo}';

	/// en: 'watched'
	String get mediaCardWatched => 'watched';

	/// en: '${percent} percent watched'
	String mediaCardPartiallyWatched({required Object percent}) => '${percent} percent watched';

	/// en: 'unwatched'
	String get mediaCardUnwatched => 'unwatched';

	/// en: 'Tap to play'
	String get tapToPlay => 'Tap to play';

	/// en: 'Decrease'
	String get decrease => 'Decrease';

	/// en: 'Increase'
	String get increase => 'Increase';

	/// en: 'Decrease ${label}'
	String decreaseValue({required Object label}) => 'Decrease ${label}';

	/// en: 'Increase ${label}'
	String increaseValue({required Object label}) => 'Increase ${label}';

	/// en: 'Hue'
	String get hue => 'Hue';

	/// en: 'Saturation'
	String get saturation => 'Saturation';

	/// en: 'Brightness'
	String get brightness => 'Brightness';

	/// en: 'Hex color'
	String get hexColor => 'Hex color';

	/// en: 'Expand text'
	String get expandText => 'Expand text';

	/// en: 'Collapse text'
	String get collapseText => 'Collapse text';

	/// en: 'Alphabet navigation'
	String get alphabetNavigation => 'Alphabet navigation';

	/// en: 'Swipe up or down to move by letter'
	String get alphabetScrollHint => 'Swipe up or down to move by letter';

	/// en: 'Row ${row} of ${rowCount}, column ${column} of ${columnCount}'
	String rowColumnPosition({required Object row, required Object rowCount, required Object column, required Object columnCount}) => 'Row ${row} of ${rowCount}, column ${column} of ${columnCount}';

	/// en: 'Row ${row} of ${rowCount}'
	String rowPosition({required Object row, required Object rowCount}) => 'Row ${row} of ${rowCount}';

	/// en: 'Play auto-scroll'
	String get autoScrollPlay => 'Play auto-scroll';

	/// en: 'Pause auto-scroll'
	String get autoScrollPause => 'Pause auto-scroll';

	/// en: 'H'
	String get hueShort => 'H';

	/// en: 'S'
	String get saturationShort => 'S';

	/// en: 'V'
	String get valueShort => 'V';
}

// Path: tooltips
class Translations$tooltips$en {
	Translations$tooltips$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Shuffle play'
	String get shufflePlay => 'Shuffle play';

	/// en: 'Play trailer'
	String get playTrailer => 'Play trailer';

	/// en: 'Mark as watched'
	String get markAsWatched => 'Mark as watched';

	/// en: 'Mark as unwatched'
	String get markAsUnwatched => 'Mark as unwatched';
}

// Path: audioTracks
class Translations$audioTracks$en {
	Translations$audioTracks$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Audio Track ${n}'
	String track({required Object n}) => 'Audio Track ${n}';
}

// Path: videoControls
class Translations$videoControls$en {
	Translations$videoControls$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Audio'
	String get audioLabel => 'Audio';

	/// en: 'Subtitles'
	String get subtitlesLabel => 'Subtitles';

	/// en: '+${amount}${unit}'
	String addTime({required Object amount, required Object unit}) => '+${amount}${unit}';

	/// en: 'Letterbox'
	String get letterbox => 'Letterbox';

	/// en: 'Fill screen'
	String get fillScreen => 'Fill screen';

	/// en: 'Stretch'
	String get stretch => 'Stretch';

	/// en: 'Lock rotation'
	String get lockRotation => 'Lock rotation';

	/// en: 'Unlock rotation'
	String get unlockRotation => 'Unlock rotation';

	/// en: 'Timer Active'
	String get timerActive => 'Timer Active';

	/// en: 'Playback will pause in ${duration}'
	String playbackWillPauseIn({required Object duration}) => 'Playback will pause in ${duration}';

	/// en: 'End of current video'
	String get sleepTimerEndOfVideo => 'End of current video';

	/// en: 'Stop at'
	String get sleepTimerStopAtHeader => 'Stop at';

	/// en: 'Timer'
	String get sleepTimerDurationHeader => 'Timer';

	/// en: 'Playback will pause at the end of this video'
	String get playbackWillPauseAtEnd => 'Playback will pause at the end of this video';

	/// en: 'Still watching?'
	String get stillWatching => 'Still watching?';

	/// en: 'Pausing in ${seconds}s'
	String pausingIn({required Object seconds}) => 'Pausing in ${seconds}s';

	/// en: 'Continue'
	String get continueWatching => 'Continue';

	/// en: 'Auto-Play Next'
	String get autoPlayNext => 'Auto-Play Next';

	/// en: 'Play Next'
	String get playNext => 'Play Next';

	/// en: 'Play'
	String get playButton => 'Play';

	/// en: 'Pause'
	String get pauseButton => 'Pause';

	/// en: 'Paused'
	String get playbackPaused => 'Paused';

	/// en: 'Playing'
	String get playbackResumed => 'Playing';

	/// en: 'Loading video'
	String get loadingVideo => 'Loading video';

	/// en: 'Show playback controls'
	String get showPlaybackControls => 'Show playback controls';

	/// en: 'Hide playback controls'
	String get hidePlaybackControls => 'Hide playback controls';

	/// en: 'Seek backward ${seconds} seconds'
	String seekBackwardButton({required Object seconds}) => 'Seek backward ${seconds} seconds';

	/// en: 'Seek forward ${seconds} seconds'
	String seekForwardButton({required Object seconds}) => 'Seek forward ${seconds} seconds';

	/// en: 'Previous episode'
	String get previousButton => 'Previous episode';

	/// en: 'Next episode'
	String get nextButton => 'Next episode';

	/// en: 'Previous chapter'
	String get previousChapterButton => 'Previous chapter';

	/// en: 'Next chapter'
	String get nextChapterButton => 'Next chapter';

	/// en: 'Mute'
	String get muteButton => 'Mute';

	/// en: 'Unmute'
	String get unmuteButton => 'Unmute';

	/// en: 'Playback Settings'
	String get settingsButton => 'Playback Settings';

	/// en: 'Info'
	String get infoButton => 'Info';

	/// en: 'Audio & Subtitles'
	String get tracksButton => 'Audio & Subtitles';

	/// en: 'Chapters'
	String get chaptersButton => 'Chapters';

	/// en: 'Version & Quality'
	String get versionQualityButton => 'Version & Quality';

	/// en: 'Version'
	String get versionColumnHeader => 'Version';

	/// en: 'Quality'
	String get qualityColumnHeader => 'Quality';

	/// en: 'Original'
	String get qualityOriginal => 'Original';

	/// en: '${resolution}p ${bitrate} Mbps'
	String qualityPresetLabel({required Object resolution, required Object bitrate}) => '${resolution}p ${bitrate} Mbps';

	/// en: 'Transcoding unavailable — playing original quality'
	String get transcodeUnavailableFallback => 'Transcoding unavailable — playing original quality';

	/// en: 'Selected subtitles could not be loaded — continuing without subtitles'
	String get subtitleUnavailableFallback => 'Selected subtitles could not be loaded — continuing without subtitles';

	/// en: 'Picture-in-Picture mode'
	String get pipButton => 'Picture-in-Picture mode';

	/// en: 'Aspect ratio'
	String get aspectRatioButton => 'Aspect ratio';

	/// en: 'Ambient lighting'
	String get ambientLighting => 'Ambient lighting';

	/// en: 'Enter fullscreen'
	String get fullscreenButton => 'Enter fullscreen';

	/// en: 'Exit fullscreen'
	String get exitFullscreenButton => 'Exit fullscreen';

	/// en: 'Always on top'
	String get alwaysOnTopButton => 'Always on top';

	/// en: 'Rotation lock'
	String get rotationLockButton => 'Rotation lock';

	/// en: 'Lock screen'
	String get lockScreen => 'Lock screen';

	/// en: 'Screen lock'
	String get screenLockButton => 'Screen lock';

	/// en: 'Long press to unlock'
	String get longPressToUnlock => 'Long press to unlock';

	/// en: 'Video timeline'
	String get timelineSlider => 'Video timeline';

	/// en: 'Volume level'
	String get volumeSlider => 'Volume level';

	/// en: 'Ends at ${time}'
	String endsAt({required Object time}) => 'Ends at ${time}';

	/// en: 'Playing in Picture-in-Picture'
	String get pipActive => 'Playing in Picture-in-Picture';

	/// en: 'Picture-in-picture failed to start'
	String get pipFailed => 'Picture-in-picture failed to start';

	/// en: 'Screenshot saved'
	String get screenshotSaved => 'Screenshot saved';

	/// en: 'Couldn't take a screenshot'
	String get screenshotFailed => 'Couldn\'t take a screenshot';

	/// en: 'Zoom ${percent}%'
	String zoomPercent({required Object percent}) => 'Zoom ${percent}%';

	/// en: 'Volume ${percent}%'
	String volumePercent({required Object percent}) => 'Volume ${percent}%';

	late final Translations$videoControls$pipErrors$en pipErrors = Translations$videoControls$pipErrors$en.internal(_root);

	/// en: 'Chapters'
	String get chapters => 'Chapters';

	/// en: 'No chapters available'
	String get noChaptersAvailable => 'No chapters available';

	/// en: 'Queue'
	String get queue => 'Queue';

	/// en: 'No items in queue'
	String get noQueueItems => 'No items in queue';

	/// en: 'No audio devices available'
	String get noAudioDevicesAvailable => 'No audio devices available';

	/// en: 'Search Subtitles'
	String get searchSubtitles => 'Search Subtitles';

	/// en: 'Language'
	String get language => 'Language';

	/// en: 'No subtitles found'
	String get noSubtitlesFound => 'No subtitles found';

	/// en: 'Subtitle downloaded'
	String get subtitleDownloaded => 'Subtitle downloaded';

	/// en: 'Subtitle downloaded, but it could not be selected'
	String get subtitleDownloadedNotApplied => 'Subtitle downloaded, but it could not be selected';

	/// en: 'Failed to download subtitle'
	String get subtitleDownloadFailed => 'Failed to download subtitle';

	/// en: 'Search languages...'
	String get searchLanguages => 'Search languages...';

	/// en: 'Skip Intro'
	String get skipIntro => 'Skip Intro';

	/// en: 'Skip Credits'
	String get skipCredits => 'Skip Credits';

	/// en: 'Next Episode'
	String get nextEpisode => 'Next Episode';

	/// en: 'Track ${n}'
	String subtitleTrack({required Object n}) => 'Track ${n}';

	/// en: 'Subtitle ${name}'
	String subtitleFile({required Object name}) => 'Subtitle ${name}';

	/// en: '${label} (Forced)'
	String forcedTrack({required Object label}) => '${label} (Forced)';

	/// en: 'Subtitles: Off'
	String get osdSubtitlesOff => 'Subtitles: Off';

	/// en: 'Subtitles: ${track}'
	String osdSubtitles({required Object track}) => 'Subtitles: ${track}';

	/// en: 'Audio: ${track}'
	String osdAudio({required Object track}) => 'Audio: ${track}';
}

// Path: messages
class Translations$messages$en {
	Translations$messages$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Marked as watched'
	String get markedAsWatched => 'Marked as watched';

	/// en: 'Marked as unwatched'
	String get markedAsUnwatched => 'Marked as unwatched';

	/// en: 'Marked as watched (will sync when online)'
	String get markedAsWatchedOffline => 'Marked as watched (will sync when online)';

	/// en: 'Marked as unwatched (will sync when online)'
	String get markedAsUnwatchedOffline => 'Marked as unwatched (will sync when online)';

	/// en: 'Auto-removed: ${title}'
	String autoRemovedWatchedDownload({required Object title}) => 'Auto-removed: ${title}';

	/// en: '(one) {Auto-removed ${n} watched download} (other) {Auto-removed ${n} watched downloads}'
	String autoRemovedWatchedDownloads({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		one: 'Auto-removed ${n} watched download',
		other: 'Auto-removed ${n} watched downloads',
	);

	/// en: 'Removed from Continue Watching'
	String get removedFromContinueWatching => 'Removed from Continue Watching';

	/// en: 'Error: ${error}'
	String errorLoading({required Object error}) => 'Error: ${error}';

	/// en: 'Some media servers could not be searched. Showing available results.'
	String get searchPartialResults => 'Some media servers could not be searched. Showing available results.';

	/// en: 'The stream was interrupted. Press play or seek to retry.'
	String get streamInterrupted => 'The stream was interrupted. Press play or seek to retry.';

	/// en: 'The live stream was interrupted. Press play to retry.'
	String get liveStreamInterrupted => 'The live stream was interrupted. Press play to retry.';

	/// en: 'File information not available'
	String get fileInfoNotAvailable => 'File information not available';

	/// en: 'Sign in to the media server again to play this item.'
	String get playbackAuthenticationRequired => 'Sign in to the media server again to play this item.';

	/// en: 'The media server is unavailable. Try again later.'
	String get playbackServerUnavailable => 'The media server is unavailable. Try again later.';

	/// en: 'The server returned invalid playback information.'
	String get playbackDataInvalid => 'The server returned invalid playback information.';

	/// en: 'Playback was canceled.'
	String get playbackCancelled => 'Playback was canceled.';

	/// en: 'Playback could not be started.'
	String get playbackFailed => 'Playback could not be started.';

	/// en: 'Playback could not be started: ${error}'
	String playbackFailedDetail({required Object error}) => 'Playback could not be started: ${error}';

	/// en: 'The audio output stopped responding. Check the TV or receiver's audio connection; if other apps have no sound either, restart the device.'
	String get audioOutputFailed => 'The audio output stopped responding. Check the TV or receiver\'s audio connection; if other apps have no sound either, restart the device.';

	/// en: 'This content is no longer available.'
	String get mediaUnavailable => 'This content is no longer available.';

	/// en: 'Error loading file info: ${error}'
	String errorLoadingFileInfo({required Object error}) => 'Error loading file info: ${error}';

	/// en: 'Error loading series'
	String get errorLoadingSeries => 'Error loading series';

	/// en: 'Music playback is not yet supported'
	String get musicNotSupported => 'Music playback is not yet supported';

	/// en: 'No description available'
	String get noDescriptionAvailable => 'No description available';

	/// en: 'No profiles available'
	String get noProfilesAvailable => 'No profiles available';

	/// en: 'Contact your server administrator to add profiles'
	String get contactAdminForProfiles => 'Contact your server administrator to add profiles';

	/// en: 'Unable to determine library section for this item'
	String get unableToDetermineLibrarySection => 'Unable to determine library section for this item';

	/// en: 'Logs cleared'
	String get logsCleared => 'Logs cleared';

	/// en: 'Logs copied to clipboard'
	String get logsCopied => 'Logs copied to clipboard';

	/// en: 'No logs available'
	String get noLogsAvailable => 'No logs available';

	/// en: 'Scanning "${title}"...'
	String libraryScanning({required Object title}) => 'Scanning "${title}"...';

	/// en: 'Library scan started for "${title}"'
	String libraryScanStarted({required Object title}) => 'Library scan started for "${title}"';

	/// en: 'Failed to scan library: ${error}'
	String libraryScanFailed({required Object error}) => 'Failed to scan library: ${error}';

	/// en: 'Refreshing metadata for "${title}"...'
	String metadataRefreshing({required Object title}) => 'Refreshing metadata for "${title}"...';

	/// en: 'Metadata refresh started for "${title}"'
	String metadataRefreshStarted({required Object title}) => 'Metadata refresh started for "${title}"';

	/// en: 'Failed to refresh metadata: ${error}'
	String metadataRefreshFailed({required Object error}) => 'Failed to refresh metadata: ${error}';

	/// en: 'Are you sure you want to log out?'
	String get logoutConfirm => 'Are you sure you want to log out?';

	/// en: 'Log out of Luroka on this device? All profiles, including Kids profiles, server accounts, and downloaded media will be removed from this device. You can sign in again later.'
	String get logoutDeviceConfirm => 'Log out of Luroka on this device? All profiles, including Kids profiles, server accounts, and downloaded media will be removed from this device. You can sign in again later.';

	/// en: 'No seasons found'
	String get noSeasonsFound => 'No seasons found';

	/// en: 'Couldn't load seasons'
	String get seasonsLoadFailed => 'Couldn\'t load seasons';

	/// en: 'No episodes found in first season'
	String get noEpisodesFound => 'No episodes found in first season';

	/// en: 'No episodes found'
	String get noEpisodesFoundGeneral => 'No episodes found';

	/// en: 'Couldn't load episodes'
	String get episodesLoadFailed => 'Couldn\'t load episodes';

	/// en: 'No results found'
	String get noResultsFound => 'No results found';

	/// en: 'Sleep timer set for ${label}'
	String sleepTimerSet({required Object label}) => 'Sleep timer set for ${label}';

	/// en: 'No items available'
	String get noItemsAvailable => 'No items available';

	/// en: 'Failed to create a play queue — no items'
	String get failedToCreatePlayQueueNoItems => 'Failed to create a play queue — no items';

	/// en: 'Failed to ${action}: ${error}'
	String failedPlayback({required Object action, required Object error}) => 'Failed to ${action}: ${error}';

	/// en: 'Switching to compatible player...'
	String get switchingToCompatiblePlayer => 'Switching to compatible player...';

	/// en: 'Playback failed'
	String get serverLimitTitle => 'Playback failed';

	/// en: 'Server error (HTTP 500). A bandwidth/transcoding limit likely rejected this session. Ask the owner to adjust it.'
	String get serverLimitBody => 'Server error (HTTP 500). A bandwidth/transcoding limit likely rejected this session. Ask the owner to adjust it.';

	/// en: 'File unavailable'
	String get mediaUnreadableTitle => 'File unavailable';

	/// en: 'The server found this item but could not read its file (HTTP 404). The file was probably moved, deleted, or its storage is offline. Ask the server owner to check the file and rescan the library.'
	String get mediaUnreadableBody => 'The server found this item but could not read its file (HTTP 404). The file was probably moved, deleted, or its storage is offline. Ask the server owner to check the file and rescan the library.';

	/// en: 'Stream unavailable'
	String get serverBusyTitle => 'Stream unavailable';

	/// en: 'The server kept refusing to stream this file (HTTP 503). It may be restarting, busy, or the file's storage may be offline. Try again in a moment — if it keeps happening, ask the server owner to check the server and the file's storage.'
	String get serverBusyBody => 'The server kept refusing to stream this file (HTTP 503). It may be restarting, busy, or the file\'s storage may be offline. Try again in a moment — if it keeps happening, ask the server owner to check the server and the file\'s storage.';

	/// en: 'Playback not allowed'
	String get playbackNotAllowedTitle => 'Playback not allowed';

	/// en: 'The server refused to stream this item (HTTP 403). Your account may not have permission to play it, or the server may only allow playback on its local network.'
	String get playbackNotAllowedBody => 'The server refused to stream this item (HTTP 403). Your account may not have permission to play it, or the server may only allow playback on its local network.';

	/// en: 'Logs uploaded'
	String get logsUploaded => 'Logs uploaded';

	/// en: 'Failed to upload logs'
	String get logsUploadFailed => 'Failed to upload logs';

	/// en: 'Log ID'
	String get logId => 'Log ID';

	/// en: 'Subtitles are burned into this stream. Change them from the subtitle menu.'
	String get burnedSubtitlesUseMenu => 'Subtitles are burned into this stream. Change them from the subtitle menu.';

	/// en: 'No video URL available'
	String get noVideoUrl => 'No video URL available';

	/// en: 'The server returned no playable media sources'
	String get playbackNoMediaSources => 'The server returned no playable media sources';

	/// en: 'Playback was started before its data was ready'
	String get playbackDataNotPrepared => 'Playback was started before its data was ready';

	/// en: 'Stream selection is not available for this source'
	String get streamSelectionUnavailable => 'Stream selection is not available for this source';

	/// en: 'Could not apply the selected streams'
	String get streamSelectionFailed => 'Could not apply the selected streams';

	/// en: 'This track choice applies to the current playback only.'
	String get trackSelectionNotRemembered => 'This track choice applies to the current playback only.';

	/// en: 'No server is available for the active profile'
	String get serverUnavailableForProfile => 'No server is available for the active profile';
}

// Path: sourceLibraries
class Translations$sourceLibraries$en {
	Translations$sourceLibraries$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Your servers & libraries'
	String get title => 'Your servers & libraries';

	/// en: 'Choose the libraries Luroka uses for Home, search, Discover availability and Studios. Home row order is customized separately.'
	String get description => 'Choose the libraries Luroka uses for Home, search, Discover availability and Studios. Home row order is customized separately.';

	/// en: 'Some servers could not be checked. Your saved choices for those libraries are kept. Refresh to try again.'
	String get partial => 'Some servers could not be checked. Your saved choices for those libraries are kept. Refresh to try again.';

	/// en: 'Could not load your libraries. Check the connection and try again.'
	String get loadFailed => 'Could not load your libraries. Check the connection and try again.';

	/// en: 'Not available in your selected libraries.'
	String get notSelected => 'Not available in your selected libraries.';

	/// en: 'Check other connected sources'
	String get checkOthers => 'Check other connected sources';

	/// en: 'Available on other connected sources'
	String get otherSources => 'Available on other connected sources';

	/// en: 'Play once'
	String get playOnce => 'Play once';

	/// en: 'Include this library'
	String get includeLibrary => 'Include this library';

	/// en: 'No copies found on other connected sources.'
	String get noOthers => 'No copies found on other connected sources.';

	/// en: 'Choose at least one library to continue.'
	String get chooseOne => 'Choose at least one library to continue.';
}

// Path: subtitlingStyling
class Translations$subtitlingStyling$en {
	Translations$subtitlingStyling$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Text'
	String get text => 'Text';

	/// en: 'Border'
	String get border => 'Border';

	/// en: 'Background'
	String get background => 'Background';

	/// en: 'Font Size'
	String get fontSize => 'Font Size';

	/// en: 'Text Color'
	String get textColor => 'Text Color';

	/// en: 'Border Size'
	String get borderSize => 'Border Size';

	/// en: 'Border Color'
	String get borderColor => 'Border Color';

	/// en: 'Background Opacity'
	String get backgroundOpacity => 'Background Opacity';

	/// en: 'Background Color'
	String get backgroundColor => 'Background Color';

	/// en: 'Position'
	String get position => 'Position';

	/// en: 'ASS Override'
	String get assOverride => 'ASS Override';

	/// en: 'Scale'
	String get overrideScale => 'Scale';

	/// en: 'Force'
	String get overrideForce => 'Force';

	/// en: 'Remove styling'
	String get overrideStrip => 'Remove styling';

	/// en: 'Top'
	String get positionTop => 'Top';

	/// en: 'Bottom'
	String get positionBottom => 'Bottom';

	/// en: 'Use margins'
	String get useMargins => 'Use margins';

	/// en: 'Allow text subtitles in the space outside the video. Styled subtitles may keep their original placement.'
	String get useMarginsDescription => 'Allow text subtitles in the space outside the video. Styled subtitles may keep their original placement.';

	/// en: 'Anchor to Screen'
	String get anchorToScreen => 'Anchor to Screen';

	/// en: 'Show text subtitles in the black bars below widescreen video'
	String get anchorToScreenDescription => 'Show text subtitles in the black bars below widescreen video';

	/// en: 'Bold'
	String get bold => 'Bold';

	/// en: 'Italic'
	String get italic => 'Italic';

	/// en: 'Render Resolution'
	String get renderResolution => 'Render Resolution';

	/// en: 'Screen resolution'
	String get renderResolutionScreen => 'Screen resolution';

	/// en: 'Video resolution'
	String get renderResolutionVideo => 'Video resolution';
}

// Path: mpvConfig
class Translations$mpvConfig$en {
	Translations$mpvConfig$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'mpv.conf'
	String get title => 'mpv.conf';

	/// en: 'Advanced video player settings'
	String get description => 'Advanced video player settings';

	/// en: 'Presets'
	String get presets => 'Presets';

	/// en: 'No saved presets'
	String get noPresets => 'No saved presets';

	/// en: 'Save as Preset...'
	String get saveAsPreset => 'Save as Preset...';

	/// en: 'Preset Name'
	String get presetName => 'Preset Name';

	/// en: 'Enter a name for this preset'
	String get presetNameHint => 'Enter a name for this preset';

	/// en: 'Load'
	String get loadPreset => 'Load';

	/// en: 'Delete'
	String get deletePreset => 'Delete';

	/// en: 'Preset saved'
	String get presetSaved => 'Preset saved';

	/// en: 'Preset loaded'
	String get presetLoaded => 'Preset loaded';

	/// en: 'Preset deleted'
	String get presetDeleted => 'Preset deleted';

	/// en: 'Are you sure you want to delete this preset?'
	String get confirmDeletePreset => 'Are you sure you want to delete this preset?';

	/// en: 'gpu-api=vulkan hwdec=auto # comment'
	String get configPlaceholder => 'gpu-api=vulkan\nhwdec=auto\n# comment';

	/// en: 'option=value'
	String get lineHint => 'option=value';

	/// en: 'Add line'
	String get addLine => 'Add line';

	/// en: 'Remove line'
	String get removeLine => 'Remove line';

	/// en: 'vo, gpu-context and gpu-api are ignored on Linux: embedded video always renders through vo=libmpv on the video plane, and gpu-next (which compute shaders like ArtCNN need) cannot run embedded.'
	String get embeddedVoHint => 'vo, gpu-context and gpu-api are ignored on Linux: embedded video always renders through vo=libmpv on the video plane, and gpu-next (which compute shaders like ArtCNN need) cannot run embedded.';
}

// Path: dialog
class Translations$dialog$en {
	Translations$dialog$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Confirm Action'
	String get confirmAction => 'Confirm Action';
}

// Path: profiles
class Translations$profiles$en {
	Translations$profiles$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Manage profiles'
	String get manageProfiles => 'Manage profiles';

	/// en: 'Quick access'
	String get quickAccess => 'Quick access';

	/// en: 'Sign out of this device'
	String get signOutDevice => 'Sign out of this device';

	/// en: 'Add Luroka profile'
	String get addLurokaProfile => 'Add Luroka profile';

	/// en: 'Switching profile…'
	String get switchingProfile => 'Switching profile…';

	/// en: 'Delete this profile?'
	String get deleteThisProfileTitle => 'Delete this profile?';

	/// en: 'Remove ${displayName}. Connections aren't affected.'
	String deleteThisProfileMessage({required Object displayName}) => 'Remove ${displayName}. Connections aren\'t affected.';

	/// en: 'Active'
	String get active => 'Active';

	/// en: 'Manage'
	String get manage => 'Manage';

	/// en: 'Delete'
	String get delete => 'Delete';

	/// en: 'Sign out'
	String get signOut => 'Sign out';

	/// en: 'Sign out of Plex?'
	String get signOutPlexTitle => 'Sign out of Plex?';

	/// en: 'Remove ${displayName} and all Plex Home users? Sign back in anytime.'
	String signOutPlexMessage({required Object displayName}) => 'Remove ${displayName} and all Plex Home users? Sign back in anytime.';

	/// en: 'Also delete downloads'
	String get signOutPlexDeleteDownloads => 'Also delete downloads';

	/// en: 'Otherwise they stay on this device and come back when you sign back in to this account.'
	String get signOutPlexDeleteDownloadsDescription => 'Otherwise they stay on this device and come back when you sign back in to this account.';

	/// en: 'Signed out of Plex.'
	String get signedOutPlex => 'Signed out of Plex.';

	/// en: 'Sign out failed.'
	String get signOutFailed => 'Sign out failed.';

	/// en: 'Profiles'
	String get sectionTitle => 'Profiles';

	/// en: 'Add profiles to mix managed users and local identities'
	String get summarySingle => 'Add profiles to mix managed users and local identities';

	/// en: '${count} profiles · active: ${activeName}'
	String summaryMultipleWithActive({required Object count, required Object activeName}) => '${count} profiles · active: ${activeName}';

	/// en: '${count} profiles'
	String summaryMultiple({required Object count}) => '${count} profiles';

	/// en: 'Remove connection?'
	String get removeConnectionTitle => 'Remove connection?';

	/// en: 'Remove ${displayName}'s access to ${connectionLabel}. Other profiles keep it.'
	String removeConnectionMessage({required Object displayName, required Object connectionLabel}) => 'Remove ${displayName}\'s access to ${connectionLabel}. Other profiles keep it.';

	/// en: 'Delete profile?'
	String get deleteProfileTitle => 'Delete profile?';

	/// en: 'Remove ${displayName} and its connections. Servers stay available.'
	String deleteProfileMessage({required Object displayName}) => 'Remove ${displayName} and its connections. Servers stay available.';

	/// en: 'Profile name'
	String get profileNameLabel => 'Profile name';

	/// en: 'PIN protection'
	String get pinProtectionLabel => 'PIN protection';

	/// en: 'PIN managed by Plex. Edit on plex.tv.'
	String get pinManagedByPlex => 'PIN managed by Plex. Edit on plex.tv.';

	/// en: 'No PIN set. To require one, edit the home user on plex.tv.'
	String get noPinSetEditOnPlex => 'No PIN set. To require one, edit the home user on plex.tv.';

	/// en: 'Set PIN'
	String get setPin => 'Set PIN';

	/// en: 'Set PIN'
	String get setPinTitle => 'Set PIN';

	/// en: 'Confirm PIN'
	String get confirmPinTitle => 'Confirm PIN';

	/// en: 'PIN set'
	String get pinSet => 'PIN set';

	/// en: 'Change'
	String get changePin => 'Change';

	/// en: 'Remove'
	String get removePin => 'Remove';

	/// en: 'Connections'
	String get connectionsLabel => 'Connections';

	/// en: 'Add'
	String get add => 'Add';

	/// en: 'Delete profile'
	String get deleteProfileButton => 'Delete profile';

	/// en: 'No connections — add one to use this profile.'
	String get noConnectionsHint => 'No connections — add one to use this profile.';

	/// en: 'No connections'
	String get noConnections => 'No connections';

	/// en: 'Plex Home account'
	String get plexHomeAccount => 'Plex Home account';

	/// en: 'Plex account: ${account}'
	String plexAccountChip({required Object account}) => 'Plex account: ${account}';

	/// en: '${user} via ${account}'
	String plexAccountUserChip({required Object user, required Object account}) => '${user} via ${account}';

	/// en: 'Default'
	String get connectionDefault => 'Default';

	/// en: 'as ${displayName}'
	String connectionAs({required Object displayName}) => 'as ${displayName}';

	/// en: 'Make default'
	String get makeDefault => 'Make default';

	/// en: 'Remove'
	String get removeConnection => 'Remove';

	/// en: 'Profile renamed.'
	String get profileRenamed => 'Profile renamed.';

	/// en: 'Add to ${displayName}'
	String borrowAddTo({required Object displayName}) => 'Add to ${displayName}';

	/// en: 'Borrow another profile's connection. PIN-protected profiles require a PIN.'
	String get borrowExplain => 'Borrow another profile\'s connection. PIN-protected profiles require a PIN.';

	/// en: 'Nothing to borrow yet.'
	String get borrowEmpty => 'Nothing to borrow yet.';

	/// en: 'Connect Plex, Jellyfin, or Emby to another profile first.'
	String get borrowEmptySubtitle => 'Connect Plex, Jellyfin, or Emby to another profile first.';

	/// en: 'Available connections could not be loaded. Try again.'
	String get borrowLoadFailed => 'Available connections could not be loaded. Try again.';

	/// en: 'From ${displayName}'
	String borrowFromProfile({required Object displayName}) => 'From ${displayName}';

	/// en: 'Connection borrowed.'
	String get borrowConnectionBorrowed => 'Connection borrowed.';

	/// en: 'Failed to borrow connection.'
	String get borrowFailed => 'Failed to borrow connection.';

	/// en: 'Incorrect PIN.'
	String get incorrectPin => 'Incorrect PIN.';

	/// en: 'Incorrect PIN. Please try again.'
	String get incorrectPinTryAgain => 'Incorrect PIN. Please try again.';

	/// en: 'Source profile is missing its parent account.'
	String get sourceProfileMissingParentAccount => 'Source profile is missing its parent account.';

	/// en: 'Could not load your Plex Home users. Check your connection and try again.'
	String get failedToLoadHomeUsers => 'Could not load your Plex Home users. Check your connection and try again.';

	/// en: 'Failed to verify PIN.'
	String get failedToVerifyPin => 'Failed to verify PIN.';

	/// en: 'New profile'
	String get newProfile => 'New profile';

	/// en: 'e.g. Guests, Kids, Family Room'
	String get profileNameHint => 'e.g. Guests, Kids, Family Room';

	/// en: 'PIN protection (optional)'
	String get pinProtectionOptional => 'PIN protection (optional)';

	/// en: '4-digit PIN required to switch profiles.'
	String get pinExplain => '4-digit PIN required to switch profiles.';

	/// en: 'Continue'
	String get continueButton => 'Continue';

	/// en: 'PINs don't match'
	String get pinsDontMatch => 'PINs don\'t match';

	/// en: 'The Plex profile token resolved to an unexpected server'
	String get tokenIdentityMismatch => 'The Plex profile token resolved to an unexpected server';
}

// Path: connections
class Translations$connections$en {
	Translations$connections$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Servers & accounts'
	String get sectionTitle => 'Servers & accounts';

	/// en: 'Add account or server'
	String get addConnection => 'Add account or server';

	/// en: 'Sign in with Plex or connect a Jellyfin or Emby server'
	String get addConnectionSubtitleNoProfile => 'Sign in with Plex or connect a Jellyfin or Emby server';

	/// en: 'Add to ${displayName}: Plex, Jellyfin, Emby, or another profile connection'
	String addConnectionSubtitleScoped({required Object displayName}) => 'Add to ${displayName}: Plex, Jellyfin, Emby, or another profile connection';

	/// en: 'Session expired for ${name}'
	String sessionExpiredOne({required Object name}) => 'Session expired for ${name}';

	/// en: 'Session expired for ${count} servers'
	String sessionExpiredMany({required Object count}) => 'Session expired for ${count} servers';

	/// en: '${name} refused access for this account'
	String accessDeniedOne({required Object name}) => '${name} refused access for this account';

	/// en: '${count} servers refused access for this account'
	String accessDeniedMany({required Object count}) => '${count} servers refused access for this account';

	/// en: 'Sign in again'
	String get signInAgain => 'Sign in again';

	/// en: 'Edit ${product} connection'
	String editMediaBrowserTitle({required Object product}) => 'Edit ${product} connection';

	/// en: 'Add or remove URLs for ${serverName}. Luroka will use the reachable URL with the lowest latency.'
	String editMediaBrowserIntro({required Object serverName}) => 'Add or remove URLs for ${serverName}. Luroka will use the reachable URL with the lowest latency.';
}

// Path: serversAccounts
class Translations$serversAccounts$en {
	Translations$serversAccounts$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Servers & accounts'
	String get title => 'Servers & accounts';

	/// en: 'Sign-in status for your Plex, Jellyfin and Emby servers'
	String get subtitle => 'Sign-in status for your Plex, Jellyfin and Emby servers';

	/// en: 'Online'
	String get online => 'Online';

	/// en: 'Offline'
	String get offline => 'Offline';

	/// en: 'Not signed in here'
	String get unknown => 'Not signed in here';

	/// en: 'Not used by any profile'
	String get usedByNone => 'Not used by any profile';

	/// en: 'Used by ${name}'
	String usedByOne({required Object name}) => 'Used by ${name}';

	/// en: 'Used by ${name} and ${count} more'
	String usedByMany({required Object name, required Object count}) => 'Used by ${name} and ${count} more';

	/// en: '${online} of ${total} servers online'
	String serversOnline({required Object online, required Object total}) => '${online} of ${total} servers online';

	/// en: 'Nothing connected yet. Add your Plex account or a Jellyfin or Emby server.'
	String get noServers => 'Nothing connected yet. Add your Plex account or a Jellyfin or Emby server.';

	/// en: 'Edit server URLs'
	String get editUrls => 'Edit server URLs';
}

// Path: accountPreferences
class Translations$accountPreferences$en {
	Translations$accountPreferences$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Account preferences'
	String get sectionTitle => 'Account preferences';

	/// en: 'Audio, subtitle and library options saved on ${account}'
	String hubSubtitleSingle({required Object account}) => 'Audio, subtitle and library options saved on ${account}';

	/// en: 'Audio, subtitle and library options saved on ${count} accounts'
	String hubSubtitleMultiple({required Object count}) => 'Audio, subtitle and library options saved on ${count} accounts';

	/// en: 'Every account stores its own preferences. Pick the one to edit.'
	String get pickAccount => 'Every account stores its own preferences. Pick the one to edit.';

	/// en: 'These options are saved on the server account and shared by every Luroka profile and app using that account, including on other devices.'
	String get storedOnAccount => 'These options are saved on the server account and shared by every Luroka profile and app using that account, including on other devices.';

	/// en: 'No accounts to configure'
	String get noAccounts => 'No accounts to configure';

	/// en: 'Sign in to Plex, or connect a Jellyfin or Emby server, and the preferences stored on that account show up here.'
	String get noAccountsHint => 'Sign in to Plex, or connect a Jellyfin or Emby server, and the preferences stored on that account show up here.';

	/// en: 'Can't reach this account'
	String get unavailable => 'Can\'t reach this account';

	/// en: 'Couldn't load these preferences'
	String get loadFailed => 'Couldn\'t load these preferences';

	/// en: 'No preference'
	String get noPreference => 'No preference';

	/// en: 'Not set'
	String get notSet => 'Not set';

	late final Translations$accountPreferences$groups$en groups = Translations$accountPreferences$groups$en.internal(_root);

	/// en: 'Preferred audio language'
	String get preferredAudioLanguage => 'Preferred audio language';

	/// en: 'Choose audio by language'
	String get autoSelectAudio => 'Choose audio by language';

	/// en: 'Off keeps whatever audio track the file marks as default.'
	String get autoSelectAudioDescription => 'Off keeps whatever audio track the file marks as default.';

	/// en: 'Preferred subtitle language'
	String get preferredSubtitleLanguage => 'Preferred subtitle language';

	/// en: 'Turn subtitles on'
	String get subtitleMode => 'Turn subtitles on';

	late final Translations$accountPreferences$subtitleModes$en subtitleModes = Translations$accountPreferences$subtitleModes$en.internal(_root);

	/// en: 'SDH subtitles'
	String get subtitleAccessibility => 'SDH subtitles';

	late final Translations$accountPreferences$subtitleAccessibilityOptions$en subtitleAccessibilityOptions = Translations$accountPreferences$subtitleAccessibilityOptions$en.internal(_root);

	/// en: 'Forced subtitles'
	String get forcedSubtitles => 'Forced subtitles';

	late final Translations$accountPreferences$forcedSubtitleOptions$en forcedSubtitleOptions = Translations$accountPreferences$forcedSubtitleOptions$en.internal(_root);

	/// en: 'Show missing episodes'
	String get displayMissingEpisodes => 'Show missing episodes';

	/// en: 'List episodes the server knows about but has no file for.'
	String get displayMissingEpisodesDescription => 'List episodes the server knows about but has no file for.';

	/// en: 'Hide watched items in Latest'
	String get hidePlayedInLatest => 'Hide watched items in Latest';

	/// en: 'Leave items you have already watched out of the server's Latest rows.'
	String get hidePlayedInLatestDescription => 'Leave items you have already watched out of the server\'s Latest rows.';

	/// en: 'Show the Collections view'
	String get displayCollectionsView => 'Show the Collections view';

	/// en: 'Offer the server's Collections view alongside your libraries.'
	String get displayCollectionsViewDescription => 'Offer the server\'s Collections view alongside your libraries.';

	/// en: 'Keep rewatched shows in Next Up'
	String get rewatchingInNextUp => 'Keep rewatched shows in Next Up';

	/// en: 'Once you finish a show, start it again and Next Up follows the rewatch instead of dropping the show.'
	String get rewatchingInNextUpDescription => 'Once you finish a show, start it again and Next Up follows the rewatch instead of dropping the show.';

	/// en: 'Watched indicators'
	String get watchedIndicator => 'Watched indicators';

	late final Translations$accountPreferences$watchedIndicatorOptions$en watchedIndicatorOptions = Translations$accountPreferences$watchedIndicatorOptions$en.internal(_root);

	/// en: 'Ratings & reviews'
	String get mediaReviewsVisibility => 'Ratings & reviews';

	late final Translations$accountPreferences$mediaReviewsOptions$en mediaReviewsOptions = Translations$accountPreferences$mediaReviewsOptions$en.internal(_root);
}

// Path: discover
class Translations$discover$en {
	Translations$discover$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Discover'
	String get title => 'Discover';

	/// en: 'No content available'
	String get noContentAvailable => 'No content available';

	/// en: 'Add some media to your libraries'
	String get addMediaToLibraries => 'Add some media to your libraries';

	/// en: 'Continue Watching'
	String get continueWatching => 'Continue Watching';

	/// en: 'Continue Watching in ${library}'
	String continueWatchingIn({required Object library}) => 'Continue Watching in ${library}';

	/// en: 'Next Up'
	String get nextUp => 'Next Up';

	/// en: 'Next Up in ${library}'
	String nextUpIn({required Object library}) => 'Next Up in ${library}';

	/// en: 'Recently Added'
	String get recentlyAdded => 'Recently Added';

	/// en: 'Recently Added in ${library}'
	String recentlyAddedIn({required Object library}) => 'Recently Added in ${library}';

	/// en: 'Latest Albums in ${library}'
	String latestAlbumsIn({required Object library}) => 'Latest Albums in ${library}';

	/// en: 'Recently Played in ${library}'
	String recentlyPlayedIn({required Object library}) => 'Recently Played in ${library}';

	/// en: 'Most Played in ${library}'
	String mostPlayedIn({required Object library}) => 'Most Played in ${library}';

	/// en: 'S${season}E${episode}'
	String playEpisode({required Object season, required Object episode}) => 'S${season}E${episode}';

	/// en: 'Overview'
	String get overview => 'Overview';

	/// en: 'Cast'
	String get cast => 'Cast';

	/// en: 'Trailers & Extras'
	String get extras => 'Trailers & Extras';

	/// en: 'Studio'
	String get studio => 'Studio';

	/// en: 'Rating'
	String get rating => 'Rating';

	/// en: 'Director'
	String get director => 'Director';

	/// en: 'Directors'
	String get directors => 'Directors';

	/// en: 'Movie'
	String get movie => 'Movie';

	/// en: 'TV Show'
	String get tvShow => 'TV Show';

	/// en: '${minutes} min left'
	String minutesLeft({required Object minutes}) => '${minutes} min left';

	/// en: 'More Like This'
	String get moreLikeThis => 'More Like This';

	/// en: '(one) {${n} title} (other) {${n} titles}'
	String titleCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		one: '${n} title',
		other: '${n} titles',
	);

	late final Translations$discover$person$en person = Translations$discover$person$en.internal(_root);
}

// Path: errors
class Translations$errors$en {
	Translations$errors$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Search failed: ${error}'
	String searchFailed({required Object error}) => 'Search failed: ${error}';

	/// en: 'Search could not reach any media server.'
	String get searchUnavailable => 'Search could not reach any media server.';

	/// en: 'Connection timeout while loading ${context}'
	String connectionTimeout({required Object context}) => 'Connection timeout while loading ${context}';

	/// en: 'Unable to connect to media server'
	String get connectionFailed => 'Unable to connect to media server';

	/// en: 'Unable to load ${context}. Please try again.'
	String unableToLoad({required Object context}) => 'Unable to load ${context}. Please try again.';

	/// en: 'No client available'
	String get noClientAvailable => 'No client available';

	/// en: 'Please enter a token'
	String get pleaseEnterToken => 'Please enter a token';

	/// en: 'Invalid token'
	String get invalidToken => 'Invalid token';

	/// en: 'Failed to verify token: ${error}'
	String failedToVerifyToken({required Object error}) => 'Failed to verify token: ${error}';

	/// en: 'Failed to switch to ${displayName}'
	String failedToSwitchProfile({required Object displayName}) => 'Failed to switch to ${displayName}';

	/// en: 'Failed to delete ${displayName}'
	String failedToDeleteProfile({required Object displayName}) => 'Failed to delete ${displayName}';

	/// en: 'Couldn't update rating'
	String get failedToRate => 'Couldn\'t update rating';

	/// en: 'the connection timed out'
	String get reasonTimedOut => 'the connection timed out';

	/// en: 'the server could not be reached'
	String get reasonUnreachable => 'the server could not be reached';

	/// en: 'the server refused the request'
	String get reasonRefused => 'the server refused the request';

	/// en: 'the item is no longer on the server'
	String get reasonNotFound => 'the item is no longer on the server';

	/// en: 'the server reported an error'
	String get reasonServerError => 'the server reported an error';

	/// en: 'the request was cancelled'
	String get reasonCancelled => 'the request was cancelled';

	/// en: 'an unexpected error occurred'
	String get reasonUnexpected => 'an unexpected error occurred';
}

// Path: libraries
class Translations$libraries$en {
	Translations$libraries$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Libraries'
	String get title => 'Libraries';

	/// en: 'Library'
	String get fallbackTitle => 'Library';

	/// en: 'Scan Library Files'
	String get scanLibraryFiles => 'Scan Library Files';

	/// en: 'Scan Library'
	String get scanLibrary => 'Scan Library';

	/// en: 'Analyze'
	String get analyze => 'Analyze';

	/// en: 'Analyze Library'
	String get analyzeLibrary => 'Analyze Library';

	/// en: 'Refresh Metadata'
	String get refreshMetadata => 'Refresh Metadata';

	/// en: 'Empty Trash'
	String get emptyTrash => 'Empty Trash';

	/// en: 'Emptying trash for "${title}"...'
	String emptyingTrash({required Object title}) => 'Emptying trash for "${title}"...';

	/// en: 'Trash emptied for "${title}"'
	String trashEmptied({required Object title}) => 'Trash emptied for "${title}"';

	/// en: 'Failed to empty trash: ${error}'
	String failedToEmptyTrash({required Object error}) => 'Failed to empty trash: ${error}';

	/// en: 'Analyzing "${title}"...'
	String analyzing({required Object title}) => 'Analyzing "${title}"...';

	/// en: 'Analysis started for "${title}"'
	String analysisStarted({required Object title}) => 'Analysis started for "${title}"';

	/// en: 'Failed to analyze library: ${error}'
	String failedToAnalyze({required Object error}) => 'Failed to analyze library: ${error}';

	/// en: 'No libraries found'
	String get noLibrariesFound => 'No libraries found';

	/// en: 'All libraries are hidden'
	String get allLibrariesHidden => 'All libraries are hidden';

	/// en: 'Hidden libraries (${count})'
	String hiddenLibrariesCount({required Object count}) => 'Hidden libraries (${count})';

	/// en: 'This library is empty'
	String get thisLibraryIsEmpty => 'This library is empty';

	/// en: 'No items match the active filters'
	String get noItemsMatchFilters => 'No items match the active filters';

	/// en: 'Reset filters'
	String get resetFilters => 'Reset filters';

	/// en: 'All'
	String get all => 'All';

	/// en: 'Clear All'
	String get clearAll => 'Clear All';

	/// en: 'Are you sure you want to scan "${title}"?'
	String scanLibraryConfirm({required Object title}) => 'Are you sure you want to scan "${title}"?';

	/// en: 'Are you sure you want to analyze "${title}"?'
	String analyzeLibraryConfirm({required Object title}) => 'Are you sure you want to analyze "${title}"?';

	/// en: 'Are you sure you want to refresh metadata for "${title}"?'
	String refreshMetadataConfirm({required Object title}) => 'Are you sure you want to refresh metadata for "${title}"?';

	/// en: 'Are you sure you want to empty trash for "${title}"?'
	String emptyTrashConfirm({required Object title}) => 'Are you sure you want to empty trash for "${title}"?';

	/// en: 'Manage Libraries'
	String get manageLibraries => 'Manage Libraries';

	/// en: 'Sort'
	String get sort => 'Sort';

	/// en: 'Sort By'
	String get sortBy => 'Sort By';

	/// en: 'Filters'
	String get filters => 'Filters';

	/// en: 'Are you sure you want to perform this action?'
	String get confirmActionMessage => 'Are you sure you want to perform this action?';

	/// en: 'Show library'
	String get showLibrary => 'Show library';

	/// en: 'Hide library'
	String get hideLibrary => 'Hide library';

	/// en: 'Library options'
	String get libraryOptions => 'Library options';

	/// en: 'library content'
	String get content => 'library content';

	/// en: 'Select library'
	String get selectLibrary => 'Select library';

	/// en: 'Filters (${count})'
	String filtersWithCount({required Object count}) => 'Filters (${count})';

	/// en: 'No recommendations available'
	String get noRecommendations => 'No recommendations available';

	/// en: 'No collections in this library'
	String get noCollections => 'No collections in this library';

	/// en: 'No folders found'
	String get noFoldersFound => 'No folders found';

	/// en: 'folders'
	String get folders => 'folders';

	late final Translations$libraries$tabs$en tabs = Translations$libraries$tabs$en.internal(_root);
	late final Translations$libraries$groupings$en groupings = Translations$libraries$groupings$en.internal(_root);
	late final Translations$libraries$filterCategories$en filterCategories = Translations$libraries$filterCategories$en.internal(_root);
	late final Translations$libraries$sortLabels$en sortLabels = Translations$libraries$sortLabels$en.internal(_root);
	late final Translations$libraries$advancedFilters$en advancedFilters = Translations$libraries$advancedFilters$en.internal(_root);
}

// Path: about
class Translations$about$en {
	Translations$about$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'About'
	String get title => 'About';

	/// en: 'Open Source Licenses'
	String get openSourceLicenses => 'Open Source Licenses';

	/// en: 'Version ${version}'
	String versionLabel({required Object version}) => 'Version ${version}';

	/// en: 'Your movies, shows, and music from Plex, Jellyfin, and Emby — in one place.'
	String get appDescription => 'Your movies, shows, and music from Plex, Jellyfin, and Emby — in one place.';

	/// en: 'Source code'
	String get customSource => 'Source code';

	/// en: 'Built on the Plezy codebase'
	String get basedOnLuroka => 'Built on the Plezy codebase';

	/// en: 'Software and libraries used by Luroka'
	String get viewLicensesDescription => 'Software and libraries used by Luroka';

	/// en: 'App'
	String get appSection => 'App';

	/// en: 'Community'
	String get communitySection => 'Community';

	/// en: 'Credits'
	String get creditsSection => 'Credits';

	/// en: 'Legal'
	String get legalSection => 'Legal';

	/// en: 'v${version} (${build}) · ${platform}'
	String versionMeta({required Object version, required Object build, required Object platform}) => 'v${version} (${build}) · ${platform}';

	/// en: 'v${version} · ${platform}'
	String versionMetaNoBuild({required Object version, required Object platform}) => 'v${version} · ${platform}';

	/// en: 'Version unavailable'
	String get versionUnavailable => 'Version unavailable';

	/// en: 'Version details'
	String get versionDetails => 'Version details';

	/// en: 'Luroka ${version} (${build})'
	String versionDetailsTitle({required Object version, required Object build}) => 'Luroka ${version} (${build})';

	/// en: 'Platform: ${platform}'
	String platformLine({required Object platform}) => 'Platform: ${platform}';

	/// en: 'Device: ${model}'
	String deviceLine({required Object model}) => 'Device: ${model}';

	/// en: 'Package: ${package}'
	String packageLine({required Object package}) => 'Package: ${package}';

	/// en: 'Language: ${locale}'
	String localeLine({required Object locale}) => 'Language: ${locale}';

	/// en: 'Copy details'
	String get copyDetails => 'Copy details';

	/// en: 'App details copied'
	String get detailsCopied => 'App details copied';

	/// en: 'Couldn't copy app details'
	String get detailsCopyFailed => 'Couldn\'t copy app details';

	/// en: 'Check GitHub for a newer release'
	String get checkForUpdatesDescription => 'Check GitHub for a newer release';

	/// en: 'Checking for updates…'
	String get checkingForUpdates => 'Checking for updates…';

	/// en: 'What's new'
	String get whatsNew => 'What\'s new';

	/// en: 'No release notes are available.'
	String get releaseNotesUnavailable => 'No release notes are available.';

	/// en: 'Luroka on GitHub'
	String get sourceCodeDescription => 'Luroka on GitHub';

	/// en: 'Report an issue'
	String get reportIssue => 'Report an issue';

	/// en: 'Tell us what went wrong'
	String get reportIssueDescription => 'Tell us what went wrong';

	/// en: 'Documentation'
	String get documentation => 'Documentation';

	/// en: 'Setup, features, and build notes'
	String get documentationDescription => 'Setup, features, and build notes';

	/// en: 'Open-source project by edde746 and contributors'
	String get upstreamProjectDescription => 'Open-source project by edde746 and contributors';

	/// en: 'Upstream website'
	String get upstreamWebsite => 'Upstream website';

	/// en: 'Data & attribution'
	String get attribution => 'Data & attribution';

	/// en: 'Metadata, ratings, and trademarks'
	String get attributionDescription => 'Metadata, ratings, and trademarks';

	/// en: 'This product uses the TMDB API but is not endorsed or certified by TMDB. Popularity lists, metadata, and IMDb ratings are supplied by Cinemeta. Scores retain their source labels.'
	String get attributionBody => 'This product uses the TMDB API but is not endorsed or certified by TMDB. Popularity lists, metadata, and IMDb ratings are supplied by Cinemeta. Scores retain their source labels.';

	/// en: 'Plex, Jellyfin, Emby, Trakt, Simkl, MyAnimeList, AniList, TMDB, and related marks are trademarks of their respective owners. Luroka is not affiliated with or endorsed by them.'
	String get trademarkNotices => 'Plex, Jellyfin, Emby, Trakt, Simkl, MyAnimeList, AniList, TMDB, and related marks are trademarks of their respective owners. Luroka is not affiliated with or endorsed by them.';

	/// en: 'Privacy policy'
	String get privacyPolicy => 'Privacy policy';

	/// en: 'How your data is handled'
	String get privacyPolicyDescription => 'How your data is handled';

	/// en: 'GNU GPL-3.0 license'
	String get gplLicense => 'GNU GPL-3.0 license';

	/// en: 'Luroka is free software'
	String get gplLicenseDescription => 'Luroka is free software';

	/// en: 'Couldn't open this link'
	String get linkOpenFailed => 'Couldn\'t open this link';

	/// en: 'Opens in your browser'
	String get opensInBrowser => 'Opens in your browser';

	/// en: 'Luroka is free software under GPL-3.0.'
	String get footer => 'Luroka is free software under GPL-3.0.';

	/// en: '© ${year} Luroka contributors'
	String copyright({required Object year}) => '© ${year} Luroka contributors';
}

// Path: serverSelection
class Translations$serverSelection$en {
	Translations$serverSelection$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'No servers found for ${username} (${email})'
	String noServersFoundForAccount({required Object username, required Object email}) => 'No servers found for ${username} (${email})';

	/// en: 'Failed to load servers: ${error}'
	String failedToLoadServers({required Object error}) => 'Failed to load servers: ${error}';

	/// en: 'No usable servers were found on this account'
	String get noValidServers => 'No usable servers were found on this account';
}

// Path: hubDetail
class Translations$hubDetail$en {
	Translations$hubDetail$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Title'
	String get title => 'Title';

	/// en: 'Release Year'
	String get releaseYear => 'Release Year';

	/// en: 'Date Added'
	String get dateAdded => 'Date Added';

	/// en: 'Rating'
	String get rating => 'Rating';

	/// en: 'No items found'
	String get noItemsFound => 'No items found';
}

// Path: logs
class Translations$logs$en {
	Translations$logs$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Clear Logs'
	String get clearLogs => 'Clear Logs';

	/// en: 'Copy Logs'
	String get copyLogs => 'Copy Logs';

	/// en: 'Upload Logs'
	String get uploadLogs => 'Upload Logs';
}

// Path: startup
class Translations$startup$en {
	Translations$startup$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Luroka could not start'
	String get failedTitle => 'Luroka could not start';

	/// en: 'Something went wrong during startup. The details below identify what failed.'
	String get failedBody => 'Something went wrong during startup. The details below identify what failed.';

	/// en: 'Luroka's saved settings file is damaged and has to be rebuilt before Luroka can start. Retrying will not help — choose Repair storage.'
	String get failedBodyRepairable => 'Luroka\'s saved settings file is damaged and has to be rebuilt before Luroka can start. Retrying will not help — choose Repair storage.';

	/// en: 'Step'
	String get phaseLabel => 'Step';

	/// en: 'Show details'
	String get showDetails => 'Show details';

	/// en: 'Hide details'
	String get hideDetails => 'Hide details';

	/// en: 'Copy details'
	String get copyDetails => 'Copy details';

	/// en: 'Details copied to clipboard'
	String get detailsCopied => 'Details copied to clipboard';

	/// en: 'Upload details'
	String get uploadDetails => 'Upload details';

	/// en: 'Repair storage'
	String get repairStorage => 'Repair storage';

	/// en: 'Repair stored data?'
	String get repairTitle => 'Repair stored data?';

	/// en: 'Luroka's settings file is damaged and cannot be read. Repairing resets every setting to its default.'
	String get repairBodyCommon => 'Luroka\'s settings file is damaged and cannot be read. Repairing resets every setting to its default.';

	/// en: 'One saved sign-in is damaged and cannot be read. Repairing removes just that one; your other settings are left alone.'
	String get repairBodyOneCredential => 'One saved sign-in is damaged and cannot be read. Repairing removes just that one; your other settings are left alone.';

	/// en: 'Your servers and profiles should stay signed in.'
	String get repairBodySignInsKept => 'Your servers and profiles should stay signed in.';

	/// en: 'The key protecting your saved sign-ins cannot be recovered from this file, so you will have to sign in to every server and profile again. Nothing on your media server is affected.'
	String get repairBodySignInsLost => 'The key protecting your saved sign-ins cannot be recovered from this file, so you will have to sign in to every server and profile again. Nothing on your media server is affected.';

	/// en: 'Trackers (MAL, AniList, Simkl, Trakt) and Seerr are stored separately and may or may not survive. Luroka will tell you exactly what it kept.'
	String get repairBodySessionsUncertain => 'Trackers (MAL, AniList, Simkl, Trakt) and Seerr are stored separately and may or may not survive. Luroka will tell you exactly what it kept.';

	/// en: 'Repair'
	String get repairConfirm => 'Repair';

	/// en: 'Storage repaired'
	String get repairSucceeded => 'Storage repaired';

	/// en: 'Storage repaired — restart required'
	String get repairNeedsRestart => 'Storage repaired — restart required';

	/// en: 'Your data was repaired, but Luroka has to start fresh before it can use it. Close Luroka and open it again.'
	String get restartRequiredBody => 'Your data was repaired, but Luroka has to start fresh before it can use it. Close Luroka and open it again.';

	/// en: 'Quit Luroka'
	String get quitLuroka => 'Quit Luroka';

	/// en: 'Repair failed'
	String get repairFailed => 'Repair failed';

	/// en: 'Your servers and profiles are still signed in.'
	String get repairKeptSignIns => 'Your servers and profiles are still signed in.';

	/// en: 'The key protecting your saved sign-ins could not be recovered. You will have to sign in to every server and profile again.'
	String get repairLostSignIns => 'The key protecting your saved sign-ins could not be recovered. You will have to sign in to every server and profile again.';

	/// en: 'At least one tracker or Seerr connection was lost and has to be reconnected.'
	String get repairLostSessions => 'At least one tracker or Seerr connection was lost and has to be reconnected.';

	/// en: 'A copy of the damaged file was kept'
	String get backupTitle => 'A copy of the damaged file was kept';

	/// en: 'It contains your sign-in credentials. Do not upload or share it.'
	String get backupWarning => 'It contains your sign-in credentials. Do not upload or share it.';

	/// en: 'Delete copy'
	String get deleteBackup => 'Delete copy';

	/// en: 'Copy deleted.'
	String get backupDeleted => 'Copy deleted.';

	/// en: 'Luroka failed to start last time'
	String get previousFailureTitle => 'Luroka failed to start last time';
}

// Path: licenses
class Translations$licenses$en {
	Translations$licenses$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Related Packages'
	String get relatedPackages => 'Related Packages';

	/// en: 'License'
	String get license => 'License';

	/// en: 'License ${number}'
	String licenseNumber({required Object number}) => 'License ${number}';

	/// en: '${count} licenses'
	String licensesCount({required Object count}) => '${count} licenses';

	/// en: 'Search packages'
	String get searchHint => 'Search packages';

	/// en: 'No packages match "${query}"'
	String noResults({required Object query}) => 'No packages match "${query}"';

	/// en: 'Clear search'
	String get clearSearch => 'Clear search';
}

// Path: navigation
class Translations$navigation$en {
	Translations$navigation$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Libraries'
	String get libraries => 'Libraries';

	/// en: 'Downloads'
	String get downloads => 'Downloads';

	/// en: 'Live TV'
	String get liveTv => 'Live TV';

	/// en: 'Explore'
	String get explore => 'Explore';
}

// Path: explore
class Translations$explore$en {
	Translations$explore$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Explore'
	String get title => 'Explore';

	/// en: 'Select source'
	String get selectSource => 'Select source';

	late final Translations$explore$rows$en rows = Translations$explore$rows$en.internal(_root);
	late final Translations$explore$status$en status = Translations$explore$status$en.internal(_root);

	/// en: '(one) {${n} episode} (other) {${n} episodes}'
	String episodeCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		one: '${n} episode',
		other: '${n} episodes',
	);

	/// en: 'Cast'
	String get cast => 'Cast';

	/// en: 'Characters'
	String get characters => 'Characters';

	/// en: 'Add to Watchlist'
	String get addToWatchlist => 'Add to Watchlist';

	/// en: 'Remove from Watchlist'
	String get removeFromWatchlist => 'Remove from Watchlist';

	/// en: 'Added to watchlist'
	String get addedToWatchlist => 'Added to watchlist';

	/// en: 'Removed from watchlist'
	String get removedFromWatchlist => 'Removed from watchlist';

	/// en: 'Couldn't update watchlist'
	String get watchlistUpdateFailed => 'Couldn\'t update watchlist';

	/// en: 'Couldn't match this item to a watchlist'
	String get watchlistNoMatch => 'Couldn\'t match this item to a watchlist';

	/// en: 'Not in your library'
	String get notInLibrary => 'Not in your library';

	/// en: 'In these libraries'
	String get inTheseLibraries => 'In these libraries';

	/// en: 'Checking your library...'
	String get checkingLibrary => 'Checking your library...';

	/// en: '(one) {Couldn't check ${n} server} (other) {Couldn't check ${n} servers}'
	String libraryCheckFailed({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		one: 'Couldn\'t check ${n} server',
		other: 'Couldn\'t check ${n} servers',
	);

	/// en: 'Nothing here yet'
	String get emptyTitle => 'Nothing here yet';

	/// en: 'Rows from ${source} will appear here once they have content.'
	String emptyMessage({required Object source}) => 'Rows from ${source} will appear here once they have content.';

	/// en: 'Search ${source}'
	String searchHint({required Object source}) => 'Search ${source}';

	/// en: 'No results for "${query}"'
	String searchEmpty({required Object query}) => 'No results for "${query}"';

	/// en: 'Search for movies and shows on ${source}.'
	String searchPrompt({required Object source}) => 'Search for movies and shows on ${source}.';

	/// en: 'Search failed. Check your connection and try again.'
	String get searchFailed => 'Search failed. Check your connection and try again.';

	late final Translations$explore$badge$en badge = Translations$explore$badge$en.internal(_root);
	late final Translations$explore$stats$en stats = Translations$explore$stats$en.internal(_root);
	late final Translations$explore$season$en season = Translations$explore$season$en.internal(_root);
	late final Translations$explore$format$en format = Translations$explore$format$en.internal(_root);
	late final Translations$explore$sourceMaterial$en sourceMaterial = Translations$explore$sourceMaterial$en.internal(_root);
	late final Translations$explore$creditRole$en creditRole = Translations$explore$creditRole$en.internal(_root);
	late final Translations$explore$relation$en relation = Translations$explore$relation$en.internal(_root);

	/// en: 'Airs ${day} at ${time}'
	String broadcast({required Object day, required Object time}) => 'Airs ${day} at ${time}';

	/// en: 'Airs ${day} at ${time} ${timezone}'
	String broadcastWithZone({required Object day, required Object time, required Object timezone}) => 'Airs ${day} at ${time} ${timezone}';

	late final Translations$explore$detail$en detail = Translations$explore$detail$en.internal(_root);

	/// en: '(one) {${n} result} (other) {${n} results}'
	String totalResults({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		one: '${n} result',
		other: '${n} results',
	);
}

// Path: liveTv
class Translations$liveTv$en {
	Translations$liveTv$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Live TV'
	String get title => 'Live TV';

	/// en: 'Guide'
	String get guide => 'Guide';

	/// en: 'No channels available'
	String get noChannels => 'No channels available';

	/// en: 'No DVR configured on any server'
	String get noDvr => 'No DVR configured on any server';

	/// en: 'Live TV server is not available.'
	String get serverUnavailable => 'Live TV server is not available.';

	/// en: 'Live TV server is not connected.'
	String get serverNotConnected => 'Live TV server is not connected.';

	/// en: 'No program data available'
	String get noPrograms => 'No program data available';

	/// en: 'Live stream failed'
	String get liveStreamFailed => 'Live stream failed';

	/// en: 'Unknown Program'
	String get unknownProgram => 'Unknown Program';

	/// en: 'Unknown'
	String get unknownHub => 'Unknown';

	/// en: 'Unknown error'
	String get unknownError => 'Unknown error';

	/// en: 'Channel ${number}'
	String channelNumber({required Object number}) => 'Channel ${number}';

	/// en: 'Unknown channel'
	String get unknownChannel => 'Unknown channel';

	/// en: 'LIVE'
	String get live => 'LIVE';

	/// en: 'Reload Guide'
	String get reloadGuide => 'Reload Guide';

	/// en: 'Search Guide'
	String get searchGuide => 'Search Guide';

	/// en: 'Search channels & programs'
	String get searchHint => 'Search channels & programs';

	/// en: 'No matches for "${query}"'
	String searchNoResults({required Object query}) => 'No matches for "${query}"';

	/// en: 'Channels'
	String get channelsSection => 'Channels';

	/// en: 'Programs'
	String get programsSection => 'Programs';

	/// en: 'Now'
	String get now => 'Now';

	/// en: 'Today'
	String get today => 'Today';

	/// en: 'Tomorrow'
	String get tomorrow => 'Tomorrow';

	/// en: 'Midnight'
	String get midnight => 'Midnight';

	/// en: 'Overnight'
	String get overnight => 'Overnight';

	/// en: 'Morning'
	String get morning => 'Morning';

	/// en: 'Daytime'
	String get daytime => 'Daytime';

	/// en: 'Evening'
	String get evening => 'Evening';

	/// en: 'Late Night'
	String get lateNight => 'Late Night';

	/// en: 'What's On'
	String get whatsOn => 'What\'s On';

	/// en: 'Watch Channel'
	String get watchChannel => 'Watch Channel';

	/// en: 'Favorites'
	String get favorites => 'Favorites';

	/// en: 'Reorder Favorites'
	String get reorderFavorites => 'Reorder Favorites';

	/// en: 'No favorite channels'
	String get noFavoriteChannels => 'No favorite channels';

	/// en: 'Show all channels, then long-press a channel to add it to your favorites.'
	String get noFavoriteChannelsHint => 'Show all channels, then long-press a channel to add it to your favorites.';

	/// en: 'Show All Channels'
	String get showAllChannels => 'Show All Channels';

	/// en: 'Could not load favorites. Check your connection and try again.'
	String get favoritesLoadFailed => 'Could not load favorites. Check your connection and try again.';

	/// en: 'Could not update favorites. Check your connection and try again.'
	String get favoritesUpdateFailed => 'Could not update favorites. Check your connection and try again.';

	/// en: 'Join Session in Progress'
	String get joinSession => 'Join Session in Progress';

	/// en: 'Watch from start (${minutes} min ago)'
	String watchFromStart({required Object minutes}) => 'Watch from start (${minutes} min ago)';

	/// en: 'Watch Live'
	String get watchLive => 'Watch Live';

	/// en: 'Go to Live'
	String get goToLive => 'Go to Live';

	/// en: 'Record'
	String get record => 'Record';

	/// en: 'Record Episode'
	String get recordEpisode => 'Record Episode';

	/// en: 'Record Series'
	String get recordSeries => 'Record Series';

	/// en: 'Record Options'
	String get recordOptions => 'Record Options';

	/// en: 'Save to'
	String get saveTo => 'Save to';

	/// en: 'Recordings'
	String get recordings => 'Recordings';

	/// en: 'Scheduled'
	String get scheduledRecordings => 'Scheduled';

	/// en: 'Recording Rules'
	String get recordingRules => 'Recording Rules';

	/// en: 'Nothing scheduled to record'
	String get noScheduledRecordings => 'Nothing scheduled to record';

	/// en: 'Manage recording'
	String get manageRecording => 'Manage recording';

	/// en: 'Cancel recording'
	String get cancelRecording => 'Cancel recording';

	/// en: 'Cancel this recording?'
	String get cancelRecordingTitle => 'Cancel this recording?';

	/// en: '${title} will no longer be recorded.'
	String cancelRecordingMessage({required Object title}) => '${title} will no longer be recorded.';

	/// en: 'Delete rule'
	String get deleteRule => 'Delete rule';

	/// en: 'Delete recording rule?'
	String get deleteRuleTitle => 'Delete recording rule?';

	/// en: 'Future episodes of ${title} will not be recorded.'
	String deleteRuleMessage({required Object title}) => 'Future episodes of ${title} will not be recorded.';

	/// en: 'Recording scheduled'
	String get recordingScheduled => 'Recording scheduled';

	/// en: 'This program is already scheduled'
	String get alreadyScheduled => 'This program is already scheduled';

	/// en: 'DVR settings require an admin account'
	String get dvrAdminRequired => 'DVR settings require an admin account';

	/// en: 'Couldn't schedule recording'
	String get recordingFailed => 'Couldn\'t schedule recording';

	/// en: 'Couldn't determine recording library'
	String get recordingTargetMissing => 'Couldn\'t determine recording library';

	/// en: 'Recording not available for this program'
	String get recordNotAvailable => 'Recording not available for this program';

	/// en: 'Recording canceled'
	String get recordingCancelled => 'Recording canceled';

	/// en: 'Recording rule deleted'
	String get recordingRuleDeleted => 'Recording rule deleted';

	/// en: 'Re-evaluate rules'
	String get processRecordingRules => 'Re-evaluate rules';

	/// en: 'Recording now'
	String get recordingInProgress => 'Recording now';

	/// en: '${count} scheduled'
	String recordingsCount({required Object count}) => '${count} scheduled';

	/// en: 'Edit rule'
	String get editRule => 'Edit rule';

	/// en: 'Edit'
	String get editRuleAction => 'Edit';

	/// en: 'Recording rule updated'
	String get recordingRuleUpdated => 'Recording rule updated';

	/// en: 'Guide refresh requested'
	String get guideReloadRequested => 'Guide refresh requested';

	/// en: 'Couldn't refresh the guide'
	String get guideReloadFailed => 'Couldn\'t refresh the guide';

	/// en: 'Rule re-evaluation requested'
	String get rulesProcessRequested => 'Rule re-evaluation requested';

	/// en: 'Couldn't re-evaluate recording rules'
	String get rulesProcessFailed => 'Couldn\'t re-evaluate recording rules';

	/// en: 'Record show'
	String get recordShow => 'Record show';

	late final Translations$liveTv$recordSettings$en recordSettings = Translations$liveTv$recordSettings$en.internal(_root);

	/// en: 'Starting in ${minutes} min'
	String startingInMinutes({required Object minutes}) => 'Starting in ${minutes} min';

	/// en: '${day} at ${time}'
	String dayAtTime({required Object day, required Object time}) => '${day} at ${time}';

	/// en: '${product} returned invalid Live TV playback data'
	String invalidPlaybackData({required Object product}) => '${product} returned invalid Live TV playback data';

	/// en: 'Could not start the live channel'
	String get failedToStartChannel => 'Could not start the live channel';

	/// en: 'Could not build the stream URL'
	String get failedToBuildStreamUrl => 'Could not build the stream URL';

	/// en: 'Couldn't start the channel: ${reason}'
	String playbackStartFailed({required Object reason}) => 'Couldn\'t start the channel: ${reason}';

	/// en: 'Couldn't switch channel: ${reason}'
	String channelSwitchFailed({required Object reason}) => 'Couldn\'t switch channel: ${reason}';
}

// Path: collections
class Translations$collections$en {
	Translations$collections$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Collections'
	String get title => 'Collections';

	/// en: 'Collection'
	String get collection => 'Collection';

	/// en: 'Collection is empty'
	String get empty => 'Collection is empty';

	/// en: 'Delete Collection'
	String get deleteCollection => 'Delete Collection';

	/// en: 'Delete "${title}"? This can't be undone.'
	String deleteConfirm({required Object title}) => 'Delete "${title}"? This can\'t be undone.';

	/// en: 'Collection deleted'
	String get deleted => 'Collection deleted';

	/// en: 'Failed to delete collection'
	String get deleteFailed => 'Failed to delete collection';

	/// en: 'Failed to delete collection: ${error}'
	String deleteFailedWithError({required Object error}) => 'Failed to delete collection: ${error}';

	/// en: 'Select Collection'
	String get selectCollection => 'Select Collection';

	/// en: 'Collection Name'
	String get collectionName => 'Collection Name';

	/// en: 'Enter collection name'
	String get enterCollectionName => 'Enter collection name';

	/// en: 'Added to collection'
	String get addedToCollection => 'Added to collection';

	/// en: 'Failed to add to collection'
	String get errorAddingToCollection => 'Failed to add to collection';

	/// en: 'Collection created'
	String get created => 'Collection created';

	/// en: 'Remove from collection'
	String get removeFromCollection => 'Remove from collection';

	/// en: 'Remove "${title}" from this collection?'
	String removeFromCollectionConfirm({required Object title}) => 'Remove "${title}" from this collection?';

	/// en: 'Removed from collection'
	String get removedFromCollection => 'Removed from collection';

	/// en: 'Failed to remove from collection'
	String get removeFromCollectionFailed => 'Failed to remove from collection';

	/// en: 'Error removing from collection: ${error}'
	String removeFromCollectionError({required Object error}) => 'Error removing from collection: ${error}';

	/// en: 'Search collections...'
	String get searchCollections => 'Search collections...';
}

// Path: playlists
class Translations$playlists$en {
	Translations$playlists$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Playlists'
	String get title => 'Playlists';

	/// en: 'Playlist'
	String get playlist => 'Playlist';

	/// en: 'No playlists found'
	String get noPlaylists => 'No playlists found';

	/// en: 'Create Playlist'
	String get create => 'Create Playlist';

	/// en: 'Playlist Name'
	String get playlistName => 'Playlist Name';

	/// en: 'Enter playlist name'
	String get enterPlaylistName => 'Enter playlist name';

	/// en: 'Delete Playlist'
	String get delete => 'Delete Playlist';

	/// en: 'Remove from Playlist'
	String get removeItem => 'Remove from Playlist';

	/// en: 'Smart Playlist'
	String get smartPlaylist => 'Smart Playlist';

	/// en: '${count} items'
	String itemCount({required Object count}) => '${count} items';

	/// en: '1 item'
	String get oneItem => '1 item';

	/// en: 'This playlist is empty'
	String get emptyPlaylist => 'This playlist is empty';

	/// en: 'Delete Playlist?'
	String get deleteConfirm => 'Delete Playlist?';

	/// en: 'Are you sure you want to delete "${name}"?'
	String deleteMessage({required Object name}) => 'Are you sure you want to delete "${name}"?';

	/// en: 'Playlist created'
	String get created => 'Playlist created';

	/// en: 'Playlist deleted'
	String get deleted => 'Playlist deleted';

	/// en: 'Added to playlist'
	String get itemAdded => 'Added to playlist';

	/// en: 'Removed from playlist'
	String get itemRemoved => 'Removed from playlist';

	/// en: 'Select Playlist'
	String get selectPlaylist => 'Select Playlist';

	/// en: 'Search playlists...'
	String get searchPlaylists => 'Search playlists...';

	/// en: 'Failed to create playlist'
	String get errorCreating => 'Failed to create playlist';

	/// en: 'Failed to delete playlist'
	String get errorDeleting => 'Failed to delete playlist';

	/// en: 'Failed to load playlists'
	String get errorLoading => 'Failed to load playlists';

	/// en: 'Failed to add to playlist'
	String get errorAdding => 'Failed to add to playlist';

	/// en: 'Failed to reorder playlist item'
	String get errorReordering => 'Failed to reorder playlist item';

	/// en: 'Failed to remove from playlist'
	String get errorRemoving => 'Failed to remove from playlist';
}

// Path: music
class Translations$music$en {
	Translations$music$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Go to album'
	String get goToAlbum => 'Go to album';

	/// en: 'Go to artist'
	String get goToArtist => 'Go to artist';

	/// en: 'Instant Mix'
	String get instantMix => 'Instant Mix';

	/// en: 'Play next'
	String get playNext => 'Play next';

	/// en: 'Add to queue'
	String get addToQueue => 'Add to queue';

	/// en: 'Disc ${n}'
	String discNumber({required Object n}) => 'Disc ${n}';

	/// en: '(one) {${n} track} (other) {${n} tracks}'
	String trackCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		one: '${n} track',
		other: '${n} tracks',
	);

	/// en: 'Now Playing'
	String get nowPlaying => 'Now Playing';

	/// en: 'Playing from ${title}'
	String playingFrom({required Object title}) => 'Playing from ${title}';

	/// en: 'Queue'
	String get queue => 'Queue';

	/// en: 'Clear queue'
	String get clearQueue => 'Clear queue';

	/// en: 'Lyrics'
	String get lyrics => 'Lyrics';

	/// en: 'No lyrics available'
	String get noLyrics => 'No lyrics available';

	/// en: 'Sleep timer'
	String get sleepTimer => 'Sleep timer';

	/// en: 'End of track'
	String get sleepTimerEndOfTrack => 'End of track';

	/// en: '${n} minutes'
	String sleepTimerMinutes({required Object n}) => '${n} minutes';

	/// en: 'Stop playback'
	String get stopPlayback => 'Stop playback';

	/// en: 'Previous track'
	String get previousTrack => 'Previous track';

	/// en: 'Next track'
	String get nextTrack => 'Next track';

	/// en: 'Repeat'
	String get repeat => 'Repeat';

	/// en: 'Repeat all'
	String get repeatAll => 'Repeat all';

	/// en: 'Repeat one'
	String get repeatOne => 'Repeat one';

	/// en: 'No server is available for an instant mix'
	String get instantMixNoServer => 'No server is available for an instant mix';

	/// en: 'Failed to load the instant mix'
	String get instantMixFailed => 'Failed to load the instant mix';

	/// en: 'The instant mix came back with no tracks'
	String get instantMixEmpty => 'The instant mix came back with no tracks';

	/// en: 'No audio URL is available for ${track}'
	String noAudioUrl({required Object track}) => 'No audio URL is available for ${track}';

	late final Translations$music$discography$en discography = Translations$music$discography$en.internal(_root);
}

// Path: watchTogether
class Translations$watchTogether$en {
	Translations$watchTogether$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Watch Together'
	String get title => 'Watch Together';

	/// en: 'Watch content in sync with friends and family'
	String get description => 'Watch content in sync with friends and family';

	/// en: 'Create Room'
	String get createRoom => 'Create Room';

	/// en: 'Creating room...'
	String get creatingRoom => 'Creating room...';

	/// en: 'Join Room'
	String get joinRoom => 'Join Room';

	/// en: 'Joining room...'
	String get joiningRoom => 'Joining room...';

	/// en: 'Connecting...'
	String get connecting => 'Connecting...';

	/// en: 'Rooms use the public Open Watch Party relays.'
	String get relayPublic => 'Rooms use the public Open Watch Party relays.';

	/// en: 'Rooms use your relay at ${url}.'
	String relayCustom({required Object url}) => 'Rooms use your relay at ${url}.';

	/// en: 'Recent Rooms'
	String get recentRooms => 'Recent Rooms';

	/// en: 'Room actions'
	String get roomActions => 'Room actions';

	/// en: 'Rename Room'
	String get renameRoom => 'Rename Room';

	/// en: 'Remove'
	String get removeRoom => 'Remove';

	/// en: 'Enter the 6-character code from the host.'
	String get enterRoomCode => 'Enter the 6-character code from the host.';

	/// en: 'Room Code'
	String get roomCode => 'Room Code';

	/// en: 'Paste'
	String get paste => 'Paste';

	/// en: 'The clipboard doesn't contain a room code'
	String get noCodeInClipboard => 'The clipboard doesn\'t contain a room code';

	/// en: 'Copy Code'
	String get copyCode => 'Copy Code';

	/// en: 'Room code copied'
	String get codeCopied => 'Room code copied';

	/// en: 'Share Invite'
	String get shareInvite => 'Share Invite';

	/// en: 'Share QR code'
	String get qrShare => 'Share QR code';

	/// en: 'Scan with the Luroka app to join this room.'
	String get qrHint => 'Scan with the Luroka app to join this room.';

	/// en: 'Playing'
	String get phasePlaying => 'Playing';

	/// en: 'Paused'
	String get phasePaused => 'Paused';

	/// en: 'Waiting for everyone'
	String get phaseWaiting => 'Waiting for everyone';

	/// en: 'Invite copied. Paste it into a message.'
	String get inviteCopied => 'Invite copied. Paste it into a message.';

	/// en: 'Join my Watch Together room in Luroka: luroka://watch?code=${code} — or open Watch Together and enter ${code}.'
	String inviteMessage({required Object code}) => 'Join my Watch Together room in Luroka: luroka://watch?code=${code} — or open Watch Together and enter ${code}.';

	/// en: 'Open Watch Together session controls'
	String get openSessionControls => 'Open Watch Together session controls';

	/// en: 'Reconnecting...'
	String get reconnecting => 'Reconnecting...';

	/// en: 'The connection dropped. You rejoin the room automatically.'
	String get reconnectingDescription => 'The connection dropped. You rejoin the room automatically.';

	/// en: 'Connected'
	String get connected => 'Connected';

	/// en: 'Disconnected'
	String get disconnected => 'Disconnected';

	/// en: 'You are the host'
	String get youAreHost => 'You are the host';

	/// en: 'Hosted by ${name}'
	String hostedBy({required Object name}) => 'Hosted by ${name}';

	/// en: 'Host controls playback'
	String get hostControlsPlayback => 'Host controls playback';

	/// en: 'Anyone can control playback'
	String get anyoneCanControl => 'Anyone can control playback';

	/// en: 'Room locked'
	String get roomLocked => 'Room locked';

	/// en: 'Now Playing'
	String get nowPlaying => 'Now Playing';

	/// en: 'Nothing playing'
	String get nothingPlaying => 'Nothing playing';

	/// en: 'Play something from any library to share it with the room.'
	String get nothingPlayingHost => 'Play something from any library to share it with the room.';

	/// en: 'When the host plays something, it opens here.'
	String get nothingPlayingGuest => 'When the host plays something, it opens here.';

	/// en: 'This video has no catalogue match, so only people with access to the same server can play it.'
	String get notShareable => 'This video has no catalogue match, so only people with access to the same server can play it.';

	/// en: 'Looking for this video in your libraries...'
	String get searching => 'Looking for this video in your libraries...';

	/// en: 'Your copy'
	String get yourCopy => 'Your copy';

	/// en: 'You're sharing your copy'
	String get sharingYourCopy => 'You\'re sharing your copy';

	/// en: 'Playing your copy, ${difference}'
	String playingOtherLength({required Object difference}) => 'Playing your copy, ${difference}';

	/// en: 'Your Copy Is a Different Length'
	String get mismatchTitle => 'Your Copy Is a Different Length';

	/// en: 'Your closest copy is ${difference} than the room's video. It may be another cut or version.'
	String mismatchDescription({required Object difference}) => 'Your closest copy is ${difference} than the room\'s video. It may be another cut or version.';

	/// en: 'Play Anyway'
	String get playAnyway => 'Play Anyway';

	/// en: 'Choose Another Copy'
	String get chooseAnotherCopy => 'Choose Another Copy';

	/// en: 'Don't Play'
	String get dontPlay => 'Don\'t Play';

	/// en: 'You don't have this video'
	String get unavailableTitle => 'You don\'t have this video';

	/// en: 'Luroka couldn't find it in your libraries. Pick a copy yourself or search again.'
	String get unavailableDescription => 'Luroka couldn\'t find it in your libraries. Pick a copy yourself or search again.';

	/// en: 'Choose a Copy'
	String get chooseCopy => 'Choose a Copy';

	/// en: 'Search Again'
	String get searchAgain => 'Search Again';

	/// en: 'No copies found in your libraries.'
	String get noCandidates => 'No copies found in your libraries.';

	/// en: 'Couldn't play this copy for the room'
	String get choiceFailed => 'Couldn\'t play this copy for the room';

	/// en: '${duration} longer'
	String lengthLonger({required Object duration}) => '${duration} longer';

	/// en: '${duration} shorter'
	String lengthShorter({required Object duration}) => '${duration} shorter';

	/// en: 'Same length'
	String get lengthSame => 'Same length';

	/// en: 'Length unknown'
	String get lengthUnknown => 'Length unknown';

	/// en: 'Join Current Playback'
	String get joinCurrentPlayback => 'Join Current Playback';

	/// en: 'Jump back into what the host is currently watching'
	String get joinCurrentPlaybackDescription => 'Jump back into what the host is currently watching';

	/// en: 'Stop Video for Everyone'
	String get stopMedia => 'Stop Video for Everyone';

	/// en: 'Sync Offset'
	String get syncOffset => 'Sync Offset';

	/// en: 'Shift your video if it runs ahead of or behind the room.'
	String get syncOffsetDescription => 'Shift your video if it runs ahead of or behind the room.';

	/// en: 'Your copy is ${difference} than the room's video.'
	String offsetHint({required Object difference}) => 'Your copy is ${difference} than the room\'s video.';

	/// en: 'Use ${offset}'
	String applyDifference({required Object offset}) => 'Use ${offset}';

	/// en: '-1 s'
	String get offsetMinusSecond => '-1 s';

	/// en: '-100 ms'
	String get offsetMinusTenth => '-100 ms';

	/// en: '+100 ms'
	String get offsetPlusTenth => '+100 ms';

	/// en: '+1 s'
	String get offsetPlusSecond => '+1 s';

	/// en: 'Participants'
	String get participants => 'Participants';

	/// en: '(one) {${n} participant} (other) {${n} participants}'
	String participantCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		one: '${n} participant',
		other: '${n} participants',
	);

	/// en: 'HOST'
	String get hostBadge => 'HOST';

	/// en: '${name} (You)'
	String nameYou({required Object name}) => '${name} (You)';

	/// en: 'Idle'
	String get playerIdle => 'Idle';

	/// en: 'Loading'
	String get playerLoading => 'Loading';

	/// en: 'Ready'
	String get playerReady => 'Ready';

	/// en: 'Buffering'
	String get playerBuffering => 'Buffering';

	/// en: 'Searching'
	String get matchSearching => 'Searching';

	/// en: 'Has the video'
	String get matchMatched => 'Has the video';

	/// en: 'Different length'
	String get matchMismatched => 'Different length';

	/// en: 'Doesn't have the video'
	String get matchUnavailable => 'Doesn\'t have the video';

	/// en: 'Offset ${offset}'
	String participantOffset({required Object offset}) => 'Offset ${offset}';

	/// en: 'Make host'
	String get makeHost => 'Make host';

	/// en: 'Transfer host?'
	String get makeHostQuestion => 'Transfer host?';

	/// en: '${name} will control playback and drive the session for everyone.'
	String makeHostConfirm({required Object name}) => '${name} will control playback and drive the session for everyone.';

	/// en: 'Transfer'
	String get transfer => 'Transfer';

	/// en: 'Remove from Room'
	String get removeParticipant => 'Remove from Room';

	/// en: 'Remove ${name}?'
	String removeParticipantQuestion({required Object name}) => 'Remove ${name}?';

	/// en: '${name} leaves the room. They can join again with the code unless you lock the room.'
	String removeParticipantConfirm({required Object name}) => '${name} leaves the room. They can join again with the code unless you lock the room.';

	/// en: 'Remove'
	String get remove => 'Remove';

	/// en: 'Room Settings'
	String get roomSettings => 'Room Settings';

	/// en: 'Let Everyone Control Playback'
	String get letEveryoneControl => 'Let Everyone Control Playback';

	/// en: 'Lock Room'
	String get lockRoom => 'Lock Room';

	/// en: 'Nobody new can join'
	String get lockRoomDescription => 'Nobody new can join';

	/// en: 'Leave Room'
	String get leaveRoom => 'Leave Room';

	/// en: 'Leave Room?'
	String get leaveRoomQuestion => 'Leave Room?';

	/// en: 'You can join again with the room code.'
	String get leaveRoomConfirm => 'You can join again with the room code.';

	/// en: 'Leave'
	String get leave => 'Leave';

	/// en: 'End Room'
	String get endRoom => 'End Room';

	/// en: 'End Room?'
	String get endRoomQuestion => 'End Room?';

	/// en: 'This ends the room for everyone.'
	String get endRoomConfirm => 'This ends the room for everyone.';

	/// en: 'End'
	String get end => 'End';

	/// en: 'Playback didn't start'
	String get playBlockedTitle => 'Playback didn\'t start';

	/// en: 'Press play to start watching with the room.'
	String get playBlockedDescription => 'Press play to start watching with the room.';

	late final Translations$watchTogether$notices$en notices = Translations$watchTogether$notices$en.internal(_root);
	late final Translations$watchTogether$ended$en ended = Translations$watchTogether$ended$en.internal(_root);
	late final Translations$watchTogether$errors$en errors = Translations$watchTogether$errors$en.internal(_root);

	/// en: 'Episode ${number}'
	String untitledEpisode({required Object number}) => 'Episode ${number}';
}

// Path: downloads
class Translations$downloads$en {
	Translations$downloads$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Downloads'
	String get title => 'Downloads';

	/// en: 'Manage'
	String get manage => 'Manage';

	/// en: 'TV Shows'
	String get tvShows => 'TV Shows';

	/// en: 'Movies'
	String get movies => 'Movies';

	/// en: 'Music'
	String get music => 'Music';

	/// en: '${count} tracks queued for download'
	String tracksQueued({required Object count}) => '${count} tracks queued for download';

	/// en: 'No downloads yet'
	String get noDownloads => 'No downloads yet';

	/// en: 'Downloaded content will appear here for offline viewing'
	String get noDownloadsDescription => 'Downloaded content will appear here for offline viewing';

	/// en: 'Download'
	String get downloadNow => 'Download';

	/// en: 'Delete download'
	String get deleteDownload => 'Delete download';

	/// en: 'Retry download'
	String get retryDownload => 'Retry download';

	/// en: 'Download queued'
	String get downloadQueued => 'Download queued';

	/// en: 'Download resumed'
	String get downloadResumed => 'Download resumed';

	/// en: 'Server error: file may exceed the remote bitrate limit'
	String get serverErrorBitrate => 'Server error: file may exceed the remote bitrate limit';

	/// en: 'Downloads stopped to protect available storage. Free some space or choose another download location, then retry.'
	String get storageFull => 'Downloads stopped to protect available storage. Free some space or choose another download location, then retry.';

	/// en: 'Downloads stopped because available storage could not be checked. Check the download location, then retry.'
	String get storageUnavailable => 'Downloads stopped because available storage could not be checked. Check the download location, then retry.';

	/// en: '${count} episodes queued for download'
	String episodesQueued({required Object count}) => '${count} episodes queued for download';

	/// en: 'Download deleted'
	String get downloadDeleted => 'Download deleted';

	/// en: 'Delete "${title}" from this device?'
	String deleteConfirm({required Object title}) => 'Delete "${title}" from this device?';

	/// en: 'Delete downloads'
	String get deleteCollectionDownloads => 'Delete downloads';

	/// en: 'Delete every download in "${title}" from this device?'
	String deleteCollectionDownloadsConfirm({required Object title}) => 'Delete every download in "${title}" from this device?';

	/// en: 'Downloads deleted'
	String get collectionDownloadsDeleted => 'Downloads deleted';

	/// en: 'Canceled Download'
	String get cancelledDownloadTitle => 'Canceled Download';

	/// en: 'This download was canceled. What would you like to do?'
	String get cancelledDownloadMessage => 'This download was canceled. What would you like to do?';

	/// en: 'All episodes already downloaded'
	String get allEpisodesAlreadyDownloaded => 'All episodes already downloaded';

	/// en: 'Resume download'
	String get resumeDownload => 'Resume download';

	/// en: 'Canceled download'
	String get cancelledDownload => 'Canceled download';

	/// en: '${file} (syncing ${status})'
	String syncingFile({required Object file, required Object status}) => '${file} (syncing ${status})';

	/// en: 'Downloaded ${file} - Click to complete'
	String downloadedFileClickToComplete({required Object file}) => 'Downloaded ${file} - Click to complete';

	/// en: 'Partially downloaded - Click to complete'
	String get partialDownloadClickToComplete => 'Partially downloaded - Click to complete';

	/// en: 'Deleting...'
	String get deleting => 'Deleting...';

	/// en: 'Deleting ${title}... (${current} of ${total})'
	String deletingWithProgress({required Object title, required Object current, required Object total}) => 'Deleting ${title}... (${current} of ${total})';

	/// en: 'Queued'
	String get queuedTooltip => 'Queued';

	/// en: 'Queued ${files}'
	String queuedFilesTooltip({required Object files}) => 'Queued ${files}';

	/// en: 'Downloading...'
	String get downloadingTooltip => 'Downloading...';

	/// en: 'Downloading ${files}'
	String downloadingFilesTooltip({required Object files}) => 'Downloading ${files}';

	/// en: 'No downloads'
	String get noDownloadsTree => 'No downloads';

	/// en: 'Pause all'
	String get pauseAll => 'Pause all';

	/// en: 'Resume all'
	String get resumeAll => 'Resume all';

	/// en: 'Retry all'
	String get retryAll => 'Retry all';

	/// en: 'Retry failed downloads'
	String get retryFailed => 'Retry failed downloads';

	/// en: 'Delete all'
	String get deleteAll => 'Delete all';

	/// en: 'Select Version'
	String get selectVersion => 'Select Version';

	/// en: 'All episodes'
	String get allEpisodes => 'All episodes';

	/// en: 'Unwatched only'
	String get unwatchedOnly => 'Unwatched only';

	/// en: 'Next ${count} unwatched'
	String nextNUnwatched({required Object count}) => 'Next ${count} unwatched';

	/// en: 'Custom amount...'
	String get customAmount => 'Custom amount...';

	/// en: 'Include Specials'
	String get includeSpecials => 'Include Specials';

	/// en: 'How many episodes?'
	String get howManyEpisodes => 'How many episodes?';

	/// en: 'Enter a valid episode count.'
	String get invalidEpisodeCount => 'Enter a valid episode count.';

	/// en: 'Keep synced'
	String get keepSynced => 'Keep synced';

	/// en: 'Download once'
	String get downloadOnce => 'Download once';

	/// en: 'Keep ${count} unwatched'
	String keepNUnwatched({required Object count}) => 'Keep ${count} unwatched';

	/// en: 'Edit sync rule'
	String get editSyncRule => 'Edit sync rule';

	/// en: 'Remove sync rule'
	String get removeSyncRule => 'Remove sync rule';

	/// en: 'Stop syncing "${title}"? Downloaded episodes will be kept.'
	String removeSyncRuleConfirm({required Object title}) => 'Stop syncing "${title}"? Downloaded episodes will be kept.';

	/// en: 'Stop syncing "${title}"?'
	String removeListSyncRuleConfirm({required Object title}) => 'Stop syncing "${title}"?';

	/// en: 'Also delete associated downloads'
	String get deleteSyncRuleDownloads => 'Also delete associated downloads';

	/// en: 'Downloads used by another sync rule or profile will be kept.'
	String get deleteSyncRuleDownloadsDescription => 'Downloads used by another sync rule or profile will be kept.';

	/// en: 'Sync rule created — keeping ${count} unwatched episodes'
	String syncRuleCreated({required Object count}) => 'Sync rule created — keeping ${count} unwatched episodes';

	/// en: 'Sync rule updated'
	String get syncRuleUpdated => 'Sync rule updated';

	/// en: 'Sync rule removed'
	String get syncRuleRemoved => 'Sync rule removed';

	/// en: 'Sync rule and associated downloads removed'
	String get syncRuleAndDownloadsRemoved => 'Sync rule and associated downloads removed';

	/// en: 'Sync rules are currently updating. Try again in a moment.'
	String get syncRuleCleanupBusy => 'Sync rules are currently updating. Try again in a moment.';

	/// en: 'Associated downloads could not be identified safely. Reconnect the server and try again, or remove the rule without deleting downloads.'
	String get syncRuleCleanupUnavailable => 'Associated downloads could not be identified safely. Reconnect the server and try again, or remove the rule without deleting downloads.';

	/// en: 'Synced ${count} new episodes for ${title}'
	String syncedNewEpisodes({required Object count, required Object title}) => 'Synced ${count} new episodes for ${title}';

	/// en: 'Sync rules'
	String get activeSyncRules => 'Sync rules';

	/// en: 'No sync rules'
	String get noSyncRules => 'No sync rules';

	/// en: 'Manage sync'
	String get manageSyncRule => 'Manage sync';

	/// en: 'Episode count'
	String get editEpisodeCount => 'Episode count';

	/// en: 'Sync filter'
	String get editSyncFilter => 'Sync filter';

	/// en: 'Syncing all items'
	String get syncAllItems => 'Syncing all items';

	/// en: 'Syncing unwatched items'
	String get syncUnwatchedItems => 'Syncing unwatched items';

	/// en: 'Server: ${server} • ${status}'
	String syncRuleServerContext({required Object server, required Object status}) => 'Server: ${server} • ${status}';

	/// en: 'Available'
	String get syncRuleAvailable => 'Available';

	/// en: 'Offline'
	String get syncRuleOffline => 'Offline';

	/// en: 'Sign in required'
	String get syncRuleSignInRequired => 'Sign in required';

	/// en: 'Access denied'
	String get syncRuleAccessDenied => 'Access denied';

	/// en: 'Not available for current profile'
	String get syncRuleNotAvailableForProfile => 'Not available for current profile';

	/// en: 'Unknown server'
	String get syncRuleUnknownServer => 'Unknown server';

	/// en: 'Sync rule created'
	String get syncRuleListCreated => 'Sync rule created';

	late final Translations$downloads$backgroundWarning$en backgroundWarning = Translations$downloads$backgroundWarning$en.internal(_root);

	/// en: 'Downloads options'
	String get options => 'Downloads options';

	late final Translations$downloads$groupings$en groupings = Translations$downloads$groupings$en.internal(_root);

	/// en: 'Unknown library'
	String get unknownLibrary => 'Unknown library';

	/// en: 'Unknown Show'
	String get unknownShow => 'Unknown Show';

	/// en: 'Unknown Season'
	String get unknownSeason => 'Unknown Season';

	/// en: 'Unknown Album'
	String get unknownAlbum => 'Unknown Album';

	/// en: '${completed}/${total} completed'
	String completedOfTotal({required Object completed, required Object total}) => '${completed}/${total} completed';

	/// en: 'File not found (404)'
	String get errorFileNotFound => 'File not found (404)';

	/// en: 'Download not allowed by the server (403)'
	String get errorDownloadNotAllowed => 'Download not allowed by the server (403)';

	/// en: 'Download failed'
	String get errorDownloadFailed => 'Download failed';

	/// en: 'Download failed: ${reason}'
	String errorDownloadFailedWithReason({required Object reason}) => 'Download failed: ${reason}';

	/// en: 'Download failed (HTTP ${status})'
	String errorHttpStatus({required Object status}) => 'Download failed (HTTP ${status})';

	/// en: 'Post-processing failed: ${reason}'
	String errorPostProcessing({required Object reason}) => 'Post-processing failed: ${reason}';

	/// en: 'the file could not be saved on this device'
	String get reasonFileNotSaved => 'the file could not be saved on this device';

	/// en: 'the partial download could not be resumed'
	String get reasonCannotResume => 'the partial download could not be resumed';

	/// en: 'this device is out of storage'
	String get reasonDeviceStorageFull => 'this device is out of storage';

	/// en: 'Downloading...'
	String get notificationDownloading => 'Downloading...';

	/// en: 'Download complete'
	String get notificationComplete => 'Download complete';

	/// en: 'Download paused'
	String get notificationPaused => 'Download paused';
}

// Path: shaders
class Translations$shaders$en {
	Translations$shaders$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Shaders'
	String get title => 'Shaders';

	/// en: 'No video enhancement'
	String get noShaderDescription => 'No video enhancement';

	/// en: 'NVIDIA image scaling for sharper video'
	String get nvscalerDescription => 'NVIDIA image scaling for sharper video';

	/// en: 'Neutral'
	String get artcnnVariantNeutral => 'Neutral';

	/// en: 'Denoise'
	String get artcnnVariantDenoise => 'Denoise';

	/// en: 'Denoise + Sharpen'
	String get artcnnVariantDenoiseSharpen => 'Denoise + Sharpen';

	/// en: 'Fast'
	String get qualityFast => 'Fast';

	/// en: 'High Quality'
	String get qualityHQ => 'High Quality';

	/// en: 'Mode'
	String get mode => 'Mode';

	/// en: 'Import Shader'
	String get importShader => 'Import Shader';

	/// en: 'Custom GLSL shader'
	String get customShaderDescription => 'Custom GLSL shader';

	/// en: 'Shader imported'
	String get shaderImported => 'Shader imported';

	/// en: 'Failed to import shader'
	String get shaderImportFailed => 'Failed to import shader';

	/// en: 'Delete Shader'
	String get deleteShader => 'Delete Shader';

	/// en: 'Delete "${name}"?'
	String deleteShaderConfirm({required Object name}) => 'Delete "${name}"?';
}

// Path: companionRemote
class Translations$companionRemote$en {
	Translations$companionRemote$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Companion Remote'
	String get title => 'Companion Remote';

	/// en: 'Connected to ${name}'
	String connectedTo({required Object name}) => 'Connected to ${name}';

	/// en: 'Unknown Device'
	String get unknownDevice => 'Unknown Device';

	late final Translations$companionRemote$session$en session = Translations$companionRemote$session$en.internal(_root);
	late final Translations$companionRemote$pairing$en pairing = Translations$companionRemote$pairing$en.internal(_root);
	late final Translations$companionRemote$remote$en remote = Translations$companionRemote$remote$en.internal(_root);
	late final Translations$companionRemote$errors$en errors = Translations$companionRemote$errors$en.internal(_root);

	/// en: 'The connection closed before authentication'
	String get closedBeforeAuth => 'The connection closed before authentication';
}

// Path: videoSettings
class Translations$videoSettings$en {
	Translations$videoSettings$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Playback Speed'
	String get playbackSpeed => 'Playback Speed';

	/// en: 'Normal'
	String get normalSpeed => 'Normal';

	/// en: 'Active (${duration})'
	String sleepTimerActive({required Object duration}) => 'Active (${duration})';

	/// en: 'Zoom'
	String get zoom => 'Zoom';

	/// en: 'Sleep Timer'
	String get sleepTimer => 'Sleep Timer';

	/// en: 'Audio Sync'
	String get audioSync => 'Audio Sync';

	/// en: 'Subtitle Sync'
	String get subtitleSync => 'Subtitle Sync';

	/// en: 'HDR'
	String get hdr => 'HDR';

	/// en: 'HDR isn't available here — this desktop compositor or video output can't carry it.'
	String get hdrUnsupported => 'HDR isn\'t available here — this desktop compositor or video output can\'t carry it.';

	/// en: 'HDR Tone Mapping'
	String get hdrToneMapping => 'HDR Tone Mapping';

	/// en: 'Compositor'
	String get hdrToneMappingCompositor => 'Compositor';

	/// en: 'Pass the source's HDR metadata through and let the desktop compositor map it.'
	String get hdrToneMappingCompositorDescription => 'Pass the source\'s HDR metadata through and let the desktop compositor map it.';

	/// en: 'Player'
	String get hdrToneMappingPlayer => 'Player';

	/// en: 'Map to the display's peak brightness in the player, then tell the compositor the result.'
	String get hdrToneMappingPlayerDescription => 'Map to the display\'s peak brightness in the player, then tell the compositor the result.';

	/// en: 'Couldn't change HDR tone mapping — the previous mode is still active.'
	String get hdrToneMappingFailed => 'Couldn\'t change HDR tone mapping — the previous mode is still active.';

	/// en: 'Audio Output'
	String get audioOutput => 'Audio Output';

	/// en: 'Performance Overlay'
	String get performanceOverlay => 'Performance Overlay';

	/// en: 'Dolby Atmos'
	String get audioOutputDolbyAtmos => 'Dolby Atmos';

	/// en: 'Dolby Audio'
	String get audioOutputDolbyAudio => 'Dolby Audio';

	/// en: 'Surround'
	String get audioOutputSurround => 'Surround';

	/// en: 'Spatial Audio'
	String get audioOutputSpatial => 'Spatial Audio';

	/// en: 'Stereo'
	String get audioOutputStereo => 'Stereo';

	/// en: 'Normalize Loudness'
	String get audioNormalization => 'Normalize Loudness';

	/// en: 'Decodes audio to PCM; passthrough is off while this is on'
	String get audioNormalizationDisablesPassthrough => 'Decodes audio to PCM; passthrough is off while this is on';
}

// Path: performanceOverlay
class Translations$performanceOverlay$en {
	Translations$performanceOverlay$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Color'
	String get color => 'Color';

	/// en: 'Performance'
	String get performance => 'Performance';

	/// en: 'Buffer'
	String get buffer => 'Buffer';

	/// en: 'App'
	String get app => 'App';

	/// en: 'Decoder'
	String get decoder => 'Decoder';

	/// en: 'Raw Decoder'
	String get rawDecoder => 'Raw Decoder';

	/// en: 'Tunneling'
	String get tunneling => 'Tunneling';

	/// en: 'Passthrough'
	String get passthrough => 'Passthrough';

	/// en: 'Aspect'
	String get aspect => 'Aspect';

	/// en: 'Rotation'
	String get rotation => 'Rotation';

	/// en: 'DV Source'
	String get dvSource => 'DV Source';

	/// en: 'DV Path'
	String get dvPath => 'DV Path';

	/// en: 'Dolby Vision decoder'
	String get dvRouteDecoder => 'Dolby Vision decoder';

	/// en: 'Dolby Vision decoder (P7→8.1)'
	String get dvRouteDecoderP81 => 'Dolby Vision decoder (P7→8.1)';

	/// en: 'Base layer'
	String get dvRouteBaseLayer => 'Base layer';

	/// en: 'HDR10 base layer'
	String get dvRouteBaseLayerHdr10 => 'HDR10 base layer';

	/// en: 'HLG base layer'
	String get dvRouteBaseLayerHlg => 'HLG base layer';

	/// en: 'SDR base layer'
	String get dvRouteBaseLayerSdr => 'SDR base layer';

	/// en: 'RPU reshaped (gpu-next)'
	String get dvRouteReshaped => 'RPU reshaped (gpu-next)';

	/// en: 'P7 Conv'
	String get p7Conversion => 'P7 Conv';

	/// en: 'Sample Rate'
	String get sampleRate => 'Sample Rate';

	/// en: 'Pixel Fmt'
	String get pixelFormat => 'Pixel Fmt';

	/// en: 'HW Fmt'
	String get hwFormat => 'HW Fmt';

	/// en: 'Matrix'
	String get matrix => 'Matrix';

	/// en: 'Primaries'
	String get primaries => 'Primaries';

	/// en: 'Transfer'
	String get transfer => 'Transfer';

	/// en: 'Render FPS'
	String get renderFps => 'Render FPS';

	/// en: 'Display FPS'
	String get displayFps => 'Display FPS';

	/// en: 'A/V Sync'
	String get avSync => 'A/V Sync';

	/// en: 'Dropped'
	String get dropped => 'Dropped';

	/// en: 'DV RPUs'
	String get dvRpus => 'DV RPUs';

	/// en: 'DV RPU Avg'
	String get dvRpuAverage => 'DV RPU Avg';

	/// en: 'DV Sample Avg'
	String get dvSampleAverage => 'DV Sample Avg';

	/// en: 'Max Luma'
	String get maxLuma => 'Max Luma';

	/// en: 'Min Luma'
	String get minLuma => 'Min Luma';

	/// en: 'MaxCLL'
	String get maxCll => 'MaxCLL';

	/// en: 'MaxFALL'
	String get maxFall => 'MaxFALL';

	/// en: 'Cache Used'
	String get cacheUsed => 'Cache Used';

	/// en: 'Cache Limit'
	String get cacheLimit => 'Cache Limit';

	/// en: 'Speed'
	String get speed => 'Speed';

	/// en: 'Player'
	String get player => 'Player';

	/// en: 'Memory'
	String get memory => 'Memory';

	/// en: 'UI FPS'
	String get uiFps => 'UI FPS';

	/// en: 'FPS'
	String get fps => 'FPS';

	/// en: 'Android HW'
	String get decoderAndroidHw => 'Android HW';

	/// en: 'NVIDIA HW'
	String get decoderNvidiaHw => 'NVIDIA HW';

	/// en: 'Qualcomm HW'
	String get decoderQualcommHw => 'Qualcomm HW';

	/// en: 'MediaTek HW'
	String get decoderMediatekHw => 'MediaTek HW';

	/// en: 'Exynos HW'
	String get decoderExynosHw => 'Exynos HW';

	/// en: 'Software'
	String get decoderSoftware => 'Software';

	/// en: 'Hardware'
	String get decoderHardware => 'Hardware';

	/// en: 'Active'
	String get tunnelingActive => 'Active';

	/// en: '${converted} (${failures} failed)'
	String dvRpuFailed({required Object converted, required Object failures}) => '${converted} (${failures} failed)';
}

// Path: externalPlayer
class Translations$externalPlayer$en {
	Translations$externalPlayer$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'External Player'
	String get title => 'External Player';

	/// en: 'Use External Player'
	String get useExternalPlayer => 'Use External Player';

	/// en: 'Open videos in another app'
	String get useExternalPlayerDescription => 'Open videos in another app';

	/// en: 'Select Player'
	String get selectPlayer => 'Select Player';

	/// en: 'Custom Players'
	String get customPlayers => 'Custom Players';

	/// en: 'System Default'
	String get systemDefault => 'System Default';

	/// en: 'Add Custom Player'
	String get addCustomPlayer => 'Add Custom Player';

	/// en: 'Player Name'
	String get playerName => 'Player Name';

	/// en: 'My Player'
	String get playerNameHint => 'My Player';

	/// en: 'Command'
	String get playerCommand => 'Command';

	/// en: 'Package Name'
	String get playerPackage => 'Package Name';

	/// en: 'URL Scheme'
	String get playerUrlScheme => 'URL Scheme';

	/// en: 'Off'
	String get off => 'Off';

	/// en: 'Failed to open external player'
	String get launchFailed => 'Failed to open external player';

	/// en: '${name} is not installed'
	String appNotInstalled({required Object name}) => '${name} is not installed';

	/// en: 'Play in External Player'
	String get playInExternalPlayer => 'Play in External Player';
}

// Path: metadataEdit
class Translations$metadataEdit$en {
	Translations$metadataEdit$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Edit...'
	String get editMetadata => 'Edit...';

	/// en: 'Edit Metadata'
	String get screenTitle => 'Edit Metadata';

	/// en: 'Basic Info'
	String get basicInfo => 'Basic Info';

	/// en: 'Artwork'
	String get artwork => 'Artwork';

	/// en: 'Advanced Settings'
	String get advancedSettings => 'Advanced Settings';

	/// en: 'Title'
	String get title => 'Title';

	/// en: 'Sort Title'
	String get sortTitle => 'Sort Title';

	/// en: 'Original Title'
	String get originalTitle => 'Original Title';

	/// en: 'Release Date'
	String get releaseDate => 'Release Date';

	/// en: 'Content Rating'
	String get contentRating => 'Content Rating';

	/// en: 'Studio'
	String get studio => 'Studio';

	/// en: 'Tagline'
	String get tagline => 'Tagline';

	/// en: 'Summary'
	String get summary => 'Summary';

	/// en: 'Poster'
	String get poster => 'Poster';

	/// en: 'Background'
	String get background => 'Background';

	/// en: 'Logo'
	String get logo => 'Logo';

	/// en: 'Square Art'
	String get squareArt => 'Square Art';

	/// en: 'Select Poster'
	String get selectPoster => 'Select Poster';

	/// en: 'Select Background'
	String get selectBackground => 'Select Background';

	/// en: 'Select Logo'
	String get selectLogo => 'Select Logo';

	/// en: 'Select Square Art'
	String get selectSquareArt => 'Select Square Art';

	/// en: 'From URL'
	String get fromUrl => 'From URL';

	/// en: 'Upload File'
	String get uploadFile => 'Upload File';

	/// en: 'Enter image URL'
	String get enterImageUrl => 'Enter image URL';

	/// en: 'Image URL'
	String get imageUrl => 'Image URL';

	/// en: 'Metadata updated'
	String get metadataUpdated => 'Metadata updated';

	/// en: 'Failed to update metadata'
	String get metadataUpdateFailed => 'Failed to update metadata';

	/// en: 'Artwork updated'
	String get artworkUpdated => 'Artwork updated';

	/// en: 'Failed to update artwork'
	String get artworkUpdateFailed => 'Failed to update artwork';

	/// en: 'No artwork available'
	String get noArtworkAvailable => 'No artwork available';

	/// en: 'Artwork option ${index}'
	String artworkOption({required Object index}) => 'Artwork option ${index}';

	/// en: 'Artwork option ${index}, selected'
	String selectedArtworkOption({required Object index}) => 'Artwork option ${index}, selected';

	/// en: 'Not set'
	String get notSet => 'Not set';

	/// en: 'Library default'
	String get libraryDefault => 'Library default';

	/// en: 'Account default'
	String get accountDefault => 'Account default';

	/// en: 'Series default'
	String get seriesDefault => 'Series default';

	/// en: 'Episode Sorting'
	String get episodeSorting => 'Episode Sorting';

	/// en: 'Oldest first'
	String get oldestFirst => 'Oldest first';

	/// en: 'Newest first'
	String get newestFirst => 'Newest first';

	/// en: 'Keep'
	String get keep => 'Keep';

	/// en: 'All episodes'
	String get allEpisodes => 'All episodes';

	/// en: '${count} latest episodes'
	String latestEpisodes({required Object count}) => '${count} latest episodes';

	/// en: 'Latest episode'
	String get latestEpisode => 'Latest episode';

	/// en: 'Episodes added in the past ${count} days'
	String episodesAddedPastDays({required Object count}) => 'Episodes added in the past ${count} days';

	/// en: 'Delete Episodes After Playing'
	String get deleteAfterPlaying => 'Delete Episodes After Playing';

	/// en: 'Never'
	String get never => 'Never';

	/// en: 'After a day'
	String get afterADay => 'After a day';

	/// en: 'After a week'
	String get afterAWeek => 'After a week';

	/// en: 'After a month'
	String get afterAMonth => 'After a month';

	/// en: 'On next refresh'
	String get onNextRefresh => 'On next refresh';

	/// en: 'Seasons'
	String get seasons => 'Seasons';

	/// en: 'Show'
	String get show => 'Show';

	/// en: 'Hide'
	String get hide => 'Hide';

	/// en: 'Episode Ordering'
	String get episodeOrdering => 'Episode Ordering';

	/// en: 'The Movie Database (Aired)'
	String get tmdbAiring => 'The Movie Database (Aired)';

	/// en: 'TheTVDB (Aired)'
	String get tvdbAiring => 'TheTVDB (Aired)';

	/// en: 'TheTVDB (Absolute)'
	String get tvdbAbsolute => 'TheTVDB (Absolute)';

	/// en: 'Metadata Language'
	String get metadataLanguage => 'Metadata Language';

	/// en: 'Use Original Title'
	String get useOriginalTitle => 'Use Original Title';

	/// en: 'Preferred Audio Language'
	String get preferredAudioLanguage => 'Preferred Audio Language';

	/// en: 'Preferred Subtitle Language'
	String get preferredSubtitleLanguage => 'Preferred Subtitle Language';

	/// en: 'Auto-Select Subtitle Mode'
	String get subtitleMode => 'Auto-Select Subtitle Mode';

	/// en: 'Manually selected'
	String get manuallySelected => 'Manually selected';

	/// en: 'Shown with foreign audio'
	String get shownWithForeignAudio => 'Shown with foreign audio';

	/// en: 'Always enabled'
	String get alwaysEnabled => 'Always enabled';

	/// en: 'Tags'
	String get tags => 'Tags';

	/// en: 'Add tag'
	String get addTag => 'Add tag';

	/// en: 'Genre'
	String get genre => 'Genre';

	/// en: 'Director'
	String get director => 'Director';

	/// en: 'Writer'
	String get writer => 'Writer';

	/// en: 'Producer'
	String get producer => 'Producer';

	/// en: 'Country'
	String get country => 'Country';

	/// en: 'Collection'
	String get collection => 'Collection';

	/// en: 'Label'
	String get label => 'Label';

	/// en: 'Quick Tag...'
	String get quickTag => 'Quick Tag...';
}

// Path: matchScreen
class Translations$matchScreen$en {
	Translations$matchScreen$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Match...'
	String get match => 'Match...';

	/// en: 'Fix Match...'
	String get fixMatch => 'Fix Match...';

	/// en: 'Unmatch'
	String get unmatch => 'Unmatch';

	/// en: 'Clear this match? Plex treats it as unmatched until rematched.'
	String get unmatchConfirm => 'Clear this match? Plex treats it as unmatched until rematched.';

	/// en: 'Item unmatched'
	String get unmatchSuccess => 'Item unmatched';

	/// en: 'Failed to unmatch item'
	String get unmatchFailed => 'Failed to unmatch item';

	/// en: 'Match applied'
	String get matchApplied => 'Match applied';

	/// en: 'Failed to apply match'
	String get matchFailed => 'Failed to apply match';

	/// en: 'Title'
	String get titleHint => 'Title';

	/// en: 'Year'
	String get yearHint => 'Year';

	/// en: 'Search'
	String get search => 'Search';

	/// en: 'No matches found'
	String get noMatchesFound => 'No matches found';
}

// Path: serverTasks
class Translations$serverTasks$en {
	Translations$serverTasks$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Server Tasks'
	String get title => 'Server Tasks';

	/// en: 'Failed to load tasks'
	String get failedToLoad => 'Failed to load tasks';

	/// en: 'No tasks running'
	String get noTasks => 'No tasks running';
}

// Path: trakt
class Translations$trakt$en {
	Translations$trakt$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Trakt'
	String get title => 'Trakt';

	/// en: 'Connected'
	String get connected => 'Connected';

	/// en: 'Connected as @${username}'
	String connectedAs({required Object username}) => 'Connected as @${username}';

	/// en: 'Disconnect Trakt account?'
	String get disconnectConfirm => 'Disconnect Trakt account?';

	/// en: 'Luroka will stop sending events to Trakt. You can reconnect any time.'
	String get disconnectConfirmBody => 'Luroka will stop sending events to Trakt. You can reconnect any time.';

	/// en: 'Real-time scrobbling'
	String get scrobble => 'Real-time scrobbling';

	/// en: 'Send play, pause, and stop events to Trakt during playback.'
	String get scrobbleDescription => 'Send play, pause, and stop events to Trakt during playback.';

	/// en: 'Sync watched status'
	String get watchedSync => 'Sync watched status';

	/// en: 'When you mark items as watched in Luroka, they are also marked as watched on Trakt.'
	String get watchedSyncDescription => 'When you mark items as watched in Luroka, they are also marked as watched on Trakt.';
}

// Path: seerr
class Translations$seerr$en {
	Translations$seerr$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Seerr'
	String get title => 'Seerr';

	/// en: 'Connect Seerr'
	String get connectTitle => 'Connect Seerr';

	/// en: 'Server URL'
	String get serverUrl => 'Server URL';

	/// en: 'The address of your Seerr instance'
	String get serverUrlHelper => 'The address of your Seerr instance';

	/// en: 'Continue'
	String get checkServer => 'Continue';

	/// en: 'Sign in with Jellyfin'
	String get signInWithJellyfin => 'Sign in with Jellyfin';

	/// en: 'Sign in with Emby'
	String get signInWithEmby => 'Sign in with Emby';

	/// en: 'Use a local account'
	String get signInWithLocal => 'Use a local account';

	/// en: 'Email'
	String get email => 'Email';

	/// en: 'This Seerr instance offers no sign-in method Luroka supports.'
	String get noSignInMethods => 'This Seerr instance offers no sign-in method Luroka supports.';

	/// en: 'Instance'
	String get instance => 'Instance';

	/// en: 'Disconnect Seerr?'
	String get disconnectConfirm => 'Disconnect Seerr?';

	/// en: 'Luroka will forget this Seerr instance. Reconnect any time.'
	String get disconnectConfirmBody => 'Luroka will forget this Seerr instance. Reconnect any time.';

	/// en: 'Request'
	String get request => 'Request';

	/// en: 'Request in 4K'
	String get request4k => 'Request in 4K';

	/// en: 'Seasons'
	String get seasons => 'Seasons';

	/// en: 'All seasons'
	String get allSeasons => 'All seasons';

	/// en: 'Advanced'
	String get advancedOptions => 'Advanced';

	/// en: 'Destination server'
	String get destinationServer => 'Destination server';

	/// en: 'Quality profile'
	String get qualityProfile => 'Quality profile';

	/// en: 'Root folder'
	String get rootFolder => 'Root folder';

	/// en: 'Language profile'
	String get languageProfile => 'Language profile';

	/// en: 'Tags'
	String get tags => 'Tags';

	/// en: 'No tags'
	String get noTags => 'No tags';

	/// en: '${name} (Default)'
	String defaultOption({required Object name}) => '${name} (Default)';

	/// en: 'This series is an anime.'
	String get animeNote => 'This series is an anime.';

	/// en: 'Request submitted'
	String get requestSubmitted => 'Request submitted';

	/// en: 'Request failed: ${error}'
	String requestFailed({required Object error}) => 'Request failed: ${error}';

	/// en: 'Couldn't load request options'
	String get requestsLoadFailed => 'Couldn\'t load request options';

	/// en: 'Everything is already available or requested.'
	String get nothingToRequest => 'Everything is already available or requested.';

	/// en: 'Available'
	String get statusAvailable => 'Available';

	/// en: 'Partially available'
	String get statusPartiallyAvailable => 'Partially available';

	/// en: 'Requested'
	String get statusRequested => 'Requested';

	/// en: 'Processing'
	String get statusProcessing => 'Processing';

	/// en: 'Blocklisted'
	String get statusBlocklisted => 'Blocklisted';

	/// en: 'Could not reach ${url}: ${error}'
	String couldNotReach({required Object url, required Object error}) => 'Could not reach ${url}: ${error}';

	/// en: 'No Seerr instance at ${url} (HTTP ${status})'
	String noInstanceAtUrl({required Object url, required Object status}) => 'No Seerr instance at ${url} (HTTP ${status})';

	/// en: 'An authenticating reverse proxy (SSO or HTTP auth) answered instead of Seerr. Luroka cannot sign in through it: let Seerr's /api/v1 path bypass the proxy for this app, or use an address that reaches Seerr directly.'
	String get behindAuthProxy => 'An authenticating reverse proxy (SSO or HTTP auth) answered instead of Seerr. Luroka cannot sign in through it: let Seerr\'s /api/v1 path bypass the proxy for this app, or use an address that reaches Seerr directly.';

	/// en: 'Enter a server address like https://seerr.example.com'
	String get invalidUrl => 'Enter a server address like https://seerr.example.com';

	/// en: 'This Seerr instance does not support Quick Connect. It needs Seerr 3.4 or newer.'
	String get quickConnectUnsupported => 'This Seerr instance does not support Quick Connect. It needs Seerr 3.4 or newer.';

	/// en: 'This Seerr instance has not completed first-run setup'
	String get notInitialized => 'This Seerr instance has not completed first-run setup';

	/// en: 'No Plex token is available to sign in again'
	String get noPlexTokenForReauth => 'No Plex token is available to sign in again';

	/// en: 'No stored credentials are available to sign in again'
	String get noStoredCredentials => 'No stored credentials are available to sign in again';

	/// en: 'Sign-in was rejected'
	String get signInRejected => 'Sign-in was rejected';

	/// en: 'Seerr did not issue a session cookie'
	String get noSessionCookie => 'Seerr did not issue a session cookie';

	/// en: 'Seerr rejected the new session cookie'
	String get freshCookieRejected => 'Seerr rejected the new session cookie';

	/// en: 'Seerr did not return user information'
	String get noUserInformation => 'Seerr did not return user information';

	/// en: 'The session was rejected after signing in again'
	String get sessionRejectedAfterReauth => 'The session was rejected after signing in again';

	/// en: 'Seerr denied this action: your account no longer has the required permission'
	String get permissionDenied => 'Seerr denied this action: your account no longer has the required permission';

	/// en: 'You no longer have permission to request this'
	String get permissionRevoked => 'You no longer have permission to request this';
}

// Path: services
class Translations$services$en {
	Translations$services$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Services'
	String get title => 'Services';

	/// en: 'Connect the services you use to discover more, request titles, and keep your viewing in sync.'
	String get hubSubtitle => 'Connect the services you use to discover more, request titles, and keep your viewing in sync.';

	/// en: 'Discovery & requests'
	String get discoverySection => 'Discovery & requests';

	/// en: 'Watch tracking & lists'
	String get trackingSection => 'Watch tracking & lists';

	/// en: 'Find and request movies or shows from your Seerr server.'
	String get seerrDescription => 'Find and request movies or shows from your Seerr server.';

	/// en: 'Discover movies and shows, artwork, ratings, and details.'
	String get tmdbDescription => 'Discover movies and shows, artwork, ratings, and details.';

	/// en: 'Track movies and shows, sync watched status, and manage your watchlist.'
	String get traktDescription => 'Track movies and shows, sync watched status, and manage your watchlist.';

	/// en: 'Keep your anime list and viewing progress in sync.'
	String get malDescription => 'Keep your anime list and viewing progress in sync.';

	/// en: 'Follow anime and sync your viewing progress with AniList.'
	String get anilistDescription => 'Follow anime and sync your viewing progress with AniList.';

	/// en: 'Track your movies, shows, and anime with Simkl.'
	String get simklDescription => 'Track your movies, shows, and anime with Simkl.';

	/// en: 'Connect your MDBList lists and movie ratings.'
	String get mdblistDescription => 'Connect your MDBList lists and movie ratings.';

	/// en: 'Connect ${service} to your current Luroka profile. You can manage this connection and its options here any time.'
	String connectionIntro({required Object service}) => 'Connect ${service} to your current Luroka profile. You can manage this connection and its options here any time.';

	/// en: 'Connect ${service}'
	String connectService({required Object service}) => 'Connect ${service}';

	/// en: 'Connect your Seerr server to discover and request movies and shows from Luroka.'
	String get seerrConnectDescription => 'Connect your Seerr server to discover and request movies and shows from Luroka.';

	/// en: 'Start with the address you use to open Seerr. We'll check which sign-in methods your server supports.'
	String get seerrServerStep => 'Start with the address you use to open Seerr. We\'ll check which sign-in methods your server supports.';

	/// en: 'Choose a sign-in method supported by your server.'
	String get seerrSignInStep => 'Choose a sign-in method supported by your server.';

	/// en: 'Integrations'
	String get integrations => 'Integrations';

	/// en: 'Not connected'
	String get notConnected => 'Not connected';

	/// en: 'Connected as @${username}'
	String connectedAs({required Object username}) => 'Connected as @${username}';

	/// en: 'Track progress automatically'
	String get scrobble => 'Track progress automatically';

	/// en: 'Update your list when you finish an episode or movie.'
	String get scrobbleDescription => 'Update your list when you finish an episode or movie.';

	/// en: 'Disconnect ${service}?'
	String disconnectConfirm({required Object service}) => 'Disconnect ${service}?';

	/// en: 'Luroka will stop updating ${service}. Reconnect any time.'
	String disconnectConfirmBody({required Object service}) => 'Luroka will stop updating ${service}. Reconnect any time.';

	/// en: 'Couldn't connect to ${service}. Try again.'
	String connectFailed({required Object service}) => 'Couldn\'t connect to ${service}. Try again.';

	late final Translations$services$names$en names = Translations$services$names$en.internal(_root);
	late final Translations$services$simklReconnect$en simklReconnect = Translations$services$simklReconnect$en.internal(_root);
	late final Translations$services$deviceCode$en deviceCode = Translations$services$deviceCode$en.internal(_root);
	late final Translations$services$oauthProxy$en oauthProxy = Translations$services$oauthProxy$en.internal(_root);
	late final Translations$services$pendingAuth$en pendingAuth = Translations$services$pendingAuth$en.internal(_root);
	late final Translations$services$libraryFilter$en libraryFilter = Translations$services$libraryFilter$en.internal(_root);
}

// Path: offlineRecovery
class Translations$offlineRecovery$en {
	Translations$offlineRecovery$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Your servers are offline'
	String get title => 'Your servers are offline';

	/// en: 'Your downloads are still available. Try reconnecting when your server is back, or add another server.'
	String get description => 'Your downloads are still available. Try reconnecting when your server is back, or add another server.';

	/// en: 'Luroka couldn't reach your media servers. Try reconnecting when they're available, or add another server to continue watching.'
	String get appleTvDescription => 'Luroka couldn\'t reach your media servers. Try reconnecting when they\'re available, or add another server to continue watching.';

	/// en: 'We couldn't reach your media server. Try reconnecting, or ask a parent for help.'
	String get kidsDescription => 'We couldn\'t reach your media server. Try reconnecting, or ask a parent for help.';

	/// en: 'Connecting…'
	String get retrying => 'Connecting…';

	/// en: 'Add a server'
	String get addServer => 'Add a server';
}

// Path: releaseUpdates
class Translations$releaseUpdates$en {
	Translations$releaseUpdates$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Download the release archive from GitHub, extract the APK, and install it on your Android device.'
	String get manualInstructions => 'Download the release archive from GitHub, extract the APK, and install it on your Android device.';

	/// en: 'Open this address on your phone or computer, or scan the QR code to download the release.'
	String get tvInstructions => 'Open this address on your phone or computer, or scan the QR code to download the release.';

	/// en: 'Press Back again to exit playback'
	String get pressBackAgain => 'Press Back again to exit playback';
}

// Path: profileIntegrations
class Translations$profileIntegrations$en {
	Translations$profileIntegrations$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Make Luroka yours'
	String get title => 'Make Luroka yours';

	/// en: 'Connect your favorite services to track what you watch and request new movies and shows. Each Luroka profile has its own connections.'
	String get description => 'Connect your favorite services to track what you watch and request new movies and shows. Each Luroka profile has its own connections.';

	/// en: 'Optional integrations'
	String get step => 'Optional integrations';

	/// en: 'Trakt · Simkl · AniList · MyAnimeList · Seerr'
	String get examples => 'Trakt · Simkl · AniList · MyAnimeList · Seerr';

	/// en: 'Explore integrations'
	String get connect => 'Explore integrations';

	/// en: 'Set up later'
	String get later => 'Set up later';

	/// en: 'Manage integrations'
	String get manage => 'Manage integrations';

	/// en: 'Connections for ${name}'
	String forProfile({required Object name}) => 'Connections for ${name}';
}

// Path: profileSetupGuide
class Translations$profileSetupGuide$en {
	Translations$profileSetupGuide$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Make your profile yours'
	String get title => 'Make your profile yours';

	/// en: 'Choose how Luroka looks and feels for this profile on this device. You can change everything later in Settings.'
	String get description => 'Choose how Luroka looks and feels for this profile on this device. You can change everything later in Settings.';

	/// en: '1 of 2 · Look and feel'
	String get appearanceStep => '1 of 2 · Look and feel';

	/// en: '2 of 2 · Your Home screen'
	String get homeStep => '2 of 2 · Your Home screen';

	/// en: 'Preview'
	String get preview => 'Preview';

	/// en: 'Your Home'
	String get previewTitle => 'Your Home';

	/// en: 'Poster'
	String get previewPoster => 'Poster';

	/// en: 'Artwork only'
	String get posterArtwork => 'Artwork only';

	/// en: 'Show poster details'
	String get posterWithDetails => 'Show poster details';

	/// en: 'Play a movie or show’s theme while its details page is open, when available.'
	String get musicDescription => 'Play a movie or show’s theme while its details page is open, when available.';

	/// en: 'More themes'
	String get moreThemes => 'More themes';

	/// en: 'Fewer themes'
	String get fewerThemes => 'Fewer themes';

	/// en: 'What should appear in Spotlight?'
	String get spotlightHeading => 'What should appear in Spotlight?';

	/// en: 'Continue Watching and Next Up'
	String get progressHeading => 'Continue Watching and Next Up';

	/// en: 'Use defaults and start watching'
	String get skip => 'Use defaults and start watching';

	/// en: 'Start watching'
	String get finish => 'Start watching';

	/// en: 'Back'
	String get back => 'Back';

	/// en: 'Continue'
	String get kContinue => 'Continue';

	/// en: 'Choose libraries later'
	String get chooseLater => 'Choose libraries later';

	/// en: 'This changes what appears in Luroka for this profile; it does not change server permissions.'
	String get libraryScope => 'This changes what appears in Luroka for this profile; it does not change server permissions.';

	/// en: 'Profile created'
	String get createdTitle => 'Profile created';

	/// en: 'Your new profile is ready. Its owner can personalize it the first time they open it.'
	String get createdDescription => 'Your new profile is ready. Its owner can personalize it the first time they open it.';

	/// en: 'Switch to this profile'
	String get switchProfile => 'Switch to this profile';

	/// en: 'Stay on current profile'
	String get stayHere => 'Stay on current profile';
}

// Path: animeFavorites
class Translations$animeFavorites$en {
	Translations$animeFavorites$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Anime'
	String get filter => 'Anime';

	/// en: 'Manage anime'
	String get manage => 'Manage anime';

	/// en: 'Automatic detection uses anime library names and available anime tags or IDs. Choose libraries and correct individual favorites. Choices are saved on this device for your profile.'
	String get description => 'Automatic detection uses anime library names and available anime tags or IDs. Choose libraries and correct individual favorites. Choices are saved on this device for your profile.';

	/// en: 'Anime libraries'
	String get libraries => 'Anime libraries';

	/// en: 'Libraries named Anime are recognized automatically. Select a library to change its classification.'
	String get libraryHint => 'Libraries named Anime are recognized automatically. Select a library to change its classification.';

	/// en: 'Favorite titles'
	String get titles => 'Favorite titles';

	/// en: 'Select a title to mark it as anime or correct an automatic match.'
	String get titleHint => 'Select a title to mark it as anime or correct an automatic match.';

	/// en: 'Automatic'
	String get automatic => 'Automatic';

	/// en: 'Anime'
	String get include => 'Anime';

	/// en: 'Not anime'
	String get exclude => 'Not anime';

	/// en: 'Automatic · Anime'
	String get automaticIncluded => 'Automatic · Anime';

	/// en: 'Automatic · Not anime'
	String get automaticExcluded => 'Automatic · Not anime';

	/// en: 'No connected libraries available.'
	String get noLibraries => 'No connected libraries available.';

	/// en: 'No favorite movies or shows available.'
	String get noTitles => 'No favorite movies or shows available.';

	/// en: 'No anime favorites found. Check your anime libraries or mark a title as anime.'
	String get empty => 'No anime favorites found. Check your anime libraries or mark a title as anime.';

	/// en: 'Couldn't save your anime settings. Please try again.'
	String get saveFailed => 'Couldn\'t save your anime settings. Please try again.';
}

// Path: addServer
class Translations$addServer$en {
	Translations$addServer$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Add ${product} server'
	String addMediaBrowserTitle({required Object product}) => 'Add ${product} server';

	/// en: 'Server URLs'
	String get serverUrls => 'Server URLs';

	/// en: 'Multiple URLs allowed, separated by commas.'
	String get serverUrlsHelper => 'Multiple URLs allowed, separated by commas.';

	/// en: 'Find server'
	String get findServer => 'Find server';

	/// en: 'Looking for local ${product} servers...'
	String searchingLocalMediaBrowserServers({required Object product}) => 'Looking for local ${product} servers...';

	/// en: 'Saved and nearby ${product} servers'
	String localMediaBrowserServers({required Object product}) => 'Saved and nearby ${product} servers';

	/// en: 'Username'
	String get username => 'Username';

	/// en: 'Password'
	String get password => 'Password';

	/// en: 'Sign in'
	String get signIn => 'Sign in';

	/// en: 'Change'
	String get change => 'Change';

	/// en: 'Required'
	String get required => 'Required';

	/// en: 'Could not reach the server: ${error}'
	String couldNotReachServer({required Object error}) => 'Could not reach the server: ${error}';

	/// en: 'Sign-in failed: ${error}'
	String signInFailed({required Object error}) => 'Sign-in failed: ${error}';

	/// en: 'Quick Connect failed: ${error}'
	String quickConnectFailed({required Object error}) => 'Quick Connect failed: ${error}';

	/// en: 'Sign in with Plex'
	String get addPlexTitle => 'Sign in with Plex';

	/// en: 'PIN expired before sign-in. Please try again.'
	String get pinExpired => 'PIN expired before sign-in. Please try again.';

	/// en: 'Failed to register account: ${error}'
	String failedToRegisterAccount({required Object error}) => 'Failed to register account: ${error}';

	/// en: 'Enter your ${product} server URL'
	String enterMediaBrowserUrlError({required Object product}) => 'Enter your ${product} server URL';

	/// en: 'Add connection'
	String get addConnectionTitle => 'Add connection';

	/// en: 'Add to ${name}'
	String addConnectionTitleScoped({required Object name}) => 'Add to ${name}';

	/// en: 'Sign in with Plex'
	String get signInWithPlexCard => 'Sign in with Plex';

	/// en: 'Authorize this device. Shared servers are added.'
	String get signInWithPlexCardSubtitle => 'Authorize this device. Shared servers are added.';

	/// en: 'Authorize a Plex account. Home users become profiles.'
	String get signInWithPlexCardSubtitleScoped => 'Authorize a Plex account. Home users become profiles.';

	/// en: 'Connect to ${product}'
	String connectToMediaBrowserCard({required Object product}) => 'Connect to ${product}';

	/// en: 'Enter your server URL, username, and password.'
	String get connectToMediaBrowserCardSubtitle => 'Enter your server URL, username, and password.';

	/// en: 'Sign in to your ${product} server. Binds to ${name}.'
	String connectToMediaBrowserCardSubtitleScoped({required Object product, required Object name}) => 'Sign in to your ${product} server. Binds to ${name}.';

	/// en: 'Borrow from another profile'
	String get borrowFromAnotherProfile => 'Borrow from another profile';

	/// en: 'Reuse another profile's connection. PIN-protected profiles require a PIN.'
	String get borrowFromAnotherProfileSubtitle => 'Reuse another profile\'s connection. PIN-protected profiles require a PIN.';

	/// en: 'Invalid username or password'
	String get invalidCredentials => 'Invalid username or password';

	/// en: 'The authentication response was not valid JSON'
	String get authResponseNotJson => 'The authentication response was not valid JSON';

	/// en: 'The sign-in response from the server was incomplete'
	String get authResponseIncomplete => 'The sign-in response from the server was incomplete';

	/// en: 'Quick Connect was rejected by the server'
	String get quickConnectRejected => 'Quick Connect was rejected by the server';

	/// en: 'The Quick Connect response was not valid JSON'
	String get quickConnectNotJson => 'The Quick Connect response was not valid JSON';

	/// en: 'The Quick Connect response is missing a code or secret'
	String get quickConnectMissingFields => 'The Quick Connect response is missing a code or secret';

	/// en: 'Quick Connect polling was rejected by the server'
	String get quickConnectPollRejected => 'Quick Connect polling was rejected by the server';

	/// en: 'The server did not respond in time'
	String get serverTimedOut => 'The server did not respond in time';

	/// en: 'The server response was not valid JSON'
	String get responseNotJson => 'The server response was not valid JSON';

	/// en: 'The response is missing an ID or server name — is this a ${product} server?'
	String responseMissingIdentity({required Object product}) => 'The response is missing an ID or server name — is this a ${product} server?';

	/// en: 'Could not reach the server: ${error}'
	String probeFailed({required Object error}) => 'Could not reach the server: ${error}';

	/// en: 'Enter at least one ${product} server URL'
	String enterAtLeastOneUrl({required Object product}) => 'Enter at least one ${product} server URL';

	/// en: 'No reachable ${product} server was found'
	String noReachableServer({required Object product}) => 'No reachable ${product} server was found';

	/// en: 'These URLs point to different ${product} servers'
	String urlsPointToDifferentServers({required Object product}) => 'These URLs point to different ${product} servers';

	/// en: 'This URL does not match the ${product} server'
	String urlDoesNotMatchServer({required Object product}) => 'This URL does not match the ${product} server';

	/// en: 'The server redirected to an unsupported URL'
	String get redirectUnsupported => 'The server redirected to an unsupported URL';

	/// en: 'The server redirected to a different host. Enter the final ${product} URL directly.'
	String redirectDifferentHost({required Object product}) => 'The server redirected to a different host. Enter the final ${product} URL directly.';

	/// en: 'The server redirected from HTTPS to an insecure URL'
	String get redirectInsecure => 'The server redirected from HTTPS to an insecure URL';

	/// en: 'The server redirected to an unsupported URL. Enter the final ${product} URL directly.'
	String redirectUnsupportedEnterFinal({required Object product}) => 'The server redirected to an unsupported URL. Enter the final ${product} URL directly.';
}

// Path: appIcon.names
class Translations$appIcon$names$en {
	Translations$appIcon$names$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Midnight'
	String get midnight => 'Midnight';

	/// en: 'Ember'
	String get ember => 'Ember';

	/// en: 'Paper'
	String get paper => 'Paper';

	/// en: 'OLED'
	String get oled => 'OLED';

	/// en: 'Line'
	String get line => 'Line';

	/// en: 'Ocean'
	String get ocean => 'Ocean';

	/// en: 'Ultraviolet'
	String get ultraviolet => 'Ultraviolet';

	/// en: 'Matcha'
	String get matcha => 'Matcha';

	/// en: 'Sunset'
	String get sunset => 'Sunset';

	/// en: 'Gold'
	String get gold => 'Gold';

	/// en: 'Titanium'
	String get titanium => 'Titanium';

	/// en: 'Glass'
	String get glass => 'Glass';

	/// en: 'CRT'
	String get crt => 'CRT';

	/// en: 'VHS'
	String get vhs => 'VHS';

	/// en: 'Synthwave'
	String get synthwave => 'Synthwave';

	/// en: 'Pixel'
	String get pixel => 'Pixel';

	/// en: 'Neon'
	String get neon => 'Neon';

	/// en: 'Sticker'
	String get sticker => 'Sticker';

	/// en: 'Ticket'
	String get ticket => 'Ticket';

	/// en: 'Pop'
	String get pop => 'Pop';

	/// en: 'Strata'
	String get strata => 'Strata';

	/// en: 'Facet'
	String get facet => 'Facet';

	/// en: 'Tilde'
	String get tilde => 'Tilde';
}

// Path: common.ratingSource
class Translations$common$ratingSource$en {
	Translations$common$ratingSource$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Critics'
	String get critic => 'Critics';

	/// en: 'Audience'
	String get audience => 'Audience';

	/// en: 'IMDb'
	String get imdb => 'IMDb';

	/// en: 'TMDB'
	String get tmdb => 'TMDB';

	/// en: 'Rotten Tomatoes'
	String get rottenTomatoes => 'Rotten Tomatoes';

	/// en: 'Simkl'
	String get simkl => 'Simkl';

	/// en: 'MyAnimeList'
	String get mal => 'MyAnimeList';

	/// en: 'AniList'
	String get anilist => 'AniList';

	/// en: 'Trakt'
	String get trakt => 'Trakt';

	/// en: 'Rotten Tomatoes critics'
	String get rottenTomatoesCritic => 'Rotten Tomatoes critics';

	/// en: 'Rotten Tomatoes audience'
	String get rottenTomatoesAudience => 'Rotten Tomatoes audience';

	/// en: 'Metacritic'
	String get metacritic => 'Metacritic';

	/// en: 'Letterboxd'
	String get letterboxd => 'Letterboxd';
}

// Path: common.mediaKind
class Translations$common$mediaKind$en {
	Translations$common$mediaKind$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Movie'
	String get movie => 'Movie';

	/// en: 'Show'
	String get show => 'Show';

	/// en: 'Season'
	String get season => 'Season';

	/// en: 'Episode'
	String get episode => 'Episode';

	/// en: 'Artist'
	String get artist => 'Artist';

	/// en: 'Album'
	String get album => 'Album';

	/// en: 'Track'
	String get track => 'Track';

	/// en: 'Collection'
	String get collection => 'Collection';

	/// en: 'Playlist'
	String get playlist => 'Playlist';

	/// en: 'Clip'
	String get clip => 'Clip';

	/// en: 'Photo'
	String get photo => 'Photo';

	/// en: 'Folder'
	String get folder => 'Folder';
}

// Path: supporter.errors
class Translations$supporter$errors$en {
	Translations$supporter$errors$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Purchases aren't available. Check that you're signed in to the store and purchases are allowed on this device.'
	String get storeUnavailable => 'Purchases aren\'t available. Check that you\'re signed in to the store and purchases are allowed on this device.';

	/// en: 'The Supporter purchase isn't available in your store right now.'
	String get productNotFound => 'The Supporter purchase isn\'t available in your store right now.';

	/// en: 'Couldn't load the price. Check your connection and try again.'
	String get productQueryFailed => 'Couldn\'t load the price. Check your connection and try again.';

	/// en: 'The purchase didn't go through. Try again.'
	String get purchaseFailed => 'The purchase didn\'t go through. Try again.';

	/// en: 'Couldn't reach the store to restore your purchase. Try again.'
	String get restoreFailed => 'Couldn\'t reach the store to restore your purchase. Try again.';

	/// en: 'No Supporter purchase was found for this store account.'
	String get nothingToRestore => 'No Supporter purchase was found for this store account.';
}

// Path: themeEditor.slots
class Translations$themeEditor$slots$en {
	Translations$themeEditor$slots$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Background'
	String get bg => 'Background';

	/// en: 'Surface'
	String get surface => 'Surface';

	/// en: 'Outline'
	String get outline => 'Outline';

	/// en: 'Text'
	String get text => 'Text';

	/// en: 'Secondary text'
	String get textMuted => 'Secondary text';

	/// en: 'Accent'
	String get accent => 'Accent';
}

// Path: themeEditor.contrast
class Translations$themeEditor$contrast$en {
	Translations$themeEditor$contrast$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Text on background'
	String get textOnBg => 'Text on background';

	/// en: 'Text on surface'
	String get textOnSurface => 'Text on surface';

	/// en: 'Secondary text on background'
	String get textMutedOnBg => 'Secondary text on background';

	/// en: 'Secondary text on surface'
	String get textMutedOnSurface => 'Secondary text on surface';

	/// en: 'Accent on background'
	String get accentOnBg => 'Accent on background';

	/// en: 'Accent on surface'
	String get accentOnSurface => 'Accent on surface';

	/// en: 'Button label on accent'
	String get labelOnAccent => 'Button label on accent';
}

// Path: hotkeys.actions
class Translations$hotkeys$actions$en {
	Translations$hotkeys$actions$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Play/Pause'
	String get playPause => 'Play/Pause';

	/// en: 'Volume Up'
	String get volumeUp => 'Volume Up';

	/// en: 'Volume Down'
	String get volumeDown => 'Volume Down';

	/// en: 'Seek Forward (${seconds}s)'
	String seekForward({required Object seconds}) => 'Seek Forward (${seconds}s)';

	/// en: 'Seek Backward (${seconds}s)'
	String seekBackward({required Object seconds}) => 'Seek Backward (${seconds}s)';

	/// en: 'Toggle Fullscreen'
	String get fullscreenToggle => 'Toggle Fullscreen';

	/// en: 'Toggle Mute'
	String get muteToggle => 'Toggle Mute';

	/// en: 'Toggle Subtitles'
	String get subtitleToggle => 'Toggle Subtitles';

	/// en: 'Next Audio Track'
	String get audioTrackNext => 'Next Audio Track';

	/// en: 'Next Subtitle Track'
	String get subtitleTrackNext => 'Next Subtitle Track';

	/// en: 'Next Chapter'
	String get chapterNext => 'Next Chapter';

	/// en: 'Previous Chapter'
	String get chapterPrevious => 'Previous Chapter';

	/// en: 'Next Episode'
	String get episodeNext => 'Next Episode';

	/// en: 'Previous Episode'
	String get episodePrevious => 'Previous Episode';

	/// en: 'Increase Speed'
	String get speedIncrease => 'Increase Speed';

	/// en: 'Decrease Speed'
	String get speedDecrease => 'Decrease Speed';

	/// en: 'Reset Speed'
	String get speedReset => 'Reset Speed';

	/// en: 'Zoom In'
	String get zoomIn => 'Zoom In';

	/// en: 'Zoom Out'
	String get zoomOut => 'Zoom Out';

	/// en: 'Reset Zoom'
	String get zoomReset => 'Reset Zoom';

	/// en: 'Seek to Next Subtitle'
	String get subSeekNext => 'Seek to Next Subtitle';

	/// en: 'Seek to Previous Subtitle'
	String get subSeekPrev => 'Seek to Previous Subtitle';

	/// en: 'Toggle Shaders'
	String get shaderToggle => 'Toggle Shaders';

	/// en: 'Skip Intro/Credits'
	String get skipMarker => 'Skip Intro/Credits';

	/// en: 'Take Screenshot'
	String get screenshot => 'Take Screenshot';
}

// Path: videoControls.pipErrors
class Translations$videoControls$pipErrors$en {
	Translations$videoControls$pipErrors$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Requires Android 8.0 or newer'
	String get androidVersion => 'Requires Android 8.0 or newer';

	/// en: 'Requires iOS 15.0 or newer'
	String get iosVersion => 'Requires iOS 15.0 or newer';

	/// en: 'Picture-in-picture is disabled. Enable it in system settings.'
	String get permissionDisabled => 'Picture-in-picture is disabled. Enable it in system settings.';

	/// en: 'Device doesn't support picture-in-picture mode'
	String get notSupported => 'Device doesn\'t support picture-in-picture mode';

	/// en: 'Failed to switch video output for picture-in-picture'
	String get voSwitchFailed => 'Failed to switch video output for picture-in-picture';

	/// en: 'Picture-in-picture failed to start'
	String get failed => 'Picture-in-picture failed to start';

	/// en: 'Picture-in-picture could not be prepared'
	String get prepareFailed => 'Picture-in-picture could not be prepared';

	/// en: 'An error occurred: ${error}'
	String unknown({required Object error}) => 'An error occurred: ${error}';
}

// Path: accountPreferences.groups
class Translations$accountPreferences$groups$en {
	Translations$accountPreferences$groups$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Audio & subtitles'
	String get audioAndSubtitles => 'Audio & subtitles';

	/// en: 'Library'
	String get libraryDisplay => 'Library';

	/// en: 'Personal media'
	String get personalMedia => 'Personal media';
}

// Path: accountPreferences.subtitleModes
class Translations$accountPreferences$subtitleModes$en {
	Translations$accountPreferences$subtitleModes$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Manually selected'
	String get none => 'Manually selected';

	/// en: 'Never turn subtitles on by itself.'
	String get noneDescription => 'Never turn subtitles on by itself.';

	/// en: 'Follow the track flags'
	String get defaultMode => 'Follow the track flags';

	/// en: 'Use the default and forced flags stored on each subtitle track.'
	String get defaultModeDescription => 'Use the default and forced flags stored on each subtitle track.';

	/// en: 'Always enabled'
	String get always => 'Always enabled';

	/// en: 'Turn on a subtitle track in the preferred language whenever one exists.'
	String get alwaysDescription => 'Turn on a subtitle track in the preferred language whenever one exists.';

	/// en: 'Only forced subtitles'
	String get onlyForced => 'Only forced subtitles';

	/// en: 'Load only the tracks marked as forced.'
	String get onlyForcedDescription => 'Load only the tracks marked as forced.';

	/// en: 'Shown with foreign audio'
	String get smart => 'Shown with foreign audio';

	/// en: 'Turn subtitles on only when the audio is in another language.'
	String get smartDescription => 'Turn subtitles on only when the audio is in another language.';
}

// Path: accountPreferences.subtitleAccessibilityOptions
class Translations$accountPreferences$subtitleAccessibilityOptions$en {
	Translations$accountPreferences$subtitleAccessibilityOptions$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Prefer non-SDH subtitles'
	String get preferNonSdh => 'Prefer non-SDH subtitles';

	/// en: 'Prefer SDH subtitles'
	String get preferSdh => 'Prefer SDH subtitles';

	/// en: 'Only SDH subtitles'
	String get onlySdh => 'Only SDH subtitles';

	/// en: 'Only non-SDH subtitles'
	String get onlyNonSdh => 'Only non-SDH subtitles';
}

// Path: accountPreferences.forcedSubtitleOptions
class Translations$accountPreferences$forcedSubtitleOptions$en {
	Translations$accountPreferences$forcedSubtitleOptions$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Prefer non-forced subtitles'
	String get preferNonForced => 'Prefer non-forced subtitles';

	/// en: 'Prefer forced subtitles'
	String get preferForced => 'Prefer forced subtitles';

	/// en: 'Only forced subtitles'
	String get onlyForced => 'Only forced subtitles';

	/// en: 'Only non-forced subtitles'
	String get onlyNonForced => 'Only non-forced subtitles';
}

// Path: accountPreferences.watchedIndicatorOptions
class Translations$accountPreferences$watchedIndicatorOptions$en {
	Translations$accountPreferences$watchedIndicatorOptions$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Never'
	String get none => 'Never';

	/// en: 'Movies and TV shows'
	String get moviesAndShows => 'Movies and TV shows';

	/// en: 'Movies only'
	String get movies => 'Movies only';

	/// en: 'TV shows only'
	String get shows => 'TV shows only';
}

// Path: accountPreferences.mediaReviewsOptions
class Translations$accountPreferences$mediaReviewsOptions$en {
	Translations$accountPreferences$mediaReviewsOptions$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Users and critics'
	String get usersAndCritics => 'Users and critics';

	/// en: 'Users only'
	String get usersOnly => 'Users only';

	/// en: 'Critics only'
	String get criticsOnly => 'Critics only';

	/// en: 'Hidden'
	String get nobody => 'Hidden';
}

// Path: discover.person
class Translations$discover$person$en {
	Translations$discover$person$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Born'
	String get born => 'Born';

	/// en: 'Died'
	String get died => 'Died';

	/// en: 'Birthplace'
	String get birthplace => 'Birthplace';

	/// en: '${date} (age ${age})'
	String dateWithAge({required Object date, required Object age}) => '${date} (age ${age})';

	/// en: '${date} (aged ${age})'
	String dateWithAgeAtDeath({required Object date, required Object age}) => '${date} (aged ${age})';
}

// Path: libraries.tabs
class Translations$libraries$tabs$en {
	Translations$libraries$tabs$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Recommended'
	String get recommended => 'Recommended';

	/// en: 'Browse'
	String get browse => 'Browse';

	/// en: 'Collections'
	String get collections => 'Collections';

	/// en: 'Playlists'
	String get playlists => 'Playlists';
}

// Path: libraries.groupings
class Translations$libraries$groupings$en {
	Translations$libraries$groupings$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Grouping'
	String get title => 'Grouping';

	/// en: 'All'
	String get all => 'All';

	/// en: 'Movies'
	String get movies => 'Movies';

	/// en: 'TV Shows'
	String get shows => 'TV Shows';

	/// en: 'Seasons'
	String get seasons => 'Seasons';

	/// en: 'Episodes'
	String get episodes => 'Episodes';

	/// en: 'Artists'
	String get artists => 'Artists';

	/// en: 'Albums'
	String get albums => 'Albums';

	/// en: 'Tracks'
	String get tracks => 'Tracks';

	/// en: 'Folders'
	String get folders => 'Folders';
}

// Path: libraries.filterCategories
class Translations$libraries$filterCategories$en {
	Translations$libraries$filterCategories$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Genre'
	String get genre => 'Genre';

	/// en: 'Year'
	String get year => 'Year';

	/// en: 'Content Rating'
	String get contentRating => 'Content Rating';

	/// en: 'Tag'
	String get tag => 'Tag';

	/// en: 'Unwatched'
	String get unwatched => 'Unwatched';

	/// en: 'Unplayed'
	String get unplayed => 'Unplayed';

	/// en: 'Favorites'
	String get favorites => 'Favorites';

	/// en: 'File Path'
	String get filePath => 'File Path';
}

// Path: libraries.sortLabels
class Translations$libraries$sortLabels$en {
	Translations$libraries$sortLabels$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Title'
	String get title => 'Title';

	/// en: 'Date Added'
	String get dateAdded => 'Date Added';

	/// en: 'Release Date'
	String get releaseDate => 'Release Date';

	/// en: 'Rating'
	String get rating => 'Rating';

	/// en: 'Community Rating'
	String get communityRating => 'Community Rating';

	/// en: 'Critic Rating'
	String get criticRating => 'Critic Rating';

	/// en: 'User Rating'
	String get userRating => 'User Rating';

	/// en: 'Date Played'
	String get datePlayed => 'Date Played';

	/// en: 'Play Count'
	String get playCount => 'Play Count';

	/// en: 'Production Year'
	String get productionYear => 'Production Year';

	/// en: 'Runtime'
	String get runtime => 'Runtime';

	/// en: 'Official Rating'
	String get officialRating => 'Official Rating';

	/// en: 'Premiere Date'
	String get premiereDate => 'Premiere Date';

	/// en: 'Start Date'
	String get startDate => 'Start Date';

	/// en: 'Air Time'
	String get airTime => 'Air Time';

	/// en: 'Studio'
	String get studio => 'Studio';

	/// en: 'Random'
	String get random => 'Random';

	/// en: 'Date Shared'
	String get dateShared => 'Date Shared';

	/// en: 'Latest Episode Air Date'
	String get latestEpisodeAirDate => 'Latest Episode Air Date';

	/// en: 'Last Episode Date Added'
	String get lastEpisodeDateAdded => 'Last Episode Date Added';

	/// en: 'Date Downloaded'
	String get dateDownloaded => 'Date Downloaded';

	/// en: 'Size'
	String get size => 'Size';

	/// en: 'Library'
	String get library => 'Library';
}

// Path: libraries.advancedFilters
class Translations$libraries$advancedFilters$en {
	Translations$libraries$advancedFilters$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Include'
	String get include => 'Include';

	/// en: 'Exclude'
	String get exclude => 'Exclude';

	/// en: 'Any'
	String get any => 'Any';

	/// en: 'Yes'
	String get yes => 'Yes';

	/// en: 'No'
	String get no => 'No';

	/// en: 'Not ${value}'
	String not({required Object value}) => 'Not ${value}';

	/// en: '${count} selected'
	String valueCount({required Object count}) => '${count} selected';

	/// en: '${count} excluded'
	String valueCountExcluded({required Object count}) => '${count} excluded';

	/// en: 'Search values'
	String get searchValues => 'Search values';

	/// en: 'No values'
	String get noValues => 'No values';

	/// en: 'Contains'
	String get matchContains => 'Contains';

	/// en: 'Does not contain'
	String get matchNotContains => 'Does not contain';

	/// en: 'Is'
	String get matchIs => 'Is';

	/// en: 'Is not'
	String get matchIsNot => 'Is not';

	/// en: 'Begins with'
	String get matchBeginsWith => 'Begins with';

	/// en: 'Ends with'
	String get matchEndsWith => 'Ends with';

	/// en: 'Type to match'
	String get textHint => 'Type to match';

	/// en: 'From'
	String get from => 'From';

	/// en: 'To'
	String get to => 'To';

	/// en: '${from} to ${to}'
	String range({required Object from, required Object to}) => '${from} to ${to}';

	/// en: '${value} and up'
	String atLeast({required Object value}) => '${value} and up';

	/// en: 'Up to ${value}'
	String atMost({required Object value}) => 'Up to ${value}';

	/// en: 'Last ${count} days'
	String dateLastDays({required Object count}) => 'Last ${count} days';

	/// en: 'Past year'
	String get dateLastYear => 'Past year';

	/// en: 'Older than ${count} days'
	String dateOlderThanDays({required Object count}) => 'Older than ${count} days';

	/// en: 'Older than a year'
	String get dateOlderThanYear => 'Older than a year';
}

// Path: explore.rows
class Translations$explore$rows$en {
	Translations$explore$rows$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Watchlist'
	String get watchlist => 'Watchlist';

	/// en: 'Recommended Movies'
	String get recommendedMovies => 'Recommended Movies';

	/// en: 'Recommended Shows'
	String get recommendedShows => 'Recommended Shows';

	/// en: 'Trending Movies'
	String get trendingMovies => 'Trending Movies';

	/// en: 'Trending Shows'
	String get trendingShows => 'Trending Shows';

	/// en: 'Popular Movies'
	String get popularMovies => 'Popular Movies';

	/// en: 'Popular Shows'
	String get popularShows => 'Popular Shows';

	/// en: 'Trending Anime'
	String get trendingAnime => 'Trending Anime';

	/// en: 'Suggested Anime'
	String get suggestedAnime => 'Suggested Anime';

	/// en: 'Top Airing Anime'
	String get airingAnime => 'Top Airing Anime';

	/// en: 'Most Popular Anime'
	String get popularAnime => 'Most Popular Anime';

	/// en: 'Trending'
	String get trending => 'Trending';

	/// en: 'Upcoming Movies'
	String get upcomingMovies => 'Upcoming Movies';

	/// en: 'Upcoming Shows'
	String get upcomingShows => 'Upcoming Shows';
}

// Path: explore.status
class Translations$explore$status$en {
	Translations$explore$status$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Airing'
	String get airing => 'Airing';

	/// en: 'Ended'
	String get ended => 'Ended';

	/// en: 'Canceled'
	String get canceled => 'Canceled';

	/// en: 'Upcoming'
	String get upcoming => 'Upcoming';
}

// Path: explore.badge
class Translations$explore$badge$en {
	Translations$explore$badge$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: '#${n} popular'
	String rankPopular({required Object n}) => '#${n} popular';

	/// en: '#${n} airing'
	String rankAiring({required Object n}) => '#${n} airing';

	/// en: '#${n} rated'
	String rankRated({required Object n}) => '#${n} rated';

	/// en: '#${n} trending'
	String rankTrending({required Object n}) => '#${n} trending';

	/// en: '#${n} in ${season}'
	String rankSeasonal({required Object n, required Object season}) => '#${n} in ${season}';

	/// en: '${n} watching'
	String watchingNow({required Object n}) => '${n} watching';

	/// en: 'Available'
	String get available => 'Available';

	/// en: 'Partly available'
	String get partiallyAvailable => 'Partly available';

	/// en: '4K available'
	String get availableIn4k => '4K available';

	/// en: 'Requested'
	String get requested => 'Requested';

	/// en: 'Pending approval'
	String get pendingApproval => 'Pending approval';

	/// en: 'Processing'
	String get processing => 'Processing';

	/// en: 'Declined'
	String get declined => 'Declined';

	/// en: 'Request failed'
	String get requestFailed => 'Request failed';

	/// en: '4K requested'
	String get requested4k => '4K requested';

	/// en: '${available}/${total} seasons'
	String seasonsAvailable({required Object available, required Object total}) => '${available}/${total} seasons';

	/// en: 'Ep ${episode} in ${duration}'
	String nextEpisodeIn({required Object episode, required Object duration}) => 'Ep ${episode} in ${duration}';

	/// en: 'Next in ${duration}'
	String nextAiringIn({required Object duration}) => 'Next in ${duration}';

	/// en: '${n} eps'
	String episodesShort({required Object n}) => '${n} eps';

	/// en: '${n} min/ep'
	String minutesPerEpisode({required Object n}) => '${n} min/ep';

	/// en: '18+'
	String get adult => '18+';
}

// Path: explore.stats
class Translations$explore$stats$en {
	Translations$explore$stats$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: '${n} listed'
	String listed({required Object n}) => '${n} listed';

	/// en: '${n} watched today'
	String viewersDay({required Object n}) => '${n} watched today';

	/// en: '${n} watched this week'
	String viewersWeek({required Object n}) => '${n} watched this week';

	/// en: '${n} watched this month'
	String viewersMonth({required Object n}) => '${n} watched this month';

	/// en: '${n} watched this year'
	String viewersYear({required Object n}) => '${n} watched this year';

	/// en: '${n} viewers'
	String viewersAllTime({required Object n}) => '${n} viewers';

	/// en: '${n} planning to watch'
	String planning({required Object n}) => '${n} planning to watch';

	/// en: '${n} favorites'
	String favorited({required Object n}) => '${n} favorites';

	/// en: '${percent} dropped it'
	String dropRate({required Object percent}) => '${percent} dropped it';

	/// en: '(one) {${n} comment} (other) {${n} comments}'
	String comments({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		one: '${n} comment',
		other: '${n} comments',
	);

	/// en: '${n} votes'
	String votes({required Object n}) => '${n} votes';

	/// en: '${n} watching it'
	String watching({required Object n}) => '${n} watching it';

	/// en: '${n} completed'
	String completed({required Object n}) => '${n} completed';

	/// en: '${n} on hold'
	String onHold({required Object n}) => '${n} on hold';

	/// en: '${n} dropped'
	String dropped({required Object n}) => '${n} dropped';
}

// Path: explore.season
class Translations$explore$season$en {
	Translations$explore$season$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Winter'
	String get winter => 'Winter';

	/// en: 'Spring'
	String get spring => 'Spring';

	/// en: 'Summer'
	String get summer => 'Summer';

	/// en: 'Fall'
	String get fall => 'Fall';

	/// en: '${season} ${year}'
	String withYear({required Object season, required Object year}) => '${season} ${year}';
}

// Path: explore.format
class Translations$explore$format$en {
	Translations$explore$format$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'TV'
	String get tv => 'TV';

	/// en: 'TV Short'
	String get tvShort => 'TV Short';

	/// en: 'Movie'
	String get movie => 'Movie';

	/// en: 'Special'
	String get special => 'Special';

	/// en: 'OVA'
	String get ova => 'OVA';

	/// en: 'ONA'
	String get ona => 'ONA';

	/// en: 'Music'
	String get music => 'Music';

	/// en: 'Other'
	String get other => 'Other';
}

// Path: explore.sourceMaterial
class Translations$explore$sourceMaterial$en {
	Translations$explore$sourceMaterial$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Original'
	String get original => 'Original';

	/// en: 'Manga'
	String get manga => 'Manga';

	/// en: 'Light novel'
	String get lightNovel => 'Light novel';

	/// en: 'Novel'
	String get novel => 'Novel';

	/// en: 'Visual novel'
	String get visualNovel => 'Visual novel';

	/// en: 'Game'
	String get game => 'Game';

	/// en: 'Web comic'
	String get webComic => 'Web comic';

	/// en: 'Music'
	String get musicRelease => 'Music';

	/// en: 'Other'
	String get otherMedia => 'Other';
}

// Path: explore.creditRole
class Translations$explore$creditRole$en {
	Translations$explore$creditRole$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Actor'
	String get actor => 'Actor';

	/// en: 'Director'
	String get director => 'Director';

	/// en: 'Writer'
	String get writer => 'Writer';

	/// en: 'Producer'
	String get producer => 'Producer';

	/// en: 'Creator'
	String get creator => 'Creator';

	/// en: 'Composer'
	String get composer => 'Composer';
}

// Path: explore.relation
class Translations$explore$relation$en {
	Translations$explore$relation$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Prequel'
	String get prequel => 'Prequel';

	/// en: 'Sequel'
	String get sequel => 'Sequel';

	/// en: 'Side story'
	String get sideStory => 'Side story';

	/// en: 'Spin-off'
	String get spinOff => 'Spin-off';

	/// en: 'Alternative version'
	String get alternativeVersion => 'Alternative version';

	/// en: 'Summary'
	String get summary => 'Summary';

	/// en: 'Parent story'
	String get parentStory => 'Parent story';

	/// en: 'Adaptation'
	String get adaptation => 'Adaptation';

	/// en: 'Related'
	String get other => 'Related';
}

// Path: explore.detail
class Translations$explore$detail$en {
	Translations$explore$detail$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Original title'
	String get originalTitle => 'Original title';

	/// en: 'Also known as'
	String get alsoKnownAs => 'Also known as';

	/// en: 'Studios'
	String get studios => 'Studios';

	/// en: 'Country'
	String get country => 'Country';

	/// en: 'Language'
	String get language => 'Language';

	/// en: 'Released'
	String get released => 'Released';

	/// en: 'On disc'
	String get physicalRelease => 'On disc';

	/// en: 'Ended'
	String get ended => 'Ended';

	/// en: 'Added ${date}'
	String addedOn({required Object date}) => 'Added ${date}';

	/// en: 'Your rating'
	String get yourRating => 'Your rating';

	/// en: 'Budget'
	String get budget => 'Budget';

	/// en: 'Box office'
	String get revenue => 'Box office';

	/// en: 'Age guidance'
	String get contentAdvisory => 'Age guidance';

	/// en: 'Tags'
	String get tags => 'Tags';

	/// en: 'Show spoiler tags'
	String get revealSpoilerTags => 'Show spoiler tags';

	/// en: 'Links'
	String get links => 'Links';

	/// en: 'Watch on'
	String get watchOn => 'Watch on';

	/// en: 'Watch trailer'
	String get watchTrailer => 'Watch trailer';

	/// en: 'Open on ${site}'
	String openOn({required Object site}) => 'Open on ${site}';

	/// en: 'Crew'
	String get crew => 'Crew';

	/// en: 'Ratings'
	String get ratings => 'Ratings';

	/// en: 'Schedule'
	String get schedule => 'Schedule';

	/// en: '(one) {Recommended by ${n} user} (other) {Recommended by ${n} users}'
	String recommendedByUsers({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		one: 'Recommended by ${n} user',
		other: 'Recommended by ${n} users',
	);

	/// en: 'Recommended by ${who}'
	String recommendedBy({required Object who}) => 'Recommended by ${who}';

	/// en: 'Favorited by ${who}'
	String favoritedBy({required Object who}) => 'Favorited by ${who}';

	/// en: '${n} not aired yet'
	String unairedEpisodes({required Object n}) => '${n} not aired yet';

	/// en: 'Recommended by ${percent} of viewers'
	String recommendedByPercent({required Object percent}) => 'Recommended by ${percent} of viewers';

	/// en: 'Related titles'
	String get relatedTitles => 'Related titles';

	/// en: 'Background'
	String get background => 'Background';
}

// Path: liveTv.recordSettings
class Translations$liveTv$recordSettings$en {
	Translations$liveTv$recordSettings$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Start early (seconds)'
	String get startEarly => 'Start early (seconds)';

	/// en: 'End late (seconds)'
	String get endLate => 'End late (seconds)';

	/// en: 'Only new episodes'
	String get newOnly => 'Only new episodes';

	/// en: 'Record on any channel'
	String get anyChannel => 'Record on any channel';

	/// en: 'Record at any time'
	String get anyTime => 'Record at any time';

	/// en: 'Skip episodes already in the library'
	String get skipInLibrary => 'Skip episodes already in the library';

	/// en: 'Episodes to keep'
	String get keepUpTo => 'Episodes to keep';

	/// en: '0 keeps every episode'
	String get keepUpToHint => '0 keeps every episode';
}

// Path: music.discography
class Translations$music$discography$en {
	Translations$music$discography$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Singles & EPs'
	String get singlesAndEps => 'Singles & EPs';

	/// en: 'Live'
	String get live => 'Live';

	/// en: 'Compilations'
	String get compilations => 'Compilations';
}

// Path: watchTogether.notices
class Translations$watchTogether$notices$en {
	Translations$watchTogether$notices$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: '${name} pressed play'
	String pressedPlay({required Object name}) => '${name} pressed play';

	/// en: 'Playback started'
	String get playbackStarted => 'Playback started';

	/// en: '${name} paused'
	String paused({required Object name}) => '${name} paused';

	/// en: 'Playback paused'
	String get playbackPaused => 'Playback paused';

	/// en: '${name} jumped to ${position}'
	String jumpedTo({required Object name, required Object position}) => '${name} jumped to ${position}';

	/// en: 'Jumped to ${position}'
	String roomJumpedTo({required Object position}) => 'Jumped to ${position}';

	/// en: '${name} set the speed to ${speed}'
	String changedSpeed({required Object name, required Object speed}) => '${name} set the speed to ${speed}';

	/// en: 'Speed set to ${speed}'
	String speedChanged({required Object speed}) => 'Speed set to ${speed}';

	/// en: '${name} started ${title}'
	String startedMedia({required Object name, required Object title}) => '${name} started ${title}';

	/// en: 'Now playing ${title}'
	String mediaStarted({required Object title}) => 'Now playing ${title}';

	/// en: '${name} stopped the video'
	String stoppedMedia({required Object name}) => '${name} stopped the video';

	/// en: 'The video stopped'
	String get mediaStopped => 'The video stopped';

	/// en: 'Waiting for ${name}...'
	String waitingFor({required Object name}) => 'Waiting for ${name}...';

	/// en: 'Waiting for someone to catch up...'
	String get waitingForSomeone => 'Waiting for someone to catch up...';

	/// en: 'Finished'
	String get finished => 'Finished';

	/// en: '${name} is now the host'
	String hostChangedTo({required Object name}) => '${name} is now the host';

	/// en: 'You are now the host'
	String get youAreNowHost => 'You are now the host';

	/// en: '${name} joined'
	String joined({required Object name}) => '${name} joined';

	/// en: '${name} left'
	String left({required Object name}) => '${name} left';

	/// en: 'Only the host can control playback'
	String get controlRefused => 'Only the host can control playback';

	/// en: 'Some servers couldn't be searched for the room's video'
	String get searchFailed => 'Some servers couldn\'t be searched for the room\'s video';

	/// en: 'Press play to start'
	String get playBlocked => 'Press play to start';

	/// en: 'Couldn't share this video with the room'
	String get shareFailed => 'Couldn\'t share this video with the room';

	/// en: 'Downloaded videos aren't shared with the room'
	String get notShared => 'Downloaded videos aren\'t shared with the room';

	/// en: 'Couldn't open the room's video'
	String get openFailed => 'Couldn\'t open the room\'s video';
}

// Path: watchTogether.ended
class Translations$watchTogether$ended$en {
	Translations$watchTogether$ended$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'The host ended the room'
	String get ended => 'The host ended the room';

	/// en: 'You were removed from the room'
	String get kicked => 'You were removed from the room';

	/// en: 'The room expired'
	String get expired => 'The room expired';

	/// en: 'You joined this room on another device'
	String get replaced => 'You joined this room on another device';

	/// en: 'Lost the connection to the room'
	String get lost => 'Lost the connection to the room';
}

// Path: watchTogether.errors
class Translations$watchTogether$errors$en {
	Translations$watchTogether$errors$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'That isn't a room code. Codes have 6 letters and digits, without 0, 1, I, L or O.'
	String get invalidCode => 'That isn\'t a room code. Codes have 6 letters and digits, without 0, 1, I, L or O.';

	/// en: 'No room has that code. It may have ended.'
	String get roomNotFound => 'No room has that code. It may have ended.';

	/// en: 'That room is full.'
	String get roomFull => 'That room is full.';

	/// en: 'The host locked that room.'
	String get roomLocked => 'The host locked that room.';

	/// en: 'Watch Together is busy right now. Try again later.'
	String get relayFull => 'Watch Together is busy right now. Try again later.';

	/// en: 'Couldn't reach the Watch Together relay. Check your connection.'
	String get unreachable => 'Couldn\'t reach the Watch Together relay. Check your connection.';

	/// en: 'Too many attempts. Wait a moment and try again.'
	String get rateLimited => 'Too many attempts. Wait a moment and try again.';

	/// en: 'This version of Luroka can't use the relay. Update the app.'
	String get clientBlocked => 'This version of Luroka can\'t use the relay. Update the app.';

	/// en: 'Only the host can do that.'
	String get forbidden => 'Only the host can do that.';

	/// en: 'You're not in a room.'
	String get notInRoom => 'You\'re not in a room.';

	/// en: 'You're already in a room.'
	String get alreadyInRoom => 'You\'re already in a room.';

	/// en: 'Couldn't rejoin the room.'
	String get resumeFailed => 'Couldn\'t rejoin the room.';

	/// en: 'The relay doesn't support this.'
	String get unsupported => 'The relay doesn\'t support this.';

	/// en: 'Something went wrong. Try again.'
	String get generic => 'Something went wrong. Try again.';
}

// Path: downloads.backgroundWarning
class Translations$downloads$backgroundWarning$en {
	Translations$downloads$backgroundWarning$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Downloads will stop when you leave the app'
	String get bannerBlocked => 'Downloads will stop when you leave the app';

	/// en: 'Background downloads may be limited'
	String get bannerDegraded => 'Background downloads may be limited';

	/// en: 'Details'
	String get bannerAction => 'Details';

	/// en: 'Background downloads are blocked'
	String get sheetTitle => 'Background downloads are blocked';

	/// en: 'Background downloads may be limited'
	String get sheetTitleDegraded => 'Background downloads may be limited';

	/// en: 'Android is preventing Luroka from downloading reliably in the background.'
	String get sheetIntro => 'Android is preventing Luroka from downloading reliably in the background.';

	/// en: 'Your device is limiting when Luroka can download in the background.'
	String get sheetIntroDegraded => 'Your device is limiting when Luroka can download in the background.';

	/// en: 'Luroka's background usage is restricted. Set its battery or background usage to "Unrestricted".'
	String get reasonBackgroundRestricted => 'Luroka\'s background usage is restricted. Set its battery or background usage to "Unrestricted".';

	/// en: 'Android has put Luroka in a restricted standby state. Set its battery usage to "Unrestricted".'
	String get reasonStandbyRestricted => 'Android has put Luroka in a restricted standby state. Set its battery usage to "Unrestricted".';

	/// en: 'Download notifications are turned off, so progress and controls may be unavailable.'
	String get reasonDownloadChannelBlocked => 'Download notifications are turned off, so progress and controls may be unavailable.';

	/// en: 'Notifications are turned off. On Android 13 or newer, they are required for long background downloads.'
	String get reasonNotificationsDisabled => 'Notifications are turned off. On Android 13 or newer, they are required for long background downloads.';

	/// en: 'Data Saver is on, which blocks background downloads on mobile data. Downloads should still run on Wi-Fi.'
	String get reasonDataSaver => 'Data Saver is on, which blocks background downloads on mobile data. Downloads should still run on Wi-Fi.';

	/// en: 'Downloads repeatedly stopped while Luroka was in the background. Check Luroka's battery or background usage settings.'
	String get reasonOemUnknown => 'Downloads repeatedly stopped while Luroka was in the background. Check Luroka\'s battery or background usage settings.';

	/// en: 'Open settings'
	String get openSettings => 'Open settings';

	/// en: 'Device-specific help'
	String get stillNotWorking => 'Device-specific help';

	/// en: 'See steps for your device, or send a log from Settings › View Logs if the issue continues.'
	String get stillNotWorkingDescription => 'See steps for your device, or send a log from Settings › View Logs if the issue continues.';

	/// en: 'Downloads may not finish'
	String get dialogTitle => 'Downloads may not finish';

	/// en: 'Download anyway'
	String get dialogDownloadAnyway => 'Download anyway';

	/// en: 'Fix this first'
	String get dialogFixFirst => 'Fix this first';

	/// en: 'Background downloads'
	String get statusTile => 'Background downloads';

	/// en: 'Allowed to run in the background'
	String get statusOk => 'Allowed to run in the background';

	/// en: 'Blocked by system settings'
	String get statusBlocked => 'Blocked by system settings';

	/// en: 'Limited by system settings'
	String get statusDegraded => 'Limited by system settings';

	/// en: 'Not checked yet'
	String get statusUnknown => 'Not checked yet';

	/// en: 'Couldn't open system settings on this device'
	String get settingsUnavailable => 'Couldn\'t open system settings on this device';

	/// en: 'Couldn't open dontkillmyapp.com on this device'
	String get linkUnavailable => 'Couldn\'t open dontkillmyapp.com on this device';
}

// Path: downloads.groupings
class Translations$downloads$groupings$en {
	Translations$downloads$groupings$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Library'
	String get library => 'Library';

	/// en: 'Collections'
	String get collections => 'Collections';
}

// Path: companionRemote.session
class Translations$companionRemote$session$en {
	Translations$companionRemote$session$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Starting remote server...'
	String get startingServer => 'Starting remote server...';

	/// en: 'Host Address'
	String get hostAddress => 'Host Address';

	/// en: 'Connected'
	String get connected => 'Connected';

	/// en: 'Remote server active'
	String get serverRunning => 'Remote server active';

	/// en: 'Remote server stopped'
	String get serverStopped => 'Remote server stopped';

	/// en: 'Mobile devices on your network can connect to this app'
	String get serverRunningDescription => 'Mobile devices on your network can connect to this app';

	/// en: 'Start the server to allow mobile devices to connect'
	String get serverStoppedDescription => 'Start the server to allow mobile devices to connect';

	/// en: 'Use your mobile device to control this app'
	String get usePhoneToControl => 'Use your mobile device to control this app';

	/// en: 'Start Server'
	String get startServer => 'Start Server';

	/// en: 'Stop Server'
	String get stopServer => 'Stop Server';

	/// en: 'Minimize'
	String get minimize => 'Minimize';

	/// en: 'Manual connection address:'
	String get manualAddressHint => 'Manual connection address:';
}

// Path: companionRemote.pairing
class Translations$companionRemote$pairing$en {
	Translations$companionRemote$pairing$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Luroka devices with the same Plex account appear here'
	String get discoveryDescription => 'Luroka devices with the same Plex account appear here';

	/// en: '192.168.1.100:48632'
	String get hostAddressHint => '192.168.1.100:48632';

	/// en: 'Connecting...'
	String get connecting => 'Connecting...';

	/// en: 'Looking for devices...'
	String get searchingForDevices => 'Looking for devices...';

	/// en: 'No devices found on your network'
	String get noDevicesFound => 'No devices found on your network';

	/// en: 'Open Luroka on desktop and use the same Wi-Fi'
	String get noDevicesHint => 'Open Luroka on desktop and use the same Wi-Fi';

	/// en: 'Available Devices'
	String get availableDevices => 'Available Devices';

	/// en: 'Manual Connection'
	String get manualConnection => 'Manual Connection';

	/// en: 'Couldn't start secure connection. Sign in to Plex first.'
	String get cryptoInitFailed => 'Couldn\'t start secure connection. Sign in to Plex first.';

	/// en: 'Please enter host address'
	String get validationHostRequired => 'Please enter host address';

	/// en: 'Format must be IP:port (e.g., 192.168.1.100:48632)'
	String get validationHostFormat => 'Format must be IP:port (e.g., 192.168.1.100:48632)';

	/// en: 'Connection timed out. Use the same network on both devices.'
	String get connectionTimedOut => 'Connection timed out. Use the same network on both devices.';

	/// en: 'Device not found. Make sure Luroka is running on the host.'
	String get sessionNotFound => 'Device not found. Make sure Luroka is running on the host.';

	/// en: 'Authentication failed. Both devices need the same Plex account.'
	String get authFailed => 'Authentication failed. Both devices need the same Plex account.';

	/// en: 'Failed to connect: ${error}'
	String failedToConnect({required Object error}) => 'Failed to connect: ${error}';
}

// Path: companionRemote.remote
class Translations$companionRemote$remote$en {
	Translations$companionRemote$remote$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Do you want to disconnect from the remote session?'
	String get disconnectConfirm => 'Do you want to disconnect from the remote session?';

	/// en: 'Reconnecting...'
	String get reconnecting => 'Reconnecting...';

	/// en: 'Attempt ${current} of 5'
	String attemptOf({required Object current}) => 'Attempt ${current} of 5';

	/// en: 'Retry Now'
	String get retryNow => 'Retry Now';

	/// en: 'Remote'
	String get tabRemote => 'Remote';

	/// en: 'Play'
	String get tabPlay => 'Play';

	/// en: 'More'
	String get tabMore => 'More';

	/// en: 'Menu'
	String get menu => 'Menu';

	/// en: 'Tab Navigation'
	String get tabNavigation => 'Tab Navigation';

	/// en: 'Discover'
	String get tabDiscover => 'Discover';

	/// en: 'Libraries'
	String get tabLibraries => 'Libraries';

	/// en: 'Search'
	String get tabSearch => 'Search';

	/// en: 'Downloads'
	String get tabDownloads => 'Downloads';

	/// en: 'Settings'
	String get tabSettings => 'Settings';

	/// en: 'Previous'
	String get previous => 'Previous';

	/// en: 'Play/Pause'
	String get playPause => 'Play/Pause';

	/// en: 'Next'
	String get next => 'Next';

	/// en: 'Seek Back'
	String get seekBack => 'Seek Back';

	/// en: 'Stop'
	String get stop => 'Stop';

	/// en: 'Seek Fwd'
	String get seekForward => 'Seek Fwd';

	/// en: 'Volume'
	String get volume => 'Volume';

	/// en: 'Down'
	String get volumeDown => 'Down';

	/// en: 'Up'
	String get volumeUp => 'Up';

	/// en: 'Fullscreen'
	String get fullscreen => 'Fullscreen';

	/// en: 'Subtitles'
	String get subtitles => 'Subtitles';

	/// en: 'Audio'
	String get audio => 'Audio';

	/// en: 'Search on desktop...'
	String get searchHint => 'Search on desktop...';
}

// Path: companionRemote.errors
class Translations$companionRemote$errors$en {
	Translations$companionRemote$errors$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'No network interface found'
	String get noNetworkInterface => 'No network interface found';

	/// en: 'Authentication failed'
	String get authenticationFailed => 'Authentication failed';

	/// en: 'Failed to start remote server: ${error}'
	String serverStartFailed({required Object error}) => 'Failed to start remote server: ${error}';

	/// en: 'Failed to send remote command: ${error}'
	String commandFailed({required Object error}) => 'Failed to send remote command: ${error}';

	/// en: 'Timed out joining session'
	String get joinTimedOut => 'Timed out joining session';

	/// en: 'Failed to connect to any address'
	String get failedToConnectAnyAddress => 'Failed to connect to any address';

	/// en: 'Connection lost after ${attempts} attempts'
	String connectionLostAfterAttempts({required Object attempts}) => 'Connection lost after ${attempts} attempts';

	/// en: 'Connection lost'
	String get connectionLost => 'Connection lost';
}

// Path: services.names
class Translations$services$names$en {
	Translations$services$names$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'MyAnimeList'
	String get mal => 'MyAnimeList';

	/// en: 'AniList'
	String get anilist => 'AniList';

	/// en: 'Simkl'
	String get simkl => 'Simkl';

	/// en: 'Seerr'
	String get seerr => 'Seerr';

	/// en: 'MDBList'
	String get mdblist => 'MDBList';
}

// Path: services.simklReconnect
class Translations$services$simklReconnect$en {
	Translations$services$simklReconnect$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Reconnect Simkl'
	String get title => 'Reconnect Simkl';

	/// en: 'Simkl is retiring the sign-in method this connection uses. Reconnecting opens simkl.com to approve Luroka — Luroka never sees your password. Your watch history stays on Simkl.'
	String get subtitle => 'Simkl is retiring the sign-in method this connection uses. Reconnecting opens simkl.com to approve Luroka — Luroka never sees your password. Your watch history stays on Simkl.';
}

// Path: services.deviceCode
class Translations$services$deviceCode$en {
	Translations$services$deviceCode$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Activate Luroka on ${service}'
	String title({required Object service}) => 'Activate Luroka on ${service}';

	/// en: 'Scan the QR code, or visit the address below and enter this code:'
	String get instructions => 'Scan the QR code, or visit the address below and enter this code:';

	/// en: 'Open ${service} to activate'
	String openToActivate({required Object service}) => 'Open ${service} to activate';

	/// en: 'Copy activation code'
	String get copyCode => 'Copy activation code';

	/// en: 'Waiting for authorization…'
	String get waitingForAuthorization => 'Waiting for authorization…';

	/// en: 'Code copied'
	String get codeCopied => 'Code copied';
}

// Path: services.oauthProxy
class Translations$services$oauthProxy$en {
	Translations$services$oauthProxy$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Sign in to ${service}'
	String title({required Object service}) => 'Sign in to ${service}';

	/// en: 'Scan this QR code or open the URL on any device.'
	String get body => 'Scan this QR code or open the URL on any device.';

	/// en: 'Open ${service} to sign in'
	String openToSignIn({required Object service}) => 'Open ${service} to sign in';
}

// Path: services.pendingAuth
class Translations$services$pendingAuth$en {
	Translations$services$pendingAuth$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Copy sign-in URL'
	String get copyUrl => 'Copy sign-in URL';

	/// en: 'URL copied'
	String get urlCopied => 'URL copied';
}

// Path: services.libraryFilter
class Translations$services$libraryFilter$en {
	Translations$services$libraryFilter$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Library filter'
	String get title => 'Library filter';

	/// en: 'Syncing all libraries'
	String get subtitleAllSyncing => 'Syncing all libraries';

	/// en: 'Nothing syncing'
	String get subtitleNoneSyncing => 'Nothing syncing';

	/// en: '${count} blocked'
	String subtitleBlocked({required Object count}) => '${count} blocked';

	/// en: '${count} allowed'
	String subtitleAllowed({required Object count}) => '${count} allowed';

	/// en: 'Filter mode'
	String get mode => 'Filter mode';

	/// en: 'Blacklist'
	String get modeBlacklist => 'Blacklist';

	/// en: 'Whitelist'
	String get modeWhitelist => 'Whitelist';

	/// en: 'Sync every library except the ones checked below.'
	String get modeHintBlacklist => 'Sync every library except the ones checked below.';

	/// en: 'Sync only the libraries checked below.'
	String get modeHintWhitelist => 'Sync only the libraries checked below.';

	/// en: 'Libraries'
	String get libraries => 'Libraries';

	/// en: 'No libraries available'
	String get noLibraries => 'No libraries available';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on Translations {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'mobileLibrary.pickerSubtitle' => 'Choose a collection to explore',
			'mobileLibrary.searchLibraries' => 'Search libraries',
			'mobileLibrary.noLibraries' => 'No matching libraries',
			'mobileLibrary.ascending' => 'Ascending',
			'mobileLibrary.descending' => 'Descending',
			'mobileLibrary.sort' => 'Sort',
			'mobileLibrary.unwatchedCount' => ({required Object count}) => '${count} unwatched episodes',
			'mobileLibrary.latestEpisode' => 'Latest episode',
			'profileStartup.autoLogin' => 'Open the last used profile',
			'profileStartup.autoLoginHint' => 'Automatically open the last profile when it does not require a PIN.',
			'profileStartup.allowKidsExit' => 'Allow leaving Kids without a parent PIN',
			'profileStartup.allowKidsExitHint' => 'Lets a child switch to another profile without the parent PIN. Profile PINs still apply.',
			'profileStartup.chooseKidsConnection' => 'Choose a different account or server',
			'profileStartup.chooseKidsConnectionHint' => 'After saving, connect a separate account or choose a connection from another profile.',
			'subtitleUpload.chooseFile' => 'Upload subtitle file',
			'subtitleUpload.hint' => 'Choose the language above, then upload an SRT, ASS, SSA or VTT file to this server.',
			'subtitleUpload.success' => 'Subtitle uploaded to the server. It will appear when the server refreshes the item.',
			'subtitleUpload.failed' => 'Could not upload the subtitle. Check the file and server permissions.',
			'personSpotlight.inYourLibraries' => 'in your libraries',
			'personSpotlight.libraryTitles' => ({required Object n}) => 'In your libraries · ${n} titles',
			'personSpotlight.readBiography' => 'Read biography',
			'personSpotlight.newestFirst' => 'Newest first',
			'personSpotlight.oldestFirst' => 'Oldest first',
			'personSpotlight.titleAscending' => 'Title A–Z',
			'personSpotlight.sortTitles' => 'Sort filmography',
			'personSpotlight.unwatchedEpisodes' => ({required Object n}) => '${n} unwatched episodes',
			'personSpotlight.copies' => ({required Object n}) => '${n} library copies',
			'personSpotlight.versions' => ({required Object n}) => '${n} file versions',
			'personSpotlight.retryTitles' => 'Could not load all titles. Retry',
			'detailExtras.onlineVideos' => 'Trailers & extras',
			'detailExtras.reviews' => 'Reviews',
			'detailExtras.readReview' => 'Read full review',
			'detailExtras.directedBy' => ({required Object name}) => 'More directed by ${name}',
			'detailExtras.previewUnavailable' => 'This preview could not be played. You can open it in its original app instead.',
			'detailExtras.openExternally' => 'Open original video',
			'mobileUi.readMore' => 'Read more',
			'mobileUi.readLess' => 'Show less',
			'mobileUi.playbackTools' => 'Playback options',
			'mobileUi.streamingQuality' => 'Streaming quality',
			'mobileUi.fileVersions' => 'File versions',
			'mobileUi.qualityAndVersions' => 'Streaming quality & file versions',
			'mobileUi.hidePlaybackTools' => 'Hide playback tools',
			'mobileUi.remaining' => ({required Object time}) => '${time} left',
			'mobileUi.endsAt' => ({required Object time}) => 'Ends at ${time}',
			'mobileUi.collection' => 'Your collection',
			'mobileUi.nowPlaying' => 'NOW PLAYING',
			'mobileUi.popularLibrary' => 'Popular in your library',
			'mobileUi.weeklyLibrary' => 'Trending in your library this week',
			'family.title' => 'Profiles & Family',
			'family.yourPeople' => 'Your people',
			'family.manageHint' => 'Manage people, kids’ safety and viewing activity on this device.',
			'family.people' => 'People',
			'family.peopleCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n, one: '${n} person', other: '${n} people', ), 
			'family.kidsCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n, one: '${n} child', other: '${n} kids', ), 
			'family.you' => 'You',
			'family.adult' => 'Adult',
			'family.child' => 'Child',
			'family.adultTeen' => 'Adult or teen',
			'family.adultHint' => 'Their own profile, optional Profile PIN and their own server connections.',
			'family.childHint' => 'Age limits, safe libraries and a kid-friendly look. A Parent PIN protects these controls.',
			'family.upToAge' => ({required Object age}) => 'Up to age ${age}',
			'family.allAges' => 'All ages',
			'family.switchProfile' => 'Switch profile',
			'family.switchHint' => 'Choose who is watching. Managing a person does not switch profiles.',
			'family.addPerson' => 'Add person',
			'family.addChild' => 'Add child',
			'family.addHint' => 'Create an adult, teen or child profile on this device.',
			'family.emptyPeople' => 'Make room for everyone who watches with you.',
			'family.emptyKids' => 'No kids profiles yet. Add a child to choose age limits and safe libraries.',
			'family.safety' => 'Kids & safety',
			'family.safetyHint' => 'Parent PIN, kids profiles and age restrictions.',
			'family.protection' => 'Protection',
			'family.kidsProfiles' => 'Kids profiles',
			'family.backupHistory' => 'Backup & history',
			'family.parentPinOn' => 'Parent PIN on',
			'family.profilePin' => 'Profile PIN',
			'family.confirmParentPin' => 'Confirm Parent PIN',
			'family.parentPinOff' => 'Parent PIN not set',
			'family.missingPin' => 'Add a Parent PIN to protect these controls.',
			'family.hideScope' => 'Hide kids’ activity from Continue Watching in this Luroka profile. This does not change shared server watch history.',
			'family.localScope' => 'Kids profiles and restrictions are stored on this device. Profiles using the same server account still share that account’s watch progress.',
			'family.clearHistoryConfirm' => 'Allow titles watched by kids to appear in Continue Watching again? Kids profiles, restrictions, viewing-time statistics and server watch history will be kept.',
			'family.editRestrictions' => 'Edit kids restrictions',
			'family.activity' => 'Viewing activity',
			'family.namedActivity' => ({required Object name}) => '${name}’s viewing activity',
			'family.thisProfile' => 'This profile',
			'family.activityScope' => 'Playback time recorded by Luroka on this device for the active profile. These are statistics, not viewing limits or complete server history.',
			'family.activityUnavailable' => 'Viewing activity is not available for this profile yet.',
			'family.finished' => 'Done',
			'posterDetails.showThemeMusic' => 'Play theme music',
			'posterDetails.showThemeMusicDescription' => 'Play a movie or show\'s theme while its details page is open, when available on the server.',
			'posterDetails.catalogEpisodeInfo' => 'Show episode count and runtime on catalog cards',
			'posterDetails.catalogEpisodeInfoDescription' => 'Show episode counts and average duration on Discover posters.',
			'posterDetails.title' => 'Poster details',
			'posterDetails.description' => 'Show the title, year and IMDb rating beneath posters across Studio, Search, Discover and Libraries. Missing IMDb ratings stay hidden. Turn off for artwork-only posters.',
			'libraryPolish.compactTvNavigation' => 'Compact library navigation',
			'libraryPolish.compactTvNavigationDescription' => 'Show library sections and browse options in a slide-out menu, leaving more room for posters.',
			'libraryPolish.openLibraryMenu' => 'Open library menu',
			'libraryPolish.posterDetails' => 'Poster details',
			'libraryPolish.showPosterDetails' => 'Show poster details · name, year & IMDb',
			'libraryPolish.hidePosterDetails' => 'Hide poster details',
			'libraryPolish.overview' => 'Overview',
			'libraryPolish.refreshing' => 'Refreshing library…',
			'libraryPolish.serverCollections' => 'All collections on this server',
			'libraryPolish.serverPlaylists' => 'All video playlists on this server',
			'libraryPolish.libraryCollections' => 'Collections in this library',
			'libraryPolish.searchCollections' => 'Search collections',
			'libraryPolish.searchPlaylists' => 'Search playlists',
			'libraryPolish.searchHint' => 'Search by name',
			'libraryPolish.titleAscending' => 'Title A–Z',
			'libraryPolish.titleDescending' => 'Title Z–A',
			'libraryPolish.clearFilters' => 'Clear filters',
			'libraryPolish.playlistEmptyTitle' => 'Your movie nights, in your order',
			'libraryPolish.playlistEmptyHint' => 'Open a title’s More menu and choose Add to playlist to create your first playlist.',
			'libraryPolish.noMatches' => 'No matching names',
			'libraryPolish.indexing' => 'Searching the full catalogue…',
			'showSchedule.today' => 'Today',
			'showSchedule.tomorrow' => 'Tomorrow',
			'showSchedule.latestUpcoming' => 'Latest & Upcoming',
			'showSchedule.latestEpisode' => 'Latest episode',
			'showSchedule.upcoming' => 'Upcoming',
			'showSchedule.inLibrary' => 'In your library',
			'showSchedule.notInLibrary' => 'Not in your library',
			'showSchedule.notYetAired' => 'Not yet aired',
			'showSchedule.episode' => ({required Object number}) => 'Episode ${number}',
			'showSchedule.caughtUp' => 'You’re all caught up',
			'showSchedule.finished' => 'You’ve finished this series',
			'showSchedule.nextAirs' => ({required Object date}) => 'Next episode airs ${date}',
			'showSchedule.watchBeginning' => 'Watch from beginning',
			'showSchedule.replay' => 'Replay',
			'showSchedule.playNext' => 'Play next',
			'awardsCatalog.awards' => 'Awards',
			'awardsCatalog.customize' => 'Customize',
			'awardsCatalog.chooseShelves' => 'Customize Discover',
			'awardsCatalog.shelvesDescription' => 'Choose the rows you want on Discover. Award rows show winners from your libraries. Your choices are saved for this profile.',
			'awardsCatalog.restoreShelves' => 'Restore defaults',
			'awardsCatalog.charts' => 'IMDb charts',
			'awardsCatalog.generalShelves' => 'Popular & trending',
			'awardsCatalog.saveShelvesFailed' => 'Could not save your Discover choices. Please try again.',
			'awardsCatalog.comedyActress' => 'Lead Actress · Comedy',
			'awardsCatalog.leadDramaActor' => 'Lead Actor · Drama',
			'awardsCatalog.leadDramaActress' => 'Lead Actress · Drama',
			'awardsCatalog.comedySupportingActor' => 'Supporting Actor · Comedy',
			'awardsCatalog.comedySupportingActress' => 'Supporting Actress · Comedy',
			'awardsCatalog.leadingPerformance' => 'Silver Bear · Best Leading Performance',
			'awardsCatalog.globesComedySeries' => 'Best Television Series · Musical or Comedy',
			'awardsCatalog.limitedSupportingActor' => 'Supporting Actor · Limited Series or Movie',
			'awardsCatalog.limitedSupportingActress' => 'Supporting Actress · Limited Series or Movie',
			'awardsCatalog.berlinDocumentary' => 'Berlinale Documentary Award',
			'awardsCatalog.title' => 'Awards & festivals',
			'awardsCatalog.chooseCategory' => 'Choose an award category',
			'awardsCatalog.winners' => 'Winners',
			'awardsCatalog.nominees' => 'Nominees',
			'awardsCatalog.releaseDecade' => 'Release decade',
			'awardsCatalog.allYears' => 'All years',
			'awardsCatalog.loading' => 'Loading award titles…',
			'awardsCatalog.matching' => 'Finding these titles in your libraries…',
			'awardsCatalog.unavailable' => 'Award data is unavailable right now. Try again.',
			'awardsCatalog.empty' => 'No matching titles in your visible libraries for this category.',
			'awardsCatalog.coverage' => 'Membership comes from Wikidata and can be incomplete. Actor and director categories show the films or shows they were awarded for. Years refer to title release, not the ceremony.',
			'awardsCatalog.picture' => 'Best Picture',
			'awardsCatalog.film' => 'Best Film',
			'awardsCatalog.international' => 'Best International Feature',
			'awardsCatalog.internationalFilm' => 'Best International Film',
			'awardsCatalog.nonEnglishFilm' => 'Best Film Not in the English Language',
			'awardsCatalog.animated' => 'Best Animated Feature',
			'awardsCatalog.animatedFilm' => 'Best Animated Film',
			'awardsCatalog.documentary' => 'Best Documentary Feature',
			'awardsCatalog.director' => 'Best Director',
			'awardsCatalog.actor' => 'Best Actor',
			'awardsCatalog.actress' => 'Best Actress',
			'awardsCatalog.supportingActor' => 'Best Supporting Actor',
			'awardsCatalog.supportingActress' => 'Best Supporting Actress',
			'awardsCatalog.originalScreenplay' => 'Best Original Screenplay',
			'awardsCatalog.adaptedScreenplay' => 'Best Adapted Screenplay',
			'awardsCatalog.screenplay' => 'Best Screenplay',
			'awardsCatalog.cinematography' => 'Best Cinematography',
			'awardsCatalog.editing' => 'Best Editing',
			'awardsCatalog.score' => 'Best Original Score',
			'awardsCatalog.song' => 'Best Original Song',
			'awardsCatalog.sound' => 'Best Sound',
			'awardsCatalog.effects' => 'Best Visual Effects',
			'awardsCatalog.productionDesign' => 'Best Production Design',
			'awardsCatalog.costume' => 'Best Costume Design',
			'awardsCatalog.makeup' => 'Best Makeup and Hairstyling',
			'awardsCatalog.dramaSeries' => 'Outstanding Drama Series',
			'awardsCatalog.comedySeries' => 'Outstanding Comedy Series',
			'awardsCatalog.limitedSeries' => 'Outstanding Limited Series',
			'awardsCatalog.animatedProgram' => 'Outstanding Animated Program',
			'awardsCatalog.comedyActor' => 'Lead Actor · Comedy',
			'awardsCatalog.limitedActor' => 'Lead Actor · Limited Series or Movie',
			'awardsCatalog.limitedActress' => 'Lead Actress · Limited Series or Movie',
			'awardsCatalog.limitedDirecting' => 'Directing · Limited Series or Movie',
			'awardsCatalog.britishFilm' => 'Best British Film',
			'awardsCatalog.goldenBear' => 'Golden Bear',
			'awardsCatalog.grandJury' => 'Grand Jury Prize',
			'awardsCatalog.jury' => 'Jury Prize',
			'awardsCatalog.teddy' => 'Teddy Award',
			'awardsCatalog.goldenLion' => 'Golden Lion',
			'awardsCatalog.volpiActor' => 'Volpi Cup · Best Actor',
			'awardsCatalog.volpiActress' => 'Volpi Cup · Best Actress',
			'awardsCatalog.queerLion' => 'Queer Lion',
			'awardsCatalog.dramaFilm' => 'Best Motion Picture · Drama',
			'awardsCatalog.comedyFilm' => 'Best Motion Picture · Musical or Comedy',
			'awardsCatalog.dramaActor' => 'Best Actor · Drama',
			'awardsCatalog.dramaActress' => 'Best Actress · Drama',
			'awardsCatalog.usDramatic' => 'U.S. Dramatic Grand Jury Prize',
			'awardsCatalog.documentaryJury' => 'Documentary Grand Jury Prize',
			'awardsCatalog.worldCinema' => 'World Cinema Grand Jury Prize',
			'awardsCatalog.dramaticAudience' => 'U.S. Dramatic Audience Award',
			'awardsCatalog.usDirecting' => 'U.S. Directing Award',
			'awardsCatalog.peopleChoice' => 'People’s Choice Award',
			'awardsCatalog.canadianFilm' => 'Best Canadian Film',
			'awardsCatalog.firstFeature' => 'Best First Feature',
			'awardsCatalog.cassavetes' => 'John Cassavetes Award',
			'awardsCatalog.scienceFiction' => 'Best Science Fiction Film',
			'awardsCatalog.fantasy' => 'Best Fantasy Film',
			'awardsCatalog.horror' => 'Best Horror Film',
			'awardsCatalog.action' => 'Best Action or Adventure Film',
			'awardsCatalog.thriller' => 'Best Thriller Film',
			'searchDiscovery.suggestions' => 'Something to watch',
			'searchDiscovery.collections' => 'Awards & collections',
			'searchDiscovery.collectionsHint' => 'Award winners and curated charts from your libraries',
			'searchDiscovery.all' => 'All discovery',
			'searchDiscovery.awards' => 'Awards & charts',
			'lurokaPlayerDesign.seeking' => 'Seek preview',
			'lurokaPlayerDesign.keepWatching' => 'Keep watching',
			'lurokaPlayerDesign.upNext' => 'Up next',
			'lurokaPlayerDesign.playingIn' => ({required Object seconds}) => 'Playing in ${seconds} s',
			'lurokaWorkspace.everyday' => 'Everyday',
			'lurokaWorkspace.homeDiscovery' => 'Home & Discovery',
			'lurokaWorkspace.librariesAccounts' => 'Libraries & Accounts',
			'lurokaWorkspace.profilesFamily' => 'Profiles & Family',
			'lurokaWorkspace.thisDevice' => 'This device',
			'lurokaWorkspace.thisProfile' => 'This profile',
			'lurokaWorkspace.searchSettings' => 'Search settings',
			'lurokaWorkspace.savedAutomatically' => 'Changes are saved automatically. Everyday and Advanced only change which controls are shown.',
			'lurokaWorkspace.audioSubtitles' => 'Audio & Subtitles',
			'lurokaWorkspace.audioDescription' => 'Sound output, volume and subtitle appearance. Preferred languages are set per server account using Account preferences when connected.',
			'lurokaWorkspace.pictureSound' => 'Picture & Sound',
			'lurokaWorkspace.pictureDescription' => 'Frame-rate matching, resolution, HDR and Dolby Vision tuning for this device.',
			'lurokaWorkspace.engineDescription' => 'Player engine, decoding, custom configuration and advanced playback rules.',
			'lurokaWorkspace.networkStreaming' => 'Network & Streaming',
			'lurokaWorkspace.networkDescription' => 'Streaming quality, direct-play codec preferences and bandwidth choices.',
			'lurokaWorkspace.homeOptions' => 'Home options',
			'lurokaWorkspace.refreshHome' => 'Refresh Home & Popular Now',
			'lurokaWorkspace.customizeHome' => 'Customize Home',
			'lurokaWorkspace.spotlight' => 'Home Spotlight',
			'lurokaWorkspace.rotateSpotlight' => 'Automatically rotate featured titles',
			'lurokaWorkspace.rotateDescription' => 'Rotate while Home is idle. Interaction pauses rotation; browsing shelves, opening a page or leaving the app pauses it completely.',
			'lurokaWorkspace.rotationInterval' => 'Time between featured titles',
			'mobileFixes.connectionRecoveryHint' => 'Server unavailable? Manage your accounts or connect another server.',
			'downloadsRedesign.shelfSize' => 'Items per shelf',
			'downloadsRedesign.shelfSizeHint' => 'Show 16, 32 or 48 items in Continue Watching and recommendation shelves. Servers may return fewer available titles.',
			'downloadsRedesign.subtitle' => 'Your favorites, ready for the journey.',
			'downloadsRedesign.transfers' => 'Transfers',
			'downloadsRedesign.ready' => 'Ready offline',
			'downloadsRedesign.active' => 'Downloading',
			'downloadsRedesign.waiting' => 'Waiting',
			'downloadsRedesign.downloaded' => 'Downloaded',
			'downloadsRedesign.speed' => 'Download speed',
			'downloadsRedesign.notificationProgress' => '{progress} · {networkSpeed} · {timeRemaining} remaining',
			'kidsShelf.movieShelf' => 'Movie time',
			'kidsShelf.showShelf' => 'Find your next show',
			'kidsShelf.aurora' => 'Aurora — deep teal & lime',
			'kidsShelf.marquee' => 'Marquee — velvet & gold',
			'kidsShelf.electric' => 'Electric — indigo & ice',
			'kidsShelf.midnight' => 'Midnight — steel & amber',
			'kidsShelf.yourShelf' => 'Your movie shelf',
			'kidsShelf.all' => 'Everything',
			'kidsShelf.pickSomething' => 'What do you want to watch?',
			'kidsHome.everything' => 'For you',
			'kidsHome.keepWatching' => 'Keep watching',
			'kidsHome.emptyFilter' => 'Nothing here yet. Try For you, or ask your grown-up to add something you love.',
			'tvSettingsV2.moreThemes' => 'More themes & custom colors',
			'tvSettingsV2.moreThemesHint' => 'Open all available presets and custom theme options.',
			'tvSettingsV2.previewLive' => 'Live preview',
			'tvSettingsV2.previewIllustration' => 'Preview example',
			'tvSettingsV2.previewShelfCount' => ({required Object count}) => 'Up to ${count} items per shelf',
			'tvSettingsV2.simple' => 'Simple',
			'tvSettingsV2.homeNavigation' => 'Home & Navigation',
			'tvSettingsV2.libraryCards' => 'Library & Cards',
			'tvSettingsV2.accountsLibraries' => 'Accounts & Libraries',
			'tvSettingsV2.profilesFamily' => 'Profiles & Family',
			'tvSettingsV2.aboutSupport' => 'About & Support',
			'tvSettingsV2.playback' => 'Playback',
			'tvSettingsV2.homeHint' => 'Choose what appears on Home and in navigation.',
			'tvSettingsV2.libraryHint' => 'Adjust poster sizes, labels, and watched indicators.',
			'tvSettingsV2.advancedPlayback' => 'Player engine & streaming',
			'tvSettingsV2.advancedPlaybackHint' => 'Player, video output, streaming and advanced playback choices.',
			'tvSettingsV2.advancedTools' => 'Diagnostics & backups',
			'tvSettingsV2.advancedToolsHint' => 'Logs, troubleshooting, settings backup and reset.',
			'tvSettingsV2.themePreview' => 'Theme preview',
			'tvSettingsV2.libraryPreview' => 'Library preview',
			'tvSettingsV2.homePreview' => 'Home preview',
			'tvSettingsV2.subtitlePreview' => 'Subtitle preview',
			'tvSettingsV2.subtitleSample' => 'Your subtitles will look like this.',
			'tvSettingsV2.previewPlaceholder' => 'Your artwork appears here',
			'tvSettingsV2.posterSize' => 'Poster size',
			'tvSettingsV2.serverRecommendations' => 'Home recommendations from your server',
			'tvSettingsV2.tvLayout' => 'Use TV layout',
			'tvSettingsV2.hardwareDecode' => 'Use hardware video decoding',
			'tvSettingsV2.serverNames' => 'Show server names on Home rows',
			'tvSettingsV2.settingsSaved' => 'Changes are saved automatically.',
			'tvSettingsV2.morePlayback' => 'Advanced playback',
			'tvSettingsV2.screenDisplay' => 'Picture & Sound',
			'tvSettingsV2.engine' => 'Player engine',
			'tvSettingsV2.network' => 'Streaming & network',
			'tvSettingsV2.performance' => 'Performance',
			'tvSettingsV2.simpleAudio' => 'Languages & subtitle appearance',
			'settingsRedesign.themeEffects' => 'Theme & Effects',
			'settingsRedesign.libraryLayout' => 'Library Layout',
			'settingsRedesign.posterInformation' => 'Poster information',
			'settingsRedesign.libraryBehavior' => 'Library behavior',
			'settingsRedesign.appearanceHint' => 'Customize the look, layout and behavior of Luroka.',
			'settingsRedesign.livePreview' => 'Live Preview',
			'settingsRedesign.previewHint' => 'See how your library will look with the current settings.',
			'settingsRedesign.showLiveTv' => 'Show Live TV',
			'settingsRedesign.showLiveTvHint' => 'Show Live TV in navigation when a connected server supports it. This does not change your server.',
			'settingsRedesign.aboutTagline' => 'Your media. Your space.',
			'settingsRedesign.aboutDescription' => 'Luroka brings your Plex, Jellyfin and Emby libraries together in a cinematic player for phones, TVs and desktops.',
			'settingsRedesign.aboutFeatures' => 'Browse your libraries, resume movies and shows, personalize profiles, enjoy downloads and watch together. Live TV is available with a compatible server.',
			'settingsRedesign.services' => 'Connect your world',
			'settingsRedesign.updateSource' => 'Update source',
			'settingsRedesign.updateSourceHint' => 'HTTPS address of your Luroka release feed. Your distributor can preconfigure this in the app.',
			'settingsRedesign.updateNotConfigured' => 'Automatic updates are not configured for this build.',
			'settingsRedesign.downloadInstall' => 'Download & install',
			'settingsRedesign.installUpdate' => 'Install update',
			'settingsRedesign.downloading' => 'Downloading update…',
			'settingsRedesign.downloadFailed' => 'Could not download or verify the update. Please try again.',
			'settingsRedesign.installPermission' => 'Allow Luroka to install updates in Android settings, then return and select Install update.',
			'settingsRedesign.updateReady' => 'Download verified. Ready to install.',
			'settingsRedesign.releaseNotes' => 'Release notes',
			'settingsRedesign.invalidFeed' => 'Enter a valid HTTPS update feed address.',
			'onboarding.connectStep' => '01 · Connect',
			'onboarding.connectTitle' => 'Welcome to Luroka',
			'onboarding.connectHint' => 'Sign in to bring your libraries here.',
			'onboarding.serverAddressHint' => 'Enter your server address, or choose a server found on your network.',
			'onboarding.serverSignInHint' => 'Use your server username and password to connect your libraries.',
			'onboarding.serverAddressTitle' => 'Server address',
			'onboarding.serverAccountTitle' => 'Your server account',
			'onboarding.plexHomeTitle' => 'Choose your Plex Home user',
			'onboarding.plexHomeHint' => 'Select the Plex user whose libraries you want to use. You’ll set up your Luroka profile next.',
			'onboarding.chooseService' => 'Choose your service',
			'onboarding.profileStep' => '02 · Your profile',
			'onboarding.profileTitle' => 'Make yourself at home.',
			'onboarding.profileHint' => 'Choose a name and an avatar for your Luroka profile. Your connected account stays the same.',
			'onboarding.readyStep' => '03 · Ready to watch',
			'onboarding.readyTitle' => 'A little more you.',
			'onboarding.readyHint' => 'Bring your services together or make room for someone else. You can always do this later.',
			'onboarding.addService' => 'Connect another service',
			'onboarding.editProfile' => 'Edit your name & avatar',
			'onboarding.connected' => 'Connected and ready',
			'onboarding.backToProfile' => 'Back to your profile',
			'onboarding.showOtherPlexHome' => 'Show other Plex Home members',
			'onboarding.showOtherPlexHomeHint' => 'Off by default. Your Luroka profiles and Plex Home members you’ve used stay visible. Turn on to choose someone else.',
			'household.title' => 'Your Luroka household',
			'household.welcome' => 'Make Luroka yours',
			'household.welcomeHint' => 'Your first account is connected. Personalise your profile or add someone else before you start watching.',
			'household.profiles' => 'Profiles & household',
			'household.manageHint' => 'Add people, change pictures, and manage each profile’s connections.',
			'household.addProfile' => 'Add Luroka profile',
			'household.addHint' => 'Each person can connect their own Plex, Emby or Jellyfin login. Only connections added to their profile appear for them.',
			'household.sharedHint' => 'Reusing another profile’s connection shares that server user’s watched status and playback progress. Choose a separate login for independent viewing history.',
			'household.personalise' => 'Personalise profile',
			'household.changePicture' => 'Change profile picture',
			'household.pictureHint' => 'Choose a Luroka avatar or a photo. This changes the picture on this device only; your server account is untouched.',
			'household.serverPicture' => 'Use server picture / initials',
			'household.choosePhoto' => 'Choose a photo',
			'household.photoHint' => 'JPEG, PNG or another supported image, up to 10 MB. Photos are resized and stored on this device.',
			'household.pictureSaved' => 'Profile picture updated',
			'household.pictureFailed' => 'Could not update the profile picture. Try a supported image up to 10 MB.',
			'household.saveFailed' => 'Could not save profile settings. Please try again.',
			'household.startWatching' => 'Start watching',
			'household.manageProfiles' => 'Manage or switch profiles',
			'household.addLater' => 'You can add more people later in Settings → Profiles & household.',
			'household.connectionRequired' => 'Add a server connection to finish setting up this profile.',
			'household.mountain' => 'Mountain',
			'household.orbit' => 'Explorer',
			'household.waves' => 'Ocean',
			'household.blossom' => 'Blossom',
			'household.lightning' => 'Lightning',
			'household.moon' => 'Moon',
			'household.avatarGallery' => 'Choose an avatar',
			'household.avatarIllustrationHint' => 'Original illustrated portraits, kids and animal friends',
			'household.avatarPortraitSunrise' => 'Sunrise portrait',
			'household.avatarPortraitMeadow' => 'Meadow portrait',
			'household.avatarPortraitBerry' => 'Berry portrait',
			'household.avatarPortraitGolden' => 'Golden portrait',
			'household.avatarPortraitIndigo' => 'Indigo portrait',
			'household.avatarPortraitOcean' => 'Ocean portrait',
			'household.avatarKidArtist' => 'Little artist',
			'household.avatarKidSkater' => 'Little skater',
			'household.avatarCat' => 'Curious cat',
			'household.avatarDog' => 'Happy dog',
			'household.avatarPanda' => 'Panda',
			'household.avatarOwl' => 'Owl',
			'household.avatarFox' => 'Fox',
			'household.avatarDinosaur' => 'Dinosaur',
			'household.avatarRobot' => 'Robot',
			'detailComposition.startOver' => 'Start over',
			'detailComposition.seriesCast' => 'Series cast',
			'detailComposition.streamingQuality' => 'Streaming quality…',
			'detailComposition.trailer' => 'Trailer',
			'detailComposition.manageMedia' => 'Manage media…',
			'detailComposition.playbackOptions' => 'Playback options…',
			'detailComposition.moreActions' => 'More actions',
			'detailComposition.watched' => 'Watched',
			'detailComposition.unwatched' => 'Unwatched',
			'detailComposition.endsAt' => ({required Object time}) => 'Ends at ${time}',
			'detailComposition.automatic' => 'Automatic',
			'detailComposition.usePreferences' => 'Use your playback preferences',
			'detailComposition.mediaInformation' => 'Media Information',
			'detailComposition.fullFileInformation' => 'Full file information',
			'detailComposition.castAndCrew' => 'Cast & Crew',
			'kids.timeLimits' => 'Screen time limits',
			'kids.dailyWatchLimit' => 'Daily watch time',
			'kids.dailyWatchLimitHint' => 'Limits video playback on this device each day.',
			'kids.noTimeLimit' => 'No limit',
			'kids.minutesLimit' => ({required Object minutes}) => '${minutes} minutes',
			'kids.bedtime' => 'Bedtime',
			'kids.bedtimeHint' => 'A parent PIN is needed to use this profile during these hours.',
			'kids.bedtimeStart' => 'Bedtime starts',
			'kids.bedtimeEnd' => 'Bedtime ends',
			'kids.timeLimitReached' => 'Watch time is over for today',
			'kids.bedtimeReached' => 'It is bedtime',
			'kids.timeLimitParentHint' => 'Ask a parent to enter their PIN to continue for this session.',
			'kids.parentUnlock' => 'Parent unlock',
			'kids.backupProfile' => 'Back up kids profile',
			'kids.backupExplain' => 'Back up this profile’s saved name, character, restrictions, appearance and local viewing exclusions. Parent PINs, server logins, downloads and server playback progress are not included.',
			'kids.saveBackupFile' => 'Save backup file',
			'kids.copyBackup' => 'Copy backup text',
			'kids.backupSaved' => ({required Object path}) => 'Kids profile backup saved to ${path}',
			'kids.backupCopied' => 'Kids profile backup copied',
			'kids.backupFailed' => 'Could not save the kids profile backup. Please try again.',
			'kids.restoreProfile' => 'Restore kids profile',
			'kids.chooseBackupFile' => 'Choose backup file',
			'kids.pasteBackup' => 'Paste backup text',
			'kids.backupText' => 'Kids profile backup JSON',
			'kids.pasteFromClipboard' => 'Paste from clipboard',
			'kids.restoreReview' => 'Review these restored settings, then Save to create a new kids profile using your current server connections. Existing profiles are not overwritten. Library selections and viewing exclusions match only the same server/library IDs.',
			'kids.restoreInvalid' => 'This is not a valid supported kids profile backup. Choose a Luroka kids profile JSON backup.',
			'kids.deleteProfile' => 'Delete kids profile',
			'kids.deleteExplain' => ({required Object name}) => 'Delete ${name} from Luroka? Their local settings, downloads and viewing exclusions will be removed. Your server account and server-side history will remain. Create a backup first if you want to restore the profile later.',
			'kids.profileDeleted' => 'Kids profile deleted',
			'kids.allowedLibraries' => 'Allowed libraries',
			'kids.unavailableLibrary' => 'Previously selected library (currently unavailable)',
			'kids.allLibraries' => 'Allow all connected movie and TV libraries',
			'kids.librariesExplain' => 'Turn this off to choose specific libraries. Age and animation rules still apply inside the selected libraries. New libraries are not added automatically when using a selection.',
			'kids.librariesUnavailable' => 'No movie or TV libraries are loaded. Connect to the server and open Libraries, then return here to choose.',
			'kids.noLibrariesSelected' => 'No libraries selected: this child will not see any titles.',
			'kids.animationOnly' => 'Animation only',
			'kids.animationExplain' => 'Show only titles tagged with the Animation genre on your server. This does not replace the age limit: animation can also be intended for adults. Missing genre metadata is hidden.',
			'kids.allowUnrated' => 'Allow titles without an age rating',
			'kids.unratedExplain' => 'Off by default. When enabled, missing or unrated classifications can appear if the library and animation rules allow them. Their suitability cannot be checked by age. Known ratings above the age limit and unrecognized classifications remain hidden.',
			'kids.whoIsWatching' => 'Who’s watching?',
			'kids.chooseAdventure' => 'A little world of big adventures.',
			'kids.chooseProfile' => 'Choose your space. Make it a movie night.',
			'kids.welcome' => ({required Object name}) => 'Hi, ${name}!',
			'kids.welcomeOlder' => ({required Object name}) => 'Your next great story, ${name}.',
			'kids.homeSubtitle' => 'Big adventures. Little discoveries. All for you.',
			'kids.homeSubtitleOlder' => 'Find a new favourite. Pick up where you left off.',
			'kids.featured' => 'Today’s big adventure',
			'kids.featuredOlder' => 'In the spotlight',
			'kids.moreInfo' => 'More info',
			'kids.movies' => 'Movies',
			'kids.shows' => 'Shows',
			'kids.profiles' => 'Profiles',
			'kids.adultBadge' => 'Grown-ups',
			'kids.avatar' => 'Choose your character',
			'kids.avatarExplorer' => 'Space explorer',
			'kids.avatarFox' => 'Fox',
			'kids.avatarDinosaur' => 'Dinosaur',
			'kids.avatarRobot' => 'Robot',
			'kids.avatarChildArtist' => 'Little artist',
			'kids.avatarChildSkater' => 'Little skater',
			'kids.avatarSunrisePerson' => 'Sunrise portrait',
			'kids.avatarOceanPerson' => 'Ocean portrait',
			'kids.avatarCat' => 'Curious cat',
			'kids.avatarDog' => 'Happy dog',
			'kids.avatarPanda' => 'Panda',
			'kids.avatarOwl' => 'Owl',
			'kids.avatarBear' => 'Bear',
			'kids.continueAdventure' => 'Keep the adventure going',
			'kids.freshStories' => 'New stories to discover',
			'kids.yourMovies' => 'Movie-time favourites',
			'kids.yourShows' => 'One more episode',
			'kids.emptyHint' => 'New adventures will appear here when your server has titles with an allowed age classification.',
			'kids.title' => 'Luroka Kids',
			'kids.addProfile' => 'Add kids profile',
			'kids.parentalControls' => 'Parental controls',
			'kids.parentPin' => 'Parent PIN',
			'kids.setParentPin' => 'Set parent PIN',
			'kids.changeParentPin' => 'Change parent PIN',
			'kids.pinExplain' => 'This PIN protects adult profiles and parental controls on this device.',
			'kids.name' => 'Child’s name',
			'kids.ageGroup' => 'Allowed age classification',
			'kids.allAges' => 'All ages · G, TV-Y, TV-G, U',
			'kids.age7' => 'Up to 7 · also PG, TV-PG, TV-Y7',
			'kids.age12' => 'Up to 12 · also 12 and 12A',
			'kids.age16' => 'Up to 16 · also PG-13, TV-14, 15 and 16',
			'kids.ratingExplain' => 'Titles above the age limit and unrecognized classifications are hidden. Titles without a rating are hidden unless you allow them below. Unrated episodes can inherit an approved series classification. Ratings depend on your server’s metadata.',
			'kids.theme' => 'Kids appearance',
			'kids.themeExplain' => 'Use a colourful theme when this profile is active.',
			'kids.sharedLogin' => 'Uses your existing server login. Plex/Emby progress and watched status remain shared. Restrictions and kids profiles are stored on this device.',
			'kids.hideWatched' => 'Hide kids’ viewing from my Continue Watching',
			'kids.hideExplain' => 'Hide movies and entire series played by kids profiles on this device. This does not remove them from your library or change server history.',
			'kids.clearHistory' => 'Reset kids’ viewing exclusions',
			'kids.historyReset' => 'Kids’ viewing exclusions reset',
			'kids.blocked' => 'This title is not available in this kids profile.',
			'kids.switchProfile' => 'Switch profile',
			'kids.manageFromAdult' => 'Switch to an adult profile to manage settings.',
			_ => null,
		} ?? switch (path) {
			'kids.noConnections' => 'Connect a server to your adult profile before adding a kids profile.',
			'kids.created' => 'Kids profile created',
			'kids.updated' => 'Kids profile updated',
			'kids.saveFailed' => 'Could not save parental controls. Please try again.',
			'kids.kidsBadge' => 'Kids',
			'lurokaDiscovery.title' => 'Discover',
			'lurokaDiscovery.chooseLibraryHint' => 'Choose a library to explore',
			'lurokaDiscovery.chooseCopyHint' => 'Available in multiple libraries. Choose your preferred copy.',
			'lurokaDiscovery.weeklyMovies' => 'Trending movies this week · TMDb',
			'lurokaDiscovery.weeklyShows' => 'Trending shows this week · TMDb',
			'lurokaDiscovery.weeklyLibrary' => 'Trending this week · In your library',
			'lurokaDiscovery.popularLibrary' => 'Popular now · In your library · Cinemeta',
			'lurokaDiscovery.publicFeedError' => 'Cinemeta discovery is unavailable. Please try again.',
			'lurokaDiscovery.oscars' => 'Oscars · Best Picture winners',
			'lurokaDiscovery.imdb100' => 'IMDb Top 100 movies · Sep 2026 snapshot',
			'lurokaDiscovery.imdbTv100' => 'IMDb Top 100 shows · Sep 2026 snapshot',
			'lurokaDiscovery.emmyComedy' => 'Emmys · Comedy Series winners · 1971–2026',
			'lurokaDiscovery.emmys' => 'Emmys · Drama Series winners · 1966–2026',
			'lurokaDiscovery.bafta' => 'BAFTA · Best Film winners',
			'lurokaDiscovery.cannes' => 'Cannes · Palme d’Or winners',
			'lurokaDiscovery.awardsNote' => 'Award collections include Oscar Best Picture history, Emmy drama/comedy winners, and expanded BAFTA/Cannes selections. Repeated winning titles appear once. Membership uses award-category histories and Wikidata facts. IMDb Top 100 movie/show lists preserve September 2026 chart snapshots from mmdju/imdb-top250-api. Only matches in your visible, online libraries appear; collection size depends on library availability.',
			'lurokaDiscovery.attribution' => 'Public popularity lists, metadata and IMDb ratings are supplied by Cinemeta; its Popular lists are not weekly viewing charts. This product uses the TMDB API but is not endorsed or certified by TMDB. Optional TMDb weekly trends reflect TMDb interest, not viewing figures. Scores retain their source labels.',
			'lurokaDiscovery.tmdbSettings' => 'Discovery sources',
			'lurokaDiscovery.setupDescription' => 'Cinemeta discovery works immediately without an account: popular movies and shows, IMDb ratings and award winners. Optionally connect TMDb for weekly trends using an API key or API Read Access Token from themoviedb.org/settings/api. Your credential is stored on this device.',
			'lurokaDiscovery.apiKey' => 'TMDb API key / Read Access Token',
			'lurokaDiscovery.connect' => 'Connect TMDb',
			'lurokaDiscovery.connecting' => 'Connecting…',
			'lurokaDiscovery.connected' => 'TMDb connected · Weekly trends and awards enabled',
			'lurokaDiscovery.builtInKeyNote' => 'Running on Luroka\'s built-in shared TMDb key. Add your own free key below for dedicated rate limits and full control.',
			'lurokaDiscovery.disconnect' => 'Disconnect TMDb',
			'lurokaDiscovery.invalidKey' => 'Could not validate TMDb. Check your credential and internet connection.',
			'lurokaDiscovery.feedError' => 'TMDb discovery is unavailable. Please try again.',
			'lurokaDiscovery.allTitles' => 'All titles',
			'lurokaDiscovery.available' => 'In your library',
			'lurokaDiscovery.checking' => 'Checking your libraries…',
			'lurokaDiscovery.availabilityUnknown' => 'Some libraries could not be checked. Try refreshing.',
			'lurokaDiscovery.noAvailable' => 'No matching titles found in the libraries checked.',
			'lurokaDiscovery.sourceInfo' => 'Weekly trends & selected award winners · TMDb',
			'lurokaDiscovery.configure' => 'Discovery settings',
			'app.title' => 'Luroka',
			'appIcon.title' => 'App icon',
			'appIcon.defaultIcon' => 'Default',
			'appIcon.current' => 'Current icon',
			'appIcon.locked' => 'Supporter perk',
			'appIcon.lockedHint' => 'Alternate icons are a Supporter perk.',
			'appIcon.changeFailed' => 'Couldn\'t change the app icon',
			'appIcon.launcherHint' => 'The new icon appears on your home screen once you leave Luroka.',
			'appIcon.tvLauncherHint' => 'The new banner appears once you leave Luroka. Android TV can keep showing the old one until the TV restarts.',
			'appIcon.names.midnight' => 'Midnight',
			'appIcon.names.ember' => 'Ember',
			'appIcon.names.paper' => 'Paper',
			'appIcon.names.oled' => 'OLED',
			'appIcon.names.line' => 'Line',
			'appIcon.names.ocean' => 'Ocean',
			'appIcon.names.ultraviolet' => 'Ultraviolet',
			'appIcon.names.matcha' => 'Matcha',
			'appIcon.names.sunset' => 'Sunset',
			'appIcon.names.gold' => 'Gold',
			'appIcon.names.titanium' => 'Titanium',
			'appIcon.names.glass' => 'Glass',
			'appIcon.names.crt' => 'CRT',
			'appIcon.names.vhs' => 'VHS',
			'appIcon.names.synthwave' => 'Synthwave',
			'appIcon.names.pixel' => 'Pixel',
			'appIcon.names.neon' => 'Neon',
			'appIcon.names.sticker' => 'Sticker',
			'appIcon.names.ticket' => 'Ticket',
			'appIcon.names.pop' => 'Pop',
			'appIcon.names.strata' => 'Strata',
			'appIcon.names.facet' => 'Facet',
			'appIcon.names.tilde' => 'Tilde',
			'auth.signInWithPlex' => 'Sign in with Plex',
			'auth.showQRCode' => 'Show QR Code',
			'auth.authenticate' => 'Authenticate',
			'auth.authenticationTimeout' => 'Authentication timed out. Please try again.',
			'auth.scanQRToSignIn' => 'Scan this QR code to sign in',
			'auth.waitingForAuth' => 'Waiting for authentication...\nSign in from your browser.',
			'auth.useBrowser' => 'Use browser',
			'auth.or' => 'or',
			'auth.connectToMediaBrowser' => ({required Object product}) => 'Connect to ${product}',
			'auth.quickConnect' => 'Quick Connect',
			'auth.useQuickConnect' => 'Use Quick Connect',
			'auth.quickConnectInstructions' => 'Open Quick Connect in Jellyfin and enter this code.',
			'auth.quickConnectWaiting' => 'Waiting for approval…',
			'auth.quickConnectCancel' => 'Cancel',
			'auth.quickConnectExpired' => 'Quick Connect expired. Try again.',
			'auth.localDataRecoveryRequired' => 'Luroka could not safely recover local sign-in and pending playback data. Please sign in again.',
			'auth.pinCheckRejected' => 'The Plex PIN check was rejected',
			'common.cancel' => 'Cancel',
			'common.save' => 'Save',
			'common.close' => 'Close',
			'common.clear' => 'Clear',
			'common.reset' => 'Reset',
			'common.later' => 'Later',
			'common.submit' => 'Submit',
			'common.confirm' => 'Confirm',
			'common.retry' => 'Retry',
			'common.logout' => 'Log out',
			'common.unknown' => 'Unknown',
			'common.refresh' => 'Refresh',
			'common.yes' => 'Yes',
			'common.no' => 'No',
			'common.delete' => 'Delete',
			'common.edit' => 'Edit',
			'common.shuffle' => 'Shuffle',
			'common.addTo' => 'Add to...',
			'common.createNew' => 'Create new',
			'common.connect' => 'Connect',
			'common.disconnect' => 'Disconnect',
			'common.play' => 'Play',
			'common.pause' => 'Pause',
			'common.resume' => 'Resume',
			'common.error' => 'Error',
			'common.search' => 'Search',
			'common.home' => 'Home',
			'common.back' => 'Back',
			'common.settings' => 'Settings',
			'common.mute' => 'Mute',
			'common.ok' => 'OK',
			'common.off' => 'Off',
			'common.options' => 'Options',
			'common.seasonNumber' => ({required Object number}) => 'Season ${number}',
			'common.episodeNumberTitle' => ({required Object number, required Object title}) => 'Episode ${number} - ${title}',
			'common.chapterNumber' => ({required Object number}) => 'Chapter ${number}',
			'common.reconnect' => 'Reconnect',
			'common.viewAll' => 'View All',
			'common.serversUnreachable' => 'Servers unreachable',
			'common.loading' => 'Loading...',
			'common.fullscreen' => 'Fullscreen',
			'common.exitFullscreen' => 'Exit fullscreen',
			'common.ratingSource.critic' => 'Critics',
			'common.ratingSource.audience' => 'Audience',
			'common.ratingSource.imdb' => 'IMDb',
			'common.ratingSource.tmdb' => 'TMDB',
			'common.ratingSource.rottenTomatoes' => 'Rotten Tomatoes',
			'common.ratingSource.simkl' => 'Simkl',
			'common.ratingSource.mal' => 'MyAnimeList',
			'common.ratingSource.anilist' => 'AniList',
			'common.ratingSource.trakt' => 'Trakt',
			'common.ratingSource.rottenTomatoesCritic' => 'Rotten Tomatoes critics',
			'common.ratingSource.rottenTomatoesAudience' => 'Rotten Tomatoes audience',
			'common.ratingSource.metacritic' => 'Metacritic',
			'common.ratingSource.letterboxd' => 'Letterboxd',
			'common.notAvailable' => 'N/A',
			'common.url' => 'URL',
			'common.letterKeys' => 'ABC',
			'common.mediaKind.movie' => 'Movie',
			'common.mediaKind.show' => 'Show',
			'common.mediaKind.season' => 'Season',
			'common.mediaKind.episode' => 'Episode',
			'common.mediaKind.artist' => 'Artist',
			'common.mediaKind.album' => 'Album',
			'common.mediaKind.track' => 'Track',
			'common.mediaKind.collection' => 'Collection',
			'common.mediaKind.playlist' => 'Playlist',
			'common.mediaKind.clip' => 'Clip',
			'common.mediaKind.photo' => 'Photo',
			'common.mediaKind.folder' => 'Folder',
			'common.stay' => 'Stay',
			'common.exitApp' => 'Exit',
			'common.exitAppBody' => 'Are you sure you want to exit Luroka?',
			'tvHints.select' => 'Select',
			'tvHints.browse' => 'Browse',
			'tvHints.back' => 'Back',
			'screens.licenses' => 'Licenses',
			'screens.switchProfile' => 'Switch Profile',
			'screens.subtitleStyling' => 'Subtitle Styling',
			'screens.mpvConfig' => 'mpv.conf',
			'screens.logs' => 'Logs',
			'mediaExtras.trailers' => 'Trailers',
			'mediaExtras.featurettes' => 'Featurettes',
			'mediaExtras.interviews' => 'Interviews',
			'mediaExtras.deletedScenes' => 'Deleted Scenes',
			'mediaExtras.behindTheScenes' => 'Behind the Scenes',
			'mediaExtras.scenesAndClips' => 'Scenes & Clips',
			'mediaExtras.other' => 'Other Extras',
			'update.available' => 'Update Available',
			'update.versionAvailable' => ({required Object version}) => 'Version ${version} is available',
			'update.currentVersion' => ({required Object version}) => 'Current: ${version}',
			'update.skipVersion' => 'Skip This Version',
			'update.viewRelease' => 'View Release',
			'update.latestVersion' => 'You are on the latest version',
			'update.checkFailed' => 'Failed to check for updates',
			'supporter.title' => 'Luroka Supporter',
			'supporter.intro' => 'A one-time purchase that supports Luroka\'s development and unlocks cosmetic extras:',
			'supporter.presetThemes' => 'Preset themes',
			'supporter.presetThemesDescription' => 'Ember, Glacier, Forest, Plum and Paper',
			'supporter.customTheme' => 'Custom theme',
			'supporter.customThemeDescription' => 'Pick every color yourself',
			'supporter.appIcons' => 'App icons',
			'supporter.appIconsDescription' => 'Choose an alternate Luroka icon',
			'supporter.buy' => ({required Object price}) => 'Buy for ${price}',
			'supporter.loadingPrice' => 'Loading price...',
			'supporter.restore' => 'Restore Purchases',
			'supporter.pending' => 'Your purchase is waiting for payment or approval. The extras unlock as soon as the store completes it.',
			'supporter.thankYouTitle' => 'Thank you for supporting Luroka',
			'supporter.thankYouBody' => 'Your Supporter extras are unlocked.',
			'supporter.tileSubtitle' => 'Unlock themes and app icons with a one-time purchase',
			'supporter.tileSubtitleThemesOnly' => 'Unlock themes with a one-time purchase',
			'supporter.tileUnlocked' => 'Thank you for your support',
			'supporter.errors.storeUnavailable' => 'Purchases aren\'t available. Check that you\'re signed in to the store and purchases are allowed on this device.',
			'supporter.errors.productNotFound' => 'The Supporter purchase isn\'t available in your store right now.',
			'supporter.errors.productQueryFailed' => 'Couldn\'t load the price. Check your connection and try again.',
			'supporter.errors.purchaseFailed' => 'The purchase didn\'t go through. Try again.',
			'supporter.errors.restoreFailed' => 'Couldn\'t reach the store to restore your purchase. Try again.',
			'supporter.errors.nothingToRestore' => 'No Supporter purchase was found for this store account.',
			'settings.title' => 'Settings',
			'settings.supportDeveloper' => 'Support Luroka',
			'settings.supportDeveloperDescription' => 'Donate via Liberapay to fund development',
			'settings.language' => 'Language',
			'settings.theme' => 'Theme',
			'settings.appearance' => 'Appearance',
			'settings.videoPlayback' => 'Video Playback',
			'settings.videoPlaybackDescription' => 'Configure playback behavior',
			'settings.advanced' => 'Advanced',
			'settings.episodePosterMode' => 'Episode Poster Style',
			'settings.seriesPoster' => 'Series Poster',
			'settings.seasonPoster' => 'Season Poster',
			'settings.episodeThumbnail' => 'Thumbnail',
			'settings.homeHeroSize' => 'Carousel Size',
			'settings.homeHeroSizeSmall' => 'Small',
			'settings.homeHeroSizeMedium' => 'Medium',
			'settings.homeHeroSizeLarge' => 'Large',
			'settings.secondsLabel' => 'Seconds',
			'settings.minutesLabel' => 'Minutes',
			'settings.secondsShort' => 's',
			'settings.minutesShort' => 'm',
			'settings.durationHint' => ({required Object min, required Object max}) => 'Enter duration (${min}-${max})',
			'settings.systemTheme' => 'System',
			'settings.lightTheme' => 'Light',
			'settings.darkTheme' => 'Dark',
			'settings.oledTheme' => 'OLED',
			'settings.libraryDensity' => 'Library Density',
			'settings.displayScale' => 'Display Scale',
			'settings.compact' => 'Compact',
			'settings.comfortable' => 'Comfortable',
			'settings.gridSpacing' => 'Grid Spacing',
			'settings.gridSpacingTight' => 'Tight',
			'settings.gridSpacingNormal' => 'Normal',
			'settings.gridSpacingSpacious' => 'Spacious',
			'settings.tvCornerSpotlightBackdrop' => 'Corner Spotlight Backdrop',
			'settings.tvCornerSpotlightBackdropDescription' => 'Show spotlight artwork in the top-right corner instead of filling the screen',
			'settings.viewMode' => 'View Mode',
			'settings.gridView' => 'Grid',
			'settings.listView' => 'List',
			'settings.continueWatchingAction' => 'Continue Watching Action',
			'settings.continueWatchingPlay' => 'Play',
			'settings.continueWatchingDetails' => 'Open Details',
			'settings.episodeAction' => 'Episode Action',
			'settings.episodePlay' => 'Play',
			'settings.episodeDetails' => 'Open Details',
			'settings.useGlobalHubs' => 'Use Home Layout',
			'settings.useGlobalHubsDescription' => 'Combine all servers into one Home screen. Turn off to show each library\'s own recommendations.',
			'settings.showServerNameOnHubs' => 'Show Server Name on Hubs',
			'settings.showServerNameOnHubsDescription' => 'Always show server names in hub titles.',
			'settings.groupLibrariesByServer' => 'Group Libraries by Server',
			'settings.groupLibrariesByServerDescription' => 'Group sidebar libraries under each media server.',
			'settings.alwaysKeepSidebarOpen' => 'Always Keep Sidebar Open',
			'settings.alwaysKeepSidebarOpenDescription' => 'Sidebar stays expanded and content area adjusts to fit',
			'settings.showUnwatchedCount' => 'Show Unwatched Count',
			'settings.showUnwatchedCountDescription' => 'Display unwatched episode count on shows and seasons',
			'settings.showWatchedIndicators' => 'Show Watched Indicators',
			'settings.showWatchedIndicatorsDescription' => 'Display a checkmark on watched movies, shows, and episodes',
			'settings.showEpisodeNumberOnCards' => 'Show Episode Number on Cards',
			'settings.showEpisodeNumberOnCardsDescription' => 'Show season and episode number on episode cards',
			'settings.showSeasonPostersOnTabs' => 'Show Season Posters on Tabs',
			'settings.showSeasonPostersOnTabsDescription' => 'Show each season\'s poster above its tab',
			'settings.tvFullCardLayout' => 'Full TV Cards',
			'settings.tvFullCardLayoutDescription' => 'Use image-only TV cards with actor names overlaid',
			'settings.focusGlow' => 'Focus Glow',
			'settings.focusGlowDescription' => 'Draw a soft glow around the focused card',
			'settings.visualEffects' => 'Visual Effects',
			'settings.visualEffectsAuto' => 'Auto',
			'settings.visualEffectsAutoDescription' => 'Reduce effects automatically on low-power devices',
			'settings.visualEffectsFull' => 'Full',
			'settings.visualEffectsReduced' => 'Reduced',
			'settings.visualEffectsReducedDescription' => 'Fewer animations and lower-resolution artwork',
			'settings.hideSpoilers' => 'Hide Spoilers for Unwatched Episodes',
			'settings.hideSpoilersDescription' => 'Blur thumbnails and descriptions for unwatched episodes',
			'settings.playerBackend' => 'Player Backend',
			'settings.playerBackendDescription' => 'mpv plays more formats and enables more features — recommended. ExoPlayer helps if playback fails or stutters on this device.',
			'settings.exoPlayer' => 'ExoPlayer',
			'settings.mpv' => 'mpv',
			'settings.hardwareDecoding' => 'Hardware Decoding',
			'settings.hardwareDecodingDescription' => 'Use hardware acceleration when available',
			'settings.playbackBuffer' => 'Playback Buffer',
			'settings.playbackBufferAuto' => 'Auto (Recommended)',
			'settings.playbackBufferLarge' => 'Large',
			'settings.playbackBufferExtraLarge' => 'Extra Large',
			'settings.playbackBufferDescription' => 'Buffer more ahead to guard against unstable connections.',
			'settings.defaultQualityTitle' => 'Streaming Quality',
			'settings.streamingQualityOriginalHint' => 'Plays the file exactly as stored — best quality, uses the most bandwidth',
			'settings.cellularQualityTitle' => 'Streaming Quality on Mobile Data',
			'settings.cellularQualitySameAsDefault' => 'Same as Streaming Quality',
			'settings.directPlayCoveredQuality' => 'Don\'t Convert Files That Already Fit',
			'settings.directPlayCoveredQualityDescription' => 'Videos within the quality limit play as-is instead of being converted — faster and lighter on the server',
			'settings.videoCodecs' => 'Video Codecs',
			'settings.videoCodecsDescription' => 'Unchecked codecs are transcoded by the server',
			'settings.videoCodecsAlwaysAccepted' => 'Always accepted',
			'settings.musicQualityTitle' => 'Music Quality',
			'settings.subtitleStyling' => 'Subtitle Styling',
			'settings.subtitleStylingDescription' => 'Customize subtitle appearance',
			'settings.smallSkipDuration' => 'Small Skip Duration',
			'settings.largeSkipDuration' => 'Large Skip Duration',
			'settings.rewindOnResume' => 'Rewind on Resume',
			'settings.secondsUnit' => ({required Object seconds}) => '${seconds} seconds',
			'settings.defaultSleepTimer' => 'Default Sleep Timer',
			'settings.minutesUnit' => ({required Object minutes}) => '${minutes} minutes',
			'settings.rememberTrackSelections' => 'Remember track selections per show/movie',
			'settings.rememberTrackSelectionsDescription' => 'Remember audio and subtitle choices per title',
			'settings.rememberTrackSelectionsBackendRule' => 'Plex saves each choice on the server per file; Jellyfin also turns on the account\'s Remember selections; Emby is not supported',
			'settings.followServerTrackSelections' => 'Use server\'s per-episode track selections',
			'settings.followServerTrackSelectionsDescription' => 'On episode change, apply the audio and subtitles selected on the server instead of carrying over the current choice',
			'settings.resumeMusicOnLaunch' => 'Remember music session',
			'settings.resumeMusicOnLaunchDescription' => 'Reopen the last song paused where it left off when the app starts',
			'settings.showChapterMarkersOnTimeline' => 'Show chapter markers on seek bar',
			'settings.showChapterMarkersOnTimelineDescription' => 'Segment the seek bar at chapter boundaries',
			'settings.specialsOrdering' => 'Specials in episode order',
			'settings.specialsOrderingDescription' => 'Where specials play in a show\'s watch order',
			'settings.specialsOrderingServer' => 'Follow server order',
			'settings.specialsOrderingAirDate' => 'Interleave by air date',
			'settings.specialsOrderingLast' => 'After regular seasons',
			'settings.clickVideoTogglesPlayback' => 'Click on video to toggle play/pause',
			'settings.clickVideoTogglesPlaybackDescription' => 'Click video to play/pause instead of showing controls.',
			'settings.videoPlayerControls' => 'Video Player Controls',
			'settings.keyboardShortcuts' => 'Keyboard Shortcuts',
			'settings.keyboardShortcutsDescription' => 'Customize keyboard shortcuts',
			'settings.videoPlayerNavigation' => 'Video Player Navigation',
			'settings.videoPlayerNavigationDescription' => 'Use arrow keys to navigate video player controls',
			'settings.watchTogetherRelay' => 'Watch Together Relay',
			'settings.watchTogetherRelayDescription' => 'Public Open Watch Party relays unless you set your own',
			'settings.watchTogetherRelayHint' => 'https://my-relay.example.com',
			'settings.watchTogetherRelayInvalid' => 'Enter a valid HTTP or HTTPS relay base URL.',
			'settings.crashReporting' => 'Crash Reporting',
			'settings.crashReportingDescription' => 'Send crash reports to help improve the app',
			'settings.debugLogging' => 'Debug Logging',
			'settings.debugLoggingDescription' => 'Enable detailed logging for troubleshooting',
			'settings.viewLogs' => 'View Logs',
			'settings.viewLogsDescription' => 'View application logs',
			'settings.clearImageCache' => 'Clear Image Cache',
			'settings.clearImageCacheDescription' => 'Clear cached artwork and thumbnails. Images may load slower until downloaded again.',
			'settings.clearImageCacheSuccess' => 'Image cache cleared successfully',
			'settings.resetSettings' => 'Reset Settings',
			'settings.resetSettingsDescription' => 'Restore default settings. This can\'t be undone.',
			'settings.resetSettingsSuccess' => 'Settings reset successfully',
			'settings.backup' => 'Backup',
			'settings.exportSettings' => 'Export Settings',
			'settings.exportSettingsDescription' => 'Save your preferences to a file',
			'settings.exportSettingsSuccess' => 'Settings exported',
			'settings.importSettings' => 'Import Settings',
			'settings.importSettingsDescription' => 'Restore preferences from a file',
			'settings.importSettingsConfirm' => 'This will replace your current settings. Continue?',
			'settings.importSettingsSuccess' => 'Settings imported',
			'settings.importSettingsInvalidFile' => 'This file isn\'t a valid Luroka settings export',
			'settings.importSettingsNoUser' => 'Sign in before importing settings',
			'settings.shortcutsReset' => 'Shortcuts reset to defaults',
			'settings.resetShortcutsConfirm' => 'This will replace your custom shortcuts with the defaults. Continue?',
			'settings.about' => 'About',
			'settings.aboutDescription' => 'Version, credits, and legal information',
			'settings.updates' => 'Updates',
			'settings.updateAvailable' => 'Update Available',
			'settings.checkForUpdates' => 'Check for Updates',
			'settings.autoCheckUpdatesOnStartup' => 'Automatically check for updates on startup',
			'settings.autoCheckUpdatesOnStartupDescription' => 'Notify when an update is available at launch',
			'settings.validationErrorEnterNumber' => 'Please enter a valid number',
			'settings.validationErrorDuration' => ({required Object min, required Object max, required Object unit}) => 'Duration must be between ${min} and ${max} ${unit}',
			'settings.shortcutAlreadyAssigned' => ({required Object action}) => 'Shortcut already assigned to ${action}',
			'settings.shortcutUpdated' => ({required Object action}) => 'Shortcut updated for ${action}',
			'settings.saveFailed' => 'Could not save changes. Try again.',
			'settings.autoPlayAndSkip' => 'Auto-Play & Skip',
			'settings.autoPlayNextEpisode' => 'Auto-Play Next Episode',
			'settings.autoPlayNextEpisodeDescription' => 'Start the next episode automatically when one ends',
			'settings.shuffleStartsFromBeginning' => 'Shuffle Starts at Beginning',
			'settings.shuffleStartsFromBeginningDescription' => 'Start each episode at the beginning when shuffling instead of resuming',
			'settings.playNextCountdown' => 'Play Next Countdown',
			'settings.playNextCountdownImmediate' => 'Play immediately',
			'settings.skipIntroMode' => 'Skip Intro',
			'settings.skipIntroModeOffDescription' => 'Play intros normally without a skip button',
			'settings.skipIntroModeButtonDescription' => 'Show a skip button when an intro starts',
			'settings.skipIntroModeAutoDescription' => 'Skip intros automatically after the delay below',
			'settings.skipCreditsMode' => 'Skip Credits',
			'settings.skipCreditsModeOffDescription' => 'Play credits normally without a skip button',
			'settings.skipCreditsModeButtonDescription' => 'Show a skip button when credits start',
			'settings.skipCreditsModeAutoDescription' => 'Skip credits automatically and play the next episode',
			'settings.skipMarkerModeOff' => 'Off',
			'settings.skipMarkerModeButton' => 'Show button',
			'settings.skipMarkerModeAuto' => 'Automatic',
			'settings.forceSkipMarkerFallback' => 'Detect Skips from Chapter Names',
			'settings.forceSkipMarkerFallbackDescription' => 'Find intros and credits from chapter names even when the server provides its own skip markers',
			'settings.autoSkipDelay' => 'Auto Skip Delay',
			'settings.autoSkipDelayDescription' => ({required Object seconds}) => 'Wait ${seconds} seconds before auto-skipping',
			'settings.introPattern' => 'Intro Marker Pattern',
			'settings.introPatternDescription' => 'Regex pattern to match intro markers in chapter titles',
			'settings.creditsPattern' => 'Credits Marker Pattern',
			'settings.creditsPatternDescription' => 'Regex pattern to match credits markers in chapter titles',
			'settings.invalidRegex' => 'Invalid regular expression',
			'settings.regex' => 'Regular expression',
			'settings.downloads' => 'Downloads',
			'settings.downloadLocationDescription' => 'Choose where to store downloaded content',
			'settings.downloadLocationDefault' => 'Default (App Storage)',
			'settings.downloadLocationCustom' => 'Custom Location',
			'settings.selectFolder' => 'Select Folder',
			'settings.resetToDefault' => 'Reset to Default',
			'settings.currentPath' => ({required Object path}) => 'Current: ${path}',
			'settings.downloadLocationChanged' => 'Download location changed',
			'settings.downloadLocationReset' => 'Download location reset to default',
			'settings.downloadLocationInvalid' => 'Selected folder is not writable',
			'settings.downloadLocationPickerUnavailable' => 'Folder selection is not available on this device',
			'settings.downloadOnWifiOnly' => 'Download on Wi-Fi only',
			'settings.downloadOnWifiOnlyDescription' => 'Prevent downloads when on cellular data',
			'settings.downloadWifiScope' => 'Applies to all profiles and downloads on this device.',
			'settings.autoRemoveWatchedDownloads' => 'Auto-remove watched downloads',
			'settings.autoRemoveWatchedDownloadsDescription' => 'Delete watched downloads automatically',
			'settings.cellularDownloadBlocked' => 'Downloads are blocked on cellular. Use Wi-Fi or change the setting.',
			'settings.maxVolume' => 'Maximum Volume',
			'settings.maxVolumeDescription' => 'Allow volume boost above 100% for quiet media',
			'settings.maxVolumePercent' => ({required Object percent}) => '${percent}%',
			'settings.discordRichPresence' => 'Discord Rich Presence',
			'settings.discordRichPresenceDescription' => 'Show what you\'re watching on Discord',
			'settings.services' => 'Integrations',
			'settings.servicesDescription' => 'Link Trakt, MyAnimeList, Seerr, and more',
			'settings.manageLibrariesDescription' => 'Reorder and hide libraries',
			'settings.companionRemoteServer' => 'Companion Remote Server',
			'settings.companionRemoteServerDescription' => 'Allow mobile devices on your network to control this app',
			'settings.companionRemoteServerStartFailed' => 'Couldn\'t start the companion server',
			'settings.companionRemoteServerStopFailed' => 'Couldn\'t stop the companion server',
			'settings.autoPip' => 'Auto Picture-in-Picture',
			'settings.autoPipDescription' => 'Automatically enter picture-in-picture when you leave the app during playback',
			'settings.matchContentFrameRate' => 'Match Content Frame Rate',
			'settings.matchContentFrameRateDescription' => 'Switch the display to the video\'s frame rate, so movies play without judder',
			'settings.matchContentResolution' => 'Match Content Resolution',
			'settings.matchContentResolutionDescription' => 'Switch the display to the video\'s native resolution so your TV handles upscaling. Menus and subtitles are upscaled too during playback',
			'settings.matchRefreshRate' => 'Match Refresh Rate',
			'settings.matchRefreshRateDescription' => 'Match display refresh rate in fullscreen',
			'settings.matchDynamicRange' => 'Match Dynamic Range',
			'settings.matchDynamicRangeDescription' => 'Switch HDR on for HDR content, then back to SDR',
			'settings.displaySwitchDelay' => 'Display Switch Delay',
			'settings.tunneledPlayback' => 'Tunneled Playback',
			'settings.tunneledPlaybackDescription' => 'Use video tunneling. Disable if HDR playback shows black video or motion stutters.',
			'settings.audioPassthrough' => 'Audio Passthrough',
			'settings.audioPassthroughDescription' => 'Send Dolby/DTS audio to your receiver or TV without re-encoding, preserving surround sound. Turn off if you have no sound.',
			'settings.audioPassthroughDescriptionApple' => 'Use Apple\'s native Dolby decoder for Dolby Digital Plus, including Atmos. DTS and TrueHD still play as multichannel PCM. Turn off if you have no sound.',
			'settings.audioPassthroughDescriptionAppleSpatial' => 'Use Apple\'s native Dolby decoder for Dolby Digital Plus, including Atmos. On iOS, iPadOS and tvOS 26 or later, TrueHD Atmos and DTS:X play as spatial audio. Other DTS and TrueHD tracks play as multichannel PCM. Turn off if you have no sound.',
			'settings.audioPassthroughOverriddenByNormalization' => 'Off while loudness normalization is on',
			'settings.audioChannelLimit' => 'Audio Channels',
			'settings.audioChannelLimitDescription' => 'Mix decoded audio down for speakers, headphones, or HDMI setups that cannot play every channel',
			'settings.audioChannelLimitOriginal' => 'Original',
			'settings.audioChannelLimitOriginalDescription' => 'Play every channel in the track',
			'settings.audioChannelLimitSurround51' => 'Up to 5.1',
			'settings.audioChannelLimitSurround51Description' => 'Mix 7.1 down to 5.1 for TVs and receivers that only take 5.1 PCM. Passthrough is unaffected.',
			'settings.audioChannelLimitStereo' => 'Stereo',
			'settings.audioChannelLimitStereoDescription' => 'Mix down to two channels for stereo speakers or headphones. Turns passthrough off.',
			'settings.downmixCenterBoost' => 'Center Channel Boost',
			'settings.downmixCenterBoostValue' => ({required Object db}) => '${db} dB',
			'settings.downmixCenterBoostLabel' => 'Boost (dB)',
			'settings.downmixCenterBoostShort' => 'dB',
			'settings.audioDownmixNormalize' => 'Normalize Volume on Downmix',
			'settings.audioDownmixNormalizeDescription' => 'Lower the mix to prevent clipping. Turn off to keep the original volume (may distort loud scenes).',
			'settings.dvConversionMode' => 'Dolby Vision Conversion',
			'settings.dvConversionModeDescription' => 'Choose how Dolby Vision Profile 7 files are handled.',
			'settings.dvConversionAuto' => 'Auto',
			'settings.dvConversionNative' => 'Native / Disabled',
			'settings.dvConversionDv81' => 'P7 → P8.1',
			'settings.dvConversionHevcStrip' => 'P7 → HEVC',
			'settings.dvConversionAutoDescription' => 'Use device capability detection and normal fallback behavior',
			'settings.dvConversionNativeDescription' => 'Force native DV7 and suppress DV conversion retry',
			'settings.dvConversionDv81Description' => 'Force inline RPU conversion to Dolby Vision profile 8.1',
			'settings.dvConversionHevcStripDescription' => 'Strip Dolby Vision RPU/EL layers and present plain HEVC',
			'settings.disableDolbyVision' => 'Disable Dolby Vision',
			'settings.disableDolbyVisionDescription' => 'Play the file\'s HDR10 or HLG layer instead of Dolby Vision, when it has one',
			'settings.hdrSdrConversion' => 'HDR to SDR Conversion',
			'settings.hdrSdrConversionDescription' => 'Choose what converts HDR video when the display can\'t show HDR.',
			'settings.hdrSdrConversionAuto' => 'Auto',
			'settings.hdrSdrConversionAutoDescription' => 'Let the app pick what works best on this device',
			'settings.hdrSdrConversionDevice' => 'Device',
			'settings.hdrSdrConversionDeviceDescription' => 'Your device\'s video hardware converts it. Fastest, but colors depend on the device',
			'settings.hdrSdrConversionPlayer' => 'Player',
			'settings.hdrSdrConversionPlayerDescription' => 'The player converts it. Consistent colors, but 4K may stutter on low-end TV boxes',
			'settings.deinterlace' => 'Deinterlacing',
			'settings.deinterlaceDescription' => 'Fix jagged edges in old TV recordings and DVDs (mpv player only)',
			'settings.deinterlaceOff' => 'Off',
			'settings.deinterlaceOffDescription' => 'Show interlaced video as it is decoded',
			'settings.deinterlaceVideo' => 'Video',
			'settings.deinterlaceVideoDescription' => 'Turn each field into a full frame. For video shot for TV, like sports, news, and concerts',
			'settings.deinterlaceFilm' => 'Film',
			'settings.deinterlaceFilmDescription' => 'Restore the original frames of film and animation telecined to 29.97 fps, common on NTSC DVDs. Video shot for TV stutters. Live TV uses Video',
			'settings.requireProfileSelectionOnOpen' => 'Ask for profile on app open',
			'settings.requireProfileSelectionOnOpenDescription' => 'Show profile selection every time the app is opened',
			'settings.forceTvMode' => 'Force TV mode',
			'settings.forceTvModeKeepTitle' => 'Keep TV layout?',
			'settings.forceTvModeKeepBody' => ({required Object seconds}) => 'TV layout is designed for remote controls. Reverting to the normal layout in ${seconds} s.',
			'settings.forceTvModeKeepConfirm' => 'Keep TV layout',
			'settings.forceTvModeReverted' => 'TV layout reverted',
			'settings.forceTvModeDescription' => 'Force TV layout. For devices that don\'t auto-detect. Requires restart.',
			'settings.startInFullscreen' => 'Start in fullscreen',
			'settings.startInFullscreenDescription' => 'Open Luroka in fullscreen mode at launch',
			'settings.exitFullscreenOnPlayerClose' => 'Exit fullscreen on player close',
			'settings.exitFullscreenOnPlayerCloseDescription' => 'Automatically exit fullscreen when closing the video player',
			'settings.autoHidePerformanceOverlay' => 'Auto-Hide Performance Overlay',
			'settings.autoHidePerformanceOverlayDescription' => 'Fade the performance overlay with the playback controls',
			'settings.showNavBarLabels' => 'Show Navigation Bar Labels',
			'settings.showNavBarLabelsDescription' => 'Display text labels under navigation bar icons',
			'settings.startupSection' => 'Startup Section',
			'settings.showExploreTab' => 'Show Explore Tab',
			'settings.showExploreTabDescription' => 'Display the Explore tab with content from Plex Discover and connected trackers',
			'settings.liveTvDefaultFavorites' => 'Default to Favorite Channels',
			'settings.liveTvDefaultFavoritesDescription' => 'Show only favorite channels when opening Live TV',
			'settings.general' => 'General',
			'settings.generalDescription' => 'Language, startup, and window behavior',
			'settings.languageAndRegion' => 'Language & Region',
			'settings.startup' => 'Startup',
			'settings.display' => 'Display',
			_ => null,
		} ?? switch (path) {
			'settings.libraryAndCards' => 'Library & Cards',
			'settings.homeScreen' => 'Home Screen',
			'settings.navigation' => 'Navigation',
			'settings.window' => 'Window',
			'settings.liveTv' => 'Live TV',
			'settings.player' => 'Player',
			'settings.videoAndDisplay' => 'Video & Display',
			'settings.audio' => 'Audio',
			'settings.quality' => 'Quality',
			'settings.subtitles' => 'Subtitles',
			'settings.seekAndTiming' => 'Seek & Timing',
			'settings.behavior' => 'Behavior',
			'settings.gestures' => 'Gestures',
			'settings.gestureBrightnessSwipe' => 'Brightness Swipe',
			'settings.gestureBrightnessSwipeDescription' => 'Swipe up or down on the left edge to adjust brightness',
			'settings.gestureVolumeSwipe' => 'Volume Swipe',
			'settings.gestureVolumeSwipeDescription' => 'Swipe up or down on the right edge to adjust volume',
			'settings.gesturePinchToZoom' => 'Pinch to Zoom',
			'settings.gesturePinchToZoomDescription' => 'Pinch on the video to zoom in or out',
			'settings.rememberBrightnessLevel' => 'Remember Brightness Level',
			'settings.rememberBrightnessLevelDescription' => 'Start playback at the brightness set by the last swipe',
			'settings.controls' => 'Controls',
			'settings.rememberPlayerChanges' => 'Remember Player Changes',
			'settings.rememberPlayerChangesDescription' => 'Save changes made during playback and reuse them next time',
			'settings.scopePlaybackSpeed' => 'Playback Speed',
			'settings.scopeShaderPreset' => 'Shader Preset',
			'settings.scopeAspectRatio' => 'Aspect Ratio',
			'settings.scopeSyncOffsets' => 'Audio & Subtitle Sync',
			'settings.playerScopeOff' => 'Don\'t save',
			'settings.playerScopeGlobal' => 'Everywhere',
			'settings.playerScopeLibrary' => 'Per library',
			'settings.playerScopeTitle' => 'Per show or movie',
			'settings.exportDialogTitle' => 'Export Luroka settings',
			'settings.velvetHourTheme' => 'Velvet Hour',
			'themeEditor.builtIn' => 'Built-in',
			'themeEditor.presets' => 'Presets',
			'themeEditor.custom' => 'Custom',
			'themeEditor.customEmpty' => 'Not created yet',
			'themeEditor.editCustom' => 'Edit custom theme',
			'themeEditor.editCustomDescription' => 'Choose every color yourself',
			'themeEditor.locked' => 'Unlock with Supporter',
			'themeEditor.savedLocked' => 'Saved — unlocks with Supporter',
			'themeEditor.title' => 'Custom Theme',
			'themeEditor.startFrom' => 'Start from',
			'themeEditor.startFromDescription' => 'Copy all colors from another theme',
			'themeEditor.colors' => 'Colors',
			'themeEditor.preview' => 'Preview',
			'themeEditor.slots.bg' => 'Background',
			'themeEditor.slots.surface' => 'Surface',
			'themeEditor.slots.outline' => 'Outline',
			'themeEditor.slots.text' => 'Text',
			'themeEditor.slots.textMuted' => 'Secondary text',
			'themeEditor.slots.accent' => 'Accent',
			'themeEditor.opacity' => 'Opacity',
			'themeEditor.hexHint' => '#RRGGBB or #AARRGGBB',
			'themeEditor.fromOtherThemes' => 'From other themes',
			'themeEditor.swatchLabel' => ({required Object theme, required Object color}) => '${theme} ${color}',
			'themeEditor.contrast.textOnBg' => 'Text on background',
			'themeEditor.contrast.textOnSurface' => 'Text on surface',
			'themeEditor.contrast.textMutedOnBg' => 'Secondary text on background',
			'themeEditor.contrast.textMutedOnSurface' => 'Secondary text on surface',
			'themeEditor.contrast.accentOnBg' => 'Accent on background',
			'themeEditor.contrast.accentOnSurface' => 'Accent on surface',
			'themeEditor.contrast.labelOnAccent' => 'Button label on accent',
			'themeEditor.lowContrast' => ({required Object pair, required Object ratio, required Object minimum}) => '${pair}: ${ratio}:1, below the recommended ${minimum}:1',
			'themeEditor.discardTitle' => 'Discard changes?',
			'themeEditor.discardMessage' => 'Your unsaved color changes will be lost.',
			'themeEditor.discard' => 'Discard',
			'themeEditor.previewCardTitle' => ({required Object number}) => 'Episode ${number}',
			'themeEditor.previewCardSubtitle' => ({required Object minutes}) => '${minutes} min left',
			'themeEditor.previewSwitch' => 'Autoplay',
			'themeEditor.previewMutedText' => 'Secondary text reads like this',
			'seriesBrowser.oneEpisode' => '1 episode',
			'seriesBrowser.watchedCount' => ({required Object count}) => '${count} watched',
			'seriesBrowser.episodeCount' => ({required Object count}) => '${count} episodes',
			'seriesBrowser.episodesFor' => ({required Object season}) => '${season} · Episodes',
			'seriesBrowser.enterHint' => 'Select: open season · ↓: episodes',
			'titlePage.genre' => 'Genre',
			'titlePage.remaining' => ({required Object time}) => '${time} remaining',
			'titlePage.continueEpisode' => ({required Object season, required Object episode}) => 'Continue S${season} E${episode}',
			'titlePage.watchlist' => 'Watchlist',
			'titlePage.more' => 'More',
			'tvMenus.appearanceDescription' => 'Theme, screen margins and posters',
			'lurokaPlayer.title' => 'Player settings',
			'lurokaPlayer.watch' => 'Watch',
			'lurokaPlayer.watchDescription' => 'Set the pace, wind down, and decide what plays next.',
			'lurokaPlayer.picture' => 'Picture settings',
			'lurokaPlayer.pictureDescription' => 'Zoom, HDR and video processing',
			'lurokaPlayer.sound' => 'Audio & subtitles',
			'lurokaPlayer.audioSettings' => 'Audio settings',
			'lurokaPlayer.soundDescription' => 'Timing, volume and audio output',
			'lurokaPlayer.chooseTracks' => 'Choose languages and subtitle tracks',
			'lurokaPlayer.tools' => 'Advanced',
			'lurokaPlayer.toolsDescription' => 'Playback information and diagnostics',
			'lurokaPlayer.preferences' => 'Playback preferences',
			'lurokaPlayer.preferencesDescription' => 'Your cinema, your defaults. Start with sound and captions, then fine-tune streaming and your screen.',
			'lurokaPlayer.streamPreferences' => 'Streaming quality',
			'lurokaPlayer.displayPreferences' => 'Display',
			'lurokaPlayer.enginePreferences' => 'Advanced player options',
			'lurokaPlayer.seekPreferences' => 'Seeking',
			'lurokaPlayer.watchPreferences' => 'Autoplay & skipping',
			'lurokaPlayer.rememberPreferences' => 'Remember preferences',
			'lurokaSettings.quickSetup' => 'Quick setup',
			'lurokaSettings.quickSetupDescription' => 'Start with the essentials: smoother TV browsing, a comfortable screen fit, your Home layout, and playback preferences.',
			'lurokaSettings.experience' => 'Your experience',
			'lurokaSettings.experienceDescription' => 'Make Luroka feel right: appearance, languages, playback, libraries, and screen time.',
			'lurokaSettings.remoteHint' => '↑ ↓ Browse categories  ·  → / Select Open options  ·  ← Return to categories',
			'playerChrome.browse' => 'Chapters & queue',
			'playerChrome.backToPlayback' => 'Back to playback',
			'playerChrome.nowPlaying' => 'NOW PLAYING',
			'playerChrome.options' => 'PLAYER OPTIONS',
			'tvLayout.screenMargins' => 'TV screen margins',
			'tvLayout.screenMarginsDescription' => 'Shrink the app\'s edges if your TV cuts off part of the picture',
			'tvLayout.screenMarginsDefault' => '0% (default)',
			'studios.checkingCopies' => 'Checking other libraries… Choose a known copy at any time.',
			'studios.incompleteCopies' => 'Some libraries could not be checked. Choose a known copy or cancel and retry.',
			'studios.partialFavorites' => 'Some favorites could not be loaded. Select Refresh to retry.',
			'studios.copyLookupFailedTitle' => 'Could not check all copies',
			'studios.copyLookupFailedMessage' => 'Some libraries did not respond. You can open one of the copies already found or cancel and try again.',
			'studios.openKnownCopies' => 'Show known copies',
			'studios.browseAll' => 'Browse all',
			'studios.titleCount' => ({required Object count}) => '${count} titles',
			'studios.topRated' => 'Top rated',
			'studios.mostWatched' => 'Most watched in your library',
			'studios.collection' => 'STUDIO COLLECTION',
			'studios.loadedTitles' => ({required Object count}) => '${count} titles loaded',
			'studios.sort' => 'Sort titles',
			'studios.sortTitleAscending' => 'Title A–Z',
			'studios.sortTitleDescending' => 'Title Z–A',
			'studios.sortNewest' => 'Newest release',
			'studios.sortOldest' => 'Oldest release',
			'studios.sortAdded' => 'Recently added',
			'studios.sortEpisodeAdded' => 'Recently added episode',
			'studios.sortRating' => 'Highest rated',
			'studios.title' => 'Browse by Studio',
			'studios.all' => 'All',
			'studios.movies' => 'Movies',
			'studios.shows' => 'TV Shows',
			'studios.loadMore' => 'Load more titles',
			'studios.empty' => 'No matching titles in your currently visible libraries.',
			'studios.retry' => 'Could not load more titles — select to retry',
			'studios.description' => 'Explore movies and shows from this studio in your libraries.',
			'dashboard.previousFeature' => 'Previous featured title',
			'dashboard.nextFeature' => 'Next featured title',
			'dashboard.cinemaHome' => 'HOME',
			'dashboard.episodeFallback' => 'TV episode',
			'dashboard.timeLeft' => ({required Object minutes}) => '${minutes} min left',
			'dashboard.timeLeftHours' => ({required Object hours, required Object minutes}) => '${hours}h ${minutes}m left',
			'dashboard.spoilerHidden' => 'Episode details hidden by your spoiler preference.',
			'dashboard.synopsisUnavailable' => 'Open Details to see more about this title.',
			'dashboard.yourSpace' => 'YOUR SPACE',
			'dashboard.title' => 'Your cinema.',
			'dashboard.subtitle' => 'Pick up a story, or find your next one.',
			'dashboard.featured' => 'LUROKA SPOTLIGHT',
			'dashboard.jumpBackIn' => 'Jump back in',
			'dashboard.episodeLabel' => ({required Object season, required Object episode}) => 'S${season} · E${episode}',
			'dashboard.anotherPick' => 'Another pick',
			'dashboard.exploreSeries' => 'Explore series',
			'dashboard.showFeatured' => 'Home Spotlight',
			'dashboard.showFeaturedDescription' => 'Show featured movies and shows at the top of Home.',
			'lurokaCatalog.aboutPerson' => 'IN THE SPOTLIGHT',
			'lurokaCatalog.biographyUnavailable' => 'A biography is not available from this server.',
			'lurokaCatalog.filmography' => 'Movies & shows in your libraries',
			'lurokaCatalog.recommended' => 'Discover',
			'lurokaCatalog.browse' => 'All titles',
			'lurokaCatalog.collections' => 'Collections',
			'lurokaCatalog.browseHint' => 'Explore your catalog. Shape the selection with filters and sorting.',
			'lurokaCatalog.recommendedHint' => 'Find your next story',
			'lurokaCatalog.details' => 'Behind the story',
			'referenceDetails.oneEpisodeLeft' => '1 episode left',
			'referenceDetails.playAll' => 'Play all',
			'referenceDetails.present' => 'Present',
			'referenceDetails.continuing' => 'Continuing',
			'referenceDetails.upNext' => 'Up next',
			'referenceDetails.episodesLeft' => ({required Object count}) => '${count} episodes left',
			'lurokaThemes.title' => 'Luroka cinema palettes',
			'lurokaThemes.coral' => 'Coral · midnight blue & sunset',
			'lurokaThemes.ocean' => 'Ocean · deep blue & ice',
			'lurokaThemes.jade' => 'Jade · evergreen & mint',
			'lurokaThemes.amethyst' => 'Amethyst · midnight violet',
			'lurokaThemes.darkThemes' => 'Dark cinema themes',
			'lurokaThemes.lightThemes' => 'Light cinema themes',
			'lurokaThemes.moreThemes' => 'More themes',
			'lurokaThemes.moreThemesDescription' => 'Browse additional palettes and custom colors',
			'lurokaThemes.obsidian' => 'Obsidian · pure black & champagne',
			'lurokaThemes.nocturne' => 'Nocturne · charcoal & champagne',
			'lurokaThemes.burgundy' => 'Burgundy · velvet wine & rose',
			'lurokaThemes.slate' => 'Slate · graphite & periwinkle',
			'lurokaThemes.espresso' => 'Espresso · cocoa & caramel',
			'lurokaThemes.pearl' => 'Pearl · porcelain & sapphire',
			'lurokaThemes.linen' => 'Linen · warm ivory & terracotta',
			'lurokaThemes.sunrise' => 'Sunrise · peach & coral',
			'lurokaThemes.coastal' => 'Coastal · mist & ocean teal',
			'lurokaThemes.latte' => 'Latte · cream & caramel',
			'lurokaThemes.sage' => 'Sage · soft green & eucalyptus',
			'lurokaThemes.lavender' => 'Lavender · lilac & deep violet',
			'customPerformance.title' => 'Performance & effects',
			'customPerformance.fireStickMode' => 'Low-power device mode',
			'customPerformance.description' => 'Use reduced effects, static backdrops, artwork capped at 720p, and a 40 MiB image cache. While enabled, this overrides Visual effects; turning it off restores your Visual effects preference.',
			'customPerformance.detailsTitle' => 'Performance details',
			'customPerformance.details' => 'Active effects, image-cache limit, and browsing performance measurements',
			'customPerformance.effectsTier' => 'Active effects tier',
			'customPerformance.imageCache' => 'Image-cache limit',
			'customPerformance.measurement' => 'Browsing measurement',
			'customPerformance.measureInstructions' => 'Start a 20-second sample, go back to Home, and browse using the remote. Return here to see the results. Repeat the same actions with the mode on and off to compare. This measures Flutter UI work, not video decoder performance.',
			'customPerformance.startSample' => 'Start 20-second sample',
			'customPerformance.stopSample' => 'Finish sample now',
			'customPerformance.sampling' => 'Sampling — return to Home and browse. Results will be kept here.',
			'customPerformance.frames' => 'Frames sampled',
			'customPerformance.slowFrames' => 'Frames over budget',
			'customPerformance.buildP95' => 'UI build time (95th percentile)',
			'customPerformance.rasterP95' => 'Raster time (95th percentile)',
			'customPerformance.frameBudget' => 'Per-frame budget',
			'customPerformance.processMemory' => 'App process memory at sample end',
			'customPerformance.noFrames' => 'No rendered frames were captured. Start another sample and browse the app.',
			'homeLayout.manageStudios' => 'Choose and order studios',
			'homeLayout.manageStudiosDescription' => 'Choose which studios appear for this profile, and arrange their order.',
			'homeLayout.studioUnavailable' => 'Only studios found in your selected libraries appear on Home.',
			'homeLayout.showAllStudios' => 'Show all studios',
			'homeLayout.hideAllStudios' => 'Hide all studios',
			'homeLayout.reorderStudio' => 'Change studio order',
			'homeLayout.episodeThumbnails' => 'Episode images in Continue Watching',
			'homeLayout.episodeThumbnailsDescription' => 'Show episode images instead of series or season posters in Continue Watching and Next Up.',
			'homeLayout.spotlightSource' => 'Spotlight source',
			'homeLayout.spotlightSourceDescription' => 'For You uses this profile’s viewing activity on this device, together with favorites and library titles.',
			'homeLayout.spotlightForYou' => 'For You',
			'homeLayout.spotlightForYouDescription' => 'A mix of what you’re watching, favorites, new additions and trends, using this profile’s viewing activity on this device.',
			'homeLayout.spotlightTrending' => 'Trending',
			'homeLayout.spotlightTrendingDescription' => 'Popular movies and shows in your libraries.',
			'homeLayout.spotlightContinue' => 'Continue Watching',
			'homeLayout.spotlightContinueDescription' => 'Titles you’ve started and episodes you can continue.',
			'homeLayout.spotlightFavorites' => 'From your favorites',
			'homeLayout.spotlightInspired' => 'Inspired by your viewing',
			'homeLayout.spotlightNextUp' => 'Next up',
			'homeLayout.title' => 'Personalize Home',
			'homeLayout.description' => 'Choose the row order and visibility for this profile. Select a row to move or hide it.',
			'homeLayout.rows' => 'Home rows',
			'homeLayout.progressLayout' => 'Continue Watching and Next Up',
			'homeLayout.progressCombined' => 'Combined in one row',
			'homeLayout.progressSeparate' => 'Separate rows',
			'homeLayout.progressDescription' => 'Separate Next Up when supported by the server. Other servers stay combined.',
			'homeLayout.visible' => 'Visible',
			'homeLayout.hidden' => 'Hidden',
			'homeLayout.showRow' => 'Show row',
			'homeLayout.hideRow' => 'Hide row',
			'homeLayout.moveUp' => 'Move up',
			'homeLayout.moveDown' => 'Move down',
			'homeLayout.pinnedCollections' => 'Pinned collections',
			'homeLayout.pinInstructions' => 'Open a collection\'s menu and choose Pin to Home. Select a pinned collection here to remove its shortcut.',
			'homeLayout.pinCollection' => 'Pin to Home',
			'homeLayout.unpinCollection' => 'Unpin from Home',
			'homeLayout.reset' => 'Restore default rows',
			'homeLayout.resetDescription' => 'Restore the original row order and show all rows for this profile? Your pinned collections will be kept.',
			'homeLayout.saveFailed' => 'Could not save your home layout. Please try again.',
			'homeLayout.emptyHint' => 'Rows may be hidden. Open Personalize Home to show them again.',
			'screenTime.title' => 'Screen Time',
			'screenTime.description' => 'See time spent watching video on this profile',
			'screenTime.today' => 'Today',
			'screenTime.thisWeek' => 'This Week',
			'screenTime.thisMonth' => 'This Month',
			'screenTime.lessThanMinute' => '< 1 min',
			'screenTime.minutes' => ({required Object count}) => '${count} min',
			'screenTime.hours' => ({required Object count}) => '${count} hr',
			'screenTime.hoursMinutes' => ({required Object hours, required Object minutes}) => '${hours} hr ${minutes} min',
			'activityStats.title' => 'Viewing statistics',
			'activityStats.period' => 'Period',
			'activityStats.last7Days' => '7 days',
			'activityStats.last30Days' => '30 days',
			'activityStats.last90Days' => '90 days',
			'activityStats.thisYear' => 'Year',
			'activityStats.allTime' => 'All',
			'activityStats.heroAllTime' => 'All time',
			'activityStats.heroDailyAverage' => 'Daily average',
			'activityStats.consistency' => 'Consistency',
			'activityStats.currentStreak' => 'Current streak',
			'activityStats.dayCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n, one: '${n} day', other: '${n} days', ), 
			'activityStats.longestStreak' => 'Longest streak',
			'activityStats.bestDay' => 'Best day',
			'activityStats.bestWeek' => 'Best week',
			'activityStats.trendTitle' => 'Watch time',
			'activityStats.trendToday' => 'Today',
			'activityStats.gapDetail' => ({required Object stat, required Object range}) => '${stat} on ${range}',
			'activityStats.patternsTitle' => 'Your patterns',
			'activityStats.mostlyKind' => ({required Object kind}) => 'Mostly ${kind}',
			'activityStats.weekdayTitle' => 'By weekday',
			'activityStats.hoursTitle' => 'By time of day',
			'activityStats.amLabel' => 'AM',
			'activityStats.pmLabel' => 'PM',
			'activityStats.kindsTitle' => 'By category',
			'activityStats.kindMovie' => 'Movies',
			'activityStats.kindTv' => 'TV',
			'activityStats.kindLiveTv' => 'Live TV',
			'activityStats.kindMusic' => 'Music',
			'activityStats.kindOther' => 'Other',
			'activityStats.topTitlesTitle' => 'Most watched',
			'activityStats.sessionsTitle' => 'Recent sessions',
			'activityStats.recentViewingTitle' => 'Recent viewing',
			'activityStats.recentViewingHint' => 'Total time watched in the selected period. Dates show the latest viewing.',
			'activityStats.showMore' => 'Show more',
			'activityStats.sessionNoTitle' => 'Unidentified playback',
			'activityStats.emptyTitle' => 'Nothing here yet',
			'activityStats.emptyBody' => 'Watch something and your statistics will build up here.',
			'activityStats.noDataInPeriod' => 'No playback recorded in this period.',
			'activityStats.overview' => 'Overview',
			'activityStats.history' => 'History',
			'activityStats.patternsTab' => 'Patterns',
			'activityStats.gettingStarted' => 'Activity is just getting started. Viewing patterns will appear after a few active days.',
			'activityStats.monthlyRecap' => 'Monthly recap',
			'activityStats.measurementHint' => 'Time reflects recorded playback, not titles completed.',
			'activityStats.ledgerScope' => 'Activity comes from this profile’s local Luroka playback ledger. Server watch history and playback in other apps are not included.',
			'activityStats.watchedPeriod' => 'Watched this period',
			'activityStats.activeDays' => 'Active days',
			'activityStats.dailyAverage' => 'Daily average',
			'activityStats.previousPeriod' => 'Previous period',
			'activityStats.insufficientHistory' => 'Not enough history',
			'activityStats.drillDown' => 'View activity for these dates',
			'activityStats.searchHistory' => 'Search viewing history',
			'activityStats.allKinds' => 'All',
			'activityStats.moviesFilter' => 'Movies',
			'activityStats.episodesFilter' => 'Episodes',
			'activityStats.datesFilter' => 'Dates',
			'activityStats.clearDates' => 'Clear dates',
			'activityStats.noMatches' => 'No viewing matches these filters.',
			'activityStats.allHistory' => 'View all history',
			'activityStats.historyError' => 'Could not load history. Please try again.',
			'activityStats.titlesPlayed' => ({required Object count}) => '${count} titles played · episodes counted separately',
			'activityStats.monthWatched' => ({required Object duration}) => '${duration} watched this month',
			'activityStats.lifetimeSummary' => ({required Object total, required Object average}) => 'All time: ${total} · Daily average: ${average}',
			'activityStats.chartScale' => ({required Object duration}) => 'Scale: 0 – ${duration}',
			'activityStats.titlesPlayedLabel' => 'Titles played',
			'activityStats.playedHint' => 'Episodes count separately. Playback time does not indicate completion.',
			'search.hint' => 'Search movies, shows, music...',
			'search.tryDifferentTerm' => 'Try a different search term',
			'search.searchYourMedia' => 'Search your media',
			'search.enterTitleActorOrKeyword' => 'Enter a title, actor, or keyword',
			'search.people' => 'People',
			'search.recentSearches' => 'Recent searches',
			'search.clearHistory' => 'Clear history',
			'hotkeys.setShortcutFor' => ({required Object actionName}) => 'Set Shortcut for ${actionName}',
			'hotkeys.clearShortcut' => 'Clear shortcut',
			'hotkeys.noShortcutSet' => 'No shortcut set',
			'hotkeys.currentShortcut' => 'Current shortcut:',
			'hotkeys.pressToRecord' => 'Select to record a shortcut',
			'hotkeys.recordingShortcut' => 'Press the shortcut now',
			'hotkeys.actions.playPause' => 'Play/Pause',
			'hotkeys.actions.volumeUp' => 'Volume Up',
			'hotkeys.actions.volumeDown' => 'Volume Down',
			'hotkeys.actions.seekForward' => ({required Object seconds}) => 'Seek Forward (${seconds}s)',
			'hotkeys.actions.seekBackward' => ({required Object seconds}) => 'Seek Backward (${seconds}s)',
			'hotkeys.actions.fullscreenToggle' => 'Toggle Fullscreen',
			'hotkeys.actions.muteToggle' => 'Toggle Mute',
			'hotkeys.actions.subtitleToggle' => 'Toggle Subtitles',
			'hotkeys.actions.audioTrackNext' => 'Next Audio Track',
			'hotkeys.actions.subtitleTrackNext' => 'Next Subtitle Track',
			'hotkeys.actions.chapterNext' => 'Next Chapter',
			'hotkeys.actions.chapterPrevious' => 'Previous Chapter',
			'hotkeys.actions.episodeNext' => 'Next Episode',
			'hotkeys.actions.episodePrevious' => 'Previous Episode',
			'hotkeys.actions.speedIncrease' => 'Increase Speed',
			'hotkeys.actions.speedDecrease' => 'Decrease Speed',
			'hotkeys.actions.speedReset' => 'Reset Speed',
			'hotkeys.actions.zoomIn' => 'Zoom In',
			'hotkeys.actions.zoomOut' => 'Zoom Out',
			'hotkeys.actions.zoomReset' => 'Reset Zoom',
			'hotkeys.actions.subSeekNext' => 'Seek to Next Subtitle',
			'hotkeys.actions.subSeekPrev' => 'Seek to Previous Subtitle',
			'hotkeys.actions.shaderToggle' => 'Toggle Shaders',
			'hotkeys.actions.skipMarker' => 'Skip Intro/Credits',
			'hotkeys.actions.screenshot' => 'Take Screenshot',
			'fileInfo.title' => 'File Info',
			'fileInfo.overview' => 'Overview',
			'fileInfo.video' => 'Video',
			'fileInfo.audio' => 'Audio',
			'fileInfo.subtitles' => 'Subtitles',
			'fileInfo.images' => 'Embedded Images',
			'fileInfo.dataStreams' => 'Data Streams',
			'fileInfo.lyrics' => 'Lyrics',
			'fileInfo.file' => 'File',
			'fileInfo.attachments' => 'Attachments',
			'fileInfo.delivery' => 'Delivery',
			'fileInfo.versionCounter' => ({required Object index, required Object count}) => 'Version ${index} of ${count}',
			'fileInfo.fileCounter' => ({required Object index, required Object count}) => 'File ${index} of ${count}',
			'fileInfo.noStreams' => 'The server reported no streams for this file.',
			'fileInfo.copyPath' => 'Copy path',
			'fileInfo.pathCopied' => 'File path copied',
			'fileInfo.codec' => 'Codec',
			'fileInfo.codecTag' => 'Codec Tag',
			'fileInfo.resolution' => 'Resolution',
			'fileInfo.codedResolution' => 'Coded Resolution',
			'fileInfo.bitrate' => 'Bitrate',
			'fileInfo.frameRate' => 'Frame Rate',
			'fileInfo.rotation' => 'Rotation',
			'fileInfo.comment' => 'Comment',
			'fileInfo.audioDescription' => 'Audio Description',
			'fileInfo.headerCompression' => 'Header Compression',
			'fileInfo.sidecarFile' => 'Sidecar File',
			'fileInfo.transportTimestamp' => 'Transport Timestamp',
			'fileInfo.displayOffset' => 'Display Offset',
			'fileInfo.previewFailureCode' => 'Preview Failure Code',
			'fileInfo.previewRetries' => 'Preview Retries',
			'fileInfo.aspectRatio' => 'Aspect Ratio',
			'fileInfo.pixelAspectRatio' => 'Pixel Aspect Ratio',
			'fileInfo.profile' => 'Profile',
			'fileInfo.level' => 'Level',
			'fileInfo.bitDepth' => 'Bit Depth',
			'fileInfo.pixelFormat' => 'Pixel Format',
			'fileInfo.colorSpace' => 'Color Space',
			'fileInfo.colorRange' => 'Color Range',
			'fileInfo.colorPrimaries' => 'Color Primaries',
			'fileInfo.colorTransfer' => 'Color Transfer',
			'fileInfo.chromaSubsampling' => 'Chroma Subsampling',
			'fileInfo.chromaLocation' => 'Chroma Location',
			'fileInfo.scanType' => 'Scan Type',
			'fileInfo.interlaced' => 'Interlaced',
			'fileInfo.anamorphic' => 'Anamorphic',
			'fileInfo.referenceFrames' => 'Reference Frames',
			'fileInfo.dynamicRange' => 'Dynamic Range',
			'fileInfo.dolbyVision' => 'Dolby Vision',
			'fileInfo.dolbyVisionLevel' => 'Dolby Vision Level',
			'fileInfo.dolbyVisionVersion' => 'Dolby Vision Version',
			'fileInfo.dolbyVisionLayers' => 'Dolby Vision Layers',
			'fileInfo.baseLayerCompatibility' => 'Base Layer Compatibility',
			'fileInfo.avcBitstream' => 'AVC Bitstream',
			'fileInfo.nalLengthSize' => 'NAL Length Size',
			'fileInfo.scalingMatrix' => 'Custom Scaling Matrix',
			'fileInfo.streamIdentifier' => 'Stream Identifier',
			'fileInfo.streamIndex' => 'Stream Index',
			'fileInfo.streamId' => 'Stream ID',
			'fileInfo.language' => 'Language',
			'fileInfo.languageCode' => 'Language Code',
			'fileInfo.streamTitle' => 'Track Title',
			'fileInfo.channels' => 'Channels',
			'fileInfo.sampleRate' => 'Sample Rate',
			'fileInfo.spatialAudio' => 'Spatial Audio',
			'fileInfo.textBased' => 'Text Based',
			'fileInfo.subtitleFormat' => 'Sidecar Format',
			'fileInfo.provider' => 'Provider',
			'fileInfo.matchScore' => 'Match Score',
			'fileInfo.externalDelivery' => 'Can Be Served Separately',
			'fileInfo.sidecarPath' => 'Sidecar Path',
			'fileInfo.sourceStream' => 'Copied From',
			'fileInfo.temporary' => 'Temporary',
			'fileInfo.timeBase' => 'Time Base',
			'fileInfo.overallBitrate' => 'Overall Bitrate',
			'fileInfo.path' => 'Path',
			'fileInfo.fileName' => 'File Name',
			'fileInfo.size' => 'Size',
			'fileInfo.totalSize' => 'Total Size',
			'fileInfo.container' => 'Container',
			'fileInfo.duration' => 'Duration',
			'fileInfo.previewThumbnails' => 'Preview Thumbnails',
			'fileInfo.previewIndex' => 'Preview Index',
			'fileInfo.packetLength' => 'Packet Length',
			'fileInfo.filePresent' => 'File Present',
			'fileInfo.fileReadable' => 'Readable by Server',
			'fileInfo.streamPath' => 'Stream Path',
			'fileInfo.optimizedForStreaming' => 'Optimized for Streaming',
			'fileInfo.has64bitOffsets' => '64-bit Offsets',
			'fileInfo.protocol' => 'Protocol',
			'fileInfo.mediaType' => 'Media Type',
			'fileInfo.sourceKind' => 'Source Kind',
			'fileInfo.optimizedVersion' => 'Optimized Version',
			'fileInfo.optimizationTarget' => 'Optimization Target',
			'fileInfo.deletedAt' => 'Deleted',
			'fileInfo.remoteSource' => 'Remote Source',
			'fileInfo.infiniteStream' => 'Infinite Stream',
			'fileInfo.directPlay' => 'Direct Play',
			'fileInfo.directStream' => 'Direct Stream',
			'fileInfo.transcoding' => 'Transcoding',
			'fileInfo.etag' => 'ETag',
			'fileInfo.versionId' => 'Version ID',
			'fileInfo.fileId' => 'File ID',
			'fileInfo.defaultAudioTrack' => 'Default Audio Track',
			'fileInfo.defaultSubtitleTrack' => 'Default Subtitle Track',
			'fileInfo.subtitlesOff' => 'Off',
			'fileInfo.flagDefault' => 'Default',
			'fileInfo.flagForced' => 'Forced',
			'fileInfo.flagSelected' => 'Selected',
			'fileInfo.flagExternal' => 'External',
			'fileInfo.flagHearingImpaired' => 'Hearing impaired',
			'fileInfo.flagDub' => 'Dub',
			'fileInfo.flagOriginal' => 'Original',
			'fileInfo.channelsMono' => 'Mono',
			'fileInfo.dolbyVisionProfile' => ({required Object profile}) => 'Profile ${profile}',
			'mediaMenu.markAsWatched' => 'Mark as Watched',
			'mediaMenu.markAsUnwatched' => 'Mark as Unwatched',
			'mediaMenu.clearProgress' => 'Clear progress',
			'mediaMenu.removeFromContinueWatching' => 'Remove from Continue Watching',
			'mediaMenu.viewDetails' => 'View details',
			'mediaMenu.goToSeries' => 'Go to series',
			'mediaMenu.shufflePlay' => 'Shuffle Play',
			'mediaMenu.shuffleNotAvailableOffline' => 'Shuffle not available offline',
			'mediaMenu.fileInfo' => 'File Info',
			'mediaMenu.deleteEpisodeFromServer' => 'Delete episode from server',
			'mediaMenu.deleteSeasonFromServer' => 'Delete season from server',
			'mediaMenu.deleteShowFromServer' => 'Delete show from server',
			'mediaMenu.deleteMovieFromServer' => 'Delete movie from server',
			'mediaMenu.deleteEpisodeTitle' => 'Delete this episode?',
			'mediaMenu.deleteSeasonTitle' => 'Delete this season?',
			'mediaMenu.deleteShowTitle' => 'Delete this show?',
			'mediaMenu.deleteMovieTitle' => 'Delete this movie?',
			'mediaMenu.deleteEpisodeConfirm' => 'Delete episode',
			'mediaMenu.deleteSeasonConfirm' => 'Delete season',
			'mediaMenu.deleteShowConfirm' => 'Delete show',
			'mediaMenu.deleteMovieConfirm' => 'Delete movie',
			'mediaMenu.deleteAnyway' => 'Delete anyway',
			'mediaMenu.confirmDeleteTarget' => ({required Object title}) => 'Permanently delete ${title} from your server?',
			'mediaMenu.deleteMultipleWarning' => 'This includes all episodes and their files.',
			'mediaMenu.deleteEpisodeCountWarning' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n, one: 'This deletes all ${n} episode in it, and its file.', other: 'This deletes all ${n} episodes in it, and their files.', ), 
			'mediaMenu.deleteMultiPartWarning' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n, one: 'This item is stored as ${n} file, which will be deleted.', other: 'This item is stored across ${n} files, and all of them will be deleted.', ), 
			'mediaMenu.deleteSharedFileHeading' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n, one: '${n} other episode is stored in the same file and will be deleted too:', other: '${n} other episodes are stored in the same file and will be deleted too:', ), 
			'mediaMenu.deleteScopeUnverifiedProbeFailed' => 'Luroka could not check which files this will remove, so it may delete more than the item named above. Cancel and try again, or delete anyway.',
			_ => null,
		} ?? switch (path) {
			'mediaMenu.deleteScopeUnverifiedNoFileInfo' => 'Your server did not provide file details for this item, so Luroka cannot check which files this will remove. It may delete more than the item named above.',
			'mediaMenu.mediaDeletedSuccessfully' => 'Media item deleted successfully',
			'mediaMenu.mediaFailedToDelete' => 'Failed to delete media item',
			'mediaMenu.rate' => 'Rate',
			'mediaMenu.playFromBeginning' => 'Play from Beginning',
			'mediaMenu.playVersion' => 'Play Version...',
			'rateSheet.title' => 'Rate',
			'rateSheet.server' => 'Server',
			'rateSheet.favorite' => 'Favorite',
			'rateSheet.favorited' => 'Favorited',
			'rateSheet.saved' => 'Saved',
			'rateSheet.notAvailable' => 'No match found',
			'rateSheet.noConnectedServices' => 'Connect a service in Settings to rate there.',
			'accessibility.mediaCardMovie' => ({required Object title}) => '${title}, movie',
			'accessibility.mediaCardShow' => ({required Object title}) => '${title}, TV show',
			'accessibility.mediaCardEpisode' => ({required Object title, required Object episodeInfo}) => '${title}, ${episodeInfo}',
			'accessibility.mediaCardSeason' => ({required Object title, required Object seasonInfo}) => '${title}, ${seasonInfo}',
			'accessibility.mediaCardWatched' => 'watched',
			'accessibility.mediaCardPartiallyWatched' => ({required Object percent}) => '${percent} percent watched',
			'accessibility.mediaCardUnwatched' => 'unwatched',
			'accessibility.tapToPlay' => 'Tap to play',
			'accessibility.decrease' => 'Decrease',
			'accessibility.increase' => 'Increase',
			'accessibility.decreaseValue' => ({required Object label}) => 'Decrease ${label}',
			'accessibility.increaseValue' => ({required Object label}) => 'Increase ${label}',
			'accessibility.hue' => 'Hue',
			'accessibility.saturation' => 'Saturation',
			'accessibility.brightness' => 'Brightness',
			'accessibility.hexColor' => 'Hex color',
			'accessibility.expandText' => 'Expand text',
			'accessibility.collapseText' => 'Collapse text',
			'accessibility.alphabetNavigation' => 'Alphabet navigation',
			'accessibility.alphabetScrollHint' => 'Swipe up or down to move by letter',
			'accessibility.rowColumnPosition' => ({required Object row, required Object rowCount, required Object column, required Object columnCount}) => 'Row ${row} of ${rowCount}, column ${column} of ${columnCount}',
			'accessibility.rowPosition' => ({required Object row, required Object rowCount}) => 'Row ${row} of ${rowCount}',
			'accessibility.autoScrollPlay' => 'Play auto-scroll',
			'accessibility.autoScrollPause' => 'Pause auto-scroll',
			'accessibility.hueShort' => 'H',
			'accessibility.saturationShort' => 'S',
			'accessibility.valueShort' => 'V',
			'tooltips.shufflePlay' => 'Shuffle play',
			'tooltips.playTrailer' => 'Play trailer',
			'tooltips.markAsWatched' => 'Mark as watched',
			'tooltips.markAsUnwatched' => 'Mark as unwatched',
			'audioTracks.track' => ({required Object n}) => 'Audio Track ${n}',
			'videoControls.audioLabel' => 'Audio',
			'videoControls.subtitlesLabel' => 'Subtitles',
			'videoControls.addTime' => ({required Object amount, required Object unit}) => '+${amount}${unit}',
			'videoControls.letterbox' => 'Letterbox',
			'videoControls.fillScreen' => 'Fill screen',
			'videoControls.stretch' => 'Stretch',
			'videoControls.lockRotation' => 'Lock rotation',
			'videoControls.unlockRotation' => 'Unlock rotation',
			'videoControls.timerActive' => 'Timer Active',
			'videoControls.playbackWillPauseIn' => ({required Object duration}) => 'Playback will pause in ${duration}',
			'videoControls.sleepTimerEndOfVideo' => 'End of current video',
			'videoControls.sleepTimerStopAtHeader' => 'Stop at',
			'videoControls.sleepTimerDurationHeader' => 'Timer',
			'videoControls.playbackWillPauseAtEnd' => 'Playback will pause at the end of this video',
			'videoControls.stillWatching' => 'Still watching?',
			'videoControls.pausingIn' => ({required Object seconds}) => 'Pausing in ${seconds}s',
			'videoControls.continueWatching' => 'Continue',
			'videoControls.autoPlayNext' => 'Auto-Play Next',
			'videoControls.playNext' => 'Play Next',
			'videoControls.playButton' => 'Play',
			'videoControls.pauseButton' => 'Pause',
			'videoControls.playbackPaused' => 'Paused',
			'videoControls.playbackResumed' => 'Playing',
			'videoControls.loadingVideo' => 'Loading video',
			'videoControls.showPlaybackControls' => 'Show playback controls',
			'videoControls.hidePlaybackControls' => 'Hide playback controls',
			'videoControls.seekBackwardButton' => ({required Object seconds}) => 'Seek backward ${seconds} seconds',
			'videoControls.seekForwardButton' => ({required Object seconds}) => 'Seek forward ${seconds} seconds',
			'videoControls.previousButton' => 'Previous episode',
			'videoControls.nextButton' => 'Next episode',
			'videoControls.previousChapterButton' => 'Previous chapter',
			'videoControls.nextChapterButton' => 'Next chapter',
			'videoControls.muteButton' => 'Mute',
			'videoControls.unmuteButton' => 'Unmute',
			'videoControls.settingsButton' => 'Playback Settings',
			'videoControls.infoButton' => 'Info',
			'videoControls.tracksButton' => 'Audio & Subtitles',
			'videoControls.chaptersButton' => 'Chapters',
			'videoControls.versionQualityButton' => 'Version & Quality',
			'videoControls.versionColumnHeader' => 'Version',
			'videoControls.qualityColumnHeader' => 'Quality',
			'videoControls.qualityOriginal' => 'Original',
			'videoControls.qualityPresetLabel' => ({required Object resolution, required Object bitrate}) => '${resolution}p ${bitrate} Mbps',
			'videoControls.transcodeUnavailableFallback' => 'Transcoding unavailable — playing original quality',
			'videoControls.subtitleUnavailableFallback' => 'Selected subtitles could not be loaded — continuing without subtitles',
			'videoControls.pipButton' => 'Picture-in-Picture mode',
			'videoControls.aspectRatioButton' => 'Aspect ratio',
			'videoControls.ambientLighting' => 'Ambient lighting',
			'videoControls.fullscreenButton' => 'Enter fullscreen',
			'videoControls.exitFullscreenButton' => 'Exit fullscreen',
			'videoControls.alwaysOnTopButton' => 'Always on top',
			'videoControls.rotationLockButton' => 'Rotation lock',
			'videoControls.lockScreen' => 'Lock screen',
			'videoControls.screenLockButton' => 'Screen lock',
			'videoControls.longPressToUnlock' => 'Long press to unlock',
			'videoControls.timelineSlider' => 'Video timeline',
			'videoControls.volumeSlider' => 'Volume level',
			'videoControls.endsAt' => ({required Object time}) => 'Ends at ${time}',
			'videoControls.pipActive' => 'Playing in Picture-in-Picture',
			'videoControls.pipFailed' => 'Picture-in-picture failed to start',
			'videoControls.screenshotSaved' => 'Screenshot saved',
			'videoControls.screenshotFailed' => 'Couldn\'t take a screenshot',
			'videoControls.zoomPercent' => ({required Object percent}) => 'Zoom ${percent}%',
			'videoControls.volumePercent' => ({required Object percent}) => 'Volume ${percent}%',
			'videoControls.pipErrors.androidVersion' => 'Requires Android 8.0 or newer',
			'videoControls.pipErrors.iosVersion' => 'Requires iOS 15.0 or newer',
			'videoControls.pipErrors.permissionDisabled' => 'Picture-in-picture is disabled. Enable it in system settings.',
			'videoControls.pipErrors.notSupported' => 'Device doesn\'t support picture-in-picture mode',
			'videoControls.pipErrors.voSwitchFailed' => 'Failed to switch video output for picture-in-picture',
			'videoControls.pipErrors.failed' => 'Picture-in-picture failed to start',
			'videoControls.pipErrors.prepareFailed' => 'Picture-in-picture could not be prepared',
			'videoControls.pipErrors.unknown' => ({required Object error}) => 'An error occurred: ${error}',
			'videoControls.chapters' => 'Chapters',
			'videoControls.noChaptersAvailable' => 'No chapters available',
			'videoControls.queue' => 'Queue',
			'videoControls.noQueueItems' => 'No items in queue',
			'videoControls.noAudioDevicesAvailable' => 'No audio devices available',
			'videoControls.searchSubtitles' => 'Search Subtitles',
			'videoControls.language' => 'Language',
			'videoControls.noSubtitlesFound' => 'No subtitles found',
			'videoControls.subtitleDownloaded' => 'Subtitle downloaded',
			'videoControls.subtitleDownloadedNotApplied' => 'Subtitle downloaded, but it could not be selected',
			'videoControls.subtitleDownloadFailed' => 'Failed to download subtitle',
			'videoControls.searchLanguages' => 'Search languages...',
			'videoControls.skipIntro' => 'Skip Intro',
			'videoControls.skipCredits' => 'Skip Credits',
			'videoControls.nextEpisode' => 'Next Episode',
			'videoControls.subtitleTrack' => ({required Object n}) => 'Track ${n}',
			'videoControls.subtitleFile' => ({required Object name}) => 'Subtitle ${name}',
			'videoControls.forcedTrack' => ({required Object label}) => '${label} (Forced)',
			'videoControls.osdSubtitlesOff' => 'Subtitles: Off',
			'videoControls.osdSubtitles' => ({required Object track}) => 'Subtitles: ${track}',
			'videoControls.osdAudio' => ({required Object track}) => 'Audio: ${track}',
			'messages.markedAsWatched' => 'Marked as watched',
			'messages.markedAsUnwatched' => 'Marked as unwatched',
			'messages.markedAsWatchedOffline' => 'Marked as watched (will sync when online)',
			'messages.markedAsUnwatchedOffline' => 'Marked as unwatched (will sync when online)',
			'messages.autoRemovedWatchedDownload' => ({required Object title}) => 'Auto-removed: ${title}',
			'messages.autoRemovedWatchedDownloads' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n, one: 'Auto-removed ${n} watched download', other: 'Auto-removed ${n} watched downloads', ), 
			'messages.removedFromContinueWatching' => 'Removed from Continue Watching',
			'messages.errorLoading' => ({required Object error}) => 'Error: ${error}',
			'messages.searchPartialResults' => 'Some media servers could not be searched. Showing available results.',
			'messages.streamInterrupted' => 'The stream was interrupted. Press play or seek to retry.',
			'messages.liveStreamInterrupted' => 'The live stream was interrupted. Press play to retry.',
			'messages.fileInfoNotAvailable' => 'File information not available',
			'messages.playbackAuthenticationRequired' => 'Sign in to the media server again to play this item.',
			'messages.playbackServerUnavailable' => 'The media server is unavailable. Try again later.',
			'messages.playbackDataInvalid' => 'The server returned invalid playback information.',
			'messages.playbackCancelled' => 'Playback was canceled.',
			'messages.playbackFailed' => 'Playback could not be started.',
			'messages.playbackFailedDetail' => ({required Object error}) => 'Playback could not be started: ${error}',
			'messages.audioOutputFailed' => 'The audio output stopped responding. Check the TV or receiver\'s audio connection; if other apps have no sound either, restart the device.',
			'messages.mediaUnavailable' => 'This content is no longer available.',
			'messages.errorLoadingFileInfo' => ({required Object error}) => 'Error loading file info: ${error}',
			'messages.errorLoadingSeries' => 'Error loading series',
			'messages.musicNotSupported' => 'Music playback is not yet supported',
			'messages.noDescriptionAvailable' => 'No description available',
			'messages.noProfilesAvailable' => 'No profiles available',
			'messages.contactAdminForProfiles' => 'Contact your server administrator to add profiles',
			'messages.unableToDetermineLibrarySection' => 'Unable to determine library section for this item',
			'messages.logsCleared' => 'Logs cleared',
			'messages.logsCopied' => 'Logs copied to clipboard',
			'messages.noLogsAvailable' => 'No logs available',
			'messages.libraryScanning' => ({required Object title}) => 'Scanning "${title}"...',
			'messages.libraryScanStarted' => ({required Object title}) => 'Library scan started for "${title}"',
			'messages.libraryScanFailed' => ({required Object error}) => 'Failed to scan library: ${error}',
			'messages.metadataRefreshing' => ({required Object title}) => 'Refreshing metadata for "${title}"...',
			'messages.metadataRefreshStarted' => ({required Object title}) => 'Metadata refresh started for "${title}"',
			'messages.metadataRefreshFailed' => ({required Object error}) => 'Failed to refresh metadata: ${error}',
			'messages.logoutConfirm' => 'Are you sure you want to log out?',
			'messages.logoutDeviceConfirm' => 'Log out of Luroka on this device? All profiles, including Kids profiles, server accounts, and downloaded media will be removed from this device. You can sign in again later.',
			'messages.noSeasonsFound' => 'No seasons found',
			'messages.seasonsLoadFailed' => 'Couldn\'t load seasons',
			'messages.noEpisodesFound' => 'No episodes found in first season',
			'messages.noEpisodesFoundGeneral' => 'No episodes found',
			'messages.episodesLoadFailed' => 'Couldn\'t load episodes',
			'messages.noResultsFound' => 'No results found',
			'messages.sleepTimerSet' => ({required Object label}) => 'Sleep timer set for ${label}',
			'messages.noItemsAvailable' => 'No items available',
			'messages.failedToCreatePlayQueueNoItems' => 'Failed to create a play queue — no items',
			'messages.failedPlayback' => ({required Object action, required Object error}) => 'Failed to ${action}: ${error}',
			'messages.switchingToCompatiblePlayer' => 'Switching to compatible player...',
			'messages.serverLimitTitle' => 'Playback failed',
			'messages.serverLimitBody' => 'Server error (HTTP 500). A bandwidth/transcoding limit likely rejected this session. Ask the owner to adjust it.',
			'messages.mediaUnreadableTitle' => 'File unavailable',
			'messages.mediaUnreadableBody' => 'The server found this item but could not read its file (HTTP 404). The file was probably moved, deleted, or its storage is offline. Ask the server owner to check the file and rescan the library.',
			'messages.serverBusyTitle' => 'Stream unavailable',
			'messages.serverBusyBody' => 'The server kept refusing to stream this file (HTTP 503). It may be restarting, busy, or the file\'s storage may be offline. Try again in a moment — if it keeps happening, ask the server owner to check the server and the file\'s storage.',
			'messages.playbackNotAllowedTitle' => 'Playback not allowed',
			'messages.playbackNotAllowedBody' => 'The server refused to stream this item (HTTP 403). Your account may not have permission to play it, or the server may only allow playback on its local network.',
			'messages.logsUploaded' => 'Logs uploaded',
			'messages.logsUploadFailed' => 'Failed to upload logs',
			'messages.logId' => 'Log ID',
			'messages.burnedSubtitlesUseMenu' => 'Subtitles are burned into this stream. Change them from the subtitle menu.',
			'messages.noVideoUrl' => 'No video URL available',
			'messages.playbackNoMediaSources' => 'The server returned no playable media sources',
			'messages.playbackDataNotPrepared' => 'Playback was started before its data was ready',
			'messages.streamSelectionUnavailable' => 'Stream selection is not available for this source',
			'messages.streamSelectionFailed' => 'Could not apply the selected streams',
			'messages.trackSelectionNotRemembered' => 'This track choice applies to the current playback only.',
			'messages.serverUnavailableForProfile' => 'No server is available for the active profile',
			'sourceLibraries.title' => 'Your servers & libraries',
			'sourceLibraries.description' => 'Choose the libraries Luroka uses for Home, search, Discover availability and Studios. Home row order is customized separately.',
			'sourceLibraries.partial' => 'Some servers could not be checked. Your saved choices for those libraries are kept. Refresh to try again.',
			'sourceLibraries.loadFailed' => 'Could not load your libraries. Check the connection and try again.',
			'sourceLibraries.notSelected' => 'Not available in your selected libraries.',
			'sourceLibraries.checkOthers' => 'Check other connected sources',
			'sourceLibraries.otherSources' => 'Available on other connected sources',
			'sourceLibraries.playOnce' => 'Play once',
			'sourceLibraries.includeLibrary' => 'Include this library',
			'sourceLibraries.noOthers' => 'No copies found on other connected sources.',
			'sourceLibraries.chooseOne' => 'Choose at least one library to continue.',
			'subtitlingStyling.text' => 'Text',
			'subtitlingStyling.border' => 'Border',
			'subtitlingStyling.background' => 'Background',
			'subtitlingStyling.fontSize' => 'Font Size',
			'subtitlingStyling.textColor' => 'Text Color',
			'subtitlingStyling.borderSize' => 'Border Size',
			'subtitlingStyling.borderColor' => 'Border Color',
			'subtitlingStyling.backgroundOpacity' => 'Background Opacity',
			'subtitlingStyling.backgroundColor' => 'Background Color',
			'subtitlingStyling.position' => 'Position',
			'subtitlingStyling.assOverride' => 'ASS Override',
			'subtitlingStyling.overrideScale' => 'Scale',
			'subtitlingStyling.overrideForce' => 'Force',
			'subtitlingStyling.overrideStrip' => 'Remove styling',
			'subtitlingStyling.positionTop' => 'Top',
			'subtitlingStyling.positionBottom' => 'Bottom',
			'subtitlingStyling.useMargins' => 'Use margins',
			'subtitlingStyling.useMarginsDescription' => 'Allow text subtitles in the space outside the video. Styled subtitles may keep their original placement.',
			'subtitlingStyling.anchorToScreen' => 'Anchor to Screen',
			'subtitlingStyling.anchorToScreenDescription' => 'Show text subtitles in the black bars below widescreen video',
			'subtitlingStyling.bold' => 'Bold',
			'subtitlingStyling.italic' => 'Italic',
			'subtitlingStyling.renderResolution' => 'Render Resolution',
			'subtitlingStyling.renderResolutionScreen' => 'Screen resolution',
			'subtitlingStyling.renderResolutionVideo' => 'Video resolution',
			'mpvConfig.title' => 'mpv.conf',
			'mpvConfig.description' => 'Advanced video player settings',
			'mpvConfig.presets' => 'Presets',
			'mpvConfig.noPresets' => 'No saved presets',
			'mpvConfig.saveAsPreset' => 'Save as Preset...',
			'mpvConfig.presetName' => 'Preset Name',
			'mpvConfig.presetNameHint' => 'Enter a name for this preset',
			'mpvConfig.loadPreset' => 'Load',
			'mpvConfig.deletePreset' => 'Delete',
			'mpvConfig.presetSaved' => 'Preset saved',
			'mpvConfig.presetLoaded' => 'Preset loaded',
			'mpvConfig.presetDeleted' => 'Preset deleted',
			'mpvConfig.confirmDeletePreset' => 'Are you sure you want to delete this preset?',
			'mpvConfig.configPlaceholder' => 'gpu-api=vulkan\nhwdec=auto\n# comment',
			'mpvConfig.lineHint' => 'option=value',
			'mpvConfig.addLine' => 'Add line',
			'mpvConfig.removeLine' => 'Remove line',
			'mpvConfig.embeddedVoHint' => 'vo, gpu-context and gpu-api are ignored on Linux: embedded video always renders through vo=libmpv on the video plane, and gpu-next (which compute shaders like ArtCNN need) cannot run embedded.',
			'dialog.confirmAction' => 'Confirm Action',
			'profiles.manageProfiles' => 'Manage profiles',
			'profiles.quickAccess' => 'Quick access',
			'profiles.signOutDevice' => 'Sign out of this device',
			'profiles.addLurokaProfile' => 'Add Luroka profile',
			'profiles.switchingProfile' => 'Switching profile…',
			'profiles.deleteThisProfileTitle' => 'Delete this profile?',
			'profiles.deleteThisProfileMessage' => ({required Object displayName}) => 'Remove ${displayName}. Connections aren\'t affected.',
			'profiles.active' => 'Active',
			'profiles.manage' => 'Manage',
			'profiles.delete' => 'Delete',
			'profiles.signOut' => 'Sign out',
			'profiles.signOutPlexTitle' => 'Sign out of Plex?',
			'profiles.signOutPlexMessage' => ({required Object displayName}) => 'Remove ${displayName} and all Plex Home users? Sign back in anytime.',
			'profiles.signOutPlexDeleteDownloads' => 'Also delete downloads',
			'profiles.signOutPlexDeleteDownloadsDescription' => 'Otherwise they stay on this device and come back when you sign back in to this account.',
			'profiles.signedOutPlex' => 'Signed out of Plex.',
			'profiles.signOutFailed' => 'Sign out failed.',
			'profiles.sectionTitle' => 'Profiles',
			'profiles.summarySingle' => 'Add profiles to mix managed users and local identities',
			'profiles.summaryMultipleWithActive' => ({required Object count, required Object activeName}) => '${count} profiles · active: ${activeName}',
			'profiles.summaryMultiple' => ({required Object count}) => '${count} profiles',
			'profiles.removeConnectionTitle' => 'Remove connection?',
			'profiles.removeConnectionMessage' => ({required Object displayName, required Object connectionLabel}) => 'Remove ${displayName}\'s access to ${connectionLabel}. Other profiles keep it.',
			'profiles.deleteProfileTitle' => 'Delete profile?',
			'profiles.deleteProfileMessage' => ({required Object displayName}) => 'Remove ${displayName} and its connections. Servers stay available.',
			'profiles.profileNameLabel' => 'Profile name',
			'profiles.pinProtectionLabel' => 'PIN protection',
			'profiles.pinManagedByPlex' => 'PIN managed by Plex. Edit on plex.tv.',
			'profiles.noPinSetEditOnPlex' => 'No PIN set. To require one, edit the home user on plex.tv.',
			'profiles.setPin' => 'Set PIN',
			'profiles.setPinTitle' => 'Set PIN',
			'profiles.confirmPinTitle' => 'Confirm PIN',
			'profiles.pinSet' => 'PIN set',
			'profiles.changePin' => 'Change',
			'profiles.removePin' => 'Remove',
			'profiles.connectionsLabel' => 'Connections',
			'profiles.add' => 'Add',
			'profiles.deleteProfileButton' => 'Delete profile',
			'profiles.noConnectionsHint' => 'No connections — add one to use this profile.',
			'profiles.noConnections' => 'No connections',
			'profiles.plexHomeAccount' => 'Plex Home account',
			'profiles.plexAccountChip' => ({required Object account}) => 'Plex account: ${account}',
			'profiles.plexAccountUserChip' => ({required Object user, required Object account}) => '${user} via ${account}',
			'profiles.connectionDefault' => 'Default',
			'profiles.connectionAs' => ({required Object displayName}) => 'as ${displayName}',
			'profiles.makeDefault' => 'Make default',
			'profiles.removeConnection' => 'Remove',
			'profiles.profileRenamed' => 'Profile renamed.',
			'profiles.borrowAddTo' => ({required Object displayName}) => 'Add to ${displayName}',
			'profiles.borrowExplain' => 'Borrow another profile\'s connection. PIN-protected profiles require a PIN.',
			'profiles.borrowEmpty' => 'Nothing to borrow yet.',
			'profiles.borrowEmptySubtitle' => 'Connect Plex, Jellyfin, or Emby to another profile first.',
			'profiles.borrowLoadFailed' => 'Available connections could not be loaded. Try again.',
			'profiles.borrowFromProfile' => ({required Object displayName}) => 'From ${displayName}',
			'profiles.borrowConnectionBorrowed' => 'Connection borrowed.',
			'profiles.borrowFailed' => 'Failed to borrow connection.',
			'profiles.incorrectPin' => 'Incorrect PIN.',
			'profiles.incorrectPinTryAgain' => 'Incorrect PIN. Please try again.',
			'profiles.sourceProfileMissingParentAccount' => 'Source profile is missing its parent account.',
			'profiles.failedToLoadHomeUsers' => 'Could not load your Plex Home users. Check your connection and try again.',
			'profiles.failedToVerifyPin' => 'Failed to verify PIN.',
			'profiles.newProfile' => 'New profile',
			'profiles.profileNameHint' => 'e.g. Guests, Kids, Family Room',
			'profiles.pinProtectionOptional' => 'PIN protection (optional)',
			'profiles.pinExplain' => '4-digit PIN required to switch profiles.',
			'profiles.continueButton' => 'Continue',
			'profiles.pinsDontMatch' => 'PINs don\'t match',
			'profiles.tokenIdentityMismatch' => 'The Plex profile token resolved to an unexpected server',
			'connections.sectionTitle' => 'Servers & accounts',
			'connections.addConnection' => 'Add account or server',
			'connections.addConnectionSubtitleNoProfile' => 'Sign in with Plex or connect a Jellyfin or Emby server',
			'connections.addConnectionSubtitleScoped' => ({required Object displayName}) => 'Add to ${displayName}: Plex, Jellyfin, Emby, or another profile connection',
			'connections.sessionExpiredOne' => ({required Object name}) => 'Session expired for ${name}',
			'connections.sessionExpiredMany' => ({required Object count}) => 'Session expired for ${count} servers',
			'connections.accessDeniedOne' => ({required Object name}) => '${name} refused access for this account',
			'connections.accessDeniedMany' => ({required Object count}) => '${count} servers refused access for this account',
			'connections.signInAgain' => 'Sign in again',
			'connections.editMediaBrowserTitle' => ({required Object product}) => 'Edit ${product} connection',
			'connections.editMediaBrowserIntro' => ({required Object serverName}) => 'Add or remove URLs for ${serverName}. Luroka will use the reachable URL with the lowest latency.',
			'serversAccounts.title' => 'Servers & accounts',
			'serversAccounts.subtitle' => 'Sign-in status for your Plex, Jellyfin and Emby servers',
			'serversAccounts.online' => 'Online',
			'serversAccounts.offline' => 'Offline',
			'serversAccounts.unknown' => 'Not signed in here',
			'serversAccounts.usedByNone' => 'Not used by any profile',
			'serversAccounts.usedByOne' => ({required Object name}) => 'Used by ${name}',
			'serversAccounts.usedByMany' => ({required Object name, required Object count}) => 'Used by ${name} and ${count} more',
			'serversAccounts.serversOnline' => ({required Object online, required Object total}) => '${online} of ${total} servers online',
			'serversAccounts.noServers' => 'Nothing connected yet. Add your Plex account or a Jellyfin or Emby server.',
			'serversAccounts.editUrls' => 'Edit server URLs',
			'accountPreferences.sectionTitle' => 'Account preferences',
			'accountPreferences.hubSubtitleSingle' => ({required Object account}) => 'Audio, subtitle and library options saved on ${account}',
			'accountPreferences.hubSubtitleMultiple' => ({required Object count}) => 'Audio, subtitle and library options saved on ${count} accounts',
			'accountPreferences.pickAccount' => 'Every account stores its own preferences. Pick the one to edit.',
			'accountPreferences.storedOnAccount' => 'These options are saved on the server account and shared by every Luroka profile and app using that account, including on other devices.',
			'accountPreferences.noAccounts' => 'No accounts to configure',
			'accountPreferences.noAccountsHint' => 'Sign in to Plex, or connect a Jellyfin or Emby server, and the preferences stored on that account show up here.',
			'accountPreferences.unavailable' => 'Can\'t reach this account',
			'accountPreferences.loadFailed' => 'Couldn\'t load these preferences',
			'accountPreferences.noPreference' => 'No preference',
			'accountPreferences.notSet' => 'Not set',
			'accountPreferences.groups.audioAndSubtitles' => 'Audio & subtitles',
			'accountPreferences.groups.libraryDisplay' => 'Library',
			'accountPreferences.groups.personalMedia' => 'Personal media',
			'accountPreferences.preferredAudioLanguage' => 'Preferred audio language',
			'accountPreferences.autoSelectAudio' => 'Choose audio by language',
			'accountPreferences.autoSelectAudioDescription' => 'Off keeps whatever audio track the file marks as default.',
			'accountPreferences.preferredSubtitleLanguage' => 'Preferred subtitle language',
			'accountPreferences.subtitleMode' => 'Turn subtitles on',
			'accountPreferences.subtitleModes.none' => 'Manually selected',
			'accountPreferences.subtitleModes.noneDescription' => 'Never turn subtitles on by itself.',
			'accountPreferences.subtitleModes.defaultMode' => 'Follow the track flags',
			'accountPreferences.subtitleModes.defaultModeDescription' => 'Use the default and forced flags stored on each subtitle track.',
			'accountPreferences.subtitleModes.always' => 'Always enabled',
			'accountPreferences.subtitleModes.alwaysDescription' => 'Turn on a subtitle track in the preferred language whenever one exists.',
			'accountPreferences.subtitleModes.onlyForced' => 'Only forced subtitles',
			'accountPreferences.subtitleModes.onlyForcedDescription' => 'Load only the tracks marked as forced.',
			'accountPreferences.subtitleModes.smart' => 'Shown with foreign audio',
			'accountPreferences.subtitleModes.smartDescription' => 'Turn subtitles on only when the audio is in another language.',
			'accountPreferences.subtitleAccessibility' => 'SDH subtitles',
			'accountPreferences.subtitleAccessibilityOptions.preferNonSdh' => 'Prefer non-SDH subtitles',
			'accountPreferences.subtitleAccessibilityOptions.preferSdh' => 'Prefer SDH subtitles',
			'accountPreferences.subtitleAccessibilityOptions.onlySdh' => 'Only SDH subtitles',
			'accountPreferences.subtitleAccessibilityOptions.onlyNonSdh' => 'Only non-SDH subtitles',
			'accountPreferences.forcedSubtitles' => 'Forced subtitles',
			'accountPreferences.forcedSubtitleOptions.preferNonForced' => 'Prefer non-forced subtitles',
			'accountPreferences.forcedSubtitleOptions.preferForced' => 'Prefer forced subtitles',
			'accountPreferences.forcedSubtitleOptions.onlyForced' => 'Only forced subtitles',
			'accountPreferences.forcedSubtitleOptions.onlyNonForced' => 'Only non-forced subtitles',
			'accountPreferences.displayMissingEpisodes' => 'Show missing episodes',
			'accountPreferences.displayMissingEpisodesDescription' => 'List episodes the server knows about but has no file for.',
			'accountPreferences.hidePlayedInLatest' => 'Hide watched items in Latest',
			'accountPreferences.hidePlayedInLatestDescription' => 'Leave items you have already watched out of the server\'s Latest rows.',
			'accountPreferences.displayCollectionsView' => 'Show the Collections view',
			'accountPreferences.displayCollectionsViewDescription' => 'Offer the server\'s Collections view alongside your libraries.',
			'accountPreferences.rewatchingInNextUp' => 'Keep rewatched shows in Next Up',
			'accountPreferences.rewatchingInNextUpDescription' => 'Once you finish a show, start it again and Next Up follows the rewatch instead of dropping the show.',
			'accountPreferences.watchedIndicator' => 'Watched indicators',
			'accountPreferences.watchedIndicatorOptions.none' => 'Never',
			'accountPreferences.watchedIndicatorOptions.moviesAndShows' => 'Movies and TV shows',
			'accountPreferences.watchedIndicatorOptions.movies' => 'Movies only',
			'accountPreferences.watchedIndicatorOptions.shows' => 'TV shows only',
			'accountPreferences.mediaReviewsVisibility' => 'Ratings & reviews',
			'accountPreferences.mediaReviewsOptions.usersAndCritics' => 'Users and critics',
			'accountPreferences.mediaReviewsOptions.usersOnly' => 'Users only',
			'accountPreferences.mediaReviewsOptions.criticsOnly' => 'Critics only',
			'accountPreferences.mediaReviewsOptions.nobody' => 'Hidden',
			'discover.title' => 'Discover',
			'discover.noContentAvailable' => 'No content available',
			'discover.addMediaToLibraries' => 'Add some media to your libraries',
			'discover.continueWatching' => 'Continue Watching',
			'discover.continueWatchingIn' => ({required Object library}) => 'Continue Watching in ${library}',
			'discover.nextUp' => 'Next Up',
			'discover.nextUpIn' => ({required Object library}) => 'Next Up in ${library}',
			'discover.recentlyAdded' => 'Recently Added',
			'discover.recentlyAddedIn' => ({required Object library}) => 'Recently Added in ${library}',
			'discover.latestAlbumsIn' => ({required Object library}) => 'Latest Albums in ${library}',
			'discover.recentlyPlayedIn' => ({required Object library}) => 'Recently Played in ${library}',
			'discover.mostPlayedIn' => ({required Object library}) => 'Most Played in ${library}',
			'discover.playEpisode' => ({required Object season, required Object episode}) => 'S${season}E${episode}',
			'discover.overview' => 'Overview',
			'discover.cast' => 'Cast',
			'discover.extras' => 'Trailers & Extras',
			'discover.studio' => 'Studio',
			'discover.rating' => 'Rating',
			'discover.director' => 'Director',
			'discover.directors' => 'Directors',
			'discover.movie' => 'Movie',
			'discover.tvShow' => 'TV Show',
			'discover.minutesLeft' => ({required Object minutes}) => '${minutes} min left',
			'discover.moreLikeThis' => 'More Like This',
			'discover.titleCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n, one: '${n} title', other: '${n} titles', ), 
			'discover.person.born' => 'Born',
			'discover.person.died' => 'Died',
			'discover.person.birthplace' => 'Birthplace',
			'discover.person.dateWithAge' => ({required Object date, required Object age}) => '${date} (age ${age})',
			'discover.person.dateWithAgeAtDeath' => ({required Object date, required Object age}) => '${date} (aged ${age})',
			'errors.searchFailed' => ({required Object error}) => 'Search failed: ${error}',
			'errors.searchUnavailable' => 'Search could not reach any media server.',
			'errors.connectionTimeout' => ({required Object context}) => 'Connection timeout while loading ${context}',
			'errors.connectionFailed' => 'Unable to connect to media server',
			'errors.unableToLoad' => ({required Object context}) => 'Unable to load ${context}. Please try again.',
			'errors.noClientAvailable' => 'No client available',
			'errors.pleaseEnterToken' => 'Please enter a token',
			'errors.invalidToken' => 'Invalid token',
			'errors.failedToVerifyToken' => ({required Object error}) => 'Failed to verify token: ${error}',
			'errors.failedToSwitchProfile' => ({required Object displayName}) => 'Failed to switch to ${displayName}',
			'errors.failedToDeleteProfile' => ({required Object displayName}) => 'Failed to delete ${displayName}',
			'errors.failedToRate' => 'Couldn\'t update rating',
			'errors.reasonTimedOut' => 'the connection timed out',
			'errors.reasonUnreachable' => 'the server could not be reached',
			'errors.reasonRefused' => 'the server refused the request',
			'errors.reasonNotFound' => 'the item is no longer on the server',
			'errors.reasonServerError' => 'the server reported an error',
			'errors.reasonCancelled' => 'the request was cancelled',
			'errors.reasonUnexpected' => 'an unexpected error occurred',
			'libraries.title' => 'Libraries',
			'libraries.fallbackTitle' => 'Library',
			'libraries.scanLibraryFiles' => 'Scan Library Files',
			'libraries.scanLibrary' => 'Scan Library',
			'libraries.analyze' => 'Analyze',
			'libraries.analyzeLibrary' => 'Analyze Library',
			'libraries.refreshMetadata' => 'Refresh Metadata',
			'libraries.emptyTrash' => 'Empty Trash',
			'libraries.emptyingTrash' => ({required Object title}) => 'Emptying trash for "${title}"...',
			'libraries.trashEmptied' => ({required Object title}) => 'Trash emptied for "${title}"',
			'libraries.failedToEmptyTrash' => ({required Object error}) => 'Failed to empty trash: ${error}',
			'libraries.analyzing' => ({required Object title}) => 'Analyzing "${title}"...',
			'libraries.analysisStarted' => ({required Object title}) => 'Analysis started for "${title}"',
			'libraries.failedToAnalyze' => ({required Object error}) => 'Failed to analyze library: ${error}',
			'libraries.noLibrariesFound' => 'No libraries found',
			'libraries.allLibrariesHidden' => 'All libraries are hidden',
			'libraries.hiddenLibrariesCount' => ({required Object count}) => 'Hidden libraries (${count})',
			'libraries.thisLibraryIsEmpty' => 'This library is empty',
			'libraries.noItemsMatchFilters' => 'No items match the active filters',
			'libraries.resetFilters' => 'Reset filters',
			'libraries.all' => 'All',
			'libraries.clearAll' => 'Clear All',
			'libraries.scanLibraryConfirm' => ({required Object title}) => 'Are you sure you want to scan "${title}"?',
			'libraries.analyzeLibraryConfirm' => ({required Object title}) => 'Are you sure you want to analyze "${title}"?',
			'libraries.refreshMetadataConfirm' => ({required Object title}) => 'Are you sure you want to refresh metadata for "${title}"?',
			'libraries.emptyTrashConfirm' => ({required Object title}) => 'Are you sure you want to empty trash for "${title}"?',
			'libraries.manageLibraries' => 'Manage Libraries',
			'libraries.sort' => 'Sort',
			'libraries.sortBy' => 'Sort By',
			'libraries.filters' => 'Filters',
			'libraries.confirmActionMessage' => 'Are you sure you want to perform this action?',
			'libraries.showLibrary' => 'Show library',
			'libraries.hideLibrary' => 'Hide library',
			'libraries.libraryOptions' => 'Library options',
			'libraries.content' => 'library content',
			'libraries.selectLibrary' => 'Select library',
			'libraries.filtersWithCount' => ({required Object count}) => 'Filters (${count})',
			'libraries.noRecommendations' => 'No recommendations available',
			'libraries.noCollections' => 'No collections in this library',
			'libraries.noFoldersFound' => 'No folders found',
			'libraries.folders' => 'folders',
			'libraries.tabs.recommended' => 'Recommended',
			'libraries.tabs.browse' => 'Browse',
			'libraries.tabs.collections' => 'Collections',
			'libraries.tabs.playlists' => 'Playlists',
			'libraries.groupings.title' => 'Grouping',
			'libraries.groupings.all' => 'All',
			'libraries.groupings.movies' => 'Movies',
			'libraries.groupings.shows' => 'TV Shows',
			'libraries.groupings.seasons' => 'Seasons',
			'libraries.groupings.episodes' => 'Episodes',
			'libraries.groupings.artists' => 'Artists',
			'libraries.groupings.albums' => 'Albums',
			'libraries.groupings.tracks' => 'Tracks',
			'libraries.groupings.folders' => 'Folders',
			_ => null,
		} ?? switch (path) {
			'libraries.filterCategories.genre' => 'Genre',
			'libraries.filterCategories.year' => 'Year',
			'libraries.filterCategories.contentRating' => 'Content Rating',
			'libraries.filterCategories.tag' => 'Tag',
			'libraries.filterCategories.unwatched' => 'Unwatched',
			'libraries.filterCategories.unplayed' => 'Unplayed',
			'libraries.filterCategories.favorites' => 'Favorites',
			'libraries.filterCategories.filePath' => 'File Path',
			'libraries.sortLabels.title' => 'Title',
			'libraries.sortLabels.dateAdded' => 'Date Added',
			'libraries.sortLabels.releaseDate' => 'Release Date',
			'libraries.sortLabels.rating' => 'Rating',
			'libraries.sortLabels.communityRating' => 'Community Rating',
			'libraries.sortLabels.criticRating' => 'Critic Rating',
			'libraries.sortLabels.userRating' => 'User Rating',
			'libraries.sortLabels.datePlayed' => 'Date Played',
			'libraries.sortLabels.playCount' => 'Play Count',
			'libraries.sortLabels.productionYear' => 'Production Year',
			'libraries.sortLabels.runtime' => 'Runtime',
			'libraries.sortLabels.officialRating' => 'Official Rating',
			'libraries.sortLabels.premiereDate' => 'Premiere Date',
			'libraries.sortLabels.startDate' => 'Start Date',
			'libraries.sortLabels.airTime' => 'Air Time',
			'libraries.sortLabels.studio' => 'Studio',
			'libraries.sortLabels.random' => 'Random',
			'libraries.sortLabels.dateShared' => 'Date Shared',
			'libraries.sortLabels.latestEpisodeAirDate' => 'Latest Episode Air Date',
			'libraries.sortLabels.lastEpisodeDateAdded' => 'Last Episode Date Added',
			'libraries.sortLabels.dateDownloaded' => 'Date Downloaded',
			'libraries.sortLabels.size' => 'Size',
			'libraries.sortLabels.library' => 'Library',
			'libraries.advancedFilters.include' => 'Include',
			'libraries.advancedFilters.exclude' => 'Exclude',
			'libraries.advancedFilters.any' => 'Any',
			'libraries.advancedFilters.yes' => 'Yes',
			'libraries.advancedFilters.no' => 'No',
			'libraries.advancedFilters.not' => ({required Object value}) => 'Not ${value}',
			'libraries.advancedFilters.valueCount' => ({required Object count}) => '${count} selected',
			'libraries.advancedFilters.valueCountExcluded' => ({required Object count}) => '${count} excluded',
			'libraries.advancedFilters.searchValues' => 'Search values',
			'libraries.advancedFilters.noValues' => 'No values',
			'libraries.advancedFilters.matchContains' => 'Contains',
			'libraries.advancedFilters.matchNotContains' => 'Does not contain',
			'libraries.advancedFilters.matchIs' => 'Is',
			'libraries.advancedFilters.matchIsNot' => 'Is not',
			'libraries.advancedFilters.matchBeginsWith' => 'Begins with',
			'libraries.advancedFilters.matchEndsWith' => 'Ends with',
			'libraries.advancedFilters.textHint' => 'Type to match',
			'libraries.advancedFilters.from' => 'From',
			'libraries.advancedFilters.to' => 'To',
			'libraries.advancedFilters.range' => ({required Object from, required Object to}) => '${from} to ${to}',
			'libraries.advancedFilters.atLeast' => ({required Object value}) => '${value} and up',
			'libraries.advancedFilters.atMost' => ({required Object value}) => 'Up to ${value}',
			'libraries.advancedFilters.dateLastDays' => ({required Object count}) => 'Last ${count} days',
			'libraries.advancedFilters.dateLastYear' => 'Past year',
			'libraries.advancedFilters.dateOlderThanDays' => ({required Object count}) => 'Older than ${count} days',
			'libraries.advancedFilters.dateOlderThanYear' => 'Older than a year',
			'about.title' => 'About',
			'about.openSourceLicenses' => 'Open Source Licenses',
			'about.versionLabel' => ({required Object version}) => 'Version ${version}',
			'about.appDescription' => 'Your movies, shows, and music from Plex, Jellyfin, and Emby — in one place.',
			'about.customSource' => 'Source code',
			'about.basedOnLuroka' => 'Built on the Plezy codebase',
			'about.viewLicensesDescription' => 'Software and libraries used by Luroka',
			'about.appSection' => 'App',
			'about.communitySection' => 'Community',
			'about.creditsSection' => 'Credits',
			'about.legalSection' => 'Legal',
			'about.versionMeta' => ({required Object version, required Object build, required Object platform}) => 'v${version} (${build}) · ${platform}',
			'about.versionMetaNoBuild' => ({required Object version, required Object platform}) => 'v${version} · ${platform}',
			'about.versionUnavailable' => 'Version unavailable',
			'about.versionDetails' => 'Version details',
			'about.versionDetailsTitle' => ({required Object version, required Object build}) => 'Luroka ${version} (${build})',
			'about.platformLine' => ({required Object platform}) => 'Platform: ${platform}',
			'about.deviceLine' => ({required Object model}) => 'Device: ${model}',
			'about.packageLine' => ({required Object package}) => 'Package: ${package}',
			'about.localeLine' => ({required Object locale}) => 'Language: ${locale}',
			'about.copyDetails' => 'Copy details',
			'about.detailsCopied' => 'App details copied',
			'about.detailsCopyFailed' => 'Couldn\'t copy app details',
			'about.checkForUpdatesDescription' => 'Check GitHub for a newer release',
			'about.checkingForUpdates' => 'Checking for updates…',
			'about.whatsNew' => 'What\'s new',
			'about.releaseNotesUnavailable' => 'No release notes are available.',
			'about.sourceCodeDescription' => 'Luroka on GitHub',
			'about.reportIssue' => 'Report an issue',
			'about.reportIssueDescription' => 'Tell us what went wrong',
			'about.documentation' => 'Documentation',
			'about.documentationDescription' => 'Setup, features, and build notes',
			'about.upstreamProjectDescription' => 'Open-source project by edde746 and contributors',
			'about.upstreamWebsite' => 'Upstream website',
			'about.attribution' => 'Data & attribution',
			'about.attributionDescription' => 'Metadata, ratings, and trademarks',
			'about.attributionBody' => 'This product uses the TMDB API but is not endorsed or certified by TMDB. Popularity lists, metadata, and IMDb ratings are supplied by Cinemeta. Scores retain their source labels.',
			'about.trademarkNotices' => 'Plex, Jellyfin, Emby, Trakt, Simkl, MyAnimeList, AniList, TMDB, and related marks are trademarks of their respective owners. Luroka is not affiliated with or endorsed by them.',
			'about.privacyPolicy' => 'Privacy policy',
			'about.privacyPolicyDescription' => 'How your data is handled',
			'about.gplLicense' => 'GNU GPL-3.0 license',
			'about.gplLicenseDescription' => 'Luroka is free software',
			'about.linkOpenFailed' => 'Couldn\'t open this link',
			'about.opensInBrowser' => 'Opens in your browser',
			'about.footer' => 'Luroka is free software under GPL-3.0.',
			'about.copyright' => ({required Object year}) => '© ${year} Luroka contributors',
			'serverSelection.noServersFoundForAccount' => ({required Object username, required Object email}) => 'No servers found for ${username} (${email})',
			'serverSelection.failedToLoadServers' => ({required Object error}) => 'Failed to load servers: ${error}',
			'serverSelection.noValidServers' => 'No usable servers were found on this account',
			'hubDetail.title' => 'Title',
			'hubDetail.releaseYear' => 'Release Year',
			'hubDetail.dateAdded' => 'Date Added',
			'hubDetail.rating' => 'Rating',
			'hubDetail.noItemsFound' => 'No items found',
			'logs.clearLogs' => 'Clear Logs',
			'logs.copyLogs' => 'Copy Logs',
			'logs.uploadLogs' => 'Upload Logs',
			'startup.failedTitle' => 'Luroka could not start',
			'startup.failedBody' => 'Something went wrong during startup. The details below identify what failed.',
			'startup.failedBodyRepairable' => 'Luroka\'s saved settings file is damaged and has to be rebuilt before Luroka can start. Retrying will not help — choose Repair storage.',
			'startup.phaseLabel' => 'Step',
			'startup.showDetails' => 'Show details',
			'startup.hideDetails' => 'Hide details',
			'startup.copyDetails' => 'Copy details',
			'startup.detailsCopied' => 'Details copied to clipboard',
			'startup.uploadDetails' => 'Upload details',
			'startup.repairStorage' => 'Repair storage',
			'startup.repairTitle' => 'Repair stored data?',
			'startup.repairBodyCommon' => 'Luroka\'s settings file is damaged and cannot be read. Repairing resets every setting to its default.',
			'startup.repairBodyOneCredential' => 'One saved sign-in is damaged and cannot be read. Repairing removes just that one; your other settings are left alone.',
			'startup.repairBodySignInsKept' => 'Your servers and profiles should stay signed in.',
			'startup.repairBodySignInsLost' => 'The key protecting your saved sign-ins cannot be recovered from this file, so you will have to sign in to every server and profile again. Nothing on your media server is affected.',
			'startup.repairBodySessionsUncertain' => 'Trackers (MAL, AniList, Simkl, Trakt) and Seerr are stored separately and may or may not survive. Luroka will tell you exactly what it kept.',
			'startup.repairConfirm' => 'Repair',
			'startup.repairSucceeded' => 'Storage repaired',
			'startup.repairNeedsRestart' => 'Storage repaired — restart required',
			'startup.restartRequiredBody' => 'Your data was repaired, but Luroka has to start fresh before it can use it. Close Luroka and open it again.',
			'startup.quitLuroka' => 'Quit Luroka',
			'startup.repairFailed' => 'Repair failed',
			'startup.repairKeptSignIns' => 'Your servers and profiles are still signed in.',
			'startup.repairLostSignIns' => 'The key protecting your saved sign-ins could not be recovered. You will have to sign in to every server and profile again.',
			'startup.repairLostSessions' => 'At least one tracker or Seerr connection was lost and has to be reconnected.',
			'startup.backupTitle' => 'A copy of the damaged file was kept',
			'startup.backupWarning' => 'It contains your sign-in credentials. Do not upload or share it.',
			'startup.deleteBackup' => 'Delete copy',
			'startup.backupDeleted' => 'Copy deleted.',
			'startup.previousFailureTitle' => 'Luroka failed to start last time',
			'licenses.relatedPackages' => 'Related Packages',
			'licenses.license' => 'License',
			'licenses.licenseNumber' => ({required Object number}) => 'License ${number}',
			'licenses.licensesCount' => ({required Object count}) => '${count} licenses',
			'licenses.searchHint' => 'Search packages',
			'licenses.noResults' => ({required Object query}) => 'No packages match "${query}"',
			'licenses.clearSearch' => 'Clear search',
			'navigation.libraries' => 'Libraries',
			'navigation.downloads' => 'Downloads',
			'navigation.liveTv' => 'Live TV',
			'navigation.explore' => 'Explore',
			'explore.title' => 'Explore',
			'explore.selectSource' => 'Select source',
			'explore.rows.watchlist' => 'Watchlist',
			'explore.rows.recommendedMovies' => 'Recommended Movies',
			'explore.rows.recommendedShows' => 'Recommended Shows',
			'explore.rows.trendingMovies' => 'Trending Movies',
			'explore.rows.trendingShows' => 'Trending Shows',
			'explore.rows.popularMovies' => 'Popular Movies',
			'explore.rows.popularShows' => 'Popular Shows',
			'explore.rows.trendingAnime' => 'Trending Anime',
			'explore.rows.suggestedAnime' => 'Suggested Anime',
			'explore.rows.airingAnime' => 'Top Airing Anime',
			'explore.rows.popularAnime' => 'Most Popular Anime',
			'explore.rows.trending' => 'Trending',
			'explore.rows.upcomingMovies' => 'Upcoming Movies',
			'explore.rows.upcomingShows' => 'Upcoming Shows',
			'explore.status.airing' => 'Airing',
			'explore.status.ended' => 'Ended',
			'explore.status.canceled' => 'Canceled',
			'explore.status.upcoming' => 'Upcoming',
			'explore.episodeCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n, one: '${n} episode', other: '${n} episodes', ), 
			'explore.cast' => 'Cast',
			'explore.characters' => 'Characters',
			'explore.addToWatchlist' => 'Add to Watchlist',
			'explore.removeFromWatchlist' => 'Remove from Watchlist',
			'explore.addedToWatchlist' => 'Added to watchlist',
			'explore.removedFromWatchlist' => 'Removed from watchlist',
			'explore.watchlistUpdateFailed' => 'Couldn\'t update watchlist',
			'explore.watchlistNoMatch' => 'Couldn\'t match this item to a watchlist',
			'explore.notInLibrary' => 'Not in your library',
			'explore.inTheseLibraries' => 'In these libraries',
			'explore.checkingLibrary' => 'Checking your library...',
			'explore.libraryCheckFailed' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n, one: 'Couldn\'t check ${n} server', other: 'Couldn\'t check ${n} servers', ), 
			'explore.emptyTitle' => 'Nothing here yet',
			'explore.emptyMessage' => ({required Object source}) => 'Rows from ${source} will appear here once they have content.',
			'explore.searchHint' => ({required Object source}) => 'Search ${source}',
			'explore.searchEmpty' => ({required Object query}) => 'No results for "${query}"',
			'explore.searchPrompt' => ({required Object source}) => 'Search for movies and shows on ${source}.',
			'explore.searchFailed' => 'Search failed. Check your connection and try again.',
			'explore.badge.rankPopular' => ({required Object n}) => '#${n} popular',
			'explore.badge.rankAiring' => ({required Object n}) => '#${n} airing',
			'explore.badge.rankRated' => ({required Object n}) => '#${n} rated',
			'explore.badge.rankTrending' => ({required Object n}) => '#${n} trending',
			'explore.badge.rankSeasonal' => ({required Object n, required Object season}) => '#${n} in ${season}',
			'explore.badge.watchingNow' => ({required Object n}) => '${n} watching',
			'explore.badge.available' => 'Available',
			'explore.badge.partiallyAvailable' => 'Partly available',
			'explore.badge.availableIn4k' => '4K available',
			'explore.badge.requested' => 'Requested',
			'explore.badge.pendingApproval' => 'Pending approval',
			'explore.badge.processing' => 'Processing',
			'explore.badge.declined' => 'Declined',
			'explore.badge.requestFailed' => 'Request failed',
			'explore.badge.requested4k' => '4K requested',
			'explore.badge.seasonsAvailable' => ({required Object available, required Object total}) => '${available}/${total} seasons',
			'explore.badge.nextEpisodeIn' => ({required Object episode, required Object duration}) => 'Ep ${episode} in ${duration}',
			'explore.badge.nextAiringIn' => ({required Object duration}) => 'Next in ${duration}',
			'explore.badge.episodesShort' => ({required Object n}) => '${n} eps',
			'explore.badge.minutesPerEpisode' => ({required Object n}) => '${n} min/ep',
			'explore.badge.adult' => '18+',
			'explore.stats.listed' => ({required Object n}) => '${n} listed',
			'explore.stats.viewersDay' => ({required Object n}) => '${n} watched today',
			'explore.stats.viewersWeek' => ({required Object n}) => '${n} watched this week',
			'explore.stats.viewersMonth' => ({required Object n}) => '${n} watched this month',
			'explore.stats.viewersYear' => ({required Object n}) => '${n} watched this year',
			'explore.stats.viewersAllTime' => ({required Object n}) => '${n} viewers',
			'explore.stats.planning' => ({required Object n}) => '${n} planning to watch',
			'explore.stats.favorited' => ({required Object n}) => '${n} favorites',
			'explore.stats.dropRate' => ({required Object percent}) => '${percent} dropped it',
			'explore.stats.comments' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n, one: '${n} comment', other: '${n} comments', ), 
			'explore.stats.votes' => ({required Object n}) => '${n} votes',
			'explore.stats.watching' => ({required Object n}) => '${n} watching it',
			'explore.stats.completed' => ({required Object n}) => '${n} completed',
			'explore.stats.onHold' => ({required Object n}) => '${n} on hold',
			'explore.stats.dropped' => ({required Object n}) => '${n} dropped',
			'explore.season.winter' => 'Winter',
			'explore.season.spring' => 'Spring',
			'explore.season.summer' => 'Summer',
			'explore.season.fall' => 'Fall',
			'explore.season.withYear' => ({required Object season, required Object year}) => '${season} ${year}',
			'explore.format.tv' => 'TV',
			'explore.format.tvShort' => 'TV Short',
			'explore.format.movie' => 'Movie',
			'explore.format.special' => 'Special',
			'explore.format.ova' => 'OVA',
			'explore.format.ona' => 'ONA',
			'explore.format.music' => 'Music',
			'explore.format.other' => 'Other',
			'explore.sourceMaterial.original' => 'Original',
			'explore.sourceMaterial.manga' => 'Manga',
			'explore.sourceMaterial.lightNovel' => 'Light novel',
			'explore.sourceMaterial.novel' => 'Novel',
			'explore.sourceMaterial.visualNovel' => 'Visual novel',
			'explore.sourceMaterial.game' => 'Game',
			'explore.sourceMaterial.webComic' => 'Web comic',
			'explore.sourceMaterial.musicRelease' => 'Music',
			'explore.sourceMaterial.otherMedia' => 'Other',
			'explore.creditRole.actor' => 'Actor',
			'explore.creditRole.director' => 'Director',
			'explore.creditRole.writer' => 'Writer',
			'explore.creditRole.producer' => 'Producer',
			'explore.creditRole.creator' => 'Creator',
			'explore.creditRole.composer' => 'Composer',
			'explore.relation.prequel' => 'Prequel',
			'explore.relation.sequel' => 'Sequel',
			'explore.relation.sideStory' => 'Side story',
			'explore.relation.spinOff' => 'Spin-off',
			'explore.relation.alternativeVersion' => 'Alternative version',
			'explore.relation.summary' => 'Summary',
			'explore.relation.parentStory' => 'Parent story',
			'explore.relation.adaptation' => 'Adaptation',
			'explore.relation.other' => 'Related',
			'explore.broadcast' => ({required Object day, required Object time}) => 'Airs ${day} at ${time}',
			'explore.broadcastWithZone' => ({required Object day, required Object time, required Object timezone}) => 'Airs ${day} at ${time} ${timezone}',
			'explore.detail.originalTitle' => 'Original title',
			'explore.detail.alsoKnownAs' => 'Also known as',
			'explore.detail.studios' => 'Studios',
			'explore.detail.country' => 'Country',
			'explore.detail.language' => 'Language',
			'explore.detail.released' => 'Released',
			'explore.detail.physicalRelease' => 'On disc',
			'explore.detail.ended' => 'Ended',
			'explore.detail.addedOn' => ({required Object date}) => 'Added ${date}',
			'explore.detail.yourRating' => 'Your rating',
			'explore.detail.budget' => 'Budget',
			'explore.detail.revenue' => 'Box office',
			'explore.detail.contentAdvisory' => 'Age guidance',
			'explore.detail.tags' => 'Tags',
			'explore.detail.revealSpoilerTags' => 'Show spoiler tags',
			'explore.detail.links' => 'Links',
			'explore.detail.watchOn' => 'Watch on',
			'explore.detail.watchTrailer' => 'Watch trailer',
			'explore.detail.openOn' => ({required Object site}) => 'Open on ${site}',
			'explore.detail.crew' => 'Crew',
			'explore.detail.ratings' => 'Ratings',
			'explore.detail.schedule' => 'Schedule',
			'explore.detail.recommendedByUsers' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n, one: 'Recommended by ${n} user', other: 'Recommended by ${n} users', ), 
			'explore.detail.recommendedBy' => ({required Object who}) => 'Recommended by ${who}',
			'explore.detail.favoritedBy' => ({required Object who}) => 'Favorited by ${who}',
			'explore.detail.unairedEpisodes' => ({required Object n}) => '${n} not aired yet',
			'explore.detail.recommendedByPercent' => ({required Object percent}) => 'Recommended by ${percent} of viewers',
			'explore.detail.relatedTitles' => 'Related titles',
			'explore.detail.background' => 'Background',
			'explore.totalResults' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n, one: '${n} result', other: '${n} results', ), 
			'liveTv.title' => 'Live TV',
			'liveTv.guide' => 'Guide',
			'liveTv.noChannels' => 'No channels available',
			'liveTv.noDvr' => 'No DVR configured on any server',
			'liveTv.serverUnavailable' => 'Live TV server is not available.',
			'liveTv.serverNotConnected' => 'Live TV server is not connected.',
			'liveTv.noPrograms' => 'No program data available',
			'liveTv.liveStreamFailed' => 'Live stream failed',
			'liveTv.unknownProgram' => 'Unknown Program',
			'liveTv.unknownHub' => 'Unknown',
			'liveTv.unknownError' => 'Unknown error',
			'liveTv.channelNumber' => ({required Object number}) => 'Channel ${number}',
			'liveTv.unknownChannel' => 'Unknown channel',
			'liveTv.live' => 'LIVE',
			'liveTv.reloadGuide' => 'Reload Guide',
			'liveTv.searchGuide' => 'Search Guide',
			'liveTv.searchHint' => 'Search channels & programs',
			'liveTv.searchNoResults' => ({required Object query}) => 'No matches for "${query}"',
			'liveTv.channelsSection' => 'Channels',
			'liveTv.programsSection' => 'Programs',
			'liveTv.now' => 'Now',
			'liveTv.today' => 'Today',
			'liveTv.tomorrow' => 'Tomorrow',
			'liveTv.midnight' => 'Midnight',
			'liveTv.overnight' => 'Overnight',
			'liveTv.morning' => 'Morning',
			'liveTv.daytime' => 'Daytime',
			'liveTv.evening' => 'Evening',
			'liveTv.lateNight' => 'Late Night',
			'liveTv.whatsOn' => 'What\'s On',
			'liveTv.watchChannel' => 'Watch Channel',
			'liveTv.favorites' => 'Favorites',
			'liveTv.reorderFavorites' => 'Reorder Favorites',
			'liveTv.noFavoriteChannels' => 'No favorite channels',
			'liveTv.noFavoriteChannelsHint' => 'Show all channels, then long-press a channel to add it to your favorites.',
			'liveTv.showAllChannels' => 'Show All Channels',
			'liveTv.favoritesLoadFailed' => 'Could not load favorites. Check your connection and try again.',
			'liveTv.favoritesUpdateFailed' => 'Could not update favorites. Check your connection and try again.',
			'liveTv.joinSession' => 'Join Session in Progress',
			'liveTv.watchFromStart' => ({required Object minutes}) => 'Watch from start (${minutes} min ago)',
			'liveTv.watchLive' => 'Watch Live',
			'liveTv.goToLive' => 'Go to Live',
			'liveTv.record' => 'Record',
			'liveTv.recordEpisode' => 'Record Episode',
			'liveTv.recordSeries' => 'Record Series',
			'liveTv.recordOptions' => 'Record Options',
			'liveTv.saveTo' => 'Save to',
			'liveTv.recordings' => 'Recordings',
			'liveTv.scheduledRecordings' => 'Scheduled',
			'liveTv.recordingRules' => 'Recording Rules',
			'liveTv.noScheduledRecordings' => 'Nothing scheduled to record',
			'liveTv.manageRecording' => 'Manage recording',
			'liveTv.cancelRecording' => 'Cancel recording',
			'liveTv.cancelRecordingTitle' => 'Cancel this recording?',
			'liveTv.cancelRecordingMessage' => ({required Object title}) => '${title} will no longer be recorded.',
			'liveTv.deleteRule' => 'Delete rule',
			'liveTv.deleteRuleTitle' => 'Delete recording rule?',
			'liveTv.deleteRuleMessage' => ({required Object title}) => 'Future episodes of ${title} will not be recorded.',
			'liveTv.recordingScheduled' => 'Recording scheduled',
			'liveTv.alreadyScheduled' => 'This program is already scheduled',
			'liveTv.dvrAdminRequired' => 'DVR settings require an admin account',
			'liveTv.recordingFailed' => 'Couldn\'t schedule recording',
			'liveTv.recordingTargetMissing' => 'Couldn\'t determine recording library',
			'liveTv.recordNotAvailable' => 'Recording not available for this program',
			'liveTv.recordingCancelled' => 'Recording canceled',
			'liveTv.recordingRuleDeleted' => 'Recording rule deleted',
			'liveTv.processRecordingRules' => 'Re-evaluate rules',
			'liveTv.recordingInProgress' => 'Recording now',
			'liveTv.recordingsCount' => ({required Object count}) => '${count} scheduled',
			'liveTv.editRule' => 'Edit rule',
			'liveTv.editRuleAction' => 'Edit',
			'liveTv.recordingRuleUpdated' => 'Recording rule updated',
			'liveTv.guideReloadRequested' => 'Guide refresh requested',
			'liveTv.guideReloadFailed' => 'Couldn\'t refresh the guide',
			'liveTv.rulesProcessRequested' => 'Rule re-evaluation requested',
			'liveTv.rulesProcessFailed' => 'Couldn\'t re-evaluate recording rules',
			'liveTv.recordShow' => 'Record show',
			'liveTv.recordSettings.startEarly' => 'Start early (seconds)',
			'liveTv.recordSettings.endLate' => 'End late (seconds)',
			'liveTv.recordSettings.newOnly' => 'Only new episodes',
			'liveTv.recordSettings.anyChannel' => 'Record on any channel',
			'liveTv.recordSettings.anyTime' => 'Record at any time',
			'liveTv.recordSettings.skipInLibrary' => 'Skip episodes already in the library',
			'liveTv.recordSettings.keepUpTo' => 'Episodes to keep',
			'liveTv.recordSettings.keepUpToHint' => '0 keeps every episode',
			'liveTv.startingInMinutes' => ({required Object minutes}) => 'Starting in ${minutes} min',
			'liveTv.dayAtTime' => ({required Object day, required Object time}) => '${day} at ${time}',
			'liveTv.invalidPlaybackData' => ({required Object product}) => '${product} returned invalid Live TV playback data',
			'liveTv.failedToStartChannel' => 'Could not start the live channel',
			'liveTv.failedToBuildStreamUrl' => 'Could not build the stream URL',
			'liveTv.playbackStartFailed' => ({required Object reason}) => 'Couldn\'t start the channel: ${reason}',
			'liveTv.channelSwitchFailed' => ({required Object reason}) => 'Couldn\'t switch channel: ${reason}',
			'collections.title' => 'Collections',
			'collections.collection' => 'Collection',
			'collections.empty' => 'Collection is empty',
			'collections.deleteCollection' => 'Delete Collection',
			'collections.deleteConfirm' => ({required Object title}) => 'Delete "${title}"? This can\'t be undone.',
			'collections.deleted' => 'Collection deleted',
			'collections.deleteFailed' => 'Failed to delete collection',
			'collections.deleteFailedWithError' => ({required Object error}) => 'Failed to delete collection: ${error}',
			'collections.selectCollection' => 'Select Collection',
			'collections.collectionName' => 'Collection Name',
			'collections.enterCollectionName' => 'Enter collection name',
			'collections.addedToCollection' => 'Added to collection',
			'collections.errorAddingToCollection' => 'Failed to add to collection',
			'collections.created' => 'Collection created',
			'collections.removeFromCollection' => 'Remove from collection',
			'collections.removeFromCollectionConfirm' => ({required Object title}) => 'Remove "${title}" from this collection?',
			'collections.removedFromCollection' => 'Removed from collection',
			'collections.removeFromCollectionFailed' => 'Failed to remove from collection',
			'collections.removeFromCollectionError' => ({required Object error}) => 'Error removing from collection: ${error}',
			'collections.searchCollections' => 'Search collections...',
			'playlists.title' => 'Playlists',
			'playlists.playlist' => 'Playlist',
			'playlists.noPlaylists' => 'No playlists found',
			'playlists.create' => 'Create Playlist',
			'playlists.playlistName' => 'Playlist Name',
			'playlists.enterPlaylistName' => 'Enter playlist name',
			'playlists.delete' => 'Delete Playlist',
			'playlists.removeItem' => 'Remove from Playlist',
			'playlists.smartPlaylist' => 'Smart Playlist',
			'playlists.itemCount' => ({required Object count}) => '${count} items',
			'playlists.oneItem' => '1 item',
			'playlists.emptyPlaylist' => 'This playlist is empty',
			'playlists.deleteConfirm' => 'Delete Playlist?',
			'playlists.deleteMessage' => ({required Object name}) => 'Are you sure you want to delete "${name}"?',
			'playlists.created' => 'Playlist created',
			'playlists.deleted' => 'Playlist deleted',
			'playlists.itemAdded' => 'Added to playlist',
			'playlists.itemRemoved' => 'Removed from playlist',
			'playlists.selectPlaylist' => 'Select Playlist',
			'playlists.searchPlaylists' => 'Search playlists...',
			'playlists.errorCreating' => 'Failed to create playlist',
			'playlists.errorDeleting' => 'Failed to delete playlist',
			'playlists.errorLoading' => 'Failed to load playlists',
			'playlists.errorAdding' => 'Failed to add to playlist',
			'playlists.errorReordering' => 'Failed to reorder playlist item',
			'playlists.errorRemoving' => 'Failed to remove from playlist',
			'music.goToAlbum' => 'Go to album',
			'music.goToArtist' => 'Go to artist',
			'music.instantMix' => 'Instant Mix',
			'music.playNext' => 'Play next',
			'music.addToQueue' => 'Add to queue',
			'music.discNumber' => ({required Object n}) => 'Disc ${n}',
			'music.trackCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n, one: '${n} track', other: '${n} tracks', ), 
			'music.nowPlaying' => 'Now Playing',
			'music.playingFrom' => ({required Object title}) => 'Playing from ${title}',
			'music.queue' => 'Queue',
			'music.clearQueue' => 'Clear queue',
			'music.lyrics' => 'Lyrics',
			'music.noLyrics' => 'No lyrics available',
			'music.sleepTimer' => 'Sleep timer',
			'music.sleepTimerEndOfTrack' => 'End of track',
			'music.sleepTimerMinutes' => ({required Object n}) => '${n} minutes',
			'music.stopPlayback' => 'Stop playback',
			'music.previousTrack' => 'Previous track',
			'music.nextTrack' => 'Next track',
			'music.repeat' => 'Repeat',
			'music.repeatAll' => 'Repeat all',
			'music.repeatOne' => 'Repeat one',
			'music.instantMixNoServer' => 'No server is available for an instant mix',
			'music.instantMixFailed' => 'Failed to load the instant mix',
			'music.instantMixEmpty' => 'The instant mix came back with no tracks',
			'music.noAudioUrl' => ({required Object track}) => 'No audio URL is available for ${track}',
			'music.discography.singlesAndEps' => 'Singles & EPs',
			'music.discography.live' => 'Live',
			'music.discography.compilations' => 'Compilations',
			'watchTogether.title' => 'Watch Together',
			'watchTogether.description' => 'Watch content in sync with friends and family',
			'watchTogether.createRoom' => 'Create Room',
			'watchTogether.creatingRoom' => 'Creating room...',
			'watchTogether.joinRoom' => 'Join Room',
			'watchTogether.joiningRoom' => 'Joining room...',
			'watchTogether.connecting' => 'Connecting...',
			'watchTogether.relayPublic' => 'Rooms use the public Open Watch Party relays.',
			'watchTogether.relayCustom' => ({required Object url}) => 'Rooms use your relay at ${url}.',
			'watchTogether.recentRooms' => 'Recent Rooms',
			'watchTogether.roomActions' => 'Room actions',
			'watchTogether.renameRoom' => 'Rename Room',
			'watchTogether.removeRoom' => 'Remove',
			'watchTogether.enterRoomCode' => 'Enter the 6-character code from the host.',
			'watchTogether.roomCode' => 'Room Code',
			'watchTogether.paste' => 'Paste',
			'watchTogether.noCodeInClipboard' => 'The clipboard doesn\'t contain a room code',
			'watchTogether.copyCode' => 'Copy Code',
			'watchTogether.codeCopied' => 'Room code copied',
			'watchTogether.shareInvite' => 'Share Invite',
			'watchTogether.qrShare' => 'Share QR code',
			'watchTogether.qrHint' => 'Scan with the Luroka app to join this room.',
			'watchTogether.phasePlaying' => 'Playing',
			'watchTogether.phasePaused' => 'Paused',
			'watchTogether.phaseWaiting' => 'Waiting for everyone',
			'watchTogether.inviteCopied' => 'Invite copied. Paste it into a message.',
			'watchTogether.inviteMessage' => ({required Object code}) => 'Join my Watch Together room in Luroka: luroka://watch?code=${code} — or open Watch Together and enter ${code}.',
			'watchTogether.openSessionControls' => 'Open Watch Together session controls',
			'watchTogether.reconnecting' => 'Reconnecting...',
			'watchTogether.reconnectingDescription' => 'The connection dropped. You rejoin the room automatically.',
			'watchTogether.connected' => 'Connected',
			'watchTogether.disconnected' => 'Disconnected',
			'watchTogether.youAreHost' => 'You are the host',
			'watchTogether.hostedBy' => ({required Object name}) => 'Hosted by ${name}',
			'watchTogether.hostControlsPlayback' => 'Host controls playback',
			'watchTogether.anyoneCanControl' => 'Anyone can control playback',
			'watchTogether.roomLocked' => 'Room locked',
			'watchTogether.nowPlaying' => 'Now Playing',
			'watchTogether.nothingPlaying' => 'Nothing playing',
			'watchTogether.nothingPlayingHost' => 'Play something from any library to share it with the room.',
			'watchTogether.nothingPlayingGuest' => 'When the host plays something, it opens here.',
			'watchTogether.notShareable' => 'This video has no catalogue match, so only people with access to the same server can play it.',
			'watchTogether.searching' => 'Looking for this video in your libraries...',
			'watchTogether.yourCopy' => 'Your copy',
			'watchTogether.sharingYourCopy' => 'You\'re sharing your copy',
			'watchTogether.playingOtherLength' => ({required Object difference}) => 'Playing your copy, ${difference}',
			_ => null,
		} ?? switch (path) {
			'watchTogether.mismatchTitle' => 'Your Copy Is a Different Length',
			'watchTogether.mismatchDescription' => ({required Object difference}) => 'Your closest copy is ${difference} than the room\'s video. It may be another cut or version.',
			'watchTogether.playAnyway' => 'Play Anyway',
			'watchTogether.chooseAnotherCopy' => 'Choose Another Copy',
			'watchTogether.dontPlay' => 'Don\'t Play',
			'watchTogether.unavailableTitle' => 'You don\'t have this video',
			'watchTogether.unavailableDescription' => 'Luroka couldn\'t find it in your libraries. Pick a copy yourself or search again.',
			'watchTogether.chooseCopy' => 'Choose a Copy',
			'watchTogether.searchAgain' => 'Search Again',
			'watchTogether.noCandidates' => 'No copies found in your libraries.',
			'watchTogether.choiceFailed' => 'Couldn\'t play this copy for the room',
			'watchTogether.lengthLonger' => ({required Object duration}) => '${duration} longer',
			'watchTogether.lengthShorter' => ({required Object duration}) => '${duration} shorter',
			'watchTogether.lengthSame' => 'Same length',
			'watchTogether.lengthUnknown' => 'Length unknown',
			'watchTogether.joinCurrentPlayback' => 'Join Current Playback',
			'watchTogether.joinCurrentPlaybackDescription' => 'Jump back into what the host is currently watching',
			'watchTogether.stopMedia' => 'Stop Video for Everyone',
			'watchTogether.syncOffset' => 'Sync Offset',
			'watchTogether.syncOffsetDescription' => 'Shift your video if it runs ahead of or behind the room.',
			'watchTogether.offsetHint' => ({required Object difference}) => 'Your copy is ${difference} than the room\'s video.',
			'watchTogether.applyDifference' => ({required Object offset}) => 'Use ${offset}',
			'watchTogether.offsetMinusSecond' => '-1 s',
			'watchTogether.offsetMinusTenth' => '-100 ms',
			'watchTogether.offsetPlusTenth' => '+100 ms',
			'watchTogether.offsetPlusSecond' => '+1 s',
			'watchTogether.participants' => 'Participants',
			'watchTogether.participantCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n, one: '${n} participant', other: '${n} participants', ), 
			'watchTogether.hostBadge' => 'HOST',
			'watchTogether.nameYou' => ({required Object name}) => '${name} (You)',
			'watchTogether.playerIdle' => 'Idle',
			'watchTogether.playerLoading' => 'Loading',
			'watchTogether.playerReady' => 'Ready',
			'watchTogether.playerBuffering' => 'Buffering',
			'watchTogether.matchSearching' => 'Searching',
			'watchTogether.matchMatched' => 'Has the video',
			'watchTogether.matchMismatched' => 'Different length',
			'watchTogether.matchUnavailable' => 'Doesn\'t have the video',
			'watchTogether.participantOffset' => ({required Object offset}) => 'Offset ${offset}',
			'watchTogether.makeHost' => 'Make host',
			'watchTogether.makeHostQuestion' => 'Transfer host?',
			'watchTogether.makeHostConfirm' => ({required Object name}) => '${name} will control playback and drive the session for everyone.',
			'watchTogether.transfer' => 'Transfer',
			'watchTogether.removeParticipant' => 'Remove from Room',
			'watchTogether.removeParticipantQuestion' => ({required Object name}) => 'Remove ${name}?',
			'watchTogether.removeParticipantConfirm' => ({required Object name}) => '${name} leaves the room. They can join again with the code unless you lock the room.',
			'watchTogether.remove' => 'Remove',
			'watchTogether.roomSettings' => 'Room Settings',
			'watchTogether.letEveryoneControl' => 'Let Everyone Control Playback',
			'watchTogether.lockRoom' => 'Lock Room',
			'watchTogether.lockRoomDescription' => 'Nobody new can join',
			'watchTogether.leaveRoom' => 'Leave Room',
			'watchTogether.leaveRoomQuestion' => 'Leave Room?',
			'watchTogether.leaveRoomConfirm' => 'You can join again with the room code.',
			'watchTogether.leave' => 'Leave',
			'watchTogether.endRoom' => 'End Room',
			'watchTogether.endRoomQuestion' => 'End Room?',
			'watchTogether.endRoomConfirm' => 'This ends the room for everyone.',
			'watchTogether.end' => 'End',
			'watchTogether.playBlockedTitle' => 'Playback didn\'t start',
			'watchTogether.playBlockedDescription' => 'Press play to start watching with the room.',
			'watchTogether.notices.pressedPlay' => ({required Object name}) => '${name} pressed play',
			'watchTogether.notices.playbackStarted' => 'Playback started',
			'watchTogether.notices.paused' => ({required Object name}) => '${name} paused',
			'watchTogether.notices.playbackPaused' => 'Playback paused',
			'watchTogether.notices.jumpedTo' => ({required Object name, required Object position}) => '${name} jumped to ${position}',
			'watchTogether.notices.roomJumpedTo' => ({required Object position}) => 'Jumped to ${position}',
			'watchTogether.notices.changedSpeed' => ({required Object name, required Object speed}) => '${name} set the speed to ${speed}',
			'watchTogether.notices.speedChanged' => ({required Object speed}) => 'Speed set to ${speed}',
			'watchTogether.notices.startedMedia' => ({required Object name, required Object title}) => '${name} started ${title}',
			'watchTogether.notices.mediaStarted' => ({required Object title}) => 'Now playing ${title}',
			'watchTogether.notices.stoppedMedia' => ({required Object name}) => '${name} stopped the video',
			'watchTogether.notices.mediaStopped' => 'The video stopped',
			'watchTogether.notices.waitingFor' => ({required Object name}) => 'Waiting for ${name}...',
			'watchTogether.notices.waitingForSomeone' => 'Waiting for someone to catch up...',
			'watchTogether.notices.finished' => 'Finished',
			'watchTogether.notices.hostChangedTo' => ({required Object name}) => '${name} is now the host',
			'watchTogether.notices.youAreNowHost' => 'You are now the host',
			'watchTogether.notices.joined' => ({required Object name}) => '${name} joined',
			'watchTogether.notices.left' => ({required Object name}) => '${name} left',
			'watchTogether.notices.controlRefused' => 'Only the host can control playback',
			'watchTogether.notices.searchFailed' => 'Some servers couldn\'t be searched for the room\'s video',
			'watchTogether.notices.playBlocked' => 'Press play to start',
			'watchTogether.notices.shareFailed' => 'Couldn\'t share this video with the room',
			'watchTogether.notices.notShared' => 'Downloaded videos aren\'t shared with the room',
			'watchTogether.notices.openFailed' => 'Couldn\'t open the room\'s video',
			'watchTogether.ended.ended' => 'The host ended the room',
			'watchTogether.ended.kicked' => 'You were removed from the room',
			'watchTogether.ended.expired' => 'The room expired',
			'watchTogether.ended.replaced' => 'You joined this room on another device',
			'watchTogether.ended.lost' => 'Lost the connection to the room',
			'watchTogether.errors.invalidCode' => 'That isn\'t a room code. Codes have 6 letters and digits, without 0, 1, I, L or O.',
			'watchTogether.errors.roomNotFound' => 'No room has that code. It may have ended.',
			'watchTogether.errors.roomFull' => 'That room is full.',
			'watchTogether.errors.roomLocked' => 'The host locked that room.',
			'watchTogether.errors.relayFull' => 'Watch Together is busy right now. Try again later.',
			'watchTogether.errors.unreachable' => 'Couldn\'t reach the Watch Together relay. Check your connection.',
			'watchTogether.errors.rateLimited' => 'Too many attempts. Wait a moment and try again.',
			'watchTogether.errors.clientBlocked' => 'This version of Luroka can\'t use the relay. Update the app.',
			'watchTogether.errors.forbidden' => 'Only the host can do that.',
			'watchTogether.errors.notInRoom' => 'You\'re not in a room.',
			'watchTogether.errors.alreadyInRoom' => 'You\'re already in a room.',
			'watchTogether.errors.resumeFailed' => 'Couldn\'t rejoin the room.',
			'watchTogether.errors.unsupported' => 'The relay doesn\'t support this.',
			'watchTogether.errors.generic' => 'Something went wrong. Try again.',
			'watchTogether.untitledEpisode' => ({required Object number}) => 'Episode ${number}',
			'downloads.title' => 'Downloads',
			'downloads.manage' => 'Manage',
			'downloads.tvShows' => 'TV Shows',
			'downloads.movies' => 'Movies',
			'downloads.music' => 'Music',
			'downloads.tracksQueued' => ({required Object count}) => '${count} tracks queued for download',
			'downloads.noDownloads' => 'No downloads yet',
			'downloads.noDownloadsDescription' => 'Downloaded content will appear here for offline viewing',
			'downloads.downloadNow' => 'Download',
			'downloads.deleteDownload' => 'Delete download',
			'downloads.retryDownload' => 'Retry download',
			'downloads.downloadQueued' => 'Download queued',
			'downloads.downloadResumed' => 'Download resumed',
			'downloads.serverErrorBitrate' => 'Server error: file may exceed the remote bitrate limit',
			'downloads.storageFull' => 'Downloads stopped to protect available storage. Free some space or choose another download location, then retry.',
			'downloads.storageUnavailable' => 'Downloads stopped because available storage could not be checked. Check the download location, then retry.',
			'downloads.episodesQueued' => ({required Object count}) => '${count} episodes queued for download',
			'downloads.downloadDeleted' => 'Download deleted',
			'downloads.deleteConfirm' => ({required Object title}) => 'Delete "${title}" from this device?',
			'downloads.deleteCollectionDownloads' => 'Delete downloads',
			'downloads.deleteCollectionDownloadsConfirm' => ({required Object title}) => 'Delete every download in "${title}" from this device?',
			'downloads.collectionDownloadsDeleted' => 'Downloads deleted',
			'downloads.cancelledDownloadTitle' => 'Canceled Download',
			'downloads.cancelledDownloadMessage' => 'This download was canceled. What would you like to do?',
			'downloads.allEpisodesAlreadyDownloaded' => 'All episodes already downloaded',
			'downloads.resumeDownload' => 'Resume download',
			'downloads.cancelledDownload' => 'Canceled download',
			'downloads.syncingFile' => ({required Object file, required Object status}) => '${file} (syncing ${status})',
			'downloads.downloadedFileClickToComplete' => ({required Object file}) => 'Downloaded ${file} - Click to complete',
			'downloads.partialDownloadClickToComplete' => 'Partially downloaded - Click to complete',
			'downloads.deleting' => 'Deleting...',
			'downloads.deletingWithProgress' => ({required Object title, required Object current, required Object total}) => 'Deleting ${title}... (${current} of ${total})',
			'downloads.queuedTooltip' => 'Queued',
			'downloads.queuedFilesTooltip' => ({required Object files}) => 'Queued ${files}',
			'downloads.downloadingTooltip' => 'Downloading...',
			'downloads.downloadingFilesTooltip' => ({required Object files}) => 'Downloading ${files}',
			'downloads.noDownloadsTree' => 'No downloads',
			'downloads.pauseAll' => 'Pause all',
			'downloads.resumeAll' => 'Resume all',
			'downloads.retryAll' => 'Retry all',
			'downloads.retryFailed' => 'Retry failed downloads',
			'downloads.deleteAll' => 'Delete all',
			'downloads.selectVersion' => 'Select Version',
			'downloads.allEpisodes' => 'All episodes',
			'downloads.unwatchedOnly' => 'Unwatched only',
			'downloads.nextNUnwatched' => ({required Object count}) => 'Next ${count} unwatched',
			'downloads.customAmount' => 'Custom amount...',
			'downloads.includeSpecials' => 'Include Specials',
			'downloads.howManyEpisodes' => 'How many episodes?',
			'downloads.invalidEpisodeCount' => 'Enter a valid episode count.',
			'downloads.keepSynced' => 'Keep synced',
			'downloads.downloadOnce' => 'Download once',
			'downloads.keepNUnwatched' => ({required Object count}) => 'Keep ${count} unwatched',
			'downloads.editSyncRule' => 'Edit sync rule',
			'downloads.removeSyncRule' => 'Remove sync rule',
			'downloads.removeSyncRuleConfirm' => ({required Object title}) => 'Stop syncing "${title}"? Downloaded episodes will be kept.',
			'downloads.removeListSyncRuleConfirm' => ({required Object title}) => 'Stop syncing "${title}"?',
			'downloads.deleteSyncRuleDownloads' => 'Also delete associated downloads',
			'downloads.deleteSyncRuleDownloadsDescription' => 'Downloads used by another sync rule or profile will be kept.',
			'downloads.syncRuleCreated' => ({required Object count}) => 'Sync rule created — keeping ${count} unwatched episodes',
			'downloads.syncRuleUpdated' => 'Sync rule updated',
			'downloads.syncRuleRemoved' => 'Sync rule removed',
			'downloads.syncRuleAndDownloadsRemoved' => 'Sync rule and associated downloads removed',
			'downloads.syncRuleCleanupBusy' => 'Sync rules are currently updating. Try again in a moment.',
			'downloads.syncRuleCleanupUnavailable' => 'Associated downloads could not be identified safely. Reconnect the server and try again, or remove the rule without deleting downloads.',
			'downloads.syncedNewEpisodes' => ({required Object count, required Object title}) => 'Synced ${count} new episodes for ${title}',
			'downloads.activeSyncRules' => 'Sync rules',
			'downloads.noSyncRules' => 'No sync rules',
			'downloads.manageSyncRule' => 'Manage sync',
			'downloads.editEpisodeCount' => 'Episode count',
			'downloads.editSyncFilter' => 'Sync filter',
			'downloads.syncAllItems' => 'Syncing all items',
			'downloads.syncUnwatchedItems' => 'Syncing unwatched items',
			'downloads.syncRuleServerContext' => ({required Object server, required Object status}) => 'Server: ${server} • ${status}',
			'downloads.syncRuleAvailable' => 'Available',
			'downloads.syncRuleOffline' => 'Offline',
			'downloads.syncRuleSignInRequired' => 'Sign in required',
			'downloads.syncRuleAccessDenied' => 'Access denied',
			'downloads.syncRuleNotAvailableForProfile' => 'Not available for current profile',
			'downloads.syncRuleUnknownServer' => 'Unknown server',
			'downloads.syncRuleListCreated' => 'Sync rule created',
			'downloads.backgroundWarning.bannerBlocked' => 'Downloads will stop when you leave the app',
			'downloads.backgroundWarning.bannerDegraded' => 'Background downloads may be limited',
			'downloads.backgroundWarning.bannerAction' => 'Details',
			'downloads.backgroundWarning.sheetTitle' => 'Background downloads are blocked',
			'downloads.backgroundWarning.sheetTitleDegraded' => 'Background downloads may be limited',
			'downloads.backgroundWarning.sheetIntro' => 'Android is preventing Luroka from downloading reliably in the background.',
			'downloads.backgroundWarning.sheetIntroDegraded' => 'Your device is limiting when Luroka can download in the background.',
			'downloads.backgroundWarning.reasonBackgroundRestricted' => 'Luroka\'s background usage is restricted. Set its battery or background usage to "Unrestricted".',
			'downloads.backgroundWarning.reasonStandbyRestricted' => 'Android has put Luroka in a restricted standby state. Set its battery usage to "Unrestricted".',
			'downloads.backgroundWarning.reasonDownloadChannelBlocked' => 'Download notifications are turned off, so progress and controls may be unavailable.',
			'downloads.backgroundWarning.reasonNotificationsDisabled' => 'Notifications are turned off. On Android 13 or newer, they are required for long background downloads.',
			'downloads.backgroundWarning.reasonDataSaver' => 'Data Saver is on, which blocks background downloads on mobile data. Downloads should still run on Wi-Fi.',
			'downloads.backgroundWarning.reasonOemUnknown' => 'Downloads repeatedly stopped while Luroka was in the background. Check Luroka\'s battery or background usage settings.',
			'downloads.backgroundWarning.openSettings' => 'Open settings',
			'downloads.backgroundWarning.stillNotWorking' => 'Device-specific help',
			'downloads.backgroundWarning.stillNotWorkingDescription' => 'See steps for your device, or send a log from Settings › View Logs if the issue continues.',
			'downloads.backgroundWarning.dialogTitle' => 'Downloads may not finish',
			'downloads.backgroundWarning.dialogDownloadAnyway' => 'Download anyway',
			'downloads.backgroundWarning.dialogFixFirst' => 'Fix this first',
			'downloads.backgroundWarning.statusTile' => 'Background downloads',
			'downloads.backgroundWarning.statusOk' => 'Allowed to run in the background',
			'downloads.backgroundWarning.statusBlocked' => 'Blocked by system settings',
			'downloads.backgroundWarning.statusDegraded' => 'Limited by system settings',
			'downloads.backgroundWarning.statusUnknown' => 'Not checked yet',
			'downloads.backgroundWarning.settingsUnavailable' => 'Couldn\'t open system settings on this device',
			'downloads.backgroundWarning.linkUnavailable' => 'Couldn\'t open dontkillmyapp.com on this device',
			'downloads.options' => 'Downloads options',
			'downloads.groupings.library' => 'Library',
			'downloads.groupings.collections' => 'Collections',
			'downloads.unknownLibrary' => 'Unknown library',
			'downloads.unknownShow' => 'Unknown Show',
			'downloads.unknownSeason' => 'Unknown Season',
			'downloads.unknownAlbum' => 'Unknown Album',
			'downloads.completedOfTotal' => ({required Object completed, required Object total}) => '${completed}/${total} completed',
			'downloads.errorFileNotFound' => 'File not found (404)',
			'downloads.errorDownloadNotAllowed' => 'Download not allowed by the server (403)',
			'downloads.errorDownloadFailed' => 'Download failed',
			'downloads.errorDownloadFailedWithReason' => ({required Object reason}) => 'Download failed: ${reason}',
			'downloads.errorHttpStatus' => ({required Object status}) => 'Download failed (HTTP ${status})',
			'downloads.errorPostProcessing' => ({required Object reason}) => 'Post-processing failed: ${reason}',
			'downloads.reasonFileNotSaved' => 'the file could not be saved on this device',
			'downloads.reasonCannotResume' => 'the partial download could not be resumed',
			'downloads.reasonDeviceStorageFull' => 'this device is out of storage',
			'downloads.notificationDownloading' => 'Downloading...',
			'downloads.notificationComplete' => 'Download complete',
			'downloads.notificationPaused' => 'Download paused',
			'shaders.title' => 'Shaders',
			'shaders.noShaderDescription' => 'No video enhancement',
			'shaders.nvscalerDescription' => 'NVIDIA image scaling for sharper video',
			'shaders.artcnnVariantNeutral' => 'Neutral',
			'shaders.artcnnVariantDenoise' => 'Denoise',
			'shaders.artcnnVariantDenoiseSharpen' => 'Denoise + Sharpen',
			'shaders.qualityFast' => 'Fast',
			'shaders.qualityHQ' => 'High Quality',
			'shaders.mode' => 'Mode',
			'shaders.importShader' => 'Import Shader',
			'shaders.customShaderDescription' => 'Custom GLSL shader',
			'shaders.shaderImported' => 'Shader imported',
			'shaders.shaderImportFailed' => 'Failed to import shader',
			'shaders.deleteShader' => 'Delete Shader',
			'shaders.deleteShaderConfirm' => ({required Object name}) => 'Delete "${name}"?',
			'companionRemote.title' => 'Companion Remote',
			'companionRemote.connectedTo' => ({required Object name}) => 'Connected to ${name}',
			'companionRemote.unknownDevice' => 'Unknown Device',
			'companionRemote.session.startingServer' => 'Starting remote server...',
			'companionRemote.session.hostAddress' => 'Host Address',
			'companionRemote.session.connected' => 'Connected',
			'companionRemote.session.serverRunning' => 'Remote server active',
			'companionRemote.session.serverStopped' => 'Remote server stopped',
			'companionRemote.session.serverRunningDescription' => 'Mobile devices on your network can connect to this app',
			'companionRemote.session.serverStoppedDescription' => 'Start the server to allow mobile devices to connect',
			'companionRemote.session.usePhoneToControl' => 'Use your mobile device to control this app',
			'companionRemote.session.startServer' => 'Start Server',
			'companionRemote.session.stopServer' => 'Stop Server',
			'companionRemote.session.minimize' => 'Minimize',
			'companionRemote.session.manualAddressHint' => 'Manual connection address:',
			'companionRemote.pairing.discoveryDescription' => 'Luroka devices with the same Plex account appear here',
			'companionRemote.pairing.hostAddressHint' => '192.168.1.100:48632',
			'companionRemote.pairing.connecting' => 'Connecting...',
			'companionRemote.pairing.searchingForDevices' => 'Looking for devices...',
			'companionRemote.pairing.noDevicesFound' => 'No devices found on your network',
			'companionRemote.pairing.noDevicesHint' => 'Open Luroka on desktop and use the same Wi-Fi',
			'companionRemote.pairing.availableDevices' => 'Available Devices',
			'companionRemote.pairing.manualConnection' => 'Manual Connection',
			'companionRemote.pairing.cryptoInitFailed' => 'Couldn\'t start secure connection. Sign in to Plex first.',
			'companionRemote.pairing.validationHostRequired' => 'Please enter host address',
			'companionRemote.pairing.validationHostFormat' => 'Format must be IP:port (e.g., 192.168.1.100:48632)',
			'companionRemote.pairing.connectionTimedOut' => 'Connection timed out. Use the same network on both devices.',
			'companionRemote.pairing.sessionNotFound' => 'Device not found. Make sure Luroka is running on the host.',
			'companionRemote.pairing.authFailed' => 'Authentication failed. Both devices need the same Plex account.',
			'companionRemote.pairing.failedToConnect' => ({required Object error}) => 'Failed to connect: ${error}',
			'companionRemote.remote.disconnectConfirm' => 'Do you want to disconnect from the remote session?',
			'companionRemote.remote.reconnecting' => 'Reconnecting...',
			'companionRemote.remote.attemptOf' => ({required Object current}) => 'Attempt ${current} of 5',
			'companionRemote.remote.retryNow' => 'Retry Now',
			'companionRemote.remote.tabRemote' => 'Remote',
			'companionRemote.remote.tabPlay' => 'Play',
			'companionRemote.remote.tabMore' => 'More',
			'companionRemote.remote.menu' => 'Menu',
			'companionRemote.remote.tabNavigation' => 'Tab Navigation',
			'companionRemote.remote.tabDiscover' => 'Discover',
			'companionRemote.remote.tabLibraries' => 'Libraries',
			'companionRemote.remote.tabSearch' => 'Search',
			'companionRemote.remote.tabDownloads' => 'Downloads',
			'companionRemote.remote.tabSettings' => 'Settings',
			'companionRemote.remote.previous' => 'Previous',
			'companionRemote.remote.playPause' => 'Play/Pause',
			'companionRemote.remote.next' => 'Next',
			'companionRemote.remote.seekBack' => 'Seek Back',
			'companionRemote.remote.stop' => 'Stop',
			'companionRemote.remote.seekForward' => 'Seek Fwd',
			'companionRemote.remote.volume' => 'Volume',
			'companionRemote.remote.volumeDown' => 'Down',
			'companionRemote.remote.volumeUp' => 'Up',
			'companionRemote.remote.fullscreen' => 'Fullscreen',
			'companionRemote.remote.subtitles' => 'Subtitles',
			'companionRemote.remote.audio' => 'Audio',
			'companionRemote.remote.searchHint' => 'Search on desktop...',
			'companionRemote.errors.noNetworkInterface' => 'No network interface found',
			'companionRemote.errors.authenticationFailed' => 'Authentication failed',
			'companionRemote.errors.serverStartFailed' => ({required Object error}) => 'Failed to start remote server: ${error}',
			'companionRemote.errors.commandFailed' => ({required Object error}) => 'Failed to send remote command: ${error}',
			'companionRemote.errors.joinTimedOut' => 'Timed out joining session',
			'companionRemote.errors.failedToConnectAnyAddress' => 'Failed to connect to any address',
			'companionRemote.errors.connectionLostAfterAttempts' => ({required Object attempts}) => 'Connection lost after ${attempts} attempts',
			'companionRemote.errors.connectionLost' => 'Connection lost',
			'companionRemote.closedBeforeAuth' => 'The connection closed before authentication',
			'videoSettings.playbackSpeed' => 'Playback Speed',
			'videoSettings.normalSpeed' => 'Normal',
			'videoSettings.sleepTimerActive' => ({required Object duration}) => 'Active (${duration})',
			'videoSettings.zoom' => 'Zoom',
			'videoSettings.sleepTimer' => 'Sleep Timer',
			'videoSettings.audioSync' => 'Audio Sync',
			'videoSettings.subtitleSync' => 'Subtitle Sync',
			'videoSettings.hdr' => 'HDR',
			'videoSettings.hdrUnsupported' => 'HDR isn\'t available here — this desktop compositor or video output can\'t carry it.',
			'videoSettings.hdrToneMapping' => 'HDR Tone Mapping',
			'videoSettings.hdrToneMappingCompositor' => 'Compositor',
			'videoSettings.hdrToneMappingCompositorDescription' => 'Pass the source\'s HDR metadata through and let the desktop compositor map it.',
			'videoSettings.hdrToneMappingPlayer' => 'Player',
			'videoSettings.hdrToneMappingPlayerDescription' => 'Map to the display\'s peak brightness in the player, then tell the compositor the result.',
			'videoSettings.hdrToneMappingFailed' => 'Couldn\'t change HDR tone mapping — the previous mode is still active.',
			'videoSettings.audioOutput' => 'Audio Output',
			'videoSettings.performanceOverlay' => 'Performance Overlay',
			'videoSettings.audioOutputDolbyAtmos' => 'Dolby Atmos',
			'videoSettings.audioOutputDolbyAudio' => 'Dolby Audio',
			'videoSettings.audioOutputSurround' => 'Surround',
			'videoSettings.audioOutputSpatial' => 'Spatial Audio',
			'videoSettings.audioOutputStereo' => 'Stereo',
			'videoSettings.audioNormalization' => 'Normalize Loudness',
			'videoSettings.audioNormalizationDisablesPassthrough' => 'Decodes audio to PCM; passthrough is off while this is on',
			'performanceOverlay.color' => 'Color',
			'performanceOverlay.performance' => 'Performance',
			'performanceOverlay.buffer' => 'Buffer',
			'performanceOverlay.app' => 'App',
			'performanceOverlay.decoder' => 'Decoder',
			'performanceOverlay.rawDecoder' => 'Raw Decoder',
			'performanceOverlay.tunneling' => 'Tunneling',
			'performanceOverlay.passthrough' => 'Passthrough',
			'performanceOverlay.aspect' => 'Aspect',
			'performanceOverlay.rotation' => 'Rotation',
			'performanceOverlay.dvSource' => 'DV Source',
			'performanceOverlay.dvPath' => 'DV Path',
			'performanceOverlay.dvRouteDecoder' => 'Dolby Vision decoder',
			'performanceOverlay.dvRouteDecoderP81' => 'Dolby Vision decoder (P7→8.1)',
			'performanceOverlay.dvRouteBaseLayer' => 'Base layer',
			'performanceOverlay.dvRouteBaseLayerHdr10' => 'HDR10 base layer',
			'performanceOverlay.dvRouteBaseLayerHlg' => 'HLG base layer',
			'performanceOverlay.dvRouteBaseLayerSdr' => 'SDR base layer',
			'performanceOverlay.dvRouteReshaped' => 'RPU reshaped (gpu-next)',
			'performanceOverlay.p7Conversion' => 'P7 Conv',
			'performanceOverlay.sampleRate' => 'Sample Rate',
			'performanceOverlay.pixelFormat' => 'Pixel Fmt',
			'performanceOverlay.hwFormat' => 'HW Fmt',
			'performanceOverlay.matrix' => 'Matrix',
			'performanceOverlay.primaries' => 'Primaries',
			'performanceOverlay.transfer' => 'Transfer',
			'performanceOverlay.renderFps' => 'Render FPS',
			'performanceOverlay.displayFps' => 'Display FPS',
			'performanceOverlay.avSync' => 'A/V Sync',
			'performanceOverlay.dropped' => 'Dropped',
			'performanceOverlay.dvRpus' => 'DV RPUs',
			'performanceOverlay.dvRpuAverage' => 'DV RPU Avg',
			'performanceOverlay.dvSampleAverage' => 'DV Sample Avg',
			'performanceOverlay.maxLuma' => 'Max Luma',
			'performanceOverlay.minLuma' => 'Min Luma',
			'performanceOverlay.maxCll' => 'MaxCLL',
			'performanceOverlay.maxFall' => 'MaxFALL',
			'performanceOverlay.cacheUsed' => 'Cache Used',
			'performanceOverlay.cacheLimit' => 'Cache Limit',
			'performanceOverlay.speed' => 'Speed',
			'performanceOverlay.player' => 'Player',
			'performanceOverlay.memory' => 'Memory',
			'performanceOverlay.uiFps' => 'UI FPS',
			'performanceOverlay.fps' => 'FPS',
			'performanceOverlay.decoderAndroidHw' => 'Android HW',
			'performanceOverlay.decoderNvidiaHw' => 'NVIDIA HW',
			'performanceOverlay.decoderQualcommHw' => 'Qualcomm HW',
			'performanceOverlay.decoderMediatekHw' => 'MediaTek HW',
			'performanceOverlay.decoderExynosHw' => 'Exynos HW',
			'performanceOverlay.decoderSoftware' => 'Software',
			'performanceOverlay.decoderHardware' => 'Hardware',
			'performanceOverlay.tunnelingActive' => 'Active',
			'performanceOverlay.dvRpuFailed' => ({required Object converted, required Object failures}) => '${converted} (${failures} failed)',
			'externalPlayer.title' => 'External Player',
			'externalPlayer.useExternalPlayer' => 'Use External Player',
			'externalPlayer.useExternalPlayerDescription' => 'Open videos in another app',
			'externalPlayer.selectPlayer' => 'Select Player',
			'externalPlayer.customPlayers' => 'Custom Players',
			'externalPlayer.systemDefault' => 'System Default',
			'externalPlayer.addCustomPlayer' => 'Add Custom Player',
			'externalPlayer.playerName' => 'Player Name',
			'externalPlayer.playerNameHint' => 'My Player',
			'externalPlayer.playerCommand' => 'Command',
			'externalPlayer.playerPackage' => 'Package Name',
			'externalPlayer.playerUrlScheme' => 'URL Scheme',
			'externalPlayer.off' => 'Off',
			'externalPlayer.launchFailed' => 'Failed to open external player',
			'externalPlayer.appNotInstalled' => ({required Object name}) => '${name} is not installed',
			'externalPlayer.playInExternalPlayer' => 'Play in External Player',
			'metadataEdit.editMetadata' => 'Edit...',
			'metadataEdit.screenTitle' => 'Edit Metadata',
			'metadataEdit.basicInfo' => 'Basic Info',
			'metadataEdit.artwork' => 'Artwork',
			'metadataEdit.advancedSettings' => 'Advanced Settings',
			'metadataEdit.title' => 'Title',
			'metadataEdit.sortTitle' => 'Sort Title',
			'metadataEdit.originalTitle' => 'Original Title',
			'metadataEdit.releaseDate' => 'Release Date',
			'metadataEdit.contentRating' => 'Content Rating',
			'metadataEdit.studio' => 'Studio',
			'metadataEdit.tagline' => 'Tagline',
			'metadataEdit.summary' => 'Summary',
			'metadataEdit.poster' => 'Poster',
			'metadataEdit.background' => 'Background',
			'metadataEdit.logo' => 'Logo',
			'metadataEdit.squareArt' => 'Square Art',
			'metadataEdit.selectPoster' => 'Select Poster',
			'metadataEdit.selectBackground' => 'Select Background',
			'metadataEdit.selectLogo' => 'Select Logo',
			'metadataEdit.selectSquareArt' => 'Select Square Art',
			'metadataEdit.fromUrl' => 'From URL',
			'metadataEdit.uploadFile' => 'Upload File',
			'metadataEdit.enterImageUrl' => 'Enter image URL',
			'metadataEdit.imageUrl' => 'Image URL',
			'metadataEdit.metadataUpdated' => 'Metadata updated',
			'metadataEdit.metadataUpdateFailed' => 'Failed to update metadata',
			'metadataEdit.artworkUpdated' => 'Artwork updated',
			'metadataEdit.artworkUpdateFailed' => 'Failed to update artwork',
			'metadataEdit.noArtworkAvailable' => 'No artwork available',
			'metadataEdit.artworkOption' => ({required Object index}) => 'Artwork option ${index}',
			'metadataEdit.selectedArtworkOption' => ({required Object index}) => 'Artwork option ${index}, selected',
			'metadataEdit.notSet' => 'Not set',
			'metadataEdit.libraryDefault' => 'Library default',
			'metadataEdit.accountDefault' => 'Account default',
			'metadataEdit.seriesDefault' => 'Series default',
			'metadataEdit.episodeSorting' => 'Episode Sorting',
			'metadataEdit.oldestFirst' => 'Oldest first',
			'metadataEdit.newestFirst' => 'Newest first',
			'metadataEdit.keep' => 'Keep',
			'metadataEdit.allEpisodes' => 'All episodes',
			'metadataEdit.latestEpisodes' => ({required Object count}) => '${count} latest episodes',
			'metadataEdit.latestEpisode' => 'Latest episode',
			'metadataEdit.episodesAddedPastDays' => ({required Object count}) => 'Episodes added in the past ${count} days',
			'metadataEdit.deleteAfterPlaying' => 'Delete Episodes After Playing',
			'metadataEdit.never' => 'Never',
			'metadataEdit.afterADay' => 'After a day',
			'metadataEdit.afterAWeek' => 'After a week',
			'metadataEdit.afterAMonth' => 'After a month',
			'metadataEdit.onNextRefresh' => 'On next refresh',
			'metadataEdit.seasons' => 'Seasons',
			'metadataEdit.show' => 'Show',
			'metadataEdit.hide' => 'Hide',
			'metadataEdit.episodeOrdering' => 'Episode Ordering',
			'metadataEdit.tmdbAiring' => 'The Movie Database (Aired)',
			'metadataEdit.tvdbAiring' => 'TheTVDB (Aired)',
			'metadataEdit.tvdbAbsolute' => 'TheTVDB (Absolute)',
			'metadataEdit.metadataLanguage' => 'Metadata Language',
			'metadataEdit.useOriginalTitle' => 'Use Original Title',
			'metadataEdit.preferredAudioLanguage' => 'Preferred Audio Language',
			'metadataEdit.preferredSubtitleLanguage' => 'Preferred Subtitle Language',
			'metadataEdit.subtitleMode' => 'Auto-Select Subtitle Mode',
			'metadataEdit.manuallySelected' => 'Manually selected',
			'metadataEdit.shownWithForeignAudio' => 'Shown with foreign audio',
			'metadataEdit.alwaysEnabled' => 'Always enabled',
			'metadataEdit.tags' => 'Tags',
			'metadataEdit.addTag' => 'Add tag',
			'metadataEdit.genre' => 'Genre',
			'metadataEdit.director' => 'Director',
			'metadataEdit.writer' => 'Writer',
			'metadataEdit.producer' => 'Producer',
			'metadataEdit.country' => 'Country',
			'metadataEdit.collection' => 'Collection',
			'metadataEdit.label' => 'Label',
			'metadataEdit.quickTag' => 'Quick Tag...',
			'matchScreen.match' => 'Match...',
			'matchScreen.fixMatch' => 'Fix Match...',
			'matchScreen.unmatch' => 'Unmatch',
			'matchScreen.unmatchConfirm' => 'Clear this match? Plex treats it as unmatched until rematched.',
			'matchScreen.unmatchSuccess' => 'Item unmatched',
			'matchScreen.unmatchFailed' => 'Failed to unmatch item',
			'matchScreen.matchApplied' => 'Match applied',
			'matchScreen.matchFailed' => 'Failed to apply match',
			'matchScreen.titleHint' => 'Title',
			'matchScreen.yearHint' => 'Year',
			'matchScreen.search' => 'Search',
			'matchScreen.noMatchesFound' => 'No matches found',
			'serverTasks.title' => 'Server Tasks',
			'serverTasks.failedToLoad' => 'Failed to load tasks',
			'serverTasks.noTasks' => 'No tasks running',
			'trakt.title' => 'Trakt',
			'trakt.connected' => 'Connected',
			'trakt.connectedAs' => ({required Object username}) => 'Connected as @${username}',
			'trakt.disconnectConfirm' => 'Disconnect Trakt account?',
			'trakt.disconnectConfirmBody' => 'Luroka will stop sending events to Trakt. You can reconnect any time.',
			'trakt.scrobble' => 'Real-time scrobbling',
			'trakt.scrobbleDescription' => 'Send play, pause, and stop events to Trakt during playback.',
			'trakt.watchedSync' => 'Sync watched status',
			'trakt.watchedSyncDescription' => 'When you mark items as watched in Luroka, they are also marked as watched on Trakt.',
			'seerr.title' => 'Seerr',
			'seerr.connectTitle' => 'Connect Seerr',
			'seerr.serverUrl' => 'Server URL',
			'seerr.serverUrlHelper' => 'The address of your Seerr instance',
			'seerr.checkServer' => 'Continue',
			'seerr.signInWithJellyfin' => 'Sign in with Jellyfin',
			_ => null,
		} ?? switch (path) {
			'seerr.signInWithEmby' => 'Sign in with Emby',
			'seerr.signInWithLocal' => 'Use a local account',
			'seerr.email' => 'Email',
			'seerr.noSignInMethods' => 'This Seerr instance offers no sign-in method Luroka supports.',
			'seerr.instance' => 'Instance',
			'seerr.disconnectConfirm' => 'Disconnect Seerr?',
			'seerr.disconnectConfirmBody' => 'Luroka will forget this Seerr instance. Reconnect any time.',
			'seerr.request' => 'Request',
			'seerr.request4k' => 'Request in 4K',
			'seerr.seasons' => 'Seasons',
			'seerr.allSeasons' => 'All seasons',
			'seerr.advancedOptions' => 'Advanced',
			'seerr.destinationServer' => 'Destination server',
			'seerr.qualityProfile' => 'Quality profile',
			'seerr.rootFolder' => 'Root folder',
			'seerr.languageProfile' => 'Language profile',
			'seerr.tags' => 'Tags',
			'seerr.noTags' => 'No tags',
			'seerr.defaultOption' => ({required Object name}) => '${name} (Default)',
			'seerr.animeNote' => 'This series is an anime.',
			'seerr.requestSubmitted' => 'Request submitted',
			'seerr.requestFailed' => ({required Object error}) => 'Request failed: ${error}',
			'seerr.requestsLoadFailed' => 'Couldn\'t load request options',
			'seerr.nothingToRequest' => 'Everything is already available or requested.',
			'seerr.statusAvailable' => 'Available',
			'seerr.statusPartiallyAvailable' => 'Partially available',
			'seerr.statusRequested' => 'Requested',
			'seerr.statusProcessing' => 'Processing',
			'seerr.statusBlocklisted' => 'Blocklisted',
			'seerr.couldNotReach' => ({required Object url, required Object error}) => 'Could not reach ${url}: ${error}',
			'seerr.noInstanceAtUrl' => ({required Object url, required Object status}) => 'No Seerr instance at ${url} (HTTP ${status})',
			'seerr.behindAuthProxy' => 'An authenticating reverse proxy (SSO or HTTP auth) answered instead of Seerr. Luroka cannot sign in through it: let Seerr\'s /api/v1 path bypass the proxy for this app, or use an address that reaches Seerr directly.',
			'seerr.invalidUrl' => 'Enter a server address like https://seerr.example.com',
			'seerr.quickConnectUnsupported' => 'This Seerr instance does not support Quick Connect. It needs Seerr 3.4 or newer.',
			'seerr.notInitialized' => 'This Seerr instance has not completed first-run setup',
			'seerr.noPlexTokenForReauth' => 'No Plex token is available to sign in again',
			'seerr.noStoredCredentials' => 'No stored credentials are available to sign in again',
			'seerr.signInRejected' => 'Sign-in was rejected',
			'seerr.noSessionCookie' => 'Seerr did not issue a session cookie',
			'seerr.freshCookieRejected' => 'Seerr rejected the new session cookie',
			'seerr.noUserInformation' => 'Seerr did not return user information',
			'seerr.sessionRejectedAfterReauth' => 'The session was rejected after signing in again',
			'seerr.permissionDenied' => 'Seerr denied this action: your account no longer has the required permission',
			'seerr.permissionRevoked' => 'You no longer have permission to request this',
			'services.title' => 'Services',
			'services.hubSubtitle' => 'Connect the services you use to discover more, request titles, and keep your viewing in sync.',
			'services.discoverySection' => 'Discovery & requests',
			'services.trackingSection' => 'Watch tracking & lists',
			'services.seerrDescription' => 'Find and request movies or shows from your Seerr server.',
			'services.tmdbDescription' => 'Discover movies and shows, artwork, ratings, and details.',
			'services.traktDescription' => 'Track movies and shows, sync watched status, and manage your watchlist.',
			'services.malDescription' => 'Keep your anime list and viewing progress in sync.',
			'services.anilistDescription' => 'Follow anime and sync your viewing progress with AniList.',
			'services.simklDescription' => 'Track your movies, shows, and anime with Simkl.',
			'services.mdblistDescription' => 'Connect your MDBList lists and movie ratings.',
			'services.connectionIntro' => ({required Object service}) => 'Connect ${service} to your current Luroka profile. You can manage this connection and its options here any time.',
			'services.connectService' => ({required Object service}) => 'Connect ${service}',
			'services.seerrConnectDescription' => 'Connect your Seerr server to discover and request movies and shows from Luroka.',
			'services.seerrServerStep' => 'Start with the address you use to open Seerr. We\'ll check which sign-in methods your server supports.',
			'services.seerrSignInStep' => 'Choose a sign-in method supported by your server.',
			'services.integrations' => 'Integrations',
			'services.notConnected' => 'Not connected',
			'services.connectedAs' => ({required Object username}) => 'Connected as @${username}',
			'services.scrobble' => 'Track progress automatically',
			'services.scrobbleDescription' => 'Update your list when you finish an episode or movie.',
			'services.disconnectConfirm' => ({required Object service}) => 'Disconnect ${service}?',
			'services.disconnectConfirmBody' => ({required Object service}) => 'Luroka will stop updating ${service}. Reconnect any time.',
			'services.connectFailed' => ({required Object service}) => 'Couldn\'t connect to ${service}. Try again.',
			'services.names.mal' => 'MyAnimeList',
			'services.names.anilist' => 'AniList',
			'services.names.simkl' => 'Simkl',
			'services.names.seerr' => 'Seerr',
			'services.names.mdblist' => 'MDBList',
			'services.simklReconnect.title' => 'Reconnect Simkl',
			'services.simklReconnect.subtitle' => 'Simkl is retiring the sign-in method this connection uses. Reconnecting opens simkl.com to approve Luroka — Luroka never sees your password. Your watch history stays on Simkl.',
			'services.deviceCode.title' => ({required Object service}) => 'Activate Luroka on ${service}',
			'services.deviceCode.instructions' => 'Scan the QR code, or visit the address below and enter this code:',
			'services.deviceCode.openToActivate' => ({required Object service}) => 'Open ${service} to activate',
			'services.deviceCode.copyCode' => 'Copy activation code',
			'services.deviceCode.waitingForAuthorization' => 'Waiting for authorization…',
			'services.deviceCode.codeCopied' => 'Code copied',
			'services.oauthProxy.title' => ({required Object service}) => 'Sign in to ${service}',
			'services.oauthProxy.body' => 'Scan this QR code or open the URL on any device.',
			'services.oauthProxy.openToSignIn' => ({required Object service}) => 'Open ${service} to sign in',
			'services.pendingAuth.copyUrl' => 'Copy sign-in URL',
			'services.pendingAuth.urlCopied' => 'URL copied',
			'services.libraryFilter.title' => 'Library filter',
			'services.libraryFilter.subtitleAllSyncing' => 'Syncing all libraries',
			'services.libraryFilter.subtitleNoneSyncing' => 'Nothing syncing',
			'services.libraryFilter.subtitleBlocked' => ({required Object count}) => '${count} blocked',
			'services.libraryFilter.subtitleAllowed' => ({required Object count}) => '${count} allowed',
			'services.libraryFilter.mode' => 'Filter mode',
			'services.libraryFilter.modeBlacklist' => 'Blacklist',
			'services.libraryFilter.modeWhitelist' => 'Whitelist',
			'services.libraryFilter.modeHintBlacklist' => 'Sync every library except the ones checked below.',
			'services.libraryFilter.modeHintWhitelist' => 'Sync only the libraries checked below.',
			'services.libraryFilter.libraries' => 'Libraries',
			'services.libraryFilter.noLibraries' => 'No libraries available',
			'offlineRecovery.title' => 'Your servers are offline',
			'offlineRecovery.description' => 'Your downloads are still available. Try reconnecting when your server is back, or add another server.',
			'offlineRecovery.appleTvDescription' => 'Luroka couldn\'t reach your media servers. Try reconnecting when they\'re available, or add another server to continue watching.',
			'offlineRecovery.kidsDescription' => 'We couldn\'t reach your media server. Try reconnecting, or ask a parent for help.',
			'offlineRecovery.retrying' => 'Connecting…',
			'offlineRecovery.addServer' => 'Add a server',
			'releaseUpdates.manualInstructions' => 'Download the release archive from GitHub, extract the APK, and install it on your Android device.',
			'releaseUpdates.tvInstructions' => 'Open this address on your phone or computer, or scan the QR code to download the release.',
			'releaseUpdates.pressBackAgain' => 'Press Back again to exit playback',
			'profileIntegrations.title' => 'Make Luroka yours',
			'profileIntegrations.description' => 'Connect your favorite services to track what you watch and request new movies and shows. Each Luroka profile has its own connections.',
			'profileIntegrations.step' => 'Optional integrations',
			'profileIntegrations.examples' => 'Trakt · Simkl · AniList · MyAnimeList · Seerr',
			'profileIntegrations.connect' => 'Explore integrations',
			'profileIntegrations.later' => 'Set up later',
			'profileIntegrations.manage' => 'Manage integrations',
			'profileIntegrations.forProfile' => ({required Object name}) => 'Connections for ${name}',
			'profileSetupGuide.title' => 'Make your profile yours',
			'profileSetupGuide.description' => 'Choose how Luroka looks and feels for this profile on this device. You can change everything later in Settings.',
			'profileSetupGuide.appearanceStep' => '1 of 2 · Look and feel',
			'profileSetupGuide.homeStep' => '2 of 2 · Your Home screen',
			'profileSetupGuide.preview' => 'Preview',
			'profileSetupGuide.previewTitle' => 'Your Home',
			'profileSetupGuide.previewPoster' => 'Poster',
			'profileSetupGuide.posterArtwork' => 'Artwork only',
			'profileSetupGuide.posterWithDetails' => 'Show poster details',
			'profileSetupGuide.musicDescription' => 'Play a movie or show’s theme while its details page is open, when available.',
			'profileSetupGuide.moreThemes' => 'More themes',
			'profileSetupGuide.fewerThemes' => 'Fewer themes',
			'profileSetupGuide.spotlightHeading' => 'What should appear in Spotlight?',
			'profileSetupGuide.progressHeading' => 'Continue Watching and Next Up',
			'profileSetupGuide.skip' => 'Use defaults and start watching',
			'profileSetupGuide.finish' => 'Start watching',
			'profileSetupGuide.back' => 'Back',
			'profileSetupGuide.kContinue' => 'Continue',
			'profileSetupGuide.chooseLater' => 'Choose libraries later',
			'profileSetupGuide.libraryScope' => 'This changes what appears in Luroka for this profile; it does not change server permissions.',
			'profileSetupGuide.createdTitle' => 'Profile created',
			'profileSetupGuide.createdDescription' => 'Your new profile is ready. Its owner can personalize it the first time they open it.',
			'profileSetupGuide.switchProfile' => 'Switch to this profile',
			'profileSetupGuide.stayHere' => 'Stay on current profile',
			'animeFavorites.filter' => 'Anime',
			'animeFavorites.manage' => 'Manage anime',
			'animeFavorites.description' => 'Automatic detection uses anime library names and available anime tags or IDs. Choose libraries and correct individual favorites. Choices are saved on this device for your profile.',
			'animeFavorites.libraries' => 'Anime libraries',
			'animeFavorites.libraryHint' => 'Libraries named Anime are recognized automatically. Select a library to change its classification.',
			'animeFavorites.titles' => 'Favorite titles',
			'animeFavorites.titleHint' => 'Select a title to mark it as anime or correct an automatic match.',
			'animeFavorites.automatic' => 'Automatic',
			'animeFavorites.include' => 'Anime',
			'animeFavorites.exclude' => 'Not anime',
			'animeFavorites.automaticIncluded' => 'Automatic · Anime',
			'animeFavorites.automaticExcluded' => 'Automatic · Not anime',
			'animeFavorites.noLibraries' => 'No connected libraries available.',
			'animeFavorites.noTitles' => 'No favorite movies or shows available.',
			'animeFavorites.empty' => 'No anime favorites found. Check your anime libraries or mark a title as anime.',
			'animeFavorites.saveFailed' => 'Couldn\'t save your anime settings. Please try again.',
			'addServer.addMediaBrowserTitle' => ({required Object product}) => 'Add ${product} server',
			'addServer.serverUrls' => 'Server URLs',
			'addServer.serverUrlsHelper' => 'Multiple URLs allowed, separated by commas.',
			'addServer.findServer' => 'Find server',
			'addServer.searchingLocalMediaBrowserServers' => ({required Object product}) => 'Looking for local ${product} servers...',
			'addServer.localMediaBrowserServers' => ({required Object product}) => 'Saved and nearby ${product} servers',
			'addServer.username' => 'Username',
			'addServer.password' => 'Password',
			'addServer.signIn' => 'Sign in',
			'addServer.change' => 'Change',
			'addServer.required' => 'Required',
			'addServer.couldNotReachServer' => ({required Object error}) => 'Could not reach the server: ${error}',
			'addServer.signInFailed' => ({required Object error}) => 'Sign-in failed: ${error}',
			'addServer.quickConnectFailed' => ({required Object error}) => 'Quick Connect failed: ${error}',
			'addServer.addPlexTitle' => 'Sign in with Plex',
			'addServer.pinExpired' => 'PIN expired before sign-in. Please try again.',
			'addServer.failedToRegisterAccount' => ({required Object error}) => 'Failed to register account: ${error}',
			'addServer.enterMediaBrowserUrlError' => ({required Object product}) => 'Enter your ${product} server URL',
			'addServer.addConnectionTitle' => 'Add connection',
			'addServer.addConnectionTitleScoped' => ({required Object name}) => 'Add to ${name}',
			'addServer.signInWithPlexCard' => 'Sign in with Plex',
			'addServer.signInWithPlexCardSubtitle' => 'Authorize this device. Shared servers are added.',
			'addServer.signInWithPlexCardSubtitleScoped' => 'Authorize a Plex account. Home users become profiles.',
			'addServer.connectToMediaBrowserCard' => ({required Object product}) => 'Connect to ${product}',
			'addServer.connectToMediaBrowserCardSubtitle' => 'Enter your server URL, username, and password.',
			'addServer.connectToMediaBrowserCardSubtitleScoped' => ({required Object product, required Object name}) => 'Sign in to your ${product} server. Binds to ${name}.',
			'addServer.borrowFromAnotherProfile' => 'Borrow from another profile',
			'addServer.borrowFromAnotherProfileSubtitle' => 'Reuse another profile\'s connection. PIN-protected profiles require a PIN.',
			'addServer.invalidCredentials' => 'Invalid username or password',
			'addServer.authResponseNotJson' => 'The authentication response was not valid JSON',
			'addServer.authResponseIncomplete' => 'The sign-in response from the server was incomplete',
			'addServer.quickConnectRejected' => 'Quick Connect was rejected by the server',
			'addServer.quickConnectNotJson' => 'The Quick Connect response was not valid JSON',
			'addServer.quickConnectMissingFields' => 'The Quick Connect response is missing a code or secret',
			'addServer.quickConnectPollRejected' => 'Quick Connect polling was rejected by the server',
			'addServer.serverTimedOut' => 'The server did not respond in time',
			'addServer.responseNotJson' => 'The server response was not valid JSON',
			'addServer.responseMissingIdentity' => ({required Object product}) => 'The response is missing an ID or server name — is this a ${product} server?',
			'addServer.probeFailed' => ({required Object error}) => 'Could not reach the server: ${error}',
			'addServer.enterAtLeastOneUrl' => ({required Object product}) => 'Enter at least one ${product} server URL',
			'addServer.noReachableServer' => ({required Object product}) => 'No reachable ${product} server was found',
			'addServer.urlsPointToDifferentServers' => ({required Object product}) => 'These URLs point to different ${product} servers',
			'addServer.urlDoesNotMatchServer' => ({required Object product}) => 'This URL does not match the ${product} server',
			'addServer.redirectUnsupported' => 'The server redirected to an unsupported URL',
			'addServer.redirectDifferentHost' => ({required Object product}) => 'The server redirected to a different host. Enter the final ${product} URL directly.',
			'addServer.redirectInsecure' => 'The server redirected from HTTPS to an insecure URL',
			'addServer.redirectUnsupportedEnterFinal' => ({required Object product}) => 'The server redirected to an unsupported URL. Enter the final ${product} URL directly.',
			_ => null,
		};
	}
}
