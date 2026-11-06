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
class TranslationsSv extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsSv({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.sv,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <sv>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsSv _root = this; // ignore: unused_field

	@override 
	TranslationsSv $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsSv(meta: meta ?? this.$meta);

	// Translations
	@override late final _Translations$mobileLibrary$sv mobileLibrary = _Translations$mobileLibrary$sv._(_root);
	@override late final _Translations$profileStartup$sv profileStartup = _Translations$profileStartup$sv._(_root);
	@override late final _Translations$subtitleUpload$sv subtitleUpload = _Translations$subtitleUpload$sv._(_root);
	@override late final _Translations$personSpotlight$sv personSpotlight = _Translations$personSpotlight$sv._(_root);
	@override late final _Translations$detailExtras$sv detailExtras = _Translations$detailExtras$sv._(_root);
	@override late final _Translations$mobileUi$sv mobileUi = _Translations$mobileUi$sv._(_root);
	@override late final _Translations$family$sv family = _Translations$family$sv._(_root);
	@override late final _Translations$posterDetails$sv posterDetails = _Translations$posterDetails$sv._(_root);
	@override late final _Translations$libraryPolish$sv libraryPolish = _Translations$libraryPolish$sv._(_root);
	@override late final _Translations$showSchedule$sv showSchedule = _Translations$showSchedule$sv._(_root);
	@override late final _Translations$awardsCatalog$sv awardsCatalog = _Translations$awardsCatalog$sv._(_root);
	@override late final _Translations$searchDiscovery$sv searchDiscovery = _Translations$searchDiscovery$sv._(_root);
	@override late final _Translations$lurokaPlayerDesign$sv lurokaPlayerDesign = _Translations$lurokaPlayerDesign$sv._(_root);
	@override late final _Translations$lurokaWorkspace$sv lurokaWorkspace = _Translations$lurokaWorkspace$sv._(_root);
	@override late final _Translations$mobileFixes$sv mobileFixes = _Translations$mobileFixes$sv._(_root);
	@override late final _Translations$downloadsRedesign$sv downloadsRedesign = _Translations$downloadsRedesign$sv._(_root);
	@override late final _Translations$kidsShelf$sv kidsShelf = _Translations$kidsShelf$sv._(_root);
	@override late final _Translations$kidsHome$sv kidsHome = _Translations$kidsHome$sv._(_root);
	@override late final _Translations$tvSettingsV2$sv tvSettingsV2 = _Translations$tvSettingsV2$sv._(_root);
	@override late final _Translations$settingsRedesign$sv settingsRedesign = _Translations$settingsRedesign$sv._(_root);
	@override late final _Translations$onboarding$sv onboarding = _Translations$onboarding$sv._(_root);
	@override late final _Translations$household$sv household = _Translations$household$sv._(_root);
	@override late final _Translations$detailComposition$sv detailComposition = _Translations$detailComposition$sv._(_root);
	@override late final _Translations$kids$sv kids = _Translations$kids$sv._(_root);
	@override late final _Translations$lurokaDiscovery$sv lurokaDiscovery = _Translations$lurokaDiscovery$sv._(_root);
	@override late final _Translations$app$sv app = _Translations$app$sv._(_root);
	@override late final _Translations$appIcon$sv appIcon = _Translations$appIcon$sv._(_root);
	@override late final _Translations$auth$sv auth = _Translations$auth$sv._(_root);
	@override late final _Translations$common$sv common = _Translations$common$sv._(_root);
	@override late final _Translations$tvHints$sv tvHints = _Translations$tvHints$sv._(_root);
	@override late final _Translations$screens$sv screens = _Translations$screens$sv._(_root);
	@override late final _Translations$mediaExtras$sv mediaExtras = _Translations$mediaExtras$sv._(_root);
	@override late final _Translations$update$sv update = _Translations$update$sv._(_root);
	@override late final _Translations$supporter$sv supporter = _Translations$supporter$sv._(_root);
	@override late final _Translations$settings$sv settings = _Translations$settings$sv._(_root);
	@override late final _Translations$themeEditor$sv themeEditor = _Translations$themeEditor$sv._(_root);
	@override late final _Translations$seriesBrowser$sv seriesBrowser = _Translations$seriesBrowser$sv._(_root);
	@override late final _Translations$titlePage$sv titlePage = _Translations$titlePage$sv._(_root);
	@override late final _Translations$tvMenus$sv tvMenus = _Translations$tvMenus$sv._(_root);
	@override late final _Translations$lurokaPlayer$sv lurokaPlayer = _Translations$lurokaPlayer$sv._(_root);
	@override late final _Translations$lurokaSettings$sv lurokaSettings = _Translations$lurokaSettings$sv._(_root);
	@override late final _Translations$playerChrome$sv playerChrome = _Translations$playerChrome$sv._(_root);
	@override late final _Translations$tvLayout$sv tvLayout = _Translations$tvLayout$sv._(_root);
	@override late final _Translations$studios$sv studios = _Translations$studios$sv._(_root);
	@override late final _Translations$dashboard$sv dashboard = _Translations$dashboard$sv._(_root);
	@override late final _Translations$lurokaCatalog$sv lurokaCatalog = _Translations$lurokaCatalog$sv._(_root);
	@override late final _Translations$referenceDetails$sv referenceDetails = _Translations$referenceDetails$sv._(_root);
	@override late final _Translations$lurokaThemes$sv lurokaThemes = _Translations$lurokaThemes$sv._(_root);
	@override late final _Translations$customPerformance$sv customPerformance = _Translations$customPerformance$sv._(_root);
	@override late final _Translations$homeLayout$sv homeLayout = _Translations$homeLayout$sv._(_root);
	@override late final _Translations$screenTime$sv screenTime = _Translations$screenTime$sv._(_root);
	@override late final _Translations$activityStats$sv activityStats = _Translations$activityStats$sv._(_root);
	@override late final _Translations$search$sv search = _Translations$search$sv._(_root);
	@override late final _Translations$hotkeys$sv hotkeys = _Translations$hotkeys$sv._(_root);
	@override late final _Translations$fileInfo$sv fileInfo = _Translations$fileInfo$sv._(_root);
	@override late final _Translations$mediaMenu$sv mediaMenu = _Translations$mediaMenu$sv._(_root);
	@override late final _Translations$rateSheet$sv rateSheet = _Translations$rateSheet$sv._(_root);
	@override late final _Translations$accessibility$sv accessibility = _Translations$accessibility$sv._(_root);
	@override late final _Translations$tooltips$sv tooltips = _Translations$tooltips$sv._(_root);
	@override late final _Translations$audioTracks$sv audioTracks = _Translations$audioTracks$sv._(_root);
	@override late final _Translations$videoControls$sv videoControls = _Translations$videoControls$sv._(_root);
	@override late final _Translations$messages$sv messages = _Translations$messages$sv._(_root);
	@override late final _Translations$sourceLibraries$sv sourceLibraries = _Translations$sourceLibraries$sv._(_root);
	@override late final _Translations$subtitlingStyling$sv subtitlingStyling = _Translations$subtitlingStyling$sv._(_root);
	@override late final _Translations$mpvConfig$sv mpvConfig = _Translations$mpvConfig$sv._(_root);
	@override late final _Translations$dialog$sv dialog = _Translations$dialog$sv._(_root);
	@override late final _Translations$profiles$sv profiles = _Translations$profiles$sv._(_root);
	@override late final _Translations$connections$sv connections = _Translations$connections$sv._(_root);
	@override late final _Translations$serversAccounts$sv serversAccounts = _Translations$serversAccounts$sv._(_root);
	@override late final _Translations$accountPreferences$sv accountPreferences = _Translations$accountPreferences$sv._(_root);
	@override late final _Translations$discover$sv discover = _Translations$discover$sv._(_root);
	@override late final _Translations$errors$sv errors = _Translations$errors$sv._(_root);
	@override late final _Translations$libraries$sv libraries = _Translations$libraries$sv._(_root);
	@override late final _Translations$about$sv about = _Translations$about$sv._(_root);
	@override late final _Translations$serverSelection$sv serverSelection = _Translations$serverSelection$sv._(_root);
	@override late final _Translations$hubDetail$sv hubDetail = _Translations$hubDetail$sv._(_root);
	@override late final _Translations$logs$sv logs = _Translations$logs$sv._(_root);
	@override late final _Translations$startup$sv startup = _Translations$startup$sv._(_root);
	@override late final _Translations$licenses$sv licenses = _Translations$licenses$sv._(_root);
	@override late final _Translations$navigation$sv navigation = _Translations$navigation$sv._(_root);
	@override late final _Translations$explore$sv explore = _Translations$explore$sv._(_root);
	@override late final _Translations$liveTv$sv liveTv = _Translations$liveTv$sv._(_root);
	@override late final _Translations$collections$sv collections = _Translations$collections$sv._(_root);
	@override late final _Translations$playlists$sv playlists = _Translations$playlists$sv._(_root);
	@override late final _Translations$music$sv music = _Translations$music$sv._(_root);
	@override late final _Translations$watchTogether$sv watchTogether = _Translations$watchTogether$sv._(_root);
	@override late final _Translations$downloads$sv downloads = _Translations$downloads$sv._(_root);
	@override late final _Translations$shaders$sv shaders = _Translations$shaders$sv._(_root);
	@override late final _Translations$companionRemote$sv companionRemote = _Translations$companionRemote$sv._(_root);
	@override late final _Translations$videoSettings$sv videoSettings = _Translations$videoSettings$sv._(_root);
	@override late final _Translations$performanceOverlay$sv performanceOverlay = _Translations$performanceOverlay$sv._(_root);
	@override late final _Translations$externalPlayer$sv externalPlayer = _Translations$externalPlayer$sv._(_root);
	@override late final _Translations$metadataEdit$sv metadataEdit = _Translations$metadataEdit$sv._(_root);
	@override late final _Translations$matchScreen$sv matchScreen = _Translations$matchScreen$sv._(_root);
	@override late final _Translations$serverTasks$sv serverTasks = _Translations$serverTasks$sv._(_root);
	@override late final _Translations$trakt$sv trakt = _Translations$trakt$sv._(_root);
	@override late final _Translations$seerr$sv seerr = _Translations$seerr$sv._(_root);
	@override late final _Translations$services$sv services = _Translations$services$sv._(_root);
	@override late final _Translations$addServer$sv addServer = _Translations$addServer$sv._(_root);
}

// Path: mobileLibrary
class _Translations$mobileLibrary$sv extends Translations$mobileLibrary$en {
	_Translations$mobileLibrary$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get pickerSubtitle => 'Välj en samling att utforska';
	@override String get searchLibraries => 'Sök i bibliotek';
	@override String get noLibraries => 'Inga matchande bibliotek';
	@override String get ascending => 'Stigande';
	@override String get descending => 'Fallande';
	@override String get sort => 'Sortera';
	@override String unwatchedCount({required Object count}) => '${count} osettade avsnitt';
	@override String get latestEpisode => 'Senaste avsnittet';
}

// Path: profileStartup
class _Translations$profileStartup$sv extends Translations$profileStartup$en {
	_Translations$profileStartup$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get autoLogin => 'Öppna den senast använda profilen';
	@override String get autoLoginHint => 'Öppna automatiskt den sista profilen när den inte kräver en PIN.';
	@override String get allowKidsExit => 'Tillåt att lämna barnprofilen utan föräldra-PIN';
	@override String get allowKidsExitHint => 'Barnet kan byta till en annan profil utan föräldra-PIN. Profil-PIN gäller fortfarande.';
	@override String get chooseKidsConnection => 'Välj ett annat konto eller server';
	@override String get chooseKidsConnectionHint => 'När du har sparat ansluter du ett separat konto eller väljer en anslutning från en annan profil.';
}

// Path: subtitleUpload
class _Translations$subtitleUpload$sv extends Translations$subtitleUpload$en {
	_Translations$subtitleUpload$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get chooseFile => 'Ladda upp undertextfil';
	@override String get hint => 'Välj språket ovan och ladda sedan upp en SRT, ASS, SSA eller VTT-fil till denna server.';
	@override String get success => 'Undertext laddad upp till servern. Det visas när servern uppdaterar objektet.';
	@override String get failed => 'Det gick inte att ladda upp undertexten. Kontrollera fil- och serverbehörigheterna.';
}

// Path: personSpotlight
class _Translations$personSpotlight$sv extends Translations$personSpotlight$en {
	_Translations$personSpotlight$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get inYourLibraries => 'i dina bibliotek';
	@override String libraryTitles({required Object n}) => 'I dina bibliotek · ${n} titlar';
	@override String get readBiography => 'Läs biografi';
	@override String get newestFirst => 'Nyaste först';
	@override String get oldestFirst => 'Äldst först';
	@override String get titleAscending => 'Titel A–Z';
	@override String get sortTitles => 'Sortera filmografi';
	@override String unwatchedEpisodes({required Object n}) => '${n} osettade avsnitt';
	@override String copies({required Object n}) => '${n} bibliotekskopior';
	@override String versions({required Object n}) => '${n} filversioner';
	@override String get retryTitles => 'Det gick inte att ladda alla titlar. Försök igen';
}

// Path: detailExtras
class _Translations$detailExtras$sv extends Translations$detailExtras$en {
	_Translations$detailExtras$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get onlineVideos => 'Trailers & extramaterial';
	@override String get reviews => 'Recensioner';
	@override String get readReview => 'Läs hela recensionen';
	@override String directedBy({required Object name}) => 'Mer regisserad av ${name}';
	@override String get previewUnavailable => 'Den här förhandsvisningen kunde inte spelas upp. Du kan öppna den i dess ursprungliga app istället.';
	@override String get openExternally => 'Öppna originalvideon';
}

// Path: mobileUi
class _Translations$mobileUi$sv extends Translations$mobileUi$en {
	_Translations$mobileUi$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get readMore => 'Läs mer';
	@override String get readLess => 'Visa mindre';
	@override String get playbackTools => 'Uppspelningsalternativ';
	@override String get streamingQuality => 'Streamingkvalitet';
	@override String get fileVersions => 'Filversioner';
	@override String get qualityAndVersions => 'Streamingkvalitet och filversioner';
	@override String get hidePlaybackTools => 'Dölj uppspelningsverktyg';
	@override String remaining({required Object time}) => '${time} kvar';
	@override String endsAt({required Object time}) => 'Slutar vid ${time}';
	@override String get collection => 'Din samling';
	@override String get nowPlaying => 'SPELAR NU';
	@override String get popularLibrary => 'Populärt i ditt bibliotek';
	@override String get weeklyLibrary => 'Populärt i ditt bibliotek den här veckan';
}

// Path: family
class _Translations$family$sv extends Translations$family$en {
	_Translations$family$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profiler & Familj';
	@override String get yourPeople => 'Ditt folk';
	@override String get manageHint => 'Hantera människor, barns säkerhet och visningsaktivitet på den här enheten.';
	@override String get people => 'Människor';
	@override String peopleCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n,
		one: '${n} person',
		other: '${n} människor',
	);
	@override String kidsCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n,
		one: '${n} barn',
		other: '${n} barn',
	);
	@override String get you => 'Du';
	@override String get adult => 'Vuxen';
	@override String get child => 'Barn';
	@override String get adultTeen => 'Vuxen eller tonåring';
	@override String get adultHint => 'Deras egen profil, valfri Profil PIN och deras egna serveranslutningar.';
	@override String get childHint => 'Åldersgränser, säkra bibliotek och ett barnvänligt utseende. En föräldra-PIN skyddar de här inställningarna.';
	@override String upToAge({required Object age}) => 'Upp till ålder ${age}';
	@override String get allAges => 'Alla åldrar';
	@override String get switchProfile => 'Byt profil';
	@override String get switchHint => 'Välj vem som tittar. Att hantera en person byter inte profil.';
	@override String get addPerson => 'Lägg till person';
	@override String get addChild => 'Lägg till barn';
	@override String get addHint => 'Skapa en vuxen-, tonårs- eller barnprofil på den här enheten.';
	@override String get emptyPeople => 'Gör plats för alla som tittar med dig.';
	@override String get emptyKids => 'Inga barnprofiler än. Lägg till ett barn för att välja åldersgränser och säkra bibliotek.';
	@override String get safety => 'Barn & säkerhet';
	@override String get safetyHint => 'Föräldra-PIN, barnprofiler och åldersgränser.';
	@override String get protection => 'Skydd';
	@override String get kidsProfiles => 'Barnprofiler';
	@override String get backupHistory => 'Backup & historik';
	@override String get parentPinOn => 'Föräldra-PIN aktiverad';
	@override String get profilePin => 'Profil-PIN';
	@override String get confirmParentPin => 'Bekräfta föräldra-PIN';
	@override String get parentPinOff => 'Föräldra-PIN är inte inställd';
	@override String get missingPin => 'Lägg till en föräldra-PIN för att skydda de här inställningarna.';
	@override String get hideScope => 'Dölj barnens aktivitet från Fortsätt titta i denna Luroka-profil. Detta ändrar inte den delade serverns visningshistorik.';
	@override String get localScope => 'Barnprofiler och begränsningar lagras på den här enheten. Profiler som använder samma serverkonto delar fortfarande kontots bevakningsförlopp.';
	@override String get clearHistoryConfirm => 'Vill du tillåta att titlar som barn tittat på visas i Fortsätt titta igen? Barnprofiler, begränsningar, visningstidsstatistik och servervisningshistorik kommer att bevaras.';
	@override String get editRestrictions => 'Redigera barnbegränsningar';
	@override String get activity => 'Visar aktivitet';
	@override String namedActivity({required Object name}) => '${name}s visningsaktivitet';
	@override String get thisProfile => 'Denna profil';
	@override String get activityScope => 'Uppspelningstid registrerad av Luroka på den här enheten för den aktiva profilen. Detta är statistik, inte visningsgränser eller fullständig serverhistorik.';
	@override String get activityUnavailable => 'Visningsaktivitet är inte tillgänglig för den här profilen ännu.';
	@override String get finished => 'Klart';
}

// Path: posterDetails
class _Translations$posterDetails$sv extends Translations$posterDetails$en {
	_Translations$posterDetails$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get showThemeMusic => 'Spela temamusik';
	@override String get showThemeMusicDescription => 'Spela upp en film eller ett programs tema medan dess informationssida är öppen, när den är tillgänglig på servern.';
	@override String get catalogEpisodeInfo => 'Visa antalet avsnitt och körtid på katalogkort';
	@override String get catalogEpisodeInfoDescription => 'Visa avsnittsantal och genomsnittlig längd på Upptäck-affischer.';
	@override String get title => 'Affischdetaljer';
	@override String get description => 'Visa titeln, årtalet och IMDb-betyget under affischer i Studio, Search, Upptäck och Libraries. Saknade IMDb-betyg förblir dolda. Stäng av för affischer endast för konstverk.';
}

// Path: libraryPolish
class _Translations$libraryPolish$sv extends Translations$libraryPolish$en {
	_Translations$libraryPolish$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get posterDetails => 'Affischdetaljer';
	@override String get showPosterDetails => 'Visa affischdetaljer · namn, årtal & IMDb';
	@override String get hidePosterDetails => 'Dölj affischdetaljer';
	@override String get overview => 'Översikt';
	@override String get refreshing => 'Uppdaterar biblioteket...';
	@override String get serverCollections => 'Alla samlingar på denna server';
	@override String get serverPlaylists => 'Alla videospellistor på den här servern';
	@override String get libraryCollections => 'Samlingar i detta bibliotek';
	@override String get searchCollections => 'Sök i samlingar';
	@override String get searchPlaylists => 'Sök spellistor';
	@override String get searchHint => 'Sök på namn';
	@override String get titleAscending => 'Titel A–Z';
	@override String get titleDescending => 'Titel Z–A';
	@override String get clearFilters => 'Rensa filter';
	@override String get playlistEmptyTitle => 'Dina filmkvällar, i din ordning';
	@override String get playlistEmptyHint => 'Öppna en titels Mer-meny och välj Lägg till i spellista för att skapa din första spellista.';
	@override String get noMatches => 'Inga matchande namn';
	@override String get indexing => 'Söker i hela katalogen...';
}

// Path: showSchedule
class _Translations$showSchedule$sv extends Translations$showSchedule$en {
	_Translations$showSchedule$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get today => 'Idag';
	@override String get tomorrow => 'Imorgon';
	@override String get latestUpcoming => 'Senaste & kommande';
	@override String get latestEpisode => 'Senaste avsnittet';
	@override String get upcoming => 'Kommande';
	@override String get inLibrary => 'I ditt bibliotek';
	@override String get notInLibrary => 'Inte i ditt bibliotek';
	@override String get notYetAired => 'Inte sänt ännu';
	@override String episode({required Object number}) => 'Avsnitt ${number}';
	@override String get caughtUp => 'Ni är alla ikapp';
	@override String get finished => 'Du har avslutat den här serien';
	@override String nextAirs({required Object date}) => 'Nästa avsnitt sänds ${date}';
	@override String get watchBeginning => 'Se från början';
	@override String get replay => 'Spela om';
	@override String get playNext => 'Spela nästa';
}

// Path: awardsCatalog
class _Translations$awardsCatalog$sv extends Translations$awardsCatalog$en {
	_Translations$awardsCatalog$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get awards => 'Utmärkelser';
	@override String get customize => 'Anpassa';
	@override String get chooseShelves => 'Anpassa Upptäck';
	@override String get shelvesDescription => 'Välj de rader du vill ha på Upptäck. Prisrader visar vinnare från dina bibliotek. Dina val sparas för den här profilen.';
	@override String get restoreShelves => 'Återställ standardinställningar';
	@override String get charts => 'IMDb-diagram';
	@override String get generalShelves => 'Populärt och trendigt';
	@override String get saveShelvesFailed => 'Det gick inte att spara dina Upptäck-val. Försök igen.';
	@override String get comedyActress => 'Huvudrollsinnehavare · Komedi';
	@override String get leadDramaActor => 'Huvudrollsinnehavare · Drama';
	@override String get leadDramaActress => 'Huvudrollsinnehavare · Drama';
	@override String get comedySupportingActor => 'Biroll · Komedi';
	@override String get comedySupportingActress => 'Biroll · Komedi';
	@override String get leadingPerformance => 'Silverbjörn · Bästa ledande prestation';
	@override String get globesComedySeries => 'Bästa tv-serie · Musikal eller komedi';
	@override String get limitedSupportingActor => 'Biroll · Begränsad serie eller film';
	@override String get limitedSupportingActress => 'Biroll · Begränsad serie eller film';
	@override String get berlinDocumentary => 'Berlinale dokumentärpris';
	@override String get title => 'Priser och festivaler';
	@override String get chooseCategory => 'Välj en priskategori';
	@override String get winners => 'Vinnare';
	@override String get nominees => 'Nominerade';
	@override String get releaseDecade => 'Släpp decennium';
	@override String get allYears => 'Alla år';
	@override String get loading => 'Laddar pristitlar...';
	@override String get matching => 'Hittar dessa titlar i dina bibliotek...';
	@override String get unavailable => 'Prisdata är inte tillgänglig just nu. Försök igen.';
	@override String get empty => 'Inga matchande titlar i dina synliga bibliotek för den här kategorin.';
	@override String get coverage => 'Medlemskap kommer från Wikidata och kan vara ofullständigt. Skådespelare och regissörskategorier visar filmerna eller showerna de belönats för. År hänvisar till titelsläpp, inte ceremonin.';
	@override String get picture => 'Bästa bilden';
	@override String get film => 'Bästa film';
	@override String get international => 'Bästa internationella inslag';
	@override String get internationalFilm => 'Bästa internationella film';
	@override String get nonEnglishFilm => 'Bästa film inte på engelska';
	@override String get animated => 'Bästa animerade inslag';
	@override String get animatedFilm => 'Bästa animerade film';
	@override String get documentary => 'Bästa dokumentärfilm';
	@override String get director => 'Bästa regissör';
	@override String get actor => 'Bästa skådespelare';
	@override String get actress => 'Bästa skådespelerska';
	@override String get supportingActor => 'Bästa manliga biroll';
	@override String get supportingActress => 'Bästa kvinnliga biroll';
	@override String get originalScreenplay => 'Bästa originalmanus';
	@override String get adaptedScreenplay => 'Bästa anpassade manus';
	@override String get screenplay => 'Bästa manus';
	@override String get cinematography => 'Bästa kinematografi';
	@override String get editing => 'Bästa redigering';
	@override String get score => 'Bästa originalmusik';
	@override String get song => 'Bästa originallåt';
	@override String get sound => 'Bästa ljudet';
	@override String get effects => 'Bästa visuella effekter';
	@override String get productionDesign => 'Bästa produktionsdesign';
	@override String get costume => 'Bästa kostymdesign';
	@override String get makeup => 'Bästa smink och hårstyling';
	@override String get dramaSeries => 'Enastående dramaserie';
	@override String get comedySeries => 'Enastående komediserie';
	@override String get limitedSeries => 'Enastående begränsad serie';
	@override String get animatedProgram => 'Enastående animerat program';
	@override String get comedyActor => 'Huvudrollsinnehavare · Komedi';
	@override String get limitedActor => 'Huvudrollsinnehavare · Begränsad serie eller film';
	@override String get limitedActress => 'Huvudrollsinnehavare · Begränsad serie eller film';
	@override String get limitedDirecting => 'Regi · Begränsad serie eller film';
	@override String get britishFilm => 'Bästa brittiska film';
	@override String get goldenBear => 'Guldbjörn';
	@override String get grandJury => 'Stora juryns pris';
	@override String get jury => 'Jurypris';
	@override String get teddy => 'Teddy Award';
	@override String get goldenLion => 'Gyllene lejon';
	@override String get volpiActor => 'Volpi Cup · Bästa skådespelare';
	@override String get volpiActress => 'Volpi Cup · Bästa kvinnliga huvudroll';
	@override String get queerLion => 'Queer Lion';
	@override String get dramaFilm => 'Bästa film · Drama';
	@override String get comedyFilm => 'Bästa film · Musikal eller komedi';
	@override String get dramaActor => 'Bästa skådespelare · Drama';
	@override String get dramaActress => 'Bästa kvinnliga skådespelerska · Drama';
	@override String get usDramatic => 'Stora juryns pris för amerikansk dramatik';
	@override String get documentaryJury => 'Dokumentärens stora jurypris';
	@override String get worldCinema => 'Stora juryns pris för världens film';
	@override String get dramaticAudience => 'Publikens pris för amerikansk dramatik';
	@override String get usDirecting => 'USA:s regipris';
	@override String get peopleChoice => 'People\'s Choice Award';
	@override String get canadianFilm => 'Bästa kanadensiska film';
	@override String get firstFeature => 'Bästa första funktionen';
	@override String get cassavetes => 'John Cassavetes-priset';
	@override String get scienceFiction => 'Bästa science fiction-film';
	@override String get fantasy => 'Bästa fantasyfilm';
	@override String get horror => 'Bästa skräckfilm';
	@override String get action => 'Bästa action- eller äventyrsfilm';
	@override String get thriller => 'Bästa thrillerfilm';
}

// Path: searchDiscovery
class _Translations$searchDiscovery$sv extends Translations$searchDiscovery$en {
	_Translations$searchDiscovery$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get suggestions => 'Något att titta på';
	@override String get collections => 'Priser och samlingar';
	@override String get collectionsHint => 'Pristagare och kurerade diagram från dina bibliotek';
	@override String get all => 'Alla upptäckter';
	@override String get awards => 'Utmärkelser & listor';
}

// Path: lurokaPlayerDesign
class _Translations$lurokaPlayerDesign$sv extends Translations$lurokaPlayerDesign$en {
	_Translations$lurokaPlayerDesign$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get seeking => 'Sök förhandsgranskning';
	@override String get keepWatching => 'Fortsätt titta';
	@override String get upNext => 'Nästa';
	@override String playingIn({required Object seconds}) => 'Spelar i ${seconds} s';
}

// Path: lurokaWorkspace
class _Translations$lurokaWorkspace$sv extends Translations$lurokaWorkspace$en {
	_Translations$lurokaWorkspace$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get everyday => 'Varje dag';
	@override String get homeDiscovery => 'Hem & Discovery';
	@override String get librariesAccounts => 'Bibliotek och konton';
	@override String get profilesFamily => 'Profiler & Familj';
	@override String get thisDevice => 'Denna enhet';
	@override String get thisProfile => 'Denna profil';
	@override String get searchSettings => 'Sökinställningar';
	@override String get savedAutomatically => 'Ändringar sparas automatiskt. Everyday och Advanced ändrar bara vilka kontroller som visas.';
	@override String get audioSubtitles => 'Ljud & undertexter';
	@override String get audioDescription => 'Ljudutgång, volym och textning. Föredragna språk ställs in per serverkonto med kontoinställningar när du är ansluten.';
	@override String get pictureSound => 'Bild & Ljud';
	@override String get pictureDescription => 'Bildhastighetsmatchning, upplösning, HDR och Dolby Vision inställning för denna enhet.';
	@override String get engineDescription => 'Spelmotor, avkodning, anpassad konfiguration och avancerade uppspelningsregler.';
	@override String get networkStreaming => 'Nätverk & Streaming';
	@override String get networkDescription => 'Strömningskvalitet, codec-preferenser för direktuppspelning och val av bandbredd.';
	@override String get homeOptions => 'Hemalternativ';
	@override String get refreshHome => 'Uppdatera Hem & Popular Now';
	@override String get customizeHome => 'Anpassa hem';
	@override String get spotlight => 'Hem Spotlight';
	@override String get rotateSpotlight => 'Rotera utvalda titlar automatiskt';
	@override String get rotateDescription => 'Rotera medan Hem är inaktivt. Interaktion pausar rotation; bläddra i hyllor, öppna en sida eller lämna appen pausar den helt.';
	@override String get rotationInterval => 'Tid mellan utvalda titlar';
}

// Path: mobileFixes
class _Translations$mobileFixes$sv extends Translations$mobileFixes$en {
	_Translations$mobileFixes$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get connectionRecoveryHint => 'Servern inte tillgänglig? Hantera dina konton eller anslut en annan server.';
}

// Path: downloadsRedesign
class _Translations$downloadsRedesign$sv extends Translations$downloadsRedesign$en {
	_Translations$downloadsRedesign$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get shelfSize => 'Artiklar per hylla';
	@override String get shelfSizeHint => 'Visa 16, 32 eller 48 föremål i Fortsätt titta och rekommendationshyllor. Servrar kan returnera färre tillgängliga titlar.';
	@override String get subtitle => 'Dina favoriter, redo för resan.';
	@override String get transfers => 'Överföringar';
	@override String get ready => 'Klar offline';
	@override String get active => 'Laddar ner';
	@override String get waiting => 'Väntar';
	@override String get downloaded => 'Nedladdat';
	@override String get speed => 'Nedladdningshastighet';
	@override String get notificationProgress => '{progress} · {networkSpeed} · {timeRemaining} återstår';
}

// Path: kidsShelf
class _Translations$kidsShelf$sv extends Translations$kidsShelf$en {
	_Translations$kidsShelf$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get movieShelf => 'Filmtid';
	@override String get showShelf => 'Hitta din nästa show';
	@override String get aurora => 'Aurora — djup kricka och lime';
	@override String get marquee => 'Marquee - sammet & guld';
	@override String get electric => 'Elektrisk — indigo & is';
	@override String get midnight => 'Midnatt — stål & bärnsten';
	@override String get yourShelf => 'Din filmhylla';
	@override String get all => 'Allt';
	@override String get pickSomething => 'Vad vill du se?';
}

// Path: kidsHome
class _Translations$kidsHome$sv extends Translations$kidsHome$en {
	_Translations$kidsHome$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get everything => 'För dig';
	@override String get keepWatching => 'Fortsätt titta';
	@override String get emptyFilter => 'Inget här ännu. Prova för dig, eller be din vuxna att lägga till något du älskar.';
}

// Path: tvSettingsV2
class _Translations$tvSettingsV2$sv extends Translations$tvSettingsV2$en {
	_Translations$tvSettingsV2$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get moreThemes => 'Fler teman och anpassade färger';
	@override String get moreThemesHint => 'Öppna alla tillgängliga förinställningar och anpassade temaalternativ.';
	@override String get previewLive => 'Live förhandsvisning';
	@override String get previewIllustration => 'Förhandsgranska exempel';
	@override String previewShelfCount({required Object count}) => 'Upp till ${count} artiklar per hylla';
	@override String get simple => 'Enkelt';
	@override String get homeNavigation => 'Hem & Navigation';
	@override String get libraryCards => 'Bibliotek & kort';
	@override String get accountsLibraries => 'Konton & bibliotek';
	@override String get profilesFamily => 'Profiler & Familj';
	@override String get aboutSupport => 'Om & Support';
	@override String get playback => 'Uppspelning';
	@override String get homeHint => 'Välj vad som ska visas på startsidan och i navigeringen.';
	@override String get libraryHint => 'Justera affischstorlekar, etiketter och bevakade indikatorer.';
	@override String get advancedPlayback => 'Spelarmotor & streaming';
	@override String get advancedPlaybackHint => 'Spelare, videoutgång, streaming och avancerade uppspelningsval.';
	@override String get advancedTools => 'Diagnostik och säkerhetskopiering';
	@override String get advancedToolsHint => 'Loggar, felsökning, säkerhetskopiering och återställning av inställningar.';
	@override String get themePreview => 'Förhandsgranskning av tema';
	@override String get libraryPreview => 'Förhandsvisning av bibliotek';
	@override String get homePreview => 'Hem förhandsvisning';
	@override String get subtitlePreview => 'Förhandsvisning av undertexter';
	@override String get subtitleSample => 'Dina undertexter kommer att se ut så här.';
	@override String get previewPlaceholder => 'Ditt konstverk visas här';
	@override String get posterSize => 'Affischstorlek';
	@override String get serverRecommendations => 'Hemrekommendationer från din server';
	@override String get tvLayout => 'Använd TV-layout';
	@override String get hardwareDecode => 'Använd hårdvaruvideoavkodning';
	@override String get serverNames => 'Visa servernamn på startrader';
	@override String get settingsSaved => 'Ändringar sparas automatiskt.';
	@override String get morePlayback => 'Avancerad uppspelning';
	@override String get screenDisplay => 'Bild & Ljud';
	@override String get engine => 'Spelarmotor';
	@override String get network => 'Streaming & nätverk';
	@override String get performance => 'Prestanda';
	@override String get simpleAudio => 'Språk och undertexter';
}

// Path: settingsRedesign
class _Translations$settingsRedesign$sv extends Translations$settingsRedesign$en {
	_Translations$settingsRedesign$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get themeEffects => 'Tema och effekter';
	@override String get libraryLayout => 'Bibliotekets layout';
	@override String get appearanceHint => 'Anpassa utseendet, layouten och beteendet hos Luroka.';
	@override String get livePreview => 'Live Preview';
	@override String get previewHint => 'Se hur ditt bibliotek kommer att se ut med de nuvarande inställningarna.';
	@override String get showLiveTv => 'Visa live-tv';
	@override String get showLiveTvHint => 'Visa live-TV i navigering när en ansluten server stöder det. Detta ändrar inte din server.';
	@override String get aboutTagline => 'Dina media. Ditt utrymme.';
	@override String get aboutDescription => 'Luroka sammanför dina Plex, Jellyfin och Emby bibliotek i en filmisk spelare för telefoner, TV-apparater och stationära datorer.';
	@override String get aboutFeatures => 'Bläddra i dina bibliotek, återuppta filmer och program, anpassa profiler, njut av nedladdningar och titta tillsammans. Live-TV är tillgängligt med en kompatibel server.';
	@override String get services => 'Anslut din värld';
	@override String get updateSource => 'Uppdatera källa';
	@override String get updateSourceHint => 'HTTPS-adressen för ditt Luroka-släppflöde. Din distributör kan förkonfigurera detta i appen.';
	@override String get updateNotConfigured => 'Automatiska uppdateringar är inte konfigurerade för denna version.';
	@override String get downloadInstall => 'Ladda ner och installera';
	@override String get installUpdate => 'Installera uppdatering';
	@override String get downloading => 'Laddar ned uppdatering...';
	@override String get downloadFailed => 'Det gick inte att ladda ner eller verifiera uppdateringen. Försök igen.';
	@override String get installPermission => 'Tillåt Luroka att installera uppdateringar i Android-inställningarna, återvänd sedan och välj Installera uppdatering.';
	@override String get updateReady => 'Nedladdning verifierad. Klar att installera.';
	@override String get releaseNotes => 'Release notes';
	@override String get invalidFeed => 'Ange en giltig HTTPS-uppdateringsadress.';
}

// Path: onboarding
class _Translations$onboarding$sv extends Translations$onboarding$en {
	_Translations$onboarding$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get connectStep => '01 · Anslut';
	@override String get connectTitle => 'Välkommen till Luroka';
	@override String get connectHint => 'Logga in för att ta med dina bibliotek hit.';
	@override String get serverAddressHint => 'Ange din serveradress eller välj en server som finns i ditt nätverk.';
	@override String get serverSignInHint => 'Använd ditt serveranvändarnamn och lösenord för att ansluta dina bibliotek.';
	@override String get serverAddressTitle => 'Serveradress';
	@override String get serverAccountTitle => 'Ditt serverkonto';
	@override String get plexHomeTitle => 'Välj din Plex-hemanvändare';
	@override String get plexHomeHint => 'Välj den Plex-användare vars bibliotek du vill använda. Du kommer att konfigurera din Luroka-profil härnäst.';
	@override String get chooseService => 'Välj din tjänst';
	@override String get profileStep => '02 · Din profil';
	@override String get profileTitle => 'Känn dig som hemma.';
	@override String get profileHint => 'Välj ett namn och en avatar för din Luroka-profil. Ditt anslutna konto förblir detsamma.';
	@override String get readyStep => '03 · Redo att titta på';
	@override String get readyTitle => 'Lite mer du.';
	@override String get readyHint => 'Samla dina tjänster eller ge plats åt någon annan. Du kan alltid göra detta senare.';
	@override String get addService => 'Anslut en annan tjänst';
	@override String get editProfile => 'Redigera ditt namn och avatar';
	@override String get connected => 'Ansluten och klar';
	@override String get backToProfile => 'Tillbaka till din profil';
	@override String get showOtherPlexHome => 'Visa andra Plex Home-medlemmar';
	@override String get showOtherPlexHomeHint => 'Av som standard. Dina Luroka-profiler och Plex-hemmedlemmar som du har använt förblir synliga. Slå på för att välja någon annan.';
}

// Path: household
class _Translations$household$sv extends Translations$household$en {
	_Translations$household$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ditt Luroka-hushåll';
	@override String get welcome => 'Gör Luroka till din';
	@override String get welcomeHint => 'Ditt första konto är anslutet. Anpassa din profil eller lägg till någon annan innan du börjar titta.';
	@override String get profiles => 'Profiler & hushåll';
	@override String get manageHint => 'Lägg till personer, byt bilder och hantera varje profils anslutningar.';
	@override String get addProfile => 'Lägg till Luroka-profil';
	@override String get addHint => 'Varje person kan ansluta sin egen Plex, Emby eller Jellyfin inloggning. Endast anslutningar som lagts till i deras profil visas för dem.';
	@override String get sharedHint => 'Återanvändning av en annan profils anslutning delar serveranvändarens bevakade status och uppspelningsförlopp. Välj en separat inloggning för oberoende visningshistorik.';
	@override String get personalise => 'Anpassa profilen';
	@override String get changePicture => 'Byt profilbild';
	@override String get pictureHint => 'Välj en Luroka-avatar eller ett foto. Detta ändrar endast bilden på den här enheten; ditt serverkonto är orört.';
	@override String get serverPicture => 'Använd serverbild/initialer';
	@override String get choosePhoto => 'Välj ett foto';
	@override String get photoHint => 'JPEG, PNG eller annan bild som stöds, upp till 10 MB. Foton ändras storlek och lagras på den här enheten.';
	@override String get pictureSaved => 'Profilbilden uppdaterad';
	@override String get pictureFailed => 'Kunde inte uppdatera profilbilden. Prova en bild som stöds på upp till 10 MB.';
	@override String get saveFailed => 'Det gick inte att spara profilinställningarna. Försök igen.';
	@override String get startWatching => 'Börja titta';
	@override String get manageProfiles => 'Hantera eller byt profiler';
	@override String get addLater => 'Du kan lägga till fler personer senare i Inställningar → Profiler och hushåll.';
	@override String get connectionRequired => 'Lägg till en serveranslutning för att slutföra konfigureringen av den här profilen.';
	@override String get mountain => 'Berg';
	@override String get orbit => 'Utforskare';
	@override String get waves => 'Ocean';
	@override String get blossom => 'Blossom';
	@override String get lightning => 'Blixtnedslag';
	@override String get moon => 'Måne';
	@override String get avatarGallery => 'Välj en avatar';
	@override String get avatarIllustrationHint => 'Original illustrerade porträtt, barn och djurvänner';
	@override String get avatarPortraitSunrise => 'Soluppgång porträtt';
	@override String get avatarPortraitMeadow => 'Ängsporträtt';
	@override String get avatarPortraitBerry => 'Porträtt av bär';
	@override String get avatarPortraitGolden => 'Gyllene porträtt';
	@override String get avatarPortraitIndigo => 'Indigo porträtt';
	@override String get avatarPortraitOcean => 'Havsporträtt';
	@override String get avatarKidArtist => 'Liten konstnär';
	@override String get avatarKidSkater => 'Liten skridskoåkare';
	@override String get avatarCat => 'Nyfiken katt';
	@override String get avatarDog => 'Glad hund';
	@override String get avatarPanda => 'Panda';
	@override String get avatarOwl => 'Uggla';
	@override String get avatarFox => 'Fox';
	@override String get avatarDinosaur => 'Dinosaurie';
	@override String get avatarRobot => 'Robot';
}

// Path: detailComposition
class _Translations$detailComposition$sv extends Translations$detailComposition$en {
	_Translations$detailComposition$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get startOver => 'Börja om';
	@override String get seriesCast => 'Serie rollbesättning';
	@override String get streamingQuality => 'Strömningskvalitet...';
	@override String get trailer => 'Trailer';
	@override String get manageMedia => 'Hantera media...';
	@override String get playbackOptions => 'Uppspelningsalternativ...';
	@override String get moreActions => 'Fler åtgärder';
	@override String get watched => 'Tittade';
	@override String get unwatched => 'Obevakad';
	@override String endsAt({required Object time}) => 'Slutar vid ${time}';
	@override String get automatic => 'Automatisk';
	@override String get usePreferences => 'Använd dina uppspelningsinställningar';
	@override String get mediaInformation => 'Medieinformation';
	@override String get fullFileInformation => 'Fullständig filinformation';
	@override String get castAndCrew => 'Cast & Crew';
}

// Path: kids
class _Translations$kids$sv extends Translations$kids$en {
	_Translations$kids$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get backupProfile => 'Säkerhetskopiera barnprofilen';
	@override String get backupExplain => 'Säkerhetskopiera profilens sparade namn, karaktär, begränsningar, utseende och lokala visningsuteslutningar. Föräldra-PIN-koder, serverinloggningar, nedladdningar och serveruppspelningsförlopp ingår inte.';
	@override String get saveBackupFile => 'Spara backup-fil';
	@override String get copyBackup => 'Kopiera säkerhetskopieringstext';
	@override String backupSaved({required Object path}) => 'Säkerhetskopiering av barnprofilen har sparats i ${path}';
	@override String get backupCopied => 'Säkerhetskopiering av barnprofilen har kopierats';
	@override String get backupFailed => 'Det gick inte att spara säkerhetskopian av barnprofilen. Försök igen.';
	@override String get restoreProfile => 'Återställ barnprofil';
	@override String get chooseBackupFile => 'Välj backup-fil';
	@override String get pasteBackup => 'Klistra in säkerhetskopieringstext';
	@override String get backupText => 'Barnprofil backup JSON';
	@override String get pasteFromClipboard => 'Klistra in från urklipp';
	@override String get restoreReview => 'Granska dessa återställda inställningar och sedan Spara för att skapa en ny barnprofil med dina nuvarande serveranslutningar. Befintliga profiler skrivs inte över. Biblioteksval och visningsuteslutningar matchar endast samma server-/biblioteks-ID.';
	@override String get restoreInvalid => 'Detta är inte en giltig säkerhetskopiering av barnprofiler som stöds. Välj en Luroka barnprofil JSON backup.';
	@override String get deleteProfile => 'Ta bort barnprofil';
	@override String deleteExplain({required Object name}) => 'Ta bort ${name} från Luroka? Deras lokala inställningar, nedladdningar och visningsuteslutningar kommer att tas bort. Ditt serverkonto och historik på serversidan kommer att finnas kvar. Skapa en säkerhetskopia först om du vill återställa profilen senare.';
	@override String get profileDeleted => 'Barnprofilen raderad';
	@override String get allowedLibraries => 'Tillåtna bibliotek';
	@override String get unavailableLibrary => 'Tidigare valt bibliotek (för närvarande ej tillgängligt)';
	@override String get allLibraries => 'Tillåt alla anslutna film- och TV-bibliotek';
	@override String get librariesExplain => 'Stäng av detta för att välja specifika bibliotek. Ålder och animationsregler gäller fortfarande i de valda biblioteken. Nya bibliotek läggs inte till automatiskt när ett urval används.';
	@override String get librariesUnavailable => 'Inga film- eller TV-bibliotek laddas. Anslut till servern och öppna Bibliotek, gå sedan tillbaka hit för att välja.';
	@override String get noLibrariesSelected => 'Inga bibliotek har valts: detta barn kommer inte att se några titlar.';
	@override String get animationOnly => 'Endast animering';
	@override String get animationExplain => 'Visa endast titlar taggade med animeringsgenren på din server. Detta ersätter inte åldersgränsen: animation kan även vara avsedd för vuxna. Saknade genremetadata är dold.';
	@override String get allowUnrated => 'Tillåt titlar utan åldersklassificering';
	@override String get unratedExplain => 'Av som standard. När den är aktiverad kan saknade eller oklassificerade klassificeringar visas om biblioteket och animeringsreglerna tillåter det. Deras lämplighet kan inte kontrolleras efter ålder. Kända betyg över åldersgränsen och okända klassificeringar förblir dolda.';
	@override String get whoIsWatching => 'Vem tittar?';
	@override String get chooseAdventure => 'En liten värld av stora äventyr.';
	@override String get chooseProfile => 'Välj ditt utrymme. Gör det till en filmkväll.';
	@override String welcome({required Object name}) => 'Hej ${name}!';
	@override String welcomeOlder({required Object name}) => 'Din nästa fantastiska historia, ${name}.';
	@override String get homeSubtitle => 'Stora äventyr. Små upptäckter. Allt för dig.';
	@override String get homeSubtitleOlder => 'Hitta en ny favorit. Fortsätt där du slutade.';
	@override String get featured => 'Dagens stora äventyr';
	@override String get featuredOlder => 'I rampljuset';
	@override String get moreInfo => 'Mer info';
	@override String get movies => 'Filmer';
	@override String get shows => 'Shower';
	@override String get profiles => 'Profiler';
	@override String get adultBadge => 'Vuxna';
	@override String get avatar => 'Välj din karaktär';
	@override String get avatarExplorer => 'Rymdutforskare';
	@override String get avatarFox => 'Fox';
	@override String get avatarDinosaur => 'Dinosaurie';
	@override String get avatarRobot => 'Robot';
	@override String get avatarChildArtist => 'Liten konstnär';
	@override String get avatarChildSkater => 'Liten skridskoåkare';
	@override String get avatarSunrisePerson => 'Soluppgång porträtt';
	@override String get avatarOceanPerson => 'Havsporträtt';
	@override String get avatarCat => 'Nyfiken katt';
	@override String get avatarDog => 'Glad hund';
	@override String get avatarPanda => 'Panda';
	@override String get avatarOwl => 'Uggla';
	@override String get avatarBear => 'Björn';
	@override String get continueAdventure => 'Fortsätt äventyret';
	@override String get freshStories => 'Nya berättelser att upptäcka';
	@override String get yourMovies => 'Favoriter vid filmtid';
	@override String get yourShows => 'Ännu ett avsnitt';
	@override String get emptyHint => 'Nya äventyr kommer att dyka upp här när din server har titlar med en tillåten åldersklassificering.';
	@override String get title => 'Luroka för barn';
	@override String get addProfile => 'Lägg till barnprofil';
	@override String get parentalControls => 'Föräldrakontroll';
	@override String get parentPin => 'Föräldra-PIN';
	@override String get setParentPin => 'Ange föräldra-PIN';
	@override String get changeParentPin => 'Ändra föräldra-PIN';
	@override String get pinExplain => 'Den här PIN-koden skyddar vuxenprofiler och föräldrakontroller på enheten.';
	@override String get name => 'Barnets namn';
	@override String get ageGroup => 'Tillåten åldersklassificering';
	@override String get allAges => 'Alla åldrar · G, TV-Y, TV-G, U';
	@override String get age7 => 'Upp till 7 · även PG, TV-PG, TV-Y7';
	@override String get age12 => 'Upp till 12 · även 12 och 12A';
	@override String get age16 => 'Upp till 16 · även PG-13, TV-14, 15 och 16';
	@override String get ratingExplain => 'Titlar över åldersgränsen och okända klassificeringar är dolda. Titlar utan betyg är dolda om du inte tillåter dem nedan. Oklassificerade avsnitt kan ärva en godkänd serieklassificering. Betygen beror på din servers metadata.';
	@override String get theme => 'Barnens utseende';
	@override String get themeExplain => 'Använd ett färgstarkt tema när den här profilen är aktiv.';
	@override String get sharedLogin => 'Använder din befintliga serverinloggning. Plex/Emby framsteg och bevakad status förblir delade. Begränsningar och barnprofiler lagras på den här enheten.';
	@override String get hideWatched => 'Dölj barns visning från min Fortsätt titta';
	@override String get hideExplain => 'Dölj filmer och hela serier som spelas av barnprofiler på den här enheten. Detta tar inte bort dem från ditt bibliotek eller ändrar serverhistorik.';
	@override String get clearHistory => 'Återställ barns visningsuteslutningar';
	@override String get historyReset => 'Barns visningsuteslutningar har återställts';
	@override String get blocked => 'Den här titeln är inte tillgänglig i den här barnprofilen.';
	@override String get switchProfile => 'Byt profil';
	@override String get manageFromAdult => 'Byt till en vuxenprofil för att hantera inställningar.';
	@override String get noConnections => 'Anslut en server till din vuxenprofil innan du lägger till en barnprofil.';
	@override String get created => 'Barnprofil skapad';
	@override String get updated => 'Barnprofilen uppdaterad';
	@override String get saveFailed => 'Det gick inte att spara föräldrakontroll. Försök igen.';
	@override String get kidsBadge => 'Barn';
}

// Path: lurokaDiscovery
class _Translations$lurokaDiscovery$sv extends Translations$lurokaDiscovery$en {
	_Translations$lurokaDiscovery$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Upptäck';
	@override String get chooseLibraryHint => 'Välj ett bibliotek att utforska';
	@override String get chooseCopyHint => 'Finns i flera bibliotek. Välj önskat exemplar.';
	@override String get weeklyMovies => 'Populära filmer den här veckan · TMDb';
	@override String get weeklyShows => 'Trendiga program den här veckan · TMDb';
	@override String get weeklyLibrary => 'Trendigt den här veckan · I ditt bibliotek';
	@override String get popularLibrary => 'Populärt nu · I ditt bibliotek · Cinemeta';
	@override String get publicFeedError => 'Cinemeta-upptäckt är inte tillgängligt. Försök igen.';
	@override String get oscars => 'Oscars · Vinnare av bästa film';
	@override String get imdb100 => 'IMDb Topp 100 filmer · Sep 2026 ögonblicksbild';
	@override String get imdbTv100 => 'IMDb Topp 100 program · Sep 2026 ögonblicksbild';
	@override String get emmyComedy => 'Emmys · Vinnare av komediserier · 1971–2026';
	@override String get emmys => 'Emmys · Dramaserievinnare · 1966–2026';
	@override String get bafta => 'BAFTA · Vinnare av bästa film';
	@override String get cannes => 'Cannes · Guldpalmen vinnare';
	@override String get awardsNote => 'Prissamlingarna inkluderar historien om Oscar för bästa film, vinnare av Emmy-drama/komedi och utökade BAFTA/Cannes-val. Upprepade vinnande titlar visas en gång. Medlemskap använder historik i priskategorier och Wikidata-fakta. IMDb Topp 100 film-/programlistor bevara september 2026 diagrams ögonblicksbilder från mmdju/imdb-top250-api. Endast matchningar i dina synliga onlinebibliotek visas; samlingens storlek beror på bibliotekets tillgänglighet.';
	@override String get attribution => 'Offentliga popularitetslistor, metadata och IMDb-värderingar tillhandahålls av Cinemeta; dess populära listor är inte veckovisa diagram. Denna produkt använder TMDB API men är inte godkänd eller certifierad av TMDB. Valfria TMDb veckotrender återspeglar TMDb intresse, inte tittarsiffror. Poäng behåller sina källetiketter.';
	@override String get tmdbSettings => 'Upptäcktskällor';
	@override String get setupDescription => 'Cinemeta-upptäckten fungerar direkt utan konto: populära filmer och program, IMDb-betyg och pristagare. Anslut eventuellt TMDb för veckotrender med hjälp av en API-nyckel eller API läsbehörighetstoken från themoviedb.org/settings/api. Dina referenser lagras på den här enheten.';
	@override String get apiKey => 'TMDb API nyckel / läsbehörighetstoken';
	@override String get connect => 'Anslut TMDb';
	@override String get connecting => 'Ansluter...';
	@override String get connected => 'TMDb ansluten · Veckotrender och utmärkelser aktiverade';
	@override String get builtInKeyNote => 'Körs på Lurokas inbyggda delade TMDb-nyckel. Lägg till din egen gratisnyckel nedan för dedikerade prisgränser och full kontroll.';
	@override String get disconnect => 'Koppla bort TMDb';
	@override String get invalidKey => 'Det gick inte att validera TMDb. Kontrollera dina autentiseringsuppgifter och internetanslutning.';
	@override String get feedError => 'TMDb upptäckt är inte tillgänglig. Försök igen.';
	@override String get allTitles => 'Alla titlar';
	@override String get available => 'I ditt bibliotek';
	@override String get checking => 'Kontrollerar dina bibliotek...';
	@override String get availabilityUnknown => 'Vissa bibliotek kunde inte kontrolleras. Försök att uppdatera.';
	@override String get noAvailable => 'Inga matchande titlar hittades i de markerade biblioteken.';
	@override String get sourceInfo => 'Veckotrender och utvalda pristagare · TMDb';
	@override String get configure => 'Upptäcktsinställningar';
}

// Path: app
class _Translations$app$sv extends Translations$app$en {
	_Translations$app$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Luroka';
}

// Path: appIcon
class _Translations$appIcon$sv extends Translations$appIcon$en {
	_Translations$appIcon$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'App-ikon';
	@override String get defaultIcon => 'Standard';
	@override String get current => 'Aktuell ikon';
	@override String get locked => 'Supporterförmån';
	@override String get lockedHint => 'Alternativa ikoner är en supporterförmån.';
	@override String get changeFailed => 'Det gick inte att ändra appikonen';
	@override String get launcherHint => 'Den nya ikonen visas på din startskärm när du lämnar Luroka.';
	@override String get tvLauncherHint => 'Den nya bannern visas när du lämnar Luroka. Android TV kan fortsätta visa den gamla tills TV:n startar om.';
	@override late final _Translations$appIcon$names$sv names = _Translations$appIcon$names$sv._(_root);
}

// Path: auth
class _Translations$auth$sv extends Translations$auth$en {
	_Translations$auth$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get signInWithPlex => 'Logga in med Plex';
	@override String get showQRCode => 'Visa QR-kod';
	@override String get authenticate => 'Verifiera';
	@override String get authenticationTimeout => 'Autentiseringen tog för lång tid. Försök igen.';
	@override String get scanQRToSignIn => 'Skanna QR-koden för att logga in';
	@override String get waitingForAuth => 'Väntar på autentisering...\nLogga in från din webbläsare.';
	@override String get useBrowser => 'Använd webbläsare';
	@override String get or => 'eller';
	@override String connectToMediaBrowser({required Object product}) => 'Anslut till ${product}';
	@override String get quickConnect => 'Quick Connect';
	@override String get useQuickConnect => 'Använd Quick Connect';
	@override String get quickConnectInstructions => 'Öppna Quick Connect i Jellyfin och ange den här koden.';
	@override String get quickConnectWaiting => 'Väntar på godkännande…';
	@override String get quickConnectCancel => 'Avbryt';
	@override String get quickConnectExpired => 'Quick Connect har gått ut. Försök igen.';
	@override String get localDataRecoveryRequired => 'Luroka kunde inte återställa lokala inloggningsuppgifter och väntande uppspelningsdata på ett säkert sätt. Logga in igen.';
	@override String get pinCheckRejected => 'Plex PIN-kontrollen avvisades';
}

// Path: common
class _Translations$common$sv extends Translations$common$en {
	_Translations$common$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get cancel => 'Avbryt';
	@override String get save => 'Spara';
	@override String get close => 'Stäng';
	@override String get clear => 'Rensa';
	@override String get reset => 'Återställ';
	@override String get later => 'Senare';
	@override String get submit => 'Skicka';
	@override String get confirm => 'Bekräfta';
	@override String get retry => 'Försök igen';
	@override String get logout => 'Logga ut';
	@override String get unknown => 'Okänd';
	@override String get refresh => 'Uppdatera';
	@override String get yes => 'Ja';
	@override String get no => 'Nej';
	@override String get delete => 'Ta bort';
	@override String get edit => 'Redigera';
	@override String get shuffle => 'Blanda';
	@override String get addTo => 'Lägg till i...';
	@override String get createNew => 'Skapa ny';
	@override String get connect => 'Anslut';
	@override String get disconnect => 'Koppla från';
	@override String get play => 'Spela';
	@override String get pause => 'Pausa';
	@override String get resume => 'Återuppta';
	@override String get error => 'Fel';
	@override String get search => 'Sök';
	@override String get home => 'Hem';
	@override String get back => 'Tillbaka';
	@override String get settings => 'Inställningar';
	@override String get mute => 'Stäng av ljudet';
	@override String get ok => 'OK';
	@override String get off => 'Av';
	@override String get options => 'Alternativ';
	@override String seasonNumber({required Object number}) => 'Säsong ${number}';
	@override String episodeNumberTitle({required Object number, required Object title}) => 'Avsnitt ${number} - ${title}';
	@override String chapterNumber({required Object number}) => 'Kapitel ${number}';
	@override String get reconnect => 'Återanslut';
	@override String get viewAll => 'Visa alla';
	@override String get serversUnreachable => 'Servrarna går inte att nå';
	@override String get loading => 'Laddar...';
	@override String get fullscreen => 'Helskärm';
	@override String get exitFullscreen => 'Avsluta helskärm';
	@override late final _Translations$common$ratingSource$sv ratingSource = _Translations$common$ratingSource$sv._(_root);
	@override String get notAvailable => 'N/A';
	@override String get url => 'URL';
	@override String get letterKeys => 'ABC';
	@override late final _Translations$common$mediaKind$sv mediaKind = _Translations$common$mediaKind$sv._(_root);
	@override String get stay => 'Stanna';
	@override String get exitApp => 'Avsluta';
	@override String get exitAppBody => 'Är du säker på att du vill avsluta Luroka?';
}

// Path: tvHints
class _Translations$tvHints$sv extends Translations$tvHints$en {
	_Translations$tvHints$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get select => 'Välj';
	@override String get browse => 'Bläddra';
	@override String get back => 'Tillbaka';
}

// Path: screens
class _Translations$screens$sv extends Translations$screens$en {
	_Translations$screens$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get licenses => 'Licenser';
	@override String get switchProfile => 'Byt profil';
	@override String get subtitleStyling => 'Utseende för undertexter';
	@override String get mpvConfig => 'mpv.conf';
	@override String get logs => 'Loggar';
}

// Path: mediaExtras
class _Translations$mediaExtras$sv extends Translations$mediaExtras$en {
	_Translations$mediaExtras$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get trailers => 'Släpvagnar';
	@override String get featurettes => 'Featurettes';
	@override String get interviews => 'Intervjuer';
	@override String get deletedScenes => 'Raderade scener';
	@override String get behindTheScenes => 'Bakom kulisserna';
	@override String get scenesAndClips => 'Scener & klipp';
	@override String get other => 'Andra extrafunktioner';
}

// Path: update
class _Translations$update$sv extends Translations$update$en {
	_Translations$update$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get available => 'Uppdatering tillgänglig';
	@override String versionAvailable({required Object version}) => 'Version ${version} är tillgänglig';
	@override String currentVersion({required Object version}) => 'Nuvarande: ${version}';
	@override String get skipVersion => 'Hoppa över denna version';
	@override String get viewRelease => 'Visa versionsinformation';
	@override String get latestVersion => 'Du har den senaste versionen';
	@override String get checkFailed => 'Det gick inte att söka efter uppdateringar';
}

// Path: supporter
class _Translations$supporter$sv extends Translations$supporter$en {
	_Translations$supporter$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Luroka Supporter';
	@override String get intro => 'Ett engångsköp som stöder Lurokas utveckling och låser upp kosmetiska extrafunktioner:';
	@override String get presetThemes => 'Förinställda teman';
	@override String get presetThemesDescription => 'Glöd, glaciär, skog, plommon och papper';
	@override String get customTheme => 'Anpassat tema';
	@override String get customThemeDescription => 'Välj varje färg själv';
	@override String get appIcons => 'App ikoner';
	@override String get appIconsDescription => 'Välj en alternativ Luroka-ikon';
	@override String buy({required Object price}) => 'Köp för ${price}';
	@override String get loadingPrice => 'Laddar pris...';
	@override String get restore => 'Återställ inköp';
	@override String get pending => 'Ditt köp väntar på betalning eller godkännande. Extrafunktionerna låses upp så fort butiken är klar.';
	@override String get thankYouTitle => 'Tack för att du stödjer Luroka';
	@override String get thankYouBody => 'Dina Supporter-extramaterial är upplåsta.';
	@override String get tileSubtitle => 'Lås upp teman och appikoner med ett engångsköp';
	@override String get tileSubtitleThemesOnly => 'Lås upp teman med ett engångsköp';
	@override String get tileUnlocked => 'Tack för ditt stöd';
	@override late final _Translations$supporter$errors$sv errors = _Translations$supporter$errors$sv._(_root);
}

// Path: settings
class _Translations$settings$sv extends Translations$settings$en {
	_Translations$settings$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Inställningar';
	@override String get supportDeveloper => 'Stöd Luroka';
	@override String get supportDeveloperDescription => 'Donera via Liberapay för att finansiera utvecklingen';
	@override String get language => 'Språk';
	@override String get theme => 'Tema';
	@override String get appearance => 'Utseende';
	@override String get videoPlayback => 'Videouppspelning';
	@override String get videoPlaybackDescription => 'Konfigurera uppspelningsbeteende';
	@override String get advanced => 'Avancerat';
	@override String get episodePosterMode => 'Stil för avsnittsaffisch';
	@override String get seriesPoster => 'Serieaffisch';
	@override String get seasonPoster => 'Säsongsaffisch';
	@override String get episodeThumbnail => 'Miniatyr';
	@override String get homeHeroSize => 'Karusellstorlek';
	@override String get homeHeroSizeSmall => 'Liten';
	@override String get homeHeroSizeMedium => 'Medium';
	@override String get homeHeroSizeLarge => 'Stora';
	@override String get secondsLabel => 'Sekunder';
	@override String get minutesLabel => 'Minuter';
	@override String get secondsShort => 's';
	@override String get minutesShort => 'm';
	@override String durationHint({required Object min, required Object max}) => 'Ange tid (${min}-${max})';
	@override String get systemTheme => 'System';
	@override String get lightTheme => 'Ljust';
	@override String get darkTheme => 'Mörkt';
	@override String get oledTheme => 'OLED';
	@override String get libraryDensity => 'Biblioteksdensitet';
	@override String get displayScale => 'Skalning';
	@override String get compact => 'Kompakt';
	@override String get comfortable => 'Luftig';
	@override String get gridSpacing => 'Rutnätsavstånd';
	@override String get gridSpacingTight => 'Tätt';
	@override String get gridSpacingNormal => 'Normal';
	@override String get gridSpacingSpacious => 'Rymligt';
	@override String get tvCornerSpotlightBackdrop => 'Bakgrundsbild för utvalt innehåll i hörnet';
	@override String get tvCornerSpotlightBackdropDescription => 'Visa bakgrundsbilden för utvalt innehåll i övre högra hörnet i stället för över hela skärmen';
	@override String get viewMode => 'Visningsläge';
	@override String get gridView => 'Rutnät';
	@override String get listView => 'Lista';
	@override String get continueWatchingAction => 'Åtgärd för Fortsätt titta';
	@override String get continueWatchingPlay => 'Spela';
	@override String get continueWatchingDetails => 'Öppna detaljer';
	@override String get episodeAction => 'Åtgärd för avsnitt';
	@override String get episodePlay => 'Spela';
	@override String get episodeDetails => 'Öppna detaljer';
	@override String get useGlobalHubs => 'Använd startsidans layout';
	@override String get useGlobalHubsDescription => 'Visa en gemensam layout på startsidan. Annars används bibliotekens rekommendationer.';
	@override String get showServerNameOnHubs => 'Visa servernamn i innehållssektioner';
	@override String get showServerNameOnHubsDescription => 'Visa alltid servernamnet i innehållssektionernas rubriker.';
	@override String get groupLibrariesByServer => 'Gruppera bibliotek efter server';
	@override String get groupLibrariesByServerDescription => 'Gruppera biblioteken i sidofältet under respektive medieserver.';
	@override String get alwaysKeepSidebarOpen => 'Håll alltid sidofältet öppet';
	@override String get alwaysKeepSidebarOpenDescription => 'Sidofältet förblir utfällt och innehållsytan anpassas efter det';
	@override String get showUnwatchedCount => 'Visa antal osedda';
	@override String get showUnwatchedCountDescription => 'Visa antal osedda avsnitt för serier och säsonger';
	@override String get showWatchedIndicators => 'Visa seddmarkeringar';
	@override String get showWatchedIndicatorsDescription => 'Visa en bock på sedda filmer, serier och avsnitt';
	@override String get showEpisodeNumberOnCards => 'Visa avsnittsnummer på kort';
	@override String get showEpisodeNumberOnCardsDescription => 'Visa säsongs- och avsnittsnummer på avsnittskort';
	@override String get showSeasonPostersOnTabs => 'Visa säsongsaffischer på flikar';
	@override String get showSeasonPostersOnTabsDescription => 'Visa affischen för varje säsong ovanför dess flik';
	@override String get tvFullCardLayout => 'Heltäckande TV-kort';
	@override String get tvFullCardLayoutDescription => 'Använd TV-kort med enbart bild och skådespelarnamn ovanpå';
	@override String get focusGlow => 'Fokusmarkering';
	@override String get focusGlowDescription => 'Visa ett mjukt sken runt kortet som har fokus';
	@override String get visualEffects => 'Visuella effekter';
	@override String get visualEffectsAuto => 'Automatiskt';
	@override String get visualEffectsAutoDescription => 'Minska effekterna automatiskt på enheter med begränsad prestanda';
	@override String get visualEffectsFull => 'Fullständiga';
	@override String get visualEffectsReduced => 'Minskade';
	@override String get visualEffectsReducedDescription => 'Färre animationer och grafik med lägre upplösning';
	@override String get hideSpoilers => 'Dölj spoilers för osedda avsnitt';
	@override String get hideSpoilersDescription => 'Gör miniatyrbilder och beskrivningar oskarpa för osedda avsnitt';
	@override String get playerBackend => 'Uppspelningsmotor';
	@override String get playerBackendDescription => 'mpv spelar fler format och möjliggör fler funktioner — rekommenderas. ExoPlayer hjälper om uppspelningen misslyckas eller hackar på den här enheten.';
	@override String get exoPlayer => 'ExoPlayer';
	@override String get mpv => 'mpv';
	@override String get hardwareDecoding => 'Hårdvaruavkodning';
	@override String get hardwareDecodingDescription => 'Använd hårdvaruacceleration när tillgängligt';
	@override String get playbackBuffer => 'Uppspelningsbuffert';
	@override String get playbackBufferAuto => 'Auto (rekommenderas)';
	@override String get playbackBufferLarge => 'Stor';
	@override String get playbackBufferExtraLarge => 'Extra stor';
	@override String get playbackBufferDescription => 'Buffrar mer mot instabila anslutningar. Begränsas även av buffertstorleken.';
	@override String get defaultQualityTitle => 'Standardkvalitet';
	@override String get streamingQualityOriginalHint => 'Spelar upp filen exakt som den lagras — bästa kvalitet, använder mest bandbredd';
	@override String get cellularQualityTitle => 'Standardkvalitet på mobildata';
	@override String get cellularQualitySameAsDefault => 'Samma som standardkvalitet';
	@override String get directPlayCoveredQuality => 'Spela mindre videor i originalkvalitet';
	@override String get directPlayCoveredQualityDescription => 'Direktspela videor som redan ligger inom kvalitetsgränsen i stället för att transkoda dem';
	@override String get videoCodecs => 'Videokodekar';
	@override String get videoCodecsDescription => 'Kodekar utan bock transkodas av servern';
	@override String get videoCodecsAlwaysAccepted => 'Accepteras alltid';
	@override String get musicQualityTitle => 'Musikkvalitet';
	@override String get subtitleStyling => 'Utseende för undertexter';
	@override String get subtitleStylingDescription => 'Anpassa undertexternas utseende';
	@override String get smallSkipDuration => 'Litet hoppsteg';
	@override String get largeSkipDuration => 'Stort hoppsteg';
	@override String get rewindOnResume => 'Spola tillbaka vid återupptagning';
	@override String secondsUnit({required Object seconds}) => '${seconds} sekunder';
	@override String get defaultSleepTimer => 'Förvald insomningstimer';
	@override String minutesUnit({required Object minutes}) => '${minutes} minuter';
	@override String get rememberTrackSelections => 'Kom ihåg spårval per serie/film';
	@override String get rememberTrackSelectionsDescription => 'Kom ihåg ljud- och undertextval per titel';
	@override String get rememberTrackSelectionsBackendRule => 'Plex sparar varje val på servern per fil; Jellyfin aktiverar även kontots Kom ihåg val; Emby stöds inte';
	@override String get followServerTrackSelections => 'Använd serverns spårval per avsnitt';
	@override String get followServerTrackSelectionsDescription => 'Vid avsnittsbyte används ljudet och undertexterna som valts på servern i stället för att föra över det aktuella valet';
	@override String get resumeMusicOnLaunch => 'Kom ihåg musiksession';
	@override String get resumeMusicOnLaunchDescription => 'Öppna den senaste låten pausad där den slutade när appen startar';
	@override String get showChapterMarkersOnTimeline => 'Visa kapitelmarkörer på tidslinjen';
	@override String get showChapterMarkersOnTimelineDescription => 'Dela upp tidslinjen vid kapitelgränser';
	@override String get specialsOrdering => 'Specialavsnitt i episodordning';
	@override String get specialsOrderingDescription => 'Var specialavsnitt spelas upp i seriens visningsordning';
	@override String get specialsOrderingServer => 'Följ serverordningen';
	@override String get specialsOrderingAirDate => 'Infoga efter sändningsdatum';
	@override String get specialsOrderingLast => 'Efter vanliga säsonger';
	@override String get clickVideoTogglesPlayback => 'Klicka på videon för att spela upp eller pausa';
	@override String get clickVideoTogglesPlaybackDescription => 'Klicka på videon för att spela upp eller pausa i stället för att visa kontrollerna.';
	@override String get videoPlayerControls => 'Videospelarens kontroller';
	@override String get keyboardShortcuts => 'Tangentbordsgenvägar';
	@override String get keyboardShortcutsDescription => 'Anpassa tangentbordsgenvägar';
	@override String get videoPlayerNavigation => 'Navigering i videospelaren';
	@override String get videoPlayerNavigationDescription => 'Använd piltangenter för att navigera videospelarens kontroller';
	@override String get watchTogetherRelay => 'Reläserver för Titta tillsammans';
	@override String get watchTogetherRelayDescription => 'Public Open Watch Party-reläer om du inte ställer in din egen';
	@override String get watchTogetherRelayHint => 'https://mitt-rela.exempel.se';
	@override String get watchTogetherRelayInvalid => 'Ange en giltig HTTP- eller HTTPS-bas-URL för reläservern.';
	@override String get crashReporting => 'Kraschrapportering';
	@override String get crashReportingDescription => 'Skicka kraschrapporter för att förbättra appen';
	@override String get debugLogging => 'Felsökningsloggning';
	@override String get debugLoggingDescription => 'Aktivera detaljerad loggning för felsökning';
	@override String get viewLogs => 'Visa loggar';
	@override String get viewLogsDescription => 'Visa appens loggar';
	@override String get clearImageCache => 'Rensa bildcache';
	@override String get clearImageCacheDescription => 'Rensa cachad grafik och miniatyrer. Bilder kan laddas långsammare tills de hämtas igen.';
	@override String get clearImageCacheSuccess => 'Bildcachen har rensats';
	@override String get resetSettings => 'Återställ inställningarna';
	@override String get resetSettingsDescription => 'Återställ standardinställningarna. Det går inte att ångra.';
	@override String get resetSettingsSuccess => 'Inställningarna har återställts';
	@override String get backup => 'Säkerhetskopia';
	@override String get exportSettings => 'Exportera inställningar';
	@override String get exportSettingsDescription => 'Spara dina inställningar till en fil';
	@override String get exportSettingsSuccess => 'Inställningar exporterade';
	@override String get importSettings => 'Importera inställningar';
	@override String get importSettingsDescription => 'Återställ inställningar från en fil';
	@override String get importSettingsConfirm => 'Detta ersätter dina nuvarande inställningar. Fortsätta?';
	@override String get importSettingsSuccess => 'Inställningar importerade';
	@override String get importSettingsInvalidFile => 'Filen är inte en giltig export av Luroka-inställningar';
	@override String get importSettingsNoUser => 'Logga in innan du importerar inställningar';
	@override String get shortcutsReset => 'Genvägarna har återställts till standard';
	@override String get resetShortcutsConfirm => 'Detta kommer att ersätta dina anpassade genvägar med standardinställningarna. Fortsätta?';
	@override String get about => 'Om';
	@override String get aboutDescription => 'Appinformation och licenser';
	@override String get updates => 'Uppdateringar';
	@override String get updateAvailable => 'Uppdatering tillgänglig';
	@override String get checkForUpdates => 'Kontrollera uppdateringar';
	@override String get autoCheckUpdatesOnStartup => 'Kontrollera uppdateringar automatiskt vid start';
	@override String get autoCheckUpdatesOnStartupDescription => 'Meddela när en uppdatering finns vid start';
	@override String get validationErrorEnterNumber => 'Ange ett giltigt tal';
	@override String validationErrorDuration({required Object min, required Object max, required Object unit}) => 'Tiden måste vara mellan ${min} och ${max} ${unit}';
	@override String shortcutAlreadyAssigned({required Object action}) => 'Genvägen används redan för ${action}';
	@override String shortcutUpdated({required Object action}) => 'Genvägen för ${action} har uppdaterats';
	@override String get saveFailed => 'Det gick inte att spara ändringarna. Försök igen.';
	@override String get autoPlayAndSkip => 'Autouppspelning och hoppa över';
	@override String get autoPlayNextEpisode => 'Spela nästa avsnitt automatiskt';
	@override String get autoPlayNextEpisodeDescription => 'Starta nästa avsnitt automatiskt när det aktuella avsnittet slutar';
	@override String get shuffleStartsFromBeginning => 'Blanda från början';
	@override String get shuffleStartsFromBeginningDescription => 'Starta varje avsnitt från början vid blandad uppspelning i stället för att återuppta';
	@override String get playNextCountdown => 'Nedräkning för nästa avsnitt';
	@override String get playNextCountdownImmediate => 'Spela direkt';
	@override String get skipIntroMode => 'Hoppa över intro';
	@override String get skipIntroModeOffDescription => 'Spela intron som vanligt utan knapp för att hoppa över';
	@override String get skipIntroModeButtonDescription => 'Visa en knapp för att hoppa över när ett intro börjar';
	@override String get skipIntroModeAutoDescription => 'Hoppa över intron automatiskt efter fördröjningen nedan';
	@override String get skipCreditsMode => 'Hoppa över eftertexter';
	@override String get skipCreditsModeOffDescription => 'Spela eftertexterna som vanligt utan knapp för att hoppa över';
	@override String get skipCreditsModeButtonDescription => 'Visa en knapp för att hoppa över när eftertexterna börjar';
	@override String get skipCreditsModeAutoDescription => 'Hoppa över eftertexterna automatiskt och spela nästa avsnitt';
	@override String get skipMarkerModeOff => 'Av';
	@override String get skipMarkerModeButton => 'Visa knapp';
	@override String get skipMarkerModeAuto => 'Automatiskt';
	@override String get forceSkipMarkerFallback => 'Tvinga reservmarkörer';
	@override String get forceSkipMarkerFallbackDescription => 'Använd mönster i kapiteltitlar även när Plex har markörer';
	@override String get autoSkipDelay => 'Fördröjning före automatiskt hopp';
	@override String autoSkipDelayDescription({required Object seconds}) => 'Vänta ${seconds} sekunder innan innehållet hoppas över automatiskt';
	@override String get introPattern => 'Intromarkörsmönster';
	@override String get introPatternDescription => 'Reguljärt uttryck för att matcha intromarkörer i kapiteltitlar';
	@override String get creditsPattern => 'Eftertextmarkörsmönster';
	@override String get creditsPatternDescription => 'Reguljärt uttryck för att matcha eftertextmarkörer i kapiteltitlar';
	@override String get invalidRegex => 'Ogiltigt reguljärt uttryck';
	@override String get regex => 'Reguljärt uttryck';
	@override String get downloads => 'Nedladdningar';
	@override String get downloadLocationDescription => 'Välj var nedladdat innehåll ska lagras';
	@override String get downloadLocationDefault => 'Standard (appens lagring)';
	@override String get downloadLocationCustom => 'Anpassad plats';
	@override String get selectFolder => 'Välj mapp';
	@override String get resetToDefault => 'Återställ standard';
	@override String currentPath({required Object path}) => 'Aktuell: ${path}';
	@override String get downloadLocationChanged => 'Nedladdningsplats ändrad';
	@override String get downloadLocationReset => 'Nedladdningsplats återställd till standard';
	@override String get downloadLocationInvalid => 'Vald mapp är inte skrivbar';
	@override String get downloadLocationPickerUnavailable => 'Mappval är inte tillgängligt på den här enheten';
	@override String get downloadOnWifiOnly => 'Ladda endast ned via wifi';
	@override String get downloadOnWifiOnlyDescription => 'Förhindra nedladdningar via mobildata';
	@override String get autoRemoveWatchedDownloads => 'Ta automatiskt bort sedda nedladdningar';
	@override String get autoRemoveWatchedDownloadsDescription => 'Ta automatiskt bort sedda nedladdningar';
	@override String get cellularDownloadBlocked => 'Nedladdningar blockeras via mobilnätet. Använd wifi eller ändra inställningen.';
	@override String get maxVolume => 'Maxvolym';
	@override String get maxVolumeDescription => 'Tillåt att volymen höjs över 100 % för innehåll med låg ljudnivå';
	@override String maxVolumePercent({required Object percent}) => '${percent} %';
	@override String get discordRichPresence => 'Discord-aktivitet';
	@override String get discordRichPresenceDescription => 'Visa vad du tittar på i Discord';
	@override String get services => 'Tjänster';
	@override String get servicesDescription => 'Anslut Trakt, MyAnimeList, Seerr med mera';
	@override String get manageLibrariesDescription => 'Ordna om och dölj bibliotek';
	@override String get companionRemoteServer => 'Server för fjärrkontroll';
	@override String get companionRemoteServerDescription => 'Tillåt att mobila enheter i nätverket styr appen';
	@override String get companionRemoteServerStartFailed => 'Kunde inte starta servern för fjärrkontroll';
	@override String get companionRemoteServerStopFailed => 'Kunde inte stoppa servern för fjärrkontroll';
	@override String get autoPip => 'Automatisk bild-i-bild';
	@override String get autoPipDescription => 'Aktivera bild-i-bild om du lämnar appen under uppspelning';
	@override String get matchContentFrameRate => 'Matcha innehållets bildfrekvens';
	@override String get matchContentFrameRateDescription => 'Matcha skärmens uppdateringsfrekvens med videoinnehållet';
	@override String get matchContentResolution => 'Anpassa till innehållets upplösning';
	@override String get matchContentResolutionDescription => 'Växlar skärmen till videons ursprungliga upplösning så att din TV sköter uppskalningen. Menyer och undertexter skalas också upp under uppspelning';
	@override String get matchRefreshRate => 'Matcha uppdateringsfrekvens';
	@override String get matchRefreshRateDescription => 'Matcha skärmens uppdateringsfrekvens i helskärm';
	@override String get matchDynamicRange => 'Matcha dynamiskt omfång';
	@override String get matchDynamicRangeDescription => 'Slå på HDR för HDR-innehåll och sedan tillbaka till SDR';
	@override String get displaySwitchDelay => 'Fördröjning vid skärmbyte';
	@override String get tunneledPlayback => 'Tunneluppspelning';
	@override String get tunneledPlaybackDescription => 'Använd videotunnling. Inaktivera om HDR-uppspelning visar svart video eller rörelser hackar.';
	@override String get audioPassthrough => 'Ljudgenomströmning';
	@override String get audioPassthroughDescription => 'Skicka Dolby-/DTS-ljud till receivern eller TV:n utan omkodning så att surroundljudet bevaras. Stäng av om inget ljud hörs.';
	@override String get audioPassthroughDescriptionApple => 'Använd Apples inbyggda Dolby-avkodare för Dolby Digital Plus, inklusive Atmos. DTS och TrueHD spelas fortfarande upp som flerkanaligt PCM-ljud. Stäng av om inget ljud hörs.';
	@override String get audioPassthroughDescriptionAppleSpatial => 'Använd Apples inbyggda Dolby-dekoder för Dolby Digital Plus, inklusive Atmos. På iOS, iPadOS och tvOS 26 eller senare spelas TrueHD Atmos och DTS:X upp som rumsligt ljud. Andra DTS- och TrueHD-spår spelas som flerkanals PCM. Stäng av om du inte har något ljud.';
	@override String get audioPassthroughOverriddenByNormalization => 'Av medan ljudstyrkenormalisering är på';
	@override String get audioChannelLimit => 'Ljudkanaler';
	@override String get audioChannelLimitDescription => 'Blanda ned avkodat ljud för högtalare, hörlurar eller HDMI-inställningar som inte kan spela upp alla kanaler';
	@override String get audioChannelLimitOriginal => 'Original';
	@override String get audioChannelLimitOriginalDescription => 'Spela upp alla kanaler i spåret';
	@override String get audioChannelLimitSurround51 => 'Upp till 5.1';
	@override String get audioChannelLimitSurround51Description => 'Mixa 7,1 ner till 5,1 för TV-apparater och mottagare som bara tar 5,1 PCM. Genomgången påverkas inte.';
	@override String get audioChannelLimitStereo => 'Stereo';
	@override String get audioChannelLimitStereoDescription => 'Mixa ner till två kanaler för stereohögtalare eller hörlurar. Stänger av genomkoppling.';
	@override String get downmixCenterBoost => 'Förstärkning av centerkanal';
	@override String downmixCenterBoostValue({required Object db}) => '${db} dB';
	@override String get downmixCenterBoostLabel => 'Förstärkning (dB)';
	@override String get downmixCenterBoostShort => 'dB';
	@override String get audioDownmixNormalize => 'Normalisera ljudstyrka vid nedmixning';
	@override String get audioDownmixNormalizeDescription => 'Sänk ljudnivån för att förhindra klippning. Stäng av för att behålla originalvolymen (starka ljud kan då bli förvrängda).';
	@override String get dvConversionMode => 'Dolby Vision-konvertering';
	@override String get dvConversionModeDescription => 'Välj hur Dolby Vision Profile 7-filer hanteras.';
	@override String get dvConversionAuto => 'Auto';
	@override String get dvConversionNative => 'Inbyggt / inaktiverat';
	@override String get dvConversionDv81 => 'P7 → P8.1';
	@override String get dvConversionHevcStrip => 'P7 → HEVC';
	@override String get dvConversionAutoDescription => 'Identifiera enhetens funktioner och använd det normala reservbeteendet';
	@override String get dvConversionNativeDescription => 'Tvinga inbyggd DV7 och förhindra nya försök med DV-konvertering';
	@override String get dvConversionDv81Description => 'Tvinga direkt RPU-konvertering till Dolby Vision-profil 8.1';
	@override String get dvConversionHevcStripDescription => 'Ta bort Dolby Visions RPU-/EL-lager och använd vanlig HEVC';
	@override String get disableDolbyVision => 'Inaktivera Dolby Vision';
	@override String get disableDolbyVisionDescription => 'Spela upp filens HDR10- eller HLG-lager i stället för Dolby Vision när det finns';
	@override String get hdrSdrConversion => 'HDR till SDR-konvertering';
	@override String get hdrSdrConversionDescription => 'Välj vad som konverterar HDR-video när skärmen inte kan visa HDR.';
	@override String get hdrSdrConversionAuto => 'Auto';
	@override String get hdrSdrConversionAutoDescription => 'Enhet på Android 9 och senare, spelare på äldre versioner';
	@override String get hdrSdrConversionDevice => 'Enhet';
	@override String get hdrSdrConversionDeviceDescription => 'Enhetens videohårdvara konverterar. Snabbast, men färgerna beror på enheten';
	@override String get hdrSdrConversionPlayer => 'Spelare';
	@override String get hdrSdrConversionPlayerDescription => 'Spelaren konverterar. Jämna färger, men 4K kan hacka på enklare tv-boxar';
	@override String get deinterlace => 'Deinterlacing';
	@override String get deinterlaceDescription => 'Ta bort kamningsartefakter från interlaced video (endast mpv)';
	@override String get deinterlaceOff => 'Av';
	@override String get deinterlaceOffDescription => 'Visa sammanflätad video när den är avkodad';
	@override String get deinterlaceVideo => 'Video';
	@override String get deinterlaceVideoDescription => 'Förvandla varje fält till en hel bild. För video inspelad för TV, som sport, nyheter och konserter';
	@override String get deinterlaceFilm => 'Film';
	@override String get deinterlaceFilmDescription => 'Återställ de ursprungliga ramarna för film och animation telecined till 29,97 fps, vanligt på NTSC DVD-skivor. Videoinspelning för TV-stamning. Live-TV använder video';
	@override String get requireProfileSelectionOnOpen => 'Fråga efter profil vid appstart';
	@override String get requireProfileSelectionOnOpenDescription => 'Visa profilval varje gång appen öppnas';
	@override String get forceTvMode => 'Tvinga TV-läge';
	@override String get forceTvModeKeepTitle => 'Behålla TV-layouten?';
	@override String forceTvModeKeepBody({required Object seconds}) => 'TV-layout är designad för fjärrkontroller. Återgå till normal layout i ${seconds} s.';
	@override String get forceTvModeKeepConfirm => 'Behåll TV-layout';
	@override String get forceTvModeReverted => 'TV-layout återställd';
	@override String get forceTvModeDescription => 'Tvinga TV-layout. För enheter som inte upptäcks automatiskt. Kräver omstart.';
	@override String get startInFullscreen => 'Starta i helskärm';
	@override String get startInFullscreenDescription => 'Öppna Luroka i helskärm vid start';
	@override String get exitFullscreenOnPlayerClose => 'Avsluta helskärm vid stängning av spelare';
	@override String get exitFullscreenOnPlayerCloseDescription => 'Avslutar automatiskt helskärmsläge när videospelaren stängs';
	@override String get autoHidePerformanceOverlay => 'Dölj prestandainformation automatiskt';
	@override String get autoHidePerformanceOverlayDescription => 'Tona bort prestandainformationen tillsammans med uppspelningskontrollerna';
	@override String get showNavBarLabels => 'Visa navigeringsfältets etiketter';
	@override String get showNavBarLabelsDescription => 'Visa textetiketter under navigeringsfältets ikoner';
	@override String get startupSection => 'Startsida';
	@override String get showExploreTab => 'Visa fliken Utforska';
	@override String get showExploreTabDescription => 'Visa fliken Utforska med innehåll från Plex Discover och anslutna spårningstjänster';
	@override String get liveTvDefaultFavorites => 'Öppna med favoriter';
	@override String get liveTvDefaultFavoritesDescription => 'Visa endast favoritkanaler när Live-TV öppnas';
	@override String get general => 'Allmänt';
	@override String get generalDescription => 'Språk, start och fönsterbeteende';
	@override String get languageAndRegion => 'Språk och region';
	@override String get startup => 'Start';
	@override String get display => 'Skärm';
	@override String get libraryAndCards => 'Bibliotek och kort';
	@override String get homeScreen => 'Hemskärm';
	@override String get navigation => 'Navigering';
	@override String get window => 'Fönster';
	@override String get liveTv => 'Live-TV';
	@override String get player => 'Spelare';
	@override String get videoAndDisplay => 'Video och skärm';
	@override String get audio => 'Ljud';
	@override String get quality => 'Kvalitet';
	@override String get subtitles => 'Undertexter';
	@override String get seekAndTiming => 'Spolning och tidsinställningar';
	@override String get behavior => 'Beteende';
	@override String get gestures => 'Gester';
	@override String get gestureBrightnessSwipe => 'Svep för ljusstyrka';
	@override String get gestureBrightnessSwipeDescription => 'Svep uppåt eller nedåt i vänsterkanten för att justera ljusstyrkan';
	@override String get gestureVolumeSwipe => 'Svep för volym';
	@override String get gestureVolumeSwipeDescription => 'Svep uppåt eller nedåt i högerkanten för att justera volymen';
	@override String get gesturePinchToZoom => 'Nyp för att zooma';
	@override String get gesturePinchToZoomDescription => 'Nyp på videon för att zooma in eller ut';
	@override String get rememberBrightnessLevel => 'Kom ihåg ljusstyrkan';
	@override String get rememberBrightnessLevelDescription => 'Starta uppspelningen med ljusstyrkan från det senaste svepet';
	@override String get controls => 'Kontroller';
	@override String get rememberPlayerChanges => 'Kom ihåg spelarändringar';
	@override String get rememberPlayerChangesDescription => 'Var en ändring under uppspelning sparas och tillämpas igen';
	@override String get scopePlaybackSpeed => 'Uppspelningshastighet';
	@override String get scopeShaderPreset => 'Förinställning för shader';
	@override String get scopeAspectRatio => 'Bildförhållande';
	@override String get scopeSyncOffsets => 'Synkronisering av ljud och undertexter';
	@override String get playerScopeOff => 'Spara inte';
	@override String get playerScopeGlobal => 'Överallt';
	@override String get playerScopeLibrary => 'Per bibliotek';
	@override String get playerScopeTitle => 'Per serie eller film';
	@override String get exportDialogTitle => 'Exportera Luroka-inställningar';
	@override String get velvetHourTheme => 'Sammetstimme';
}

// Path: themeEditor
class _Translations$themeEditor$sv extends Translations$themeEditor$en {
	_Translations$themeEditor$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get builtIn => 'Inbyggd';
	@override String get presets => 'Förinställningar';
	@override String get custom => 'Anpassad';
	@override String get customEmpty => 'Inte skapat ännu';
	@override String get editCustom => 'Redigera anpassat tema';
	@override String get editCustomDescription => 'Välj varje färg själv';
	@override String get locked => 'Lås upp med Supporter';
	@override String get savedLocked => 'Sparad — låses upp med Supporter';
	@override String get title => 'Anpassat tema';
	@override String get startFrom => 'Börja från';
	@override String get startFromDescription => 'Kopiera alla färger från ett annat tema';
	@override String get colors => 'Färger';
	@override String get preview => 'Förhandsgranska';
	@override late final _Translations$themeEditor$slots$sv slots = _Translations$themeEditor$slots$sv._(_root);
	@override String get opacity => 'Opacitet';
	@override String get hexHint => '#RRGGBB eller #AARRGGBB';
	@override String get fromOtherThemes => 'Från andra teman';
	@override String swatchLabel({required Object theme, required Object color}) => '${theme} ${color}';
	@override late final _Translations$themeEditor$contrast$sv contrast = _Translations$themeEditor$contrast$sv._(_root);
	@override String lowContrast({required Object pair, required Object ratio, required Object minimum}) => '${pair}: ${ratio}:1, under den rekommenderade ${minimum}:1';
	@override String get discardTitle => 'Vill du ignorera ändringar?';
	@override String get discardMessage => 'Dina osparade färgändringar kommer att gå förlorade.';
	@override String get discard => 'Släng';
	@override String previewCardTitle({required Object number}) => 'Avsnitt ${number}';
	@override String previewCardSubtitle({required Object minutes}) => '${minutes} min kvar';
	@override String get previewSwitch => 'Autouppspelning';
	@override String get previewMutedText => 'Sekundär text lyder så här';
}

// Path: seriesBrowser
class _Translations$seriesBrowser$sv extends Translations$seriesBrowser$en {
	_Translations$seriesBrowser$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get oneEpisode => '1 avsnitt';
	@override String watchedCount({required Object count}) => '${count} tittade';
	@override String episodeCount({required Object count}) => '${count} avsnitt';
	@override String episodesFor({required Object season}) => '${season} · Avsnitt';
	@override String get enterHint => 'Välj: öppen säsong · ↓: avsnitt';
}

// Path: titlePage
class _Translations$titlePage$sv extends Translations$titlePage$en {
	_Translations$titlePage$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get genre => 'Genre';
	@override String remaining({required Object time}) => '${time} kvar';
	@override String continueEpisode({required Object season, required Object episode}) => 'Fortsätt S${season} E${episode}';
	@override String get watchlist => 'Bevakningslista';
	@override String get more => 'Mer';
}

// Path: tvMenus
class _Translations$tvMenus$sv extends Translations$tvMenus$en {
	_Translations$tvMenus$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get appearanceDescription => 'Tema, skärmmarginaler och affischer';
}

// Path: lurokaPlayer
class _Translations$lurokaPlayer$sv extends Translations$lurokaPlayer$en {
	_Translations$lurokaPlayer$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Spelarinställningar';
	@override String get watch => 'Titta';
	@override String get watchDescription => 'Ställ in tempot, varva ner och bestäm vad som ska spelas härnäst.';
	@override String get picture => 'Bildinställningar';
	@override String get pictureDescription => 'Zoom, HDR och videobearbetning';
	@override String get sound => 'Ljud & undertexter';
	@override String get audioSettings => 'Ljudinställningar';
	@override String get soundDescription => 'Timing, volym och ljudutgång';
	@override String get chooseTracks => 'Välj språk och undertextspår';
	@override String get tools => 'Avancerat';
	@override String get toolsDescription => 'Uppspelningsinformation och diagnostik';
	@override String get preferences => 'Uppspelningsinställningar';
	@override String get preferencesDescription => 'Din biograf, dina standardinställningar. Börja med ljud och bildtexter, finjustera sedan streaming och din skärm.';
	@override String get streamPreferences => 'Streamingkvalitet';
	@override String get displayPreferences => 'Display';
	@override String get enginePreferences => 'Avancerade spelaralternativ';
	@override String get seekPreferences => 'Söker';
	@override String get watchPreferences => 'Automatisk uppspelning och överhoppning';
	@override String get rememberPreferences => 'Kom ihåg inställningar';
}

// Path: lurokaSettings
class _Translations$lurokaSettings$sv extends Translations$lurokaSettings$en {
	_Translations$lurokaSettings$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get quickSetup => 'Snabb inställning';
	@override String get quickSetupDescription => 'Börja med det viktigaste: smidigare tv-surfning, en bekväm skärmpassning, din hemlayout och uppspelningsinställningar.';
	@override String get experience => 'Din erfarenhet';
	@override String get experienceDescription => 'Få Luroka att kännas rätt: utseende, språk, uppspelning, bibliotek och skärmtid.';
	@override String get remoteHint => '↑ ↓ Bläddra i kategorier · → / Välj Öppna alternativ · ← Gå tillbaka till kategorier';
}

// Path: playerChrome
class _Translations$playerChrome$sv extends Translations$playerChrome$en {
	_Translations$playerChrome$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get browse => 'Kapitel & kö';
	@override String get backToPlayback => 'Tillbaka till uppspelning';
	@override String get nowPlaying => 'SPELAR NU';
	@override String get options => 'SPELARALTERNATIV';
}

// Path: tvLayout
class _Translations$tvLayout$sv extends Translations$tvLayout$en {
	_Translations$tvLayout$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get screenMargins => 'TV-skärmens marginaler';
	@override String get screenMarginsDescription => 'Krymp appens kanter om din TV skär av en del av bilden';
	@override String get screenMarginsDefault => '0 % (standard)';
}

// Path: studios
class _Translations$studios$sv extends Translations$studios$en {
	_Translations$studios$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get checkingCopies => 'Kontrollerar andra bibliotek... Välj en känd kopia när som helst.';
	@override String get incompleteCopies => 'Vissa bibliotek kunde inte kontrolleras. Välj en känd kopia eller avbryt och försök igen.';
	@override String get partialFavorites => 'Vissa favoriter kunde inte laddas. Välj Uppdatera för att försöka igen.';
	@override String get copyLookupFailedTitle => 'Det gick inte att kontrollera alla kopior';
	@override String get copyLookupFailedMessage => 'Vissa bibliotek svarade inte. Du kan öppna en av kopiorna som redan hittats eller avbryta och försöka igen.';
	@override String get openKnownCopies => 'Visa kända kopior';
	@override String get browseAll => 'Bläddra bland alla';
	@override String titleCount({required Object count}) => '${count} titlar';
	@override String get topRated => 'Högsta betyg';
	@override String get mostWatched => 'Mest sedda i ditt bibliotek';
	@override String get collection => 'STUDIO KOLLEKTION';
	@override String loadedTitles({required Object count}) => '${count}-titlar laddade';
	@override String get sort => 'Sortera titlar';
	@override String get sortTitleAscending => 'Titel A–Z';
	@override String get sortTitleDescending => 'Titel Z–A';
	@override String get sortNewest => 'Senaste utgåvan';
	@override String get sortOldest => 'Äldsta utgåvan';
	@override String get sortAdded => 'Nyligen tillagd';
	@override String get sortEpisodeAdded => 'Nyligen tillagt avsnitt';
	@override String get sortRating => 'Högst betyg';
	@override String get title => 'Bläddra efter Studio';
	@override String get all => 'Alla';
	@override String get movies => 'Filmer';
	@override String get shows => 'TV-program';
	@override String get loadMore => 'Ladda fler titlar';
	@override String get empty => 'Inga matchande titlar i dina för närvarande synliga bibliotek.';
	@override String get retry => 'Det gick inte att ladda fler titlar — välj för att försöka igen';
	@override String get description => 'Utforska filmer och program från den här studion i dina bibliotek.';
}

// Path: dashboard
class _Translations$dashboard$sv extends Translations$dashboard$en {
	_Translations$dashboard$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get previousFeature => 'Tidigare utvald titel';
	@override String get nextFeature => 'Nästa utvalda titel';
	@override String get cinemaHome => 'HEM';
	@override String get episodeFallback => 'TV-avsnitt';
	@override String timeLeft({required Object minutes}) => '${minutes} min kvar';
	@override String timeLeftHours({required Object hours, required Object minutes}) => '${hours}h ${minutes}m kvar';
	@override String get spoilerHidden => 'Avsnittsdetaljer dolda av dina spoilerpreferenser.';
	@override String get synopsisUnavailable => 'Öppna Detaljer för att se mer om den här titeln.';
	@override String get yourSpace => 'DITT UTRYMME';
	@override String get title => 'Din biograf.';
	@override String get subtitle => 'Fortsätt en berättelse eller hitta nästa.';
	@override String get featured => 'UTVALT AV LUROKA';
	@override String get jumpBackIn => 'Fortsätt titta';
	@override String episodeLabel({required Object season, required Object episode}) => 'S${season} · E${episode}';
	@override String get anotherPick => 'Ett annat val';
	@override String get exploreSeries => 'Utforska serier';
	@override String get showFeatured => 'Fokuserade titeldetaljer';
	@override String get showFeaturedDescription => 'Visa konstverk, synopsis och avsnittsinformation för det markerade kortet';
}

// Path: lurokaCatalog
class _Translations$lurokaCatalog$sv extends Translations$lurokaCatalog$en {
	_Translations$lurokaCatalog$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get aboutPerson => 'I FRAMLJUS';
	@override String get biographyUnavailable => 'En biografi är inte tillgänglig från denna server.';
	@override String get filmography => 'Filmer och program i dina bibliotek';
	@override String get recommended => 'Upptäck';
	@override String get browse => 'Alla titlar';
	@override String get collections => 'Samlingar';
	@override String get browseHint => 'Utforska din katalog. Forma urvalet med filter och sortering.';
	@override String get recommendedHint => 'Hitta din nästa berättelse';
	@override String get details => 'Bakom historien';
}

// Path: referenceDetails
class _Translations$referenceDetails$sv extends Translations$referenceDetails$en {
	_Translations$referenceDetails$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get oneEpisodeLeft => '1 avsnitt kvar';
	@override String get playAll => 'Spela alla';
	@override String get present => 'Närvarande';
	@override String get continuing => 'Fortsätter';
	@override String get upNext => 'Nästa';
	@override String episodesLeft({required Object count}) => '${count} avsnitt kvar';
}

// Path: lurokaThemes
class _Translations$lurokaThemes$sv extends Translations$lurokaThemes$en {
	_Translations$lurokaThemes$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Luroka biopaletter';
	@override String get coral => 'Korall · midnattsblå & solnedgång';
	@override String get ocean => 'Hav · djupblått & is';
	@override String get jade => 'Jade · vintergrön & mint';
	@override String get amethyst => 'Ametist · midnattsviol';
	@override String get darkThemes => 'Mörka bioteman';
	@override String get lightThemes => 'Lätta bioteman';
	@override String get moreThemes => 'Fler teman';
	@override String get moreThemesDescription => 'Bläddra bland ytterligare paletter och anpassade färger';
	@override String get obsidian => 'Obsidian · ren svart & champagne';
	@override String get nocturne => 'Nocturne · kol & champagne';
	@override String get burgundy => 'Bourgogne · sammetsvin & ros';
	@override String get slate => 'Skiffer · grafit & snäcka';
	@override String get espresso => 'Espresso · kakao & kola';
	@override String get pearl => 'Pärla · porslin & safir';
	@override String get linen => 'Linne · varmt elfenben & terrakotta';
	@override String get sunrise => 'Soluppgång · persika & korall';
	@override String get coastal => 'Kustnära · dimma & havskricka';
	@override String get latte => 'Latte · grädde & kola';
	@override String get sage => 'Salvia · mjuk grön & eukalyptus';
	@override String get lavender => 'Lavendel · lila & djup violett';
}

// Path: customPerformance
class _Translations$customPerformance$sv extends Translations$customPerformance$en {
	_Translations$customPerformance$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Prestanda & effekter';
	@override String get fireStickMode => 'Lågströmsenhetsläge';
	@override String get description => 'Använd reducerade effekter, statiska bakgrunder, konstverk som begränsas till 720p och en 40 MiB bildcache. När det är aktiverat åsidosätter detta visuella effekter; om du stänger av den återställs dina inställningar för visuella effekter.';
	@override String get detailsTitle => 'Prestandadetaljer';
	@override String get details => 'Aktiva effekter, bildcachegräns och mätningar av surfprestanda';
	@override String get effectsTier => 'Aktiva effekter nivå';
	@override String get imageCache => 'Bildcachegräns';
	@override String get measurement => 'Surfmätning';
	@override String get measureInstructions => 'Starta ett 20-sekunders prov, gå tillbaka till Hem och bläddra med fjärrkontrollen. Gå tillbaka hit för att se resultatet. Upprepa samma åtgärder med läget på och av för att jämföra. Detta mäter Flutter UI-arbete, inte videodekoderprestanda.';
	@override String get startSample => 'Starta 20 sekunders prov';
	@override String get stopSample => 'Avsluta provet nu';
	@override String get sampling => 'Sampling — gå tillbaka till Hem och bläddra. Resultaten kommer att sparas här.';
	@override String get frames => 'Ramar samplade';
	@override String get slowFrames => 'Ramar över budget';
	@override String get buildP95 => 'Byggtid för användargränssnitt (95:e percentilen)';
	@override String get rasterP95 => 'Rastertid (95:e percentilen)';
	@override String get frameBudget => 'Budget per ram';
	@override String get processMemory => 'Appens processminne vid provänden';
	@override String get noFrames => 'Inga renderade ramar fångades. Starta ett nytt prov och bläddra i appen.';
}

// Path: homeLayout
class _Translations$homeLayout$sv extends Translations$homeLayout$en {
	_Translations$homeLayout$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Anpassa hemmet';
	@override String get description => 'Välj radordning och synlighet för den här profilen. Välj en rad för att flytta eller dölja den.';
	@override String get rows => 'Hemrader';
	@override String get visible => 'Synlig';
	@override String get hidden => 'Dold';
	@override String get showRow => 'Visa rad';
	@override String get hideRow => 'Göm rad';
	@override String get moveUp => 'Flytta uppåt';
	@override String get moveDown => 'Flytta ner';
	@override String get pinnedCollections => 'Fästa samlingar';
	@override String get pinInstructions => 'Öppna en samlings meny och välj Pin till Hem. Välj en fäst samling här för att ta bort genvägen.';
	@override String get pinCollection => 'Pin hem';
	@override String get unpinCollection => 'Lossa från hemmet';
	@override String get reset => 'Återställ standardrader';
	@override String get resetDescription => 'Återställa den ursprungliga radordningen och visa alla rader för den här profilen? Dina fästa samlingar kommer att behållas.';
	@override String get saveFailed => 'Det gick inte att spara din hemlayout. Försök igen.';
	@override String get emptyHint => 'Rader kan vara dolda. Öppna Anpassa hem för att visa dem igen.';
}

// Path: screenTime
class _Translations$screenTime$sv extends Translations$screenTime$en {
	_Translations$screenTime$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Skärmtid';
	@override String get description => 'Se tiden som ägnas åt att titta på video på den här profilen';
	@override String get today => 'Idag';
	@override String get thisWeek => 'Denna vecka';
	@override String get thisMonth => 'Denna månad';
	@override String get lessThanMinute => '< 1 min';
	@override String minutes({required Object count}) => '${count} min';
	@override String hours({required Object count}) => '${count} hr';
	@override String hoursMinutes({required Object hours, required Object minutes}) => '${hours} tim ${minutes} min';
}

// Path: activityStats
class _Translations$activityStats$sv extends Translations$activityStats$en {
	_Translations$activityStats$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Visa statistik';
	@override String get period => 'Period';
	@override String get last7Days => '7 dagar';
	@override String get last30Days => '30 dagar';
	@override String get last90Days => '90 dagar';
	@override String get thisYear => 'år';
	@override String get allTime => 'Alla';
	@override String get heroAllTime => 'Hela tiden';
	@override String get heroDailyAverage => 'Dagligt genomsnitt';
	@override String get consistency => 'Konsekvens';
	@override String get currentStreak => 'Nuvarande rad';
	@override String dayCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n,
		one: '${n} dag',
		other: '${n} dagar',
	);
	@override String get longestStreak => 'Längsta rad';
	@override String get bestDay => 'Bästa dagen';
	@override String get bestWeek => 'Bästa veckan';
	@override String get trendTitle => 'Titta tid';
	@override String get trendToday => 'Idag';
	@override String gapDetail({required Object stat, required Object range}) => '${stat} på ${range}';
	@override String get weekdayTitle => 'Efter veckodag';
	@override String get hoursTitle => 'Efter tid på dygnet';
	@override String get amLabel => 'AM';
	@override String get pmLabel => 'PM';
	@override String get kindsTitle => 'Efter kategori';
	@override String get kindMovie => 'Filmer';
	@override String get kindTv => 'TV';
	@override String get kindLiveTv => 'Live-TV';
	@override String get kindMusic => 'Musik';
	@override String get kindOther => 'Annat';
	@override String get topTitlesTitle => 'Mest tittade';
	@override String get sessionsTitle => 'Senaste sessioner';
	@override String get showMore => 'Visa mer';
	@override String get sessionNoTitle => 'Oidentifierad uppspelning';
	@override String get emptyTitle => 'Inget här ännu';
	@override String get emptyBody => 'Titta på något och din statistik kommer att byggas upp här.';
	@override String get noDataInPeriod => 'Ingen uppspelning inspelad under denna period.';
}

// Path: search
class _Translations$search$sv extends Translations$search$en {
	_Translations$search$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get hint => 'Sök filmer, serier, musik...';
	@override String get tryDifferentTerm => 'Prova en annan sökterm';
	@override String get searchYourMedia => 'Sök i dina media';
	@override String get enterTitleActorOrKeyword => 'Ange en titel, skådespelare eller nyckelord';
	@override String get people => 'Människor';
	@override String get recentSearches => 'Senaste sökningar';
	@override String get clearHistory => 'Rensa historik';
}

// Path: hotkeys
class _Translations$hotkeys$sv extends Translations$hotkeys$en {
	_Translations$hotkeys$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String setShortcutFor({required Object actionName}) => 'Sätt genväg för ${actionName}';
	@override String get clearShortcut => 'Rensa genväg';
	@override String get noShortcutSet => 'Ingen genväg angiven';
	@override String get currentShortcut => 'Aktuell genväg:';
	@override String get pressToRecord => 'Välj för att registrera en genväg';
	@override String get recordingShortcut => 'Tryck på genvägen nu';
	@override late final _Translations$hotkeys$actions$sv actions = _Translations$hotkeys$actions$sv._(_root);
}

// Path: fileInfo
class _Translations$fileInfo$sv extends Translations$fileInfo$en {
	_Translations$fileInfo$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Filinformation';
	@override String get overview => 'Översikt';
	@override String get video => 'Video';
	@override String get audio => 'Ljud';
	@override String get subtitles => 'Undertexter';
	@override String get images => 'Inbäddade bilder';
	@override String get dataStreams => 'Dataströmmar';
	@override String get lyrics => 'Sångtexter';
	@override String get file => 'Fil';
	@override String get attachments => 'Bilagor';
	@override String get delivery => 'Leverans';
	@override String versionCounter({required Object index, required Object count}) => 'Version ${index} av ${count}';
	@override String fileCounter({required Object index, required Object count}) => 'Fil ${index} av ${count}';
	@override String get noStreams => 'Servern rapporterade inga strömmar för den här filen.';
	@override String get copyPath => 'Kopiera sökväg';
	@override String get pathCopied => 'Filsökväg kopierad';
	@override String get codec => 'Kodek';
	@override String get codecTag => 'Codec-tagg';
	@override String get resolution => 'Upplösning';
	@override String get codedResolution => 'Kodad upplösning';
	@override String get bitrate => 'Bithastighet';
	@override String get frameRate => 'Bildfrekvens';
	@override String get rotation => 'Rotation';
	@override String get comment => 'Kommentar';
	@override String get audioDescription => 'Ljudbeskrivning';
	@override String get headerCompression => 'Headerkomprimering';
	@override String get sidecarFile => 'Sidecar-fil';
	@override String get transportTimestamp => 'Transporttidsstämpel';
	@override String get displayOffset => 'Visningsoffset';
	@override String get previewFailureCode => 'Kod för förhandsgranskningsfel';
	@override String get previewRetries => 'Omförsök för förhandsgranskning';
	@override String get aspectRatio => 'Bildförhållande';
	@override String get pixelAspectRatio => 'Pixelförhållande';
	@override String get profile => 'Profil';
	@override String get level => 'Nivå';
	@override String get bitDepth => 'Bitdjup';
	@override String get pixelFormat => 'Pixelformat';
	@override String get colorSpace => 'Färgrymd';
	@override String get colorRange => 'Färgområde';
	@override String get colorPrimaries => 'Färgprimärer';
	@override String get colorTransfer => 'Färgöverföring';
	@override String get chromaSubsampling => 'Krominansnedsampling';
	@override String get chromaLocation => 'Kroma-placering';
	@override String get scanType => 'Skanningsläge';
	@override String get interlaced => 'Interlaced';
	@override String get anamorphic => 'Anamorfisk';
	@override String get referenceFrames => 'Referensbildrutor';
	@override String get dynamicRange => 'Dynamiskt omfång';
	@override String get dolbyVision => 'Dolby Vision';
	@override String get dolbyVisionLevel => 'Dolby Vision-nivå';
	@override String get dolbyVisionVersion => 'Dolby Vision-version';
	@override String get dolbyVisionLayers => 'Dolby Vision-lager';
	@override String get baseLayerCompatibility => 'Kompatibilitet för baslager';
	@override String get avcBitstream => 'AVC-bitström';
	@override String get nalLengthSize => 'NAL-längdstorlek';
	@override String get scalingMatrix => 'Anpassad skalningsmatris';
	@override String get streamIdentifier => 'Strömidentifierare';
	@override String get streamIndex => 'Strömindex';
	@override String get streamId => 'Ström-ID';
	@override String get language => 'Språk';
	@override String get languageCode => 'Språkkod';
	@override String get streamTitle => 'Spårnamn';
	@override String get channels => 'Kanaler';
	@override String get sampleRate => 'Samplingsfrekvens';
	@override String get spatialAudio => 'Rumsligt ljud';
	@override String get textBased => 'Textbaserad';
	@override String get subtitleFormat => 'Sidecar-format';
	@override String get provider => 'Leverantör';
	@override String get matchScore => 'Matchningspoäng';
	@override String get externalDelivery => 'Kan levereras separat';
	@override String get sidecarPath => 'Sidecar-sökväg';
	@override String get sourceStream => 'Kopierad från';
	@override String get temporary => 'Tillfällig';
	@override String get timeBase => 'Tidsbas';
	@override String get overallBitrate => 'Total bithastighet';
	@override String get path => 'Sökväg';
	@override String get fileName => 'Filnamn';
	@override String get size => 'Storlek';
	@override String get totalSize => 'Total storlek';
	@override String get container => 'Container';
	@override String get duration => 'Varaktighet';
	@override String get previewThumbnails => 'Förhandsgranskningsminiatyrer';
	@override String get previewIndex => 'Förhandsgranskningsindex';
	@override String get packetLength => 'Paketlängd';
	@override String get filePresent => 'Fil finns';
	@override String get fileReadable => 'Läsbar av servern';
	@override String get streamPath => 'Strömsökväg';
	@override String get optimizedForStreaming => 'Optimerad för streaming';
	@override String get has64bitOffsets => '64-bitars offsetvärden';
	@override String get protocol => 'Protokoll';
	@override String get mediaType => 'Mediatyp';
	@override String get sourceKind => 'Källtyp';
	@override String get optimizedVersion => 'Optimerad version';
	@override String get optimizationTarget => 'Optimeringsmål';
	@override String get deletedAt => 'Raderad';
	@override String get remoteSource => 'Fjärrkälla';
	@override String get infiniteStream => 'Oändlig ström';
	@override String get directPlay => 'Direktuppspelning';
	@override String get directStream => 'Direktströmning';
	@override String get transcoding => 'Transkodning';
	@override String get etag => 'ETag';
	@override String get versionId => 'Versions-ID';
	@override String get fileId => 'Fil-ID';
	@override String get defaultAudioTrack => 'Standardljudspår';
	@override String get defaultSubtitleTrack => 'Standardundertextspår';
	@override String get subtitlesOff => 'Av';
	@override String get flagDefault => 'Standard';
	@override String get flagForced => 'Forcerad';
	@override String get flagSelected => 'Vald';
	@override String get flagExternal => 'Extern';
	@override String get flagHearingImpaired => 'Hörselskadade';
	@override String get flagDub => 'Dubbad';
	@override String get flagOriginal => 'Original';
	@override String get channelsMono => 'Mono';
	@override String dolbyVisionProfile({required Object profile}) => 'Profil ${profile}';
}

// Path: mediaMenu
class _Translations$mediaMenu$sv extends Translations$mediaMenu$en {
	_Translations$mediaMenu$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get markAsWatched => 'Markera som sedd';
	@override String get markAsUnwatched => 'Markera som osedd';
	@override String get clearProgress => 'Tydliga framsteg';
	@override String get removeFromContinueWatching => 'Ta bort från Fortsätt titta';
	@override String get viewDetails => 'Visa detaljer';
	@override String get goToSeries => 'Gå till serie';
	@override String get shufflePlay => 'Blanda uppspelning';
	@override String get shuffleNotAvailableOffline => 'Blandad uppspelning är inte tillgänglig offline';
	@override String get fileInfo => 'Filinformation';
	@override String get deleteEpisodeFromServer => 'Ta bort avsnitt från servern';
	@override String get deleteSeasonFromServer => 'Ta bort säsong från servern';
	@override String get deleteShowFromServer => 'Ta bort serie från servern';
	@override String get deleteMovieFromServer => 'Ta bort film från servern';
	@override String get deleteEpisodeTitle => 'Ta bort det här avsnittet?';
	@override String get deleteSeasonTitle => 'Ta bort den här säsongen?';
	@override String get deleteShowTitle => 'Ta bort den här serien?';
	@override String get deleteMovieTitle => 'Ta bort den här filmen?';
	@override String get deleteEpisodeConfirm => 'Ta bort avsnitt';
	@override String get deleteSeasonConfirm => 'Ta bort säsong';
	@override String get deleteShowConfirm => 'Ta bort serie';
	@override String get deleteMovieConfirm => 'Ta bort film';
	@override String get deleteAnyway => 'Ta bort ändå';
	@override String confirmDeleteTarget({required Object title}) => 'Ta bort ${title} permanent från servern?';
	@override String get deleteMultipleWarning => 'Detta omfattar alla avsnitt och deras filer.';
	@override String deleteEpisodeCountWarning({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n,
		one: 'Detta tar bort ${n} avsnitt i den, och dess fil.',
		other: 'Detta tar bort alla ${n} avsnitt i den, och deras filer.',
	);
	@override String deleteMultiPartWarning({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n,
		one: 'Detta objekt lagras som ${n} fil, som kommer att tas bort.',
		other: 'Detta objekt lagras i ${n} filer, och alla kommer att tas bort.',
	);
	@override String deleteSharedFileHeading({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n,
		one: '${n} annat avsnitt lagras i samma fil och kommer också att tas bort:',
		other: '${n} andra avsnitt lagras i samma fil och kommer också att tas bort:',
	);
	@override String get deleteScopeUnverifiedProbeFailed => 'Luroka kunde inte kontrollera vilka filer detta tar bort, så det kan ta bort mer än objektet ovan. Avbryt och försök igen, eller ta bort ändå.';
	@override String get deleteScopeUnverifiedNoFileInfo => 'Din server tillhandahöll inte filinformation för detta objekt, så Luroka kan inte kontrollera vilka filer detta tar bort. Det kan ta bort mer än objektet ovan.';
	@override String get mediaDeletedSuccessfully => 'Medieobjektet har tagits bort';
	@override String get mediaFailedToDelete => 'Det gick inte att ta bort medieobjektet';
	@override String get rate => 'Betygsätt';
	@override String get playFromBeginning => 'Spela från början';
	@override String get playVersion => 'Spela version...';
}

// Path: rateSheet
class _Translations$rateSheet$sv extends Translations$rateSheet$en {
	_Translations$rateSheet$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Betygsätt';
	@override String get server => 'Server';
	@override String get favorite => 'Favorit';
	@override String get favorited => 'Tillagd i favoriter';
	@override String get saved => 'Sparat';
	@override String get notAvailable => 'Ingen matchning hittades';
	@override String get noConnectedServices => 'Anslut en tjänst i Inställningar för att betygsätta där.';
}

// Path: accessibility
class _Translations$accessibility$sv extends Translations$accessibility$en {
	_Translations$accessibility$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String mediaCardMovie({required Object title}) => '${title}, film';
	@override String mediaCardShow({required Object title}) => '${title}, TV-serie';
	@override String mediaCardEpisode({required Object title, required Object episodeInfo}) => '${title}, ${episodeInfo}';
	@override String mediaCardSeason({required Object title, required Object seasonInfo}) => '${title}, ${seasonInfo}';
	@override String get mediaCardWatched => 'sedd';
	@override String mediaCardPartiallyWatched({required Object percent}) => 'sett till ${percent} procent';
	@override String get mediaCardUnwatched => 'osedd';
	@override String get tapToPlay => 'Tryck för att spela upp';
	@override String get decrease => 'Minska';
	@override String get increase => 'Öka';
	@override String decreaseValue({required Object label}) => 'Minska ${label}';
	@override String increaseValue({required Object label}) => 'Öka ${label}';
	@override String get hue => 'Nyans';
	@override String get saturation => 'Mättnad';
	@override String get brightness => 'Ljusstyrka';
	@override String get hexColor => 'Hexfärg';
	@override String get expandText => 'Expandera text';
	@override String get collapseText => 'Fäll ihop text';
	@override String get alphabetNavigation => 'Alfabetisk navigering';
	@override String get alphabetScrollHint => 'Svep uppåt eller nedåt för att gå mellan bokstäver';
	@override String rowColumnPosition({required Object row, required Object rowCount, required Object column, required Object columnCount}) => 'Rad ${row} av ${rowCount}, kolumn ${column} av ${columnCount}';
	@override String rowPosition({required Object row, required Object rowCount}) => 'Rad ${row} av ${rowCount}';
	@override String get autoScrollPlay => 'Starta automatisk rullning';
	@override String get autoScrollPause => 'Pausa automatisk rullning';
	@override String get hueShort => 'H';
	@override String get saturationShort => 'S';
	@override String get valueShort => 'V';
}

// Path: tooltips
class _Translations$tooltips$sv extends Translations$tooltips$en {
	_Translations$tooltips$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get shufflePlay => 'Blanda uppspelning';
	@override String get playTrailer => 'Spela trailer';
	@override String get markAsWatched => 'Markera som sedd';
	@override String get markAsUnwatched => 'Markera som osedd';
}

// Path: audioTracks
class _Translations$audioTracks$sv extends Translations$audioTracks$en {
	_Translations$audioTracks$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String track({required Object n}) => 'Ljudspår ${n}';
}

// Path: videoControls
class _Translations$videoControls$sv extends Translations$videoControls$en {
	_Translations$videoControls$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get audioLabel => 'Ljud';
	@override String get subtitlesLabel => 'Undertexter';
	@override String addTime({required Object amount, required Object unit}) => '+${amount}${unit}';
	@override String get letterbox => 'Brevlådeformat';
	@override String get fillScreen => 'Fyll skärmen';
	@override String get stretch => 'Sträck ut';
	@override String get lockRotation => 'Lås skärmrotationen';
	@override String get unlockRotation => 'Lås upp skärmrotationen';
	@override String get timerActive => 'Timer aktiv';
	@override String playbackWillPauseIn({required Object duration}) => 'Uppspelningen pausas om ${duration}';
	@override String get sleepTimerEndOfVideo => 'Slutet av aktuell video';
	@override String get sleepTimerStopAtHeader => 'Stoppa vid';
	@override String get sleepTimerDurationHeader => 'Timer';
	@override String get playbackWillPauseAtEnd => 'Uppspelningen pausas i slutet av denna video';
	@override String get stillWatching => 'Tittar du fortfarande?';
	@override String pausingIn({required Object seconds}) => 'Pausar om ${seconds}s';
	@override String get continueWatching => 'Fortsätt';
	@override String get autoPlayNext => 'Spela nästa automatiskt';
	@override String get playNext => 'Spela nästa';
	@override String get playButton => 'Spela';
	@override String get pauseButton => 'Pausa';
	@override String get playbackPaused => 'Pausad';
	@override String get playbackResumed => 'Spelar';
	@override String get loadingVideo => 'Laddar video';
	@override String get showPlaybackControls => 'Visa uppspelningskontroller';
	@override String get hidePlaybackControls => 'Dölj uppspelningskontroller';
	@override String seekBackwardButton({required Object seconds}) => 'Spola bakåt ${seconds} sekunder';
	@override String seekForwardButton({required Object seconds}) => 'Spola framåt ${seconds} sekunder';
	@override String get previousButton => 'Föregående avsnitt';
	@override String get nextButton => 'Nästa avsnitt';
	@override String get previousChapterButton => 'Föregående kapitel';
	@override String get nextChapterButton => 'Nästa kapitel';
	@override String get muteButton => 'Stäng av ljudet';
	@override String get unmuteButton => 'Slå på ljudet';
	@override String get settingsButton => 'Uppspelningsinställningar';
	@override String get infoButton => 'Info';
	@override String get tracksButton => 'Ljud och undertexter';
	@override String get chaptersButton => 'Kapitel';
	@override String get versionQualityButton => 'Version och kvalitet';
	@override String get versionColumnHeader => 'Version';
	@override String get qualityColumnHeader => 'Kvalitet';
	@override String get qualityOriginal => 'Original';
	@override String qualityPresetLabel({required Object resolution, required Object bitrate}) => '${resolution}p ${bitrate} Mbps';
	@override String get transcodeUnavailableFallback => 'Transkodning otillgänglig — spelar upp i originalkvalitet';
	@override String get subtitleUnavailableFallback => 'De valda undertexterna kunde inte läsas in — uppspelningen fortsätter utan undertexter';
	@override String get pipButton => 'Bild-i-bild-läge';
	@override String get aspectRatioButton => 'Bildförhållande';
	@override String get ambientLighting => 'Ambientbelysning';
	@override String get fullscreenButton => 'Aktivera helskärm';
	@override String get exitFullscreenButton => 'Avsluta helskärm';
	@override String get alwaysOnTopButton => 'Alltid överst';
	@override String get rotationLockButton => 'Rotationslås';
	@override String get lockScreen => 'Lås skärm';
	@override String get screenLockButton => 'Skärmlås';
	@override String get longPressToUnlock => 'Tryck länge för att låsa upp';
	@override String get timelineSlider => 'Videotidslinje';
	@override String get volumeSlider => 'Volymnivå';
	@override String endsAt({required Object time}) => 'Slutar kl. ${time}';
	@override String get pipActive => 'Spelas upp i bild-i-bild';
	@override String get pipFailed => 'Bild-i-bild kunde inte starta';
	@override String get screenshotSaved => 'Skärmbild sparad';
	@override String get screenshotFailed => 'Det gick inte att ta en skärmdump';
	@override String zoomPercent({required Object percent}) => 'Zoom ${percent}%';
	@override String volumePercent({required Object percent}) => 'Volym ${percent}%';
	@override late final _Translations$videoControls$pipErrors$sv pipErrors = _Translations$videoControls$pipErrors$sv._(_root);
	@override String get chapters => 'Kapitel';
	@override String get noChaptersAvailable => 'Inga kapitel tillgängliga';
	@override String get queue => 'Kö';
	@override String get noQueueItems => 'Inga objekt i kön';
	@override String get noAudioDevicesAvailable => 'Inga ljudenheter tillgängliga';
	@override String get searchSubtitles => 'Sök undertexter';
	@override String get language => 'Språk';
	@override String get noSubtitlesFound => 'Inga undertexter hittades';
	@override String get subtitleDownloaded => 'Undertexten har laddats ned';
	@override String get subtitleDownloadedNotApplied => 'Undertexten laddades ned men kunde inte väljas';
	@override String get subtitleDownloadFailed => 'Det gick inte att ladda ned undertexten';
	@override String get searchLanguages => 'Sök språk...';
	@override String get skipIntro => 'Hoppa över intro';
	@override String get skipCredits => 'Hoppa över eftertexter';
	@override String get nextEpisode => 'Nästa avsnitt';
	@override String subtitleTrack({required Object n}) => 'Spår ${n}';
	@override String subtitleFile({required Object name}) => 'Undertext ${name}';
	@override String forcedTrack({required Object label}) => '${label} (Forcerad)';
	@override String get osdSubtitlesOff => 'Undertexter: Av';
	@override String osdSubtitles({required Object track}) => 'Undertexter: ${track}';
	@override String osdAudio({required Object track}) => 'Ljud: ${track}';
}

// Path: messages
class _Translations$messages$sv extends Translations$messages$en {
	_Translations$messages$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get markedAsWatched => 'Markerad som sedd';
	@override String get markedAsUnwatched => 'Markerad som osedd';
	@override String get markedAsWatchedOffline => 'Markerad som sedd (synkroniseras när online)';
	@override String get markedAsUnwatchedOffline => 'Markerad som osedd (synkroniseras när online)';
	@override String autoRemovedWatchedDownload({required Object title}) => 'Automatiskt borttagen: ${title}';
	@override String autoRemovedWatchedDownloads({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n,
		one: 'Tog automatiskt bort ${n} sedd nedladdning',
		other: 'Tog automatiskt bort ${n} sedda nedladdningar',
	);
	@override String get removedFromContinueWatching => 'Borttagen från Fortsätt titta';
	@override String errorLoading({required Object error}) => 'Fel: ${error}';
	@override String get searchPartialResults => 'Vissa mediaservrar kunde inte sökas. Visar tillgängliga resultat.';
	@override String get streamInterrupted => 'Strömmen avbröts. Tryck på uppspelning eller spola för att försöka igen.';
	@override String get liveStreamInterrupted => 'Liveströmmen avbröts. Tryck på uppspelning för att försöka igen.';
	@override String get fileInfoNotAvailable => 'Filinformation är inte tillgänglig';
	@override String get playbackAuthenticationRequired => 'Logga in på medieservern igen för att spela upp objektet.';
	@override String get playbackServerUnavailable => 'Medieservern är inte tillgänglig. Försök igen senare.';
	@override String get playbackDataInvalid => 'Servern returnerade ogiltig uppspelningsinformation.';
	@override String get playbackCancelled => 'Uppspelningen avbröts.';
	@override String get playbackFailed => 'Det gick inte att starta uppspelningen.';
	@override String playbackFailedDetail({required Object error}) => 'Det gick inte att starta uppspelningen: ${error}';
	@override String get audioOutputFailed => 'Ljudutgången slutade svara. Kontrollera ljudanslutningen till TV:n eller receivern; om andra appar också saknar ljud, starta om enheten.';
	@override String get mediaUnavailable => 'Det här innehållet är inte längre tillgängligt.';
	@override String errorLoadingFileInfo({required Object error}) => 'Fel vid laddning av filinformation: ${error}';
	@override String get errorLoadingSeries => 'Fel vid laddning av serie';
	@override String get musicNotSupported => 'Musikuppspelning stöds inte ännu';
	@override String get noDescriptionAvailable => 'Ingen beskrivning tillgänglig';
	@override String get noProfilesAvailable => 'Inga profiler tillgängliga';
	@override String get contactAdminForProfiles => 'Kontakta din serveradministratör för att lägga till profiler';
	@override String get unableToDetermineLibrarySection => 'Kan inte avgöra biblioteksavdelningen för detta objekt';
	@override String get logsCleared => 'Loggar rensade';
	@override String get logsCopied => 'Loggar kopierade till urklipp';
	@override String get noLogsAvailable => 'Inga loggar tillgängliga';
	@override String libraryScanning({required Object title}) => 'Skannar "${title}"...';
	@override String libraryScanStarted({required Object title}) => 'Biblioteksskanningen har startat för "${title}"';
	@override String libraryScanFailed({required Object error}) => 'Det gick inte att skanna biblioteket: ${error}';
	@override String metadataRefreshing({required Object title}) => 'Uppdaterar metadata för "${title}"...';
	@override String metadataRefreshStarted({required Object title}) => 'Metadatauppdateringen har startat för "${title}"';
	@override String metadataRefreshFailed({required Object error}) => 'Det gick inte att uppdatera metadata: ${error}';
	@override String get logoutConfirm => 'Är du säker på att du vill logga ut?';
	@override String get noSeasonsFound => 'Inga säsonger hittades';
	@override String get seasonsLoadFailed => 'Det gick inte att läsa in säsonger';
	@override String get noEpisodesFound => 'Inga avsnitt hittades i första säsongen';
	@override String get noEpisodesFoundGeneral => 'Inga avsnitt hittades';
	@override String get episodesLoadFailed => 'Det gick inte att läsa in avsnitt';
	@override String get noResultsFound => 'Inga resultat hittades';
	@override String sleepTimerSet({required Object label}) => 'Sovtimer inställd för ${label}';
	@override String get noItemsAvailable => 'Inga objekt tillgängliga';
	@override String get failedToCreatePlayQueueNoItems => 'Det gick inte att skapa en uppspelningskö – inga objekt';
	@override String failedPlayback({required Object action, required Object error}) => 'Det gick inte att ${action}: ${error}';
	@override String get switchingToCompatiblePlayer => 'Byter till kompatibel spelare...';
	@override String get serverLimitTitle => 'Uppspelningen misslyckades';
	@override String get serverLimitBody => 'Serverfel (HTTP 500). En bandbredds-/transkodningsgräns avvisade troligen sessionen. Be ägaren justera den.';
	@override String get mediaUnreadableTitle => 'Filen är otillgänglig';
	@override String get mediaUnreadableBody => 'Servern hittade objektet men kunde inte läsa dess fil (HTTP 404). Filen har troligen flyttats, tagits bort eller så är dess lagring offline. Be serverägaren kontrollera filen och skanna om biblioteket.';
	@override String get serverBusyTitle => 'Strömmen är inte tillgänglig';
	@override String get serverBusyBody => 'Servern nekade upprepade gånger att strömma den här filen (HTTP 503). Den kan hålla på att startas om eller vara upptagen, eller så kan lagringen där filen finns vara offline. Försök igen om en stund – om det fortsätter, be serverns ägare att kontrollera servern och lagringen där filen finns.';
	@override String get playbackNotAllowedTitle => 'Uppspelning tillåts inte';
	@override String get playbackNotAllowedBody => 'Servern vägrade att strömma det här objektet (HTTP 403). Ditt konto kanske inte har behörighet att spela upp det, eller så tillåter servern kanske bara uppspelning i sitt lokala nätverk.';
	@override String get logsUploaded => 'Loggarna har laddats upp';
	@override String get logsUploadFailed => 'Det gick inte att ladda upp loggarna';
	@override String get logId => 'Logg-ID';
	@override String get burnedSubtitlesUseMenu => 'Undertexterna är inbrända i den här strömmen. Ändra dem via undertextmenyn.';
	@override String get noVideoUrl => 'Ingen video-URL är tillgänglig';
	@override String get playbackNoMediaSources => 'Servern returnerade inga spelbara mediekällor';
	@override String get playbackDataNotPrepared => 'Uppspelningen startades innan uppspelningsinformationen var klar';
	@override String get streamSelectionUnavailable => 'Val av ström är inte tillgängligt för den här källan';
	@override String get streamSelectionFailed => 'Kunde inte tillämpa de valda strömmarna';
	@override String get trackSelectionNotRemembered => 'Det här spårvalet gäller bara den aktuella uppspelningen.';
	@override String get serverUnavailableForProfile => 'Ingen server är tillgänglig för den aktiva profilen';
}

// Path: sourceLibraries
class _Translations$sourceLibraries$sv extends Translations$sourceLibraries$en {
	_Translations$sourceLibraries$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dina servrar och bibliotek';
	@override String get description => 'Välj de bibliotek Luroka använder för Hem, sökning, Upptäck tillgänglighet och Studios. Hemradsordning anpassas separat.';
	@override String get partial => 'Vissa servrar kunde inte kontrolleras. Dina sparade val för dessa bibliotek behålls. Uppdatera för att försöka igen.';
	@override String get loadFailed => 'Det gick inte att ladda dina bibliotek. Kontrollera anslutningen och försök igen.';
	@override String get notSelected => 'Ej tillgängligt i dina valda bibliotek.';
	@override String get checkOthers => 'Kontrollera andra anslutna källor';
	@override String get otherSources => 'Tillgänglig på andra anslutna källor';
	@override String get playOnce => 'Spela en gång';
	@override String get includeLibrary => 'Inkludera detta bibliotek';
	@override String get noOthers => 'Inga kopior hittades på andra anslutna källor.';
	@override String get chooseOne => 'Välj minst ett bibliotek för att fortsätta.';
}

// Path: subtitlingStyling
class _Translations$subtitlingStyling$sv extends Translations$subtitlingStyling$en {
	_Translations$subtitlingStyling$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get text => 'Text';
	@override String get border => 'Kantlinje';
	@override String get background => 'Bakgrund';
	@override String get fontSize => 'Teckenstorlek';
	@override String get textColor => 'Textfärg';
	@override String get borderSize => 'Kantstorlek';
	@override String get borderColor => 'Kantfärg';
	@override String get backgroundOpacity => 'Bakgrundens opacitet';
	@override String get backgroundColor => 'Bakgrundsfärg';
	@override String get position => 'Position';
	@override String get assOverride => 'ASS-åsidosättning';
	@override String get overrideScale => 'Skala';
	@override String get overrideForce => 'Tvinga';
	@override String get overrideStrip => 'Ta bort formatering';
	@override String get positionTop => 'Överst';
	@override String get positionBottom => 'Nederst';
	@override String get useMargins => 'Använd marginaler';
	@override String get useMarginsDescription => 'Tillåt textundertexter i utrymmet utanför videon. Formaterade undertexter kan behålla sin ursprungliga placering.';
	@override String get anchorToScreen => 'Förankra vid skärmen';
	@override String get anchorToScreenDescription => 'Visa textbaserade undertexter i de svarta fälten under bredbildsvideon';
	@override String get bold => 'Fet';
	@override String get italic => 'Kursiv';
	@override String get renderResolution => 'Renderingsupplösning';
	@override String get renderResolutionScreen => 'Skärmupplösning';
	@override String get renderResolutionVideo => 'Videoupplösning';
}

// Path: mpvConfig
class _Translations$mpvConfig$sv extends Translations$mpvConfig$en {
	_Translations$mpvConfig$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'mpv.conf';
	@override String get description => 'Avancerade inställningar för videospelaren';
	@override String get presets => 'Förval';
	@override String get noPresets => 'Inga sparade förval';
	@override String get saveAsPreset => 'Spara som förval...';
	@override String get presetName => 'Förvalnamn';
	@override String get presetNameHint => 'Ange ett namn för detta förval';
	@override String get loadPreset => 'Ladda';
	@override String get deletePreset => 'Ta bort';
	@override String get presetSaved => 'Förval sparat';
	@override String get presetLoaded => 'Förval laddat';
	@override String get presetDeleted => 'Förval borttaget';
	@override String get confirmDeletePreset => 'Är du säker på att du vill ta bort detta förval?';
	@override String get configPlaceholder => 'gpu-api=vulkan\nhwdec=auto\n# comment';
	@override String get lineHint => 'option=value';
	@override String get addLine => 'Lägg till rad';
	@override String get removeLine => 'Ta bort rad';
	@override String get embeddedVoHint => 'vo, gpu-context och gpu-api ignoreras på Linux: inbäddad video renderas alltid via vo=libmpv på videoplanet, och gpu-next (som compute-shaders som ArtCNN behöver) kan inte köras inbäddat.';
}

// Path: dialog
class _Translations$dialog$sv extends Translations$dialog$en {
	_Translations$dialog$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get confirmAction => 'Bekräfta åtgärd';
}

// Path: profiles
class _Translations$profiles$sv extends Translations$profiles$en {
	_Translations$profiles$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get addLurokaProfile => 'Lägg till Luroka-profil';
	@override String get switchingProfile => 'Byter profil…';
	@override String get deleteThisProfileTitle => 'Ta bort denna profil?';
	@override String deleteThisProfileMessage({required Object displayName}) => 'Ta bort ${displayName}. Anslutningar påverkas inte.';
	@override String get active => 'Aktiv';
	@override String get manage => 'Hantera';
	@override String get delete => 'Ta bort';
	@override String get signOut => 'Logga ut';
	@override String get signOutPlexTitle => 'Logga ut från Plex?';
	@override String signOutPlexMessage({required Object displayName}) => 'Ta bort ${displayName} och alla Plex Home-användare? Du kan logga in igen när som helst.';
	@override String get signOutPlexDeleteDownloads => 'Radera även nedladdningar';
	@override String get signOutPlexDeleteDownloadsDescription => 'Annars stannar de på den här enheten och kommer tillbaka när du loggar in på det här kontot igen.';
	@override String get signedOutPlex => 'Utloggad från Plex.';
	@override String get signOutFailed => 'Utloggningen misslyckades.';
	@override String get sectionTitle => 'Profiler';
	@override String get summarySingle => 'Lägg till profiler för att kombinera hanterade användare och lokala identiteter';
	@override String summaryMultipleWithActive({required Object count, required Object activeName}) => '${count} profiler · aktiv: ${activeName}';
	@override String summaryMultiple({required Object count}) => '${count} profiler';
	@override String get removeConnectionTitle => 'Ta bort anslutningen?';
	@override String removeConnectionMessage({required Object connectionLabel, required Object displayName}) => 'Ta bort åtkomsten till ${connectionLabel} för ${displayName}. Andra profiler behåller den.';
	@override String get deleteProfileTitle => 'Ta bort profilen?';
	@override String deleteProfileMessage({required Object displayName}) => 'Ta bort ${displayName} och profilens anslutningar. Servrarna förblir tillgängliga.';
	@override String get profileNameLabel => 'Profilnamn';
	@override String get pinProtectionLabel => 'PIN-skydd';
	@override String get pinManagedByPlex => 'PIN hanteras av Plex. Redigera på plex.tv.';
	@override String get noPinSetEditOnPlex => 'Ingen PIN angiven. För att kräva en, redigera Hem-användaren på plex.tv.';
	@override String get setPin => 'Ange PIN';
	@override String get setPinTitle => 'Ange PIN';
	@override String get confirmPinTitle => 'Bekräfta PIN';
	@override String get pinSet => 'PIN angiven';
	@override String get changePin => 'Ändra';
	@override String get removePin => 'Ta bort';
	@override String get connectionsLabel => 'Anslutningar';
	@override String get add => 'Lägg till';
	@override String get deleteProfileButton => 'Ta bort profil';
	@override String get noConnectionsHint => 'Inga anslutningar — lägg till en för att använda den här profilen.';
	@override String get noConnections => 'Inga anslutningar';
	@override String get plexHomeAccount => 'Plex Home-konto';
	@override String plexAccountChip({required Object account}) => 'Plex-konto: ${account}';
	@override String plexAccountUserChip({required Object user, required Object account}) => '${user} via ${account}';
	@override String get connectionDefault => 'Standard';
	@override String connectionAs({required Object displayName}) => 'som ${displayName}';
	@override String get makeDefault => 'Gör till standard';
	@override String get removeConnection => 'Ta bort';
	@override String get profileRenamed => 'Profilen har bytt namn.';
	@override String borrowAddTo({required Object displayName}) => 'Lägg till i ${displayName}';
	@override String get borrowExplain => 'Låna en annan profils anslutning. PIN-skyddade profiler kräver en PIN.';
	@override String get borrowEmpty => 'Inget att låna ännu.';
	@override String get borrowEmptySubtitle => 'Anslut Plex, Jellyfin eller Emby till en annan profil först.';
	@override String get borrowLoadFailed => 'Det gick inte att läsa in tillgängliga anslutningar. Försök igen.';
	@override String borrowFromProfile({required Object displayName}) => 'Från ${displayName}';
	@override String get borrowConnectionBorrowed => 'Anslutning lånad.';
	@override String get borrowFailed => 'Kunde inte låna anslutningen.';
	@override String get incorrectPin => 'Fel PIN.';
	@override String get incorrectPinTryAgain => 'Fel PIN. Försök igen.';
	@override String get sourceProfileMissingParentAccount => 'Källprofilen saknar sitt överordnade konto.';
	@override String get failedToLoadHomeUsers => 'Kunde inte läsa in dina Plex Home-användare. Kontrollera anslutningen och försök igen.';
	@override String get failedToVerifyPin => 'Kunde inte verifiera PIN.';
	@override String get newProfile => 'Ny profil';
	@override String get profileNameHint => 't.ex. Gäster, Barn eller Familjerum';
	@override String get pinProtectionOptional => 'PIN-skydd (valfritt)';
	@override String get pinExplain => 'En fyrsiffrig PIN-kod krävs för att byta profil.';
	@override String get continueButton => 'Fortsätt';
	@override String get pinsDontMatch => 'PIN-koderna stämmer inte överens';
	@override String get tokenIdentityMismatch => 'Plex-profiltoken kopplades till en oväntad server';
}

// Path: connections
class _Translations$connections$sv extends Translations$connections$en {
	_Translations$connections$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get sectionTitle => 'Anslutningar';
	@override String get addConnection => 'Lägg till anslutning';
	@override String get addConnectionSubtitleNoProfile => 'Logga in med Plex eller anslut en Jellyfin- eller Emby-server';
	@override String addConnectionSubtitleScoped({required Object displayName}) => 'Lägg till för ${displayName}: Plex, Jellyfin, Emby eller en annan profilanslutning';
	@override String sessionExpiredOne({required Object name}) => 'Sessionen har gått ut för ${name}';
	@override String sessionExpiredMany({required Object count}) => 'Sessionen har gått ut för ${count} servrar';
	@override String accessDeniedOne({required Object name}) => '${name} nekade åtkomst för det här kontot';
	@override String accessDeniedMany({required Object count}) => '${count} servrar nekade åtkomst för det här kontot';
	@override String get signInAgain => 'Logga in igen';
	@override String editMediaBrowserTitle({required Object product}) => 'Redigera ${product}-anslutning';
	@override String editMediaBrowserIntro({required Object serverName}) => 'Lägg till eller ta bort URL:er för ${serverName}. Luroka använder den nåbara URL:en med lägst latens.';
}

// Path: serversAccounts
class _Translations$serversAccounts$sv extends Translations$serversAccounts$en {
	_Translations$serversAccounts$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Servrar och konton';
	@override String get subtitle => 'Inloggningsstatus för dina Plex-, Jellyfin- och Emby-servrar';
	@override String get online => 'Online';
	@override String get offline => 'Offline';
	@override String get unknown => 'Inte inloggad här';
	@override String get usedByNone => 'Används inte av någon profil';
	@override String usedByOne({required Object name}) => 'Används av ${name}';
	@override String usedByMany({required Object name, required Object count}) => 'Används av ${name} och ${count} mer';
	@override String serversOnline({required Object online, required Object total}) => '${online} av ${total}-servrar online';
	@override String get noServers => 'Inget anslutet ännu. Lägg till ditt Plex-konto eller en Jellyfin- eller Emby-server.';
	@override String get editUrls => 'Redigera serverwebbadresser';
}

// Path: accountPreferences
class _Translations$accountPreferences$sv extends Translations$accountPreferences$en {
	_Translations$accountPreferences$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get sectionTitle => 'Kontoinställningar';
	@override String hubSubtitleSingle({required Object account}) => 'Ljud-, undertext- och biblioteksalternativ sparade på ${account}';
	@override String hubSubtitleMultiple({required Object count}) => 'Ljud-, undertext- och biblioteksalternativ sparade på ${count} konton';
	@override String get pickAccount => 'Varje konto lagrar sina egna inställningar. Välj det du vill redigera.';
	@override String get storedOnAccount => 'Dessa alternativ sparas på själva kontot, så alla appar som är inloggade på det använder dem — inklusive Luroka på dina andra enheter.';
	@override String get noAccounts => 'Inga konton att konfigurera';
	@override String get noAccountsHint => 'Logga in på Plex, eller anslut en Jellyfin- eller Emby-server, så visas de inställningar som lagras på det kontot här.';
	@override String get unavailable => 'Det går inte att nå detta konto';
	@override String get loadFailed => 'Det gick inte att läsa in dessa inställningar';
	@override String get noPreference => 'Ingen preferens';
	@override String get notSet => 'Inte angiven';
	@override late final _Translations$accountPreferences$groups$sv groups = _Translations$accountPreferences$groups$sv._(_root);
	@override String get preferredAudioLanguage => 'Föredraget ljudspråk';
	@override String get autoSelectAudio => 'Välj ljud efter språk';
	@override String get autoSelectAudioDescription => 'Av behåller det ljudspår som filen markerar som standard.';
	@override String get preferredSubtitleLanguage => 'Föredraget undertextspråk';
	@override String get subtitleMode => 'Aktivera undertexter';
	@override late final _Translations$accountPreferences$subtitleModes$sv subtitleModes = _Translations$accountPreferences$subtitleModes$sv._(_root);
	@override String get subtitleAccessibility => 'SDH-undertexter';
	@override late final _Translations$accountPreferences$subtitleAccessibilityOptions$sv subtitleAccessibilityOptions = _Translations$accountPreferences$subtitleAccessibilityOptions$sv._(_root);
	@override String get forcedSubtitles => 'Forcerade undertexter';
	@override late final _Translations$accountPreferences$forcedSubtitleOptions$sv forcedSubtitleOptions = _Translations$accountPreferences$forcedSubtitleOptions$sv._(_root);
	@override String get displayMissingEpisodes => 'Visa saknade avsnitt';
	@override String get displayMissingEpisodesDescription => 'Lista avsnitt som servern känner till men som saknar fil.';
	@override String get hidePlayedInLatest => 'Dölj sedda objekt i Senaste';
	@override String get hidePlayedInLatestDescription => 'Lämna objekt du redan har sett utanför serverns Senaste-rader.';
	@override String get displayCollectionsView => 'Visa vyn Samlingar';
	@override String get displayCollectionsViewDescription => 'Visa serverns Samlingar-vy tillsammans med dina bibliotek.';
	@override String get rewatchingInNextUp => 'Behåll omtittade serier i Nästa';
	@override String get rewatchingInNextUpDescription => 'När du har sett klart en serie och börjar om följer Nästa med i omtittningen i stället för att släppa serien.';
	@override String get watchedIndicator => 'Seddmarkeringar';
	@override late final _Translations$accountPreferences$watchedIndicatorOptions$sv watchedIndicatorOptions = _Translations$accountPreferences$watchedIndicatorOptions$sv._(_root);
	@override String get mediaReviewsVisibility => 'Betyg och recensioner';
	@override late final _Translations$accountPreferences$mediaReviewsOptions$sv mediaReviewsOptions = _Translations$accountPreferences$mediaReviewsOptions$sv._(_root);
}

// Path: discover
class _Translations$discover$sv extends Translations$discover$en {
	_Translations$discover$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Upptäck';
	@override String get noContentAvailable => 'Inget innehåll tillgängligt';
	@override String get addMediaToLibraries => 'Lägg till medieinnehåll i dina bibliotek';
	@override String get continueWatching => 'Fortsätt titta';
	@override String continueWatchingIn({required Object library}) => 'Fortsätt titta i ${library}';
	@override String get nextUp => 'Nästa';
	@override String nextUpIn({required Object library}) => 'Nästa i ${library}';
	@override String get recentlyAdded => 'Nyligen tillagda';
	@override String recentlyAddedIn({required Object library}) => 'Nyligen tillagda i ${library}';
	@override String latestAlbumsIn({required Object library}) => 'Senaste albumen i ${library}';
	@override String recentlyPlayedIn({required Object library}) => 'Nyligen spelade i ${library}';
	@override String mostPlayedIn({required Object library}) => 'Mest spelade i ${library}';
	@override String playEpisode({required Object season, required Object episode}) => 'S${season}E${episode}';
	@override String get overview => 'Översikt';
	@override String get cast => 'Rollbesättning';
	@override String get extras => 'Trailrar och extramaterial';
	@override String get studio => 'Studio';
	@override String get rating => 'Betyg';
	@override String get director => 'Regissör';
	@override String get directors => 'Regissörer';
	@override String get movie => 'Film';
	@override String get tvShow => 'TV-serie';
	@override String minutesLeft({required Object minutes}) => '${minutes} min kvar';
	@override String get moreLikeThis => 'Mer liknande innehåll';
	@override String titleCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n,
		one: '${n} titel',
		other: '${n} titlar',
	);
	@override late final _Translations$discover$person$sv person = _Translations$discover$person$sv._(_root);
}

// Path: errors
class _Translations$errors$sv extends Translations$errors$en {
	_Translations$errors$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String searchFailed({required Object error}) => 'Sökningen misslyckades: ${error}';
	@override String get searchUnavailable => 'Sökningen kunde inte nå någon medieserver.';
	@override String connectionTimeout({required Object context}) => 'Anslutningen tog för lång tid när ${context} lästes in';
	@override String get connectionFailed => 'Det gick inte att ansluta till medieservern';
	@override String unableToLoad({required Object context}) => 'Det gick inte att läsa in ${context}. Försök igen.';
	@override String get noClientAvailable => 'Ingen klient är tillgänglig';
	@override String get pleaseEnterToken => 'Ange en token';
	@override String get invalidToken => 'Ogiltig token';
	@override String failedToVerifyToken({required Object error}) => 'Det gick inte att verifiera token: ${error}';
	@override String failedToSwitchProfile({required Object displayName}) => 'Det gick inte att byta till ${displayName}';
	@override String failedToDeleteProfile({required Object displayName}) => 'Det gick inte att ta bort ${displayName}';
	@override String get failedToRate => 'Det gick inte att uppdatera betyget';
	@override String get reasonTimedOut => 'anslutningen tog för lång tid';
	@override String get reasonUnreachable => 'det gick inte att nå servern';
	@override String get reasonRefused => 'servern nekade begäran';
	@override String get reasonNotFound => 'objektet finns inte längre på servern';
	@override String get reasonServerError => 'servern rapporterade ett fel';
	@override String get reasonCancelled => 'begäran avbröts';
	@override String get reasonUnexpected => 'ett oväntat fel uppstod';
}

// Path: libraries
class _Translations$libraries$sv extends Translations$libraries$en {
	_Translations$libraries$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bibliotek';
	@override String get fallbackTitle => 'Bibliotek';
	@override String get scanLibraryFiles => 'Skanna biblioteksfiler';
	@override String get scanLibrary => 'Skanna bibliotek';
	@override String get analyze => 'Analysera';
	@override String get analyzeLibrary => 'Analysera bibliotek';
	@override String get refreshMetadata => 'Uppdatera metadata';
	@override String get emptyTrash => 'Töm papperskorg';
	@override String emptyingTrash({required Object title}) => 'Tömmer papperskorgen för "${title}"...';
	@override String trashEmptied({required Object title}) => 'Papperskorgen har tömts för "${title}"';
	@override String failedToEmptyTrash({required Object error}) => 'Det gick inte att tömma papperskorgen: ${error}';
	@override String analyzing({required Object title}) => 'Analyserar "${title}"...';
	@override String analysisStarted({required Object title}) => 'Analysen har startat för "${title}"';
	@override String failedToAnalyze({required Object error}) => 'Det gick inte att analysera biblioteket: ${error}';
	@override String get noLibrariesFound => 'Inga bibliotek hittades';
	@override String get allLibrariesHidden => 'Alla bibliotek är dolda';
	@override String hiddenLibrariesCount({required Object count}) => 'Dolda bibliotek (${count})';
	@override String get thisLibraryIsEmpty => 'Detta bibliotek är tomt';
	@override String get noItemsMatchFilters => 'Inga objekt matchar de aktiva filtren';
	@override String get resetFilters => 'Återställ filter';
	@override String get all => 'Alla';
	@override String get clearAll => 'Rensa alla';
	@override String scanLibraryConfirm({required Object title}) => 'Är du säker på att du vill skanna "${title}"?';
	@override String analyzeLibraryConfirm({required Object title}) => 'Är du säker på att du vill analysera "${title}"?';
	@override String refreshMetadataConfirm({required Object title}) => 'Är du säker på att du vill uppdatera metadata för "${title}"?';
	@override String emptyTrashConfirm({required Object title}) => 'Är du säker på att du vill tömma papperskorgen för "${title}"?';
	@override String get manageLibraries => 'Hantera bibliotek';
	@override String get sort => 'Sortera';
	@override String get sortBy => 'Sortera efter';
	@override String get filters => 'Filter';
	@override String get confirmActionMessage => 'Är du säker på att du vill utföra denna åtgärd?';
	@override String get showLibrary => 'Visa bibliotek';
	@override String get hideLibrary => 'Dölj bibliotek';
	@override String get libraryOptions => 'Biblioteksalternativ';
	@override String get content => 'bibliotekets innehåll';
	@override String get selectLibrary => 'Välj bibliotek';
	@override String filtersWithCount({required Object count}) => 'Filter (${count})';
	@override String get noRecommendations => 'Inga rekommendationer tillgängliga';
	@override String get noCollections => 'Inga samlingar i det här biblioteket';
	@override String get noFoldersFound => 'Inga mappar hittades';
	@override String get folders => 'mappar';
	@override late final _Translations$libraries$tabs$sv tabs = _Translations$libraries$tabs$sv._(_root);
	@override late final _Translations$libraries$groupings$sv groupings = _Translations$libraries$groupings$sv._(_root);
	@override late final _Translations$libraries$filterCategories$sv filterCategories = _Translations$libraries$filterCategories$sv._(_root);
	@override late final _Translations$libraries$sortLabels$sv sortLabels = _Translations$libraries$sortLabels$sv._(_root);
	@override late final _Translations$libraries$advancedFilters$sv advancedFilters = _Translations$libraries$advancedFilters$sv._(_root);
}

// Path: about
class _Translations$about$sv extends Translations$about$en {
	_Translations$about$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Om';
	@override String get openSourceLicenses => 'Licenser för öppen källkod';
	@override String versionLabel({required Object version}) => 'Version ${version}';
	@override String get appDescription => 'En vacker Plex-, Jellyfin- och Emby-klient för Flutter';
	@override String get customSource => 'Källkod';
	@override String get basedOnLuroka => 'Byggd på Plezy kodbas';
	@override String get viewLicensesDescription => 'Visa licenser för tredjepartsbibliotek';
	@override String get appSection => 'App';
	@override String get communitySection => 'gemenskapen';
	@override String get creditsSection => 'Krediter';
	@override String get legalSection => 'Lagligt';
	@override String versionMeta({required Object version, required Object build, required Object platform}) => 'v${version} (${build}) · ${platform}';
	@override String versionMetaNoBuild({required Object version, required Object platform}) => 'v${version} · ${platform}';
	@override String get versionUnavailable => 'Version inte tillgänglig';
	@override String get versionDetails => 'Versionsdetaljer';
	@override String versionDetailsTitle({required Object version, required Object build}) => 'Luroka ${version} (${build})';
	@override String platformLine({required Object platform}) => 'Plattform: ${platform}';
	@override String deviceLine({required Object model}) => 'Enhet: ${model}';
	@override String packageLine({required Object package}) => 'Paket: ${package}';
	@override String localeLine({required Object locale}) => 'Språk: ${locale}';
	@override String get copyDetails => 'Kopiera detaljer';
	@override String get detailsCopied => 'Appinformationen har kopierats';
	@override String get detailsCopyFailed => 'Det gick inte att kopiera appinformation';
	@override String get checkForUpdatesDescription => 'Kontrollera GitHub för en nyare version';
	@override String get checkingForUpdates => 'Söker efter uppdateringar...';
	@override String get whatsNew => 'Vad är nytt';
	@override String get releaseNotesUnavailable => 'Inga releasenotes finns tillgängliga.';
	@override String get sourceCodeDescription => 'Luroka på GitHub';
	@override String get reportIssue => 'Rapportera ett problem';
	@override String get reportIssueDescription => 'Berätta vad som gick fel';
	@override String get documentation => 'Dokumentation';
	@override String get documentationDescription => 'Installation, funktioner och bygganteckningar';
	@override String get upstreamProjectDescription => 'Open-source-projekt av edde746 och bidragsgivare';
	@override String get upstreamWebsite => 'Uppströms webbplats';
	@override String get attribution => 'Data & attribution';
	@override String get attributionDescription => 'Metadata, betyg och varumärken';
	@override String get attributionBody => 'Denna produkt använder TMDB API men är inte godkänd eller certifierad av TMDB. Popularitetslistor, metadata och IMDb-betyg tillhandahålls av Cinemeta. Poäng behåller sina källetiketter.';
	@override String get trademarkNotices => 'Plex, Jellyfin, Emby, Trakt, Simkl, MyAnimeList, AniList, Trakt, Simkl, MyAnimeList, AniList, Trakt, och relaterade varumärken tillhör deras varumärken, Z07XKEEPQ0 och relaterade varumärken ägare. Luroka är inte ansluten till eller godkänd av dem.';
	@override String get privacyPolicy => 'Integritetspolicy';
	@override String get privacyPolicyDescription => 'Hur din data hanteras';
	@override String get gplLicense => 'GNU GPL-3.0-licens';
	@override String get gplLicenseDescription => 'Luroka är fri programvara';
	@override String get linkOpenFailed => 'Det gick inte att öppna den här länken';
	@override String get opensInBrowser => 'Öppnas i din webbläsare';
	@override String get footer => 'Luroka är fri programvara under GPL-3.0.';
	@override String copyright({required Object year}) => '© ${year} Luroka bidragsgivare';
}

// Path: serverSelection
class _Translations$serverSelection$sv extends Translations$serverSelection$en {
	_Translations$serverSelection$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String noServersFoundForAccount({required Object username, required Object email}) => 'Inga servrar hittades för ${username} (${email})';
	@override String failedToLoadServers({required Object error}) => 'Det gick inte att läsa in servrar: ${error}';
	@override String get noValidServers => 'Inga användbara servrar hittades på det här kontot';
}

// Path: hubDetail
class _Translations$hubDetail$sv extends Translations$hubDetail$en {
	_Translations$hubDetail$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Titel';
	@override String get releaseYear => 'Utgivningsår';
	@override String get dateAdded => 'Tilläggsdatum';
	@override String get rating => 'Betyg';
	@override String get noItemsFound => 'Inga objekt hittades';
}

// Path: logs
class _Translations$logs$sv extends Translations$logs$en {
	_Translations$logs$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get clearLogs => 'Rensa loggar';
	@override String get copyLogs => 'Kopiera loggar';
	@override String get uploadLogs => 'Ladda upp loggar';
}

// Path: startup
class _Translations$startup$sv extends Translations$startup$en {
	_Translations$startup$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get failedTitle => 'Luroka kunde inte starta';
	@override String get failedBody => 'Något gick fel under starten. Detaljerna nedan visar vad som misslyckades.';
	@override String get failedBodyRepairable => 'Lurokas sparade inställningsfil är skadad och måste byggas om innan Luroka kan starta. Att försöka igen hjälper inte — välj Reparera lagring.';
	@override String get phaseLabel => 'Steg';
	@override String get showDetails => 'Visa detaljer';
	@override String get hideDetails => 'Dölj detaljer';
	@override String get copyDetails => 'Kopiera detaljer';
	@override String get detailsCopied => 'Detaljer kopierade till urklipp';
	@override String get uploadDetails => 'Ladda upp detaljer';
	@override String get repairStorage => 'Reparera lagring';
	@override String get repairTitle => 'Reparera lagrade data?';
	@override String get repairBodyCommon => 'Lurokas inställningsfil är skadad och kan inte läsas. Reparationen återställer alla inställningar till standard.';
	@override String get repairBodyOneCredential => 'En sparad inloggning är skadad och kan inte läsas. Reparationen tar bort endast den; dina andra inställningar lämnas orörda.';
	@override String get repairBodySignInsKept => 'Dina servrar och profiler bör förbli inloggade.';
	@override String get repairBodySignInsLost => 'Nyckeln som skyddar dina sparade inloggningar kan inte återställas från den här filen, så du måste logga in på varje server och profil igen. Inget på din medieserver påverkas.';
	@override String get repairBodySessionsUncertain => 'Trackers (MAL, AniList, Simkl, Trakt) och Seerr lagras separat och kan överleva eller inte. Luroka berättar exakt vad som behållits.';
	@override String get repairConfirm => 'Reparera';
	@override String get repairSucceeded => 'Lagringen reparerad';
	@override String get repairNeedsRestart => 'Lagringen reparerad — omstart krävs';
	@override String get restartRequiredBody => 'Dina data reparerades, men Luroka måste starta om innan de kan användas. Stäng Luroka och öppna det igen.';
	@override String get quitLuroka => 'Avsluta Luroka';
	@override String get repairFailed => 'Reparationen misslyckades';
	@override String get repairKeptSignIns => 'Dina servrar och profiler är fortfarande inloggade.';
	@override String get repairLostSignIns => 'Nyckeln som skyddar dina sparade inloggningar kunde inte återställas. Du måste logga in på varje server och profil igen.';
	@override String get repairLostSessions => 'Minst en tracker- eller Seerr-anslutning förlorades och måste återanslutas.';
	@override String get backupTitle => 'En kopia av den skadade filen sparades';
	@override String get backupWarning => 'Den innehåller dina inloggningsuppgifter. Ladda inte upp eller dela den.';
	@override String get deleteBackup => 'Ta bort kopia';
	@override String get backupDeleted => 'Kopian borttagen.';
	@override String get previousFailureTitle => 'Luroka kunde inte starta förra gången';
}

// Path: licenses
class _Translations$licenses$sv extends Translations$licenses$en {
	_Translations$licenses$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get relatedPackages => 'Relaterade paket';
	@override String get license => 'Licens';
	@override String licenseNumber({required Object number}) => 'Licens ${number}';
	@override String licensesCount({required Object count}) => '${count} licenser';
	@override String get searchHint => 'Sök paket';
	@override String noResults({required Object query}) => 'Inga paket matchar "${query}"';
	@override String get clearSearch => 'Rensa sökning';
}

// Path: navigation
class _Translations$navigation$sv extends Translations$navigation$en {
	_Translations$navigation$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get libraries => 'Bibliotek';
	@override String get downloads => 'Nedladdningar';
	@override String get liveTv => 'Live-TV';
	@override String get explore => 'Utforska';
}

// Path: explore
class _Translations$explore$sv extends Translations$explore$en {
	_Translations$explore$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Utforska';
	@override String get selectSource => 'Välj källa';
	@override late final _Translations$explore$rows$sv rows = _Translations$explore$rows$sv._(_root);
	@override late final _Translations$explore$status$sv status = _Translations$explore$status$sv._(_root);
	@override String episodeCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n,
		one: '${n} avsnitt',
		other: '${n} avsnitt',
	);
	@override String get cast => 'Rollbesättning';
	@override String get characters => 'Karaktärer';
	@override String get addToWatchlist => 'Lägg till i bevakningslista';
	@override String get removeFromWatchlist => 'Ta bort från bevakningslista';
	@override String get addedToWatchlist => 'Tillagd i bevakningslistan';
	@override String get removedFromWatchlist => 'Borttagen från bevakningslistan';
	@override String get watchlistUpdateFailed => 'Det gick inte att uppdatera bevakningslistan';
	@override String get watchlistNoMatch => 'Det gick inte att matcha det här objektet mot en bevakningslista';
	@override String get notInLibrary => 'Finns inte i ditt bibliotek';
	@override String get inTheseLibraries => 'I dessa bibliotek';
	@override String get checkingLibrary => 'Kontrollerar ditt bibliotek...';
	@override String libraryCheckFailed({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n,
		one: 'Kunde inte kontrollera ${n} server',
		other: 'Kunde inte kontrollera ${n} servrar',
	);
	@override String get emptyTitle => 'Inget här ännu';
	@override String emptyMessage({required Object source}) => 'Rader från ${source} visas här när de har innehåll.';
	@override String searchHint({required Object source}) => 'Sök i ${source}';
	@override String searchEmpty({required Object query}) => 'Inga resultat för "${query}"';
	@override String searchPrompt({required Object source}) => 'Sök efter filmer och serier på ${source}.';
	@override String get searchFailed => 'Sökningen misslyckades. Kontrollera din anslutning och försök igen.';
	@override late final _Translations$explore$badge$sv badge = _Translations$explore$badge$sv._(_root);
	@override late final _Translations$explore$stats$sv stats = _Translations$explore$stats$sv._(_root);
	@override late final _Translations$explore$season$sv season = _Translations$explore$season$sv._(_root);
	@override late final _Translations$explore$format$sv format = _Translations$explore$format$sv._(_root);
	@override late final _Translations$explore$sourceMaterial$sv sourceMaterial = _Translations$explore$sourceMaterial$sv._(_root);
	@override late final _Translations$explore$creditRole$sv creditRole = _Translations$explore$creditRole$sv._(_root);
	@override late final _Translations$explore$relation$sv relation = _Translations$explore$relation$sv._(_root);
	@override String broadcast({required Object day, required Object time}) => 'Sänds ${day} kl. ${time}';
	@override String broadcastWithZone({required Object day, required Object time, required Object timezone}) => 'Sänds ${day} kl. ${time} ${timezone}';
	@override late final _Translations$explore$detail$sv detail = _Translations$explore$detail$sv._(_root);
	@override String totalResults({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n,
		one: '${n} resultat',
		other: '${n} resultat',
	);
}

// Path: liveTv
class _Translations$liveTv$sv extends Translations$liveTv$en {
	_Translations$liveTv$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Live-TV';
	@override String get guide => 'Programguide';
	@override String get noChannels => 'Inga kanaler tillgängliga';
	@override String get noDvr => 'Ingen DVR har konfigurerats på någon server';
	@override String get serverUnavailable => 'Live-TV-servern är inte tillgänglig.';
	@override String get serverNotConnected => 'Live-TV-servern är inte ansluten.';
	@override String get noPrograms => 'Ingen programinformation är tillgänglig';
	@override String get liveStreamFailed => 'Liveströmmen kunde inte startas';
	@override String get unknownProgram => 'Okänt program';
	@override String get unknownHub => 'Okänt';
	@override String get unknownError => 'Okänt fel';
	@override String channelNumber({required Object number}) => 'Kanal ${number}';
	@override String get unknownChannel => 'Okänd kanal';
	@override String get live => 'LIVE';
	@override String get reloadGuide => 'Ladda om programguide';
	@override String get searchGuide => 'Sök i programguiden';
	@override String get searchHint => 'Sök kanaler och program';
	@override String searchNoResults({required Object query}) => 'Inga träffar för "${query}"';
	@override String get channelsSection => 'Kanaler';
	@override String get programsSection => 'Program';
	@override String get now => 'Nu';
	@override String get today => 'Idag';
	@override String get tomorrow => 'I morgon';
	@override String get midnight => 'Midnatt';
	@override String get overnight => 'Natt';
	@override String get morning => 'Morgon';
	@override String get daytime => 'Dagtid';
	@override String get evening => 'Kväll';
	@override String get lateNight => 'Sen kväll';
	@override String get whatsOn => 'På TV nu';
	@override String get watchChannel => 'Titta på kanal';
	@override String get favorites => 'Favoriter';
	@override String get reorderFavorites => 'Ordna om favoriter';
	@override String get noFavoriteChannels => 'Inga favoritkanaler';
	@override String get noFavoriteChannelsHint => 'Visa alla kanaler och tryck sedan länge på en kanal för att lägga till den som favorit.';
	@override String get showAllChannels => 'Visa alla kanaler';
	@override String get favoritesLoadFailed => 'Det gick inte att läsa in favoriter. Kontrollera anslutningen och försök igen.';
	@override String get favoritesUpdateFailed => 'Det gick inte att uppdatera favoriterna. Kontrollera anslutningen och försök igen.';
	@override String get joinSession => 'Gå med i pågående session';
	@override String watchFromStart({required Object minutes}) => 'Titta från början (${minutes} min sedan)';
	@override String get watchLive => 'Titta live';
	@override String get goToLive => 'Gå till live';
	@override String get record => 'Spela in';
	@override String get recordEpisode => 'Spela in avsnitt';
	@override String get recordSeries => 'Spela in serie';
	@override String get recordOptions => 'Inspelningsalternativ';
	@override String get saveTo => 'Spara till';
	@override String get recordings => 'Inspelningar';
	@override String get scheduledRecordings => 'Schemalagda';
	@override String get recordingRules => 'Inspelningsregler';
	@override String get noScheduledRecordings => 'Inga schemalagda inspelningar';
	@override String get manageRecording => 'Hantera inspelning';
	@override String get cancelRecording => 'Avbryt inspelning';
	@override String get cancelRecordingTitle => 'Avbryt denna inspelning?';
	@override String cancelRecordingMessage({required Object title}) => '${title} kommer inte längre att spelas in.';
	@override String get deleteRule => 'Ta bort regel';
	@override String get deleteRuleTitle => 'Ta bort inspelningsregel?';
	@override String deleteRuleMessage({required Object title}) => 'Kommande avsnitt av ${title} kommer inte att spelas in.';
	@override String get recordingScheduled => 'Inspelning schemalagd';
	@override String get alreadyScheduled => 'Detta program är redan schemalagt';
	@override String get dvrAdminRequired => 'DVR-inställningar kräver ett administratörskonto';
	@override String get recordingFailed => 'Det gick inte att schemalägga inspelning';
	@override String get recordingTargetMissing => 'Det gick inte att hitta inspelningsbibliotek';
	@override String get recordNotAvailable => 'Inspelning är inte tillgänglig för detta program';
	@override String get recordingCancelled => 'Inspelningen har avbrutits';
	@override String get recordingRuleDeleted => 'Inspelningsregeln har tagits bort';
	@override String get processRecordingRules => 'Utvärdera regler igen';
	@override String get recordingInProgress => 'Spelar in nu';
	@override String recordingsCount({required Object count}) => '${count} schemalagda';
	@override String get editRule => 'Redigera regel';
	@override String get editRuleAction => 'Redigera';
	@override String get recordingRuleUpdated => 'Inspelningsregel uppdaterad';
	@override String get guideReloadRequested => 'Uppdatering av programguiden har begärts';
	@override String get guideReloadFailed => 'Programguiden kunde inte uppdateras';
	@override String get rulesProcessRequested => 'Ny regelutvärdering har begärts';
	@override String get rulesProcessFailed => 'Inspelningsreglerna kunde inte köras om';
	@override String get recordShow => 'Spela in program';
	@override late final _Translations$liveTv$recordSettings$sv recordSettings = _Translations$liveTv$recordSettings$sv._(_root);
	@override String startingInMinutes({required Object minutes}) => 'Börjar om ${minutes} min';
	@override String dayAtTime({required Object day, required Object time}) => '${day} kl. ${time}';
	@override String invalidPlaybackData({required Object product}) => '${product} returnerade ogiltiga uppspelningsdata för Live-TV';
	@override String get failedToStartChannel => 'Kunde inte starta livekanalen';
	@override String get failedToBuildStreamUrl => 'Kunde inte skapa strömmens URL';
	@override String playbackStartFailed({required Object reason}) => 'Det gick inte att starta kanalen: ${reason}';
	@override String channelSwitchFailed({required Object reason}) => 'Det gick inte att byta kanal: ${reason}';
}

// Path: collections
class _Translations$collections$sv extends Translations$collections$en {
	_Translations$collections$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Samlingar';
	@override String get collection => 'Samling';
	@override String get empty => 'Samlingen är tom';
	@override String get deleteCollection => 'Ta bort samling';
	@override String deleteConfirm({required Object title}) => 'Ta bort "${title}"? Detta kan inte ångras.';
	@override String get deleted => 'Samling borttagen';
	@override String get deleteFailed => 'Det gick inte att ta bort samlingen';
	@override String deleteFailedWithError({required Object error}) => 'Det gick inte att ta bort samlingen: ${error}';
	@override String get selectCollection => 'Välj samling';
	@override String get collectionName => 'Samlingsnamn';
	@override String get enterCollectionName => 'Ange samlingsnamn';
	@override String get addedToCollection => 'Objektet har lagts till i samlingen';
	@override String get errorAddingToCollection => 'Det gick inte att lägga till objektet i samlingen';
	@override String get created => 'Samlingen har skapats';
	@override String get removeFromCollection => 'Ta bort från samlingen';
	@override String removeFromCollectionConfirm({required Object title}) => 'Ta bort "${title}" från den här samlingen?';
	@override String get removedFromCollection => 'Objektet har tagits bort från samlingen';
	@override String get removeFromCollectionFailed => 'Det gick inte att ta bort objektet från samlingen';
	@override String removeFromCollectionError({required Object error}) => 'Fel när objektet skulle tas bort från samlingen: ${error}';
	@override String get searchCollections => 'Sök samlingar...';
}

// Path: playlists
class _Translations$playlists$sv extends Translations$playlists$en {
	_Translations$playlists$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Spellistor';
	@override String get playlist => 'Spellista';
	@override String get noPlaylists => 'Inga spellistor hittades';
	@override String get create => 'Skapa spellista';
	@override String get playlistName => 'Spellistans namn';
	@override String get enterPlaylistName => 'Ange spellistans namn';
	@override String get delete => 'Ta bort spellista';
	@override String get removeItem => 'Ta bort från spellista';
	@override String get smartPlaylist => 'Smart spellista';
	@override String itemCount({required Object count}) => '${count} objekt';
	@override String get oneItem => '1 objekt';
	@override String get emptyPlaylist => 'Denna spellista är tom';
	@override String get deleteConfirm => 'Ta bort spellista?';
	@override String deleteMessage({required Object name}) => 'Är du säker på att du vill ta bort "${name}"?';
	@override String get created => 'Spellistan har skapats';
	@override String get deleted => 'Spellistan har tagits bort';
	@override String get itemAdded => 'Objektet har lagts till i spellistan';
	@override String get itemRemoved => 'Objektet har tagits bort från spellistan';
	@override String get selectPlaylist => 'Välj spellista';
	@override String get searchPlaylists => 'Sök i spellistor...';
	@override String get errorCreating => 'Det gick inte att skapa spellistan';
	@override String get errorDeleting => 'Det gick inte att ta bort spellistan';
	@override String get errorLoading => 'Det gick inte att läsa in spellistor';
	@override String get errorAdding => 'Det gick inte att lägga till objektet i spellistan';
	@override String get errorReordering => 'Det gick inte att flytta objektet i spellistan';
	@override String get errorRemoving => 'Det gick inte att ta bort objektet från spellistan';
}

// Path: music
class _Translations$music$sv extends Translations$music$en {
	_Translations$music$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get goToAlbum => 'Gå till album';
	@override String get goToArtist => 'Gå till artist';
	@override String get instantMix => 'Snabbmix';
	@override String get playNext => 'Spela härnäst';
	@override String get addToQueue => 'Lägg till i kö';
	@override String discNumber({required Object n}) => 'Skiva ${n}';
	@override String trackCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n,
		one: '${n} låt',
		other: '${n} låtar',
	);
	@override String get nowPlaying => 'Spelas nu';
	@override String playingFrom({required Object title}) => 'Spelar från ${title}';
	@override String get queue => 'Kö';
	@override String get clearQueue => 'Rensa kön';
	@override String get lyrics => 'Låttext';
	@override String get noLyrics => 'Ingen låttext tillgänglig';
	@override String get sleepTimer => 'Insomningstimer';
	@override String get sleepTimerEndOfTrack => 'Slutet av låten';
	@override String sleepTimerMinutes({required Object n}) => '${n} minuter';
	@override String get stopPlayback => 'Stoppa uppspelning';
	@override String get previousTrack => 'Föregående låt';
	@override String get nextTrack => 'Nästa låt';
	@override String get repeat => 'Upprepa';
	@override String get repeatAll => 'Upprepa alla';
	@override String get repeatOne => 'Upprepa en låt';
	@override String get instantMixNoServer => 'Ingen server är tillgänglig för en snabbmix';
	@override String get instantMixFailed => 'Det gick inte att läsa in snabbmixen';
	@override String get instantMixEmpty => 'Snabbmixen innehöll inga låtar';
	@override String noAudioUrl({required Object track}) => 'Ingen ljud-URL är tillgänglig för ${track}';
	@override late final _Translations$music$discography$sv discography = _Translations$music$discography$sv._(_root);
}

// Path: watchTogether
class _Translations$watchTogether$sv extends Translations$watchTogether$en {
	_Translations$watchTogether$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Titta tillsammans';
	@override String get description => 'Titta på innehåll synkroniserat med vänner och familj';
	@override String get createRoom => 'Skapa rum';
	@override String get creatingRoom => 'Skapar rum...';
	@override String get joinRoom => 'Gå med i rummet';
	@override String get joiningRoom => 'Går med i rummet...';
	@override String get connecting => 'Ansluter...';
	@override String get relayPublic => 'Rummen använder de offentliga reläerna för Open Watch Party.';
	@override String relayCustom({required Object url}) => 'Rum använder ditt relä på ${url}.';
	@override String get recentRooms => 'Senaste rummen';
	@override String get roomActions => 'Rumsåtgärder';
	@override String get renameRoom => 'Byt namn på rummet';
	@override String get removeRoom => 'Ta bort';
	@override String get enterRoomCode => 'Ange koden på 6 tecken från värden.';
	@override String get roomCode => 'Rumskod';
	@override String get paste => 'Klistra in';
	@override String get noCodeInClipboard => 'Urklippet innehåller ingen rumskod';
	@override String get copyCode => 'Kopiera kod';
	@override String get codeCopied => 'Rumskoden kopierad';
	@override String get shareInvite => 'Dela Bjud';
	@override String get qrShare => 'Dela QR-kod';
	@override String get qrHint => 'Skanna med Luroka-appen för att gå med i det här rummet.';
	@override String get phasePlaying => 'Spelar';
	@override String get phasePaused => 'Pausad';
	@override String get phaseWaiting => 'Väntar på alla';
	@override String get inviteCopied => 'Inbjudan har kopierats. Klistra in det i ett meddelande.';
	@override String inviteMessage({required Object code}) => 'Gå med i mitt Watch Together-rum i Luroka: luroka://watch?code=${code} — eller öppna Watch Together och ange ${code}.';
	@override String get openSessionControls => 'Öppna sessionskontroller för Titta tillsammans';
	@override String get reconnecting => 'Återansluter...';
	@override String get reconnectingDescription => 'Anslutningen avbröts. Du går automatiskt in i rummet igen.';
	@override String get connected => 'Ansluten';
	@override String get disconnected => 'Frånkopplad';
	@override String get youAreHost => 'Du är värden';
	@override String hostedBy({required Object name}) => 'Värd: ${name}';
	@override String get hostControlsPlayback => 'Värden styr uppspelningen';
	@override String get anyoneCanControl => 'Alla kan styra uppspelningen';
	@override String get roomLocked => 'Rum låst';
	@override String get nowPlaying => 'Spelar nu';
	@override String get nothingPlaying => 'Ingenting spelar';
	@override String get nothingPlayingHost => 'Spela något från vilket bibliotek som helst för att dela det med rummet.';
	@override String get nothingPlayingGuest => 'När värden spelar något öppnas det här.';
	@override String get notShareable => 'Den här videon har ingen katalogmatchning, så bara personer med åtkomst till samma server kan spela upp den.';
	@override String get searching => 'Letar du efter den här videon i dina bibliotek...';
	@override String get yourCopy => 'Ditt exemplar';
	@override String get sharingYourCopy => 'Du delar din kopia';
	@override String playingOtherLength({required Object difference}) => 'Spelar upp din kopia, ${difference}';
	@override String get mismatchTitle => 'Ditt exemplar har en annan längd';
	@override String mismatchDescription({required Object difference}) => 'Din närmaste kopia är ${difference} än rummets video. Det kan vara ett annat snitt eller version.';
	@override String get playAnyway => 'Spela ändå';
	@override String get chooseAnotherCopy => 'Välj en annan kopia';
	@override String get dontPlay => 'Spela inte';
	@override String get unavailableTitle => 'Du har inte den här videon';
	@override String get unavailableDescription => 'Luroka kunde inte hitta den i dina bibliotek. Välj en kopia själv eller sök igen.';
	@override String get chooseCopy => 'Välj en kopia';
	@override String get searchAgain => 'Sök igen';
	@override String get noCandidates => 'Inga kopior hittades i dina bibliotek.';
	@override String get choiceFailed => 'Det gick inte att spela upp den här kopian för rummet';
	@override String lengthLonger({required Object duration}) => '${duration} längre';
	@override String lengthShorter({required Object duration}) => '${duration} kortare';
	@override String get lengthSame => 'Samma längd';
	@override String get lengthUnknown => 'Längd okänd';
	@override String get joinCurrentPlayback => 'Gå med i aktuell uppspelning';
	@override String get joinCurrentPlaybackDescription => 'Hoppa tillbaka till det värden tittar på just nu';
	@override String get stopMedia => 'Stoppa video för alla';
	@override String get syncOffset => 'Synkförskjutning';
	@override String get syncOffsetDescription => 'Flytta din video om den körs framför eller bakom rummet.';
	@override String offsetHint({required Object difference}) => 'Din kopia är ${difference} än rummets video.';
	@override String applyDifference({required Object offset}) => 'Använd ${offset}';
	@override String get offsetMinusSecond => '-1 s';
	@override String get offsetMinusTenth => '-100 ms';
	@override String get offsetPlusTenth => '+100 ms';
	@override String get offsetPlusSecond => '+1 s';
	@override String get participants => 'Deltagare';
	@override String participantCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n,
		one: '${n}-deltagare',
		other: '${n} deltagare',
	);
	@override String get hostBadge => 'VÄRD';
	@override String nameYou({required Object name}) => '${name} (Du)';
	@override String get playerIdle => 'Inaktiv';
	@override String get playerLoading => 'Laddar';
	@override String get playerReady => 'Klar';
	@override String get playerBuffering => 'Buffring';
	@override String get matchSearching => 'Söker';
	@override String get matchMatched => 'Har videon';
	@override String get matchMismatched => 'Olika längd';
	@override String get matchUnavailable => 'Har inte videon';
	@override String participantOffset({required Object offset}) => 'Offset ${offset}';
	@override String get makeHost => 'Gör till värd';
	@override String get makeHostQuestion => 'Överför värdskapet?';
	@override String makeHostConfirm({required Object name}) => '${name} kommer att styra uppspelningen och driva sessionen för alla.';
	@override String get transfer => 'Överför';
	@override String get removeParticipant => 'Ta bort från rummet';
	@override String removeParticipantQuestion({required Object name}) => 'Ta bort ${name}?';
	@override String removeParticipantConfirm({required Object name}) => '${name} lämnar rummet. De kan gå med igen med koden om du inte låser rummet.';
	@override String get remove => 'Ta bort';
	@override String get roomSettings => 'Rumsinställningar';
	@override String get letEveryoneControl => 'Låt alla styra uppspelningen';
	@override String get lockRoom => 'Låsrum';
	@override String get lockRoomDescription => 'Ingen ny kan vara med';
	@override String get leaveRoom => 'Lämna rummet';
	@override String get leaveRoomQuestion => 'Lämna rummet?';
	@override String get leaveRoomConfirm => 'Du kan gå med igen med rumskoden.';
	@override String get leave => 'Lämna';
	@override String get endRoom => 'Slutrummet';
	@override String get endRoomQuestion => 'Slutrummet?';
	@override String get endRoomConfirm => 'Detta avslutar rummet för alla.';
	@override String get end => 'Avsluta';
	@override String get playBlockedTitle => 'Uppspelningen startade inte';
	@override String get playBlockedDescription => 'Tryck på play för att börja titta med rummet.';
	@override late final _Translations$watchTogether$notices$sv notices = _Translations$watchTogether$notices$sv._(_root);
	@override late final _Translations$watchTogether$ended$sv ended = _Translations$watchTogether$ended$sv._(_root);
	@override late final _Translations$watchTogether$errors$sv errors = _Translations$watchTogether$errors$sv._(_root);
	@override String untitledEpisode({required Object number}) => 'Avsnitt ${number}';
}

// Path: downloads
class _Translations$downloads$sv extends Translations$downloads$en {
	_Translations$downloads$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nedladdningar';
	@override String get manage => 'Hantera';
	@override String get tvShows => 'TV-serier';
	@override String get movies => 'Filmer';
	@override String get music => 'Musik';
	@override String tracksQueued({required Object count}) => '${count} låtar i nedladdningskö';
	@override String get noDownloads => 'Inga nedladdningar ännu';
	@override String get noDownloadsDescription => 'Nedladdat innehåll visas här så att du kan titta offline';
	@override String get downloadNow => 'Ladda ner';
	@override String get deleteDownload => 'Ta bort nedladdning';
	@override String get retryDownload => 'Försök igen';
	@override String get downloadQueued => 'Nedladdning köad';
	@override String get downloadResumed => 'Nedladdning återupptagen';
	@override String get serverErrorBitrate => 'Serverfel: filen kan överskrida serverns bithastighetsgräns';
	@override String get storageFull => 'Nedladdningarna stoppades för att skydda det lediga lagringsutrymmet. Frigör utrymme eller välj en annan nedladdningsplats och försök igen.';
	@override String get storageUnavailable => 'Nedladdningarna stoppades eftersom det lediga lagringsutrymmet inte kunde kontrolleras. Kontrollera nedladdningsplatsen och försök igen.';
	@override String episodesQueued({required Object count}) => '${count} avsnitt köade för nedladdning';
	@override String get downloadDeleted => 'Nedladdning borttagen';
	@override String deleteConfirm({required Object title}) => 'Ta bort "${title}" från den här enheten?';
	@override String get deleteCollectionDownloads => 'Ta bort nedladdningar';
	@override String deleteCollectionDownloadsConfirm({required Object title}) => 'Vill du ta bort varje nedladdning i "${title}" från den här enheten?';
	@override String get collectionDownloadsDeleted => 'Nedladdningar raderade';
	@override String get cancelledDownloadTitle => 'Avbruten nedladdning';
	@override String get cancelledDownloadMessage => 'Den här nedladdningen avbröts. Vad vill du göra?';
	@override String get allEpisodesAlreadyDownloaded => 'Alla avsnitt är redan nedladdade';
	@override String get resumeDownload => 'Återuppta nedladdning';
	@override String get cancelledDownload => 'Avbruten nedladdning';
	@override String syncingFile({required Object file, required Object status}) => '${file} (synkroniserar ${status})';
	@override String downloadedFileClickToComplete({required Object file}) => '${file} nedladdad – klicka för att slutföra';
	@override String get partialDownloadClickToComplete => 'Delvis nedladdad – klicka för att slutföra';
	@override String get deleting => 'Tar bort...';
	@override String deletingWithProgress({required Object title, required Object current, required Object total}) => 'Tar bort ${title}... (${current} av ${total})';
	@override String get queuedTooltip => 'I kö';
	@override String queuedFilesTooltip({required Object files}) => 'I kö: ${files}';
	@override String get downloadingTooltip => 'Laddar ned...';
	@override String downloadingFilesTooltip({required Object files}) => 'Laddar ned ${files}';
	@override String get noDownloadsTree => 'Inga nedladdningar';
	@override String get pauseAll => 'Pausa alla';
	@override String get resumeAll => 'Återuppta alla';
	@override String get retryAll => 'Försök alla igen';
	@override String get retryFailed => 'Försök misslyckade nedladdningar igen';
	@override String get deleteAll => 'Ta bort alla';
	@override String get selectVersion => 'Välj version';
	@override String get allEpisodes => 'Alla avsnitt';
	@override String get unwatchedOnly => 'Endast osedda';
	@override String nextNUnwatched({required Object count}) => 'Nästa ${count} osedda';
	@override String get customAmount => 'Ange antal...';
	@override String get includeSpecials => 'Inkludera specialavsnitt';
	@override String get howManyEpisodes => 'Hur många avsnitt?';
	@override String get invalidEpisodeCount => 'Ange ett giltigt antal avsnitt.';
	@override String get keepSynced => 'Håll synkroniserad';
	@override String get downloadOnce => 'Ladda ner en gång';
	@override String keepNUnwatched({required Object count}) => 'Behåll ${count} osedda';
	@override String get editSyncRule => 'Redigera synkregel';
	@override String get removeSyncRule => 'Ta bort synkregel';
	@override String removeSyncRuleConfirm({required Object title}) => 'Sluta synkronisera "${title}"? Nedladdade avsnitt behålls.';
	@override String removeListSyncRuleConfirm({required Object title}) => 'Sluta synkronisera "${title}"?';
	@override String get deleteSyncRuleDownloads => 'Ta även bort associerade nedladdningar';
	@override String get deleteSyncRuleDownloadsDescription => 'Nedladdningar som används av en annan synkregel eller profil behålls.';
	@override String syncRuleCreated({required Object count}) => 'Synkregel skapad — behåller ${count} osedda avsnitt';
	@override String get syncRuleUpdated => 'Synkregel uppdaterad';
	@override String get syncRuleRemoved => 'Synkregel borttagen';
	@override String get syncRuleAndDownloadsRemoved => 'Synkregel och associerade nedladdningar borttagna';
	@override String get syncRuleCleanupBusy => 'Synkregler uppdateras just nu. Försök igen om en liten stund.';
	@override String get syncRuleCleanupUnavailable => 'Associerade nedladdningar kunde inte identifieras på ett säkert sätt. Återanslut servern och försök igen, eller ta bort regeln utan att ta bort nedladdningar.';
	@override String syncedNewEpisodes({required Object count, required Object title}) => 'Synkroniserade ${count} nya avsnitt för ${title}';
	@override String get activeSyncRules => 'Synkregler';
	@override String get noSyncRules => 'Inga synkregler';
	@override String get manageSyncRule => 'Hantera synkronisering';
	@override String get editEpisodeCount => 'Antal avsnitt';
	@override String get editSyncFilter => 'Synkroniseringsfilter';
	@override String get syncAllItems => 'Synkroniserar alla objekt';
	@override String get syncUnwatchedItems => 'Synkroniserar osedda objekt';
	@override String syncRuleServerContext({required Object server, required Object status}) => 'Server: ${server} • ${status}';
	@override String get syncRuleAvailable => 'Tillgänglig';
	@override String get syncRuleOffline => 'Offline';
	@override String get syncRuleSignInRequired => 'Inloggning krävs';
	@override String get syncRuleAccessDenied => 'Åtkomst nekad';
	@override String get syncRuleNotAvailableForProfile => 'Inte tillgänglig för aktuell profil';
	@override String get syncRuleUnknownServer => 'Okänd server';
	@override String get syncRuleListCreated => 'Synkroniseringsregel skapad';
	@override late final _Translations$downloads$backgroundWarning$sv backgroundWarning = _Translations$downloads$backgroundWarning$sv._(_root);
	@override String get options => 'Alternativ för nedladdningar';
	@override late final _Translations$downloads$groupings$sv groupings = _Translations$downloads$groupings$sv._(_root);
	@override String get unknownLibrary => 'Okänt bibliotek';
	@override String get unknownShow => 'Okänd serie';
	@override String get unknownSeason => 'Okänd säsong';
	@override String get unknownAlbum => 'Okänt album';
	@override String completedOfTotal({required Object completed, required Object total}) => '${completed}/${total} slutförda';
	@override String get errorFileNotFound => 'Filen hittades inte (404)';
	@override String get errorDownloadNotAllowed => 'Servern tillåter inte nedladdning (403)';
	@override String get errorDownloadFailed => 'Nedladdningen misslyckades';
	@override String errorDownloadFailedWithReason({required Object reason}) => 'Nedladdningen misslyckades: ${reason}';
	@override String errorHttpStatus({required Object status}) => 'Nedladdningen misslyckades (HTTP ${status})';
	@override String errorPostProcessing({required Object reason}) => 'Efterbehandlingen misslyckades: ${reason}';
	@override String get reasonFileNotSaved => 'filen kunde inte sparas på den här enheten';
	@override String get reasonCannotResume => 'den delvisa nedladdningen kunde inte återupptas';
	@override String get reasonDeviceStorageFull => 'den här enheten har slut på lagringsutrymme';
	@override String get notificationDownloading => 'Laddar ned...';
	@override String get notificationComplete => 'Nedladdningen är klar';
	@override String get notificationPaused => 'Nedladdningen har pausats';
}

// Path: shaders
class _Translations$shaders$sv extends Translations$shaders$en {
	_Translations$shaders$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Shaders';
	@override String get noShaderDescription => 'Ingen videoförbättring';
	@override String get nvscalerDescription => 'NVIDIA-bildskalning för skarpare video';
	@override String get artcnnVariantNeutral => 'Neutral';
	@override String get artcnnVariantDenoise => 'Brusreducering';
	@override String get artcnnVariantDenoiseSharpen => 'Brusreducering + skärpa';
	@override String get qualityFast => 'Snabb';
	@override String get qualityHQ => 'Hög kvalitet';
	@override String get mode => 'Läge';
	@override String get importShader => 'Importera shader';
	@override String get customShaderDescription => 'Anpassad GLSL-shader';
	@override String get shaderImported => 'Shadern har importerats';
	@override String get shaderImportFailed => 'Det gick inte att importera shadern';
	@override String get deleteShader => 'Ta bort shader';
	@override String deleteShaderConfirm({required Object name}) => 'Ta bort "${name}"?';
}

// Path: companionRemote
class _Translations$companionRemote$sv extends Translations$companionRemote$en {
	_Translations$companionRemote$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fjärrkontroll';
	@override String connectedTo({required Object name}) => 'Ansluten till ${name}';
	@override String get unknownDevice => 'Okänd enhet';
	@override late final _Translations$companionRemote$session$sv session = _Translations$companionRemote$session$sv._(_root);
	@override late final _Translations$companionRemote$pairing$sv pairing = _Translations$companionRemote$pairing$sv._(_root);
	@override late final _Translations$companionRemote$remote$sv remote = _Translations$companionRemote$remote$sv._(_root);
	@override late final _Translations$companionRemote$errors$sv errors = _Translations$companionRemote$errors$sv._(_root);
	@override String get closedBeforeAuth => 'Anslutningen stängdes före autentiseringen';
}

// Path: videoSettings
class _Translations$videoSettings$sv extends Translations$videoSettings$en {
	_Translations$videoSettings$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get playbackSpeed => 'Uppspelningshastighet';
	@override String get normalSpeed => 'Normal';
	@override String sleepTimerActive({required Object duration}) => 'Aktiv (${duration})';
	@override String get zoom => 'Zoom';
	@override String get sleepTimer => 'Sovtimer';
	@override String get audioSync => 'Ljudsynkronisering';
	@override String get subtitleSync => 'Undertextsynkronisering';
	@override String get hdr => 'HDR';
	@override String get hdrUnsupported => 'HDR kan inte användas här – skrivbordets kompositionshanterare eller videoutgången kan inte överföra det.';
	@override String get hdrToneMapping => 'HDR-tonmappning';
	@override String get hdrToneMappingCompositor => 'Kompositionshanterare';
	@override String get hdrToneMappingCompositorDescription => 'Vidarebefordra källans HDR-metadata och låt skrivbordets kompositionshanterare tonmappa dem.';
	@override String get hdrToneMappingPlayer => 'Spelare';
	@override String get hdrToneMappingPlayerDescription => 'Tonmappa till skärmens maximala ljusstyrka i spelaren och informera sedan kompositionshanteraren om resultatet.';
	@override String get hdrToneMappingFailed => 'Det gick inte att ändra HDR-tonmappningen – det föregående läget är fortfarande aktivt.';
	@override String get audioOutput => 'Ljudutgång';
	@override String get performanceOverlay => 'Prestandaöverlägg';
	@override String get audioOutputDolbyAtmos => 'Dolby Atmos';
	@override String get audioOutputDolbyAudio => 'Dolby Audio';
	@override String get audioOutputSurround => 'Surround';
	@override String get audioOutputSpatial => 'Rumsligt ljud';
	@override String get audioOutputStereo => 'Stereo';
	@override String get audioNormalization => 'Normalisera ljudstyrka';
	@override String get audioNormalizationDisablesPassthrough => 'Avkodar ljudet till PCM; genomströmning är av medan detta är på';
}

// Path: performanceOverlay
class _Translations$performanceOverlay$sv extends Translations$performanceOverlay$en {
	_Translations$performanceOverlay$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get color => 'Färg';
	@override String get performance => 'Prestanda';
	@override String get buffer => 'Buffert';
	@override String get app => 'App';
	@override String get decoder => 'Dekoder';
	@override String get rawDecoder => 'Rå dekoder';
	@override String get tunneling => 'Tunnling';
	@override String get passthrough => 'Genomströmning';
	@override String get aspect => 'Bildformat';
	@override String get rotation => 'Rotation';
	@override String get dvSource => 'DV-källa';
	@override String get dvPath => 'DV-sökväg';
	@override String get dvRouteDecoder => 'Dolby Vision avkodare';
	@override String get dvRouteDecoderP81 => 'Dolby Vision-avkodare (P7→8.1)';
	@override String get dvRouteBaseLayer => 'Baslager';
	@override String get dvRouteBaseLayerHdr10 => 'HDR10 basskikt';
	@override String get dvRouteBaseLayerHlg => 'HLG baslager';
	@override String get dvRouteBaseLayerSdr => 'SDR baslager';
	@override String get dvRouteReshaped => 'RPU omformad (gpu-next)';
	@override String get p7Conversion => 'P7-konv.';
	@override String get sampleRate => 'Samplingsfrekvens';
	@override String get pixelFormat => 'Pixelformat';
	@override String get hwFormat => 'HW-format';
	@override String get matrix => 'Matris';
	@override String get primaries => 'Primärfärger';
	@override String get transfer => 'Överföring';
	@override String get renderFps => 'Renderings-FPS';
	@override String get displayFps => 'Skärm-FPS';
	@override String get avSync => 'A/V-synk';
	@override String get dropped => 'Tappade bildrutor';
	@override String get dvRpus => 'DV-RPU:er';
	@override String get dvRpuAverage => 'DV-RPU, genomsnitt';
	@override String get dvSampleAverage => 'DV-sampling, genomsnitt';
	@override String get maxLuma => 'Max luma';
	@override String get minLuma => 'Min luma';
	@override String get maxCll => 'MaxCLL';
	@override String get maxFall => 'MaxFALL';
	@override String get cacheUsed => 'Använt cacheminne';
	@override String get cacheLimit => 'Cachegräns';
	@override String get speed => 'Hastighet';
	@override String get player => 'Spelare';
	@override String get memory => 'Minne';
	@override String get uiFps => 'UI FPS';
	@override String get fps => 'FPS';
	@override String get decoderAndroidHw => 'Android HW';
	@override String get decoderNvidiaHw => 'NVIDIA HW';
	@override String get decoderQualcommHw => 'Qualcomm HW';
	@override String get decoderMediatekHw => 'MediaTek HW';
	@override String get decoderExynosHw => 'Exynos HW';
	@override String get decoderSoftware => 'Programvara';
	@override String get decoderHardware => 'Maskinvara';
	@override String get tunnelingActive => 'Aktiv';
	@override String dvRpuFailed({required Object converted, required Object failures}) => '${converted} (${failures} misslyckades)';
}

// Path: externalPlayer
class _Translations$externalPlayer$sv extends Translations$externalPlayer$en {
	_Translations$externalPlayer$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Extern spelare';
	@override String get useExternalPlayer => 'Använd extern spelare';
	@override String get useExternalPlayerDescription => 'Öppna videor i en annan app';
	@override String get selectPlayer => 'Välj spelare';
	@override String get customPlayers => 'Anpassade spelare';
	@override String get systemDefault => 'Systemstandard';
	@override String get addCustomPlayer => 'Lägg till anpassad spelare';
	@override String get playerName => 'Spelarnamn';
	@override String get playerNameHint => 'Min spelare';
	@override String get playerCommand => 'Kommando';
	@override String get playerPackage => 'Paketnamn';
	@override String get playerUrlScheme => 'URL-schema';
	@override String get off => 'Av';
	@override String get launchFailed => 'Kunde inte öppna extern spelare';
	@override String appNotInstalled({required Object name}) => '${name} är inte installerad';
	@override String get playInExternalPlayer => 'Spela i extern spelare';
}

// Path: metadataEdit
class _Translations$metadataEdit$sv extends Translations$metadataEdit$en {
	_Translations$metadataEdit$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get editMetadata => 'Redigera...';
	@override String get screenTitle => 'Redigera metadata';
	@override String get basicInfo => 'Grundläggande information';
	@override String get artwork => 'Bildmaterial';
	@override String get advancedSettings => 'Avancerade inställningar';
	@override String get title => 'Titel';
	@override String get sortTitle => 'Sorteringstitel';
	@override String get originalTitle => 'Originaltitel';
	@override String get releaseDate => 'Utgivningsdatum';
	@override String get contentRating => 'Åldersgräns';
	@override String get studio => 'Studio';
	@override String get tagline => 'Slogan';
	@override String get summary => 'Sammanfattning';
	@override String get poster => 'Affisch';
	@override String get background => 'Bakgrund';
	@override String get logo => 'Logotyp';
	@override String get squareArt => 'Kvadratisk bild';
	@override String get selectPoster => 'Välj affisch';
	@override String get selectBackground => 'Välj bakgrund';
	@override String get selectLogo => 'Välj logotyp';
	@override String get selectSquareArt => 'Välj kvadratisk bild';
	@override String get fromUrl => 'Från URL';
	@override String get uploadFile => 'Ladda upp fil';
	@override String get enterImageUrl => 'Ange bild-URL';
	@override String get imageUrl => 'Bild-URL';
	@override String get metadataUpdated => 'Metadata har uppdaterats';
	@override String get metadataUpdateFailed => 'Det gick inte att uppdatera metadata';
	@override String get artworkUpdated => 'Bildmaterialet har uppdaterats';
	@override String get artworkUpdateFailed => 'Det gick inte att uppdatera bildmaterialet';
	@override String get noArtworkAvailable => 'Inget bildmaterial är tillgängligt';
	@override String artworkOption({required Object index}) => 'Bildalternativ ${index}';
	@override String selectedArtworkOption({required Object index}) => 'Bildalternativ ${index}, valt';
	@override String get notSet => 'Inte angiven';
	@override String get libraryDefault => 'Biblioteksstandard';
	@override String get accountDefault => 'Kontostandard';
	@override String get seriesDefault => 'Seriestandard';
	@override String get episodeSorting => 'Avsnittsortering';
	@override String get oldestFirst => 'Äldst först';
	@override String get newestFirst => 'Nyast först';
	@override String get keep => 'Behåll';
	@override String get allEpisodes => 'Alla avsnitt';
	@override String latestEpisodes({required Object count}) => '${count} senaste avsnitten';
	@override String get latestEpisode => 'Senaste avsnittet';
	@override String episodesAddedPastDays({required Object count}) => 'Avsnitt tillagda de senaste ${count} dagarna';
	@override String get deleteAfterPlaying => 'Ta bort avsnitt efter uppspelning';
	@override String get never => 'Aldrig';
	@override String get afterADay => 'Efter en dag';
	@override String get afterAWeek => 'Efter en vecka';
	@override String get afterAMonth => 'Efter en månad';
	@override String get onNextRefresh => 'Vid nästa uppdatering';
	@override String get seasons => 'Säsonger';
	@override String get show => 'Visa';
	@override String get hide => 'Dölj';
	@override String get episodeOrdering => 'Avsnittsordning';
	@override String get tmdbAiring => 'The Movie Database (Sändning)';
	@override String get tvdbAiring => 'TheTVDB (Sändning)';
	@override String get tvdbAbsolute => 'TheTVDB (Absolut)';
	@override String get metadataLanguage => 'Metadataspråk';
	@override String get useOriginalTitle => 'Använd originaltitel';
	@override String get preferredAudioLanguage => 'Föredraget ljudspråk';
	@override String get preferredSubtitleLanguage => 'Föredraget undertextspråk';
	@override String get subtitleMode => 'Läge för automatiskt undertextval';
	@override String get manuallySelected => 'Manuellt vald';
	@override String get shownWithForeignAudio => 'Visas med ljud på främmande språk';
	@override String get alwaysEnabled => 'Alltid aktiverad';
	@override String get tags => 'Taggar';
	@override String get addTag => 'Lägg till tagg';
	@override String get genre => 'Genre';
	@override String get director => 'Regissör';
	@override String get writer => 'Manusförfattare';
	@override String get producer => 'Producent';
	@override String get country => 'Land';
	@override String get collection => 'Samling';
	@override String get label => 'Etikett';
	@override String get quickTag => 'Snabbtagg...';
}

// Path: matchScreen
class _Translations$matchScreen$sv extends Translations$matchScreen$en {
	_Translations$matchScreen$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get match => 'Matcha...';
	@override String get fixMatch => 'Rätta matchning...';
	@override String get unmatch => 'Ta bort matchning';
	@override String get unmatchConfirm => 'Rensa denna matchning? Plex behandlar den som omatchad tills den matchas igen.';
	@override String get unmatchSuccess => 'Matchning borttagen';
	@override String get unmatchFailed => 'Det gick inte att ta bort matchningen';
	@override String get matchApplied => 'Matchning tillämpad';
	@override String get matchFailed => 'Det gick inte att tillämpa matchningen';
	@override String get titleHint => 'Titel';
	@override String get yearHint => 'År';
	@override String get search => 'Sök';
	@override String get noMatchesFound => 'Inga matchningar hittades';
}

// Path: serverTasks
class _Translations$serverTasks$sv extends Translations$serverTasks$en {
	_Translations$serverTasks$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Serveruppgifter';
	@override String get failedToLoad => 'Kunde inte ladda uppgifter';
	@override String get noTasks => 'Inga pågående uppgifter';
}

// Path: trakt
class _Translations$trakt$sv extends Translations$trakt$en {
	_Translations$trakt$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Trakt';
	@override String get connected => 'Ansluten';
	@override String connectedAs({required Object username}) => 'Ansluten som @${username}';
	@override String get disconnectConfirm => 'Koppla från Trakt-konto?';
	@override String get disconnectConfirmBody => 'Luroka slutar skicka händelser till Trakt. Du kan återansluta när som helst.';
	@override String get scrobble => 'Realtidsspårning';
	@override String get scrobbleDescription => 'Skicka händelser för uppspelning, paus och stopp till Trakt under uppspelningen.';
	@override String get watchedSync => 'Synkronisera seddstatus';
	@override String get watchedSyncDescription => 'När du markerar objekt som sedda i Luroka markeras de även som sedda på Trakt.';
}

// Path: seerr
class _Translations$seerr$sv extends Translations$seerr$en {
	_Translations$seerr$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Seerr';
	@override String get connectTitle => 'Anslut Seerr';
	@override String get serverUrl => 'Server-URL';
	@override String get serverUrlHelper => 'Adressen till din Seerr-instans';
	@override String get checkServer => 'Fortsätt';
	@override String get signInWithJellyfin => 'Logga in med Jellyfin';
	@override String get signInWithEmby => 'Logga in med Emby';
	@override String get signInWithLocal => 'Använd ett lokalt konto';
	@override String get email => 'E-post';
	@override String get noSignInMethods => 'Den här Seerr-instansen erbjuder ingen inloggningsmetod som Luroka stöder.';
	@override String get instance => 'Instans';
	@override String get disconnectConfirm => 'Koppla från Seerr?';
	@override String get disconnectConfirmBody => 'Luroka glömmer den här Seerr-instansen. Återanslut när som helst.';
	@override String get request => 'Begär';
	@override String get request4k => 'Begär i 4K';
	@override String get seasons => 'Säsonger';
	@override String get allSeasons => 'Alla säsonger';
	@override String get advancedOptions => 'Avancerat';
	@override String get destinationServer => 'Målserver';
	@override String get qualityProfile => 'Kvalitetsprofil';
	@override String get rootFolder => 'Rotmapp';
	@override String get languageProfile => 'Språkprofil';
	@override String get tags => 'Taggar';
	@override String get noTags => 'Inga taggar';
	@override String defaultOption({required Object name}) => '${name} (standard)';
	@override String get animeNote => 'Den här serien är en anime.';
	@override String get requestSubmitted => 'Begäran skickad';
	@override String requestFailed({required Object error}) => 'Begäran kunde inte genomföras: ${error}';
	@override String get requestsLoadFailed => 'Det gick inte att läsa in alternativ för begäran';
	@override String get nothingToRequest => 'Allt är redan tillgängligt eller begärt.';
	@override String get statusAvailable => 'Tillgänglig';
	@override String get statusPartiallyAvailable => 'Delvis tillgänglig';
	@override String get statusRequested => 'Begärd';
	@override String get statusProcessing => 'Bearbetas';
	@override String get statusBlocklisted => 'På blockeringslistan';
	@override String couldNotReach({required Object url, required Object error}) => 'Kunde inte nå ${url}: ${error}';
	@override String noInstanceAtUrl({required Object url, required Object status}) => 'Det finns ingen Seerr-instans på ${url} (HTTP ${status})';
	@override String get behindAuthProxy => 'En autentiserande reverse proxy (SSO eller HTTP-autentisering) svarade i stället för Seerr. Luroka kan inte logga in genom den: låt Seerrs sökväg /api/v1 kringgå proxyn för den här appen, eller använd en adress som når Seerr direkt.';
	@override String get invalidUrl => 'Ange en serveradress, t.ex. https://seerr.example.com';
	@override String get quickConnectUnsupported => 'Den här Seerr-instansen stöder inte Quick Connect. Den kräver Seerr 3.4 eller nyare.';
	@override String get notInitialized => 'Den här Seerr-instansen har inte slutfört den inledande konfigurationen';
	@override String get noPlexTokenForReauth => 'Det finns ingen Plex-token tillgänglig för att logga in igen';
	@override String get noStoredCredentials => 'Det finns inga sparade inloggningsuppgifter för att logga in igen';
	@override String get signInRejected => 'Inloggningen avvisades';
	@override String get noSessionCookie => 'Seerr skapade ingen sessionscookie';
	@override String get freshCookieRejected => 'Seerr avvisade den nya sessionscookien';
	@override String get noUserInformation => 'Seerr returnerade ingen användarinformation';
	@override String get sessionRejectedAfterReauth => 'Sessionen avvisades efter den nya inloggningen';
	@override String get permissionDenied => 'Seerr nekade åtgärden: ditt konto har inte längre den behörighet som krävs';
	@override String get permissionRevoked => 'Du har inte längre behörighet att begära detta';
}

// Path: services
class _Translations$services$sv extends Translations$services$en {
	_Translations$services$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tjänster';
	@override String get hubSubtitle => 'Synkronisera visningsstatus och begär nya titlar.';
	@override String get discoverySection => 'Upptäck och begär';
	@override String get trackingSection => 'Visningshistorik och listor';
	@override String get seerrDescription => 'Hitta filmer och serier och skicka förfrågningar från din Seerr-server.';
	@override String get tmdbDescription => 'Upptäck filmer och serier, affischer, betyg och detaljer.';
	@override String get traktDescription => 'Följ filmer och serier, synkronisera visningsstatus och hantera din bevakningslista.';
	@override String get malDescription => 'Håll din anime-lista och visningsförlopp synkroniserade.';
	@override String get anilistDescription => 'Följ anime och synkronisera visningsförloppet med AniList.';
	@override String get simklDescription => 'Följ filmer, serier och anime med Simkl.';
	@override String get mdblistDescription => 'Anslut dina MDBList-listor och filmbetyg.';
	@override String connectionIntro({required Object service}) => 'Anslut ${service} till din aktuella Luroka-profil. Du kan när som helst hantera anslutningen och dess alternativ här.';
	@override String connectService({required Object service}) => 'Anslut ${service}';
	@override String get seerrConnectDescription => 'Anslut din Seerr-server för att upptäcka och begära filmer och serier från Luroka.';
	@override String get seerrServerStep => 'Ange adressen du använder för att öppna Seerr. Vi kontrollerar vilka inloggningssätt servern stöder.';
	@override String get seerrSignInStep => 'Välj ett inloggningssätt som stöds av servern.';
	@override String get integrations => 'Integrationer';
	@override String get notConnected => 'Inte ansluten';
	@override String connectedAs({required Object username}) => 'Ansluten som @${username}';
	@override String get scrobble => 'Spåra uppspelningen automatiskt';
	@override String get scrobbleDescription => 'Uppdatera din lista när du har sett klart ett avsnitt eller en film.';
	@override String disconnectConfirm({required Object service}) => 'Koppla från ${service}?';
	@override String disconnectConfirmBody({required Object service}) => 'Luroka slutar uppdatera ${service}. Återanslut när som helst.';
	@override String connectFailed({required Object service}) => 'Kunde inte ansluta till ${service}. Försök igen.';
	@override late final _Translations$services$names$sv names = _Translations$services$names$sv._(_root);
	@override late final _Translations$services$simklReconnect$sv simklReconnect = _Translations$services$simklReconnect$sv._(_root);
	@override late final _Translations$services$deviceCode$sv deviceCode = _Translations$services$deviceCode$sv._(_root);
	@override late final _Translations$services$oauthProxy$sv oauthProxy = _Translations$services$oauthProxy$sv._(_root);
	@override late final _Translations$services$pendingAuth$sv pendingAuth = _Translations$services$pendingAuth$sv._(_root);
	@override late final _Translations$services$libraryFilter$sv libraryFilter = _Translations$services$libraryFilter$sv._(_root);
}

// Path: addServer
class _Translations$addServer$sv extends Translations$addServer$en {
	_Translations$addServer$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String addMediaBrowserTitle({required Object product}) => 'Lägg till ${product}-server';
	@override String get serverUrls => 'Server-URL:er';
	@override String get serverUrlsHelper => 'Du kan ange flera URL:er avgränsade med kommatecken.';
	@override String get findServer => 'Hitta server';
	@override String searchingLocalMediaBrowserServers({required Object product}) => 'Söker efter lokala ${product}-servrar...';
	@override String localMediaBrowserServers({required Object product}) => 'Lokala ${product}-servrar';
	@override String get username => 'Användarnamn';
	@override String get password => 'Lösenord';
	@override String get signIn => 'Logga in';
	@override String get change => 'Ändra';
	@override String get required => 'Krävs';
	@override String couldNotReachServer({required Object error}) => 'Kunde inte nå servern: ${error}';
	@override String signInFailed({required Object error}) => 'Det gick inte att logga in: ${error}';
	@override String quickConnectFailed({required Object error}) => 'Quick Connect misslyckades: ${error}';
	@override String get addPlexTitle => 'Logga in med Plex';
	@override String get pinExpired => 'PIN-koden gick ut innan inloggning. Försök igen.';
	@override String failedToRegisterAccount({required Object error}) => 'Kunde inte registrera kontot: ${error}';
	@override String enterMediaBrowserUrlError({required Object product}) => 'Ange din ${product}-server-URL';
	@override String get addConnectionTitle => 'Lägg till anslutning';
	@override String addConnectionTitleScoped({required Object name}) => 'Lägg till i ${name}';
	@override String get signInWithPlexCard => 'Logga in med Plex';
	@override String get signInWithPlexCardSubtitle => 'Auktorisera den här enheten. Delade servrar läggs till.';
	@override String get signInWithPlexCardSubtitleScoped => 'Auktorisera ett Plex-konto. Hem-användare blir profiler.';
	@override String connectToMediaBrowserCard({required Object product}) => 'Anslut till ${product}';
	@override String get connectToMediaBrowserCardSubtitle => 'Ange din server-URL, användarnamn och lösenord.';
	@override String connectToMediaBrowserCardSubtitleScoped({required Object product, required Object name}) => 'Logga in på din ${product}-server. Knyts till ${name}.';
	@override String get borrowFromAnotherProfile => 'Låna från en annan profil';
	@override String get borrowFromAnotherProfileSubtitle => 'Återanvänd en annan profils anslutning. PIN-skyddade profiler kräver en PIN.';
	@override String get invalidCredentials => 'Ogiltigt användarnamn eller lösenord';
	@override String get authResponseNotJson => 'Autentiseringssvaret var inte ett giltigt JSON-svar';
	@override String get authResponseIncomplete => 'Inloggningssvaret från servern var ofullständigt';
	@override String get quickConnectRejected => 'Quick Connect avvisades av servern';
	@override String get quickConnectNotJson => 'Quick Connect-svaret var inte ett giltigt JSON-svar';
	@override String get quickConnectMissingFields => 'Quick Connect-svaret saknar en kod eller hemlig nyckel';
	@override String get quickConnectPollRejected => 'Servern avvisade avsökningen för Quick Connect';
	@override String get serverTimedOut => 'Servern svarade inte i tid';
	@override String get responseNotJson => 'Serversvaret var inte ett giltigt JSON-svar';
	@override String responseMissingIdentity({required Object product}) => 'Svaret saknar ett ID eller servernamn – är det här en ${product}-server?';
	@override String probeFailed({required Object error}) => 'Kunde inte nå servern: ${error}';
	@override String enterAtLeastOneUrl({required Object product}) => 'Ange minst en server-URL för ${product}';
	@override String noReachableServer({required Object product}) => 'Ingen nåbar ${product}-server hittades';
	@override String urlsPointToDifferentServers({required Object product}) => 'De här URL:erna pekar på olika servrar för ${product}';
	@override String urlDoesNotMatchServer({required Object product}) => 'Den här URL:en stämmer inte överens med ${product}-servern';
	@override String get redirectUnsupported => 'Servern omdirigerade till en URL som inte stöds';
	@override String redirectDifferentHost({required Object product}) => 'Servern omdirigerade till en annan värd. Ange den slutliga URL:en för ${product} direkt.';
	@override String get redirectInsecure => 'Servern omdirigerade från HTTPS till en osäker URL';
	@override String redirectUnsupportedEnterFinal({required Object product}) => 'Servern omdirigerade till en URL som inte stöds. Ange den slutliga URL:en för ${product} direkt.';
}

// Path: appIcon.names
class _Translations$appIcon$names$sv extends Translations$appIcon$names$en {
	_Translations$appIcon$names$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get midnight => 'Midnatt';
	@override String get ember => 'glöd';
	@override String get paper => 'Papper';
	@override String get oled => 'OLED';
	@override String get line => 'Linje';
	@override String get ocean => 'Ocean';
	@override String get ultraviolet => 'Ultraviolett';
	@override String get matcha => 'Matcha';
	@override String get sunset => 'Solnedgång';
	@override String get gold => 'Guld';
	@override String get titanium => 'Titan';
	@override String get glass => 'Glas';
	@override String get crt => 'CRT';
	@override String get vhs => 'VHS';
	@override String get synthwave => 'Synthwave';
	@override String get pixel => 'Pixel';
	@override String get neon => 'Neon';
	@override String get sticker => 'Klistermärke';
	@override String get ticket => 'Biljett';
	@override String get pop => 'Pop';
	@override String get strata => 'Strata';
	@override String get facet => 'Fasett';
	@override String get tilde => 'Tilde';
}

// Path: common.ratingSource
class _Translations$common$ratingSource$sv extends Translations$common$ratingSource$en {
	_Translations$common$ratingSource$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get critic => 'Kritiker';
	@override String get audience => 'Publik';
	@override String get imdb => 'IMDb';
	@override String get tmdb => 'TMDB';
	@override String get rottenTomatoes => 'Rotten Tomatoes';
	@override String get simkl => 'Simkl';
	@override String get mal => 'MyAnimeList';
	@override String get anilist => 'AniList';
	@override String get trakt => 'Trakt';
	@override String get rottenTomatoesCritic => 'Rotten Tomatoes-kritiker';
	@override String get rottenTomatoesAudience => 'Rotten Tomatoes-publik';
	@override String get metacritic => 'Metacritic';
	@override String get letterboxd => 'Letterboxd';
}

// Path: common.mediaKind
class _Translations$common$mediaKind$sv extends Translations$common$mediaKind$en {
	_Translations$common$mediaKind$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get movie => 'Film';
	@override String get show => 'Serie';
	@override String get season => 'Säsong';
	@override String get episode => 'Avsnitt';
	@override String get artist => 'Artist';
	@override String get album => 'Album';
	@override String get track => 'Låt';
	@override String get collection => 'Samling';
	@override String get playlist => 'Spellista';
	@override String get clip => 'Klipp';
	@override String get photo => 'Foto';
	@override String get folder => 'Mapp';
}

// Path: supporter.errors
class _Translations$supporter$errors$sv extends Translations$supporter$errors$en {
	_Translations$supporter$errors$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get storeUnavailable => 'Köp är inte tillgängliga. Kontrollera att du är inloggad i butiken och att köp är tillåtna på den här enheten.';
	@override String get productNotFound => 'Supporterköpet är inte tillgängligt i din butik just nu.';
	@override String get productQueryFailed => 'Det gick inte att ladda priset. Kontrollera din anslutning och försök igen.';
	@override String get purchaseFailed => 'Köpet gick inte igenom. Försök igen.';
	@override String get restoreFailed => 'Det gick inte att nå butiken för att återställa ditt köp. Försök igen.';
	@override String get nothingToRestore => 'Inget supporterköp hittades för detta butikskonto.';
}

// Path: themeEditor.slots
class _Translations$themeEditor$slots$sv extends Translations$themeEditor$slots$en {
	_Translations$themeEditor$slots$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get bg => 'Bakgrund';
	@override String get surface => 'Yta';
	@override String get outline => 'Disposition';
	@override String get text => 'Text';
	@override String get textMuted => 'Sekundär text';
	@override String get accent => 'Accent';
}

// Path: themeEditor.contrast
class _Translations$themeEditor$contrast$sv extends Translations$themeEditor$contrast$en {
	_Translations$themeEditor$contrast$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get textOnBg => 'Text på bakgrund';
	@override String get textOnSurface => 'Text på ytan';
	@override String get textMutedOnBg => 'Sekundär text på bakgrund';
	@override String get textMutedOnSurface => 'Sekundär text på ytan';
	@override String get accentOnBg => 'Accent på bakgrunden';
	@override String get accentOnSurface => 'Accent på ytan';
	@override String get labelOnAccent => 'Knappetikett på accent';
}

// Path: hotkeys.actions
class _Translations$hotkeys$actions$sv extends Translations$hotkeys$actions$en {
	_Translations$hotkeys$actions$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get playPause => 'Spela/Pausa';
	@override String get volumeUp => 'Höj volym';
	@override String get volumeDown => 'Sänk volym';
	@override String seekForward({required Object seconds}) => 'Spola framåt (${seconds}s)';
	@override String seekBackward({required Object seconds}) => 'Spola bakåt (${seconds}s)';
	@override String get fullscreenToggle => 'Växla helskärm';
	@override String get muteToggle => 'Växla ljud av';
	@override String get subtitleToggle => 'Växla undertexter';
	@override String get audioTrackNext => 'Nästa ljudspår';
	@override String get subtitleTrackNext => 'Nästa undertextspår';
	@override String get chapterNext => 'Nästa kapitel';
	@override String get chapterPrevious => 'Föregående kapitel';
	@override String get episodeNext => 'Nästa avsnitt';
	@override String get episodePrevious => 'Föregående avsnitt';
	@override String get speedIncrease => 'Öka hastighet';
	@override String get speedDecrease => 'Minska hastighet';
	@override String get speedReset => 'Återställ hastighet';
	@override String get zoomIn => 'Zooma in';
	@override String get zoomOut => 'Zooma ut';
	@override String get zoomReset => 'Återställ zoom';
	@override String get subSeekNext => 'Hoppa till nästa undertext';
	@override String get subSeekPrev => 'Hoppa till föregående undertext';
	@override String get shaderToggle => 'Växla shaders';
	@override String get skipMarker => 'Hoppa över intro/eftertexter';
	@override String get screenshot => 'Ta skärmbild';
}

// Path: videoControls.pipErrors
class _Translations$videoControls$pipErrors$sv extends Translations$videoControls$pipErrors$en {
	_Translations$videoControls$pipErrors$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get androidVersion => 'Kräver Android 8.0 eller nyare';
	@override String get iosVersion => 'Kräver iOS 15.0 eller nyare';
	@override String get permissionDisabled => 'Bild-i-bild är inaktiverat. Aktivera det i systeminställningarna.';
	@override String get notSupported => 'Denna enhet stöder inte bild-i-bild-läge';
	@override String get voSwitchFailed => 'Kunde inte byta videoutgång för bild-i-bild';
	@override String get failed => 'Bild-i-bild kunde inte starta';
	@override String get prepareFailed => 'Bild-i-bild kunde inte förberedas';
	@override String unknown({required Object error}) => 'Ett fel uppstod: ${error}';
}

// Path: accountPreferences.groups
class _Translations$accountPreferences$groups$sv extends Translations$accountPreferences$groups$en {
	_Translations$accountPreferences$groups$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get audioAndSubtitles => 'Ljud och undertexter';
	@override String get libraryDisplay => 'Bibliotek';
	@override String get personalMedia => 'Personliga media';
}

// Path: accountPreferences.subtitleModes
class _Translations$accountPreferences$subtitleModes$sv extends Translations$accountPreferences$subtitleModes$en {
	_Translations$accountPreferences$subtitleModes$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get none => 'Manuellt vald';
	@override String get noneDescription => 'Slår aldrig på undertexter av sig själv.';
	@override String get defaultMode => 'Följ spårens flaggor';
	@override String get defaultModeDescription => 'Använd de standard- och forcerade flaggor som lagras på varje undertextspår.';
	@override String get always => 'Alltid aktiverad';
	@override String get alwaysDescription => 'Slå på ett undertextspår på det föredragna språket när ett sådant finns.';
	@override String get onlyForced => 'Endast forcerade undertexter';
	@override String get onlyForcedDescription => 'Ladda endast spår som är markerade som forcerade.';
	@override String get smart => 'Visas med ljud på främmande språk';
	@override String get smartDescription => 'Slå på undertexter endast när ljudet är på ett annat språk.';
}

// Path: accountPreferences.subtitleAccessibilityOptions
class _Translations$accountPreferences$subtitleAccessibilityOptions$sv extends Translations$accountPreferences$subtitleAccessibilityOptions$en {
	_Translations$accountPreferences$subtitleAccessibilityOptions$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get preferNonSdh => 'Föredra icke-SDH-undertexter';
	@override String get preferSdh => 'Föredra SDH-undertexter';
	@override String get onlySdh => 'Endast SDH-undertexter';
	@override String get onlyNonSdh => 'Endast icke-SDH-undertexter';
}

// Path: accountPreferences.forcedSubtitleOptions
class _Translations$accountPreferences$forcedSubtitleOptions$sv extends Translations$accountPreferences$forcedSubtitleOptions$en {
	_Translations$accountPreferences$forcedSubtitleOptions$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get preferNonForced => 'Föredra icke-forcerade undertexter';
	@override String get preferForced => 'Föredra forcerade undertexter';
	@override String get onlyForced => 'Endast forcerade undertexter';
	@override String get onlyNonForced => 'Endast icke-forcerade undertexter';
}

// Path: accountPreferences.watchedIndicatorOptions
class _Translations$accountPreferences$watchedIndicatorOptions$sv extends Translations$accountPreferences$watchedIndicatorOptions$en {
	_Translations$accountPreferences$watchedIndicatorOptions$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get none => 'Aldrig';
	@override String get moviesAndShows => 'Filmer och TV-serier';
	@override String get movies => 'Endast filmer';
	@override String get shows => 'Endast TV-serier';
}

// Path: accountPreferences.mediaReviewsOptions
class _Translations$accountPreferences$mediaReviewsOptions$sv extends Translations$accountPreferences$mediaReviewsOptions$en {
	_Translations$accountPreferences$mediaReviewsOptions$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get usersAndCritics => 'Användare och kritiker';
	@override String get usersOnly => 'Endast användare';
	@override String get criticsOnly => 'Endast kritiker';
	@override String get nobody => 'Dolda';
}

// Path: discover.person
class _Translations$discover$person$sv extends Translations$discover$person$en {
	_Translations$discover$person$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get born => 'Född';
	@override String get died => 'dog';
	@override String get birthplace => 'Födelseplats';
	@override String dateWithAge({required Object date, required Object age}) => '${date} (ålder ${age})';
	@override String dateWithAgeAtDeath({required Object date, required Object age}) => '${date} (åldrad ${age})';
}

// Path: libraries.tabs
class _Translations$libraries$tabs$sv extends Translations$libraries$tabs$en {
	_Translations$libraries$tabs$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get recommended => 'Rekommenderat';
	@override String get browse => 'Bläddra';
	@override String get collections => 'Samlingar';
	@override String get playlists => 'Spellistor';
}

// Path: libraries.groupings
class _Translations$libraries$groupings$sv extends Translations$libraries$groupings$en {
	_Translations$libraries$groupings$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gruppering';
	@override String get all => 'Alla';
	@override String get movies => 'Filmer';
	@override String get shows => 'Serier';
	@override String get seasons => 'Säsonger';
	@override String get episodes => 'Avsnitt';
	@override String get artists => 'Artister';
	@override String get albums => 'Album';
	@override String get tracks => 'Låtar';
	@override String get folders => 'Mappar';
}

// Path: libraries.filterCategories
class _Translations$libraries$filterCategories$sv extends Translations$libraries$filterCategories$en {
	_Translations$libraries$filterCategories$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get genre => 'Genre';
	@override String get year => 'År';
	@override String get contentRating => 'Åldersgräns';
	@override String get tag => 'Tagg';
	@override String get unwatched => 'Osedda';
	@override String get unplayed => 'Ospelat';
	@override String get favorites => 'Favoriter';
	@override String get filePath => 'Filsökväg';
}

// Path: libraries.sortLabels
class _Translations$libraries$sortLabels$sv extends Translations$libraries$sortLabels$en {
	_Translations$libraries$sortLabels$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Titel';
	@override String get dateAdded => 'Tillagd';
	@override String get releaseDate => 'Releasedatum';
	@override String get rating => 'Betyg';
	@override String get communityRating => 'Användarbetyg';
	@override String get criticRating => 'Kritikerbetyg';
	@override String get userRating => 'Användarbetyg';
	@override String get datePlayed => 'Speldatum';
	@override String get playCount => 'Antal spelningar';
	@override String get productionYear => 'Produktionsår';
	@override String get runtime => 'Speltid';
	@override String get officialRating => 'Officiell klassificering';
	@override String get premiereDate => 'Premiärdatum';
	@override String get startDate => 'Startdatum';
	@override String get airTime => 'Sändningstid';
	@override String get studio => 'Studio';
	@override String get random => 'Slumpmässigt';
	@override String get dateShared => 'Delningsdatum';
	@override String get latestEpisodeAirDate => 'Senaste avsnittets sändningsdatum';
	@override String get lastEpisodeDateAdded => 'Datum då senaste avsnittet lades till';
	@override String get dateDownloaded => 'Nedladdningsdatum';
	@override String get size => 'Storlek';
	@override String get library => 'Bibliotek';
}

// Path: libraries.advancedFilters
class _Translations$libraries$advancedFilters$sv extends Translations$libraries$advancedFilters$en {
	_Translations$libraries$advancedFilters$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get include => 'Inkludera';
	@override String get exclude => 'Uteslut';
	@override String get any => 'Vilken som helst';
	@override String get yes => 'Ja';
	@override String get no => 'Nej';
	@override String not({required Object value}) => 'Inte ${value}';
	@override String valueCount({required Object count}) => '${count} har valts';
	@override String valueCountExcluded({required Object count}) => '${count} exkluderas';
	@override String get searchValues => 'Sök värden';
	@override String get noValues => 'Inga värden';
	@override String get matchContains => 'Innehåller';
	@override String get matchNotContains => 'Innehåller inte';
	@override String get matchIs => 'är';
	@override String get matchIsNot => 'är inte';
	@override String get matchBeginsWith => 'Börjar med';
	@override String get matchEndsWith => 'Slutar med';
	@override String get textHint => 'Typ för att matcha';
	@override String get from => 'Från';
	@override String get to => 'Till';
	@override String range({required Object from, required Object to}) => '${from} till ${to}';
	@override String atLeast({required Object value}) => '${value} och uppåt';
	@override String atMost({required Object value}) => 'Upp till ${value}';
	@override String dateLastDays({required Object count}) => 'Senaste ${count} dagar';
	@override String get dateLastYear => 'Förra året';
	@override String dateOlderThanDays({required Object count}) => 'Äldre än ${count} dagar';
	@override String get dateOlderThanYear => 'Äldre än ett år';
}

// Path: explore.rows
class _Translations$explore$rows$sv extends Translations$explore$rows$en {
	_Translations$explore$rows$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get watchlist => 'Bevakningslista';
	@override String get recommendedMovies => 'Rekommenderade filmer';
	@override String get recommendedShows => 'Rekommenderade serier';
	@override String get trendingMovies => 'Populära filmer just nu';
	@override String get trendingShows => 'Populära serier just nu';
	@override String get popularMovies => 'Populära filmer';
	@override String get popularShows => 'Populära serier';
	@override String get trendingAnime => 'Populär anime just nu';
	@override String get suggestedAnime => 'Föreslagen anime';
	@override String get airingAnime => 'Bästa anime som sänds nu';
	@override String get popularAnime => 'Mest populära anime';
	@override String get trending => 'Trendar nu';
	@override String get upcomingMovies => 'Kommande filmer';
	@override String get upcomingShows => 'Kommande serier';
}

// Path: explore.status
class _Translations$explore$status$sv extends Translations$explore$status$en {
	_Translations$explore$status$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get airing => 'Pågår';
	@override String get ended => 'Avslutad';
	@override String get canceled => 'Nedlagd';
	@override String get upcoming => 'Kommande';
}

// Path: explore.badge
class _Translations$explore$badge$sv extends Translations$explore$badge$en {
	_Translations$explore$badge$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String rankPopular({required Object n}) => '#${n} populär';
	@override String rankAiring({required Object n}) => '#${n} sänds nu';
	@override String rankRated({required Object n}) => '#${n} bäst betygsatta';
	@override String rankTrending({required Object n}) => '#${n} trendar';
	@override String rankSeasonal({required Object n, required Object season}) => '#${n} i ${season}';
	@override String watchingNow({required Object n}) => '${n} tittar nu';
	@override String get available => 'Tillgänglig';
	@override String get partiallyAvailable => 'Delvis tillgänglig';
	@override String get availableIn4k => '4K tillgängligt';
	@override String get requested => 'Begärd';
	@override String get pendingApproval => 'Väntar på godkännande';
	@override String get processing => 'Bearbetas';
	@override String get declined => 'Avvisad';
	@override String get requestFailed => 'Begäran misslyckades';
	@override String get requested4k => '4K begärd';
	@override String seasonsAvailable({required Object available, required Object total}) => '${available}/${total} säsonger';
	@override String nextEpisodeIn({required Object episode, required Object duration}) => 'Avsnitt ${episode} om ${duration}';
	@override String nextAiringIn({required Object duration}) => 'Nästa om ${duration}';
	@override String episodesShort({required Object n}) => '${n} avsn.';
	@override String minutesPerEpisode({required Object n}) => '${n} min/avsn';
	@override String get adult => '18+';
}

// Path: explore.stats
class _Translations$explore$stats$sv extends Translations$explore$stats$en {
	_Translations$explore$stats$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String listed({required Object n}) => '${n} listade';
	@override String viewersDay({required Object n}) => '${n} tittade idag';
	@override String viewersWeek({required Object n}) => '${n} tittade denna vecka';
	@override String viewersMonth({required Object n}) => '${n} tittade denna månad';
	@override String viewersYear({required Object n}) => '${n} tittade i år';
	@override String viewersAllTime({required Object n}) => '${n} tittare';
	@override String planning({required Object n}) => '${n} planerar att titta';
	@override String favorited({required Object n}) => '${n} favoriter';
	@override String dropRate({required Object percent}) => '${percent} hoppade av';
	@override String comments({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n,
		one: '${n} kommentar',
		other: '${n} kommentarer',
	);
	@override String votes({required Object n}) => '${n} röster';
	@override String watching({required Object n}) => '${n} tittar på den';
	@override String completed({required Object n}) => '${n} avslutade';
	@override String onHold({required Object n}) => '${n} på paus';
	@override String dropped({required Object n}) => '${n} hoppade av';
}

// Path: explore.season
class _Translations$explore$season$sv extends Translations$explore$season$en {
	_Translations$explore$season$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get winter => 'Vinter';
	@override String get spring => 'Vår';
	@override String get summer => 'Sommar';
	@override String get fall => 'Höst';
	@override String withYear({required Object season, required Object year}) => '${season} ${year}';
}

// Path: explore.format
class _Translations$explore$format$sv extends Translations$explore$format$en {
	_Translations$explore$format$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get tv => 'TV';
	@override String get tvShort => 'TV-short';
	@override String get movie => 'Film';
	@override String get special => 'Special';
	@override String get ova => 'OVA';
	@override String get ona => 'ONA';
	@override String get music => 'Musik';
	@override String get other => 'Annat';
}

// Path: explore.sourceMaterial
class _Translations$explore$sourceMaterial$sv extends Translations$explore$sourceMaterial$en {
	_Translations$explore$sourceMaterial$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get original => 'Original';
	@override String get manga => 'Manga';
	@override String get lightNovel => 'Light novel';
	@override String get novel => 'Roman';
	@override String get visualNovel => 'Visual novel';
	@override String get game => 'Spel';
	@override String get webComic => 'Webbserie';
	@override String get musicRelease => 'Musik';
	@override String get otherMedia => 'Annat';
}

// Path: explore.creditRole
class _Translations$explore$creditRole$sv extends Translations$explore$creditRole$en {
	_Translations$explore$creditRole$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get actor => 'Skådespelare';
	@override String get director => 'Regissör';
	@override String get writer => 'Författare';
	@override String get producer => 'Producent';
	@override String get creator => 'Skapare';
	@override String get composer => 'Kompositör';
}

// Path: explore.relation
class _Translations$explore$relation$sv extends Translations$explore$relation$en {
	_Translations$explore$relation$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get prequel => 'Prequel';
	@override String get sequel => 'Uppföljare';
	@override String get sideStory => 'Bihistoria';
	@override String get spinOff => 'Spin-off';
	@override String get alternativeVersion => 'Alternativ version';
	@override String get summary => 'Sammanfattning';
	@override String get parentStory => 'Huvudberättelse';
	@override String get adaptation => 'Adaption';
	@override String get other => 'Relaterat';
}

// Path: explore.detail
class _Translations$explore$detail$sv extends Translations$explore$detail$en {
	_Translations$explore$detail$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get originalTitle => 'Originaltitel';
	@override String get alsoKnownAs => 'Även känd som';
	@override String get studios => 'Studior';
	@override String get country => 'Land';
	@override String get language => 'Språk';
	@override String get released => 'Släppt';
	@override String get physicalRelease => 'På skiva';
	@override String get ended => 'Avslutad';
	@override String addedOn({required Object date}) => 'Tillagd ${date}';
	@override String get yourRating => 'Ditt betyg';
	@override String get budget => 'Budget';
	@override String get revenue => 'Box office';
	@override String get contentAdvisory => 'Åldersvägledning';
	@override String get tags => 'Taggar';
	@override String get revealSpoilerTags => 'Visa spoiler-taggar';
	@override String get links => 'Länkar';
	@override String get watchOn => 'Titta på';
	@override String get watchTrailer => 'Titta på trailer';
	@override String openOn({required Object site}) => 'Öppna på ${site}';
	@override String get crew => 'Besättning';
	@override String get ratings => 'Betyg';
	@override String get schedule => 'Schema';
	@override String recommendedByUsers({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n,
		one: 'Rekommenderad av ${n} användare',
		other: 'Rekommenderad av ${n} användare',
	);
	@override String recommendedBy({required Object who}) => 'Rekommenderad av ${who}';
	@override String favoritedBy({required Object who}) => 'Favoritmarkerad av ${who}';
	@override String unairedEpisodes({required Object n}) => '${n} inte sända ännu';
	@override String recommendedByPercent({required Object percent}) => 'Rekommenderad av ${percent} av tittarna';
	@override String get relatedTitles => 'Relaterade titlar';
	@override String get background => 'Bakgrund';
}

// Path: liveTv.recordSettings
class _Translations$liveTv$recordSettings$sv extends Translations$liveTv$recordSettings$en {
	_Translations$liveTv$recordSettings$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get startEarly => 'Börja tidigare (sekunder)';
	@override String get endLate => 'Sluta senare (sekunder)';
	@override String get newOnly => 'Endast nya avsnitt';
	@override String get anyChannel => 'Spela in på alla kanaler';
	@override String get anyTime => 'Spela in när som helst';
	@override String get skipInLibrary => 'Hoppa över avsnitt som redan finns i biblioteket';
	@override String get keepUpTo => 'Avsnitt att behålla';
	@override String get keepUpToHint => '0 behåller alla avsnitt';
}

// Path: music.discography
class _Translations$music$discography$sv extends Translations$music$discography$en {
	_Translations$music$discography$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get singlesAndEps => 'Singlar och EP';
	@override String get live => 'Live';
	@override String get compilations => 'Samlingar';
}

// Path: watchTogether.notices
class _Translations$watchTogether$notices$sv extends Translations$watchTogether$notices$en {
	_Translations$watchTogether$notices$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String pressedPlay({required Object name}) => '${name} tryckte på play';
	@override String get playbackStarted => 'Uppspelningen startade';
	@override String paused({required Object name}) => '${name} pausade';
	@override String get playbackPaused => 'Uppspelningen pausad';
	@override String jumpedTo({required Object name, required Object position}) => '${name} hoppade till ${position}';
	@override String roomJumpedTo({required Object position}) => 'Hoppade till ${position}';
	@override String changedSpeed({required Object name, required Object speed}) => '${name} ändrade hastigheten till ${speed}';
	@override String speedChanged({required Object speed}) => 'Hastighet inställd på ${speed}';
	@override String startedMedia({required Object name, required Object title}) => '${name} startade ${title}';
	@override String mediaStarted({required Object title}) => 'Spelar nu ${title}';
	@override String stoppedMedia({required Object name}) => '${name} stoppade videon';
	@override String get mediaStopped => 'Videon stannade';
	@override String waitingFor({required Object name}) => 'Väntar på ${name}...';
	@override String get waitingForSomeone => 'Väntar på att någon ska komma ikapp...';
	@override String get finished => 'Färdig';
	@override String hostChangedTo({required Object name}) => '${name} är nu värden';
	@override String get youAreNowHost => 'Du är nu värden';
	@override String joined({required Object name}) => '${name} gick med';
	@override String left({required Object name}) => '${name} lämnade';
	@override String get controlRefused => 'Endast värden kan styra uppspelningen';
	@override String get searchFailed => 'Vissa servrar kunde inte sökas efter rummets video';
	@override String get playBlocked => 'Tryck på play för att starta';
	@override String get shareFailed => 'Det gick inte att dela den här videon med rummet';
	@override String get notShared => 'Nedladdade videor delas inte med rummet';
	@override String get openFailed => 'Det gick inte att öppna rummets video';
}

// Path: watchTogether.ended
class _Translations$watchTogether$ended$sv extends Translations$watchTogether$ended$en {
	_Translations$watchTogether$ended$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get ended => 'Värden avslutade rummet';
	@override String get kicked => 'Du togs bort från rummet';
	@override String get expired => 'Rummet gick ut';
	@override String get replaced => 'Du gick med i det här rummet på en annan enhet';
	@override String get lost => 'Förlorade anslutningen till rummet';
}

// Path: watchTogether.errors
class _Translations$watchTogether$errors$sv extends Translations$watchTogether$errors$en {
	_Translations$watchTogether$errors$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get invalidCode => 'Det är inte en rumskod. Koder har 6 bokstäver och siffror, utan 0, 1, I, L eller O.';
	@override String get roomNotFound => 'Inget rum har den koden. Det kan ha tagit slut.';
	@override String get roomFull => 'Det rummet är fullt.';
	@override String get roomLocked => 'Värden låste rummet.';
	@override String get relayFull => 'Watch Together är upptagen just nu. Försök igen senare.';
	@override String get unreachable => 'Det gick inte att nå Watch Together-reläet. Kontrollera din anslutning.';
	@override String get rateLimited => 'För många försök. Vänta ett ögonblick och försök igen.';
	@override String get clientBlocked => 'Den här versionen av Luroka kan inte använda reläet. Uppdatera appen.';
	@override String get forbidden => 'Endast värden kan göra det.';
	@override String get notInRoom => 'Du är inte i ett rum.';
	@override String get alreadyInRoom => 'Du är redan i ett rum.';
	@override String get resumeFailed => 'Det gick inte att gå med i rummet igen.';
	@override String get unsupported => 'Reläet stöder inte detta.';
	@override String get generic => 'Något gick fel. Försök igen.';
}

// Path: downloads.backgroundWarning
class _Translations$downloads$backgroundWarning$sv extends Translations$downloads$backgroundWarning$en {
	_Translations$downloads$backgroundWarning$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get bannerBlocked => 'Nedladdningar stoppas när du lämnar appen';
	@override String get bannerDegraded => 'Bakgrundsnedladdningar kan begränsas';
	@override String get bannerAction => 'Detaljer';
	@override String get sheetTitle => 'Bakgrundsnedladdningar är blockerade';
	@override String get sheetTitleDegraded => 'Bakgrundsnedladdningar kan begränsas';
	@override String get sheetIntro => 'Android hindrar Luroka från att ladda ned tillförlitligt i bakgrunden.';
	@override String get sheetIntroDegraded => 'Din enhet begränsar när Luroka kan ladda ned i bakgrunden.';
	@override String get reasonBackgroundRestricted => 'Lurokas bakgrundsanvändning är begränsad. Ställ in batteri- eller bakgrundsanvändningen på "Obegränsad".';
	@override String get reasonStandbyRestricted => 'Android har satt Luroka i ett begränsat vänteläge. Ställ in batterianvändningen på "Obegränsad".';
	@override String get reasonDownloadChannelBlocked => 'Aviseringar om nedladdningar är avstängda, så förlopp och kontroller kanske inte är tillgängliga.';
	@override String get reasonNotificationsDisabled => 'Aviseringar är avstängda. På Android 13 eller senare krävs de för långa bakgrundsnedladdningar.';
	@override String get reasonDataSaver => 'Databesparing är aktiverad, vilket blockerar bakgrundsnedladdningar via mobildata. Nedladdningar bör fortfarande fungera via Wi-Fi.';
	@override String get reasonOemUnknown => 'Nedladdningar stoppades upprepade gånger när Luroka kördes i bakgrunden. Kontrollera Lurokas inställningar för batteri- eller bakgrundsanvändning.';
	@override String get openSettings => 'Öppna inställningar';
	@override String get stillNotWorking => 'Enhetsspecifik hjälp';
	@override String get stillNotWorkingDescription => 'Se anvisningar för din enhet eller skicka en logg från Inställningar › Visa loggar om problemet kvarstår.';
	@override String get dialogTitle => 'Nedladdningar kanske inte slutförs';
	@override String get dialogDownloadAnyway => 'Ladda ned ändå';
	@override String get dialogFixFirst => 'Åtgärda först';
	@override String get statusTile => 'Bakgrundsnedladdningar';
	@override String get statusOk => 'Får köras i bakgrunden';
	@override String get statusBlocked => 'Blockeras av systeminställningar';
	@override String get statusDegraded => 'Begränsas av systeminställningar';
	@override String get statusUnknown => 'Inte kontrollerat än';
	@override String get settingsUnavailable => 'Det gick inte att öppna systeminställningarna på den här enheten';
	@override String get linkUnavailable => 'Det gick inte att öppna dontkillmyapp.com på den här enheten';
}

// Path: downloads.groupings
class _Translations$downloads$groupings$sv extends Translations$downloads$groupings$en {
	_Translations$downloads$groupings$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get library => 'Bibliotek';
	@override String get collections => 'Samlingar';
}

// Path: companionRemote.session
class _Translations$companionRemote$session$sv extends Translations$companionRemote$session$en {
	_Translations$companionRemote$session$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get startingServer => 'Startar fjärrserver...';
	@override String get hostAddress => 'Värdadress';
	@override String get connected => 'Ansluten';
	@override String get serverRunning => 'Fjärrserver aktiv';
	@override String get serverStopped => 'Fjärrserver stoppad';
	@override String get serverRunningDescription => 'Mobila enheter i nätverket kan ansluta till appen';
	@override String get serverStoppedDescription => 'Starta servern så att mobila enheter kan ansluta';
	@override String get usePhoneToControl => 'Använd din mobila enhet för att styra appen';
	@override String get startServer => 'Starta server';
	@override String get stopServer => 'Stoppa server';
	@override String get minimize => 'Minimera';
	@override String get manualAddressHint => 'Manuell anslutningsadress:';
}

// Path: companionRemote.pairing
class _Translations$companionRemote$pairing$sv extends Translations$companionRemote$pairing$en {
	_Translations$companionRemote$pairing$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get discoveryDescription => 'Luroka-enheter med samma Plex-konto visas här';
	@override String get hostAddressHint => '192.168.1.100:48632';
	@override String get connecting => 'Ansluter...';
	@override String get searchingForDevices => 'Söker efter enheter...';
	@override String get noDevicesFound => 'Inga enheter hittades i ditt nätverk';
	@override String get noDevicesHint => 'Öppna Luroka på datorn och använd samma wifi';
	@override String get availableDevices => 'Tillgängliga enheter';
	@override String get manualConnection => 'Manuell anslutning';
	@override String get cryptoInitFailed => 'Kunde inte starta säker anslutning. Logga in på Plex först.';
	@override String get validationHostRequired => 'Ange värdadress';
	@override String get validationHostFormat => 'Formatet måste vara IP:port (t.ex. 192.168.1.100:48632)';
	@override String get connectionTimedOut => 'Anslutningen tog för lång tid. Använd samma nätverk på båda enheterna.';
	@override String get sessionNotFound => 'Enheten hittades inte. Kontrollera att Luroka körs på värden.';
	@override String get authFailed => 'Autentiseringen misslyckades. Båda enheterna måste använda samma Plex-konto.';
	@override String failedToConnect({required Object error}) => 'Kunde inte ansluta: ${error}';
}

// Path: companionRemote.remote
class _Translations$companionRemote$remote$sv extends Translations$companionRemote$remote$en {
	_Translations$companionRemote$remote$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get disconnectConfirm => 'Vill du koppla från fjärrsessionen?';
	@override String get reconnecting => 'Återansluter...';
	@override String attemptOf({required Object current}) => 'Försök ${current} av 5';
	@override String get retryNow => 'Försök nu';
	@override String get tabRemote => 'Fjärrkontroll';
	@override String get tabPlay => 'Spela';
	@override String get tabMore => 'Mer';
	@override String get menu => 'Meny';
	@override String get tabNavigation => 'Fliknavigering';
	@override String get tabDiscover => 'Upptäck';
	@override String get tabLibraries => 'Bibliotek';
	@override String get tabSearch => 'Sök';
	@override String get tabDownloads => 'Nedladdningar';
	@override String get tabSettings => 'Inställningar';
	@override String get previous => 'Föregående';
	@override String get playPause => 'Spela/Pausa';
	@override String get next => 'Nästa';
	@override String get seekBack => 'Spola bakåt';
	@override String get stop => 'Stopp';
	@override String get seekForward => 'Spola framåt';
	@override String get volume => 'Volym';
	@override String get volumeDown => 'Ner';
	@override String get volumeUp => 'Upp';
	@override String get fullscreen => 'Helskärm';
	@override String get subtitles => 'Undertexter';
	@override String get audio => 'Ljud';
	@override String get searchHint => 'Sök på datorn...';
}

// Path: companionRemote.errors
class _Translations$companionRemote$errors$sv extends Translations$companionRemote$errors$en {
	_Translations$companionRemote$errors$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get noNetworkInterface => 'Inget nätverksgränssnitt hittades';
	@override String get authenticationFailed => 'Autentiseringen misslyckades';
	@override String serverStartFailed({required Object error}) => 'Det gick inte att starta fjärrservern: ${error}';
	@override String commandFailed({required Object error}) => 'Det gick inte att skicka fjärrkommandot: ${error}';
	@override String get joinTimedOut => 'Det tog för lång tid att ansluta till sessionen';
	@override String get failedToConnectAnyAddress => 'Det gick inte att ansluta till någon adress';
	@override String connectionLostAfterAttempts({required Object attempts}) => 'Anslutningen bröts efter ${attempts} försök';
	@override String get connectionLost => 'Anslutningen bröts';
}

// Path: services.names
class _Translations$services$names$sv extends Translations$services$names$en {
	_Translations$services$names$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get mal => 'MyAnimeList';
	@override String get anilist => 'AniList';
	@override String get simkl => 'Simkl';
	@override String get seerr => 'Seerr';
	@override String get mdblist => 'MDBList';
}

// Path: services.simklReconnect
class _Translations$services$simklReconnect$sv extends Translations$services$simklReconnect$en {
	_Translations$services$simklReconnect$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Återanslut Simkl';
	@override String get subtitle => 'Simkl drar tillbaka inloggningsmetoden som den här anslutningen använder. Återanslutning öppnar simkl.com för att godkänna Luroka — Luroka ser aldrig ditt lösenord. Din visningshistorik finns kvar på Simkl.';
}

// Path: services.deviceCode
class _Translations$services$deviceCode$sv extends Translations$services$deviceCode$en {
	_Translations$services$deviceCode$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String title({required Object service}) => 'Aktivera Luroka på ${service}';
	@override String get instructions => 'Skanna QR-koden eller gå till adressen nedan och ange den här koden:';
	@override String openToActivate({required Object service}) => 'Öppna ${service} för att aktivera';
	@override String get copyCode => 'Kopiera aktiveringskod';
	@override String get waitingForAuthorization => 'Väntar på auktorisering…';
	@override String get codeCopied => 'Kod kopierad';
}

// Path: services.oauthProxy
class _Translations$services$oauthProxy$sv extends Translations$services$oauthProxy$en {
	_Translations$services$oauthProxy$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String title({required Object service}) => 'Logga in på ${service}';
	@override String get body => 'Skanna den här QR-koden eller öppna URL:en på valfri enhet.';
	@override String openToSignIn({required Object service}) => 'Öppna ${service} för att logga in';
}

// Path: services.pendingAuth
class _Translations$services$pendingAuth$sv extends Translations$services$pendingAuth$en {
	_Translations$services$pendingAuth$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get copyUrl => 'Kopiera inloggnings-URL';
	@override String get urlCopied => 'URL kopierad';
}

// Path: services.libraryFilter
class _Translations$services$libraryFilter$sv extends Translations$services$libraryFilter$en {
	_Translations$services$libraryFilter$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Biblioteksfilter';
	@override String get subtitleAllSyncing => 'Synkroniserar alla bibliotek';
	@override String get subtitleNoneSyncing => 'Ingenting synkroniseras';
	@override String subtitleBlocked({required Object count}) => '${count} blockerade';
	@override String subtitleAllowed({required Object count}) => '${count} tillåtna';
	@override String get mode => 'Filterläge';
	@override String get modeBlacklist => 'Blockeringslista';
	@override String get modeWhitelist => 'Tillåtelselista';
	@override String get modeHintBlacklist => 'Synkronisera alla bibliotek utom de som markeras nedan.';
	@override String get modeHintWhitelist => 'Synkronisera endast de bibliotek som markeras nedan.';
	@override String get libraries => 'Bibliotek';
	@override String get noLibraries => 'Inga bibliotek tillgängliga';
}

/// The flat map containing all translations for locale <sv>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsSv {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'mobileLibrary.pickerSubtitle' => 'Välj en samling att utforska',
			'mobileLibrary.searchLibraries' => 'Sök i bibliotek',
			'mobileLibrary.noLibraries' => 'Inga matchande bibliotek',
			'mobileLibrary.ascending' => 'Stigande',
			'mobileLibrary.descending' => 'Fallande',
			'mobileLibrary.sort' => 'Sortera',
			'mobileLibrary.unwatchedCount' => ({required Object count}) => '${count} osettade avsnitt',
			'mobileLibrary.latestEpisode' => 'Senaste avsnittet',
			'profileStartup.autoLogin' => 'Öppna den senast använda profilen',
			'profileStartup.autoLoginHint' => 'Öppna automatiskt den sista profilen när den inte kräver en PIN.',
			'profileStartup.allowKidsExit' => 'Tillåt att lämna barnprofilen utan föräldra-PIN',
			'profileStartup.allowKidsExitHint' => 'Barnet kan byta till en annan profil utan föräldra-PIN. Profil-PIN gäller fortfarande.',
			'profileStartup.chooseKidsConnection' => 'Välj ett annat konto eller server',
			'profileStartup.chooseKidsConnectionHint' => 'När du har sparat ansluter du ett separat konto eller väljer en anslutning från en annan profil.',
			'subtitleUpload.chooseFile' => 'Ladda upp undertextfil',
			'subtitleUpload.hint' => 'Välj språket ovan och ladda sedan upp en SRT, ASS, SSA eller VTT-fil till denna server.',
			'subtitleUpload.success' => 'Undertext laddad upp till servern. Det visas när servern uppdaterar objektet.',
			'subtitleUpload.failed' => 'Det gick inte att ladda upp undertexten. Kontrollera fil- och serverbehörigheterna.',
			'personSpotlight.inYourLibraries' => 'i dina bibliotek',
			'personSpotlight.libraryTitles' => ({required Object n}) => 'I dina bibliotek · ${n} titlar',
			'personSpotlight.readBiography' => 'Läs biografi',
			'personSpotlight.newestFirst' => 'Nyaste först',
			'personSpotlight.oldestFirst' => 'Äldst först',
			'personSpotlight.titleAscending' => 'Titel A–Z',
			'personSpotlight.sortTitles' => 'Sortera filmografi',
			'personSpotlight.unwatchedEpisodes' => ({required Object n}) => '${n} osettade avsnitt',
			'personSpotlight.copies' => ({required Object n}) => '${n} bibliotekskopior',
			'personSpotlight.versions' => ({required Object n}) => '${n} filversioner',
			'personSpotlight.retryTitles' => 'Det gick inte att ladda alla titlar. Försök igen',
			'detailExtras.onlineVideos' => 'Trailers & extramaterial',
			'detailExtras.reviews' => 'Recensioner',
			'detailExtras.readReview' => 'Läs hela recensionen',
			'detailExtras.directedBy' => ({required Object name}) => 'Mer regisserad av ${name}',
			'detailExtras.previewUnavailable' => 'Den här förhandsvisningen kunde inte spelas upp. Du kan öppna den i dess ursprungliga app istället.',
			'detailExtras.openExternally' => 'Öppna originalvideon',
			'mobileUi.readMore' => 'Läs mer',
			'mobileUi.readLess' => 'Visa mindre',
			'mobileUi.playbackTools' => 'Uppspelningsalternativ',
			'mobileUi.streamingQuality' => 'Streamingkvalitet',
			'mobileUi.fileVersions' => 'Filversioner',
			'mobileUi.qualityAndVersions' => 'Streamingkvalitet och filversioner',
			'mobileUi.hidePlaybackTools' => 'Dölj uppspelningsverktyg',
			'mobileUi.remaining' => ({required Object time}) => '${time} kvar',
			'mobileUi.endsAt' => ({required Object time}) => 'Slutar vid ${time}',
			'mobileUi.collection' => 'Din samling',
			'mobileUi.nowPlaying' => 'SPELAR NU',
			'mobileUi.popularLibrary' => 'Populärt i ditt bibliotek',
			'mobileUi.weeklyLibrary' => 'Populärt i ditt bibliotek den här veckan',
			'family.title' => 'Profiler & Familj',
			'family.yourPeople' => 'Ditt folk',
			'family.manageHint' => 'Hantera människor, barns säkerhet och visningsaktivitet på den här enheten.',
			'family.people' => 'Människor',
			'family.peopleCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n, one: '${n} person', other: '${n} människor', ), 
			'family.kidsCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n, one: '${n} barn', other: '${n} barn', ), 
			'family.you' => 'Du',
			'family.adult' => 'Vuxen',
			'family.child' => 'Barn',
			'family.adultTeen' => 'Vuxen eller tonåring',
			'family.adultHint' => 'Deras egen profil, valfri Profil PIN och deras egna serveranslutningar.',
			'family.childHint' => 'Åldersgränser, säkra bibliotek och ett barnvänligt utseende. En föräldra-PIN skyddar de här inställningarna.',
			'family.upToAge' => ({required Object age}) => 'Upp till ålder ${age}',
			'family.allAges' => 'Alla åldrar',
			'family.switchProfile' => 'Byt profil',
			'family.switchHint' => 'Välj vem som tittar. Att hantera en person byter inte profil.',
			'family.addPerson' => 'Lägg till person',
			'family.addChild' => 'Lägg till barn',
			'family.addHint' => 'Skapa en vuxen-, tonårs- eller barnprofil på den här enheten.',
			'family.emptyPeople' => 'Gör plats för alla som tittar med dig.',
			'family.emptyKids' => 'Inga barnprofiler än. Lägg till ett barn för att välja åldersgränser och säkra bibliotek.',
			'family.safety' => 'Barn & säkerhet',
			'family.safetyHint' => 'Föräldra-PIN, barnprofiler och åldersgränser.',
			'family.protection' => 'Skydd',
			'family.kidsProfiles' => 'Barnprofiler',
			'family.backupHistory' => 'Backup & historik',
			'family.parentPinOn' => 'Föräldra-PIN aktiverad',
			'family.profilePin' => 'Profil-PIN',
			'family.confirmParentPin' => 'Bekräfta föräldra-PIN',
			'family.parentPinOff' => 'Föräldra-PIN är inte inställd',
			'family.missingPin' => 'Lägg till en föräldra-PIN för att skydda de här inställningarna.',
			'family.hideScope' => 'Dölj barnens aktivitet från Fortsätt titta i denna Luroka-profil. Detta ändrar inte den delade serverns visningshistorik.',
			'family.localScope' => 'Barnprofiler och begränsningar lagras på den här enheten. Profiler som använder samma serverkonto delar fortfarande kontots bevakningsförlopp.',
			'family.clearHistoryConfirm' => 'Vill du tillåta att titlar som barn tittat på visas i Fortsätt titta igen? Barnprofiler, begränsningar, visningstidsstatistik och servervisningshistorik kommer att bevaras.',
			'family.editRestrictions' => 'Redigera barnbegränsningar',
			'family.activity' => 'Visar aktivitet',
			'family.namedActivity' => ({required Object name}) => '${name}s visningsaktivitet',
			'family.thisProfile' => 'Denna profil',
			'family.activityScope' => 'Uppspelningstid registrerad av Luroka på den här enheten för den aktiva profilen. Detta är statistik, inte visningsgränser eller fullständig serverhistorik.',
			'family.activityUnavailable' => 'Visningsaktivitet är inte tillgänglig för den här profilen ännu.',
			'family.finished' => 'Klart',
			'posterDetails.showThemeMusic' => 'Spela temamusik',
			'posterDetails.showThemeMusicDescription' => 'Spela upp en film eller ett programs tema medan dess informationssida är öppen, när den är tillgänglig på servern.',
			'posterDetails.catalogEpisodeInfo' => 'Visa antalet avsnitt och körtid på katalogkort',
			'posterDetails.catalogEpisodeInfoDescription' => 'Visa avsnittsantal och genomsnittlig längd på Upptäck-affischer.',
			'posterDetails.title' => 'Affischdetaljer',
			'posterDetails.description' => 'Visa titeln, årtalet och IMDb-betyget under affischer i Studio, Search, Upptäck och Libraries. Saknade IMDb-betyg förblir dolda. Stäng av för affischer endast för konstverk.',
			'libraryPolish.posterDetails' => 'Affischdetaljer',
			'libraryPolish.showPosterDetails' => 'Visa affischdetaljer · namn, årtal & IMDb',
			'libraryPolish.hidePosterDetails' => 'Dölj affischdetaljer',
			'libraryPolish.overview' => 'Översikt',
			'libraryPolish.refreshing' => 'Uppdaterar biblioteket...',
			'libraryPolish.serverCollections' => 'Alla samlingar på denna server',
			'libraryPolish.serverPlaylists' => 'Alla videospellistor på den här servern',
			'libraryPolish.libraryCollections' => 'Samlingar i detta bibliotek',
			'libraryPolish.searchCollections' => 'Sök i samlingar',
			'libraryPolish.searchPlaylists' => 'Sök spellistor',
			'libraryPolish.searchHint' => 'Sök på namn',
			'libraryPolish.titleAscending' => 'Titel A–Z',
			'libraryPolish.titleDescending' => 'Titel Z–A',
			'libraryPolish.clearFilters' => 'Rensa filter',
			'libraryPolish.playlistEmptyTitle' => 'Dina filmkvällar, i din ordning',
			'libraryPolish.playlistEmptyHint' => 'Öppna en titels Mer-meny och välj Lägg till i spellista för att skapa din första spellista.',
			'libraryPolish.noMatches' => 'Inga matchande namn',
			'libraryPolish.indexing' => 'Söker i hela katalogen...',
			'showSchedule.today' => 'Idag',
			'showSchedule.tomorrow' => 'Imorgon',
			'showSchedule.latestUpcoming' => 'Senaste & kommande',
			'showSchedule.latestEpisode' => 'Senaste avsnittet',
			'showSchedule.upcoming' => 'Kommande',
			'showSchedule.inLibrary' => 'I ditt bibliotek',
			'showSchedule.notInLibrary' => 'Inte i ditt bibliotek',
			'showSchedule.notYetAired' => 'Inte sänt ännu',
			'showSchedule.episode' => ({required Object number}) => 'Avsnitt ${number}',
			'showSchedule.caughtUp' => 'Ni är alla ikapp',
			'showSchedule.finished' => 'Du har avslutat den här serien',
			'showSchedule.nextAirs' => ({required Object date}) => 'Nästa avsnitt sänds ${date}',
			'showSchedule.watchBeginning' => 'Se från början',
			'showSchedule.replay' => 'Spela om',
			'showSchedule.playNext' => 'Spela nästa',
			'awardsCatalog.awards' => 'Utmärkelser',
			'awardsCatalog.customize' => 'Anpassa',
			'awardsCatalog.chooseShelves' => 'Anpassa Upptäck',
			'awardsCatalog.shelvesDescription' => 'Välj de rader du vill ha på Upptäck. Prisrader visar vinnare från dina bibliotek. Dina val sparas för den här profilen.',
			'awardsCatalog.restoreShelves' => 'Återställ standardinställningar',
			'awardsCatalog.charts' => 'IMDb-diagram',
			'awardsCatalog.generalShelves' => 'Populärt och trendigt',
			'awardsCatalog.saveShelvesFailed' => 'Det gick inte att spara dina Upptäck-val. Försök igen.',
			'awardsCatalog.comedyActress' => 'Huvudrollsinnehavare · Komedi',
			'awardsCatalog.leadDramaActor' => 'Huvudrollsinnehavare · Drama',
			'awardsCatalog.leadDramaActress' => 'Huvudrollsinnehavare · Drama',
			'awardsCatalog.comedySupportingActor' => 'Biroll · Komedi',
			'awardsCatalog.comedySupportingActress' => 'Biroll · Komedi',
			'awardsCatalog.leadingPerformance' => 'Silverbjörn · Bästa ledande prestation',
			'awardsCatalog.globesComedySeries' => 'Bästa tv-serie · Musikal eller komedi',
			'awardsCatalog.limitedSupportingActor' => 'Biroll · Begränsad serie eller film',
			'awardsCatalog.limitedSupportingActress' => 'Biroll · Begränsad serie eller film',
			'awardsCatalog.berlinDocumentary' => 'Berlinale dokumentärpris',
			'awardsCatalog.title' => 'Priser och festivaler',
			'awardsCatalog.chooseCategory' => 'Välj en priskategori',
			'awardsCatalog.winners' => 'Vinnare',
			'awardsCatalog.nominees' => 'Nominerade',
			'awardsCatalog.releaseDecade' => 'Släpp decennium',
			'awardsCatalog.allYears' => 'Alla år',
			'awardsCatalog.loading' => 'Laddar pristitlar...',
			'awardsCatalog.matching' => 'Hittar dessa titlar i dina bibliotek...',
			'awardsCatalog.unavailable' => 'Prisdata är inte tillgänglig just nu. Försök igen.',
			'awardsCatalog.empty' => 'Inga matchande titlar i dina synliga bibliotek för den här kategorin.',
			'awardsCatalog.coverage' => 'Medlemskap kommer från Wikidata och kan vara ofullständigt. Skådespelare och regissörskategorier visar filmerna eller showerna de belönats för. År hänvisar till titelsläpp, inte ceremonin.',
			'awardsCatalog.picture' => 'Bästa bilden',
			'awardsCatalog.film' => 'Bästa film',
			'awardsCatalog.international' => 'Bästa internationella inslag',
			'awardsCatalog.internationalFilm' => 'Bästa internationella film',
			'awardsCatalog.nonEnglishFilm' => 'Bästa film inte på engelska',
			'awardsCatalog.animated' => 'Bästa animerade inslag',
			'awardsCatalog.animatedFilm' => 'Bästa animerade film',
			'awardsCatalog.documentary' => 'Bästa dokumentärfilm',
			'awardsCatalog.director' => 'Bästa regissör',
			'awardsCatalog.actor' => 'Bästa skådespelare',
			'awardsCatalog.actress' => 'Bästa skådespelerska',
			'awardsCatalog.supportingActor' => 'Bästa manliga biroll',
			'awardsCatalog.supportingActress' => 'Bästa kvinnliga biroll',
			'awardsCatalog.originalScreenplay' => 'Bästa originalmanus',
			'awardsCatalog.adaptedScreenplay' => 'Bästa anpassade manus',
			'awardsCatalog.screenplay' => 'Bästa manus',
			'awardsCatalog.cinematography' => 'Bästa kinematografi',
			'awardsCatalog.editing' => 'Bästa redigering',
			'awardsCatalog.score' => 'Bästa originalmusik',
			'awardsCatalog.song' => 'Bästa originallåt',
			'awardsCatalog.sound' => 'Bästa ljudet',
			'awardsCatalog.effects' => 'Bästa visuella effekter',
			'awardsCatalog.productionDesign' => 'Bästa produktionsdesign',
			'awardsCatalog.costume' => 'Bästa kostymdesign',
			'awardsCatalog.makeup' => 'Bästa smink och hårstyling',
			'awardsCatalog.dramaSeries' => 'Enastående dramaserie',
			'awardsCatalog.comedySeries' => 'Enastående komediserie',
			'awardsCatalog.limitedSeries' => 'Enastående begränsad serie',
			'awardsCatalog.animatedProgram' => 'Enastående animerat program',
			'awardsCatalog.comedyActor' => 'Huvudrollsinnehavare · Komedi',
			'awardsCatalog.limitedActor' => 'Huvudrollsinnehavare · Begränsad serie eller film',
			'awardsCatalog.limitedActress' => 'Huvudrollsinnehavare · Begränsad serie eller film',
			'awardsCatalog.limitedDirecting' => 'Regi · Begränsad serie eller film',
			'awardsCatalog.britishFilm' => 'Bästa brittiska film',
			'awardsCatalog.goldenBear' => 'Guldbjörn',
			'awardsCatalog.grandJury' => 'Stora juryns pris',
			'awardsCatalog.jury' => 'Jurypris',
			'awardsCatalog.teddy' => 'Teddy Award',
			'awardsCatalog.goldenLion' => 'Gyllene lejon',
			'awardsCatalog.volpiActor' => 'Volpi Cup · Bästa skådespelare',
			'awardsCatalog.volpiActress' => 'Volpi Cup · Bästa kvinnliga huvudroll',
			'awardsCatalog.queerLion' => 'Queer Lion',
			'awardsCatalog.dramaFilm' => 'Bästa film · Drama',
			'awardsCatalog.comedyFilm' => 'Bästa film · Musikal eller komedi',
			'awardsCatalog.dramaActor' => 'Bästa skådespelare · Drama',
			'awardsCatalog.dramaActress' => 'Bästa kvinnliga skådespelerska · Drama',
			'awardsCatalog.usDramatic' => 'Stora juryns pris för amerikansk dramatik',
			'awardsCatalog.documentaryJury' => 'Dokumentärens stora jurypris',
			'awardsCatalog.worldCinema' => 'Stora juryns pris för världens film',
			'awardsCatalog.dramaticAudience' => 'Publikens pris för amerikansk dramatik',
			'awardsCatalog.usDirecting' => 'USA:s regipris',
			'awardsCatalog.peopleChoice' => 'People\'s Choice Award',
			'awardsCatalog.canadianFilm' => 'Bästa kanadensiska film',
			'awardsCatalog.firstFeature' => 'Bästa första funktionen',
			'awardsCatalog.cassavetes' => 'John Cassavetes-priset',
			'awardsCatalog.scienceFiction' => 'Bästa science fiction-film',
			'awardsCatalog.fantasy' => 'Bästa fantasyfilm',
			'awardsCatalog.horror' => 'Bästa skräckfilm',
			'awardsCatalog.action' => 'Bästa action- eller äventyrsfilm',
			'awardsCatalog.thriller' => 'Bästa thrillerfilm',
			'searchDiscovery.suggestions' => 'Något att titta på',
			'searchDiscovery.collections' => 'Priser och samlingar',
			'searchDiscovery.collectionsHint' => 'Pristagare och kurerade diagram från dina bibliotek',
			'searchDiscovery.all' => 'Alla upptäckter',
			'searchDiscovery.awards' => 'Utmärkelser & listor',
			'lurokaPlayerDesign.seeking' => 'Sök förhandsgranskning',
			'lurokaPlayerDesign.keepWatching' => 'Fortsätt titta',
			'lurokaPlayerDesign.upNext' => 'Nästa',
			'lurokaPlayerDesign.playingIn' => ({required Object seconds}) => 'Spelar i ${seconds} s',
			'lurokaWorkspace.everyday' => 'Varje dag',
			'lurokaWorkspace.homeDiscovery' => 'Hem & Discovery',
			'lurokaWorkspace.librariesAccounts' => 'Bibliotek och konton',
			'lurokaWorkspace.profilesFamily' => 'Profiler & Familj',
			'lurokaWorkspace.thisDevice' => 'Denna enhet',
			'lurokaWorkspace.thisProfile' => 'Denna profil',
			'lurokaWorkspace.searchSettings' => 'Sökinställningar',
			'lurokaWorkspace.savedAutomatically' => 'Ändringar sparas automatiskt. Everyday och Advanced ändrar bara vilka kontroller som visas.',
			'lurokaWorkspace.audioSubtitles' => 'Ljud & undertexter',
			'lurokaWorkspace.audioDescription' => 'Ljudutgång, volym och textning. Föredragna språk ställs in per serverkonto med kontoinställningar när du är ansluten.',
			'lurokaWorkspace.pictureSound' => 'Bild & Ljud',
			'lurokaWorkspace.pictureDescription' => 'Bildhastighetsmatchning, upplösning, HDR och Dolby Vision inställning för denna enhet.',
			'lurokaWorkspace.engineDescription' => 'Spelmotor, avkodning, anpassad konfiguration och avancerade uppspelningsregler.',
			'lurokaWorkspace.networkStreaming' => 'Nätverk & Streaming',
			'lurokaWorkspace.networkDescription' => 'Strömningskvalitet, codec-preferenser för direktuppspelning och val av bandbredd.',
			'lurokaWorkspace.homeOptions' => 'Hemalternativ',
			'lurokaWorkspace.refreshHome' => 'Uppdatera Hem & Popular Now',
			'lurokaWorkspace.customizeHome' => 'Anpassa hem',
			'lurokaWorkspace.spotlight' => 'Hem Spotlight',
			'lurokaWorkspace.rotateSpotlight' => 'Rotera utvalda titlar automatiskt',
			'lurokaWorkspace.rotateDescription' => 'Rotera medan Hem är inaktivt. Interaktion pausar rotation; bläddra i hyllor, öppna en sida eller lämna appen pausar den helt.',
			'lurokaWorkspace.rotationInterval' => 'Tid mellan utvalda titlar',
			'mobileFixes.connectionRecoveryHint' => 'Servern inte tillgänglig? Hantera dina konton eller anslut en annan server.',
			'downloadsRedesign.shelfSize' => 'Artiklar per hylla',
			'downloadsRedesign.shelfSizeHint' => 'Visa 16, 32 eller 48 föremål i Fortsätt titta och rekommendationshyllor. Servrar kan returnera färre tillgängliga titlar.',
			'downloadsRedesign.subtitle' => 'Dina favoriter, redo för resan.',
			'downloadsRedesign.transfers' => 'Överföringar',
			'downloadsRedesign.ready' => 'Klar offline',
			'downloadsRedesign.active' => 'Laddar ner',
			'downloadsRedesign.waiting' => 'Väntar',
			'downloadsRedesign.downloaded' => 'Nedladdat',
			'downloadsRedesign.speed' => 'Nedladdningshastighet',
			'downloadsRedesign.notificationProgress' => '{progress} · {networkSpeed} · {timeRemaining} återstår',
			'kidsShelf.movieShelf' => 'Filmtid',
			'kidsShelf.showShelf' => 'Hitta din nästa show',
			'kidsShelf.aurora' => 'Aurora — djup kricka och lime',
			'kidsShelf.marquee' => 'Marquee - sammet & guld',
			'kidsShelf.electric' => 'Elektrisk — indigo & is',
			'kidsShelf.midnight' => 'Midnatt — stål & bärnsten',
			'kidsShelf.yourShelf' => 'Din filmhylla',
			'kidsShelf.all' => 'Allt',
			'kidsShelf.pickSomething' => 'Vad vill du se?',
			'kidsHome.everything' => 'För dig',
			'kidsHome.keepWatching' => 'Fortsätt titta',
			'kidsHome.emptyFilter' => 'Inget här ännu. Prova för dig, eller be din vuxna att lägga till något du älskar.',
			'tvSettingsV2.moreThemes' => 'Fler teman och anpassade färger',
			'tvSettingsV2.moreThemesHint' => 'Öppna alla tillgängliga förinställningar och anpassade temaalternativ.',
			'tvSettingsV2.previewLive' => 'Live förhandsvisning',
			'tvSettingsV2.previewIllustration' => 'Förhandsgranska exempel',
			'tvSettingsV2.previewShelfCount' => ({required Object count}) => 'Upp till ${count} artiklar per hylla',
			'tvSettingsV2.simple' => 'Enkelt',
			'tvSettingsV2.homeNavigation' => 'Hem & Navigation',
			'tvSettingsV2.libraryCards' => 'Bibliotek & kort',
			'tvSettingsV2.accountsLibraries' => 'Konton & bibliotek',
			'tvSettingsV2.profilesFamily' => 'Profiler & Familj',
			'tvSettingsV2.aboutSupport' => 'Om & Support',
			'tvSettingsV2.playback' => 'Uppspelning',
			'tvSettingsV2.homeHint' => 'Välj vad som ska visas på startsidan och i navigeringen.',
			'tvSettingsV2.libraryHint' => 'Justera affischstorlekar, etiketter och bevakade indikatorer.',
			'tvSettingsV2.advancedPlayback' => 'Spelarmotor & streaming',
			'tvSettingsV2.advancedPlaybackHint' => 'Spelare, videoutgång, streaming och avancerade uppspelningsval.',
			'tvSettingsV2.advancedTools' => 'Diagnostik och säkerhetskopiering',
			'tvSettingsV2.advancedToolsHint' => 'Loggar, felsökning, säkerhetskopiering och återställning av inställningar.',
			'tvSettingsV2.themePreview' => 'Förhandsgranskning av tema',
			'tvSettingsV2.libraryPreview' => 'Förhandsvisning av bibliotek',
			'tvSettingsV2.homePreview' => 'Hem förhandsvisning',
			'tvSettingsV2.subtitlePreview' => 'Förhandsvisning av undertexter',
			'tvSettingsV2.subtitleSample' => 'Dina undertexter kommer att se ut så här.',
			'tvSettingsV2.previewPlaceholder' => 'Ditt konstverk visas här',
			'tvSettingsV2.posterSize' => 'Affischstorlek',
			'tvSettingsV2.serverRecommendations' => 'Hemrekommendationer från din server',
			'tvSettingsV2.tvLayout' => 'Använd TV-layout',
			'tvSettingsV2.hardwareDecode' => 'Använd hårdvaruvideoavkodning',
			'tvSettingsV2.serverNames' => 'Visa servernamn på startrader',
			'tvSettingsV2.settingsSaved' => 'Ändringar sparas automatiskt.',
			'tvSettingsV2.morePlayback' => 'Avancerad uppspelning',
			'tvSettingsV2.screenDisplay' => 'Bild & Ljud',
			'tvSettingsV2.engine' => 'Spelarmotor',
			'tvSettingsV2.network' => 'Streaming & nätverk',
			'tvSettingsV2.performance' => 'Prestanda',
			'tvSettingsV2.simpleAudio' => 'Språk och undertexter',
			'settingsRedesign.themeEffects' => 'Tema och effekter',
			'settingsRedesign.libraryLayout' => 'Bibliotekets layout',
			'settingsRedesign.appearanceHint' => 'Anpassa utseendet, layouten och beteendet hos Luroka.',
			'settingsRedesign.livePreview' => 'Live Preview',
			'settingsRedesign.previewHint' => 'Se hur ditt bibliotek kommer att se ut med de nuvarande inställningarna.',
			'settingsRedesign.showLiveTv' => 'Visa live-tv',
			'settingsRedesign.showLiveTvHint' => 'Visa live-TV i navigering när en ansluten server stöder det. Detta ändrar inte din server.',
			'settingsRedesign.aboutTagline' => 'Dina media. Ditt utrymme.',
			'settingsRedesign.aboutDescription' => 'Luroka sammanför dina Plex, Jellyfin och Emby bibliotek i en filmisk spelare för telefoner, TV-apparater och stationära datorer.',
			'settingsRedesign.aboutFeatures' => 'Bläddra i dina bibliotek, återuppta filmer och program, anpassa profiler, njut av nedladdningar och titta tillsammans. Live-TV är tillgängligt med en kompatibel server.',
			'settingsRedesign.services' => 'Anslut din värld',
			'settingsRedesign.updateSource' => 'Uppdatera källa',
			'settingsRedesign.updateSourceHint' => 'HTTPS-adressen för ditt Luroka-släppflöde. Din distributör kan förkonfigurera detta i appen.',
			'settingsRedesign.updateNotConfigured' => 'Automatiska uppdateringar är inte konfigurerade för denna version.',
			'settingsRedesign.downloadInstall' => 'Ladda ner och installera',
			'settingsRedesign.installUpdate' => 'Installera uppdatering',
			'settingsRedesign.downloading' => 'Laddar ned uppdatering...',
			'settingsRedesign.downloadFailed' => 'Det gick inte att ladda ner eller verifiera uppdateringen. Försök igen.',
			'settingsRedesign.installPermission' => 'Tillåt Luroka att installera uppdateringar i Android-inställningarna, återvänd sedan och välj Installera uppdatering.',
			'settingsRedesign.updateReady' => 'Nedladdning verifierad. Klar att installera.',
			'settingsRedesign.releaseNotes' => 'Release notes',
			'settingsRedesign.invalidFeed' => 'Ange en giltig HTTPS-uppdateringsadress.',
			'onboarding.connectStep' => '01 · Anslut',
			'onboarding.connectTitle' => 'Välkommen till Luroka',
			'onboarding.connectHint' => 'Logga in för att ta med dina bibliotek hit.',
			'onboarding.serverAddressHint' => 'Ange din serveradress eller välj en server som finns i ditt nätverk.',
			'onboarding.serverSignInHint' => 'Använd ditt serveranvändarnamn och lösenord för att ansluta dina bibliotek.',
			'onboarding.serverAddressTitle' => 'Serveradress',
			'onboarding.serverAccountTitle' => 'Ditt serverkonto',
			'onboarding.plexHomeTitle' => 'Välj din Plex-hemanvändare',
			'onboarding.plexHomeHint' => 'Välj den Plex-användare vars bibliotek du vill använda. Du kommer att konfigurera din Luroka-profil härnäst.',
			'onboarding.chooseService' => 'Välj din tjänst',
			'onboarding.profileStep' => '02 · Din profil',
			'onboarding.profileTitle' => 'Känn dig som hemma.',
			'onboarding.profileHint' => 'Välj ett namn och en avatar för din Luroka-profil. Ditt anslutna konto förblir detsamma.',
			'onboarding.readyStep' => '03 · Redo att titta på',
			'onboarding.readyTitle' => 'Lite mer du.',
			'onboarding.readyHint' => 'Samla dina tjänster eller ge plats åt någon annan. Du kan alltid göra detta senare.',
			'onboarding.addService' => 'Anslut en annan tjänst',
			'onboarding.editProfile' => 'Redigera ditt namn och avatar',
			'onboarding.connected' => 'Ansluten och klar',
			'onboarding.backToProfile' => 'Tillbaka till din profil',
			'onboarding.showOtherPlexHome' => 'Visa andra Plex Home-medlemmar',
			'onboarding.showOtherPlexHomeHint' => 'Av som standard. Dina Luroka-profiler och Plex-hemmedlemmar som du har använt förblir synliga. Slå på för att välja någon annan.',
			'household.title' => 'Ditt Luroka-hushåll',
			'household.welcome' => 'Gör Luroka till din',
			'household.welcomeHint' => 'Ditt första konto är anslutet. Anpassa din profil eller lägg till någon annan innan du börjar titta.',
			'household.profiles' => 'Profiler & hushåll',
			'household.manageHint' => 'Lägg till personer, byt bilder och hantera varje profils anslutningar.',
			'household.addProfile' => 'Lägg till Luroka-profil',
			'household.addHint' => 'Varje person kan ansluta sin egen Plex, Emby eller Jellyfin inloggning. Endast anslutningar som lagts till i deras profil visas för dem.',
			'household.sharedHint' => 'Återanvändning av en annan profils anslutning delar serveranvändarens bevakade status och uppspelningsförlopp. Välj en separat inloggning för oberoende visningshistorik.',
			'household.personalise' => 'Anpassa profilen',
			'household.changePicture' => 'Byt profilbild',
			'household.pictureHint' => 'Välj en Luroka-avatar eller ett foto. Detta ändrar endast bilden på den här enheten; ditt serverkonto är orört.',
			'household.serverPicture' => 'Använd serverbild/initialer',
			'household.choosePhoto' => 'Välj ett foto',
			'household.photoHint' => 'JPEG, PNG eller annan bild som stöds, upp till 10 MB. Foton ändras storlek och lagras på den här enheten.',
			'household.pictureSaved' => 'Profilbilden uppdaterad',
			'household.pictureFailed' => 'Kunde inte uppdatera profilbilden. Prova en bild som stöds på upp till 10 MB.',
			'household.saveFailed' => 'Det gick inte att spara profilinställningarna. Försök igen.',
			'household.startWatching' => 'Börja titta',
			'household.manageProfiles' => 'Hantera eller byt profiler',
			'household.addLater' => 'Du kan lägga till fler personer senare i Inställningar → Profiler och hushåll.',
			'household.connectionRequired' => 'Lägg till en serveranslutning för att slutföra konfigureringen av den här profilen.',
			'household.mountain' => 'Berg',
			'household.orbit' => 'Utforskare',
			'household.waves' => 'Ocean',
			'household.blossom' => 'Blossom',
			'household.lightning' => 'Blixtnedslag',
			'household.moon' => 'Måne',
			'household.avatarGallery' => 'Välj en avatar',
			'household.avatarIllustrationHint' => 'Original illustrerade porträtt, barn och djurvänner',
			'household.avatarPortraitSunrise' => 'Soluppgång porträtt',
			'household.avatarPortraitMeadow' => 'Ängsporträtt',
			'household.avatarPortraitBerry' => 'Porträtt av bär',
			'household.avatarPortraitGolden' => 'Gyllene porträtt',
			'household.avatarPortraitIndigo' => 'Indigo porträtt',
			'household.avatarPortraitOcean' => 'Havsporträtt',
			'household.avatarKidArtist' => 'Liten konstnär',
			'household.avatarKidSkater' => 'Liten skridskoåkare',
			'household.avatarCat' => 'Nyfiken katt',
			'household.avatarDog' => 'Glad hund',
			'household.avatarPanda' => 'Panda',
			'household.avatarOwl' => 'Uggla',
			'household.avatarFox' => 'Fox',
			'household.avatarDinosaur' => 'Dinosaurie',
			'household.avatarRobot' => 'Robot',
			'detailComposition.startOver' => 'Börja om',
			'detailComposition.seriesCast' => 'Serie rollbesättning',
			'detailComposition.streamingQuality' => 'Strömningskvalitet...',
			'detailComposition.trailer' => 'Trailer',
			'detailComposition.manageMedia' => 'Hantera media...',
			'detailComposition.playbackOptions' => 'Uppspelningsalternativ...',
			'detailComposition.moreActions' => 'Fler åtgärder',
			'detailComposition.watched' => 'Tittade',
			'detailComposition.unwatched' => 'Obevakad',
			'detailComposition.endsAt' => ({required Object time}) => 'Slutar vid ${time}',
			'detailComposition.automatic' => 'Automatisk',
			'detailComposition.usePreferences' => 'Använd dina uppspelningsinställningar',
			'detailComposition.mediaInformation' => 'Medieinformation',
			'detailComposition.fullFileInformation' => 'Fullständig filinformation',
			'detailComposition.castAndCrew' => 'Cast & Crew',
			'kids.backupProfile' => 'Säkerhetskopiera barnprofilen',
			'kids.backupExplain' => 'Säkerhetskopiera profilens sparade namn, karaktär, begränsningar, utseende och lokala visningsuteslutningar. Föräldra-PIN-koder, serverinloggningar, nedladdningar och serveruppspelningsförlopp ingår inte.',
			'kids.saveBackupFile' => 'Spara backup-fil',
			'kids.copyBackup' => 'Kopiera säkerhetskopieringstext',
			'kids.backupSaved' => ({required Object path}) => 'Säkerhetskopiering av barnprofilen har sparats i ${path}',
			'kids.backupCopied' => 'Säkerhetskopiering av barnprofilen har kopierats',
			'kids.backupFailed' => 'Det gick inte att spara säkerhetskopian av barnprofilen. Försök igen.',
			'kids.restoreProfile' => 'Återställ barnprofil',
			'kids.chooseBackupFile' => 'Välj backup-fil',
			'kids.pasteBackup' => 'Klistra in säkerhetskopieringstext',
			'kids.backupText' => 'Barnprofil backup JSON',
			'kids.pasteFromClipboard' => 'Klistra in från urklipp',
			'kids.restoreReview' => 'Granska dessa återställda inställningar och sedan Spara för att skapa en ny barnprofil med dina nuvarande serveranslutningar. Befintliga profiler skrivs inte över. Biblioteksval och visningsuteslutningar matchar endast samma server-/biblioteks-ID.',
			'kids.restoreInvalid' => 'Detta är inte en giltig säkerhetskopiering av barnprofiler som stöds. Välj en Luroka barnprofil JSON backup.',
			'kids.deleteProfile' => 'Ta bort barnprofil',
			'kids.deleteExplain' => ({required Object name}) => 'Ta bort ${name} från Luroka? Deras lokala inställningar, nedladdningar och visningsuteslutningar kommer att tas bort. Ditt serverkonto och historik på serversidan kommer att finnas kvar. Skapa en säkerhetskopia först om du vill återställa profilen senare.',
			'kids.profileDeleted' => 'Barnprofilen raderad',
			'kids.allowedLibraries' => 'Tillåtna bibliotek',
			'kids.unavailableLibrary' => 'Tidigare valt bibliotek (för närvarande ej tillgängligt)',
			'kids.allLibraries' => 'Tillåt alla anslutna film- och TV-bibliotek',
			'kids.librariesExplain' => 'Stäng av detta för att välja specifika bibliotek. Ålder och animationsregler gäller fortfarande i de valda biblioteken. Nya bibliotek läggs inte till automatiskt när ett urval används.',
			'kids.librariesUnavailable' => 'Inga film- eller TV-bibliotek laddas. Anslut till servern och öppna Bibliotek, gå sedan tillbaka hit för att välja.',
			'kids.noLibrariesSelected' => 'Inga bibliotek har valts: detta barn kommer inte att se några titlar.',
			'kids.animationOnly' => 'Endast animering',
			'kids.animationExplain' => 'Visa endast titlar taggade med animeringsgenren på din server. Detta ersätter inte åldersgränsen: animation kan även vara avsedd för vuxna. Saknade genremetadata är dold.',
			'kids.allowUnrated' => 'Tillåt titlar utan åldersklassificering',
			'kids.unratedExplain' => 'Av som standard. När den är aktiverad kan saknade eller oklassificerade klassificeringar visas om biblioteket och animeringsreglerna tillåter det. Deras lämplighet kan inte kontrolleras efter ålder. Kända betyg över åldersgränsen och okända klassificeringar förblir dolda.',
			'kids.whoIsWatching' => 'Vem tittar?',
			'kids.chooseAdventure' => 'En liten värld av stora äventyr.',
			'kids.chooseProfile' => 'Välj ditt utrymme. Gör det till en filmkväll.',
			'kids.welcome' => ({required Object name}) => 'Hej ${name}!',
			'kids.welcomeOlder' => ({required Object name}) => 'Din nästa fantastiska historia, ${name}.',
			'kids.homeSubtitle' => 'Stora äventyr. Små upptäckter. Allt för dig.',
			'kids.homeSubtitleOlder' => 'Hitta en ny favorit. Fortsätt där du slutade.',
			'kids.featured' => 'Dagens stora äventyr',
			'kids.featuredOlder' => 'I rampljuset',
			'kids.moreInfo' => 'Mer info',
			'kids.movies' => 'Filmer',
			'kids.shows' => 'Shower',
			'kids.profiles' => 'Profiler',
			'kids.adultBadge' => 'Vuxna',
			'kids.avatar' => 'Välj din karaktär',
			'kids.avatarExplorer' => 'Rymdutforskare',
			'kids.avatarFox' => 'Fox',
			'kids.avatarDinosaur' => 'Dinosaurie',
			'kids.avatarRobot' => 'Robot',
			'kids.avatarChildArtist' => 'Liten konstnär',
			'kids.avatarChildSkater' => 'Liten skridskoåkare',
			'kids.avatarSunrisePerson' => 'Soluppgång porträtt',
			'kids.avatarOceanPerson' => 'Havsporträtt',
			'kids.avatarCat' => 'Nyfiken katt',
			'kids.avatarDog' => 'Glad hund',
			'kids.avatarPanda' => 'Panda',
			'kids.avatarOwl' => 'Uggla',
			'kids.avatarBear' => 'Björn',
			'kids.continueAdventure' => 'Fortsätt äventyret',
			'kids.freshStories' => 'Nya berättelser att upptäcka',
			'kids.yourMovies' => 'Favoriter vid filmtid',
			'kids.yourShows' => 'Ännu ett avsnitt',
			'kids.emptyHint' => 'Nya äventyr kommer att dyka upp här när din server har titlar med en tillåten åldersklassificering.',
			'kids.title' => 'Luroka för barn',
			'kids.addProfile' => 'Lägg till barnprofil',
			'kids.parentalControls' => 'Föräldrakontroll',
			'kids.parentPin' => 'Föräldra-PIN',
			'kids.setParentPin' => 'Ange föräldra-PIN',
			'kids.changeParentPin' => 'Ändra föräldra-PIN',
			'kids.pinExplain' => 'Den här PIN-koden skyddar vuxenprofiler och föräldrakontroller på enheten.',
			'kids.name' => 'Barnets namn',
			'kids.ageGroup' => 'Tillåten åldersklassificering',
			'kids.allAges' => 'Alla åldrar · G, TV-Y, TV-G, U',
			'kids.age7' => 'Upp till 7 · även PG, TV-PG, TV-Y7',
			'kids.age12' => 'Upp till 12 · även 12 och 12A',
			'kids.age16' => 'Upp till 16 · även PG-13, TV-14, 15 och 16',
			'kids.ratingExplain' => 'Titlar över åldersgränsen och okända klassificeringar är dolda. Titlar utan betyg är dolda om du inte tillåter dem nedan. Oklassificerade avsnitt kan ärva en godkänd serieklassificering. Betygen beror på din servers metadata.',
			'kids.theme' => 'Barnens utseende',
			'kids.themeExplain' => 'Använd ett färgstarkt tema när den här profilen är aktiv.',
			'kids.sharedLogin' => 'Använder din befintliga serverinloggning. Plex/Emby framsteg och bevakad status förblir delade. Begränsningar och barnprofiler lagras på den här enheten.',
			'kids.hideWatched' => 'Dölj barns visning från min Fortsätt titta',
			'kids.hideExplain' => 'Dölj filmer och hela serier som spelas av barnprofiler på den här enheten. Detta tar inte bort dem från ditt bibliotek eller ändrar serverhistorik.',
			'kids.clearHistory' => 'Återställ barns visningsuteslutningar',
			'kids.historyReset' => 'Barns visningsuteslutningar har återställts',
			'kids.blocked' => 'Den här titeln är inte tillgänglig i den här barnprofilen.',
			'kids.switchProfile' => 'Byt profil',
			'kids.manageFromAdult' => 'Byt till en vuxenprofil för att hantera inställningar.',
			'kids.noConnections' => 'Anslut en server till din vuxenprofil innan du lägger till en barnprofil.',
			'kids.created' => 'Barnprofil skapad',
			'kids.updated' => 'Barnprofilen uppdaterad',
			'kids.saveFailed' => 'Det gick inte att spara föräldrakontroll. Försök igen.',
			'kids.kidsBadge' => 'Barn',
			'lurokaDiscovery.title' => 'Upptäck',
			'lurokaDiscovery.chooseLibraryHint' => 'Välj ett bibliotek att utforska',
			'lurokaDiscovery.chooseCopyHint' => 'Finns i flera bibliotek. Välj önskat exemplar.',
			'lurokaDiscovery.weeklyMovies' => 'Populära filmer den här veckan · TMDb',
			'lurokaDiscovery.weeklyShows' => 'Trendiga program den här veckan · TMDb',
			'lurokaDiscovery.weeklyLibrary' => 'Trendigt den här veckan · I ditt bibliotek',
			'lurokaDiscovery.popularLibrary' => 'Populärt nu · I ditt bibliotek · Cinemeta',
			'lurokaDiscovery.publicFeedError' => 'Cinemeta-upptäckt är inte tillgängligt. Försök igen.',
			'lurokaDiscovery.oscars' => 'Oscars · Vinnare av bästa film',
			'lurokaDiscovery.imdb100' => 'IMDb Topp 100 filmer · Sep 2026 ögonblicksbild',
			'lurokaDiscovery.imdbTv100' => 'IMDb Topp 100 program · Sep 2026 ögonblicksbild',
			'lurokaDiscovery.emmyComedy' => 'Emmys · Vinnare av komediserier · 1971–2026',
			'lurokaDiscovery.emmys' => 'Emmys · Dramaserievinnare · 1966–2026',
			_ => null,
		} ?? switch (path) {
			'lurokaDiscovery.bafta' => 'BAFTA · Vinnare av bästa film',
			'lurokaDiscovery.cannes' => 'Cannes · Guldpalmen vinnare',
			'lurokaDiscovery.awardsNote' => 'Prissamlingarna inkluderar historien om Oscar för bästa film, vinnare av Emmy-drama/komedi och utökade BAFTA/Cannes-val. Upprepade vinnande titlar visas en gång. Medlemskap använder historik i priskategorier och Wikidata-fakta. IMDb Topp 100 film-/programlistor bevara september 2026 diagrams ögonblicksbilder från mmdju/imdb-top250-api. Endast matchningar i dina synliga onlinebibliotek visas; samlingens storlek beror på bibliotekets tillgänglighet.',
			'lurokaDiscovery.attribution' => 'Offentliga popularitetslistor, metadata och IMDb-värderingar tillhandahålls av Cinemeta; dess populära listor är inte veckovisa diagram. Denna produkt använder TMDB API men är inte godkänd eller certifierad av TMDB. Valfria TMDb veckotrender återspeglar TMDb intresse, inte tittarsiffror. Poäng behåller sina källetiketter.',
			'lurokaDiscovery.tmdbSettings' => 'Upptäcktskällor',
			'lurokaDiscovery.setupDescription' => 'Cinemeta-upptäckten fungerar direkt utan konto: populära filmer och program, IMDb-betyg och pristagare. Anslut eventuellt TMDb för veckotrender med hjälp av en API-nyckel eller API läsbehörighetstoken från themoviedb.org/settings/api. Dina referenser lagras på den här enheten.',
			'lurokaDiscovery.apiKey' => 'TMDb API nyckel / läsbehörighetstoken',
			'lurokaDiscovery.connect' => 'Anslut TMDb',
			'lurokaDiscovery.connecting' => 'Ansluter...',
			'lurokaDiscovery.connected' => 'TMDb ansluten · Veckotrender och utmärkelser aktiverade',
			'lurokaDiscovery.builtInKeyNote' => 'Körs på Lurokas inbyggda delade TMDb-nyckel. Lägg till din egen gratisnyckel nedan för dedikerade prisgränser och full kontroll.',
			'lurokaDiscovery.disconnect' => 'Koppla bort TMDb',
			'lurokaDiscovery.invalidKey' => 'Det gick inte att validera TMDb. Kontrollera dina autentiseringsuppgifter och internetanslutning.',
			'lurokaDiscovery.feedError' => 'TMDb upptäckt är inte tillgänglig. Försök igen.',
			'lurokaDiscovery.allTitles' => 'Alla titlar',
			'lurokaDiscovery.available' => 'I ditt bibliotek',
			'lurokaDiscovery.checking' => 'Kontrollerar dina bibliotek...',
			'lurokaDiscovery.availabilityUnknown' => 'Vissa bibliotek kunde inte kontrolleras. Försök att uppdatera.',
			'lurokaDiscovery.noAvailable' => 'Inga matchande titlar hittades i de markerade biblioteken.',
			'lurokaDiscovery.sourceInfo' => 'Veckotrender och utvalda pristagare · TMDb',
			'lurokaDiscovery.configure' => 'Upptäcktsinställningar',
			'app.title' => 'Luroka',
			'appIcon.title' => 'App-ikon',
			'appIcon.defaultIcon' => 'Standard',
			'appIcon.current' => 'Aktuell ikon',
			'appIcon.locked' => 'Supporterförmån',
			'appIcon.lockedHint' => 'Alternativa ikoner är en supporterförmån.',
			'appIcon.changeFailed' => 'Det gick inte att ändra appikonen',
			'appIcon.launcherHint' => 'Den nya ikonen visas på din startskärm när du lämnar Luroka.',
			'appIcon.tvLauncherHint' => 'Den nya bannern visas när du lämnar Luroka. Android TV kan fortsätta visa den gamla tills TV:n startar om.',
			'appIcon.names.midnight' => 'Midnatt',
			'appIcon.names.ember' => 'glöd',
			'appIcon.names.paper' => 'Papper',
			'appIcon.names.oled' => 'OLED',
			'appIcon.names.line' => 'Linje',
			'appIcon.names.ocean' => 'Ocean',
			'appIcon.names.ultraviolet' => 'Ultraviolett',
			'appIcon.names.matcha' => 'Matcha',
			'appIcon.names.sunset' => 'Solnedgång',
			'appIcon.names.gold' => 'Guld',
			'appIcon.names.titanium' => 'Titan',
			'appIcon.names.glass' => 'Glas',
			'appIcon.names.crt' => 'CRT',
			'appIcon.names.vhs' => 'VHS',
			'appIcon.names.synthwave' => 'Synthwave',
			'appIcon.names.pixel' => 'Pixel',
			'appIcon.names.neon' => 'Neon',
			'appIcon.names.sticker' => 'Klistermärke',
			'appIcon.names.ticket' => 'Biljett',
			'appIcon.names.pop' => 'Pop',
			'appIcon.names.strata' => 'Strata',
			'appIcon.names.facet' => 'Fasett',
			'appIcon.names.tilde' => 'Tilde',
			'auth.signInWithPlex' => 'Logga in med Plex',
			'auth.showQRCode' => 'Visa QR-kod',
			'auth.authenticate' => 'Verifiera',
			'auth.authenticationTimeout' => 'Autentiseringen tog för lång tid. Försök igen.',
			'auth.scanQRToSignIn' => 'Skanna QR-koden för att logga in',
			'auth.waitingForAuth' => 'Väntar på autentisering...\nLogga in från din webbläsare.',
			'auth.useBrowser' => 'Använd webbläsare',
			'auth.or' => 'eller',
			'auth.connectToMediaBrowser' => ({required Object product}) => 'Anslut till ${product}',
			'auth.quickConnect' => 'Quick Connect',
			'auth.useQuickConnect' => 'Använd Quick Connect',
			'auth.quickConnectInstructions' => 'Öppna Quick Connect i Jellyfin och ange den här koden.',
			'auth.quickConnectWaiting' => 'Väntar på godkännande…',
			'auth.quickConnectCancel' => 'Avbryt',
			'auth.quickConnectExpired' => 'Quick Connect har gått ut. Försök igen.',
			'auth.localDataRecoveryRequired' => 'Luroka kunde inte återställa lokala inloggningsuppgifter och väntande uppspelningsdata på ett säkert sätt. Logga in igen.',
			'auth.pinCheckRejected' => 'Plex PIN-kontrollen avvisades',
			'common.cancel' => 'Avbryt',
			'common.save' => 'Spara',
			'common.close' => 'Stäng',
			'common.clear' => 'Rensa',
			'common.reset' => 'Återställ',
			'common.later' => 'Senare',
			'common.submit' => 'Skicka',
			'common.confirm' => 'Bekräfta',
			'common.retry' => 'Försök igen',
			'common.logout' => 'Logga ut',
			'common.unknown' => 'Okänd',
			'common.refresh' => 'Uppdatera',
			'common.yes' => 'Ja',
			'common.no' => 'Nej',
			'common.delete' => 'Ta bort',
			'common.edit' => 'Redigera',
			'common.shuffle' => 'Blanda',
			'common.addTo' => 'Lägg till i...',
			'common.createNew' => 'Skapa ny',
			'common.connect' => 'Anslut',
			'common.disconnect' => 'Koppla från',
			'common.play' => 'Spela',
			'common.pause' => 'Pausa',
			'common.resume' => 'Återuppta',
			'common.error' => 'Fel',
			'common.search' => 'Sök',
			'common.home' => 'Hem',
			'common.back' => 'Tillbaka',
			'common.settings' => 'Inställningar',
			'common.mute' => 'Stäng av ljudet',
			'common.ok' => 'OK',
			'common.off' => 'Av',
			'common.options' => 'Alternativ',
			'common.seasonNumber' => ({required Object number}) => 'Säsong ${number}',
			'common.episodeNumberTitle' => ({required Object number, required Object title}) => 'Avsnitt ${number} - ${title}',
			'common.chapterNumber' => ({required Object number}) => 'Kapitel ${number}',
			'common.reconnect' => 'Återanslut',
			'common.viewAll' => 'Visa alla',
			'common.serversUnreachable' => 'Servrarna går inte att nå',
			'common.loading' => 'Laddar...',
			'common.fullscreen' => 'Helskärm',
			'common.exitFullscreen' => 'Avsluta helskärm',
			'common.ratingSource.critic' => 'Kritiker',
			'common.ratingSource.audience' => 'Publik',
			'common.ratingSource.imdb' => 'IMDb',
			'common.ratingSource.tmdb' => 'TMDB',
			'common.ratingSource.rottenTomatoes' => 'Rotten Tomatoes',
			'common.ratingSource.simkl' => 'Simkl',
			'common.ratingSource.mal' => 'MyAnimeList',
			'common.ratingSource.anilist' => 'AniList',
			'common.ratingSource.trakt' => 'Trakt',
			'common.ratingSource.rottenTomatoesCritic' => 'Rotten Tomatoes-kritiker',
			'common.ratingSource.rottenTomatoesAudience' => 'Rotten Tomatoes-publik',
			'common.ratingSource.metacritic' => 'Metacritic',
			'common.ratingSource.letterboxd' => 'Letterboxd',
			'common.notAvailable' => 'N/A',
			'common.url' => 'URL',
			'common.letterKeys' => 'ABC',
			'common.mediaKind.movie' => 'Film',
			'common.mediaKind.show' => 'Serie',
			'common.mediaKind.season' => 'Säsong',
			'common.mediaKind.episode' => 'Avsnitt',
			'common.mediaKind.artist' => 'Artist',
			'common.mediaKind.album' => 'Album',
			'common.mediaKind.track' => 'Låt',
			'common.mediaKind.collection' => 'Samling',
			'common.mediaKind.playlist' => 'Spellista',
			'common.mediaKind.clip' => 'Klipp',
			'common.mediaKind.photo' => 'Foto',
			'common.mediaKind.folder' => 'Mapp',
			'common.stay' => 'Stanna',
			'common.exitApp' => 'Avsluta',
			'common.exitAppBody' => 'Är du säker på att du vill avsluta Luroka?',
			'tvHints.select' => 'Välj',
			'tvHints.browse' => 'Bläddra',
			'tvHints.back' => 'Tillbaka',
			'screens.licenses' => 'Licenser',
			'screens.switchProfile' => 'Byt profil',
			'screens.subtitleStyling' => 'Utseende för undertexter',
			'screens.mpvConfig' => 'mpv.conf',
			'screens.logs' => 'Loggar',
			'mediaExtras.trailers' => 'Släpvagnar',
			'mediaExtras.featurettes' => 'Featurettes',
			'mediaExtras.interviews' => 'Intervjuer',
			'mediaExtras.deletedScenes' => 'Raderade scener',
			'mediaExtras.behindTheScenes' => 'Bakom kulisserna',
			'mediaExtras.scenesAndClips' => 'Scener & klipp',
			'mediaExtras.other' => 'Andra extrafunktioner',
			'update.available' => 'Uppdatering tillgänglig',
			'update.versionAvailable' => ({required Object version}) => 'Version ${version} är tillgänglig',
			'update.currentVersion' => ({required Object version}) => 'Nuvarande: ${version}',
			'update.skipVersion' => 'Hoppa över denna version',
			'update.viewRelease' => 'Visa versionsinformation',
			'update.latestVersion' => 'Du har den senaste versionen',
			'update.checkFailed' => 'Det gick inte att söka efter uppdateringar',
			'supporter.title' => 'Luroka Supporter',
			'supporter.intro' => 'Ett engångsköp som stöder Lurokas utveckling och låser upp kosmetiska extrafunktioner:',
			'supporter.presetThemes' => 'Förinställda teman',
			'supporter.presetThemesDescription' => 'Glöd, glaciär, skog, plommon och papper',
			'supporter.customTheme' => 'Anpassat tema',
			'supporter.customThemeDescription' => 'Välj varje färg själv',
			'supporter.appIcons' => 'App ikoner',
			'supporter.appIconsDescription' => 'Välj en alternativ Luroka-ikon',
			'supporter.buy' => ({required Object price}) => 'Köp för ${price}',
			'supporter.loadingPrice' => 'Laddar pris...',
			'supporter.restore' => 'Återställ inköp',
			'supporter.pending' => 'Ditt köp väntar på betalning eller godkännande. Extrafunktionerna låses upp så fort butiken är klar.',
			'supporter.thankYouTitle' => 'Tack för att du stödjer Luroka',
			'supporter.thankYouBody' => 'Dina Supporter-extramaterial är upplåsta.',
			'supporter.tileSubtitle' => 'Lås upp teman och appikoner med ett engångsköp',
			'supporter.tileSubtitleThemesOnly' => 'Lås upp teman med ett engångsköp',
			'supporter.tileUnlocked' => 'Tack för ditt stöd',
			'supporter.errors.storeUnavailable' => 'Köp är inte tillgängliga. Kontrollera att du är inloggad i butiken och att köp är tillåtna på den här enheten.',
			'supporter.errors.productNotFound' => 'Supporterköpet är inte tillgängligt i din butik just nu.',
			'supporter.errors.productQueryFailed' => 'Det gick inte att ladda priset. Kontrollera din anslutning och försök igen.',
			'supporter.errors.purchaseFailed' => 'Köpet gick inte igenom. Försök igen.',
			'supporter.errors.restoreFailed' => 'Det gick inte att nå butiken för att återställa ditt köp. Försök igen.',
			'supporter.errors.nothingToRestore' => 'Inget supporterköp hittades för detta butikskonto.',
			'settings.title' => 'Inställningar',
			'settings.supportDeveloper' => 'Stöd Luroka',
			'settings.supportDeveloperDescription' => 'Donera via Liberapay för att finansiera utvecklingen',
			'settings.language' => 'Språk',
			'settings.theme' => 'Tema',
			'settings.appearance' => 'Utseende',
			'settings.videoPlayback' => 'Videouppspelning',
			'settings.videoPlaybackDescription' => 'Konfigurera uppspelningsbeteende',
			'settings.advanced' => 'Avancerat',
			'settings.episodePosterMode' => 'Stil för avsnittsaffisch',
			'settings.seriesPoster' => 'Serieaffisch',
			'settings.seasonPoster' => 'Säsongsaffisch',
			'settings.episodeThumbnail' => 'Miniatyr',
			'settings.homeHeroSize' => 'Karusellstorlek',
			'settings.homeHeroSizeSmall' => 'Liten',
			'settings.homeHeroSizeMedium' => 'Medium',
			'settings.homeHeroSizeLarge' => 'Stora',
			'settings.secondsLabel' => 'Sekunder',
			'settings.minutesLabel' => 'Minuter',
			'settings.secondsShort' => 's',
			'settings.minutesShort' => 'm',
			'settings.durationHint' => ({required Object min, required Object max}) => 'Ange tid (${min}-${max})',
			'settings.systemTheme' => 'System',
			'settings.lightTheme' => 'Ljust',
			'settings.darkTheme' => 'Mörkt',
			'settings.oledTheme' => 'OLED',
			'settings.libraryDensity' => 'Biblioteksdensitet',
			'settings.displayScale' => 'Skalning',
			'settings.compact' => 'Kompakt',
			'settings.comfortable' => 'Luftig',
			'settings.gridSpacing' => 'Rutnätsavstånd',
			'settings.gridSpacingTight' => 'Tätt',
			'settings.gridSpacingNormal' => 'Normal',
			'settings.gridSpacingSpacious' => 'Rymligt',
			'settings.tvCornerSpotlightBackdrop' => 'Bakgrundsbild för utvalt innehåll i hörnet',
			'settings.tvCornerSpotlightBackdropDescription' => 'Visa bakgrundsbilden för utvalt innehåll i övre högra hörnet i stället för över hela skärmen',
			'settings.viewMode' => 'Visningsläge',
			'settings.gridView' => 'Rutnät',
			'settings.listView' => 'Lista',
			'settings.continueWatchingAction' => 'Åtgärd för Fortsätt titta',
			'settings.continueWatchingPlay' => 'Spela',
			'settings.continueWatchingDetails' => 'Öppna detaljer',
			'settings.episodeAction' => 'Åtgärd för avsnitt',
			'settings.episodePlay' => 'Spela',
			'settings.episodeDetails' => 'Öppna detaljer',
			'settings.useGlobalHubs' => 'Använd startsidans layout',
			'settings.useGlobalHubsDescription' => 'Visa en gemensam layout på startsidan. Annars används bibliotekens rekommendationer.',
			'settings.showServerNameOnHubs' => 'Visa servernamn i innehållssektioner',
			'settings.showServerNameOnHubsDescription' => 'Visa alltid servernamnet i innehållssektionernas rubriker.',
			'settings.groupLibrariesByServer' => 'Gruppera bibliotek efter server',
			'settings.groupLibrariesByServerDescription' => 'Gruppera biblioteken i sidofältet under respektive medieserver.',
			'settings.alwaysKeepSidebarOpen' => 'Håll alltid sidofältet öppet',
			'settings.alwaysKeepSidebarOpenDescription' => 'Sidofältet förblir utfällt och innehållsytan anpassas efter det',
			'settings.showUnwatchedCount' => 'Visa antal osedda',
			'settings.showUnwatchedCountDescription' => 'Visa antal osedda avsnitt för serier och säsonger',
			'settings.showWatchedIndicators' => 'Visa seddmarkeringar',
			'settings.showWatchedIndicatorsDescription' => 'Visa en bock på sedda filmer, serier och avsnitt',
			'settings.showEpisodeNumberOnCards' => 'Visa avsnittsnummer på kort',
			'settings.showEpisodeNumberOnCardsDescription' => 'Visa säsongs- och avsnittsnummer på avsnittskort',
			'settings.showSeasonPostersOnTabs' => 'Visa säsongsaffischer på flikar',
			'settings.showSeasonPostersOnTabsDescription' => 'Visa affischen för varje säsong ovanför dess flik',
			'settings.tvFullCardLayout' => 'Heltäckande TV-kort',
			'settings.tvFullCardLayoutDescription' => 'Använd TV-kort med enbart bild och skådespelarnamn ovanpå',
			'settings.focusGlow' => 'Fokusmarkering',
			'settings.focusGlowDescription' => 'Visa ett mjukt sken runt kortet som har fokus',
			'settings.visualEffects' => 'Visuella effekter',
			'settings.visualEffectsAuto' => 'Automatiskt',
			'settings.visualEffectsAutoDescription' => 'Minska effekterna automatiskt på enheter med begränsad prestanda',
			'settings.visualEffectsFull' => 'Fullständiga',
			'settings.visualEffectsReduced' => 'Minskade',
			'settings.visualEffectsReducedDescription' => 'Färre animationer och grafik med lägre upplösning',
			'settings.hideSpoilers' => 'Dölj spoilers för osedda avsnitt',
			'settings.hideSpoilersDescription' => 'Gör miniatyrbilder och beskrivningar oskarpa för osedda avsnitt',
			'settings.playerBackend' => 'Uppspelningsmotor',
			'settings.playerBackendDescription' => 'mpv spelar fler format och möjliggör fler funktioner — rekommenderas. ExoPlayer hjälper om uppspelningen misslyckas eller hackar på den här enheten.',
			'settings.exoPlayer' => 'ExoPlayer',
			'settings.mpv' => 'mpv',
			'settings.hardwareDecoding' => 'Hårdvaruavkodning',
			'settings.hardwareDecodingDescription' => 'Använd hårdvaruacceleration när tillgängligt',
			'settings.playbackBuffer' => 'Uppspelningsbuffert',
			'settings.playbackBufferAuto' => 'Auto (rekommenderas)',
			'settings.playbackBufferLarge' => 'Stor',
			'settings.playbackBufferExtraLarge' => 'Extra stor',
			'settings.playbackBufferDescription' => 'Buffrar mer mot instabila anslutningar. Begränsas även av buffertstorleken.',
			'settings.defaultQualityTitle' => 'Standardkvalitet',
			'settings.streamingQualityOriginalHint' => 'Spelar upp filen exakt som den lagras — bästa kvalitet, använder mest bandbredd',
			'settings.cellularQualityTitle' => 'Standardkvalitet på mobildata',
			'settings.cellularQualitySameAsDefault' => 'Samma som standardkvalitet',
			'settings.directPlayCoveredQuality' => 'Spela mindre videor i originalkvalitet',
			'settings.directPlayCoveredQualityDescription' => 'Direktspela videor som redan ligger inom kvalitetsgränsen i stället för att transkoda dem',
			'settings.videoCodecs' => 'Videokodekar',
			'settings.videoCodecsDescription' => 'Kodekar utan bock transkodas av servern',
			'settings.videoCodecsAlwaysAccepted' => 'Accepteras alltid',
			'settings.musicQualityTitle' => 'Musikkvalitet',
			'settings.subtitleStyling' => 'Utseende för undertexter',
			'settings.subtitleStylingDescription' => 'Anpassa undertexternas utseende',
			'settings.smallSkipDuration' => 'Litet hoppsteg',
			'settings.largeSkipDuration' => 'Stort hoppsteg',
			'settings.rewindOnResume' => 'Spola tillbaka vid återupptagning',
			'settings.secondsUnit' => ({required Object seconds}) => '${seconds} sekunder',
			'settings.defaultSleepTimer' => 'Förvald insomningstimer',
			'settings.minutesUnit' => ({required Object minutes}) => '${minutes} minuter',
			'settings.rememberTrackSelections' => 'Kom ihåg spårval per serie/film',
			'settings.rememberTrackSelectionsDescription' => 'Kom ihåg ljud- och undertextval per titel',
			'settings.rememberTrackSelectionsBackendRule' => 'Plex sparar varje val på servern per fil; Jellyfin aktiverar även kontots Kom ihåg val; Emby stöds inte',
			'settings.followServerTrackSelections' => 'Använd serverns spårval per avsnitt',
			'settings.followServerTrackSelectionsDescription' => 'Vid avsnittsbyte används ljudet och undertexterna som valts på servern i stället för att föra över det aktuella valet',
			'settings.resumeMusicOnLaunch' => 'Kom ihåg musiksession',
			'settings.resumeMusicOnLaunchDescription' => 'Öppna den senaste låten pausad där den slutade när appen startar',
			'settings.showChapterMarkersOnTimeline' => 'Visa kapitelmarkörer på tidslinjen',
			'settings.showChapterMarkersOnTimelineDescription' => 'Dela upp tidslinjen vid kapitelgränser',
			'settings.specialsOrdering' => 'Specialavsnitt i episodordning',
			'settings.specialsOrderingDescription' => 'Var specialavsnitt spelas upp i seriens visningsordning',
			'settings.specialsOrderingServer' => 'Följ serverordningen',
			'settings.specialsOrderingAirDate' => 'Infoga efter sändningsdatum',
			'settings.specialsOrderingLast' => 'Efter vanliga säsonger',
			'settings.clickVideoTogglesPlayback' => 'Klicka på videon för att spela upp eller pausa',
			'settings.clickVideoTogglesPlaybackDescription' => 'Klicka på videon för att spela upp eller pausa i stället för att visa kontrollerna.',
			'settings.videoPlayerControls' => 'Videospelarens kontroller',
			'settings.keyboardShortcuts' => 'Tangentbordsgenvägar',
			'settings.keyboardShortcutsDescription' => 'Anpassa tangentbordsgenvägar',
			'settings.videoPlayerNavigation' => 'Navigering i videospelaren',
			'settings.videoPlayerNavigationDescription' => 'Använd piltangenter för att navigera videospelarens kontroller',
			'settings.watchTogetherRelay' => 'Reläserver för Titta tillsammans',
			'settings.watchTogetherRelayDescription' => 'Public Open Watch Party-reläer om du inte ställer in din egen',
			'settings.watchTogetherRelayHint' => 'https://mitt-rela.exempel.se',
			'settings.watchTogetherRelayInvalid' => 'Ange en giltig HTTP- eller HTTPS-bas-URL för reläservern.',
			'settings.crashReporting' => 'Kraschrapportering',
			'settings.crashReportingDescription' => 'Skicka kraschrapporter för att förbättra appen',
			'settings.debugLogging' => 'Felsökningsloggning',
			'settings.debugLoggingDescription' => 'Aktivera detaljerad loggning för felsökning',
			'settings.viewLogs' => 'Visa loggar',
			'settings.viewLogsDescription' => 'Visa appens loggar',
			'settings.clearImageCache' => 'Rensa bildcache',
			'settings.clearImageCacheDescription' => 'Rensa cachad grafik och miniatyrer. Bilder kan laddas långsammare tills de hämtas igen.',
			'settings.clearImageCacheSuccess' => 'Bildcachen har rensats',
			'settings.resetSettings' => 'Återställ inställningarna',
			'settings.resetSettingsDescription' => 'Återställ standardinställningarna. Det går inte att ångra.',
			'settings.resetSettingsSuccess' => 'Inställningarna har återställts',
			'settings.backup' => 'Säkerhetskopia',
			'settings.exportSettings' => 'Exportera inställningar',
			'settings.exportSettingsDescription' => 'Spara dina inställningar till en fil',
			'settings.exportSettingsSuccess' => 'Inställningar exporterade',
			'settings.importSettings' => 'Importera inställningar',
			'settings.importSettingsDescription' => 'Återställ inställningar från en fil',
			'settings.importSettingsConfirm' => 'Detta ersätter dina nuvarande inställningar. Fortsätta?',
			'settings.importSettingsSuccess' => 'Inställningar importerade',
			'settings.importSettingsInvalidFile' => 'Filen är inte en giltig export av Luroka-inställningar',
			'settings.importSettingsNoUser' => 'Logga in innan du importerar inställningar',
			'settings.shortcutsReset' => 'Genvägarna har återställts till standard',
			'settings.resetShortcutsConfirm' => 'Detta kommer att ersätta dina anpassade genvägar med standardinställningarna. Fortsätta?',
			'settings.about' => 'Om',
			'settings.aboutDescription' => 'Appinformation och licenser',
			'settings.updates' => 'Uppdateringar',
			'settings.updateAvailable' => 'Uppdatering tillgänglig',
			'settings.checkForUpdates' => 'Kontrollera uppdateringar',
			'settings.autoCheckUpdatesOnStartup' => 'Kontrollera uppdateringar automatiskt vid start',
			'settings.autoCheckUpdatesOnStartupDescription' => 'Meddela när en uppdatering finns vid start',
			'settings.validationErrorEnterNumber' => 'Ange ett giltigt tal',
			'settings.validationErrorDuration' => ({required Object min, required Object max, required Object unit}) => 'Tiden måste vara mellan ${min} och ${max} ${unit}',
			'settings.shortcutAlreadyAssigned' => ({required Object action}) => 'Genvägen används redan för ${action}',
			'settings.shortcutUpdated' => ({required Object action}) => 'Genvägen för ${action} har uppdaterats',
			'settings.saveFailed' => 'Det gick inte att spara ändringarna. Försök igen.',
			'settings.autoPlayAndSkip' => 'Autouppspelning och hoppa över',
			'settings.autoPlayNextEpisode' => 'Spela nästa avsnitt automatiskt',
			'settings.autoPlayNextEpisodeDescription' => 'Starta nästa avsnitt automatiskt när det aktuella avsnittet slutar',
			'settings.shuffleStartsFromBeginning' => 'Blanda från början',
			'settings.shuffleStartsFromBeginningDescription' => 'Starta varje avsnitt från början vid blandad uppspelning i stället för att återuppta',
			'settings.playNextCountdown' => 'Nedräkning för nästa avsnitt',
			'settings.playNextCountdownImmediate' => 'Spela direkt',
			'settings.skipIntroMode' => 'Hoppa över intro',
			'settings.skipIntroModeOffDescription' => 'Spela intron som vanligt utan knapp för att hoppa över',
			'settings.skipIntroModeButtonDescription' => 'Visa en knapp för att hoppa över när ett intro börjar',
			'settings.skipIntroModeAutoDescription' => 'Hoppa över intron automatiskt efter fördröjningen nedan',
			'settings.skipCreditsMode' => 'Hoppa över eftertexter',
			'settings.skipCreditsModeOffDescription' => 'Spela eftertexterna som vanligt utan knapp för att hoppa över',
			'settings.skipCreditsModeButtonDescription' => 'Visa en knapp för att hoppa över när eftertexterna börjar',
			'settings.skipCreditsModeAutoDescription' => 'Hoppa över eftertexterna automatiskt och spela nästa avsnitt',
			'settings.skipMarkerModeOff' => 'Av',
			'settings.skipMarkerModeButton' => 'Visa knapp',
			'settings.skipMarkerModeAuto' => 'Automatiskt',
			'settings.forceSkipMarkerFallback' => 'Tvinga reservmarkörer',
			'settings.forceSkipMarkerFallbackDescription' => 'Använd mönster i kapiteltitlar även när Plex har markörer',
			'settings.autoSkipDelay' => 'Fördröjning före automatiskt hopp',
			'settings.autoSkipDelayDescription' => ({required Object seconds}) => 'Vänta ${seconds} sekunder innan innehållet hoppas över automatiskt',
			'settings.introPattern' => 'Intromarkörsmönster',
			'settings.introPatternDescription' => 'Reguljärt uttryck för att matcha intromarkörer i kapiteltitlar',
			'settings.creditsPattern' => 'Eftertextmarkörsmönster',
			'settings.creditsPatternDescription' => 'Reguljärt uttryck för att matcha eftertextmarkörer i kapiteltitlar',
			'settings.invalidRegex' => 'Ogiltigt reguljärt uttryck',
			'settings.regex' => 'Reguljärt uttryck',
			'settings.downloads' => 'Nedladdningar',
			'settings.downloadLocationDescription' => 'Välj var nedladdat innehåll ska lagras',
			'settings.downloadLocationDefault' => 'Standard (appens lagring)',
			'settings.downloadLocationCustom' => 'Anpassad plats',
			'settings.selectFolder' => 'Välj mapp',
			'settings.resetToDefault' => 'Återställ standard',
			'settings.currentPath' => ({required Object path}) => 'Aktuell: ${path}',
			'settings.downloadLocationChanged' => 'Nedladdningsplats ändrad',
			'settings.downloadLocationReset' => 'Nedladdningsplats återställd till standard',
			'settings.downloadLocationInvalid' => 'Vald mapp är inte skrivbar',
			'settings.downloadLocationPickerUnavailable' => 'Mappval är inte tillgängligt på den här enheten',
			'settings.downloadOnWifiOnly' => 'Ladda endast ned via wifi',
			'settings.downloadOnWifiOnlyDescription' => 'Förhindra nedladdningar via mobildata',
			'settings.autoRemoveWatchedDownloads' => 'Ta automatiskt bort sedda nedladdningar',
			'settings.autoRemoveWatchedDownloadsDescription' => 'Ta automatiskt bort sedda nedladdningar',
			'settings.cellularDownloadBlocked' => 'Nedladdningar blockeras via mobilnätet. Använd wifi eller ändra inställningen.',
			'settings.maxVolume' => 'Maxvolym',
			'settings.maxVolumeDescription' => 'Tillåt att volymen höjs över 100 % för innehåll med låg ljudnivå',
			'settings.maxVolumePercent' => ({required Object percent}) => '${percent} %',
			'settings.discordRichPresence' => 'Discord-aktivitet',
			'settings.discordRichPresenceDescription' => 'Visa vad du tittar på i Discord',
			'settings.services' => 'Tjänster',
			'settings.servicesDescription' => 'Anslut Trakt, MyAnimeList, Seerr med mera',
			'settings.manageLibrariesDescription' => 'Ordna om och dölj bibliotek',
			'settings.companionRemoteServer' => 'Server för fjärrkontroll',
			'settings.companionRemoteServerDescription' => 'Tillåt att mobila enheter i nätverket styr appen',
			'settings.companionRemoteServerStartFailed' => 'Kunde inte starta servern för fjärrkontroll',
			'settings.companionRemoteServerStopFailed' => 'Kunde inte stoppa servern för fjärrkontroll',
			'settings.autoPip' => 'Automatisk bild-i-bild',
			'settings.autoPipDescription' => 'Aktivera bild-i-bild om du lämnar appen under uppspelning',
			'settings.matchContentFrameRate' => 'Matcha innehållets bildfrekvens',
			'settings.matchContentFrameRateDescription' => 'Matcha skärmens uppdateringsfrekvens med videoinnehållet',
			'settings.matchContentResolution' => 'Anpassa till innehållets upplösning',
			'settings.matchContentResolutionDescription' => 'Växlar skärmen till videons ursprungliga upplösning så att din TV sköter uppskalningen. Menyer och undertexter skalas också upp under uppspelning',
			'settings.matchRefreshRate' => 'Matcha uppdateringsfrekvens',
			'settings.matchRefreshRateDescription' => 'Matcha skärmens uppdateringsfrekvens i helskärm',
			'settings.matchDynamicRange' => 'Matcha dynamiskt omfång',
			'settings.matchDynamicRangeDescription' => 'Slå på HDR för HDR-innehåll och sedan tillbaka till SDR',
			'settings.displaySwitchDelay' => 'Fördröjning vid skärmbyte',
			'settings.tunneledPlayback' => 'Tunneluppspelning',
			'settings.tunneledPlaybackDescription' => 'Använd videotunnling. Inaktivera om HDR-uppspelning visar svart video eller rörelser hackar.',
			'settings.audioPassthrough' => 'Ljudgenomströmning',
			'settings.audioPassthroughDescription' => 'Skicka Dolby-/DTS-ljud till receivern eller TV:n utan omkodning så att surroundljudet bevaras. Stäng av om inget ljud hörs.',
			'settings.audioPassthroughDescriptionApple' => 'Använd Apples inbyggda Dolby-avkodare för Dolby Digital Plus, inklusive Atmos. DTS och TrueHD spelas fortfarande upp som flerkanaligt PCM-ljud. Stäng av om inget ljud hörs.',
			'settings.audioPassthroughDescriptionAppleSpatial' => 'Använd Apples inbyggda Dolby-dekoder för Dolby Digital Plus, inklusive Atmos. På iOS, iPadOS och tvOS 26 eller senare spelas TrueHD Atmos och DTS:X upp som rumsligt ljud. Andra DTS- och TrueHD-spår spelas som flerkanals PCM. Stäng av om du inte har något ljud.',
			'settings.audioPassthroughOverriddenByNormalization' => 'Av medan ljudstyrkenormalisering är på',
			'settings.audioChannelLimit' => 'Ljudkanaler',
			'settings.audioChannelLimitDescription' => 'Blanda ned avkodat ljud för högtalare, hörlurar eller HDMI-inställningar som inte kan spela upp alla kanaler',
			'settings.audioChannelLimitOriginal' => 'Original',
			'settings.audioChannelLimitOriginalDescription' => 'Spela upp alla kanaler i spåret',
			'settings.audioChannelLimitSurround51' => 'Upp till 5.1',
			'settings.audioChannelLimitSurround51Description' => 'Mixa 7,1 ner till 5,1 för TV-apparater och mottagare som bara tar 5,1 PCM. Genomgången påverkas inte.',
			'settings.audioChannelLimitStereo' => 'Stereo',
			'settings.audioChannelLimitStereoDescription' => 'Mixa ner till två kanaler för stereohögtalare eller hörlurar. Stänger av genomkoppling.',
			'settings.downmixCenterBoost' => 'Förstärkning av centerkanal',
			'settings.downmixCenterBoostValue' => ({required Object db}) => '${db} dB',
			'settings.downmixCenterBoostLabel' => 'Förstärkning (dB)',
			'settings.downmixCenterBoostShort' => 'dB',
			'settings.audioDownmixNormalize' => 'Normalisera ljudstyrka vid nedmixning',
			'settings.audioDownmixNormalizeDescription' => 'Sänk ljudnivån för att förhindra klippning. Stäng av för att behålla originalvolymen (starka ljud kan då bli förvrängda).',
			'settings.dvConversionMode' => 'Dolby Vision-konvertering',
			'settings.dvConversionModeDescription' => 'Välj hur Dolby Vision Profile 7-filer hanteras.',
			'settings.dvConversionAuto' => 'Auto',
			'settings.dvConversionNative' => 'Inbyggt / inaktiverat',
			'settings.dvConversionDv81' => 'P7 → P8.1',
			'settings.dvConversionHevcStrip' => 'P7 → HEVC',
			'settings.dvConversionAutoDescription' => 'Identifiera enhetens funktioner och använd det normala reservbeteendet',
			'settings.dvConversionNativeDescription' => 'Tvinga inbyggd DV7 och förhindra nya försök med DV-konvertering',
			'settings.dvConversionDv81Description' => 'Tvinga direkt RPU-konvertering till Dolby Vision-profil 8.1',
			'settings.dvConversionHevcStripDescription' => 'Ta bort Dolby Visions RPU-/EL-lager och använd vanlig HEVC',
			'settings.disableDolbyVision' => 'Inaktivera Dolby Vision',
			'settings.disableDolbyVisionDescription' => 'Spela upp filens HDR10- eller HLG-lager i stället för Dolby Vision när det finns',
			'settings.hdrSdrConversion' => 'HDR till SDR-konvertering',
			'settings.hdrSdrConversionDescription' => 'Välj vad som konverterar HDR-video när skärmen inte kan visa HDR.',
			'settings.hdrSdrConversionAuto' => 'Auto',
			'settings.hdrSdrConversionAutoDescription' => 'Enhet på Android 9 och senare, spelare på äldre versioner',
			'settings.hdrSdrConversionDevice' => 'Enhet',
			'settings.hdrSdrConversionDeviceDescription' => 'Enhetens videohårdvara konverterar. Snabbast, men färgerna beror på enheten',
			'settings.hdrSdrConversionPlayer' => 'Spelare',
			'settings.hdrSdrConversionPlayerDescription' => 'Spelaren konverterar. Jämna färger, men 4K kan hacka på enklare tv-boxar',
			'settings.deinterlace' => 'Deinterlacing',
			'settings.deinterlaceDescription' => 'Ta bort kamningsartefakter från interlaced video (endast mpv)',
			'settings.deinterlaceOff' => 'Av',
			'settings.deinterlaceOffDescription' => 'Visa sammanflätad video när den är avkodad',
			'settings.deinterlaceVideo' => 'Video',
			'settings.deinterlaceVideoDescription' => 'Förvandla varje fält till en hel bild. För video inspelad för TV, som sport, nyheter och konserter',
			'settings.deinterlaceFilm' => 'Film',
			'settings.deinterlaceFilmDescription' => 'Återställ de ursprungliga ramarna för film och animation telecined till 29,97 fps, vanligt på NTSC DVD-skivor. Videoinspelning för TV-stamning. Live-TV använder video',
			'settings.requireProfileSelectionOnOpen' => 'Fråga efter profil vid appstart',
			'settings.requireProfileSelectionOnOpenDescription' => 'Visa profilval varje gång appen öppnas',
			'settings.forceTvMode' => 'Tvinga TV-läge',
			'settings.forceTvModeKeepTitle' => 'Behålla TV-layouten?',
			'settings.forceTvModeKeepBody' => ({required Object seconds}) => 'TV-layout är designad för fjärrkontroller. Återgå till normal layout i ${seconds} s.',
			'settings.forceTvModeKeepConfirm' => 'Behåll TV-layout',
			'settings.forceTvModeReverted' => 'TV-layout återställd',
			'settings.forceTvModeDescription' => 'Tvinga TV-layout. För enheter som inte upptäcks automatiskt. Kräver omstart.',
			'settings.startInFullscreen' => 'Starta i helskärm',
			'settings.startInFullscreenDescription' => 'Öppna Luroka i helskärm vid start',
			'settings.exitFullscreenOnPlayerClose' => 'Avsluta helskärm vid stängning av spelare',
			'settings.exitFullscreenOnPlayerCloseDescription' => 'Avslutar automatiskt helskärmsläge när videospelaren stängs',
			'settings.autoHidePerformanceOverlay' => 'Dölj prestandainformation automatiskt',
			'settings.autoHidePerformanceOverlayDescription' => 'Tona bort prestandainformationen tillsammans med uppspelningskontrollerna',
			'settings.showNavBarLabels' => 'Visa navigeringsfältets etiketter',
			'settings.showNavBarLabelsDescription' => 'Visa textetiketter under navigeringsfältets ikoner',
			'settings.startupSection' => 'Startsida',
			'settings.showExploreTab' => 'Visa fliken Utforska',
			'settings.showExploreTabDescription' => 'Visa fliken Utforska med innehåll från Plex Discover och anslutna spårningstjänster',
			'settings.liveTvDefaultFavorites' => 'Öppna med favoriter',
			'settings.liveTvDefaultFavoritesDescription' => 'Visa endast favoritkanaler när Live-TV öppnas',
			'settings.general' => 'Allmänt',
			'settings.generalDescription' => 'Språk, start och fönsterbeteende',
			'settings.languageAndRegion' => 'Språk och region',
			'settings.startup' => 'Start',
			'settings.display' => 'Skärm',
			'settings.libraryAndCards' => 'Bibliotek och kort',
			'settings.homeScreen' => 'Hemskärm',
			'settings.navigation' => 'Navigering',
			'settings.window' => 'Fönster',
			'settings.liveTv' => 'Live-TV',
			'settings.player' => 'Spelare',
			'settings.videoAndDisplay' => 'Video och skärm',
			'settings.audio' => 'Ljud',
			'settings.quality' => 'Kvalitet',
			'settings.subtitles' => 'Undertexter',
			'settings.seekAndTiming' => 'Spolning och tidsinställningar',
			'settings.behavior' => 'Beteende',
			'settings.gestures' => 'Gester',
			'settings.gestureBrightnessSwipe' => 'Svep för ljusstyrka',
			'settings.gestureBrightnessSwipeDescription' => 'Svep uppåt eller nedåt i vänsterkanten för att justera ljusstyrkan',
			'settings.gestureVolumeSwipe' => 'Svep för volym',
			'settings.gestureVolumeSwipeDescription' => 'Svep uppåt eller nedåt i högerkanten för att justera volymen',
			'settings.gesturePinchToZoom' => 'Nyp för att zooma',
			'settings.gesturePinchToZoomDescription' => 'Nyp på videon för att zooma in eller ut',
			_ => null,
		} ?? switch (path) {
			'settings.rememberBrightnessLevel' => 'Kom ihåg ljusstyrkan',
			'settings.rememberBrightnessLevelDescription' => 'Starta uppspelningen med ljusstyrkan från det senaste svepet',
			'settings.controls' => 'Kontroller',
			'settings.rememberPlayerChanges' => 'Kom ihåg spelarändringar',
			'settings.rememberPlayerChangesDescription' => 'Var en ändring under uppspelning sparas och tillämpas igen',
			'settings.scopePlaybackSpeed' => 'Uppspelningshastighet',
			'settings.scopeShaderPreset' => 'Förinställning för shader',
			'settings.scopeAspectRatio' => 'Bildförhållande',
			'settings.scopeSyncOffsets' => 'Synkronisering av ljud och undertexter',
			'settings.playerScopeOff' => 'Spara inte',
			'settings.playerScopeGlobal' => 'Överallt',
			'settings.playerScopeLibrary' => 'Per bibliotek',
			'settings.playerScopeTitle' => 'Per serie eller film',
			'settings.exportDialogTitle' => 'Exportera Luroka-inställningar',
			'settings.velvetHourTheme' => 'Sammetstimme',
			'themeEditor.builtIn' => 'Inbyggd',
			'themeEditor.presets' => 'Förinställningar',
			'themeEditor.custom' => 'Anpassad',
			'themeEditor.customEmpty' => 'Inte skapat ännu',
			'themeEditor.editCustom' => 'Redigera anpassat tema',
			'themeEditor.editCustomDescription' => 'Välj varje färg själv',
			'themeEditor.locked' => 'Lås upp med Supporter',
			'themeEditor.savedLocked' => 'Sparad — låses upp med Supporter',
			'themeEditor.title' => 'Anpassat tema',
			'themeEditor.startFrom' => 'Börja från',
			'themeEditor.startFromDescription' => 'Kopiera alla färger från ett annat tema',
			'themeEditor.colors' => 'Färger',
			'themeEditor.preview' => 'Förhandsgranska',
			'themeEditor.slots.bg' => 'Bakgrund',
			'themeEditor.slots.surface' => 'Yta',
			'themeEditor.slots.outline' => 'Disposition',
			'themeEditor.slots.text' => 'Text',
			'themeEditor.slots.textMuted' => 'Sekundär text',
			'themeEditor.slots.accent' => 'Accent',
			'themeEditor.opacity' => 'Opacitet',
			'themeEditor.hexHint' => '#RRGGBB eller #AARRGGBB',
			'themeEditor.fromOtherThemes' => 'Från andra teman',
			'themeEditor.swatchLabel' => ({required Object theme, required Object color}) => '${theme} ${color}',
			'themeEditor.contrast.textOnBg' => 'Text på bakgrund',
			'themeEditor.contrast.textOnSurface' => 'Text på ytan',
			'themeEditor.contrast.textMutedOnBg' => 'Sekundär text på bakgrund',
			'themeEditor.contrast.textMutedOnSurface' => 'Sekundär text på ytan',
			'themeEditor.contrast.accentOnBg' => 'Accent på bakgrunden',
			'themeEditor.contrast.accentOnSurface' => 'Accent på ytan',
			'themeEditor.contrast.labelOnAccent' => 'Knappetikett på accent',
			'themeEditor.lowContrast' => ({required Object pair, required Object ratio, required Object minimum}) => '${pair}: ${ratio}:1, under den rekommenderade ${minimum}:1',
			'themeEditor.discardTitle' => 'Vill du ignorera ändringar?',
			'themeEditor.discardMessage' => 'Dina osparade färgändringar kommer att gå förlorade.',
			'themeEditor.discard' => 'Släng',
			'themeEditor.previewCardTitle' => ({required Object number}) => 'Avsnitt ${number}',
			'themeEditor.previewCardSubtitle' => ({required Object minutes}) => '${minutes} min kvar',
			'themeEditor.previewSwitch' => 'Autouppspelning',
			'themeEditor.previewMutedText' => 'Sekundär text lyder så här',
			'seriesBrowser.oneEpisode' => '1 avsnitt',
			'seriesBrowser.watchedCount' => ({required Object count}) => '${count} tittade',
			'seriesBrowser.episodeCount' => ({required Object count}) => '${count} avsnitt',
			'seriesBrowser.episodesFor' => ({required Object season}) => '${season} · Avsnitt',
			'seriesBrowser.enterHint' => 'Välj: öppen säsong · ↓: avsnitt',
			'titlePage.genre' => 'Genre',
			'titlePage.remaining' => ({required Object time}) => '${time} kvar',
			'titlePage.continueEpisode' => ({required Object season, required Object episode}) => 'Fortsätt S${season} E${episode}',
			'titlePage.watchlist' => 'Bevakningslista',
			'titlePage.more' => 'Mer',
			'tvMenus.appearanceDescription' => 'Tema, skärmmarginaler och affischer',
			'lurokaPlayer.title' => 'Spelarinställningar',
			'lurokaPlayer.watch' => 'Titta',
			'lurokaPlayer.watchDescription' => 'Ställ in tempot, varva ner och bestäm vad som ska spelas härnäst.',
			'lurokaPlayer.picture' => 'Bildinställningar',
			'lurokaPlayer.pictureDescription' => 'Zoom, HDR och videobearbetning',
			'lurokaPlayer.sound' => 'Ljud & undertexter',
			'lurokaPlayer.audioSettings' => 'Ljudinställningar',
			'lurokaPlayer.soundDescription' => 'Timing, volym och ljudutgång',
			'lurokaPlayer.chooseTracks' => 'Välj språk och undertextspår',
			'lurokaPlayer.tools' => 'Avancerat',
			'lurokaPlayer.toolsDescription' => 'Uppspelningsinformation och diagnostik',
			'lurokaPlayer.preferences' => 'Uppspelningsinställningar',
			'lurokaPlayer.preferencesDescription' => 'Din biograf, dina standardinställningar. Börja med ljud och bildtexter, finjustera sedan streaming och din skärm.',
			'lurokaPlayer.streamPreferences' => 'Streamingkvalitet',
			'lurokaPlayer.displayPreferences' => 'Display',
			'lurokaPlayer.enginePreferences' => 'Avancerade spelaralternativ',
			'lurokaPlayer.seekPreferences' => 'Söker',
			'lurokaPlayer.watchPreferences' => 'Automatisk uppspelning och överhoppning',
			'lurokaPlayer.rememberPreferences' => 'Kom ihåg inställningar',
			'lurokaSettings.quickSetup' => 'Snabb inställning',
			'lurokaSettings.quickSetupDescription' => 'Börja med det viktigaste: smidigare tv-surfning, en bekväm skärmpassning, din hemlayout och uppspelningsinställningar.',
			'lurokaSettings.experience' => 'Din erfarenhet',
			'lurokaSettings.experienceDescription' => 'Få Luroka att kännas rätt: utseende, språk, uppspelning, bibliotek och skärmtid.',
			'lurokaSettings.remoteHint' => '↑ ↓ Bläddra i kategorier · → / Välj Öppna alternativ · ← Gå tillbaka till kategorier',
			'playerChrome.browse' => 'Kapitel & kö',
			'playerChrome.backToPlayback' => 'Tillbaka till uppspelning',
			'playerChrome.nowPlaying' => 'SPELAR NU',
			'playerChrome.options' => 'SPELARALTERNATIV',
			'tvLayout.screenMargins' => 'TV-skärmens marginaler',
			'tvLayout.screenMarginsDescription' => 'Krymp appens kanter om din TV skär av en del av bilden',
			'tvLayout.screenMarginsDefault' => '0 % (standard)',
			'studios.checkingCopies' => 'Kontrollerar andra bibliotek... Välj en känd kopia när som helst.',
			'studios.incompleteCopies' => 'Vissa bibliotek kunde inte kontrolleras. Välj en känd kopia eller avbryt och försök igen.',
			'studios.partialFavorites' => 'Vissa favoriter kunde inte laddas. Välj Uppdatera för att försöka igen.',
			'studios.copyLookupFailedTitle' => 'Det gick inte att kontrollera alla kopior',
			'studios.copyLookupFailedMessage' => 'Vissa bibliotek svarade inte. Du kan öppna en av kopiorna som redan hittats eller avbryta och försöka igen.',
			'studios.openKnownCopies' => 'Visa kända kopior',
			'studios.browseAll' => 'Bläddra bland alla',
			'studios.titleCount' => ({required Object count}) => '${count} titlar',
			'studios.topRated' => 'Högsta betyg',
			'studios.mostWatched' => 'Mest sedda i ditt bibliotek',
			'studios.collection' => 'STUDIO KOLLEKTION',
			'studios.loadedTitles' => ({required Object count}) => '${count}-titlar laddade',
			'studios.sort' => 'Sortera titlar',
			'studios.sortTitleAscending' => 'Titel A–Z',
			'studios.sortTitleDescending' => 'Titel Z–A',
			'studios.sortNewest' => 'Senaste utgåvan',
			'studios.sortOldest' => 'Äldsta utgåvan',
			'studios.sortAdded' => 'Nyligen tillagd',
			'studios.sortEpisodeAdded' => 'Nyligen tillagt avsnitt',
			'studios.sortRating' => 'Högst betyg',
			'studios.title' => 'Bläddra efter Studio',
			'studios.all' => 'Alla',
			'studios.movies' => 'Filmer',
			'studios.shows' => 'TV-program',
			'studios.loadMore' => 'Ladda fler titlar',
			'studios.empty' => 'Inga matchande titlar i dina för närvarande synliga bibliotek.',
			'studios.retry' => 'Det gick inte att ladda fler titlar — välj för att försöka igen',
			'studios.description' => 'Utforska filmer och program från den här studion i dina bibliotek.',
			'dashboard.previousFeature' => 'Tidigare utvald titel',
			'dashboard.nextFeature' => 'Nästa utvalda titel',
			'dashboard.cinemaHome' => 'HEM',
			'dashboard.episodeFallback' => 'TV-avsnitt',
			'dashboard.timeLeft' => ({required Object minutes}) => '${minutes} min kvar',
			'dashboard.timeLeftHours' => ({required Object hours, required Object minutes}) => '${hours}h ${minutes}m kvar',
			'dashboard.spoilerHidden' => 'Avsnittsdetaljer dolda av dina spoilerpreferenser.',
			'dashboard.synopsisUnavailable' => 'Öppna Detaljer för att se mer om den här titeln.',
			'dashboard.yourSpace' => 'DITT UTRYMME',
			'dashboard.title' => 'Din biograf.',
			'dashboard.subtitle' => 'Fortsätt en berättelse eller hitta nästa.',
			'dashboard.featured' => 'UTVALT AV LUROKA',
			'dashboard.jumpBackIn' => 'Fortsätt titta',
			'dashboard.episodeLabel' => ({required Object season, required Object episode}) => 'S${season} · E${episode}',
			'dashboard.anotherPick' => 'Ett annat val',
			'dashboard.exploreSeries' => 'Utforska serier',
			'dashboard.showFeatured' => 'Fokuserade titeldetaljer',
			'dashboard.showFeaturedDescription' => 'Visa konstverk, synopsis och avsnittsinformation för det markerade kortet',
			'lurokaCatalog.aboutPerson' => 'I FRAMLJUS',
			'lurokaCatalog.biographyUnavailable' => 'En biografi är inte tillgänglig från denna server.',
			'lurokaCatalog.filmography' => 'Filmer och program i dina bibliotek',
			'lurokaCatalog.recommended' => 'Upptäck',
			'lurokaCatalog.browse' => 'Alla titlar',
			'lurokaCatalog.collections' => 'Samlingar',
			'lurokaCatalog.browseHint' => 'Utforska din katalog. Forma urvalet med filter och sortering.',
			'lurokaCatalog.recommendedHint' => 'Hitta din nästa berättelse',
			'lurokaCatalog.details' => 'Bakom historien',
			'referenceDetails.oneEpisodeLeft' => '1 avsnitt kvar',
			'referenceDetails.playAll' => 'Spela alla',
			'referenceDetails.present' => 'Närvarande',
			'referenceDetails.continuing' => 'Fortsätter',
			'referenceDetails.upNext' => 'Nästa',
			'referenceDetails.episodesLeft' => ({required Object count}) => '${count} avsnitt kvar',
			'lurokaThemes.title' => 'Luroka biopaletter',
			'lurokaThemes.coral' => 'Korall · midnattsblå & solnedgång',
			'lurokaThemes.ocean' => 'Hav · djupblått & is',
			'lurokaThemes.jade' => 'Jade · vintergrön & mint',
			'lurokaThemes.amethyst' => 'Ametist · midnattsviol',
			'lurokaThemes.darkThemes' => 'Mörka bioteman',
			'lurokaThemes.lightThemes' => 'Lätta bioteman',
			'lurokaThemes.moreThemes' => 'Fler teman',
			'lurokaThemes.moreThemesDescription' => 'Bläddra bland ytterligare paletter och anpassade färger',
			'lurokaThemes.obsidian' => 'Obsidian · ren svart & champagne',
			'lurokaThemes.nocturne' => 'Nocturne · kol & champagne',
			'lurokaThemes.burgundy' => 'Bourgogne · sammetsvin & ros',
			'lurokaThemes.slate' => 'Skiffer · grafit & snäcka',
			'lurokaThemes.espresso' => 'Espresso · kakao & kola',
			'lurokaThemes.pearl' => 'Pärla · porslin & safir',
			'lurokaThemes.linen' => 'Linne · varmt elfenben & terrakotta',
			'lurokaThemes.sunrise' => 'Soluppgång · persika & korall',
			'lurokaThemes.coastal' => 'Kustnära · dimma & havskricka',
			'lurokaThemes.latte' => 'Latte · grädde & kola',
			'lurokaThemes.sage' => 'Salvia · mjuk grön & eukalyptus',
			'lurokaThemes.lavender' => 'Lavendel · lila & djup violett',
			'customPerformance.title' => 'Prestanda & effekter',
			'customPerformance.fireStickMode' => 'Lågströmsenhetsläge',
			'customPerformance.description' => 'Använd reducerade effekter, statiska bakgrunder, konstverk som begränsas till 720p och en 40 MiB bildcache. När det är aktiverat åsidosätter detta visuella effekter; om du stänger av den återställs dina inställningar för visuella effekter.',
			'customPerformance.detailsTitle' => 'Prestandadetaljer',
			'customPerformance.details' => 'Aktiva effekter, bildcachegräns och mätningar av surfprestanda',
			'customPerformance.effectsTier' => 'Aktiva effekter nivå',
			'customPerformance.imageCache' => 'Bildcachegräns',
			'customPerformance.measurement' => 'Surfmätning',
			'customPerformance.measureInstructions' => 'Starta ett 20-sekunders prov, gå tillbaka till Hem och bläddra med fjärrkontrollen. Gå tillbaka hit för att se resultatet. Upprepa samma åtgärder med läget på och av för att jämföra. Detta mäter Flutter UI-arbete, inte videodekoderprestanda.',
			'customPerformance.startSample' => 'Starta 20 sekunders prov',
			'customPerformance.stopSample' => 'Avsluta provet nu',
			'customPerformance.sampling' => 'Sampling — gå tillbaka till Hem och bläddra. Resultaten kommer att sparas här.',
			'customPerformance.frames' => 'Ramar samplade',
			'customPerformance.slowFrames' => 'Ramar över budget',
			'customPerformance.buildP95' => 'Byggtid för användargränssnitt (95:e percentilen)',
			'customPerformance.rasterP95' => 'Rastertid (95:e percentilen)',
			'customPerformance.frameBudget' => 'Budget per ram',
			'customPerformance.processMemory' => 'Appens processminne vid provänden',
			'customPerformance.noFrames' => 'Inga renderade ramar fångades. Starta ett nytt prov och bläddra i appen.',
			'homeLayout.title' => 'Anpassa hemmet',
			'homeLayout.description' => 'Välj radordning och synlighet för den här profilen. Välj en rad för att flytta eller dölja den.',
			'homeLayout.rows' => 'Hemrader',
			'homeLayout.visible' => 'Synlig',
			'homeLayout.hidden' => 'Dold',
			'homeLayout.showRow' => 'Visa rad',
			'homeLayout.hideRow' => 'Göm rad',
			'homeLayout.moveUp' => 'Flytta uppåt',
			'homeLayout.moveDown' => 'Flytta ner',
			'homeLayout.pinnedCollections' => 'Fästa samlingar',
			'homeLayout.pinInstructions' => 'Öppna en samlings meny och välj Pin till Hem. Välj en fäst samling här för att ta bort genvägen.',
			'homeLayout.pinCollection' => 'Pin hem',
			'homeLayout.unpinCollection' => 'Lossa från hemmet',
			'homeLayout.reset' => 'Återställ standardrader',
			'homeLayout.resetDescription' => 'Återställa den ursprungliga radordningen och visa alla rader för den här profilen? Dina fästa samlingar kommer att behållas.',
			'homeLayout.saveFailed' => 'Det gick inte att spara din hemlayout. Försök igen.',
			'homeLayout.emptyHint' => 'Rader kan vara dolda. Öppna Anpassa hem för att visa dem igen.',
			'screenTime.title' => 'Skärmtid',
			'screenTime.description' => 'Se tiden som ägnas åt att titta på video på den här profilen',
			'screenTime.today' => 'Idag',
			'screenTime.thisWeek' => 'Denna vecka',
			'screenTime.thisMonth' => 'Denna månad',
			'screenTime.lessThanMinute' => '< 1 min',
			'screenTime.minutes' => ({required Object count}) => '${count} min',
			'screenTime.hours' => ({required Object count}) => '${count} hr',
			'screenTime.hoursMinutes' => ({required Object hours, required Object minutes}) => '${hours} tim ${minutes} min',
			'activityStats.title' => 'Visa statistik',
			'activityStats.period' => 'Period',
			'activityStats.last7Days' => '7 dagar',
			'activityStats.last30Days' => '30 dagar',
			'activityStats.last90Days' => '90 dagar',
			'activityStats.thisYear' => 'år',
			'activityStats.allTime' => 'Alla',
			'activityStats.heroAllTime' => 'Hela tiden',
			'activityStats.heroDailyAverage' => 'Dagligt genomsnitt',
			'activityStats.consistency' => 'Konsekvens',
			'activityStats.currentStreak' => 'Nuvarande rad',
			'activityStats.dayCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n, one: '${n} dag', other: '${n} dagar', ), 
			'activityStats.longestStreak' => 'Längsta rad',
			'activityStats.bestDay' => 'Bästa dagen',
			'activityStats.bestWeek' => 'Bästa veckan',
			'activityStats.trendTitle' => 'Titta tid',
			'activityStats.trendToday' => 'Idag',
			'activityStats.gapDetail' => ({required Object stat, required Object range}) => '${stat} på ${range}',
			'activityStats.weekdayTitle' => 'Efter veckodag',
			'activityStats.hoursTitle' => 'Efter tid på dygnet',
			'activityStats.amLabel' => 'AM',
			'activityStats.pmLabel' => 'PM',
			'activityStats.kindsTitle' => 'Efter kategori',
			'activityStats.kindMovie' => 'Filmer',
			'activityStats.kindTv' => 'TV',
			'activityStats.kindLiveTv' => 'Live-TV',
			'activityStats.kindMusic' => 'Musik',
			'activityStats.kindOther' => 'Annat',
			'activityStats.topTitlesTitle' => 'Mest tittade',
			'activityStats.sessionsTitle' => 'Senaste sessioner',
			'activityStats.showMore' => 'Visa mer',
			'activityStats.sessionNoTitle' => 'Oidentifierad uppspelning',
			'activityStats.emptyTitle' => 'Inget här ännu',
			'activityStats.emptyBody' => 'Titta på något och din statistik kommer att byggas upp här.',
			'activityStats.noDataInPeriod' => 'Ingen uppspelning inspelad under denna period.',
			'search.hint' => 'Sök filmer, serier, musik...',
			'search.tryDifferentTerm' => 'Prova en annan sökterm',
			'search.searchYourMedia' => 'Sök i dina media',
			'search.enterTitleActorOrKeyword' => 'Ange en titel, skådespelare eller nyckelord',
			'search.people' => 'Människor',
			'search.recentSearches' => 'Senaste sökningar',
			'search.clearHistory' => 'Rensa historik',
			'hotkeys.setShortcutFor' => ({required Object actionName}) => 'Sätt genväg för ${actionName}',
			'hotkeys.clearShortcut' => 'Rensa genväg',
			'hotkeys.noShortcutSet' => 'Ingen genväg angiven',
			'hotkeys.currentShortcut' => 'Aktuell genväg:',
			'hotkeys.pressToRecord' => 'Välj för att registrera en genväg',
			'hotkeys.recordingShortcut' => 'Tryck på genvägen nu',
			'hotkeys.actions.playPause' => 'Spela/Pausa',
			'hotkeys.actions.volumeUp' => 'Höj volym',
			'hotkeys.actions.volumeDown' => 'Sänk volym',
			'hotkeys.actions.seekForward' => ({required Object seconds}) => 'Spola framåt (${seconds}s)',
			'hotkeys.actions.seekBackward' => ({required Object seconds}) => 'Spola bakåt (${seconds}s)',
			'hotkeys.actions.fullscreenToggle' => 'Växla helskärm',
			'hotkeys.actions.muteToggle' => 'Växla ljud av',
			'hotkeys.actions.subtitleToggle' => 'Växla undertexter',
			'hotkeys.actions.audioTrackNext' => 'Nästa ljudspår',
			'hotkeys.actions.subtitleTrackNext' => 'Nästa undertextspår',
			'hotkeys.actions.chapterNext' => 'Nästa kapitel',
			'hotkeys.actions.chapterPrevious' => 'Föregående kapitel',
			'hotkeys.actions.episodeNext' => 'Nästa avsnitt',
			'hotkeys.actions.episodePrevious' => 'Föregående avsnitt',
			'hotkeys.actions.speedIncrease' => 'Öka hastighet',
			'hotkeys.actions.speedDecrease' => 'Minska hastighet',
			'hotkeys.actions.speedReset' => 'Återställ hastighet',
			'hotkeys.actions.zoomIn' => 'Zooma in',
			'hotkeys.actions.zoomOut' => 'Zooma ut',
			'hotkeys.actions.zoomReset' => 'Återställ zoom',
			'hotkeys.actions.subSeekNext' => 'Hoppa till nästa undertext',
			'hotkeys.actions.subSeekPrev' => 'Hoppa till föregående undertext',
			'hotkeys.actions.shaderToggle' => 'Växla shaders',
			'hotkeys.actions.skipMarker' => 'Hoppa över intro/eftertexter',
			'hotkeys.actions.screenshot' => 'Ta skärmbild',
			'fileInfo.title' => 'Filinformation',
			'fileInfo.overview' => 'Översikt',
			'fileInfo.video' => 'Video',
			'fileInfo.audio' => 'Ljud',
			'fileInfo.subtitles' => 'Undertexter',
			'fileInfo.images' => 'Inbäddade bilder',
			'fileInfo.dataStreams' => 'Dataströmmar',
			'fileInfo.lyrics' => 'Sångtexter',
			'fileInfo.file' => 'Fil',
			'fileInfo.attachments' => 'Bilagor',
			'fileInfo.delivery' => 'Leverans',
			'fileInfo.versionCounter' => ({required Object index, required Object count}) => 'Version ${index} av ${count}',
			'fileInfo.fileCounter' => ({required Object index, required Object count}) => 'Fil ${index} av ${count}',
			'fileInfo.noStreams' => 'Servern rapporterade inga strömmar för den här filen.',
			'fileInfo.copyPath' => 'Kopiera sökväg',
			'fileInfo.pathCopied' => 'Filsökväg kopierad',
			'fileInfo.codec' => 'Kodek',
			'fileInfo.codecTag' => 'Codec-tagg',
			'fileInfo.resolution' => 'Upplösning',
			'fileInfo.codedResolution' => 'Kodad upplösning',
			'fileInfo.bitrate' => 'Bithastighet',
			'fileInfo.frameRate' => 'Bildfrekvens',
			'fileInfo.rotation' => 'Rotation',
			'fileInfo.comment' => 'Kommentar',
			'fileInfo.audioDescription' => 'Ljudbeskrivning',
			'fileInfo.headerCompression' => 'Headerkomprimering',
			'fileInfo.sidecarFile' => 'Sidecar-fil',
			'fileInfo.transportTimestamp' => 'Transporttidsstämpel',
			'fileInfo.displayOffset' => 'Visningsoffset',
			'fileInfo.previewFailureCode' => 'Kod för förhandsgranskningsfel',
			'fileInfo.previewRetries' => 'Omförsök för förhandsgranskning',
			'fileInfo.aspectRatio' => 'Bildförhållande',
			'fileInfo.pixelAspectRatio' => 'Pixelförhållande',
			'fileInfo.profile' => 'Profil',
			'fileInfo.level' => 'Nivå',
			'fileInfo.bitDepth' => 'Bitdjup',
			'fileInfo.pixelFormat' => 'Pixelformat',
			'fileInfo.colorSpace' => 'Färgrymd',
			'fileInfo.colorRange' => 'Färgområde',
			'fileInfo.colorPrimaries' => 'Färgprimärer',
			'fileInfo.colorTransfer' => 'Färgöverföring',
			'fileInfo.chromaSubsampling' => 'Krominansnedsampling',
			'fileInfo.chromaLocation' => 'Kroma-placering',
			'fileInfo.scanType' => 'Skanningsläge',
			'fileInfo.interlaced' => 'Interlaced',
			'fileInfo.anamorphic' => 'Anamorfisk',
			'fileInfo.referenceFrames' => 'Referensbildrutor',
			'fileInfo.dynamicRange' => 'Dynamiskt omfång',
			'fileInfo.dolbyVision' => 'Dolby Vision',
			'fileInfo.dolbyVisionLevel' => 'Dolby Vision-nivå',
			'fileInfo.dolbyVisionVersion' => 'Dolby Vision-version',
			'fileInfo.dolbyVisionLayers' => 'Dolby Vision-lager',
			'fileInfo.baseLayerCompatibility' => 'Kompatibilitet för baslager',
			'fileInfo.avcBitstream' => 'AVC-bitström',
			'fileInfo.nalLengthSize' => 'NAL-längdstorlek',
			'fileInfo.scalingMatrix' => 'Anpassad skalningsmatris',
			'fileInfo.streamIdentifier' => 'Strömidentifierare',
			'fileInfo.streamIndex' => 'Strömindex',
			'fileInfo.streamId' => 'Ström-ID',
			'fileInfo.language' => 'Språk',
			'fileInfo.languageCode' => 'Språkkod',
			'fileInfo.streamTitle' => 'Spårnamn',
			'fileInfo.channels' => 'Kanaler',
			'fileInfo.sampleRate' => 'Samplingsfrekvens',
			'fileInfo.spatialAudio' => 'Rumsligt ljud',
			'fileInfo.textBased' => 'Textbaserad',
			'fileInfo.subtitleFormat' => 'Sidecar-format',
			'fileInfo.provider' => 'Leverantör',
			'fileInfo.matchScore' => 'Matchningspoäng',
			'fileInfo.externalDelivery' => 'Kan levereras separat',
			'fileInfo.sidecarPath' => 'Sidecar-sökväg',
			'fileInfo.sourceStream' => 'Kopierad från',
			'fileInfo.temporary' => 'Tillfällig',
			'fileInfo.timeBase' => 'Tidsbas',
			'fileInfo.overallBitrate' => 'Total bithastighet',
			'fileInfo.path' => 'Sökväg',
			'fileInfo.fileName' => 'Filnamn',
			'fileInfo.size' => 'Storlek',
			'fileInfo.totalSize' => 'Total storlek',
			'fileInfo.container' => 'Container',
			'fileInfo.duration' => 'Varaktighet',
			'fileInfo.previewThumbnails' => 'Förhandsgranskningsminiatyrer',
			'fileInfo.previewIndex' => 'Förhandsgranskningsindex',
			'fileInfo.packetLength' => 'Paketlängd',
			'fileInfo.filePresent' => 'Fil finns',
			'fileInfo.fileReadable' => 'Läsbar av servern',
			'fileInfo.streamPath' => 'Strömsökväg',
			'fileInfo.optimizedForStreaming' => 'Optimerad för streaming',
			'fileInfo.has64bitOffsets' => '64-bitars offsetvärden',
			'fileInfo.protocol' => 'Protokoll',
			'fileInfo.mediaType' => 'Mediatyp',
			'fileInfo.sourceKind' => 'Källtyp',
			'fileInfo.optimizedVersion' => 'Optimerad version',
			'fileInfo.optimizationTarget' => 'Optimeringsmål',
			'fileInfo.deletedAt' => 'Raderad',
			'fileInfo.remoteSource' => 'Fjärrkälla',
			'fileInfo.infiniteStream' => 'Oändlig ström',
			'fileInfo.directPlay' => 'Direktuppspelning',
			'fileInfo.directStream' => 'Direktströmning',
			'fileInfo.transcoding' => 'Transkodning',
			'fileInfo.etag' => 'ETag',
			'fileInfo.versionId' => 'Versions-ID',
			'fileInfo.fileId' => 'Fil-ID',
			'fileInfo.defaultAudioTrack' => 'Standardljudspår',
			'fileInfo.defaultSubtitleTrack' => 'Standardundertextspår',
			'fileInfo.subtitlesOff' => 'Av',
			'fileInfo.flagDefault' => 'Standard',
			'fileInfo.flagForced' => 'Forcerad',
			'fileInfo.flagSelected' => 'Vald',
			'fileInfo.flagExternal' => 'Extern',
			'fileInfo.flagHearingImpaired' => 'Hörselskadade',
			'fileInfo.flagDub' => 'Dubbad',
			'fileInfo.flagOriginal' => 'Original',
			'fileInfo.channelsMono' => 'Mono',
			'fileInfo.dolbyVisionProfile' => ({required Object profile}) => 'Profil ${profile}',
			'mediaMenu.markAsWatched' => 'Markera som sedd',
			'mediaMenu.markAsUnwatched' => 'Markera som osedd',
			'mediaMenu.clearProgress' => 'Tydliga framsteg',
			'mediaMenu.removeFromContinueWatching' => 'Ta bort från Fortsätt titta',
			'mediaMenu.viewDetails' => 'Visa detaljer',
			'mediaMenu.goToSeries' => 'Gå till serie',
			'mediaMenu.shufflePlay' => 'Blanda uppspelning',
			'mediaMenu.shuffleNotAvailableOffline' => 'Blandad uppspelning är inte tillgänglig offline',
			'mediaMenu.fileInfo' => 'Filinformation',
			'mediaMenu.deleteEpisodeFromServer' => 'Ta bort avsnitt från servern',
			'mediaMenu.deleteSeasonFromServer' => 'Ta bort säsong från servern',
			'mediaMenu.deleteShowFromServer' => 'Ta bort serie från servern',
			'mediaMenu.deleteMovieFromServer' => 'Ta bort film från servern',
			'mediaMenu.deleteEpisodeTitle' => 'Ta bort det här avsnittet?',
			'mediaMenu.deleteSeasonTitle' => 'Ta bort den här säsongen?',
			'mediaMenu.deleteShowTitle' => 'Ta bort den här serien?',
			'mediaMenu.deleteMovieTitle' => 'Ta bort den här filmen?',
			'mediaMenu.deleteEpisodeConfirm' => 'Ta bort avsnitt',
			'mediaMenu.deleteSeasonConfirm' => 'Ta bort säsong',
			'mediaMenu.deleteShowConfirm' => 'Ta bort serie',
			'mediaMenu.deleteMovieConfirm' => 'Ta bort film',
			'mediaMenu.deleteAnyway' => 'Ta bort ändå',
			'mediaMenu.confirmDeleteTarget' => ({required Object title}) => 'Ta bort ${title} permanent från servern?',
			'mediaMenu.deleteMultipleWarning' => 'Detta omfattar alla avsnitt och deras filer.',
			'mediaMenu.deleteEpisodeCountWarning' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n, one: 'Detta tar bort ${n} avsnitt i den, och dess fil.', other: 'Detta tar bort alla ${n} avsnitt i den, och deras filer.', ), 
			'mediaMenu.deleteMultiPartWarning' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n, one: 'Detta objekt lagras som ${n} fil, som kommer att tas bort.', other: 'Detta objekt lagras i ${n} filer, och alla kommer att tas bort.', ), 
			'mediaMenu.deleteSharedFileHeading' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n, one: '${n} annat avsnitt lagras i samma fil och kommer också att tas bort:', other: '${n} andra avsnitt lagras i samma fil och kommer också att tas bort:', ), 
			'mediaMenu.deleteScopeUnverifiedProbeFailed' => 'Luroka kunde inte kontrollera vilka filer detta tar bort, så det kan ta bort mer än objektet ovan. Avbryt och försök igen, eller ta bort ändå.',
			'mediaMenu.deleteScopeUnverifiedNoFileInfo' => 'Din server tillhandahöll inte filinformation för detta objekt, så Luroka kan inte kontrollera vilka filer detta tar bort. Det kan ta bort mer än objektet ovan.',
			'mediaMenu.mediaDeletedSuccessfully' => 'Medieobjektet har tagits bort',
			'mediaMenu.mediaFailedToDelete' => 'Det gick inte att ta bort medieobjektet',
			'mediaMenu.rate' => 'Betygsätt',
			'mediaMenu.playFromBeginning' => 'Spela från början',
			'mediaMenu.playVersion' => 'Spela version...',
			'rateSheet.title' => 'Betygsätt',
			'rateSheet.server' => 'Server',
			'rateSheet.favorite' => 'Favorit',
			'rateSheet.favorited' => 'Tillagd i favoriter',
			'rateSheet.saved' => 'Sparat',
			'rateSheet.notAvailable' => 'Ingen matchning hittades',
			'rateSheet.noConnectedServices' => 'Anslut en tjänst i Inställningar för att betygsätta där.',
			'accessibility.mediaCardMovie' => ({required Object title}) => '${title}, film',
			'accessibility.mediaCardShow' => ({required Object title}) => '${title}, TV-serie',
			'accessibility.mediaCardEpisode' => ({required Object title, required Object episodeInfo}) => '${title}, ${episodeInfo}',
			'accessibility.mediaCardSeason' => ({required Object title, required Object seasonInfo}) => '${title}, ${seasonInfo}',
			'accessibility.mediaCardWatched' => 'sedd',
			'accessibility.mediaCardPartiallyWatched' => ({required Object percent}) => 'sett till ${percent} procent',
			'accessibility.mediaCardUnwatched' => 'osedd',
			'accessibility.tapToPlay' => 'Tryck för att spela upp',
			'accessibility.decrease' => 'Minska',
			'accessibility.increase' => 'Öka',
			'accessibility.decreaseValue' => ({required Object label}) => 'Minska ${label}',
			'accessibility.increaseValue' => ({required Object label}) => 'Öka ${label}',
			'accessibility.hue' => 'Nyans',
			'accessibility.saturation' => 'Mättnad',
			'accessibility.brightness' => 'Ljusstyrka',
			'accessibility.hexColor' => 'Hexfärg',
			'accessibility.expandText' => 'Expandera text',
			'accessibility.collapseText' => 'Fäll ihop text',
			'accessibility.alphabetNavigation' => 'Alfabetisk navigering',
			'accessibility.alphabetScrollHint' => 'Svep uppåt eller nedåt för att gå mellan bokstäver',
			'accessibility.rowColumnPosition' => ({required Object row, required Object rowCount, required Object column, required Object columnCount}) => 'Rad ${row} av ${rowCount}, kolumn ${column} av ${columnCount}',
			'accessibility.rowPosition' => ({required Object row, required Object rowCount}) => 'Rad ${row} av ${rowCount}',
			'accessibility.autoScrollPlay' => 'Starta automatisk rullning',
			'accessibility.autoScrollPause' => 'Pausa automatisk rullning',
			'accessibility.hueShort' => 'H',
			'accessibility.saturationShort' => 'S',
			'accessibility.valueShort' => 'V',
			'tooltips.shufflePlay' => 'Blanda uppspelning',
			'tooltips.playTrailer' => 'Spela trailer',
			'tooltips.markAsWatched' => 'Markera som sedd',
			'tooltips.markAsUnwatched' => 'Markera som osedd',
			'audioTracks.track' => ({required Object n}) => 'Ljudspår ${n}',
			'videoControls.audioLabel' => 'Ljud',
			'videoControls.subtitlesLabel' => 'Undertexter',
			'videoControls.addTime' => ({required Object amount, required Object unit}) => '+${amount}${unit}',
			'videoControls.letterbox' => 'Brevlådeformat',
			'videoControls.fillScreen' => 'Fyll skärmen',
			'videoControls.stretch' => 'Sträck ut',
			'videoControls.lockRotation' => 'Lås skärmrotationen',
			'videoControls.unlockRotation' => 'Lås upp skärmrotationen',
			'videoControls.timerActive' => 'Timer aktiv',
			'videoControls.playbackWillPauseIn' => ({required Object duration}) => 'Uppspelningen pausas om ${duration}',
			'videoControls.sleepTimerEndOfVideo' => 'Slutet av aktuell video',
			'videoControls.sleepTimerStopAtHeader' => 'Stoppa vid',
			'videoControls.sleepTimerDurationHeader' => 'Timer',
			'videoControls.playbackWillPauseAtEnd' => 'Uppspelningen pausas i slutet av denna video',
			'videoControls.stillWatching' => 'Tittar du fortfarande?',
			'videoControls.pausingIn' => ({required Object seconds}) => 'Pausar om ${seconds}s',
			'videoControls.continueWatching' => 'Fortsätt',
			'videoControls.autoPlayNext' => 'Spela nästa automatiskt',
			'videoControls.playNext' => 'Spela nästa',
			'videoControls.playButton' => 'Spela',
			'videoControls.pauseButton' => 'Pausa',
			'videoControls.playbackPaused' => 'Pausad',
			'videoControls.playbackResumed' => 'Spelar',
			'videoControls.loadingVideo' => 'Laddar video',
			'videoControls.showPlaybackControls' => 'Visa uppspelningskontroller',
			'videoControls.hidePlaybackControls' => 'Dölj uppspelningskontroller',
			'videoControls.seekBackwardButton' => ({required Object seconds}) => 'Spola bakåt ${seconds} sekunder',
			'videoControls.seekForwardButton' => ({required Object seconds}) => 'Spola framåt ${seconds} sekunder',
			'videoControls.previousButton' => 'Föregående avsnitt',
			_ => null,
		} ?? switch (path) {
			'videoControls.nextButton' => 'Nästa avsnitt',
			'videoControls.previousChapterButton' => 'Föregående kapitel',
			'videoControls.nextChapterButton' => 'Nästa kapitel',
			'videoControls.muteButton' => 'Stäng av ljudet',
			'videoControls.unmuteButton' => 'Slå på ljudet',
			'videoControls.settingsButton' => 'Uppspelningsinställningar',
			'videoControls.infoButton' => 'Info',
			'videoControls.tracksButton' => 'Ljud och undertexter',
			'videoControls.chaptersButton' => 'Kapitel',
			'videoControls.versionQualityButton' => 'Version och kvalitet',
			'videoControls.versionColumnHeader' => 'Version',
			'videoControls.qualityColumnHeader' => 'Kvalitet',
			'videoControls.qualityOriginal' => 'Original',
			'videoControls.qualityPresetLabel' => ({required Object resolution, required Object bitrate}) => '${resolution}p ${bitrate} Mbps',
			'videoControls.transcodeUnavailableFallback' => 'Transkodning otillgänglig — spelar upp i originalkvalitet',
			'videoControls.subtitleUnavailableFallback' => 'De valda undertexterna kunde inte läsas in — uppspelningen fortsätter utan undertexter',
			'videoControls.pipButton' => 'Bild-i-bild-läge',
			'videoControls.aspectRatioButton' => 'Bildförhållande',
			'videoControls.ambientLighting' => 'Ambientbelysning',
			'videoControls.fullscreenButton' => 'Aktivera helskärm',
			'videoControls.exitFullscreenButton' => 'Avsluta helskärm',
			'videoControls.alwaysOnTopButton' => 'Alltid överst',
			'videoControls.rotationLockButton' => 'Rotationslås',
			'videoControls.lockScreen' => 'Lås skärm',
			'videoControls.screenLockButton' => 'Skärmlås',
			'videoControls.longPressToUnlock' => 'Tryck länge för att låsa upp',
			'videoControls.timelineSlider' => 'Videotidslinje',
			'videoControls.volumeSlider' => 'Volymnivå',
			'videoControls.endsAt' => ({required Object time}) => 'Slutar kl. ${time}',
			'videoControls.pipActive' => 'Spelas upp i bild-i-bild',
			'videoControls.pipFailed' => 'Bild-i-bild kunde inte starta',
			'videoControls.screenshotSaved' => 'Skärmbild sparad',
			'videoControls.screenshotFailed' => 'Det gick inte att ta en skärmdump',
			'videoControls.zoomPercent' => ({required Object percent}) => 'Zoom ${percent}%',
			'videoControls.volumePercent' => ({required Object percent}) => 'Volym ${percent}%',
			'videoControls.pipErrors.androidVersion' => 'Kräver Android 8.0 eller nyare',
			'videoControls.pipErrors.iosVersion' => 'Kräver iOS 15.0 eller nyare',
			'videoControls.pipErrors.permissionDisabled' => 'Bild-i-bild är inaktiverat. Aktivera det i systeminställningarna.',
			'videoControls.pipErrors.notSupported' => 'Denna enhet stöder inte bild-i-bild-läge',
			'videoControls.pipErrors.voSwitchFailed' => 'Kunde inte byta videoutgång för bild-i-bild',
			'videoControls.pipErrors.failed' => 'Bild-i-bild kunde inte starta',
			'videoControls.pipErrors.prepareFailed' => 'Bild-i-bild kunde inte förberedas',
			'videoControls.pipErrors.unknown' => ({required Object error}) => 'Ett fel uppstod: ${error}',
			'videoControls.chapters' => 'Kapitel',
			'videoControls.noChaptersAvailable' => 'Inga kapitel tillgängliga',
			'videoControls.queue' => 'Kö',
			'videoControls.noQueueItems' => 'Inga objekt i kön',
			'videoControls.noAudioDevicesAvailable' => 'Inga ljudenheter tillgängliga',
			'videoControls.searchSubtitles' => 'Sök undertexter',
			'videoControls.language' => 'Språk',
			'videoControls.noSubtitlesFound' => 'Inga undertexter hittades',
			'videoControls.subtitleDownloaded' => 'Undertexten har laddats ned',
			'videoControls.subtitleDownloadedNotApplied' => 'Undertexten laddades ned men kunde inte väljas',
			'videoControls.subtitleDownloadFailed' => 'Det gick inte att ladda ned undertexten',
			'videoControls.searchLanguages' => 'Sök språk...',
			'videoControls.skipIntro' => 'Hoppa över intro',
			'videoControls.skipCredits' => 'Hoppa över eftertexter',
			'videoControls.nextEpisode' => 'Nästa avsnitt',
			'videoControls.subtitleTrack' => ({required Object n}) => 'Spår ${n}',
			'videoControls.subtitleFile' => ({required Object name}) => 'Undertext ${name}',
			'videoControls.forcedTrack' => ({required Object label}) => '${label} (Forcerad)',
			'videoControls.osdSubtitlesOff' => 'Undertexter: Av',
			'videoControls.osdSubtitles' => ({required Object track}) => 'Undertexter: ${track}',
			'videoControls.osdAudio' => ({required Object track}) => 'Ljud: ${track}',
			'messages.markedAsWatched' => 'Markerad som sedd',
			'messages.markedAsUnwatched' => 'Markerad som osedd',
			'messages.markedAsWatchedOffline' => 'Markerad som sedd (synkroniseras när online)',
			'messages.markedAsUnwatchedOffline' => 'Markerad som osedd (synkroniseras när online)',
			'messages.autoRemovedWatchedDownload' => ({required Object title}) => 'Automatiskt borttagen: ${title}',
			'messages.autoRemovedWatchedDownloads' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n, one: 'Tog automatiskt bort ${n} sedd nedladdning', other: 'Tog automatiskt bort ${n} sedda nedladdningar', ), 
			'messages.removedFromContinueWatching' => 'Borttagen från Fortsätt titta',
			'messages.errorLoading' => ({required Object error}) => 'Fel: ${error}',
			'messages.searchPartialResults' => 'Vissa mediaservrar kunde inte sökas. Visar tillgängliga resultat.',
			'messages.streamInterrupted' => 'Strömmen avbröts. Tryck på uppspelning eller spola för att försöka igen.',
			'messages.liveStreamInterrupted' => 'Liveströmmen avbröts. Tryck på uppspelning för att försöka igen.',
			'messages.fileInfoNotAvailable' => 'Filinformation är inte tillgänglig',
			'messages.playbackAuthenticationRequired' => 'Logga in på medieservern igen för att spela upp objektet.',
			'messages.playbackServerUnavailable' => 'Medieservern är inte tillgänglig. Försök igen senare.',
			'messages.playbackDataInvalid' => 'Servern returnerade ogiltig uppspelningsinformation.',
			'messages.playbackCancelled' => 'Uppspelningen avbröts.',
			'messages.playbackFailed' => 'Det gick inte att starta uppspelningen.',
			'messages.playbackFailedDetail' => ({required Object error}) => 'Det gick inte att starta uppspelningen: ${error}',
			'messages.audioOutputFailed' => 'Ljudutgången slutade svara. Kontrollera ljudanslutningen till TV:n eller receivern; om andra appar också saknar ljud, starta om enheten.',
			'messages.mediaUnavailable' => 'Det här innehållet är inte längre tillgängligt.',
			'messages.errorLoadingFileInfo' => ({required Object error}) => 'Fel vid laddning av filinformation: ${error}',
			'messages.errorLoadingSeries' => 'Fel vid laddning av serie',
			'messages.musicNotSupported' => 'Musikuppspelning stöds inte ännu',
			'messages.noDescriptionAvailable' => 'Ingen beskrivning tillgänglig',
			'messages.noProfilesAvailable' => 'Inga profiler tillgängliga',
			'messages.contactAdminForProfiles' => 'Kontakta din serveradministratör för att lägga till profiler',
			'messages.unableToDetermineLibrarySection' => 'Kan inte avgöra biblioteksavdelningen för detta objekt',
			'messages.logsCleared' => 'Loggar rensade',
			'messages.logsCopied' => 'Loggar kopierade till urklipp',
			'messages.noLogsAvailable' => 'Inga loggar tillgängliga',
			'messages.libraryScanning' => ({required Object title}) => 'Skannar "${title}"...',
			'messages.libraryScanStarted' => ({required Object title}) => 'Biblioteksskanningen har startat för "${title}"',
			'messages.libraryScanFailed' => ({required Object error}) => 'Det gick inte att skanna biblioteket: ${error}',
			'messages.metadataRefreshing' => ({required Object title}) => 'Uppdaterar metadata för "${title}"...',
			'messages.metadataRefreshStarted' => ({required Object title}) => 'Metadatauppdateringen har startat för "${title}"',
			'messages.metadataRefreshFailed' => ({required Object error}) => 'Det gick inte att uppdatera metadata: ${error}',
			'messages.logoutConfirm' => 'Är du säker på att du vill logga ut?',
			'messages.noSeasonsFound' => 'Inga säsonger hittades',
			'messages.seasonsLoadFailed' => 'Det gick inte att läsa in säsonger',
			'messages.noEpisodesFound' => 'Inga avsnitt hittades i första säsongen',
			'messages.noEpisodesFoundGeneral' => 'Inga avsnitt hittades',
			'messages.episodesLoadFailed' => 'Det gick inte att läsa in avsnitt',
			'messages.noResultsFound' => 'Inga resultat hittades',
			'messages.sleepTimerSet' => ({required Object label}) => 'Sovtimer inställd för ${label}',
			'messages.noItemsAvailable' => 'Inga objekt tillgängliga',
			'messages.failedToCreatePlayQueueNoItems' => 'Det gick inte att skapa en uppspelningskö – inga objekt',
			'messages.failedPlayback' => ({required Object action, required Object error}) => 'Det gick inte att ${action}: ${error}',
			'messages.switchingToCompatiblePlayer' => 'Byter till kompatibel spelare...',
			'messages.serverLimitTitle' => 'Uppspelningen misslyckades',
			'messages.serverLimitBody' => 'Serverfel (HTTP 500). En bandbredds-/transkodningsgräns avvisade troligen sessionen. Be ägaren justera den.',
			'messages.mediaUnreadableTitle' => 'Filen är otillgänglig',
			'messages.mediaUnreadableBody' => 'Servern hittade objektet men kunde inte läsa dess fil (HTTP 404). Filen har troligen flyttats, tagits bort eller så är dess lagring offline. Be serverägaren kontrollera filen och skanna om biblioteket.',
			'messages.serverBusyTitle' => 'Strömmen är inte tillgänglig',
			'messages.serverBusyBody' => 'Servern nekade upprepade gånger att strömma den här filen (HTTP 503). Den kan hålla på att startas om eller vara upptagen, eller så kan lagringen där filen finns vara offline. Försök igen om en stund – om det fortsätter, be serverns ägare att kontrollera servern och lagringen där filen finns.',
			'messages.playbackNotAllowedTitle' => 'Uppspelning tillåts inte',
			'messages.playbackNotAllowedBody' => 'Servern vägrade att strömma det här objektet (HTTP 403). Ditt konto kanske inte har behörighet att spela upp det, eller så tillåter servern kanske bara uppspelning i sitt lokala nätverk.',
			'messages.logsUploaded' => 'Loggarna har laddats upp',
			'messages.logsUploadFailed' => 'Det gick inte att ladda upp loggarna',
			'messages.logId' => 'Logg-ID',
			'messages.burnedSubtitlesUseMenu' => 'Undertexterna är inbrända i den här strömmen. Ändra dem via undertextmenyn.',
			'messages.noVideoUrl' => 'Ingen video-URL är tillgänglig',
			'messages.playbackNoMediaSources' => 'Servern returnerade inga spelbara mediekällor',
			'messages.playbackDataNotPrepared' => 'Uppspelningen startades innan uppspelningsinformationen var klar',
			'messages.streamSelectionUnavailable' => 'Val av ström är inte tillgängligt för den här källan',
			'messages.streamSelectionFailed' => 'Kunde inte tillämpa de valda strömmarna',
			'messages.trackSelectionNotRemembered' => 'Det här spårvalet gäller bara den aktuella uppspelningen.',
			'messages.serverUnavailableForProfile' => 'Ingen server är tillgänglig för den aktiva profilen',
			'sourceLibraries.title' => 'Dina servrar och bibliotek',
			'sourceLibraries.description' => 'Välj de bibliotek Luroka använder för Hem, sökning, Upptäck tillgänglighet och Studios. Hemradsordning anpassas separat.',
			'sourceLibraries.partial' => 'Vissa servrar kunde inte kontrolleras. Dina sparade val för dessa bibliotek behålls. Uppdatera för att försöka igen.',
			'sourceLibraries.loadFailed' => 'Det gick inte att ladda dina bibliotek. Kontrollera anslutningen och försök igen.',
			'sourceLibraries.notSelected' => 'Ej tillgängligt i dina valda bibliotek.',
			'sourceLibraries.checkOthers' => 'Kontrollera andra anslutna källor',
			'sourceLibraries.otherSources' => 'Tillgänglig på andra anslutna källor',
			'sourceLibraries.playOnce' => 'Spela en gång',
			'sourceLibraries.includeLibrary' => 'Inkludera detta bibliotek',
			'sourceLibraries.noOthers' => 'Inga kopior hittades på andra anslutna källor.',
			'sourceLibraries.chooseOne' => 'Välj minst ett bibliotek för att fortsätta.',
			'subtitlingStyling.text' => 'Text',
			'subtitlingStyling.border' => 'Kantlinje',
			'subtitlingStyling.background' => 'Bakgrund',
			'subtitlingStyling.fontSize' => 'Teckenstorlek',
			'subtitlingStyling.textColor' => 'Textfärg',
			'subtitlingStyling.borderSize' => 'Kantstorlek',
			'subtitlingStyling.borderColor' => 'Kantfärg',
			'subtitlingStyling.backgroundOpacity' => 'Bakgrundens opacitet',
			'subtitlingStyling.backgroundColor' => 'Bakgrundsfärg',
			'subtitlingStyling.position' => 'Position',
			'subtitlingStyling.assOverride' => 'ASS-åsidosättning',
			'subtitlingStyling.overrideScale' => 'Skala',
			'subtitlingStyling.overrideForce' => 'Tvinga',
			'subtitlingStyling.overrideStrip' => 'Ta bort formatering',
			'subtitlingStyling.positionTop' => 'Överst',
			'subtitlingStyling.positionBottom' => 'Nederst',
			'subtitlingStyling.useMargins' => 'Använd marginaler',
			'subtitlingStyling.useMarginsDescription' => 'Tillåt textundertexter i utrymmet utanför videon. Formaterade undertexter kan behålla sin ursprungliga placering.',
			'subtitlingStyling.anchorToScreen' => 'Förankra vid skärmen',
			'subtitlingStyling.anchorToScreenDescription' => 'Visa textbaserade undertexter i de svarta fälten under bredbildsvideon',
			'subtitlingStyling.bold' => 'Fet',
			'subtitlingStyling.italic' => 'Kursiv',
			'subtitlingStyling.renderResolution' => 'Renderingsupplösning',
			'subtitlingStyling.renderResolutionScreen' => 'Skärmupplösning',
			'subtitlingStyling.renderResolutionVideo' => 'Videoupplösning',
			'mpvConfig.title' => 'mpv.conf',
			'mpvConfig.description' => 'Avancerade inställningar för videospelaren',
			'mpvConfig.presets' => 'Förval',
			'mpvConfig.noPresets' => 'Inga sparade förval',
			'mpvConfig.saveAsPreset' => 'Spara som förval...',
			'mpvConfig.presetName' => 'Förvalnamn',
			'mpvConfig.presetNameHint' => 'Ange ett namn för detta förval',
			'mpvConfig.loadPreset' => 'Ladda',
			'mpvConfig.deletePreset' => 'Ta bort',
			'mpvConfig.presetSaved' => 'Förval sparat',
			'mpvConfig.presetLoaded' => 'Förval laddat',
			'mpvConfig.presetDeleted' => 'Förval borttaget',
			'mpvConfig.confirmDeletePreset' => 'Är du säker på att du vill ta bort detta förval?',
			'mpvConfig.configPlaceholder' => 'gpu-api=vulkan\nhwdec=auto\n# comment',
			'mpvConfig.lineHint' => 'option=value',
			'mpvConfig.addLine' => 'Lägg till rad',
			'mpvConfig.removeLine' => 'Ta bort rad',
			'mpvConfig.embeddedVoHint' => 'vo, gpu-context och gpu-api ignoreras på Linux: inbäddad video renderas alltid via vo=libmpv på videoplanet, och gpu-next (som compute-shaders som ArtCNN behöver) kan inte köras inbäddat.',
			'dialog.confirmAction' => 'Bekräfta åtgärd',
			'profiles.addLurokaProfile' => 'Lägg till Luroka-profil',
			'profiles.switchingProfile' => 'Byter profil…',
			'profiles.deleteThisProfileTitle' => 'Ta bort denna profil?',
			'profiles.deleteThisProfileMessage' => ({required Object displayName}) => 'Ta bort ${displayName}. Anslutningar påverkas inte.',
			'profiles.active' => 'Aktiv',
			'profiles.manage' => 'Hantera',
			'profiles.delete' => 'Ta bort',
			'profiles.signOut' => 'Logga ut',
			'profiles.signOutPlexTitle' => 'Logga ut från Plex?',
			'profiles.signOutPlexMessage' => ({required Object displayName}) => 'Ta bort ${displayName} och alla Plex Home-användare? Du kan logga in igen när som helst.',
			'profiles.signOutPlexDeleteDownloads' => 'Radera även nedladdningar',
			'profiles.signOutPlexDeleteDownloadsDescription' => 'Annars stannar de på den här enheten och kommer tillbaka när du loggar in på det här kontot igen.',
			'profiles.signedOutPlex' => 'Utloggad från Plex.',
			'profiles.signOutFailed' => 'Utloggningen misslyckades.',
			'profiles.sectionTitle' => 'Profiler',
			'profiles.summarySingle' => 'Lägg till profiler för att kombinera hanterade användare och lokala identiteter',
			'profiles.summaryMultipleWithActive' => ({required Object count, required Object activeName}) => '${count} profiler · aktiv: ${activeName}',
			'profiles.summaryMultiple' => ({required Object count}) => '${count} profiler',
			'profiles.removeConnectionTitle' => 'Ta bort anslutningen?',
			'profiles.removeConnectionMessage' => ({required Object connectionLabel, required Object displayName}) => 'Ta bort åtkomsten till ${connectionLabel} för ${displayName}. Andra profiler behåller den.',
			'profiles.deleteProfileTitle' => 'Ta bort profilen?',
			'profiles.deleteProfileMessage' => ({required Object displayName}) => 'Ta bort ${displayName} och profilens anslutningar. Servrarna förblir tillgängliga.',
			'profiles.profileNameLabel' => 'Profilnamn',
			'profiles.pinProtectionLabel' => 'PIN-skydd',
			'profiles.pinManagedByPlex' => 'PIN hanteras av Plex. Redigera på plex.tv.',
			'profiles.noPinSetEditOnPlex' => 'Ingen PIN angiven. För att kräva en, redigera Hem-användaren på plex.tv.',
			'profiles.setPin' => 'Ange PIN',
			'profiles.setPinTitle' => 'Ange PIN',
			'profiles.confirmPinTitle' => 'Bekräfta PIN',
			'profiles.pinSet' => 'PIN angiven',
			'profiles.changePin' => 'Ändra',
			'profiles.removePin' => 'Ta bort',
			'profiles.connectionsLabel' => 'Anslutningar',
			'profiles.add' => 'Lägg till',
			'profiles.deleteProfileButton' => 'Ta bort profil',
			'profiles.noConnectionsHint' => 'Inga anslutningar — lägg till en för att använda den här profilen.',
			'profiles.noConnections' => 'Inga anslutningar',
			'profiles.plexHomeAccount' => 'Plex Home-konto',
			'profiles.plexAccountChip' => ({required Object account}) => 'Plex-konto: ${account}',
			'profiles.plexAccountUserChip' => ({required Object user, required Object account}) => '${user} via ${account}',
			'profiles.connectionDefault' => 'Standard',
			'profiles.connectionAs' => ({required Object displayName}) => 'som ${displayName}',
			'profiles.makeDefault' => 'Gör till standard',
			'profiles.removeConnection' => 'Ta bort',
			'profiles.profileRenamed' => 'Profilen har bytt namn.',
			'profiles.borrowAddTo' => ({required Object displayName}) => 'Lägg till i ${displayName}',
			'profiles.borrowExplain' => 'Låna en annan profils anslutning. PIN-skyddade profiler kräver en PIN.',
			'profiles.borrowEmpty' => 'Inget att låna ännu.',
			'profiles.borrowEmptySubtitle' => 'Anslut Plex, Jellyfin eller Emby till en annan profil först.',
			'profiles.borrowLoadFailed' => 'Det gick inte att läsa in tillgängliga anslutningar. Försök igen.',
			'profiles.borrowFromProfile' => ({required Object displayName}) => 'Från ${displayName}',
			'profiles.borrowConnectionBorrowed' => 'Anslutning lånad.',
			'profiles.borrowFailed' => 'Kunde inte låna anslutningen.',
			'profiles.incorrectPin' => 'Fel PIN.',
			'profiles.incorrectPinTryAgain' => 'Fel PIN. Försök igen.',
			'profiles.sourceProfileMissingParentAccount' => 'Källprofilen saknar sitt överordnade konto.',
			'profiles.failedToLoadHomeUsers' => 'Kunde inte läsa in dina Plex Home-användare. Kontrollera anslutningen och försök igen.',
			'profiles.failedToVerifyPin' => 'Kunde inte verifiera PIN.',
			'profiles.newProfile' => 'Ny profil',
			'profiles.profileNameHint' => 't.ex. Gäster, Barn eller Familjerum',
			'profiles.pinProtectionOptional' => 'PIN-skydd (valfritt)',
			'profiles.pinExplain' => 'En fyrsiffrig PIN-kod krävs för att byta profil.',
			'profiles.continueButton' => 'Fortsätt',
			'profiles.pinsDontMatch' => 'PIN-koderna stämmer inte överens',
			'profiles.tokenIdentityMismatch' => 'Plex-profiltoken kopplades till en oväntad server',
			'connections.sectionTitle' => 'Anslutningar',
			'connections.addConnection' => 'Lägg till anslutning',
			'connections.addConnectionSubtitleNoProfile' => 'Logga in med Plex eller anslut en Jellyfin- eller Emby-server',
			'connections.addConnectionSubtitleScoped' => ({required Object displayName}) => 'Lägg till för ${displayName}: Plex, Jellyfin, Emby eller en annan profilanslutning',
			'connections.sessionExpiredOne' => ({required Object name}) => 'Sessionen har gått ut för ${name}',
			'connections.sessionExpiredMany' => ({required Object count}) => 'Sessionen har gått ut för ${count} servrar',
			'connections.accessDeniedOne' => ({required Object name}) => '${name} nekade åtkomst för det här kontot',
			'connections.accessDeniedMany' => ({required Object count}) => '${count} servrar nekade åtkomst för det här kontot',
			'connections.signInAgain' => 'Logga in igen',
			'connections.editMediaBrowserTitle' => ({required Object product}) => 'Redigera ${product}-anslutning',
			'connections.editMediaBrowserIntro' => ({required Object serverName}) => 'Lägg till eller ta bort URL:er för ${serverName}. Luroka använder den nåbara URL:en med lägst latens.',
			'serversAccounts.title' => 'Servrar och konton',
			'serversAccounts.subtitle' => 'Inloggningsstatus för dina Plex-, Jellyfin- och Emby-servrar',
			'serversAccounts.online' => 'Online',
			'serversAccounts.offline' => 'Offline',
			'serversAccounts.unknown' => 'Inte inloggad här',
			'serversAccounts.usedByNone' => 'Används inte av någon profil',
			'serversAccounts.usedByOne' => ({required Object name}) => 'Används av ${name}',
			'serversAccounts.usedByMany' => ({required Object name, required Object count}) => 'Används av ${name} och ${count} mer',
			'serversAccounts.serversOnline' => ({required Object online, required Object total}) => '${online} av ${total}-servrar online',
			'serversAccounts.noServers' => 'Inget anslutet ännu. Lägg till ditt Plex-konto eller en Jellyfin- eller Emby-server.',
			'serversAccounts.editUrls' => 'Redigera serverwebbadresser',
			'accountPreferences.sectionTitle' => 'Kontoinställningar',
			'accountPreferences.hubSubtitleSingle' => ({required Object account}) => 'Ljud-, undertext- och biblioteksalternativ sparade på ${account}',
			'accountPreferences.hubSubtitleMultiple' => ({required Object count}) => 'Ljud-, undertext- och biblioteksalternativ sparade på ${count} konton',
			'accountPreferences.pickAccount' => 'Varje konto lagrar sina egna inställningar. Välj det du vill redigera.',
			'accountPreferences.storedOnAccount' => 'Dessa alternativ sparas på själva kontot, så alla appar som är inloggade på det använder dem — inklusive Luroka på dina andra enheter.',
			'accountPreferences.noAccounts' => 'Inga konton att konfigurera',
			'accountPreferences.noAccountsHint' => 'Logga in på Plex, eller anslut en Jellyfin- eller Emby-server, så visas de inställningar som lagras på det kontot här.',
			'accountPreferences.unavailable' => 'Det går inte att nå detta konto',
			'accountPreferences.loadFailed' => 'Det gick inte att läsa in dessa inställningar',
			'accountPreferences.noPreference' => 'Ingen preferens',
			'accountPreferences.notSet' => 'Inte angiven',
			'accountPreferences.groups.audioAndSubtitles' => 'Ljud och undertexter',
			'accountPreferences.groups.libraryDisplay' => 'Bibliotek',
			'accountPreferences.groups.personalMedia' => 'Personliga media',
			'accountPreferences.preferredAudioLanguage' => 'Föredraget ljudspråk',
			'accountPreferences.autoSelectAudio' => 'Välj ljud efter språk',
			'accountPreferences.autoSelectAudioDescription' => 'Av behåller det ljudspår som filen markerar som standard.',
			'accountPreferences.preferredSubtitleLanguage' => 'Föredraget undertextspråk',
			'accountPreferences.subtitleMode' => 'Aktivera undertexter',
			'accountPreferences.subtitleModes.none' => 'Manuellt vald',
			'accountPreferences.subtitleModes.noneDescription' => 'Slår aldrig på undertexter av sig själv.',
			'accountPreferences.subtitleModes.defaultMode' => 'Följ spårens flaggor',
			'accountPreferences.subtitleModes.defaultModeDescription' => 'Använd de standard- och forcerade flaggor som lagras på varje undertextspår.',
			'accountPreferences.subtitleModes.always' => 'Alltid aktiverad',
			'accountPreferences.subtitleModes.alwaysDescription' => 'Slå på ett undertextspår på det föredragna språket när ett sådant finns.',
			'accountPreferences.subtitleModes.onlyForced' => 'Endast forcerade undertexter',
			'accountPreferences.subtitleModes.onlyForcedDescription' => 'Ladda endast spår som är markerade som forcerade.',
			'accountPreferences.subtitleModes.smart' => 'Visas med ljud på främmande språk',
			'accountPreferences.subtitleModes.smartDescription' => 'Slå på undertexter endast när ljudet är på ett annat språk.',
			'accountPreferences.subtitleAccessibility' => 'SDH-undertexter',
			'accountPreferences.subtitleAccessibilityOptions.preferNonSdh' => 'Föredra icke-SDH-undertexter',
			'accountPreferences.subtitleAccessibilityOptions.preferSdh' => 'Föredra SDH-undertexter',
			'accountPreferences.subtitleAccessibilityOptions.onlySdh' => 'Endast SDH-undertexter',
			'accountPreferences.subtitleAccessibilityOptions.onlyNonSdh' => 'Endast icke-SDH-undertexter',
			'accountPreferences.forcedSubtitles' => 'Forcerade undertexter',
			'accountPreferences.forcedSubtitleOptions.preferNonForced' => 'Föredra icke-forcerade undertexter',
			'accountPreferences.forcedSubtitleOptions.preferForced' => 'Föredra forcerade undertexter',
			'accountPreferences.forcedSubtitleOptions.onlyForced' => 'Endast forcerade undertexter',
			'accountPreferences.forcedSubtitleOptions.onlyNonForced' => 'Endast icke-forcerade undertexter',
			'accountPreferences.displayMissingEpisodes' => 'Visa saknade avsnitt',
			'accountPreferences.displayMissingEpisodesDescription' => 'Lista avsnitt som servern känner till men som saknar fil.',
			'accountPreferences.hidePlayedInLatest' => 'Dölj sedda objekt i Senaste',
			'accountPreferences.hidePlayedInLatestDescription' => 'Lämna objekt du redan har sett utanför serverns Senaste-rader.',
			'accountPreferences.displayCollectionsView' => 'Visa vyn Samlingar',
			'accountPreferences.displayCollectionsViewDescription' => 'Visa serverns Samlingar-vy tillsammans med dina bibliotek.',
			'accountPreferences.rewatchingInNextUp' => 'Behåll omtittade serier i Nästa',
			'accountPreferences.rewatchingInNextUpDescription' => 'När du har sett klart en serie och börjar om följer Nästa med i omtittningen i stället för att släppa serien.',
			'accountPreferences.watchedIndicator' => 'Seddmarkeringar',
			'accountPreferences.watchedIndicatorOptions.none' => 'Aldrig',
			'accountPreferences.watchedIndicatorOptions.moviesAndShows' => 'Filmer och TV-serier',
			'accountPreferences.watchedIndicatorOptions.movies' => 'Endast filmer',
			'accountPreferences.watchedIndicatorOptions.shows' => 'Endast TV-serier',
			'accountPreferences.mediaReviewsVisibility' => 'Betyg och recensioner',
			'accountPreferences.mediaReviewsOptions.usersAndCritics' => 'Användare och kritiker',
			'accountPreferences.mediaReviewsOptions.usersOnly' => 'Endast användare',
			'accountPreferences.mediaReviewsOptions.criticsOnly' => 'Endast kritiker',
			'accountPreferences.mediaReviewsOptions.nobody' => 'Dolda',
			'discover.title' => 'Upptäck',
			'discover.noContentAvailable' => 'Inget innehåll tillgängligt',
			'discover.addMediaToLibraries' => 'Lägg till medieinnehåll i dina bibliotek',
			'discover.continueWatching' => 'Fortsätt titta',
			'discover.continueWatchingIn' => ({required Object library}) => 'Fortsätt titta i ${library}',
			'discover.nextUp' => 'Nästa',
			'discover.nextUpIn' => ({required Object library}) => 'Nästa i ${library}',
			'discover.recentlyAdded' => 'Nyligen tillagda',
			'discover.recentlyAddedIn' => ({required Object library}) => 'Nyligen tillagda i ${library}',
			'discover.latestAlbumsIn' => ({required Object library}) => 'Senaste albumen i ${library}',
			'discover.recentlyPlayedIn' => ({required Object library}) => 'Nyligen spelade i ${library}',
			'discover.mostPlayedIn' => ({required Object library}) => 'Mest spelade i ${library}',
			'discover.playEpisode' => ({required Object season, required Object episode}) => 'S${season}E${episode}',
			'discover.overview' => 'Översikt',
			'discover.cast' => 'Rollbesättning',
			'discover.extras' => 'Trailrar och extramaterial',
			'discover.studio' => 'Studio',
			'discover.rating' => 'Betyg',
			'discover.director' => 'Regissör',
			'discover.directors' => 'Regissörer',
			'discover.movie' => 'Film',
			'discover.tvShow' => 'TV-serie',
			'discover.minutesLeft' => ({required Object minutes}) => '${minutes} min kvar',
			'discover.moreLikeThis' => 'Mer liknande innehåll',
			'discover.titleCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n, one: '${n} titel', other: '${n} titlar', ), 
			'discover.person.born' => 'Född',
			'discover.person.died' => 'dog',
			'discover.person.birthplace' => 'Födelseplats',
			'discover.person.dateWithAge' => ({required Object date, required Object age}) => '${date} (ålder ${age})',
			'discover.person.dateWithAgeAtDeath' => ({required Object date, required Object age}) => '${date} (åldrad ${age})',
			'errors.searchFailed' => ({required Object error}) => 'Sökningen misslyckades: ${error}',
			'errors.searchUnavailable' => 'Sökningen kunde inte nå någon medieserver.',
			'errors.connectionTimeout' => ({required Object context}) => 'Anslutningen tog för lång tid när ${context} lästes in',
			'errors.connectionFailed' => 'Det gick inte att ansluta till medieservern',
			'errors.unableToLoad' => ({required Object context}) => 'Det gick inte att läsa in ${context}. Försök igen.',
			'errors.noClientAvailable' => 'Ingen klient är tillgänglig',
			'errors.pleaseEnterToken' => 'Ange en token',
			'errors.invalidToken' => 'Ogiltig token',
			'errors.failedToVerifyToken' => ({required Object error}) => 'Det gick inte att verifiera token: ${error}',
			'errors.failedToSwitchProfile' => ({required Object displayName}) => 'Det gick inte att byta till ${displayName}',
			'errors.failedToDeleteProfile' => ({required Object displayName}) => 'Det gick inte att ta bort ${displayName}',
			'errors.failedToRate' => 'Det gick inte att uppdatera betyget',
			'errors.reasonTimedOut' => 'anslutningen tog för lång tid',
			'errors.reasonUnreachable' => 'det gick inte att nå servern',
			'errors.reasonRefused' => 'servern nekade begäran',
			'errors.reasonNotFound' => 'objektet finns inte längre på servern',
			'errors.reasonServerError' => 'servern rapporterade ett fel',
			'errors.reasonCancelled' => 'begäran avbröts',
			'errors.reasonUnexpected' => 'ett oväntat fel uppstod',
			'libraries.title' => 'Bibliotek',
			'libraries.fallbackTitle' => 'Bibliotek',
			'libraries.scanLibraryFiles' => 'Skanna biblioteksfiler',
			'libraries.scanLibrary' => 'Skanna bibliotek',
			'libraries.analyze' => 'Analysera',
			'libraries.analyzeLibrary' => 'Analysera bibliotek',
			'libraries.refreshMetadata' => 'Uppdatera metadata',
			'libraries.emptyTrash' => 'Töm papperskorg',
			'libraries.emptyingTrash' => ({required Object title}) => 'Tömmer papperskorgen för "${title}"...',
			'libraries.trashEmptied' => ({required Object title}) => 'Papperskorgen har tömts för "${title}"',
			'libraries.failedToEmptyTrash' => ({required Object error}) => 'Det gick inte att tömma papperskorgen: ${error}',
			'libraries.analyzing' => ({required Object title}) => 'Analyserar "${title}"...',
			'libraries.analysisStarted' => ({required Object title}) => 'Analysen har startat för "${title}"',
			'libraries.failedToAnalyze' => ({required Object error}) => 'Det gick inte att analysera biblioteket: ${error}',
			'libraries.noLibrariesFound' => 'Inga bibliotek hittades',
			'libraries.allLibrariesHidden' => 'Alla bibliotek är dolda',
			'libraries.hiddenLibrariesCount' => ({required Object count}) => 'Dolda bibliotek (${count})',
			'libraries.thisLibraryIsEmpty' => 'Detta bibliotek är tomt',
			'libraries.noItemsMatchFilters' => 'Inga objekt matchar de aktiva filtren',
			'libraries.resetFilters' => 'Återställ filter',
			'libraries.all' => 'Alla',
			'libraries.clearAll' => 'Rensa alla',
			'libraries.scanLibraryConfirm' => ({required Object title}) => 'Är du säker på att du vill skanna "${title}"?',
			'libraries.analyzeLibraryConfirm' => ({required Object title}) => 'Är du säker på att du vill analysera "${title}"?',
			'libraries.refreshMetadataConfirm' => ({required Object title}) => 'Är du säker på att du vill uppdatera metadata för "${title}"?',
			'libraries.emptyTrashConfirm' => ({required Object title}) => 'Är du säker på att du vill tömma papperskorgen för "${title}"?',
			'libraries.manageLibraries' => 'Hantera bibliotek',
			'libraries.sort' => 'Sortera',
			'libraries.sortBy' => 'Sortera efter',
			'libraries.filters' => 'Filter',
			'libraries.confirmActionMessage' => 'Är du säker på att du vill utföra denna åtgärd?',
			'libraries.showLibrary' => 'Visa bibliotek',
			'libraries.hideLibrary' => 'Dölj bibliotek',
			'libraries.libraryOptions' => 'Biblioteksalternativ',
			'libraries.content' => 'bibliotekets innehåll',
			'libraries.selectLibrary' => 'Välj bibliotek',
			'libraries.filtersWithCount' => ({required Object count}) => 'Filter (${count})',
			'libraries.noRecommendations' => 'Inga rekommendationer tillgängliga',
			'libraries.noCollections' => 'Inga samlingar i det här biblioteket',
			'libraries.noFoldersFound' => 'Inga mappar hittades',
			'libraries.folders' => 'mappar',
			'libraries.tabs.recommended' => 'Rekommenderat',
			'libraries.tabs.browse' => 'Bläddra',
			'libraries.tabs.collections' => 'Samlingar',
			'libraries.tabs.playlists' => 'Spellistor',
			'libraries.groupings.title' => 'Gruppering',
			'libraries.groupings.all' => 'Alla',
			'libraries.groupings.movies' => 'Filmer',
			'libraries.groupings.shows' => 'Serier',
			'libraries.groupings.seasons' => 'Säsonger',
			'libraries.groupings.episodes' => 'Avsnitt',
			'libraries.groupings.artists' => 'Artister',
			'libraries.groupings.albums' => 'Album',
			'libraries.groupings.tracks' => 'Låtar',
			'libraries.groupings.folders' => 'Mappar',
			'libraries.filterCategories.genre' => 'Genre',
			'libraries.filterCategories.year' => 'År',
			'libraries.filterCategories.contentRating' => 'Åldersgräns',
			'libraries.filterCategories.tag' => 'Tagg',
			'libraries.filterCategories.unwatched' => 'Osedda',
			'libraries.filterCategories.unplayed' => 'Ospelat',
			'libraries.filterCategories.favorites' => 'Favoriter',
			'libraries.filterCategories.filePath' => 'Filsökväg',
			'libraries.sortLabels.title' => 'Titel',
			'libraries.sortLabels.dateAdded' => 'Tillagd',
			'libraries.sortLabels.releaseDate' => 'Releasedatum',
			'libraries.sortLabels.rating' => 'Betyg',
			'libraries.sortLabels.communityRating' => 'Användarbetyg',
			'libraries.sortLabels.criticRating' => 'Kritikerbetyg',
			'libraries.sortLabels.userRating' => 'Användarbetyg',
			'libraries.sortLabels.datePlayed' => 'Speldatum',
			'libraries.sortLabels.playCount' => 'Antal spelningar',
			'libraries.sortLabels.productionYear' => 'Produktionsår',
			'libraries.sortLabels.runtime' => 'Speltid',
			'libraries.sortLabels.officialRating' => 'Officiell klassificering',
			'libraries.sortLabels.premiereDate' => 'Premiärdatum',
			'libraries.sortLabels.startDate' => 'Startdatum',
			'libraries.sortLabels.airTime' => 'Sändningstid',
			'libraries.sortLabels.studio' => 'Studio',
			'libraries.sortLabels.random' => 'Slumpmässigt',
			'libraries.sortLabels.dateShared' => 'Delningsdatum',
			'libraries.sortLabels.latestEpisodeAirDate' => 'Senaste avsnittets sändningsdatum',
			'libraries.sortLabels.lastEpisodeDateAdded' => 'Datum då senaste avsnittet lades till',
			'libraries.sortLabels.dateDownloaded' => 'Nedladdningsdatum',
			'libraries.sortLabels.size' => 'Storlek',
			'libraries.sortLabels.library' => 'Bibliotek',
			'libraries.advancedFilters.include' => 'Inkludera',
			'libraries.advancedFilters.exclude' => 'Uteslut',
			'libraries.advancedFilters.any' => 'Vilken som helst',
			'libraries.advancedFilters.yes' => 'Ja',
			'libraries.advancedFilters.no' => 'Nej',
			'libraries.advancedFilters.not' => ({required Object value}) => 'Inte ${value}',
			'libraries.advancedFilters.valueCount' => ({required Object count}) => '${count} har valts',
			'libraries.advancedFilters.valueCountExcluded' => ({required Object count}) => '${count} exkluderas',
			'libraries.advancedFilters.searchValues' => 'Sök värden',
			'libraries.advancedFilters.noValues' => 'Inga värden',
			'libraries.advancedFilters.matchContains' => 'Innehåller',
			'libraries.advancedFilters.matchNotContains' => 'Innehåller inte',
			'libraries.advancedFilters.matchIs' => 'är',
			'libraries.advancedFilters.matchIsNot' => 'är inte',
			'libraries.advancedFilters.matchBeginsWith' => 'Börjar med',
			'libraries.advancedFilters.matchEndsWith' => 'Slutar med',
			'libraries.advancedFilters.textHint' => 'Typ för att matcha',
			'libraries.advancedFilters.from' => 'Från',
			'libraries.advancedFilters.to' => 'Till',
			'libraries.advancedFilters.range' => ({required Object from, required Object to}) => '${from} till ${to}',
			'libraries.advancedFilters.atLeast' => ({required Object value}) => '${value} och uppåt',
			'libraries.advancedFilters.atMost' => ({required Object value}) => 'Upp till ${value}',
			'libraries.advancedFilters.dateLastDays' => ({required Object count}) => 'Senaste ${count} dagar',
			'libraries.advancedFilters.dateLastYear' => 'Förra året',
			'libraries.advancedFilters.dateOlderThanDays' => ({required Object count}) => 'Äldre än ${count} dagar',
			'libraries.advancedFilters.dateOlderThanYear' => 'Äldre än ett år',
			'about.title' => 'Om',
			'about.openSourceLicenses' => 'Licenser för öppen källkod',
			'about.versionLabel' => ({required Object version}) => 'Version ${version}',
			'about.appDescription' => 'En vacker Plex-, Jellyfin- och Emby-klient för Flutter',
			'about.customSource' => 'Källkod',
			'about.basedOnLuroka' => 'Byggd på Plezy kodbas',
			'about.viewLicensesDescription' => 'Visa licenser för tredjepartsbibliotek',
			'about.appSection' => 'App',
			'about.communitySection' => 'gemenskapen',
			'about.creditsSection' => 'Krediter',
			'about.legalSection' => 'Lagligt',
			'about.versionMeta' => ({required Object version, required Object build, required Object platform}) => 'v${version} (${build}) · ${platform}',
			'about.versionMetaNoBuild' => ({required Object version, required Object platform}) => 'v${version} · ${platform}',
			'about.versionUnavailable' => 'Version inte tillgänglig',
			'about.versionDetails' => 'Versionsdetaljer',
			'about.versionDetailsTitle' => ({required Object version, required Object build}) => 'Luroka ${version} (${build})',
			'about.platformLine' => ({required Object platform}) => 'Plattform: ${platform}',
			'about.deviceLine' => ({required Object model}) => 'Enhet: ${model}',
			'about.packageLine' => ({required Object package}) => 'Paket: ${package}',
			'about.localeLine' => ({required Object locale}) => 'Språk: ${locale}',
			'about.copyDetails' => 'Kopiera detaljer',
			_ => null,
		} ?? switch (path) {
			'about.detailsCopied' => 'Appinformationen har kopierats',
			'about.detailsCopyFailed' => 'Det gick inte att kopiera appinformation',
			'about.checkForUpdatesDescription' => 'Kontrollera GitHub för en nyare version',
			'about.checkingForUpdates' => 'Söker efter uppdateringar...',
			'about.whatsNew' => 'Vad är nytt',
			'about.releaseNotesUnavailable' => 'Inga releasenotes finns tillgängliga.',
			'about.sourceCodeDescription' => 'Luroka på GitHub',
			'about.reportIssue' => 'Rapportera ett problem',
			'about.reportIssueDescription' => 'Berätta vad som gick fel',
			'about.documentation' => 'Dokumentation',
			'about.documentationDescription' => 'Installation, funktioner och bygganteckningar',
			'about.upstreamProjectDescription' => 'Open-source-projekt av edde746 och bidragsgivare',
			'about.upstreamWebsite' => 'Uppströms webbplats',
			'about.attribution' => 'Data & attribution',
			'about.attributionDescription' => 'Metadata, betyg och varumärken',
			'about.attributionBody' => 'Denna produkt använder TMDB API men är inte godkänd eller certifierad av TMDB. Popularitetslistor, metadata och IMDb-betyg tillhandahålls av Cinemeta. Poäng behåller sina källetiketter.',
			'about.trademarkNotices' => 'Plex, Jellyfin, Emby, Trakt, Simkl, MyAnimeList, AniList, Trakt, Simkl, MyAnimeList, AniList, Trakt, och relaterade varumärken tillhör deras varumärken, Z07XKEEPQ0 och relaterade varumärken ägare. Luroka är inte ansluten till eller godkänd av dem.',
			'about.privacyPolicy' => 'Integritetspolicy',
			'about.privacyPolicyDescription' => 'Hur din data hanteras',
			'about.gplLicense' => 'GNU GPL-3.0-licens',
			'about.gplLicenseDescription' => 'Luroka är fri programvara',
			'about.linkOpenFailed' => 'Det gick inte att öppna den här länken',
			'about.opensInBrowser' => 'Öppnas i din webbläsare',
			'about.footer' => 'Luroka är fri programvara under GPL-3.0.',
			'about.copyright' => ({required Object year}) => '© ${year} Luroka bidragsgivare',
			'serverSelection.noServersFoundForAccount' => ({required Object username, required Object email}) => 'Inga servrar hittades för ${username} (${email})',
			'serverSelection.failedToLoadServers' => ({required Object error}) => 'Det gick inte att läsa in servrar: ${error}',
			'serverSelection.noValidServers' => 'Inga användbara servrar hittades på det här kontot',
			'hubDetail.title' => 'Titel',
			'hubDetail.releaseYear' => 'Utgivningsår',
			'hubDetail.dateAdded' => 'Tilläggsdatum',
			'hubDetail.rating' => 'Betyg',
			'hubDetail.noItemsFound' => 'Inga objekt hittades',
			'logs.clearLogs' => 'Rensa loggar',
			'logs.copyLogs' => 'Kopiera loggar',
			'logs.uploadLogs' => 'Ladda upp loggar',
			'startup.failedTitle' => 'Luroka kunde inte starta',
			'startup.failedBody' => 'Något gick fel under starten. Detaljerna nedan visar vad som misslyckades.',
			'startup.failedBodyRepairable' => 'Lurokas sparade inställningsfil är skadad och måste byggas om innan Luroka kan starta. Att försöka igen hjälper inte — välj Reparera lagring.',
			'startup.phaseLabel' => 'Steg',
			'startup.showDetails' => 'Visa detaljer',
			'startup.hideDetails' => 'Dölj detaljer',
			'startup.copyDetails' => 'Kopiera detaljer',
			'startup.detailsCopied' => 'Detaljer kopierade till urklipp',
			'startup.uploadDetails' => 'Ladda upp detaljer',
			'startup.repairStorage' => 'Reparera lagring',
			'startup.repairTitle' => 'Reparera lagrade data?',
			'startup.repairBodyCommon' => 'Lurokas inställningsfil är skadad och kan inte läsas. Reparationen återställer alla inställningar till standard.',
			'startup.repairBodyOneCredential' => 'En sparad inloggning är skadad och kan inte läsas. Reparationen tar bort endast den; dina andra inställningar lämnas orörda.',
			'startup.repairBodySignInsKept' => 'Dina servrar och profiler bör förbli inloggade.',
			'startup.repairBodySignInsLost' => 'Nyckeln som skyddar dina sparade inloggningar kan inte återställas från den här filen, så du måste logga in på varje server och profil igen. Inget på din medieserver påverkas.',
			'startup.repairBodySessionsUncertain' => 'Trackers (MAL, AniList, Simkl, Trakt) och Seerr lagras separat och kan överleva eller inte. Luroka berättar exakt vad som behållits.',
			'startup.repairConfirm' => 'Reparera',
			'startup.repairSucceeded' => 'Lagringen reparerad',
			'startup.repairNeedsRestart' => 'Lagringen reparerad — omstart krävs',
			'startup.restartRequiredBody' => 'Dina data reparerades, men Luroka måste starta om innan de kan användas. Stäng Luroka och öppna det igen.',
			'startup.quitLuroka' => 'Avsluta Luroka',
			'startup.repairFailed' => 'Reparationen misslyckades',
			'startup.repairKeptSignIns' => 'Dina servrar och profiler är fortfarande inloggade.',
			'startup.repairLostSignIns' => 'Nyckeln som skyddar dina sparade inloggningar kunde inte återställas. Du måste logga in på varje server och profil igen.',
			'startup.repairLostSessions' => 'Minst en tracker- eller Seerr-anslutning förlorades och måste återanslutas.',
			'startup.backupTitle' => 'En kopia av den skadade filen sparades',
			'startup.backupWarning' => 'Den innehåller dina inloggningsuppgifter. Ladda inte upp eller dela den.',
			'startup.deleteBackup' => 'Ta bort kopia',
			'startup.backupDeleted' => 'Kopian borttagen.',
			'startup.previousFailureTitle' => 'Luroka kunde inte starta förra gången',
			'licenses.relatedPackages' => 'Relaterade paket',
			'licenses.license' => 'Licens',
			'licenses.licenseNumber' => ({required Object number}) => 'Licens ${number}',
			'licenses.licensesCount' => ({required Object count}) => '${count} licenser',
			'licenses.searchHint' => 'Sök paket',
			'licenses.noResults' => ({required Object query}) => 'Inga paket matchar "${query}"',
			'licenses.clearSearch' => 'Rensa sökning',
			'navigation.libraries' => 'Bibliotek',
			'navigation.downloads' => 'Nedladdningar',
			'navigation.liveTv' => 'Live-TV',
			'navigation.explore' => 'Utforska',
			'explore.title' => 'Utforska',
			'explore.selectSource' => 'Välj källa',
			'explore.rows.watchlist' => 'Bevakningslista',
			'explore.rows.recommendedMovies' => 'Rekommenderade filmer',
			'explore.rows.recommendedShows' => 'Rekommenderade serier',
			'explore.rows.trendingMovies' => 'Populära filmer just nu',
			'explore.rows.trendingShows' => 'Populära serier just nu',
			'explore.rows.popularMovies' => 'Populära filmer',
			'explore.rows.popularShows' => 'Populära serier',
			'explore.rows.trendingAnime' => 'Populär anime just nu',
			'explore.rows.suggestedAnime' => 'Föreslagen anime',
			'explore.rows.airingAnime' => 'Bästa anime som sänds nu',
			'explore.rows.popularAnime' => 'Mest populära anime',
			'explore.rows.trending' => 'Trendar nu',
			'explore.rows.upcomingMovies' => 'Kommande filmer',
			'explore.rows.upcomingShows' => 'Kommande serier',
			'explore.status.airing' => 'Pågår',
			'explore.status.ended' => 'Avslutad',
			'explore.status.canceled' => 'Nedlagd',
			'explore.status.upcoming' => 'Kommande',
			'explore.episodeCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n, one: '${n} avsnitt', other: '${n} avsnitt', ), 
			'explore.cast' => 'Rollbesättning',
			'explore.characters' => 'Karaktärer',
			'explore.addToWatchlist' => 'Lägg till i bevakningslista',
			'explore.removeFromWatchlist' => 'Ta bort från bevakningslista',
			'explore.addedToWatchlist' => 'Tillagd i bevakningslistan',
			'explore.removedFromWatchlist' => 'Borttagen från bevakningslistan',
			'explore.watchlistUpdateFailed' => 'Det gick inte att uppdatera bevakningslistan',
			'explore.watchlistNoMatch' => 'Det gick inte att matcha det här objektet mot en bevakningslista',
			'explore.notInLibrary' => 'Finns inte i ditt bibliotek',
			'explore.inTheseLibraries' => 'I dessa bibliotek',
			'explore.checkingLibrary' => 'Kontrollerar ditt bibliotek...',
			'explore.libraryCheckFailed' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n, one: 'Kunde inte kontrollera ${n} server', other: 'Kunde inte kontrollera ${n} servrar', ), 
			'explore.emptyTitle' => 'Inget här ännu',
			'explore.emptyMessage' => ({required Object source}) => 'Rader från ${source} visas här när de har innehåll.',
			'explore.searchHint' => ({required Object source}) => 'Sök i ${source}',
			'explore.searchEmpty' => ({required Object query}) => 'Inga resultat för "${query}"',
			'explore.searchPrompt' => ({required Object source}) => 'Sök efter filmer och serier på ${source}.',
			'explore.searchFailed' => 'Sökningen misslyckades. Kontrollera din anslutning och försök igen.',
			'explore.badge.rankPopular' => ({required Object n}) => '#${n} populär',
			'explore.badge.rankAiring' => ({required Object n}) => '#${n} sänds nu',
			'explore.badge.rankRated' => ({required Object n}) => '#${n} bäst betygsatta',
			'explore.badge.rankTrending' => ({required Object n}) => '#${n} trendar',
			'explore.badge.rankSeasonal' => ({required Object n, required Object season}) => '#${n} i ${season}',
			'explore.badge.watchingNow' => ({required Object n}) => '${n} tittar nu',
			'explore.badge.available' => 'Tillgänglig',
			'explore.badge.partiallyAvailable' => 'Delvis tillgänglig',
			'explore.badge.availableIn4k' => '4K tillgängligt',
			'explore.badge.requested' => 'Begärd',
			'explore.badge.pendingApproval' => 'Väntar på godkännande',
			'explore.badge.processing' => 'Bearbetas',
			'explore.badge.declined' => 'Avvisad',
			'explore.badge.requestFailed' => 'Begäran misslyckades',
			'explore.badge.requested4k' => '4K begärd',
			'explore.badge.seasonsAvailable' => ({required Object available, required Object total}) => '${available}/${total} säsonger',
			'explore.badge.nextEpisodeIn' => ({required Object episode, required Object duration}) => 'Avsnitt ${episode} om ${duration}',
			'explore.badge.nextAiringIn' => ({required Object duration}) => 'Nästa om ${duration}',
			'explore.badge.episodesShort' => ({required Object n}) => '${n} avsn.',
			'explore.badge.minutesPerEpisode' => ({required Object n}) => '${n} min/avsn',
			'explore.badge.adult' => '18+',
			'explore.stats.listed' => ({required Object n}) => '${n} listade',
			'explore.stats.viewersDay' => ({required Object n}) => '${n} tittade idag',
			'explore.stats.viewersWeek' => ({required Object n}) => '${n} tittade denna vecka',
			'explore.stats.viewersMonth' => ({required Object n}) => '${n} tittade denna månad',
			'explore.stats.viewersYear' => ({required Object n}) => '${n} tittade i år',
			'explore.stats.viewersAllTime' => ({required Object n}) => '${n} tittare',
			'explore.stats.planning' => ({required Object n}) => '${n} planerar att titta',
			'explore.stats.favorited' => ({required Object n}) => '${n} favoriter',
			'explore.stats.dropRate' => ({required Object percent}) => '${percent} hoppade av',
			'explore.stats.comments' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n, one: '${n} kommentar', other: '${n} kommentarer', ), 
			'explore.stats.votes' => ({required Object n}) => '${n} röster',
			'explore.stats.watching' => ({required Object n}) => '${n} tittar på den',
			'explore.stats.completed' => ({required Object n}) => '${n} avslutade',
			'explore.stats.onHold' => ({required Object n}) => '${n} på paus',
			'explore.stats.dropped' => ({required Object n}) => '${n} hoppade av',
			'explore.season.winter' => 'Vinter',
			'explore.season.spring' => 'Vår',
			'explore.season.summer' => 'Sommar',
			'explore.season.fall' => 'Höst',
			'explore.season.withYear' => ({required Object season, required Object year}) => '${season} ${year}',
			'explore.format.tv' => 'TV',
			'explore.format.tvShort' => 'TV-short',
			'explore.format.movie' => 'Film',
			'explore.format.special' => 'Special',
			'explore.format.ova' => 'OVA',
			'explore.format.ona' => 'ONA',
			'explore.format.music' => 'Musik',
			'explore.format.other' => 'Annat',
			'explore.sourceMaterial.original' => 'Original',
			'explore.sourceMaterial.manga' => 'Manga',
			'explore.sourceMaterial.lightNovel' => 'Light novel',
			'explore.sourceMaterial.novel' => 'Roman',
			'explore.sourceMaterial.visualNovel' => 'Visual novel',
			'explore.sourceMaterial.game' => 'Spel',
			'explore.sourceMaterial.webComic' => 'Webbserie',
			'explore.sourceMaterial.musicRelease' => 'Musik',
			'explore.sourceMaterial.otherMedia' => 'Annat',
			'explore.creditRole.actor' => 'Skådespelare',
			'explore.creditRole.director' => 'Regissör',
			'explore.creditRole.writer' => 'Författare',
			'explore.creditRole.producer' => 'Producent',
			'explore.creditRole.creator' => 'Skapare',
			'explore.creditRole.composer' => 'Kompositör',
			'explore.relation.prequel' => 'Prequel',
			'explore.relation.sequel' => 'Uppföljare',
			'explore.relation.sideStory' => 'Bihistoria',
			'explore.relation.spinOff' => 'Spin-off',
			'explore.relation.alternativeVersion' => 'Alternativ version',
			'explore.relation.summary' => 'Sammanfattning',
			'explore.relation.parentStory' => 'Huvudberättelse',
			'explore.relation.adaptation' => 'Adaption',
			'explore.relation.other' => 'Relaterat',
			'explore.broadcast' => ({required Object day, required Object time}) => 'Sänds ${day} kl. ${time}',
			'explore.broadcastWithZone' => ({required Object day, required Object time, required Object timezone}) => 'Sänds ${day} kl. ${time} ${timezone}',
			'explore.detail.originalTitle' => 'Originaltitel',
			'explore.detail.alsoKnownAs' => 'Även känd som',
			'explore.detail.studios' => 'Studior',
			'explore.detail.country' => 'Land',
			'explore.detail.language' => 'Språk',
			'explore.detail.released' => 'Släppt',
			'explore.detail.physicalRelease' => 'På skiva',
			'explore.detail.ended' => 'Avslutad',
			'explore.detail.addedOn' => ({required Object date}) => 'Tillagd ${date}',
			'explore.detail.yourRating' => 'Ditt betyg',
			'explore.detail.budget' => 'Budget',
			'explore.detail.revenue' => 'Box office',
			'explore.detail.contentAdvisory' => 'Åldersvägledning',
			'explore.detail.tags' => 'Taggar',
			'explore.detail.revealSpoilerTags' => 'Visa spoiler-taggar',
			'explore.detail.links' => 'Länkar',
			'explore.detail.watchOn' => 'Titta på',
			'explore.detail.watchTrailer' => 'Titta på trailer',
			'explore.detail.openOn' => ({required Object site}) => 'Öppna på ${site}',
			'explore.detail.crew' => 'Besättning',
			'explore.detail.ratings' => 'Betyg',
			'explore.detail.schedule' => 'Schema',
			'explore.detail.recommendedByUsers' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n, one: 'Rekommenderad av ${n} användare', other: 'Rekommenderad av ${n} användare', ), 
			'explore.detail.recommendedBy' => ({required Object who}) => 'Rekommenderad av ${who}',
			'explore.detail.favoritedBy' => ({required Object who}) => 'Favoritmarkerad av ${who}',
			'explore.detail.unairedEpisodes' => ({required Object n}) => '${n} inte sända ännu',
			'explore.detail.recommendedByPercent' => ({required Object percent}) => 'Rekommenderad av ${percent} av tittarna',
			'explore.detail.relatedTitles' => 'Relaterade titlar',
			'explore.detail.background' => 'Bakgrund',
			'explore.totalResults' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n, one: '${n} resultat', other: '${n} resultat', ), 
			'liveTv.title' => 'Live-TV',
			'liveTv.guide' => 'Programguide',
			'liveTv.noChannels' => 'Inga kanaler tillgängliga',
			'liveTv.noDvr' => 'Ingen DVR har konfigurerats på någon server',
			'liveTv.serverUnavailable' => 'Live-TV-servern är inte tillgänglig.',
			'liveTv.serverNotConnected' => 'Live-TV-servern är inte ansluten.',
			'liveTv.noPrograms' => 'Ingen programinformation är tillgänglig',
			'liveTv.liveStreamFailed' => 'Liveströmmen kunde inte startas',
			'liveTv.unknownProgram' => 'Okänt program',
			'liveTv.unknownHub' => 'Okänt',
			'liveTv.unknownError' => 'Okänt fel',
			'liveTv.channelNumber' => ({required Object number}) => 'Kanal ${number}',
			'liveTv.unknownChannel' => 'Okänd kanal',
			'liveTv.live' => 'LIVE',
			'liveTv.reloadGuide' => 'Ladda om programguide',
			'liveTv.searchGuide' => 'Sök i programguiden',
			'liveTv.searchHint' => 'Sök kanaler och program',
			'liveTv.searchNoResults' => ({required Object query}) => 'Inga träffar för "${query}"',
			'liveTv.channelsSection' => 'Kanaler',
			'liveTv.programsSection' => 'Program',
			'liveTv.now' => 'Nu',
			'liveTv.today' => 'Idag',
			'liveTv.tomorrow' => 'I morgon',
			'liveTv.midnight' => 'Midnatt',
			'liveTv.overnight' => 'Natt',
			'liveTv.morning' => 'Morgon',
			'liveTv.daytime' => 'Dagtid',
			'liveTv.evening' => 'Kväll',
			'liveTv.lateNight' => 'Sen kväll',
			'liveTv.whatsOn' => 'På TV nu',
			'liveTv.watchChannel' => 'Titta på kanal',
			'liveTv.favorites' => 'Favoriter',
			'liveTv.reorderFavorites' => 'Ordna om favoriter',
			'liveTv.noFavoriteChannels' => 'Inga favoritkanaler',
			'liveTv.noFavoriteChannelsHint' => 'Visa alla kanaler och tryck sedan länge på en kanal för att lägga till den som favorit.',
			'liveTv.showAllChannels' => 'Visa alla kanaler',
			'liveTv.favoritesLoadFailed' => 'Det gick inte att läsa in favoriter. Kontrollera anslutningen och försök igen.',
			'liveTv.favoritesUpdateFailed' => 'Det gick inte att uppdatera favoriterna. Kontrollera anslutningen och försök igen.',
			'liveTv.joinSession' => 'Gå med i pågående session',
			'liveTv.watchFromStart' => ({required Object minutes}) => 'Titta från början (${minutes} min sedan)',
			'liveTv.watchLive' => 'Titta live',
			'liveTv.goToLive' => 'Gå till live',
			'liveTv.record' => 'Spela in',
			'liveTv.recordEpisode' => 'Spela in avsnitt',
			'liveTv.recordSeries' => 'Spela in serie',
			'liveTv.recordOptions' => 'Inspelningsalternativ',
			'liveTv.saveTo' => 'Spara till',
			'liveTv.recordings' => 'Inspelningar',
			'liveTv.scheduledRecordings' => 'Schemalagda',
			'liveTv.recordingRules' => 'Inspelningsregler',
			'liveTv.noScheduledRecordings' => 'Inga schemalagda inspelningar',
			'liveTv.manageRecording' => 'Hantera inspelning',
			'liveTv.cancelRecording' => 'Avbryt inspelning',
			'liveTv.cancelRecordingTitle' => 'Avbryt denna inspelning?',
			'liveTv.cancelRecordingMessage' => ({required Object title}) => '${title} kommer inte längre att spelas in.',
			'liveTv.deleteRule' => 'Ta bort regel',
			'liveTv.deleteRuleTitle' => 'Ta bort inspelningsregel?',
			'liveTv.deleteRuleMessage' => ({required Object title}) => 'Kommande avsnitt av ${title} kommer inte att spelas in.',
			'liveTv.recordingScheduled' => 'Inspelning schemalagd',
			'liveTv.alreadyScheduled' => 'Detta program är redan schemalagt',
			'liveTv.dvrAdminRequired' => 'DVR-inställningar kräver ett administratörskonto',
			'liveTv.recordingFailed' => 'Det gick inte att schemalägga inspelning',
			'liveTv.recordingTargetMissing' => 'Det gick inte att hitta inspelningsbibliotek',
			'liveTv.recordNotAvailable' => 'Inspelning är inte tillgänglig för detta program',
			'liveTv.recordingCancelled' => 'Inspelningen har avbrutits',
			'liveTv.recordingRuleDeleted' => 'Inspelningsregeln har tagits bort',
			'liveTv.processRecordingRules' => 'Utvärdera regler igen',
			'liveTv.recordingInProgress' => 'Spelar in nu',
			'liveTv.recordingsCount' => ({required Object count}) => '${count} schemalagda',
			'liveTv.editRule' => 'Redigera regel',
			'liveTv.editRuleAction' => 'Redigera',
			'liveTv.recordingRuleUpdated' => 'Inspelningsregel uppdaterad',
			'liveTv.guideReloadRequested' => 'Uppdatering av programguiden har begärts',
			'liveTv.guideReloadFailed' => 'Programguiden kunde inte uppdateras',
			'liveTv.rulesProcessRequested' => 'Ny regelutvärdering har begärts',
			'liveTv.rulesProcessFailed' => 'Inspelningsreglerna kunde inte köras om',
			'liveTv.recordShow' => 'Spela in program',
			'liveTv.recordSettings.startEarly' => 'Börja tidigare (sekunder)',
			'liveTv.recordSettings.endLate' => 'Sluta senare (sekunder)',
			'liveTv.recordSettings.newOnly' => 'Endast nya avsnitt',
			'liveTv.recordSettings.anyChannel' => 'Spela in på alla kanaler',
			'liveTv.recordSettings.anyTime' => 'Spela in när som helst',
			'liveTv.recordSettings.skipInLibrary' => 'Hoppa över avsnitt som redan finns i biblioteket',
			'liveTv.recordSettings.keepUpTo' => 'Avsnitt att behålla',
			'liveTv.recordSettings.keepUpToHint' => '0 behåller alla avsnitt',
			'liveTv.startingInMinutes' => ({required Object minutes}) => 'Börjar om ${minutes} min',
			'liveTv.dayAtTime' => ({required Object day, required Object time}) => '${day} kl. ${time}',
			'liveTv.invalidPlaybackData' => ({required Object product}) => '${product} returnerade ogiltiga uppspelningsdata för Live-TV',
			'liveTv.failedToStartChannel' => 'Kunde inte starta livekanalen',
			'liveTv.failedToBuildStreamUrl' => 'Kunde inte skapa strömmens URL',
			'liveTv.playbackStartFailed' => ({required Object reason}) => 'Det gick inte att starta kanalen: ${reason}',
			'liveTv.channelSwitchFailed' => ({required Object reason}) => 'Det gick inte att byta kanal: ${reason}',
			'collections.title' => 'Samlingar',
			'collections.collection' => 'Samling',
			'collections.empty' => 'Samlingen är tom',
			'collections.deleteCollection' => 'Ta bort samling',
			'collections.deleteConfirm' => ({required Object title}) => 'Ta bort "${title}"? Detta kan inte ångras.',
			'collections.deleted' => 'Samling borttagen',
			'collections.deleteFailed' => 'Det gick inte att ta bort samlingen',
			'collections.deleteFailedWithError' => ({required Object error}) => 'Det gick inte att ta bort samlingen: ${error}',
			'collections.selectCollection' => 'Välj samling',
			'collections.collectionName' => 'Samlingsnamn',
			'collections.enterCollectionName' => 'Ange samlingsnamn',
			'collections.addedToCollection' => 'Objektet har lagts till i samlingen',
			'collections.errorAddingToCollection' => 'Det gick inte att lägga till objektet i samlingen',
			'collections.created' => 'Samlingen har skapats',
			'collections.removeFromCollection' => 'Ta bort från samlingen',
			'collections.removeFromCollectionConfirm' => ({required Object title}) => 'Ta bort "${title}" från den här samlingen?',
			'collections.removedFromCollection' => 'Objektet har tagits bort från samlingen',
			'collections.removeFromCollectionFailed' => 'Det gick inte att ta bort objektet från samlingen',
			'collections.removeFromCollectionError' => ({required Object error}) => 'Fel när objektet skulle tas bort från samlingen: ${error}',
			'collections.searchCollections' => 'Sök samlingar...',
			'playlists.title' => 'Spellistor',
			'playlists.playlist' => 'Spellista',
			'playlists.noPlaylists' => 'Inga spellistor hittades',
			'playlists.create' => 'Skapa spellista',
			'playlists.playlistName' => 'Spellistans namn',
			'playlists.enterPlaylistName' => 'Ange spellistans namn',
			'playlists.delete' => 'Ta bort spellista',
			'playlists.removeItem' => 'Ta bort från spellista',
			'playlists.smartPlaylist' => 'Smart spellista',
			'playlists.itemCount' => ({required Object count}) => '${count} objekt',
			'playlists.oneItem' => '1 objekt',
			'playlists.emptyPlaylist' => 'Denna spellista är tom',
			'playlists.deleteConfirm' => 'Ta bort spellista?',
			'playlists.deleteMessage' => ({required Object name}) => 'Är du säker på att du vill ta bort "${name}"?',
			'playlists.created' => 'Spellistan har skapats',
			'playlists.deleted' => 'Spellistan har tagits bort',
			'playlists.itemAdded' => 'Objektet har lagts till i spellistan',
			'playlists.itemRemoved' => 'Objektet har tagits bort från spellistan',
			'playlists.selectPlaylist' => 'Välj spellista',
			'playlists.searchPlaylists' => 'Sök i spellistor...',
			'playlists.errorCreating' => 'Det gick inte att skapa spellistan',
			'playlists.errorDeleting' => 'Det gick inte att ta bort spellistan',
			'playlists.errorLoading' => 'Det gick inte att läsa in spellistor',
			'playlists.errorAdding' => 'Det gick inte att lägga till objektet i spellistan',
			'playlists.errorReordering' => 'Det gick inte att flytta objektet i spellistan',
			'playlists.errorRemoving' => 'Det gick inte att ta bort objektet från spellistan',
			'music.goToAlbum' => 'Gå till album',
			'music.goToArtist' => 'Gå till artist',
			'music.instantMix' => 'Snabbmix',
			'music.playNext' => 'Spela härnäst',
			'music.addToQueue' => 'Lägg till i kö',
			'music.discNumber' => ({required Object n}) => 'Skiva ${n}',
			'music.trackCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n, one: '${n} låt', other: '${n} låtar', ), 
			'music.nowPlaying' => 'Spelas nu',
			'music.playingFrom' => ({required Object title}) => 'Spelar från ${title}',
			'music.queue' => 'Kö',
			'music.clearQueue' => 'Rensa kön',
			'music.lyrics' => 'Låttext',
			'music.noLyrics' => 'Ingen låttext tillgänglig',
			'music.sleepTimer' => 'Insomningstimer',
			'music.sleepTimerEndOfTrack' => 'Slutet av låten',
			'music.sleepTimerMinutes' => ({required Object n}) => '${n} minuter',
			'music.stopPlayback' => 'Stoppa uppspelning',
			'music.previousTrack' => 'Föregående låt',
			'music.nextTrack' => 'Nästa låt',
			'music.repeat' => 'Upprepa',
			'music.repeatAll' => 'Upprepa alla',
			'music.repeatOne' => 'Upprepa en låt',
			'music.instantMixNoServer' => 'Ingen server är tillgänglig för en snabbmix',
			'music.instantMixFailed' => 'Det gick inte att läsa in snabbmixen',
			'music.instantMixEmpty' => 'Snabbmixen innehöll inga låtar',
			'music.noAudioUrl' => ({required Object track}) => 'Ingen ljud-URL är tillgänglig för ${track}',
			'music.discography.singlesAndEps' => 'Singlar och EP',
			'music.discography.live' => 'Live',
			'music.discography.compilations' => 'Samlingar',
			'watchTogether.title' => 'Titta tillsammans',
			'watchTogether.description' => 'Titta på innehåll synkroniserat med vänner och familj',
			'watchTogether.createRoom' => 'Skapa rum',
			'watchTogether.creatingRoom' => 'Skapar rum...',
			'watchTogether.joinRoom' => 'Gå med i rummet',
			'watchTogether.joiningRoom' => 'Går med i rummet...',
			'watchTogether.connecting' => 'Ansluter...',
			'watchTogether.relayPublic' => 'Rummen använder de offentliga reläerna för Open Watch Party.',
			'watchTogether.relayCustom' => ({required Object url}) => 'Rum använder ditt relä på ${url}.',
			'watchTogether.recentRooms' => 'Senaste rummen',
			'watchTogether.roomActions' => 'Rumsåtgärder',
			'watchTogether.renameRoom' => 'Byt namn på rummet',
			'watchTogether.removeRoom' => 'Ta bort',
			'watchTogether.enterRoomCode' => 'Ange koden på 6 tecken från värden.',
			'watchTogether.roomCode' => 'Rumskod',
			'watchTogether.paste' => 'Klistra in',
			'watchTogether.noCodeInClipboard' => 'Urklippet innehåller ingen rumskod',
			'watchTogether.copyCode' => 'Kopiera kod',
			'watchTogether.codeCopied' => 'Rumskoden kopierad',
			'watchTogether.shareInvite' => 'Dela Bjud',
			'watchTogether.qrShare' => 'Dela QR-kod',
			'watchTogether.qrHint' => 'Skanna med Luroka-appen för att gå med i det här rummet.',
			'watchTogether.phasePlaying' => 'Spelar',
			'watchTogether.phasePaused' => 'Pausad',
			'watchTogether.phaseWaiting' => 'Väntar på alla',
			'watchTogether.inviteCopied' => 'Inbjudan har kopierats. Klistra in det i ett meddelande.',
			'watchTogether.inviteMessage' => ({required Object code}) => 'Gå med i mitt Watch Together-rum i Luroka: luroka://watch?code=${code} — eller öppna Watch Together och ange ${code}.',
			'watchTogether.openSessionControls' => 'Öppna sessionskontroller för Titta tillsammans',
			'watchTogether.reconnecting' => 'Återansluter...',
			'watchTogether.reconnectingDescription' => 'Anslutningen avbröts. Du går automatiskt in i rummet igen.',
			'watchTogether.connected' => 'Ansluten',
			'watchTogether.disconnected' => 'Frånkopplad',
			'watchTogether.youAreHost' => 'Du är värden',
			'watchTogether.hostedBy' => ({required Object name}) => 'Värd: ${name}',
			'watchTogether.hostControlsPlayback' => 'Värden styr uppspelningen',
			'watchTogether.anyoneCanControl' => 'Alla kan styra uppspelningen',
			'watchTogether.roomLocked' => 'Rum låst',
			'watchTogether.nowPlaying' => 'Spelar nu',
			'watchTogether.nothingPlaying' => 'Ingenting spelar',
			'watchTogether.nothingPlayingHost' => 'Spela något från vilket bibliotek som helst för att dela det med rummet.',
			'watchTogether.nothingPlayingGuest' => 'När värden spelar något öppnas det här.',
			'watchTogether.notShareable' => 'Den här videon har ingen katalogmatchning, så bara personer med åtkomst till samma server kan spela upp den.',
			'watchTogether.searching' => 'Letar du efter den här videon i dina bibliotek...',
			'watchTogether.yourCopy' => 'Ditt exemplar',
			'watchTogether.sharingYourCopy' => 'Du delar din kopia',
			'watchTogether.playingOtherLength' => ({required Object difference}) => 'Spelar upp din kopia, ${difference}',
			'watchTogether.mismatchTitle' => 'Ditt exemplar har en annan längd',
			'watchTogether.mismatchDescription' => ({required Object difference}) => 'Din närmaste kopia är ${difference} än rummets video. Det kan vara ett annat snitt eller version.',
			'watchTogether.playAnyway' => 'Spela ändå',
			'watchTogether.chooseAnotherCopy' => 'Välj en annan kopia',
			'watchTogether.dontPlay' => 'Spela inte',
			'watchTogether.unavailableTitle' => 'Du har inte den här videon',
			'watchTogether.unavailableDescription' => 'Luroka kunde inte hitta den i dina bibliotek. Välj en kopia själv eller sök igen.',
			'watchTogether.chooseCopy' => 'Välj en kopia',
			'watchTogether.searchAgain' => 'Sök igen',
			'watchTogether.noCandidates' => 'Inga kopior hittades i dina bibliotek.',
			'watchTogether.choiceFailed' => 'Det gick inte att spela upp den här kopian för rummet',
			'watchTogether.lengthLonger' => ({required Object duration}) => '${duration} längre',
			'watchTogether.lengthShorter' => ({required Object duration}) => '${duration} kortare',
			'watchTogether.lengthSame' => 'Samma längd',
			'watchTogether.lengthUnknown' => 'Längd okänd',
			'watchTogether.joinCurrentPlayback' => 'Gå med i aktuell uppspelning',
			'watchTogether.joinCurrentPlaybackDescription' => 'Hoppa tillbaka till det värden tittar på just nu',
			'watchTogether.stopMedia' => 'Stoppa video för alla',
			'watchTogether.syncOffset' => 'Synkförskjutning',
			'watchTogether.syncOffsetDescription' => 'Flytta din video om den körs framför eller bakom rummet.',
			'watchTogether.offsetHint' => ({required Object difference}) => 'Din kopia är ${difference} än rummets video.',
			'watchTogether.applyDifference' => ({required Object offset}) => 'Använd ${offset}',
			'watchTogether.offsetMinusSecond' => '-1 s',
			'watchTogether.offsetMinusTenth' => '-100 ms',
			'watchTogether.offsetPlusTenth' => '+100 ms',
			'watchTogether.offsetPlusSecond' => '+1 s',
			'watchTogether.participants' => 'Deltagare',
			'watchTogether.participantCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n, one: '${n}-deltagare', other: '${n} deltagare', ), 
			'watchTogether.hostBadge' => 'VÄRD',
			'watchTogether.nameYou' => ({required Object name}) => '${name} (Du)',
			'watchTogether.playerIdle' => 'Inaktiv',
			'watchTogether.playerLoading' => 'Laddar',
			'watchTogether.playerReady' => 'Klar',
			'watchTogether.playerBuffering' => 'Buffring',
			'watchTogether.matchSearching' => 'Söker',
			'watchTogether.matchMatched' => 'Har videon',
			'watchTogether.matchMismatched' => 'Olika längd',
			'watchTogether.matchUnavailable' => 'Har inte videon',
			'watchTogether.participantOffset' => ({required Object offset}) => 'Offset ${offset}',
			'watchTogether.makeHost' => 'Gör till värd',
			'watchTogether.makeHostQuestion' => 'Överför värdskapet?',
			'watchTogether.makeHostConfirm' => ({required Object name}) => '${name} kommer att styra uppspelningen och driva sessionen för alla.',
			'watchTogether.transfer' => 'Överför',
			'watchTogether.removeParticipant' => 'Ta bort från rummet',
			'watchTogether.removeParticipantQuestion' => ({required Object name}) => 'Ta bort ${name}?',
			'watchTogether.removeParticipantConfirm' => ({required Object name}) => '${name} lämnar rummet. De kan gå med igen med koden om du inte låser rummet.',
			'watchTogether.remove' => 'Ta bort',
			'watchTogether.roomSettings' => 'Rumsinställningar',
			'watchTogether.letEveryoneControl' => 'Låt alla styra uppspelningen',
			'watchTogether.lockRoom' => 'Låsrum',
			'watchTogether.lockRoomDescription' => 'Ingen ny kan vara med',
			'watchTogether.leaveRoom' => 'Lämna rummet',
			'watchTogether.leaveRoomQuestion' => 'Lämna rummet?',
			'watchTogether.leaveRoomConfirm' => 'Du kan gå med igen med rumskoden.',
			'watchTogether.leave' => 'Lämna',
			'watchTogether.endRoom' => 'Slutrummet',
			'watchTogether.endRoomQuestion' => 'Slutrummet?',
			'watchTogether.endRoomConfirm' => 'Detta avslutar rummet för alla.',
			'watchTogether.end' => 'Avsluta',
			'watchTogether.playBlockedTitle' => 'Uppspelningen startade inte',
			'watchTogether.playBlockedDescription' => 'Tryck på play för att börja titta med rummet.',
			'watchTogether.notices.pressedPlay' => ({required Object name}) => '${name} tryckte på play',
			'watchTogether.notices.playbackStarted' => 'Uppspelningen startade',
			'watchTogether.notices.paused' => ({required Object name}) => '${name} pausade',
			'watchTogether.notices.playbackPaused' => 'Uppspelningen pausad',
			'watchTogether.notices.jumpedTo' => ({required Object name, required Object position}) => '${name} hoppade till ${position}',
			'watchTogether.notices.roomJumpedTo' => ({required Object position}) => 'Hoppade till ${position}',
			'watchTogether.notices.changedSpeed' => ({required Object name, required Object speed}) => '${name} ändrade hastigheten till ${speed}',
			'watchTogether.notices.speedChanged' => ({required Object speed}) => 'Hastighet inställd på ${speed}',
			'watchTogether.notices.startedMedia' => ({required Object name, required Object title}) => '${name} startade ${title}',
			'watchTogether.notices.mediaStarted' => ({required Object title}) => 'Spelar nu ${title}',
			'watchTogether.notices.stoppedMedia' => ({required Object name}) => '${name} stoppade videon',
			'watchTogether.notices.mediaStopped' => 'Videon stannade',
			'watchTogether.notices.waitingFor' => ({required Object name}) => 'Väntar på ${name}...',
			'watchTogether.notices.waitingForSomeone' => 'Väntar på att någon ska komma ikapp...',
			'watchTogether.notices.finished' => 'Färdig',
			'watchTogether.notices.hostChangedTo' => ({required Object name}) => '${name} är nu värden',
			'watchTogether.notices.youAreNowHost' => 'Du är nu värden',
			_ => null,
		} ?? switch (path) {
			'watchTogether.notices.joined' => ({required Object name}) => '${name} gick med',
			'watchTogether.notices.left' => ({required Object name}) => '${name} lämnade',
			'watchTogether.notices.controlRefused' => 'Endast värden kan styra uppspelningen',
			'watchTogether.notices.searchFailed' => 'Vissa servrar kunde inte sökas efter rummets video',
			'watchTogether.notices.playBlocked' => 'Tryck på play för att starta',
			'watchTogether.notices.shareFailed' => 'Det gick inte att dela den här videon med rummet',
			'watchTogether.notices.notShared' => 'Nedladdade videor delas inte med rummet',
			'watchTogether.notices.openFailed' => 'Det gick inte att öppna rummets video',
			'watchTogether.ended.ended' => 'Värden avslutade rummet',
			'watchTogether.ended.kicked' => 'Du togs bort från rummet',
			'watchTogether.ended.expired' => 'Rummet gick ut',
			'watchTogether.ended.replaced' => 'Du gick med i det här rummet på en annan enhet',
			'watchTogether.ended.lost' => 'Förlorade anslutningen till rummet',
			'watchTogether.errors.invalidCode' => 'Det är inte en rumskod. Koder har 6 bokstäver och siffror, utan 0, 1, I, L eller O.',
			'watchTogether.errors.roomNotFound' => 'Inget rum har den koden. Det kan ha tagit slut.',
			'watchTogether.errors.roomFull' => 'Det rummet är fullt.',
			'watchTogether.errors.roomLocked' => 'Värden låste rummet.',
			'watchTogether.errors.relayFull' => 'Watch Together är upptagen just nu. Försök igen senare.',
			'watchTogether.errors.unreachable' => 'Det gick inte att nå Watch Together-reläet. Kontrollera din anslutning.',
			'watchTogether.errors.rateLimited' => 'För många försök. Vänta ett ögonblick och försök igen.',
			'watchTogether.errors.clientBlocked' => 'Den här versionen av Luroka kan inte använda reläet. Uppdatera appen.',
			'watchTogether.errors.forbidden' => 'Endast värden kan göra det.',
			'watchTogether.errors.notInRoom' => 'Du är inte i ett rum.',
			'watchTogether.errors.alreadyInRoom' => 'Du är redan i ett rum.',
			'watchTogether.errors.resumeFailed' => 'Det gick inte att gå med i rummet igen.',
			'watchTogether.errors.unsupported' => 'Reläet stöder inte detta.',
			'watchTogether.errors.generic' => 'Något gick fel. Försök igen.',
			'watchTogether.untitledEpisode' => ({required Object number}) => 'Avsnitt ${number}',
			'downloads.title' => 'Nedladdningar',
			'downloads.manage' => 'Hantera',
			'downloads.tvShows' => 'TV-serier',
			'downloads.movies' => 'Filmer',
			'downloads.music' => 'Musik',
			'downloads.tracksQueued' => ({required Object count}) => '${count} låtar i nedladdningskö',
			'downloads.noDownloads' => 'Inga nedladdningar ännu',
			'downloads.noDownloadsDescription' => 'Nedladdat innehåll visas här så att du kan titta offline',
			'downloads.downloadNow' => 'Ladda ner',
			'downloads.deleteDownload' => 'Ta bort nedladdning',
			'downloads.retryDownload' => 'Försök igen',
			'downloads.downloadQueued' => 'Nedladdning köad',
			'downloads.downloadResumed' => 'Nedladdning återupptagen',
			'downloads.serverErrorBitrate' => 'Serverfel: filen kan överskrida serverns bithastighetsgräns',
			'downloads.storageFull' => 'Nedladdningarna stoppades för att skydda det lediga lagringsutrymmet. Frigör utrymme eller välj en annan nedladdningsplats och försök igen.',
			'downloads.storageUnavailable' => 'Nedladdningarna stoppades eftersom det lediga lagringsutrymmet inte kunde kontrolleras. Kontrollera nedladdningsplatsen och försök igen.',
			'downloads.episodesQueued' => ({required Object count}) => '${count} avsnitt köade för nedladdning',
			'downloads.downloadDeleted' => 'Nedladdning borttagen',
			'downloads.deleteConfirm' => ({required Object title}) => 'Ta bort "${title}" från den här enheten?',
			'downloads.deleteCollectionDownloads' => 'Ta bort nedladdningar',
			'downloads.deleteCollectionDownloadsConfirm' => ({required Object title}) => 'Vill du ta bort varje nedladdning i "${title}" från den här enheten?',
			'downloads.collectionDownloadsDeleted' => 'Nedladdningar raderade',
			'downloads.cancelledDownloadTitle' => 'Avbruten nedladdning',
			'downloads.cancelledDownloadMessage' => 'Den här nedladdningen avbröts. Vad vill du göra?',
			'downloads.allEpisodesAlreadyDownloaded' => 'Alla avsnitt är redan nedladdade',
			'downloads.resumeDownload' => 'Återuppta nedladdning',
			'downloads.cancelledDownload' => 'Avbruten nedladdning',
			'downloads.syncingFile' => ({required Object file, required Object status}) => '${file} (synkroniserar ${status})',
			'downloads.downloadedFileClickToComplete' => ({required Object file}) => '${file} nedladdad – klicka för att slutföra',
			'downloads.partialDownloadClickToComplete' => 'Delvis nedladdad – klicka för att slutföra',
			'downloads.deleting' => 'Tar bort...',
			'downloads.deletingWithProgress' => ({required Object title, required Object current, required Object total}) => 'Tar bort ${title}... (${current} av ${total})',
			'downloads.queuedTooltip' => 'I kö',
			'downloads.queuedFilesTooltip' => ({required Object files}) => 'I kö: ${files}',
			'downloads.downloadingTooltip' => 'Laddar ned...',
			'downloads.downloadingFilesTooltip' => ({required Object files}) => 'Laddar ned ${files}',
			'downloads.noDownloadsTree' => 'Inga nedladdningar',
			'downloads.pauseAll' => 'Pausa alla',
			'downloads.resumeAll' => 'Återuppta alla',
			'downloads.retryAll' => 'Försök alla igen',
			'downloads.retryFailed' => 'Försök misslyckade nedladdningar igen',
			'downloads.deleteAll' => 'Ta bort alla',
			'downloads.selectVersion' => 'Välj version',
			'downloads.allEpisodes' => 'Alla avsnitt',
			'downloads.unwatchedOnly' => 'Endast osedda',
			'downloads.nextNUnwatched' => ({required Object count}) => 'Nästa ${count} osedda',
			'downloads.customAmount' => 'Ange antal...',
			'downloads.includeSpecials' => 'Inkludera specialavsnitt',
			'downloads.howManyEpisodes' => 'Hur många avsnitt?',
			'downloads.invalidEpisodeCount' => 'Ange ett giltigt antal avsnitt.',
			'downloads.keepSynced' => 'Håll synkroniserad',
			'downloads.downloadOnce' => 'Ladda ner en gång',
			'downloads.keepNUnwatched' => ({required Object count}) => 'Behåll ${count} osedda',
			'downloads.editSyncRule' => 'Redigera synkregel',
			'downloads.removeSyncRule' => 'Ta bort synkregel',
			'downloads.removeSyncRuleConfirm' => ({required Object title}) => 'Sluta synkronisera "${title}"? Nedladdade avsnitt behålls.',
			'downloads.removeListSyncRuleConfirm' => ({required Object title}) => 'Sluta synkronisera "${title}"?',
			'downloads.deleteSyncRuleDownloads' => 'Ta även bort associerade nedladdningar',
			'downloads.deleteSyncRuleDownloadsDescription' => 'Nedladdningar som används av en annan synkregel eller profil behålls.',
			'downloads.syncRuleCreated' => ({required Object count}) => 'Synkregel skapad — behåller ${count} osedda avsnitt',
			'downloads.syncRuleUpdated' => 'Synkregel uppdaterad',
			'downloads.syncRuleRemoved' => 'Synkregel borttagen',
			'downloads.syncRuleAndDownloadsRemoved' => 'Synkregel och associerade nedladdningar borttagna',
			'downloads.syncRuleCleanupBusy' => 'Synkregler uppdateras just nu. Försök igen om en liten stund.',
			'downloads.syncRuleCleanupUnavailable' => 'Associerade nedladdningar kunde inte identifieras på ett säkert sätt. Återanslut servern och försök igen, eller ta bort regeln utan att ta bort nedladdningar.',
			'downloads.syncedNewEpisodes' => ({required Object count, required Object title}) => 'Synkroniserade ${count} nya avsnitt för ${title}',
			'downloads.activeSyncRules' => 'Synkregler',
			'downloads.noSyncRules' => 'Inga synkregler',
			'downloads.manageSyncRule' => 'Hantera synkronisering',
			'downloads.editEpisodeCount' => 'Antal avsnitt',
			'downloads.editSyncFilter' => 'Synkroniseringsfilter',
			'downloads.syncAllItems' => 'Synkroniserar alla objekt',
			'downloads.syncUnwatchedItems' => 'Synkroniserar osedda objekt',
			'downloads.syncRuleServerContext' => ({required Object server, required Object status}) => 'Server: ${server} • ${status}',
			'downloads.syncRuleAvailable' => 'Tillgänglig',
			'downloads.syncRuleOffline' => 'Offline',
			'downloads.syncRuleSignInRequired' => 'Inloggning krävs',
			'downloads.syncRuleAccessDenied' => 'Åtkomst nekad',
			'downloads.syncRuleNotAvailableForProfile' => 'Inte tillgänglig för aktuell profil',
			'downloads.syncRuleUnknownServer' => 'Okänd server',
			'downloads.syncRuleListCreated' => 'Synkroniseringsregel skapad',
			'downloads.backgroundWarning.bannerBlocked' => 'Nedladdningar stoppas när du lämnar appen',
			'downloads.backgroundWarning.bannerDegraded' => 'Bakgrundsnedladdningar kan begränsas',
			'downloads.backgroundWarning.bannerAction' => 'Detaljer',
			'downloads.backgroundWarning.sheetTitle' => 'Bakgrundsnedladdningar är blockerade',
			'downloads.backgroundWarning.sheetTitleDegraded' => 'Bakgrundsnedladdningar kan begränsas',
			'downloads.backgroundWarning.sheetIntro' => 'Android hindrar Luroka från att ladda ned tillförlitligt i bakgrunden.',
			'downloads.backgroundWarning.sheetIntroDegraded' => 'Din enhet begränsar när Luroka kan ladda ned i bakgrunden.',
			'downloads.backgroundWarning.reasonBackgroundRestricted' => 'Lurokas bakgrundsanvändning är begränsad. Ställ in batteri- eller bakgrundsanvändningen på "Obegränsad".',
			'downloads.backgroundWarning.reasonStandbyRestricted' => 'Android har satt Luroka i ett begränsat vänteläge. Ställ in batterianvändningen på "Obegränsad".',
			'downloads.backgroundWarning.reasonDownloadChannelBlocked' => 'Aviseringar om nedladdningar är avstängda, så förlopp och kontroller kanske inte är tillgängliga.',
			'downloads.backgroundWarning.reasonNotificationsDisabled' => 'Aviseringar är avstängda. På Android 13 eller senare krävs de för långa bakgrundsnedladdningar.',
			'downloads.backgroundWarning.reasonDataSaver' => 'Databesparing är aktiverad, vilket blockerar bakgrundsnedladdningar via mobildata. Nedladdningar bör fortfarande fungera via Wi-Fi.',
			'downloads.backgroundWarning.reasonOemUnknown' => 'Nedladdningar stoppades upprepade gånger när Luroka kördes i bakgrunden. Kontrollera Lurokas inställningar för batteri- eller bakgrundsanvändning.',
			'downloads.backgroundWarning.openSettings' => 'Öppna inställningar',
			'downloads.backgroundWarning.stillNotWorking' => 'Enhetsspecifik hjälp',
			'downloads.backgroundWarning.stillNotWorkingDescription' => 'Se anvisningar för din enhet eller skicka en logg från Inställningar › Visa loggar om problemet kvarstår.',
			'downloads.backgroundWarning.dialogTitle' => 'Nedladdningar kanske inte slutförs',
			'downloads.backgroundWarning.dialogDownloadAnyway' => 'Ladda ned ändå',
			'downloads.backgroundWarning.dialogFixFirst' => 'Åtgärda först',
			'downloads.backgroundWarning.statusTile' => 'Bakgrundsnedladdningar',
			'downloads.backgroundWarning.statusOk' => 'Får köras i bakgrunden',
			'downloads.backgroundWarning.statusBlocked' => 'Blockeras av systeminställningar',
			'downloads.backgroundWarning.statusDegraded' => 'Begränsas av systeminställningar',
			'downloads.backgroundWarning.statusUnknown' => 'Inte kontrollerat än',
			'downloads.backgroundWarning.settingsUnavailable' => 'Det gick inte att öppna systeminställningarna på den här enheten',
			'downloads.backgroundWarning.linkUnavailable' => 'Det gick inte att öppna dontkillmyapp.com på den här enheten',
			'downloads.options' => 'Alternativ för nedladdningar',
			'downloads.groupings.library' => 'Bibliotek',
			'downloads.groupings.collections' => 'Samlingar',
			'downloads.unknownLibrary' => 'Okänt bibliotek',
			'downloads.unknownShow' => 'Okänd serie',
			'downloads.unknownSeason' => 'Okänd säsong',
			'downloads.unknownAlbum' => 'Okänt album',
			'downloads.completedOfTotal' => ({required Object completed, required Object total}) => '${completed}/${total} slutförda',
			'downloads.errorFileNotFound' => 'Filen hittades inte (404)',
			'downloads.errorDownloadNotAllowed' => 'Servern tillåter inte nedladdning (403)',
			'downloads.errorDownloadFailed' => 'Nedladdningen misslyckades',
			'downloads.errorDownloadFailedWithReason' => ({required Object reason}) => 'Nedladdningen misslyckades: ${reason}',
			'downloads.errorHttpStatus' => ({required Object status}) => 'Nedladdningen misslyckades (HTTP ${status})',
			'downloads.errorPostProcessing' => ({required Object reason}) => 'Efterbehandlingen misslyckades: ${reason}',
			'downloads.reasonFileNotSaved' => 'filen kunde inte sparas på den här enheten',
			'downloads.reasonCannotResume' => 'den delvisa nedladdningen kunde inte återupptas',
			'downloads.reasonDeviceStorageFull' => 'den här enheten har slut på lagringsutrymme',
			'downloads.notificationDownloading' => 'Laddar ned...',
			'downloads.notificationComplete' => 'Nedladdningen är klar',
			'downloads.notificationPaused' => 'Nedladdningen har pausats',
			'shaders.title' => 'Shaders',
			'shaders.noShaderDescription' => 'Ingen videoförbättring',
			'shaders.nvscalerDescription' => 'NVIDIA-bildskalning för skarpare video',
			'shaders.artcnnVariantNeutral' => 'Neutral',
			'shaders.artcnnVariantDenoise' => 'Brusreducering',
			'shaders.artcnnVariantDenoiseSharpen' => 'Brusreducering + skärpa',
			'shaders.qualityFast' => 'Snabb',
			'shaders.qualityHQ' => 'Hög kvalitet',
			'shaders.mode' => 'Läge',
			'shaders.importShader' => 'Importera shader',
			'shaders.customShaderDescription' => 'Anpassad GLSL-shader',
			'shaders.shaderImported' => 'Shadern har importerats',
			'shaders.shaderImportFailed' => 'Det gick inte att importera shadern',
			'shaders.deleteShader' => 'Ta bort shader',
			'shaders.deleteShaderConfirm' => ({required Object name}) => 'Ta bort "${name}"?',
			'companionRemote.title' => 'Fjärrkontroll',
			'companionRemote.connectedTo' => ({required Object name}) => 'Ansluten till ${name}',
			'companionRemote.unknownDevice' => 'Okänd enhet',
			'companionRemote.session.startingServer' => 'Startar fjärrserver...',
			'companionRemote.session.hostAddress' => 'Värdadress',
			'companionRemote.session.connected' => 'Ansluten',
			'companionRemote.session.serverRunning' => 'Fjärrserver aktiv',
			'companionRemote.session.serverStopped' => 'Fjärrserver stoppad',
			'companionRemote.session.serverRunningDescription' => 'Mobila enheter i nätverket kan ansluta till appen',
			'companionRemote.session.serverStoppedDescription' => 'Starta servern så att mobila enheter kan ansluta',
			'companionRemote.session.usePhoneToControl' => 'Använd din mobila enhet för att styra appen',
			'companionRemote.session.startServer' => 'Starta server',
			'companionRemote.session.stopServer' => 'Stoppa server',
			'companionRemote.session.minimize' => 'Minimera',
			'companionRemote.session.manualAddressHint' => 'Manuell anslutningsadress:',
			'companionRemote.pairing.discoveryDescription' => 'Luroka-enheter med samma Plex-konto visas här',
			'companionRemote.pairing.hostAddressHint' => '192.168.1.100:48632',
			'companionRemote.pairing.connecting' => 'Ansluter...',
			'companionRemote.pairing.searchingForDevices' => 'Söker efter enheter...',
			'companionRemote.pairing.noDevicesFound' => 'Inga enheter hittades i ditt nätverk',
			'companionRemote.pairing.noDevicesHint' => 'Öppna Luroka på datorn och använd samma wifi',
			'companionRemote.pairing.availableDevices' => 'Tillgängliga enheter',
			'companionRemote.pairing.manualConnection' => 'Manuell anslutning',
			'companionRemote.pairing.cryptoInitFailed' => 'Kunde inte starta säker anslutning. Logga in på Plex först.',
			'companionRemote.pairing.validationHostRequired' => 'Ange värdadress',
			'companionRemote.pairing.validationHostFormat' => 'Formatet måste vara IP:port (t.ex. 192.168.1.100:48632)',
			'companionRemote.pairing.connectionTimedOut' => 'Anslutningen tog för lång tid. Använd samma nätverk på båda enheterna.',
			'companionRemote.pairing.sessionNotFound' => 'Enheten hittades inte. Kontrollera att Luroka körs på värden.',
			'companionRemote.pairing.authFailed' => 'Autentiseringen misslyckades. Båda enheterna måste använda samma Plex-konto.',
			'companionRemote.pairing.failedToConnect' => ({required Object error}) => 'Kunde inte ansluta: ${error}',
			'companionRemote.remote.disconnectConfirm' => 'Vill du koppla från fjärrsessionen?',
			'companionRemote.remote.reconnecting' => 'Återansluter...',
			'companionRemote.remote.attemptOf' => ({required Object current}) => 'Försök ${current} av 5',
			'companionRemote.remote.retryNow' => 'Försök nu',
			'companionRemote.remote.tabRemote' => 'Fjärrkontroll',
			'companionRemote.remote.tabPlay' => 'Spela',
			'companionRemote.remote.tabMore' => 'Mer',
			'companionRemote.remote.menu' => 'Meny',
			'companionRemote.remote.tabNavigation' => 'Fliknavigering',
			'companionRemote.remote.tabDiscover' => 'Upptäck',
			'companionRemote.remote.tabLibraries' => 'Bibliotek',
			'companionRemote.remote.tabSearch' => 'Sök',
			'companionRemote.remote.tabDownloads' => 'Nedladdningar',
			'companionRemote.remote.tabSettings' => 'Inställningar',
			'companionRemote.remote.previous' => 'Föregående',
			'companionRemote.remote.playPause' => 'Spela/Pausa',
			'companionRemote.remote.next' => 'Nästa',
			'companionRemote.remote.seekBack' => 'Spola bakåt',
			'companionRemote.remote.stop' => 'Stopp',
			'companionRemote.remote.seekForward' => 'Spola framåt',
			'companionRemote.remote.volume' => 'Volym',
			'companionRemote.remote.volumeDown' => 'Ner',
			'companionRemote.remote.volumeUp' => 'Upp',
			'companionRemote.remote.fullscreen' => 'Helskärm',
			'companionRemote.remote.subtitles' => 'Undertexter',
			'companionRemote.remote.audio' => 'Ljud',
			'companionRemote.remote.searchHint' => 'Sök på datorn...',
			'companionRemote.errors.noNetworkInterface' => 'Inget nätverksgränssnitt hittades',
			'companionRemote.errors.authenticationFailed' => 'Autentiseringen misslyckades',
			'companionRemote.errors.serverStartFailed' => ({required Object error}) => 'Det gick inte att starta fjärrservern: ${error}',
			'companionRemote.errors.commandFailed' => ({required Object error}) => 'Det gick inte att skicka fjärrkommandot: ${error}',
			'companionRemote.errors.joinTimedOut' => 'Det tog för lång tid att ansluta till sessionen',
			'companionRemote.errors.failedToConnectAnyAddress' => 'Det gick inte att ansluta till någon adress',
			'companionRemote.errors.connectionLostAfterAttempts' => ({required Object attempts}) => 'Anslutningen bröts efter ${attempts} försök',
			'companionRemote.errors.connectionLost' => 'Anslutningen bröts',
			'companionRemote.closedBeforeAuth' => 'Anslutningen stängdes före autentiseringen',
			'videoSettings.playbackSpeed' => 'Uppspelningshastighet',
			'videoSettings.normalSpeed' => 'Normal',
			'videoSettings.sleepTimerActive' => ({required Object duration}) => 'Aktiv (${duration})',
			'videoSettings.zoom' => 'Zoom',
			'videoSettings.sleepTimer' => 'Sovtimer',
			'videoSettings.audioSync' => 'Ljudsynkronisering',
			'videoSettings.subtitleSync' => 'Undertextsynkronisering',
			'videoSettings.hdr' => 'HDR',
			'videoSettings.hdrUnsupported' => 'HDR kan inte användas här – skrivbordets kompositionshanterare eller videoutgången kan inte överföra det.',
			'videoSettings.hdrToneMapping' => 'HDR-tonmappning',
			'videoSettings.hdrToneMappingCompositor' => 'Kompositionshanterare',
			'videoSettings.hdrToneMappingCompositorDescription' => 'Vidarebefordra källans HDR-metadata och låt skrivbordets kompositionshanterare tonmappa dem.',
			'videoSettings.hdrToneMappingPlayer' => 'Spelare',
			'videoSettings.hdrToneMappingPlayerDescription' => 'Tonmappa till skärmens maximala ljusstyrka i spelaren och informera sedan kompositionshanteraren om resultatet.',
			'videoSettings.hdrToneMappingFailed' => 'Det gick inte att ändra HDR-tonmappningen – det föregående läget är fortfarande aktivt.',
			'videoSettings.audioOutput' => 'Ljudutgång',
			'videoSettings.performanceOverlay' => 'Prestandaöverlägg',
			'videoSettings.audioOutputDolbyAtmos' => 'Dolby Atmos',
			'videoSettings.audioOutputDolbyAudio' => 'Dolby Audio',
			'videoSettings.audioOutputSurround' => 'Surround',
			'videoSettings.audioOutputSpatial' => 'Rumsligt ljud',
			'videoSettings.audioOutputStereo' => 'Stereo',
			'videoSettings.audioNormalization' => 'Normalisera ljudstyrka',
			'videoSettings.audioNormalizationDisablesPassthrough' => 'Avkodar ljudet till PCM; genomströmning är av medan detta är på',
			'performanceOverlay.color' => 'Färg',
			'performanceOverlay.performance' => 'Prestanda',
			'performanceOverlay.buffer' => 'Buffert',
			'performanceOverlay.app' => 'App',
			'performanceOverlay.decoder' => 'Dekoder',
			'performanceOverlay.rawDecoder' => 'Rå dekoder',
			'performanceOverlay.tunneling' => 'Tunnling',
			'performanceOverlay.passthrough' => 'Genomströmning',
			'performanceOverlay.aspect' => 'Bildformat',
			'performanceOverlay.rotation' => 'Rotation',
			'performanceOverlay.dvSource' => 'DV-källa',
			'performanceOverlay.dvPath' => 'DV-sökväg',
			'performanceOverlay.dvRouteDecoder' => 'Dolby Vision avkodare',
			'performanceOverlay.dvRouteDecoderP81' => 'Dolby Vision-avkodare (P7→8.1)',
			'performanceOverlay.dvRouteBaseLayer' => 'Baslager',
			'performanceOverlay.dvRouteBaseLayerHdr10' => 'HDR10 basskikt',
			'performanceOverlay.dvRouteBaseLayerHlg' => 'HLG baslager',
			'performanceOverlay.dvRouteBaseLayerSdr' => 'SDR baslager',
			'performanceOverlay.dvRouteReshaped' => 'RPU omformad (gpu-next)',
			'performanceOverlay.p7Conversion' => 'P7-konv.',
			'performanceOverlay.sampleRate' => 'Samplingsfrekvens',
			'performanceOverlay.pixelFormat' => 'Pixelformat',
			'performanceOverlay.hwFormat' => 'HW-format',
			'performanceOverlay.matrix' => 'Matris',
			'performanceOverlay.primaries' => 'Primärfärger',
			'performanceOverlay.transfer' => 'Överföring',
			'performanceOverlay.renderFps' => 'Renderings-FPS',
			'performanceOverlay.displayFps' => 'Skärm-FPS',
			'performanceOverlay.avSync' => 'A/V-synk',
			'performanceOverlay.dropped' => 'Tappade bildrutor',
			'performanceOverlay.dvRpus' => 'DV-RPU:er',
			'performanceOverlay.dvRpuAverage' => 'DV-RPU, genomsnitt',
			'performanceOverlay.dvSampleAverage' => 'DV-sampling, genomsnitt',
			'performanceOverlay.maxLuma' => 'Max luma',
			'performanceOverlay.minLuma' => 'Min luma',
			'performanceOverlay.maxCll' => 'MaxCLL',
			'performanceOverlay.maxFall' => 'MaxFALL',
			'performanceOverlay.cacheUsed' => 'Använt cacheminne',
			'performanceOverlay.cacheLimit' => 'Cachegräns',
			'performanceOverlay.speed' => 'Hastighet',
			'performanceOverlay.player' => 'Spelare',
			'performanceOverlay.memory' => 'Minne',
			'performanceOverlay.uiFps' => 'UI FPS',
			'performanceOverlay.fps' => 'FPS',
			'performanceOverlay.decoderAndroidHw' => 'Android HW',
			'performanceOverlay.decoderNvidiaHw' => 'NVIDIA HW',
			'performanceOverlay.decoderQualcommHw' => 'Qualcomm HW',
			'performanceOverlay.decoderMediatekHw' => 'MediaTek HW',
			'performanceOverlay.decoderExynosHw' => 'Exynos HW',
			'performanceOverlay.decoderSoftware' => 'Programvara',
			'performanceOverlay.decoderHardware' => 'Maskinvara',
			'performanceOverlay.tunnelingActive' => 'Aktiv',
			'performanceOverlay.dvRpuFailed' => ({required Object converted, required Object failures}) => '${converted} (${failures} misslyckades)',
			'externalPlayer.title' => 'Extern spelare',
			'externalPlayer.useExternalPlayer' => 'Använd extern spelare',
			'externalPlayer.useExternalPlayerDescription' => 'Öppna videor i en annan app',
			'externalPlayer.selectPlayer' => 'Välj spelare',
			'externalPlayer.customPlayers' => 'Anpassade spelare',
			'externalPlayer.systemDefault' => 'Systemstandard',
			'externalPlayer.addCustomPlayer' => 'Lägg till anpassad spelare',
			'externalPlayer.playerName' => 'Spelarnamn',
			'externalPlayer.playerNameHint' => 'Min spelare',
			'externalPlayer.playerCommand' => 'Kommando',
			'externalPlayer.playerPackage' => 'Paketnamn',
			'externalPlayer.playerUrlScheme' => 'URL-schema',
			'externalPlayer.off' => 'Av',
			'externalPlayer.launchFailed' => 'Kunde inte öppna extern spelare',
			'externalPlayer.appNotInstalled' => ({required Object name}) => '${name} är inte installerad',
			'externalPlayer.playInExternalPlayer' => 'Spela i extern spelare',
			'metadataEdit.editMetadata' => 'Redigera...',
			'metadataEdit.screenTitle' => 'Redigera metadata',
			'metadataEdit.basicInfo' => 'Grundläggande information',
			'metadataEdit.artwork' => 'Bildmaterial',
			'metadataEdit.advancedSettings' => 'Avancerade inställningar',
			'metadataEdit.title' => 'Titel',
			'metadataEdit.sortTitle' => 'Sorteringstitel',
			'metadataEdit.originalTitle' => 'Originaltitel',
			'metadataEdit.releaseDate' => 'Utgivningsdatum',
			'metadataEdit.contentRating' => 'Åldersgräns',
			'metadataEdit.studio' => 'Studio',
			'metadataEdit.tagline' => 'Slogan',
			'metadataEdit.summary' => 'Sammanfattning',
			'metadataEdit.poster' => 'Affisch',
			'metadataEdit.background' => 'Bakgrund',
			'metadataEdit.logo' => 'Logotyp',
			'metadataEdit.squareArt' => 'Kvadratisk bild',
			'metadataEdit.selectPoster' => 'Välj affisch',
			'metadataEdit.selectBackground' => 'Välj bakgrund',
			'metadataEdit.selectLogo' => 'Välj logotyp',
			'metadataEdit.selectSquareArt' => 'Välj kvadratisk bild',
			'metadataEdit.fromUrl' => 'Från URL',
			'metadataEdit.uploadFile' => 'Ladda upp fil',
			'metadataEdit.enterImageUrl' => 'Ange bild-URL',
			'metadataEdit.imageUrl' => 'Bild-URL',
			'metadataEdit.metadataUpdated' => 'Metadata har uppdaterats',
			'metadataEdit.metadataUpdateFailed' => 'Det gick inte att uppdatera metadata',
			'metadataEdit.artworkUpdated' => 'Bildmaterialet har uppdaterats',
			'metadataEdit.artworkUpdateFailed' => 'Det gick inte att uppdatera bildmaterialet',
			'metadataEdit.noArtworkAvailable' => 'Inget bildmaterial är tillgängligt',
			'metadataEdit.artworkOption' => ({required Object index}) => 'Bildalternativ ${index}',
			'metadataEdit.selectedArtworkOption' => ({required Object index}) => 'Bildalternativ ${index}, valt',
			'metadataEdit.notSet' => 'Inte angiven',
			'metadataEdit.libraryDefault' => 'Biblioteksstandard',
			'metadataEdit.accountDefault' => 'Kontostandard',
			'metadataEdit.seriesDefault' => 'Seriestandard',
			'metadataEdit.episodeSorting' => 'Avsnittsortering',
			'metadataEdit.oldestFirst' => 'Äldst först',
			'metadataEdit.newestFirst' => 'Nyast först',
			'metadataEdit.keep' => 'Behåll',
			'metadataEdit.allEpisodes' => 'Alla avsnitt',
			'metadataEdit.latestEpisodes' => ({required Object count}) => '${count} senaste avsnitten',
			'metadataEdit.latestEpisode' => 'Senaste avsnittet',
			'metadataEdit.episodesAddedPastDays' => ({required Object count}) => 'Avsnitt tillagda de senaste ${count} dagarna',
			'metadataEdit.deleteAfterPlaying' => 'Ta bort avsnitt efter uppspelning',
			'metadataEdit.never' => 'Aldrig',
			'metadataEdit.afterADay' => 'Efter en dag',
			'metadataEdit.afterAWeek' => 'Efter en vecka',
			'metadataEdit.afterAMonth' => 'Efter en månad',
			'metadataEdit.onNextRefresh' => 'Vid nästa uppdatering',
			'metadataEdit.seasons' => 'Säsonger',
			'metadataEdit.show' => 'Visa',
			'metadataEdit.hide' => 'Dölj',
			'metadataEdit.episodeOrdering' => 'Avsnittsordning',
			'metadataEdit.tmdbAiring' => 'The Movie Database (Sändning)',
			'metadataEdit.tvdbAiring' => 'TheTVDB (Sändning)',
			'metadataEdit.tvdbAbsolute' => 'TheTVDB (Absolut)',
			'metadataEdit.metadataLanguage' => 'Metadataspråk',
			'metadataEdit.useOriginalTitle' => 'Använd originaltitel',
			'metadataEdit.preferredAudioLanguage' => 'Föredraget ljudspråk',
			'metadataEdit.preferredSubtitleLanguage' => 'Föredraget undertextspråk',
			'metadataEdit.subtitleMode' => 'Läge för automatiskt undertextval',
			'metadataEdit.manuallySelected' => 'Manuellt vald',
			'metadataEdit.shownWithForeignAudio' => 'Visas med ljud på främmande språk',
			'metadataEdit.alwaysEnabled' => 'Alltid aktiverad',
			'metadataEdit.tags' => 'Taggar',
			'metadataEdit.addTag' => 'Lägg till tagg',
			'metadataEdit.genre' => 'Genre',
			'metadataEdit.director' => 'Regissör',
			'metadataEdit.writer' => 'Manusförfattare',
			'metadataEdit.producer' => 'Producent',
			'metadataEdit.country' => 'Land',
			'metadataEdit.collection' => 'Samling',
			'metadataEdit.label' => 'Etikett',
			'metadataEdit.quickTag' => 'Snabbtagg...',
			'matchScreen.match' => 'Matcha...',
			'matchScreen.fixMatch' => 'Rätta matchning...',
			'matchScreen.unmatch' => 'Ta bort matchning',
			'matchScreen.unmatchConfirm' => 'Rensa denna matchning? Plex behandlar den som omatchad tills den matchas igen.',
			'matchScreen.unmatchSuccess' => 'Matchning borttagen',
			'matchScreen.unmatchFailed' => 'Det gick inte att ta bort matchningen',
			'matchScreen.matchApplied' => 'Matchning tillämpad',
			'matchScreen.matchFailed' => 'Det gick inte att tillämpa matchningen',
			'matchScreen.titleHint' => 'Titel',
			'matchScreen.yearHint' => 'År',
			'matchScreen.search' => 'Sök',
			'matchScreen.noMatchesFound' => 'Inga matchningar hittades',
			'serverTasks.title' => 'Serveruppgifter',
			'serverTasks.failedToLoad' => 'Kunde inte ladda uppgifter',
			'serverTasks.noTasks' => 'Inga pågående uppgifter',
			'trakt.title' => 'Trakt',
			'trakt.connected' => 'Ansluten',
			'trakt.connectedAs' => ({required Object username}) => 'Ansluten som @${username}',
			'trakt.disconnectConfirm' => 'Koppla från Trakt-konto?',
			'trakt.disconnectConfirmBody' => 'Luroka slutar skicka händelser till Trakt. Du kan återansluta när som helst.',
			'trakt.scrobble' => 'Realtidsspårning',
			'trakt.scrobbleDescription' => 'Skicka händelser för uppspelning, paus och stopp till Trakt under uppspelningen.',
			'trakt.watchedSync' => 'Synkronisera seddstatus',
			'trakt.watchedSyncDescription' => 'När du markerar objekt som sedda i Luroka markeras de även som sedda på Trakt.',
			'seerr.title' => 'Seerr',
			'seerr.connectTitle' => 'Anslut Seerr',
			'seerr.serverUrl' => 'Server-URL',
			'seerr.serverUrlHelper' => 'Adressen till din Seerr-instans',
			'seerr.checkServer' => 'Fortsätt',
			'seerr.signInWithJellyfin' => 'Logga in med Jellyfin',
			'seerr.signInWithEmby' => 'Logga in med Emby',
			'seerr.signInWithLocal' => 'Använd ett lokalt konto',
			'seerr.email' => 'E-post',
			'seerr.noSignInMethods' => 'Den här Seerr-instansen erbjuder ingen inloggningsmetod som Luroka stöder.',
			'seerr.instance' => 'Instans',
			'seerr.disconnectConfirm' => 'Koppla från Seerr?',
			'seerr.disconnectConfirmBody' => 'Luroka glömmer den här Seerr-instansen. Återanslut när som helst.',
			'seerr.request' => 'Begär',
			'seerr.request4k' => 'Begär i 4K',
			'seerr.seasons' => 'Säsonger',
			'seerr.allSeasons' => 'Alla säsonger',
			'seerr.advancedOptions' => 'Avancerat',
			'seerr.destinationServer' => 'Målserver',
			'seerr.qualityProfile' => 'Kvalitetsprofil',
			'seerr.rootFolder' => 'Rotmapp',
			'seerr.languageProfile' => 'Språkprofil',
			'seerr.tags' => 'Taggar',
			'seerr.noTags' => 'Inga taggar',
			'seerr.defaultOption' => ({required Object name}) => '${name} (standard)',
			'seerr.animeNote' => 'Den här serien är en anime.',
			'seerr.requestSubmitted' => 'Begäran skickad',
			'seerr.requestFailed' => ({required Object error}) => 'Begäran kunde inte genomföras: ${error}',
			'seerr.requestsLoadFailed' => 'Det gick inte att läsa in alternativ för begäran',
			'seerr.nothingToRequest' => 'Allt är redan tillgängligt eller begärt.',
			'seerr.statusAvailable' => 'Tillgänglig',
			'seerr.statusPartiallyAvailable' => 'Delvis tillgänglig',
			'seerr.statusRequested' => 'Begärd',
			'seerr.statusProcessing' => 'Bearbetas',
			'seerr.statusBlocklisted' => 'På blockeringslistan',
			'seerr.couldNotReach' => ({required Object url, required Object error}) => 'Kunde inte nå ${url}: ${error}',
			'seerr.noInstanceAtUrl' => ({required Object url, required Object status}) => 'Det finns ingen Seerr-instans på ${url} (HTTP ${status})',
			'seerr.behindAuthProxy' => 'En autentiserande reverse proxy (SSO eller HTTP-autentisering) svarade i stället för Seerr. Luroka kan inte logga in genom den: låt Seerrs sökväg /api/v1 kringgå proxyn för den här appen, eller använd en adress som når Seerr direkt.',
			'seerr.invalidUrl' => 'Ange en serveradress, t.ex. https://seerr.example.com',
			'seerr.quickConnectUnsupported' => 'Den här Seerr-instansen stöder inte Quick Connect. Den kräver Seerr 3.4 eller nyare.',
			'seerr.notInitialized' => 'Den här Seerr-instansen har inte slutfört den inledande konfigurationen',
			'seerr.noPlexTokenForReauth' => 'Det finns ingen Plex-token tillgänglig för att logga in igen',
			'seerr.noStoredCredentials' => 'Det finns inga sparade inloggningsuppgifter för att logga in igen',
			'seerr.signInRejected' => 'Inloggningen avvisades',
			'seerr.noSessionCookie' => 'Seerr skapade ingen sessionscookie',
			'seerr.freshCookieRejected' => 'Seerr avvisade den nya sessionscookien',
			'seerr.noUserInformation' => 'Seerr returnerade ingen användarinformation',
			'seerr.sessionRejectedAfterReauth' => 'Sessionen avvisades efter den nya inloggningen',
			'seerr.permissionDenied' => 'Seerr nekade åtgärden: ditt konto har inte längre den behörighet som krävs',
			'seerr.permissionRevoked' => 'Du har inte längre behörighet att begära detta',
			'services.title' => 'Tjänster',
			'services.hubSubtitle' => 'Synkronisera visningsstatus och begär nya titlar.',
			'services.discoverySection' => 'Upptäck och begär',
			'services.trackingSection' => 'Visningshistorik och listor',
			'services.seerrDescription' => 'Hitta filmer och serier och skicka förfrågningar från din Seerr-server.',
			'services.tmdbDescription' => 'Upptäck filmer och serier, affischer, betyg och detaljer.',
			'services.traktDescription' => 'Följ filmer och serier, synkronisera visningsstatus och hantera din bevakningslista.',
			'services.malDescription' => 'Håll din anime-lista och visningsförlopp synkroniserade.',
			'services.anilistDescription' => 'Följ anime och synkronisera visningsförloppet med AniList.',
			'services.simklDescription' => 'Följ filmer, serier och anime med Simkl.',
			'services.mdblistDescription' => 'Anslut dina MDBList-listor och filmbetyg.',
			'services.connectionIntro' => ({required Object service}) => 'Anslut ${service} till din aktuella Luroka-profil. Du kan när som helst hantera anslutningen och dess alternativ här.',
			'services.connectService' => ({required Object service}) => 'Anslut ${service}',
			'services.seerrConnectDescription' => 'Anslut din Seerr-server för att upptäcka och begära filmer och serier från Luroka.',
			'services.seerrServerStep' => 'Ange adressen du använder för att öppna Seerr. Vi kontrollerar vilka inloggningssätt servern stöder.',
			'services.seerrSignInStep' => 'Välj ett inloggningssätt som stöds av servern.',
			'services.integrations' => 'Integrationer',
			'services.notConnected' => 'Inte ansluten',
			'services.connectedAs' => ({required Object username}) => 'Ansluten som @${username}',
			'services.scrobble' => 'Spåra uppspelningen automatiskt',
			'services.scrobbleDescription' => 'Uppdatera din lista när du har sett klart ett avsnitt eller en film.',
			'services.disconnectConfirm' => ({required Object service}) => 'Koppla från ${service}?',
			'services.disconnectConfirmBody' => ({required Object service}) => 'Luroka slutar uppdatera ${service}. Återanslut när som helst.',
			'services.connectFailed' => ({required Object service}) => 'Kunde inte ansluta till ${service}. Försök igen.',
			'services.names.mal' => 'MyAnimeList',
			'services.names.anilist' => 'AniList',
			'services.names.simkl' => 'Simkl',
			'services.names.seerr' => 'Seerr',
			'services.names.mdblist' => 'MDBList',
			'services.simklReconnect.title' => 'Återanslut Simkl',
			'services.simklReconnect.subtitle' => 'Simkl drar tillbaka inloggningsmetoden som den här anslutningen använder. Återanslutning öppnar simkl.com för att godkänna Luroka — Luroka ser aldrig ditt lösenord. Din visningshistorik finns kvar på Simkl.',
			'services.deviceCode.title' => ({required Object service}) => 'Aktivera Luroka på ${service}',
			'services.deviceCode.instructions' => 'Skanna QR-koden eller gå till adressen nedan och ange den här koden:',
			'services.deviceCode.openToActivate' => ({required Object service}) => 'Öppna ${service} för att aktivera',
			_ => null,
		} ?? switch (path) {
			'services.deviceCode.copyCode' => 'Kopiera aktiveringskod',
			'services.deviceCode.waitingForAuthorization' => 'Väntar på auktorisering…',
			'services.deviceCode.codeCopied' => 'Kod kopierad',
			'services.oauthProxy.title' => ({required Object service}) => 'Logga in på ${service}',
			'services.oauthProxy.body' => 'Skanna den här QR-koden eller öppna URL:en på valfri enhet.',
			'services.oauthProxy.openToSignIn' => ({required Object service}) => 'Öppna ${service} för att logga in',
			'services.pendingAuth.copyUrl' => 'Kopiera inloggnings-URL',
			'services.pendingAuth.urlCopied' => 'URL kopierad',
			'services.libraryFilter.title' => 'Biblioteksfilter',
			'services.libraryFilter.subtitleAllSyncing' => 'Synkroniserar alla bibliotek',
			'services.libraryFilter.subtitleNoneSyncing' => 'Ingenting synkroniseras',
			'services.libraryFilter.subtitleBlocked' => ({required Object count}) => '${count} blockerade',
			'services.libraryFilter.subtitleAllowed' => ({required Object count}) => '${count} tillåtna',
			'services.libraryFilter.mode' => 'Filterläge',
			'services.libraryFilter.modeBlacklist' => 'Blockeringslista',
			'services.libraryFilter.modeWhitelist' => 'Tillåtelselista',
			'services.libraryFilter.modeHintBlacklist' => 'Synkronisera alla bibliotek utom de som markeras nedan.',
			'services.libraryFilter.modeHintWhitelist' => 'Synkronisera endast de bibliotek som markeras nedan.',
			'services.libraryFilter.libraries' => 'Bibliotek',
			'services.libraryFilter.noLibraries' => 'Inga bibliotek tillgängliga',
			'addServer.addMediaBrowserTitle' => ({required Object product}) => 'Lägg till ${product}-server',
			'addServer.serverUrls' => 'Server-URL:er',
			'addServer.serverUrlsHelper' => 'Du kan ange flera URL:er avgränsade med kommatecken.',
			'addServer.findServer' => 'Hitta server',
			'addServer.searchingLocalMediaBrowserServers' => ({required Object product}) => 'Söker efter lokala ${product}-servrar...',
			'addServer.localMediaBrowserServers' => ({required Object product}) => 'Lokala ${product}-servrar',
			'addServer.username' => 'Användarnamn',
			'addServer.password' => 'Lösenord',
			'addServer.signIn' => 'Logga in',
			'addServer.change' => 'Ändra',
			'addServer.required' => 'Krävs',
			'addServer.couldNotReachServer' => ({required Object error}) => 'Kunde inte nå servern: ${error}',
			'addServer.signInFailed' => ({required Object error}) => 'Det gick inte att logga in: ${error}',
			'addServer.quickConnectFailed' => ({required Object error}) => 'Quick Connect misslyckades: ${error}',
			'addServer.addPlexTitle' => 'Logga in med Plex',
			'addServer.pinExpired' => 'PIN-koden gick ut innan inloggning. Försök igen.',
			'addServer.failedToRegisterAccount' => ({required Object error}) => 'Kunde inte registrera kontot: ${error}',
			'addServer.enterMediaBrowserUrlError' => ({required Object product}) => 'Ange din ${product}-server-URL',
			'addServer.addConnectionTitle' => 'Lägg till anslutning',
			'addServer.addConnectionTitleScoped' => ({required Object name}) => 'Lägg till i ${name}',
			'addServer.signInWithPlexCard' => 'Logga in med Plex',
			'addServer.signInWithPlexCardSubtitle' => 'Auktorisera den här enheten. Delade servrar läggs till.',
			'addServer.signInWithPlexCardSubtitleScoped' => 'Auktorisera ett Plex-konto. Hem-användare blir profiler.',
			'addServer.connectToMediaBrowserCard' => ({required Object product}) => 'Anslut till ${product}',
			'addServer.connectToMediaBrowserCardSubtitle' => 'Ange din server-URL, användarnamn och lösenord.',
			'addServer.connectToMediaBrowserCardSubtitleScoped' => ({required Object product, required Object name}) => 'Logga in på din ${product}-server. Knyts till ${name}.',
			'addServer.borrowFromAnotherProfile' => 'Låna från en annan profil',
			'addServer.borrowFromAnotherProfileSubtitle' => 'Återanvänd en annan profils anslutning. PIN-skyddade profiler kräver en PIN.',
			'addServer.invalidCredentials' => 'Ogiltigt användarnamn eller lösenord',
			'addServer.authResponseNotJson' => 'Autentiseringssvaret var inte ett giltigt JSON-svar',
			'addServer.authResponseIncomplete' => 'Inloggningssvaret från servern var ofullständigt',
			'addServer.quickConnectRejected' => 'Quick Connect avvisades av servern',
			'addServer.quickConnectNotJson' => 'Quick Connect-svaret var inte ett giltigt JSON-svar',
			'addServer.quickConnectMissingFields' => 'Quick Connect-svaret saknar en kod eller hemlig nyckel',
			'addServer.quickConnectPollRejected' => 'Servern avvisade avsökningen för Quick Connect',
			'addServer.serverTimedOut' => 'Servern svarade inte i tid',
			'addServer.responseNotJson' => 'Serversvaret var inte ett giltigt JSON-svar',
			'addServer.responseMissingIdentity' => ({required Object product}) => 'Svaret saknar ett ID eller servernamn – är det här en ${product}-server?',
			'addServer.probeFailed' => ({required Object error}) => 'Kunde inte nå servern: ${error}',
			'addServer.enterAtLeastOneUrl' => ({required Object product}) => 'Ange minst en server-URL för ${product}',
			'addServer.noReachableServer' => ({required Object product}) => 'Ingen nåbar ${product}-server hittades',
			'addServer.urlsPointToDifferentServers' => ({required Object product}) => 'De här URL:erna pekar på olika servrar för ${product}',
			'addServer.urlDoesNotMatchServer' => ({required Object product}) => 'Den här URL:en stämmer inte överens med ${product}-servern',
			'addServer.redirectUnsupported' => 'Servern omdirigerade till en URL som inte stöds',
			'addServer.redirectDifferentHost' => ({required Object product}) => 'Servern omdirigerade till en annan värd. Ange den slutliga URL:en för ${product} direkt.',
			'addServer.redirectInsecure' => 'Servern omdirigerade från HTTPS till en osäker URL',
			'addServer.redirectUnsupportedEnterFinal' => ({required Object product}) => 'Servern omdirigerade till en URL som inte stöds. Ange den slutliga URL:en för ${product} direkt.',
			_ => null,
		};
	}
}
