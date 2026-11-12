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
class TranslationsHu extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsHu({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.hu,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <hu>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsHu _root = this; // ignore: unused_field

	@override 
	TranslationsHu $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsHu(meta: meta ?? this.$meta);

	// Translations
	@override late final _Translations$mobileLibrary$hu mobileLibrary = _Translations$mobileLibrary$hu._(_root);
	@override late final _Translations$profileStartup$hu profileStartup = _Translations$profileStartup$hu._(_root);
	@override late final _Translations$subtitleUpload$hu subtitleUpload = _Translations$subtitleUpload$hu._(_root);
	@override late final _Translations$personSpotlight$hu personSpotlight = _Translations$personSpotlight$hu._(_root);
	@override late final _Translations$detailExtras$hu detailExtras = _Translations$detailExtras$hu._(_root);
	@override late final _Translations$mobileUi$hu mobileUi = _Translations$mobileUi$hu._(_root);
	@override late final _Translations$family$hu family = _Translations$family$hu._(_root);
	@override late final _Translations$posterDetails$hu posterDetails = _Translations$posterDetails$hu._(_root);
	@override late final _Translations$libraryPolish$hu libraryPolish = _Translations$libraryPolish$hu._(_root);
	@override late final _Translations$showSchedule$hu showSchedule = _Translations$showSchedule$hu._(_root);
	@override late final _Translations$awardsCatalog$hu awardsCatalog = _Translations$awardsCatalog$hu._(_root);
	@override late final _Translations$searchDiscovery$hu searchDiscovery = _Translations$searchDiscovery$hu._(_root);
	@override late final _Translations$lurokaPlayerDesign$hu lurokaPlayerDesign = _Translations$lurokaPlayerDesign$hu._(_root);
	@override late final _Translations$lurokaWorkspace$hu lurokaWorkspace = _Translations$lurokaWorkspace$hu._(_root);
	@override late final _Translations$mobileFixes$hu mobileFixes = _Translations$mobileFixes$hu._(_root);
	@override late final _Translations$downloadsRedesign$hu downloadsRedesign = _Translations$downloadsRedesign$hu._(_root);
	@override late final _Translations$kidsShelf$hu kidsShelf = _Translations$kidsShelf$hu._(_root);
	@override late final _Translations$kidsHome$hu kidsHome = _Translations$kidsHome$hu._(_root);
	@override late final _Translations$tvSettingsV2$hu tvSettingsV2 = _Translations$tvSettingsV2$hu._(_root);
	@override late final _Translations$settingsRedesign$hu settingsRedesign = _Translations$settingsRedesign$hu._(_root);
	@override late final _Translations$onboarding$hu onboarding = _Translations$onboarding$hu._(_root);
	@override late final _Translations$household$hu household = _Translations$household$hu._(_root);
	@override late final _Translations$detailComposition$hu detailComposition = _Translations$detailComposition$hu._(_root);
	@override late final _Translations$kids$hu kids = _Translations$kids$hu._(_root);
	@override late final _Translations$lurokaDiscovery$hu lurokaDiscovery = _Translations$lurokaDiscovery$hu._(_root);
	@override late final _Translations$app$hu app = _Translations$app$hu._(_root);
	@override late final _Translations$appIcon$hu appIcon = _Translations$appIcon$hu._(_root);
	@override late final _Translations$auth$hu auth = _Translations$auth$hu._(_root);
	@override late final _Translations$common$hu common = _Translations$common$hu._(_root);
	@override late final _Translations$tvHints$hu tvHints = _Translations$tvHints$hu._(_root);
	@override late final _Translations$screens$hu screens = _Translations$screens$hu._(_root);
	@override late final _Translations$mediaExtras$hu mediaExtras = _Translations$mediaExtras$hu._(_root);
	@override late final _Translations$update$hu update = _Translations$update$hu._(_root);
	@override late final _Translations$supporter$hu supporter = _Translations$supporter$hu._(_root);
	@override late final _Translations$settings$hu settings = _Translations$settings$hu._(_root);
	@override late final _Translations$themeEditor$hu themeEditor = _Translations$themeEditor$hu._(_root);
	@override late final _Translations$seriesBrowser$hu seriesBrowser = _Translations$seriesBrowser$hu._(_root);
	@override late final _Translations$titlePage$hu titlePage = _Translations$titlePage$hu._(_root);
	@override late final _Translations$tvMenus$hu tvMenus = _Translations$tvMenus$hu._(_root);
	@override late final _Translations$lurokaPlayer$hu lurokaPlayer = _Translations$lurokaPlayer$hu._(_root);
	@override late final _Translations$lurokaSettings$hu lurokaSettings = _Translations$lurokaSettings$hu._(_root);
	@override late final _Translations$playerChrome$hu playerChrome = _Translations$playerChrome$hu._(_root);
	@override late final _Translations$tvLayout$hu tvLayout = _Translations$tvLayout$hu._(_root);
	@override late final _Translations$studios$hu studios = _Translations$studios$hu._(_root);
	@override late final _Translations$dashboard$hu dashboard = _Translations$dashboard$hu._(_root);
	@override late final _Translations$lurokaCatalog$hu lurokaCatalog = _Translations$lurokaCatalog$hu._(_root);
	@override late final _Translations$referenceDetails$hu referenceDetails = _Translations$referenceDetails$hu._(_root);
	@override late final _Translations$lurokaThemes$hu lurokaThemes = _Translations$lurokaThemes$hu._(_root);
	@override late final _Translations$customPerformance$hu customPerformance = _Translations$customPerformance$hu._(_root);
	@override late final _Translations$homeLayout$hu homeLayout = _Translations$homeLayout$hu._(_root);
	@override late final _Translations$screenTime$hu screenTime = _Translations$screenTime$hu._(_root);
	@override late final _Translations$activityStats$hu activityStats = _Translations$activityStats$hu._(_root);
	@override late final _Translations$search$hu search = _Translations$search$hu._(_root);
	@override late final _Translations$hotkeys$hu hotkeys = _Translations$hotkeys$hu._(_root);
	@override late final _Translations$fileInfo$hu fileInfo = _Translations$fileInfo$hu._(_root);
	@override late final _Translations$mediaMenu$hu mediaMenu = _Translations$mediaMenu$hu._(_root);
	@override late final _Translations$rateSheet$hu rateSheet = _Translations$rateSheet$hu._(_root);
	@override late final _Translations$accessibility$hu accessibility = _Translations$accessibility$hu._(_root);
	@override late final _Translations$tooltips$hu tooltips = _Translations$tooltips$hu._(_root);
	@override late final _Translations$audioTracks$hu audioTracks = _Translations$audioTracks$hu._(_root);
	@override late final _Translations$videoControls$hu videoControls = _Translations$videoControls$hu._(_root);
	@override late final _Translations$messages$hu messages = _Translations$messages$hu._(_root);
	@override late final _Translations$sourceLibraries$hu sourceLibraries = _Translations$sourceLibraries$hu._(_root);
	@override late final _Translations$subtitlingStyling$hu subtitlingStyling = _Translations$subtitlingStyling$hu._(_root);
	@override late final _Translations$mpvConfig$hu mpvConfig = _Translations$mpvConfig$hu._(_root);
	@override late final _Translations$dialog$hu dialog = _Translations$dialog$hu._(_root);
	@override late final _Translations$profiles$hu profiles = _Translations$profiles$hu._(_root);
	@override late final _Translations$connections$hu connections = _Translations$connections$hu._(_root);
	@override late final _Translations$serversAccounts$hu serversAccounts = _Translations$serversAccounts$hu._(_root);
	@override late final _Translations$accountPreferences$hu accountPreferences = _Translations$accountPreferences$hu._(_root);
	@override late final _Translations$discover$hu discover = _Translations$discover$hu._(_root);
	@override late final _Translations$errors$hu errors = _Translations$errors$hu._(_root);
	@override late final _Translations$libraries$hu libraries = _Translations$libraries$hu._(_root);
	@override late final _Translations$about$hu about = _Translations$about$hu._(_root);
	@override late final _Translations$serverSelection$hu serverSelection = _Translations$serverSelection$hu._(_root);
	@override late final _Translations$hubDetail$hu hubDetail = _Translations$hubDetail$hu._(_root);
	@override late final _Translations$logs$hu logs = _Translations$logs$hu._(_root);
	@override late final _Translations$startup$hu startup = _Translations$startup$hu._(_root);
	@override late final _Translations$licenses$hu licenses = _Translations$licenses$hu._(_root);
	@override late final _Translations$navigation$hu navigation = _Translations$navigation$hu._(_root);
	@override late final _Translations$explore$hu explore = _Translations$explore$hu._(_root);
	@override late final _Translations$liveTv$hu liveTv = _Translations$liveTv$hu._(_root);
	@override late final _Translations$collections$hu collections = _Translations$collections$hu._(_root);
	@override late final _Translations$playlists$hu playlists = _Translations$playlists$hu._(_root);
	@override late final _Translations$music$hu music = _Translations$music$hu._(_root);
	@override late final _Translations$watchTogether$hu watchTogether = _Translations$watchTogether$hu._(_root);
	@override late final _Translations$downloads$hu downloads = _Translations$downloads$hu._(_root);
	@override late final _Translations$shaders$hu shaders = _Translations$shaders$hu._(_root);
	@override late final _Translations$companionRemote$hu companionRemote = _Translations$companionRemote$hu._(_root);
	@override late final _Translations$videoSettings$hu videoSettings = _Translations$videoSettings$hu._(_root);
	@override late final _Translations$performanceOverlay$hu performanceOverlay = _Translations$performanceOverlay$hu._(_root);
	@override late final _Translations$externalPlayer$hu externalPlayer = _Translations$externalPlayer$hu._(_root);
	@override late final _Translations$metadataEdit$hu metadataEdit = _Translations$metadataEdit$hu._(_root);
	@override late final _Translations$matchScreen$hu matchScreen = _Translations$matchScreen$hu._(_root);
	@override late final _Translations$serverTasks$hu serverTasks = _Translations$serverTasks$hu._(_root);
	@override late final _Translations$trakt$hu trakt = _Translations$trakt$hu._(_root);
	@override late final _Translations$seerr$hu seerr = _Translations$seerr$hu._(_root);
	@override late final _Translations$services$hu services = _Translations$services$hu._(_root);
	@override late final _Translations$offlineRecovery$hu offlineRecovery = _Translations$offlineRecovery$hu._(_root);
	@override late final _Translations$releaseUpdates$hu releaseUpdates = _Translations$releaseUpdates$hu._(_root);
	@override late final _Translations$profileIntegrations$hu profileIntegrations = _Translations$profileIntegrations$hu._(_root);
	@override late final _Translations$profileSetupGuide$hu profileSetupGuide = _Translations$profileSetupGuide$hu._(_root);
	@override late final _Translations$animeFavorites$hu animeFavorites = _Translations$animeFavorites$hu._(_root);
	@override late final _Translations$addServer$hu addServer = _Translations$addServer$hu._(_root);
}

// Path: mobileLibrary
class _Translations$mobileLibrary$hu extends Translations$mobileLibrary$en {
	_Translations$mobileLibrary$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get pickerSubtitle => 'Válasszon egy gyűjteményt a felfedezéshez';
	@override String get searchLibraries => 'Könyvtárak keresése';
	@override String get noLibraries => 'Nincsenek megfelelő könyvtárak';
	@override String get ascending => 'Emelkedő';
	@override String get descending => 'Csökkenő';
	@override String get sort => 'Rendezés';
	@override String unwatchedCount({required Object count}) => '${count} meg nem nézett epizódok';
	@override String get latestEpisode => 'Legújabb epizód';
}

// Path: profileStartup
class _Translations$profileStartup$hu extends Translations$profileStartup$en {
	_Translations$profileStartup$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get autoLogin => 'Nyissa meg az utoljára használt profilt';
	@override String get autoLoginHint => 'Az utolsó profil automatikus megnyitása, ha nem igényel PIN-t.';
	@override String get allowKidsExit => 'Kilépés engedélyezése a gyerekprofilból szülői PIN nélkül';
	@override String get allowKidsExitHint => 'A gyermek szülői PIN nélkül válthat másik profilra. A profil-PIN-ek továbbra is érvényesek.';
	@override String get chooseKidsConnection => 'Válasszon másik fiókot vagy szervert';
	@override String get chooseKidsConnectionHint => 'Mentés után csatlakoztasson egy külön fiókot, vagy válasszon egy kapcsolatot egy másik profilból.';
}

// Path: subtitleUpload
class _Translations$subtitleUpload$hu extends Translations$subtitleUpload$en {
	_Translations$subtitleUpload$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get chooseFile => 'Feliratfájl feltöltése';
	@override String get hint => 'Válassza ki a fenti nyelvet, majd töltsön fel egy SRT, ASS, SSA vagy VTT fájlt erre a szerverre.';
	@override String get success => 'Felirat feltöltve a szerverre. Akkor jelenik meg, amikor a szerver frissíti az elemet.';
	@override String get failed => 'Nem sikerült feltölteni a feliratot. Ellenőrizze a fájl- és szerverengedélyeket.';
}

// Path: personSpotlight
class _Translations$personSpotlight$hu extends Translations$personSpotlight$en {
	_Translations$personSpotlight$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get inYourLibraries => 'a könyvtáraidban';
	@override String libraryTitles({required Object n}) => 'A könyvtáraiban · ${n} címek';
	@override String get readBiography => 'Olvassa el az életrajzot';
	@override String get newestFirst => 'Először a legújabb';
	@override String get oldestFirst => 'Először a legidősebb';
	@override String get titleAscending => 'Cím A–Z';
	@override String get sortTitles => 'Rendezés filmográfia';
	@override String unwatchedEpisodes({required Object n}) => '${n} meg nem nézett epizódok';
	@override String copies({required Object n}) => '${n} könyvtár másolatai';
	@override String versions({required Object n}) => '${n} fájlverziók';
	@override String get retryTitles => 'Nem sikerült betölteni az összes címet. Próbálja újra';
}

// Path: detailExtras
class _Translations$detailExtras$hu extends Translations$detailExtras$en {
	_Translations$detailExtras$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get onlineVideos => 'Pótkocsik és extrák';
	@override String get reviews => 'Vélemények';
	@override String get readReview => 'Olvassa el a teljes értékelést';
	@override String directedBy({required Object name}) => 'További rendező: ${name}';
	@override String get previewUnavailable => 'Ezt az előnézetet nem lehetett lejátszani. Ehelyett megnyithatja az eredeti alkalmazásban.';
	@override String get openExternally => 'Nyissa meg az eredeti videót';
}

// Path: mobileUi
class _Translations$mobileUi$hu extends Translations$mobileUi$en {
	_Translations$mobileUi$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get readMore => 'Olvass tovább';
	@override String get readLess => 'Mutass kevesebbet';
	@override String get playbackTools => 'Lejátszási lehetőségek';
	@override String get streamingQuality => 'Streaming minőség';
	@override String get fileVersions => 'Fájlverziók';
	@override String get qualityAndVersions => 'Streaming minőség és fájlverziók';
	@override String get hidePlaybackTools => 'Lejátszási eszközök elrejtése';
	@override String remaining({required Object time}) => '${time} maradt';
	@override String endsAt({required Object time}) => '${time}-nál ér véget';
	@override String get collection => 'Az Ön gyűjteménye';
	@override String get nowPlaying => 'MOST JÁTSZIK';
	@override String get popularLibrary => 'Népszerű a könyvtárában';
	@override String get weeklyLibrary => 'Felkapott a könyvtáradban ezen a héten';
}

// Path: family
class _Translations$family$hu extends Translations$family$en {
	_Translations$family$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profilok és család';
	@override String get yourPeople => 'A te néped';
	@override String get manageHint => 'Kezelheti az embereket, a gyerekek biztonságát és a megtekintési tevékenységet ezen az eszközön.';
	@override String get people => 'Emberek';
	@override String peopleCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n,
		one: '${n} személy',
		other: '${n} emberek',
	);
	@override String kidsCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n,
		one: '${n} gyerek',
		other: '${n} gyerekek',
	);
	@override String get you => 'Te';
	@override String get adult => 'Felnőtt';
	@override String get child => 'Gyermek';
	@override String get adultTeen => 'Felnőtt vagy tinédzser';
	@override String get adultHint => 'Saját profil, opcionális Profile PIN és saját szerverkapcsolatok.';
	@override String get childHint => 'Korhatárok, biztonságos könyvtárak és gyerekbarát megjelenés. A szülői PIN védi ezeket a beállításokat.';
	@override String upToAge({required Object age}) => 'Korig ${age}';
	@override String get allAges => 'Minden korosztály';
	@override String get switchProfile => 'Profil váltása';
	@override String get switchHint => 'Válassza ki, hogy ki néz. Egy személy kezelése nem váltja a profilt.';
	@override String get addPerson => 'Személy hozzáadása';
	@override String get addChild => 'Gyermek hozzáadása';
	@override String get addHint => 'Hozzon létre egy felnőtt, tizenéves vagy gyermek profilt ezen az eszközön.';
	@override String get emptyPeople => 'Csinálj helyet mindenkinek, aki veled néz.';
	@override String get emptyKids => 'Még nincsenek gyerekprofilok. Adjon hozzá egy gyermeket a korhatárok és a biztonságos könyvtárak kiválasztásához.';
	@override String get safety => 'Gyerekek és biztonság';
	@override String get safetyHint => 'Szülői PIN, gyerekprofilok és korhatárok.';
	@override String get protection => 'Védelem';
	@override String get kidsProfiles => 'Gyerek profilok';
	@override String get backupHistory => 'Biztonsági mentés és előzmények';
	@override String get parentPinOn => 'Szülői PIN bekapcsolva';
	@override String get profilePin => 'Profil-PIN';
	@override String get confirmParentPin => 'Szülői PIN megerősítése';
	@override String get parentPinOff => 'Nincs beállítva szülői PIN';
	@override String get missingPin => 'Állítson be szülői PIN-t ezeknek a beállításoknak a védelméhez.';
	@override String get hideScope => 'A gyerekek tevékenységének elrejtése a Nézés folytatása lehetőségből ebben a Luroka profilban. Ez nem módosítja a megosztott szerver megtekintési előzményeit.';
	@override String get localScope => 'A gyermekprofilok és korlátozások ezen az eszközön vannak tárolva. Az ugyanazt a szerverfiókot használó profilok továbbra is megosztják az adott fiók figyelési folyamatát.';
	@override String get clearHistoryConfirm => 'Engedélyezi, hogy a gyerekek által megtekintett filmek újra megjelenjenek a Nézés folytatásában? A gyerekprofilokat, a korlátozásokat, a megtekintési időre vonatkozó statisztikákat és a szerver megtekintési előzményeit megőrzik.';
	@override String get editRestrictions => 'Szerkessze a gyerekekre vonatkozó korlátozásokat';
	@override String get activity => 'Tevékenység megtekintése';
	@override String namedActivity({required Object name}) => 'A ${name} megtekintési tevékenysége';
	@override String get thisProfile => 'Ezt a profilt';
	@override String get activityScope => 'A Luroka által rögzített lejátszási idő ezen az eszközön az aktív profilhoz. Ezek statisztikák, nem megtekintési korlátok vagy teljes szerverelőzmények.';
	@override String get activityUnavailable => 'Ehhez a profilhoz még nem érhető el a megtekintési tevékenység.';
	@override String get finished => 'Kész';
}

// Path: posterDetails
class _Translations$posterDetails$hu extends Translations$posterDetails$en {
	_Translations$posterDetails$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get showThemeMusic => 'Játssz téma zenét';
	@override String get showThemeMusicDescription => 'Lejátszhat egy filmet vagy műsort, miközben a részletes oldal meg van nyitva, ha elérhető a szerveren.';
	@override String get catalogEpisodeInfo => 'Az epizódszám és a futásidő megjelenítése a katalóguskártyákon';
	@override String get catalogEpisodeInfoDescription => 'Az epizódszámok és az átlagos időtartam megjelenítése a Felfedezés-plakátokon.';
	@override String get title => 'Plakát részletei';
	@override String get description => 'Mutassa meg a címet, az évet és a IMDb értékelést a Studio, Search, Felfedezés és Libraries plakátok alatt. A hiányzó IMDb értékelések rejtve maradnak. Kapcsolja ki a csak műalkotásokat tartalmazó posztereknél.';
}

// Path: libraryPolish
class _Translations$libraryPolish$hu extends Translations$libraryPolish$en {
	_Translations$libraryPolish$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get compactTvNavigation => 'Kompakt könyvtári navigáció';
	@override String get compactTvNavigationDescription => 'A kicsúsztatható menüben megjelenítheti a könyvtár szakaszait és böngészhet a lehetőségek között, így több hely marad a posztereknek.';
	@override String get openLibraryMenu => 'Nyissa meg a könyvtár menüt';
	@override String get posterDetails => 'Plakát részletei';
	@override String get showPosterDetails => 'A plakát részleteinek megjelenítése · név, év és IMDb';
	@override String get hidePosterDetails => 'A plakát részleteinek elrejtése';
	@override String get overview => 'Áttekintés';
	@override String get refreshing => 'Könyvtár frissítése…';
	@override String get serverCollections => 'Az összes gyűjtemény ezen a szerveren';
	@override String get serverPlaylists => 'Az összes videó lejátszási lista ezen a szerveren';
	@override String get libraryCollections => 'Gyűjtemények ebben a könyvtárban';
	@override String get searchCollections => 'Keresés a gyűjteményekben';
	@override String get searchPlaylists => 'Lejátszási listák keresése';
	@override String get searchHint => 'Keresés név szerint';
	@override String get titleAscending => 'Cím A–Z';
	@override String get titleDescending => 'Cím Z–A';
	@override String get clearFilters => 'Tiszta szűrők';
	@override String get playlistEmptyTitle => 'A filmes esték, az Ön sorrendjében';
	@override String get playlistEmptyHint => 'Nyissa meg egy tétel Továbbiak menüjét, és válassza a Hozzáadás lejátszási listához lehetőséget az első lejátszási lista létrehozásához.';
	@override String get noMatches => 'Nincsenek egyező nevek';
	@override String get indexing => 'Keresés a teljes katalógusban…';
}

// Path: showSchedule
class _Translations$showSchedule$hu extends Translations$showSchedule$en {
	_Translations$showSchedule$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get today => 'Ma';
	@override String get tomorrow => 'Holnap';
	@override String get latestUpcoming => 'Legújabb és közelgő';
	@override String get latestEpisode => 'Legújabb epizód';
	@override String get upcoming => 'Közelgő';
	@override String get inLibrary => 'A könyvtárában';
	@override String get notInLibrary => 'Nincs a könyvtárában';
	@override String get notYetAired => 'Még nem adták le';
	@override String episode({required Object number}) => '${number} epizód';
	@override String get caughtUp => 'Mindannyian elkaptak';
	@override String get finished => 'Befejezted ezt a sorozatot';
	@override String nextAirs({required Object date}) => 'A következő epizód ${date}';
	@override String get watchBeginning => 'Nézd az elejétől';
	@override String get replay => 'Újrajátszás';
	@override String get playNext => 'Játssz tovább';
}

// Path: awardsCatalog
class _Translations$awardsCatalog$hu extends Translations$awardsCatalog$en {
	_Translations$awardsCatalog$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get awards => 'Díjak';
	@override String get customize => 'Testreszabás';
	@override String get chooseShelves => 'A Felfedezés személyre szabása';
	@override String get shelvesDescription => 'Válassza ki a kívánt sorokat a Discoverben. A díjak soraiban a nyertesek láthatók a könyvtáraidból. A rendszer menti választásait ehhez a profilhoz.';
	@override String get restoreShelves => 'Alapértékek visszaállítása';
	@override String get charts => 'IMDb diagramok';
	@override String get generalShelves => 'Népszerű és felkapott';
	@override String get saveShelvesFailed => 'Nem sikerült menteni a Felfedezés-választásokat. Kérjük, próbálja újra.';
	@override String get comedyActress => 'Főszereplő · Vígjáték';
	@override String get leadDramaActor => 'Főszereplő · Dráma';
	@override String get leadDramaActress => 'Főszereplő · Dráma';
	@override String get comedySupportingActor => 'Mellékszereplő · Vígjáték';
	@override String get comedySupportingActress => 'Mellékszereplő · Vígjáték';
	@override String get leadingPerformance => 'Ezüst Medve · Legjobb vezető teljesítmény';
	@override String get globesComedySeries => 'Legjobb televíziós sorozat · Musical vagy vígjáték';
	@override String get limitedSupportingActor => 'Mellékszereplő · Limitált sorozat vagy film';
	@override String get limitedSupportingActress => 'Mellékszereplő · Limitált sorozat vagy film';
	@override String get berlinDocumentary => 'Berlinale Dokumentumfilm Díj';
	@override String get title => 'Díjak és fesztiválok';
	@override String get chooseCategory => 'Válasszon díjkategóriát';
	@override String get winners => 'Nyertesek';
	@override String get nominees => 'Jelöltek';
	@override String get releaseDecade => 'Kiadási évtized';
	@override String get allYears => 'Minden évben';
	@override String get loading => 'Díjcímek betöltése…';
	@override String get matching => 'Ezeknek a címeknek a keresése a könyvtáraiban…';
	@override String get unavailable => 'A díjak adatai jelenleg nem állnak rendelkezésre. Próbáld újra.';
	@override String get empty => 'Ebben a kategóriában nincs egyező cím a látható könyvtáraiban.';
	@override String get coverage => 'A tagság a Wikidatából származik, és lehet hiányos. A színész és rendező kategóriák azokat a filmeket vagy műsorokat mutatják meg, amelyekért díjazták. Az évek a cím kiadására vonatkoznak, nem a ceremóniára.';
	@override String get picture => 'Legjobb Kép';
	@override String get film => 'Legjobb Film';
	@override String get international => 'Legjobb nemzetközi funkció';
	@override String get internationalFilm => 'Legjobb nemzetközi film';
	@override String get nonEnglishFilm => 'A legjobb nem angol nyelvű film';
	@override String get animated => 'Legjobb animációs film';
	@override String get animatedFilm => 'Legjobb animációs film';
	@override String get documentary => 'Legjobb dokumentumfilm';
	@override String get director => 'Legjobb rendező';
	@override String get actor => 'Legjobb színész';
	@override String get actress => 'Legjobb színésznő';
	@override String get supportingActor => 'Legjobb mellékszereplő';
	@override String get supportingActress => 'Legjobb női mellékszereplő';
	@override String get originalScreenplay => 'Legjobb eredeti forgatókönyv';
	@override String get adaptedScreenplay => 'Legjobb adaptált forgatókönyv';
	@override String get screenplay => 'Legjobb forgatókönyv';
	@override String get cinematography => 'Legjobb operatőr';
	@override String get editing => 'Legjobb szerkesztés';
	@override String get score => 'Legjobb Eredeti Kotta';
	@override String get song => 'Legjobb eredeti dal';
	@override String get sound => 'Legjobb Hang';
	@override String get effects => 'Legjobb vizuális effektusok';
	@override String get productionDesign => 'Legjobb gyártási tervezés';
	@override String get costume => 'Legjobb jelmeztervezés';
	@override String get makeup => 'Legjobb smink és frizura';
	@override String get dramaSeries => 'Kiváló drámasorozat';
	@override String get comedySeries => 'Kiváló vígjátéksorozat';
	@override String get limitedSeries => 'Kiváló limitált széria';
	@override String get animatedProgram => 'Kiváló animációs program';
	@override String get comedyActor => 'Főszereplő · Vígjáték';
	@override String get limitedActor => 'Főszereplő · Limitált sorozat vagy film';
	@override String get limitedActress => 'Főszereplő · Limitált sorozat vagy film';
	@override String get limitedDirecting => 'Rendező · Limitált sorozat vagy film';
	@override String get britishFilm => 'Legjobb brit film';
	@override String get goldenBear => 'Arany Medve';
	@override String get grandJury => 'A zsűri fődíja';
	@override String get jury => 'A zsűri díja';
	@override String get teddy => 'Teddy-díj';
	@override String get goldenLion => 'Arany Oroszlán';
	@override String get volpiActor => 'Volpi Kupa · Legjobb színész';
	@override String get volpiActress => 'Volpi Kupa · Legjobb színésznő';
	@override String get queerLion => 'Queer Lion';
	@override String get dramaFilm => 'Legjobb film · Dráma';
	@override String get comedyFilm => 'Legjobb film · Musical vagy vígjáték';
	@override String get dramaActor => 'Legjobb színész · Dráma';
	@override String get dramaActress => 'Legjobb színésznő · Dráma';
	@override String get usDramatic => 'Az amerikai drámai zsűri nagydíja';
	@override String get documentaryJury => 'Dokumentumfilm zsűri nagydíja';
	@override String get worldCinema => 'A World Cinema zsűrijének fődíja';
	@override String get dramaticAudience => 'Amerikai drámai közönségdíj';
	@override String get usDirecting => 'Amerikai rendezési díj';
	@override String get peopleChoice => 'People\'s Choice Award';
	@override String get canadianFilm => 'Legjobb kanadai film';
	@override String get firstFeature => 'Legjobb első funkció';
	@override String get cassavetes => 'John Cassavetes-díj';
	@override String get scienceFiction => 'Legjobb sci-fi film';
	@override String get fantasy => 'Legjobb fantasy film';
	@override String get horror => 'Legjobb horror film';
	@override String get action => 'Legjobb akció- vagy kalandfilm';
	@override String get thriller => 'Legjobb thriller film';
}

// Path: searchDiscovery
class _Translations$searchDiscovery$hu extends Translations$searchDiscovery$en {
	_Translations$searchDiscovery$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get suggestions => 'Valami néznivaló';
	@override String get collections => 'Díjak és gyűjtemények';
	@override String get collectionsHint => 'Díjnyertesek és válogatott listák a könyvtáraidból';
	@override String get all => 'Minden felfedezés';
	@override String get awards => 'Díjak és grafikonok';
}

// Path: lurokaPlayerDesign
class _Translations$lurokaPlayerDesign$hu extends Translations$lurokaPlayerDesign$en {
	_Translations$lurokaPlayerDesign$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get seeking => 'Előnézet keresése';
	@override String get keepWatching => 'Nézz tovább';
	@override String get upNext => 'Legközelebb';
	@override String playingIn({required Object seconds}) => 'Lejátszás ${seconds} s';
}

// Path: lurokaWorkspace
class _Translations$lurokaWorkspace$hu extends Translations$lurokaWorkspace$en {
	_Translations$lurokaWorkspace$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get everyday => 'Mindennapi';
	@override String get homeDiscovery => 'Otthon és felfedezés';
	@override String get librariesAccounts => 'Könyvtárak és fiókok';
	@override String get profilesFamily => 'Profilok és család';
	@override String get thisDevice => 'Ez a készülék';
	@override String get thisProfile => 'Ezt a profilt';
	@override String get searchSettings => 'Keresési beállítások';
	@override String get savedAutomatically => 'A változtatások automatikusan mentésre kerülnek. A Mindennapi és a Haladó csak a megjelenített vezérlőket módosítja.';
	@override String get audioSubtitles => 'Hang és feliratok';
	@override String get audioDescription => 'Hangkimenet, hangerő és felirat megjelenés. Az előnyben részesített nyelvek kiszolgálófiókonként kerülnek beállításra a Fiókbeállítások segítségével, amikor csatlakoztatva van.';
	@override String get pictureSound => 'Kép és hang';
	@override String get pictureDescription => 'Képkockasebesség illesztés, felbontás, HDR és Dolby Vision hangolás ehhez az eszközhöz.';
	@override String get engineDescription => 'Lejátszómotor, dekódolás, egyéni konfiguráció és fejlett lejátszási szabályok.';
	@override String get networkStreaming => 'Hálózat és adatfolyam';
	@override String get networkDescription => 'Streaming minőség, közvetlen lejátszású kodek beállításai és sávszélesség-beállítások.';
	@override String get homeOptions => 'Otthoni lehetőségek';
	@override String get refreshHome => 'Frissítse az Otthont és a Népszerűt most';
	@override String get customizeHome => 'A Kezdőlap személyre szabása';
	@override String get spotlight => 'Otthoni reflektorfény';
	@override String get rotateSpotlight => 'A kiemelt címek automatikus elforgatása';
	@override String get rotateDescription => 'Forgatás, amíg a Kezdőlap tétlen. Az interakció szünetelteti a forgást; a polcok böngészése, egy oldal megnyitása vagy az alkalmazás elhagyása teljesen szünetelteti azt.';
	@override String get rotationInterval => 'A kiemelt címek közötti idő';
}

// Path: mobileFixes
class _Translations$mobileFixes$hu extends Translations$mobileFixes$en {
	_Translations$mobileFixes$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get connectionRecoveryHint => 'A szerver nem elérhető? Kezelje fiókjait, vagy csatlakozzon másik szerverhez.';
}

// Path: downloadsRedesign
class _Translations$downloadsRedesign$hu extends Translations$downloadsRedesign$en {
	_Translations$downloadsRedesign$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get shelfSize => 'Elemek polconként';
	@override String get shelfSizeHint => 'Mutasson 16, 32 vagy 48 tételt a Megtekintés folytatása és az ajánlási polcokon. Előfordulhat, hogy a szerverek kevesebb elérhető címet adnak vissza.';
	@override String get subtitle => 'Az Ön kedvencei, készen állnak az utazásra.';
	@override String get transfers => 'Átigazolások';
	@override String get ready => 'Offline állapotban';
	@override String get active => 'Letöltés';
	@override String get waiting => 'Várakozás';
	@override String get downloaded => 'Letöltve';
	@override String get speed => 'Letöltési sebesség';
	@override String get notificationProgress => '{progress} · {networkSpeed} · {timeRemaining} maradt';
}

// Path: kidsShelf
class _Translations$kidsShelf$hu extends Translations$kidsShelf$en {
	_Translations$kidsShelf$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get movieShelf => 'Filmidő';
	@override String get showShelf => 'Találja meg a következő műsorát';
	@override String get aurora => 'Aurora – mély kékeszöld és lime';
	@override String get marquee => 'Marquee — bársony és arany';
	@override String get electric => 'Elektromos - indigó és jég';
	@override String get midnight => 'Éjfél – acél és borostyán';
	@override String get yourShelf => 'A filmes polcod';
	@override String get all => 'Mindent';
	@override String get pickSomething => 'mit akarsz nézni?';
}

// Path: kidsHome
class _Translations$kidsHome$hu extends Translations$kidsHome$en {
	_Translations$kidsHome$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get everything => 'Neked';
	@override String get keepWatching => 'Nézz tovább';
	@override String get emptyFilter => 'Itt még semmi. Próbáld ki Neked, vagy kérd meg a felnőttedet, hogy adjon hozzá valamit, amit szeret.';
}

// Path: tvSettingsV2
class _Translations$tvSettingsV2$hu extends Translations$tvSettingsV2$en {
	_Translations$tvSettingsV2$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get moreThemes => 'További témák és egyedi színek';
	@override String get moreThemesHint => 'Nyissa meg az összes elérhető előre beállított beállítást és egyéni témabeállítást.';
	@override String get previewLive => 'Élő előnézet';
	@override String get previewIllustration => 'Előnézeti példa';
	@override String previewShelfCount({required Object count}) => 'Polconként akár ${count} tétel';
	@override String get simple => 'Egyszerű';
	@override String get homeNavigation => 'Kezdőlap és navigáció';
	@override String get libraryCards => 'Könyvtár és kártyák';
	@override String get accountsLibraries => 'Fiókok és könyvtárak';
	@override String get profilesFamily => 'Profilok és család';
	@override String get aboutSupport => 'Névjegy és támogatás';
	@override String get playback => 'Lejátszás';
	@override String get homeHint => 'Válassza ki, hogy mi jelenjen meg a Kezdőlapon és a navigációban.';
	@override String get libraryHint => 'Állítsa be a plakátok méretét, a címkéket és a figyelt indikátorokat.';
	@override String get advancedPlayback => 'Játékos motor és streaming';
	@override String get advancedPlaybackHint => 'Lejátszó, videó kimenet, streaming és speciális lejátszási lehetőségek.';
	@override String get advancedTools => 'Diagnosztika és biztonsági mentések';
	@override String get advancedToolsHint => 'Naplók, hibaelhárítás, beállítások biztonsági mentése és visszaállítása.';
	@override String get themePreview => 'Téma előnézete';
	@override String get libraryPreview => 'Könyvtár előnézete';
	@override String get homePreview => 'Kezdőlap előnézete';
	@override String get subtitlePreview => 'Felirat előnézet';
	@override String get subtitleSample => 'A felirataid így fognak kinézni.';
	@override String get previewPlaceholder => 'Az Ön alkotása itt jelenik meg';
	@override String get posterSize => 'Plakát mérete';
	@override String get serverRecommendations => 'Otthoni ajánlások a szerverről';
	@override String get tvLayout => 'Használja a TV elrendezését';
	@override String get hardwareDecode => 'Használjon hardveres videó dekódolást';
	@override String get serverNames => 'Szervernevek megjelenítése a Kezdőlap sorokban';
	@override String get settingsSaved => 'A változtatások automatikusan mentésre kerülnek.';
	@override String get morePlayback => 'Haladó lejátszás';
	@override String get screenDisplay => 'Kép és hang';
	@override String get engine => 'Játékos motor';
	@override String get network => 'Streaming és hálózat';
	@override String get performance => 'Teljesítmény';
	@override String get simpleAudio => 'Nyelvek és feliratok megjelenése';
}

// Path: settingsRedesign
class _Translations$settingsRedesign$hu extends Translations$settingsRedesign$en {
	_Translations$settingsRedesign$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get themeEffects => 'Téma és effektusok';
	@override String get libraryLayout => 'Könyvtár elrendezése';
	@override String get posterInformation => 'Plakát információk';
	@override String get libraryBehavior => 'Könyvtári viselkedés';
	@override String get appearanceHint => 'Testreszabhatja a Luroka megjelenését, elrendezését és viselkedését.';
	@override String get livePreview => 'Élő előnézet';
	@override String get previewHint => 'Tekintse meg, hogyan fog kinézni könyvtára a jelenlegi beállításokkal.';
	@override String get showLiveTv => 'Élő TV megjelenítése';
	@override String get showLiveTvHint => 'Élő TV megjelenítése a navigációban, ha egy csatlakoztatott szerver támogatja. Ez nem változtatja meg a szerverét.';
	@override String get aboutTagline => 'Az Ön médiája. A te tered.';
	@override String get aboutDescription => 'A Luroka összehozza Plex, Jellyfin és Emby könyvtárait egy moziszerű lejátszóban telefonokhoz, TV-khez és asztali számítógépekhez.';
	@override String get aboutFeatures => 'Böngésszen könyvtárai között, folytassa a filmeket és műsorokat, szabja személyre profilokat, élvezze a letöltéseket és nézzen együtt. Élő TV kompatibilis szerverrel érhető el.';
	@override String get services => 'Kapcsold össze a világod';
	@override String get updateSource => 'Frissítse a forrást';
	@override String get updateSourceHint => 'A Luroka kiadási hírcsatornájának HTTPS-címe. A forgalmazó ezt előre beállíthatja az alkalmazásban.';
	@override String get updateNotConfigured => 'Az automatikus frissítések nincsenek konfigurálva ehhez a buildhez.';
	@override String get downloadInstall => 'Letöltés és telepítés';
	@override String get installUpdate => 'Frissítés telepítése';
	@override String get downloading => 'Frissítés letöltése…';
	@override String get downloadFailed => 'Nem sikerült letölteni vagy ellenőrizni a frissítést. Kérjük, próbálja újra.';
	@override String get installPermission => 'Engedélyezze a Luroka számára a frissítések telepítését az Android beállításaiban, majd térjen vissza, és válassza a Frissítés telepítése lehetőséget.';
	@override String get updateReady => 'Letöltés ellenőrizve. Telepítésre kész.';
	@override String get releaseNotes => 'Kiadási megjegyzések';
	@override String get invalidFeed => 'Adjon meg egy érvényes HTTPS-frissítési hírcsatorna-címet.';
}

// Path: onboarding
class _Translations$onboarding$hu extends Translations$onboarding$en {
	_Translations$onboarding$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get connectStep => '01 · Csatlakozás';
	@override String get connectTitle => 'Üdvözöljük a Luroka oldalon';
	@override String get connectHint => 'Jelentkezzen be, hogy ide hozza könyvtárait.';
	@override String get serverAddressHint => 'Adja meg a szerver címét, vagy válasszon egy, a hálózaton található szervert.';
	@override String get serverSignInHint => 'Használja szerver felhasználónevét és jelszavát a könyvtárak csatlakoztatásához.';
	@override String get serverAddressTitle => 'Szerver címe';
	@override String get serverAccountTitle => 'A szerver fiókod';
	@override String get plexHomeTitle => 'Válassza ki a Plex otthoni felhasználóját';
	@override String get plexHomeHint => 'Válassza ki azt a Plex felhasználót, akinek a könyvtárait használni szeretné. Legközelebb beállítja a Luroka profilt.';
	@override String get chooseService => 'Válassza ki szolgáltatását';
	@override String get profileStep => '02 · Az Ön profilja';
	@override String get profileTitle => 'Érezd magad otthon.';
	@override String get profileHint => 'Válasszon nevet és avatárt a Luroka profiljához. A csatlakoztatott fiók változatlan marad.';
	@override String get readyStep => '03 · Megtekintésre kész';
	@override String get readyTitle => 'Még egy kicsit te.';
	@override String get readyHint => 'Hozd össze szolgáltatásaidat, vagy adj helyet valaki másnak. Ezt később bármikor megteheti.';
	@override String get addService => 'Csatlakoztasson egy másik szolgáltatást';
	@override String get editProfile => 'Szerkessze a nevét és az avatarod';
	@override String get connected => 'Csatlakoztatva és készen áll';
	@override String get backToProfile => 'Vissza a profilodhoz';
	@override String get showOtherPlexHome => 'Mutasd a többi Plex Home tagot';
	@override String get showOtherPlexHomeHint => 'Alapértelmezés szerint ki. Az Ön által használt Luroka-profilok és Plex Home-tagok láthatóak maradnak. Kapcsolja be, ha valaki mást szeretne választani.';
}

// Path: household
class _Translations$household$hu extends Translations$household$en {
	_Translations$household$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Az Ön Luroka háztartása';
	@override String get welcome => 'Legyen a Luroka a magáé';
	@override String get welcomeHint => 'Az első fiókod csatlakoztatva van. Tedd személyre profilodat, vagy adj hozzá valakit, mielőtt elkezded nézni.';
	@override String get profiles => 'Profilok és háztartás';
	@override String get manageHint => 'Adjon hozzá személyeket, módosítsa a képeket, és kezelje az egyes profilok kapcsolatait.';
	@override String get addProfile => 'Luroka profil hozzáadása';
	@override String get addHint => 'Mindenki csatlakoztathatja saját Plex, Emby vagy Jellyfin bejelentkezési adatait. Csak a profiljukhoz hozzáadott kapcsolatok jelennek meg számukra.';
	@override String get sharedHint => 'Egy másik profil kapcsolatának újrafelhasználása megosztja a szerver felhasználójának megfigyelt állapotát és a lejátszás előrehaladását. Válasszon külön bejelentkezést a független megtekintési előzményekhez.';
	@override String get personalise => 'Profil személyre szabása';
	@override String get changePicture => 'Profilkép módosítása';
	@override String get pictureHint => 'Válassz egy Luroka avatart vagy egy fényképet. Ez csak ezen az eszközön változtatja meg a képet; a szerverfiókod érintetlen.';
	@override String get serverPicture => 'Használja a szerver képét / kezdőbetűit';
	@override String get choosePhoto => 'Válasszon egy fényképet';
	@override String get photoHint => 'JPEG, PNG vagy más támogatott kép, legfeljebb 10 MB. A fotók átméretezésre kerülnek és ezen az eszközön tárolódnak.';
	@override String get pictureSaved => 'A profilkép frissítve';
	@override String get pictureFailed => 'Nem sikerült frissíteni a profilképet. Próbáljon ki egy támogatott képet 10 MB-ig.';
	@override String get saveFailed => 'Nem sikerült menteni a profilbeállításokat. Kérjük, próbálja újra.';
	@override String get startWatching => 'Kezdje el nézni';
	@override String get manageProfiles => 'Profilok kezelése vagy váltása';
	@override String get addLater => 'Később további személyeket vehet fel a Beállítások → Profilok és háztartás menüpontban.';
	@override String get connectionRequired => 'Adjon hozzá egy szerverkapcsolatot a profil beállításának befejezéséhez.';
	@override String get mountain => 'Hegy';
	@override String get orbit => 'Explorer';
	@override String get waves => 'Óceán';
	@override String get blossom => 'Blossom';
	@override String get lightning => 'Villámlás';
	@override String get moon => 'Hold';
	@override String get avatarGallery => 'Válassz egy avatart';
	@override String get avatarIllustrationHint => 'Eredeti illusztrált portrék, gyerekek és állatbarátok';
	@override String get avatarPortraitSunrise => 'Napkelte portréja';
	@override String get avatarPortraitMeadow => 'Réti portré';
	@override String get avatarPortraitBerry => 'Bogyó portré';
	@override String get avatarPortraitGolden => 'Arany portré';
	@override String get avatarPortraitIndigo => 'Indigó portré';
	@override String get avatarPortraitOcean => 'Óceán portré';
	@override String get avatarKidArtist => 'Kis művész';
	@override String get avatarKidSkater => 'Kis korcsolyázó';
	@override String get avatarCat => 'Kíváncsi macska';
	@override String get avatarDog => 'Boldog kutya';
	@override String get avatarPanda => 'Panda';
	@override String get avatarOwl => 'Bagoly';
	@override String get avatarFox => 'Fox';
	@override String get avatarDinosaur => 'Dinoszaurusz';
	@override String get avatarRobot => 'Robot';
}

// Path: detailComposition
class _Translations$detailComposition$hu extends Translations$detailComposition$en {
	_Translations$detailComposition$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get startOver => 'Kezdje elölről';
	@override String get seriesCast => 'A sorozat szereplői';
	@override String get streamingQuality => 'Stream minősége…';
	@override String get trailer => 'Előzetes';
	@override String get manageMedia => 'Médiakezelés…';
	@override String get playbackOptions => 'Lejátszási lehetőségek…';
	@override String get moreActions => 'További műveletek';
	@override String get watched => 'Figyelt';
	@override String get unwatched => 'Nézetlen';
	@override String endsAt({required Object time}) => '${time}-nál ér véget';
	@override String get automatic => 'Automatikus';
	@override String get usePreferences => 'Használja lejátszási beállításait';
	@override String get mediaInformation => 'Médiainformációk';
	@override String get fullFileInformation => 'Teljes fájlinformáció';
	@override String get castAndCrew => 'Szereplők és stáb';
}

// Path: kids
class _Translations$kids$hu extends Translations$kids$en {
	_Translations$kids$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get timeLimits => 'Képernyőidő-korlátok';
	@override String get dailyWatchLimit => 'Napi nézési idő';
	@override String get dailyWatchLimitHint => 'Naponta korlátozza a videolejátszást ezen az eszközön.';
	@override String get noTimeLimit => 'Nincs korlátozás';
	@override String minutesLimit({required Object minutes}) => '${minutes} perc';
	@override String get bedtime => 'Lefekvés';
	@override String get bedtimeHint => 'A profil használatához ezekben az órákban egy szülő PIN szükséges.';
	@override String get bedtimeStart => 'Elkezdődik a lefekvés';
	@override String get bedtimeEnd => 'Lefekvés véget ér';
	@override String get timeLimitReached => 'A nézési idő mára lejárt';
	@override String get bedtimeReached => 'Lefekvés ideje van';
	@override String get timeLimitParentHint => 'Kérje meg a szülőt, hogy adja meg PIN értékét, hogy folytathassa ezt a foglalkozást.';
	@override String get parentUnlock => 'Szülői feloldás';
	@override String get backupProfile => 'Gyermekprofil biztonsági mentése';
	@override String get backupExplain => 'Készítsen biztonsági másolatot a profil mentett nevéről, karakteréről, korlátozásairól, megjelenéséről és a helyi megtekintési kizárásokról. A szülői PIN-kódokat, a szerverbejelentkezéseket, a letöltéseket és a szerver lejátszási folyamatát nem tartalmazza.';
	@override String get saveBackupFile => 'Mentse a biztonsági másolat fájlt';
	@override String get copyBackup => 'Biztonsági másolat szövegének másolása';
	@override String backupSaved({required Object path}) => 'A gyerekek profiljának biztonsági másolata mentve a ${path} mappába';
	@override String get backupCopied => 'A gyerekek profiljának biztonsági másolata másolva';
	@override String get backupFailed => 'Nem sikerült menteni a gyerekek profiljának biztonsági másolatát. Kérjük, próbálja újra.';
	@override String get restoreProfile => 'Gyerekprofil visszaállítása';
	@override String get chooseBackupFile => 'Válasszon biztonsági mentési fájlt';
	@override String get pasteBackup => 'Illessze be a biztonsági másolat szövegét';
	@override String get backupText => 'Gyermekprofil biztonsági mentése JSON';
	@override String get pasteFromClipboard => 'Beillesztés a vágólapról';
	@override String get restoreReview => 'Tekintse át ezeket a visszaállított beállításokat, majd a Mentés után hozzon létre új gyerekprofilt a jelenlegi szerverkapcsolataival. A meglévő profilok nem íródnak felül. A könyvtárkiválasztások és a megtekintési kizárások csak ugyanazoknak a szerver-/könyvtárazonosítóknak felelnek meg.';
	@override String get restoreInvalid => 'Ez nem érvényes támogatott gyerekprofil biztonsági másolat. Válasszon egy Luroka gyerekprofil JSON biztonsági másolatot.';
	@override String get deleteProfile => 'Gyermekprofil törlése';
	@override String deleteExplain({required Object name}) => 'Törli a ${name}-t a Luroka-ból? A helyi beállítások, letöltések és megtekintési kizárások el lesznek távolítva. Szerverfiókja és szerveroldali előzményei megmaradnak. Először készítsen biztonsági másolatot, ha később vissza szeretné állítani a profilt.';
	@override String get profileDeleted => 'Gyermekprofil törölve';
	@override String get allowedLibraries => 'Engedélyezett könyvtárak';
	@override String get unavailableLibrary => 'Korábban kiválasztott könyvtár (jelenleg nem érhető el)';
	@override String get allLibraries => 'Engedélyezze az összes csatlakoztatott film- és TV-könyvtárat';
	@override String get librariesExplain => 'Kapcsolja ki ezt a funkciót adott könyvtárak kiválasztásához. A kiválasztott könyvtárakon belül továbbra is érvényesek az életkorra és az animációra vonatkozó szabályok. Az új könyvtárak nem kerülnek automatikusan hozzáadásra a kijelölés használatakor.';
	@override String get librariesUnavailable => 'Nincsenek betöltve film- vagy TV-könyvtárak. Csatlakozzon a szerverhez, nyissa meg a Libraries alkalmazást, majd térjen vissza ide a választáshoz.';
	@override String get noLibrariesSelected => 'Nincs kiválasztva könyvtár: ez a gyermek nem fog látni egyetlen címet sem.';
	@override String get animationOnly => 'Csak animáció';
	@override String get animationExplain => 'Csak az Animáció műfajjal megcímkézett címeket jelenítse meg a szerveren. Ez nem helyettesíti a korhatárt: az animáció felnőtteknek is szólhat. A hiányzó műfaji metaadatok el vannak rejtve.';
	@override String get allowUnrated => 'Korhatár nélküli címek engedélyezése';
	@override String get unratedExplain => 'Alapértelmezés szerint ki. Ha engedélyezve van, hiányzó vagy minősítetlen besorolások jelenhetnek meg, ha a könyvtár és az animációs szabályok lehetővé teszik. Alkalmasságuk életkor szerint nem ellenőrizhető. A korhatár feletti ismert besorolások és az el nem ismert besorolások rejtve maradnak.';
	@override String get whoIsWatching => 'Ki figyel?';
	@override String get chooseAdventure => 'A nagy kalandok kis világa.';
	@override String get chooseProfile => 'Válassza ki a helyet. Legyen filmes este.';
	@override String welcome({required Object name}) => 'Szia, ${name}!';
	@override String welcomeOlder({required Object name}) => 'A következő nagyszerű történeted, ${name}.';
	@override String get homeSubtitle => 'Nagy kalandok. Kis felfedezések. Mindent neked.';
	@override String get homeSubtitleOlder => 'Találj új kedvencet. Folytasd ott, ahol abbahagytad.';
	@override String get featured => 'A mai nap nagy kalandja';
	@override String get featuredOlder => 'A reflektorfényben';
	@override String get moreInfo => 'További információ';
	@override String get movies => 'Filmek';
	@override String get shows => 'Műsorok';
	@override String get profiles => 'Profilok';
	@override String get adultBadge => 'Felnőttek';
	@override String get avatar => 'Válaszd ki a karaktered';
	@override String get avatarExplorer => 'Űrkutató';
	@override String get avatarFox => 'Fox';
	@override String get avatarDinosaur => 'Dinoszaurusz';
	@override String get avatarRobot => 'Robot';
	@override String get avatarChildArtist => 'Kis művész';
	@override String get avatarChildSkater => 'Kis korcsolyázó';
	@override String get avatarSunrisePerson => 'Napkelte portréja';
	@override String get avatarOceanPerson => 'Óceán portré';
	@override String get avatarCat => 'Kíváncsi macska';
	@override String get avatarDog => 'Boldog kutya';
	@override String get avatarPanda => 'Panda';
	@override String get avatarOwl => 'Bagoly';
	@override String get avatarBear => 'Medve';
	@override String get continueAdventure => 'Folytasd a kalandot';
	@override String get freshStories => 'Új felfedezésre váró történetek';
	@override String get yourMovies => 'Filmes idők kedvencei';
	@override String get yourShows => 'Még egy epizód';
	@override String get emptyHint => 'Új kalandok jelennek meg itt, ha a szervere engedélyezett korosztályozású címekkel rendelkezik.';
	@override String get title => 'Luroka gyerekeknek';
	@override String get addProfile => 'Gyermekprofil hozzáadása';
	@override String get parentalControls => 'Szülői felügyelet';
	@override String get parentPin => 'Szülői PIN';
	@override String get setParentPin => 'Szülői PIN beállítása';
	@override String get changeParentPin => 'Szülői PIN módosítása';
	@override String get pinExplain => 'Ez a PIN védi a felnőttprofilokat és a szülői felügyeletet ezen az eszközön.';
	@override String get name => 'A gyermek neve';
	@override String get ageGroup => 'Engedélyezett korosztályozás';
	@override String get allAges => 'Minden korosztály · G, TV-Y, TV-G, U';
	@override String get age7 => '7-ig · PG, TV-PG, TV-Y7 is';
	@override String get age12 => '12-ig · 12 és 12A is';
	@override String get age16 => '16-ig · PG-13, TV-14, 15 és 16 is';
	@override String get ratingExplain => 'A korhatár feletti címek és az ismeretlen besorolások el vannak rejtve. Az értékelés nélküli címek el vannak rejtve, hacsak nem engedélyezi őket alább. A besorolatlan epizódok örökölhetik a jóváhagyott sorozatbesorolást. Az értékelések a szerver metaadataitól függenek.';
	@override String get theme => 'Gyerekek megjelenése';
	@override String get themeExplain => 'Használjon színes témát, ha ez a profil aktív.';
	@override String get sharedLogin => 'A meglévő szerverbejelentkezést használja. Plex/Emby a haladás és a megtekintett állapot megosztva marad. A korlátozások és a gyerekprofilok ezen az eszközön vannak tárolva.';
	@override String get hideWatched => 'Gyerekek megtekintésének elrejtése a Nézés folytatása közül';
	@override String get hideExplain => 'Gyermekprofilok által játszott filmek és teljes sorozatok elrejtése ezen az eszközön. Ez nem távolítja el őket a könyvtárából, és nem módosítja a szerver előzményeit.';
	@override String get clearHistory => 'Állítsa vissza a gyerekek megtekintési kizárását';
	@override String get historyReset => 'A gyerekek megtekintési kizárásai visszaállítva';
	@override String get blocked => 'Ez a cím nem érhető el ebben a gyerekprofilban.';
	@override String get switchProfile => 'Profil váltása';
	@override String get manageFromAdult => 'A beállítások kezeléséhez váltson felnőtt profilra.';
	@override String get noConnections => 'Csatlakoztasson egy szervert a felnőtt profilhoz, mielőtt hozzáadna egy gyerekprofilt.';
	@override String get created => 'Gyermekprofil létrehozva';
	@override String get updated => 'A gyerekek profilja frissítve';
	@override String get saveFailed => 'Nem sikerült menteni a szülői felügyeletet. Kérjük, próbálja újra.';
	@override String get kidsBadge => 'Gyerekek';
}

// Path: lurokaDiscovery
class _Translations$lurokaDiscovery$hu extends Translations$lurokaDiscovery$en {
	_Translations$lurokaDiscovery$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Felfedezés';
	@override String get chooseLibraryHint => 'Válasszon könyvtárat a felfedezéshez';
	@override String get chooseCopyHint => 'Több könyvtárban is elérhető. Válassza ki a kívánt példányt.';
	@override String get weeklyMovies => 'Felkapott filmek ezen a héten · TMDb';
	@override String get weeklyShows => 'Felkapott műsorok ezen a héten · TMDb';
	@override String get weeklyLibrary => 'Felkapott a héten · A könyvtáradban';
	@override String get popularLibrary => 'Most népszerű · A könyvtáradban · Cinemeta';
	@override String get publicFeedError => 'A Cinemeta felfedezése nem érhető el. Kérjük, próbálja újra.';
	@override String get oscars => 'Oscar-díj · A legjobb film nyertesei';
	@override String get imdb100 => 'IMDb Top 100 film · 2026. szeptemberi pillanatkép';
	@override String get imdbTv100 => 'IMDb Top 100 bemutató · 2026. szeptemberi pillanatkép';
	@override String get emmyComedy => 'Emmy-díj · Vígjátéksorozat nyertesei · 1971–2026';
	@override String get emmys => 'Emmy-díj · Drámasorozat nyertesei · 1966–2026';
	@override String get bafta => 'BAFTA · A legjobb film díjazottak';
	@override String get cannes => 'Cannes · Arany Pálma-díjasok';
	@override String get awardsNote => 'A díjgyűjtemények között szerepel a legjobb film történetében Oscar-díj, az Emmy-dráma/vígjáték nyertesei, valamint a kibővített BAFTA/Cannes-válogatás. Az ismétlődő nyertes címek egyszer jelennek meg. A tagság díjkategória-előzményeket és Wikidata-tényeket használ. A IMDb A 100 legjobb film/műsor listája megőrzi az mmdju/imdb-top250-api 2026. szeptemberi chart-pillanatfelvételeit. Csak a látható, online könyvtárak egyezései jelennek meg; A gyűjtemény mérete a könyvtár elérhetőségétől függ.';
	@override String get attribution => 'A nyilvános népszerűségi listákat, a metaadatokat és a IMDb értékeléseket a Cinemeta biztosítja; a Népszerű listák nem heti megtekintési grafikonok. Ez a termék a TMDB API kódot használja, de a TMDB nem hagyja jóvá vagy tanúsítja. Az opcionális TMDb heti trendek a TMDb érdeklődését tükrözik, nem pedig a nézettségi adatokat. A pontszámok megtartják a forráscímkéket.';
	@override String get tmdbSettings => 'Felfedezési források';
	@override String get setupDescription => 'A Cinemeta felfedezése azonnal működik fiók nélkül: népszerű filmek és műsorok, IMDb minősítések és díjnyertesek. Opcionálisan csatlakoztassa a TMDb-t a heti trendek megtekintéséhez a API kulcs vagy a API olvasási hozzáférési token használatával a themoviedb.org/settings/api webhelyről. Hitelesítési adatai ezen az eszközön vannak tárolva.';
	@override String get apiKey => 'TMDb API kulcs / olvasási hozzáférési token';
	@override String get connect => 'Csatlakoztassa a TMDb-t';
	@override String get connecting => 'Csatlakozás…';
	@override String get connected => 'TMDb csatlakoztatva · A heti trendek és díjak engedélyezve';
	@override String get builtInKeyNote => 'A Luroka beépített megosztott TMDb kulcsán fut. Adja hozzá a saját ingyenes kulcsát alább a dedikált díjkorlátokhoz és a teljes ellenőrzéshez.';
	@override String get disconnect => 'Csatlakoztassa le a TMDb-t';
	@override String get invalidKey => 'A TMDb nem érvényesíthető. Ellenőrizze a hitelesítő adatait és az internetkapcsolatot.';
	@override String get feedError => 'A TMDb felfedezés nem érhető el. Kérjük, próbálja újra.';
	@override String get allTitles => 'Minden cím';
	@override String get available => 'A könyvtárában';
	@override String get checking => 'Könyvtárak ellenőrzése…';
	@override String get availabilityUnknown => 'Egyes könyvtárakat nem lehetett ellenőrizni. Próbálja meg frissíteni.';
	@override String get noAvailable => 'Az ellenőrzött könyvtárakban nem található egyező cím.';
	@override String get sourceInfo => 'Heti trendek és kiválasztott díjnyertesek · TMDb';
	@override String get configure => 'Felfedezési beállítások';
}

// Path: app
class _Translations$app$hu extends Translations$app$en {
	_Translations$app$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Luroka';
}

// Path: appIcon
class _Translations$appIcon$hu extends Translations$appIcon$en {
	_Translations$appIcon$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'App ikonra';
	@override String get defaultIcon => 'Alapértelmezett';
	@override String get current => 'Jelenlegi ikon';
	@override String get locked => 'Támogatói jutalom';
	@override String get lockedHint => 'Az alternatív ikonok támogatói jutalmat jelentenek.';
	@override String get changeFailed => 'Nem sikerült módosítani az alkalmazás ikonját';
	@override String get launcherHint => 'Az új ikon megjelenik a kezdőképernyőn, miután elhagyta a Luroka-t.';
	@override String get tvLauncherHint => 'Az új szalaghirdetés a Luroka elhagyása után jelenik meg. A Android TV a TV újraindításáig a régit tudja mutatni.';
	@override late final _Translations$appIcon$names$hu names = _Translations$appIcon$names$hu._(_root);
}

// Path: auth
class _Translations$auth$hu extends Translations$auth$en {
	_Translations$auth$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get signInWithPlex => 'Bejelentkezés Plexszel';
	@override String get showQRCode => 'QR-kód megjelenítése';
	@override String get authenticate => 'Hitelesítés';
	@override String get authenticationTimeout => 'A hitelesítés időtúllépés miatt megszakadt. Próbáld újra.';
	@override String get scanQRToSignIn => 'Olvasd be ezt a QR-kódot a bejelentkezéshez';
	@override String get waitingForAuth => 'Várakozás a hitelesítésre...\nJelentkezz be a böngésződben.';
	@override String get useBrowser => 'Böngésző használata';
	@override String get or => 'vagy';
	@override String connectToMediaBrowser({required Object product}) => 'Csatlakozás a(z) ${product} szolgáltatáshoz';
	@override String get quickConnect => 'Quick Connect';
	@override String get useQuickConnect => 'Quick Connect használata';
	@override String get quickConnectInstructions => 'Nyisd meg a Quick Connect-et a Jellyfinben, és add meg ezt a kódot.';
	@override String get quickConnectWaiting => 'Várakozás a jóváhagyásra…';
	@override String get quickConnectCancel => 'Mégse';
	@override String get quickConnectExpired => 'A Quick Connect kód lejárt. Próbáld újra.';
	@override String get localDataRecoveryRequired => 'A Luroka nem tudta biztonságosan helyreállítani a helyi bejelentkezés és a függőben lévő lejátszás adatait. Jelentkezz be újra.';
	@override String get pinCheckRejected => 'A Plex PIN ellenőrzését elutasították';
}

// Path: common
class _Translations$common$hu extends Translations$common$en {
	_Translations$common$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get cancel => 'Mégse';
	@override String get save => 'Mentés';
	@override String get close => 'Bezárás';
	@override String get clear => 'Törlés';
	@override String get reset => 'Visszaállítás';
	@override String get later => 'Később';
	@override String get submit => 'Beküldés';
	@override String get confirm => 'Megerősítés';
	@override String get retry => 'Újra';
	@override String get logout => 'Kijelentkezés';
	@override String get unknown => 'Ismeretlen';
	@override String get refresh => 'Frissítés';
	@override String get yes => 'Igen';
	@override String get no => 'Nem';
	@override String get delete => 'Törlés';
	@override String get edit => 'Szerkesztés';
	@override String get shuffle => 'Véletlenszerű lejátszás';
	@override String get addTo => 'Hozzáadás...';
	@override String get createNew => 'Új létrehozása';
	@override String get connect => 'Csatlakozás';
	@override String get disconnect => 'Kapcsolat bontása';
	@override String get play => 'Lejátszás';
	@override String get pause => 'Szünet';
	@override String get resume => 'Folytatás';
	@override String get error => 'Hiba';
	@override String get search => 'Keresés';
	@override String get home => 'Kezdőlap';
	@override String get back => 'Vissza';
	@override String get settings => 'Beállítások';
	@override String get mute => 'Némítás';
	@override String get ok => 'OK';
	@override String get off => 'Ki';
	@override String get options => 'Lehetőségek';
	@override String seasonNumber({required Object number}) => '${number}. évad';
	@override String episodeNumberTitle({required Object number, required Object title}) => '${number}. epizód - ${title}';
	@override String chapterNumber({required Object number}) => '${number}. fejezet';
	@override String get reconnect => 'Újracsatlakozás';
	@override String get viewAll => 'Összes megtekintése';
	@override String get serversUnreachable => 'A szerverek elérhetetlenek';
	@override String get loading => 'Betöltés...';
	@override String get fullscreen => 'Teljes képernyő';
	@override String get exitFullscreen => 'Kilépés a teljes képernyőből';
	@override late final _Translations$common$ratingSource$hu ratingSource = _Translations$common$ratingSource$hu._(_root);
	@override String get notAvailable => 'N/A';
	@override String get url => 'URL';
	@override String get letterKeys => 'ABC';
	@override late final _Translations$common$mediaKind$hu mediaKind = _Translations$common$mediaKind$hu._(_root);
	@override String get stay => 'Maradj';
	@override String get exitApp => 'Kilépés';
	@override String get exitAppBody => 'Biztosan kilép a Luroka-ból?';
}

// Path: tvHints
class _Translations$tvHints$hu extends Translations$tvHints$en {
	_Translations$tvHints$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get select => 'Válassza ki';
	@override String get browse => 'Tallózás';
	@override String get back => 'Vissza';
}

// Path: screens
class _Translations$screens$hu extends Translations$screens$en {
	_Translations$screens$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get licenses => 'Licencek';
	@override String get switchProfile => 'Profilváltás';
	@override String get subtitleStyling => 'Feliratok stílusa';
	@override String get mpvConfig => 'mpv.conf';
	@override String get logs => 'Naplók';
}

// Path: mediaExtras
class _Translations$mediaExtras$hu extends Translations$mediaExtras$en {
	_Translations$mediaExtras$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get trailers => 'Pótkocsik';
	@override String get featurettes => 'Jellemzők';
	@override String get interviews => 'Interjúk';
	@override String get deletedScenes => 'Törölt jelenetek';
	@override String get behindTheScenes => 'A kulisszák mögött';
	@override String get scenesAndClips => 'Jelenetek és klipek';
	@override String get other => 'Egyéb extrák';
}

// Path: update
class _Translations$update$hu extends Translations$update$en {
	_Translations$update$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get available => 'Frissítés érhető el';
	@override String versionAvailable({required Object version}) => 'A(z) ${version} verzió elérhető';
	@override String currentVersion({required Object version}) => 'Jelenlegi: ${version}';
	@override String get skipVersion => 'Verzió kihagyása';
	@override String get viewRelease => 'Kiadási megjegyzések';
	@override String get latestVersion => 'A legújabb verziót használod';
	@override String get checkFailed => 'Nem sikerült az újabb frissítések ellenőrzése';
}

// Path: supporter
class _Translations$supporter$hu extends Translations$supporter$en {
	_Translations$supporter$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Luroka támogató';
	@override String get intro => 'Egyszeri vásárlás, amely támogatja a Luroka fejlesztését és feloldja a kozmetikai extrákat:';
	@override String get presetThemes => 'Előre beállított témák';
	@override String get presetThemesDescription => 'Borostyán, gleccser, erdő, szilva és papír';
	@override String get customTheme => 'Egyedi téma';
	@override String get customThemeDescription => 'Válassz minden színt magad';
	@override String get appIcons => 'Alkalmazásikonok';
	@override String get appIconsDescription => 'Válasszon egy másik Luroka ikont';
	@override String buy({required Object price}) => 'Vásároljon ${price}-ért';
	@override String get loadingPrice => 'Ár betöltése...';
	@override String get restore => 'Vásárlások visszaállítása';
	@override String get pending => 'Vásárlása fizetésre vagy jóváhagyásra vár. Az extrák azonnal feloldódnak, amint az üzlet befejezi.';
	@override String get thankYouTitle => 'Köszönjük a Luroka támogatását';
	@override String get thankYouBody => 'Támogatói extráid feloldva.';
	@override String get tileSubtitle => 'Egyszeri vásárlással feloldhatja a témákat és az alkalmazásikonokat';
	@override String get tileSubtitleThemesOnly => 'Egyszeri vásárlással feloldhatja a témákat';
	@override String get tileUnlocked => 'Köszönjük a támogatást';
	@override late final _Translations$supporter$errors$hu errors = _Translations$supporter$errors$hu._(_root);
}

// Path: settings
class _Translations$settings$hu extends Translations$settings$en {
	_Translations$settings$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Beállítások';
	@override String get supportDeveloper => 'Luroka támogatása';
	@override String get supportDeveloperDescription => 'A fejlesztés támogatása Liberapay-en keresztül';
	@override String get language => 'Nyelv';
	@override String get theme => 'Téma';
	@override String get appearance => 'Megjelenés';
	@override String get videoPlayback => 'Videólejátszás';
	@override String get videoPlaybackDescription => 'Lejátszási viselkedés beállítása';
	@override String get advanced => 'Haladó';
	@override String get episodePosterMode => 'Epizódborító stílusa';
	@override String get seriesPoster => 'Sorozatborító';
	@override String get seasonPoster => 'Évadborító';
	@override String get episodeThumbnail => 'Bélyegkép';
	@override String get homeHeroSize => 'Körhinta mérete';
	@override String get homeHeroSizeSmall => 'Kicsi';
	@override String get homeHeroSizeMedium => 'Közepes';
	@override String get homeHeroSizeLarge => 'Nagy';
	@override String get secondsLabel => 'Másodperc';
	@override String get minutesLabel => 'Perc';
	@override String get secondsShort => 'mp';
	@override String get minutesShort => 'p';
	@override String durationHint({required Object min, required Object max}) => 'Add meg az időtartamot (${min}-${max})';
	@override String get systemTheme => 'Rendszer';
	@override String get lightTheme => 'Világos';
	@override String get darkTheme => 'Sötét';
	@override String get oledTheme => 'OLED';
	@override String get libraryDensity => 'Könyvtársűrűség';
	@override String get displayScale => 'Kijelző méretezése';
	@override String get compact => 'Kompakt';
	@override String get comfortable => 'Kényelmes';
	@override String get gridSpacing => 'Rácstávolság';
	@override String get gridSpacingTight => 'Sűrű';
	@override String get gridSpacingNormal => 'Normál';
	@override String get gridSpacingSpacious => 'Tágas';
	@override String get tvCornerSpotlightBackdrop => 'Sarokban megjelenő kiemelt háttérkép';
	@override String get tvCornerSpotlightBackdropDescription => 'A kiemelt háttérkép megjelenítése a jobb felső sarokban a teljes képernyő helyett';
	@override String get viewMode => 'Nézetmód';
	@override String get gridView => 'Rács';
	@override String get listView => 'Lista';
	@override String get continueWatchingAction => 'A „Folytatás” művelete';
	@override String get continueWatchingPlay => 'Lejátszás';
	@override String get continueWatchingDetails => 'Részletek megnyitása';
	@override String get episodeAction => 'Az epizódkártya művelete';
	@override String get episodePlay => 'Lejátszás';
	@override String get episodeDetails => 'Részletek megnyitása';
	@override String get useGlobalHubs => 'Kezdőlap elrendezés használata';
	@override String get useGlobalHubsDescription => 'Egyesített kezdőlapi blokkok megjelenítése. Egyébként a könyvtári ajánlások jelennek meg.';
	@override String get showServerNameOnHubs => 'Szervernév megjelenítése a blokkoknál';
	@override String get showServerNameOnHubsDescription => 'Mindig jelenjen meg a szerver neve a blokkok címében.';
	@override String get groupLibrariesByServer => 'Könyvtárak csoportosítása szerver szerint';
	@override String get groupLibrariesByServerDescription => 'Az oldalsáv könyvtárainak csoportosítása a médiaszerverek alatt.';
	@override String get alwaysKeepSidebarOpen => 'Oldalsáv mindig nyitva';
	@override String get alwaysKeepSidebarOpenDescription => 'Az oldalsáv kibontva marad, a tartalom területe igazodik hozzá';
	@override String get showUnwatchedCount => 'Nem látott elemek számának megjelenítése';
	@override String get showUnwatchedCountDescription => 'Megjeleníti a még nem látott epizódok számát a sorozatoknál és évadoknál';
	@override String get showWatchedIndicators => 'Megtekintésjelölők megjelenítése';
	@override String get showWatchedIndicatorsDescription => 'Pipa megjelenítése a megtekintett filmeken, sorozatokon és epizódokon';
	@override String get showEpisodeNumberOnCards => 'Epizódszám megjelenítése a kártyákon';
	@override String get showEpisodeNumberOnCardsDescription => 'Megjeleníti az évad- és epizódszámot az epizódkártyákon';
	@override String get showSeasonPostersOnTabs => 'Évadborítók megjelenítése a füleken';
	@override String get showSeasonPostersOnTabsDescription => 'Megjeleníti az egyes évadok borítóját a fülük felett';
	@override String get tvFullCardLayout => 'Teljes TV-kártyák';
	@override String get tvFullCardLayoutDescription => 'Csak képet tartalmazó TV-kártyák használata, rájuk helyezett színésznevekkel';
	@override String get focusGlow => 'Kijelölési ragyogás';
	@override String get focusGlowDescription => 'Finom ragyogás rajzolása a kijelölt kártya köré';
	@override String get visualEffects => 'Vizuális effektek';
	@override String get visualEffectsAuto => 'Automatikus';
	@override String get visualEffectsAutoDescription => 'Effektek automatikus csökkentése alacsony teljesítményű eszközökön';
	@override String get visualEffectsFull => 'Teljes';
	@override String get visualEffectsReduced => 'Csökkentett';
	@override String get visualEffectsReducedDescription => 'Kevesebb animáció és alacsonyabb felbontású képek';
	@override String get hideSpoilers => 'Spoilerek elrejtése a nem látott epizódoknál';
	@override String get hideSpoilersDescription => 'Bélyegképek és leírások elhomályosítása a még meg nem nézett epizódoknál';
	@override String get playerBackend => 'Lejátszómotor';
	@override String get playerBackendDescription => 'A mpv több formátumot játszik le, és több funkciót tesz lehetővé – ajánlott. A ExoPlayer segít, ha a lejátszás sikertelen vagy akadozik ezen az eszközön.';
	@override String get exoPlayer => 'ExoPlayer';
	@override String get mpv => 'mpv';
	@override String get hardwareDecoding => 'Hardveres dekódolás';
	@override String get hardwareDecodingDescription => 'Hardveres gyorsítás használata, ha elérhető';
	@override String get playbackBuffer => 'Lejátszási puffer';
	@override String get playbackBufferAuto => 'Automatikus (ajánlott)';
	@override String get playbackBufferLarge => 'Nagy';
	@override String get playbackBufferExtraLarge => 'Extra nagy';
	@override String get playbackBufferDescription => 'Több puffert használ instabil kapcsolatok ellen. A pufferméret is korlátozza.';
	@override String get defaultQualityTitle => 'Alapértelmezett minőség';
	@override String get streamingQualityOriginalHint => 'Pontosan a tárolt fájl lejátszása – a legjobb minőség, a legnagyobb sávszélességet használja';
	@override String get cellularQualityTitle => 'Alapértelmezett minőség mobilhálózaton';
	@override String get cellularQualitySameAsDefault => 'Ugyanaz, mint az alapértelmezett minőség';
	@override String get directPlayCoveredQuality => 'Kisebb videók lejátszása eredeti minőségben';
	@override String get directPlayCoveredQualityDescription => 'A minőségi korláton belüli videók közvetlen lejátszása átkódolás helyett';
	@override String get videoCodecs => 'Videokodekek';
	@override String get videoCodecsDescription => 'A nem bejelölt kodekeket a szerver átkódolja';
	@override String get videoCodecsAlwaysAccepted => 'Mindig elfogadva';
	@override String get musicQualityTitle => 'Zene minősége';
	@override String get subtitleStyling => 'Feliratok stílusa';
	@override String get subtitleStylingDescription => 'Feliratok megjelenésének testreszabása';
	@override String get smallSkipDuration => 'Kis ugrás időtartama';
	@override String get largeSkipDuration => 'Nagy ugrás időtartama';
	@override String get rewindOnResume => 'Visszatekerés folytatáskor';
	@override String secondsUnit({required Object seconds}) => '${seconds} másodperc';
	@override String get defaultSleepTimer => 'Alapértelmezett elalvási időzítő';
	@override String minutesUnit({required Object minutes}) => '${minutes} perc';
	@override String get rememberTrackSelections => 'Sávválasztások megjegyzése sorozatonként/filmenként';
	@override String get rememberTrackSelectionsDescription => 'Hang- és feliratválasztások megjegyzése címenként';
	@override String get rememberTrackSelectionsBackendRule => 'A Plex minden választást fájlonként a szerveren ment; a Jellyfin a fiók „Választások megjegyzése” funkcióját is bekapcsolja; az Emby nem támogatott';
	@override String get followServerTrackSelections => 'A szerver epizódonkénti sávválasztásának használata';
	@override String get followServerTrackSelectionsDescription => 'Epizódváltáskor a szerveren kiválasztott hang és felirat lép életbe az aktuális választás átvitele helyett';
	@override String get resumeMusicOnLaunch => 'Zenei munkamenet megjegyzése';
	@override String get resumeMusicOnLaunchDescription => 'Az alkalmazás indításakor az utolsó szám szüneteltetve nyílik meg ott, ahol abbamaradt';
	@override String get showChapterMarkersOnTimeline => 'Fejezetjelölők megjelenítése az idősávon';
	@override String get showChapterMarkersOnTimelineDescription => 'Az idősáv felosztása a fejezetek határainál';
	@override String get specialsOrdering => 'Különkiadások epizódsorrendben';
	@override String get specialsOrderingDescription => 'A különkiadások helye a sorozat lejátszási sorrendjében';
	@override String get specialsOrderingServer => 'Szerver szerinti sorrend';
	@override String get specialsOrderingAirDate => 'Adás dátuma szerint közbeszúrva';
	@override String get specialsOrderingLast => 'A normál évadok után';
	@override String get clickVideoTogglesPlayback => 'Kattintás a videóra a lejátszás/szünet váltásához';
	@override String get clickVideoTogglesPlaybackDescription => 'A videóra kattintva vált a lejátszás/szünet, a vezérlők megjelenítése helyett.';
	@override String get videoPlayerControls => 'Videólejátszó vezérlői';
	@override String get keyboardShortcuts => 'Billentyűparancsok';
	@override String get keyboardShortcutsDescription => 'Billentyűparancsok testreszabása';
	@override String get videoPlayerNavigation => 'Videólejátszó-navigáció';
	@override String get videoPlayerNavigationDescription => 'A nyílbillentyűk használata a videólejátszó vezérlői közötti navigáláshoz';
	@override String get watchTogetherRelay => 'Watch Together-relé';
	@override String get watchTogetherRelayDescription => 'Nyilvános Open Watch Party közvetítések, hacsak nem állítja be a sajátját';
	@override String get watchTogetherRelayHint => 'https://my-relay.example.com';
	@override String get watchTogetherRelayInvalid => 'Adj meg egy érvényes HTTP- vagy HTTPS-alapú relészerver-URL-t.';
	@override String get crashReporting => 'Összeomlási jelentések';
	@override String get crashReportingDescription => 'Összeomlási jelentések küldése az alkalmazás fejlesztésének elősegítéséhez';
	@override String get debugLogging => 'Hibakeresési naplózás';
	@override String get debugLoggingDescription => 'Részletes naplózás engedélyezése a hibaelhárításhoz';
	@override String get viewLogs => 'Naplók megtekintése';
	@override String get viewLogsDescription => 'Alkalmazásnaplók megtekintése';
	@override String get clearImageCache => 'Képgyorsítótár törlése';
	@override String get clearImageCacheDescription => 'Törli a gyorsítótárazott borítókat és miniatűröket. A képek lassabban tölthetők be, amíg újra le nem töltődnek.';
	@override String get clearImageCacheSuccess => 'A képgyorsítótár sikeresen törölve';
	@override String get resetSettings => 'Beállítások visszaállítása';
	@override String get resetSettingsDescription => 'Az alapértelmezett beállítások visszaállítása. Ez a művelet nem vonható vissza.';
	@override String get resetSettingsSuccess => 'A beállítások sikeresen visszaállítva';
	@override String get backup => 'Biztonsági mentés';
	@override String get exportSettings => 'Beállítások exportálása';
	@override String get exportSettingsDescription => 'Beállítások mentése fájlba';
	@override String get exportSettingsSuccess => 'Beállítások exportálva';
	@override String get importSettings => 'Beállítások importálása';
	@override String get importSettingsDescription => 'Beállítások visszaállítása fájlból';
	@override String get importSettingsConfirm => 'Ez felülírja a jelenlegi beállításaidat. Folytatod?';
	@override String get importSettingsSuccess => 'Beállítások importálva';
	@override String get importSettingsInvalidFile => 'Ez a fájl nem érvényes Luroka-beállításexport';
	@override String get importSettingsNoUser => 'Jelentkezz be a beállítások importálása előtt';
	@override String get shortcutsReset => 'A billentyűparancsok visszaálltak az alapértelmezettekre';
	@override String get resetShortcutsConfirm => 'Ez lecseréli az egyéni parancsikonokat az alapértelmezettekre. Folytatja?';
	@override String get about => 'Névjegy';
	@override String get aboutDescription => 'Alkalmazásadatok és licencek';
	@override String get updates => 'Frissítések';
	@override String get updateAvailable => 'Frissítés érhető el';
	@override String get checkForUpdates => 'Frissítések keresése';
	@override String get autoCheckUpdatesOnStartup => 'Frissítések automatikus keresése indításkor';
	@override String get autoCheckUpdatesOnStartupDescription => 'Értesítés küldése indításkor, ha új frissítés érhető el';
	@override String get validationErrorEnterNumber => 'Adj meg egy érvényes számot';
	@override String validationErrorDuration({required Object min, required Object max, required Object unit}) => 'Az időtartamnak ${min} és ${max} ${unit} között kell lennie';
	@override String shortcutAlreadyAssigned({required Object action}) => 'A billentyűparancs már hozzá van rendelve a következőhöz: ${action}';
	@override String shortcutUpdated({required Object action}) => 'Billentyűparancs frissítve a következőhöz: ${action}';
	@override String get saveFailed => 'Nem sikerült menteni a módosításokat. Próbáld újra.';
	@override String get autoPlayAndSkip => 'Automatikus lejátszás és átugrás';
	@override String get autoPlayNextEpisode => 'Következő epizód automatikus lejátszása';
	@override String get autoPlayNextEpisodeDescription => 'A következő epizód automatikus elindítása, amikor az aktuális véget ér';
	@override String get shuffleStartsFromBeginning => 'Véletlenszerű lejátszás az elejétől';
	@override String get shuffleStartsFromBeginningDescription => 'Minden epizód az elejétől indul véletlenszerű lejátszáskor a folytatás helyett';
	@override String get playNextCountdown => 'Visszaszámlálás a következő epizódig';
	@override String get playNextCountdownImmediate => 'Azonnali lejátszás';
	@override String get skipIntroMode => 'Intró átugrása';
	@override String get skipIntroModeOffDescription => 'Az intrók normálisan lejátszódnak, átugró gomb nélkül';
	@override String get skipIntroModeButtonDescription => 'Átugró gomb megjelenítése az intró kezdetekor';
	@override String get skipIntroModeAutoDescription => 'Az intrók automatikus átugrása az alábbi késleltetés után';
	@override String get skipCreditsMode => 'Stáblista átugrása';
	@override String get skipCreditsModeOffDescription => 'A stáblista normálisan lejátszódik, átugró gomb nélkül';
	@override String get skipCreditsModeButtonDescription => 'Átugró gomb megjelenítése a stáblista kezdetekor';
	@override String get skipCreditsModeAutoDescription => 'A stáblista automatikus átugrása és a következő epizód lejátszása';
	@override String get skipMarkerModeOff => 'Ki';
	@override String get skipMarkerModeButton => 'Gomb megjelenítése';
	@override String get skipMarkerModeAuto => 'Automatikus';
	@override String get forceSkipMarkerFallback => 'Tartalék jelölők kényszerítése';
	@override String get forceSkipMarkerFallbackDescription => 'Fejezetcím-minták használata akkor is, ha a Plex rendelkezik jelölőkkel';
	@override String get autoSkipDelay => 'Automatikus átugrás késleltetése';
	@override String autoSkipDelayDescription({required Object seconds}) => 'Várakozás ${seconds} másodpercig az automatikus átugrás előtt';
	@override String get introPattern => 'Intrójelölő mintája';
	@override String get introPatternDescription => 'Reguláris kifejezés az intrójelölők illesztéséhez a fejezetcímekben';
	@override String get creditsPattern => 'Stáblistajelölő mintája';
	@override String get creditsPatternDescription => 'Reguláris kifejezés a stáblistajelölők illesztéséhez a fejezetcímekben';
	@override String get invalidRegex => 'Érvénytelen reguláris kifejezés';
	@override String get regex => 'Reguláris kifejezés';
	@override String get downloads => 'Letöltések';
	@override String get downloadLocationDescription => 'Válaszd ki a letöltött tartalom tárolási helyét';
	@override String get downloadLocationDefault => 'Alapértelmezett (alkalmazástárhely)';
	@override String get downloadLocationCustom => 'Egyéni hely';
	@override String get selectFolder => 'Mappa kiválasztása';
	@override String get resetToDefault => 'Visszaállítás alapértelmezettre';
	@override String currentPath({required Object path}) => 'Jelenlegi: ${path}';
	@override String get downloadLocationChanged => 'A letöltési hely megváltozott';
	@override String get downloadLocationReset => 'A letöltési hely visszaállt az alapértelmezettre';
	@override String get downloadLocationInvalid => 'A kiválasztott mappa nem írható';
	@override String get downloadLocationPickerUnavailable => 'A mappaválasztás ezen az eszközön nem érhető el';
	@override String get downloadOnWifiOnly => 'Letöltés csak Wi-Fi-n';
	@override String get downloadOnWifiOnlyDescription => 'Letöltések megakadályozása mobiladat-használat esetén';
	@override String get downloadWifiScope => 'Az eszköz összes profiljára és letöltésére vonatkozik.';
	@override String get autoRemoveWatchedDownloads => 'Megnézett letöltések automatikus eltávolítása';
	@override String get autoRemoveWatchedDownloadsDescription => 'A megnézett letöltések automatikus törlése';
	@override String get cellularDownloadBlocked => 'A letöltések mobilhálózaton le vannak tiltva. Használj Wi-Fi-t, vagy módosítsd a beállítást.';
	@override String get maxVolume => 'Maximális hangerő';
	@override String get maxVolumeDescription => 'A hangerő 100% fölé emelésének engedélyezése halk tartalmak esetén';
	@override String maxVolumePercent({required Object percent}) => '${percent}%';
	@override String get discordRichPresence => 'Discord-aktivitás';
	@override String get discordRichPresenceDescription => 'Megjeleníti a Discordon, hogy éppen mit nézel';
	@override String get services => 'Szolgáltatások';
	@override String get servicesDescription => 'Trakt, MyAnimeList, Seerr és egyéb szolgáltatások csatlakoztatása';
	@override String get manageLibrariesDescription => 'Könyvtárak sorrendjének módosítása és elrejtése';
	@override String get companionRemoteServer => 'Kísérőtávirányító szervere';
	@override String get companionRemoteServerDescription => 'Lehetővé teszi, hogy a hálózaton lévő mobileszközökről vezéreld az alkalmazást';
	@override String get companionRemoteServerStartFailed => 'Nem sikerült elindítani a kísérőtávirányító szerverét';
	@override String get companionRemoteServerStopFailed => 'Nem sikerült leállítani a kísérőtávirányító szerverét';
	@override String get autoPip => 'Automatikus kép a képben (PiP)';
	@override String get autoPipDescription => 'Lejátszás közben az alkalmazás elhagyásakor automatikusan kép a képben módra vált';
	@override String get matchContentFrameRate => 'Képkockasebesség illesztése a tartalomhoz';
	@override String get matchContentFrameRateDescription => 'A kijelző frissítési frekvenciájának igazítása a videóhoz';
	@override String get matchContentResolution => 'Igazítás a tartalom felbontásához';
	@override String get matchContentResolutionDescription => 'A kijelzőt a videó natív felbontására váltja, hogy a felskálázást a tévé végezze. Lejátszás közben a menük és a feliratok is felskálázódnak';
	@override String get matchRefreshRate => 'Frissítési frekvencia illesztése';
	@override String get matchRefreshRateDescription => 'A kijelző frissítési frekvenciájának igazítása teljes képernyőn';
	@override String get matchDynamicRange => 'Dinamikatartomány illesztése';
	@override String get matchDynamicRangeDescription => 'HDR bekapcsolása HDR-tartalmak esetén, majd visszaváltás SDR-re';
	@override String get displaySwitchDelay => 'Kijelzőváltási késleltetés';
	@override String get tunneledPlayback => 'Alagutas lejátszás';
	@override String get tunneledPlaybackDescription => 'Videóalagút használata. Tiltsd le, ha HDR-lejátszáskor fekete a kép vagy akadozik a mozgás.';
	@override String get audioPassthrough => 'Hangtovábbítás (passthrough)';
	@override String get audioPassthroughDescription => 'Dolby/DTS-hang továbbítása az erősítőre vagy a TV-re újrakódolás nélkül, a térhangzás megőrzésével. Kapcsold ki, ha nincs hang.';
	@override String get audioPassthroughDescriptionApple => 'Az Apple natív Dolby-dekóderének használata Dolby Digital Plushoz, az Atmost is beleértve. A DTS és a TrueHD továbbra is többcsatornás PCM-ként szól. Kapcsold ki, ha nincs hang.';
	@override String get audioPassthroughDescriptionAppleSpatial => 'Használja az Apple natív Dolby dekóderét a Dolby Digital Plushoz, beleértve az Atmost is. iOS, iPadOS és tvOS 26 vagy újabb rendszeren a TrueHD Atmos és a DTS:X térbeli hangként játszik le. Más DTS és TrueHD műsorszámok többcsatornás PCM-ként játszhatók le. Kapcsolja ki, ha nincs hangja.';
	@override String get audioPassthroughOverriddenByNormalization => 'Ki, amíg a hangerőnormalizálás be van kapcsolva';
	@override String get audioChannelLimit => 'Audio csatornák';
	@override String get audioChannelLimitDescription => 'Keverje össze a dekódolt hangot olyan hangszórókhoz, fejhallgatókhoz vagy HDMI beállításokhoz, amelyek nem tudnak minden csatornát lejátszani';
	@override String get audioChannelLimitOriginal => 'Eredeti';
	@override String get audioChannelLimitOriginalDescription => 'Játssz le minden csatornát a számban';
	@override String get audioChannelLimitSurround51 => '5.1-ig';
	@override String get audioChannelLimitSurround51Description => 'Keverje össze a 7.1-et és az 5.1-et azoknál a tévéknél és vevőkészülékeknél, amelyek csak 5,1 PCM-et vesznek igénybe. Az áthaladás nem érinti.';
	@override String get audioChannelLimitStereo => 'Sztereó';
	@override String get audioChannelLimitStereoDescription => 'Keverjen le két csatornára sztereó hangszórókhoz vagy fejhallgatókhoz. Kikapcsolja az áthaladást.';
	@override String get downmixCenterBoost => 'Középső csatorna kiemelése';
	@override String downmixCenterBoostValue({required Object db}) => '${db} dB';
	@override String get downmixCenterBoostLabel => 'Kiemelés (dB)';
	@override String get downmixCenterBoostShort => 'dB';
	@override String get audioDownmixNormalize => 'Hangerő normalizálása lekeveréskor';
	@override String get audioDownmixNormalizeDescription => 'A keverés szintjének csökkentése a torzítás elkerülésére. Kapcsold ki az eredeti hangerő megőrzéséhez (a hangos jelenetek torzíthatnak).';
	@override String get dvConversionMode => 'Dolby Vision-átalakítás';
	@override String get dvConversionModeDescription => 'Válaszd ki, hogyan legyenek kezelve a Dolby Vision Profile 7 fájlok.';
	@override String get dvConversionAuto => 'Automatikus';
	@override String get dvConversionNative => 'Natív / letiltva';
	@override String get dvConversionDv81 => 'P7 → P8.1';
	@override String get dvConversionHevcStrip => 'P7 → HEVC';
	@override String get dvConversionAutoDescription => 'Az eszköz képességeinek felismerése és szükség esetén a szokásos tartalék megoldás használata';
	@override String get dvConversionNativeDescription => 'A natív DV7 kényszerítése és a DV-átalakítási újrapróbálkozás letiltása';
	@override String get dvConversionDv81Description => 'A közvetlen RPU-átalakítás kényszerítése Dolby Vision Profile 8.1-re';
	@override String get dvConversionHevcStripDescription => 'A Dolby Vision RPU/EL-rétegek eltávolítása és egyszerű HEVC-ként való megjelenítés';
	@override String get disableDolbyVision => 'Dolby Vision letiltása';
	@override String get disableDolbyVisionDescription => 'A Dolby Vision helyett a fájl HDR10 vagy HLG rétegének lejátszása, ha van ilyen';
	@override String get hdrSdrConversion => 'HDR–SDR átalakítás';
	@override String get hdrSdrConversionDescription => 'Válaszd ki, mi alakítsa át a HDR-videót, ha a kijelző nem tud HDR-t megjeleníteni.';
	@override String get hdrSdrConversionAuto => 'Automatikus';
	@override String get hdrSdrConversionAutoDescription => 'Eszköz Android 9-től, lejátszó a régebbi verziókon';
	@override String get hdrSdrConversionDevice => 'Eszköz';
	@override String get hdrSdrConversionDeviceDescription => 'Az eszköz videohardvere alakítja át. A leggyorsabb, de a színek az eszköztől függnek';
	@override String get hdrSdrConversionPlayer => 'Lejátszó';
	@override String get hdrSdrConversionPlayerDescription => 'A lejátszó alakítja át. Egységes színek, de a 4K akadozhat a gyengébb TV-boxokon';
	@override String get deinterlace => 'Deinterlacing';
	@override String get deinterlaceDescription => 'Fésűfog-műtermékek eltávolítása a váltott soros videóból (csak mpv lejátszóval)';
	@override String get deinterlaceOff => 'Le';
	@override String get deinterlaceOffDescription => 'A váltottsoros videó megjelenítése dekódolt állapotban';
	@override String get deinterlaceVideo => 'Videó';
	@override String get deinterlaceVideoDescription => 'Minden mezőt teljes képkockává alakítson. TV-hez, például sporthoz, hírekhez és koncertekhez készített videókhoz';
	@override String get deinterlaceFilm => 'Film';
	@override String get deinterlaceFilmDescription => 'Állítsa vissza a filmek és animációk eredeti képkockáit 29,97 képkocka/mp-re telecinezve, ami általános az NTSC DVD-ken. A TV dadogására készült videó. Az élő TV videót használ';
	@override String get requireProfileSelectionOnOpen => 'Profil kérése az alkalmazás megnyitásakor';
	@override String get requireProfileSelectionOnOpenDescription => 'Profilválasztó megjelenítése minden alkalommal, amikor az alkalmazást megnyitod';
	@override String get forceTvMode => 'TV-mód kényszerítése';
	@override String get forceTvModeKeepTitle => 'Megtartja a TV elrendezését?';
	@override String forceTvModeKeepBody({required Object seconds}) => 'A TV elrendezését távirányítókhoz tervezték. Visszatérés a normál elrendezéshez a ${seconds} s.';
	@override String get forceTvModeKeepConfirm => 'Tartsa meg a TV elrendezését';
	@override String get forceTvModeReverted => 'A TV elrendezése visszaállítva';
	@override String get forceTvModeDescription => 'TV-elrendezés kényszerítése az automatikus felismeréssel nem rendelkező eszközökön. Újraindítást igényel.';
	@override String get startInFullscreen => 'Indítás teljes képernyőn';
	@override String get startInFullscreenDescription => 'A Luroka megnyitása teljes képernyős módban indításkor';
	@override String get exitFullscreenOnPlayerClose => 'Kilépés a teljes képernyőből a lejátszó bezárásakor';
	@override String get exitFullscreenOnPlayerCloseDescription => 'Automatikus kilépés a teljes képernyőből a videólejátszó bezárásakor';
	@override String get autoHidePerformanceOverlay => 'Teljesítményadatok automatikus elrejtése';
	@override String get autoHidePerformanceOverlayDescription => 'A teljesítményadatok elhalványítása a lejátszásvezérlőkkel együtt';
	@override String get showNavBarLabels => 'Navigációs sáv címkéinek megjelenítése';
	@override String get showNavBarLabelsDescription => 'Szöveges címkék megjelenítése a navigációs sáv ikonjai alatt';
	@override String get startupSection => 'Indítási oldal';
	@override String get showExploreTab => 'Felfedezés lap megjelenítése';
	@override String get showExploreTabDescription => 'A Plex Discover és a csatlakoztatott követők tartalmait megjelenítő Felfedezés lap megjelenítése';
	@override String get liveTvDefaultFavorites => 'Kedvenc csatornák alapértelmezés szerint';
	@override String get liveTvDefaultFavoritesDescription => 'Csak a kedvenc csatornák megjelenítése az Élő TV megnyitásakor';
	@override String get general => 'Általános';
	@override String get generalDescription => 'Nyelv, indítás és ablakviselkedés';
	@override String get languageAndRegion => 'Nyelv és régió';
	@override String get startup => 'Indítás';
	@override String get display => 'Kijelző';
	@override String get libraryAndCards => 'Könyvtár és kártyák';
	@override String get homeScreen => 'Kezdőképernyő';
	@override String get navigation => 'Navigáció';
	@override String get window => 'Ablak';
	@override String get liveTv => 'Élő TV';
	@override String get player => 'Lejátszó';
	@override String get videoAndDisplay => 'Videó és kijelző';
	@override String get audio => 'Hang';
	@override String get quality => 'Minőség';
	@override String get subtitles => 'Feliratok';
	@override String get seekAndTiming => 'Tekerés és időzítés';
	@override String get behavior => 'Viselkedés';
	@override String get gestures => 'Mozdulatok';
	@override String get gestureBrightnessSwipe => 'Fényerő-húzás';
	@override String get gestureBrightnessSwipeDescription => 'Húzd felfelé vagy lefelé a bal szélén a fényerő beállításához';
	@override String get gestureVolumeSwipe => 'Hangerő-húzás';
	@override String get gestureVolumeSwipeDescription => 'Húzd felfelé vagy lefelé a jobb szélén a hangerő beállításához';
	@override String get gesturePinchToZoom => 'Csípés a nagyításhoz';
	@override String get gesturePinchToZoomDescription => 'Csípj a videóra a nagyításhoz vagy kicsinyítéshez';
	@override String get rememberBrightnessLevel => 'Fényerőszint megjegyzése';
	@override String get rememberBrightnessLevelDescription => 'A lejátszás az utolsó húzással beállított fényerővel indul';
	@override String get controls => 'Vezérlők';
	@override String get rememberPlayerChanges => 'Lejátszó módosításainak megjegyzése';
	@override String get rememberPlayerChangesDescription => 'A lejátszás közben végzett módosítások mentési és újbóli alkalmazási helye';
	@override String get scopePlaybackSpeed => 'Lejátszási sebesség';
	@override String get scopeShaderPreset => 'Shader-előbeállítás';
	@override String get scopeAspectRatio => 'Képarány';
	@override String get scopeSyncOffsets => 'Hang- és feliratszinkronizálás';
	@override String get playerScopeOff => 'Ne mentse';
	@override String get playerScopeGlobal => 'Mindenhol';
	@override String get playerScopeLibrary => 'Könyvtáronként';
	@override String get playerScopeTitle => 'Sorozatonként vagy filmenként';
	@override String get exportDialogTitle => 'Luroka-beállítások exportálása';
	@override String get velvetHourTheme => 'Bársony óra';
}

// Path: themeEditor
class _Translations$themeEditor$hu extends Translations$themeEditor$en {
	_Translations$themeEditor$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get builtIn => 'Beépített';
	@override String get presets => 'Előbeállítások';
	@override String get custom => 'Egyedi';
	@override String get customEmpty => 'Még nincs létrehozva';
	@override String get editCustom => 'Egyéni téma szerkesztése';
	@override String get editCustomDescription => 'Válassz minden színt magad';
	@override String get locked => 'Oldja fel a támogatóval';
	@override String get savedLocked => 'Mentve – feloldja a Támogatóval';
	@override String get title => 'Egyedi téma';
	@override String get startFrom => 'Kezdje innen';
	@override String get startFromDescription => 'Másolja az összes színt egy másik témából';
	@override String get colors => 'Színek';
	@override String get preview => 'Előnézet';
	@override late final _Translations$themeEditor$slots$hu slots = _Translations$themeEditor$slots$hu._(_root);
	@override String get opacity => 'Átlátszatlanság';
	@override String get hexHint => '#RRGGBB vagy #ARRGGBB';
	@override String get fromOtherThemes => 'Más témákból';
	@override String swatchLabel({required Object theme, required Object color}) => '${theme} ${color}';
	@override late final _Translations$themeEditor$contrast$hu contrast = _Translations$themeEditor$contrast$hu._(_root);
	@override String lowContrast({required Object pair, required Object ratio, required Object minimum}) => '${pair}: ${ratio}:1, az ajánlott ${minimum}:1 alatt';
	@override String get discardTitle => 'Elveti a változtatásokat?';
	@override String get discardMessage => 'A nem mentett színmódosítások elvesznek.';
	@override String get discard => 'Eldobni';
	@override String previewCardTitle({required Object number}) => '${number} epizód';
	@override String previewCardSubtitle({required Object minutes}) => '${minutes} perc van hátra';
	@override String get previewSwitch => 'Automatikus lejátszás';
	@override String get previewMutedText => 'A másodlagos szöveg így hangzik';
}

// Path: seriesBrowser
class _Translations$seriesBrowser$hu extends Translations$seriesBrowser$en {
	_Translations$seriesBrowser$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get oneEpisode => '1 epizód';
	@override String watchedCount({required Object count}) => '${count} nézte';
	@override String episodeCount({required Object count}) => '${count} epizódok';
	@override String episodesFor({required Object season}) => '${season} · Epizódok';
	@override String get enterHint => 'Választás: nyílt évad · ↓: epizódok';
}

// Path: titlePage
class _Translations$titlePage$hu extends Translations$titlePage$en {
	_Translations$titlePage$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get genre => 'Műfaj';
	@override String remaining({required Object time}) => '${time} maradt';
	@override String continueEpisode({required Object season, required Object episode}) => 'Folytatás S${season} E${episode}';
	@override String get watchlist => 'Figyelőlista';
	@override String get more => 'Többet';
}

// Path: tvMenus
class _Translations$tvMenus$hu extends Translations$tvMenus$en {
	_Translations$tvMenus$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get appearanceDescription => 'Téma, képernyő margók és poszterek';
}

// Path: lurokaPlayer
class _Translations$lurokaPlayer$hu extends Translations$lurokaPlayer$en {
	_Translations$lurokaPlayer$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'A lejátszó beállításai';
	@override String get watch => 'Nézze meg';
	@override String get watchDescription => 'Állítsd be a tempót, lépj le, és döntsd el, mi legyen ezután.';
	@override String get picture => 'Képbeállítások';
	@override String get pictureDescription => 'Zoom, HDR és videófeldolgozás';
	@override String get sound => 'Hang és feliratok';
	@override String get audioSettings => 'Hangbeállítások';
	@override String get soundDescription => 'Időzítés, hangerő és hangkimenet';
	@override String get chooseTracks => 'Válasszon nyelveket és feliratsávokat';
	@override String get tools => 'Haladó';
	@override String get toolsDescription => 'Lejátszási információk és diagnosztika';
	@override String get preferences => 'Lejátszási beállítások';
	@override String get preferencesDescription => 'A mozi, az alapértelmezett. Kezdje a hanggal és a feliratokkal, majd finomhangolja a streamelést és a képernyőt.';
	@override String get streamPreferences => 'Streaming minőség';
	@override String get displayPreferences => 'Kijelző';
	@override String get enginePreferences => 'Speciális lejátszó opciók';
	@override String get seekPreferences => 'Keresek';
	@override String get watchPreferences => 'Automatikus lejátszás és kihagyás';
	@override String get rememberPreferences => 'Ne feledje a beállításokat';
}

// Path: lurokaSettings
class _Translations$lurokaSettings$hu extends Translations$lurokaSettings$en {
	_Translations$lurokaSettings$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get quickSetup => 'Gyors beállítás';
	@override String get quickSetupDescription => 'Kezdje a lényeges dolgokkal: gördülékenyebb TV-böngészés, kényelmes képernyő-illesztés, otthoni elrendezés és lejátszási beállítások.';
	@override String get experience => 'Az Ön tapasztalata';
	@override String get experienceDescription => 'A Luroka jól érezze magát: megjelenés, nyelvek, lejátszás, könyvtárak és képernyőidő.';
	@override String get remoteHint => '↑ ↓ Tallózás a kategóriákban · → / Válassza az Opciók megnyitása · ← Vissza a kategóriákhoz';
}

// Path: playerChrome
class _Translations$playerChrome$hu extends Translations$playerChrome$en {
	_Translations$playerChrome$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get browse => 'Fejezetek és sor';
	@override String get backToPlayback => 'Vissza a lejátszáshoz';
	@override String get nowPlaying => 'MOST JÁTSZIK';
	@override String get options => 'JÁTÉKOS LEHETŐSÉGEK';
}

// Path: tvLayout
class _Translations$tvLayout$hu extends Translations$tvLayout$en {
	_Translations$tvLayout$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get screenMargins => 'TV képernyő margók';
	@override String get screenMarginsDescription => 'Csökkentse az alkalmazás széleit, ha a tévé levágja a kép egy részét';
	@override String get screenMarginsDefault => '0% (alapértelmezett)';
}

// Path: studios
class _Translations$studios$hu extends Translations$studios$en {
	_Translations$studios$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get checkingCopies => 'Más könyvtárak ellenőrzése… Bármikor válasszon egy ismert példányt.';
	@override String get incompleteCopies => 'Egyes könyvtárakat nem lehetett ellenőrizni. Válasszon egy ismert másolatot, vagy törölje, és próbálkozzon újra.';
	@override String get partialFavorites => 'Néhány kedvencet nem sikerült betölteni. Az újrapróbálkozáshoz válassza a Frissítés lehetőséget.';
	@override String get copyLookupFailedTitle => 'Nem sikerült minden másolatot ellenőrizni';
	@override String get copyLookupFailedMessage => 'Egyes könyvtárak nem válaszoltak. Megnyithatja a már megtalált példányok egyikét, vagy törölheti, és újra próbálkozhat.';
	@override String get openKnownCopies => 'Ismert példányok megjelenítése';
	@override String get browseAll => 'Az összes böngészése';
	@override String titleCount({required Object count}) => '${count} címek';
	@override String get topRated => 'Legjobbra értékelt';
	@override String get mostWatched => 'A legtöbbet a könyvtárában nézték';
	@override String get collection => 'STÚDIÓGYŰJTEMÉNY';
	@override String loadedTitles({required Object count}) => '${count} címek betöltve';
	@override String get sort => 'Címek rendezése';
	@override String get sortTitleAscending => 'Cím A–Z';
	@override String get sortTitleDescending => 'Cím Z–A';
	@override String get sortNewest => 'Legújabb kiadás';
	@override String get sortOldest => 'Legrégebbi kiadás';
	@override String get sortAdded => 'Nemrég hozzáadva';
	@override String get sortEpisodeAdded => 'Nemrég hozzáadott epizód';
	@override String get sortRating => 'A legmagasabb minősítésű';
	@override String get title => 'Böngésszen a Studio szerint';
	@override String get all => 'Mind';
	@override String get movies => 'Filmek';
	@override String get shows => 'TV-műsorok';
	@override String get loadMore => 'További címek betöltése';
	@override String get empty => 'Nincsenek megfelelő címek a jelenleg látható könyvtáraiban.';
	@override String get retry => 'Nem sikerült betölteni több címet – válassza az újrapróbálkozáshoz';
	@override String get description => 'Fedezze fel a stúdió filmjeit és műsorait könyvtáraiban.';
}

// Path: dashboard
class _Translations$dashboard$hu extends Translations$dashboard$en {
	_Translations$dashboard$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get previousFeature => 'Korábbi kiemelt cím';
	@override String get nextFeature => 'Következő kiemelt cím';
	@override String get cinemaHome => 'OTTHON';
	@override String get episodeFallback => 'TV epizód';
	@override String timeLeft({required Object minutes}) => '${minutes} perc van hátra';
	@override String timeLeftHours({required Object hours, required Object minutes}) => '${hours}h ${minutes}m maradt';
	@override String get spoilerHidden => 'Az epizód részleteit a spoiler preferenciája rejtette el.';
	@override String get synopsisUnavailable => 'Nyissa meg a Részletek elemet, ha többet szeretne megtudni erről a címről.';
	@override String get yourSpace => 'A TE TERED';
	@override String get title => 'A te mozid.';
	@override String get subtitle => 'Folytass egy történetet, vagy találd meg a következőt.';
	@override String get featured => 'A LUROKA AJÁNLATA';
	@override String get jumpBackIn => 'Folytatás';
	@override String episodeLabel({required Object season, required Object episode}) => 'S${season} · E${episode}';
	@override String get anotherPick => 'Egy másik választás';
	@override String get exploreSeries => 'Fedezze fel a sorozatokat';
	@override String get showFeatured => 'Otthoni reflektorfény';
	@override String get showFeaturedDescription => 'Kiemelt filmek és műsorok megjelenítése a Kezdőlap tetején.';
}

// Path: lurokaCatalog
class _Translations$lurokaCatalog$hu extends Translations$lurokaCatalog$en {
	_Translations$lurokaCatalog$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get aboutPerson => 'REKLÉTKÖRBE';
	@override String get biographyUnavailable => 'Életrajz nem érhető el erről a szerverről.';
	@override String get filmography => 'Filmek és műsorok a könyvtáradban';
	@override String get recommended => 'Ajánlott';
	@override String get browse => 'Minden cím';
	@override String get collections => 'Gyűjtemények';
	@override String get browseHint => 'Fedezze fel katalógusát. Formálja a kijelölést szűrőkkel és rendezéssel.';
	@override String get recommendedHint => 'Keresse meg a következő történetét';
	@override String get details => 'A történet mögött';
}

// Path: referenceDetails
class _Translations$referenceDetails$hu extends Translations$referenceDetails$en {
	_Translations$referenceDetails$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get oneEpisodeLeft => '1 epizód van hátra';
	@override String get playAll => 'Az összes lejátszása';
	@override String get present => 'Jelen';
	@override String get continuing => 'Folytatás';
	@override String get upNext => 'Legközelebb';
	@override String episodesLeft({required Object count}) => '${count} epizód maradt';
}

// Path: lurokaThemes
class _Translations$lurokaThemes$hu extends Translations$lurokaThemes$en {
	_Translations$lurokaThemes$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Luroka mozi paletták';
	@override String get coral => 'Korall · éjkék és naplemente';
	@override String get ocean => 'Óceán · mélykék és jég';
	@override String get jade => 'Jade · örökzöld és menta';
	@override String get amethyst => 'Ametiszt · éjféli ibolya';
	@override String get darkThemes => 'Sötét mozi témák';
	@override String get lightThemes => 'Könnyű mozi témák';
	@override String get moreThemes => 'További témák';
	@override String get moreThemesDescription => 'Böngésszen további paletták és egyedi színek között';
	@override String get obsidian => 'Obszidián · tiszta fekete és pezsgő';
	@override String get nocturne => 'Nocturne · faszén és pezsgő';
	@override String get burgundy => 'Burgundia · bársonyos bor és rózsa';
	@override String get slate => 'Pala · grafit és sziklák';
	@override String get espresso => 'Espresso · kakaó és karamell';
	@override String get pearl => 'Gyöngy · porcelán és zafír';
	@override String get linen => 'Vászon · meleg elefántcsont és terrakotta';
	@override String get sunrise => 'Napkelte · őszibarack és korall';
	@override String get coastal => 'Tengerparti · köd és óceán kékeszöld';
	@override String get latte => 'Latte · tejszín és karamell';
	@override String get sage => 'Zsálya · lágy zöld és eukaliptusz';
	@override String get lavender => 'Levendula · lila és mély ibolya';
}

// Path: customPerformance
class _Translations$customPerformance$hu extends Translations$customPerformance$en {
	_Translations$customPerformance$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Teljesítmény és effektusok';
	@override String get fireStickMode => 'Alacsony fogyasztású eszköz üzemmód';
	@override String get description => 'Használjon csökkentett effektusokat, statikus háttereket, 720p felbontású grafikát és 40 MiB-os képgyorsítótárat. Ha engedélyezve van, ez felülírja a vizuális effektusokat; kikapcsolása visszaállítja a vizuális effektusokat.';
	@override String get detailsTitle => 'Teljesítmény részletei';
	@override String get details => 'Aktív effektusok, kép-gyorsítótár korlát és böngészési teljesítménymérések';
	@override String get effectsTier => 'Aktív effektusok szintje';
	@override String get imageCache => 'Kép-gyorsítótár korlát';
	@override String get measurement => 'Böngészés mérés';
	@override String get measureInstructions => 'Indítson el egy 20 másodperces mintát, térjen vissza a Kezdőlapra, és böngésszen a távvezérlővel. Az eredmények megtekintéséhez térjen vissza ide. Az összehasonlításhoz ismételje meg ugyanazokat a műveleteket a mód be- és kikapcsolásával. Ez a Flutter UI működését méri, nem a videodekódoló teljesítményét.';
	@override String get startSample => 'Indítsa el a 20 másodperces mintát';
	@override String get stopSample => 'Most fejezze be a mintát';
	@override String get sampling => 'Mintavétel – térjen vissza a Kezdőlapra és böngésszen. Az eredményeket itt tároljuk.';
	@override String get frames => 'Keretek mintavétellel';
	@override String get slowFrames => 'A keretek túllépik a költségvetést';
	@override String get buildP95 => 'UI felépítési idő (95. percentilis)';
	@override String get rasterP95 => 'Raszteridő (95. percentilis)';
	@override String get frameBudget => 'Képkockánkénti költségvetés';
	@override String get processMemory => 'Alkalmazás folyamatmemória a minta végén';
	@override String get noFrames => 'Nem készült renderelt képkockák rögzítése. Indítson el egy másik mintát, és böngésszen az alkalmazásban.';
}

// Path: homeLayout
class _Translations$homeLayout$hu extends Translations$homeLayout$en {
	_Translations$homeLayout$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get manageStudios => 'Válasszon és rendeljen stúdiókat';
	@override String get manageStudiosDescription => 'Válassza ki, hogy mely stúdiók jelenjenek meg ehhez a profilhoz, és rendezze a sorrendjüket.';
	@override String get studioUnavailable => 'Csak a kiválasztott könyvtárakban található stúdiók jelennek meg a Kezdőlapon.';
	@override String get showAllStudios => 'Az összes stúdió megjelenítése';
	@override String get hideAllStudios => 'Az összes stúdió elrejtése';
	@override String get reorderStudio => 'Stúdiórend módosítása';
	@override String get episodeThumbnails => 'Epizódképek a Megtekintés folytatásában';
	@override String get episodeThumbnailsDescription => 'Epizódképek megjelenítése sorozatok vagy évadok poszterei helyett a Megtekintés folytatásában és a Következőben.';
	@override String get spotlightSource => 'Kiemelt tartalom forrása';
	@override String get spotlightSourceDescription => 'A For You a profil megtekintési tevékenységét használja ezen az eszközön, a kedvencekkel és könyvtárcímekkel együtt.';
	@override String get spotlightForYou => 'Neked';
	@override String get spotlightForYouDescription => 'A megtekintett tartalmak, a kedvencek, az új kiegészítések és a trendek keveréke a profil ezen az eszközön végzett megtekintési tevékenységével.';
	@override String get spotlightTrending => 'Felkapott';
	@override String get spotlightTrendingDescription => 'Népszerű filmek és műsorok a könyvtáraidban.';
	@override String get spotlightContinue => 'Folytassa a nézést';
	@override String get spotlightContinueDescription => 'Elkezdett címek és folytatható epizódok.';
	@override String get spotlightFavorites => 'A kedvenceid közül';
	@override String get spotlightInspired => 'A megtekintésed ihlette';
	@override String get spotlightNextUp => 'Következő';
	@override String get title => 'Az otthon személyre szabása';
	@override String get description => 'Válassza ki a profil sorrendjét és láthatóságát. Válasszon egy sort az áthelyezéséhez vagy elrejtéséhez.';
	@override String get rows => 'Kezdőlap sorok';
	@override String get progressLayout => 'Folytassa a megtekintést és a Következő oldalt';
	@override String get progressCombined => 'Egy sorban kombinálva';
	@override String get progressSeparate => 'Külön sorok';
	@override String get progressDescription => 'Külön Következő fel, ha a szerver támogatja. A többi szerver kombinálva marad.';
	@override String get visible => 'Látható';
	@override String get hidden => 'Rejtett';
	@override String get showRow => 'Sor megjelenítése';
	@override String get hideRow => 'Sor elrejtése';
	@override String get moveUp => 'Lépj felfelé';
	@override String get moveDown => 'Mozgás lefelé';
	@override String get pinnedCollections => 'Rögzített gyűjtemények';
	@override String get pinInstructions => 'Nyissa meg egy gyűjtemény menüjét, és válassza a Pin to Kezdőlap lehetőséget. Válassza ki itt a rögzített gyűjteményt a parancsikon eltávolításához.';
	@override String get pinCollection => 'Pin haza';
	@override String get unpinCollection => 'Rögzítés feloldása a Kezdőlapról';
	@override String get reset => 'Az alapértelmezett sorok visszaállítása';
	@override String get resetDescription => 'Visszaállítja az eredeti sorsorrendet, és megjeleníti az összes sort ehhez a profilhoz? A rögzített gyűjteményeit megőrizzük.';
	@override String get saveFailed => 'Nem sikerült menteni az otthoni elrendezést. Kérjük, próbálja újra.';
	@override String get emptyHint => 'A sorok rejtve lehetnek. Nyissa meg a Személyre szabás kezdőlapját, hogy újra megjelenjen.';
}

// Path: screenTime
class _Translations$screenTime$hu extends Translations$screenTime$en {
	_Translations$screenTime$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Képernyőidő';
	@override String get description => 'Tekintse meg a videónézéssel töltött időt ezen a profilon';
	@override String get today => 'Ma';
	@override String get thisWeek => 'Ezen a héten';
	@override String get thisMonth => 'Ebben a hónapban';
	@override String get lessThanMinute => '< 1 perc';
	@override String minutes({required Object count}) => '${count} min';
	@override String hours({required Object count}) => '${count} óra';
	@override String hoursMinutes({required Object hours, required Object minutes}) => '${hours} óra ${minutes} min';
}

// Path: activityStats
class _Translations$activityStats$hu extends Translations$activityStats$en {
	_Translations$activityStats$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Statisztikák megtekintése';
	@override String get period => 'Időszak';
	@override String get last7Days => '7 nap';
	@override String get last30Days => '30 nap';
	@override String get last90Days => '90 nap';
	@override String get thisYear => 'év';
	@override String get allTime => 'Mind';
	@override String get heroAllTime => 'Minden alkalommal';
	@override String get heroDailyAverage => 'Napi átlag';
	@override String get consistency => 'Következetesség';
	@override String get currentStreak => 'Aktuális sorozat';
	@override String dayCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n,
		one: '${n} nap',
		other: '${n} nap',
	);
	@override String get longestStreak => 'Leghosszabb sorozat';
	@override String get bestDay => 'A legjobb nap';
	@override String get bestWeek => 'A legjobb hét';
	@override String get trendTitle => 'Nézési idő';
	@override String get trendToday => 'Ma';
	@override String gapDetail({required Object stat, required Object range}) => '${stat} a ${range}-n';
	@override String get patternsTitle => 'A mintáid';
	@override String mostlyKind({required Object kind}) => 'Többnyire ${kind}';
	@override String get weekdayTitle => 'Hétköznapra';
	@override String get hoursTitle => 'Napszak szerint';
	@override String get amLabel => 'AM';
	@override String get pmLabel => 'PM';
	@override String get kindsTitle => 'Kategória szerint';
	@override String get kindMovie => 'Filmek';
	@override String get kindTv => 'TV';
	@override String get kindLiveTv => 'Élő TV';
	@override String get kindMusic => 'Zene';
	@override String get kindOther => 'Egyéb';
	@override String get topTitlesTitle => 'A legtöbben nézték';
	@override String get sessionsTitle => 'Legutóbbi ülések';
	@override String get recentViewingTitle => 'Legutóbbi megtekintés';
	@override String get recentViewingHint => 'Teljes megtekintési idő a kiválasztott időszakban. A dátumok a legutóbbi megtekintést mutatják.';
	@override String get showMore => 'Mutass többet';
	@override String get sessionNoTitle => 'Azonosítatlan lejátszás';
	@override String get emptyTitle => 'Itt még semmi';
	@override String get emptyBody => 'Nézzen valamit, és a statisztikái itt gyűlnek össze.';
	@override String get noDataInPeriod => 'Ebben az időszakban nincs lejátszás.';
}

// Path: search
class _Translations$search$hu extends Translations$search$en {
	_Translations$search$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get hint => 'Keresés filmek, sorozatok és zenék között...';
	@override String get tryDifferentTerm => 'Próbálj másik keresési kifejezést';
	@override String get searchYourMedia => 'Keresés a saját médiatartalmak között';
	@override String get enterTitleActorOrKeyword => 'Adj meg egy címet, színészt vagy kulcsszót';
	@override String get people => 'Emberek';
	@override String get recentSearches => 'Legutóbbi keresések';
	@override String get clearHistory => 'Törölje az előzményeket';
}

// Path: hotkeys
class _Translations$hotkeys$hu extends Translations$hotkeys$en {
	_Translations$hotkeys$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String setShortcutFor({required Object actionName}) => 'Billentyűparancs beállítása ehhez: ${actionName}';
	@override String get clearShortcut => 'Billentyűparancs törlése';
	@override String get noShortcutSet => 'Nincs billentyűparancs beállítva';
	@override String get currentShortcut => 'Jelenlegi billentyűparancs:';
	@override String get pressToRecord => 'Válaszd ki a billentyűparancs rögzítéséhez';
	@override String get recordingShortcut => 'Nyomd meg most a billentyűparancsot';
	@override late final _Translations$hotkeys$actions$hu actions = _Translations$hotkeys$actions$hu._(_root);
}

// Path: fileInfo
class _Translations$fileInfo$hu extends Translations$fileInfo$en {
	_Translations$fileInfo$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fájlinformáció';
	@override String get overview => 'Áttekintés';
	@override String get video => 'Videó';
	@override String get audio => 'Hang';
	@override String get subtitles => 'Feliratok';
	@override String get images => 'Beágyazott képek';
	@override String get dataStreams => 'Adatfolyamok';
	@override String get lyrics => 'Dalszövegek';
	@override String get file => 'Fájl';
	@override String get attachments => 'Mellékletek';
	@override String get delivery => 'Kézbesítés';
	@override String versionCounter({required Object index, required Object count}) => '${index}. verzió a(z) ${count} közül';
	@override String fileCounter({required Object index, required Object count}) => '${index}. fájl a(z) ${count} közül';
	@override String get noStreams => 'A szerver nem jelentett adatfolyamot ehhez a fájlhoz.';
	@override String get copyPath => 'Útvonal másolása';
	@override String get pathCopied => 'Fájlútvonal kimásolva';
	@override String get codec => 'Kodek';
	@override String get codecTag => 'Kodekcímke';
	@override String get resolution => 'Felbontás';
	@override String get codedResolution => 'Kódolt felbontás';
	@override String get bitrate => 'Bitráta';
	@override String get frameRate => 'Képkockasebesség';
	@override String get rotation => 'Forgatás';
	@override String get comment => 'Megjegyzés';
	@override String get audioDescription => 'Hangleírás';
	@override String get headerCompression => 'Fejléc-tömörítés';
	@override String get sidecarFile => 'Kísérő fájl';
	@override String get transportTimestamp => 'Szállítási időbélyeg';
	@override String get displayOffset => 'Megjelenítési eltolás';
	@override String get previewFailureCode => 'Előnézeti hibakód';
	@override String get previewRetries => 'Előnézeti újrapróbálkozások';
	@override String get aspectRatio => 'Méretarány';
	@override String get pixelAspectRatio => 'Pixel képarány';
	@override String get profile => 'Profil';
	@override String get level => 'Szint';
	@override String get bitDepth => 'Bitmélység';
	@override String get pixelFormat => 'Pixelformátum';
	@override String get colorSpace => 'Színtér';
	@override String get colorRange => 'Színtartomány';
	@override String get colorPrimaries => 'Elsődleges színek';
	@override String get colorTransfer => 'Színátvitel';
	@override String get chromaSubsampling => 'Krominancia-alulmintavételezés';
	@override String get chromaLocation => 'Kroma elhelyezkedés';
	@override String get scanType => 'Pásztázási típus';
	@override String get interlaced => 'Váltott soros';
	@override String get anamorphic => 'Anamorf';
	@override String get referenceFrames => 'Referencia képkockák';
	@override String get dynamicRange => 'Dinamikatartomány';
	@override String get dolbyVision => 'Dolby Vision';
	@override String get dolbyVisionLevel => 'Dolby Vision szint';
	@override String get dolbyVisionVersion => 'Dolby Vision verzió';
	@override String get dolbyVisionLayers => 'Dolby Vision rétegek';
	@override String get baseLayerCompatibility => 'Alapréteg-kompatibilitás';
	@override String get avcBitstream => 'AVC bitfolyam';
	@override String get nalLengthSize => 'NAL hosszméret';
	@override String get scalingMatrix => 'Egyéni méretezési mátrix';
	@override String get streamIdentifier => 'Adatfolyam-azonosító';
	@override String get streamIndex => 'Adatfolyam-index';
	@override String get streamId => 'Adatfolyam azonosítója';
	@override String get language => 'Nyelv';
	@override String get languageCode => 'Nyelvkód';
	@override String get streamTitle => 'Sáv címe';
	@override String get channels => 'Csatornák';
	@override String get sampleRate => 'Mintavételi frekvencia';
	@override String get spatialAudio => 'Térbeli hang';
	@override String get textBased => 'Szövegalapú';
	@override String get subtitleFormat => 'Kísérő formátum';
	@override String get provider => 'Szolgáltató';
	@override String get matchScore => 'Egyezési pontszám';
	@override String get externalDelivery => 'Külön is kiszolgálható';
	@override String get sidecarPath => 'Kísérő fájl útvonala';
	@override String get sourceStream => 'Másolva innen';
	@override String get temporary => 'Ideiglenes';
	@override String get timeBase => 'Időalap';
	@override String get overallBitrate => 'Összesített bitráta';
	@override String get path => 'Elérési út';
	@override String get fileName => 'Fájlnév';
	@override String get size => 'Méret';
	@override String get totalSize => 'Teljes méret';
	@override String get container => 'Konténer';
	@override String get duration => 'Időtartam';
	@override String get previewThumbnails => 'Előnézeti miniatűrök';
	@override String get previewIndex => 'Előnézeti index';
	@override String get packetLength => 'Csomaghossz';
	@override String get filePresent => 'Fájl jelen van';
	@override String get fileReadable => 'A szerver számára olvasható';
	@override String get streamPath => 'Adatfolyam útvonala';
	@override String get optimizedForStreaming => 'Adatfolyam-továbbításra optimalizálva';
	@override String get has64bitOffsets => '64 bites eltolások';
	@override String get protocol => 'Protokoll';
	@override String get mediaType => 'Médiatípus';
	@override String get sourceKind => 'Forrás típusa';
	@override String get optimizedVersion => 'Optimalizált verzió';
	@override String get optimizationTarget => 'Optimalizálási cél';
	@override String get deletedAt => 'Törölve';
	@override String get remoteSource => 'Távoli forrás';
	@override String get infiniteStream => 'Végtelen adatfolyam';
	@override String get directPlay => 'Közvetlen lejátszás';
	@override String get directStream => 'Közvetlen adatfolyam';
	@override String get transcoding => 'Átkódolás';
	@override String get etag => 'ETag';
	@override String get versionId => 'Verzióazonosító';
	@override String get fileId => 'Fájlazonosító';
	@override String get defaultAudioTrack => 'Alapértelmezett hangsáv';
	@override String get defaultSubtitleTrack => 'Alapértelmezett feliratsáv';
	@override String get subtitlesOff => 'Ki';
	@override String get flagDefault => 'Alapértelmezett';
	@override String get flagForced => 'Kényszerített';
	@override String get flagSelected => 'Kiválasztva';
	@override String get flagExternal => 'Külső';
	@override String get flagHearingImpaired => 'Nagyothallóknak';
	@override String get flagDub => 'Szinkron';
	@override String get flagOriginal => 'Eredeti';
	@override String get channelsMono => 'Monó';
	@override String dolbyVisionProfile({required Object profile}) => '${profile} profil';
}

// Path: mediaMenu
class _Translations$mediaMenu$hu extends Translations$mediaMenu$en {
	_Translations$mediaMenu$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get markAsWatched => 'Megjelölés megtekintettként';
	@override String get markAsUnwatched => 'Megjelölés nem megtekintettként';
	@override String get clearProgress => 'Világos haladás';
	@override String get removeFromContinueWatching => 'Eltávolítás a folytatásból';
	@override String get viewDetails => 'Részletek megtekintése';
	@override String get goToSeries => 'Ugrás a sorozathoz';
	@override String get shufflePlay => 'Véletlenszerű lejátszás';
	@override String get shuffleNotAvailableOffline => 'A véletlenszerű lejátszás nem érhető el offline';
	@override String get fileInfo => 'Fájlinformáció';
	@override String get deleteEpisodeFromServer => 'Epizód törlése a szerverről';
	@override String get deleteSeasonFromServer => 'Évad törlése a szerverről';
	@override String get deleteShowFromServer => 'Sorozat törlése a szerverről';
	@override String get deleteMovieFromServer => 'Film törlése a szerverről';
	@override String get deleteEpisodeTitle => 'Töröljük ezt az epizódot?';
	@override String get deleteSeasonTitle => 'Töröljük ezt az évadot?';
	@override String get deleteShowTitle => 'Töröljük ezt a sorozatot?';
	@override String get deleteMovieTitle => 'Töröljük ezt a filmet?';
	@override String get deleteEpisodeConfirm => 'Epizód törlése';
	@override String get deleteSeasonConfirm => 'Évad törlése';
	@override String get deleteShowConfirm => 'Sorozat törlése';
	@override String get deleteMovieConfirm => 'Film törlése';
	@override String get deleteAnyway => 'Törlés mindenképp';
	@override String confirmDeleteTarget({required Object title}) => 'Véglegesen töröljük a(z) ${title} elemet a szerverről?';
	@override String get deleteMultipleWarning => 'Ez magában foglalja az összes epizódot és azok fájljait.';
	@override String deleteEpisodeCountWarning({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n,
		one: 'Ez törli az összes (${n}) epizódot benne és a hozzá tartozó fájlt.',
		other: 'Ez törli az összes (${n}) epizódot benne és a fájljaikat.',
	);
	@override String deleteMultiPartWarning({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n,
		one: 'Ez az elem ${n} fájlban van tárolva, amely törlésre kerül.',
		other: 'Ez az elem ${n} fájlban van tárolva, és mindegyik törlésre kerül.',
	);
	@override String deleteSharedFileHeading({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n,
		one: 'További ${n} epizód is ugyanabban a fájlban van, és szintén törlésre kerül:',
		other: 'További ${n} epizód is ugyanabban a fájlban van, és szintén törlésre kerül:',
	);
	@override String get deleteScopeUnverifiedProbeFailed => 'A Luroka nem tudta ellenőrizni, mely fájlokat távolítja el ez, ezért a fent nevezett elemnél többet is törölhet. Szakítsa meg és próbálja újra, vagy töröljön mindenképp.';
	@override String get deleteScopeUnverifiedNoFileInfo => 'A szerver nem szolgáltatott fájladatokat ehhez az elemhez, ezért a Luroka nem tudja ellenőrizni, mely fájlokat távolít el. A fent nevezett elemnél többet is törölhet.';
	@override String get mediaDeletedSuccessfully => 'Médiaelem sikeresen törölve';
	@override String get mediaFailedToDelete => 'Nem sikerült a médiaelem törlése';
	@override String get rate => 'Értékelés';
	@override String get playFromBeginning => 'Lejátszás az elejétől';
	@override String get playVersion => 'Verzió lejátszása...';
}

// Path: rateSheet
class _Translations$rateSheet$hu extends Translations$rateSheet$en {
	_Translations$rateSheet$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Értékelés';
	@override String get server => 'Szerver';
	@override String get favorite => 'Kedvenc';
	@override String get favorited => 'Kedvencekhez hozzáadva';
	@override String get saved => 'Mentve';
	@override String get notAvailable => 'Nincs találat';
	@override String get noConnectedServices => 'Az értékeléshez csatlakoztass egy szolgáltatást a Beállításokban.';
}

// Path: accessibility
class _Translations$accessibility$hu extends Translations$accessibility$en {
	_Translations$accessibility$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String mediaCardMovie({required Object title}) => '${title}, film';
	@override String mediaCardShow({required Object title}) => '${title}, TV-sorozat';
	@override String mediaCardEpisode({required Object title, required Object episodeInfo}) => '${title}, ${episodeInfo}';
	@override String mediaCardSeason({required Object title, required Object seasonInfo}) => '${title}, ${seasonInfo}';
	@override String get mediaCardWatched => 'megtekintve';
	@override String mediaCardPartiallyWatched({required Object percent}) => '${percent} százalék megtekintve';
	@override String get mediaCardUnwatched => 'még nem láttad';
	@override String get tapToPlay => 'Koppints a lejátszáshoz';
	@override String get decrease => 'Csökkentés';
	@override String get increase => 'Növelés';
	@override String decreaseValue({required Object label}) => '${label} csökkentése';
	@override String increaseValue({required Object label}) => '${label} növelése';
	@override String get hue => 'Árnyalat';
	@override String get saturation => 'Telítettség';
	@override String get brightness => 'Fényerő';
	@override String get hexColor => 'Hex színkód';
	@override String get expandText => 'Szöveg kibontása';
	@override String get collapseText => 'Szöveg összecsukása';
	@override String get alphabetNavigation => 'Ábécé szerinti navigáció';
	@override String get alphabetScrollHint => 'A betűnkénti léptetéshez pöccints felfelé vagy lefelé';
	@override String rowColumnPosition({required Object row, required Object rowCount, required Object column, required Object columnCount}) => '${row}. sor a(z) ${rowCount} sorból, ${column}. oszlop a(z) ${columnCount} oszlopból';
	@override String rowPosition({required Object row, required Object rowCount}) => '${row}. sor a(z) ${rowCount} sorból';
	@override String get autoScrollPlay => 'Automatikus görgetés indítása';
	@override String get autoScrollPause => 'Automatikus görgetés szüneteltetése';
	@override String get hueShort => 'H';
	@override String get saturationShort => 'S';
	@override String get valueShort => 'V';
}

// Path: tooltips
class _Translations$tooltips$hu extends Translations$tooltips$en {
	_Translations$tooltips$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get shufflePlay => 'Véletlenszerű lejátszás';
	@override String get playTrailer => 'Előzetes lejátszása';
	@override String get markAsWatched => 'Megjelölés megtekintettként';
	@override String get markAsUnwatched => 'Megjelölés nem megtekintettként';
}

// Path: audioTracks
class _Translations$audioTracks$hu extends Translations$audioTracks$en {
	_Translations$audioTracks$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String track({required Object n}) => '${n}. hangsáv';
}

// Path: videoControls
class _Translations$videoControls$hu extends Translations$videoControls$en {
	_Translations$videoControls$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get audioLabel => 'Hang';
	@override String get subtitlesLabel => 'Feliratok';
	@override String addTime({required Object amount, required Object unit}) => '+${amount}${unit}';
	@override String get letterbox => 'Fekete sávok';
	@override String get fillScreen => 'Képernyő kitöltése';
	@override String get stretch => 'Nyújtás';
	@override String get lockRotation => 'Forgatás zárolása';
	@override String get unlockRotation => 'Forgatás feloldása';
	@override String get timerActive => 'Időzítő aktív';
	@override String playbackWillPauseIn({required Object duration}) => 'A lejátszás ${duration} múlva szünetel';
	@override String get sleepTimerEndOfVideo => 'Jelenlegi videó vége';
	@override String get sleepTimerStopAtHeader => 'Leállítás ekkor';
	@override String get sleepTimerDurationHeader => 'Időzítő';
	@override String get playbackWillPauseAtEnd => 'A lejátszás szünetel a videó végén';
	@override String get stillWatching => 'Még nézed?';
	@override String pausingIn({required Object seconds}) => 'Szüneteltetés ${seconds} mp múlva';
	@override String get continueWatching => 'Folytatás';
	@override String get autoPlayNext => 'Következő automatikus lejátszása';
	@override String get playNext => 'Következő lejátszása';
	@override String get playButton => 'Lejátszás';
	@override String get pauseButton => 'Szünet';
	@override String get playbackPaused => 'Szüneteltetve';
	@override String get playbackResumed => 'Lejátszás';
	@override String get loadingVideo => 'Videó betöltése';
	@override String get showPlaybackControls => 'Lejátszásvezérlők megjelenítése';
	@override String get hidePlaybackControls => 'Lejátszásvezérlők elrejtése';
	@override String seekBackwardButton({required Object seconds}) => 'Tekerés hátra ${seconds} másodperccel';
	@override String seekForwardButton({required Object seconds}) => 'Tekerés előre ${seconds} másodperccel';
	@override String get previousButton => 'Előző epizód';
	@override String get nextButton => 'Következő epizód';
	@override String get previousChapterButton => 'Előző fejezet';
	@override String get nextChapterButton => 'Következő fejezet';
	@override String get muteButton => 'Némítás';
	@override String get unmuteButton => 'Hang visszakapcsolása';
	@override String get settingsButton => 'Lejátszási beállítások';
	@override String get infoButton => 'Info';
	@override String get tracksButton => 'Hang és feliratok';
	@override String get chaptersButton => 'Fejezetek';
	@override String get versionQualityButton => 'Verzió és minőség';
	@override String get versionColumnHeader => 'Verzió';
	@override String get qualityColumnHeader => 'Minőség';
	@override String get qualityOriginal => 'Eredeti';
	@override String qualityPresetLabel({required Object resolution, required Object bitrate}) => '${resolution}p ${bitrate} Mbps';
	@override String get transcodeUnavailableFallback => 'A transzkódolás nem érhető el — eredeti minőség lejátszása';
	@override String get subtitleUnavailableFallback => 'A kiválasztott feliratot nem sikerült betölteni — folytatás felirat nélkül';
	@override String get pipButton => 'Kép a képben mód';
	@override String get aspectRatioButton => 'Méretarány';
	@override String get ambientLighting => 'Környezeti megvilágítás';
	@override String get fullscreenButton => 'Teljes képernyős mód bekapcsolása';
	@override String get exitFullscreenButton => 'Teljes képernyős mód kikapcsolása';
	@override String get alwaysOnTopButton => 'Mindig legfelül';
	@override String get rotationLockButton => 'Elforgatás zárolása';
	@override String get lockScreen => 'Képernyő zárolása';
	@override String get screenLockButton => 'Képernyőzár';
	@override String get longPressToUnlock => 'Nyomd hosszan a feloldáshoz';
	@override String get timelineSlider => 'Videó idősáv';
	@override String get volumeSlider => 'Hangerő';
	@override String endsAt({required Object time}) => 'Vége: ${time}';
	@override String get pipActive => 'Lejátszás kép a képben módban';
	@override String get pipFailed => 'Nem sikerült elindítani a kép a képben módot';
	@override String get screenshotSaved => 'Képernyőkép elmentve';
	@override String get screenshotFailed => 'Nem sikerült képernyőképet készíteni';
	@override String zoomPercent({required Object percent}) => 'Nagyítás ${percent}%';
	@override String volumePercent({required Object percent}) => 'Hangerő ${percent}%';
	@override late final _Translations$videoControls$pipErrors$hu pipErrors = _Translations$videoControls$pipErrors$hu._(_root);
	@override String get chapters => 'Fejezetek';
	@override String get noChaptersAvailable => 'Nincsenek elérhető fejezetek';
	@override String get queue => 'Lejátszási sor';
	@override String get noQueueItems => 'Nincsenek elemek a sorban';
	@override String get noAudioDevicesAvailable => 'Nincsenek elérhető audioeszközök';
	@override String get searchSubtitles => 'Feliratok keresése';
	@override String get language => 'Nyelv';
	@override String get noSubtitlesFound => 'Nem találhatók feliratok';
	@override String get subtitleDownloaded => 'Felirat letöltve';
	@override String get subtitleDownloadedNotApplied => 'Felirat letöltve, de nem sikerült kiválasztani';
	@override String get subtitleDownloadFailed => 'Nem sikerült a felirat letöltése';
	@override String get searchLanguages => 'Nyelvek keresése...';
	@override String get skipIntro => 'Főcím átugrása';
	@override String get skipCredits => 'Stáblista átugrása';
	@override String get nextEpisode => 'Következő epizód';
	@override String subtitleTrack({required Object n}) => '${n}. sáv';
	@override String subtitleFile({required Object name}) => '${name} felirat';
	@override String forcedTrack({required Object label}) => '${label} (kényszerített)';
	@override String get osdSubtitlesOff => 'Feliratok: ki';
	@override String osdSubtitles({required Object track}) => 'Feliratok: ${track}';
	@override String osdAudio({required Object track}) => 'Hang: ${track}';
}

// Path: messages
class _Translations$messages$hu extends Translations$messages$en {
	_Translations$messages$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get markedAsWatched => 'Megjelölve megtekintettként';
	@override String get markedAsUnwatched => 'Megjelölve nem megtekintettként';
	@override String get markedAsWatchedOffline => 'Megjelölve megtekintettként (szinkronizálás online állapotban)';
	@override String get markedAsUnwatchedOffline => 'Megjelölve nem megtekintettként (szinkronizálás online állapotban)';
	@override String autoRemovedWatchedDownload({required Object title}) => 'Automatikusan eltávolítva: ${title}';
	@override String autoRemovedWatchedDownloads({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n,
		one: '${n} megtekintett letöltés automatikusan eltávolítva',
		other: '${n} megtekintett letöltés automatikusan eltávolítva',
	);
	@override String get removedFromContinueWatching => 'Eltávolítva a folytatásból';
	@override String errorLoading({required Object error}) => 'Hiba: ${error}';
	@override String get searchPartialResults => 'Néhány médiaszervert nem sikerült keresni. Az elérhető találatok megjelenítése.';
	@override String get streamInterrupted => 'Az adatfolyam megszakadt. Az újrapróbálkozáshoz indítsd el a lejátszást, vagy tekerj másik pozícióra.';
	@override String get liveStreamInterrupted => 'Az élő adás megszakadt. Nyomd meg a lejátszást az újrapróbálkozáshoz.';
	@override String get fileInfoNotAvailable => 'A fájlinformáció nem érhető el';
	@override String get playbackAuthenticationRequired => 'Az elem lejátszásához jelentkezz be újra a médiaszerverre.';
	@override String get playbackServerUnavailable => 'A médiaszerver nem érhető el. Próbáld újra később.';
	@override String get playbackDataInvalid => 'A szerver érvénytelen lejátszási adatokat küldött.';
	@override String get playbackCancelled => 'A lejátszás megszakítva.';
	@override String get playbackFailed => 'Nem sikerült elindítani a lejátszást.';
	@override String playbackFailedDetail({required Object error}) => 'Nem sikerült elindítani a lejátszást: ${error}';
	@override String get audioOutputFailed => 'A hangkimenet nem válaszol. Ellenőrizd a TV vagy az erősítő hangcsatlakozását; ha más alkalmazásokban sincs hang, indítsd újra az eszközt.';
	@override String get mediaUnavailable => 'Ez a tartalom már nem érhető el.';
	@override String errorLoadingFileInfo({required Object error}) => 'Hiba a fájlinformációk betöltésekor: ${error}';
	@override String get errorLoadingSeries => 'Hiba a sorozat betöltésekor';
	@override String get musicNotSupported => 'A zenelejátszás még nem támogatott';
	@override String get noDescriptionAvailable => 'Nincs elérhető leírás';
	@override String get noProfilesAvailable => 'Nincsenek elérhető profilok';
	@override String get contactAdminForProfiles => 'Lépj kapcsolatba a szerver adminisztrátorával profilok hozzáadásához';
	@override String get unableToDetermineLibrarySection => 'Nem sikerült meghatározni az elem könyvtári részlegét';
	@override String get logsCleared => 'Naplók törölve';
	@override String get logsCopied => 'Naplók a vágólapra másolva';
	@override String get noLogsAvailable => 'Nincsenek elérhető naplók';
	@override String libraryScanning({required Object title}) => '"${title}" beolvasása...';
	@override String libraryScanStarted({required Object title}) => 'Könyvtár beolvasása elindítva a következőhöz: "${title}"';
	@override String libraryScanFailed({required Object error}) => 'Nem sikerült a könyvtár beolvasása: ${error}';
	@override String metadataRefreshing({required Object title}) => 'Metaadatok frissítése a következőhöz: "${title}"...';
	@override String metadataRefreshStarted({required Object title}) => 'Metaadatok frissítése elindítva a következőhöz: "${title}"';
	@override String metadataRefreshFailed({required Object error}) => 'Nem sikerült a metaadatok frissítése: ${error}';
	@override String get logoutConfirm => 'Biztosan ki szeretnél jelentkezni?';
	@override String get logoutDeviceConfirm => 'Kijelentkezik a Luroka alkalmazásból ezen az eszközön? Minden profil, beleértve a Kids-profilokat, a szerverfiókokat és a letöltött médiát is eltávolítja erről az eszközről. Később újra bejelentkezhet.';
	@override String get noSeasonsFound => 'Nem találhatók évadok';
	@override String get seasonsLoadFailed => 'Nem sikerült az évadok betöltése';
	@override String get noEpisodesFound => 'Nem találhatók epizódok az első évadban';
	@override String get noEpisodesFoundGeneral => 'Nem találhatók epizódok';
	@override String get episodesLoadFailed => 'Nem sikerült az epizódok betöltése';
	@override String get noResultsFound => 'Nincs találat';
	@override String sleepTimerSet({required Object label}) => 'Elalvási időzítő beállítva: ${label}';
	@override String get noItemsAvailable => 'Nincsenek elérhető elemek';
	@override String get failedToCreatePlayQueueNoItems => 'Nem sikerült létrehozni a lejátszási sort — nincsenek elemek';
	@override String failedPlayback({required Object action, required Object error}) => 'Nem sikerült a művelet (${action}): ${error}';
	@override String get switchingToCompatiblePlayer => 'Váltás kompatibilis lejátszóra...';
	@override String get serverLimitTitle => 'A lejátszás nem sikerült';
	@override String get serverLimitBody => 'Szerverhiba (HTTP 500). A munkamenetet valószínűleg egy sávszélességi vagy átkódolási korlát utasította el. Kérd meg a tulajdonost a korlát módosítására.';
	@override String get mediaUnreadableTitle => 'A fájl nem érhető el';
	@override String get mediaUnreadableBody => 'A szerver megtalálta ezt az elemet, de nem tudta beolvasni a fájlját (HTTP 404). A fájl valószínűleg áthelyezésre vagy törlésre került, vagy a tárhelye offline. Kérje meg a szerver tulajdonosát, hogy ellenőrizze a fájlt, és vizsgálja újra a könyvtárat.';
	@override String get serverBusyTitle => 'A stream nem érhető el';
	@override String get serverBusyBody => 'A szerver ismételten megtagadta ennek a fájlnak a streamelését (HTTP 503). Lehet, hogy újraindul, túlterhelt, vagy a fájl tárhelye nem érhető el. Próbáld újra egy kis idő múlva – ha a probléma továbbra is fennáll, kérd meg a szerver tulajdonosát, hogy ellenőrizze a szervert és a fájl tárhelyét.';
	@override String get playbackNotAllowedTitle => 'A lejátszás nem engedélyezett';
	@override String get playbackNotAllowedBody => 'A szerver megtagadta ennek az elemnek a streamelését (HTTP 403). Lehet, hogy a fiókodnak nincs engedélye a lejátszására, vagy a szerver csak a helyi hálózatán engedélyezi a lejátszást.';
	@override String get logsUploaded => 'Naplók feltöltve';
	@override String get logsUploadFailed => 'Nem sikerült a naplók feltöltése';
	@override String get logId => 'Naplóazonosító';
	@override String get burnedSubtitlesUseMenu => 'A feliratok bele vannak égetve ebbe a streambe. A feliratmenüben módosíthatod őket.';
	@override String get noVideoUrl => 'Nem érhető el videó-URL';
	@override String get playbackNoMediaSources => 'A szerver nem adott vissza lejátszható médiaforrást';
	@override String get playbackDataNotPrepared => 'A lejátszás az adatok elkészülte előtt indult el';
	@override String get streamSelectionUnavailable => 'Ehhez a forráshoz nem érhető el a streamek kiválasztása';
	@override String get streamSelectionFailed => 'Nem sikerült alkalmazni a kiválasztott streameket';
	@override String get trackSelectionNotRemembered => 'Ez a sávválasztás csak az aktuális lejátszásra érvényes.';
	@override String get serverUnavailableForProfile => 'Az aktív profilhoz nem érhető el szerver';
}

// Path: sourceLibraries
class _Translations$sourceLibraries$hu extends Translations$sourceLibraries$en {
	_Translations$sourceLibraries$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Az Ön szerverei és könyvtárai';
	@override String get description => 'Válassza ki a Luroka által használt könyvtárakat az Otthon, a keresés, az elérhetőség felfedezése és a Stúdiók számára. A kezdősorok sorrendje külön személyre szabott.';
	@override String get partial => 'Néhány szervert nem sikerült ellenőrizni. Az ezekhez a könyvtárakhoz mentett választásai megmaradnak. Frissítse az újbóli próbálkozáshoz.';
	@override String get loadFailed => 'Nem sikerült betölteni a könyvtárakat. Ellenőrizze a kapcsolatot, és próbálja újra.';
	@override String get notSelected => 'Nem érhető el a kiválasztott könyvtárakban.';
	@override String get checkOthers => 'Ellenőrizze a többi csatlakoztatott forrást';
	@override String get otherSources => 'Elérhető más csatlakoztatott forrásokon';
	@override String get playOnce => 'Játssz egyszer';
	@override String get includeLibrary => 'Tartalmazza ezt a könyvtárat';
	@override String get noOthers => 'Más csatlakoztatott forrásokon nem található másolat.';
	@override String get chooseOne => 'A folytatáshoz válasszon legalább egy könyvtárat.';
}

// Path: subtitlingStyling
class _Translations$subtitlingStyling$hu extends Translations$subtitlingStyling$en {
	_Translations$subtitlingStyling$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get text => 'Szöveg';
	@override String get border => 'Keret';
	@override String get background => 'Háttér';
	@override String get fontSize => 'Betűméret';
	@override String get textColor => 'Szövegszín';
	@override String get borderSize => 'Keretméret';
	@override String get borderColor => 'Keretszín';
	@override String get backgroundOpacity => 'Háttér átlátszatlansága';
	@override String get backgroundColor => 'Háttérszín';
	@override String get position => 'Pozíció';
	@override String get assOverride => 'ASS felülbírálása';
	@override String get overrideScale => 'Skálázás';
	@override String get overrideForce => 'Kényszerítés';
	@override String get overrideStrip => 'Stílus eltávolítása';
	@override String get positionTop => 'Fent';
	@override String get positionBottom => 'Lent';
	@override String get useMargins => 'Margók használata';
	@override String get useMarginsDescription => 'A szöveges feliratok a videón kívüli területen is megjelenhetnek. A stilizált feliratok megtarthatják eredeti pozíciójukat.';
	@override String get anchorToScreen => 'Képernyőhöz rögzítés';
	@override String get anchorToScreenDescription => 'A szöveges feliratok megjelenítése a szélesvásznú videó alatti fekete sávban';
	@override String get bold => 'Félkövér';
	@override String get italic => 'Dőlt';
	@override String get renderResolution => 'Renderelési felbontás';
	@override String get renderResolutionScreen => 'Képernyőfelbontás';
	@override String get renderResolutionVideo => 'Videófelbontás';
}

// Path: mpvConfig
class _Translations$mpvConfig$hu extends Translations$mpvConfig$en {
	_Translations$mpvConfig$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'mpv.conf';
	@override String get description => 'Haladó videólejátszó beállítások';
	@override String get presets => 'Előbeállítások';
	@override String get noPresets => 'Nincsenek mentett előbeállítások';
	@override String get saveAsPreset => 'Mentés előbeállításként...';
	@override String get presetName => 'Előbeállítás neve';
	@override String get presetNameHint => 'Add meg az előbeállítás nevét';
	@override String get loadPreset => 'Betöltés';
	@override String get deletePreset => 'Törlés';
	@override String get presetSaved => 'Előbeállítás mentve';
	@override String get presetLoaded => 'Előbeállítás betöltve';
	@override String get presetDeleted => 'Előbeállítás törölve';
	@override String get confirmDeletePreset => 'Biztosan törölni szeretnéd ezt az előbeállítást?';
	@override String get configPlaceholder => 'gpu-api=vulkan\nhwdec=auto\n# megjegyzés';
	@override String get lineHint => 'option=value';
	@override String get addLine => 'Sor hozzáadása';
	@override String get removeLine => 'Sor eltávolítása';
	@override String get embeddedVoHint => 'A vo, gpu-context és gpu-api beállítások Linuxon figyelmen kívül maradnak: a beágyazott videó mindig a vo=libmpv-n keresztül jelenik meg a videósíkon, a gpu-next (amelyre az ArtCNN-hez hasonló compute shadereknek szükségük van) pedig nem futhat beágyazva.';
}

// Path: dialog
class _Translations$dialog$hu extends Translations$dialog$en {
	_Translations$dialog$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get confirmAction => 'Művelet megerősítése';
}

// Path: profiles
class _Translations$profiles$hu extends Translations$profiles$en {
	_Translations$profiles$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get manageProfiles => 'Profilok kezelése';
	@override String get quickAccess => 'Gyors hozzáférés';
	@override String get signOutDevice => 'Jelentkezzen ki erről az eszközről';
	@override String get addLurokaProfile => 'Luroka profil hozzáadása';
	@override String get switchingProfile => 'Profilváltás…';
	@override String get deleteThisProfileTitle => 'Törlöd ezt a profilt?';
	@override String deleteThisProfileMessage({required Object displayName}) => '${displayName} eltávolítása. A kapcsolatokat nem érinti.';
	@override String get active => 'Aktív';
	@override String get manage => 'Kezelés';
	@override String get delete => 'Törlés';
	@override String get signOut => 'Kijelentkezés';
	@override String get signOutPlexTitle => 'Kijelentkezel a Plexből?';
	@override String signOutPlexMessage({required Object displayName}) => 'Eltávolítod a(z) ${displayName} profilt és az összes Plex Home-felhasználót? Bármikor visszajelentkezhetsz.';
	@override String get signOutPlexDeleteDownloads => 'Törölje a letöltéseket is';
	@override String get signOutPlexDeleteDownloadsDescription => 'Ellenkező esetben ezen az eszközön maradnak, és visszatérnek, amikor újra bejelentkezik ebbe a fiókba.';
	@override String get signedOutPlex => 'Kijelentkezve a Plexből.';
	@override String get signOutFailed => 'A kijelentkezés nem sikerült.';
	@override String get sectionTitle => 'Profilok';
	@override String get summarySingle => 'Adj hozzá profilokat a kezelt felhasználók és a helyi profilok együttes használatához';
	@override String summaryMultipleWithActive({required Object count, required Object activeName}) => '${count} profil · aktív: ${activeName}';
	@override String summaryMultiple({required Object count}) => '${count} profil';
	@override String get removeConnectionTitle => 'Eltávolítod a kapcsolatot?';
	@override String removeConnectionMessage({required Object displayName, required Object connectionLabel}) => 'Eltávolítod ${displayName} hozzáférését a(z) ${connectionLabel} kapcsolathoz. Más profilok megtartják.';
	@override String get deleteProfileTitle => 'Törlöd a profilt?';
	@override String deleteProfileMessage({required Object displayName}) => 'Eltávolítod a(z) ${displayName} profilt és annak kapcsolatait. A szerverek elérhetőek maradnak.';
	@override String get profileNameLabel => 'Profil neve';
	@override String get pinProtectionLabel => 'PIN-kódos védelem';
	@override String get pinManagedByPlex => 'A PIN-kódot a Plex kezeli. Szerkesztés a plex.tv oldalon.';
	@override String get noPinSetEditOnPlex => 'Nincs PIN beállítva. PIN kéréséhez szerkeszd az otthoni felhasználót a plex.tv-n.';
	@override String get setPin => 'PIN beállítása';
	@override String get setPinTitle => 'PIN beállítása';
	@override String get confirmPinTitle => 'PIN megerősítése';
	@override String get pinSet => 'PIN beállítva';
	@override String get changePin => 'Módosítás';
	@override String get removePin => 'Eltávolítás';
	@override String get connectionsLabel => 'Kapcsolatok';
	@override String get add => 'Hozzáadás';
	@override String get deleteProfileButton => 'Profil törlése';
	@override String get noConnectionsHint => 'Nincsenek kapcsolatok — adj hozzá egyet a profil használatához.';
	@override String get noConnections => 'Nincsenek kapcsolatok';
	@override String get plexHomeAccount => 'Plex Home-fiók';
	@override String plexAccountChip({required Object account}) => 'Plex-fiók: ${account}';
	@override String plexAccountUserChip({required Object account, required Object user}) => '${account} fiókján keresztül: ${user}';
	@override String get connectionDefault => 'Alapértelmezett';
	@override String connectionAs({required Object displayName}) => 'mint ${displayName}';
	@override String get makeDefault => 'Beállítás alapértelmezettként';
	@override String get removeConnection => 'Eltávolítás';
	@override String get profileRenamed => 'Profil átnevezve.';
	@override String borrowAddTo({required Object displayName}) => 'Hozzáadás a következőhöz: ${displayName}';
	@override String get borrowExplain => 'Használd egy másik profil kapcsolatát. A PIN-kóddal védett profilokhoz PIN-kód szükséges.';
	@override String get borrowEmpty => 'Még nincs használható kapcsolat.';
	@override String get borrowEmptySubtitle => 'Először csatlakoztasd a Plexet, a Jellyfint vagy az Embyt egy másik profilhoz.';
	@override String get borrowLoadFailed => 'Nem sikerült betölteni az elérhető kapcsolatokat. Próbáld újra.';
	@override String borrowFromProfile({required Object displayName}) => 'Innen: ${displayName}';
	@override String get borrowConnectionBorrowed => 'Kapcsolat átvéve.';
	@override String get borrowFailed => 'Nem sikerült átvenni a kapcsolatot.';
	@override String get incorrectPin => 'Helytelen PIN-kód.';
	@override String get incorrectPinTryAgain => 'Helytelen PIN-kód. Próbáld újra.';
	@override String get sourceProfileMissingParentAccount => 'A forrásprofilból hiányzik a szülőfiók.';
	@override String get failedToLoadHomeUsers => 'Nem sikerült betölteni a Plex Home-felhasználókat. Ellenőrizd a kapcsolatot, majd próbáld újra.';
	@override String get failedToVerifyPin => 'Nem sikerült a PIN-kód ellenőrzése.';
	@override String get newProfile => 'Új profil';
	@override String get profileNameHint => 'pl. Vendégek, Gyerekek, Nappali';
	@override String get pinProtectionOptional => 'PIN-védelem (opcionális)';
	@override String get pinExplain => '4 jegyű PIN-kód szükséges a profilváltáshoz.';
	@override String get continueButton => 'Folytatás';
	@override String get pinsDontMatch => 'A PIN-kódok nem egyeznek';
	@override String get tokenIdentityMismatch => 'A Plex-profil tokenje nem a várt szerverhez tartozik';
}

// Path: connections
class _Translations$connections$hu extends Translations$connections$en {
	_Translations$connections$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get sectionTitle => 'Kapcsolatok';
	@override String get addConnection => 'Kapcsolat hozzáadása';
	@override String get addConnectionSubtitleNoProfile => 'Jelentkezz be Plexszel, vagy csatlakoztass egy Jellyfin- vagy Emby-szervert';
	@override String addConnectionSubtitleScoped({required Object displayName}) => 'Hozzáadás a következőhöz (${displayName}): Plex, Jellyfin, Emby vagy más profilkapcsolat';
	@override String sessionExpiredOne({required Object name}) => 'A(z) ${name} munkamenete lejárt';
	@override String sessionExpiredMany({required Object count}) => '${count} szerver munkamenete lejárt';
	@override String accessDeniedOne({required Object name}) => 'A(z) ${name} megtagadta a hozzáférést ettől a fióktól';
	@override String accessDeniedMany({required Object count}) => '${count} szerver megtagadta a hozzáférést ettől a fióktól';
	@override String get signInAgain => 'Bejelentkezés újra';
	@override String editMediaBrowserTitle({required Object product}) => 'A(z) ${product} kapcsolat szerkesztése';
	@override String editMediaBrowserIntro({required Object serverName}) => 'Adjon hozzá vagy távolítson el URL-eket a(z) ${serverName} esetén. A Luroka a legkisebb késleltetésű, elérhető URL-t fogja használni.';
}

// Path: serversAccounts
class _Translations$serversAccounts$hu extends Translations$serversAccounts$en {
	_Translations$serversAccounts$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Szerverek és fiókok';
	@override String get subtitle => 'Bejelentkezési állapot a Plex, Jellyfin és Emby szerverekhez';
	@override String get online => 'Online';
	@override String get offline => 'Offline';
	@override String get unknown => 'Nincs itt bejelentkezve';
	@override String get usedByNone => 'Egyik profil sem használja';
	@override String usedByOne({required Object name}) => '${name} használta';
	@override String usedByMany({required Object name, required Object count}) => 'A ${name} és a ${count} tovább használja';
	@override String serversOnline({required Object online, required Object total}) => '${online}/${total} online szerverek';
	@override String get noServers => 'Még semmi sem kapcsolódik. Adja hozzá a Plex fiókját vagy egy Jellyfin vagy Emby szervert.';
	@override String get editUrls => 'Szerver URL-címeinek szerkesztése';
}

// Path: accountPreferences
class _Translations$accountPreferences$hu extends Translations$accountPreferences$en {
	_Translations$accountPreferences$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get sectionTitle => 'Fiókbeállítások';
	@override String hubSubtitleSingle({required Object account}) => 'Hang-, felirat- és könyvtárbeállítások mentve a(z) ${account} fiókra';
	@override String hubSubtitleMultiple({required Object count}) => 'Hang-, felirat- és könyvtárbeállítások mentve ${count} fiókra';
	@override String get pickAccount => 'Minden fiók a saját beállításait tárolja. Válaszd ki a szerkesztendőt.';
	@override String get storedOnAccount => 'Ezeket a beállításokat a rendszer a szerverfiókban menti, és megosztja minden, a fiókot használó Luroka profillal és alkalmazással, beleértve a többi eszközt is.';
	@override String get noAccounts => 'Nincs beállítható fiók';
	@override String get noAccountsHint => 'Jelentkezz be a Plexbe, vagy csatlakoztass egy Jellyfin- vagy Emby-szervert, és az azon a fiókon tárolt beállítások itt jelennek meg.';
	@override String get unavailable => 'Ez a fiók nem érhető el';
	@override String get loadFailed => 'Nem sikerült betölteni ezeket a beállításokat';
	@override String get noPreference => 'Nincs preferencia';
	@override String get notSet => 'Nincs beállítva';
	@override late final _Translations$accountPreferences$groups$hu groups = _Translations$accountPreferences$groups$hu._(_root);
	@override String get preferredAudioLanguage => 'Elsődleges hangnyelv';
	@override String get autoSelectAudio => 'Hangsáv kiválasztása nyelv alapján';
	@override String get autoSelectAudioDescription => 'Ki kapcsolásnál a fájl által alapértelmezettként megjelölt hangsáv marad.';
	@override String get preferredSubtitleLanguage => 'Elsődleges feliratnyelv';
	@override String get subtitleMode => 'Feliratok bekapcsolása';
	@override late final _Translations$accountPreferences$subtitleModes$hu subtitleModes = _Translations$accountPreferences$subtitleModes$hu._(_root);
	@override String get subtitleAccessibility => 'SDH-feliratok';
	@override late final _Translations$accountPreferences$subtitleAccessibilityOptions$hu subtitleAccessibilityOptions = _Translations$accountPreferences$subtitleAccessibilityOptions$hu._(_root);
	@override String get forcedSubtitles => 'Kényszerített feliratok';
	@override late final _Translations$accountPreferences$forcedSubtitleOptions$hu forcedSubtitleOptions = _Translations$accountPreferences$forcedSubtitleOptions$hu._(_root);
	@override String get displayMissingEpisodes => 'Hiányzó epizódok megjelenítése';
	@override String get displayMissingEpisodesDescription => 'Azoknak az epizódoknak a listázása, amelyeket a szerver ismer, de nincs hozzájuk fájl.';
	@override String get hidePlayedInLatest => 'Megnézett elemek elrejtése a Legújabbak között';
	@override String get hidePlayedInLatestDescription => 'A már megnézett elemek kimaradnak a szerver Legújabbak soraiból.';
	@override String get displayCollectionsView => 'Gyűjtemények nézet megjelenítése';
	@override String get displayCollectionsViewDescription => 'A szerver Gyűjtemények nézetének megjelenítése a könyvtárak mellett.';
	@override String get rewatchingInNextUp => 'Újranézett sorozatok megtartása a Következikben';
	@override String get rewatchingInNextUpDescription => 'Ha befejezel egy sorozatot, és újra elkezded, a Következik az újranézést követi, ahelyett hogy eldobná a sorozatot.';
	@override String get watchedIndicator => 'Megtekintett jelzések';
	@override late final _Translations$accountPreferences$watchedIndicatorOptions$hu watchedIndicatorOptions = _Translations$accountPreferences$watchedIndicatorOptions$hu._(_root);
	@override String get mediaReviewsVisibility => 'Értékelések és kritikák';
	@override late final _Translations$accountPreferences$mediaReviewsOptions$hu mediaReviewsOptions = _Translations$accountPreferences$mediaReviewsOptions$hu._(_root);
}

// Path: discover
class _Translations$discover$hu extends Translations$discover$en {
	_Translations$discover$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Felfedezés';
	@override String get noContentAvailable => 'Nincs elérhető tartalom';
	@override String get addMediaToLibraries => 'Adj hozzá médiát a könyvtáraidhoz';
	@override String get continueWatching => 'Folytatás';
	@override String continueWatchingIn({required Object library}) => 'Folytatás itt: ${library}';
	@override String get nextUp => 'Következik';
	@override String nextUpIn({required Object library}) => 'Következik itt: ${library}';
	@override String get recentlyAdded => 'Legutóbb hozzáadva';
	@override String recentlyAddedIn({required Object library}) => 'Legutóbb hozzáadva itt: ${library}';
	@override String latestAlbumsIn({required Object library}) => 'Legújabb albumok itt: ${library}';
	@override String recentlyPlayedIn({required Object library}) => 'Legutóbb lejátszva itt: ${library}';
	@override String mostPlayedIn({required Object library}) => 'Legtöbbször lejátszva itt: ${library}';
	@override String playEpisode({required Object season, required Object episode}) => '${season}. évad, ${episode}. epizód';
	@override String get overview => 'Áttekintés';
	@override String get cast => 'Szereplők';
	@override String get extras => 'Előzetesek és extrák';
	@override String get studio => 'Stúdió';
	@override String get rating => 'Értékelés';
	@override String get director => 'Rendező';
	@override String get directors => 'Rendezők';
	@override String get movie => 'Film';
	@override String get tvShow => 'TV-sorozat';
	@override String minutesLeft({required Object minutes}) => '${minutes} perc van hátra';
	@override String get moreLikeThis => 'Hasonló tartalmak';
	@override String titleCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n,
		one: '${n} cím',
		other: '${n} cím',
	);
	@override late final _Translations$discover$person$hu person = _Translations$discover$person$hu._(_root);
}

// Path: errors
class _Translations$errors$hu extends Translations$errors$en {
	_Translations$errors$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String searchFailed({required Object error}) => 'Keresés sikertelen: ${error}';
	@override String get searchUnavailable => 'A keresés egyetlen médiaszervert sem tudott elérni.';
	@override String connectionTimeout({required Object context}) => 'Hálózati időtúllépés a következő betöltésekor: ${context}';
	@override String get connectionFailed => 'Nem sikerült csatlakozni a médiaszerverhez';
	@override String unableToLoad({required Object context}) => 'Nem sikerült betölteni a következőt: ${context}. Próbáld újra.';
	@override String get noClientAvailable => 'Nincs elérhető kliens';
	@override String get pleaseEnterToken => 'Adj meg egy tokent';
	@override String get invalidToken => 'Érvénytelen token';
	@override String failedToVerifyToken({required Object error}) => 'Nem sikerült a token ellenőrzése: ${error}';
	@override String failedToSwitchProfile({required Object displayName}) => 'Nem sikerült átváltani a következő profilra: ${displayName}';
	@override String failedToDeleteProfile({required Object displayName}) => 'Nem sikerült törölni a következőt: ${displayName}';
	@override String get failedToRate => 'Nem sikerült frissíteni az értékelést';
	@override String get reasonTimedOut => 'időtúllépés történt a kapcsolatban';
	@override String get reasonUnreachable => 'a médiaszerver nem érhető el';
	@override String get reasonRefused => 'a médiaszerver elutasította a kérést';
	@override String get reasonNotFound => 'az elem már nem található a médiaszerveren';
	@override String get reasonServerError => 'a médiaszerver hibát jelzett';
	@override String get reasonCancelled => 'a kérés meg lett szakítva';
	@override String get reasonUnexpected => 'váratlan hiba történt';
}

// Path: libraries
class _Translations$libraries$hu extends Translations$libraries$en {
	_Translations$libraries$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Könyvtárak';
	@override String get fallbackTitle => 'Könyvtár';
	@override String get scanLibraryFiles => 'Könyvtárfájlok beolvasása';
	@override String get scanLibrary => 'Könyvtár beolvasása';
	@override String get analyze => 'Elemzés';
	@override String get analyzeLibrary => 'Könyvtár elemzése';
	@override String get refreshMetadata => 'Metaadatok frissítése';
	@override String get emptyTrash => 'Lomtár ürítése';
	@override String emptyingTrash({required Object title}) => 'Lomtár ürítése a következőhöz: "${title}"...';
	@override String trashEmptied({required Object title}) => 'Lomtár kiürítve a következőhöz: "${title}"';
	@override String failedToEmptyTrash({required Object error}) => 'Nem sikerült a lomtár ürítése: ${error}';
	@override String analyzing({required Object title}) => '"${title}" elemzése...';
	@override String analysisStarted({required Object title}) => 'Elemzés elindítva a következőhöz: "${title}"';
	@override String failedToAnalyze({required Object error}) => 'Nem sikerült a könyvtár elemzése: ${error}';
	@override String get noLibrariesFound => 'Nem találhatók könyvtárak';
	@override String get allLibrariesHidden => 'Minden könyvtár el van rejtve';
	@override String hiddenLibrariesCount({required Object count}) => 'Rejtett könyvtárak (${count})';
	@override String get thisLibraryIsEmpty => 'Ez a könyvtár üres';
	@override String get noItemsMatchFilters => 'Nincs az aktív szűrőknek megfelelő elem';
	@override String get resetFilters => 'Szűrők visszaállítása';
	@override String get all => 'Összes';
	@override String get clearAll => 'Összes törlése';
	@override String scanLibraryConfirm({required Object title}) => 'Biztosan be szeretnéd olvasni a következőt: "${title}"?';
	@override String analyzeLibraryConfirm({required Object title}) => 'Biztosan elemezni szeretnéd a következőt: "${title}"?';
	@override String refreshMetadataConfirm({required Object title}) => 'Biztosan frissíteni szeretnéd a metaadatokat a következőhöz: "${title}"?';
	@override String emptyTrashConfirm({required Object title}) => 'Biztosan ki szeretnéd üríteni a lomtárat a következőnél: "${title}"?';
	@override String get manageLibraries => 'Könyvtárak kezelése';
	@override String get sort => 'Rendezés';
	@override String get sortBy => 'Rendezés ez alapján';
	@override String get filters => 'Szűrők';
	@override String get confirmActionMessage => 'Biztosan végre szeretnéd hajtani ezt a műveletet?';
	@override String get showLibrary => 'Könyvtár megjelenítése';
	@override String get hideLibrary => 'Könyvtár elrejtése';
	@override String get libraryOptions => 'Könyvtár beállításai';
	@override String get content => 'könyvtár tartalma';
	@override String get selectLibrary => 'Könyvtár kiválasztása';
	@override String filtersWithCount({required Object count}) => 'Szűrők (${count})';
	@override String get noRecommendations => 'Nincsenek elérhető ajánlások';
	@override String get noCollections => 'Nincsenek gyűjtemények ebben a könyvtárban';
	@override String get noFoldersFound => 'Nem találhatók mappák';
	@override String get folders => 'mappák';
	@override late final _Translations$libraries$tabs$hu tabs = _Translations$libraries$tabs$hu._(_root);
	@override late final _Translations$libraries$groupings$hu groupings = _Translations$libraries$groupings$hu._(_root);
	@override late final _Translations$libraries$filterCategories$hu filterCategories = _Translations$libraries$filterCategories$hu._(_root);
	@override late final _Translations$libraries$sortLabels$hu sortLabels = _Translations$libraries$sortLabels$hu._(_root);
	@override late final _Translations$libraries$advancedFilters$hu advancedFilters = _Translations$libraries$advancedFilters$hu._(_root);
}

// Path: about
class _Translations$about$hu extends Translations$about$en {
	_Translations$about$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Névjegy';
	@override String get openSourceLicenses => 'Nyílt forráskódú licencek';
	@override String versionLabel({required Object version}) => 'Verzió: ${version}';
	@override String get appDescription => 'Gyönyörű Flutter-kliens a Plexhez, a Jellyfinhez és az Embyhez';
	@override String get customSource => 'Forráskód';
	@override String get basedOnLuroka => 'A Plezy kódbázisra épült';
	@override String get viewLicensesDescription => 'Külső fejlesztésű programkönyvtárak licenceinek megtekintése';
	@override String get appSection => 'App';
	@override String get communitySection => 'közösség';
	@override String get creditsSection => 'Kredit';
	@override String get legalSection => 'Jogi';
	@override String versionMeta({required Object version, required Object build, required Object platform}) => 'v${version} (${build}) · ${platform}';
	@override String versionMetaNoBuild({required Object version, required Object platform}) => 'v${version} · ${platform}';
	@override String get versionUnavailable => 'A verzió nem elérhető';
	@override String get versionDetails => 'Verzió részletei';
	@override String versionDetailsTitle({required Object version, required Object build}) => 'Luroka ${version} (${build})';
	@override String platformLine({required Object platform}) => 'Platform: ${platform}';
	@override String deviceLine({required Object model}) => 'Készülék: ${model}';
	@override String packageLine({required Object package}) => 'Csomag: ${package}';
	@override String localeLine({required Object locale}) => 'Nyelv: ${locale}';
	@override String get copyDetails => 'Részletek másolása';
	@override String get detailsCopied => 'Az alkalmazás részletei másolva';
	@override String get detailsCopyFailed => 'Nem sikerült átmásolni az alkalmazás részleteit';
	@override String get checkForUpdatesDescription => 'Keressen egy újabb kiadást a GitHubban';
	@override String get checkingForUpdates => 'Frissítések keresése…';
	@override String get whatsNew => 'Újdonságok';
	@override String get releaseNotesUnavailable => 'Nem állnak rendelkezésre kiadási megjegyzések.';
	@override String get sourceCodeDescription => 'Luroka a GitHubon';
	@override String get reportIssue => 'Probléma bejelentése';
	@override String get reportIssueDescription => 'Mondja el, mi történt';
	@override String get documentation => 'Dokumentáció';
	@override String get documentationDescription => 'Beállítás, szolgáltatások és összeállítási megjegyzések';
	@override String get upstreamProjectDescription => 'Az edde746 és a közreműködők nyílt forráskódú projektje';
	@override String get upstreamWebsite => 'Upstream weboldal';
	@override String get attribution => 'Adatok és forrásmegjelölés';
	@override String get attributionDescription => 'Metaadatok, értékelések és védjegyek';
	@override String get attributionBody => 'Ez a termék a TMDB API kódot használja, de a TMDB nem hagyja jóvá vagy tanúsítja. A népszerűségi listákat, a metaadatokat és a IMDb értékeléseket a Cinemeta biztosítja. A pontszámok megtartják a forráscímkéket.';
	@override String get trademarkNotices => 'Plex, Jellyfin, Emby, Trakt, Simkl, MyAnimeList, AniList, AniList, ZXQKEZQ és kapcsolódó védjegyeik tulajdonosok. A Luroka nem áll kapcsolatban velük, és nem támogatják őket.';
	@override String get privacyPolicy => 'Adatvédelmi szabályzat';
	@override String get privacyPolicyDescription => 'Hogyan kezeljük adatait';
	@override String get gplLicense => 'GNU GPL-3.0 licenc';
	@override String get gplLicenseDescription => 'A Luroka ingyenes szoftver';
	@override String get linkOpenFailed => 'Nem sikerült megnyitni ezt a linket';
	@override String get opensInBrowser => 'Megnyílik a böngészőben';
	@override String get footer => 'A Luroka egy ingyenes szoftver GPL-3.0 alatt.';
	@override String copyright({required Object year}) => '© ${year} Luroka közreműködők';
}

// Path: serverSelection
class _Translations$serverSelection$hu extends Translations$serverSelection$en {
	_Translations$serverSelection$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String noServersFoundForAccount({required Object username, required Object email}) => 'Nem találhatók szerverek ehhez a fiókhoz: ${username} (${email})';
	@override String failedToLoadServers({required Object error}) => 'Nem sikerült a szerverek betöltése: ${error}';
	@override String get noValidServers => 'Nem található használható szerver ehhez a fiókhoz';
}

// Path: hubDetail
class _Translations$hubDetail$hu extends Translations$hubDetail$en {
	_Translations$hubDetail$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cím';
	@override String get releaseYear => 'Kiadási év';
	@override String get dateAdded => 'Hozzáadás dátuma';
	@override String get rating => 'Értékelés';
	@override String get noItemsFound => 'Nem találhatók elemek';
}

// Path: logs
class _Translations$logs$hu extends Translations$logs$en {
	_Translations$logs$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get clearLogs => 'Naplók törlése';
	@override String get copyLogs => 'Naplók másolása';
	@override String get uploadLogs => 'Naplók feltöltése';
}

// Path: startup
class _Translations$startup$hu extends Translations$startup$en {
	_Translations$startup$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get failedTitle => 'A Luroka nem tudott elindulni';
	@override String get failedBody => 'Valami hiba történt az indítás során. Az alábbi részletek mutatják, mi hibázott.';
	@override String get failedBodyRepairable => 'A Luroka mentett beállításfájlja sérült, és újra kell építeni, mielőtt a Luroka elindulhatna. Az újrapróbálkozás nem segít – válassza a Tárhely javítása lehetőséget.';
	@override String get phaseLabel => 'Lépés';
	@override String get showDetails => 'Részletek megjelenítése';
	@override String get hideDetails => 'Részletek elrejtése';
	@override String get copyDetails => 'Részletek másolása';
	@override String get detailsCopied => 'A részletek a vágólapra kerültek';
	@override String get uploadDetails => 'Részletek feltöltése';
	@override String get repairStorage => 'Tárhely javítása';
	@override String get repairTitle => 'Javítsuk a tárolt adatokat?';
	@override String get repairBodyCommon => 'A Luroka beállításfájlja sérült, és nem olvasható. A javítás minden beállítást visszaállít az alapértelmezettre.';
	@override String get repairBodyOneCredential => 'Egy mentett bejelentkezés sérült, és nem olvasható. A javítás csak azt távolítja el; a többi beállítása érintetlen marad.';
	@override String get repairBodySignInsKept => 'A szervereinek és profiljainak bejelentkezve kell maradniuk.';
	@override String get repairBodySignInsLost => 'A mentett bejelentkezéseket védő kulcs nem nyerhető vissza ebből a fájlból, ezért minden szerverre és profilba újra be kell jelentkeznie. A médiaszerveren semmi nem érintett.';
	@override String get repairBodySessionsUncertain => 'A nyomkövetők (MAL, AniList, Simkl, Trakt) és a Seerr külön vannak tárolva, és megmaradhatnak vagy nem. A Luroka pontosan megmondja, mit őrzött meg.';
	@override String get repairConfirm => 'Javítás';
	@override String get repairSucceeded => 'A tárhely javítva';
	@override String get repairNeedsRestart => 'A tárhely javítva – újraindítás szükséges';
	@override String get restartRequiredBody => 'Az adatait kijavítottuk, de a Luroka-nek frissen kell elindulnia, mielőtt használhatná. Zárja be a Luroka-t, és nyissa meg újra.';
	@override String get quitLuroka => 'Kilépés a Luroka-ből';
	@override String get repairFailed => 'A javítás nem sikerült';
	@override String get repairKeptSignIns => 'A szerverei és profiljai továbbra is be vannak jelentkezve.';
	@override String get repairLostSignIns => 'A mentett bejelentkezéseket védő kulcs nem volt visszanyerhető. Minden szerverre és profilba újra be kell jelentkeznie.';
	@override String get repairLostSessions => 'Legalább egy nyomkövető- vagy Seerr-kapcsolat elveszett, és újra kell csatlakoztatni.';
	@override String get backupTitle => 'A sérült fájlról másolat készült';
	@override String get backupWarning => 'Bejelentkezési adatait tartalmazza. Ne töltse fel és ne ossza meg.';
	@override String get deleteBackup => 'Másolat törlése';
	@override String get backupDeleted => 'A másolat törölve.';
	@override String get previousFailureTitle => 'A Luroka legutóbb nem tudott elindulni';
}

// Path: licenses
class _Translations$licenses$hu extends Translations$licenses$en {
	_Translations$licenses$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get relatedPackages => 'Kapcsolódó csomagok';
	@override String get license => 'Licenc';
	@override String licenseNumber({required Object number}) => '${number}. licenc';
	@override String licensesCount({required Object count}) => '${count} licenc';
	@override String get searchHint => 'Csomagok keresése';
	@override String noResults({required Object query}) => 'Nincs a "${query}"-nak megfelelő csomag';
	@override String get clearSearch => 'Keresés törlése';
}

// Path: navigation
class _Translations$navigation$hu extends Translations$navigation$en {
	_Translations$navigation$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get libraries => 'Könyvtárak';
	@override String get downloads => 'Letöltések';
	@override String get liveTv => 'Élő TV';
	@override String get explore => 'Böngészés';
}

// Path: explore
class _Translations$explore$hu extends Translations$explore$en {
	_Translations$explore$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Böngészés';
	@override String get selectSource => 'Forrás kiválasztása';
	@override late final _Translations$explore$rows$hu rows = _Translations$explore$rows$hu._(_root);
	@override late final _Translations$explore$status$hu status = _Translations$explore$status$hu._(_root);
	@override String episodeCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n,
		one: '${n} epizód',
		other: '${n} epizód',
	);
	@override String get cast => 'Szereplők';
	@override String get characters => 'Karakterek';
	@override String get addToWatchlist => 'Hozzáadás a Néznivalókhoz';
	@override String get removeFromWatchlist => 'Eltávolítás a Néznivalókból';
	@override String get addedToWatchlist => 'Hozzáadva a figyelőlistához';
	@override String get removedFromWatchlist => 'Eltávolítva a figyelőlistáról';
	@override String get watchlistUpdateFailed => 'Nem sikerült a Néznivalók frissítése';
	@override String get watchlistNoMatch => 'Nem sikerült ezt az elemet figyelőlistához társítani';
	@override String get notInLibrary => 'Nincs a könyvtáradban';
	@override String get inTheseLibraries => 'Ezekben a könyvtárakban';
	@override String get checkingLibrary => 'Könyvtár ellenőrzése...';
	@override String libraryCheckFailed({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n,
		one: 'Nem sikerült ${n} szervert ellenőrizni',
		other: 'Nem sikerült ${n} szervert ellenőrizni',
	);
	@override String get emptyTitle => 'Még nincs itt semmi';
	@override String emptyMessage({required Object source}) => 'A(z) ${source} forrásból származó sorok itt fognak megjelenni, amint van tartalmuk.';
	@override String searchHint({required Object source}) => 'Keresés itt: ${source}';
	@override String searchEmpty({required Object query}) => 'Nincs találat a következőre: "${query}"';
	@override String searchPrompt({required Object source}) => 'Filmek és sorozatok keresése a következőn: ${source}.';
	@override String get searchFailed => 'A keresés nem sikerült. Ellenőrizd a kapcsolatot és próbáld újra.';
	@override late final _Translations$explore$badge$hu badge = _Translations$explore$badge$hu._(_root);
	@override late final _Translations$explore$stats$hu stats = _Translations$explore$stats$hu._(_root);
	@override late final _Translations$explore$season$hu season = _Translations$explore$season$hu._(_root);
	@override late final _Translations$explore$format$hu format = _Translations$explore$format$hu._(_root);
	@override late final _Translations$explore$sourceMaterial$hu sourceMaterial = _Translations$explore$sourceMaterial$hu._(_root);
	@override late final _Translations$explore$creditRole$hu creditRole = _Translations$explore$creditRole$hu._(_root);
	@override late final _Translations$explore$relation$hu relation = _Translations$explore$relation$hu._(_root);
	@override String broadcast({required Object day, required Object time}) => 'Adásban: ${day}, ${time} órakor';
	@override String broadcastWithZone({required Object day, required Object time, required Object timezone}) => 'Adásban: ${day}, ${time} ${timezone}';
	@override late final _Translations$explore$detail$hu detail = _Translations$explore$detail$hu._(_root);
	@override String totalResults({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n,
		one: '${n} találat',
		other: '${n} találat',
	);
}

// Path: liveTv
class _Translations$liveTv$hu extends Translations$liveTv$en {
	_Translations$liveTv$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Élő TV';
	@override String get guide => 'Műsorújság';
	@override String get noChannels => 'Nincsenek elérhető csatornák';
	@override String get noDvr => 'Egyik szerveren sincs beállítva DVR';
	@override String get serverUnavailable => 'Az Élő TV szerver nem érhető el.';
	@override String get serverNotConnected => 'Az Élő TV szerver nincs csatlakoztatva.';
	@override String get noPrograms => 'Nincsenek elérhető műsoradatok';
	@override String get liveStreamFailed => 'Nem sikerült elindítani az élő adást';
	@override String get unknownProgram => 'Ismeretlen műsor';
	@override String get unknownHub => 'Ismeretlen';
	@override String get unknownError => 'Ismeretlen hiba';
	@override String channelNumber({required Object number}) => '${number}. csatorna';
	@override String get unknownChannel => 'Ismeretlen csatorna';
	@override String get live => 'ÉLŐ';
	@override String get reloadGuide => 'Műsorújság újratöltése';
	@override String get searchGuide => 'Keresés a műsorújságban';
	@override String get searchHint => 'Csatornák és műsorok keresése';
	@override String searchNoResults({required Object query}) => 'Nincs találat a következőre: "${query}"';
	@override String get channelsSection => 'Csatornák';
	@override String get programsSection => 'Műsorok';
	@override String get now => 'Most';
	@override String get today => 'Ma';
	@override String get tomorrow => 'Holnap';
	@override String get midnight => 'Éjfél';
	@override String get overnight => 'Késő éjszaka';
	@override String get morning => 'Reggel';
	@override String get daytime => 'Napközben';
	@override String get evening => 'Este';
	@override String get lateNight => 'Éjszaka';
	@override String get whatsOn => 'Mi megy most?';
	@override String get watchChannel => 'Csatorna nézése';
	@override String get favorites => 'Kedvencek';
	@override String get reorderFavorites => 'Kedvencek rendezése';
	@override String get noFavoriteChannels => 'Nincsenek kedvenc csatornák';
	@override String get noFavoriteChannelsHint => 'Jelenítsd meg az összes csatornát, majd hosszan nyomj meg egy csatornát, hogy hozzáadd a kedvenceidhez.';
	@override String get showAllChannels => 'Összes csatorna megjelenítése';
	@override String get favoritesLoadFailed => 'Nem sikerült a kedvencek betöltése. Ellenőrizd a kapcsolatot és próbáld újra.';
	@override String get favoritesUpdateFailed => 'Nem sikerült frissíteni a kedvenceket. Ellenőrizd a kapcsolatot, majd próbáld újra.';
	@override String get joinSession => 'Csatlakozás a folyamatban lévő adáshoz';
	@override String watchFromStart({required Object minutes}) => 'Nézés az elejétől (${minutes} perce megy)';
	@override String get watchLive => 'Élő adás nézése';
	@override String get goToLive => 'Ugrás az élő adásra';
	@override String get record => 'Felvétel';
	@override String get recordEpisode => 'Epizód rögzítése';
	@override String get recordSeries => 'Sorozat rögzítése';
	@override String get recordOptions => 'Felvételi beállítások';
	@override String get saveTo => 'Mentés ide';
	@override String get recordings => 'Felvételek';
	@override String get scheduledRecordings => 'Ütemezve';
	@override String get recordingRules => 'Felvételi szabályok';
	@override String get noScheduledRecordings => 'Nincs semmi felvételre ütemezve';
	@override String get manageRecording => 'Felvétel kezelése';
	@override String get cancelRecording => 'Felvétel megszakítása';
	@override String get cancelRecordingTitle => 'Megszakítod ezt a felvételt?';
	@override String cancelRecordingMessage({required Object title}) => 'A(z) ${title} nem kerül rögzítésre.';
	@override String get deleteRule => 'Szabály törlése';
	@override String get deleteRuleTitle => 'Törlöd a felvételi szabályt?';
	@override String deleteRuleMessage({required Object title}) => 'A(z) ${title} jövőbeli epizódjai nem kerülnek rögzítésre.';
	@override String get recordingScheduled => 'Felvétel ütemezve';
	@override String get alreadyScheduled => 'Ez a műsor már ütemezve van';
	@override String get dvrAdminRequired => 'A DVR beállításokhoz adminisztrátori fiók szükséges';
	@override String get recordingFailed => 'Nem sikerült a felvétel ütemezése';
	@override String get recordingTargetMissing => 'Nem sikerült meghatározni a felvételi könyvtárat';
	@override String get recordNotAvailable => 'A felvétel nem érhető el ehhez a műsorhoz';
	@override String get recordingCancelled => 'Felvétel megszakítva';
	@override String get recordingRuleDeleted => 'Felvételi szabály törölve';
	@override String get processRecordingRules => 'Szabályok újraértékelése';
	@override String get recordingInProgress => 'Rögzítés folyamatban';
	@override String recordingsCount({required Object count}) => '${count} ütemezve';
	@override String get editRule => 'Szabály szerkesztése';
	@override String get editRuleAction => 'Szerkesztés';
	@override String get recordingRuleUpdated => 'Felvételi szabály frissítve';
	@override String get guideReloadRequested => 'Műsorújság frissítése kérve';
	@override String get guideReloadFailed => 'Nem sikerült frissíteni a műsorújságot';
	@override String get rulesProcessRequested => 'Szabályok újraértékelése kérve';
	@override String get rulesProcessFailed => 'Nem sikerült újra kiértékelni a felvételi szabályokat';
	@override String get recordShow => 'Műsor rögzítése';
	@override late final _Translations$liveTv$recordSettings$hu recordSettings = _Translations$liveTv$recordSettings$hu._(_root);
	@override String startingInMinutes({required Object minutes}) => '${minutes} perc múlva kezdődik';
	@override String dayAtTime({required Object day, required Object time}) => '${day}, ${time}';
	@override String invalidPlaybackData({required Object product}) => 'A(z) ${product} érvénytelen Élő TV-lejátszási adatokat adott vissza';
	@override String get failedToStartChannel => 'Nem sikerült elindítani az élő csatornát';
	@override String get failedToBuildStreamUrl => 'Nem sikerült összeállítani a stream URL-címét';
	@override String playbackStartFailed({required Object reason}) => 'Nem sikerült elindítani a csatornát: ${reason}';
	@override String channelSwitchFailed({required Object reason}) => 'Nem sikerült csatornát váltani: ${reason}';
}

// Path: collections
class _Translations$collections$hu extends Translations$collections$en {
	_Translations$collections$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gyűjtemények';
	@override String get collection => 'Gyűjtemény';
	@override String get empty => 'A gyűjtemény üres';
	@override String get deleteCollection => 'Gyűjtemény törlése';
	@override String deleteConfirm({required Object title}) => 'Törlöd a következőt: "${title}"? Ez nem vonható vissza.';
	@override String get deleted => 'Gyűjtemény törölve';
	@override String get deleteFailed => 'Nem sikerült a gyűjtemény törlése';
	@override String deleteFailedWithError({required Object error}) => 'Nem sikerült a gyűjtemény törlése: ${error}';
	@override String get selectCollection => 'Gyűjtemény kiválasztása';
	@override String get collectionName => 'Gyűjtemény neve';
	@override String get enterCollectionName => 'Add meg a gyűjtemény nevét';
	@override String get addedToCollection => 'Hozzáadva a gyűjteményhez';
	@override String get errorAddingToCollection => 'Nem sikerült a gyűjteményhez adni';
	@override String get created => 'Gyűjtemény létrehozva';
	@override String get removeFromCollection => 'Eltávolítás a gyűjteményből';
	@override String removeFromCollectionConfirm({required Object title}) => 'Eltávolítod a következőt: "${title}" ebből a gyűjteményből?';
	@override String get removedFromCollection => 'Eltávolítva a gyűjteményből';
	@override String get removeFromCollectionFailed => 'Nem sikerült az eltávolítás a gyűjteményből';
	@override String removeFromCollectionError({required Object error}) => 'Hiba a gyűjteményből való eltávolításkor: ${error}';
	@override String get searchCollections => 'Gyűjtemények keresése...';
}

// Path: playlists
class _Translations$playlists$hu extends Translations$playlists$en {
	_Translations$playlists$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lejátszási listák';
	@override String get playlist => 'Lejátszási lista';
	@override String get noPlaylists => 'Nem találhatók lejátszási listák';
	@override String get create => 'Lejátszási lista létrehozása';
	@override String get playlistName => 'Lejátszási lista neve';
	@override String get enterPlaylistName => 'Add meg a lejátszási lista nevét';
	@override String get delete => 'Lejátszási lista törlése';
	@override String get removeItem => 'Eltávolítás a lejátszási listáról';
	@override String get smartPlaylist => 'Okos lejátszási lista';
	@override String itemCount({required Object count}) => '${count} elem';
	@override String get oneItem => '1 elem';
	@override String get emptyPlaylist => 'Ez a lejátszási lista üres';
	@override String get deleteConfirm => 'Törlöd a lejátszási listát?';
	@override String deleteMessage({required Object name}) => 'Biztosan törölni szeretnéd a következőt: "${name}"?';
	@override String get created => 'Lejátszási lista létrehozva';
	@override String get deleted => 'Lejátszási lista törölve';
	@override String get itemAdded => 'Hozzáadva a lejátszási listához';
	@override String get itemRemoved => 'Eltávolítva a lejátszási listáról';
	@override String get selectPlaylist => 'Lejátszási lista kiválasztása';
	@override String get searchPlaylists => 'Lejátszási listák keresése...';
	@override String get errorCreating => 'Nem sikerült a lejátszási lista létrehozása';
	@override String get errorDeleting => 'Nem sikerült a lejátszási lista törlése';
	@override String get errorLoading => 'Nem sikerült a lejátszási listák betöltése';
	@override String get errorAdding => 'Nem sikerült a lejátszási listához adni';
	@override String get errorReordering => 'Nem sikerült átrendezni a lejátszási lista elemét';
	@override String get errorRemoving => 'Nem sikerült az eltávolítás a lejátszási listáról';
}

// Path: music
class _Translations$music$hu extends Translations$music$en {
	_Translations$music$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get goToAlbum => 'Ugrás az albumhoz';
	@override String get goToArtist => 'Ugrás az előadóhoz';
	@override String get instantMix => 'Azonnali keverés';
	@override String get playNext => 'Következő lejátszása';
	@override String get addToQueue => 'Hozzáadás a lejátszási sorhoz';
	@override String discNumber({required Object n}) => '${n}. lemez';
	@override String trackCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n,
		one: '${n} zeneszám',
		other: '${n} zeneszám',
	);
	@override String get nowPlaying => 'Most szól';
	@override String playingFrom({required Object title}) => 'Lejátszás innen: ${title}';
	@override String get queue => 'Lejátszási sor';
	@override String get clearQueue => 'Sor törlése';
	@override String get lyrics => 'Dalszöveg';
	@override String get noLyrics => 'Nincs elérhető dalszöveg';
	@override String get sleepTimer => 'Elalvási időzítő';
	@override String get sleepTimerEndOfTrack => 'Zeneszám vége';
	@override String sleepTimerMinutes({required Object n}) => '${n} perc';
	@override String get stopPlayback => 'Lejátszás leállítása';
	@override String get previousTrack => 'Előző szám';
	@override String get nextTrack => 'Következő szám';
	@override String get repeat => 'Ismétlés';
	@override String get repeatAll => 'Összes ismétlése';
	@override String get repeatOne => 'Egy szám ismétlése';
	@override String get instantMixNoServer => 'Nem érhető el szerver az azonnali mixhez';
	@override String get instantMixFailed => 'Nem sikerült betölteni az azonnali mixet';
	@override String get instantMixEmpty => 'Az azonnali mix nem adott vissza zeneszámokat';
	@override String noAudioUrl({required Object track}) => 'Nem érhető el hang-URL ehhez: ${track}';
	@override late final _Translations$music$discography$hu discography = _Translations$music$discography$hu._(_root);
}

// Path: watchTogether
class _Translations$watchTogether$hu extends Translations$watchTogether$en {
	_Translations$watchTogether$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Watch Together (Közös nézés)';
	@override String get description => 'Nézz tartalmat szinkronban barátaiddal és családoddal';
	@override String get createRoom => 'Szoba létrehozása';
	@override String get creatingRoom => 'Szoba létrehozása...';
	@override String get joinRoom => 'Csatlakozz a szobához';
	@override String get joiningRoom => 'Csatlakozás a szobához...';
	@override String get connecting => 'Csatlakozás...';
	@override String get relayPublic => 'A szobák nyilvános Open Watch Party közvetítéseket használnak.';
	@override String relayCustom({required Object url}) => 'A szobák a ${url} reléjét használják.';
	@override String get recentRooms => 'Legutóbbi szobák';
	@override String get roomActions => 'Szobaműveletek';
	@override String get renameRoom => 'Szoba átnevezése';
	@override String get removeRoom => 'Eltávolítás';
	@override String get enterRoomCode => 'Írja be a 6 karakterből álló kódot a gazdagéptől.';
	@override String get roomCode => 'Szobakód';
	@override String get paste => 'Beillesztés';
	@override String get noCodeInClipboard => 'A vágólap nem tartalmaz szobakódot';
	@override String get copyCode => 'Kód másolása';
	@override String get codeCopied => 'A szoba kódja másolva';
	@override String get shareInvite => 'Meghívás megosztása';
	@override String get qrShare => 'QR-kód megosztása';
	@override String get qrHint => 'Olvassa be a Luroka alkalmazással, hogy csatlakozzon ehhez a szobához.';
	@override String get phasePlaying => 'Játék';
	@override String get phasePaused => 'Szüneteltetve';
	@override String get phaseWaiting => 'Mindenkit várok';
	@override String get inviteCopied => 'Meghívó másolva. Illessze be egy üzenetbe.';
	@override String inviteMessage({required Object code}) => 'Csatlakozzon a Watch Together szobámhoz a Luroka-ban: luroka://watch?code=${code} — vagy nyissa meg a Watch Together alkalmazást, és írja be a ${code} kódot.';
	@override String get openSessionControls => 'Watch Together munkamenet-vezérlők megnyitása';
	@override String get reconnecting => 'Újracsatlakozás...';
	@override String get reconnectingDescription => 'A kapcsolat megszakadt. Ön automatikusan újra csatlakozik a szobához.';
	@override String get connected => 'Csatlakozva';
	@override String get disconnected => 'Lekapcsolva';
	@override String get youAreHost => 'Te vagy a házigazda';
	@override String hostedBy({required Object name}) => 'Házigazda: ${name}';
	@override String get hostControlsPlayback => 'A házigazda vezérli a lejátszást';
	@override String get anyoneCanControl => 'Bárki vezérelheti a lejátszást';
	@override String get roomLocked => 'Szoba zárva';
	@override String get nowPlaying => 'Most játszik';
	@override String get nothingPlaying => 'Semmi sem játszik';
	@override String get nothingPlayingHost => 'Játssz le valamit bármelyik könyvtárból, és oszd meg a szobával.';
	@override String get nothingPlayingGuest => 'Amikor a műsorvezető játszik valamit, itt nyílik meg.';
	@override String get notShareable => 'Ennek a videónak nincs katalógusegyezése, ezért csak olyan személyek játszhatják le, akik hozzáférnek ugyanahhoz a szerverhez.';
	@override String get searching => 'Ezt a videót keresed a könyvtáraidban...';
	@override String get yourCopy => 'A te példányod';
	@override String get sharingYourCopy => 'Megosztod a példányodat';
	@override String playingOtherLength({required Object difference}) => 'Az Ön példányának lejátszása, ${difference}';
	@override String get mismatchTitle => 'Az Ön másolata eltérő hosszúságú';
	@override String mismatchDescription({required Object difference}) => 'A legközelebbi példány a ${difference}, mint a szoba videója. Lehet egy másik vágás vagy változat.';
	@override String get playAnyway => 'Játssz egyébként';
	@override String get chooseAnotherCopy => 'Válasszon másik másolatot';
	@override String get dontPlay => 'Ne játssz';
	@override String get unavailableTitle => 'Nincs meg ez a videó';
	@override String get unavailableDescription => 'A Luroka nem találta a könyvtáraiban. Válasszon ki egy példányt, vagy keressen újra.';
	@override String get chooseCopy => 'Válasszon egy másolatot';
	@override String get searchAgain => 'Keresés újra';
	@override String get noCandidates => 'Nem találhatók másolatok a könyvtáraiban.';
	@override String get choiceFailed => 'Ezt a példányt nem lehetett lejátszani a szobában';
	@override String lengthLonger({required Object duration}) => '${duration} hosszabb';
	@override String lengthShorter({required Object duration}) => '${duration} rövidebb';
	@override String get lengthSame => 'Ugyanolyan hosszú';
	@override String get lengthUnknown => 'Hossza ismeretlen';
	@override String get joinCurrentPlayback => 'Csatlakozás a jelenlegi lejátszáshoz';
	@override String get joinCurrentPlaybackDescription => 'Visszatérés ahhoz, amit a házigazda éppen néz';
	@override String get stopMedia => 'Videó leállítása mindenkinek';
	@override String get syncOffset => 'Szinkronizálás eltolása';
	@override String get syncOffsetDescription => 'Változtassa el a videót, ha az a szoba előtt vagy mögött fut.';
	@override String offsetHint({required Object difference}) => 'Az Ön másolata ${difference}, mint a szoba videója.';
	@override String applyDifference({required Object offset}) => 'Használja a ${offset}-t';
	@override String get offsetMinusSecond => '-1 s';
	@override String get offsetMinusTenth => '-100 ms';
	@override String get offsetPlusTenth => '+100 ms';
	@override String get offsetPlusSecond => '+1 s';
	@override String get participants => 'Résztvevők';
	@override String participantCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n,
		one: '${n} résztvevő',
		other: '${n} résztvevők',
	);
	@override String get hostBadge => 'HÁZIGAZDA';
	@override String nameYou({required Object name}) => '${name} (Ön)';
	@override String get playerIdle => 'Tétlen';
	@override String get playerLoading => 'Betöltés';
	@override String get playerReady => 'Kész';
	@override String get playerBuffering => 'Pufferelés';
	@override String get matchSearching => 'Keresés';
	@override String get matchMatched => 'Megvan a videó';
	@override String get matchMismatched => 'Különböző hosszúságú';
	@override String get matchUnavailable => 'Nincs benne a videó';
	@override String participantOffset({required Object offset}) => 'Eltolás ${offset}';
	@override String get makeHost => 'Házigazdává tétel';
	@override String get makeHostQuestion => 'Átadod a házigazdaságot?';
	@override String makeHostConfirm({required Object name}) => '${name} vezérli majd a lejátszást és a munkamenetet mindenki számára.';
	@override String get transfer => 'Átadás';
	@override String get removeParticipant => 'Távolítsa el a szobából';
	@override String removeParticipantQuestion({required Object name}) => 'Eltávolítja a ${name}-t?';
	@override String removeParticipantConfirm({required Object name}) => '${name} elhagyja a szobát. Hacsak nem zárja be a szobát, újra csatlakozhatnak a kóddal.';
	@override String get remove => 'Távolítsa el';
	@override String get roomSettings => 'Szobabeállítások';
	@override String get letEveryoneControl => 'Mindenki irányíthatja a lejátszást';
	@override String get lockRoom => 'Záróterem';
	@override String get lockRoomDescription => 'Senki új nem csatlakozhat';
	@override String get leaveRoom => 'Hagyja el a szobát';
	@override String get leaveRoomQuestion => 'Kilép a szobából?';
	@override String get leaveRoomConfirm => 'A szobakóddal újra csatlakozhatsz.';
	@override String get leave => 'Kilépés';
	@override String get endRoom => 'Végső szoba';
	@override String get endRoomQuestion => 'Szoba vége?';
	@override String get endRoomConfirm => 'Ezzel mindenki számára véget ér a szoba.';
	@override String get end => 'Befejezés';
	@override String get playBlockedTitle => 'A lejátszás nem indult el';
	@override String get playBlockedDescription => 'Nyomja meg a lejátszást a szoba nézésének megkezdéséhez.';
	@override late final _Translations$watchTogether$notices$hu notices = _Translations$watchTogether$notices$hu._(_root);
	@override late final _Translations$watchTogether$ended$hu ended = _Translations$watchTogether$ended$hu._(_root);
	@override late final _Translations$watchTogether$errors$hu errors = _Translations$watchTogether$errors$hu._(_root);
	@override String untitledEpisode({required Object number}) => '${number} epizód';
}

// Path: downloads
class _Translations$downloads$hu extends Translations$downloads$en {
	_Translations$downloads$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Letöltések';
	@override String get manage => 'Kezelés';
	@override String get tvShows => 'TV-sorozatok';
	@override String get movies => 'Filmek';
	@override String get music => 'Zene';
	@override String tracksQueued({required Object count}) => '${count} zeneszám letöltésre sorba állítva';
	@override String get noDownloads => 'Még nincsenek letöltések';
	@override String get noDownloadsDescription => 'A letöltött tartalmak itt jelennek meg az offline megtekintéshez';
	@override String get downloadNow => 'Letöltés';
	@override String get deleteDownload => 'Letöltés törlése';
	@override String get retryDownload => 'Letöltés újrapróbálása';
	@override String get downloadQueued => 'Letöltés sorba állítva';
	@override String get downloadResumed => 'Letöltés folytatva';
	@override String get serverErrorBitrate => 'Szerverhiba: a fájl meghaladhatja a távoli bitrátakorlátot';
	@override String get storageFull => 'A letöltések leálltak a szabad tárhely védelme érdekében. Szabadíts fel helyet, vagy válassz másik letöltési helyet, majd próbáld újra.';
	@override String get storageUnavailable => 'A letöltések leálltak, mert a rendelkezésre álló tárhely nem ellenőrizhető. Ellenőrizd a letöltési helyet, majd próbáld újra.';
	@override String episodesQueued({required Object count}) => '${count} epizód letöltésre sorba állítva';
	@override String get downloadDeleted => 'Letöltés törölve';
	@override String deleteConfirm({required Object title}) => 'Törlöd a következőt: "${title}" erről az eszközről?';
	@override String get deleteCollectionDownloads => 'Letöltések törlése';
	@override String deleteCollectionDownloadsConfirm({required Object title}) => 'Töröl minden „${title}” letöltést erről az eszközről?';
	@override String get collectionDownloadsDeleted => 'Letöltések törölve';
	@override String get cancelledDownloadTitle => 'Megszakított letöltés';
	@override String get cancelledDownloadMessage => 'Ez a letöltés meg lett szakítva. Mit szeretnél tenni?';
	@override String get allEpisodesAlreadyDownloaded => 'Minden epizód le van töltve';
	@override String get resumeDownload => 'Letöltés folytatása';
	@override String get cancelledDownload => 'Megszakított letöltés';
	@override String syncingFile({required Object file, required Object status}) => '${file} (${status} szinkronizálása)';
	@override String downloadedFileClickToComplete({required Object file}) => 'Letöltve: ${file} - Kattints a befejezéshez';
	@override String get partialDownloadClickToComplete => 'Részben letöltve - Kattints a befejezéshez';
	@override String get deleting => 'Törlés...';
	@override String deletingWithProgress({required Object title, required Object current, required Object total}) => '${title} törlése... (${current}/${total})';
	@override String get queuedTooltip => 'Sorban áll';
	@override String queuedFilesTooltip({required Object files}) => 'Sorba állítva: ${files}';
	@override String get downloadingTooltip => 'Letöltés...';
	@override String downloadingFilesTooltip({required Object files}) => 'Letöltés alatt: ${files}';
	@override String get noDownloadsTree => 'Nincsenek letöltések';
	@override String get pauseAll => 'Összes szüneteltetése';
	@override String get resumeAll => 'Összes folytatása';
	@override String get retryAll => 'Próbáld újra az összeset';
	@override String get retryFailed => 'Próbálja újra a sikertelen letöltéseket';
	@override String get deleteAll => 'Összes törlése';
	@override String get selectVersion => 'Verzió kiválasztása';
	@override String get allEpisodes => 'Minden epizód';
	@override String get unwatchedOnly => 'Csak a nem látottak';
	@override String nextNUnwatched({required Object count}) => 'A következő ${count} nem látott epizód';
	@override String get customAmount => 'Egyéni mennyiség...';
	@override String get includeSpecials => 'Különkiadások is';
	@override String get howManyEpisodes => 'Hány epizód?';
	@override String get invalidEpisodeCount => 'Adj meg egy érvényes epizódszámot.';
	@override String get keepSynced => 'Szinkronban tartás';
	@override String get downloadOnce => 'Egyszeri letöltés';
	@override String keepNUnwatched({required Object count}) => '${count} nem látott epizód megtartása';
	@override String get editSyncRule => 'Szinkronizálási szabály szerkesztése';
	@override String get removeSyncRule => 'Szinkronizálási szabály eltávolítása';
	@override String removeSyncRuleConfirm({required Object title}) => 'Leállítod a(z) "${title}" szinkronizálását? A letöltött epizódok megmaradnak.';
	@override String removeListSyncRuleConfirm({required Object title}) => 'Leállítjuk a(z) "${title}" szinkronizálását?';
	@override String get deleteSyncRuleDownloads => 'A kapcsolódó letöltések törlése is';
	@override String get deleteSyncRuleDownloadsDescription => 'A másik szinkronszabály vagy profil által használt letöltések megmaradnak.';
	@override String syncRuleCreated({required Object count}) => 'Szinkronizálási szabály létrehozva — ${count} nem látott epizód megtartása';
	@override String get syncRuleUpdated => 'Szinkronizálási szabály frissítve';
	@override String get syncRuleRemoved => 'Szinkronizálási szabály eltávolítva';
	@override String get syncRuleAndDownloadsRemoved => 'A szinkronszabály és a kapcsolódó letöltések eltávolítva';
	@override String get syncRuleCleanupBusy => 'A szinkronszabályok éppen frissülnek. Próbálja újra egy pillanat múlva.';
	@override String get syncRuleCleanupUnavailable => 'A kapcsolódó letöltések nem azonosíthatók biztonságosan. Csatlakoztassa újra a szervert, és próbálja újra, vagy távolítsa el a szabályt a letöltések törlése nélkül.';
	@override String syncedNewEpisodes({required Object count, required Object title}) => '${count} új epizód szinkronizálva a következőhöz: ${title}';
	@override String get activeSyncRules => 'Szinkronizálási szabályok';
	@override String get noSyncRules => 'Nincsenek szinkronizálási szabályok';
	@override String get manageSyncRule => 'Szinkronizálás kezelése';
	@override String get editEpisodeCount => 'Epizódszám';
	@override String get editSyncFilter => 'Szinkronizálási szűrő';
	@override String get syncAllItems => 'Minden elem szinkronizálása';
	@override String get syncUnwatchedItems => 'Nem látott elemek szinkronizálása';
	@override String syncRuleServerContext({required Object server, required Object status}) => 'Szerver: ${server} • ${status}';
	@override String get syncRuleAvailable => 'Elérhető';
	@override String get syncRuleOffline => 'Offline';
	@override String get syncRuleSignInRequired => 'Bejelentkezés szükséges';
	@override String get syncRuleAccessDenied => 'Hozzáférés megtagadva';
	@override String get syncRuleNotAvailableForProfile => 'Nem érhető el a jelenlegi profilhoz';
	@override String get syncRuleUnknownServer => 'Ismeretlen szerver';
	@override String get syncRuleListCreated => 'Szinkronizálási szabály létrehozva';
	@override late final _Translations$downloads$backgroundWarning$hu backgroundWarning = _Translations$downloads$backgroundWarning$hu._(_root);
	@override String get options => 'Letöltések lehetőségei';
	@override late final _Translations$downloads$groupings$hu groupings = _Translations$downloads$groupings$hu._(_root);
	@override String get unknownLibrary => 'Ismeretlen könyvtár';
	@override String get unknownShow => 'Ismeretlen sorozat';
	@override String get unknownSeason => 'Ismeretlen évad';
	@override String get unknownAlbum => 'Ismeretlen album';
	@override String completedOfTotal({required Object completed, required Object total}) => '${completed}/${total} kész';
	@override String get errorFileNotFound => 'A fájl nem található (404)';
	@override String get errorDownloadNotAllowed => 'A szerver nem engedélyezi a letöltést (403)';
	@override String get errorDownloadFailed => 'A letöltés nem sikerült';
	@override String errorDownloadFailedWithReason({required Object reason}) => 'A letöltés nem sikerült: ${reason}';
	@override String errorHttpStatus({required Object status}) => 'A letöltés nem sikerült (HTTP ${status})';
	@override String errorPostProcessing({required Object reason}) => 'Az utófeldolgozás nem sikerült: ${reason}';
	@override String get reasonFileNotSaved => 'a fájlt nem sikerült menteni erre az eszközre';
	@override String get reasonCannotResume => 'a részleges letöltést nem sikerült folytatni';
	@override String get reasonDeviceStorageFull => 'az eszközön elfogyott a tárhely';
	@override String get notificationDownloading => 'Letöltés...';
	@override String get notificationComplete => 'Letöltés kész';
	@override String get notificationPaused => 'Letöltés szüneteltetve';
}

// Path: shaders
class _Translations$shaders$hu extends Translations$shaders$en {
	_Translations$shaders$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Shaderek';
	@override String get noShaderDescription => 'Nincs videójavítás';
	@override String get nvscalerDescription => 'NVIDIA képskálázás az élesebb videóért';
	@override String get artcnnVariantNeutral => 'Semleges';
	@override String get artcnnVariantDenoise => 'Zajcsökkentés';
	@override String get artcnnVariantDenoiseSharpen => 'Zajcsökkentés + Élesítés';
	@override String get qualityFast => 'Gyors';
	@override String get qualityHQ => 'Kiváló minőség';
	@override String get mode => 'Mód';
	@override String get importShader => 'Shader importálása';
	@override String get customShaderDescription => 'Egyéni GLSL shader';
	@override String get shaderImported => 'Shader importálva';
	@override String get shaderImportFailed => 'Nem sikerült a shader importálása';
	@override String get deleteShader => 'Shader törlése';
	@override String deleteShaderConfirm({required Object name}) => 'Törlöd a következőt: "${name}"?';
}

// Path: companionRemote
class _Translations$companionRemote$hu extends Translations$companionRemote$en {
	_Translations$companionRemote$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kísérőtávirányító';
	@override String connectedTo({required Object name}) => 'Csatlakoztatva a következőhöz: ${name}';
	@override String get unknownDevice => 'Ismeretlen eszköz';
	@override late final _Translations$companionRemote$session$hu session = _Translations$companionRemote$session$hu._(_root);
	@override late final _Translations$companionRemote$pairing$hu pairing = _Translations$companionRemote$pairing$hu._(_root);
	@override late final _Translations$companionRemote$remote$hu remote = _Translations$companionRemote$remote$hu._(_root);
	@override late final _Translations$companionRemote$errors$hu errors = _Translations$companionRemote$errors$hu._(_root);
	@override String get closedBeforeAuth => 'A kapcsolat a hitelesítés előtt megszakadt';
}

// Path: videoSettings
class _Translations$videoSettings$hu extends Translations$videoSettings$en {
	_Translations$videoSettings$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get playbackSpeed => 'Lejátszási sebesség';
	@override String get normalSpeed => 'Normál';
	@override String sleepTimerActive({required Object duration}) => 'Aktív (${duration})';
	@override String get zoom => 'Nagyítás';
	@override String get sleepTimer => 'Elalvási időzítő';
	@override String get audioSync => 'Hang szinkronizálása';
	@override String get subtitleSync => 'Felirat szinkronizálása';
	@override String get hdr => 'HDR';
	@override String get hdrUnsupported => 'A HDR itt nem érhető el – ez az asztali kompozitor vagy videókimenet nem képes továbbítani.';
	@override String get hdrToneMapping => 'HDR-tónusleképezés';
	@override String get hdrToneMappingCompositor => 'Kompozitor';
	@override String get hdrToneMappingCompositorDescription => 'Továbbítja a forrás HDR-metaadatait, és az asztali kompozitorra bízza a tónusleképezést.';
	@override String get hdrToneMappingPlayer => 'Lejátszó';
	@override String get hdrToneMappingPlayerDescription => 'A lejátszóban a kijelző maximális fényerejéhez igazítja a képet, majd közli az eredményt a kompozitorral.';
	@override String get hdrToneMappingFailed => 'Nem sikerült módosítani a HDR-tónusleképezést – továbbra is az előző mód aktív.';
	@override String get audioOutput => 'Hangkimenet';
	@override String get performanceOverlay => 'Teljesítményadatok';
	@override String get audioOutputDolbyAtmos => 'Dolby Atmos';
	@override String get audioOutputDolbyAudio => 'Dolby Audio';
	@override String get audioOutputSurround => 'Térhatású';
	@override String get audioOutputSpatial => 'Térbeli hang';
	@override String get audioOutputStereo => 'Sztereó';
	@override String get audioNormalization => 'Hangerő normalizálása';
	@override String get audioNormalizationDisablesPassthrough => 'PCM-mé dekódolja a hangot; a passthrough ki van kapcsolva, amíg ez be van kapcsolva';
}

// Path: performanceOverlay
class _Translations$performanceOverlay$hu extends Translations$performanceOverlay$en {
	_Translations$performanceOverlay$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get color => 'Szín';
	@override String get performance => 'Teljesítmény';
	@override String get buffer => 'Puffer';
	@override String get app => 'Alkalmazás';
	@override String get decoder => 'Dekóder';
	@override String get rawDecoder => 'Nyers dekóder';
	@override String get tunneling => 'Alagutazás';
	@override String get passthrough => 'Passthrough';
	@override String get aspect => 'Méretarány';
	@override String get rotation => 'Forgatás';
	@override String get dvSource => 'DV-forrás';
	@override String get dvPath => 'DV-útvonal';
	@override String get dvRouteDecoder => 'Dolby Vision dekóder';
	@override String get dvRouteDecoderP81 => 'Dolby Vision dekóder (P7→8.1)';
	@override String get dvRouteBaseLayer => 'Alapréteg';
	@override String get dvRouteBaseLayerHdr10 => 'HDR10 alapréteg';
	@override String get dvRouteBaseLayerHlg => 'HLG alapréteg';
	@override String get dvRouteBaseLayerSdr => 'SDR alapréteg';
	@override String get dvRouteReshaped => 'RPU átformált (gpu-next)';
	@override String get p7Conversion => 'P7-átalakítás';
	@override String get sampleRate => 'Mintavételezési frekvencia';
	@override String get pixelFormat => 'Képpontformátum';
	@override String get hwFormat => 'Hardverformátum';
	@override String get matrix => 'Mátrix';
	@override String get primaries => 'Elsődleges színek';
	@override String get transfer => 'Átvitel';
	@override String get renderFps => 'Renderelési FPS';
	@override String get displayFps => 'Kijelző-FPS';
	@override String get avSync => 'A/V-szinkron';
	@override String get dropped => 'Eldobva';
	@override String get dvRpus => 'DV RPU-k';
	@override String get dvRpuAverage => 'DV RPU-átlag';
	@override String get dvSampleAverage => 'DV-mintaátlag';
	@override String get maxLuma => 'Maximális luma';
	@override String get minLuma => 'Minimális luma';
	@override String get maxCll => 'MaxCLL';
	@override String get maxFall => 'MaxFALL';
	@override String get cacheUsed => 'Használt gyorsítótár';
	@override String get cacheLimit => 'Gyorsítótár korlátja';
	@override String get speed => 'Sebesség';
	@override String get player => 'Lejátszó';
	@override String get memory => 'Memória';
	@override String get uiFps => 'Felület-FPS';
	@override String get fps => 'FPS';
	@override String get decoderAndroidHw => 'Android HW';
	@override String get decoderNvidiaHw => 'NVIDIA HW';
	@override String get decoderQualcommHw => 'Qualcomm HW';
	@override String get decoderMediatekHw => 'MediaTek HW';
	@override String get decoderExynosHw => 'Exynos HW';
	@override String get decoderSoftware => 'Szoftveres';
	@override String get decoderHardware => 'Hardveres';
	@override String get tunnelingActive => 'Aktív';
	@override String dvRpuFailed({required Object converted, required Object failures}) => '${converted} (${failures} sikertelen)';
}

// Path: externalPlayer
class _Translations$externalPlayer$hu extends Translations$externalPlayer$en {
	_Translations$externalPlayer$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Külső lejátszó';
	@override String get useExternalPlayer => 'Külső lejátszó használata';
	@override String get useExternalPlayerDescription => 'Videók megnyitása egy másik alkalmazásban';
	@override String get selectPlayer => 'Lejátszó kiválasztása';
	@override String get customPlayers => 'Egyéni lejátszók';
	@override String get systemDefault => 'Rendszer alapértelmezése';
	@override String get addCustomPlayer => 'Egyéni lejátszó hozzáadása';
	@override String get playerName => 'Lejátszó neve';
	@override String get playerNameHint => 'Saját lejátszó';
	@override String get playerCommand => 'Parancs';
	@override String get playerPackage => 'Csomagnév';
	@override String get playerUrlScheme => 'URL-séma';
	@override String get off => 'Ki';
	@override String get launchFailed => 'Nem sikerült megnyitni a külső lejátszót';
	@override String appNotInstalled({required Object name}) => 'A(z) ${name} nincs telepítve';
	@override String get playInExternalPlayer => 'Lejátszás külső lejátszóban';
}

// Path: metadataEdit
class _Translations$metadataEdit$hu extends Translations$metadataEdit$en {
	_Translations$metadataEdit$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get editMetadata => 'Szerkesztés...';
	@override String get screenTitle => 'Metaadatok szerkesztése';
	@override String get basicInfo => 'Alapinformációk';
	@override String get artwork => 'Borítók és képek';
	@override String get advancedSettings => 'Haladó beállítások';
	@override String get title => 'Cím';
	@override String get sortTitle => 'Rendezési cím';
	@override String get originalTitle => 'Eredeti cím';
	@override String get releaseDate => 'Bemutató dátuma';
	@override String get contentRating => 'Korhatár-besorolás';
	@override String get studio => 'Stúdió';
	@override String get tagline => 'Jelmondat';
	@override String get summary => 'Összefoglaló';
	@override String get poster => 'Poszter';
	@override String get background => 'Háttér';
	@override String get logo => 'Logó';
	@override String get squareArt => 'Négyzetes kép';
	@override String get selectPoster => 'Poszter kiválasztása';
	@override String get selectBackground => 'Háttér kiválasztása';
	@override String get selectLogo => 'Logó kiválasztása';
	@override String get selectSquareArt => 'Négyzetes kép kiválasztása';
	@override String get fromUrl => 'URL-ről';
	@override String get uploadFile => 'Fájl feltöltése';
	@override String get enterImageUrl => 'Add meg a kép URL-címét';
	@override String get imageUrl => 'Kép URL-címe';
	@override String get metadataUpdated => 'Metaadatok frissítve';
	@override String get metadataUpdateFailed => 'Nem sikerült a metaadatok frissítése';
	@override String get artworkUpdated => 'Képek frissítve';
	@override String get artworkUpdateFailed => 'Nem sikerült a képek frissítése';
	@override String get noArtworkAvailable => 'Nincsenek elérhető képek';
	@override String artworkOption({required Object index}) => '${index}. képváltozat';
	@override String selectedArtworkOption({required Object index}) => '${index}. képváltozat, kiválasztva';
	@override String get notSet => 'Nincs beállítva';
	@override String get libraryDefault => 'Könyvtári alapértelmezés';
	@override String get accountDefault => 'Fiók alapértelmezése';
	@override String get seriesDefault => 'Sorozat alapértelmezése';
	@override String get episodeSorting => 'Epizódok rendezése';
	@override String get oldestFirst => 'Legrégebbi elöl';
	@override String get newestFirst => 'Legújabb elöl';
	@override String get keep => 'Megtartás';
	@override String get allEpisodes => 'Minden epizód';
	@override String latestEpisodes({required Object count}) => 'Legutóbbi ${count} epizód';
	@override String get latestEpisode => 'Legutóbbi epizód';
	@override String episodesAddedPastDays({required Object count}) => 'Az elmúlt ${count} napban hozzáadott epizódok';
	@override String get deleteAfterPlaying => 'Epizódok törlése lejátszás után';
	@override String get never => 'Soha';
	@override String get afterADay => 'Egy nap után';
	@override String get afterAWeek => 'Egy hét után';
	@override String get afterAMonth => 'Egy hónap után';
	@override String get onNextRefresh => 'A következő frissítéskor';
	@override String get seasons => 'Évadok';
	@override String get show => 'Megjelenítés';
	@override String get hide => 'Elrejtés';
	@override String get episodeOrdering => 'Epizódok sorrendje';
	@override String get tmdbAiring => 'The Movie Database (sugárzási sorrend)';
	@override String get tvdbAiring => 'TheTVDB (sugárzási sorrend)';
	@override String get tvdbAbsolute => 'TheTVDB (abszolút sorrend)';
	@override String get metadataLanguage => 'Metaadatok nyelve';
	@override String get useOriginalTitle => 'Eredeti cím használata';
	@override String get preferredAudioLanguage => 'Elsődleges hangnyelv';
	@override String get preferredSubtitleLanguage => 'Elsődleges feliratnyelv';
	@override String get subtitleMode => 'Automatikus feliratválasztási mód';
	@override String get manuallySelected => 'Kézzel kiválasztva';
	@override String get shownWithForeignAudio => 'Idegen nyelvű hang esetén megjelenítve';
	@override String get alwaysEnabled => 'Mindig engedélyezve';
	@override String get tags => 'Címkék';
	@override String get addTag => 'Címke hozzáadása';
	@override String get genre => 'Műfaj';
	@override String get director => 'Rendező';
	@override String get writer => 'Író';
	@override String get producer => 'Producer';
	@override String get country => 'Ország';
	@override String get collection => 'Gyűjtemény';
	@override String get label => 'Kiadó';
	@override String get quickTag => 'Gyors címke...';
}

// Path: matchScreen
class _Translations$matchScreen$hu extends Translations$matchScreen$en {
	_Translations$matchScreen$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get match => 'Párosítás...';
	@override String get fixMatch => 'Párosítás javítása...';
	@override String get unmatch => 'Párosítás megszüntetése';
	@override String get unmatchConfirm => 'Törlöd ezt a párosítást? A Plex párosítatlanként kezeli az újrapárosításig.';
	@override String get unmatchSuccess => 'Párosítás megszüntetve';
	@override String get unmatchFailed => 'Nem sikerült a párosítás megszüntetése';
	@override String get matchApplied => 'Párosítás alkalmazva';
	@override String get matchFailed => 'Nem sikerült a párosítás alkalmazása';
	@override String get titleHint => 'Cím';
	@override String get yearHint => 'Év';
	@override String get search => 'Keresés';
	@override String get noMatchesFound => 'Nincsenek egyezések';
}

// Path: serverTasks
class _Translations$serverTasks$hu extends Translations$serverTasks$en {
	_Translations$serverTasks$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Szerverfeladatok';
	@override String get failedToLoad => 'Nem sikerült a feladatok betöltése';
	@override String get noTasks => 'Nincsenek futó feladatok';
}

// Path: trakt
class _Translations$trakt$hu extends Translations$trakt$en {
	_Translations$trakt$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Trakt';
	@override String get connected => 'Csatlakoztatva';
	@override String connectedAs({required Object username}) => '@${username} néven csatlakoztatva';
	@override String get disconnectConfirm => 'Leválasztod a Trakt-fiókot?';
	@override String get disconnectConfirmBody => 'A Luroka nem küld több eseményt a Traktnak. Bármikor újracsatlakozhatsz.';
	@override String get scrobble => 'Valós idejű scrobbling';
	@override String get scrobbleDescription => 'Lejátszási, szüneteltetési és leállítási események küldése a Traktnak lejátszás közben.';
	@override String get watchedSync => 'Megtekintési állapot szinkronizálása';
	@override String get watchedSyncDescription => 'Ha egy elemet megtekintettként jelölsz meg a Lurokaben, a Trakt is megtekintettként jelöli.';
}

// Path: seerr
class _Translations$seerr$hu extends Translations$seerr$en {
	_Translations$seerr$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Seerr';
	@override String get connectTitle => 'Seerr csatlakoztatása';
	@override String get serverUrl => 'Szerver URL-címe';
	@override String get serverUrlHelper => 'A Seerr példányod címe';
	@override String get checkServer => 'Folytatás';
	@override String get signInWithJellyfin => 'Bejelentkezés Jellyfinnel';
	@override String get signInWithEmby => 'Bejelentkezés Emby-vel';
	@override String get signInWithLocal => 'Helyi fiók használata';
	@override String get email => 'E-mail';
	@override String get noSignInMethods => 'Ez a Seerr példány nem kínál olyan bejelentkezési módot, amit a Luroka támogat.';
	@override String get instance => 'Példány';
	@override String get disconnectConfirm => 'Leválasztod a Seerr-kapcsolatot?';
	@override String get disconnectConfirmBody => 'A Luroka elfelejti ezt a Seerr példányt. Bármikor újracsatlakozhatsz.';
	@override String get request => 'Igénylés';
	@override String get request4k => 'Igénylés 4K-ban';
	@override String get seasons => 'Évadok';
	@override String get allSeasons => 'Minden évad';
	@override String get advancedOptions => 'Haladó';
	@override String get destinationServer => 'Célszerver';
	@override String get qualityProfile => 'Minőségi profil';
	@override String get rootFolder => 'Gyökérmappa';
	@override String get languageProfile => 'Nyelvi profil';
	@override String get tags => 'Címkék';
	@override String get noTags => 'Nincsenek címkék';
	@override String defaultOption({required Object name}) => '${name} (alapértelmezett)';
	@override String get animeNote => 'Ez a sorozat anime.';
	@override String get requestSubmitted => 'Igénylés elküldve';
	@override String requestFailed({required Object error}) => 'Az igénylés nem sikerült: ${error}';
	@override String get requestsLoadFailed => 'Nem sikerült betölteni az igénylési opciókat';
	@override String get nothingToRequest => 'Minden elem már elérhető vagy igényelve van.';
	@override String get statusAvailable => 'Elérhető';
	@override String get statusPartiallyAvailable => 'Részben elérhető';
	@override String get statusRequested => 'Igényelve';
	@override String get statusProcessing => 'Feldolgozás alatt';
	@override String get statusBlocklisted => 'Tiltólistán';
	@override String couldNotReach({required Object url, required Object error}) => 'Nem sikerült elérni ezt: ${url}: ${error}';
	@override String noInstanceAtUrl({required Object url, required Object status}) => 'Nem található Seerr-példány ezen a címen: ${url} (HTTP ${status})';
	@override String get behindAuthProxy => 'A Seerr helyett egy hitelesítő fordított proxy (SSO vagy HTTP-hitelesítés) válaszolt. A Luroka nem tud rajta bejelentkezni: engedd, hogy a Seerr /api/v1 útvonala megkerülje a proxyt ennél az alkalmazásnál, vagy használj olyan címet, amely közvetlenül eléri a Seerr-t.';
	@override String get invalidUrl => 'Adj meg egy szervercímet, például: https://seerr.example.com';
	@override String get quickConnectUnsupported => 'Ez a Seerr-példány nem támogatja a Quick Connectet. Seerr 3.4 vagy újabb verzió szükséges.';
	@override String get notInitialized => 'Ennek a Seerr-példánynak a kezdeti beállítása még nem fejeződött be';
	@override String get noPlexTokenForReauth => 'Nem áll rendelkezésre Plex-token az újbóli bejelentkezéshez';
	@override String get noStoredCredentials => 'Nem állnak rendelkezésre mentett hitelesítő adatok az újbóli bejelentkezéshez';
	@override String get signInRejected => 'A bejelentkezést elutasították';
	@override String get noSessionCookie => 'A Seerr nem adott ki munkamenet-sütit';
	@override String get freshCookieRejected => 'A Seerr elutasította az új munkamenet-sütit';
	@override String get noUserInformation => 'A Seerr nem adott vissza felhasználói adatokat';
	@override String get sessionRejectedAfterReauth => 'A munkamenetet az újbóli bejelentkezés után elutasították';
	@override String get permissionDenied => 'A Seerr elutasította ezt a műveletet: a fiókod már nem rendelkezik a szükséges jogosultsággal';
	@override String get permissionRevoked => 'Már nincs jogosultságod ennek az igényléséhez';
}

// Path: services
class _Translations$services$hu extends Translations$services$en {
	_Translations$services$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Szolgáltatások';
	@override String get hubSubtitle => 'Megtekintési haladás szinkronizálása és új tartalmak igénylése.';
	@override String get discoverySection => 'Felfedezés és kérések';
	@override String get trackingSection => 'Megtekintés követése és listák';
	@override String get seerrDescription => 'Keressen filmeket és sorozatokat, és küldjön kéréseket a Seerr-szerveréről.';
	@override String get tmdbDescription => 'Fedezzen fel filmeket és sorozatokat, posztereket, értékeléseket és részleteket.';
	@override String get traktDescription => 'Kövesse a filmeket és sorozatokat, szinkronizálja a megtekintési állapotot, és kezelje a listáját.';
	@override String get malDescription => 'Tartsa szinkronban anime-listáját és megtekintési előrehaladását.';
	@override String get anilistDescription => 'Kövesse az animéket, és szinkronizálja megtekintési előrehaladását az AniListtel.';
	@override String get simklDescription => 'Kövesse filmjeit, sorozatait és animéit a Simkl segítségével.';
	@override String get mdblistDescription => 'Csatlakoztassa MDBList-listáit és filmértékeléseit.';
	@override String connectionIntro({required Object service}) => 'Csatlakoztassa a(z) ${service} szolgáltatást az aktuális Luroka-profiljához. A kapcsolatot és beállításait bármikor itt kezelheti.';
	@override String connectService({required Object service}) => '${service} csatlakoztatása';
	@override String get seerrConnectDescription => 'Csatlakoztassa Seerr-szerverét, hogy filmeket és sorozatokat fedezzen fel és kérjen a Lurokából.';
	@override String get seerrServerStep => 'Adja meg azt a címet, amellyel megnyitja a Seerrt. Ellenőrizzük, mely bejelentkezési módokat támogatja a szerver.';
	@override String get seerrSignInStep => 'Válasszon a szerver által támogatott bejelentkezési módok közül.';
	@override String get integrations => 'Integrációk';
	@override String get notConnected => 'Nincs csatlakoztatva';
	@override String connectedAs({required Object username}) => '@${username} néven csatlakoztatva';
	@override String get scrobble => 'Haladás automatikus követése';
	@override String get scrobbleDescription => 'Lista frissítése, amikor befejezel egy epizódot vagy filmet.';
	@override String disconnectConfirm({required Object service}) => 'Leválasztod a(z) ${service} szolgáltatást?';
	@override String disconnectConfirmBody({required Object service}) => 'A Luroka nem frissíti többé a(z) ${service} adatait. Bármikor újracsatlakozhatsz.';
	@override String connectFailed({required Object service}) => 'Nem sikerült csatlakozni a következőhöz: ${service}. Próbáld újra.';
	@override late final _Translations$services$names$hu names = _Translations$services$names$hu._(_root);
	@override late final _Translations$services$simklReconnect$hu simklReconnect = _Translations$services$simklReconnect$hu._(_root);
	@override late final _Translations$services$deviceCode$hu deviceCode = _Translations$services$deviceCode$hu._(_root);
	@override late final _Translations$services$oauthProxy$hu oauthProxy = _Translations$services$oauthProxy$hu._(_root);
	@override late final _Translations$services$pendingAuth$hu pendingAuth = _Translations$services$pendingAuth$hu._(_root);
	@override late final _Translations$services$libraryFilter$hu libraryFilter = _Translations$services$libraryFilter$hu._(_root);
}

// Path: offlineRecovery
class _Translations$offlineRecovery$hu extends Translations$offlineRecovery$en {
	_Translations$offlineRecovery$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'A szerverei offline állapotban vannak';
	@override String get description => 'A letöltések továbbra is elérhetők. Próbáljon meg újra csatlakozni, amikor a szerver visszatér, vagy adjon hozzá egy másik szervert.';
	@override String get appleTvDescription => 'A Luroka nem tudta elérni a médiaszervereket. Próbáljon meg újra csatlakozni, amikor elérhetők, vagy adjon hozzá egy másik szervert a megtekintés folytatásához.';
	@override String get kidsDescription => 'Nem tudtuk elérni a médiaszerverét. Próbáljon újra csatlakozni, vagy kérjen segítséget egy szülőtől.';
	@override String get retrying => 'Csatlakozás…';
	@override String get addServer => 'Szerver hozzáadása';
}

// Path: releaseUpdates
class _Translations$releaseUpdates$hu extends Translations$releaseUpdates$en {
	_Translations$releaseUpdates$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get manualInstructions => 'Töltse le a kiadási archívumot a GitHub webhelyről, csomagolja ki a APK fájlt, és telepítse a Android eszközére.';
	@override String get tvInstructions => 'Nyissa meg ezt a címet telefonján vagy számítógépén, vagy olvassa be a QR-kódot a kiadás letöltéséhez.';
	@override String get pressBackAgain => 'Nyomja meg ismét a Vissza gombot a lejátszásból való kilépéshez';
}

// Path: profileIntegrations
class _Translations$profileIntegrations$hu extends Translations$profileIntegrations$en {
	_Translations$profileIntegrations$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Legyen a Luroka a magáé';
	@override String get description => 'Csatlakoztassa kedvenc szolgáltatásait, hogy nyomon kövesse, mit néz, és kérjen új filmeket és műsorokat. Minden Luroka profilnak saját csatlakozásai vannak.';
	@override String get step => 'Választható integrációk';
	@override String get examples => 'Trakt · Simkl · AniList · MyAnimeList · Seerr';
	@override String get connect => 'Fedezze fel az integrációkat';
	@override String get later => 'Állítsa be később';
	@override String get manage => 'Integrációk kezelése';
	@override String forProfile({required Object name}) => '${name} csatlakozások';
}

// Path: profileSetupGuide
class _Translations$profileSetupGuide$hu extends Translations$profileSetupGuide$en {
	_Translations$profileSetupGuide$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tedd sajátoddá profilodat';
	@override String get description => 'Válassza ki, hogy a Luroka hogyan nézzen ki és érezzen ezt a profilt ezen az eszközön. Később mindent módosíthat a Beállításokban.';
	@override String get appearanceStep => '1 / 2 · Megjelenés';
	@override String get homeStep => '2/2 · A kezdőképernyő';
	@override String get preview => 'Előnézet';
	@override String get previewTitle => 'Az Ön Otthona';
	@override String get previewPoster => 'Plakát';
	@override String get posterArtwork => 'Csak műalkotás';
	@override String get posterWithDetails => 'A plakát részleteinek megjelenítése';
	@override String get musicDescription => 'Játssz le egy filmet vagy műsort, miközben a részletes oldal meg van nyitva, ha elérhető.';
	@override String get moreThemes => 'További témák';
	@override String get fewerThemes => 'Kevesebb téma';
	@override String get spotlightHeading => 'Mi jelenjen meg a Spotlightban?';
	@override String get progressHeading => 'Folytassa a megtekintést és a Következő oldalt';
	@override String get skip => 'Használja az alapértelmezett beállításokat, és kezdje el nézni';
	@override String get finish => 'Kezdje el nézni';
	@override String get back => 'Vissza';
	@override String get kContinue => 'Folytatás';
	@override String get chooseLater => 'Válasszon később könyvtárakat';
	@override String get libraryScope => 'Ez megváltoztatja, hogy mi jelenik meg a Lurokában ezen a profilon; a szerver engedélyeit nem módosítja.';
	@override String get createdTitle => 'Profil létrehozva';
	@override String get createdDescription => 'Elkészült az új profilod. Tulajdonosa az első kinyitáskor személyre szabhatja.';
	@override String get switchProfile => 'Váltás erre a profilra';
	@override String get stayHere => 'Maradjon az aktuális profilnál';
}

// Path: animeFavorites
class _Translations$animeFavorites$hu extends Translations$animeFavorites$en {
	_Translations$animeFavorites$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get filter => 'Anime';
	@override String get manage => 'Anime kezelése';
	@override String get description => 'Az automatikus felismerés animekönyvtár-neveket és elérhető animecímkéket vagy azonosítókat használ. Válasszon könyvtárakat, és javítsa ki az egyéni kedvenceket. A választásokat a rendszer ezen az eszközön menti profiljához.';
	@override String get libraries => 'Anime könyvtárak';
	@override String get libraryHint => 'Az Anime nevű könyvtárakat a rendszer automatikusan felismeri. Válasszon ki egy könyvtárat a besorolás módosításához.';
	@override String get titles => 'Kedvenc címek';
	@override String get titleHint => 'Válasszon ki egy címet, hogy animeként jelölje meg, vagy javítsa ki az automatikus egyezést.';
	@override String get automatic => 'Automatikus';
	@override String get include => 'Anime';
	@override String get exclude => 'Nem anime';
	@override String get automaticIncluded => 'Automatikus · Anime';
	@override String get automaticExcluded => 'Automatikus · Nem anime';
	@override String get noLibraries => 'Nincsenek csatlakoztatott könyvtárak.';
	@override String get noTitles => 'Nincsenek kedvenc filmek vagy műsorok.';
	@override String get empty => 'Nem található kedvenc anime. Nézze meg animekönyvtárait, vagy jelöljön meg egy címet animeként.';
	@override String get saveFailed => 'Nem sikerült menteni az anime beállításait. Kérjük, próbálja újra.';
}

// Path: addServer
class _Translations$addServer$hu extends Translations$addServer$en {
	_Translations$addServer$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String addMediaBrowserTitle({required Object product}) => '${product} szerver hozzáadása';
	@override String get serverUrls => 'Szerver URL-címei';
	@override String get serverUrlsHelper => 'Több URL is megadható, vesszővel elválasztva.';
	@override String get findServer => 'Szerver keresése';
	@override String searchingLocalMediaBrowserServers({required Object product}) => 'Helyi ${product} szerverek keresése...';
	@override String localMediaBrowserServers({required Object product}) => 'Mentett és közeli ${product} szerverek';
	@override String get username => 'Felhasználónév';
	@override String get password => 'Jelszó';
	@override String get signIn => 'Bejelentkezés';
	@override String get change => 'Módosítás';
	@override String get required => 'Kötelező';
	@override String couldNotReachServer({required Object error}) => 'Nem sikerült elérni a szervert: ${error}';
	@override String signInFailed({required Object error}) => 'A bejelentkezés nem sikerült: ${error}';
	@override String quickConnectFailed({required Object error}) => 'A Quick Connect használata nem sikerült: ${error}';
	@override String get addPlexTitle => 'Bejelentkezés Plexszel';
	@override String get pinExpired => 'A PIN-kód a bejelentkezés előtt lejárt. Próbáld újra.';
	@override String failedToRegisterAccount({required Object error}) => 'Nem sikerült a fiók regisztrálása: ${error}';
	@override String enterMediaBrowserUrlError({required Object product}) => 'Adja meg a(z) ${product} szerver URL-jét';
	@override String get addConnectionTitle => 'Kapcsolat hozzáadása';
	@override String addConnectionTitleScoped({required Object name}) => 'Hozzáadás a következőhöz: ${name}';
	@override String get signInWithPlexCard => 'Bejelentkezés Plexszel';
	@override String get signInWithPlexCardSubtitle => 'Eszköz engedélyezése. A megosztott szerverek hozzáadásra kerülnek.';
	@override String get signInWithPlexCardSubtitleScoped => 'Plex-fiók engedélyezése. A Plex Home-felhasználókból profilok lesznek.';
	@override String connectToMediaBrowserCard({required Object product}) => 'Csatlakozás a(z) ${product} szolgáltatáshoz';
	@override String get connectToMediaBrowserCardSubtitle => 'Adja meg a szerver URL-jét, felhasználónevét és jelszavát.';
	@override String connectToMediaBrowserCardSubtitleScoped({required Object product, required Object name}) => 'Jelentkezzen be a(z) ${product} szerverére. A(z) ${name} szolgáltatáshoz kötődik.';
	@override String get borrowFromAnotherProfile => 'Kapcsolat használata másik profilból';
	@override String get borrowFromAnotherProfileSubtitle => 'Egy másik profil kapcsolatának használata. A PIN-kóddal védett profilokhoz PIN-kód szükséges.';
	@override String get invalidCredentials => 'Érvénytelen felhasználónév vagy jelszó';
	@override String get authResponseNotJson => 'A hitelesítési válasz nem érvényes JSON';
	@override String get authResponseIncomplete => 'A szerver bejelentkezési válasza hiányos volt';
	@override String get quickConnectRejected => 'A szerver elutasította a Quick Connect-kérést';
	@override String get quickConnectNotJson => 'A Quick Connect válasza nem érvényes JSON';
	@override String get quickConnectMissingFields => 'A Quick Connect válaszából hiányzik a kód vagy a titkos kulcs';
	@override String get quickConnectPollRejected => 'A szerver elutasította a Quick Connect lekérdezését';
	@override String get serverTimedOut => 'A szerver nem válaszolt időben';
	@override String get responseNotJson => 'A szerver válasza nem érvényes JSON';
	@override String responseMissingIdentity({required Object product}) => 'A válaszból hiányzik az azonosító vagy a szerver neve – ez valóban ${product}-szerver?';
	@override String probeFailed({required Object error}) => 'Nem sikerült elérni a szervert: ${error}';
	@override String enterAtLeastOneUrl({required Object product}) => 'Adj meg legalább egy ${product}-szerverhez tartozó URL-t';
	@override String noReachableServer({required Object product}) => 'Nem található elérhető ${product}-szerver';
	@override String urlsPointToDifferentServers({required Object product}) => 'Ezek az URL-ek különböző ${product}-szerverekre mutatnak';
	@override String urlDoesNotMatchServer({required Object product}) => 'Ez az URL nem egyezik a(z) ${product}-szerverrel';
	@override String get redirectUnsupported => 'A szerver nem támogatott URL-re irányított át';
	@override String redirectDifferentHost({required Object product}) => 'A szerver egy másik gazdagépre irányított át. Add meg közvetlenül a végleges ${product} URL-t.';
	@override String get redirectInsecure => 'A szerver HTTPS-ről nem biztonságos URL-re irányított át';
	@override String redirectUnsupportedEnterFinal({required Object product}) => 'A szerver nem támogatott URL-re irányított át. Add meg közvetlenül a végleges ${product} URL-t.';
}

// Path: appIcon.names
class _Translations$appIcon$names$hu extends Translations$appIcon$names$en {
	_Translations$appIcon$names$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get midnight => 'Éjfél';
	@override String get ember => 'Ember';
	@override String get paper => 'Papír';
	@override String get oled => 'OLED';
	@override String get line => 'Vonal';
	@override String get ocean => 'Óceán';
	@override String get ultraviolet => 'Ultraibolya';
	@override String get matcha => 'Matcha';
	@override String get sunset => 'Naplemente';
	@override String get gold => 'Arany';
	@override String get titanium => 'Titán';
	@override String get glass => 'Üveg';
	@override String get crt => 'CRT';
	@override String get vhs => 'VHS';
	@override String get synthwave => 'Synthwave';
	@override String get pixel => 'Pixel';
	@override String get neon => 'Neon';
	@override String get sticker => 'Matrica';
	@override String get ticket => 'Jegy';
	@override String get pop => 'Pop';
	@override String get strata => 'Strata';
	@override String get facet => 'Facet';
	@override String get tilde => 'Tilde';
}

// Path: common.ratingSource
class _Translations$common$ratingSource$hu extends Translations$common$ratingSource$en {
	_Translations$common$ratingSource$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get critic => 'Kritikusok';
	@override String get audience => 'Közönség';
	@override String get imdb => 'IMDb';
	@override String get tmdb => 'TMDB';
	@override String get rottenTomatoes => 'Rotten Tomatoes';
	@override String get simkl => 'Simkl';
	@override String get mal => 'MyAnimeList';
	@override String get anilist => 'AniList';
	@override String get trakt => 'Trakt';
	@override String get rottenTomatoesCritic => 'Rotten Tomatoes kritikusok';
	@override String get rottenTomatoesAudience => 'Rotten Tomatoes közönség';
	@override String get metacritic => 'Metacritic';
	@override String get letterboxd => 'Letterboxd';
}

// Path: common.mediaKind
class _Translations$common$mediaKind$hu extends Translations$common$mediaKind$en {
	_Translations$common$mediaKind$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get movie => 'Film';
	@override String get show => 'Sorozat';
	@override String get season => 'Évad';
	@override String get episode => 'Epizód';
	@override String get artist => 'Előadó';
	@override String get album => 'Album';
	@override String get track => 'Szám';
	@override String get collection => 'Gyűjtemény';
	@override String get playlist => 'Lejátszási lista';
	@override String get clip => 'Klip';
	@override String get photo => 'Fénykép';
	@override String get folder => 'Mappa';
}

// Path: supporter.errors
class _Translations$supporter$errors$hu extends Translations$supporter$errors$en {
	_Translations$supporter$errors$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get storeUnavailable => 'A vásárlás nem elérhető. Ellenőrizze, hogy bejelentkezett-e az üzletbe, és engedélyezett-e a vásárlás ezen az eszközön.';
	@override String get productNotFound => 'A Supporter vásárlás jelenleg nem érhető el az üzletében.';
	@override String get productQueryFailed => 'Nem sikerült betölteni az árat. Ellenőrizze a kapcsolatot, és próbálja újra.';
	@override String get purchaseFailed => 'A vásárlás nem ment. Próbáld újra.';
	@override String get restoreFailed => 'Nem sikerült elérni az üzletet a vásárlás visszaállításához. Próbáld újra.';
	@override String get nothingToRestore => 'Nem található támogatói vásárlás ehhez az áruházi fiókhoz.';
}

// Path: themeEditor.slots
class _Translations$themeEditor$slots$hu extends Translations$themeEditor$slots$en {
	_Translations$themeEditor$slots$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get bg => 'Háttér';
	@override String get surface => 'Felület';
	@override String get outline => 'Vázlat';
	@override String get text => 'Szöveg';
	@override String get textMuted => 'Másodlagos szöveg';
	@override String get accent => 'Akcent';
}

// Path: themeEditor.contrast
class _Translations$themeEditor$contrast$hu extends Translations$themeEditor$contrast$en {
	_Translations$themeEditor$contrast$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get textOnBg => 'Szöveg a háttérben';
	@override String get textOnSurface => 'Szöveg a felületen';
	@override String get textMutedOnBg => 'Másodlagos szöveg a háttérben';
	@override String get textMutedOnSurface => 'Másodlagos szöveg a felületen';
	@override String get accentOnBg => 'Hangsúly a háttérben';
	@override String get accentOnSurface => 'Kiemelés a felületen';
	@override String get labelOnAccent => 'A nyomógomb felirata';
}

// Path: hotkeys.actions
class _Translations$hotkeys$actions$hu extends Translations$hotkeys$actions$en {
	_Translations$hotkeys$actions$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get playPause => 'Lejátszás/Szünet';
	@override String get volumeUp => 'Hangerő fel';
	@override String get volumeDown => 'Hangerő le';
	@override String seekForward({required Object seconds}) => 'Tekerés előre (${seconds} mp)';
	@override String seekBackward({required Object seconds}) => 'Tekerés hátra (${seconds} mp)';
	@override String get fullscreenToggle => 'Teljes képernyős mód váltása';
	@override String get muteToggle => 'Némítás be- és kikapcsolása';
	@override String get subtitleToggle => 'Feliratok be- és kikapcsolása';
	@override String get audioTrackNext => 'Következő hangsáv';
	@override String get subtitleTrackNext => 'Következő feliratsáv';
	@override String get chapterNext => 'Következő fejezet';
	@override String get chapterPrevious => 'Előző fejezet';
	@override String get episodeNext => 'Következő epizód';
	@override String get episodePrevious => 'Előző epizód';
	@override String get speedIncrease => 'Sebesség növelése';
	@override String get speedDecrease => 'Sebesség csökkentése';
	@override String get speedReset => 'Sebesség alaphelyzetbe állítása';
	@override String get zoomIn => 'Nagyítás';
	@override String get zoomOut => 'Kicsinyítés';
	@override String get zoomReset => 'Nagyítás alaphelyzetbe állítása';
	@override String get subSeekNext => 'Ugrás a következő feliratra';
	@override String get subSeekPrev => 'Ugrás az előző feliratra';
	@override String get shaderToggle => 'Shaderek be- és kikapcsolása';
	@override String get skipMarker => 'Intró/stáblista átugrása';
	@override String get screenshot => 'Képernyőkép készítése';
}

// Path: videoControls.pipErrors
class _Translations$videoControls$pipErrors$hu extends Translations$videoControls$pipErrors$en {
	_Translations$videoControls$pipErrors$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get androidVersion => 'Android 8.0 vagy újabb szükséges';
	@override String get iosVersion => 'iOS 15.0 vagy újabb szükséges';
	@override String get permissionDisabled => 'A kép a képben mód le van tiltva. Engedélyezd a rendszerbeállításokban.';
	@override String get notSupported => 'Az eszköz nem támogatja a kép a képben módot';
	@override String get voSwitchFailed => 'Nem sikerült átváltani a videókimenetet a kép a képben módhoz';
	@override String get failed => 'Nem sikerült elindítani a kép a képben módot';
	@override String get prepareFailed => 'Nem sikerült előkészíteni a kép a képben módot';
	@override String unknown({required Object error}) => 'Hiba történt: ${error}';
}

// Path: accountPreferences.groups
class _Translations$accountPreferences$groups$hu extends Translations$accountPreferences$groups$en {
	_Translations$accountPreferences$groups$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get audioAndSubtitles => 'Hang és feliratok';
	@override String get libraryDisplay => 'Könyvtár';
	@override String get personalMedia => 'Személyes média';
}

// Path: accountPreferences.subtitleModes
class _Translations$accountPreferences$subtitleModes$hu extends Translations$accountPreferences$subtitleModes$en {
	_Translations$accountPreferences$subtitleModes$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get none => 'Kézzel kiválasztva';
	@override String get noneDescription => 'Soha ne kapcsolja be magától a feliratokat.';
	@override String get defaultMode => 'A sáv jelzőinek követése';
	@override String get defaultModeDescription => 'Az egyes feliratsávokon tárolt alapértelmezett és kényszerített jelzők használata.';
	@override String get always => 'Mindig engedélyezve';
	@override String get alwaysDescription => 'Feliratsáv bekapcsolása az elsődleges nyelven, ha van ilyen.';
	@override String get onlyForced => 'Csak kényszerített feliratok';
	@override String get onlyForcedDescription => 'Csak a kényszerítettként megjelölt sávok betöltése.';
	@override String get smart => 'Idegen nyelvű hang esetén megjelenítve';
	@override String get smartDescription => 'Feliratok bekapcsolása csak akkor, ha a hang más nyelven szól.';
}

// Path: accountPreferences.subtitleAccessibilityOptions
class _Translations$accountPreferences$subtitleAccessibilityOptions$hu extends Translations$accountPreferences$subtitleAccessibilityOptions$en {
	_Translations$accountPreferences$subtitleAccessibilityOptions$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get preferNonSdh => 'Nem SDH-feliratok előnyben részesítése';
	@override String get preferSdh => 'SDH-feliratok előnyben részesítése';
	@override String get onlySdh => 'Csak SDH-feliratok';
	@override String get onlyNonSdh => 'Csak nem SDH-feliratok';
}

// Path: accountPreferences.forcedSubtitleOptions
class _Translations$accountPreferences$forcedSubtitleOptions$hu extends Translations$accountPreferences$forcedSubtitleOptions$en {
	_Translations$accountPreferences$forcedSubtitleOptions$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get preferNonForced => 'Nem kényszerített feliratok előnyben részesítése';
	@override String get preferForced => 'Kényszerített feliratok előnyben részesítése';
	@override String get onlyForced => 'Csak kényszerített feliratok';
	@override String get onlyNonForced => 'Csak nem kényszerített feliratok';
}

// Path: accountPreferences.watchedIndicatorOptions
class _Translations$accountPreferences$watchedIndicatorOptions$hu extends Translations$accountPreferences$watchedIndicatorOptions$en {
	_Translations$accountPreferences$watchedIndicatorOptions$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get none => 'Soha';
	@override String get moviesAndShows => 'Filmek és TV-sorozatok';
	@override String get movies => 'Csak filmek';
	@override String get shows => 'Csak TV-sorozatok';
}

// Path: accountPreferences.mediaReviewsOptions
class _Translations$accountPreferences$mediaReviewsOptions$hu extends Translations$accountPreferences$mediaReviewsOptions$en {
	_Translations$accountPreferences$mediaReviewsOptions$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get usersAndCritics => 'Felhasználók és kritikusok';
	@override String get usersOnly => 'Csak felhasználók';
	@override String get criticsOnly => 'Csak kritikusok';
	@override String get nobody => 'Rejtett';
}

// Path: discover.person
class _Translations$discover$person$hu extends Translations$discover$person$en {
	_Translations$discover$person$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get born => 'Született';
	@override String get died => 'Meghalt';
	@override String get birthplace => 'Születési hely';
	@override String dateWithAge({required Object date, required Object age}) => '${date} (életkor: ${age})';
	@override String dateWithAgeAtDeath({required Object date, required Object age}) => '${date} (öreg ${age})';
}

// Path: libraries.tabs
class _Translations$libraries$tabs$hu extends Translations$libraries$tabs$en {
	_Translations$libraries$tabs$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get recommended => 'Ajánlott';
	@override String get browse => 'Böngészés';
	@override String get collections => 'Gyűjtemények';
	@override String get playlists => 'Lejátszási listák';
}

// Path: libraries.groupings
class _Translations$libraries$groupings$hu extends Translations$libraries$groupings$en {
	_Translations$libraries$groupings$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Csoportosítás';
	@override String get all => 'Összes';
	@override String get movies => 'Filmek';
	@override String get shows => 'TV-sorozatok';
	@override String get seasons => 'Évadok';
	@override String get episodes => 'Epizódok';
	@override String get artists => 'Előadók';
	@override String get albums => 'Albumok';
	@override String get tracks => 'Zeneszámok';
	@override String get folders => 'Mappák';
}

// Path: libraries.filterCategories
class _Translations$libraries$filterCategories$hu extends Translations$libraries$filterCategories$en {
	_Translations$libraries$filterCategories$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get genre => 'Műfaj';
	@override String get year => 'Év';
	@override String get contentRating => 'Korhatár-besorolás';
	@override String get tag => 'Címke';
	@override String get unwatched => 'Nem látott';
	@override String get unplayed => 'Nem lejátszott';
	@override String get favorites => 'Kedvencek';
	@override String get filePath => 'Fájl elérési útja';
}

// Path: libraries.sortLabels
class _Translations$libraries$sortLabels$hu extends Translations$libraries$sortLabels$en {
	_Translations$libraries$sortLabels$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cím';
	@override String get dateAdded => 'Hozzáadás dátuma';
	@override String get releaseDate => 'Bemutató dátuma';
	@override String get rating => 'Értékelés';
	@override String get communityRating => 'Közösségi értékelés';
	@override String get criticRating => 'Kritikusi értékelés';
	@override String get userRating => 'Saját értékelés';
	@override String get datePlayed => 'Lejátszás dátuma';
	@override String get playCount => 'Lejátszások száma';
	@override String get productionYear => 'Gyártási év';
	@override String get runtime => 'Játékidő';
	@override String get officialRating => 'Hivatalos besorolás';
	@override String get premiereDate => 'Premier dátuma';
	@override String get startDate => 'Kezdés dátuma';
	@override String get airTime => 'Adásidő';
	@override String get studio => 'Stúdió';
	@override String get random => 'Véletlenszerű';
	@override String get dateShared => 'Megosztás dátuma';
	@override String get latestEpisodeAirDate => 'A legutóbbi epizód sugárzási dátuma';
	@override String get lastEpisodeDateAdded => 'Utolsó epizód hozzáadásának dátuma';
	@override String get dateDownloaded => 'Letöltés dátuma';
	@override String get size => 'Méret';
	@override String get library => 'Könyvtár';
}

// Path: libraries.advancedFilters
class _Translations$libraries$advancedFilters$hu extends Translations$libraries$advancedFilters$en {
	_Translations$libraries$advancedFilters$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get include => 'Tartalmazza';
	@override String get exclude => 'Kizárás';
	@override String get any => 'Bármelyik';
	@override String get yes => 'Igen';
	@override String get no => 'Nem';
	@override String not({required Object value}) => 'Nem ${value}';
	@override String valueCount({required Object count}) => '${count} kiválasztva';
	@override String valueCountExcluded({required Object count}) => '${count} kizárva';
	@override String get searchValues => 'Értékek keresése';
	@override String get noValues => 'Nincsenek értékek';
	@override String get matchContains => 'Tartalmaz';
	@override String get matchNotContains => 'Nem tartalmaz';
	@override String get matchIs => 'Is';
	@override String get matchIsNot => 'Nem';
	@override String get matchBeginsWith => 'Ezzel kezdődik';
	@override String get matchEndsWith => 'Ezzel végződik';
	@override String get textHint => 'Írja be az egyezéshez';
	@override String get from => '-tól';
	@override String get to => 'To';
	@override String range({required Object from, required Object to}) => '${from} – ${to}';
	@override String atLeast({required Object value}) => '${value} és újabb';
	@override String atMost({required Object value}) => 'Akár ${value}';
	@override String dateLastDays({required Object count}) => 'Utolsó ${count} nap';
	@override String get dateLastYear => 'Az elmúlt év';
	@override String dateOlderThanDays({required Object count}) => 'Régebbi, mint ${count} nap';
	@override String get dateOlderThanYear => 'Egy évnél régebbi';
}

// Path: explore.rows
class _Translations$explore$rows$hu extends Translations$explore$rows$en {
	_Translations$explore$rows$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get watchlist => 'Néznivalók listája';
	@override String get recommendedMovies => 'Ajánlott filmek';
	@override String get recommendedShows => 'Ajánlott sorozatok';
	@override String get trendingMovies => 'Felkapott filmek';
	@override String get trendingShows => 'Felkapott sorozatok';
	@override String get popularMovies => 'Népszerű filmek';
	@override String get popularShows => 'Népszerű sorozatok';
	@override String get trendingAnime => 'Felkapott animék';
	@override String get suggestedAnime => 'Ajánlott animék';
	@override String get airingAnime => 'Jelenleg futó top animék';
	@override String get popularAnime => 'Legnépszerűbb animék';
	@override String get trending => 'Felkapott';
	@override String get upcomingMovies => 'Közelgő filmek';
	@override String get upcomingShows => 'Közelgő sorozatok';
}

// Path: explore.status
class _Translations$explore$status$hu extends Translations$explore$status$en {
	_Translations$explore$status$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get airing => 'Adásban';
	@override String get ended => 'Befejeződött';
	@override String get canceled => 'Törölve';
	@override String get upcoming => 'Közelgő';
}

// Path: explore.badge
class _Translations$explore$badge$hu extends Translations$explore$badge$en {
	_Translations$explore$badge$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String rankPopular({required Object n}) => '#${n} népszerű';
	@override String rankAiring({required Object n}) => '#${n} adásban';
	@override String rankRated({required Object n}) => '#${n} értékelt';
	@override String rankTrending({required Object n}) => '#${n} felkapott';
	@override String rankSeasonal({required Object n, required Object season}) => '#${n} a(z) ${season} évadban';
	@override String watchingNow({required Object n}) => '${n} nézi';
	@override String get available => 'Elérhető';
	@override String get partiallyAvailable => 'Részben elérhető';
	@override String get availableIn4k => '4K elérhető';
	@override String get requested => 'Kérve';
	@override String get pendingApproval => 'Jóváhagyásra vár';
	@override String get processing => 'Feldolgozás alatt';
	@override String get declined => 'Elutasítva';
	@override String get requestFailed => 'A kérés nem sikerült';
	@override String get requested4k => '4K kérve';
	@override String seasonsAvailable({required Object available, required Object total}) => '${available}/${total} évad';
	@override String nextEpisodeIn({required Object episode, required Object duration}) => '${episode}. ep. ${duration} múlva';
	@override String nextAiringIn({required Object duration}) => 'Következő ${duration} múlva';
	@override String episodesShort({required Object n}) => '${n} ep.';
	@override String minutesPerEpisode({required Object n}) => '${n} perc/ep.';
	@override String get adult => '18+';
}

// Path: explore.stats
class _Translations$explore$stats$hu extends Translations$explore$stats$en {
	_Translations$explore$stats$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String listed({required Object n}) => '${n} listázva';
	@override String viewersDay({required Object n}) => '${n} nézte ma';
	@override String viewersWeek({required Object n}) => '${n} nézte ezen a héten';
	@override String viewersMonth({required Object n}) => '${n} nézte ebben a hónapban';
	@override String viewersYear({required Object n}) => '${n} nézte ebben az évben';
	@override String viewersAllTime({required Object n}) => '${n} néző';
	@override String planning({required Object n}) => '${n} tervezi megnézni';
	@override String favorited({required Object n}) => '${n} kedvenc';
	@override String dropRate({required Object percent}) => '${percent} felhagyott vele';
	@override String comments({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n,
		one: '${n} hozzászólás',
		other: '${n} hozzászólás',
	);
	@override String votes({required Object n}) => '${n} szavazat';
	@override String watching({required Object n}) => '${n} nézi';
	@override String completed({required Object n}) => '${n} befejezte';
	@override String onHold({required Object n}) => '${n} szünetelteti';
	@override String dropped({required Object n}) => '${n} felhagyott vele';
}

// Path: explore.season
class _Translations$explore$season$hu extends Translations$explore$season$en {
	_Translations$explore$season$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get winter => 'Tél';
	@override String get spring => 'Tavasz';
	@override String get summer => 'Nyár';
	@override String get fall => 'Ősz';
	@override String withYear({required Object season, required Object year}) => '${season} ${year}';
}

// Path: explore.format
class _Translations$explore$format$hu extends Translations$explore$format$en {
	_Translations$explore$format$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get tv => 'TV';
	@override String get tvShort => 'TV rövid';
	@override String get movie => 'Film';
	@override String get special => 'Különkiadás';
	@override String get ova => 'OVA';
	@override String get ona => 'ONA';
	@override String get music => 'Zene';
	@override String get other => 'Egyéb';
}

// Path: explore.sourceMaterial
class _Translations$explore$sourceMaterial$hu extends Translations$explore$sourceMaterial$en {
	_Translations$explore$sourceMaterial$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get original => 'Eredeti';
	@override String get manga => 'Manga';
	@override String get lightNovel => 'Light novel';
	@override String get novel => 'Regény';
	@override String get visualNovel => 'Visual novel';
	@override String get game => 'Játék';
	@override String get webComic => 'Webképregény';
	@override String get musicRelease => 'Zene';
	@override String get otherMedia => 'Egyéb';
}

// Path: explore.creditRole
class _Translations$explore$creditRole$hu extends Translations$explore$creditRole$en {
	_Translations$explore$creditRole$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get actor => 'színész';
	@override String get director => 'Rendező';
	@override String get writer => 'Író';
	@override String get producer => 'Producer';
	@override String get creator => 'Alkotó';
	@override String get composer => 'Zeneszerző';
}

// Path: explore.relation
class _Translations$explore$relation$hu extends Translations$explore$relation$en {
	_Translations$explore$relation$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get prequel => 'Előzmény';
	@override String get sequel => 'Folytatás';
	@override String get sideStory => 'Melléktörténet';
	@override String get spinOff => 'Spin-off';
	@override String get alternativeVersion => 'Alternatív verzió';
	@override String get summary => 'Összefoglaló';
	@override String get parentStory => 'Fő történet';
	@override String get adaptation => 'Adaptáció';
	@override String get other => 'Kapcsolódó';
}

// Path: explore.detail
class _Translations$explore$detail$hu extends Translations$explore$detail$en {
	_Translations$explore$detail$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get originalTitle => 'Eredeti cím';
	@override String get alsoKnownAs => 'Más néven';
	@override String get studios => 'Stúdiók';
	@override String get country => 'Ország';
	@override String get language => 'Nyelv';
	@override String get released => 'Megjelent';
	@override String get physicalRelease => 'Lemezes';
	@override String get ended => 'Befejeződött';
	@override String addedOn({required Object date}) => 'Hozzáadva: ${date}';
	@override String get yourRating => 'Az Ön értékelése';
	@override String get budget => 'Költségvetés';
	@override String get revenue => 'Bevétel';
	@override String get contentAdvisory => 'Korhatár';
	@override String get tags => 'Címkék';
	@override String get revealSpoilerTags => 'Spoiler címkék megjelenítése';
	@override String get links => 'Hivatkozások';
	@override String get watchOn => 'Megnézhető itt';
	@override String get watchTrailer => 'Előzetes megtekintése';
	@override String openOn({required Object site}) => 'Megnyitás itt: ${site}';
	@override String get crew => 'Stáb';
	@override String get ratings => 'Értékelések';
	@override String get schedule => 'Műsorrend';
	@override String recommendedByUsers({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n,
		one: '${n} felhasználó ajánlja',
		other: '${n} felhasználó ajánlja',
	);
	@override String recommendedBy({required Object who}) => 'Ajánlotta: ${who}';
	@override String favoritedBy({required Object who}) => 'Kedvencek közt: ${who}';
	@override String unairedEpisodes({required Object n}) => '${n} még nem került adásba';
	@override String recommendedByPercent({required Object percent}) => 'A nézők ${percent}-a ajánlja';
	@override String get relatedTitles => 'Kapcsolódó címek';
	@override String get background => 'Háttér';
}

// Path: liveTv.recordSettings
class _Translations$liveTv$recordSettings$hu extends Translations$liveTv$recordSettings$en {
	_Translations$liveTv$recordSettings$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get startEarly => 'Korábbi kezdés (másodperc)';
	@override String get endLate => 'Későbbi befejezés (másodperc)';
	@override String get newOnly => 'Csak új epizódok';
	@override String get anyChannel => 'Felvétel bármelyik csatornáról';
	@override String get anyTime => 'Felvétel bármikor';
	@override String get skipInLibrary => 'A könyvtárban már meglévő epizódok kihagyása';
	@override String get keepUpTo => 'Megtartandó epizódok';
	@override String get keepUpToHint => 'A 0 minden epizódot megtart';
}

// Path: music.discography
class _Translations$music$discography$hu extends Translations$music$discography$en {
	_Translations$music$discography$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get singlesAndEps => 'Kislemezek és EP-k';
	@override String get live => 'Élő';
	@override String get compilations => 'Válogatások';
}

// Path: watchTogether.notices
class _Translations$watchTogether$notices$hu extends Translations$watchTogether$notices$en {
	_Translations$watchTogether$notices$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String pressedPlay({required Object name}) => '${name} lenyomott lejátszás';
	@override String get playbackStarted => 'A lejátszás elindult';
	@override String paused({required Object name}) => '${name} szüneteltette a lejátszást';
	@override String get playbackPaused => 'A lejátszás szünetel';
	@override String jumpedTo({required Object name, required Object position}) => 'A ${name} a ${position}-ra ugrott';
	@override String roomJumpedTo({required Object position}) => 'Ugrott ide: ${position}';
	@override String changedSpeed({required Object name, required Object speed}) => '${name} a sebességet ${speed} értékre állította';
	@override String speedChanged({required Object speed}) => 'Sebesség beállítása ${speed}';
	@override String startedMedia({required Object name, required Object title}) => 'A ${name} elindult a ${title}';
	@override String mediaStarted({required Object title}) => 'Most játszik a ${title}';
	@override String stoppedMedia({required Object name}) => 'A ${name} leállította a videót';
	@override String get mediaStopped => 'A videó leállt';
	@override String waitingFor({required Object name}) => 'Várakozás: ${name}...';
	@override String get waitingForSomeone => 'Várom, hogy valaki utolérjen...';
	@override String get finished => 'kész';
	@override String hostChangedTo({required Object name}) => '${name} lett a házigazda';
	@override String get youAreNowHost => 'Mostantól te vagy a házigazda';
	@override String joined({required Object name}) => '${name} csatlakozott';
	@override String left({required Object name}) => '${name} kilépett';
	@override String get controlRefused => 'Csak a gazdagép irányíthatja a lejátszást';
	@override String get searchFailed => 'Egyes szervereken nem sikerült megkeresni a szoba videóját';
	@override String get playBlocked => 'Nyomja meg a lejátszás elindításához';
	@override String get shareFailed => 'Nem sikerült megosztani ezt a videót a szobával';
	@override String get notShared => 'A letöltött videókat nem osztják meg a szobával';
	@override String get openFailed => 'Nem sikerült megnyitni a szoba videóját';
}

// Path: watchTogether.ended
class _Translations$watchTogether$ended$hu extends Translations$watchTogether$ended$en {
	_Translations$watchTogether$ended$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get ended => 'A házigazda befejezte a termet';
	@override String get kicked => 'Eltávolítottak a szobából';
	@override String get expired => 'A szoba lejárt';
	@override String get replaced => 'Egy másik eszközön csatlakozott ehhez a szobához';
	@override String get lost => 'Megszakadt a kapcsolat a szobával';
}

// Path: watchTogether.errors
class _Translations$watchTogether$errors$hu extends Translations$watchTogether$errors$en {
	_Translations$watchTogether$errors$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get invalidCode => 'Ez nem szobakód. A kódok 6 betűből és számjegyből állnak, 0, 1, I, L vagy O nélkül.';
	@override String get roomNotFound => 'Egyetlen szobában sincs ez a kód. Lehet, hogy vége lett.';
	@override String get roomFull => 'A szoba tele van.';
	@override String get roomLocked => 'A házigazda bezárta azt a szobát.';
	@override String get relayFull => 'A Watch Together jelenleg elfoglalt. Próbálja újra később.';
	@override String get unreachable => 'Nem sikerült elérni a Watch Together relét. Ellenőrizze a kapcsolatot.';
	@override String get rateLimited => 'Túl sok próbálkozás. Várjon egy pillanatot, és próbálja újra.';
	@override String get clientBlocked => 'A Luroka ezen verziója nem tudja használni a relét. Frissítse az alkalmazást.';
	@override String get forbidden => 'Ezt csak a házigazda teheti meg.';
	@override String get notInRoom => 'Nem vagy egy szobában.';
	@override String get alreadyInRoom => 'Már egy szobában vagy.';
	@override String get resumeFailed => 'Nem sikerült újra csatlakozni a szobához.';
	@override String get unsupported => 'A relé ezt nem támogatja.';
	@override String get generic => 'Valami elromlott. Próbáld újra.';
}

// Path: downloads.backgroundWarning
class _Translations$downloads$backgroundWarning$hu extends Translations$downloads$backgroundWarning$en {
	_Translations$downloads$backgroundWarning$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get bannerBlocked => 'A letöltések leállnak, ha kilépsz az alkalmazásból';
	@override String get bannerDegraded => 'A háttérbeli letöltések korlátozottak lehetnek';
	@override String get bannerAction => 'Részletek';
	@override String get sheetTitle => 'A háttérbeli letöltések le vannak tiltva';
	@override String get sheetTitleDegraded => 'A háttérbeli letöltések korlátozottak lehetnek';
	@override String get sheetIntro => 'Az Android megakadályozza, hogy a Luroka megbízhatóan töltsön le a háttérben.';
	@override String get sheetIntroDegraded => 'Az eszközöd korlátozza, hogy a Luroka mikor tölthet le a háttérben.';
	@override String get reasonBackgroundRestricted => 'A Luroka háttérbeli használata korlátozva van. Állítsd az akkumulátor- vagy háttérhasználatát „Korlátlan” értékre.';
	@override String get reasonStandbyRestricted => 'Az Android korlátozott készenléti állapotba helyezte a Lurokat. Állítsd az akkumulátorhasználatát „Korlátlan” értékre.';
	@override String get reasonDownloadChannelBlocked => 'A letöltési értesítések ki vannak kapcsolva, ezért előfordulhat, hogy a folyamatjelzés és a vezérlők nem érhetők el.';
	@override String get reasonNotificationsDisabled => 'Az értesítések ki vannak kapcsolva. Android 13 vagy újabb rendszeren szükségesek a hosszú háttérbeli letöltésekhez.';
	@override String get reasonDataSaver => 'Az Adatforgalom-csökkentő be van kapcsolva, ezért mobiladat-kapcsolaton nem működnek a háttérbeli letöltések. Wi-Fi-n továbbra is működniük kell.';
	@override String get reasonOemUnknown => 'A letöltések többször leálltak, miközben a Luroka a háttérben futott. Ellenőrizd a Luroka akkumulátor- vagy háttérhasználati beállításait.';
	@override String get openSettings => 'Beállítások megnyitása';
	@override String get stillNotWorking => 'Eszközspecifikus segítség';
	@override String get stillNotWorkingDescription => 'Nézd meg az eszközödhöz tartozó lépéseket, vagy ha a probléma továbbra is fennáll, küldj naplót a Beállítások › Naplók megtekintése menüből.';
	@override String get dialogTitle => 'A letöltések nem biztos, hogy befejeződnek';
	@override String get dialogDownloadAnyway => 'Letöltés mégis';
	@override String get dialogFixFirst => 'Előbb javítom';
	@override String get statusTile => 'Háttérbeli letöltések';
	@override String get statusOk => 'Futhat a háttérben';
	@override String get statusBlocked => 'A rendszerbeállítások blokkolják';
	@override String get statusDegraded => 'A rendszerbeállítások korlátozzák';
	@override String get statusUnknown => 'Még nincs ellenőrizve';
	@override String get settingsUnavailable => 'Ezen az eszközön nem sikerült megnyitni a rendszerbeállításokat';
	@override String get linkUnavailable => 'Ezen az eszközön nem sikerült megnyitni a dontkillmyapp.com webhelyet';
}

// Path: downloads.groupings
class _Translations$downloads$groupings$hu extends Translations$downloads$groupings$en {
	_Translations$downloads$groupings$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get library => 'Könyvtár';
	@override String get collections => 'Gyűjtemények';
}

// Path: companionRemote.session
class _Translations$companionRemote$session$hu extends Translations$companionRemote$session$en {
	_Translations$companionRemote$session$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get startingServer => 'Távirányító-szerver indítása...';
	@override String get hostAddress => 'Gazdagép címe';
	@override String get connected => 'Csatlakoztatva';
	@override String get serverRunning => 'A távirányító-szerver aktív';
	@override String get serverStopped => 'A távirányító-szerver leállítva';
	@override String get serverRunningDescription => 'A hálózaton lévő mobileszközök csatlakozhatnak ehhez az alkalmazáshoz';
	@override String get serverStoppedDescription => 'Indítsd el a szervert, hogy a mobileszközök csatlakozhassanak';
	@override String get usePhoneToControl => 'Használd a mobileszközödet az alkalmazás vezérléséhez';
	@override String get startServer => 'Szerver indítása';
	@override String get stopServer => 'Szerver leállítása';
	@override String get minimize => 'Kis méret';
	@override String get manualAddressHint => 'Kézi kapcsolódási cím:';
}

// Path: companionRemote.pairing
class _Translations$companionRemote$pairing$hu extends Translations$companionRemote$pairing$en {
	_Translations$companionRemote$pairing$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get discoveryDescription => 'Az azonos Plex-fiókot használó Luroka-eszközök itt jelennek meg';
	@override String get hostAddressHint => '192.168.1.100:48632';
	@override String get connecting => 'Csatlakozás...';
	@override String get searchingForDevices => 'Eszközök keresése...';
	@override String get noDevicesFound => 'Nem találhatók eszközök a hálózaton';
	@override String get noDevicesHint => 'Nyisd meg a Lurokat asztali gépen, és használd ugyanazt a Wi-Fi-hálózatot';
	@override String get availableDevices => 'Elérhető eszközök';
	@override String get manualConnection => 'Kézi csatlakozás';
	@override String get cryptoInitFailed => 'Nem sikerült elindítani a biztonságos kapcsolatot. Először jelentkezz be a Plexbe.';
	@override String get validationHostRequired => 'Add meg a gazdagép címét';
	@override String get validationHostFormat => 'A formátumnak IP:port kell lennie (pl. 192.168.1.100:48632)';
	@override String get connectionTimedOut => 'A csatlakozás túllépte az időkorlátot. Használd ugyanazt a hálózatot mindkét eszközön.';
	@override String get sessionNotFound => 'Az eszköz nem található. Győződj meg arról, hogy a Luroka fut a gazdagépen.';
	@override String get authFailed => 'A hitelesítés nem sikerült. Mindkét eszközön ugyanazt a Plex-fiókot kell használni.';
	@override String failedToConnect({required Object error}) => 'Nem sikerült a csatlakozás: ${error}';
}

// Path: companionRemote.remote
class _Translations$companionRemote$remote$hu extends Translations$companionRemote$remote$en {
	_Translations$companionRemote$remote$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get disconnectConfirm => 'Bontod a kapcsolatot a távoli munkamenettel?';
	@override String get reconnecting => 'Újracsatlakozás...';
	@override String attemptOf({required Object current}) => '${current} / 5 próbálkozás';
	@override String get retryNow => 'Újrapróbálkozás most';
	@override String get tabRemote => 'Távirányító';
	@override String get tabPlay => 'Lejátszás';
	@override String get tabMore => 'Egyebek';
	@override String get menu => 'Menü';
	@override String get tabNavigation => 'Navigációs lap';
	@override String get tabDiscover => 'Felfedezés';
	@override String get tabLibraries => 'Könyvtárak';
	@override String get tabSearch => 'Keresés';
	@override String get tabDownloads => 'Letöltések';
	@override String get tabSettings => 'Beállítások';
	@override String get previous => 'Előző';
	@override String get playPause => 'Lejátszás/Szünet';
	@override String get next => 'Következő';
	@override String get seekBack => 'Visszatekerés';
	@override String get stop => 'Leállítás';
	@override String get seekForward => 'Előretekerés';
	@override String get volume => 'Hangerő';
	@override String get volumeDown => 'Hangerő le';
	@override String get volumeUp => 'Hangerő fel';
	@override String get fullscreen => 'Teljes képernyő';
	@override String get subtitles => 'Feliratok';
	@override String get audio => 'Hang';
	@override String get searchHint => 'Keresés az asztali gépen...';
}

// Path: companionRemote.errors
class _Translations$companionRemote$errors$hu extends Translations$companionRemote$errors$en {
	_Translations$companionRemote$errors$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get noNetworkInterface => 'Nem található hálózati csatoló';
	@override String get authenticationFailed => 'A hitelesítés nem sikerült';
	@override String serverStartFailed({required Object error}) => 'Nem sikerült elindítani a távirányító-szervert: ${error}';
	@override String commandFailed({required Object error}) => 'Nem sikerült elküldeni a távoli parancsot: ${error}';
	@override String get joinTimedOut => 'Időtúllépés a munkamenethez való csatlakozáskor';
	@override String get failedToConnectAnyAddress => 'Egyetlen címhez sem sikerült csatlakozni';
	@override String connectionLostAfterAttempts({required Object attempts}) => 'A kapcsolat megszakadt ${attempts} próbálkozás után';
	@override String get connectionLost => 'A kapcsolat megszakadt';
}

// Path: services.names
class _Translations$services$names$hu extends Translations$services$names$en {
	_Translations$services$names$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get mal => 'MyAnimeList';
	@override String get anilist => 'AniList';
	@override String get simkl => 'Simkl';
	@override String get seerr => 'Seerr';
	@override String get mdblist => 'MDBList';
}

// Path: services.simklReconnect
class _Translations$services$simklReconnect$hu extends Translations$services$simklReconnect$en {
	_Translations$services$simklReconnect$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Csatlakoztassa újra a Simkl-t';
	@override String get subtitle => 'A Simkl megszünteti a kapcsolat által használt bejelentkezési módot. Az újracsatlakozás megnyitja a simkl.com webhelyet a Luroka jóváhagyásához — A Luroka soha nem látja jelszavát. Megtekintési előzményei a Simkl-n maradnak.';
}

// Path: services.deviceCode
class _Translations$services$deviceCode$hu extends Translations$services$deviceCode$en {
	_Translations$services$deviceCode$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String title({required Object service}) => 'Luroka aktiválása a következőn: ${service}';
	@override String get instructions => 'Olvasd be a QR-kódot, vagy nyisd meg az alábbi címet, és írd be ezt a kódot:';
	@override String openToActivate({required Object service}) => 'Nyisd meg a(z) ${service} oldalt az aktiváláshoz';
	@override String get copyCode => 'Aktiválási kód másolása';
	@override String get waitingForAuthorization => 'Várakozás az engedélyezésre…';
	@override String get codeCopied => 'Kód másolva';
}

// Path: services.oauthProxy
class _Translations$services$oauthProxy$hu extends Translations$services$oauthProxy$en {
	_Translations$services$oauthProxy$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String title({required Object service}) => 'Bejelentkezés ide: ${service}';
	@override String get body => 'Olvasd be ezt a QR-kódot vagy nyisd meg az URL-t bármelyik eszközön.';
	@override String openToSignIn({required Object service}) => 'Nyisd meg a(z) ${service} oldalt a bejelentkezéshez';
}

// Path: services.pendingAuth
class _Translations$services$pendingAuth$hu extends Translations$services$pendingAuth$en {
	_Translations$services$pendingAuth$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get copyUrl => 'Bejelentkezési URL másolása';
	@override String get urlCopied => 'URL másolva';
}

// Path: services.libraryFilter
class _Translations$services$libraryFilter$hu extends Translations$services$libraryFilter$en {
	_Translations$services$libraryFilter$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Könyvtárszűrő';
	@override String get subtitleAllSyncing => 'Minden könyvtár szinkronizálása';
	@override String get subtitleNoneSyncing => 'Nincs szinkronizálás';
	@override String subtitleBlocked({required Object count}) => '${count} kizárva';
	@override String subtitleAllowed({required Object count}) => '${count} engedélyezve';
	@override String get mode => 'Szűrési mód';
	@override String get modeBlacklist => 'Tiltólista';
	@override String get modeWhitelist => 'Engedélyezőlista';
	@override String get modeHintBlacklist => 'Minden könyvtár szinkronizálása az alább bejelöltek kivételével.';
	@override String get modeHintWhitelist => 'Csak az alább bejelölt könyvtárak szinkronizálása.';
	@override String get libraries => 'Könyvtárak';
	@override String get noLibraries => 'Nincsenek elérhető könyvtárak';
}

/// The flat map containing all translations for locale <hu>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsHu {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'mobileLibrary.pickerSubtitle' => 'Válasszon egy gyűjteményt a felfedezéshez',
			'mobileLibrary.searchLibraries' => 'Könyvtárak keresése',
			'mobileLibrary.noLibraries' => 'Nincsenek megfelelő könyvtárak',
			'mobileLibrary.ascending' => 'Emelkedő',
			'mobileLibrary.descending' => 'Csökkenő',
			'mobileLibrary.sort' => 'Rendezés',
			'mobileLibrary.unwatchedCount' => ({required Object count}) => '${count} meg nem nézett epizódok',
			'mobileLibrary.latestEpisode' => 'Legújabb epizód',
			'profileStartup.autoLogin' => 'Nyissa meg az utoljára használt profilt',
			'profileStartup.autoLoginHint' => 'Az utolsó profil automatikus megnyitása, ha nem igényel PIN-t.',
			'profileStartup.allowKidsExit' => 'Kilépés engedélyezése a gyerekprofilból szülői PIN nélkül',
			'profileStartup.allowKidsExitHint' => 'A gyermek szülői PIN nélkül válthat másik profilra. A profil-PIN-ek továbbra is érvényesek.',
			'profileStartup.chooseKidsConnection' => 'Válasszon másik fiókot vagy szervert',
			'profileStartup.chooseKidsConnectionHint' => 'Mentés után csatlakoztasson egy külön fiókot, vagy válasszon egy kapcsolatot egy másik profilból.',
			'subtitleUpload.chooseFile' => 'Feliratfájl feltöltése',
			'subtitleUpload.hint' => 'Válassza ki a fenti nyelvet, majd töltsön fel egy SRT, ASS, SSA vagy VTT fájlt erre a szerverre.',
			'subtitleUpload.success' => 'Felirat feltöltve a szerverre. Akkor jelenik meg, amikor a szerver frissíti az elemet.',
			'subtitleUpload.failed' => 'Nem sikerült feltölteni a feliratot. Ellenőrizze a fájl- és szerverengedélyeket.',
			'personSpotlight.inYourLibraries' => 'a könyvtáraidban',
			'personSpotlight.libraryTitles' => ({required Object n}) => 'A könyvtáraiban · ${n} címek',
			'personSpotlight.readBiography' => 'Olvassa el az életrajzot',
			'personSpotlight.newestFirst' => 'Először a legújabb',
			'personSpotlight.oldestFirst' => 'Először a legidősebb',
			'personSpotlight.titleAscending' => 'Cím A–Z',
			'personSpotlight.sortTitles' => 'Rendezés filmográfia',
			'personSpotlight.unwatchedEpisodes' => ({required Object n}) => '${n} meg nem nézett epizódok',
			'personSpotlight.copies' => ({required Object n}) => '${n} könyvtár másolatai',
			'personSpotlight.versions' => ({required Object n}) => '${n} fájlverziók',
			'personSpotlight.retryTitles' => 'Nem sikerült betölteni az összes címet. Próbálja újra',
			'detailExtras.onlineVideos' => 'Pótkocsik és extrák',
			'detailExtras.reviews' => 'Vélemények',
			'detailExtras.readReview' => 'Olvassa el a teljes értékelést',
			'detailExtras.directedBy' => ({required Object name}) => 'További rendező: ${name}',
			'detailExtras.previewUnavailable' => 'Ezt az előnézetet nem lehetett lejátszani. Ehelyett megnyithatja az eredeti alkalmazásban.',
			'detailExtras.openExternally' => 'Nyissa meg az eredeti videót',
			'mobileUi.readMore' => 'Olvass tovább',
			'mobileUi.readLess' => 'Mutass kevesebbet',
			'mobileUi.playbackTools' => 'Lejátszási lehetőségek',
			'mobileUi.streamingQuality' => 'Streaming minőség',
			'mobileUi.fileVersions' => 'Fájlverziók',
			'mobileUi.qualityAndVersions' => 'Streaming minőség és fájlverziók',
			'mobileUi.hidePlaybackTools' => 'Lejátszási eszközök elrejtése',
			'mobileUi.remaining' => ({required Object time}) => '${time} maradt',
			'mobileUi.endsAt' => ({required Object time}) => '${time}-nál ér véget',
			'mobileUi.collection' => 'Az Ön gyűjteménye',
			'mobileUi.nowPlaying' => 'MOST JÁTSZIK',
			'mobileUi.popularLibrary' => 'Népszerű a könyvtárában',
			'mobileUi.weeklyLibrary' => 'Felkapott a könyvtáradban ezen a héten',
			'family.title' => 'Profilok és család',
			'family.yourPeople' => 'A te néped',
			'family.manageHint' => 'Kezelheti az embereket, a gyerekek biztonságát és a megtekintési tevékenységet ezen az eszközön.',
			'family.people' => 'Emberek',
			'family.peopleCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n, one: '${n} személy', other: '${n} emberek', ), 
			'family.kidsCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n, one: '${n} gyerek', other: '${n} gyerekek', ), 
			'family.you' => 'Te',
			'family.adult' => 'Felnőtt',
			'family.child' => 'Gyermek',
			'family.adultTeen' => 'Felnőtt vagy tinédzser',
			'family.adultHint' => 'Saját profil, opcionális Profile PIN és saját szerverkapcsolatok.',
			'family.childHint' => 'Korhatárok, biztonságos könyvtárak és gyerekbarát megjelenés. A szülői PIN védi ezeket a beállításokat.',
			'family.upToAge' => ({required Object age}) => 'Korig ${age}',
			'family.allAges' => 'Minden korosztály',
			'family.switchProfile' => 'Profil váltása',
			'family.switchHint' => 'Válassza ki, hogy ki néz. Egy személy kezelése nem váltja a profilt.',
			'family.addPerson' => 'Személy hozzáadása',
			'family.addChild' => 'Gyermek hozzáadása',
			'family.addHint' => 'Hozzon létre egy felnőtt, tizenéves vagy gyermek profilt ezen az eszközön.',
			'family.emptyPeople' => 'Csinálj helyet mindenkinek, aki veled néz.',
			'family.emptyKids' => 'Még nincsenek gyerekprofilok. Adjon hozzá egy gyermeket a korhatárok és a biztonságos könyvtárak kiválasztásához.',
			'family.safety' => 'Gyerekek és biztonság',
			'family.safetyHint' => 'Szülői PIN, gyerekprofilok és korhatárok.',
			'family.protection' => 'Védelem',
			'family.kidsProfiles' => 'Gyerek profilok',
			'family.backupHistory' => 'Biztonsági mentés és előzmények',
			'family.parentPinOn' => 'Szülői PIN bekapcsolva',
			'family.profilePin' => 'Profil-PIN',
			'family.confirmParentPin' => 'Szülői PIN megerősítése',
			'family.parentPinOff' => 'Nincs beállítva szülői PIN',
			'family.missingPin' => 'Állítson be szülői PIN-t ezeknek a beállításoknak a védelméhez.',
			'family.hideScope' => 'A gyerekek tevékenységének elrejtése a Nézés folytatása lehetőségből ebben a Luroka profilban. Ez nem módosítja a megosztott szerver megtekintési előzményeit.',
			'family.localScope' => 'A gyermekprofilok és korlátozások ezen az eszközön vannak tárolva. Az ugyanazt a szerverfiókot használó profilok továbbra is megosztják az adott fiók figyelési folyamatát.',
			'family.clearHistoryConfirm' => 'Engedélyezi, hogy a gyerekek által megtekintett filmek újra megjelenjenek a Nézés folytatásában? A gyerekprofilokat, a korlátozásokat, a megtekintési időre vonatkozó statisztikákat és a szerver megtekintési előzményeit megőrzik.',
			'family.editRestrictions' => 'Szerkessze a gyerekekre vonatkozó korlátozásokat',
			'family.activity' => 'Tevékenység megtekintése',
			'family.namedActivity' => ({required Object name}) => 'A ${name} megtekintési tevékenysége',
			'family.thisProfile' => 'Ezt a profilt',
			'family.activityScope' => 'A Luroka által rögzített lejátszási idő ezen az eszközön az aktív profilhoz. Ezek statisztikák, nem megtekintési korlátok vagy teljes szerverelőzmények.',
			'family.activityUnavailable' => 'Ehhez a profilhoz még nem érhető el a megtekintési tevékenység.',
			'family.finished' => 'Kész',
			'posterDetails.showThemeMusic' => 'Játssz téma zenét',
			'posterDetails.showThemeMusicDescription' => 'Lejátszhat egy filmet vagy műsort, miközben a részletes oldal meg van nyitva, ha elérhető a szerveren.',
			'posterDetails.catalogEpisodeInfo' => 'Az epizódszám és a futásidő megjelenítése a katalóguskártyákon',
			'posterDetails.catalogEpisodeInfoDescription' => 'Az epizódszámok és az átlagos időtartam megjelenítése a Felfedezés-plakátokon.',
			'posterDetails.title' => 'Plakát részletei',
			'posterDetails.description' => 'Mutassa meg a címet, az évet és a IMDb értékelést a Studio, Search, Felfedezés és Libraries plakátok alatt. A hiányzó IMDb értékelések rejtve maradnak. Kapcsolja ki a csak műalkotásokat tartalmazó posztereknél.',
			'libraryPolish.compactTvNavigation' => 'Kompakt könyvtári navigáció',
			'libraryPolish.compactTvNavigationDescription' => 'A kicsúsztatható menüben megjelenítheti a könyvtár szakaszait és böngészhet a lehetőségek között, így több hely marad a posztereknek.',
			'libraryPolish.openLibraryMenu' => 'Nyissa meg a könyvtár menüt',
			'libraryPolish.posterDetails' => 'Plakát részletei',
			'libraryPolish.showPosterDetails' => 'A plakát részleteinek megjelenítése · név, év és IMDb',
			'libraryPolish.hidePosterDetails' => 'A plakát részleteinek elrejtése',
			'libraryPolish.overview' => 'Áttekintés',
			'libraryPolish.refreshing' => 'Könyvtár frissítése…',
			'libraryPolish.serverCollections' => 'Az összes gyűjtemény ezen a szerveren',
			'libraryPolish.serverPlaylists' => 'Az összes videó lejátszási lista ezen a szerveren',
			'libraryPolish.libraryCollections' => 'Gyűjtemények ebben a könyvtárban',
			'libraryPolish.searchCollections' => 'Keresés a gyűjteményekben',
			'libraryPolish.searchPlaylists' => 'Lejátszási listák keresése',
			'libraryPolish.searchHint' => 'Keresés név szerint',
			'libraryPolish.titleAscending' => 'Cím A–Z',
			'libraryPolish.titleDescending' => 'Cím Z–A',
			'libraryPolish.clearFilters' => 'Tiszta szűrők',
			'libraryPolish.playlistEmptyTitle' => 'A filmes esték, az Ön sorrendjében',
			'libraryPolish.playlistEmptyHint' => 'Nyissa meg egy tétel Továbbiak menüjét, és válassza a Hozzáadás lejátszási listához lehetőséget az első lejátszási lista létrehozásához.',
			'libraryPolish.noMatches' => 'Nincsenek egyező nevek',
			'libraryPolish.indexing' => 'Keresés a teljes katalógusban…',
			'showSchedule.today' => 'Ma',
			'showSchedule.tomorrow' => 'Holnap',
			'showSchedule.latestUpcoming' => 'Legújabb és közelgő',
			'showSchedule.latestEpisode' => 'Legújabb epizód',
			'showSchedule.upcoming' => 'Közelgő',
			'showSchedule.inLibrary' => 'A könyvtárában',
			'showSchedule.notInLibrary' => 'Nincs a könyvtárában',
			'showSchedule.notYetAired' => 'Még nem adták le',
			'showSchedule.episode' => ({required Object number}) => '${number} epizód',
			'showSchedule.caughtUp' => 'Mindannyian elkaptak',
			'showSchedule.finished' => 'Befejezted ezt a sorozatot',
			'showSchedule.nextAirs' => ({required Object date}) => 'A következő epizód ${date}',
			'showSchedule.watchBeginning' => 'Nézd az elejétől',
			'showSchedule.replay' => 'Újrajátszás',
			'showSchedule.playNext' => 'Játssz tovább',
			'awardsCatalog.awards' => 'Díjak',
			'awardsCatalog.customize' => 'Testreszabás',
			'awardsCatalog.chooseShelves' => 'A Felfedezés személyre szabása',
			'awardsCatalog.shelvesDescription' => 'Válassza ki a kívánt sorokat a Discoverben. A díjak soraiban a nyertesek láthatók a könyvtáraidból. A rendszer menti választásait ehhez a profilhoz.',
			'awardsCatalog.restoreShelves' => 'Alapértékek visszaállítása',
			'awardsCatalog.charts' => 'IMDb diagramok',
			'awardsCatalog.generalShelves' => 'Népszerű és felkapott',
			'awardsCatalog.saveShelvesFailed' => 'Nem sikerült menteni a Felfedezés-választásokat. Kérjük, próbálja újra.',
			'awardsCatalog.comedyActress' => 'Főszereplő · Vígjáték',
			'awardsCatalog.leadDramaActor' => 'Főszereplő · Dráma',
			'awardsCatalog.leadDramaActress' => 'Főszereplő · Dráma',
			'awardsCatalog.comedySupportingActor' => 'Mellékszereplő · Vígjáték',
			'awardsCatalog.comedySupportingActress' => 'Mellékszereplő · Vígjáték',
			'awardsCatalog.leadingPerformance' => 'Ezüst Medve · Legjobb vezető teljesítmény',
			'awardsCatalog.globesComedySeries' => 'Legjobb televíziós sorozat · Musical vagy vígjáték',
			'awardsCatalog.limitedSupportingActor' => 'Mellékszereplő · Limitált sorozat vagy film',
			'awardsCatalog.limitedSupportingActress' => 'Mellékszereplő · Limitált sorozat vagy film',
			'awardsCatalog.berlinDocumentary' => 'Berlinale Dokumentumfilm Díj',
			'awardsCatalog.title' => 'Díjak és fesztiválok',
			'awardsCatalog.chooseCategory' => 'Válasszon díjkategóriát',
			'awardsCatalog.winners' => 'Nyertesek',
			'awardsCatalog.nominees' => 'Jelöltek',
			'awardsCatalog.releaseDecade' => 'Kiadási évtized',
			'awardsCatalog.allYears' => 'Minden évben',
			'awardsCatalog.loading' => 'Díjcímek betöltése…',
			'awardsCatalog.matching' => 'Ezeknek a címeknek a keresése a könyvtáraiban…',
			'awardsCatalog.unavailable' => 'A díjak adatai jelenleg nem állnak rendelkezésre. Próbáld újra.',
			'awardsCatalog.empty' => 'Ebben a kategóriában nincs egyező cím a látható könyvtáraiban.',
			'awardsCatalog.coverage' => 'A tagság a Wikidatából származik, és lehet hiányos. A színész és rendező kategóriák azokat a filmeket vagy műsorokat mutatják meg, amelyekért díjazták. Az évek a cím kiadására vonatkoznak, nem a ceremóniára.',
			'awardsCatalog.picture' => 'Legjobb Kép',
			'awardsCatalog.film' => 'Legjobb Film',
			'awardsCatalog.international' => 'Legjobb nemzetközi funkció',
			'awardsCatalog.internationalFilm' => 'Legjobb nemzetközi film',
			'awardsCatalog.nonEnglishFilm' => 'A legjobb nem angol nyelvű film',
			'awardsCatalog.animated' => 'Legjobb animációs film',
			'awardsCatalog.animatedFilm' => 'Legjobb animációs film',
			'awardsCatalog.documentary' => 'Legjobb dokumentumfilm',
			'awardsCatalog.director' => 'Legjobb rendező',
			'awardsCatalog.actor' => 'Legjobb színész',
			'awardsCatalog.actress' => 'Legjobb színésznő',
			'awardsCatalog.supportingActor' => 'Legjobb mellékszereplő',
			'awardsCatalog.supportingActress' => 'Legjobb női mellékszereplő',
			'awardsCatalog.originalScreenplay' => 'Legjobb eredeti forgatókönyv',
			'awardsCatalog.adaptedScreenplay' => 'Legjobb adaptált forgatókönyv',
			'awardsCatalog.screenplay' => 'Legjobb forgatókönyv',
			'awardsCatalog.cinematography' => 'Legjobb operatőr',
			'awardsCatalog.editing' => 'Legjobb szerkesztés',
			'awardsCatalog.score' => 'Legjobb Eredeti Kotta',
			'awardsCatalog.song' => 'Legjobb eredeti dal',
			'awardsCatalog.sound' => 'Legjobb Hang',
			'awardsCatalog.effects' => 'Legjobb vizuális effektusok',
			'awardsCatalog.productionDesign' => 'Legjobb gyártási tervezés',
			'awardsCatalog.costume' => 'Legjobb jelmeztervezés',
			'awardsCatalog.makeup' => 'Legjobb smink és frizura',
			'awardsCatalog.dramaSeries' => 'Kiváló drámasorozat',
			'awardsCatalog.comedySeries' => 'Kiváló vígjátéksorozat',
			'awardsCatalog.limitedSeries' => 'Kiváló limitált széria',
			'awardsCatalog.animatedProgram' => 'Kiváló animációs program',
			'awardsCatalog.comedyActor' => 'Főszereplő · Vígjáték',
			'awardsCatalog.limitedActor' => 'Főszereplő · Limitált sorozat vagy film',
			'awardsCatalog.limitedActress' => 'Főszereplő · Limitált sorozat vagy film',
			'awardsCatalog.limitedDirecting' => 'Rendező · Limitált sorozat vagy film',
			'awardsCatalog.britishFilm' => 'Legjobb brit film',
			'awardsCatalog.goldenBear' => 'Arany Medve',
			'awardsCatalog.grandJury' => 'A zsűri fődíja',
			'awardsCatalog.jury' => 'A zsűri díja',
			'awardsCatalog.teddy' => 'Teddy-díj',
			'awardsCatalog.goldenLion' => 'Arany Oroszlán',
			'awardsCatalog.volpiActor' => 'Volpi Kupa · Legjobb színész',
			'awardsCatalog.volpiActress' => 'Volpi Kupa · Legjobb színésznő',
			'awardsCatalog.queerLion' => 'Queer Lion',
			'awardsCatalog.dramaFilm' => 'Legjobb film · Dráma',
			'awardsCatalog.comedyFilm' => 'Legjobb film · Musical vagy vígjáték',
			'awardsCatalog.dramaActor' => 'Legjobb színész · Dráma',
			'awardsCatalog.dramaActress' => 'Legjobb színésznő · Dráma',
			'awardsCatalog.usDramatic' => 'Az amerikai drámai zsűri nagydíja',
			'awardsCatalog.documentaryJury' => 'Dokumentumfilm zsűri nagydíja',
			'awardsCatalog.worldCinema' => 'A World Cinema zsűrijének fődíja',
			'awardsCatalog.dramaticAudience' => 'Amerikai drámai közönségdíj',
			'awardsCatalog.usDirecting' => 'Amerikai rendezési díj',
			'awardsCatalog.peopleChoice' => 'People\'s Choice Award',
			'awardsCatalog.canadianFilm' => 'Legjobb kanadai film',
			'awardsCatalog.firstFeature' => 'Legjobb első funkció',
			'awardsCatalog.cassavetes' => 'John Cassavetes-díj',
			'awardsCatalog.scienceFiction' => 'Legjobb sci-fi film',
			'awardsCatalog.fantasy' => 'Legjobb fantasy film',
			'awardsCatalog.horror' => 'Legjobb horror film',
			'awardsCatalog.action' => 'Legjobb akció- vagy kalandfilm',
			'awardsCatalog.thriller' => 'Legjobb thriller film',
			'searchDiscovery.suggestions' => 'Valami néznivaló',
			'searchDiscovery.collections' => 'Díjak és gyűjtemények',
			'searchDiscovery.collectionsHint' => 'Díjnyertesek és válogatott listák a könyvtáraidból',
			'searchDiscovery.all' => 'Minden felfedezés',
			'searchDiscovery.awards' => 'Díjak és grafikonok',
			'lurokaPlayerDesign.seeking' => 'Előnézet keresése',
			'lurokaPlayerDesign.keepWatching' => 'Nézz tovább',
			'lurokaPlayerDesign.upNext' => 'Legközelebb',
			'lurokaPlayerDesign.playingIn' => ({required Object seconds}) => 'Lejátszás ${seconds} s',
			'lurokaWorkspace.everyday' => 'Mindennapi',
			'lurokaWorkspace.homeDiscovery' => 'Otthon és felfedezés',
			'lurokaWorkspace.librariesAccounts' => 'Könyvtárak és fiókok',
			'lurokaWorkspace.profilesFamily' => 'Profilok és család',
			'lurokaWorkspace.thisDevice' => 'Ez a készülék',
			'lurokaWorkspace.thisProfile' => 'Ezt a profilt',
			'lurokaWorkspace.searchSettings' => 'Keresési beállítások',
			'lurokaWorkspace.savedAutomatically' => 'A változtatások automatikusan mentésre kerülnek. A Mindennapi és a Haladó csak a megjelenített vezérlőket módosítja.',
			'lurokaWorkspace.audioSubtitles' => 'Hang és feliratok',
			'lurokaWorkspace.audioDescription' => 'Hangkimenet, hangerő és felirat megjelenés. Az előnyben részesített nyelvek kiszolgálófiókonként kerülnek beállításra a Fiókbeállítások segítségével, amikor csatlakoztatva van.',
			'lurokaWorkspace.pictureSound' => 'Kép és hang',
			'lurokaWorkspace.pictureDescription' => 'Képkockasebesség illesztés, felbontás, HDR és Dolby Vision hangolás ehhez az eszközhöz.',
			'lurokaWorkspace.engineDescription' => 'Lejátszómotor, dekódolás, egyéni konfiguráció és fejlett lejátszási szabályok.',
			'lurokaWorkspace.networkStreaming' => 'Hálózat és adatfolyam',
			'lurokaWorkspace.networkDescription' => 'Streaming minőség, közvetlen lejátszású kodek beállításai és sávszélesség-beállítások.',
			'lurokaWorkspace.homeOptions' => 'Otthoni lehetőségek',
			'lurokaWorkspace.refreshHome' => 'Frissítse az Otthont és a Népszerűt most',
			'lurokaWorkspace.customizeHome' => 'A Kezdőlap személyre szabása',
			'lurokaWorkspace.spotlight' => 'Otthoni reflektorfény',
			'lurokaWorkspace.rotateSpotlight' => 'A kiemelt címek automatikus elforgatása',
			'lurokaWorkspace.rotateDescription' => 'Forgatás, amíg a Kezdőlap tétlen. Az interakció szünetelteti a forgást; a polcok böngészése, egy oldal megnyitása vagy az alkalmazás elhagyása teljesen szünetelteti azt.',
			'lurokaWorkspace.rotationInterval' => 'A kiemelt címek közötti idő',
			'mobileFixes.connectionRecoveryHint' => 'A szerver nem elérhető? Kezelje fiókjait, vagy csatlakozzon másik szerverhez.',
			'downloadsRedesign.shelfSize' => 'Elemek polconként',
			'downloadsRedesign.shelfSizeHint' => 'Mutasson 16, 32 vagy 48 tételt a Megtekintés folytatása és az ajánlási polcokon. Előfordulhat, hogy a szerverek kevesebb elérhető címet adnak vissza.',
			'downloadsRedesign.subtitle' => 'Az Ön kedvencei, készen állnak az utazásra.',
			'downloadsRedesign.transfers' => 'Átigazolások',
			'downloadsRedesign.ready' => 'Offline állapotban',
			'downloadsRedesign.active' => 'Letöltés',
			'downloadsRedesign.waiting' => 'Várakozás',
			'downloadsRedesign.downloaded' => 'Letöltve',
			'downloadsRedesign.speed' => 'Letöltési sebesség',
			'downloadsRedesign.notificationProgress' => '{progress} · {networkSpeed} · {timeRemaining} maradt',
			'kidsShelf.movieShelf' => 'Filmidő',
			'kidsShelf.showShelf' => 'Találja meg a következő műsorát',
			'kidsShelf.aurora' => 'Aurora – mély kékeszöld és lime',
			'kidsShelf.marquee' => 'Marquee — bársony és arany',
			'kidsShelf.electric' => 'Elektromos - indigó és jég',
			'kidsShelf.midnight' => 'Éjfél – acél és borostyán',
			'kidsShelf.yourShelf' => 'A filmes polcod',
			'kidsShelf.all' => 'Mindent',
			'kidsShelf.pickSomething' => 'mit akarsz nézni?',
			'kidsHome.everything' => 'Neked',
			'kidsHome.keepWatching' => 'Nézz tovább',
			'kidsHome.emptyFilter' => 'Itt még semmi. Próbáld ki Neked, vagy kérd meg a felnőttedet, hogy adjon hozzá valamit, amit szeret.',
			'tvSettingsV2.moreThemes' => 'További témák és egyedi színek',
			'tvSettingsV2.moreThemesHint' => 'Nyissa meg az összes elérhető előre beállított beállítást és egyéni témabeállítást.',
			'tvSettingsV2.previewLive' => 'Élő előnézet',
			'tvSettingsV2.previewIllustration' => 'Előnézeti példa',
			'tvSettingsV2.previewShelfCount' => ({required Object count}) => 'Polconként akár ${count} tétel',
			'tvSettingsV2.simple' => 'Egyszerű',
			'tvSettingsV2.homeNavigation' => 'Kezdőlap és navigáció',
			'tvSettingsV2.libraryCards' => 'Könyvtár és kártyák',
			'tvSettingsV2.accountsLibraries' => 'Fiókok és könyvtárak',
			'tvSettingsV2.profilesFamily' => 'Profilok és család',
			'tvSettingsV2.aboutSupport' => 'Névjegy és támogatás',
			'tvSettingsV2.playback' => 'Lejátszás',
			'tvSettingsV2.homeHint' => 'Válassza ki, hogy mi jelenjen meg a Kezdőlapon és a navigációban.',
			'tvSettingsV2.libraryHint' => 'Állítsa be a plakátok méretét, a címkéket és a figyelt indikátorokat.',
			'tvSettingsV2.advancedPlayback' => 'Játékos motor és streaming',
			'tvSettingsV2.advancedPlaybackHint' => 'Lejátszó, videó kimenet, streaming és speciális lejátszási lehetőségek.',
			'tvSettingsV2.advancedTools' => 'Diagnosztika és biztonsági mentések',
			'tvSettingsV2.advancedToolsHint' => 'Naplók, hibaelhárítás, beállítások biztonsági mentése és visszaállítása.',
			'tvSettingsV2.themePreview' => 'Téma előnézete',
			'tvSettingsV2.libraryPreview' => 'Könyvtár előnézete',
			'tvSettingsV2.homePreview' => 'Kezdőlap előnézete',
			'tvSettingsV2.subtitlePreview' => 'Felirat előnézet',
			'tvSettingsV2.subtitleSample' => 'A felirataid így fognak kinézni.',
			'tvSettingsV2.previewPlaceholder' => 'Az Ön alkotása itt jelenik meg',
			'tvSettingsV2.posterSize' => 'Plakát mérete',
			'tvSettingsV2.serverRecommendations' => 'Otthoni ajánlások a szerverről',
			'tvSettingsV2.tvLayout' => 'Használja a TV elrendezését',
			'tvSettingsV2.hardwareDecode' => 'Használjon hardveres videó dekódolást',
			'tvSettingsV2.serverNames' => 'Szervernevek megjelenítése a Kezdőlap sorokban',
			'tvSettingsV2.settingsSaved' => 'A változtatások automatikusan mentésre kerülnek.',
			'tvSettingsV2.morePlayback' => 'Haladó lejátszás',
			'tvSettingsV2.screenDisplay' => 'Kép és hang',
			'tvSettingsV2.engine' => 'Játékos motor',
			'tvSettingsV2.network' => 'Streaming és hálózat',
			'tvSettingsV2.performance' => 'Teljesítmény',
			'tvSettingsV2.simpleAudio' => 'Nyelvek és feliratok megjelenése',
			'settingsRedesign.themeEffects' => 'Téma és effektusok',
			'settingsRedesign.libraryLayout' => 'Könyvtár elrendezése',
			'settingsRedesign.posterInformation' => 'Plakát információk',
			'settingsRedesign.libraryBehavior' => 'Könyvtári viselkedés',
			'settingsRedesign.appearanceHint' => 'Testreszabhatja a Luroka megjelenését, elrendezését és viselkedését.',
			'settingsRedesign.livePreview' => 'Élő előnézet',
			'settingsRedesign.previewHint' => 'Tekintse meg, hogyan fog kinézni könyvtára a jelenlegi beállításokkal.',
			'settingsRedesign.showLiveTv' => 'Élő TV megjelenítése',
			'settingsRedesign.showLiveTvHint' => 'Élő TV megjelenítése a navigációban, ha egy csatlakoztatott szerver támogatja. Ez nem változtatja meg a szerverét.',
			'settingsRedesign.aboutTagline' => 'Az Ön médiája. A te tered.',
			'settingsRedesign.aboutDescription' => 'A Luroka összehozza Plex, Jellyfin és Emby könyvtárait egy moziszerű lejátszóban telefonokhoz, TV-khez és asztali számítógépekhez.',
			'settingsRedesign.aboutFeatures' => 'Böngésszen könyvtárai között, folytassa a filmeket és műsorokat, szabja személyre profilokat, élvezze a letöltéseket és nézzen együtt. Élő TV kompatibilis szerverrel érhető el.',
			'settingsRedesign.services' => 'Kapcsold össze a világod',
			'settingsRedesign.updateSource' => 'Frissítse a forrást',
			'settingsRedesign.updateSourceHint' => 'A Luroka kiadási hírcsatornájának HTTPS-címe. A forgalmazó ezt előre beállíthatja az alkalmazásban.',
			'settingsRedesign.updateNotConfigured' => 'Az automatikus frissítések nincsenek konfigurálva ehhez a buildhez.',
			'settingsRedesign.downloadInstall' => 'Letöltés és telepítés',
			'settingsRedesign.installUpdate' => 'Frissítés telepítése',
			'settingsRedesign.downloading' => 'Frissítés letöltése…',
			'settingsRedesign.downloadFailed' => 'Nem sikerült letölteni vagy ellenőrizni a frissítést. Kérjük, próbálja újra.',
			'settingsRedesign.installPermission' => 'Engedélyezze a Luroka számára a frissítések telepítését az Android beállításaiban, majd térjen vissza, és válassza a Frissítés telepítése lehetőséget.',
			'settingsRedesign.updateReady' => 'Letöltés ellenőrizve. Telepítésre kész.',
			'settingsRedesign.releaseNotes' => 'Kiadási megjegyzések',
			'settingsRedesign.invalidFeed' => 'Adjon meg egy érvényes HTTPS-frissítési hírcsatorna-címet.',
			'onboarding.connectStep' => '01 · Csatlakozás',
			'onboarding.connectTitle' => 'Üdvözöljük a Luroka oldalon',
			'onboarding.connectHint' => 'Jelentkezzen be, hogy ide hozza könyvtárait.',
			'onboarding.serverAddressHint' => 'Adja meg a szerver címét, vagy válasszon egy, a hálózaton található szervert.',
			'onboarding.serverSignInHint' => 'Használja szerver felhasználónevét és jelszavát a könyvtárak csatlakoztatásához.',
			'onboarding.serverAddressTitle' => 'Szerver címe',
			'onboarding.serverAccountTitle' => 'A szerver fiókod',
			'onboarding.plexHomeTitle' => 'Válassza ki a Plex otthoni felhasználóját',
			'onboarding.plexHomeHint' => 'Válassza ki azt a Plex felhasználót, akinek a könyvtárait használni szeretné. Legközelebb beállítja a Luroka profilt.',
			'onboarding.chooseService' => 'Válassza ki szolgáltatását',
			'onboarding.profileStep' => '02 · Az Ön profilja',
			'onboarding.profileTitle' => 'Érezd magad otthon.',
			'onboarding.profileHint' => 'Válasszon nevet és avatárt a Luroka profiljához. A csatlakoztatott fiók változatlan marad.',
			'onboarding.readyStep' => '03 · Megtekintésre kész',
			'onboarding.readyTitle' => 'Még egy kicsit te.',
			'onboarding.readyHint' => 'Hozd össze szolgáltatásaidat, vagy adj helyet valaki másnak. Ezt később bármikor megteheti.',
			'onboarding.addService' => 'Csatlakoztasson egy másik szolgáltatást',
			'onboarding.editProfile' => 'Szerkessze a nevét és az avatarod',
			'onboarding.connected' => 'Csatlakoztatva és készen áll',
			'onboarding.backToProfile' => 'Vissza a profilodhoz',
			'onboarding.showOtherPlexHome' => 'Mutasd a többi Plex Home tagot',
			'onboarding.showOtherPlexHomeHint' => 'Alapértelmezés szerint ki. Az Ön által használt Luroka-profilok és Plex Home-tagok láthatóak maradnak. Kapcsolja be, ha valaki mást szeretne választani.',
			'household.title' => 'Az Ön Luroka háztartása',
			'household.welcome' => 'Legyen a Luroka a magáé',
			'household.welcomeHint' => 'Az első fiókod csatlakoztatva van. Tedd személyre profilodat, vagy adj hozzá valakit, mielőtt elkezded nézni.',
			'household.profiles' => 'Profilok és háztartás',
			'household.manageHint' => 'Adjon hozzá személyeket, módosítsa a képeket, és kezelje az egyes profilok kapcsolatait.',
			'household.addProfile' => 'Luroka profil hozzáadása',
			'household.addHint' => 'Mindenki csatlakoztathatja saját Plex, Emby vagy Jellyfin bejelentkezési adatait. Csak a profiljukhoz hozzáadott kapcsolatok jelennek meg számukra.',
			'household.sharedHint' => 'Egy másik profil kapcsolatának újrafelhasználása megosztja a szerver felhasználójának megfigyelt állapotát és a lejátszás előrehaladását. Válasszon külön bejelentkezést a független megtekintési előzményekhez.',
			'household.personalise' => 'Profil személyre szabása',
			'household.changePicture' => 'Profilkép módosítása',
			'household.pictureHint' => 'Válassz egy Luroka avatart vagy egy fényképet. Ez csak ezen az eszközön változtatja meg a képet; a szerverfiókod érintetlen.',
			'household.serverPicture' => 'Használja a szerver képét / kezdőbetűit',
			'household.choosePhoto' => 'Válasszon egy fényképet',
			'household.photoHint' => 'JPEG, PNG vagy más támogatott kép, legfeljebb 10 MB. A fotók átméretezésre kerülnek és ezen az eszközön tárolódnak.',
			'household.pictureSaved' => 'A profilkép frissítve',
			'household.pictureFailed' => 'Nem sikerült frissíteni a profilképet. Próbáljon ki egy támogatott képet 10 MB-ig.',
			'household.saveFailed' => 'Nem sikerült menteni a profilbeállításokat. Kérjük, próbálja újra.',
			'household.startWatching' => 'Kezdje el nézni',
			'household.manageProfiles' => 'Profilok kezelése vagy váltása',
			'household.addLater' => 'Később további személyeket vehet fel a Beállítások → Profilok és háztartás menüpontban.',
			'household.connectionRequired' => 'Adjon hozzá egy szerverkapcsolatot a profil beállításának befejezéséhez.',
			'household.mountain' => 'Hegy',
			'household.orbit' => 'Explorer',
			'household.waves' => 'Óceán',
			'household.blossom' => 'Blossom',
			'household.lightning' => 'Villámlás',
			'household.moon' => 'Hold',
			'household.avatarGallery' => 'Válassz egy avatart',
			'household.avatarIllustrationHint' => 'Eredeti illusztrált portrék, gyerekek és állatbarátok',
			'household.avatarPortraitSunrise' => 'Napkelte portréja',
			'household.avatarPortraitMeadow' => 'Réti portré',
			'household.avatarPortraitBerry' => 'Bogyó portré',
			'household.avatarPortraitGolden' => 'Arany portré',
			'household.avatarPortraitIndigo' => 'Indigó portré',
			'household.avatarPortraitOcean' => 'Óceán portré',
			'household.avatarKidArtist' => 'Kis művész',
			'household.avatarKidSkater' => 'Kis korcsolyázó',
			'household.avatarCat' => 'Kíváncsi macska',
			'household.avatarDog' => 'Boldog kutya',
			'household.avatarPanda' => 'Panda',
			'household.avatarOwl' => 'Bagoly',
			'household.avatarFox' => 'Fox',
			'household.avatarDinosaur' => 'Dinoszaurusz',
			'household.avatarRobot' => 'Robot',
			'detailComposition.startOver' => 'Kezdje elölről',
			'detailComposition.seriesCast' => 'A sorozat szereplői',
			'detailComposition.streamingQuality' => 'Stream minősége…',
			'detailComposition.trailer' => 'Előzetes',
			'detailComposition.manageMedia' => 'Médiakezelés…',
			'detailComposition.playbackOptions' => 'Lejátszási lehetőségek…',
			'detailComposition.moreActions' => 'További műveletek',
			'detailComposition.watched' => 'Figyelt',
			'detailComposition.unwatched' => 'Nézetlen',
			'detailComposition.endsAt' => ({required Object time}) => '${time}-nál ér véget',
			'detailComposition.automatic' => 'Automatikus',
			'detailComposition.usePreferences' => 'Használja lejátszási beállításait',
			'detailComposition.mediaInformation' => 'Médiainformációk',
			'detailComposition.fullFileInformation' => 'Teljes fájlinformáció',
			'detailComposition.castAndCrew' => 'Szereplők és stáb',
			'kids.timeLimits' => 'Képernyőidő-korlátok',
			'kids.dailyWatchLimit' => 'Napi nézési idő',
			'kids.dailyWatchLimitHint' => 'Naponta korlátozza a videolejátszást ezen az eszközön.',
			'kids.noTimeLimit' => 'Nincs korlátozás',
			'kids.minutesLimit' => ({required Object minutes}) => '${minutes} perc',
			'kids.bedtime' => 'Lefekvés',
			'kids.bedtimeHint' => 'A profil használatához ezekben az órákban egy szülő PIN szükséges.',
			'kids.bedtimeStart' => 'Elkezdődik a lefekvés',
			'kids.bedtimeEnd' => 'Lefekvés véget ér',
			'kids.timeLimitReached' => 'A nézési idő mára lejárt',
			'kids.bedtimeReached' => 'Lefekvés ideje van',
			'kids.timeLimitParentHint' => 'Kérje meg a szülőt, hogy adja meg PIN értékét, hogy folytathassa ezt a foglalkozást.',
			'kids.parentUnlock' => 'Szülői feloldás',
			'kids.backupProfile' => 'Gyermekprofil biztonsági mentése',
			'kids.backupExplain' => 'Készítsen biztonsági másolatot a profil mentett nevéről, karakteréről, korlátozásairól, megjelenéséről és a helyi megtekintési kizárásokról. A szülői PIN-kódokat, a szerverbejelentkezéseket, a letöltéseket és a szerver lejátszási folyamatát nem tartalmazza.',
			'kids.saveBackupFile' => 'Mentse a biztonsági másolat fájlt',
			'kids.copyBackup' => 'Biztonsági másolat szövegének másolása',
			'kids.backupSaved' => ({required Object path}) => 'A gyerekek profiljának biztonsági másolata mentve a ${path} mappába',
			'kids.backupCopied' => 'A gyerekek profiljának biztonsági másolata másolva',
			'kids.backupFailed' => 'Nem sikerült menteni a gyerekek profiljának biztonsági másolatát. Kérjük, próbálja újra.',
			'kids.restoreProfile' => 'Gyerekprofil visszaállítása',
			'kids.chooseBackupFile' => 'Válasszon biztonsági mentési fájlt',
			'kids.pasteBackup' => 'Illessze be a biztonsági másolat szövegét',
			'kids.backupText' => 'Gyermekprofil biztonsági mentése JSON',
			'kids.pasteFromClipboard' => 'Beillesztés a vágólapról',
			'kids.restoreReview' => 'Tekintse át ezeket a visszaállított beállításokat, majd a Mentés után hozzon létre új gyerekprofilt a jelenlegi szerverkapcsolataival. A meglévő profilok nem íródnak felül. A könyvtárkiválasztások és a megtekintési kizárások csak ugyanazoknak a szerver-/könyvtárazonosítóknak felelnek meg.',
			'kids.restoreInvalid' => 'Ez nem érvényes támogatott gyerekprofil biztonsági másolat. Válasszon egy Luroka gyerekprofil JSON biztonsági másolatot.',
			'kids.deleteProfile' => 'Gyermekprofil törlése',
			'kids.deleteExplain' => ({required Object name}) => 'Törli a ${name}-t a Luroka-ból? A helyi beállítások, letöltések és megtekintési kizárások el lesznek távolítva. Szerverfiókja és szerveroldali előzményei megmaradnak. Először készítsen biztonsági másolatot, ha később vissza szeretné állítani a profilt.',
			'kids.profileDeleted' => 'Gyermekprofil törölve',
			'kids.allowedLibraries' => 'Engedélyezett könyvtárak',
			'kids.unavailableLibrary' => 'Korábban kiválasztott könyvtár (jelenleg nem érhető el)',
			'kids.allLibraries' => 'Engedélyezze az összes csatlakoztatott film- és TV-könyvtárat',
			'kids.librariesExplain' => 'Kapcsolja ki ezt a funkciót adott könyvtárak kiválasztásához. A kiválasztott könyvtárakon belül továbbra is érvényesek az életkorra és az animációra vonatkozó szabályok. Az új könyvtárak nem kerülnek automatikusan hozzáadásra a kijelölés használatakor.',
			'kids.librariesUnavailable' => 'Nincsenek betöltve film- vagy TV-könyvtárak. Csatlakozzon a szerverhez, nyissa meg a Libraries alkalmazást, majd térjen vissza ide a választáshoz.',
			'kids.noLibrariesSelected' => 'Nincs kiválasztva könyvtár: ez a gyermek nem fog látni egyetlen címet sem.',
			'kids.animationOnly' => 'Csak animáció',
			'kids.animationExplain' => 'Csak az Animáció műfajjal megcímkézett címeket jelenítse meg a szerveren. Ez nem helyettesíti a korhatárt: az animáció felnőtteknek is szólhat. A hiányzó műfaji metaadatok el vannak rejtve.',
			'kids.allowUnrated' => 'Korhatár nélküli címek engedélyezése',
			'kids.unratedExplain' => 'Alapértelmezés szerint ki. Ha engedélyezve van, hiányzó vagy minősítetlen besorolások jelenhetnek meg, ha a könyvtár és az animációs szabályok lehetővé teszik. Alkalmasságuk életkor szerint nem ellenőrizhető. A korhatár feletti ismert besorolások és az el nem ismert besorolások rejtve maradnak.',
			'kids.whoIsWatching' => 'Ki figyel?',
			'kids.chooseAdventure' => 'A nagy kalandok kis világa.',
			'kids.chooseProfile' => 'Válassza ki a helyet. Legyen filmes este.',
			'kids.welcome' => ({required Object name}) => 'Szia, ${name}!',
			'kids.welcomeOlder' => ({required Object name}) => 'A következő nagyszerű történeted, ${name}.',
			'kids.homeSubtitle' => 'Nagy kalandok. Kis felfedezések. Mindent neked.',
			'kids.homeSubtitleOlder' => 'Találj új kedvencet. Folytasd ott, ahol abbahagytad.',
			'kids.featured' => 'A mai nap nagy kalandja',
			'kids.featuredOlder' => 'A reflektorfényben',
			'kids.moreInfo' => 'További információ',
			'kids.movies' => 'Filmek',
			'kids.shows' => 'Műsorok',
			'kids.profiles' => 'Profilok',
			'kids.adultBadge' => 'Felnőttek',
			'kids.avatar' => 'Válaszd ki a karaktered',
			'kids.avatarExplorer' => 'Űrkutató',
			'kids.avatarFox' => 'Fox',
			'kids.avatarDinosaur' => 'Dinoszaurusz',
			'kids.avatarRobot' => 'Robot',
			'kids.avatarChildArtist' => 'Kis művész',
			'kids.avatarChildSkater' => 'Kis korcsolyázó',
			'kids.avatarSunrisePerson' => 'Napkelte portréja',
			'kids.avatarOceanPerson' => 'Óceán portré',
			'kids.avatarCat' => 'Kíváncsi macska',
			'kids.avatarDog' => 'Boldog kutya',
			'kids.avatarPanda' => 'Panda',
			'kids.avatarOwl' => 'Bagoly',
			'kids.avatarBear' => 'Medve',
			'kids.continueAdventure' => 'Folytasd a kalandot',
			'kids.freshStories' => 'Új felfedezésre váró történetek',
			'kids.yourMovies' => 'Filmes idők kedvencei',
			'kids.yourShows' => 'Még egy epizód',
			'kids.emptyHint' => 'Új kalandok jelennek meg itt, ha a szervere engedélyezett korosztályozású címekkel rendelkezik.',
			'kids.title' => 'Luroka gyerekeknek',
			'kids.addProfile' => 'Gyermekprofil hozzáadása',
			'kids.parentalControls' => 'Szülői felügyelet',
			'kids.parentPin' => 'Szülői PIN',
			'kids.setParentPin' => 'Szülői PIN beállítása',
			'kids.changeParentPin' => 'Szülői PIN módosítása',
			'kids.pinExplain' => 'Ez a PIN védi a felnőttprofilokat és a szülői felügyeletet ezen az eszközön.',
			'kids.name' => 'A gyermek neve',
			'kids.ageGroup' => 'Engedélyezett korosztályozás',
			'kids.allAges' => 'Minden korosztály · G, TV-Y, TV-G, U',
			'kids.age7' => '7-ig · PG, TV-PG, TV-Y7 is',
			'kids.age12' => '12-ig · 12 és 12A is',
			'kids.age16' => '16-ig · PG-13, TV-14, 15 és 16 is',
			'kids.ratingExplain' => 'A korhatár feletti címek és az ismeretlen besorolások el vannak rejtve. Az értékelés nélküli címek el vannak rejtve, hacsak nem engedélyezi őket alább. A besorolatlan epizódok örökölhetik a jóváhagyott sorozatbesorolást. Az értékelések a szerver metaadataitól függenek.',
			'kids.theme' => 'Gyerekek megjelenése',
			'kids.themeExplain' => 'Használjon színes témát, ha ez a profil aktív.',
			'kids.sharedLogin' => 'A meglévő szerverbejelentkezést használja. Plex/Emby a haladás és a megtekintett állapot megosztva marad. A korlátozások és a gyerekprofilok ezen az eszközön vannak tárolva.',
			'kids.hideWatched' => 'Gyerekek megtekintésének elrejtése a Nézés folytatása közül',
			'kids.hideExplain' => 'Gyermekprofilok által játszott filmek és teljes sorozatok elrejtése ezen az eszközön. Ez nem távolítja el őket a könyvtárából, és nem módosítja a szerver előzményeit.',
			'kids.clearHistory' => 'Állítsa vissza a gyerekek megtekintési kizárását',
			'kids.historyReset' => 'A gyerekek megtekintési kizárásai visszaállítva',
			'kids.blocked' => 'Ez a cím nem érhető el ebben a gyerekprofilban.',
			'kids.switchProfile' => 'Profil váltása',
			'kids.manageFromAdult' => 'A beállítások kezeléséhez váltson felnőtt profilra.',
			_ => null,
		} ?? switch (path) {
			'kids.noConnections' => 'Csatlakoztasson egy szervert a felnőtt profilhoz, mielőtt hozzáadna egy gyerekprofilt.',
			'kids.created' => 'Gyermekprofil létrehozva',
			'kids.updated' => 'A gyerekek profilja frissítve',
			'kids.saveFailed' => 'Nem sikerült menteni a szülői felügyeletet. Kérjük, próbálja újra.',
			'kids.kidsBadge' => 'Gyerekek',
			'lurokaDiscovery.title' => 'Felfedezés',
			'lurokaDiscovery.chooseLibraryHint' => 'Válasszon könyvtárat a felfedezéshez',
			'lurokaDiscovery.chooseCopyHint' => 'Több könyvtárban is elérhető. Válassza ki a kívánt példányt.',
			'lurokaDiscovery.weeklyMovies' => 'Felkapott filmek ezen a héten · TMDb',
			'lurokaDiscovery.weeklyShows' => 'Felkapott műsorok ezen a héten · TMDb',
			'lurokaDiscovery.weeklyLibrary' => 'Felkapott a héten · A könyvtáradban',
			'lurokaDiscovery.popularLibrary' => 'Most népszerű · A könyvtáradban · Cinemeta',
			'lurokaDiscovery.publicFeedError' => 'A Cinemeta felfedezése nem érhető el. Kérjük, próbálja újra.',
			'lurokaDiscovery.oscars' => 'Oscar-díj · A legjobb film nyertesei',
			'lurokaDiscovery.imdb100' => 'IMDb Top 100 film · 2026. szeptemberi pillanatkép',
			'lurokaDiscovery.imdbTv100' => 'IMDb Top 100 bemutató · 2026. szeptemberi pillanatkép',
			'lurokaDiscovery.emmyComedy' => 'Emmy-díj · Vígjátéksorozat nyertesei · 1971–2026',
			'lurokaDiscovery.emmys' => 'Emmy-díj · Drámasorozat nyertesei · 1966–2026',
			'lurokaDiscovery.bafta' => 'BAFTA · A legjobb film díjazottak',
			'lurokaDiscovery.cannes' => 'Cannes · Arany Pálma-díjasok',
			'lurokaDiscovery.awardsNote' => 'A díjgyűjtemények között szerepel a legjobb film történetében Oscar-díj, az Emmy-dráma/vígjáték nyertesei, valamint a kibővített BAFTA/Cannes-válogatás. Az ismétlődő nyertes címek egyszer jelennek meg. A tagság díjkategória-előzményeket és Wikidata-tényeket használ. A IMDb A 100 legjobb film/műsor listája megőrzi az mmdju/imdb-top250-api 2026. szeptemberi chart-pillanatfelvételeit. Csak a látható, online könyvtárak egyezései jelennek meg; A gyűjtemény mérete a könyvtár elérhetőségétől függ.',
			'lurokaDiscovery.attribution' => 'A nyilvános népszerűségi listákat, a metaadatokat és a IMDb értékeléseket a Cinemeta biztosítja; a Népszerű listák nem heti megtekintési grafikonok. Ez a termék a TMDB API kódot használja, de a TMDB nem hagyja jóvá vagy tanúsítja. Az opcionális TMDb heti trendek a TMDb érdeklődését tükrözik, nem pedig a nézettségi adatokat. A pontszámok megtartják a forráscímkéket.',
			'lurokaDiscovery.tmdbSettings' => 'Felfedezési források',
			'lurokaDiscovery.setupDescription' => 'A Cinemeta felfedezése azonnal működik fiók nélkül: népszerű filmek és műsorok, IMDb minősítések és díjnyertesek. Opcionálisan csatlakoztassa a TMDb-t a heti trendek megtekintéséhez a API kulcs vagy a API olvasási hozzáférési token használatával a themoviedb.org/settings/api webhelyről. Hitelesítési adatai ezen az eszközön vannak tárolva.',
			'lurokaDiscovery.apiKey' => 'TMDb API kulcs / olvasási hozzáférési token',
			'lurokaDiscovery.connect' => 'Csatlakoztassa a TMDb-t',
			'lurokaDiscovery.connecting' => 'Csatlakozás…',
			'lurokaDiscovery.connected' => 'TMDb csatlakoztatva · A heti trendek és díjak engedélyezve',
			'lurokaDiscovery.builtInKeyNote' => 'A Luroka beépített megosztott TMDb kulcsán fut. Adja hozzá a saját ingyenes kulcsát alább a dedikált díjkorlátokhoz és a teljes ellenőrzéshez.',
			'lurokaDiscovery.disconnect' => 'Csatlakoztassa le a TMDb-t',
			'lurokaDiscovery.invalidKey' => 'A TMDb nem érvényesíthető. Ellenőrizze a hitelesítő adatait és az internetkapcsolatot.',
			'lurokaDiscovery.feedError' => 'A TMDb felfedezés nem érhető el. Kérjük, próbálja újra.',
			'lurokaDiscovery.allTitles' => 'Minden cím',
			'lurokaDiscovery.available' => 'A könyvtárában',
			'lurokaDiscovery.checking' => 'Könyvtárak ellenőrzése…',
			'lurokaDiscovery.availabilityUnknown' => 'Egyes könyvtárakat nem lehetett ellenőrizni. Próbálja meg frissíteni.',
			'lurokaDiscovery.noAvailable' => 'Az ellenőrzött könyvtárakban nem található egyező cím.',
			'lurokaDiscovery.sourceInfo' => 'Heti trendek és kiválasztott díjnyertesek · TMDb',
			'lurokaDiscovery.configure' => 'Felfedezési beállítások',
			'app.title' => 'Luroka',
			'appIcon.title' => 'App ikonra',
			'appIcon.defaultIcon' => 'Alapértelmezett',
			'appIcon.current' => 'Jelenlegi ikon',
			'appIcon.locked' => 'Támogatói jutalom',
			'appIcon.lockedHint' => 'Az alternatív ikonok támogatói jutalmat jelentenek.',
			'appIcon.changeFailed' => 'Nem sikerült módosítani az alkalmazás ikonját',
			'appIcon.launcherHint' => 'Az új ikon megjelenik a kezdőképernyőn, miután elhagyta a Luroka-t.',
			'appIcon.tvLauncherHint' => 'Az új szalaghirdetés a Luroka elhagyása után jelenik meg. A Android TV a TV újraindításáig a régit tudja mutatni.',
			'appIcon.names.midnight' => 'Éjfél',
			'appIcon.names.ember' => 'Ember',
			'appIcon.names.paper' => 'Papír',
			'appIcon.names.oled' => 'OLED',
			'appIcon.names.line' => 'Vonal',
			'appIcon.names.ocean' => 'Óceán',
			'appIcon.names.ultraviolet' => 'Ultraibolya',
			'appIcon.names.matcha' => 'Matcha',
			'appIcon.names.sunset' => 'Naplemente',
			'appIcon.names.gold' => 'Arany',
			'appIcon.names.titanium' => 'Titán',
			'appIcon.names.glass' => 'Üveg',
			'appIcon.names.crt' => 'CRT',
			'appIcon.names.vhs' => 'VHS',
			'appIcon.names.synthwave' => 'Synthwave',
			'appIcon.names.pixel' => 'Pixel',
			'appIcon.names.neon' => 'Neon',
			'appIcon.names.sticker' => 'Matrica',
			'appIcon.names.ticket' => 'Jegy',
			'appIcon.names.pop' => 'Pop',
			'appIcon.names.strata' => 'Strata',
			'appIcon.names.facet' => 'Facet',
			'appIcon.names.tilde' => 'Tilde',
			'auth.signInWithPlex' => 'Bejelentkezés Plexszel',
			'auth.showQRCode' => 'QR-kód megjelenítése',
			'auth.authenticate' => 'Hitelesítés',
			'auth.authenticationTimeout' => 'A hitelesítés időtúllépés miatt megszakadt. Próbáld újra.',
			'auth.scanQRToSignIn' => 'Olvasd be ezt a QR-kódot a bejelentkezéshez',
			'auth.waitingForAuth' => 'Várakozás a hitelesítésre...\nJelentkezz be a böngésződben.',
			'auth.useBrowser' => 'Böngésző használata',
			'auth.or' => 'vagy',
			'auth.connectToMediaBrowser' => ({required Object product}) => 'Csatlakozás a(z) ${product} szolgáltatáshoz',
			'auth.quickConnect' => 'Quick Connect',
			'auth.useQuickConnect' => 'Quick Connect használata',
			'auth.quickConnectInstructions' => 'Nyisd meg a Quick Connect-et a Jellyfinben, és add meg ezt a kódot.',
			'auth.quickConnectWaiting' => 'Várakozás a jóváhagyásra…',
			'auth.quickConnectCancel' => 'Mégse',
			'auth.quickConnectExpired' => 'A Quick Connect kód lejárt. Próbáld újra.',
			'auth.localDataRecoveryRequired' => 'A Luroka nem tudta biztonságosan helyreállítani a helyi bejelentkezés és a függőben lévő lejátszás adatait. Jelentkezz be újra.',
			'auth.pinCheckRejected' => 'A Plex PIN ellenőrzését elutasították',
			'common.cancel' => 'Mégse',
			'common.save' => 'Mentés',
			'common.close' => 'Bezárás',
			'common.clear' => 'Törlés',
			'common.reset' => 'Visszaállítás',
			'common.later' => 'Később',
			'common.submit' => 'Beküldés',
			'common.confirm' => 'Megerősítés',
			'common.retry' => 'Újra',
			'common.logout' => 'Kijelentkezés',
			'common.unknown' => 'Ismeretlen',
			'common.refresh' => 'Frissítés',
			'common.yes' => 'Igen',
			'common.no' => 'Nem',
			'common.delete' => 'Törlés',
			'common.edit' => 'Szerkesztés',
			'common.shuffle' => 'Véletlenszerű lejátszás',
			'common.addTo' => 'Hozzáadás...',
			'common.createNew' => 'Új létrehozása',
			'common.connect' => 'Csatlakozás',
			'common.disconnect' => 'Kapcsolat bontása',
			'common.play' => 'Lejátszás',
			'common.pause' => 'Szünet',
			'common.resume' => 'Folytatás',
			'common.error' => 'Hiba',
			'common.search' => 'Keresés',
			'common.home' => 'Kezdőlap',
			'common.back' => 'Vissza',
			'common.settings' => 'Beállítások',
			'common.mute' => 'Némítás',
			'common.ok' => 'OK',
			'common.off' => 'Ki',
			'common.options' => 'Lehetőségek',
			'common.seasonNumber' => ({required Object number}) => '${number}. évad',
			'common.episodeNumberTitle' => ({required Object number, required Object title}) => '${number}. epizód - ${title}',
			'common.chapterNumber' => ({required Object number}) => '${number}. fejezet',
			'common.reconnect' => 'Újracsatlakozás',
			'common.viewAll' => 'Összes megtekintése',
			'common.serversUnreachable' => 'A szerverek elérhetetlenek',
			'common.loading' => 'Betöltés...',
			'common.fullscreen' => 'Teljes képernyő',
			'common.exitFullscreen' => 'Kilépés a teljes képernyőből',
			'common.ratingSource.critic' => 'Kritikusok',
			'common.ratingSource.audience' => 'Közönség',
			'common.ratingSource.imdb' => 'IMDb',
			'common.ratingSource.tmdb' => 'TMDB',
			'common.ratingSource.rottenTomatoes' => 'Rotten Tomatoes',
			'common.ratingSource.simkl' => 'Simkl',
			'common.ratingSource.mal' => 'MyAnimeList',
			'common.ratingSource.anilist' => 'AniList',
			'common.ratingSource.trakt' => 'Trakt',
			'common.ratingSource.rottenTomatoesCritic' => 'Rotten Tomatoes kritikusok',
			'common.ratingSource.rottenTomatoesAudience' => 'Rotten Tomatoes közönség',
			'common.ratingSource.metacritic' => 'Metacritic',
			'common.ratingSource.letterboxd' => 'Letterboxd',
			'common.notAvailable' => 'N/A',
			'common.url' => 'URL',
			'common.letterKeys' => 'ABC',
			'common.mediaKind.movie' => 'Film',
			'common.mediaKind.show' => 'Sorozat',
			'common.mediaKind.season' => 'Évad',
			'common.mediaKind.episode' => 'Epizód',
			'common.mediaKind.artist' => 'Előadó',
			'common.mediaKind.album' => 'Album',
			'common.mediaKind.track' => 'Szám',
			'common.mediaKind.collection' => 'Gyűjtemény',
			'common.mediaKind.playlist' => 'Lejátszási lista',
			'common.mediaKind.clip' => 'Klip',
			'common.mediaKind.photo' => 'Fénykép',
			'common.mediaKind.folder' => 'Mappa',
			'common.stay' => 'Maradj',
			'common.exitApp' => 'Kilépés',
			'common.exitAppBody' => 'Biztosan kilép a Luroka-ból?',
			'tvHints.select' => 'Válassza ki',
			'tvHints.browse' => 'Tallózás',
			'tvHints.back' => 'Vissza',
			'screens.licenses' => 'Licencek',
			'screens.switchProfile' => 'Profilváltás',
			'screens.subtitleStyling' => 'Feliratok stílusa',
			'screens.mpvConfig' => 'mpv.conf',
			'screens.logs' => 'Naplók',
			'mediaExtras.trailers' => 'Pótkocsik',
			'mediaExtras.featurettes' => 'Jellemzők',
			'mediaExtras.interviews' => 'Interjúk',
			'mediaExtras.deletedScenes' => 'Törölt jelenetek',
			'mediaExtras.behindTheScenes' => 'A kulisszák mögött',
			'mediaExtras.scenesAndClips' => 'Jelenetek és klipek',
			'mediaExtras.other' => 'Egyéb extrák',
			'update.available' => 'Frissítés érhető el',
			'update.versionAvailable' => ({required Object version}) => 'A(z) ${version} verzió elérhető',
			'update.currentVersion' => ({required Object version}) => 'Jelenlegi: ${version}',
			'update.skipVersion' => 'Verzió kihagyása',
			'update.viewRelease' => 'Kiadási megjegyzések',
			'update.latestVersion' => 'A legújabb verziót használod',
			'update.checkFailed' => 'Nem sikerült az újabb frissítések ellenőrzése',
			'supporter.title' => 'Luroka támogató',
			'supporter.intro' => 'Egyszeri vásárlás, amely támogatja a Luroka fejlesztését és feloldja a kozmetikai extrákat:',
			'supporter.presetThemes' => 'Előre beállított témák',
			'supporter.presetThemesDescription' => 'Borostyán, gleccser, erdő, szilva és papír',
			'supporter.customTheme' => 'Egyedi téma',
			'supporter.customThemeDescription' => 'Válassz minden színt magad',
			'supporter.appIcons' => 'Alkalmazásikonok',
			'supporter.appIconsDescription' => 'Válasszon egy másik Luroka ikont',
			'supporter.buy' => ({required Object price}) => 'Vásároljon ${price}-ért',
			'supporter.loadingPrice' => 'Ár betöltése...',
			'supporter.restore' => 'Vásárlások visszaállítása',
			'supporter.pending' => 'Vásárlása fizetésre vagy jóváhagyásra vár. Az extrák azonnal feloldódnak, amint az üzlet befejezi.',
			'supporter.thankYouTitle' => 'Köszönjük a Luroka támogatását',
			'supporter.thankYouBody' => 'Támogatói extráid feloldva.',
			'supporter.tileSubtitle' => 'Egyszeri vásárlással feloldhatja a témákat és az alkalmazásikonokat',
			'supporter.tileSubtitleThemesOnly' => 'Egyszeri vásárlással feloldhatja a témákat',
			'supporter.tileUnlocked' => 'Köszönjük a támogatást',
			'supporter.errors.storeUnavailable' => 'A vásárlás nem elérhető. Ellenőrizze, hogy bejelentkezett-e az üzletbe, és engedélyezett-e a vásárlás ezen az eszközön.',
			'supporter.errors.productNotFound' => 'A Supporter vásárlás jelenleg nem érhető el az üzletében.',
			'supporter.errors.productQueryFailed' => 'Nem sikerült betölteni az árat. Ellenőrizze a kapcsolatot, és próbálja újra.',
			'supporter.errors.purchaseFailed' => 'A vásárlás nem ment. Próbáld újra.',
			'supporter.errors.restoreFailed' => 'Nem sikerült elérni az üzletet a vásárlás visszaállításához. Próbáld újra.',
			'supporter.errors.nothingToRestore' => 'Nem található támogatói vásárlás ehhez az áruházi fiókhoz.',
			'settings.title' => 'Beállítások',
			'settings.supportDeveloper' => 'Luroka támogatása',
			'settings.supportDeveloperDescription' => 'A fejlesztés támogatása Liberapay-en keresztül',
			'settings.language' => 'Nyelv',
			'settings.theme' => 'Téma',
			'settings.appearance' => 'Megjelenés',
			'settings.videoPlayback' => 'Videólejátszás',
			'settings.videoPlaybackDescription' => 'Lejátszási viselkedés beállítása',
			'settings.advanced' => 'Haladó',
			'settings.episodePosterMode' => 'Epizódborító stílusa',
			'settings.seriesPoster' => 'Sorozatborító',
			'settings.seasonPoster' => 'Évadborító',
			'settings.episodeThumbnail' => 'Bélyegkép',
			'settings.homeHeroSize' => 'Körhinta mérete',
			'settings.homeHeroSizeSmall' => 'Kicsi',
			'settings.homeHeroSizeMedium' => 'Közepes',
			'settings.homeHeroSizeLarge' => 'Nagy',
			'settings.secondsLabel' => 'Másodperc',
			'settings.minutesLabel' => 'Perc',
			'settings.secondsShort' => 'mp',
			'settings.minutesShort' => 'p',
			'settings.durationHint' => ({required Object min, required Object max}) => 'Add meg az időtartamot (${min}-${max})',
			'settings.systemTheme' => 'Rendszer',
			'settings.lightTheme' => 'Világos',
			'settings.darkTheme' => 'Sötét',
			'settings.oledTheme' => 'OLED',
			'settings.libraryDensity' => 'Könyvtársűrűség',
			'settings.displayScale' => 'Kijelző méretezése',
			'settings.compact' => 'Kompakt',
			'settings.comfortable' => 'Kényelmes',
			'settings.gridSpacing' => 'Rácstávolság',
			'settings.gridSpacingTight' => 'Sűrű',
			'settings.gridSpacingNormal' => 'Normál',
			'settings.gridSpacingSpacious' => 'Tágas',
			'settings.tvCornerSpotlightBackdrop' => 'Sarokban megjelenő kiemelt háttérkép',
			'settings.tvCornerSpotlightBackdropDescription' => 'A kiemelt háttérkép megjelenítése a jobb felső sarokban a teljes képernyő helyett',
			'settings.viewMode' => 'Nézetmód',
			'settings.gridView' => 'Rács',
			'settings.listView' => 'Lista',
			'settings.continueWatchingAction' => 'A „Folytatás” művelete',
			'settings.continueWatchingPlay' => 'Lejátszás',
			'settings.continueWatchingDetails' => 'Részletek megnyitása',
			'settings.episodeAction' => 'Az epizódkártya művelete',
			'settings.episodePlay' => 'Lejátszás',
			'settings.episodeDetails' => 'Részletek megnyitása',
			'settings.useGlobalHubs' => 'Kezdőlap elrendezés használata',
			'settings.useGlobalHubsDescription' => 'Egyesített kezdőlapi blokkok megjelenítése. Egyébként a könyvtári ajánlások jelennek meg.',
			'settings.showServerNameOnHubs' => 'Szervernév megjelenítése a blokkoknál',
			'settings.showServerNameOnHubsDescription' => 'Mindig jelenjen meg a szerver neve a blokkok címében.',
			'settings.groupLibrariesByServer' => 'Könyvtárak csoportosítása szerver szerint',
			'settings.groupLibrariesByServerDescription' => 'Az oldalsáv könyvtárainak csoportosítása a médiaszerverek alatt.',
			'settings.alwaysKeepSidebarOpen' => 'Oldalsáv mindig nyitva',
			'settings.alwaysKeepSidebarOpenDescription' => 'Az oldalsáv kibontva marad, a tartalom területe igazodik hozzá',
			'settings.showUnwatchedCount' => 'Nem látott elemek számának megjelenítése',
			'settings.showUnwatchedCountDescription' => 'Megjeleníti a még nem látott epizódok számát a sorozatoknál és évadoknál',
			'settings.showWatchedIndicators' => 'Megtekintésjelölők megjelenítése',
			'settings.showWatchedIndicatorsDescription' => 'Pipa megjelenítése a megtekintett filmeken, sorozatokon és epizódokon',
			'settings.showEpisodeNumberOnCards' => 'Epizódszám megjelenítése a kártyákon',
			'settings.showEpisodeNumberOnCardsDescription' => 'Megjeleníti az évad- és epizódszámot az epizódkártyákon',
			'settings.showSeasonPostersOnTabs' => 'Évadborítók megjelenítése a füleken',
			'settings.showSeasonPostersOnTabsDescription' => 'Megjeleníti az egyes évadok borítóját a fülük felett',
			'settings.tvFullCardLayout' => 'Teljes TV-kártyák',
			'settings.tvFullCardLayoutDescription' => 'Csak képet tartalmazó TV-kártyák használata, rájuk helyezett színésznevekkel',
			'settings.focusGlow' => 'Kijelölési ragyogás',
			'settings.focusGlowDescription' => 'Finom ragyogás rajzolása a kijelölt kártya köré',
			'settings.visualEffects' => 'Vizuális effektek',
			'settings.visualEffectsAuto' => 'Automatikus',
			'settings.visualEffectsAutoDescription' => 'Effektek automatikus csökkentése alacsony teljesítményű eszközökön',
			'settings.visualEffectsFull' => 'Teljes',
			'settings.visualEffectsReduced' => 'Csökkentett',
			'settings.visualEffectsReducedDescription' => 'Kevesebb animáció és alacsonyabb felbontású képek',
			'settings.hideSpoilers' => 'Spoilerek elrejtése a nem látott epizódoknál',
			'settings.hideSpoilersDescription' => 'Bélyegképek és leírások elhomályosítása a még meg nem nézett epizódoknál',
			'settings.playerBackend' => 'Lejátszómotor',
			'settings.playerBackendDescription' => 'A mpv több formátumot játszik le, és több funkciót tesz lehetővé – ajánlott. A ExoPlayer segít, ha a lejátszás sikertelen vagy akadozik ezen az eszközön.',
			'settings.exoPlayer' => 'ExoPlayer',
			'settings.mpv' => 'mpv',
			'settings.hardwareDecoding' => 'Hardveres dekódolás',
			'settings.hardwareDecodingDescription' => 'Hardveres gyorsítás használata, ha elérhető',
			'settings.playbackBuffer' => 'Lejátszási puffer',
			'settings.playbackBufferAuto' => 'Automatikus (ajánlott)',
			'settings.playbackBufferLarge' => 'Nagy',
			'settings.playbackBufferExtraLarge' => 'Extra nagy',
			'settings.playbackBufferDescription' => 'Több puffert használ instabil kapcsolatok ellen. A pufferméret is korlátozza.',
			'settings.defaultQualityTitle' => 'Alapértelmezett minőség',
			'settings.streamingQualityOriginalHint' => 'Pontosan a tárolt fájl lejátszása – a legjobb minőség, a legnagyobb sávszélességet használja',
			'settings.cellularQualityTitle' => 'Alapértelmezett minőség mobilhálózaton',
			'settings.cellularQualitySameAsDefault' => 'Ugyanaz, mint az alapértelmezett minőség',
			'settings.directPlayCoveredQuality' => 'Kisebb videók lejátszása eredeti minőségben',
			'settings.directPlayCoveredQualityDescription' => 'A minőségi korláton belüli videók közvetlen lejátszása átkódolás helyett',
			'settings.videoCodecs' => 'Videokodekek',
			'settings.videoCodecsDescription' => 'A nem bejelölt kodekeket a szerver átkódolja',
			'settings.videoCodecsAlwaysAccepted' => 'Mindig elfogadva',
			'settings.musicQualityTitle' => 'Zene minősége',
			'settings.subtitleStyling' => 'Feliratok stílusa',
			'settings.subtitleStylingDescription' => 'Feliratok megjelenésének testreszabása',
			'settings.smallSkipDuration' => 'Kis ugrás időtartama',
			'settings.largeSkipDuration' => 'Nagy ugrás időtartama',
			'settings.rewindOnResume' => 'Visszatekerés folytatáskor',
			'settings.secondsUnit' => ({required Object seconds}) => '${seconds} másodperc',
			'settings.defaultSleepTimer' => 'Alapértelmezett elalvási időzítő',
			'settings.minutesUnit' => ({required Object minutes}) => '${minutes} perc',
			'settings.rememberTrackSelections' => 'Sávválasztások megjegyzése sorozatonként/filmenként',
			'settings.rememberTrackSelectionsDescription' => 'Hang- és feliratválasztások megjegyzése címenként',
			'settings.rememberTrackSelectionsBackendRule' => 'A Plex minden választást fájlonként a szerveren ment; a Jellyfin a fiók „Választások megjegyzése” funkcióját is bekapcsolja; az Emby nem támogatott',
			'settings.followServerTrackSelections' => 'A szerver epizódonkénti sávválasztásának használata',
			'settings.followServerTrackSelectionsDescription' => 'Epizódváltáskor a szerveren kiválasztott hang és felirat lép életbe az aktuális választás átvitele helyett',
			'settings.resumeMusicOnLaunch' => 'Zenei munkamenet megjegyzése',
			'settings.resumeMusicOnLaunchDescription' => 'Az alkalmazás indításakor az utolsó szám szüneteltetve nyílik meg ott, ahol abbamaradt',
			'settings.showChapterMarkersOnTimeline' => 'Fejezetjelölők megjelenítése az idősávon',
			'settings.showChapterMarkersOnTimelineDescription' => 'Az idősáv felosztása a fejezetek határainál',
			'settings.specialsOrdering' => 'Különkiadások epizódsorrendben',
			'settings.specialsOrderingDescription' => 'A különkiadások helye a sorozat lejátszási sorrendjében',
			'settings.specialsOrderingServer' => 'Szerver szerinti sorrend',
			'settings.specialsOrderingAirDate' => 'Adás dátuma szerint közbeszúrva',
			'settings.specialsOrderingLast' => 'A normál évadok után',
			'settings.clickVideoTogglesPlayback' => 'Kattintás a videóra a lejátszás/szünet váltásához',
			'settings.clickVideoTogglesPlaybackDescription' => 'A videóra kattintva vált a lejátszás/szünet, a vezérlők megjelenítése helyett.',
			'settings.videoPlayerControls' => 'Videólejátszó vezérlői',
			'settings.keyboardShortcuts' => 'Billentyűparancsok',
			'settings.keyboardShortcutsDescription' => 'Billentyűparancsok testreszabása',
			'settings.videoPlayerNavigation' => 'Videólejátszó-navigáció',
			'settings.videoPlayerNavigationDescription' => 'A nyílbillentyűk használata a videólejátszó vezérlői közötti navigáláshoz',
			'settings.watchTogetherRelay' => 'Watch Together-relé',
			'settings.watchTogetherRelayDescription' => 'Nyilvános Open Watch Party közvetítések, hacsak nem állítja be a sajátját',
			'settings.watchTogetherRelayHint' => 'https://my-relay.example.com',
			'settings.watchTogetherRelayInvalid' => 'Adj meg egy érvényes HTTP- vagy HTTPS-alapú relészerver-URL-t.',
			'settings.crashReporting' => 'Összeomlási jelentések',
			'settings.crashReportingDescription' => 'Összeomlási jelentések küldése az alkalmazás fejlesztésének elősegítéséhez',
			'settings.debugLogging' => 'Hibakeresési naplózás',
			'settings.debugLoggingDescription' => 'Részletes naplózás engedélyezése a hibaelhárításhoz',
			'settings.viewLogs' => 'Naplók megtekintése',
			'settings.viewLogsDescription' => 'Alkalmazásnaplók megtekintése',
			'settings.clearImageCache' => 'Képgyorsítótár törlése',
			'settings.clearImageCacheDescription' => 'Törli a gyorsítótárazott borítókat és miniatűröket. A képek lassabban tölthetők be, amíg újra le nem töltődnek.',
			'settings.clearImageCacheSuccess' => 'A képgyorsítótár sikeresen törölve',
			'settings.resetSettings' => 'Beállítások visszaállítása',
			'settings.resetSettingsDescription' => 'Az alapértelmezett beállítások visszaállítása. Ez a művelet nem vonható vissza.',
			'settings.resetSettingsSuccess' => 'A beállítások sikeresen visszaállítva',
			'settings.backup' => 'Biztonsági mentés',
			'settings.exportSettings' => 'Beállítások exportálása',
			'settings.exportSettingsDescription' => 'Beállítások mentése fájlba',
			'settings.exportSettingsSuccess' => 'Beállítások exportálva',
			'settings.importSettings' => 'Beállítások importálása',
			'settings.importSettingsDescription' => 'Beállítások visszaállítása fájlból',
			'settings.importSettingsConfirm' => 'Ez felülírja a jelenlegi beállításaidat. Folytatod?',
			'settings.importSettingsSuccess' => 'Beállítások importálva',
			'settings.importSettingsInvalidFile' => 'Ez a fájl nem érvényes Luroka-beállításexport',
			'settings.importSettingsNoUser' => 'Jelentkezz be a beállítások importálása előtt',
			'settings.shortcutsReset' => 'A billentyűparancsok visszaálltak az alapértelmezettekre',
			'settings.resetShortcutsConfirm' => 'Ez lecseréli az egyéni parancsikonokat az alapértelmezettekre. Folytatja?',
			'settings.about' => 'Névjegy',
			'settings.aboutDescription' => 'Alkalmazásadatok és licencek',
			'settings.updates' => 'Frissítések',
			'settings.updateAvailable' => 'Frissítés érhető el',
			'settings.checkForUpdates' => 'Frissítések keresése',
			'settings.autoCheckUpdatesOnStartup' => 'Frissítések automatikus keresése indításkor',
			'settings.autoCheckUpdatesOnStartupDescription' => 'Értesítés küldése indításkor, ha új frissítés érhető el',
			'settings.validationErrorEnterNumber' => 'Adj meg egy érvényes számot',
			'settings.validationErrorDuration' => ({required Object min, required Object max, required Object unit}) => 'Az időtartamnak ${min} és ${max} ${unit} között kell lennie',
			'settings.shortcutAlreadyAssigned' => ({required Object action}) => 'A billentyűparancs már hozzá van rendelve a következőhöz: ${action}',
			'settings.shortcutUpdated' => ({required Object action}) => 'Billentyűparancs frissítve a következőhöz: ${action}',
			'settings.saveFailed' => 'Nem sikerült menteni a módosításokat. Próbáld újra.',
			'settings.autoPlayAndSkip' => 'Automatikus lejátszás és átugrás',
			'settings.autoPlayNextEpisode' => 'Következő epizód automatikus lejátszása',
			'settings.autoPlayNextEpisodeDescription' => 'A következő epizód automatikus elindítása, amikor az aktuális véget ér',
			'settings.shuffleStartsFromBeginning' => 'Véletlenszerű lejátszás az elejétől',
			'settings.shuffleStartsFromBeginningDescription' => 'Minden epizód az elejétől indul véletlenszerű lejátszáskor a folytatás helyett',
			'settings.playNextCountdown' => 'Visszaszámlálás a következő epizódig',
			'settings.playNextCountdownImmediate' => 'Azonnali lejátszás',
			'settings.skipIntroMode' => 'Intró átugrása',
			'settings.skipIntroModeOffDescription' => 'Az intrók normálisan lejátszódnak, átugró gomb nélkül',
			'settings.skipIntroModeButtonDescription' => 'Átugró gomb megjelenítése az intró kezdetekor',
			'settings.skipIntroModeAutoDescription' => 'Az intrók automatikus átugrása az alábbi késleltetés után',
			'settings.skipCreditsMode' => 'Stáblista átugrása',
			'settings.skipCreditsModeOffDescription' => 'A stáblista normálisan lejátszódik, átugró gomb nélkül',
			'settings.skipCreditsModeButtonDescription' => 'Átugró gomb megjelenítése a stáblista kezdetekor',
			'settings.skipCreditsModeAutoDescription' => 'A stáblista automatikus átugrása és a következő epizód lejátszása',
			'settings.skipMarkerModeOff' => 'Ki',
			'settings.skipMarkerModeButton' => 'Gomb megjelenítése',
			'settings.skipMarkerModeAuto' => 'Automatikus',
			'settings.forceSkipMarkerFallback' => 'Tartalék jelölők kényszerítése',
			'settings.forceSkipMarkerFallbackDescription' => 'Fejezetcím-minták használata akkor is, ha a Plex rendelkezik jelölőkkel',
			'settings.autoSkipDelay' => 'Automatikus átugrás késleltetése',
			'settings.autoSkipDelayDescription' => ({required Object seconds}) => 'Várakozás ${seconds} másodpercig az automatikus átugrás előtt',
			'settings.introPattern' => 'Intrójelölő mintája',
			'settings.introPatternDescription' => 'Reguláris kifejezés az intrójelölők illesztéséhez a fejezetcímekben',
			'settings.creditsPattern' => 'Stáblistajelölő mintája',
			'settings.creditsPatternDescription' => 'Reguláris kifejezés a stáblistajelölők illesztéséhez a fejezetcímekben',
			'settings.invalidRegex' => 'Érvénytelen reguláris kifejezés',
			'settings.regex' => 'Reguláris kifejezés',
			'settings.downloads' => 'Letöltések',
			'settings.downloadLocationDescription' => 'Válaszd ki a letöltött tartalom tárolási helyét',
			'settings.downloadLocationDefault' => 'Alapértelmezett (alkalmazástárhely)',
			'settings.downloadLocationCustom' => 'Egyéni hely',
			'settings.selectFolder' => 'Mappa kiválasztása',
			'settings.resetToDefault' => 'Visszaállítás alapértelmezettre',
			'settings.currentPath' => ({required Object path}) => 'Jelenlegi: ${path}',
			'settings.downloadLocationChanged' => 'A letöltési hely megváltozott',
			'settings.downloadLocationReset' => 'A letöltési hely visszaállt az alapértelmezettre',
			'settings.downloadLocationInvalid' => 'A kiválasztott mappa nem írható',
			'settings.downloadLocationPickerUnavailable' => 'A mappaválasztás ezen az eszközön nem érhető el',
			'settings.downloadOnWifiOnly' => 'Letöltés csak Wi-Fi-n',
			'settings.downloadOnWifiOnlyDescription' => 'Letöltések megakadályozása mobiladat-használat esetén',
			'settings.downloadWifiScope' => 'Az eszköz összes profiljára és letöltésére vonatkozik.',
			'settings.autoRemoveWatchedDownloads' => 'Megnézett letöltések automatikus eltávolítása',
			'settings.autoRemoveWatchedDownloadsDescription' => 'A megnézett letöltések automatikus törlése',
			'settings.cellularDownloadBlocked' => 'A letöltések mobilhálózaton le vannak tiltva. Használj Wi-Fi-t, vagy módosítsd a beállítást.',
			'settings.maxVolume' => 'Maximális hangerő',
			'settings.maxVolumeDescription' => 'A hangerő 100% fölé emelésének engedélyezése halk tartalmak esetén',
			'settings.maxVolumePercent' => ({required Object percent}) => '${percent}%',
			'settings.discordRichPresence' => 'Discord-aktivitás',
			'settings.discordRichPresenceDescription' => 'Megjeleníti a Discordon, hogy éppen mit nézel',
			'settings.services' => 'Szolgáltatások',
			'settings.servicesDescription' => 'Trakt, MyAnimeList, Seerr és egyéb szolgáltatások csatlakoztatása',
			'settings.manageLibrariesDescription' => 'Könyvtárak sorrendjének módosítása és elrejtése',
			'settings.companionRemoteServer' => 'Kísérőtávirányító szervere',
			'settings.companionRemoteServerDescription' => 'Lehetővé teszi, hogy a hálózaton lévő mobileszközökről vezéreld az alkalmazást',
			'settings.companionRemoteServerStartFailed' => 'Nem sikerült elindítani a kísérőtávirányító szerverét',
			'settings.companionRemoteServerStopFailed' => 'Nem sikerült leállítani a kísérőtávirányító szerverét',
			'settings.autoPip' => 'Automatikus kép a képben (PiP)',
			'settings.autoPipDescription' => 'Lejátszás közben az alkalmazás elhagyásakor automatikusan kép a képben módra vált',
			'settings.matchContentFrameRate' => 'Képkockasebesség illesztése a tartalomhoz',
			'settings.matchContentFrameRateDescription' => 'A kijelző frissítési frekvenciájának igazítása a videóhoz',
			'settings.matchContentResolution' => 'Igazítás a tartalom felbontásához',
			'settings.matchContentResolutionDescription' => 'A kijelzőt a videó natív felbontására váltja, hogy a felskálázást a tévé végezze. Lejátszás közben a menük és a feliratok is felskálázódnak',
			'settings.matchRefreshRate' => 'Frissítési frekvencia illesztése',
			'settings.matchRefreshRateDescription' => 'A kijelző frissítési frekvenciájának igazítása teljes képernyőn',
			'settings.matchDynamicRange' => 'Dinamikatartomány illesztése',
			'settings.matchDynamicRangeDescription' => 'HDR bekapcsolása HDR-tartalmak esetén, majd visszaváltás SDR-re',
			'settings.displaySwitchDelay' => 'Kijelzőváltási késleltetés',
			'settings.tunneledPlayback' => 'Alagutas lejátszás',
			'settings.tunneledPlaybackDescription' => 'Videóalagút használata. Tiltsd le, ha HDR-lejátszáskor fekete a kép vagy akadozik a mozgás.',
			'settings.audioPassthrough' => 'Hangtovábbítás (passthrough)',
			'settings.audioPassthroughDescription' => 'Dolby/DTS-hang továbbítása az erősítőre vagy a TV-re újrakódolás nélkül, a térhangzás megőrzésével. Kapcsold ki, ha nincs hang.',
			'settings.audioPassthroughDescriptionApple' => 'Az Apple natív Dolby-dekóderének használata Dolby Digital Plushoz, az Atmost is beleértve. A DTS és a TrueHD továbbra is többcsatornás PCM-ként szól. Kapcsold ki, ha nincs hang.',
			'settings.audioPassthroughDescriptionAppleSpatial' => 'Használja az Apple natív Dolby dekóderét a Dolby Digital Plushoz, beleértve az Atmost is. iOS, iPadOS és tvOS 26 vagy újabb rendszeren a TrueHD Atmos és a DTS:X térbeli hangként játszik le. Más DTS és TrueHD műsorszámok többcsatornás PCM-ként játszhatók le. Kapcsolja ki, ha nincs hangja.',
			'settings.audioPassthroughOverriddenByNormalization' => 'Ki, amíg a hangerőnormalizálás be van kapcsolva',
			'settings.audioChannelLimit' => 'Audio csatornák',
			'settings.audioChannelLimitDescription' => 'Keverje össze a dekódolt hangot olyan hangszórókhoz, fejhallgatókhoz vagy HDMI beállításokhoz, amelyek nem tudnak minden csatornát lejátszani',
			'settings.audioChannelLimitOriginal' => 'Eredeti',
			'settings.audioChannelLimitOriginalDescription' => 'Játssz le minden csatornát a számban',
			'settings.audioChannelLimitSurround51' => '5.1-ig',
			'settings.audioChannelLimitSurround51Description' => 'Keverje össze a 7.1-et és az 5.1-et azoknál a tévéknél és vevőkészülékeknél, amelyek csak 5,1 PCM-et vesznek igénybe. Az áthaladás nem érinti.',
			'settings.audioChannelLimitStereo' => 'Sztereó',
			'settings.audioChannelLimitStereoDescription' => 'Keverjen le két csatornára sztereó hangszórókhoz vagy fejhallgatókhoz. Kikapcsolja az áthaladást.',
			'settings.downmixCenterBoost' => 'Középső csatorna kiemelése',
			'settings.downmixCenterBoostValue' => ({required Object db}) => '${db} dB',
			'settings.downmixCenterBoostLabel' => 'Kiemelés (dB)',
			'settings.downmixCenterBoostShort' => 'dB',
			'settings.audioDownmixNormalize' => 'Hangerő normalizálása lekeveréskor',
			'settings.audioDownmixNormalizeDescription' => 'A keverés szintjének csökkentése a torzítás elkerülésére. Kapcsold ki az eredeti hangerő megőrzéséhez (a hangos jelenetek torzíthatnak).',
			'settings.dvConversionMode' => 'Dolby Vision-átalakítás',
			'settings.dvConversionModeDescription' => 'Válaszd ki, hogyan legyenek kezelve a Dolby Vision Profile 7 fájlok.',
			'settings.dvConversionAuto' => 'Automatikus',
			'settings.dvConversionNative' => 'Natív / letiltva',
			'settings.dvConversionDv81' => 'P7 → P8.1',
			'settings.dvConversionHevcStrip' => 'P7 → HEVC',
			'settings.dvConversionAutoDescription' => 'Az eszköz képességeinek felismerése és szükség esetén a szokásos tartalék megoldás használata',
			'settings.dvConversionNativeDescription' => 'A natív DV7 kényszerítése és a DV-átalakítási újrapróbálkozás letiltása',
			'settings.dvConversionDv81Description' => 'A közvetlen RPU-átalakítás kényszerítése Dolby Vision Profile 8.1-re',
			'settings.dvConversionHevcStripDescription' => 'A Dolby Vision RPU/EL-rétegek eltávolítása és egyszerű HEVC-ként való megjelenítés',
			'settings.disableDolbyVision' => 'Dolby Vision letiltása',
			'settings.disableDolbyVisionDescription' => 'A Dolby Vision helyett a fájl HDR10 vagy HLG rétegének lejátszása, ha van ilyen',
			'settings.hdrSdrConversion' => 'HDR–SDR átalakítás',
			'settings.hdrSdrConversionDescription' => 'Válaszd ki, mi alakítsa át a HDR-videót, ha a kijelző nem tud HDR-t megjeleníteni.',
			'settings.hdrSdrConversionAuto' => 'Automatikus',
			'settings.hdrSdrConversionAutoDescription' => 'Eszköz Android 9-től, lejátszó a régebbi verziókon',
			'settings.hdrSdrConversionDevice' => 'Eszköz',
			'settings.hdrSdrConversionDeviceDescription' => 'Az eszköz videohardvere alakítja át. A leggyorsabb, de a színek az eszköztől függnek',
			'settings.hdrSdrConversionPlayer' => 'Lejátszó',
			'settings.hdrSdrConversionPlayerDescription' => 'A lejátszó alakítja át. Egységes színek, de a 4K akadozhat a gyengébb TV-boxokon',
			'settings.deinterlace' => 'Deinterlacing',
			'settings.deinterlaceDescription' => 'Fésűfog-műtermékek eltávolítása a váltott soros videóból (csak mpv lejátszóval)',
			'settings.deinterlaceOff' => 'Le',
			'settings.deinterlaceOffDescription' => 'A váltottsoros videó megjelenítése dekódolt állapotban',
			'settings.deinterlaceVideo' => 'Videó',
			'settings.deinterlaceVideoDescription' => 'Minden mezőt teljes képkockává alakítson. TV-hez, például sporthoz, hírekhez és koncertekhez készített videókhoz',
			'settings.deinterlaceFilm' => 'Film',
			'settings.deinterlaceFilmDescription' => 'Állítsa vissza a filmek és animációk eredeti képkockáit 29,97 képkocka/mp-re telecinezve, ami általános az NTSC DVD-ken. A TV dadogására készült videó. Az élő TV videót használ',
			'settings.requireProfileSelectionOnOpen' => 'Profil kérése az alkalmazás megnyitásakor',
			'settings.requireProfileSelectionOnOpenDescription' => 'Profilválasztó megjelenítése minden alkalommal, amikor az alkalmazást megnyitod',
			'settings.forceTvMode' => 'TV-mód kényszerítése',
			'settings.forceTvModeKeepTitle' => 'Megtartja a TV elrendezését?',
			'settings.forceTvModeKeepBody' => ({required Object seconds}) => 'A TV elrendezését távirányítókhoz tervezték. Visszatérés a normál elrendezéshez a ${seconds} s.',
			'settings.forceTvModeKeepConfirm' => 'Tartsa meg a TV elrendezését',
			'settings.forceTvModeReverted' => 'A TV elrendezése visszaállítva',
			'settings.forceTvModeDescription' => 'TV-elrendezés kényszerítése az automatikus felismeréssel nem rendelkező eszközökön. Újraindítást igényel.',
			'settings.startInFullscreen' => 'Indítás teljes képernyőn',
			'settings.startInFullscreenDescription' => 'A Luroka megnyitása teljes képernyős módban indításkor',
			'settings.exitFullscreenOnPlayerClose' => 'Kilépés a teljes képernyőből a lejátszó bezárásakor',
			'settings.exitFullscreenOnPlayerCloseDescription' => 'Automatikus kilépés a teljes képernyőből a videólejátszó bezárásakor',
			'settings.autoHidePerformanceOverlay' => 'Teljesítményadatok automatikus elrejtése',
			'settings.autoHidePerformanceOverlayDescription' => 'A teljesítményadatok elhalványítása a lejátszásvezérlőkkel együtt',
			'settings.showNavBarLabels' => 'Navigációs sáv címkéinek megjelenítése',
			'settings.showNavBarLabelsDescription' => 'Szöveges címkék megjelenítése a navigációs sáv ikonjai alatt',
			'settings.startupSection' => 'Indítási oldal',
			'settings.showExploreTab' => 'Felfedezés lap megjelenítése',
			'settings.showExploreTabDescription' => 'A Plex Discover és a csatlakoztatott követők tartalmait megjelenítő Felfedezés lap megjelenítése',
			'settings.liveTvDefaultFavorites' => 'Kedvenc csatornák alapértelmezés szerint',
			'settings.liveTvDefaultFavoritesDescription' => 'Csak a kedvenc csatornák megjelenítése az Élő TV megnyitásakor',
			'settings.general' => 'Általános',
			'settings.generalDescription' => 'Nyelv, indítás és ablakviselkedés',
			'settings.languageAndRegion' => 'Nyelv és régió',
			'settings.startup' => 'Indítás',
			'settings.display' => 'Kijelző',
			_ => null,
		} ?? switch (path) {
			'settings.libraryAndCards' => 'Könyvtár és kártyák',
			'settings.homeScreen' => 'Kezdőképernyő',
			'settings.navigation' => 'Navigáció',
			'settings.window' => 'Ablak',
			'settings.liveTv' => 'Élő TV',
			'settings.player' => 'Lejátszó',
			'settings.videoAndDisplay' => 'Videó és kijelző',
			'settings.audio' => 'Hang',
			'settings.quality' => 'Minőség',
			'settings.subtitles' => 'Feliratok',
			'settings.seekAndTiming' => 'Tekerés és időzítés',
			'settings.behavior' => 'Viselkedés',
			'settings.gestures' => 'Mozdulatok',
			'settings.gestureBrightnessSwipe' => 'Fényerő-húzás',
			'settings.gestureBrightnessSwipeDescription' => 'Húzd felfelé vagy lefelé a bal szélén a fényerő beállításához',
			'settings.gestureVolumeSwipe' => 'Hangerő-húzás',
			'settings.gestureVolumeSwipeDescription' => 'Húzd felfelé vagy lefelé a jobb szélén a hangerő beállításához',
			'settings.gesturePinchToZoom' => 'Csípés a nagyításhoz',
			'settings.gesturePinchToZoomDescription' => 'Csípj a videóra a nagyításhoz vagy kicsinyítéshez',
			'settings.rememberBrightnessLevel' => 'Fényerőszint megjegyzése',
			'settings.rememberBrightnessLevelDescription' => 'A lejátszás az utolsó húzással beállított fényerővel indul',
			'settings.controls' => 'Vezérlők',
			'settings.rememberPlayerChanges' => 'Lejátszó módosításainak megjegyzése',
			'settings.rememberPlayerChangesDescription' => 'A lejátszás közben végzett módosítások mentési és újbóli alkalmazási helye',
			'settings.scopePlaybackSpeed' => 'Lejátszási sebesség',
			'settings.scopeShaderPreset' => 'Shader-előbeállítás',
			'settings.scopeAspectRatio' => 'Képarány',
			'settings.scopeSyncOffsets' => 'Hang- és feliratszinkronizálás',
			'settings.playerScopeOff' => 'Ne mentse',
			'settings.playerScopeGlobal' => 'Mindenhol',
			'settings.playerScopeLibrary' => 'Könyvtáronként',
			'settings.playerScopeTitle' => 'Sorozatonként vagy filmenként',
			'settings.exportDialogTitle' => 'Luroka-beállítások exportálása',
			'settings.velvetHourTheme' => 'Bársony óra',
			'themeEditor.builtIn' => 'Beépített',
			'themeEditor.presets' => 'Előbeállítások',
			'themeEditor.custom' => 'Egyedi',
			'themeEditor.customEmpty' => 'Még nincs létrehozva',
			'themeEditor.editCustom' => 'Egyéni téma szerkesztése',
			'themeEditor.editCustomDescription' => 'Válassz minden színt magad',
			'themeEditor.locked' => 'Oldja fel a támogatóval',
			'themeEditor.savedLocked' => 'Mentve – feloldja a Támogatóval',
			'themeEditor.title' => 'Egyedi téma',
			'themeEditor.startFrom' => 'Kezdje innen',
			'themeEditor.startFromDescription' => 'Másolja az összes színt egy másik témából',
			'themeEditor.colors' => 'Színek',
			'themeEditor.preview' => 'Előnézet',
			'themeEditor.slots.bg' => 'Háttér',
			'themeEditor.slots.surface' => 'Felület',
			'themeEditor.slots.outline' => 'Vázlat',
			'themeEditor.slots.text' => 'Szöveg',
			'themeEditor.slots.textMuted' => 'Másodlagos szöveg',
			'themeEditor.slots.accent' => 'Akcent',
			'themeEditor.opacity' => 'Átlátszatlanság',
			'themeEditor.hexHint' => '#RRGGBB vagy #ARRGGBB',
			'themeEditor.fromOtherThemes' => 'Más témákból',
			'themeEditor.swatchLabel' => ({required Object theme, required Object color}) => '${theme} ${color}',
			'themeEditor.contrast.textOnBg' => 'Szöveg a háttérben',
			'themeEditor.contrast.textOnSurface' => 'Szöveg a felületen',
			'themeEditor.contrast.textMutedOnBg' => 'Másodlagos szöveg a háttérben',
			'themeEditor.contrast.textMutedOnSurface' => 'Másodlagos szöveg a felületen',
			'themeEditor.contrast.accentOnBg' => 'Hangsúly a háttérben',
			'themeEditor.contrast.accentOnSurface' => 'Kiemelés a felületen',
			'themeEditor.contrast.labelOnAccent' => 'A nyomógomb felirata',
			'themeEditor.lowContrast' => ({required Object pair, required Object ratio, required Object minimum}) => '${pair}: ${ratio}:1, az ajánlott ${minimum}:1 alatt',
			'themeEditor.discardTitle' => 'Elveti a változtatásokat?',
			'themeEditor.discardMessage' => 'A nem mentett színmódosítások elvesznek.',
			'themeEditor.discard' => 'Eldobni',
			'themeEditor.previewCardTitle' => ({required Object number}) => '${number} epizód',
			'themeEditor.previewCardSubtitle' => ({required Object minutes}) => '${minutes} perc van hátra',
			'themeEditor.previewSwitch' => 'Automatikus lejátszás',
			'themeEditor.previewMutedText' => 'A másodlagos szöveg így hangzik',
			'seriesBrowser.oneEpisode' => '1 epizód',
			'seriesBrowser.watchedCount' => ({required Object count}) => '${count} nézte',
			'seriesBrowser.episodeCount' => ({required Object count}) => '${count} epizódok',
			'seriesBrowser.episodesFor' => ({required Object season}) => '${season} · Epizódok',
			'seriesBrowser.enterHint' => 'Választás: nyílt évad · ↓: epizódok',
			'titlePage.genre' => 'Műfaj',
			'titlePage.remaining' => ({required Object time}) => '${time} maradt',
			'titlePage.continueEpisode' => ({required Object season, required Object episode}) => 'Folytatás S${season} E${episode}',
			'titlePage.watchlist' => 'Figyelőlista',
			'titlePage.more' => 'Többet',
			'tvMenus.appearanceDescription' => 'Téma, képernyő margók és poszterek',
			'lurokaPlayer.title' => 'A lejátszó beállításai',
			'lurokaPlayer.watch' => 'Nézze meg',
			'lurokaPlayer.watchDescription' => 'Állítsd be a tempót, lépj le, és döntsd el, mi legyen ezután.',
			'lurokaPlayer.picture' => 'Képbeállítások',
			'lurokaPlayer.pictureDescription' => 'Zoom, HDR és videófeldolgozás',
			'lurokaPlayer.sound' => 'Hang és feliratok',
			'lurokaPlayer.audioSettings' => 'Hangbeállítások',
			'lurokaPlayer.soundDescription' => 'Időzítés, hangerő és hangkimenet',
			'lurokaPlayer.chooseTracks' => 'Válasszon nyelveket és feliratsávokat',
			'lurokaPlayer.tools' => 'Haladó',
			'lurokaPlayer.toolsDescription' => 'Lejátszási információk és diagnosztika',
			'lurokaPlayer.preferences' => 'Lejátszási beállítások',
			'lurokaPlayer.preferencesDescription' => 'A mozi, az alapértelmezett. Kezdje a hanggal és a feliratokkal, majd finomhangolja a streamelést és a képernyőt.',
			'lurokaPlayer.streamPreferences' => 'Streaming minőség',
			'lurokaPlayer.displayPreferences' => 'Kijelző',
			'lurokaPlayer.enginePreferences' => 'Speciális lejátszó opciók',
			'lurokaPlayer.seekPreferences' => 'Keresek',
			'lurokaPlayer.watchPreferences' => 'Automatikus lejátszás és kihagyás',
			'lurokaPlayer.rememberPreferences' => 'Ne feledje a beállításokat',
			'lurokaSettings.quickSetup' => 'Gyors beállítás',
			'lurokaSettings.quickSetupDescription' => 'Kezdje a lényeges dolgokkal: gördülékenyebb TV-böngészés, kényelmes képernyő-illesztés, otthoni elrendezés és lejátszási beállítások.',
			'lurokaSettings.experience' => 'Az Ön tapasztalata',
			'lurokaSettings.experienceDescription' => 'A Luroka jól érezze magát: megjelenés, nyelvek, lejátszás, könyvtárak és képernyőidő.',
			'lurokaSettings.remoteHint' => '↑ ↓ Tallózás a kategóriákban · → / Válassza az Opciók megnyitása · ← Vissza a kategóriákhoz',
			'playerChrome.browse' => 'Fejezetek és sor',
			'playerChrome.backToPlayback' => 'Vissza a lejátszáshoz',
			'playerChrome.nowPlaying' => 'MOST JÁTSZIK',
			'playerChrome.options' => 'JÁTÉKOS LEHETŐSÉGEK',
			'tvLayout.screenMargins' => 'TV képernyő margók',
			'tvLayout.screenMarginsDescription' => 'Csökkentse az alkalmazás széleit, ha a tévé levágja a kép egy részét',
			'tvLayout.screenMarginsDefault' => '0% (alapértelmezett)',
			'studios.checkingCopies' => 'Más könyvtárak ellenőrzése… Bármikor válasszon egy ismert példányt.',
			'studios.incompleteCopies' => 'Egyes könyvtárakat nem lehetett ellenőrizni. Válasszon egy ismert másolatot, vagy törölje, és próbálkozzon újra.',
			'studios.partialFavorites' => 'Néhány kedvencet nem sikerült betölteni. Az újrapróbálkozáshoz válassza a Frissítés lehetőséget.',
			'studios.copyLookupFailedTitle' => 'Nem sikerült minden másolatot ellenőrizni',
			'studios.copyLookupFailedMessage' => 'Egyes könyvtárak nem válaszoltak. Megnyithatja a már megtalált példányok egyikét, vagy törölheti, és újra próbálkozhat.',
			'studios.openKnownCopies' => 'Ismert példányok megjelenítése',
			'studios.browseAll' => 'Az összes böngészése',
			'studios.titleCount' => ({required Object count}) => '${count} címek',
			'studios.topRated' => 'Legjobbra értékelt',
			'studios.mostWatched' => 'A legtöbbet a könyvtárában nézték',
			'studios.collection' => 'STÚDIÓGYŰJTEMÉNY',
			'studios.loadedTitles' => ({required Object count}) => '${count} címek betöltve',
			'studios.sort' => 'Címek rendezése',
			'studios.sortTitleAscending' => 'Cím A–Z',
			'studios.sortTitleDescending' => 'Cím Z–A',
			'studios.sortNewest' => 'Legújabb kiadás',
			'studios.sortOldest' => 'Legrégebbi kiadás',
			'studios.sortAdded' => 'Nemrég hozzáadva',
			'studios.sortEpisodeAdded' => 'Nemrég hozzáadott epizód',
			'studios.sortRating' => 'A legmagasabb minősítésű',
			'studios.title' => 'Böngésszen a Studio szerint',
			'studios.all' => 'Mind',
			'studios.movies' => 'Filmek',
			'studios.shows' => 'TV-műsorok',
			'studios.loadMore' => 'További címek betöltése',
			'studios.empty' => 'Nincsenek megfelelő címek a jelenleg látható könyvtáraiban.',
			'studios.retry' => 'Nem sikerült betölteni több címet – válassza az újrapróbálkozáshoz',
			'studios.description' => 'Fedezze fel a stúdió filmjeit és műsorait könyvtáraiban.',
			'dashboard.previousFeature' => 'Korábbi kiemelt cím',
			'dashboard.nextFeature' => 'Következő kiemelt cím',
			'dashboard.cinemaHome' => 'OTTHON',
			'dashboard.episodeFallback' => 'TV epizód',
			'dashboard.timeLeft' => ({required Object minutes}) => '${minutes} perc van hátra',
			'dashboard.timeLeftHours' => ({required Object hours, required Object minutes}) => '${hours}h ${minutes}m maradt',
			'dashboard.spoilerHidden' => 'Az epizód részleteit a spoiler preferenciája rejtette el.',
			'dashboard.synopsisUnavailable' => 'Nyissa meg a Részletek elemet, ha többet szeretne megtudni erről a címről.',
			'dashboard.yourSpace' => 'A TE TERED',
			'dashboard.title' => 'A te mozid.',
			'dashboard.subtitle' => 'Folytass egy történetet, vagy találd meg a következőt.',
			'dashboard.featured' => 'A LUROKA AJÁNLATA',
			'dashboard.jumpBackIn' => 'Folytatás',
			'dashboard.episodeLabel' => ({required Object season, required Object episode}) => 'S${season} · E${episode}',
			'dashboard.anotherPick' => 'Egy másik választás',
			'dashboard.exploreSeries' => 'Fedezze fel a sorozatokat',
			'dashboard.showFeatured' => 'Otthoni reflektorfény',
			'dashboard.showFeaturedDescription' => 'Kiemelt filmek és műsorok megjelenítése a Kezdőlap tetején.',
			'lurokaCatalog.aboutPerson' => 'REKLÉTKÖRBE',
			'lurokaCatalog.biographyUnavailable' => 'Életrajz nem érhető el erről a szerverről.',
			'lurokaCatalog.filmography' => 'Filmek és műsorok a könyvtáradban',
			'lurokaCatalog.recommended' => 'Ajánlott',
			'lurokaCatalog.browse' => 'Minden cím',
			'lurokaCatalog.collections' => 'Gyűjtemények',
			'lurokaCatalog.browseHint' => 'Fedezze fel katalógusát. Formálja a kijelölést szűrőkkel és rendezéssel.',
			'lurokaCatalog.recommendedHint' => 'Keresse meg a következő történetét',
			'lurokaCatalog.details' => 'A történet mögött',
			'referenceDetails.oneEpisodeLeft' => '1 epizód van hátra',
			'referenceDetails.playAll' => 'Az összes lejátszása',
			'referenceDetails.present' => 'Jelen',
			'referenceDetails.continuing' => 'Folytatás',
			'referenceDetails.upNext' => 'Legközelebb',
			'referenceDetails.episodesLeft' => ({required Object count}) => '${count} epizód maradt',
			'lurokaThemes.title' => 'Luroka mozi paletták',
			'lurokaThemes.coral' => 'Korall · éjkék és naplemente',
			'lurokaThemes.ocean' => 'Óceán · mélykék és jég',
			'lurokaThemes.jade' => 'Jade · örökzöld és menta',
			'lurokaThemes.amethyst' => 'Ametiszt · éjféli ibolya',
			'lurokaThemes.darkThemes' => 'Sötét mozi témák',
			'lurokaThemes.lightThemes' => 'Könnyű mozi témák',
			'lurokaThemes.moreThemes' => 'További témák',
			'lurokaThemes.moreThemesDescription' => 'Böngésszen további paletták és egyedi színek között',
			'lurokaThemes.obsidian' => 'Obszidián · tiszta fekete és pezsgő',
			'lurokaThemes.nocturne' => 'Nocturne · faszén és pezsgő',
			'lurokaThemes.burgundy' => 'Burgundia · bársonyos bor és rózsa',
			'lurokaThemes.slate' => 'Pala · grafit és sziklák',
			'lurokaThemes.espresso' => 'Espresso · kakaó és karamell',
			'lurokaThemes.pearl' => 'Gyöngy · porcelán és zafír',
			'lurokaThemes.linen' => 'Vászon · meleg elefántcsont és terrakotta',
			'lurokaThemes.sunrise' => 'Napkelte · őszibarack és korall',
			'lurokaThemes.coastal' => 'Tengerparti · köd és óceán kékeszöld',
			'lurokaThemes.latte' => 'Latte · tejszín és karamell',
			'lurokaThemes.sage' => 'Zsálya · lágy zöld és eukaliptusz',
			'lurokaThemes.lavender' => 'Levendula · lila és mély ibolya',
			'customPerformance.title' => 'Teljesítmény és effektusok',
			'customPerformance.fireStickMode' => 'Alacsony fogyasztású eszköz üzemmód',
			'customPerformance.description' => 'Használjon csökkentett effektusokat, statikus háttereket, 720p felbontású grafikát és 40 MiB-os képgyorsítótárat. Ha engedélyezve van, ez felülírja a vizuális effektusokat; kikapcsolása visszaállítja a vizuális effektusokat.',
			'customPerformance.detailsTitle' => 'Teljesítmény részletei',
			'customPerformance.details' => 'Aktív effektusok, kép-gyorsítótár korlát és böngészési teljesítménymérések',
			'customPerformance.effectsTier' => 'Aktív effektusok szintje',
			'customPerformance.imageCache' => 'Kép-gyorsítótár korlát',
			'customPerformance.measurement' => 'Böngészés mérés',
			'customPerformance.measureInstructions' => 'Indítson el egy 20 másodperces mintát, térjen vissza a Kezdőlapra, és böngésszen a távvezérlővel. Az eredmények megtekintéséhez térjen vissza ide. Az összehasonlításhoz ismételje meg ugyanazokat a műveleteket a mód be- és kikapcsolásával. Ez a Flutter UI működését méri, nem a videodekódoló teljesítményét.',
			'customPerformance.startSample' => 'Indítsa el a 20 másodperces mintát',
			'customPerformance.stopSample' => 'Most fejezze be a mintát',
			'customPerformance.sampling' => 'Mintavétel – térjen vissza a Kezdőlapra és böngésszen. Az eredményeket itt tároljuk.',
			'customPerformance.frames' => 'Keretek mintavétellel',
			'customPerformance.slowFrames' => 'A keretek túllépik a költségvetést',
			'customPerformance.buildP95' => 'UI felépítési idő (95. percentilis)',
			'customPerformance.rasterP95' => 'Raszteridő (95. percentilis)',
			'customPerformance.frameBudget' => 'Képkockánkénti költségvetés',
			'customPerformance.processMemory' => 'Alkalmazás folyamatmemória a minta végén',
			'customPerformance.noFrames' => 'Nem készült renderelt képkockák rögzítése. Indítson el egy másik mintát, és böngésszen az alkalmazásban.',
			'homeLayout.manageStudios' => 'Válasszon és rendeljen stúdiókat',
			'homeLayout.manageStudiosDescription' => 'Válassza ki, hogy mely stúdiók jelenjenek meg ehhez a profilhoz, és rendezze a sorrendjüket.',
			'homeLayout.studioUnavailable' => 'Csak a kiválasztott könyvtárakban található stúdiók jelennek meg a Kezdőlapon.',
			'homeLayout.showAllStudios' => 'Az összes stúdió megjelenítése',
			'homeLayout.hideAllStudios' => 'Az összes stúdió elrejtése',
			'homeLayout.reorderStudio' => 'Stúdiórend módosítása',
			'homeLayout.episodeThumbnails' => 'Epizódképek a Megtekintés folytatásában',
			'homeLayout.episodeThumbnailsDescription' => 'Epizódképek megjelenítése sorozatok vagy évadok poszterei helyett a Megtekintés folytatásában és a Következőben.',
			'homeLayout.spotlightSource' => 'Kiemelt tartalom forrása',
			'homeLayout.spotlightSourceDescription' => 'A For You a profil megtekintési tevékenységét használja ezen az eszközön, a kedvencekkel és könyvtárcímekkel együtt.',
			'homeLayout.spotlightForYou' => 'Neked',
			'homeLayout.spotlightForYouDescription' => 'A megtekintett tartalmak, a kedvencek, az új kiegészítések és a trendek keveréke a profil ezen az eszközön végzett megtekintési tevékenységével.',
			'homeLayout.spotlightTrending' => 'Felkapott',
			'homeLayout.spotlightTrendingDescription' => 'Népszerű filmek és műsorok a könyvtáraidban.',
			'homeLayout.spotlightContinue' => 'Folytassa a nézést',
			'homeLayout.spotlightContinueDescription' => 'Elkezdett címek és folytatható epizódok.',
			'homeLayout.spotlightFavorites' => 'A kedvenceid közül',
			'homeLayout.spotlightInspired' => 'A megtekintésed ihlette',
			'homeLayout.spotlightNextUp' => 'Következő',
			'homeLayout.title' => 'Az otthon személyre szabása',
			'homeLayout.description' => 'Válassza ki a profil sorrendjét és láthatóságát. Válasszon egy sort az áthelyezéséhez vagy elrejtéséhez.',
			'homeLayout.rows' => 'Kezdőlap sorok',
			'homeLayout.progressLayout' => 'Folytassa a megtekintést és a Következő oldalt',
			'homeLayout.progressCombined' => 'Egy sorban kombinálva',
			'homeLayout.progressSeparate' => 'Külön sorok',
			'homeLayout.progressDescription' => 'Külön Következő fel, ha a szerver támogatja. A többi szerver kombinálva marad.',
			'homeLayout.visible' => 'Látható',
			'homeLayout.hidden' => 'Rejtett',
			'homeLayout.showRow' => 'Sor megjelenítése',
			'homeLayout.hideRow' => 'Sor elrejtése',
			'homeLayout.moveUp' => 'Lépj felfelé',
			'homeLayout.moveDown' => 'Mozgás lefelé',
			'homeLayout.pinnedCollections' => 'Rögzített gyűjtemények',
			'homeLayout.pinInstructions' => 'Nyissa meg egy gyűjtemény menüjét, és válassza a Pin to Kezdőlap lehetőséget. Válassza ki itt a rögzített gyűjteményt a parancsikon eltávolításához.',
			'homeLayout.pinCollection' => 'Pin haza',
			'homeLayout.unpinCollection' => 'Rögzítés feloldása a Kezdőlapról',
			'homeLayout.reset' => 'Az alapértelmezett sorok visszaállítása',
			'homeLayout.resetDescription' => 'Visszaállítja az eredeti sorsorrendet, és megjeleníti az összes sort ehhez a profilhoz? A rögzített gyűjteményeit megőrizzük.',
			'homeLayout.saveFailed' => 'Nem sikerült menteni az otthoni elrendezést. Kérjük, próbálja újra.',
			'homeLayout.emptyHint' => 'A sorok rejtve lehetnek. Nyissa meg a Személyre szabás kezdőlapját, hogy újra megjelenjen.',
			'screenTime.title' => 'Képernyőidő',
			'screenTime.description' => 'Tekintse meg a videónézéssel töltött időt ezen a profilon',
			'screenTime.today' => 'Ma',
			'screenTime.thisWeek' => 'Ezen a héten',
			'screenTime.thisMonth' => 'Ebben a hónapban',
			'screenTime.lessThanMinute' => '< 1 perc',
			'screenTime.minutes' => ({required Object count}) => '${count} min',
			'screenTime.hours' => ({required Object count}) => '${count} óra',
			'screenTime.hoursMinutes' => ({required Object hours, required Object minutes}) => '${hours} óra ${minutes} min',
			'activityStats.title' => 'Statisztikák megtekintése',
			'activityStats.period' => 'Időszak',
			'activityStats.last7Days' => '7 nap',
			'activityStats.last30Days' => '30 nap',
			'activityStats.last90Days' => '90 nap',
			'activityStats.thisYear' => 'év',
			'activityStats.allTime' => 'Mind',
			'activityStats.heroAllTime' => 'Minden alkalommal',
			'activityStats.heroDailyAverage' => 'Napi átlag',
			'activityStats.consistency' => 'Következetesség',
			'activityStats.currentStreak' => 'Aktuális sorozat',
			'activityStats.dayCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n, one: '${n} nap', other: '${n} nap', ), 
			'activityStats.longestStreak' => 'Leghosszabb sorozat',
			'activityStats.bestDay' => 'A legjobb nap',
			'activityStats.bestWeek' => 'A legjobb hét',
			'activityStats.trendTitle' => 'Nézési idő',
			'activityStats.trendToday' => 'Ma',
			'activityStats.gapDetail' => ({required Object stat, required Object range}) => '${stat} a ${range}-n',
			'activityStats.patternsTitle' => 'A mintáid',
			'activityStats.mostlyKind' => ({required Object kind}) => 'Többnyire ${kind}',
			'activityStats.weekdayTitle' => 'Hétköznapra',
			'activityStats.hoursTitle' => 'Napszak szerint',
			'activityStats.amLabel' => 'AM',
			'activityStats.pmLabel' => 'PM',
			'activityStats.kindsTitle' => 'Kategória szerint',
			'activityStats.kindMovie' => 'Filmek',
			'activityStats.kindTv' => 'TV',
			'activityStats.kindLiveTv' => 'Élő TV',
			'activityStats.kindMusic' => 'Zene',
			'activityStats.kindOther' => 'Egyéb',
			'activityStats.topTitlesTitle' => 'A legtöbben nézték',
			'activityStats.sessionsTitle' => 'Legutóbbi ülések',
			'activityStats.recentViewingTitle' => 'Legutóbbi megtekintés',
			'activityStats.recentViewingHint' => 'Teljes megtekintési idő a kiválasztott időszakban. A dátumok a legutóbbi megtekintést mutatják.',
			'activityStats.showMore' => 'Mutass többet',
			'activityStats.sessionNoTitle' => 'Azonosítatlan lejátszás',
			'activityStats.emptyTitle' => 'Itt még semmi',
			'activityStats.emptyBody' => 'Nézzen valamit, és a statisztikái itt gyűlnek össze.',
			'activityStats.noDataInPeriod' => 'Ebben az időszakban nincs lejátszás.',
			'search.hint' => 'Keresés filmek, sorozatok és zenék között...',
			'search.tryDifferentTerm' => 'Próbálj másik keresési kifejezést',
			'search.searchYourMedia' => 'Keresés a saját médiatartalmak között',
			'search.enterTitleActorOrKeyword' => 'Adj meg egy címet, színészt vagy kulcsszót',
			'search.people' => 'Emberek',
			'search.recentSearches' => 'Legutóbbi keresések',
			'search.clearHistory' => 'Törölje az előzményeket',
			'hotkeys.setShortcutFor' => ({required Object actionName}) => 'Billentyűparancs beállítása ehhez: ${actionName}',
			'hotkeys.clearShortcut' => 'Billentyűparancs törlése',
			'hotkeys.noShortcutSet' => 'Nincs billentyűparancs beállítva',
			'hotkeys.currentShortcut' => 'Jelenlegi billentyűparancs:',
			'hotkeys.pressToRecord' => 'Válaszd ki a billentyűparancs rögzítéséhez',
			'hotkeys.recordingShortcut' => 'Nyomd meg most a billentyűparancsot',
			'hotkeys.actions.playPause' => 'Lejátszás/Szünet',
			'hotkeys.actions.volumeUp' => 'Hangerő fel',
			'hotkeys.actions.volumeDown' => 'Hangerő le',
			'hotkeys.actions.seekForward' => ({required Object seconds}) => 'Tekerés előre (${seconds} mp)',
			'hotkeys.actions.seekBackward' => ({required Object seconds}) => 'Tekerés hátra (${seconds} mp)',
			'hotkeys.actions.fullscreenToggle' => 'Teljes képernyős mód váltása',
			'hotkeys.actions.muteToggle' => 'Némítás be- és kikapcsolása',
			'hotkeys.actions.subtitleToggle' => 'Feliratok be- és kikapcsolása',
			'hotkeys.actions.audioTrackNext' => 'Következő hangsáv',
			'hotkeys.actions.subtitleTrackNext' => 'Következő feliratsáv',
			'hotkeys.actions.chapterNext' => 'Következő fejezet',
			'hotkeys.actions.chapterPrevious' => 'Előző fejezet',
			'hotkeys.actions.episodeNext' => 'Következő epizód',
			'hotkeys.actions.episodePrevious' => 'Előző epizód',
			'hotkeys.actions.speedIncrease' => 'Sebesség növelése',
			'hotkeys.actions.speedDecrease' => 'Sebesség csökkentése',
			'hotkeys.actions.speedReset' => 'Sebesség alaphelyzetbe állítása',
			'hotkeys.actions.zoomIn' => 'Nagyítás',
			'hotkeys.actions.zoomOut' => 'Kicsinyítés',
			'hotkeys.actions.zoomReset' => 'Nagyítás alaphelyzetbe állítása',
			'hotkeys.actions.subSeekNext' => 'Ugrás a következő feliratra',
			'hotkeys.actions.subSeekPrev' => 'Ugrás az előző feliratra',
			'hotkeys.actions.shaderToggle' => 'Shaderek be- és kikapcsolása',
			'hotkeys.actions.skipMarker' => 'Intró/stáblista átugrása',
			'hotkeys.actions.screenshot' => 'Képernyőkép készítése',
			'fileInfo.title' => 'Fájlinformáció',
			'fileInfo.overview' => 'Áttekintés',
			'fileInfo.video' => 'Videó',
			'fileInfo.audio' => 'Hang',
			'fileInfo.subtitles' => 'Feliratok',
			'fileInfo.images' => 'Beágyazott képek',
			'fileInfo.dataStreams' => 'Adatfolyamok',
			'fileInfo.lyrics' => 'Dalszövegek',
			'fileInfo.file' => 'Fájl',
			'fileInfo.attachments' => 'Mellékletek',
			'fileInfo.delivery' => 'Kézbesítés',
			'fileInfo.versionCounter' => ({required Object index, required Object count}) => '${index}. verzió a(z) ${count} közül',
			'fileInfo.fileCounter' => ({required Object index, required Object count}) => '${index}. fájl a(z) ${count} közül',
			'fileInfo.noStreams' => 'A szerver nem jelentett adatfolyamot ehhez a fájlhoz.',
			'fileInfo.copyPath' => 'Útvonal másolása',
			'fileInfo.pathCopied' => 'Fájlútvonal kimásolva',
			'fileInfo.codec' => 'Kodek',
			'fileInfo.codecTag' => 'Kodekcímke',
			'fileInfo.resolution' => 'Felbontás',
			'fileInfo.codedResolution' => 'Kódolt felbontás',
			'fileInfo.bitrate' => 'Bitráta',
			'fileInfo.frameRate' => 'Képkockasebesség',
			'fileInfo.rotation' => 'Forgatás',
			'fileInfo.comment' => 'Megjegyzés',
			'fileInfo.audioDescription' => 'Hangleírás',
			'fileInfo.headerCompression' => 'Fejléc-tömörítés',
			'fileInfo.sidecarFile' => 'Kísérő fájl',
			'fileInfo.transportTimestamp' => 'Szállítási időbélyeg',
			'fileInfo.displayOffset' => 'Megjelenítési eltolás',
			'fileInfo.previewFailureCode' => 'Előnézeti hibakód',
			'fileInfo.previewRetries' => 'Előnézeti újrapróbálkozások',
			'fileInfo.aspectRatio' => 'Méretarány',
			'fileInfo.pixelAspectRatio' => 'Pixel képarány',
			'fileInfo.profile' => 'Profil',
			'fileInfo.level' => 'Szint',
			'fileInfo.bitDepth' => 'Bitmélység',
			'fileInfo.pixelFormat' => 'Pixelformátum',
			'fileInfo.colorSpace' => 'Színtér',
			'fileInfo.colorRange' => 'Színtartomány',
			'fileInfo.colorPrimaries' => 'Elsődleges színek',
			'fileInfo.colorTransfer' => 'Színátvitel',
			'fileInfo.chromaSubsampling' => 'Krominancia-alulmintavételezés',
			'fileInfo.chromaLocation' => 'Kroma elhelyezkedés',
			'fileInfo.scanType' => 'Pásztázási típus',
			'fileInfo.interlaced' => 'Váltott soros',
			'fileInfo.anamorphic' => 'Anamorf',
			'fileInfo.referenceFrames' => 'Referencia képkockák',
			'fileInfo.dynamicRange' => 'Dinamikatartomány',
			'fileInfo.dolbyVision' => 'Dolby Vision',
			'fileInfo.dolbyVisionLevel' => 'Dolby Vision szint',
			'fileInfo.dolbyVisionVersion' => 'Dolby Vision verzió',
			'fileInfo.dolbyVisionLayers' => 'Dolby Vision rétegek',
			'fileInfo.baseLayerCompatibility' => 'Alapréteg-kompatibilitás',
			'fileInfo.avcBitstream' => 'AVC bitfolyam',
			'fileInfo.nalLengthSize' => 'NAL hosszméret',
			'fileInfo.scalingMatrix' => 'Egyéni méretezési mátrix',
			'fileInfo.streamIdentifier' => 'Adatfolyam-azonosító',
			'fileInfo.streamIndex' => 'Adatfolyam-index',
			'fileInfo.streamId' => 'Adatfolyam azonosítója',
			'fileInfo.language' => 'Nyelv',
			'fileInfo.languageCode' => 'Nyelvkód',
			'fileInfo.streamTitle' => 'Sáv címe',
			'fileInfo.channels' => 'Csatornák',
			'fileInfo.sampleRate' => 'Mintavételi frekvencia',
			'fileInfo.spatialAudio' => 'Térbeli hang',
			'fileInfo.textBased' => 'Szövegalapú',
			'fileInfo.subtitleFormat' => 'Kísérő formátum',
			'fileInfo.provider' => 'Szolgáltató',
			'fileInfo.matchScore' => 'Egyezési pontszám',
			'fileInfo.externalDelivery' => 'Külön is kiszolgálható',
			'fileInfo.sidecarPath' => 'Kísérő fájl útvonala',
			'fileInfo.sourceStream' => 'Másolva innen',
			'fileInfo.temporary' => 'Ideiglenes',
			'fileInfo.timeBase' => 'Időalap',
			'fileInfo.overallBitrate' => 'Összesített bitráta',
			'fileInfo.path' => 'Elérési út',
			'fileInfo.fileName' => 'Fájlnév',
			'fileInfo.size' => 'Méret',
			'fileInfo.totalSize' => 'Teljes méret',
			'fileInfo.container' => 'Konténer',
			'fileInfo.duration' => 'Időtartam',
			'fileInfo.previewThumbnails' => 'Előnézeti miniatűrök',
			'fileInfo.previewIndex' => 'Előnézeti index',
			'fileInfo.packetLength' => 'Csomaghossz',
			'fileInfo.filePresent' => 'Fájl jelen van',
			'fileInfo.fileReadable' => 'A szerver számára olvasható',
			'fileInfo.streamPath' => 'Adatfolyam útvonala',
			'fileInfo.optimizedForStreaming' => 'Adatfolyam-továbbításra optimalizálva',
			'fileInfo.has64bitOffsets' => '64 bites eltolások',
			'fileInfo.protocol' => 'Protokoll',
			'fileInfo.mediaType' => 'Médiatípus',
			'fileInfo.sourceKind' => 'Forrás típusa',
			'fileInfo.optimizedVersion' => 'Optimalizált verzió',
			'fileInfo.optimizationTarget' => 'Optimalizálási cél',
			'fileInfo.deletedAt' => 'Törölve',
			'fileInfo.remoteSource' => 'Távoli forrás',
			'fileInfo.infiniteStream' => 'Végtelen adatfolyam',
			'fileInfo.directPlay' => 'Közvetlen lejátszás',
			'fileInfo.directStream' => 'Közvetlen adatfolyam',
			'fileInfo.transcoding' => 'Átkódolás',
			'fileInfo.etag' => 'ETag',
			'fileInfo.versionId' => 'Verzióazonosító',
			'fileInfo.fileId' => 'Fájlazonosító',
			'fileInfo.defaultAudioTrack' => 'Alapértelmezett hangsáv',
			'fileInfo.defaultSubtitleTrack' => 'Alapértelmezett feliratsáv',
			'fileInfo.subtitlesOff' => 'Ki',
			'fileInfo.flagDefault' => 'Alapértelmezett',
			'fileInfo.flagForced' => 'Kényszerített',
			'fileInfo.flagSelected' => 'Kiválasztva',
			'fileInfo.flagExternal' => 'Külső',
			'fileInfo.flagHearingImpaired' => 'Nagyothallóknak',
			'fileInfo.flagDub' => 'Szinkron',
			'fileInfo.flagOriginal' => 'Eredeti',
			'fileInfo.channelsMono' => 'Monó',
			'fileInfo.dolbyVisionProfile' => ({required Object profile}) => '${profile} profil',
			'mediaMenu.markAsWatched' => 'Megjelölés megtekintettként',
			'mediaMenu.markAsUnwatched' => 'Megjelölés nem megtekintettként',
			'mediaMenu.clearProgress' => 'Világos haladás',
			'mediaMenu.removeFromContinueWatching' => 'Eltávolítás a folytatásból',
			'mediaMenu.viewDetails' => 'Részletek megtekintése',
			'mediaMenu.goToSeries' => 'Ugrás a sorozathoz',
			'mediaMenu.shufflePlay' => 'Véletlenszerű lejátszás',
			'mediaMenu.shuffleNotAvailableOffline' => 'A véletlenszerű lejátszás nem érhető el offline',
			'mediaMenu.fileInfo' => 'Fájlinformáció',
			'mediaMenu.deleteEpisodeFromServer' => 'Epizód törlése a szerverről',
			'mediaMenu.deleteSeasonFromServer' => 'Évad törlése a szerverről',
			'mediaMenu.deleteShowFromServer' => 'Sorozat törlése a szerverről',
			'mediaMenu.deleteMovieFromServer' => 'Film törlése a szerverről',
			'mediaMenu.deleteEpisodeTitle' => 'Töröljük ezt az epizódot?',
			'mediaMenu.deleteSeasonTitle' => 'Töröljük ezt az évadot?',
			'mediaMenu.deleteShowTitle' => 'Töröljük ezt a sorozatot?',
			'mediaMenu.deleteMovieTitle' => 'Töröljük ezt a filmet?',
			'mediaMenu.deleteEpisodeConfirm' => 'Epizód törlése',
			'mediaMenu.deleteSeasonConfirm' => 'Évad törlése',
			'mediaMenu.deleteShowConfirm' => 'Sorozat törlése',
			'mediaMenu.deleteMovieConfirm' => 'Film törlése',
			'mediaMenu.deleteAnyway' => 'Törlés mindenképp',
			'mediaMenu.confirmDeleteTarget' => ({required Object title}) => 'Véglegesen töröljük a(z) ${title} elemet a szerverről?',
			'mediaMenu.deleteMultipleWarning' => 'Ez magában foglalja az összes epizódot és azok fájljait.',
			'mediaMenu.deleteEpisodeCountWarning' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n, one: 'Ez törli az összes (${n}) epizódot benne és a hozzá tartozó fájlt.', other: 'Ez törli az összes (${n}) epizódot benne és a fájljaikat.', ), 
			'mediaMenu.deleteMultiPartWarning' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n, one: 'Ez az elem ${n} fájlban van tárolva, amely törlésre kerül.', other: 'Ez az elem ${n} fájlban van tárolva, és mindegyik törlésre kerül.', ), 
			'mediaMenu.deleteSharedFileHeading' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n, one: 'További ${n} epizód is ugyanabban a fájlban van, és szintén törlésre kerül:', other: 'További ${n} epizód is ugyanabban a fájlban van, és szintén törlésre kerül:', ), 
			'mediaMenu.deleteScopeUnverifiedProbeFailed' => 'A Luroka nem tudta ellenőrizni, mely fájlokat távolítja el ez, ezért a fent nevezett elemnél többet is törölhet. Szakítsa meg és próbálja újra, vagy töröljön mindenképp.',
			'mediaMenu.deleteScopeUnverifiedNoFileInfo' => 'A szerver nem szolgáltatott fájladatokat ehhez az elemhez, ezért a Luroka nem tudja ellenőrizni, mely fájlokat távolít el. A fent nevezett elemnél többet is törölhet.',
			'mediaMenu.mediaDeletedSuccessfully' => 'Médiaelem sikeresen törölve',
			'mediaMenu.mediaFailedToDelete' => 'Nem sikerült a médiaelem törlése',
			'mediaMenu.rate' => 'Értékelés',
			'mediaMenu.playFromBeginning' => 'Lejátszás az elejétől',
			'mediaMenu.playVersion' => 'Verzió lejátszása...',
			'rateSheet.title' => 'Értékelés',
			'rateSheet.server' => 'Szerver',
			'rateSheet.favorite' => 'Kedvenc',
			'rateSheet.favorited' => 'Kedvencekhez hozzáadva',
			'rateSheet.saved' => 'Mentve',
			'rateSheet.notAvailable' => 'Nincs találat',
			'rateSheet.noConnectedServices' => 'Az értékeléshez csatlakoztass egy szolgáltatást a Beállításokban.',
			'accessibility.mediaCardMovie' => ({required Object title}) => '${title}, film',
			'accessibility.mediaCardShow' => ({required Object title}) => '${title}, TV-sorozat',
			'accessibility.mediaCardEpisode' => ({required Object title, required Object episodeInfo}) => '${title}, ${episodeInfo}',
			'accessibility.mediaCardSeason' => ({required Object title, required Object seasonInfo}) => '${title}, ${seasonInfo}',
			'accessibility.mediaCardWatched' => 'megtekintve',
			'accessibility.mediaCardPartiallyWatched' => ({required Object percent}) => '${percent} százalék megtekintve',
			'accessibility.mediaCardUnwatched' => 'még nem láttad',
			'accessibility.tapToPlay' => 'Koppints a lejátszáshoz',
			'accessibility.decrease' => 'Csökkentés',
			'accessibility.increase' => 'Növelés',
			'accessibility.decreaseValue' => ({required Object label}) => '${label} csökkentése',
			'accessibility.increaseValue' => ({required Object label}) => '${label} növelése',
			'accessibility.hue' => 'Árnyalat',
			'accessibility.saturation' => 'Telítettség',
			'accessibility.brightness' => 'Fényerő',
			_ => null,
		} ?? switch (path) {
			'accessibility.hexColor' => 'Hex színkód',
			'accessibility.expandText' => 'Szöveg kibontása',
			'accessibility.collapseText' => 'Szöveg összecsukása',
			'accessibility.alphabetNavigation' => 'Ábécé szerinti navigáció',
			'accessibility.alphabetScrollHint' => 'A betűnkénti léptetéshez pöccints felfelé vagy lefelé',
			'accessibility.rowColumnPosition' => ({required Object row, required Object rowCount, required Object column, required Object columnCount}) => '${row}. sor a(z) ${rowCount} sorból, ${column}. oszlop a(z) ${columnCount} oszlopból',
			'accessibility.rowPosition' => ({required Object row, required Object rowCount}) => '${row}. sor a(z) ${rowCount} sorból',
			'accessibility.autoScrollPlay' => 'Automatikus görgetés indítása',
			'accessibility.autoScrollPause' => 'Automatikus görgetés szüneteltetése',
			'accessibility.hueShort' => 'H',
			'accessibility.saturationShort' => 'S',
			'accessibility.valueShort' => 'V',
			'tooltips.shufflePlay' => 'Véletlenszerű lejátszás',
			'tooltips.playTrailer' => 'Előzetes lejátszása',
			'tooltips.markAsWatched' => 'Megjelölés megtekintettként',
			'tooltips.markAsUnwatched' => 'Megjelölés nem megtekintettként',
			'audioTracks.track' => ({required Object n}) => '${n}. hangsáv',
			'videoControls.audioLabel' => 'Hang',
			'videoControls.subtitlesLabel' => 'Feliratok',
			'videoControls.addTime' => ({required Object amount, required Object unit}) => '+${amount}${unit}',
			'videoControls.letterbox' => 'Fekete sávok',
			'videoControls.fillScreen' => 'Képernyő kitöltése',
			'videoControls.stretch' => 'Nyújtás',
			'videoControls.lockRotation' => 'Forgatás zárolása',
			'videoControls.unlockRotation' => 'Forgatás feloldása',
			'videoControls.timerActive' => 'Időzítő aktív',
			'videoControls.playbackWillPauseIn' => ({required Object duration}) => 'A lejátszás ${duration} múlva szünetel',
			'videoControls.sleepTimerEndOfVideo' => 'Jelenlegi videó vége',
			'videoControls.sleepTimerStopAtHeader' => 'Leállítás ekkor',
			'videoControls.sleepTimerDurationHeader' => 'Időzítő',
			'videoControls.playbackWillPauseAtEnd' => 'A lejátszás szünetel a videó végén',
			'videoControls.stillWatching' => 'Még nézed?',
			'videoControls.pausingIn' => ({required Object seconds}) => 'Szüneteltetés ${seconds} mp múlva',
			'videoControls.continueWatching' => 'Folytatás',
			'videoControls.autoPlayNext' => 'Következő automatikus lejátszása',
			'videoControls.playNext' => 'Következő lejátszása',
			'videoControls.playButton' => 'Lejátszás',
			'videoControls.pauseButton' => 'Szünet',
			'videoControls.playbackPaused' => 'Szüneteltetve',
			'videoControls.playbackResumed' => 'Lejátszás',
			'videoControls.loadingVideo' => 'Videó betöltése',
			'videoControls.showPlaybackControls' => 'Lejátszásvezérlők megjelenítése',
			'videoControls.hidePlaybackControls' => 'Lejátszásvezérlők elrejtése',
			'videoControls.seekBackwardButton' => ({required Object seconds}) => 'Tekerés hátra ${seconds} másodperccel',
			'videoControls.seekForwardButton' => ({required Object seconds}) => 'Tekerés előre ${seconds} másodperccel',
			'videoControls.previousButton' => 'Előző epizód',
			'videoControls.nextButton' => 'Következő epizód',
			'videoControls.previousChapterButton' => 'Előző fejezet',
			'videoControls.nextChapterButton' => 'Következő fejezet',
			'videoControls.muteButton' => 'Némítás',
			'videoControls.unmuteButton' => 'Hang visszakapcsolása',
			'videoControls.settingsButton' => 'Lejátszási beállítások',
			'videoControls.infoButton' => 'Info',
			'videoControls.tracksButton' => 'Hang és feliratok',
			'videoControls.chaptersButton' => 'Fejezetek',
			'videoControls.versionQualityButton' => 'Verzió és minőség',
			'videoControls.versionColumnHeader' => 'Verzió',
			'videoControls.qualityColumnHeader' => 'Minőség',
			'videoControls.qualityOriginal' => 'Eredeti',
			'videoControls.qualityPresetLabel' => ({required Object resolution, required Object bitrate}) => '${resolution}p ${bitrate} Mbps',
			'videoControls.transcodeUnavailableFallback' => 'A transzkódolás nem érhető el — eredeti minőség lejátszása',
			'videoControls.subtitleUnavailableFallback' => 'A kiválasztott feliratot nem sikerült betölteni — folytatás felirat nélkül',
			'videoControls.pipButton' => 'Kép a képben mód',
			'videoControls.aspectRatioButton' => 'Méretarány',
			'videoControls.ambientLighting' => 'Környezeti megvilágítás',
			'videoControls.fullscreenButton' => 'Teljes képernyős mód bekapcsolása',
			'videoControls.exitFullscreenButton' => 'Teljes képernyős mód kikapcsolása',
			'videoControls.alwaysOnTopButton' => 'Mindig legfelül',
			'videoControls.rotationLockButton' => 'Elforgatás zárolása',
			'videoControls.lockScreen' => 'Képernyő zárolása',
			'videoControls.screenLockButton' => 'Képernyőzár',
			'videoControls.longPressToUnlock' => 'Nyomd hosszan a feloldáshoz',
			'videoControls.timelineSlider' => 'Videó idősáv',
			'videoControls.volumeSlider' => 'Hangerő',
			'videoControls.endsAt' => ({required Object time}) => 'Vége: ${time}',
			'videoControls.pipActive' => 'Lejátszás kép a képben módban',
			'videoControls.pipFailed' => 'Nem sikerült elindítani a kép a képben módot',
			'videoControls.screenshotSaved' => 'Képernyőkép elmentve',
			'videoControls.screenshotFailed' => 'Nem sikerült képernyőképet készíteni',
			'videoControls.zoomPercent' => ({required Object percent}) => 'Nagyítás ${percent}%',
			'videoControls.volumePercent' => ({required Object percent}) => 'Hangerő ${percent}%',
			'videoControls.pipErrors.androidVersion' => 'Android 8.0 vagy újabb szükséges',
			'videoControls.pipErrors.iosVersion' => 'iOS 15.0 vagy újabb szükséges',
			'videoControls.pipErrors.permissionDisabled' => 'A kép a képben mód le van tiltva. Engedélyezd a rendszerbeállításokban.',
			'videoControls.pipErrors.notSupported' => 'Az eszköz nem támogatja a kép a képben módot',
			'videoControls.pipErrors.voSwitchFailed' => 'Nem sikerült átváltani a videókimenetet a kép a képben módhoz',
			'videoControls.pipErrors.failed' => 'Nem sikerült elindítani a kép a képben módot',
			'videoControls.pipErrors.prepareFailed' => 'Nem sikerült előkészíteni a kép a képben módot',
			'videoControls.pipErrors.unknown' => ({required Object error}) => 'Hiba történt: ${error}',
			'videoControls.chapters' => 'Fejezetek',
			'videoControls.noChaptersAvailable' => 'Nincsenek elérhető fejezetek',
			'videoControls.queue' => 'Lejátszási sor',
			'videoControls.noQueueItems' => 'Nincsenek elemek a sorban',
			'videoControls.noAudioDevicesAvailable' => 'Nincsenek elérhető audioeszközök',
			'videoControls.searchSubtitles' => 'Feliratok keresése',
			'videoControls.language' => 'Nyelv',
			'videoControls.noSubtitlesFound' => 'Nem találhatók feliratok',
			'videoControls.subtitleDownloaded' => 'Felirat letöltve',
			'videoControls.subtitleDownloadedNotApplied' => 'Felirat letöltve, de nem sikerült kiválasztani',
			'videoControls.subtitleDownloadFailed' => 'Nem sikerült a felirat letöltése',
			'videoControls.searchLanguages' => 'Nyelvek keresése...',
			'videoControls.skipIntro' => 'Főcím átugrása',
			'videoControls.skipCredits' => 'Stáblista átugrása',
			'videoControls.nextEpisode' => 'Következő epizód',
			'videoControls.subtitleTrack' => ({required Object n}) => '${n}. sáv',
			'videoControls.subtitleFile' => ({required Object name}) => '${name} felirat',
			'videoControls.forcedTrack' => ({required Object label}) => '${label} (kényszerített)',
			'videoControls.osdSubtitlesOff' => 'Feliratok: ki',
			'videoControls.osdSubtitles' => ({required Object track}) => 'Feliratok: ${track}',
			'videoControls.osdAudio' => ({required Object track}) => 'Hang: ${track}',
			'messages.markedAsWatched' => 'Megjelölve megtekintettként',
			'messages.markedAsUnwatched' => 'Megjelölve nem megtekintettként',
			'messages.markedAsWatchedOffline' => 'Megjelölve megtekintettként (szinkronizálás online állapotban)',
			'messages.markedAsUnwatchedOffline' => 'Megjelölve nem megtekintettként (szinkronizálás online állapotban)',
			'messages.autoRemovedWatchedDownload' => ({required Object title}) => 'Automatikusan eltávolítva: ${title}',
			'messages.autoRemovedWatchedDownloads' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n, one: '${n} megtekintett letöltés automatikusan eltávolítva', other: '${n} megtekintett letöltés automatikusan eltávolítva', ), 
			'messages.removedFromContinueWatching' => 'Eltávolítva a folytatásból',
			'messages.errorLoading' => ({required Object error}) => 'Hiba: ${error}',
			'messages.searchPartialResults' => 'Néhány médiaszervert nem sikerült keresni. Az elérhető találatok megjelenítése.',
			'messages.streamInterrupted' => 'Az adatfolyam megszakadt. Az újrapróbálkozáshoz indítsd el a lejátszást, vagy tekerj másik pozícióra.',
			'messages.liveStreamInterrupted' => 'Az élő adás megszakadt. Nyomd meg a lejátszást az újrapróbálkozáshoz.',
			'messages.fileInfoNotAvailable' => 'A fájlinformáció nem érhető el',
			'messages.playbackAuthenticationRequired' => 'Az elem lejátszásához jelentkezz be újra a médiaszerverre.',
			'messages.playbackServerUnavailable' => 'A médiaszerver nem érhető el. Próbáld újra később.',
			'messages.playbackDataInvalid' => 'A szerver érvénytelen lejátszási adatokat küldött.',
			'messages.playbackCancelled' => 'A lejátszás megszakítva.',
			'messages.playbackFailed' => 'Nem sikerült elindítani a lejátszást.',
			'messages.playbackFailedDetail' => ({required Object error}) => 'Nem sikerült elindítani a lejátszást: ${error}',
			'messages.audioOutputFailed' => 'A hangkimenet nem válaszol. Ellenőrizd a TV vagy az erősítő hangcsatlakozását; ha más alkalmazásokban sincs hang, indítsd újra az eszközt.',
			'messages.mediaUnavailable' => 'Ez a tartalom már nem érhető el.',
			'messages.errorLoadingFileInfo' => ({required Object error}) => 'Hiba a fájlinformációk betöltésekor: ${error}',
			'messages.errorLoadingSeries' => 'Hiba a sorozat betöltésekor',
			'messages.musicNotSupported' => 'A zenelejátszás még nem támogatott',
			'messages.noDescriptionAvailable' => 'Nincs elérhető leírás',
			'messages.noProfilesAvailable' => 'Nincsenek elérhető profilok',
			'messages.contactAdminForProfiles' => 'Lépj kapcsolatba a szerver adminisztrátorával profilok hozzáadásához',
			'messages.unableToDetermineLibrarySection' => 'Nem sikerült meghatározni az elem könyvtári részlegét',
			'messages.logsCleared' => 'Naplók törölve',
			'messages.logsCopied' => 'Naplók a vágólapra másolva',
			'messages.noLogsAvailable' => 'Nincsenek elérhető naplók',
			'messages.libraryScanning' => ({required Object title}) => '"${title}" beolvasása...',
			'messages.libraryScanStarted' => ({required Object title}) => 'Könyvtár beolvasása elindítva a következőhöz: "${title}"',
			'messages.libraryScanFailed' => ({required Object error}) => 'Nem sikerült a könyvtár beolvasása: ${error}',
			'messages.metadataRefreshing' => ({required Object title}) => 'Metaadatok frissítése a következőhöz: "${title}"...',
			'messages.metadataRefreshStarted' => ({required Object title}) => 'Metaadatok frissítése elindítva a következőhöz: "${title}"',
			'messages.metadataRefreshFailed' => ({required Object error}) => 'Nem sikerült a metaadatok frissítése: ${error}',
			'messages.logoutConfirm' => 'Biztosan ki szeretnél jelentkezni?',
			'messages.logoutDeviceConfirm' => 'Kijelentkezik a Luroka alkalmazásból ezen az eszközön? Minden profil, beleértve a Kids-profilokat, a szerverfiókokat és a letöltött médiát is eltávolítja erről az eszközről. Később újra bejelentkezhet.',
			'messages.noSeasonsFound' => 'Nem találhatók évadok',
			'messages.seasonsLoadFailed' => 'Nem sikerült az évadok betöltése',
			'messages.noEpisodesFound' => 'Nem találhatók epizódok az első évadban',
			'messages.noEpisodesFoundGeneral' => 'Nem találhatók epizódok',
			'messages.episodesLoadFailed' => 'Nem sikerült az epizódok betöltése',
			'messages.noResultsFound' => 'Nincs találat',
			'messages.sleepTimerSet' => ({required Object label}) => 'Elalvási időzítő beállítva: ${label}',
			'messages.noItemsAvailable' => 'Nincsenek elérhető elemek',
			'messages.failedToCreatePlayQueueNoItems' => 'Nem sikerült létrehozni a lejátszási sort — nincsenek elemek',
			'messages.failedPlayback' => ({required Object action, required Object error}) => 'Nem sikerült a művelet (${action}): ${error}',
			'messages.switchingToCompatiblePlayer' => 'Váltás kompatibilis lejátszóra...',
			'messages.serverLimitTitle' => 'A lejátszás nem sikerült',
			'messages.serverLimitBody' => 'Szerverhiba (HTTP 500). A munkamenetet valószínűleg egy sávszélességi vagy átkódolási korlát utasította el. Kérd meg a tulajdonost a korlát módosítására.',
			'messages.mediaUnreadableTitle' => 'A fájl nem érhető el',
			'messages.mediaUnreadableBody' => 'A szerver megtalálta ezt az elemet, de nem tudta beolvasni a fájlját (HTTP 404). A fájl valószínűleg áthelyezésre vagy törlésre került, vagy a tárhelye offline. Kérje meg a szerver tulajdonosát, hogy ellenőrizze a fájlt, és vizsgálja újra a könyvtárat.',
			'messages.serverBusyTitle' => 'A stream nem érhető el',
			'messages.serverBusyBody' => 'A szerver ismételten megtagadta ennek a fájlnak a streamelését (HTTP 503). Lehet, hogy újraindul, túlterhelt, vagy a fájl tárhelye nem érhető el. Próbáld újra egy kis idő múlva – ha a probléma továbbra is fennáll, kérd meg a szerver tulajdonosát, hogy ellenőrizze a szervert és a fájl tárhelyét.',
			'messages.playbackNotAllowedTitle' => 'A lejátszás nem engedélyezett',
			'messages.playbackNotAllowedBody' => 'A szerver megtagadta ennek az elemnek a streamelését (HTTP 403). Lehet, hogy a fiókodnak nincs engedélye a lejátszására, vagy a szerver csak a helyi hálózatán engedélyezi a lejátszást.',
			'messages.logsUploaded' => 'Naplók feltöltve',
			'messages.logsUploadFailed' => 'Nem sikerült a naplók feltöltése',
			'messages.logId' => 'Naplóazonosító',
			'messages.burnedSubtitlesUseMenu' => 'A feliratok bele vannak égetve ebbe a streambe. A feliratmenüben módosíthatod őket.',
			'messages.noVideoUrl' => 'Nem érhető el videó-URL',
			'messages.playbackNoMediaSources' => 'A szerver nem adott vissza lejátszható médiaforrást',
			'messages.playbackDataNotPrepared' => 'A lejátszás az adatok elkészülte előtt indult el',
			'messages.streamSelectionUnavailable' => 'Ehhez a forráshoz nem érhető el a streamek kiválasztása',
			'messages.streamSelectionFailed' => 'Nem sikerült alkalmazni a kiválasztott streameket',
			'messages.trackSelectionNotRemembered' => 'Ez a sávválasztás csak az aktuális lejátszásra érvényes.',
			'messages.serverUnavailableForProfile' => 'Az aktív profilhoz nem érhető el szerver',
			'sourceLibraries.title' => 'Az Ön szerverei és könyvtárai',
			'sourceLibraries.description' => 'Válassza ki a Luroka által használt könyvtárakat az Otthon, a keresés, az elérhetőség felfedezése és a Stúdiók számára. A kezdősorok sorrendje külön személyre szabott.',
			'sourceLibraries.partial' => 'Néhány szervert nem sikerült ellenőrizni. Az ezekhez a könyvtárakhoz mentett választásai megmaradnak. Frissítse az újbóli próbálkozáshoz.',
			'sourceLibraries.loadFailed' => 'Nem sikerült betölteni a könyvtárakat. Ellenőrizze a kapcsolatot, és próbálja újra.',
			'sourceLibraries.notSelected' => 'Nem érhető el a kiválasztott könyvtárakban.',
			'sourceLibraries.checkOthers' => 'Ellenőrizze a többi csatlakoztatott forrást',
			'sourceLibraries.otherSources' => 'Elérhető más csatlakoztatott forrásokon',
			'sourceLibraries.playOnce' => 'Játssz egyszer',
			'sourceLibraries.includeLibrary' => 'Tartalmazza ezt a könyvtárat',
			'sourceLibraries.noOthers' => 'Más csatlakoztatott forrásokon nem található másolat.',
			'sourceLibraries.chooseOne' => 'A folytatáshoz válasszon legalább egy könyvtárat.',
			'subtitlingStyling.text' => 'Szöveg',
			'subtitlingStyling.border' => 'Keret',
			'subtitlingStyling.background' => 'Háttér',
			'subtitlingStyling.fontSize' => 'Betűméret',
			'subtitlingStyling.textColor' => 'Szövegszín',
			'subtitlingStyling.borderSize' => 'Keretméret',
			'subtitlingStyling.borderColor' => 'Keretszín',
			'subtitlingStyling.backgroundOpacity' => 'Háttér átlátszatlansága',
			'subtitlingStyling.backgroundColor' => 'Háttérszín',
			'subtitlingStyling.position' => 'Pozíció',
			'subtitlingStyling.assOverride' => 'ASS felülbírálása',
			'subtitlingStyling.overrideScale' => 'Skálázás',
			'subtitlingStyling.overrideForce' => 'Kényszerítés',
			'subtitlingStyling.overrideStrip' => 'Stílus eltávolítása',
			'subtitlingStyling.positionTop' => 'Fent',
			'subtitlingStyling.positionBottom' => 'Lent',
			'subtitlingStyling.useMargins' => 'Margók használata',
			'subtitlingStyling.useMarginsDescription' => 'A szöveges feliratok a videón kívüli területen is megjelenhetnek. A stilizált feliratok megtarthatják eredeti pozíciójukat.',
			'subtitlingStyling.anchorToScreen' => 'Képernyőhöz rögzítés',
			'subtitlingStyling.anchorToScreenDescription' => 'A szöveges feliratok megjelenítése a szélesvásznú videó alatti fekete sávban',
			'subtitlingStyling.bold' => 'Félkövér',
			'subtitlingStyling.italic' => 'Dőlt',
			'subtitlingStyling.renderResolution' => 'Renderelési felbontás',
			'subtitlingStyling.renderResolutionScreen' => 'Képernyőfelbontás',
			'subtitlingStyling.renderResolutionVideo' => 'Videófelbontás',
			'mpvConfig.title' => 'mpv.conf',
			'mpvConfig.description' => 'Haladó videólejátszó beállítások',
			'mpvConfig.presets' => 'Előbeállítások',
			'mpvConfig.noPresets' => 'Nincsenek mentett előbeállítások',
			'mpvConfig.saveAsPreset' => 'Mentés előbeállításként...',
			'mpvConfig.presetName' => 'Előbeállítás neve',
			'mpvConfig.presetNameHint' => 'Add meg az előbeállítás nevét',
			'mpvConfig.loadPreset' => 'Betöltés',
			'mpvConfig.deletePreset' => 'Törlés',
			'mpvConfig.presetSaved' => 'Előbeállítás mentve',
			'mpvConfig.presetLoaded' => 'Előbeállítás betöltve',
			'mpvConfig.presetDeleted' => 'Előbeállítás törölve',
			'mpvConfig.confirmDeletePreset' => 'Biztosan törölni szeretnéd ezt az előbeállítást?',
			'mpvConfig.configPlaceholder' => 'gpu-api=vulkan\nhwdec=auto\n# megjegyzés',
			'mpvConfig.lineHint' => 'option=value',
			'mpvConfig.addLine' => 'Sor hozzáadása',
			'mpvConfig.removeLine' => 'Sor eltávolítása',
			'mpvConfig.embeddedVoHint' => 'A vo, gpu-context és gpu-api beállítások Linuxon figyelmen kívül maradnak: a beágyazott videó mindig a vo=libmpv-n keresztül jelenik meg a videósíkon, a gpu-next (amelyre az ArtCNN-hez hasonló compute shadereknek szükségük van) pedig nem futhat beágyazva.',
			'dialog.confirmAction' => 'Művelet megerősítése',
			'profiles.manageProfiles' => 'Profilok kezelése',
			'profiles.quickAccess' => 'Gyors hozzáférés',
			'profiles.signOutDevice' => 'Jelentkezzen ki erről az eszközről',
			'profiles.addLurokaProfile' => 'Luroka profil hozzáadása',
			'profiles.switchingProfile' => 'Profilváltás…',
			'profiles.deleteThisProfileTitle' => 'Törlöd ezt a profilt?',
			'profiles.deleteThisProfileMessage' => ({required Object displayName}) => '${displayName} eltávolítása. A kapcsolatokat nem érinti.',
			'profiles.active' => 'Aktív',
			'profiles.manage' => 'Kezelés',
			'profiles.delete' => 'Törlés',
			'profiles.signOut' => 'Kijelentkezés',
			'profiles.signOutPlexTitle' => 'Kijelentkezel a Plexből?',
			'profiles.signOutPlexMessage' => ({required Object displayName}) => 'Eltávolítod a(z) ${displayName} profilt és az összes Plex Home-felhasználót? Bármikor visszajelentkezhetsz.',
			'profiles.signOutPlexDeleteDownloads' => 'Törölje a letöltéseket is',
			'profiles.signOutPlexDeleteDownloadsDescription' => 'Ellenkező esetben ezen az eszközön maradnak, és visszatérnek, amikor újra bejelentkezik ebbe a fiókba.',
			'profiles.signedOutPlex' => 'Kijelentkezve a Plexből.',
			'profiles.signOutFailed' => 'A kijelentkezés nem sikerült.',
			'profiles.sectionTitle' => 'Profilok',
			'profiles.summarySingle' => 'Adj hozzá profilokat a kezelt felhasználók és a helyi profilok együttes használatához',
			'profiles.summaryMultipleWithActive' => ({required Object count, required Object activeName}) => '${count} profil · aktív: ${activeName}',
			'profiles.summaryMultiple' => ({required Object count}) => '${count} profil',
			'profiles.removeConnectionTitle' => 'Eltávolítod a kapcsolatot?',
			'profiles.removeConnectionMessage' => ({required Object displayName, required Object connectionLabel}) => 'Eltávolítod ${displayName} hozzáférését a(z) ${connectionLabel} kapcsolathoz. Más profilok megtartják.',
			'profiles.deleteProfileTitle' => 'Törlöd a profilt?',
			'profiles.deleteProfileMessage' => ({required Object displayName}) => 'Eltávolítod a(z) ${displayName} profilt és annak kapcsolatait. A szerverek elérhetőek maradnak.',
			'profiles.profileNameLabel' => 'Profil neve',
			'profiles.pinProtectionLabel' => 'PIN-kódos védelem',
			'profiles.pinManagedByPlex' => 'A PIN-kódot a Plex kezeli. Szerkesztés a plex.tv oldalon.',
			'profiles.noPinSetEditOnPlex' => 'Nincs PIN beállítva. PIN kéréséhez szerkeszd az otthoni felhasználót a plex.tv-n.',
			'profiles.setPin' => 'PIN beállítása',
			'profiles.setPinTitle' => 'PIN beállítása',
			'profiles.confirmPinTitle' => 'PIN megerősítése',
			'profiles.pinSet' => 'PIN beállítva',
			'profiles.changePin' => 'Módosítás',
			'profiles.removePin' => 'Eltávolítás',
			'profiles.connectionsLabel' => 'Kapcsolatok',
			'profiles.add' => 'Hozzáadás',
			'profiles.deleteProfileButton' => 'Profil törlése',
			'profiles.noConnectionsHint' => 'Nincsenek kapcsolatok — adj hozzá egyet a profil használatához.',
			'profiles.noConnections' => 'Nincsenek kapcsolatok',
			'profiles.plexHomeAccount' => 'Plex Home-fiók',
			'profiles.plexAccountChip' => ({required Object account}) => 'Plex-fiók: ${account}',
			'profiles.plexAccountUserChip' => ({required Object account, required Object user}) => '${account} fiókján keresztül: ${user}',
			'profiles.connectionDefault' => 'Alapértelmezett',
			'profiles.connectionAs' => ({required Object displayName}) => 'mint ${displayName}',
			'profiles.makeDefault' => 'Beállítás alapértelmezettként',
			'profiles.removeConnection' => 'Eltávolítás',
			'profiles.profileRenamed' => 'Profil átnevezve.',
			'profiles.borrowAddTo' => ({required Object displayName}) => 'Hozzáadás a következőhöz: ${displayName}',
			'profiles.borrowExplain' => 'Használd egy másik profil kapcsolatát. A PIN-kóddal védett profilokhoz PIN-kód szükséges.',
			'profiles.borrowEmpty' => 'Még nincs használható kapcsolat.',
			'profiles.borrowEmptySubtitle' => 'Először csatlakoztasd a Plexet, a Jellyfint vagy az Embyt egy másik profilhoz.',
			'profiles.borrowLoadFailed' => 'Nem sikerült betölteni az elérhető kapcsolatokat. Próbáld újra.',
			'profiles.borrowFromProfile' => ({required Object displayName}) => 'Innen: ${displayName}',
			'profiles.borrowConnectionBorrowed' => 'Kapcsolat átvéve.',
			'profiles.borrowFailed' => 'Nem sikerült átvenni a kapcsolatot.',
			'profiles.incorrectPin' => 'Helytelen PIN-kód.',
			'profiles.incorrectPinTryAgain' => 'Helytelen PIN-kód. Próbáld újra.',
			'profiles.sourceProfileMissingParentAccount' => 'A forrásprofilból hiányzik a szülőfiók.',
			'profiles.failedToLoadHomeUsers' => 'Nem sikerült betölteni a Plex Home-felhasználókat. Ellenőrizd a kapcsolatot, majd próbáld újra.',
			'profiles.failedToVerifyPin' => 'Nem sikerült a PIN-kód ellenőrzése.',
			'profiles.newProfile' => 'Új profil',
			'profiles.profileNameHint' => 'pl. Vendégek, Gyerekek, Nappali',
			'profiles.pinProtectionOptional' => 'PIN-védelem (opcionális)',
			'profiles.pinExplain' => '4 jegyű PIN-kód szükséges a profilváltáshoz.',
			'profiles.continueButton' => 'Folytatás',
			'profiles.pinsDontMatch' => 'A PIN-kódok nem egyeznek',
			'profiles.tokenIdentityMismatch' => 'A Plex-profil tokenje nem a várt szerverhez tartozik',
			'connections.sectionTitle' => 'Kapcsolatok',
			'connections.addConnection' => 'Kapcsolat hozzáadása',
			'connections.addConnectionSubtitleNoProfile' => 'Jelentkezz be Plexszel, vagy csatlakoztass egy Jellyfin- vagy Emby-szervert',
			'connections.addConnectionSubtitleScoped' => ({required Object displayName}) => 'Hozzáadás a következőhöz (${displayName}): Plex, Jellyfin, Emby vagy más profilkapcsolat',
			'connections.sessionExpiredOne' => ({required Object name}) => 'A(z) ${name} munkamenete lejárt',
			'connections.sessionExpiredMany' => ({required Object count}) => '${count} szerver munkamenete lejárt',
			'connections.accessDeniedOne' => ({required Object name}) => 'A(z) ${name} megtagadta a hozzáférést ettől a fióktól',
			'connections.accessDeniedMany' => ({required Object count}) => '${count} szerver megtagadta a hozzáférést ettől a fióktól',
			'connections.signInAgain' => 'Bejelentkezés újra',
			'connections.editMediaBrowserTitle' => ({required Object product}) => 'A(z) ${product} kapcsolat szerkesztése',
			'connections.editMediaBrowserIntro' => ({required Object serverName}) => 'Adjon hozzá vagy távolítson el URL-eket a(z) ${serverName} esetén. A Luroka a legkisebb késleltetésű, elérhető URL-t fogja használni.',
			'serversAccounts.title' => 'Szerverek és fiókok',
			'serversAccounts.subtitle' => 'Bejelentkezési állapot a Plex, Jellyfin és Emby szerverekhez',
			'serversAccounts.online' => 'Online',
			'serversAccounts.offline' => 'Offline',
			'serversAccounts.unknown' => 'Nincs itt bejelentkezve',
			'serversAccounts.usedByNone' => 'Egyik profil sem használja',
			'serversAccounts.usedByOne' => ({required Object name}) => '${name} használta',
			'serversAccounts.usedByMany' => ({required Object name, required Object count}) => 'A ${name} és a ${count} tovább használja',
			'serversAccounts.serversOnline' => ({required Object online, required Object total}) => '${online}/${total} online szerverek',
			'serversAccounts.noServers' => 'Még semmi sem kapcsolódik. Adja hozzá a Plex fiókját vagy egy Jellyfin vagy Emby szervert.',
			'serversAccounts.editUrls' => 'Szerver URL-címeinek szerkesztése',
			'accountPreferences.sectionTitle' => 'Fiókbeállítások',
			'accountPreferences.hubSubtitleSingle' => ({required Object account}) => 'Hang-, felirat- és könyvtárbeállítások mentve a(z) ${account} fiókra',
			'accountPreferences.hubSubtitleMultiple' => ({required Object count}) => 'Hang-, felirat- és könyvtárbeállítások mentve ${count} fiókra',
			'accountPreferences.pickAccount' => 'Minden fiók a saját beállításait tárolja. Válaszd ki a szerkesztendőt.',
			'accountPreferences.storedOnAccount' => 'Ezeket a beállításokat a rendszer a szerverfiókban menti, és megosztja minden, a fiókot használó Luroka profillal és alkalmazással, beleértve a többi eszközt is.',
			'accountPreferences.noAccounts' => 'Nincs beállítható fiók',
			'accountPreferences.noAccountsHint' => 'Jelentkezz be a Plexbe, vagy csatlakoztass egy Jellyfin- vagy Emby-szervert, és az azon a fiókon tárolt beállítások itt jelennek meg.',
			'accountPreferences.unavailable' => 'Ez a fiók nem érhető el',
			'accountPreferences.loadFailed' => 'Nem sikerült betölteni ezeket a beállításokat',
			'accountPreferences.noPreference' => 'Nincs preferencia',
			'accountPreferences.notSet' => 'Nincs beállítva',
			'accountPreferences.groups.audioAndSubtitles' => 'Hang és feliratok',
			'accountPreferences.groups.libraryDisplay' => 'Könyvtár',
			'accountPreferences.groups.personalMedia' => 'Személyes média',
			'accountPreferences.preferredAudioLanguage' => 'Elsődleges hangnyelv',
			'accountPreferences.autoSelectAudio' => 'Hangsáv kiválasztása nyelv alapján',
			'accountPreferences.autoSelectAudioDescription' => 'Ki kapcsolásnál a fájl által alapértelmezettként megjelölt hangsáv marad.',
			'accountPreferences.preferredSubtitleLanguage' => 'Elsődleges feliratnyelv',
			'accountPreferences.subtitleMode' => 'Feliratok bekapcsolása',
			'accountPreferences.subtitleModes.none' => 'Kézzel kiválasztva',
			'accountPreferences.subtitleModes.noneDescription' => 'Soha ne kapcsolja be magától a feliratokat.',
			'accountPreferences.subtitleModes.defaultMode' => 'A sáv jelzőinek követése',
			'accountPreferences.subtitleModes.defaultModeDescription' => 'Az egyes feliratsávokon tárolt alapértelmezett és kényszerített jelzők használata.',
			'accountPreferences.subtitleModes.always' => 'Mindig engedélyezve',
			'accountPreferences.subtitleModes.alwaysDescription' => 'Feliratsáv bekapcsolása az elsődleges nyelven, ha van ilyen.',
			'accountPreferences.subtitleModes.onlyForced' => 'Csak kényszerített feliratok',
			'accountPreferences.subtitleModes.onlyForcedDescription' => 'Csak a kényszerítettként megjelölt sávok betöltése.',
			'accountPreferences.subtitleModes.smart' => 'Idegen nyelvű hang esetén megjelenítve',
			'accountPreferences.subtitleModes.smartDescription' => 'Feliratok bekapcsolása csak akkor, ha a hang más nyelven szól.',
			'accountPreferences.subtitleAccessibility' => 'SDH-feliratok',
			'accountPreferences.subtitleAccessibilityOptions.preferNonSdh' => 'Nem SDH-feliratok előnyben részesítése',
			'accountPreferences.subtitleAccessibilityOptions.preferSdh' => 'SDH-feliratok előnyben részesítése',
			'accountPreferences.subtitleAccessibilityOptions.onlySdh' => 'Csak SDH-feliratok',
			'accountPreferences.subtitleAccessibilityOptions.onlyNonSdh' => 'Csak nem SDH-feliratok',
			'accountPreferences.forcedSubtitles' => 'Kényszerített feliratok',
			'accountPreferences.forcedSubtitleOptions.preferNonForced' => 'Nem kényszerített feliratok előnyben részesítése',
			'accountPreferences.forcedSubtitleOptions.preferForced' => 'Kényszerített feliratok előnyben részesítése',
			'accountPreferences.forcedSubtitleOptions.onlyForced' => 'Csak kényszerített feliratok',
			'accountPreferences.forcedSubtitleOptions.onlyNonForced' => 'Csak nem kényszerített feliratok',
			'accountPreferences.displayMissingEpisodes' => 'Hiányzó epizódok megjelenítése',
			'accountPreferences.displayMissingEpisodesDescription' => 'Azoknak az epizódoknak a listázása, amelyeket a szerver ismer, de nincs hozzájuk fájl.',
			'accountPreferences.hidePlayedInLatest' => 'Megnézett elemek elrejtése a Legújabbak között',
			'accountPreferences.hidePlayedInLatestDescription' => 'A már megnézett elemek kimaradnak a szerver Legújabbak soraiból.',
			'accountPreferences.displayCollectionsView' => 'Gyűjtemények nézet megjelenítése',
			'accountPreferences.displayCollectionsViewDescription' => 'A szerver Gyűjtemények nézetének megjelenítése a könyvtárak mellett.',
			'accountPreferences.rewatchingInNextUp' => 'Újranézett sorozatok megtartása a Következikben',
			'accountPreferences.rewatchingInNextUpDescription' => 'Ha befejezel egy sorozatot, és újra elkezded, a Következik az újranézést követi, ahelyett hogy eldobná a sorozatot.',
			'accountPreferences.watchedIndicator' => 'Megtekintett jelzések',
			'accountPreferences.watchedIndicatorOptions.none' => 'Soha',
			'accountPreferences.watchedIndicatorOptions.moviesAndShows' => 'Filmek és TV-sorozatok',
			'accountPreferences.watchedIndicatorOptions.movies' => 'Csak filmek',
			'accountPreferences.watchedIndicatorOptions.shows' => 'Csak TV-sorozatok',
			'accountPreferences.mediaReviewsVisibility' => 'Értékelések és kritikák',
			'accountPreferences.mediaReviewsOptions.usersAndCritics' => 'Felhasználók és kritikusok',
			'accountPreferences.mediaReviewsOptions.usersOnly' => 'Csak felhasználók',
			'accountPreferences.mediaReviewsOptions.criticsOnly' => 'Csak kritikusok',
			'accountPreferences.mediaReviewsOptions.nobody' => 'Rejtett',
			'discover.title' => 'Felfedezés',
			'discover.noContentAvailable' => 'Nincs elérhető tartalom',
			'discover.addMediaToLibraries' => 'Adj hozzá médiát a könyvtáraidhoz',
			'discover.continueWatching' => 'Folytatás',
			'discover.continueWatchingIn' => ({required Object library}) => 'Folytatás itt: ${library}',
			'discover.nextUp' => 'Következik',
			'discover.nextUpIn' => ({required Object library}) => 'Következik itt: ${library}',
			'discover.recentlyAdded' => 'Legutóbb hozzáadva',
			'discover.recentlyAddedIn' => ({required Object library}) => 'Legutóbb hozzáadva itt: ${library}',
			'discover.latestAlbumsIn' => ({required Object library}) => 'Legújabb albumok itt: ${library}',
			'discover.recentlyPlayedIn' => ({required Object library}) => 'Legutóbb lejátszva itt: ${library}',
			'discover.mostPlayedIn' => ({required Object library}) => 'Legtöbbször lejátszva itt: ${library}',
			'discover.playEpisode' => ({required Object season, required Object episode}) => '${season}. évad, ${episode}. epizód',
			'discover.overview' => 'Áttekintés',
			'discover.cast' => 'Szereplők',
			'discover.extras' => 'Előzetesek és extrák',
			'discover.studio' => 'Stúdió',
			'discover.rating' => 'Értékelés',
			'discover.director' => 'Rendező',
			'discover.directors' => 'Rendezők',
			'discover.movie' => 'Film',
			'discover.tvShow' => 'TV-sorozat',
			'discover.minutesLeft' => ({required Object minutes}) => '${minutes} perc van hátra',
			'discover.moreLikeThis' => 'Hasonló tartalmak',
			'discover.titleCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n, one: '${n} cím', other: '${n} cím', ), 
			'discover.person.born' => 'Született',
			'discover.person.died' => 'Meghalt',
			'discover.person.birthplace' => 'Születési hely',
			'discover.person.dateWithAge' => ({required Object date, required Object age}) => '${date} (életkor: ${age})',
			'discover.person.dateWithAgeAtDeath' => ({required Object date, required Object age}) => '${date} (öreg ${age})',
			'errors.searchFailed' => ({required Object error}) => 'Keresés sikertelen: ${error}',
			'errors.searchUnavailable' => 'A keresés egyetlen médiaszervert sem tudott elérni.',
			'errors.connectionTimeout' => ({required Object context}) => 'Hálózati időtúllépés a következő betöltésekor: ${context}',
			'errors.connectionFailed' => 'Nem sikerült csatlakozni a médiaszerverhez',
			'errors.unableToLoad' => ({required Object context}) => 'Nem sikerült betölteni a következőt: ${context}. Próbáld újra.',
			'errors.noClientAvailable' => 'Nincs elérhető kliens',
			'errors.pleaseEnterToken' => 'Adj meg egy tokent',
			'errors.invalidToken' => 'Érvénytelen token',
			'errors.failedToVerifyToken' => ({required Object error}) => 'Nem sikerült a token ellenőrzése: ${error}',
			'errors.failedToSwitchProfile' => ({required Object displayName}) => 'Nem sikerült átváltani a következő profilra: ${displayName}',
			'errors.failedToDeleteProfile' => ({required Object displayName}) => 'Nem sikerült törölni a következőt: ${displayName}',
			'errors.failedToRate' => 'Nem sikerült frissíteni az értékelést',
			'errors.reasonTimedOut' => 'időtúllépés történt a kapcsolatban',
			'errors.reasonUnreachable' => 'a médiaszerver nem érhető el',
			'errors.reasonRefused' => 'a médiaszerver elutasította a kérést',
			'errors.reasonNotFound' => 'az elem már nem található a médiaszerveren',
			'errors.reasonServerError' => 'a médiaszerver hibát jelzett',
			'errors.reasonCancelled' => 'a kérés meg lett szakítva',
			'errors.reasonUnexpected' => 'váratlan hiba történt',
			'libraries.title' => 'Könyvtárak',
			'libraries.fallbackTitle' => 'Könyvtár',
			'libraries.scanLibraryFiles' => 'Könyvtárfájlok beolvasása',
			'libraries.scanLibrary' => 'Könyvtár beolvasása',
			'libraries.analyze' => 'Elemzés',
			'libraries.analyzeLibrary' => 'Könyvtár elemzése',
			'libraries.refreshMetadata' => 'Metaadatok frissítése',
			'libraries.emptyTrash' => 'Lomtár ürítése',
			'libraries.emptyingTrash' => ({required Object title}) => 'Lomtár ürítése a következőhöz: "${title}"...',
			'libraries.trashEmptied' => ({required Object title}) => 'Lomtár kiürítve a következőhöz: "${title}"',
			'libraries.failedToEmptyTrash' => ({required Object error}) => 'Nem sikerült a lomtár ürítése: ${error}',
			'libraries.analyzing' => ({required Object title}) => '"${title}" elemzése...',
			'libraries.analysisStarted' => ({required Object title}) => 'Elemzés elindítva a következőhöz: "${title}"',
			'libraries.failedToAnalyze' => ({required Object error}) => 'Nem sikerült a könyvtár elemzése: ${error}',
			'libraries.noLibrariesFound' => 'Nem találhatók könyvtárak',
			'libraries.allLibrariesHidden' => 'Minden könyvtár el van rejtve',
			'libraries.hiddenLibrariesCount' => ({required Object count}) => 'Rejtett könyvtárak (${count})',
			'libraries.thisLibraryIsEmpty' => 'Ez a könyvtár üres',
			'libraries.noItemsMatchFilters' => 'Nincs az aktív szűrőknek megfelelő elem',
			'libraries.resetFilters' => 'Szűrők visszaállítása',
			'libraries.all' => 'Összes',
			'libraries.clearAll' => 'Összes törlése',
			'libraries.scanLibraryConfirm' => ({required Object title}) => 'Biztosan be szeretnéd olvasni a következőt: "${title}"?',
			'libraries.analyzeLibraryConfirm' => ({required Object title}) => 'Biztosan elemezni szeretnéd a következőt: "${title}"?',
			'libraries.refreshMetadataConfirm' => ({required Object title}) => 'Biztosan frissíteni szeretnéd a metaadatokat a következőhöz: "${title}"?',
			'libraries.emptyTrashConfirm' => ({required Object title}) => 'Biztosan ki szeretnéd üríteni a lomtárat a következőnél: "${title}"?',
			'libraries.manageLibraries' => 'Könyvtárak kezelése',
			'libraries.sort' => 'Rendezés',
			'libraries.sortBy' => 'Rendezés ez alapján',
			'libraries.filters' => 'Szűrők',
			'libraries.confirmActionMessage' => 'Biztosan végre szeretnéd hajtani ezt a műveletet?',
			'libraries.showLibrary' => 'Könyvtár megjelenítése',
			'libraries.hideLibrary' => 'Könyvtár elrejtése',
			'libraries.libraryOptions' => 'Könyvtár beállításai',
			'libraries.content' => 'könyvtár tartalma',
			'libraries.selectLibrary' => 'Könyvtár kiválasztása',
			'libraries.filtersWithCount' => ({required Object count}) => 'Szűrők (${count})',
			'libraries.noRecommendations' => 'Nincsenek elérhető ajánlások',
			'libraries.noCollections' => 'Nincsenek gyűjtemények ebben a könyvtárban',
			'libraries.noFoldersFound' => 'Nem találhatók mappák',
			'libraries.folders' => 'mappák',
			'libraries.tabs.recommended' => 'Ajánlott',
			'libraries.tabs.browse' => 'Böngészés',
			'libraries.tabs.collections' => 'Gyűjtemények',
			'libraries.tabs.playlists' => 'Lejátszási listák',
			'libraries.groupings.title' => 'Csoportosítás',
			'libraries.groupings.all' => 'Összes',
			'libraries.groupings.movies' => 'Filmek',
			'libraries.groupings.shows' => 'TV-sorozatok',
			'libraries.groupings.seasons' => 'Évadok',
			'libraries.groupings.episodes' => 'Epizódok',
			'libraries.groupings.artists' => 'Előadók',
			'libraries.groupings.albums' => 'Albumok',
			'libraries.groupings.tracks' => 'Zeneszámok',
			'libraries.groupings.folders' => 'Mappák',
			'libraries.filterCategories.genre' => 'Műfaj',
			'libraries.filterCategories.year' => 'Év',
			'libraries.filterCategories.contentRating' => 'Korhatár-besorolás',
			'libraries.filterCategories.tag' => 'Címke',
			'libraries.filterCategories.unwatched' => 'Nem látott',
			'libraries.filterCategories.unplayed' => 'Nem lejátszott',
			'libraries.filterCategories.favorites' => 'Kedvencek',
			'libraries.filterCategories.filePath' => 'Fájl elérési útja',
			'libraries.sortLabels.title' => 'Cím',
			'libraries.sortLabels.dateAdded' => 'Hozzáadás dátuma',
			'libraries.sortLabels.releaseDate' => 'Bemutató dátuma',
			'libraries.sortLabels.rating' => 'Értékelés',
			'libraries.sortLabels.communityRating' => 'Közösségi értékelés',
			'libraries.sortLabels.criticRating' => 'Kritikusi értékelés',
			'libraries.sortLabels.userRating' => 'Saját értékelés',
			'libraries.sortLabels.datePlayed' => 'Lejátszás dátuma',
			'libraries.sortLabels.playCount' => 'Lejátszások száma',
			'libraries.sortLabels.productionYear' => 'Gyártási év',
			'libraries.sortLabels.runtime' => 'Játékidő',
			'libraries.sortLabels.officialRating' => 'Hivatalos besorolás',
			'libraries.sortLabels.premiereDate' => 'Premier dátuma',
			'libraries.sortLabels.startDate' => 'Kezdés dátuma',
			'libraries.sortLabels.airTime' => 'Adásidő',
			'libraries.sortLabels.studio' => 'Stúdió',
			'libraries.sortLabels.random' => 'Véletlenszerű',
			'libraries.sortLabels.dateShared' => 'Megosztás dátuma',
			'libraries.sortLabels.latestEpisodeAirDate' => 'A legutóbbi epizód sugárzási dátuma',
			'libraries.sortLabels.lastEpisodeDateAdded' => 'Utolsó epizód hozzáadásának dátuma',
			_ => null,
		} ?? switch (path) {
			'libraries.sortLabels.dateDownloaded' => 'Letöltés dátuma',
			'libraries.sortLabels.size' => 'Méret',
			'libraries.sortLabels.library' => 'Könyvtár',
			'libraries.advancedFilters.include' => 'Tartalmazza',
			'libraries.advancedFilters.exclude' => 'Kizárás',
			'libraries.advancedFilters.any' => 'Bármelyik',
			'libraries.advancedFilters.yes' => 'Igen',
			'libraries.advancedFilters.no' => 'Nem',
			'libraries.advancedFilters.not' => ({required Object value}) => 'Nem ${value}',
			'libraries.advancedFilters.valueCount' => ({required Object count}) => '${count} kiválasztva',
			'libraries.advancedFilters.valueCountExcluded' => ({required Object count}) => '${count} kizárva',
			'libraries.advancedFilters.searchValues' => 'Értékek keresése',
			'libraries.advancedFilters.noValues' => 'Nincsenek értékek',
			'libraries.advancedFilters.matchContains' => 'Tartalmaz',
			'libraries.advancedFilters.matchNotContains' => 'Nem tartalmaz',
			'libraries.advancedFilters.matchIs' => 'Is',
			'libraries.advancedFilters.matchIsNot' => 'Nem',
			'libraries.advancedFilters.matchBeginsWith' => 'Ezzel kezdődik',
			'libraries.advancedFilters.matchEndsWith' => 'Ezzel végződik',
			'libraries.advancedFilters.textHint' => 'Írja be az egyezéshez',
			'libraries.advancedFilters.from' => '-tól',
			'libraries.advancedFilters.to' => 'To',
			'libraries.advancedFilters.range' => ({required Object from, required Object to}) => '${from} – ${to}',
			'libraries.advancedFilters.atLeast' => ({required Object value}) => '${value} és újabb',
			'libraries.advancedFilters.atMost' => ({required Object value}) => 'Akár ${value}',
			'libraries.advancedFilters.dateLastDays' => ({required Object count}) => 'Utolsó ${count} nap',
			'libraries.advancedFilters.dateLastYear' => 'Az elmúlt év',
			'libraries.advancedFilters.dateOlderThanDays' => ({required Object count}) => 'Régebbi, mint ${count} nap',
			'libraries.advancedFilters.dateOlderThanYear' => 'Egy évnél régebbi',
			'about.title' => 'Névjegy',
			'about.openSourceLicenses' => 'Nyílt forráskódú licencek',
			'about.versionLabel' => ({required Object version}) => 'Verzió: ${version}',
			'about.appDescription' => 'Gyönyörű Flutter-kliens a Plexhez, a Jellyfinhez és az Embyhez',
			'about.customSource' => 'Forráskód',
			'about.basedOnLuroka' => 'A Plezy kódbázisra épült',
			'about.viewLicensesDescription' => 'Külső fejlesztésű programkönyvtárak licenceinek megtekintése',
			'about.appSection' => 'App',
			'about.communitySection' => 'közösség',
			'about.creditsSection' => 'Kredit',
			'about.legalSection' => 'Jogi',
			'about.versionMeta' => ({required Object version, required Object build, required Object platform}) => 'v${version} (${build}) · ${platform}',
			'about.versionMetaNoBuild' => ({required Object version, required Object platform}) => 'v${version} · ${platform}',
			'about.versionUnavailable' => 'A verzió nem elérhető',
			'about.versionDetails' => 'Verzió részletei',
			'about.versionDetailsTitle' => ({required Object version, required Object build}) => 'Luroka ${version} (${build})',
			'about.platformLine' => ({required Object platform}) => 'Platform: ${platform}',
			'about.deviceLine' => ({required Object model}) => 'Készülék: ${model}',
			'about.packageLine' => ({required Object package}) => 'Csomag: ${package}',
			'about.localeLine' => ({required Object locale}) => 'Nyelv: ${locale}',
			'about.copyDetails' => 'Részletek másolása',
			'about.detailsCopied' => 'Az alkalmazás részletei másolva',
			'about.detailsCopyFailed' => 'Nem sikerült átmásolni az alkalmazás részleteit',
			'about.checkForUpdatesDescription' => 'Keressen egy újabb kiadást a GitHubban',
			'about.checkingForUpdates' => 'Frissítések keresése…',
			'about.whatsNew' => 'Újdonságok',
			'about.releaseNotesUnavailable' => 'Nem állnak rendelkezésre kiadási megjegyzések.',
			'about.sourceCodeDescription' => 'Luroka a GitHubon',
			'about.reportIssue' => 'Probléma bejelentése',
			'about.reportIssueDescription' => 'Mondja el, mi történt',
			'about.documentation' => 'Dokumentáció',
			'about.documentationDescription' => 'Beállítás, szolgáltatások és összeállítási megjegyzések',
			'about.upstreamProjectDescription' => 'Az edde746 és a közreműködők nyílt forráskódú projektje',
			'about.upstreamWebsite' => 'Upstream weboldal',
			'about.attribution' => 'Adatok és forrásmegjelölés',
			'about.attributionDescription' => 'Metaadatok, értékelések és védjegyek',
			'about.attributionBody' => 'Ez a termék a TMDB API kódot használja, de a TMDB nem hagyja jóvá vagy tanúsítja. A népszerűségi listákat, a metaadatokat és a IMDb értékeléseket a Cinemeta biztosítja. A pontszámok megtartják a forráscímkéket.',
			'about.trademarkNotices' => 'Plex, Jellyfin, Emby, Trakt, Simkl, MyAnimeList, AniList, AniList, ZXQKEZQ és kapcsolódó védjegyeik tulajdonosok. A Luroka nem áll kapcsolatban velük, és nem támogatják őket.',
			'about.privacyPolicy' => 'Adatvédelmi szabályzat',
			'about.privacyPolicyDescription' => 'Hogyan kezeljük adatait',
			'about.gplLicense' => 'GNU GPL-3.0 licenc',
			'about.gplLicenseDescription' => 'A Luroka ingyenes szoftver',
			'about.linkOpenFailed' => 'Nem sikerült megnyitni ezt a linket',
			'about.opensInBrowser' => 'Megnyílik a böngészőben',
			'about.footer' => 'A Luroka egy ingyenes szoftver GPL-3.0 alatt.',
			'about.copyright' => ({required Object year}) => '© ${year} Luroka közreműködők',
			'serverSelection.noServersFoundForAccount' => ({required Object username, required Object email}) => 'Nem találhatók szerverek ehhez a fiókhoz: ${username} (${email})',
			'serverSelection.failedToLoadServers' => ({required Object error}) => 'Nem sikerült a szerverek betöltése: ${error}',
			'serverSelection.noValidServers' => 'Nem található használható szerver ehhez a fiókhoz',
			'hubDetail.title' => 'Cím',
			'hubDetail.releaseYear' => 'Kiadási év',
			'hubDetail.dateAdded' => 'Hozzáadás dátuma',
			'hubDetail.rating' => 'Értékelés',
			'hubDetail.noItemsFound' => 'Nem találhatók elemek',
			'logs.clearLogs' => 'Naplók törlése',
			'logs.copyLogs' => 'Naplók másolása',
			'logs.uploadLogs' => 'Naplók feltöltése',
			'startup.failedTitle' => 'A Luroka nem tudott elindulni',
			'startup.failedBody' => 'Valami hiba történt az indítás során. Az alábbi részletek mutatják, mi hibázott.',
			'startup.failedBodyRepairable' => 'A Luroka mentett beállításfájlja sérült, és újra kell építeni, mielőtt a Luroka elindulhatna. Az újrapróbálkozás nem segít – válassza a Tárhely javítása lehetőséget.',
			'startup.phaseLabel' => 'Lépés',
			'startup.showDetails' => 'Részletek megjelenítése',
			'startup.hideDetails' => 'Részletek elrejtése',
			'startup.copyDetails' => 'Részletek másolása',
			'startup.detailsCopied' => 'A részletek a vágólapra kerültek',
			'startup.uploadDetails' => 'Részletek feltöltése',
			'startup.repairStorage' => 'Tárhely javítása',
			'startup.repairTitle' => 'Javítsuk a tárolt adatokat?',
			'startup.repairBodyCommon' => 'A Luroka beállításfájlja sérült, és nem olvasható. A javítás minden beállítást visszaállít az alapértelmezettre.',
			'startup.repairBodyOneCredential' => 'Egy mentett bejelentkezés sérült, és nem olvasható. A javítás csak azt távolítja el; a többi beállítása érintetlen marad.',
			'startup.repairBodySignInsKept' => 'A szervereinek és profiljainak bejelentkezve kell maradniuk.',
			'startup.repairBodySignInsLost' => 'A mentett bejelentkezéseket védő kulcs nem nyerhető vissza ebből a fájlból, ezért minden szerverre és profilba újra be kell jelentkeznie. A médiaszerveren semmi nem érintett.',
			'startup.repairBodySessionsUncertain' => 'A nyomkövetők (MAL, AniList, Simkl, Trakt) és a Seerr külön vannak tárolva, és megmaradhatnak vagy nem. A Luroka pontosan megmondja, mit őrzött meg.',
			'startup.repairConfirm' => 'Javítás',
			'startup.repairSucceeded' => 'A tárhely javítva',
			'startup.repairNeedsRestart' => 'A tárhely javítva – újraindítás szükséges',
			'startup.restartRequiredBody' => 'Az adatait kijavítottuk, de a Luroka-nek frissen kell elindulnia, mielőtt használhatná. Zárja be a Luroka-t, és nyissa meg újra.',
			'startup.quitLuroka' => 'Kilépés a Luroka-ből',
			'startup.repairFailed' => 'A javítás nem sikerült',
			'startup.repairKeptSignIns' => 'A szerverei és profiljai továbbra is be vannak jelentkezve.',
			'startup.repairLostSignIns' => 'A mentett bejelentkezéseket védő kulcs nem volt visszanyerhető. Minden szerverre és profilba újra be kell jelentkeznie.',
			'startup.repairLostSessions' => 'Legalább egy nyomkövető- vagy Seerr-kapcsolat elveszett, és újra kell csatlakoztatni.',
			'startup.backupTitle' => 'A sérült fájlról másolat készült',
			'startup.backupWarning' => 'Bejelentkezési adatait tartalmazza. Ne töltse fel és ne ossza meg.',
			'startup.deleteBackup' => 'Másolat törlése',
			'startup.backupDeleted' => 'A másolat törölve.',
			'startup.previousFailureTitle' => 'A Luroka legutóbb nem tudott elindulni',
			'licenses.relatedPackages' => 'Kapcsolódó csomagok',
			'licenses.license' => 'Licenc',
			'licenses.licenseNumber' => ({required Object number}) => '${number}. licenc',
			'licenses.licensesCount' => ({required Object count}) => '${count} licenc',
			'licenses.searchHint' => 'Csomagok keresése',
			'licenses.noResults' => ({required Object query}) => 'Nincs a "${query}"-nak megfelelő csomag',
			'licenses.clearSearch' => 'Keresés törlése',
			'navigation.libraries' => 'Könyvtárak',
			'navigation.downloads' => 'Letöltések',
			'navigation.liveTv' => 'Élő TV',
			'navigation.explore' => 'Böngészés',
			'explore.title' => 'Böngészés',
			'explore.selectSource' => 'Forrás kiválasztása',
			'explore.rows.watchlist' => 'Néznivalók listája',
			'explore.rows.recommendedMovies' => 'Ajánlott filmek',
			'explore.rows.recommendedShows' => 'Ajánlott sorozatok',
			'explore.rows.trendingMovies' => 'Felkapott filmek',
			'explore.rows.trendingShows' => 'Felkapott sorozatok',
			'explore.rows.popularMovies' => 'Népszerű filmek',
			'explore.rows.popularShows' => 'Népszerű sorozatok',
			'explore.rows.trendingAnime' => 'Felkapott animék',
			'explore.rows.suggestedAnime' => 'Ajánlott animék',
			'explore.rows.airingAnime' => 'Jelenleg futó top animék',
			'explore.rows.popularAnime' => 'Legnépszerűbb animék',
			'explore.rows.trending' => 'Felkapott',
			'explore.rows.upcomingMovies' => 'Közelgő filmek',
			'explore.rows.upcomingShows' => 'Közelgő sorozatok',
			'explore.status.airing' => 'Adásban',
			'explore.status.ended' => 'Befejeződött',
			'explore.status.canceled' => 'Törölve',
			'explore.status.upcoming' => 'Közelgő',
			'explore.episodeCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n, one: '${n} epizód', other: '${n} epizód', ), 
			'explore.cast' => 'Szereplők',
			'explore.characters' => 'Karakterek',
			'explore.addToWatchlist' => 'Hozzáadás a Néznivalókhoz',
			'explore.removeFromWatchlist' => 'Eltávolítás a Néznivalókból',
			'explore.addedToWatchlist' => 'Hozzáadva a figyelőlistához',
			'explore.removedFromWatchlist' => 'Eltávolítva a figyelőlistáról',
			'explore.watchlistUpdateFailed' => 'Nem sikerült a Néznivalók frissítése',
			'explore.watchlistNoMatch' => 'Nem sikerült ezt az elemet figyelőlistához társítani',
			'explore.notInLibrary' => 'Nincs a könyvtáradban',
			'explore.inTheseLibraries' => 'Ezekben a könyvtárakban',
			'explore.checkingLibrary' => 'Könyvtár ellenőrzése...',
			'explore.libraryCheckFailed' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n, one: 'Nem sikerült ${n} szervert ellenőrizni', other: 'Nem sikerült ${n} szervert ellenőrizni', ), 
			'explore.emptyTitle' => 'Még nincs itt semmi',
			'explore.emptyMessage' => ({required Object source}) => 'A(z) ${source} forrásból származó sorok itt fognak megjelenni, amint van tartalmuk.',
			'explore.searchHint' => ({required Object source}) => 'Keresés itt: ${source}',
			'explore.searchEmpty' => ({required Object query}) => 'Nincs találat a következőre: "${query}"',
			'explore.searchPrompt' => ({required Object source}) => 'Filmek és sorozatok keresése a következőn: ${source}.',
			'explore.searchFailed' => 'A keresés nem sikerült. Ellenőrizd a kapcsolatot és próbáld újra.',
			'explore.badge.rankPopular' => ({required Object n}) => '#${n} népszerű',
			'explore.badge.rankAiring' => ({required Object n}) => '#${n} adásban',
			'explore.badge.rankRated' => ({required Object n}) => '#${n} értékelt',
			'explore.badge.rankTrending' => ({required Object n}) => '#${n} felkapott',
			'explore.badge.rankSeasonal' => ({required Object n, required Object season}) => '#${n} a(z) ${season} évadban',
			'explore.badge.watchingNow' => ({required Object n}) => '${n} nézi',
			'explore.badge.available' => 'Elérhető',
			'explore.badge.partiallyAvailable' => 'Részben elérhető',
			'explore.badge.availableIn4k' => '4K elérhető',
			'explore.badge.requested' => 'Kérve',
			'explore.badge.pendingApproval' => 'Jóváhagyásra vár',
			'explore.badge.processing' => 'Feldolgozás alatt',
			'explore.badge.declined' => 'Elutasítva',
			'explore.badge.requestFailed' => 'A kérés nem sikerült',
			'explore.badge.requested4k' => '4K kérve',
			'explore.badge.seasonsAvailable' => ({required Object available, required Object total}) => '${available}/${total} évad',
			'explore.badge.nextEpisodeIn' => ({required Object episode, required Object duration}) => '${episode}. ep. ${duration} múlva',
			'explore.badge.nextAiringIn' => ({required Object duration}) => 'Következő ${duration} múlva',
			'explore.badge.episodesShort' => ({required Object n}) => '${n} ep.',
			'explore.badge.minutesPerEpisode' => ({required Object n}) => '${n} perc/ep.',
			'explore.badge.adult' => '18+',
			'explore.stats.listed' => ({required Object n}) => '${n} listázva',
			'explore.stats.viewersDay' => ({required Object n}) => '${n} nézte ma',
			'explore.stats.viewersWeek' => ({required Object n}) => '${n} nézte ezen a héten',
			'explore.stats.viewersMonth' => ({required Object n}) => '${n} nézte ebben a hónapban',
			'explore.stats.viewersYear' => ({required Object n}) => '${n} nézte ebben az évben',
			'explore.stats.viewersAllTime' => ({required Object n}) => '${n} néző',
			'explore.stats.planning' => ({required Object n}) => '${n} tervezi megnézni',
			'explore.stats.favorited' => ({required Object n}) => '${n} kedvenc',
			'explore.stats.dropRate' => ({required Object percent}) => '${percent} felhagyott vele',
			'explore.stats.comments' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n, one: '${n} hozzászólás', other: '${n} hozzászólás', ), 
			'explore.stats.votes' => ({required Object n}) => '${n} szavazat',
			'explore.stats.watching' => ({required Object n}) => '${n} nézi',
			'explore.stats.completed' => ({required Object n}) => '${n} befejezte',
			'explore.stats.onHold' => ({required Object n}) => '${n} szünetelteti',
			'explore.stats.dropped' => ({required Object n}) => '${n} felhagyott vele',
			'explore.season.winter' => 'Tél',
			'explore.season.spring' => 'Tavasz',
			'explore.season.summer' => 'Nyár',
			'explore.season.fall' => 'Ősz',
			'explore.season.withYear' => ({required Object season, required Object year}) => '${season} ${year}',
			'explore.format.tv' => 'TV',
			'explore.format.tvShort' => 'TV rövid',
			'explore.format.movie' => 'Film',
			'explore.format.special' => 'Különkiadás',
			'explore.format.ova' => 'OVA',
			'explore.format.ona' => 'ONA',
			'explore.format.music' => 'Zene',
			'explore.format.other' => 'Egyéb',
			'explore.sourceMaterial.original' => 'Eredeti',
			'explore.sourceMaterial.manga' => 'Manga',
			'explore.sourceMaterial.lightNovel' => 'Light novel',
			'explore.sourceMaterial.novel' => 'Regény',
			'explore.sourceMaterial.visualNovel' => 'Visual novel',
			'explore.sourceMaterial.game' => 'Játék',
			'explore.sourceMaterial.webComic' => 'Webképregény',
			'explore.sourceMaterial.musicRelease' => 'Zene',
			'explore.sourceMaterial.otherMedia' => 'Egyéb',
			'explore.creditRole.actor' => 'színész',
			'explore.creditRole.director' => 'Rendező',
			'explore.creditRole.writer' => 'Író',
			'explore.creditRole.producer' => 'Producer',
			'explore.creditRole.creator' => 'Alkotó',
			'explore.creditRole.composer' => 'Zeneszerző',
			'explore.relation.prequel' => 'Előzmény',
			'explore.relation.sequel' => 'Folytatás',
			'explore.relation.sideStory' => 'Melléktörténet',
			'explore.relation.spinOff' => 'Spin-off',
			'explore.relation.alternativeVersion' => 'Alternatív verzió',
			'explore.relation.summary' => 'Összefoglaló',
			'explore.relation.parentStory' => 'Fő történet',
			'explore.relation.adaptation' => 'Adaptáció',
			'explore.relation.other' => 'Kapcsolódó',
			'explore.broadcast' => ({required Object day, required Object time}) => 'Adásban: ${day}, ${time} órakor',
			'explore.broadcastWithZone' => ({required Object day, required Object time, required Object timezone}) => 'Adásban: ${day}, ${time} ${timezone}',
			'explore.detail.originalTitle' => 'Eredeti cím',
			'explore.detail.alsoKnownAs' => 'Más néven',
			'explore.detail.studios' => 'Stúdiók',
			'explore.detail.country' => 'Ország',
			'explore.detail.language' => 'Nyelv',
			'explore.detail.released' => 'Megjelent',
			'explore.detail.physicalRelease' => 'Lemezes',
			'explore.detail.ended' => 'Befejeződött',
			'explore.detail.addedOn' => ({required Object date}) => 'Hozzáadva: ${date}',
			'explore.detail.yourRating' => 'Az Ön értékelése',
			'explore.detail.budget' => 'Költségvetés',
			'explore.detail.revenue' => 'Bevétel',
			'explore.detail.contentAdvisory' => 'Korhatár',
			'explore.detail.tags' => 'Címkék',
			'explore.detail.revealSpoilerTags' => 'Spoiler címkék megjelenítése',
			'explore.detail.links' => 'Hivatkozások',
			'explore.detail.watchOn' => 'Megnézhető itt',
			'explore.detail.watchTrailer' => 'Előzetes megtekintése',
			'explore.detail.openOn' => ({required Object site}) => 'Megnyitás itt: ${site}',
			'explore.detail.crew' => 'Stáb',
			'explore.detail.ratings' => 'Értékelések',
			'explore.detail.schedule' => 'Műsorrend',
			'explore.detail.recommendedByUsers' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n, one: '${n} felhasználó ajánlja', other: '${n} felhasználó ajánlja', ), 
			'explore.detail.recommendedBy' => ({required Object who}) => 'Ajánlotta: ${who}',
			'explore.detail.favoritedBy' => ({required Object who}) => 'Kedvencek közt: ${who}',
			'explore.detail.unairedEpisodes' => ({required Object n}) => '${n} még nem került adásba',
			'explore.detail.recommendedByPercent' => ({required Object percent}) => 'A nézők ${percent}-a ajánlja',
			'explore.detail.relatedTitles' => 'Kapcsolódó címek',
			'explore.detail.background' => 'Háttér',
			'explore.totalResults' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n, one: '${n} találat', other: '${n} találat', ), 
			'liveTv.title' => 'Élő TV',
			'liveTv.guide' => 'Műsorújság',
			'liveTv.noChannels' => 'Nincsenek elérhető csatornák',
			'liveTv.noDvr' => 'Egyik szerveren sincs beállítva DVR',
			'liveTv.serverUnavailable' => 'Az Élő TV szerver nem érhető el.',
			'liveTv.serverNotConnected' => 'Az Élő TV szerver nincs csatlakoztatva.',
			'liveTv.noPrograms' => 'Nincsenek elérhető műsoradatok',
			'liveTv.liveStreamFailed' => 'Nem sikerült elindítani az élő adást',
			'liveTv.unknownProgram' => 'Ismeretlen műsor',
			'liveTv.unknownHub' => 'Ismeretlen',
			'liveTv.unknownError' => 'Ismeretlen hiba',
			'liveTv.channelNumber' => ({required Object number}) => '${number}. csatorna',
			'liveTv.unknownChannel' => 'Ismeretlen csatorna',
			'liveTv.live' => 'ÉLŐ',
			'liveTv.reloadGuide' => 'Műsorújság újratöltése',
			'liveTv.searchGuide' => 'Keresés a műsorújságban',
			'liveTv.searchHint' => 'Csatornák és műsorok keresése',
			'liveTv.searchNoResults' => ({required Object query}) => 'Nincs találat a következőre: "${query}"',
			'liveTv.channelsSection' => 'Csatornák',
			'liveTv.programsSection' => 'Műsorok',
			'liveTv.now' => 'Most',
			'liveTv.today' => 'Ma',
			'liveTv.tomorrow' => 'Holnap',
			'liveTv.midnight' => 'Éjfél',
			'liveTv.overnight' => 'Késő éjszaka',
			'liveTv.morning' => 'Reggel',
			'liveTv.daytime' => 'Napközben',
			'liveTv.evening' => 'Este',
			'liveTv.lateNight' => 'Éjszaka',
			'liveTv.whatsOn' => 'Mi megy most?',
			'liveTv.watchChannel' => 'Csatorna nézése',
			'liveTv.favorites' => 'Kedvencek',
			'liveTv.reorderFavorites' => 'Kedvencek rendezése',
			'liveTv.noFavoriteChannels' => 'Nincsenek kedvenc csatornák',
			'liveTv.noFavoriteChannelsHint' => 'Jelenítsd meg az összes csatornát, majd hosszan nyomj meg egy csatornát, hogy hozzáadd a kedvenceidhez.',
			'liveTv.showAllChannels' => 'Összes csatorna megjelenítése',
			'liveTv.favoritesLoadFailed' => 'Nem sikerült a kedvencek betöltése. Ellenőrizd a kapcsolatot és próbáld újra.',
			'liveTv.favoritesUpdateFailed' => 'Nem sikerült frissíteni a kedvenceket. Ellenőrizd a kapcsolatot, majd próbáld újra.',
			'liveTv.joinSession' => 'Csatlakozás a folyamatban lévő adáshoz',
			'liveTv.watchFromStart' => ({required Object minutes}) => 'Nézés az elejétől (${minutes} perce megy)',
			'liveTv.watchLive' => 'Élő adás nézése',
			'liveTv.goToLive' => 'Ugrás az élő adásra',
			'liveTv.record' => 'Felvétel',
			'liveTv.recordEpisode' => 'Epizód rögzítése',
			'liveTv.recordSeries' => 'Sorozat rögzítése',
			'liveTv.recordOptions' => 'Felvételi beállítások',
			'liveTv.saveTo' => 'Mentés ide',
			'liveTv.recordings' => 'Felvételek',
			'liveTv.scheduledRecordings' => 'Ütemezve',
			'liveTv.recordingRules' => 'Felvételi szabályok',
			'liveTv.noScheduledRecordings' => 'Nincs semmi felvételre ütemezve',
			'liveTv.manageRecording' => 'Felvétel kezelése',
			'liveTv.cancelRecording' => 'Felvétel megszakítása',
			'liveTv.cancelRecordingTitle' => 'Megszakítod ezt a felvételt?',
			'liveTv.cancelRecordingMessage' => ({required Object title}) => 'A(z) ${title} nem kerül rögzítésre.',
			'liveTv.deleteRule' => 'Szabály törlése',
			'liveTv.deleteRuleTitle' => 'Törlöd a felvételi szabályt?',
			'liveTv.deleteRuleMessage' => ({required Object title}) => 'A(z) ${title} jövőbeli epizódjai nem kerülnek rögzítésre.',
			'liveTv.recordingScheduled' => 'Felvétel ütemezve',
			'liveTv.alreadyScheduled' => 'Ez a műsor már ütemezve van',
			'liveTv.dvrAdminRequired' => 'A DVR beállításokhoz adminisztrátori fiók szükséges',
			'liveTv.recordingFailed' => 'Nem sikerült a felvétel ütemezése',
			'liveTv.recordingTargetMissing' => 'Nem sikerült meghatározni a felvételi könyvtárat',
			'liveTv.recordNotAvailable' => 'A felvétel nem érhető el ehhez a műsorhoz',
			'liveTv.recordingCancelled' => 'Felvétel megszakítva',
			'liveTv.recordingRuleDeleted' => 'Felvételi szabály törölve',
			'liveTv.processRecordingRules' => 'Szabályok újraértékelése',
			'liveTv.recordingInProgress' => 'Rögzítés folyamatban',
			'liveTv.recordingsCount' => ({required Object count}) => '${count} ütemezve',
			'liveTv.editRule' => 'Szabály szerkesztése',
			'liveTv.editRuleAction' => 'Szerkesztés',
			'liveTv.recordingRuleUpdated' => 'Felvételi szabály frissítve',
			'liveTv.guideReloadRequested' => 'Műsorújság frissítése kérve',
			'liveTv.guideReloadFailed' => 'Nem sikerült frissíteni a műsorújságot',
			'liveTv.rulesProcessRequested' => 'Szabályok újraértékelése kérve',
			'liveTv.rulesProcessFailed' => 'Nem sikerült újra kiértékelni a felvételi szabályokat',
			'liveTv.recordShow' => 'Műsor rögzítése',
			'liveTv.recordSettings.startEarly' => 'Korábbi kezdés (másodperc)',
			'liveTv.recordSettings.endLate' => 'Későbbi befejezés (másodperc)',
			'liveTv.recordSettings.newOnly' => 'Csak új epizódok',
			'liveTv.recordSettings.anyChannel' => 'Felvétel bármelyik csatornáról',
			'liveTv.recordSettings.anyTime' => 'Felvétel bármikor',
			'liveTv.recordSettings.skipInLibrary' => 'A könyvtárban már meglévő epizódok kihagyása',
			'liveTv.recordSettings.keepUpTo' => 'Megtartandó epizódok',
			'liveTv.recordSettings.keepUpToHint' => 'A 0 minden epizódot megtart',
			'liveTv.startingInMinutes' => ({required Object minutes}) => '${minutes} perc múlva kezdődik',
			'liveTv.dayAtTime' => ({required Object day, required Object time}) => '${day}, ${time}',
			'liveTv.invalidPlaybackData' => ({required Object product}) => 'A(z) ${product} érvénytelen Élő TV-lejátszási adatokat adott vissza',
			'liveTv.failedToStartChannel' => 'Nem sikerült elindítani az élő csatornát',
			'liveTv.failedToBuildStreamUrl' => 'Nem sikerült összeállítani a stream URL-címét',
			'liveTv.playbackStartFailed' => ({required Object reason}) => 'Nem sikerült elindítani a csatornát: ${reason}',
			'liveTv.channelSwitchFailed' => ({required Object reason}) => 'Nem sikerült csatornát váltani: ${reason}',
			'collections.title' => 'Gyűjtemények',
			'collections.collection' => 'Gyűjtemény',
			'collections.empty' => 'A gyűjtemény üres',
			'collections.deleteCollection' => 'Gyűjtemény törlése',
			'collections.deleteConfirm' => ({required Object title}) => 'Törlöd a következőt: "${title}"? Ez nem vonható vissza.',
			'collections.deleted' => 'Gyűjtemény törölve',
			'collections.deleteFailed' => 'Nem sikerült a gyűjtemény törlése',
			'collections.deleteFailedWithError' => ({required Object error}) => 'Nem sikerült a gyűjtemény törlése: ${error}',
			'collections.selectCollection' => 'Gyűjtemény kiválasztása',
			'collections.collectionName' => 'Gyűjtemény neve',
			'collections.enterCollectionName' => 'Add meg a gyűjtemény nevét',
			'collections.addedToCollection' => 'Hozzáadva a gyűjteményhez',
			'collections.errorAddingToCollection' => 'Nem sikerült a gyűjteményhez adni',
			'collections.created' => 'Gyűjtemény létrehozva',
			'collections.removeFromCollection' => 'Eltávolítás a gyűjteményből',
			'collections.removeFromCollectionConfirm' => ({required Object title}) => 'Eltávolítod a következőt: "${title}" ebből a gyűjteményből?',
			'collections.removedFromCollection' => 'Eltávolítva a gyűjteményből',
			'collections.removeFromCollectionFailed' => 'Nem sikerült az eltávolítás a gyűjteményből',
			'collections.removeFromCollectionError' => ({required Object error}) => 'Hiba a gyűjteményből való eltávolításkor: ${error}',
			'collections.searchCollections' => 'Gyűjtemények keresése...',
			'playlists.title' => 'Lejátszási listák',
			'playlists.playlist' => 'Lejátszási lista',
			'playlists.noPlaylists' => 'Nem találhatók lejátszási listák',
			'playlists.create' => 'Lejátszási lista létrehozása',
			'playlists.playlistName' => 'Lejátszási lista neve',
			'playlists.enterPlaylistName' => 'Add meg a lejátszási lista nevét',
			'playlists.delete' => 'Lejátszási lista törlése',
			'playlists.removeItem' => 'Eltávolítás a lejátszási listáról',
			'playlists.smartPlaylist' => 'Okos lejátszási lista',
			'playlists.itemCount' => ({required Object count}) => '${count} elem',
			'playlists.oneItem' => '1 elem',
			'playlists.emptyPlaylist' => 'Ez a lejátszási lista üres',
			'playlists.deleteConfirm' => 'Törlöd a lejátszási listát?',
			'playlists.deleteMessage' => ({required Object name}) => 'Biztosan törölni szeretnéd a következőt: "${name}"?',
			'playlists.created' => 'Lejátszási lista létrehozva',
			'playlists.deleted' => 'Lejátszási lista törölve',
			'playlists.itemAdded' => 'Hozzáadva a lejátszási listához',
			'playlists.itemRemoved' => 'Eltávolítva a lejátszási listáról',
			'playlists.selectPlaylist' => 'Lejátszási lista kiválasztása',
			'playlists.searchPlaylists' => 'Lejátszási listák keresése...',
			'playlists.errorCreating' => 'Nem sikerült a lejátszási lista létrehozása',
			'playlists.errorDeleting' => 'Nem sikerült a lejátszási lista törlése',
			'playlists.errorLoading' => 'Nem sikerült a lejátszási listák betöltése',
			'playlists.errorAdding' => 'Nem sikerült a lejátszási listához adni',
			'playlists.errorReordering' => 'Nem sikerült átrendezni a lejátszási lista elemét',
			'playlists.errorRemoving' => 'Nem sikerült az eltávolítás a lejátszási listáról',
			'music.goToAlbum' => 'Ugrás az albumhoz',
			'music.goToArtist' => 'Ugrás az előadóhoz',
			'music.instantMix' => 'Azonnali keverés',
			'music.playNext' => 'Következő lejátszása',
			'music.addToQueue' => 'Hozzáadás a lejátszási sorhoz',
			'music.discNumber' => ({required Object n}) => '${n}. lemez',
			'music.trackCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n, one: '${n} zeneszám', other: '${n} zeneszám', ), 
			'music.nowPlaying' => 'Most szól',
			'music.playingFrom' => ({required Object title}) => 'Lejátszás innen: ${title}',
			'music.queue' => 'Lejátszási sor',
			'music.clearQueue' => 'Sor törlése',
			'music.lyrics' => 'Dalszöveg',
			'music.noLyrics' => 'Nincs elérhető dalszöveg',
			'music.sleepTimer' => 'Elalvási időzítő',
			'music.sleepTimerEndOfTrack' => 'Zeneszám vége',
			'music.sleepTimerMinutes' => ({required Object n}) => '${n} perc',
			'music.stopPlayback' => 'Lejátszás leállítása',
			'music.previousTrack' => 'Előző szám',
			'music.nextTrack' => 'Következő szám',
			'music.repeat' => 'Ismétlés',
			'music.repeatAll' => 'Összes ismétlése',
			'music.repeatOne' => 'Egy szám ismétlése',
			'music.instantMixNoServer' => 'Nem érhető el szerver az azonnali mixhez',
			'music.instantMixFailed' => 'Nem sikerült betölteni az azonnali mixet',
			'music.instantMixEmpty' => 'Az azonnali mix nem adott vissza zeneszámokat',
			'music.noAudioUrl' => ({required Object track}) => 'Nem érhető el hang-URL ehhez: ${track}',
			'music.discography.singlesAndEps' => 'Kislemezek és EP-k',
			'music.discography.live' => 'Élő',
			'music.discography.compilations' => 'Válogatások',
			'watchTogether.title' => 'Watch Together (Közös nézés)',
			'watchTogether.description' => 'Nézz tartalmat szinkronban barátaiddal és családoddal',
			'watchTogether.createRoom' => 'Szoba létrehozása',
			'watchTogether.creatingRoom' => 'Szoba létrehozása...',
			'watchTogether.joinRoom' => 'Csatlakozz a szobához',
			'watchTogether.joiningRoom' => 'Csatlakozás a szobához...',
			'watchTogether.connecting' => 'Csatlakozás...',
			'watchTogether.relayPublic' => 'A szobák nyilvános Open Watch Party közvetítéseket használnak.',
			'watchTogether.relayCustom' => ({required Object url}) => 'A szobák a ${url} reléjét használják.',
			'watchTogether.recentRooms' => 'Legutóbbi szobák',
			'watchTogether.roomActions' => 'Szobaműveletek',
			'watchTogether.renameRoom' => 'Szoba átnevezése',
			'watchTogether.removeRoom' => 'Eltávolítás',
			'watchTogether.enterRoomCode' => 'Írja be a 6 karakterből álló kódot a gazdagéptől.',
			'watchTogether.roomCode' => 'Szobakód',
			'watchTogether.paste' => 'Beillesztés',
			'watchTogether.noCodeInClipboard' => 'A vágólap nem tartalmaz szobakódot',
			'watchTogether.copyCode' => 'Kód másolása',
			'watchTogether.codeCopied' => 'A szoba kódja másolva',
			'watchTogether.shareInvite' => 'Meghívás megosztása',
			'watchTogether.qrShare' => 'QR-kód megosztása',
			'watchTogether.qrHint' => 'Olvassa be a Luroka alkalmazással, hogy csatlakozzon ehhez a szobához.',
			'watchTogether.phasePlaying' => 'Játék',
			'watchTogether.phasePaused' => 'Szüneteltetve',
			'watchTogether.phaseWaiting' => 'Mindenkit várok',
			'watchTogether.inviteCopied' => 'Meghívó másolva. Illessze be egy üzenetbe.',
			'watchTogether.inviteMessage' => ({required Object code}) => 'Csatlakozzon a Watch Together szobámhoz a Luroka-ban: luroka://watch?code=${code} — vagy nyissa meg a Watch Together alkalmazást, és írja be a ${code} kódot.',
			'watchTogether.openSessionControls' => 'Watch Together munkamenet-vezérlők megnyitása',
			'watchTogether.reconnecting' => 'Újracsatlakozás...',
			'watchTogether.reconnectingDescription' => 'A kapcsolat megszakadt. Ön automatikusan újra csatlakozik a szobához.',
			'watchTogether.connected' => 'Csatlakozva',
			'watchTogether.disconnected' => 'Lekapcsolva',
			'watchTogether.youAreHost' => 'Te vagy a házigazda',
			'watchTogether.hostedBy' => ({required Object name}) => 'Házigazda: ${name}',
			'watchTogether.hostControlsPlayback' => 'A házigazda vezérli a lejátszást',
			'watchTogether.anyoneCanControl' => 'Bárki vezérelheti a lejátszást',
			'watchTogether.roomLocked' => 'Szoba zárva',
			'watchTogether.nowPlaying' => 'Most játszik',
			'watchTogether.nothingPlaying' => 'Semmi sem játszik',
			'watchTogether.nothingPlayingHost' => 'Játssz le valamit bármelyik könyvtárból, és oszd meg a szobával.',
			'watchTogether.nothingPlayingGuest' => 'Amikor a műsorvezető játszik valamit, itt nyílik meg.',
			'watchTogether.notShareable' => 'Ennek a videónak nincs katalógusegyezése, ezért csak olyan személyek játszhatják le, akik hozzáférnek ugyanahhoz a szerverhez.',
			'watchTogether.searching' => 'Ezt a videót keresed a könyvtáraidban...',
			'watchTogether.yourCopy' => 'A te példányod',
			'watchTogether.sharingYourCopy' => 'Megosztod a példányodat',
			'watchTogether.playingOtherLength' => ({required Object difference}) => 'Az Ön példányának lejátszása, ${difference}',
			'watchTogether.mismatchTitle' => 'Az Ön másolata eltérő hosszúságú',
			'watchTogether.mismatchDescription' => ({required Object difference}) => 'A legközelebbi példány a ${difference}, mint a szoba videója. Lehet egy másik vágás vagy változat.',
			'watchTogether.playAnyway' => 'Játssz egyébként',
			'watchTogether.chooseAnotherCopy' => 'Válasszon másik másolatot',
			'watchTogether.dontPlay' => 'Ne játssz',
			'watchTogether.unavailableTitle' => 'Nincs meg ez a videó',
			'watchTogether.unavailableDescription' => 'A Luroka nem találta a könyvtáraiban. Válasszon ki egy példányt, vagy keressen újra.',
			'watchTogether.chooseCopy' => 'Válasszon egy másolatot',
			'watchTogether.searchAgain' => 'Keresés újra',
			'watchTogether.noCandidates' => 'Nem találhatók másolatok a könyvtáraiban.',
			'watchTogether.choiceFailed' => 'Ezt a példányt nem lehetett lejátszani a szobában',
			'watchTogether.lengthLonger' => ({required Object duration}) => '${duration} hosszabb',
			'watchTogether.lengthShorter' => ({required Object duration}) => '${duration} rövidebb',
			'watchTogether.lengthSame' => 'Ugyanolyan hosszú',
			'watchTogether.lengthUnknown' => 'Hossza ismeretlen',
			'watchTogether.joinCurrentPlayback' => 'Csatlakozás a jelenlegi lejátszáshoz',
			'watchTogether.joinCurrentPlaybackDescription' => 'Visszatérés ahhoz, amit a házigazda éppen néz',
			'watchTogether.stopMedia' => 'Videó leállítása mindenkinek',
			'watchTogether.syncOffset' => 'Szinkronizálás eltolása',
			'watchTogether.syncOffsetDescription' => 'Változtassa el a videót, ha az a szoba előtt vagy mögött fut.',
			'watchTogether.offsetHint' => ({required Object difference}) => 'Az Ön másolata ${difference}, mint a szoba videója.',
			'watchTogether.applyDifference' => ({required Object offset}) => 'Használja a ${offset}-t',
			'watchTogether.offsetMinusSecond' => '-1 s',
			'watchTogether.offsetMinusTenth' => '-100 ms',
			'watchTogether.offsetPlusTenth' => '+100 ms',
			'watchTogether.offsetPlusSecond' => '+1 s',
			'watchTogether.participants' => 'Résztvevők',
			'watchTogether.participantCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n, one: '${n} résztvevő', other: '${n} résztvevők', ), 
			_ => null,
		} ?? switch (path) {
			'watchTogether.hostBadge' => 'HÁZIGAZDA',
			'watchTogether.nameYou' => ({required Object name}) => '${name} (Ön)',
			'watchTogether.playerIdle' => 'Tétlen',
			'watchTogether.playerLoading' => 'Betöltés',
			'watchTogether.playerReady' => 'Kész',
			'watchTogether.playerBuffering' => 'Pufferelés',
			'watchTogether.matchSearching' => 'Keresés',
			'watchTogether.matchMatched' => 'Megvan a videó',
			'watchTogether.matchMismatched' => 'Különböző hosszúságú',
			'watchTogether.matchUnavailable' => 'Nincs benne a videó',
			'watchTogether.participantOffset' => ({required Object offset}) => 'Eltolás ${offset}',
			'watchTogether.makeHost' => 'Házigazdává tétel',
			'watchTogether.makeHostQuestion' => 'Átadod a házigazdaságot?',
			'watchTogether.makeHostConfirm' => ({required Object name}) => '${name} vezérli majd a lejátszást és a munkamenetet mindenki számára.',
			'watchTogether.transfer' => 'Átadás',
			'watchTogether.removeParticipant' => 'Távolítsa el a szobából',
			'watchTogether.removeParticipantQuestion' => ({required Object name}) => 'Eltávolítja a ${name}-t?',
			'watchTogether.removeParticipantConfirm' => ({required Object name}) => '${name} elhagyja a szobát. Hacsak nem zárja be a szobát, újra csatlakozhatnak a kóddal.',
			'watchTogether.remove' => 'Távolítsa el',
			'watchTogether.roomSettings' => 'Szobabeállítások',
			'watchTogether.letEveryoneControl' => 'Mindenki irányíthatja a lejátszást',
			'watchTogether.lockRoom' => 'Záróterem',
			'watchTogether.lockRoomDescription' => 'Senki új nem csatlakozhat',
			'watchTogether.leaveRoom' => 'Hagyja el a szobát',
			'watchTogether.leaveRoomQuestion' => 'Kilép a szobából?',
			'watchTogether.leaveRoomConfirm' => 'A szobakóddal újra csatlakozhatsz.',
			'watchTogether.leave' => 'Kilépés',
			'watchTogether.endRoom' => 'Végső szoba',
			'watchTogether.endRoomQuestion' => 'Szoba vége?',
			'watchTogether.endRoomConfirm' => 'Ezzel mindenki számára véget ér a szoba.',
			'watchTogether.end' => 'Befejezés',
			'watchTogether.playBlockedTitle' => 'A lejátszás nem indult el',
			'watchTogether.playBlockedDescription' => 'Nyomja meg a lejátszást a szoba nézésének megkezdéséhez.',
			'watchTogether.notices.pressedPlay' => ({required Object name}) => '${name} lenyomott lejátszás',
			'watchTogether.notices.playbackStarted' => 'A lejátszás elindult',
			'watchTogether.notices.paused' => ({required Object name}) => '${name} szüneteltette a lejátszást',
			'watchTogether.notices.playbackPaused' => 'A lejátszás szünetel',
			'watchTogether.notices.jumpedTo' => ({required Object name, required Object position}) => 'A ${name} a ${position}-ra ugrott',
			'watchTogether.notices.roomJumpedTo' => ({required Object position}) => 'Ugrott ide: ${position}',
			'watchTogether.notices.changedSpeed' => ({required Object name, required Object speed}) => '${name} a sebességet ${speed} értékre állította',
			'watchTogether.notices.speedChanged' => ({required Object speed}) => 'Sebesség beállítása ${speed}',
			'watchTogether.notices.startedMedia' => ({required Object name, required Object title}) => 'A ${name} elindult a ${title}',
			'watchTogether.notices.mediaStarted' => ({required Object title}) => 'Most játszik a ${title}',
			'watchTogether.notices.stoppedMedia' => ({required Object name}) => 'A ${name} leállította a videót',
			'watchTogether.notices.mediaStopped' => 'A videó leállt',
			'watchTogether.notices.waitingFor' => ({required Object name}) => 'Várakozás: ${name}...',
			'watchTogether.notices.waitingForSomeone' => 'Várom, hogy valaki utolérjen...',
			'watchTogether.notices.finished' => 'kész',
			'watchTogether.notices.hostChangedTo' => ({required Object name}) => '${name} lett a házigazda',
			'watchTogether.notices.youAreNowHost' => 'Mostantól te vagy a házigazda',
			'watchTogether.notices.joined' => ({required Object name}) => '${name} csatlakozott',
			'watchTogether.notices.left' => ({required Object name}) => '${name} kilépett',
			'watchTogether.notices.controlRefused' => 'Csak a gazdagép irányíthatja a lejátszást',
			'watchTogether.notices.searchFailed' => 'Egyes szervereken nem sikerült megkeresni a szoba videóját',
			'watchTogether.notices.playBlocked' => 'Nyomja meg a lejátszás elindításához',
			'watchTogether.notices.shareFailed' => 'Nem sikerült megosztani ezt a videót a szobával',
			'watchTogether.notices.notShared' => 'A letöltött videókat nem osztják meg a szobával',
			'watchTogether.notices.openFailed' => 'Nem sikerült megnyitni a szoba videóját',
			'watchTogether.ended.ended' => 'A házigazda befejezte a termet',
			'watchTogether.ended.kicked' => 'Eltávolítottak a szobából',
			'watchTogether.ended.expired' => 'A szoba lejárt',
			'watchTogether.ended.replaced' => 'Egy másik eszközön csatlakozott ehhez a szobához',
			'watchTogether.ended.lost' => 'Megszakadt a kapcsolat a szobával',
			'watchTogether.errors.invalidCode' => 'Ez nem szobakód. A kódok 6 betűből és számjegyből állnak, 0, 1, I, L vagy O nélkül.',
			'watchTogether.errors.roomNotFound' => 'Egyetlen szobában sincs ez a kód. Lehet, hogy vége lett.',
			'watchTogether.errors.roomFull' => 'A szoba tele van.',
			'watchTogether.errors.roomLocked' => 'A házigazda bezárta azt a szobát.',
			'watchTogether.errors.relayFull' => 'A Watch Together jelenleg elfoglalt. Próbálja újra később.',
			'watchTogether.errors.unreachable' => 'Nem sikerült elérni a Watch Together relét. Ellenőrizze a kapcsolatot.',
			'watchTogether.errors.rateLimited' => 'Túl sok próbálkozás. Várjon egy pillanatot, és próbálja újra.',
			'watchTogether.errors.clientBlocked' => 'A Luroka ezen verziója nem tudja használni a relét. Frissítse az alkalmazást.',
			'watchTogether.errors.forbidden' => 'Ezt csak a házigazda teheti meg.',
			'watchTogether.errors.notInRoom' => 'Nem vagy egy szobában.',
			'watchTogether.errors.alreadyInRoom' => 'Már egy szobában vagy.',
			'watchTogether.errors.resumeFailed' => 'Nem sikerült újra csatlakozni a szobához.',
			'watchTogether.errors.unsupported' => 'A relé ezt nem támogatja.',
			'watchTogether.errors.generic' => 'Valami elromlott. Próbáld újra.',
			'watchTogether.untitledEpisode' => ({required Object number}) => '${number} epizód',
			'downloads.title' => 'Letöltések',
			'downloads.manage' => 'Kezelés',
			'downloads.tvShows' => 'TV-sorozatok',
			'downloads.movies' => 'Filmek',
			'downloads.music' => 'Zene',
			'downloads.tracksQueued' => ({required Object count}) => '${count} zeneszám letöltésre sorba állítva',
			'downloads.noDownloads' => 'Még nincsenek letöltések',
			'downloads.noDownloadsDescription' => 'A letöltött tartalmak itt jelennek meg az offline megtekintéshez',
			'downloads.downloadNow' => 'Letöltés',
			'downloads.deleteDownload' => 'Letöltés törlése',
			'downloads.retryDownload' => 'Letöltés újrapróbálása',
			'downloads.downloadQueued' => 'Letöltés sorba állítva',
			'downloads.downloadResumed' => 'Letöltés folytatva',
			'downloads.serverErrorBitrate' => 'Szerverhiba: a fájl meghaladhatja a távoli bitrátakorlátot',
			'downloads.storageFull' => 'A letöltések leálltak a szabad tárhely védelme érdekében. Szabadíts fel helyet, vagy válassz másik letöltési helyet, majd próbáld újra.',
			'downloads.storageUnavailable' => 'A letöltések leálltak, mert a rendelkezésre álló tárhely nem ellenőrizhető. Ellenőrizd a letöltési helyet, majd próbáld újra.',
			'downloads.episodesQueued' => ({required Object count}) => '${count} epizód letöltésre sorba állítva',
			'downloads.downloadDeleted' => 'Letöltés törölve',
			'downloads.deleteConfirm' => ({required Object title}) => 'Törlöd a következőt: "${title}" erről az eszközről?',
			'downloads.deleteCollectionDownloads' => 'Letöltések törlése',
			'downloads.deleteCollectionDownloadsConfirm' => ({required Object title}) => 'Töröl minden „${title}” letöltést erről az eszközről?',
			'downloads.collectionDownloadsDeleted' => 'Letöltések törölve',
			'downloads.cancelledDownloadTitle' => 'Megszakított letöltés',
			'downloads.cancelledDownloadMessage' => 'Ez a letöltés meg lett szakítva. Mit szeretnél tenni?',
			'downloads.allEpisodesAlreadyDownloaded' => 'Minden epizód le van töltve',
			'downloads.resumeDownload' => 'Letöltés folytatása',
			'downloads.cancelledDownload' => 'Megszakított letöltés',
			'downloads.syncingFile' => ({required Object file, required Object status}) => '${file} (${status} szinkronizálása)',
			'downloads.downloadedFileClickToComplete' => ({required Object file}) => 'Letöltve: ${file} - Kattints a befejezéshez',
			'downloads.partialDownloadClickToComplete' => 'Részben letöltve - Kattints a befejezéshez',
			'downloads.deleting' => 'Törlés...',
			'downloads.deletingWithProgress' => ({required Object title, required Object current, required Object total}) => '${title} törlése... (${current}/${total})',
			'downloads.queuedTooltip' => 'Sorban áll',
			'downloads.queuedFilesTooltip' => ({required Object files}) => 'Sorba állítva: ${files}',
			'downloads.downloadingTooltip' => 'Letöltés...',
			'downloads.downloadingFilesTooltip' => ({required Object files}) => 'Letöltés alatt: ${files}',
			'downloads.noDownloadsTree' => 'Nincsenek letöltések',
			'downloads.pauseAll' => 'Összes szüneteltetése',
			'downloads.resumeAll' => 'Összes folytatása',
			'downloads.retryAll' => 'Próbáld újra az összeset',
			'downloads.retryFailed' => 'Próbálja újra a sikertelen letöltéseket',
			'downloads.deleteAll' => 'Összes törlése',
			'downloads.selectVersion' => 'Verzió kiválasztása',
			'downloads.allEpisodes' => 'Minden epizód',
			'downloads.unwatchedOnly' => 'Csak a nem látottak',
			'downloads.nextNUnwatched' => ({required Object count}) => 'A következő ${count} nem látott epizód',
			'downloads.customAmount' => 'Egyéni mennyiség...',
			'downloads.includeSpecials' => 'Különkiadások is',
			'downloads.howManyEpisodes' => 'Hány epizód?',
			'downloads.invalidEpisodeCount' => 'Adj meg egy érvényes epizódszámot.',
			'downloads.keepSynced' => 'Szinkronban tartás',
			'downloads.downloadOnce' => 'Egyszeri letöltés',
			'downloads.keepNUnwatched' => ({required Object count}) => '${count} nem látott epizód megtartása',
			'downloads.editSyncRule' => 'Szinkronizálási szabály szerkesztése',
			'downloads.removeSyncRule' => 'Szinkronizálási szabály eltávolítása',
			'downloads.removeSyncRuleConfirm' => ({required Object title}) => 'Leállítod a(z) "${title}" szinkronizálását? A letöltött epizódok megmaradnak.',
			'downloads.removeListSyncRuleConfirm' => ({required Object title}) => 'Leállítjuk a(z) "${title}" szinkronizálását?',
			'downloads.deleteSyncRuleDownloads' => 'A kapcsolódó letöltések törlése is',
			'downloads.deleteSyncRuleDownloadsDescription' => 'A másik szinkronszabály vagy profil által használt letöltések megmaradnak.',
			'downloads.syncRuleCreated' => ({required Object count}) => 'Szinkronizálási szabály létrehozva — ${count} nem látott epizód megtartása',
			'downloads.syncRuleUpdated' => 'Szinkronizálási szabály frissítve',
			'downloads.syncRuleRemoved' => 'Szinkronizálási szabály eltávolítva',
			'downloads.syncRuleAndDownloadsRemoved' => 'A szinkronszabály és a kapcsolódó letöltések eltávolítva',
			'downloads.syncRuleCleanupBusy' => 'A szinkronszabályok éppen frissülnek. Próbálja újra egy pillanat múlva.',
			'downloads.syncRuleCleanupUnavailable' => 'A kapcsolódó letöltések nem azonosíthatók biztonságosan. Csatlakoztassa újra a szervert, és próbálja újra, vagy távolítsa el a szabályt a letöltések törlése nélkül.',
			'downloads.syncedNewEpisodes' => ({required Object count, required Object title}) => '${count} új epizód szinkronizálva a következőhöz: ${title}',
			'downloads.activeSyncRules' => 'Szinkronizálási szabályok',
			'downloads.noSyncRules' => 'Nincsenek szinkronizálási szabályok',
			'downloads.manageSyncRule' => 'Szinkronizálás kezelése',
			'downloads.editEpisodeCount' => 'Epizódszám',
			'downloads.editSyncFilter' => 'Szinkronizálási szűrő',
			'downloads.syncAllItems' => 'Minden elem szinkronizálása',
			'downloads.syncUnwatchedItems' => 'Nem látott elemek szinkronizálása',
			'downloads.syncRuleServerContext' => ({required Object server, required Object status}) => 'Szerver: ${server} • ${status}',
			'downloads.syncRuleAvailable' => 'Elérhető',
			'downloads.syncRuleOffline' => 'Offline',
			'downloads.syncRuleSignInRequired' => 'Bejelentkezés szükséges',
			'downloads.syncRuleAccessDenied' => 'Hozzáférés megtagadva',
			'downloads.syncRuleNotAvailableForProfile' => 'Nem érhető el a jelenlegi profilhoz',
			'downloads.syncRuleUnknownServer' => 'Ismeretlen szerver',
			'downloads.syncRuleListCreated' => 'Szinkronizálási szabály létrehozva',
			'downloads.backgroundWarning.bannerBlocked' => 'A letöltések leállnak, ha kilépsz az alkalmazásból',
			'downloads.backgroundWarning.bannerDegraded' => 'A háttérbeli letöltések korlátozottak lehetnek',
			'downloads.backgroundWarning.bannerAction' => 'Részletek',
			'downloads.backgroundWarning.sheetTitle' => 'A háttérbeli letöltések le vannak tiltva',
			'downloads.backgroundWarning.sheetTitleDegraded' => 'A háttérbeli letöltések korlátozottak lehetnek',
			'downloads.backgroundWarning.sheetIntro' => 'Az Android megakadályozza, hogy a Luroka megbízhatóan töltsön le a háttérben.',
			'downloads.backgroundWarning.sheetIntroDegraded' => 'Az eszközöd korlátozza, hogy a Luroka mikor tölthet le a háttérben.',
			'downloads.backgroundWarning.reasonBackgroundRestricted' => 'A Luroka háttérbeli használata korlátozva van. Állítsd az akkumulátor- vagy háttérhasználatát „Korlátlan” értékre.',
			'downloads.backgroundWarning.reasonStandbyRestricted' => 'Az Android korlátozott készenléti állapotba helyezte a Lurokat. Állítsd az akkumulátorhasználatát „Korlátlan” értékre.',
			'downloads.backgroundWarning.reasonDownloadChannelBlocked' => 'A letöltési értesítések ki vannak kapcsolva, ezért előfordulhat, hogy a folyamatjelzés és a vezérlők nem érhetők el.',
			'downloads.backgroundWarning.reasonNotificationsDisabled' => 'Az értesítések ki vannak kapcsolva. Android 13 vagy újabb rendszeren szükségesek a hosszú háttérbeli letöltésekhez.',
			'downloads.backgroundWarning.reasonDataSaver' => 'Az Adatforgalom-csökkentő be van kapcsolva, ezért mobiladat-kapcsolaton nem működnek a háttérbeli letöltések. Wi-Fi-n továbbra is működniük kell.',
			'downloads.backgroundWarning.reasonOemUnknown' => 'A letöltések többször leálltak, miközben a Luroka a háttérben futott. Ellenőrizd a Luroka akkumulátor- vagy háttérhasználati beállításait.',
			'downloads.backgroundWarning.openSettings' => 'Beállítások megnyitása',
			'downloads.backgroundWarning.stillNotWorking' => 'Eszközspecifikus segítség',
			'downloads.backgroundWarning.stillNotWorkingDescription' => 'Nézd meg az eszközödhöz tartozó lépéseket, vagy ha a probléma továbbra is fennáll, küldj naplót a Beállítások › Naplók megtekintése menüből.',
			'downloads.backgroundWarning.dialogTitle' => 'A letöltések nem biztos, hogy befejeződnek',
			'downloads.backgroundWarning.dialogDownloadAnyway' => 'Letöltés mégis',
			'downloads.backgroundWarning.dialogFixFirst' => 'Előbb javítom',
			'downloads.backgroundWarning.statusTile' => 'Háttérbeli letöltések',
			'downloads.backgroundWarning.statusOk' => 'Futhat a háttérben',
			'downloads.backgroundWarning.statusBlocked' => 'A rendszerbeállítások blokkolják',
			'downloads.backgroundWarning.statusDegraded' => 'A rendszerbeállítások korlátozzák',
			'downloads.backgroundWarning.statusUnknown' => 'Még nincs ellenőrizve',
			'downloads.backgroundWarning.settingsUnavailable' => 'Ezen az eszközön nem sikerült megnyitni a rendszerbeállításokat',
			'downloads.backgroundWarning.linkUnavailable' => 'Ezen az eszközön nem sikerült megnyitni a dontkillmyapp.com webhelyet',
			'downloads.options' => 'Letöltések lehetőségei',
			'downloads.groupings.library' => 'Könyvtár',
			'downloads.groupings.collections' => 'Gyűjtemények',
			'downloads.unknownLibrary' => 'Ismeretlen könyvtár',
			'downloads.unknownShow' => 'Ismeretlen sorozat',
			'downloads.unknownSeason' => 'Ismeretlen évad',
			'downloads.unknownAlbum' => 'Ismeretlen album',
			'downloads.completedOfTotal' => ({required Object completed, required Object total}) => '${completed}/${total} kész',
			'downloads.errorFileNotFound' => 'A fájl nem található (404)',
			'downloads.errorDownloadNotAllowed' => 'A szerver nem engedélyezi a letöltést (403)',
			'downloads.errorDownloadFailed' => 'A letöltés nem sikerült',
			'downloads.errorDownloadFailedWithReason' => ({required Object reason}) => 'A letöltés nem sikerült: ${reason}',
			'downloads.errorHttpStatus' => ({required Object status}) => 'A letöltés nem sikerült (HTTP ${status})',
			'downloads.errorPostProcessing' => ({required Object reason}) => 'Az utófeldolgozás nem sikerült: ${reason}',
			'downloads.reasonFileNotSaved' => 'a fájlt nem sikerült menteni erre az eszközre',
			'downloads.reasonCannotResume' => 'a részleges letöltést nem sikerült folytatni',
			'downloads.reasonDeviceStorageFull' => 'az eszközön elfogyott a tárhely',
			'downloads.notificationDownloading' => 'Letöltés...',
			'downloads.notificationComplete' => 'Letöltés kész',
			'downloads.notificationPaused' => 'Letöltés szüneteltetve',
			'shaders.title' => 'Shaderek',
			'shaders.noShaderDescription' => 'Nincs videójavítás',
			'shaders.nvscalerDescription' => 'NVIDIA képskálázás az élesebb videóért',
			'shaders.artcnnVariantNeutral' => 'Semleges',
			'shaders.artcnnVariantDenoise' => 'Zajcsökkentés',
			'shaders.artcnnVariantDenoiseSharpen' => 'Zajcsökkentés + Élesítés',
			'shaders.qualityFast' => 'Gyors',
			'shaders.qualityHQ' => 'Kiváló minőség',
			'shaders.mode' => 'Mód',
			'shaders.importShader' => 'Shader importálása',
			'shaders.customShaderDescription' => 'Egyéni GLSL shader',
			'shaders.shaderImported' => 'Shader importálva',
			'shaders.shaderImportFailed' => 'Nem sikerült a shader importálása',
			'shaders.deleteShader' => 'Shader törlése',
			'shaders.deleteShaderConfirm' => ({required Object name}) => 'Törlöd a következőt: "${name}"?',
			'companionRemote.title' => 'Kísérőtávirányító',
			'companionRemote.connectedTo' => ({required Object name}) => 'Csatlakoztatva a következőhöz: ${name}',
			'companionRemote.unknownDevice' => 'Ismeretlen eszköz',
			'companionRemote.session.startingServer' => 'Távirányító-szerver indítása...',
			'companionRemote.session.hostAddress' => 'Gazdagép címe',
			'companionRemote.session.connected' => 'Csatlakoztatva',
			'companionRemote.session.serverRunning' => 'A távirányító-szerver aktív',
			'companionRemote.session.serverStopped' => 'A távirányító-szerver leállítva',
			'companionRemote.session.serverRunningDescription' => 'A hálózaton lévő mobileszközök csatlakozhatnak ehhez az alkalmazáshoz',
			'companionRemote.session.serverStoppedDescription' => 'Indítsd el a szervert, hogy a mobileszközök csatlakozhassanak',
			'companionRemote.session.usePhoneToControl' => 'Használd a mobileszközödet az alkalmazás vezérléséhez',
			'companionRemote.session.startServer' => 'Szerver indítása',
			'companionRemote.session.stopServer' => 'Szerver leállítása',
			'companionRemote.session.minimize' => 'Kis méret',
			'companionRemote.session.manualAddressHint' => 'Kézi kapcsolódási cím:',
			'companionRemote.pairing.discoveryDescription' => 'Az azonos Plex-fiókot használó Luroka-eszközök itt jelennek meg',
			'companionRemote.pairing.hostAddressHint' => '192.168.1.100:48632',
			'companionRemote.pairing.connecting' => 'Csatlakozás...',
			'companionRemote.pairing.searchingForDevices' => 'Eszközök keresése...',
			'companionRemote.pairing.noDevicesFound' => 'Nem találhatók eszközök a hálózaton',
			'companionRemote.pairing.noDevicesHint' => 'Nyisd meg a Lurokat asztali gépen, és használd ugyanazt a Wi-Fi-hálózatot',
			'companionRemote.pairing.availableDevices' => 'Elérhető eszközök',
			'companionRemote.pairing.manualConnection' => 'Kézi csatlakozás',
			'companionRemote.pairing.cryptoInitFailed' => 'Nem sikerült elindítani a biztonságos kapcsolatot. Először jelentkezz be a Plexbe.',
			'companionRemote.pairing.validationHostRequired' => 'Add meg a gazdagép címét',
			'companionRemote.pairing.validationHostFormat' => 'A formátumnak IP:port kell lennie (pl. 192.168.1.100:48632)',
			'companionRemote.pairing.connectionTimedOut' => 'A csatlakozás túllépte az időkorlátot. Használd ugyanazt a hálózatot mindkét eszközön.',
			'companionRemote.pairing.sessionNotFound' => 'Az eszköz nem található. Győződj meg arról, hogy a Luroka fut a gazdagépen.',
			'companionRemote.pairing.authFailed' => 'A hitelesítés nem sikerült. Mindkét eszközön ugyanazt a Plex-fiókot kell használni.',
			'companionRemote.pairing.failedToConnect' => ({required Object error}) => 'Nem sikerült a csatlakozás: ${error}',
			'companionRemote.remote.disconnectConfirm' => 'Bontod a kapcsolatot a távoli munkamenettel?',
			'companionRemote.remote.reconnecting' => 'Újracsatlakozás...',
			'companionRemote.remote.attemptOf' => ({required Object current}) => '${current} / 5 próbálkozás',
			'companionRemote.remote.retryNow' => 'Újrapróbálkozás most',
			'companionRemote.remote.tabRemote' => 'Távirányító',
			'companionRemote.remote.tabPlay' => 'Lejátszás',
			'companionRemote.remote.tabMore' => 'Egyebek',
			'companionRemote.remote.menu' => 'Menü',
			'companionRemote.remote.tabNavigation' => 'Navigációs lap',
			'companionRemote.remote.tabDiscover' => 'Felfedezés',
			'companionRemote.remote.tabLibraries' => 'Könyvtárak',
			'companionRemote.remote.tabSearch' => 'Keresés',
			'companionRemote.remote.tabDownloads' => 'Letöltések',
			'companionRemote.remote.tabSettings' => 'Beállítások',
			'companionRemote.remote.previous' => 'Előző',
			'companionRemote.remote.playPause' => 'Lejátszás/Szünet',
			'companionRemote.remote.next' => 'Következő',
			'companionRemote.remote.seekBack' => 'Visszatekerés',
			'companionRemote.remote.stop' => 'Leállítás',
			'companionRemote.remote.seekForward' => 'Előretekerés',
			'companionRemote.remote.volume' => 'Hangerő',
			'companionRemote.remote.volumeDown' => 'Hangerő le',
			'companionRemote.remote.volumeUp' => 'Hangerő fel',
			'companionRemote.remote.fullscreen' => 'Teljes képernyő',
			'companionRemote.remote.subtitles' => 'Feliratok',
			'companionRemote.remote.audio' => 'Hang',
			'companionRemote.remote.searchHint' => 'Keresés az asztali gépen...',
			'companionRemote.errors.noNetworkInterface' => 'Nem található hálózati csatoló',
			'companionRemote.errors.authenticationFailed' => 'A hitelesítés nem sikerült',
			'companionRemote.errors.serverStartFailed' => ({required Object error}) => 'Nem sikerült elindítani a távirányító-szervert: ${error}',
			'companionRemote.errors.commandFailed' => ({required Object error}) => 'Nem sikerült elküldeni a távoli parancsot: ${error}',
			'companionRemote.errors.joinTimedOut' => 'Időtúllépés a munkamenethez való csatlakozáskor',
			'companionRemote.errors.failedToConnectAnyAddress' => 'Egyetlen címhez sem sikerült csatlakozni',
			'companionRemote.errors.connectionLostAfterAttempts' => ({required Object attempts}) => 'A kapcsolat megszakadt ${attempts} próbálkozás után',
			'companionRemote.errors.connectionLost' => 'A kapcsolat megszakadt',
			'companionRemote.closedBeforeAuth' => 'A kapcsolat a hitelesítés előtt megszakadt',
			'videoSettings.playbackSpeed' => 'Lejátszási sebesség',
			'videoSettings.normalSpeed' => 'Normál',
			'videoSettings.sleepTimerActive' => ({required Object duration}) => 'Aktív (${duration})',
			'videoSettings.zoom' => 'Nagyítás',
			'videoSettings.sleepTimer' => 'Elalvási időzítő',
			'videoSettings.audioSync' => 'Hang szinkronizálása',
			'videoSettings.subtitleSync' => 'Felirat szinkronizálása',
			'videoSettings.hdr' => 'HDR',
			'videoSettings.hdrUnsupported' => 'A HDR itt nem érhető el – ez az asztali kompozitor vagy videókimenet nem képes továbbítani.',
			'videoSettings.hdrToneMapping' => 'HDR-tónusleképezés',
			'videoSettings.hdrToneMappingCompositor' => 'Kompozitor',
			'videoSettings.hdrToneMappingCompositorDescription' => 'Továbbítja a forrás HDR-metaadatait, és az asztali kompozitorra bízza a tónusleképezést.',
			'videoSettings.hdrToneMappingPlayer' => 'Lejátszó',
			'videoSettings.hdrToneMappingPlayerDescription' => 'A lejátszóban a kijelző maximális fényerejéhez igazítja a képet, majd közli az eredményt a kompozitorral.',
			'videoSettings.hdrToneMappingFailed' => 'Nem sikerült módosítani a HDR-tónusleképezést – továbbra is az előző mód aktív.',
			'videoSettings.audioOutput' => 'Hangkimenet',
			'videoSettings.performanceOverlay' => 'Teljesítményadatok',
			'videoSettings.audioOutputDolbyAtmos' => 'Dolby Atmos',
			'videoSettings.audioOutputDolbyAudio' => 'Dolby Audio',
			'videoSettings.audioOutputSurround' => 'Térhatású',
			'videoSettings.audioOutputSpatial' => 'Térbeli hang',
			'videoSettings.audioOutputStereo' => 'Sztereó',
			'videoSettings.audioNormalization' => 'Hangerő normalizálása',
			'videoSettings.audioNormalizationDisablesPassthrough' => 'PCM-mé dekódolja a hangot; a passthrough ki van kapcsolva, amíg ez be van kapcsolva',
			'performanceOverlay.color' => 'Szín',
			'performanceOverlay.performance' => 'Teljesítmény',
			'performanceOverlay.buffer' => 'Puffer',
			'performanceOverlay.app' => 'Alkalmazás',
			'performanceOverlay.decoder' => 'Dekóder',
			'performanceOverlay.rawDecoder' => 'Nyers dekóder',
			'performanceOverlay.tunneling' => 'Alagutazás',
			'performanceOverlay.passthrough' => 'Passthrough',
			'performanceOverlay.aspect' => 'Méretarány',
			'performanceOverlay.rotation' => 'Forgatás',
			'performanceOverlay.dvSource' => 'DV-forrás',
			'performanceOverlay.dvPath' => 'DV-útvonal',
			'performanceOverlay.dvRouteDecoder' => 'Dolby Vision dekóder',
			'performanceOverlay.dvRouteDecoderP81' => 'Dolby Vision dekóder (P7→8.1)',
			'performanceOverlay.dvRouteBaseLayer' => 'Alapréteg',
			'performanceOverlay.dvRouteBaseLayerHdr10' => 'HDR10 alapréteg',
			'performanceOverlay.dvRouteBaseLayerHlg' => 'HLG alapréteg',
			'performanceOverlay.dvRouteBaseLayerSdr' => 'SDR alapréteg',
			'performanceOverlay.dvRouteReshaped' => 'RPU átformált (gpu-next)',
			'performanceOverlay.p7Conversion' => 'P7-átalakítás',
			'performanceOverlay.sampleRate' => 'Mintavételezési frekvencia',
			'performanceOverlay.pixelFormat' => 'Képpontformátum',
			'performanceOverlay.hwFormat' => 'Hardverformátum',
			'performanceOverlay.matrix' => 'Mátrix',
			'performanceOverlay.primaries' => 'Elsődleges színek',
			'performanceOverlay.transfer' => 'Átvitel',
			'performanceOverlay.renderFps' => 'Renderelési FPS',
			'performanceOverlay.displayFps' => 'Kijelző-FPS',
			'performanceOverlay.avSync' => 'A/V-szinkron',
			'performanceOverlay.dropped' => 'Eldobva',
			'performanceOverlay.dvRpus' => 'DV RPU-k',
			'performanceOverlay.dvRpuAverage' => 'DV RPU-átlag',
			'performanceOverlay.dvSampleAverage' => 'DV-mintaátlag',
			'performanceOverlay.maxLuma' => 'Maximális luma',
			'performanceOverlay.minLuma' => 'Minimális luma',
			'performanceOverlay.maxCll' => 'MaxCLL',
			'performanceOverlay.maxFall' => 'MaxFALL',
			'performanceOverlay.cacheUsed' => 'Használt gyorsítótár',
			'performanceOverlay.cacheLimit' => 'Gyorsítótár korlátja',
			'performanceOverlay.speed' => 'Sebesség',
			'performanceOverlay.player' => 'Lejátszó',
			'performanceOverlay.memory' => 'Memória',
			'performanceOverlay.uiFps' => 'Felület-FPS',
			'performanceOverlay.fps' => 'FPS',
			'performanceOverlay.decoderAndroidHw' => 'Android HW',
			'performanceOverlay.decoderNvidiaHw' => 'NVIDIA HW',
			'performanceOverlay.decoderQualcommHw' => 'Qualcomm HW',
			'performanceOverlay.decoderMediatekHw' => 'MediaTek HW',
			'performanceOverlay.decoderExynosHw' => 'Exynos HW',
			'performanceOverlay.decoderSoftware' => 'Szoftveres',
			'performanceOverlay.decoderHardware' => 'Hardveres',
			'performanceOverlay.tunnelingActive' => 'Aktív',
			'performanceOverlay.dvRpuFailed' => ({required Object converted, required Object failures}) => '${converted} (${failures} sikertelen)',
			'externalPlayer.title' => 'Külső lejátszó',
			'externalPlayer.useExternalPlayer' => 'Külső lejátszó használata',
			'externalPlayer.useExternalPlayerDescription' => 'Videók megnyitása egy másik alkalmazásban',
			'externalPlayer.selectPlayer' => 'Lejátszó kiválasztása',
			'externalPlayer.customPlayers' => 'Egyéni lejátszók',
			'externalPlayer.systemDefault' => 'Rendszer alapértelmezése',
			'externalPlayer.addCustomPlayer' => 'Egyéni lejátszó hozzáadása',
			'externalPlayer.playerName' => 'Lejátszó neve',
			'externalPlayer.playerNameHint' => 'Saját lejátszó',
			'externalPlayer.playerCommand' => 'Parancs',
			'externalPlayer.playerPackage' => 'Csomagnév',
			'externalPlayer.playerUrlScheme' => 'URL-séma',
			'externalPlayer.off' => 'Ki',
			'externalPlayer.launchFailed' => 'Nem sikerült megnyitni a külső lejátszót',
			'externalPlayer.appNotInstalled' => ({required Object name}) => 'A(z) ${name} nincs telepítve',
			'externalPlayer.playInExternalPlayer' => 'Lejátszás külső lejátszóban',
			'metadataEdit.editMetadata' => 'Szerkesztés...',
			'metadataEdit.screenTitle' => 'Metaadatok szerkesztése',
			'metadataEdit.basicInfo' => 'Alapinformációk',
			'metadataEdit.artwork' => 'Borítók és képek',
			'metadataEdit.advancedSettings' => 'Haladó beállítások',
			'metadataEdit.title' => 'Cím',
			'metadataEdit.sortTitle' => 'Rendezési cím',
			'metadataEdit.originalTitle' => 'Eredeti cím',
			'metadataEdit.releaseDate' => 'Bemutató dátuma',
			'metadataEdit.contentRating' => 'Korhatár-besorolás',
			'metadataEdit.studio' => 'Stúdió',
			'metadataEdit.tagline' => 'Jelmondat',
			'metadataEdit.summary' => 'Összefoglaló',
			'metadataEdit.poster' => 'Poszter',
			'metadataEdit.background' => 'Háttér',
			'metadataEdit.logo' => 'Logó',
			'metadataEdit.squareArt' => 'Négyzetes kép',
			'metadataEdit.selectPoster' => 'Poszter kiválasztása',
			'metadataEdit.selectBackground' => 'Háttér kiválasztása',
			'metadataEdit.selectLogo' => 'Logó kiválasztása',
			'metadataEdit.selectSquareArt' => 'Négyzetes kép kiválasztása',
			'metadataEdit.fromUrl' => 'URL-ről',
			'metadataEdit.uploadFile' => 'Fájl feltöltése',
			'metadataEdit.enterImageUrl' => 'Add meg a kép URL-címét',
			'metadataEdit.imageUrl' => 'Kép URL-címe',
			'metadataEdit.metadataUpdated' => 'Metaadatok frissítve',
			'metadataEdit.metadataUpdateFailed' => 'Nem sikerült a metaadatok frissítése',
			'metadataEdit.artworkUpdated' => 'Képek frissítve',
			'metadataEdit.artworkUpdateFailed' => 'Nem sikerült a képek frissítése',
			'metadataEdit.noArtworkAvailable' => 'Nincsenek elérhető képek',
			'metadataEdit.artworkOption' => ({required Object index}) => '${index}. képváltozat',
			'metadataEdit.selectedArtworkOption' => ({required Object index}) => '${index}. képváltozat, kiválasztva',
			'metadataEdit.notSet' => 'Nincs beállítva',
			'metadataEdit.libraryDefault' => 'Könyvtári alapértelmezés',
			'metadataEdit.accountDefault' => 'Fiók alapértelmezése',
			'metadataEdit.seriesDefault' => 'Sorozat alapértelmezése',
			'metadataEdit.episodeSorting' => 'Epizódok rendezése',
			'metadataEdit.oldestFirst' => 'Legrégebbi elöl',
			'metadataEdit.newestFirst' => 'Legújabb elöl',
			'metadataEdit.keep' => 'Megtartás',
			'metadataEdit.allEpisodes' => 'Minden epizód',
			'metadataEdit.latestEpisodes' => ({required Object count}) => 'Legutóbbi ${count} epizód',
			'metadataEdit.latestEpisode' => 'Legutóbbi epizód',
			'metadataEdit.episodesAddedPastDays' => ({required Object count}) => 'Az elmúlt ${count} napban hozzáadott epizódok',
			'metadataEdit.deleteAfterPlaying' => 'Epizódok törlése lejátszás után',
			'metadataEdit.never' => 'Soha',
			'metadataEdit.afterADay' => 'Egy nap után',
			'metadataEdit.afterAWeek' => 'Egy hét után',
			'metadataEdit.afterAMonth' => 'Egy hónap után',
			'metadataEdit.onNextRefresh' => 'A következő frissítéskor',
			'metadataEdit.seasons' => 'Évadok',
			'metadataEdit.show' => 'Megjelenítés',
			'metadataEdit.hide' => 'Elrejtés',
			'metadataEdit.episodeOrdering' => 'Epizódok sorrendje',
			'metadataEdit.tmdbAiring' => 'The Movie Database (sugárzási sorrend)',
			'metadataEdit.tvdbAiring' => 'TheTVDB (sugárzási sorrend)',
			'metadataEdit.tvdbAbsolute' => 'TheTVDB (abszolút sorrend)',
			'metadataEdit.metadataLanguage' => 'Metaadatok nyelve',
			'metadataEdit.useOriginalTitle' => 'Eredeti cím használata',
			'metadataEdit.preferredAudioLanguage' => 'Elsődleges hangnyelv',
			'metadataEdit.preferredSubtitleLanguage' => 'Elsődleges feliratnyelv',
			'metadataEdit.subtitleMode' => 'Automatikus feliratválasztási mód',
			'metadataEdit.manuallySelected' => 'Kézzel kiválasztva',
			'metadataEdit.shownWithForeignAudio' => 'Idegen nyelvű hang esetén megjelenítve',
			'metadataEdit.alwaysEnabled' => 'Mindig engedélyezve',
			'metadataEdit.tags' => 'Címkék',
			'metadataEdit.addTag' => 'Címke hozzáadása',
			'metadataEdit.genre' => 'Műfaj',
			'metadataEdit.director' => 'Rendező',
			'metadataEdit.writer' => 'Író',
			'metadataEdit.producer' => 'Producer',
			'metadataEdit.country' => 'Ország',
			'metadataEdit.collection' => 'Gyűjtemény',
			'metadataEdit.label' => 'Kiadó',
			'metadataEdit.quickTag' => 'Gyors címke...',
			'matchScreen.match' => 'Párosítás...',
			'matchScreen.fixMatch' => 'Párosítás javítása...',
			'matchScreen.unmatch' => 'Párosítás megszüntetése',
			'matchScreen.unmatchConfirm' => 'Törlöd ezt a párosítást? A Plex párosítatlanként kezeli az újrapárosításig.',
			'matchScreen.unmatchSuccess' => 'Párosítás megszüntetve',
			'matchScreen.unmatchFailed' => 'Nem sikerült a párosítás megszüntetése',
			'matchScreen.matchApplied' => 'Párosítás alkalmazva',
			'matchScreen.matchFailed' => 'Nem sikerült a párosítás alkalmazása',
			'matchScreen.titleHint' => 'Cím',
			'matchScreen.yearHint' => 'Év',
			'matchScreen.search' => 'Keresés',
			'matchScreen.noMatchesFound' => 'Nincsenek egyezések',
			'serverTasks.title' => 'Szerverfeladatok',
			'serverTasks.failedToLoad' => 'Nem sikerült a feladatok betöltése',
			'serverTasks.noTasks' => 'Nincsenek futó feladatok',
			'trakt.title' => 'Trakt',
			'trakt.connected' => 'Csatlakoztatva',
			'trakt.connectedAs' => ({required Object username}) => '@${username} néven csatlakoztatva',
			'trakt.disconnectConfirm' => 'Leválasztod a Trakt-fiókot?',
			'trakt.disconnectConfirmBody' => 'A Luroka nem küld több eseményt a Traktnak. Bármikor újracsatlakozhatsz.',
			'trakt.scrobble' => 'Valós idejű scrobbling',
			'trakt.scrobbleDescription' => 'Lejátszási, szüneteltetési és leállítási események küldése a Traktnak lejátszás közben.',
			'trakt.watchedSync' => 'Megtekintési állapot szinkronizálása',
			'trakt.watchedSyncDescription' => 'Ha egy elemet megtekintettként jelölsz meg a Lurokaben, a Trakt is megtekintettként jelöli.',
			'seerr.title' => 'Seerr',
			'seerr.connectTitle' => 'Seerr csatlakoztatása',
			'seerr.serverUrl' => 'Szerver URL-címe',
			'seerr.serverUrlHelper' => 'A Seerr példányod címe',
			'seerr.checkServer' => 'Folytatás',
			'seerr.signInWithJellyfin' => 'Bejelentkezés Jellyfinnel',
			'seerr.signInWithEmby' => 'Bejelentkezés Emby-vel',
			'seerr.signInWithLocal' => 'Helyi fiók használata',
			'seerr.email' => 'E-mail',
			'seerr.noSignInMethods' => 'Ez a Seerr példány nem kínál olyan bejelentkezési módot, amit a Luroka támogat.',
			'seerr.instance' => 'Példány',
			'seerr.disconnectConfirm' => 'Leválasztod a Seerr-kapcsolatot?',
			'seerr.disconnectConfirmBody' => 'A Luroka elfelejti ezt a Seerr példányt. Bármikor újracsatlakozhatsz.',
			'seerr.request' => 'Igénylés',
			'seerr.request4k' => 'Igénylés 4K-ban',
			'seerr.seasons' => 'Évadok',
			'seerr.allSeasons' => 'Minden évad',
			'seerr.advancedOptions' => 'Haladó',
			'seerr.destinationServer' => 'Célszerver',
			'seerr.qualityProfile' => 'Minőségi profil',
			'seerr.rootFolder' => 'Gyökérmappa',
			'seerr.languageProfile' => 'Nyelvi profil',
			'seerr.tags' => 'Címkék',
			'seerr.noTags' => 'Nincsenek címkék',
			'seerr.defaultOption' => ({required Object name}) => '${name} (alapértelmezett)',
			'seerr.animeNote' => 'Ez a sorozat anime.',
			'seerr.requestSubmitted' => 'Igénylés elküldve',
			'seerr.requestFailed' => ({required Object error}) => 'Az igénylés nem sikerült: ${error}',
			'seerr.requestsLoadFailed' => 'Nem sikerült betölteni az igénylési opciókat',
			'seerr.nothingToRequest' => 'Minden elem már elérhető vagy igényelve van.',
			'seerr.statusAvailable' => 'Elérhető',
			'seerr.statusPartiallyAvailable' => 'Részben elérhető',
			'seerr.statusRequested' => 'Igényelve',
			'seerr.statusProcessing' => 'Feldolgozás alatt',
			_ => null,
		} ?? switch (path) {
			'seerr.statusBlocklisted' => 'Tiltólistán',
			'seerr.couldNotReach' => ({required Object url, required Object error}) => 'Nem sikerült elérni ezt: ${url}: ${error}',
			'seerr.noInstanceAtUrl' => ({required Object url, required Object status}) => 'Nem található Seerr-példány ezen a címen: ${url} (HTTP ${status})',
			'seerr.behindAuthProxy' => 'A Seerr helyett egy hitelesítő fordított proxy (SSO vagy HTTP-hitelesítés) válaszolt. A Luroka nem tud rajta bejelentkezni: engedd, hogy a Seerr /api/v1 útvonala megkerülje a proxyt ennél az alkalmazásnál, vagy használj olyan címet, amely közvetlenül eléri a Seerr-t.',
			'seerr.invalidUrl' => 'Adj meg egy szervercímet, például: https://seerr.example.com',
			'seerr.quickConnectUnsupported' => 'Ez a Seerr-példány nem támogatja a Quick Connectet. Seerr 3.4 vagy újabb verzió szükséges.',
			'seerr.notInitialized' => 'Ennek a Seerr-példánynak a kezdeti beállítása még nem fejeződött be',
			'seerr.noPlexTokenForReauth' => 'Nem áll rendelkezésre Plex-token az újbóli bejelentkezéshez',
			'seerr.noStoredCredentials' => 'Nem állnak rendelkezésre mentett hitelesítő adatok az újbóli bejelentkezéshez',
			'seerr.signInRejected' => 'A bejelentkezést elutasították',
			'seerr.noSessionCookie' => 'A Seerr nem adott ki munkamenet-sütit',
			'seerr.freshCookieRejected' => 'A Seerr elutasította az új munkamenet-sütit',
			'seerr.noUserInformation' => 'A Seerr nem adott vissza felhasználói adatokat',
			'seerr.sessionRejectedAfterReauth' => 'A munkamenetet az újbóli bejelentkezés után elutasították',
			'seerr.permissionDenied' => 'A Seerr elutasította ezt a műveletet: a fiókod már nem rendelkezik a szükséges jogosultsággal',
			'seerr.permissionRevoked' => 'Már nincs jogosultságod ennek az igényléséhez',
			'services.title' => 'Szolgáltatások',
			'services.hubSubtitle' => 'Megtekintési haladás szinkronizálása és új tartalmak igénylése.',
			'services.discoverySection' => 'Felfedezés és kérések',
			'services.trackingSection' => 'Megtekintés követése és listák',
			'services.seerrDescription' => 'Keressen filmeket és sorozatokat, és küldjön kéréseket a Seerr-szerveréről.',
			'services.tmdbDescription' => 'Fedezzen fel filmeket és sorozatokat, posztereket, értékeléseket és részleteket.',
			'services.traktDescription' => 'Kövesse a filmeket és sorozatokat, szinkronizálja a megtekintési állapotot, és kezelje a listáját.',
			'services.malDescription' => 'Tartsa szinkronban anime-listáját és megtekintési előrehaladását.',
			'services.anilistDescription' => 'Kövesse az animéket, és szinkronizálja megtekintési előrehaladását az AniListtel.',
			'services.simklDescription' => 'Kövesse filmjeit, sorozatait és animéit a Simkl segítségével.',
			'services.mdblistDescription' => 'Csatlakoztassa MDBList-listáit és filmértékeléseit.',
			'services.connectionIntro' => ({required Object service}) => 'Csatlakoztassa a(z) ${service} szolgáltatást az aktuális Luroka-profiljához. A kapcsolatot és beállításait bármikor itt kezelheti.',
			'services.connectService' => ({required Object service}) => '${service} csatlakoztatása',
			'services.seerrConnectDescription' => 'Csatlakoztassa Seerr-szerverét, hogy filmeket és sorozatokat fedezzen fel és kérjen a Lurokából.',
			'services.seerrServerStep' => 'Adja meg azt a címet, amellyel megnyitja a Seerrt. Ellenőrizzük, mely bejelentkezési módokat támogatja a szerver.',
			'services.seerrSignInStep' => 'Válasszon a szerver által támogatott bejelentkezési módok közül.',
			'services.integrations' => 'Integrációk',
			'services.notConnected' => 'Nincs csatlakoztatva',
			'services.connectedAs' => ({required Object username}) => '@${username} néven csatlakoztatva',
			'services.scrobble' => 'Haladás automatikus követése',
			'services.scrobbleDescription' => 'Lista frissítése, amikor befejezel egy epizódot vagy filmet.',
			'services.disconnectConfirm' => ({required Object service}) => 'Leválasztod a(z) ${service} szolgáltatást?',
			'services.disconnectConfirmBody' => ({required Object service}) => 'A Luroka nem frissíti többé a(z) ${service} adatait. Bármikor újracsatlakozhatsz.',
			'services.connectFailed' => ({required Object service}) => 'Nem sikerült csatlakozni a következőhöz: ${service}. Próbáld újra.',
			'services.names.mal' => 'MyAnimeList',
			'services.names.anilist' => 'AniList',
			'services.names.simkl' => 'Simkl',
			'services.names.seerr' => 'Seerr',
			'services.names.mdblist' => 'MDBList',
			'services.simklReconnect.title' => 'Csatlakoztassa újra a Simkl-t',
			'services.simklReconnect.subtitle' => 'A Simkl megszünteti a kapcsolat által használt bejelentkezési módot. Az újracsatlakozás megnyitja a simkl.com webhelyet a Luroka jóváhagyásához — A Luroka soha nem látja jelszavát. Megtekintési előzményei a Simkl-n maradnak.',
			'services.deviceCode.title' => ({required Object service}) => 'Luroka aktiválása a következőn: ${service}',
			'services.deviceCode.instructions' => 'Olvasd be a QR-kódot, vagy nyisd meg az alábbi címet, és írd be ezt a kódot:',
			'services.deviceCode.openToActivate' => ({required Object service}) => 'Nyisd meg a(z) ${service} oldalt az aktiváláshoz',
			'services.deviceCode.copyCode' => 'Aktiválási kód másolása',
			'services.deviceCode.waitingForAuthorization' => 'Várakozás az engedélyezésre…',
			'services.deviceCode.codeCopied' => 'Kód másolva',
			'services.oauthProxy.title' => ({required Object service}) => 'Bejelentkezés ide: ${service}',
			'services.oauthProxy.body' => 'Olvasd be ezt a QR-kódot vagy nyisd meg az URL-t bármelyik eszközön.',
			'services.oauthProxy.openToSignIn' => ({required Object service}) => 'Nyisd meg a(z) ${service} oldalt a bejelentkezéshez',
			'services.pendingAuth.copyUrl' => 'Bejelentkezési URL másolása',
			'services.pendingAuth.urlCopied' => 'URL másolva',
			'services.libraryFilter.title' => 'Könyvtárszűrő',
			'services.libraryFilter.subtitleAllSyncing' => 'Minden könyvtár szinkronizálása',
			'services.libraryFilter.subtitleNoneSyncing' => 'Nincs szinkronizálás',
			'services.libraryFilter.subtitleBlocked' => ({required Object count}) => '${count} kizárva',
			'services.libraryFilter.subtitleAllowed' => ({required Object count}) => '${count} engedélyezve',
			'services.libraryFilter.mode' => 'Szűrési mód',
			'services.libraryFilter.modeBlacklist' => 'Tiltólista',
			'services.libraryFilter.modeWhitelist' => 'Engedélyezőlista',
			'services.libraryFilter.modeHintBlacklist' => 'Minden könyvtár szinkronizálása az alább bejelöltek kivételével.',
			'services.libraryFilter.modeHintWhitelist' => 'Csak az alább bejelölt könyvtárak szinkronizálása.',
			'services.libraryFilter.libraries' => 'Könyvtárak',
			'services.libraryFilter.noLibraries' => 'Nincsenek elérhető könyvtárak',
			'offlineRecovery.title' => 'A szerverei offline állapotban vannak',
			'offlineRecovery.description' => 'A letöltések továbbra is elérhetők. Próbáljon meg újra csatlakozni, amikor a szerver visszatér, vagy adjon hozzá egy másik szervert.',
			'offlineRecovery.appleTvDescription' => 'A Luroka nem tudta elérni a médiaszervereket. Próbáljon meg újra csatlakozni, amikor elérhetők, vagy adjon hozzá egy másik szervert a megtekintés folytatásához.',
			'offlineRecovery.kidsDescription' => 'Nem tudtuk elérni a médiaszerverét. Próbáljon újra csatlakozni, vagy kérjen segítséget egy szülőtől.',
			'offlineRecovery.retrying' => 'Csatlakozás…',
			'offlineRecovery.addServer' => 'Szerver hozzáadása',
			'releaseUpdates.manualInstructions' => 'Töltse le a kiadási archívumot a GitHub webhelyről, csomagolja ki a APK fájlt, és telepítse a Android eszközére.',
			'releaseUpdates.tvInstructions' => 'Nyissa meg ezt a címet telefonján vagy számítógépén, vagy olvassa be a QR-kódot a kiadás letöltéséhez.',
			'releaseUpdates.pressBackAgain' => 'Nyomja meg ismét a Vissza gombot a lejátszásból való kilépéshez',
			'profileIntegrations.title' => 'Legyen a Luroka a magáé',
			'profileIntegrations.description' => 'Csatlakoztassa kedvenc szolgáltatásait, hogy nyomon kövesse, mit néz, és kérjen új filmeket és műsorokat. Minden Luroka profilnak saját csatlakozásai vannak.',
			'profileIntegrations.step' => 'Választható integrációk',
			'profileIntegrations.examples' => 'Trakt · Simkl · AniList · MyAnimeList · Seerr',
			'profileIntegrations.connect' => 'Fedezze fel az integrációkat',
			'profileIntegrations.later' => 'Állítsa be később',
			'profileIntegrations.manage' => 'Integrációk kezelése',
			'profileIntegrations.forProfile' => ({required Object name}) => '${name} csatlakozások',
			'profileSetupGuide.title' => 'Tedd sajátoddá profilodat',
			'profileSetupGuide.description' => 'Válassza ki, hogy a Luroka hogyan nézzen ki és érezzen ezt a profilt ezen az eszközön. Később mindent módosíthat a Beállításokban.',
			'profileSetupGuide.appearanceStep' => '1 / 2 · Megjelenés',
			'profileSetupGuide.homeStep' => '2/2 · A kezdőképernyő',
			'profileSetupGuide.preview' => 'Előnézet',
			'profileSetupGuide.previewTitle' => 'Az Ön Otthona',
			'profileSetupGuide.previewPoster' => 'Plakát',
			'profileSetupGuide.posterArtwork' => 'Csak műalkotás',
			'profileSetupGuide.posterWithDetails' => 'A plakát részleteinek megjelenítése',
			'profileSetupGuide.musicDescription' => 'Játssz le egy filmet vagy műsort, miközben a részletes oldal meg van nyitva, ha elérhető.',
			'profileSetupGuide.moreThemes' => 'További témák',
			'profileSetupGuide.fewerThemes' => 'Kevesebb téma',
			'profileSetupGuide.spotlightHeading' => 'Mi jelenjen meg a Spotlightban?',
			'profileSetupGuide.progressHeading' => 'Folytassa a megtekintést és a Következő oldalt',
			'profileSetupGuide.skip' => 'Használja az alapértelmezett beállításokat, és kezdje el nézni',
			'profileSetupGuide.finish' => 'Kezdje el nézni',
			'profileSetupGuide.back' => 'Vissza',
			'profileSetupGuide.kContinue' => 'Folytatás',
			'profileSetupGuide.chooseLater' => 'Válasszon később könyvtárakat',
			'profileSetupGuide.libraryScope' => 'Ez megváltoztatja, hogy mi jelenik meg a Lurokában ezen a profilon; a szerver engedélyeit nem módosítja.',
			'profileSetupGuide.createdTitle' => 'Profil létrehozva',
			'profileSetupGuide.createdDescription' => 'Elkészült az új profilod. Tulajdonosa az első kinyitáskor személyre szabhatja.',
			'profileSetupGuide.switchProfile' => 'Váltás erre a profilra',
			'profileSetupGuide.stayHere' => 'Maradjon az aktuális profilnál',
			'animeFavorites.filter' => 'Anime',
			'animeFavorites.manage' => 'Anime kezelése',
			'animeFavorites.description' => 'Az automatikus felismerés animekönyvtár-neveket és elérhető animecímkéket vagy azonosítókat használ. Válasszon könyvtárakat, és javítsa ki az egyéni kedvenceket. A választásokat a rendszer ezen az eszközön menti profiljához.',
			'animeFavorites.libraries' => 'Anime könyvtárak',
			'animeFavorites.libraryHint' => 'Az Anime nevű könyvtárakat a rendszer automatikusan felismeri. Válasszon ki egy könyvtárat a besorolás módosításához.',
			'animeFavorites.titles' => 'Kedvenc címek',
			'animeFavorites.titleHint' => 'Válasszon ki egy címet, hogy animeként jelölje meg, vagy javítsa ki az automatikus egyezést.',
			'animeFavorites.automatic' => 'Automatikus',
			'animeFavorites.include' => 'Anime',
			'animeFavorites.exclude' => 'Nem anime',
			'animeFavorites.automaticIncluded' => 'Automatikus · Anime',
			'animeFavorites.automaticExcluded' => 'Automatikus · Nem anime',
			'animeFavorites.noLibraries' => 'Nincsenek csatlakoztatott könyvtárak.',
			'animeFavorites.noTitles' => 'Nincsenek kedvenc filmek vagy műsorok.',
			'animeFavorites.empty' => 'Nem található kedvenc anime. Nézze meg animekönyvtárait, vagy jelöljön meg egy címet animeként.',
			'animeFavorites.saveFailed' => 'Nem sikerült menteni az anime beállításait. Kérjük, próbálja újra.',
			'addServer.addMediaBrowserTitle' => ({required Object product}) => '${product} szerver hozzáadása',
			'addServer.serverUrls' => 'Szerver URL-címei',
			'addServer.serverUrlsHelper' => 'Több URL is megadható, vesszővel elválasztva.',
			'addServer.findServer' => 'Szerver keresése',
			'addServer.searchingLocalMediaBrowserServers' => ({required Object product}) => 'Helyi ${product} szerverek keresése...',
			'addServer.localMediaBrowserServers' => ({required Object product}) => 'Mentett és közeli ${product} szerverek',
			'addServer.username' => 'Felhasználónév',
			'addServer.password' => 'Jelszó',
			'addServer.signIn' => 'Bejelentkezés',
			'addServer.change' => 'Módosítás',
			'addServer.required' => 'Kötelező',
			'addServer.couldNotReachServer' => ({required Object error}) => 'Nem sikerült elérni a szervert: ${error}',
			'addServer.signInFailed' => ({required Object error}) => 'A bejelentkezés nem sikerült: ${error}',
			'addServer.quickConnectFailed' => ({required Object error}) => 'A Quick Connect használata nem sikerült: ${error}',
			'addServer.addPlexTitle' => 'Bejelentkezés Plexszel',
			'addServer.pinExpired' => 'A PIN-kód a bejelentkezés előtt lejárt. Próbáld újra.',
			'addServer.failedToRegisterAccount' => ({required Object error}) => 'Nem sikerült a fiók regisztrálása: ${error}',
			'addServer.enterMediaBrowserUrlError' => ({required Object product}) => 'Adja meg a(z) ${product} szerver URL-jét',
			'addServer.addConnectionTitle' => 'Kapcsolat hozzáadása',
			'addServer.addConnectionTitleScoped' => ({required Object name}) => 'Hozzáadás a következőhöz: ${name}',
			'addServer.signInWithPlexCard' => 'Bejelentkezés Plexszel',
			'addServer.signInWithPlexCardSubtitle' => 'Eszköz engedélyezése. A megosztott szerverek hozzáadásra kerülnek.',
			'addServer.signInWithPlexCardSubtitleScoped' => 'Plex-fiók engedélyezése. A Plex Home-felhasználókból profilok lesznek.',
			'addServer.connectToMediaBrowserCard' => ({required Object product}) => 'Csatlakozás a(z) ${product} szolgáltatáshoz',
			'addServer.connectToMediaBrowserCardSubtitle' => 'Adja meg a szerver URL-jét, felhasználónevét és jelszavát.',
			'addServer.connectToMediaBrowserCardSubtitleScoped' => ({required Object product, required Object name}) => 'Jelentkezzen be a(z) ${product} szerverére. A(z) ${name} szolgáltatáshoz kötődik.',
			'addServer.borrowFromAnotherProfile' => 'Kapcsolat használata másik profilból',
			'addServer.borrowFromAnotherProfileSubtitle' => 'Egy másik profil kapcsolatának használata. A PIN-kóddal védett profilokhoz PIN-kód szükséges.',
			'addServer.invalidCredentials' => 'Érvénytelen felhasználónév vagy jelszó',
			'addServer.authResponseNotJson' => 'A hitelesítési válasz nem érvényes JSON',
			'addServer.authResponseIncomplete' => 'A szerver bejelentkezési válasza hiányos volt',
			'addServer.quickConnectRejected' => 'A szerver elutasította a Quick Connect-kérést',
			'addServer.quickConnectNotJson' => 'A Quick Connect válasza nem érvényes JSON',
			'addServer.quickConnectMissingFields' => 'A Quick Connect válaszából hiányzik a kód vagy a titkos kulcs',
			'addServer.quickConnectPollRejected' => 'A szerver elutasította a Quick Connect lekérdezését',
			'addServer.serverTimedOut' => 'A szerver nem válaszolt időben',
			'addServer.responseNotJson' => 'A szerver válasza nem érvényes JSON',
			'addServer.responseMissingIdentity' => ({required Object product}) => 'A válaszból hiányzik az azonosító vagy a szerver neve – ez valóban ${product}-szerver?',
			'addServer.probeFailed' => ({required Object error}) => 'Nem sikerült elérni a szervert: ${error}',
			'addServer.enterAtLeastOneUrl' => ({required Object product}) => 'Adj meg legalább egy ${product}-szerverhez tartozó URL-t',
			'addServer.noReachableServer' => ({required Object product}) => 'Nem található elérhető ${product}-szerver',
			'addServer.urlsPointToDifferentServers' => ({required Object product}) => 'Ezek az URL-ek különböző ${product}-szerverekre mutatnak',
			'addServer.urlDoesNotMatchServer' => ({required Object product}) => 'Ez az URL nem egyezik a(z) ${product}-szerverrel',
			'addServer.redirectUnsupported' => 'A szerver nem támogatott URL-re irányított át',
			'addServer.redirectDifferentHost' => ({required Object product}) => 'A szerver egy másik gazdagépre irányított át. Add meg közvetlenül a végleges ${product} URL-t.',
			'addServer.redirectInsecure' => 'A szerver HTTPS-ről nem biztonságos URL-re irányított át',
			'addServer.redirectUnsupportedEnterFinal' => ({required Object product}) => 'A szerver nem támogatott URL-re irányított át. Add meg közvetlenül a végleges ${product} URL-t.',
			_ => null,
		};
	}
}
