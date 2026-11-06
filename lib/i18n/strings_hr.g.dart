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
class TranslationsHr extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsHr({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.hr,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <hr>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsHr _root = this; // ignore: unused_field

	@override 
	TranslationsHr $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsHr(meta: meta ?? this.$meta);

	// Translations
	@override late final _Translations$mobileLibrary$hr mobileLibrary = _Translations$mobileLibrary$hr._(_root);
	@override late final _Translations$profileStartup$hr profileStartup = _Translations$profileStartup$hr._(_root);
	@override late final _Translations$subtitleUpload$hr subtitleUpload = _Translations$subtitleUpload$hr._(_root);
	@override late final _Translations$personSpotlight$hr personSpotlight = _Translations$personSpotlight$hr._(_root);
	@override late final _Translations$detailExtras$hr detailExtras = _Translations$detailExtras$hr._(_root);
	@override late final _Translations$mobileUi$hr mobileUi = _Translations$mobileUi$hr._(_root);
	@override late final _Translations$family$hr family = _Translations$family$hr._(_root);
	@override late final _Translations$posterDetails$hr posterDetails = _Translations$posterDetails$hr._(_root);
	@override late final _Translations$libraryPolish$hr libraryPolish = _Translations$libraryPolish$hr._(_root);
	@override late final _Translations$showSchedule$hr showSchedule = _Translations$showSchedule$hr._(_root);
	@override late final _Translations$awardsCatalog$hr awardsCatalog = _Translations$awardsCatalog$hr._(_root);
	@override late final _Translations$searchDiscovery$hr searchDiscovery = _Translations$searchDiscovery$hr._(_root);
	@override late final _Translations$lurokaPlayerDesign$hr lurokaPlayerDesign = _Translations$lurokaPlayerDesign$hr._(_root);
	@override late final _Translations$lurokaWorkspace$hr lurokaWorkspace = _Translations$lurokaWorkspace$hr._(_root);
	@override late final _Translations$mobileFixes$hr mobileFixes = _Translations$mobileFixes$hr._(_root);
	@override late final _Translations$downloadsRedesign$hr downloadsRedesign = _Translations$downloadsRedesign$hr._(_root);
	@override late final _Translations$kidsShelf$hr kidsShelf = _Translations$kidsShelf$hr._(_root);
	@override late final _Translations$kidsHome$hr kidsHome = _Translations$kidsHome$hr._(_root);
	@override late final _Translations$tvSettingsV2$hr tvSettingsV2 = _Translations$tvSettingsV2$hr._(_root);
	@override late final _Translations$settingsRedesign$hr settingsRedesign = _Translations$settingsRedesign$hr._(_root);
	@override late final _Translations$onboarding$hr onboarding = _Translations$onboarding$hr._(_root);
	@override late final _Translations$household$hr household = _Translations$household$hr._(_root);
	@override late final _Translations$detailComposition$hr detailComposition = _Translations$detailComposition$hr._(_root);
	@override late final _Translations$kids$hr kids = _Translations$kids$hr._(_root);
	@override late final _Translations$lurokaDiscovery$hr lurokaDiscovery = _Translations$lurokaDiscovery$hr._(_root);
	@override late final _Translations$app$hr app = _Translations$app$hr._(_root);
	@override late final _Translations$appIcon$hr appIcon = _Translations$appIcon$hr._(_root);
	@override late final _Translations$auth$hr auth = _Translations$auth$hr._(_root);
	@override late final _Translations$common$hr common = _Translations$common$hr._(_root);
	@override late final _Translations$tvHints$hr tvHints = _Translations$tvHints$hr._(_root);
	@override late final _Translations$screens$hr screens = _Translations$screens$hr._(_root);
	@override late final _Translations$mediaExtras$hr mediaExtras = _Translations$mediaExtras$hr._(_root);
	@override late final _Translations$update$hr update = _Translations$update$hr._(_root);
	@override late final _Translations$supporter$hr supporter = _Translations$supporter$hr._(_root);
	@override late final _Translations$settings$hr settings = _Translations$settings$hr._(_root);
	@override late final _Translations$themeEditor$hr themeEditor = _Translations$themeEditor$hr._(_root);
	@override late final _Translations$seriesBrowser$hr seriesBrowser = _Translations$seriesBrowser$hr._(_root);
	@override late final _Translations$titlePage$hr titlePage = _Translations$titlePage$hr._(_root);
	@override late final _Translations$tvMenus$hr tvMenus = _Translations$tvMenus$hr._(_root);
	@override late final _Translations$lurokaPlayer$hr lurokaPlayer = _Translations$lurokaPlayer$hr._(_root);
	@override late final _Translations$lurokaSettings$hr lurokaSettings = _Translations$lurokaSettings$hr._(_root);
	@override late final _Translations$playerChrome$hr playerChrome = _Translations$playerChrome$hr._(_root);
	@override late final _Translations$tvLayout$hr tvLayout = _Translations$tvLayout$hr._(_root);
	@override late final _Translations$studios$hr studios = _Translations$studios$hr._(_root);
	@override late final _Translations$dashboard$hr dashboard = _Translations$dashboard$hr._(_root);
	@override late final _Translations$lurokaCatalog$hr lurokaCatalog = _Translations$lurokaCatalog$hr._(_root);
	@override late final _Translations$referenceDetails$hr referenceDetails = _Translations$referenceDetails$hr._(_root);
	@override late final _Translations$lurokaThemes$hr lurokaThemes = _Translations$lurokaThemes$hr._(_root);
	@override late final _Translations$customPerformance$hr customPerformance = _Translations$customPerformance$hr._(_root);
	@override late final _Translations$homeLayout$hr homeLayout = _Translations$homeLayout$hr._(_root);
	@override late final _Translations$screenTime$hr screenTime = _Translations$screenTime$hr._(_root);
	@override late final _Translations$activityStats$hr activityStats = _Translations$activityStats$hr._(_root);
	@override late final _Translations$search$hr search = _Translations$search$hr._(_root);
	@override late final _Translations$hotkeys$hr hotkeys = _Translations$hotkeys$hr._(_root);
	@override late final _Translations$fileInfo$hr fileInfo = _Translations$fileInfo$hr._(_root);
	@override late final _Translations$mediaMenu$hr mediaMenu = _Translations$mediaMenu$hr._(_root);
	@override late final _Translations$rateSheet$hr rateSheet = _Translations$rateSheet$hr._(_root);
	@override late final _Translations$accessibility$hr accessibility = _Translations$accessibility$hr._(_root);
	@override late final _Translations$tooltips$hr tooltips = _Translations$tooltips$hr._(_root);
	@override late final _Translations$audioTracks$hr audioTracks = _Translations$audioTracks$hr._(_root);
	@override late final _Translations$videoControls$hr videoControls = _Translations$videoControls$hr._(_root);
	@override late final _Translations$messages$hr messages = _Translations$messages$hr._(_root);
	@override late final _Translations$sourceLibraries$hr sourceLibraries = _Translations$sourceLibraries$hr._(_root);
	@override late final _Translations$subtitlingStyling$hr subtitlingStyling = _Translations$subtitlingStyling$hr._(_root);
	@override late final _Translations$mpvConfig$hr mpvConfig = _Translations$mpvConfig$hr._(_root);
	@override late final _Translations$dialog$hr dialog = _Translations$dialog$hr._(_root);
	@override late final _Translations$profiles$hr profiles = _Translations$profiles$hr._(_root);
	@override late final _Translations$connections$hr connections = _Translations$connections$hr._(_root);
	@override late final _Translations$serversAccounts$hr serversAccounts = _Translations$serversAccounts$hr._(_root);
	@override late final _Translations$accountPreferences$hr accountPreferences = _Translations$accountPreferences$hr._(_root);
	@override late final _Translations$discover$hr discover = _Translations$discover$hr._(_root);
	@override late final _Translations$errors$hr errors = _Translations$errors$hr._(_root);
	@override late final _Translations$libraries$hr libraries = _Translations$libraries$hr._(_root);
	@override late final _Translations$about$hr about = _Translations$about$hr._(_root);
	@override late final _Translations$serverSelection$hr serverSelection = _Translations$serverSelection$hr._(_root);
	@override late final _Translations$hubDetail$hr hubDetail = _Translations$hubDetail$hr._(_root);
	@override late final _Translations$logs$hr logs = _Translations$logs$hr._(_root);
	@override late final _Translations$startup$hr startup = _Translations$startup$hr._(_root);
	@override late final _Translations$licenses$hr licenses = _Translations$licenses$hr._(_root);
	@override late final _Translations$navigation$hr navigation = _Translations$navigation$hr._(_root);
	@override late final _Translations$explore$hr explore = _Translations$explore$hr._(_root);
	@override late final _Translations$liveTv$hr liveTv = _Translations$liveTv$hr._(_root);
	@override late final _Translations$collections$hr collections = _Translations$collections$hr._(_root);
	@override late final _Translations$playlists$hr playlists = _Translations$playlists$hr._(_root);
	@override late final _Translations$music$hr music = _Translations$music$hr._(_root);
	@override late final _Translations$watchTogether$hr watchTogether = _Translations$watchTogether$hr._(_root);
	@override late final _Translations$downloads$hr downloads = _Translations$downloads$hr._(_root);
	@override late final _Translations$shaders$hr shaders = _Translations$shaders$hr._(_root);
	@override late final _Translations$companionRemote$hr companionRemote = _Translations$companionRemote$hr._(_root);
	@override late final _Translations$videoSettings$hr videoSettings = _Translations$videoSettings$hr._(_root);
	@override late final _Translations$performanceOverlay$hr performanceOverlay = _Translations$performanceOverlay$hr._(_root);
	@override late final _Translations$externalPlayer$hr externalPlayer = _Translations$externalPlayer$hr._(_root);
	@override late final _Translations$metadataEdit$hr metadataEdit = _Translations$metadataEdit$hr._(_root);
	@override late final _Translations$matchScreen$hr matchScreen = _Translations$matchScreen$hr._(_root);
	@override late final _Translations$serverTasks$hr serverTasks = _Translations$serverTasks$hr._(_root);
	@override late final _Translations$trakt$hr trakt = _Translations$trakt$hr._(_root);
	@override late final _Translations$seerr$hr seerr = _Translations$seerr$hr._(_root);
	@override late final _Translations$services$hr services = _Translations$services$hr._(_root);
	@override late final _Translations$offlineRecovery$hr offlineRecovery = _Translations$offlineRecovery$hr._(_root);
	@override late final _Translations$releaseUpdates$hr releaseUpdates = _Translations$releaseUpdates$hr._(_root);
	@override late final _Translations$profileIntegrations$hr profileIntegrations = _Translations$profileIntegrations$hr._(_root);
	@override late final _Translations$addServer$hr addServer = _Translations$addServer$hr._(_root);
}

// Path: mobileLibrary
class _Translations$mobileLibrary$hr extends Translations$mobileLibrary$en {
	_Translations$mobileLibrary$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get pickerSubtitle => 'Odaberite zbirku za istraživanje';
	@override String get searchLibraries => 'Pretraži biblioteke';
	@override String get noLibraries => 'Nema odgovarajućih biblioteka';
	@override String get ascending => 'Uzlazno';
	@override String get descending => 'Silazno';
	@override String get sort => 'Poredaj';
	@override String unwatchedCount({required Object count}) => '${count} neodgledanih epizoda';
	@override String get latestEpisode => 'Najnovija epizoda';
}

// Path: profileStartup
class _Translations$profileStartup$hr extends Translations$profileStartup$en {
	_Translations$profileStartup$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get autoLogin => 'Otvorite posljednji korišteni profil';
	@override String get autoLoginHint => 'Automatski otvori posljednji profil kada ne zahtijeva PIN.';
	@override String get allowKidsExit => 'Dopusti izlazak iz dječjeg profila bez roditeljskog PIN-a';
	@override String get allowKidsExitHint => 'Djetetu omogućuje prelazak na drugi profil bez roditeljskog PIN-a. PIN-ovi profila i dalje vrijede.';
	@override String get chooseKidsConnection => 'Odaberite drugi račun ili poslužitelj';
	@override String get chooseKidsConnectionHint => 'Nakon spremanja povežite zaseban račun ili odaberite vezu s drugog profila.';
}

// Path: subtitleUpload
class _Translations$subtitleUpload$hr extends Translations$subtitleUpload$en {
	_Translations$subtitleUpload$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get chooseFile => 'Prenesi datoteku s titlovima';
	@override String get hint => 'Odaberite jezik, a zatim prenesite datoteku SRT, ASS, SSA ili VTT na ovaj poslužitelj.';
	@override String get success => 'Titl je prenesen na poslužitelj. Pojavit će se nakon osvježavanja stavke na poslužitelju.';
	@override String get failed => 'Nije moguće prenijeti titl. Provjerite datoteku i dopuštenja poslužitelja.';
}

// Path: personSpotlight
class _Translations$personSpotlight$hr extends Translations$personSpotlight$en {
	_Translations$personSpotlight$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get inYourLibraries => 'u vašim bibliotekama';
	@override String libraryTitles({required Object n}) => 'U vašim bibliotekama · ${n} naslova';
	@override String get readBiography => 'Pročitajte biografiju';
	@override String get newestFirst => 'Prvo najnoviji';
	@override String get oldestFirst => 'Prvo najstariji';
	@override String get titleAscending => 'Naslov A–Z';
	@override String get sortTitles => 'Poredaj filmografiju';
	@override String unwatchedEpisodes({required Object n}) => '${n} neodgledanih epizoda';
	@override String copies({required Object n}) => '${n} kopija u biblioteci';
	@override String versions({required Object n}) => '${n} verzija datoteke';
	@override String get retryTitles => 'Nije moguće učitati sve naslove. Pokušajte ponovno.';
}

// Path: detailExtras
class _Translations$detailExtras$hr extends Translations$detailExtras$en {
	_Translations$detailExtras$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get onlineVideos => 'Najave i dodaci';
	@override String get reviews => 'Recenzije';
	@override String get readReview => 'Pročitaj cijelu recenziju';
	@override String directedBy({required Object name}) => 'Još filmova u režiji ${name}';
	@override String get previewUnavailable => 'Nije moguće reproducirati najavu. Možete je otvoriti u izvornoj aplikaciji.';
	@override String get openExternally => 'Otvori izvorni video';
}

// Path: mobileUi
class _Translations$mobileUi$hr extends Translations$mobileUi$en {
	_Translations$mobileUi$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get readMore => 'Pročitaj više';
	@override String get readLess => 'Prikaži manje';
	@override String get playbackTools => 'Opcije reprodukcije';
	@override String get streamingQuality => 'Kvaliteta slike';
	@override String get fileVersions => 'Verzije datoteka';
	@override String get qualityAndVersions => 'Kvaliteta slike i verzije datoteka';
	@override String get hidePlaybackTools => 'Sakrij alate za reprodukciju';
	@override String remaining({required Object time}) => 'Preostalo je ${time}';
	@override String endsAt({required Object time}) => 'Završava u ${time}';
	@override String get collection => 'Vaša zbirka';
	@override String get nowPlaying => 'TRENUTNO SE REPRODUCIRA';
	@override String get popularLibrary => 'Popularno u vašoj biblioteci';
	@override String get weeklyLibrary => 'Popularno u vašoj biblioteci ovog tjedna';
}

// Path: family
class _Translations$family$hr extends Translations$family$en {
	_Translations$family$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profili i obitelj';
	@override String get yourPeople => 'Članovi kućanstva';
	@override String get manageHint => 'Upravljajte osobama, sigurnošću djece i aktivnostima gledanja na ovom uređaju.';
	@override String get people => 'Ljudi';
	@override String peopleCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hr'))(n,
		one: '${n} osoba',
		few: '${n} osobe',
		other: '${n} osoba',
	);
	@override String kidsCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hr'))(n,
		one: '${n} dijete',
		few: '${n} djece',
		other: '${n} djece',
	);
	@override String get you => 'Vi';
	@override String get adult => 'Odrasli';
	@override String get child => 'Dijete';
	@override String get adultTeen => 'Odrasla osoba ili tinejdžer';
	@override String get adultHint => 'Vlastiti profil, neobvezni PIN za profil i vlastite veze s poslužiteljima.';
	@override String get childHint => 'Dobna ograničenja, sigurne biblioteke i izgled prilagođen djeci. Roditeljski PIN štiti ove postavke.';
	@override String upToAge({required Object age}) => 'Do ${age} godina';
	@override String get allAges => 'Za sve uzraste';
	@override String get switchProfile => 'Promijeni profil';
	@override String get switchHint => 'Odaberite tko gleda. Upravljanje članom kućanstva ne mijenja aktivni profil.';
	@override String get addPerson => 'Dodaj osobu';
	@override String get addChild => 'Dodaj dijete';
	@override String get addHint => 'Izradite profil za odrasle, tinejdžere ili djecu na ovom uređaju.';
	@override String get emptyPeople => 'Napravite mjesta za sve koji gledaju s vama.';
	@override String get emptyKids => 'Još nema dječjih profila. Dodajte profil kako biste postavili dobna ograničenja i odabrali sigurne biblioteke.';
	@override String get safety => 'Djeca i sigurnost';
	@override String get safetyHint => 'Roditeljski PIN, dječji profili i dobna ograničenja.';
	@override String get protection => 'zaštita';
	@override String get kidsProfiles => 'Dječji profili';
	@override String get backupHistory => 'Sigurnosna kopija i povijest';
	@override String get parentPinOn => 'Roditeljski PIN je uključen';
	@override String get profilePin => 'PIN profila';
	@override String get confirmParentPin => 'Potvrdite roditeljski PIN';
	@override String get parentPinOff => 'Roditeljski PIN nije postavljen';
	@override String get missingPin => 'Dodajte roditeljski PIN da biste zaštitili ove postavke.';
	@override String get hideScope => 'Sakrij dječju aktivnost u odjeljku Nastavi gledati ovog profila u aplikaciji Luroka. To ne mijenja zajedničku povijest gledanja na poslužitelju.';
	@override String get localScope => 'Dječji profili i ograničenja pohranjuju se na ovom uređaju. Profili koji koriste isti račun na poslužitelju i dalje dijele povijest gledanja tog računa.';
	@override String get clearHistoryConfirm => 'Želite li dopustiti da se sadržaji koje su djeca gledala ponovno pojave u odjeljku Nastavi gledati? Dječji profili, ograničenja, statistika vremena gledanja i povijest gledanja na poslužitelju ostat će sačuvani.';
	@override String get editRestrictions => 'Uredite ograničenja za djecu';
	@override String get activity => 'Aktivnost gledanja';
	@override String namedActivity({required Object name}) => 'Aktivnost gledanja ${name}';
	@override String get thisProfile => 'Ovaj profil';
	@override String get activityScope => 'Vrijeme reprodukcije koje je zabilježio Luroka na ovom uređaju za aktivni profil. Ovo su statistike, a ne ograničenja gledanja ili potpuna povijest poslužitelja.';
	@override String get activityUnavailable => 'Aktivnost gledanja još nije dostupna za ovaj profil.';
	@override String get finished => 'Gotovo';
}

// Path: posterDetails
class _Translations$posterDetails$hr extends Translations$posterDetails$en {
	_Translations$posterDetails$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get showThemeMusic => 'Pusti tematsku glazbu';
	@override String get showThemeMusicDescription => 'Reproduciraj glazbu iz uvodne špice filma ili serije dok je otvorena stranica s pojedinostima, ako je dostupna na poslužitelju.';
	@override String get catalogEpisodeInfo => 'Prikaži broj epizoda i trajanje na karticama kataloga';
	@override String get catalogEpisodeInfoDescription => 'Prikaži broj epizoda i prosječno trajanje na posterima u odjeljku Otkrijte.';
	@override String get title => 'Pojedinosti postera';
	@override String get description => 'Prikaži naslov, godinu i IMDb ocjenu ispod postera u odjeljcima Studiji, Pretraživanje, Otkrijte i Biblioteke. Ako IMDb ocjena nije dostupna, neće se prikazati. Isključi ovu opciju za postere koji prikazuju samo sliku.';
}

// Path: libraryPolish
class _Translations$libraryPolish$hr extends Translations$libraryPolish$en {
	_Translations$libraryPolish$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get posterDetails => 'Detalji plakata';
	@override String get showPosterDetails => 'Prikaži detalje plakata · ime, godinu i IMDb';
	@override String get hidePosterDetails => 'Sakrij detalje plakata';
	@override String get overview => 'Pregled';
	@override String get refreshing => 'Osvježavanje biblioteke...';
	@override String get serverCollections => 'Sve zbirke na ovom poslužitelju';
	@override String get serverPlaylists => 'Svi video popisi za reprodukciju na ovom poslužitelju';
	@override String get libraryCollections => 'Zbirke u ovoj biblioteci';
	@override String get searchCollections => 'Pretraži zbirke';
	@override String get searchPlaylists => 'Pretraži popise za reprodukciju';
	@override String get searchHint => 'Traži po imenu';
	@override String get titleAscending => 'Naslov A–Z';
	@override String get titleDescending => 'Naslov Z–A';
	@override String get clearFilters => 'Očisti filtre';
	@override String get playlistEmptyTitle => 'Vaše filmske večeri, po vašem redoslijedu';
	@override String get playlistEmptyHint => 'U izborniku Više za neki naslov odaberite Dodaj na popis za reprodukciju da biste izradili svoj prvi popis.';
	@override String get noMatches => 'Nema odgovarajućih imena';
	@override String get indexing => 'Pretraživanje cijelog kataloga…';
}

// Path: showSchedule
class _Translations$showSchedule$hr extends Translations$showSchedule$en {
	_Translations$showSchedule$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get today => 'Danas';
	@override String get tomorrow => 'Sutra';
	@override String get latestUpcoming => 'Najnovije i nadolazeće';
	@override String get latestEpisode => 'Najnovija epizoda';
	@override String get upcoming => 'Nadolazeće';
	@override String get inLibrary => 'U vašoj biblioteci';
	@override String get notInLibrary => 'Nije u vašoj biblioteci';
	@override String get notYetAired => 'Još nije emitirano';
	@override String episode({required Object number}) => 'Epizoda ${number}';
	@override String get caughtUp => 'Pogledali ste sve';
	@override String get finished => 'Završili ste ovu seriju';
	@override String nextAirs({required Object date}) => 'Sljedeća epizoda emitira se ${date}';
	@override String get watchBeginning => 'Gledajte od početka';
	@override String get replay => 'Ponovno reproduciraj';
	@override String get playNext => 'Reproduciraj sljedeću epizodu';
}

// Path: awardsCatalog
class _Translations$awardsCatalog$hr extends Translations$awardsCatalog$en {
	_Translations$awardsCatalog$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get awards => 'Nagrade';
	@override String get customize => 'Prilagodite';
	@override String get chooseShelves => 'Prilagodite Otkrijte';
	@override String get shelvesDescription => 'Odaberite retke koje želite u odjeljku Otkrijte. U redcima s nagradama prikazuju se dobitnici koji se nalaze u vašim bibliotekama. Odabir se sprema za ovaj profil.';
	@override String get restoreShelves => 'Vrati zadane postavke';
	@override String get charts => 'IMDb ljestvice';
	@override String get generalShelves => 'Popularno i u trendu';
	@override String get saveShelvesFailed => 'Nije moguće spremiti odabrane odjeljke u Otkrijte. Pokušajte ponovno.';
	@override String get comedyActress => 'Glavna glumica · Komedija';
	@override String get leadDramaActor => 'Glavni glumac · Drama';
	@override String get leadDramaActress => 'Glavna glumica · Drama';
	@override String get comedySupportingActor => 'Sporedni glumac · Komedija';
	@override String get comedySupportingActress => 'Sporedna glumica · Komedija';
	@override String get leadingPerformance => 'Srebrni medvjed · Najbolja glavna uloga';
	@override String get globesComedySeries => 'Najbolja televizijska serija · Mjuzikl ili komedija';
	@override String get limitedSupportingActor => 'Sporedni glumac · Miniserija ili film';
	@override String get limitedSupportingActress => 'Sporedna glumica · Miniserija ili film';
	@override String get berlinDocumentary => 'Nagrada Berlinalea za dokumentarni film';
	@override String get title => 'Nagrade i festivali';
	@override String get chooseCategory => 'Odaberite kategoriju nagrade';
	@override String get winners => 'Pobjednici';
	@override String get nominees => 'Nominirani';
	@override String get releaseDecade => 'Desetljeće izlaska';
	@override String get allYears => 'Sve godine';
	@override String get loading => 'Učitavanje naslova nagrada…';
	@override String get matching => 'Traženje ovih naslova u vašim bibliotekama...';
	@override String get unavailable => 'Podaci o nagradi trenutno nisu dostupni. Pokušajte ponovno.';
	@override String get empty => 'U vašim vidljivim bibliotekama nema naslova iz ove kategorije.';
	@override String get coverage => 'Popis se temelji na podacima Wikidata i može biti nepotpun. Kategorije glumaca i redatelja prikazuju filmove ili serije za koje su nagrađeni. Godine se odnose na izlazak naslova, a ne na dodjelu nagrada.';
	@override String get picture => 'Najbolji film';
	@override String get film => 'Najbolji film';
	@override String get international => 'Najbolji međunarodni film';
	@override String get internationalFilm => 'Najbolji međunarodni film';
	@override String get nonEnglishFilm => 'Najbolji film koji nije na engleskom jeziku';
	@override String get animated => 'Najbolji dugometražni animirani film';
	@override String get animatedFilm => 'Najbolji animirani film';
	@override String get documentary => 'Najbolji dugometražni dokumentarni film';
	@override String get director => 'Najbolji redatelj';
	@override String get actor => 'Najbolji glumac';
	@override String get actress => 'Najbolja glumica';
	@override String get supportingActor => 'Najbolji sporedni glumac';
	@override String get supportingActress => 'Najbolja sporedna glumica';
	@override String get originalScreenplay => 'Najbolji izvorni scenarij';
	@override String get adaptedScreenplay => 'Najbolji adaptirani scenarij';
	@override String get screenplay => 'Najbolji scenarij';
	@override String get cinematography => 'Najbolja fotografija';
	@override String get editing => 'Najbolja montaža';
	@override String get score => 'Najbolja izvorna glazba';
	@override String get song => 'Najbolja izvorna pjesma';
	@override String get sound => 'Najbolji zvuk';
	@override String get effects => 'Najbolji vizualni efekti';
	@override String get productionDesign => 'Najbolji produkcijski dizajn';
	@override String get costume => 'Najbolja kostimografija';
	@override String get makeup => 'Najbolja šminka i frizura';
	@override String get dramaSeries => 'Izvanredna dramska serija';
	@override String get comedySeries => 'Izvanredna humoristična serija';
	@override String get limitedSeries => 'Izvanredna miniserija';
	@override String get animatedProgram => 'Izvanredan animirani program';
	@override String get comedyActor => 'Glavni glumac · Komedija';
	@override String get limitedActor => 'Glavni glumac · Miniserija ili film';
	@override String get limitedActress => 'Glavna glumica · Miniserija ili film';
	@override String get limitedDirecting => 'Režija · Miniserija ili film';
	@override String get britishFilm => 'Najbolji britanski film';
	@override String get goldenBear => 'Zlatni medvjed';
	@override String get grandJury => 'Velika nagrada žirija';
	@override String get jury => 'Nagrada žirija';
	@override String get teddy => 'Nagrada Teddy';
	@override String get goldenLion => 'Zlatni lav';
	@override String get volpiActor => 'Volpijev kup · Najbolji glumac';
	@override String get volpiActress => 'Volpijev kup · Najbolja glumica';
	@override String get queerLion => 'Queer lav';
	@override String get dramaFilm => 'Najbolji film · Drama';
	@override String get comedyFilm => 'Najbolji film · Mjuzikl ili komedija';
	@override String get dramaActor => 'Najbolji glumac · Drama';
	@override String get dramaActress => 'Najbolja glumica · Drama';
	@override String get usDramatic => 'Velika nagrada žirija · američka drama';
	@override String get documentaryJury => 'Velika nagrada žirija za dokumentarni film';
	@override String get worldCinema => 'Velika nagrada žirija · svjetska kinematografija';
	@override String get dramaticAudience => 'Nagrada publike · američka drama';
	@override String get usDirecting => 'Američka nagrada za režiju';
	@override String get peopleChoice => 'Nagrada publike';
	@override String get canadianFilm => 'Najbolji kanadski film';
	@override String get firstFeature => 'Najbolji debitantski film';
	@override String get cassavetes => 'Nagrada John Cassavetes';
	@override String get scienceFiction => 'Najbolji znanstvenofantastični film';
	@override String get fantasy => 'Najbolji fantastični film';
	@override String get horror => 'Najbolji horor';
	@override String get action => 'Najbolji akcijski ili avanturistički film';
	@override String get thriller => 'Najbolji triler';
}

// Path: searchDiscovery
class _Translations$searchDiscovery$hr extends Translations$searchDiscovery$en {
	_Translations$searchDiscovery$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get suggestions => 'Nešto za gledati';
	@override String get collections => 'Nagrade i kolekcije';
	@override String get collectionsHint => 'Nagrađeni naslovi i odabrane ljestvice iz vaših biblioteka';
	@override String get all => 'Sve preporuke';
	@override String get awards => 'Nagrade i ljestvice';
}

// Path: lurokaPlayerDesign
class _Translations$lurokaPlayerDesign$hr extends Translations$lurokaPlayerDesign$en {
	_Translations$lurokaPlayerDesign$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get seeking => 'Pregled pri premotavanju';
	@override String get keepWatching => 'Nastavi gledati';
	@override String get upNext => 'Sljedeći';
	@override String playingIn({required Object seconds}) => 'Reprodukcija počinje za ${seconds} s';
}

// Path: lurokaWorkspace
class _Translations$lurokaWorkspace$hr extends Translations$lurokaWorkspace$en {
	_Translations$lurokaWorkspace$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get everyday => 'Osnovno';
	@override String get homeDiscovery => 'Početna i otkrivanje';
	@override String get librariesAccounts => 'Biblioteke i računi';
	@override String get profilesFamily => 'Profili i obitelj';
	@override String get thisDevice => 'Ovaj uređaj';
	@override String get thisProfile => 'Ovaj profil';
	@override String get searchSettings => 'Pretraži postavke';
	@override String get savedAutomatically => 'Promjene se automatski spremaju. Načini Osnovno i Napredno određuju koje se kontrole prikazuju.';
	@override String get audioSubtitles => 'Zvuk i titlovi';
	@override String get audioDescription => 'Zvučni izlaz, glasnoća i izgled titlova. Željene jezike možete postaviti za svaki račun poslužitelja u postavkama računa.';
	@override String get pictureSound => 'Slika i zvuk';
	@override String get pictureDescription => 'Usklađivanje brzine kadrova, razlučivost, podešavanje HDR i Dolby Vision za ovaj uređaj.';
	@override String get engineDescription => 'Mehanizam reprodukcije, dekodiranje, prilagođena konfiguracija i napredna pravila reprodukcije.';
	@override String get networkStreaming => 'Mreža i strujanje';
	@override String get networkDescription => 'Kvaliteta slike, preferirani kodeci za izravnu reprodukciju i ograničenja propusnosti.';
	@override String get homeOptions => 'Opcije početne stranice';
	@override String get refreshHome => 'Osvježi početnu stranicu i odjeljak Popularno sada';
	@override String get customizeHome => 'Prilagodi početnu stranicu';
	@override String get spotlight => 'Istaknuti sadržaji na početnoj stranici';
	@override String get rotateSpotlight => 'Automatski izmjenjuj istaknute naslove';
	@override String get rotateDescription => 'Istaknuti naslovi izmjenjuju se dok je početna stranica neaktivna. Svaka interakcija zaustavlja izmjenu. Pregledavanje redaka, otvaranje stranice ili izlazak iz aplikacije zaustavlja je u potpunosti.';
	@override String get rotationInterval => 'Razmak između istaknutih naslova';
}

// Path: mobileFixes
class _Translations$mobileFixes$hr extends Translations$mobileFixes$en {
	_Translations$mobileFixes$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get connectionRecoveryHint => 'Poslužitelj nije dostupan? Upravljajte računima ili povežite drugi poslužitelj.';
}

// Path: downloadsRedesign
class _Translations$downloadsRedesign$hr extends Translations$downloadsRedesign$en {
	_Translations$downloadsRedesign$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get shelfSize => 'Stavki po retku';
	@override String get shelfSizeHint => 'Prikaži 16, 32 ili 48 stavki u retcima Nastavi gledati i Preporuke. Poslužitelj može vratiti manje dostupnih naslova.';
	@override String get subtitle => 'Vaši favoriti, uvijek pri ruci.';
	@override String get transfers => 'Prijenosi';
	@override String get ready => 'Spremno izvan mreže';
	@override String get active => 'Preuzimanje';
	@override String get waiting => 'Čekanje';
	@override String get downloaded => 'Preuzeto';
	@override String get speed => 'Brzina preuzimanja';
	@override String get notificationProgress => '{progress} · {networkSpeed} · preostalo {timeRemaining}';
}

// Path: kidsShelf
class _Translations$kidsShelf$hr extends Translations$kidsShelf$en {
	_Translations$kidsShelf$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get movieShelf => 'Vrijeme za film';
	@override String get showShelf => 'Pronađi sljedeću seriju';
	@override String get aurora => 'Aurora — tamnozelena i limeta';
	@override String get marquee => 'Marquee — baršun i zlato';
	@override String get electric => 'Električna — indigo i ledenoplava';
	@override String get midnight => 'Ponoć — čelik i jantar';
	@override String get yourShelf => 'Vaša polica za filmove';
	@override String get all => 'Sve';
	@override String get pickSomething => 'Što želite gledati?';
}

// Path: kidsHome
class _Translations$kidsHome$hr extends Translations$kidsHome$en {
	_Translations$kidsHome$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get everything => 'Za tebe';
	@override String get keepWatching => 'Nastavi gledati';
	@override String get emptyFilter => 'Ovdje još nema ničega. Pogledaj odjeljak Za tebe ili zamoli odraslu osobu da doda nešto što voliš.';
}

// Path: tvSettingsV2
class _Translations$tvSettingsV2$hr extends Translations$tvSettingsV2$en {
	_Translations$tvSettingsV2$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get moreThemes => 'Više tema i prilagođenih boja';
	@override String get moreThemesHint => 'Pregledajte sve dostupne gotove teme i mogućnosti prilagodbe.';
	@override String get previewLive => 'Pregled uživo';
	@override String get previewIllustration => 'Primjer pregleda';
	@override String previewShelfCount({required Object count}) => 'Do ${count} artikala po polici';
	@override String get simple => 'Jednostavno';
	@override String get homeNavigation => 'Početna i navigacija';
	@override String get libraryCards => 'Biblioteka i kartice';
	@override String get accountsLibraries => 'Računi i biblioteke';
	@override String get profilesFamily => 'Profili i obitelj';
	@override String get aboutSupport => 'O aplikaciji i podrška';
	@override String get playback => 'Reprodukcija';
	@override String get homeHint => 'Odaberite što će se prikazivati na početnoj stranici i u navigaciji.';
	@override String get libraryHint => 'Prilagodite veličinu postera, oznake i pokazatelje pogledanog sadržaja.';
	@override String get advancedPlayback => 'Reproduktor i strujanje';
	@override String get advancedPlaybackHint => 'Reproduktor, videoizlaz, strujanje i napredne mogućnosti reprodukcije.';
	@override String get advancedTools => 'Dijagnostika i sigurnosne kopije';
	@override String get advancedToolsHint => 'Dnevnici, rješavanje problema, sigurnosno kopiranje i resetiranje postavki.';
	@override String get themePreview => 'Pregled teme';
	@override String get libraryPreview => 'Pregled biblioteke';
	@override String get homePreview => 'Pregled početne stranice';
	@override String get subtitlePreview => 'Pregled titlova';
	@override String get subtitleSample => 'Vaši će titlovi izgledati ovako.';
	@override String get previewPlaceholder => 'Ovdje će se prikazati vaše slike';
	@override String get posterSize => 'Veličina postera';
	@override String get serverRecommendations => 'Preporuke poslužitelja na početnoj stranici';
	@override String get tvLayout => 'Koristi TV raspored';
	@override String get hardwareDecode => 'Koristi hardversko dekodiranje videa';
	@override String get serverNames => 'Prikaži nazive poslužitelja u redcima početne stranice';
	@override String get settingsSaved => 'Promjene se automatski spremaju.';
	@override String get morePlayback => 'Napredna reprodukcija';
	@override String get screenDisplay => 'Slika i zvuk';
	@override String get engine => 'Reproduktor';
	@override String get network => 'Strujanje i mreža';
	@override String get performance => 'Performanse';
	@override String get simpleAudio => 'Jezici i izgled titlova';
}

// Path: settingsRedesign
class _Translations$settingsRedesign$hr extends Translations$settingsRedesign$en {
	_Translations$settingsRedesign$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get themeEffects => 'Tema i efekti';
	@override String get libraryLayout => 'Raspored biblioteka';
	@override String get appearanceHint => 'Prilagodite izgled, raspored i ponašanje Luroke.';
	@override String get livePreview => 'Pregled uživo';
	@override String get previewHint => 'Pogledajte kako će vaša biblioteka izgledati s trenutačnim postavkama.';
	@override String get showLiveTv => 'Prikaži TV uživo';
	@override String get showLiveTvHint => 'Prikaži TV uživo u navigaciji ako ga povezani poslužitelj podržava. Time se ne mijenjaju postavke poslužitelja.';
	@override String get aboutTagline => 'Vaši mediji. Vaš prostor.';
	@override String get aboutDescription => 'Luroka objedinjuje vaše biblioteke s Plexa, Jellyfina i Embyja u kinematografski reproduktor za telefone, televizore i računala.';
	@override String get aboutFeatures => 'Pregledavajte biblioteke, nastavite gledati filmove i serije, prilagodite profile, preuzimajte sadržaj i gledajte zajedno. TV uživo dostupan je uz kompatibilan poslužitelj.';
	@override String get services => 'Povežite svoj svijet';
	@override String get updateSource => 'Izvor ažuriranja';
	@override String get updateSourceHint => 'HTTPS adresa izvora ažuriranja za Luroku. Distributer je može unaprijed postaviti u aplikaciji.';
	@override String get updateNotConfigured => 'Automatska ažuriranja nisu konfigurirana za ovu verziju.';
	@override String get downloadInstall => 'Preuzmi i instaliraj';
	@override String get installUpdate => 'Instaliraj ažuriranje';
	@override String get downloading => 'Preuzimanje ažuriranja…';
	@override String get downloadFailed => 'Nije bilo moguće preuzeti ili provjeriti ažuriranje. Molimo pokušajte ponovno.';
	@override String get installPermission => 'Dopustite aplikaciji Luroka instaliranje ažuriranja u postavkama Androida, zatim se vratite i odaberite Instaliraj ažuriranje.';
	@override String get updateReady => 'Preuzimanje je provjereno. Spremno za instalaciju.';
	@override String get releaseNotes => 'Napomene o izdanju';
	@override String get invalidFeed => 'Unesite valjanu HTTPS adresu feeda ažuriranja.';
}

// Path: onboarding
class _Translations$onboarding$hr extends Translations$onboarding$en {
	_Translations$onboarding$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get connectStep => '01 · Poveži se';
	@override String get connectTitle => 'Dobro došli u Luroku';
	@override String get connectHint => 'Prijavite se kako biste povezali svoje biblioteke.';
	@override String get serverAddressHint => 'Unesite adresu poslužitelja ili odaberite poslužitelj pronađen na vašoj mreži.';
	@override String get serverSignInHint => 'Unesite korisničko ime i lozinku za poslužitelj da biste povezali biblioteke.';
	@override String get serverAddressTitle => 'Adresa poslužitelja';
	@override String get serverAccountTitle => 'Račun na poslužitelju';
	@override String get plexHomeTitle => 'Odaberite korisnika Plex Homea';
	@override String get plexHomeHint => 'Odaberite Plex korisnika čije biblioteke želite koristiti. Zatim ćete postaviti svoj profil u aplikaciji Luroka.';
	@override String get chooseService => 'Odaberite svoju uslugu';
	@override String get profileStep => '02 · Vaš profil';
	@override String get profileTitle => 'Dobro došli.';
	@override String get profileHint => 'Odaberite ime i avatar za svoj Luroka profil. Vaš povezani račun ostaje isti.';
	@override String get readyStep => '03 · Spremno za gledanje';
	@override String get readyTitle => 'Još samo malo.';
	@override String get readyHint => 'Objedinite svoje usluge ili napravite mjesto za nekog drugog. To možete uvijek učiniti kasnije.';
	@override String get addService => 'Poveži drugu uslugu';
	@override String get editProfile => 'Uredite ime i avatar';
	@override String get connected => 'Povezano i spremno';
	@override String get backToProfile => 'Natrag na vaš profil';
	@override String get showOtherPlexHome => 'Prikaži ostale članove Plex Homea';
	@override String get showOtherPlexHomeHint => 'Isključeno prema zadanim postavkama. Vaši profili u aplikaciji Luroka i prethodno korišteni članovi Plex Homea ostaju vidljivi. Uključite za odabir drugog korisnika.';
}

// Path: household
class _Translations$household$hr extends Translations$household$en {
	_Translations$household$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vaše kućanstvo u aplikaciji Luroka';
	@override String get welcome => 'Prilagodite Luroku sebi';
	@override String get welcomeHint => 'Vaš prvi račun je povezan. Prilagodite profil ili dodajte još nekoga prije nego što počnete gledati.';
	@override String get profiles => 'Profili i kućanstvo';
	@override String get manageHint => 'Dodajte članove, promijenite slike i upravljajte vezama za svaki profil.';
	@override String get addProfile => 'Dodaj profil u Luroku';
	@override String get addHint => 'Svaka osoba može povezati vlastiti Plex, Emby ili Jellyfin račun. Svaki profil prikazuje samo veze dodane na taj profil.';
	@override String get sharedHint => 'Korištenjem veze drugog profila dijelit ćete status pogledanog sadržaja i napredak reprodukcije tog računa na poslužitelju. Za zasebnu povijest gledanja upotrijebite drugi račun.';
	@override String get personalise => 'Prilagodi profil';
	@override String get changePicture => 'Promijeni profilnu sliku';
	@override String get pictureHint => 'Odaberite avatar za Luroku ili fotografiju. Promjena se odnosi samo na ovaj uređaj i ne utječe na vaš račun na poslužitelju.';
	@override String get serverPicture => 'Koristi sliku ili inicijale s poslužitelja';
	@override String get choosePhoto => 'Odaberite fotografiju';
	@override String get photoHint => 'JPEG, PNG ili druga podržana slika veličine do 10 MB. Fotografije se smanjuju i pohranjuju na ovom uređaju.';
	@override String get pictureSaved => 'Profilna slika ažurirana';
	@override String get pictureFailed => 'Nije moguće ažurirati profilnu sliku. Isprobajte podržanu sliku do 10 MB.';
	@override String get saveFailed => 'Nije moguće spremiti postavke profila. Molimo pokušajte ponovo.';
	@override String get startWatching => 'Počnite gledati';
	@override String get manageProfiles => 'Upravljajte ili mijenjajte profile';
	@override String get addLater => 'Kasnije možete dodati još članova u Postavkama → Profili i kućanstvo.';
	@override String get connectionRequired => 'Dodajte vezu s poslužiteljem da biste dovršili postavljanje ovog profila.';
	@override String get mountain => 'planina';
	@override String get orbit => 'Istraživač';
	@override String get waves => 'Ocean';
	@override String get blossom => 'Cvjetanje';
	@override String get lightning => 'Munja';
	@override String get moon => 'Mjesec';
	@override String get avatarGallery => 'Odaberite avatar';
	@override String get avatarIllustrationHint => 'Izvorni ilustrirani portreti te likovi djece i životinja';
	@override String get avatarPortraitSunrise => 'Portret u izlasku sunca';
	@override String get avatarPortraitMeadow => 'Portret na livadi';
	@override String get avatarPortraitBerry => 'Portret s bobičastim voćem';
	@override String get avatarPortraitGolden => 'Zlatni portret';
	@override String get avatarPortraitIndigo => 'Portret u indigo boji';
	@override String get avatarPortraitOcean => 'Portret uz ocean';
	@override String get avatarKidArtist => 'Mali umjetnik';
	@override String get avatarKidSkater => 'Mali klizač';
	@override String get avatarCat => 'Znatiželjna mačka';
	@override String get avatarDog => 'Sretan pas';
	@override String get avatarPanda => 'Panda';
	@override String get avatarOwl => 'sova';
	@override String get avatarFox => 'Lisica';
	@override String get avatarDinosaur => 'Dinosaur';
	@override String get avatarRobot => 'Robot';
}

// Path: detailComposition
class _Translations$detailComposition$hr extends Translations$detailComposition$en {
	_Translations$detailComposition$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get startOver => 'Kreni ispočetka';
	@override String get seriesCast => 'Glumačka ekipa serije';
	@override String get streamingQuality => 'Kvaliteta slike…';
	@override String get trailer => 'Najava';
	@override String get manageMedia => 'Upravljanje medijima…';
	@override String get playbackOptions => 'Opcije reprodukcije…';
	@override String get moreActions => 'Više akcija';
	@override String get watched => 'Gledao';
	@override String get unwatched => 'Negledan';
	@override String endsAt({required Object time}) => 'Završava u ${time}';
	@override String get automatic => 'Automatski';
	@override String get usePreferences => 'Koristite svoje postavke reprodukcije';
	@override String get mediaInformation => 'Informacije o medijima';
	@override String get fullFileInformation => 'Potpune informacije o datoteci';
	@override String get castAndCrew => 'Glumci i ekipa';
}

// Path: kids
class _Translations$kids$hr extends Translations$kids$en {
	_Translations$kids$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get timeLimits => 'Ograničenja vremena gledanja';
	@override String get dailyWatchLimit => 'Dnevno vrijeme gledanja';
	@override String get dailyWatchLimitHint => 'Ograničava dnevnu reprodukciju videa na ovom uređaju.';
	@override String get noTimeLimit => 'Bez ograničenja';
	@override String minutesLimit({required Object minutes}) => '${minutes} minuta';
	@override String get bedtime => 'Vrijeme za spavanje';
	@override String get bedtimeHint => 'Za korištenje profila tijekom ovih sati potreban je roditeljski PIN.';
	@override String get bedtimeStart => 'Početak vremena za spavanje';
	@override String get bedtimeEnd => 'Kraj vremena za spavanje';
	@override String get timeLimitReached => 'Dnevno vrijeme gledanja je isteklo';
	@override String get bedtimeReached => 'Vrijeme je za spavanje';
	@override String get timeLimitParentHint => 'Zamolite roditelja da unese PIN za nastavak u ovoj sesiji.';
	@override String get parentUnlock => 'Roditeljsko otključavanje';
	@override String get backupProfile => 'Sigurnosno kopirajte dječji profil';
	@override String get backupExplain => 'Izradite sigurnosnu kopiju ovog profila spremljenog imena, karaktera, ograničenja, izgleda i lokalnih isključenja gledanja. PIN-ovi roditelja, prijave na poslužitelj, preuzimanja i napredak reprodukcije na poslužitelju nisu uključeni.';
	@override String get saveBackupFile => 'Spremi datoteku sigurnosne kopije';
	@override String get copyBackup => 'Kopiraj pričuvni tekst';
	@override String backupSaved({required Object path}) => 'Sigurnosna kopija dječjeg profila spremljena je u ${path}';
	@override String get backupCopied => 'Sigurnosna kopija dječjeg profila kopirana';
	@override String get backupFailed => 'Nije moguće spremiti sigurnosnu kopiju dječjeg profila. Molimo pokušajte ponovo.';
	@override String get restoreProfile => 'Vratite dječji profil';
	@override String get chooseBackupFile => 'Odaberite datoteku sigurnosne kopije';
	@override String get pasteBackup => 'Zalijepi pričuvni tekst';
	@override String get backupText => 'Sigurnosna kopija dječjeg profila JSON';
	@override String get pasteFromClipboard => 'Zalijepi iz međuspremnika';
	@override String get restoreReview => 'Pregledajte vraćene postavke pa odaberite Spremi da biste izradili novi dječji profil s trenutačnim vezama s poslužiteljima. Postojeći profili neće se mijenjati. Odabrane biblioteke i izuzeci gledanja primijenit će se samo na podudarajuće ID-jeve poslužitelja i biblioteka.';
	@override String get restoreInvalid => 'Ovo nije važeća podržana sigurnosna kopija profila za djecu. Odaberite JSON sigurnosnu kopiju dječjeg profila Luroka.';
	@override String get deleteProfile => 'Izbriši dječji profil';
	@override String deleteExplain({required Object name}) => 'Izbrisati ${name} iz Luroka? Njihove lokalne postavke, preuzimanja i isključenja gledanja bit će uklonjeni. Vaš račun poslužitelja i povijest na strani poslužitelja ostat će. Prvo napravite sigurnosnu kopiju ako želite kasnije vratiti profil.';
	@override String get profileDeleted => 'Dječji profil izbrisan';
	@override String get allowedLibraries => 'Dopuštene biblioteke';
	@override String get unavailableLibrary => 'Prethodno odabrana biblioteka (trenutačno nedostupna)';
	@override String get allLibraries => 'Dopusti sve povezane filmske i TV biblioteke';
	@override String get librariesExplain => 'Isključite ovo za odabir određenih biblioteka. Pravila o dobi i animaciji i dalje se primjenjuju unutar odabranih biblioteka. Nove biblioteke ne dodaju se automatski prilikom korištenja odabira.';
	@override String get librariesUnavailable => 'Nisu učitane filmske ni TV biblioteke. Povežite se s poslužiteljem, otvorite odjeljak Biblioteke pa se vratite ovamo da biste odabrali biblioteke.';
	@override String get noLibrariesSelected => 'Nije odabrana nijedna biblioteka: ovo dijete neće vidjeti nijedan naslov.';
	@override String get animationOnly => 'Samo animacija';
	@override String get animationExplain => 'Prikaži samo naslove označene žanrom animacije na vašem poslužitelju. Ovo ne zamjenjuje dobnu granicu: animacija može biti namijenjena i odraslima. Metapodaci o žanru koji nedostaju skriveni su.';
	@override String get allowUnrated => 'Dopusti naslove bez dobne oznake';
	@override String get unratedExplain => 'Isključeno prema zadanim postavkama. Kad je uključeno, mogu se prikazati sadržaji bez dobne oznake ili klasifikacije, ako to dopuštaju pravila biblioteke i animacije. Njihova primjerenost dobi ne može se provjeriti. Sadržaji s poznatom oznakom iznad dobne granice i neprepoznatim klasifikacijama i dalje su skriveni.';
	@override String get whoIsWatching => 'Tko gleda?';
	@override String get chooseAdventure => 'Mali svijet velikih avantura.';
	@override String get chooseProfile => 'Odaberite svoj prostor. Neka to bude filmska večer.';
	@override String welcome({required Object name}) => 'Bok, ${name}!';
	@override String welcomeOlder({required Object name}) => 'Vaša sljedeća sjajna priča, ${name}.';
	@override String get homeSubtitle => 'Velike avanture. Mala otkrića. Sve za vas.';
	@override String get homeSubtitleOlder => 'Pronađite novog favorita. Nastavite gdje ste stali.';
	@override String get featured => 'Današnja velika avantura';
	@override String get featuredOlder => 'U centru pažnje';
	@override String get moreInfo => 'Više informacija';
	@override String get movies => 'Filmovi';
	@override String get shows => 'emisije';
	@override String get profiles => 'Profili';
	@override String get adultBadge => 'Odrasli';
	@override String get avatar => 'Odaberite svoj karakter';
	@override String get avatarExplorer => 'Istraživač svemira';
	@override String get avatarFox => 'Lisica';
	@override String get avatarDinosaur => 'Dinosaur';
	@override String get avatarRobot => 'Robot';
	@override String get avatarChildArtist => 'Mali umjetnik';
	@override String get avatarChildSkater => 'Mali klizač';
	@override String get avatarSunrisePerson => 'Portret u izlasku sunca';
	@override String get avatarOceanPerson => 'Oceanski portret';
	@override String get avatarCat => 'Znatiželjna mačka';
	@override String get avatarDog => 'Sretan pas';
	@override String get avatarPanda => 'Panda';
	@override String get avatarOwl => 'sova';
	@override String get avatarBear => 'medvjed';
	@override String get continueAdventure => 'Nastavite s avanturom';
	@override String get freshStories => 'Nove priče za otkrivanje';
	@override String get yourMovies => 'Omiljeni filmovi';
	@override String get yourShows => 'Još jedna epizoda';
	@override String get emptyHint => 'Nove avanture pojavit će se ovdje kada vaš poslužitelj bude imao naslove s dopuštenom dobnom klasifikacijom.';
	@override String get title => 'Luroka za djecu';
	@override String get addProfile => 'Dodajte dječji profil';
	@override String get parentalControls => 'Roditeljski nadzor';
	@override String get parentPin => 'Roditeljski PIN';
	@override String get setParentPin => 'Postavi roditeljski PIN';
	@override String get changeParentPin => 'Promijeni roditeljski PIN';
	@override String get pinExplain => 'Ovaj PIN štiti profile za odrasle i roditeljski nadzor na ovom uređaju.';
	@override String get name => 'Ime djeteta';
	@override String get ageGroup => 'Dopuštena dobna klasifikacija';
	@override String get allAges => 'Svi uzrasti · G, TV-Y, TV-G, U';
	@override String get age7 => 'Do 7 · također PG, TV-PG, TV-Y7';
	@override String get age12 => 'Do 12 · također 12 i 12A';
	@override String get age16 => 'Do 16 · također PG-13, TV-14, 15 i 16';
	@override String get ratingExplain => 'Naslovi iznad dobne granice i neprepoznate klasifikacije su skriveni. Naslovi bez ocjene su skriveni osim ako ih ne dopustite u nastavku. Epizode bez ocjene mogu naslijediti odobrenu klasifikaciju serije. Ocjene ovise o metapodacima vašeg poslužitelja.';
	@override String get theme => 'Izgled djece';
	@override String get themeExplain => 'Koristite šarenu temu kada je ovaj profil aktivan.';
	@override String get sharedLogin => 'Koristi vašu postojeću prijavu na poslužitelj. Plex/Emby napredak i status gledanja ostaju podijeljeni. Ograničenja i dječji profili pohranjeni su na ovom uređaju.';
	@override String get hideWatched => 'Sakrij dječje gledanje iz moje Nastavi gledati';
	@override String get hideExplain => 'Sakrij filmove i cijele serije koje su gledali dječji profili na ovom uređaju. Time se sadržaj ne uklanja iz biblioteke niti mijenja povijest na poslužitelju.';
	@override String get clearHistory => 'Poništi isključenja gledanja za djecu';
	@override String get historyReset => 'Isključenja gledanja za djecu poništena';
	@override String get blocked => 'Ovaj naslov nije dostupan u ovom dječjem profilu.';
	@override String get switchProfile => 'Promijeni profil';
	@override String get manageFromAdult => 'Prijeđite na profil za odrasle za upravljanje postavkama.';
	@override String get noConnections => 'Povežite poslužitelj sa svojim profilom za odrasle prije dodavanja profila za djecu.';
	@override String get created => 'Izrađen profil djece';
	@override String get updated => 'Profil djece ažuriran';
	@override String get saveFailed => 'Nije moguće spremiti roditeljski nadzor. Molimo pokušajte ponovo.';
	@override String get kidsBadge => 'djeca';
}

// Path: lurokaDiscovery
class _Translations$lurokaDiscovery$hr extends Translations$lurokaDiscovery$en {
	_Translations$lurokaDiscovery$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Otkrij';
	@override String get chooseLibraryHint => 'Odaberite biblioteku za pregledavanje';
	@override String get chooseCopyHint => 'Dostupno je u više biblioteka. Odaberite kopiju koju želite gledati.';
	@override String get weeklyMovies => 'Popularni filmovi ovog tjedna · TMDb';
	@override String get weeklyShows => 'Emisije u trendu ovog tjedna · TMDb';
	@override String get weeklyLibrary => 'Popularno ovaj tjedan · U vašoj biblioteci';
	@override String get popularLibrary => 'Popularno sada · U vašoj biblioteci · Cinemeta';
	@override String get publicFeedError => 'Cinemeta trenutačno nije dostupan. Pokušajte ponovno.';
	@override String get oscars => 'Oscari · Dobitnici za najbolji film';
	@override String get imdb100 => 'IMDb Top 100 filmova · Snimka rujna 2026.';
	@override String get imdbTv100 => 'IMDb Top 100 emisija · Snimka rujna 2026.';
	@override String get emmyComedy => 'Emmyji · Dobitnici humorističnih serija · 1971–2026';
	@override String get emmys => 'Emmyji · Dobitnici dramskih serija · 1966–2026';
	@override String get bafta => 'BAFTA · Dobitnici za najbolji film';
	@override String get cannes => 'Cannes · Dobitnici Zlatne palme';
	@override String get awardsNote => 'Zbirke nagrada obuhvaćaju dobitnike Oscara za najbolji film, Emmyja za dramske i humoristične serije te proširene izbore nagrada BAFTA i u Cannesu. Naslovi koji su osvojili više nagrada prikazuju se samo jednom. Popisi se temelje na povijesti kategorija nagrada i podacima Wikidata. IMDb-ovi popisi 100 najboljih filmova i serija temelje se na snimkama ljestvica iz rujna 2026. projekta mmdju/imdb-top250-api. Prikazuju se samo naslovi pronađeni u vašim vidljivim i trenutačno dostupnim bibliotekama; broj naslova ovisi o njihovu sadržaju.';
	@override String get attribution => 'Popise popularnosti, metapodatke i IMDb ocjene pruža Cinemeta; njihovi popisi Popularno nisu tjedne ljestvice gledanosti. Ovaj proizvod koristi TMDB API, ali ga TMDB ne podupire niti certificira. Neobvezni tjedni trendovi TMDb-a odražavaju interes korisnika, a ne broj pregleda. Ocjene zadržavaju oznaku izvora.';
	@override String get tmdbSettings => 'Izvori otkrića';
	@override String get setupDescription => 'Cinemeta radi odmah i bez računa te nudi popularne filmove i serije, IMDb ocjene i nagrađene naslove. Po želji povežite TMDb da biste pratili tjedne trendove. Upotrijebite API ključ ili token za pristup API-ju za čitanje s themoviedb.org/settings/api. Vjerodajnica se pohranjuje na ovom uređaju.';
	@override String get apiKey => 'TMDb API ključ / pristupni token za čitanje';
	@override String get connect => 'Povežite TMDb';
	@override String get connecting => 'Povezivanje…';
	@override String get connected => 'TMDb povezan · Tjedni trendovi i nagrade omogućeni';
	@override String get builtInKeyNote => 'Trenutačno se koristi zajednički TMDb API ključ ugrađen u Luroku. Dodajte vlastiti besplatni ključ u nastavku da biste imali zasebna ograničenja broja zahtjeva i potpunu kontrolu.';
	@override String get disconnect => 'Odspojite TMDb';
	@override String get invalidKey => 'Nije moguće potvrditi TMDb. Provjerite svoju vjerodajnicu i internetsku vezu.';
	@override String get feedError => 'TMDb otkrivanje nije dostupno. Molimo pokušajte ponovo.';
	@override String get allTitles => 'Svi naslovi';
	@override String get available => 'U vašoj biblioteci';
	@override String get checking => 'Provjera biblioteka…';
	@override String get availabilityUnknown => 'Nije moguće provjeriti neke biblioteke. Pokušajte osvježiti.';
	@override String get noAvailable => 'U provjerenim bibliotekama nema odgovarajućih naslova.';
	@override String get sourceInfo => 'Tjedni trendovi i odabrani dobitnici nagrada · TMDb';
	@override String get configure => 'Postavke odjeljka Otkrijte';
}

// Path: app
class _Translations$app$hr extends Translations$app$en {
	_Translations$app$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Luroka';
}

// Path: appIcon
class _Translations$appIcon$hr extends Translations$appIcon$en {
	_Translations$appIcon$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ikona aplikacije';
	@override String get defaultIcon => 'Zadano';
	@override String get current => 'Trenutna ikona';
	@override String get locked => 'Pogodnost za navijače';
	@override String get lockedHint => 'Druge ikone dostupne su kao pogodnost za one koji podupiru Luroku.';
	@override String get changeFailed => 'Nije moguće promijeniti ikonu aplikacije';
	@override String get launcherHint => 'Nova ikona pojavljuje se na vašem početnom zaslonu nakon što napustite Luroka.';
	@override String get tvLauncherHint => 'Novi natpis se pojavljuje kada napustite Luroka. Android TV može nastaviti prikazivati ​​stari dok se TV ponovno ne pokrene.';
	@override late final _Translations$appIcon$names$hr names = _Translations$appIcon$names$hr._(_root);
}

// Path: auth
class _Translations$auth$hr extends Translations$auth$en {
	_Translations$auth$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get signInWithPlex => 'Prijavite se pomoću Plex';
	@override String get showQRCode => 'Prikaži QR kod';
	@override String get authenticate => 'Provjeri autentičnost';
	@override String get authenticationTimeout => 'Autentikacija je istekla. Molimo pokušajte ponovo.';
	@override String get scanQRToSignIn => 'Skenirajte ovaj QR kod za prijavu';
	@override String get waitingForAuth => 'Čeka se provjera autentičnosti...\nPrijavite se iz svog preglednika.';
	@override String get useBrowser => 'Koristite preglednik';
	@override String get or => 'ili';
	@override String connectToMediaBrowser({required Object product}) => 'Povežite se na ${product}';
	@override String get quickConnect => 'Quick Connect';
	@override String get useQuickConnect => 'Koristite Quick Connect';
	@override String get quickConnectInstructions => 'Otvorite Quick Connect u Jellyfin i unesite ovaj kod.';
	@override String get quickConnectWaiting => 'Čeka se odobrenje...';
	@override String get quickConnectCancel => 'Odustani';
	@override String get quickConnectExpired => 'Quick Connect istekao. Pokušajte ponovno.';
	@override String get localDataRecoveryRequired => 'Aplikacija Luroka nije mogla sigurno vratiti podatke za lokalnu prijavu i reprodukciju na čekanju. Prijavite se ponovno.';
	@override String get pinCheckRejected => 'Provjera Plex PIN je odbijena';
}

// Path: common
class _Translations$common$hr extends Translations$common$en {
	_Translations$common$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get cancel => 'Odustani';
	@override String get save => 'Spremi';
	@override String get close => 'Zatvori';
	@override String get clear => 'Očisti';
	@override String get reset => 'Poništi';
	@override String get later => 'Kasnije';
	@override String get submit => 'Pošalji';
	@override String get confirm => 'Potvrdi';
	@override String get retry => 'Pokušaj ponovno';
	@override String get logout => 'Odjava';
	@override String get unknown => 'Nepoznato';
	@override String get refresh => 'Osvježi';
	@override String get yes => 'Da';
	@override String get no => 'Ne';
	@override String get delete => 'Izbriši';
	@override String get edit => 'Uredi';
	@override String get shuffle => 'Izmiješaj';
	@override String get addTo => 'Dodaj u...';
	@override String get createNew => 'Kreiraj novo';
	@override String get connect => 'Poveži';
	@override String get disconnect => 'Prekini vezu';
	@override String get play => 'Reprodukcija';
	@override String get pause => 'Pauza';
	@override String get resume => 'Nastavi';
	@override String get error => 'Greška';
	@override String get search => 'Pretraga';
	@override String get home => 'Početna';
	@override String get back => 'Natrag';
	@override String get settings => 'Postavke';
	@override String get mute => 'Isključi zvuk';
	@override String get ok => 'U redu';
	@override String get off => 'Isključeno';
	@override String get options => 'Opcije';
	@override String seasonNumber({required Object number}) => 'Sezona ${number}';
	@override String episodeNumberTitle({required Object number, required Object title}) => 'Epizoda ${number} - ${title}';
	@override String chapterNumber({required Object number}) => 'Poglavlje ${number}';
	@override String get reconnect => 'Ponovno spoji';
	@override String get viewAll => 'Prikaži sve';
	@override String get serversUnreachable => 'Poslužitelji nisu dostupni';
	@override String get loading => 'Učitavanje...';
	@override String get fullscreen => 'Cijeli zaslon';
	@override String get exitFullscreen => 'Izađi iz punog zaslona';
	@override late final _Translations$common$ratingSource$hr ratingSource = _Translations$common$ratingSource$hr._(_root);
	@override String get notAvailable => 'N/A';
	@override String get url => 'URL';
	@override String get letterKeys => 'ABC';
	@override late final _Translations$common$mediaKind$hr mediaKind = _Translations$common$mediaKind$hr._(_root);
	@override String get stay => 'Ostani';
	@override String get exitApp => 'Izađi';
	@override String get exitAppBody => 'Jeste li sigurni da želite izaći iz Luroke?';
}

// Path: tvHints
class _Translations$tvHints$hr extends Translations$tvHints$en {
	_Translations$tvHints$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get select => 'Odaberite';
	@override String get browse => 'Pregledaj';
	@override String get back => 'natrag';
}

// Path: screens
class _Translations$screens$hr extends Translations$screens$en {
	_Translations$screens$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get licenses => 'Licence';
	@override String get switchProfile => 'Promjena profila';
	@override String get subtitleStyling => 'Stil titlova';
	@override String get mpvConfig => 'mpv.conf';
	@override String get logs => 'Dnevnici';
}

// Path: mediaExtras
class _Translations$mediaExtras$hr extends Translations$mediaExtras$en {
	_Translations$mediaExtras$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get trailers => 'Najave';
	@override String get featurettes => 'Posebni sadržaji';
	@override String get interviews => 'Intervjui';
	@override String get deletedScenes => 'Izbrisane scene';
	@override String get behindTheScenes => 'Iza kulisa';
	@override String get scenesAndClips => 'Scene i isječci';
	@override String get other => 'Ostali dodaci';
}

// Path: update
class _Translations$update$hr extends Translations$update$en {
	_Translations$update$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get available => 'Ažuriranje dostupno';
	@override String versionAvailable({required Object version}) => 'Dostupna je verzija ${version}';
	@override String currentVersion({required Object version}) => 'Trenutno: ${version}';
	@override String get skipVersion => 'Preskoči ovu verziju';
	@override String get viewRelease => 'Pregledajte izdanje';
	@override String get latestVersion => 'Nalazite se na najnovijoj verziji';
	@override String get checkFailed => 'Provjera ažuriranja nije uspjela';
}

// Path: supporter
class _Translations$supporter$hr extends Translations$supporter$en {
	_Translations$supporter$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Podrška za Luroku';
	@override String get intro => 'Jednokratna kupnja koja podržava razvoj Luroka i otključava kozmetičke dodatke:';
	@override String get presetThemes => 'Unaprijed postavljene teme';
	@override String get presetThemesDescription => 'Žar, Ledenjak, Šuma, Šljiva i Papir';
	@override String get customTheme => 'Prilagođena tema';
	@override String get customThemeDescription => 'Svaku boju odaberite sami';
	@override String get appIcons => 'Ikone aplikacija';
	@override String get appIconsDescription => 'Odaberite drugu ikonu za Luroku';
	@override String buy({required Object price}) => 'Kupite za ${price}';
	@override String get loadingPrice => 'Učitavanje cijene...';
	@override String get restore => 'Obnovi kupnje';
	@override String get pending => 'Kupnja čeka plaćanje ili odobrenje. Dodaci će se otključati čim trgovina obradi kupnju.';
	@override String get thankYouTitle => 'Hvala što podržavate Luroka';
	@override String get thankYouBody => 'Dodaci za podršku sada su otključani.';
	@override String get tileSubtitle => 'Otključajte teme i ikone aplikacija jednokratnom kupnjom';
	@override String get tileSubtitleThemesOnly => 'Otključajte teme jednokratnom kupnjom';
	@override String get tileUnlocked => 'Hvala vam na podršci';
	@override late final _Translations$supporter$errors$hr errors = _Translations$supporter$errors$hr._(_root);
}

// Path: settings
class _Translations$settings$hr extends Translations$settings$en {
	_Translations$settings$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Postavke';
	@override String get supportDeveloper => 'Podržava Luroka';
	@override String get supportDeveloperDescription => 'Donirajte putem Liberapaya za financiranje razvoja';
	@override String get language => 'Jezik';
	@override String get theme => 'Tema';
	@override String get appearance => 'Izgled';
	@override String get videoPlayback => 'Reprodukcija videa';
	@override String get videoPlaybackDescription => 'Postavite način reprodukcije videa.';
	@override String get advanced => 'Napredno';
	@override String get episodePosterMode => 'Način prikaza postera epizoda';
	@override String get seriesPoster => 'Poster serije';
	@override String get seasonPoster => 'Poster sezone';
	@override String get episodeThumbnail => 'Sličica';
	@override String get homeHeroSize => 'Veličina istaknutog sadržaja';
	@override String get homeHeroSizeSmall => 'Malo';
	@override String get homeHeroSizeMedium => 'Srednje';
	@override String get homeHeroSizeLarge => 'Veliko';
	@override String get secondsLabel => 'sekundi';
	@override String get minutesLabel => 'minuta';
	@override String get secondsShort => 's';
	@override String get minutesShort => 'm';
	@override String durationHint({required Object min, required Object max}) => 'Unesite trajanje (${min}-${max})';
	@override String get systemTheme => 'Sustav';
	@override String get lightTheme => 'Svijetla';
	@override String get darkTheme => 'Tamna';
	@override String get oledTheme => 'OLED';
	@override String get libraryDensity => 'Gustoća prikaza biblioteke';
	@override String get displayScale => 'Veličina prikaza';
	@override String get compact => 'Kompaktno';
	@override String get comfortable => 'Udobno';
	@override String get gridSpacing => 'Razmak mreže';
	@override String get gridSpacingTight => 'Usko';
	@override String get gridSpacingNormal => 'Uobičajeno';
	@override String get gridSpacingSpacious => 'Prostrano';
	@override String get tvCornerSpotlightBackdrop => 'Pozadina istaknutog sadržaja u kutu';
	@override String get tvCornerSpotlightBackdropDescription => 'Prikaži sliku istaknutog sadržaja u gornjem desnom kutu umjesto preko cijelog zaslona.';
	@override String get viewMode => 'Način prikaza';
	@override String get gridView => 'Mreža';
	@override String get listView => 'Popis';
	@override String get continueWatchingAction => 'Radnja pri odabiru u retku Nastavi gledati';
	@override String get continueWatchingPlay => 'Reproduciraj';
	@override String get continueWatchingDetails => 'Otvori pojedinosti';
	@override String get episodeAction => 'Radnja pri odabiru epizode';
	@override String get episodePlay => 'Reproduciraj';
	@override String get episodeDetails => 'Otvori pojedinosti';
	@override String get useGlobalHubs => 'Koristi raspored početne stranice';
	@override String get useGlobalHubsDescription => 'Objedini sve poslužitelje na jednoj početnoj stranici. Isključi za prikaz zasebnih preporuka svake biblioteke.';
	@override String get showServerNameOnHubs => 'Prikaži nazive poslužitelja u odjeljcima';
	@override String get showServerNameOnHubsDescription => 'Uvijek prikaži nazive poslužitelja u naslovima odjeljaka.';
	@override String get groupLibrariesByServer => 'Grupiraj biblioteke po poslužitelju';
	@override String get groupLibrariesByServerDescription => 'Grupiraj biblioteke u bočnoj traci prema poslužitelju.';
	@override String get alwaysKeepSidebarOpen => 'Bočnu traku uvijek držite otvorenom';
	@override String get alwaysKeepSidebarOpenDescription => 'Bočna traka ostaje proširena, a područje sadržaja prilagođava se';
	@override String get showUnwatchedCount => 'Prikaži broj neodgledanih epizoda';
	@override String get showUnwatchedCountDescription => 'Prikaži broj neodgledanih epizoda za serije i sezone.';
	@override String get showWatchedIndicators => 'Prikaži oznake pogledanog sadržaja';
	@override String get showWatchedIndicatorsDescription => 'Prikaži kvačicu na pogledanim filmovima, serijama i epizodama.';
	@override String get showEpisodeNumberOnCards => 'Prikaži broj epizode na karticama';
	@override String get showEpisodeNumberOnCardsDescription => 'Prikaži sezonu i broj epizode na karticama epizoda';
	@override String get showSeasonPostersOnTabs => 'Prikaži postere sezona na karticama';
	@override String get showSeasonPostersOnTabsDescription => 'Prikaži poster svake sezone iznad njezine kartice.';
	@override String get tvFullCardLayout => 'Proširene TV kartice';
	@override String get tvFullCardLayoutDescription => 'Koristi TV kartice samo sa slikom i imenima glumaca preko slike.';
	@override String get focusGlow => 'Sjaj fokusa';
	@override String get focusGlowDescription => 'Dodaj blagi sjaj oko odabrane kartice.';
	@override String get visualEffects => 'Vizualni efekti';
	@override String get visualEffectsAuto => 'Automatski';
	@override String get visualEffectsAutoDescription => 'Automatski smanji efekte na uređajima slabijih performansi.';
	@override String get visualEffectsFull => 'Puni';
	@override String get visualEffectsReduced => 'Smanjeno';
	@override String get visualEffectsReducedDescription => 'Manje animacija i slike niže razlučivosti.';
	@override String get hideSpoilers => 'Sakrij spoilere za neodgledane epizode';
	@override String get hideSpoilersDescription => 'Zamuti sličice i opise neodgledanih epizoda.';
	@override String get playerBackend => 'Mehanizam reprodukcije';
	@override String get playerBackendDescription => 'mpv reproducira više formata i podržava više značajki — preporučeno. ExoPlayer može pomoći ako reprodukcija ne radi ili zastajkuje na ovom uređaju.';
	@override String get exoPlayer => 'ExoPlayer';
	@override String get mpv => 'mpv';
	@override String get hardwareDecoding => 'Hardversko dekodiranje';
	@override String get hardwareDecodingDescription => 'Koristi hardversko ubrzanje kada je dostupno';
	@override String get playbackBuffer => 'Međuspremnik za reprodukciju';
	@override String get playbackBufferAuto => 'Automatski (preporučeno)';
	@override String get playbackBufferLarge => 'Velik';
	@override String get playbackBufferExtraLarge => 'Iznimno velik';
	@override String get playbackBufferDescription => 'Povećaj količinu unaprijed učitanog sadržaja kako bi reprodukcija bila stabilnija na nestabilnim vezama.';
	@override String get defaultQualityTitle => 'Kvaliteta slike';
	@override String get streamingQualityOriginalHint => 'Reproducira datoteku u izvornom obliku — najbolja kvaliteta uz najveću potrošnju podataka.';
	@override String get cellularQualityTitle => 'Kvaliteta slike putem mobilne mreže';
	@override String get cellularQualitySameAsDefault => 'Jednako kao zadana kvaliteta slike';
	@override String get directPlayCoveredQuality => 'Ne pretvaraj datoteke koje već zadovoljavaju ograničenja kvalitete';
	@override String get directPlayCoveredQualityDescription => 'Videozapisi koji zadovoljavaju ograničenja kvalitete reproduciraju se bez pretvorbe — brže i uz manje opterećenje poslužitelja.';
	@override String get videoCodecs => 'Videokodeci';
	@override String get videoCodecsDescription => 'Poslužitelj će pretvoriti videokodeke koje niste označili.';
	@override String get videoCodecsAlwaysAccepted => 'Uvijek prihvati';
	@override String get musicQualityTitle => 'Glazbena kvaliteta';
	@override String get subtitleStyling => 'Stil titlova';
	@override String get subtitleStylingDescription => 'Prilagodi izgled titlova.';
	@override String get smallSkipDuration => 'Kratki pomak pri premotavanju';
	@override String get largeSkipDuration => 'Dugi pomak pri premotavanju';
	@override String get rewindOnResume => 'Premotaj pri nastavku';
	@override String secondsUnit({required Object seconds}) => '${seconds} sekundi';
	@override String get defaultSleepTimer => 'Zadani mjerač vremena za isključivanje';
	@override String minutesUnit({required Object minutes}) => '${minutes} minuta';
	@override String get rememberTrackSelections => 'Zapamti odabrane zapise za svaku seriju ili film';
	@override String get rememberTrackSelectionsDescription => 'Zapamti odabrani zvuk i titlove za svaki naslov.';
	@override String get rememberTrackSelectionsBackendRule => 'Plex sprema odabire na poslužitelj za svaku datoteku; Jellyfin uključuje i postavku za pamćenje odabira na računu; Emby to ne podržava.';
	@override String get followServerTrackSelections => 'Koristi odabire zapisa s poslužitelja za svaku epizodu';
	@override String get followServerTrackSelectionsDescription => 'Pri prelasku na drugu epizodu koristi zvuk i titlove odabrane na poslužitelju umjesto trenutačnog odabira.';
	@override String get resumeMusicOnLaunch => 'Zapamti glazbenu sesiju';
	@override String get resumeMusicOnLaunchDescription => 'Pri pokretanju aplikacije nastavi posljednju pjesmu od mjesta na kojem je bila zaustavljena.';
	@override String get showChapterMarkersOnTimeline => 'Prikaži oznake poglavlja na traci za premotavanje';
	@override String get showChapterMarkersOnTimelineDescription => 'Podijeli traku za premotavanje prema granicama poglavlja.';
	@override String get specialsOrdering => 'Položaj specijalnih epizoda';
	@override String get specialsOrderingDescription => 'Određuje gdje se specijalne epizode prikazuju u redoslijedu gledanja serije.';
	@override String get specialsOrderingServer => 'Prema redoslijedu poslužitelja';
	@override String get specialsOrderingAirDate => 'Umetni prema datumu emitiranja';
	@override String get specialsOrderingLast => 'Nakon redovnih sezona';
	@override String get clickVideoTogglesPlayback => 'Klikom na videozapis pokreni ili pauziraj reprodukciju';
	@override String get clickVideoTogglesPlaybackDescription => 'Klikni videozapis za pokretanje ili pauziranje reprodukcije umjesto prikaza kontrola.';
	@override String get videoPlayerControls => 'Kontrole reproduktora';
	@override String get keyboardShortcuts => 'Tipkovnički prečaci';
	@override String get keyboardShortcutsDescription => 'Prilagodite tipkovničke prečace';
	@override String get videoPlayerNavigation => 'Navigacija reproduktorom';
	@override String get videoPlayerNavigationDescription => 'Koristi tipke sa strelicama za kretanje kroz kontrole reproduktora.';
	@override String get watchTogetherRelay => 'Poslužitelj za zajedničko gledanje';
	@override String get watchTogetherRelayDescription => 'Koriste se javni poslužitelji Open Watch Partyja ako ne postavite vlastiti.';
	@override String get watchTogetherRelayHint => 'https://my-relay.example.com';
	@override String get watchTogetherRelayInvalid => 'Unesite valjanu osnovnu HTTP ili HTTPS adresu poslužitelja za zajedničko gledanje.';
	@override String get crashReporting => 'Izvješća o padu';
	@override String get crashReportingDescription => 'Šaljite izvješća o padu kako biste pomogli poboljšati aplikaciju';
	@override String get debugLogging => 'Otklanjanje pogrešaka';
	@override String get debugLoggingDescription => 'Omogući detaljno bilježenje za rješavanje problema';
	@override String get viewLogs => 'Prikaži dnevnike';
	@override String get viewLogsDescription => 'Pregledaj dnevnike aplikacije';
	@override String get clearImageCache => 'Očisti predmemoriju slika';
	@override String get clearImageCacheDescription => 'Obriši predmemoriju naslovnica i sličica. Slike se mogu sporije učitavati dok se ponovno ne preuzmu.';
	@override String get clearImageCacheSuccess => 'Predmemorija slika uspješno je izbrisana';
	@override String get resetSettings => 'Resetiraj postavke';
	@override String get resetSettingsDescription => 'Vrati zadane postavke. Ovo se ne može poništiti.';
	@override String get resetSettingsSuccess => 'Postavke su uspješno resetirane';
	@override String get backup => 'Sigurnosna kopija';
	@override String get exportSettings => 'Izvezi postavke';
	@override String get exportSettingsDescription => 'Spremite svoje postavke u datoteku';
	@override String get exportSettingsSuccess => 'Postavke su izvezene';
	@override String get importSettings => 'Uvezi postavke';
	@override String get importSettingsDescription => 'Vratite postavke iz datoteke';
	@override String get importSettingsConfirm => 'Ovo će zamijeniti vaše trenutne postavke. Nastaviti?';
	@override String get importSettingsSuccess => 'Postavke su uvezene';
	@override String get importSettingsInvalidFile => 'Ova datoteka nije važeći izvoz postavki Luroka';
	@override String get importSettingsNoUser => 'Prijavite se prije uvoza postavki';
	@override String get shortcutsReset => 'Prečaci resetirani na zadane';
	@override String get resetShortcutsConfirm => 'Ovo će zamijeniti vaše prilagođene prečace zadanim postavkama. Nastaviti?';
	@override String get about => 'O aplikaciji';
	@override String get aboutDescription => 'Verzija, zasluge i pravne informacije';
	@override String get updates => 'Ažuriranja';
	@override String get updateAvailable => 'Ažuriranje dostupno';
	@override String get checkForUpdates => 'Provjeri ažuriranja';
	@override String get autoCheckUpdatesOnStartup => 'Automatski provjeri ažuriranja pri pokretanju';
	@override String get autoCheckUpdatesOnStartupDescription => 'Obavijesti kada je ažuriranje dostupno pri pokretanju';
	@override String get validationErrorEnterNumber => 'Unesite važeći broj';
	@override String validationErrorDuration({required Object min, required Object max, required Object unit}) => 'Trajanje mora biti između ${min} i ${max} ${unit}';
	@override String shortcutAlreadyAssigned({required Object action}) => 'Prečac je već dodijeljen ${action}';
	@override String shortcutUpdated({required Object action}) => 'Prečac ažuriran za ${action}';
	@override String get saveFailed => 'Spremanje promjena nije uspjelo. Pokušajte ponovno.';
	@override String get autoPlayAndSkip => 'Automatska reprodukcija i preskakanje';
	@override String get autoPlayNextEpisode => 'Automatski reproduciraj sljedeću epizodu';
	@override String get autoPlayNextEpisodeDescription => 'Automatski pokreni sljedeću epizodu kada se jedna završi';
	@override String get shuffleStartsFromBeginning => 'Nasumična reprodukcija počinje od početka';
	@override String get shuffleStartsFromBeginningDescription => 'Započnite svaku epizodu na početku pri nasumivanju umjesto nastavka';
	@override String get playNextCountdown => 'Igrajte sljedeće odbrojavanje';
	@override String get playNextCountdownImmediate => 'Igrajte odmah';
	@override String get skipIntroMode => 'Preskoči uvod';
	@override String get skipIntroModeOffDescription => 'Reproduciraj uvod bez gumba za preskakanje.';
	@override String get skipIntroModeButtonDescription => 'Prikaži gumb za preskakanje kada započne uvod';
	@override String get skipIntroModeAutoDescription => 'Automatski preskoči uvode nakon zadanog čekanja.';
	@override String get skipCreditsMode => 'Preskoči odjavnu špicu';
	@override String get skipCreditsModeOffDescription => 'Reproduciraj odjavnu špicu bez gumba za preskakanje.';
	@override String get skipCreditsModeButtonDescription => 'Prikaži gumb za preskakanje na početku odjavne špice.';
	@override String get skipCreditsModeAutoDescription => 'Automatski preskoči odjavnu špicu i pokreni sljedeću epizodu.';
	@override String get skipMarkerModeOff => 'Isključeno';
	@override String get skipMarkerModeButton => 'Prikaži gumb';
	@override String get skipMarkerModeAuto => 'Automatski';
	@override String get forceSkipMarkerFallback => 'Otkrijte preskakanje iz naziva poglavlja';
	@override String get forceSkipMarkerFallbackDescription => 'Traži oznake uvodne i odjavne špice u nazivima poglavlja čak i kad ih poslužitelj već nudi.';
	@override String get autoSkipDelay => 'Odgoda automatskog preskakanja';
	@override String autoSkipDelayDescription({required Object seconds}) => 'Pričekajte ${seconds} sekundi prije automatskog preskakanja';
	@override String get introPattern => 'Uzorak za oznake uvodne špice';
	@override String get introPatternDescription => 'Regularni izraz za prepoznavanje oznaka uvodne špice u nazivima poglavlja.';
	@override String get creditsPattern => 'Uzorak za oznake odjavne špice';
	@override String get creditsPatternDescription => 'Regularni izraz za prepoznavanje oznaka odjavne špice u nazivima poglavlja.';
	@override String get invalidRegex => 'Nevažeći regularni izraz';
	@override String get regex => 'Regularni izraz';
	@override String get downloads => 'Preuzimanja';
	@override String get downloadLocationDescription => 'Odaberite gdje spremati preuzeti sadržaj';
	@override String get downloadLocationDefault => 'Zadano (pohrana aplikacije)';
	@override String get downloadLocationCustom => 'Prilagođeno mjesto';
	@override String get selectFolder => 'Odaberite mapu';
	@override String get resetToDefault => 'Vrati na zadano';
	@override String currentPath({required Object path}) => 'Trenutno: ${path}';
	@override String get downloadLocationChanged => 'Lokacija preuzimanja promijenjena';
	@override String get downloadLocationReset => 'Lokacija preuzimanja vraćena je na zadanu.';
	@override String get downloadLocationInvalid => 'U odabranu mapu nije moguće pisati';
	@override String get downloadLocationPickerUnavailable => 'Odabir mape nije dostupan na ovom uređaju';
	@override String get downloadOnWifiOnly => 'Preuzmi samo na Wi-Fi';
	@override String get downloadOnWifiOnlyDescription => 'Spriječi preuzimanje putem mobilnih podataka';
	@override String get autoRemoveWatchedDownloads => 'Automatsko uklanjanje gledanih preuzimanja';
	@override String get autoRemoveWatchedDownloadsDescription => 'Automatsko brisanje gledanih preuzimanja';
	@override String get cellularDownloadBlocked => 'Preuzimanja su blokirana na mobilnoj mreži. Koristite Wi-Fi ili promijenite postavku.';
	@override String get maxVolume => 'Maksimalna glasnoća';
	@override String get maxVolumeDescription => 'Dopusti pojačavanje glasnoće iznad 100 % za tihe snimke.';
	@override String maxVolumePercent({required Object percent}) => '${percent}%';
	@override String get discordRichPresence => 'Status aktivnosti na Discordu';
	@override String get discordRichPresenceDescription => 'Prikažite što gledate na Discordu';
	@override String get services => 'Integracije';
	@override String get servicesDescription => 'Povežite Trakt, MyAnimeList, Seerr i više';
	@override String get manageLibrariesDescription => 'Promijeni redoslijed i sakrij biblioteke.';
	@override String get companionRemoteServer => 'Poslužitelj za daljinsko upravljanje';
	@override String get companionRemoteServerDescription => 'Dopusti mobilnim uređajima na vašoj mreži upravljanje ovom aplikacijom.';
	@override String get companionRemoteServerStartFailed => 'Nije moguće pokrenuti poslužitelj za daljinsko upravljanje.';
	@override String get companionRemoteServerStopFailed => 'Nije moguće zaustaviti poslužitelj za daljinsko upravljanje.';
	@override String get autoPip => 'Automatska slika u slici';
	@override String get autoPipDescription => 'Automatski uključi prikaz slike u slici kad tijekom reprodukcije izađeš iz aplikacije.';
	@override String get matchContentFrameRate => 'Uskladi broj sličica u sekundi';
	@override String get matchContentFrameRateDescription => 'Uskladi frekvenciju zaslona s videom kako bi se filmovi reproducirali bez trzanja.';
	@override String get matchContentResolution => 'Uskladi razlučivost sa sadržajem';
	@override String get matchContentResolutionDescription => 'Postavi izvornu razlučivost videa kako bi televizor povećao sliku. Tijekom reprodukcije povećavaju se i izbornici i titlovi.';
	@override String get matchRefreshRate => 'Uskladi frekvenciju osvježavanja';
	@override String get matchRefreshRateDescription => 'Uskladi frekvenciju osvježavanja zaslona u prikazu preko cijelog zaslona.';
	@override String get matchDynamicRange => 'Uskladi dinamički raspon';
	@override String get matchDynamicRangeDescription => 'Uključi HDR za HDR sadržaj, a zatim se vrati na SDR.';
	@override String get displaySwitchDelay => 'Odgoda prebacivanja zaslona';
	@override String get tunneledPlayback => 'Tunelirana reprodukcija';
	@override String get tunneledPlaybackDescription => 'Koristi tuneliranu reprodukciju videa. Isključi ako je HDR slika crna ili se videozapis trza.';
	@override String get audioPassthrough => 'Izravni prijenos zvuka';
	@override String get audioPassthroughDescription => 'Šalje Dolby/DTS zvuk na prijamnik ili televizor bez ponovnog kodiranja, uz očuvanje višekanalnog zvuka. Isključi ako nema zvuka.';
	@override String get audioPassthroughDescriptionApple => 'Koristite Appleov izvorni Dolby dekoder za Dolby Digital Plus, uključujući Atmos. DTS i TrueHD i dalje se reproduciraju kao višekanalni PCM. Isključite ako nemate zvuk.';
	@override String get audioPassthroughDescriptionAppleSpatial => 'Koristi Appleov izvorni Dolby dekoder za Dolby Digital Plus, uključujući Atmos. U sustavima iOS, iPadOS i tvOS 26 ili novijima TrueHD Atmos i DTS:X reproduciraju se kao prostorni zvuk. Ostali DTS i TrueHD zvučni zapisi reproduciraju se kao višekanalni PCM. Isključi ako nema zvuka.';
	@override String get audioPassthroughOverriddenByNormalization => 'Isključeno dok je uključena normalizacija glasnoće';
	@override String get audioChannelLimit => 'Broj zvučnih kanala';
	@override String get audioChannelLimitDescription => 'Svedi dekodirani zvuk na broj kanala koji mogu reproducirati zvučnici, slušalice ili HDMI sustav.';
	@override String get audioChannelLimitOriginal => 'Izvorno';
	@override String get audioChannelLimitOriginalDescription => 'Reproduciraj sve kanale zvučnog zapisa.';
	@override String get audioChannelLimitSurround51 => 'Do 5.1';
	@override String get audioChannelLimitSurround51Description => 'Svedi 7.1 zvuk na 5.1 za televizore i prijamnike koji podržavaju samo 5.1 PCM. Ne utječe na izravni prijenos zvuka.';
	@override String get audioChannelLimitStereo => 'Stereo';
	@override String get audioChannelLimitStereoDescription => 'Svedi zvuk na dva kanala za stereo zvučnike ili slušalice. Isključuje izravni prijenos zvuka.';
	@override String get downmixCenterBoost => 'Pojačanje središnjeg kanala';
	@override String downmixCenterBoostValue({required Object db}) => '${db} dB';
	@override String get downmixCenterBoostLabel => 'Pojačanje (dB)';
	@override String get downmixCenterBoostShort => 'dB';
	@override String get audioDownmixNormalize => 'Ujednači glasnoću pri svođenju kanala';
	@override String get audioDownmixNormalizeDescription => 'Smanji glasnoću kako bi se spriječilo izobličenje. Isključi za očuvanje izvorne glasnoće (glasne scene mogu se izobličiti).';
	@override String get dvConversionMode => 'Dolby Vision pretvorba';
	@override String get dvConversionModeDescription => 'Odaberite kako se rukuje datotekama Dolby Vision profila 7.';
	@override String get dvConversionAuto => 'Automatski';
	@override String get dvConversionNative => 'Izvorno/onemogućeno';
	@override String get dvConversionDv81 => 'P7 → P8.1';
	@override String get dvConversionHevcStrip => 'P7 → HEVC';
	@override String get dvConversionAutoDescription => 'Upotrijebite otkrivanje mogućnosti uređaja i normalno zamjensko ponašanje';
	@override String get dvConversionNativeDescription => 'Forsirajte izvorni DV7 i onemogućite ponovni pokušaj DV konverzije';
	@override String get dvConversionDv81Description => 'Prisilno inline RPU pretvaranje u Dolby Vision profil 8.1';
	@override String get dvConversionHevcStripDescription => 'Skinite slojeve Dolby Vision RPU/EL i predstavite obični HEVC';
	@override String get disableDolbyVision => 'Onemogući Dolby Vision';
	@override String get disableDolbyVisionDescription => 'Reproducirajte HDR10 ili HLG sloj datoteke umjesto Dolby Vision, ako ga ima';
	@override String get hdrSdrConversion => 'Pretvorba HDR u SDR';
	@override String get hdrSdrConversionDescription => 'Odaberite čime će se HDR video pretvoriti kad ga zaslon ne može prikazati.';
	@override String get hdrSdrConversionAuto => 'Automatski';
	@override String get hdrSdrConversionAutoDescription => 'Neka aplikacija odabere što najbolje funkcionira na ovom uređaju';
	@override String get hdrSdrConversionDevice => 'Uređaj';
	@override String get hdrSdrConversionDeviceDescription => 'Pretvorbu obavlja videohardver uređaja. Najbrža je, ali boje ovise o uređaju.';
	@override String get hdrSdrConversionPlayer => 'Reproduktor';
	@override String get hdrSdrConversionPlayerDescription => 'Pretvorbu obavlja reproduktor. Boje su ujednačene, ali 4K video može zastajkivati na slabijim TV uređajima.';
	@override String get deinterlace => 'Uklanjanje isprepletenosti';
	@override String get deinterlaceDescription => 'Ukloni nazubljene rubove sa starih TV snimki i DVD-ova (samo u reproduktoru mpv).';
	@override String get deinterlaceOff => 'Isključeno';
	@override String get deinterlaceOffDescription => 'Prikaži isprepleteni videozapis bez obrade.';
	@override String get deinterlaceVideo => 'Video';
	@override String get deinterlaceVideoDescription => 'Pretvara svako polusličicu u punu sličicu. Koristi se za TV snimke sporta, vijesti, koncerata i sličnog sadržaja.';
	@override String get deinterlaceFilm => 'Film';
	@override String get deinterlaceFilmDescription => 'Vraća izvorne sličice filma i animacije pretvorenih u 29,97 sličica u sekundi, što je uobičajeno na NTSC DVD-ovima. TV snimke mogu trzati. Za TV uživo koristi se način Video.';
	@override String get requireProfileSelectionOnOpen => 'Zatražite profil pri otvaranju aplikacije';
	@override String get requireProfileSelectionOnOpenDescription => 'Prikaži odabir profila pri svakom otvaranju aplikacije';
	@override String get forceTvMode => 'Nametni TV način';
	@override String get forceTvModeKeepTitle => 'Zadrži TV izgled?';
	@override String forceTvModeKeepBody({required Object seconds}) => 'TV izgled je dizajniran za daljinske upravljače. Vraćanje na normalni izgled za ${seconds} s.';
	@override String get forceTvModeKeepConfirm => 'Zadrži TV izgled';
	@override String get forceTvModeReverted => 'TV izgled je poništen';
	@override String get forceTvModeDescription => 'Nametni TV izgled. Za uređaje koji se ne otkriju automatski. Zahtijeva ponovno pokretanje.';
	@override String get startInFullscreen => 'Počnite na cijelom zaslonu';
	@override String get startInFullscreenDescription => 'Otvorite Luroka na cijelom zaslonu pri pokretanju';
	@override String get exitFullscreenOnPlayerClose => 'Izađi iz cijelog zaslona pri zatvaranju reproduktora';
	@override String get exitFullscreenOnPlayerCloseDescription => 'Automatski izađi iz cijelog zaslona pri zatvaranju videoreproduktora.';
	@override String get autoHidePerformanceOverlay => 'Automatski sakrij prikaz performansi';
	@override String get autoHidePerformanceOverlayDescription => 'Izblijedite sloj izvedbe pomoću kontrola reprodukcije';
	@override String get showNavBarLabels => 'Prikaži oznake na navigacijskoj traci';
	@override String get showNavBarLabelsDescription => 'Prikaz tekstualnih oznaka ispod ikona navigacijske trake';
	@override String get startupSection => 'Odjeljak za pokretanje';
	@override String get showExploreTab => 'Prikaži karticu Istraži';
	@override String get showExploreTabDescription => 'Prikaži karticu Istraži sa sadržajem iz Plex Discovera i povezanih servisa za praćenje.';
	@override String get liveTvDefaultFavorites => 'Zadani Omiljeni kanali';
	@override String get liveTvDefaultFavoritesDescription => 'Prikaži samo omiljene kanale kada otvorite TV uživo';
	@override String get general => 'Općenito';
	@override String get generalDescription => 'Jezik, pokretanje i ponašanje prozora';
	@override String get languageAndRegion => 'Jezik i regija';
	@override String get startup => 'Pokretanje';
	@override String get display => 'Zaslon';
	@override String get libraryAndCards => 'Biblioteke i kartice';
	@override String get homeScreen => 'Početni zaslon';
	@override String get navigation => 'Navigacija';
	@override String get window => 'Prozor';
	@override String get liveTv => 'Televizija uživo';
	@override String get player => 'Reproduktor';
	@override String get videoAndDisplay => 'Video i zaslon';
	@override String get audio => 'Zvuk';
	@override String get quality => 'Kvaliteta';
	@override String get subtitles => 'Titlovi';
	@override String get seekAndTiming => 'Premotavanje i vrijeme';
	@override String get behavior => 'Ponašanje';
	@override String get gestures => 'Pokreti';
	@override String get gestureBrightnessSwipe => 'Svjetlina';
	@override String get gestureBrightnessSwipeDescription => 'Prijeđite prstom gore ili dolje na lijevom rubu za podešavanje svjetline';
	@override String get gestureVolumeSwipe => 'Prevlačenje glasnoće';
	@override String get gestureVolumeSwipeDescription => 'Prijeđite prstom gore ili dolje na desnom rubu za podešavanje glasnoće';
	@override String get gesturePinchToZoom => 'Stisnite prste za zumiranje';
	@override String get gesturePinchToZoomDescription => 'Stisnite prste na videozapisu za povećanje ili smanjenje';
	@override String get rememberBrightnessLevel => 'Zapamtite razinu svjetline';
	@override String get rememberBrightnessLevelDescription => 'Započnite reprodukciju na svjetlini postavljenoj zadnjim prelaskom';
	@override String get controls => 'Kontrole';
	@override String get rememberPlayerChanges => 'Zapamti promjene postavki reproduktora';
	@override String get rememberPlayerChangesDescription => 'Spremi promjene postavki tijekom reprodukcije i primijeni ih sljedeći put.';
	@override String get scopePlaybackSpeed => 'Brzina reprodukcije';
	@override String get scopeShaderPreset => 'Unaprijed postavljeni shader';
	@override String get scopeAspectRatio => 'Omjer slike';
	@override String get scopeSyncOffsets => 'Sinkronizacija zvuka i titlova';
	@override String get playerScopeOff => 'Ne pamti postavke';
	@override String get playerScopeGlobal => 'Za sve sadržaje';
	@override String get playerScopeLibrary => 'Po biblioteci';
	@override String get playerScopeTitle => 'Za svaku seriju ili film';
	@override String get exportDialogTitle => 'Izvezite postavke Luroka';
	@override String get velvetHourTheme => 'Baršunasti sat';
}

// Path: themeEditor
class _Translations$themeEditor$hr extends Translations$themeEditor$en {
	_Translations$themeEditor$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get builtIn => 'Ugrađeni';
	@override String get presets => 'Unaprijed postavljene postavke';
	@override String get custom => 'Prilagođeno';
	@override String get customEmpty => 'Još nije stvoreno';
	@override String get editCustom => 'Uredi prilagođenu temu';
	@override String get editCustomDescription => 'Svaku boju odaberite sami';
	@override String get locked => 'Otključaj uz podršku';
	@override String get savedLocked => 'Spremljeno — otključava se uz podršku';
	@override String get title => 'Prilagođena tema';
	@override String get startFrom => 'Počnite od';
	@override String get startFromDescription => 'Kopirajte sve boje iz druge teme';
	@override String get colors => 'Boje';
	@override String get preview => 'Pregled';
	@override late final _Translations$themeEditor$slots$hr slots = _Translations$themeEditor$slots$hr._(_root);
	@override String get opacity => 'Neprozirnost';
	@override String get hexHint => '#RRGGBB ili #AARRGGBB';
	@override String get fromOtherThemes => 'Od drugih tema';
	@override String swatchLabel({required Object theme, required Object color}) => '${theme} ${color}';
	@override late final _Translations$themeEditor$contrast$hr contrast = _Translations$themeEditor$contrast$hr._(_root);
	@override String lowContrast({required Object pair, required Object ratio, required Object minimum}) => '${pair}: ${ratio}:1, ispod preporučenog ${minimum}:1';
	@override String get discardTitle => 'Odbaciti promjene?';
	@override String get discardMessage => 'Vaše nespremljene promjene boja bit će izgubljene.';
	@override String get discard => 'Odbaciti';
	@override String previewCardTitle({required Object number}) => 'Epizoda ${number}';
	@override String previewCardSubtitle({required Object minutes}) => 'Preostalo ${minutes} min';
	@override String get previewSwitch => 'Automatska reprodukcija';
	@override String get previewMutedText => 'Sekundarni tekst glasi ovako';
}

// Path: seriesBrowser
class _Translations$seriesBrowser$hr extends Translations$seriesBrowser$en {
	_Translations$seriesBrowser$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get oneEpisode => '1 epizoda';
	@override String watchedCount({required Object count}) => '${count} pogledanih';
	@override String episodeCount({required Object count}) => '${count} epizoda';
	@override String episodesFor({required Object season}) => '${season} · Epizode';
	@override String get enterHint => 'Odaberite: otvorena sezona · ↓: epizode';
}

// Path: titlePage
class _Translations$titlePage$hr extends Translations$titlePage$en {
	_Translations$titlePage$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get genre => 'Žanr';
	@override String remaining({required Object time}) => 'Preostalo ${time}';
	@override String continueEpisode({required Object season, required Object episode}) => 'Nastavi gledati S${season} E${episode}';
	@override String get watchlist => 'Popis za gledanje';
	@override String get more => 'Više';
}

// Path: tvMenus
class _Translations$tvMenus$hr extends Translations$tvMenus$en {
	_Translations$tvMenus$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get appearanceDescription => 'Tema, margine zaslona i posteri';
}

// Path: lurokaPlayer
class _Translations$lurokaPlayer$hr extends Translations$lurokaPlayer$en {
	_Translations$lurokaPlayer$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Postavke reproduktora';
	@override String get watch => 'Gledanje';
	@override String get watchDescription => 'Odaberite tempo reprodukcije i što slijedi.';
	@override String get picture => 'Postavke slike';
	@override String get pictureDescription => 'Zumiranje, HDR i obrada videa';
	@override String get sound => 'Zvuk i titlovi';
	@override String get audioSettings => 'Postavke zvuka';
	@override String get soundDescription => 'Sinkronizacija, glasnoća i zvučni izlaz';
	@override String get chooseTracks => 'Odaberite jezike i titlove';
	@override String get tools => 'Napredno';
	@override String get toolsDescription => 'Podaci o reprodukciji i dijagnostika';
	@override String get preferences => 'Postavke reprodukcije';
	@override String get preferencesDescription => 'Postavke gledanja. Najprije odaberite zvuk i titlove, a zatim prilagodite strujanje i prikaz.';
	@override String get streamPreferences => 'Kvaliteta slike';
	@override String get displayPreferences => 'Prikaz';
	@override String get enginePreferences => 'Napredne postavke reproduktora';
	@override String get seekPreferences => 'Premotavanje';
	@override String get watchPreferences => 'Automatska reprodukcija i preskakanje';
	@override String get rememberPreferences => 'Pamti postavke';
}

// Path: lurokaSettings
class _Translations$lurokaSettings$hr extends Translations$lurokaSettings$en {
	_Translations$lurokaSettings$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get quickSetup => 'Brzo postavljanje';
	@override String get quickSetupDescription => 'Brzo postavite osnovne mogućnosti: kretanje kroz TV sučelje, prilagodbu slike zaslonu, izgled početne stranice i reprodukciju.';
	@override String get experience => 'Vaše iskustvo';
	@override String get experienceDescription => 'Prilagodite Luroku: izgled, jezik, reprodukciju, biblioteke i vrijeme uporabe zaslona.';
	@override String get remoteHint => '↑ ↓ Pregledaj kategorije · → / Odaberi za otvaranje opcija · ← Natrag na kategorije';
}

// Path: playerChrome
class _Translations$playerChrome$hr extends Translations$playerChrome$en {
	_Translations$playerChrome$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get browse => 'Poglavlja i red čekanja';
	@override String get backToPlayback => 'Povratak na reprodukciju';
	@override String get nowPlaying => 'TRENUTNO SE REPRODUCIRA';
	@override String get options => 'OPCIJE REPRODUKTORA';
}

// Path: tvLayout
class _Translations$tvLayout$hr extends Translations$tvLayout$en {
	_Translations$tvLayout$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get screenMargins => 'TV rubovi zaslona';
	@override String get screenMarginsDescription => 'Smanjite rubove aplikacije ako vaš TV odreže dio slike';
	@override String get screenMarginsDefault => '0 % (zadano)';
}

// Path: studios
class _Translations$studios$hr extends Translations$studios$en {
	_Translations$studios$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get checkingCopies => 'Provjera ostalih biblioteka... U svakom trenutku možete odabrati već pronađenu kopiju.';
	@override String get incompleteCopies => 'Nije moguće provjeriti neke biblioteke. Odaberite već pronađenu kopiju ili odustanite i pokušajte ponovno.';
	@override String get partialFavorites => 'Neki favoriti se ne mogu učitati. Odaberite Osvježi za ponovni pokušaj.';
	@override String get copyLookupFailedTitle => 'Nije moguće provjeriti sve kopije';
	@override String get copyLookupFailedMessage => 'Neke biblioteke nisu odgovorile. Možete otvoriti jednu od već pronađenih kopija ili odustati i pokušati ponovno.';
	@override String get openKnownCopies => 'Prikaži poznate kopije';
	@override String get browseAll => 'Pregledaj sve';
	@override String titleCount({required Object count}) => '${count} naslova';
	@override String get topRated => 'Najbolje ocijenjeno';
	@override String get mostWatched => 'Najgledanije u vašoj biblioteci';
	@override String get collection => 'ZBIRKA STUDIJA';
	@override String loadedTitles({required Object count}) => 'Učitano naslova: ${count}';
	@override String get sort => 'Poredaj naslove';
	@override String get sortTitleAscending => 'Naslov A–Z';
	@override String get sortTitleDescending => 'Naslov Z–A';
	@override String get sortNewest => 'Najnovije izdanje';
	@override String get sortOldest => 'Najstarije izdanje';
	@override String get sortAdded => 'Nedavno dodano';
	@override String get sortEpisodeAdded => 'Nedavno dodana epizoda';
	@override String get sortRating => 'Najviša ocjena';
	@override String get title => 'Pregled po studiju';
	@override String get all => 'Sve';
	@override String get movies => 'Filmovi';
	@override String get shows => 'TV emisije';
	@override String get loadMore => 'Učitaj više naslova';
	@override String get empty => 'U trenutačno vidljivim bibliotekama nema odgovarajućih naslova.';
	@override String get retry => 'Nije moguće učitati više naslova — odaberi za ponovni pokušaj.';
	@override String get description => 'Pregledajte filmove i serije ovog studija u svojim bibliotekama.';
}

// Path: dashboard
class _Translations$dashboard$hr extends Translations$dashboard$en {
	_Translations$dashboard$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get previousFeature => 'Prethodni istaknuti naslov';
	@override String get nextFeature => 'Sljedeći istaknuti naslov';
	@override String get cinemaHome => 'POČETNA';
	@override String get episodeFallback => 'TV epizoda';
	@override String timeLeft({required Object minutes}) => 'Preostalo je ${minutes} min';
	@override String timeLeftHours({required Object hours, required Object minutes}) => 'Preostalo je ${hours} h i ${minutes} min';
	@override String get spoilerHidden => 'Pojedinosti o epizodi skrivene su zbog postavke za skrivanje spoilera.';
	@override String get synopsisUnavailable => 'Otvori pojedinosti da saznaš više o ovom naslovu.';
	@override String get yourSpace => 'VAŠ PROSTOR';
	@override String get title => 'Vaša filmska priča.';
	@override String get subtitle => 'Nastavite priču ili pronađite sljedeću.';
	@override String get featured => 'LUROKIN IZBOR';
	@override String get jumpBackIn => 'Nastavite gledati';
	@override String episodeLabel({required Object season, required Object episode}) => 'S${season} · E${episode}';
	@override String get anotherPick => 'Još jedan izbor';
	@override String get exploreSeries => 'Istražite seriju';
	@override String get showFeatured => 'Pojedinosti istaknutog naslova';
	@override String get showFeaturedDescription => 'Prikaži sliku, sinopsis i informacije o epizodi za istaknutu karticu';
}

// Path: lurokaCatalog
class _Translations$lurokaCatalog$hr extends Translations$lurokaCatalog$en {
	_Translations$lurokaCatalog$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get aboutPerson => 'U SREDIŠTU POZORNOSTI';
	@override String get biographyUnavailable => 'Biografija nije dostupna s ovog poslužitelja.';
	@override String get filmography => 'Filmovi i serije u vašim bibliotekama';
	@override String get recommended => 'Preporučeno';
	@override String get browse => 'Svi naslovi';
	@override String get collections => 'Zbirke';
	@override String get browseHint => 'Pregledajte katalog i suzite izbor filtrima i sortiranjem.';
	@override String get recommendedHint => 'Pronađite svoju sljedeću priču';
	@override String get details => 'Iza priče';
}

// Path: referenceDetails
class _Translations$referenceDetails$hr extends Translations$referenceDetails$en {
	_Translations$referenceDetails$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get oneEpisodeLeft => 'Još 1 epizoda';
	@override String get playAll => 'Reproduciraj sve';
	@override String get present => 'Trenutačno';
	@override String get continuing => 'U tijeku';
	@override String get upNext => 'Sljedeći';
	@override String episodesLeft({required Object count}) => 'Preostalo epizoda: ${count}';
}

// Path: lurokaThemes
class _Translations$lurokaThemes$hr extends Translations$lurokaThemes$en {
	_Translations$lurokaThemes$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Palete boja Luroke';
	@override String get coral => 'Koralj · ponoćno plava i zalazak sunca';
	@override String get ocean => 'Ocean · tamnoplava i ledenoplava';
	@override String get jade => 'Žad · tamnozelena i boja mente';
	@override String get amethyst => 'Ametist · ponoćna ljubičica';
	@override String get darkThemes => 'Mračne kinematografske teme';
	@override String get lightThemes => 'Lagane kino teme';
	@override String get moreThemes => 'Više tema';
	@override String get moreThemesDescription => 'Pregledajte dodatne palete i prilagođene boje';
	@override String get obsidian => 'Obsidijan · čista crna i boja šampanjca';
	@override String get nocturne => 'Nokturno · ugljen i šampanjac';
	@override String get burgundy => 'Bordo · baršunasto vino i ruža';
	@override String get slate => 'Škriljevac · grafitna i modroljubičasta';
	@override String get espresso => 'Espresso · kakao i karamela';
	@override String get pearl => 'Biser · porculan i safir';
	@override String get linen => 'Lan · topla boja slonovače i terakote';
	@override String get sunrise => 'Izlazak sunca · boja breskve i koraljna';
	@override String get coastal => 'Obala · boja magle i mora';
	@override String get latte => 'Latte · kremasta i karamelna';
	@override String get sage => 'Kadulja · nježno zelena i eukaliptus';
	@override String get lavender => 'Lavanda · lila & tamnoljubičasta';
}

// Path: customPerformance
class _Translations$customPerformance$hr extends Translations$customPerformance$en {
	_Translations$customPerformance$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Performanse i efekti';
	@override String get fireStickMode => 'Način rada uređaja male snage';
	@override String get description => 'Koristi manje efekata, nepomične pozadine, slike razlučivosti do 720p i predmemoriju slika od 40 MiB. Dok je ova opcija uključena, nadjačava postavku vizualnih efekata. Isključivanjem se vraća prethodna postavka.';
	@override String get detailsTitle => 'Pojedinosti o performansama';
	@override String get details => 'Aktivni efekti, ograničenje predmemorije slika i mjerenja brzine pregledavanja';
	@override String get effectsTier => 'Razina aktivnih učinaka';
	@override String get imageCache => 'Ograničenje predmemorije slike';
	@override String get measurement => 'Mjerenje performansi';
	@override String get measureInstructions => 'Pokrenite mjerenje od 20 sekundi, vratite se na početnu stranicu i krećite se kroz aplikaciju daljinskim upravljačem. Vratite se ovamo da biste vidjeli rezultate. Za usporedbu ponovite iste radnje s uključenom i isključenom opcijom. Mjeri se rad Flutterova sučelja, a ne performanse videodekodera.';
	@override String get startSample => 'Pokrenite uzorak od 20 sekundi';
	@override String get stopSample => 'Završite uzorak sada';
	@override String get sampling => 'Mjerenje je u tijeku — vratite se na početnu stranicu i koristite aplikaciju. Rezultati će se prikazati ovdje.';
	@override String get frames => 'Izmjerene sličice';
	@override String get slowFrames => 'Sličice koje su prekoračile vremensko ograničenje';
	@override String get buildP95 => 'Vrijeme iscrtavanja sučelja (95. percentil)';
	@override String get rasterP95 => 'Vrijeme rasterizacije (95. percentil)';
	@override String get frameBudget => 'Vremensko ograničenje po sličici';
	@override String get processMemory => 'Memorija procesa aplikacije na kraju uzorka';
	@override String get noFrames => 'Nisu zabilježene iscrtane sličice. Pokrenite novo mjerenje i koristite aplikaciju.';
}

// Path: homeLayout
class _Translations$homeLayout$hr extends Translations$homeLayout$en {
	_Translations$homeLayout$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Prilagodi početnu stranicu';
	@override String get description => 'Odaberite redoslijed redaka i vidljivost za ovaj profil. Odaberite redak da biste ga premjestili ili sakrili.';
	@override String get rows => 'Retci početne stranice';
	@override String get visible => 'Vidljivo';
	@override String get hidden => 'Skriveno';
	@override String get showRow => 'Prikaži red';
	@override String get hideRow => 'Sakrij red';
	@override String get moveUp => 'Pomakni gore';
	@override String get moveDown => 'Pomakni dolje';
	@override String get pinnedCollections => 'Prikvačene zbirke';
	@override String get pinInstructions => 'Otvori izbornik zbirke i odaberi Prikvači na početnu. Ovdje odaberi prikvačenu zbirku da ukloniš njezin prečac.';
	@override String get pinCollection => 'Prikvači na početnu';
	@override String get unpinCollection => 'Otkvači s početne stranice';
	@override String get reset => 'Vrati zadane retke';
	@override String get resetDescription => 'Želite li vratiti izvorni redoslijed redaka i prikazati ih sve za ovaj profil? Prikvačene zbirke ostat će sačuvane.';
	@override String get saveFailed => 'Nije moguće spremiti raspored početne stranice. Pokušajte ponovno.';
	@override String get emptyHint => 'Neki retci možda su skriveni. Otvorite Prilagodi početnu stranicu da biste ih ponovno prikazali.';
}

// Path: screenTime
class _Translations$screenTime$hr extends Translations$screenTime$en {
	_Translations$screenTime$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vrijeme gledanja';
	@override String get description => 'Prikazuje koliko je vremena na ovom profilu provedeno gledajući videozapise.';
	@override String get today => 'Danas';
	@override String get thisWeek => 'Ovaj tjedan';
	@override String get thisMonth => 'Ovaj mjesec';
	@override String get lessThanMinute => '< 1 min';
	@override String minutes({required Object count}) => '${count} min';
	@override String hours({required Object count}) => '${count} h';
	@override String hoursMinutes({required Object hours, required Object minutes}) => '${hours} h ${minutes} min';
}

// Path: activityStats
class _Translations$activityStats$hr extends Translations$activityStats$en {
	_Translations$activityStats$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Statistika gledanja';
	@override String get period => 'Razdoblje';
	@override String get last7Days => '7 dana';
	@override String get last30Days => '30 dana';
	@override String get last90Days => '90 dana';
	@override String get thisYear => 'Ove godine';
	@override String get allTime => 'Ukupno';
	@override String get heroAllTime => 'Ukupno';
	@override String get heroDailyAverage => 'Dnevni prosjek';
	@override String get consistency => 'Dosljednost';
	@override String get currentStreak => 'Trenutačni niz';
	@override String dayCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hr'))(n,
		one: '${n} dan',
		few: '${n} dana',
		other: '${n} dana',
	);
	@override String get longestStreak => 'Najduži niz';
	@override String get bestDay => 'Najbolji dan';
	@override String get bestWeek => 'Najbolji tjedan';
	@override String get trendTitle => 'Vrijeme gledanja';
	@override String get trendToday => 'Danas';
	@override String gapDetail({required Object stat, required Object range}) => '${stat} · ${range}';
	@override String get patternsTitle => 'Vaše navike gledanja';
	@override String mostlyKind({required Object kind}) => 'Najviše: ${kind}';
	@override String get weekdayTitle => 'Po danu tjedna';
	@override String get hoursTitle => 'Po satu dana';
	@override String get amLabel => 'AM';
	@override String get pmLabel => 'PM';
	@override String get kindsTitle => 'Po kategoriji';
	@override String get kindMovie => 'Filmovi';
	@override String get kindTv => 'TV';
	@override String get kindLiveTv => 'Televizija uživo';
	@override String get kindMusic => 'Glazba';
	@override String get kindOther => 'Ostalo';
	@override String get topTitlesTitle => 'Najgledanije';
	@override String get sessionsTitle => 'Nedavne sesije';
	@override String get showMore => 'Prikaži više';
	@override String get sessionNoTitle => 'Nepoznat naslov';
	@override String get emptyTitle => 'Još nema podataka';
	@override String get emptyBody => 'Pogledajte nešto i ovdje će se prikazati vaša statistika.';
	@override String get noDataInPeriod => 'U ovom razdoblju nije snimljena reprodukcija.';
}

// Path: search
class _Translations$search$hr extends Translations$search$en {
	_Translations$search$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get hint => 'Pretražite filmove, serije i glazbu...';
	@override String get tryDifferentTerm => 'Pokušajte s drugim pojmom za pretraživanje';
	@override String get searchYourMedia => 'Pretražite svoju zbirku';
	@override String get enterTitleActorOrKeyword => 'Unesite naslov, glumca ili ključnu riječ';
	@override String get people => 'Ljudi';
	@override String get recentSearches => 'Nedavne pretrage';
	@override String get clearHistory => 'Obriši povijest';
}

// Path: hotkeys
class _Translations$hotkeys$hr extends Translations$hotkeys$en {
	_Translations$hotkeys$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String setShortcutFor({required Object actionName}) => 'Postavite prečac za ${actionName}';
	@override String get clearShortcut => 'Obriši prečac';
	@override String get noShortcutSet => 'Nema postavljenih prečaca';
	@override String get currentShortcut => 'Trenutačni prečac:';
	@override String get pressToRecord => 'Odaberite za snimanje prečaca';
	@override String get recordingShortcut => 'Sada pritisnite prečac';
	@override late final _Translations$hotkeys$actions$hr actions = _Translations$hotkeys$actions$hr._(_root);
}

// Path: fileInfo
class _Translations$fileInfo$hr extends Translations$fileInfo$en {
	_Translations$fileInfo$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Podaci o datoteci';
	@override String get overview => 'Pregled';
	@override String get video => 'Videozapis';
	@override String get audio => 'Zvuk';
	@override String get subtitles => 'Titlovi';
	@override String get images => 'Ugrađene slike';
	@override String get dataStreams => 'Tokovi podataka';
	@override String get lyrics => 'Tekst pjesme';
	@override String get file => 'Datoteka';
	@override String get attachments => 'Prilozi';
	@override String get delivery => 'Način isporuke';
	@override String versionCounter({required Object index, required Object count}) => 'Verzija ${index} od ${count}';
	@override String fileCounter({required Object index, required Object count}) => 'Datoteka ${index} od ${count}';
	@override String get noStreams => 'Poslužitelj je prijavio da nema tokova za ovu datoteku.';
	@override String get copyPath => 'Kopiraj putanju';
	@override String get pathCopied => 'Putanja datoteke kopirana';
	@override String get codec => 'Kodek';
	@override String get codecTag => 'Oznaka kodeka';
	@override String get resolution => 'Razlučivost';
	@override String get codedResolution => 'Kodirana razlučivost';
	@override String get bitrate => 'Brzina prijenosa';
	@override String get frameRate => 'Broj sličica u sekundi';
	@override String get rotation => 'Zakretanje';
	@override String get comment => 'Komentar';
	@override String get audioDescription => 'Opis zvuka';
	@override String get headerCompression => 'Kompresija zaglavlja';
	@override String get sidecarFile => 'Popratna datoteka';
	@override String get transportTimestamp => 'Vremenska oznaka prijenosa';
	@override String get displayOffset => 'Pomak zaslona';
	@override String get previewFailureCode => 'Kod pogreške pregleda';
	@override String get previewRetries => 'Ponovni pokušaji pregleda';
	@override String get aspectRatio => 'Omjer slike';
	@override String get pixelAspectRatio => 'Omjer slike piksela';
	@override String get profile => 'Profil';
	@override String get level => 'Razina';
	@override String get bitDepth => 'Bitna dubina';
	@override String get pixelFormat => 'Format piksela';
	@override String get colorSpace => 'Prostor boja';
	@override String get colorRange => 'Raspon boja';
	@override String get colorPrimaries => 'Primarne boje';
	@override String get colorTransfer => 'Prijenos boja';
	@override String get chromaSubsampling => 'Poduzorkovanje kromatske komponente';
	@override String get chromaLocation => 'Položaj kromatske komponente';
	@override String get scanType => 'Vrsta skeniranja';
	@override String get interlaced => 'Isprepleteno';
	@override String get anamorphic => 'Anamorfno';
	@override String get referenceFrames => 'Referentni okviri';
	@override String get dynamicRange => 'Dinamički raspon';
	@override String get dolbyVision => 'Dolby Vision';
	@override String get dolbyVisionLevel => 'Razina Dolby Vision';
	@override String get dolbyVisionVersion => 'Verzija Dolby Vision';
	@override String get dolbyVisionLayers => 'Slojevi Dolby Visiona';
	@override String get baseLayerCompatibility => 'Kompatibilnost osnovnog sloja';
	@override String get avcBitstream => 'AVC tok podataka';
	@override String get nalLengthSize => 'Veličina duljine NAL-a';
	@override String get scalingMatrix => 'Prilagođena matrica skaliranja';
	@override String get streamIdentifier => 'Identifikator toka';
	@override String get streamIndex => 'Indeks toka';
	@override String get streamId => 'ID toka';
	@override String get language => 'Jezik';
	@override String get languageCode => 'Kod jezika';
	@override String get streamTitle => 'Naziv zvučnog zapisa';
	@override String get channels => 'Kanali';
	@override String get sampleRate => 'Frekvencija uzorkovanja';
	@override String get spatialAudio => 'Prostorni zvuk';
	@override String get textBased => 'Na temelju teksta';
	@override String get subtitleFormat => 'Format pomoćne datoteke';
	@override String get provider => 'Pružatelj';
	@override String get matchScore => 'Ocjena podudaranja';
	@override String get externalDelivery => 'Može se isporučiti zasebno';
	@override String get sidecarPath => 'Putanja pomoćne datoteke';
	@override String get sourceStream => 'Izvorni tok';
	@override String get temporary => 'Privremeno';
	@override String get timeBase => 'Vremenska baza';
	@override String get overallBitrate => 'Ukupna brzina prijenosa';
	@override String get path => 'Putanja';
	@override String get fileName => 'Naziv datoteke';
	@override String get size => 'Veličina';
	@override String get totalSize => 'Ukupna veličina';
	@override String get container => 'Kontejner';
	@override String get duration => 'Trajanje';
	@override String get previewThumbnails => 'Pregled sličica';
	@override String get previewIndex => 'Indeks pregleda';
	@override String get packetLength => 'Duljina paketa';
	@override String get filePresent => 'Datoteka prisutna';
	@override String get fileReadable => 'Poslužitelj može pročitati datoteku';
	@override String get streamPath => 'Putanja toka';
	@override String get optimizedForStreaming => 'Optimizirano za strujanje';
	@override String get has64bitOffsets => '64-bitni pomaci';
	@override String get protocol => 'Protokol';
	@override String get mediaType => 'Vrsta medija';
	@override String get sourceKind => 'Vrsta izvora';
	@override String get optimizedVersion => 'Optimizirana verzija';
	@override String get optimizationTarget => 'Cilj optimizacije';
	@override String get deletedAt => 'Izbrisano';
	@override String get remoteSource => 'Udaljeni izvor';
	@override String get infiniteStream => 'Beskonačni tok';
	@override String get directPlay => 'Izravna reprodukcija';
	@override String get directStream => 'Izravno strujanje';
	@override String get transcoding => 'Transkodiranje';
	@override String get etag => 'ETag';
	@override String get versionId => 'ID verzije';
	@override String get fileId => 'ID datoteke';
	@override String get defaultAudioTrack => 'Zadani zvučni zapis';
	@override String get defaultSubtitleTrack => 'Zadani zapis titlova';
	@override String get subtitlesOff => 'Isključeno';
	@override String get flagDefault => 'Zadano';
	@override String get flagForced => 'Prisilno';
	@override String get flagSelected => 'Odabrano';
	@override String get flagExternal => 'Vanjski';
	@override String get flagHearingImpaired => 'Za osobe oštećena sluha';
	@override String get flagDub => 'Sinkronizirano';
	@override String get flagOriginal => 'Izvornik';
	@override String get channelsMono => 'Mono';
	@override String dolbyVisionProfile({required Object profile}) => 'Profil ${profile}';
}

// Path: mediaMenu
class _Translations$mediaMenu$hr extends Translations$mediaMenu$en {
	_Translations$mediaMenu$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get markAsWatched => 'Označi kao gledano';
	@override String get markAsUnwatched => 'Označi kao negledano';
	@override String get clearProgress => 'Obriši napredak gledanja';
	@override String get removeFromContinueWatching => 'Ukloni iz Nastavi gledati';
	@override String get viewDetails => 'Vidi detalje';
	@override String get goToSeries => 'Idi na seriju';
	@override String get shufflePlay => 'Reprodukcija slučajnim redoslijedom';
	@override String get shuffleNotAvailableOffline => 'Nasumična reprodukcija nije dostupna izvan mreže';
	@override String get fileInfo => 'Podaci o datoteci';
	@override String get deleteEpisodeFromServer => 'Izbriši epizodu s poslužitelja';
	@override String get deleteSeasonFromServer => 'Izbriši sezonu s poslužitelja';
	@override String get deleteShowFromServer => 'Izbriši seriju s poslužitelja';
	@override String get deleteMovieFromServer => 'Izbriši film s poslužitelja';
	@override String get deleteEpisodeTitle => 'Izbrisati ovu epizodu?';
	@override String get deleteSeasonTitle => 'Izbrisati ovu sezonu?';
	@override String get deleteShowTitle => 'Izbrisati ovu seriju?';
	@override String get deleteMovieTitle => 'Izbrisati ovaj film?';
	@override String get deleteEpisodeConfirm => 'Izbriši epizodu';
	@override String get deleteSeasonConfirm => 'Izbriši sezonu';
	@override String get deleteShowConfirm => 'Izbriši seriju';
	@override String get deleteMovieConfirm => 'Izbriši film';
	@override String get deleteAnyway => 'Svejedno izbriši';
	@override String confirmDeleteTarget({required Object title}) => 'Trajno izbrisati ${title} s poslužitelja?';
	@override String get deleteMultipleWarning => 'Ovo uključuje sve epizode i njihove datoteke.';
	@override String deleteEpisodeCountWarning({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hr'))(n,
		one: 'Time će se izbrisati ${n} epizoda i njezina datoteka.',
		few: 'Time će se izbrisati ${n} epizode i njihove datoteke.',
		other: 'Time će se izbrisati svih ${n} epizoda i njihove datoteke.',
	);
	@override String deleteMultiPartWarning({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hr'))(n,
		one: 'Ova je stavka pohranjena u ${n} datoteci koja će biti izbrisana.',
		few: 'Ova je stavka pohranjena u ${n} datotekama i sve će biti izbrisane.',
		other: 'Ova je stavka pohranjena u ${n} datoteka i sve će biti izbrisane.',
	);
	@override String deleteSharedFileHeading({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hr'))(n,
		one: 'Još je ${n} epizoda pohranjena u istoj datoteci i također će biti izbrisana:',
		few: 'Još ${n} epizode pohranjene su u istoj datoteci i također će biti izbrisane:',
		other: 'Još ${n} epizoda pohranjeno je u istoj datoteci i također će biti izbrisano:',
	);
	@override String get deleteScopeUnverifiedProbeFailed => 'Aplikacija Luroka nije mogla provjeriti koje će se datoteke izbrisati, pa bi moglo biti obrisano više od gore navedene stavke. Odustani i pokušaj ponovno ili svejedno izbriši.';
	@override String get deleteScopeUnverifiedNoFileInfo => 'Poslužitelj nije poslao podatke o datoteci pa Luroka ne može provjeriti što će se izbrisati. Moglo bi biti obrisano više od gore navedenih stavki.';
	@override String get mediaDeletedSuccessfully => 'Medijska stavka uspješno izbrisana';
	@override String get mediaFailedToDelete => 'Brisanje medijske stavke nije uspjelo';
	@override String get rate => 'Ocijeni';
	@override String get playFromBeginning => 'Reproduciraj od početka';
	@override String get playVersion => 'Reproduciraj verziju...';
}

// Path: rateSheet
class _Translations$rateSheet$hr extends Translations$rateSheet$en {
	_Translations$rateSheet$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ocijenite';
	@override String get server => 'Poslužitelj';
	@override String get favorite => 'Omiljeno';
	@override String get favorited => 'Dodano među favorite';
	@override String get saved => 'Spremljeno';
	@override String get notAvailable => 'Nije pronađeno podudaranje';
	@override String get noConnectedServices => 'Povežite uslugu u Postavkama da biste mogli ocjenjivati sadržaj.';
}

// Path: accessibility
class _Translations$accessibility$hr extends Translations$accessibility$en {
	_Translations$accessibility$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String mediaCardMovie({required Object title}) => '${title}, film';
	@override String mediaCardShow({required Object title}) => '${title}, TV serija';
	@override String mediaCardEpisode({required Object title, required Object episodeInfo}) => '${title}, ${episodeInfo}';
	@override String mediaCardSeason({required Object title, required Object seasonInfo}) => '${title}, ${seasonInfo}';
	@override String get mediaCardWatched => 'pogledano';
	@override String mediaCardPartiallyWatched({required Object percent}) => 'pogledano ${percent} posto';
	@override String get mediaCardUnwatched => 'nije pogledano';
	@override String get tapToPlay => 'Dodirnite za reprodukciju';
	@override String get decrease => 'Smanji';
	@override String get increase => 'Povećaj';
	@override String decreaseValue({required Object label}) => 'Smanji ${label}';
	@override String increaseValue({required Object label}) => 'Povećaj ${label}';
	@override String get hue => 'Nijansa';
	@override String get saturation => 'Zasićenost';
	@override String get brightness => 'Svjetlina';
	@override String get hexColor => 'Boja u heksadekadskom zapisu';
	@override String get expandText => 'Proširi tekst';
	@override String get collapseText => 'Sažmi tekst';
	@override String get alphabetNavigation => 'Abecedna navigacija';
	@override String get alphabetScrollHint => 'Prijeđite prstom gore ili dolje za pomicanje po slovu';
	@override String rowColumnPosition({required Object row, required Object rowCount, required Object column, required Object columnCount}) => 'Redak ${row} od ${rowCount}, stupac ${column} od ${columnCount}';
	@override String rowPosition({required Object row, required Object rowCount}) => 'Red ${row} od ${rowCount}';
	@override String get autoScrollPlay => 'Pokreni automatsko pomicanje';
	@override String get autoScrollPause => 'Pauziraj automatsko pomicanje';
	@override String get hueShort => 'H';
	@override String get saturationShort => 'S';
	@override String get valueShort => 'V';
}

// Path: tooltips
class _Translations$tooltips$hr extends Translations$tooltips$en {
	_Translations$tooltips$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get shufflePlay => 'Nasumična reprodukcija';
	@override String get playTrailer => 'Pusti najavu';
	@override String get markAsWatched => 'Označi kao gledano';
	@override String get markAsUnwatched => 'Označi kao negledano';
}

// Path: audioTracks
class _Translations$audioTracks$hr extends Translations$audioTracks$en {
	_Translations$audioTracks$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String track({required Object n}) => 'Zvučni zapis ${n}';
}

// Path: videoControls
class _Translations$videoControls$hr extends Translations$videoControls$en {
	_Translations$videoControls$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get audioLabel => 'Zvuk';
	@override String get subtitlesLabel => 'Titlovi';
	@override String addTime({required Object amount, required Object unit}) => '+${amount}${unit}';
	@override String get letterbox => 'Crne trake';
	@override String get fillScreen => 'Ispuni zaslon';
	@override String get stretch => 'Razvuci sliku';
	@override String get lockRotation => 'Zaključaj zakretanje';
	@override String get unlockRotation => 'Otključaj rotaciju';
	@override String get timerActive => 'Mjerač vremena je uključen';
	@override String playbackWillPauseIn({required Object duration}) => 'Reprodukcija će se pauzirati za ${duration}';
	@override String get sleepTimerEndOfVideo => 'Kraj trenutnog videa';
	@override String get sleepTimerStopAtHeader => 'Zaustavi se na';
	@override String get sleepTimerDurationHeader => 'Trajanje';
	@override String get playbackWillPauseAtEnd => 'Reprodukcija će se zaustaviti na kraju ovog videozapisa';
	@override String get stillWatching => 'Još uvijek gledate?';
	@override String pausingIn({required Object seconds}) => 'Pauziranje za ${seconds} s';
	@override String get continueWatching => 'Nastavi gledati';
	@override String get autoPlayNext => 'Automatski reproduciraj sljedeće';
	@override String get playNext => 'Reproduciraj sljedeće';
	@override String get playButton => 'Reproduciraj';
	@override String get pauseButton => 'Pauza';
	@override String get playbackPaused => 'Pauzirano';
	@override String get playbackResumed => 'Reprodukcija nastavljena';
	@override String get loadingVideo => 'Učitavanje videa';
	@override String get showPlaybackControls => 'Prikaži kontrole reprodukcije';
	@override String get hidePlaybackControls => 'Sakrij kontrole reprodukcije';
	@override String seekBackwardButton({required Object seconds}) => 'Premotaj ${seconds} sekundi unatrag';
	@override String seekForwardButton({required Object seconds}) => 'Premotaj ${seconds} sekundi unaprijed';
	@override String get previousButton => 'Prethodna epizoda';
	@override String get nextButton => 'Sljedeća epizoda';
	@override String get previousChapterButton => 'Prethodno poglavlje';
	@override String get nextChapterButton => 'Sljedeće poglavlje';
	@override String get muteButton => 'Isključi zvuk';
	@override String get unmuteButton => 'Uključi zvuk';
	@override String get settingsButton => 'Postavke reprodukcije';
	@override String get infoButton => 'Info';
	@override String get tracksButton => 'Audio i titlovi';
	@override String get chaptersButton => 'Poglavlja';
	@override String get versionQualityButton => 'Verzija i kvaliteta';
	@override String get versionColumnHeader => 'Verzija';
	@override String get qualityColumnHeader => 'Kvaliteta';
	@override String get qualityOriginal => 'Izvornik';
	@override String qualityPresetLabel({required Object resolution, required Object bitrate}) => '${resolution}p ${bitrate} Mbps';
	@override String get transcodeUnavailableFallback => 'Transkodiranje nije dostupno — reprodukcija izvorne kvalitete';
	@override String get subtitleUnavailableFallback => 'Odabrani titlovi se ne mogu učitati — nastavlja se bez titlova';
	@override String get pipButton => 'Način slike u slici';
	@override String get aspectRatioButton => 'Omjer slike';
	@override String get ambientLighting => 'Ambijentalna rasvjeta';
	@override String get fullscreenButton => 'Otvori cijeli zaslon';
	@override String get exitFullscreenButton => 'Izađi iz cijelog zaslona';
	@override String get alwaysOnTopButton => 'Uvijek na vrhu';
	@override String get rotationLockButton => 'Zaključavanje rotacije';
	@override String get lockScreen => 'Zaključani zaslon';
	@override String get screenLockButton => 'Zaključavanje zaslona';
	@override String get longPressToUnlock => 'Dugo pritisnite za otključavanje';
	@override String get timelineSlider => 'Vremenska traka videozapisa';
	@override String get volumeSlider => 'Razina glasnoće';
	@override String endsAt({required Object time}) => 'Završava u ${time}';
	@override String get pipActive => 'Reprodukcija u načinu slika u slici';
	@override String get pipFailed => 'Pokretanje slike u slici nije uspjelo';
	@override String get screenshotSaved => 'Snimka zaslona spremljena';
	@override String get screenshotFailed => 'Nije moguće napraviti snimku zaslona';
	@override String zoomPercent({required Object percent}) => 'Zum ${percent}%';
	@override String volumePercent({required Object percent}) => 'Volumen ${percent}%';
	@override late final _Translations$videoControls$pipErrors$hr pipErrors = _Translations$videoControls$pipErrors$hr._(_root);
	@override String get chapters => 'Poglavlja';
	@override String get noChaptersAvailable => 'Nema dostupnih poglavlja';
	@override String get queue => 'Red čekanja';
	@override String get noQueueItems => 'Nema stavki u redu';
	@override String get noAudioDevicesAvailable => 'Nema dostupnih zvučnih uređaja';
	@override String get searchSubtitles => 'Pretraživanje titlova';
	@override String get language => 'Jezik';
	@override String get noSubtitlesFound => 'Nisu pronađeni titlovi';
	@override String get subtitleDownloaded => 'Titl je preuzet';
	@override String get subtitleDownloadedNotApplied => 'Titl je preuzet, ali ga nije moguće odabrati';
	@override String get subtitleDownloadFailed => 'Preuzimanje titla nije uspjelo';
	@override String get searchLanguages => 'Traži jezike...';
	@override String get skipIntro => 'Preskoči uvod';
	@override String get skipCredits => 'Preskoči odjavnu špicu';
	@override String get nextEpisode => 'Sljedeća epizoda';
	@override String subtitleTrack({required Object n}) => 'Zapis titlova ${n}';
	@override String subtitleFile({required Object name}) => 'Titl ${name}';
	@override String forcedTrack({required Object label}) => '${label} (prisilno)';
	@override String get osdSubtitlesOff => 'Titlovi: isključeni';
	@override String osdSubtitles({required Object track}) => 'Titlovi: ${track}';
	@override String osdAudio({required Object track}) => 'Zvuk: ${track}';
}

// Path: messages
class _Translations$messages$hr extends Translations$messages$en {
	_Translations$messages$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get markedAsWatched => 'Označeno kao pogledano';
	@override String get markedAsUnwatched => 'Označeno kao nepogledano';
	@override String get markedAsWatchedOffline => 'Označeno kao pogledano (sinkronizirat će se kad se povežete)';
	@override String get markedAsUnwatchedOffline => 'Označeno kao nepogledano (sinkronizirat će se kad se povežete)';
	@override String autoRemovedWatchedDownload({required Object title}) => 'Automatski uklonjeno: ${title}';
	@override String autoRemovedWatchedDownloads({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hr'))(n,
		one: 'Automatski uklonjeno ${n} gledano preuzimanje',
		few: 'Automatski uklonjena ${n} pogledana preuzimanja',
		other: 'Automatski uklonjeno ${n} pogledanih preuzimanja',
	);
	@override String get removedFromContinueWatching => 'Uklonjeno iz retka Nastavi gledati';
	@override String errorLoading({required Object error}) => 'Pogreška: ${error}';
	@override String get searchPartialResults => 'Neke medijske poslužitelje nije bilo moguće pretražiti. Prikaz dostupnih rezultata.';
	@override String get streamInterrupted => 'Prijenos je prekinut. Odaberite Reproduciraj ili premotajte za ponovni pokušaj.';
	@override String get liveStreamInterrupted => 'Prijenos uživo je prekinut. Odaberite Reproduciraj za ponovni pokušaj.';
	@override String get fileInfoNotAvailable => 'Informacije o datoteci nisu dostupne';
	@override String get playbackAuthenticationRequired => 'Ponovno se prijavite na medijski poslužitelj za reprodukciju ove stavke.';
	@override String get playbackServerUnavailable => 'Medijski poslužitelj je nedostupan. Pokušajte ponovno kasnije.';
	@override String get playbackDataInvalid => 'Poslužitelj je vratio nevažeće informacije o reprodukciji.';
	@override String get playbackCancelled => 'Reprodukcija je otkazana.';
	@override String get playbackFailed => 'Reprodukcija se nije mogla pokrenuti.';
	@override String playbackFailedDetail({required Object error}) => 'Reprodukcija se nije mogla pokrenuti: ${error}';
	@override String get audioOutputFailed => 'Zvučni izlaz ne reagira. Provjerite vezu s televizorom ili prijamnikom. Ako ni druge aplikacije nemaju zvuka, ponovno pokrenite uređaj.';
	@override String get mediaUnavailable => 'Ovaj sadržaj više nije dostupan.';
	@override String errorLoadingFileInfo({required Object error}) => 'Pogreška pri učitavanju informacija o datoteci: ${error}';
	@override String get errorLoadingSeries => 'Pogreška pri učitavanju serije';
	@override String get musicNotSupported => 'Reprodukcija glazbe još nije podržana';
	@override String get noDescriptionAvailable => 'Opis nije dostupan';
	@override String get noProfilesAvailable => 'Nema dostupnih profila';
	@override String get contactAdminForProfiles => 'Za dodavanje profila kontaktirajte svog administratora poslužitelja';
	@override String get unableToDetermineLibrarySection => 'Nije moguće odrediti kojoj biblioteci pripada ova stavka.';
	@override String get logsCleared => 'Dnevnici očišćeni';
	@override String get logsCopied => 'Dnevnici kopirani u međuspremnik';
	@override String get noLogsAvailable => 'Nema dostupnih zapisa';
	@override String libraryScanning({required Object title}) => 'Skeniranje stavke „${title}”…';
	@override String libraryScanStarted({required Object title}) => 'Započeto je skeniranje biblioteke „${title}”.';
	@override String libraryScanFailed({required Object error}) => 'Skeniranje biblioteke nije uspjelo: ${error}';
	@override String metadataRefreshing({required Object title}) => 'Osvježavanje metapodataka za "${title}"...';
	@override String metadataRefreshStarted({required Object title}) => 'Započelo je osvježavanje metapodataka za "${title}"';
	@override String metadataRefreshFailed({required Object error}) => 'Osvježavanje metapodataka nije uspjelo: ${error}';
	@override String get logoutConfirm => 'Jeste li sigurni da se želite odjaviti?';
	@override String get logoutDeviceConfirm => 'Odjaviti se iz Luroke na ovom uređaju? Svi profili, uključujući dječje profile, računi poslužitelja i preuzeti sadržaj bit će uklonjeni s ovog uređaja. Kasnije se možete ponovno prijaviti.';
	@override String get noSeasonsFound => 'Nije pronađena nijedna sezona';
	@override String get seasonsLoadFailed => 'Nije moguće učitati sezone';
	@override String get noEpisodesFound => 'U prvoj sezoni nije pronađena nijedna epizoda';
	@override String get noEpisodesFoundGeneral => 'Nema pronađenih epizoda';
	@override String get episodesLoadFailed => 'Nije moguće učitati epizode';
	@override String get noResultsFound => 'Nema rezultata';
	@override String sleepTimerSet({required Object label}) => 'Mjerač vremena za isključivanje postavljen je na ${label}';
	@override String get noItemsAvailable => 'Nema dostupnih stavki';
	@override String get failedToCreatePlayQueueNoItems => 'Nije moguće stvoriti red za reprodukciju jer nema stavki.';
	@override String failedPlayback({required Object action, required Object error}) => 'Nije uspjelo ${action}: ${error}';
	@override String get switchingToCompatiblePlayer => 'Prebacivanje na kompatibilni reproduktor...';
	@override String get serverLimitTitle => 'Reprodukcija nije uspjela';
	@override String get serverLimitBody => 'Pogreška poslužitelja (HTTP 500). Ograničenje propusnosti/transkodiranja vjerojatno je odbilo ovu sesiju. Zamolite vlasnika da ga prilagodi.';
	@override String get mediaUnreadableTitle => 'Datoteka nije dostupna';
	@override String get mediaUnreadableBody => 'Poslužitelj je pronašao ovu stavku, ali nije mogao pročitati datoteku (HTTP 404). Datoteka je možda premještena ili izbrisana, odnosno njezina pohrana nije dostupna. Zamolite vlasnika poslužitelja da provjeri datoteku i ponovno skenira biblioteku.';
	@override String get serverBusyTitle => 'Strujanje nije dostupno';
	@override String get serverBusyBody => 'Poslužitelj je opetovano odbijao poslati ovu datoteku (HTTP 503). Možda se ponovno pokreće ili je zauzet, odnosno pohrana datoteke nije dostupna. Pokušajte ponovno za trenutak. Ako se problem nastavi, zamolite vlasnika da provjeri poslužitelj i pohranu datoteke.';
	@override String get playbackNotAllowedTitle => 'Reprodukcija nije dopuštena';
	@override String get playbackNotAllowedBody => 'Poslužitelj je odbio poslati ovu stavku (HTTP 403). Vaš račun možda nema dopuštenje za reprodukciju ili je ona dopuštena samo u lokalnoj mreži poslužitelja.';
	@override String get logsUploaded => 'Dnevnici su učitani';
	@override String get logsUploadFailed => 'Prijenos zapisa nije uspio';
	@override String get logId => 'ID zapisnika';
	@override String get burnedSubtitlesUseMenu => 'Titlovi su ugrađeni u sliku videozapisa. Promijenite ih u izborniku titlova.';
	@override String get noVideoUrl => 'Nije dostupan URL videozapisa';
	@override String get playbackNoMediaSources => 'Poslužitelj nije vratio nijedan izvor medija koji se može reproducirati';
	@override String get playbackDataNotPrepared => 'Reprodukcija je pokrenuta prije nego što su podaci bili spremni.';
	@override String get streamSelectionUnavailable => 'Odabir toka nije dostupan za ovaj izvor.';
	@override String get streamSelectionFailed => 'Nije moguće primijeniti odabrane tokove.';
	@override String get trackSelectionNotRemembered => 'Ovaj odabir zapisa vrijedi samo za trenutačnu reprodukciju.';
	@override String get serverUnavailableForProfile => 'Nijedan poslužitelj nije dostupan za aktivni profil';
}

// Path: sourceLibraries
class _Translations$sourceLibraries$hr extends Translations$sourceLibraries$en {
	_Translations$sourceLibraries$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vaši poslužitelji i biblioteke';
	@override String get description => 'Odaberite biblioteke koje Luroka koristi na početnoj stranici, pri pretraživanju, za provjeru dostupnosti u odjeljku Otkrijte i za studije. Redoslijed redaka početne stranice prilagođuje se zasebno.';
	@override String get partial => 'Nije moguće provjeriti neke poslužitelje. Odabrane biblioteke za njih ostaju spremljene. Osvježite za ponovni pokušaj.';
	@override String get loadFailed => 'Nije moguće učitati biblioteke. Provjerite vezu i pokušajte ponovno.';
	@override String get notSelected => 'Nije dostupno u odabranim bibliotekama.';
	@override String get checkOthers => 'Provjeri ostale povezane izvore';
	@override String get otherSources => 'Dostupno na drugim povezanim izvorima';
	@override String get playOnce => 'Reproduciraj jednom';
	@override String get includeLibrary => 'Uključi ovu biblioteku';
	@override String get noOthers => 'Nisu pronađene kopije na drugim povezanim izvorima.';
	@override String get chooseOne => 'Odaberite barem jednu biblioteku za nastavak.';
}

// Path: subtitlingStyling
class _Translations$subtitlingStyling$hr extends Translations$subtitlingStyling$en {
	_Translations$subtitlingStyling$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get text => 'Tekst';
	@override String get border => 'Granica';
	@override String get background => 'Pozadina';
	@override String get fontSize => 'Veličina fonta';
	@override String get textColor => 'Boja teksta';
	@override String get borderSize => 'Veličina obruba';
	@override String get borderColor => 'Boja obruba';
	@override String get backgroundOpacity => 'Neprozirnost pozadine';
	@override String get backgroundColor => 'Boja pozadine';
	@override String get position => 'Pozicija';
	@override String get assOverride => 'ASS Nadjačavanje';
	@override String get overrideScale => 'Skala';
	@override String get overrideForce => 'Prisiliti';
	@override String get overrideStrip => 'Uklonite styling';
	@override String get positionTop => 'Top';
	@override String get positionBottom => 'Dno';
	@override String get useMargins => 'Koristite margine';
	@override String get useMarginsDescription => 'Dopusti tekstualne titlove u prostoru izvan videa. Stilizirani titlovi mogu zadržati svoj izvorni položaj.';
	@override String get anchorToScreen => 'Sidro na zaslon';
	@override String get anchorToScreenDescription => 'Prikaži tekstualne titlove u crnim trakama ispod širokog video zapisa';
	@override String get bold => 'Podebljano';
	@override String get italic => 'kurziv';
	@override String get renderResolution => 'Razlučivost prikaza';
	@override String get renderResolutionScreen => 'Razlučivost zaslona';
	@override String get renderResolutionVideo => 'Video rezolucija';
}

// Path: mpvConfig
class _Translations$mpvConfig$hr extends Translations$mpvConfig$en {
	_Translations$mpvConfig$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get title => 'mpv.conf';
	@override String get description => 'Napredne postavke videoreproduktora';
	@override String get presets => 'Unaprijed postavljene postavke';
	@override String get noPresets => 'Nema spremljenih unaprijed postavljenih postavki';
	@override String get saveAsPreset => 'Spremi kao unaprijed postavljeno...';
	@override String get presetName => 'Unaprijed postavljeni naziv';
	@override String get presetNameHint => 'Unesite naziv za ovu unaprijed postavljenu postavku';
	@override String get loadPreset => 'Opterećenje';
	@override String get deletePreset => 'Izbriši';
	@override String get presetSaved => 'Pretpostavka je spremljena';
	@override String get presetLoaded => 'Unaprijed postavljeno';
	@override String get presetDeleted => 'Unaprijed postavka izbrisana';
	@override String get confirmDeletePreset => 'Jeste li sigurni da želite izbrisati ovu unaprijed postavljenu postavku?';
	@override String get configPlaceholder => 'gpu-api=vulkan\nhwdec=auto\n# komentar';
	@override String get lineHint => 'opcija=vrijednost';
	@override String get addLine => 'Dodaj liniju';
	@override String get removeLine => 'Ukloni liniju';
	@override String get embeddedVoHint => 'vo, gpu-kontekst i gpu-api zanemaruju se na Linuxu: ugrađeni video uvijek se renderira kroz vo=libmpv na video ravnini, a gpu-next (koji izračunavaju shadere poput ArtCNN-a) ne može pokrenuti ugrađen.';
}

// Path: dialog
class _Translations$dialog$hr extends Translations$dialog$en {
	_Translations$dialog$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get confirmAction => 'Potvrdi radnju';
}

// Path: profiles
class _Translations$profiles$hr extends Translations$profiles$en {
	_Translations$profiles$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get addLurokaProfile => 'Dodaj profil u Luroku';
	@override String get switchingProfile => 'Promjena profila…';
	@override String get deleteThisProfileTitle => 'Izbrisati ovaj profil?';
	@override String deleteThisProfileMessage({required Object displayName}) => 'Izbrisat će se profil ${displayName}. Povezani računi neće se promijeniti.';
	@override String get active => 'Aktivno';
	@override String get manage => 'Upravljaj';
	@override String get delete => 'Izbriši';
	@override String get signOut => 'Odjavi se';
	@override String get signOutPlexTitle => 'Odjaviti se s Plexa?';
	@override String signOutPlexMessage({required Object displayName}) => 'Ukloniti ${displayName} i sve korisnike Plex Homea? Možete se ponovno prijaviti u bilo kojem trenutku.';
	@override String get signOutPlexDeleteDownloads => 'Izbriši i preuzimanja';
	@override String get signOutPlexDeleteDownloadsDescription => 'Ako ih ne izbrišete, preuzimanja će ostati na ovom uređaju i vratiti se kad se ponovno prijavite na ovaj račun.';
	@override String get signedOutPlex => 'Odjavljeni ste s Plexa.';
	@override String get signOutFailed => 'Odjava nije uspjela.';
	@override String get sectionTitle => 'Profili';
	@override String get summarySingle => 'Dodajte profile da biste objedinili upravljane korisnike i lokalne profile.';
	@override String summaryMultipleWithActive({required Object count, required Object activeName}) => 'Profila: ${count} · aktivni profil: ${activeName}';
	@override String summaryMultiple({required Object count}) => 'Broj profila: ${count}';
	@override String get removeConnectionTitle => 'Ukloniti vezu?';
	@override String removeConnectionMessage({required Object connectionLabel, required Object displayName}) => 'Ukloniti vezu ${connectionLabel} iz profila ${displayName}? Ostali profili zadržat će je.';
	@override String get deleteProfileTitle => 'Izbrisati profil?';
	@override String deleteProfileMessage({required Object displayName}) => 'Izbrisat će se profil ${displayName} i njegove veze. Poslužitelji će i dalje biti dostupni.';
	@override String get profileNameLabel => 'Naziv profila';
	@override String get pinProtectionLabel => 'PIN zaštita';
	@override String get pinManagedByPlex => 'PIN-om upravlja Plex. Uredite ga na plex.tv.';
	@override String get noPinSetEditOnPlex => 'PIN nije postavljen. Da biste ga zatražili, uredite kućnog korisnika na plex.tv.';
	@override String get setPin => 'Postavite PIN';
	@override String get setPinTitle => 'Postavite PIN';
	@override String get confirmPinTitle => 'Potvrdite PIN';
	@override String get pinSet => 'PIN je postavljen';
	@override String get changePin => 'Promjena';
	@override String get removePin => 'Ukloniti';
	@override String get connectionsLabel => 'Veze';
	@override String get add => 'Dodaj';
	@override String get deleteProfileButton => 'Izbriši profil';
	@override String get noConnectionsHint => 'Nema povezanih računa. Dodajte račun da biste koristili ovaj profil.';
	@override String get noConnections => 'Nema veza';
	@override String get plexHomeAccount => 'Plex Home račun';
	@override String plexAccountChip({required Object account}) => 'Plex račun: ${account}';
	@override String plexAccountUserChip({required Object user, required Object account}) => '${user} · račun ${account}';
	@override String get connectionDefault => 'Zadano';
	@override String connectionAs({required Object displayName}) => 'kao ${displayName}';
	@override String get makeDefault => 'Učini zadanim';
	@override String get removeConnection => 'Ukloniti';
	@override String get profileRenamed => 'Profil je preimenovan.';
	@override String borrowAddTo({required Object displayName}) => 'Dodaj u ${displayName}';
	@override String get borrowExplain => 'Upotrijebi vezu drugog profila. Za pristup profilima zaštićenima PIN-om potreban je PIN.';
	@override String get borrowEmpty => 'Nema dostupnih veza za korištenje.';
	@override String get borrowEmptySubtitle => 'Prvo povežite Plex, Jellyfin ili Emby s drugim profilom.';
	@override String get borrowLoadFailed => 'Dostupne veze ne mogu se učitati. Pokušajte ponovno.';
	@override String borrowFromProfile({required Object displayName}) => 'Od ${displayName}';
	@override String get borrowConnectionBorrowed => 'Veza posuđena.';
	@override String get borrowFailed => 'Posuđivanje veze nije uspjelo.';
	@override String get incorrectPin => 'Pogrešan PIN.';
	@override String get incorrectPinTryAgain => 'Pogrešan PIN. Pokušajte ponovno.';
	@override String get sourceProfileMissingParentAccount => 'Izvornom profilu nedostaje nadređeni račun.';
	@override String get failedToLoadHomeUsers => 'Nije moguće učitati vaše Plex kućne korisnike. Provjerite vezu i pokušajte ponovno.';
	@override String get failedToVerifyPin => 'Provjera PIN-a nije uspjela.';
	@override String get newProfile => 'Novi profil';
	@override String get profileNameHint => 'npr. Gosti, djeca, obiteljska soba';
	@override String get pinProtectionOptional => 'Zaštita PIN-om (neobavezno)';
	@override String get pinExplain => 'Za promjenu profila potreban je 4-znamenkasti PIN.';
	@override String get continueButton => 'Nastavi';
	@override String get pinsDontMatch => 'PIN-ovi se ne podudaraju';
	@override String get tokenIdentityMismatch => 'Token Plex profila povezan je s neočekivanim poslužiteljem.';
}

// Path: connections
class _Translations$connections$hr extends Translations$connections$en {
	_Translations$connections$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get sectionTitle => 'Poslužitelji i računi';
	@override String get addConnection => 'Dodajte račun ili poslužitelj';
	@override String get addConnectionSubtitleNoProfile => 'Prijavite se na Plex ili povežite poslužitelj Jellyfin ili Emby.';
	@override String addConnectionSubtitleScoped({required Object displayName}) => 'Dodajte u ${displayName}: Plex, Jellyfin, Emby ili drugu vezu profila';
	@override String sessionExpiredOne({required Object name}) => 'Sesija je istekla za ${name}';
	@override String sessionExpiredMany({required Object count}) => 'Istekla je sesija za poslužitelje: ${count}';
	@override String accessDeniedOne({required Object name}) => '${name} je odbio pristup ovom računu';
	@override String accessDeniedMany({required Object count}) => 'Poslužitelji koji su odbili pristup ovom računu: ${count}';
	@override String get signInAgain => 'Prijavite se ponovno';
	@override String editMediaBrowserTitle({required Object product}) => 'Uredi ${product} vezu';
	@override String editMediaBrowserIntro({required Object serverName}) => 'Dodajte ili uklonite URL-ove poslužitelja ${serverName}. Luroka će koristiti dostupnu adresu s najmanjim kašnjenjem.';
}

// Path: serversAccounts
class _Translations$serversAccounts$hr extends Translations$serversAccounts$en {
	_Translations$serversAccounts$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Poslužitelji i računi';
	@override String get subtitle => 'Status prijave na vaše Plex, Jellyfin i Emby poslužitelje';
	@override String get online => 'Na mreži';
	@override String get offline => 'Izvan mreže';
	@override String get unknown => 'Niste prijavljeni ovdje';
	@override String get usedByNone => 'Ne koristi niti jedan profil';
	@override String usedByOne({required Object name}) => 'Koristi ${name}';
	@override String usedByMany({required Object name, required Object count}) => 'Koriste ${name} i ${count} više';
	@override String serversOnline({required Object online, required Object total}) => '${online} od ${total} poslužitelja na mreži';
	@override String get noServers => 'Još ništa nije povezano. Dodajte Plex račun ili poslužitelj Jellyfin ili Emby.';
	@override String get editUrls => 'Uredite URL-ove poslužitelja';
}

// Path: accountPreferences
class _Translations$accountPreferences$hr extends Translations$accountPreferences$en {
	_Translations$accountPreferences$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get sectionTitle => 'Postavke računa';
	@override String hubSubtitleSingle({required Object account}) => 'Postavke zvuka, titlova i biblioteke spremljene na računu ${account}';
	@override String hubSubtitleMultiple({required Object count}) => 'Postavke zvuka, titlova i biblioteke spremljene na računima: ${count}';
	@override String get pickAccount => 'Svaki račun ima vlastite postavke. Odaberite račun čije postavke želite urediti.';
	@override String get storedOnAccount => 'Ove su opcije spremljene na samom računu, tako da ih koristi svaka aplikacija koja je prijavljena na njega — uključujući Luroka na vašim drugim uređajima.';
	@override String get noAccounts => 'Nema računa za konfiguraciju';
	@override String get noAccountsHint => 'Prijavite se na Plex ili povežite Jellyfin ili Emby poslužitelj i postavke pohranjene na tom računu pojavit će se ovdje.';
	@override String get unavailable => 'Nije moguće pristupiti ovom računu';
	@override String get loadFailed => 'Nije moguće učitati ove postavke';
	@override String get noPreference => 'Bez preferencija';
	@override String get notSet => 'Nije postavljeno';
	@override late final _Translations$accountPreferences$groups$hr groups = _Translations$accountPreferences$groups$hr._(_root);
	@override String get preferredAudioLanguage => 'Željeni jezik zvuka';
	@override String get autoSelectAudio => 'Automatski odaberi zvučni zapis prema jeziku';
	@override String get autoSelectAudioDescription => 'Kad je isključeno, koriste se zvučni zapisi koje je datoteka označila kao zadane.';
	@override String get preferredSubtitleLanguage => 'Preferirani jezik titlova';
	@override String get subtitleMode => 'Odabir titlova';
	@override late final _Translations$accountPreferences$subtitleModes$hr subtitleModes = _Translations$accountPreferences$subtitleModes$hr._(_root);
	@override String get subtitleAccessibility => 'SDH titlovi';
	@override late final _Translations$accountPreferences$subtitleAccessibilityOptions$hr subtitleAccessibilityOptions = _Translations$accountPreferences$subtitleAccessibilityOptions$hr._(_root);
	@override String get forcedSubtitles => 'Prisilni titlovi';
	@override late final _Translations$accountPreferences$forcedSubtitleOptions$hr forcedSubtitleOptions = _Translations$accountPreferences$forcedSubtitleOptions$hr._(_root);
	@override String get displayMissingEpisodes => 'Prikaži epizode koje nedostaju';
	@override String get displayMissingEpisodesDescription => 'Navedite epizode za koje poslužitelj zna, ali nema datoteku za njih.';
	@override String get hidePlayedInLatest => 'Sakrij gledane stavke u Najnovije';
	@override String get hidePlayedInLatestDescription => 'Ostavite stavke koje ste već gledali izvan najnovijih redaka poslužitelja.';
	@override String get displayCollectionsView => 'Prikaži prikaz Zbirke';
	@override String get displayCollectionsViewDescription => 'Prikaži zbirke s poslužitelja uz svoje biblioteke.';
	@override String get rewatchingInNextUp => 'Zadržite ponovno gledane emisije u Next Up';
	@override String get rewatchingInNextUpDescription => 'Nakon što završite emisiju, pokrenite je ponovno i Next Up slijedi ponovno gledanje umjesto da odustane od emisije.';
	@override String get watchedIndicator => 'Gledani indikatori';
	@override late final _Translations$accountPreferences$watchedIndicatorOptions$hr watchedIndicatorOptions = _Translations$accountPreferences$watchedIndicatorOptions$hr._(_root);
	@override String get mediaReviewsVisibility => 'Ocjene i recenzije';
	@override late final _Translations$accountPreferences$mediaReviewsOptions$hr mediaReviewsOptions = _Translations$accountPreferences$mediaReviewsOptions$hr._(_root);
}

// Path: discover
class _Translations$discover$hr extends Translations$discover$en {
	_Translations$discover$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Otkrijte';
	@override String get noContentAvailable => 'Nema dostupnog sadržaja';
	@override String get addMediaToLibraries => 'Dodajte sadržaj u svoje biblioteke';
	@override String get continueWatching => 'Nastavi gledati';
	@override String continueWatchingIn({required Object library}) => 'Nastavi gledati u ${library}';
	@override String get nextUp => 'Slijedi';
	@override String nextUpIn({required Object library}) => 'Slijedi u ${library}';
	@override String get recentlyAdded => 'Nedavno dodano';
	@override String recentlyAddedIn({required Object library}) => 'Nedavno dodano u ${library}';
	@override String latestAlbumsIn({required Object library}) => 'Najnoviji albumi u ${library}';
	@override String recentlyPlayedIn({required Object library}) => 'Nedavno reproducirano u ${library}';
	@override String mostPlayedIn({required Object library}) => 'Najčešće reproducirano u ${library}';
	@override String playEpisode({required Object season, required Object episode}) => 'S${season}E${episode}';
	@override String get overview => 'Pregled';
	@override String get cast => 'Glumačka postava';
	@override String get extras => 'Najave i dodaci';
	@override String get studio => 'Studio';
	@override String get rating => 'Ocjena';
	@override String get director => 'redatelj';
	@override String get directors => 'Redatelji';
	@override String get movie => 'Film';
	@override String get tvShow => 'TV serija';
	@override String minutesLeft({required Object minutes}) => 'Preostalo ${minutes} min';
	@override String get moreLikeThis => 'Slični naslovi';
	@override String titleCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hr'))(n,
		one: '${n} naslov',
		few: '${n} naslova',
		other: '${n} naslova',
	);
	@override late final _Translations$discover$person$hr person = _Translations$discover$person$hr._(_root);
}

// Path: errors
class _Translations$errors$hr extends Translations$errors$en {
	_Translations$errors$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String searchFailed({required Object error}) => 'Pretraga nije uspjela: ${error}';
	@override String get searchUnavailable => 'Nije moguće povezati se ni s jednim medijskim poslužiteljem.';
	@override String connectionTimeout({required Object context}) => 'Isteklo je vrijeme veze pri učitavanju: ${context}';
	@override String get connectionFailed => 'Nije moguće povezati se s medijskim poslužiteljem.';
	@override String unableToLoad({required Object context}) => 'Nije moguće učitati ${context}. Pokušajte ponovno.';
	@override String get noClientAvailable => 'Nema dostupnog klijenta';
	@override String get pleaseEnterToken => 'Unesite token';
	@override String get invalidToken => 'Nevažeći token';
	@override String failedToVerifyToken({required Object error}) => 'Provjera tokena nije uspjela: ${error}';
	@override String failedToSwitchProfile({required Object displayName}) => 'Nije moguće prebaciti se na profil ${displayName}.';
	@override String failedToDeleteProfile({required Object displayName}) => 'Brisanje ${displayName} nije uspjelo';
	@override String get failedToRate => 'Nije moguće ažurirati ocjenu';
	@override String get reasonTimedOut => 'veza je istekla';
	@override String get reasonUnreachable => 'poslužitelj nije dostupan';
	@override String get reasonRefused => 'poslužitelj je odbio zahtjev';
	@override String get reasonNotFound => 'stavka više nije na poslužitelju';
	@override String get reasonServerError => 'poslužitelj je prijavio grešku';
	@override String get reasonCancelled => 'zahtjev je poništen';
	@override String get reasonUnexpected => 'došlo je do neočekivane pogreške';
}

// Path: libraries
class _Translations$libraries$hr extends Translations$libraries$en {
	_Translations$libraries$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Biblioteke';
	@override String get fallbackTitle => 'Biblioteka';
	@override String get scanLibraryFiles => 'Skeniraj datoteke u biblioteci';
	@override String get scanLibrary => 'Skeniraj biblioteku';
	@override String get analyze => 'Analiziraj';
	@override String get analyzeLibrary => 'Analiziraj biblioteku';
	@override String get refreshMetadata => 'Osvježi metapodatke';
	@override String get emptyTrash => 'Isprazni smeće';
	@override String emptyingTrash({required Object title}) => 'Pražnjenje koša za smeće „${title}”…';
	@override String trashEmptied({required Object title}) => 'Koš za smeće biblioteke „${title}” je ispražnjen.';
	@override String failedToEmptyTrash({required Object error}) => 'Pražnjenje koša za smeće nije uspjelo: ${error}';
	@override String analyzing({required Object title}) => 'Analiza biblioteke „${title}”…';
	@override String analysisStarted({required Object title}) => 'Pokrenuta je analiza biblioteke „${title}”.';
	@override String failedToAnalyze({required Object error}) => 'Analiza biblioteke nije uspjela: ${error}';
	@override String get noLibrariesFound => 'Nije pronađena nijedna biblioteka';
	@override String get allLibrariesHidden => 'Sve su biblioteke skrivene';
	@override String hiddenLibrariesCount({required Object count}) => 'Skrivene biblioteke (${count})';
	@override String get thisLibraryIsEmpty => 'Ova je biblioteka prazna';
	@override String get noItemsMatchFilters => 'Nijedna stavka ne odgovara odabranim filtrima.';
	@override String get resetFilters => 'Poništi filtre';
	@override String get all => 'Sve';
	@override String get clearAll => 'Obriši sve';
	@override String scanLibraryConfirm({required Object title}) => 'Jeste li sigurni da želite skenirati "${title}"?';
	@override String analyzeLibraryConfirm({required Object title}) => 'Jeste li sigurni da želite analizirati "${title}"?';
	@override String refreshMetadataConfirm({required Object title}) => 'Jeste li sigurni da želite osvježiti metapodatke za "${title}"?';
	@override String emptyTrashConfirm({required Object title}) => 'Jeste li sigurni da želite isprazniti otpad za "${title}"?';
	@override String get manageLibraries => 'Upravljanje bibliotekama';
	@override String get sort => 'Razvrstaj';
	@override String get sortBy => 'Razvrstaj po';
	@override String get filters => 'Filteri';
	@override String get confirmActionMessage => 'Jeste li sigurni da želite izvršiti ovu radnju?';
	@override String get showLibrary => 'Prikaži biblioteku';
	@override String get hideLibrary => 'Sakrij biblioteku';
	@override String get libraryOptions => 'Mogućnosti biblioteke';
	@override String get content => 'sadržaj biblioteke';
	@override String get selectLibrary => 'Odaberite biblioteku';
	@override String filtersWithCount({required Object count}) => 'Filtri (${count})';
	@override String get noRecommendations => 'Nema dostupnih preporuka';
	@override String get noCollections => 'U ovoj biblioteci nema zbirki';
	@override String get noFoldersFound => 'Nema pronađenih mapa';
	@override String get folders => 'mape';
	@override late final _Translations$libraries$tabs$hr tabs = _Translations$libraries$tabs$hr._(_root);
	@override late final _Translations$libraries$groupings$hr groupings = _Translations$libraries$groupings$hr._(_root);
	@override late final _Translations$libraries$filterCategories$hr filterCategories = _Translations$libraries$filterCategories$hr._(_root);
	@override late final _Translations$libraries$sortLabels$hr sortLabels = _Translations$libraries$sortLabels$hr._(_root);
	@override late final _Translations$libraries$advancedFilters$hr advancedFilters = _Translations$libraries$advancedFilters$hr._(_root);
}

// Path: about
class _Translations$about$hr extends Translations$about$en {
	_Translations$about$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get title => 'O aplikaciji';
	@override String get openSourceLicenses => 'Licence otvorenog koda';
	@override String versionLabel({required Object version}) => 'Verzija ${version}';
	@override String get appDescription => 'Vaši filmovi, serije i glazba s Plexa, Jellyfina i Embyja — na jednom mjestu.';
	@override String get customSource => 'Izvorni kod';
	@override String get basedOnLuroka => 'Temelji se na izvornom kodu projekta Plezy';
	@override String get viewLicensesDescription => 'Softver i biblioteke koje koristi Luroka';
	@override String get appSection => 'Aplikacija';
	@override String get communitySection => 'Zajednica';
	@override String get creditsSection => 'Zasluge';
	@override String get legalSection => 'Pravne informacije';
	@override String versionMeta({required Object version, required Object build, required Object platform}) => 'v${version} (${build}) · ${platform}';
	@override String versionMetaNoBuild({required Object version, required Object platform}) => 'v${version} · ${platform}';
	@override String get versionUnavailable => 'Verzija nije dostupna';
	@override String get versionDetails => 'Pojedinosti o verziji';
	@override String versionDetailsTitle({required Object version, required Object build}) => 'Luroka ${version} (${build})';
	@override String platformLine({required Object platform}) => 'Platforma: ${platform}';
	@override String deviceLine({required Object model}) => 'Uređaj: ${model}';
	@override String packageLine({required Object package}) => 'Paket: ${package}';
	@override String localeLine({required Object locale}) => 'Jezik: ${locale}';
	@override String get copyDetails => 'Kopiraj detalje';
	@override String get detailsCopied => 'Pojedinosti o aplikaciji kopirane';
	@override String get detailsCopyFailed => 'Nije moguće kopirati pojedinosti aplikacije';
	@override String get checkForUpdatesDescription => 'Provjeri na GitHubu ima li novije verzije.';
	@override String get checkingForUpdates => 'Provjera ažuriranja...';
	@override String get whatsNew => 'Što je novo';
	@override String get releaseNotesUnavailable => 'Nema dostupnih napomena o izdanju.';
	@override String get sourceCodeDescription => 'Luroka na GitHubu';
	@override String get reportIssue => 'Prijavi problem';
	@override String get reportIssueDescription => 'Javite nam što nije radilo.';
	@override String get documentation => 'Dokumentacija';
	@override String get documentationDescription => 'Postavljanje, značajke i napomene o izdanjima.';
	@override String get upstreamProjectDescription => 'Izvorni projekt otvorenog koda edde746 i njegovih suradnika.';
	@override String get upstreamWebsite => 'Web-stranica izvornog projekta';
	@override String get attribution => 'Podaci i izvori';
	@override String get attributionDescription => 'Metapodaci, ocjene i zaštitni znakovi';
	@override String get attributionBody => 'Ovaj proizvod koristi TMDB API, ali ga TMDB ne podupire niti certificira. Popise popularnosti, metapodatke i IMDb ocjene pruža Cinemeta. Ocjene zadržavaju izvorne oznake.';
	@override String get trademarkNotices => 'Plex, Jellyfin, Emby, Trakt, Simkl, MyAnimeList, AniList, TMDB i povezani nazivi zaštitni su znakovi njihovih vlasnika. Aplikacija Luroka nije povezana s tim tvrtkama niti ih podupire.';
	@override String get privacyPolicy => 'Politika privatnosti';
	@override String get privacyPolicyDescription => 'Kako se postupa s vašim podacima';
	@override String get gplLicense => 'GNU GPL-3.0 licenca';
	@override String get gplLicenseDescription => 'Luroka je besplatan softver';
	@override String get linkOpenFailed => 'Nije moguće otvoriti ovu vezu';
	@override String get opensInBrowser => 'Otvara se u vašem pregledniku';
	@override String get footer => 'Luroka je slobodan softver licenciran pod GPL-3.0.';
	@override String copyright({required Object year}) => '© ${year} Luroka suradnici';
}

// Path: serverSelection
class _Translations$serverSelection$hr extends Translations$serverSelection$en {
	_Translations$serverSelection$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String noServersFoundForAccount({required Object username, required Object email}) => 'Nisu pronađeni poslužitelji za ${username} (${email})';
	@override String failedToLoadServers({required Object error}) => 'Nije moguće učitati poslužitelje: ${error}';
	@override String get noValidServers => 'Na ovom računu nisu pronađeni upotrebljivi poslužitelji';
}

// Path: hubDetail
class _Translations$hubDetail$hr extends Translations$hubDetail$en {
	_Translations$hubDetail$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Naslov';
	@override String get releaseYear => 'Godina izdanja';
	@override String get dateAdded => 'Datum dodavanja';
	@override String get rating => 'Ocjena';
	@override String get noItemsFound => 'Nema pronađenih stavki';
}

// Path: logs
class _Translations$logs$hr extends Translations$logs$en {
	_Translations$logs$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get clearLogs => 'Obriši zapisnike';
	@override String get copyLogs => 'Kopiraj zapisnike';
	@override String get uploadLogs => 'Prijenos zapisa';
}

// Path: startup
class _Translations$startup$hr extends Translations$startup$en {
	_Translations$startup$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get failedTitle => 'Nije moguće pokrenuti Luroku';
	@override String get failedBody => 'Došlo je do pogreške pri pokretanju. U nastavku su pojedinosti o tome što nije uspjelo.';
	@override String get failedBodyRepairable => 'Datoteka s postavkama aplikacije Luroka oštećena je i treba je obnoviti prije ponovnog pokretanja. Ponovni pokušaj neće pomoći — odaberite Popravi pohranu.';
	@override String get phaseLabel => 'Korak';
	@override String get showDetails => 'Prikaži detalje';
	@override String get hideDetails => 'Sakrij detalje';
	@override String get copyDetails => 'Kopiraj detalje';
	@override String get detailsCopied => 'Pojedinosti kopirane u međuspremnik';
	@override String get uploadDetails => 'Učitaj pojedinosti';
	@override String get repairStorage => 'Popravi pohranu';
	@override String get repairTitle => 'Popraviti pohranjene podatke?';
	@override String get repairBodyCommon => 'Datoteka s postavkama aplikacije Luroka oštećena je i ne može se pročitati. Popravkom će se sve postavke vratiti na zadane vrijednosti.';
	@override String get repairBodyOneCredential => 'Jednu spremljenu prijavu nije moguće pročitati jer je oštećena. Popravkom će se ukloniti samo ta prijava; ostale postavke ostat će sačuvane.';
	@override String get repairBodySignInsKept => 'Vaši poslužitelji i profili trebali bi ostati prijavljeni.';
	@override String get repairBodySignInsLost => 'Ključ za zaštitu spremljenih prijava nije moguće obnoviti iz ove datoteke pa ćete se morati ponovno prijaviti na svaki poslužitelj i profil. To neće utjecati na podatke na vašim medijskim poslužiteljima.';
	@override String get repairBodySessionsUncertain => 'Povezane usluge (MAL, AniList, Simkl i Trakt) i Seerr pohranjuju se zasebno pa možda neće biti sačuvane. Luroka će prikazati što je sačuvano.';
	@override String get repairConfirm => 'Popravak';
	@override String get repairSucceeded => 'Spremište popravljeno';
	@override String get repairNeedsRestart => 'Pohrana je popravljena — potrebno je ponovno pokretanje';
	@override String get restartRequiredBody => 'Podaci su popravljeni, ali aplikaciju Luroka treba ponovno pokrenuti prije nego što ih može koristiti. Zatvorite je pa je ponovno otvorite.';
	@override String get quitLuroka => 'Zatvori Luroka';
	@override String get repairFailed => 'Popravak nije uspio';
	@override String get repairKeptSignIns => 'Vaši poslužitelji i profili i dalje su prijavljeni.';
	@override String get repairLostSignIns => 'Ključ koji štiti vaše spremljene prijave nije se mogao vratiti. Morat ćete se ponovno prijaviti na svaki poslužitelj i profil.';
	@override String get repairLostSessions => 'Izgubljena je veza s barem jednom uslugom praćenja ili sa Seerrom. Povežite je ponovno.';
	@override String get backupTitle => 'Sačuvana je kopija oštećene datoteke';
	@override String get backupWarning => 'Sadrži vaše podatke za prijavu. Nemojte je slati niti dijeliti.';
	@override String get deleteBackup => 'Izbriši kopiju';
	@override String get backupDeleted => 'Kopija izbrisana.';
	@override String get previousFailureTitle => 'Luroku prošli put nije bilo moguće pokrenuti';
}

// Path: licenses
class _Translations$licenses$hr extends Translations$licenses$en {
	_Translations$licenses$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get relatedPackages => 'Povezani paketi';
	@override String get license => 'Licenca';
	@override String licenseNumber({required Object number}) => 'Licenca ${number}';
	@override String licensesCount({required Object count}) => '${count} licence';
	@override String get searchHint => 'Traži pakete';
	@override String noResults({required Object query}) => 'Nijedan paket ne odgovara "${query}"';
	@override String get clearSearch => 'Očisti pretragu';
}

// Path: navigation
class _Translations$navigation$hr extends Translations$navigation$en {
	_Translations$navigation$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get libraries => 'Biblioteke';
	@override String get downloads => 'Preuzimanja';
	@override String get liveTv => 'TV uživo';
	@override String get explore => 'Otkrijte';
}

// Path: explore
class _Translations$explore$hr extends Translations$explore$en {
	_Translations$explore$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Otkrijte';
	@override String get selectSource => 'Odaberite izvor';
	@override late final _Translations$explore$rows$hr rows = _Translations$explore$rows$hr._(_root);
	@override late final _Translations$explore$status$hr status = _Translations$explore$status$hr._(_root);
	@override String episodeCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hr'))(n,
		one: '${n} epizoda',
		few: '${n} epizode',
		other: '${n} epizoda',
	);
	@override String get cast => 'Glumačka postava';
	@override String get characters => 'Likovi';
	@override String get addToWatchlist => 'Dodaj na popis za gledanje';
	@override String get removeFromWatchlist => 'Ukloni s popisa za praćenje';
	@override String get addedToWatchlist => 'Dodano na popis za gledanje';
	@override String get removedFromWatchlist => 'Uklonjeno s popisa za praćenje';
	@override String get watchlistUpdateFailed => 'Nije moguće ažurirati popis za gledanje';
	@override String get watchlistNoMatch => 'Nije moguće povezati ovu stavku s popisom za praćenje';
	@override String get notInLibrary => 'Nije u vašoj biblioteci';
	@override String get inTheseLibraries => 'U ovim bibliotekama';
	@override String get checkingLibrary => 'Provjera vaše biblioteke...';
	@override String libraryCheckFailed({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hr'))(n,
		one: 'Nije moguće provjeriti ${n} poslužitelj',
		few: 'Nije moguće provjeriti ${n} poslužitelja',
		other: 'Nije moguće provjeriti ${n} poslužitelja',
	);
	@override String get emptyTitle => 'Ovdje još nema ništa';
	@override String emptyMessage({required Object source}) => 'Redci iz ${source} pojavit će se ovdje kad budu sadržavali naslove.';
	@override String searchHint({required Object source}) => 'Traži ${source}';
	@override String searchEmpty({required Object query}) => 'Nema rezultata za "${query}"';
	@override String searchPrompt({required Object source}) => 'Potražite filmove i emisije na ${source}.';
	@override String get searchFailed => 'Pretraga nije uspjela. Provjerite vezu i pokušajte ponovno.';
	@override late final _Translations$explore$badge$hr badge = _Translations$explore$badge$hr._(_root);
	@override late final _Translations$explore$stats$hr stats = _Translations$explore$stats$hr._(_root);
	@override late final _Translations$explore$season$hr season = _Translations$explore$season$hr._(_root);
	@override late final _Translations$explore$format$hr format = _Translations$explore$format$hr._(_root);
	@override late final _Translations$explore$sourceMaterial$hr sourceMaterial = _Translations$explore$sourceMaterial$hr._(_root);
	@override late final _Translations$explore$creditRole$hr creditRole = _Translations$explore$creditRole$hr._(_root);
	@override late final _Translations$explore$relation$hr relation = _Translations$explore$relation$hr._(_root);
	@override String broadcast({required Object day, required Object time}) => 'Emitira ${day} na ${time}';
	@override String broadcastWithZone({required Object day, required Object time, required Object timezone}) => 'Emitiranje ${day} na ${time} ${timezone}';
	@override late final _Translations$explore$detail$hr detail = _Translations$explore$detail$hr._(_root);
	@override String totalResults({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hr'))(n,
		one: '${n} rezultat',
		few: '${n} rezultata',
		other: '${n} rezultata',
	);
}

// Path: liveTv
class _Translations$liveTv$hr extends Translations$liveTv$en {
	_Translations$liveTv$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get title => 'TV uživo';
	@override String get guide => 'TV vodič';
	@override String get noChannels => 'Nema dostupnih kanala';
	@override String get noDvr => 'DVR nije postavljen ni na jednom poslužitelju.';
	@override String get serverUnavailable => 'Poslužitelj TV uživo nije dostupan.';
	@override String get serverNotConnected => 'Poslužitelj za TV uživo nije povezan.';
	@override String get noPrograms => 'Nema dostupnih podataka o programu';
	@override String get liveStreamFailed => 'Prijenos uživo nije uspio';
	@override String get unknownProgram => 'Nepoznati program';
	@override String get unknownHub => 'Nepoznato';
	@override String get unknownError => 'Nepoznata pogreška';
	@override String channelNumber({required Object number}) => 'Kanal ${number}';
	@override String get unknownChannel => 'Nepoznati kanal';
	@override String get live => 'UŽIVO';
	@override String get reloadGuide => 'Ponovno učitaj vodič';
	@override String get searchGuide => 'Pretraži vodič';
	@override String get searchHint => 'Pretraži kanale i programe';
	@override String searchNoResults({required Object query}) => 'Nema rezultata za "${query}"';
	@override String get channelsSection => 'Kanali';
	@override String get programsSection => 'Programi';
	@override String get now => 'Sada';
	@override String get today => 'Danas';
	@override String get tomorrow => 'Sutra';
	@override String get midnight => 'Ponoć';
	@override String get overnight => 'Tijekom noći';
	@override String get morning => 'Jutro';
	@override String get daytime => 'Dnevno';
	@override String get evening => 'Večer';
	@override String get lateNight => 'Kasna noć';
	@override String get whatsOn => 'Što je na programu';
	@override String get watchChannel => 'Gledaj kanal';
	@override String get favorites => 'Favoriti';
	@override String get reorderFavorites => 'Promijeni redoslijed favorita';
	@override String get noFavoriteChannels => 'Nema omiljenih kanala';
	@override String get noFavoriteChannelsHint => 'Prikaži sve kanale, zatim dugo pritisni kanal da bi ga dodao među favorite.';
	@override String get showAllChannels => 'Prikaži sve kanale';
	@override String get favoritesLoadFailed => 'Nije moguće učitati favorite. Provjerite vezu i pokušajte ponovno.';
	@override String get favoritesUpdateFailed => 'Nije moguće ažurirati favorite. Provjerite vezu i pokušajte ponovno.';
	@override String get joinSession => 'Pridruži se prijenosu u tijeku';
	@override String watchFromStart({required Object minutes}) => 'Gledaj od početka (kasni ${minutes} min)';
	@override String get watchLive => 'Gledaj uživo';
	@override String get goToLive => 'Idi na prijenos uživo';
	@override String get record => 'Snimi';
	@override String get recordEpisode => 'Snimi epizodu';
	@override String get recordSeries => 'Snimi seriju';
	@override String get recordOptions => 'Mogućnosti snimanja';
	@override String get saveTo => 'Spremi u';
	@override String get recordings => 'Snimke';
	@override String get scheduledRecordings => 'Zakazana snimanja';
	@override String get recordingRules => 'Pravila snimanja';
	@override String get noScheduledRecordings => 'Ništa nije planirano za snimanje';
	@override String get manageRecording => 'Upravljanje snimanjem';
	@override String get cancelRecording => 'Otkaži snimanje';
	@override String get cancelRecordingTitle => 'Otkazati ovo snimanje?';
	@override String cancelRecordingMessage({required Object title}) => '${title} više se neće snimati.';
	@override String get deleteRule => 'Brisanje pravila';
	@override String get deleteRuleTitle => 'Izbrisati pravilo snimanja?';
	@override String deleteRuleMessage({required Object title}) => 'Buduće epizode ${title} neće se snimati.';
	@override String get recordingScheduled => 'Zakazano snimanje';
	@override String get alreadyScheduled => 'Ovaj program je već zakazan';
	@override String get dvrAdminRequired => 'DVR postavke zahtijevaju administratorski račun';
	@override String get recordingFailed => 'Nije moguće zakazati snimanje';
	@override String get recordingTargetMissing => 'Nije moguće odrediti biblioteku za snimke';
	@override String get recordNotAvailable => 'Snimanje nije dostupno za ovaj program';
	@override String get recordingCancelled => 'Snimanje je otkazano';
	@override String get recordingRuleDeleted => 'Pravilo snimanja izbrisano';
	@override String get processRecordingRules => 'Ponovno obradi pravila snimanja';
	@override String get recordingInProgress => 'Snima se sada';
	@override String recordingsCount({required Object count}) => 'Zakazanih snimanja: ${count}';
	@override String get editRule => 'Uredi pravilo';
	@override String get editRuleAction => 'Uredi';
	@override String get recordingRuleUpdated => 'Ažurirano pravilo snimanja';
	@override String get guideReloadRequested => 'Zatraženo je osvježenje vodiča';
	@override String get guideReloadFailed => 'Nije moguće osvježiti vodič';
	@override String get rulesProcessRequested => 'Zatraženo je ponovno ocjenjivanje pravila';
	@override String get rulesProcessFailed => 'Nije moguće ponovno procijeniti pravila snimanja';
	@override String get recordShow => 'Snimi seriju';
	@override late final _Translations$liveTv$recordSettings$hr recordSettings = _Translations$liveTv$recordSettings$hr._(_root);
	@override String startingInMinutes({required Object minutes}) => 'Počinje za ${minutes} min';
	@override String dayAtTime({required Object day, required Object time}) => '${day} u ${time}';
	@override String invalidPlaybackData({required Object product}) => '${product} vratio je nevažeće podatke o reprodukciji TV-a uživo';
	@override String get failedToStartChannel => 'Nije moguće pokrenuti kanal uživo';
	@override String get failedToBuildStreamUrl => 'Nije moguće izraditi adresu prijenosa.';
	@override String playbackStartFailed({required Object reason}) => 'Nije moguće pokrenuti kanal: ${reason}';
	@override String channelSwitchFailed({required Object reason}) => 'Nije moguće promijeniti kanal: ${reason}';
}

// Path: collections
class _Translations$collections$hr extends Translations$collections$en {
	_Translations$collections$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Zbirke';
	@override String get collection => 'zbirka';
	@override String get empty => 'Zbirka je prazna';
	@override String get deleteCollection => 'Izbriši zbirku';
	@override String deleteConfirm({required Object title}) => 'Izbrisati "${title}"? Ovo se ne može poništiti.';
	@override String get deleted => 'Zbirka izbrisana';
	@override String get deleteFailed => 'Brisanje zbirke nije uspjelo';
	@override String deleteFailedWithError({required Object error}) => 'Brisanje zbirke nije uspjelo: ${error}';
	@override String get selectCollection => 'Odaberite zbirku';
	@override String get collectionName => 'Naziv zbirke';
	@override String get enterCollectionName => 'Unesite naziv zbirke';
	@override String get addedToCollection => 'Dodano u zbirku';
	@override String get errorAddingToCollection => 'Dodavanje u zbirku nije uspjelo';
	@override String get created => 'Zbirka stvorena';
	@override String get removeFromCollection => 'Ukloni iz zbirke';
	@override String removeFromCollectionConfirm({required Object title}) => 'Ukloniti "${title}" iz ove zbirke?';
	@override String get removedFromCollection => 'Uklonjeno iz zbirke';
	@override String get removeFromCollectionFailed => 'Uklanjanje iz zbirke nije uspjelo';
	@override String removeFromCollectionError({required Object error}) => 'Pogreška pri uklanjanju iz zbirke: ${error}';
	@override String get searchCollections => 'Pretraži zbirke...';
}

// Path: playlists
class _Translations$playlists$hr extends Translations$playlists$en {
	_Translations$playlists$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Popisi za reprodukciju';
	@override String get playlist => 'Popis za reprodukciju';
	@override String get noPlaylists => 'Nije pronađen nijedan popis za reprodukciju';
	@override String get create => 'Stvori popis za reprodukciju';
	@override String get playlistName => 'Naziv popisa za reprodukciju';
	@override String get enterPlaylistName => 'Unesite naziv popisa za reprodukciju';
	@override String get delete => 'Izbriši popis za reprodukciju';
	@override String get removeItem => 'Ukloni s popisa za reprodukciju';
	@override String get smartPlaylist => 'Pametni popis za reprodukciju';
	@override String itemCount({required Object count}) => 'Broj stavki: ${count}';
	@override String get oneItem => '1 stavka';
	@override String get emptyPlaylist => 'Ovaj popis za reprodukciju je prazan';
	@override String get deleteConfirm => 'Izbrisati popis za reprodukciju?';
	@override String deleteMessage({required Object name}) => 'Jeste li sigurni da želite izbrisati "${name}"?';
	@override String get created => 'Popis za reprodukciju stvoren';
	@override String get deleted => 'Popis za reprodukciju izbrisan';
	@override String get itemAdded => 'Dodano na popis za reprodukciju';
	@override String get itemRemoved => 'Uklonjeno s popisa za reprodukciju';
	@override String get selectPlaylist => 'Odaberite popis za reprodukciju';
	@override String get searchPlaylists => 'Pretraživanje popisa za reprodukciju...';
	@override String get errorCreating => 'Izrada popisa za reprodukciju nije uspjela';
	@override String get errorDeleting => 'Brisanje popisa za reprodukciju nije uspjelo';
	@override String get errorLoading => 'Nije uspjelo učitavanje popisa za reprodukciju';
	@override String get errorAdding => 'Dodavanje na popis za reprodukciju nije uspjelo';
	@override String get errorReordering => 'Promjena redoslijeda stavke popisa za reprodukciju nije uspjela';
	@override String get errorRemoving => 'Uklanjanje s popisa za reprodukciju nije uspjelo';
}

// Path: music
class _Translations$music$hr extends Translations$music$en {
	_Translations$music$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get goToAlbum => 'Idi na album';
	@override String get goToArtist => 'Idi na izvođača';
	@override String get instantMix => 'Instant miks';
	@override String get playNext => 'Reproduciraj sljedeću pjesmu';
	@override String get addToQueue => 'Dodaj u red čekanja';
	@override String discNumber({required Object n}) => 'Disk ${n}';
	@override String trackCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hr'))(n,
		one: '${n} pjesma',
		few: '${n} pjesme',
		other: '${n} pjesama',
	);
	@override String get nowPlaying => 'Trenutačno se reproducira';
	@override String playingFrom({required Object title}) => 'Reproducira se iz albuma ${title}';
	@override String get queue => 'Red čekanja';
	@override String get clearQueue => 'Očisti red čekanja';
	@override String get lyrics => 'Tekst pjesme';
	@override String get noLyrics => 'Nema dostupnih tekstova';
	@override String get sleepTimer => 'Mjerač vremena za isključivanje';
	@override String get sleepTimerEndOfTrack => 'Kraj pjesme';
	@override String sleepTimerMinutes({required Object n}) => '${n} minuta';
	@override String get stopPlayback => 'Zaustavi reprodukciju';
	@override String get previousTrack => 'Prethodna pjesma';
	@override String get nextTrack => 'Sljedeća pjesma';
	@override String get repeat => 'Ponovi';
	@override String get repeatAll => 'Ponovi sve';
	@override String get repeatOne => 'Ponovi jedno';
	@override String get instantMixNoServer => 'Nijedan poslužitelj nije dostupan za automatski miks.';
	@override String get instantMixFailed => 'Nije moguće učitati automatski miks.';
	@override String get instantMixEmpty => 'Automatski miks nije sadržavao nijedan zapis.';
	@override String noAudioUrl({required Object track}) => 'Nema dostupne adrese zvuka za ${track}.';
	@override late final _Translations$music$discography$hr discography = _Translations$music$discography$hr._(_root);
}

// Path: watchTogether
class _Translations$watchTogether$hr extends Translations$watchTogether$en {
	_Translations$watchTogether$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Zajedničko gledanje';
	@override String get description => 'Gledajte sadržaj istodobno s prijateljima i obitelji.';
	@override String get createRoom => 'Izradi sobu';
	@override String get creatingRoom => 'Izrada sobe...';
	@override String get joinRoom => 'Pridruži se sobi';
	@override String get joiningRoom => 'Pridruživanje sobi...';
	@override String get connecting => 'Povezivanje…';
	@override String get relayPublic => 'Sobe koriste javne relejne poslužitelje za Open Watch Party.';
	@override String relayCustom({required Object url}) => 'Sobe koriste vaš relej na ${url}.';
	@override String get recentRooms => 'Nedavne sobe';
	@override String get roomActions => 'Radnje u sobi';
	@override String get renameRoom => 'Preimenuj sobu';
	@override String get removeRoom => 'Ukloniti';
	@override String get enterRoomCode => 'Unesite šesteroznamenkasti kod koji je prikazan domaćinu.';
	@override String get roomCode => 'Kod sobe';
	@override String get paste => 'Zalijepi';
	@override String get noCodeInClipboard => 'Međuspremnik ne sadrži kod sobe.';
	@override String get copyCode => 'Kopiraj kod';
	@override String get codeCopied => 'Kod sobe kopiran';
	@override String get shareInvite => 'Podijeli pozivnicu';
	@override String get qrShare => 'Podijeli QR kod';
	@override String get qrHint => 'Skenirajte pomoću aplikacije Luroka da biste se pridružili ovoj sobi.';
	@override String get phasePlaying => 'Reprodukcija u tijeku';
	@override String get phasePaused => 'Pauzirano';
	@override String get phaseWaiting => 'Čeka ostale';
	@override String get inviteCopied => 'Pozivnica je kopirana. Zalijepite je u poruku.';
	@override String inviteMessage({required Object code}) => 'Pridružite se mojoj sobi za zajedničko gledanje u Luroki: luroka://watch?code=${code} — ili otvorite Zajedničko gledanje i unesite ${code}.';
	@override String get openSessionControls => 'Otvori kontrole sesije za zajedničko gledanje';
	@override String get reconnecting => 'Ponovno povezivanje...';
	@override String get reconnectingDescription => 'Veza je prekinuta. Automatski se ponovno pridružujete sobi.';
	@override String get connected => 'Povezano';
	@override String get disconnected => 'Prekinuto';
	@override String get youAreHost => 'Vi ste domaćin';
	@override String hostedBy({required Object name}) => 'Domaćin je ${name}';
	@override String get hostControlsPlayback => 'Domaćin kontrolira reprodukciju';
	@override String get anyoneCanControl => 'Svatko može kontrolirati reprodukciju';
	@override String get roomLocked => 'Soba je zaključana';
	@override String get nowPlaying => 'Trenutačno se reproducira';
	@override String get nothingPlaying => 'Ništa se ne reproducira';
	@override String get nothingPlayingHost => 'Pokrenite nešto iz bilo koje biblioteke da biste to podijelili s ostalima u sobi.';
	@override String get nothingPlayingGuest => 'Kad domaćin pokrene reprodukciju, sadržaj će se prikazati ovdje.';
	@override String get notShareable => 'Ovaj videozapis nije moguće povezati s naslovom iz kataloga. Mogu ga gledati samo osobe koje imaju pristup istom poslužitelju.';
	@override String get searching => 'Traženje ovog videozapisa u vašim bibliotekama...';
	@override String get yourCopy => 'Vaš primjerak';
	@override String get sharingYourCopy => 'Dijeli se vaša kopija';
	@override String playingOtherLength({required Object difference}) => 'Reproducira se vaša kopija (${difference})';
	@override String get mismatchTitle => 'Vaša kopija ima drukčije trajanje';
	@override String mismatchDescription({required Object difference}) => 'Trajanje vaše najbliže kopije razlikuje se za ${difference} od trajanja videozapisa u sobi. Možda je riječ o drugoj montaži ili verziji.';
	@override String get playAnyway => 'Svejedno reproduciraj';
	@override String get chooseAnotherCopy => 'Odaberite drugu kopiju';
	@override String get dontPlay => 'Nemoj reproducirati';
	@override String get unavailableTitle => 'Videozapis nije dostupan';
	@override String get unavailableDescription => 'Luroka nije pronašla ovaj sadržaj u vašim bibliotekama. Odaberite kopiju ili pokušajte ponovno.';
	@override String get chooseCopy => 'Odaberite kopiju';
	@override String get searchAgain => 'Traži ponovno';
	@override String get noCandidates => 'U vašim bibliotekama nema kopija.';
	@override String get choiceFailed => 'Nije moguće reproducirati ovu kopiju za sobu';
	@override String lengthLonger({required Object duration}) => '${duration} dulje';
	@override String lengthShorter({required Object duration}) => '${duration} kraće';
	@override String get lengthSame => 'Ista duljina';
	@override String get lengthUnknown => 'Duljina nepoznata';
	@override String get joinCurrentPlayback => 'Pridruži se trenutačnoj reprodukciji';
	@override String get joinCurrentPlaybackDescription => 'Pridruži se sadržaju koji domaćin trenutačno gleda.';
	@override String get stopMedia => 'Zaustavi video za sve';
	@override String get syncOffset => 'Sinkronizacija pomaka';
	@override String get syncOffsetDescription => 'Prilagodi pomak ako se vaš videozapis prikazuje prije ili poslije onoga u sobi.';
	@override String offsetHint({required Object difference}) => 'Vaša kopija odstupa za ${difference} od videozapisa u sobi.';
	@override String applyDifference({required Object offset}) => 'Primijeni pomak ${offset}';
	@override String get offsetMinusSecond => '-1 s';
	@override String get offsetMinusTenth => '-100 ms';
	@override String get offsetPlusTenth => '+100 ms';
	@override String get offsetPlusSecond => '+1 s';
	@override String get participants => 'Sudionici';
	@override String participantCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hr'))(n,
		one: '${n} sudionik',
		few: '${n} sudionika',
		other: '${n} sudionika',
	);
	@override String get hostBadge => 'DOMAĆIN';
	@override String nameYou({required Object name}) => '${name} (Vi)';
	@override String get playerIdle => 'Neaktivan';
	@override String get playerLoading => 'Učitavanje';
	@override String get playerReady => 'Spreman';
	@override String get playerBuffering => 'Učitavanje u međuspremnik';
	@override String get matchSearching => 'Pretraživanje';
	@override String get matchMatched => 'Podudara se';
	@override String get matchMismatched => 'Ne podudara se';
	@override String get matchUnavailable => 'Nije dostupno';
	@override String participantOffset({required Object offset}) => 'Pomak ${offset}';
	@override String get makeHost => 'Postavi za domaćina';
	@override String get makeHostQuestion => 'Prenijeti ulogu domaćina?';
	@override String makeHostConfirm({required Object name}) => '${name} će upravljati reprodukcijom i voditi sesiju za sve.';
	@override String get transfer => 'Prijenos';
	@override String get removeParticipant => 'Ukloni iz sobe';
	@override String removeParticipantQuestion({required Object name}) => 'Ukloniti ${name}?';
	@override String removeParticipantConfirm({required Object name}) => '${name} napušta sobu. Ta se osoba može ponovno pridružiti pomoću koda, osim ako ne zaključate sobu.';
	@override String get remove => 'Ukloni';
	@override String get roomSettings => 'Postavke sobe';
	@override String get letEveryoneControl => 'Neka svi kontroliraju reprodukciju';
	@override String get lockRoom => 'Zaključaj sobu';
	@override String get lockRoomDescription => 'Nitko se novi neće moći pridružiti.';
	@override String get leaveRoom => 'Napusti sobu';
	@override String get leaveRoomQuestion => 'Napustiti sobu?';
	@override String get leaveRoomConfirm => 'Možete se ponovno pridružiti s kodom sobe.';
	@override String get leave => 'Napusti';
	@override String get endRoom => 'Završi sobu';
	@override String get endRoomQuestion => 'Završiti sobu?';
	@override String get endRoomConfirm => 'Time će se soba zatvoriti za sve sudionike.';
	@override String get end => 'Završi';
	@override String get playBlockedTitle => 'Reprodukcija nije započela';
	@override String get playBlockedDescription => 'Odaberite Reproduciraj da biste započeli gledanje sa sudionicima u sobi.';
	@override late final _Translations$watchTogether$notices$hr notices = _Translations$watchTogether$notices$hr._(_root);
	@override late final _Translations$watchTogether$ended$hr ended = _Translations$watchTogether$ended$hr._(_root);
	@override late final _Translations$watchTogether$errors$hr errors = _Translations$watchTogether$errors$hr._(_root);
	@override String untitledEpisode({required Object number}) => 'Epizoda ${number}';
}

// Path: downloads
class _Translations$downloads$hr extends Translations$downloads$en {
	_Translations$downloads$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Preuzimanja';
	@override String get manage => 'Upravljaj';
	@override String get tvShows => 'TV serije';
	@override String get movies => 'Filmovi';
	@override String get music => 'Glazba';
	@override String tracksQueued({required Object count}) => 'Zvučnih zapisa na čekanju za preuzimanje: ${count}';
	@override String get noDownloads => 'Još nema preuzimanja';
	@override String get noDownloadsDescription => 'Preuzeti sadržaj za gledanje izvan mreže pojavit će se ovdje.';
	@override String get downloadNow => 'Preuzmi';
	@override String get deleteDownload => 'Izbriši preuzimanje';
	@override String get retryDownload => 'Pokušaj ponovno preuzeti';
	@override String get downloadQueued => 'Preuzimanje na čekanju';
	@override String get downloadResumed => 'Preuzimanje je nastavljeno';
	@override String get serverErrorBitrate => 'Pogreška poslužitelja: datoteka možda premašuje ograničenje brzine prijenosa.';
	@override String get storageFull => 'Preuzimanja su zaustavljena radi zaštite dostupne pohrane. Oslobodite malo prostora ili odaberite drugu lokaciju za preuzimanje, a zatim pokušajte ponovno.';
	@override String get storageUnavailable => 'Preuzimanja su zaustavljena jer se dostupna pohrana nije mogla provjeriti. Provjerite lokaciju preuzimanja, a zatim pokušajte ponovno.';
	@override String episodesQueued({required Object count}) => 'Epizoda na čekanju za preuzimanje: ${count}';
	@override String get downloadDeleted => 'Preuzimanje izbrisano';
	@override String deleteConfirm({required Object title}) => 'Izbrisati "${title}" s ovog uređaja?';
	@override String get deleteCollectionDownloads => 'Izbriši preuzimanja';
	@override String deleteCollectionDownloadsConfirm({required Object title}) => 'Izbrisati svako preuzimanje u "${title}" s ovog uređaja?';
	@override String get collectionDownloadsDeleted => 'Preuzimanja izbrisana';
	@override String get cancelledDownloadTitle => 'Otkazano preuzimanje';
	@override String get cancelledDownloadMessage => 'Preuzimanje je otkazano. Što želite učiniti?';
	@override String get allEpisodesAlreadyDownloaded => 'Sve su epizode već preuzete.';
	@override String get resumeDownload => 'Nastavi preuzimanje';
	@override String get cancelledDownload => 'Otkazano preuzimanje';
	@override String syncingFile({required Object file, required Object status}) => '${file} (sinkronizacija: ${status})';
	@override String downloadedFileClickToComplete({required Object file}) => '${file} je preuzet — odaberite za dovršetak.';
	@override String get partialDownloadClickToComplete => 'Djelomično preuzeto — odaberite za dovršetak.';
	@override String get deleting => 'Brisanje...';
	@override String deletingWithProgress({required Object title, required Object current, required Object total}) => 'Brisanje ${title}... (${current} od ${total})';
	@override String get queuedTooltip => 'U redu čekanja';
	@override String queuedFilesTooltip({required Object files}) => 'U redu čekanja ${files}';
	@override String get downloadingTooltip => 'Preuzimanje...';
	@override String downloadingFilesTooltip({required Object files}) => 'Preuzimanje ${files}';
	@override String get noDownloadsTree => 'Nema preuzimanja';
	@override String get pauseAll => 'Pauziraj sve';
	@override String get resumeAll => 'Nastavi sve';
	@override String get retryAll => 'Pokušaj ponovno sve';
	@override String get retryFailed => 'Ponovi neuspjela preuzimanja';
	@override String get deleteAll => 'Izbriši sve';
	@override String get selectVersion => 'Odaberite verziju';
	@override String get allEpisodes => 'Sve epizode';
	@override String get unwatchedOnly => 'Samo neodgledane';
	@override String nextNUnwatched({required Object count}) => 'Sljedećih ${count} neodgledanih';
	@override String get customAmount => 'Prilagođeni iznos...';
	@override String get includeSpecials => 'Uključi specijalne epizode';
	@override String get howManyEpisodes => 'Koliko epizoda?';
	@override String get invalidEpisodeCount => 'Unesite važeći broj epizoda.';
	@override String get keepSynced => 'Održavaj sinkronizaciju';
	@override String get downloadOnce => 'Preuzmi jednom';
	@override String keepNUnwatched({required Object count}) => 'Zadrži ${count} neodgledanih epizoda';
	@override String get editSyncRule => 'Uredi pravilo sinkronizacije';
	@override String get removeSyncRule => 'Ukloni pravilo sinkronizacije';
	@override String removeSyncRuleConfirm({required Object title}) => 'Zaustaviti sinkronizaciju „${title}”? Preuzete epizode ostat će sačuvane.';
	@override String removeListSyncRuleConfirm({required Object title}) => 'Zaustaviti sinkronizaciju "${title}"?';
	@override String get deleteSyncRuleDownloads => 'Izbriši i povezana preuzimanja';
	@override String get deleteSyncRuleDownloadsDescription => 'Preuzimanja koja koristi drugo pravilo sinkronizacije ili profil ostat će sačuvana.';
	@override String syncRuleCreated({required Object count}) => 'Izrađeno je pravilo sinkronizacije — zadržava se ${count} neodgledanih epizoda.';
	@override String get syncRuleUpdated => 'Pravilo sinkronizacije ažurirano';
	@override String get syncRuleRemoved => 'Pravilo sinkronizacije uklonjeno';
	@override String get syncRuleAndDownloadsRemoved => 'Pravilo sinkronizacije i povezana preuzimanja uklonjeni';
	@override String get syncRuleCleanupBusy => 'Pravila sinkronizacije trenutačno se ažuriraju. Pokušajte ponovno za koji trenutak.';
	@override String get syncRuleCleanupUnavailable => 'Povezana preuzimanja nije moguće pouzdano utvrditi. Ponovno povežite poslužitelj i pokušajte ponovno ili uklonite pravilo bez brisanja preuzimanja.';
	@override String syncedNewEpisodes({required Object count, required Object title}) => 'Sinkronizirane su ${count} nove epizode serije ${title}.';
	@override String get activeSyncRules => 'Pravila sinkronizacije';
	@override String get noSyncRules => 'Nema pravila sinkronizacije';
	@override String get manageSyncRule => 'Upravljanje sinkronizacijom';
	@override String get editEpisodeCount => 'Broj epizoda';
	@override String get editSyncFilter => 'Filtar sinkronizacije';
	@override String get syncAllItems => 'Sinkronizacija svih stavki';
	@override String get syncUnwatchedItems => 'Sinkronizacija negledanih stavki';
	@override String syncRuleServerContext({required Object server, required Object status}) => 'Poslužitelj: ${server} • ${status}';
	@override String get syncRuleAvailable => 'Dostupno';
	@override String get syncRuleOffline => 'Izvan mreže';
	@override String get syncRuleSignInRequired => 'Potrebna je prijava';
	@override String get syncRuleAccessDenied => 'Pristup odbijen';
	@override String get syncRuleNotAvailableForProfile => 'Nije dostupno za trenutačni profil';
	@override String get syncRuleUnknownServer => 'Nepoznati poslužitelj';
	@override String get syncRuleListCreated => 'Stvoreno pravilo sinkronizacije';
	@override late final _Translations$downloads$backgroundWarning$hr backgroundWarning = _Translations$downloads$backgroundWarning$hr._(_root);
	@override String get options => 'Opcije preuzimanja';
	@override late final _Translations$downloads$groupings$hr groupings = _Translations$downloads$groupings$hr._(_root);
	@override String get unknownLibrary => 'Nepoznata biblioteka';
	@override String get unknownShow => 'Nepoznata emisija';
	@override String get unknownSeason => 'Nepoznato godišnje doba';
	@override String get unknownAlbum => 'Nepoznati album';
	@override String completedOfTotal({required Object completed, required Object total}) => '${completed}/${total} dovršeno';
	@override String get errorFileNotFound => 'Datoteka nije pronađena (404)';
	@override String get errorDownloadNotAllowed => 'Poslužitelj ne dopušta preuzimanje (403)';
	@override String get errorDownloadFailed => 'Preuzimanje nije uspjelo';
	@override String errorDownloadFailedWithReason({required Object reason}) => 'Preuzimanje nije uspjelo: ${reason}';
	@override String errorHttpStatus({required Object status}) => 'Preuzimanje nije uspjelo (HTTP ${status})';
	@override String errorPostProcessing({required Object reason}) => 'Naknadna obrada nije uspjela: ${reason}';
	@override String get reasonFileNotSaved => 'datoteka nije mogla biti spremljena na ovaj uređaj';
	@override String get reasonCannotResume => 'djelomično preuzimanje nije bilo moguće nastaviti';
	@override String get reasonDeviceStorageFull => 'ovom uređaju je ponestalo pohrane';
	@override String get notificationDownloading => 'Preuzimanje...';
	@override String get notificationComplete => 'Preuzimanje završeno';
	@override String get notificationPaused => 'Preuzimanje pauzirano';
}

// Path: shaders
class _Translations$shaders$hr extends Translations$shaders$en {
	_Translations$shaders$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Shaderi';
	@override String get noShaderDescription => 'Nije primijenjeno poboljšanje slike.';
	@override String get nvscalerDescription => 'NVIDIA-jevo skaliranje za oštriju sliku.';
	@override String get artcnnVariantNeutral => 'Neutralan';
	@override String get artcnnVariantDenoise => 'Uklanjanje šuma';
	@override String get artcnnVariantDenoiseSharpen => 'Uklanjanje šuma i izoštravanje';
	@override String get qualityFast => 'Brzo';
	@override String get qualityHQ => 'Visoka kvaliteta';
	@override String get mode => 'Način rada';
	@override String get importShader => 'Uvezi shader';
	@override String get customShaderDescription => 'Prilagođeni GLSL shader';
	@override String get shaderImported => 'Shader je uvezen.';
	@override String get shaderImportFailed => 'Uvoz shadera nije uspio.';
	@override String get deleteShader => 'Izbriši shader';
	@override String deleteShaderConfirm({required Object name}) => 'Izbrisati "${name}"?';
}

// Path: companionRemote
class _Translations$companionRemote$hr extends Translations$companionRemote$en {
	_Translations$companionRemote$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Daljinski upravljač';
	@override String connectedTo({required Object name}) => 'Povezano s uređajem ${name}';
	@override String get unknownDevice => 'Nepoznati uređaj';
	@override late final _Translations$companionRemote$session$hr session = _Translations$companionRemote$session$hr._(_root);
	@override late final _Translations$companionRemote$pairing$hr pairing = _Translations$companionRemote$pairing$hr._(_root);
	@override late final _Translations$companionRemote$remote$hr remote = _Translations$companionRemote$remote$hr._(_root);
	@override late final _Translations$companionRemote$errors$hr errors = _Translations$companionRemote$errors$hr._(_root);
	@override String get closedBeforeAuth => 'Veza je prekinuta prije autentifikacije';
}

// Path: videoSettings
class _Translations$videoSettings$hr extends Translations$videoSettings$en {
	_Translations$videoSettings$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get playbackSpeed => 'Brzina reprodukcije';
	@override String get normalSpeed => 'Uobičajena';
	@override String sleepTimerActive({required Object duration}) => 'Aktivno (${duration})';
	@override String get zoom => 'Zumiranje';
	@override String get sleepTimer => 'Mjerač vremena za isključivanje';
	@override String get audioSync => 'Sinkronizacija zvuka';
	@override String get subtitleSync => 'Sinkronizacija titlova';
	@override String get hdr => 'HDR';
	@override String get hdrUnsupported => 'HDR nije dostupan — kompozitor radne površine ili videoizlaz ne podržava HDR.';
	@override String get hdrToneMapping => 'Mapiranje tonova HDR-a';
	@override String get hdrToneMappingCompositor => 'Kompozitor radne površine';
	@override String get hdrToneMappingCompositorDescription => 'Proslijedi izvorne HDR metapodatke kompozitoru radne površine da ih on prilagodi.';
	@override String get hdrToneMappingPlayer => 'Reproduktor';
	@override String get hdrToneMappingPlayerDescription => 'Reproduktor prilagođava sliku najvećoj svjetlini zaslona, a zatim rezultat prosljeđuje kompozitoru.';
	@override String get hdrToneMappingFailed => 'Nije moguće promijeniti mapiranje tonova HDR-a — prethodni je način i dalje aktivan.';
	@override String get audioOutput => 'Zvučni izlaz';
	@override String get performanceOverlay => 'Prikaz performansi';
	@override String get audioOutputDolbyAtmos => 'Dolby Atmos';
	@override String get audioOutputDolbyAudio => 'Dolby Audio';
	@override String get audioOutputSurround => 'Prostorni zvuk';
	@override String get audioOutputSpatial => 'Prostorni zvuk';
	@override String get audioOutputStereo => 'Stereo';
	@override String get audioNormalization => 'Ujednači glasnoću';
	@override String get audioNormalizationDisablesPassthrough => 'Zvuk se dekodira u PCM. Izravni prijenos zvuka isključen je dok je ova opcija uključena.';
}

// Path: performanceOverlay
class _Translations$performanceOverlay$hr extends Translations$performanceOverlay$en {
	_Translations$performanceOverlay$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get color => 'Boja';
	@override String get performance => 'Performanse';
	@override String get buffer => 'Međuspremnik';
	@override String get app => 'aplikacija';
	@override String get decoder => 'Dekoder';
	@override String get rawDecoder => 'Sirovi dekoder';
	@override String get tunneling => 'Tuneliranje';
	@override String get passthrough => 'Izravni prijenos zvuka';
	@override String get aspect => 'Omjer slike';
	@override String get rotation => 'Zakretanje';
	@override String get dvSource => 'DV izvor';
	@override String get dvPath => 'Putanja DV-a';
	@override String get dvRouteDecoder => 'Dolby Vision dekoder';
	@override String get dvRouteDecoderP81 => 'Dolby Vision dekoder (P7→8.1)';
	@override String get dvRouteBaseLayer => 'Osnovni sloj';
	@override String get dvRouteBaseLayerHdr10 => 'HDR10 osnovni sloj';
	@override String get dvRouteBaseLayerHlg => 'HLG osnovni sloj';
	@override String get dvRouteBaseLayerSdr => 'SDR osnovni sloj';
	@override String get dvRouteReshaped => 'RPU preoblikovan (gpu-next)';
	@override String get p7Conversion => 'Pretvorba P7';
	@override String get sampleRate => 'Frekvencija uzorkovanja';
	@override String get pixelFormat => 'Format piksela';
	@override String get hwFormat => 'Hardverski format';
	@override String get matrix => 'Matrica';
	@override String get primaries => 'Primarne boje';
	@override String get transfer => 'Prijenos';
	@override String get renderFps => 'Broj prikazanih sličica u sekundi';
	@override String get displayFps => 'Prikaži FPS';
	@override String get avSync => 'A/V sinkronizacija';
	@override String get dropped => 'Ispušteno';
	@override String get dvRpus => 'DV RPU-ovi';
	@override String get dvRpuAverage => 'Prosjek DV RPU-a';
	@override String get dvSampleAverage => 'Prosjek DV uzorka';
	@override String get maxLuma => 'Najveća svjetlina';
	@override String get minLuma => 'Najmanja svjetlina';
	@override String get maxCll => 'MaxCLL';
	@override String get maxFall => 'MaxFALL';
	@override String get cacheUsed => 'Iskorištena predmemorija';
	@override String get cacheLimit => 'Ograničenje predmemorije';
	@override String get speed => 'Brzina';
	@override String get player => 'Reproduktor';
	@override String get memory => 'Memorija';
	@override String get uiFps => 'UI FPS';
	@override String get fps => 'FPS';
	@override String get decoderAndroidHw => 'Android HW';
	@override String get decoderNvidiaHw => 'NVIDIA HW';
	@override String get decoderQualcommHw => 'Qualcomm HW';
	@override String get decoderMediatekHw => 'MediaTek HW';
	@override String get decoderExynosHw => 'Exynos HW';
	@override String get decoderSoftware => 'Softverski dekoder';
	@override String get decoderHardware => 'Hardver';
	@override String get tunnelingActive => 'Aktivno';
	@override String dvRpuFailed({required Object converted, required Object failures}) => '${converted} (${failures} neuspješno)';
}

// Path: externalPlayer
class _Translations$externalPlayer$hr extends Translations$externalPlayer$en {
	_Translations$externalPlayer$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vanjski reproduktor';
	@override String get useExternalPlayer => 'Koristi vanjski reproduktor';
	@override String get useExternalPlayerDescription => 'Otvorite videozapise u drugoj aplikaciji';
	@override String get selectPlayer => 'Odaberi reproduktor';
	@override String get customPlayers => 'Prilagođeni reproduktori';
	@override String get systemDefault => 'Zadane postavke sustava';
	@override String get addCustomPlayer => 'Dodaj prilagođeni reproduktor';
	@override String get playerName => 'Naziv reproduktora';
	@override String get playerNameHint => 'Moj reproduktor';
	@override String get playerCommand => 'Naredba';
	@override String get playerPackage => 'Naziv paketa';
	@override String get playerUrlScheme => 'URL shema';
	@override String get off => 'Isključeno';
	@override String get launchFailed => 'Nije moguće pokrenuti vanjski reproduktor';
	@override String appNotInstalled({required Object name}) => '${name} nije instaliran';
	@override String get playInExternalPlayer => 'Reproduciraj u vanjskom reproduktoru';
}

// Path: metadataEdit
class _Translations$metadataEdit$hr extends Translations$metadataEdit$en {
	_Translations$metadataEdit$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get editMetadata => 'Uredi...';
	@override String get screenTitle => 'Uredi metapodatke';
	@override String get basicInfo => 'Osnovne informacije';
	@override String get artwork => 'Slike i grafika';
	@override String get advancedSettings => 'Napredne postavke';
	@override String get title => 'Naslov';
	@override String get sortTitle => 'Poredaj naslov';
	@override String get originalTitle => 'Izvorni naslov';
	@override String get releaseDate => 'Datum izlaska';
	@override String get contentRating => 'Ocjena sadržaja';
	@override String get studio => 'Studio';
	@override String get tagline => 'Slogan';
	@override String get summary => 'Sažetak';
	@override String get poster => 'Plakat';
	@override String get background => 'Pozadina';
	@override String get logo => 'Logotip';
	@override String get squareArt => 'Kvadratna slika';
	@override String get selectPoster => 'Odaberi poster';
	@override String get selectBackground => 'Odaberi pozadinu';
	@override String get selectLogo => 'Odaberi logotip';
	@override String get selectSquareArt => 'Odaberi kvadratnu sliku';
	@override String get fromUrl => 'S URL-a';
	@override String get uploadFile => 'Prenesi datoteku';
	@override String get enterImageUrl => 'Unesite URL slike';
	@override String get imageUrl => 'URL slike';
	@override String get metadataUpdated => 'Metapodaci ažurirani';
	@override String get metadataUpdateFailed => 'Ažuriranje metapodataka nije uspjelo';
	@override String get artworkUpdated => 'Ilustracija ažurirana';
	@override String get artworkUpdateFailed => 'Ažuriranje umjetničkog djela nije uspjelo';
	@override String get noArtworkAvailable => 'Nema dostupnih umjetničkih djela';
	@override String artworkOption({required Object index}) => 'Slika ${index}';
	@override String selectedArtworkOption({required Object index}) => 'Odabrana slika ${index}';
	@override String get notSet => 'Nije postavljeno';
	@override String get libraryDefault => 'Zadana biblioteka';
	@override String get accountDefault => 'Zadani račun';
	@override String get seriesDefault => 'Zadana serija';
	@override String get episodeSorting => 'Razvrstavanje epizoda';
	@override String get oldestFirst => 'Najstarije prvo';
	@override String get newestFirst => 'Najnovije prvo';
	@override String get keep => 'Zadrži';
	@override String get allEpisodes => 'Sve epizode';
	@override String latestEpisodes({required Object count}) => '${count} najnovije epizode';
	@override String get latestEpisode => 'Najnovija epizoda';
	@override String episodesAddedPastDays({required Object count}) => 'Epizode dodane u proteklih ${count} dana';
	@override String get deleteAfterPlaying => 'Brisanje epizoda nakon reprodukcije';
	@override String get never => 'nikada';
	@override String get afterADay => 'Nakon jednog dana';
	@override String get afterAWeek => 'Nakon tjedan dana';
	@override String get afterAMonth => 'Nakon mjesec dana';
	@override String get onNextRefresh => 'Pri sljedećem osvježavanju';
	@override String get seasons => 'Sezone';
	@override String get show => 'Serija';
	@override String get hide => 'Sakrij';
	@override String get episodeOrdering => 'Redoslijed epizoda';
	@override String get tmdbAiring => 'TMDb (prema datumu emitiranja)';
	@override String get tvdbAiring => 'TheTVDB (emitirano)';
	@override String get tvdbAbsolute => 'TheTVDB (apsolutno)';
	@override String get metadataLanguage => 'Jezik metapodataka';
	@override String get useOriginalTitle => 'Koristi izvorni naslov';
	@override String get preferredAudioLanguage => 'Željeni jezik zvuka';
	@override String get preferredSubtitleLanguage => 'Željeni jezik titlova';
	@override String get subtitleMode => 'Način automatskog odabira titlova';
	@override String get manuallySelected => 'Ručno odabrano';
	@override String get shownWithForeignAudio => 'Prikaži uz zvuk na stranom jeziku';
	@override String get alwaysEnabled => 'Uvijek uključeno';
	@override String get tags => 'Oznake';
	@override String get addTag => 'Dodaj oznaku';
	@override String get genre => 'Žanr';
	@override String get director => 'Redatelj';
	@override String get writer => 'Scenarist';
	@override String get producer => 'Producent';
	@override String get country => 'Država';
	@override String get collection => 'Zbirka';
	@override String get label => 'Oznaka';
	@override String get quickTag => 'Brza oznaka...';
}

// Path: matchScreen
class _Translations$matchScreen$hr extends Translations$matchScreen$en {
	_Translations$matchScreen$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get match => 'Poveži...';
	@override String get fixMatch => 'Ispravi podudaranje...';
	@override String get unmatch => 'Ukloni podudaranje';
	@override String get unmatchConfirm => 'Ukloniti ovo podudaranje? Plex će stavku tretirati kao nepovezanu dok je ponovno ne povežete.';
	@override String get unmatchSuccess => 'Podudaranje je uklonjeno.';
	@override String get unmatchFailed => 'Poništavanje podudarnosti stavke nije uspjelo';
	@override String get matchApplied => 'Podudaranje je primijenjeno.';
	@override String get matchFailed => 'Primjena podudaranja nije uspjela';
	@override String get titleHint => 'Naslov';
	@override String get yearHint => 'Godina';
	@override String get search => 'Traži';
	@override String get noMatchesFound => 'Nije pronađeno nijedno podudaranje.';
}

// Path: serverTasks
class _Translations$serverTasks$hr extends Translations$serverTasks$en {
	_Translations$serverTasks$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Poslužiteljski zadaci';
	@override String get failedToLoad => 'Učitavanje zadataka nije uspjelo';
	@override String get noTasks => 'Nijedan zadatak nije pokrenut';
}

// Path: trakt
class _Translations$trakt$hr extends Translations$trakt$en {
	_Translations$trakt$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Trakt';
	@override String get connected => 'Povezan';
	@override String connectedAs({required Object username}) => 'Povezan kao @${username}';
	@override String get disconnectConfirm => 'Prekinuti vezu Trakt računa?';
	@override String get disconnectConfirmBody => 'Luroka će prestati slati događaje na Trakt. Možete se ponovno povezati bilo kada.';
	@override String get scrobble => 'Scrobbling u stvarnom vremenu';
	@override String get scrobbleDescription => 'Pošaljite događaje reprodukcije, pauze i zaustavljanja na Trakt tijekom reprodukcije.';
	@override String get watchedSync => 'Sinkroniziraj status gledanja';
	@override String get watchedSyncDescription => 'Kada označite stavke kao gledane u Luroka, one su također označene kao gledane na Trakt.';
}

// Path: seerr
class _Translations$seerr$hr extends Translations$seerr$en {
	_Translations$seerr$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Seerr';
	@override String get connectTitle => 'Povežite Seerr';
	@override String get serverUrl => 'URL poslužitelja';
	@override String get serverUrlHelper => 'Adresa vaše Seerr instance';
	@override String get checkServer => 'nastavi';
	@override String get signInWithJellyfin => 'Prijavite se pomoću Jellyfin';
	@override String get signInWithEmby => 'Prijavite se pomoću Emby';
	@override String get signInWithLocal => 'Koristite lokalni račun';
	@override String get email => 'E-mail';
	@override String get noSignInMethods => 'Ova Seerr instanca ne nudi metodu prijave koju Luroka podržava.';
	@override String get instance => 'Instanca';
	@override String get disconnectConfirm => 'Odspojiti Seerr?';
	@override String get disconnectConfirmBody => 'Luroka će zaboraviti ovu Seerr instancu. Ponovno se povežite bilo kada.';
	@override String get request => 'zahtjev';
	@override String get request4k => 'Zahtjev u 4K';
	@override String get seasons => 'Godišnja doba';
	@override String get allSeasons => 'Sva godišnja doba';
	@override String get advancedOptions => 'Napredno';
	@override String get destinationServer => 'Odredišni poslužitelj';
	@override String get qualityProfile => 'Profil kvalitete';
	@override String get rootFolder => 'Korijenska mapa';
	@override String get languageProfile => 'Jezični profil';
	@override String get tags => 'oznake';
	@override String get noTags => 'Nema oznaka';
	@override String defaultOption({required Object name}) => '${name} (zadano)';
	@override String get animeNote => 'Ova serija je anime.';
	@override String get requestSubmitted => 'Zahtjev poslan';
	@override String requestFailed({required Object error}) => 'Zahtjev nije uspio: ${error}';
	@override String get requestsLoadFailed => 'Nije moguće učitati opcije zahtjeva';
	@override String get nothingToRequest => 'Sve je već dostupno ili traženo.';
	@override String get statusAvailable => 'na raspolaganju';
	@override String get statusPartiallyAvailable => 'Djelomično dostupno';
	@override String get statusRequested => 'Zatraženo';
	@override String get statusProcessing => 'Obrada';
	@override String get statusBlocklisted => 'Na popisu blokiranih';
	@override String couldNotReach({required Object url, required Object error}) => 'Nije moguće doći do ${url}: ${error}';
	@override String noInstanceAtUrl({required Object url, required Object status}) => 'Nema Seerr instance na ${url} (HTTP ${status})';
	@override String get behindAuthProxy => 'Obrnuti proxy za provjeru autentičnosti (SSO ili HTTP auth) odgovorio je umjesto Seerr. Luroka se ne može prijaviti putem nje: neka Seerr putanja /api/v1 zaobiđe proxy za ovu aplikaciju ili upotrijebi adresu koja izravno doseže Seerr.';
	@override String get invalidUrl => 'Unesite adresu poslužitelja poput https://seerr.example.com';
	@override String get quickConnectUnsupported => 'Ova Seerr instanca ne podržava Quick Connect. Potreban mu je Seerr 3.4 ili noviji.';
	@override String get notInitialized => 'Ova Seerr instanca nije dovršila postavljanje prvog pokretanja';
	@override String get noPlexTokenForReauth => 'Nema Plex tokena dostupnog za ponovnu prijavu';
	@override String get noStoredCredentials => 'Nema pohranjenih vjerodajnica dostupnih za ponovnu prijavu';
	@override String get signInRejected => 'Prijava je odbijena';
	@override String get noSessionCookie => 'Seerr nije izdao kolačić sesije';
	@override String get freshCookieRejected => 'Seerr je odbio novi kolačić sesije';
	@override String get noUserInformation => 'Seerr nije vratio podatke o korisniku';
	@override String get sessionRejectedAfterReauth => 'Sesija je odbijena nakon ponovnog prijavljivanja';
	@override String get permissionDenied => 'Seerr je odbio ovu radnju: vaš račun više nema potrebnu dozvolu';
	@override String get permissionRevoked => 'Više nemate dopuštenje to zahtijevati';
}

// Path: services
class _Translations$services$hr extends Translations$services$en {
	_Translations$services$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Usluge';
	@override String get hubSubtitle => 'Sinkronizirajte napredak gledanja i zatražite nove naslove.';
	@override String get discoverySection => 'Otkrivanje i zahtjevi';
	@override String get trackingSection => 'Praćenje gledanja i popisi';
	@override String get seerrDescription => 'Pronađite filmove i serije te pošaljite zahtjeve putem svojeg Seerr poslužitelja.';
	@override String get tmdbDescription => 'Otkrijte filmove i serije, plakate, ocjene i pojedinosti.';
	@override String get traktDescription => 'Pratite filmove i serije, sinkronizirajte status gledanja i upravljajte popisom za gledanje.';
	@override String get malDescription => 'Održavajte popis animea i napredak gledanja sinkroniziranima.';
	@override String get anilistDescription => 'Pratite anime i sinkronizirajte napredak gledanja s AniListom.';
	@override String get simklDescription => 'Pratite filmove, serije i anime uz Simkl.';
	@override String get mdblistDescription => 'Povežite svoje MDBList popise i ocjene filmova.';
	@override String connectionIntro({required Object service}) => 'Povežite ${service} s trenutačnim Luroka profilom. Ovu vezu i njezine mogućnosti možete upravljati ovdje u bilo kojem trenutku.';
	@override String connectService({required Object service}) => 'Poveži ${service}';
	@override String get seerrConnectDescription => 'Povežite Seerr poslužitelj kako biste u Luroki otkrivali i zatražili filmove i serije.';
	@override String get seerrServerStep => 'Unesite adresu koju koristite za otvaranje Seerra. Provjerit ćemo koje načine prijave poslužitelj podržava.';
	@override String get seerrSignInStep => 'Odaberite način prijave koji vaš poslužitelj podržava.';
	@override String get integrations => 'Integracije';
	@override String get notConnected => 'Nije povezano';
	@override String connectedAs({required Object username}) => 'Povezan kao @${username}';
	@override String get scrobble => 'Automatski pratite napredak';
	@override String get scrobbleDescription => 'Ažurirajte svoj popis kada završite epizodu ili film.';
	@override String disconnectConfirm({required Object service}) => 'Odspojiti ${service}?';
	@override String disconnectConfirmBody({required Object service}) => 'Luroka će prestati ažurirati ${service}. Ponovno se povežite bilo kada.';
	@override String connectFailed({required Object service}) => 'Nije moguće povezati se na ${service}. Pokušajte ponovno.';
	@override late final _Translations$services$names$hr names = _Translations$services$names$hr._(_root);
	@override late final _Translations$services$simklReconnect$hr simklReconnect = _Translations$services$simklReconnect$hr._(_root);
	@override late final _Translations$services$deviceCode$hr deviceCode = _Translations$services$deviceCode$hr._(_root);
	@override late final _Translations$services$oauthProxy$hr oauthProxy = _Translations$services$oauthProxy$hr._(_root);
	@override late final _Translations$services$pendingAuth$hr pendingAuth = _Translations$services$pendingAuth$hr._(_root);
	@override late final _Translations$services$libraryFilter$hr libraryFilter = _Translations$services$libraryFilter$hr._(_root);
}

// Path: offlineRecovery
class _Translations$offlineRecovery$hr extends Translations$offlineRecovery$en {
	_Translations$offlineRecovery$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vaši poslužitelji nisu dostupni';
	@override String get description => 'Preuzeti sadržaj i dalje je dostupan. Pokušajte se ponovno povezati kad se poslužitelj vrati na mrežu ili dodajte drugi poslužitelj.';
	@override String get appleTvDescription => 'Luroka se nije uspjela povezati s vašim medijskim poslužiteljima. Pokušajte ponovno kad budu dostupni ili dodajte drugi poslužitelj da biste nastavili gledati.';
	@override String get kidsDescription => 'Nije moguće povezati se s medijskim poslužiteljem. Pokušajte ponovno ili zamolite roditelja za pomoć.';
	@override String get retrying => 'Povezivanje…';
	@override String get addServer => 'Dodaj poslužitelj';
}

// Path: releaseUpdates
class _Translations$releaseUpdates$hr extends Translations$releaseUpdates$en {
	_Translations$releaseUpdates$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get manualInstructions => 'Preuzmi arhivu izdanja s GitHuba, izdvoji APK i instaliraj ga na svoj Android uređaj.';
	@override String get tvInstructions => 'Otvori ovu adresu na telefonu ili računalu ili skeniraj QR kod za preuzimanje izdanja.';
	@override String get pressBackAgain => 'Ponovno pritisni Natrag za izlaz iz reprodukcije';
}

// Path: profileIntegrations
class _Translations$profileIntegrations$hr extends Translations$profileIntegrations$en {
	_Translations$profileIntegrations$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Prilagodite Luroku sebi';
	@override String get description => 'Povežite omiljene servise da biste pratili što gledate i zatražili nove filmove i serije. Svaki profil u aplikaciji Luroka ima zasebne veze.';
	@override String get step => 'Neobavezne integracije';
	@override String get examples => 'Trakt · Simkl · AniList · MyAnimeList · Seerr';
	@override String get connect => 'Pregledaj integracije';
	@override String get later => 'Postavi kasnije';
	@override String get manage => 'Upravljaj integracijama';
	@override String forProfile({required Object name}) => 'Veze za profil ${name}';
}

// Path: addServer
class _Translations$addServer$hr extends Translations$addServer$en {
	_Translations$addServer$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String addMediaBrowserTitle({required Object product}) => 'Dodajte ${product} poslužitelj';
	@override String get serverUrls => 'URL-ovi poslužitelja';
	@override String get serverUrlsHelper => 'Dopušteno je više URL-ova odvojenih zarezima.';
	@override String get findServer => 'Pronađite poslužitelj';
	@override String searchingLocalMediaBrowserServers({required Object product}) => 'Traženje lokalnih ${product} poslužitelja...';
	@override String localMediaBrowserServers({required Object product}) => 'Lokalni ${product} poslužitelji';
	@override String get username => 'Korisničko ime';
	@override String get password => 'Lozinka';
	@override String get signIn => 'Prijavite se';
	@override String get change => 'Promjena';
	@override String get required => 'Obavezno';
	@override String couldNotReachServer({required Object error}) => 'Nije moguće doći do poslužitelja: ${error}';
	@override String signInFailed({required Object error}) => 'Prijava nije uspjela: ${error}';
	@override String quickConnectFailed({required Object error}) => 'Quick Connect nije uspio: ${error}';
	@override String get addPlexTitle => 'Prijavite se pomoću Plex';
	@override String get pinExpired => 'PIN je istekao prije prijave. Molimo pokušajte ponovo.';
	@override String failedToRegisterAccount({required Object error}) => 'Neuspješna registracija računa: ${error}';
	@override String enterMediaBrowserUrlError({required Object product}) => 'Unesite URL svog ${product} poslužitelja';
	@override String get addConnectionTitle => 'Dodaj vezu';
	@override String addConnectionTitleScoped({required Object name}) => 'Dodaj u ${name}';
	@override String get signInWithPlexCard => 'Prijavite se pomoću Plex';
	@override String get signInWithPlexCardSubtitle => 'Autorizirajte ovaj uređaj. Dodani su dijeljeni poslužitelji.';
	@override String get signInWithPlexCardSubtitleScoped => 'Autorizirajte Plex račun. Kućni korisnici postaju profili.';
	@override String connectToMediaBrowserCard({required Object product}) => 'Povežite se na ${product}';
	@override String get connectToMediaBrowserCardSubtitle => 'Unesite URL poslužitelja, korisničko ime i lozinku.';
	@override String connectToMediaBrowserCardSubtitleScoped({required Object product, required Object name}) => 'Prijavite se na svoj ${product} poslužitelj. Veže se na ${name}.';
	@override String get borrowFromAnotherProfile => 'Posudite s drugog profila';
	@override String get borrowFromAnotherProfileSubtitle => 'Ponovno upotrijebite vezu drugog profila. Profili zaštićeni PIN zahtijevaju PIN.';
	@override String get invalidCredentials => 'Nevažeće korisničko ime ili lozinka';
	@override String get authResponseNotJson => 'Odgovor autentifikacije nije bio važeći JSON';
	@override String get authResponseIncomplete => 'Odgovor poslužitelja za prijavu nije bio potpun';
	@override String get quickConnectRejected => 'Quick Connect je odbio poslužitelj';
	@override String get quickConnectNotJson => 'Quick Connect odgovor nije valjan JSON';
	@override String get quickConnectMissingFields => 'Quick Connect odgovoru nedostaje kod ili tajna';
	@override String get quickConnectPollRejected => 'Quick Connect prozivanje je odbio poslužitelj';
	@override String get serverTimedOut => 'Poslužitelj nije odgovorio na vrijeme';
	@override String get responseNotJson => 'Odgovor poslužitelja nije bio važeći JSON';
	@override String responseMissingIdentity({required Object product}) => 'Odgovoru nedostaje ID ili naziv poslužitelja — je li ovo ${product} poslužitelj?';
	@override String probeFailed({required Object error}) => 'Nije moguće doći do poslužitelja: ${error}';
	@override String enterAtLeastOneUrl({required Object product}) => 'Unesite barem jedan URL poslužitelja ${product}';
	@override String noReachableServer({required Object product}) => 'Nije pronađen nijedan dostupni poslužitelj ${product}';
	@override String urlsPointToDifferentServers({required Object product}) => 'Ovi URL-ovi upućuju na različite ${product} poslužitelje';
	@override String urlDoesNotMatchServer({required Object product}) => 'Ovaj URL ne odgovara poslužitelju ${product}';
	@override String get redirectUnsupported => 'Poslužitelj je preusmjeren na nepodržani URL';
	@override String redirectDifferentHost({required Object product}) => 'Poslužitelj je preusmjeren na drugi poslužitelj. Izravno unesite konačnu adresu za ${product}.';
	@override String get redirectInsecure => 'Poslužitelj je preusmjerio s HTTPS-a na nesiguran URL';
	@override String redirectUnsupportedEnterFinal({required Object product}) => 'Poslužitelj je preusmjeren na nepodržani URL. Izravno unesite konačni ${product} URL.';
}

// Path: appIcon.names
class _Translations$appIcon$names$hr extends Translations$appIcon$names$en {
	_Translations$appIcon$names$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get midnight => 'Ponoć';
	@override String get ember => 'žar';
	@override String get paper => 'Papir';
	@override String get oled => 'OLED';
	@override String get line => 'Linija';
	@override String get ocean => 'Ocean';
	@override String get ultraviolet => 'Ultraljubičasto';
	@override String get matcha => 'Matcha';
	@override String get sunset => 'Zalazak sunca';
	@override String get gold => 'zlato';
	@override String get titanium => 'Titanij';
	@override String get glass => 'Staklo';
	@override String get crt => 'CRT';
	@override String get vhs => 'VHS';
	@override String get synthwave => 'Synthwave';
	@override String get pixel => 'Pixel';
	@override String get neon => 'Neon';
	@override String get sticker => 'Naljepnica';
	@override String get ticket => 'ulaznica';
	@override String get pop => 'Pop';
	@override String get strata => 'slojevi';
	@override String get facet => 'Faseta';
	@override String get tilde => 'Tilda';
}

// Path: common.ratingSource
class _Translations$common$ratingSource$hr extends Translations$common$ratingSource$en {
	_Translations$common$ratingSource$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get critic => 'Kritičari';
	@override String get audience => 'publika';
	@override String get imdb => 'IMDb';
	@override String get tmdb => 'TMDB';
	@override String get rottenTomatoes => 'Rotten Tomatoes';
	@override String get simkl => 'Simkl';
	@override String get mal => 'MyAnimeList';
	@override String get anilist => 'AniList';
	@override String get trakt => 'Trakt';
	@override String get rottenTomatoesCritic => 'Kritičari Rotten Tomatoesa';
	@override String get rottenTomatoesAudience => 'Publika Rotten Tomatoesa';
	@override String get metacritic => 'Metacritic';
	@override String get letterboxd => 'Letterboxd';
}

// Path: common.mediaKind
class _Translations$common$mediaKind$hr extends Translations$common$mediaKind$en {
	_Translations$common$mediaKind$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get movie => 'Film';
	@override String get show => 'Serija';
	@override String get season => 'Sezona';
	@override String get episode => 'Epizoda';
	@override String get artist => 'Izvođač';
	@override String get album => 'Album';
	@override String get track => 'Zapis';
	@override String get collection => 'Zbirka';
	@override String get playlist => 'Popis za reprodukciju';
	@override String get clip => 'Isječak';
	@override String get photo => 'Fotografija';
	@override String get folder => 'Mapa';
}

// Path: supporter.errors
class _Translations$supporter$errors$hr extends Translations$supporter$errors$en {
	_Translations$supporter$errors$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get storeUnavailable => 'Kupnje nisu dostupne. Provjerite jeste li prijavljeni u trgovinu i jesu li kupnje dopuštene na ovom uređaju.';
	@override String get productNotFound => 'Kupnja dodatka za podršku trenutačno nije dostupna u trgovini.';
	@override String get productQueryFailed => 'Nije moguće učitati cijenu. Provjerite vezu i pokušajte ponovno.';
	@override String get purchaseFailed => 'Kupnja nije uspjela. Pokušajte ponovno.';
	@override String get restoreFailed => 'Nije moguće doći do trgovine kako biste vratili svoju kupnju. Pokušajte ponovno.';
	@override String get nothingToRestore => 'Za ovaj račun trgovine nije pronađena kupnja dodatka za podršku.';
}

// Path: themeEditor.slots
class _Translations$themeEditor$slots$hr extends Translations$themeEditor$slots$en {
	_Translations$themeEditor$slots$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get bg => 'Pozadina';
	@override String get surface => 'Površina';
	@override String get outline => 'Obris';
	@override String get text => 'Tekst';
	@override String get textMuted => 'Sekundarni tekst';
	@override String get accent => 'Naglasak';
}

// Path: themeEditor.contrast
class _Translations$themeEditor$contrast$hr extends Translations$themeEditor$contrast$en {
	_Translations$themeEditor$contrast$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get textOnBg => 'Tekst na pozadini';
	@override String get textOnSurface => 'Tekst na površini';
	@override String get textMutedOnBg => 'Sekundarni tekst na pozadini';
	@override String get textMutedOnSurface => 'Sekundarni tekst na površini';
	@override String get accentOnBg => 'Naglasak na pozadini';
	@override String get accentOnSurface => 'Naglasak na površini';
	@override String get labelOnAccent => 'Oznaka gumba na naglasku';
}

// Path: hotkeys.actions
class _Translations$hotkeys$actions$hr extends Translations$hotkeys$actions$en {
	_Translations$hotkeys$actions$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get playPause => 'Reprodukcija/Pauza';
	@override String get volumeUp => 'Povećaj glasnoću';
	@override String get volumeDown => 'Stišaj zvuk';
	@override String seekForward({required Object seconds}) => 'Traži naprijed (${seconds}s)';
	@override String seekBackward({required Object seconds}) => 'Traži unatrag (${seconds}s)';
	@override String get fullscreenToggle => 'Uključi/isključi cijeli zaslon';
	@override String get muteToggle => 'Uključi zvuk';
	@override String get subtitleToggle => 'Uključi titlove';
	@override String get audioTrackNext => 'Sljedeći zvučni zapis';
	@override String get subtitleTrackNext => 'Sljedeći zapis titla';
	@override String get chapterNext => 'Sljedeće poglavlje';
	@override String get chapterPrevious => 'Prethodno poglavlje';
	@override String get episodeNext => 'Sljedeća epizoda';
	@override String get episodePrevious => 'Prethodna epizoda';
	@override String get speedIncrease => 'Povećaj brzinu';
	@override String get speedDecrease => 'Smanji brzinu';
	@override String get speedReset => 'Poništi brzinu';
	@override String get zoomIn => 'Povećaj';
	@override String get zoomOut => 'Smanji';
	@override String get zoomReset => 'Resetiraj zumiranje';
	@override String get subSeekNext => 'Traženje sljedećeg titla';
	@override String get subSeekPrev => 'Traži na prethodni titl';
	@override String get shaderToggle => 'Uključi/isključi shadere';
	@override String get skipMarker => 'Preskoči uvodnu ili odjavnu špicu';
	@override String get screenshot => 'Napravite snimku zaslona';
}

// Path: videoControls.pipErrors
class _Translations$videoControls$pipErrors$hr extends Translations$videoControls$pipErrors$en {
	_Translations$videoControls$pipErrors$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get androidVersion => 'Zahtijeva Android 8.0 ili noviji';
	@override String get iosVersion => 'Zahtijeva iOS 15.0 ili noviji';
	@override String get permissionDisabled => 'Način slika u slici je isključen. Uključi ga u postavkama sustava.';
	@override String get notSupported => 'Uređaj ne podržava način rada slika u slici';
	@override String get voSwitchFailed => 'Nije uspjelo prebacivanje video izlaza na sliku u slici';
	@override String get failed => 'Pokretanje slike u slici nije uspjelo';
	@override String get prepareFailed => 'Nije moguće pripremiti sliku u slici';
	@override String unknown({required Object error}) => 'Došlo je do pogreške: ${error}';
}

// Path: accountPreferences.groups
class _Translations$accountPreferences$groups$hr extends Translations$accountPreferences$groups$en {
	_Translations$accountPreferences$groups$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get audioAndSubtitles => 'Zvuk i titlovi';
	@override String get libraryDisplay => 'Biblioteka';
	@override String get personalMedia => 'Osobni mediji';
}

// Path: accountPreferences.subtitleModes
class _Translations$accountPreferences$subtitleModes$hr extends Translations$accountPreferences$subtitleModes$en {
	_Translations$accountPreferences$subtitleModes$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get none => 'Ručno odabrano';
	@override String get noneDescription => 'Titlovi se nikad ne uključuju automatski.';
	@override String get defaultMode => 'Koristi oznake zapisa';
	@override String get defaultModeDescription => 'Koristi oznake zadanih i prisilnih titlova pohranjene u svakom zapisu.';
	@override String get always => 'Uvijek uključi';
	@override String get alwaysDescription => 'Uključi titlove na željenom jeziku kad god su dostupni.';
	@override String get onlyForced => 'Samo prisilni titlovi';
	@override String get onlyForcedDescription => 'Uključi samo titlove označene kao prisilni.';
	@override String get smart => 'Kad je zvuk na stranom jeziku';
	@override String get smartDescription => 'Uključi titlove samo kad je zvuk na drugom jeziku.';
}

// Path: accountPreferences.subtitleAccessibilityOptions
class _Translations$accountPreferences$subtitleAccessibilityOptions$hr extends Translations$accountPreferences$subtitleAccessibilityOptions$en {
	_Translations$accountPreferences$subtitleAccessibilityOptions$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get preferNonSdh => 'Radije ne-SDH titlove';
	@override String get preferSdh => 'Radije SDH titlove';
	@override String get onlySdh => 'Samo SDH titlovi';
	@override String get onlyNonSdh => 'Samo titlovi koji nisu SDH';
}

// Path: accountPreferences.forcedSubtitleOptions
class _Translations$accountPreferences$forcedSubtitleOptions$hr extends Translations$accountPreferences$forcedSubtitleOptions$en {
	_Translations$accountPreferences$forcedSubtitleOptions$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get preferNonForced => 'Preferirajte neforsirane titlove';
	@override String get preferForced => 'Preferirajte prisilne titlove';
	@override String get onlyForced => 'Samo prisilni titlovi';
	@override String get onlyNonForced => 'Samo neforsirani titlovi';
}

// Path: accountPreferences.watchedIndicatorOptions
class _Translations$accountPreferences$watchedIndicatorOptions$hr extends Translations$accountPreferences$watchedIndicatorOptions$en {
	_Translations$accountPreferences$watchedIndicatorOptions$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get none => 'nikada';
	@override String get moviesAndShows => 'Filmovi i TV emisije';
	@override String get movies => 'Samo filmovi';
	@override String get shows => 'Samo TV emisije';
}

// Path: accountPreferences.mediaReviewsOptions
class _Translations$accountPreferences$mediaReviewsOptions$hr extends Translations$accountPreferences$mediaReviewsOptions$en {
	_Translations$accountPreferences$mediaReviewsOptions$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get usersAndCritics => 'Korisnici i kritičari';
	@override String get usersOnly => 'Samo korisnici';
	@override String get criticsOnly => 'Samo kritičari';
	@override String get nobody => 'Skriveno';
}

// Path: discover.person
class _Translations$discover$person$hr extends Translations$discover$person$en {
	_Translations$discover$person$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get born => 'Rođenje';
	@override String get died => 'Smrt';
	@override String get birthplace => 'Mjesto rođenja';
	@override String dateWithAge({required Object date, required Object age}) => '${date} (${age} god.)';
	@override String dateWithAgeAtDeath({required Object date, required Object age}) => '${date} (${age} god. pri smrti)';
}

// Path: libraries.tabs
class _Translations$libraries$tabs$hr extends Translations$libraries$tabs$en {
	_Translations$libraries$tabs$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get recommended => 'Preporučeno';
	@override String get browse => 'Pregledaj';
	@override String get collections => 'Zbirke';
	@override String get playlists => 'Popisi pjesama';
}

// Path: libraries.groupings
class _Translations$libraries$groupings$hr extends Translations$libraries$groupings$en {
	_Translations$libraries$groupings$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Grupiranje';
	@override String get all => 'Sve';
	@override String get movies => 'Filmovi';
	@override String get shows => 'TV emisije';
	@override String get seasons => 'Sezone';
	@override String get episodes => 'Epizode';
	@override String get artists => 'Umjetnici';
	@override String get albums => 'Albumi';
	@override String get tracks => 'Zvučni zapisi';
	@override String get folders => 'Mape';
}

// Path: libraries.filterCategories
class _Translations$libraries$filterCategories$hr extends Translations$libraries$filterCategories$en {
	_Translations$libraries$filterCategories$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get genre => 'Žanr';
	@override String get year => 'Godina';
	@override String get contentRating => 'Ocjena sadržaja';
	@override String get tag => 'Oznaka';
	@override String get unwatched => 'Negledan';
	@override String get unplayed => 'Nije reproducirano';
	@override String get favorites => 'Favoriti';
	@override String get filePath => 'Put do datoteke';
}

// Path: libraries.sortLabels
class _Translations$libraries$sortLabels$hr extends Translations$libraries$sortLabels$en {
	_Translations$libraries$sortLabels$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Naslov';
	@override String get dateAdded => 'Datum dodavanja';
	@override String get releaseDate => 'Datum izlaska';
	@override String get rating => 'Ocjena';
	@override String get communityRating => 'Ocjena zajednice';
	@override String get criticRating => 'Ocjena kritičara';
	@override String get userRating => 'Ocjena korisnika';
	@override String get datePlayed => 'Datum gledanja';
	@override String get playCount => 'Broj reprodukcija';
	@override String get productionYear => 'Godina produkcije';
	@override String get runtime => 'Trajanje';
	@override String get officialRating => 'Dobna oznaka';
	@override String get premiereDate => 'Datum premijere';
	@override String get startDate => 'Datum početka';
	@override String get airTime => 'Vrijeme emitiranja';
	@override String get studio => 'Studio';
	@override String get random => 'Slučajno';
	@override String get dateShared => 'Datum dijeljenja';
	@override String get latestEpisodeAirDate => 'Datum emitiranja najnovije epizode';
	@override String get lastEpisodeDateAdded => 'Datum zadnje dodane epizode';
	@override String get dateDownloaded => 'Datum preuzimanja';
	@override String get size => 'Veličina';
	@override String get library => 'Biblioteka';
}

// Path: libraries.advancedFilters
class _Translations$libraries$advancedFilters$hr extends Translations$libraries$advancedFilters$en {
	_Translations$libraries$advancedFilters$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get include => 'Uključi';
	@override String get exclude => 'Isključi';
	@override String get any => 'Bilo koje';
	@override String get yes => 'Da';
	@override String get no => 'Ne';
	@override String not({required Object value}) => 'Nije ${value}';
	@override String valueCount({required Object count}) => 'Odabrano ${count}';
	@override String valueCountExcluded({required Object count}) => '${count} isključeno';
	@override String get searchValues => 'Pretraži vrijednosti';
	@override String get noValues => 'Bez vrijednosti';
	@override String get matchContains => 'Sadrži';
	@override String get matchNotContains => 'Ne sadrži';
	@override String get matchIs => 'Je li';
	@override String get matchIsNot => 'Nije';
	@override String get matchBeginsWith => 'Počinje s';
	@override String get matchEndsWith => 'Završava s';
	@override String get textHint => 'Upišite vrijednost';
	@override String get from => 'Od';
	@override String get to => 'Do';
	@override String range({required Object from, required Object to}) => '${from} do ${to}';
	@override String atLeast({required Object value}) => '${value} i više';
	@override String atMost({required Object value}) => 'Do ${value}';
	@override String dateLastDays({required Object count}) => 'Posljednjih ${count} dana';
	@override String get dateLastYear => 'Prošle godine';
	@override String dateOlderThanDays({required Object count}) => 'Starije od ${count} dana';
	@override String get dateOlderThanYear => 'Starije od godinu dana';
}

// Path: explore.rows
class _Translations$explore$rows$hr extends Translations$explore$rows$en {
	_Translations$explore$rows$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get watchlist => 'Popis za gledanje';
	@override String get recommendedMovies => 'Preporučeni filmovi';
	@override String get recommendedShows => 'Preporučene serije';
	@override String get trendingMovies => 'Filmovi u trendu';
	@override String get trendingShows => 'Serije u trendu';
	@override String get popularMovies => 'Popularni filmovi';
	@override String get popularShows => 'Popularne serije';
	@override String get trendingAnime => 'Anime u trendu';
	@override String get suggestedAnime => 'Predloženi anime';
	@override String get airingAnime => 'Anime serije koje se trenutačno emitiraju';
	@override String get popularAnime => 'Najpopularniji anime';
	@override String get trending => 'U trendu';
	@override String get upcomingMovies => 'Nadolazeći filmovi';
	@override String get upcomingShows => 'Nadolazeće serije';
}

// Path: explore.status
class _Translations$explore$status$hr extends Translations$explore$status$en {
	_Translations$explore$status$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get airing => 'Emitira se';
	@override String get ended => 'Završeno';
	@override String get canceled => 'Otkazano';
	@override String get upcoming => 'Nadolazeće';
}

// Path: explore.badge
class _Translations$explore$badge$hr extends Translations$explore$badge$en {
	_Translations$explore$badge$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String rankPopular({required Object n}) => '#${n} popularno';
	@override String rankAiring({required Object n}) => '#${n} u emitiranju';
	@override String rankRated({required Object n}) => 'Ocijenjeno #${n}';
	@override String rankTrending({required Object n}) => '#${n} u trendu';
	@override String rankSeasonal({required Object n, required Object season}) => '#${n} u ${season}';
	@override String watchingNow({required Object n}) => '${n} trenutačno gleda';
	@override String get available => 'Dostupno';
	@override String get partiallyAvailable => 'Djelomično dostupno';
	@override String get availableIn4k => 'Dostupno u 4K razlučivosti';
	@override String get requested => 'Zatraženo';
	@override String get pendingApproval => 'Čeka odobrenje';
	@override String get processing => 'Obrada';
	@override String get declined => 'Odbijeno';
	@override String get requestFailed => 'Zahtjev nije uspio';
	@override String get requested4k => 'Zatraženo je 4K';
	@override String seasonsAvailable({required Object available, required Object total}) => '${available}/${total} sezona dostupno';
	@override String nextEpisodeIn({required Object episode, required Object duration}) => 'Ep. ${episode} u ${duration}';
	@override String nextAiringIn({required Object duration}) => 'Sljedeće u ${duration}';
	@override String episodesShort({required Object n}) => '${n} eps';
	@override String minutesPerEpisode({required Object n}) => '${n} min/ep';
	@override String get adult => '18+';
}

// Path: explore.stats
class _Translations$explore$stats$hr extends Translations$explore$stats$en {
	_Translations$explore$stats$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String listed({required Object n}) => 'Na popisu: ${n}';
	@override String viewersDay({required Object n}) => 'Danas gledalo: ${n}';
	@override String viewersWeek({required Object n}) => 'Ovog tjedna gledalo: ${n}';
	@override String viewersMonth({required Object n}) => 'Ovog mjeseca gledalo: ${n}';
	@override String viewersYear({required Object n}) => 'Ove godine gledalo: ${n}';
	@override String viewersAllTime({required Object n}) => 'Ukupno gledatelja: ${n}';
	@override String planning({required Object n}) => 'Planira gledati: ${n}';
	@override String favorited({required Object n}) => 'Dodano među favorite: ${n}';
	@override String dropRate({required Object percent}) => 'Odustalo je ${percent} korisnika';
	@override String comments({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hr'))(n,
		one: '${n} komentar',
		few: '${n} komentara',
		other: '${n} komentara',
	);
	@override String votes({required Object n}) => '${n} glasova';
	@override String watching({required Object n}) => 'Gleda: ${n}';
	@override String completed({required Object n}) => 'Pogledalo do kraja: ${n}';
	@override String onHold({required Object n}) => 'Na čekanju: ${n}';
	@override String dropped({required Object n}) => 'Odustalo: ${n}';
}

// Path: explore.season
class _Translations$explore$season$hr extends Translations$explore$season$en {
	_Translations$explore$season$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get winter => 'Zima';
	@override String get spring => 'Proljeće';
	@override String get summer => 'Ljeto';
	@override String get fall => 'Jesen';
	@override String withYear({required Object season, required Object year}) => '${season} ${year}';
}

// Path: explore.format
class _Translations$explore$format$hr extends Translations$explore$format$en {
	_Translations$explore$format$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get tv => 'TV';
	@override String get tvShort => 'Kratka TV serija';
	@override String get movie => 'Film';
	@override String get special => 'Specijalna epizoda';
	@override String get ova => 'OVA';
	@override String get ona => 'ONA';
	@override String get music => 'Glazba';
	@override String get other => 'Ostalo';
}

// Path: explore.sourceMaterial
class _Translations$explore$sourceMaterial$hr extends Translations$explore$sourceMaterial$en {
	_Translations$explore$sourceMaterial$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get original => 'Izvornik';
	@override String get manga => 'Manga';
	@override String get lightNovel => 'Roman s ilustracijama';
	@override String get novel => 'Roman';
	@override String get visualNovel => 'Vizualni roman';
	@override String get game => 'Videoigra';
	@override String get webComic => 'Web strip';
	@override String get musicRelease => 'Glazba';
	@override String get otherMedia => 'Ostali mediji';
}

// Path: explore.creditRole
class _Translations$explore$creditRole$hr extends Translations$explore$creditRole$en {
	_Translations$explore$creditRole$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get actor => 'Glumac';
	@override String get director => 'Redatelj';
	@override String get writer => 'Scenarist';
	@override String get producer => 'Producent';
	@override String get creator => 'Autor';
	@override String get composer => 'Skladatelj';
}

// Path: explore.relation
class _Translations$explore$relation$hr extends Translations$explore$relation$en {
	_Translations$explore$relation$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get prequel => 'Prednastavak';
	@override String get sequel => 'Nastavak';
	@override String get sideStory => 'Sporedna priča';
	@override String get spinOff => 'Izvedena serija';
	@override String get alternativeVersion => 'Alternativna verzija';
	@override String get summary => 'Sažetak';
	@override String get parentStory => 'Izvorna priča';
	@override String get adaptation => 'Adaptacija';
	@override String get other => 'Povezano';
}

// Path: explore.detail
class _Translations$explore$detail$hr extends Translations$explore$detail$en {
	_Translations$explore$detail$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get originalTitle => 'Izvorni naslov';
	@override String get alsoKnownAs => 'Također poznat kao';
	@override String get studios => 'Studiji';
	@override String get country => 'Država';
	@override String get language => 'Jezik';
	@override String get released => 'Datum izlaska';
	@override String get physicalRelease => 'Na disku';
	@override String get ended => 'Završeno';
	@override String addedOn({required Object date}) => 'Dodano ${date}';
	@override String get yourRating => 'Vaša ocjena';
	@override String get budget => 'Proračun';
	@override String get revenue => 'Prihod od ulaznica';
	@override String get contentAdvisory => 'Smjernice za dob';
	@override String get tags => 'Oznake';
	@override String get revealSpoilerTags => 'Prikaži oznake spojlera';
	@override String get links => 'Poveznice';
	@override String get watchOn => 'Gledaj na';
	@override String get watchTrailer => 'Pogledaj najavu';
	@override String openOn({required Object site}) => 'Otvori na ${site}';
	@override String get crew => 'Filmska ekipa';
	@override String get ratings => 'Ocjene';
	@override String get schedule => 'Raspored';
	@override String recommendedByUsers({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hr'))(n,
		one: 'Preporučuje ${n} korisnik',
		few: 'Preporučuju ${n} korisnika',
		other: 'Preporučuje ${n} korisnika',
	);
	@override String recommendedBy({required Object who}) => 'Preporučuje ${who}';
	@override String favoritedBy({required Object who}) => '${who} je dodao među favorite';
	@override String unairedEpisodes({required Object n}) => 'Neemitiranih epizoda: ${n}';
	@override String recommendedByPercent({required Object percent}) => 'Preporučuju ${percent} % gledatelja';
	@override String get relatedTitles => 'Povezani naslovi';
	@override String get background => 'Pozadina';
}

// Path: liveTv.recordSettings
class _Translations$liveTv$recordSettings$hr extends Translations$liveTv$recordSettings$en {
	_Translations$liveTv$recordSettings$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get startEarly => 'Počni snimati ranije (u sekundama)';
	@override String get endLate => 'Završi snimati kasnije (u sekundama)';
	@override String get newOnly => 'Samo nove epizode';
	@override String get anyChannel => 'Snimi na bilo kojem kanalu';
	@override String get anyTime => 'Snimi u bilo koje vrijeme';
	@override String get skipInLibrary => 'Preskoči epizode koje su već u biblioteci';
	@override String get keepUpTo => 'Epizode koje treba zadržati';
	@override String get keepUpToHint => '0 čuva svaku epizodu';
}

// Path: music.discography
class _Translations$music$discography$hr extends Translations$music$discography$en {
	_Translations$music$discography$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get singlesAndEps => 'Singlovi i EP-ovi';
	@override String get live => 'Uživo';
	@override String get compilations => 'Kompilacije';
}

// Path: watchTogether.notices
class _Translations$watchTogether$notices$hr extends Translations$watchTogether$notices$en {
	_Translations$watchTogether$notices$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String pressedPlay({required Object name}) => '${name} je odabrao Reproduciraj';
	@override String get playbackStarted => 'Reprodukcija je započela';
	@override String paused({required Object name}) => 'Reprodukcija je pauzirana (${name})';
	@override String get playbackPaused => 'Reprodukcija je pauzirana';
	@override String jumpedTo({required Object position, required Object name}) => 'Premotano na ${position} (${name})';
	@override String roomJumpedTo({required Object position}) => 'Premotano na ${position}';
	@override String changedSpeed({required Object speed, required Object name}) => 'Brzina promijenjena na ${speed} (${name})';
	@override String speedChanged({required Object speed}) => 'Brzina postavljena na ${speed}';
	@override String startedMedia({required Object title, required Object name}) => 'Pokrenuta je reprodukcija naslova „${title}” (${name}).';
	@override String mediaStarted({required Object title}) => 'Sada se reproducira ${title}';
	@override String stoppedMedia({required Object name}) => 'Reprodukcija je zaustavljena (${name}).';
	@override String get mediaStopped => 'Video je prestao';
	@override String waitingFor({required Object name}) => 'Čeka se ${name}...';
	@override String get waitingForSomeone => 'Čeka se da se netko pridruži...';
	@override String get finished => 'Gotovo';
	@override String hostChangedTo({required Object name}) => '${name} je sada domaćin';
	@override String get youAreNowHost => 'Vi ste sada domaćin';
	@override String joined({required Object name}) => 'Sobi se pridružio novi sudionik: ${name}';
	@override String left({required Object name}) => '${name} više nije u sobi';
	@override String get controlRefused => 'Samo domaćin može upravljati reprodukcijom.';
	@override String get searchFailed => 'Nije moguće pretražiti neke poslužitelje za videozapis u sobi.';
	@override String get playBlocked => 'Odaberite Reproduciraj za početak.';
	@override String get shareFailed => 'Nije moguće podijeliti ovaj videozapis sa sobom.';
	@override String get notShared => 'Preuzeti videozapisi ne mogu se dijeliti u sobi.';
	@override String get openFailed => 'Nije moguće otvoriti video iz sobe';
}

// Path: watchTogether.ended
class _Translations$watchTogether$ended$hr extends Translations$watchTogether$ended$en {
	_Translations$watchTogether$ended$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get ended => 'Domaćin je završio sobu';
	@override String get kicked => 'Uklonjeni ste iz sobe';
	@override String get expired => 'Soba je istekla';
	@override String get replaced => 'Pridružili ste se ovoj sobi na drugom uređaju';
	@override String get lost => 'Izgubila se veza sa sobom';
}

// Path: watchTogether.errors
class _Translations$watchTogether$errors$hr extends Translations$watchTogether$errors$en {
	_Translations$watchTogether$errors$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get invalidCode => 'To nije šifra sobe. Kodovi imaju 6 slova i znamenki, bez 0, 1, I, L ili O.';
	@override String get roomNotFound => 'Nijedna soba nema taj kod. Možda je završilo.';
	@override String get roomFull => 'Ta soba je puna.';
	@override String get roomLocked => 'Domaćin je zaključao tu sobu.';
	@override String get relayFull => 'Poslužitelj za zajedničko gledanje trenutačno je zauzet. Pokušajte ponovno kasnije.';
	@override String get unreachable => 'Nije moguće povezati se s poslužiteljem za zajedničko gledanje. Provjerite vezu.';
	@override String get rateLimited => 'Previše pokušaja. Pričekajte trenutak i pokušajte ponovno.';
	@override String get clientBlocked => 'Ova verzija aplikacije Luroka ne može se povezati s poslužiteljem. Ažurirajte aplikaciju.';
	@override String get forbidden => 'To može samo domaćin.';
	@override String get notInRoom => 'Niste u sobi.';
	@override String get alreadyInRoom => 'Već ste u sobi.';
	@override String get resumeFailed => 'Nije moguće ponovno se pridružiti sobi.';
	@override String get unsupported => 'Relej to ne podržava.';
	@override String get generic => 'Nešto nije u redu. Pokušajte ponovno.';
}

// Path: downloads.backgroundWarning
class _Translations$downloads$backgroundWarning$hr extends Translations$downloads$backgroundWarning$en {
	_Translations$downloads$backgroundWarning$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get bannerBlocked => 'Preuzimanja će se zaustaviti kada napustite aplikaciju';
	@override String get bannerDegraded => 'Preuzimanja u pozadini mogu biti ograničena';
	@override String get bannerAction => 'pojedinosti';
	@override String get sheetTitle => 'Preuzimanja u pozadini su blokirana';
	@override String get sheetTitleDegraded => 'Preuzimanja u pozadini mogu biti ograničena';
	@override String get sheetIntro => 'Android ne dopušta pouzdano preuzimanje sadržaja u pozadini.';
	@override String get sheetIntroDegraded => 'Vaš uređaj ograničava mogućnost preuzimanja sadržaja u pozadini.';
	@override String get reasonBackgroundRestricted => 'Rad aplikacije Luroka u pozadini je ograničen. Za potrošnju baterije ili rad u pozadini odaberite „Neograničeno”.';
	@override String get reasonStandbyRestricted => 'Android je ograničio rad aplikacije Luroka u pozadini. Za potrošnju baterije odaberite „Neograničeno”.';
	@override String get reasonDownloadChannelBlocked => 'Obavijesti o preuzimanju su isključene, tako da napredak i kontrole mogu biti nedostupni.';
	@override String get reasonNotificationsDisabled => 'Obavijesti su isključene. U Androidu 13 i novijima potrebne su za duga preuzimanja u pozadini.';
	@override String get reasonDataSaver => 'Uključena je ušteda podataka, koja blokira pozadinska preuzimanja na mobilnim podacima. Preuzimanja bi i dalje trebala raditi na Wi-Fi.';
	@override String get reasonOemUnknown => 'Preuzimanja su se više puta zaustavila dok je aplikacija radila u pozadini. Provjerite postavke baterije i rada aplikacije Luroka u pozadini.';
	@override String get openSettings => 'Otvori postavke';
	@override String get stillNotWorking => 'Upute za vaš uređaj';
	@override String get stillNotWorkingDescription => 'Pogledajte upute za svoj uređaj ili, ako se problem nastavi, pošaljite zapisnik iz Postavke › Pregledaj zapisnike.';
	@override String get dialogTitle => 'Preuzimanja možda neće završiti';
	@override String get dialogDownloadAnyway => 'Svejedno preuzmi';
	@override String get dialogFixFirst => 'Prvo popravi ovo';
	@override String get statusTile => 'Pozadinska preuzimanja';
	@override String get statusOk => 'Dopušten rad u pozadini';
	@override String get statusBlocked => 'Blokirano postavkama sustava';
	@override String get statusDegraded => 'Ograničeno postavkama sustava';
	@override String get statusUnknown => 'Još nije provjereno';
	@override String get settingsUnavailable => 'Nije moguće otvoriti postavke sustava na ovom uređaju.';
	@override String get linkUnavailable => 'Nije moguće otvoriti dontkillmyapp.com na ovom uređaju';
}

// Path: downloads.groupings
class _Translations$downloads$groupings$hr extends Translations$downloads$groupings$en {
	_Translations$downloads$groupings$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get library => 'Biblioteka';
	@override String get collections => 'Zbirke';
}

// Path: companionRemote.session
class _Translations$companionRemote$session$hr extends Translations$companionRemote$session$en {
	_Translations$companionRemote$session$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get startingServer => 'Pokretanje poslužitelja za daljinsko upravljanje...';
	@override String get hostAddress => 'Adresa glavnog uređaja';
	@override String get connected => 'Povezan';
	@override String get serverRunning => 'Poslužitelj za daljinsko upravljanje je pokrenut';
	@override String get serverStopped => 'Poslužitelj za daljinsko upravljanje je zaustavljen';
	@override String get serverRunningDescription => 'Mobilni uređaji na vašoj mreži mogu se povezati s ovom aplikacijom.';
	@override String get serverStoppedDescription => 'Pokrenite poslužitelj kako biste omogućili povezivanje mobilnih uređaja.';
	@override String get usePhoneToControl => 'Upravljajte ovom aplikacijom s mobilnog uređaja.';
	@override String get startServer => 'Pokreni poslužitelj';
	@override String get stopServer => 'Zaustavi poslužitelj';
	@override String get minimize => 'Minimiziraj';
	@override String get manualAddressHint => 'Adresa za ručno povezivanje:';
}

// Path: companionRemote.pairing
class _Translations$companionRemote$pairing$hr extends Translations$companionRemote$pairing$en {
	_Translations$companionRemote$pairing$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get discoveryDescription => 'Luroka uređaji s istim Plex računom pojavljuju se ovdje';
	@override String get hostAddressHint => '192.168.1.100:48632';
	@override String get connecting => 'Povezivanje...';
	@override String get searchingForDevices => 'Traženje uređaja...';
	@override String get noDevicesFound => 'Nijedan uređaj nije pronađen na vašoj mreži';
	@override String get noDevicesHint => 'Otvorite Luroku na računalu i povežite se na istu Wi-Fi mrežu.';
	@override String get availableDevices => 'Dostupni uređaji';
	@override String get manualConnection => 'Ručno povezivanje';
	@override String get cryptoInitFailed => 'Nije moguće pokrenuti sigurnu vezu. Prvo se prijavite na Plex.';
	@override String get validationHostRequired => 'Unesite adresu glavnog uređaja.';
	@override String get validationHostFormat => 'Unesite adresu u obliku IP:port (npr. 192.168.1.100:48632).';
	@override String get connectionTimedOut => 'Isteklo je vrijeme povezivanja. Provjerite jesu li oba uređaja na istoj mreži.';
	@override String get sessionNotFound => 'Uređaj nije pronađen. Provjerite je li Luroka pokrenuta na glavnom uređaju.';
	@override String get authFailed => 'Autentifikacija nije uspjela. Oba uređaja trebaju isti Plex račun.';
	@override String failedToConnect({required Object error}) => 'Povezivanje nije uspjelo: ${error}';
}

// Path: companionRemote.remote
class _Translations$companionRemote$remote$hr extends Translations$companionRemote$remote$en {
	_Translations$companionRemote$remote$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get disconnectConfirm => 'Želite li prekinuti vezu s udaljenom sesijom?';
	@override String get reconnecting => 'Ponovno povezivanje...';
	@override String attemptOf({required Object current}) => 'Pokušaj ${current} od 5';
	@override String get retryNow => 'Pokušajte ponovo';
	@override String get tabRemote => 'Daljinski';
	@override String get tabPlay => 'Reproduciraj';
	@override String get tabMore => 'Više';
	@override String get menu => 'Izbornik';
	@override String get tabNavigation => 'Navigacija karticama';
	@override String get tabDiscover => 'Otkrijte';
	@override String get tabLibraries => 'Biblioteke';
	@override String get tabSearch => 'Traži';
	@override String get tabDownloads => 'Preuzimanja';
	@override String get tabSettings => 'Postavke';
	@override String get previous => 'Prethodno';
	@override String get playPause => 'Reprodukcija/Pauza';
	@override String get next => 'Dalje';
	@override String get seekBack => 'Premotaj unatrag';
	@override String get stop => 'Zaustavi';
	@override String get seekForward => 'Premotaj unaprijed';
	@override String get volume => 'Glasnoća';
	@override String get volumeDown => 'Smanji';
	@override String get volumeUp => 'Gore';
	@override String get fullscreen => 'Cijeli zaslon';
	@override String get subtitles => 'Titlovi';
	@override String get audio => 'Zvuk';
	@override String get searchHint => 'Pretraži na računalu...';
}

// Path: companionRemote.errors
class _Translations$companionRemote$errors$hr extends Translations$companionRemote$errors$en {
	_Translations$companionRemote$errors$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get noNetworkInterface => 'Nije pronađeno mrežno sučelje';
	@override String get authenticationFailed => 'Autentifikacija nije uspjela';
	@override String serverStartFailed({required Object error}) => 'Nije uspjelo pokretanje udaljenog poslužitelja: ${error}';
	@override String commandFailed({required Object error}) => 'Nije uspjelo slanje daljinske naredbe: ${error}';
	@override String get joinTimedOut => 'Istekla je sesija pridruživanja';
	@override String get failedToConnectAnyAddress => 'Povezivanje ni s jednom adresom nije uspjelo';
	@override String connectionLostAfterAttempts({required Object attempts}) => 'Veza je izgubljena nakon ${attempts} pokušaja';
	@override String get connectionLost => 'Veza izgubljena';
}

// Path: services.names
class _Translations$services$names$hr extends Translations$services$names$en {
	_Translations$services$names$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get mal => 'MyAnimeList';
	@override String get anilist => 'AniList';
	@override String get simkl => 'Simkl';
	@override String get seerr => 'Seerr';
	@override String get mdblist => 'MDBList';
}

// Path: services.simklReconnect
class _Translations$services$simklReconnect$hr extends Translations$services$simklReconnect$en {
	_Translations$services$simklReconnect$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ponovno spojite Simkl';
	@override String get subtitle => 'Simkl povlači metodu prijave koju koristi ova veza. Ponovno povezivanje otvara simkl.com za odobrenje Luroka — Luroka nikad ne vidi vašu lozinku. Vaša povijest gledanja ostaje na Simkl.';
}

// Path: services.deviceCode
class _Translations$services$deviceCode$hr extends Translations$services$deviceCode$en {
	_Translations$services$deviceCode$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String title({required Object service}) => 'Aktivirajte Luroka na ${service}';
	@override String get instructions => 'Skenirajte QR kod ili posjetite donju adresu i unesite ovaj kod:';
	@override String openToActivate({required Object service}) => 'Otvorite ${service} za aktivaciju';
	@override String get copyCode => 'Kopiraj aktivacijski kod';
	@override String get waitingForAuthorization => 'Čeka se autorizacija…';
	@override String get codeCopied => 'Kod kopiran';
}

// Path: services.oauthProxy
class _Translations$services$oauthProxy$hr extends Translations$services$oauthProxy$en {
	_Translations$services$oauthProxy$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String title({required Object service}) => 'Prijavite se na ${service}';
	@override String get body => 'Skenirajte ovaj QR kod ili otvorite URL na bilo kojem uređaju.';
	@override String openToSignIn({required Object service}) => 'Otvorite ${service} za prijavu';
}

// Path: services.pendingAuth
class _Translations$services$pendingAuth$hr extends Translations$services$pendingAuth$en {
	_Translations$services$pendingAuth$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get copyUrl => 'Kopiraj URL za prijavu';
	@override String get urlCopied => 'URL kopiran';
}

// Path: services.libraryFilter
class _Translations$services$libraryFilter$hr extends Translations$services$libraryFilter$en {
	_Translations$services$libraryFilter$hr._(TranslationsHr root) : this._root = root, super.internal(root);

	final TranslationsHr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Filtar biblioteka';
	@override String get subtitleAllSyncing => 'Sinkronizacija svih biblioteka';
	@override String get subtitleNoneSyncing => 'Ništa se ne sinkronizira';
	@override String subtitleBlocked({required Object count}) => '${count} blokiran';
	@override String subtitleAllowed({required Object count}) => '${count} dopušteno';
	@override String get mode => 'Način filtriranja';
	@override String get modeBlacklist => 'Crna lista';
	@override String get modeWhitelist => 'Popis dopuštenih';
	@override String get modeHintBlacklist => 'Sinkronizirajte sve biblioteke osim dolje označenih.';
	@override String get modeHintWhitelist => 'Sinkronizirajte samo dolje označene biblioteke.';
	@override String get libraries => 'Biblioteke';
	@override String get noLibraries => 'Nema dostupnih biblioteka';
}

/// The flat map containing all translations for locale <hr>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsHr {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'mobileLibrary.pickerSubtitle' => 'Odaberite zbirku za istraživanje',
			'mobileLibrary.searchLibraries' => 'Pretraži biblioteke',
			'mobileLibrary.noLibraries' => 'Nema odgovarajućih biblioteka',
			'mobileLibrary.ascending' => 'Uzlazno',
			'mobileLibrary.descending' => 'Silazno',
			'mobileLibrary.sort' => 'Poredaj',
			'mobileLibrary.unwatchedCount' => ({required Object count}) => '${count} neodgledanih epizoda',
			'mobileLibrary.latestEpisode' => 'Najnovija epizoda',
			'profileStartup.autoLogin' => 'Otvorite posljednji korišteni profil',
			'profileStartup.autoLoginHint' => 'Automatski otvori posljednji profil kada ne zahtijeva PIN.',
			'profileStartup.allowKidsExit' => 'Dopusti izlazak iz dječjeg profila bez roditeljskog PIN-a',
			'profileStartup.allowKidsExitHint' => 'Djetetu omogućuje prelazak na drugi profil bez roditeljskog PIN-a. PIN-ovi profila i dalje vrijede.',
			'profileStartup.chooseKidsConnection' => 'Odaberite drugi račun ili poslužitelj',
			'profileStartup.chooseKidsConnectionHint' => 'Nakon spremanja povežite zaseban račun ili odaberite vezu s drugog profila.',
			'subtitleUpload.chooseFile' => 'Prenesi datoteku s titlovima',
			'subtitleUpload.hint' => 'Odaberite jezik, a zatim prenesite datoteku SRT, ASS, SSA ili VTT na ovaj poslužitelj.',
			'subtitleUpload.success' => 'Titl je prenesen na poslužitelj. Pojavit će se nakon osvježavanja stavke na poslužitelju.',
			'subtitleUpload.failed' => 'Nije moguće prenijeti titl. Provjerite datoteku i dopuštenja poslužitelja.',
			'personSpotlight.inYourLibraries' => 'u vašim bibliotekama',
			'personSpotlight.libraryTitles' => ({required Object n}) => 'U vašim bibliotekama · ${n} naslova',
			'personSpotlight.readBiography' => 'Pročitajte biografiju',
			'personSpotlight.newestFirst' => 'Prvo najnoviji',
			'personSpotlight.oldestFirst' => 'Prvo najstariji',
			'personSpotlight.titleAscending' => 'Naslov A–Z',
			'personSpotlight.sortTitles' => 'Poredaj filmografiju',
			'personSpotlight.unwatchedEpisodes' => ({required Object n}) => '${n} neodgledanih epizoda',
			'personSpotlight.copies' => ({required Object n}) => '${n} kopija u biblioteci',
			'personSpotlight.versions' => ({required Object n}) => '${n} verzija datoteke',
			'personSpotlight.retryTitles' => 'Nije moguće učitati sve naslove. Pokušajte ponovno.',
			'detailExtras.onlineVideos' => 'Najave i dodaci',
			'detailExtras.reviews' => 'Recenzije',
			'detailExtras.readReview' => 'Pročitaj cijelu recenziju',
			'detailExtras.directedBy' => ({required Object name}) => 'Još filmova u režiji ${name}',
			'detailExtras.previewUnavailable' => 'Nije moguće reproducirati najavu. Možete je otvoriti u izvornoj aplikaciji.',
			'detailExtras.openExternally' => 'Otvori izvorni video',
			'mobileUi.readMore' => 'Pročitaj više',
			'mobileUi.readLess' => 'Prikaži manje',
			'mobileUi.playbackTools' => 'Opcije reprodukcije',
			'mobileUi.streamingQuality' => 'Kvaliteta slike',
			'mobileUi.fileVersions' => 'Verzije datoteka',
			'mobileUi.qualityAndVersions' => 'Kvaliteta slike i verzije datoteka',
			'mobileUi.hidePlaybackTools' => 'Sakrij alate za reprodukciju',
			'mobileUi.remaining' => ({required Object time}) => 'Preostalo je ${time}',
			'mobileUi.endsAt' => ({required Object time}) => 'Završava u ${time}',
			'mobileUi.collection' => 'Vaša zbirka',
			'mobileUi.nowPlaying' => 'TRENUTNO SE REPRODUCIRA',
			'mobileUi.popularLibrary' => 'Popularno u vašoj biblioteci',
			'mobileUi.weeklyLibrary' => 'Popularno u vašoj biblioteci ovog tjedna',
			'family.title' => 'Profili i obitelj',
			'family.yourPeople' => 'Članovi kućanstva',
			'family.manageHint' => 'Upravljajte osobama, sigurnošću djece i aktivnostima gledanja na ovom uređaju.',
			'family.people' => 'Ljudi',
			'family.peopleCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hr'))(n, one: '${n} osoba', few: '${n} osobe', other: '${n} osoba', ), 
			'family.kidsCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hr'))(n, one: '${n} dijete', few: '${n} djece', other: '${n} djece', ), 
			'family.you' => 'Vi',
			'family.adult' => 'Odrasli',
			'family.child' => 'Dijete',
			'family.adultTeen' => 'Odrasla osoba ili tinejdžer',
			'family.adultHint' => 'Vlastiti profil, neobvezni PIN za profil i vlastite veze s poslužiteljima.',
			'family.childHint' => 'Dobna ograničenja, sigurne biblioteke i izgled prilagođen djeci. Roditeljski PIN štiti ove postavke.',
			'family.upToAge' => ({required Object age}) => 'Do ${age} godina',
			'family.allAges' => 'Za sve uzraste',
			'family.switchProfile' => 'Promijeni profil',
			'family.switchHint' => 'Odaberite tko gleda. Upravljanje članom kućanstva ne mijenja aktivni profil.',
			'family.addPerson' => 'Dodaj osobu',
			'family.addChild' => 'Dodaj dijete',
			'family.addHint' => 'Izradite profil za odrasle, tinejdžere ili djecu na ovom uređaju.',
			'family.emptyPeople' => 'Napravite mjesta za sve koji gledaju s vama.',
			'family.emptyKids' => 'Još nema dječjih profila. Dodajte profil kako biste postavili dobna ograničenja i odabrali sigurne biblioteke.',
			'family.safety' => 'Djeca i sigurnost',
			'family.safetyHint' => 'Roditeljski PIN, dječji profili i dobna ograničenja.',
			'family.protection' => 'zaštita',
			'family.kidsProfiles' => 'Dječji profili',
			'family.backupHistory' => 'Sigurnosna kopija i povijest',
			'family.parentPinOn' => 'Roditeljski PIN je uključen',
			'family.profilePin' => 'PIN profila',
			'family.confirmParentPin' => 'Potvrdite roditeljski PIN',
			'family.parentPinOff' => 'Roditeljski PIN nije postavljen',
			'family.missingPin' => 'Dodajte roditeljski PIN da biste zaštitili ove postavke.',
			'family.hideScope' => 'Sakrij dječju aktivnost u odjeljku Nastavi gledati ovog profila u aplikaciji Luroka. To ne mijenja zajedničku povijest gledanja na poslužitelju.',
			'family.localScope' => 'Dječji profili i ograničenja pohranjuju se na ovom uređaju. Profili koji koriste isti račun na poslužitelju i dalje dijele povijest gledanja tog računa.',
			'family.clearHistoryConfirm' => 'Želite li dopustiti da se sadržaji koje su djeca gledala ponovno pojave u odjeljku Nastavi gledati? Dječji profili, ograničenja, statistika vremena gledanja i povijest gledanja na poslužitelju ostat će sačuvani.',
			'family.editRestrictions' => 'Uredite ograničenja za djecu',
			'family.activity' => 'Aktivnost gledanja',
			'family.namedActivity' => ({required Object name}) => 'Aktivnost gledanja ${name}',
			'family.thisProfile' => 'Ovaj profil',
			'family.activityScope' => 'Vrijeme reprodukcije koje je zabilježio Luroka na ovom uređaju za aktivni profil. Ovo su statistike, a ne ograničenja gledanja ili potpuna povijest poslužitelja.',
			'family.activityUnavailable' => 'Aktivnost gledanja još nije dostupna za ovaj profil.',
			'family.finished' => 'Gotovo',
			'posterDetails.showThemeMusic' => 'Pusti tematsku glazbu',
			'posterDetails.showThemeMusicDescription' => 'Reproduciraj glazbu iz uvodne špice filma ili serije dok je otvorena stranica s pojedinostima, ako je dostupna na poslužitelju.',
			'posterDetails.catalogEpisodeInfo' => 'Prikaži broj epizoda i trajanje na karticama kataloga',
			'posterDetails.catalogEpisodeInfoDescription' => 'Prikaži broj epizoda i prosječno trajanje na posterima u odjeljku Otkrijte.',
			'posterDetails.title' => 'Pojedinosti postera',
			'posterDetails.description' => 'Prikaži naslov, godinu i IMDb ocjenu ispod postera u odjeljcima Studiji, Pretraživanje, Otkrijte i Biblioteke. Ako IMDb ocjena nije dostupna, neće se prikazati. Isključi ovu opciju za postere koji prikazuju samo sliku.',
			'libraryPolish.posterDetails' => 'Detalji plakata',
			'libraryPolish.showPosterDetails' => 'Prikaži detalje plakata · ime, godinu i IMDb',
			'libraryPolish.hidePosterDetails' => 'Sakrij detalje plakata',
			'libraryPolish.overview' => 'Pregled',
			'libraryPolish.refreshing' => 'Osvježavanje biblioteke...',
			'libraryPolish.serverCollections' => 'Sve zbirke na ovom poslužitelju',
			'libraryPolish.serverPlaylists' => 'Svi video popisi za reprodukciju na ovom poslužitelju',
			'libraryPolish.libraryCollections' => 'Zbirke u ovoj biblioteci',
			'libraryPolish.searchCollections' => 'Pretraži zbirke',
			'libraryPolish.searchPlaylists' => 'Pretraži popise za reprodukciju',
			'libraryPolish.searchHint' => 'Traži po imenu',
			'libraryPolish.titleAscending' => 'Naslov A–Z',
			'libraryPolish.titleDescending' => 'Naslov Z–A',
			'libraryPolish.clearFilters' => 'Očisti filtre',
			'libraryPolish.playlistEmptyTitle' => 'Vaše filmske večeri, po vašem redoslijedu',
			'libraryPolish.playlistEmptyHint' => 'U izborniku Više za neki naslov odaberite Dodaj na popis za reprodukciju da biste izradili svoj prvi popis.',
			'libraryPolish.noMatches' => 'Nema odgovarajućih imena',
			'libraryPolish.indexing' => 'Pretraživanje cijelog kataloga…',
			'showSchedule.today' => 'Danas',
			'showSchedule.tomorrow' => 'Sutra',
			'showSchedule.latestUpcoming' => 'Najnovije i nadolazeće',
			'showSchedule.latestEpisode' => 'Najnovija epizoda',
			'showSchedule.upcoming' => 'Nadolazeće',
			'showSchedule.inLibrary' => 'U vašoj biblioteci',
			'showSchedule.notInLibrary' => 'Nije u vašoj biblioteci',
			'showSchedule.notYetAired' => 'Još nije emitirano',
			'showSchedule.episode' => ({required Object number}) => 'Epizoda ${number}',
			'showSchedule.caughtUp' => 'Pogledali ste sve',
			'showSchedule.finished' => 'Završili ste ovu seriju',
			'showSchedule.nextAirs' => ({required Object date}) => 'Sljedeća epizoda emitira se ${date}',
			'showSchedule.watchBeginning' => 'Gledajte od početka',
			'showSchedule.replay' => 'Ponovno reproduciraj',
			'showSchedule.playNext' => 'Reproduciraj sljedeću epizodu',
			'awardsCatalog.awards' => 'Nagrade',
			'awardsCatalog.customize' => 'Prilagodite',
			'awardsCatalog.chooseShelves' => 'Prilagodite Otkrijte',
			'awardsCatalog.shelvesDescription' => 'Odaberite retke koje želite u odjeljku Otkrijte. U redcima s nagradama prikazuju se dobitnici koji se nalaze u vašim bibliotekama. Odabir se sprema za ovaj profil.',
			'awardsCatalog.restoreShelves' => 'Vrati zadane postavke',
			'awardsCatalog.charts' => 'IMDb ljestvice',
			'awardsCatalog.generalShelves' => 'Popularno i u trendu',
			'awardsCatalog.saveShelvesFailed' => 'Nije moguće spremiti odabrane odjeljke u Otkrijte. Pokušajte ponovno.',
			'awardsCatalog.comedyActress' => 'Glavna glumica · Komedija',
			'awardsCatalog.leadDramaActor' => 'Glavni glumac · Drama',
			'awardsCatalog.leadDramaActress' => 'Glavna glumica · Drama',
			'awardsCatalog.comedySupportingActor' => 'Sporedni glumac · Komedija',
			'awardsCatalog.comedySupportingActress' => 'Sporedna glumica · Komedija',
			'awardsCatalog.leadingPerformance' => 'Srebrni medvjed · Najbolja glavna uloga',
			'awardsCatalog.globesComedySeries' => 'Najbolja televizijska serija · Mjuzikl ili komedija',
			'awardsCatalog.limitedSupportingActor' => 'Sporedni glumac · Miniserija ili film',
			'awardsCatalog.limitedSupportingActress' => 'Sporedna glumica · Miniserija ili film',
			'awardsCatalog.berlinDocumentary' => 'Nagrada Berlinalea za dokumentarni film',
			'awardsCatalog.title' => 'Nagrade i festivali',
			'awardsCatalog.chooseCategory' => 'Odaberite kategoriju nagrade',
			'awardsCatalog.winners' => 'Pobjednici',
			'awardsCatalog.nominees' => 'Nominirani',
			'awardsCatalog.releaseDecade' => 'Desetljeće izlaska',
			'awardsCatalog.allYears' => 'Sve godine',
			'awardsCatalog.loading' => 'Učitavanje naslova nagrada…',
			'awardsCatalog.matching' => 'Traženje ovih naslova u vašim bibliotekama...',
			'awardsCatalog.unavailable' => 'Podaci o nagradi trenutno nisu dostupni. Pokušajte ponovno.',
			'awardsCatalog.empty' => 'U vašim vidljivim bibliotekama nema naslova iz ove kategorije.',
			'awardsCatalog.coverage' => 'Popis se temelji na podacima Wikidata i može biti nepotpun. Kategorije glumaca i redatelja prikazuju filmove ili serije za koje su nagrađeni. Godine se odnose na izlazak naslova, a ne na dodjelu nagrada.',
			'awardsCatalog.picture' => 'Najbolji film',
			'awardsCatalog.film' => 'Najbolji film',
			'awardsCatalog.international' => 'Najbolji međunarodni film',
			'awardsCatalog.internationalFilm' => 'Najbolji međunarodni film',
			'awardsCatalog.nonEnglishFilm' => 'Najbolji film koji nije na engleskom jeziku',
			'awardsCatalog.animated' => 'Najbolji dugometražni animirani film',
			'awardsCatalog.animatedFilm' => 'Najbolji animirani film',
			'awardsCatalog.documentary' => 'Najbolji dugometražni dokumentarni film',
			'awardsCatalog.director' => 'Najbolji redatelj',
			'awardsCatalog.actor' => 'Najbolji glumac',
			'awardsCatalog.actress' => 'Najbolja glumica',
			'awardsCatalog.supportingActor' => 'Najbolji sporedni glumac',
			'awardsCatalog.supportingActress' => 'Najbolja sporedna glumica',
			'awardsCatalog.originalScreenplay' => 'Najbolji izvorni scenarij',
			'awardsCatalog.adaptedScreenplay' => 'Najbolji adaptirani scenarij',
			'awardsCatalog.screenplay' => 'Najbolji scenarij',
			'awardsCatalog.cinematography' => 'Najbolja fotografija',
			'awardsCatalog.editing' => 'Najbolja montaža',
			'awardsCatalog.score' => 'Najbolja izvorna glazba',
			'awardsCatalog.song' => 'Najbolja izvorna pjesma',
			'awardsCatalog.sound' => 'Najbolji zvuk',
			'awardsCatalog.effects' => 'Najbolji vizualni efekti',
			'awardsCatalog.productionDesign' => 'Najbolji produkcijski dizajn',
			'awardsCatalog.costume' => 'Najbolja kostimografija',
			'awardsCatalog.makeup' => 'Najbolja šminka i frizura',
			'awardsCatalog.dramaSeries' => 'Izvanredna dramska serija',
			'awardsCatalog.comedySeries' => 'Izvanredna humoristična serija',
			'awardsCatalog.limitedSeries' => 'Izvanredna miniserija',
			'awardsCatalog.animatedProgram' => 'Izvanredan animirani program',
			'awardsCatalog.comedyActor' => 'Glavni glumac · Komedija',
			'awardsCatalog.limitedActor' => 'Glavni glumac · Miniserija ili film',
			'awardsCatalog.limitedActress' => 'Glavna glumica · Miniserija ili film',
			'awardsCatalog.limitedDirecting' => 'Režija · Miniserija ili film',
			'awardsCatalog.britishFilm' => 'Najbolji britanski film',
			'awardsCatalog.goldenBear' => 'Zlatni medvjed',
			'awardsCatalog.grandJury' => 'Velika nagrada žirija',
			'awardsCatalog.jury' => 'Nagrada žirija',
			'awardsCatalog.teddy' => 'Nagrada Teddy',
			'awardsCatalog.goldenLion' => 'Zlatni lav',
			'awardsCatalog.volpiActor' => 'Volpijev kup · Najbolji glumac',
			'awardsCatalog.volpiActress' => 'Volpijev kup · Najbolja glumica',
			'awardsCatalog.queerLion' => 'Queer lav',
			'awardsCatalog.dramaFilm' => 'Najbolji film · Drama',
			'awardsCatalog.comedyFilm' => 'Najbolji film · Mjuzikl ili komedija',
			'awardsCatalog.dramaActor' => 'Najbolji glumac · Drama',
			'awardsCatalog.dramaActress' => 'Najbolja glumica · Drama',
			'awardsCatalog.usDramatic' => 'Velika nagrada žirija · američka drama',
			'awardsCatalog.documentaryJury' => 'Velika nagrada žirija za dokumentarni film',
			'awardsCatalog.worldCinema' => 'Velika nagrada žirija · svjetska kinematografija',
			'awardsCatalog.dramaticAudience' => 'Nagrada publike · američka drama',
			'awardsCatalog.usDirecting' => 'Američka nagrada za režiju',
			'awardsCatalog.peopleChoice' => 'Nagrada publike',
			'awardsCatalog.canadianFilm' => 'Najbolji kanadski film',
			'awardsCatalog.firstFeature' => 'Najbolji debitantski film',
			'awardsCatalog.cassavetes' => 'Nagrada John Cassavetes',
			'awardsCatalog.scienceFiction' => 'Najbolji znanstvenofantastični film',
			'awardsCatalog.fantasy' => 'Najbolji fantastični film',
			'awardsCatalog.horror' => 'Najbolji horor',
			'awardsCatalog.action' => 'Najbolji akcijski ili avanturistički film',
			'awardsCatalog.thriller' => 'Najbolji triler',
			'searchDiscovery.suggestions' => 'Nešto za gledati',
			'searchDiscovery.collections' => 'Nagrade i kolekcije',
			'searchDiscovery.collectionsHint' => 'Nagrađeni naslovi i odabrane ljestvice iz vaših biblioteka',
			'searchDiscovery.all' => 'Sve preporuke',
			'searchDiscovery.awards' => 'Nagrade i ljestvice',
			'lurokaPlayerDesign.seeking' => 'Pregled pri premotavanju',
			'lurokaPlayerDesign.keepWatching' => 'Nastavi gledati',
			'lurokaPlayerDesign.upNext' => 'Sljedeći',
			'lurokaPlayerDesign.playingIn' => ({required Object seconds}) => 'Reprodukcija počinje za ${seconds} s',
			'lurokaWorkspace.everyday' => 'Osnovno',
			'lurokaWorkspace.homeDiscovery' => 'Početna i otkrivanje',
			'lurokaWorkspace.librariesAccounts' => 'Biblioteke i računi',
			'lurokaWorkspace.profilesFamily' => 'Profili i obitelj',
			'lurokaWorkspace.thisDevice' => 'Ovaj uređaj',
			'lurokaWorkspace.thisProfile' => 'Ovaj profil',
			'lurokaWorkspace.searchSettings' => 'Pretraži postavke',
			'lurokaWorkspace.savedAutomatically' => 'Promjene se automatski spremaju. Načini Osnovno i Napredno određuju koje se kontrole prikazuju.',
			'lurokaWorkspace.audioSubtitles' => 'Zvuk i titlovi',
			'lurokaWorkspace.audioDescription' => 'Zvučni izlaz, glasnoća i izgled titlova. Željene jezike možete postaviti za svaki račun poslužitelja u postavkama računa.',
			'lurokaWorkspace.pictureSound' => 'Slika i zvuk',
			'lurokaWorkspace.pictureDescription' => 'Usklađivanje brzine kadrova, razlučivost, podešavanje HDR i Dolby Vision za ovaj uređaj.',
			'lurokaWorkspace.engineDescription' => 'Mehanizam reprodukcije, dekodiranje, prilagođena konfiguracija i napredna pravila reprodukcije.',
			'lurokaWorkspace.networkStreaming' => 'Mreža i strujanje',
			'lurokaWorkspace.networkDescription' => 'Kvaliteta slike, preferirani kodeci za izravnu reprodukciju i ograničenja propusnosti.',
			'lurokaWorkspace.homeOptions' => 'Opcije početne stranice',
			'lurokaWorkspace.refreshHome' => 'Osvježi početnu stranicu i odjeljak Popularno sada',
			'lurokaWorkspace.customizeHome' => 'Prilagodi početnu stranicu',
			'lurokaWorkspace.spotlight' => 'Istaknuti sadržaji na početnoj stranici',
			'lurokaWorkspace.rotateSpotlight' => 'Automatski izmjenjuj istaknute naslove',
			'lurokaWorkspace.rotateDescription' => 'Istaknuti naslovi izmjenjuju se dok je početna stranica neaktivna. Svaka interakcija zaustavlja izmjenu. Pregledavanje redaka, otvaranje stranice ili izlazak iz aplikacije zaustavlja je u potpunosti.',
			'lurokaWorkspace.rotationInterval' => 'Razmak između istaknutih naslova',
			'mobileFixes.connectionRecoveryHint' => 'Poslužitelj nije dostupan? Upravljajte računima ili povežite drugi poslužitelj.',
			'downloadsRedesign.shelfSize' => 'Stavki po retku',
			'downloadsRedesign.shelfSizeHint' => 'Prikaži 16, 32 ili 48 stavki u retcima Nastavi gledati i Preporuke. Poslužitelj može vratiti manje dostupnih naslova.',
			'downloadsRedesign.subtitle' => 'Vaši favoriti, uvijek pri ruci.',
			'downloadsRedesign.transfers' => 'Prijenosi',
			'downloadsRedesign.ready' => 'Spremno izvan mreže',
			'downloadsRedesign.active' => 'Preuzimanje',
			'downloadsRedesign.waiting' => 'Čekanje',
			'downloadsRedesign.downloaded' => 'Preuzeto',
			'downloadsRedesign.speed' => 'Brzina preuzimanja',
			'downloadsRedesign.notificationProgress' => '{progress} · {networkSpeed} · preostalo {timeRemaining}',
			'kidsShelf.movieShelf' => 'Vrijeme za film',
			'kidsShelf.showShelf' => 'Pronađi sljedeću seriju',
			'kidsShelf.aurora' => 'Aurora — tamnozelena i limeta',
			'kidsShelf.marquee' => 'Marquee — baršun i zlato',
			'kidsShelf.electric' => 'Električna — indigo i ledenoplava',
			'kidsShelf.midnight' => 'Ponoć — čelik i jantar',
			'kidsShelf.yourShelf' => 'Vaša polica za filmove',
			'kidsShelf.all' => 'Sve',
			'kidsShelf.pickSomething' => 'Što želite gledati?',
			'kidsHome.everything' => 'Za tebe',
			'kidsHome.keepWatching' => 'Nastavi gledati',
			'kidsHome.emptyFilter' => 'Ovdje još nema ničega. Pogledaj odjeljak Za tebe ili zamoli odraslu osobu da doda nešto što voliš.',
			'tvSettingsV2.moreThemes' => 'Više tema i prilagođenih boja',
			'tvSettingsV2.moreThemesHint' => 'Pregledajte sve dostupne gotove teme i mogućnosti prilagodbe.',
			'tvSettingsV2.previewLive' => 'Pregled uživo',
			'tvSettingsV2.previewIllustration' => 'Primjer pregleda',
			'tvSettingsV2.previewShelfCount' => ({required Object count}) => 'Do ${count} artikala po polici',
			'tvSettingsV2.simple' => 'Jednostavno',
			'tvSettingsV2.homeNavigation' => 'Početna i navigacija',
			'tvSettingsV2.libraryCards' => 'Biblioteka i kartice',
			'tvSettingsV2.accountsLibraries' => 'Računi i biblioteke',
			'tvSettingsV2.profilesFamily' => 'Profili i obitelj',
			'tvSettingsV2.aboutSupport' => 'O aplikaciji i podrška',
			'tvSettingsV2.playback' => 'Reprodukcija',
			'tvSettingsV2.homeHint' => 'Odaberite što će se prikazivati na početnoj stranici i u navigaciji.',
			'tvSettingsV2.libraryHint' => 'Prilagodite veličinu postera, oznake i pokazatelje pogledanog sadržaja.',
			'tvSettingsV2.advancedPlayback' => 'Reproduktor i strujanje',
			'tvSettingsV2.advancedPlaybackHint' => 'Reproduktor, videoizlaz, strujanje i napredne mogućnosti reprodukcije.',
			'tvSettingsV2.advancedTools' => 'Dijagnostika i sigurnosne kopije',
			'tvSettingsV2.advancedToolsHint' => 'Dnevnici, rješavanje problema, sigurnosno kopiranje i resetiranje postavki.',
			'tvSettingsV2.themePreview' => 'Pregled teme',
			'tvSettingsV2.libraryPreview' => 'Pregled biblioteke',
			'tvSettingsV2.homePreview' => 'Pregled početne stranice',
			'tvSettingsV2.subtitlePreview' => 'Pregled titlova',
			'tvSettingsV2.subtitleSample' => 'Vaši će titlovi izgledati ovako.',
			'tvSettingsV2.previewPlaceholder' => 'Ovdje će se prikazati vaše slike',
			'tvSettingsV2.posterSize' => 'Veličina postera',
			'tvSettingsV2.serverRecommendations' => 'Preporuke poslužitelja na početnoj stranici',
			'tvSettingsV2.tvLayout' => 'Koristi TV raspored',
			'tvSettingsV2.hardwareDecode' => 'Koristi hardversko dekodiranje videa',
			'tvSettingsV2.serverNames' => 'Prikaži nazive poslužitelja u redcima početne stranice',
			'tvSettingsV2.settingsSaved' => 'Promjene se automatski spremaju.',
			'tvSettingsV2.morePlayback' => 'Napredna reprodukcija',
			'tvSettingsV2.screenDisplay' => 'Slika i zvuk',
			'tvSettingsV2.engine' => 'Reproduktor',
			'tvSettingsV2.network' => 'Strujanje i mreža',
			'tvSettingsV2.performance' => 'Performanse',
			'tvSettingsV2.simpleAudio' => 'Jezici i izgled titlova',
			'settingsRedesign.themeEffects' => 'Tema i efekti',
			'settingsRedesign.libraryLayout' => 'Raspored biblioteka',
			'settingsRedesign.appearanceHint' => 'Prilagodite izgled, raspored i ponašanje Luroke.',
			'settingsRedesign.livePreview' => 'Pregled uživo',
			'settingsRedesign.previewHint' => 'Pogledajte kako će vaša biblioteka izgledati s trenutačnim postavkama.',
			'settingsRedesign.showLiveTv' => 'Prikaži TV uživo',
			'settingsRedesign.showLiveTvHint' => 'Prikaži TV uživo u navigaciji ako ga povezani poslužitelj podržava. Time se ne mijenjaju postavke poslužitelja.',
			'settingsRedesign.aboutTagline' => 'Vaši mediji. Vaš prostor.',
			'settingsRedesign.aboutDescription' => 'Luroka objedinjuje vaše biblioteke s Plexa, Jellyfina i Embyja u kinematografski reproduktor za telefone, televizore i računala.',
			'settingsRedesign.aboutFeatures' => 'Pregledavajte biblioteke, nastavite gledati filmove i serije, prilagodite profile, preuzimajte sadržaj i gledajte zajedno. TV uživo dostupan je uz kompatibilan poslužitelj.',
			'settingsRedesign.services' => 'Povežite svoj svijet',
			'settingsRedesign.updateSource' => 'Izvor ažuriranja',
			'settingsRedesign.updateSourceHint' => 'HTTPS adresa izvora ažuriranja za Luroku. Distributer je može unaprijed postaviti u aplikaciji.',
			'settingsRedesign.updateNotConfigured' => 'Automatska ažuriranja nisu konfigurirana za ovu verziju.',
			'settingsRedesign.downloadInstall' => 'Preuzmi i instaliraj',
			'settingsRedesign.installUpdate' => 'Instaliraj ažuriranje',
			'settingsRedesign.downloading' => 'Preuzimanje ažuriranja…',
			'settingsRedesign.downloadFailed' => 'Nije bilo moguće preuzeti ili provjeriti ažuriranje. Molimo pokušajte ponovno.',
			'settingsRedesign.installPermission' => 'Dopustite aplikaciji Luroka instaliranje ažuriranja u postavkama Androida, zatim se vratite i odaberite Instaliraj ažuriranje.',
			'settingsRedesign.updateReady' => 'Preuzimanje je provjereno. Spremno za instalaciju.',
			'settingsRedesign.releaseNotes' => 'Napomene o izdanju',
			'settingsRedesign.invalidFeed' => 'Unesite valjanu HTTPS adresu feeda ažuriranja.',
			'onboarding.connectStep' => '01 · Poveži se',
			'onboarding.connectTitle' => 'Dobro došli u Luroku',
			'onboarding.connectHint' => 'Prijavite se kako biste povezali svoje biblioteke.',
			'onboarding.serverAddressHint' => 'Unesite adresu poslužitelja ili odaberite poslužitelj pronađen na vašoj mreži.',
			'onboarding.serverSignInHint' => 'Unesite korisničko ime i lozinku za poslužitelj da biste povezali biblioteke.',
			'onboarding.serverAddressTitle' => 'Adresa poslužitelja',
			'onboarding.serverAccountTitle' => 'Račun na poslužitelju',
			'onboarding.plexHomeTitle' => 'Odaberite korisnika Plex Homea',
			'onboarding.plexHomeHint' => 'Odaberite Plex korisnika čije biblioteke želite koristiti. Zatim ćete postaviti svoj profil u aplikaciji Luroka.',
			'onboarding.chooseService' => 'Odaberite svoju uslugu',
			'onboarding.profileStep' => '02 · Vaš profil',
			'onboarding.profileTitle' => 'Dobro došli.',
			'onboarding.profileHint' => 'Odaberite ime i avatar za svoj Luroka profil. Vaš povezani račun ostaje isti.',
			'onboarding.readyStep' => '03 · Spremno za gledanje',
			'onboarding.readyTitle' => 'Još samo malo.',
			'onboarding.readyHint' => 'Objedinite svoje usluge ili napravite mjesto za nekog drugog. To možete uvijek učiniti kasnije.',
			'onboarding.addService' => 'Poveži drugu uslugu',
			'onboarding.editProfile' => 'Uredite ime i avatar',
			'onboarding.connected' => 'Povezano i spremno',
			'onboarding.backToProfile' => 'Natrag na vaš profil',
			'onboarding.showOtherPlexHome' => 'Prikaži ostale članove Plex Homea',
			'onboarding.showOtherPlexHomeHint' => 'Isključeno prema zadanim postavkama. Vaši profili u aplikaciji Luroka i prethodno korišteni članovi Plex Homea ostaju vidljivi. Uključite za odabir drugog korisnika.',
			'household.title' => 'Vaše kućanstvo u aplikaciji Luroka',
			'household.welcome' => 'Prilagodite Luroku sebi',
			'household.welcomeHint' => 'Vaš prvi račun je povezan. Prilagodite profil ili dodajte još nekoga prije nego što počnete gledati.',
			'household.profiles' => 'Profili i kućanstvo',
			'household.manageHint' => 'Dodajte članove, promijenite slike i upravljajte vezama za svaki profil.',
			'household.addProfile' => 'Dodaj profil u Luroku',
			'household.addHint' => 'Svaka osoba može povezati vlastiti Plex, Emby ili Jellyfin račun. Svaki profil prikazuje samo veze dodane na taj profil.',
			'household.sharedHint' => 'Korištenjem veze drugog profila dijelit ćete status pogledanog sadržaja i napredak reprodukcije tog računa na poslužitelju. Za zasebnu povijest gledanja upotrijebite drugi račun.',
			'household.personalise' => 'Prilagodi profil',
			'household.changePicture' => 'Promijeni profilnu sliku',
			'household.pictureHint' => 'Odaberite avatar za Luroku ili fotografiju. Promjena se odnosi samo na ovaj uređaj i ne utječe na vaš račun na poslužitelju.',
			'household.serverPicture' => 'Koristi sliku ili inicijale s poslužitelja',
			'household.choosePhoto' => 'Odaberite fotografiju',
			'household.photoHint' => 'JPEG, PNG ili druga podržana slika veličine do 10 MB. Fotografije se smanjuju i pohranjuju na ovom uređaju.',
			'household.pictureSaved' => 'Profilna slika ažurirana',
			'household.pictureFailed' => 'Nije moguće ažurirati profilnu sliku. Isprobajte podržanu sliku do 10 MB.',
			'household.saveFailed' => 'Nije moguće spremiti postavke profila. Molimo pokušajte ponovo.',
			'household.startWatching' => 'Počnite gledati',
			'household.manageProfiles' => 'Upravljajte ili mijenjajte profile',
			'household.addLater' => 'Kasnije možete dodati još članova u Postavkama → Profili i kućanstvo.',
			'household.connectionRequired' => 'Dodajte vezu s poslužiteljem da biste dovršili postavljanje ovog profila.',
			'household.mountain' => 'planina',
			'household.orbit' => 'Istraživač',
			'household.waves' => 'Ocean',
			'household.blossom' => 'Cvjetanje',
			'household.lightning' => 'Munja',
			'household.moon' => 'Mjesec',
			'household.avatarGallery' => 'Odaberite avatar',
			'household.avatarIllustrationHint' => 'Izvorni ilustrirani portreti te likovi djece i životinja',
			'household.avatarPortraitSunrise' => 'Portret u izlasku sunca',
			'household.avatarPortraitMeadow' => 'Portret na livadi',
			'household.avatarPortraitBerry' => 'Portret s bobičastim voćem',
			'household.avatarPortraitGolden' => 'Zlatni portret',
			'household.avatarPortraitIndigo' => 'Portret u indigo boji',
			'household.avatarPortraitOcean' => 'Portret uz ocean',
			'household.avatarKidArtist' => 'Mali umjetnik',
			'household.avatarKidSkater' => 'Mali klizač',
			'household.avatarCat' => 'Znatiželjna mačka',
			'household.avatarDog' => 'Sretan pas',
			'household.avatarPanda' => 'Panda',
			'household.avatarOwl' => 'sova',
			'household.avatarFox' => 'Lisica',
			'household.avatarDinosaur' => 'Dinosaur',
			'household.avatarRobot' => 'Robot',
			'detailComposition.startOver' => 'Kreni ispočetka',
			'detailComposition.seriesCast' => 'Glumačka ekipa serije',
			'detailComposition.streamingQuality' => 'Kvaliteta slike…',
			'detailComposition.trailer' => 'Najava',
			'detailComposition.manageMedia' => 'Upravljanje medijima…',
			'detailComposition.playbackOptions' => 'Opcije reprodukcije…',
			'detailComposition.moreActions' => 'Više akcija',
			'detailComposition.watched' => 'Gledao',
			'detailComposition.unwatched' => 'Negledan',
			'detailComposition.endsAt' => ({required Object time}) => 'Završava u ${time}',
			'detailComposition.automatic' => 'Automatski',
			'detailComposition.usePreferences' => 'Koristite svoje postavke reprodukcije',
			'detailComposition.mediaInformation' => 'Informacije o medijima',
			'detailComposition.fullFileInformation' => 'Potpune informacije o datoteci',
			'detailComposition.castAndCrew' => 'Glumci i ekipa',
			'kids.timeLimits' => 'Ograničenja vremena gledanja',
			'kids.dailyWatchLimit' => 'Dnevno vrijeme gledanja',
			'kids.dailyWatchLimitHint' => 'Ograničava dnevnu reprodukciju videa na ovom uređaju.',
			'kids.noTimeLimit' => 'Bez ograničenja',
			'kids.minutesLimit' => ({required Object minutes}) => '${minutes} minuta',
			'kids.bedtime' => 'Vrijeme za spavanje',
			'kids.bedtimeHint' => 'Za korištenje profila tijekom ovih sati potreban je roditeljski PIN.',
			'kids.bedtimeStart' => 'Početak vremena za spavanje',
			'kids.bedtimeEnd' => 'Kraj vremena za spavanje',
			'kids.timeLimitReached' => 'Dnevno vrijeme gledanja je isteklo',
			'kids.bedtimeReached' => 'Vrijeme je za spavanje',
			'kids.timeLimitParentHint' => 'Zamolite roditelja da unese PIN za nastavak u ovoj sesiji.',
			'kids.parentUnlock' => 'Roditeljsko otključavanje',
			'kids.backupProfile' => 'Sigurnosno kopirajte dječji profil',
			'kids.backupExplain' => 'Izradite sigurnosnu kopiju ovog profila spremljenog imena, karaktera, ograničenja, izgleda i lokalnih isključenja gledanja. PIN-ovi roditelja, prijave na poslužitelj, preuzimanja i napredak reprodukcije na poslužitelju nisu uključeni.',
			'kids.saveBackupFile' => 'Spremi datoteku sigurnosne kopije',
			'kids.copyBackup' => 'Kopiraj pričuvni tekst',
			'kids.backupSaved' => ({required Object path}) => 'Sigurnosna kopija dječjeg profila spremljena je u ${path}',
			'kids.backupCopied' => 'Sigurnosna kopija dječjeg profila kopirana',
			'kids.backupFailed' => 'Nije moguće spremiti sigurnosnu kopiju dječjeg profila. Molimo pokušajte ponovo.',
			'kids.restoreProfile' => 'Vratite dječji profil',
			'kids.chooseBackupFile' => 'Odaberite datoteku sigurnosne kopije',
			'kids.pasteBackup' => 'Zalijepi pričuvni tekst',
			'kids.backupText' => 'Sigurnosna kopija dječjeg profila JSON',
			'kids.pasteFromClipboard' => 'Zalijepi iz međuspremnika',
			'kids.restoreReview' => 'Pregledajte vraćene postavke pa odaberite Spremi da biste izradili novi dječji profil s trenutačnim vezama s poslužiteljima. Postojeći profili neće se mijenjati. Odabrane biblioteke i izuzeci gledanja primijenit će se samo na podudarajuće ID-jeve poslužitelja i biblioteka.',
			'kids.restoreInvalid' => 'Ovo nije važeća podržana sigurnosna kopija profila za djecu. Odaberite JSON sigurnosnu kopiju dječjeg profila Luroka.',
			'kids.deleteProfile' => 'Izbriši dječji profil',
			'kids.deleteExplain' => ({required Object name}) => 'Izbrisati ${name} iz Luroka? Njihove lokalne postavke, preuzimanja i isključenja gledanja bit će uklonjeni. Vaš račun poslužitelja i povijest na strani poslužitelja ostat će. Prvo napravite sigurnosnu kopiju ako želite kasnije vratiti profil.',
			'kids.profileDeleted' => 'Dječji profil izbrisan',
			'kids.allowedLibraries' => 'Dopuštene biblioteke',
			'kids.unavailableLibrary' => 'Prethodno odabrana biblioteka (trenutačno nedostupna)',
			'kids.allLibraries' => 'Dopusti sve povezane filmske i TV biblioteke',
			'kids.librariesExplain' => 'Isključite ovo za odabir određenih biblioteka. Pravila o dobi i animaciji i dalje se primjenjuju unutar odabranih biblioteka. Nove biblioteke ne dodaju se automatski prilikom korištenja odabira.',
			'kids.librariesUnavailable' => 'Nisu učitane filmske ni TV biblioteke. Povežite se s poslužiteljem, otvorite odjeljak Biblioteke pa se vratite ovamo da biste odabrali biblioteke.',
			'kids.noLibrariesSelected' => 'Nije odabrana nijedna biblioteka: ovo dijete neće vidjeti nijedan naslov.',
			'kids.animationOnly' => 'Samo animacija',
			'kids.animationExplain' => 'Prikaži samo naslove označene žanrom animacije na vašem poslužitelju. Ovo ne zamjenjuje dobnu granicu: animacija može biti namijenjena i odraslima. Metapodaci o žanru koji nedostaju skriveni su.',
			'kids.allowUnrated' => 'Dopusti naslove bez dobne oznake',
			'kids.unratedExplain' => 'Isključeno prema zadanim postavkama. Kad je uključeno, mogu se prikazati sadržaji bez dobne oznake ili klasifikacije, ako to dopuštaju pravila biblioteke i animacije. Njihova primjerenost dobi ne može se provjeriti. Sadržaji s poznatom oznakom iznad dobne granice i neprepoznatim klasifikacijama i dalje su skriveni.',
			'kids.whoIsWatching' => 'Tko gleda?',
			'kids.chooseAdventure' => 'Mali svijet velikih avantura.',
			'kids.chooseProfile' => 'Odaberite svoj prostor. Neka to bude filmska večer.',
			'kids.welcome' => ({required Object name}) => 'Bok, ${name}!',
			'kids.welcomeOlder' => ({required Object name}) => 'Vaša sljedeća sjajna priča, ${name}.',
			'kids.homeSubtitle' => 'Velike avanture. Mala otkrića. Sve za vas.',
			'kids.homeSubtitleOlder' => 'Pronađite novog favorita. Nastavite gdje ste stali.',
			'kids.featured' => 'Današnja velika avantura',
			'kids.featuredOlder' => 'U centru pažnje',
			'kids.moreInfo' => 'Više informacija',
			'kids.movies' => 'Filmovi',
			'kids.shows' => 'emisije',
			'kids.profiles' => 'Profili',
			'kids.adultBadge' => 'Odrasli',
			'kids.avatar' => 'Odaberite svoj karakter',
			'kids.avatarExplorer' => 'Istraživač svemira',
			'kids.avatarFox' => 'Lisica',
			'kids.avatarDinosaur' => 'Dinosaur',
			'kids.avatarRobot' => 'Robot',
			'kids.avatarChildArtist' => 'Mali umjetnik',
			'kids.avatarChildSkater' => 'Mali klizač',
			'kids.avatarSunrisePerson' => 'Portret u izlasku sunca',
			'kids.avatarOceanPerson' => 'Oceanski portret',
			'kids.avatarCat' => 'Znatiželjna mačka',
			'kids.avatarDog' => 'Sretan pas',
			'kids.avatarPanda' => 'Panda',
			'kids.avatarOwl' => 'sova',
			'kids.avatarBear' => 'medvjed',
			'kids.continueAdventure' => 'Nastavite s avanturom',
			'kids.freshStories' => 'Nove priče za otkrivanje',
			'kids.yourMovies' => 'Omiljeni filmovi',
			'kids.yourShows' => 'Još jedna epizoda',
			'kids.emptyHint' => 'Nove avanture pojavit će se ovdje kada vaš poslužitelj bude imao naslove s dopuštenom dobnom klasifikacijom.',
			'kids.title' => 'Luroka za djecu',
			'kids.addProfile' => 'Dodajte dječji profil',
			'kids.parentalControls' => 'Roditeljski nadzor',
			'kids.parentPin' => 'Roditeljski PIN',
			'kids.setParentPin' => 'Postavi roditeljski PIN',
			'kids.changeParentPin' => 'Promijeni roditeljski PIN',
			'kids.pinExplain' => 'Ovaj PIN štiti profile za odrasle i roditeljski nadzor na ovom uređaju.',
			'kids.name' => 'Ime djeteta',
			'kids.ageGroup' => 'Dopuštena dobna klasifikacija',
			'kids.allAges' => 'Svi uzrasti · G, TV-Y, TV-G, U',
			'kids.age7' => 'Do 7 · također PG, TV-PG, TV-Y7',
			'kids.age12' => 'Do 12 · također 12 i 12A',
			'kids.age16' => 'Do 16 · također PG-13, TV-14, 15 i 16',
			'kids.ratingExplain' => 'Naslovi iznad dobne granice i neprepoznate klasifikacije su skriveni. Naslovi bez ocjene su skriveni osim ako ih ne dopustite u nastavku. Epizode bez ocjene mogu naslijediti odobrenu klasifikaciju serije. Ocjene ovise o metapodacima vašeg poslužitelja.',
			'kids.theme' => 'Izgled djece',
			'kids.themeExplain' => 'Koristite šarenu temu kada je ovaj profil aktivan.',
			'kids.sharedLogin' => 'Koristi vašu postojeću prijavu na poslužitelj. Plex/Emby napredak i status gledanja ostaju podijeljeni. Ograničenja i dječji profili pohranjeni su na ovom uređaju.',
			'kids.hideWatched' => 'Sakrij dječje gledanje iz moje Nastavi gledati',
			'kids.hideExplain' => 'Sakrij filmove i cijele serije koje su gledali dječji profili na ovom uređaju. Time se sadržaj ne uklanja iz biblioteke niti mijenja povijest na poslužitelju.',
			'kids.clearHistory' => 'Poništi isključenja gledanja za djecu',
			'kids.historyReset' => 'Isključenja gledanja za djecu poništena',
			'kids.blocked' => 'Ovaj naslov nije dostupan u ovom dječjem profilu.',
			'kids.switchProfile' => 'Promijeni profil',
			'kids.manageFromAdult' => 'Prijeđite na profil za odrasle za upravljanje postavkama.',
			'kids.noConnections' => 'Povežite poslužitelj sa svojim profilom za odrasle prije dodavanja profila za djecu.',
			'kids.created' => 'Izrađen profil djece',
			'kids.updated' => 'Profil djece ažuriran',
			'kids.saveFailed' => 'Nije moguće spremiti roditeljski nadzor. Molimo pokušajte ponovo.',
			'kids.kidsBadge' => 'djeca',
			_ => null,
		} ?? switch (path) {
			'lurokaDiscovery.title' => 'Otkrij',
			'lurokaDiscovery.chooseLibraryHint' => 'Odaberite biblioteku za pregledavanje',
			'lurokaDiscovery.chooseCopyHint' => 'Dostupno je u više biblioteka. Odaberite kopiju koju želite gledati.',
			'lurokaDiscovery.weeklyMovies' => 'Popularni filmovi ovog tjedna · TMDb',
			'lurokaDiscovery.weeklyShows' => 'Emisije u trendu ovog tjedna · TMDb',
			'lurokaDiscovery.weeklyLibrary' => 'Popularno ovaj tjedan · U vašoj biblioteci',
			'lurokaDiscovery.popularLibrary' => 'Popularno sada · U vašoj biblioteci · Cinemeta',
			'lurokaDiscovery.publicFeedError' => 'Cinemeta trenutačno nije dostupan. Pokušajte ponovno.',
			'lurokaDiscovery.oscars' => 'Oscari · Dobitnici za najbolji film',
			'lurokaDiscovery.imdb100' => 'IMDb Top 100 filmova · Snimka rujna 2026.',
			'lurokaDiscovery.imdbTv100' => 'IMDb Top 100 emisija · Snimka rujna 2026.',
			'lurokaDiscovery.emmyComedy' => 'Emmyji · Dobitnici humorističnih serija · 1971–2026',
			'lurokaDiscovery.emmys' => 'Emmyji · Dobitnici dramskih serija · 1966–2026',
			'lurokaDiscovery.bafta' => 'BAFTA · Dobitnici za najbolji film',
			'lurokaDiscovery.cannes' => 'Cannes · Dobitnici Zlatne palme',
			'lurokaDiscovery.awardsNote' => 'Zbirke nagrada obuhvaćaju dobitnike Oscara za najbolji film, Emmyja za dramske i humoristične serije te proširene izbore nagrada BAFTA i u Cannesu. Naslovi koji su osvojili više nagrada prikazuju se samo jednom. Popisi se temelje na povijesti kategorija nagrada i podacima Wikidata. IMDb-ovi popisi 100 najboljih filmova i serija temelje se na snimkama ljestvica iz rujna 2026. projekta mmdju/imdb-top250-api. Prikazuju se samo naslovi pronađeni u vašim vidljivim i trenutačno dostupnim bibliotekama; broj naslova ovisi o njihovu sadržaju.',
			'lurokaDiscovery.attribution' => 'Popise popularnosti, metapodatke i IMDb ocjene pruža Cinemeta; njihovi popisi Popularno nisu tjedne ljestvice gledanosti. Ovaj proizvod koristi TMDB API, ali ga TMDB ne podupire niti certificira. Neobvezni tjedni trendovi TMDb-a odražavaju interes korisnika, a ne broj pregleda. Ocjene zadržavaju oznaku izvora.',
			'lurokaDiscovery.tmdbSettings' => 'Izvori otkrića',
			'lurokaDiscovery.setupDescription' => 'Cinemeta radi odmah i bez računa te nudi popularne filmove i serije, IMDb ocjene i nagrađene naslove. Po želji povežite TMDb da biste pratili tjedne trendove. Upotrijebite API ključ ili token za pristup API-ju za čitanje s themoviedb.org/settings/api. Vjerodajnica se pohranjuje na ovom uređaju.',
			'lurokaDiscovery.apiKey' => 'TMDb API ključ / pristupni token za čitanje',
			'lurokaDiscovery.connect' => 'Povežite TMDb',
			'lurokaDiscovery.connecting' => 'Povezivanje…',
			'lurokaDiscovery.connected' => 'TMDb povezan · Tjedni trendovi i nagrade omogućeni',
			'lurokaDiscovery.builtInKeyNote' => 'Trenutačno se koristi zajednički TMDb API ključ ugrađen u Luroku. Dodajte vlastiti besplatni ključ u nastavku da biste imali zasebna ograničenja broja zahtjeva i potpunu kontrolu.',
			'lurokaDiscovery.disconnect' => 'Odspojite TMDb',
			'lurokaDiscovery.invalidKey' => 'Nije moguće potvrditi TMDb. Provjerite svoju vjerodajnicu i internetsku vezu.',
			'lurokaDiscovery.feedError' => 'TMDb otkrivanje nije dostupno. Molimo pokušajte ponovo.',
			'lurokaDiscovery.allTitles' => 'Svi naslovi',
			'lurokaDiscovery.available' => 'U vašoj biblioteci',
			'lurokaDiscovery.checking' => 'Provjera biblioteka…',
			'lurokaDiscovery.availabilityUnknown' => 'Nije moguće provjeriti neke biblioteke. Pokušajte osvježiti.',
			'lurokaDiscovery.noAvailable' => 'U provjerenim bibliotekama nema odgovarajućih naslova.',
			'lurokaDiscovery.sourceInfo' => 'Tjedni trendovi i odabrani dobitnici nagrada · TMDb',
			'lurokaDiscovery.configure' => 'Postavke odjeljka Otkrijte',
			'app.title' => 'Luroka',
			'appIcon.title' => 'Ikona aplikacije',
			'appIcon.defaultIcon' => 'Zadano',
			'appIcon.current' => 'Trenutna ikona',
			'appIcon.locked' => 'Pogodnost za navijače',
			'appIcon.lockedHint' => 'Druge ikone dostupne su kao pogodnost za one koji podupiru Luroku.',
			'appIcon.changeFailed' => 'Nije moguće promijeniti ikonu aplikacije',
			'appIcon.launcherHint' => 'Nova ikona pojavljuje se na vašem početnom zaslonu nakon što napustite Luroka.',
			'appIcon.tvLauncherHint' => 'Novi natpis se pojavljuje kada napustite Luroka. Android TV može nastaviti prikazivati ​​stari dok se TV ponovno ne pokrene.',
			'appIcon.names.midnight' => 'Ponoć',
			'appIcon.names.ember' => 'žar',
			'appIcon.names.paper' => 'Papir',
			'appIcon.names.oled' => 'OLED',
			'appIcon.names.line' => 'Linija',
			'appIcon.names.ocean' => 'Ocean',
			'appIcon.names.ultraviolet' => 'Ultraljubičasto',
			'appIcon.names.matcha' => 'Matcha',
			'appIcon.names.sunset' => 'Zalazak sunca',
			'appIcon.names.gold' => 'zlato',
			'appIcon.names.titanium' => 'Titanij',
			'appIcon.names.glass' => 'Staklo',
			'appIcon.names.crt' => 'CRT',
			'appIcon.names.vhs' => 'VHS',
			'appIcon.names.synthwave' => 'Synthwave',
			'appIcon.names.pixel' => 'Pixel',
			'appIcon.names.neon' => 'Neon',
			'appIcon.names.sticker' => 'Naljepnica',
			'appIcon.names.ticket' => 'ulaznica',
			'appIcon.names.pop' => 'Pop',
			'appIcon.names.strata' => 'slojevi',
			'appIcon.names.facet' => 'Faseta',
			'appIcon.names.tilde' => 'Tilda',
			'auth.signInWithPlex' => 'Prijavite se pomoću Plex',
			'auth.showQRCode' => 'Prikaži QR kod',
			'auth.authenticate' => 'Provjeri autentičnost',
			'auth.authenticationTimeout' => 'Autentikacija je istekla. Molimo pokušajte ponovo.',
			'auth.scanQRToSignIn' => 'Skenirajte ovaj QR kod za prijavu',
			'auth.waitingForAuth' => 'Čeka se provjera autentičnosti...\nPrijavite se iz svog preglednika.',
			'auth.useBrowser' => 'Koristite preglednik',
			'auth.or' => 'ili',
			'auth.connectToMediaBrowser' => ({required Object product}) => 'Povežite se na ${product}',
			'auth.quickConnect' => 'Quick Connect',
			'auth.useQuickConnect' => 'Koristite Quick Connect',
			'auth.quickConnectInstructions' => 'Otvorite Quick Connect u Jellyfin i unesite ovaj kod.',
			'auth.quickConnectWaiting' => 'Čeka se odobrenje...',
			'auth.quickConnectCancel' => 'Odustani',
			'auth.quickConnectExpired' => 'Quick Connect istekao. Pokušajte ponovno.',
			'auth.localDataRecoveryRequired' => 'Aplikacija Luroka nije mogla sigurno vratiti podatke za lokalnu prijavu i reprodukciju na čekanju. Prijavite se ponovno.',
			'auth.pinCheckRejected' => 'Provjera Plex PIN je odbijena',
			'common.cancel' => 'Odustani',
			'common.save' => 'Spremi',
			'common.close' => 'Zatvori',
			'common.clear' => 'Očisti',
			'common.reset' => 'Poništi',
			'common.later' => 'Kasnije',
			'common.submit' => 'Pošalji',
			'common.confirm' => 'Potvrdi',
			'common.retry' => 'Pokušaj ponovno',
			'common.logout' => 'Odjava',
			'common.unknown' => 'Nepoznato',
			'common.refresh' => 'Osvježi',
			'common.yes' => 'Da',
			'common.no' => 'Ne',
			'common.delete' => 'Izbriši',
			'common.edit' => 'Uredi',
			'common.shuffle' => 'Izmiješaj',
			'common.addTo' => 'Dodaj u...',
			'common.createNew' => 'Kreiraj novo',
			'common.connect' => 'Poveži',
			'common.disconnect' => 'Prekini vezu',
			'common.play' => 'Reprodukcija',
			'common.pause' => 'Pauza',
			'common.resume' => 'Nastavi',
			'common.error' => 'Greška',
			'common.search' => 'Pretraga',
			'common.home' => 'Početna',
			'common.back' => 'Natrag',
			'common.settings' => 'Postavke',
			'common.mute' => 'Isključi zvuk',
			'common.ok' => 'U redu',
			'common.off' => 'Isključeno',
			'common.options' => 'Opcije',
			'common.seasonNumber' => ({required Object number}) => 'Sezona ${number}',
			'common.episodeNumberTitle' => ({required Object number, required Object title}) => 'Epizoda ${number} - ${title}',
			'common.chapterNumber' => ({required Object number}) => 'Poglavlje ${number}',
			'common.reconnect' => 'Ponovno spoji',
			'common.viewAll' => 'Prikaži sve',
			'common.serversUnreachable' => 'Poslužitelji nisu dostupni',
			'common.loading' => 'Učitavanje...',
			'common.fullscreen' => 'Cijeli zaslon',
			'common.exitFullscreen' => 'Izađi iz punog zaslona',
			'common.ratingSource.critic' => 'Kritičari',
			'common.ratingSource.audience' => 'publika',
			'common.ratingSource.imdb' => 'IMDb',
			'common.ratingSource.tmdb' => 'TMDB',
			'common.ratingSource.rottenTomatoes' => 'Rotten Tomatoes',
			'common.ratingSource.simkl' => 'Simkl',
			'common.ratingSource.mal' => 'MyAnimeList',
			'common.ratingSource.anilist' => 'AniList',
			'common.ratingSource.trakt' => 'Trakt',
			'common.ratingSource.rottenTomatoesCritic' => 'Kritičari Rotten Tomatoesa',
			'common.ratingSource.rottenTomatoesAudience' => 'Publika Rotten Tomatoesa',
			'common.ratingSource.metacritic' => 'Metacritic',
			'common.ratingSource.letterboxd' => 'Letterboxd',
			'common.notAvailable' => 'N/A',
			'common.url' => 'URL',
			'common.letterKeys' => 'ABC',
			'common.mediaKind.movie' => 'Film',
			'common.mediaKind.show' => 'Serija',
			'common.mediaKind.season' => 'Sezona',
			'common.mediaKind.episode' => 'Epizoda',
			'common.mediaKind.artist' => 'Izvođač',
			'common.mediaKind.album' => 'Album',
			'common.mediaKind.track' => 'Zapis',
			'common.mediaKind.collection' => 'Zbirka',
			'common.mediaKind.playlist' => 'Popis za reprodukciju',
			'common.mediaKind.clip' => 'Isječak',
			'common.mediaKind.photo' => 'Fotografija',
			'common.mediaKind.folder' => 'Mapa',
			'common.stay' => 'Ostani',
			'common.exitApp' => 'Izađi',
			'common.exitAppBody' => 'Jeste li sigurni da želite izaći iz Luroke?',
			'tvHints.select' => 'Odaberite',
			'tvHints.browse' => 'Pregledaj',
			'tvHints.back' => 'natrag',
			'screens.licenses' => 'Licence',
			'screens.switchProfile' => 'Promjena profila',
			'screens.subtitleStyling' => 'Stil titlova',
			'screens.mpvConfig' => 'mpv.conf',
			'screens.logs' => 'Dnevnici',
			'mediaExtras.trailers' => 'Najave',
			'mediaExtras.featurettes' => 'Posebni sadržaji',
			'mediaExtras.interviews' => 'Intervjui',
			'mediaExtras.deletedScenes' => 'Izbrisane scene',
			'mediaExtras.behindTheScenes' => 'Iza kulisa',
			'mediaExtras.scenesAndClips' => 'Scene i isječci',
			'mediaExtras.other' => 'Ostali dodaci',
			'update.available' => 'Ažuriranje dostupno',
			'update.versionAvailable' => ({required Object version}) => 'Dostupna je verzija ${version}',
			'update.currentVersion' => ({required Object version}) => 'Trenutno: ${version}',
			'update.skipVersion' => 'Preskoči ovu verziju',
			'update.viewRelease' => 'Pregledajte izdanje',
			'update.latestVersion' => 'Nalazite se na najnovijoj verziji',
			'update.checkFailed' => 'Provjera ažuriranja nije uspjela',
			'supporter.title' => 'Podrška za Luroku',
			'supporter.intro' => 'Jednokratna kupnja koja podržava razvoj Luroka i otključava kozmetičke dodatke:',
			'supporter.presetThemes' => 'Unaprijed postavljene teme',
			'supporter.presetThemesDescription' => 'Žar, Ledenjak, Šuma, Šljiva i Papir',
			'supporter.customTheme' => 'Prilagođena tema',
			'supporter.customThemeDescription' => 'Svaku boju odaberite sami',
			'supporter.appIcons' => 'Ikone aplikacija',
			'supporter.appIconsDescription' => 'Odaberite drugu ikonu za Luroku',
			'supporter.buy' => ({required Object price}) => 'Kupite za ${price}',
			'supporter.loadingPrice' => 'Učitavanje cijene...',
			'supporter.restore' => 'Obnovi kupnje',
			'supporter.pending' => 'Kupnja čeka plaćanje ili odobrenje. Dodaci će se otključati čim trgovina obradi kupnju.',
			'supporter.thankYouTitle' => 'Hvala što podržavate Luroka',
			'supporter.thankYouBody' => 'Dodaci za podršku sada su otključani.',
			'supporter.tileSubtitle' => 'Otključajte teme i ikone aplikacija jednokratnom kupnjom',
			'supporter.tileSubtitleThemesOnly' => 'Otključajte teme jednokratnom kupnjom',
			'supporter.tileUnlocked' => 'Hvala vam na podršci',
			'supporter.errors.storeUnavailable' => 'Kupnje nisu dostupne. Provjerite jeste li prijavljeni u trgovinu i jesu li kupnje dopuštene na ovom uređaju.',
			'supporter.errors.productNotFound' => 'Kupnja dodatka za podršku trenutačno nije dostupna u trgovini.',
			'supporter.errors.productQueryFailed' => 'Nije moguće učitati cijenu. Provjerite vezu i pokušajte ponovno.',
			'supporter.errors.purchaseFailed' => 'Kupnja nije uspjela. Pokušajte ponovno.',
			'supporter.errors.restoreFailed' => 'Nije moguće doći do trgovine kako biste vratili svoju kupnju. Pokušajte ponovno.',
			'supporter.errors.nothingToRestore' => 'Za ovaj račun trgovine nije pronađena kupnja dodatka za podršku.',
			'settings.title' => 'Postavke',
			'settings.supportDeveloper' => 'Podržava Luroka',
			'settings.supportDeveloperDescription' => 'Donirajte putem Liberapaya za financiranje razvoja',
			'settings.language' => 'Jezik',
			'settings.theme' => 'Tema',
			'settings.appearance' => 'Izgled',
			'settings.videoPlayback' => 'Reprodukcija videa',
			'settings.videoPlaybackDescription' => 'Postavite način reprodukcije videa.',
			'settings.advanced' => 'Napredno',
			'settings.episodePosterMode' => 'Način prikaza postera epizoda',
			'settings.seriesPoster' => 'Poster serije',
			'settings.seasonPoster' => 'Poster sezone',
			'settings.episodeThumbnail' => 'Sličica',
			'settings.homeHeroSize' => 'Veličina istaknutog sadržaja',
			'settings.homeHeroSizeSmall' => 'Malo',
			'settings.homeHeroSizeMedium' => 'Srednje',
			'settings.homeHeroSizeLarge' => 'Veliko',
			'settings.secondsLabel' => 'sekundi',
			'settings.minutesLabel' => 'minuta',
			'settings.secondsShort' => 's',
			'settings.minutesShort' => 'm',
			'settings.durationHint' => ({required Object min, required Object max}) => 'Unesite trajanje (${min}-${max})',
			'settings.systemTheme' => 'Sustav',
			'settings.lightTheme' => 'Svijetla',
			'settings.darkTheme' => 'Tamna',
			'settings.oledTheme' => 'OLED',
			'settings.libraryDensity' => 'Gustoća prikaza biblioteke',
			'settings.displayScale' => 'Veličina prikaza',
			'settings.compact' => 'Kompaktno',
			'settings.comfortable' => 'Udobno',
			'settings.gridSpacing' => 'Razmak mreže',
			'settings.gridSpacingTight' => 'Usko',
			'settings.gridSpacingNormal' => 'Uobičajeno',
			'settings.gridSpacingSpacious' => 'Prostrano',
			'settings.tvCornerSpotlightBackdrop' => 'Pozadina istaknutog sadržaja u kutu',
			'settings.tvCornerSpotlightBackdropDescription' => 'Prikaži sliku istaknutog sadržaja u gornjem desnom kutu umjesto preko cijelog zaslona.',
			'settings.viewMode' => 'Način prikaza',
			'settings.gridView' => 'Mreža',
			'settings.listView' => 'Popis',
			'settings.continueWatchingAction' => 'Radnja pri odabiru u retku Nastavi gledati',
			'settings.continueWatchingPlay' => 'Reproduciraj',
			'settings.continueWatchingDetails' => 'Otvori pojedinosti',
			'settings.episodeAction' => 'Radnja pri odabiru epizode',
			'settings.episodePlay' => 'Reproduciraj',
			'settings.episodeDetails' => 'Otvori pojedinosti',
			'settings.useGlobalHubs' => 'Koristi raspored početne stranice',
			'settings.useGlobalHubsDescription' => 'Objedini sve poslužitelje na jednoj početnoj stranici. Isključi za prikaz zasebnih preporuka svake biblioteke.',
			'settings.showServerNameOnHubs' => 'Prikaži nazive poslužitelja u odjeljcima',
			'settings.showServerNameOnHubsDescription' => 'Uvijek prikaži nazive poslužitelja u naslovima odjeljaka.',
			'settings.groupLibrariesByServer' => 'Grupiraj biblioteke po poslužitelju',
			'settings.groupLibrariesByServerDescription' => 'Grupiraj biblioteke u bočnoj traci prema poslužitelju.',
			'settings.alwaysKeepSidebarOpen' => 'Bočnu traku uvijek držite otvorenom',
			'settings.alwaysKeepSidebarOpenDescription' => 'Bočna traka ostaje proširena, a područje sadržaja prilagođava se',
			'settings.showUnwatchedCount' => 'Prikaži broj neodgledanih epizoda',
			'settings.showUnwatchedCountDescription' => 'Prikaži broj neodgledanih epizoda za serije i sezone.',
			'settings.showWatchedIndicators' => 'Prikaži oznake pogledanog sadržaja',
			'settings.showWatchedIndicatorsDescription' => 'Prikaži kvačicu na pogledanim filmovima, serijama i epizodama.',
			'settings.showEpisodeNumberOnCards' => 'Prikaži broj epizode na karticama',
			'settings.showEpisodeNumberOnCardsDescription' => 'Prikaži sezonu i broj epizode na karticama epizoda',
			'settings.showSeasonPostersOnTabs' => 'Prikaži postere sezona na karticama',
			'settings.showSeasonPostersOnTabsDescription' => 'Prikaži poster svake sezone iznad njezine kartice.',
			'settings.tvFullCardLayout' => 'Proširene TV kartice',
			'settings.tvFullCardLayoutDescription' => 'Koristi TV kartice samo sa slikom i imenima glumaca preko slike.',
			'settings.focusGlow' => 'Sjaj fokusa',
			'settings.focusGlowDescription' => 'Dodaj blagi sjaj oko odabrane kartice.',
			'settings.visualEffects' => 'Vizualni efekti',
			'settings.visualEffectsAuto' => 'Automatski',
			'settings.visualEffectsAutoDescription' => 'Automatski smanji efekte na uređajima slabijih performansi.',
			'settings.visualEffectsFull' => 'Puni',
			'settings.visualEffectsReduced' => 'Smanjeno',
			'settings.visualEffectsReducedDescription' => 'Manje animacija i slike niže razlučivosti.',
			'settings.hideSpoilers' => 'Sakrij spoilere za neodgledane epizode',
			'settings.hideSpoilersDescription' => 'Zamuti sličice i opise neodgledanih epizoda.',
			'settings.playerBackend' => 'Mehanizam reprodukcije',
			'settings.playerBackendDescription' => 'mpv reproducira više formata i podržava više značajki — preporučeno. ExoPlayer može pomoći ako reprodukcija ne radi ili zastajkuje na ovom uređaju.',
			'settings.exoPlayer' => 'ExoPlayer',
			'settings.mpv' => 'mpv',
			'settings.hardwareDecoding' => 'Hardversko dekodiranje',
			'settings.hardwareDecodingDescription' => 'Koristi hardversko ubrzanje kada je dostupno',
			'settings.playbackBuffer' => 'Međuspremnik za reprodukciju',
			'settings.playbackBufferAuto' => 'Automatski (preporučeno)',
			'settings.playbackBufferLarge' => 'Velik',
			'settings.playbackBufferExtraLarge' => 'Iznimno velik',
			'settings.playbackBufferDescription' => 'Povećaj količinu unaprijed učitanog sadržaja kako bi reprodukcija bila stabilnija na nestabilnim vezama.',
			'settings.defaultQualityTitle' => 'Kvaliteta slike',
			'settings.streamingQualityOriginalHint' => 'Reproducira datoteku u izvornom obliku — najbolja kvaliteta uz najveću potrošnju podataka.',
			'settings.cellularQualityTitle' => 'Kvaliteta slike putem mobilne mreže',
			'settings.cellularQualitySameAsDefault' => 'Jednako kao zadana kvaliteta slike',
			'settings.directPlayCoveredQuality' => 'Ne pretvaraj datoteke koje već zadovoljavaju ograničenja kvalitete',
			'settings.directPlayCoveredQualityDescription' => 'Videozapisi koji zadovoljavaju ograničenja kvalitete reproduciraju se bez pretvorbe — brže i uz manje opterećenje poslužitelja.',
			'settings.videoCodecs' => 'Videokodeci',
			'settings.videoCodecsDescription' => 'Poslužitelj će pretvoriti videokodeke koje niste označili.',
			'settings.videoCodecsAlwaysAccepted' => 'Uvijek prihvati',
			'settings.musicQualityTitle' => 'Glazbena kvaliteta',
			'settings.subtitleStyling' => 'Stil titlova',
			'settings.subtitleStylingDescription' => 'Prilagodi izgled titlova.',
			'settings.smallSkipDuration' => 'Kratki pomak pri premotavanju',
			'settings.largeSkipDuration' => 'Dugi pomak pri premotavanju',
			'settings.rewindOnResume' => 'Premotaj pri nastavku',
			'settings.secondsUnit' => ({required Object seconds}) => '${seconds} sekundi',
			'settings.defaultSleepTimer' => 'Zadani mjerač vremena za isključivanje',
			'settings.minutesUnit' => ({required Object minutes}) => '${minutes} minuta',
			'settings.rememberTrackSelections' => 'Zapamti odabrane zapise za svaku seriju ili film',
			'settings.rememberTrackSelectionsDescription' => 'Zapamti odabrani zvuk i titlove za svaki naslov.',
			'settings.rememberTrackSelectionsBackendRule' => 'Plex sprema odabire na poslužitelj za svaku datoteku; Jellyfin uključuje i postavku za pamćenje odabira na računu; Emby to ne podržava.',
			'settings.followServerTrackSelections' => 'Koristi odabire zapisa s poslužitelja za svaku epizodu',
			'settings.followServerTrackSelectionsDescription' => 'Pri prelasku na drugu epizodu koristi zvuk i titlove odabrane na poslužitelju umjesto trenutačnog odabira.',
			'settings.resumeMusicOnLaunch' => 'Zapamti glazbenu sesiju',
			'settings.resumeMusicOnLaunchDescription' => 'Pri pokretanju aplikacije nastavi posljednju pjesmu od mjesta na kojem je bila zaustavljena.',
			'settings.showChapterMarkersOnTimeline' => 'Prikaži oznake poglavlja na traci za premotavanje',
			'settings.showChapterMarkersOnTimelineDescription' => 'Podijeli traku za premotavanje prema granicama poglavlja.',
			'settings.specialsOrdering' => 'Položaj specijalnih epizoda',
			'settings.specialsOrderingDescription' => 'Određuje gdje se specijalne epizode prikazuju u redoslijedu gledanja serije.',
			'settings.specialsOrderingServer' => 'Prema redoslijedu poslužitelja',
			'settings.specialsOrderingAirDate' => 'Umetni prema datumu emitiranja',
			'settings.specialsOrderingLast' => 'Nakon redovnih sezona',
			'settings.clickVideoTogglesPlayback' => 'Klikom na videozapis pokreni ili pauziraj reprodukciju',
			'settings.clickVideoTogglesPlaybackDescription' => 'Klikni videozapis za pokretanje ili pauziranje reprodukcije umjesto prikaza kontrola.',
			'settings.videoPlayerControls' => 'Kontrole reproduktora',
			'settings.keyboardShortcuts' => 'Tipkovnički prečaci',
			'settings.keyboardShortcutsDescription' => 'Prilagodite tipkovničke prečace',
			'settings.videoPlayerNavigation' => 'Navigacija reproduktorom',
			'settings.videoPlayerNavigationDescription' => 'Koristi tipke sa strelicama za kretanje kroz kontrole reproduktora.',
			'settings.watchTogetherRelay' => 'Poslužitelj za zajedničko gledanje',
			'settings.watchTogetherRelayDescription' => 'Koriste se javni poslužitelji Open Watch Partyja ako ne postavite vlastiti.',
			'settings.watchTogetherRelayHint' => 'https://my-relay.example.com',
			'settings.watchTogetherRelayInvalid' => 'Unesite valjanu osnovnu HTTP ili HTTPS adresu poslužitelja za zajedničko gledanje.',
			'settings.crashReporting' => 'Izvješća o padu',
			'settings.crashReportingDescription' => 'Šaljite izvješća o padu kako biste pomogli poboljšati aplikaciju',
			'settings.debugLogging' => 'Otklanjanje pogrešaka',
			'settings.debugLoggingDescription' => 'Omogući detaljno bilježenje za rješavanje problema',
			'settings.viewLogs' => 'Prikaži dnevnike',
			'settings.viewLogsDescription' => 'Pregledaj dnevnike aplikacije',
			'settings.clearImageCache' => 'Očisti predmemoriju slika',
			'settings.clearImageCacheDescription' => 'Obriši predmemoriju naslovnica i sličica. Slike se mogu sporije učitavati dok se ponovno ne preuzmu.',
			'settings.clearImageCacheSuccess' => 'Predmemorija slika uspješno je izbrisana',
			'settings.resetSettings' => 'Resetiraj postavke',
			'settings.resetSettingsDescription' => 'Vrati zadane postavke. Ovo se ne može poništiti.',
			'settings.resetSettingsSuccess' => 'Postavke su uspješno resetirane',
			'settings.backup' => 'Sigurnosna kopija',
			'settings.exportSettings' => 'Izvezi postavke',
			'settings.exportSettingsDescription' => 'Spremite svoje postavke u datoteku',
			'settings.exportSettingsSuccess' => 'Postavke su izvezene',
			'settings.importSettings' => 'Uvezi postavke',
			'settings.importSettingsDescription' => 'Vratite postavke iz datoteke',
			'settings.importSettingsConfirm' => 'Ovo će zamijeniti vaše trenutne postavke. Nastaviti?',
			'settings.importSettingsSuccess' => 'Postavke su uvezene',
			'settings.importSettingsInvalidFile' => 'Ova datoteka nije važeći izvoz postavki Luroka',
			'settings.importSettingsNoUser' => 'Prijavite se prije uvoza postavki',
			'settings.shortcutsReset' => 'Prečaci resetirani na zadane',
			'settings.resetShortcutsConfirm' => 'Ovo će zamijeniti vaše prilagođene prečace zadanim postavkama. Nastaviti?',
			'settings.about' => 'O aplikaciji',
			'settings.aboutDescription' => 'Verzija, zasluge i pravne informacije',
			'settings.updates' => 'Ažuriranja',
			'settings.updateAvailable' => 'Ažuriranje dostupno',
			'settings.checkForUpdates' => 'Provjeri ažuriranja',
			'settings.autoCheckUpdatesOnStartup' => 'Automatski provjeri ažuriranja pri pokretanju',
			'settings.autoCheckUpdatesOnStartupDescription' => 'Obavijesti kada je ažuriranje dostupno pri pokretanju',
			'settings.validationErrorEnterNumber' => 'Unesite važeći broj',
			'settings.validationErrorDuration' => ({required Object min, required Object max, required Object unit}) => 'Trajanje mora biti između ${min} i ${max} ${unit}',
			'settings.shortcutAlreadyAssigned' => ({required Object action}) => 'Prečac je već dodijeljen ${action}',
			'settings.shortcutUpdated' => ({required Object action}) => 'Prečac ažuriran za ${action}',
			'settings.saveFailed' => 'Spremanje promjena nije uspjelo. Pokušajte ponovno.',
			'settings.autoPlayAndSkip' => 'Automatska reprodukcija i preskakanje',
			'settings.autoPlayNextEpisode' => 'Automatski reproduciraj sljedeću epizodu',
			'settings.autoPlayNextEpisodeDescription' => 'Automatski pokreni sljedeću epizodu kada se jedna završi',
			'settings.shuffleStartsFromBeginning' => 'Nasumična reprodukcija počinje od početka',
			'settings.shuffleStartsFromBeginningDescription' => 'Započnite svaku epizodu na početku pri nasumivanju umjesto nastavka',
			'settings.playNextCountdown' => 'Igrajte sljedeće odbrojavanje',
			'settings.playNextCountdownImmediate' => 'Igrajte odmah',
			'settings.skipIntroMode' => 'Preskoči uvod',
			'settings.skipIntroModeOffDescription' => 'Reproduciraj uvod bez gumba za preskakanje.',
			'settings.skipIntroModeButtonDescription' => 'Prikaži gumb za preskakanje kada započne uvod',
			'settings.skipIntroModeAutoDescription' => 'Automatski preskoči uvode nakon zadanog čekanja.',
			'settings.skipCreditsMode' => 'Preskoči odjavnu špicu',
			'settings.skipCreditsModeOffDescription' => 'Reproduciraj odjavnu špicu bez gumba za preskakanje.',
			'settings.skipCreditsModeButtonDescription' => 'Prikaži gumb za preskakanje na početku odjavne špice.',
			'settings.skipCreditsModeAutoDescription' => 'Automatski preskoči odjavnu špicu i pokreni sljedeću epizodu.',
			'settings.skipMarkerModeOff' => 'Isključeno',
			'settings.skipMarkerModeButton' => 'Prikaži gumb',
			'settings.skipMarkerModeAuto' => 'Automatski',
			'settings.forceSkipMarkerFallback' => 'Otkrijte preskakanje iz naziva poglavlja',
			'settings.forceSkipMarkerFallbackDescription' => 'Traži oznake uvodne i odjavne špice u nazivima poglavlja čak i kad ih poslužitelj već nudi.',
			'settings.autoSkipDelay' => 'Odgoda automatskog preskakanja',
			'settings.autoSkipDelayDescription' => ({required Object seconds}) => 'Pričekajte ${seconds} sekundi prije automatskog preskakanja',
			'settings.introPattern' => 'Uzorak za oznake uvodne špice',
			'settings.introPatternDescription' => 'Regularni izraz za prepoznavanje oznaka uvodne špice u nazivima poglavlja.',
			'settings.creditsPattern' => 'Uzorak za oznake odjavne špice',
			'settings.creditsPatternDescription' => 'Regularni izraz za prepoznavanje oznaka odjavne špice u nazivima poglavlja.',
			'settings.invalidRegex' => 'Nevažeći regularni izraz',
			'settings.regex' => 'Regularni izraz',
			'settings.downloads' => 'Preuzimanja',
			'settings.downloadLocationDescription' => 'Odaberite gdje spremati preuzeti sadržaj',
			'settings.downloadLocationDefault' => 'Zadano (pohrana aplikacije)',
			'settings.downloadLocationCustom' => 'Prilagođeno mjesto',
			'settings.selectFolder' => 'Odaberite mapu',
			'settings.resetToDefault' => 'Vrati na zadano',
			'settings.currentPath' => ({required Object path}) => 'Trenutno: ${path}',
			'settings.downloadLocationChanged' => 'Lokacija preuzimanja promijenjena',
			'settings.downloadLocationReset' => 'Lokacija preuzimanja vraćena je na zadanu.',
			'settings.downloadLocationInvalid' => 'U odabranu mapu nije moguće pisati',
			'settings.downloadLocationPickerUnavailable' => 'Odabir mape nije dostupan na ovom uređaju',
			'settings.downloadOnWifiOnly' => 'Preuzmi samo na Wi-Fi',
			'settings.downloadOnWifiOnlyDescription' => 'Spriječi preuzimanje putem mobilnih podataka',
			'settings.autoRemoveWatchedDownloads' => 'Automatsko uklanjanje gledanih preuzimanja',
			'settings.autoRemoveWatchedDownloadsDescription' => 'Automatsko brisanje gledanih preuzimanja',
			'settings.cellularDownloadBlocked' => 'Preuzimanja su blokirana na mobilnoj mreži. Koristite Wi-Fi ili promijenite postavku.',
			'settings.maxVolume' => 'Maksimalna glasnoća',
			'settings.maxVolumeDescription' => 'Dopusti pojačavanje glasnoće iznad 100 % za tihe snimke.',
			'settings.maxVolumePercent' => ({required Object percent}) => '${percent}%',
			'settings.discordRichPresence' => 'Status aktivnosti na Discordu',
			'settings.discordRichPresenceDescription' => 'Prikažite što gledate na Discordu',
			'settings.services' => 'Integracije',
			'settings.servicesDescription' => 'Povežite Trakt, MyAnimeList, Seerr i više',
			'settings.manageLibrariesDescription' => 'Promijeni redoslijed i sakrij biblioteke.',
			'settings.companionRemoteServer' => 'Poslužitelj za daljinsko upravljanje',
			'settings.companionRemoteServerDescription' => 'Dopusti mobilnim uređajima na vašoj mreži upravljanje ovom aplikacijom.',
			'settings.companionRemoteServerStartFailed' => 'Nije moguće pokrenuti poslužitelj za daljinsko upravljanje.',
			'settings.companionRemoteServerStopFailed' => 'Nije moguće zaustaviti poslužitelj za daljinsko upravljanje.',
			'settings.autoPip' => 'Automatska slika u slici',
			'settings.autoPipDescription' => 'Automatski uključi prikaz slike u slici kad tijekom reprodukcije izađeš iz aplikacije.',
			'settings.matchContentFrameRate' => 'Uskladi broj sličica u sekundi',
			'settings.matchContentFrameRateDescription' => 'Uskladi frekvenciju zaslona s videom kako bi se filmovi reproducirali bez trzanja.',
			'settings.matchContentResolution' => 'Uskladi razlučivost sa sadržajem',
			'settings.matchContentResolutionDescription' => 'Postavi izvornu razlučivost videa kako bi televizor povećao sliku. Tijekom reprodukcije povećavaju se i izbornici i titlovi.',
			'settings.matchRefreshRate' => 'Uskladi frekvenciju osvježavanja',
			'settings.matchRefreshRateDescription' => 'Uskladi frekvenciju osvježavanja zaslona u prikazu preko cijelog zaslona.',
			'settings.matchDynamicRange' => 'Uskladi dinamički raspon',
			'settings.matchDynamicRangeDescription' => 'Uključi HDR za HDR sadržaj, a zatim se vrati na SDR.',
			'settings.displaySwitchDelay' => 'Odgoda prebacivanja zaslona',
			'settings.tunneledPlayback' => 'Tunelirana reprodukcija',
			'settings.tunneledPlaybackDescription' => 'Koristi tuneliranu reprodukciju videa. Isključi ako je HDR slika crna ili se videozapis trza.',
			'settings.audioPassthrough' => 'Izravni prijenos zvuka',
			'settings.audioPassthroughDescription' => 'Šalje Dolby/DTS zvuk na prijamnik ili televizor bez ponovnog kodiranja, uz očuvanje višekanalnog zvuka. Isključi ako nema zvuka.',
			'settings.audioPassthroughDescriptionApple' => 'Koristite Appleov izvorni Dolby dekoder za Dolby Digital Plus, uključujući Atmos. DTS i TrueHD i dalje se reproduciraju kao višekanalni PCM. Isključite ako nemate zvuk.',
			'settings.audioPassthroughDescriptionAppleSpatial' => 'Koristi Appleov izvorni Dolby dekoder za Dolby Digital Plus, uključujući Atmos. U sustavima iOS, iPadOS i tvOS 26 ili novijima TrueHD Atmos i DTS:X reproduciraju se kao prostorni zvuk. Ostali DTS i TrueHD zvučni zapisi reproduciraju se kao višekanalni PCM. Isključi ako nema zvuka.',
			'settings.audioPassthroughOverriddenByNormalization' => 'Isključeno dok je uključena normalizacija glasnoće',
			'settings.audioChannelLimit' => 'Broj zvučnih kanala',
			'settings.audioChannelLimitDescription' => 'Svedi dekodirani zvuk na broj kanala koji mogu reproducirati zvučnici, slušalice ili HDMI sustav.',
			'settings.audioChannelLimitOriginal' => 'Izvorno',
			'settings.audioChannelLimitOriginalDescription' => 'Reproduciraj sve kanale zvučnog zapisa.',
			'settings.audioChannelLimitSurround51' => 'Do 5.1',
			'settings.audioChannelLimitSurround51Description' => 'Svedi 7.1 zvuk na 5.1 za televizore i prijamnike koji podržavaju samo 5.1 PCM. Ne utječe na izravni prijenos zvuka.',
			'settings.audioChannelLimitStereo' => 'Stereo',
			'settings.audioChannelLimitStereoDescription' => 'Svedi zvuk na dva kanala za stereo zvučnike ili slušalice. Isključuje izravni prijenos zvuka.',
			'settings.downmixCenterBoost' => 'Pojačanje središnjeg kanala',
			'settings.downmixCenterBoostValue' => ({required Object db}) => '${db} dB',
			'settings.downmixCenterBoostLabel' => 'Pojačanje (dB)',
			'settings.downmixCenterBoostShort' => 'dB',
			'settings.audioDownmixNormalize' => 'Ujednači glasnoću pri svođenju kanala',
			'settings.audioDownmixNormalizeDescription' => 'Smanji glasnoću kako bi se spriječilo izobličenje. Isključi za očuvanje izvorne glasnoće (glasne scene mogu se izobličiti).',
			'settings.dvConversionMode' => 'Dolby Vision pretvorba',
			'settings.dvConversionModeDescription' => 'Odaberite kako se rukuje datotekama Dolby Vision profila 7.',
			'settings.dvConversionAuto' => 'Automatski',
			'settings.dvConversionNative' => 'Izvorno/onemogućeno',
			'settings.dvConversionDv81' => 'P7 → P8.1',
			'settings.dvConversionHevcStrip' => 'P7 → HEVC',
			'settings.dvConversionAutoDescription' => 'Upotrijebite otkrivanje mogućnosti uređaja i normalno zamjensko ponašanje',
			'settings.dvConversionNativeDescription' => 'Forsirajte izvorni DV7 i onemogućite ponovni pokušaj DV konverzije',
			'settings.dvConversionDv81Description' => 'Prisilno inline RPU pretvaranje u Dolby Vision profil 8.1',
			'settings.dvConversionHevcStripDescription' => 'Skinite slojeve Dolby Vision RPU/EL i predstavite obični HEVC',
			'settings.disableDolbyVision' => 'Onemogući Dolby Vision',
			'settings.disableDolbyVisionDescription' => 'Reproducirajte HDR10 ili HLG sloj datoteke umjesto Dolby Vision, ako ga ima',
			'settings.hdrSdrConversion' => 'Pretvorba HDR u SDR',
			'settings.hdrSdrConversionDescription' => 'Odaberite čime će se HDR video pretvoriti kad ga zaslon ne može prikazati.',
			'settings.hdrSdrConversionAuto' => 'Automatski',
			'settings.hdrSdrConversionAutoDescription' => 'Neka aplikacija odabere što najbolje funkcionira na ovom uređaju',
			'settings.hdrSdrConversionDevice' => 'Uređaj',
			'settings.hdrSdrConversionDeviceDescription' => 'Pretvorbu obavlja videohardver uređaja. Najbrža je, ali boje ovise o uređaju.',
			'settings.hdrSdrConversionPlayer' => 'Reproduktor',
			'settings.hdrSdrConversionPlayerDescription' => 'Pretvorbu obavlja reproduktor. Boje su ujednačene, ali 4K video može zastajkivati na slabijim TV uređajima.',
			'settings.deinterlace' => 'Uklanjanje isprepletenosti',
			'settings.deinterlaceDescription' => 'Ukloni nazubljene rubove sa starih TV snimki i DVD-ova (samo u reproduktoru mpv).',
			'settings.deinterlaceOff' => 'Isključeno',
			'settings.deinterlaceOffDescription' => 'Prikaži isprepleteni videozapis bez obrade.',
			'settings.deinterlaceVideo' => 'Video',
			'settings.deinterlaceVideoDescription' => 'Pretvara svako polusličicu u punu sličicu. Koristi se za TV snimke sporta, vijesti, koncerata i sličnog sadržaja.',
			'settings.deinterlaceFilm' => 'Film',
			'settings.deinterlaceFilmDescription' => 'Vraća izvorne sličice filma i animacije pretvorenih u 29,97 sličica u sekundi, što je uobičajeno na NTSC DVD-ovima. TV snimke mogu trzati. Za TV uživo koristi se način Video.',
			'settings.requireProfileSelectionOnOpen' => 'Zatražite profil pri otvaranju aplikacije',
			'settings.requireProfileSelectionOnOpenDescription' => 'Prikaži odabir profila pri svakom otvaranju aplikacije',
			'settings.forceTvMode' => 'Nametni TV način',
			'settings.forceTvModeKeepTitle' => 'Zadrži TV izgled?',
			'settings.forceTvModeKeepBody' => ({required Object seconds}) => 'TV izgled je dizajniran za daljinske upravljače. Vraćanje na normalni izgled za ${seconds} s.',
			'settings.forceTvModeKeepConfirm' => 'Zadrži TV izgled',
			'settings.forceTvModeReverted' => 'TV izgled je poništen',
			'settings.forceTvModeDescription' => 'Nametni TV izgled. Za uređaje koji se ne otkriju automatski. Zahtijeva ponovno pokretanje.',
			'settings.startInFullscreen' => 'Počnite na cijelom zaslonu',
			'settings.startInFullscreenDescription' => 'Otvorite Luroka na cijelom zaslonu pri pokretanju',
			'settings.exitFullscreenOnPlayerClose' => 'Izađi iz cijelog zaslona pri zatvaranju reproduktora',
			'settings.exitFullscreenOnPlayerCloseDescription' => 'Automatski izađi iz cijelog zaslona pri zatvaranju videoreproduktora.',
			'settings.autoHidePerformanceOverlay' => 'Automatski sakrij prikaz performansi',
			'settings.autoHidePerformanceOverlayDescription' => 'Izblijedite sloj izvedbe pomoću kontrola reprodukcije',
			'settings.showNavBarLabels' => 'Prikaži oznake na navigacijskoj traci',
			'settings.showNavBarLabelsDescription' => 'Prikaz tekstualnih oznaka ispod ikona navigacijske trake',
			'settings.startupSection' => 'Odjeljak za pokretanje',
			'settings.showExploreTab' => 'Prikaži karticu Istraži',
			'settings.showExploreTabDescription' => 'Prikaži karticu Istraži sa sadržajem iz Plex Discovera i povezanih servisa za praćenje.',
			'settings.liveTvDefaultFavorites' => 'Zadani Omiljeni kanali',
			'settings.liveTvDefaultFavoritesDescription' => 'Prikaži samo omiljene kanale kada otvorite TV uživo',
			'settings.general' => 'Općenito',
			'settings.generalDescription' => 'Jezik, pokretanje i ponašanje prozora',
			'settings.languageAndRegion' => 'Jezik i regija',
			'settings.startup' => 'Pokretanje',
			'settings.display' => 'Zaslon',
			'settings.libraryAndCards' => 'Biblioteke i kartice',
			'settings.homeScreen' => 'Početni zaslon',
			'settings.navigation' => 'Navigacija',
			'settings.window' => 'Prozor',
			'settings.liveTv' => 'Televizija uživo',
			'settings.player' => 'Reproduktor',
			_ => null,
		} ?? switch (path) {
			'settings.videoAndDisplay' => 'Video i zaslon',
			'settings.audio' => 'Zvuk',
			'settings.quality' => 'Kvaliteta',
			'settings.subtitles' => 'Titlovi',
			'settings.seekAndTiming' => 'Premotavanje i vrijeme',
			'settings.behavior' => 'Ponašanje',
			'settings.gestures' => 'Pokreti',
			'settings.gestureBrightnessSwipe' => 'Svjetlina',
			'settings.gestureBrightnessSwipeDescription' => 'Prijeđite prstom gore ili dolje na lijevom rubu za podešavanje svjetline',
			'settings.gestureVolumeSwipe' => 'Prevlačenje glasnoće',
			'settings.gestureVolumeSwipeDescription' => 'Prijeđite prstom gore ili dolje na desnom rubu za podešavanje glasnoće',
			'settings.gesturePinchToZoom' => 'Stisnite prste za zumiranje',
			'settings.gesturePinchToZoomDescription' => 'Stisnite prste na videozapisu za povećanje ili smanjenje',
			'settings.rememberBrightnessLevel' => 'Zapamtite razinu svjetline',
			'settings.rememberBrightnessLevelDescription' => 'Započnite reprodukciju na svjetlini postavljenoj zadnjim prelaskom',
			'settings.controls' => 'Kontrole',
			'settings.rememberPlayerChanges' => 'Zapamti promjene postavki reproduktora',
			'settings.rememberPlayerChangesDescription' => 'Spremi promjene postavki tijekom reprodukcije i primijeni ih sljedeći put.',
			'settings.scopePlaybackSpeed' => 'Brzina reprodukcije',
			'settings.scopeShaderPreset' => 'Unaprijed postavljeni shader',
			'settings.scopeAspectRatio' => 'Omjer slike',
			'settings.scopeSyncOffsets' => 'Sinkronizacija zvuka i titlova',
			'settings.playerScopeOff' => 'Ne pamti postavke',
			'settings.playerScopeGlobal' => 'Za sve sadržaje',
			'settings.playerScopeLibrary' => 'Po biblioteci',
			'settings.playerScopeTitle' => 'Za svaku seriju ili film',
			'settings.exportDialogTitle' => 'Izvezite postavke Luroka',
			'settings.velvetHourTheme' => 'Baršunasti sat',
			'themeEditor.builtIn' => 'Ugrađeni',
			'themeEditor.presets' => 'Unaprijed postavljene postavke',
			'themeEditor.custom' => 'Prilagođeno',
			'themeEditor.customEmpty' => 'Još nije stvoreno',
			'themeEditor.editCustom' => 'Uredi prilagođenu temu',
			'themeEditor.editCustomDescription' => 'Svaku boju odaberite sami',
			'themeEditor.locked' => 'Otključaj uz podršku',
			'themeEditor.savedLocked' => 'Spremljeno — otključava se uz podršku',
			'themeEditor.title' => 'Prilagođena tema',
			'themeEditor.startFrom' => 'Počnite od',
			'themeEditor.startFromDescription' => 'Kopirajte sve boje iz druge teme',
			'themeEditor.colors' => 'Boje',
			'themeEditor.preview' => 'Pregled',
			'themeEditor.slots.bg' => 'Pozadina',
			'themeEditor.slots.surface' => 'Površina',
			'themeEditor.slots.outline' => 'Obris',
			'themeEditor.slots.text' => 'Tekst',
			'themeEditor.slots.textMuted' => 'Sekundarni tekst',
			'themeEditor.slots.accent' => 'Naglasak',
			'themeEditor.opacity' => 'Neprozirnost',
			'themeEditor.hexHint' => '#RRGGBB ili #AARRGGBB',
			'themeEditor.fromOtherThemes' => 'Od drugih tema',
			'themeEditor.swatchLabel' => ({required Object theme, required Object color}) => '${theme} ${color}',
			'themeEditor.contrast.textOnBg' => 'Tekst na pozadini',
			'themeEditor.contrast.textOnSurface' => 'Tekst na površini',
			'themeEditor.contrast.textMutedOnBg' => 'Sekundarni tekst na pozadini',
			'themeEditor.contrast.textMutedOnSurface' => 'Sekundarni tekst na površini',
			'themeEditor.contrast.accentOnBg' => 'Naglasak na pozadini',
			'themeEditor.contrast.accentOnSurface' => 'Naglasak na površini',
			'themeEditor.contrast.labelOnAccent' => 'Oznaka gumba na naglasku',
			'themeEditor.lowContrast' => ({required Object pair, required Object ratio, required Object minimum}) => '${pair}: ${ratio}:1, ispod preporučenog ${minimum}:1',
			'themeEditor.discardTitle' => 'Odbaciti promjene?',
			'themeEditor.discardMessage' => 'Vaše nespremljene promjene boja bit će izgubljene.',
			'themeEditor.discard' => 'Odbaciti',
			'themeEditor.previewCardTitle' => ({required Object number}) => 'Epizoda ${number}',
			'themeEditor.previewCardSubtitle' => ({required Object minutes}) => 'Preostalo ${minutes} min',
			'themeEditor.previewSwitch' => 'Automatska reprodukcija',
			'themeEditor.previewMutedText' => 'Sekundarni tekst glasi ovako',
			'seriesBrowser.oneEpisode' => '1 epizoda',
			'seriesBrowser.watchedCount' => ({required Object count}) => '${count} pogledanih',
			'seriesBrowser.episodeCount' => ({required Object count}) => '${count} epizoda',
			'seriesBrowser.episodesFor' => ({required Object season}) => '${season} · Epizode',
			'seriesBrowser.enterHint' => 'Odaberite: otvorena sezona · ↓: epizode',
			'titlePage.genre' => 'Žanr',
			'titlePage.remaining' => ({required Object time}) => 'Preostalo ${time}',
			'titlePage.continueEpisode' => ({required Object season, required Object episode}) => 'Nastavi gledati S${season} E${episode}',
			'titlePage.watchlist' => 'Popis za gledanje',
			'titlePage.more' => 'Više',
			'tvMenus.appearanceDescription' => 'Tema, margine zaslona i posteri',
			'lurokaPlayer.title' => 'Postavke reproduktora',
			'lurokaPlayer.watch' => 'Gledanje',
			'lurokaPlayer.watchDescription' => 'Odaberite tempo reprodukcije i što slijedi.',
			'lurokaPlayer.picture' => 'Postavke slike',
			'lurokaPlayer.pictureDescription' => 'Zumiranje, HDR i obrada videa',
			'lurokaPlayer.sound' => 'Zvuk i titlovi',
			'lurokaPlayer.audioSettings' => 'Postavke zvuka',
			'lurokaPlayer.soundDescription' => 'Sinkronizacija, glasnoća i zvučni izlaz',
			'lurokaPlayer.chooseTracks' => 'Odaberite jezike i titlove',
			'lurokaPlayer.tools' => 'Napredno',
			'lurokaPlayer.toolsDescription' => 'Podaci o reprodukciji i dijagnostika',
			'lurokaPlayer.preferences' => 'Postavke reprodukcije',
			'lurokaPlayer.preferencesDescription' => 'Postavke gledanja. Najprije odaberite zvuk i titlove, a zatim prilagodite strujanje i prikaz.',
			'lurokaPlayer.streamPreferences' => 'Kvaliteta slike',
			'lurokaPlayer.displayPreferences' => 'Prikaz',
			'lurokaPlayer.enginePreferences' => 'Napredne postavke reproduktora',
			'lurokaPlayer.seekPreferences' => 'Premotavanje',
			'lurokaPlayer.watchPreferences' => 'Automatska reprodukcija i preskakanje',
			'lurokaPlayer.rememberPreferences' => 'Pamti postavke',
			'lurokaSettings.quickSetup' => 'Brzo postavljanje',
			'lurokaSettings.quickSetupDescription' => 'Brzo postavite osnovne mogućnosti: kretanje kroz TV sučelje, prilagodbu slike zaslonu, izgled početne stranice i reprodukciju.',
			'lurokaSettings.experience' => 'Vaše iskustvo',
			'lurokaSettings.experienceDescription' => 'Prilagodite Luroku: izgled, jezik, reprodukciju, biblioteke i vrijeme uporabe zaslona.',
			'lurokaSettings.remoteHint' => '↑ ↓ Pregledaj kategorije · → / Odaberi za otvaranje opcija · ← Natrag na kategorije',
			'playerChrome.browse' => 'Poglavlja i red čekanja',
			'playerChrome.backToPlayback' => 'Povratak na reprodukciju',
			'playerChrome.nowPlaying' => 'TRENUTNO SE REPRODUCIRA',
			'playerChrome.options' => 'OPCIJE REPRODUKTORA',
			'tvLayout.screenMargins' => 'TV rubovi zaslona',
			'tvLayout.screenMarginsDescription' => 'Smanjite rubove aplikacije ako vaš TV odreže dio slike',
			'tvLayout.screenMarginsDefault' => '0 % (zadano)',
			'studios.checkingCopies' => 'Provjera ostalih biblioteka... U svakom trenutku možete odabrati već pronađenu kopiju.',
			'studios.incompleteCopies' => 'Nije moguće provjeriti neke biblioteke. Odaberite već pronađenu kopiju ili odustanite i pokušajte ponovno.',
			'studios.partialFavorites' => 'Neki favoriti se ne mogu učitati. Odaberite Osvježi za ponovni pokušaj.',
			'studios.copyLookupFailedTitle' => 'Nije moguće provjeriti sve kopije',
			'studios.copyLookupFailedMessage' => 'Neke biblioteke nisu odgovorile. Možete otvoriti jednu od već pronađenih kopija ili odustati i pokušati ponovno.',
			'studios.openKnownCopies' => 'Prikaži poznate kopije',
			'studios.browseAll' => 'Pregledaj sve',
			'studios.titleCount' => ({required Object count}) => '${count} naslova',
			'studios.topRated' => 'Najbolje ocijenjeno',
			'studios.mostWatched' => 'Najgledanije u vašoj biblioteci',
			'studios.collection' => 'ZBIRKA STUDIJA',
			'studios.loadedTitles' => ({required Object count}) => 'Učitano naslova: ${count}',
			'studios.sort' => 'Poredaj naslove',
			'studios.sortTitleAscending' => 'Naslov A–Z',
			'studios.sortTitleDescending' => 'Naslov Z–A',
			'studios.sortNewest' => 'Najnovije izdanje',
			'studios.sortOldest' => 'Najstarije izdanje',
			'studios.sortAdded' => 'Nedavno dodano',
			'studios.sortEpisodeAdded' => 'Nedavno dodana epizoda',
			'studios.sortRating' => 'Najviša ocjena',
			'studios.title' => 'Pregled po studiju',
			'studios.all' => 'Sve',
			'studios.movies' => 'Filmovi',
			'studios.shows' => 'TV emisije',
			'studios.loadMore' => 'Učitaj više naslova',
			'studios.empty' => 'U trenutačno vidljivim bibliotekama nema odgovarajućih naslova.',
			'studios.retry' => 'Nije moguće učitati više naslova — odaberi za ponovni pokušaj.',
			'studios.description' => 'Pregledajte filmove i serije ovog studija u svojim bibliotekama.',
			'dashboard.previousFeature' => 'Prethodni istaknuti naslov',
			'dashboard.nextFeature' => 'Sljedeći istaknuti naslov',
			'dashboard.cinemaHome' => 'POČETNA',
			'dashboard.episodeFallback' => 'TV epizoda',
			'dashboard.timeLeft' => ({required Object minutes}) => 'Preostalo je ${minutes} min',
			'dashboard.timeLeftHours' => ({required Object hours, required Object minutes}) => 'Preostalo je ${hours} h i ${minutes} min',
			'dashboard.spoilerHidden' => 'Pojedinosti o epizodi skrivene su zbog postavke za skrivanje spoilera.',
			'dashboard.synopsisUnavailable' => 'Otvori pojedinosti da saznaš više o ovom naslovu.',
			'dashboard.yourSpace' => 'VAŠ PROSTOR',
			'dashboard.title' => 'Vaša filmska priča.',
			'dashboard.subtitle' => 'Nastavite priču ili pronađite sljedeću.',
			'dashboard.featured' => 'LUROKIN IZBOR',
			'dashboard.jumpBackIn' => 'Nastavite gledati',
			'dashboard.episodeLabel' => ({required Object season, required Object episode}) => 'S${season} · E${episode}',
			'dashboard.anotherPick' => 'Još jedan izbor',
			'dashboard.exploreSeries' => 'Istražite seriju',
			'dashboard.showFeatured' => 'Pojedinosti istaknutog naslova',
			'dashboard.showFeaturedDescription' => 'Prikaži sliku, sinopsis i informacije o epizodi za istaknutu karticu',
			'lurokaCatalog.aboutPerson' => 'U SREDIŠTU POZORNOSTI',
			'lurokaCatalog.biographyUnavailable' => 'Biografija nije dostupna s ovog poslužitelja.',
			'lurokaCatalog.filmography' => 'Filmovi i serije u vašim bibliotekama',
			'lurokaCatalog.recommended' => 'Preporučeno',
			'lurokaCatalog.browse' => 'Svi naslovi',
			'lurokaCatalog.collections' => 'Zbirke',
			'lurokaCatalog.browseHint' => 'Pregledajte katalog i suzite izbor filtrima i sortiranjem.',
			'lurokaCatalog.recommendedHint' => 'Pronađite svoju sljedeću priču',
			'lurokaCatalog.details' => 'Iza priče',
			'referenceDetails.oneEpisodeLeft' => 'Još 1 epizoda',
			'referenceDetails.playAll' => 'Reproduciraj sve',
			'referenceDetails.present' => 'Trenutačno',
			'referenceDetails.continuing' => 'U tijeku',
			'referenceDetails.upNext' => 'Sljedeći',
			'referenceDetails.episodesLeft' => ({required Object count}) => 'Preostalo epizoda: ${count}',
			'lurokaThemes.title' => 'Palete boja Luroke',
			'lurokaThemes.coral' => 'Koralj · ponoćno plava i zalazak sunca',
			'lurokaThemes.ocean' => 'Ocean · tamnoplava i ledenoplava',
			'lurokaThemes.jade' => 'Žad · tamnozelena i boja mente',
			'lurokaThemes.amethyst' => 'Ametist · ponoćna ljubičica',
			'lurokaThemes.darkThemes' => 'Mračne kinematografske teme',
			'lurokaThemes.lightThemes' => 'Lagane kino teme',
			'lurokaThemes.moreThemes' => 'Više tema',
			'lurokaThemes.moreThemesDescription' => 'Pregledajte dodatne palete i prilagođene boje',
			'lurokaThemes.obsidian' => 'Obsidijan · čista crna i boja šampanjca',
			'lurokaThemes.nocturne' => 'Nokturno · ugljen i šampanjac',
			'lurokaThemes.burgundy' => 'Bordo · baršunasto vino i ruža',
			'lurokaThemes.slate' => 'Škriljevac · grafitna i modroljubičasta',
			'lurokaThemes.espresso' => 'Espresso · kakao i karamela',
			'lurokaThemes.pearl' => 'Biser · porculan i safir',
			'lurokaThemes.linen' => 'Lan · topla boja slonovače i terakote',
			'lurokaThemes.sunrise' => 'Izlazak sunca · boja breskve i koraljna',
			'lurokaThemes.coastal' => 'Obala · boja magle i mora',
			'lurokaThemes.latte' => 'Latte · kremasta i karamelna',
			'lurokaThemes.sage' => 'Kadulja · nježno zelena i eukaliptus',
			'lurokaThemes.lavender' => 'Lavanda · lila & tamnoljubičasta',
			'customPerformance.title' => 'Performanse i efekti',
			'customPerformance.fireStickMode' => 'Način rada uređaja male snage',
			'customPerformance.description' => 'Koristi manje efekata, nepomične pozadine, slike razlučivosti do 720p i predmemoriju slika od 40 MiB. Dok je ova opcija uključena, nadjačava postavku vizualnih efekata. Isključivanjem se vraća prethodna postavka.',
			'customPerformance.detailsTitle' => 'Pojedinosti o performansama',
			'customPerformance.details' => 'Aktivni efekti, ograničenje predmemorije slika i mjerenja brzine pregledavanja',
			'customPerformance.effectsTier' => 'Razina aktivnih učinaka',
			'customPerformance.imageCache' => 'Ograničenje predmemorije slike',
			'customPerformance.measurement' => 'Mjerenje performansi',
			'customPerformance.measureInstructions' => 'Pokrenite mjerenje od 20 sekundi, vratite se na početnu stranicu i krećite se kroz aplikaciju daljinskim upravljačem. Vratite se ovamo da biste vidjeli rezultate. Za usporedbu ponovite iste radnje s uključenom i isključenom opcijom. Mjeri se rad Flutterova sučelja, a ne performanse videodekodera.',
			'customPerformance.startSample' => 'Pokrenite uzorak od 20 sekundi',
			'customPerformance.stopSample' => 'Završite uzorak sada',
			'customPerformance.sampling' => 'Mjerenje je u tijeku — vratite se na početnu stranicu i koristite aplikaciju. Rezultati će se prikazati ovdje.',
			'customPerformance.frames' => 'Izmjerene sličice',
			'customPerformance.slowFrames' => 'Sličice koje su prekoračile vremensko ograničenje',
			'customPerformance.buildP95' => 'Vrijeme iscrtavanja sučelja (95. percentil)',
			'customPerformance.rasterP95' => 'Vrijeme rasterizacije (95. percentil)',
			'customPerformance.frameBudget' => 'Vremensko ograničenje po sličici',
			'customPerformance.processMemory' => 'Memorija procesa aplikacije na kraju uzorka',
			'customPerformance.noFrames' => 'Nisu zabilježene iscrtane sličice. Pokrenite novo mjerenje i koristite aplikaciju.',
			'homeLayout.title' => 'Prilagodi početnu stranicu',
			'homeLayout.description' => 'Odaberite redoslijed redaka i vidljivost za ovaj profil. Odaberite redak da biste ga premjestili ili sakrili.',
			'homeLayout.rows' => 'Retci početne stranice',
			'homeLayout.visible' => 'Vidljivo',
			'homeLayout.hidden' => 'Skriveno',
			'homeLayout.showRow' => 'Prikaži red',
			'homeLayout.hideRow' => 'Sakrij red',
			'homeLayout.moveUp' => 'Pomakni gore',
			'homeLayout.moveDown' => 'Pomakni dolje',
			'homeLayout.pinnedCollections' => 'Prikvačene zbirke',
			'homeLayout.pinInstructions' => 'Otvori izbornik zbirke i odaberi Prikvači na početnu. Ovdje odaberi prikvačenu zbirku da ukloniš njezin prečac.',
			'homeLayout.pinCollection' => 'Prikvači na početnu',
			'homeLayout.unpinCollection' => 'Otkvači s početne stranice',
			'homeLayout.reset' => 'Vrati zadane retke',
			'homeLayout.resetDescription' => 'Želite li vratiti izvorni redoslijed redaka i prikazati ih sve za ovaj profil? Prikvačene zbirke ostat će sačuvane.',
			'homeLayout.saveFailed' => 'Nije moguće spremiti raspored početne stranice. Pokušajte ponovno.',
			'homeLayout.emptyHint' => 'Neki retci možda su skriveni. Otvorite Prilagodi početnu stranicu da biste ih ponovno prikazali.',
			'screenTime.title' => 'Vrijeme gledanja',
			'screenTime.description' => 'Prikazuje koliko je vremena na ovom profilu provedeno gledajući videozapise.',
			'screenTime.today' => 'Danas',
			'screenTime.thisWeek' => 'Ovaj tjedan',
			'screenTime.thisMonth' => 'Ovaj mjesec',
			'screenTime.lessThanMinute' => '< 1 min',
			'screenTime.minutes' => ({required Object count}) => '${count} min',
			'screenTime.hours' => ({required Object count}) => '${count} h',
			'screenTime.hoursMinutes' => ({required Object hours, required Object minutes}) => '${hours} h ${minutes} min',
			'activityStats.title' => 'Statistika gledanja',
			'activityStats.period' => 'Razdoblje',
			'activityStats.last7Days' => '7 dana',
			'activityStats.last30Days' => '30 dana',
			'activityStats.last90Days' => '90 dana',
			'activityStats.thisYear' => 'Ove godine',
			'activityStats.allTime' => 'Ukupno',
			'activityStats.heroAllTime' => 'Ukupno',
			'activityStats.heroDailyAverage' => 'Dnevni prosjek',
			'activityStats.consistency' => 'Dosljednost',
			'activityStats.currentStreak' => 'Trenutačni niz',
			'activityStats.dayCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hr'))(n, one: '${n} dan', few: '${n} dana', other: '${n} dana', ), 
			'activityStats.longestStreak' => 'Najduži niz',
			'activityStats.bestDay' => 'Najbolji dan',
			'activityStats.bestWeek' => 'Najbolji tjedan',
			'activityStats.trendTitle' => 'Vrijeme gledanja',
			'activityStats.trendToday' => 'Danas',
			'activityStats.gapDetail' => ({required Object stat, required Object range}) => '${stat} · ${range}',
			'activityStats.patternsTitle' => 'Vaše navike gledanja',
			'activityStats.mostlyKind' => ({required Object kind}) => 'Najviše: ${kind}',
			'activityStats.weekdayTitle' => 'Po danu tjedna',
			'activityStats.hoursTitle' => 'Po satu dana',
			'activityStats.amLabel' => 'AM',
			'activityStats.pmLabel' => 'PM',
			'activityStats.kindsTitle' => 'Po kategoriji',
			'activityStats.kindMovie' => 'Filmovi',
			'activityStats.kindTv' => 'TV',
			'activityStats.kindLiveTv' => 'Televizija uživo',
			'activityStats.kindMusic' => 'Glazba',
			'activityStats.kindOther' => 'Ostalo',
			'activityStats.topTitlesTitle' => 'Najgledanije',
			'activityStats.sessionsTitle' => 'Nedavne sesije',
			'activityStats.showMore' => 'Prikaži više',
			'activityStats.sessionNoTitle' => 'Nepoznat naslov',
			'activityStats.emptyTitle' => 'Još nema podataka',
			'activityStats.emptyBody' => 'Pogledajte nešto i ovdje će se prikazati vaša statistika.',
			'activityStats.noDataInPeriod' => 'U ovom razdoblju nije snimljena reprodukcija.',
			'search.hint' => 'Pretražite filmove, serije i glazbu...',
			'search.tryDifferentTerm' => 'Pokušajte s drugim pojmom za pretraživanje',
			'search.searchYourMedia' => 'Pretražite svoju zbirku',
			'search.enterTitleActorOrKeyword' => 'Unesite naslov, glumca ili ključnu riječ',
			'search.people' => 'Ljudi',
			'search.recentSearches' => 'Nedavne pretrage',
			'search.clearHistory' => 'Obriši povijest',
			'hotkeys.setShortcutFor' => ({required Object actionName}) => 'Postavite prečac za ${actionName}',
			'hotkeys.clearShortcut' => 'Obriši prečac',
			'hotkeys.noShortcutSet' => 'Nema postavljenih prečaca',
			'hotkeys.currentShortcut' => 'Trenutačni prečac:',
			'hotkeys.pressToRecord' => 'Odaberite za snimanje prečaca',
			'hotkeys.recordingShortcut' => 'Sada pritisnite prečac',
			'hotkeys.actions.playPause' => 'Reprodukcija/Pauza',
			'hotkeys.actions.volumeUp' => 'Povećaj glasnoću',
			'hotkeys.actions.volumeDown' => 'Stišaj zvuk',
			'hotkeys.actions.seekForward' => ({required Object seconds}) => 'Traži naprijed (${seconds}s)',
			'hotkeys.actions.seekBackward' => ({required Object seconds}) => 'Traži unatrag (${seconds}s)',
			'hotkeys.actions.fullscreenToggle' => 'Uključi/isključi cijeli zaslon',
			'hotkeys.actions.muteToggle' => 'Uključi zvuk',
			'hotkeys.actions.subtitleToggle' => 'Uključi titlove',
			'hotkeys.actions.audioTrackNext' => 'Sljedeći zvučni zapis',
			'hotkeys.actions.subtitleTrackNext' => 'Sljedeći zapis titla',
			'hotkeys.actions.chapterNext' => 'Sljedeće poglavlje',
			'hotkeys.actions.chapterPrevious' => 'Prethodno poglavlje',
			'hotkeys.actions.episodeNext' => 'Sljedeća epizoda',
			'hotkeys.actions.episodePrevious' => 'Prethodna epizoda',
			'hotkeys.actions.speedIncrease' => 'Povećaj brzinu',
			'hotkeys.actions.speedDecrease' => 'Smanji brzinu',
			'hotkeys.actions.speedReset' => 'Poništi brzinu',
			'hotkeys.actions.zoomIn' => 'Povećaj',
			'hotkeys.actions.zoomOut' => 'Smanji',
			'hotkeys.actions.zoomReset' => 'Resetiraj zumiranje',
			'hotkeys.actions.subSeekNext' => 'Traženje sljedećeg titla',
			'hotkeys.actions.subSeekPrev' => 'Traži na prethodni titl',
			'hotkeys.actions.shaderToggle' => 'Uključi/isključi shadere',
			'hotkeys.actions.skipMarker' => 'Preskoči uvodnu ili odjavnu špicu',
			'hotkeys.actions.screenshot' => 'Napravite snimku zaslona',
			'fileInfo.title' => 'Podaci o datoteci',
			'fileInfo.overview' => 'Pregled',
			'fileInfo.video' => 'Videozapis',
			'fileInfo.audio' => 'Zvuk',
			'fileInfo.subtitles' => 'Titlovi',
			'fileInfo.images' => 'Ugrađene slike',
			'fileInfo.dataStreams' => 'Tokovi podataka',
			'fileInfo.lyrics' => 'Tekst pjesme',
			'fileInfo.file' => 'Datoteka',
			'fileInfo.attachments' => 'Prilozi',
			'fileInfo.delivery' => 'Način isporuke',
			'fileInfo.versionCounter' => ({required Object index, required Object count}) => 'Verzija ${index} od ${count}',
			'fileInfo.fileCounter' => ({required Object index, required Object count}) => 'Datoteka ${index} od ${count}',
			'fileInfo.noStreams' => 'Poslužitelj je prijavio da nema tokova za ovu datoteku.',
			'fileInfo.copyPath' => 'Kopiraj putanju',
			'fileInfo.pathCopied' => 'Putanja datoteke kopirana',
			'fileInfo.codec' => 'Kodek',
			'fileInfo.codecTag' => 'Oznaka kodeka',
			'fileInfo.resolution' => 'Razlučivost',
			'fileInfo.codedResolution' => 'Kodirana razlučivost',
			'fileInfo.bitrate' => 'Brzina prijenosa',
			'fileInfo.frameRate' => 'Broj sličica u sekundi',
			'fileInfo.rotation' => 'Zakretanje',
			'fileInfo.comment' => 'Komentar',
			'fileInfo.audioDescription' => 'Opis zvuka',
			'fileInfo.headerCompression' => 'Kompresija zaglavlja',
			'fileInfo.sidecarFile' => 'Popratna datoteka',
			'fileInfo.transportTimestamp' => 'Vremenska oznaka prijenosa',
			'fileInfo.displayOffset' => 'Pomak zaslona',
			'fileInfo.previewFailureCode' => 'Kod pogreške pregleda',
			'fileInfo.previewRetries' => 'Ponovni pokušaji pregleda',
			'fileInfo.aspectRatio' => 'Omjer slike',
			'fileInfo.pixelAspectRatio' => 'Omjer slike piksela',
			'fileInfo.profile' => 'Profil',
			'fileInfo.level' => 'Razina',
			'fileInfo.bitDepth' => 'Bitna dubina',
			'fileInfo.pixelFormat' => 'Format piksela',
			'fileInfo.colorSpace' => 'Prostor boja',
			'fileInfo.colorRange' => 'Raspon boja',
			'fileInfo.colorPrimaries' => 'Primarne boje',
			'fileInfo.colorTransfer' => 'Prijenos boja',
			'fileInfo.chromaSubsampling' => 'Poduzorkovanje kromatske komponente',
			'fileInfo.chromaLocation' => 'Položaj kromatske komponente',
			'fileInfo.scanType' => 'Vrsta skeniranja',
			'fileInfo.interlaced' => 'Isprepleteno',
			'fileInfo.anamorphic' => 'Anamorfno',
			'fileInfo.referenceFrames' => 'Referentni okviri',
			'fileInfo.dynamicRange' => 'Dinamički raspon',
			'fileInfo.dolbyVision' => 'Dolby Vision',
			'fileInfo.dolbyVisionLevel' => 'Razina Dolby Vision',
			'fileInfo.dolbyVisionVersion' => 'Verzija Dolby Vision',
			'fileInfo.dolbyVisionLayers' => 'Slojevi Dolby Visiona',
			'fileInfo.baseLayerCompatibility' => 'Kompatibilnost osnovnog sloja',
			'fileInfo.avcBitstream' => 'AVC tok podataka',
			'fileInfo.nalLengthSize' => 'Veličina duljine NAL-a',
			'fileInfo.scalingMatrix' => 'Prilagođena matrica skaliranja',
			'fileInfo.streamIdentifier' => 'Identifikator toka',
			'fileInfo.streamIndex' => 'Indeks toka',
			'fileInfo.streamId' => 'ID toka',
			'fileInfo.language' => 'Jezik',
			'fileInfo.languageCode' => 'Kod jezika',
			'fileInfo.streamTitle' => 'Naziv zvučnog zapisa',
			'fileInfo.channels' => 'Kanali',
			'fileInfo.sampleRate' => 'Frekvencija uzorkovanja',
			'fileInfo.spatialAudio' => 'Prostorni zvuk',
			'fileInfo.textBased' => 'Na temelju teksta',
			'fileInfo.subtitleFormat' => 'Format pomoćne datoteke',
			'fileInfo.provider' => 'Pružatelj',
			'fileInfo.matchScore' => 'Ocjena podudaranja',
			'fileInfo.externalDelivery' => 'Može se isporučiti zasebno',
			'fileInfo.sidecarPath' => 'Putanja pomoćne datoteke',
			'fileInfo.sourceStream' => 'Izvorni tok',
			'fileInfo.temporary' => 'Privremeno',
			'fileInfo.timeBase' => 'Vremenska baza',
			'fileInfo.overallBitrate' => 'Ukupna brzina prijenosa',
			'fileInfo.path' => 'Putanja',
			'fileInfo.fileName' => 'Naziv datoteke',
			'fileInfo.size' => 'Veličina',
			'fileInfo.totalSize' => 'Ukupna veličina',
			'fileInfo.container' => 'Kontejner',
			'fileInfo.duration' => 'Trajanje',
			'fileInfo.previewThumbnails' => 'Pregled sličica',
			'fileInfo.previewIndex' => 'Indeks pregleda',
			'fileInfo.packetLength' => 'Duljina paketa',
			'fileInfo.filePresent' => 'Datoteka prisutna',
			'fileInfo.fileReadable' => 'Poslužitelj može pročitati datoteku',
			'fileInfo.streamPath' => 'Putanja toka',
			'fileInfo.optimizedForStreaming' => 'Optimizirano za strujanje',
			'fileInfo.has64bitOffsets' => '64-bitni pomaci',
			'fileInfo.protocol' => 'Protokol',
			'fileInfo.mediaType' => 'Vrsta medija',
			'fileInfo.sourceKind' => 'Vrsta izvora',
			'fileInfo.optimizedVersion' => 'Optimizirana verzija',
			'fileInfo.optimizationTarget' => 'Cilj optimizacije',
			'fileInfo.deletedAt' => 'Izbrisano',
			'fileInfo.remoteSource' => 'Udaljeni izvor',
			'fileInfo.infiniteStream' => 'Beskonačni tok',
			'fileInfo.directPlay' => 'Izravna reprodukcija',
			'fileInfo.directStream' => 'Izravno strujanje',
			'fileInfo.transcoding' => 'Transkodiranje',
			'fileInfo.etag' => 'ETag',
			'fileInfo.versionId' => 'ID verzije',
			'fileInfo.fileId' => 'ID datoteke',
			'fileInfo.defaultAudioTrack' => 'Zadani zvučni zapis',
			'fileInfo.defaultSubtitleTrack' => 'Zadani zapis titlova',
			'fileInfo.subtitlesOff' => 'Isključeno',
			'fileInfo.flagDefault' => 'Zadano',
			'fileInfo.flagForced' => 'Prisilno',
			'fileInfo.flagSelected' => 'Odabrano',
			'fileInfo.flagExternal' => 'Vanjski',
			'fileInfo.flagHearingImpaired' => 'Za osobe oštećena sluha',
			'fileInfo.flagDub' => 'Sinkronizirano',
			'fileInfo.flagOriginal' => 'Izvornik',
			'fileInfo.channelsMono' => 'Mono',
			'fileInfo.dolbyVisionProfile' => ({required Object profile}) => 'Profil ${profile}',
			'mediaMenu.markAsWatched' => 'Označi kao gledano',
			'mediaMenu.markAsUnwatched' => 'Označi kao negledano',
			'mediaMenu.clearProgress' => 'Obriši napredak gledanja',
			'mediaMenu.removeFromContinueWatching' => 'Ukloni iz Nastavi gledati',
			'mediaMenu.viewDetails' => 'Vidi detalje',
			'mediaMenu.goToSeries' => 'Idi na seriju',
			'mediaMenu.shufflePlay' => 'Reprodukcija slučajnim redoslijedom',
			'mediaMenu.shuffleNotAvailableOffline' => 'Nasumična reprodukcija nije dostupna izvan mreže',
			'mediaMenu.fileInfo' => 'Podaci o datoteci',
			'mediaMenu.deleteEpisodeFromServer' => 'Izbriši epizodu s poslužitelja',
			'mediaMenu.deleteSeasonFromServer' => 'Izbriši sezonu s poslužitelja',
			'mediaMenu.deleteShowFromServer' => 'Izbriši seriju s poslužitelja',
			'mediaMenu.deleteMovieFromServer' => 'Izbriši film s poslužitelja',
			'mediaMenu.deleteEpisodeTitle' => 'Izbrisati ovu epizodu?',
			'mediaMenu.deleteSeasonTitle' => 'Izbrisati ovu sezonu?',
			'mediaMenu.deleteShowTitle' => 'Izbrisati ovu seriju?',
			'mediaMenu.deleteMovieTitle' => 'Izbrisati ovaj film?',
			'mediaMenu.deleteEpisodeConfirm' => 'Izbriši epizodu',
			'mediaMenu.deleteSeasonConfirm' => 'Izbriši sezonu',
			'mediaMenu.deleteShowConfirm' => 'Izbriši seriju',
			'mediaMenu.deleteMovieConfirm' => 'Izbriši film',
			'mediaMenu.deleteAnyway' => 'Svejedno izbriši',
			'mediaMenu.confirmDeleteTarget' => ({required Object title}) => 'Trajno izbrisati ${title} s poslužitelja?',
			'mediaMenu.deleteMultipleWarning' => 'Ovo uključuje sve epizode i njihove datoteke.',
			'mediaMenu.deleteEpisodeCountWarning' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hr'))(n, one: 'Time će se izbrisati ${n} epizoda i njezina datoteka.', few: 'Time će se izbrisati ${n} epizode i njihove datoteke.', other: 'Time će se izbrisati svih ${n} epizoda i njihove datoteke.', ), 
			'mediaMenu.deleteMultiPartWarning' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hr'))(n, one: 'Ova je stavka pohranjena u ${n} datoteci koja će biti izbrisana.', few: 'Ova je stavka pohranjena u ${n} datotekama i sve će biti izbrisane.', other: 'Ova je stavka pohranjena u ${n} datoteka i sve će biti izbrisane.', ), 
			'mediaMenu.deleteSharedFileHeading' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hr'))(n, one: 'Još je ${n} epizoda pohranjena u istoj datoteci i također će biti izbrisana:', few: 'Još ${n} epizode pohranjene su u istoj datoteci i također će biti izbrisane:', other: 'Još ${n} epizoda pohranjeno je u istoj datoteci i također će biti izbrisano:', ), 
			'mediaMenu.deleteScopeUnverifiedProbeFailed' => 'Aplikacija Luroka nije mogla provjeriti koje će se datoteke izbrisati, pa bi moglo biti obrisano više od gore navedene stavke. Odustani i pokušaj ponovno ili svejedno izbriši.',
			'mediaMenu.deleteScopeUnverifiedNoFileInfo' => 'Poslužitelj nije poslao podatke o datoteci pa Luroka ne može provjeriti što će se izbrisati. Moglo bi biti obrisano više od gore navedenih stavki.',
			'mediaMenu.mediaDeletedSuccessfully' => 'Medijska stavka uspješno izbrisana',
			'mediaMenu.mediaFailedToDelete' => 'Brisanje medijske stavke nije uspjelo',
			'mediaMenu.rate' => 'Ocijeni',
			'mediaMenu.playFromBeginning' => 'Reproduciraj od početka',
			'mediaMenu.playVersion' => 'Reproduciraj verziju...',
			'rateSheet.title' => 'Ocijenite',
			'rateSheet.server' => 'Poslužitelj',
			'rateSheet.favorite' => 'Omiljeno',
			'rateSheet.favorited' => 'Dodano među favorite',
			'rateSheet.saved' => 'Spremljeno',
			'rateSheet.notAvailable' => 'Nije pronađeno podudaranje',
			'rateSheet.noConnectedServices' => 'Povežite uslugu u Postavkama da biste mogli ocjenjivati sadržaj.',
			'accessibility.mediaCardMovie' => ({required Object title}) => '${title}, film',
			'accessibility.mediaCardShow' => ({required Object title}) => '${title}, TV serija',
			'accessibility.mediaCardEpisode' => ({required Object title, required Object episodeInfo}) => '${title}, ${episodeInfo}',
			'accessibility.mediaCardSeason' => ({required Object title, required Object seasonInfo}) => '${title}, ${seasonInfo}',
			'accessibility.mediaCardWatched' => 'pogledano',
			'accessibility.mediaCardPartiallyWatched' => ({required Object percent}) => 'pogledano ${percent} posto',
			'accessibility.mediaCardUnwatched' => 'nije pogledano',
			'accessibility.tapToPlay' => 'Dodirnite za reprodukciju',
			'accessibility.decrease' => 'Smanji',
			'accessibility.increase' => 'Povećaj',
			'accessibility.decreaseValue' => ({required Object label}) => 'Smanji ${label}',
			'accessibility.increaseValue' => ({required Object label}) => 'Povećaj ${label}',
			'accessibility.hue' => 'Nijansa',
			'accessibility.saturation' => 'Zasićenost',
			'accessibility.brightness' => 'Svjetlina',
			'accessibility.hexColor' => 'Boja u heksadekadskom zapisu',
			'accessibility.expandText' => 'Proširi tekst',
			'accessibility.collapseText' => 'Sažmi tekst',
			'accessibility.alphabetNavigation' => 'Abecedna navigacija',
			'accessibility.alphabetScrollHint' => 'Prijeđite prstom gore ili dolje za pomicanje po slovu',
			'accessibility.rowColumnPosition' => ({required Object row, required Object rowCount, required Object column, required Object columnCount}) => 'Redak ${row} od ${rowCount}, stupac ${column} od ${columnCount}',
			'accessibility.rowPosition' => ({required Object row, required Object rowCount}) => 'Red ${row} od ${rowCount}',
			'accessibility.autoScrollPlay' => 'Pokreni automatsko pomicanje',
			'accessibility.autoScrollPause' => 'Pauziraj automatsko pomicanje',
			'accessibility.hueShort' => 'H',
			'accessibility.saturationShort' => 'S',
			'accessibility.valueShort' => 'V',
			'tooltips.shufflePlay' => 'Nasumična reprodukcija',
			'tooltips.playTrailer' => 'Pusti najavu',
			'tooltips.markAsWatched' => 'Označi kao gledano',
			'tooltips.markAsUnwatched' => 'Označi kao negledano',
			'audioTracks.track' => ({required Object n}) => 'Zvučni zapis ${n}',
			'videoControls.audioLabel' => 'Zvuk',
			'videoControls.subtitlesLabel' => 'Titlovi',
			'videoControls.addTime' => ({required Object amount, required Object unit}) => '+${amount}${unit}',
			'videoControls.letterbox' => 'Crne trake',
			'videoControls.fillScreen' => 'Ispuni zaslon',
			'videoControls.stretch' => 'Razvuci sliku',
			'videoControls.lockRotation' => 'Zaključaj zakretanje',
			'videoControls.unlockRotation' => 'Otključaj rotaciju',
			'videoControls.timerActive' => 'Mjerač vremena je uključen',
			'videoControls.playbackWillPauseIn' => ({required Object duration}) => 'Reprodukcija će se pauzirati za ${duration}',
			'videoControls.sleepTimerEndOfVideo' => 'Kraj trenutnog videa',
			'videoControls.sleepTimerStopAtHeader' => 'Zaustavi se na',
			'videoControls.sleepTimerDurationHeader' => 'Trajanje',
			'videoControls.playbackWillPauseAtEnd' => 'Reprodukcija će se zaustaviti na kraju ovog videozapisa',
			_ => null,
		} ?? switch (path) {
			'videoControls.stillWatching' => 'Još uvijek gledate?',
			'videoControls.pausingIn' => ({required Object seconds}) => 'Pauziranje za ${seconds} s',
			'videoControls.continueWatching' => 'Nastavi gledati',
			'videoControls.autoPlayNext' => 'Automatski reproduciraj sljedeće',
			'videoControls.playNext' => 'Reproduciraj sljedeće',
			'videoControls.playButton' => 'Reproduciraj',
			'videoControls.pauseButton' => 'Pauza',
			'videoControls.playbackPaused' => 'Pauzirano',
			'videoControls.playbackResumed' => 'Reprodukcija nastavljena',
			'videoControls.loadingVideo' => 'Učitavanje videa',
			'videoControls.showPlaybackControls' => 'Prikaži kontrole reprodukcije',
			'videoControls.hidePlaybackControls' => 'Sakrij kontrole reprodukcije',
			'videoControls.seekBackwardButton' => ({required Object seconds}) => 'Premotaj ${seconds} sekundi unatrag',
			'videoControls.seekForwardButton' => ({required Object seconds}) => 'Premotaj ${seconds} sekundi unaprijed',
			'videoControls.previousButton' => 'Prethodna epizoda',
			'videoControls.nextButton' => 'Sljedeća epizoda',
			'videoControls.previousChapterButton' => 'Prethodno poglavlje',
			'videoControls.nextChapterButton' => 'Sljedeće poglavlje',
			'videoControls.muteButton' => 'Isključi zvuk',
			'videoControls.unmuteButton' => 'Uključi zvuk',
			'videoControls.settingsButton' => 'Postavke reprodukcije',
			'videoControls.infoButton' => 'Info',
			'videoControls.tracksButton' => 'Audio i titlovi',
			'videoControls.chaptersButton' => 'Poglavlja',
			'videoControls.versionQualityButton' => 'Verzija i kvaliteta',
			'videoControls.versionColumnHeader' => 'Verzija',
			'videoControls.qualityColumnHeader' => 'Kvaliteta',
			'videoControls.qualityOriginal' => 'Izvornik',
			'videoControls.qualityPresetLabel' => ({required Object resolution, required Object bitrate}) => '${resolution}p ${bitrate} Mbps',
			'videoControls.transcodeUnavailableFallback' => 'Transkodiranje nije dostupno — reprodukcija izvorne kvalitete',
			'videoControls.subtitleUnavailableFallback' => 'Odabrani titlovi se ne mogu učitati — nastavlja se bez titlova',
			'videoControls.pipButton' => 'Način slike u slici',
			'videoControls.aspectRatioButton' => 'Omjer slike',
			'videoControls.ambientLighting' => 'Ambijentalna rasvjeta',
			'videoControls.fullscreenButton' => 'Otvori cijeli zaslon',
			'videoControls.exitFullscreenButton' => 'Izađi iz cijelog zaslona',
			'videoControls.alwaysOnTopButton' => 'Uvijek na vrhu',
			'videoControls.rotationLockButton' => 'Zaključavanje rotacije',
			'videoControls.lockScreen' => 'Zaključani zaslon',
			'videoControls.screenLockButton' => 'Zaključavanje zaslona',
			'videoControls.longPressToUnlock' => 'Dugo pritisnite za otključavanje',
			'videoControls.timelineSlider' => 'Vremenska traka videozapisa',
			'videoControls.volumeSlider' => 'Razina glasnoće',
			'videoControls.endsAt' => ({required Object time}) => 'Završava u ${time}',
			'videoControls.pipActive' => 'Reprodukcija u načinu slika u slici',
			'videoControls.pipFailed' => 'Pokretanje slike u slici nije uspjelo',
			'videoControls.screenshotSaved' => 'Snimka zaslona spremljena',
			'videoControls.screenshotFailed' => 'Nije moguće napraviti snimku zaslona',
			'videoControls.zoomPercent' => ({required Object percent}) => 'Zum ${percent}%',
			'videoControls.volumePercent' => ({required Object percent}) => 'Volumen ${percent}%',
			'videoControls.pipErrors.androidVersion' => 'Zahtijeva Android 8.0 ili noviji',
			'videoControls.pipErrors.iosVersion' => 'Zahtijeva iOS 15.0 ili noviji',
			'videoControls.pipErrors.permissionDisabled' => 'Način slika u slici je isključen. Uključi ga u postavkama sustava.',
			'videoControls.pipErrors.notSupported' => 'Uređaj ne podržava način rada slika u slici',
			'videoControls.pipErrors.voSwitchFailed' => 'Nije uspjelo prebacivanje video izlaza na sliku u slici',
			'videoControls.pipErrors.failed' => 'Pokretanje slike u slici nije uspjelo',
			'videoControls.pipErrors.prepareFailed' => 'Nije moguće pripremiti sliku u slici',
			'videoControls.pipErrors.unknown' => ({required Object error}) => 'Došlo je do pogreške: ${error}',
			'videoControls.chapters' => 'Poglavlja',
			'videoControls.noChaptersAvailable' => 'Nema dostupnih poglavlja',
			'videoControls.queue' => 'Red čekanja',
			'videoControls.noQueueItems' => 'Nema stavki u redu',
			'videoControls.noAudioDevicesAvailable' => 'Nema dostupnih zvučnih uređaja',
			'videoControls.searchSubtitles' => 'Pretraživanje titlova',
			'videoControls.language' => 'Jezik',
			'videoControls.noSubtitlesFound' => 'Nisu pronađeni titlovi',
			'videoControls.subtitleDownloaded' => 'Titl je preuzet',
			'videoControls.subtitleDownloadedNotApplied' => 'Titl je preuzet, ali ga nije moguće odabrati',
			'videoControls.subtitleDownloadFailed' => 'Preuzimanje titla nije uspjelo',
			'videoControls.searchLanguages' => 'Traži jezike...',
			'videoControls.skipIntro' => 'Preskoči uvod',
			'videoControls.skipCredits' => 'Preskoči odjavnu špicu',
			'videoControls.nextEpisode' => 'Sljedeća epizoda',
			'videoControls.subtitleTrack' => ({required Object n}) => 'Zapis titlova ${n}',
			'videoControls.subtitleFile' => ({required Object name}) => 'Titl ${name}',
			'videoControls.forcedTrack' => ({required Object label}) => '${label} (prisilno)',
			'videoControls.osdSubtitlesOff' => 'Titlovi: isključeni',
			'videoControls.osdSubtitles' => ({required Object track}) => 'Titlovi: ${track}',
			'videoControls.osdAudio' => ({required Object track}) => 'Zvuk: ${track}',
			'messages.markedAsWatched' => 'Označeno kao pogledano',
			'messages.markedAsUnwatched' => 'Označeno kao nepogledano',
			'messages.markedAsWatchedOffline' => 'Označeno kao pogledano (sinkronizirat će se kad se povežete)',
			'messages.markedAsUnwatchedOffline' => 'Označeno kao nepogledano (sinkronizirat će se kad se povežete)',
			'messages.autoRemovedWatchedDownload' => ({required Object title}) => 'Automatski uklonjeno: ${title}',
			'messages.autoRemovedWatchedDownloads' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hr'))(n, one: 'Automatski uklonjeno ${n} gledano preuzimanje', few: 'Automatski uklonjena ${n} pogledana preuzimanja', other: 'Automatski uklonjeno ${n} pogledanih preuzimanja', ), 
			'messages.removedFromContinueWatching' => 'Uklonjeno iz retka Nastavi gledati',
			'messages.errorLoading' => ({required Object error}) => 'Pogreška: ${error}',
			'messages.searchPartialResults' => 'Neke medijske poslužitelje nije bilo moguće pretražiti. Prikaz dostupnih rezultata.',
			'messages.streamInterrupted' => 'Prijenos je prekinut. Odaberite Reproduciraj ili premotajte za ponovni pokušaj.',
			'messages.liveStreamInterrupted' => 'Prijenos uživo je prekinut. Odaberite Reproduciraj za ponovni pokušaj.',
			'messages.fileInfoNotAvailable' => 'Informacije o datoteci nisu dostupne',
			'messages.playbackAuthenticationRequired' => 'Ponovno se prijavite na medijski poslužitelj za reprodukciju ove stavke.',
			'messages.playbackServerUnavailable' => 'Medijski poslužitelj je nedostupan. Pokušajte ponovno kasnije.',
			'messages.playbackDataInvalid' => 'Poslužitelj je vratio nevažeće informacije o reprodukciji.',
			'messages.playbackCancelled' => 'Reprodukcija je otkazana.',
			'messages.playbackFailed' => 'Reprodukcija se nije mogla pokrenuti.',
			'messages.playbackFailedDetail' => ({required Object error}) => 'Reprodukcija se nije mogla pokrenuti: ${error}',
			'messages.audioOutputFailed' => 'Zvučni izlaz ne reagira. Provjerite vezu s televizorom ili prijamnikom. Ako ni druge aplikacije nemaju zvuka, ponovno pokrenite uređaj.',
			'messages.mediaUnavailable' => 'Ovaj sadržaj više nije dostupan.',
			'messages.errorLoadingFileInfo' => ({required Object error}) => 'Pogreška pri učitavanju informacija o datoteci: ${error}',
			'messages.errorLoadingSeries' => 'Pogreška pri učitavanju serije',
			'messages.musicNotSupported' => 'Reprodukcija glazbe još nije podržana',
			'messages.noDescriptionAvailable' => 'Opis nije dostupan',
			'messages.noProfilesAvailable' => 'Nema dostupnih profila',
			'messages.contactAdminForProfiles' => 'Za dodavanje profila kontaktirajte svog administratora poslužitelja',
			'messages.unableToDetermineLibrarySection' => 'Nije moguće odrediti kojoj biblioteci pripada ova stavka.',
			'messages.logsCleared' => 'Dnevnici očišćeni',
			'messages.logsCopied' => 'Dnevnici kopirani u međuspremnik',
			'messages.noLogsAvailable' => 'Nema dostupnih zapisa',
			'messages.libraryScanning' => ({required Object title}) => 'Skeniranje stavke „${title}”…',
			'messages.libraryScanStarted' => ({required Object title}) => 'Započeto je skeniranje biblioteke „${title}”.',
			'messages.libraryScanFailed' => ({required Object error}) => 'Skeniranje biblioteke nije uspjelo: ${error}',
			'messages.metadataRefreshing' => ({required Object title}) => 'Osvježavanje metapodataka za "${title}"...',
			'messages.metadataRefreshStarted' => ({required Object title}) => 'Započelo je osvježavanje metapodataka za "${title}"',
			'messages.metadataRefreshFailed' => ({required Object error}) => 'Osvježavanje metapodataka nije uspjelo: ${error}',
			'messages.logoutConfirm' => 'Jeste li sigurni da se želite odjaviti?',
			'messages.logoutDeviceConfirm' => 'Odjaviti se iz Luroke na ovom uređaju? Svi profili, uključujući dječje profile, računi poslužitelja i preuzeti sadržaj bit će uklonjeni s ovog uređaja. Kasnije se možete ponovno prijaviti.',
			'messages.noSeasonsFound' => 'Nije pronađena nijedna sezona',
			'messages.seasonsLoadFailed' => 'Nije moguće učitati sezone',
			'messages.noEpisodesFound' => 'U prvoj sezoni nije pronađena nijedna epizoda',
			'messages.noEpisodesFoundGeneral' => 'Nema pronađenih epizoda',
			'messages.episodesLoadFailed' => 'Nije moguće učitati epizode',
			'messages.noResultsFound' => 'Nema rezultata',
			'messages.sleepTimerSet' => ({required Object label}) => 'Mjerač vremena za isključivanje postavljen je na ${label}',
			'messages.noItemsAvailable' => 'Nema dostupnih stavki',
			'messages.failedToCreatePlayQueueNoItems' => 'Nije moguće stvoriti red za reprodukciju jer nema stavki.',
			'messages.failedPlayback' => ({required Object action, required Object error}) => 'Nije uspjelo ${action}: ${error}',
			'messages.switchingToCompatiblePlayer' => 'Prebacivanje na kompatibilni reproduktor...',
			'messages.serverLimitTitle' => 'Reprodukcija nije uspjela',
			'messages.serverLimitBody' => 'Pogreška poslužitelja (HTTP 500). Ograničenje propusnosti/transkodiranja vjerojatno je odbilo ovu sesiju. Zamolite vlasnika da ga prilagodi.',
			'messages.mediaUnreadableTitle' => 'Datoteka nije dostupna',
			'messages.mediaUnreadableBody' => 'Poslužitelj je pronašao ovu stavku, ali nije mogao pročitati datoteku (HTTP 404). Datoteka je možda premještena ili izbrisana, odnosno njezina pohrana nije dostupna. Zamolite vlasnika poslužitelja da provjeri datoteku i ponovno skenira biblioteku.',
			'messages.serverBusyTitle' => 'Strujanje nije dostupno',
			'messages.serverBusyBody' => 'Poslužitelj je opetovano odbijao poslati ovu datoteku (HTTP 503). Možda se ponovno pokreće ili je zauzet, odnosno pohrana datoteke nije dostupna. Pokušajte ponovno za trenutak. Ako se problem nastavi, zamolite vlasnika da provjeri poslužitelj i pohranu datoteke.',
			'messages.playbackNotAllowedTitle' => 'Reprodukcija nije dopuštena',
			'messages.playbackNotAllowedBody' => 'Poslužitelj je odbio poslati ovu stavku (HTTP 403). Vaš račun možda nema dopuštenje za reprodukciju ili je ona dopuštena samo u lokalnoj mreži poslužitelja.',
			'messages.logsUploaded' => 'Dnevnici su učitani',
			'messages.logsUploadFailed' => 'Prijenos zapisa nije uspio',
			'messages.logId' => 'ID zapisnika',
			'messages.burnedSubtitlesUseMenu' => 'Titlovi su ugrađeni u sliku videozapisa. Promijenite ih u izborniku titlova.',
			'messages.noVideoUrl' => 'Nije dostupan URL videozapisa',
			'messages.playbackNoMediaSources' => 'Poslužitelj nije vratio nijedan izvor medija koji se može reproducirati',
			'messages.playbackDataNotPrepared' => 'Reprodukcija je pokrenuta prije nego što su podaci bili spremni.',
			'messages.streamSelectionUnavailable' => 'Odabir toka nije dostupan za ovaj izvor.',
			'messages.streamSelectionFailed' => 'Nije moguće primijeniti odabrane tokove.',
			'messages.trackSelectionNotRemembered' => 'Ovaj odabir zapisa vrijedi samo za trenutačnu reprodukciju.',
			'messages.serverUnavailableForProfile' => 'Nijedan poslužitelj nije dostupan za aktivni profil',
			'sourceLibraries.title' => 'Vaši poslužitelji i biblioteke',
			'sourceLibraries.description' => 'Odaberite biblioteke koje Luroka koristi na početnoj stranici, pri pretraživanju, za provjeru dostupnosti u odjeljku Otkrijte i za studije. Redoslijed redaka početne stranice prilagođuje se zasebno.',
			'sourceLibraries.partial' => 'Nije moguće provjeriti neke poslužitelje. Odabrane biblioteke za njih ostaju spremljene. Osvježite za ponovni pokušaj.',
			'sourceLibraries.loadFailed' => 'Nije moguće učitati biblioteke. Provjerite vezu i pokušajte ponovno.',
			'sourceLibraries.notSelected' => 'Nije dostupno u odabranim bibliotekama.',
			'sourceLibraries.checkOthers' => 'Provjeri ostale povezane izvore',
			'sourceLibraries.otherSources' => 'Dostupno na drugim povezanim izvorima',
			'sourceLibraries.playOnce' => 'Reproduciraj jednom',
			'sourceLibraries.includeLibrary' => 'Uključi ovu biblioteku',
			'sourceLibraries.noOthers' => 'Nisu pronađene kopije na drugim povezanim izvorima.',
			'sourceLibraries.chooseOne' => 'Odaberite barem jednu biblioteku za nastavak.',
			'subtitlingStyling.text' => 'Tekst',
			'subtitlingStyling.border' => 'Granica',
			'subtitlingStyling.background' => 'Pozadina',
			'subtitlingStyling.fontSize' => 'Veličina fonta',
			'subtitlingStyling.textColor' => 'Boja teksta',
			'subtitlingStyling.borderSize' => 'Veličina obruba',
			'subtitlingStyling.borderColor' => 'Boja obruba',
			'subtitlingStyling.backgroundOpacity' => 'Neprozirnost pozadine',
			'subtitlingStyling.backgroundColor' => 'Boja pozadine',
			'subtitlingStyling.position' => 'Pozicija',
			'subtitlingStyling.assOverride' => 'ASS Nadjačavanje',
			'subtitlingStyling.overrideScale' => 'Skala',
			'subtitlingStyling.overrideForce' => 'Prisiliti',
			'subtitlingStyling.overrideStrip' => 'Uklonite styling',
			'subtitlingStyling.positionTop' => 'Top',
			'subtitlingStyling.positionBottom' => 'Dno',
			'subtitlingStyling.useMargins' => 'Koristite margine',
			'subtitlingStyling.useMarginsDescription' => 'Dopusti tekstualne titlove u prostoru izvan videa. Stilizirani titlovi mogu zadržati svoj izvorni položaj.',
			'subtitlingStyling.anchorToScreen' => 'Sidro na zaslon',
			'subtitlingStyling.anchorToScreenDescription' => 'Prikaži tekstualne titlove u crnim trakama ispod širokog video zapisa',
			'subtitlingStyling.bold' => 'Podebljano',
			'subtitlingStyling.italic' => 'kurziv',
			'subtitlingStyling.renderResolution' => 'Razlučivost prikaza',
			'subtitlingStyling.renderResolutionScreen' => 'Razlučivost zaslona',
			'subtitlingStyling.renderResolutionVideo' => 'Video rezolucija',
			'mpvConfig.title' => 'mpv.conf',
			'mpvConfig.description' => 'Napredne postavke videoreproduktora',
			'mpvConfig.presets' => 'Unaprijed postavljene postavke',
			'mpvConfig.noPresets' => 'Nema spremljenih unaprijed postavljenih postavki',
			'mpvConfig.saveAsPreset' => 'Spremi kao unaprijed postavljeno...',
			'mpvConfig.presetName' => 'Unaprijed postavljeni naziv',
			'mpvConfig.presetNameHint' => 'Unesite naziv za ovu unaprijed postavljenu postavku',
			'mpvConfig.loadPreset' => 'Opterećenje',
			'mpvConfig.deletePreset' => 'Izbriši',
			'mpvConfig.presetSaved' => 'Pretpostavka je spremljena',
			'mpvConfig.presetLoaded' => 'Unaprijed postavljeno',
			'mpvConfig.presetDeleted' => 'Unaprijed postavka izbrisana',
			'mpvConfig.confirmDeletePreset' => 'Jeste li sigurni da želite izbrisati ovu unaprijed postavljenu postavku?',
			'mpvConfig.configPlaceholder' => 'gpu-api=vulkan\nhwdec=auto\n# komentar',
			'mpvConfig.lineHint' => 'opcija=vrijednost',
			'mpvConfig.addLine' => 'Dodaj liniju',
			'mpvConfig.removeLine' => 'Ukloni liniju',
			'mpvConfig.embeddedVoHint' => 'vo, gpu-kontekst i gpu-api zanemaruju se na Linuxu: ugrađeni video uvijek se renderira kroz vo=libmpv na video ravnini, a gpu-next (koji izračunavaju shadere poput ArtCNN-a) ne može pokrenuti ugrađen.',
			'dialog.confirmAction' => 'Potvrdi radnju',
			'profiles.addLurokaProfile' => 'Dodaj profil u Luroku',
			'profiles.switchingProfile' => 'Promjena profila…',
			'profiles.deleteThisProfileTitle' => 'Izbrisati ovaj profil?',
			'profiles.deleteThisProfileMessage' => ({required Object displayName}) => 'Izbrisat će se profil ${displayName}. Povezani računi neće se promijeniti.',
			'profiles.active' => 'Aktivno',
			'profiles.manage' => 'Upravljaj',
			'profiles.delete' => 'Izbriši',
			'profiles.signOut' => 'Odjavi se',
			'profiles.signOutPlexTitle' => 'Odjaviti se s Plexa?',
			'profiles.signOutPlexMessage' => ({required Object displayName}) => 'Ukloniti ${displayName} i sve korisnike Plex Homea? Možete se ponovno prijaviti u bilo kojem trenutku.',
			'profiles.signOutPlexDeleteDownloads' => 'Izbriši i preuzimanja',
			'profiles.signOutPlexDeleteDownloadsDescription' => 'Ako ih ne izbrišete, preuzimanja će ostati na ovom uređaju i vratiti se kad se ponovno prijavite na ovaj račun.',
			'profiles.signedOutPlex' => 'Odjavljeni ste s Plexa.',
			'profiles.signOutFailed' => 'Odjava nije uspjela.',
			'profiles.sectionTitle' => 'Profili',
			'profiles.summarySingle' => 'Dodajte profile da biste objedinili upravljane korisnike i lokalne profile.',
			'profiles.summaryMultipleWithActive' => ({required Object count, required Object activeName}) => 'Profila: ${count} · aktivni profil: ${activeName}',
			'profiles.summaryMultiple' => ({required Object count}) => 'Broj profila: ${count}',
			'profiles.removeConnectionTitle' => 'Ukloniti vezu?',
			'profiles.removeConnectionMessage' => ({required Object connectionLabel, required Object displayName}) => 'Ukloniti vezu ${connectionLabel} iz profila ${displayName}? Ostali profili zadržat će je.',
			'profiles.deleteProfileTitle' => 'Izbrisati profil?',
			'profiles.deleteProfileMessage' => ({required Object displayName}) => 'Izbrisat će se profil ${displayName} i njegove veze. Poslužitelji će i dalje biti dostupni.',
			'profiles.profileNameLabel' => 'Naziv profila',
			'profiles.pinProtectionLabel' => 'PIN zaštita',
			'profiles.pinManagedByPlex' => 'PIN-om upravlja Plex. Uredite ga na plex.tv.',
			'profiles.noPinSetEditOnPlex' => 'PIN nije postavljen. Da biste ga zatražili, uredite kućnog korisnika na plex.tv.',
			'profiles.setPin' => 'Postavite PIN',
			'profiles.setPinTitle' => 'Postavite PIN',
			'profiles.confirmPinTitle' => 'Potvrdite PIN',
			'profiles.pinSet' => 'PIN je postavljen',
			'profiles.changePin' => 'Promjena',
			'profiles.removePin' => 'Ukloniti',
			'profiles.connectionsLabel' => 'Veze',
			'profiles.add' => 'Dodaj',
			'profiles.deleteProfileButton' => 'Izbriši profil',
			'profiles.noConnectionsHint' => 'Nema povezanih računa. Dodajte račun da biste koristili ovaj profil.',
			'profiles.noConnections' => 'Nema veza',
			'profiles.plexHomeAccount' => 'Plex Home račun',
			'profiles.plexAccountChip' => ({required Object account}) => 'Plex račun: ${account}',
			'profiles.plexAccountUserChip' => ({required Object user, required Object account}) => '${user} · račun ${account}',
			'profiles.connectionDefault' => 'Zadano',
			'profiles.connectionAs' => ({required Object displayName}) => 'kao ${displayName}',
			'profiles.makeDefault' => 'Učini zadanim',
			'profiles.removeConnection' => 'Ukloniti',
			'profiles.profileRenamed' => 'Profil je preimenovan.',
			'profiles.borrowAddTo' => ({required Object displayName}) => 'Dodaj u ${displayName}',
			'profiles.borrowExplain' => 'Upotrijebi vezu drugog profila. Za pristup profilima zaštićenima PIN-om potreban je PIN.',
			'profiles.borrowEmpty' => 'Nema dostupnih veza za korištenje.',
			'profiles.borrowEmptySubtitle' => 'Prvo povežite Plex, Jellyfin ili Emby s drugim profilom.',
			'profiles.borrowLoadFailed' => 'Dostupne veze ne mogu se učitati. Pokušajte ponovno.',
			'profiles.borrowFromProfile' => ({required Object displayName}) => 'Od ${displayName}',
			'profiles.borrowConnectionBorrowed' => 'Veza posuđena.',
			'profiles.borrowFailed' => 'Posuđivanje veze nije uspjelo.',
			'profiles.incorrectPin' => 'Pogrešan PIN.',
			'profiles.incorrectPinTryAgain' => 'Pogrešan PIN. Pokušajte ponovno.',
			'profiles.sourceProfileMissingParentAccount' => 'Izvornom profilu nedostaje nadređeni račun.',
			'profiles.failedToLoadHomeUsers' => 'Nije moguće učitati vaše Plex kućne korisnike. Provjerite vezu i pokušajte ponovno.',
			'profiles.failedToVerifyPin' => 'Provjera PIN-a nije uspjela.',
			'profiles.newProfile' => 'Novi profil',
			'profiles.profileNameHint' => 'npr. Gosti, djeca, obiteljska soba',
			'profiles.pinProtectionOptional' => 'Zaštita PIN-om (neobavezno)',
			'profiles.pinExplain' => 'Za promjenu profila potreban je 4-znamenkasti PIN.',
			'profiles.continueButton' => 'Nastavi',
			'profiles.pinsDontMatch' => 'PIN-ovi se ne podudaraju',
			'profiles.tokenIdentityMismatch' => 'Token Plex profila povezan je s neočekivanim poslužiteljem.',
			'connections.sectionTitle' => 'Poslužitelji i računi',
			'connections.addConnection' => 'Dodajte račun ili poslužitelj',
			'connections.addConnectionSubtitleNoProfile' => 'Prijavite se na Plex ili povežite poslužitelj Jellyfin ili Emby.',
			'connections.addConnectionSubtitleScoped' => ({required Object displayName}) => 'Dodajte u ${displayName}: Plex, Jellyfin, Emby ili drugu vezu profila',
			'connections.sessionExpiredOne' => ({required Object name}) => 'Sesija je istekla za ${name}',
			'connections.sessionExpiredMany' => ({required Object count}) => 'Istekla je sesija za poslužitelje: ${count}',
			'connections.accessDeniedOne' => ({required Object name}) => '${name} je odbio pristup ovom računu',
			'connections.accessDeniedMany' => ({required Object count}) => 'Poslužitelji koji su odbili pristup ovom računu: ${count}',
			'connections.signInAgain' => 'Prijavite se ponovno',
			'connections.editMediaBrowserTitle' => ({required Object product}) => 'Uredi ${product} vezu',
			'connections.editMediaBrowserIntro' => ({required Object serverName}) => 'Dodajte ili uklonite URL-ove poslužitelja ${serverName}. Luroka će koristiti dostupnu adresu s najmanjim kašnjenjem.',
			'serversAccounts.title' => 'Poslužitelji i računi',
			'serversAccounts.subtitle' => 'Status prijave na vaše Plex, Jellyfin i Emby poslužitelje',
			'serversAccounts.online' => 'Na mreži',
			'serversAccounts.offline' => 'Izvan mreže',
			'serversAccounts.unknown' => 'Niste prijavljeni ovdje',
			'serversAccounts.usedByNone' => 'Ne koristi niti jedan profil',
			'serversAccounts.usedByOne' => ({required Object name}) => 'Koristi ${name}',
			'serversAccounts.usedByMany' => ({required Object name, required Object count}) => 'Koriste ${name} i ${count} više',
			'serversAccounts.serversOnline' => ({required Object online, required Object total}) => '${online} od ${total} poslužitelja na mreži',
			'serversAccounts.noServers' => 'Još ništa nije povezano. Dodajte Plex račun ili poslužitelj Jellyfin ili Emby.',
			'serversAccounts.editUrls' => 'Uredite URL-ove poslužitelja',
			'accountPreferences.sectionTitle' => 'Postavke računa',
			'accountPreferences.hubSubtitleSingle' => ({required Object account}) => 'Postavke zvuka, titlova i biblioteke spremljene na računu ${account}',
			'accountPreferences.hubSubtitleMultiple' => ({required Object count}) => 'Postavke zvuka, titlova i biblioteke spremljene na računima: ${count}',
			'accountPreferences.pickAccount' => 'Svaki račun ima vlastite postavke. Odaberite račun čije postavke želite urediti.',
			'accountPreferences.storedOnAccount' => 'Ove su opcije spremljene na samom računu, tako da ih koristi svaka aplikacija koja je prijavljena na njega — uključujući Luroka na vašim drugim uređajima.',
			'accountPreferences.noAccounts' => 'Nema računa za konfiguraciju',
			'accountPreferences.noAccountsHint' => 'Prijavite se na Plex ili povežite Jellyfin ili Emby poslužitelj i postavke pohranjene na tom računu pojavit će se ovdje.',
			'accountPreferences.unavailable' => 'Nije moguće pristupiti ovom računu',
			'accountPreferences.loadFailed' => 'Nije moguće učitati ove postavke',
			'accountPreferences.noPreference' => 'Bez preferencija',
			'accountPreferences.notSet' => 'Nije postavljeno',
			'accountPreferences.groups.audioAndSubtitles' => 'Zvuk i titlovi',
			'accountPreferences.groups.libraryDisplay' => 'Biblioteka',
			'accountPreferences.groups.personalMedia' => 'Osobni mediji',
			'accountPreferences.preferredAudioLanguage' => 'Željeni jezik zvuka',
			'accountPreferences.autoSelectAudio' => 'Automatski odaberi zvučni zapis prema jeziku',
			'accountPreferences.autoSelectAudioDescription' => 'Kad je isključeno, koriste se zvučni zapisi koje je datoteka označila kao zadane.',
			'accountPreferences.preferredSubtitleLanguage' => 'Preferirani jezik titlova',
			'accountPreferences.subtitleMode' => 'Odabir titlova',
			'accountPreferences.subtitleModes.none' => 'Ručno odabrano',
			'accountPreferences.subtitleModes.noneDescription' => 'Titlovi se nikad ne uključuju automatski.',
			'accountPreferences.subtitleModes.defaultMode' => 'Koristi oznake zapisa',
			'accountPreferences.subtitleModes.defaultModeDescription' => 'Koristi oznake zadanih i prisilnih titlova pohranjene u svakom zapisu.',
			'accountPreferences.subtitleModes.always' => 'Uvijek uključi',
			'accountPreferences.subtitleModes.alwaysDescription' => 'Uključi titlove na željenom jeziku kad god su dostupni.',
			'accountPreferences.subtitleModes.onlyForced' => 'Samo prisilni titlovi',
			'accountPreferences.subtitleModes.onlyForcedDescription' => 'Uključi samo titlove označene kao prisilni.',
			'accountPreferences.subtitleModes.smart' => 'Kad je zvuk na stranom jeziku',
			'accountPreferences.subtitleModes.smartDescription' => 'Uključi titlove samo kad je zvuk na drugom jeziku.',
			'accountPreferences.subtitleAccessibility' => 'SDH titlovi',
			'accountPreferences.subtitleAccessibilityOptions.preferNonSdh' => 'Radije ne-SDH titlove',
			'accountPreferences.subtitleAccessibilityOptions.preferSdh' => 'Radije SDH titlove',
			'accountPreferences.subtitleAccessibilityOptions.onlySdh' => 'Samo SDH titlovi',
			'accountPreferences.subtitleAccessibilityOptions.onlyNonSdh' => 'Samo titlovi koji nisu SDH',
			'accountPreferences.forcedSubtitles' => 'Prisilni titlovi',
			'accountPreferences.forcedSubtitleOptions.preferNonForced' => 'Preferirajte neforsirane titlove',
			'accountPreferences.forcedSubtitleOptions.preferForced' => 'Preferirajte prisilne titlove',
			'accountPreferences.forcedSubtitleOptions.onlyForced' => 'Samo prisilni titlovi',
			'accountPreferences.forcedSubtitleOptions.onlyNonForced' => 'Samo neforsirani titlovi',
			'accountPreferences.displayMissingEpisodes' => 'Prikaži epizode koje nedostaju',
			'accountPreferences.displayMissingEpisodesDescription' => 'Navedite epizode za koje poslužitelj zna, ali nema datoteku za njih.',
			'accountPreferences.hidePlayedInLatest' => 'Sakrij gledane stavke u Najnovije',
			'accountPreferences.hidePlayedInLatestDescription' => 'Ostavite stavke koje ste već gledali izvan najnovijih redaka poslužitelja.',
			'accountPreferences.displayCollectionsView' => 'Prikaži prikaz Zbirke',
			'accountPreferences.displayCollectionsViewDescription' => 'Prikaži zbirke s poslužitelja uz svoje biblioteke.',
			'accountPreferences.rewatchingInNextUp' => 'Zadržite ponovno gledane emisije u Next Up',
			'accountPreferences.rewatchingInNextUpDescription' => 'Nakon što završite emisiju, pokrenite je ponovno i Next Up slijedi ponovno gledanje umjesto da odustane od emisije.',
			'accountPreferences.watchedIndicator' => 'Gledani indikatori',
			'accountPreferences.watchedIndicatorOptions.none' => 'nikada',
			'accountPreferences.watchedIndicatorOptions.moviesAndShows' => 'Filmovi i TV emisije',
			'accountPreferences.watchedIndicatorOptions.movies' => 'Samo filmovi',
			'accountPreferences.watchedIndicatorOptions.shows' => 'Samo TV emisije',
			'accountPreferences.mediaReviewsVisibility' => 'Ocjene i recenzije',
			'accountPreferences.mediaReviewsOptions.usersAndCritics' => 'Korisnici i kritičari',
			'accountPreferences.mediaReviewsOptions.usersOnly' => 'Samo korisnici',
			'accountPreferences.mediaReviewsOptions.criticsOnly' => 'Samo kritičari',
			'accountPreferences.mediaReviewsOptions.nobody' => 'Skriveno',
			'discover.title' => 'Otkrijte',
			'discover.noContentAvailable' => 'Nema dostupnog sadržaja',
			'discover.addMediaToLibraries' => 'Dodajte sadržaj u svoje biblioteke',
			'discover.continueWatching' => 'Nastavi gledati',
			'discover.continueWatchingIn' => ({required Object library}) => 'Nastavi gledati u ${library}',
			'discover.nextUp' => 'Slijedi',
			'discover.nextUpIn' => ({required Object library}) => 'Slijedi u ${library}',
			'discover.recentlyAdded' => 'Nedavno dodano',
			'discover.recentlyAddedIn' => ({required Object library}) => 'Nedavno dodano u ${library}',
			'discover.latestAlbumsIn' => ({required Object library}) => 'Najnoviji albumi u ${library}',
			'discover.recentlyPlayedIn' => ({required Object library}) => 'Nedavno reproducirano u ${library}',
			'discover.mostPlayedIn' => ({required Object library}) => 'Najčešće reproducirano u ${library}',
			'discover.playEpisode' => ({required Object season, required Object episode}) => 'S${season}E${episode}',
			'discover.overview' => 'Pregled',
			'discover.cast' => 'Glumačka postava',
			'discover.extras' => 'Najave i dodaci',
			'discover.studio' => 'Studio',
			'discover.rating' => 'Ocjena',
			'discover.director' => 'redatelj',
			'discover.directors' => 'Redatelji',
			'discover.movie' => 'Film',
			'discover.tvShow' => 'TV serija',
			'discover.minutesLeft' => ({required Object minutes}) => 'Preostalo ${minutes} min',
			'discover.moreLikeThis' => 'Slični naslovi',
			'discover.titleCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hr'))(n, one: '${n} naslov', few: '${n} naslova', other: '${n} naslova', ), 
			'discover.person.born' => 'Rođenje',
			'discover.person.died' => 'Smrt',
			'discover.person.birthplace' => 'Mjesto rođenja',
			'discover.person.dateWithAge' => ({required Object date, required Object age}) => '${date} (${age} god.)',
			'discover.person.dateWithAgeAtDeath' => ({required Object date, required Object age}) => '${date} (${age} god. pri smrti)',
			'errors.searchFailed' => ({required Object error}) => 'Pretraga nije uspjela: ${error}',
			'errors.searchUnavailable' => 'Nije moguće povezati se ni s jednim medijskim poslužiteljem.',
			'errors.connectionTimeout' => ({required Object context}) => 'Isteklo je vrijeme veze pri učitavanju: ${context}',
			'errors.connectionFailed' => 'Nije moguće povezati se s medijskim poslužiteljem.',
			'errors.unableToLoad' => ({required Object context}) => 'Nije moguće učitati ${context}. Pokušajte ponovno.',
			'errors.noClientAvailable' => 'Nema dostupnog klijenta',
			'errors.pleaseEnterToken' => 'Unesite token',
			'errors.invalidToken' => 'Nevažeći token',
			'errors.failedToVerifyToken' => ({required Object error}) => 'Provjera tokena nije uspjela: ${error}',
			'errors.failedToSwitchProfile' => ({required Object displayName}) => 'Nije moguće prebaciti se na profil ${displayName}.',
			'errors.failedToDeleteProfile' => ({required Object displayName}) => 'Brisanje ${displayName} nije uspjelo',
			'errors.failedToRate' => 'Nije moguće ažurirati ocjenu',
			'errors.reasonTimedOut' => 'veza je istekla',
			'errors.reasonUnreachable' => 'poslužitelj nije dostupan',
			'errors.reasonRefused' => 'poslužitelj je odbio zahtjev',
			'errors.reasonNotFound' => 'stavka više nije na poslužitelju',
			'errors.reasonServerError' => 'poslužitelj je prijavio grešku',
			'errors.reasonCancelled' => 'zahtjev je poništen',
			'errors.reasonUnexpected' => 'došlo je do neočekivane pogreške',
			'libraries.title' => 'Biblioteke',
			'libraries.fallbackTitle' => 'Biblioteka',
			'libraries.scanLibraryFiles' => 'Skeniraj datoteke u biblioteci',
			'libraries.scanLibrary' => 'Skeniraj biblioteku',
			'libraries.analyze' => 'Analiziraj',
			'libraries.analyzeLibrary' => 'Analiziraj biblioteku',
			'libraries.refreshMetadata' => 'Osvježi metapodatke',
			'libraries.emptyTrash' => 'Isprazni smeće',
			'libraries.emptyingTrash' => ({required Object title}) => 'Pražnjenje koša za smeće „${title}”…',
			'libraries.trashEmptied' => ({required Object title}) => 'Koš za smeće biblioteke „${title}” je ispražnjen.',
			'libraries.failedToEmptyTrash' => ({required Object error}) => 'Pražnjenje koša za smeće nije uspjelo: ${error}',
			'libraries.analyzing' => ({required Object title}) => 'Analiza biblioteke „${title}”…',
			'libraries.analysisStarted' => ({required Object title}) => 'Pokrenuta je analiza biblioteke „${title}”.',
			'libraries.failedToAnalyze' => ({required Object error}) => 'Analiza biblioteke nije uspjela: ${error}',
			'libraries.noLibrariesFound' => 'Nije pronađena nijedna biblioteka',
			'libraries.allLibrariesHidden' => 'Sve su biblioteke skrivene',
			'libraries.hiddenLibrariesCount' => ({required Object count}) => 'Skrivene biblioteke (${count})',
			'libraries.thisLibraryIsEmpty' => 'Ova je biblioteka prazna',
			'libraries.noItemsMatchFilters' => 'Nijedna stavka ne odgovara odabranim filtrima.',
			'libraries.resetFilters' => 'Poništi filtre',
			'libraries.all' => 'Sve',
			'libraries.clearAll' => 'Obriši sve',
			'libraries.scanLibraryConfirm' => ({required Object title}) => 'Jeste li sigurni da želite skenirati "${title}"?',
			'libraries.analyzeLibraryConfirm' => ({required Object title}) => 'Jeste li sigurni da želite analizirati "${title}"?',
			'libraries.refreshMetadataConfirm' => ({required Object title}) => 'Jeste li sigurni da želite osvježiti metapodatke za "${title}"?',
			'libraries.emptyTrashConfirm' => ({required Object title}) => 'Jeste li sigurni da želite isprazniti otpad za "${title}"?',
			'libraries.manageLibraries' => 'Upravljanje bibliotekama',
			'libraries.sort' => 'Razvrstaj',
			'libraries.sortBy' => 'Razvrstaj po',
			'libraries.filters' => 'Filteri',
			'libraries.confirmActionMessage' => 'Jeste li sigurni da želite izvršiti ovu radnju?',
			'libraries.showLibrary' => 'Prikaži biblioteku',
			'libraries.hideLibrary' => 'Sakrij biblioteku',
			'libraries.libraryOptions' => 'Mogućnosti biblioteke',
			'libraries.content' => 'sadržaj biblioteke',
			'libraries.selectLibrary' => 'Odaberite biblioteku',
			'libraries.filtersWithCount' => ({required Object count}) => 'Filtri (${count})',
			'libraries.noRecommendations' => 'Nema dostupnih preporuka',
			'libraries.noCollections' => 'U ovoj biblioteci nema zbirki',
			'libraries.noFoldersFound' => 'Nema pronađenih mapa',
			'libraries.folders' => 'mape',
			'libraries.tabs.recommended' => 'Preporučeno',
			'libraries.tabs.browse' => 'Pregledaj',
			'libraries.tabs.collections' => 'Zbirke',
			'libraries.tabs.playlists' => 'Popisi pjesama',
			'libraries.groupings.title' => 'Grupiranje',
			'libraries.groupings.all' => 'Sve',
			'libraries.groupings.movies' => 'Filmovi',
			'libraries.groupings.shows' => 'TV emisije',
			'libraries.groupings.seasons' => 'Sezone',
			'libraries.groupings.episodes' => 'Epizode',
			'libraries.groupings.artists' => 'Umjetnici',
			'libraries.groupings.albums' => 'Albumi',
			'libraries.groupings.tracks' => 'Zvučni zapisi',
			'libraries.groupings.folders' => 'Mape',
			'libraries.filterCategories.genre' => 'Žanr',
			'libraries.filterCategories.year' => 'Godina',
			'libraries.filterCategories.contentRating' => 'Ocjena sadržaja',
			'libraries.filterCategories.tag' => 'Oznaka',
			'libraries.filterCategories.unwatched' => 'Negledan',
			'libraries.filterCategories.unplayed' => 'Nije reproducirano',
			'libraries.filterCategories.favorites' => 'Favoriti',
			'libraries.filterCategories.filePath' => 'Put do datoteke',
			'libraries.sortLabels.title' => 'Naslov',
			'libraries.sortLabels.dateAdded' => 'Datum dodavanja',
			'libraries.sortLabels.releaseDate' => 'Datum izlaska',
			'libraries.sortLabels.rating' => 'Ocjena',
			'libraries.sortLabels.communityRating' => 'Ocjena zajednice',
			'libraries.sortLabels.criticRating' => 'Ocjena kritičara',
			'libraries.sortLabels.userRating' => 'Ocjena korisnika',
			'libraries.sortLabels.datePlayed' => 'Datum gledanja',
			'libraries.sortLabels.playCount' => 'Broj reprodukcija',
			'libraries.sortLabels.productionYear' => 'Godina produkcije',
			'libraries.sortLabels.runtime' => 'Trajanje',
			'libraries.sortLabels.officialRating' => 'Dobna oznaka',
			'libraries.sortLabels.premiereDate' => 'Datum premijere',
			'libraries.sortLabels.startDate' => 'Datum početka',
			'libraries.sortLabels.airTime' => 'Vrijeme emitiranja',
			'libraries.sortLabels.studio' => 'Studio',
			'libraries.sortLabels.random' => 'Slučajno',
			'libraries.sortLabels.dateShared' => 'Datum dijeljenja',
			'libraries.sortLabels.latestEpisodeAirDate' => 'Datum emitiranja najnovije epizode',
			'libraries.sortLabels.lastEpisodeDateAdded' => 'Datum zadnje dodane epizode',
			'libraries.sortLabels.dateDownloaded' => 'Datum preuzimanja',
			'libraries.sortLabels.size' => 'Veličina',
			'libraries.sortLabels.library' => 'Biblioteka',
			'libraries.advancedFilters.include' => 'Uključi',
			'libraries.advancedFilters.exclude' => 'Isključi',
			'libraries.advancedFilters.any' => 'Bilo koje',
			'libraries.advancedFilters.yes' => 'Da',
			'libraries.advancedFilters.no' => 'Ne',
			'libraries.advancedFilters.not' => ({required Object value}) => 'Nije ${value}',
			'libraries.advancedFilters.valueCount' => ({required Object count}) => 'Odabrano ${count}',
			'libraries.advancedFilters.valueCountExcluded' => ({required Object count}) => '${count} isključeno',
			'libraries.advancedFilters.searchValues' => 'Pretraži vrijednosti',
			'libraries.advancedFilters.noValues' => 'Bez vrijednosti',
			'libraries.advancedFilters.matchContains' => 'Sadrži',
			'libraries.advancedFilters.matchNotContains' => 'Ne sadrži',
			'libraries.advancedFilters.matchIs' => 'Je li',
			'libraries.advancedFilters.matchIsNot' => 'Nije',
			'libraries.advancedFilters.matchBeginsWith' => 'Počinje s',
			'libraries.advancedFilters.matchEndsWith' => 'Završava s',
			'libraries.advancedFilters.textHint' => 'Upišite vrijednost',
			'libraries.advancedFilters.from' => 'Od',
			'libraries.advancedFilters.to' => 'Do',
			'libraries.advancedFilters.range' => ({required Object from, required Object to}) => '${from} do ${to}',
			'libraries.advancedFilters.atLeast' => ({required Object value}) => '${value} i više',
			'libraries.advancedFilters.atMost' => ({required Object value}) => 'Do ${value}',
			'libraries.advancedFilters.dateLastDays' => ({required Object count}) => 'Posljednjih ${count} dana',
			'libraries.advancedFilters.dateLastYear' => 'Prošle godine',
			'libraries.advancedFilters.dateOlderThanDays' => ({required Object count}) => 'Starije od ${count} dana',
			'libraries.advancedFilters.dateOlderThanYear' => 'Starije od godinu dana',
			'about.title' => 'O aplikaciji',
			'about.openSourceLicenses' => 'Licence otvorenog koda',
			'about.versionLabel' => ({required Object version}) => 'Verzija ${version}',
			'about.appDescription' => 'Vaši filmovi, serije i glazba s Plexa, Jellyfina i Embyja — na jednom mjestu.',
			'about.customSource' => 'Izvorni kod',
			_ => null,
		} ?? switch (path) {
			'about.basedOnLuroka' => 'Temelji se na izvornom kodu projekta Plezy',
			'about.viewLicensesDescription' => 'Softver i biblioteke koje koristi Luroka',
			'about.appSection' => 'Aplikacija',
			'about.communitySection' => 'Zajednica',
			'about.creditsSection' => 'Zasluge',
			'about.legalSection' => 'Pravne informacije',
			'about.versionMeta' => ({required Object version, required Object build, required Object platform}) => 'v${version} (${build}) · ${platform}',
			'about.versionMetaNoBuild' => ({required Object version, required Object platform}) => 'v${version} · ${platform}',
			'about.versionUnavailable' => 'Verzija nije dostupna',
			'about.versionDetails' => 'Pojedinosti o verziji',
			'about.versionDetailsTitle' => ({required Object version, required Object build}) => 'Luroka ${version} (${build})',
			'about.platformLine' => ({required Object platform}) => 'Platforma: ${platform}',
			'about.deviceLine' => ({required Object model}) => 'Uređaj: ${model}',
			'about.packageLine' => ({required Object package}) => 'Paket: ${package}',
			'about.localeLine' => ({required Object locale}) => 'Jezik: ${locale}',
			'about.copyDetails' => 'Kopiraj detalje',
			'about.detailsCopied' => 'Pojedinosti o aplikaciji kopirane',
			'about.detailsCopyFailed' => 'Nije moguće kopirati pojedinosti aplikacije',
			'about.checkForUpdatesDescription' => 'Provjeri na GitHubu ima li novije verzije.',
			'about.checkingForUpdates' => 'Provjera ažuriranja...',
			'about.whatsNew' => 'Što je novo',
			'about.releaseNotesUnavailable' => 'Nema dostupnih napomena o izdanju.',
			'about.sourceCodeDescription' => 'Luroka na GitHubu',
			'about.reportIssue' => 'Prijavi problem',
			'about.reportIssueDescription' => 'Javite nam što nije radilo.',
			'about.documentation' => 'Dokumentacija',
			'about.documentationDescription' => 'Postavljanje, značajke i napomene o izdanjima.',
			'about.upstreamProjectDescription' => 'Izvorni projekt otvorenog koda edde746 i njegovih suradnika.',
			'about.upstreamWebsite' => 'Web-stranica izvornog projekta',
			'about.attribution' => 'Podaci i izvori',
			'about.attributionDescription' => 'Metapodaci, ocjene i zaštitni znakovi',
			'about.attributionBody' => 'Ovaj proizvod koristi TMDB API, ali ga TMDB ne podupire niti certificira. Popise popularnosti, metapodatke i IMDb ocjene pruža Cinemeta. Ocjene zadržavaju izvorne oznake.',
			'about.trademarkNotices' => 'Plex, Jellyfin, Emby, Trakt, Simkl, MyAnimeList, AniList, TMDB i povezani nazivi zaštitni su znakovi njihovih vlasnika. Aplikacija Luroka nije povezana s tim tvrtkama niti ih podupire.',
			'about.privacyPolicy' => 'Politika privatnosti',
			'about.privacyPolicyDescription' => 'Kako se postupa s vašim podacima',
			'about.gplLicense' => 'GNU GPL-3.0 licenca',
			'about.gplLicenseDescription' => 'Luroka je besplatan softver',
			'about.linkOpenFailed' => 'Nije moguće otvoriti ovu vezu',
			'about.opensInBrowser' => 'Otvara se u vašem pregledniku',
			'about.footer' => 'Luroka je slobodan softver licenciran pod GPL-3.0.',
			'about.copyright' => ({required Object year}) => '© ${year} Luroka suradnici',
			'serverSelection.noServersFoundForAccount' => ({required Object username, required Object email}) => 'Nisu pronađeni poslužitelji za ${username} (${email})',
			'serverSelection.failedToLoadServers' => ({required Object error}) => 'Nije moguće učitati poslužitelje: ${error}',
			'serverSelection.noValidServers' => 'Na ovom računu nisu pronađeni upotrebljivi poslužitelji',
			'hubDetail.title' => 'Naslov',
			'hubDetail.releaseYear' => 'Godina izdanja',
			'hubDetail.dateAdded' => 'Datum dodavanja',
			'hubDetail.rating' => 'Ocjena',
			'hubDetail.noItemsFound' => 'Nema pronađenih stavki',
			'logs.clearLogs' => 'Obriši zapisnike',
			'logs.copyLogs' => 'Kopiraj zapisnike',
			'logs.uploadLogs' => 'Prijenos zapisa',
			'startup.failedTitle' => 'Nije moguće pokrenuti Luroku',
			'startup.failedBody' => 'Došlo je do pogreške pri pokretanju. U nastavku su pojedinosti o tome što nije uspjelo.',
			'startup.failedBodyRepairable' => 'Datoteka s postavkama aplikacije Luroka oštećena je i treba je obnoviti prije ponovnog pokretanja. Ponovni pokušaj neće pomoći — odaberite Popravi pohranu.',
			'startup.phaseLabel' => 'Korak',
			'startup.showDetails' => 'Prikaži detalje',
			'startup.hideDetails' => 'Sakrij detalje',
			'startup.copyDetails' => 'Kopiraj detalje',
			'startup.detailsCopied' => 'Pojedinosti kopirane u međuspremnik',
			'startup.uploadDetails' => 'Učitaj pojedinosti',
			'startup.repairStorage' => 'Popravi pohranu',
			'startup.repairTitle' => 'Popraviti pohranjene podatke?',
			'startup.repairBodyCommon' => 'Datoteka s postavkama aplikacije Luroka oštećena je i ne može se pročitati. Popravkom će se sve postavke vratiti na zadane vrijednosti.',
			'startup.repairBodyOneCredential' => 'Jednu spremljenu prijavu nije moguće pročitati jer je oštećena. Popravkom će se ukloniti samo ta prijava; ostale postavke ostat će sačuvane.',
			'startup.repairBodySignInsKept' => 'Vaši poslužitelji i profili trebali bi ostati prijavljeni.',
			'startup.repairBodySignInsLost' => 'Ključ za zaštitu spremljenih prijava nije moguće obnoviti iz ove datoteke pa ćete se morati ponovno prijaviti na svaki poslužitelj i profil. To neće utjecati na podatke na vašim medijskim poslužiteljima.',
			'startup.repairBodySessionsUncertain' => 'Povezane usluge (MAL, AniList, Simkl i Trakt) i Seerr pohranjuju se zasebno pa možda neće biti sačuvane. Luroka će prikazati što je sačuvano.',
			'startup.repairConfirm' => 'Popravak',
			'startup.repairSucceeded' => 'Spremište popravljeno',
			'startup.repairNeedsRestart' => 'Pohrana je popravljena — potrebno je ponovno pokretanje',
			'startup.restartRequiredBody' => 'Podaci su popravljeni, ali aplikaciju Luroka treba ponovno pokrenuti prije nego što ih može koristiti. Zatvorite je pa je ponovno otvorite.',
			'startup.quitLuroka' => 'Zatvori Luroka',
			'startup.repairFailed' => 'Popravak nije uspio',
			'startup.repairKeptSignIns' => 'Vaši poslužitelji i profili i dalje su prijavljeni.',
			'startup.repairLostSignIns' => 'Ključ koji štiti vaše spremljene prijave nije se mogao vratiti. Morat ćete se ponovno prijaviti na svaki poslužitelj i profil.',
			'startup.repairLostSessions' => 'Izgubljena je veza s barem jednom uslugom praćenja ili sa Seerrom. Povežite je ponovno.',
			'startup.backupTitle' => 'Sačuvana je kopija oštećene datoteke',
			'startup.backupWarning' => 'Sadrži vaše podatke za prijavu. Nemojte je slati niti dijeliti.',
			'startup.deleteBackup' => 'Izbriši kopiju',
			'startup.backupDeleted' => 'Kopija izbrisana.',
			'startup.previousFailureTitle' => 'Luroku prošli put nije bilo moguće pokrenuti',
			'licenses.relatedPackages' => 'Povezani paketi',
			'licenses.license' => 'Licenca',
			'licenses.licenseNumber' => ({required Object number}) => 'Licenca ${number}',
			'licenses.licensesCount' => ({required Object count}) => '${count} licence',
			'licenses.searchHint' => 'Traži pakete',
			'licenses.noResults' => ({required Object query}) => 'Nijedan paket ne odgovara "${query}"',
			'licenses.clearSearch' => 'Očisti pretragu',
			'navigation.libraries' => 'Biblioteke',
			'navigation.downloads' => 'Preuzimanja',
			'navigation.liveTv' => 'TV uživo',
			'navigation.explore' => 'Otkrijte',
			'explore.title' => 'Otkrijte',
			'explore.selectSource' => 'Odaberite izvor',
			'explore.rows.watchlist' => 'Popis za gledanje',
			'explore.rows.recommendedMovies' => 'Preporučeni filmovi',
			'explore.rows.recommendedShows' => 'Preporučene serije',
			'explore.rows.trendingMovies' => 'Filmovi u trendu',
			'explore.rows.trendingShows' => 'Serije u trendu',
			'explore.rows.popularMovies' => 'Popularni filmovi',
			'explore.rows.popularShows' => 'Popularne serije',
			'explore.rows.trendingAnime' => 'Anime u trendu',
			'explore.rows.suggestedAnime' => 'Predloženi anime',
			'explore.rows.airingAnime' => 'Anime serije koje se trenutačno emitiraju',
			'explore.rows.popularAnime' => 'Najpopularniji anime',
			'explore.rows.trending' => 'U trendu',
			'explore.rows.upcomingMovies' => 'Nadolazeći filmovi',
			'explore.rows.upcomingShows' => 'Nadolazeće serije',
			'explore.status.airing' => 'Emitira se',
			'explore.status.ended' => 'Završeno',
			'explore.status.canceled' => 'Otkazano',
			'explore.status.upcoming' => 'Nadolazeće',
			'explore.episodeCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hr'))(n, one: '${n} epizoda', few: '${n} epizode', other: '${n} epizoda', ), 
			'explore.cast' => 'Glumačka postava',
			'explore.characters' => 'Likovi',
			'explore.addToWatchlist' => 'Dodaj na popis za gledanje',
			'explore.removeFromWatchlist' => 'Ukloni s popisa za praćenje',
			'explore.addedToWatchlist' => 'Dodano na popis za gledanje',
			'explore.removedFromWatchlist' => 'Uklonjeno s popisa za praćenje',
			'explore.watchlistUpdateFailed' => 'Nije moguće ažurirati popis za gledanje',
			'explore.watchlistNoMatch' => 'Nije moguće povezati ovu stavku s popisom za praćenje',
			'explore.notInLibrary' => 'Nije u vašoj biblioteci',
			'explore.inTheseLibraries' => 'U ovim bibliotekama',
			'explore.checkingLibrary' => 'Provjera vaše biblioteke...',
			'explore.libraryCheckFailed' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hr'))(n, one: 'Nije moguće provjeriti ${n} poslužitelj', few: 'Nije moguće provjeriti ${n} poslužitelja', other: 'Nije moguće provjeriti ${n} poslužitelja', ), 
			'explore.emptyTitle' => 'Ovdje još nema ništa',
			'explore.emptyMessage' => ({required Object source}) => 'Redci iz ${source} pojavit će se ovdje kad budu sadržavali naslove.',
			'explore.searchHint' => ({required Object source}) => 'Traži ${source}',
			'explore.searchEmpty' => ({required Object query}) => 'Nema rezultata za "${query}"',
			'explore.searchPrompt' => ({required Object source}) => 'Potražite filmove i emisije na ${source}.',
			'explore.searchFailed' => 'Pretraga nije uspjela. Provjerite vezu i pokušajte ponovno.',
			'explore.badge.rankPopular' => ({required Object n}) => '#${n} popularno',
			'explore.badge.rankAiring' => ({required Object n}) => '#${n} u emitiranju',
			'explore.badge.rankRated' => ({required Object n}) => 'Ocijenjeno #${n}',
			'explore.badge.rankTrending' => ({required Object n}) => '#${n} u trendu',
			'explore.badge.rankSeasonal' => ({required Object n, required Object season}) => '#${n} u ${season}',
			'explore.badge.watchingNow' => ({required Object n}) => '${n} trenutačno gleda',
			'explore.badge.available' => 'Dostupno',
			'explore.badge.partiallyAvailable' => 'Djelomično dostupno',
			'explore.badge.availableIn4k' => 'Dostupno u 4K razlučivosti',
			'explore.badge.requested' => 'Zatraženo',
			'explore.badge.pendingApproval' => 'Čeka odobrenje',
			'explore.badge.processing' => 'Obrada',
			'explore.badge.declined' => 'Odbijeno',
			'explore.badge.requestFailed' => 'Zahtjev nije uspio',
			'explore.badge.requested4k' => 'Zatraženo je 4K',
			'explore.badge.seasonsAvailable' => ({required Object available, required Object total}) => '${available}/${total} sezona dostupno',
			'explore.badge.nextEpisodeIn' => ({required Object episode, required Object duration}) => 'Ep. ${episode} u ${duration}',
			'explore.badge.nextAiringIn' => ({required Object duration}) => 'Sljedeće u ${duration}',
			'explore.badge.episodesShort' => ({required Object n}) => '${n} eps',
			'explore.badge.minutesPerEpisode' => ({required Object n}) => '${n} min/ep',
			'explore.badge.adult' => '18+',
			'explore.stats.listed' => ({required Object n}) => 'Na popisu: ${n}',
			'explore.stats.viewersDay' => ({required Object n}) => 'Danas gledalo: ${n}',
			'explore.stats.viewersWeek' => ({required Object n}) => 'Ovog tjedna gledalo: ${n}',
			'explore.stats.viewersMonth' => ({required Object n}) => 'Ovog mjeseca gledalo: ${n}',
			'explore.stats.viewersYear' => ({required Object n}) => 'Ove godine gledalo: ${n}',
			'explore.stats.viewersAllTime' => ({required Object n}) => 'Ukupno gledatelja: ${n}',
			'explore.stats.planning' => ({required Object n}) => 'Planira gledati: ${n}',
			'explore.stats.favorited' => ({required Object n}) => 'Dodano među favorite: ${n}',
			'explore.stats.dropRate' => ({required Object percent}) => 'Odustalo je ${percent} korisnika',
			'explore.stats.comments' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hr'))(n, one: '${n} komentar', few: '${n} komentara', other: '${n} komentara', ), 
			'explore.stats.votes' => ({required Object n}) => '${n} glasova',
			'explore.stats.watching' => ({required Object n}) => 'Gleda: ${n}',
			'explore.stats.completed' => ({required Object n}) => 'Pogledalo do kraja: ${n}',
			'explore.stats.onHold' => ({required Object n}) => 'Na čekanju: ${n}',
			'explore.stats.dropped' => ({required Object n}) => 'Odustalo: ${n}',
			'explore.season.winter' => 'Zima',
			'explore.season.spring' => 'Proljeće',
			'explore.season.summer' => 'Ljeto',
			'explore.season.fall' => 'Jesen',
			'explore.season.withYear' => ({required Object season, required Object year}) => '${season} ${year}',
			'explore.format.tv' => 'TV',
			'explore.format.tvShort' => 'Kratka TV serija',
			'explore.format.movie' => 'Film',
			'explore.format.special' => 'Specijalna epizoda',
			'explore.format.ova' => 'OVA',
			'explore.format.ona' => 'ONA',
			'explore.format.music' => 'Glazba',
			'explore.format.other' => 'Ostalo',
			'explore.sourceMaterial.original' => 'Izvornik',
			'explore.sourceMaterial.manga' => 'Manga',
			'explore.sourceMaterial.lightNovel' => 'Roman s ilustracijama',
			'explore.sourceMaterial.novel' => 'Roman',
			'explore.sourceMaterial.visualNovel' => 'Vizualni roman',
			'explore.sourceMaterial.game' => 'Videoigra',
			'explore.sourceMaterial.webComic' => 'Web strip',
			'explore.sourceMaterial.musicRelease' => 'Glazba',
			'explore.sourceMaterial.otherMedia' => 'Ostali mediji',
			'explore.creditRole.actor' => 'Glumac',
			'explore.creditRole.director' => 'Redatelj',
			'explore.creditRole.writer' => 'Scenarist',
			'explore.creditRole.producer' => 'Producent',
			'explore.creditRole.creator' => 'Autor',
			'explore.creditRole.composer' => 'Skladatelj',
			'explore.relation.prequel' => 'Prednastavak',
			'explore.relation.sequel' => 'Nastavak',
			'explore.relation.sideStory' => 'Sporedna priča',
			'explore.relation.spinOff' => 'Izvedena serija',
			'explore.relation.alternativeVersion' => 'Alternativna verzija',
			'explore.relation.summary' => 'Sažetak',
			'explore.relation.parentStory' => 'Izvorna priča',
			'explore.relation.adaptation' => 'Adaptacija',
			'explore.relation.other' => 'Povezano',
			'explore.broadcast' => ({required Object day, required Object time}) => 'Emitira ${day} na ${time}',
			'explore.broadcastWithZone' => ({required Object day, required Object time, required Object timezone}) => 'Emitiranje ${day} na ${time} ${timezone}',
			'explore.detail.originalTitle' => 'Izvorni naslov',
			'explore.detail.alsoKnownAs' => 'Također poznat kao',
			'explore.detail.studios' => 'Studiji',
			'explore.detail.country' => 'Država',
			'explore.detail.language' => 'Jezik',
			'explore.detail.released' => 'Datum izlaska',
			'explore.detail.physicalRelease' => 'Na disku',
			'explore.detail.ended' => 'Završeno',
			'explore.detail.addedOn' => ({required Object date}) => 'Dodano ${date}',
			'explore.detail.yourRating' => 'Vaša ocjena',
			'explore.detail.budget' => 'Proračun',
			'explore.detail.revenue' => 'Prihod od ulaznica',
			'explore.detail.contentAdvisory' => 'Smjernice za dob',
			'explore.detail.tags' => 'Oznake',
			'explore.detail.revealSpoilerTags' => 'Prikaži oznake spojlera',
			'explore.detail.links' => 'Poveznice',
			'explore.detail.watchOn' => 'Gledaj na',
			'explore.detail.watchTrailer' => 'Pogledaj najavu',
			'explore.detail.openOn' => ({required Object site}) => 'Otvori na ${site}',
			'explore.detail.crew' => 'Filmska ekipa',
			'explore.detail.ratings' => 'Ocjene',
			'explore.detail.schedule' => 'Raspored',
			'explore.detail.recommendedByUsers' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hr'))(n, one: 'Preporučuje ${n} korisnik', few: 'Preporučuju ${n} korisnika', other: 'Preporučuje ${n} korisnika', ), 
			'explore.detail.recommendedBy' => ({required Object who}) => 'Preporučuje ${who}',
			'explore.detail.favoritedBy' => ({required Object who}) => '${who} je dodao među favorite',
			'explore.detail.unairedEpisodes' => ({required Object n}) => 'Neemitiranih epizoda: ${n}',
			'explore.detail.recommendedByPercent' => ({required Object percent}) => 'Preporučuju ${percent} % gledatelja',
			'explore.detail.relatedTitles' => 'Povezani naslovi',
			'explore.detail.background' => 'Pozadina',
			'explore.totalResults' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hr'))(n, one: '${n} rezultat', few: '${n} rezultata', other: '${n} rezultata', ), 
			'liveTv.title' => 'TV uživo',
			'liveTv.guide' => 'TV vodič',
			'liveTv.noChannels' => 'Nema dostupnih kanala',
			'liveTv.noDvr' => 'DVR nije postavljen ni na jednom poslužitelju.',
			'liveTv.serverUnavailable' => 'Poslužitelj TV uživo nije dostupan.',
			'liveTv.serverNotConnected' => 'Poslužitelj za TV uživo nije povezan.',
			'liveTv.noPrograms' => 'Nema dostupnih podataka o programu',
			'liveTv.liveStreamFailed' => 'Prijenos uživo nije uspio',
			'liveTv.unknownProgram' => 'Nepoznati program',
			'liveTv.unknownHub' => 'Nepoznato',
			'liveTv.unknownError' => 'Nepoznata pogreška',
			'liveTv.channelNumber' => ({required Object number}) => 'Kanal ${number}',
			'liveTv.unknownChannel' => 'Nepoznati kanal',
			'liveTv.live' => 'UŽIVO',
			'liveTv.reloadGuide' => 'Ponovno učitaj vodič',
			'liveTv.searchGuide' => 'Pretraži vodič',
			'liveTv.searchHint' => 'Pretraži kanale i programe',
			'liveTv.searchNoResults' => ({required Object query}) => 'Nema rezultata za "${query}"',
			'liveTv.channelsSection' => 'Kanali',
			'liveTv.programsSection' => 'Programi',
			'liveTv.now' => 'Sada',
			'liveTv.today' => 'Danas',
			'liveTv.tomorrow' => 'Sutra',
			'liveTv.midnight' => 'Ponoć',
			'liveTv.overnight' => 'Tijekom noći',
			'liveTv.morning' => 'Jutro',
			'liveTv.daytime' => 'Dnevno',
			'liveTv.evening' => 'Večer',
			'liveTv.lateNight' => 'Kasna noć',
			'liveTv.whatsOn' => 'Što je na programu',
			'liveTv.watchChannel' => 'Gledaj kanal',
			'liveTv.favorites' => 'Favoriti',
			'liveTv.reorderFavorites' => 'Promijeni redoslijed favorita',
			'liveTv.noFavoriteChannels' => 'Nema omiljenih kanala',
			'liveTv.noFavoriteChannelsHint' => 'Prikaži sve kanale, zatim dugo pritisni kanal da bi ga dodao među favorite.',
			'liveTv.showAllChannels' => 'Prikaži sve kanale',
			'liveTv.favoritesLoadFailed' => 'Nije moguće učitati favorite. Provjerite vezu i pokušajte ponovno.',
			'liveTv.favoritesUpdateFailed' => 'Nije moguće ažurirati favorite. Provjerite vezu i pokušajte ponovno.',
			'liveTv.joinSession' => 'Pridruži se prijenosu u tijeku',
			'liveTv.watchFromStart' => ({required Object minutes}) => 'Gledaj od početka (kasni ${minutes} min)',
			'liveTv.watchLive' => 'Gledaj uživo',
			'liveTv.goToLive' => 'Idi na prijenos uživo',
			'liveTv.record' => 'Snimi',
			'liveTv.recordEpisode' => 'Snimi epizodu',
			'liveTv.recordSeries' => 'Snimi seriju',
			'liveTv.recordOptions' => 'Mogućnosti snimanja',
			'liveTv.saveTo' => 'Spremi u',
			'liveTv.recordings' => 'Snimke',
			'liveTv.scheduledRecordings' => 'Zakazana snimanja',
			'liveTv.recordingRules' => 'Pravila snimanja',
			'liveTv.noScheduledRecordings' => 'Ništa nije planirano za snimanje',
			'liveTv.manageRecording' => 'Upravljanje snimanjem',
			'liveTv.cancelRecording' => 'Otkaži snimanje',
			'liveTv.cancelRecordingTitle' => 'Otkazati ovo snimanje?',
			'liveTv.cancelRecordingMessage' => ({required Object title}) => '${title} više se neće snimati.',
			'liveTv.deleteRule' => 'Brisanje pravila',
			'liveTv.deleteRuleTitle' => 'Izbrisati pravilo snimanja?',
			'liveTv.deleteRuleMessage' => ({required Object title}) => 'Buduće epizode ${title} neće se snimati.',
			'liveTv.recordingScheduled' => 'Zakazano snimanje',
			'liveTv.alreadyScheduled' => 'Ovaj program je već zakazan',
			'liveTv.dvrAdminRequired' => 'DVR postavke zahtijevaju administratorski račun',
			'liveTv.recordingFailed' => 'Nije moguće zakazati snimanje',
			'liveTv.recordingTargetMissing' => 'Nije moguće odrediti biblioteku za snimke',
			'liveTv.recordNotAvailable' => 'Snimanje nije dostupno za ovaj program',
			'liveTv.recordingCancelled' => 'Snimanje je otkazano',
			'liveTv.recordingRuleDeleted' => 'Pravilo snimanja izbrisano',
			'liveTv.processRecordingRules' => 'Ponovno obradi pravila snimanja',
			'liveTv.recordingInProgress' => 'Snima se sada',
			'liveTv.recordingsCount' => ({required Object count}) => 'Zakazanih snimanja: ${count}',
			'liveTv.editRule' => 'Uredi pravilo',
			'liveTv.editRuleAction' => 'Uredi',
			'liveTv.recordingRuleUpdated' => 'Ažurirano pravilo snimanja',
			'liveTv.guideReloadRequested' => 'Zatraženo je osvježenje vodiča',
			'liveTv.guideReloadFailed' => 'Nije moguće osvježiti vodič',
			'liveTv.rulesProcessRequested' => 'Zatraženo je ponovno ocjenjivanje pravila',
			'liveTv.rulesProcessFailed' => 'Nije moguće ponovno procijeniti pravila snimanja',
			'liveTv.recordShow' => 'Snimi seriju',
			'liveTv.recordSettings.startEarly' => 'Počni snimati ranije (u sekundama)',
			'liveTv.recordSettings.endLate' => 'Završi snimati kasnije (u sekundama)',
			'liveTv.recordSettings.newOnly' => 'Samo nove epizode',
			'liveTv.recordSettings.anyChannel' => 'Snimi na bilo kojem kanalu',
			'liveTv.recordSettings.anyTime' => 'Snimi u bilo koje vrijeme',
			'liveTv.recordSettings.skipInLibrary' => 'Preskoči epizode koje su već u biblioteci',
			'liveTv.recordSettings.keepUpTo' => 'Epizode koje treba zadržati',
			'liveTv.recordSettings.keepUpToHint' => '0 čuva svaku epizodu',
			'liveTv.startingInMinutes' => ({required Object minutes}) => 'Počinje za ${minutes} min',
			'liveTv.dayAtTime' => ({required Object day, required Object time}) => '${day} u ${time}',
			'liveTv.invalidPlaybackData' => ({required Object product}) => '${product} vratio je nevažeće podatke o reprodukciji TV-a uživo',
			'liveTv.failedToStartChannel' => 'Nije moguće pokrenuti kanal uživo',
			'liveTv.failedToBuildStreamUrl' => 'Nije moguće izraditi adresu prijenosa.',
			'liveTv.playbackStartFailed' => ({required Object reason}) => 'Nije moguće pokrenuti kanal: ${reason}',
			'liveTv.channelSwitchFailed' => ({required Object reason}) => 'Nije moguće promijeniti kanal: ${reason}',
			'collections.title' => 'Zbirke',
			'collections.collection' => 'zbirka',
			'collections.empty' => 'Zbirka je prazna',
			'collections.deleteCollection' => 'Izbriši zbirku',
			'collections.deleteConfirm' => ({required Object title}) => 'Izbrisati "${title}"? Ovo se ne može poništiti.',
			'collections.deleted' => 'Zbirka izbrisana',
			'collections.deleteFailed' => 'Brisanje zbirke nije uspjelo',
			'collections.deleteFailedWithError' => ({required Object error}) => 'Brisanje zbirke nije uspjelo: ${error}',
			'collections.selectCollection' => 'Odaberite zbirku',
			'collections.collectionName' => 'Naziv zbirke',
			'collections.enterCollectionName' => 'Unesite naziv zbirke',
			'collections.addedToCollection' => 'Dodano u zbirku',
			'collections.errorAddingToCollection' => 'Dodavanje u zbirku nije uspjelo',
			'collections.created' => 'Zbirka stvorena',
			'collections.removeFromCollection' => 'Ukloni iz zbirke',
			'collections.removeFromCollectionConfirm' => ({required Object title}) => 'Ukloniti "${title}" iz ove zbirke?',
			'collections.removedFromCollection' => 'Uklonjeno iz zbirke',
			'collections.removeFromCollectionFailed' => 'Uklanjanje iz zbirke nije uspjelo',
			'collections.removeFromCollectionError' => ({required Object error}) => 'Pogreška pri uklanjanju iz zbirke: ${error}',
			'collections.searchCollections' => 'Pretraži zbirke...',
			'playlists.title' => 'Popisi za reprodukciju',
			'playlists.playlist' => 'Popis za reprodukciju',
			'playlists.noPlaylists' => 'Nije pronađen nijedan popis za reprodukciju',
			'playlists.create' => 'Stvori popis za reprodukciju',
			'playlists.playlistName' => 'Naziv popisa za reprodukciju',
			'playlists.enterPlaylistName' => 'Unesite naziv popisa za reprodukciju',
			'playlists.delete' => 'Izbriši popis za reprodukciju',
			'playlists.removeItem' => 'Ukloni s popisa za reprodukciju',
			'playlists.smartPlaylist' => 'Pametni popis za reprodukciju',
			'playlists.itemCount' => ({required Object count}) => 'Broj stavki: ${count}',
			'playlists.oneItem' => '1 stavka',
			'playlists.emptyPlaylist' => 'Ovaj popis za reprodukciju je prazan',
			'playlists.deleteConfirm' => 'Izbrisati popis za reprodukciju?',
			'playlists.deleteMessage' => ({required Object name}) => 'Jeste li sigurni da želite izbrisati "${name}"?',
			'playlists.created' => 'Popis za reprodukciju stvoren',
			'playlists.deleted' => 'Popis za reprodukciju izbrisan',
			'playlists.itemAdded' => 'Dodano na popis za reprodukciju',
			'playlists.itemRemoved' => 'Uklonjeno s popisa za reprodukciju',
			'playlists.selectPlaylist' => 'Odaberite popis za reprodukciju',
			'playlists.searchPlaylists' => 'Pretraživanje popisa za reprodukciju...',
			'playlists.errorCreating' => 'Izrada popisa za reprodukciju nije uspjela',
			'playlists.errorDeleting' => 'Brisanje popisa za reprodukciju nije uspjelo',
			'playlists.errorLoading' => 'Nije uspjelo učitavanje popisa za reprodukciju',
			'playlists.errorAdding' => 'Dodavanje na popis za reprodukciju nije uspjelo',
			'playlists.errorReordering' => 'Promjena redoslijeda stavke popisa za reprodukciju nije uspjela',
			'playlists.errorRemoving' => 'Uklanjanje s popisa za reprodukciju nije uspjelo',
			'music.goToAlbum' => 'Idi na album',
			'music.goToArtist' => 'Idi na izvođača',
			'music.instantMix' => 'Instant miks',
			'music.playNext' => 'Reproduciraj sljedeću pjesmu',
			'music.addToQueue' => 'Dodaj u red čekanja',
			'music.discNumber' => ({required Object n}) => 'Disk ${n}',
			'music.trackCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hr'))(n, one: '${n} pjesma', few: '${n} pjesme', other: '${n} pjesama', ), 
			'music.nowPlaying' => 'Trenutačno se reproducira',
			'music.playingFrom' => ({required Object title}) => 'Reproducira se iz albuma ${title}',
			'music.queue' => 'Red čekanja',
			'music.clearQueue' => 'Očisti red čekanja',
			'music.lyrics' => 'Tekst pjesme',
			'music.noLyrics' => 'Nema dostupnih tekstova',
			'music.sleepTimer' => 'Mjerač vremena za isključivanje',
			'music.sleepTimerEndOfTrack' => 'Kraj pjesme',
			'music.sleepTimerMinutes' => ({required Object n}) => '${n} minuta',
			'music.stopPlayback' => 'Zaustavi reprodukciju',
			'music.previousTrack' => 'Prethodna pjesma',
			'music.nextTrack' => 'Sljedeća pjesma',
			'music.repeat' => 'Ponovi',
			'music.repeatAll' => 'Ponovi sve',
			'music.repeatOne' => 'Ponovi jedno',
			'music.instantMixNoServer' => 'Nijedan poslužitelj nije dostupan za automatski miks.',
			'music.instantMixFailed' => 'Nije moguće učitati automatski miks.',
			'music.instantMixEmpty' => 'Automatski miks nije sadržavao nijedan zapis.',
			'music.noAudioUrl' => ({required Object track}) => 'Nema dostupne adrese zvuka za ${track}.',
			'music.discography.singlesAndEps' => 'Singlovi i EP-ovi',
			'music.discography.live' => 'Uživo',
			'music.discography.compilations' => 'Kompilacije',
			'watchTogether.title' => 'Zajedničko gledanje',
			'watchTogether.description' => 'Gledajte sadržaj istodobno s prijateljima i obitelji.',
			'watchTogether.createRoom' => 'Izradi sobu',
			'watchTogether.creatingRoom' => 'Izrada sobe...',
			'watchTogether.joinRoom' => 'Pridruži se sobi',
			'watchTogether.joiningRoom' => 'Pridruživanje sobi...',
			'watchTogether.connecting' => 'Povezivanje…',
			'watchTogether.relayPublic' => 'Sobe koriste javne relejne poslužitelje za Open Watch Party.',
			'watchTogether.relayCustom' => ({required Object url}) => 'Sobe koriste vaš relej na ${url}.',
			'watchTogether.recentRooms' => 'Nedavne sobe',
			'watchTogether.roomActions' => 'Radnje u sobi',
			'watchTogether.renameRoom' => 'Preimenuj sobu',
			'watchTogether.removeRoom' => 'Ukloniti',
			'watchTogether.enterRoomCode' => 'Unesite šesteroznamenkasti kod koji je prikazan domaćinu.',
			'watchTogether.roomCode' => 'Kod sobe',
			'watchTogether.paste' => 'Zalijepi',
			'watchTogether.noCodeInClipboard' => 'Međuspremnik ne sadrži kod sobe.',
			'watchTogether.copyCode' => 'Kopiraj kod',
			'watchTogether.codeCopied' => 'Kod sobe kopiran',
			'watchTogether.shareInvite' => 'Podijeli pozivnicu',
			'watchTogether.qrShare' => 'Podijeli QR kod',
			'watchTogether.qrHint' => 'Skenirajte pomoću aplikacije Luroka da biste se pridružili ovoj sobi.',
			'watchTogether.phasePlaying' => 'Reprodukcija u tijeku',
			'watchTogether.phasePaused' => 'Pauzirano',
			'watchTogether.phaseWaiting' => 'Čeka ostale',
			'watchTogether.inviteCopied' => 'Pozivnica je kopirana. Zalijepite je u poruku.',
			'watchTogether.inviteMessage' => ({required Object code}) => 'Pridružite se mojoj sobi za zajedničko gledanje u Luroki: luroka://watch?code=${code} — ili otvorite Zajedničko gledanje i unesite ${code}.',
			'watchTogether.openSessionControls' => 'Otvori kontrole sesije za zajedničko gledanje',
			'watchTogether.reconnecting' => 'Ponovno povezivanje...',
			'watchTogether.reconnectingDescription' => 'Veza je prekinuta. Automatski se ponovno pridružujete sobi.',
			'watchTogether.connected' => 'Povezano',
			'watchTogether.disconnected' => 'Prekinuto',
			'watchTogether.youAreHost' => 'Vi ste domaćin',
			'watchTogether.hostedBy' => ({required Object name}) => 'Domaćin je ${name}',
			'watchTogether.hostControlsPlayback' => 'Domaćin kontrolira reprodukciju',
			'watchTogether.anyoneCanControl' => 'Svatko može kontrolirati reprodukciju',
			'watchTogether.roomLocked' => 'Soba je zaključana',
			'watchTogether.nowPlaying' => 'Trenutačno se reproducira',
			'watchTogether.nothingPlaying' => 'Ništa se ne reproducira',
			'watchTogether.nothingPlayingHost' => 'Pokrenite nešto iz bilo koje biblioteke da biste to podijelili s ostalima u sobi.',
			'watchTogether.nothingPlayingGuest' => 'Kad domaćin pokrene reprodukciju, sadržaj će se prikazati ovdje.',
			'watchTogether.notShareable' => 'Ovaj videozapis nije moguće povezati s naslovom iz kataloga. Mogu ga gledati samo osobe koje imaju pristup istom poslužitelju.',
			'watchTogether.searching' => 'Traženje ovog videozapisa u vašim bibliotekama...',
			'watchTogether.yourCopy' => 'Vaš primjerak',
			'watchTogether.sharingYourCopy' => 'Dijeli se vaša kopija',
			'watchTogether.playingOtherLength' => ({required Object difference}) => 'Reproducira se vaša kopija (${difference})',
			'watchTogether.mismatchTitle' => 'Vaša kopija ima drukčije trajanje',
			'watchTogether.mismatchDescription' => ({required Object difference}) => 'Trajanje vaše najbliže kopije razlikuje se za ${difference} od trajanja videozapisa u sobi. Možda je riječ o drugoj montaži ili verziji.',
			'watchTogether.playAnyway' => 'Svejedno reproduciraj',
			'watchTogether.chooseAnotherCopy' => 'Odaberite drugu kopiju',
			'watchTogether.dontPlay' => 'Nemoj reproducirati',
			'watchTogether.unavailableTitle' => 'Videozapis nije dostupan',
			'watchTogether.unavailableDescription' => 'Luroka nije pronašla ovaj sadržaj u vašim bibliotekama. Odaberite kopiju ili pokušajte ponovno.',
			'watchTogether.chooseCopy' => 'Odaberite kopiju',
			'watchTogether.searchAgain' => 'Traži ponovno',
			'watchTogether.noCandidates' => 'U vašim bibliotekama nema kopija.',
			'watchTogether.choiceFailed' => 'Nije moguće reproducirati ovu kopiju za sobu',
			'watchTogether.lengthLonger' => ({required Object duration}) => '${duration} dulje',
			'watchTogether.lengthShorter' => ({required Object duration}) => '${duration} kraće',
			'watchTogether.lengthSame' => 'Ista duljina',
			'watchTogether.lengthUnknown' => 'Duljina nepoznata',
			'watchTogether.joinCurrentPlayback' => 'Pridruži se trenutačnoj reprodukciji',
			'watchTogether.joinCurrentPlaybackDescription' => 'Pridruži se sadržaju koji domaćin trenutačno gleda.',
			'watchTogether.stopMedia' => 'Zaustavi video za sve',
			'watchTogether.syncOffset' => 'Sinkronizacija pomaka',
			'watchTogether.syncOffsetDescription' => 'Prilagodi pomak ako se vaš videozapis prikazuje prije ili poslije onoga u sobi.',
			'watchTogether.offsetHint' => ({required Object difference}) => 'Vaša kopija odstupa za ${difference} od videozapisa u sobi.',
			'watchTogether.applyDifference' => ({required Object offset}) => 'Primijeni pomak ${offset}',
			'watchTogether.offsetMinusSecond' => '-1 s',
			'watchTogether.offsetMinusTenth' => '-100 ms',
			'watchTogether.offsetPlusTenth' => '+100 ms',
			'watchTogether.offsetPlusSecond' => '+1 s',
			'watchTogether.participants' => 'Sudionici',
			'watchTogether.participantCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hr'))(n, one: '${n} sudionik', few: '${n} sudionika', other: '${n} sudionika', ), 
			'watchTogether.hostBadge' => 'DOMAĆIN',
			'watchTogether.nameYou' => ({required Object name}) => '${name} (Vi)',
			'watchTogether.playerIdle' => 'Neaktivan',
			'watchTogether.playerLoading' => 'Učitavanje',
			'watchTogether.playerReady' => 'Spreman',
			'watchTogether.playerBuffering' => 'Učitavanje u međuspremnik',
			'watchTogether.matchSearching' => 'Pretraživanje',
			'watchTogether.matchMatched' => 'Podudara se',
			'watchTogether.matchMismatched' => 'Ne podudara se',
			'watchTogether.matchUnavailable' => 'Nije dostupno',
			'watchTogether.participantOffset' => ({required Object offset}) => 'Pomak ${offset}',
			'watchTogether.makeHost' => 'Postavi za domaćina',
			'watchTogether.makeHostQuestion' => 'Prenijeti ulogu domaćina?',
			'watchTogether.makeHostConfirm' => ({required Object name}) => '${name} će upravljati reprodukcijom i voditi sesiju za sve.',
			'watchTogether.transfer' => 'Prijenos',
			'watchTogether.removeParticipant' => 'Ukloni iz sobe',
			'watchTogether.removeParticipantQuestion' => ({required Object name}) => 'Ukloniti ${name}?',
			'watchTogether.removeParticipantConfirm' => ({required Object name}) => '${name} napušta sobu. Ta se osoba može ponovno pridružiti pomoću koda, osim ako ne zaključate sobu.',
			'watchTogether.remove' => 'Ukloni',
			'watchTogether.roomSettings' => 'Postavke sobe',
			'watchTogether.letEveryoneControl' => 'Neka svi kontroliraju reprodukciju',
			'watchTogether.lockRoom' => 'Zaključaj sobu',
			'watchTogether.lockRoomDescription' => 'Nitko se novi neće moći pridružiti.',
			'watchTogether.leaveRoom' => 'Napusti sobu',
			'watchTogether.leaveRoomQuestion' => 'Napustiti sobu?',
			'watchTogether.leaveRoomConfirm' => 'Možete se ponovno pridružiti s kodom sobe.',
			'watchTogether.leave' => 'Napusti',
			'watchTogether.endRoom' => 'Završi sobu',
			'watchTogether.endRoomQuestion' => 'Završiti sobu?',
			'watchTogether.endRoomConfirm' => 'Time će se soba zatvoriti za sve sudionike.',
			'watchTogether.end' => 'Završi',
			'watchTogether.playBlockedTitle' => 'Reprodukcija nije započela',
			'watchTogether.playBlockedDescription' => 'Odaberite Reproduciraj da biste započeli gledanje sa sudionicima u sobi.',
			'watchTogether.notices.pressedPlay' => ({required Object name}) => '${name} je odabrao Reproduciraj',
			_ => null,
		} ?? switch (path) {
			'watchTogether.notices.playbackStarted' => 'Reprodukcija je započela',
			'watchTogether.notices.paused' => ({required Object name}) => 'Reprodukcija je pauzirana (${name})',
			'watchTogether.notices.playbackPaused' => 'Reprodukcija je pauzirana',
			'watchTogether.notices.jumpedTo' => ({required Object position, required Object name}) => 'Premotano na ${position} (${name})',
			'watchTogether.notices.roomJumpedTo' => ({required Object position}) => 'Premotano na ${position}',
			'watchTogether.notices.changedSpeed' => ({required Object speed, required Object name}) => 'Brzina promijenjena na ${speed} (${name})',
			'watchTogether.notices.speedChanged' => ({required Object speed}) => 'Brzina postavljena na ${speed}',
			'watchTogether.notices.startedMedia' => ({required Object title, required Object name}) => 'Pokrenuta je reprodukcija naslova „${title}” (${name}).',
			'watchTogether.notices.mediaStarted' => ({required Object title}) => 'Sada se reproducira ${title}',
			'watchTogether.notices.stoppedMedia' => ({required Object name}) => 'Reprodukcija je zaustavljena (${name}).',
			'watchTogether.notices.mediaStopped' => 'Video je prestao',
			'watchTogether.notices.waitingFor' => ({required Object name}) => 'Čeka se ${name}...',
			'watchTogether.notices.waitingForSomeone' => 'Čeka se da se netko pridruži...',
			'watchTogether.notices.finished' => 'Gotovo',
			'watchTogether.notices.hostChangedTo' => ({required Object name}) => '${name} je sada domaćin',
			'watchTogether.notices.youAreNowHost' => 'Vi ste sada domaćin',
			'watchTogether.notices.joined' => ({required Object name}) => 'Sobi se pridružio novi sudionik: ${name}',
			'watchTogether.notices.left' => ({required Object name}) => '${name} više nije u sobi',
			'watchTogether.notices.controlRefused' => 'Samo domaćin može upravljati reprodukcijom.',
			'watchTogether.notices.searchFailed' => 'Nije moguće pretražiti neke poslužitelje za videozapis u sobi.',
			'watchTogether.notices.playBlocked' => 'Odaberite Reproduciraj za početak.',
			'watchTogether.notices.shareFailed' => 'Nije moguće podijeliti ovaj videozapis sa sobom.',
			'watchTogether.notices.notShared' => 'Preuzeti videozapisi ne mogu se dijeliti u sobi.',
			'watchTogether.notices.openFailed' => 'Nije moguće otvoriti video iz sobe',
			'watchTogether.ended.ended' => 'Domaćin je završio sobu',
			'watchTogether.ended.kicked' => 'Uklonjeni ste iz sobe',
			'watchTogether.ended.expired' => 'Soba je istekla',
			'watchTogether.ended.replaced' => 'Pridružili ste se ovoj sobi na drugom uređaju',
			'watchTogether.ended.lost' => 'Izgubila se veza sa sobom',
			'watchTogether.errors.invalidCode' => 'To nije šifra sobe. Kodovi imaju 6 slova i znamenki, bez 0, 1, I, L ili O.',
			'watchTogether.errors.roomNotFound' => 'Nijedna soba nema taj kod. Možda je završilo.',
			'watchTogether.errors.roomFull' => 'Ta soba je puna.',
			'watchTogether.errors.roomLocked' => 'Domaćin je zaključao tu sobu.',
			'watchTogether.errors.relayFull' => 'Poslužitelj za zajedničko gledanje trenutačno je zauzet. Pokušajte ponovno kasnije.',
			'watchTogether.errors.unreachable' => 'Nije moguće povezati se s poslužiteljem za zajedničko gledanje. Provjerite vezu.',
			'watchTogether.errors.rateLimited' => 'Previše pokušaja. Pričekajte trenutak i pokušajte ponovno.',
			'watchTogether.errors.clientBlocked' => 'Ova verzija aplikacije Luroka ne može se povezati s poslužiteljem. Ažurirajte aplikaciju.',
			'watchTogether.errors.forbidden' => 'To može samo domaćin.',
			'watchTogether.errors.notInRoom' => 'Niste u sobi.',
			'watchTogether.errors.alreadyInRoom' => 'Već ste u sobi.',
			'watchTogether.errors.resumeFailed' => 'Nije moguće ponovno se pridružiti sobi.',
			'watchTogether.errors.unsupported' => 'Relej to ne podržava.',
			'watchTogether.errors.generic' => 'Nešto nije u redu. Pokušajte ponovno.',
			'watchTogether.untitledEpisode' => ({required Object number}) => 'Epizoda ${number}',
			'downloads.title' => 'Preuzimanja',
			'downloads.manage' => 'Upravljaj',
			'downloads.tvShows' => 'TV serije',
			'downloads.movies' => 'Filmovi',
			'downloads.music' => 'Glazba',
			'downloads.tracksQueued' => ({required Object count}) => 'Zvučnih zapisa na čekanju za preuzimanje: ${count}',
			'downloads.noDownloads' => 'Još nema preuzimanja',
			'downloads.noDownloadsDescription' => 'Preuzeti sadržaj za gledanje izvan mreže pojavit će se ovdje.',
			'downloads.downloadNow' => 'Preuzmi',
			'downloads.deleteDownload' => 'Izbriši preuzimanje',
			'downloads.retryDownload' => 'Pokušaj ponovno preuzeti',
			'downloads.downloadQueued' => 'Preuzimanje na čekanju',
			'downloads.downloadResumed' => 'Preuzimanje je nastavljeno',
			'downloads.serverErrorBitrate' => 'Pogreška poslužitelja: datoteka možda premašuje ograničenje brzine prijenosa.',
			'downloads.storageFull' => 'Preuzimanja su zaustavljena radi zaštite dostupne pohrane. Oslobodite malo prostora ili odaberite drugu lokaciju za preuzimanje, a zatim pokušajte ponovno.',
			'downloads.storageUnavailable' => 'Preuzimanja su zaustavljena jer se dostupna pohrana nije mogla provjeriti. Provjerite lokaciju preuzimanja, a zatim pokušajte ponovno.',
			'downloads.episodesQueued' => ({required Object count}) => 'Epizoda na čekanju za preuzimanje: ${count}',
			'downloads.downloadDeleted' => 'Preuzimanje izbrisano',
			'downloads.deleteConfirm' => ({required Object title}) => 'Izbrisati "${title}" s ovog uređaja?',
			'downloads.deleteCollectionDownloads' => 'Izbriši preuzimanja',
			'downloads.deleteCollectionDownloadsConfirm' => ({required Object title}) => 'Izbrisati svako preuzimanje u "${title}" s ovog uređaja?',
			'downloads.collectionDownloadsDeleted' => 'Preuzimanja izbrisana',
			'downloads.cancelledDownloadTitle' => 'Otkazano preuzimanje',
			'downloads.cancelledDownloadMessage' => 'Preuzimanje je otkazano. Što želite učiniti?',
			'downloads.allEpisodesAlreadyDownloaded' => 'Sve su epizode već preuzete.',
			'downloads.resumeDownload' => 'Nastavi preuzimanje',
			'downloads.cancelledDownload' => 'Otkazano preuzimanje',
			'downloads.syncingFile' => ({required Object file, required Object status}) => '${file} (sinkronizacija: ${status})',
			'downloads.downloadedFileClickToComplete' => ({required Object file}) => '${file} je preuzet — odaberite za dovršetak.',
			'downloads.partialDownloadClickToComplete' => 'Djelomično preuzeto — odaberite za dovršetak.',
			'downloads.deleting' => 'Brisanje...',
			'downloads.deletingWithProgress' => ({required Object title, required Object current, required Object total}) => 'Brisanje ${title}... (${current} od ${total})',
			'downloads.queuedTooltip' => 'U redu čekanja',
			'downloads.queuedFilesTooltip' => ({required Object files}) => 'U redu čekanja ${files}',
			'downloads.downloadingTooltip' => 'Preuzimanje...',
			'downloads.downloadingFilesTooltip' => ({required Object files}) => 'Preuzimanje ${files}',
			'downloads.noDownloadsTree' => 'Nema preuzimanja',
			'downloads.pauseAll' => 'Pauziraj sve',
			'downloads.resumeAll' => 'Nastavi sve',
			'downloads.retryAll' => 'Pokušaj ponovno sve',
			'downloads.retryFailed' => 'Ponovi neuspjela preuzimanja',
			'downloads.deleteAll' => 'Izbriši sve',
			'downloads.selectVersion' => 'Odaberite verziju',
			'downloads.allEpisodes' => 'Sve epizode',
			'downloads.unwatchedOnly' => 'Samo neodgledane',
			'downloads.nextNUnwatched' => ({required Object count}) => 'Sljedećih ${count} neodgledanih',
			'downloads.customAmount' => 'Prilagođeni iznos...',
			'downloads.includeSpecials' => 'Uključi specijalne epizode',
			'downloads.howManyEpisodes' => 'Koliko epizoda?',
			'downloads.invalidEpisodeCount' => 'Unesite važeći broj epizoda.',
			'downloads.keepSynced' => 'Održavaj sinkronizaciju',
			'downloads.downloadOnce' => 'Preuzmi jednom',
			'downloads.keepNUnwatched' => ({required Object count}) => 'Zadrži ${count} neodgledanih epizoda',
			'downloads.editSyncRule' => 'Uredi pravilo sinkronizacije',
			'downloads.removeSyncRule' => 'Ukloni pravilo sinkronizacije',
			'downloads.removeSyncRuleConfirm' => ({required Object title}) => 'Zaustaviti sinkronizaciju „${title}”? Preuzete epizode ostat će sačuvane.',
			'downloads.removeListSyncRuleConfirm' => ({required Object title}) => 'Zaustaviti sinkronizaciju "${title}"?',
			'downloads.deleteSyncRuleDownloads' => 'Izbriši i povezana preuzimanja',
			'downloads.deleteSyncRuleDownloadsDescription' => 'Preuzimanja koja koristi drugo pravilo sinkronizacije ili profil ostat će sačuvana.',
			'downloads.syncRuleCreated' => ({required Object count}) => 'Izrađeno je pravilo sinkronizacije — zadržava se ${count} neodgledanih epizoda.',
			'downloads.syncRuleUpdated' => 'Pravilo sinkronizacije ažurirano',
			'downloads.syncRuleRemoved' => 'Pravilo sinkronizacije uklonjeno',
			'downloads.syncRuleAndDownloadsRemoved' => 'Pravilo sinkronizacije i povezana preuzimanja uklonjeni',
			'downloads.syncRuleCleanupBusy' => 'Pravila sinkronizacije trenutačno se ažuriraju. Pokušajte ponovno za koji trenutak.',
			'downloads.syncRuleCleanupUnavailable' => 'Povezana preuzimanja nije moguće pouzdano utvrditi. Ponovno povežite poslužitelj i pokušajte ponovno ili uklonite pravilo bez brisanja preuzimanja.',
			'downloads.syncedNewEpisodes' => ({required Object count, required Object title}) => 'Sinkronizirane su ${count} nove epizode serije ${title}.',
			'downloads.activeSyncRules' => 'Pravila sinkronizacije',
			'downloads.noSyncRules' => 'Nema pravila sinkronizacije',
			'downloads.manageSyncRule' => 'Upravljanje sinkronizacijom',
			'downloads.editEpisodeCount' => 'Broj epizoda',
			'downloads.editSyncFilter' => 'Filtar sinkronizacije',
			'downloads.syncAllItems' => 'Sinkronizacija svih stavki',
			'downloads.syncUnwatchedItems' => 'Sinkronizacija negledanih stavki',
			'downloads.syncRuleServerContext' => ({required Object server, required Object status}) => 'Poslužitelj: ${server} • ${status}',
			'downloads.syncRuleAvailable' => 'Dostupno',
			'downloads.syncRuleOffline' => 'Izvan mreže',
			'downloads.syncRuleSignInRequired' => 'Potrebna je prijava',
			'downloads.syncRuleAccessDenied' => 'Pristup odbijen',
			'downloads.syncRuleNotAvailableForProfile' => 'Nije dostupno za trenutačni profil',
			'downloads.syncRuleUnknownServer' => 'Nepoznati poslužitelj',
			'downloads.syncRuleListCreated' => 'Stvoreno pravilo sinkronizacije',
			'downloads.backgroundWarning.bannerBlocked' => 'Preuzimanja će se zaustaviti kada napustite aplikaciju',
			'downloads.backgroundWarning.bannerDegraded' => 'Preuzimanja u pozadini mogu biti ograničena',
			'downloads.backgroundWarning.bannerAction' => 'pojedinosti',
			'downloads.backgroundWarning.sheetTitle' => 'Preuzimanja u pozadini su blokirana',
			'downloads.backgroundWarning.sheetTitleDegraded' => 'Preuzimanja u pozadini mogu biti ograničena',
			'downloads.backgroundWarning.sheetIntro' => 'Android ne dopušta pouzdano preuzimanje sadržaja u pozadini.',
			'downloads.backgroundWarning.sheetIntroDegraded' => 'Vaš uređaj ograničava mogućnost preuzimanja sadržaja u pozadini.',
			'downloads.backgroundWarning.reasonBackgroundRestricted' => 'Rad aplikacije Luroka u pozadini je ograničen. Za potrošnju baterije ili rad u pozadini odaberite „Neograničeno”.',
			'downloads.backgroundWarning.reasonStandbyRestricted' => 'Android je ograničio rad aplikacije Luroka u pozadini. Za potrošnju baterije odaberite „Neograničeno”.',
			'downloads.backgroundWarning.reasonDownloadChannelBlocked' => 'Obavijesti o preuzimanju su isključene, tako da napredak i kontrole mogu biti nedostupni.',
			'downloads.backgroundWarning.reasonNotificationsDisabled' => 'Obavijesti su isključene. U Androidu 13 i novijima potrebne su za duga preuzimanja u pozadini.',
			'downloads.backgroundWarning.reasonDataSaver' => 'Uključena je ušteda podataka, koja blokira pozadinska preuzimanja na mobilnim podacima. Preuzimanja bi i dalje trebala raditi na Wi-Fi.',
			'downloads.backgroundWarning.reasonOemUnknown' => 'Preuzimanja su se više puta zaustavila dok je aplikacija radila u pozadini. Provjerite postavke baterije i rada aplikacije Luroka u pozadini.',
			'downloads.backgroundWarning.openSettings' => 'Otvori postavke',
			'downloads.backgroundWarning.stillNotWorking' => 'Upute za vaš uređaj',
			'downloads.backgroundWarning.stillNotWorkingDescription' => 'Pogledajte upute za svoj uređaj ili, ako se problem nastavi, pošaljite zapisnik iz Postavke › Pregledaj zapisnike.',
			'downloads.backgroundWarning.dialogTitle' => 'Preuzimanja možda neće završiti',
			'downloads.backgroundWarning.dialogDownloadAnyway' => 'Svejedno preuzmi',
			'downloads.backgroundWarning.dialogFixFirst' => 'Prvo popravi ovo',
			'downloads.backgroundWarning.statusTile' => 'Pozadinska preuzimanja',
			'downloads.backgroundWarning.statusOk' => 'Dopušten rad u pozadini',
			'downloads.backgroundWarning.statusBlocked' => 'Blokirano postavkama sustava',
			'downloads.backgroundWarning.statusDegraded' => 'Ograničeno postavkama sustava',
			'downloads.backgroundWarning.statusUnknown' => 'Još nije provjereno',
			'downloads.backgroundWarning.settingsUnavailable' => 'Nije moguće otvoriti postavke sustava na ovom uređaju.',
			'downloads.backgroundWarning.linkUnavailable' => 'Nije moguće otvoriti dontkillmyapp.com na ovom uređaju',
			'downloads.options' => 'Opcije preuzimanja',
			'downloads.groupings.library' => 'Biblioteka',
			'downloads.groupings.collections' => 'Zbirke',
			'downloads.unknownLibrary' => 'Nepoznata biblioteka',
			'downloads.unknownShow' => 'Nepoznata emisija',
			'downloads.unknownSeason' => 'Nepoznato godišnje doba',
			'downloads.unknownAlbum' => 'Nepoznati album',
			'downloads.completedOfTotal' => ({required Object completed, required Object total}) => '${completed}/${total} dovršeno',
			'downloads.errorFileNotFound' => 'Datoteka nije pronađena (404)',
			'downloads.errorDownloadNotAllowed' => 'Poslužitelj ne dopušta preuzimanje (403)',
			'downloads.errorDownloadFailed' => 'Preuzimanje nije uspjelo',
			'downloads.errorDownloadFailedWithReason' => ({required Object reason}) => 'Preuzimanje nije uspjelo: ${reason}',
			'downloads.errorHttpStatus' => ({required Object status}) => 'Preuzimanje nije uspjelo (HTTP ${status})',
			'downloads.errorPostProcessing' => ({required Object reason}) => 'Naknadna obrada nije uspjela: ${reason}',
			'downloads.reasonFileNotSaved' => 'datoteka nije mogla biti spremljena na ovaj uređaj',
			'downloads.reasonCannotResume' => 'djelomično preuzimanje nije bilo moguće nastaviti',
			'downloads.reasonDeviceStorageFull' => 'ovom uređaju je ponestalo pohrane',
			'downloads.notificationDownloading' => 'Preuzimanje...',
			'downloads.notificationComplete' => 'Preuzimanje završeno',
			'downloads.notificationPaused' => 'Preuzimanje pauzirano',
			'shaders.title' => 'Shaderi',
			'shaders.noShaderDescription' => 'Nije primijenjeno poboljšanje slike.',
			'shaders.nvscalerDescription' => 'NVIDIA-jevo skaliranje za oštriju sliku.',
			'shaders.artcnnVariantNeutral' => 'Neutralan',
			'shaders.artcnnVariantDenoise' => 'Uklanjanje šuma',
			'shaders.artcnnVariantDenoiseSharpen' => 'Uklanjanje šuma i izoštravanje',
			'shaders.qualityFast' => 'Brzo',
			'shaders.qualityHQ' => 'Visoka kvaliteta',
			'shaders.mode' => 'Način rada',
			'shaders.importShader' => 'Uvezi shader',
			'shaders.customShaderDescription' => 'Prilagođeni GLSL shader',
			'shaders.shaderImported' => 'Shader je uvezen.',
			'shaders.shaderImportFailed' => 'Uvoz shadera nije uspio.',
			'shaders.deleteShader' => 'Izbriši shader',
			'shaders.deleteShaderConfirm' => ({required Object name}) => 'Izbrisati "${name}"?',
			'companionRemote.title' => 'Daljinski upravljač',
			'companionRemote.connectedTo' => ({required Object name}) => 'Povezano s uređajem ${name}',
			'companionRemote.unknownDevice' => 'Nepoznati uređaj',
			'companionRemote.session.startingServer' => 'Pokretanje poslužitelja za daljinsko upravljanje...',
			'companionRemote.session.hostAddress' => 'Adresa glavnog uređaja',
			'companionRemote.session.connected' => 'Povezan',
			'companionRemote.session.serverRunning' => 'Poslužitelj za daljinsko upravljanje je pokrenut',
			'companionRemote.session.serverStopped' => 'Poslužitelj za daljinsko upravljanje je zaustavljen',
			'companionRemote.session.serverRunningDescription' => 'Mobilni uređaji na vašoj mreži mogu se povezati s ovom aplikacijom.',
			'companionRemote.session.serverStoppedDescription' => 'Pokrenite poslužitelj kako biste omogućili povezivanje mobilnih uređaja.',
			'companionRemote.session.usePhoneToControl' => 'Upravljajte ovom aplikacijom s mobilnog uređaja.',
			'companionRemote.session.startServer' => 'Pokreni poslužitelj',
			'companionRemote.session.stopServer' => 'Zaustavi poslužitelj',
			'companionRemote.session.minimize' => 'Minimiziraj',
			'companionRemote.session.manualAddressHint' => 'Adresa za ručno povezivanje:',
			'companionRemote.pairing.discoveryDescription' => 'Luroka uređaji s istim Plex računom pojavljuju se ovdje',
			'companionRemote.pairing.hostAddressHint' => '192.168.1.100:48632',
			'companionRemote.pairing.connecting' => 'Povezivanje...',
			'companionRemote.pairing.searchingForDevices' => 'Traženje uređaja...',
			'companionRemote.pairing.noDevicesFound' => 'Nijedan uređaj nije pronađen na vašoj mreži',
			'companionRemote.pairing.noDevicesHint' => 'Otvorite Luroku na računalu i povežite se na istu Wi-Fi mrežu.',
			'companionRemote.pairing.availableDevices' => 'Dostupni uređaji',
			'companionRemote.pairing.manualConnection' => 'Ručno povezivanje',
			'companionRemote.pairing.cryptoInitFailed' => 'Nije moguće pokrenuti sigurnu vezu. Prvo se prijavite na Plex.',
			'companionRemote.pairing.validationHostRequired' => 'Unesite adresu glavnog uređaja.',
			'companionRemote.pairing.validationHostFormat' => 'Unesite adresu u obliku IP:port (npr. 192.168.1.100:48632).',
			'companionRemote.pairing.connectionTimedOut' => 'Isteklo je vrijeme povezivanja. Provjerite jesu li oba uređaja na istoj mreži.',
			'companionRemote.pairing.sessionNotFound' => 'Uređaj nije pronađen. Provjerite je li Luroka pokrenuta na glavnom uređaju.',
			'companionRemote.pairing.authFailed' => 'Autentifikacija nije uspjela. Oba uređaja trebaju isti Plex račun.',
			'companionRemote.pairing.failedToConnect' => ({required Object error}) => 'Povezivanje nije uspjelo: ${error}',
			'companionRemote.remote.disconnectConfirm' => 'Želite li prekinuti vezu s udaljenom sesijom?',
			'companionRemote.remote.reconnecting' => 'Ponovno povezivanje...',
			'companionRemote.remote.attemptOf' => ({required Object current}) => 'Pokušaj ${current} od 5',
			'companionRemote.remote.retryNow' => 'Pokušajte ponovo',
			'companionRemote.remote.tabRemote' => 'Daljinski',
			'companionRemote.remote.tabPlay' => 'Reproduciraj',
			'companionRemote.remote.tabMore' => 'Više',
			'companionRemote.remote.menu' => 'Izbornik',
			'companionRemote.remote.tabNavigation' => 'Navigacija karticama',
			'companionRemote.remote.tabDiscover' => 'Otkrijte',
			'companionRemote.remote.tabLibraries' => 'Biblioteke',
			'companionRemote.remote.tabSearch' => 'Traži',
			'companionRemote.remote.tabDownloads' => 'Preuzimanja',
			'companionRemote.remote.tabSettings' => 'Postavke',
			'companionRemote.remote.previous' => 'Prethodno',
			'companionRemote.remote.playPause' => 'Reprodukcija/Pauza',
			'companionRemote.remote.next' => 'Dalje',
			'companionRemote.remote.seekBack' => 'Premotaj unatrag',
			'companionRemote.remote.stop' => 'Zaustavi',
			'companionRemote.remote.seekForward' => 'Premotaj unaprijed',
			'companionRemote.remote.volume' => 'Glasnoća',
			'companionRemote.remote.volumeDown' => 'Smanji',
			'companionRemote.remote.volumeUp' => 'Gore',
			'companionRemote.remote.fullscreen' => 'Cijeli zaslon',
			'companionRemote.remote.subtitles' => 'Titlovi',
			'companionRemote.remote.audio' => 'Zvuk',
			'companionRemote.remote.searchHint' => 'Pretraži na računalu...',
			'companionRemote.errors.noNetworkInterface' => 'Nije pronađeno mrežno sučelje',
			'companionRemote.errors.authenticationFailed' => 'Autentifikacija nije uspjela',
			'companionRemote.errors.serverStartFailed' => ({required Object error}) => 'Nije uspjelo pokretanje udaljenog poslužitelja: ${error}',
			'companionRemote.errors.commandFailed' => ({required Object error}) => 'Nije uspjelo slanje daljinske naredbe: ${error}',
			'companionRemote.errors.joinTimedOut' => 'Istekla je sesija pridruživanja',
			'companionRemote.errors.failedToConnectAnyAddress' => 'Povezivanje ni s jednom adresom nije uspjelo',
			'companionRemote.errors.connectionLostAfterAttempts' => ({required Object attempts}) => 'Veza je izgubljena nakon ${attempts} pokušaja',
			'companionRemote.errors.connectionLost' => 'Veza izgubljena',
			'companionRemote.closedBeforeAuth' => 'Veza je prekinuta prije autentifikacije',
			'videoSettings.playbackSpeed' => 'Brzina reprodukcije',
			'videoSettings.normalSpeed' => 'Uobičajena',
			'videoSettings.sleepTimerActive' => ({required Object duration}) => 'Aktivno (${duration})',
			'videoSettings.zoom' => 'Zumiranje',
			'videoSettings.sleepTimer' => 'Mjerač vremena za isključivanje',
			'videoSettings.audioSync' => 'Sinkronizacija zvuka',
			'videoSettings.subtitleSync' => 'Sinkronizacija titlova',
			'videoSettings.hdr' => 'HDR',
			'videoSettings.hdrUnsupported' => 'HDR nije dostupan — kompozitor radne površine ili videoizlaz ne podržava HDR.',
			'videoSettings.hdrToneMapping' => 'Mapiranje tonova HDR-a',
			'videoSettings.hdrToneMappingCompositor' => 'Kompozitor radne površine',
			'videoSettings.hdrToneMappingCompositorDescription' => 'Proslijedi izvorne HDR metapodatke kompozitoru radne površine da ih on prilagodi.',
			'videoSettings.hdrToneMappingPlayer' => 'Reproduktor',
			'videoSettings.hdrToneMappingPlayerDescription' => 'Reproduktor prilagođava sliku najvećoj svjetlini zaslona, a zatim rezultat prosljeđuje kompozitoru.',
			'videoSettings.hdrToneMappingFailed' => 'Nije moguće promijeniti mapiranje tonova HDR-a — prethodni je način i dalje aktivan.',
			'videoSettings.audioOutput' => 'Zvučni izlaz',
			'videoSettings.performanceOverlay' => 'Prikaz performansi',
			'videoSettings.audioOutputDolbyAtmos' => 'Dolby Atmos',
			'videoSettings.audioOutputDolbyAudio' => 'Dolby Audio',
			'videoSettings.audioOutputSurround' => 'Prostorni zvuk',
			'videoSettings.audioOutputSpatial' => 'Prostorni zvuk',
			'videoSettings.audioOutputStereo' => 'Stereo',
			'videoSettings.audioNormalization' => 'Ujednači glasnoću',
			'videoSettings.audioNormalizationDisablesPassthrough' => 'Zvuk se dekodira u PCM. Izravni prijenos zvuka isključen je dok je ova opcija uključena.',
			'performanceOverlay.color' => 'Boja',
			'performanceOverlay.performance' => 'Performanse',
			'performanceOverlay.buffer' => 'Međuspremnik',
			'performanceOverlay.app' => 'aplikacija',
			'performanceOverlay.decoder' => 'Dekoder',
			'performanceOverlay.rawDecoder' => 'Sirovi dekoder',
			'performanceOverlay.tunneling' => 'Tuneliranje',
			'performanceOverlay.passthrough' => 'Izravni prijenos zvuka',
			'performanceOverlay.aspect' => 'Omjer slike',
			'performanceOverlay.rotation' => 'Zakretanje',
			'performanceOverlay.dvSource' => 'DV izvor',
			'performanceOverlay.dvPath' => 'Putanja DV-a',
			'performanceOverlay.dvRouteDecoder' => 'Dolby Vision dekoder',
			'performanceOverlay.dvRouteDecoderP81' => 'Dolby Vision dekoder (P7→8.1)',
			'performanceOverlay.dvRouteBaseLayer' => 'Osnovni sloj',
			'performanceOverlay.dvRouteBaseLayerHdr10' => 'HDR10 osnovni sloj',
			'performanceOverlay.dvRouteBaseLayerHlg' => 'HLG osnovni sloj',
			'performanceOverlay.dvRouteBaseLayerSdr' => 'SDR osnovni sloj',
			'performanceOverlay.dvRouteReshaped' => 'RPU preoblikovan (gpu-next)',
			'performanceOverlay.p7Conversion' => 'Pretvorba P7',
			'performanceOverlay.sampleRate' => 'Frekvencija uzorkovanja',
			'performanceOverlay.pixelFormat' => 'Format piksela',
			'performanceOverlay.hwFormat' => 'Hardverski format',
			'performanceOverlay.matrix' => 'Matrica',
			'performanceOverlay.primaries' => 'Primarne boje',
			'performanceOverlay.transfer' => 'Prijenos',
			'performanceOverlay.renderFps' => 'Broj prikazanih sličica u sekundi',
			'performanceOverlay.displayFps' => 'Prikaži FPS',
			'performanceOverlay.avSync' => 'A/V sinkronizacija',
			'performanceOverlay.dropped' => 'Ispušteno',
			'performanceOverlay.dvRpus' => 'DV RPU-ovi',
			'performanceOverlay.dvRpuAverage' => 'Prosjek DV RPU-a',
			'performanceOverlay.dvSampleAverage' => 'Prosjek DV uzorka',
			'performanceOverlay.maxLuma' => 'Najveća svjetlina',
			'performanceOverlay.minLuma' => 'Najmanja svjetlina',
			'performanceOverlay.maxCll' => 'MaxCLL',
			'performanceOverlay.maxFall' => 'MaxFALL',
			'performanceOverlay.cacheUsed' => 'Iskorištena predmemorija',
			'performanceOverlay.cacheLimit' => 'Ograničenje predmemorije',
			'performanceOverlay.speed' => 'Brzina',
			'performanceOverlay.player' => 'Reproduktor',
			'performanceOverlay.memory' => 'Memorija',
			'performanceOverlay.uiFps' => 'UI FPS',
			'performanceOverlay.fps' => 'FPS',
			'performanceOverlay.decoderAndroidHw' => 'Android HW',
			'performanceOverlay.decoderNvidiaHw' => 'NVIDIA HW',
			'performanceOverlay.decoderQualcommHw' => 'Qualcomm HW',
			'performanceOverlay.decoderMediatekHw' => 'MediaTek HW',
			'performanceOverlay.decoderExynosHw' => 'Exynos HW',
			'performanceOverlay.decoderSoftware' => 'Softverski dekoder',
			'performanceOverlay.decoderHardware' => 'Hardver',
			'performanceOverlay.tunnelingActive' => 'Aktivno',
			'performanceOverlay.dvRpuFailed' => ({required Object converted, required Object failures}) => '${converted} (${failures} neuspješno)',
			'externalPlayer.title' => 'Vanjski reproduktor',
			'externalPlayer.useExternalPlayer' => 'Koristi vanjski reproduktor',
			'externalPlayer.useExternalPlayerDescription' => 'Otvorite videozapise u drugoj aplikaciji',
			'externalPlayer.selectPlayer' => 'Odaberi reproduktor',
			'externalPlayer.customPlayers' => 'Prilagođeni reproduktori',
			'externalPlayer.systemDefault' => 'Zadane postavke sustava',
			'externalPlayer.addCustomPlayer' => 'Dodaj prilagođeni reproduktor',
			'externalPlayer.playerName' => 'Naziv reproduktora',
			'externalPlayer.playerNameHint' => 'Moj reproduktor',
			'externalPlayer.playerCommand' => 'Naredba',
			'externalPlayer.playerPackage' => 'Naziv paketa',
			'externalPlayer.playerUrlScheme' => 'URL shema',
			'externalPlayer.off' => 'Isključeno',
			'externalPlayer.launchFailed' => 'Nije moguće pokrenuti vanjski reproduktor',
			'externalPlayer.appNotInstalled' => ({required Object name}) => '${name} nije instaliran',
			'externalPlayer.playInExternalPlayer' => 'Reproduciraj u vanjskom reproduktoru',
			'metadataEdit.editMetadata' => 'Uredi...',
			'metadataEdit.screenTitle' => 'Uredi metapodatke',
			'metadataEdit.basicInfo' => 'Osnovne informacije',
			'metadataEdit.artwork' => 'Slike i grafika',
			'metadataEdit.advancedSettings' => 'Napredne postavke',
			'metadataEdit.title' => 'Naslov',
			'metadataEdit.sortTitle' => 'Poredaj naslov',
			'metadataEdit.originalTitle' => 'Izvorni naslov',
			'metadataEdit.releaseDate' => 'Datum izlaska',
			'metadataEdit.contentRating' => 'Ocjena sadržaja',
			'metadataEdit.studio' => 'Studio',
			'metadataEdit.tagline' => 'Slogan',
			'metadataEdit.summary' => 'Sažetak',
			'metadataEdit.poster' => 'Plakat',
			'metadataEdit.background' => 'Pozadina',
			'metadataEdit.logo' => 'Logotip',
			'metadataEdit.squareArt' => 'Kvadratna slika',
			'metadataEdit.selectPoster' => 'Odaberi poster',
			'metadataEdit.selectBackground' => 'Odaberi pozadinu',
			'metadataEdit.selectLogo' => 'Odaberi logotip',
			'metadataEdit.selectSquareArt' => 'Odaberi kvadratnu sliku',
			'metadataEdit.fromUrl' => 'S URL-a',
			'metadataEdit.uploadFile' => 'Prenesi datoteku',
			'metadataEdit.enterImageUrl' => 'Unesite URL slike',
			'metadataEdit.imageUrl' => 'URL slike',
			'metadataEdit.metadataUpdated' => 'Metapodaci ažurirani',
			'metadataEdit.metadataUpdateFailed' => 'Ažuriranje metapodataka nije uspjelo',
			'metadataEdit.artworkUpdated' => 'Ilustracija ažurirana',
			'metadataEdit.artworkUpdateFailed' => 'Ažuriranje umjetničkog djela nije uspjelo',
			'metadataEdit.noArtworkAvailable' => 'Nema dostupnih umjetničkih djela',
			'metadataEdit.artworkOption' => ({required Object index}) => 'Slika ${index}',
			'metadataEdit.selectedArtworkOption' => ({required Object index}) => 'Odabrana slika ${index}',
			'metadataEdit.notSet' => 'Nije postavljeno',
			'metadataEdit.libraryDefault' => 'Zadana biblioteka',
			'metadataEdit.accountDefault' => 'Zadani račun',
			'metadataEdit.seriesDefault' => 'Zadana serija',
			'metadataEdit.episodeSorting' => 'Razvrstavanje epizoda',
			'metadataEdit.oldestFirst' => 'Najstarije prvo',
			'metadataEdit.newestFirst' => 'Najnovije prvo',
			'metadataEdit.keep' => 'Zadrži',
			'metadataEdit.allEpisodes' => 'Sve epizode',
			'metadataEdit.latestEpisodes' => ({required Object count}) => '${count} najnovije epizode',
			'metadataEdit.latestEpisode' => 'Najnovija epizoda',
			'metadataEdit.episodesAddedPastDays' => ({required Object count}) => 'Epizode dodane u proteklih ${count} dana',
			'metadataEdit.deleteAfterPlaying' => 'Brisanje epizoda nakon reprodukcije',
			'metadataEdit.never' => 'nikada',
			'metadataEdit.afterADay' => 'Nakon jednog dana',
			'metadataEdit.afterAWeek' => 'Nakon tjedan dana',
			'metadataEdit.afterAMonth' => 'Nakon mjesec dana',
			'metadataEdit.onNextRefresh' => 'Pri sljedećem osvježavanju',
			'metadataEdit.seasons' => 'Sezone',
			'metadataEdit.show' => 'Serija',
			'metadataEdit.hide' => 'Sakrij',
			'metadataEdit.episodeOrdering' => 'Redoslijed epizoda',
			'metadataEdit.tmdbAiring' => 'TMDb (prema datumu emitiranja)',
			'metadataEdit.tvdbAiring' => 'TheTVDB (emitirano)',
			'metadataEdit.tvdbAbsolute' => 'TheTVDB (apsolutno)',
			'metadataEdit.metadataLanguage' => 'Jezik metapodataka',
			'metadataEdit.useOriginalTitle' => 'Koristi izvorni naslov',
			'metadataEdit.preferredAudioLanguage' => 'Željeni jezik zvuka',
			'metadataEdit.preferredSubtitleLanguage' => 'Željeni jezik titlova',
			'metadataEdit.subtitleMode' => 'Način automatskog odabira titlova',
			'metadataEdit.manuallySelected' => 'Ručno odabrano',
			'metadataEdit.shownWithForeignAudio' => 'Prikaži uz zvuk na stranom jeziku',
			'metadataEdit.alwaysEnabled' => 'Uvijek uključeno',
			'metadataEdit.tags' => 'Oznake',
			'metadataEdit.addTag' => 'Dodaj oznaku',
			'metadataEdit.genre' => 'Žanr',
			'metadataEdit.director' => 'Redatelj',
			'metadataEdit.writer' => 'Scenarist',
			'metadataEdit.producer' => 'Producent',
			'metadataEdit.country' => 'Država',
			'metadataEdit.collection' => 'Zbirka',
			'metadataEdit.label' => 'Oznaka',
			'metadataEdit.quickTag' => 'Brza oznaka...',
			'matchScreen.match' => 'Poveži...',
			'matchScreen.fixMatch' => 'Ispravi podudaranje...',
			'matchScreen.unmatch' => 'Ukloni podudaranje',
			'matchScreen.unmatchConfirm' => 'Ukloniti ovo podudaranje? Plex će stavku tretirati kao nepovezanu dok je ponovno ne povežete.',
			'matchScreen.unmatchSuccess' => 'Podudaranje je uklonjeno.',
			'matchScreen.unmatchFailed' => 'Poništavanje podudarnosti stavke nije uspjelo',
			'matchScreen.matchApplied' => 'Podudaranje je primijenjeno.',
			'matchScreen.matchFailed' => 'Primjena podudaranja nije uspjela',
			'matchScreen.titleHint' => 'Naslov',
			'matchScreen.yearHint' => 'Godina',
			'matchScreen.search' => 'Traži',
			'matchScreen.noMatchesFound' => 'Nije pronađeno nijedno podudaranje.',
			'serverTasks.title' => 'Poslužiteljski zadaci',
			'serverTasks.failedToLoad' => 'Učitavanje zadataka nije uspjelo',
			'serverTasks.noTasks' => 'Nijedan zadatak nije pokrenut',
			'trakt.title' => 'Trakt',
			'trakt.connected' => 'Povezan',
			'trakt.connectedAs' => ({required Object username}) => 'Povezan kao @${username}',
			'trakt.disconnectConfirm' => 'Prekinuti vezu Trakt računa?',
			'trakt.disconnectConfirmBody' => 'Luroka će prestati slati događaje na Trakt. Možete se ponovno povezati bilo kada.',
			'trakt.scrobble' => 'Scrobbling u stvarnom vremenu',
			'trakt.scrobbleDescription' => 'Pošaljite događaje reprodukcije, pauze i zaustavljanja na Trakt tijekom reprodukcije.',
			'trakt.watchedSync' => 'Sinkroniziraj status gledanja',
			'trakt.watchedSyncDescription' => 'Kada označite stavke kao gledane u Luroka, one su također označene kao gledane na Trakt.',
			'seerr.title' => 'Seerr',
			'seerr.connectTitle' => 'Povežite Seerr',
			'seerr.serverUrl' => 'URL poslužitelja',
			'seerr.serverUrlHelper' => 'Adresa vaše Seerr instance',
			'seerr.checkServer' => 'nastavi',
			'seerr.signInWithJellyfin' => 'Prijavite se pomoću Jellyfin',
			'seerr.signInWithEmby' => 'Prijavite se pomoću Emby',
			'seerr.signInWithLocal' => 'Koristite lokalni račun',
			'seerr.email' => 'E-mail',
			'seerr.noSignInMethods' => 'Ova Seerr instanca ne nudi metodu prijave koju Luroka podržava.',
			'seerr.instance' => 'Instanca',
			'seerr.disconnectConfirm' => 'Odspojiti Seerr?',
			'seerr.disconnectConfirmBody' => 'Luroka će zaboraviti ovu Seerr instancu. Ponovno se povežite bilo kada.',
			'seerr.request' => 'zahtjev',
			'seerr.request4k' => 'Zahtjev u 4K',
			'seerr.seasons' => 'Godišnja doba',
			'seerr.allSeasons' => 'Sva godišnja doba',
			'seerr.advancedOptions' => 'Napredno',
			'seerr.destinationServer' => 'Odredišni poslužitelj',
			'seerr.qualityProfile' => 'Profil kvalitete',
			'seerr.rootFolder' => 'Korijenska mapa',
			'seerr.languageProfile' => 'Jezični profil',
			'seerr.tags' => 'oznake',
			'seerr.noTags' => 'Nema oznaka',
			'seerr.defaultOption' => ({required Object name}) => '${name} (zadano)',
			'seerr.animeNote' => 'Ova serija je anime.',
			'seerr.requestSubmitted' => 'Zahtjev poslan',
			'seerr.requestFailed' => ({required Object error}) => 'Zahtjev nije uspio: ${error}',
			'seerr.requestsLoadFailed' => 'Nije moguće učitati opcije zahtjeva',
			'seerr.nothingToRequest' => 'Sve je već dostupno ili traženo.',
			'seerr.statusAvailable' => 'na raspolaganju',
			'seerr.statusPartiallyAvailable' => 'Djelomično dostupno',
			'seerr.statusRequested' => 'Zatraženo',
			'seerr.statusProcessing' => 'Obrada',
			'seerr.statusBlocklisted' => 'Na popisu blokiranih',
			'seerr.couldNotReach' => ({required Object url, required Object error}) => 'Nije moguće doći do ${url}: ${error}',
			'seerr.noInstanceAtUrl' => ({required Object url, required Object status}) => 'Nema Seerr instance na ${url} (HTTP ${status})',
			'seerr.behindAuthProxy' => 'Obrnuti proxy za provjeru autentičnosti (SSO ili HTTP auth) odgovorio je umjesto Seerr. Luroka se ne može prijaviti putem nje: neka Seerr putanja /api/v1 zaobiđe proxy za ovu aplikaciju ili upotrijebi adresu koja izravno doseže Seerr.',
			'seerr.invalidUrl' => 'Unesite adresu poslužitelja poput https://seerr.example.com',
			'seerr.quickConnectUnsupported' => 'Ova Seerr instanca ne podržava Quick Connect. Potreban mu je Seerr 3.4 ili noviji.',
			'seerr.notInitialized' => 'Ova Seerr instanca nije dovršila postavljanje prvog pokretanja',
			'seerr.noPlexTokenForReauth' => 'Nema Plex tokena dostupnog za ponovnu prijavu',
			'seerr.noStoredCredentials' => 'Nema pohranjenih vjerodajnica dostupnih za ponovnu prijavu',
			'seerr.signInRejected' => 'Prijava je odbijena',
			'seerr.noSessionCookie' => 'Seerr nije izdao kolačić sesije',
			'seerr.freshCookieRejected' => 'Seerr je odbio novi kolačić sesije',
			'seerr.noUserInformation' => 'Seerr nije vratio podatke o korisniku',
			'seerr.sessionRejectedAfterReauth' => 'Sesija je odbijena nakon ponovnog prijavljivanja',
			'seerr.permissionDenied' => 'Seerr je odbio ovu radnju: vaš račun više nema potrebnu dozvolu',
			'seerr.permissionRevoked' => 'Više nemate dopuštenje to zahtijevati',
			'services.title' => 'Usluge',
			'services.hubSubtitle' => 'Sinkronizirajte napredak gledanja i zatražite nove naslove.',
			'services.discoverySection' => 'Otkrivanje i zahtjevi',
			'services.trackingSection' => 'Praćenje gledanja i popisi',
			'services.seerrDescription' => 'Pronađite filmove i serije te pošaljite zahtjeve putem svojeg Seerr poslužitelja.',
			'services.tmdbDescription' => 'Otkrijte filmove i serije, plakate, ocjene i pojedinosti.',
			'services.traktDescription' => 'Pratite filmove i serije, sinkronizirajte status gledanja i upravljajte popisom za gledanje.',
			'services.malDescription' => 'Održavajte popis animea i napredak gledanja sinkroniziranima.',
			'services.anilistDescription' => 'Pratite anime i sinkronizirajte napredak gledanja s AniListom.',
			'services.simklDescription' => 'Pratite filmove, serije i anime uz Simkl.',
			'services.mdblistDescription' => 'Povežite svoje MDBList popise i ocjene filmova.',
			'services.connectionIntro' => ({required Object service}) => 'Povežite ${service} s trenutačnim Luroka profilom. Ovu vezu i njezine mogućnosti možete upravljati ovdje u bilo kojem trenutku.',
			'services.connectService' => ({required Object service}) => 'Poveži ${service}',
			'services.seerrConnectDescription' => 'Povežite Seerr poslužitelj kako biste u Luroki otkrivali i zatražili filmove i serije.',
			'services.seerrServerStep' => 'Unesite adresu koju koristite za otvaranje Seerra. Provjerit ćemo koje načine prijave poslužitelj podržava.',
			'services.seerrSignInStep' => 'Odaberite način prijave koji vaš poslužitelj podržava.',
			'services.integrations' => 'Integracije',
			'services.notConnected' => 'Nije povezano',
			_ => null,
		} ?? switch (path) {
			'services.connectedAs' => ({required Object username}) => 'Povezan kao @${username}',
			'services.scrobble' => 'Automatski pratite napredak',
			'services.scrobbleDescription' => 'Ažurirajte svoj popis kada završite epizodu ili film.',
			'services.disconnectConfirm' => ({required Object service}) => 'Odspojiti ${service}?',
			'services.disconnectConfirmBody' => ({required Object service}) => 'Luroka će prestati ažurirati ${service}. Ponovno se povežite bilo kada.',
			'services.connectFailed' => ({required Object service}) => 'Nije moguće povezati se na ${service}. Pokušajte ponovno.',
			'services.names.mal' => 'MyAnimeList',
			'services.names.anilist' => 'AniList',
			'services.names.simkl' => 'Simkl',
			'services.names.seerr' => 'Seerr',
			'services.names.mdblist' => 'MDBList',
			'services.simklReconnect.title' => 'Ponovno spojite Simkl',
			'services.simklReconnect.subtitle' => 'Simkl povlači metodu prijave koju koristi ova veza. Ponovno povezivanje otvara simkl.com za odobrenje Luroka — Luroka nikad ne vidi vašu lozinku. Vaša povijest gledanja ostaje na Simkl.',
			'services.deviceCode.title' => ({required Object service}) => 'Aktivirajte Luroka na ${service}',
			'services.deviceCode.instructions' => 'Skenirajte QR kod ili posjetite donju adresu i unesite ovaj kod:',
			'services.deviceCode.openToActivate' => ({required Object service}) => 'Otvorite ${service} za aktivaciju',
			'services.deviceCode.copyCode' => 'Kopiraj aktivacijski kod',
			'services.deviceCode.waitingForAuthorization' => 'Čeka se autorizacija…',
			'services.deviceCode.codeCopied' => 'Kod kopiran',
			'services.oauthProxy.title' => ({required Object service}) => 'Prijavite se na ${service}',
			'services.oauthProxy.body' => 'Skenirajte ovaj QR kod ili otvorite URL na bilo kojem uređaju.',
			'services.oauthProxy.openToSignIn' => ({required Object service}) => 'Otvorite ${service} za prijavu',
			'services.pendingAuth.copyUrl' => 'Kopiraj URL za prijavu',
			'services.pendingAuth.urlCopied' => 'URL kopiran',
			'services.libraryFilter.title' => 'Filtar biblioteka',
			'services.libraryFilter.subtitleAllSyncing' => 'Sinkronizacija svih biblioteka',
			'services.libraryFilter.subtitleNoneSyncing' => 'Ništa se ne sinkronizira',
			'services.libraryFilter.subtitleBlocked' => ({required Object count}) => '${count} blokiran',
			'services.libraryFilter.subtitleAllowed' => ({required Object count}) => '${count} dopušteno',
			'services.libraryFilter.mode' => 'Način filtriranja',
			'services.libraryFilter.modeBlacklist' => 'Crna lista',
			'services.libraryFilter.modeWhitelist' => 'Popis dopuštenih',
			'services.libraryFilter.modeHintBlacklist' => 'Sinkronizirajte sve biblioteke osim dolje označenih.',
			'services.libraryFilter.modeHintWhitelist' => 'Sinkronizirajte samo dolje označene biblioteke.',
			'services.libraryFilter.libraries' => 'Biblioteke',
			'services.libraryFilter.noLibraries' => 'Nema dostupnih biblioteka',
			'offlineRecovery.title' => 'Vaši poslužitelji nisu dostupni',
			'offlineRecovery.description' => 'Preuzeti sadržaj i dalje je dostupan. Pokušajte se ponovno povezati kad se poslužitelj vrati na mrežu ili dodajte drugi poslužitelj.',
			'offlineRecovery.appleTvDescription' => 'Luroka se nije uspjela povezati s vašim medijskim poslužiteljima. Pokušajte ponovno kad budu dostupni ili dodajte drugi poslužitelj da biste nastavili gledati.',
			'offlineRecovery.kidsDescription' => 'Nije moguće povezati se s medijskim poslužiteljem. Pokušajte ponovno ili zamolite roditelja za pomoć.',
			'offlineRecovery.retrying' => 'Povezivanje…',
			'offlineRecovery.addServer' => 'Dodaj poslužitelj',
			'releaseUpdates.manualInstructions' => 'Preuzmi arhivu izdanja s GitHuba, izdvoji APK i instaliraj ga na svoj Android uređaj.',
			'releaseUpdates.tvInstructions' => 'Otvori ovu adresu na telefonu ili računalu ili skeniraj QR kod za preuzimanje izdanja.',
			'releaseUpdates.pressBackAgain' => 'Ponovno pritisni Natrag za izlaz iz reprodukcije',
			'profileIntegrations.title' => 'Prilagodite Luroku sebi',
			'profileIntegrations.description' => 'Povežite omiljene servise da biste pratili što gledate i zatražili nove filmove i serije. Svaki profil u aplikaciji Luroka ima zasebne veze.',
			'profileIntegrations.step' => 'Neobavezne integracije',
			'profileIntegrations.examples' => 'Trakt · Simkl · AniList · MyAnimeList · Seerr',
			'profileIntegrations.connect' => 'Pregledaj integracije',
			'profileIntegrations.later' => 'Postavi kasnije',
			'profileIntegrations.manage' => 'Upravljaj integracijama',
			'profileIntegrations.forProfile' => ({required Object name}) => 'Veze za profil ${name}',
			'addServer.addMediaBrowserTitle' => ({required Object product}) => 'Dodajte ${product} poslužitelj',
			'addServer.serverUrls' => 'URL-ovi poslužitelja',
			'addServer.serverUrlsHelper' => 'Dopušteno je više URL-ova odvojenih zarezima.',
			'addServer.findServer' => 'Pronađite poslužitelj',
			'addServer.searchingLocalMediaBrowserServers' => ({required Object product}) => 'Traženje lokalnih ${product} poslužitelja...',
			'addServer.localMediaBrowserServers' => ({required Object product}) => 'Lokalni ${product} poslužitelji',
			'addServer.username' => 'Korisničko ime',
			'addServer.password' => 'Lozinka',
			'addServer.signIn' => 'Prijavite se',
			'addServer.change' => 'Promjena',
			'addServer.required' => 'Obavezno',
			'addServer.couldNotReachServer' => ({required Object error}) => 'Nije moguće doći do poslužitelja: ${error}',
			'addServer.signInFailed' => ({required Object error}) => 'Prijava nije uspjela: ${error}',
			'addServer.quickConnectFailed' => ({required Object error}) => 'Quick Connect nije uspio: ${error}',
			'addServer.addPlexTitle' => 'Prijavite se pomoću Plex',
			'addServer.pinExpired' => 'PIN je istekao prije prijave. Molimo pokušajte ponovo.',
			'addServer.failedToRegisterAccount' => ({required Object error}) => 'Neuspješna registracija računa: ${error}',
			'addServer.enterMediaBrowserUrlError' => ({required Object product}) => 'Unesite URL svog ${product} poslužitelja',
			'addServer.addConnectionTitle' => 'Dodaj vezu',
			'addServer.addConnectionTitleScoped' => ({required Object name}) => 'Dodaj u ${name}',
			'addServer.signInWithPlexCard' => 'Prijavite se pomoću Plex',
			'addServer.signInWithPlexCardSubtitle' => 'Autorizirajte ovaj uređaj. Dodani su dijeljeni poslužitelji.',
			'addServer.signInWithPlexCardSubtitleScoped' => 'Autorizirajte Plex račun. Kućni korisnici postaju profili.',
			'addServer.connectToMediaBrowserCard' => ({required Object product}) => 'Povežite se na ${product}',
			'addServer.connectToMediaBrowserCardSubtitle' => 'Unesite URL poslužitelja, korisničko ime i lozinku.',
			'addServer.connectToMediaBrowserCardSubtitleScoped' => ({required Object product, required Object name}) => 'Prijavite se na svoj ${product} poslužitelj. Veže se na ${name}.',
			'addServer.borrowFromAnotherProfile' => 'Posudite s drugog profila',
			'addServer.borrowFromAnotherProfileSubtitle' => 'Ponovno upotrijebite vezu drugog profila. Profili zaštićeni PIN zahtijevaju PIN.',
			'addServer.invalidCredentials' => 'Nevažeće korisničko ime ili lozinka',
			'addServer.authResponseNotJson' => 'Odgovor autentifikacije nije bio važeći JSON',
			'addServer.authResponseIncomplete' => 'Odgovor poslužitelja za prijavu nije bio potpun',
			'addServer.quickConnectRejected' => 'Quick Connect je odbio poslužitelj',
			'addServer.quickConnectNotJson' => 'Quick Connect odgovor nije valjan JSON',
			'addServer.quickConnectMissingFields' => 'Quick Connect odgovoru nedostaje kod ili tajna',
			'addServer.quickConnectPollRejected' => 'Quick Connect prozivanje je odbio poslužitelj',
			'addServer.serverTimedOut' => 'Poslužitelj nije odgovorio na vrijeme',
			'addServer.responseNotJson' => 'Odgovor poslužitelja nije bio važeći JSON',
			'addServer.responseMissingIdentity' => ({required Object product}) => 'Odgovoru nedostaje ID ili naziv poslužitelja — je li ovo ${product} poslužitelj?',
			'addServer.probeFailed' => ({required Object error}) => 'Nije moguće doći do poslužitelja: ${error}',
			'addServer.enterAtLeastOneUrl' => ({required Object product}) => 'Unesite barem jedan URL poslužitelja ${product}',
			'addServer.noReachableServer' => ({required Object product}) => 'Nije pronađen nijedan dostupni poslužitelj ${product}',
			'addServer.urlsPointToDifferentServers' => ({required Object product}) => 'Ovi URL-ovi upućuju na različite ${product} poslužitelje',
			'addServer.urlDoesNotMatchServer' => ({required Object product}) => 'Ovaj URL ne odgovara poslužitelju ${product}',
			'addServer.redirectUnsupported' => 'Poslužitelj je preusmjeren na nepodržani URL',
			'addServer.redirectDifferentHost' => ({required Object product}) => 'Poslužitelj je preusmjeren na drugi poslužitelj. Izravno unesite konačnu adresu za ${product}.',
			'addServer.redirectInsecure' => 'Poslužitelj je preusmjerio s HTTPS-a na nesiguran URL',
			'addServer.redirectUnsupportedEnterFinal' => ({required Object product}) => 'Poslužitelj je preusmjeren na nepodržani URL. Izravno unesite konačni ${product} URL.',
			_ => null,
		};
	}
}
