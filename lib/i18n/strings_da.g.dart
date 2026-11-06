///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsDa extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsDa({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.da,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <da>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsDa _root = this; // ignore: unused_field

	@override 
	TranslationsDa $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsDa(meta: meta ?? this.$meta);

	// Translations
	@override late final _Translations$mobileLibrary$da mobileLibrary = _Translations$mobileLibrary$da._(_root);
	@override late final _Translations$profileStartup$da profileStartup = _Translations$profileStartup$da._(_root);
	@override late final _Translations$subtitleUpload$da subtitleUpload = _Translations$subtitleUpload$da._(_root);
	@override late final _Translations$personSpotlight$da personSpotlight = _Translations$personSpotlight$da._(_root);
	@override late final _Translations$detailExtras$da detailExtras = _Translations$detailExtras$da._(_root);
	@override late final _Translations$mobileUi$da mobileUi = _Translations$mobileUi$da._(_root);
	@override late final _Translations$family$da family = _Translations$family$da._(_root);
	@override late final _Translations$posterDetails$da posterDetails = _Translations$posterDetails$da._(_root);
	@override late final _Translations$libraryPolish$da libraryPolish = _Translations$libraryPolish$da._(_root);
	@override late final _Translations$showSchedule$da showSchedule = _Translations$showSchedule$da._(_root);
	@override late final _Translations$awardsCatalog$da awardsCatalog = _Translations$awardsCatalog$da._(_root);
	@override late final _Translations$searchDiscovery$da searchDiscovery = _Translations$searchDiscovery$da._(_root);
	@override late final _Translations$lurokaPlayerDesign$da lurokaPlayerDesign = _Translations$lurokaPlayerDesign$da._(_root);
	@override late final _Translations$lurokaWorkspace$da lurokaWorkspace = _Translations$lurokaWorkspace$da._(_root);
	@override late final _Translations$mobileFixes$da mobileFixes = _Translations$mobileFixes$da._(_root);
	@override late final _Translations$downloadsRedesign$da downloadsRedesign = _Translations$downloadsRedesign$da._(_root);
	@override late final _Translations$kidsShelf$da kidsShelf = _Translations$kidsShelf$da._(_root);
	@override late final _Translations$kidsHome$da kidsHome = _Translations$kidsHome$da._(_root);
	@override late final _Translations$tvSettingsV2$da tvSettingsV2 = _Translations$tvSettingsV2$da._(_root);
	@override late final _Translations$settingsRedesign$da settingsRedesign = _Translations$settingsRedesign$da._(_root);
	@override late final _Translations$onboarding$da onboarding = _Translations$onboarding$da._(_root);
	@override late final _Translations$household$da household = _Translations$household$da._(_root);
	@override late final _Translations$detailComposition$da detailComposition = _Translations$detailComposition$da._(_root);
	@override late final _Translations$kids$da kids = _Translations$kids$da._(_root);
	@override late final _Translations$lurokaDiscovery$da lurokaDiscovery = _Translations$lurokaDiscovery$da._(_root);
	@override late final _Translations$app$da app = _Translations$app$da._(_root);
	@override late final _Translations$appIcon$da appIcon = _Translations$appIcon$da._(_root);
	@override late final _Translations$auth$da auth = _Translations$auth$da._(_root);
	@override late final _Translations$common$da common = _Translations$common$da._(_root);
	@override late final _Translations$tvHints$da tvHints = _Translations$tvHints$da._(_root);
	@override late final _Translations$screens$da screens = _Translations$screens$da._(_root);
	@override late final _Translations$mediaExtras$da mediaExtras = _Translations$mediaExtras$da._(_root);
	@override late final _Translations$update$da update = _Translations$update$da._(_root);
	@override late final _Translations$supporter$da supporter = _Translations$supporter$da._(_root);
	@override late final _Translations$settings$da settings = _Translations$settings$da._(_root);
	@override late final _Translations$themeEditor$da themeEditor = _Translations$themeEditor$da._(_root);
	@override late final _Translations$seriesBrowser$da seriesBrowser = _Translations$seriesBrowser$da._(_root);
	@override late final _Translations$titlePage$da titlePage = _Translations$titlePage$da._(_root);
	@override late final _Translations$tvMenus$da tvMenus = _Translations$tvMenus$da._(_root);
	@override late final _Translations$lurokaPlayer$da lurokaPlayer = _Translations$lurokaPlayer$da._(_root);
	@override late final _Translations$lurokaSettings$da lurokaSettings = _Translations$lurokaSettings$da._(_root);
	@override late final _Translations$playerChrome$da playerChrome = _Translations$playerChrome$da._(_root);
	@override late final _Translations$tvLayout$da tvLayout = _Translations$tvLayout$da._(_root);
	@override late final _Translations$studios$da studios = _Translations$studios$da._(_root);
	@override late final _Translations$dashboard$da dashboard = _Translations$dashboard$da._(_root);
	@override late final _Translations$lurokaCatalog$da lurokaCatalog = _Translations$lurokaCatalog$da._(_root);
	@override late final _Translations$referenceDetails$da referenceDetails = _Translations$referenceDetails$da._(_root);
	@override late final _Translations$lurokaThemes$da lurokaThemes = _Translations$lurokaThemes$da._(_root);
	@override late final _Translations$customPerformance$da customPerformance = _Translations$customPerformance$da._(_root);
	@override late final _Translations$homeLayout$da homeLayout = _Translations$homeLayout$da._(_root);
	@override late final _Translations$screenTime$da screenTime = _Translations$screenTime$da._(_root);
	@override late final _Translations$activityStats$da activityStats = _Translations$activityStats$da._(_root);
	@override late final _Translations$search$da search = _Translations$search$da._(_root);
	@override late final _Translations$hotkeys$da hotkeys = _Translations$hotkeys$da._(_root);
	@override late final _Translations$fileInfo$da fileInfo = _Translations$fileInfo$da._(_root);
	@override late final _Translations$mediaMenu$da mediaMenu = _Translations$mediaMenu$da._(_root);
	@override late final _Translations$rateSheet$da rateSheet = _Translations$rateSheet$da._(_root);
	@override late final _Translations$accessibility$da accessibility = _Translations$accessibility$da._(_root);
	@override late final _Translations$tooltips$da tooltips = _Translations$tooltips$da._(_root);
	@override late final _Translations$audioTracks$da audioTracks = _Translations$audioTracks$da._(_root);
	@override late final _Translations$videoControls$da videoControls = _Translations$videoControls$da._(_root);
	@override late final _Translations$messages$da messages = _Translations$messages$da._(_root);
	@override late final _Translations$sourceLibraries$da sourceLibraries = _Translations$sourceLibraries$da._(_root);
	@override late final _Translations$subtitlingStyling$da subtitlingStyling = _Translations$subtitlingStyling$da._(_root);
	@override late final _Translations$mpvConfig$da mpvConfig = _Translations$mpvConfig$da._(_root);
	@override late final _Translations$dialog$da dialog = _Translations$dialog$da._(_root);
	@override late final _Translations$profiles$da profiles = _Translations$profiles$da._(_root);
	@override late final _Translations$connections$da connections = _Translations$connections$da._(_root);
	@override late final _Translations$serversAccounts$da serversAccounts = _Translations$serversAccounts$da._(_root);
	@override late final _Translations$accountPreferences$da accountPreferences = _Translations$accountPreferences$da._(_root);
	@override late final _Translations$discover$da discover = _Translations$discover$da._(_root);
	@override late final _Translations$errors$da errors = _Translations$errors$da._(_root);
	@override late final _Translations$libraries$da libraries = _Translations$libraries$da._(_root);
	@override late final _Translations$about$da about = _Translations$about$da._(_root);
	@override late final _Translations$serverSelection$da serverSelection = _Translations$serverSelection$da._(_root);
	@override late final _Translations$hubDetail$da hubDetail = _Translations$hubDetail$da._(_root);
	@override late final _Translations$logs$da logs = _Translations$logs$da._(_root);
	@override late final _Translations$startup$da startup = _Translations$startup$da._(_root);
	@override late final _Translations$licenses$da licenses = _Translations$licenses$da._(_root);
	@override late final _Translations$navigation$da navigation = _Translations$navigation$da._(_root);
	@override late final _Translations$explore$da explore = _Translations$explore$da._(_root);
	@override late final _Translations$liveTv$da liveTv = _Translations$liveTv$da._(_root);
	@override late final _Translations$collections$da collections = _Translations$collections$da._(_root);
	@override late final _Translations$playlists$da playlists = _Translations$playlists$da._(_root);
	@override late final _Translations$music$da music = _Translations$music$da._(_root);
	@override late final _Translations$watchTogether$da watchTogether = _Translations$watchTogether$da._(_root);
	@override late final _Translations$downloads$da downloads = _Translations$downloads$da._(_root);
	@override late final _Translations$shaders$da shaders = _Translations$shaders$da._(_root);
	@override late final _Translations$companionRemote$da companionRemote = _Translations$companionRemote$da._(_root);
	@override late final _Translations$videoSettings$da videoSettings = _Translations$videoSettings$da._(_root);
	@override late final _Translations$performanceOverlay$da performanceOverlay = _Translations$performanceOverlay$da._(_root);
	@override late final _Translations$externalPlayer$da externalPlayer = _Translations$externalPlayer$da._(_root);
	@override late final _Translations$metadataEdit$da metadataEdit = _Translations$metadataEdit$da._(_root);
	@override late final _Translations$matchScreen$da matchScreen = _Translations$matchScreen$da._(_root);
	@override late final _Translations$serverTasks$da serverTasks = _Translations$serverTasks$da._(_root);
	@override late final _Translations$trakt$da trakt = _Translations$trakt$da._(_root);
	@override late final _Translations$seerr$da seerr = _Translations$seerr$da._(_root);
	@override late final _Translations$services$da services = _Translations$services$da._(_root);
	@override late final _Translations$addServer$da addServer = _Translations$addServer$da._(_root);
}

// Path: mobileLibrary
class _Translations$mobileLibrary$da extends Translations$mobileLibrary$en {
	_Translations$mobileLibrary$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get pickerSubtitle => 'Vælg en samling at udforske';
	@override String get searchLibraries => 'Søg i biblioteker';
	@override String get noLibraries => 'Ingen matchende biblioteker';
	@override String get ascending => 'Stigende';
	@override String get descending => 'Faldende';
	@override String get sort => 'Sorter';
	@override String unwatchedCount({required Object count}) => '${count} uviste episoder';
	@override String get latestEpisode => 'Seneste afsnit';
}

// Path: profileStartup
class _Translations$profileStartup$da extends Translations$profileStartup$en {
	_Translations$profileStartup$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get autoLogin => 'Åbn den sidst brugte profil';
	@override String get autoLoginHint => 'Åbn automatisk den sidste profil, når den ikke kræver en PIN.';
	@override String get allowKidsExit => 'Tillad at forlade børneprofilen uden forældre-PIN';
	@override String get allowKidsExitHint => 'Barnet kan skifte til en anden profil uden forældre-PIN. Profil-PIN gælder stadig.';
	@override String get chooseKidsConnection => 'Vælg en anden konto eller server';
	@override String get chooseKidsConnectionHint => 'Efter at have gemt, tilslut en separat konto eller vælg en forbindelse fra en anden profil.';
}

// Path: subtitleUpload
class _Translations$subtitleUpload$da extends Translations$subtitleUpload$en {
	_Translations$subtitleUpload$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get chooseFile => 'Upload undertekstfil';
	@override String get hint => 'Vælg sproget ovenfor, og upload derefter en SRT, ASS, SSA eller VTT fil til denne server.';
	@override String get success => 'Undertekster uploadet til serveren. Det vises, når serveren opdaterer elementet.';
	@override String get failed => 'Kunne ikke uploade underteksten. Tjek fil- og servertilladelserne.';
}

// Path: personSpotlight
class _Translations$personSpotlight$da extends Translations$personSpotlight$en {
	_Translations$personSpotlight$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get inYourLibraries => 'i dine biblioteker';
	@override String libraryTitles({required Object n}) => 'I dine biblioteker · ${n} titler';
	@override String get readBiography => 'Læs biografi';
	@override String get newestFirst => 'Nyeste først';
	@override String get oldestFirst => 'Ældste først';
	@override String get titleAscending => 'Titel A–Z';
	@override String get sortTitles => 'Sorter filmografi';
	@override String unwatchedEpisodes({required Object n}) => '${n} uviste episoder';
	@override String copies({required Object n}) => '${n} bibliotekskopier';
	@override String versions({required Object n}) => '${n} filversioner';
	@override String get retryTitles => 'Kunne ikke indlæse alle titler. Prøv igen';
}

// Path: detailExtras
class _Translations$detailExtras$da extends Translations$detailExtras$en {
	_Translations$detailExtras$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get onlineVideos => 'Trailere og ekstraudstyr';
	@override String get reviews => 'Anmeldelser';
	@override String get readReview => 'Læs hele anmeldelsen';
	@override String directedBy({required Object name}) => 'Mere instrueret af ${name}';
	@override String get previewUnavailable => 'Denne forhåndsvisning kunne ikke afspilles. Du kan åbne den i dens originale app i stedet.';
	@override String get openExternally => 'Åbn den originale video';
}

// Path: mobileUi
class _Translations$mobileUi$da extends Translations$mobileUi$en {
	_Translations$mobileUi$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get readMore => 'Læs mere';
	@override String get readLess => 'Vis mindre';
	@override String get playbackTools => 'Afspilningsmuligheder';
	@override String get streamingQuality => 'Streaming kvalitet';
	@override String get fileVersions => 'Filversioner';
	@override String get qualityAndVersions => 'Streamingkvalitet og filversioner';
	@override String get hidePlaybackTools => 'Skjul afspilningsværktøjer';
	@override String remaining({required Object time}) => '${time} venstre';
	@override String endsAt({required Object time}) => 'Slutter ved ${time}';
	@override String get collection => 'Din samling';
	@override String get nowPlaying => 'SPILLER NU';
	@override String get popularLibrary => 'Populær i dit bibliotek';
	@override String get weeklyLibrary => 'Trending i dit bibliotek i denne uge';
}

// Path: family
class _Translations$family$da extends Translations$family$en {
	_Translations$family$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profiler og familie';
	@override String get yourPeople => 'Dit folk';
	@override String get manageHint => 'Administrer personer, børns sikkerhed og visningsaktivitet på denne enhed.';
	@override String get people => 'Mennesker';
	@override String peopleCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n,
		one: '${n} person',
		other: '${n} mennesker',
	);
	@override String kidsCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n,
		one: '${n} barn',
		other: '${n} børn',
	);
	@override String get you => 'Dig';
	@override String get adult => 'Voksen';
	@override String get child => 'Barn';
	@override String get adultTeen => 'Voksen eller teenager';
	@override String get adultHint => 'Deres egen profil, valgfri profil PIN og deres egne serverforbindelser.';
	@override String get childHint => 'Aldersgrænser, sikre biblioteker og et børnevenligt udseende. En forældre-PIN beskytter disse indstillinger.';
	@override String upToAge({required Object age}) => 'Op til alder ${age}';
	@override String get allAges => 'Alle aldre';
	@override String get switchProfile => 'Skift profil';
	@override String get switchHint => 'Vælg, hvem der ser. At administrere en person skifter ikke profil.';
	@override String get addPerson => 'Tilføj person';
	@override String get addChild => 'Tilføj barn';
	@override String get addHint => 'Opret en voksen-, teenager- eller børneprofil på denne enhed.';
	@override String get emptyPeople => 'Giv plads til alle, der ser med dig.';
	@override String get emptyKids => 'Ingen børneprofiler endnu. Tilføj et barn for at vælge aldersgrænser og sikre biblioteker.';
	@override String get safety => 'Børn og sikkerhed';
	@override String get safetyHint => 'Forældre-PIN, børneprofiler og aldersbegrænsninger.';
	@override String get protection => 'Beskyttelse';
	@override String get kidsProfiles => 'Børneprofiler';
	@override String get backupHistory => 'Backup & historie';
	@override String get parentPinOn => 'Forældre-PIN aktiveret';
	@override String get profilePin => 'Profil-PIN';
	@override String get confirmParentPin => 'Bekræft forældre-PIN';
	@override String get parentPinOff => 'Forældre-PIN ikke angivet';
	@override String get missingPin => 'Tilføj en forældre-PIN for at beskytte disse indstillinger.';
	@override String get hideScope => 'Skjul børns aktivitet fra Fortsæt med at se i denne Luroka-profil. Dette ændrer ikke den delte servervisningshistorik.';
	@override String get localScope => 'Børneprofiler og begrænsninger gemmes på denne enhed. Profiler, der bruger den samme serverkonto, deler stadig den kontos visningsfremgang.';
	@override String get clearHistoryConfirm => 'Vil du tillade, at titler, som børn har set, vises i Fortsæt med at se igen? Børneprofiler, begrænsninger, visningstidsstatistikker og servervisningshistorik vil blive opbevaret.';
	@override String get editRestrictions => 'Rediger børnebegrænsninger';
	@override String get activity => 'Se aktivitet';
	@override String namedActivity({required Object name}) => '${name}s visningsaktivitet';
	@override String get thisProfile => 'Denne profil';
	@override String get activityScope => 'Afspilningstid optaget af Luroka på denne enhed for den aktive profil. Disse er statistikker, ikke visningsgrænser eller komplet serverhistorik.';
	@override String get activityUnavailable => 'Visningsaktivitet er ikke tilgængelig for denne profil endnu.';
	@override String get finished => 'Færdig';
}

// Path: posterDetails
class _Translations$posterDetails$da extends Translations$posterDetails$en {
	_Translations$posterDetails$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get showThemeMusic => 'Spil temamusik';
	@override String get showThemeMusicDescription => 'Afspil en film eller en series tema, mens dens detaljeringsside er åben, når den er tilgængelig på serveren.';
	@override String get catalogEpisodeInfo => 'Vis episodeantal og kørselstid på katalogkort';
	@override String get catalogEpisodeInfoDescription => 'Vis episodeantal og gennemsnitlig varighed på Opdag-plakater.';
	@override String get title => 'Plakat detaljer';
	@override String get description => 'Vis titlen, året og IMDb-bedømmelsen under plakater på tværs af Studio, Search, Opdag og Libraries. Manglende IMDb-bedømmelser forbliver skjult. Sluk for plakater, der kun er kunstværker.';
}

// Path: libraryPolish
class _Translations$libraryPolish$da extends Translations$libraryPolish$en {
	_Translations$libraryPolish$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get posterDetails => 'Plakat detaljer';
	@override String get showPosterDetails => 'Vis plakatdetaljer · navn, årstal & IMDb';
	@override String get hidePosterDetails => 'Skjul plakatdetaljer';
	@override String get overview => 'Oversigt';
	@override String get refreshing => 'Opdaterer bibliotek...';
	@override String get serverCollections => 'Alle samlinger på denne server';
	@override String get serverPlaylists => 'Alle videoafspilningslister på denne server';
	@override String get libraryCollections => 'Samlinger i dette bibliotek';
	@override String get searchCollections => 'Søg i samlinger';
	@override String get searchPlaylists => 'Søg afspilningslister';
	@override String get searchHint => 'Søg efter navn';
	@override String get titleAscending => 'Titel A–Z';
	@override String get titleDescending => 'Titel Z–A';
	@override String get clearFilters => 'Ryd filtre';
	@override String get playlistEmptyTitle => 'Dine filmaftener, i din rækkefølge';
	@override String get playlistEmptyHint => 'Åbn en titels Mere-menu, og vælg Tilføj til afspilningsliste for at oprette din første afspilningsliste.';
	@override String get noMatches => 'Ingen matchende navne';
	@override String get indexing => 'Søger i hele kataloget...';
}

// Path: showSchedule
class _Translations$showSchedule$da extends Translations$showSchedule$en {
	_Translations$showSchedule$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get today => 'I dag';
	@override String get tomorrow => 'I morgen';
	@override String get latestUpcoming => 'Seneste og kommende';
	@override String get latestEpisode => 'Seneste afsnit';
	@override String get upcoming => 'Kommende';
	@override String get inLibrary => 'På dit bibliotek';
	@override String get notInLibrary => 'Ikke på dit bibliotek';
	@override String get notYetAired => 'Endnu ikke sendt';
	@override String episode({required Object number}) => 'Afsnit ${number}';
	@override String get caughtUp => 'I er alle fanget';
	@override String get finished => 'Du har afsluttet denne serie';
	@override String nextAirs({required Object date}) => 'Næste afsnit sendes ${date}';
	@override String get watchBeginning => 'Se fra begyndelsen';
	@override String get replay => 'Genafspilning';
	@override String get playNext => 'Spil næste';
}

// Path: awardsCatalog
class _Translations$awardsCatalog$da extends Translations$awardsCatalog$en {
	_Translations$awardsCatalog$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get awards => 'Priser';
	@override String get customize => 'Tilpas';
	@override String get chooseShelves => 'Tilpas Opdag';
	@override String get shelvesDescription => 'Vælg de rækker, du vil have på Opdag. Prisrækker viser vindere fra dine biblioteker. Dine valg gemmes for denne profil.';
	@override String get restoreShelves => 'Gendan standardindstillinger';
	@override String get charts => 'IMDb diagrammer';
	@override String get generalShelves => 'Populær og trending';
	@override String get saveShelvesFailed => 'Kunne ikke gemme dine Opdag-valg. Prøv venligst igen.';
	@override String get comedyActress => 'Hovedrolleindehaver · Komedie';
	@override String get leadDramaActor => 'Hovedskuespiller · Drama';
	@override String get leadDramaActress => 'Hovedrolleindehaver · Drama';
	@override String get comedySupportingActor => 'Birolle · Komedie';
	@override String get comedySupportingActress => 'Birolle · Komedie';
	@override String get leadingPerformance => 'Sølvbjørn · Bedste førende præstation';
	@override String get globesComedySeries => 'Bedste tv-serie · Musical eller komedie';
	@override String get limitedSupportingActor => 'Birolle · Begrænset serie eller film';
	@override String get limitedSupportingActress => 'Birolle · Begrænset serie eller film';
	@override String get berlinDocumentary => 'Berlinale dokumentarpris';
	@override String get title => 'Priser og festivaler';
	@override String get chooseCategory => 'Vælg en priskategori';
	@override String get winners => 'Vindere';
	@override String get nominees => 'Nominerede';
	@override String get releaseDecade => 'Udgivelses årti';
	@override String get allYears => 'Alle år';
	@override String get loading => 'Indlæser pristitler...';
	@override String get matching => 'Finder disse titler i dine biblioteker...';
	@override String get unavailable => 'Prisdata er ikke tilgængelige lige nu. Prøv igen.';
	@override String get empty => 'Ingen matchende titler i dine synlige biblioteker for denne kategori.';
	@override String get coverage => 'Medlemskab kommer fra Wikidata og kan være ufuldstændigt. Skuespiller- og instruktørkategorier viser de film eller shows, de blev præmieret for. Årstal refererer til titeludgivelsen, ikke ceremonien.';
	@override String get picture => 'Bedste billede';
	@override String get film => 'Bedste film';
	@override String get international => 'Bedste internationale indslag';
	@override String get internationalFilm => 'Bedste internationale film';
	@override String get nonEnglishFilm => 'Bedste film ikke på engelsk';
	@override String get animated => 'Bedste animerede funktion';
	@override String get animatedFilm => 'Bedste animerede film';
	@override String get documentary => 'Bedste dokumentarfilm';
	@override String get director => 'Bedste instruktør';
	@override String get actor => 'Bedste skuespiller';
	@override String get actress => 'Bedste skuespillerinde';
	@override String get supportingActor => 'Bedste mandlige birolle';
	@override String get supportingActress => 'Bedste kvindelige birolle';
	@override String get originalScreenplay => 'Bedste originale manuskript';
	@override String get adaptedScreenplay => 'Bedste tilpassede manuskript';
	@override String get screenplay => 'Bedste manuskript';
	@override String get cinematography => 'Bedste kinematografi';
	@override String get editing => 'Bedste redigering';
	@override String get score => 'Bedste originale partitur';
	@override String get song => 'Bedste originale sang';
	@override String get sound => 'Bedste lyd';
	@override String get effects => 'Bedste visuelle effekter';
	@override String get productionDesign => 'Bedste produktionsdesign';
	@override String get costume => 'Bedste kostumedesign';
	@override String get makeup => 'Bedste makeup og hårstyling';
	@override String get dramaSeries => 'Fremragende dramaserie';
	@override String get comedySeries => 'Fremragende komedieserie';
	@override String get limitedSeries => 'Fremragende begrænset serie';
	@override String get animatedProgram => 'Fremragende animeret program';
	@override String get comedyActor => 'Hovedskuespiller · Komedie';
	@override String get limitedActor => 'Hovedrolleindehaver · Begrænset serie eller film';
	@override String get limitedActress => 'Hovedrolleindehaver · Begrænset serie eller film';
	@override String get limitedDirecting => 'Instruktion · Begrænset serie eller film';
	@override String get britishFilm => 'Bedste britiske film';
	@override String get goldenBear => 'Guldbjørn';
	@override String get grandJury => 'Juryens store pris';
	@override String get jury => 'Juryens pris';
	@override String get teddy => 'Teddy Award';
	@override String get goldenLion => 'Gyldne Løve';
	@override String get volpiActor => 'Volpi Cup · Bedste skuespiller';
	@override String get volpiActress => 'Volpi Cup · Bedste skuespillerinde';
	@override String get queerLion => 'Queer løve';
	@override String get dramaFilm => 'Bedste film · Drama';
	@override String get comedyFilm => 'Bedste film · Musical eller komedie';
	@override String get dramaActor => 'Bedste skuespiller · Drama';
	@override String get dramaActress => 'Bedste skuespillerinde · Drama';
	@override String get usDramatic => 'Grand Jury-prisen for amerikansk drama';
	@override String get documentaryJury => 'Dokumentarernes Grand Jury Prize';
	@override String get worldCinema => 'Grand Jury-prisen for verdensfilm';
	@override String get dramaticAudience => 'Publikumsprisen for amerikansk drama';
	@override String get usDirecting => 'U.S. Directing Award';
	@override String get peopleChoice => 'People\'s Choice Award';
	@override String get canadianFilm => 'Bedste canadiske film';
	@override String get firstFeature => 'Bedste første funktion';
	@override String get cassavetes => 'John Cassavetes-prisen';
	@override String get scienceFiction => 'Bedste science fiction-film';
	@override String get fantasy => 'Bedste fantasyfilm';
	@override String get horror => 'Bedste gyserfilm';
	@override String get action => 'Bedste action- eller eventyrfilm';
	@override String get thriller => 'Bedste thrillerfilm';
}

// Path: searchDiscovery
class _Translations$searchDiscovery$da extends Translations$searchDiscovery$en {
	_Translations$searchDiscovery$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get suggestions => 'Noget at se';
	@override String get collections => 'Priser og indsamlinger';
	@override String get collectionsHint => 'Prisvindere og kuraterede diagrammer fra dine biblioteker';
	@override String get all => 'Alt sammen opdagelse';
	@override String get awards => 'Priser og hitlister';
}

// Path: lurokaPlayerDesign
class _Translations$lurokaPlayerDesign$da extends Translations$lurokaPlayerDesign$en {
	_Translations$lurokaPlayerDesign$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get seeking => 'Søg forhåndsvisning';
	@override String get keepWatching => 'Bliv ved med at se';
	@override String get upNext => 'Næste';
	@override String playingIn({required Object seconds}) => 'Spiller i ${seconds} s';
}

// Path: lurokaWorkspace
class _Translations$lurokaWorkspace$da extends Translations$lurokaWorkspace$en {
	_Translations$lurokaWorkspace$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get everyday => 'Hver dag';
	@override String get homeDiscovery => 'Hjem og opdagelse';
	@override String get librariesAccounts => 'Biblioteker og regnskaber';
	@override String get profilesFamily => 'Profiler og familie';
	@override String get thisDevice => 'Denne enhed';
	@override String get thisProfile => 'Denne profil';
	@override String get searchSettings => 'Søgeindstillinger';
	@override String get savedAutomatically => 'Ændringer gemmes automatisk. Everyday og Advanced ændrer kun, hvilke kontroller der vises.';
	@override String get audioSubtitles => 'Lyd og undertekster';
	@override String get audioDescription => 'Lydoutput, lydstyrke og undertekstudseende. Foretrukne sprog indstilles pr. serverkonto ved hjælp af kontopræferencer, når der er forbindelse.';
	@override String get pictureSound => 'Billede & Lyd';
	@override String get pictureDescription => 'Frame-rate matching, opløsning, HDR og Dolby Vision tuning for denne enhed.';
	@override String get engineDescription => 'Spillermotor, afkodning, brugerdefineret konfiguration og avancerede afspilningsregler.';
	@override String get networkStreaming => 'Netværk og streaming';
	@override String get networkDescription => 'Streamingkvalitet, codec-præferencer for direkte afspilning og båndbreddevalg.';
	@override String get homeOptions => 'Hjem muligheder';
	@override String get refreshHome => 'Opdater Hjem & Popular Now';
	@override String get customizeHome => 'Tilpas Hjem';
	@override String get spotlight => 'Hjem Spotlight';
	@override String get rotateSpotlight => 'Roter automatisk fremhævede titler';
	@override String get rotateDescription => 'Roter, mens Hjem er inaktivt. Interaktion sætter rotation på pause; browsing hylder, åbning af en side eller forlader appen sætter den helt på pause.';
	@override String get rotationInterval => 'Tid mellem fremhævede titler';
}

// Path: mobileFixes
class _Translations$mobileFixes$da extends Translations$mobileFixes$en {
	_Translations$mobileFixes$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get connectionRecoveryHint => 'Server utilgængelig? Administrer dine konti, eller tilslut en anden server.';
}

// Path: downloadsRedesign
class _Translations$downloadsRedesign$da extends Translations$downloadsRedesign$en {
	_Translations$downloadsRedesign$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get shelfSize => 'Varer pr. hylde';
	@override String get shelfSizeHint => 'Vis 16, 32 eller 48 varer i Fortsæt med at se og anbefalingshylder. Servere returnerer muligvis færre tilgængelige titler.';
	@override String get subtitle => 'Dine favoritter, klar til rejsen.';
	@override String get transfers => 'Overførsler';
	@override String get ready => 'Klar offline';
	@override String get active => 'Downloader';
	@override String get waiting => 'Venter';
	@override String get downloaded => 'Downloadet';
	@override String get speed => 'Download hastighed';
	@override String get notificationProgress => '{progress} · {networkSpeed} · {timeRemaining} tilbage';
}

// Path: kidsShelf
class _Translations$kidsShelf$da extends Translations$kidsShelf$en {
	_Translations$kidsShelf$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get movieShelf => 'Film tid';
	@override String get showShelf => 'Find dit næste show';
	@override String get aurora => 'Aurora - dyb krikand og lime';
	@override String get marquee => 'Marquee - fløjl og guld';
	@override String get electric => 'Elektrisk - indigo og is';
	@override String get midnight => 'Midnat - stål og rav';
	@override String get yourShelf => 'Din filmhylde';
	@override String get all => 'Alting';
	@override String get pickSomething => 'Hvad vil du se?';
}

// Path: kidsHome
class _Translations$kidsHome$da extends Translations$kidsHome$en {
	_Translations$kidsHome$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get everything => 'For dig';
	@override String get keepWatching => 'Bliv ved med at se';
	@override String get emptyFilter => 'Intet her endnu. Prøv for dig, eller bed din voksne om at tilføje noget, du elsker.';
}

// Path: tvSettingsV2
class _Translations$tvSettingsV2$da extends Translations$tvSettingsV2$en {
	_Translations$tvSettingsV2$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get moreThemes => 'Flere temaer og brugerdefinerede farver';
	@override String get moreThemesHint => 'Åbn alle tilgængelige forudindstillinger og tilpassede temaindstillinger.';
	@override String get previewLive => 'Live preview';
	@override String get previewIllustration => 'Eksempel på forhåndsvisning';
	@override String previewShelfCount({required Object count}) => 'Op til ${count} varer pr. hylde';
	@override String get simple => 'Simpelt';
	@override String get homeNavigation => 'Hjem & Navigation';
	@override String get libraryCards => 'Bibliotek og kort';
	@override String get accountsLibraries => 'Konti og biblioteker';
	@override String get profilesFamily => 'Profiler og familie';
	@override String get aboutSupport => 'Om & Support';
	@override String get playback => 'Afspilning';
	@override String get homeHint => 'Vælg, hvad der skal vises på Hjem og i navigation.';
	@override String get libraryHint => 'Juster plakatstørrelser, etiketter og overvågede indikatorer.';
	@override String get advancedPlayback => 'Afspillermotor og streaming';
	@override String get advancedPlaybackHint => 'Afspiller, videoudgang, streaming og avancerede afspilningsvalg.';
	@override String get advancedTools => 'Diagnostik og backup';
	@override String get advancedToolsHint => 'Logfiler, fejlfinding, sikkerhedskopiering og nulstilling af indstillinger.';
	@override String get themePreview => 'Forhåndsvisning af tema';
	@override String get libraryPreview => 'Forhåndsvisning af biblioteket';
	@override String get homePreview => 'Forhåndsvisning af hjemmet';
	@override String get subtitlePreview => 'Forhåndsvisning af undertekster';
	@override String get subtitleSample => 'Dine undertekster vil se sådan ud.';
	@override String get previewPlaceholder => 'Dit kunstværk vises her';
	@override String get posterSize => 'Plakat størrelse';
	@override String get serverRecommendations => 'Hjemanbefalinger fra din server';
	@override String get tvLayout => 'Brug TV-layout';
	@override String get hardwareDecode => 'Brug hardware video afkodning';
	@override String get serverNames => 'Vis servernavne på startrækkerne';
	@override String get settingsSaved => 'Ændringer gemmes automatisk.';
	@override String get morePlayback => 'Avanceret afspilning';
	@override String get screenDisplay => 'Billede & Lyd';
	@override String get engine => 'Afspiller motor';
	@override String get network => 'Streaming og netværk';
	@override String get performance => 'Ydeevne';
	@override String get simpleAudio => 'Sprog og undertekst udseende';
}

// Path: settingsRedesign
class _Translations$settingsRedesign$da extends Translations$settingsRedesign$en {
	_Translations$settingsRedesign$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get themeEffects => 'Tema og effekter';
	@override String get libraryLayout => 'Bibliotekets layout';
	@override String get appearanceHint => 'Tilpas udseendet, layoutet og adfærden for Luroka.';
	@override String get livePreview => 'Live Preview';
	@override String get previewHint => 'Se, hvordan dit bibliotek vil se ud med de aktuelle indstillinger.';
	@override String get showLiveTv => 'Vis direkte tv';
	@override String get showLiveTvHint => 'Vis live-tv i navigation, når en tilsluttet server understøtter det. Dette ændrer ikke din server.';
	@override String get aboutTagline => 'Dine medier. Din plads.';
	@override String get aboutDescription => 'Luroka samler dine Plex, Jellyfin og Emby biblioteker i en filmafspiller til telefoner, tv\'er og desktops.';
	@override String get aboutFeatures => 'Gennemse dine biblioteker, genoptag film og serier, tilpas profiler, nyd downloads og se sammen. Live-tv er tilgængeligt med en kompatibel server.';
	@override String get services => 'Forbind din verden';
	@override String get updateSource => 'Opdater kilde';
	@override String get updateSourceHint => 'HTTPS-adressen på dit Luroka-udgivelsesfeed. Din distributør kan forudkonfigurere dette i appen.';
	@override String get updateNotConfigured => 'Automatiske opdateringer er ikke konfigureret til denne build.';
	@override String get downloadInstall => 'Download og installer';
	@override String get installUpdate => 'Installer opdatering';
	@override String get downloading => 'Downloader opdatering...';
	@override String get downloadFailed => 'Kunne ikke downloade eller bekræfte opdateringen. Prøv venligst igen.';
	@override String get installPermission => 'Tillad Luroka at installere opdateringer i Android-indstillinger, vend derefter tilbage og vælg Installer opdatering.';
	@override String get updateReady => 'Download bekræftet. Klar til at installere.';
	@override String get releaseNotes => 'Udgivelsesbemærkninger';
	@override String get invalidFeed => 'Indtast en gyldig HTTPS-opdateringsfeedadresse.';
}

// Path: onboarding
class _Translations$onboarding$da extends Translations$onboarding$en {
	_Translations$onboarding$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get connectStep => '01 · Tilslut';
	@override String get connectTitle => 'Velkommen til Luroka';
	@override String get connectHint => 'Log ind for at bringe dine biblioteker her.';
	@override String get serverAddressHint => 'Indtast din serveradresse, eller vælg en server fundet på dit netværk.';
	@override String get serverSignInHint => 'Brug dit serverbrugernavn og din adgangskode til at forbinde dine biblioteker.';
	@override String get serverAddressTitle => 'Serveradresse';
	@override String get serverAccountTitle => 'Din serverkonto';
	@override String get plexHomeTitle => 'Vælg din Plex hjemmebruger';
	@override String get plexHomeHint => 'Vælg den Plex-bruger, hvis biblioteker du vil bruge. Du opsætter derefter din Luroka-profil.';
	@override String get chooseService => 'Vælg din tjeneste';
	@override String get profileStep => '02 · Din profil';
	@override String get profileTitle => 'Føl dig hjemme.';
	@override String get profileHint => 'Vælg et navn og en avatar til din Luroka profil. Din tilsluttede konto forbliver den samme.';
	@override String get readyStep => '03 · Klar til at se';
	@override String get readyTitle => 'Lidt mere dig.';
	@override String get readyHint => 'Saml dine tjenester eller gør plads til en anden. Du kan altid gøre dette senere.';
	@override String get addService => 'Tilslut en anden tjeneste';
	@override String get editProfile => 'Rediger dit navn og din avatar';
	@override String get connected => 'Tilsluttet og klar';
	@override String get backToProfile => 'Tilbage til din profil';
	@override String get showOtherPlexHome => 'Vis andre medlemmer af Plex Home';
	@override String get showOtherPlexHomeHint => 'Fra som standard. Dine Luroka-profiler og Plex-hjemmemedlemmer, du har brugt, forbliver synlige. Tænd for at vælge en anden.';
}

// Path: household
class _Translations$household$da extends Translations$household$en {
	_Translations$household$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Din Luroka husstand';
	@override String get welcome => 'Gør Luroka til din';
	@override String get welcomeHint => 'Din første konto er forbundet. Tilpas din profil, eller tilføj en anden, før du begynder at se.';
	@override String get profiles => 'Profiler & husholdning';
	@override String get manageHint => 'Tilføj personer, skift billeder, og administrer hver profils forbindelser.';
	@override String get addProfile => 'Tilføj Luroka profil';
	@override String get addHint => 'Hver person kan tilslutte deres eget Plex, Emby eller Jellyfin login. Kun forbindelser tilføjet til deres profil vises for dem.';
	@override String get sharedHint => 'Genbrug af en anden profils forbindelse deler serverbrugerens overvågede status og afspilningsfremskridt. Vælg et separat login for uafhængig visningshistorik.';
	@override String get personalise => 'Tilpas profil';
	@override String get changePicture => 'Skift profilbillede';
	@override String get pictureHint => 'Vælg en Luroka-avatar eller et billede. Dette ændrer kun billedet på denne enhed; din serverkonto er uberørt.';
	@override String get serverPicture => 'Brug serverbillede / initialer';
	@override String get choosePhoto => 'Vælg et foto';
	@override String get photoHint => 'JPEG, PNG eller et andet understøttet billede, op til 10 MB. Billeder ændres størrelse og gemmes på denne enhed.';
	@override String get pictureSaved => 'Profilbillede opdateret';
	@override String get pictureFailed => 'Profilbilledet kunne ikke opdateres. Prøv et understøttet billede på op til 10 MB.';
	@override String get saveFailed => 'Profilindstillingerne kunne ikke gemmes. Prøv venligst igen.';
	@override String get startWatching => 'Begynd at se';
	@override String get manageProfiles => 'Administrer eller skift profiler';
	@override String get addLater => 'Du kan tilføje flere personer senere i Indstillinger → Profiler og husstand.';
	@override String get connectionRequired => 'Tilføj en serverforbindelse for at afslutte opsætningen af ​​denne profil.';
	@override String get mountain => 'Bjerg';
	@override String get orbit => 'Explorer';
	@override String get waves => 'Ocean';
	@override String get blossom => 'Blossom';
	@override String get lightning => 'Lyn';
	@override String get moon => 'Måne';
	@override String get avatarGallery => 'Vælg en avatar';
	@override String get avatarIllustrationHint => 'Originale illustrerede portrætter, børn og dyrevenner';
	@override String get avatarPortraitSunrise => 'Solopgang portræt';
	@override String get avatarPortraitMeadow => 'Eng-portræt';
	@override String get avatarPortraitBerry => 'Bær portræt';
	@override String get avatarPortraitGolden => 'Gyldent portræt';
	@override String get avatarPortraitIndigo => 'Indigo portræt';
	@override String get avatarPortraitOcean => 'Ocean portræt';
	@override String get avatarKidArtist => 'Lille kunstner';
	@override String get avatarKidSkater => 'Lille skater';
	@override String get avatarCat => 'Nysgerrig kat';
	@override String get avatarDog => 'Glad hund';
	@override String get avatarPanda => 'Panda';
	@override String get avatarOwl => 'Ugle';
	@override String get avatarFox => 'Ræv';
	@override String get avatarDinosaur => 'Dinosaur';
	@override String get avatarRobot => 'Robot';
}

// Path: detailComposition
class _Translations$detailComposition$da extends Translations$detailComposition$en {
	_Translations$detailComposition$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get startOver => 'Start forfra';
	@override String get seriesCast => 'Serie cast';
	@override String get streamingQuality => 'Streamingkvalitet...';
	@override String get trailer => 'Trailer';
	@override String get manageMedia => 'Administrer medier...';
	@override String get playbackOptions => 'Afspilningsmuligheder...';
	@override String get moreActions => 'Flere handlinger';
	@override String get watched => 'Så';
	@override String get unwatched => 'Uovervåget';
	@override String endsAt({required Object time}) => 'Slutter ved ${time}';
	@override String get automatic => 'Automatisk';
	@override String get usePreferences => 'Brug dine afspilningspræferencer';
	@override String get mediaInformation => 'Medieinformation';
	@override String get fullFileInformation => 'Fuld filinformation';
	@override String get castAndCrew => 'Medvirkende';
}

// Path: kids
class _Translations$kids$da extends Translations$kids$en {
	_Translations$kids$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get backupProfile => 'Sikkerhedskopier børneprofil';
	@override String get backupExplain => 'Sikkerhedskopier denne profils gemte navn, karakter, begrænsninger, udseende og lokale visningsekskluderinger. Forældre-PIN-koder, serverlogin, downloads og serverafspilning er ikke inkluderet.';
	@override String get saveBackupFile => 'Gem backup-fil';
	@override String get copyBackup => 'Kopiér backuptekst';
	@override String backupSaved({required Object path}) => 'Sikkerhedskopiering af børneprofiler gemt i ${path}';
	@override String get backupCopied => 'Sikkerhedskopiering af børneprofilen er kopieret';
	@override String get backupFailed => 'Kunne ikke gemme sikkerhedskopieringen af børneprofilen. Prøv venligst igen.';
	@override String get restoreProfile => 'Gendan børneprofil';
	@override String get chooseBackupFile => 'Vælg backup-fil';
	@override String get pasteBackup => 'Indsæt sikkerhedskopitekst';
	@override String get backupText => 'Børneprofil backup JSON';
	@override String get pasteFromClipboard => 'Indsæt fra udklipsholder';
	@override String get restoreReview => 'Gennemgå disse gendannede indstillinger, og derefter Gem for at oprette en ny børneprofil ved hjælp af dine nuværende serverforbindelser. Eksisterende profiler overskrives ikke. Biblioteksvalg og visningsekskluderinger matcher kun de samme server-/biblioteks-id\'er.';
	@override String get restoreInvalid => 'Dette er ikke en gyldig understøttet sikkerhedskopi af børneprofiler. Vælg en Luroka børneprofil JSON backup.';
	@override String get deleteProfile => 'Slet børneprofil';
	@override String deleteExplain({required Object name}) => 'Vil du slette ${name} fra Luroka? Deres lokale indstillinger, downloads og visningsekskluderinger vil blive fjernet. Din serverkonto og serversidehistorik forbliver. Opret først en sikkerhedskopi, hvis du vil gendanne profilen senere.';
	@override String get profileDeleted => 'Børneprofilen er slettet';
	@override String get allowedLibraries => 'Tilladte biblioteker';
	@override String get unavailableLibrary => 'Tidligere valgt bibliotek (i øjeblikket ikke tilgængelig)';
	@override String get allLibraries => 'Tillad alle tilsluttede film- og tv-biblioteker';
	@override String get librariesExplain => 'Slå dette fra for at vælge specifikke biblioteker. Alder og animationsregler gælder stadig i de valgte biblioteker. Nye biblioteker tilføjes ikke automatisk, når du bruger en markering.';
	@override String get librariesUnavailable => 'Ingen film- eller tv-biblioteker er indlæst. Opret forbindelse til serveren og åbn Biblioteker, og vend derefter tilbage hertil for at vælge.';
	@override String get noLibrariesSelected => 'Ingen biblioteker valgt: dette barn vil ikke se nogen titler.';
	@override String get animationOnly => 'Kun animation';
	@override String get animationExplain => 'Vis kun titler tagget med animationsgenren på din server. Dette erstatter ikke aldersgrænsen: animation kan også være beregnet til voksne. Manglende genre-metadata er skjult.';
	@override String get allowUnrated => 'Tillad titler uden aldersklassificering';
	@override String get unratedExplain => 'Fra som standard. Når det er aktiveret, kan manglende eller uklassificerede klassifikationer vises, hvis biblioteket og animationsreglerne tillader det. Deres egnethed kan ikke kontrolleres efter alder. Kendte vurderinger over aldersgrænsen og ikke-genkendte klassifikationer forbliver skjult.';
	@override String get whoIsWatching => 'Hvem ser på?';
	@override String get chooseAdventure => 'En lille verden af ​​store eventyr.';
	@override String get chooseProfile => 'Vælg din plads. Gør det til en filmaften.';
	@override String welcome({required Object name}) => 'Hej ${name}!';
	@override String welcomeOlder({required Object name}) => 'Din næste fantastiske historie, ${name}.';
	@override String get homeSubtitle => 'Store eventyr. Små opdagelser. Alt sammen for dig.';
	@override String get homeSubtitleOlder => 'Find en ny favorit. Fortsæt hvor du slap.';
	@override String get featured => 'Dagens store eventyr';
	@override String get featuredOlder => 'I rampelyset';
	@override String get moreInfo => 'Mere info';
	@override String get movies => 'Film';
	@override String get shows => 'Viser';
	@override String get profiles => 'Profiler';
	@override String get adultBadge => 'Voksne';
	@override String get avatar => 'Vælg din karakter';
	@override String get avatarExplorer => 'Rumforsker';
	@override String get avatarFox => 'Ræv';
	@override String get avatarDinosaur => 'Dinosaur';
	@override String get avatarRobot => 'Robot';
	@override String get avatarChildArtist => 'Lille kunstner';
	@override String get avatarChildSkater => 'Lille skater';
	@override String get avatarSunrisePerson => 'Solopgang portræt';
	@override String get avatarOceanPerson => 'Ocean portræt';
	@override String get avatarCat => 'Nysgerrig kat';
	@override String get avatarDog => 'Glad hund';
	@override String get avatarPanda => 'Panda';
	@override String get avatarOwl => 'Ugle';
	@override String get avatarBear => 'Bjørn';
	@override String get continueAdventure => 'Fortsæt eventyret';
	@override String get freshStories => 'Nye historier at opdage';
	@override String get yourMovies => 'Favoritter i filmtiden';
	@override String get yourShows => 'Endnu en episode';
	@override String get emptyHint => 'Nye eventyr vil dukke op her, når din server har titler med en tilladt aldersklassifikation.';
	@override String get title => 'Luroka for børn';
	@override String get addProfile => 'Tilføj børneprofil';
	@override String get parentalControls => 'Forældrekontrol';
	@override String get parentPin => 'Forældre-PIN';
	@override String get setParentPin => 'Angiv forældre-PIN';
	@override String get changeParentPin => 'Skift forældre-PIN';
	@override String get pinExplain => 'Denne PIN beskytter voksenprofiler og forældrekontrol på denne enhed.';
	@override String get name => 'Barnets navn';
	@override String get ageGroup => 'Tilladt aldersklassifikation';
	@override String get allAges => 'Alle aldre · G, TV-Y, TV-G, U';
	@override String get age7 => 'Op til 7 · også PG, TV-PG, TV-Y7';
	@override String get age12 => 'Op til 12 · også 12 og 12A';
	@override String get age16 => 'Op til 16 · også PG-13, TV-14, 15 og 16';
	@override String get ratingExplain => 'Titler over aldersgrænsen og ikke-genkendte klassifikationer er skjult. Titler uden en bedømmelse er skjult, medmindre du tillader dem nedenfor. Uklassificerede episoder kan arve en godkendt serieklassificering. Bedømmelser afhænger af din servers metadata.';
	@override String get theme => 'Børns udseende';
	@override String get themeExplain => 'Brug et farverigt tema, når denne profil er aktiv.';
	@override String get sharedLogin => 'Bruger dit eksisterende serverlogin. Plex/Emby fremskridt og overvåget status forbliver delt. Begrænsninger og børneprofiler gemmes på denne enhed.';
	@override String get hideWatched => 'Skjul børns visning fra min Fortsæt med at se';
	@override String get hideExplain => 'Skjul film og hele serier afspillet af børneprofiler på denne enhed. Dette fjerner dem ikke fra dit bibliotek eller ændrer serverhistorik.';
	@override String get clearHistory => 'Nulstil børns visningsekskluderinger';
	@override String get historyReset => 'Børns visningsekskluderinger blev nulstillet';
	@override String get blocked => 'Denne titel er ikke tilgængelig i denne børneprofil.';
	@override String get switchProfile => 'Skift profil';
	@override String get manageFromAdult => 'Skift til en voksenprofil for at administrere indstillinger.';
	@override String get noConnections => 'Tilslut en server til din voksenprofil, før du tilføjer en børneprofil.';
	@override String get created => 'Børneprofil oprettet';
	@override String get updated => 'Børneprofilen er opdateret';
	@override String get saveFailed => 'Kunne ikke gemme forældrekontrol. Prøv venligst igen.';
	@override String get kidsBadge => 'Børn';
}

// Path: lurokaDiscovery
class _Translations$lurokaDiscovery$da extends Translations$lurokaDiscovery$en {
	_Translations$lurokaDiscovery$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Opdag';
	@override String get chooseLibraryHint => 'Vælg et bibliotek at udforske';
	@override String get chooseCopyHint => 'Tilgængelig på flere biblioteker. Vælg dit foretrukne eksemplar.';
	@override String get weeklyMovies => 'Populære film i denne uge · TMDb';
	@override String get weeklyShows => 'Trending shows i denne uge · TMDb';
	@override String get weeklyLibrary => 'Trending i denne uge · I dit bibliotek';
	@override String get popularLibrary => 'Populært nu · På dit bibliotek · Cinemeta';
	@override String get publicFeedError => 'Cinemeta-opdagelse er ikke tilgængelig. Prøv venligst igen.';
	@override String get oscars => 'Oscars · Vindere af bedste film';
	@override String get imdb100 => 'IMDb Top 100 film · Sep 2026 snapshot';
	@override String get imdbTv100 => 'IMDb\'s Top 100 tv-serier · liste fra sep. 2026';
	@override String get emmyComedy => 'Emmys · Vindere af komedieserier · 1971–2026';
	@override String get emmys => 'Emmys · Vindere af Drama Series · 1966–2026';
	@override String get bafta => 'BAFTA · Vindere af bedste film';
	@override String get cannes => 'Cannes · Guldpalmen vindere';
	@override String get awardsNote => 'Prissamlinger omfatter Oscar-historie for bedste film, vindere af Emmy-drama/komedie og udvidede BAFTA/Cannes-udvalg. Gentagne vindende titler vises én gang. Medlemskab bruger historier i priskategorier og Wikidata-fakta. IMDb Top 100 film/show-lister bevarer september 2026-kortøjebliksbilleder fra mmdju/imdb-top250-api. Kun matches i dine synlige onlinebiblioteker vises; samlingens størrelse afhænger af bibliotekets tilgængelighed.';
	@override String get attribution => 'Offentlige popularitetslister, metadata og IMDb-vurderinger leveres af Cinemeta; dens populære lister er ikke ugentlige visningsdiagrammer. Dette produkt bruger TMDB API, men er ikke godkendt eller certificeret af TMDB. Valgfri TMDb ugentlige tendenser afspejler TMDb interesse, ikke seertal. Partitur beholder deres kildeetiketter.';
	@override String get tmdbSettings => 'Opdagelseskilder';
	@override String get setupDescription => 'Cinemeta-opdagelsen virker med det samme uden en konto: populære film og serier, IMDb-bedømmelser og prisvindere. Tilslut eventuelt TMDb for ugentlige trends ved hjælp af en API-nøgle eller API læseadgangstoken fra themoviedb.org/settings/api. Dine legitimationsoplysninger er gemt på denne enhed.';
	@override String get apiKey => 'TMDb API nøgle / læseadgangstoken';
	@override String get connect => 'Tilslut TMDb';
	@override String get connecting => 'Opretter forbindelse...';
	@override String get connected => 'TMDb tilsluttet · Ugentlige trends og priser aktiveret';
	@override String get builtInKeyNote => 'Kører på Lurokas indbyggede delte TMDb nøgle. Tilføj din egen gratis nøgle nedenfor for dedikerede satsgrænser og fuld kontrol.';
	@override String get disconnect => 'Afbryd TMDb';
	@override String get invalidKey => 'Kunne ikke validere TMDb. Tjek dine legitimationsoplysninger og internetforbindelse.';
	@override String get feedError => 'TMDb-opdagelse er ikke tilgængelig. Prøv venligst igen.';
	@override String get allTitles => 'Alle titler';
	@override String get available => 'På dit bibliotek';
	@override String get checking => 'Tjek dine biblioteker...';
	@override String get availabilityUnknown => 'Nogle biblioteker kunne ikke kontrolleres. Prøv at opdatere.';
	@override String get noAvailable => 'Ingen matchende titler fundet i de kontrollerede biblioteker.';
	@override String get sourceInfo => 'Ugentlige trends & udvalgte prisvindere · TMDb';
	@override String get configure => 'Opdagelsesindstillinger';
}

// Path: app
class _Translations$app$da extends Translations$app$en {
	_Translations$app$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Luroka';
}

// Path: appIcon
class _Translations$appIcon$da extends Translations$appIcon$en {
	_Translations$appIcon$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'App-ikon';
	@override String get defaultIcon => 'Standard';
	@override String get current => 'Nuværende ikon';
	@override String get locked => 'Supporter frynsegoder';
	@override String get lockedHint => 'Alternative ikoner er et supporterfrynsegode.';
	@override String get changeFailed => 'Appikonet kunne ikke ændres';
	@override String get launcherHint => 'Det nye ikon vises på din startskærm, når du forlader Luroka.';
	@override String get tvLauncherHint => 'Det nye banner vises, når du forlader Luroka. Android TV kan blive ved med at vise den gamle, indtil tv\'et genstarter.';
	@override late final _Translations$appIcon$names$da names = _Translations$appIcon$names$da._(_root);
}

// Path: auth
class _Translations$auth$da extends Translations$auth$en {
	_Translations$auth$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get signInWithPlex => 'Log ind med Plex';
	@override String get showQRCode => 'Vis QR-kode';
	@override String get authenticate => 'Godkend';
	@override String get authenticationTimeout => 'Godkendelsen tog for lang tid. Prøv igen.';
	@override String get scanQRToSignIn => 'Scan denne QR-kode for at logge ind';
	@override String get waitingForAuth => 'Venter på godkendelse...\nLog ind fra din browser.';
	@override String get useBrowser => 'Brug browseren';
	@override String get or => 'eller';
	@override String connectToMediaBrowser({required Object product}) => 'Opret forbindelse til ${product}';
	@override String get quickConnect => 'Quick Connect';
	@override String get useQuickConnect => 'Brug Quick Connect';
	@override String get quickConnectInstructions => 'Åbn Quick Connect i Jellyfin, og indtast denne kode.';
	@override String get quickConnectWaiting => 'Venter på godkendelse…';
	@override String get quickConnectCancel => 'Annuller';
	@override String get quickConnectExpired => 'Quick Connect er udløbet. Prøv igen.';
	@override String get localDataRecoveryRequired => 'Luroka kunne ikke gendanne lokale loginoplysninger og ventende afspilningsdata på en sikker måde. Log ind igen.';
	@override String get pinCheckRejected => 'Plex PIN-kontrollen blev afvist';
}

// Path: common
class _Translations$common$da extends Translations$common$en {
	_Translations$common$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get cancel => 'Annuller';
	@override String get save => 'Gem';
	@override String get close => 'Luk';
	@override String get clear => 'Ryd';
	@override String get reset => 'Nulstil';
	@override String get later => 'Senere';
	@override String get submit => 'Indsend';
	@override String get confirm => 'Bekræft';
	@override String get retry => 'Prøv igen';
	@override String get logout => 'Log ud';
	@override String get unknown => 'Ukendt';
	@override String get refresh => 'Opdater';
	@override String get yes => 'Ja';
	@override String get no => 'Nej';
	@override String get delete => 'Slet';
	@override String get edit => 'Rediger';
	@override String get shuffle => 'Bland';
	@override String get addTo => 'Tilføj til...';
	@override String get createNew => 'Opret ny';
	@override String get connect => 'Forbind';
	@override String get disconnect => 'Afbryd';
	@override String get play => 'Afspil';
	@override String get pause => 'Pause';
	@override String get resume => 'Genoptag';
	@override String get error => 'Fejl';
	@override String get search => 'Søg';
	@override String get home => 'Hjem';
	@override String get back => 'Tilbage';
	@override String get settings => 'Indstillinger';
	@override String get mute => 'Lydløs';
	@override String get ok => 'OK';
	@override String get off => 'Fra';
	@override String get options => 'Valgmuligheder';
	@override String seasonNumber({required Object number}) => 'Sæson ${number}';
	@override String episodeNumberTitle({required Object number, required Object title}) => 'Episode ${number} – ${title}';
	@override String chapterNumber({required Object number}) => 'Kapitel ${number}';
	@override String get reconnect => 'Genopret forbindelse';
	@override String get viewAll => 'Vis alle';
	@override String get serversUnreachable => 'Servere er utilgængelige';
	@override String get loading => 'Indlæser...';
	@override String get fullscreen => 'Fuldskærm';
	@override String get exitFullscreen => 'Forlad fuldskærm';
	@override late final _Translations$common$ratingSource$da ratingSource = _Translations$common$ratingSource$da._(_root);
	@override String get notAvailable => 'N/A';
	@override String get url => 'URL';
	@override String get letterKeys => 'ABC';
	@override late final _Translations$common$mediaKind$da mediaKind = _Translations$common$mediaKind$da._(_root);
	@override String get stay => 'Bliv';
	@override String get exitApp => 'Afslut';
	@override String get exitAppBody => 'Er du sikker på, at du vil afslutte Luroka?';
}

// Path: tvHints
class _Translations$tvHints$da extends Translations$tvHints$en {
	_Translations$tvHints$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get select => 'Vælg';
	@override String get browse => 'Gennemse';
	@override String get back => 'Tilbage';
}

// Path: screens
class _Translations$screens$da extends Translations$screens$en {
	_Translations$screens$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get licenses => 'Licenser';
	@override String get switchProfile => 'Skift profil';
	@override String get subtitleStyling => 'Undertekststil';
	@override String get mpvConfig => 'mpv.conf';
	@override String get logs => 'Logfiler';
}

// Path: mediaExtras
class _Translations$mediaExtras$da extends Translations$mediaExtras$en {
	_Translations$mediaExtras$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get trailers => 'Trailere';
	@override String get featurettes => 'Featurettes';
	@override String get interviews => 'Interviews';
	@override String get deletedScenes => 'Slettede scener';
	@override String get behindTheScenes => 'Bag kulisserne';
	@override String get scenesAndClips => 'Scener og klip';
	@override String get other => 'Andre Ekstra';
}

// Path: update
class _Translations$update$da extends Translations$update$en {
	_Translations$update$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get available => 'Opdatering tilgængelig';
	@override String versionAvailable({required Object version}) => 'Version ${version} er tilgængelig';
	@override String currentVersion({required Object version}) => 'Nuværende: ${version}';
	@override String get skipVersion => 'Spring denne version over';
	@override String get viewRelease => 'Vis udgivelse';
	@override String get latestVersion => 'Du har den nyeste version';
	@override String get checkFailed => 'Kunne ikke søge efter opdateringer';
}

// Path: supporter
class _Translations$supporter$da extends Translations$supporter$en {
	_Translations$supporter$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Luroka Supporter';
	@override String get intro => 'Et engangskøb, der understøtter Lurokas udvikling og låser op for kosmetiske ekstramateriale:';
	@override String get presetThemes => 'Forudindstillede temaer';
	@override String get presetThemesDescription => 'Glød, gletsjer, skov, blomme og papir';
	@override String get customTheme => 'Brugerdefineret tema';
	@override String get customThemeDescription => 'Vælg hver farve selv';
	@override String get appIcons => 'App ikoner';
	@override String get appIconsDescription => 'Vælg et alternativt Luroka-ikon';
	@override String buy({required Object price}) => 'Køb til ${price}';
	@override String get loadingPrice => 'Indlæser pris...';
	@override String get restore => 'Gendan køb';
	@override String get pending => 'Dit køb venter på betaling eller godkendelse. Ekstraudstyret låses op, så snart butikken er færdig.';
	@override String get thankYouTitle => 'Tak fordi du støtter Luroka';
	@override String get thankYouBody => 'Dine Supporter-ekstramateriale er låst op.';
	@override String get tileSubtitle => 'Lås op for temaer og appikoner med et engangskøb';
	@override String get tileSubtitleThemesOnly => 'Lås op for temaer med et engangskøb';
	@override String get tileUnlocked => 'Tak for din støtte';
	@override late final _Translations$supporter$errors$da errors = _Translations$supporter$errors$da._(_root);
}

// Path: settings
class _Translations$settings$da extends Translations$settings$en {
	_Translations$settings$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Indstillinger';
	@override String get supportDeveloper => 'Støt Luroka';
	@override String get supportDeveloperDescription => 'Doner via Liberapay for at finansiere udviklingen';
	@override String get language => 'Sprog';
	@override String get theme => 'Tema';
	@override String get appearance => 'Udseende';
	@override String get videoPlayback => 'Videoafspilning';
	@override String get videoPlaybackDescription => 'Konfigurer afspilningsadfærd';
	@override String get advanced => 'Avanceret';
	@override String get episodePosterMode => 'Episodeplakatstil';
	@override String get seriesPoster => 'Serieplakat';
	@override String get seasonPoster => 'Sæsonplakat';
	@override String get episodeThumbnail => 'Miniature';
	@override String get homeHeroSize => 'Karrusel størrelse';
	@override String get homeHeroSizeSmall => 'Lille';
	@override String get homeHeroSizeMedium => 'Medium';
	@override String get homeHeroSizeLarge => 'Stor';
	@override String get secondsLabel => 'Sekunder';
	@override String get minutesLabel => 'Minutter';
	@override String get secondsShort => 's';
	@override String get minutesShort => 'm';
	@override String durationHint({required Object min, required Object max}) => 'Indtast varighed (${min}-${max})';
	@override String get systemTheme => 'System';
	@override String get lightTheme => 'Lys';
	@override String get darkTheme => 'Mørk';
	@override String get oledTheme => 'OLED';
	@override String get libraryDensity => 'Bibliotekstæthed';
	@override String get displayScale => 'Skalering';
	@override String get compact => 'Kompakt';
	@override String get comfortable => 'Komfortabel';
	@override String get gridSpacing => 'Gitterafstand';
	@override String get gridSpacingTight => 'Tæt';
	@override String get gridSpacingNormal => 'Normal';
	@override String get gridSpacingSpacious => 'Rummelig';
	@override String get tvCornerSpotlightBackdrop => 'Fremhævet baggrundsbillede i hjørnet';
	@override String get tvCornerSpotlightBackdropDescription => 'Vis fremhævet grafik i øverste højre hjørne i stedet for at fylde skærmen';
	@override String get viewMode => 'Visningstilstand';
	@override String get gridView => 'Gitter';
	@override String get listView => 'Liste';
	@override String get continueWatchingAction => 'Handling for "Fortsæt med at se"';
	@override String get continueWatchingPlay => 'Afspil';
	@override String get continueWatchingDetails => 'Åbn detaljer';
	@override String get episodeAction => 'Handling for afsnit';
	@override String get episodePlay => 'Afspil';
	@override String get episodeDetails => 'Åbn detaljer';
	@override String get useGlobalHubs => 'Brug startlayout';
	@override String get useGlobalHubsDescription => 'Vis samlet startsideindhold. Brug ellers biblioteksanbefalinger.';
	@override String get showServerNameOnHubs => 'Vis servernavn på hubber';
	@override String get showServerNameOnHubsDescription => 'Vis altid servernavne i titler på hubber.';
	@override String get groupLibrariesByServer => 'Grupper biblioteker efter server';
	@override String get groupLibrariesByServerDescription => 'Gruppér bibliotekerne i sidepanelet under hver medieserver.';
	@override String get alwaysKeepSidebarOpen => 'Hold altid sidepanelet åbent';
	@override String get alwaysKeepSidebarOpenDescription => 'Sidepanelet forbliver udvidet, og indholdsområdet tilpasser sig';
	@override String get showUnwatchedCount => 'Vis antal usete';
	@override String get showUnwatchedCountDescription => 'Vis antal usete episoder på serier og sæsoner';
	@override String get showWatchedIndicators => 'Vis set-markeringer';
	@override String get showWatchedIndicatorsDescription => 'Vis et flueben på sete film, serier og episoder';
	@override String get showEpisodeNumberOnCards => 'Vis episodenummer på kort';
	@override String get showEpisodeNumberOnCardsDescription => 'Vis sæson- og episodenummer på episodekort';
	@override String get showSeasonPostersOnTabs => 'Vis sæsonplakater på faner';
	@override String get showSeasonPostersOnTabsDescription => 'Vis hver sæsons plakat over dens fane';
	@override String get tvFullCardLayout => 'TV-kort med billeder over hele fladen';
	@override String get tvFullCardLayoutDescription => 'Brug TV-kort, der kun viser billeder, med skuespillernavnene ovenpå';
	@override String get focusGlow => 'Fokusglød';
	@override String get focusGlowDescription => 'Vis en blød glød omkring det fokuserede kort';
	@override String get visualEffects => 'Visuelle effekter';
	@override String get visualEffectsAuto => 'Automatisk';
	@override String get visualEffectsAutoDescription => 'Reducer automatisk effekter på enheder med lav ydeevne';
	@override String get visualEffectsFull => 'Fuld';
	@override String get visualEffectsReduced => 'Reduceret';
	@override String get visualEffectsReducedDescription => 'Færre animationer og illustrationer i lavere opløsning';
	@override String get hideSpoilers => 'Skjul spoilere for usete episoder';
	@override String get hideSpoilersDescription => 'Slør miniaturebilleder og beskrivelser for usete episoder';
	@override String get playerBackend => 'Afspillermotor';
	@override String get playerBackendDescription => 'mpv afspiller flere formater og muliggør flere funktioner — anbefales. ExoPlayer hjælper, hvis afspilningen mislykkes eller hakker på denne enhed.';
	@override String get exoPlayer => 'ExoPlayer';
	@override String get mpv => 'mpv';
	@override String get hardwareDecoding => 'Hardwaredekodning';
	@override String get hardwareDecodingDescription => 'Brug hardwareacceleration, når den er tilgængelig';
	@override String get playbackBuffer => 'Afspilningsbuffer';
	@override String get playbackBufferAuto => 'Auto (anbefalet)';
	@override String get playbackBufferLarge => 'Stor';
	@override String get playbackBufferExtraLarge => 'Ekstra stor';
	@override String get playbackBufferDescription => 'Bufrer mere mod ustabile forbindelser. Begrænses også af bufferstørrelsen.';
	@override String get defaultQualityTitle => 'Standardkvalitet';
	@override String get streamingQualityOriginalHint => 'Afspiller filen nøjagtigt som gemt - bedste kvalitet, bruger mest båndbredde';
	@override String get cellularQualityTitle => 'Standardkvalitet på mobildata';
	@override String get cellularQualitySameAsDefault => 'Samme som standardkvalitet';
	@override String get directPlayCoveredQuality => 'Afspil mindre videoer i original kvalitet';
	@override String get directPlayCoveredQualityDescription => 'Afspil videoer, der allerede er inden for kvalitetsgrænsen, direkte i stedet for at transkode dem';
	@override String get videoCodecs => 'Videocodecs';
	@override String get videoCodecsDescription => 'Codecs uden flueben transkodes af serveren';
	@override String get videoCodecsAlwaysAccepted => 'Accepteres altid';
	@override String get musicQualityTitle => 'Musikkvalitet';
	@override String get subtitleStyling => 'Undertekststil';
	@override String get subtitleStylingDescription => 'Tilpas underteksters udseende';
	@override String get smallSkipDuration => 'Kort spring';
	@override String get largeSkipDuration => 'Langt spring';
	@override String get rewindOnResume => 'Spol tilbage ved genoptagelse';
	@override String secondsUnit({required Object seconds}) => '${seconds} sekunder';
	@override String get defaultSleepTimer => 'Standard-sovetimer';
	@override String minutesUnit({required Object minutes}) => '${minutes} minutter';
	@override String get rememberTrackSelections => 'Husk sporvalg for hver serie/film';
	@override String get rememberTrackSelectionsDescription => 'Husk valget af lyd og undertekster for hver titel';
	@override String get rememberTrackSelectionsBackendRule => 'Plex gemmer hvert valg på serveren pr. fil; Jellyfin aktiverer også kontoindstillingen »Husk valg«; Emby understøttes ikke';
	@override String get followServerTrackSelections => 'Brug serverens sporvalg for hvert afsnit';
	@override String get followServerTrackSelectionsDescription => 'Ved afsnitsskift anvendes lyden og underteksterne valgt på serveren i stedet for at videreføre det aktuelle valg';
	@override String get resumeMusicOnLaunch => 'Husk musiksession';
	@override String get resumeMusicOnLaunchDescription => 'Åbn den seneste sang på pause der, hvor den slap, når appen starter';
	@override String get showChapterMarkersOnTimeline => 'Vis kapitelmarkører på tidslinjen';
	@override String get showChapterMarkersOnTimelineDescription => 'Opdel tidslinjen ved kapitelgrænser';
	@override String get specialsOrdering => 'Specialafsnit i episoderekkefølge';
	@override String get specialsOrderingDescription => 'Hvor specialafsnit afspilles i seriens visningsrækkefølge';
	@override String get specialsOrderingServer => 'Følg serverrækkefølgen';
	@override String get specialsOrderingAirDate => 'Indflet efter udsendelsesdato';
	@override String get specialsOrderingLast => 'Efter almindelige sæsoner';
	@override String get clickVideoTogglesPlayback => 'Klik på videoen for at skifte mellem afspilning og pause';
	@override String get clickVideoTogglesPlaybackDescription => 'Klik på videoen for at afspille eller sætte på pause i stedet for at vise betjeningsknapperne.';
	@override String get videoPlayerControls => 'Videoafspillerkontroller';
	@override String get keyboardShortcuts => 'Tastaturgenveje';
	@override String get keyboardShortcutsDescription => 'Tilpas tastaturgenveje';
	@override String get videoPlayerNavigation => 'Videoafspillernavigation';
	@override String get videoPlayerNavigationDescription => 'Brug piletaster til at navigere videoafspillerkontroller';
	@override String get watchTogetherRelay => 'Relayserver til Se sammen';
	@override String get watchTogetherRelayDescription => 'Offentlige Open Watch Party-relæer, medmindre du indstiller dine egne';
	@override String get watchTogetherRelayHint => 'https://min-relay.eksempel.dk';
	@override String get watchTogetherRelayInvalid => 'Angiv en gyldig basis-URL til en HTTP- eller HTTPS-relayserver.';
	@override String get crashReporting => 'Fejlrapportering';
	@override String get crashReportingDescription => 'Send fejlrapporter for at hjælpe med at forbedre appen';
	@override String get debugLogging => 'Fejlfindingslogning';
	@override String get debugLoggingDescription => 'Aktiver detaljeret logning til fejlfinding';
	@override String get viewLogs => 'Vis logfiler';
	@override String get viewLogsDescription => 'Vis programmets logfiler';
	@override String get clearImageCache => 'Ryd billedcache';
	@override String get clearImageCacheDescription => 'Ryd cachelagrede covers og thumbnails. Billeder kan indlæse langsommere, indtil de downloades igen.';
	@override String get clearImageCacheSuccess => 'Billedcachen er ryddet';
	@override String get resetSettings => 'Nulstil indstillinger';
	@override String get resetSettingsDescription => 'Gendan standardindstillinger. Dette kan ikke fortrydes.';
	@override String get resetSettingsSuccess => 'Indstillinger nulstillet';
	@override String get backup => 'Sikkerhedskopi';
	@override String get exportSettings => 'Eksportér indstillinger';
	@override String get exportSettingsDescription => 'Gem dine præferencer i en fil';
	@override String get exportSettingsSuccess => 'Indstillinger eksporteret';
	@override String get importSettings => 'Importér indstillinger';
	@override String get importSettingsDescription => 'Gendan præferencer fra en fil';
	@override String get importSettingsConfirm => 'Dette vil erstatte dine nuværende indstillinger. Fortsæt?';
	@override String get importSettingsSuccess => 'Indstillinger importeret';
	@override String get importSettingsInvalidFile => 'Denne fil er ikke en gyldig eksport af Luroka-indstillinger';
	@override String get importSettingsNoUser => 'Log ind før import af indstillinger';
	@override String get shortcutsReset => 'Genveje nulstillet til standard';
	@override String get resetShortcutsConfirm => 'Dette vil erstatte dine brugerdefinerede genveje med standardindstillingerne. Fortsætte?';
	@override String get about => 'Om';
	@override String get aboutDescription => 'App-information og licenser';
	@override String get updates => 'Opdateringer';
	@override String get updateAvailable => 'Opdatering tilgængelig';
	@override String get checkForUpdates => 'Søg efter opdateringer';
	@override String get autoCheckUpdatesOnStartup => 'Søg automatisk efter opdateringer ved opstart';
	@override String get autoCheckUpdatesOnStartupDescription => 'Giv besked, når en opdatering er tilgængelig ved start';
	@override String get validationErrorEnterNumber => 'Indtast et gyldigt tal';
	@override String validationErrorDuration({required Object min, required Object max, required Object unit}) => 'Varigheden skal være mellem ${min} og ${max} ${unit}';
	@override String shortcutAlreadyAssigned({required Object action}) => 'Genvejen er allerede tildelt ${action}';
	@override String shortcutUpdated({required Object action}) => 'Genvejen for ${action} er opdateret';
	@override String get saveFailed => 'Ændringerne kunne ikke gemmes. Prøv igen.';
	@override String get autoPlayAndSkip => 'Autoafspilning og spring';
	@override String get autoPlayNextEpisode => 'Autoafspil næste afsnit';
	@override String get autoPlayNextEpisodeDescription => 'Start automatisk næste afsnit, når et afsnit slutter';
	@override String get shuffleStartsFromBeginning => 'Blandet afspilning starter forfra';
	@override String get shuffleStartsFromBeginningDescription => 'Start hvert afsnit forfra ved blandet afspilning i stedet for at genoptage';
	@override String get playNextCountdown => 'Nedtælling til næste afsnit';
	@override String get playNextCountdownImmediate => 'Afspil med det samme';
	@override String get skipIntroMode => 'Spring intro over';
	@override String get skipIntroModeOffDescription => 'Afspil introer normalt uden en spring-knap';
	@override String get skipIntroModeButtonDescription => 'Vis en spring-knap, når en intro starter';
	@override String get skipIntroModeAutoDescription => 'Spring introer automatisk over efter forsinkelsen nedenfor';
	@override String get skipCreditsMode => 'Spring rulletekster over';
	@override String get skipCreditsModeOffDescription => 'Afspil rulletekster normalt uden en spring-knap';
	@override String get skipCreditsModeButtonDescription => 'Vis en spring-knap, når rulleteksterne starter';
	@override String get skipCreditsModeAutoDescription => 'Spring rulletekster automatisk over, og afspil næste afsnit';
	@override String get skipMarkerModeOff => 'Fra';
	@override String get skipMarkerModeButton => 'Vis knap';
	@override String get skipMarkerModeAuto => 'Automatisk';
	@override String get forceSkipMarkerFallback => 'Tving reservemarkører';
	@override String get forceSkipMarkerFallbackDescription => 'Brug mønstre i kapiteltitler, selv når Plex har markører';
	@override String get autoSkipDelay => 'Forsinkelse ved automatisk spring';
	@override String autoSkipDelayDescription({required Object seconds}) => 'Vent ${seconds} sekunder, før der springes automatisk';
	@override String get introPattern => 'Intromarkørmønster';
	@override String get introPatternDescription => 'Regulært udtryk til at genkende intromarkører i kapiteltitler';
	@override String get creditsPattern => 'Rulletekstmarkørmønster';
	@override String get creditsPatternDescription => 'Regulært udtryk til at genkende rulletekstmarkører i kapiteltitler';
	@override String get invalidRegex => 'Ugyldigt regulært udtryk';
	@override String get regex => 'Regulært udtryk';
	@override String get downloads => 'Downloads';
	@override String get downloadLocationDescription => 'Vælg, hvor downloadet indhold skal gemmes';
	@override String get downloadLocationDefault => 'Standard (applager)';
	@override String get downloadLocationCustom => 'Brugerdefineret placering';
	@override String get selectFolder => 'Vælg mappe';
	@override String get resetToDefault => 'Nulstil til standard';
	@override String currentPath({required Object path}) => 'Nuværende: ${path}';
	@override String get downloadLocationChanged => 'Downloadplacering ændret';
	@override String get downloadLocationReset => 'Downloadplacering nulstillet';
	@override String get downloadLocationInvalid => 'Valgt mappe er ikke skrivbar';
	@override String get downloadLocationPickerUnavailable => 'Mappevalg er ikke tilgængeligt på denne enhed';
	@override String get downloadOnWifiOnly => 'Download kun via Wi-Fi';
	@override String get downloadOnWifiOnlyDescription => 'Forhindr downloads via mobildata';
	@override String get autoRemoveWatchedDownloads => 'Fjern sete downloads automatisk';
	@override String get autoRemoveWatchedDownloadsDescription => 'Slet sete downloads automatisk';
	@override String get cellularDownloadBlocked => 'Downloads er blokeret på mobilnettet. Brug Wi-Fi, eller skift indstillingen.';
	@override String get maxVolume => 'Maksimal lydstyrke';
	@override String get maxVolumeDescription => 'Tillad lydstyrkeforstærkning over 100 % for stille medier';
	@override String maxVolumePercent({required Object percent}) => '${percent}%';
	@override String get discordRichPresence => 'Discord-aktivitetsstatus';
	@override String get discordRichPresenceDescription => 'Vis på Discord, hvad du ser';
	@override String get services => 'Tjenester';
	@override String get servicesDescription => 'Forbind Trakt, MyAnimeList, Seerr og mere';
	@override String get manageLibrariesDescription => 'Omarranger og skjul biblioteker';
	@override String get companionRemoteServer => 'Fjernbetjeningsserver';
	@override String get companionRemoteServerDescription => 'Tillad mobilenheder på dit netværk at styre denne app';
	@override String get companionRemoteServerStartFailed => 'Fjernbetjeningsserveren kunne ikke startes';
	@override String get companionRemoteServerStopFailed => 'Fjernbetjeningsserveren kunne ikke stoppes';
	@override String get autoPip => 'Automatisk billede-i-billede';
	@override String get autoPipDescription => 'Skift automatisk til billede-i-billede, når du forlader appen under afspilning';
	@override String get matchContentFrameRate => 'Tilpas billedhastigheden til indholdet';
	@override String get matchContentFrameRateDescription => 'Tilpas skærmens opdateringsfrekvens til videoindhold';
	@override String get matchContentResolution => 'Tilpas til indholdets opløsning';
	@override String get matchContentResolutionDescription => 'Skifter skærmen til videoens oprindelige opløsning, så dit tv står for opskaleringen. Menuer og undertekster opskaleres også under afspilning';
	@override String get matchRefreshRate => 'Tilpas opdateringsfrekvensen';
	@override String get matchRefreshRateDescription => 'Tilpas skærmens opdateringsfrekvens i fuld skærm';
	@override String get matchDynamicRange => 'Tilpas dynamikområdet';
	@override String get matchDynamicRangeDescription => 'Slå HDR til for HDR-indhold og derefter tilbage til SDR';
	@override String get displaySwitchDelay => 'Forsinkelse ved skærmskift';
	@override String get tunneledPlayback => 'Tunneleret afspilning';
	@override String get tunneledPlaybackDescription => 'Brug videotunneling. Slå fra, hvis HDR-afspilning viser sort video, eller bevægelser hakker.';
	@override String get audioPassthrough => 'Lyd-passthrough';
	@override String get audioPassthroughDescription => 'Send Dolby/DTS-lyd til din receiver eller dit TV uden genkodning, så surroundlyd bevares. Slå fra, hvis du ikke har lyd.';
	@override String get audioPassthroughDescriptionApple => 'Brug Apples indbyggede Dolby-dekoder til Dolby Digital Plus, inklusive Atmos. DTS og TrueHD afspilles stadig som flerkanals-PCM. Slå fra, hvis du ikke har lyd.';
	@override String get audioPassthroughDescriptionAppleSpatial => 'Brug Apples oprindelige Dolby-dekoder til Dolby Digital Plus, inklusive Atmos. På iOS, iPadOS og tvOS 26 eller nyere afspilles TrueHD Atmos og DTS:X som rumlig lyd. Andre DTS- og TrueHD-numre afspilles som multikanal PCM. Sluk, hvis du ikke har nogen lyd.';
	@override String get audioPassthroughOverriddenByNormalization => 'Fra, mens lydstyrkenormalisering er slået til';
	@override String get audioChannelLimit => 'Lydkanaler';
	@override String get audioChannelLimitDescription => 'Bland afkodet lyd ned til højttalere, hovedtelefoner eller HDMI-opsætninger, der ikke kan afspille alle kanaler';
	@override String get audioChannelLimitOriginal => 'Original';
	@override String get audioChannelLimitOriginalDescription => 'Afspil hver kanal i sporet';
	@override String get audioChannelLimitSurround51 => 'Op til 5.1';
	@override String get audioChannelLimitSurround51Description => 'Bland 7,1 ned til 5,1 for tv\'er og modtagere, der kun tager 5,1 PCM. Passthrough er upåvirket.';
	@override String get audioChannelLimitStereo => 'Stereo';
	@override String get audioChannelLimitStereoDescription => 'Mix ned til to kanaler til stereohøjttalere eller hovedtelefoner. Slår gennemløb fra.';
	@override String get downmixCenterBoost => 'Forstærkning af centerkanal';
	@override String downmixCenterBoostValue({required Object db}) => '${db} dB';
	@override String get downmixCenterBoostLabel => 'Forstærkning (dB)';
	@override String get downmixCenterBoostShort => 'dB';
	@override String get audioDownmixNormalize => 'Normaliser lydstyrken ved downmix';
	@override String get audioDownmixNormalizeDescription => 'Sænk mixets lydstyrke for at undgå clipping. Slå fra for at bevare den oprindelige lydstyrke (høje scener kan blive forvrænget).';
	@override String get dvConversionMode => 'Dolby Vision-konvertering';
	@override String get dvConversionModeDescription => 'Vælg, hvordan Dolby Vision Profile 7-filer håndteres.';
	@override String get dvConversionAuto => 'Automatisk';
	@override String get dvConversionNative => 'Indbygget / deaktiveret';
	@override String get dvConversionDv81 => 'P7 → P8.1';
	@override String get dvConversionHevcStrip => 'P7 → HEVC';
	@override String get dvConversionAutoDescription => 'Brug registrering af enhedens funktioner og normal reserveadfærd';
	@override String get dvConversionNativeDescription => 'Gennemtving indbygget DV7-understøttelse, og undlad at forsøge DV-konvertering igen';
	@override String get dvConversionDv81Description => 'Tving inline RPU-konvertering til Dolby Vision profil 8.1';
	@override String get dvConversionHevcStripDescription => 'Fjern Dolby Vision RPU/EL-lag og brug almindelig HEVC';
	@override String get disableDolbyVision => 'Deaktiver Dolby Vision';
	@override String get disableDolbyVisionDescription => 'Afspil filens HDR10- eller HLG-lag i stedet for Dolby Vision, når det findes';
	@override String get hdrSdrConversion => 'HDR til SDR-konvertering';
	@override String get hdrSdrConversionDescription => 'Vælg, hvad der konverterer HDR-video, når skærmen ikke kan vise HDR.';
	@override String get hdrSdrConversionAuto => 'Automatisk';
	@override String get hdrSdrConversionAutoDescription => 'Enhed på Android 9 og nyere, afspiller på ældre versioner';
	@override String get hdrSdrConversionDevice => 'Enhed';
	@override String get hdrSdrConversionDeviceDescription => 'Enhedens videohardware konverterer. Hurtigst, men farverne afhænger af enheden';
	@override String get hdrSdrConversionPlayer => 'Afspiller';
	@override String get hdrSdrConversionPlayerDescription => 'Afspilleren konverterer. Ensartede farver, men 4K kan hakke på billige tv-bokse';
	@override String get deinterlace => 'Deinterlacing';
	@override String get deinterlaceDescription => 'Fjern kamartefakter fra interlaced video (kun mpv-afspiller)';
	@override String get deinterlaceOff => 'Slukket';
	@override String get deinterlaceOffDescription => 'Vis interlaced video, som den er afkodet';
	@override String get deinterlaceVideo => 'Video';
	@override String get deinterlaceVideoDescription => 'Gør hvert felt til en fuld ramme. Til videooptagelser til tv, som sport, nyheder og koncerter';
	@override String get deinterlaceFilm => 'Film';
	@override String get deinterlaceFilmDescription => 'Gendan de originale frames af film og animation telecineret til 29,97 fps, almindeligt på NTSC DVD\'er. Videooptagelse til tv-stammer. Live-tv bruger video';
	@override String get requireProfileSelectionOnOpen => 'Spørg om profil ved åbning';
	@override String get requireProfileSelectionOnOpenDescription => 'Vis profilvalg hver gang appen åbnes';
	@override String get forceTvMode => 'Gennemtving TV-tilstand';
	@override String get forceTvModeKeepTitle => 'Vil du beholde tv-layout?';
	@override String forceTvModeKeepBody({required Object seconds}) => 'TV-layout er designet til fjernbetjeninger. Vende tilbage til det normale layout i ${seconds} s.';
	@override String get forceTvModeKeepConfirm => 'Behold tv-layout';
	@override String get forceTvModeReverted => 'TV-layout vendt tilbage';
	@override String get forceTvModeDescription => 'Tving TV-layout. Til enheder, der ikke registreres automatisk. Kræver genstart.';
	@override String get startInFullscreen => 'Start i fuldskærm';
	@override String get startInFullscreenDescription => 'Åbn Luroka i fuldskærmstilstand ved opstart';
	@override String get exitFullscreenOnPlayerClose => 'Forlad fuldskærm ved lukning af afspiller';
	@override String get exitFullscreenOnPlayerCloseDescription => 'Afslut automatisk fuldskærm, når videoafspilleren lukkes';
	@override String get autoHidePerformanceOverlay => 'Skjul ydelsesoverlay automatisk';
	@override String get autoHidePerformanceOverlayDescription => 'Lad ydelsesoverlayet tone ud sammen med afspilningsknapperne';
	@override String get showNavBarLabels => 'Vis tekst på navigationslinjen';
	@override String get showNavBarLabelsDescription => 'Vis tekst under ikonerne på navigationslinjen';
	@override String get startupSection => 'Startsektion';
	@override String get showExploreTab => 'Vis fanen Opdag';
	@override String get showExploreTabDescription => 'Vis fanen Opdag med indhold fra Plex Discover og tilknyttede trackere';
	@override String get liveTvDefaultFavorites => 'Vis favoritkanaler som standard';
	@override String get liveTvDefaultFavoritesDescription => 'Vis kun favoritkanaler ved åbning af Live TV';
	@override String get general => 'Generelt';
	@override String get generalDescription => 'Sprog, opstart og vinduesadfærd';
	@override String get languageAndRegion => 'Sprog og region';
	@override String get startup => 'Opstart';
	@override String get display => 'Skærm';
	@override String get libraryAndCards => 'Bibliotek og kort';
	@override String get homeScreen => 'Startskærm';
	@override String get navigation => 'Navigation';
	@override String get window => 'Vindue';
	@override String get liveTv => 'Live-tv';
	@override String get player => 'Afspiller';
	@override String get videoAndDisplay => 'Video og skærm';
	@override String get audio => 'Lyd';
	@override String get quality => 'Kvalitet';
	@override String get subtitles => 'Undertekster';
	@override String get seekAndTiming => 'Søgning og timing';
	@override String get behavior => 'Adfærd';
	@override String get gestures => 'Bevægelser';
	@override String get gestureBrightnessSwipe => 'Lysstyrke-strygning';
	@override String get gestureBrightnessSwipeDescription => 'Stryg op eller ned i venstre kant for at justere lysstyrken';
	@override String get gestureVolumeSwipe => 'Lydstyrke-strygning';
	@override String get gestureVolumeSwipeDescription => 'Stryg op eller ned i højre kant for at justere lydstyrken';
	@override String get gesturePinchToZoom => 'Klem for at zoome';
	@override String get gesturePinchToZoomDescription => 'Klem på videoen for at zoome ind eller ud';
	@override String get rememberBrightnessLevel => 'Husk lysstyrkeniveau';
	@override String get rememberBrightnessLevelDescription => 'Start afspilning med den lysstyrke, der blev indstillet med den seneste strygning';
	@override String get controls => 'Kontroller';
	@override String get rememberPlayerChanges => 'Husk afspillerændringer';
	@override String get rememberPlayerChangesDescription => 'Hvor en ændring under afspilning gemmes og anvendes igen';
	@override String get scopePlaybackSpeed => 'Afspilningshastighed';
	@override String get scopeShaderPreset => 'Shader-forudindstilling';
	@override String get scopeAspectRatio => 'Billedformat';
	@override String get scopeSyncOffsets => 'Synkronisering af lyd og undertekster';
	@override String get playerScopeOff => 'Gem ikke';
	@override String get playerScopeGlobal => 'Overalt';
	@override String get playerScopeLibrary => 'Pr. bibliotek';
	@override String get playerScopeTitle => 'Pr. serie eller film';
	@override String get exportDialogTitle => 'Eksportér Luroka-indstillinger';
	@override String get velvetHourTheme => 'Fløjls time';
}

// Path: themeEditor
class _Translations$themeEditor$da extends Translations$themeEditor$en {
	_Translations$themeEditor$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get builtIn => 'Indbygget';
	@override String get presets => 'Forudindstillinger';
	@override String get custom => 'Brugerdefineret';
	@override String get customEmpty => 'Ikke oprettet endnu';
	@override String get editCustom => 'Rediger tilpasset tema';
	@override String get editCustomDescription => 'Vælg hver farve selv';
	@override String get locked => 'Lås op med Supporter';
	@override String get savedLocked => 'Gemt — låses op med Supporter';
	@override String get title => 'Brugerdefineret tema';
	@override String get startFrom => 'Start fra';
	@override String get startFromDescription => 'Kopier alle farver fra et andet tema';
	@override String get colors => 'Farver';
	@override String get preview => 'Forhåndsvisning';
	@override late final _Translations$themeEditor$slots$da slots = _Translations$themeEditor$slots$da._(_root);
	@override String get opacity => 'Opacitet';
	@override String get hexHint => '#RRGGBB eller #AARRGGBB';
	@override String get fromOtherThemes => 'Fra andre temaer';
	@override String swatchLabel({required Object theme, required Object color}) => '${theme} ${color}';
	@override late final _Translations$themeEditor$contrast$da contrast = _Translations$themeEditor$contrast$da._(_root);
	@override String lowContrast({required Object pair, required Object ratio, required Object minimum}) => '${pair}: ${ratio}:1, under den anbefalede ${minimum}:1';
	@override String get discardTitle => 'Vil du kassere ændringer?';
	@override String get discardMessage => 'Dine ikke-gemte farveændringer vil gå tabt.';
	@override String get discard => 'Kassér';
	@override String previewCardTitle({required Object number}) => 'Afsnit ${number}';
	@override String previewCardSubtitle({required Object minutes}) => '${minutes} min. tilbage';
	@override String get previewSwitch => 'Autoplay';
	@override String get previewMutedText => 'Sekundær tekst lyder sådan her';
}

// Path: seriesBrowser
class _Translations$seriesBrowser$da extends Translations$seriesBrowser$en {
	_Translations$seriesBrowser$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get oneEpisode => '1 afsnit';
	@override String watchedCount({required Object count}) => '${count} set';
	@override String episodeCount({required Object count}) => '${count} episoder';
	@override String episodesFor({required Object season}) => '${season} · Afsnit';
	@override String get enterHint => 'Vælg: åben sæson · ↓: afsnit';
}

// Path: titlePage
class _Translations$titlePage$da extends Translations$titlePage$en {
	_Translations$titlePage$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get genre => 'Genre';
	@override String remaining({required Object time}) => '${time} tilbage';
	@override String continueEpisode({required Object season, required Object episode}) => 'Fortsæt S${season} E${episode}';
	@override String get watchlist => 'Overvågningsliste';
	@override String get more => 'Mere';
}

// Path: tvMenus
class _Translations$tvMenus$da extends Translations$tvMenus$en {
	_Translations$tvMenus$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get appearanceDescription => 'Tema, skærmmargener og plakater';
}

// Path: lurokaPlayer
class _Translations$lurokaPlayer$da extends Translations$lurokaPlayer$en {
	_Translations$lurokaPlayer$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Afspillerindstillinger';
	@override String get watch => 'Hold øje med';
	@override String get watchDescription => 'Sæt tempoet, skru ned, og beslut hvad der skal spilles næste gang.';
	@override String get picture => 'Billedindstillinger';
	@override String get pictureDescription => 'Zoom, HDR og videobehandling';
	@override String get sound => 'Lyd og undertekster';
	@override String get audioSettings => 'Lydindstillinger';
	@override String get soundDescription => 'Timing, lydstyrke og lydoutput';
	@override String get chooseTracks => 'Vælg sprog og undertekstspor';
	@override String get tools => 'Avanceret';
	@override String get toolsDescription => 'Afspilningsoplysninger og diagnostik';
	@override String get preferences => 'Afspilningspræferencer';
	@override String get preferencesDescription => 'Din biograf, dine standarder. Start med lyd og billedtekster, finjuster derefter streaming og din skærm.';
	@override String get streamPreferences => 'Streaming kvalitet';
	@override String get displayPreferences => 'Display';
	@override String get enginePreferences => 'Avancerede spillermuligheder';
	@override String get seekPreferences => 'Søger';
	@override String get watchPreferences => 'Autoplay og spring over';
	@override String get rememberPreferences => 'Husk præferencer';
}

// Path: lurokaSettings
class _Translations$lurokaSettings$da extends Translations$lurokaSettings$en {
	_Translations$lurokaSettings$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get quickSetup => 'Hurtig opsætning';
	@override String get quickSetupDescription => 'Start med det væsentlige: jævnere tv-browsing, en behagelig skærmtilpasning, dit hjemmelayout og afspilningspræferencer.';
	@override String get experience => 'Din erfaring';
	@override String get experienceDescription => 'Få Luroka til at føles rigtigt: udseende, sprog, afspilning, biblioteker og skærmtid.';
	@override String get remoteHint => '↑ ↓ Gennemse kategorier · → / Vælg Åbn indstillinger · ← Gå tilbage til kategorier';
}

// Path: playerChrome
class _Translations$playerChrome$da extends Translations$playerChrome$en {
	_Translations$playerChrome$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get browse => 'Kapitler & kø';
	@override String get backToPlayback => 'Tilbage til afspilning';
	@override String get nowPlaying => 'SPILLER NU';
	@override String get options => 'SPILLERMULIGHEDER';
}

// Path: tvLayout
class _Translations$tvLayout$da extends Translations$tvLayout$en {
	_Translations$tvLayout$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get screenMargins => 'TV-skærmens marginer';
	@override String get screenMarginsDescription => 'Krymp appens kanter, hvis dit tv skærer en del af billedet af';
	@override String get screenMarginsDefault => '0 % (standard)';
}

// Path: studios
class _Translations$studios$da extends Translations$studios$en {
	_Translations$studios$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get checkingCopies => 'Kontrollerer andre biblioteker... Vælg en kendt kopi til enhver tid.';
	@override String get incompleteCopies => 'Nogle biblioteker kunne ikke kontrolleres. Vælg en kendt kopi, eller annuller og prøv igen.';
	@override String get partialFavorites => 'Nogle favoritter kunne ikke indlæses. Vælg Opdater for at prøve igen.';
	@override String get copyLookupFailedTitle => 'Kunne ikke kontrollere alle kopier';
	@override String get copyLookupFailedMessage => 'Nogle biblioteker svarede ikke. Du kan åbne en af ​​de allerede fundet kopier eller annullere og prøve igen.';
	@override String get openKnownCopies => 'Vis kendte kopier';
	@override String get browseAll => 'Gennemse alle';
	@override String titleCount({required Object count}) => '${count} titler';
	@override String get topRated => 'Top bedømte';
	@override String get mostWatched => 'Mest set i dit bibliotek';
	@override String get collection => 'STUDIO KOLLEKTION';
	@override String loadedTitles({required Object count}) => '${count} titler indlæst';
	@override String get sort => 'Sorter titler';
	@override String get sortTitleAscending => 'Titel A–Z';
	@override String get sortTitleDescending => 'Titel Z–A';
	@override String get sortNewest => 'Nyeste udgivelse';
	@override String get sortOldest => 'Ældste udgivelse';
	@override String get sortAdded => 'For nylig tilføjet';
	@override String get sortEpisodeAdded => 'Nyligt tilføjet afsnit';
	@override String get sortRating => 'Højest vurderet';
	@override String get title => 'Gennemse efter Studio';
	@override String get all => 'Alle';
	@override String get movies => 'Film';
	@override String get shows => 'TV-shows';
	@override String get loadMore => 'Indlæs flere titler';
	@override String get empty => 'Ingen matchende titler i dine aktuelt synlige biblioteker.';
	@override String get retry => 'Kunne ikke indlæse flere titler – vælg for at prøve igen';
	@override String get description => 'Udforsk film og serier fra dette studie i dine biblioteker.';
}

// Path: dashboard
class _Translations$dashboard$da extends Translations$dashboard$en {
	_Translations$dashboard$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get previousFeature => 'Tidligere fremhævet titel';
	@override String get nextFeature => 'Næste fremhævede titel';
	@override String get cinemaHome => 'HJEM';
	@override String get episodeFallback => 'Tv-afsnit';
	@override String timeLeft({required Object minutes}) => '${minutes} min. tilbage';
	@override String timeLeftHours({required Object hours, required Object minutes}) => '${hours}h ${minutes}m tilbage';
	@override String get spoilerHidden => 'Episodedetaljer skjult af din spoilerpræference.';
	@override String get synopsisUnavailable => 'Åbn Detaljer for at se mere om denne titel.';
	@override String get yourSpace => 'DIT RUM';
	@override String get title => 'Din biograf.';
	@override String get subtitle => 'Fortsæt en historie, eller find den næste.';
	@override String get featured => 'UDVALGT AF LUROKA';
	@override String get jumpBackIn => 'Fortsæt med at se';
	@override String episodeLabel({required Object season, required Object episode}) => 'S${season} · E${episode}';
	@override String get anotherPick => 'Endnu et valg';
	@override String get exploreSeries => 'Udforsk serier';
	@override String get showFeatured => 'Fokuserede titeldetaljer';
	@override String get showFeaturedDescription => 'Vis illustrationer, synopsis og episodeoplysninger for det fremhævede kort';
}

// Path: lurokaCatalog
class _Translations$lurokaCatalog$da extends Translations$lurokaCatalog$en {
	_Translations$lurokaCatalog$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get aboutPerson => 'I RØJTELYSET';
	@override String get biographyUnavailable => 'En biografi er ikke tilgængelig fra denne server.';
	@override String get filmography => 'Film og serier i dine biblioteker';
	@override String get recommended => 'Anbefalet';
	@override String get browse => 'Alle titler';
	@override String get collections => 'Samlinger';
	@override String get browseHint => 'Udforsk dit katalog. Form udvalget med filtre og sortering.';
	@override String get recommendedHint => 'Find din næste historie';
	@override String get details => 'Bag historien';
}

// Path: referenceDetails
class _Translations$referenceDetails$da extends Translations$referenceDetails$en {
	_Translations$referenceDetails$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get oneEpisodeLeft => '1 afsnit tilbage';
	@override String get playAll => 'Spil alle';
	@override String get present => 'Til stede';
	@override String get continuing => 'Fortsætter';
	@override String get upNext => 'Næste';
	@override String episodesLeft({required Object count}) => '${count} episoder tilbage';
}

// Path: lurokaThemes
class _Translations$lurokaThemes$da extends Translations$lurokaThemes$en {
	_Translations$lurokaThemes$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Luroka biografpaletter';
	@override String get coral => 'Koral · midnatsblå & solnedgang';
	@override String get ocean => 'Ocean · dyb blå & is';
	@override String get jade => 'Jade · stedsegrøn & mynte';
	@override String get amethyst => 'Ametyst · midnatsviolet';
	@override String get darkThemes => 'Mørke biograftemaer';
	@override String get lightThemes => 'Lette biograftemaer';
	@override String get moreThemes => 'Flere temaer';
	@override String get moreThemesDescription => 'Gennemse yderligere paletter og brugerdefinerede farver';
	@override String get obsidian => 'Obsidian · ren sort & champagne';
	@override String get nocturne => 'Nocturne · kul & champagne';
	@override String get burgundy => 'Bourgogne · fløjlsvin & rose';
	@override String get slate => 'Skifer · grafit & periwinkle';
	@override String get espresso => 'Espresso · kakao og karamel';
	@override String get pearl => 'Perle · porcelæn & safir';
	@override String get linen => 'Linned · varm elfenben og terracotta';
	@override String get sunrise => 'Solopgang · fersken og koraller';
	@override String get coastal => 'Kystnære · tåge & hav krikand';
	@override String get latte => 'Latte · creme & karamel';
	@override String get sage => 'Salvie · blød grøn & eukalyptus';
	@override String get lavender => 'Lavendel · lilla & dyb violet';
}

// Path: customPerformance
class _Translations$customPerformance$da extends Translations$customPerformance$en {
	_Translations$customPerformance$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ydeevne og effekter';
	@override String get fireStickMode => 'Energibesparende enhedstilstand';
	@override String get description => 'Brug reducerede effekter, statiske baggrunde, illustrationer begrænset til 720p og en 40 MiB billedcache. Mens det er aktiveret, tilsidesætter dette visuelle effekter; Hvis du slår den fra, gendanner du din præference for visuelle effekter.';
	@override String get detailsTitle => 'Ydeevne detaljer';
	@override String get details => 'Aktive effekter, billedcache-begrænsning og målinger af browserydeevne';
	@override String get effectsTier => 'Aktive effekter niveau';
	@override String get imageCache => 'Billed-cache-grænse';
	@override String get measurement => 'Browsing måling';
	@override String get measureInstructions => 'Start en 20-sekunders prøve, gå tilbage til Hjem, og brows ved hjælp af fjernbetjeningen. Vend tilbage her for at se resultaterne. Gentag de samme handlinger med tilstanden til og fra for at sammenligne. Dette måler Flutter UI arbejde, ikke video dekoder ydeevne.';
	@override String get startSample => 'Start 20 sekunders prøve';
	@override String get stopSample => 'Afslut prøve nu';
	@override String get sampling => 'Prøvetagning — vend tilbage til Hjem og gennemse. Resultaterne vil blive opbevaret her.';
	@override String get frames => 'Rammer samplet';
	@override String get slowFrames => 'Rammer over budget';
	@override String get buildP95 => 'Opbygningstid for brugergrænseflade (95. percentil)';
	@override String get rasterP95 => 'Rastertid (95. percentil)';
	@override String get frameBudget => 'Budget pr. billede';
	@override String get processMemory => 'App-proceshukommelse i prøveenden';
	@override String get noFrames => 'Der blev ikke fanget nogen gengivne rammer. Start en anden prøve, og gennemse appen.';
}

// Path: homeLayout
class _Translations$homeLayout$da extends Translations$homeLayout$en {
	_Translations$homeLayout$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tilpas hjemmet';
	@override String get description => 'Vælg rækkefølge og synlighed for denne profil. Vælg en række for at flytte eller skjule den.';
	@override String get rows => 'Hjem rækker';
	@override String get visible => 'Synlig';
	@override String get hidden => 'Skjult';
	@override String get showRow => 'Vis række';
	@override String get hideRow => 'Skjul række';
	@override String get moveUp => 'Flyt op';
	@override String get moveDown => 'Flyt ned';
	@override String get pinnedCollections => 'Fastgjorte samlinger';
	@override String get pinInstructions => 'Åbn en samlings menu, og vælg Pin til Hjem. Vælg en fastgjort samling her for at fjerne dens genvej.';
	@override String get pinCollection => 'Pin til hjemmet';
	@override String get unpinCollection => 'Frigør fra hjemmet';
	@override String get reset => 'Gendan standardrækker';
	@override String get resetDescription => 'Vil du gendanne den oprindelige rækkefølge og vise alle rækker for denne profil? Dine fastgjorte samlinger bevares.';
	@override String get saveFailed => 'Dit hjemlayout kunne ikke gemmes. Prøv venligst igen.';
	@override String get emptyHint => 'Rækker kan være skjulte. Åbn Tilpas hjem for at vise dem igen.';
}

// Path: screenTime
class _Translations$screenTime$da extends Translations$screenTime$en {
	_Translations$screenTime$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Skærmtid';
	@override String get description => 'Se tid brugt på at se video på denne profil';
	@override String get today => 'I dag';
	@override String get thisWeek => 'Denne uge';
	@override String get thisMonth => 'Denne måned';
	@override String get lessThanMinute => '< 1 min';
	@override String minutes({required Object count}) => '${count} min';
	@override String hours({required Object count}) => '${count} t';
	@override String hoursMinutes({required Object hours, required Object minutes}) => '${hours} t ${minutes} min';
}

// Path: activityStats
class _Translations$activityStats$da extends Translations$activityStats$en {
	_Translations$activityStats$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Visning af statistik';
	@override String get period => 'Periode';
	@override String get last7Days => '7 dage';
	@override String get last30Days => '30 dage';
	@override String get last90Days => '90 dage';
	@override String get thisYear => 'år';
	@override String get allTime => 'Alle';
	@override String get heroAllTime => 'Hele tiden';
	@override String get heroDailyAverage => 'Dagligt gennemsnit';
	@override String get consistency => 'Konsistens';
	@override String get currentStreak => 'Nuværende streak';
	@override String dayCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n,
		one: '${n} dag',
		other: '${n} dage',
	);
	@override String get longestStreak => 'Længste streak';
	@override String get bestDay => 'Bedste dag';
	@override String get bestWeek => 'Bedste uge';
	@override String get trendTitle => 'Se tid';
	@override String get trendToday => 'I dag';
	@override String gapDetail({required Object stat, required Object range}) => '${stat} på ${range}';
	@override String get weekdayTitle => 'På hverdage';
	@override String get hoursTitle => 'Efter tidspunkt på dagen';
	@override String get amLabel => 'AM';
	@override String get pmLabel => 'PM';
	@override String get kindsTitle => 'Efter kategori';
	@override String get kindMovie => 'Film';
	@override String get kindTv => 'TV';
	@override String get kindLiveTv => 'Live-tv';
	@override String get kindMusic => 'Musik';
	@override String get kindOther => 'Andet';
	@override String get topTitlesTitle => 'Mest set';
	@override String get sessionsTitle => 'Seneste sessioner';
	@override String get showMore => 'Vis mere';
	@override String get sessionNoTitle => 'Uidentificeret afspilning';
	@override String get emptyTitle => 'Intet her endnu';
	@override String get emptyBody => 'Se noget, og din statistik vil bygge op her.';
	@override String get noDataInPeriod => 'Der er ikke optaget nogen afspilning i denne periode.';
}

// Path: search
class _Translations$search$da extends Translations$search$en {
	_Translations$search$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get hint => 'Søg film, serier, musik...';
	@override String get tryDifferentTerm => 'Prøv en anden søgning';
	@override String get searchYourMedia => 'Søg i dine medier';
	@override String get enterTitleActorOrKeyword => 'Indtast titel, skuespiller eller nøgleord';
	@override String get people => 'Mennesker';
	@override String get recentSearches => 'Seneste søgninger';
	@override String get clearHistory => 'Ryd historik';
}

// Path: hotkeys
class _Translations$hotkeys$da extends Translations$hotkeys$en {
	_Translations$hotkeys$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String setShortcutFor({required Object actionName}) => 'Indstil genvej for ${actionName}';
	@override String get clearShortcut => 'Ryd genvej';
	@override String get noShortcutSet => 'Ingen genvej angivet';
	@override String get currentShortcut => 'Nuværende genvej:';
	@override String get pressToRecord => 'Vælg for at registrere en genvej';
	@override String get recordingShortcut => 'Tryk på genvejen nu';
	@override late final _Translations$hotkeys$actions$da actions = _Translations$hotkeys$actions$da._(_root);
}

// Path: fileInfo
class _Translations$fileInfo$da extends Translations$fileInfo$en {
	_Translations$fileInfo$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Filinfo';
	@override String get overview => 'Oversigt';
	@override String get video => 'Video';
	@override String get audio => 'Lyd';
	@override String get subtitles => 'Undertekster';
	@override String get images => 'Indlejrede billeder';
	@override String get dataStreams => 'Datastrømme';
	@override String get lyrics => 'Tekster';
	@override String get file => 'Fil';
	@override String get attachments => 'Vedhæftninger';
	@override String get delivery => 'Levering';
	@override String versionCounter({required Object index, required Object count}) => 'Version ${index} af ${count}';
	@override String fileCounter({required Object index, required Object count}) => 'Fil ${index} af ${count}';
	@override String get noStreams => 'Serveren rapporterede ingen strømme for denne fil.';
	@override String get copyPath => 'Kopiér sti';
	@override String get pathCopied => 'Filstien er kopieret';
	@override String get codec => 'Codec';
	@override String get codecTag => 'Codec-tag';
	@override String get resolution => 'Opløsning';
	@override String get codedResolution => 'Kodet opløsning';
	@override String get bitrate => 'Bitrate';
	@override String get frameRate => 'Billedhastighed';
	@override String get rotation => 'Rotation';
	@override String get comment => 'Kommentar';
	@override String get audioDescription => 'Lydbeskrivelse';
	@override String get headerCompression => 'Headerkomprimering';
	@override String get sidecarFile => 'Sidecar-fil';
	@override String get transportTimestamp => 'Transporttidsstempel';
	@override String get displayOffset => 'Visningsforskydning';
	@override String get previewFailureCode => 'Preview-fejlkode';
	@override String get previewRetries => 'Preview-forsøg';
	@override String get aspectRatio => 'Billedformat';
	@override String get pixelAspectRatio => 'Pixel-billedformat';
	@override String get profile => 'Profil';
	@override String get level => 'Niveau';
	@override String get bitDepth => 'Bitdybde';
	@override String get pixelFormat => 'Pixelformat';
	@override String get colorSpace => 'Farverum';
	@override String get colorRange => 'Farveområde';
	@override String get colorPrimaries => 'Farveprimærer';
	@override String get colorTransfer => 'Farveoverførsel';
	@override String get chromaSubsampling => 'Chroma-subsampling';
	@override String get chromaLocation => 'Chroma-placering';
	@override String get scanType => 'Scanningstype';
	@override String get interlaced => 'Interlaced';
	@override String get anamorphic => 'Anamorfisk';
	@override String get referenceFrames => 'Referenceframes';
	@override String get dynamicRange => 'Dynamisk område';
	@override String get dolbyVision => 'Dolby Vision';
	@override String get dolbyVisionLevel => 'Dolby Vision-niveau';
	@override String get dolbyVisionVersion => 'Dolby Vision-version';
	@override String get dolbyVisionLayers => 'Dolby Vision-lag';
	@override String get baseLayerCompatibility => 'Basislagskompatibilitet';
	@override String get avcBitstream => 'AVC-bitstrøm';
	@override String get nalLengthSize => 'NAL-længdestørrelse';
	@override String get scalingMatrix => 'Brugerdefineret skaleringsmatrix';
	@override String get streamIdentifier => 'Strømidentifikator';
	@override String get streamIndex => 'Strømindex';
	@override String get streamId => 'Strøm-ID';
	@override String get language => 'Sprog';
	@override String get languageCode => 'Sprogkode';
	@override String get streamTitle => 'Sportitel';
	@override String get channels => 'Kanaler';
	@override String get sampleRate => 'Samplingshastighed';
	@override String get spatialAudio => 'Rumlig lyd';
	@override String get textBased => 'Tekstbaseret';
	@override String get subtitleFormat => 'Sidecar-format';
	@override String get provider => 'Udbydder';
	@override String get matchScore => 'Matchscore';
	@override String get externalDelivery => 'Kan leveres separat';
	@override String get sidecarPath => 'Sidecar-sti';
	@override String get sourceStream => 'Kopieret fra';
	@override String get temporary => 'Midlertidig';
	@override String get timeBase => 'Tidsbase';
	@override String get overallBitrate => 'Samlet bitrate';
	@override String get path => 'Sti';
	@override String get fileName => 'Filnavn';
	@override String get size => 'Størrelse';
	@override String get totalSize => 'Samlet størrelse';
	@override String get container => 'Container';
	@override String get duration => 'Varighed';
	@override String get previewThumbnails => 'Preview-thumbnails';
	@override String get previewIndex => 'Preview-index';
	@override String get packetLength => 'Pakkelængde';
	@override String get filePresent => 'Fil til stede';
	@override String get fileReadable => 'Læsbar af serveren';
	@override String get streamPath => 'Strømsti';
	@override String get optimizedForStreaming => 'Optimeret til streaming';
	@override String get has64bitOffsets => '64-bit-forskydninger';
	@override String get protocol => 'Protokol';
	@override String get mediaType => 'Medietype';
	@override String get sourceKind => 'Kildetype';
	@override String get optimizedVersion => 'Optimeret version';
	@override String get optimizationTarget => 'Optimeringsmål';
	@override String get deletedAt => 'Slettet';
	@override String get remoteSource => 'Fjernkilde';
	@override String get infiniteStream => 'Uendelig strøm';
	@override String get directPlay => 'Direkte afspilning';
	@override String get directStream => 'Direkte strømning';
	@override String get transcoding => 'Transkodning';
	@override String get etag => 'ETag';
	@override String get versionId => 'Versions-ID';
	@override String get fileId => 'Fil-ID';
	@override String get defaultAudioTrack => 'Standard lydspor';
	@override String get defaultSubtitleTrack => 'Standard undertekstspor';
	@override String get subtitlesOff => 'Fra';
	@override String get flagDefault => 'Standard';
	@override String get flagForced => 'Tvunget';
	@override String get flagSelected => 'Valgt';
	@override String get flagExternal => 'Ekstern';
	@override String get flagHearingImpaired => 'Hørehæmmede';
	@override String get flagDub => 'Dub';
	@override String get flagOriginal => 'Original';
	@override String get channelsMono => 'Mono';
	@override String dolbyVisionProfile({required Object profile}) => 'Profil ${profile}';
}

// Path: mediaMenu
class _Translations$mediaMenu$da extends Translations$mediaMenu$en {
	_Translations$mediaMenu$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get markAsWatched => 'Markér som set';
	@override String get markAsUnwatched => 'Markér som uset';
	@override String get clearProgress => 'Klare fremskridt';
	@override String get removeFromContinueWatching => 'Fjern fra Fortsæt med at se';
	@override String get viewDetails => 'Vis detaljer';
	@override String get goToSeries => 'Gå til serie';
	@override String get shufflePlay => 'Afspil tilfældigt';
	@override String get shuffleNotAvailableOffline => 'Tilfældig afspilning er ikke tilgængelig offline';
	@override String get fileInfo => 'Filinfo';
	@override String get deleteEpisodeFromServer => 'Slet episode fra serveren';
	@override String get deleteSeasonFromServer => 'Slet sæson fra serveren';
	@override String get deleteShowFromServer => 'Slet TV-serie fra serveren';
	@override String get deleteMovieFromServer => 'Slet film fra serveren';
	@override String get deleteEpisodeTitle => 'Slet denne episode?';
	@override String get deleteSeasonTitle => 'Slet denne sæson?';
	@override String get deleteShowTitle => 'Slet denne TV-serie?';
	@override String get deleteMovieTitle => 'Slet denne film?';
	@override String get deleteEpisodeConfirm => 'Slet episode';
	@override String get deleteSeasonConfirm => 'Slet sæson';
	@override String get deleteShowConfirm => 'Slet TV-serie';
	@override String get deleteMovieConfirm => 'Slet film';
	@override String get deleteAnyway => 'Slet alligevel';
	@override String confirmDeleteTarget({required Object title}) => 'Slet ${title} permanent fra din server?';
	@override String get deleteMultipleWarning => 'Dette inkluderer alle episoder og deres filer.';
	@override String deleteEpisodeCountWarning({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n,
		one: 'Dette sletter alle ${n} episode i den og dens fil.',
		other: 'Dette sletter alle ${n} episoder i den og deres filer.',
	);
	@override String deleteMultiPartWarning({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n,
		one: 'Dette emne er gemt som ${n} fil, som vil blive slettet.',
		other: 'Dette emne er gemt på tværs af ${n} filer, og alle vil blive slettet.',
	);
	@override String deleteSharedFileHeading({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n,
		one: '${n} anden episode er gemt i samme fil og vil også blive slettet:',
		other: '${n} andre episoder er gemt i samme fil og vil også blive slettet:',
	);
	@override String get deleteScopeUnverifiedProbeFailed => 'Luroka kunne ikke kontrollere, hvilke filer dette vil fjerne, så det kan slette mere end det ovennævnte emne. Annuller og prøv igen, eller slet alligevel.';
	@override String get deleteScopeUnverifiedNoFileInfo => 'Din server leverede ikke filoplysninger for dette emne, så Luroka kan ikke kontrollere, hvilke filer dette vil fjerne. Det kan slette mere end det ovennævnte emne.';
	@override String get mediaDeletedSuccessfully => 'Mediet blev slettet';
	@override String get mediaFailedToDelete => 'Mediet kunne ikke slettes';
	@override String get rate => 'Bedøm';
	@override String get playFromBeginning => 'Afspil fra begyndelsen';
	@override String get playVersion => 'Afspil version...';
}

// Path: rateSheet
class _Translations$rateSheet$da extends Translations$rateSheet$en {
	_Translations$rateSheet$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bedøm';
	@override String get server => 'Server';
	@override String get favorite => 'Favorit';
	@override String get favorited => 'Føjet til favoritter';
	@override String get saved => 'Gemt';
	@override String get notAvailable => 'Intet match fundet';
	@override String get noConnectedServices => 'Forbind en tjeneste under Indstillinger for at bedømme via den.';
}

// Path: accessibility
class _Translations$accessibility$da extends Translations$accessibility$en {
	_Translations$accessibility$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String mediaCardMovie({required Object title}) => '${title}, film';
	@override String mediaCardShow({required Object title}) => '${title}, TV-serie';
	@override String mediaCardEpisode({required Object title, required Object episodeInfo}) => '${title}, ${episodeInfo}';
	@override String mediaCardSeason({required Object title, required Object seasonInfo}) => '${title}, ${seasonInfo}';
	@override String get mediaCardWatched => 'set';
	@override String mediaCardPartiallyWatched({required Object percent}) => '${percent} procent set';
	@override String get mediaCardUnwatched => 'uset';
	@override String get tapToPlay => 'Tryk for at afspille';
	@override String get decrease => 'Formindsk';
	@override String get increase => 'Forøg';
	@override String decreaseValue({required Object label}) => 'Formindsk ${label}';
	@override String increaseValue({required Object label}) => 'Forøg ${label}';
	@override String get hue => 'Farvetone';
	@override String get saturation => 'Mætning';
	@override String get brightness => 'Lysstyrke';
	@override String get hexColor => 'Hexfarve';
	@override String get expandText => 'Udvid tekst';
	@override String get collapseText => 'Fold tekst sammen';
	@override String get alphabetNavigation => 'Alfabetnavigation';
	@override String get alphabetScrollHint => 'Stryg op eller ned for at flytte ét bogstav';
	@override String rowColumnPosition({required Object row, required Object rowCount, required Object column, required Object columnCount}) => 'Række ${row} af ${rowCount}, kolonne ${column} af ${columnCount}';
	@override String rowPosition({required Object row, required Object rowCount}) => 'Række ${row} af ${rowCount}';
	@override String get autoScrollPlay => 'Start automatisk rulning';
	@override String get autoScrollPause => 'Sæt automatisk rulning på pause';
	@override String get hueShort => 'H';
	@override String get saturationShort => 'S';
	@override String get valueShort => 'V';
}

// Path: tooltips
class _Translations$tooltips$da extends Translations$tooltips$en {
	_Translations$tooltips$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get shufflePlay => 'Afspil tilfældigt';
	@override String get playTrailer => 'Afspil trailer';
	@override String get markAsWatched => 'Markér som set';
	@override String get markAsUnwatched => 'Markér som uset';
}

// Path: audioTracks
class _Translations$audioTracks$da extends Translations$audioTracks$en {
	_Translations$audioTracks$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String track({required Object n}) => 'Lydspor ${n}';
}

// Path: videoControls
class _Translations$videoControls$da extends Translations$videoControls$en {
	_Translations$videoControls$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get audioLabel => 'Lyd';
	@override String get subtitlesLabel => 'Undertekster';
	@override String addTime({required Object amount, required Object unit}) => '+${amount}${unit}';
	@override String get letterbox => 'Letterbox';
	@override String get fillScreen => 'Fyld skærm';
	@override String get stretch => 'Stræk';
	@override String get lockRotation => 'Lås rotation';
	@override String get unlockRotation => 'Lås rotation op';
	@override String get timerActive => 'Timer aktiv';
	@override String playbackWillPauseIn({required Object duration}) => 'Afspilningen sættes på pause om ${duration}';
	@override String get sleepTimerEndOfVideo => 'Slutningen af aktuel video';
	@override String get sleepTimerStopAtHeader => 'Stop ved';
	@override String get sleepTimerDurationHeader => 'Varighed';
	@override String get playbackWillPauseAtEnd => 'Afspilningen sættes på pause ved slutningen af denne video';
	@override String get stillWatching => 'Ser du stadig?';
	@override String pausingIn({required Object seconds}) => 'Sætter på pause om ${seconds} s';
	@override String get continueWatching => 'Fortsæt';
	@override String get autoPlayNext => 'Afspil næste automatisk';
	@override String get playNext => 'Afspil næste';
	@override String get playButton => 'Afspil';
	@override String get pauseButton => 'Pause';
	@override String get playbackPaused => 'Pauseret';
	@override String get playbackResumed => 'Afspiller';
	@override String get loadingVideo => 'Indlæser video';
	@override String get showPlaybackControls => 'Vis afspilningsknapper';
	@override String get hidePlaybackControls => 'Skjul afspilningsknapper';
	@override String seekBackwardButton({required Object seconds}) => 'Spol ${seconds} sekunder tilbage';
	@override String seekForwardButton({required Object seconds}) => 'Spol ${seconds} sekunder frem';
	@override String get previousButton => 'Forrige episode';
	@override String get nextButton => 'Næste episode';
	@override String get previousChapterButton => 'Forrige kapitel';
	@override String get nextChapterButton => 'Næste kapitel';
	@override String get muteButton => 'Slå lyden fra';
	@override String get unmuteButton => 'Slå lyden til';
	@override String get settingsButton => 'Afspilningsindstillinger';
	@override String get infoButton => 'Info';
	@override String get tracksButton => 'Lyd og undertekster';
	@override String get chaptersButton => 'Kapitler';
	@override String get versionQualityButton => 'Version og kvalitet';
	@override String get versionColumnHeader => 'Version';
	@override String get qualityColumnHeader => 'Kvalitet';
	@override String get qualityOriginal => 'Original';
	@override String qualityPresetLabel({required Object resolution, required Object bitrate}) => '${resolution}p ${bitrate} Mbps';
	@override String get transcodeUnavailableFallback => 'Transkodning utilgængelig — afspiller original kvalitet';
	@override String get subtitleUnavailableFallback => 'De valgte undertekster kunne ikke indlæses — afspilningen fortsætter uden undertekster';
	@override String get pipButton => 'Billede-i-billede-tilstand';
	@override String get aspectRatioButton => 'Billedformat';
	@override String get ambientLighting => 'Omgivelsesbelysning';
	@override String get fullscreenButton => 'Fuldskærm';
	@override String get exitFullscreenButton => 'Forlad fuldskærm';
	@override String get alwaysOnTopButton => 'Altid øverst';
	@override String get rotationLockButton => 'Rotationslås';
	@override String get lockScreen => 'Lås skærm';
	@override String get screenLockButton => 'Skærmlås';
	@override String get longPressToUnlock => 'Hold nede for at låse op';
	@override String get timelineSlider => 'Videotidslinje';
	@override String get volumeSlider => 'Lydstyrkeniveau';
	@override String endsAt({required Object time}) => 'Slutter kl. ${time}';
	@override String get pipActive => 'Afspiller i billede-i-billede';
	@override String get pipFailed => 'Billede-i-billede kunne ikke starte';
	@override String get screenshotSaved => 'Skærmbillede gemt';
	@override String get screenshotFailed => 'Kunne ikke tage et skærmbillede';
	@override String zoomPercent({required Object percent}) => 'Zoom ${percent}%';
	@override String volumePercent({required Object percent}) => 'Lydstyrke ${percent}%';
	@override late final _Translations$videoControls$pipErrors$da pipErrors = _Translations$videoControls$pipErrors$da._(_root);
	@override String get chapters => 'Kapitler';
	@override String get noChaptersAvailable => 'Ingen kapitler tilgængelige';
	@override String get queue => 'Kø';
	@override String get noQueueItems => 'Ingen elementer i køen';
	@override String get noAudioDevicesAvailable => 'Ingen lydenheder tilgængelige';
	@override String get searchSubtitles => 'Søg undertekster';
	@override String get language => 'Sprog';
	@override String get noSubtitlesFound => 'Ingen undertekster fundet';
	@override String get subtitleDownloaded => 'Undertekst downloadet';
	@override String get subtitleDownloadedNotApplied => 'Underteksten blev downloadet, men kunne ikke vælges';
	@override String get subtitleDownloadFailed => 'Kunne ikke downloade undertekst';
	@override String get searchLanguages => 'Søg sprog...';
	@override String get skipIntro => 'Spring intro over';
	@override String get skipCredits => 'Spring rulletekster over';
	@override String get nextEpisode => 'Næste episode';
	@override String subtitleTrack({required Object n}) => 'Spor ${n}';
	@override String subtitleFile({required Object name}) => 'Undertekst ${name}';
	@override String forcedTrack({required Object label}) => '${label} (tvunget)';
	@override String get osdSubtitlesOff => 'Undertekster: Fra';
	@override String osdSubtitles({required Object track}) => 'Undertekster: ${track}';
	@override String osdAudio({required Object track}) => 'Lyd: ${track}';
}

// Path: messages
class _Translations$messages$da extends Translations$messages$en {
	_Translations$messages$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get markedAsWatched => 'Markeret som set';
	@override String get markedAsUnwatched => 'Markeret som uset';
	@override String get markedAsWatchedOffline => 'Markeret som set (synkroniseres online)';
	@override String get markedAsUnwatchedOffline => 'Markeret som uset (synkroniseres online)';
	@override String autoRemovedWatchedDownload({required Object title}) => 'Automatisk fjernet: ${title}';
	@override String autoRemovedWatchedDownloads({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n,
		one: 'Fjernede automatisk ${n} set download',
		other: 'Fjernede automatisk ${n} sete downloads',
	);
	@override String get removedFromContinueWatching => 'Fjernet fra Fortsæt med at se';
	@override String errorLoading({required Object error}) => 'Fejl: ${error}';
	@override String get searchPartialResults => 'Nogle medieservere kunne ikke søges i. Viser tilgængelige resultater.';
	@override String get streamInterrupted => 'Streamen blev afbrudt. Tryk på afspil, eller spol for at prøve igen.';
	@override String get liveStreamInterrupted => 'Livestreamen blev afbrudt. Tryk på afspil for at prøve igen.';
	@override String get fileInfoNotAvailable => 'Filinfo ikke tilgængelig';
	@override String get playbackAuthenticationRequired => 'Log ind på medieserveren igen for at afspille dette element.';
	@override String get playbackServerUnavailable => 'Medieserveren er ikke tilgængelig. Prøv igen senere.';
	@override String get playbackDataInvalid => 'Serveren returnerede ugyldige afspilningsoplysninger.';
	@override String get playbackCancelled => 'Afspilningen blev annulleret.';
	@override String get playbackFailed => 'Afspilningen kunne ikke startes.';
	@override String playbackFailedDetail({required Object error}) => 'Afspilningen kunne ikke startes: ${error}';
	@override String get audioOutputFailed => 'Lydoutputtet reagerer ikke længere. Tjek lydforbindelsen til tv\'et eller receiveren; hvis andre apps heller ikke har lyd, skal du genstarte enheden.';
	@override String get mediaUnavailable => 'Dette indhold er ikke længere tilgængeligt.';
	@override String errorLoadingFileInfo({required Object error}) => 'Fejl ved indlæsning af filinfo: ${error}';
	@override String get errorLoadingSeries => 'Fejl ved indlæsning af serie';
	@override String get musicNotSupported => 'Musikafspilning understøttes endnu ikke';
	@override String get noDescriptionAvailable => 'Ingen beskrivelse tilgængelig';
	@override String get noProfilesAvailable => 'Ingen profiler tilgængelige';
	@override String get contactAdminForProfiles => 'Kontakt din serveradministrator for at tilføje profiler';
	@override String get unableToDetermineLibrarySection => 'Kunne ikke finde bibliotekssektionen for dette element';
	@override String get logsCleared => 'Logfilerne blev ryddet';
	@override String get logsCopied => 'Logfilerne blev kopieret til udklipsholderen';
	@override String get noLogsAvailable => 'Ingen logfiler tilgængelige';
	@override String libraryScanning({required Object title}) => 'Scanner "${title}"...';
	@override String libraryScanStarted({required Object title}) => 'Biblioteksscanning startet for "${title}"';
	@override String libraryScanFailed({required Object error}) => 'Kunne ikke scanne bibliotek: ${error}';
	@override String metadataRefreshing({required Object title}) => 'Opdaterer metadata for "${title}"...';
	@override String metadataRefreshStarted({required Object title}) => 'Metadataopdatering startet for "${title}"';
	@override String metadataRefreshFailed({required Object error}) => 'Kunne ikke opdatere metadata: ${error}';
	@override String get logoutConfirm => 'Er du sikker på, at du vil logge ud?';
	@override String get noSeasonsFound => 'Ingen sæsoner fundet';
	@override String get seasonsLoadFailed => 'Kunne ikke indlæse sæsoner';
	@override String get noEpisodesFound => 'Ingen episoder fundet i første sæson';
	@override String get noEpisodesFoundGeneral => 'Ingen episoder fundet';
	@override String get episodesLoadFailed => 'Kunne ikke indlæse episoder';
	@override String get noResultsFound => 'Ingen resultater fundet';
	@override String sleepTimerSet({required Object label}) => 'Sove-timer indstillet til ${label}';
	@override String get noItemsAvailable => 'Ingen elementer tilgængelige';
	@override String get failedToCreatePlayQueueNoItems => 'Kunne ikke oprette en afspilningskø — ingen elementer';
	@override String failedPlayback({required Object action, required Object error}) => 'Kunne ikke ${action}: ${error}';
	@override String get switchingToCompatiblePlayer => 'Skifter til kompatibel afspiller...';
	@override String get serverLimitTitle => 'Afspilning mislykkedes';
	@override String get serverLimitBody => 'Serverfejl (HTTP 500). En båndbredde- eller transkodningsgrænse afviste sandsynligvis sessionen. Bed ejeren om at justere den.';
	@override String get mediaUnreadableTitle => 'Fil utilgængelig';
	@override String get mediaUnreadableBody => 'Serveren fandt dette emne, men kunne ikke læse filen (HTTP 404). Filen er sandsynligvis flyttet, slettet, eller dens lager er offline. Bed serverejeren om at kontrollere filen og scanne biblioteket igen.';
	@override String get serverBusyTitle => 'Stream er ikke tilgængelig';
	@override String get serverBusyBody => 'Serveren blev ved med at afvise at streame denne fil (HTTP 503). Den er muligvis ved at genstarte eller optaget, eller filens lager er muligvis offline. Prøv igen om et øjeblik – hvis det bliver ved med at ske, skal du bede serverejeren om at kontrollere serveren og filens lager.';
	@override String get playbackNotAllowedTitle => 'Afspilning er ikke tilladt';
	@override String get playbackNotAllowedBody => 'Serveren afviste at streame dette emne (HTTP 403). Din konto har muligvis ikke tilladelse til at afspille det, eller serveren tillader muligvis kun afspilning på sit lokale netværk.';
	@override String get logsUploaded => 'Logfilerne blev uploadet';
	@override String get logsUploadFailed => 'Logfilerne kunne ikke uploades';
	@override String get logId => 'Log-ID';
	@override String get burnedSubtitlesUseMenu => 'Underteksterne er indbrændt i denne stream. Skift dem i undertekstmenuen.';
	@override String get noVideoUrl => 'Ingen video-URL er tilgængelig';
	@override String get playbackNoMediaSources => 'Serveren returnerede ingen mediekilder, der kan afspilles';
	@override String get playbackDataNotPrepared => 'Afspilningen blev startet, før dens data var klar';
	@override String get streamSelectionUnavailable => 'Valg af stream er ikke tilgængeligt for denne kilde';
	@override String get streamSelectionFailed => 'Kunne ikke anvende de valgte streams';
	@override String get trackSelectionNotRemembered => 'Dette sporvalg gælder kun for den aktuelle afspilning.';
	@override String get serverUnavailableForProfile => 'Ingen server er tilgængelig for den aktive profil';
}

// Path: sourceLibraries
class _Translations$sourceLibraries$da extends Translations$sourceLibraries$en {
	_Translations$sourceLibraries$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dine servere og biblioteker';
	@override String get description => 'Vælg de biblioteker, Luroka bruger til Hjem, søgning, Opdag tilgængelighed og Studios. Hjemmerækkefølgen tilpasses separat.';
	@override String get partial => 'Nogle servere kunne ikke kontrolleres. Dine gemte valg for disse biblioteker bevares. Opdater for at prøve igen.';
	@override String get loadFailed => 'Kunne ikke indlæse dine biblioteker. Kontroller forbindelsen, og prøv igen.';
	@override String get notSelected => 'Ikke tilgængelig i dine valgte biblioteker.';
	@override String get checkOthers => 'Tjek andre tilsluttede kilder';
	@override String get otherSources => 'Tilgængelig på andre tilsluttede kilder';
	@override String get playOnce => 'Spil én gang';
	@override String get includeLibrary => 'Inkluder dette bibliotek';
	@override String get noOthers => 'Ingen kopier fundet på andre tilsluttede kilder.';
	@override String get chooseOne => 'Vælg mindst ét ​​bibliotek for at fortsætte.';
}

// Path: subtitlingStyling
class _Translations$subtitlingStyling$da extends Translations$subtitlingStyling$en {
	_Translations$subtitlingStyling$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get text => 'Tekst';
	@override String get border => 'Kant';
	@override String get background => 'Baggrund';
	@override String get fontSize => 'Skriftstørrelse';
	@override String get textColor => 'Tekstfarve';
	@override String get borderSize => 'Kantstørrelse';
	@override String get borderColor => 'Kantfarve';
	@override String get backgroundOpacity => 'Baggrundsopacitet';
	@override String get backgroundColor => 'Baggrundsfarve';
	@override String get position => 'Position';
	@override String get assOverride => 'ASS-tilsidesættelse';
	@override String get overrideScale => 'Skaler';
	@override String get overrideForce => 'Gennemtving';
	@override String get overrideStrip => 'Fjern formatering';
	@override String get positionTop => 'Øverst';
	@override String get positionBottom => 'Nederst';
	@override String get useMargins => 'Brug margener';
	@override String get useMarginsDescription => 'Tillad tekstundertekster i området uden for videoen. Formaterede undertekster kan beholde deres oprindelige placering.';
	@override String get anchorToScreen => 'Fastgør til skærmen';
	@override String get anchorToScreenDescription => 'Vis tekstundertekster i de sorte bjælker under video i bredformat';
	@override String get bold => 'Fed';
	@override String get italic => 'Kursiv';
	@override String get renderResolution => 'Gengivelsesopløsning';
	@override String get renderResolutionScreen => 'Skærmopløsning';
	@override String get renderResolutionVideo => 'Videoopløsning';
}

// Path: mpvConfig
class _Translations$mpvConfig$da extends Translations$mpvConfig$en {
	_Translations$mpvConfig$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'mpv.conf';
	@override String get description => 'Avancerede videoafspillerindstillinger';
	@override String get presets => 'Forudindstillinger';
	@override String get noPresets => 'Ingen gemte forudindstillinger';
	@override String get saveAsPreset => 'Gem som forudindstilling...';
	@override String get presetName => 'Forudindstillingsnavn';
	@override String get presetNameHint => 'Indtast et navn for denne forudindstilling';
	@override String get loadPreset => 'Indlæs';
	@override String get deletePreset => 'Slet';
	@override String get presetSaved => 'Forudindstilling gemt';
	@override String get presetLoaded => 'Forudindstilling indlæst';
	@override String get presetDeleted => 'Forudindstilling slettet';
	@override String get confirmDeletePreset => 'Er du sikker på, at du vil slette denne forudindstilling?';
	@override String get configPlaceholder => 'gpu-api=vulkan\nhwdec=auto\n# comment';
	@override String get lineHint => 'option=value';
	@override String get addLine => 'Tilføj linje';
	@override String get removeLine => 'Fjern linje';
	@override String get embeddedVoHint => 'vo, gpu-context og gpu-api ignoreres på Linux: indlejret video renderes altid via vo=libmpv på videoplanen, og gpu-next (som compute-shaders som ArtCNN kræver) kan ikke køre indlejret.';
}

// Path: dialog
class _Translations$dialog$da extends Translations$dialog$en {
	_Translations$dialog$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get confirmAction => 'Bekræft handling';
}

// Path: profiles
class _Translations$profiles$da extends Translations$profiles$en {
	_Translations$profiles$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get addLurokaProfile => 'Tilføj Luroka profil';
	@override String get switchingProfile => 'Skifter profil…';
	@override String get deleteThisProfileTitle => 'Slet denne profil?';
	@override String deleteThisProfileMessage({required Object displayName}) => 'Fjern ${displayName}. Forbindelser påvirkes ikke.';
	@override String get active => 'Aktiv';
	@override String get manage => 'Administrer';
	@override String get delete => 'Slet';
	@override String get signOut => 'Log ud';
	@override String get signOutPlexTitle => 'Log ud af Plex?';
	@override String signOutPlexMessage({required Object displayName}) => 'Fjern ${displayName} og alle Plex Home-brugere? Du kan altid logge ind igen.';
	@override String get signOutPlexDeleteDownloads => 'Slet også downloads';
	@override String get signOutPlexDeleteDownloadsDescription => 'Ellers bliver de på denne enhed og vender tilbage, når du logger ind på denne konto igen.';
	@override String get signedOutPlex => 'Logget ud af Plex.';
	@override String get signOutFailed => 'Kunne ikke logge ud.';
	@override String get sectionTitle => 'Profiler';
	@override String get summarySingle => 'Tilføj profiler for at kombinere administrerede brugere med lokale identiteter';
	@override String summaryMultipleWithActive({required Object count, required Object activeName}) => '${count} profiler · aktiv: ${activeName}';
	@override String summaryMultiple({required Object count}) => '${count} profiler';
	@override String get removeConnectionTitle => 'Fjern forbindelse?';
	@override String removeConnectionMessage({required Object connectionLabel, required Object displayName}) => 'Fjern adgangen til ${connectionLabel} for ${displayName}. De andre profiler beholder den.';
	@override String get deleteProfileTitle => 'Slet profil?';
	@override String deleteProfileMessage({required Object displayName}) => 'Fjern ${displayName} og forbindelserne. Servere forbliver tilgængelige.';
	@override String get profileNameLabel => 'Profilnavn';
	@override String get pinProtectionLabel => 'PIN-beskyttelse';
	@override String get pinManagedByPlex => 'PIN administreres af Plex. Rediger på plex.tv.';
	@override String get noPinSetEditOnPlex => 'Ingen PIN-kode angivet. Hvis der skal kræves en, skal du redigere Plex Home-brugeren på plex.tv.';
	@override String get setPin => 'Angiv PIN';
	@override String get setPinTitle => 'Angiv PIN';
	@override String get confirmPinTitle => 'Bekræft PIN';
	@override String get pinSet => 'PIN angivet';
	@override String get changePin => 'Skift';
	@override String get removePin => 'Fjern';
	@override String get connectionsLabel => 'Forbindelser';
	@override String get add => 'Tilføj';
	@override String get deleteProfileButton => 'Slet profil';
	@override String get noConnectionsHint => 'Ingen forbindelser — tilføj en for at bruge denne profil.';
	@override String get noConnections => 'Ingen forbindelser';
	@override String get plexHomeAccount => 'Plex Home-konto';
	@override String plexAccountChip({required Object account}) => 'Plex-konto: ${account}';
	@override String plexAccountUserChip({required Object user, required Object account}) => 'Bruger ${user} · konto ${account}';
	@override String get connectionDefault => 'Standard';
	@override String connectionAs({required Object displayName}) => 'som ${displayName}';
	@override String get makeDefault => 'Gør til standard';
	@override String get removeConnection => 'Fjern';
	@override String get profileRenamed => 'Profil omdøbt.';
	@override String borrowAddTo({required Object displayName}) => 'Tilføj til ${displayName}';
	@override String get borrowExplain => 'Lån en anden profils forbindelse. PIN-beskyttede profiler kræver en PIN.';
	@override String get borrowEmpty => 'Intet at låne endnu.';
	@override String get borrowEmptySubtitle => 'Forbind Plex, Jellyfin eller Emby til en anden profil først.';
	@override String get borrowLoadFailed => 'De tilgængelige forbindelser kunne ikke indlæses. Prøv igen.';
	@override String borrowFromProfile({required Object displayName}) => 'Fra ${displayName}';
	@override String get borrowConnectionBorrowed => 'Forbindelse lånt.';
	@override String get borrowFailed => 'Kunne ikke låne forbindelse.';
	@override String get incorrectPin => 'Forkert PIN.';
	@override String get incorrectPinTryAgain => 'Forkert PIN. Prøv igen.';
	@override String get sourceProfileMissingParentAccount => 'Kildeprofilen mangler sin overordnede konto.';
	@override String get failedToLoadHomeUsers => 'Kunne ikke indlæse dine Plex Home-brugere. Tjek din forbindelse, og prøv igen.';
	@override String get failedToVerifyPin => 'Kunne ikke bekræfte PIN.';
	@override String get newProfile => 'Ny profil';
	@override String get profileNameHint => 'f.eks. Gæster, Børn, Familiens stue';
	@override String get pinProtectionOptional => 'PIN-beskyttelse (valgfri)';
	@override String get pinExplain => 'Der kræves en 4-cifret PIN-kode for at skifte profil.';
	@override String get continueButton => 'Fortsæt';
	@override String get pinsDontMatch => 'PIN-koderne matcher ikke';
	@override String get tokenIdentityMismatch => 'Plex-profiltokenet blev knyttet til en uventet server';
}

// Path: connections
class _Translations$connections$da extends Translations$connections$en {
	_Translations$connections$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get sectionTitle => 'Forbindelser';
	@override String get addConnection => 'Tilføj forbindelse';
	@override String get addConnectionSubtitleNoProfile => 'Log ind med Plex eller forbind til en Jellyfin- eller Emby-server';
	@override String addConnectionSubtitleScoped({required Object displayName}) => 'Føj til ${displayName}: Plex, Jellyfin, Emby eller en anden profilforbindelse';
	@override String sessionExpiredOne({required Object name}) => 'Sessionen er udløbet for ${name}';
	@override String sessionExpiredMany({required Object count}) => 'Sessionerne er udløbet for ${count} servere';
	@override String accessDeniedOne({required Object name}) => '${name} nægtede adgang for denne konto';
	@override String accessDeniedMany({required Object count}) => '${count} servere nægtede adgang for denne konto';
	@override String get signInAgain => 'Log ind igen';
	@override String editMediaBrowserTitle({required Object product}) => 'Rediger ${product}-forbindelse';
	@override String editMediaBrowserIntro({required Object serverName}) => 'Tilføj eller fjern URL\'er for ${serverName}. Luroka bruger den tilgængelige URL med laveste latenstid.';
}

// Path: serversAccounts
class _Translations$serversAccounts$da extends Translations$serversAccounts$en {
	_Translations$serversAccounts$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Servere og konti';
	@override String get subtitle => 'Log-in-status for dine Plex-, Jellyfin- og Emby-servere';
	@override String get online => 'Online';
	@override String get offline => 'Offline';
	@override String get unknown => 'Ikke logget ind her';
	@override String get usedByNone => 'Bruges ikke af nogen profil';
	@override String usedByOne({required Object name}) => 'Brugt af ${name}';
	@override String usedByMany({required Object name, required Object count}) => 'Brugt af ${name} og ${count} mere';
	@override String serversOnline({required Object online, required Object total}) => '${online} af ${total} servere online';
	@override String get noServers => 'Intet forbundet endnu. Tilføj din Plex-konto eller en Jellyfin- eller Emby-server.';
	@override String get editUrls => 'Rediger server-URL\'er';
}

// Path: accountPreferences
class _Translations$accountPreferences$da extends Translations$accountPreferences$en {
	_Translations$accountPreferences$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get sectionTitle => 'Kontopræferencer';
	@override String hubSubtitleSingle({required Object account}) => 'Lyd-, undertekst- og biblioteksindstillinger gemt på ${account}';
	@override String hubSubtitleMultiple({required Object count}) => 'Lyd-, undertekst- og biblioteksindstillinger gemt på ${count} konti';
	@override String get pickAccount => 'Hver konto gemmer sine egne præferencer. Vælg den, du vil redigere.';
	@override String get storedOnAccount => 'Disse indstillinger gemmes på selve kontoen, så alle apps, der er logget ind på den, bruger dem — inklusive Luroka på dine andre enheder.';
	@override String get noAccounts => 'Ingen konti at konfigurere';
	@override String get noAccountsHint => 'Log ind på Plex, eller forbind en Jellyfin- eller Emby-server, så vises de præferencer, der er gemt på kontoen, her.';
	@override String get unavailable => 'Kan ikke nå denne konto';
	@override String get loadFailed => 'Kunne ikke indlæse disse præferencer';
	@override String get noPreference => 'Ingen præference';
	@override String get notSet => 'Ikke indstillet';
	@override late final _Translations$accountPreferences$groups$da groups = _Translations$accountPreferences$groups$da._(_root);
	@override String get preferredAudioLanguage => 'Foretrukket lydsprog';
	@override String get autoSelectAudio => 'Vælg lyd ud fra sprog';
	@override String get autoSelectAudioDescription => 'Fra beholder det lydspor, som filen markerer som standard.';
	@override String get preferredSubtitleLanguage => 'Foretrukket undertekstsprog';
	@override String get subtitleMode => 'Slå undertekster til';
	@override late final _Translations$accountPreferences$subtitleModes$da subtitleModes = _Translations$accountPreferences$subtitleModes$da._(_root);
	@override String get subtitleAccessibility => 'SDH-undertekster';
	@override late final _Translations$accountPreferences$subtitleAccessibilityOptions$da subtitleAccessibilityOptions = _Translations$accountPreferences$subtitleAccessibilityOptions$da._(_root);
	@override String get forcedSubtitles => 'Tvungne undertekster';
	@override late final _Translations$accountPreferences$forcedSubtitleOptions$da forcedSubtitleOptions = _Translations$accountPreferences$forcedSubtitleOptions$da._(_root);
	@override String get displayMissingEpisodes => 'Vis manglende afsnit';
	@override String get displayMissingEpisodesDescription => 'Vis afsnit, som serveren kender til, men som ikke har nogen fil.';
	@override String get hidePlayedInLatest => 'Skjul sete elementer i Seneste';
	@override String get hidePlayedInLatestDescription => 'Hold elementer, du allerede har set, ude af serverens Seneste-rækker.';
	@override String get displayCollectionsView => 'Vis samlingsvisningen';
	@override String get displayCollectionsViewDescription => 'Vis serverens samlingsvisning sammen med dine biblioteker.';
	@override String get rewatchingInNextUp => 'Behold gensete serier i Næste afsnit';
	@override String get rewatchingInNextUpDescription => 'Når du er færdig med en serie og ser den igen, følger Næste afsnit med i gensynet i stedet for at fjerne serien.';
	@override String get watchedIndicator => 'Set-indikatorer';
	@override late final _Translations$accountPreferences$watchedIndicatorOptions$da watchedIndicatorOptions = _Translations$accountPreferences$watchedIndicatorOptions$da._(_root);
	@override String get mediaReviewsVisibility => 'Bedømmelser og anmeldelser';
	@override late final _Translations$accountPreferences$mediaReviewsOptions$da mediaReviewsOptions = _Translations$accountPreferences$mediaReviewsOptions$da._(_root);
}

// Path: discover
class _Translations$discover$da extends Translations$discover$en {
	_Translations$discover$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Opdag';
	@override String get noContentAvailable => 'Intet indhold tilgængeligt';
	@override String get addMediaToLibraries => 'Tilføj medier til dine biblioteker';
	@override String get continueWatching => 'Fortsæt med at se';
	@override String continueWatchingIn({required Object library}) => 'Fortsæt med at se i ${library}';
	@override String get nextUp => 'Næste afsnit';
	@override String nextUpIn({required Object library}) => 'Næste afsnit i ${library}';
	@override String get recentlyAdded => 'Nyligt tilføjet';
	@override String recentlyAddedIn({required Object library}) => 'Nyligt tilføjet i ${library}';
	@override String latestAlbumsIn({required Object library}) => 'Nyeste album i ${library}';
	@override String recentlyPlayedIn({required Object library}) => 'Senest afspillet i ${library}';
	@override String mostPlayedIn({required Object library}) => 'Mest afspillet i ${library}';
	@override String playEpisode({required Object season, required Object episode}) => 'S${season}E${episode}';
	@override String get overview => 'Oversigt';
	@override String get cast => 'Rollebesætning';
	@override String get extras => 'Trailere og ekstramateriale';
	@override String get studio => 'Studie';
	@override String get rating => 'Bedømmelse';
	@override String get director => 'Instruktør';
	@override String get directors => 'Instruktører';
	@override String get movie => 'Film';
	@override String get tvShow => 'TV-serie';
	@override String minutesLeft({required Object minutes}) => '${minutes} min tilbage';
	@override String get moreLikeThis => 'Mere som dette';
	@override String titleCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n,
		one: '${n} titel',
		other: '${n} titler',
	);
	@override late final _Translations$discover$person$da person = _Translations$discover$person$da._(_root);
}

// Path: errors
class _Translations$errors$da extends Translations$errors$en {
	_Translations$errors$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String searchFailed({required Object error}) => 'Søgning mislykkedes: ${error}';
	@override String get searchUnavailable => 'Søgningen kunne ikke nå nogen medieserver.';
	@override String connectionTimeout({required Object context}) => 'Forbindelsen fik timeout under indlæsning af ${context}';
	@override String get connectionFailed => 'Kan ikke oprette forbindelse til medieserver';
	@override String unableToLoad({required Object context}) => 'Kunne ikke indlæse ${context}. Prøv igen.';
	@override String get noClientAvailable => 'Ingen klient tilgængelig';
	@override String get pleaseEnterToken => 'Indtast et token';
	@override String get invalidToken => 'Ugyldigt token';
	@override String failedToVerifyToken({required Object error}) => 'Kunne ikke verificere token: ${error}';
	@override String failedToSwitchProfile({required Object displayName}) => 'Kunne ikke skifte til ${displayName}';
	@override String failedToDeleteProfile({required Object displayName}) => 'Kunne ikke slette ${displayName}';
	@override String get failedToRate => 'Kunne ikke opdatere bedømmelsen';
	@override String get reasonTimedOut => 'forbindelsen fik timeout';
	@override String get reasonUnreachable => 'medieserveren kunne ikke nås';
	@override String get reasonRefused => 'medieserveren afviste anmodningen';
	@override String get reasonNotFound => 'elementet findes ikke længere på medieserveren';
	@override String get reasonServerError => 'medieserveren rapporterede en fejl';
	@override String get reasonCancelled => 'anmodningen blev annulleret';
	@override String get reasonUnexpected => 'der opstod en uventet fejl';
}

// Path: libraries
class _Translations$libraries$da extends Translations$libraries$en {
	_Translations$libraries$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Biblioteker';
	@override String get fallbackTitle => 'Bibliotek';
	@override String get scanLibraryFiles => 'Scan biblioteksfiler';
	@override String get scanLibrary => 'Scan bibliotek';
	@override String get analyze => 'Analysér';
	@override String get analyzeLibrary => 'Analysér bibliotek';
	@override String get refreshMetadata => 'Opdater metadata';
	@override String get emptyTrash => 'Tøm papirkurv';
	@override String emptyingTrash({required Object title}) => 'Tømmer papirkurv for "${title}"...';
	@override String trashEmptied({required Object title}) => 'Papirkurv tømt for "${title}"';
	@override String failedToEmptyTrash({required Object error}) => 'Kunne ikke tømme papirkurv: ${error}';
	@override String analyzing({required Object title}) => 'Analyserer "${title}"...';
	@override String analysisStarted({required Object title}) => 'Analyse startet for "${title}"';
	@override String failedToAnalyze({required Object error}) => 'Kunne ikke analysere bibliotek: ${error}';
	@override String get noLibrariesFound => 'Ingen biblioteker fundet';
	@override String get allLibrariesHidden => 'Alle biblioteker er skjult';
	@override String hiddenLibrariesCount({required Object count}) => 'Skjulte biblioteker (${count})';
	@override String get thisLibraryIsEmpty => 'Dette bibliotek er tomt';
	@override String get noItemsMatchFilters => 'Ingen elementer matcher de aktive filtre';
	@override String get resetFilters => 'Nulstil filtre';
	@override String get all => 'Alle';
	@override String get clearAll => 'Ryd alle';
	@override String scanLibraryConfirm({required Object title}) => 'Er du sikker på, at du vil scanne "${title}"?';
	@override String analyzeLibraryConfirm({required Object title}) => 'Er du sikker på, at du vil analysere "${title}"?';
	@override String refreshMetadataConfirm({required Object title}) => 'Er du sikker på, at du vil opdatere metadata for "${title}"?';
	@override String emptyTrashConfirm({required Object title}) => 'Er du sikker på, at du vil tømme papirkurven for "${title}"?';
	@override String get manageLibraries => 'Administrer biblioteker';
	@override String get sort => 'Sortér';
	@override String get sortBy => 'Sortér efter';
	@override String get filters => 'Filtre';
	@override String get confirmActionMessage => 'Er du sikker på, at du vil udføre denne handling?';
	@override String get showLibrary => 'Vis bibliotek';
	@override String get hideLibrary => 'Skjul bibliotek';
	@override String get libraryOptions => 'Biblioteksindstillinger';
	@override String get content => 'biblioteksindhold';
	@override String get selectLibrary => 'Vælg bibliotek';
	@override String filtersWithCount({required Object count}) => 'Filtre (${count})';
	@override String get noRecommendations => 'Ingen anbefalinger tilgængelige';
	@override String get noCollections => 'Ingen samlinger i dette bibliotek';
	@override String get noFoldersFound => 'Ingen mapper fundet';
	@override String get folders => 'mapper';
	@override late final _Translations$libraries$tabs$da tabs = _Translations$libraries$tabs$da._(_root);
	@override late final _Translations$libraries$groupings$da groupings = _Translations$libraries$groupings$da._(_root);
	@override late final _Translations$libraries$filterCategories$da filterCategories = _Translations$libraries$filterCategories$da._(_root);
	@override late final _Translations$libraries$sortLabels$da sortLabels = _Translations$libraries$sortLabels$da._(_root);
	@override late final _Translations$libraries$advancedFilters$da advancedFilters = _Translations$libraries$advancedFilters$da._(_root);
}

// Path: about
class _Translations$about$da extends Translations$about$en {
	_Translations$about$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Om';
	@override String get openSourceLicenses => 'Open source-licenser';
	@override String versionLabel({required Object version}) => 'Version ${version}';
	@override String get appDescription => 'En smuk Plex-, Jellyfin- og Emby-klient bygget med Flutter';
	@override String get customSource => 'Kildekode';
	@override String get basedOnLuroka => 'Bygget på Plezy kodebasen';
	@override String get viewLicensesDescription => 'Se licenser for tredjepartsbiblioteker';
	@override String get appSection => 'App';
	@override String get communitySection => 'Fællesskab';
	@override String get creditsSection => 'Kreditter';
	@override String get legalSection => 'Juridisk';
	@override String versionMeta({required Object version, required Object build, required Object platform}) => 'v${version} (${build}) · ${platform}';
	@override String versionMetaNoBuild({required Object version, required Object platform}) => 'v${version} · ${platform}';
	@override String get versionUnavailable => 'Version er ikke tilgængelig';
	@override String get versionDetails => 'Version detaljer';
	@override String versionDetailsTitle({required Object version, required Object build}) => 'Luroka ${version} (${build})';
	@override String platformLine({required Object platform}) => 'Platform: ${platform}';
	@override String deviceLine({required Object model}) => 'Enhed: ${model}';
	@override String packageLine({required Object package}) => 'Pakke: ${package}';
	@override String localeLine({required Object locale}) => 'Sprog: ${locale}';
	@override String get copyDetails => 'Kopier detaljer';
	@override String get detailsCopied => 'Appoplysningerne er kopieret';
	@override String get detailsCopyFailed => 'Appoplysningerne kunne ikke kopieres';
	@override String get checkForUpdatesDescription => 'Tjek GitHub for en nyere udgivelse';
	@override String get checkingForUpdates => 'Søger efter opdateringer...';
	@override String get whatsNew => 'Hvad er nyt';
	@override String get releaseNotesUnavailable => 'Der er ingen tilgængelige udgivelsesbemærkninger.';
	@override String get sourceCodeDescription => 'Luroka på GitHub';
	@override String get reportIssue => 'Rapporter et problem';
	@override String get reportIssueDescription => 'Fortæl os, hvad der gik galt';
	@override String get documentation => 'Dokumentation';
	@override String get documentationDescription => 'Opsætning, funktioner og byggenoter';
	@override String get upstreamProjectDescription => 'Open source-projekt af edde746 og bidragydere';
	@override String get upstreamWebsite => 'Upstream hjemmeside';
	@override String get attribution => 'Data & attribution';
	@override String get attributionDescription => 'Metadata, vurderinger og varemærker';
	@override String get attributionBody => 'Dette produkt bruger TMDB API, men er ikke godkendt eller certificeret af TMDB. Popularitetslister, metadata og IMDb-vurderinger leveres af Cinemeta. Partitur beholder deres kildeetiketter.';
	@override String get trademarkNotices => 'Plex, Jellyfin, Emby, Trakt, Simkl, MyAnimeList, AniList, Trakt, Simkl, MyAnimeList, AniList, Z07XKEEPQ0 og relaterede varemærker, der tilhører deres varemærker, ejere. Luroka er ikke tilknyttet eller godkendt af dem.';
	@override String get privacyPolicy => 'Privatlivspolitik';
	@override String get privacyPolicyDescription => 'Hvordan dine data håndteres';
	@override String get gplLicense => 'GNU GPL-3.0 licens';
	@override String get gplLicenseDescription => 'Luroka er gratis software';
	@override String get linkOpenFailed => 'Kunne ikke åbne dette link';
	@override String get opensInBrowser => 'Åbner i din browser';
	@override String get footer => 'Luroka er gratis software under GPL-3.0.';
	@override String copyright({required Object year}) => '© ${year} Luroka bidragydere';
}

// Path: serverSelection
class _Translations$serverSelection$da extends Translations$serverSelection$en {
	_Translations$serverSelection$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String noServersFoundForAccount({required Object username, required Object email}) => 'Ingen servere fundet for ${username} (${email})';
	@override String failedToLoadServers({required Object error}) => 'Kunne ikke indlæse servere: ${error}';
	@override String get noValidServers => 'Der blev ikke fundet nogen brugbare servere på denne konto';
}

// Path: hubDetail
class _Translations$hubDetail$da extends Translations$hubDetail$en {
	_Translations$hubDetail$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Titel';
	@override String get releaseYear => 'Udgivelsesår';
	@override String get dateAdded => 'Tilføjelsesdato';
	@override String get rating => 'Bedømmelse';
	@override String get noItemsFound => 'Ingen elementer fundet';
}

// Path: logs
class _Translations$logs$da extends Translations$logs$en {
	_Translations$logs$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get clearLogs => 'Ryd logfiler';
	@override String get copyLogs => 'Kopiér logfiler';
	@override String get uploadLogs => 'Upload logfiler';
}

// Path: startup
class _Translations$startup$da extends Translations$startup$en {
	_Translations$startup$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get failedTitle => 'Luroka kunne ikke starte';
	@override String get failedBody => 'Der gik noget galt under opstart. Oplysningerne nedenfor viser, hvad der gik galt.';
	@override String get failedBodyRepairable => 'Luroka\'s gemte indstillingsfil er beskadiget og skal genopbygges, før Luroka kan starte. Det hjælper ikke at prøve igen — vælg Reparer lager.';
	@override String get phaseLabel => 'Trin';
	@override String get showDetails => 'Vis detaljer';
	@override String get hideDetails => 'Skjul detaljer';
	@override String get copyDetails => 'Kopiér detaljer';
	@override String get detailsCopied => 'Detaljer kopieret til udklipsholder';
	@override String get uploadDetails => 'Upload detaljer';
	@override String get repairStorage => 'Reparer lager';
	@override String get repairTitle => 'Reparer gemte data?';
	@override String get repairBodyCommon => 'Luroka\'s indstillingsfil er beskadiget og kan ikke læses. Reparation nulstiller alle indstillinger til deres standardværdier.';
	@override String get repairBodyOneCredential => 'Én gemt loginoplysning er beskadiget og kan ikke læses. Reparation fjerner kun den; dine andre indstillinger forbliver urørt.';
	@override String get repairBodySignInsKept => 'Dine servere og profiler bør forblive logget ind.';
	@override String get repairBodySignInsLost => 'Nøglen, der beskytter dine gemte loginoplysninger, kan ikke gendannes fra denne fil, så du skal logge ind på alle servere og profiler igen. Intet på din medieserver er påvirket.';
	@override String get repairBodySessionsUncertain => 'Trackere (MAL, AniList, Simkl, Trakt) og Seerr gemmes separat, og det er uvist, om de overlever. Luroka fortæller dig præcis, hvad det beholdt.';
	@override String get repairConfirm => 'Reparer';
	@override String get repairSucceeded => 'Lager repareret';
	@override String get repairNeedsRestart => 'Lager repareret — genstart påkrævet';
	@override String get restartRequiredBody => 'Dine data er blevet repareret, men Luroka skal starte på ny, før det kan bruge dem. Luk Luroka, og åbn det igen.';
	@override String get quitLuroka => 'Afslut Luroka';
	@override String get repairFailed => 'Reparation mislykkedes';
	@override String get repairKeptSignIns => 'Dine servere og profiler er stadig logget ind.';
	@override String get repairLostSignIns => 'Nøglen, der beskytter dine gemte loginoplysninger, kunne ikke gendannes. Du skal logge ind på alle servere og profiler igen.';
	@override String get repairLostSessions => 'Mindst én tracker- eller Seerr-forbindelse gik tabt og skal genetableres.';
	@override String get backupTitle => 'En kopi af den beskadigede fil blev gemt';
	@override String get backupWarning => 'Den indeholder dine loginoplysninger. Upload eller del den ikke.';
	@override String get deleteBackup => 'Slet kopi';
	@override String get backupDeleted => 'Kopi slettet.';
	@override String get previousFailureTitle => 'Luroka kunne ikke starte sidste gang';
}

// Path: licenses
class _Translations$licenses$da extends Translations$licenses$en {
	_Translations$licenses$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get relatedPackages => 'Relaterede pakker';
	@override String get license => 'Licens';
	@override String licenseNumber({required Object number}) => 'Licens ${number}';
	@override String licensesCount({required Object count}) => '${count} licenser';
	@override String get searchHint => 'Søg pakker';
	@override String noResults({required Object query}) => 'Ingen pakker matcher "${query}"';
	@override String get clearSearch => 'Ryd søgning';
}

// Path: navigation
class _Translations$navigation$da extends Translations$navigation$en {
	_Translations$navigation$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get libraries => 'Biblioteker';
	@override String get downloads => 'Downloads';
	@override String get liveTv => 'Live TV';
	@override String get explore => 'Udforsk';
}

// Path: explore
class _Translations$explore$da extends Translations$explore$en {
	_Translations$explore$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Udforsk';
	@override String get selectSource => 'Vælg kilde';
	@override late final _Translations$explore$rows$da rows = _Translations$explore$rows$da._(_root);
	@override late final _Translations$explore$status$da status = _Translations$explore$status$da._(_root);
	@override String episodeCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n,
		one: '${n} afsnit',
		other: '${n} afsnit',
	);
	@override String get cast => 'Rollebesætning';
	@override String get characters => 'Figurer';
	@override String get addToWatchlist => 'Føj til ønskeliste';
	@override String get removeFromWatchlist => 'Fjern fra ønskeliste';
	@override String get addedToWatchlist => 'Føjet til overvågningslisten';
	@override String get removedFromWatchlist => 'Fjernet fra overvågningslisten';
	@override String get watchlistUpdateFailed => 'Kunne ikke opdatere ønskelisten';
	@override String get watchlistNoMatch => 'Kunne ikke knytte dette element til en overvågningsliste';
	@override String get notInLibrary => 'Ikke i dit bibliotek';
	@override String get inTheseLibraries => 'I disse biblioteker';
	@override String get checkingLibrary => 'Tjekker dit bibliotek...';
	@override String libraryCheckFailed({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n,
		one: 'Kunne ikke tjekke ${n} server',
		other: 'Kunne ikke tjekke ${n} servere',
	);
	@override String get emptyTitle => 'Der er ikke noget her endnu';
	@override String emptyMessage({required Object source}) => 'Indholdsrækker fra ${source} vises her, når de har indhold.';
	@override String searchHint({required Object source}) => 'Søg i ${source}';
	@override String searchEmpty({required Object query}) => 'Ingen resultater for "${query}"';
	@override String searchPrompt({required Object source}) => 'Søg efter film og serier på ${source}.';
	@override String get searchFailed => 'Søgningen mislykkedes. Tjek din forbindelse, og prøv igen.';
	@override late final _Translations$explore$badge$da badge = _Translations$explore$badge$da._(_root);
	@override late final _Translations$explore$stats$da stats = _Translations$explore$stats$da._(_root);
	@override late final _Translations$explore$season$da season = _Translations$explore$season$da._(_root);
	@override late final _Translations$explore$format$da format = _Translations$explore$format$da._(_root);
	@override late final _Translations$explore$sourceMaterial$da sourceMaterial = _Translations$explore$sourceMaterial$da._(_root);
	@override late final _Translations$explore$creditRole$da creditRole = _Translations$explore$creditRole$da._(_root);
	@override late final _Translations$explore$relation$da relation = _Translations$explore$relation$da._(_root);
	@override String broadcast({required Object day, required Object time}) => 'Sendes ${day} kl. ${time}';
	@override String broadcastWithZone({required Object day, required Object time, required Object timezone}) => 'Sendes ${day} kl. ${time} ${timezone}';
	@override late final _Translations$explore$detail$da detail = _Translations$explore$detail$da._(_root);
	@override String totalResults({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n,
		one: '${n} resultat',
		other: '${n} resultater',
	);
}

// Path: liveTv
class _Translations$liveTv$da extends Translations$liveTv$en {
	_Translations$liveTv$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Live TV';
	@override String get guide => 'Guide';
	@override String get noChannels => 'Ingen kanaler tilgængelige';
	@override String get noDvr => 'Der er ikke konfigureret DVR på nogen server';
	@override String get serverUnavailable => 'Live-tv-serveren er ikke tilgængelig.';
	@override String get serverNotConnected => 'Live-tv-serveren er ikke forbundet.';
	@override String get noPrograms => 'Ingen programdata tilgængelige';
	@override String get liveStreamFailed => 'Livestream mislykkedes';
	@override String get unknownProgram => 'Ukendt program';
	@override String get unknownHub => 'Ukendt';
	@override String get unknownError => 'Ukendt fejl';
	@override String channelNumber({required Object number}) => 'Kanal ${number}';
	@override String get unknownChannel => 'Ukendt kanal';
	@override String get live => 'LIVE';
	@override String get reloadGuide => 'Genindlæs guide';
	@override String get searchGuide => 'Søg i guiden';
	@override String get searchHint => 'Søg efter kanaler og programmer';
	@override String searchNoResults({required Object query}) => 'Ingen match for "${query}"';
	@override String get channelsSection => 'Kanaler';
	@override String get programsSection => 'Programmer';
	@override String get now => 'Nu';
	@override String get today => 'I dag';
	@override String get tomorrow => 'I morgen';
	@override String get midnight => 'Midnat';
	@override String get overnight => 'Nat';
	@override String get morning => 'Morgen';
	@override String get daytime => 'Dagtid';
	@override String get evening => 'Aften';
	@override String get lateNight => 'Sen aften';
	@override String get whatsOn => 'Hvad vises der?';
	@override String get watchChannel => 'Se kanal';
	@override String get favorites => 'Favoritter';
	@override String get reorderFavorites => 'Omarranger favoritter';
	@override String get noFavoriteChannels => 'Ingen favoritkanaler';
	@override String get noFavoriteChannelsHint => 'Vis alle kanaler, og tryk derefter længe på en kanal for at føje den til dine favoritter.';
	@override String get showAllChannels => 'Vis alle kanaler';
	@override String get favoritesLoadFailed => 'Favoritter kunne ikke indlæses. Kontrollér forbindelsen, og prøv igen.';
	@override String get favoritesUpdateFailed => 'Favoritterne kunne ikke opdateres. Kontrollér forbindelsen, og prøv igen.';
	@override String get joinSession => 'Deltag i igangværende session';
	@override String watchFromStart({required Object minutes}) => 'Se fra start (${minutes} min siden)';
	@override String get watchLive => 'Se live';
	@override String get goToLive => 'Gå til live';
	@override String get record => 'Optag';
	@override String get recordEpisode => 'Optag episode';
	@override String get recordSeries => 'Optag serie';
	@override String get recordOptions => 'Optageindstillinger';
	@override String get saveTo => 'Gem i';
	@override String get recordings => 'Optagelser';
	@override String get scheduledRecordings => 'Planlagt';
	@override String get recordingRules => 'Optagelsesregler';
	@override String get noScheduledRecordings => 'Ingen optagelser planlagt';
	@override String get manageRecording => 'Administrer optagelse';
	@override String get cancelRecording => 'Annuller optagelse';
	@override String get cancelRecordingTitle => 'Annuller denne optagelse?';
	@override String cancelRecordingMessage({required Object title}) => '${title} bliver ikke længere optaget.';
	@override String get deleteRule => 'Slet regel';
	@override String get deleteRuleTitle => 'Slet optagelsesregel?';
	@override String deleteRuleMessage({required Object title}) => 'Fremtidige episoder af ${title} bliver ikke optaget.';
	@override String get recordingScheduled => 'Optagelse planlagt';
	@override String get alreadyScheduled => 'Dette program er allerede planlagt';
	@override String get dvrAdminRequired => 'DVR-indstillinger kræver en administratorkonto';
	@override String get recordingFailed => 'Kunne ikke planlægge optagelse';
	@override String get recordingTargetMissing => 'Kunne ikke bestemme optagelsesbibliotek';
	@override String get recordNotAvailable => 'Optagelse er ikke tilgængelig for dette program';
	@override String get recordingCancelled => 'Optagelse annulleret';
	@override String get recordingRuleDeleted => 'Optagelsesregel slettet';
	@override String get processRecordingRules => 'Evaluer regler igen';
	@override String get recordingInProgress => 'Optager nu';
	@override String recordingsCount({required Object count}) => '${count} planlagt';
	@override String get editRule => 'Rediger regel';
	@override String get editRuleAction => 'Rediger';
	@override String get recordingRuleUpdated => 'Optagelsesregel opdateret';
	@override String get guideReloadRequested => 'Der er anmodet om en opdatering af guiden';
	@override String get guideReloadFailed => 'Kunne ikke opdatere guiden';
	@override String get rulesProcessRequested => 'Der er anmodet om en ny evaluering af reglerne';
	@override String get rulesProcessFailed => 'Kunne ikke behandle optagelsesreglerne igen';
	@override String get recordShow => 'Optag program';
	@override late final _Translations$liveTv$recordSettings$da recordSettings = _Translations$liveTv$recordSettings$da._(_root);
	@override String startingInMinutes({required Object minutes}) => 'Starter om ${minutes} min';
	@override String dayAtTime({required Object day, required Object time}) => '${day} kl. ${time}';
	@override String invalidPlaybackData({required Object product}) => '${product} returnerede ugyldige afspilningsdata for Live TV';
	@override String get failedToStartChannel => 'Kunne ikke starte livekanalen';
	@override String get failedToBuildStreamUrl => 'Kunne ikke oprette stream-URL\'en';
	@override String playbackStartFailed({required Object reason}) => 'Kunne ikke starte kanalen: ${reason}';
	@override String channelSwitchFailed({required Object reason}) => 'Kunne ikke skifte kanal: ${reason}';
}

// Path: collections
class _Translations$collections$da extends Translations$collections$en {
	_Translations$collections$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Samlinger';
	@override String get collection => 'Samling';
	@override String get empty => 'Samlingen er tom';
	@override String get deleteCollection => 'Slet samling';
	@override String deleteConfirm({required Object title}) => 'Slet "${title}"? Dette kan ikke fortrydes.';
	@override String get deleted => 'Samling slettet';
	@override String get deleteFailed => 'Kunne ikke slette samling';
	@override String deleteFailedWithError({required Object error}) => 'Kunne ikke slette samling: ${error}';
	@override String get selectCollection => 'Vælg samling';
	@override String get collectionName => 'Samlingsnavn';
	@override String get enterCollectionName => 'Indtast samlingsnavn';
	@override String get addedToCollection => 'Tilføjet til samling';
	@override String get errorAddingToCollection => 'Kunne ikke tilføje til samling';
	@override String get created => 'Samling oprettet';
	@override String get removeFromCollection => 'Fjern fra samling';
	@override String removeFromCollectionConfirm({required Object title}) => 'Fjern "${title}" fra denne samling?';
	@override String get removedFromCollection => 'Fjernet fra samling';
	@override String get removeFromCollectionFailed => 'Kunne ikke fjerne fra samling';
	@override String removeFromCollectionError({required Object error}) => 'Fejl ved fjernelse fra samling: ${error}';
	@override String get searchCollections => 'Søg i samlinger...';
}

// Path: playlists
class _Translations$playlists$da extends Translations$playlists$en {
	_Translations$playlists$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Playlister';
	@override String get playlist => 'Playliste';
	@override String get noPlaylists => 'Ingen playlister fundet';
	@override String get create => 'Opret playliste';
	@override String get playlistName => 'Playlistenavn';
	@override String get enterPlaylistName => 'Indtast playlistenavn';
	@override String get delete => 'Slet playliste';
	@override String get removeItem => 'Fjern fra playliste';
	@override String get smartPlaylist => 'Smart playliste';
	@override String itemCount({required Object count}) => '${count} elementer';
	@override String get oneItem => '1 element';
	@override String get emptyPlaylist => 'Denne playliste er tom';
	@override String get deleteConfirm => 'Slet playliste?';
	@override String deleteMessage({required Object name}) => 'Er du sikker på, at du vil slette "${name}"?';
	@override String get created => 'Playliste oprettet';
	@override String get deleted => 'Playliste slettet';
	@override String get itemAdded => 'Tilføjet til playliste';
	@override String get itemRemoved => 'Fjernet fra playliste';
	@override String get selectPlaylist => 'Vælg playliste';
	@override String get searchPlaylists => 'Søg i playlister...';
	@override String get errorCreating => 'Kunne ikke oprette playliste';
	@override String get errorDeleting => 'Kunne ikke slette playliste';
	@override String get errorLoading => 'Kunne ikke indlæse playlister';
	@override String get errorAdding => 'Kunne ikke tilføje til playliste';
	@override String get errorReordering => 'Kunne ikke ændre rækkefølge på playlisteelement';
	@override String get errorRemoving => 'Kunne ikke fjerne fra playliste';
}

// Path: music
class _Translations$music$da extends Translations$music$en {
	_Translations$music$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get goToAlbum => 'Gå til album';
	@override String get goToArtist => 'Gå til kunstner';
	@override String get instantMix => 'Direkte miks';
	@override String get playNext => 'Afspil næste';
	@override String get addToQueue => 'Føj til kø';
	@override String discNumber({required Object n}) => 'Disk ${n}';
	@override String trackCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n,
		one: '${n} nummer',
		other: '${n} numre',
	);
	@override String get nowPlaying => 'Afspiller nu';
	@override String playingFrom({required Object title}) => 'Afspiller fra ${title}';
	@override String get queue => 'Kø';
	@override String get clearQueue => 'Ryd kø';
	@override String get lyrics => 'Sangtekst';
	@override String get noLyrics => 'Ingen sangtekst tilgængelig';
	@override String get sleepTimer => 'Sovetimer';
	@override String get sleepTimerEndOfTrack => 'Slutningen af nummeret';
	@override String sleepTimerMinutes({required Object n}) => '${n} minutter';
	@override String get stopPlayback => 'Stop afspilning';
	@override String get previousTrack => 'Forrige nummer';
	@override String get nextTrack => 'Næste nummer';
	@override String get repeat => 'Gentag';
	@override String get repeatAll => 'Gentag alle';
	@override String get repeatOne => 'Gentag ét nummer';
	@override String get instantMixNoServer => 'Ingen server er tilgængelig til et øjeblikkeligt mix';
	@override String get instantMixFailed => 'Kunne ikke indlæse det direkte miks';
	@override String get instantMixEmpty => 'Det direkte miks indeholdt ingen numre';
	@override String noAudioUrl({required Object track}) => 'Ingen lyd-URL er tilgængelig for ${track}';
	@override late final _Translations$music$discography$da discography = _Translations$music$discography$da._(_root);
}

// Path: watchTogether
class _Translations$watchTogether$da extends Translations$watchTogether$en {
	_Translations$watchTogether$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Se sammen';
	@override String get description => 'Se indhold synkroniseret med venner og familie';
	@override String get createRoom => 'Skab værelse';
	@override String get creatingRoom => 'Opretter rum...';
	@override String get joinRoom => 'Deltag i værelset';
	@override String get joiningRoom => 'Deltager i værelse...';
	@override String get connecting => 'Opretter forbindelse...';
	@override String get relayPublic => 'Værelserne bruger de offentlige Open Watch Party-relæer.';
	@override String relayCustom({required Object url}) => 'Lokaler bruger dit relæ på ${url}.';
	@override String get recentRooms => 'Seneste rum';
	@override String get roomActions => 'Rumhandlinger';
	@override String get renameRoom => 'Omdøb rum';
	@override String get removeRoom => 'Fjern';
	@override String get enterRoomCode => 'Indtast koden på 6 tegn fra værten.';
	@override String get roomCode => 'Værelseskode';
	@override String get paste => 'Indsæt';
	@override String get noCodeInClipboard => 'Udklipsholderen indeholder ikke en værelseskode';
	@override String get copyCode => 'Kopiér kode';
	@override String get codeCopied => 'Værelseskode kopieret';
	@override String get shareInvite => 'Del Invitation';
	@override String get qrShare => 'Del QR-kode';
	@override String get qrHint => 'Scan med Luroka-appen for at deltage i dette rum.';
	@override String get phasePlaying => 'Spiller';
	@override String get phasePaused => 'Pause';
	@override String get phaseWaiting => 'Venter på alle';
	@override String get inviteCopied => 'Invitationen er kopieret. Indsæt det i en besked.';
	@override String inviteMessage({required Object code}) => 'Tilmeld dig mit Watch Together-rum i Luroka: luroka://watch?code=${code} — eller åbn Watch Together, og indtast ${code}.';
	@override String get openSessionControls => 'Åbn sessionsstyring for Se sammen';
	@override String get reconnecting => 'Genopretter forbindelse...';
	@override String get reconnectingDescription => 'Forbindelsen faldt. Du tiltræder automatisk rummet igen.';
	@override String get connected => 'Forbundet';
	@override String get disconnected => 'Afbrudt';
	@override String get youAreHost => 'Du er vært';
	@override String hostedBy({required Object name}) => 'Værten er ${name}';
	@override String get hostControlsPlayback => 'Værten styrer afspilningen';
	@override String get anyoneCanControl => 'Alle kan styre afspilningen';
	@override String get roomLocked => 'Værelse låst';
	@override String get nowPlaying => 'Spiller nu';
	@override String get nothingPlaying => 'Intet spiller';
	@override String get nothingPlayingHost => 'Spil noget fra et hvilket som helst bibliotek for at dele det med rummet.';
	@override String get nothingPlayingGuest => 'Når værten spiller noget, åbnes det her.';
	@override String get notShareable => 'Denne video har ingen katalogmatch, så kun personer med adgang til den samme server kan afspille den.';
	@override String get searching => 'Leder efter denne video i dine biblioteker...';
	@override String get yourCopy => 'Din kopi';
	@override String get sharingYourCopy => 'Du deler din kopi';
	@override String playingOtherLength({required Object difference}) => 'Afspiller din kopi, ${difference}';
	@override String get mismatchTitle => 'Dit eksemplar har en anden længde';
	@override String mismatchDescription({required Object difference}) => 'Din nærmeste kopi er ${difference} end rummets video. Det kan være en anden udskæring eller version.';
	@override String get playAnyway => 'Spil alligevel';
	@override String get chooseAnotherCopy => 'Vælg en anden kopi';
	@override String get dontPlay => 'Spil ikke';
	@override String get unavailableTitle => 'Du har ikke denne video';
	@override String get unavailableDescription => 'Luroka kunne ikke finde det i dine biblioteker. Vælg selv en kopi, eller søg igen.';
	@override String get chooseCopy => 'Vælg en kopi';
	@override String get searchAgain => 'Søg igen';
	@override String get noCandidates => 'Der blev ikke fundet nogen kopier i dine biblioteker.';
	@override String get choiceFailed => 'Denne kopi kunne ikke afspilles for rummet';
	@override String lengthLonger({required Object duration}) => '${duration} længere';
	@override String lengthShorter({required Object duration}) => '${duration} kortere';
	@override String get lengthSame => 'Samme længde';
	@override String get lengthUnknown => 'Længde ukendt';
	@override String get joinCurrentPlayback => 'Deltag i nuværende afspilning';
	@override String get joinCurrentPlaybackDescription => 'Hop tilbage til det værten ser nu';
	@override String get stopMedia => 'Stop video for alle';
	@override String get syncOffset => 'Synk offset';
	@override String get syncOffsetDescription => 'Skift din video, hvis den kører foran eller bagved rummet.';
	@override String offsetHint({required Object difference}) => 'Din kopi er ${difference} end rummets video.';
	@override String applyDifference({required Object offset}) => 'Brug ${offset}';
	@override String get offsetMinusSecond => '-1 sek';
	@override String get offsetMinusTenth => '-100 ms';
	@override String get offsetPlusTenth => '+100 ms';
	@override String get offsetPlusSecond => '+1 s';
	@override String get participants => 'Deltagere';
	@override String participantCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n,
		one: '${n} deltager',
		other: '${n} deltagere',
	);
	@override String get hostBadge => 'VÆRT';
	@override String nameYou({required Object name}) => '${name} (dig)';
	@override String get playerIdle => 'Inaktiv';
	@override String get playerLoading => 'Indlæser';
	@override String get playerReady => 'Klar';
	@override String get playerBuffering => 'Buffer';
	@override String get matchSearching => 'Søger';
	@override String get matchMatched => 'Har videoen';
	@override String get matchMismatched => 'Forskellig længde';
	@override String get matchUnavailable => 'Har ikke videoen';
	@override String participantOffset({required Object offset}) => 'Offset ${offset}';
	@override String get makeHost => 'Gør til vært';
	@override String get makeHostQuestion => 'Overfør vært?';
	@override String makeHostConfirm({required Object name}) => '${name} styrer afspilningen og sessionen for alle.';
	@override String get transfer => 'Overfør';
	@override String get removeParticipant => 'Fjern fra rummet';
	@override String removeParticipantQuestion({required Object name}) => 'Vil du fjerne ${name}?';
	@override String removeParticipantConfirm({required Object name}) => '${name} forlader rummet. De kan tilslutte sig igen med koden, medmindre du låser lokalet.';
	@override String get remove => 'Fjern';
	@override String get roomSettings => 'Rumindstillinger';
	@override String get letEveryoneControl => 'Lad alle styre afspilningen';
	@override String get lockRoom => 'Låseværelse';
	@override String get lockRoomDescription => 'Ingen nye kan være med';
	@override String get leaveRoom => 'Forlad værelse';
	@override String get leaveRoomQuestion => 'Forlade rummet?';
	@override String get leaveRoomConfirm => 'Du kan deltage igen med værelseskoden.';
	@override String get leave => 'Forlad';
	@override String get endRoom => 'Slutrum';
	@override String get endRoomQuestion => 'Slutrum?';
	@override String get endRoomConfirm => 'Dette afslutter rummet for alle.';
	@override String get end => 'Afslut';
	@override String get playBlockedTitle => 'Afspilningen startede ikke';
	@override String get playBlockedDescription => 'Tryk på afspil for at begynde at se med rummet.';
	@override late final _Translations$watchTogether$notices$da notices = _Translations$watchTogether$notices$da._(_root);
	@override late final _Translations$watchTogether$ended$da ended = _Translations$watchTogether$ended$da._(_root);
	@override late final _Translations$watchTogether$errors$da errors = _Translations$watchTogether$errors$da._(_root);
	@override String untitledEpisode({required Object number}) => 'Afsnit ${number}';
}

// Path: downloads
class _Translations$downloads$da extends Translations$downloads$en {
	_Translations$downloads$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Downloads';
	@override String get manage => 'Administrer';
	@override String get tvShows => 'TV-serier';
	@override String get movies => 'Film';
	@override String get music => 'Musik';
	@override String tracksQueued({required Object count}) => '${count} numre i kø til download';
	@override String get noDownloads => 'Ingen downloads endnu';
	@override String get noDownloadsDescription => 'Downloadet indhold vises her til offlinevisning';
	@override String get downloadNow => 'Download';
	@override String get deleteDownload => 'Slet download';
	@override String get retryDownload => 'Prøv download igen';
	@override String get downloadQueued => 'Download i kø';
	@override String get downloadResumed => 'Download genoptaget';
	@override String get serverErrorBitrate => 'Serverfejl: filen overskrider muligvis grænsen for ekstern bitrate';
	@override String get storageFull => 'Downloads blev stoppet for at beskytte den ledige lagerplads. Frigør plads, eller vælg en anden downloadplacering, og prøv igen.';
	@override String get storageUnavailable => 'Downloads blev stoppet, fordi den tilgængelige lagerplads ikke kunne kontrolleres. Tjek downloadplaceringen, og prøv igen.';
	@override String episodesQueued({required Object count}) => '${count} episoder i downloadkø';
	@override String get downloadDeleted => 'Download slettet';
	@override String deleteConfirm({required Object title}) => 'Slet "${title}" fra denne enhed?';
	@override String get deleteCollectionDownloads => 'Slet downloads';
	@override String deleteCollectionDownloadsConfirm({required Object title}) => 'Vil du slette hver download i "${title}" fra denne enhed?';
	@override String get collectionDownloadsDeleted => 'Downloads slettet';
	@override String get cancelledDownloadTitle => 'Annulleret download';
	@override String get cancelledDownloadMessage => 'Denne download blev annulleret. Hvad vil du gøre?';
	@override String get allEpisodesAlreadyDownloaded => 'Alle episoder er allerede downloadet';
	@override String get resumeDownload => 'Genoptag download';
	@override String get cancelledDownload => 'Annulleret download';
	@override String syncingFile({required Object file, required Object status}) => '${file} (synkroniserer ${status})';
	@override String downloadedFileClickToComplete({required Object file}) => '${file} downloadet — klik for at fuldføre';
	@override String get partialDownloadClickToComplete => 'Delvist downloadet — klik for at fuldføre';
	@override String get deleting => 'Sletter...';
	@override String deletingWithProgress({required Object title, required Object current, required Object total}) => 'Sletter ${title}... (${current} af ${total})';
	@override String get queuedTooltip => 'I kø';
	@override String queuedFilesTooltip({required Object files}) => 'I kø: ${files}';
	@override String get downloadingTooltip => 'Downloader...';
	@override String downloadingFilesTooltip({required Object files}) => 'Downloader ${files}';
	@override String get noDownloadsTree => 'Ingen downloads';
	@override String get pauseAll => 'Sæt alle på pause';
	@override String get resumeAll => 'Genoptag alle';
	@override String get retryAll => 'Prøv alle igen';
	@override String get retryFailed => 'Prøv mislykkede downloads igen';
	@override String get deleteAll => 'Slet alle';
	@override String get selectVersion => 'Vælg version';
	@override String get allEpisodes => 'Alle episoder';
	@override String get unwatchedOnly => 'Kun usete';
	@override String nextNUnwatched({required Object count}) => 'Næste ${count} usete';
	@override String get customAmount => 'Angiv antal...';
	@override String get includeSpecials => 'Medtag specialafsnit';
	@override String get howManyEpisodes => 'Hvor mange episoder?';
	@override String get invalidEpisodeCount => 'Indtast et gyldigt antal episoder.';
	@override String get keepSynced => 'Synkroniser løbende';
	@override String get downloadOnce => 'Download én gang';
	@override String keepNUnwatched({required Object count}) => 'Behold ${count} usete';
	@override String get editSyncRule => 'Rediger synkroniseringsregel';
	@override String get removeSyncRule => 'Fjern synkroniseringsregel';
	@override String removeSyncRuleConfirm({required Object title}) => 'Stop synkronisering af "${title}"? Downloadede episoder beholdes.';
	@override String removeListSyncRuleConfirm({required Object title}) => 'Stop synkronisering af "${title}"?';
	@override String get deleteSyncRuleDownloads => 'Slet også tilknyttede downloads';
	@override String get deleteSyncRuleDownloadsDescription => 'Downloads, der bruges af en anden synkroniseringsregel eller profil, beholdes.';
	@override String syncRuleCreated({required Object count}) => 'Synkroniseringsregel oprettet — beholder ${count} usete episoder';
	@override String get syncRuleUpdated => 'Synkroniseringsregel opdateret';
	@override String get syncRuleRemoved => 'Synkroniseringsregel fjernet';
	@override String get syncRuleAndDownloadsRemoved => 'Synkroniseringsregel og tilknyttede downloads fjernet';
	@override String get syncRuleCleanupBusy => 'Synkroniseringsregler opdateres lige nu. Prøv igen om et øjeblik.';
	@override String get syncRuleCleanupUnavailable => 'Tilknyttede downloads kunne ikke identificeres sikkert. Genopret forbindelse til serveren og prøv igen, eller fjern reglen uden at slette downloads.';
	@override String syncedNewEpisodes({required Object count, required Object title}) => 'Synkroniserede ${count} nye episoder for ${title}';
	@override String get activeSyncRules => 'Synkroniseringsregler';
	@override String get noSyncRules => 'Ingen synkroniseringsregler';
	@override String get manageSyncRule => 'Administrer synkronisering';
	@override String get editEpisodeCount => 'Antal episoder';
	@override String get editSyncFilter => 'Synkroniseringsfilter';
	@override String get syncAllItems => 'Synkroniserer alle elementer';
	@override String get syncUnwatchedItems => 'Synkroniserer usete elementer';
	@override String syncRuleServerContext({required Object server, required Object status}) => 'Server: ${server} • ${status}';
	@override String get syncRuleAvailable => 'Tilgængelig';
	@override String get syncRuleOffline => 'Offline';
	@override String get syncRuleSignInRequired => 'Login påkrævet';
	@override String get syncRuleAccessDenied => 'Adgang nægtet';
	@override String get syncRuleNotAvailableForProfile => 'Ikke tilgængelig for nuværende profil';
	@override String get syncRuleUnknownServer => 'Ukendt server';
	@override String get syncRuleListCreated => 'Synkroniseringsregel oprettet';
	@override late final _Translations$downloads$backgroundWarning$da backgroundWarning = _Translations$downloads$backgroundWarning$da._(_root);
	@override String get options => 'Valgmuligheder for downloads';
	@override late final _Translations$downloads$groupings$da groupings = _Translations$downloads$groupings$da._(_root);
	@override String get unknownLibrary => 'Ukendt bibliotek';
	@override String get unknownShow => 'Ukendt serie';
	@override String get unknownSeason => 'Ukendt sæson';
	@override String get unknownAlbum => 'Ukendt album';
	@override String completedOfTotal({required Object completed, required Object total}) => '${completed}/${total} fuldført';
	@override String get errorFileNotFound => 'Filen blev ikke fundet (404)';
	@override String get errorDownloadNotAllowed => 'Serveren tillader ikke download (403)';
	@override String get errorDownloadFailed => 'Download mislykkedes';
	@override String errorDownloadFailedWithReason({required Object reason}) => 'Download mislykkedes: ${reason}';
	@override String errorHttpStatus({required Object status}) => 'Download mislykkedes (HTTP ${status})';
	@override String errorPostProcessing({required Object reason}) => 'Efterbehandling mislykkedes: ${reason}';
	@override String get reasonFileNotSaved => 'filen kunne ikke gemmes på denne enhed';
	@override String get reasonCannotResume => 'den delvise download kunne ikke genoptages';
	@override String get reasonDeviceStorageFull => 'der er ikke mere lagerplads på denne enhed';
	@override String get notificationDownloading => 'Downloader...';
	@override String get notificationComplete => 'Download fuldført';
	@override String get notificationPaused => 'Download sat på pause';
}

// Path: shaders
class _Translations$shaders$da extends Translations$shaders$en {
	_Translations$shaders$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Shadere';
	@override String get noShaderDescription => 'Ingen videoforbedring';
	@override String get nvscalerDescription => 'NVIDIA-billedskalering for skarpere video';
	@override String get artcnnVariantNeutral => 'Neutral';
	@override String get artcnnVariantDenoise => 'Støjreduktion';
	@override String get artcnnVariantDenoiseSharpen => 'Støjreduktion + skarphed';
	@override String get qualityFast => 'Hurtig';
	@override String get qualityHQ => 'Høj kvalitet';
	@override String get mode => 'Tilstand';
	@override String get importShader => 'Importér shader';
	@override String get customShaderDescription => 'Brugerdefineret GLSL-shader';
	@override String get shaderImported => 'Shader importeret';
	@override String get shaderImportFailed => 'Kunne ikke importere shader';
	@override String get deleteShader => 'Slet shader';
	@override String deleteShaderConfirm({required Object name}) => 'Slet "${name}"?';
}

// Path: companionRemote
class _Translations$companionRemote$da extends Translations$companionRemote$en {
	_Translations$companionRemote$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fjernbetjening';
	@override String connectedTo({required Object name}) => 'Forbundet til ${name}';
	@override String get unknownDevice => 'Ukendt enhed';
	@override late final _Translations$companionRemote$session$da session = _Translations$companionRemote$session$da._(_root);
	@override late final _Translations$companionRemote$pairing$da pairing = _Translations$companionRemote$pairing$da._(_root);
	@override late final _Translations$companionRemote$remote$da remote = _Translations$companionRemote$remote$da._(_root);
	@override late final _Translations$companionRemote$errors$da errors = _Translations$companionRemote$errors$da._(_root);
	@override String get closedBeforeAuth => 'Forbindelsen blev lukket før godkendelsen';
}

// Path: videoSettings
class _Translations$videoSettings$da extends Translations$videoSettings$en {
	_Translations$videoSettings$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get playbackSpeed => 'Afspilningshastighed';
	@override String get normalSpeed => 'Normal';
	@override String sleepTimerActive({required Object duration}) => 'Aktiv (${duration})';
	@override String get zoom => 'Zoom';
	@override String get sleepTimer => 'Sove-timer';
	@override String get audioSync => 'Lydsynkronisering';
	@override String get subtitleSync => 'Undertekstsynkronisering';
	@override String get hdr => 'HDR';
	@override String get hdrUnsupported => 'HDR er ikke tilgængelig her – denne skrivebordskompositor eller videoudgang kan ikke håndtere det.';
	@override String get hdrToneMapping => 'HDR-tonemapping';
	@override String get hdrToneMappingCompositor => 'Kompositor';
	@override String get hdrToneMappingCompositorDescription => 'Videregiv kildens HDR-metadata, og lad skrivebordskompositoren tonemappe dem.';
	@override String get hdrToneMappingPlayer => 'Afspiller';
	@override String get hdrToneMappingPlayerDescription => 'Tilpas til skærmens maksimale lysstyrke i afspilleren, og fortæl derefter kompositoren om resultatet.';
	@override String get hdrToneMappingFailed => 'Kunne ikke ændre HDR-tonemapping – den tidligere tilstand er stadig aktiv.';
	@override String get audioOutput => 'Lydoutput';
	@override String get performanceOverlay => 'Ydelsesoverlay';
	@override String get audioOutputDolbyAtmos => 'Dolby Atmos';
	@override String get audioOutputDolbyAudio => 'Dolby Audio';
	@override String get audioOutputSurround => 'Surround';
	@override String get audioOutputSpatial => 'Rumlig lyd';
	@override String get audioOutputStereo => 'Stereo';
	@override String get audioNormalization => 'Normalisér lydstyrke';
	@override String get audioNormalizationDisablesPassthrough => 'Dekoder lyd til PCM; passthrough er fra, mens dette er slået til';
}

// Path: performanceOverlay
class _Translations$performanceOverlay$da extends Translations$performanceOverlay$en {
	_Translations$performanceOverlay$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get color => 'Farve';
	@override String get performance => 'Ydeevne';
	@override String get buffer => 'Buffer';
	@override String get app => 'App';
	@override String get decoder => 'Dekoder';
	@override String get rawDecoder => 'Rå dekoder';
	@override String get tunneling => 'Tunneling';
	@override String get passthrough => 'Passthrough';
	@override String get aspect => 'Billedformat';
	@override String get rotation => 'Rotation';
	@override String get dvSource => 'DV-kilde';
	@override String get dvPath => 'DV-sti';
	@override String get dvRouteDecoder => 'Dolby Vision dekoder';
	@override String get dvRouteDecoderP81 => 'Dolby Vision dekoder (P7→8.1)';
	@override String get dvRouteBaseLayer => 'Grundlag';
	@override String get dvRouteBaseLayerHdr10 => 'HDR10 basislag';
	@override String get dvRouteBaseLayerHlg => 'HLG basislag';
	@override String get dvRouteBaseLayerSdr => 'SDR basislag';
	@override String get dvRouteReshaped => 'RPU omformet (gpu-næste)';
	@override String get p7Conversion => 'P7-konv.';
	@override String get sampleRate => 'Samplingsrate';
	@override String get pixelFormat => 'Pixelformat';
	@override String get hwFormat => 'HW-format';
	@override String get matrix => 'Matrix';
	@override String get primaries => 'Primærfarver';
	@override String get transfer => 'Overførsel';
	@override String get renderFps => 'Gengivelses-FPS';
	@override String get displayFps => 'Skærm-FPS';
	@override String get avSync => 'A/V-synk.';
	@override String get dropped => 'Tabte';
	@override String get dvRpus => 'DV RPU’er';
	@override String get dvRpuAverage => 'DV RPU gns.';
	@override String get dvSampleAverage => 'DV-sample gns.';
	@override String get maxLuma => 'Maks. luma';
	@override String get minLuma => 'Min. luma';
	@override String get maxCll => 'MaxCLL';
	@override String get maxFall => 'MaxFALL';
	@override String get cacheUsed => 'Brugt cache';
	@override String get cacheLimit => 'Cachegrænse';
	@override String get speed => 'Hastighed';
	@override String get player => 'Afspiller';
	@override String get memory => 'Hukommelse';
	@override String get uiFps => 'UI-FPS';
	@override String get fps => 'FPS';
	@override String get decoderAndroidHw => 'Android HW';
	@override String get decoderNvidiaHw => 'NVIDIA HW';
	@override String get decoderQualcommHw => 'Qualcomm HW';
	@override String get decoderMediatekHw => 'MediaTek HW';
	@override String get decoderExynosHw => 'Exynos HW';
	@override String get decoderSoftware => 'Software';
	@override String get decoderHardware => 'Hardware';
	@override String get tunnelingActive => 'Aktiv';
	@override String dvRpuFailed({required Object converted, required Object failures}) => '${converted} (${failures} mislykkedes)';
}

// Path: externalPlayer
class _Translations$externalPlayer$da extends Translations$externalPlayer$en {
	_Translations$externalPlayer$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ekstern afspiller';
	@override String get useExternalPlayer => 'Brug ekstern afspiller';
	@override String get useExternalPlayerDescription => 'Åbn videoer i en anden app';
	@override String get selectPlayer => 'Vælg afspiller';
	@override String get customPlayers => 'Brugerdefinerede afspillere';
	@override String get systemDefault => 'Systemstandard';
	@override String get addCustomPlayer => 'Tilføj brugerdefineret afspiller';
	@override String get playerName => 'Afspillernavn';
	@override String get playerNameHint => 'Min afspiller';
	@override String get playerCommand => 'Kommando';
	@override String get playerPackage => 'Pakkenavn';
	@override String get playerUrlScheme => 'URL-skema';
	@override String get off => 'Fra';
	@override String get launchFailed => 'Kunne ikke åbne ekstern afspiller';
	@override String appNotInstalled({required Object name}) => '${name} er ikke installeret';
	@override String get playInExternalPlayer => 'Afspil i ekstern afspiller';
}

// Path: metadataEdit
class _Translations$metadataEdit$da extends Translations$metadataEdit$en {
	_Translations$metadataEdit$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get editMetadata => 'Rediger...';
	@override String get screenTitle => 'Rediger metadata';
	@override String get basicInfo => 'Grundlæggende oplysninger';
	@override String get artwork => 'Grafik';
	@override String get advancedSettings => 'Avancerede indstillinger';
	@override String get title => 'Titel';
	@override String get sortTitle => 'Sorteringstitel';
	@override String get originalTitle => 'Originaltitel';
	@override String get releaseDate => 'Udgivelsesdato';
	@override String get contentRating => 'Aldersgrænse';
	@override String get studio => 'Studie';
	@override String get tagline => 'Slogan';
	@override String get summary => 'Resumé';
	@override String get poster => 'Plakat';
	@override String get background => 'Baggrund';
	@override String get logo => 'Logo';
	@override String get squareArt => 'Kvadratisk billede';
	@override String get selectPoster => 'Vælg plakat';
	@override String get selectBackground => 'Vælg baggrund';
	@override String get selectLogo => 'Vælg logo';
	@override String get selectSquareArt => 'Vælg kvadratisk billede';
	@override String get fromUrl => 'Fra URL';
	@override String get uploadFile => 'Upload fil';
	@override String get enterImageUrl => 'Indtast billed-URL';
	@override String get imageUrl => 'Billed-URL';
	@override String get metadataUpdated => 'Metadata opdateret';
	@override String get metadataUpdateFailed => 'Kunne ikke opdatere metadata';
	@override String get artworkUpdated => 'Grafik opdateret';
	@override String get artworkUpdateFailed => 'Kunne ikke opdatere grafik';
	@override String get noArtworkAvailable => 'Ingen grafik tilgængelig';
	@override String artworkOption({required Object index}) => 'Grafikvalg ${index}';
	@override String selectedArtworkOption({required Object index}) => 'Grafikvalg ${index}, valgt';
	@override String get notSet => 'Ikke indstillet';
	@override String get libraryDefault => 'Biblioteksstandard';
	@override String get accountDefault => 'Kontostandard';
	@override String get seriesDefault => 'Seriestandard';
	@override String get episodeSorting => 'Episodesortering';
	@override String get oldestFirst => 'Ældste først';
	@override String get newestFirst => 'Nyeste først';
	@override String get keep => 'Behold';
	@override String get allEpisodes => 'Alle episoder';
	@override String latestEpisodes({required Object count}) => '${count} seneste episoder';
	@override String get latestEpisode => 'Seneste episode';
	@override String episodesAddedPastDays({required Object count}) => 'Episoder tilføjet de seneste ${count} dage';
	@override String get deleteAfterPlaying => 'Slet episoder efter afspilning';
	@override String get never => 'Aldrig';
	@override String get afterADay => 'Efter en dag';
	@override String get afterAWeek => 'Efter en uge';
	@override String get afterAMonth => 'Efter en måned';
	@override String get onNextRefresh => 'Ved næste opdatering';
	@override String get seasons => 'Sæsoner';
	@override String get show => 'Vis';
	@override String get hide => 'Skjul';
	@override String get episodeOrdering => 'Episoderækkefølge';
	@override String get tmdbAiring => 'The Movie Database (udsendt)';
	@override String get tvdbAiring => 'TheTVDB (udsendt)';
	@override String get tvdbAbsolute => 'TheTVDB (Absolut)';
	@override String get metadataLanguage => 'Metadatasprog';
	@override String get useOriginalTitle => 'Brug originaltitel';
	@override String get preferredAudioLanguage => 'Foretrukket lydsprog';
	@override String get preferredSubtitleLanguage => 'Foretrukket undertekstsprog';
	@override String get subtitleMode => 'Automatisk valg af undertekster';
	@override String get manuallySelected => 'Manuelt valgt';
	@override String get shownWithForeignAudio => 'Vis ved fremmedsproget lyd';
	@override String get alwaysEnabled => 'Altid aktiveret';
	@override String get tags => 'Tags';
	@override String get addTag => 'Tilføj tag';
	@override String get genre => 'Genre';
	@override String get director => 'Instruktør';
	@override String get writer => 'Forfatter';
	@override String get producer => 'Producer';
	@override String get country => 'Land';
	@override String get collection => 'Samling';
	@override String get label => 'Etiket';
	@override String get quickTag => 'Hurtigt tag...';
}

// Path: matchScreen
class _Translations$matchScreen$da extends Translations$matchScreen$en {
	_Translations$matchScreen$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get match => 'Match...';
	@override String get fixMatch => 'Ret match...';
	@override String get unmatch => 'Fjern match';
	@override String get unmatchConfirm => 'Ryd dette match? Plex behandler det som umatchet, indtil det matches igen.';
	@override String get unmatchSuccess => 'Match fjernet';
	@override String get unmatchFailed => 'Kunne ikke fjerne match';
	@override String get matchApplied => 'Match anvendt';
	@override String get matchFailed => 'Kunne ikke anvende match';
	@override String get titleHint => 'Titel';
	@override String get yearHint => 'År';
	@override String get search => 'Søg';
	@override String get noMatchesFound => 'Ingen match fundet';
}

// Path: serverTasks
class _Translations$serverTasks$da extends Translations$serverTasks$en {
	_Translations$serverTasks$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Serveropgaver';
	@override String get failedToLoad => 'Kunne ikke indlæse opgaver';
	@override String get noTasks => 'Ingen opgaver kører';
}

// Path: trakt
class _Translations$trakt$da extends Translations$trakt$en {
	_Translations$trakt$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Trakt';
	@override String get connected => 'Forbundet';
	@override String connectedAs({required Object username}) => 'Forbundet som @${username}';
	@override String get disconnectConfirm => 'Frakobl Trakt-konto?';
	@override String get disconnectConfirmBody => 'Luroka stopper med at sende hændelser til Trakt. Du kan tilslutte igen når som helst.';
	@override String get scrobble => 'Realtids-scrobbling';
	@override String get scrobbleDescription => 'Send afspil-, pause- og stop-begivenheder til Trakt under afspilning.';
	@override String get watchedSync => 'Synkroniser set-status';
	@override String get watchedSyncDescription => 'Når du markerer elementer som set i Luroka, markeres de også på Trakt.';
}

// Path: seerr
class _Translations$seerr$da extends Translations$seerr$en {
	_Translations$seerr$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Seerr';
	@override String get connectTitle => 'Forbind Seerr';
	@override String get serverUrl => 'Server-URL';
	@override String get serverUrlHelper => 'Adressen på din Seerr-instans';
	@override String get checkServer => 'Fortsæt';
	@override String get signInWithJellyfin => 'Log ind med Jellyfin';
	@override String get signInWithEmby => 'Log ind med Emby';
	@override String get signInWithLocal => 'Brug en lokal konto';
	@override String get email => 'E-mail';
	@override String get noSignInMethods => 'Denne Seerr-instans tilbyder ingen loginmetode, som Luroka understøtter.';
	@override String get instance => 'Instans';
	@override String get disconnectConfirm => 'Afbryd forbindelsen til Seerr?';
	@override String get disconnectConfirmBody => 'Luroka glemmer denne Seerr-instans. Du kan altid oprette forbindelse igen.';
	@override String get request => 'Anmod';
	@override String get request4k => 'Anmod i 4K';
	@override String get seasons => 'Sæsoner';
	@override String get allSeasons => 'Alle sæsoner';
	@override String get advancedOptions => 'Avanceret';
	@override String get destinationServer => 'Destinationsserver';
	@override String get qualityProfile => 'Kvalitetsprofil';
	@override String get rootFolder => 'Rodmappe';
	@override String get languageProfile => 'Sprogprofil';
	@override String get tags => 'Tags';
	@override String get noTags => 'Ingen tags';
	@override String defaultOption({required Object name}) => '${name} (standard)';
	@override String get animeNote => 'Denne serie er en anime.';
	@override String get requestSubmitted => 'Anmodning sendt';
	@override String requestFailed({required Object error}) => 'Anmodning mislykkedes: ${error}';
	@override String get requestsLoadFailed => 'Kunne ikke indlæse anmodningsmuligheder';
	@override String get nothingToRequest => 'Alt er allerede tilgængeligt eller anmodet.';
	@override String get statusAvailable => 'Tilgængelig';
	@override String get statusPartiallyAvailable => 'Delvist tilgængelig';
	@override String get statusRequested => 'Anmodet';
	@override String get statusProcessing => 'Behandler';
	@override String get statusBlocklisted => 'På blokeringslisten';
	@override String couldNotReach({required Object url, required Object error}) => 'Kunne ikke nå ${url}: ${error}';
	@override String noInstanceAtUrl({required Object url, required Object status}) => 'Ingen Seerr-instans på ${url} (HTTP ${status})';
	@override String get behindAuthProxy => 'En godkendende reverse proxy (SSO eller HTTP-auth) svarede i stedet for Seerr. Luroka kan ikke logge ind gennem den: Lad Seerrs /api/v1-sti omgå proxyen for denne app, eller brug en adresse, der når Seerr direkte.';
	@override String get invalidUrl => 'Indtast en serveradresse som https://seerr.example.com';
	@override String get quickConnectUnsupported => 'Denne Seerr-instans understøtter ikke Quick Connect. Den kræver Seerr 3.4 eller nyere.';
	@override String get notInitialized => 'Denne Seerr-instans har ikke fuldført førstegangsopsætningen';
	@override String get noPlexTokenForReauth => 'Intet Plex-token er tilgængeligt til at logge ind igen';
	@override String get noStoredCredentials => 'Ingen gemte loginoplysninger er tilgængelige til at logge ind igen';
	@override String get signInRejected => 'Login blev afvist';
	@override String get noSessionCookie => 'Seerr udstedte ikke en sessionscookie';
	@override String get freshCookieRejected => 'Seerr afviste den nye sessionscookie';
	@override String get noUserInformation => 'Seerr returnerede ikke brugeroplysninger';
	@override String get sessionRejectedAfterReauth => 'Sessionen blev afvist efter at være logget ind igen';
	@override String get permissionDenied => 'Seerr afviste denne handling: din konto har ikke længere den nødvendige tilladelse';
	@override String get permissionRevoked => 'Du har ikke længere tilladelse til at anmode om dette';
}

// Path: services
class _Translations$services$da extends Translations$services$en {
	_Translations$services$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tjenester';
	@override String get hubSubtitle => 'Synkroniser dit visningsfremskridt, og anmod om nye titler.';
	@override String get discoverySection => 'Opdagelse og forespørgsler';
	@override String get trackingSection => 'Visningshistorik og lister';
	@override String get seerrDescription => 'Find film og serier, og send forespørgsler fra din Seerr-server.';
	@override String get tmdbDescription => 'Find film og serier, plakater, bedømmelser og oplysninger.';
	@override String get traktDescription => 'Følg film og serier, synkroniser set-status, og administrer din watchliste.';
	@override String get malDescription => 'Hold din animeliste og visningsstatus synkroniseret.';
	@override String get anilistDescription => 'Følg anime, og synkroniser din visningsstatus med AniList.';
	@override String get simklDescription => 'Følg dine film, serier og anime med Simkl.';
	@override String get mdblistDescription => 'Tilslut dine MDBList-lister og filmbedømmelser.';
	@override String connectionIntro({required Object service}) => 'Tilslut ${service} til din aktuelle Luroka-profil. Du kan altid administrere forbindelsen og dens indstillinger her.';
	@override String connectService({required Object service}) => 'Tilslut ${service}';
	@override String get seerrConnectDescription => 'Tilslut din Seerr-server for at finde og anmode om film og serier fra Luroka.';
	@override String get seerrServerStep => 'Start med den adresse, du bruger til at åbne Seerr. Vi undersøger, hvilke loginmetoder serveren understøtter.';
	@override String get seerrSignInStep => 'Vælg en loginmetode, som din server understøtter.';
	@override String get integrations => 'Integrationer';
	@override String get notConnected => 'Ikke forbundet';
	@override String connectedAs({required Object username}) => 'Forbundet som @${username}';
	@override String get scrobble => 'Registrer fremgang automatisk';
	@override String get scrobbleDescription => 'Opdater din liste, når du er færdig med et afsnit eller en film.';
	@override String disconnectConfirm({required Object service}) => 'Afbryd forbindelsen til ${service}?';
	@override String disconnectConfirmBody({required Object service}) => 'Luroka stopper med at opdatere ${service}. Du kan altid oprette forbindelse igen.';
	@override String connectFailed({required Object service}) => 'Kunne ikke forbinde til ${service}. Prøv igen.';
	@override late final _Translations$services$names$da names = _Translations$services$names$da._(_root);
	@override late final _Translations$services$simklReconnect$da simklReconnect = _Translations$services$simklReconnect$da._(_root);
	@override late final _Translations$services$deviceCode$da deviceCode = _Translations$services$deviceCode$da._(_root);
	@override late final _Translations$services$oauthProxy$da oauthProxy = _Translations$services$oauthProxy$da._(_root);
	@override late final _Translations$services$pendingAuth$da pendingAuth = _Translations$services$pendingAuth$da._(_root);
	@override late final _Translations$services$libraryFilter$da libraryFilter = _Translations$services$libraryFilter$da._(_root);
}

// Path: addServer
class _Translations$addServer$da extends Translations$addServer$en {
	_Translations$addServer$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String addMediaBrowserTitle({required Object product}) => 'Tilføj ${product}-server';
	@override String get serverUrls => 'Server-URL\'er';
	@override String get serverUrlsHelper => 'Du kan angive flere URL\'er adskilt med komma.';
	@override String get findServer => 'Find server';
	@override String searchingLocalMediaBrowserServers({required Object product}) => 'Leder efter lokale ${product}-servere...';
	@override String localMediaBrowserServers({required Object product}) => 'Lokale ${product}-servere';
	@override String get username => 'Brugernavn';
	@override String get password => 'Adgangskode';
	@override String get signIn => 'Log ind';
	@override String get change => 'Ændr';
	@override String get required => 'Påkrævet';
	@override String couldNotReachServer({required Object error}) => 'Kunne ikke nå serveren: ${error}';
	@override String signInFailed({required Object error}) => 'Kunne ikke logge ind: ${error}';
	@override String quickConnectFailed({required Object error}) => 'Quick Connect mislykkedes: ${error}';
	@override String get addPlexTitle => 'Log ind med Plex';
	@override String get pinExpired => 'PIN-koden udløb før login. Prøv igen.';
	@override String failedToRegisterAccount({required Object error}) => 'Kunne ikke registrere kontoen: ${error}';
	@override String enterMediaBrowserUrlError({required Object product}) => 'Indtast din ${product}-server-URL';
	@override String get addConnectionTitle => 'Tilføj forbindelse';
	@override String addConnectionTitleScoped({required Object name}) => 'Tilføj til ${name}';
	@override String get signInWithPlexCard => 'Log ind med Plex';
	@override String get signInWithPlexCardSubtitle => 'Godkend denne enhed. Delte servere tilføjes.';
	@override String get signInWithPlexCardSubtitleScoped => 'Godkend en Plex-konto. Plex Home-brugere bliver til profiler.';
	@override String connectToMediaBrowserCard({required Object product}) => 'Opret forbindelse til ${product}';
	@override String get connectToMediaBrowserCardSubtitle => 'Indtast din server-URL, brugernavn og adgangskode.';
	@override String connectToMediaBrowserCardSubtitleScoped({required Object product, required Object name}) => 'Log ind på din ${product}-server. Tilknyttes til ${name}.';
	@override String get borrowFromAnotherProfile => 'Lån fra en anden profil';
	@override String get borrowFromAnotherProfileSubtitle => 'Genbrug en anden profils forbindelse. PIN-beskyttede profiler kræver en PIN.';
	@override String get invalidCredentials => 'Ugyldigt brugernavn eller ugyldig adgangskode';
	@override String get authResponseNotJson => 'Godkendelsessvaret var ikke gyldig JSON';
	@override String get authResponseIncomplete => 'Loginsvaret fra serveren var ufuldstændigt';
	@override String get quickConnectRejected => 'Quick Connect blev afvist af serveren';
	@override String get quickConnectNotJson => 'Quick Connect-svaret var ikke gyldig JSON';
	@override String get quickConnectMissingFields => 'Quick Connect-svaret mangler en kode eller hemmelighed';
	@override String get quickConnectPollRejected => 'Quick Connect-polling blev afvist af serveren';
	@override String get serverTimedOut => 'Serveren svarede ikke i tide';
	@override String get responseNotJson => 'Serversvaret var ikke gyldig JSON';
	@override String responseMissingIdentity({required Object product}) => 'Svaret mangler et ID eller servernavn – er dette en ${product}-server?';
	@override String probeFailed({required Object error}) => 'Kunne ikke nå serveren: ${error}';
	@override String enterAtLeastOneUrl({required Object product}) => 'Indtast mindst én URL til en ${product}-server';
	@override String noReachableServer({required Object product}) => 'Der blev ikke fundet nogen ${product}-server, som kunne nås';
	@override String urlsPointToDifferentServers({required Object product}) => 'Disse URL\'er peger på forskellige ${product}-servere';
	@override String urlDoesNotMatchServer({required Object product}) => 'Denne URL stemmer ikke overens med ${product}-serveren';
	@override String get redirectUnsupported => 'Serveren videresendte til en URL, der ikke understøttes';
	@override String redirectDifferentHost({required Object product}) => 'Serveren videresendte til en anden vært. Indtast den endelige ${product}-URL direkte.';
	@override String get redirectInsecure => 'Serveren videresendte fra HTTPS til en usikker URL';
	@override String redirectUnsupportedEnterFinal({required Object product}) => 'Serveren videresendte til en URL, der ikke understøttes. Indtast den endelige ${product}-URL direkte.';
}

// Path: appIcon.names
class _Translations$appIcon$names$da extends Translations$appIcon$names$en {
	_Translations$appIcon$names$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get midnight => 'Midnat';
	@override String get ember => 'Gløder';
	@override String get paper => 'Papir';
	@override String get oled => 'OLED';
	@override String get line => 'Linje';
	@override String get ocean => 'Ocean';
	@override String get ultraviolet => 'Ultraviolet';
	@override String get matcha => 'Matcha';
	@override String get sunset => 'Solnedgang';
	@override String get gold => 'Guld';
	@override String get titanium => 'Titanium';
	@override String get glass => 'Glas';
	@override String get crt => 'CRT';
	@override String get vhs => 'VHS';
	@override String get synthwave => 'Synthwave';
	@override String get pixel => 'Pixel';
	@override String get neon => 'Neon';
	@override String get sticker => 'Klistermærke';
	@override String get ticket => 'Billet';
	@override String get pop => 'Pop';
	@override String get strata => 'Strata';
	@override String get facet => 'Facet';
	@override String get tilde => 'Tilde';
}

// Path: common.ratingSource
class _Translations$common$ratingSource$da extends Translations$common$ratingSource$en {
	_Translations$common$ratingSource$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get critic => 'Anmeldere';
	@override String get audience => 'Publikum';
	@override String get imdb => 'IMDb';
	@override String get tmdb => 'TMDB';
	@override String get rottenTomatoes => 'Rotten Tomatoes';
	@override String get simkl => 'Simkl';
	@override String get mal => 'MyAnimeList';
	@override String get anilist => 'AniList';
	@override String get trakt => 'Trakt';
	@override String get rottenTomatoesCritic => 'Rotten Tomatoes-anmeldere';
	@override String get rottenTomatoesAudience => 'Rotten Tomatoes-publikum';
	@override String get metacritic => 'Metacritic';
	@override String get letterboxd => 'Letterboxd';
}

// Path: common.mediaKind
class _Translations$common$mediaKind$da extends Translations$common$mediaKind$en {
	_Translations$common$mediaKind$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get movie => 'Film';
	@override String get show => 'Serie';
	@override String get season => 'Sæson';
	@override String get episode => 'Afsnit';
	@override String get artist => 'Kunstner';
	@override String get album => 'Album';
	@override String get track => 'Nummer';
	@override String get collection => 'Samling';
	@override String get playlist => 'Afspilningsliste';
	@override String get clip => 'Klip';
	@override String get photo => 'Foto';
	@override String get folder => 'Mappe';
}

// Path: supporter.errors
class _Translations$supporter$errors$da extends Translations$supporter$errors$en {
	_Translations$supporter$errors$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get storeUnavailable => 'Køb er ikke tilgængelige. Tjek, at du er logget ind i butikken, og at køb er tilladt på denne enhed.';
	@override String get productNotFound => 'Supporterkøbet er ikke tilgængeligt i din butik lige nu.';
	@override String get productQueryFailed => 'Prisen kunne ikke indlæses. Tjek din forbindelse, og prøv igen.';
	@override String get purchaseFailed => 'Købet gik ikke igennem. Prøv igen.';
	@override String get restoreFailed => 'Kunne ikke få fat i butikken for at gendanne dit køb. Prøv igen.';
	@override String get nothingToRestore => 'Der blev ikke fundet noget supportkøb for denne butikskonto.';
}

// Path: themeEditor.slots
class _Translations$themeEditor$slots$da extends Translations$themeEditor$slots$en {
	_Translations$themeEditor$slots$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get bg => 'Baggrund';
	@override String get surface => 'Overflade';
	@override String get outline => 'Disposition';
	@override String get text => 'Tekst';
	@override String get textMuted => 'Sekundær tekst';
	@override String get accent => 'Accent';
}

// Path: themeEditor.contrast
class _Translations$themeEditor$contrast$da extends Translations$themeEditor$contrast$en {
	_Translations$themeEditor$contrast$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get textOnBg => 'Tekst på baggrund';
	@override String get textOnSurface => 'Tekst på overfladen';
	@override String get textMutedOnBg => 'Sekundær tekst på baggrund';
	@override String get textMutedOnSurface => 'Sekundær tekst på overfladen';
	@override String get accentOnBg => 'Accent på baggrund';
	@override String get accentOnSurface => 'Accent på overfladen';
	@override String get labelOnAccent => 'Knapmærkat på accent';
}

// Path: hotkeys.actions
class _Translations$hotkeys$actions$da extends Translations$hotkeys$actions$en {
	_Translations$hotkeys$actions$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get playPause => 'Afspil/Pause';
	@override String get volumeUp => 'Lydstyrke op';
	@override String get volumeDown => 'Lydstyrke ned';
	@override String seekForward({required Object seconds}) => 'Spol frem (${seconds}s)';
	@override String seekBackward({required Object seconds}) => 'Spol tilbage (${seconds}s)';
	@override String get fullscreenToggle => 'Slå fuldskærm til/fra';
	@override String get muteToggle => 'Slå lyd til/fra';
	@override String get subtitleToggle => 'Slå undertekster til/fra';
	@override String get audioTrackNext => 'Næste lydspor';
	@override String get subtitleTrackNext => 'Næste undertekstspor';
	@override String get chapterNext => 'Næste kapitel';
	@override String get chapterPrevious => 'Forrige kapitel';
	@override String get episodeNext => 'Næste afsnit';
	@override String get episodePrevious => 'Forrige afsnit';
	@override String get speedIncrease => 'Øg hastighed';
	@override String get speedDecrease => 'Sænk hastighed';
	@override String get speedReset => 'Nulstil hastighed';
	@override String get zoomIn => 'Zoom ind';
	@override String get zoomOut => 'Zoom ud';
	@override String get zoomReset => 'Nulstil zoom';
	@override String get subSeekNext => 'Søg til næste undertekst';
	@override String get subSeekPrev => 'Søg til forrige undertekst';
	@override String get shaderToggle => 'Slå shadere til/fra';
	@override String get skipMarker => 'Spring intro/rulletekster over';
	@override String get screenshot => 'Tag skærmbillede';
}

// Path: videoControls.pipErrors
class _Translations$videoControls$pipErrors$da extends Translations$videoControls$pipErrors$en {
	_Translations$videoControls$pipErrors$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get androidVersion => 'Kræver Android 8.0 eller nyere';
	@override String get iosVersion => 'Kræver iOS 15.0 eller nyere';
	@override String get permissionDisabled => 'Billede-i-billede er deaktiveret. Slå det til i systemindstillinger.';
	@override String get notSupported => 'Enheden understøtter ikke billede-i-billede';
	@override String get voSwitchFailed => 'Kunne ikke skifte videooutput til billede-i-billede';
	@override String get failed => 'Billede-i-billede kunne ikke starte';
	@override String get prepareFailed => 'Billede-i-billede kunne ikke forberedes';
	@override String unknown({required Object error}) => 'Der opstod en fejl: ${error}';
}

// Path: accountPreferences.groups
class _Translations$accountPreferences$groups$da extends Translations$accountPreferences$groups$en {
	_Translations$accountPreferences$groups$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get audioAndSubtitles => 'Lyd og undertekster';
	@override String get libraryDisplay => 'Bibliotek';
	@override String get personalMedia => 'Personlige medier';
}

// Path: accountPreferences.subtitleModes
class _Translations$accountPreferences$subtitleModes$da extends Translations$accountPreferences$subtitleModes$en {
	_Translations$accountPreferences$subtitleModes$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get none => 'Manuelt valgt';
	@override String get noneDescription => 'Slår aldrig undertekster til af sig selv.';
	@override String get defaultMode => 'Følg sporets flag';
	@override String get defaultModeDescription => 'Brug standard- og tvungne flag, der er gemt på hvert undertekstspor.';
	@override String get always => 'Altid aktiveret';
	@override String get alwaysDescription => 'Slå et undertekstspor til på det foretrukne sprog, når der findes ét.';
	@override String get onlyForced => 'Kun tvungne undertekster';
	@override String get onlyForcedDescription => 'Indlæs kun spor, der er markeret som tvungne.';
	@override String get smart => 'Vis ved fremmedsproget lyd';
	@override String get smartDescription => 'Slå kun undertekster til, når lyden er på et andet sprog.';
}

// Path: accountPreferences.subtitleAccessibilityOptions
class _Translations$accountPreferences$subtitleAccessibilityOptions$da extends Translations$accountPreferences$subtitleAccessibilityOptions$en {
	_Translations$accountPreferences$subtitleAccessibilityOptions$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get preferNonSdh => 'Foretræk ikke-SDH-undertekster';
	@override String get preferSdh => 'Foretræk SDH-undertekster';
	@override String get onlySdh => 'Kun SDH-undertekster';
	@override String get onlyNonSdh => 'Kun ikke-SDH-undertekster';
}

// Path: accountPreferences.forcedSubtitleOptions
class _Translations$accountPreferences$forcedSubtitleOptions$da extends Translations$accountPreferences$forcedSubtitleOptions$en {
	_Translations$accountPreferences$forcedSubtitleOptions$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get preferNonForced => 'Foretræk ikke-tvungne undertekster';
	@override String get preferForced => 'Foretræk tvungne undertekster';
	@override String get onlyForced => 'Kun tvungne undertekster';
	@override String get onlyNonForced => 'Kun ikke-tvungne undertekster';
}

// Path: accountPreferences.watchedIndicatorOptions
class _Translations$accountPreferences$watchedIndicatorOptions$da extends Translations$accountPreferences$watchedIndicatorOptions$en {
	_Translations$accountPreferences$watchedIndicatorOptions$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get none => 'Aldrig';
	@override String get moviesAndShows => 'Film og TV-serier';
	@override String get movies => 'Kun film';
	@override String get shows => 'Kun TV-serier';
}

// Path: accountPreferences.mediaReviewsOptions
class _Translations$accountPreferences$mediaReviewsOptions$da extends Translations$accountPreferences$mediaReviewsOptions$en {
	_Translations$accountPreferences$mediaReviewsOptions$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get usersAndCritics => 'Brugere og anmeldere';
	@override String get usersOnly => 'Kun brugere';
	@override String get criticsOnly => 'Kun anmeldere';
	@override String get nobody => 'Skjult';
}

// Path: discover.person
class _Translations$discover$person$da extends Translations$discover$person$en {
	_Translations$discover$person$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get born => 'Født';
	@override String get died => 'Døde';
	@override String get birthplace => 'Fødested';
	@override String dateWithAge({required Object date, required Object age}) => '${date} (alder ${age})';
	@override String dateWithAgeAtDeath({required Object date, required Object age}) => '${date} (alderen ${age})';
}

// Path: libraries.tabs
class _Translations$libraries$tabs$da extends Translations$libraries$tabs$en {
	_Translations$libraries$tabs$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get recommended => 'Anbefalet';
	@override String get browse => 'Gennemse';
	@override String get collections => 'Samlinger';
	@override String get playlists => 'Playlister';
}

// Path: libraries.groupings
class _Translations$libraries$groupings$da extends Translations$libraries$groupings$en {
	_Translations$libraries$groupings$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gruppering';
	@override String get all => 'Alle';
	@override String get movies => 'Film';
	@override String get shows => 'TV-serier';
	@override String get seasons => 'Sæsoner';
	@override String get episodes => 'Episoder';
	@override String get artists => 'Kunstnere';
	@override String get albums => 'Album';
	@override String get tracks => 'Numre';
	@override String get folders => 'Mapper';
}

// Path: libraries.filterCategories
class _Translations$libraries$filterCategories$da extends Translations$libraries$filterCategories$en {
	_Translations$libraries$filterCategories$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get genre => 'Genre';
	@override String get year => 'År';
	@override String get contentRating => 'Aldersvurdering';
	@override String get tag => 'Tag';
	@override String get unwatched => 'Usete';
	@override String get unplayed => 'Ikke afspillet';
	@override String get favorites => 'Favoritter';
	@override String get filePath => 'Filsti';
}

// Path: libraries.sortLabels
class _Translations$libraries$sortLabels$da extends Translations$libraries$sortLabels$en {
	_Translations$libraries$sortLabels$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Titel';
	@override String get dateAdded => 'Tilføjet dato';
	@override String get releaseDate => 'Udgivelsesdato';
	@override String get rating => 'Vurdering';
	@override String get communityRating => 'Fællesskabsvurdering';
	@override String get criticRating => 'Kritikerbedømmelse';
	@override String get userRating => 'Brugerbedømmelse';
	@override String get datePlayed => 'Afspilningsdato';
	@override String get playCount => 'Antal afspilninger';
	@override String get productionYear => 'Produktionsår';
	@override String get runtime => 'Spilletid';
	@override String get officialRating => 'Officiel vurdering';
	@override String get premiereDate => 'Premieredato';
	@override String get startDate => 'Startdato';
	@override String get airTime => 'Sendetid';
	@override String get studio => 'Studie';
	@override String get random => 'Tilfældig';
	@override String get dateShared => 'Delt dato';
	@override String get latestEpisodeAirDate => 'Seneste episodes premieredato';
	@override String get lastEpisodeDateAdded => 'Dato for senest tilføjede episode';
	@override String get dateDownloaded => 'Downloadet dato';
	@override String get size => 'Størrelse';
	@override String get library => 'Bibliotek';
}

// Path: libraries.advancedFilters
class _Translations$libraries$advancedFilters$da extends Translations$libraries$advancedFilters$en {
	_Translations$libraries$advancedFilters$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get include => 'Inkluder';
	@override String get exclude => 'Ekskluder';
	@override String get any => 'Enhver';
	@override String get yes => 'Ja';
	@override String get no => 'Nej';
	@override String not({required Object value}) => 'Ikke ${value}';
	@override String valueCount({required Object count}) => '${count} valgt';
	@override String valueCountExcluded({required Object count}) => '${count} ekskluderet';
	@override String get searchValues => 'Søg værdier';
	@override String get noValues => 'Ingen værdier';
	@override String get matchContains => 'Indeholder';
	@override String get matchNotContains => 'Indeholder ikke';
	@override String get matchIs => 'er';
	@override String get matchIsNot => 'er ikke';
	@override String get matchBeginsWith => 'begynder med';
	@override String get matchEndsWith => 'Slutter med';
	@override String get textHint => 'Skriv for at matche';
	@override String get from => 'Fra';
	@override String get to => 'Til';
	@override String range({required Object from, required Object to}) => '${from} til ${to}';
	@override String atLeast({required Object value}) => '${value} og opefter';
	@override String atMost({required Object value}) => 'Op til ${value}';
	@override String dateLastDays({required Object count}) => 'Sidste ${count} dage';
	@override String get dateLastYear => 'Sidste år';
	@override String dateOlderThanDays({required Object count}) => 'Ældre end ${count} dage';
	@override String get dateOlderThanYear => 'Ældre end et år';
}

// Path: explore.rows
class _Translations$explore$rows$da extends Translations$explore$rows$en {
	_Translations$explore$rows$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get watchlist => 'Ønskeliste';
	@override String get recommendedMovies => 'Anbefalede film';
	@override String get recommendedShows => 'Anbefalede serier';
	@override String get trendingMovies => 'Populære film lige nu';
	@override String get trendingShows => 'Populære serier lige nu';
	@override String get popularMovies => 'Populære film';
	@override String get popularShows => 'Populære serier';
	@override String get trendingAnime => 'Populær anime lige nu';
	@override String get suggestedAnime => 'Anbefalet anime';
	@override String get airingAnime => 'Bedste aktuelle anime';
	@override String get popularAnime => 'Mest populære anime';
	@override String get trending => 'Populært lige nu';
	@override String get upcomingMovies => 'Kommende film';
	@override String get upcomingShows => 'Kommende serier';
}

// Path: explore.status
class _Translations$explore$status$da extends Translations$explore$status$en {
	_Translations$explore$status$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get airing => 'Sendes';
	@override String get ended => 'Afsluttet';
	@override String get canceled => 'Aflyst';
	@override String get upcoming => 'Kommende';
}

// Path: explore.badge
class _Translations$explore$badge$da extends Translations$explore$badge$en {
	_Translations$explore$badge$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String rankPopular({required Object n}) => '#${n} populær';
	@override String rankAiring({required Object n}) => '#${n} på luften';
	@override String rankRated({required Object n}) => '#${n} bedømt';
	@override String rankTrending({required Object n}) => '#${n} populær lige nu';
	@override String rankSeasonal({required Object n, required Object season}) => '#${n} i ${season}';
	@override String watchingNow({required Object n}) => '${n} ser med';
	@override String get available => 'Tilgængelig';
	@override String get partiallyAvailable => 'Delvist tilgængelig';
	@override String get availableIn4k => '4K tilgængelig';
	@override String get requested => 'Anmodet';
	@override String get pendingApproval => 'Afventer godkendelse';
	@override String get processing => 'Behandles';
	@override String get declined => 'Afvist';
	@override String get requestFailed => 'Anmodningen mislykkedes';
	@override String get requested4k => '4K anmodet';
	@override String seasonsAvailable({required Object available, required Object total}) => '${available}/${total} sæsoner';
	@override String nextEpisodeIn({required Object episode, required Object duration}) => 'Afsnit ${episode} om ${duration}';
	@override String nextAiringIn({required Object duration}) => 'Næste om ${duration}';
	@override String episodesShort({required Object n}) => '${n} afsnit';
	@override String minutesPerEpisode({required Object n}) => '${n} min/afsnit';
	@override String get adult => '18+';
}

// Path: explore.stats
class _Translations$explore$stats$da extends Translations$explore$stats$en {
	_Translations$explore$stats$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String listed({required Object n}) => '${n} opført';
	@override String viewersDay({required Object n}) => '${n} så det i dag';
	@override String viewersWeek({required Object n}) => '${n} så det denne uge';
	@override String viewersMonth({required Object n}) => '${n} så det denne måned';
	@override String viewersYear({required Object n}) => '${n} så det i år';
	@override String viewersAllTime({required Object n}) => '${n} seere';
	@override String planning({required Object n}) => '${n} planlægger at se det';
	@override String favorited({required Object n}) => '${n} favoritter';
	@override String dropRate({required Object percent}) => '${percent} droppede det';
	@override String comments({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n,
		one: '${n} kommentar',
		other: '${n} kommentarer',
	);
	@override String votes({required Object n}) => '${n} stemmer';
	@override String watching({required Object n}) => '${n} ser det';
	@override String completed({required Object n}) => '${n} færdigset';
	@override String onHold({required Object n}) => '${n} på pause';
	@override String dropped({required Object n}) => '${n} droppede';
}

// Path: explore.season
class _Translations$explore$season$da extends Translations$explore$season$en {
	_Translations$explore$season$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get winter => 'Vinter';
	@override String get spring => 'Forår';
	@override String get summer => 'Sommer';
	@override String get fall => 'Efterår';
	@override String withYear({required Object season, required Object year}) => '${season} ${year}';
}

// Path: explore.format
class _Translations$explore$format$da extends Translations$explore$format$en {
	_Translations$explore$format$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get tv => 'TV';
	@override String get tvShort => 'TV-kortfilm';
	@override String get movie => 'Film';
	@override String get special => 'Special';
	@override String get ova => 'OVA';
	@override String get ona => 'ONA';
	@override String get music => 'Musik';
	@override String get other => 'Andet';
}

// Path: explore.sourceMaterial
class _Translations$explore$sourceMaterial$da extends Translations$explore$sourceMaterial$en {
	_Translations$explore$sourceMaterial$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get original => 'Original';
	@override String get manga => 'Manga';
	@override String get lightNovel => 'Light novel';
	@override String get novel => 'Roman';
	@override String get visualNovel => 'Visual novel';
	@override String get game => 'Spil';
	@override String get webComic => 'Webtegneserie';
	@override String get musicRelease => 'Musik';
	@override String get otherMedia => 'Andet';
}

// Path: explore.creditRole
class _Translations$explore$creditRole$da extends Translations$explore$creditRole$en {
	_Translations$explore$creditRole$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get actor => 'Skuespiller';
	@override String get director => 'Instruktør';
	@override String get writer => 'Forfatter';
	@override String get producer => 'Producer';
	@override String get creator => 'Skaber';
	@override String get composer => 'Komponist';
}

// Path: explore.relation
class _Translations$explore$relation$da extends Translations$explore$relation$en {
	_Translations$explore$relation$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get prequel => 'Prequel';
	@override String get sequel => 'Sequel';
	@override String get sideStory => 'Bihistorie';
	@override String get spinOff => 'Spin-off';
	@override String get alternativeVersion => 'Alternativ version';
	@override String get summary => 'Resumé';
	@override String get parentStory => 'Hovedhistorie';
	@override String get adaptation => 'Adaption';
	@override String get other => 'Relateret';
}

// Path: explore.detail
class _Translations$explore$detail$da extends Translations$explore$detail$en {
	_Translations$explore$detail$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get originalTitle => 'Originaltitel';
	@override String get alsoKnownAs => 'Også kendt som';
	@override String get studios => 'Studier';
	@override String get country => 'Land';
	@override String get language => 'Sprog';
	@override String get released => 'Udgivet';
	@override String get physicalRelease => 'På disk';
	@override String get ended => 'Afsluttet';
	@override String addedOn({required Object date}) => 'Tilføjet ${date}';
	@override String get yourRating => 'Din bedømmelse';
	@override String get budget => 'Budget';
	@override String get revenue => 'Billetindtægter';
	@override String get contentAdvisory => 'Aldersvejledning';
	@override String get tags => 'Tags';
	@override String get revealSpoilerTags => 'Vis spoilertags';
	@override String get links => 'Links';
	@override String get watchOn => 'Se på';
	@override String get watchTrailer => 'Se trailer';
	@override String openOn({required Object site}) => 'Åbn på ${site}';
	@override String get crew => 'Crew';
	@override String get ratings => 'Bedømmelser';
	@override String get schedule => 'Program';
	@override String recommendedByUsers({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n,
		one: 'Anbefalet af ${n} bruger',
		other: 'Anbefalet af ${n} brugere',
	);
	@override String recommendedBy({required Object who}) => 'Anbefalet af ${who}';
	@override String favoritedBy({required Object who}) => 'Favorit hos ${who}';
	@override String unairedEpisodes({required Object n}) => '${n} ikke sendt endnu';
	@override String recommendedByPercent({required Object percent}) => 'Anbefalet af ${percent} af seerne';
	@override String get relatedTitles => 'Relaterede titler';
	@override String get background => 'Baggrund';
}

// Path: liveTv.recordSettings
class _Translations$liveTv$recordSettings$da extends Translations$liveTv$recordSettings$en {
	_Translations$liveTv$recordSettings$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get startEarly => 'Start tidligere (sekunder)';
	@override String get endLate => 'Slut senere (sekunder)';
	@override String get newOnly => 'Kun nye afsnit';
	@override String get anyChannel => 'Optag på alle kanaler';
	@override String get anyTime => 'Optag på alle tidspunkter';
	@override String get skipInLibrary => 'Spring afsnit over, der allerede er i biblioteket';
	@override String get keepUpTo => 'Afsnit der skal beholdes';
	@override String get keepUpToHint => '0 beholder alle afsnit';
}

// Path: music.discography
class _Translations$music$discography$da extends Translations$music$discography$en {
	_Translations$music$discography$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get singlesAndEps => 'Singler og EP\'er';
	@override String get live => 'Live';
	@override String get compilations => 'Opsamlinger';
}

// Path: watchTogether.notices
class _Translations$watchTogether$notices$da extends Translations$watchTogether$notices$en {
	_Translations$watchTogether$notices$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String pressedPlay({required Object name}) => '${name} trykkede på afspil';
	@override String get playbackStarted => 'Afspilning startede';
	@override String paused({required Object name}) => '${name} satte på pause';
	@override String get playbackPaused => 'Afspilning sat på pause';
	@override String jumpedTo({required Object name, required Object position}) => '${name} hoppede til ${position}';
	@override String roomJumpedTo({required Object position}) => 'Sprang til ${position}';
	@override String changedSpeed({required Object name, required Object speed}) => '${name} satte hastigheden til ${speed}';
	@override String speedChanged({required Object speed}) => 'Hastighed indstillet til ${speed}';
	@override String startedMedia({required Object name, required Object title}) => '${name} startet ${title}';
	@override String mediaStarted({required Object title}) => 'Spiller nu ${title}';
	@override String stoppedMedia({required Object name}) => '${name} stoppede videoen';
	@override String get mediaStopped => 'Videoen stoppede';
	@override String waitingFor({required Object name}) => 'Venter på ${name}...';
	@override String get waitingForSomeone => 'Venter på, at nogen skal indhente...';
	@override String get finished => 'Færdig';
	@override String hostChangedTo({required Object name}) => '${name} er nu vært';
	@override String get youAreNowHost => 'Du er nu værten';
	@override String joined({required Object name}) => '${name} deltog';
	@override String left({required Object name}) => '${name} forlod';
	@override String get controlRefused => 'Kun værten kan styre afspilningen';
	@override String get searchFailed => 'Nogle servere kunne ikke søges efter rummets video';
	@override String get playBlocked => 'Tryk på afspil for at starte';
	@override String get shareFailed => 'Kunne ikke dele denne video med rummet';
	@override String get notShared => 'Downloadede videoer deles ikke med rummet';
	@override String get openFailed => 'Rummets video kunne ikke åbnes';
}

// Path: watchTogether.ended
class _Translations$watchTogether$ended$da extends Translations$watchTogether$ended$en {
	_Translations$watchTogether$ended$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get ended => 'Værten afsluttede rummet';
	@override String get kicked => 'Du blev fjernet fra rummet';
	@override String get expired => 'Værelset udløb';
	@override String get replaced => 'Du sluttede dig til dette rum på en anden enhed';
	@override String get lost => 'Mistede forbindelsen til rummet';
}

// Path: watchTogether.errors
class _Translations$watchTogether$errors$da extends Translations$watchTogether$errors$en {
	_Translations$watchTogether$errors$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get invalidCode => 'Det er ikke en værelseskode. Koder har 6 bogstaver og cifre uden 0, 1, I, L eller O.';
	@override String get roomNotFound => 'Intet værelse har den kode. Det kan være slut.';
	@override String get roomFull => 'Det værelse er fyldt.';
	@override String get roomLocked => 'Værten låste rummet.';
	@override String get relayFull => 'Watch Together har travlt lige nu. Prøv igen senere.';
	@override String get unreachable => 'Kunne ikke nå Watch Together-relæet. Tjek din forbindelse.';
	@override String get rateLimited => 'For mange forsøg. Vent et øjeblik og prøv igen.';
	@override String get clientBlocked => 'Denne version af Luroka kan ikke bruge relæet. Opdater appen.';
	@override String get forbidden => 'Kun værten kan gøre det.';
	@override String get notInRoom => 'Du er ikke i et værelse.';
	@override String get alreadyInRoom => 'Du er allerede i et værelse.';
	@override String get resumeFailed => 'Kunne ikke slutte sig til rummet igen.';
	@override String get unsupported => 'Relæet understøtter ikke dette.';
	@override String get generic => 'Noget gik galt. Prøv igen.';
}

// Path: downloads.backgroundWarning
class _Translations$downloads$backgroundWarning$da extends Translations$downloads$backgroundWarning$en {
	_Translations$downloads$backgroundWarning$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get bannerBlocked => 'Downloads stopper, når du forlader appen';
	@override String get bannerDegraded => 'Downloads i baggrunden kan være begrænsede';
	@override String get bannerAction => 'Detaljer';
	@override String get sheetTitle => 'Downloads i baggrunden er blokeret';
	@override String get sheetTitleDegraded => 'Downloads i baggrunden kan være begrænsede';
	@override String get sheetIntro => 'Android forhindrer Luroka i at downloade stabilt i baggrunden.';
	@override String get sheetIntroDegraded => 'Din enhed begrænser, hvornår Luroka kan downloade i baggrunden.';
	@override String get reasonBackgroundRestricted => 'Lurokas baggrundsaktivitet er begrænset. Indstil batteriforbruget eller baggrundsaktiviteten til "Ubegrænset".';
	@override String get reasonStandbyRestricted => 'Android har sat Luroka i begrænset standbytilstand. Indstil batteriforbruget til "Ubegrænset".';
	@override String get reasonDownloadChannelBlocked => 'Notifikationer om downloads er slået fra, så status og betjeningsknapper muligvis ikke er tilgængelige.';
	@override String get reasonNotificationsDisabled => 'Notifikationer er slået fra. På Android 13 eller nyere er de nødvendige ved lange downloads i baggrunden.';
	@override String get reasonDataSaver => 'Datasparefunktionen er slået til, hvilket blokerer downloads i baggrunden via mobildata. Downloads bør stadig køre på Wi-Fi.';
	@override String get reasonOemUnknown => 'Downloads stoppede gentagne gange, mens Luroka var i baggrunden. Tjek Lurokas indstillinger for batteriforbrug eller baggrundsaktivitet.';
	@override String get openSettings => 'Åbn indstillinger';
	@override String get stillNotWorking => 'Enhedsspecifik hjælp';
	@override String get stillNotWorkingDescription => 'Se vejledningen til din enhed, eller send en logfil fra Indstillinger › Vis logfiler, hvis problemet fortsætter.';
	@override String get dialogTitle => 'Downloads bliver muligvis ikke færdige';
	@override String get dialogDownloadAnyway => 'Download alligevel';
	@override String get dialogFixFirst => 'Løs dette først';
	@override String get statusTile => 'Downloads i baggrunden';
	@override String get statusOk => 'Må køre i baggrunden';
	@override String get statusBlocked => 'Blokeret af systemindstillinger';
	@override String get statusDegraded => 'Begrænset af systemindstillinger';
	@override String get statusUnknown => 'Endnu ikke kontrolleret';
	@override String get settingsUnavailable => 'Kunne ikke åbne systemindstillingerne på denne enhed';
	@override String get linkUnavailable => 'Kunne ikke åbne dontkillmyapp.com på denne enhed';
}

// Path: downloads.groupings
class _Translations$downloads$groupings$da extends Translations$downloads$groupings$en {
	_Translations$downloads$groupings$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get library => 'Bibliotek';
	@override String get collections => 'Samlinger';
}

// Path: companionRemote.session
class _Translations$companionRemote$session$da extends Translations$companionRemote$session$en {
	_Translations$companionRemote$session$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get startingServer => 'Starter fjernbetjeningsserver...';
	@override String get hostAddress => 'Værtsadresse';
	@override String get connected => 'Forbundet';
	@override String get serverRunning => 'Fjernbetjeningsserver aktiv';
	@override String get serverStopped => 'Fjernbetjeningsserver stoppet';
	@override String get serverRunningDescription => 'Mobile enheder på dit netværk kan oprette forbindelse til denne app';
	@override String get serverStoppedDescription => 'Start serveren for at tillade mobilenheder at oprette forbindelse';
	@override String get usePhoneToControl => 'Brug din mobilenhed til at styre denne app';
	@override String get startServer => 'Start serveren';
	@override String get stopServer => 'Stop serveren';
	@override String get minimize => 'Minimér';
	@override String get manualAddressHint => 'Manuel forbindelsesadresse:';
}

// Path: companionRemote.pairing
class _Translations$companionRemote$pairing$da extends Translations$companionRemote$pairing$en {
	_Translations$companionRemote$pairing$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get discoveryDescription => 'Luroka-enheder med samme Plex-konto vises her';
	@override String get hostAddressHint => '192.168.1.100:48632';
	@override String get connecting => 'Opretter forbindelse...';
	@override String get searchingForDevices => 'Søger efter enheder...';
	@override String get noDevicesFound => 'Ingen enheder fundet på dit netværk';
	@override String get noDevicesHint => 'Åbn Luroka på din computer, og brug det samme Wi-Fi-netværk';
	@override String get availableDevices => 'Tilgængelige enheder';
	@override String get manualConnection => 'Manuel forbindelse';
	@override String get cryptoInitFailed => 'Kunne ikke starte sikker forbindelse. Log ind på Plex først.';
	@override String get validationHostRequired => 'Angiv en værtsadresse';
	@override String get validationHostFormat => 'Format skal være IP:port (f.eks. 192.168.1.100:48632)';
	@override String get connectionTimedOut => 'Forbindelsen fik timeout. Brug samme netværk på begge enheder.';
	@override String get sessionNotFound => 'Enhed ikke fundet. Sørg for, at Luroka kører på værten.';
	@override String get authFailed => 'Godkendelse mislykkedes. Begge enheder skal bruge samme Plex-konto.';
	@override String failedToConnect({required Object error}) => 'Kunne ikke oprette forbindelse: ${error}';
}

// Path: companionRemote.remote
class _Translations$companionRemote$remote$da extends Translations$companionRemote$remote$en {
	_Translations$companionRemote$remote$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get disconnectConfirm => 'Vil du afbryde forbindelsen til fjernsessionen?';
	@override String get reconnecting => 'Genopretter forbindelse...';
	@override String attemptOf({required Object current}) => 'Forsøg ${current} af 5';
	@override String get retryNow => 'Prøv igen nu';
	@override String get tabRemote => 'Fjernbetjening';
	@override String get tabPlay => 'Afspil';
	@override String get tabMore => 'Mere';
	@override String get menu => 'Menu';
	@override String get tabNavigation => 'Fanenavigation';
	@override String get tabDiscover => 'Opdag';
	@override String get tabLibraries => 'Biblioteker';
	@override String get tabSearch => 'Søg';
	@override String get tabDownloads => 'Downloads';
	@override String get tabSettings => 'Indstillinger';
	@override String get previous => 'Forrige';
	@override String get playPause => 'Afspil/Pause';
	@override String get next => 'Næste';
	@override String get seekBack => 'Spol tilbage';
	@override String get stop => 'Stop';
	@override String get seekForward => 'Spol frem';
	@override String get volume => 'Lydstyrke';
	@override String get volumeDown => 'Ned';
	@override String get volumeUp => 'Op';
	@override String get fullscreen => 'Fuldskærm';
	@override String get subtitles => 'Undertekster';
	@override String get audio => 'Lyd';
	@override String get searchHint => 'Søg på desktop...';
}

// Path: companionRemote.errors
class _Translations$companionRemote$errors$da extends Translations$companionRemote$errors$en {
	_Translations$companionRemote$errors$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get noNetworkInterface => 'Ingen netværksgrænseflade fundet';
	@override String get authenticationFailed => 'Godkendelse mislykkedes';
	@override String serverStartFailed({required Object error}) => 'Fjernbetjeningsserveren kunne ikke startes: ${error}';
	@override String commandFailed({required Object error}) => 'Kunne ikke sende fjernkommando: ${error}';
	@override String get joinTimedOut => 'Tidsgrænse for deltagelse i session overskredet';
	@override String get failedToConnectAnyAddress => 'Kunne ikke oprette forbindelse til nogen adresse';
	@override String connectionLostAfterAttempts({required Object attempts}) => 'Forbindelse mistet efter ${attempts} forsøg';
	@override String get connectionLost => 'Forbindelse mistet';
}

// Path: services.names
class _Translations$services$names$da extends Translations$services$names$en {
	_Translations$services$names$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get mal => 'MyAnimeList';
	@override String get anilist => 'AniList';
	@override String get simkl => 'Simkl';
	@override String get seerr => 'Seerr';
	@override String get mdblist => 'MDBList';
}

// Path: services.simklReconnect
class _Translations$services$simklReconnect$da extends Translations$services$simklReconnect$en {
	_Translations$services$simklReconnect$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gentilslut Simkl';
	@override String get subtitle => 'Simkl trækker den login-metode, denne forbindelse bruger, tilbage. Genforbindelse åbner simkl.com for at godkende Luroka — Luroka ser aldrig din adgangskode. Din afspilningshistorik forbliver på Simkl.';
}

// Path: services.deviceCode
class _Translations$services$deviceCode$da extends Translations$services$deviceCode$en {
	_Translations$services$deviceCode$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String title({required Object service}) => 'Aktiver Luroka på ${service}';
	@override String get instructions => 'Scan QR-koden, eller gå til adressen nedenfor, og indtast denne kode:';
	@override String openToActivate({required Object service}) => 'Åbn ${service} for at aktivere';
	@override String get copyCode => 'Kopiér aktiveringskode';
	@override String get waitingForAuthorization => 'Venter på godkendelse…';
	@override String get codeCopied => 'Kode kopieret';
}

// Path: services.oauthProxy
class _Translations$services$oauthProxy$da extends Translations$services$oauthProxy$en {
	_Translations$services$oauthProxy$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String title({required Object service}) => 'Log ind på ${service}';
	@override String get body => 'Scan denne QR-kode, eller åbn URL\'en på en enhed.';
	@override String openToSignIn({required Object service}) => 'Åbn ${service} for at logge ind';
}

// Path: services.pendingAuth
class _Translations$services$pendingAuth$da extends Translations$services$pendingAuth$en {
	_Translations$services$pendingAuth$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get copyUrl => 'Kopiér login-URL';
	@override String get urlCopied => 'URL kopieret';
}

// Path: services.libraryFilter
class _Translations$services$libraryFilter$da extends Translations$services$libraryFilter$en {
	_Translations$services$libraryFilter$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bibliotekfilter';
	@override String get subtitleAllSyncing => 'Synkroniserer alle biblioteker';
	@override String get subtitleNoneSyncing => 'Intet synkroniseres';
	@override String subtitleBlocked({required Object count}) => '${count} blokeret';
	@override String subtitleAllowed({required Object count}) => '${count} tilladt';
	@override String get mode => 'Filtertilstand';
	@override String get modeBlacklist => 'Blokliste';
	@override String get modeWhitelist => 'Tilladelsesliste';
	@override String get modeHintBlacklist => 'Synkroniser alle biblioteker undtagen dem, du markerer nedenfor.';
	@override String get modeHintWhitelist => 'Synkroniser kun de biblioteker, du markerer nedenfor.';
	@override String get libraries => 'Biblioteker';
	@override String get noLibraries => 'Ingen biblioteker tilgængelige';
}

/// The flat map containing all translations for locale <da>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsDa {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'mobileLibrary.pickerSubtitle' => 'Vælg en samling at udforske',
			'mobileLibrary.searchLibraries' => 'Søg i biblioteker',
			'mobileLibrary.noLibraries' => 'Ingen matchende biblioteker',
			'mobileLibrary.ascending' => 'Stigende',
			'mobileLibrary.descending' => 'Faldende',
			'mobileLibrary.sort' => 'Sorter',
			'mobileLibrary.unwatchedCount' => ({required Object count}) => '${count} uviste episoder',
			'mobileLibrary.latestEpisode' => 'Seneste afsnit',
			'profileStartup.autoLogin' => 'Åbn den sidst brugte profil',
			'profileStartup.autoLoginHint' => 'Åbn automatisk den sidste profil, når den ikke kræver en PIN.',
			'profileStartup.allowKidsExit' => 'Tillad at forlade børneprofilen uden forældre-PIN',
			'profileStartup.allowKidsExitHint' => 'Barnet kan skifte til en anden profil uden forældre-PIN. Profil-PIN gælder stadig.',
			'profileStartup.chooseKidsConnection' => 'Vælg en anden konto eller server',
			'profileStartup.chooseKidsConnectionHint' => 'Efter at have gemt, tilslut en separat konto eller vælg en forbindelse fra en anden profil.',
			'subtitleUpload.chooseFile' => 'Upload undertekstfil',
			'subtitleUpload.hint' => 'Vælg sproget ovenfor, og upload derefter en SRT, ASS, SSA eller VTT fil til denne server.',
			'subtitleUpload.success' => 'Undertekster uploadet til serveren. Det vises, når serveren opdaterer elementet.',
			'subtitleUpload.failed' => 'Kunne ikke uploade underteksten. Tjek fil- og servertilladelserne.',
			'personSpotlight.inYourLibraries' => 'i dine biblioteker',
			'personSpotlight.libraryTitles' => ({required Object n}) => 'I dine biblioteker · ${n} titler',
			'personSpotlight.readBiography' => 'Læs biografi',
			'personSpotlight.newestFirst' => 'Nyeste først',
			'personSpotlight.oldestFirst' => 'Ældste først',
			'personSpotlight.titleAscending' => 'Titel A–Z',
			'personSpotlight.sortTitles' => 'Sorter filmografi',
			'personSpotlight.unwatchedEpisodes' => ({required Object n}) => '${n} uviste episoder',
			'personSpotlight.copies' => ({required Object n}) => '${n} bibliotekskopier',
			'personSpotlight.versions' => ({required Object n}) => '${n} filversioner',
			'personSpotlight.retryTitles' => 'Kunne ikke indlæse alle titler. Prøv igen',
			'detailExtras.onlineVideos' => 'Trailere og ekstraudstyr',
			'detailExtras.reviews' => 'Anmeldelser',
			'detailExtras.readReview' => 'Læs hele anmeldelsen',
			'detailExtras.directedBy' => ({required Object name}) => 'Mere instrueret af ${name}',
			'detailExtras.previewUnavailable' => 'Denne forhåndsvisning kunne ikke afspilles. Du kan åbne den i dens originale app i stedet.',
			'detailExtras.openExternally' => 'Åbn den originale video',
			'mobileUi.readMore' => 'Læs mere',
			'mobileUi.readLess' => 'Vis mindre',
			'mobileUi.playbackTools' => 'Afspilningsmuligheder',
			'mobileUi.streamingQuality' => 'Streaming kvalitet',
			'mobileUi.fileVersions' => 'Filversioner',
			'mobileUi.qualityAndVersions' => 'Streamingkvalitet og filversioner',
			'mobileUi.hidePlaybackTools' => 'Skjul afspilningsværktøjer',
			'mobileUi.remaining' => ({required Object time}) => '${time} venstre',
			'mobileUi.endsAt' => ({required Object time}) => 'Slutter ved ${time}',
			'mobileUi.collection' => 'Din samling',
			'mobileUi.nowPlaying' => 'SPILLER NU',
			'mobileUi.popularLibrary' => 'Populær i dit bibliotek',
			'mobileUi.weeklyLibrary' => 'Trending i dit bibliotek i denne uge',
			'family.title' => 'Profiler og familie',
			'family.yourPeople' => 'Dit folk',
			'family.manageHint' => 'Administrer personer, børns sikkerhed og visningsaktivitet på denne enhed.',
			'family.people' => 'Mennesker',
			'family.peopleCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n, one: '${n} person', other: '${n} mennesker', ), 
			'family.kidsCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n, one: '${n} barn', other: '${n} børn', ), 
			'family.you' => 'Dig',
			'family.adult' => 'Voksen',
			'family.child' => 'Barn',
			'family.adultTeen' => 'Voksen eller teenager',
			'family.adultHint' => 'Deres egen profil, valgfri profil PIN og deres egne serverforbindelser.',
			'family.childHint' => 'Aldersgrænser, sikre biblioteker og et børnevenligt udseende. En forældre-PIN beskytter disse indstillinger.',
			'family.upToAge' => ({required Object age}) => 'Op til alder ${age}',
			'family.allAges' => 'Alle aldre',
			'family.switchProfile' => 'Skift profil',
			'family.switchHint' => 'Vælg, hvem der ser. At administrere en person skifter ikke profil.',
			'family.addPerson' => 'Tilføj person',
			'family.addChild' => 'Tilføj barn',
			'family.addHint' => 'Opret en voksen-, teenager- eller børneprofil på denne enhed.',
			'family.emptyPeople' => 'Giv plads til alle, der ser med dig.',
			'family.emptyKids' => 'Ingen børneprofiler endnu. Tilføj et barn for at vælge aldersgrænser og sikre biblioteker.',
			'family.safety' => 'Børn og sikkerhed',
			'family.safetyHint' => 'Forældre-PIN, børneprofiler og aldersbegrænsninger.',
			'family.protection' => 'Beskyttelse',
			'family.kidsProfiles' => 'Børneprofiler',
			'family.backupHistory' => 'Backup & historie',
			'family.parentPinOn' => 'Forældre-PIN aktiveret',
			'family.profilePin' => 'Profil-PIN',
			'family.confirmParentPin' => 'Bekræft forældre-PIN',
			'family.parentPinOff' => 'Forældre-PIN ikke angivet',
			'family.missingPin' => 'Tilføj en forældre-PIN for at beskytte disse indstillinger.',
			'family.hideScope' => 'Skjul børns aktivitet fra Fortsæt med at se i denne Luroka-profil. Dette ændrer ikke den delte servervisningshistorik.',
			'family.localScope' => 'Børneprofiler og begrænsninger gemmes på denne enhed. Profiler, der bruger den samme serverkonto, deler stadig den kontos visningsfremgang.',
			'family.clearHistoryConfirm' => 'Vil du tillade, at titler, som børn har set, vises i Fortsæt med at se igen? Børneprofiler, begrænsninger, visningstidsstatistikker og servervisningshistorik vil blive opbevaret.',
			'family.editRestrictions' => 'Rediger børnebegrænsninger',
			'family.activity' => 'Se aktivitet',
			'family.namedActivity' => ({required Object name}) => '${name}s visningsaktivitet',
			'family.thisProfile' => 'Denne profil',
			'family.activityScope' => 'Afspilningstid optaget af Luroka på denne enhed for den aktive profil. Disse er statistikker, ikke visningsgrænser eller komplet serverhistorik.',
			'family.activityUnavailable' => 'Visningsaktivitet er ikke tilgængelig for denne profil endnu.',
			'family.finished' => 'Færdig',
			'posterDetails.showThemeMusic' => 'Spil temamusik',
			'posterDetails.showThemeMusicDescription' => 'Afspil en film eller en series tema, mens dens detaljeringsside er åben, når den er tilgængelig på serveren.',
			'posterDetails.catalogEpisodeInfo' => 'Vis episodeantal og kørselstid på katalogkort',
			'posterDetails.catalogEpisodeInfoDescription' => 'Vis episodeantal og gennemsnitlig varighed på Opdag-plakater.',
			'posterDetails.title' => 'Plakat detaljer',
			'posterDetails.description' => 'Vis titlen, året og IMDb-bedømmelsen under plakater på tværs af Studio, Search, Opdag og Libraries. Manglende IMDb-bedømmelser forbliver skjult. Sluk for plakater, der kun er kunstværker.',
			'libraryPolish.posterDetails' => 'Plakat detaljer',
			'libraryPolish.showPosterDetails' => 'Vis plakatdetaljer · navn, årstal & IMDb',
			'libraryPolish.hidePosterDetails' => 'Skjul plakatdetaljer',
			'libraryPolish.overview' => 'Oversigt',
			'libraryPolish.refreshing' => 'Opdaterer bibliotek...',
			'libraryPolish.serverCollections' => 'Alle samlinger på denne server',
			'libraryPolish.serverPlaylists' => 'Alle videoafspilningslister på denne server',
			'libraryPolish.libraryCollections' => 'Samlinger i dette bibliotek',
			'libraryPolish.searchCollections' => 'Søg i samlinger',
			'libraryPolish.searchPlaylists' => 'Søg afspilningslister',
			'libraryPolish.searchHint' => 'Søg efter navn',
			'libraryPolish.titleAscending' => 'Titel A–Z',
			'libraryPolish.titleDescending' => 'Titel Z–A',
			'libraryPolish.clearFilters' => 'Ryd filtre',
			'libraryPolish.playlistEmptyTitle' => 'Dine filmaftener, i din rækkefølge',
			'libraryPolish.playlistEmptyHint' => 'Åbn en titels Mere-menu, og vælg Tilføj til afspilningsliste for at oprette din første afspilningsliste.',
			'libraryPolish.noMatches' => 'Ingen matchende navne',
			'libraryPolish.indexing' => 'Søger i hele kataloget...',
			'showSchedule.today' => 'I dag',
			'showSchedule.tomorrow' => 'I morgen',
			'showSchedule.latestUpcoming' => 'Seneste og kommende',
			'showSchedule.latestEpisode' => 'Seneste afsnit',
			'showSchedule.upcoming' => 'Kommende',
			'showSchedule.inLibrary' => 'På dit bibliotek',
			'showSchedule.notInLibrary' => 'Ikke på dit bibliotek',
			'showSchedule.notYetAired' => 'Endnu ikke sendt',
			'showSchedule.episode' => ({required Object number}) => 'Afsnit ${number}',
			'showSchedule.caughtUp' => 'I er alle fanget',
			'showSchedule.finished' => 'Du har afsluttet denne serie',
			'showSchedule.nextAirs' => ({required Object date}) => 'Næste afsnit sendes ${date}',
			'showSchedule.watchBeginning' => 'Se fra begyndelsen',
			'showSchedule.replay' => 'Genafspilning',
			'showSchedule.playNext' => 'Spil næste',
			'awardsCatalog.awards' => 'Priser',
			'awardsCatalog.customize' => 'Tilpas',
			'awardsCatalog.chooseShelves' => 'Tilpas Opdag',
			'awardsCatalog.shelvesDescription' => 'Vælg de rækker, du vil have på Opdag. Prisrækker viser vindere fra dine biblioteker. Dine valg gemmes for denne profil.',
			'awardsCatalog.restoreShelves' => 'Gendan standardindstillinger',
			'awardsCatalog.charts' => 'IMDb diagrammer',
			'awardsCatalog.generalShelves' => 'Populær og trending',
			'awardsCatalog.saveShelvesFailed' => 'Kunne ikke gemme dine Opdag-valg. Prøv venligst igen.',
			'awardsCatalog.comedyActress' => 'Hovedrolleindehaver · Komedie',
			'awardsCatalog.leadDramaActor' => 'Hovedskuespiller · Drama',
			'awardsCatalog.leadDramaActress' => 'Hovedrolleindehaver · Drama',
			'awardsCatalog.comedySupportingActor' => 'Birolle · Komedie',
			'awardsCatalog.comedySupportingActress' => 'Birolle · Komedie',
			'awardsCatalog.leadingPerformance' => 'Sølvbjørn · Bedste førende præstation',
			'awardsCatalog.globesComedySeries' => 'Bedste tv-serie · Musical eller komedie',
			'awardsCatalog.limitedSupportingActor' => 'Birolle · Begrænset serie eller film',
			'awardsCatalog.limitedSupportingActress' => 'Birolle · Begrænset serie eller film',
			'awardsCatalog.berlinDocumentary' => 'Berlinale dokumentarpris',
			'awardsCatalog.title' => 'Priser og festivaler',
			'awardsCatalog.chooseCategory' => 'Vælg en priskategori',
			'awardsCatalog.winners' => 'Vindere',
			'awardsCatalog.nominees' => 'Nominerede',
			'awardsCatalog.releaseDecade' => 'Udgivelses årti',
			'awardsCatalog.allYears' => 'Alle år',
			'awardsCatalog.loading' => 'Indlæser pristitler...',
			'awardsCatalog.matching' => 'Finder disse titler i dine biblioteker...',
			'awardsCatalog.unavailable' => 'Prisdata er ikke tilgængelige lige nu. Prøv igen.',
			'awardsCatalog.empty' => 'Ingen matchende titler i dine synlige biblioteker for denne kategori.',
			'awardsCatalog.coverage' => 'Medlemskab kommer fra Wikidata og kan være ufuldstændigt. Skuespiller- og instruktørkategorier viser de film eller shows, de blev præmieret for. Årstal refererer til titeludgivelsen, ikke ceremonien.',
			'awardsCatalog.picture' => 'Bedste billede',
			'awardsCatalog.film' => 'Bedste film',
			'awardsCatalog.international' => 'Bedste internationale indslag',
			'awardsCatalog.internationalFilm' => 'Bedste internationale film',
			'awardsCatalog.nonEnglishFilm' => 'Bedste film ikke på engelsk',
			'awardsCatalog.animated' => 'Bedste animerede funktion',
			'awardsCatalog.animatedFilm' => 'Bedste animerede film',
			'awardsCatalog.documentary' => 'Bedste dokumentarfilm',
			'awardsCatalog.director' => 'Bedste instruktør',
			'awardsCatalog.actor' => 'Bedste skuespiller',
			'awardsCatalog.actress' => 'Bedste skuespillerinde',
			'awardsCatalog.supportingActor' => 'Bedste mandlige birolle',
			'awardsCatalog.supportingActress' => 'Bedste kvindelige birolle',
			'awardsCatalog.originalScreenplay' => 'Bedste originale manuskript',
			'awardsCatalog.adaptedScreenplay' => 'Bedste tilpassede manuskript',
			'awardsCatalog.screenplay' => 'Bedste manuskript',
			'awardsCatalog.cinematography' => 'Bedste kinematografi',
			'awardsCatalog.editing' => 'Bedste redigering',
			'awardsCatalog.score' => 'Bedste originale partitur',
			'awardsCatalog.song' => 'Bedste originale sang',
			'awardsCatalog.sound' => 'Bedste lyd',
			'awardsCatalog.effects' => 'Bedste visuelle effekter',
			'awardsCatalog.productionDesign' => 'Bedste produktionsdesign',
			'awardsCatalog.costume' => 'Bedste kostumedesign',
			'awardsCatalog.makeup' => 'Bedste makeup og hårstyling',
			'awardsCatalog.dramaSeries' => 'Fremragende dramaserie',
			'awardsCatalog.comedySeries' => 'Fremragende komedieserie',
			'awardsCatalog.limitedSeries' => 'Fremragende begrænset serie',
			'awardsCatalog.animatedProgram' => 'Fremragende animeret program',
			'awardsCatalog.comedyActor' => 'Hovedskuespiller · Komedie',
			'awardsCatalog.limitedActor' => 'Hovedrolleindehaver · Begrænset serie eller film',
			'awardsCatalog.limitedActress' => 'Hovedrolleindehaver · Begrænset serie eller film',
			'awardsCatalog.limitedDirecting' => 'Instruktion · Begrænset serie eller film',
			'awardsCatalog.britishFilm' => 'Bedste britiske film',
			'awardsCatalog.goldenBear' => 'Guldbjørn',
			'awardsCatalog.grandJury' => 'Juryens store pris',
			'awardsCatalog.jury' => 'Juryens pris',
			'awardsCatalog.teddy' => 'Teddy Award',
			'awardsCatalog.goldenLion' => 'Gyldne Løve',
			'awardsCatalog.volpiActor' => 'Volpi Cup · Bedste skuespiller',
			'awardsCatalog.volpiActress' => 'Volpi Cup · Bedste skuespillerinde',
			'awardsCatalog.queerLion' => 'Queer løve',
			'awardsCatalog.dramaFilm' => 'Bedste film · Drama',
			'awardsCatalog.comedyFilm' => 'Bedste film · Musical eller komedie',
			'awardsCatalog.dramaActor' => 'Bedste skuespiller · Drama',
			'awardsCatalog.dramaActress' => 'Bedste skuespillerinde · Drama',
			'awardsCatalog.usDramatic' => 'Grand Jury-prisen for amerikansk drama',
			'awardsCatalog.documentaryJury' => 'Dokumentarernes Grand Jury Prize',
			'awardsCatalog.worldCinema' => 'Grand Jury-prisen for verdensfilm',
			'awardsCatalog.dramaticAudience' => 'Publikumsprisen for amerikansk drama',
			'awardsCatalog.usDirecting' => 'U.S. Directing Award',
			'awardsCatalog.peopleChoice' => 'People\'s Choice Award',
			'awardsCatalog.canadianFilm' => 'Bedste canadiske film',
			'awardsCatalog.firstFeature' => 'Bedste første funktion',
			'awardsCatalog.cassavetes' => 'John Cassavetes-prisen',
			'awardsCatalog.scienceFiction' => 'Bedste science fiction-film',
			'awardsCatalog.fantasy' => 'Bedste fantasyfilm',
			'awardsCatalog.horror' => 'Bedste gyserfilm',
			'awardsCatalog.action' => 'Bedste action- eller eventyrfilm',
			'awardsCatalog.thriller' => 'Bedste thrillerfilm',
			'searchDiscovery.suggestions' => 'Noget at se',
			'searchDiscovery.collections' => 'Priser og indsamlinger',
			'searchDiscovery.collectionsHint' => 'Prisvindere og kuraterede diagrammer fra dine biblioteker',
			'searchDiscovery.all' => 'Alt sammen opdagelse',
			'searchDiscovery.awards' => 'Priser og hitlister',
			'lurokaPlayerDesign.seeking' => 'Søg forhåndsvisning',
			'lurokaPlayerDesign.keepWatching' => 'Bliv ved med at se',
			'lurokaPlayerDesign.upNext' => 'Næste',
			'lurokaPlayerDesign.playingIn' => ({required Object seconds}) => 'Spiller i ${seconds} s',
			'lurokaWorkspace.everyday' => 'Hver dag',
			'lurokaWorkspace.homeDiscovery' => 'Hjem og opdagelse',
			'lurokaWorkspace.librariesAccounts' => 'Biblioteker og regnskaber',
			'lurokaWorkspace.profilesFamily' => 'Profiler og familie',
			'lurokaWorkspace.thisDevice' => 'Denne enhed',
			'lurokaWorkspace.thisProfile' => 'Denne profil',
			'lurokaWorkspace.searchSettings' => 'Søgeindstillinger',
			'lurokaWorkspace.savedAutomatically' => 'Ændringer gemmes automatisk. Everyday og Advanced ændrer kun, hvilke kontroller der vises.',
			'lurokaWorkspace.audioSubtitles' => 'Lyd og undertekster',
			'lurokaWorkspace.audioDescription' => 'Lydoutput, lydstyrke og undertekstudseende. Foretrukne sprog indstilles pr. serverkonto ved hjælp af kontopræferencer, når der er forbindelse.',
			'lurokaWorkspace.pictureSound' => 'Billede & Lyd',
			'lurokaWorkspace.pictureDescription' => 'Frame-rate matching, opløsning, HDR og Dolby Vision tuning for denne enhed.',
			'lurokaWorkspace.engineDescription' => 'Spillermotor, afkodning, brugerdefineret konfiguration og avancerede afspilningsregler.',
			'lurokaWorkspace.networkStreaming' => 'Netværk og streaming',
			'lurokaWorkspace.networkDescription' => 'Streamingkvalitet, codec-præferencer for direkte afspilning og båndbreddevalg.',
			'lurokaWorkspace.homeOptions' => 'Hjem muligheder',
			'lurokaWorkspace.refreshHome' => 'Opdater Hjem & Popular Now',
			'lurokaWorkspace.customizeHome' => 'Tilpas Hjem',
			'lurokaWorkspace.spotlight' => 'Hjem Spotlight',
			'lurokaWorkspace.rotateSpotlight' => 'Roter automatisk fremhævede titler',
			'lurokaWorkspace.rotateDescription' => 'Roter, mens Hjem er inaktivt. Interaktion sætter rotation på pause; browsing hylder, åbning af en side eller forlader appen sætter den helt på pause.',
			'lurokaWorkspace.rotationInterval' => 'Tid mellem fremhævede titler',
			'mobileFixes.connectionRecoveryHint' => 'Server utilgængelig? Administrer dine konti, eller tilslut en anden server.',
			'downloadsRedesign.shelfSize' => 'Varer pr. hylde',
			'downloadsRedesign.shelfSizeHint' => 'Vis 16, 32 eller 48 varer i Fortsæt med at se og anbefalingshylder. Servere returnerer muligvis færre tilgængelige titler.',
			'downloadsRedesign.subtitle' => 'Dine favoritter, klar til rejsen.',
			'downloadsRedesign.transfers' => 'Overførsler',
			'downloadsRedesign.ready' => 'Klar offline',
			'downloadsRedesign.active' => 'Downloader',
			'downloadsRedesign.waiting' => 'Venter',
			'downloadsRedesign.downloaded' => 'Downloadet',
			'downloadsRedesign.speed' => 'Download hastighed',
			'downloadsRedesign.notificationProgress' => '{progress} · {networkSpeed} · {timeRemaining} tilbage',
			'kidsShelf.movieShelf' => 'Film tid',
			'kidsShelf.showShelf' => 'Find dit næste show',
			'kidsShelf.aurora' => 'Aurora - dyb krikand og lime',
			'kidsShelf.marquee' => 'Marquee - fløjl og guld',
			'kidsShelf.electric' => 'Elektrisk - indigo og is',
			'kidsShelf.midnight' => 'Midnat - stål og rav',
			'kidsShelf.yourShelf' => 'Din filmhylde',
			'kidsShelf.all' => 'Alting',
			'kidsShelf.pickSomething' => 'Hvad vil du se?',
			'kidsHome.everything' => 'For dig',
			'kidsHome.keepWatching' => 'Bliv ved med at se',
			'kidsHome.emptyFilter' => 'Intet her endnu. Prøv for dig, eller bed din voksne om at tilføje noget, du elsker.',
			'tvSettingsV2.moreThemes' => 'Flere temaer og brugerdefinerede farver',
			'tvSettingsV2.moreThemesHint' => 'Åbn alle tilgængelige forudindstillinger og tilpassede temaindstillinger.',
			'tvSettingsV2.previewLive' => 'Live preview',
			'tvSettingsV2.previewIllustration' => 'Eksempel på forhåndsvisning',
			'tvSettingsV2.previewShelfCount' => ({required Object count}) => 'Op til ${count} varer pr. hylde',
			'tvSettingsV2.simple' => 'Simpelt',
			'tvSettingsV2.homeNavigation' => 'Hjem & Navigation',
			'tvSettingsV2.libraryCards' => 'Bibliotek og kort',
			'tvSettingsV2.accountsLibraries' => 'Konti og biblioteker',
			'tvSettingsV2.profilesFamily' => 'Profiler og familie',
			'tvSettingsV2.aboutSupport' => 'Om & Support',
			'tvSettingsV2.playback' => 'Afspilning',
			'tvSettingsV2.homeHint' => 'Vælg, hvad der skal vises på Hjem og i navigation.',
			'tvSettingsV2.libraryHint' => 'Juster plakatstørrelser, etiketter og overvågede indikatorer.',
			'tvSettingsV2.advancedPlayback' => 'Afspillermotor og streaming',
			'tvSettingsV2.advancedPlaybackHint' => 'Afspiller, videoudgang, streaming og avancerede afspilningsvalg.',
			'tvSettingsV2.advancedTools' => 'Diagnostik og backup',
			'tvSettingsV2.advancedToolsHint' => 'Logfiler, fejlfinding, sikkerhedskopiering og nulstilling af indstillinger.',
			'tvSettingsV2.themePreview' => 'Forhåndsvisning af tema',
			'tvSettingsV2.libraryPreview' => 'Forhåndsvisning af biblioteket',
			'tvSettingsV2.homePreview' => 'Forhåndsvisning af hjemmet',
			'tvSettingsV2.subtitlePreview' => 'Forhåndsvisning af undertekster',
			'tvSettingsV2.subtitleSample' => 'Dine undertekster vil se sådan ud.',
			'tvSettingsV2.previewPlaceholder' => 'Dit kunstværk vises her',
			'tvSettingsV2.posterSize' => 'Plakat størrelse',
			'tvSettingsV2.serverRecommendations' => 'Hjemanbefalinger fra din server',
			'tvSettingsV2.tvLayout' => 'Brug TV-layout',
			'tvSettingsV2.hardwareDecode' => 'Brug hardware video afkodning',
			'tvSettingsV2.serverNames' => 'Vis servernavne på startrækkerne',
			'tvSettingsV2.settingsSaved' => 'Ændringer gemmes automatisk.',
			'tvSettingsV2.morePlayback' => 'Avanceret afspilning',
			'tvSettingsV2.screenDisplay' => 'Billede & Lyd',
			'tvSettingsV2.engine' => 'Afspiller motor',
			'tvSettingsV2.network' => 'Streaming og netværk',
			'tvSettingsV2.performance' => 'Ydeevne',
			'tvSettingsV2.simpleAudio' => 'Sprog og undertekst udseende',
			'settingsRedesign.themeEffects' => 'Tema og effekter',
			'settingsRedesign.libraryLayout' => 'Bibliotekets layout',
			'settingsRedesign.appearanceHint' => 'Tilpas udseendet, layoutet og adfærden for Luroka.',
			'settingsRedesign.livePreview' => 'Live Preview',
			'settingsRedesign.previewHint' => 'Se, hvordan dit bibliotek vil se ud med de aktuelle indstillinger.',
			'settingsRedesign.showLiveTv' => 'Vis direkte tv',
			'settingsRedesign.showLiveTvHint' => 'Vis live-tv i navigation, når en tilsluttet server understøtter det. Dette ændrer ikke din server.',
			'settingsRedesign.aboutTagline' => 'Dine medier. Din plads.',
			'settingsRedesign.aboutDescription' => 'Luroka samler dine Plex, Jellyfin og Emby biblioteker i en filmafspiller til telefoner, tv\'er og desktops.',
			'settingsRedesign.aboutFeatures' => 'Gennemse dine biblioteker, genoptag film og serier, tilpas profiler, nyd downloads og se sammen. Live-tv er tilgængeligt med en kompatibel server.',
			'settingsRedesign.services' => 'Forbind din verden',
			'settingsRedesign.updateSource' => 'Opdater kilde',
			'settingsRedesign.updateSourceHint' => 'HTTPS-adressen på dit Luroka-udgivelsesfeed. Din distributør kan forudkonfigurere dette i appen.',
			'settingsRedesign.updateNotConfigured' => 'Automatiske opdateringer er ikke konfigureret til denne build.',
			'settingsRedesign.downloadInstall' => 'Download og installer',
			'settingsRedesign.installUpdate' => 'Installer opdatering',
			'settingsRedesign.downloading' => 'Downloader opdatering...',
			'settingsRedesign.downloadFailed' => 'Kunne ikke downloade eller bekræfte opdateringen. Prøv venligst igen.',
			'settingsRedesign.installPermission' => 'Tillad Luroka at installere opdateringer i Android-indstillinger, vend derefter tilbage og vælg Installer opdatering.',
			'settingsRedesign.updateReady' => 'Download bekræftet. Klar til at installere.',
			'settingsRedesign.releaseNotes' => 'Udgivelsesbemærkninger',
			'settingsRedesign.invalidFeed' => 'Indtast en gyldig HTTPS-opdateringsfeedadresse.',
			'onboarding.connectStep' => '01 · Tilslut',
			'onboarding.connectTitle' => 'Velkommen til Luroka',
			'onboarding.connectHint' => 'Log ind for at bringe dine biblioteker her.',
			'onboarding.serverAddressHint' => 'Indtast din serveradresse, eller vælg en server fundet på dit netværk.',
			'onboarding.serverSignInHint' => 'Brug dit serverbrugernavn og din adgangskode til at forbinde dine biblioteker.',
			'onboarding.serverAddressTitle' => 'Serveradresse',
			'onboarding.serverAccountTitle' => 'Din serverkonto',
			'onboarding.plexHomeTitle' => 'Vælg din Plex hjemmebruger',
			'onboarding.plexHomeHint' => 'Vælg den Plex-bruger, hvis biblioteker du vil bruge. Du opsætter derefter din Luroka-profil.',
			'onboarding.chooseService' => 'Vælg din tjeneste',
			'onboarding.profileStep' => '02 · Din profil',
			'onboarding.profileTitle' => 'Føl dig hjemme.',
			'onboarding.profileHint' => 'Vælg et navn og en avatar til din Luroka profil. Din tilsluttede konto forbliver den samme.',
			'onboarding.readyStep' => '03 · Klar til at se',
			'onboarding.readyTitle' => 'Lidt mere dig.',
			'onboarding.readyHint' => 'Saml dine tjenester eller gør plads til en anden. Du kan altid gøre dette senere.',
			'onboarding.addService' => 'Tilslut en anden tjeneste',
			'onboarding.editProfile' => 'Rediger dit navn og din avatar',
			'onboarding.connected' => 'Tilsluttet og klar',
			'onboarding.backToProfile' => 'Tilbage til din profil',
			'onboarding.showOtherPlexHome' => 'Vis andre medlemmer af Plex Home',
			'onboarding.showOtherPlexHomeHint' => 'Fra som standard. Dine Luroka-profiler og Plex-hjemmemedlemmer, du har brugt, forbliver synlige. Tænd for at vælge en anden.',
			'household.title' => 'Din Luroka husstand',
			'household.welcome' => 'Gør Luroka til din',
			'household.welcomeHint' => 'Din første konto er forbundet. Tilpas din profil, eller tilføj en anden, før du begynder at se.',
			'household.profiles' => 'Profiler & husholdning',
			'household.manageHint' => 'Tilføj personer, skift billeder, og administrer hver profils forbindelser.',
			'household.addProfile' => 'Tilføj Luroka profil',
			'household.addHint' => 'Hver person kan tilslutte deres eget Plex, Emby eller Jellyfin login. Kun forbindelser tilføjet til deres profil vises for dem.',
			'household.sharedHint' => 'Genbrug af en anden profils forbindelse deler serverbrugerens overvågede status og afspilningsfremskridt. Vælg et separat login for uafhængig visningshistorik.',
			'household.personalise' => 'Tilpas profil',
			'household.changePicture' => 'Skift profilbillede',
			'household.pictureHint' => 'Vælg en Luroka-avatar eller et billede. Dette ændrer kun billedet på denne enhed; din serverkonto er uberørt.',
			'household.serverPicture' => 'Brug serverbillede / initialer',
			'household.choosePhoto' => 'Vælg et foto',
			'household.photoHint' => 'JPEG, PNG eller et andet understøttet billede, op til 10 MB. Billeder ændres størrelse og gemmes på denne enhed.',
			'household.pictureSaved' => 'Profilbillede opdateret',
			'household.pictureFailed' => 'Profilbilledet kunne ikke opdateres. Prøv et understøttet billede på op til 10 MB.',
			'household.saveFailed' => 'Profilindstillingerne kunne ikke gemmes. Prøv venligst igen.',
			'household.startWatching' => 'Begynd at se',
			'household.manageProfiles' => 'Administrer eller skift profiler',
			'household.addLater' => 'Du kan tilføje flere personer senere i Indstillinger → Profiler og husstand.',
			'household.connectionRequired' => 'Tilføj en serverforbindelse for at afslutte opsætningen af ​​denne profil.',
			'household.mountain' => 'Bjerg',
			'household.orbit' => 'Explorer',
			'household.waves' => 'Ocean',
			'household.blossom' => 'Blossom',
			'household.lightning' => 'Lyn',
			'household.moon' => 'Måne',
			'household.avatarGallery' => 'Vælg en avatar',
			'household.avatarIllustrationHint' => 'Originale illustrerede portrætter, børn og dyrevenner',
			'household.avatarPortraitSunrise' => 'Solopgang portræt',
			'household.avatarPortraitMeadow' => 'Eng-portræt',
			'household.avatarPortraitBerry' => 'Bær portræt',
			'household.avatarPortraitGolden' => 'Gyldent portræt',
			'household.avatarPortraitIndigo' => 'Indigo portræt',
			'household.avatarPortraitOcean' => 'Ocean portræt',
			'household.avatarKidArtist' => 'Lille kunstner',
			'household.avatarKidSkater' => 'Lille skater',
			'household.avatarCat' => 'Nysgerrig kat',
			'household.avatarDog' => 'Glad hund',
			'household.avatarPanda' => 'Panda',
			'household.avatarOwl' => 'Ugle',
			'household.avatarFox' => 'Ræv',
			'household.avatarDinosaur' => 'Dinosaur',
			'household.avatarRobot' => 'Robot',
			'detailComposition.startOver' => 'Start forfra',
			'detailComposition.seriesCast' => 'Serie cast',
			'detailComposition.streamingQuality' => 'Streamingkvalitet...',
			'detailComposition.trailer' => 'Trailer',
			'detailComposition.manageMedia' => 'Administrer medier...',
			'detailComposition.playbackOptions' => 'Afspilningsmuligheder...',
			'detailComposition.moreActions' => 'Flere handlinger',
			'detailComposition.watched' => 'Så',
			'detailComposition.unwatched' => 'Uovervåget',
			'detailComposition.endsAt' => ({required Object time}) => 'Slutter ved ${time}',
			'detailComposition.automatic' => 'Automatisk',
			'detailComposition.usePreferences' => 'Brug dine afspilningspræferencer',
			'detailComposition.mediaInformation' => 'Medieinformation',
			'detailComposition.fullFileInformation' => 'Fuld filinformation',
			'detailComposition.castAndCrew' => 'Medvirkende',
			'kids.backupProfile' => 'Sikkerhedskopier børneprofil',
			'kids.backupExplain' => 'Sikkerhedskopier denne profils gemte navn, karakter, begrænsninger, udseende og lokale visningsekskluderinger. Forældre-PIN-koder, serverlogin, downloads og serverafspilning er ikke inkluderet.',
			'kids.saveBackupFile' => 'Gem backup-fil',
			'kids.copyBackup' => 'Kopiér backuptekst',
			'kids.backupSaved' => ({required Object path}) => 'Sikkerhedskopiering af børneprofiler gemt i ${path}',
			'kids.backupCopied' => 'Sikkerhedskopiering af børneprofilen er kopieret',
			'kids.backupFailed' => 'Kunne ikke gemme sikkerhedskopieringen af børneprofilen. Prøv venligst igen.',
			'kids.restoreProfile' => 'Gendan børneprofil',
			'kids.chooseBackupFile' => 'Vælg backup-fil',
			'kids.pasteBackup' => 'Indsæt sikkerhedskopitekst',
			'kids.backupText' => 'Børneprofil backup JSON',
			'kids.pasteFromClipboard' => 'Indsæt fra udklipsholder',
			'kids.restoreReview' => 'Gennemgå disse gendannede indstillinger, og derefter Gem for at oprette en ny børneprofil ved hjælp af dine nuværende serverforbindelser. Eksisterende profiler overskrives ikke. Biblioteksvalg og visningsekskluderinger matcher kun de samme server-/biblioteks-id\'er.',
			'kids.restoreInvalid' => 'Dette er ikke en gyldig understøttet sikkerhedskopi af børneprofiler. Vælg en Luroka børneprofil JSON backup.',
			'kids.deleteProfile' => 'Slet børneprofil',
			'kids.deleteExplain' => ({required Object name}) => 'Vil du slette ${name} fra Luroka? Deres lokale indstillinger, downloads og visningsekskluderinger vil blive fjernet. Din serverkonto og serversidehistorik forbliver. Opret først en sikkerhedskopi, hvis du vil gendanne profilen senere.',
			'kids.profileDeleted' => 'Børneprofilen er slettet',
			'kids.allowedLibraries' => 'Tilladte biblioteker',
			'kids.unavailableLibrary' => 'Tidligere valgt bibliotek (i øjeblikket ikke tilgængelig)',
			'kids.allLibraries' => 'Tillad alle tilsluttede film- og tv-biblioteker',
			'kids.librariesExplain' => 'Slå dette fra for at vælge specifikke biblioteker. Alder og animationsregler gælder stadig i de valgte biblioteker. Nye biblioteker tilføjes ikke automatisk, når du bruger en markering.',
			'kids.librariesUnavailable' => 'Ingen film- eller tv-biblioteker er indlæst. Opret forbindelse til serveren og åbn Biblioteker, og vend derefter tilbage hertil for at vælge.',
			'kids.noLibrariesSelected' => 'Ingen biblioteker valgt: dette barn vil ikke se nogen titler.',
			'kids.animationOnly' => 'Kun animation',
			'kids.animationExplain' => 'Vis kun titler tagget med animationsgenren på din server. Dette erstatter ikke aldersgrænsen: animation kan også være beregnet til voksne. Manglende genre-metadata er skjult.',
			'kids.allowUnrated' => 'Tillad titler uden aldersklassificering',
			'kids.unratedExplain' => 'Fra som standard. Når det er aktiveret, kan manglende eller uklassificerede klassifikationer vises, hvis biblioteket og animationsreglerne tillader det. Deres egnethed kan ikke kontrolleres efter alder. Kendte vurderinger over aldersgrænsen og ikke-genkendte klassifikationer forbliver skjult.',
			'kids.whoIsWatching' => 'Hvem ser på?',
			'kids.chooseAdventure' => 'En lille verden af ​​store eventyr.',
			'kids.chooseProfile' => 'Vælg din plads. Gør det til en filmaften.',
			'kids.welcome' => ({required Object name}) => 'Hej ${name}!',
			'kids.welcomeOlder' => ({required Object name}) => 'Din næste fantastiske historie, ${name}.',
			'kids.homeSubtitle' => 'Store eventyr. Små opdagelser. Alt sammen for dig.',
			'kids.homeSubtitleOlder' => 'Find en ny favorit. Fortsæt hvor du slap.',
			'kids.featured' => 'Dagens store eventyr',
			'kids.featuredOlder' => 'I rampelyset',
			'kids.moreInfo' => 'Mere info',
			'kids.movies' => 'Film',
			'kids.shows' => 'Viser',
			'kids.profiles' => 'Profiler',
			'kids.adultBadge' => 'Voksne',
			'kids.avatar' => 'Vælg din karakter',
			'kids.avatarExplorer' => 'Rumforsker',
			'kids.avatarFox' => 'Ræv',
			'kids.avatarDinosaur' => 'Dinosaur',
			'kids.avatarRobot' => 'Robot',
			'kids.avatarChildArtist' => 'Lille kunstner',
			'kids.avatarChildSkater' => 'Lille skater',
			'kids.avatarSunrisePerson' => 'Solopgang portræt',
			'kids.avatarOceanPerson' => 'Ocean portræt',
			'kids.avatarCat' => 'Nysgerrig kat',
			'kids.avatarDog' => 'Glad hund',
			'kids.avatarPanda' => 'Panda',
			'kids.avatarOwl' => 'Ugle',
			'kids.avatarBear' => 'Bjørn',
			'kids.continueAdventure' => 'Fortsæt eventyret',
			'kids.freshStories' => 'Nye historier at opdage',
			'kids.yourMovies' => 'Favoritter i filmtiden',
			'kids.yourShows' => 'Endnu en episode',
			'kids.emptyHint' => 'Nye eventyr vil dukke op her, når din server har titler med en tilladt aldersklassifikation.',
			'kids.title' => 'Luroka for børn',
			'kids.addProfile' => 'Tilføj børneprofil',
			'kids.parentalControls' => 'Forældrekontrol',
			'kids.parentPin' => 'Forældre-PIN',
			'kids.setParentPin' => 'Angiv forældre-PIN',
			'kids.changeParentPin' => 'Skift forældre-PIN',
			'kids.pinExplain' => 'Denne PIN beskytter voksenprofiler og forældrekontrol på denne enhed.',
			'kids.name' => 'Barnets navn',
			'kids.ageGroup' => 'Tilladt aldersklassifikation',
			'kids.allAges' => 'Alle aldre · G, TV-Y, TV-G, U',
			'kids.age7' => 'Op til 7 · også PG, TV-PG, TV-Y7',
			'kids.age12' => 'Op til 12 · også 12 og 12A',
			'kids.age16' => 'Op til 16 · også PG-13, TV-14, 15 og 16',
			'kids.ratingExplain' => 'Titler over aldersgrænsen og ikke-genkendte klassifikationer er skjult. Titler uden en bedømmelse er skjult, medmindre du tillader dem nedenfor. Uklassificerede episoder kan arve en godkendt serieklassificering. Bedømmelser afhænger af din servers metadata.',
			'kids.theme' => 'Børns udseende',
			'kids.themeExplain' => 'Brug et farverigt tema, når denne profil er aktiv.',
			'kids.sharedLogin' => 'Bruger dit eksisterende serverlogin. Plex/Emby fremskridt og overvåget status forbliver delt. Begrænsninger og børneprofiler gemmes på denne enhed.',
			'kids.hideWatched' => 'Skjul børns visning fra min Fortsæt med at se',
			'kids.hideExplain' => 'Skjul film og hele serier afspillet af børneprofiler på denne enhed. Dette fjerner dem ikke fra dit bibliotek eller ændrer serverhistorik.',
			'kids.clearHistory' => 'Nulstil børns visningsekskluderinger',
			'kids.historyReset' => 'Børns visningsekskluderinger blev nulstillet',
			'kids.blocked' => 'Denne titel er ikke tilgængelig i denne børneprofil.',
			'kids.switchProfile' => 'Skift profil',
			'kids.manageFromAdult' => 'Skift til en voksenprofil for at administrere indstillinger.',
			'kids.noConnections' => 'Tilslut en server til din voksenprofil, før du tilføjer en børneprofil.',
			'kids.created' => 'Børneprofil oprettet',
			'kids.updated' => 'Børneprofilen er opdateret',
			'kids.saveFailed' => 'Kunne ikke gemme forældrekontrol. Prøv venligst igen.',
			'kids.kidsBadge' => 'Børn',
			'lurokaDiscovery.title' => 'Opdag',
			'lurokaDiscovery.chooseLibraryHint' => 'Vælg et bibliotek at udforske',
			'lurokaDiscovery.chooseCopyHint' => 'Tilgængelig på flere biblioteker. Vælg dit foretrukne eksemplar.',
			'lurokaDiscovery.weeklyMovies' => 'Populære film i denne uge · TMDb',
			'lurokaDiscovery.weeklyShows' => 'Trending shows i denne uge · TMDb',
			'lurokaDiscovery.weeklyLibrary' => 'Trending i denne uge · I dit bibliotek',
			'lurokaDiscovery.popularLibrary' => 'Populært nu · På dit bibliotek · Cinemeta',
			'lurokaDiscovery.publicFeedError' => 'Cinemeta-opdagelse er ikke tilgængelig. Prøv venligst igen.',
			'lurokaDiscovery.oscars' => 'Oscars · Vindere af bedste film',
			'lurokaDiscovery.imdb100' => 'IMDb Top 100 film · Sep 2026 snapshot',
			'lurokaDiscovery.imdbTv100' => 'IMDb\'s Top 100 tv-serier · liste fra sep. 2026',
			'lurokaDiscovery.emmyComedy' => 'Emmys · Vindere af komedieserier · 1971–2026',
			'lurokaDiscovery.emmys' => 'Emmys · Vindere af Drama Series · 1966–2026',
			_ => null,
		} ?? switch (path) {
			'lurokaDiscovery.bafta' => 'BAFTA · Vindere af bedste film',
			'lurokaDiscovery.cannes' => 'Cannes · Guldpalmen vindere',
			'lurokaDiscovery.awardsNote' => 'Prissamlinger omfatter Oscar-historie for bedste film, vindere af Emmy-drama/komedie og udvidede BAFTA/Cannes-udvalg. Gentagne vindende titler vises én gang. Medlemskab bruger historier i priskategorier og Wikidata-fakta. IMDb Top 100 film/show-lister bevarer september 2026-kortøjebliksbilleder fra mmdju/imdb-top250-api. Kun matches i dine synlige onlinebiblioteker vises; samlingens størrelse afhænger af bibliotekets tilgængelighed.',
			'lurokaDiscovery.attribution' => 'Offentlige popularitetslister, metadata og IMDb-vurderinger leveres af Cinemeta; dens populære lister er ikke ugentlige visningsdiagrammer. Dette produkt bruger TMDB API, men er ikke godkendt eller certificeret af TMDB. Valgfri TMDb ugentlige tendenser afspejler TMDb interesse, ikke seertal. Partitur beholder deres kildeetiketter.',
			'lurokaDiscovery.tmdbSettings' => 'Opdagelseskilder',
			'lurokaDiscovery.setupDescription' => 'Cinemeta-opdagelsen virker med det samme uden en konto: populære film og serier, IMDb-bedømmelser og prisvindere. Tilslut eventuelt TMDb for ugentlige trends ved hjælp af en API-nøgle eller API læseadgangstoken fra themoviedb.org/settings/api. Dine legitimationsoplysninger er gemt på denne enhed.',
			'lurokaDiscovery.apiKey' => 'TMDb API nøgle / læseadgangstoken',
			'lurokaDiscovery.connect' => 'Tilslut TMDb',
			'lurokaDiscovery.connecting' => 'Opretter forbindelse...',
			'lurokaDiscovery.connected' => 'TMDb tilsluttet · Ugentlige trends og priser aktiveret',
			'lurokaDiscovery.builtInKeyNote' => 'Kører på Lurokas indbyggede delte TMDb nøgle. Tilføj din egen gratis nøgle nedenfor for dedikerede satsgrænser og fuld kontrol.',
			'lurokaDiscovery.disconnect' => 'Afbryd TMDb',
			'lurokaDiscovery.invalidKey' => 'Kunne ikke validere TMDb. Tjek dine legitimationsoplysninger og internetforbindelse.',
			'lurokaDiscovery.feedError' => 'TMDb-opdagelse er ikke tilgængelig. Prøv venligst igen.',
			'lurokaDiscovery.allTitles' => 'Alle titler',
			'lurokaDiscovery.available' => 'På dit bibliotek',
			'lurokaDiscovery.checking' => 'Tjek dine biblioteker...',
			'lurokaDiscovery.availabilityUnknown' => 'Nogle biblioteker kunne ikke kontrolleres. Prøv at opdatere.',
			'lurokaDiscovery.noAvailable' => 'Ingen matchende titler fundet i de kontrollerede biblioteker.',
			'lurokaDiscovery.sourceInfo' => 'Ugentlige trends & udvalgte prisvindere · TMDb',
			'lurokaDiscovery.configure' => 'Opdagelsesindstillinger',
			'app.title' => 'Luroka',
			'appIcon.title' => 'App-ikon',
			'appIcon.defaultIcon' => 'Standard',
			'appIcon.current' => 'Nuværende ikon',
			'appIcon.locked' => 'Supporter frynsegoder',
			'appIcon.lockedHint' => 'Alternative ikoner er et supporterfrynsegode.',
			'appIcon.changeFailed' => 'Appikonet kunne ikke ændres',
			'appIcon.launcherHint' => 'Det nye ikon vises på din startskærm, når du forlader Luroka.',
			'appIcon.tvLauncherHint' => 'Det nye banner vises, når du forlader Luroka. Android TV kan blive ved med at vise den gamle, indtil tv\'et genstarter.',
			'appIcon.names.midnight' => 'Midnat',
			'appIcon.names.ember' => 'Gløder',
			'appIcon.names.paper' => 'Papir',
			'appIcon.names.oled' => 'OLED',
			'appIcon.names.line' => 'Linje',
			'appIcon.names.ocean' => 'Ocean',
			'appIcon.names.ultraviolet' => 'Ultraviolet',
			'appIcon.names.matcha' => 'Matcha',
			'appIcon.names.sunset' => 'Solnedgang',
			'appIcon.names.gold' => 'Guld',
			'appIcon.names.titanium' => 'Titanium',
			'appIcon.names.glass' => 'Glas',
			'appIcon.names.crt' => 'CRT',
			'appIcon.names.vhs' => 'VHS',
			'appIcon.names.synthwave' => 'Synthwave',
			'appIcon.names.pixel' => 'Pixel',
			'appIcon.names.neon' => 'Neon',
			'appIcon.names.sticker' => 'Klistermærke',
			'appIcon.names.ticket' => 'Billet',
			'appIcon.names.pop' => 'Pop',
			'appIcon.names.strata' => 'Strata',
			'appIcon.names.facet' => 'Facet',
			'appIcon.names.tilde' => 'Tilde',
			'auth.signInWithPlex' => 'Log ind med Plex',
			'auth.showQRCode' => 'Vis QR-kode',
			'auth.authenticate' => 'Godkend',
			'auth.authenticationTimeout' => 'Godkendelsen tog for lang tid. Prøv igen.',
			'auth.scanQRToSignIn' => 'Scan denne QR-kode for at logge ind',
			'auth.waitingForAuth' => 'Venter på godkendelse...\nLog ind fra din browser.',
			'auth.useBrowser' => 'Brug browseren',
			'auth.or' => 'eller',
			'auth.connectToMediaBrowser' => ({required Object product}) => 'Opret forbindelse til ${product}',
			'auth.quickConnect' => 'Quick Connect',
			'auth.useQuickConnect' => 'Brug Quick Connect',
			'auth.quickConnectInstructions' => 'Åbn Quick Connect i Jellyfin, og indtast denne kode.',
			'auth.quickConnectWaiting' => 'Venter på godkendelse…',
			'auth.quickConnectCancel' => 'Annuller',
			'auth.quickConnectExpired' => 'Quick Connect er udløbet. Prøv igen.',
			'auth.localDataRecoveryRequired' => 'Luroka kunne ikke gendanne lokale loginoplysninger og ventende afspilningsdata på en sikker måde. Log ind igen.',
			'auth.pinCheckRejected' => 'Plex PIN-kontrollen blev afvist',
			'common.cancel' => 'Annuller',
			'common.save' => 'Gem',
			'common.close' => 'Luk',
			'common.clear' => 'Ryd',
			'common.reset' => 'Nulstil',
			'common.later' => 'Senere',
			'common.submit' => 'Indsend',
			'common.confirm' => 'Bekræft',
			'common.retry' => 'Prøv igen',
			'common.logout' => 'Log ud',
			'common.unknown' => 'Ukendt',
			'common.refresh' => 'Opdater',
			'common.yes' => 'Ja',
			'common.no' => 'Nej',
			'common.delete' => 'Slet',
			'common.edit' => 'Rediger',
			'common.shuffle' => 'Bland',
			'common.addTo' => 'Tilføj til...',
			'common.createNew' => 'Opret ny',
			'common.connect' => 'Forbind',
			'common.disconnect' => 'Afbryd',
			'common.play' => 'Afspil',
			'common.pause' => 'Pause',
			'common.resume' => 'Genoptag',
			'common.error' => 'Fejl',
			'common.search' => 'Søg',
			'common.home' => 'Hjem',
			'common.back' => 'Tilbage',
			'common.settings' => 'Indstillinger',
			'common.mute' => 'Lydløs',
			'common.ok' => 'OK',
			'common.off' => 'Fra',
			'common.options' => 'Valgmuligheder',
			'common.seasonNumber' => ({required Object number}) => 'Sæson ${number}',
			'common.episodeNumberTitle' => ({required Object number, required Object title}) => 'Episode ${number} – ${title}',
			'common.chapterNumber' => ({required Object number}) => 'Kapitel ${number}',
			'common.reconnect' => 'Genopret forbindelse',
			'common.viewAll' => 'Vis alle',
			'common.serversUnreachable' => 'Servere er utilgængelige',
			'common.loading' => 'Indlæser...',
			'common.fullscreen' => 'Fuldskærm',
			'common.exitFullscreen' => 'Forlad fuldskærm',
			'common.ratingSource.critic' => 'Anmeldere',
			'common.ratingSource.audience' => 'Publikum',
			'common.ratingSource.imdb' => 'IMDb',
			'common.ratingSource.tmdb' => 'TMDB',
			'common.ratingSource.rottenTomatoes' => 'Rotten Tomatoes',
			'common.ratingSource.simkl' => 'Simkl',
			'common.ratingSource.mal' => 'MyAnimeList',
			'common.ratingSource.anilist' => 'AniList',
			'common.ratingSource.trakt' => 'Trakt',
			'common.ratingSource.rottenTomatoesCritic' => 'Rotten Tomatoes-anmeldere',
			'common.ratingSource.rottenTomatoesAudience' => 'Rotten Tomatoes-publikum',
			'common.ratingSource.metacritic' => 'Metacritic',
			'common.ratingSource.letterboxd' => 'Letterboxd',
			'common.notAvailable' => 'N/A',
			'common.url' => 'URL',
			'common.letterKeys' => 'ABC',
			'common.mediaKind.movie' => 'Film',
			'common.mediaKind.show' => 'Serie',
			'common.mediaKind.season' => 'Sæson',
			'common.mediaKind.episode' => 'Afsnit',
			'common.mediaKind.artist' => 'Kunstner',
			'common.mediaKind.album' => 'Album',
			'common.mediaKind.track' => 'Nummer',
			'common.mediaKind.collection' => 'Samling',
			'common.mediaKind.playlist' => 'Afspilningsliste',
			'common.mediaKind.clip' => 'Klip',
			'common.mediaKind.photo' => 'Foto',
			'common.mediaKind.folder' => 'Mappe',
			'common.stay' => 'Bliv',
			'common.exitApp' => 'Afslut',
			'common.exitAppBody' => 'Er du sikker på, at du vil afslutte Luroka?',
			'tvHints.select' => 'Vælg',
			'tvHints.browse' => 'Gennemse',
			'tvHints.back' => 'Tilbage',
			'screens.licenses' => 'Licenser',
			'screens.switchProfile' => 'Skift profil',
			'screens.subtitleStyling' => 'Undertekststil',
			'screens.mpvConfig' => 'mpv.conf',
			'screens.logs' => 'Logfiler',
			'mediaExtras.trailers' => 'Trailere',
			'mediaExtras.featurettes' => 'Featurettes',
			'mediaExtras.interviews' => 'Interviews',
			'mediaExtras.deletedScenes' => 'Slettede scener',
			'mediaExtras.behindTheScenes' => 'Bag kulisserne',
			'mediaExtras.scenesAndClips' => 'Scener og klip',
			'mediaExtras.other' => 'Andre Ekstra',
			'update.available' => 'Opdatering tilgængelig',
			'update.versionAvailable' => ({required Object version}) => 'Version ${version} er tilgængelig',
			'update.currentVersion' => ({required Object version}) => 'Nuværende: ${version}',
			'update.skipVersion' => 'Spring denne version over',
			'update.viewRelease' => 'Vis udgivelse',
			'update.latestVersion' => 'Du har den nyeste version',
			'update.checkFailed' => 'Kunne ikke søge efter opdateringer',
			'supporter.title' => 'Luroka Supporter',
			'supporter.intro' => 'Et engangskøb, der understøtter Lurokas udvikling og låser op for kosmetiske ekstramateriale:',
			'supporter.presetThemes' => 'Forudindstillede temaer',
			'supporter.presetThemesDescription' => 'Glød, gletsjer, skov, blomme og papir',
			'supporter.customTheme' => 'Brugerdefineret tema',
			'supporter.customThemeDescription' => 'Vælg hver farve selv',
			'supporter.appIcons' => 'App ikoner',
			'supporter.appIconsDescription' => 'Vælg et alternativt Luroka-ikon',
			'supporter.buy' => ({required Object price}) => 'Køb til ${price}',
			'supporter.loadingPrice' => 'Indlæser pris...',
			'supporter.restore' => 'Gendan køb',
			'supporter.pending' => 'Dit køb venter på betaling eller godkendelse. Ekstraudstyret låses op, så snart butikken er færdig.',
			'supporter.thankYouTitle' => 'Tak fordi du støtter Luroka',
			'supporter.thankYouBody' => 'Dine Supporter-ekstramateriale er låst op.',
			'supporter.tileSubtitle' => 'Lås op for temaer og appikoner med et engangskøb',
			'supporter.tileSubtitleThemesOnly' => 'Lås op for temaer med et engangskøb',
			'supporter.tileUnlocked' => 'Tak for din støtte',
			'supporter.errors.storeUnavailable' => 'Køb er ikke tilgængelige. Tjek, at du er logget ind i butikken, og at køb er tilladt på denne enhed.',
			'supporter.errors.productNotFound' => 'Supporterkøbet er ikke tilgængeligt i din butik lige nu.',
			'supporter.errors.productQueryFailed' => 'Prisen kunne ikke indlæses. Tjek din forbindelse, og prøv igen.',
			'supporter.errors.purchaseFailed' => 'Købet gik ikke igennem. Prøv igen.',
			'supporter.errors.restoreFailed' => 'Kunne ikke få fat i butikken for at gendanne dit køb. Prøv igen.',
			'supporter.errors.nothingToRestore' => 'Der blev ikke fundet noget supportkøb for denne butikskonto.',
			'settings.title' => 'Indstillinger',
			'settings.supportDeveloper' => 'Støt Luroka',
			'settings.supportDeveloperDescription' => 'Doner via Liberapay for at finansiere udviklingen',
			'settings.language' => 'Sprog',
			'settings.theme' => 'Tema',
			'settings.appearance' => 'Udseende',
			'settings.videoPlayback' => 'Videoafspilning',
			'settings.videoPlaybackDescription' => 'Konfigurer afspilningsadfærd',
			'settings.advanced' => 'Avanceret',
			'settings.episodePosterMode' => 'Episodeplakatstil',
			'settings.seriesPoster' => 'Serieplakat',
			'settings.seasonPoster' => 'Sæsonplakat',
			'settings.episodeThumbnail' => 'Miniature',
			'settings.homeHeroSize' => 'Karrusel størrelse',
			'settings.homeHeroSizeSmall' => 'Lille',
			'settings.homeHeroSizeMedium' => 'Medium',
			'settings.homeHeroSizeLarge' => 'Stor',
			'settings.secondsLabel' => 'Sekunder',
			'settings.minutesLabel' => 'Minutter',
			'settings.secondsShort' => 's',
			'settings.minutesShort' => 'm',
			'settings.durationHint' => ({required Object min, required Object max}) => 'Indtast varighed (${min}-${max})',
			'settings.systemTheme' => 'System',
			'settings.lightTheme' => 'Lys',
			'settings.darkTheme' => 'Mørk',
			'settings.oledTheme' => 'OLED',
			'settings.libraryDensity' => 'Bibliotekstæthed',
			'settings.displayScale' => 'Skalering',
			'settings.compact' => 'Kompakt',
			'settings.comfortable' => 'Komfortabel',
			'settings.gridSpacing' => 'Gitterafstand',
			'settings.gridSpacingTight' => 'Tæt',
			'settings.gridSpacingNormal' => 'Normal',
			'settings.gridSpacingSpacious' => 'Rummelig',
			'settings.tvCornerSpotlightBackdrop' => 'Fremhævet baggrundsbillede i hjørnet',
			'settings.tvCornerSpotlightBackdropDescription' => 'Vis fremhævet grafik i øverste højre hjørne i stedet for at fylde skærmen',
			'settings.viewMode' => 'Visningstilstand',
			'settings.gridView' => 'Gitter',
			'settings.listView' => 'Liste',
			'settings.continueWatchingAction' => 'Handling for "Fortsæt med at se"',
			'settings.continueWatchingPlay' => 'Afspil',
			'settings.continueWatchingDetails' => 'Åbn detaljer',
			'settings.episodeAction' => 'Handling for afsnit',
			'settings.episodePlay' => 'Afspil',
			'settings.episodeDetails' => 'Åbn detaljer',
			'settings.useGlobalHubs' => 'Brug startlayout',
			'settings.useGlobalHubsDescription' => 'Vis samlet startsideindhold. Brug ellers biblioteksanbefalinger.',
			'settings.showServerNameOnHubs' => 'Vis servernavn på hubber',
			'settings.showServerNameOnHubsDescription' => 'Vis altid servernavne i titler på hubber.',
			'settings.groupLibrariesByServer' => 'Grupper biblioteker efter server',
			'settings.groupLibrariesByServerDescription' => 'Gruppér bibliotekerne i sidepanelet under hver medieserver.',
			'settings.alwaysKeepSidebarOpen' => 'Hold altid sidepanelet åbent',
			'settings.alwaysKeepSidebarOpenDescription' => 'Sidepanelet forbliver udvidet, og indholdsområdet tilpasser sig',
			'settings.showUnwatchedCount' => 'Vis antal usete',
			'settings.showUnwatchedCountDescription' => 'Vis antal usete episoder på serier og sæsoner',
			'settings.showWatchedIndicators' => 'Vis set-markeringer',
			'settings.showWatchedIndicatorsDescription' => 'Vis et flueben på sete film, serier og episoder',
			'settings.showEpisodeNumberOnCards' => 'Vis episodenummer på kort',
			'settings.showEpisodeNumberOnCardsDescription' => 'Vis sæson- og episodenummer på episodekort',
			'settings.showSeasonPostersOnTabs' => 'Vis sæsonplakater på faner',
			'settings.showSeasonPostersOnTabsDescription' => 'Vis hver sæsons plakat over dens fane',
			'settings.tvFullCardLayout' => 'TV-kort med billeder over hele fladen',
			'settings.tvFullCardLayoutDescription' => 'Brug TV-kort, der kun viser billeder, med skuespillernavnene ovenpå',
			'settings.focusGlow' => 'Fokusglød',
			'settings.focusGlowDescription' => 'Vis en blød glød omkring det fokuserede kort',
			'settings.visualEffects' => 'Visuelle effekter',
			'settings.visualEffectsAuto' => 'Automatisk',
			'settings.visualEffectsAutoDescription' => 'Reducer automatisk effekter på enheder med lav ydeevne',
			'settings.visualEffectsFull' => 'Fuld',
			'settings.visualEffectsReduced' => 'Reduceret',
			'settings.visualEffectsReducedDescription' => 'Færre animationer og illustrationer i lavere opløsning',
			'settings.hideSpoilers' => 'Skjul spoilere for usete episoder',
			'settings.hideSpoilersDescription' => 'Slør miniaturebilleder og beskrivelser for usete episoder',
			'settings.playerBackend' => 'Afspillermotor',
			'settings.playerBackendDescription' => 'mpv afspiller flere formater og muliggør flere funktioner — anbefales. ExoPlayer hjælper, hvis afspilningen mislykkes eller hakker på denne enhed.',
			'settings.exoPlayer' => 'ExoPlayer',
			'settings.mpv' => 'mpv',
			'settings.hardwareDecoding' => 'Hardwaredekodning',
			'settings.hardwareDecodingDescription' => 'Brug hardwareacceleration, når den er tilgængelig',
			'settings.playbackBuffer' => 'Afspilningsbuffer',
			'settings.playbackBufferAuto' => 'Auto (anbefalet)',
			'settings.playbackBufferLarge' => 'Stor',
			'settings.playbackBufferExtraLarge' => 'Ekstra stor',
			'settings.playbackBufferDescription' => 'Bufrer mere mod ustabile forbindelser. Begrænses også af bufferstørrelsen.',
			'settings.defaultQualityTitle' => 'Standardkvalitet',
			'settings.streamingQualityOriginalHint' => 'Afspiller filen nøjagtigt som gemt - bedste kvalitet, bruger mest båndbredde',
			'settings.cellularQualityTitle' => 'Standardkvalitet på mobildata',
			'settings.cellularQualitySameAsDefault' => 'Samme som standardkvalitet',
			'settings.directPlayCoveredQuality' => 'Afspil mindre videoer i original kvalitet',
			'settings.directPlayCoveredQualityDescription' => 'Afspil videoer, der allerede er inden for kvalitetsgrænsen, direkte i stedet for at transkode dem',
			'settings.videoCodecs' => 'Videocodecs',
			'settings.videoCodecsDescription' => 'Codecs uden flueben transkodes af serveren',
			'settings.videoCodecsAlwaysAccepted' => 'Accepteres altid',
			'settings.musicQualityTitle' => 'Musikkvalitet',
			'settings.subtitleStyling' => 'Undertekststil',
			'settings.subtitleStylingDescription' => 'Tilpas underteksters udseende',
			'settings.smallSkipDuration' => 'Kort spring',
			'settings.largeSkipDuration' => 'Langt spring',
			'settings.rewindOnResume' => 'Spol tilbage ved genoptagelse',
			'settings.secondsUnit' => ({required Object seconds}) => '${seconds} sekunder',
			'settings.defaultSleepTimer' => 'Standard-sovetimer',
			'settings.minutesUnit' => ({required Object minutes}) => '${minutes} minutter',
			'settings.rememberTrackSelections' => 'Husk sporvalg for hver serie/film',
			'settings.rememberTrackSelectionsDescription' => 'Husk valget af lyd og undertekster for hver titel',
			'settings.rememberTrackSelectionsBackendRule' => 'Plex gemmer hvert valg på serveren pr. fil; Jellyfin aktiverer også kontoindstillingen »Husk valg«; Emby understøttes ikke',
			'settings.followServerTrackSelections' => 'Brug serverens sporvalg for hvert afsnit',
			'settings.followServerTrackSelectionsDescription' => 'Ved afsnitsskift anvendes lyden og underteksterne valgt på serveren i stedet for at videreføre det aktuelle valg',
			'settings.resumeMusicOnLaunch' => 'Husk musiksession',
			'settings.resumeMusicOnLaunchDescription' => 'Åbn den seneste sang på pause der, hvor den slap, når appen starter',
			'settings.showChapterMarkersOnTimeline' => 'Vis kapitelmarkører på tidslinjen',
			'settings.showChapterMarkersOnTimelineDescription' => 'Opdel tidslinjen ved kapitelgrænser',
			'settings.specialsOrdering' => 'Specialafsnit i episoderekkefølge',
			'settings.specialsOrderingDescription' => 'Hvor specialafsnit afspilles i seriens visningsrækkefølge',
			'settings.specialsOrderingServer' => 'Følg serverrækkefølgen',
			'settings.specialsOrderingAirDate' => 'Indflet efter udsendelsesdato',
			'settings.specialsOrderingLast' => 'Efter almindelige sæsoner',
			'settings.clickVideoTogglesPlayback' => 'Klik på videoen for at skifte mellem afspilning og pause',
			'settings.clickVideoTogglesPlaybackDescription' => 'Klik på videoen for at afspille eller sætte på pause i stedet for at vise betjeningsknapperne.',
			'settings.videoPlayerControls' => 'Videoafspillerkontroller',
			'settings.keyboardShortcuts' => 'Tastaturgenveje',
			'settings.keyboardShortcutsDescription' => 'Tilpas tastaturgenveje',
			'settings.videoPlayerNavigation' => 'Videoafspillernavigation',
			'settings.videoPlayerNavigationDescription' => 'Brug piletaster til at navigere videoafspillerkontroller',
			'settings.watchTogetherRelay' => 'Relayserver til Se sammen',
			'settings.watchTogetherRelayDescription' => 'Offentlige Open Watch Party-relæer, medmindre du indstiller dine egne',
			'settings.watchTogetherRelayHint' => 'https://min-relay.eksempel.dk',
			'settings.watchTogetherRelayInvalid' => 'Angiv en gyldig basis-URL til en HTTP- eller HTTPS-relayserver.',
			'settings.crashReporting' => 'Fejlrapportering',
			'settings.crashReportingDescription' => 'Send fejlrapporter for at hjælpe med at forbedre appen',
			'settings.debugLogging' => 'Fejlfindingslogning',
			'settings.debugLoggingDescription' => 'Aktiver detaljeret logning til fejlfinding',
			'settings.viewLogs' => 'Vis logfiler',
			'settings.viewLogsDescription' => 'Vis programmets logfiler',
			'settings.clearImageCache' => 'Ryd billedcache',
			'settings.clearImageCacheDescription' => 'Ryd cachelagrede covers og thumbnails. Billeder kan indlæse langsommere, indtil de downloades igen.',
			'settings.clearImageCacheSuccess' => 'Billedcachen er ryddet',
			'settings.resetSettings' => 'Nulstil indstillinger',
			'settings.resetSettingsDescription' => 'Gendan standardindstillinger. Dette kan ikke fortrydes.',
			'settings.resetSettingsSuccess' => 'Indstillinger nulstillet',
			'settings.backup' => 'Sikkerhedskopi',
			'settings.exportSettings' => 'Eksportér indstillinger',
			'settings.exportSettingsDescription' => 'Gem dine præferencer i en fil',
			'settings.exportSettingsSuccess' => 'Indstillinger eksporteret',
			'settings.importSettings' => 'Importér indstillinger',
			'settings.importSettingsDescription' => 'Gendan præferencer fra en fil',
			'settings.importSettingsConfirm' => 'Dette vil erstatte dine nuværende indstillinger. Fortsæt?',
			'settings.importSettingsSuccess' => 'Indstillinger importeret',
			'settings.importSettingsInvalidFile' => 'Denne fil er ikke en gyldig eksport af Luroka-indstillinger',
			'settings.importSettingsNoUser' => 'Log ind før import af indstillinger',
			'settings.shortcutsReset' => 'Genveje nulstillet til standard',
			'settings.resetShortcutsConfirm' => 'Dette vil erstatte dine brugerdefinerede genveje med standardindstillingerne. Fortsætte?',
			'settings.about' => 'Om',
			'settings.aboutDescription' => 'App-information og licenser',
			'settings.updates' => 'Opdateringer',
			'settings.updateAvailable' => 'Opdatering tilgængelig',
			'settings.checkForUpdates' => 'Søg efter opdateringer',
			'settings.autoCheckUpdatesOnStartup' => 'Søg automatisk efter opdateringer ved opstart',
			'settings.autoCheckUpdatesOnStartupDescription' => 'Giv besked, når en opdatering er tilgængelig ved start',
			'settings.validationErrorEnterNumber' => 'Indtast et gyldigt tal',
			'settings.validationErrorDuration' => ({required Object min, required Object max, required Object unit}) => 'Varigheden skal være mellem ${min} og ${max} ${unit}',
			'settings.shortcutAlreadyAssigned' => ({required Object action}) => 'Genvejen er allerede tildelt ${action}',
			'settings.shortcutUpdated' => ({required Object action}) => 'Genvejen for ${action} er opdateret',
			'settings.saveFailed' => 'Ændringerne kunne ikke gemmes. Prøv igen.',
			'settings.autoPlayAndSkip' => 'Autoafspilning og spring',
			'settings.autoPlayNextEpisode' => 'Autoafspil næste afsnit',
			'settings.autoPlayNextEpisodeDescription' => 'Start automatisk næste afsnit, når et afsnit slutter',
			'settings.shuffleStartsFromBeginning' => 'Blandet afspilning starter forfra',
			'settings.shuffleStartsFromBeginningDescription' => 'Start hvert afsnit forfra ved blandet afspilning i stedet for at genoptage',
			'settings.playNextCountdown' => 'Nedtælling til næste afsnit',
			'settings.playNextCountdownImmediate' => 'Afspil med det samme',
			'settings.skipIntroMode' => 'Spring intro over',
			'settings.skipIntroModeOffDescription' => 'Afspil introer normalt uden en spring-knap',
			'settings.skipIntroModeButtonDescription' => 'Vis en spring-knap, når en intro starter',
			'settings.skipIntroModeAutoDescription' => 'Spring introer automatisk over efter forsinkelsen nedenfor',
			'settings.skipCreditsMode' => 'Spring rulletekster over',
			'settings.skipCreditsModeOffDescription' => 'Afspil rulletekster normalt uden en spring-knap',
			'settings.skipCreditsModeButtonDescription' => 'Vis en spring-knap, når rulleteksterne starter',
			'settings.skipCreditsModeAutoDescription' => 'Spring rulletekster automatisk over, og afspil næste afsnit',
			'settings.skipMarkerModeOff' => 'Fra',
			'settings.skipMarkerModeButton' => 'Vis knap',
			'settings.skipMarkerModeAuto' => 'Automatisk',
			'settings.forceSkipMarkerFallback' => 'Tving reservemarkører',
			'settings.forceSkipMarkerFallbackDescription' => 'Brug mønstre i kapiteltitler, selv når Plex har markører',
			'settings.autoSkipDelay' => 'Forsinkelse ved automatisk spring',
			'settings.autoSkipDelayDescription' => ({required Object seconds}) => 'Vent ${seconds} sekunder, før der springes automatisk',
			'settings.introPattern' => 'Intromarkørmønster',
			'settings.introPatternDescription' => 'Regulært udtryk til at genkende intromarkører i kapiteltitler',
			'settings.creditsPattern' => 'Rulletekstmarkørmønster',
			'settings.creditsPatternDescription' => 'Regulært udtryk til at genkende rulletekstmarkører i kapiteltitler',
			'settings.invalidRegex' => 'Ugyldigt regulært udtryk',
			'settings.regex' => 'Regulært udtryk',
			'settings.downloads' => 'Downloads',
			'settings.downloadLocationDescription' => 'Vælg, hvor downloadet indhold skal gemmes',
			'settings.downloadLocationDefault' => 'Standard (applager)',
			'settings.downloadLocationCustom' => 'Brugerdefineret placering',
			'settings.selectFolder' => 'Vælg mappe',
			'settings.resetToDefault' => 'Nulstil til standard',
			'settings.currentPath' => ({required Object path}) => 'Nuværende: ${path}',
			'settings.downloadLocationChanged' => 'Downloadplacering ændret',
			'settings.downloadLocationReset' => 'Downloadplacering nulstillet',
			'settings.downloadLocationInvalid' => 'Valgt mappe er ikke skrivbar',
			'settings.downloadLocationPickerUnavailable' => 'Mappevalg er ikke tilgængeligt på denne enhed',
			'settings.downloadOnWifiOnly' => 'Download kun via Wi-Fi',
			'settings.downloadOnWifiOnlyDescription' => 'Forhindr downloads via mobildata',
			'settings.autoRemoveWatchedDownloads' => 'Fjern sete downloads automatisk',
			'settings.autoRemoveWatchedDownloadsDescription' => 'Slet sete downloads automatisk',
			'settings.cellularDownloadBlocked' => 'Downloads er blokeret på mobilnettet. Brug Wi-Fi, eller skift indstillingen.',
			'settings.maxVolume' => 'Maksimal lydstyrke',
			'settings.maxVolumeDescription' => 'Tillad lydstyrkeforstærkning over 100 % for stille medier',
			'settings.maxVolumePercent' => ({required Object percent}) => '${percent}%',
			'settings.discordRichPresence' => 'Discord-aktivitetsstatus',
			'settings.discordRichPresenceDescription' => 'Vis på Discord, hvad du ser',
			'settings.services' => 'Tjenester',
			'settings.servicesDescription' => 'Forbind Trakt, MyAnimeList, Seerr og mere',
			'settings.manageLibrariesDescription' => 'Omarranger og skjul biblioteker',
			'settings.companionRemoteServer' => 'Fjernbetjeningsserver',
			'settings.companionRemoteServerDescription' => 'Tillad mobilenheder på dit netværk at styre denne app',
			'settings.companionRemoteServerStartFailed' => 'Fjernbetjeningsserveren kunne ikke startes',
			'settings.companionRemoteServerStopFailed' => 'Fjernbetjeningsserveren kunne ikke stoppes',
			'settings.autoPip' => 'Automatisk billede-i-billede',
			'settings.autoPipDescription' => 'Skift automatisk til billede-i-billede, når du forlader appen under afspilning',
			'settings.matchContentFrameRate' => 'Tilpas billedhastigheden til indholdet',
			'settings.matchContentFrameRateDescription' => 'Tilpas skærmens opdateringsfrekvens til videoindhold',
			'settings.matchContentResolution' => 'Tilpas til indholdets opløsning',
			'settings.matchContentResolutionDescription' => 'Skifter skærmen til videoens oprindelige opløsning, så dit tv står for opskaleringen. Menuer og undertekster opskaleres også under afspilning',
			'settings.matchRefreshRate' => 'Tilpas opdateringsfrekvensen',
			'settings.matchRefreshRateDescription' => 'Tilpas skærmens opdateringsfrekvens i fuld skærm',
			'settings.matchDynamicRange' => 'Tilpas dynamikområdet',
			'settings.matchDynamicRangeDescription' => 'Slå HDR til for HDR-indhold og derefter tilbage til SDR',
			'settings.displaySwitchDelay' => 'Forsinkelse ved skærmskift',
			'settings.tunneledPlayback' => 'Tunneleret afspilning',
			'settings.tunneledPlaybackDescription' => 'Brug videotunneling. Slå fra, hvis HDR-afspilning viser sort video, eller bevægelser hakker.',
			'settings.audioPassthrough' => 'Lyd-passthrough',
			'settings.audioPassthroughDescription' => 'Send Dolby/DTS-lyd til din receiver eller dit TV uden genkodning, så surroundlyd bevares. Slå fra, hvis du ikke har lyd.',
			'settings.audioPassthroughDescriptionApple' => 'Brug Apples indbyggede Dolby-dekoder til Dolby Digital Plus, inklusive Atmos. DTS og TrueHD afspilles stadig som flerkanals-PCM. Slå fra, hvis du ikke har lyd.',
			'settings.audioPassthroughDescriptionAppleSpatial' => 'Brug Apples oprindelige Dolby-dekoder til Dolby Digital Plus, inklusive Atmos. På iOS, iPadOS og tvOS 26 eller nyere afspilles TrueHD Atmos og DTS:X som rumlig lyd. Andre DTS- og TrueHD-numre afspilles som multikanal PCM. Sluk, hvis du ikke har nogen lyd.',
			'settings.audioPassthroughOverriddenByNormalization' => 'Fra, mens lydstyrkenormalisering er slået til',
			'settings.audioChannelLimit' => 'Lydkanaler',
			'settings.audioChannelLimitDescription' => 'Bland afkodet lyd ned til højttalere, hovedtelefoner eller HDMI-opsætninger, der ikke kan afspille alle kanaler',
			'settings.audioChannelLimitOriginal' => 'Original',
			'settings.audioChannelLimitOriginalDescription' => 'Afspil hver kanal i sporet',
			'settings.audioChannelLimitSurround51' => 'Op til 5.1',
			'settings.audioChannelLimitSurround51Description' => 'Bland 7,1 ned til 5,1 for tv\'er og modtagere, der kun tager 5,1 PCM. Passthrough er upåvirket.',
			'settings.audioChannelLimitStereo' => 'Stereo',
			'settings.audioChannelLimitStereoDescription' => 'Mix ned til to kanaler til stereohøjttalere eller hovedtelefoner. Slår gennemløb fra.',
			'settings.downmixCenterBoost' => 'Forstærkning af centerkanal',
			'settings.downmixCenterBoostValue' => ({required Object db}) => '${db} dB',
			'settings.downmixCenterBoostLabel' => 'Forstærkning (dB)',
			'settings.downmixCenterBoostShort' => 'dB',
			'settings.audioDownmixNormalize' => 'Normaliser lydstyrken ved downmix',
			'settings.audioDownmixNormalizeDescription' => 'Sænk mixets lydstyrke for at undgå clipping. Slå fra for at bevare den oprindelige lydstyrke (høje scener kan blive forvrænget).',
			'settings.dvConversionMode' => 'Dolby Vision-konvertering',
			'settings.dvConversionModeDescription' => 'Vælg, hvordan Dolby Vision Profile 7-filer håndteres.',
			'settings.dvConversionAuto' => 'Automatisk',
			'settings.dvConversionNative' => 'Indbygget / deaktiveret',
			'settings.dvConversionDv81' => 'P7 → P8.1',
			'settings.dvConversionHevcStrip' => 'P7 → HEVC',
			'settings.dvConversionAutoDescription' => 'Brug registrering af enhedens funktioner og normal reserveadfærd',
			'settings.dvConversionNativeDescription' => 'Gennemtving indbygget DV7-understøttelse, og undlad at forsøge DV-konvertering igen',
			'settings.dvConversionDv81Description' => 'Tving inline RPU-konvertering til Dolby Vision profil 8.1',
			'settings.dvConversionHevcStripDescription' => 'Fjern Dolby Vision RPU/EL-lag og brug almindelig HEVC',
			'settings.disableDolbyVision' => 'Deaktiver Dolby Vision',
			'settings.disableDolbyVisionDescription' => 'Afspil filens HDR10- eller HLG-lag i stedet for Dolby Vision, når det findes',
			'settings.hdrSdrConversion' => 'HDR til SDR-konvertering',
			'settings.hdrSdrConversionDescription' => 'Vælg, hvad der konverterer HDR-video, når skærmen ikke kan vise HDR.',
			'settings.hdrSdrConversionAuto' => 'Automatisk',
			'settings.hdrSdrConversionAutoDescription' => 'Enhed på Android 9 og nyere, afspiller på ældre versioner',
			'settings.hdrSdrConversionDevice' => 'Enhed',
			'settings.hdrSdrConversionDeviceDescription' => 'Enhedens videohardware konverterer. Hurtigst, men farverne afhænger af enheden',
			'settings.hdrSdrConversionPlayer' => 'Afspiller',
			'settings.hdrSdrConversionPlayerDescription' => 'Afspilleren konverterer. Ensartede farver, men 4K kan hakke på billige tv-bokse',
			'settings.deinterlace' => 'Deinterlacing',
			'settings.deinterlaceDescription' => 'Fjern kamartefakter fra interlaced video (kun mpv-afspiller)',
			'settings.deinterlaceOff' => 'Slukket',
			'settings.deinterlaceOffDescription' => 'Vis interlaced video, som den er afkodet',
			'settings.deinterlaceVideo' => 'Video',
			'settings.deinterlaceVideoDescription' => 'Gør hvert felt til en fuld ramme. Til videooptagelser til tv, som sport, nyheder og koncerter',
			'settings.deinterlaceFilm' => 'Film',
			'settings.deinterlaceFilmDescription' => 'Gendan de originale frames af film og animation telecineret til 29,97 fps, almindeligt på NTSC DVD\'er. Videooptagelse til tv-stammer. Live-tv bruger video',
			'settings.requireProfileSelectionOnOpen' => 'Spørg om profil ved åbning',
			'settings.requireProfileSelectionOnOpenDescription' => 'Vis profilvalg hver gang appen åbnes',
			'settings.forceTvMode' => 'Gennemtving TV-tilstand',
			'settings.forceTvModeKeepTitle' => 'Vil du beholde tv-layout?',
			'settings.forceTvModeKeepBody' => ({required Object seconds}) => 'TV-layout er designet til fjernbetjeninger. Vende tilbage til det normale layout i ${seconds} s.',
			'settings.forceTvModeKeepConfirm' => 'Behold tv-layout',
			'settings.forceTvModeReverted' => 'TV-layout vendt tilbage',
			'settings.forceTvModeDescription' => 'Tving TV-layout. Til enheder, der ikke registreres automatisk. Kræver genstart.',
			'settings.startInFullscreen' => 'Start i fuldskærm',
			'settings.startInFullscreenDescription' => 'Åbn Luroka i fuldskærmstilstand ved opstart',
			'settings.exitFullscreenOnPlayerClose' => 'Forlad fuldskærm ved lukning af afspiller',
			'settings.exitFullscreenOnPlayerCloseDescription' => 'Afslut automatisk fuldskærm, når videoafspilleren lukkes',
			'settings.autoHidePerformanceOverlay' => 'Skjul ydelsesoverlay automatisk',
			'settings.autoHidePerformanceOverlayDescription' => 'Lad ydelsesoverlayet tone ud sammen med afspilningsknapperne',
			'settings.showNavBarLabels' => 'Vis tekst på navigationslinjen',
			'settings.showNavBarLabelsDescription' => 'Vis tekst under ikonerne på navigationslinjen',
			'settings.startupSection' => 'Startsektion',
			'settings.showExploreTab' => 'Vis fanen Opdag',
			'settings.showExploreTabDescription' => 'Vis fanen Opdag med indhold fra Plex Discover og tilknyttede trackere',
			'settings.liveTvDefaultFavorites' => 'Vis favoritkanaler som standard',
			'settings.liveTvDefaultFavoritesDescription' => 'Vis kun favoritkanaler ved åbning af Live TV',
			'settings.general' => 'Generelt',
			'settings.generalDescription' => 'Sprog, opstart og vinduesadfærd',
			'settings.languageAndRegion' => 'Sprog og region',
			'settings.startup' => 'Opstart',
			'settings.display' => 'Skærm',
			'settings.libraryAndCards' => 'Bibliotek og kort',
			'settings.homeScreen' => 'Startskærm',
			'settings.navigation' => 'Navigation',
			'settings.window' => 'Vindue',
			'settings.liveTv' => 'Live-tv',
			'settings.player' => 'Afspiller',
			'settings.videoAndDisplay' => 'Video og skærm',
			'settings.audio' => 'Lyd',
			'settings.quality' => 'Kvalitet',
			'settings.subtitles' => 'Undertekster',
			'settings.seekAndTiming' => 'Søgning og timing',
			'settings.behavior' => 'Adfærd',
			'settings.gestures' => 'Bevægelser',
			'settings.gestureBrightnessSwipe' => 'Lysstyrke-strygning',
			'settings.gestureBrightnessSwipeDescription' => 'Stryg op eller ned i venstre kant for at justere lysstyrken',
			'settings.gestureVolumeSwipe' => 'Lydstyrke-strygning',
			'settings.gestureVolumeSwipeDescription' => 'Stryg op eller ned i højre kant for at justere lydstyrken',
			'settings.gesturePinchToZoom' => 'Klem for at zoome',
			'settings.gesturePinchToZoomDescription' => 'Klem på videoen for at zoome ind eller ud',
			_ => null,
		} ?? switch (path) {
			'settings.rememberBrightnessLevel' => 'Husk lysstyrkeniveau',
			'settings.rememberBrightnessLevelDescription' => 'Start afspilning med den lysstyrke, der blev indstillet med den seneste strygning',
			'settings.controls' => 'Kontroller',
			'settings.rememberPlayerChanges' => 'Husk afspillerændringer',
			'settings.rememberPlayerChangesDescription' => 'Hvor en ændring under afspilning gemmes og anvendes igen',
			'settings.scopePlaybackSpeed' => 'Afspilningshastighed',
			'settings.scopeShaderPreset' => 'Shader-forudindstilling',
			'settings.scopeAspectRatio' => 'Billedformat',
			'settings.scopeSyncOffsets' => 'Synkronisering af lyd og undertekster',
			'settings.playerScopeOff' => 'Gem ikke',
			'settings.playerScopeGlobal' => 'Overalt',
			'settings.playerScopeLibrary' => 'Pr. bibliotek',
			'settings.playerScopeTitle' => 'Pr. serie eller film',
			'settings.exportDialogTitle' => 'Eksportér Luroka-indstillinger',
			'settings.velvetHourTheme' => 'Fløjls time',
			'themeEditor.builtIn' => 'Indbygget',
			'themeEditor.presets' => 'Forudindstillinger',
			'themeEditor.custom' => 'Brugerdefineret',
			'themeEditor.customEmpty' => 'Ikke oprettet endnu',
			'themeEditor.editCustom' => 'Rediger tilpasset tema',
			'themeEditor.editCustomDescription' => 'Vælg hver farve selv',
			'themeEditor.locked' => 'Lås op med Supporter',
			'themeEditor.savedLocked' => 'Gemt — låses op med Supporter',
			'themeEditor.title' => 'Brugerdefineret tema',
			'themeEditor.startFrom' => 'Start fra',
			'themeEditor.startFromDescription' => 'Kopier alle farver fra et andet tema',
			'themeEditor.colors' => 'Farver',
			'themeEditor.preview' => 'Forhåndsvisning',
			'themeEditor.slots.bg' => 'Baggrund',
			'themeEditor.slots.surface' => 'Overflade',
			'themeEditor.slots.outline' => 'Disposition',
			'themeEditor.slots.text' => 'Tekst',
			'themeEditor.slots.textMuted' => 'Sekundær tekst',
			'themeEditor.slots.accent' => 'Accent',
			'themeEditor.opacity' => 'Opacitet',
			'themeEditor.hexHint' => '#RRGGBB eller #AARRGGBB',
			'themeEditor.fromOtherThemes' => 'Fra andre temaer',
			'themeEditor.swatchLabel' => ({required Object theme, required Object color}) => '${theme} ${color}',
			'themeEditor.contrast.textOnBg' => 'Tekst på baggrund',
			'themeEditor.contrast.textOnSurface' => 'Tekst på overfladen',
			'themeEditor.contrast.textMutedOnBg' => 'Sekundær tekst på baggrund',
			'themeEditor.contrast.textMutedOnSurface' => 'Sekundær tekst på overfladen',
			'themeEditor.contrast.accentOnBg' => 'Accent på baggrund',
			'themeEditor.contrast.accentOnSurface' => 'Accent på overfladen',
			'themeEditor.contrast.labelOnAccent' => 'Knapmærkat på accent',
			'themeEditor.lowContrast' => ({required Object pair, required Object ratio, required Object minimum}) => '${pair}: ${ratio}:1, under den anbefalede ${minimum}:1',
			'themeEditor.discardTitle' => 'Vil du kassere ændringer?',
			'themeEditor.discardMessage' => 'Dine ikke-gemte farveændringer vil gå tabt.',
			'themeEditor.discard' => 'Kassér',
			'themeEditor.previewCardTitle' => ({required Object number}) => 'Afsnit ${number}',
			'themeEditor.previewCardSubtitle' => ({required Object minutes}) => '${minutes} min. tilbage',
			'themeEditor.previewSwitch' => 'Autoplay',
			'themeEditor.previewMutedText' => 'Sekundær tekst lyder sådan her',
			'seriesBrowser.oneEpisode' => '1 afsnit',
			'seriesBrowser.watchedCount' => ({required Object count}) => '${count} set',
			'seriesBrowser.episodeCount' => ({required Object count}) => '${count} episoder',
			'seriesBrowser.episodesFor' => ({required Object season}) => '${season} · Afsnit',
			'seriesBrowser.enterHint' => 'Vælg: åben sæson · ↓: afsnit',
			'titlePage.genre' => 'Genre',
			'titlePage.remaining' => ({required Object time}) => '${time} tilbage',
			'titlePage.continueEpisode' => ({required Object season, required Object episode}) => 'Fortsæt S${season} E${episode}',
			'titlePage.watchlist' => 'Overvågningsliste',
			'titlePage.more' => 'Mere',
			'tvMenus.appearanceDescription' => 'Tema, skærmmargener og plakater',
			'lurokaPlayer.title' => 'Afspillerindstillinger',
			'lurokaPlayer.watch' => 'Hold øje med',
			'lurokaPlayer.watchDescription' => 'Sæt tempoet, skru ned, og beslut hvad der skal spilles næste gang.',
			'lurokaPlayer.picture' => 'Billedindstillinger',
			'lurokaPlayer.pictureDescription' => 'Zoom, HDR og videobehandling',
			'lurokaPlayer.sound' => 'Lyd og undertekster',
			'lurokaPlayer.audioSettings' => 'Lydindstillinger',
			'lurokaPlayer.soundDescription' => 'Timing, lydstyrke og lydoutput',
			'lurokaPlayer.chooseTracks' => 'Vælg sprog og undertekstspor',
			'lurokaPlayer.tools' => 'Avanceret',
			'lurokaPlayer.toolsDescription' => 'Afspilningsoplysninger og diagnostik',
			'lurokaPlayer.preferences' => 'Afspilningspræferencer',
			'lurokaPlayer.preferencesDescription' => 'Din biograf, dine standarder. Start med lyd og billedtekster, finjuster derefter streaming og din skærm.',
			'lurokaPlayer.streamPreferences' => 'Streaming kvalitet',
			'lurokaPlayer.displayPreferences' => 'Display',
			'lurokaPlayer.enginePreferences' => 'Avancerede spillermuligheder',
			'lurokaPlayer.seekPreferences' => 'Søger',
			'lurokaPlayer.watchPreferences' => 'Autoplay og spring over',
			'lurokaPlayer.rememberPreferences' => 'Husk præferencer',
			'lurokaSettings.quickSetup' => 'Hurtig opsætning',
			'lurokaSettings.quickSetupDescription' => 'Start med det væsentlige: jævnere tv-browsing, en behagelig skærmtilpasning, dit hjemmelayout og afspilningspræferencer.',
			'lurokaSettings.experience' => 'Din erfaring',
			'lurokaSettings.experienceDescription' => 'Få Luroka til at føles rigtigt: udseende, sprog, afspilning, biblioteker og skærmtid.',
			'lurokaSettings.remoteHint' => '↑ ↓ Gennemse kategorier · → / Vælg Åbn indstillinger · ← Gå tilbage til kategorier',
			'playerChrome.browse' => 'Kapitler & kø',
			'playerChrome.backToPlayback' => 'Tilbage til afspilning',
			'playerChrome.nowPlaying' => 'SPILLER NU',
			'playerChrome.options' => 'SPILLERMULIGHEDER',
			'tvLayout.screenMargins' => 'TV-skærmens marginer',
			'tvLayout.screenMarginsDescription' => 'Krymp appens kanter, hvis dit tv skærer en del af billedet af',
			'tvLayout.screenMarginsDefault' => '0 % (standard)',
			'studios.checkingCopies' => 'Kontrollerer andre biblioteker... Vælg en kendt kopi til enhver tid.',
			'studios.incompleteCopies' => 'Nogle biblioteker kunne ikke kontrolleres. Vælg en kendt kopi, eller annuller og prøv igen.',
			'studios.partialFavorites' => 'Nogle favoritter kunne ikke indlæses. Vælg Opdater for at prøve igen.',
			'studios.copyLookupFailedTitle' => 'Kunne ikke kontrollere alle kopier',
			'studios.copyLookupFailedMessage' => 'Nogle biblioteker svarede ikke. Du kan åbne en af ​​de allerede fundet kopier eller annullere og prøve igen.',
			'studios.openKnownCopies' => 'Vis kendte kopier',
			'studios.browseAll' => 'Gennemse alle',
			'studios.titleCount' => ({required Object count}) => '${count} titler',
			'studios.topRated' => 'Top bedømte',
			'studios.mostWatched' => 'Mest set i dit bibliotek',
			'studios.collection' => 'STUDIO KOLLEKTION',
			'studios.loadedTitles' => ({required Object count}) => '${count} titler indlæst',
			'studios.sort' => 'Sorter titler',
			'studios.sortTitleAscending' => 'Titel A–Z',
			'studios.sortTitleDescending' => 'Titel Z–A',
			'studios.sortNewest' => 'Nyeste udgivelse',
			'studios.sortOldest' => 'Ældste udgivelse',
			'studios.sortAdded' => 'For nylig tilføjet',
			'studios.sortEpisodeAdded' => 'Nyligt tilføjet afsnit',
			'studios.sortRating' => 'Højest vurderet',
			'studios.title' => 'Gennemse efter Studio',
			'studios.all' => 'Alle',
			'studios.movies' => 'Film',
			'studios.shows' => 'TV-shows',
			'studios.loadMore' => 'Indlæs flere titler',
			'studios.empty' => 'Ingen matchende titler i dine aktuelt synlige biblioteker.',
			'studios.retry' => 'Kunne ikke indlæse flere titler – vælg for at prøve igen',
			'studios.description' => 'Udforsk film og serier fra dette studie i dine biblioteker.',
			'dashboard.previousFeature' => 'Tidligere fremhævet titel',
			'dashboard.nextFeature' => 'Næste fremhævede titel',
			'dashboard.cinemaHome' => 'HJEM',
			'dashboard.episodeFallback' => 'Tv-afsnit',
			'dashboard.timeLeft' => ({required Object minutes}) => '${minutes} min. tilbage',
			'dashboard.timeLeftHours' => ({required Object hours, required Object minutes}) => '${hours}h ${minutes}m tilbage',
			'dashboard.spoilerHidden' => 'Episodedetaljer skjult af din spoilerpræference.',
			'dashboard.synopsisUnavailable' => 'Åbn Detaljer for at se mere om denne titel.',
			'dashboard.yourSpace' => 'DIT RUM',
			'dashboard.title' => 'Din biograf.',
			'dashboard.subtitle' => 'Fortsæt en historie, eller find den næste.',
			'dashboard.featured' => 'UDVALGT AF LUROKA',
			'dashboard.jumpBackIn' => 'Fortsæt med at se',
			'dashboard.episodeLabel' => ({required Object season, required Object episode}) => 'S${season} · E${episode}',
			'dashboard.anotherPick' => 'Endnu et valg',
			'dashboard.exploreSeries' => 'Udforsk serier',
			'dashboard.showFeatured' => 'Fokuserede titeldetaljer',
			'dashboard.showFeaturedDescription' => 'Vis illustrationer, synopsis og episodeoplysninger for det fremhævede kort',
			'lurokaCatalog.aboutPerson' => 'I RØJTELYSET',
			'lurokaCatalog.biographyUnavailable' => 'En biografi er ikke tilgængelig fra denne server.',
			'lurokaCatalog.filmography' => 'Film og serier i dine biblioteker',
			'lurokaCatalog.recommended' => 'Anbefalet',
			'lurokaCatalog.browse' => 'Alle titler',
			'lurokaCatalog.collections' => 'Samlinger',
			'lurokaCatalog.browseHint' => 'Udforsk dit katalog. Form udvalget med filtre og sortering.',
			'lurokaCatalog.recommendedHint' => 'Find din næste historie',
			'lurokaCatalog.details' => 'Bag historien',
			'referenceDetails.oneEpisodeLeft' => '1 afsnit tilbage',
			'referenceDetails.playAll' => 'Spil alle',
			'referenceDetails.present' => 'Til stede',
			'referenceDetails.continuing' => 'Fortsætter',
			'referenceDetails.upNext' => 'Næste',
			'referenceDetails.episodesLeft' => ({required Object count}) => '${count} episoder tilbage',
			'lurokaThemes.title' => 'Luroka biografpaletter',
			'lurokaThemes.coral' => 'Koral · midnatsblå & solnedgang',
			'lurokaThemes.ocean' => 'Ocean · dyb blå & is',
			'lurokaThemes.jade' => 'Jade · stedsegrøn & mynte',
			'lurokaThemes.amethyst' => 'Ametyst · midnatsviolet',
			'lurokaThemes.darkThemes' => 'Mørke biograftemaer',
			'lurokaThemes.lightThemes' => 'Lette biograftemaer',
			'lurokaThemes.moreThemes' => 'Flere temaer',
			'lurokaThemes.moreThemesDescription' => 'Gennemse yderligere paletter og brugerdefinerede farver',
			'lurokaThemes.obsidian' => 'Obsidian · ren sort & champagne',
			'lurokaThemes.nocturne' => 'Nocturne · kul & champagne',
			'lurokaThemes.burgundy' => 'Bourgogne · fløjlsvin & rose',
			'lurokaThemes.slate' => 'Skifer · grafit & periwinkle',
			'lurokaThemes.espresso' => 'Espresso · kakao og karamel',
			'lurokaThemes.pearl' => 'Perle · porcelæn & safir',
			'lurokaThemes.linen' => 'Linned · varm elfenben og terracotta',
			'lurokaThemes.sunrise' => 'Solopgang · fersken og koraller',
			'lurokaThemes.coastal' => 'Kystnære · tåge & hav krikand',
			'lurokaThemes.latte' => 'Latte · creme & karamel',
			'lurokaThemes.sage' => 'Salvie · blød grøn & eukalyptus',
			'lurokaThemes.lavender' => 'Lavendel · lilla & dyb violet',
			'customPerformance.title' => 'Ydeevne og effekter',
			'customPerformance.fireStickMode' => 'Energibesparende enhedstilstand',
			'customPerformance.description' => 'Brug reducerede effekter, statiske baggrunde, illustrationer begrænset til 720p og en 40 MiB billedcache. Mens det er aktiveret, tilsidesætter dette visuelle effekter; Hvis du slår den fra, gendanner du din præference for visuelle effekter.',
			'customPerformance.detailsTitle' => 'Ydeevne detaljer',
			'customPerformance.details' => 'Aktive effekter, billedcache-begrænsning og målinger af browserydeevne',
			'customPerformance.effectsTier' => 'Aktive effekter niveau',
			'customPerformance.imageCache' => 'Billed-cache-grænse',
			'customPerformance.measurement' => 'Browsing måling',
			'customPerformance.measureInstructions' => 'Start en 20-sekunders prøve, gå tilbage til Hjem, og brows ved hjælp af fjernbetjeningen. Vend tilbage her for at se resultaterne. Gentag de samme handlinger med tilstanden til og fra for at sammenligne. Dette måler Flutter UI arbejde, ikke video dekoder ydeevne.',
			'customPerformance.startSample' => 'Start 20 sekunders prøve',
			'customPerformance.stopSample' => 'Afslut prøve nu',
			'customPerformance.sampling' => 'Prøvetagning — vend tilbage til Hjem og gennemse. Resultaterne vil blive opbevaret her.',
			'customPerformance.frames' => 'Rammer samplet',
			'customPerformance.slowFrames' => 'Rammer over budget',
			'customPerformance.buildP95' => 'Opbygningstid for brugergrænseflade (95. percentil)',
			'customPerformance.rasterP95' => 'Rastertid (95. percentil)',
			'customPerformance.frameBudget' => 'Budget pr. billede',
			'customPerformance.processMemory' => 'App-proceshukommelse i prøveenden',
			'customPerformance.noFrames' => 'Der blev ikke fanget nogen gengivne rammer. Start en anden prøve, og gennemse appen.',
			'homeLayout.title' => 'Tilpas hjemmet',
			'homeLayout.description' => 'Vælg rækkefølge og synlighed for denne profil. Vælg en række for at flytte eller skjule den.',
			'homeLayout.rows' => 'Hjem rækker',
			'homeLayout.visible' => 'Synlig',
			'homeLayout.hidden' => 'Skjult',
			'homeLayout.showRow' => 'Vis række',
			'homeLayout.hideRow' => 'Skjul række',
			'homeLayout.moveUp' => 'Flyt op',
			'homeLayout.moveDown' => 'Flyt ned',
			'homeLayout.pinnedCollections' => 'Fastgjorte samlinger',
			'homeLayout.pinInstructions' => 'Åbn en samlings menu, og vælg Pin til Hjem. Vælg en fastgjort samling her for at fjerne dens genvej.',
			'homeLayout.pinCollection' => 'Pin til hjemmet',
			'homeLayout.unpinCollection' => 'Frigør fra hjemmet',
			'homeLayout.reset' => 'Gendan standardrækker',
			'homeLayout.resetDescription' => 'Vil du gendanne den oprindelige rækkefølge og vise alle rækker for denne profil? Dine fastgjorte samlinger bevares.',
			'homeLayout.saveFailed' => 'Dit hjemlayout kunne ikke gemmes. Prøv venligst igen.',
			'homeLayout.emptyHint' => 'Rækker kan være skjulte. Åbn Tilpas hjem for at vise dem igen.',
			'screenTime.title' => 'Skærmtid',
			'screenTime.description' => 'Se tid brugt på at se video på denne profil',
			'screenTime.today' => 'I dag',
			'screenTime.thisWeek' => 'Denne uge',
			'screenTime.thisMonth' => 'Denne måned',
			'screenTime.lessThanMinute' => '< 1 min',
			'screenTime.minutes' => ({required Object count}) => '${count} min',
			'screenTime.hours' => ({required Object count}) => '${count} t',
			'screenTime.hoursMinutes' => ({required Object hours, required Object minutes}) => '${hours} t ${minutes} min',
			'activityStats.title' => 'Visning af statistik',
			'activityStats.period' => 'Periode',
			'activityStats.last7Days' => '7 dage',
			'activityStats.last30Days' => '30 dage',
			'activityStats.last90Days' => '90 dage',
			'activityStats.thisYear' => 'år',
			'activityStats.allTime' => 'Alle',
			'activityStats.heroAllTime' => 'Hele tiden',
			'activityStats.heroDailyAverage' => 'Dagligt gennemsnit',
			'activityStats.consistency' => 'Konsistens',
			'activityStats.currentStreak' => 'Nuværende streak',
			'activityStats.dayCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n, one: '${n} dag', other: '${n} dage', ), 
			'activityStats.longestStreak' => 'Længste streak',
			'activityStats.bestDay' => 'Bedste dag',
			'activityStats.bestWeek' => 'Bedste uge',
			'activityStats.trendTitle' => 'Se tid',
			'activityStats.trendToday' => 'I dag',
			'activityStats.gapDetail' => ({required Object stat, required Object range}) => '${stat} på ${range}',
			'activityStats.weekdayTitle' => 'På hverdage',
			'activityStats.hoursTitle' => 'Efter tidspunkt på dagen',
			'activityStats.amLabel' => 'AM',
			'activityStats.pmLabel' => 'PM',
			'activityStats.kindsTitle' => 'Efter kategori',
			'activityStats.kindMovie' => 'Film',
			'activityStats.kindTv' => 'TV',
			'activityStats.kindLiveTv' => 'Live-tv',
			'activityStats.kindMusic' => 'Musik',
			'activityStats.kindOther' => 'Andet',
			'activityStats.topTitlesTitle' => 'Mest set',
			'activityStats.sessionsTitle' => 'Seneste sessioner',
			'activityStats.showMore' => 'Vis mere',
			'activityStats.sessionNoTitle' => 'Uidentificeret afspilning',
			'activityStats.emptyTitle' => 'Intet her endnu',
			'activityStats.emptyBody' => 'Se noget, og din statistik vil bygge op her.',
			'activityStats.noDataInPeriod' => 'Der er ikke optaget nogen afspilning i denne periode.',
			'search.hint' => 'Søg film, serier, musik...',
			'search.tryDifferentTerm' => 'Prøv en anden søgning',
			'search.searchYourMedia' => 'Søg i dine medier',
			'search.enterTitleActorOrKeyword' => 'Indtast titel, skuespiller eller nøgleord',
			'search.people' => 'Mennesker',
			'search.recentSearches' => 'Seneste søgninger',
			'search.clearHistory' => 'Ryd historik',
			'hotkeys.setShortcutFor' => ({required Object actionName}) => 'Indstil genvej for ${actionName}',
			'hotkeys.clearShortcut' => 'Ryd genvej',
			'hotkeys.noShortcutSet' => 'Ingen genvej angivet',
			'hotkeys.currentShortcut' => 'Nuværende genvej:',
			'hotkeys.pressToRecord' => 'Vælg for at registrere en genvej',
			'hotkeys.recordingShortcut' => 'Tryk på genvejen nu',
			'hotkeys.actions.playPause' => 'Afspil/Pause',
			'hotkeys.actions.volumeUp' => 'Lydstyrke op',
			'hotkeys.actions.volumeDown' => 'Lydstyrke ned',
			'hotkeys.actions.seekForward' => ({required Object seconds}) => 'Spol frem (${seconds}s)',
			'hotkeys.actions.seekBackward' => ({required Object seconds}) => 'Spol tilbage (${seconds}s)',
			'hotkeys.actions.fullscreenToggle' => 'Slå fuldskærm til/fra',
			'hotkeys.actions.muteToggle' => 'Slå lyd til/fra',
			'hotkeys.actions.subtitleToggle' => 'Slå undertekster til/fra',
			'hotkeys.actions.audioTrackNext' => 'Næste lydspor',
			'hotkeys.actions.subtitleTrackNext' => 'Næste undertekstspor',
			'hotkeys.actions.chapterNext' => 'Næste kapitel',
			'hotkeys.actions.chapterPrevious' => 'Forrige kapitel',
			'hotkeys.actions.episodeNext' => 'Næste afsnit',
			'hotkeys.actions.episodePrevious' => 'Forrige afsnit',
			'hotkeys.actions.speedIncrease' => 'Øg hastighed',
			'hotkeys.actions.speedDecrease' => 'Sænk hastighed',
			'hotkeys.actions.speedReset' => 'Nulstil hastighed',
			'hotkeys.actions.zoomIn' => 'Zoom ind',
			'hotkeys.actions.zoomOut' => 'Zoom ud',
			'hotkeys.actions.zoomReset' => 'Nulstil zoom',
			'hotkeys.actions.subSeekNext' => 'Søg til næste undertekst',
			'hotkeys.actions.subSeekPrev' => 'Søg til forrige undertekst',
			'hotkeys.actions.shaderToggle' => 'Slå shadere til/fra',
			'hotkeys.actions.skipMarker' => 'Spring intro/rulletekster over',
			'hotkeys.actions.screenshot' => 'Tag skærmbillede',
			'fileInfo.title' => 'Filinfo',
			'fileInfo.overview' => 'Oversigt',
			'fileInfo.video' => 'Video',
			'fileInfo.audio' => 'Lyd',
			'fileInfo.subtitles' => 'Undertekster',
			'fileInfo.images' => 'Indlejrede billeder',
			'fileInfo.dataStreams' => 'Datastrømme',
			'fileInfo.lyrics' => 'Tekster',
			'fileInfo.file' => 'Fil',
			'fileInfo.attachments' => 'Vedhæftninger',
			'fileInfo.delivery' => 'Levering',
			'fileInfo.versionCounter' => ({required Object index, required Object count}) => 'Version ${index} af ${count}',
			'fileInfo.fileCounter' => ({required Object index, required Object count}) => 'Fil ${index} af ${count}',
			'fileInfo.noStreams' => 'Serveren rapporterede ingen strømme for denne fil.',
			'fileInfo.copyPath' => 'Kopiér sti',
			'fileInfo.pathCopied' => 'Filstien er kopieret',
			'fileInfo.codec' => 'Codec',
			'fileInfo.codecTag' => 'Codec-tag',
			'fileInfo.resolution' => 'Opløsning',
			'fileInfo.codedResolution' => 'Kodet opløsning',
			'fileInfo.bitrate' => 'Bitrate',
			'fileInfo.frameRate' => 'Billedhastighed',
			'fileInfo.rotation' => 'Rotation',
			'fileInfo.comment' => 'Kommentar',
			'fileInfo.audioDescription' => 'Lydbeskrivelse',
			'fileInfo.headerCompression' => 'Headerkomprimering',
			'fileInfo.sidecarFile' => 'Sidecar-fil',
			'fileInfo.transportTimestamp' => 'Transporttidsstempel',
			'fileInfo.displayOffset' => 'Visningsforskydning',
			'fileInfo.previewFailureCode' => 'Preview-fejlkode',
			'fileInfo.previewRetries' => 'Preview-forsøg',
			'fileInfo.aspectRatio' => 'Billedformat',
			'fileInfo.pixelAspectRatio' => 'Pixel-billedformat',
			'fileInfo.profile' => 'Profil',
			'fileInfo.level' => 'Niveau',
			'fileInfo.bitDepth' => 'Bitdybde',
			'fileInfo.pixelFormat' => 'Pixelformat',
			'fileInfo.colorSpace' => 'Farverum',
			'fileInfo.colorRange' => 'Farveområde',
			'fileInfo.colorPrimaries' => 'Farveprimærer',
			'fileInfo.colorTransfer' => 'Farveoverførsel',
			'fileInfo.chromaSubsampling' => 'Chroma-subsampling',
			'fileInfo.chromaLocation' => 'Chroma-placering',
			'fileInfo.scanType' => 'Scanningstype',
			'fileInfo.interlaced' => 'Interlaced',
			'fileInfo.anamorphic' => 'Anamorfisk',
			'fileInfo.referenceFrames' => 'Referenceframes',
			'fileInfo.dynamicRange' => 'Dynamisk område',
			'fileInfo.dolbyVision' => 'Dolby Vision',
			'fileInfo.dolbyVisionLevel' => 'Dolby Vision-niveau',
			'fileInfo.dolbyVisionVersion' => 'Dolby Vision-version',
			'fileInfo.dolbyVisionLayers' => 'Dolby Vision-lag',
			'fileInfo.baseLayerCompatibility' => 'Basislagskompatibilitet',
			'fileInfo.avcBitstream' => 'AVC-bitstrøm',
			'fileInfo.nalLengthSize' => 'NAL-længdestørrelse',
			'fileInfo.scalingMatrix' => 'Brugerdefineret skaleringsmatrix',
			'fileInfo.streamIdentifier' => 'Strømidentifikator',
			'fileInfo.streamIndex' => 'Strømindex',
			'fileInfo.streamId' => 'Strøm-ID',
			'fileInfo.language' => 'Sprog',
			'fileInfo.languageCode' => 'Sprogkode',
			'fileInfo.streamTitle' => 'Sportitel',
			'fileInfo.channels' => 'Kanaler',
			'fileInfo.sampleRate' => 'Samplingshastighed',
			'fileInfo.spatialAudio' => 'Rumlig lyd',
			'fileInfo.textBased' => 'Tekstbaseret',
			'fileInfo.subtitleFormat' => 'Sidecar-format',
			'fileInfo.provider' => 'Udbydder',
			'fileInfo.matchScore' => 'Matchscore',
			'fileInfo.externalDelivery' => 'Kan leveres separat',
			'fileInfo.sidecarPath' => 'Sidecar-sti',
			'fileInfo.sourceStream' => 'Kopieret fra',
			'fileInfo.temporary' => 'Midlertidig',
			'fileInfo.timeBase' => 'Tidsbase',
			'fileInfo.overallBitrate' => 'Samlet bitrate',
			'fileInfo.path' => 'Sti',
			'fileInfo.fileName' => 'Filnavn',
			'fileInfo.size' => 'Størrelse',
			'fileInfo.totalSize' => 'Samlet størrelse',
			'fileInfo.container' => 'Container',
			'fileInfo.duration' => 'Varighed',
			'fileInfo.previewThumbnails' => 'Preview-thumbnails',
			'fileInfo.previewIndex' => 'Preview-index',
			'fileInfo.packetLength' => 'Pakkelængde',
			'fileInfo.filePresent' => 'Fil til stede',
			'fileInfo.fileReadable' => 'Læsbar af serveren',
			'fileInfo.streamPath' => 'Strømsti',
			'fileInfo.optimizedForStreaming' => 'Optimeret til streaming',
			'fileInfo.has64bitOffsets' => '64-bit-forskydninger',
			'fileInfo.protocol' => 'Protokol',
			'fileInfo.mediaType' => 'Medietype',
			'fileInfo.sourceKind' => 'Kildetype',
			'fileInfo.optimizedVersion' => 'Optimeret version',
			'fileInfo.optimizationTarget' => 'Optimeringsmål',
			'fileInfo.deletedAt' => 'Slettet',
			'fileInfo.remoteSource' => 'Fjernkilde',
			'fileInfo.infiniteStream' => 'Uendelig strøm',
			'fileInfo.directPlay' => 'Direkte afspilning',
			'fileInfo.directStream' => 'Direkte strømning',
			'fileInfo.transcoding' => 'Transkodning',
			'fileInfo.etag' => 'ETag',
			'fileInfo.versionId' => 'Versions-ID',
			'fileInfo.fileId' => 'Fil-ID',
			'fileInfo.defaultAudioTrack' => 'Standard lydspor',
			'fileInfo.defaultSubtitleTrack' => 'Standard undertekstspor',
			'fileInfo.subtitlesOff' => 'Fra',
			'fileInfo.flagDefault' => 'Standard',
			'fileInfo.flagForced' => 'Tvunget',
			'fileInfo.flagSelected' => 'Valgt',
			'fileInfo.flagExternal' => 'Ekstern',
			'fileInfo.flagHearingImpaired' => 'Hørehæmmede',
			'fileInfo.flagDub' => 'Dub',
			'fileInfo.flagOriginal' => 'Original',
			'fileInfo.channelsMono' => 'Mono',
			'fileInfo.dolbyVisionProfile' => ({required Object profile}) => 'Profil ${profile}',
			'mediaMenu.markAsWatched' => 'Markér som set',
			'mediaMenu.markAsUnwatched' => 'Markér som uset',
			'mediaMenu.clearProgress' => 'Klare fremskridt',
			'mediaMenu.removeFromContinueWatching' => 'Fjern fra Fortsæt med at se',
			'mediaMenu.viewDetails' => 'Vis detaljer',
			'mediaMenu.goToSeries' => 'Gå til serie',
			'mediaMenu.shufflePlay' => 'Afspil tilfældigt',
			'mediaMenu.shuffleNotAvailableOffline' => 'Tilfældig afspilning er ikke tilgængelig offline',
			'mediaMenu.fileInfo' => 'Filinfo',
			'mediaMenu.deleteEpisodeFromServer' => 'Slet episode fra serveren',
			'mediaMenu.deleteSeasonFromServer' => 'Slet sæson fra serveren',
			'mediaMenu.deleteShowFromServer' => 'Slet TV-serie fra serveren',
			'mediaMenu.deleteMovieFromServer' => 'Slet film fra serveren',
			'mediaMenu.deleteEpisodeTitle' => 'Slet denne episode?',
			'mediaMenu.deleteSeasonTitle' => 'Slet denne sæson?',
			'mediaMenu.deleteShowTitle' => 'Slet denne TV-serie?',
			'mediaMenu.deleteMovieTitle' => 'Slet denne film?',
			'mediaMenu.deleteEpisodeConfirm' => 'Slet episode',
			'mediaMenu.deleteSeasonConfirm' => 'Slet sæson',
			'mediaMenu.deleteShowConfirm' => 'Slet TV-serie',
			'mediaMenu.deleteMovieConfirm' => 'Slet film',
			'mediaMenu.deleteAnyway' => 'Slet alligevel',
			'mediaMenu.confirmDeleteTarget' => ({required Object title}) => 'Slet ${title} permanent fra din server?',
			'mediaMenu.deleteMultipleWarning' => 'Dette inkluderer alle episoder og deres filer.',
			'mediaMenu.deleteEpisodeCountWarning' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n, one: 'Dette sletter alle ${n} episode i den og dens fil.', other: 'Dette sletter alle ${n} episoder i den og deres filer.', ), 
			'mediaMenu.deleteMultiPartWarning' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n, one: 'Dette emne er gemt som ${n} fil, som vil blive slettet.', other: 'Dette emne er gemt på tværs af ${n} filer, og alle vil blive slettet.', ), 
			'mediaMenu.deleteSharedFileHeading' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n, one: '${n} anden episode er gemt i samme fil og vil også blive slettet:', other: '${n} andre episoder er gemt i samme fil og vil også blive slettet:', ), 
			'mediaMenu.deleteScopeUnverifiedProbeFailed' => 'Luroka kunne ikke kontrollere, hvilke filer dette vil fjerne, så det kan slette mere end det ovennævnte emne. Annuller og prøv igen, eller slet alligevel.',
			'mediaMenu.deleteScopeUnverifiedNoFileInfo' => 'Din server leverede ikke filoplysninger for dette emne, så Luroka kan ikke kontrollere, hvilke filer dette vil fjerne. Det kan slette mere end det ovennævnte emne.',
			'mediaMenu.mediaDeletedSuccessfully' => 'Mediet blev slettet',
			'mediaMenu.mediaFailedToDelete' => 'Mediet kunne ikke slettes',
			'mediaMenu.rate' => 'Bedøm',
			'mediaMenu.playFromBeginning' => 'Afspil fra begyndelsen',
			'mediaMenu.playVersion' => 'Afspil version...',
			'rateSheet.title' => 'Bedøm',
			'rateSheet.server' => 'Server',
			'rateSheet.favorite' => 'Favorit',
			'rateSheet.favorited' => 'Føjet til favoritter',
			'rateSheet.saved' => 'Gemt',
			'rateSheet.notAvailable' => 'Intet match fundet',
			'rateSheet.noConnectedServices' => 'Forbind en tjeneste under Indstillinger for at bedømme via den.',
			'accessibility.mediaCardMovie' => ({required Object title}) => '${title}, film',
			'accessibility.mediaCardShow' => ({required Object title}) => '${title}, TV-serie',
			'accessibility.mediaCardEpisode' => ({required Object title, required Object episodeInfo}) => '${title}, ${episodeInfo}',
			'accessibility.mediaCardSeason' => ({required Object title, required Object seasonInfo}) => '${title}, ${seasonInfo}',
			'accessibility.mediaCardWatched' => 'set',
			'accessibility.mediaCardPartiallyWatched' => ({required Object percent}) => '${percent} procent set',
			'accessibility.mediaCardUnwatched' => 'uset',
			'accessibility.tapToPlay' => 'Tryk for at afspille',
			'accessibility.decrease' => 'Formindsk',
			'accessibility.increase' => 'Forøg',
			'accessibility.decreaseValue' => ({required Object label}) => 'Formindsk ${label}',
			'accessibility.increaseValue' => ({required Object label}) => 'Forøg ${label}',
			'accessibility.hue' => 'Farvetone',
			'accessibility.saturation' => 'Mætning',
			'accessibility.brightness' => 'Lysstyrke',
			'accessibility.hexColor' => 'Hexfarve',
			'accessibility.expandText' => 'Udvid tekst',
			'accessibility.collapseText' => 'Fold tekst sammen',
			'accessibility.alphabetNavigation' => 'Alfabetnavigation',
			'accessibility.alphabetScrollHint' => 'Stryg op eller ned for at flytte ét bogstav',
			'accessibility.rowColumnPosition' => ({required Object row, required Object rowCount, required Object column, required Object columnCount}) => 'Række ${row} af ${rowCount}, kolonne ${column} af ${columnCount}',
			'accessibility.rowPosition' => ({required Object row, required Object rowCount}) => 'Række ${row} af ${rowCount}',
			'accessibility.autoScrollPlay' => 'Start automatisk rulning',
			'accessibility.autoScrollPause' => 'Sæt automatisk rulning på pause',
			'accessibility.hueShort' => 'H',
			'accessibility.saturationShort' => 'S',
			'accessibility.valueShort' => 'V',
			'tooltips.shufflePlay' => 'Afspil tilfældigt',
			'tooltips.playTrailer' => 'Afspil trailer',
			'tooltips.markAsWatched' => 'Markér som set',
			'tooltips.markAsUnwatched' => 'Markér som uset',
			'audioTracks.track' => ({required Object n}) => 'Lydspor ${n}',
			'videoControls.audioLabel' => 'Lyd',
			'videoControls.subtitlesLabel' => 'Undertekster',
			'videoControls.addTime' => ({required Object amount, required Object unit}) => '+${amount}${unit}',
			'videoControls.letterbox' => 'Letterbox',
			'videoControls.fillScreen' => 'Fyld skærm',
			'videoControls.stretch' => 'Stræk',
			'videoControls.lockRotation' => 'Lås rotation',
			'videoControls.unlockRotation' => 'Lås rotation op',
			'videoControls.timerActive' => 'Timer aktiv',
			'videoControls.playbackWillPauseIn' => ({required Object duration}) => 'Afspilningen sættes på pause om ${duration}',
			'videoControls.sleepTimerEndOfVideo' => 'Slutningen af aktuel video',
			'videoControls.sleepTimerStopAtHeader' => 'Stop ved',
			'videoControls.sleepTimerDurationHeader' => 'Varighed',
			'videoControls.playbackWillPauseAtEnd' => 'Afspilningen sættes på pause ved slutningen af denne video',
			'videoControls.stillWatching' => 'Ser du stadig?',
			'videoControls.pausingIn' => ({required Object seconds}) => 'Sætter på pause om ${seconds} s',
			'videoControls.continueWatching' => 'Fortsæt',
			'videoControls.autoPlayNext' => 'Afspil næste automatisk',
			'videoControls.playNext' => 'Afspil næste',
			'videoControls.playButton' => 'Afspil',
			'videoControls.pauseButton' => 'Pause',
			'videoControls.playbackPaused' => 'Pauseret',
			'videoControls.playbackResumed' => 'Afspiller',
			'videoControls.loadingVideo' => 'Indlæser video',
			'videoControls.showPlaybackControls' => 'Vis afspilningsknapper',
			'videoControls.hidePlaybackControls' => 'Skjul afspilningsknapper',
			'videoControls.seekBackwardButton' => ({required Object seconds}) => 'Spol ${seconds} sekunder tilbage',
			'videoControls.seekForwardButton' => ({required Object seconds}) => 'Spol ${seconds} sekunder frem',
			'videoControls.previousButton' => 'Forrige episode',
			_ => null,
		} ?? switch (path) {
			'videoControls.nextButton' => 'Næste episode',
			'videoControls.previousChapterButton' => 'Forrige kapitel',
			'videoControls.nextChapterButton' => 'Næste kapitel',
			'videoControls.muteButton' => 'Slå lyden fra',
			'videoControls.unmuteButton' => 'Slå lyden til',
			'videoControls.settingsButton' => 'Afspilningsindstillinger',
			'videoControls.infoButton' => 'Info',
			'videoControls.tracksButton' => 'Lyd og undertekster',
			'videoControls.chaptersButton' => 'Kapitler',
			'videoControls.versionQualityButton' => 'Version og kvalitet',
			'videoControls.versionColumnHeader' => 'Version',
			'videoControls.qualityColumnHeader' => 'Kvalitet',
			'videoControls.qualityOriginal' => 'Original',
			'videoControls.qualityPresetLabel' => ({required Object resolution, required Object bitrate}) => '${resolution}p ${bitrate} Mbps',
			'videoControls.transcodeUnavailableFallback' => 'Transkodning utilgængelig — afspiller original kvalitet',
			'videoControls.subtitleUnavailableFallback' => 'De valgte undertekster kunne ikke indlæses — afspilningen fortsætter uden undertekster',
			'videoControls.pipButton' => 'Billede-i-billede-tilstand',
			'videoControls.aspectRatioButton' => 'Billedformat',
			'videoControls.ambientLighting' => 'Omgivelsesbelysning',
			'videoControls.fullscreenButton' => 'Fuldskærm',
			'videoControls.exitFullscreenButton' => 'Forlad fuldskærm',
			'videoControls.alwaysOnTopButton' => 'Altid øverst',
			'videoControls.rotationLockButton' => 'Rotationslås',
			'videoControls.lockScreen' => 'Lås skærm',
			'videoControls.screenLockButton' => 'Skærmlås',
			'videoControls.longPressToUnlock' => 'Hold nede for at låse op',
			'videoControls.timelineSlider' => 'Videotidslinje',
			'videoControls.volumeSlider' => 'Lydstyrkeniveau',
			'videoControls.endsAt' => ({required Object time}) => 'Slutter kl. ${time}',
			'videoControls.pipActive' => 'Afspiller i billede-i-billede',
			'videoControls.pipFailed' => 'Billede-i-billede kunne ikke starte',
			'videoControls.screenshotSaved' => 'Skærmbillede gemt',
			'videoControls.screenshotFailed' => 'Kunne ikke tage et skærmbillede',
			'videoControls.zoomPercent' => ({required Object percent}) => 'Zoom ${percent}%',
			'videoControls.volumePercent' => ({required Object percent}) => 'Lydstyrke ${percent}%',
			'videoControls.pipErrors.androidVersion' => 'Kræver Android 8.0 eller nyere',
			'videoControls.pipErrors.iosVersion' => 'Kræver iOS 15.0 eller nyere',
			'videoControls.pipErrors.permissionDisabled' => 'Billede-i-billede er deaktiveret. Slå det til i systemindstillinger.',
			'videoControls.pipErrors.notSupported' => 'Enheden understøtter ikke billede-i-billede',
			'videoControls.pipErrors.voSwitchFailed' => 'Kunne ikke skifte videooutput til billede-i-billede',
			'videoControls.pipErrors.failed' => 'Billede-i-billede kunne ikke starte',
			'videoControls.pipErrors.prepareFailed' => 'Billede-i-billede kunne ikke forberedes',
			'videoControls.pipErrors.unknown' => ({required Object error}) => 'Der opstod en fejl: ${error}',
			'videoControls.chapters' => 'Kapitler',
			'videoControls.noChaptersAvailable' => 'Ingen kapitler tilgængelige',
			'videoControls.queue' => 'Kø',
			'videoControls.noQueueItems' => 'Ingen elementer i køen',
			'videoControls.noAudioDevicesAvailable' => 'Ingen lydenheder tilgængelige',
			'videoControls.searchSubtitles' => 'Søg undertekster',
			'videoControls.language' => 'Sprog',
			'videoControls.noSubtitlesFound' => 'Ingen undertekster fundet',
			'videoControls.subtitleDownloaded' => 'Undertekst downloadet',
			'videoControls.subtitleDownloadedNotApplied' => 'Underteksten blev downloadet, men kunne ikke vælges',
			'videoControls.subtitleDownloadFailed' => 'Kunne ikke downloade undertekst',
			'videoControls.searchLanguages' => 'Søg sprog...',
			'videoControls.skipIntro' => 'Spring intro over',
			'videoControls.skipCredits' => 'Spring rulletekster over',
			'videoControls.nextEpisode' => 'Næste episode',
			'videoControls.subtitleTrack' => ({required Object n}) => 'Spor ${n}',
			'videoControls.subtitleFile' => ({required Object name}) => 'Undertekst ${name}',
			'videoControls.forcedTrack' => ({required Object label}) => '${label} (tvunget)',
			'videoControls.osdSubtitlesOff' => 'Undertekster: Fra',
			'videoControls.osdSubtitles' => ({required Object track}) => 'Undertekster: ${track}',
			'videoControls.osdAudio' => ({required Object track}) => 'Lyd: ${track}',
			'messages.markedAsWatched' => 'Markeret som set',
			'messages.markedAsUnwatched' => 'Markeret som uset',
			'messages.markedAsWatchedOffline' => 'Markeret som set (synkroniseres online)',
			'messages.markedAsUnwatchedOffline' => 'Markeret som uset (synkroniseres online)',
			'messages.autoRemovedWatchedDownload' => ({required Object title}) => 'Automatisk fjernet: ${title}',
			'messages.autoRemovedWatchedDownloads' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n, one: 'Fjernede automatisk ${n} set download', other: 'Fjernede automatisk ${n} sete downloads', ), 
			'messages.removedFromContinueWatching' => 'Fjernet fra Fortsæt med at se',
			'messages.errorLoading' => ({required Object error}) => 'Fejl: ${error}',
			'messages.searchPartialResults' => 'Nogle medieservere kunne ikke søges i. Viser tilgængelige resultater.',
			'messages.streamInterrupted' => 'Streamen blev afbrudt. Tryk på afspil, eller spol for at prøve igen.',
			'messages.liveStreamInterrupted' => 'Livestreamen blev afbrudt. Tryk på afspil for at prøve igen.',
			'messages.fileInfoNotAvailable' => 'Filinfo ikke tilgængelig',
			'messages.playbackAuthenticationRequired' => 'Log ind på medieserveren igen for at afspille dette element.',
			'messages.playbackServerUnavailable' => 'Medieserveren er ikke tilgængelig. Prøv igen senere.',
			'messages.playbackDataInvalid' => 'Serveren returnerede ugyldige afspilningsoplysninger.',
			'messages.playbackCancelled' => 'Afspilningen blev annulleret.',
			'messages.playbackFailed' => 'Afspilningen kunne ikke startes.',
			'messages.playbackFailedDetail' => ({required Object error}) => 'Afspilningen kunne ikke startes: ${error}',
			'messages.audioOutputFailed' => 'Lydoutputtet reagerer ikke længere. Tjek lydforbindelsen til tv\'et eller receiveren; hvis andre apps heller ikke har lyd, skal du genstarte enheden.',
			'messages.mediaUnavailable' => 'Dette indhold er ikke længere tilgængeligt.',
			'messages.errorLoadingFileInfo' => ({required Object error}) => 'Fejl ved indlæsning af filinfo: ${error}',
			'messages.errorLoadingSeries' => 'Fejl ved indlæsning af serie',
			'messages.musicNotSupported' => 'Musikafspilning understøttes endnu ikke',
			'messages.noDescriptionAvailable' => 'Ingen beskrivelse tilgængelig',
			'messages.noProfilesAvailable' => 'Ingen profiler tilgængelige',
			'messages.contactAdminForProfiles' => 'Kontakt din serveradministrator for at tilføje profiler',
			'messages.unableToDetermineLibrarySection' => 'Kunne ikke finde bibliotekssektionen for dette element',
			'messages.logsCleared' => 'Logfilerne blev ryddet',
			'messages.logsCopied' => 'Logfilerne blev kopieret til udklipsholderen',
			'messages.noLogsAvailable' => 'Ingen logfiler tilgængelige',
			'messages.libraryScanning' => ({required Object title}) => 'Scanner "${title}"...',
			'messages.libraryScanStarted' => ({required Object title}) => 'Biblioteksscanning startet for "${title}"',
			'messages.libraryScanFailed' => ({required Object error}) => 'Kunne ikke scanne bibliotek: ${error}',
			'messages.metadataRefreshing' => ({required Object title}) => 'Opdaterer metadata for "${title}"...',
			'messages.metadataRefreshStarted' => ({required Object title}) => 'Metadataopdatering startet for "${title}"',
			'messages.metadataRefreshFailed' => ({required Object error}) => 'Kunne ikke opdatere metadata: ${error}',
			'messages.logoutConfirm' => 'Er du sikker på, at du vil logge ud?',
			'messages.noSeasonsFound' => 'Ingen sæsoner fundet',
			'messages.seasonsLoadFailed' => 'Kunne ikke indlæse sæsoner',
			'messages.noEpisodesFound' => 'Ingen episoder fundet i første sæson',
			'messages.noEpisodesFoundGeneral' => 'Ingen episoder fundet',
			'messages.episodesLoadFailed' => 'Kunne ikke indlæse episoder',
			'messages.noResultsFound' => 'Ingen resultater fundet',
			'messages.sleepTimerSet' => ({required Object label}) => 'Sove-timer indstillet til ${label}',
			'messages.noItemsAvailable' => 'Ingen elementer tilgængelige',
			'messages.failedToCreatePlayQueueNoItems' => 'Kunne ikke oprette en afspilningskø — ingen elementer',
			'messages.failedPlayback' => ({required Object action, required Object error}) => 'Kunne ikke ${action}: ${error}',
			'messages.switchingToCompatiblePlayer' => 'Skifter til kompatibel afspiller...',
			'messages.serverLimitTitle' => 'Afspilning mislykkedes',
			'messages.serverLimitBody' => 'Serverfejl (HTTP 500). En båndbredde- eller transkodningsgrænse afviste sandsynligvis sessionen. Bed ejeren om at justere den.',
			'messages.mediaUnreadableTitle' => 'Fil utilgængelig',
			'messages.mediaUnreadableBody' => 'Serveren fandt dette emne, men kunne ikke læse filen (HTTP 404). Filen er sandsynligvis flyttet, slettet, eller dens lager er offline. Bed serverejeren om at kontrollere filen og scanne biblioteket igen.',
			'messages.serverBusyTitle' => 'Stream er ikke tilgængelig',
			'messages.serverBusyBody' => 'Serveren blev ved med at afvise at streame denne fil (HTTP 503). Den er muligvis ved at genstarte eller optaget, eller filens lager er muligvis offline. Prøv igen om et øjeblik – hvis det bliver ved med at ske, skal du bede serverejeren om at kontrollere serveren og filens lager.',
			'messages.playbackNotAllowedTitle' => 'Afspilning er ikke tilladt',
			'messages.playbackNotAllowedBody' => 'Serveren afviste at streame dette emne (HTTP 403). Din konto har muligvis ikke tilladelse til at afspille det, eller serveren tillader muligvis kun afspilning på sit lokale netværk.',
			'messages.logsUploaded' => 'Logfilerne blev uploadet',
			'messages.logsUploadFailed' => 'Logfilerne kunne ikke uploades',
			'messages.logId' => 'Log-ID',
			'messages.burnedSubtitlesUseMenu' => 'Underteksterne er indbrændt i denne stream. Skift dem i undertekstmenuen.',
			'messages.noVideoUrl' => 'Ingen video-URL er tilgængelig',
			'messages.playbackNoMediaSources' => 'Serveren returnerede ingen mediekilder, der kan afspilles',
			'messages.playbackDataNotPrepared' => 'Afspilningen blev startet, før dens data var klar',
			'messages.streamSelectionUnavailable' => 'Valg af stream er ikke tilgængeligt for denne kilde',
			'messages.streamSelectionFailed' => 'Kunne ikke anvende de valgte streams',
			'messages.trackSelectionNotRemembered' => 'Dette sporvalg gælder kun for den aktuelle afspilning.',
			'messages.serverUnavailableForProfile' => 'Ingen server er tilgængelig for den aktive profil',
			'sourceLibraries.title' => 'Dine servere og biblioteker',
			'sourceLibraries.description' => 'Vælg de biblioteker, Luroka bruger til Hjem, søgning, Opdag tilgængelighed og Studios. Hjemmerækkefølgen tilpasses separat.',
			'sourceLibraries.partial' => 'Nogle servere kunne ikke kontrolleres. Dine gemte valg for disse biblioteker bevares. Opdater for at prøve igen.',
			'sourceLibraries.loadFailed' => 'Kunne ikke indlæse dine biblioteker. Kontroller forbindelsen, og prøv igen.',
			'sourceLibraries.notSelected' => 'Ikke tilgængelig i dine valgte biblioteker.',
			'sourceLibraries.checkOthers' => 'Tjek andre tilsluttede kilder',
			'sourceLibraries.otherSources' => 'Tilgængelig på andre tilsluttede kilder',
			'sourceLibraries.playOnce' => 'Spil én gang',
			'sourceLibraries.includeLibrary' => 'Inkluder dette bibliotek',
			'sourceLibraries.noOthers' => 'Ingen kopier fundet på andre tilsluttede kilder.',
			'sourceLibraries.chooseOne' => 'Vælg mindst ét ​​bibliotek for at fortsætte.',
			'subtitlingStyling.text' => 'Tekst',
			'subtitlingStyling.border' => 'Kant',
			'subtitlingStyling.background' => 'Baggrund',
			'subtitlingStyling.fontSize' => 'Skriftstørrelse',
			'subtitlingStyling.textColor' => 'Tekstfarve',
			'subtitlingStyling.borderSize' => 'Kantstørrelse',
			'subtitlingStyling.borderColor' => 'Kantfarve',
			'subtitlingStyling.backgroundOpacity' => 'Baggrundsopacitet',
			'subtitlingStyling.backgroundColor' => 'Baggrundsfarve',
			'subtitlingStyling.position' => 'Position',
			'subtitlingStyling.assOverride' => 'ASS-tilsidesættelse',
			'subtitlingStyling.overrideScale' => 'Skaler',
			'subtitlingStyling.overrideForce' => 'Gennemtving',
			'subtitlingStyling.overrideStrip' => 'Fjern formatering',
			'subtitlingStyling.positionTop' => 'Øverst',
			'subtitlingStyling.positionBottom' => 'Nederst',
			'subtitlingStyling.useMargins' => 'Brug margener',
			'subtitlingStyling.useMarginsDescription' => 'Tillad tekstundertekster i området uden for videoen. Formaterede undertekster kan beholde deres oprindelige placering.',
			'subtitlingStyling.anchorToScreen' => 'Fastgør til skærmen',
			'subtitlingStyling.anchorToScreenDescription' => 'Vis tekstundertekster i de sorte bjælker under video i bredformat',
			'subtitlingStyling.bold' => 'Fed',
			'subtitlingStyling.italic' => 'Kursiv',
			'subtitlingStyling.renderResolution' => 'Gengivelsesopløsning',
			'subtitlingStyling.renderResolutionScreen' => 'Skærmopløsning',
			'subtitlingStyling.renderResolutionVideo' => 'Videoopløsning',
			'mpvConfig.title' => 'mpv.conf',
			'mpvConfig.description' => 'Avancerede videoafspillerindstillinger',
			'mpvConfig.presets' => 'Forudindstillinger',
			'mpvConfig.noPresets' => 'Ingen gemte forudindstillinger',
			'mpvConfig.saveAsPreset' => 'Gem som forudindstilling...',
			'mpvConfig.presetName' => 'Forudindstillingsnavn',
			'mpvConfig.presetNameHint' => 'Indtast et navn for denne forudindstilling',
			'mpvConfig.loadPreset' => 'Indlæs',
			'mpvConfig.deletePreset' => 'Slet',
			'mpvConfig.presetSaved' => 'Forudindstilling gemt',
			'mpvConfig.presetLoaded' => 'Forudindstilling indlæst',
			'mpvConfig.presetDeleted' => 'Forudindstilling slettet',
			'mpvConfig.confirmDeletePreset' => 'Er du sikker på, at du vil slette denne forudindstilling?',
			'mpvConfig.configPlaceholder' => 'gpu-api=vulkan\nhwdec=auto\n# comment',
			'mpvConfig.lineHint' => 'option=value',
			'mpvConfig.addLine' => 'Tilføj linje',
			'mpvConfig.removeLine' => 'Fjern linje',
			'mpvConfig.embeddedVoHint' => 'vo, gpu-context og gpu-api ignoreres på Linux: indlejret video renderes altid via vo=libmpv på videoplanen, og gpu-next (som compute-shaders som ArtCNN kræver) kan ikke køre indlejret.',
			'dialog.confirmAction' => 'Bekræft handling',
			'profiles.addLurokaProfile' => 'Tilføj Luroka profil',
			'profiles.switchingProfile' => 'Skifter profil…',
			'profiles.deleteThisProfileTitle' => 'Slet denne profil?',
			'profiles.deleteThisProfileMessage' => ({required Object displayName}) => 'Fjern ${displayName}. Forbindelser påvirkes ikke.',
			'profiles.active' => 'Aktiv',
			'profiles.manage' => 'Administrer',
			'profiles.delete' => 'Slet',
			'profiles.signOut' => 'Log ud',
			'profiles.signOutPlexTitle' => 'Log ud af Plex?',
			'profiles.signOutPlexMessage' => ({required Object displayName}) => 'Fjern ${displayName} og alle Plex Home-brugere? Du kan altid logge ind igen.',
			'profiles.signOutPlexDeleteDownloads' => 'Slet også downloads',
			'profiles.signOutPlexDeleteDownloadsDescription' => 'Ellers bliver de på denne enhed og vender tilbage, når du logger ind på denne konto igen.',
			'profiles.signedOutPlex' => 'Logget ud af Plex.',
			'profiles.signOutFailed' => 'Kunne ikke logge ud.',
			'profiles.sectionTitle' => 'Profiler',
			'profiles.summarySingle' => 'Tilføj profiler for at kombinere administrerede brugere med lokale identiteter',
			'profiles.summaryMultipleWithActive' => ({required Object count, required Object activeName}) => '${count} profiler · aktiv: ${activeName}',
			'profiles.summaryMultiple' => ({required Object count}) => '${count} profiler',
			'profiles.removeConnectionTitle' => 'Fjern forbindelse?',
			'profiles.removeConnectionMessage' => ({required Object connectionLabel, required Object displayName}) => 'Fjern adgangen til ${connectionLabel} for ${displayName}. De andre profiler beholder den.',
			'profiles.deleteProfileTitle' => 'Slet profil?',
			'profiles.deleteProfileMessage' => ({required Object displayName}) => 'Fjern ${displayName} og forbindelserne. Servere forbliver tilgængelige.',
			'profiles.profileNameLabel' => 'Profilnavn',
			'profiles.pinProtectionLabel' => 'PIN-beskyttelse',
			'profiles.pinManagedByPlex' => 'PIN administreres af Plex. Rediger på plex.tv.',
			'profiles.noPinSetEditOnPlex' => 'Ingen PIN-kode angivet. Hvis der skal kræves en, skal du redigere Plex Home-brugeren på plex.tv.',
			'profiles.setPin' => 'Angiv PIN',
			'profiles.setPinTitle' => 'Angiv PIN',
			'profiles.confirmPinTitle' => 'Bekræft PIN',
			'profiles.pinSet' => 'PIN angivet',
			'profiles.changePin' => 'Skift',
			'profiles.removePin' => 'Fjern',
			'profiles.connectionsLabel' => 'Forbindelser',
			'profiles.add' => 'Tilføj',
			'profiles.deleteProfileButton' => 'Slet profil',
			'profiles.noConnectionsHint' => 'Ingen forbindelser — tilføj en for at bruge denne profil.',
			'profiles.noConnections' => 'Ingen forbindelser',
			'profiles.plexHomeAccount' => 'Plex Home-konto',
			'profiles.plexAccountChip' => ({required Object account}) => 'Plex-konto: ${account}',
			'profiles.plexAccountUserChip' => ({required Object user, required Object account}) => 'Bruger ${user} · konto ${account}',
			'profiles.connectionDefault' => 'Standard',
			'profiles.connectionAs' => ({required Object displayName}) => 'som ${displayName}',
			'profiles.makeDefault' => 'Gør til standard',
			'profiles.removeConnection' => 'Fjern',
			'profiles.profileRenamed' => 'Profil omdøbt.',
			'profiles.borrowAddTo' => ({required Object displayName}) => 'Tilføj til ${displayName}',
			'profiles.borrowExplain' => 'Lån en anden profils forbindelse. PIN-beskyttede profiler kræver en PIN.',
			'profiles.borrowEmpty' => 'Intet at låne endnu.',
			'profiles.borrowEmptySubtitle' => 'Forbind Plex, Jellyfin eller Emby til en anden profil først.',
			'profiles.borrowLoadFailed' => 'De tilgængelige forbindelser kunne ikke indlæses. Prøv igen.',
			'profiles.borrowFromProfile' => ({required Object displayName}) => 'Fra ${displayName}',
			'profiles.borrowConnectionBorrowed' => 'Forbindelse lånt.',
			'profiles.borrowFailed' => 'Kunne ikke låne forbindelse.',
			'profiles.incorrectPin' => 'Forkert PIN.',
			'profiles.incorrectPinTryAgain' => 'Forkert PIN. Prøv igen.',
			'profiles.sourceProfileMissingParentAccount' => 'Kildeprofilen mangler sin overordnede konto.',
			'profiles.failedToLoadHomeUsers' => 'Kunne ikke indlæse dine Plex Home-brugere. Tjek din forbindelse, og prøv igen.',
			'profiles.failedToVerifyPin' => 'Kunne ikke bekræfte PIN.',
			'profiles.newProfile' => 'Ny profil',
			'profiles.profileNameHint' => 'f.eks. Gæster, Børn, Familiens stue',
			'profiles.pinProtectionOptional' => 'PIN-beskyttelse (valgfri)',
			'profiles.pinExplain' => 'Der kræves en 4-cifret PIN-kode for at skifte profil.',
			'profiles.continueButton' => 'Fortsæt',
			'profiles.pinsDontMatch' => 'PIN-koderne matcher ikke',
			'profiles.tokenIdentityMismatch' => 'Plex-profiltokenet blev knyttet til en uventet server',
			'connections.sectionTitle' => 'Forbindelser',
			'connections.addConnection' => 'Tilføj forbindelse',
			'connections.addConnectionSubtitleNoProfile' => 'Log ind med Plex eller forbind til en Jellyfin- eller Emby-server',
			'connections.addConnectionSubtitleScoped' => ({required Object displayName}) => 'Føj til ${displayName}: Plex, Jellyfin, Emby eller en anden profilforbindelse',
			'connections.sessionExpiredOne' => ({required Object name}) => 'Sessionen er udløbet for ${name}',
			'connections.sessionExpiredMany' => ({required Object count}) => 'Sessionerne er udløbet for ${count} servere',
			'connections.accessDeniedOne' => ({required Object name}) => '${name} nægtede adgang for denne konto',
			'connections.accessDeniedMany' => ({required Object count}) => '${count} servere nægtede adgang for denne konto',
			'connections.signInAgain' => 'Log ind igen',
			'connections.editMediaBrowserTitle' => ({required Object product}) => 'Rediger ${product}-forbindelse',
			'connections.editMediaBrowserIntro' => ({required Object serverName}) => 'Tilføj eller fjern URL\'er for ${serverName}. Luroka bruger den tilgængelige URL med laveste latenstid.',
			'serversAccounts.title' => 'Servere og konti',
			'serversAccounts.subtitle' => 'Log-in-status for dine Plex-, Jellyfin- og Emby-servere',
			'serversAccounts.online' => 'Online',
			'serversAccounts.offline' => 'Offline',
			'serversAccounts.unknown' => 'Ikke logget ind her',
			'serversAccounts.usedByNone' => 'Bruges ikke af nogen profil',
			'serversAccounts.usedByOne' => ({required Object name}) => 'Brugt af ${name}',
			'serversAccounts.usedByMany' => ({required Object name, required Object count}) => 'Brugt af ${name} og ${count} mere',
			'serversAccounts.serversOnline' => ({required Object online, required Object total}) => '${online} af ${total} servere online',
			'serversAccounts.noServers' => 'Intet forbundet endnu. Tilføj din Plex-konto eller en Jellyfin- eller Emby-server.',
			'serversAccounts.editUrls' => 'Rediger server-URL\'er',
			'accountPreferences.sectionTitle' => 'Kontopræferencer',
			'accountPreferences.hubSubtitleSingle' => ({required Object account}) => 'Lyd-, undertekst- og biblioteksindstillinger gemt på ${account}',
			'accountPreferences.hubSubtitleMultiple' => ({required Object count}) => 'Lyd-, undertekst- og biblioteksindstillinger gemt på ${count} konti',
			'accountPreferences.pickAccount' => 'Hver konto gemmer sine egne præferencer. Vælg den, du vil redigere.',
			'accountPreferences.storedOnAccount' => 'Disse indstillinger gemmes på selve kontoen, så alle apps, der er logget ind på den, bruger dem — inklusive Luroka på dine andre enheder.',
			'accountPreferences.noAccounts' => 'Ingen konti at konfigurere',
			'accountPreferences.noAccountsHint' => 'Log ind på Plex, eller forbind en Jellyfin- eller Emby-server, så vises de præferencer, der er gemt på kontoen, her.',
			'accountPreferences.unavailable' => 'Kan ikke nå denne konto',
			'accountPreferences.loadFailed' => 'Kunne ikke indlæse disse præferencer',
			'accountPreferences.noPreference' => 'Ingen præference',
			'accountPreferences.notSet' => 'Ikke indstillet',
			'accountPreferences.groups.audioAndSubtitles' => 'Lyd og undertekster',
			'accountPreferences.groups.libraryDisplay' => 'Bibliotek',
			'accountPreferences.groups.personalMedia' => 'Personlige medier',
			'accountPreferences.preferredAudioLanguage' => 'Foretrukket lydsprog',
			'accountPreferences.autoSelectAudio' => 'Vælg lyd ud fra sprog',
			'accountPreferences.autoSelectAudioDescription' => 'Fra beholder det lydspor, som filen markerer som standard.',
			'accountPreferences.preferredSubtitleLanguage' => 'Foretrukket undertekstsprog',
			'accountPreferences.subtitleMode' => 'Slå undertekster til',
			'accountPreferences.subtitleModes.none' => 'Manuelt valgt',
			'accountPreferences.subtitleModes.noneDescription' => 'Slår aldrig undertekster til af sig selv.',
			'accountPreferences.subtitleModes.defaultMode' => 'Følg sporets flag',
			'accountPreferences.subtitleModes.defaultModeDescription' => 'Brug standard- og tvungne flag, der er gemt på hvert undertekstspor.',
			'accountPreferences.subtitleModes.always' => 'Altid aktiveret',
			'accountPreferences.subtitleModes.alwaysDescription' => 'Slå et undertekstspor til på det foretrukne sprog, når der findes ét.',
			'accountPreferences.subtitleModes.onlyForced' => 'Kun tvungne undertekster',
			'accountPreferences.subtitleModes.onlyForcedDescription' => 'Indlæs kun spor, der er markeret som tvungne.',
			'accountPreferences.subtitleModes.smart' => 'Vis ved fremmedsproget lyd',
			'accountPreferences.subtitleModes.smartDescription' => 'Slå kun undertekster til, når lyden er på et andet sprog.',
			'accountPreferences.subtitleAccessibility' => 'SDH-undertekster',
			'accountPreferences.subtitleAccessibilityOptions.preferNonSdh' => 'Foretræk ikke-SDH-undertekster',
			'accountPreferences.subtitleAccessibilityOptions.preferSdh' => 'Foretræk SDH-undertekster',
			'accountPreferences.subtitleAccessibilityOptions.onlySdh' => 'Kun SDH-undertekster',
			'accountPreferences.subtitleAccessibilityOptions.onlyNonSdh' => 'Kun ikke-SDH-undertekster',
			'accountPreferences.forcedSubtitles' => 'Tvungne undertekster',
			'accountPreferences.forcedSubtitleOptions.preferNonForced' => 'Foretræk ikke-tvungne undertekster',
			'accountPreferences.forcedSubtitleOptions.preferForced' => 'Foretræk tvungne undertekster',
			'accountPreferences.forcedSubtitleOptions.onlyForced' => 'Kun tvungne undertekster',
			'accountPreferences.forcedSubtitleOptions.onlyNonForced' => 'Kun ikke-tvungne undertekster',
			'accountPreferences.displayMissingEpisodes' => 'Vis manglende afsnit',
			'accountPreferences.displayMissingEpisodesDescription' => 'Vis afsnit, som serveren kender til, men som ikke har nogen fil.',
			'accountPreferences.hidePlayedInLatest' => 'Skjul sete elementer i Seneste',
			'accountPreferences.hidePlayedInLatestDescription' => 'Hold elementer, du allerede har set, ude af serverens Seneste-rækker.',
			'accountPreferences.displayCollectionsView' => 'Vis samlingsvisningen',
			'accountPreferences.displayCollectionsViewDescription' => 'Vis serverens samlingsvisning sammen med dine biblioteker.',
			'accountPreferences.rewatchingInNextUp' => 'Behold gensete serier i Næste afsnit',
			'accountPreferences.rewatchingInNextUpDescription' => 'Når du er færdig med en serie og ser den igen, følger Næste afsnit med i gensynet i stedet for at fjerne serien.',
			'accountPreferences.watchedIndicator' => 'Set-indikatorer',
			'accountPreferences.watchedIndicatorOptions.none' => 'Aldrig',
			'accountPreferences.watchedIndicatorOptions.moviesAndShows' => 'Film og TV-serier',
			'accountPreferences.watchedIndicatorOptions.movies' => 'Kun film',
			'accountPreferences.watchedIndicatorOptions.shows' => 'Kun TV-serier',
			'accountPreferences.mediaReviewsVisibility' => 'Bedømmelser og anmeldelser',
			'accountPreferences.mediaReviewsOptions.usersAndCritics' => 'Brugere og anmeldere',
			'accountPreferences.mediaReviewsOptions.usersOnly' => 'Kun brugere',
			'accountPreferences.mediaReviewsOptions.criticsOnly' => 'Kun anmeldere',
			'accountPreferences.mediaReviewsOptions.nobody' => 'Skjult',
			'discover.title' => 'Opdag',
			'discover.noContentAvailable' => 'Intet indhold tilgængeligt',
			'discover.addMediaToLibraries' => 'Tilføj medier til dine biblioteker',
			'discover.continueWatching' => 'Fortsæt med at se',
			'discover.continueWatchingIn' => ({required Object library}) => 'Fortsæt med at se i ${library}',
			'discover.nextUp' => 'Næste afsnit',
			'discover.nextUpIn' => ({required Object library}) => 'Næste afsnit i ${library}',
			'discover.recentlyAdded' => 'Nyligt tilføjet',
			'discover.recentlyAddedIn' => ({required Object library}) => 'Nyligt tilføjet i ${library}',
			'discover.latestAlbumsIn' => ({required Object library}) => 'Nyeste album i ${library}',
			'discover.recentlyPlayedIn' => ({required Object library}) => 'Senest afspillet i ${library}',
			'discover.mostPlayedIn' => ({required Object library}) => 'Mest afspillet i ${library}',
			'discover.playEpisode' => ({required Object season, required Object episode}) => 'S${season}E${episode}',
			'discover.overview' => 'Oversigt',
			'discover.cast' => 'Rollebesætning',
			'discover.extras' => 'Trailere og ekstramateriale',
			'discover.studio' => 'Studie',
			'discover.rating' => 'Bedømmelse',
			'discover.director' => 'Instruktør',
			'discover.directors' => 'Instruktører',
			'discover.movie' => 'Film',
			'discover.tvShow' => 'TV-serie',
			'discover.minutesLeft' => ({required Object minutes}) => '${minutes} min tilbage',
			'discover.moreLikeThis' => 'Mere som dette',
			'discover.titleCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n, one: '${n} titel', other: '${n} titler', ), 
			'discover.person.born' => 'Født',
			'discover.person.died' => 'Døde',
			'discover.person.birthplace' => 'Fødested',
			'discover.person.dateWithAge' => ({required Object date, required Object age}) => '${date} (alder ${age})',
			'discover.person.dateWithAgeAtDeath' => ({required Object date, required Object age}) => '${date} (alderen ${age})',
			'errors.searchFailed' => ({required Object error}) => 'Søgning mislykkedes: ${error}',
			'errors.searchUnavailable' => 'Søgningen kunne ikke nå nogen medieserver.',
			'errors.connectionTimeout' => ({required Object context}) => 'Forbindelsen fik timeout under indlæsning af ${context}',
			'errors.connectionFailed' => 'Kan ikke oprette forbindelse til medieserver',
			'errors.unableToLoad' => ({required Object context}) => 'Kunne ikke indlæse ${context}. Prøv igen.',
			'errors.noClientAvailable' => 'Ingen klient tilgængelig',
			'errors.pleaseEnterToken' => 'Indtast et token',
			'errors.invalidToken' => 'Ugyldigt token',
			'errors.failedToVerifyToken' => ({required Object error}) => 'Kunne ikke verificere token: ${error}',
			'errors.failedToSwitchProfile' => ({required Object displayName}) => 'Kunne ikke skifte til ${displayName}',
			'errors.failedToDeleteProfile' => ({required Object displayName}) => 'Kunne ikke slette ${displayName}',
			'errors.failedToRate' => 'Kunne ikke opdatere bedømmelsen',
			'errors.reasonTimedOut' => 'forbindelsen fik timeout',
			'errors.reasonUnreachable' => 'medieserveren kunne ikke nås',
			'errors.reasonRefused' => 'medieserveren afviste anmodningen',
			'errors.reasonNotFound' => 'elementet findes ikke længere på medieserveren',
			'errors.reasonServerError' => 'medieserveren rapporterede en fejl',
			'errors.reasonCancelled' => 'anmodningen blev annulleret',
			'errors.reasonUnexpected' => 'der opstod en uventet fejl',
			'libraries.title' => 'Biblioteker',
			'libraries.fallbackTitle' => 'Bibliotek',
			'libraries.scanLibraryFiles' => 'Scan biblioteksfiler',
			'libraries.scanLibrary' => 'Scan bibliotek',
			'libraries.analyze' => 'Analysér',
			'libraries.analyzeLibrary' => 'Analysér bibliotek',
			'libraries.refreshMetadata' => 'Opdater metadata',
			'libraries.emptyTrash' => 'Tøm papirkurv',
			'libraries.emptyingTrash' => ({required Object title}) => 'Tømmer papirkurv for "${title}"...',
			'libraries.trashEmptied' => ({required Object title}) => 'Papirkurv tømt for "${title}"',
			'libraries.failedToEmptyTrash' => ({required Object error}) => 'Kunne ikke tømme papirkurv: ${error}',
			'libraries.analyzing' => ({required Object title}) => 'Analyserer "${title}"...',
			'libraries.analysisStarted' => ({required Object title}) => 'Analyse startet for "${title}"',
			'libraries.failedToAnalyze' => ({required Object error}) => 'Kunne ikke analysere bibliotek: ${error}',
			'libraries.noLibrariesFound' => 'Ingen biblioteker fundet',
			'libraries.allLibrariesHidden' => 'Alle biblioteker er skjult',
			'libraries.hiddenLibrariesCount' => ({required Object count}) => 'Skjulte biblioteker (${count})',
			'libraries.thisLibraryIsEmpty' => 'Dette bibliotek er tomt',
			'libraries.noItemsMatchFilters' => 'Ingen elementer matcher de aktive filtre',
			'libraries.resetFilters' => 'Nulstil filtre',
			'libraries.all' => 'Alle',
			'libraries.clearAll' => 'Ryd alle',
			'libraries.scanLibraryConfirm' => ({required Object title}) => 'Er du sikker på, at du vil scanne "${title}"?',
			'libraries.analyzeLibraryConfirm' => ({required Object title}) => 'Er du sikker på, at du vil analysere "${title}"?',
			'libraries.refreshMetadataConfirm' => ({required Object title}) => 'Er du sikker på, at du vil opdatere metadata for "${title}"?',
			'libraries.emptyTrashConfirm' => ({required Object title}) => 'Er du sikker på, at du vil tømme papirkurven for "${title}"?',
			'libraries.manageLibraries' => 'Administrer biblioteker',
			'libraries.sort' => 'Sortér',
			'libraries.sortBy' => 'Sortér efter',
			'libraries.filters' => 'Filtre',
			'libraries.confirmActionMessage' => 'Er du sikker på, at du vil udføre denne handling?',
			'libraries.showLibrary' => 'Vis bibliotek',
			'libraries.hideLibrary' => 'Skjul bibliotek',
			'libraries.libraryOptions' => 'Biblioteksindstillinger',
			'libraries.content' => 'biblioteksindhold',
			'libraries.selectLibrary' => 'Vælg bibliotek',
			'libraries.filtersWithCount' => ({required Object count}) => 'Filtre (${count})',
			'libraries.noRecommendations' => 'Ingen anbefalinger tilgængelige',
			'libraries.noCollections' => 'Ingen samlinger i dette bibliotek',
			'libraries.noFoldersFound' => 'Ingen mapper fundet',
			'libraries.folders' => 'mapper',
			'libraries.tabs.recommended' => 'Anbefalet',
			'libraries.tabs.browse' => 'Gennemse',
			'libraries.tabs.collections' => 'Samlinger',
			'libraries.tabs.playlists' => 'Playlister',
			'libraries.groupings.title' => 'Gruppering',
			'libraries.groupings.all' => 'Alle',
			'libraries.groupings.movies' => 'Film',
			'libraries.groupings.shows' => 'TV-serier',
			'libraries.groupings.seasons' => 'Sæsoner',
			'libraries.groupings.episodes' => 'Episoder',
			'libraries.groupings.artists' => 'Kunstnere',
			'libraries.groupings.albums' => 'Album',
			'libraries.groupings.tracks' => 'Numre',
			'libraries.groupings.folders' => 'Mapper',
			'libraries.filterCategories.genre' => 'Genre',
			'libraries.filterCategories.year' => 'År',
			'libraries.filterCategories.contentRating' => 'Aldersvurdering',
			'libraries.filterCategories.tag' => 'Tag',
			'libraries.filterCategories.unwatched' => 'Usete',
			'libraries.filterCategories.unplayed' => 'Ikke afspillet',
			'libraries.filterCategories.favorites' => 'Favoritter',
			'libraries.filterCategories.filePath' => 'Filsti',
			'libraries.sortLabels.title' => 'Titel',
			'libraries.sortLabels.dateAdded' => 'Tilføjet dato',
			'libraries.sortLabels.releaseDate' => 'Udgivelsesdato',
			'libraries.sortLabels.rating' => 'Vurdering',
			'libraries.sortLabels.communityRating' => 'Fællesskabsvurdering',
			'libraries.sortLabels.criticRating' => 'Kritikerbedømmelse',
			'libraries.sortLabels.userRating' => 'Brugerbedømmelse',
			'libraries.sortLabels.datePlayed' => 'Afspilningsdato',
			'libraries.sortLabels.playCount' => 'Antal afspilninger',
			'libraries.sortLabels.productionYear' => 'Produktionsår',
			'libraries.sortLabels.runtime' => 'Spilletid',
			'libraries.sortLabels.officialRating' => 'Officiel vurdering',
			'libraries.sortLabels.premiereDate' => 'Premieredato',
			'libraries.sortLabels.startDate' => 'Startdato',
			'libraries.sortLabels.airTime' => 'Sendetid',
			'libraries.sortLabels.studio' => 'Studie',
			'libraries.sortLabels.random' => 'Tilfældig',
			'libraries.sortLabels.dateShared' => 'Delt dato',
			'libraries.sortLabels.latestEpisodeAirDate' => 'Seneste episodes premieredato',
			'libraries.sortLabels.lastEpisodeDateAdded' => 'Dato for senest tilføjede episode',
			'libraries.sortLabels.dateDownloaded' => 'Downloadet dato',
			'libraries.sortLabels.size' => 'Størrelse',
			'libraries.sortLabels.library' => 'Bibliotek',
			'libraries.advancedFilters.include' => 'Inkluder',
			'libraries.advancedFilters.exclude' => 'Ekskluder',
			'libraries.advancedFilters.any' => 'Enhver',
			'libraries.advancedFilters.yes' => 'Ja',
			'libraries.advancedFilters.no' => 'Nej',
			'libraries.advancedFilters.not' => ({required Object value}) => 'Ikke ${value}',
			'libraries.advancedFilters.valueCount' => ({required Object count}) => '${count} valgt',
			'libraries.advancedFilters.valueCountExcluded' => ({required Object count}) => '${count} ekskluderet',
			'libraries.advancedFilters.searchValues' => 'Søg værdier',
			'libraries.advancedFilters.noValues' => 'Ingen værdier',
			'libraries.advancedFilters.matchContains' => 'Indeholder',
			'libraries.advancedFilters.matchNotContains' => 'Indeholder ikke',
			'libraries.advancedFilters.matchIs' => 'er',
			'libraries.advancedFilters.matchIsNot' => 'er ikke',
			'libraries.advancedFilters.matchBeginsWith' => 'begynder med',
			'libraries.advancedFilters.matchEndsWith' => 'Slutter med',
			'libraries.advancedFilters.textHint' => 'Skriv for at matche',
			'libraries.advancedFilters.from' => 'Fra',
			'libraries.advancedFilters.to' => 'Til',
			'libraries.advancedFilters.range' => ({required Object from, required Object to}) => '${from} til ${to}',
			'libraries.advancedFilters.atLeast' => ({required Object value}) => '${value} og opefter',
			'libraries.advancedFilters.atMost' => ({required Object value}) => 'Op til ${value}',
			'libraries.advancedFilters.dateLastDays' => ({required Object count}) => 'Sidste ${count} dage',
			'libraries.advancedFilters.dateLastYear' => 'Sidste år',
			'libraries.advancedFilters.dateOlderThanDays' => ({required Object count}) => 'Ældre end ${count} dage',
			'libraries.advancedFilters.dateOlderThanYear' => 'Ældre end et år',
			'about.title' => 'Om',
			'about.openSourceLicenses' => 'Open source-licenser',
			'about.versionLabel' => ({required Object version}) => 'Version ${version}',
			'about.appDescription' => 'En smuk Plex-, Jellyfin- og Emby-klient bygget med Flutter',
			'about.customSource' => 'Kildekode',
			'about.basedOnLuroka' => 'Bygget på Plezy kodebasen',
			'about.viewLicensesDescription' => 'Se licenser for tredjepartsbiblioteker',
			'about.appSection' => 'App',
			'about.communitySection' => 'Fællesskab',
			'about.creditsSection' => 'Kreditter',
			'about.legalSection' => 'Juridisk',
			'about.versionMeta' => ({required Object version, required Object build, required Object platform}) => 'v${version} (${build}) · ${platform}',
			'about.versionMetaNoBuild' => ({required Object version, required Object platform}) => 'v${version} · ${platform}',
			'about.versionUnavailable' => 'Version er ikke tilgængelig',
			'about.versionDetails' => 'Version detaljer',
			'about.versionDetailsTitle' => ({required Object version, required Object build}) => 'Luroka ${version} (${build})',
			'about.platformLine' => ({required Object platform}) => 'Platform: ${platform}',
			'about.deviceLine' => ({required Object model}) => 'Enhed: ${model}',
			'about.packageLine' => ({required Object package}) => 'Pakke: ${package}',
			'about.localeLine' => ({required Object locale}) => 'Sprog: ${locale}',
			'about.copyDetails' => 'Kopier detaljer',
			_ => null,
		} ?? switch (path) {
			'about.detailsCopied' => 'Appoplysningerne er kopieret',
			'about.detailsCopyFailed' => 'Appoplysningerne kunne ikke kopieres',
			'about.checkForUpdatesDescription' => 'Tjek GitHub for en nyere udgivelse',
			'about.checkingForUpdates' => 'Søger efter opdateringer...',
			'about.whatsNew' => 'Hvad er nyt',
			'about.releaseNotesUnavailable' => 'Der er ingen tilgængelige udgivelsesbemærkninger.',
			'about.sourceCodeDescription' => 'Luroka på GitHub',
			'about.reportIssue' => 'Rapporter et problem',
			'about.reportIssueDescription' => 'Fortæl os, hvad der gik galt',
			'about.documentation' => 'Dokumentation',
			'about.documentationDescription' => 'Opsætning, funktioner og byggenoter',
			'about.upstreamProjectDescription' => 'Open source-projekt af edde746 og bidragydere',
			'about.upstreamWebsite' => 'Upstream hjemmeside',
			'about.attribution' => 'Data & attribution',
			'about.attributionDescription' => 'Metadata, vurderinger og varemærker',
			'about.attributionBody' => 'Dette produkt bruger TMDB API, men er ikke godkendt eller certificeret af TMDB. Popularitetslister, metadata og IMDb-vurderinger leveres af Cinemeta. Partitur beholder deres kildeetiketter.',
			'about.trademarkNotices' => 'Plex, Jellyfin, Emby, Trakt, Simkl, MyAnimeList, AniList, Trakt, Simkl, MyAnimeList, AniList, Z07XKEEPQ0 og relaterede varemærker, der tilhører deres varemærker, ejere. Luroka er ikke tilknyttet eller godkendt af dem.',
			'about.privacyPolicy' => 'Privatlivspolitik',
			'about.privacyPolicyDescription' => 'Hvordan dine data håndteres',
			'about.gplLicense' => 'GNU GPL-3.0 licens',
			'about.gplLicenseDescription' => 'Luroka er gratis software',
			'about.linkOpenFailed' => 'Kunne ikke åbne dette link',
			'about.opensInBrowser' => 'Åbner i din browser',
			'about.footer' => 'Luroka er gratis software under GPL-3.0.',
			'about.copyright' => ({required Object year}) => '© ${year} Luroka bidragydere',
			'serverSelection.noServersFoundForAccount' => ({required Object username, required Object email}) => 'Ingen servere fundet for ${username} (${email})',
			'serverSelection.failedToLoadServers' => ({required Object error}) => 'Kunne ikke indlæse servere: ${error}',
			'serverSelection.noValidServers' => 'Der blev ikke fundet nogen brugbare servere på denne konto',
			'hubDetail.title' => 'Titel',
			'hubDetail.releaseYear' => 'Udgivelsesår',
			'hubDetail.dateAdded' => 'Tilføjelsesdato',
			'hubDetail.rating' => 'Bedømmelse',
			'hubDetail.noItemsFound' => 'Ingen elementer fundet',
			'logs.clearLogs' => 'Ryd logfiler',
			'logs.copyLogs' => 'Kopiér logfiler',
			'logs.uploadLogs' => 'Upload logfiler',
			'startup.failedTitle' => 'Luroka kunne ikke starte',
			'startup.failedBody' => 'Der gik noget galt under opstart. Oplysningerne nedenfor viser, hvad der gik galt.',
			'startup.failedBodyRepairable' => 'Luroka\'s gemte indstillingsfil er beskadiget og skal genopbygges, før Luroka kan starte. Det hjælper ikke at prøve igen — vælg Reparer lager.',
			'startup.phaseLabel' => 'Trin',
			'startup.showDetails' => 'Vis detaljer',
			'startup.hideDetails' => 'Skjul detaljer',
			'startup.copyDetails' => 'Kopiér detaljer',
			'startup.detailsCopied' => 'Detaljer kopieret til udklipsholder',
			'startup.uploadDetails' => 'Upload detaljer',
			'startup.repairStorage' => 'Reparer lager',
			'startup.repairTitle' => 'Reparer gemte data?',
			'startup.repairBodyCommon' => 'Luroka\'s indstillingsfil er beskadiget og kan ikke læses. Reparation nulstiller alle indstillinger til deres standardværdier.',
			'startup.repairBodyOneCredential' => 'Én gemt loginoplysning er beskadiget og kan ikke læses. Reparation fjerner kun den; dine andre indstillinger forbliver urørt.',
			'startup.repairBodySignInsKept' => 'Dine servere og profiler bør forblive logget ind.',
			'startup.repairBodySignInsLost' => 'Nøglen, der beskytter dine gemte loginoplysninger, kan ikke gendannes fra denne fil, så du skal logge ind på alle servere og profiler igen. Intet på din medieserver er påvirket.',
			'startup.repairBodySessionsUncertain' => 'Trackere (MAL, AniList, Simkl, Trakt) og Seerr gemmes separat, og det er uvist, om de overlever. Luroka fortæller dig præcis, hvad det beholdt.',
			'startup.repairConfirm' => 'Reparer',
			'startup.repairSucceeded' => 'Lager repareret',
			'startup.repairNeedsRestart' => 'Lager repareret — genstart påkrævet',
			'startup.restartRequiredBody' => 'Dine data er blevet repareret, men Luroka skal starte på ny, før det kan bruge dem. Luk Luroka, og åbn det igen.',
			'startup.quitLuroka' => 'Afslut Luroka',
			'startup.repairFailed' => 'Reparation mislykkedes',
			'startup.repairKeptSignIns' => 'Dine servere og profiler er stadig logget ind.',
			'startup.repairLostSignIns' => 'Nøglen, der beskytter dine gemte loginoplysninger, kunne ikke gendannes. Du skal logge ind på alle servere og profiler igen.',
			'startup.repairLostSessions' => 'Mindst én tracker- eller Seerr-forbindelse gik tabt og skal genetableres.',
			'startup.backupTitle' => 'En kopi af den beskadigede fil blev gemt',
			'startup.backupWarning' => 'Den indeholder dine loginoplysninger. Upload eller del den ikke.',
			'startup.deleteBackup' => 'Slet kopi',
			'startup.backupDeleted' => 'Kopi slettet.',
			'startup.previousFailureTitle' => 'Luroka kunne ikke starte sidste gang',
			'licenses.relatedPackages' => 'Relaterede pakker',
			'licenses.license' => 'Licens',
			'licenses.licenseNumber' => ({required Object number}) => 'Licens ${number}',
			'licenses.licensesCount' => ({required Object count}) => '${count} licenser',
			'licenses.searchHint' => 'Søg pakker',
			'licenses.noResults' => ({required Object query}) => 'Ingen pakker matcher "${query}"',
			'licenses.clearSearch' => 'Ryd søgning',
			'navigation.libraries' => 'Biblioteker',
			'navigation.downloads' => 'Downloads',
			'navigation.liveTv' => 'Live TV',
			'navigation.explore' => 'Udforsk',
			'explore.title' => 'Udforsk',
			'explore.selectSource' => 'Vælg kilde',
			'explore.rows.watchlist' => 'Ønskeliste',
			'explore.rows.recommendedMovies' => 'Anbefalede film',
			'explore.rows.recommendedShows' => 'Anbefalede serier',
			'explore.rows.trendingMovies' => 'Populære film lige nu',
			'explore.rows.trendingShows' => 'Populære serier lige nu',
			'explore.rows.popularMovies' => 'Populære film',
			'explore.rows.popularShows' => 'Populære serier',
			'explore.rows.trendingAnime' => 'Populær anime lige nu',
			'explore.rows.suggestedAnime' => 'Anbefalet anime',
			'explore.rows.airingAnime' => 'Bedste aktuelle anime',
			'explore.rows.popularAnime' => 'Mest populære anime',
			'explore.rows.trending' => 'Populært lige nu',
			'explore.rows.upcomingMovies' => 'Kommende film',
			'explore.rows.upcomingShows' => 'Kommende serier',
			'explore.status.airing' => 'Sendes',
			'explore.status.ended' => 'Afsluttet',
			'explore.status.canceled' => 'Aflyst',
			'explore.status.upcoming' => 'Kommende',
			'explore.episodeCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n, one: '${n} afsnit', other: '${n} afsnit', ), 
			'explore.cast' => 'Rollebesætning',
			'explore.characters' => 'Figurer',
			'explore.addToWatchlist' => 'Føj til ønskeliste',
			'explore.removeFromWatchlist' => 'Fjern fra ønskeliste',
			'explore.addedToWatchlist' => 'Føjet til overvågningslisten',
			'explore.removedFromWatchlist' => 'Fjernet fra overvågningslisten',
			'explore.watchlistUpdateFailed' => 'Kunne ikke opdatere ønskelisten',
			'explore.watchlistNoMatch' => 'Kunne ikke knytte dette element til en overvågningsliste',
			'explore.notInLibrary' => 'Ikke i dit bibliotek',
			'explore.inTheseLibraries' => 'I disse biblioteker',
			'explore.checkingLibrary' => 'Tjekker dit bibliotek...',
			'explore.libraryCheckFailed' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n, one: 'Kunne ikke tjekke ${n} server', other: 'Kunne ikke tjekke ${n} servere', ), 
			'explore.emptyTitle' => 'Der er ikke noget her endnu',
			'explore.emptyMessage' => ({required Object source}) => 'Indholdsrækker fra ${source} vises her, når de har indhold.',
			'explore.searchHint' => ({required Object source}) => 'Søg i ${source}',
			'explore.searchEmpty' => ({required Object query}) => 'Ingen resultater for "${query}"',
			'explore.searchPrompt' => ({required Object source}) => 'Søg efter film og serier på ${source}.',
			'explore.searchFailed' => 'Søgningen mislykkedes. Tjek din forbindelse, og prøv igen.',
			'explore.badge.rankPopular' => ({required Object n}) => '#${n} populær',
			'explore.badge.rankAiring' => ({required Object n}) => '#${n} på luften',
			'explore.badge.rankRated' => ({required Object n}) => '#${n} bedømt',
			'explore.badge.rankTrending' => ({required Object n}) => '#${n} populær lige nu',
			'explore.badge.rankSeasonal' => ({required Object n, required Object season}) => '#${n} i ${season}',
			'explore.badge.watchingNow' => ({required Object n}) => '${n} ser med',
			'explore.badge.available' => 'Tilgængelig',
			'explore.badge.partiallyAvailable' => 'Delvist tilgængelig',
			'explore.badge.availableIn4k' => '4K tilgængelig',
			'explore.badge.requested' => 'Anmodet',
			'explore.badge.pendingApproval' => 'Afventer godkendelse',
			'explore.badge.processing' => 'Behandles',
			'explore.badge.declined' => 'Afvist',
			'explore.badge.requestFailed' => 'Anmodningen mislykkedes',
			'explore.badge.requested4k' => '4K anmodet',
			'explore.badge.seasonsAvailable' => ({required Object available, required Object total}) => '${available}/${total} sæsoner',
			'explore.badge.nextEpisodeIn' => ({required Object episode, required Object duration}) => 'Afsnit ${episode} om ${duration}',
			'explore.badge.nextAiringIn' => ({required Object duration}) => 'Næste om ${duration}',
			'explore.badge.episodesShort' => ({required Object n}) => '${n} afsnit',
			'explore.badge.minutesPerEpisode' => ({required Object n}) => '${n} min/afsnit',
			'explore.badge.adult' => '18+',
			'explore.stats.listed' => ({required Object n}) => '${n} opført',
			'explore.stats.viewersDay' => ({required Object n}) => '${n} så det i dag',
			'explore.stats.viewersWeek' => ({required Object n}) => '${n} så det denne uge',
			'explore.stats.viewersMonth' => ({required Object n}) => '${n} så det denne måned',
			'explore.stats.viewersYear' => ({required Object n}) => '${n} så det i år',
			'explore.stats.viewersAllTime' => ({required Object n}) => '${n} seere',
			'explore.stats.planning' => ({required Object n}) => '${n} planlægger at se det',
			'explore.stats.favorited' => ({required Object n}) => '${n} favoritter',
			'explore.stats.dropRate' => ({required Object percent}) => '${percent} droppede det',
			'explore.stats.comments' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n, one: '${n} kommentar', other: '${n} kommentarer', ), 
			'explore.stats.votes' => ({required Object n}) => '${n} stemmer',
			'explore.stats.watching' => ({required Object n}) => '${n} ser det',
			'explore.stats.completed' => ({required Object n}) => '${n} færdigset',
			'explore.stats.onHold' => ({required Object n}) => '${n} på pause',
			'explore.stats.dropped' => ({required Object n}) => '${n} droppede',
			'explore.season.winter' => 'Vinter',
			'explore.season.spring' => 'Forår',
			'explore.season.summer' => 'Sommer',
			'explore.season.fall' => 'Efterår',
			'explore.season.withYear' => ({required Object season, required Object year}) => '${season} ${year}',
			'explore.format.tv' => 'TV',
			'explore.format.tvShort' => 'TV-kortfilm',
			'explore.format.movie' => 'Film',
			'explore.format.special' => 'Special',
			'explore.format.ova' => 'OVA',
			'explore.format.ona' => 'ONA',
			'explore.format.music' => 'Musik',
			'explore.format.other' => 'Andet',
			'explore.sourceMaterial.original' => 'Original',
			'explore.sourceMaterial.manga' => 'Manga',
			'explore.sourceMaterial.lightNovel' => 'Light novel',
			'explore.sourceMaterial.novel' => 'Roman',
			'explore.sourceMaterial.visualNovel' => 'Visual novel',
			'explore.sourceMaterial.game' => 'Spil',
			'explore.sourceMaterial.webComic' => 'Webtegneserie',
			'explore.sourceMaterial.musicRelease' => 'Musik',
			'explore.sourceMaterial.otherMedia' => 'Andet',
			'explore.creditRole.actor' => 'Skuespiller',
			'explore.creditRole.director' => 'Instruktør',
			'explore.creditRole.writer' => 'Forfatter',
			'explore.creditRole.producer' => 'Producer',
			'explore.creditRole.creator' => 'Skaber',
			'explore.creditRole.composer' => 'Komponist',
			'explore.relation.prequel' => 'Prequel',
			'explore.relation.sequel' => 'Sequel',
			'explore.relation.sideStory' => 'Bihistorie',
			'explore.relation.spinOff' => 'Spin-off',
			'explore.relation.alternativeVersion' => 'Alternativ version',
			'explore.relation.summary' => 'Resumé',
			'explore.relation.parentStory' => 'Hovedhistorie',
			'explore.relation.adaptation' => 'Adaption',
			'explore.relation.other' => 'Relateret',
			'explore.broadcast' => ({required Object day, required Object time}) => 'Sendes ${day} kl. ${time}',
			'explore.broadcastWithZone' => ({required Object day, required Object time, required Object timezone}) => 'Sendes ${day} kl. ${time} ${timezone}',
			'explore.detail.originalTitle' => 'Originaltitel',
			'explore.detail.alsoKnownAs' => 'Også kendt som',
			'explore.detail.studios' => 'Studier',
			'explore.detail.country' => 'Land',
			'explore.detail.language' => 'Sprog',
			'explore.detail.released' => 'Udgivet',
			'explore.detail.physicalRelease' => 'På disk',
			'explore.detail.ended' => 'Afsluttet',
			'explore.detail.addedOn' => ({required Object date}) => 'Tilføjet ${date}',
			'explore.detail.yourRating' => 'Din bedømmelse',
			'explore.detail.budget' => 'Budget',
			'explore.detail.revenue' => 'Billetindtægter',
			'explore.detail.contentAdvisory' => 'Aldersvejledning',
			'explore.detail.tags' => 'Tags',
			'explore.detail.revealSpoilerTags' => 'Vis spoilertags',
			'explore.detail.links' => 'Links',
			'explore.detail.watchOn' => 'Se på',
			'explore.detail.watchTrailer' => 'Se trailer',
			'explore.detail.openOn' => ({required Object site}) => 'Åbn på ${site}',
			'explore.detail.crew' => 'Crew',
			'explore.detail.ratings' => 'Bedømmelser',
			'explore.detail.schedule' => 'Program',
			'explore.detail.recommendedByUsers' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n, one: 'Anbefalet af ${n} bruger', other: 'Anbefalet af ${n} brugere', ), 
			'explore.detail.recommendedBy' => ({required Object who}) => 'Anbefalet af ${who}',
			'explore.detail.favoritedBy' => ({required Object who}) => 'Favorit hos ${who}',
			'explore.detail.unairedEpisodes' => ({required Object n}) => '${n} ikke sendt endnu',
			'explore.detail.recommendedByPercent' => ({required Object percent}) => 'Anbefalet af ${percent} af seerne',
			'explore.detail.relatedTitles' => 'Relaterede titler',
			'explore.detail.background' => 'Baggrund',
			'explore.totalResults' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n, one: '${n} resultat', other: '${n} resultater', ), 
			'liveTv.title' => 'Live TV',
			'liveTv.guide' => 'Guide',
			'liveTv.noChannels' => 'Ingen kanaler tilgængelige',
			'liveTv.noDvr' => 'Der er ikke konfigureret DVR på nogen server',
			'liveTv.serverUnavailable' => 'Live-tv-serveren er ikke tilgængelig.',
			'liveTv.serverNotConnected' => 'Live-tv-serveren er ikke forbundet.',
			'liveTv.noPrograms' => 'Ingen programdata tilgængelige',
			'liveTv.liveStreamFailed' => 'Livestream mislykkedes',
			'liveTv.unknownProgram' => 'Ukendt program',
			'liveTv.unknownHub' => 'Ukendt',
			'liveTv.unknownError' => 'Ukendt fejl',
			'liveTv.channelNumber' => ({required Object number}) => 'Kanal ${number}',
			'liveTv.unknownChannel' => 'Ukendt kanal',
			'liveTv.live' => 'LIVE',
			'liveTv.reloadGuide' => 'Genindlæs guide',
			'liveTv.searchGuide' => 'Søg i guiden',
			'liveTv.searchHint' => 'Søg efter kanaler og programmer',
			'liveTv.searchNoResults' => ({required Object query}) => 'Ingen match for "${query}"',
			'liveTv.channelsSection' => 'Kanaler',
			'liveTv.programsSection' => 'Programmer',
			'liveTv.now' => 'Nu',
			'liveTv.today' => 'I dag',
			'liveTv.tomorrow' => 'I morgen',
			'liveTv.midnight' => 'Midnat',
			'liveTv.overnight' => 'Nat',
			'liveTv.morning' => 'Morgen',
			'liveTv.daytime' => 'Dagtid',
			'liveTv.evening' => 'Aften',
			'liveTv.lateNight' => 'Sen aften',
			'liveTv.whatsOn' => 'Hvad vises der?',
			'liveTv.watchChannel' => 'Se kanal',
			'liveTv.favorites' => 'Favoritter',
			'liveTv.reorderFavorites' => 'Omarranger favoritter',
			'liveTv.noFavoriteChannels' => 'Ingen favoritkanaler',
			'liveTv.noFavoriteChannelsHint' => 'Vis alle kanaler, og tryk derefter længe på en kanal for at føje den til dine favoritter.',
			'liveTv.showAllChannels' => 'Vis alle kanaler',
			'liveTv.favoritesLoadFailed' => 'Favoritter kunne ikke indlæses. Kontrollér forbindelsen, og prøv igen.',
			'liveTv.favoritesUpdateFailed' => 'Favoritterne kunne ikke opdateres. Kontrollér forbindelsen, og prøv igen.',
			'liveTv.joinSession' => 'Deltag i igangværende session',
			'liveTv.watchFromStart' => ({required Object minutes}) => 'Se fra start (${minutes} min siden)',
			'liveTv.watchLive' => 'Se live',
			'liveTv.goToLive' => 'Gå til live',
			'liveTv.record' => 'Optag',
			'liveTv.recordEpisode' => 'Optag episode',
			'liveTv.recordSeries' => 'Optag serie',
			'liveTv.recordOptions' => 'Optageindstillinger',
			'liveTv.saveTo' => 'Gem i',
			'liveTv.recordings' => 'Optagelser',
			'liveTv.scheduledRecordings' => 'Planlagt',
			'liveTv.recordingRules' => 'Optagelsesregler',
			'liveTv.noScheduledRecordings' => 'Ingen optagelser planlagt',
			'liveTv.manageRecording' => 'Administrer optagelse',
			'liveTv.cancelRecording' => 'Annuller optagelse',
			'liveTv.cancelRecordingTitle' => 'Annuller denne optagelse?',
			'liveTv.cancelRecordingMessage' => ({required Object title}) => '${title} bliver ikke længere optaget.',
			'liveTv.deleteRule' => 'Slet regel',
			'liveTv.deleteRuleTitle' => 'Slet optagelsesregel?',
			'liveTv.deleteRuleMessage' => ({required Object title}) => 'Fremtidige episoder af ${title} bliver ikke optaget.',
			'liveTv.recordingScheduled' => 'Optagelse planlagt',
			'liveTv.alreadyScheduled' => 'Dette program er allerede planlagt',
			'liveTv.dvrAdminRequired' => 'DVR-indstillinger kræver en administratorkonto',
			'liveTv.recordingFailed' => 'Kunne ikke planlægge optagelse',
			'liveTv.recordingTargetMissing' => 'Kunne ikke bestemme optagelsesbibliotek',
			'liveTv.recordNotAvailable' => 'Optagelse er ikke tilgængelig for dette program',
			'liveTv.recordingCancelled' => 'Optagelse annulleret',
			'liveTv.recordingRuleDeleted' => 'Optagelsesregel slettet',
			'liveTv.processRecordingRules' => 'Evaluer regler igen',
			'liveTv.recordingInProgress' => 'Optager nu',
			'liveTv.recordingsCount' => ({required Object count}) => '${count} planlagt',
			'liveTv.editRule' => 'Rediger regel',
			'liveTv.editRuleAction' => 'Rediger',
			'liveTv.recordingRuleUpdated' => 'Optagelsesregel opdateret',
			'liveTv.guideReloadRequested' => 'Der er anmodet om en opdatering af guiden',
			'liveTv.guideReloadFailed' => 'Kunne ikke opdatere guiden',
			'liveTv.rulesProcessRequested' => 'Der er anmodet om en ny evaluering af reglerne',
			'liveTv.rulesProcessFailed' => 'Kunne ikke behandle optagelsesreglerne igen',
			'liveTv.recordShow' => 'Optag program',
			'liveTv.recordSettings.startEarly' => 'Start tidligere (sekunder)',
			'liveTv.recordSettings.endLate' => 'Slut senere (sekunder)',
			'liveTv.recordSettings.newOnly' => 'Kun nye afsnit',
			'liveTv.recordSettings.anyChannel' => 'Optag på alle kanaler',
			'liveTv.recordSettings.anyTime' => 'Optag på alle tidspunkter',
			'liveTv.recordSettings.skipInLibrary' => 'Spring afsnit over, der allerede er i biblioteket',
			'liveTv.recordSettings.keepUpTo' => 'Afsnit der skal beholdes',
			'liveTv.recordSettings.keepUpToHint' => '0 beholder alle afsnit',
			'liveTv.startingInMinutes' => ({required Object minutes}) => 'Starter om ${minutes} min',
			'liveTv.dayAtTime' => ({required Object day, required Object time}) => '${day} kl. ${time}',
			'liveTv.invalidPlaybackData' => ({required Object product}) => '${product} returnerede ugyldige afspilningsdata for Live TV',
			'liveTv.failedToStartChannel' => 'Kunne ikke starte livekanalen',
			'liveTv.failedToBuildStreamUrl' => 'Kunne ikke oprette stream-URL\'en',
			'liveTv.playbackStartFailed' => ({required Object reason}) => 'Kunne ikke starte kanalen: ${reason}',
			'liveTv.channelSwitchFailed' => ({required Object reason}) => 'Kunne ikke skifte kanal: ${reason}',
			'collections.title' => 'Samlinger',
			'collections.collection' => 'Samling',
			'collections.empty' => 'Samlingen er tom',
			'collections.deleteCollection' => 'Slet samling',
			'collections.deleteConfirm' => ({required Object title}) => 'Slet "${title}"? Dette kan ikke fortrydes.',
			'collections.deleted' => 'Samling slettet',
			'collections.deleteFailed' => 'Kunne ikke slette samling',
			'collections.deleteFailedWithError' => ({required Object error}) => 'Kunne ikke slette samling: ${error}',
			'collections.selectCollection' => 'Vælg samling',
			'collections.collectionName' => 'Samlingsnavn',
			'collections.enterCollectionName' => 'Indtast samlingsnavn',
			'collections.addedToCollection' => 'Tilføjet til samling',
			'collections.errorAddingToCollection' => 'Kunne ikke tilføje til samling',
			'collections.created' => 'Samling oprettet',
			'collections.removeFromCollection' => 'Fjern fra samling',
			'collections.removeFromCollectionConfirm' => ({required Object title}) => 'Fjern "${title}" fra denne samling?',
			'collections.removedFromCollection' => 'Fjernet fra samling',
			'collections.removeFromCollectionFailed' => 'Kunne ikke fjerne fra samling',
			'collections.removeFromCollectionError' => ({required Object error}) => 'Fejl ved fjernelse fra samling: ${error}',
			'collections.searchCollections' => 'Søg i samlinger...',
			'playlists.title' => 'Playlister',
			'playlists.playlist' => 'Playliste',
			'playlists.noPlaylists' => 'Ingen playlister fundet',
			'playlists.create' => 'Opret playliste',
			'playlists.playlistName' => 'Playlistenavn',
			'playlists.enterPlaylistName' => 'Indtast playlistenavn',
			'playlists.delete' => 'Slet playliste',
			'playlists.removeItem' => 'Fjern fra playliste',
			'playlists.smartPlaylist' => 'Smart playliste',
			'playlists.itemCount' => ({required Object count}) => '${count} elementer',
			'playlists.oneItem' => '1 element',
			'playlists.emptyPlaylist' => 'Denne playliste er tom',
			'playlists.deleteConfirm' => 'Slet playliste?',
			'playlists.deleteMessage' => ({required Object name}) => 'Er du sikker på, at du vil slette "${name}"?',
			'playlists.created' => 'Playliste oprettet',
			'playlists.deleted' => 'Playliste slettet',
			'playlists.itemAdded' => 'Tilføjet til playliste',
			'playlists.itemRemoved' => 'Fjernet fra playliste',
			'playlists.selectPlaylist' => 'Vælg playliste',
			'playlists.searchPlaylists' => 'Søg i playlister...',
			'playlists.errorCreating' => 'Kunne ikke oprette playliste',
			'playlists.errorDeleting' => 'Kunne ikke slette playliste',
			'playlists.errorLoading' => 'Kunne ikke indlæse playlister',
			'playlists.errorAdding' => 'Kunne ikke tilføje til playliste',
			'playlists.errorReordering' => 'Kunne ikke ændre rækkefølge på playlisteelement',
			'playlists.errorRemoving' => 'Kunne ikke fjerne fra playliste',
			'music.goToAlbum' => 'Gå til album',
			'music.goToArtist' => 'Gå til kunstner',
			'music.instantMix' => 'Direkte miks',
			'music.playNext' => 'Afspil næste',
			'music.addToQueue' => 'Føj til kø',
			'music.discNumber' => ({required Object n}) => 'Disk ${n}',
			'music.trackCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n, one: '${n} nummer', other: '${n} numre', ), 
			'music.nowPlaying' => 'Afspiller nu',
			'music.playingFrom' => ({required Object title}) => 'Afspiller fra ${title}',
			'music.queue' => 'Kø',
			'music.clearQueue' => 'Ryd kø',
			'music.lyrics' => 'Sangtekst',
			'music.noLyrics' => 'Ingen sangtekst tilgængelig',
			'music.sleepTimer' => 'Sovetimer',
			'music.sleepTimerEndOfTrack' => 'Slutningen af nummeret',
			'music.sleepTimerMinutes' => ({required Object n}) => '${n} minutter',
			'music.stopPlayback' => 'Stop afspilning',
			'music.previousTrack' => 'Forrige nummer',
			'music.nextTrack' => 'Næste nummer',
			'music.repeat' => 'Gentag',
			'music.repeatAll' => 'Gentag alle',
			'music.repeatOne' => 'Gentag ét nummer',
			'music.instantMixNoServer' => 'Ingen server er tilgængelig til et øjeblikkeligt mix',
			'music.instantMixFailed' => 'Kunne ikke indlæse det direkte miks',
			'music.instantMixEmpty' => 'Det direkte miks indeholdt ingen numre',
			'music.noAudioUrl' => ({required Object track}) => 'Ingen lyd-URL er tilgængelig for ${track}',
			'music.discography.singlesAndEps' => 'Singler og EP\'er',
			'music.discography.live' => 'Live',
			'music.discography.compilations' => 'Opsamlinger',
			'watchTogether.title' => 'Se sammen',
			'watchTogether.description' => 'Se indhold synkroniseret med venner og familie',
			'watchTogether.createRoom' => 'Skab værelse',
			'watchTogether.creatingRoom' => 'Opretter rum...',
			'watchTogether.joinRoom' => 'Deltag i værelset',
			'watchTogether.joiningRoom' => 'Deltager i værelse...',
			'watchTogether.connecting' => 'Opretter forbindelse...',
			'watchTogether.relayPublic' => 'Værelserne bruger de offentlige Open Watch Party-relæer.',
			'watchTogether.relayCustom' => ({required Object url}) => 'Lokaler bruger dit relæ på ${url}.',
			'watchTogether.recentRooms' => 'Seneste rum',
			'watchTogether.roomActions' => 'Rumhandlinger',
			'watchTogether.renameRoom' => 'Omdøb rum',
			'watchTogether.removeRoom' => 'Fjern',
			'watchTogether.enterRoomCode' => 'Indtast koden på 6 tegn fra værten.',
			'watchTogether.roomCode' => 'Værelseskode',
			'watchTogether.paste' => 'Indsæt',
			'watchTogether.noCodeInClipboard' => 'Udklipsholderen indeholder ikke en værelseskode',
			'watchTogether.copyCode' => 'Kopiér kode',
			'watchTogether.codeCopied' => 'Værelseskode kopieret',
			'watchTogether.shareInvite' => 'Del Invitation',
			'watchTogether.qrShare' => 'Del QR-kode',
			'watchTogether.qrHint' => 'Scan med Luroka-appen for at deltage i dette rum.',
			'watchTogether.phasePlaying' => 'Spiller',
			'watchTogether.phasePaused' => 'Pause',
			'watchTogether.phaseWaiting' => 'Venter på alle',
			'watchTogether.inviteCopied' => 'Invitationen er kopieret. Indsæt det i en besked.',
			'watchTogether.inviteMessage' => ({required Object code}) => 'Tilmeld dig mit Watch Together-rum i Luroka: luroka://watch?code=${code} — eller åbn Watch Together, og indtast ${code}.',
			'watchTogether.openSessionControls' => 'Åbn sessionsstyring for Se sammen',
			'watchTogether.reconnecting' => 'Genopretter forbindelse...',
			'watchTogether.reconnectingDescription' => 'Forbindelsen faldt. Du tiltræder automatisk rummet igen.',
			'watchTogether.connected' => 'Forbundet',
			'watchTogether.disconnected' => 'Afbrudt',
			'watchTogether.youAreHost' => 'Du er vært',
			'watchTogether.hostedBy' => ({required Object name}) => 'Værten er ${name}',
			'watchTogether.hostControlsPlayback' => 'Værten styrer afspilningen',
			'watchTogether.anyoneCanControl' => 'Alle kan styre afspilningen',
			'watchTogether.roomLocked' => 'Værelse låst',
			'watchTogether.nowPlaying' => 'Spiller nu',
			'watchTogether.nothingPlaying' => 'Intet spiller',
			'watchTogether.nothingPlayingHost' => 'Spil noget fra et hvilket som helst bibliotek for at dele det med rummet.',
			'watchTogether.nothingPlayingGuest' => 'Når værten spiller noget, åbnes det her.',
			'watchTogether.notShareable' => 'Denne video har ingen katalogmatch, så kun personer med adgang til den samme server kan afspille den.',
			'watchTogether.searching' => 'Leder efter denne video i dine biblioteker...',
			'watchTogether.yourCopy' => 'Din kopi',
			'watchTogether.sharingYourCopy' => 'Du deler din kopi',
			'watchTogether.playingOtherLength' => ({required Object difference}) => 'Afspiller din kopi, ${difference}',
			'watchTogether.mismatchTitle' => 'Dit eksemplar har en anden længde',
			'watchTogether.mismatchDescription' => ({required Object difference}) => 'Din nærmeste kopi er ${difference} end rummets video. Det kan være en anden udskæring eller version.',
			'watchTogether.playAnyway' => 'Spil alligevel',
			'watchTogether.chooseAnotherCopy' => 'Vælg en anden kopi',
			'watchTogether.dontPlay' => 'Spil ikke',
			'watchTogether.unavailableTitle' => 'Du har ikke denne video',
			'watchTogether.unavailableDescription' => 'Luroka kunne ikke finde det i dine biblioteker. Vælg selv en kopi, eller søg igen.',
			'watchTogether.chooseCopy' => 'Vælg en kopi',
			'watchTogether.searchAgain' => 'Søg igen',
			'watchTogether.noCandidates' => 'Der blev ikke fundet nogen kopier i dine biblioteker.',
			'watchTogether.choiceFailed' => 'Denne kopi kunne ikke afspilles for rummet',
			'watchTogether.lengthLonger' => ({required Object duration}) => '${duration} længere',
			'watchTogether.lengthShorter' => ({required Object duration}) => '${duration} kortere',
			'watchTogether.lengthSame' => 'Samme længde',
			'watchTogether.lengthUnknown' => 'Længde ukendt',
			'watchTogether.joinCurrentPlayback' => 'Deltag i nuværende afspilning',
			'watchTogether.joinCurrentPlaybackDescription' => 'Hop tilbage til det værten ser nu',
			'watchTogether.stopMedia' => 'Stop video for alle',
			'watchTogether.syncOffset' => 'Synk offset',
			'watchTogether.syncOffsetDescription' => 'Skift din video, hvis den kører foran eller bagved rummet.',
			'watchTogether.offsetHint' => ({required Object difference}) => 'Din kopi er ${difference} end rummets video.',
			'watchTogether.applyDifference' => ({required Object offset}) => 'Brug ${offset}',
			'watchTogether.offsetMinusSecond' => '-1 sek',
			'watchTogether.offsetMinusTenth' => '-100 ms',
			'watchTogether.offsetPlusTenth' => '+100 ms',
			'watchTogether.offsetPlusSecond' => '+1 s',
			'watchTogether.participants' => 'Deltagere',
			'watchTogether.participantCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n, one: '${n} deltager', other: '${n} deltagere', ), 
			'watchTogether.hostBadge' => 'VÆRT',
			'watchTogether.nameYou' => ({required Object name}) => '${name} (dig)',
			'watchTogether.playerIdle' => 'Inaktiv',
			'watchTogether.playerLoading' => 'Indlæser',
			'watchTogether.playerReady' => 'Klar',
			'watchTogether.playerBuffering' => 'Buffer',
			'watchTogether.matchSearching' => 'Søger',
			'watchTogether.matchMatched' => 'Har videoen',
			'watchTogether.matchMismatched' => 'Forskellig længde',
			'watchTogether.matchUnavailable' => 'Har ikke videoen',
			'watchTogether.participantOffset' => ({required Object offset}) => 'Offset ${offset}',
			'watchTogether.makeHost' => 'Gør til vært',
			'watchTogether.makeHostQuestion' => 'Overfør vært?',
			'watchTogether.makeHostConfirm' => ({required Object name}) => '${name} styrer afspilningen og sessionen for alle.',
			'watchTogether.transfer' => 'Overfør',
			'watchTogether.removeParticipant' => 'Fjern fra rummet',
			'watchTogether.removeParticipantQuestion' => ({required Object name}) => 'Vil du fjerne ${name}?',
			'watchTogether.removeParticipantConfirm' => ({required Object name}) => '${name} forlader rummet. De kan tilslutte sig igen med koden, medmindre du låser lokalet.',
			'watchTogether.remove' => 'Fjern',
			'watchTogether.roomSettings' => 'Rumindstillinger',
			'watchTogether.letEveryoneControl' => 'Lad alle styre afspilningen',
			'watchTogether.lockRoom' => 'Låseværelse',
			'watchTogether.lockRoomDescription' => 'Ingen nye kan være med',
			'watchTogether.leaveRoom' => 'Forlad værelse',
			'watchTogether.leaveRoomQuestion' => 'Forlade rummet?',
			'watchTogether.leaveRoomConfirm' => 'Du kan deltage igen med værelseskoden.',
			'watchTogether.leave' => 'Forlad',
			'watchTogether.endRoom' => 'Slutrum',
			'watchTogether.endRoomQuestion' => 'Slutrum?',
			'watchTogether.endRoomConfirm' => 'Dette afslutter rummet for alle.',
			'watchTogether.end' => 'Afslut',
			'watchTogether.playBlockedTitle' => 'Afspilningen startede ikke',
			'watchTogether.playBlockedDescription' => 'Tryk på afspil for at begynde at se med rummet.',
			'watchTogether.notices.pressedPlay' => ({required Object name}) => '${name} trykkede på afspil',
			'watchTogether.notices.playbackStarted' => 'Afspilning startede',
			'watchTogether.notices.paused' => ({required Object name}) => '${name} satte på pause',
			'watchTogether.notices.playbackPaused' => 'Afspilning sat på pause',
			'watchTogether.notices.jumpedTo' => ({required Object name, required Object position}) => '${name} hoppede til ${position}',
			'watchTogether.notices.roomJumpedTo' => ({required Object position}) => 'Sprang til ${position}',
			'watchTogether.notices.changedSpeed' => ({required Object name, required Object speed}) => '${name} satte hastigheden til ${speed}',
			'watchTogether.notices.speedChanged' => ({required Object speed}) => 'Hastighed indstillet til ${speed}',
			'watchTogether.notices.startedMedia' => ({required Object name, required Object title}) => '${name} startet ${title}',
			'watchTogether.notices.mediaStarted' => ({required Object title}) => 'Spiller nu ${title}',
			'watchTogether.notices.stoppedMedia' => ({required Object name}) => '${name} stoppede videoen',
			'watchTogether.notices.mediaStopped' => 'Videoen stoppede',
			'watchTogether.notices.waitingFor' => ({required Object name}) => 'Venter på ${name}...',
			'watchTogether.notices.waitingForSomeone' => 'Venter på, at nogen skal indhente...',
			'watchTogether.notices.finished' => 'Færdig',
			'watchTogether.notices.hostChangedTo' => ({required Object name}) => '${name} er nu vært',
			'watchTogether.notices.youAreNowHost' => 'Du er nu værten',
			_ => null,
		} ?? switch (path) {
			'watchTogether.notices.joined' => ({required Object name}) => '${name} deltog',
			'watchTogether.notices.left' => ({required Object name}) => '${name} forlod',
			'watchTogether.notices.controlRefused' => 'Kun værten kan styre afspilningen',
			'watchTogether.notices.searchFailed' => 'Nogle servere kunne ikke søges efter rummets video',
			'watchTogether.notices.playBlocked' => 'Tryk på afspil for at starte',
			'watchTogether.notices.shareFailed' => 'Kunne ikke dele denne video med rummet',
			'watchTogether.notices.notShared' => 'Downloadede videoer deles ikke med rummet',
			'watchTogether.notices.openFailed' => 'Rummets video kunne ikke åbnes',
			'watchTogether.ended.ended' => 'Værten afsluttede rummet',
			'watchTogether.ended.kicked' => 'Du blev fjernet fra rummet',
			'watchTogether.ended.expired' => 'Værelset udløb',
			'watchTogether.ended.replaced' => 'Du sluttede dig til dette rum på en anden enhed',
			'watchTogether.ended.lost' => 'Mistede forbindelsen til rummet',
			'watchTogether.errors.invalidCode' => 'Det er ikke en værelseskode. Koder har 6 bogstaver og cifre uden 0, 1, I, L eller O.',
			'watchTogether.errors.roomNotFound' => 'Intet værelse har den kode. Det kan være slut.',
			'watchTogether.errors.roomFull' => 'Det værelse er fyldt.',
			'watchTogether.errors.roomLocked' => 'Værten låste rummet.',
			'watchTogether.errors.relayFull' => 'Watch Together har travlt lige nu. Prøv igen senere.',
			'watchTogether.errors.unreachable' => 'Kunne ikke nå Watch Together-relæet. Tjek din forbindelse.',
			'watchTogether.errors.rateLimited' => 'For mange forsøg. Vent et øjeblik og prøv igen.',
			'watchTogether.errors.clientBlocked' => 'Denne version af Luroka kan ikke bruge relæet. Opdater appen.',
			'watchTogether.errors.forbidden' => 'Kun værten kan gøre det.',
			'watchTogether.errors.notInRoom' => 'Du er ikke i et værelse.',
			'watchTogether.errors.alreadyInRoom' => 'Du er allerede i et værelse.',
			'watchTogether.errors.resumeFailed' => 'Kunne ikke slutte sig til rummet igen.',
			'watchTogether.errors.unsupported' => 'Relæet understøtter ikke dette.',
			'watchTogether.errors.generic' => 'Noget gik galt. Prøv igen.',
			'watchTogether.untitledEpisode' => ({required Object number}) => 'Afsnit ${number}',
			'downloads.title' => 'Downloads',
			'downloads.manage' => 'Administrer',
			'downloads.tvShows' => 'TV-serier',
			'downloads.movies' => 'Film',
			'downloads.music' => 'Musik',
			'downloads.tracksQueued' => ({required Object count}) => '${count} numre i kø til download',
			'downloads.noDownloads' => 'Ingen downloads endnu',
			'downloads.noDownloadsDescription' => 'Downloadet indhold vises her til offlinevisning',
			'downloads.downloadNow' => 'Download',
			'downloads.deleteDownload' => 'Slet download',
			'downloads.retryDownload' => 'Prøv download igen',
			'downloads.downloadQueued' => 'Download i kø',
			'downloads.downloadResumed' => 'Download genoptaget',
			'downloads.serverErrorBitrate' => 'Serverfejl: filen overskrider muligvis grænsen for ekstern bitrate',
			'downloads.storageFull' => 'Downloads blev stoppet for at beskytte den ledige lagerplads. Frigør plads, eller vælg en anden downloadplacering, og prøv igen.',
			'downloads.storageUnavailable' => 'Downloads blev stoppet, fordi den tilgængelige lagerplads ikke kunne kontrolleres. Tjek downloadplaceringen, og prøv igen.',
			'downloads.episodesQueued' => ({required Object count}) => '${count} episoder i downloadkø',
			'downloads.downloadDeleted' => 'Download slettet',
			'downloads.deleteConfirm' => ({required Object title}) => 'Slet "${title}" fra denne enhed?',
			'downloads.deleteCollectionDownloads' => 'Slet downloads',
			'downloads.deleteCollectionDownloadsConfirm' => ({required Object title}) => 'Vil du slette hver download i "${title}" fra denne enhed?',
			'downloads.collectionDownloadsDeleted' => 'Downloads slettet',
			'downloads.cancelledDownloadTitle' => 'Annulleret download',
			'downloads.cancelledDownloadMessage' => 'Denne download blev annulleret. Hvad vil du gøre?',
			'downloads.allEpisodesAlreadyDownloaded' => 'Alle episoder er allerede downloadet',
			'downloads.resumeDownload' => 'Genoptag download',
			'downloads.cancelledDownload' => 'Annulleret download',
			'downloads.syncingFile' => ({required Object file, required Object status}) => '${file} (synkroniserer ${status})',
			'downloads.downloadedFileClickToComplete' => ({required Object file}) => '${file} downloadet — klik for at fuldføre',
			'downloads.partialDownloadClickToComplete' => 'Delvist downloadet — klik for at fuldføre',
			'downloads.deleting' => 'Sletter...',
			'downloads.deletingWithProgress' => ({required Object title, required Object current, required Object total}) => 'Sletter ${title}... (${current} af ${total})',
			'downloads.queuedTooltip' => 'I kø',
			'downloads.queuedFilesTooltip' => ({required Object files}) => 'I kø: ${files}',
			'downloads.downloadingTooltip' => 'Downloader...',
			'downloads.downloadingFilesTooltip' => ({required Object files}) => 'Downloader ${files}',
			'downloads.noDownloadsTree' => 'Ingen downloads',
			'downloads.pauseAll' => 'Sæt alle på pause',
			'downloads.resumeAll' => 'Genoptag alle',
			'downloads.retryAll' => 'Prøv alle igen',
			'downloads.retryFailed' => 'Prøv mislykkede downloads igen',
			'downloads.deleteAll' => 'Slet alle',
			'downloads.selectVersion' => 'Vælg version',
			'downloads.allEpisodes' => 'Alle episoder',
			'downloads.unwatchedOnly' => 'Kun usete',
			'downloads.nextNUnwatched' => ({required Object count}) => 'Næste ${count} usete',
			'downloads.customAmount' => 'Angiv antal...',
			'downloads.includeSpecials' => 'Medtag specialafsnit',
			'downloads.howManyEpisodes' => 'Hvor mange episoder?',
			'downloads.invalidEpisodeCount' => 'Indtast et gyldigt antal episoder.',
			'downloads.keepSynced' => 'Synkroniser løbende',
			'downloads.downloadOnce' => 'Download én gang',
			'downloads.keepNUnwatched' => ({required Object count}) => 'Behold ${count} usete',
			'downloads.editSyncRule' => 'Rediger synkroniseringsregel',
			'downloads.removeSyncRule' => 'Fjern synkroniseringsregel',
			'downloads.removeSyncRuleConfirm' => ({required Object title}) => 'Stop synkronisering af "${title}"? Downloadede episoder beholdes.',
			'downloads.removeListSyncRuleConfirm' => ({required Object title}) => 'Stop synkronisering af "${title}"?',
			'downloads.deleteSyncRuleDownloads' => 'Slet også tilknyttede downloads',
			'downloads.deleteSyncRuleDownloadsDescription' => 'Downloads, der bruges af en anden synkroniseringsregel eller profil, beholdes.',
			'downloads.syncRuleCreated' => ({required Object count}) => 'Synkroniseringsregel oprettet — beholder ${count} usete episoder',
			'downloads.syncRuleUpdated' => 'Synkroniseringsregel opdateret',
			'downloads.syncRuleRemoved' => 'Synkroniseringsregel fjernet',
			'downloads.syncRuleAndDownloadsRemoved' => 'Synkroniseringsregel og tilknyttede downloads fjernet',
			'downloads.syncRuleCleanupBusy' => 'Synkroniseringsregler opdateres lige nu. Prøv igen om et øjeblik.',
			'downloads.syncRuleCleanupUnavailable' => 'Tilknyttede downloads kunne ikke identificeres sikkert. Genopret forbindelse til serveren og prøv igen, eller fjern reglen uden at slette downloads.',
			'downloads.syncedNewEpisodes' => ({required Object count, required Object title}) => 'Synkroniserede ${count} nye episoder for ${title}',
			'downloads.activeSyncRules' => 'Synkroniseringsregler',
			'downloads.noSyncRules' => 'Ingen synkroniseringsregler',
			'downloads.manageSyncRule' => 'Administrer synkronisering',
			'downloads.editEpisodeCount' => 'Antal episoder',
			'downloads.editSyncFilter' => 'Synkroniseringsfilter',
			'downloads.syncAllItems' => 'Synkroniserer alle elementer',
			'downloads.syncUnwatchedItems' => 'Synkroniserer usete elementer',
			'downloads.syncRuleServerContext' => ({required Object server, required Object status}) => 'Server: ${server} • ${status}',
			'downloads.syncRuleAvailable' => 'Tilgængelig',
			'downloads.syncRuleOffline' => 'Offline',
			'downloads.syncRuleSignInRequired' => 'Login påkrævet',
			'downloads.syncRuleAccessDenied' => 'Adgang nægtet',
			'downloads.syncRuleNotAvailableForProfile' => 'Ikke tilgængelig for nuværende profil',
			'downloads.syncRuleUnknownServer' => 'Ukendt server',
			'downloads.syncRuleListCreated' => 'Synkroniseringsregel oprettet',
			'downloads.backgroundWarning.bannerBlocked' => 'Downloads stopper, når du forlader appen',
			'downloads.backgroundWarning.bannerDegraded' => 'Downloads i baggrunden kan være begrænsede',
			'downloads.backgroundWarning.bannerAction' => 'Detaljer',
			'downloads.backgroundWarning.sheetTitle' => 'Downloads i baggrunden er blokeret',
			'downloads.backgroundWarning.sheetTitleDegraded' => 'Downloads i baggrunden kan være begrænsede',
			'downloads.backgroundWarning.sheetIntro' => 'Android forhindrer Luroka i at downloade stabilt i baggrunden.',
			'downloads.backgroundWarning.sheetIntroDegraded' => 'Din enhed begrænser, hvornår Luroka kan downloade i baggrunden.',
			'downloads.backgroundWarning.reasonBackgroundRestricted' => 'Lurokas baggrundsaktivitet er begrænset. Indstil batteriforbruget eller baggrundsaktiviteten til "Ubegrænset".',
			'downloads.backgroundWarning.reasonStandbyRestricted' => 'Android har sat Luroka i begrænset standbytilstand. Indstil batteriforbruget til "Ubegrænset".',
			'downloads.backgroundWarning.reasonDownloadChannelBlocked' => 'Notifikationer om downloads er slået fra, så status og betjeningsknapper muligvis ikke er tilgængelige.',
			'downloads.backgroundWarning.reasonNotificationsDisabled' => 'Notifikationer er slået fra. På Android 13 eller nyere er de nødvendige ved lange downloads i baggrunden.',
			'downloads.backgroundWarning.reasonDataSaver' => 'Datasparefunktionen er slået til, hvilket blokerer downloads i baggrunden via mobildata. Downloads bør stadig køre på Wi-Fi.',
			'downloads.backgroundWarning.reasonOemUnknown' => 'Downloads stoppede gentagne gange, mens Luroka var i baggrunden. Tjek Lurokas indstillinger for batteriforbrug eller baggrundsaktivitet.',
			'downloads.backgroundWarning.openSettings' => 'Åbn indstillinger',
			'downloads.backgroundWarning.stillNotWorking' => 'Enhedsspecifik hjælp',
			'downloads.backgroundWarning.stillNotWorkingDescription' => 'Se vejledningen til din enhed, eller send en logfil fra Indstillinger › Vis logfiler, hvis problemet fortsætter.',
			'downloads.backgroundWarning.dialogTitle' => 'Downloads bliver muligvis ikke færdige',
			'downloads.backgroundWarning.dialogDownloadAnyway' => 'Download alligevel',
			'downloads.backgroundWarning.dialogFixFirst' => 'Løs dette først',
			'downloads.backgroundWarning.statusTile' => 'Downloads i baggrunden',
			'downloads.backgroundWarning.statusOk' => 'Må køre i baggrunden',
			'downloads.backgroundWarning.statusBlocked' => 'Blokeret af systemindstillinger',
			'downloads.backgroundWarning.statusDegraded' => 'Begrænset af systemindstillinger',
			'downloads.backgroundWarning.statusUnknown' => 'Endnu ikke kontrolleret',
			'downloads.backgroundWarning.settingsUnavailable' => 'Kunne ikke åbne systemindstillingerne på denne enhed',
			'downloads.backgroundWarning.linkUnavailable' => 'Kunne ikke åbne dontkillmyapp.com på denne enhed',
			'downloads.options' => 'Valgmuligheder for downloads',
			'downloads.groupings.library' => 'Bibliotek',
			'downloads.groupings.collections' => 'Samlinger',
			'downloads.unknownLibrary' => 'Ukendt bibliotek',
			'downloads.unknownShow' => 'Ukendt serie',
			'downloads.unknownSeason' => 'Ukendt sæson',
			'downloads.unknownAlbum' => 'Ukendt album',
			'downloads.completedOfTotal' => ({required Object completed, required Object total}) => '${completed}/${total} fuldført',
			'downloads.errorFileNotFound' => 'Filen blev ikke fundet (404)',
			'downloads.errorDownloadNotAllowed' => 'Serveren tillader ikke download (403)',
			'downloads.errorDownloadFailed' => 'Download mislykkedes',
			'downloads.errorDownloadFailedWithReason' => ({required Object reason}) => 'Download mislykkedes: ${reason}',
			'downloads.errorHttpStatus' => ({required Object status}) => 'Download mislykkedes (HTTP ${status})',
			'downloads.errorPostProcessing' => ({required Object reason}) => 'Efterbehandling mislykkedes: ${reason}',
			'downloads.reasonFileNotSaved' => 'filen kunne ikke gemmes på denne enhed',
			'downloads.reasonCannotResume' => 'den delvise download kunne ikke genoptages',
			'downloads.reasonDeviceStorageFull' => 'der er ikke mere lagerplads på denne enhed',
			'downloads.notificationDownloading' => 'Downloader...',
			'downloads.notificationComplete' => 'Download fuldført',
			'downloads.notificationPaused' => 'Download sat på pause',
			'shaders.title' => 'Shadere',
			'shaders.noShaderDescription' => 'Ingen videoforbedring',
			'shaders.nvscalerDescription' => 'NVIDIA-billedskalering for skarpere video',
			'shaders.artcnnVariantNeutral' => 'Neutral',
			'shaders.artcnnVariantDenoise' => 'Støjreduktion',
			'shaders.artcnnVariantDenoiseSharpen' => 'Støjreduktion + skarphed',
			'shaders.qualityFast' => 'Hurtig',
			'shaders.qualityHQ' => 'Høj kvalitet',
			'shaders.mode' => 'Tilstand',
			'shaders.importShader' => 'Importér shader',
			'shaders.customShaderDescription' => 'Brugerdefineret GLSL-shader',
			'shaders.shaderImported' => 'Shader importeret',
			'shaders.shaderImportFailed' => 'Kunne ikke importere shader',
			'shaders.deleteShader' => 'Slet shader',
			'shaders.deleteShaderConfirm' => ({required Object name}) => 'Slet "${name}"?',
			'companionRemote.title' => 'Fjernbetjening',
			'companionRemote.connectedTo' => ({required Object name}) => 'Forbundet til ${name}',
			'companionRemote.unknownDevice' => 'Ukendt enhed',
			'companionRemote.session.startingServer' => 'Starter fjernbetjeningsserver...',
			'companionRemote.session.hostAddress' => 'Værtsadresse',
			'companionRemote.session.connected' => 'Forbundet',
			'companionRemote.session.serverRunning' => 'Fjernbetjeningsserver aktiv',
			'companionRemote.session.serverStopped' => 'Fjernbetjeningsserver stoppet',
			'companionRemote.session.serverRunningDescription' => 'Mobile enheder på dit netværk kan oprette forbindelse til denne app',
			'companionRemote.session.serverStoppedDescription' => 'Start serveren for at tillade mobilenheder at oprette forbindelse',
			'companionRemote.session.usePhoneToControl' => 'Brug din mobilenhed til at styre denne app',
			'companionRemote.session.startServer' => 'Start serveren',
			'companionRemote.session.stopServer' => 'Stop serveren',
			'companionRemote.session.minimize' => 'Minimér',
			'companionRemote.session.manualAddressHint' => 'Manuel forbindelsesadresse:',
			'companionRemote.pairing.discoveryDescription' => 'Luroka-enheder med samme Plex-konto vises her',
			'companionRemote.pairing.hostAddressHint' => '192.168.1.100:48632',
			'companionRemote.pairing.connecting' => 'Opretter forbindelse...',
			'companionRemote.pairing.searchingForDevices' => 'Søger efter enheder...',
			'companionRemote.pairing.noDevicesFound' => 'Ingen enheder fundet på dit netværk',
			'companionRemote.pairing.noDevicesHint' => 'Åbn Luroka på din computer, og brug det samme Wi-Fi-netværk',
			'companionRemote.pairing.availableDevices' => 'Tilgængelige enheder',
			'companionRemote.pairing.manualConnection' => 'Manuel forbindelse',
			'companionRemote.pairing.cryptoInitFailed' => 'Kunne ikke starte sikker forbindelse. Log ind på Plex først.',
			'companionRemote.pairing.validationHostRequired' => 'Angiv en værtsadresse',
			'companionRemote.pairing.validationHostFormat' => 'Format skal være IP:port (f.eks. 192.168.1.100:48632)',
			'companionRemote.pairing.connectionTimedOut' => 'Forbindelsen fik timeout. Brug samme netværk på begge enheder.',
			'companionRemote.pairing.sessionNotFound' => 'Enhed ikke fundet. Sørg for, at Luroka kører på værten.',
			'companionRemote.pairing.authFailed' => 'Godkendelse mislykkedes. Begge enheder skal bruge samme Plex-konto.',
			'companionRemote.pairing.failedToConnect' => ({required Object error}) => 'Kunne ikke oprette forbindelse: ${error}',
			'companionRemote.remote.disconnectConfirm' => 'Vil du afbryde forbindelsen til fjernsessionen?',
			'companionRemote.remote.reconnecting' => 'Genopretter forbindelse...',
			'companionRemote.remote.attemptOf' => ({required Object current}) => 'Forsøg ${current} af 5',
			'companionRemote.remote.retryNow' => 'Prøv igen nu',
			'companionRemote.remote.tabRemote' => 'Fjernbetjening',
			'companionRemote.remote.tabPlay' => 'Afspil',
			'companionRemote.remote.tabMore' => 'Mere',
			'companionRemote.remote.menu' => 'Menu',
			'companionRemote.remote.tabNavigation' => 'Fanenavigation',
			'companionRemote.remote.tabDiscover' => 'Opdag',
			'companionRemote.remote.tabLibraries' => 'Biblioteker',
			'companionRemote.remote.tabSearch' => 'Søg',
			'companionRemote.remote.tabDownloads' => 'Downloads',
			'companionRemote.remote.tabSettings' => 'Indstillinger',
			'companionRemote.remote.previous' => 'Forrige',
			'companionRemote.remote.playPause' => 'Afspil/Pause',
			'companionRemote.remote.next' => 'Næste',
			'companionRemote.remote.seekBack' => 'Spol tilbage',
			'companionRemote.remote.stop' => 'Stop',
			'companionRemote.remote.seekForward' => 'Spol frem',
			'companionRemote.remote.volume' => 'Lydstyrke',
			'companionRemote.remote.volumeDown' => 'Ned',
			'companionRemote.remote.volumeUp' => 'Op',
			'companionRemote.remote.fullscreen' => 'Fuldskærm',
			'companionRemote.remote.subtitles' => 'Undertekster',
			'companionRemote.remote.audio' => 'Lyd',
			'companionRemote.remote.searchHint' => 'Søg på desktop...',
			'companionRemote.errors.noNetworkInterface' => 'Ingen netværksgrænseflade fundet',
			'companionRemote.errors.authenticationFailed' => 'Godkendelse mislykkedes',
			'companionRemote.errors.serverStartFailed' => ({required Object error}) => 'Fjernbetjeningsserveren kunne ikke startes: ${error}',
			'companionRemote.errors.commandFailed' => ({required Object error}) => 'Kunne ikke sende fjernkommando: ${error}',
			'companionRemote.errors.joinTimedOut' => 'Tidsgrænse for deltagelse i session overskredet',
			'companionRemote.errors.failedToConnectAnyAddress' => 'Kunne ikke oprette forbindelse til nogen adresse',
			'companionRemote.errors.connectionLostAfterAttempts' => ({required Object attempts}) => 'Forbindelse mistet efter ${attempts} forsøg',
			'companionRemote.errors.connectionLost' => 'Forbindelse mistet',
			'companionRemote.closedBeforeAuth' => 'Forbindelsen blev lukket før godkendelsen',
			'videoSettings.playbackSpeed' => 'Afspilningshastighed',
			'videoSettings.normalSpeed' => 'Normal',
			'videoSettings.sleepTimerActive' => ({required Object duration}) => 'Aktiv (${duration})',
			'videoSettings.zoom' => 'Zoom',
			'videoSettings.sleepTimer' => 'Sove-timer',
			'videoSettings.audioSync' => 'Lydsynkronisering',
			'videoSettings.subtitleSync' => 'Undertekstsynkronisering',
			'videoSettings.hdr' => 'HDR',
			'videoSettings.hdrUnsupported' => 'HDR er ikke tilgængelig her – denne skrivebordskompositor eller videoudgang kan ikke håndtere det.',
			'videoSettings.hdrToneMapping' => 'HDR-tonemapping',
			'videoSettings.hdrToneMappingCompositor' => 'Kompositor',
			'videoSettings.hdrToneMappingCompositorDescription' => 'Videregiv kildens HDR-metadata, og lad skrivebordskompositoren tonemappe dem.',
			'videoSettings.hdrToneMappingPlayer' => 'Afspiller',
			'videoSettings.hdrToneMappingPlayerDescription' => 'Tilpas til skærmens maksimale lysstyrke i afspilleren, og fortæl derefter kompositoren om resultatet.',
			'videoSettings.hdrToneMappingFailed' => 'Kunne ikke ændre HDR-tonemapping – den tidligere tilstand er stadig aktiv.',
			'videoSettings.audioOutput' => 'Lydoutput',
			'videoSettings.performanceOverlay' => 'Ydelsesoverlay',
			'videoSettings.audioOutputDolbyAtmos' => 'Dolby Atmos',
			'videoSettings.audioOutputDolbyAudio' => 'Dolby Audio',
			'videoSettings.audioOutputSurround' => 'Surround',
			'videoSettings.audioOutputSpatial' => 'Rumlig lyd',
			'videoSettings.audioOutputStereo' => 'Stereo',
			'videoSettings.audioNormalization' => 'Normalisér lydstyrke',
			'videoSettings.audioNormalizationDisablesPassthrough' => 'Dekoder lyd til PCM; passthrough er fra, mens dette er slået til',
			'performanceOverlay.color' => 'Farve',
			'performanceOverlay.performance' => 'Ydeevne',
			'performanceOverlay.buffer' => 'Buffer',
			'performanceOverlay.app' => 'App',
			'performanceOverlay.decoder' => 'Dekoder',
			'performanceOverlay.rawDecoder' => 'Rå dekoder',
			'performanceOverlay.tunneling' => 'Tunneling',
			'performanceOverlay.passthrough' => 'Passthrough',
			'performanceOverlay.aspect' => 'Billedformat',
			'performanceOverlay.rotation' => 'Rotation',
			'performanceOverlay.dvSource' => 'DV-kilde',
			'performanceOverlay.dvPath' => 'DV-sti',
			'performanceOverlay.dvRouteDecoder' => 'Dolby Vision dekoder',
			'performanceOverlay.dvRouteDecoderP81' => 'Dolby Vision dekoder (P7→8.1)',
			'performanceOverlay.dvRouteBaseLayer' => 'Grundlag',
			'performanceOverlay.dvRouteBaseLayerHdr10' => 'HDR10 basislag',
			'performanceOverlay.dvRouteBaseLayerHlg' => 'HLG basislag',
			'performanceOverlay.dvRouteBaseLayerSdr' => 'SDR basislag',
			'performanceOverlay.dvRouteReshaped' => 'RPU omformet (gpu-næste)',
			'performanceOverlay.p7Conversion' => 'P7-konv.',
			'performanceOverlay.sampleRate' => 'Samplingsrate',
			'performanceOverlay.pixelFormat' => 'Pixelformat',
			'performanceOverlay.hwFormat' => 'HW-format',
			'performanceOverlay.matrix' => 'Matrix',
			'performanceOverlay.primaries' => 'Primærfarver',
			'performanceOverlay.transfer' => 'Overførsel',
			'performanceOverlay.renderFps' => 'Gengivelses-FPS',
			'performanceOverlay.displayFps' => 'Skærm-FPS',
			'performanceOverlay.avSync' => 'A/V-synk.',
			'performanceOverlay.dropped' => 'Tabte',
			'performanceOverlay.dvRpus' => 'DV RPU’er',
			'performanceOverlay.dvRpuAverage' => 'DV RPU gns.',
			'performanceOverlay.dvSampleAverage' => 'DV-sample gns.',
			'performanceOverlay.maxLuma' => 'Maks. luma',
			'performanceOverlay.minLuma' => 'Min. luma',
			'performanceOverlay.maxCll' => 'MaxCLL',
			'performanceOverlay.maxFall' => 'MaxFALL',
			'performanceOverlay.cacheUsed' => 'Brugt cache',
			'performanceOverlay.cacheLimit' => 'Cachegrænse',
			'performanceOverlay.speed' => 'Hastighed',
			'performanceOverlay.player' => 'Afspiller',
			'performanceOverlay.memory' => 'Hukommelse',
			'performanceOverlay.uiFps' => 'UI-FPS',
			'performanceOverlay.fps' => 'FPS',
			'performanceOverlay.decoderAndroidHw' => 'Android HW',
			'performanceOverlay.decoderNvidiaHw' => 'NVIDIA HW',
			'performanceOverlay.decoderQualcommHw' => 'Qualcomm HW',
			'performanceOverlay.decoderMediatekHw' => 'MediaTek HW',
			'performanceOverlay.decoderExynosHw' => 'Exynos HW',
			'performanceOverlay.decoderSoftware' => 'Software',
			'performanceOverlay.decoderHardware' => 'Hardware',
			'performanceOverlay.tunnelingActive' => 'Aktiv',
			'performanceOverlay.dvRpuFailed' => ({required Object converted, required Object failures}) => '${converted} (${failures} mislykkedes)',
			'externalPlayer.title' => 'Ekstern afspiller',
			'externalPlayer.useExternalPlayer' => 'Brug ekstern afspiller',
			'externalPlayer.useExternalPlayerDescription' => 'Åbn videoer i en anden app',
			'externalPlayer.selectPlayer' => 'Vælg afspiller',
			'externalPlayer.customPlayers' => 'Brugerdefinerede afspillere',
			'externalPlayer.systemDefault' => 'Systemstandard',
			'externalPlayer.addCustomPlayer' => 'Tilføj brugerdefineret afspiller',
			'externalPlayer.playerName' => 'Afspillernavn',
			'externalPlayer.playerNameHint' => 'Min afspiller',
			'externalPlayer.playerCommand' => 'Kommando',
			'externalPlayer.playerPackage' => 'Pakkenavn',
			'externalPlayer.playerUrlScheme' => 'URL-skema',
			'externalPlayer.off' => 'Fra',
			'externalPlayer.launchFailed' => 'Kunne ikke åbne ekstern afspiller',
			'externalPlayer.appNotInstalled' => ({required Object name}) => '${name} er ikke installeret',
			'externalPlayer.playInExternalPlayer' => 'Afspil i ekstern afspiller',
			'metadataEdit.editMetadata' => 'Rediger...',
			'metadataEdit.screenTitle' => 'Rediger metadata',
			'metadataEdit.basicInfo' => 'Grundlæggende oplysninger',
			'metadataEdit.artwork' => 'Grafik',
			'metadataEdit.advancedSettings' => 'Avancerede indstillinger',
			'metadataEdit.title' => 'Titel',
			'metadataEdit.sortTitle' => 'Sorteringstitel',
			'metadataEdit.originalTitle' => 'Originaltitel',
			'metadataEdit.releaseDate' => 'Udgivelsesdato',
			'metadataEdit.contentRating' => 'Aldersgrænse',
			'metadataEdit.studio' => 'Studie',
			'metadataEdit.tagline' => 'Slogan',
			'metadataEdit.summary' => 'Resumé',
			'metadataEdit.poster' => 'Plakat',
			'metadataEdit.background' => 'Baggrund',
			'metadataEdit.logo' => 'Logo',
			'metadataEdit.squareArt' => 'Kvadratisk billede',
			'metadataEdit.selectPoster' => 'Vælg plakat',
			'metadataEdit.selectBackground' => 'Vælg baggrund',
			'metadataEdit.selectLogo' => 'Vælg logo',
			'metadataEdit.selectSquareArt' => 'Vælg kvadratisk billede',
			'metadataEdit.fromUrl' => 'Fra URL',
			'metadataEdit.uploadFile' => 'Upload fil',
			'metadataEdit.enterImageUrl' => 'Indtast billed-URL',
			'metadataEdit.imageUrl' => 'Billed-URL',
			'metadataEdit.metadataUpdated' => 'Metadata opdateret',
			'metadataEdit.metadataUpdateFailed' => 'Kunne ikke opdatere metadata',
			'metadataEdit.artworkUpdated' => 'Grafik opdateret',
			'metadataEdit.artworkUpdateFailed' => 'Kunne ikke opdatere grafik',
			'metadataEdit.noArtworkAvailable' => 'Ingen grafik tilgængelig',
			'metadataEdit.artworkOption' => ({required Object index}) => 'Grafikvalg ${index}',
			'metadataEdit.selectedArtworkOption' => ({required Object index}) => 'Grafikvalg ${index}, valgt',
			'metadataEdit.notSet' => 'Ikke indstillet',
			'metadataEdit.libraryDefault' => 'Biblioteksstandard',
			'metadataEdit.accountDefault' => 'Kontostandard',
			'metadataEdit.seriesDefault' => 'Seriestandard',
			'metadataEdit.episodeSorting' => 'Episodesortering',
			'metadataEdit.oldestFirst' => 'Ældste først',
			'metadataEdit.newestFirst' => 'Nyeste først',
			'metadataEdit.keep' => 'Behold',
			'metadataEdit.allEpisodes' => 'Alle episoder',
			'metadataEdit.latestEpisodes' => ({required Object count}) => '${count} seneste episoder',
			'metadataEdit.latestEpisode' => 'Seneste episode',
			'metadataEdit.episodesAddedPastDays' => ({required Object count}) => 'Episoder tilføjet de seneste ${count} dage',
			'metadataEdit.deleteAfterPlaying' => 'Slet episoder efter afspilning',
			'metadataEdit.never' => 'Aldrig',
			'metadataEdit.afterADay' => 'Efter en dag',
			'metadataEdit.afterAWeek' => 'Efter en uge',
			'metadataEdit.afterAMonth' => 'Efter en måned',
			'metadataEdit.onNextRefresh' => 'Ved næste opdatering',
			'metadataEdit.seasons' => 'Sæsoner',
			'metadataEdit.show' => 'Vis',
			'metadataEdit.hide' => 'Skjul',
			'metadataEdit.episodeOrdering' => 'Episoderækkefølge',
			'metadataEdit.tmdbAiring' => 'The Movie Database (udsendt)',
			'metadataEdit.tvdbAiring' => 'TheTVDB (udsendt)',
			'metadataEdit.tvdbAbsolute' => 'TheTVDB (Absolut)',
			'metadataEdit.metadataLanguage' => 'Metadatasprog',
			'metadataEdit.useOriginalTitle' => 'Brug originaltitel',
			'metadataEdit.preferredAudioLanguage' => 'Foretrukket lydsprog',
			'metadataEdit.preferredSubtitleLanguage' => 'Foretrukket undertekstsprog',
			'metadataEdit.subtitleMode' => 'Automatisk valg af undertekster',
			'metadataEdit.manuallySelected' => 'Manuelt valgt',
			'metadataEdit.shownWithForeignAudio' => 'Vis ved fremmedsproget lyd',
			'metadataEdit.alwaysEnabled' => 'Altid aktiveret',
			'metadataEdit.tags' => 'Tags',
			'metadataEdit.addTag' => 'Tilføj tag',
			'metadataEdit.genre' => 'Genre',
			'metadataEdit.director' => 'Instruktør',
			'metadataEdit.writer' => 'Forfatter',
			'metadataEdit.producer' => 'Producer',
			'metadataEdit.country' => 'Land',
			'metadataEdit.collection' => 'Samling',
			'metadataEdit.label' => 'Etiket',
			'metadataEdit.quickTag' => 'Hurtigt tag...',
			'matchScreen.match' => 'Match...',
			'matchScreen.fixMatch' => 'Ret match...',
			'matchScreen.unmatch' => 'Fjern match',
			'matchScreen.unmatchConfirm' => 'Ryd dette match? Plex behandler det som umatchet, indtil det matches igen.',
			'matchScreen.unmatchSuccess' => 'Match fjernet',
			'matchScreen.unmatchFailed' => 'Kunne ikke fjerne match',
			'matchScreen.matchApplied' => 'Match anvendt',
			'matchScreen.matchFailed' => 'Kunne ikke anvende match',
			'matchScreen.titleHint' => 'Titel',
			'matchScreen.yearHint' => 'År',
			'matchScreen.search' => 'Søg',
			'matchScreen.noMatchesFound' => 'Ingen match fundet',
			'serverTasks.title' => 'Serveropgaver',
			'serverTasks.failedToLoad' => 'Kunne ikke indlæse opgaver',
			'serverTasks.noTasks' => 'Ingen opgaver kører',
			'trakt.title' => 'Trakt',
			'trakt.connected' => 'Forbundet',
			'trakt.connectedAs' => ({required Object username}) => 'Forbundet som @${username}',
			'trakt.disconnectConfirm' => 'Frakobl Trakt-konto?',
			'trakt.disconnectConfirmBody' => 'Luroka stopper med at sende hændelser til Trakt. Du kan tilslutte igen når som helst.',
			'trakt.scrobble' => 'Realtids-scrobbling',
			'trakt.scrobbleDescription' => 'Send afspil-, pause- og stop-begivenheder til Trakt under afspilning.',
			'trakt.watchedSync' => 'Synkroniser set-status',
			'trakt.watchedSyncDescription' => 'Når du markerer elementer som set i Luroka, markeres de også på Trakt.',
			'seerr.title' => 'Seerr',
			'seerr.connectTitle' => 'Forbind Seerr',
			'seerr.serverUrl' => 'Server-URL',
			'seerr.serverUrlHelper' => 'Adressen på din Seerr-instans',
			'seerr.checkServer' => 'Fortsæt',
			'seerr.signInWithJellyfin' => 'Log ind med Jellyfin',
			'seerr.signInWithEmby' => 'Log ind med Emby',
			'seerr.signInWithLocal' => 'Brug en lokal konto',
			'seerr.email' => 'E-mail',
			'seerr.noSignInMethods' => 'Denne Seerr-instans tilbyder ingen loginmetode, som Luroka understøtter.',
			'seerr.instance' => 'Instans',
			'seerr.disconnectConfirm' => 'Afbryd forbindelsen til Seerr?',
			'seerr.disconnectConfirmBody' => 'Luroka glemmer denne Seerr-instans. Du kan altid oprette forbindelse igen.',
			'seerr.request' => 'Anmod',
			'seerr.request4k' => 'Anmod i 4K',
			'seerr.seasons' => 'Sæsoner',
			'seerr.allSeasons' => 'Alle sæsoner',
			'seerr.advancedOptions' => 'Avanceret',
			'seerr.destinationServer' => 'Destinationsserver',
			'seerr.qualityProfile' => 'Kvalitetsprofil',
			'seerr.rootFolder' => 'Rodmappe',
			'seerr.languageProfile' => 'Sprogprofil',
			'seerr.tags' => 'Tags',
			'seerr.noTags' => 'Ingen tags',
			'seerr.defaultOption' => ({required Object name}) => '${name} (standard)',
			'seerr.animeNote' => 'Denne serie er en anime.',
			'seerr.requestSubmitted' => 'Anmodning sendt',
			'seerr.requestFailed' => ({required Object error}) => 'Anmodning mislykkedes: ${error}',
			'seerr.requestsLoadFailed' => 'Kunne ikke indlæse anmodningsmuligheder',
			'seerr.nothingToRequest' => 'Alt er allerede tilgængeligt eller anmodet.',
			'seerr.statusAvailable' => 'Tilgængelig',
			'seerr.statusPartiallyAvailable' => 'Delvist tilgængelig',
			'seerr.statusRequested' => 'Anmodet',
			'seerr.statusProcessing' => 'Behandler',
			'seerr.statusBlocklisted' => 'På blokeringslisten',
			'seerr.couldNotReach' => ({required Object url, required Object error}) => 'Kunne ikke nå ${url}: ${error}',
			'seerr.noInstanceAtUrl' => ({required Object url, required Object status}) => 'Ingen Seerr-instans på ${url} (HTTP ${status})',
			'seerr.behindAuthProxy' => 'En godkendende reverse proxy (SSO eller HTTP-auth) svarede i stedet for Seerr. Luroka kan ikke logge ind gennem den: Lad Seerrs /api/v1-sti omgå proxyen for denne app, eller brug en adresse, der når Seerr direkte.',
			'seerr.invalidUrl' => 'Indtast en serveradresse som https://seerr.example.com',
			'seerr.quickConnectUnsupported' => 'Denne Seerr-instans understøtter ikke Quick Connect. Den kræver Seerr 3.4 eller nyere.',
			'seerr.notInitialized' => 'Denne Seerr-instans har ikke fuldført førstegangsopsætningen',
			'seerr.noPlexTokenForReauth' => 'Intet Plex-token er tilgængeligt til at logge ind igen',
			'seerr.noStoredCredentials' => 'Ingen gemte loginoplysninger er tilgængelige til at logge ind igen',
			'seerr.signInRejected' => 'Login blev afvist',
			'seerr.noSessionCookie' => 'Seerr udstedte ikke en sessionscookie',
			'seerr.freshCookieRejected' => 'Seerr afviste den nye sessionscookie',
			'seerr.noUserInformation' => 'Seerr returnerede ikke brugeroplysninger',
			'seerr.sessionRejectedAfterReauth' => 'Sessionen blev afvist efter at være logget ind igen',
			'seerr.permissionDenied' => 'Seerr afviste denne handling: din konto har ikke længere den nødvendige tilladelse',
			'seerr.permissionRevoked' => 'Du har ikke længere tilladelse til at anmode om dette',
			'services.title' => 'Tjenester',
			'services.hubSubtitle' => 'Synkroniser dit visningsfremskridt, og anmod om nye titler.',
			'services.discoverySection' => 'Opdagelse og forespørgsler',
			'services.trackingSection' => 'Visningshistorik og lister',
			'services.seerrDescription' => 'Find film og serier, og send forespørgsler fra din Seerr-server.',
			'services.tmdbDescription' => 'Find film og serier, plakater, bedømmelser og oplysninger.',
			'services.traktDescription' => 'Følg film og serier, synkroniser set-status, og administrer din watchliste.',
			'services.malDescription' => 'Hold din animeliste og visningsstatus synkroniseret.',
			'services.anilistDescription' => 'Følg anime, og synkroniser din visningsstatus med AniList.',
			'services.simklDescription' => 'Følg dine film, serier og anime med Simkl.',
			'services.mdblistDescription' => 'Tilslut dine MDBList-lister og filmbedømmelser.',
			'services.connectionIntro' => ({required Object service}) => 'Tilslut ${service} til din aktuelle Luroka-profil. Du kan altid administrere forbindelsen og dens indstillinger her.',
			'services.connectService' => ({required Object service}) => 'Tilslut ${service}',
			'services.seerrConnectDescription' => 'Tilslut din Seerr-server for at finde og anmode om film og serier fra Luroka.',
			'services.seerrServerStep' => 'Start med den adresse, du bruger til at åbne Seerr. Vi undersøger, hvilke loginmetoder serveren understøtter.',
			'services.seerrSignInStep' => 'Vælg en loginmetode, som din server understøtter.',
			'services.integrations' => 'Integrationer',
			'services.notConnected' => 'Ikke forbundet',
			'services.connectedAs' => ({required Object username}) => 'Forbundet som @${username}',
			'services.scrobble' => 'Registrer fremgang automatisk',
			'services.scrobbleDescription' => 'Opdater din liste, når du er færdig med et afsnit eller en film.',
			'services.disconnectConfirm' => ({required Object service}) => 'Afbryd forbindelsen til ${service}?',
			'services.disconnectConfirmBody' => ({required Object service}) => 'Luroka stopper med at opdatere ${service}. Du kan altid oprette forbindelse igen.',
			'services.connectFailed' => ({required Object service}) => 'Kunne ikke forbinde til ${service}. Prøv igen.',
			'services.names.mal' => 'MyAnimeList',
			'services.names.anilist' => 'AniList',
			'services.names.simkl' => 'Simkl',
			'services.names.seerr' => 'Seerr',
			'services.names.mdblist' => 'MDBList',
			'services.simklReconnect.title' => 'Gentilslut Simkl',
			'services.simklReconnect.subtitle' => 'Simkl trækker den login-metode, denne forbindelse bruger, tilbage. Genforbindelse åbner simkl.com for at godkende Luroka — Luroka ser aldrig din adgangskode. Din afspilningshistorik forbliver på Simkl.',
			'services.deviceCode.title' => ({required Object service}) => 'Aktiver Luroka på ${service}',
			'services.deviceCode.instructions' => 'Scan QR-koden, eller gå til adressen nedenfor, og indtast denne kode:',
			'services.deviceCode.openToActivate' => ({required Object service}) => 'Åbn ${service} for at aktivere',
			_ => null,
		} ?? switch (path) {
			'services.deviceCode.copyCode' => 'Kopiér aktiveringskode',
			'services.deviceCode.waitingForAuthorization' => 'Venter på godkendelse…',
			'services.deviceCode.codeCopied' => 'Kode kopieret',
			'services.oauthProxy.title' => ({required Object service}) => 'Log ind på ${service}',
			'services.oauthProxy.body' => 'Scan denne QR-kode, eller åbn URL\'en på en enhed.',
			'services.oauthProxy.openToSignIn' => ({required Object service}) => 'Åbn ${service} for at logge ind',
			'services.pendingAuth.copyUrl' => 'Kopiér login-URL',
			'services.pendingAuth.urlCopied' => 'URL kopieret',
			'services.libraryFilter.title' => 'Bibliotekfilter',
			'services.libraryFilter.subtitleAllSyncing' => 'Synkroniserer alle biblioteker',
			'services.libraryFilter.subtitleNoneSyncing' => 'Intet synkroniseres',
			'services.libraryFilter.subtitleBlocked' => ({required Object count}) => '${count} blokeret',
			'services.libraryFilter.subtitleAllowed' => ({required Object count}) => '${count} tilladt',
			'services.libraryFilter.mode' => 'Filtertilstand',
			'services.libraryFilter.modeBlacklist' => 'Blokliste',
			'services.libraryFilter.modeWhitelist' => 'Tilladelsesliste',
			'services.libraryFilter.modeHintBlacklist' => 'Synkroniser alle biblioteker undtagen dem, du markerer nedenfor.',
			'services.libraryFilter.modeHintWhitelist' => 'Synkroniser kun de biblioteker, du markerer nedenfor.',
			'services.libraryFilter.libraries' => 'Biblioteker',
			'services.libraryFilter.noLibraries' => 'Ingen biblioteker tilgængelige',
			'addServer.addMediaBrowserTitle' => ({required Object product}) => 'Tilføj ${product}-server',
			'addServer.serverUrls' => 'Server-URL\'er',
			'addServer.serverUrlsHelper' => 'Du kan angive flere URL\'er adskilt med komma.',
			'addServer.findServer' => 'Find server',
			'addServer.searchingLocalMediaBrowserServers' => ({required Object product}) => 'Leder efter lokale ${product}-servere...',
			'addServer.localMediaBrowserServers' => ({required Object product}) => 'Lokale ${product}-servere',
			'addServer.username' => 'Brugernavn',
			'addServer.password' => 'Adgangskode',
			'addServer.signIn' => 'Log ind',
			'addServer.change' => 'Ændr',
			'addServer.required' => 'Påkrævet',
			'addServer.couldNotReachServer' => ({required Object error}) => 'Kunne ikke nå serveren: ${error}',
			'addServer.signInFailed' => ({required Object error}) => 'Kunne ikke logge ind: ${error}',
			'addServer.quickConnectFailed' => ({required Object error}) => 'Quick Connect mislykkedes: ${error}',
			'addServer.addPlexTitle' => 'Log ind med Plex',
			'addServer.pinExpired' => 'PIN-koden udløb før login. Prøv igen.',
			'addServer.failedToRegisterAccount' => ({required Object error}) => 'Kunne ikke registrere kontoen: ${error}',
			'addServer.enterMediaBrowserUrlError' => ({required Object product}) => 'Indtast din ${product}-server-URL',
			'addServer.addConnectionTitle' => 'Tilføj forbindelse',
			'addServer.addConnectionTitleScoped' => ({required Object name}) => 'Tilføj til ${name}',
			'addServer.signInWithPlexCard' => 'Log ind med Plex',
			'addServer.signInWithPlexCardSubtitle' => 'Godkend denne enhed. Delte servere tilføjes.',
			'addServer.signInWithPlexCardSubtitleScoped' => 'Godkend en Plex-konto. Plex Home-brugere bliver til profiler.',
			'addServer.connectToMediaBrowserCard' => ({required Object product}) => 'Opret forbindelse til ${product}',
			'addServer.connectToMediaBrowserCardSubtitle' => 'Indtast din server-URL, brugernavn og adgangskode.',
			'addServer.connectToMediaBrowserCardSubtitleScoped' => ({required Object product, required Object name}) => 'Log ind på din ${product}-server. Tilknyttes til ${name}.',
			'addServer.borrowFromAnotherProfile' => 'Lån fra en anden profil',
			'addServer.borrowFromAnotherProfileSubtitle' => 'Genbrug en anden profils forbindelse. PIN-beskyttede profiler kræver en PIN.',
			'addServer.invalidCredentials' => 'Ugyldigt brugernavn eller ugyldig adgangskode',
			'addServer.authResponseNotJson' => 'Godkendelsessvaret var ikke gyldig JSON',
			'addServer.authResponseIncomplete' => 'Loginsvaret fra serveren var ufuldstændigt',
			'addServer.quickConnectRejected' => 'Quick Connect blev afvist af serveren',
			'addServer.quickConnectNotJson' => 'Quick Connect-svaret var ikke gyldig JSON',
			'addServer.quickConnectMissingFields' => 'Quick Connect-svaret mangler en kode eller hemmelighed',
			'addServer.quickConnectPollRejected' => 'Quick Connect-polling blev afvist af serveren',
			'addServer.serverTimedOut' => 'Serveren svarede ikke i tide',
			'addServer.responseNotJson' => 'Serversvaret var ikke gyldig JSON',
			'addServer.responseMissingIdentity' => ({required Object product}) => 'Svaret mangler et ID eller servernavn – er dette en ${product}-server?',
			'addServer.probeFailed' => ({required Object error}) => 'Kunne ikke nå serveren: ${error}',
			'addServer.enterAtLeastOneUrl' => ({required Object product}) => 'Indtast mindst én URL til en ${product}-server',
			'addServer.noReachableServer' => ({required Object product}) => 'Der blev ikke fundet nogen ${product}-server, som kunne nås',
			'addServer.urlsPointToDifferentServers' => ({required Object product}) => 'Disse URL\'er peger på forskellige ${product}-servere',
			'addServer.urlDoesNotMatchServer' => ({required Object product}) => 'Denne URL stemmer ikke overens med ${product}-serveren',
			'addServer.redirectUnsupported' => 'Serveren videresendte til en URL, der ikke understøttes',
			'addServer.redirectDifferentHost' => ({required Object product}) => 'Serveren videresendte til en anden vært. Indtast den endelige ${product}-URL direkte.',
			'addServer.redirectInsecure' => 'Serveren videresendte fra HTTPS til en usikker URL',
			'addServer.redirectUnsupportedEnterFinal' => ({required Object product}) => 'Serveren videresendte til en URL, der ikke understøttes. Indtast den endelige ${product}-URL direkte.',
			_ => null,
		};
	}
}
