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
class TranslationsIt extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsIt({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.it,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <it>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsIt _root = this; // ignore: unused_field

	@override 
	TranslationsIt $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsIt(meta: meta ?? this.$meta);

	// Translations
	@override late final _Translations$mobileLibrary$it mobileLibrary = _Translations$mobileLibrary$it._(_root);
	@override late final _Translations$profileStartup$it profileStartup = _Translations$profileStartup$it._(_root);
	@override late final _Translations$subtitleUpload$it subtitleUpload = _Translations$subtitleUpload$it._(_root);
	@override late final _Translations$personSpotlight$it personSpotlight = _Translations$personSpotlight$it._(_root);
	@override late final _Translations$detailExtras$it detailExtras = _Translations$detailExtras$it._(_root);
	@override late final _Translations$mobileUi$it mobileUi = _Translations$mobileUi$it._(_root);
	@override late final _Translations$family$it family = _Translations$family$it._(_root);
	@override late final _Translations$posterDetails$it posterDetails = _Translations$posterDetails$it._(_root);
	@override late final _Translations$libraryPolish$it libraryPolish = _Translations$libraryPolish$it._(_root);
	@override late final _Translations$showSchedule$it showSchedule = _Translations$showSchedule$it._(_root);
	@override late final _Translations$awardsCatalog$it awardsCatalog = _Translations$awardsCatalog$it._(_root);
	@override late final _Translations$searchDiscovery$it searchDiscovery = _Translations$searchDiscovery$it._(_root);
	@override late final _Translations$lurokaPlayerDesign$it lurokaPlayerDesign = _Translations$lurokaPlayerDesign$it._(_root);
	@override late final _Translations$lurokaWorkspace$it lurokaWorkspace = _Translations$lurokaWorkspace$it._(_root);
	@override late final _Translations$mobileFixes$it mobileFixes = _Translations$mobileFixes$it._(_root);
	@override late final _Translations$downloadsRedesign$it downloadsRedesign = _Translations$downloadsRedesign$it._(_root);
	@override late final _Translations$kidsShelf$it kidsShelf = _Translations$kidsShelf$it._(_root);
	@override late final _Translations$kidsHome$it kidsHome = _Translations$kidsHome$it._(_root);
	@override late final _Translations$tvSettingsV2$it tvSettingsV2 = _Translations$tvSettingsV2$it._(_root);
	@override late final _Translations$settingsRedesign$it settingsRedesign = _Translations$settingsRedesign$it._(_root);
	@override late final _Translations$onboarding$it onboarding = _Translations$onboarding$it._(_root);
	@override late final _Translations$household$it household = _Translations$household$it._(_root);
	@override late final _Translations$detailComposition$it detailComposition = _Translations$detailComposition$it._(_root);
	@override late final _Translations$kids$it kids = _Translations$kids$it._(_root);
	@override late final _Translations$lurokaDiscovery$it lurokaDiscovery = _Translations$lurokaDiscovery$it._(_root);
	@override late final _Translations$app$it app = _Translations$app$it._(_root);
	@override late final _Translations$appIcon$it appIcon = _Translations$appIcon$it._(_root);
	@override late final _Translations$auth$it auth = _Translations$auth$it._(_root);
	@override late final _Translations$common$it common = _Translations$common$it._(_root);
	@override late final _Translations$tvHints$it tvHints = _Translations$tvHints$it._(_root);
	@override late final _Translations$screens$it screens = _Translations$screens$it._(_root);
	@override late final _Translations$mediaExtras$it mediaExtras = _Translations$mediaExtras$it._(_root);
	@override late final _Translations$update$it update = _Translations$update$it._(_root);
	@override late final _Translations$supporter$it supporter = _Translations$supporter$it._(_root);
	@override late final _Translations$settings$it settings = _Translations$settings$it._(_root);
	@override late final _Translations$themeEditor$it themeEditor = _Translations$themeEditor$it._(_root);
	@override late final _Translations$seriesBrowser$it seriesBrowser = _Translations$seriesBrowser$it._(_root);
	@override late final _Translations$titlePage$it titlePage = _Translations$titlePage$it._(_root);
	@override late final _Translations$tvMenus$it tvMenus = _Translations$tvMenus$it._(_root);
	@override late final _Translations$lurokaPlayer$it lurokaPlayer = _Translations$lurokaPlayer$it._(_root);
	@override late final _Translations$lurokaSettings$it lurokaSettings = _Translations$lurokaSettings$it._(_root);
	@override late final _Translations$playerChrome$it playerChrome = _Translations$playerChrome$it._(_root);
	@override late final _Translations$tvLayout$it tvLayout = _Translations$tvLayout$it._(_root);
	@override late final _Translations$studios$it studios = _Translations$studios$it._(_root);
	@override late final _Translations$dashboard$it dashboard = _Translations$dashboard$it._(_root);
	@override late final _Translations$lurokaCatalog$it lurokaCatalog = _Translations$lurokaCatalog$it._(_root);
	@override late final _Translations$referenceDetails$it referenceDetails = _Translations$referenceDetails$it._(_root);
	@override late final _Translations$lurokaThemes$it lurokaThemes = _Translations$lurokaThemes$it._(_root);
	@override late final _Translations$customPerformance$it customPerformance = _Translations$customPerformance$it._(_root);
	@override late final _Translations$homeLayout$it homeLayout = _Translations$homeLayout$it._(_root);
	@override late final _Translations$screenTime$it screenTime = _Translations$screenTime$it._(_root);
	@override late final _Translations$activityStats$it activityStats = _Translations$activityStats$it._(_root);
	@override late final _Translations$search$it search = _Translations$search$it._(_root);
	@override late final _Translations$hotkeys$it hotkeys = _Translations$hotkeys$it._(_root);
	@override late final _Translations$fileInfo$it fileInfo = _Translations$fileInfo$it._(_root);
	@override late final _Translations$mediaMenu$it mediaMenu = _Translations$mediaMenu$it._(_root);
	@override late final _Translations$rateSheet$it rateSheet = _Translations$rateSheet$it._(_root);
	@override late final _Translations$accessibility$it accessibility = _Translations$accessibility$it._(_root);
	@override late final _Translations$tooltips$it tooltips = _Translations$tooltips$it._(_root);
	@override late final _Translations$audioTracks$it audioTracks = _Translations$audioTracks$it._(_root);
	@override late final _Translations$videoControls$it videoControls = _Translations$videoControls$it._(_root);
	@override late final _Translations$messages$it messages = _Translations$messages$it._(_root);
	@override late final _Translations$sourceLibraries$it sourceLibraries = _Translations$sourceLibraries$it._(_root);
	@override late final _Translations$subtitlingStyling$it subtitlingStyling = _Translations$subtitlingStyling$it._(_root);
	@override late final _Translations$mpvConfig$it mpvConfig = _Translations$mpvConfig$it._(_root);
	@override late final _Translations$dialog$it dialog = _Translations$dialog$it._(_root);
	@override late final _Translations$profiles$it profiles = _Translations$profiles$it._(_root);
	@override late final _Translations$connections$it connections = _Translations$connections$it._(_root);
	@override late final _Translations$serversAccounts$it serversAccounts = _Translations$serversAccounts$it._(_root);
	@override late final _Translations$accountPreferences$it accountPreferences = _Translations$accountPreferences$it._(_root);
	@override late final _Translations$discover$it discover = _Translations$discover$it._(_root);
	@override late final _Translations$errors$it errors = _Translations$errors$it._(_root);
	@override late final _Translations$libraries$it libraries = _Translations$libraries$it._(_root);
	@override late final _Translations$about$it about = _Translations$about$it._(_root);
	@override late final _Translations$serverSelection$it serverSelection = _Translations$serverSelection$it._(_root);
	@override late final _Translations$hubDetail$it hubDetail = _Translations$hubDetail$it._(_root);
	@override late final _Translations$logs$it logs = _Translations$logs$it._(_root);
	@override late final _Translations$startup$it startup = _Translations$startup$it._(_root);
	@override late final _Translations$licenses$it licenses = _Translations$licenses$it._(_root);
	@override late final _Translations$navigation$it navigation = _Translations$navigation$it._(_root);
	@override late final _Translations$explore$it explore = _Translations$explore$it._(_root);
	@override late final _Translations$liveTv$it liveTv = _Translations$liveTv$it._(_root);
	@override late final _Translations$collections$it collections = _Translations$collections$it._(_root);
	@override late final _Translations$playlists$it playlists = _Translations$playlists$it._(_root);
	@override late final _Translations$music$it music = _Translations$music$it._(_root);
	@override late final _Translations$watchTogether$it watchTogether = _Translations$watchTogether$it._(_root);
	@override late final _Translations$downloads$it downloads = _Translations$downloads$it._(_root);
	@override late final _Translations$shaders$it shaders = _Translations$shaders$it._(_root);
	@override late final _Translations$companionRemote$it companionRemote = _Translations$companionRemote$it._(_root);
	@override late final _Translations$videoSettings$it videoSettings = _Translations$videoSettings$it._(_root);
	@override late final _Translations$performanceOverlay$it performanceOverlay = _Translations$performanceOverlay$it._(_root);
	@override late final _Translations$externalPlayer$it externalPlayer = _Translations$externalPlayer$it._(_root);
	@override late final _Translations$metadataEdit$it metadataEdit = _Translations$metadataEdit$it._(_root);
	@override late final _Translations$matchScreen$it matchScreen = _Translations$matchScreen$it._(_root);
	@override late final _Translations$serverTasks$it serverTasks = _Translations$serverTasks$it._(_root);
	@override late final _Translations$trakt$it trakt = _Translations$trakt$it._(_root);
	@override late final _Translations$seerr$it seerr = _Translations$seerr$it._(_root);
	@override late final _Translations$services$it services = _Translations$services$it._(_root);
	@override late final _Translations$addServer$it addServer = _Translations$addServer$it._(_root);
}

// Path: mobileLibrary
class _Translations$mobileLibrary$it extends Translations$mobileLibrary$en {
	_Translations$mobileLibrary$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get pickerSubtitle => 'Scegli una raccolta da esplorare';
	@override String get searchLibraries => 'Cerca nelle biblioteche';
	@override String get noLibraries => 'Nessuna libreria corrispondente';
	@override String get ascending => 'Ascendente';
	@override String get descending => 'Discendente';
	@override String get sort => 'Ordina';
	@override String unwatchedCount({required Object count}) => '${count} episodi non guardati';
	@override String get latestEpisode => 'Ultimo episodio';
}

// Path: profileStartup
class _Translations$profileStartup$it extends Translations$profileStartup$en {
	_Translations$profileStartup$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get autoLogin => 'Apri l\'ultimo profilo utilizzato';
	@override String get autoLoginHint => 'Apre automaticamente l\'ultimo profilo quando non richiede PIN.';
	@override String get allowKidsExit => 'Consenti di uscire dal profilo Bambini senza il PIN genitore';
	@override String get allowKidsExitHint => 'Consente al bambino di passare a un altro profilo senza il PIN genitore. I PIN del profilo restano attivi.';
	@override String get chooseKidsConnection => 'Scegli un account o un server diverso';
	@override String get chooseKidsConnectionHint => 'Dopo aver salvato, collega un account separato o scegli una connessione da un altro profilo.';
}

// Path: subtitleUpload
class _Translations$subtitleUpload$it extends Translations$subtitleUpload$en {
	_Translations$subtitleUpload$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get chooseFile => 'Carica il file dei sottotitoli';
	@override String get hint => 'Scegli la lingua sopra, quindi carica un file SRT, ASS, SSA o VTT su questo server.';
	@override String get success => 'Sottotitoli caricati sul server. Apparirà quando il server aggiorna l\'elemento.';
	@override String get failed => 'Impossibile caricare il sottotitolo. Controlla i permessi del file e del server.';
}

// Path: personSpotlight
class _Translations$personSpotlight$it extends Translations$personSpotlight$en {
	_Translations$personSpotlight$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get inYourLibraries => 'nelle vostre biblioteche';
	@override String libraryTitles({required Object n}) => 'Nelle tue librerie · Titoli ${n}';
	@override String get readBiography => 'Leggi la biografia';
	@override String get newestFirst => 'Prima il più recente';
	@override String get oldestFirst => 'Prima il più vecchio';
	@override String get titleAscending => 'Titolo dalla A alla Z';
	@override String get sortTitles => 'Ordina la filmografia';
	@override String unwatchedEpisodes({required Object n}) => '${n} episodi non guardati';
	@override String copies({required Object n}) => 'Copie della libreria ${n}';
	@override String versions({required Object n}) => 'Versioni dei file ${n}';
	@override String get retryTitles => 'Impossibile caricare tutti i titoli. Riprova';
}

// Path: detailExtras
class _Translations$detailExtras$it extends Translations$detailExtras$en {
	_Translations$detailExtras$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get onlineVideos => 'Trailer ed extra';
	@override String get reviews => 'Recensioni';
	@override String get readReview => 'Leggi la recensione completa';
	@override String directedBy({required Object name}) => 'Altro diretto da ${name}';
	@override String get previewUnavailable => 'Impossibile riprodurre questa anteprima. Puoi invece aprirlo nella sua app originale.';
	@override String get openExternally => 'Apri il video originale';
}

// Path: mobileUi
class _Translations$mobileUi$it extends Translations$mobileUi$en {
	_Translations$mobileUi$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get readMore => 'Leggi di più';
	@override String get readLess => 'Mostra meno';
	@override String get playbackTools => 'Opzioni di riproduzione';
	@override String get streamingQuality => 'Qualità dello streaming';
	@override String get fileVersions => 'Versioni dei file';
	@override String get qualityAndVersions => 'Qualità dello streaming e versioni dei file';
	@override String get hidePlaybackTools => 'Nascondi strumenti di riproduzione';
	@override String remaining({required Object time}) => '${time} a sinistra';
	@override String endsAt({required Object time}) => 'Termina alle ${time}';
	@override String get collection => 'La tua collezione';
	@override String get nowPlaying => 'ORA GIOCANDO';
	@override String get popularLibrary => 'Popolare nella tua libreria';
	@override String get weeklyLibrary => 'Tendenze nella tua libreria questa settimana';
}

// Path: family
class _Translations$family$it extends Translations$family$en {
	_Translations$family$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profili e famiglia';
	@override String get yourPeople => 'La tua gente';
	@override String get manageHint => 'Gestisci le persone, la sicurezza dei bambini e l\'attività di visualizzazione su questo dispositivo.';
	@override String get people => 'Persone';
	@override String peopleCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n,
		one: '${n} persona',
		other: '${n} persone',
	);
	@override String kidsCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n,
		one: '${n} bambino',
		other: '${n} bambini',
	);
	@override String get you => 'Tu';
	@override String get adult => 'Adulto';
	@override String get child => 'Bambino';
	@override String get adultTeen => 'Adulto o adolescente';
	@override String get adultHint => 'Il proprio profilo, il profilo opzionale PIN e le proprie connessioni al server.';
	@override String get childHint => 'Limiti di età, librerie sicure e un aspetto adatto ai bambini. Il PIN genitore protegge queste impostazioni.';
	@override String upToAge({required Object age}) => 'Fino all\'età ${age}';
	@override String get allAges => 'Tutte le età';
	@override String get switchProfile => 'Cambia profilo';
	@override String get switchHint => 'Scegli chi sta guardando. La gestione di una persona non comporta il cambio di profilo.';
	@override String get addPerson => 'Aggiungi persona';
	@override String get addChild => 'Aggiungi bambino';
	@override String get addHint => 'Crea un profilo per adulti, adolescenti o bambini su questo dispositivo.';
	@override String get emptyPeople => 'Fai spazio a tutti coloro che guardano con te.';
	@override String get emptyKids => 'Nessun profilo per bambini ancora. Aggiungi un bambino per scegliere limiti di età e biblioteche sicure.';
	@override String get safety => 'Bambini e sicurezza';
	@override String get safetyHint => 'PIN genitore, profili per bambini e limiti di età.';
	@override String get protection => 'Protezione';
	@override String get kidsProfiles => 'Profili dei bambini';
	@override String get backupHistory => 'Backup e cronologia';
	@override String get parentPinOn => 'PIN genitore attivo';
	@override String get profilePin => 'PIN del profilo';
	@override String get confirmParentPin => 'Conferma il PIN genitore';
	@override String get parentPinOff => 'PIN genitore non impostato';
	@override String get missingPin => 'Aggiungi un PIN genitore per proteggere queste impostazioni.';
	@override String get hideScope => 'Nascondi l\'attività dei bambini da Continua a guardare in questo profilo Luroka. Ciò non modifica la cronologia visualizzazioni del server condiviso.';
	@override String get localScope => 'I profili e le restrizioni dei bambini sono archiviati su questo dispositivo. I profili che utilizzano lo stesso account server condividono comunque l\'avanzamento della visualizzazione di quell\'account.';
	@override String get clearHistoryConfirm => 'Consentire la visualizzazione dei titoli guardati dai bambini in Continuare a guardare di nuovo? I profili dei bambini, le restrizioni, le statistiche sul tempo di visualizzazione e la cronologia delle visualizzazioni del server verranno conservati.';
	@override String get editRestrictions => 'Modifica le restrizioni per i bambini';
	@override String get activity => 'Visualizzazione dell\'attività';
	@override String namedActivity({required Object name}) => 'Attività di visualizzazione di ${name}';
	@override String get thisProfile => 'Questo profilo';
	@override String get activityScope => 'Tempo di riproduzione registrato da Luroka su questo dispositivo per il profilo attivo. Queste sono statistiche, non limiti di visualizzazione o cronologia completa del server.';
	@override String get activityUnavailable => 'L\'attività di visualizzazione non è ancora disponibile per questo profilo.';
	@override String get finished => 'Fatto';
}

// Path: posterDetails
class _Translations$posterDetails$it extends Translations$posterDetails$en {
	_Translations$posterDetails$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get showThemeMusic => 'Riproduci musica a tema';
	@override String get showThemeMusicDescription => 'Riproduci il tema di un film o di un programma mentre la relativa pagina dei dettagli è aperta, se disponibile sul server.';
	@override String get catalogEpisodeInfo => 'Mostra il conteggio degli episodi e la durata sulle schede del catalogo';
	@override String get catalogEpisodeInfoDescription => 'Mostra il numero degli episodi e la durata media sui poster di Scopri.';
	@override String get title => 'Dettagli del manifesto';
	@override String get description => 'Mostra il titolo, l\'anno e la valutazione IMDb sotto i poster in Studio, Ricerca, Scopri e Biblioteche. Le valutazioni IMDb mancanti rimangono nascoste. Disattiva per i poster contenenti solo opere d\'arte.';
}

// Path: libraryPolish
class _Translations$libraryPolish$it extends Translations$libraryPolish$en {
	_Translations$libraryPolish$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get posterDetails => 'Dettagli del manifesto';
	@override String get showPosterDetails => 'Mostra i dettagli del poster · nome, anno e IMDb';
	@override String get hidePosterDetails => 'Nascondi i dettagli del poster';
	@override String get overview => 'Panoramica';
	@override String get refreshing => 'Aggiornamento della libreria…';
	@override String get serverCollections => 'Tutte le raccolte su questo server';
	@override String get serverPlaylists => 'Tutte le playlist video su questo server';
	@override String get libraryCollections => 'Collezioni in questa libreria';
	@override String get searchCollections => 'Cerca raccolte';
	@override String get searchPlaylists => 'Cerca playlist';
	@override String get searchHint => 'Cerca per nome';
	@override String get titleAscending => 'Titolo dalla A alla Z';
	@override String get titleDescending => 'Titolo Z-A';
	@override String get clearFilters => 'Cancella filtri';
	@override String get playlistEmptyTitle => 'Le tue serate di cinema, nel tuo ordine';
	@override String get playlistEmptyHint => 'Apri il menu Altro di un titolo e scegli Aggiungi a playlist per creare la tua prima playlist.';
	@override String get noMatches => 'Nessun nome corrispondente';
	@override String get indexing => 'Ricerca nel catalogo completo…';
}

// Path: showSchedule
class _Translations$showSchedule$it extends Translations$showSchedule$en {
	_Translations$showSchedule$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get today => 'Oggi';
	@override String get tomorrow => 'Domani';
	@override String get latestUpcoming => 'Ultimi e imminenti';
	@override String get latestEpisode => 'Ultimo episodio';
	@override String get upcoming => 'Prossimamente';
	@override String get inLibrary => 'Nella tua libreria';
	@override String get notInLibrary => 'Non nella tua libreria';
	@override String get notYetAired => 'Non ancora andato in onda';
	@override String episode({required Object number}) => 'Episodio ${number}';
	@override String get caughtUp => 'Sei tutto preso';
	@override String get finished => 'Hai finito questa serie';
	@override String nextAirs({required Object date}) => 'Il prossimo episodio va in onda ${date}';
	@override String get watchBeginning => 'Guarda dall\'inizio';
	@override String get replay => 'Riproduci';
	@override String get playNext => 'Gioca dopo';
}

// Path: awardsCatalog
class _Translations$awardsCatalog$it extends Translations$awardsCatalog$en {
	_Translations$awardsCatalog$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get awards => 'Premi';
	@override String get customize => 'Personalizza';
	@override String get chooseShelves => 'Personalizza Scopri';
	@override String get shelvesDescription => 'Scegli le righe che desideri su Scopri. Le righe dei premi mostrano i vincitori delle tue librerie. Le tue scelte vengono salvate per questo profilo.';
	@override String get restoreShelves => 'Ripristina le impostazioni predefinite';
	@override String get charts => 'Grafici IMDb';
	@override String get generalShelves => 'Popolare e di tendenza';
	@override String get saveShelvesFailed => 'Impossibile salvare le scelte di Scopri. Per favore riprova.';
	@override String get comedyActress => 'Attrice protagonista · Commedia';
	@override String get leadDramaActor => 'Attore protagonista · Dramma';
	@override String get leadDramaActress => 'Attrice protagonista · Dramma';
	@override String get comedySupportingActor => 'Attore non protagonista · Commedia';
	@override String get comedySupportingActress => 'Attrice non protagonista · Commedia';
	@override String get leadingPerformance => 'Orso d\'argento · Miglior interpretazione da protagonista';
	@override String get globesComedySeries => 'Miglior serie televisiva · Musical o commedia';
	@override String get limitedSupportingActor => 'Attore non protagonista · Serie limitata o film';
	@override String get limitedSupportingActress => 'Attrice non protagonista · Miniserie o film';
	@override String get berlinDocumentary => 'Premio documentario alla Berlinale';
	@override String get title => 'Premi e festival';
	@override String get chooseCategory => 'Scegli una categoria di premio';
	@override String get winners => 'Vincitori';
	@override String get nominees => 'Candidati';
	@override String get releaseDecade => 'Decennio di rilascio';
	@override String get allYears => 'Tutti gli anni';
	@override String get loading => 'Caricamento dei titoli dei premi…';
	@override String get matching => 'Trovare questi titoli nelle vostre librerie…';
	@override String get unavailable => 'I dati sui premi non sono al momento disponibili. Riprova.';
	@override String get empty => 'Nessun titolo corrispondente nelle librerie visibili per questa categoria.';
	@override String get coverage => 'L\'iscrizione proviene da Wikidata e può essere incompleta. Le categorie attore e regista mostrano i film o gli spettacoli per cui sono stati premiati. Gli anni si riferiscono al rilascio del titolo, non alla cerimonia.';
	@override String get picture => 'Miglior film';
	@override String get film => 'Miglior film';
	@override String get international => 'Miglior lungometraggio internazionale';
	@override String get internationalFilm => 'Miglior film internazionale';
	@override String get nonEnglishFilm => 'Miglior film non in lingua inglese';
	@override String get animated => 'Miglior film d\'animazione';
	@override String get animatedFilm => 'Miglior film d\'animazione';
	@override String get documentary => 'Miglior lungometraggio documentario';
	@override String get director => 'Miglior regista';
	@override String get actor => 'Miglior attore';
	@override String get actress => 'Miglior attrice';
	@override String get supportingActor => 'Miglior attore non protagonista';
	@override String get supportingActress => 'Miglior attrice non protagonista';
	@override String get originalScreenplay => 'Miglior sceneggiatura originale';
	@override String get adaptedScreenplay => 'Miglior sceneggiatura adattata';
	@override String get screenplay => 'Miglior sceneggiatura';
	@override String get cinematography => 'Miglior fotografia';
	@override String get editing => 'Miglior montaggio';
	@override String get score => 'Miglior colonna sonora originale';
	@override String get song => 'Miglior canzone originale';
	@override String get sound => 'Miglior suono';
	@override String get effects => 'I migliori effetti visivi';
	@override String get productionDesign => 'Miglior scenografia';
	@override String get costume => 'Migliori costumi';
	@override String get makeup => 'Miglior trucco e acconciatura';
	@override String get dramaSeries => 'Serie drammatica eccezionale';
	@override String get comedySeries => 'Serie comica eccezionale';
	@override String get limitedSeries => 'Eccezionale serie limitata';
	@override String get animatedProgram => 'Eccezionale programma d\'animazione';
	@override String get comedyActor => 'Attore protagonista · Commedia';
	@override String get limitedActor => 'Attore protagonista · Serie limitata o film';
	@override String get limitedActress => 'Attrice protagonista · Miniserie o film';
	@override String get limitedDirecting => 'Regia · Serie limitata o film';
	@override String get britishFilm => 'Miglior film britannico';
	@override String get goldenBear => 'Orso d\'oro';
	@override String get grandJury => 'Gran Premio della Giuria';
	@override String get jury => 'Premio della Giuria';
	@override String get teddy => 'Premio Teddy';
	@override String get goldenLion => 'Leone d\'Oro';
	@override String get volpiActor => 'Coppa Volpi · Miglior Attore';
	@override String get volpiActress => 'Coppa Volpi · Miglior Attrice';
	@override String get queerLion => 'Leone strano';
	@override String get dramaFilm => 'Miglior film · Drammatico';
	@override String get comedyFilm => 'Miglior film · Musical o commedia';
	@override String get dramaActor => 'Miglior attore · Drammatico';
	@override String get dramaActress => 'Miglior attrice · Drammatico';
	@override String get usDramatic => 'Gran Premio della Giuria Drammatico statunitense';
	@override String get documentaryJury => 'Gran Premio della Giuria per il documentario';
	@override String get worldCinema => 'Gran Premio della Giuria del Cinema Mondiale';
	@override String get dramaticAudience => 'Premio del pubblico drammatico statunitense';
	@override String get usDirecting => 'Premio alla regia statunitense';
	@override String get peopleChoice => 'Premio People\'s Choice';
	@override String get canadianFilm => 'Miglior film canadese';
	@override String get firstFeature => 'Miglior opera prima';
	@override String get cassavetes => 'Premio John Cassavetes';
	@override String get scienceFiction => 'Miglior film di fantascienza';
	@override String get fantasy => 'Miglior film fantasy';
	@override String get horror => 'Miglior film horror';
	@override String get action => 'Miglior film d\'azione o d\'avventura';
	@override String get thriller => 'Miglior film thriller';
}

// Path: searchDiscovery
class _Translations$searchDiscovery$it extends Translations$searchDiscovery$en {
	_Translations$searchDiscovery$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get suggestions => 'Qualcosa da guardare';
	@override String get collections => 'Premi e collezioni';
	@override String get collectionsHint => 'Vincitori di premi e grafici selezionati dalle tue biblioteche';
	@override String get all => 'Tutta scoperta';
	@override String get awards => 'Premi e classifiche';
}

// Path: lurokaPlayerDesign
class _Translations$lurokaPlayerDesign$it extends Translations$lurokaPlayerDesign$en {
	_Translations$lurokaPlayerDesign$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get seeking => 'Cerca l\'anteprima';
	@override String get keepWatching => 'Continua a guardare';
	@override String get upNext => 'Il prossimo';
	@override String playingIn({required Object seconds}) => 'Riproduzione in ${seconds} s';
}

// Path: lurokaWorkspace
class _Translations$lurokaWorkspace$it extends Translations$lurokaWorkspace$en {
	_Translations$lurokaWorkspace$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get everyday => 'Tutti i giorni';
	@override String get homeDiscovery => 'Casa e scoperta';
	@override String get librariesAccounts => 'Biblioteche e conti';
	@override String get profilesFamily => 'Profili e famiglia';
	@override String get thisDevice => 'Questo dispositivo';
	@override String get thisProfile => 'Questo profilo';
	@override String get searchSettings => 'Impostazioni di ricerca';
	@override String get savedAutomatically => 'Le modifiche vengono salvate automaticamente. Ogni giorno e Avanzato cambiano solo i controlli mostrati.';
	@override String get audioSubtitles => 'Audio e sottotitoli';
	@override String get audioDescription => 'Uscita audio, volume e aspetto dei sottotitoli. Le lingue preferite vengono impostate per account server utilizzando le preferenze Account quando si è connessi.';
	@override String get pictureSound => 'Immagine e suono';
	@override String get pictureDescription => 'Corrispondenza frame rate, risoluzione, ottimizzazione HDR e Dolby Vision per questo dispositivo.';
	@override String get engineDescription => 'Motore del lettore, decodifica, configurazione personalizzata e regole di riproduzione avanzate.';
	@override String get networkStreaming => 'Rete e streaming';
	@override String get networkDescription => 'Qualità dello streaming, preferenze dei codec per la riproduzione diretta e scelte di larghezza di banda.';
	@override String get homeOptions => 'Opzioni per la casa';
	@override String get refreshHome => 'Aggiorna Home e Popolari adesso';
	@override String get customizeHome => 'Personalizza la casa';
	@override String get spotlight => 'Riflettori domestici';
	@override String get rotateSpotlight => 'Ruota automaticamente i titoli in primo piano';
	@override String get rotateDescription => 'Ruota mentre Home è inattivo. L\'interazione mette in pausa la rotazione; sfogliare gli scaffali, aprire una pagina o uscire dall\'app la mette completamente in pausa.';
	@override String get rotationInterval => 'Tempo tra i titoli in primo piano';
}

// Path: mobileFixes
class _Translations$mobileFixes$it extends Translations$mobileFixes$en {
	_Translations$mobileFixes$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get connectionRecoveryHint => 'Server non disponibile? Gestisci i tuoi account o connetti un altro server.';
}

// Path: downloadsRedesign
class _Translations$downloadsRedesign$it extends Translations$downloadsRedesign$en {
	_Translations$downloadsRedesign$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get shelfSize => 'Articoli per scaffale';
	@override String get shelfSizeHint => 'Mostra 16, 32 o 48 articoli negli scaffali Continua a guardare e consigli. I server potrebbero restituire meno titoli disponibili.';
	@override String get subtitle => 'I tuoi preferiti, pronti per il viaggio.';
	@override String get transfers => 'Trasferimenti';
	@override String get ready => 'Pronto offline';
	@override String get active => 'Download in corso';
	@override String get waiting => 'In attesa';
	@override String get downloaded => 'Scaricato';
	@override String get speed => 'Velocità di download';
	@override String get notificationProgress => '{progress} · {networkSpeed} · {timeRemaining} rimanenti';
}

// Path: kidsShelf
class _Translations$kidsShelf$it extends Translations$kidsShelf$en {
	_Translations$kidsShelf$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get movieShelf => 'Tempo di film';
	@override String get showShelf => 'Trova il tuo prossimo spettacolo';
	@override String get aurora => 'Aurora: verde acqua intenso e lime';
	@override String get marquee => 'Marquee: velluto e oro';
	@override String get electric => 'Elettrico: indaco e ghiaccio';
	@override String get midnight => 'Mezzanotte: acciaio e ambra';
	@override String get yourShelf => 'Il tuo scaffale dei film';
	@override String get all => 'Tutto';
	@override String get pickSomething => 'Cosa vuoi guardare?';
}

// Path: kidsHome
class _Translations$kidsHome$it extends Translations$kidsHome$en {
	_Translations$kidsHome$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get everything => 'Per te';
	@override String get keepWatching => 'Continua a guardare';
	@override String get emptyFilter => 'Niente qui ancora. Prova per te o chiedi a un adulto di aggiungere qualcosa che ami.';
}

// Path: tvSettingsV2
class _Translations$tvSettingsV2$it extends Translations$tvSettingsV2$en {
	_Translations$tvSettingsV2$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get moreThemes => 'Altri temi e colori personalizzati';
	@override String get moreThemesHint => 'Apri tutte le preimpostazioni disponibili e le opzioni del tema personalizzato.';
	@override String get previewLive => 'Anteprima dal vivo';
	@override String get previewIllustration => 'Esempio di anteprima';
	@override String previewShelfCount({required Object count}) => 'Fino a ${count} articoli per ripiano';
	@override String get simple => 'Semplice';
	@override String get homeNavigation => 'Home e navigazione';
	@override String get libraryCards => 'Biblioteca e carte';
	@override String get accountsLibraries => 'Account e biblioteche';
	@override String get profilesFamily => 'Profili e famiglia';
	@override String get aboutSupport => 'Informazioni e supporto';
	@override String get playback => 'Riproduzione';
	@override String get homeHint => 'Scegli cosa appare sulla Home e nella navigazione.';
	@override String get libraryHint => 'Regola le dimensioni dei poster, le etichette e gli indicatori osservati.';
	@override String get advancedPlayback => 'Motore del lettore e streaming';
	@override String get advancedPlaybackHint => 'Lettore, uscita video, streaming e scelte di riproduzione avanzate.';
	@override String get advancedTools => 'Diagnostica e backup';
	@override String get advancedToolsHint => 'Registri, risoluzione dei problemi, backup e ripristino delle impostazioni.';
	@override String get themePreview => 'Anteprima del tema';
	@override String get libraryPreview => 'Anteprima della libreria';
	@override String get homePreview => 'Anteprima della casa';
	@override String get subtitlePreview => 'Anteprima dei sottotitoli';
	@override String get subtitleSample => 'I tuoi sottotitoli appariranno così.';
	@override String get previewPlaceholder => 'La tua opera d\'arte appare qui';
	@override String get posterSize => 'Dimensioni del manifesto';
	@override String get serverRecommendations => 'Consigli per la casa dal tuo server';
	@override String get tvLayout => 'Usa il layout TV';
	@override String get hardwareDecode => 'Utilizza la decodifica video hardware';
	@override String get serverNames => 'Mostra i nomi dei server nelle righe Home';
	@override String get settingsSaved => 'Le modifiche vengono salvate automaticamente.';
	@override String get morePlayback => 'Riproduzione avanzata';
	@override String get screenDisplay => 'Immagine e suono';
	@override String get engine => 'Motore del giocatore';
	@override String get network => 'Streaming e rete';
	@override String get performance => 'Prestazioni';
	@override String get simpleAudio => 'Lingue e aspetto dei sottotitoli';
}

// Path: settingsRedesign
class _Translations$settingsRedesign$it extends Translations$settingsRedesign$en {
	_Translations$settingsRedesign$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get themeEffects => 'Tema ed effetti';
	@override String get libraryLayout => 'Disposizione della biblioteca';
	@override String get appearanceHint => 'Personalizza l\'aspetto, il layout e il comportamento di Luroka.';
	@override String get livePreview => 'Anteprima dal vivo';
	@override String get previewHint => 'Guarda come apparirà la tua libreria con le impostazioni attuali.';
	@override String get showLiveTv => 'Mostra TV in diretta';
	@override String get showLiveTvHint => 'Mostra la TV in diretta nella navigazione quando un server connesso lo supporta. Questo non cambia il tuo server.';
	@override String get aboutTagline => 'I tuoi contenuti multimediali. Il tuo spazio.';
	@override String get aboutDescription => 'Luroka riunisce le tue librerie Plex, Jellyfin e Emby in un lettore cinematografico per telefoni, TV e desktop.';
	@override String get aboutFeatures => 'Sfoglia le tue raccolte, riprendi film e programmi, personalizza i profili, goditi i download e guardali insieme. La TV in diretta è disponibile con un server compatibile.';
	@override String get services => 'Connetti il tuo mondo';
	@override String get updateSource => 'Aggiorna fonte';
	@override String get updateSourceHint => 'Indirizzo HTTPS del tuo feed di rilascio Luroka. Il tuo distributore può preconfigurarlo nell\'app.';
	@override String get updateNotConfigured => 'Gli aggiornamenti automatici non sono configurati per questa build.';
	@override String get downloadInstall => 'Scarica e installa';
	@override String get installUpdate => 'Installa l\'aggiornamento';
	@override String get downloading => 'Download dell\'aggiornamento…';
	@override String get downloadFailed => 'Impossibile scaricare o verificare l\'aggiornamento. Per favore riprova.';
	@override String get installPermission => 'Consenti a Luroka di installare gli aggiornamenti nelle impostazioni Android, quindi torna indietro e seleziona Installa aggiornamento.';
	@override String get updateReady => 'Scarica verificato. Pronto per l\'installazione.';
	@override String get releaseNotes => 'Note sulla versione';
	@override String get invalidFeed => 'Inserisci un indirizzo del feed di aggiornamento HTTPS valido.';
}

// Path: onboarding
class _Translations$onboarding$it extends Translations$onboarding$en {
	_Translations$onboarding$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get connectStep => '01 · Connetti';
	@override String get connectTitle => 'Benvenuto in Luroka';
	@override String get connectHint => 'Accedi per portare qui le tue librerie.';
	@override String get serverAddressHint => 'Inserisci l\'indirizzo del tuo server o scegli un server trovato sulla tua rete.';
	@override String get serverSignInHint => 'Usa il nome utente e la password del tuo server per connettere le tue librerie.';
	@override String get serverAddressTitle => 'Indirizzo del server';
	@override String get serverAccountTitle => 'Il tuo account del server';
	@override String get plexHomeTitle => 'Scegli il tuo utente domestico Plex';
	@override String get plexHomeHint => 'Seleziona l\'utente Plex di cui desideri utilizzare le librerie. Successivamente configurerai il tuo profilo Luroka.';
	@override String get chooseService => 'Scegli il tuo servizio';
	@override String get profileStep => '02 · Il tuo profilo';
	@override String get profileTitle => 'Sentiti a casa.';
	@override String get profileHint => 'Scegli un nome e un avatar per il tuo profilo Luroka. Il tuo account collegato rimane lo stesso.';
	@override String get readyStep => '03 · Pronti per la visione';
	@override String get readyTitle => 'Un po\' più tu.';
	@override String get readyHint => 'Riunisci i tuoi servizi o fai spazio a qualcun altro. Puoi sempre farlo più tardi.';
	@override String get addService => 'Connetti un altro servizio';
	@override String get editProfile => 'Modifica il tuo nome e avatar';
	@override String get connected => 'Connesso e pronto';
	@override String get backToProfile => 'Torna al tuo profilo';
	@override String get showOtherPlexHome => 'Mostra altri membri della Home Plex';
	@override String get showOtherPlexHomeHint => 'Disattivato per impostazione predefinita. I tuoi profili Luroka e i membri della Home Plex che hai utilizzato rimangono visibili. Attiva per scegliere qualcun altro.';
}

// Path: household
class _Translations$household$it extends Translations$household$en {
	_Translations$household$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'La tua famiglia Luroka';
	@override String get welcome => 'Rendi tuo Luroka';
	@override String get welcomeHint => 'Il tuo primo account è connesso. Personalizza il tuo profilo o aggiungi qualcun altro prima di iniziare a guardare.';
	@override String get profiles => 'Profili e famiglia';
	@override String get manageHint => 'Aggiungi persone, cambia immagini e gestisci le connessioni di ciascun profilo.';
	@override String get addProfile => 'Aggiungi il profilo Luroka';
	@override String get addHint => 'Ogni persona può connettere il proprio login Plex, Emby o Jellyfin. Vengono visualizzati solo i collegamenti aggiunti al loro profilo.';
	@override String get sharedHint => 'Il riutilizzo della connessione di un altro profilo condivide lo stato osservato e l\'avanzamento della riproduzione dell\'utente del server. Scegli un accesso separato per una cronologia di visualizzazione indipendente.';
	@override String get personalise => 'Personalizza il profilo';
	@override String get changePicture => 'Cambia l\'immagine del profilo';
	@override String get pictureHint => 'Scegli un avatar Luroka o una foto. Ciò modifica l\'immagine solo su questo dispositivo; il tuo account del server è intatto.';
	@override String get serverPicture => 'Utilizza l\'immagine/iniziali del server';
	@override String get choosePhoto => 'Scegli una foto';
	@override String get photoHint => 'JPEG, PNG o un\'altra immagine supportata, fino a 10 MB. Le foto vengono ridimensionate e archiviate su questo dispositivo.';
	@override String get pictureSaved => 'Immagine del profilo aggiornata';
	@override String get pictureFailed => 'Impossibile aggiornare l\'immagine del profilo. Prova un\'immagine supportata fino a 10 MB.';
	@override String get saveFailed => 'Impossibile salvare le impostazioni del profilo. Per favore riprova.';
	@override String get startWatching => 'Inizia a guardare';
	@override String get manageProfiles => 'Gestisci o cambia profilo';
	@override String get addLater => 'Puoi aggiungere più persone in seguito in Impostazioni → Profili e nucleo familiare.';
	@override String get connectionRequired => 'Aggiungi una connessione al server per completare la configurazione di questo profilo.';
	@override String get mountain => 'Montagna';
	@override String get orbit => 'Esploratore';
	@override String get waves => 'Oceano';
	@override String get blossom => 'Fiore';
	@override String get lightning => 'Fulmine';
	@override String get moon => 'Luna';
	@override String get avatarGallery => 'Scegli un avatar';
	@override String get avatarIllustrationHint => 'Ritratti illustrati originali, bambini e amici animali';
	@override String get avatarPortraitSunrise => 'Ritratto dell\'alba';
	@override String get avatarPortraitMeadow => 'Ritratto di prato';
	@override String get avatarPortraitBerry => 'Ritratto di bacca';
	@override String get avatarPortraitGolden => 'Ritratto dorato';
	@override String get avatarPortraitIndigo => 'Ritratto indaco';
	@override String get avatarPortraitOcean => 'Ritratto dell\'oceano';
	@override String get avatarKidArtist => 'Piccolo artista';
	@override String get avatarKidSkater => 'Piccolo pattinatore';
	@override String get avatarCat => 'Gatto curioso';
	@override String get avatarDog => 'Cane felice';
	@override String get avatarPanda => 'Panda';
	@override String get avatarOwl => 'Gufo';
	@override String get avatarFox => 'Volpe';
	@override String get avatarDinosaur => 'Dinosauro';
	@override String get avatarRobot => 'Robot';
}

// Path: detailComposition
class _Translations$detailComposition$it extends Translations$detailComposition$en {
	_Translations$detailComposition$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get startOver => 'Ricominciare da capo';
	@override String get seriesCast => 'Cast della serie';
	@override String get streamingQuality => 'Qualità dello streaming...';
	@override String get trailer => 'Rimorchio';
	@override String get manageMedia => 'Gestisci i contenuti multimediali...';
	@override String get playbackOptions => 'Opzioni di riproduzione...';
	@override String get moreActions => 'Più azioni';
	@override String get watched => 'Guardato';
	@override String get unwatched => 'Non guardato';
	@override String endsAt({required Object time}) => 'Termina alle ${time}';
	@override String get automatic => 'Automatico';
	@override String get usePreferences => 'Usa le tue preferenze di riproduzione';
	@override String get mediaInformation => 'Informazioni sui media';
	@override String get fullFileInformation => 'Informazioni complete sul file';
	@override String get castAndCrew => 'Cast e troupe';
}

// Path: kids
class _Translations$kids$it extends Translations$kids$en {
	_Translations$kids$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get backupProfile => 'Eseguire il backup del profilo dei bambini';
	@override String get backupExplain => 'Esegui il backup del nome, del carattere, delle restrizioni, dell\'aspetto e delle esclusioni di visualizzazione locale salvati di questo profilo. I PIN genitori, gli accessi al server, i download e l\'avanzamento della riproduzione sul server non sono inclusi.';
	@override String get saveBackupFile => 'Salva il file di backup';
	@override String get copyBackup => 'Copia il testo di backup';
	@override String backupSaved({required Object path}) => 'Backup del profilo bambini salvato in ${path}';
	@override String get backupCopied => 'Backup del profilo dei bambini copiato';
	@override String get backupFailed => 'Impossibile salvare il backup del profilo dei bambini. Per favore riprova.';
	@override String get restoreProfile => 'Ripristina il profilo dei bambini';
	@override String get chooseBackupFile => 'Scegli il file di backup';
	@override String get pasteBackup => 'Incolla il testo di backup';
	@override String get backupText => 'JSON di backup del profilo per bambini';
	@override String get pasteFromClipboard => 'Incolla dagli appunti';
	@override String get restoreReview => 'Controlla queste impostazioni ripristinate, quindi Salva per creare un nuovo profilo per bambini utilizzando le connessioni al server attuali. I profili esistenti non vengono sovrascritti. Le selezioni della libreria e le esclusioni di visualizzazione corrispondono solo agli stessi ID server/libreria.';
	@override String get restoreInvalid => 'Questo non è un backup valido del profilo per bambini supportato. Scegli un backup JSON del profilo per bambini Luroka.';
	@override String get deleteProfile => 'Elimina il profilo dei bambini';
	@override String deleteExplain({required Object name}) => 'Eliminare ${name} da Luroka? Le relative impostazioni locali, download ed esclusioni di visualizzazione verranno rimosse. Il tuo account server e la cronologia lato server rimarranno. Crea prima un backup se desideri ripristinare il profilo in un secondo momento.';
	@override String get profileDeleted => 'Profilo bambini eliminato';
	@override String get allowedLibraries => 'Biblioteche consentite';
	@override String get unavailableLibrary => 'Libreria selezionata in precedenza (attualmente non disponibile)';
	@override String get allLibraries => 'Consenti tutte le raccolte di film e TV connesse';
	@override String get librariesExplain => 'Disattiva questa opzione per scegliere librerie specifiche. Le regole di età e animazione continuano ad applicarsi all\'interno delle librerie selezionate. Le nuove librerie non vengono aggiunte automaticamente quando si utilizza una selezione.';
	@override String get librariesUnavailable => 'Non vengono caricate raccolte di film o TV. Connettiti al server e apri Librerie, quindi torna qui per scegliere.';
	@override String get noLibrariesSelected => 'Nessuna libreria selezionata: questo bambino non vedrà alcun titolo.';
	@override String get animationOnly => 'Solo animazione';
	@override String get animationExplain => 'Mostra solo i titoli contrassegnati con il genere Animazione sul tuo server. Questo non sostituisce il limite di età: l\'animazione può essere destinata anche agli adulti. I metadati del genere mancanti sono nascosti.';
	@override String get allowUnrated => 'Consenti titoli senza classificazione in base all\'età';
	@override String get unratedExplain => 'Disattivato per impostazione predefinita. Se abilitata, possono apparire classificazioni mancanti o senza valutazione se le regole della libreria e dell\'animazione lo consentono. La loro idoneità non può essere verificata in base all\'età. Le classificazioni note superiori al limite di età e le classificazioni non riconosciute rimangono nascoste.';
	@override String get whoIsWatching => 'Chi sta guardando?';
	@override String get chooseAdventure => 'Un piccolo mondo di grandi avventure.';
	@override String get chooseProfile => 'Scegli il tuo spazio. Trasformala in una serata al cinema.';
	@override String welcome({required Object name}) => 'Ciao, ${name}!';
	@override String welcomeOlder({required Object name}) => 'La tua prossima fantastica storia, ${name}.';
	@override String get homeSubtitle => 'Grandi avventure. Piccole scoperte. Tutto per te.';
	@override String get homeSubtitleOlder => 'Trova un nuovo preferito. Riprendi da dove avevi interrotto.';
	@override String get featured => 'La grande avventura di oggi';
	@override String get featuredOlder => 'Sotto i riflettori';
	@override String get moreInfo => 'Maggiori informazioni';
	@override String get movies => 'Film';
	@override String get shows => 'Spettacoli';
	@override String get profiles => 'Profili';
	@override String get adultBadge => 'Adulti';
	@override String get avatar => 'Scegli il tuo personaggio';
	@override String get avatarExplorer => 'Esploratore dello spazio';
	@override String get avatarFox => 'Volpe';
	@override String get avatarDinosaur => 'Dinosauro';
	@override String get avatarRobot => 'Robot';
	@override String get avatarChildArtist => 'Piccolo artista';
	@override String get avatarChildSkater => 'Piccolo pattinatore';
	@override String get avatarSunrisePerson => 'Ritratto dell\'alba';
	@override String get avatarOceanPerson => 'Ritratto dell\'oceano';
	@override String get avatarCat => 'Gatto curioso';
	@override String get avatarDog => 'Cane felice';
	@override String get avatarPanda => 'Panda';
	@override String get avatarOwl => 'Gufo';
	@override String get avatarBear => 'Orso';
	@override String get continueAdventure => 'Continua l\'avventura';
	@override String get freshStories => 'Nuove storie da scoprire';
	@override String get yourMovies => 'I preferiti dei film';
	@override String get yourShows => 'Un altro episodio';
	@override String get emptyHint => 'Le nuove avventure appariranno qui quando il tuo server avrà titoli con una classificazione di età consentita.';
	@override String get title => 'Luroka per bambini';
	@override String get addProfile => 'Aggiungi il profilo dei bambini';
	@override String get parentalControls => 'Controlli parentali';
	@override String get parentPin => 'PIN genitore';
	@override String get setParentPin => 'Imposta il PIN genitore';
	@override String get changeParentPin => 'Modifica il PIN genitore';
	@override String get pinExplain => 'Questo PIN protegge i profili adulti e il controllo genitori su questo dispositivo.';
	@override String get name => 'Nome del bambino';
	@override String get ageGroup => 'Classificazione per età consentita';
	@override String get allAges => 'Tutte le età · G, TV-Y, TV-G, U';
	@override String get age7 => 'Fino a 7 · anche PG, TV-PG, TV-Y7';
	@override String get age12 => 'Fino a 12 · anche 12 e 12A';
	@override String get age16 => 'Fino a 16 · anche PG-13, TV-14, 15 e 16';
	@override String get ratingExplain => 'I titoli sopra il limite di età e le classificazioni non riconosciute vengono nascosti. I titoli senza classificazione vengono nascosti a meno che non li consenti di seguito. Gli episodi senza classificazione possono ereditare una classificazione della serie approvata. Le valutazioni dipendono dai metadati del tuo server.';
	@override String get theme => 'Aspetto dei bambini';
	@override String get themeExplain => 'Utilizza un tema colorato quando questo profilo è attivo.';
	@override String get sharedLogin => 'Utilizza l\'accesso al server esistente. I progressi di Plex/Emby e lo stato osservato rimangono condivisi. Le restrizioni e i profili dei bambini sono archiviati su questo dispositivo.';
	@override String get hideWatched => 'Nascondi la visualizzazione dei bambini da Continua a guardare';
	@override String get hideExplain => 'Nascondi film e intere serie riprodotte dai profili bambini su questo dispositivo. Ciò non li rimuoverà dalla tua libreria né modificherà la cronologia del server.';
	@override String get clearHistory => 'Reimposta le esclusioni di visualizzazione dei bambini';
	@override String get historyReset => 'Le esclusioni di visualizzazione per i bambini vengono reimpostate';
	@override String get blocked => 'Questo titolo non è disponibile nel profilo di questo bambino.';
	@override String get switchProfile => 'Cambia profilo';
	@override String get manageFromAdult => 'Passa a un profilo per adulti per gestire le impostazioni.';
	@override String get noConnections => 'Connetti un server al tuo profilo per adulti prima di aggiungere un profilo per bambini.';
	@override String get created => 'Profilo bambino creato';
	@override String get updated => 'Profilo bambini aggiornato';
	@override String get saveFailed => 'Impossibile salvare il controllo genitori. Per favore riprova.';
	@override String get kidsBadge => 'Bambini';
}

// Path: lurokaDiscovery
class _Translations$lurokaDiscovery$it extends Translations$lurokaDiscovery$en {
	_Translations$lurokaDiscovery$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Scopri';
	@override String get chooseLibraryHint => 'Scegli una libreria da esplorare';
	@override String get chooseCopyHint => 'Disponibile in più librerie. Scegli la tua copia preferita.';
	@override String get weeklyMovies => 'Film di tendenza questa settimana · TMDb';
	@override String get weeklyShows => 'Mostra di tendenza questa settimana · TMDb';
	@override String get weeklyLibrary => 'Tendenze di questa settimana · Nella tua libreria';
	@override String get popularLibrary => 'Popolare ora · Nella tua libreria · Cinemeta';
	@override String get publicFeedError => 'La scoperta di Cinemeta non è disponibile. Per favore riprova.';
	@override String get oscars => 'Oscar · Vincitori del miglior film';
	@override String get imdb100 => 'IMDb I 100 migliori film · Istantanea di settembre 2026';
	@override String get imdbTv100 => 'IMDb I 100 migliori spettacoli · Istantanea di settembre 2026';
	@override String get emmyComedy => 'Emmy · Vincitori della serie comica · 1971–2026';
	@override String get emmys => 'Emmy · Vincitori della serie drammatica · 1966–2026';
	@override String get bafta => 'BAFTA · Vincitori del miglior film';
	@override String get cannes => 'Cannes · Vincitori della Palma d\'Oro';
	@override String get awardsNote => 'Le raccolte di premi includono la storia degli Oscar come miglior film, vincitori di Emmy dramma/commedia e selezioni ampliate di BAFTA/Cannes. I titoli vincenti ripetuti vengono visualizzati una volta. L\'iscrizione utilizza le storie delle categorie di premi e i fatti Wikidata. IMDb I 100 migliori elenchi di film/spettacoli conservano le istantanee delle classifiche di settembre 2026 da mmdju/imdb-top250-api. Vengono visualizzate solo le corrispondenze nelle librerie online visibili; la dimensione della raccolta dipende dalla disponibilità della biblioteca.';
	@override String get attribution => 'Gli elenchi di popolarità pubblica, i metadati e le valutazioni IMDb sono forniti da Cinemeta; i suoi elenchi popolari non sono grafici di visualizzazione settimanali. Questo prodotto utilizza TMDB API ma non è approvato o certificato da TMDB. Le tendenze settimanali opzionali TMDb riflettono l\'interesse di TMDb, non la visualizzazione delle cifre. Le partiture mantengono le etichette di origine.';
	@override String get tmdbSettings => 'Fonti di scoperta';
	@override String get setupDescription => 'La scoperta di Cinemeta funziona immediatamente senza un account: film e programmi popolari, valutazioni IMDb e vincitori di premi. Facoltativamente, collega TMDb per gli andamenti settimanali utilizzando una chiave API o il token di accesso in lettura API da themoviedb.org/settings/api. Le tue credenziali sono archiviate su questo dispositivo.';
	@override String get apiKey => 'TMDb API chiave/token di accesso in lettura';
	@override String get connect => 'Collegare TMDb';
	@override String get connecting => 'Connessione…';
	@override String get connected => 'TMDb connesso · Tendenze settimanali e premi abilitati';
	@override String get builtInKeyNote => 'In esecuzione sulla chiave TMDb condivisa integrata di Luroka. Aggiungi la tua chiave gratuita qui sotto per limiti di velocità dedicati e controllo completo.';
	@override String get disconnect => 'Scollegare TMDb';
	@override String get invalidKey => 'Impossibile convalidare TMDb. Controlla le tue credenziali e la connessione Internet.';
	@override String get feedError => 'Il rilevamento TMDb non è disponibile. Per favore riprova.';
	@override String get allTitles => 'Tutti i titoli';
	@override String get available => 'Nella tua libreria';
	@override String get checking => 'Controllo delle tue librerie…';
	@override String get availabilityUnknown => 'Impossibile controllare alcune librerie. Prova ad aggiornare.';
	@override String get noAvailable => 'Nessun titolo corrispondente trovato nelle biblioteche controllate.';
	@override String get sourceInfo => 'Tendenze settimanali e vincitori selezionati · TMDb';
	@override String get configure => 'Impostazioni di rilevamento';
}

// Path: app
class _Translations$app$it extends Translations$app$en {
	_Translations$app$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Luroka';
}

// Path: appIcon
class _Translations$appIcon$it extends Translations$appIcon$en {
	_Translations$appIcon$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Icona dell\'app';
	@override String get defaultIcon => 'Predefinito';
	@override String get current => 'Icona corrente';
	@override String get locked => 'Vantaggio Sostenitore';
	@override String get lockedHint => 'Le icone alternative sono un vantaggio del Sostenitore.';
	@override String get changeFailed => 'Impossibile modificare l\'icona dell\'app';
	@override String get launcherHint => 'La nuova icona appare sulla schermata iniziale quando esci da Luroka.';
	@override String get tvLauncherHint => 'Il nuovo banner appare quando esci da Luroka. Android TV può continuare a mostrare quello vecchio fino al riavvio della TV.';
	@override late final _Translations$appIcon$names$it names = _Translations$appIcon$names$it._(_root);
}

// Path: auth
class _Translations$auth$it extends Translations$auth$en {
	_Translations$auth$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get signInWithPlex => 'Accedi con Plex';
	@override String get showQRCode => 'Mostra codice QR';
	@override String get authenticate => 'Autenticati';
	@override String get authenticationTimeout => 'Tempo scaduto per l\'autenticazione. Riprova.';
	@override String get scanQRToSignIn => 'Scansiona questo codice QR per accedere';
	@override String get waitingForAuth => 'In attesa di autenticazione...\nAccedi dal browser.';
	@override String get useBrowser => 'Usa il browser';
	@override String get or => 'o';
	@override String connectToMediaBrowser({required Object product}) => 'Connettiti a ${product}';
	@override String get quickConnect => 'Quick Connect';
	@override String get useQuickConnect => 'Usa Quick Connect';
	@override String get quickConnectInstructions => 'Apri Quick Connect in Jellyfin e inserisci questo codice.';
	@override String get quickConnectWaiting => 'In attesa di approvazione…';
	@override String get quickConnectCancel => 'Annulla';
	@override String get quickConnectExpired => 'Quick Connect scaduto. Riprova.';
	@override String get localDataRecoveryRequired => 'Luroka non è riuscito a recuperare in sicurezza i dati locali di accesso e delle riproduzioni in sospeso. Accedi di nuovo.';
	@override String get pinCheckRejected => 'La verifica del PIN Plex è stata rifiutata';
}

// Path: common
class _Translations$common$it extends Translations$common$en {
	_Translations$common$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get cancel => 'Annulla';
	@override String get save => 'Salva';
	@override String get close => 'Chiudi';
	@override String get clear => 'Cancella';
	@override String get reset => 'Ripristina';
	@override String get later => 'Più tardi';
	@override String get submit => 'Invia';
	@override String get confirm => 'Conferma';
	@override String get retry => 'Riprova';
	@override String get logout => 'Esci';
	@override String get unknown => 'Sconosciuto';
	@override String get refresh => 'Aggiorna';
	@override String get yes => 'Sì';
	@override String get no => 'No';
	@override String get delete => 'Elimina';
	@override String get edit => 'Modifica';
	@override String get shuffle => 'Riproduzione casuale';
	@override String get addTo => 'Aggiungi a...';
	@override String get createNew => 'Crea nuovo';
	@override String get connect => 'Connetti';
	@override String get disconnect => 'Disconnetti';
	@override String get play => 'Riproduci';
	@override String get pause => 'Pausa';
	@override String get resume => 'Riprendi';
	@override String get error => 'Errore';
	@override String get search => 'Cerca';
	@override String get home => 'Home';
	@override String get back => 'Indietro';
	@override String get settings => 'Impostazioni';
	@override String get mute => 'Disattiva audio';
	@override String get ok => 'OK';
	@override String get off => 'Disattivato';
	@override String get options => 'Opzioni';
	@override String seasonNumber({required Object number}) => 'Stagione ${number}';
	@override String episodeNumberTitle({required Object number, required Object title}) => 'Episodio ${number} - ${title}';
	@override String chapterNumber({required Object number}) => 'Capitolo ${number}';
	@override String get reconnect => 'Riconnetti';
	@override String get viewAll => 'Mostra tutto';
	@override String get serversUnreachable => 'Server irraggiungibili';
	@override String get loading => 'Caricamento...';
	@override String get fullscreen => 'Schermo intero';
	@override String get exitFullscreen => 'Esci dalla modalità a schermo intero';
	@override late final _Translations$common$ratingSource$it ratingSource = _Translations$common$ratingSource$it._(_root);
	@override String get notAvailable => 'N/D';
	@override String get url => 'URL';
	@override String get letterKeys => 'ABC';
	@override late final _Translations$common$mediaKind$it mediaKind = _Translations$common$mediaKind$it._(_root);
	@override String get stay => 'Rimani';
	@override String get exitApp => 'Esci';
	@override String get exitAppBody => 'Sei sicuro di voler uscire da Luroka?';
}

// Path: tvHints
class _Translations$tvHints$it extends Translations$tvHints$en {
	_Translations$tvHints$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get select => 'Seleziona';
	@override String get browse => 'Sfoglia';
	@override String get back => 'Indietro';
}

// Path: screens
class _Translations$screens$it extends Translations$screens$en {
	_Translations$screens$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get licenses => 'Licenze';
	@override String get switchProfile => 'Cambia profilo';
	@override String get subtitleStyling => 'Stile sottotitoli';
	@override String get mpvConfig => 'mpv.conf';
	@override String get logs => 'Log';
}

// Path: mediaExtras
class _Translations$mediaExtras$it extends Translations$mediaExtras$en {
	_Translations$mediaExtras$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get trailers => 'Rimorchi';
	@override String get featurettes => 'Funzionalità';
	@override String get interviews => 'Interviste';
	@override String get deletedScenes => 'Scene eliminate';
	@override String get behindTheScenes => 'Dietro le quinte';
	@override String get scenesAndClips => 'Scene e clip';
	@override String get other => 'Altri extra';
}

// Path: update
class _Translations$update$it extends Translations$update$en {
	_Translations$update$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get available => 'Aggiornamento disponibile';
	@override String versionAvailable({required Object version}) => 'Versione ${version} disponibile';
	@override String currentVersion({required Object version}) => 'Attuale: ${version}';
	@override String get skipVersion => 'Salta questa versione';
	@override String get viewRelease => 'Visualizza note di rilascio';
	@override String get latestVersion => 'La versione installata è l\'ultima disponibile';
	@override String get checkFailed => 'Impossibile controllare gli aggiornamenti';
}

// Path: supporter
class _Translations$supporter$it extends Translations$supporter$en {
	_Translations$supporter$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Luroka Sostenitore';
	@override String get intro => 'Un acquisto una tantum che supporta lo sviluppo di Luroka e sblocca extra cosmetici:';
	@override String get presetThemes => 'Temi preimpostati';
	@override String get presetThemesDescription => 'Brace, Ghiacciaio, Foresta, Prugna e Carta';
	@override String get customTheme => 'Tema personalizzato';
	@override String get customThemeDescription => 'Scegli tu stesso ogni colore';
	@override String get appIcons => 'Icone dell\'app';
	@override String get appIconsDescription => 'Scegli un\'icona Luroka alternativa';
	@override String buy({required Object price}) => 'Acquista per ${price}';
	@override String get loadingPrice => 'Caricamento prezzo...';
	@override String get restore => 'Ripristina gli acquisti';
	@override String get pending => 'Il tuo acquisto è in attesa di pagamento o approvazione. Gli extra si sbloccano non appena il negozio lo completa.';
	@override String get thankYouTitle => 'Grazie per il supporto Luroka';
	@override String get thankYouBody => 'I tuoi extra Sostenitore sono sbloccati.';
	@override String get tileSubtitle => 'Sblocca temi e icone delle app con un acquisto una tantum';
	@override String get tileSubtitleThemesOnly => 'Sblocca temi con un acquisto una tantum';
	@override String get tileUnlocked => 'Grazie per il vostro supporto';
	@override late final _Translations$supporter$errors$it errors = _Translations$supporter$errors$it._(_root);
}

// Path: settings
class _Translations$settings$it extends Translations$settings$en {
	_Translations$settings$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Impostazioni';
	@override String get supportDeveloper => 'Supporta Luroka';
	@override String get supportDeveloperDescription => 'Dona tramite Liberapay per finanziare lo sviluppo';
	@override String get language => 'Lingua';
	@override String get theme => 'Tema';
	@override String get appearance => 'Aspetto';
	@override String get videoPlayback => 'Riproduzione video';
	@override String get videoPlaybackDescription => 'Configura il comportamento di riproduzione';
	@override String get advanced => 'Avanzate';
	@override String get episodePosterMode => 'Stile poster episodio';
	@override String get seriesPoster => 'Poster della serie';
	@override String get seasonPoster => 'Poster della stagione';
	@override String get episodeThumbnail => 'Miniatura';
	@override String get homeHeroSize => 'Dimensioni del carosello';
	@override String get homeHeroSizeSmall => 'Piccolo';
	@override String get homeHeroSizeMedium => 'Medio';
	@override String get homeHeroSizeLarge => 'Grande';
	@override String get secondsLabel => 'Secondi';
	@override String get minutesLabel => 'Minuti';
	@override String get secondsShort => 's';
	@override String get minutesShort => 'm';
	@override String durationHint({required Object min, required Object max}) => 'Inserisci una durata (${min}-${max})';
	@override String get systemTheme => 'Sistema';
	@override String get lightTheme => 'Chiaro';
	@override String get darkTheme => 'Scuro';
	@override String get oledTheme => 'OLED';
	@override String get libraryDensity => 'Densità della libreria';
	@override String get displayScale => 'Scala di visualizzazione';
	@override String get compact => 'Compatta';
	@override String get comfortable => 'Comoda';
	@override String get gridSpacing => 'Spaziatura della griglia';
	@override String get gridSpacingTight => 'Ristretta';
	@override String get gridSpacingNormal => 'Normale';
	@override String get gridSpacingSpacious => 'Ampia';
	@override String get tvCornerSpotlightBackdrop => 'Sfondo in evidenza nell\'angolo';
	@override String get tvCornerSpotlightBackdropDescription => 'Mostra l\'immagine in evidenza nell\'angolo in alto a destra anziché a schermo intero';
	@override String get viewMode => 'Modalità di visualizzazione';
	@override String get gridView => 'Griglia';
	@override String get listView => 'Elenco';
	@override String get continueWatchingAction => 'Azione per Continua a guardare';
	@override String get continueWatchingPlay => 'Riproduci';
	@override String get continueWatchingDetails => 'Apri dettagli';
	@override String get episodeAction => 'Azione episodio';
	@override String get episodePlay => 'Riproduci';
	@override String get episodeDetails => 'Apri dettagli';
	@override String get useGlobalHubs => 'Usa il layout della Home';
	@override String get useGlobalHubsDescription => 'Mostra sezioni Home unificate. In caso contrario, usa i consigli della libreria.';
	@override String get showServerNameOnHubs => 'Mostra il nome del server nelle sezioni';
	@override String get showServerNameOnHubsDescription => 'Mostra sempre i nomi dei server nei titoli delle sezioni.';
	@override String get groupLibrariesByServer => 'Raggruppa le librerie per server';
	@override String get groupLibrariesByServerDescription => 'Raggruppa le librerie della barra laterale sotto ciascun server multimediale.';
	@override String get alwaysKeepSidebarOpen => 'Mantieni sempre aperta la barra laterale';
	@override String get alwaysKeepSidebarOpenDescription => 'La barra laterale rimane espansa e l\'area del contenuto si adatta';
	@override String get showUnwatchedCount => 'Mostra il numero di episodi non visti';
	@override String get showUnwatchedCountDescription => 'Mostra il numero di episodi non visti per serie e stagioni';
	@override String get showWatchedIndicators => 'Mostra indicatori di visione';
	@override String get showWatchedIndicatorsDescription => 'Mostra un segno di spunta su film, serie TV ed episodi già visti';
	@override String get showEpisodeNumberOnCards => 'Mostra il numero dell\'episodio sulle schede';
	@override String get showEpisodeNumberOnCardsDescription => 'Mostra il numero della stagione e dell\'episodio sulle schede degli episodi';
	@override String get showSeasonPostersOnTabs => 'Mostra i poster delle stagioni nelle schede';
	@override String get showSeasonPostersOnTabsDescription => 'Mostra il poster di ogni stagione sopra la sua scheda';
	@override String get tvFullCardLayout => 'Schede TV a tutta immagine';
	@override String get tvFullCardLayoutDescription => 'Usa schede TV con la sola immagine e i nomi degli attori sovrapposti';
	@override String get focusGlow => 'Bagliore di selezione';
	@override String get focusGlowDescription => 'Mostra un leggero bagliore attorno alla scheda selezionata';
	@override String get visualEffects => 'Effetti visivi';
	@override String get visualEffectsAuto => 'Automatico';
	@override String get visualEffectsAutoDescription => 'Riduci automaticamente gli effetti sui dispositivi a basso consumo';
	@override String get visualEffectsFull => 'Completi';
	@override String get visualEffectsReduced => 'Ridotti';
	@override String get visualEffectsReducedDescription => 'Meno animazioni e immagini a risoluzione inferiore';
	@override String get hideSpoilers => 'Nascondi spoiler per episodi non visti';
	@override String get hideSpoilersDescription => 'Sfoca miniature e descrizioni degli episodi non visti';
	@override String get playerBackend => 'Motore di riproduzione';
	@override String get playerBackendDescription => 'mpv riproduce più formati e abilita più funzionalità: consigliato. ExoPlayer aiuta se la riproduzione fallisce o si interrompe su questo dispositivo.';
	@override String get exoPlayer => 'ExoPlayer';
	@override String get mpv => 'mpv';
	@override String get hardwareDecoding => 'Decodifica hardware';
	@override String get hardwareDecodingDescription => 'Utilizza l\'accelerazione hardware quando disponibile';
	@override String get playbackBuffer => 'Buffer di riproduzione';
	@override String get playbackBufferAuto => 'Auto (consigliato)';
	@override String get playbackBufferLarge => 'Grande';
	@override String get playbackBufferExtraLarge => 'Extra grande';
	@override String get playbackBufferDescription => 'Bufferizza di più contro connessioni instabili. Limitato anche dalla dimensione del buffer.';
	@override String get defaultQualityTitle => 'Qualità predefinita';
	@override String get streamingQualityOriginalHint => 'Riproduce il file esattamente come è stato memorizzato: qualità migliore, utilizza la massima larghezza di banda';
	@override String get cellularQualityTitle => 'Qualità predefinita sulla rete mobile';
	@override String get cellularQualitySameAsDefault => 'Come la qualità predefinita';
	@override String get directPlayCoveredQuality => 'Riproduci i video più piccoli in qualità originale';
	@override String get directPlayCoveredQualityDescription => 'Riproduci direttamente i video già entro il limite di qualità invece di transcodificarli';
	@override String get videoCodecs => 'Codec video';
	@override String get videoCodecsDescription => 'Il server transcodifica i codec non selezionati';
	@override String get videoCodecsAlwaysAccepted => 'Sempre accettato';
	@override String get musicQualityTitle => 'Qualità musicale';
	@override String get subtitleStyling => 'Stile sottotitoli';
	@override String get subtitleStylingDescription => 'Personalizza l\'aspetto dei sottotitoli';
	@override String get smallSkipDuration => 'Salto breve';
	@override String get largeSkipDuration => 'Salto lungo';
	@override String get rewindOnResume => 'Riavvolgimento alla ripresa';
	@override String secondsUnit({required Object seconds}) => '${seconds} secondi';
	@override String get defaultSleepTimer => 'Timer spegnimento predefinito';
	@override String minutesUnit({required Object minutes}) => '${minutes} minuti';
	@override String get rememberTrackSelections => 'Ricorda la selezione delle tracce per ogni serie o film';
	@override String get rememberTrackSelectionsDescription => 'Ricorda le scelte di audio e sottotitoli per ogni titolo';
	@override String get rememberTrackSelectionsBackendRule => 'Plex salva ogni scelta sul server per ogni file; Jellyfin attiva anche l\'opzione Ricorda selezioni dell\'account; Emby non è supportato';
	@override String get followServerTrackSelections => 'Usa le tracce selezionate sul server per ogni episodio';
	@override String get followServerTrackSelectionsDescription => 'Al cambio di episodio applica l\'audio e i sottotitoli selezionati sul server invece di mantenere la scelta corrente';
	@override String get resumeMusicOnLaunch => 'Ricorda la sessione musicale';
	@override String get resumeMusicOnLaunchDescription => 'All\'avvio dell\'app riapri l\'ultimo brano in pausa dal punto in cui era rimasto';
	@override String get showChapterMarkersOnTimeline => 'Mostra i marcatori dei capitoli sulla barra di avanzamento';
	@override String get showChapterMarkersOnTimelineDescription => 'Segmenta la barra di avanzamento ai confini dei capitoli';
	@override String get specialsOrdering => 'Speciali nell\'ordine degli episodi';
	@override String get specialsOrderingDescription => 'Dove vengono riprodotti gli speciali nell\'ordine di visione di una serie';
	@override String get specialsOrderingServer => 'Segui l\'ordine del server';
	@override String get specialsOrderingAirDate => 'Intercalati per data di trasmissione';
	@override String get specialsOrderingLast => 'Dopo le stagioni normali';
	@override String get clickVideoTogglesPlayback => 'Fai clic sul video per alternare riproduzione e pausa';
	@override String get clickVideoTogglesPlaybackDescription => 'Fai clic sul video per riprodurre o mettere in pausa anziché mostrare i controlli.';
	@override String get videoPlayerControls => 'Controlli del lettore video';
	@override String get keyboardShortcuts => 'Scorciatoie da tastiera';
	@override String get keyboardShortcutsDescription => 'Personalizza le scorciatoie da tastiera';
	@override String get videoPlayerNavigation => 'Navigazione del lettore video';
	@override String get videoPlayerNavigationDescription => 'Usa i tasti freccia per navigare nei controlli del lettore video';
	@override String get watchTogetherRelay => 'Relay di Guarda insieme';
	@override String get watchTogetherRelayDescription => 'Relay Party di sorveglianza aperti pubblici a meno che non ne imposti uno tuo';
	@override String get watchTogetherRelayHint => 'https://mio-relay.esempio.it';
	@override String get watchTogetherRelayInvalid => 'Inserisci un URL di base HTTP o HTTPS valido per il relay.';
	@override String get crashReporting => 'Segnalazione degli arresti anomali';
	@override String get crashReportingDescription => 'Invia segnalazioni sugli arresti anomali per contribuire a migliorare l\'app';
	@override String get debugLogging => 'Registrazione di debug';
	@override String get debugLoggingDescription => 'Abilita una registrazione dettagliata per la risoluzione dei problemi';
	@override String get viewLogs => 'Visualizza i log';
	@override String get viewLogsDescription => 'Visualizza i log dell\'applicazione';
	@override String get clearImageCache => 'Svuota cache immagini';
	@override String get clearImageCacheDescription => 'Svuota le immagini e le miniature memorizzate nella cache. Le immagini potrebbero caricarsi più lentamente finché non vengono scaricate di nuovo.';
	@override String get clearImageCacheSuccess => 'Cache immagini svuotata correttamente';
	@override String get resetSettings => 'Ripristina impostazioni';
	@override String get resetSettingsDescription => 'Ripristina le impostazioni predefinite. Questa operazione non può essere annullata.';
	@override String get resetSettingsSuccess => 'Impostazioni ripristinate correttamente';
	@override String get backup => 'Backup';
	@override String get exportSettings => 'Esporta impostazioni';
	@override String get exportSettingsDescription => 'Salva le tue preferenze in un file';
	@override String get exportSettingsSuccess => 'Impostazioni esportate';
	@override String get importSettings => 'Importa impostazioni';
	@override String get importSettingsDescription => 'Ripristina le preferenze da un file';
	@override String get importSettingsConfirm => 'Questa azione sostituirà le impostazioni attuali. Continuare?';
	@override String get importSettingsSuccess => 'Impostazioni importate';
	@override String get importSettingsInvalidFile => 'Questo file non è un\'esportazione Luroka valida';
	@override String get importSettingsNoUser => 'Accedi prima di importare le impostazioni';
	@override String get shortcutsReset => 'Scorciatoie ripristinate alle impostazioni predefinite';
	@override String get resetShortcutsConfirm => 'Ciò sostituirà le scorciatoie personalizzate con quelle predefinite. Continuare?';
	@override String get about => 'Informazioni';
	@override String get aboutDescription => 'Informazioni sull\'app e le licenze';
	@override String get updates => 'Aggiornamenti';
	@override String get updateAvailable => 'Aggiornamento disponibile';
	@override String get checkForUpdates => 'Controlla aggiornamenti';
	@override String get autoCheckUpdatesOnStartup => 'Controlla automaticamente gli aggiornamenti all\'avvio';
	@override String get autoCheckUpdatesOnStartupDescription => 'Avvisa all\'avvio quando è disponibile un aggiornamento';
	@override String get validationErrorEnterNumber => 'Inserisci un numero valido';
	@override String validationErrorDuration({required Object min, required Object max, required Object unit}) => 'La durata deve essere compresa tra ${min} e ${max} ${unit}';
	@override String shortcutAlreadyAssigned({required Object action}) => 'Scorciatoia già assegnata a ${action}';
	@override String shortcutUpdated({required Object action}) => 'Scorciatoia aggiornata per ${action}';
	@override String get saveFailed => 'Impossibile salvare le modifiche. Riprova.';
	@override String get autoPlayAndSkip => 'Riproduzione automatica e salti';
	@override String get autoPlayNextEpisode => 'Riproduci automaticamente l\'episodio successivo';
	@override String get autoPlayNextEpisodeDescription => 'Avvia automaticamente l\'episodio successivo quando termina quello in riproduzione';
	@override String get shuffleStartsFromBeginning => 'La riproduzione casuale inizia dall\'inizio';
	@override String get shuffleStartsFromBeginningDescription => 'Avvia ogni episodio dall\'inizio durante la riproduzione casuale invece di riprenderlo';
	@override String get playNextCountdown => 'Conto alla rovescia del successivo';
	@override String get playNextCountdownImmediate => 'Riproduci subito';
	@override String get skipIntroMode => 'Salta intro';
	@override String get skipIntroModeOffDescription => 'Riproduci le intro normalmente senza pulsante di salto';
	@override String get skipIntroModeButtonDescription => 'Mostra un pulsante di salto quando inizia un\'intro';
	@override String get skipIntroModeAutoDescription => 'Salta automaticamente le intro dopo il ritardo indicato sotto';
	@override String get skipCreditsMode => 'Salta titoli di coda';
	@override String get skipCreditsModeOffDescription => 'Riproduci i titoli di coda normalmente senza pulsante di salto';
	@override String get skipCreditsModeButtonDescription => 'Mostra un pulsante di salto quando iniziano i titoli di coda';
	@override String get skipCreditsModeAutoDescription => 'Salta automaticamente i titoli di coda e riproduci l\'episodio successivo';
	@override String get skipMarkerModeOff => 'Disattivato';
	@override String get skipMarkerModeButton => 'Mostra pulsante';
	@override String get skipMarkerModeAuto => 'Automatico';
	@override String get forceSkipMarkerFallback => 'Forza i marcatori di ripiego';
	@override String get forceSkipMarkerFallbackDescription => 'Usa i modelli dei titoli dei capitoli anche quando Plex dispone di marcatori';
	@override String get autoSkipDelay => 'Ritardo del salto automatico';
	@override String autoSkipDelayDescription({required Object seconds}) => 'Attendi ${seconds} secondi prima del salto automatico';
	@override String get introPattern => 'Modello del marcatore della sigla iniziale';
	@override String get introPatternDescription => 'Espressione regolare per individuare i marcatori della sigla iniziale nei titoli dei capitoli';
	@override String get creditsPattern => 'Modello del marcatore dei titoli di coda';
	@override String get creditsPatternDescription => 'Espressione regolare per individuare i marcatori dei titoli di coda nei titoli dei capitoli';
	@override String get invalidRegex => 'Espressione regolare non valida';
	@override String get regex => 'Espressione regolare';
	@override String get downloads => 'Download';
	@override String get downloadLocationDescription => 'Scegli dove archiviare i contenuti scaricati';
	@override String get downloadLocationDefault => 'Predefinita (archivio dell\'app)';
	@override String get downloadLocationCustom => 'Posizione personalizzata';
	@override String get selectFolder => 'Seleziona cartella';
	@override String get resetToDefault => 'Ripristina posizione predefinita';
	@override String currentPath({required Object path}) => 'Attuale: ${path}';
	@override String get downloadLocationChanged => 'Posizione di download modificata';
	@override String get downloadLocationReset => 'Posizione di download ripristinata a predefinita';
	@override String get downloadLocationInvalid => 'La cartella selezionata non è scrivibile';
	@override String get downloadLocationPickerUnavailable => 'La selezione della cartella non è disponibile su questo dispositivo';
	@override String get downloadOnWifiOnly => 'Scarica solo tramite Wi-Fi';
	@override String get downloadOnWifiOnlyDescription => 'Impedisci i download quando si utilizza la rete dati cellulare';
	@override String get autoRemoveWatchedDownloads => 'Rimuovi automaticamente i download visti';
	@override String get autoRemoveWatchedDownloadsDescription => 'Elimina automaticamente i download già visti';
	@override String get cellularDownloadBlocked => 'I download sono bloccati sulla rete mobile. Usa il Wi-Fi o modifica l\'impostazione.';
	@override String get maxVolume => 'Volume massimo consentito';
	@override String get maxVolumeDescription => 'Consenti di aumentare il volume oltre il 100% per i contenuti con audio basso';
	@override String maxVolumePercent({required Object percent}) => '${percent}%';
	@override String get discordRichPresence => 'Attività avanzata su Discord';
	@override String get discordRichPresenceDescription => 'Mostra su Discord cosa stai guardando';
	@override String get services => 'Servizi';
	@override String get servicesDescription => 'Connetti Trakt, MyAnimeList, Seerr e altro';
	@override String get manageLibrariesDescription => 'Riordina e nascondi le librerie';
	@override String get companionRemoteServer => 'Server del telecomando';
	@override String get companionRemoteServerDescription => 'Consenti ai dispositivi mobili della tua rete di controllare questa app';
	@override String get companionRemoteServerStartFailed => 'Impossibile avviare il server del telecomando';
	@override String get companionRemoteServerStopFailed => 'Impossibile arrestare il server del telecomando';
	@override String get autoPip => 'Picture-in-Picture automatica';
	@override String get autoPipDescription => 'Attiva automaticamente la modalità Picture-in-Picture quando esci dall\'app durante la riproduzione';
	@override String get matchContentFrameRate => 'Adatta la frequenza dei fotogrammi';
	@override String get matchContentFrameRateDescription => 'Adatta la frequenza di aggiornamento dello schermo al contenuto video';
	@override String get matchContentResolution => 'Adatta alla risoluzione del contenuto';
	@override String get matchContentResolutionDescription => 'Passa lo schermo alla risoluzione nativa del video, così è la TV a occuparsi dell\'upscaling. Durante la riproduzione vengono ridimensionati anche menu e sottotitoli';
	@override String get matchRefreshRate => 'Adatta la frequenza di aggiornamento';
	@override String get matchRefreshRateDescription => 'Adatta la frequenza di aggiornamento dello schermo in modalità a schermo intero';
	@override String get matchDynamicRange => 'Adatta la gamma dinamica';
	@override String get matchDynamicRangeDescription => 'Attiva l\'HDR per i contenuti HDR, quindi torna all\'SDR';
	@override String get displaySwitchDelay => 'Ritardo del cambio di modalità dello schermo';
	@override String get tunneledPlayback => 'Riproduzione con tunneling';
	@override String get tunneledPlaybackDescription => 'Usa il tunneling video. Disattivalo se durante la riproduzione HDR lo schermo rimane nero o il movimento scatta.';
	@override String get audioPassthrough => 'Passthrough audio';
	@override String get audioPassthroughDescription => 'Invia l\'audio Dolby/DTS al ricevitore o al televisore senza ricodificarlo, preservando l\'audio surround. Disattiva questa opzione se non senti alcun suono.';
	@override String get audioPassthroughDescriptionApple => 'Usa il decoder Dolby nativo di Apple per Dolby Digital Plus, incluso Atmos. DTS e TrueHD vengono comunque riprodotti come PCM multicanale. Disattiva questa opzione se non senti alcun suono.';
	@override String get audioPassthroughDescriptionAppleSpatial => 'Utilizza il decoder Dolby nativo di Apple per Dolby Digital Plus, incluso Atmos. Su iOS, iPadOS e tvOS 26 o versioni successive, TrueHD Atmos e DTS:X vengono riprodotti come audio spaziale. Gli altri brani DTS e TrueHD vengono riprodotti come PCM multicanale. Spegni se non senti alcun suono.';
	@override String get audioPassthroughOverriddenByNormalization => 'Disattivato mentre la normalizzazione del volume è attiva';
	@override String get audioChannelLimit => 'Canali audio';
	@override String get audioChannelLimitDescription => 'Mixa l\'audio decodificato per altoparlanti, cuffie o configurazioni HDMI che non possono riprodurre tutti i canali';
	@override String get audioChannelLimitOriginal => 'Originale';
	@override String get audioChannelLimitOriginalDescription => 'Riproduci tutti i canali della traccia';
	@override String get audioChannelLimitSurround51 => 'Fino a 5.1';
	@override String get audioChannelLimitSurround51Description => 'Mescola 7.1 fino a 5.1 per TV e ricevitori che accettano solo 5.1 PCM. Il passthrough non è influenzato.';
	@override String get audioChannelLimitStereo => 'Stereo';
	@override String get audioChannelLimitStereoDescription => 'Mixa fino a due canali per altoparlanti stereo o cuffie. Disattiva il passthrough.';
	@override String get downmixCenterBoost => 'Amplificazione canale centrale';
	@override String downmixCenterBoostValue({required Object db}) => '${db} dB';
	@override String get downmixCenterBoostLabel => 'Amplificazione (dB)';
	@override String get downmixCenterBoostShort => 'dB';
	@override String get audioDownmixNormalize => 'Normalizza il volume durante il downmix';
	@override String get audioDownmixNormalizeDescription => 'Riduce il volume del mix per evitare il clipping. Disattiva questa opzione per mantenere il volume originale (le scene più rumorose potrebbero risultare distorte).';
	@override String get dvConversionMode => 'Conversione Dolby Vision';
	@override String get dvConversionModeDescription => 'Scegli come gestire i file Dolby Vision con profilo 7.';
	@override String get dvConversionAuto => 'Auto';
	@override String get dvConversionNative => 'Nativa / disattivata';
	@override String get dvConversionDv81 => 'P7 → P8.1';
	@override String get dvConversionHevcStrip => 'P7 → HEVC';
	@override String get dvConversionAutoDescription => 'Rileva le capacità del dispositivo e usa il normale meccanismo di ripiego';
	@override String get dvConversionNativeDescription => 'Forza il DV7 nativo e impedisce nuovi tentativi di conversione DV';
	@override String get dvConversionDv81Description => 'Forza la conversione RPU diretta al profilo Dolby Vision 8.1';
	@override String get dvConversionHevcStripDescription => 'Rimuove i livelli RPU/EL di Dolby Vision e riproduce il video come semplice HEVC';
	@override String get disableDolbyVision => 'Disattiva Dolby Vision';
	@override String get disableDolbyVisionDescription => 'Riproduci il livello HDR10 o HLG del file al posto di Dolby Vision, se presente';
	@override String get hdrSdrConversion => 'Conversione da HDR a SDR';
	@override String get hdrSdrConversionDescription => 'Scegli cosa converte i video HDR quando lo schermo non può mostrare l\'HDR.';
	@override String get hdrSdrConversionAuto => 'Auto';
	@override String get hdrSdrConversionAutoDescription => 'Dispositivo da Android 9 in poi, lettore nelle versioni precedenti';
	@override String get hdrSdrConversionDevice => 'Dispositivo';
	@override String get hdrSdrConversionDeviceDescription => 'La conversione è affidata all\'hardware video del dispositivo. La più veloce, ma i colori dipendono dal dispositivo';
	@override String get hdrSdrConversionPlayer => 'Lettore';
	@override String get hdrSdrConversionPlayerDescription => 'La conversione avviene nel lettore. Colori uniformi, ma il 4K può scattare sui TV box di fascia bassa';
	@override String get deinterlace => 'Deinterlacciamento';
	@override String get deinterlaceDescription => 'Rimuove gli artefatti a pettine dai video interlacciati (solo lettore mpv)';
	@override String get deinterlaceOff => 'Spento';
	@override String get deinterlaceOffDescription => 'Mostra il video interlacciato così come viene decodificato';
	@override String get deinterlaceVideo => 'Video';
	@override String get deinterlaceVideoDescription => 'Trasforma ogni campo in un fotogramma completo. Per video girati per la TV, come sport, notizie e concerti';
	@override String get deinterlaceFilm => 'Pellicola';
	@override String get deinterlaceFilmDescription => 'Ripristina i fotogrammi originali di film e animazioni telecinemati a 29,97 fps, comune sui DVD NTSC. Video girato per balbettii televisivi. La TV in diretta utilizza il video';
	@override String get requireProfileSelectionOnOpen => 'Chiedi di scegliere il profilo all\'apertura';
	@override String get requireProfileSelectionOnOpenDescription => 'Mostra la selezione del profilo ogni volta che l\'app viene aperta';
	@override String get forceTvMode => 'Forza modalità TV';
	@override String get forceTvModeKeepTitle => 'Mantenere il layout TV?';
	@override String forceTvModeKeepBody({required Object seconds}) => 'Il layout TV è progettato per i telecomandi. Ritorno al layout normale in ${seconds} s.';
	@override String get forceTvModeKeepConfirm => 'Mantieni il layout della TV';
	@override String get forceTvModeReverted => 'Il layout della TV è stato ripristinato';
	@override String get forceTvModeDescription => 'Forza il layout TV sui dispositivi che non vengono rilevati automaticamente. Richiede il riavvio.';
	@override String get startInFullscreen => 'Avvia a schermo intero';
	@override String get startInFullscreenDescription => 'Apri Luroka a schermo intero all\'avvio';
	@override String get exitFullscreenOnPlayerClose => 'Esci dalla modalità a schermo intero alla chiusura del lettore';
	@override String get exitFullscreenOnPlayerCloseDescription => 'Esce automaticamente dalla modalità a schermo intero quando chiudi il lettore video';
	@override String get autoHidePerformanceOverlay => 'Nascondi automaticamente il riquadro delle prestazioni';
	@override String get autoHidePerformanceOverlayDescription => 'Dissolvi il riquadro delle prestazioni insieme ai controlli di riproduzione';
	@override String get showNavBarLabels => 'Mostra le etichette della barra di navigazione';
	@override String get showNavBarLabelsDescription => 'Mostra le etichette di testo sotto le icone della barra di navigazione';
	@override String get startupSection => 'Sezione di avvio';
	@override String get showExploreTab => 'Mostra la scheda Esplora';
	@override String get showExploreTabDescription => 'Visualizza la scheda Esplora con contenuti di Esplora di Plex e dei tracker collegati';
	@override String get liveTvDefaultFavorites => 'Apri sui canali preferiti';
	@override String get liveTvDefaultFavoritesDescription => 'Mostra solo i canali preferiti quando apri la TV in diretta';
	@override String get general => 'Generali';
	@override String get generalDescription => 'Lingua, avvio e comportamento della finestra';
	@override String get languageAndRegion => 'Lingua e regione';
	@override String get startup => 'Avvio';
	@override String get display => 'Schermo';
	@override String get libraryAndCards => 'Libreria e schede';
	@override String get homeScreen => 'Schermata iniziale';
	@override String get navigation => 'Navigazione';
	@override String get window => 'Finestra';
	@override String get liveTv => 'TV in diretta';
	@override String get player => 'Lettore';
	@override String get videoAndDisplay => 'Video e schermo';
	@override String get audio => 'Audio';
	@override String get quality => 'Qualità';
	@override String get subtitles => 'Sottotitoli';
	@override String get seekAndTiming => 'Avanzamento e tempi';
	@override String get behavior => 'Comportamento';
	@override String get gestures => 'Gesti';
	@override String get gestureBrightnessSwipe => 'Scorrimento per la luminosità';
	@override String get gestureBrightnessSwipeDescription => 'Scorri verso l\'alto o il basso sul bordo sinistro per regolare la luminosità';
	@override String get gestureVolumeSwipe => 'Scorrimento per il volume';
	@override String get gestureVolumeSwipeDescription => 'Scorri verso l\'alto o il basso sul bordo destro per regolare il volume';
	@override String get gesturePinchToZoom => 'Pizzica per lo zoom';
	@override String get gesturePinchToZoomDescription => 'Pizzica il video per ingrandire o ridurre';
	@override String get rememberBrightnessLevel => 'Ricorda il livello di luminosità';
	@override String get rememberBrightnessLevelDescription => 'Avvia la riproduzione con la luminosità impostata dall\'ultimo scorrimento';
	@override String get controls => 'Controlli';
	@override String get rememberPlayerChanges => 'Ricorda le modifiche del lettore';
	@override String get rememberPlayerChangesDescription => 'Dove viene salvata e riapplicata una modifica effettuata durante la riproduzione';
	@override String get scopePlaybackSpeed => 'Velocità di riproduzione';
	@override String get scopeShaderPreset => 'Preimpostazione shader';
	@override String get scopeAspectRatio => 'Proporzioni';
	@override String get scopeSyncOffsets => 'Sincronizzazione audio e sottotitoli';
	@override String get playerScopeOff => 'Non salvare';
	@override String get playerScopeGlobal => 'Ovunque';
	@override String get playerScopeLibrary => 'Per libreria';
	@override String get playerScopeTitle => 'Per serie o film';
	@override String get exportDialogTitle => 'Esporta le impostazioni di Luroka';
	@override String get velvetHourTheme => 'L\'ora del velluto';
}

// Path: themeEditor
class _Translations$themeEditor$it extends Translations$themeEditor$en {
	_Translations$themeEditor$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get builtIn => 'Integrato';
	@override String get presets => 'Preimpostazioni';
	@override String get custom => 'Personalizzato';
	@override String get customEmpty => 'Non ancora creato';
	@override String get editCustom => 'Modifica tema personalizzato';
	@override String get editCustomDescription => 'Scegli tu stesso ogni colore';
	@override String get locked => 'Sblocca con il Sostenitore';
	@override String get savedLocked => 'Salvato: si sblocca con il Sostenitore';
	@override String get title => 'Tema personalizzato';
	@override String get startFrom => 'Inizia da';
	@override String get startFromDescription => 'Copia tutti i colori da un altro tema';
	@override String get colors => 'Colori';
	@override String get preview => 'Anteprima';
	@override late final _Translations$themeEditor$slots$it slots = _Translations$themeEditor$slots$it._(_root);
	@override String get opacity => 'Opacità';
	@override String get hexHint => '#RRGGBB o #AARRGGBB';
	@override String get fromOtherThemes => 'Da altri temi';
	@override String swatchLabel({required Object theme, required Object color}) => '${theme} ${color}';
	@override late final _Translations$themeEditor$contrast$it contrast = _Translations$themeEditor$contrast$it._(_root);
	@override String lowContrast({required Object pair, required Object ratio, required Object minimum}) => '${pair}: ${ratio}:1, al di sotto del ${minimum}:1 consigliato';
	@override String get discardTitle => 'Eliminare le modifiche?';
	@override String get discardMessage => 'Le modifiche ai colori non salvate andranno perse.';
	@override String get discard => 'Scartare';
	@override String previewCardTitle({required Object number}) => 'Episodio ${number}';
	@override String previewCardSubtitle({required Object minutes}) => '${minutes} min rimanente';
	@override String get previewSwitch => 'Riproduzione automatica';
	@override String get previewMutedText => 'Il testo secondario si legge così';
}

// Path: seriesBrowser
class _Translations$seriesBrowser$it extends Translations$seriesBrowser$en {
	_Translations$seriesBrowser$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get oneEpisode => '1 episodio';
	@override String watchedCount({required Object count}) => '${count} guardato';
	@override String episodeCount({required Object count}) => 'Episodi ${count}';
	@override String episodesFor({required Object season}) => '${season} · Episodi';
	@override String get enterHint => 'Seleziona: stagione aperta · ↓: episodi';
}

// Path: titlePage
class _Translations$titlePage$it extends Translations$titlePage$en {
	_Translations$titlePage$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get genre => 'Genere';
	@override String remaining({required Object time}) => '${time} rimanenti';
	@override String continueEpisode({required Object season, required Object episode}) => 'Continua S${season} E${episode}';
	@override String get watchlist => 'Lista di controllo';
	@override String get more => 'Di più';
}

// Path: tvMenus
class _Translations$tvMenus$it extends Translations$tvMenus$en {
	_Translations$tvMenus$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get appearanceDescription => 'Tema, margini dello schermo e poster';
}

// Path: lurokaPlayer
class _Translations$lurokaPlayer$it extends Translations$lurokaPlayer$en {
	_Translations$lurokaPlayer$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Impostazioni del giocatore';
	@override String get watch => 'Guarda';
	@override String get watchDescription => 'Stabilisci il ritmo, rilassati e decidi cosa fare dopo.';
	@override String get picture => 'Impostazioni dell\'immagine';
	@override String get pictureDescription => 'Zoom, HDR ed elaborazione video';
	@override String get sound => 'Audio e sottotitoli';
	@override String get audioSettings => 'Impostazioni audio';
	@override String get soundDescription => 'Temporizzazione, volume e uscita audio';
	@override String get chooseTracks => 'Scegli le lingue e le tracce dei sottotitoli';
	@override String get tools => 'Avanzato';
	@override String get toolsDescription => 'Informazioni sulla riproduzione e diagnostica';
	@override String get preferences => 'Preferenze di riproduzione';
	@override String get preferencesDescription => 'Il tuo cinema, i tuoi default. Inizia con audio e sottotitoli, quindi ottimizza lo streaming e lo schermo.';
	@override String get streamPreferences => 'Qualità dello streaming';
	@override String get displayPreferences => 'Visualizzazione';
	@override String get enginePreferences => 'Opzioni avanzate del giocatore';
	@override String get seekPreferences => 'Cerco';
	@override String get watchPreferences => 'Riproduzione automatica e salto';
	@override String get rememberPreferences => 'Ricorda le preferenze';
}

// Path: lurokaSettings
class _Translations$lurokaSettings$it extends Translations$lurokaSettings$en {
	_Translations$lurokaSettings$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get quickSetup => 'Configurazione rapida';
	@override String get quickSetupDescription => 'Inizia con l\'essenziale: navigazione TV più fluida, schermo comodo da adattare, layout Home e preferenze di riproduzione.';
	@override String get experience => 'La tua esperienza';
	@override String get experienceDescription => 'Fai in modo che Luroka si senta a proprio agio: aspetto, lingue, riproduzione, librerie e tempo di visualizzazione.';
	@override String get remoteHint => '↑ ↓ Sfoglia le categorie · → / Seleziona Apri opzioni · ← Torna alle categorie';
}

// Path: playerChrome
class _Translations$playerChrome$it extends Translations$playerChrome$en {
	_Translations$playerChrome$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get browse => 'Capitoli e coda';
	@override String get backToPlayback => 'Torna alla riproduzione';
	@override String get nowPlaying => 'ORA GIOCANDO';
	@override String get options => 'OPZIONI DEL GIOCATORE';
}

// Path: tvLayout
class _Translations$tvLayout$it extends Translations$tvLayout$en {
	_Translations$tvLayout$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get screenMargins => 'Margini dello schermo televisivo';
	@override String get screenMarginsDescription => 'Riduci i bordi dell\'app se la TV taglia parte dell\'immagine';
	@override String get screenMarginsDefault => '0% (predefinito)';
}

// Path: studios
class _Translations$studios$it extends Translations$studios$en {
	_Translations$studios$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get checkingCopies => 'Controllo di altre librerie... Scegli una copia conosciuta in qualsiasi momento.';
	@override String get incompleteCopies => 'Impossibile controllare alcune librerie. Scegli una copia conosciuta oppure annulla e riprova.';
	@override String get partialFavorites => 'Impossibile caricare alcuni preferiti. Seleziona Aggiorna per riprovare.';
	@override String get copyLookupFailedTitle => 'Impossibile controllare tutte le copie';
	@override String get copyLookupFailedMessage => 'Alcune biblioteche non hanno risposto. Puoi aprire una delle copie già trovate oppure annullare e riprovare.';
	@override String get openKnownCopies => 'Mostra copie conosciute';
	@override String get browseAll => 'Sfoglia tutto';
	@override String titleCount({required Object count}) => 'Titoli ${count}';
	@override String get topRated => 'I più votati';
	@override String get mostWatched => 'I più visti nella tua raccolta';
	@override String get collection => 'COLLEZIONE STUDIO';
	@override String loadedTitles({required Object count}) => '${count} titoli caricati';
	@override String get sort => 'Ordina i titoli';
	@override String get sortTitleAscending => 'Titolo dalla A alla Z';
	@override String get sortTitleDescending => 'Titolo Z-A';
	@override String get sortNewest => 'Versione più recente';
	@override String get sortOldest => 'Versione più vecchia';
	@override String get sortAdded => 'Aggiunto di recente';
	@override String get sortEpisodeAdded => 'Episodio aggiunto di recente';
	@override String get sortRating => 'Voto più alto';
	@override String get title => 'Sfoglia per Studio';
	@override String get all => 'Tutto';
	@override String get movies => 'Film';
	@override String get shows => 'Spettacoli televisivi';
	@override String get loadMore => 'Carica più titoli';
	@override String get empty => 'Nessun titolo corrispondente nelle tue librerie attualmente visibili.';
	@override String get retry => 'Impossibile caricare altri titoli: seleziona per riprovare';
	@override String get description => 'Esplora film e programmi di questo studio nelle tue raccolte.';
}

// Path: dashboard
class _Translations$dashboard$it extends Translations$dashboard$en {
	_Translations$dashboard$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get previousFeature => 'Titolo in primo piano precedente';
	@override String get nextFeature => 'Titolo in primo piano successivo';
	@override String get cinemaHome => 'CASA';
	@override String get episodeFallback => 'Episodio televisivo';
	@override String timeLeft({required Object minutes}) => 'Ancora ${minutes} min';
	@override String timeLeftHours({required Object hours, required Object minutes}) => 'Ancora ${hours} h e ${minutes} min';
	@override String get spoilerHidden => 'Dettagli dell\'episodio nascosti dalla tua preferenza spoiler.';
	@override String get synopsisUnavailable => 'Apri Dettagli per vedere di più su questo titolo.';
	@override String get yourSpace => 'IL TUO SPAZIO';
	@override String get title => 'Il tuo cinema.';
	@override String get subtitle => 'Riprendi una storia o trova la prossima.';
	@override String get featured => 'SCELTO DA LUROKA';
	@override String get jumpBackIn => 'Continua a guardare';
	@override String episodeLabel({required Object season, required Object episode}) => 'S${season} · E${episode}';
	@override String get anotherPick => 'Un\'altra scelta';
	@override String get exploreSeries => 'Esplora le serie';
	@override String get showFeatured => 'Dettagli del titolo mirati';
	@override String get showFeaturedDescription => 'Mostra illustrazione, sinossi e informazioni sull\'episodio per la scheda evidenziata';
}

// Path: lurokaCatalog
class _Translations$lurokaCatalog$it extends Translations$lurokaCatalog$en {
	_Translations$lurokaCatalog$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get aboutPerson => 'SOTTO I RIFLETTORI';
	@override String get biographyUnavailable => 'Una biografia non è disponibile da questo server.';
	@override String get filmography => 'Film e programmi nelle tue raccolte';
	@override String get recommended => 'Consigliati';
	@override String get browse => 'Tutti i titoli';
	@override String get collections => 'Collezioni';
	@override String get browseHint => 'Esplora il tuo catalogo. Dai forma alla selezione con filtri e ordinamento.';
	@override String get recommendedHint => 'Trova la tua prossima storia';
	@override String get details => 'Dietro la storia';
}

// Path: referenceDetails
class _Translations$referenceDetails$it extends Translations$referenceDetails$en {
	_Translations$referenceDetails$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get oneEpisodeLeft => '1 episodio rimasto';
	@override String get playAll => 'Gioca tutto';
	@override String get present => 'Presente';
	@override String get continuing => 'Continuando';
	@override String get upNext => 'Il prossimo';
	@override String episodesLeft({required Object count}) => 'Episodi ${count} rimasti';
}

// Path: lurokaThemes
class _Translations$lurokaThemes$it extends Translations$lurokaThemes$en {
	_Translations$lurokaThemes$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Luroka tavolozze cinematografiche';
	@override String get coral => 'Corallo · Blu notte e tramonto';
	@override String get ocean => 'Oceano · blu profondo e ghiaccio';
	@override String get jade => 'Giada · sempreverde e menta';
	@override String get amethyst => 'Ametista · viola di mezzanotte';
	@override String get darkThemes => 'Temi del cinema oscuro';
	@override String get lightThemes => 'Temi del cinema leggero';
	@override String get moreThemes => 'Più temi';
	@override String get moreThemesDescription => 'Sfoglia tavolozze aggiuntive e colori personalizzati';
	@override String get obsidian => 'Ossidiana · nero puro e champagne';
	@override String get nocturne => 'Notturno · carbone e champagne';
	@override String get burgundy => 'Borgogna · Vino di velluto e rosa';
	@override String get slate => 'Ardesia · grafite e pervinca';
	@override String get espresso => 'Espresso · cacao e caramello';
	@override String get pearl => 'Perla · porcellana e zaffiro';
	@override String get linen => 'Lino · caldo avorio e terracotta';
	@override String get sunrise => 'Alba · pesca e corallo';
	@override String get coastal => 'Costiero · Nebbia e verde acqua dell\'oceano';
	@override String get latte => 'Latte · panna e caramello';
	@override String get sage => 'Salvia · verde tenue ed eucalipto';
	@override String get lavender => 'Lavanda · lilla e viola intenso';
}

// Path: customPerformance
class _Translations$customPerformance$it extends Translations$customPerformance$en {
	_Translations$customPerformance$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Prestazioni ed effetti';
	@override String get fireStickMode => 'Modalità dispositivo a basso consumo';
	@override String get description => 'Utilizza effetti ridotti, sfondi statici, grafica limitata a 720p e una cache di immagini da 40 MiB. Mentre è abilitato, sovrascrive gli effetti visivi; disattivandolo si ripristina la preferenza degli effetti visivi.';
	@override String get detailsTitle => 'Dettagli sulle prestazioni';
	@override String get details => 'Effetti attivi, limite della cache delle immagini e misurazioni delle prestazioni di navigazione';
	@override String get effectsTier => 'Livello degli effetti attivi';
	@override String get imageCache => 'Limite della cache delle immagini';
	@override String get measurement => 'Misurazione della navigazione';
	@override String get measureInstructions => 'Avvia un campione di 20 secondi, torna alla Home e naviga utilizzando il telecomando. Torna qui per vedere i risultati. Ripeti le stesse azioni con la modalità attivata e disattivata per confrontare. Questo misura il lavoro dell\'interfaccia utente di Flutter, non le prestazioni del decodificatore video.';
	@override String get startSample => 'Avvia un campione di 20 secondi';
	@override String get stopSample => 'Finisci il campione adesso';
	@override String get sampling => 'Campionamento: torna alla Home e naviga. I risultati verranno conservati qui.';
	@override String get frames => 'Fotogrammi campionati';
	@override String get slowFrames => 'Cornici fuori budget';
	@override String get buildP95 => 'Tempo di creazione dell\'interfaccia utente (95° percentile)';
	@override String get rasterP95 => 'Tempo raster (95° percentile)';
	@override String get frameBudget => 'Budget per fotogramma';
	@override String get processMemory => 'Memoria del processo dell\'app alla fine del campione';
	@override String get noFrames => 'Nessun fotogramma renderizzato è stato catturato. Avvia un altro campione e sfoglia l\'app.';
}

// Path: homeLayout
class _Translations$homeLayout$it extends Translations$homeLayout$en {
	_Translations$homeLayout$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Personalizza la casa';
	@override String get description => 'Scegli l\'ordine delle righe e la visibilità per questo profilo. Seleziona una riga per spostarla o nasconderla.';
	@override String get rows => 'Righe domestiche';
	@override String get visible => 'Visibile';
	@override String get hidden => 'Nascosto';
	@override String get showRow => 'Mostra riga';
	@override String get hideRow => 'Nascondi riga';
	@override String get moveUp => 'Vai su';
	@override String get moveDown => 'Spostati giù';
	@override String get pinnedCollections => 'Collezioni appuntate';
	@override String get pinInstructions => 'Apri il menu di una raccolta e scegli Pin su Home. Seleziona una raccolta bloccata qui per rimuoverne il collegamento.';
	@override String get pinCollection => 'Pin a Casa';
	@override String get unpinCollection => 'Sblocca da casa';
	@override String get reset => 'Ripristina le righe predefinite';
	@override String get resetDescription => 'Ripristinare l\'ordine delle righe originale e mostrare tutte le righe per questo profilo? Le tue raccolte appuntate verranno conservate.';
	@override String get saveFailed => 'Impossibile salvare il layout della tua casa. Per favore riprova.';
	@override String get emptyHint => 'Le righe potrebbero essere nascoste. Apri Personalizza casa per mostrarli di nuovo.';
}

// Path: screenTime
class _Translations$screenTime$it extends Translations$screenTime$en {
	_Translations$screenTime$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tempo sullo schermo';
	@override String get description => 'Visualizza il tempo trascorso a guardare video su questo profilo';
	@override String get today => 'Oggi';
	@override String get thisWeek => 'Questa settimana';
	@override String get thisMonth => 'Questo mese';
	@override String get lessThanMinute => '< 1 minuto';
	@override String minutes({required Object count}) => '${count} min';
	@override String hours({required Object count}) => '${count} ore';
	@override String hoursMinutes({required Object hours, required Object minutes}) => '${hours} ora ${minutes} min';
}

// Path: activityStats
class _Translations$activityStats$it extends Translations$activityStats$en {
	_Translations$activityStats$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Visualizzazione delle statistiche';
	@override String get period => 'Periodo';
	@override String get last7Days => '7 giorni';
	@override String get last30Days => '30 giorni';
	@override String get last90Days => '90 giorni';
	@override String get thisYear => 'Anno';
	@override String get allTime => 'Tutto';
	@override String get heroAllTime => 'Tutto il tempo';
	@override String get heroDailyAverage => 'Media giornaliera';
	@override String get consistency => 'Coerenza';
	@override String get currentStreak => 'Serie attuale';
	@override String dayCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n,
		one: '${n} giorno',
		other: '${n} giorni',
	);
	@override String get longestStreak => 'Serie più lunga';
	@override String get bestDay => 'Il giorno migliore';
	@override String get bestWeek => 'La settimana migliore';
	@override String get trendTitle => 'Guarda il tempo';
	@override String get trendToday => 'Oggi';
	@override String gapDetail({required Object stat, required Object range}) => '${stat} su ${range}';
	@override String get weekdayTitle => 'Entro i giorni feriali';
	@override String get hoursTitle => 'Per ora del giorno';
	@override String get amLabel => 'AM';
	@override String get pmLabel => 'PM';
	@override String get kindsTitle => 'Per categoria';
	@override String get kindMovie => 'Film';
	@override String get kindTv => 'televisione';
	@override String get kindLiveTv => 'TV in diretta';
	@override String get kindMusic => 'Musica';
	@override String get kindOther => 'Altro';
	@override String get topTitlesTitle => 'I più visti';
	@override String get sessionsTitle => 'Sessioni recenti';
	@override String get showMore => 'Mostra di più';
	@override String get sessionNoTitle => 'Riproduzione non identificata';
	@override String get emptyTitle => 'Niente qui ancora';
	@override String get emptyBody => 'Guarda qualcosa e le tue statistiche si accumuleranno qui.';
	@override String get noDataInPeriod => 'Nessuna riproduzione registrata in questo periodo.';
}

// Path: search
class _Translations$search$it extends Translations$search$en {
	_Translations$search$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get hint => 'Cerca film, serie TV e musica...';
	@override String get tryDifferentTerm => 'Prova altri termini di ricerca';
	@override String get searchYourMedia => 'Cerca nei tuoi media';
	@override String get enterTitleActorOrKeyword => 'Inserisci un titolo, attore o parola chiave';
	@override String get people => 'Persone';
	@override String get recentSearches => 'Ricerche recenti';
	@override String get clearHistory => 'Cancella cronologia';
}

// Path: hotkeys
class _Translations$hotkeys$it extends Translations$hotkeys$en {
	_Translations$hotkeys$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String setShortcutFor({required Object actionName}) => 'Imposta una scorciatoia per ${actionName}';
	@override String get clearShortcut => 'Elimina scorciatoia';
	@override String get noShortcutSet => 'Nessuna scorciatoia impostata';
	@override String get currentShortcut => 'Scorciatoia attuale:';
	@override String get pressToRecord => 'Seleziona per registrare una scorciatoia';
	@override String get recordingShortcut => 'Premi ora la scorciatoia';
	@override late final _Translations$hotkeys$actions$it actions = _Translations$hotkeys$actions$it._(_root);
}

// Path: fileInfo
class _Translations$fileInfo$it extends Translations$fileInfo$en {
	_Translations$fileInfo$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Info sul file';
	@override String get overview => 'Panoramica';
	@override String get video => 'Video';
	@override String get audio => 'Audio';
	@override String get subtitles => 'Sottotitoli';
	@override String get images => 'Immagini incorporate';
	@override String get dataStreams => 'Flussi di dati';
	@override String get lyrics => 'Testi';
	@override String get file => 'File';
	@override String get attachments => 'Allegati';
	@override String get delivery => 'Distribuzione';
	@override String versionCounter({required Object index, required Object count}) => 'Versione ${index} di ${count}';
	@override String fileCounter({required Object index, required Object count}) => 'File ${index} di ${count}';
	@override String get noStreams => 'Il server non ha segnalato flussi per questo file.';
	@override String get copyPath => 'Copia percorso';
	@override String get pathCopied => 'Percorso del file copiato';
	@override String get codec => 'Codec';
	@override String get codecTag => 'Tag codec';
	@override String get resolution => 'Risoluzione';
	@override String get codedResolution => 'Risoluzione codificata';
	@override String get bitrate => 'Bitrate';
	@override String get frameRate => 'Frequenza fotogrammi';
	@override String get rotation => 'Rotazione';
	@override String get comment => 'Commento';
	@override String get audioDescription => 'Descrizione audio';
	@override String get headerCompression => 'Compressione header';
	@override String get sidecarFile => 'File sidecar';
	@override String get transportTimestamp => 'Timestamp di trasporto';
	@override String get displayOffset => 'Offset di visualizzazione';
	@override String get previewFailureCode => 'Codice errore anteprima';
	@override String get previewRetries => 'Riprova anteprima';
	@override String get aspectRatio => 'Proporzioni';
	@override String get pixelAspectRatio => 'Aspect ratio pixel';
	@override String get profile => 'Profilo';
	@override String get level => 'Livello';
	@override String get bitDepth => 'Profondità in bit';
	@override String get pixelFormat => 'Formato pixel';
	@override String get colorSpace => 'Spazio colore';
	@override String get colorRange => 'Gamma colori';
	@override String get colorPrimaries => 'Colori primari';
	@override String get colorTransfer => 'Trasferimento colore';
	@override String get chromaSubsampling => 'Sottocampionamento cromatico';
	@override String get chromaLocation => 'Posizione crominanza';
	@override String get scanType => 'Tipo di scansione';
	@override String get interlaced => 'Interlacciato';
	@override String get anamorphic => 'Anamorfico';
	@override String get referenceFrames => 'Frame di riferimento';
	@override String get dynamicRange => 'Gamma dinamica';
	@override String get dolbyVision => 'Dolby Vision';
	@override String get dolbyVisionLevel => 'Livello Dolby Vision';
	@override String get dolbyVisionVersion => 'Versione Dolby Vision';
	@override String get dolbyVisionLayers => 'Livelli Dolby Vision';
	@override String get baseLayerCompatibility => 'Compatibilità layer di base';
	@override String get avcBitstream => 'Bitstream AVC';
	@override String get nalLengthSize => 'Dimensione lunghezza NAL';
	@override String get scalingMatrix => 'Matrice di scaling personalizzata';
	@override String get streamIdentifier => 'Identificatore flusso';
	@override String get streamIndex => 'Indice flusso';
	@override String get streamId => 'ID flusso';
	@override String get language => 'Lingua';
	@override String get languageCode => 'Codice lingua';
	@override String get streamTitle => 'Titolo traccia';
	@override String get channels => 'Canali';
	@override String get sampleRate => 'Frequenza di campionamento';
	@override String get spatialAudio => 'Audio spaziale';
	@override String get textBased => 'Testuale';
	@override String get subtitleFormat => 'Formato sidecar';
	@override String get provider => 'Provider';
	@override String get matchScore => 'Punteggio corrispondenza';
	@override String get externalDelivery => 'Può essere servito separatamente';
	@override String get sidecarPath => 'Percorso sidecar';
	@override String get sourceStream => 'Copiato da';
	@override String get temporary => 'Temporaneo';
	@override String get timeBase => 'Base temporale';
	@override String get overallBitrate => 'Bitrate complessivo';
	@override String get path => 'Percorso';
	@override String get fileName => 'Nome file';
	@override String get size => 'Dimensione';
	@override String get totalSize => 'Dimensione totale';
	@override String get container => 'Contenitore';
	@override String get duration => 'Durata';
	@override String get previewThumbnails => 'Miniature anteprima';
	@override String get previewIndex => 'Indice anteprima';
	@override String get packetLength => 'Lunghezza pacchetto';
	@override String get filePresent => 'File presente';
	@override String get fileReadable => 'Leggibile dal server';
	@override String get streamPath => 'Percorso flusso';
	@override String get optimizedForStreaming => 'Ottimizzato per lo streaming';
	@override String get has64bitOffsets => 'Offset a 64 bit';
	@override String get protocol => 'Protocollo';
	@override String get mediaType => 'Tipo di supporto';
	@override String get sourceKind => 'Tipo di origine';
	@override String get optimizedVersion => 'Versione ottimizzata';
	@override String get optimizationTarget => 'Obiettivo ottimizzazione';
	@override String get deletedAt => 'Eliminato';
	@override String get remoteSource => 'Origine remota';
	@override String get infiniteStream => 'Flusso infinito';
	@override String get directPlay => 'Riproduzione diretta';
	@override String get directStream => 'Streaming diretto';
	@override String get transcoding => 'Transcodifica';
	@override String get etag => 'ETag';
	@override String get versionId => 'ID versione';
	@override String get fileId => 'ID file';
	@override String get defaultAudioTrack => 'Traccia audio predefinita';
	@override String get defaultSubtitleTrack => 'Traccia sottotitoli predefinita';
	@override String get subtitlesOff => 'Disattivati';
	@override String get flagDefault => 'Predefinito';
	@override String get flagForced => 'Forzato';
	@override String get flagSelected => 'Selezionato';
	@override String get flagExternal => 'Esterno';
	@override String get flagHearingImpaired => 'Non udenti';
	@override String get flagDub => 'Doppiato';
	@override String get flagOriginal => 'Originale';
	@override String get channelsMono => 'Mono';
	@override String dolbyVisionProfile({required Object profile}) => 'Profilo ${profile}';
}

// Path: mediaMenu
class _Translations$mediaMenu$it extends Translations$mediaMenu$en {
	_Translations$mediaMenu$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get markAsWatched => 'Segna come visto';
	@override String get markAsUnwatched => 'Segna come non visto';
	@override String get clearProgress => 'Progressi evidenti';
	@override String get removeFromContinueWatching => 'Rimuovi da Continua a guardare';
	@override String get viewDetails => 'Visualizza dettagli';
	@override String get goToSeries => 'Vai alla serie';
	@override String get shufflePlay => 'Riproduzione casuale';
	@override String get shuffleNotAvailableOffline => 'Riproduzione casuale non disponibile offline';
	@override String get fileInfo => 'Info sul file';
	@override String get deleteEpisodeFromServer => 'Elimina episodio dal server';
	@override String get deleteSeasonFromServer => 'Elimina stagione dal server';
	@override String get deleteShowFromServer => 'Elimina serie dal server';
	@override String get deleteMovieFromServer => 'Elimina film dal server';
	@override String get deleteEpisodeTitle => 'Eliminare questo episodio?';
	@override String get deleteSeasonTitle => 'Eliminare questa stagione?';
	@override String get deleteShowTitle => 'Eliminare questa serie?';
	@override String get deleteMovieTitle => 'Eliminare questo film?';
	@override String get deleteEpisodeConfirm => 'Elimina episodio';
	@override String get deleteSeasonConfirm => 'Elimina stagione';
	@override String get deleteShowConfirm => 'Elimina serie';
	@override String get deleteMovieConfirm => 'Elimina film';
	@override String get deleteAnyway => 'Elimina comunque';
	@override String confirmDeleteTarget({required Object title}) => 'Eliminare definitivamente ${title} dal tuo server?';
	@override String get deleteMultipleWarning => 'Sono inclusi tutti gli episodi e i relativi file.';
	@override String deleteEpisodeCountWarning({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n,
		one: 'Questo elimina tutti i ${n} episodio in essa contenuto e il relativo file.',
		other: 'Questo elimina tutti i ${n} episodi in essa contenuti e i relativi file.',
	);
	@override String deleteMultiPartWarning({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n,
		one: 'Questo elemento è archiviato in ${n} file, che verrà eliminato.',
		other: 'Questo elemento è archiviato in ${n} file, e tutti verranno eliminati.',
	);
	@override String deleteSharedFileHeading({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n,
		one: '${n} altro episodio è archiviato nello stesso file e verrà eliminato anche lui:',
		other: '${n} altri episodi sono archiviati nello stesso file e verranno eliminati anche loro:',
	);
	@override String get deleteScopeUnverifiedProbeFailed => 'Luroka non ha potuto verificare quali file rimuoverà, quindi potrebbe eliminare più di quanto indicato sopra. Annulla e riprova, oppure elimina comunque.';
	@override String get deleteScopeUnverifiedNoFileInfo => 'Il tuo server non ha fornito i dettagli del file per questo elemento, quindi Luroka non può verificare quali file rimuoverà. Potrebbe eliminare più di quanto indicato sopra.';
	@override String get mediaDeletedSuccessfully => 'Elemento multimediale eliminato correttamente';
	@override String get mediaFailedToDelete => 'Impossibile eliminare l\'elemento multimediale';
	@override String get rate => 'Valuta';
	@override String get playFromBeginning => 'Riproduci dall\'inizio';
	@override String get playVersion => 'Riproduci versione...';
}

// Path: rateSheet
class _Translations$rateSheet$it extends Translations$rateSheet$en {
	_Translations$rateSheet$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Valuta';
	@override String get server => 'Server';
	@override String get favorite => 'Preferito';
	@override String get favorited => 'Aggiunto ai preferiti';
	@override String get saved => 'Salvato';
	@override String get notAvailable => 'Nessuna corrispondenza trovata';
	@override String get noConnectedServices => 'Collega un servizio nelle Impostazioni per assegnare valutazioni anche su quel servizio.';
}

// Path: accessibility
class _Translations$accessibility$it extends Translations$accessibility$en {
	_Translations$accessibility$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String mediaCardMovie({required Object title}) => '${title}, film';
	@override String mediaCardShow({required Object title}) => '${title}, serie TV';
	@override String mediaCardEpisode({required Object title, required Object episodeInfo}) => '${title}, ${episodeInfo}';
	@override String mediaCardSeason({required Object title, required Object seasonInfo}) => '${title}, ${seasonInfo}';
	@override String get mediaCardWatched => 'visto';
	@override String mediaCardPartiallyWatched({required Object percent}) => 'visto al ${percent}%';
	@override String get mediaCardUnwatched => 'non visto';
	@override String get tapToPlay => 'Tocca per riprodurre';
	@override String get decrease => 'Diminuisci';
	@override String get increase => 'Aumenta';
	@override String decreaseValue({required Object label}) => 'Diminuisci ${label}';
	@override String increaseValue({required Object label}) => 'Aumenta ${label}';
	@override String get hue => 'Tonalità';
	@override String get saturation => 'Saturazione';
	@override String get brightness => 'Luminosità';
	@override String get hexColor => 'Colore esadecimale';
	@override String get expandText => 'Espandi il testo';
	@override String get collapseText => 'Comprimi il testo';
	@override String get alphabetNavigation => 'Navigazione alfabetica';
	@override String get alphabetScrollHint => 'Scorri verso l\'alto o il basso per cambiare lettera';
	@override String rowColumnPosition({required Object row, required Object rowCount, required Object column, required Object columnCount}) => 'Riga ${row} di ${rowCount}, colonna ${column} di ${columnCount}';
	@override String rowPosition({required Object row, required Object rowCount}) => 'Riga ${row} di ${rowCount}';
	@override String get autoScrollPlay => 'Avvia scorrimento automatico';
	@override String get autoScrollPause => 'Sospendi scorrimento automatico';
	@override String get hueShort => 'T';
	@override String get saturationShort => 'S';
	@override String get valueShort => 'V';
}

// Path: tooltips
class _Translations$tooltips$it extends Translations$tooltips$en {
	_Translations$tooltips$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get shufflePlay => 'Riproduzione casuale';
	@override String get playTrailer => 'Riproduci trailer';
	@override String get markAsWatched => 'Segna come visto';
	@override String get markAsUnwatched => 'Segna come non visto';
}

// Path: audioTracks
class _Translations$audioTracks$it extends Translations$audioTracks$en {
	_Translations$audioTracks$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String track({required Object n}) => 'Traccia audio ${n}';
}

// Path: videoControls
class _Translations$videoControls$it extends Translations$videoControls$en {
	_Translations$videoControls$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get audioLabel => 'Audio';
	@override String get subtitlesLabel => 'Sottotitoli';
	@override String addTime({required Object amount, required Object unit}) => '+${amount}${unit}';
	@override String get letterbox => 'Letterbox';
	@override String get fillScreen => 'Riempi lo schermo';
	@override String get stretch => 'Allunga';
	@override String get lockRotation => 'Blocca rotazione';
	@override String get unlockRotation => 'Sblocca rotazione';
	@override String get timerActive => 'Timer attivo';
	@override String playbackWillPauseIn({required Object duration}) => 'La riproduzione verrà messa in pausa tra ${duration}';
	@override String get sleepTimerEndOfVideo => 'Fine del video corrente';
	@override String get sleepTimerStopAtHeader => 'Interrompi alle';
	@override String get sleepTimerDurationHeader => 'Timer';
	@override String get playbackWillPauseAtEnd => 'La riproduzione verrà messa in pausa alla fine di questo video';
	@override String get stillWatching => 'Stai ancora guardando?';
	@override String pausingIn({required Object seconds}) => 'Pausa tra ${seconds}s';
	@override String get continueWatching => 'Continua';
	@override String get autoPlayNext => 'Riproduci automaticamente il successivo';
	@override String get playNext => 'Riproduci il successivo';
	@override String get playButton => 'Riproduci';
	@override String get pauseButton => 'Pausa';
	@override String get playbackPaused => 'In pausa';
	@override String get playbackResumed => 'Riproduzione';
	@override String get loadingVideo => 'Caricamento video';
	@override String get showPlaybackControls => 'Mostra i controlli di riproduzione';
	@override String get hidePlaybackControls => 'Nascondi i controlli di riproduzione';
	@override String seekBackwardButton({required Object seconds}) => 'Riavvolgi di ${seconds} secondi';
	@override String seekForwardButton({required Object seconds}) => 'Avanza di ${seconds} secondi';
	@override String get previousButton => 'Episodio precedente';
	@override String get nextButton => 'Episodio successivo';
	@override String get previousChapterButton => 'Capitolo precedente';
	@override String get nextChapterButton => 'Capitolo successivo';
	@override String get muteButton => 'Silenzia';
	@override String get unmuteButton => 'Riattiva audio';
	@override String get settingsButton => 'Impostazioni di riproduzione';
	@override String get infoButton => 'Informazioni';
	@override String get tracksButton => 'Audio e sottotitoli';
	@override String get chaptersButton => 'Capitoli';
	@override String get versionQualityButton => 'Versione e qualità';
	@override String get versionColumnHeader => 'Versione';
	@override String get qualityColumnHeader => 'Qualità';
	@override String get qualityOriginal => 'Originale';
	@override String qualityPresetLabel({required Object resolution, required Object bitrate}) => '${resolution}p ${bitrate} Mbps';
	@override String get transcodeUnavailableFallback => 'Transcodifica non disponibile — riproduzione in qualità originale';
	@override String get subtitleUnavailableFallback => 'Impossibile caricare i sottotitoli selezionati — la riproduzione continua senza sottotitoli';
	@override String get pipButton => 'Modalità Picture-in-Picture';
	@override String get aspectRatioButton => 'Proporzioni';
	@override String get ambientLighting => 'Illuminazione ambientale';
	@override String get fullscreenButton => 'Attiva schermo intero';
	@override String get exitFullscreenButton => 'Esci da schermo intero';
	@override String get alwaysOnTopButton => 'Sempre in primo piano';
	@override String get rotationLockButton => 'Blocco rotazione';
	@override String get lockScreen => 'Blocca schermo';
	@override String get screenLockButton => 'Blocco schermo';
	@override String get longPressToUnlock => 'Premi a lungo per sbloccare';
	@override String get timelineSlider => 'Timeline video';
	@override String get volumeSlider => 'Livello volume';
	@override String endsAt({required Object time}) => 'Termina alle ${time}';
	@override String get pipActive => 'Riproduzione in Picture-in-Picture';
	@override String get pipFailed => 'Impossibile avviare la modalità Picture-in-Picture';
	@override String get screenshotSaved => 'Schermata salvata';
	@override String get screenshotFailed => 'Impossibile acquisire uno screenshot';
	@override String zoomPercent({required Object percent}) => 'Zoom ${percent}%';
	@override String volumePercent({required Object percent}) => 'Volume ${percent}%';
	@override late final _Translations$videoControls$pipErrors$it pipErrors = _Translations$videoControls$pipErrors$it._(_root);
	@override String get chapters => 'Capitoli';
	@override String get noChaptersAvailable => 'Nessun capitolo disponibile';
	@override String get queue => 'Coda';
	@override String get noQueueItems => 'Nessun elemento in coda';
	@override String get noAudioDevicesAvailable => 'Nessun dispositivo audio disponibile';
	@override String get searchSubtitles => 'Cerca sottotitoli';
	@override String get language => 'Lingua';
	@override String get noSubtitlesFound => 'Nessun sottotitolo trovato';
	@override String get subtitleDownloaded => 'Sottotitolo scaricato';
	@override String get subtitleDownloadedNotApplied => 'Il sottotitolo è stato scaricato, ma non è stato possibile selezionarlo';
	@override String get subtitleDownloadFailed => 'Impossibile scaricare il sottotitolo';
	@override String get searchLanguages => 'Cerca lingue...';
	@override String get skipIntro => 'Salta intro';
	@override String get skipCredits => 'Salta titoli';
	@override String get nextEpisode => 'Episodio successivo';
	@override String subtitleTrack({required Object n}) => 'Traccia ${n}';
	@override String subtitleFile({required Object name}) => 'Sottotitolo ${name}';
	@override String forcedTrack({required Object label}) => '${label} (Forzato)';
	@override String get osdSubtitlesOff => 'Sottotitoli: Disattivati';
	@override String osdSubtitles({required Object track}) => 'Sottotitoli: ${track}';
	@override String osdAudio({required Object track}) => 'Audio: ${track}';
}

// Path: messages
class _Translations$messages$it extends Translations$messages$en {
	_Translations$messages$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get markedAsWatched => 'Segnato come visto';
	@override String get markedAsUnwatched => 'Segnato come non visto';
	@override String get markedAsWatchedOffline => 'Segnato come visto (verrà sincronizzato quando torni online)';
	@override String get markedAsUnwatchedOffline => 'Segnato come non visto (verrà sincronizzato quando torni online)';
	@override String autoRemovedWatchedDownload({required Object title}) => 'Rimosso automaticamente: ${title}';
	@override String autoRemovedWatchedDownloads({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n,
		one: 'Rimosso automaticamente ${n} download già visto',
		other: 'Rimossi automaticamente ${n} download già visti',
	);
	@override String get removedFromContinueWatching => 'Rimosso da Continua a guardare';
	@override String errorLoading({required Object error}) => 'Errore: ${error}';
	@override String get searchPartialResults => 'Non è stato possibile cercare in alcuni server multimediali. Vengono mostrati i risultati disponibili.';
	@override String get streamInterrupted => 'La riproduzione si è interrotta. Premi Riproduci o vai a un altro punto per riprovare.';
	@override String get liveStreamInterrupted => 'La diretta si è interrotta. Premi Riproduci per riprovare.';
	@override String get fileInfoNotAvailable => 'Informazioni sul file non disponibili';
	@override String get playbackAuthenticationRequired => 'Accedi di nuovo al server multimediale per riprodurre questo elemento.';
	@override String get playbackServerUnavailable => 'Il server multimediale non è disponibile. Riprova più tardi.';
	@override String get playbackDataInvalid => 'Il server ha restituito informazioni di riproduzione non valide.';
	@override String get playbackCancelled => 'Riproduzione annullata.';
	@override String get playbackFailed => 'Impossibile avviare la riproduzione.';
	@override String playbackFailedDetail({required Object error}) => 'Impossibile avviare la riproduzione: ${error}';
	@override String get audioOutputFailed => 'L\'uscita audio ha smesso di rispondere. Controlla la connessione audio del televisore o del ricevitore; se anche le altre app non hanno audio, riavvia il dispositivo.';
	@override String get mediaUnavailable => 'Questo contenuto non è più disponibile.';
	@override String errorLoadingFileInfo({required Object error}) => 'Errore durante il caricamento delle informazioni sul file: ${error}';
	@override String get errorLoadingSeries => 'Errore durante il caricamento della serie';
	@override String get musicNotSupported => 'La riproduzione musicale non è ancora supportata';
	@override String get noDescriptionAvailable => 'Nessuna descrizione disponibile';
	@override String get noProfilesAvailable => 'Nessun profilo disponibile';
	@override String get contactAdminForProfiles => 'Contatta l\'amministratore del server per aggiungere profili';
	@override String get unableToDetermineLibrarySection => 'Impossibile determinare la sezione della libreria per questo elemento';
	@override String get logsCleared => 'Log eliminati';
	@override String get logsCopied => 'Log copiati negli appunti';
	@override String get noLogsAvailable => 'Nessun log disponibile';
	@override String libraryScanning({required Object title}) => 'Scansione di "${title}"...';
	@override String libraryScanStarted({required Object title}) => 'Scansione della libreria avviata per "${title}"';
	@override String libraryScanFailed({required Object error}) => 'Impossibile eseguire la scansione della libreria: ${error}';
	@override String metadataRefreshing({required Object title}) => 'Aggiornamento dei metadati di "${title}"...';
	@override String metadataRefreshStarted({required Object title}) => 'Aggiornamento dei metadati avviato per "${title}"';
	@override String metadataRefreshFailed({required Object error}) => 'Impossibile aggiornare i metadati: ${error}';
	@override String get logoutConfirm => 'Vuoi uscire dall\'account?';
	@override String get noSeasonsFound => 'Nessuna stagione trovata';
	@override String get seasonsLoadFailed => 'Impossibile caricare le stagioni';
	@override String get noEpisodesFound => 'Nessun episodio trovato nella prima stagione';
	@override String get noEpisodesFoundGeneral => 'Nessun episodio trovato';
	@override String get episodesLoadFailed => 'Impossibile caricare gli episodi';
	@override String get noResultsFound => 'Nessun risultato';
	@override String sleepTimerSet({required Object label}) => 'Timer di spegnimento impostato su ${label}';
	@override String get noItemsAvailable => 'Nessun elemento disponibile';
	@override String get failedToCreatePlayQueueNoItems => 'Impossibile creare una coda di riproduzione: nessun elemento';
	@override String failedPlayback({required Object action, required Object error}) => 'Impossibile eseguire l\'azione «${action}»: ${error}';
	@override String get switchingToCompatiblePlayer => 'Passaggio al lettore compatibile...';
	@override String get serverLimitTitle => 'Riproduzione non riuscita';
	@override String get serverLimitBody => 'Errore del server (HTTP 500). È probabile che un limite di banda o transcodifica abbia impedito questa sessione. Chiedi al proprietario di modificare il limite.';
	@override String get mediaUnreadableTitle => 'File non disponibile';
	@override String get mediaUnreadableBody => 'Il server ha trovato questo elemento ma non ha potuto leggere il suo file (HTTP 404). Il file è stato probabilmente spostato o eliminato, oppure il suo storage è offline. Chiedi al proprietario del server di controllare il file e di riscansionare la libreria.';
	@override String get serverBusyTitle => 'Streaming non disponibile';
	@override String get serverBusyBody => 'Il server ha continuato a rifiutare la riproduzione in streaming di questo file (HTTP 503). Potrebbe essere in fase di riavvio, occupato oppure l\'unità in cui si trova il file potrebbe essere offline. Riprova tra qualche istante. Se il problema persiste, chiedi al proprietario del server di controllare il server e l\'unità di archiviazione del file.';
	@override String get playbackNotAllowedTitle => 'Riproduzione non consentita';
	@override String get playbackNotAllowedBody => 'Il server ha rifiutato lo streaming di questo elemento (HTTP 403). Il tuo account potrebbe non avere l\'autorizzazione per riprodurlo, oppure il server potrebbe consentire la riproduzione solo sulla sua rete locale.';
	@override String get logsUploaded => 'Log caricati';
	@override String get logsUploadFailed => 'Impossibile caricare i log';
	@override String get logId => 'ID log';
	@override String get burnedSubtitlesUseMenu => 'I sottotitoli sono incorporati in questo stream. Cambiali dal menu dei sottotitoli.';
	@override String get noVideoUrl => 'Nessun URL video disponibile';
	@override String get playbackNoMediaSources => 'Il server non ha restituito sorgenti multimediali riproducibili';
	@override String get playbackDataNotPrepared => 'La riproduzione è stata avviata prima che i relativi dati fossero pronti';
	@override String get streamSelectionUnavailable => 'La selezione dei flussi non è disponibile per questa sorgente';
	@override String get streamSelectionFailed => 'Impossibile applicare i flussi selezionati';
	@override String get trackSelectionNotRemembered => 'Questa scelta di traccia vale solo per la riproduzione corrente.';
	@override String get serverUnavailableForProfile => 'Nessun server disponibile per il profilo attivo';
}

// Path: sourceLibraries
class _Translations$sourceLibraries$it extends Translations$sourceLibraries$en {
	_Translations$sourceLibraries$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'I tuoi server e librerie';
	@override String get description => 'Scegli le librerie che Luroka utilizza per Home, Cerca, Scopri disponibilità e Studios. L\'ordine delle righe iniziali è personalizzato separatamente.';
	@override String get partial => 'Impossibile controllare alcuni server. Le tue scelte salvate per quelle librerie vengono mantenute. Aggiorna per riprovare.';
	@override String get loadFailed => 'Impossibile caricare le tue librerie. Controlla la connessione e riprova.';
	@override String get notSelected => 'Non disponibile nelle librerie selezionate.';
	@override String get checkOthers => 'Controlla le altre sorgenti collegate';
	@override String get otherSources => 'Disponibile su altre sorgenti collegate';
	@override String get playOnce => 'Gioca una volta';
	@override String get includeLibrary => 'Includi questa libreria';
	@override String get noOthers => 'Nessuna copia trovata su altre fonti collegate.';
	@override String get chooseOne => 'Scegli almeno una libreria per continuare.';
}

// Path: subtitlingStyling
class _Translations$subtitlingStyling$it extends Translations$subtitlingStyling$en {
	_Translations$subtitlingStyling$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get text => 'Testo';
	@override String get border => 'Bordo';
	@override String get background => 'Sfondo';
	@override String get fontSize => 'Dimensione carattere';
	@override String get textColor => 'Colore del testo';
	@override String get borderSize => 'Dimensione del bordo';
	@override String get borderColor => 'Colore del bordo';
	@override String get backgroundOpacity => 'Opacità dello sfondo';
	@override String get backgroundColor => 'Colore dello sfondo';
	@override String get position => 'Posizione';
	@override String get assOverride => 'Sovrascrittura ASS';
	@override String get overrideScale => 'Ridimensiona';
	@override String get overrideForce => 'Forza';
	@override String get overrideStrip => 'Rimuovi stile';
	@override String get positionTop => 'In alto';
	@override String get positionBottom => 'In basso';
	@override String get useMargins => 'Usa i margini';
	@override String get useMarginsDescription => 'Consenti i sottotitoli testuali nello spazio esterno al video. I sottotitoli con stile possono mantenere la loro posizione originale.';
	@override String get anchorToScreen => 'Fissa allo schermo';
	@override String get anchorToScreenDescription => 'Mostra i sottotitoli testuali nelle bande nere sotto i video in formato panoramico';
	@override String get bold => 'Grassetto';
	@override String get italic => 'Corsivo';
	@override String get renderResolution => 'Risoluzione di rendering';
	@override String get renderResolutionScreen => 'Risoluzione dello schermo';
	@override String get renderResolutionVideo => 'Risoluzione del video';
}

// Path: mpvConfig
class _Translations$mpvConfig$it extends Translations$mpvConfig$en {
	_Translations$mpvConfig$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'mpv.conf';
	@override String get description => 'Impostazioni avanzate del lettore video';
	@override String get presets => 'Preset';
	@override String get noPresets => 'Nessun preset salvato';
	@override String get saveAsPreset => 'Salva come preset...';
	@override String get presetName => 'Nome preset';
	@override String get presetNameHint => 'Inserisci un nome per questo preset';
	@override String get loadPreset => 'Carica';
	@override String get deletePreset => 'Elimina';
	@override String get presetSaved => 'Preset salvato';
	@override String get presetLoaded => 'Preset caricato';
	@override String get presetDeleted => 'Preset eliminato';
	@override String get confirmDeletePreset => 'Sei sicuro di voler eliminare questo preset?';
	@override String get configPlaceholder => 'gpu-api=vulkan\nhwdec=auto\n# comment';
	@override String get lineHint => 'option=value';
	@override String get addLine => 'Aggiungi riga';
	@override String get removeLine => 'Rimuovi riga';
	@override String get embeddedVoHint => 'vo, gpu-context e gpu-api vengono ignorati su Linux: il video incorporato viene sempre renderizzato tramite vo=libmpv sul piano video e gpu-next (che gli shader di calcolo come ArtCNN richiedono) non può essere eseguito in modalità incorporata.';
}

// Path: dialog
class _Translations$dialog$it extends Translations$dialog$en {
	_Translations$dialog$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get confirmAction => 'Conferma azione';
}

// Path: profiles
class _Translations$profiles$it extends Translations$profiles$en {
	_Translations$profiles$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get addLurokaProfile => 'Aggiungi il profilo Luroka';
	@override String get switchingProfile => 'Cambio profilo…';
	@override String get deleteThisProfileTitle => 'Eliminare questo profilo?';
	@override String deleteThisProfileMessage({required Object displayName}) => 'Rimuovi ${displayName}. Le connessioni resteranno invariate.';
	@override String get active => 'Attivo';
	@override String get manage => 'Gestisci';
	@override String get delete => 'Elimina';
	@override String get signOut => 'Esci';
	@override String get signOutPlexTitle => 'Uscire da Plex?';
	@override String signOutPlexMessage({required Object displayName}) => 'Verranno rimossi ${displayName} e tutti gli utenti Plex Home. Potrai accedere di nuovo in qualsiasi momento.';
	@override String get signOutPlexDeleteDownloads => 'Elimina anche i download';
	@override String get signOutPlexDeleteDownloadsDescription => 'Altrimenti rimarranno su questo dispositivo e torneranno quando accedi di nuovo a questo account.';
	@override String get signedOutPlex => 'Disconnessione da Plex completata.';
	@override String get signOutFailed => 'Disconnessione non riuscita.';
	@override String get sectionTitle => 'Profili';
	@override String get summarySingle => 'Aggiungi profili per combinare utenti gestiti e identità locali';
	@override String summaryMultipleWithActive({required Object count, required Object activeName}) => '${count} profili · attivo: ${activeName}';
	@override String summaryMultiple({required Object count}) => '${count} profili';
	@override String get removeConnectionTitle => 'Rimuovere la connessione?';
	@override String removeConnectionMessage({required Object displayName, required Object connectionLabel}) => 'Rimuovi da ${displayName} l\'accesso a ${connectionLabel}. Gli altri profili continueranno ad avervi accesso.';
	@override String get deleteProfileTitle => 'Eliminare il profilo?';
	@override String deleteProfileMessage({required Object displayName}) => 'Rimuovi ${displayName} e le relative connessioni. I server resteranno disponibili.';
	@override String get profileNameLabel => 'Nome profilo';
	@override String get pinProtectionLabel => 'Protezione PIN';
	@override String get pinManagedByPlex => 'PIN gestito da Plex. Modifica su plex.tv.';
	@override String get noPinSetEditOnPlex => 'Nessun PIN impostato. Per richiederne uno, modifica l\'utente Home su plex.tv.';
	@override String get setPin => 'Imposta PIN';
	@override String get setPinTitle => 'Imposta PIN';
	@override String get confirmPinTitle => 'Conferma PIN';
	@override String get pinSet => 'PIN impostato';
	@override String get changePin => 'Cambia';
	@override String get removePin => 'Rimuovi';
	@override String get connectionsLabel => 'Connessioni';
	@override String get add => 'Aggiungi';
	@override String get deleteProfileButton => 'Elimina profilo';
	@override String get noConnectionsHint => 'Nessuna connessione — aggiungine una per usare questo profilo.';
	@override String get noConnections => 'Nessuna connessione';
	@override String get plexHomeAccount => 'Account Plex Home';
	@override String plexAccountChip({required Object account}) => 'Account Plex: ${account}';
	@override String plexAccountUserChip({required Object user, required Object account}) => '${user} tramite ${account}';
	@override String get connectionDefault => 'Predefinita';
	@override String connectionAs({required Object displayName}) => 'come ${displayName}';
	@override String get makeDefault => 'Imposta come predefinita';
	@override String get removeConnection => 'Rimuovi';
	@override String get profileRenamed => 'Profilo rinominato.';
	@override String borrowAddTo({required Object displayName}) => 'Aggiungi a ${displayName}';
	@override String get borrowExplain => 'Prendi in prestito la connessione di un altro profilo. I profili protetti da PIN richiedono un PIN.';
	@override String get borrowEmpty => 'Nulla da prendere in prestito al momento.';
	@override String get borrowEmptySubtitle => 'Collega prima Plex, Jellyfin o Emby a un altro profilo.';
	@override String get borrowLoadFailed => 'Impossibile caricare le connessioni disponibili. Riprova.';
	@override String borrowFromProfile({required Object displayName}) => 'Da ${displayName}';
	@override String get borrowConnectionBorrowed => 'Connessione presa in prestito.';
	@override String get borrowFailed => 'Impossibile prendere in prestito la connessione.';
	@override String get incorrectPin => 'PIN errato.';
	@override String get incorrectPinTryAgain => 'PIN errato. Riprova.';
	@override String get sourceProfileMissingParentAccount => 'Al profilo di origine manca l\'account principale.';
	@override String get failedToLoadHomeUsers => 'Impossibile caricare gli utenti Plex Home. Controlla la connessione e riprova.';
	@override String get failedToVerifyPin => 'Impossibile verificare il PIN.';
	@override String get newProfile => 'Nuovo profilo';
	@override String get profileNameHint => 'es. Ospiti, Bambini, Soggiorno';
	@override String get pinProtectionOptional => 'Protezione PIN (opzionale)';
	@override String get pinExplain => 'PIN a 4 cifre richiesto per cambiare profilo.';
	@override String get continueButton => 'Continua';
	@override String get pinsDontMatch => 'I PIN non corrispondono';
	@override String get tokenIdentityMismatch => 'Il token del profilo Plex è stato associato a un server imprevisto';
}

// Path: connections
class _Translations$connections$it extends Translations$connections$en {
	_Translations$connections$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get sectionTitle => 'Connessioni';
	@override String get addConnection => 'Aggiungi connessione';
	@override String get addConnectionSubtitleNoProfile => 'Accedi con Plex o collega un server Jellyfin o Emby';
	@override String addConnectionSubtitleScoped({required Object displayName}) => 'Aggiungi a ${displayName}: Plex, Jellyfin, Emby o la connessione di un altro profilo';
	@override String sessionExpiredOne({required Object name}) => 'Sessione scaduta per ${name}';
	@override String sessionExpiredMany({required Object count}) => 'Sessione scaduta per ${count} server';
	@override String accessDeniedOne({required Object name}) => '${name} ha negato l\'accesso a questo account';
	@override String accessDeniedMany({required Object count}) => '${count} server hanno negato l\'accesso a questo account';
	@override String get signInAgain => 'Accedi di nuovo';
	@override String editMediaBrowserTitle({required Object product}) => 'Modifica connessione ${product}';
	@override String editMediaBrowserIntro({required Object serverName}) => 'Aggiungi o rimuovi gli URL per ${serverName}. Luroka userà l\'URL raggiungibile con la latenza più bassa.';
}

// Path: serversAccounts
class _Translations$serversAccounts$it extends Translations$serversAccounts$en {
	_Translations$serversAccounts$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Server e account';
	@override String get subtitle => 'Stato di accesso per i server Plex, Jellyfin e Emby';
	@override String get online => 'In linea';
	@override String get offline => 'Non in linea';
	@override String get unknown => 'Accesso non effettuato';
	@override String get usedByNone => 'Non utilizzato da alcun profilo';
	@override String usedByOne({required Object name}) => 'Utilizzato da ${name}';
	@override String usedByMany({required Object name, required Object count}) => 'Utilizzato da ${name} e altri ${count}';
	@override String serversOnline({required Object online, required Object total}) => '${online} server su ${total} online';
	@override String get noServers => 'Niente ancora connesso. Aggiungi il tuo account Plex o un server Jellyfin o Emby.';
	@override String get editUrls => 'Modifica gli URL del server';
}

// Path: accountPreferences
class _Translations$accountPreferences$it extends Translations$accountPreferences$en {
	_Translations$accountPreferences$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get sectionTitle => 'Preferenze dell\'account';
	@override String hubSubtitleSingle({required Object account}) => 'Opzioni di audio, sottotitoli e libreria salvate su ${account}';
	@override String hubSubtitleMultiple({required Object count}) => 'Opzioni di audio, sottotitoli e libreria salvate su ${count} account';
	@override String get pickAccount => 'Ogni account conserva le proprie preferenze. Scegli quale modificare.';
	@override String get storedOnAccount => 'Queste opzioni vengono salvate sull\'account stesso, quindi ogni app che vi accede le usa — inclusa Luroka sugli altri tuoi dispositivi.';
	@override String get noAccounts => 'Nessun account da configurare';
	@override String get noAccountsHint => 'Accedi a Plex oppure connetti un server Jellyfin o Emby: le preferenze salvate su quell\'account appariranno qui.';
	@override String get unavailable => 'Impossibile raggiungere questo account';
	@override String get loadFailed => 'Impossibile caricare queste preferenze';
	@override String get noPreference => 'Nessuna preferenza';
	@override String get notSet => 'Non impostato';
	@override late final _Translations$accountPreferences$groups$it groups = _Translations$accountPreferences$groups$it._(_root);
	@override String get preferredAudioLanguage => 'Lingua audio preferita';
	@override String get autoSelectAudio => 'Scegli l\'audio in base alla lingua';
	@override String get autoSelectAudioDescription => 'Se disattivata, viene mantenuta la traccia audio che il file indica come predefinita.';
	@override String get preferredSubtitleLanguage => 'Lingua dei sottotitoli preferita';
	@override String get subtitleMode => 'Attiva i sottotitoli';
	@override late final _Translations$accountPreferences$subtitleModes$it subtitleModes = _Translations$accountPreferences$subtitleModes$it._(_root);
	@override String get subtitleAccessibility => 'Sottotitoli SDH';
	@override late final _Translations$accountPreferences$subtitleAccessibilityOptions$it subtitleAccessibilityOptions = _Translations$accountPreferences$subtitleAccessibilityOptions$it._(_root);
	@override String get forcedSubtitles => 'Sottotitoli forzati';
	@override late final _Translations$accountPreferences$forcedSubtitleOptions$it forcedSubtitleOptions = _Translations$accountPreferences$forcedSubtitleOptions$it._(_root);
	@override String get displayMissingEpisodes => 'Mostra gli episodi mancanti';
	@override String get displayMissingEpisodesDescription => 'Elenca gli episodi noti al server ma senza un file associato.';
	@override String get hidePlayedInLatest => 'Nascondi gli elementi visti da Aggiunti di recente';
	@override String get hidePlayedInLatestDescription => 'Esclude dagli Aggiunti di recente del server gli elementi che hai già visto.';
	@override String get displayCollectionsView => 'Mostra la vista Raccolte';
	@override String get displayCollectionsViewDescription => 'Mostra la vista Raccolte del server insieme alle tue librerie.';
	@override String get rewatchingInNextUp => 'Mantieni le serie riviste in Prossimi episodi';
	@override String get rewatchingInNextUpDescription => 'Quando finisci una serie e la ricominci, Prossimi episodi segue la nuova visione invece di rimuovere la serie.';
	@override String get watchedIndicator => 'Indicatori di visione';
	@override late final _Translations$accountPreferences$watchedIndicatorOptions$it watchedIndicatorOptions = _Translations$accountPreferences$watchedIndicatorOptions$it._(_root);
	@override String get mediaReviewsVisibility => 'Valutazioni e recensioni';
	@override late final _Translations$accountPreferences$mediaReviewsOptions$it mediaReviewsOptions = _Translations$accountPreferences$mediaReviewsOptions$it._(_root);
}

// Path: discover
class _Translations$discover$it extends Translations$discover$en {
	_Translations$discover$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Esplora';
	@override String get noContentAvailable => 'Nessun contenuto disponibile';
	@override String get addMediaToLibraries => 'Aggiungi contenuti multimediali alle tue librerie';
	@override String get continueWatching => 'Continua a guardare';
	@override String continueWatchingIn({required Object library}) => 'Continua a guardare in ${library}';
	@override String get nextUp => 'Prossimi episodi';
	@override String nextUpIn({required Object library}) => 'Prossimi episodi in ${library}';
	@override String get recentlyAdded => 'Aggiunti di recente';
	@override String recentlyAddedIn({required Object library}) => 'Aggiunti di recente in ${library}';
	@override String latestAlbumsIn({required Object library}) => 'Ultimi album in ${library}';
	@override String recentlyPlayedIn({required Object library}) => 'Riprodotti di recente in ${library}';
	@override String mostPlayedIn({required Object library}) => 'Più riprodotti in ${library}';
	@override String playEpisode({required Object season, required Object episode}) => 'S${season}E${episode}';
	@override String get overview => 'Panoramica';
	@override String get cast => 'Attori';
	@override String get extras => 'Trailer ed extra';
	@override String get studio => 'Studio';
	@override String get rating => 'Valutazione';
	@override String get director => 'Regista';
	@override String get directors => 'Registi';
	@override String get movie => 'Film';
	@override String get tvShow => 'Serie TV';
	@override String minutesLeft({required Object minutes}) => '${minutes} minuti rimanenti';
	@override String get moreLikeThis => 'Altri contenuti simili';
	@override String titleCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n,
		one: '${n} titolo',
		other: '${n} titoli',
	);
	@override late final _Translations$discover$person$it person = _Translations$discover$person$it._(_root);
}

// Path: errors
class _Translations$errors$it extends Translations$errors$en {
	_Translations$errors$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String searchFailed({required Object error}) => 'Ricerca non riuscita: ${error}';
	@override String get searchUnavailable => 'La ricerca non ha potuto raggiungere alcun server multimediale.';
	@override String connectionTimeout({required Object context}) => 'Tempo scaduto per la connessione durante il caricamento di ${context}';
	@override String get connectionFailed => 'Impossibile connettersi al server multimediale';
	@override String unableToLoad({required Object context}) => 'Impossibile caricare ${context}. Riprova.';
	@override String get noClientAvailable => 'Nessun client disponibile';
	@override String get pleaseEnterToken => 'Inserisci un token';
	@override String get invalidToken => 'Token non valido';
	@override String failedToVerifyToken({required Object error}) => 'Impossibile verificare il token: ${error}';
	@override String failedToSwitchProfile({required Object displayName}) => 'Impossibile passare a ${displayName}';
	@override String failedToDeleteProfile({required Object displayName}) => 'Impossibile eliminare ${displayName}';
	@override String get failedToRate => 'Impossibile aggiornare la valutazione';
	@override String get reasonTimedOut => 'il tempo di connessione è scaduto';
	@override String get reasonUnreachable => 'non è stato possibile raggiungere il server';
	@override String get reasonRefused => 'il server ha rifiutato la richiesta';
	@override String get reasonNotFound => 'l\'elemento non è più presente sul server';
	@override String get reasonServerError => 'il server ha segnalato un errore';
	@override String get reasonCancelled => 'la richiesta è stata annullata';
	@override String get reasonUnexpected => 'si è verificato un errore imprevisto';
}

// Path: libraries
class _Translations$libraries$it extends Translations$libraries$en {
	_Translations$libraries$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Librerie';
	@override String get fallbackTitle => 'Libreria';
	@override String get scanLibraryFiles => 'Scansiona i file della libreria';
	@override String get scanLibrary => 'Scansiona libreria';
	@override String get analyze => 'Analizza';
	@override String get analyzeLibrary => 'Analizza libreria';
	@override String get refreshMetadata => 'Aggiorna metadati';
	@override String get emptyTrash => 'Svuota cestino';
	@override String emptyingTrash({required Object title}) => 'Svuotamento del cestino di "${title}"...';
	@override String trashEmptied({required Object title}) => 'Cestino di "${title}" svuotato';
	@override String failedToEmptyTrash({required Object error}) => 'Impossibile svuotare il cestino: ${error}';
	@override String analyzing({required Object title}) => 'Analisi di "${title}"...';
	@override String analysisStarted({required Object title}) => 'Analisi avviata per "${title}"';
	@override String failedToAnalyze({required Object error}) => 'Impossibile analizzare la libreria: ${error}';
	@override String get noLibrariesFound => 'Nessuna libreria trovata';
	@override String get allLibrariesHidden => 'Tutte le librerie sono nascoste';
	@override String hiddenLibrariesCount({required Object count}) => 'Librerie nascoste (${count})';
	@override String get thisLibraryIsEmpty => 'Questa libreria è vuota';
	@override String get noItemsMatchFilters => 'Nessun elemento corrisponde ai filtri attivi';
	@override String get resetFilters => 'Reimposta filtri';
	@override String get all => 'Tutto';
	@override String get clearAll => 'Azzera tutto';
	@override String scanLibraryConfirm({required Object title}) => 'Vuoi scansionare "${title}"?';
	@override String analyzeLibraryConfirm({required Object title}) => 'Vuoi analizzare "${title}"?';
	@override String refreshMetadataConfirm({required Object title}) => 'Vuoi aggiornare i metadati di "${title}"?';
	@override String emptyTrashConfirm({required Object title}) => 'Vuoi svuotare il cestino di "${title}"?';
	@override String get manageLibraries => 'Gestisci librerie';
	@override String get sort => 'Ordina';
	@override String get sortBy => 'Ordina per';
	@override String get filters => 'Filtri';
	@override String get confirmActionMessage => 'Sei sicuro di voler eseguire questa azione?';
	@override String get showLibrary => 'Mostra libreria';
	@override String get hideLibrary => 'Nascondi libreria';
	@override String get libraryOptions => 'Opzioni libreria';
	@override String get content => 'contenuto della libreria';
	@override String get selectLibrary => 'Seleziona libreria';
	@override String filtersWithCount({required Object count}) => 'Filtri (${count})';
	@override String get noRecommendations => 'Nessun consiglio disponibile';
	@override String get noCollections => 'Nessuna raccolta in questa libreria';
	@override String get noFoldersFound => 'Nessuna cartella trovata';
	@override String get folders => 'cartelle';
	@override late final _Translations$libraries$tabs$it tabs = _Translations$libraries$tabs$it._(_root);
	@override late final _Translations$libraries$groupings$it groupings = _Translations$libraries$groupings$it._(_root);
	@override late final _Translations$libraries$filterCategories$it filterCategories = _Translations$libraries$filterCategories$it._(_root);
	@override late final _Translations$libraries$sortLabels$it sortLabels = _Translations$libraries$sortLabels$it._(_root);
	@override late final _Translations$libraries$advancedFilters$it advancedFilters = _Translations$libraries$advancedFilters$it._(_root);
}

// Path: about
class _Translations$about$it extends Translations$about$en {
	_Translations$about$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Informazioni';
	@override String get openSourceLicenses => 'Licenze open source';
	@override String versionLabel({required Object version}) => 'Versione ${version}';
	@override String get appDescription => 'Un elegante client Plex, Jellyfin ed Emby per Flutter';
	@override String get customSource => 'Codice sorgente';
	@override String get basedOnLuroka => 'Basato sul codice sorgente di Plezy';
	@override String get viewLicensesDescription => 'Visualizza le licenze delle librerie di terze parti';
	@override String get appSection => 'App';
	@override String get communitySection => 'Comunità';
	@override String get creditsSection => 'Crediti';
	@override String get legalSection => 'Legale';
	@override String versionMeta({required Object version, required Object build, required Object platform}) => 'v${version} (${build}) · ${platform}';
	@override String versionMetaNoBuild({required Object version, required Object platform}) => 'v${version} · ${platform}';
	@override String get versionUnavailable => 'Versione non disponibile';
	@override String get versionDetails => 'Dettagli della versione';
	@override String versionDetailsTitle({required Object version, required Object build}) => 'Luroka ${version} (${build})';
	@override String platformLine({required Object platform}) => 'Piattaforma: ${platform}';
	@override String deviceLine({required Object model}) => 'Dispositivo: ${model}';
	@override String packageLine({required Object package}) => 'Pacchetto: ${package}';
	@override String localeLine({required Object locale}) => 'Lingua: ${locale}';
	@override String get copyDetails => 'Copia i dettagli';
	@override String get detailsCopied => 'Dettagli dell\'app copiati';
	@override String get detailsCopyFailed => 'Impossibile copiare i dettagli dell\'app';
	@override String get checkForUpdatesDescription => 'Cerca su GitHub una versione più recente';
	@override String get checkingForUpdates => 'Controllo aggiornamenti…';
	@override String get whatsNew => 'Cosa c\'è di nuovo';
	@override String get releaseNotesUnavailable => 'Non sono disponibili note sulla versione.';
	@override String get sourceCodeDescription => 'Luroka su GitHub';
	@override String get reportIssue => 'Segnala un problema';
	@override String get reportIssueDescription => 'Raccontaci cosa è andato storto';
	@override String get documentation => 'Documentazione';
	@override String get documentationDescription => 'Configurazione, funzionalità e note di compilazione';
	@override String get upstreamProjectDescription => 'Progetto open source di edde746 e collaboratori';
	@override String get upstreamWebsite => 'Sito web a monte';
	@override String get attribution => 'Dati e attribuzione';
	@override String get attributionDescription => 'Metadati, classificazioni e marchi';
	@override String get attributionBody => 'Questo prodotto utilizza TMDB API ma non è approvato o certificato da TMDB. Elenchi di popolarità, metadati e valutazioni IMDb sono forniti da Cinemeta. Le partiture mantengono le etichette di origine.';
	@override String get trademarkNotices => 'Plex, Jellyfin, Emby, Trakt, Simkl, MyAnimeList, AniList, TMDB e i relativi marchi sono marchi dei rispettivi proprietari. Luroka non è affiliato o approvato da loro.';
	@override String get privacyPolicy => 'Informativa sulla privacy';
	@override String get privacyPolicyDescription => 'Come vengono gestiti i tuoi dati';
	@override String get gplLicense => 'Licenza GNU GPL-3.0';
	@override String get gplLicenseDescription => 'Luroka è un software gratuito';
	@override String get linkOpenFailed => 'Impossibile aprire questo collegamento';
	@override String get opensInBrowser => 'Si apre nel browser';
	@override String get footer => 'Luroka è software libero con licenza GPL-3.0.';
	@override String copyright({required Object year}) => '© ${year} collaboratori di Luroka';
}

// Path: serverSelection
class _Translations$serverSelection$it extends Translations$serverSelection$en {
	_Translations$serverSelection$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String noServersFoundForAccount({required Object username, required Object email}) => 'Nessun server trovato per ${username} (${email})';
	@override String failedToLoadServers({required Object error}) => 'Impossibile caricare i server: ${error}';
	@override String get noValidServers => 'Nessun server utilizzabile trovato per questo account';
}

// Path: hubDetail
class _Translations$hubDetail$it extends Translations$hubDetail$en {
	_Translations$hubDetail$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Titolo';
	@override String get releaseYear => 'Anno di uscita';
	@override String get dateAdded => 'Data di aggiunta';
	@override String get rating => 'Valutazione';
	@override String get noItemsFound => 'Nessun elemento trovato';
}

// Path: logs
class _Translations$logs$it extends Translations$logs$en {
	_Translations$logs$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get clearLogs => 'Cancella log';
	@override String get copyLogs => 'Copia log';
	@override String get uploadLogs => 'Carica log';
}

// Path: startup
class _Translations$startup$it extends Translations$startup$en {
	_Translations$startup$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get failedTitle => 'Luroka non ha potuto avviarsi';
	@override String get failedBody => 'Si è verificato un errore durante l\'avvio. I dettagli seguenti indicano cosa non ha funzionato.';
	@override String get failedBodyRepairable => 'Il file delle impostazioni salvate di Luroka è danneggiato e deve essere ricostruito prima che Luroka possa avviarsi. Riprovare non servirà: scegli Ripara storage.';
	@override String get phaseLabel => 'Passaggio';
	@override String get showDetails => 'Mostra dettagli';
	@override String get hideDetails => 'Nascondi dettagli';
	@override String get copyDetails => 'Copia dettagli';
	@override String get detailsCopied => 'Dettagli copiati negli appunti';
	@override String get uploadDetails => 'Carica dettagli';
	@override String get repairStorage => 'Ripara storage';
	@override String get repairTitle => 'Riparare i dati archiviati?';
	@override String get repairBodyCommon => 'Il file delle impostazioni di Luroka è danneggiato e non può essere letto. La riparazione ripristina ogni impostazione al suo valore predefinito.';
	@override String get repairBodyOneCredential => 'Un accesso salvato è danneggiato e non può essere letto. La riparazione rimuove solo quello; le altre impostazioni restano intatte.';
	@override String get repairBodySignInsKept => 'I tuoi server e profili dovrebbero rimanere con accesso effettuato.';
	@override String get repairBodySignInsLost => 'La chiave che protegge i tuoi accessi salvati non può essere recuperata da questo file, quindi dovrai effettuare di nuovo l\'accesso a ogni server e profilo. Nulla sul tuo server multimediale è interessato.';
	@override String get repairBodySessionsUncertain => 'I tracker (MAL, AniList, Simkl, Trakt) e Seerr sono archiviati separatamente e potrebbero sopravvivere o meno. Luroka ti dirà esattamente cosa ha conservato.';
	@override String get repairConfirm => 'Ripara';
	@override String get repairSucceeded => 'Storage riparato';
	@override String get repairNeedsRestart => 'Storage riparato — riavvio richiesto';
	@override String get restartRequiredBody => 'I tuoi dati sono stati riparati, ma Luroka deve ripartire da zero prima di poterli usare. Chiudi Luroka e riaprilo.';
	@override String get quitLuroka => 'Esci da Luroka';
	@override String get repairFailed => 'Riparazione non riuscita';
	@override String get repairKeptSignIns => 'I tuoi server e profili hanno ancora l\'accesso effettuato.';
	@override String get repairLostSignIns => 'La chiave che protegge i tuoi accessi salvati non ha potuto essere recuperata. Dovrai effettuare di nuovo l\'accesso a ogni server e profilo.';
	@override String get repairLostSessions => 'Almeno una connessione a un tracker o a Seerr è andata persa e deve essere riconnessa.';
	@override String get backupTitle => 'È stata conservata una copia del file danneggiato';
	@override String get backupWarning => 'Contiene le tue credenziali di accesso. Non caricarla né condividerla.';
	@override String get deleteBackup => 'Elimina copia';
	@override String get backupDeleted => 'Copia eliminata.';
	@override String get previousFailureTitle => 'Luroka non è riuscito ad avviarsi l\'ultima volta';
}

// Path: licenses
class _Translations$licenses$it extends Translations$licenses$en {
	_Translations$licenses$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get relatedPackages => 'Pacchetti correlati';
	@override String get license => 'Licenza';
	@override String licenseNumber({required Object number}) => 'Licenza ${number}';
	@override String licensesCount({required Object count}) => '${count} licenze';
	@override String get searchHint => 'Cerca pacchetti';
	@override String noResults({required Object query}) => 'Nessun pacchetto corrisponde a "${query}"';
	@override String get clearSearch => 'Cancella ricerca';
}

// Path: navigation
class _Translations$navigation$it extends Translations$navigation$en {
	_Translations$navigation$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get libraries => 'Librerie';
	@override String get downloads => 'Download';
	@override String get liveTv => 'Diretta';
	@override String get explore => 'Esplora';
}

// Path: explore
class _Translations$explore$it extends Translations$explore$en {
	_Translations$explore$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Esplora';
	@override String get selectSource => 'Seleziona fonte';
	@override late final _Translations$explore$rows$it rows = _Translations$explore$rows$it._(_root);
	@override late final _Translations$explore$status$it status = _Translations$explore$status$it._(_root);
	@override String episodeCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n,
		one: '${n} episodio',
		other: '${n} episodi',
	);
	@override String get cast => 'Attori';
	@override String get characters => 'Personaggi';
	@override String get addToWatchlist => 'Aggiungi alla lista da guardare';
	@override String get removeFromWatchlist => 'Rimuovi dalla lista da guardare';
	@override String get addedToWatchlist => 'Aggiunto alla lista titoli';
	@override String get removedFromWatchlist => 'Rimosso dalla lista titoli';
	@override String get watchlistUpdateFailed => 'Impossibile aggiornare la lista da guardare';
	@override String get watchlistNoMatch => 'Impossibile associare questo elemento a una lista titoli';
	@override String get notInLibrary => 'Non è nella tua libreria';
	@override String get inTheseLibraries => 'In queste librerie';
	@override String get checkingLibrary => 'Ricerca nella tua libreria...';
	@override String libraryCheckFailed({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n,
		one: 'Impossibile controllare ${n} server',
		other: 'Impossibile controllare ${n} server',
	);
	@override String get emptyTitle => 'Ancora niente qui';
	@override String emptyMessage({required Object source}) => 'Le sezioni di ${source} appariranno qui quando saranno disponibili dei contenuti.';
	@override String searchHint({required Object source}) => 'Cerca su ${source}';
	@override String searchEmpty({required Object query}) => 'Nessun risultato per "${query}"';
	@override String searchPrompt({required Object source}) => 'Cerca film e serie TV su ${source}.';
	@override String get searchFailed => 'Ricerca fallita. Controlla la connessione e riprova.';
	@override late final _Translations$explore$badge$it badge = _Translations$explore$badge$it._(_root);
	@override late final _Translations$explore$stats$it stats = _Translations$explore$stats$it._(_root);
	@override late final _Translations$explore$season$it season = _Translations$explore$season$it._(_root);
	@override late final _Translations$explore$format$it format = _Translations$explore$format$it._(_root);
	@override late final _Translations$explore$sourceMaterial$it sourceMaterial = _Translations$explore$sourceMaterial$it._(_root);
	@override late final _Translations$explore$creditRole$it creditRole = _Translations$explore$creditRole$it._(_root);
	@override late final _Translations$explore$relation$it relation = _Translations$explore$relation$it._(_root);
	@override String broadcast({required Object day, required Object time}) => 'Va in onda ${day} alle ${time}';
	@override String broadcastWithZone({required Object day, required Object time, required Object timezone}) => 'Va in onda ${day} alle ${time} ${timezone}';
	@override late final _Translations$explore$detail$it detail = _Translations$explore$detail$it._(_root);
	@override String totalResults({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n,
		one: '${n} risultato',
		other: '${n} risultati',
	);
}

// Path: liveTv
class _Translations$liveTv$it extends Translations$liveTv$en {
	_Translations$liveTv$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'TV in diretta';
	@override String get guide => 'Guida';
	@override String get noChannels => 'Nessun canale disponibile';
	@override String get noDvr => 'Nessun DVR configurato su alcun server';
	@override String get serverUnavailable => 'Il server TV in diretta non è disponibile.';
	@override String get serverNotConnected => 'Il server TV in diretta non è connesso.';
	@override String get noPrograms => 'Nessun dato di programma disponibile';
	@override String get liveStreamFailed => 'Streaming in diretta non riuscito';
	@override String get unknownProgram => 'Programma sconosciuto';
	@override String get unknownHub => 'Sconosciuto';
	@override String get unknownError => 'Errore sconosciuto';
	@override String channelNumber({required Object number}) => 'Canale ${number}';
	@override String get unknownChannel => 'Canale sconosciuto';
	@override String get live => 'IN DIRETTA';
	@override String get reloadGuide => 'Ricarica la guida';
	@override String get searchGuide => 'Cerca nella guida';
	@override String get searchHint => 'Cerca canali e programmi';
	@override String searchNoResults({required Object query}) => 'Nessuna corrispondenza per "${query}"';
	@override String get channelsSection => 'Canali';
	@override String get programsSection => 'Programmi';
	@override String get now => 'Ora';
	@override String get today => 'Oggi';
	@override String get tomorrow => 'Domani';
	@override String get midnight => 'Mezzanotte';
	@override String get overnight => 'Durante la notte';
	@override String get morning => 'Mattina';
	@override String get daytime => 'Giornata';
	@override String get evening => 'Sera';
	@override String get lateNight => 'Tarda notte';
	@override String get whatsOn => 'In onda ora';
	@override String get watchChannel => 'Guarda il canale';
	@override String get favorites => 'Preferiti';
	@override String get reorderFavorites => 'Riordina i preferiti';
	@override String get noFavoriteChannels => 'Nessun canale preferito';
	@override String get noFavoriteChannelsHint => 'Mostra tutti i canali, quindi tieni premuto un canale per aggiungerlo ai preferiti.';
	@override String get showAllChannels => 'Mostra tutti i canali';
	@override String get favoritesLoadFailed => 'Impossibile caricare i preferiti. Controlla la connessione e riprova.';
	@override String get favoritesUpdateFailed => 'Impossibile aggiornare i preferiti. Controlla la connessione e riprova.';
	@override String get joinSession => 'Partecipa alla sessione in corso';
	@override String watchFromStart({required Object minutes}) => 'Guarda dall\'inizio (${minutes} min fa)';
	@override String get watchLive => 'Guarda in diretta';
	@override String get goToLive => 'Vai alla diretta';
	@override String get record => 'Registra';
	@override String get recordEpisode => 'Registra episodio';
	@override String get recordSeries => 'Registra serie';
	@override String get recordOptions => 'Opzioni di registrazione';
	@override String get saveTo => 'Salva in';
	@override String get recordings => 'Registrazioni';
	@override String get scheduledRecordings => 'Programmate';
	@override String get recordingRules => 'Regole di registrazione';
	@override String get noScheduledRecordings => 'Nessuna registrazione in programma';
	@override String get manageRecording => 'Gestisci registrazione';
	@override String get cancelRecording => 'Annulla registrazione';
	@override String get cancelRecordingTitle => 'Annullare questa registrazione?';
	@override String cancelRecordingMessage({required Object title}) => '${title} non sarà più registrato.';
	@override String get deleteRule => 'Elimina regola';
	@override String get deleteRuleTitle => 'Eliminare la regola di registrazione?';
	@override String deleteRuleMessage({required Object title}) => 'I prossimi episodi di ${title} non saranno registrati.';
	@override String get recordingScheduled => 'Registrazione programmata';
	@override String get alreadyScheduled => 'La registrazione di questo programma è già pianificata';
	@override String get dvrAdminRequired => 'Le impostazioni DVR richiedono un account amministratore';
	@override String get recordingFailed => 'Impossibile programmare la registrazione';
	@override String get recordingTargetMissing => 'Impossibile determinare la libreria di registrazione';
	@override String get recordNotAvailable => 'Registrazione non disponibile per questo programma';
	@override String get recordingCancelled => 'Registrazione annullata';
	@override String get recordingRuleDeleted => 'Regola di registrazione eliminata';
	@override String get processRecordingRules => 'Rielabora le regole';
	@override String get recordingInProgress => 'Registrazione in corso';
	@override String recordingsCount({required Object count}) => '${count} programmate';
	@override String get editRule => 'Modifica regola';
	@override String get editRuleAction => 'Modifica';
	@override String get recordingRuleUpdated => 'Regola di registrazione aggiornata';
	@override String get guideReloadRequested => 'Aggiornamento della guida richiesto';
	@override String get guideReloadFailed => 'Impossibile aggiornare la guida';
	@override String get rulesProcessRequested => 'Rielaborazione delle regole richiesta';
	@override String get rulesProcessFailed => 'Impossibile rielaborare le regole di registrazione';
	@override String get recordShow => 'Registra programma';
	@override late final _Translations$liveTv$recordSettings$it recordSettings = _Translations$liveTv$recordSettings$it._(_root);
	@override String startingInMinutes({required Object minutes}) => 'Inizia tra ${minutes} min';
	@override String dayAtTime({required Object day, required Object time}) => '${day} alle ${time}';
	@override String invalidPlaybackData({required Object product}) => '${product} ha restituito dati di riproduzione della TV in diretta non validi';
	@override String get failedToStartChannel => 'Impossibile avviare il canale in diretta';
	@override String get failedToBuildStreamUrl => 'Impossibile creare l\'URL dello stream';
	@override String playbackStartFailed({required Object reason}) => 'Impossibile avviare il canale: ${reason}';
	@override String channelSwitchFailed({required Object reason}) => 'Impossibile cambiare canale: ${reason}';
}

// Path: collections
class _Translations$collections$it extends Translations$collections$en {
	_Translations$collections$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Raccolte';
	@override String get collection => 'Raccolta';
	@override String get empty => 'La raccolta è vuota';
	@override String get deleteCollection => 'Elimina raccolta';
	@override String deleteConfirm({required Object title}) => 'Eliminare "${title}"? Non si può annullare.';
	@override String get deleted => 'Raccolta eliminata';
	@override String get deleteFailed => 'Impossibile eliminare la raccolta';
	@override String deleteFailedWithError({required Object error}) => 'Impossibile eliminare la raccolta: ${error}';
	@override String get selectCollection => 'Seleziona raccolta';
	@override String get collectionName => 'Nome raccolta';
	@override String get enterCollectionName => 'Inserisci nome raccolta';
	@override String get addedToCollection => 'Elemento aggiunto alla raccolta';
	@override String get errorAddingToCollection => 'Impossibile aggiungere l\'elemento alla raccolta';
	@override String get created => 'Raccolta creata';
	@override String get removeFromCollection => 'Rimuovi dalla raccolta';
	@override String removeFromCollectionConfirm({required Object title}) => 'Rimuovere "${title}" da questa raccolta?';
	@override String get removedFromCollection => 'Elemento rimosso dalla raccolta';
	@override String get removeFromCollectionFailed => 'Impossibile rimuovere dalla raccolta';
	@override String removeFromCollectionError({required Object error}) => 'Errore durante la rimozione dell\'elemento dalla raccolta: ${error}';
	@override String get searchCollections => 'Cerca raccolte...';
}

// Path: playlists
class _Translations$playlists$it extends Translations$playlists$en {
	_Translations$playlists$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Playlist';
	@override String get playlist => 'Playlist';
	@override String get noPlaylists => 'Nessuna playlist trovata';
	@override String get create => 'Crea playlist';
	@override String get playlistName => 'Nome playlist';
	@override String get enterPlaylistName => 'Inserisci nome playlist';
	@override String get delete => 'Elimina playlist';
	@override String get removeItem => 'Rimuovi dalla playlist';
	@override String get smartPlaylist => 'Playlist intelligente';
	@override String itemCount({required Object count}) => '${count} elementi';
	@override String get oneItem => '1 elemento';
	@override String get emptyPlaylist => 'Questa playlist è vuota';
	@override String get deleteConfirm => 'Eliminare playlist?';
	@override String deleteMessage({required Object name}) => 'Sei sicuro di voler eliminare "${name}"?';
	@override String get created => 'Playlist creata';
	@override String get deleted => 'Playlist eliminata';
	@override String get itemAdded => 'Aggiunto alla playlist';
	@override String get itemRemoved => 'Rimosso dalla playlist';
	@override String get selectPlaylist => 'Seleziona playlist';
	@override String get searchPlaylists => 'Cerca playlist...';
	@override String get errorCreating => 'Impossibile creare la playlist';
	@override String get errorDeleting => 'Impossibile eliminare la playlist';
	@override String get errorLoading => 'Impossibile caricare le playlist';
	@override String get errorAdding => 'Impossibile aggiungere l\'elemento alla playlist';
	@override String get errorReordering => 'Impossibile riordinare l\'elemento della playlist';
	@override String get errorRemoving => 'Impossibile rimuovere l\'elemento dalla playlist';
}

// Path: music
class _Translations$music$it extends Translations$music$en {
	_Translations$music$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get goToAlbum => 'Vai all\'album';
	@override String get goToArtist => 'Vai all\'artista';
	@override String get instantMix => 'Mix istantaneo';
	@override String get playNext => 'Riproduci come prossimo';
	@override String get addToQueue => 'Aggiungi alla coda';
	@override String discNumber({required Object n}) => 'Disco ${n}';
	@override String trackCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n,
		one: '${n} brano',
		other: '${n} brani',
	);
	@override String get nowPlaying => 'In riproduzione';
	@override String playingFrom({required Object title}) => 'Riproduzione da ${title}';
	@override String get queue => 'Coda';
	@override String get clearQueue => 'Svuota la coda';
	@override String get lyrics => 'Testo';
	@override String get noLyrics => 'Nessun testo disponibile';
	@override String get sleepTimer => 'Timer di spegnimento';
	@override String get sleepTimerEndOfTrack => 'Fine del brano';
	@override String sleepTimerMinutes({required Object n}) => '${n} minuti';
	@override String get stopPlayback => 'Interrompi riproduzione';
	@override String get previousTrack => 'Brano precedente';
	@override String get nextTrack => 'Brano successivo';
	@override String get repeat => 'Ripeti';
	@override String get repeatAll => 'Ripeti tutto';
	@override String get repeatOne => 'Ripeti il brano';
	@override String get instantMixNoServer => 'Nessun server disponibile per un mix istantaneo';
	@override String get instantMixFailed => 'Impossibile caricare il mix istantaneo';
	@override String get instantMixEmpty => 'Il mix istantaneo non ha prodotto alcun brano';
	@override String noAudioUrl({required Object track}) => 'Nessun URL audio disponibile per ${track}';
	@override late final _Translations$music$discography$it discography = _Translations$music$discography$it._(_root);
}

// Path: watchTogether
class _Translations$watchTogether$it extends Translations$watchTogether$en {
	_Translations$watchTogether$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Guarda insieme';
	@override String get description => 'Guarda contenuti in sincronia con amici e familiari';
	@override String get createRoom => 'Crea stanza';
	@override String get creatingRoom => 'Creazione spazio...';
	@override String get joinRoom => 'Unisciti alla stanza';
	@override String get joiningRoom => 'Sala riunioni...';
	@override String get connecting => 'Connessione...';
	@override String get relayPublic => 'Le stanze utilizzano i relè pubblici Open Watch Party.';
	@override String relayCustom({required Object url}) => 'Le stanze utilizzano il tuo relè su ${url}.';
	@override String get recentRooms => 'Stanze usate di recente';
	@override String get roomActions => 'Azioni della stanza';
	@override String get renameRoom => 'Rinomina stanza';
	@override String get removeRoom => 'Rimuovi';
	@override String get enterRoomCode => 'Inserisci il codice di 6 caratteri fornito dall\'host.';
	@override String get roomCode => 'Codice della camera';
	@override String get paste => 'Incolla';
	@override String get noCodeInClipboard => 'Gli appunti non contengono un codice camera';
	@override String get copyCode => 'Copia codice';
	@override String get codeCopied => 'Codice della camera copiato';
	@override String get shareInvite => 'Condividi invito';
	@override String get qrShare => 'Condividi il codice QR';
	@override String get qrHint => 'Esegui la scansione con l\'app Luroka per entrare in questa stanza.';
	@override String get phasePlaying => 'Giocare';
	@override String get phasePaused => 'In pausa';
	@override String get phaseWaiting => 'Aspettando tutti';
	@override String get inviteCopied => 'Invito copiato. Incollalo in un messaggio.';
	@override String inviteMessage({required Object code}) => 'Unisciti alla mia stanza Watch Together in Luroka: luroka://watch?code=${code} — oppure apri Watch Together e inserisci ${code}.';
	@override String get openSessionControls => 'Apri i controlli della sessione di Guarda insieme';
	@override String get reconnecting => 'Riconnessione...';
	@override String get reconnectingDescription => 'La connessione è caduta. Rientri nella stanza automaticamente.';
	@override String get connected => 'Connesso';
	@override String get disconnected => 'Disconnesso';
	@override String get youAreHost => 'Sei l\'host';
	@override String hostedBy({required Object name}) => 'Ospitato da ${name}';
	@override String get hostControlsPlayback => 'L\'host controlla la riproduzione';
	@override String get anyoneCanControl => 'Tutti possono controllare la riproduzione';
	@override String get roomLocked => 'Stanza chiusa a chiave';
	@override String get nowPlaying => 'Ora in riproduzione';
	@override String get nothingPlaying => 'Niente da giocare';
	@override String get nothingPlayingHost => 'Riproduci qualcosa da qualsiasi libreria per condividerlo con la stanza.';
	@override String get nothingPlayingGuest => 'Quando l\'host riproduce qualcosa, si apre qui.';
	@override String get notShareable => 'Questo video non ha corrispondenze nel catalogo, quindi solo le persone con accesso allo stesso server possono riprodurlo.';
	@override String get searching => 'Cercando questo video nelle vostre librerie...';
	@override String get yourCopy => 'La tua copia';
	@override String get sharingYourCopy => 'Stai condividendo la tua copia';
	@override String playingOtherLength({required Object difference}) => 'Riproduzione della tua copia, ${difference}';
	@override String get mismatchTitle => 'La tua copia ha una lunghezza diversa';
	@override String mismatchDescription({required Object difference}) => 'La tua copia più vicina è ${difference} rispetto al video della stanza. Potrebbe essere un altro taglio o versione.';
	@override String get playAnyway => 'Gioca comunque';
	@override String get chooseAnotherCopy => 'Scegli un\'altra copia';
	@override String get dontPlay => 'Non giocare';
	@override String get unavailableTitle => 'Non hai questo video';
	@override String get unavailableDescription => 'Luroka non è riuscito a trovarlo nelle tue librerie. Scegli tu stesso una copia o cerca di nuovo.';
	@override String get chooseCopy => 'Scegli una copia';
	@override String get searchAgain => 'Cerca ancora';
	@override String get noCandidates => 'Nessuna copia trovata nelle tue biblioteche.';
	@override String get choiceFailed => 'Impossibile riprodurre questa copia per la stanza';
	@override String lengthLonger({required Object duration}) => '${duration} più a lungo';
	@override String lengthShorter({required Object duration}) => '${duration} più corto';
	@override String get lengthSame => 'Stessa lunghezza';
	@override String get lengthUnknown => 'Lunghezza sconosciuta';
	@override String get joinCurrentPlayback => 'Unisciti alla riproduzione corrente';
	@override String get joinCurrentPlaybackDescription => 'Torna a ciò che l\'host sta guardando in questo momento';
	@override String get stopMedia => 'Interrompi i video per tutti';
	@override String get syncOffset => 'Offset di sincronizzazione';
	@override String get syncOffsetDescription => 'Sposta il video se scorre davanti o dietro la stanza.';
	@override String offsetHint({required Object difference}) => 'La tua copia è ${difference} rispetto al video della stanza.';
	@override String applyDifference({required Object offset}) => 'Utilizzare ${offset}';
	@override String get offsetMinusSecond => '-1 secondo';
	@override String get offsetMinusTenth => '-100 ms';
	@override String get offsetPlusTenth => '+100 ms';
	@override String get offsetPlusSecond => '+1 secondo';
	@override String get participants => 'Partecipanti';
	@override String participantCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n,
		one: 'Partecipante ${n}',
		other: 'Partecipanti ${n}',
	);
	@override String get hostBadge => 'HOST';
	@override String nameYou({required Object name}) => '${name} (Tu)';
	@override String get playerIdle => 'Inattivo';
	@override String get playerLoading => 'Caricamento in corso';
	@override String get playerReady => 'Pronto';
	@override String get playerBuffering => 'Bufferizzazione';
	@override String get matchSearching => 'Ricerca';
	@override String get matchMatched => 'Ha il video';
	@override String get matchMismatched => 'Lunghezza diversa';
	@override String get matchUnavailable => 'Non ha il video';
	@override String participantOffset({required Object offset}) => 'Scostamento ${offset}';
	@override String get makeHost => 'Rendi host';
	@override String get makeHostQuestion => 'Trasferire il ruolo di host?';
	@override String makeHostConfirm({required Object name}) => '${name} controllerà la riproduzione e guiderà la sessione per tutti.';
	@override String get transfer => 'Trasferisci';
	@override String get removeParticipant => 'Rimuovi dalla stanza';
	@override String removeParticipantQuestion({required Object name}) => 'Rimuovere ${name}?';
	@override String removeParticipantConfirm({required Object name}) => '${name} lascia la stanza. Possono unirsi di nuovo con il codice a meno che tu non chiuda la stanza.';
	@override String get remove => 'Rimuovi';
	@override String get roomSettings => 'Impostazioni della stanza';
	@override String get letEveryoneControl => 'Consenti a tutti di controllare la riproduzione';
	@override String get lockRoom => 'Stanza chiusa';
	@override String get lockRoomDescription => 'Nessun nuovo può unirsi';
	@override String get leaveRoom => 'Lascia la stanza';
	@override String get leaveRoomQuestion => 'Lasciare la stanza?';
	@override String get leaveRoomConfirm => 'Puoi unirti di nuovo con il codice della camera.';
	@override String get leave => 'Abbandona';
	@override String get endRoom => 'Fine stanza';
	@override String get endRoomQuestion => 'Fine stanza?';
	@override String get endRoomConfirm => 'Questo pone fine allo spazio per tutti.';
	@override String get end => 'Termina';
	@override String get playBlockedTitle => 'La riproduzione non è iniziata';
	@override String get playBlockedDescription => 'Premi Play per iniziare a guardare con la stanza.';
	@override late final _Translations$watchTogether$notices$it notices = _Translations$watchTogether$notices$it._(_root);
	@override late final _Translations$watchTogether$ended$it ended = _Translations$watchTogether$ended$it._(_root);
	@override late final _Translations$watchTogether$errors$it errors = _Translations$watchTogether$errors$it._(_root);
	@override String untitledEpisode({required Object number}) => 'Episodio ${number}';
}

// Path: downloads
class _Translations$downloads$it extends Translations$downloads$en {
	_Translations$downloads$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Download';
	@override String get manage => 'Gestisci';
	@override String get tvShows => 'Serie TV';
	@override String get movies => 'Film';
	@override String get music => 'Musica';
	@override String tracksQueued({required Object count}) => '${count} brani in coda per il download';
	@override String get noDownloads => 'Ancora nessun download';
	@override String get noDownloadsDescription => 'I contenuti scaricati appariranno qui per la visualizzazione offline';
	@override String get downloadNow => 'Scarica';
	@override String get deleteDownload => 'Elimina il download';
	@override String get retryDownload => 'Riprova il download';
	@override String get downloadQueued => 'Download in coda';
	@override String get downloadResumed => 'Download ripreso';
	@override String get serverErrorBitrate => 'Errore server: il file può superare il limite di bitrate remoto';
	@override String get storageFull => 'I download sono stati interrotti per preservare lo spazio disponibile. Libera spazio o scegli un’altra posizione di download, quindi riprova.';
	@override String get storageUnavailable => 'I download sono stati interrotti perché non è stato possibile verificare lo spazio di archiviazione disponibile. Controlla la posizione di download e riprova.';
	@override String episodesQueued({required Object count}) => '${count} episodi in coda per il download';
	@override String get downloadDeleted => 'Download eliminato';
	@override String deleteConfirm({required Object title}) => 'Eliminare "${title}" da questo dispositivo?';
	@override String get deleteCollectionDownloads => 'Elimina i download';
	@override String deleteCollectionDownloadsConfirm({required Object title}) => 'Eliminare tutti i download in "${title}" da questo dispositivo?';
	@override String get collectionDownloadsDeleted => 'Download eliminati';
	@override String get cancelledDownloadTitle => 'Download annullato';
	@override String get cancelledDownloadMessage => 'Questo download è stato annullato. Cosa vuoi fare?';
	@override String get allEpisodesAlreadyDownloaded => 'Tutti gli episodi sono già stati scaricati';
	@override String get resumeDownload => 'Riprendi il download';
	@override String get cancelledDownload => 'Download annullato';
	@override String syncingFile({required Object file, required Object status}) => '${file} (sincronizzazione ${status})';
	@override String downloadedFileClickToComplete({required Object file}) => '${file} scaricato — fai clic per completare';
	@override String get partialDownloadClickToComplete => 'Scaricato parzialmente — fai clic per completare';
	@override String get deleting => 'Eliminazione...';
	@override String deletingWithProgress({required Object title, required Object current, required Object total}) => 'Eliminazione di ${title}... (${current} di ${total})';
	@override String get queuedTooltip => 'In coda';
	@override String queuedFilesTooltip({required Object files}) => 'In coda: ${files}';
	@override String get downloadingTooltip => 'Download in corso...';
	@override String downloadingFilesTooltip({required Object files}) => 'Download di ${files}';
	@override String get noDownloadsTree => 'Nessun download';
	@override String get pauseAll => 'Metti tutto in pausa';
	@override String get resumeAll => 'Riprendi tutto';
	@override String get retryAll => 'Riprova tutto';
	@override String get retryFailed => 'Riprova i download non riusciti';
	@override String get deleteAll => 'Elimina tutto';
	@override String get selectVersion => 'Seleziona la versione';
	@override String get allEpisodes => 'Tutti gli episodi';
	@override String get unwatchedOnly => 'Solo non visti';
	@override String nextNUnwatched({required Object count}) => 'Prossimi ${count} episodi non visti';
	@override String get customAmount => 'Quantità personalizzata...';
	@override String get includeSpecials => 'Includi gli speciali';
	@override String get howManyEpisodes => 'Quanti episodi?';
	@override String get invalidEpisodeCount => 'Inserisci un numero di episodi valido.';
	@override String get keepSynced => 'Mantieni sincronizzato';
	@override String get downloadOnce => 'Scarica una volta';
	@override String keepNUnwatched({required Object count}) => 'Mantieni ${count} episodi non visti';
	@override String get editSyncRule => 'Modifica regola di sincronizzazione';
	@override String get removeSyncRule => 'Rimuovi regola di sincronizzazione';
	@override String removeSyncRuleConfirm({required Object title}) => 'Interrompere la sincronizzazione di "${title}"? Gli episodi scaricati verranno mantenuti.';
	@override String removeListSyncRuleConfirm({required Object title}) => 'Interrompere la sincronizzazione di "${title}"?';
	@override String get deleteSyncRuleDownloads => 'Elimina anche i download associati';
	@override String get deleteSyncRuleDownloadsDescription => 'I download usati da un\'altra regola di sincronizzazione o da un altro profilo verranno conservati.';
	@override String syncRuleCreated({required Object count}) => 'Regola di sincronizzazione creata — ${count} episodi non visti mantenuti';
	@override String get syncRuleUpdated => 'Regola di sincronizzazione aggiornata';
	@override String get syncRuleRemoved => 'Regola di sincronizzazione rimossa';
	@override String get syncRuleAndDownloadsRemoved => 'Regola di sincronizzazione e download associati rimossi';
	@override String get syncRuleCleanupBusy => 'Le regole di sincronizzazione sono in fase di aggiornamento. Riprova tra un momento.';
	@override String get syncRuleCleanupUnavailable => 'Non è stato possibile identificare in sicurezza i download associati. Riconnetti il server e riprova, oppure rimuovi la regola senza eliminare i download.';
	@override String syncedNewEpisodes({required Object count, required Object title}) => '${count} nuovi episodi sincronizzati per ${title}';
	@override String get activeSyncRules => 'Regole di sincronizzazione';
	@override String get noSyncRules => 'Nessuna regola di sincronizzazione';
	@override String get manageSyncRule => 'Gestisci sincronizzazione';
	@override String get editEpisodeCount => 'Numero di episodi';
	@override String get editSyncFilter => 'Filtro di sincronizzazione';
	@override String get syncAllItems => 'Sincronizzazione di tutti gli elementi';
	@override String get syncUnwatchedItems => 'Sincronizzazione degli elementi non visti';
	@override String syncRuleServerContext({required Object server, required Object status}) => 'Server: ${server} • ${status}';
	@override String get syncRuleAvailable => 'Disponibile';
	@override String get syncRuleOffline => 'Offline';
	@override String get syncRuleSignInRequired => 'Accesso richiesto';
	@override String get syncRuleAccessDenied => 'Accesso negato';
	@override String get syncRuleNotAvailableForProfile => 'Non disponibile per il profilo attuale';
	@override String get syncRuleUnknownServer => 'Server sconosciuto';
	@override String get syncRuleListCreated => 'Regola di sincronizzazione creata';
	@override late final _Translations$downloads$backgroundWarning$it backgroundWarning = _Translations$downloads$backgroundWarning$it._(_root);
	@override String get options => 'Opzioni download';
	@override late final _Translations$downloads$groupings$it groupings = _Translations$downloads$groupings$it._(_root);
	@override String get unknownLibrary => 'Libreria sconosciuta';
	@override String get unknownShow => 'Serie sconosciuta';
	@override String get unknownSeason => 'Stagione sconosciuta';
	@override String get unknownAlbum => 'Album sconosciuto';
	@override String completedOfTotal({required Object completed, required Object total}) => '${completed}/${total} completati';
	@override String get errorFileNotFound => 'File non trovato (404)';
	@override String get errorDownloadNotAllowed => 'Download non consentito dal server (403)';
	@override String get errorDownloadFailed => 'Download non riuscito';
	@override String errorDownloadFailedWithReason({required Object reason}) => 'Download non riuscito: ${reason}';
	@override String errorHttpStatus({required Object status}) => 'Download non riuscito (HTTP ${status})';
	@override String errorPostProcessing({required Object reason}) => 'Post-elaborazione non riuscita: ${reason}';
	@override String get reasonFileNotSaved => 'non è stato possibile salvare il file su questo dispositivo';
	@override String get reasonCannotResume => 'non è stato possibile riprendere il download parziale';
	@override String get reasonDeviceStorageFull => 'lo spazio di archiviazione di questo dispositivo è esaurito';
	@override String get notificationDownloading => 'Download in corso...';
	@override String get notificationComplete => 'Download completato';
	@override String get notificationPaused => 'Download in pausa';
}

// Path: shaders
class _Translations$shaders$it extends Translations$shaders$en {
	_Translations$shaders$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Shader';
	@override String get noShaderDescription => 'Nessun miglioramento video';
	@override String get nvscalerDescription => 'Ridimensionamento NVIDIA per video più nitido';
	@override String get artcnnVariantNeutral => 'Neutro';
	@override String get artcnnVariantDenoise => 'Riduzione rumore';
	@override String get artcnnVariantDenoiseSharpen => 'Riduzione rumore + nitidezza';
	@override String get qualityFast => 'Veloce';
	@override String get qualityHQ => 'Alta qualità';
	@override String get mode => 'Modalità';
	@override String get importShader => 'Importa shader';
	@override String get customShaderDescription => 'Shader GLSL personalizzato';
	@override String get shaderImported => 'Shader importato';
	@override String get shaderImportFailed => 'Impossibile importare lo shader';
	@override String get deleteShader => 'Elimina shader';
	@override String deleteShaderConfirm({required Object name}) => 'Eliminare "${name}"?';
}

// Path: companionRemote
class _Translations$companionRemote$it extends Translations$companionRemote$en {
	_Translations$companionRemote$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Telecomando';
	@override String connectedTo({required Object name}) => 'Connesso a ${name}';
	@override String get unknownDevice => 'Dispositivo sconosciuto';
	@override late final _Translations$companionRemote$session$it session = _Translations$companionRemote$session$it._(_root);
	@override late final _Translations$companionRemote$pairing$it pairing = _Translations$companionRemote$pairing$it._(_root);
	@override late final _Translations$companionRemote$remote$it remote = _Translations$companionRemote$remote$it._(_root);
	@override late final _Translations$companionRemote$errors$it errors = _Translations$companionRemote$errors$it._(_root);
	@override String get closedBeforeAuth => 'La connessione si è chiusa prima dell\'autenticazione';
}

// Path: videoSettings
class _Translations$videoSettings$it extends Translations$videoSettings$en {
	_Translations$videoSettings$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get playbackSpeed => 'Velocità di riproduzione';
	@override String get normalSpeed => 'Normale';
	@override String sleepTimerActive({required Object duration}) => 'Attivo (${duration})';
	@override String get zoom => 'Zoom';
	@override String get sleepTimer => 'Timer di spegnimento';
	@override String get audioSync => 'Sincronizzazione audio';
	@override String get subtitleSync => 'Sincronizzazione sottotitoli';
	@override String get hdr => 'HDR';
	@override String get hdrUnsupported => 'HDR non è disponibile qui: questo compositore desktop o questa uscita video non possono gestirlo.';
	@override String get hdrToneMapping => 'Mappatura dei toni HDR';
	@override String get hdrToneMappingCompositor => 'Compositore';
	@override String get hdrToneMappingCompositorDescription => 'Trasmette i metadati HDR della sorgente e lascia che il compositore desktop esegua la mappatura.';
	@override String get hdrToneMappingPlayer => 'Lettore';
	@override String get hdrToneMappingPlayerDescription => 'Esegue nel lettore la mappatura in base alla luminosità di picco dello schermo, quindi comunica il risultato al compositore.';
	@override String get hdrToneMappingFailed => 'Impossibile modificare la mappatura dei toni HDR: la modalità precedente è ancora attiva.';
	@override String get audioOutput => 'Uscita audio';
	@override String get performanceOverlay => 'Overlay prestazioni';
	@override String get audioOutputDolbyAtmos => 'Dolby Atmos';
	@override String get audioOutputDolbyAudio => 'Dolby Audio';
	@override String get audioOutputSurround => 'Surround';
	@override String get audioOutputSpatial => 'Audio spaziale';
	@override String get audioOutputStereo => 'Stereo';
	@override String get audioNormalization => 'Normalizza il volume';
	@override String get audioNormalizationDisablesPassthrough => 'Decodifica l\'audio in PCM; il passthrough è disattivato mentre questa opzione è attiva';
}

// Path: performanceOverlay
class _Translations$performanceOverlay$it extends Translations$performanceOverlay$en {
	_Translations$performanceOverlay$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get color => 'Colore';
	@override String get performance => 'Prestazioni';
	@override String get buffer => 'Buffer';
	@override String get app => 'App';
	@override String get decoder => 'Decoder';
	@override String get rawDecoder => 'Decoder raw';
	@override String get tunneling => 'Tunneling';
	@override String get passthrough => 'Passthrough';
	@override String get aspect => 'Proporzioni';
	@override String get rotation => 'Rotazione';
	@override String get dvSource => 'Sorgente DV';
	@override String get dvPath => 'Percorso DV';
	@override String get dvRouteDecoder => 'Decodificatore Dolby Vision';
	@override String get dvRouteDecoderP81 => 'Decodificatore Dolby Vision (P7→8.1)';
	@override String get dvRouteBaseLayer => 'Strato di base';
	@override String get dvRouteBaseLayerHdr10 => 'Strato di base HDR10';
	@override String get dvRouteBaseLayerHlg => 'Strato di base HLG';
	@override String get dvRouteBaseLayerSdr => 'Strato di base SDR';
	@override String get dvRouteReshaped => 'RPU rimodellato (gpu-next)';
	@override String get p7Conversion => 'Conv. P7';
	@override String get sampleRate => 'Frequenza camp.';
	@override String get pixelFormat => 'Formato pixel';
	@override String get hwFormat => 'Formato HW';
	@override String get matrix => 'Matrice';
	@override String get primaries => 'Colori primari';
	@override String get transfer => 'Trasferimento';
	@override String get renderFps => 'FPS rendering';
	@override String get displayFps => 'FPS display';
	@override String get avSync => 'Sync A/V';
	@override String get dropped => 'Scartati';
	@override String get dvRpus => 'DV RPU';
	@override String get dvRpuAverage => 'Media DV RPU';
	@override String get dvSampleAverage => 'Media camp. DV';
	@override String get maxLuma => 'Luma max';
	@override String get minLuma => 'Luma min';
	@override String get maxCll => 'MaxCLL';
	@override String get maxFall => 'MaxFALL';
	@override String get cacheUsed => 'Cache usata';
	@override String get cacheLimit => 'Limite cache';
	@override String get speed => 'Velocità';
	@override String get player => 'Lettore';
	@override String get memory => 'Memoria';
	@override String get uiFps => 'FPS UI';
	@override String get fps => 'FPS';
	@override String get decoderAndroidHw => 'Android HW';
	@override String get decoderNvidiaHw => 'NVIDIA HW';
	@override String get decoderQualcommHw => 'Qualcomm HW';
	@override String get decoderMediatekHw => 'MediaTek HW';
	@override String get decoderExynosHw => 'Exynos HW';
	@override String get decoderSoftware => 'Software';
	@override String get decoderHardware => 'Hardware';
	@override String get tunnelingActive => 'Attivo';
	@override String dvRpuFailed({required Object converted, required Object failures}) => '${converted} (${failures} errori)';
}

// Path: externalPlayer
class _Translations$externalPlayer$it extends Translations$externalPlayer$en {
	_Translations$externalPlayer$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lettore esterno';
	@override String get useExternalPlayer => 'Usa un lettore esterno';
	@override String get useExternalPlayerDescription => 'Apri i video in un\'altra app';
	@override String get selectPlayer => 'Seleziona il lettore';
	@override String get customPlayers => 'Lettori personalizzati';
	@override String get systemDefault => 'Predefinito di sistema';
	@override String get addCustomPlayer => 'Aggiungi lettore personalizzato';
	@override String get playerName => 'Nome del lettore';
	@override String get playerNameHint => 'Il mio lettore';
	@override String get playerCommand => 'Comando';
	@override String get playerPackage => 'Nome pacchetto';
	@override String get playerUrlScheme => 'Schema URL';
	@override String get off => 'Disattivato';
	@override String get launchFailed => 'Impossibile aprire il lettore esterno';
	@override String appNotInstalled({required Object name}) => '${name} non è installato';
	@override String get playInExternalPlayer => 'Riproduci nel lettore esterno';
}

// Path: metadataEdit
class _Translations$metadataEdit$it extends Translations$metadataEdit$en {
	_Translations$metadataEdit$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get editMetadata => 'Modifica...';
	@override String get screenTitle => 'Modifica metadati';
	@override String get basicInfo => 'Informazioni di base';
	@override String get artwork => 'Immagini';
	@override String get advancedSettings => 'Impostazioni avanzate';
	@override String get title => 'Titolo';
	@override String get sortTitle => 'Titolo di ordinamento';
	@override String get originalTitle => 'Titolo originale';
	@override String get releaseDate => 'Data di uscita';
	@override String get contentRating => 'Classificazione per età';
	@override String get studio => 'Studio';
	@override String get tagline => 'Slogan';
	@override String get summary => 'Trama';
	@override String get poster => 'Poster';
	@override String get background => 'Sfondo';
	@override String get logo => 'Logo';
	@override String get squareArt => 'Immagine quadrata';
	@override String get selectPoster => 'Seleziona poster';
	@override String get selectBackground => 'Seleziona sfondo';
	@override String get selectLogo => 'Seleziona logo';
	@override String get selectSquareArt => 'Seleziona immagine quadrata';
	@override String get fromUrl => 'Da URL';
	@override String get uploadFile => 'Carica file';
	@override String get enterImageUrl => 'Inserisci URL immagine';
	@override String get imageUrl => 'URL immagine';
	@override String get metadataUpdated => 'Metadati aggiornati correttamente';
	@override String get metadataUpdateFailed => 'Impossibile aggiornare i metadati';
	@override String get artworkUpdated => 'Immagini aggiornate';
	@override String get artworkUpdateFailed => 'Impossibile aggiornare le immagini';
	@override String get noArtworkAvailable => 'Nessuna immagine disponibile';
	@override String artworkOption({required Object index}) => 'Opzione immagine ${index}';
	@override String selectedArtworkOption({required Object index}) => 'Opzione immagine ${index}, selezionata';
	@override String get notSet => 'Non impostato';
	@override String get libraryDefault => 'Predefinito della libreria';
	@override String get accountDefault => 'Predefinito dell\'account';
	@override String get seriesDefault => 'Predefinito della serie';
	@override String get episodeSorting => 'Ordinamento episodi';
	@override String get oldestFirst => 'Più vecchi prima';
	@override String get newestFirst => 'Più recenti prima';
	@override String get keep => 'Conserva';
	@override String get allEpisodes => 'Tutti gli episodi';
	@override String latestEpisodes({required Object count}) => '${count} episodi più recenti';
	@override String get latestEpisode => 'Episodio più recente';
	@override String episodesAddedPastDays({required Object count}) => 'Episodi aggiunti negli ultimi ${count} giorni';
	@override String get deleteAfterPlaying => 'Elimina episodi dopo la riproduzione';
	@override String get never => 'Mai';
	@override String get afterADay => 'Dopo un giorno';
	@override String get afterAWeek => 'Dopo una settimana';
	@override String get afterAMonth => 'Dopo un mese';
	@override String get onNextRefresh => 'Al prossimo aggiornamento';
	@override String get seasons => 'Stagioni';
	@override String get show => 'Mostra';
	@override String get hide => 'Nascondi';
	@override String get episodeOrdering => 'Ordine episodi';
	@override String get tmdbAiring => 'The Movie Database (ordine di trasmissione)';
	@override String get tvdbAiring => 'TheTVDB (ordine di trasmissione)';
	@override String get tvdbAbsolute => 'TheTVDB (ordine assoluto)';
	@override String get metadataLanguage => 'Lingua dei metadati';
	@override String get useOriginalTitle => 'Usa il titolo originale';
	@override String get preferredAudioLanguage => 'Lingua audio preferita';
	@override String get preferredSubtitleLanguage => 'Lingua dei sottotitoli preferita';
	@override String get subtitleMode => 'Modalità di selezione automatica dei sottotitoli';
	@override String get manuallySelected => 'Selezionato manualmente';
	@override String get shownWithForeignAudio => 'Mostrati con audio straniero';
	@override String get alwaysEnabled => 'Sempre attivo';
	@override String get tags => 'Tag';
	@override String get addTag => 'Aggiungi tag';
	@override String get genre => 'Genere';
	@override String get director => 'Regista';
	@override String get writer => 'Sceneggiatore';
	@override String get producer => 'Produttore';
	@override String get country => 'Paese';
	@override String get collection => 'Raccolta';
	@override String get label => 'Etichetta';
	@override String get quickTag => 'Tag rapido...';
}

// Path: matchScreen
class _Translations$matchScreen$it extends Translations$matchScreen$en {
	_Translations$matchScreen$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get match => 'Abbina...';
	@override String get fixMatch => 'Correggi abbinamento...';
	@override String get unmatch => 'Rimuovi abbinamento';
	@override String get unmatchConfirm => 'Rimuovere questo abbinamento? Plex considererà l\'elemento non abbinato finché non verrà eseguito un nuovo abbinamento.';
	@override String get unmatchSuccess => 'Abbinamento rimosso';
	@override String get unmatchFailed => 'Rimozione dell\'abbinamento non riuscita';
	@override String get matchApplied => 'Abbinamento applicato';
	@override String get matchFailed => 'Applicazione dell\'abbinamento non riuscita';
	@override String get titleHint => 'Titolo';
	@override String get yearHint => 'Anno';
	@override String get search => 'Cerca';
	@override String get noMatchesFound => 'Nessun risultato';
}

// Path: serverTasks
class _Translations$serverTasks$it extends Translations$serverTasks$en {
	_Translations$serverTasks$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Attività del server';
	@override String get failedToLoad => 'Impossibile caricare le attività';
	@override String get noTasks => 'Nessuna attività in corso';
}

// Path: trakt
class _Translations$trakt$it extends Translations$trakt$en {
	_Translations$trakt$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Trakt';
	@override String get connected => 'Connesso';
	@override String connectedAs({required Object username}) => 'Connesso come @${username}';
	@override String get disconnectConfirm => 'Disconnettere l\'account Trakt?';
	@override String get disconnectConfirmBody => 'Luroka smetterà di inviare eventi a Trakt. Puoi riconnetterti quando vuoi.';
	@override String get scrobble => 'Scrobbling in tempo reale';
	@override String get scrobbleDescription => 'Invia eventi di riproduzione, pausa e arresto a Trakt durante la riproduzione.';
	@override String get watchedSync => 'Sincronizza lo stato di visione';
	@override String get watchedSyncDescription => 'Quando contrassegni un elemento come visto in Luroka, viene contrassegnato come visto anche su Trakt.';
}

// Path: seerr
class _Translations$seerr$it extends Translations$seerr$en {
	_Translations$seerr$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Seerr';
	@override String get connectTitle => 'Connetti Seerr';
	@override String get serverUrl => 'URL del server';
	@override String get serverUrlHelper => 'L\'indirizzo della tua istanza Seerr';
	@override String get checkServer => 'Continua';
	@override String get signInWithJellyfin => 'Accedi con Jellyfin';
	@override String get signInWithEmby => 'Accedi con Emby';
	@override String get signInWithLocal => 'Usa un account locale';
	@override String get email => 'Email';
	@override String get noSignInMethods => 'Questa istanza Seerr non offre alcun metodo di accesso supportato da Luroka.';
	@override String get instance => 'Istanza';
	@override String get disconnectConfirm => 'Disconnettere Seerr?';
	@override String get disconnectConfirmBody => 'Luroka rimuoverà questa istanza Seerr. Potrai riconnetterla in qualsiasi momento.';
	@override String get request => 'Richiedi';
	@override String get request4k => 'Richiedi in 4K';
	@override String get seasons => 'Stagioni';
	@override String get allSeasons => 'Tutte le stagioni';
	@override String get advancedOptions => 'Avanzate';
	@override String get destinationServer => 'Server di destinazione';
	@override String get qualityProfile => 'Profilo di qualità';
	@override String get rootFolder => 'Cartella radice';
	@override String get languageProfile => 'Profilo della lingua';
	@override String get tags => 'Tag';
	@override String get noTags => 'Nessun tag';
	@override String defaultOption({required Object name}) => '${name} (predefinito)';
	@override String get animeNote => 'Questa serie è un anime.';
	@override String get requestSubmitted => 'Richiesta inviata';
	@override String requestFailed({required Object error}) => 'Richiesta non riuscita: ${error}';
	@override String get requestsLoadFailed => 'Impossibile caricare le opzioni di richiesta';
	@override String get nothingToRequest => 'Tutto è già disponibile o richiesto.';
	@override String get statusAvailable => 'Disponibile';
	@override String get statusPartiallyAvailable => 'Disponibile in parte';
	@override String get statusRequested => 'Richiesto';
	@override String get statusProcessing => 'In elaborazione';
	@override String get statusBlocklisted => 'Nella lista di blocco';
	@override String couldNotReach({required Object url, required Object error}) => 'Impossibile raggiungere ${url}: ${error}';
	@override String noInstanceAtUrl({required Object url, required Object status}) => 'Nessuna istanza Seerr all\'indirizzo ${url} (HTTP ${status})';
	@override String get behindAuthProxy => 'Un reverse proxy con autenticazione (SSO o autenticazione HTTP) ha risposto al posto di Seerr. Luroka non può accedere attraverso di esso: consenti al percorso /api/v1 di Seerr di bypassare il proxy per questa app, oppure usa un indirizzo che raggiunga Seerr direttamente.';
	@override String get invalidUrl => 'Inserisci un indirizzo del server come https://seerr.example.com';
	@override String get quickConnectUnsupported => 'Questa istanza Seerr non supporta Quick Connect. È necessaria la versione 3.4 o successiva di Seerr.';
	@override String get notInitialized => 'Questa istanza Seerr non ha completato la configurazione iniziale';
	@override String get noPlexTokenForReauth => 'Nessun token Plex disponibile per effettuare nuovamente l\'accesso';
	@override String get noStoredCredentials => 'Nessuna credenziale salvata disponibile per effettuare nuovamente l\'accesso';
	@override String get signInRejected => 'L\'accesso è stato rifiutato';
	@override String get noSessionCookie => 'Seerr non ha generato un cookie di sessione';
	@override String get freshCookieRejected => 'Seerr ha rifiutato il nuovo cookie di sessione';
	@override String get noUserInformation => 'Seerr non ha restituito le informazioni sull\'utente';
	@override String get sessionRejectedAfterReauth => 'La sessione è stata rifiutata dopo aver effettuato nuovamente l\'accesso';
	@override String get permissionDenied => 'Seerr ha negato questa azione: il tuo account non dispone più dell\'autorizzazione richiesta';
	@override String get permissionRevoked => 'Non hai più l\'autorizzazione per richiederlo';
}

// Path: services
class _Translations$services$it extends Translations$services$en {
	_Translations$services$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Servizi';
	@override String get hubSubtitle => 'Sincronizza i progressi di visione e richiedi nuovi titoli.';
	@override String get discoverySection => 'Scoperta e richieste';
	@override String get trackingSection => 'Monitoraggio e liste';
	@override String get seerrDescription => 'Trova film e serie e invia richieste dal tuo server Seerr.';
	@override String get tmdbDescription => 'Scopri film e serie, locandine, valutazioni e dettagli.';
	@override String get traktDescription => 'Tieni traccia di film e serie, sincronizza lo stato di visione e gestisci la tua lista.';
	@override String get malDescription => 'Mantieni sincronizzati la tua lista anime e l\'avanzamento della visione.';
	@override String get anilistDescription => 'Segui gli anime e sincronizza i progressi di visione con AniList.';
	@override String get simklDescription => 'Tieni traccia di film, serie e anime con Simkl.';
	@override String get mdblistDescription => 'Collega le tue liste MDBList e le valutazioni dei film.';
	@override String connectionIntro({required Object service}) => 'Collega ${service} al profilo Luroka attuale. Puoi gestire la connessione e le relative opzioni qui in qualsiasi momento.';
	@override String connectService({required Object service}) => 'Collega ${service}';
	@override String get seerrConnectDescription => 'Collega il tuo server Seerr per scoprire e richiedere film e serie da Luroka.';
	@override String get seerrServerStep => 'Inserisci l\'indirizzo che usi per aprire Seerr. Verificheremo quali metodi di accesso supporta il server.';
	@override String get seerrSignInStep => 'Scegli un metodo di accesso supportato dal server.';
	@override String get integrations => 'Integrazioni';
	@override String get notConnected => 'Non connesso';
	@override String connectedAs({required Object username}) => 'Connesso come @${username}';
	@override String get scrobble => 'Registra automaticamente i progressi';
	@override String get scrobbleDescription => 'Aggiorna la tua lista quando termini un episodio o un film.';
	@override String disconnectConfirm({required Object service}) => 'Disconnettere ${service}?';
	@override String disconnectConfirmBody({required Object service}) => 'Luroka smetterà di aggiornare ${service}. Riconnetti quando vuoi.';
	@override String connectFailed({required Object service}) => 'Impossibile connettersi a ${service}. Riprova.';
	@override late final _Translations$services$names$it names = _Translations$services$names$it._(_root);
	@override late final _Translations$services$simklReconnect$it simklReconnect = _Translations$services$simklReconnect$it._(_root);
	@override late final _Translations$services$deviceCode$it deviceCode = _Translations$services$deviceCode$it._(_root);
	@override late final _Translations$services$oauthProxy$it oauthProxy = _Translations$services$oauthProxy$it._(_root);
	@override late final _Translations$services$pendingAuth$it pendingAuth = _Translations$services$pendingAuth$it._(_root);
	@override late final _Translations$services$libraryFilter$it libraryFilter = _Translations$services$libraryFilter$it._(_root);
}

// Path: addServer
class _Translations$addServer$it extends Translations$addServer$en {
	_Translations$addServer$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String addMediaBrowserTitle({required Object product}) => 'Aggiungi server ${product}';
	@override String get serverUrls => 'URL del server';
	@override String get serverUrlsHelper => 'Sono consentiti più URL, separati da virgole.';
	@override String get findServer => 'Trova il server';
	@override String searchingLocalMediaBrowserServers({required Object product}) => 'Ricerca di server ${product} locali...';
	@override String localMediaBrowserServers({required Object product}) => 'Server ${product} locali';
	@override String get username => 'Nome utente';
	@override String get password => 'Password';
	@override String get signIn => 'Accedi';
	@override String get change => 'Modifica';
	@override String get required => 'Obbligatorio';
	@override String couldNotReachServer({required Object error}) => 'Impossibile raggiungere il server: ${error}';
	@override String signInFailed({required Object error}) => 'Accesso non riuscito: ${error}';
	@override String quickConnectFailed({required Object error}) => 'Quick Connect non riuscito: ${error}';
	@override String get addPlexTitle => 'Accedi con Plex';
	@override String get pinExpired => 'PIN scaduto prima dell\'accesso. Riprova.';
	@override String failedToRegisterAccount({required Object error}) => 'Registrazione account non riuscita: ${error}';
	@override String enterMediaBrowserUrlError({required Object product}) => 'Inserisci l\'URL del server ${product}';
	@override String get addConnectionTitle => 'Aggiungi connessione';
	@override String addConnectionTitleScoped({required Object name}) => 'Aggiungi a ${name}';
	@override String get signInWithPlexCard => 'Accedi con Plex';
	@override String get signInWithPlexCardSubtitle => 'Autorizza questo dispositivo. I server condivisi vengono aggiunti.';
	@override String get signInWithPlexCardSubtitleScoped => 'Autorizza un account Plex. Gli utenti Home diventano profili.';
	@override String connectToMediaBrowserCard({required Object product}) => 'Connettiti a ${product}';
	@override String get connectToMediaBrowserCardSubtitle => 'Inserisci l\'URL del server, il nome utente e la password.';
	@override String connectToMediaBrowserCardSubtitleScoped({required Object product, required Object name}) => 'Accedi al tuo server ${product}. Associato a ${name}.';
	@override String get borrowFromAnotherProfile => 'Prendi in prestito da un altro profilo';
	@override String get borrowFromAnotherProfileSubtitle => 'Riutilizza la connessione di un altro profilo. I profili protetti da PIN richiedono un PIN.';
	@override String get invalidCredentials => 'Nome utente o password non validi';
	@override String get authResponseNotJson => 'La risposta di autenticazione non era un JSON valido';
	@override String get authResponseIncomplete => 'La risposta di accesso del server era incompleta';
	@override String get quickConnectRejected => 'Quick Connect è stato rifiutato dal server';
	@override String get quickConnectNotJson => 'La risposta di Quick Connect non era un JSON valido';
	@override String get quickConnectMissingFields => 'Nella risposta di Quick Connect manca un codice o un segreto';
	@override String get quickConnectPollRejected => 'Il polling di Quick Connect è stato rifiutato dal server';
	@override String get serverTimedOut => 'Il server non ha risposto in tempo';
	@override String get responseNotJson => 'La risposta del server non era un JSON valido';
	@override String responseMissingIdentity({required Object product}) => 'Nella risposta manca un ID o il nome del server: è un server ${product}?';
	@override String probeFailed({required Object error}) => 'Impossibile raggiungere il server: ${error}';
	@override String enterAtLeastOneUrl({required Object product}) => 'Inserisci almeno un URL di un server ${product}';
	@override String noReachableServer({required Object product}) => 'Non è stato trovato alcun server ${product} raggiungibile';
	@override String urlsPointToDifferentServers({required Object product}) => 'Questi URL rimandano a server ${product} diversi';
	@override String urlDoesNotMatchServer({required Object product}) => 'Questo URL non corrisponde al server ${product}';
	@override String get redirectUnsupported => 'Il server ha reindirizzato a un URL non supportato';
	@override String redirectDifferentHost({required Object product}) => 'Il server ha reindirizzato a un host diverso. Inserisci direttamente l\'URL finale del server ${product}.';
	@override String get redirectInsecure => 'Il server ha reindirizzato da HTTPS a un URL non sicuro';
	@override String redirectUnsupportedEnterFinal({required Object product}) => 'Il server ha reindirizzato a un URL non supportato. Inserisci direttamente l\'URL finale del server ${product}.';
}

// Path: appIcon.names
class _Translations$appIcon$names$it extends Translations$appIcon$names$en {
	_Translations$appIcon$names$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get midnight => 'Mezzanotte';
	@override String get ember => 'Brace';
	@override String get paper => 'Carta';
	@override String get oled => 'OLED';
	@override String get line => 'Linea';
	@override String get ocean => 'Oceano';
	@override String get ultraviolet => 'Ultravioletto';
	@override String get matcha => 'Matcha';
	@override String get sunset => 'Tramonto';
	@override String get gold => 'Oro';
	@override String get titanium => 'Titanio';
	@override String get glass => 'Vetro';
	@override String get crt => 'CRT';
	@override String get vhs => 'VHS';
	@override String get synthwave => 'Synthwave';
	@override String get pixel => 'Pixel';
	@override String get neon => 'Neon';
	@override String get sticker => 'Adesivo';
	@override String get ticket => 'Biglietto';
	@override String get pop => 'Pop';
	@override String get strata => 'Strati';
	@override String get facet => 'Sfaccettatura';
	@override String get tilde => 'Tilde';
}

// Path: common.ratingSource
class _Translations$common$ratingSource$it extends Translations$common$ratingSource$en {
	_Translations$common$ratingSource$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get critic => 'Critici';
	@override String get audience => 'Pubblico';
	@override String get imdb => 'IMDb';
	@override String get tmdb => 'TMDB';
	@override String get rottenTomatoes => 'Rotten Tomatoes';
	@override String get simkl => 'Simkl';
	@override String get mal => 'MyAnimeList';
	@override String get anilist => 'AniList';
	@override String get trakt => 'Trakt';
	@override String get rottenTomatoesCritic => 'Critici di Rotten Tomatoes';
	@override String get rottenTomatoesAudience => 'Pubblico di Rotten Tomatoes';
	@override String get metacritic => 'Metacritic';
	@override String get letterboxd => 'Letterboxd';
}

// Path: common.mediaKind
class _Translations$common$mediaKind$it extends Translations$common$mediaKind$en {
	_Translations$common$mediaKind$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get movie => 'Film';
	@override String get show => 'Serie';
	@override String get season => 'Stagione';
	@override String get episode => 'Episodio';
	@override String get artist => 'Artista';
	@override String get album => 'Album';
	@override String get track => 'Traccia';
	@override String get collection => 'Raccolta';
	@override String get playlist => 'Playlist';
	@override String get clip => 'Clip';
	@override String get photo => 'Foto';
	@override String get folder => 'Cartella';
}

// Path: supporter.errors
class _Translations$supporter$errors$it extends Translations$supporter$errors$en {
	_Translations$supporter$errors$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get storeUnavailable => 'Gli acquisti non sono disponibili. Verifica di aver effettuato l\'accesso allo store e che gli acquisti siano consentiti su questo dispositivo.';
	@override String get productNotFound => 'L\'acquisto da Sostenitore non è al momento disponibile nel tuo negozio.';
	@override String get productQueryFailed => 'Impossibile caricare il prezzo. Controlla la connessione e riprova.';
	@override String get purchaseFailed => 'L\'acquisto non è andato a buon fine. Riprova.';
	@override String get restoreFailed => 'Impossibile raggiungere il negozio per ripristinare l\'acquisto. Riprova.';
	@override String get nothingToRestore => 'Nessun acquisto sostenitore trovato per questo account del negozio.';
}

// Path: themeEditor.slots
class _Translations$themeEditor$slots$it extends Translations$themeEditor$slots$en {
	_Translations$themeEditor$slots$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get bg => 'Sfondo';
	@override String get surface => 'Superficie';
	@override String get outline => 'Contorno';
	@override String get text => 'Testo';
	@override String get textMuted => 'Testo secondario';
	@override String get accent => 'Accento';
}

// Path: themeEditor.contrast
class _Translations$themeEditor$contrast$it extends Translations$themeEditor$contrast$en {
	_Translations$themeEditor$contrast$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get textOnBg => 'Testo sullo sfondo';
	@override String get textOnSurface => 'Testo sulla superficie';
	@override String get textMutedOnBg => 'Testo secondario sullo sfondo';
	@override String get textMutedOnSurface => 'Testo secondario sulla superficie';
	@override String get accentOnBg => 'Accento sullo sfondo';
	@override String get accentOnSurface => 'Accento sulla superficie';
	@override String get labelOnAccent => 'Etichetta del pulsante sull\'accento';
}

// Path: hotkeys.actions
class _Translations$hotkeys$actions$it extends Translations$hotkeys$actions$en {
	_Translations$hotkeys$actions$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get playPause => 'Riproduci/Pausa';
	@override String get volumeUp => 'Alza volume';
	@override String get volumeDown => 'Abbassa volume';
	@override String seekForward({required Object seconds}) => 'Avanti (${seconds}s)';
	@override String seekBackward({required Object seconds}) => 'Indietro (${seconds}s)';
	@override String get fullscreenToggle => 'Attiva/disattiva schermo intero';
	@override String get muteToggle => 'Attiva/disattiva audio';
	@override String get subtitleToggle => 'Attiva/disattiva sottotitoli';
	@override String get audioTrackNext => 'Traccia audio successiva';
	@override String get subtitleTrackNext => 'Sottotitoli successivi';
	@override String get chapterNext => 'Capitolo successivo';
	@override String get chapterPrevious => 'Capitolo precedente';
	@override String get episodeNext => 'Episodio successivo';
	@override String get episodePrevious => 'Episodio precedente';
	@override String get speedIncrease => 'Aumenta velocità';
	@override String get speedDecrease => 'Diminuisci velocità';
	@override String get speedReset => 'Ripristina velocità';
	@override String get zoomIn => 'Aumenta zoom';
	@override String get zoomOut => 'Riduci zoom';
	@override String get zoomReset => 'Ripristina zoom';
	@override String get subSeekNext => 'Vai al sottotitolo successivo';
	@override String get subSeekPrev => 'Vai al sottotitolo precedente';
	@override String get shaderToggle => 'Attiva/disattiva shader';
	@override String get skipMarker => 'Salta intro/titoli di coda';
	@override String get screenshot => 'Cattura schermata';
}

// Path: videoControls.pipErrors
class _Translations$videoControls$pipErrors$it extends Translations$videoControls$pipErrors$en {
	_Translations$videoControls$pipErrors$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get androidVersion => 'Richiede Android 8.0 o versioni successive';
	@override String get iosVersion => 'Richiede iOS 15.0 o versioni successive';
	@override String get permissionDisabled => 'La modalità Picture-in-Picture è disattivata. Attivala nelle impostazioni di sistema.';
	@override String get notSupported => 'Questo dispositivo non supporta la modalità Picture-in-Picture';
	@override String get voSwitchFailed => 'Impossibile cambiare l\'uscita video per Picture-in-Picture';
	@override String get failed => 'Impossibile avviare la modalità Picture-in-Picture';
	@override String get prepareFailed => 'Impossibile preparare la modalità Picture-in-Picture';
	@override String unknown({required Object error}) => 'Si è verificato un errore: ${error}';
}

// Path: accountPreferences.groups
class _Translations$accountPreferences$groups$it extends Translations$accountPreferences$groups$en {
	_Translations$accountPreferences$groups$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get audioAndSubtitles => 'Audio e sottotitoli';
	@override String get libraryDisplay => 'Libreria';
	@override String get personalMedia => 'Media personali';
}

// Path: accountPreferences.subtitleModes
class _Translations$accountPreferences$subtitleModes$it extends Translations$accountPreferences$subtitleModes$en {
	_Translations$accountPreferences$subtitleModes$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get none => 'Selezionati manualmente';
	@override String get noneDescription => 'Non attivare mai i sottotitoli automaticamente.';
	@override String get defaultMode => 'Segui le flag della traccia';
	@override String get defaultModeDescription => 'Usa le flag predefinite e forzate salvate su ogni traccia di sottotitoli.';
	@override String get always => 'Sempre attivi';
	@override String get alwaysDescription => 'Attiva una traccia di sottotitoli nella lingua preferita quando disponibile.';
	@override String get onlyForced => 'Solo sottotitoli forzati';
	@override String get onlyForcedDescription => 'Carica solo le tracce contrassegnate come forzate.';
	@override String get smart => 'Mostrati con audio straniero';
	@override String get smartDescription => 'Attiva i sottotitoli solo quando l\'audio è in un\'altra lingua.';
}

// Path: accountPreferences.subtitleAccessibilityOptions
class _Translations$accountPreferences$subtitleAccessibilityOptions$it extends Translations$accountPreferences$subtitleAccessibilityOptions$en {
	_Translations$accountPreferences$subtitleAccessibilityOptions$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get preferNonSdh => 'Preferisci i sottotitoli non SDH';
	@override String get preferSdh => 'Preferisci i sottotitoli SDH';
	@override String get onlySdh => 'Solo sottotitoli SDH';
	@override String get onlyNonSdh => 'Solo sottotitoli non SDH';
}

// Path: accountPreferences.forcedSubtitleOptions
class _Translations$accountPreferences$forcedSubtitleOptions$it extends Translations$accountPreferences$forcedSubtitleOptions$en {
	_Translations$accountPreferences$forcedSubtitleOptions$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get preferNonForced => 'Preferisci i sottotitoli non forzati';
	@override String get preferForced => 'Preferisci i sottotitoli forzati';
	@override String get onlyForced => 'Solo sottotitoli forzati';
	@override String get onlyNonForced => 'Solo sottotitoli non forzati';
}

// Path: accountPreferences.watchedIndicatorOptions
class _Translations$accountPreferences$watchedIndicatorOptions$it extends Translations$accountPreferences$watchedIndicatorOptions$en {
	_Translations$accountPreferences$watchedIndicatorOptions$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get none => 'Mai';
	@override String get moviesAndShows => 'Film e serie TV';
	@override String get movies => 'Solo film';
	@override String get shows => 'Solo serie TV';
}

// Path: accountPreferences.mediaReviewsOptions
class _Translations$accountPreferences$mediaReviewsOptions$it extends Translations$accountPreferences$mediaReviewsOptions$en {
	_Translations$accountPreferences$mediaReviewsOptions$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get usersAndCritics => 'Utenti e critici';
	@override String get usersOnly => 'Solo utenti';
	@override String get criticsOnly => 'Solo critici';
	@override String get nobody => 'Nascoste';
}

// Path: discover.person
class _Translations$discover$person$it extends Translations$discover$person$en {
	_Translations$discover$person$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get born => 'Nato';
	@override String get died => 'Morto';
	@override String get birthplace => 'Luogo di nascita';
	@override String dateWithAge({required Object date, required Object age}) => '${date} (all\'età di ${age} anni)';
	@override String dateWithAgeAtDeath({required Object date, required Object age}) => '${date} (deceduto all\'età di ${age} anni)';
}

// Path: libraries.tabs
class _Translations$libraries$tabs$it extends Translations$libraries$tabs$en {
	_Translations$libraries$tabs$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get recommended => 'Consigliati';
	@override String get browse => 'Esplora';
	@override String get collections => 'Raccolte';
	@override String get playlists => 'Playlist';
}

// Path: libraries.groupings
class _Translations$libraries$groupings$it extends Translations$libraries$groupings$en {
	_Translations$libraries$groupings$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Raggruppa per';
	@override String get all => 'Tutti';
	@override String get movies => 'Film';
	@override String get shows => 'Serie TV';
	@override String get seasons => 'Stagioni';
	@override String get episodes => 'Episodi';
	@override String get artists => 'Artisti';
	@override String get albums => 'Album';
	@override String get tracks => 'Brani';
	@override String get folders => 'Cartelle';
}

// Path: libraries.filterCategories
class _Translations$libraries$filterCategories$it extends Translations$libraries$filterCategories$en {
	_Translations$libraries$filterCategories$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get genre => 'Genere';
	@override String get year => 'Anno';
	@override String get contentRating => 'Classificazione per età';
	@override String get tag => 'Tag';
	@override String get unwatched => 'Non visti';
	@override String get unplayed => 'Non riprodotti';
	@override String get favorites => 'Preferiti';
	@override String get filePath => 'Percorso file';
}

// Path: libraries.sortLabels
class _Translations$libraries$sortLabels$it extends Translations$libraries$sortLabels$en {
	_Translations$libraries$sortLabels$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Titolo';
	@override String get dateAdded => 'Data di aggiunta';
	@override String get releaseDate => 'Data di uscita';
	@override String get rating => 'Valutazione';
	@override String get communityRating => 'Valutazione della comunità';
	@override String get criticRating => 'Valutazione critica';
	@override String get userRating => 'Valutazione utente';
	@override String get datePlayed => 'Data di riproduzione';
	@override String get playCount => 'Riproduzioni';
	@override String get productionYear => 'Anno di produzione';
	@override String get runtime => 'Durata';
	@override String get officialRating => 'Classificazione ufficiale';
	@override String get premiereDate => 'Data di première';
	@override String get startDate => 'Data di inizio';
	@override String get airTime => 'Orario di messa in onda';
	@override String get studio => 'Studio';
	@override String get random => 'Casuale';
	@override String get dateShared => 'Data di condivisione';
	@override String get latestEpisodeAirDate => 'Data di trasmissione dell\'ultimo episodio';
	@override String get lastEpisodeDateAdded => 'Data di aggiunta dell\'ultimo episodio';
	@override String get dateDownloaded => 'Data di download';
	@override String get size => 'Dimensione';
	@override String get library => 'Libreria';
}

// Path: libraries.advancedFilters
class _Translations$libraries$advancedFilters$it extends Translations$libraries$advancedFilters$en {
	_Translations$libraries$advancedFilters$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get include => 'Includi';
	@override String get exclude => 'Escludi';
	@override String get any => 'Qualunque';
	@override String get yes => 'Sì';
	@override String get no => 'No';
	@override String not({required Object value}) => 'Non ${value}';
	@override String valueCount({required Object count}) => '${count} selezionati';
	@override String valueCountExcluded({required Object count}) => '${count} esclusi';
	@override String get searchValues => 'Cerca valori';
	@override String get noValues => 'Nessun valore';
	@override String get matchContains => 'Contiene';
	@override String get matchNotContains => 'Non contiene';
	@override String get matchIs => 'Lo è';
	@override String get matchIsNot => 'Non lo è';
	@override String get matchBeginsWith => 'Inizia con';
	@override String get matchEndsWith => 'Termina con';
	@override String get textHint => 'Digita per abbinare';
	@override String get from => 'Da';
	@override String get to => 'A';
	@override String range({required Object from, required Object to}) => 'Da ${from} a ${to}';
	@override String atLeast({required Object value}) => '${value} e versioni successive';
	@override String atMost({required Object value}) => 'Fino a ${value}';
	@override String dateLastDays({required Object count}) => 'Ultimi ${count} giorni';
	@override String get dateLastYear => 'L\'anno scorso';
	@override String dateOlderThanDays({required Object count}) => 'Più vecchio di ${count} giorni';
	@override String get dateOlderThanYear => 'Più vecchio di un anno';
}

// Path: explore.rows
class _Translations$explore$rows$it extends Translations$explore$rows$en {
	_Translations$explore$rows$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get watchlist => 'Lista da guardare';
	@override String get recommendedMovies => 'Film consigliati';
	@override String get recommendedShows => 'Serie TV consigliate';
	@override String get trendingMovies => 'Film di tendenza';
	@override String get trendingShows => 'Serie TV di tendenza';
	@override String get popularMovies => 'Film popolari';
	@override String get popularShows => 'Serie TV popolari';
	@override String get trendingAnime => 'Anime di tendenza';
	@override String get suggestedAnime => 'Anime suggeriti';
	@override String get airingAnime => 'Migliori anime in onda';
	@override String get popularAnime => 'Anime più popolari';
	@override String get trending => 'Di tendenza';
	@override String get upcomingMovies => 'Film in arrivo';
	@override String get upcomingShows => 'Serie TV in arrivo';
}

// Path: explore.status
class _Translations$explore$status$it extends Translations$explore$status$en {
	_Translations$explore$status$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get airing => 'In onda';
	@override String get ended => 'Conclusa';
	@override String get canceled => 'Cancellata';
	@override String get upcoming => 'In arrivo';
}

// Path: explore.badge
class _Translations$explore$badge$it extends Translations$explore$badge$en {
	_Translations$explore$badge$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String rankPopular({required Object n}) => '#${n} popolari';
	@override String rankAiring({required Object n}) => '#${n} in onda';
	@override String rankRated({required Object n}) => '#${n} valutati';
	@override String rankTrending({required Object n}) => '#${n} di tendenza';
	@override String rankSeasonal({required Object n, required Object season}) => '#${n} in ${season}';
	@override String watchingNow({required Object n}) => '${n} in visione';
	@override String get available => 'Disponibile';
	@override String get partiallyAvailable => 'Parzialmente disponibile';
	@override String get availableIn4k => 'Disponibile in 4K';
	@override String get requested => 'Richiesto';
	@override String get pendingApproval => 'In attesa di approvazione';
	@override String get processing => 'In elaborazione';
	@override String get declined => 'Rifiutato';
	@override String get requestFailed => 'Richiesta non riuscita';
	@override String get requested4k => 'Richiesto in 4K';
	@override String seasonsAvailable({required Object available, required Object total}) => '${available}/${total} stagioni';
	@override String nextEpisodeIn({required Object episode, required Object duration}) => 'Ep ${episode} tra ${duration}';
	@override String nextAiringIn({required Object duration}) => 'Prossimo tra ${duration}';
	@override String episodesShort({required Object n}) => '${n} ep';
	@override String minutesPerEpisode({required Object n}) => '${n} min/ep';
	@override String get adult => '18+';
}

// Path: explore.stats
class _Translations$explore$stats$it extends Translations$explore$stats$en {
	_Translations$explore$stats$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String listed({required Object n}) => '${n} in elenco';
	@override String viewersDay({required Object n}) => '${n} guardati oggi';
	@override String viewersWeek({required Object n}) => '${n} guardati questa settimana';
	@override String viewersMonth({required Object n}) => '${n} guardati questo mese';
	@override String viewersYear({required Object n}) => '${n} guardati quest\'anno';
	@override String viewersAllTime({required Object n}) => '${n} spettatori';
	@override String planning({required Object n}) => '${n} hanno in programma di guardarlo';
	@override String favorited({required Object n}) => '${n} preferiti';
	@override String dropRate({required Object percent}) => '${percent} lo ha abbandonato';
	@override String comments({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n,
		one: '${n} commento',
		other: '${n} commenti',
	);
	@override String votes({required Object n}) => '${n} voti';
	@override String watching({required Object n}) => '${n} lo stanno guardando';
	@override String completed({required Object n}) => '${n} completati';
	@override String onHold({required Object n}) => '${n} in pausa';
	@override String dropped({required Object n}) => '${n} abbandonati';
}

// Path: explore.season
class _Translations$explore$season$it extends Translations$explore$season$en {
	_Translations$explore$season$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get winter => 'Inverno';
	@override String get spring => 'Primavera';
	@override String get summer => 'Estate';
	@override String get fall => 'Autunno';
	@override String withYear({required Object season, required Object year}) => '${season} ${year}';
}

// Path: explore.format
class _Translations$explore$format$it extends Translations$explore$format$en {
	_Translations$explore$format$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get tv => 'TV';
	@override String get tvShort => 'Cortometraggio TV';
	@override String get movie => 'Film';
	@override String get special => 'Speciale';
	@override String get ova => 'OVA';
	@override String get ona => 'ONA';
	@override String get music => 'Musica';
	@override String get other => 'Altro';
}

// Path: explore.sourceMaterial
class _Translations$explore$sourceMaterial$it extends Translations$explore$sourceMaterial$en {
	_Translations$explore$sourceMaterial$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get original => 'Originale';
	@override String get manga => 'Manga';
	@override String get lightNovel => 'Light novel';
	@override String get novel => 'Romanzo';
	@override String get visualNovel => 'Visual novel';
	@override String get game => 'Videogioco';
	@override String get webComic => 'Fumetto web';
	@override String get musicRelease => 'Musica';
	@override String get otherMedia => 'Altro';
}

// Path: explore.creditRole
class _Translations$explore$creditRole$it extends Translations$explore$creditRole$en {
	_Translations$explore$creditRole$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get actor => 'Attore';
	@override String get director => 'Regista';
	@override String get writer => 'Sceneggiatore';
	@override String get producer => 'Produttore';
	@override String get creator => 'Creatore';
	@override String get composer => 'Compositore';
}

// Path: explore.relation
class _Translations$explore$relation$it extends Translations$explore$relation$en {
	_Translations$explore$relation$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get prequel => 'Prequel';
	@override String get sequel => 'Sequel';
	@override String get sideStory => 'Storia secondaria';
	@override String get spinOff => 'Spin-off';
	@override String get alternativeVersion => 'Versione alternativa';
	@override String get summary => 'Riepilogo';
	@override String get parentStory => 'Storia originale';
	@override String get adaptation => 'Adattamento';
	@override String get other => 'Correlati';
}

// Path: explore.detail
class _Translations$explore$detail$it extends Translations$explore$detail$en {
	_Translations$explore$detail$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get originalTitle => 'Titolo originale';
	@override String get alsoKnownAs => 'Conosciuto anche come';
	@override String get studios => 'Studi';
	@override String get country => 'Paese';
	@override String get language => 'Lingua';
	@override String get released => 'Uscito';
	@override String get physicalRelease => 'Su disco';
	@override String get ended => 'Concluso';
	@override String addedOn({required Object date}) => 'Aggiunto ${date}';
	@override String get yourRating => 'La tua valutazione';
	@override String get budget => 'Budget';
	@override String get revenue => 'Incassi';
	@override String get contentAdvisory => 'Guida all\'età';
	@override String get tags => 'Tag';
	@override String get revealSpoilerTags => 'Mostra tag spoiler';
	@override String get links => 'Link';
	@override String get watchOn => 'Guarda su';
	@override String get watchTrailer => 'Guarda trailer';
	@override String openOn({required Object site}) => 'Apri su ${site}';
	@override String get crew => 'Cast tecnico';
	@override String get ratings => 'Valutazioni';
	@override String get schedule => 'Programmazione';
	@override String recommendedByUsers({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n,
		one: 'Consigliato da ${n} utente',
		other: 'Consigliato da ${n} utenti',
	);
	@override String recommendedBy({required Object who}) => 'Consigliato da ${who}';
	@override String favoritedBy({required Object who}) => 'Preferito da ${who}';
	@override String unairedEpisodes({required Object n}) => '${n} non ancora in onda';
	@override String recommendedByPercent({required Object percent}) => 'Consigliato dal ${percent} degli spettatori';
	@override String get relatedTitles => 'Titoli correlati';
	@override String get background => 'Contesto';
}

// Path: liveTv.recordSettings
class _Translations$liveTv$recordSettings$it extends Translations$liveTv$recordSettings$en {
	_Translations$liveTv$recordSettings$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get startEarly => 'Inizia in anticipo (secondi)';
	@override String get endLate => 'Termina in ritardo (secondi)';
	@override String get newOnly => 'Solo nuovi episodi';
	@override String get anyChannel => 'Registra su qualsiasi canale';
	@override String get anyTime => 'Registra a qualsiasi ora';
	@override String get skipInLibrary => 'Salta gli episodi già presenti nella libreria';
	@override String get keepUpTo => 'Episodi da conservare';
	@override String get keepUpToHint => '0 conserva tutti gli episodi';
}

// Path: music.discography
class _Translations$music$discography$it extends Translations$music$discography$en {
	_Translations$music$discography$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get singlesAndEps => 'Singoli ed EP';
	@override String get live => 'Dal vivo';
	@override String get compilations => 'Compilation';
}

// Path: watchTogether.notices
class _Translations$watchTogether$notices$it extends Translations$watchTogether$notices$en {
	_Translations$watchTogether$notices$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String pressedPlay({required Object name}) => '${name} ha premuto Riproduci';
	@override String get playbackStarted => 'La riproduzione è iniziata';
	@override String paused({required Object name}) => '${name} ha messo in pausa';
	@override String get playbackPaused => 'La riproduzione è stata messa in pausa';
	@override String jumpedTo({required Object name, required Object position}) => '${name} è passato a ${position}';
	@override String roomJumpedTo({required Object position}) => 'Passato a ${position}';
	@override String changedSpeed({required Object name, required Object speed}) => '${name} ha impostato la velocità a ${speed}';
	@override String speedChanged({required Object speed}) => 'Velocità impostata su ${speed}';
	@override String startedMedia({required Object name, required Object title}) => '${name} ha avviato ${title}';
	@override String mediaStarted({required Object title}) => 'Ora sto giocando a ${title}';
	@override String stoppedMedia({required Object name}) => '${name} ha interrotto il video';
	@override String get mediaStopped => 'Il video si è interrotto';
	@override String waitingFor({required Object name}) => 'In attesa di ${name}...';
	@override String get waitingForSomeone => 'Aspetto che qualcuno si riprenda...';
	@override String get finished => 'Finito';
	@override String hostChangedTo({required Object name}) => '${name} è ora l\'host';
	@override String get youAreNowHost => 'Ora sei l\'host';
	@override String joined({required Object name}) => '${name} si è unito';
	@override String left({required Object name}) => '${name} se ne è andato';
	@override String get controlRefused => 'Solo l\'host può controllare la riproduzione';
	@override String get searchFailed => 'Impossibile cercare il video della stanza in alcuni server';
	@override String get playBlocked => 'Premi Riproduci per iniziare';
	@override String get shareFailed => 'Impossibile condividere questo video con la stanza';
	@override String get notShared => 'I video scaricati non vengono condivisi con la stanza';
	@override String get openFailed => 'Impossibile aprire il video della stanza';
}

// Path: watchTogether.ended
class _Translations$watchTogether$ended$it extends Translations$watchTogether$ended$en {
	_Translations$watchTogether$ended$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get ended => 'L\'ospite ha chiuso la stanza';
	@override String get kicked => 'Sei stato rimosso dalla stanza';
	@override String get expired => 'La stanza è scaduta';
	@override String get replaced => 'Ti sei unito a questa stanza virtuale su un altro dispositivo';
	@override String get lost => 'Persa la connessione alla stanza';
}

// Path: watchTogether.errors
class _Translations$watchTogether$errors$it extends Translations$watchTogether$errors$en {
	_Translations$watchTogether$errors$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get invalidCode => 'Non è un codice della camera. I codici sono composti da 6 lettere e cifre, senza 0, 1, I, L o O.';
	@override String get roomNotFound => 'Nessuna stanza ha quel codice. Potrebbe essere finita.';
	@override String get roomFull => 'Quella stanza è piena.';
	@override String get roomLocked => 'L\'ospite ha chiuso a chiave quella stanza.';
	@override String get relayFull => 'Watch Together è occupato in questo momento. Riprova più tardi.';
	@override String get unreachable => 'Impossibile raggiungere il relè Watch Together. Controlla la tua connessione.';
	@override String get rateLimited => 'Troppi tentativi. Aspetta un attimo e riprova.';
	@override String get clientBlocked => 'Questa versione di Luroka non può utilizzare il relè. Aggiorna l\'app.';
	@override String get forbidden => 'Solo l\'host può farlo.';
	@override String get notInRoom => 'Non sei in una stanza.';
	@override String get alreadyInRoom => 'Sei già in una stanza.';
	@override String get resumeFailed => 'Impossibile rientrare nella stanza.';
	@override String get unsupported => 'Il relè non lo supporta.';
	@override String get generic => 'Qualcosa è andato storto. Riprova.';
}

// Path: downloads.backgroundWarning
class _Translations$downloads$backgroundWarning$it extends Translations$downloads$backgroundWarning$en {
	_Translations$downloads$backgroundWarning$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get bannerBlocked => 'I download si interromperanno quando esci dall’app';
	@override String get bannerDegraded => 'I download in background potrebbero essere limitati';
	@override String get bannerAction => 'Dettagli';
	@override String get sheetTitle => 'I download in background sono bloccati';
	@override String get sheetTitleDegraded => 'I download in background potrebbero essere limitati';
	@override String get sheetIntro => 'Android impedisce a Luroka di scaricare in modo affidabile in background.';
	@override String get sheetIntroDegraded => 'Il dispositivo limita i momenti in cui Luroka può scaricare in background.';
	@override String get reasonBackgroundRestricted => 'L’uso in background di Luroka è limitato. Nelle impostazioni della batteria o dell’uso in background, seleziona «Senza restrizioni».';
	@override String get reasonStandbyRestricted => 'Android ha messo Luroka in uno stato di standby con restrizioni. Imposta l’uso della batteria su «Senza restrizioni».';
	@override String get reasonDownloadChannelBlocked => 'Le notifiche dei download sono disattivate, quindi l’avanzamento e i controlli potrebbero non essere disponibili.';
	@override String get reasonNotificationsDisabled => 'Le notifiche sono disattivate. Su Android 13 o versioni successive sono necessarie per i download prolungati in background.';
	@override String get reasonDataSaver => 'Il Risparmio dati è attivo e blocca i download in background tramite dati mobili. I download dovrebbero comunque funzionare su Wi-Fi.';
	@override String get reasonOemUnknown => 'I download si sono interrotti più volte mentre Luroka era in background. Controlla le impostazioni della batteria o dell’uso in background di Luroka.';
	@override String get openSettings => 'Apri le impostazioni';
	@override String get stillNotWorking => 'Guida specifica per il dispositivo';
	@override String get stillNotWorkingDescription => 'Consulta la procedura per il tuo dispositivo oppure invia un log da Impostazioni › Visualizza i log se il problema persiste.';
	@override String get dialogTitle => 'I download potrebbero non terminare';
	@override String get dialogDownloadAnyway => 'Scarica comunque';
	@override String get dialogFixFirst => 'Risolvi prima';
	@override String get statusTile => 'Download in background';
	@override String get statusOk => 'Esecuzione in background consentita';
	@override String get statusBlocked => 'Bloccati dalle impostazioni di sistema';
	@override String get statusDegraded => 'Limitati dalle impostazioni di sistema';
	@override String get statusUnknown => 'Non ancora verificato';
	@override String get settingsUnavailable => 'Impossibile aprire le impostazioni di sistema su questo dispositivo';
	@override String get linkUnavailable => 'Impossibile aprire dontkillmyapp.com su questo dispositivo';
}

// Path: downloads.groupings
class _Translations$downloads$groupings$it extends Translations$downloads$groupings$en {
	_Translations$downloads$groupings$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get library => 'Libreria';
	@override String get collections => 'Collezioni';
}

// Path: companionRemote.session
class _Translations$companionRemote$session$it extends Translations$companionRemote$session$en {
	_Translations$companionRemote$session$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get startingServer => 'Avvio del server remoto...';
	@override String get hostAddress => 'Indirizzo host';
	@override String get connected => 'Connesso';
	@override String get serverRunning => 'Server remoto attivo';
	@override String get serverStopped => 'Server remoto arrestato';
	@override String get serverRunningDescription => 'I dispositivi mobili della tua rete possono connettersi a questa app';
	@override String get serverStoppedDescription => 'Avvia il server per consentire ai dispositivi mobili di connettersi';
	@override String get usePhoneToControl => 'Usa il tuo dispositivo mobile per controllare questa app';
	@override String get startServer => 'Avvia server';
	@override String get stopServer => 'Arresta server';
	@override String get minimize => 'Riduci';
	@override String get manualAddressHint => 'Indirizzo di connessione manuale:';
}

// Path: companionRemote.pairing
class _Translations$companionRemote$pairing$it extends Translations$companionRemote$pairing$en {
	_Translations$companionRemote$pairing$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get discoveryDescription => 'I dispositivi Luroka con lo stesso account Plex appaiono qui';
	@override String get hostAddressHint => '192.168.1.100:48632';
	@override String get connecting => 'Connessione...';
	@override String get searchingForDevices => 'Ricerca dispositivi...';
	@override String get noDevicesFound => 'Nessun dispositivo trovato nella tua rete';
	@override String get noDevicesHint => 'Apri Luroka sul computer e usa la stessa rete Wi-Fi';
	@override String get availableDevices => 'Dispositivi disponibili';
	@override String get manualConnection => 'Connessione manuale';
	@override String get cryptoInitFailed => 'Impossibile avviare la connessione sicura. Accedi prima a Plex.';
	@override String get validationHostRequired => 'Inserisci l\'indirizzo host';
	@override String get validationHostFormat => 'Il formato deve essere IP:porta (es. 192.168.1.100:48632)';
	@override String get connectionTimedOut => 'Tempo scaduto per la connessione. Usa la stessa rete su entrambi i dispositivi.';
	@override String get sessionNotFound => 'Dispositivo non trovato. Assicurati che Luroka sia in esecuzione sull\'host.';
	@override String get authFailed => 'Autenticazione non riuscita. Entrambi i dispositivi devono usare lo stesso account Plex.';
	@override String failedToConnect({required Object error}) => 'Connessione non riuscita: ${error}';
}

// Path: companionRemote.remote
class _Translations$companionRemote$remote$it extends Translations$companionRemote$remote$en {
	_Translations$companionRemote$remote$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get disconnectConfirm => 'Vuoi disconnetterti dalla sessione remota?';
	@override String get reconnecting => 'Riconnessione...';
	@override String attemptOf({required Object current}) => 'Tentativo ${current} di 5';
	@override String get retryNow => 'Riprova ora';
	@override String get tabRemote => 'Telecomando';
	@override String get tabPlay => 'Riproduci';
	@override String get tabMore => 'Altro';
	@override String get menu => 'Menu';
	@override String get tabNavigation => 'Navigazione';
	@override String get tabDiscover => 'Esplora';
	@override String get tabLibraries => 'Librerie';
	@override String get tabSearch => 'Cerca';
	@override String get tabDownloads => 'Download';
	@override String get tabSettings => 'Impostazioni';
	@override String get previous => 'Precedente';
	@override String get playPause => 'Riproduci/Pausa';
	@override String get next => 'Successivo';
	@override String get seekBack => 'Indietro';
	@override String get stop => 'Interrompi';
	@override String get seekForward => 'Avanti';
	@override String get volume => 'Volume';
	@override String get volumeDown => 'Abbassa';
	@override String get volumeUp => 'Alza';
	@override String get fullscreen => 'Schermo intero';
	@override String get subtitles => 'Sottotitoli';
	@override String get audio => 'Audio';
	@override String get searchHint => 'Cerca sul computer...';
}

// Path: companionRemote.errors
class _Translations$companionRemote$errors$it extends Translations$companionRemote$errors$en {
	_Translations$companionRemote$errors$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get noNetworkInterface => 'Nessuna interfaccia di rete trovata';
	@override String get authenticationFailed => 'Autenticazione non riuscita';
	@override String serverStartFailed({required Object error}) => 'Impossibile avviare il server remoto: ${error}';
	@override String commandFailed({required Object error}) => 'Impossibile inviare il comando remoto: ${error}';
	@override String get joinTimedOut => 'Tempo scaduto durante la partecipazione alla sessione';
	@override String get failedToConnectAnyAddress => 'Impossibile connettersi a qualsiasi indirizzo';
	@override String connectionLostAfterAttempts({required Object attempts}) => 'Connessione persa dopo ${attempts} tentativi';
	@override String get connectionLost => 'Connessione persa';
}

// Path: services.names
class _Translations$services$names$it extends Translations$services$names$en {
	_Translations$services$names$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get mal => 'MyAnimeList';
	@override String get anilist => 'AniList';
	@override String get simkl => 'Simkl';
	@override String get seerr => 'Seerr';
	@override String get mdblist => 'MDBList';
}

// Path: services.simklReconnect
class _Translations$services$simklReconnect$it extends Translations$services$simklReconnect$en {
	_Translations$services$simklReconnect$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ricollegare Simkl';
	@override String get subtitle => 'Simkl sta ritirando il metodo di accesso utilizzato da questa connessione. La riconnessione apre simkl.com per approvare Luroka — Luroka non vedrà mai la tua password. La tua cronologia visualizzazioni rimane su Simkl.';
}

// Path: services.deviceCode
class _Translations$services$deviceCode$it extends Translations$services$deviceCode$en {
	_Translations$services$deviceCode$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String title({required Object service}) => 'Attiva Luroka su ${service}';
	@override String get instructions => 'Scansiona il codice QR oppure visita l\'indirizzo qui sotto e inserisci questo codice:';
	@override String openToActivate({required Object service}) => 'Apri ${service} per attivare';
	@override String get copyCode => 'Copia il codice di attivazione';
	@override String get waitingForAuthorization => 'In attesa di autorizzazione…';
	@override String get codeCopied => 'Codice copiato';
}

// Path: services.oauthProxy
class _Translations$services$oauthProxy$it extends Translations$services$oauthProxy$en {
	_Translations$services$oauthProxy$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String title({required Object service}) => 'Accedi a ${service}';
	@override String get body => 'Scansiona questo codice QR o apri l\'URL su qualsiasi dispositivo.';
	@override String openToSignIn({required Object service}) => 'Apri ${service} per accedere';
}

// Path: services.pendingAuth
class _Translations$services$pendingAuth$it extends Translations$services$pendingAuth$en {
	_Translations$services$pendingAuth$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get copyUrl => 'Copia l\'URL di accesso';
	@override String get urlCopied => 'URL copiato';
}

// Path: services.libraryFilter
class _Translations$services$libraryFilter$it extends Translations$services$libraryFilter$en {
	_Translations$services$libraryFilter$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Filtro delle librerie';
	@override String get subtitleAllSyncing => 'Sincronizzazione di tutte le librerie';
	@override String get subtitleNoneSyncing => 'Nessuna sincronizzazione';
	@override String subtitleBlocked({required Object count}) => '${count} bloccate';
	@override String subtitleAllowed({required Object count}) => '${count} consentite';
	@override String get mode => 'Modalità filtro';
	@override String get modeBlacklist => 'Lista nera';
	@override String get modeWhitelist => 'Lista bianca';
	@override String get modeHintBlacklist => 'Sincronizza tutte le librerie tranne quelle selezionate qui sotto.';
	@override String get modeHintWhitelist => 'Sincronizza solo le librerie selezionate qui sotto.';
	@override String get libraries => 'Librerie';
	@override String get noLibraries => 'Nessuna libreria disponibile';
}

/// The flat map containing all translations for locale <it>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsIt {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'mobileLibrary.pickerSubtitle' => 'Scegli una raccolta da esplorare',
			'mobileLibrary.searchLibraries' => 'Cerca nelle biblioteche',
			'mobileLibrary.noLibraries' => 'Nessuna libreria corrispondente',
			'mobileLibrary.ascending' => 'Ascendente',
			'mobileLibrary.descending' => 'Discendente',
			'mobileLibrary.sort' => 'Ordina',
			'mobileLibrary.unwatchedCount' => ({required Object count}) => '${count} episodi non guardati',
			'mobileLibrary.latestEpisode' => 'Ultimo episodio',
			'profileStartup.autoLogin' => 'Apri l\'ultimo profilo utilizzato',
			'profileStartup.autoLoginHint' => 'Apre automaticamente l\'ultimo profilo quando non richiede PIN.',
			'profileStartup.allowKidsExit' => 'Consenti di uscire dal profilo Bambini senza il PIN genitore',
			'profileStartup.allowKidsExitHint' => 'Consente al bambino di passare a un altro profilo senza il PIN genitore. I PIN del profilo restano attivi.',
			'profileStartup.chooseKidsConnection' => 'Scegli un account o un server diverso',
			'profileStartup.chooseKidsConnectionHint' => 'Dopo aver salvato, collega un account separato o scegli una connessione da un altro profilo.',
			'subtitleUpload.chooseFile' => 'Carica il file dei sottotitoli',
			'subtitleUpload.hint' => 'Scegli la lingua sopra, quindi carica un file SRT, ASS, SSA o VTT su questo server.',
			'subtitleUpload.success' => 'Sottotitoli caricati sul server. Apparirà quando il server aggiorna l\'elemento.',
			'subtitleUpload.failed' => 'Impossibile caricare il sottotitolo. Controlla i permessi del file e del server.',
			'personSpotlight.inYourLibraries' => 'nelle vostre biblioteche',
			'personSpotlight.libraryTitles' => ({required Object n}) => 'Nelle tue librerie · Titoli ${n}',
			'personSpotlight.readBiography' => 'Leggi la biografia',
			'personSpotlight.newestFirst' => 'Prima il più recente',
			'personSpotlight.oldestFirst' => 'Prima il più vecchio',
			'personSpotlight.titleAscending' => 'Titolo dalla A alla Z',
			'personSpotlight.sortTitles' => 'Ordina la filmografia',
			'personSpotlight.unwatchedEpisodes' => ({required Object n}) => '${n} episodi non guardati',
			'personSpotlight.copies' => ({required Object n}) => 'Copie della libreria ${n}',
			'personSpotlight.versions' => ({required Object n}) => 'Versioni dei file ${n}',
			'personSpotlight.retryTitles' => 'Impossibile caricare tutti i titoli. Riprova',
			'detailExtras.onlineVideos' => 'Trailer ed extra',
			'detailExtras.reviews' => 'Recensioni',
			'detailExtras.readReview' => 'Leggi la recensione completa',
			'detailExtras.directedBy' => ({required Object name}) => 'Altro diretto da ${name}',
			'detailExtras.previewUnavailable' => 'Impossibile riprodurre questa anteprima. Puoi invece aprirlo nella sua app originale.',
			'detailExtras.openExternally' => 'Apri il video originale',
			'mobileUi.readMore' => 'Leggi di più',
			'mobileUi.readLess' => 'Mostra meno',
			'mobileUi.playbackTools' => 'Opzioni di riproduzione',
			'mobileUi.streamingQuality' => 'Qualità dello streaming',
			'mobileUi.fileVersions' => 'Versioni dei file',
			'mobileUi.qualityAndVersions' => 'Qualità dello streaming e versioni dei file',
			'mobileUi.hidePlaybackTools' => 'Nascondi strumenti di riproduzione',
			'mobileUi.remaining' => ({required Object time}) => '${time} a sinistra',
			'mobileUi.endsAt' => ({required Object time}) => 'Termina alle ${time}',
			'mobileUi.collection' => 'La tua collezione',
			'mobileUi.nowPlaying' => 'ORA GIOCANDO',
			'mobileUi.popularLibrary' => 'Popolare nella tua libreria',
			'mobileUi.weeklyLibrary' => 'Tendenze nella tua libreria questa settimana',
			'family.title' => 'Profili e famiglia',
			'family.yourPeople' => 'La tua gente',
			'family.manageHint' => 'Gestisci le persone, la sicurezza dei bambini e l\'attività di visualizzazione su questo dispositivo.',
			'family.people' => 'Persone',
			'family.peopleCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n, one: '${n} persona', other: '${n} persone', ), 
			'family.kidsCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n, one: '${n} bambino', other: '${n} bambini', ), 
			'family.you' => 'Tu',
			'family.adult' => 'Adulto',
			'family.child' => 'Bambino',
			'family.adultTeen' => 'Adulto o adolescente',
			'family.adultHint' => 'Il proprio profilo, il profilo opzionale PIN e le proprie connessioni al server.',
			'family.childHint' => 'Limiti di età, librerie sicure e un aspetto adatto ai bambini. Il PIN genitore protegge queste impostazioni.',
			'family.upToAge' => ({required Object age}) => 'Fino all\'età ${age}',
			'family.allAges' => 'Tutte le età',
			'family.switchProfile' => 'Cambia profilo',
			'family.switchHint' => 'Scegli chi sta guardando. La gestione di una persona non comporta il cambio di profilo.',
			'family.addPerson' => 'Aggiungi persona',
			'family.addChild' => 'Aggiungi bambino',
			'family.addHint' => 'Crea un profilo per adulti, adolescenti o bambini su questo dispositivo.',
			'family.emptyPeople' => 'Fai spazio a tutti coloro che guardano con te.',
			'family.emptyKids' => 'Nessun profilo per bambini ancora. Aggiungi un bambino per scegliere limiti di età e biblioteche sicure.',
			'family.safety' => 'Bambini e sicurezza',
			'family.safetyHint' => 'PIN genitore, profili per bambini e limiti di età.',
			'family.protection' => 'Protezione',
			'family.kidsProfiles' => 'Profili dei bambini',
			'family.backupHistory' => 'Backup e cronologia',
			'family.parentPinOn' => 'PIN genitore attivo',
			'family.profilePin' => 'PIN del profilo',
			'family.confirmParentPin' => 'Conferma il PIN genitore',
			'family.parentPinOff' => 'PIN genitore non impostato',
			'family.missingPin' => 'Aggiungi un PIN genitore per proteggere queste impostazioni.',
			'family.hideScope' => 'Nascondi l\'attività dei bambini da Continua a guardare in questo profilo Luroka. Ciò non modifica la cronologia visualizzazioni del server condiviso.',
			'family.localScope' => 'I profili e le restrizioni dei bambini sono archiviati su questo dispositivo. I profili che utilizzano lo stesso account server condividono comunque l\'avanzamento della visualizzazione di quell\'account.',
			'family.clearHistoryConfirm' => 'Consentire la visualizzazione dei titoli guardati dai bambini in Continuare a guardare di nuovo? I profili dei bambini, le restrizioni, le statistiche sul tempo di visualizzazione e la cronologia delle visualizzazioni del server verranno conservati.',
			'family.editRestrictions' => 'Modifica le restrizioni per i bambini',
			'family.activity' => 'Visualizzazione dell\'attività',
			'family.namedActivity' => ({required Object name}) => 'Attività di visualizzazione di ${name}',
			'family.thisProfile' => 'Questo profilo',
			'family.activityScope' => 'Tempo di riproduzione registrato da Luroka su questo dispositivo per il profilo attivo. Queste sono statistiche, non limiti di visualizzazione o cronologia completa del server.',
			'family.activityUnavailable' => 'L\'attività di visualizzazione non è ancora disponibile per questo profilo.',
			'family.finished' => 'Fatto',
			'posterDetails.showThemeMusic' => 'Riproduci musica a tema',
			'posterDetails.showThemeMusicDescription' => 'Riproduci il tema di un film o di un programma mentre la relativa pagina dei dettagli è aperta, se disponibile sul server.',
			'posterDetails.catalogEpisodeInfo' => 'Mostra il conteggio degli episodi e la durata sulle schede del catalogo',
			'posterDetails.catalogEpisodeInfoDescription' => 'Mostra il numero degli episodi e la durata media sui poster di Scopri.',
			'posterDetails.title' => 'Dettagli del manifesto',
			'posterDetails.description' => 'Mostra il titolo, l\'anno e la valutazione IMDb sotto i poster in Studio, Ricerca, Scopri e Biblioteche. Le valutazioni IMDb mancanti rimangono nascoste. Disattiva per i poster contenenti solo opere d\'arte.',
			'libraryPolish.posterDetails' => 'Dettagli del manifesto',
			'libraryPolish.showPosterDetails' => 'Mostra i dettagli del poster · nome, anno e IMDb',
			'libraryPolish.hidePosterDetails' => 'Nascondi i dettagli del poster',
			'libraryPolish.overview' => 'Panoramica',
			'libraryPolish.refreshing' => 'Aggiornamento della libreria…',
			'libraryPolish.serverCollections' => 'Tutte le raccolte su questo server',
			'libraryPolish.serverPlaylists' => 'Tutte le playlist video su questo server',
			'libraryPolish.libraryCollections' => 'Collezioni in questa libreria',
			'libraryPolish.searchCollections' => 'Cerca raccolte',
			'libraryPolish.searchPlaylists' => 'Cerca playlist',
			'libraryPolish.searchHint' => 'Cerca per nome',
			'libraryPolish.titleAscending' => 'Titolo dalla A alla Z',
			'libraryPolish.titleDescending' => 'Titolo Z-A',
			'libraryPolish.clearFilters' => 'Cancella filtri',
			'libraryPolish.playlistEmptyTitle' => 'Le tue serate di cinema, nel tuo ordine',
			'libraryPolish.playlistEmptyHint' => 'Apri il menu Altro di un titolo e scegli Aggiungi a playlist per creare la tua prima playlist.',
			'libraryPolish.noMatches' => 'Nessun nome corrispondente',
			'libraryPolish.indexing' => 'Ricerca nel catalogo completo…',
			'showSchedule.today' => 'Oggi',
			'showSchedule.tomorrow' => 'Domani',
			'showSchedule.latestUpcoming' => 'Ultimi e imminenti',
			'showSchedule.latestEpisode' => 'Ultimo episodio',
			'showSchedule.upcoming' => 'Prossimamente',
			'showSchedule.inLibrary' => 'Nella tua libreria',
			'showSchedule.notInLibrary' => 'Non nella tua libreria',
			'showSchedule.notYetAired' => 'Non ancora andato in onda',
			'showSchedule.episode' => ({required Object number}) => 'Episodio ${number}',
			'showSchedule.caughtUp' => 'Sei tutto preso',
			'showSchedule.finished' => 'Hai finito questa serie',
			'showSchedule.nextAirs' => ({required Object date}) => 'Il prossimo episodio va in onda ${date}',
			'showSchedule.watchBeginning' => 'Guarda dall\'inizio',
			'showSchedule.replay' => 'Riproduci',
			'showSchedule.playNext' => 'Gioca dopo',
			'awardsCatalog.awards' => 'Premi',
			'awardsCatalog.customize' => 'Personalizza',
			'awardsCatalog.chooseShelves' => 'Personalizza Scopri',
			'awardsCatalog.shelvesDescription' => 'Scegli le righe che desideri su Scopri. Le righe dei premi mostrano i vincitori delle tue librerie. Le tue scelte vengono salvate per questo profilo.',
			'awardsCatalog.restoreShelves' => 'Ripristina le impostazioni predefinite',
			'awardsCatalog.charts' => 'Grafici IMDb',
			'awardsCatalog.generalShelves' => 'Popolare e di tendenza',
			'awardsCatalog.saveShelvesFailed' => 'Impossibile salvare le scelte di Scopri. Per favore riprova.',
			'awardsCatalog.comedyActress' => 'Attrice protagonista · Commedia',
			'awardsCatalog.leadDramaActor' => 'Attore protagonista · Dramma',
			'awardsCatalog.leadDramaActress' => 'Attrice protagonista · Dramma',
			'awardsCatalog.comedySupportingActor' => 'Attore non protagonista · Commedia',
			'awardsCatalog.comedySupportingActress' => 'Attrice non protagonista · Commedia',
			'awardsCatalog.leadingPerformance' => 'Orso d\'argento · Miglior interpretazione da protagonista',
			'awardsCatalog.globesComedySeries' => 'Miglior serie televisiva · Musical o commedia',
			'awardsCatalog.limitedSupportingActor' => 'Attore non protagonista · Serie limitata o film',
			'awardsCatalog.limitedSupportingActress' => 'Attrice non protagonista · Miniserie o film',
			'awardsCatalog.berlinDocumentary' => 'Premio documentario alla Berlinale',
			'awardsCatalog.title' => 'Premi e festival',
			'awardsCatalog.chooseCategory' => 'Scegli una categoria di premio',
			'awardsCatalog.winners' => 'Vincitori',
			'awardsCatalog.nominees' => 'Candidati',
			'awardsCatalog.releaseDecade' => 'Decennio di rilascio',
			'awardsCatalog.allYears' => 'Tutti gli anni',
			'awardsCatalog.loading' => 'Caricamento dei titoli dei premi…',
			'awardsCatalog.matching' => 'Trovare questi titoli nelle vostre librerie…',
			'awardsCatalog.unavailable' => 'I dati sui premi non sono al momento disponibili. Riprova.',
			'awardsCatalog.empty' => 'Nessun titolo corrispondente nelle librerie visibili per questa categoria.',
			'awardsCatalog.coverage' => 'L\'iscrizione proviene da Wikidata e può essere incompleta. Le categorie attore e regista mostrano i film o gli spettacoli per cui sono stati premiati. Gli anni si riferiscono al rilascio del titolo, non alla cerimonia.',
			'awardsCatalog.picture' => 'Miglior film',
			'awardsCatalog.film' => 'Miglior film',
			'awardsCatalog.international' => 'Miglior lungometraggio internazionale',
			'awardsCatalog.internationalFilm' => 'Miglior film internazionale',
			'awardsCatalog.nonEnglishFilm' => 'Miglior film non in lingua inglese',
			'awardsCatalog.animated' => 'Miglior film d\'animazione',
			'awardsCatalog.animatedFilm' => 'Miglior film d\'animazione',
			'awardsCatalog.documentary' => 'Miglior lungometraggio documentario',
			'awardsCatalog.director' => 'Miglior regista',
			'awardsCatalog.actor' => 'Miglior attore',
			'awardsCatalog.actress' => 'Miglior attrice',
			'awardsCatalog.supportingActor' => 'Miglior attore non protagonista',
			'awardsCatalog.supportingActress' => 'Miglior attrice non protagonista',
			'awardsCatalog.originalScreenplay' => 'Miglior sceneggiatura originale',
			'awardsCatalog.adaptedScreenplay' => 'Miglior sceneggiatura adattata',
			'awardsCatalog.screenplay' => 'Miglior sceneggiatura',
			'awardsCatalog.cinematography' => 'Miglior fotografia',
			'awardsCatalog.editing' => 'Miglior montaggio',
			'awardsCatalog.score' => 'Miglior colonna sonora originale',
			'awardsCatalog.song' => 'Miglior canzone originale',
			'awardsCatalog.sound' => 'Miglior suono',
			'awardsCatalog.effects' => 'I migliori effetti visivi',
			'awardsCatalog.productionDesign' => 'Miglior scenografia',
			'awardsCatalog.costume' => 'Migliori costumi',
			'awardsCatalog.makeup' => 'Miglior trucco e acconciatura',
			'awardsCatalog.dramaSeries' => 'Serie drammatica eccezionale',
			'awardsCatalog.comedySeries' => 'Serie comica eccezionale',
			'awardsCatalog.limitedSeries' => 'Eccezionale serie limitata',
			'awardsCatalog.animatedProgram' => 'Eccezionale programma d\'animazione',
			'awardsCatalog.comedyActor' => 'Attore protagonista · Commedia',
			'awardsCatalog.limitedActor' => 'Attore protagonista · Serie limitata o film',
			'awardsCatalog.limitedActress' => 'Attrice protagonista · Miniserie o film',
			'awardsCatalog.limitedDirecting' => 'Regia · Serie limitata o film',
			'awardsCatalog.britishFilm' => 'Miglior film britannico',
			'awardsCatalog.goldenBear' => 'Orso d\'oro',
			'awardsCatalog.grandJury' => 'Gran Premio della Giuria',
			'awardsCatalog.jury' => 'Premio della Giuria',
			'awardsCatalog.teddy' => 'Premio Teddy',
			'awardsCatalog.goldenLion' => 'Leone d\'Oro',
			'awardsCatalog.volpiActor' => 'Coppa Volpi · Miglior Attore',
			'awardsCatalog.volpiActress' => 'Coppa Volpi · Miglior Attrice',
			'awardsCatalog.queerLion' => 'Leone strano',
			'awardsCatalog.dramaFilm' => 'Miglior film · Drammatico',
			'awardsCatalog.comedyFilm' => 'Miglior film · Musical o commedia',
			'awardsCatalog.dramaActor' => 'Miglior attore · Drammatico',
			'awardsCatalog.dramaActress' => 'Miglior attrice · Drammatico',
			'awardsCatalog.usDramatic' => 'Gran Premio della Giuria Drammatico statunitense',
			'awardsCatalog.documentaryJury' => 'Gran Premio della Giuria per il documentario',
			'awardsCatalog.worldCinema' => 'Gran Premio della Giuria del Cinema Mondiale',
			'awardsCatalog.dramaticAudience' => 'Premio del pubblico drammatico statunitense',
			'awardsCatalog.usDirecting' => 'Premio alla regia statunitense',
			'awardsCatalog.peopleChoice' => 'Premio People\'s Choice',
			'awardsCatalog.canadianFilm' => 'Miglior film canadese',
			'awardsCatalog.firstFeature' => 'Miglior opera prima',
			'awardsCatalog.cassavetes' => 'Premio John Cassavetes',
			'awardsCatalog.scienceFiction' => 'Miglior film di fantascienza',
			'awardsCatalog.fantasy' => 'Miglior film fantasy',
			'awardsCatalog.horror' => 'Miglior film horror',
			'awardsCatalog.action' => 'Miglior film d\'azione o d\'avventura',
			'awardsCatalog.thriller' => 'Miglior film thriller',
			'searchDiscovery.suggestions' => 'Qualcosa da guardare',
			'searchDiscovery.collections' => 'Premi e collezioni',
			'searchDiscovery.collectionsHint' => 'Vincitori di premi e grafici selezionati dalle tue biblioteche',
			'searchDiscovery.all' => 'Tutta scoperta',
			'searchDiscovery.awards' => 'Premi e classifiche',
			'lurokaPlayerDesign.seeking' => 'Cerca l\'anteprima',
			'lurokaPlayerDesign.keepWatching' => 'Continua a guardare',
			'lurokaPlayerDesign.upNext' => 'Il prossimo',
			'lurokaPlayerDesign.playingIn' => ({required Object seconds}) => 'Riproduzione in ${seconds} s',
			'lurokaWorkspace.everyday' => 'Tutti i giorni',
			'lurokaWorkspace.homeDiscovery' => 'Casa e scoperta',
			'lurokaWorkspace.librariesAccounts' => 'Biblioteche e conti',
			'lurokaWorkspace.profilesFamily' => 'Profili e famiglia',
			'lurokaWorkspace.thisDevice' => 'Questo dispositivo',
			'lurokaWorkspace.thisProfile' => 'Questo profilo',
			'lurokaWorkspace.searchSettings' => 'Impostazioni di ricerca',
			'lurokaWorkspace.savedAutomatically' => 'Le modifiche vengono salvate automaticamente. Ogni giorno e Avanzato cambiano solo i controlli mostrati.',
			'lurokaWorkspace.audioSubtitles' => 'Audio e sottotitoli',
			'lurokaWorkspace.audioDescription' => 'Uscita audio, volume e aspetto dei sottotitoli. Le lingue preferite vengono impostate per account server utilizzando le preferenze Account quando si è connessi.',
			'lurokaWorkspace.pictureSound' => 'Immagine e suono',
			'lurokaWorkspace.pictureDescription' => 'Corrispondenza frame rate, risoluzione, ottimizzazione HDR e Dolby Vision per questo dispositivo.',
			'lurokaWorkspace.engineDescription' => 'Motore del lettore, decodifica, configurazione personalizzata e regole di riproduzione avanzate.',
			'lurokaWorkspace.networkStreaming' => 'Rete e streaming',
			'lurokaWorkspace.networkDescription' => 'Qualità dello streaming, preferenze dei codec per la riproduzione diretta e scelte di larghezza di banda.',
			'lurokaWorkspace.homeOptions' => 'Opzioni per la casa',
			'lurokaWorkspace.refreshHome' => 'Aggiorna Home e Popolari adesso',
			'lurokaWorkspace.customizeHome' => 'Personalizza la casa',
			'lurokaWorkspace.spotlight' => 'Riflettori domestici',
			'lurokaWorkspace.rotateSpotlight' => 'Ruota automaticamente i titoli in primo piano',
			'lurokaWorkspace.rotateDescription' => 'Ruota mentre Home è inattivo. L\'interazione mette in pausa la rotazione; sfogliare gli scaffali, aprire una pagina o uscire dall\'app la mette completamente in pausa.',
			'lurokaWorkspace.rotationInterval' => 'Tempo tra i titoli in primo piano',
			'mobileFixes.connectionRecoveryHint' => 'Server non disponibile? Gestisci i tuoi account o connetti un altro server.',
			'downloadsRedesign.shelfSize' => 'Articoli per scaffale',
			'downloadsRedesign.shelfSizeHint' => 'Mostra 16, 32 o 48 articoli negli scaffali Continua a guardare e consigli. I server potrebbero restituire meno titoli disponibili.',
			'downloadsRedesign.subtitle' => 'I tuoi preferiti, pronti per il viaggio.',
			'downloadsRedesign.transfers' => 'Trasferimenti',
			'downloadsRedesign.ready' => 'Pronto offline',
			'downloadsRedesign.active' => 'Download in corso',
			'downloadsRedesign.waiting' => 'In attesa',
			'downloadsRedesign.downloaded' => 'Scaricato',
			'downloadsRedesign.speed' => 'Velocità di download',
			'downloadsRedesign.notificationProgress' => '{progress} · {networkSpeed} · {timeRemaining} rimanenti',
			'kidsShelf.movieShelf' => 'Tempo di film',
			'kidsShelf.showShelf' => 'Trova il tuo prossimo spettacolo',
			'kidsShelf.aurora' => 'Aurora: verde acqua intenso e lime',
			'kidsShelf.marquee' => 'Marquee: velluto e oro',
			'kidsShelf.electric' => 'Elettrico: indaco e ghiaccio',
			'kidsShelf.midnight' => 'Mezzanotte: acciaio e ambra',
			'kidsShelf.yourShelf' => 'Il tuo scaffale dei film',
			'kidsShelf.all' => 'Tutto',
			'kidsShelf.pickSomething' => 'Cosa vuoi guardare?',
			'kidsHome.everything' => 'Per te',
			'kidsHome.keepWatching' => 'Continua a guardare',
			'kidsHome.emptyFilter' => 'Niente qui ancora. Prova per te o chiedi a un adulto di aggiungere qualcosa che ami.',
			'tvSettingsV2.moreThemes' => 'Altri temi e colori personalizzati',
			'tvSettingsV2.moreThemesHint' => 'Apri tutte le preimpostazioni disponibili e le opzioni del tema personalizzato.',
			'tvSettingsV2.previewLive' => 'Anteprima dal vivo',
			'tvSettingsV2.previewIllustration' => 'Esempio di anteprima',
			'tvSettingsV2.previewShelfCount' => ({required Object count}) => 'Fino a ${count} articoli per ripiano',
			'tvSettingsV2.simple' => 'Semplice',
			'tvSettingsV2.homeNavigation' => 'Home e navigazione',
			'tvSettingsV2.libraryCards' => 'Biblioteca e carte',
			'tvSettingsV2.accountsLibraries' => 'Account e biblioteche',
			'tvSettingsV2.profilesFamily' => 'Profili e famiglia',
			'tvSettingsV2.aboutSupport' => 'Informazioni e supporto',
			'tvSettingsV2.playback' => 'Riproduzione',
			'tvSettingsV2.homeHint' => 'Scegli cosa appare sulla Home e nella navigazione.',
			'tvSettingsV2.libraryHint' => 'Regola le dimensioni dei poster, le etichette e gli indicatori osservati.',
			'tvSettingsV2.advancedPlayback' => 'Motore del lettore e streaming',
			'tvSettingsV2.advancedPlaybackHint' => 'Lettore, uscita video, streaming e scelte di riproduzione avanzate.',
			'tvSettingsV2.advancedTools' => 'Diagnostica e backup',
			'tvSettingsV2.advancedToolsHint' => 'Registri, risoluzione dei problemi, backup e ripristino delle impostazioni.',
			'tvSettingsV2.themePreview' => 'Anteprima del tema',
			'tvSettingsV2.libraryPreview' => 'Anteprima della libreria',
			'tvSettingsV2.homePreview' => 'Anteprima della casa',
			'tvSettingsV2.subtitlePreview' => 'Anteprima dei sottotitoli',
			'tvSettingsV2.subtitleSample' => 'I tuoi sottotitoli appariranno così.',
			'tvSettingsV2.previewPlaceholder' => 'La tua opera d\'arte appare qui',
			'tvSettingsV2.posterSize' => 'Dimensioni del manifesto',
			'tvSettingsV2.serverRecommendations' => 'Consigli per la casa dal tuo server',
			'tvSettingsV2.tvLayout' => 'Usa il layout TV',
			'tvSettingsV2.hardwareDecode' => 'Utilizza la decodifica video hardware',
			'tvSettingsV2.serverNames' => 'Mostra i nomi dei server nelle righe Home',
			'tvSettingsV2.settingsSaved' => 'Le modifiche vengono salvate automaticamente.',
			'tvSettingsV2.morePlayback' => 'Riproduzione avanzata',
			'tvSettingsV2.screenDisplay' => 'Immagine e suono',
			'tvSettingsV2.engine' => 'Motore del giocatore',
			'tvSettingsV2.network' => 'Streaming e rete',
			'tvSettingsV2.performance' => 'Prestazioni',
			'tvSettingsV2.simpleAudio' => 'Lingue e aspetto dei sottotitoli',
			'settingsRedesign.themeEffects' => 'Tema ed effetti',
			'settingsRedesign.libraryLayout' => 'Disposizione della biblioteca',
			'settingsRedesign.appearanceHint' => 'Personalizza l\'aspetto, il layout e il comportamento di Luroka.',
			'settingsRedesign.livePreview' => 'Anteprima dal vivo',
			'settingsRedesign.previewHint' => 'Guarda come apparirà la tua libreria con le impostazioni attuali.',
			'settingsRedesign.showLiveTv' => 'Mostra TV in diretta',
			'settingsRedesign.showLiveTvHint' => 'Mostra la TV in diretta nella navigazione quando un server connesso lo supporta. Questo non cambia il tuo server.',
			'settingsRedesign.aboutTagline' => 'I tuoi contenuti multimediali. Il tuo spazio.',
			'settingsRedesign.aboutDescription' => 'Luroka riunisce le tue librerie Plex, Jellyfin e Emby in un lettore cinematografico per telefoni, TV e desktop.',
			'settingsRedesign.aboutFeatures' => 'Sfoglia le tue raccolte, riprendi film e programmi, personalizza i profili, goditi i download e guardali insieme. La TV in diretta è disponibile con un server compatibile.',
			'settingsRedesign.services' => 'Connetti il tuo mondo',
			'settingsRedesign.updateSource' => 'Aggiorna fonte',
			'settingsRedesign.updateSourceHint' => 'Indirizzo HTTPS del tuo feed di rilascio Luroka. Il tuo distributore può preconfigurarlo nell\'app.',
			'settingsRedesign.updateNotConfigured' => 'Gli aggiornamenti automatici non sono configurati per questa build.',
			'settingsRedesign.downloadInstall' => 'Scarica e installa',
			'settingsRedesign.installUpdate' => 'Installa l\'aggiornamento',
			'settingsRedesign.downloading' => 'Download dell\'aggiornamento…',
			'settingsRedesign.downloadFailed' => 'Impossibile scaricare o verificare l\'aggiornamento. Per favore riprova.',
			'settingsRedesign.installPermission' => 'Consenti a Luroka di installare gli aggiornamenti nelle impostazioni Android, quindi torna indietro e seleziona Installa aggiornamento.',
			'settingsRedesign.updateReady' => 'Scarica verificato. Pronto per l\'installazione.',
			'settingsRedesign.releaseNotes' => 'Note sulla versione',
			'settingsRedesign.invalidFeed' => 'Inserisci un indirizzo del feed di aggiornamento HTTPS valido.',
			'onboarding.connectStep' => '01 · Connetti',
			'onboarding.connectTitle' => 'Benvenuto in Luroka',
			'onboarding.connectHint' => 'Accedi per portare qui le tue librerie.',
			'onboarding.serverAddressHint' => 'Inserisci l\'indirizzo del tuo server o scegli un server trovato sulla tua rete.',
			'onboarding.serverSignInHint' => 'Usa il nome utente e la password del tuo server per connettere le tue librerie.',
			'onboarding.serverAddressTitle' => 'Indirizzo del server',
			'onboarding.serverAccountTitle' => 'Il tuo account del server',
			'onboarding.plexHomeTitle' => 'Scegli il tuo utente domestico Plex',
			'onboarding.plexHomeHint' => 'Seleziona l\'utente Plex di cui desideri utilizzare le librerie. Successivamente configurerai il tuo profilo Luroka.',
			'onboarding.chooseService' => 'Scegli il tuo servizio',
			'onboarding.profileStep' => '02 · Il tuo profilo',
			'onboarding.profileTitle' => 'Sentiti a casa.',
			'onboarding.profileHint' => 'Scegli un nome e un avatar per il tuo profilo Luroka. Il tuo account collegato rimane lo stesso.',
			'onboarding.readyStep' => '03 · Pronti per la visione',
			'onboarding.readyTitle' => 'Un po\' più tu.',
			'onboarding.readyHint' => 'Riunisci i tuoi servizi o fai spazio a qualcun altro. Puoi sempre farlo più tardi.',
			'onboarding.addService' => 'Connetti un altro servizio',
			'onboarding.editProfile' => 'Modifica il tuo nome e avatar',
			'onboarding.connected' => 'Connesso e pronto',
			'onboarding.backToProfile' => 'Torna al tuo profilo',
			'onboarding.showOtherPlexHome' => 'Mostra altri membri della Home Plex',
			'onboarding.showOtherPlexHomeHint' => 'Disattivato per impostazione predefinita. I tuoi profili Luroka e i membri della Home Plex che hai utilizzato rimangono visibili. Attiva per scegliere qualcun altro.',
			'household.title' => 'La tua famiglia Luroka',
			'household.welcome' => 'Rendi tuo Luroka',
			'household.welcomeHint' => 'Il tuo primo account è connesso. Personalizza il tuo profilo o aggiungi qualcun altro prima di iniziare a guardare.',
			'household.profiles' => 'Profili e famiglia',
			'household.manageHint' => 'Aggiungi persone, cambia immagini e gestisci le connessioni di ciascun profilo.',
			'household.addProfile' => 'Aggiungi il profilo Luroka',
			'household.addHint' => 'Ogni persona può connettere il proprio login Plex, Emby o Jellyfin. Vengono visualizzati solo i collegamenti aggiunti al loro profilo.',
			'household.sharedHint' => 'Il riutilizzo della connessione di un altro profilo condivide lo stato osservato e l\'avanzamento della riproduzione dell\'utente del server. Scegli un accesso separato per una cronologia di visualizzazione indipendente.',
			'household.personalise' => 'Personalizza il profilo',
			'household.changePicture' => 'Cambia l\'immagine del profilo',
			'household.pictureHint' => 'Scegli un avatar Luroka o una foto. Ciò modifica l\'immagine solo su questo dispositivo; il tuo account del server è intatto.',
			'household.serverPicture' => 'Utilizza l\'immagine/iniziali del server',
			'household.choosePhoto' => 'Scegli una foto',
			'household.photoHint' => 'JPEG, PNG o un\'altra immagine supportata, fino a 10 MB. Le foto vengono ridimensionate e archiviate su questo dispositivo.',
			'household.pictureSaved' => 'Immagine del profilo aggiornata',
			'household.pictureFailed' => 'Impossibile aggiornare l\'immagine del profilo. Prova un\'immagine supportata fino a 10 MB.',
			'household.saveFailed' => 'Impossibile salvare le impostazioni del profilo. Per favore riprova.',
			'household.startWatching' => 'Inizia a guardare',
			'household.manageProfiles' => 'Gestisci o cambia profilo',
			'household.addLater' => 'Puoi aggiungere più persone in seguito in Impostazioni → Profili e nucleo familiare.',
			'household.connectionRequired' => 'Aggiungi una connessione al server per completare la configurazione di questo profilo.',
			'household.mountain' => 'Montagna',
			'household.orbit' => 'Esploratore',
			'household.waves' => 'Oceano',
			'household.blossom' => 'Fiore',
			'household.lightning' => 'Fulmine',
			'household.moon' => 'Luna',
			'household.avatarGallery' => 'Scegli un avatar',
			'household.avatarIllustrationHint' => 'Ritratti illustrati originali, bambini e amici animali',
			'household.avatarPortraitSunrise' => 'Ritratto dell\'alba',
			'household.avatarPortraitMeadow' => 'Ritratto di prato',
			'household.avatarPortraitBerry' => 'Ritratto di bacca',
			'household.avatarPortraitGolden' => 'Ritratto dorato',
			'household.avatarPortraitIndigo' => 'Ritratto indaco',
			'household.avatarPortraitOcean' => 'Ritratto dell\'oceano',
			'household.avatarKidArtist' => 'Piccolo artista',
			'household.avatarKidSkater' => 'Piccolo pattinatore',
			'household.avatarCat' => 'Gatto curioso',
			'household.avatarDog' => 'Cane felice',
			'household.avatarPanda' => 'Panda',
			'household.avatarOwl' => 'Gufo',
			'household.avatarFox' => 'Volpe',
			'household.avatarDinosaur' => 'Dinosauro',
			'household.avatarRobot' => 'Robot',
			'detailComposition.startOver' => 'Ricominciare da capo',
			'detailComposition.seriesCast' => 'Cast della serie',
			'detailComposition.streamingQuality' => 'Qualità dello streaming...',
			'detailComposition.trailer' => 'Rimorchio',
			'detailComposition.manageMedia' => 'Gestisci i contenuti multimediali...',
			'detailComposition.playbackOptions' => 'Opzioni di riproduzione...',
			'detailComposition.moreActions' => 'Più azioni',
			'detailComposition.watched' => 'Guardato',
			'detailComposition.unwatched' => 'Non guardato',
			'detailComposition.endsAt' => ({required Object time}) => 'Termina alle ${time}',
			'detailComposition.automatic' => 'Automatico',
			'detailComposition.usePreferences' => 'Usa le tue preferenze di riproduzione',
			'detailComposition.mediaInformation' => 'Informazioni sui media',
			'detailComposition.fullFileInformation' => 'Informazioni complete sul file',
			'detailComposition.castAndCrew' => 'Cast e troupe',
			'kids.backupProfile' => 'Eseguire il backup del profilo dei bambini',
			'kids.backupExplain' => 'Esegui il backup del nome, del carattere, delle restrizioni, dell\'aspetto e delle esclusioni di visualizzazione locale salvati di questo profilo. I PIN genitori, gli accessi al server, i download e l\'avanzamento della riproduzione sul server non sono inclusi.',
			'kids.saveBackupFile' => 'Salva il file di backup',
			'kids.copyBackup' => 'Copia il testo di backup',
			'kids.backupSaved' => ({required Object path}) => 'Backup del profilo bambini salvato in ${path}',
			'kids.backupCopied' => 'Backup del profilo dei bambini copiato',
			'kids.backupFailed' => 'Impossibile salvare il backup del profilo dei bambini. Per favore riprova.',
			'kids.restoreProfile' => 'Ripristina il profilo dei bambini',
			'kids.chooseBackupFile' => 'Scegli il file di backup',
			'kids.pasteBackup' => 'Incolla il testo di backup',
			'kids.backupText' => 'JSON di backup del profilo per bambini',
			'kids.pasteFromClipboard' => 'Incolla dagli appunti',
			'kids.restoreReview' => 'Controlla queste impostazioni ripristinate, quindi Salva per creare un nuovo profilo per bambini utilizzando le connessioni al server attuali. I profili esistenti non vengono sovrascritti. Le selezioni della libreria e le esclusioni di visualizzazione corrispondono solo agli stessi ID server/libreria.',
			'kids.restoreInvalid' => 'Questo non è un backup valido del profilo per bambini supportato. Scegli un backup JSON del profilo per bambini Luroka.',
			'kids.deleteProfile' => 'Elimina il profilo dei bambini',
			'kids.deleteExplain' => ({required Object name}) => 'Eliminare ${name} da Luroka? Le relative impostazioni locali, download ed esclusioni di visualizzazione verranno rimosse. Il tuo account server e la cronologia lato server rimarranno. Crea prima un backup se desideri ripristinare il profilo in un secondo momento.',
			'kids.profileDeleted' => 'Profilo bambini eliminato',
			'kids.allowedLibraries' => 'Biblioteche consentite',
			'kids.unavailableLibrary' => 'Libreria selezionata in precedenza (attualmente non disponibile)',
			'kids.allLibraries' => 'Consenti tutte le raccolte di film e TV connesse',
			'kids.librariesExplain' => 'Disattiva questa opzione per scegliere librerie specifiche. Le regole di età e animazione continuano ad applicarsi all\'interno delle librerie selezionate. Le nuove librerie non vengono aggiunte automaticamente quando si utilizza una selezione.',
			'kids.librariesUnavailable' => 'Non vengono caricate raccolte di film o TV. Connettiti al server e apri Librerie, quindi torna qui per scegliere.',
			'kids.noLibrariesSelected' => 'Nessuna libreria selezionata: questo bambino non vedrà alcun titolo.',
			'kids.animationOnly' => 'Solo animazione',
			'kids.animationExplain' => 'Mostra solo i titoli contrassegnati con il genere Animazione sul tuo server. Questo non sostituisce il limite di età: l\'animazione può essere destinata anche agli adulti. I metadati del genere mancanti sono nascosti.',
			'kids.allowUnrated' => 'Consenti titoli senza classificazione in base all\'età',
			'kids.unratedExplain' => 'Disattivato per impostazione predefinita. Se abilitata, possono apparire classificazioni mancanti o senza valutazione se le regole della libreria e dell\'animazione lo consentono. La loro idoneità non può essere verificata in base all\'età. Le classificazioni note superiori al limite di età e le classificazioni non riconosciute rimangono nascoste.',
			'kids.whoIsWatching' => 'Chi sta guardando?',
			'kids.chooseAdventure' => 'Un piccolo mondo di grandi avventure.',
			'kids.chooseProfile' => 'Scegli il tuo spazio. Trasformala in una serata al cinema.',
			'kids.welcome' => ({required Object name}) => 'Ciao, ${name}!',
			'kids.welcomeOlder' => ({required Object name}) => 'La tua prossima fantastica storia, ${name}.',
			'kids.homeSubtitle' => 'Grandi avventure. Piccole scoperte. Tutto per te.',
			'kids.homeSubtitleOlder' => 'Trova un nuovo preferito. Riprendi da dove avevi interrotto.',
			'kids.featured' => 'La grande avventura di oggi',
			'kids.featuredOlder' => 'Sotto i riflettori',
			'kids.moreInfo' => 'Maggiori informazioni',
			'kids.movies' => 'Film',
			'kids.shows' => 'Spettacoli',
			'kids.profiles' => 'Profili',
			'kids.adultBadge' => 'Adulti',
			'kids.avatar' => 'Scegli il tuo personaggio',
			'kids.avatarExplorer' => 'Esploratore dello spazio',
			'kids.avatarFox' => 'Volpe',
			'kids.avatarDinosaur' => 'Dinosauro',
			'kids.avatarRobot' => 'Robot',
			'kids.avatarChildArtist' => 'Piccolo artista',
			'kids.avatarChildSkater' => 'Piccolo pattinatore',
			'kids.avatarSunrisePerson' => 'Ritratto dell\'alba',
			'kids.avatarOceanPerson' => 'Ritratto dell\'oceano',
			'kids.avatarCat' => 'Gatto curioso',
			'kids.avatarDog' => 'Cane felice',
			'kids.avatarPanda' => 'Panda',
			'kids.avatarOwl' => 'Gufo',
			'kids.avatarBear' => 'Orso',
			'kids.continueAdventure' => 'Continua l\'avventura',
			'kids.freshStories' => 'Nuove storie da scoprire',
			'kids.yourMovies' => 'I preferiti dei film',
			'kids.yourShows' => 'Un altro episodio',
			'kids.emptyHint' => 'Le nuove avventure appariranno qui quando il tuo server avrà titoli con una classificazione di età consentita.',
			'kids.title' => 'Luroka per bambini',
			'kids.addProfile' => 'Aggiungi il profilo dei bambini',
			'kids.parentalControls' => 'Controlli parentali',
			'kids.parentPin' => 'PIN genitore',
			'kids.setParentPin' => 'Imposta il PIN genitore',
			'kids.changeParentPin' => 'Modifica il PIN genitore',
			'kids.pinExplain' => 'Questo PIN protegge i profili adulti e il controllo genitori su questo dispositivo.',
			'kids.name' => 'Nome del bambino',
			'kids.ageGroup' => 'Classificazione per età consentita',
			'kids.allAges' => 'Tutte le età · G, TV-Y, TV-G, U',
			'kids.age7' => 'Fino a 7 · anche PG, TV-PG, TV-Y7',
			'kids.age12' => 'Fino a 12 · anche 12 e 12A',
			'kids.age16' => 'Fino a 16 · anche PG-13, TV-14, 15 e 16',
			'kids.ratingExplain' => 'I titoli sopra il limite di età e le classificazioni non riconosciute vengono nascosti. I titoli senza classificazione vengono nascosti a meno che non li consenti di seguito. Gli episodi senza classificazione possono ereditare una classificazione della serie approvata. Le valutazioni dipendono dai metadati del tuo server.',
			'kids.theme' => 'Aspetto dei bambini',
			'kids.themeExplain' => 'Utilizza un tema colorato quando questo profilo è attivo.',
			'kids.sharedLogin' => 'Utilizza l\'accesso al server esistente. I progressi di Plex/Emby e lo stato osservato rimangono condivisi. Le restrizioni e i profili dei bambini sono archiviati su questo dispositivo.',
			'kids.hideWatched' => 'Nascondi la visualizzazione dei bambini da Continua a guardare',
			'kids.hideExplain' => 'Nascondi film e intere serie riprodotte dai profili bambini su questo dispositivo. Ciò non li rimuoverà dalla tua libreria né modificherà la cronologia del server.',
			'kids.clearHistory' => 'Reimposta le esclusioni di visualizzazione dei bambini',
			'kids.historyReset' => 'Le esclusioni di visualizzazione per i bambini vengono reimpostate',
			'kids.blocked' => 'Questo titolo non è disponibile nel profilo di questo bambino.',
			'kids.switchProfile' => 'Cambia profilo',
			'kids.manageFromAdult' => 'Passa a un profilo per adulti per gestire le impostazioni.',
			'kids.noConnections' => 'Connetti un server al tuo profilo per adulti prima di aggiungere un profilo per bambini.',
			'kids.created' => 'Profilo bambino creato',
			'kids.updated' => 'Profilo bambini aggiornato',
			'kids.saveFailed' => 'Impossibile salvare il controllo genitori. Per favore riprova.',
			'kids.kidsBadge' => 'Bambini',
			'lurokaDiscovery.title' => 'Scopri',
			'lurokaDiscovery.chooseLibraryHint' => 'Scegli una libreria da esplorare',
			'lurokaDiscovery.chooseCopyHint' => 'Disponibile in più librerie. Scegli la tua copia preferita.',
			'lurokaDiscovery.weeklyMovies' => 'Film di tendenza questa settimana · TMDb',
			'lurokaDiscovery.weeklyShows' => 'Mostra di tendenza questa settimana · TMDb',
			'lurokaDiscovery.weeklyLibrary' => 'Tendenze di questa settimana · Nella tua libreria',
			'lurokaDiscovery.popularLibrary' => 'Popolare ora · Nella tua libreria · Cinemeta',
			'lurokaDiscovery.publicFeedError' => 'La scoperta di Cinemeta non è disponibile. Per favore riprova.',
			'lurokaDiscovery.oscars' => 'Oscar · Vincitori del miglior film',
			'lurokaDiscovery.imdb100' => 'IMDb I 100 migliori film · Istantanea di settembre 2026',
			'lurokaDiscovery.imdbTv100' => 'IMDb I 100 migliori spettacoli · Istantanea di settembre 2026',
			'lurokaDiscovery.emmyComedy' => 'Emmy · Vincitori della serie comica · 1971–2026',
			'lurokaDiscovery.emmys' => 'Emmy · Vincitori della serie drammatica · 1966–2026',
			_ => null,
		} ?? switch (path) {
			'lurokaDiscovery.bafta' => 'BAFTA · Vincitori del miglior film',
			'lurokaDiscovery.cannes' => 'Cannes · Vincitori della Palma d\'Oro',
			'lurokaDiscovery.awardsNote' => 'Le raccolte di premi includono la storia degli Oscar come miglior film, vincitori di Emmy dramma/commedia e selezioni ampliate di BAFTA/Cannes. I titoli vincenti ripetuti vengono visualizzati una volta. L\'iscrizione utilizza le storie delle categorie di premi e i fatti Wikidata. IMDb I 100 migliori elenchi di film/spettacoli conservano le istantanee delle classifiche di settembre 2026 da mmdju/imdb-top250-api. Vengono visualizzate solo le corrispondenze nelle librerie online visibili; la dimensione della raccolta dipende dalla disponibilità della biblioteca.',
			'lurokaDiscovery.attribution' => 'Gli elenchi di popolarità pubblica, i metadati e le valutazioni IMDb sono forniti da Cinemeta; i suoi elenchi popolari non sono grafici di visualizzazione settimanali. Questo prodotto utilizza TMDB API ma non è approvato o certificato da TMDB. Le tendenze settimanali opzionali TMDb riflettono l\'interesse di TMDb, non la visualizzazione delle cifre. Le partiture mantengono le etichette di origine.',
			'lurokaDiscovery.tmdbSettings' => 'Fonti di scoperta',
			'lurokaDiscovery.setupDescription' => 'La scoperta di Cinemeta funziona immediatamente senza un account: film e programmi popolari, valutazioni IMDb e vincitori di premi. Facoltativamente, collega TMDb per gli andamenti settimanali utilizzando una chiave API o il token di accesso in lettura API da themoviedb.org/settings/api. Le tue credenziali sono archiviate su questo dispositivo.',
			'lurokaDiscovery.apiKey' => 'TMDb API chiave/token di accesso in lettura',
			'lurokaDiscovery.connect' => 'Collegare TMDb',
			'lurokaDiscovery.connecting' => 'Connessione…',
			'lurokaDiscovery.connected' => 'TMDb connesso · Tendenze settimanali e premi abilitati',
			'lurokaDiscovery.builtInKeyNote' => 'In esecuzione sulla chiave TMDb condivisa integrata di Luroka. Aggiungi la tua chiave gratuita qui sotto per limiti di velocità dedicati e controllo completo.',
			'lurokaDiscovery.disconnect' => 'Scollegare TMDb',
			'lurokaDiscovery.invalidKey' => 'Impossibile convalidare TMDb. Controlla le tue credenziali e la connessione Internet.',
			'lurokaDiscovery.feedError' => 'Il rilevamento TMDb non è disponibile. Per favore riprova.',
			'lurokaDiscovery.allTitles' => 'Tutti i titoli',
			'lurokaDiscovery.available' => 'Nella tua libreria',
			'lurokaDiscovery.checking' => 'Controllo delle tue librerie…',
			'lurokaDiscovery.availabilityUnknown' => 'Impossibile controllare alcune librerie. Prova ad aggiornare.',
			'lurokaDiscovery.noAvailable' => 'Nessun titolo corrispondente trovato nelle biblioteche controllate.',
			'lurokaDiscovery.sourceInfo' => 'Tendenze settimanali e vincitori selezionati · TMDb',
			'lurokaDiscovery.configure' => 'Impostazioni di rilevamento',
			'app.title' => 'Luroka',
			'appIcon.title' => 'Icona dell\'app',
			'appIcon.defaultIcon' => 'Predefinito',
			'appIcon.current' => 'Icona corrente',
			'appIcon.locked' => 'Vantaggio Sostenitore',
			'appIcon.lockedHint' => 'Le icone alternative sono un vantaggio del Sostenitore.',
			'appIcon.changeFailed' => 'Impossibile modificare l\'icona dell\'app',
			'appIcon.launcherHint' => 'La nuova icona appare sulla schermata iniziale quando esci da Luroka.',
			'appIcon.tvLauncherHint' => 'Il nuovo banner appare quando esci da Luroka. Android TV può continuare a mostrare quello vecchio fino al riavvio della TV.',
			'appIcon.names.midnight' => 'Mezzanotte',
			'appIcon.names.ember' => 'Brace',
			'appIcon.names.paper' => 'Carta',
			'appIcon.names.oled' => 'OLED',
			'appIcon.names.line' => 'Linea',
			'appIcon.names.ocean' => 'Oceano',
			'appIcon.names.ultraviolet' => 'Ultravioletto',
			'appIcon.names.matcha' => 'Matcha',
			'appIcon.names.sunset' => 'Tramonto',
			'appIcon.names.gold' => 'Oro',
			'appIcon.names.titanium' => 'Titanio',
			'appIcon.names.glass' => 'Vetro',
			'appIcon.names.crt' => 'CRT',
			'appIcon.names.vhs' => 'VHS',
			'appIcon.names.synthwave' => 'Synthwave',
			'appIcon.names.pixel' => 'Pixel',
			'appIcon.names.neon' => 'Neon',
			'appIcon.names.sticker' => 'Adesivo',
			'appIcon.names.ticket' => 'Biglietto',
			'appIcon.names.pop' => 'Pop',
			'appIcon.names.strata' => 'Strati',
			'appIcon.names.facet' => 'Sfaccettatura',
			'appIcon.names.tilde' => 'Tilde',
			'auth.signInWithPlex' => 'Accedi con Plex',
			'auth.showQRCode' => 'Mostra codice QR',
			'auth.authenticate' => 'Autenticati',
			'auth.authenticationTimeout' => 'Tempo scaduto per l\'autenticazione. Riprova.',
			'auth.scanQRToSignIn' => 'Scansiona questo codice QR per accedere',
			'auth.waitingForAuth' => 'In attesa di autenticazione...\nAccedi dal browser.',
			'auth.useBrowser' => 'Usa il browser',
			'auth.or' => 'o',
			'auth.connectToMediaBrowser' => ({required Object product}) => 'Connettiti a ${product}',
			'auth.quickConnect' => 'Quick Connect',
			'auth.useQuickConnect' => 'Usa Quick Connect',
			'auth.quickConnectInstructions' => 'Apri Quick Connect in Jellyfin e inserisci questo codice.',
			'auth.quickConnectWaiting' => 'In attesa di approvazione…',
			'auth.quickConnectCancel' => 'Annulla',
			'auth.quickConnectExpired' => 'Quick Connect scaduto. Riprova.',
			'auth.localDataRecoveryRequired' => 'Luroka non è riuscito a recuperare in sicurezza i dati locali di accesso e delle riproduzioni in sospeso. Accedi di nuovo.',
			'auth.pinCheckRejected' => 'La verifica del PIN Plex è stata rifiutata',
			'common.cancel' => 'Annulla',
			'common.save' => 'Salva',
			'common.close' => 'Chiudi',
			'common.clear' => 'Cancella',
			'common.reset' => 'Ripristina',
			'common.later' => 'Più tardi',
			'common.submit' => 'Invia',
			'common.confirm' => 'Conferma',
			'common.retry' => 'Riprova',
			'common.logout' => 'Esci',
			'common.unknown' => 'Sconosciuto',
			'common.refresh' => 'Aggiorna',
			'common.yes' => 'Sì',
			'common.no' => 'No',
			'common.delete' => 'Elimina',
			'common.edit' => 'Modifica',
			'common.shuffle' => 'Riproduzione casuale',
			'common.addTo' => 'Aggiungi a...',
			'common.createNew' => 'Crea nuovo',
			'common.connect' => 'Connetti',
			'common.disconnect' => 'Disconnetti',
			'common.play' => 'Riproduci',
			'common.pause' => 'Pausa',
			'common.resume' => 'Riprendi',
			'common.error' => 'Errore',
			'common.search' => 'Cerca',
			'common.home' => 'Home',
			'common.back' => 'Indietro',
			'common.settings' => 'Impostazioni',
			'common.mute' => 'Disattiva audio',
			'common.ok' => 'OK',
			'common.off' => 'Disattivato',
			'common.options' => 'Opzioni',
			'common.seasonNumber' => ({required Object number}) => 'Stagione ${number}',
			'common.episodeNumberTitle' => ({required Object number, required Object title}) => 'Episodio ${number} - ${title}',
			'common.chapterNumber' => ({required Object number}) => 'Capitolo ${number}',
			'common.reconnect' => 'Riconnetti',
			'common.viewAll' => 'Mostra tutto',
			'common.serversUnreachable' => 'Server irraggiungibili',
			'common.loading' => 'Caricamento...',
			'common.fullscreen' => 'Schermo intero',
			'common.exitFullscreen' => 'Esci dalla modalità a schermo intero',
			'common.ratingSource.critic' => 'Critici',
			'common.ratingSource.audience' => 'Pubblico',
			'common.ratingSource.imdb' => 'IMDb',
			'common.ratingSource.tmdb' => 'TMDB',
			'common.ratingSource.rottenTomatoes' => 'Rotten Tomatoes',
			'common.ratingSource.simkl' => 'Simkl',
			'common.ratingSource.mal' => 'MyAnimeList',
			'common.ratingSource.anilist' => 'AniList',
			'common.ratingSource.trakt' => 'Trakt',
			'common.ratingSource.rottenTomatoesCritic' => 'Critici di Rotten Tomatoes',
			'common.ratingSource.rottenTomatoesAudience' => 'Pubblico di Rotten Tomatoes',
			'common.ratingSource.metacritic' => 'Metacritic',
			'common.ratingSource.letterboxd' => 'Letterboxd',
			'common.notAvailable' => 'N/D',
			'common.url' => 'URL',
			'common.letterKeys' => 'ABC',
			'common.mediaKind.movie' => 'Film',
			'common.mediaKind.show' => 'Serie',
			'common.mediaKind.season' => 'Stagione',
			'common.mediaKind.episode' => 'Episodio',
			'common.mediaKind.artist' => 'Artista',
			'common.mediaKind.album' => 'Album',
			'common.mediaKind.track' => 'Traccia',
			'common.mediaKind.collection' => 'Raccolta',
			'common.mediaKind.playlist' => 'Playlist',
			'common.mediaKind.clip' => 'Clip',
			'common.mediaKind.photo' => 'Foto',
			'common.mediaKind.folder' => 'Cartella',
			'common.stay' => 'Rimani',
			'common.exitApp' => 'Esci',
			'common.exitAppBody' => 'Sei sicuro di voler uscire da Luroka?',
			'tvHints.select' => 'Seleziona',
			'tvHints.browse' => 'Sfoglia',
			'tvHints.back' => 'Indietro',
			'screens.licenses' => 'Licenze',
			'screens.switchProfile' => 'Cambia profilo',
			'screens.subtitleStyling' => 'Stile sottotitoli',
			'screens.mpvConfig' => 'mpv.conf',
			'screens.logs' => 'Log',
			'mediaExtras.trailers' => 'Rimorchi',
			'mediaExtras.featurettes' => 'Funzionalità',
			'mediaExtras.interviews' => 'Interviste',
			'mediaExtras.deletedScenes' => 'Scene eliminate',
			'mediaExtras.behindTheScenes' => 'Dietro le quinte',
			'mediaExtras.scenesAndClips' => 'Scene e clip',
			'mediaExtras.other' => 'Altri extra',
			'update.available' => 'Aggiornamento disponibile',
			'update.versionAvailable' => ({required Object version}) => 'Versione ${version} disponibile',
			'update.currentVersion' => ({required Object version}) => 'Attuale: ${version}',
			'update.skipVersion' => 'Salta questa versione',
			'update.viewRelease' => 'Visualizza note di rilascio',
			'update.latestVersion' => 'La versione installata è l\'ultima disponibile',
			'update.checkFailed' => 'Impossibile controllare gli aggiornamenti',
			'supporter.title' => 'Luroka Sostenitore',
			'supporter.intro' => 'Un acquisto una tantum che supporta lo sviluppo di Luroka e sblocca extra cosmetici:',
			'supporter.presetThemes' => 'Temi preimpostati',
			'supporter.presetThemesDescription' => 'Brace, Ghiacciaio, Foresta, Prugna e Carta',
			'supporter.customTheme' => 'Tema personalizzato',
			'supporter.customThemeDescription' => 'Scegli tu stesso ogni colore',
			'supporter.appIcons' => 'Icone dell\'app',
			'supporter.appIconsDescription' => 'Scegli un\'icona Luroka alternativa',
			'supporter.buy' => ({required Object price}) => 'Acquista per ${price}',
			'supporter.loadingPrice' => 'Caricamento prezzo...',
			'supporter.restore' => 'Ripristina gli acquisti',
			'supporter.pending' => 'Il tuo acquisto è in attesa di pagamento o approvazione. Gli extra si sbloccano non appena il negozio lo completa.',
			'supporter.thankYouTitle' => 'Grazie per il supporto Luroka',
			'supporter.thankYouBody' => 'I tuoi extra Sostenitore sono sbloccati.',
			'supporter.tileSubtitle' => 'Sblocca temi e icone delle app con un acquisto una tantum',
			'supporter.tileSubtitleThemesOnly' => 'Sblocca temi con un acquisto una tantum',
			'supporter.tileUnlocked' => 'Grazie per il vostro supporto',
			'supporter.errors.storeUnavailable' => 'Gli acquisti non sono disponibili. Verifica di aver effettuato l\'accesso allo store e che gli acquisti siano consentiti su questo dispositivo.',
			'supporter.errors.productNotFound' => 'L\'acquisto da Sostenitore non è al momento disponibile nel tuo negozio.',
			'supporter.errors.productQueryFailed' => 'Impossibile caricare il prezzo. Controlla la connessione e riprova.',
			'supporter.errors.purchaseFailed' => 'L\'acquisto non è andato a buon fine. Riprova.',
			'supporter.errors.restoreFailed' => 'Impossibile raggiungere il negozio per ripristinare l\'acquisto. Riprova.',
			'supporter.errors.nothingToRestore' => 'Nessun acquisto sostenitore trovato per questo account del negozio.',
			'settings.title' => 'Impostazioni',
			'settings.supportDeveloper' => 'Supporta Luroka',
			'settings.supportDeveloperDescription' => 'Dona tramite Liberapay per finanziare lo sviluppo',
			'settings.language' => 'Lingua',
			'settings.theme' => 'Tema',
			'settings.appearance' => 'Aspetto',
			'settings.videoPlayback' => 'Riproduzione video',
			'settings.videoPlaybackDescription' => 'Configura il comportamento di riproduzione',
			'settings.advanced' => 'Avanzate',
			'settings.episodePosterMode' => 'Stile poster episodio',
			'settings.seriesPoster' => 'Poster della serie',
			'settings.seasonPoster' => 'Poster della stagione',
			'settings.episodeThumbnail' => 'Miniatura',
			'settings.homeHeroSize' => 'Dimensioni del carosello',
			'settings.homeHeroSizeSmall' => 'Piccolo',
			'settings.homeHeroSizeMedium' => 'Medio',
			'settings.homeHeroSizeLarge' => 'Grande',
			'settings.secondsLabel' => 'Secondi',
			'settings.minutesLabel' => 'Minuti',
			'settings.secondsShort' => 's',
			'settings.minutesShort' => 'm',
			'settings.durationHint' => ({required Object min, required Object max}) => 'Inserisci una durata (${min}-${max})',
			'settings.systemTheme' => 'Sistema',
			'settings.lightTheme' => 'Chiaro',
			'settings.darkTheme' => 'Scuro',
			'settings.oledTheme' => 'OLED',
			'settings.libraryDensity' => 'Densità della libreria',
			'settings.displayScale' => 'Scala di visualizzazione',
			'settings.compact' => 'Compatta',
			'settings.comfortable' => 'Comoda',
			'settings.gridSpacing' => 'Spaziatura della griglia',
			'settings.gridSpacingTight' => 'Ristretta',
			'settings.gridSpacingNormal' => 'Normale',
			'settings.gridSpacingSpacious' => 'Ampia',
			'settings.tvCornerSpotlightBackdrop' => 'Sfondo in evidenza nell\'angolo',
			'settings.tvCornerSpotlightBackdropDescription' => 'Mostra l\'immagine in evidenza nell\'angolo in alto a destra anziché a schermo intero',
			'settings.viewMode' => 'Modalità di visualizzazione',
			'settings.gridView' => 'Griglia',
			'settings.listView' => 'Elenco',
			'settings.continueWatchingAction' => 'Azione per Continua a guardare',
			'settings.continueWatchingPlay' => 'Riproduci',
			'settings.continueWatchingDetails' => 'Apri dettagli',
			'settings.episodeAction' => 'Azione episodio',
			'settings.episodePlay' => 'Riproduci',
			'settings.episodeDetails' => 'Apri dettagli',
			'settings.useGlobalHubs' => 'Usa il layout della Home',
			'settings.useGlobalHubsDescription' => 'Mostra sezioni Home unificate. In caso contrario, usa i consigli della libreria.',
			'settings.showServerNameOnHubs' => 'Mostra il nome del server nelle sezioni',
			'settings.showServerNameOnHubsDescription' => 'Mostra sempre i nomi dei server nei titoli delle sezioni.',
			'settings.groupLibrariesByServer' => 'Raggruppa le librerie per server',
			'settings.groupLibrariesByServerDescription' => 'Raggruppa le librerie della barra laterale sotto ciascun server multimediale.',
			'settings.alwaysKeepSidebarOpen' => 'Mantieni sempre aperta la barra laterale',
			'settings.alwaysKeepSidebarOpenDescription' => 'La barra laterale rimane espansa e l\'area del contenuto si adatta',
			'settings.showUnwatchedCount' => 'Mostra il numero di episodi non visti',
			'settings.showUnwatchedCountDescription' => 'Mostra il numero di episodi non visti per serie e stagioni',
			'settings.showWatchedIndicators' => 'Mostra indicatori di visione',
			'settings.showWatchedIndicatorsDescription' => 'Mostra un segno di spunta su film, serie TV ed episodi già visti',
			'settings.showEpisodeNumberOnCards' => 'Mostra il numero dell\'episodio sulle schede',
			'settings.showEpisodeNumberOnCardsDescription' => 'Mostra il numero della stagione e dell\'episodio sulle schede degli episodi',
			'settings.showSeasonPostersOnTabs' => 'Mostra i poster delle stagioni nelle schede',
			'settings.showSeasonPostersOnTabsDescription' => 'Mostra il poster di ogni stagione sopra la sua scheda',
			'settings.tvFullCardLayout' => 'Schede TV a tutta immagine',
			'settings.tvFullCardLayoutDescription' => 'Usa schede TV con la sola immagine e i nomi degli attori sovrapposti',
			'settings.focusGlow' => 'Bagliore di selezione',
			'settings.focusGlowDescription' => 'Mostra un leggero bagliore attorno alla scheda selezionata',
			'settings.visualEffects' => 'Effetti visivi',
			'settings.visualEffectsAuto' => 'Automatico',
			'settings.visualEffectsAutoDescription' => 'Riduci automaticamente gli effetti sui dispositivi a basso consumo',
			'settings.visualEffectsFull' => 'Completi',
			'settings.visualEffectsReduced' => 'Ridotti',
			'settings.visualEffectsReducedDescription' => 'Meno animazioni e immagini a risoluzione inferiore',
			'settings.hideSpoilers' => 'Nascondi spoiler per episodi non visti',
			'settings.hideSpoilersDescription' => 'Sfoca miniature e descrizioni degli episodi non visti',
			'settings.playerBackend' => 'Motore di riproduzione',
			'settings.playerBackendDescription' => 'mpv riproduce più formati e abilita più funzionalità: consigliato. ExoPlayer aiuta se la riproduzione fallisce o si interrompe su questo dispositivo.',
			'settings.exoPlayer' => 'ExoPlayer',
			'settings.mpv' => 'mpv',
			'settings.hardwareDecoding' => 'Decodifica hardware',
			'settings.hardwareDecodingDescription' => 'Utilizza l\'accelerazione hardware quando disponibile',
			'settings.playbackBuffer' => 'Buffer di riproduzione',
			'settings.playbackBufferAuto' => 'Auto (consigliato)',
			'settings.playbackBufferLarge' => 'Grande',
			'settings.playbackBufferExtraLarge' => 'Extra grande',
			'settings.playbackBufferDescription' => 'Bufferizza di più contro connessioni instabili. Limitato anche dalla dimensione del buffer.',
			'settings.defaultQualityTitle' => 'Qualità predefinita',
			'settings.streamingQualityOriginalHint' => 'Riproduce il file esattamente come è stato memorizzato: qualità migliore, utilizza la massima larghezza di banda',
			'settings.cellularQualityTitle' => 'Qualità predefinita sulla rete mobile',
			'settings.cellularQualitySameAsDefault' => 'Come la qualità predefinita',
			'settings.directPlayCoveredQuality' => 'Riproduci i video più piccoli in qualità originale',
			'settings.directPlayCoveredQualityDescription' => 'Riproduci direttamente i video già entro il limite di qualità invece di transcodificarli',
			'settings.videoCodecs' => 'Codec video',
			'settings.videoCodecsDescription' => 'Il server transcodifica i codec non selezionati',
			'settings.videoCodecsAlwaysAccepted' => 'Sempre accettato',
			'settings.musicQualityTitle' => 'Qualità musicale',
			'settings.subtitleStyling' => 'Stile sottotitoli',
			'settings.subtitleStylingDescription' => 'Personalizza l\'aspetto dei sottotitoli',
			'settings.smallSkipDuration' => 'Salto breve',
			'settings.largeSkipDuration' => 'Salto lungo',
			'settings.rewindOnResume' => 'Riavvolgimento alla ripresa',
			'settings.secondsUnit' => ({required Object seconds}) => '${seconds} secondi',
			'settings.defaultSleepTimer' => 'Timer spegnimento predefinito',
			'settings.minutesUnit' => ({required Object minutes}) => '${minutes} minuti',
			'settings.rememberTrackSelections' => 'Ricorda la selezione delle tracce per ogni serie o film',
			'settings.rememberTrackSelectionsDescription' => 'Ricorda le scelte di audio e sottotitoli per ogni titolo',
			'settings.rememberTrackSelectionsBackendRule' => 'Plex salva ogni scelta sul server per ogni file; Jellyfin attiva anche l\'opzione Ricorda selezioni dell\'account; Emby non è supportato',
			'settings.followServerTrackSelections' => 'Usa le tracce selezionate sul server per ogni episodio',
			'settings.followServerTrackSelectionsDescription' => 'Al cambio di episodio applica l\'audio e i sottotitoli selezionati sul server invece di mantenere la scelta corrente',
			'settings.resumeMusicOnLaunch' => 'Ricorda la sessione musicale',
			'settings.resumeMusicOnLaunchDescription' => 'All\'avvio dell\'app riapri l\'ultimo brano in pausa dal punto in cui era rimasto',
			'settings.showChapterMarkersOnTimeline' => 'Mostra i marcatori dei capitoli sulla barra di avanzamento',
			'settings.showChapterMarkersOnTimelineDescription' => 'Segmenta la barra di avanzamento ai confini dei capitoli',
			'settings.specialsOrdering' => 'Speciali nell\'ordine degli episodi',
			'settings.specialsOrderingDescription' => 'Dove vengono riprodotti gli speciali nell\'ordine di visione di una serie',
			'settings.specialsOrderingServer' => 'Segui l\'ordine del server',
			'settings.specialsOrderingAirDate' => 'Intercalati per data di trasmissione',
			'settings.specialsOrderingLast' => 'Dopo le stagioni normali',
			'settings.clickVideoTogglesPlayback' => 'Fai clic sul video per alternare riproduzione e pausa',
			'settings.clickVideoTogglesPlaybackDescription' => 'Fai clic sul video per riprodurre o mettere in pausa anziché mostrare i controlli.',
			'settings.videoPlayerControls' => 'Controlli del lettore video',
			'settings.keyboardShortcuts' => 'Scorciatoie da tastiera',
			'settings.keyboardShortcutsDescription' => 'Personalizza le scorciatoie da tastiera',
			'settings.videoPlayerNavigation' => 'Navigazione del lettore video',
			'settings.videoPlayerNavigationDescription' => 'Usa i tasti freccia per navigare nei controlli del lettore video',
			'settings.watchTogetherRelay' => 'Relay di Guarda insieme',
			'settings.watchTogetherRelayDescription' => 'Relay Party di sorveglianza aperti pubblici a meno che non ne imposti uno tuo',
			'settings.watchTogetherRelayHint' => 'https://mio-relay.esempio.it',
			'settings.watchTogetherRelayInvalid' => 'Inserisci un URL di base HTTP o HTTPS valido per il relay.',
			'settings.crashReporting' => 'Segnalazione degli arresti anomali',
			'settings.crashReportingDescription' => 'Invia segnalazioni sugli arresti anomali per contribuire a migliorare l\'app',
			'settings.debugLogging' => 'Registrazione di debug',
			'settings.debugLoggingDescription' => 'Abilita una registrazione dettagliata per la risoluzione dei problemi',
			'settings.viewLogs' => 'Visualizza i log',
			'settings.viewLogsDescription' => 'Visualizza i log dell\'applicazione',
			'settings.clearImageCache' => 'Svuota cache immagini',
			'settings.clearImageCacheDescription' => 'Svuota le immagini e le miniature memorizzate nella cache. Le immagini potrebbero caricarsi più lentamente finché non vengono scaricate di nuovo.',
			'settings.clearImageCacheSuccess' => 'Cache immagini svuotata correttamente',
			'settings.resetSettings' => 'Ripristina impostazioni',
			'settings.resetSettingsDescription' => 'Ripristina le impostazioni predefinite. Questa operazione non può essere annullata.',
			'settings.resetSettingsSuccess' => 'Impostazioni ripristinate correttamente',
			'settings.backup' => 'Backup',
			'settings.exportSettings' => 'Esporta impostazioni',
			'settings.exportSettingsDescription' => 'Salva le tue preferenze in un file',
			'settings.exportSettingsSuccess' => 'Impostazioni esportate',
			'settings.importSettings' => 'Importa impostazioni',
			'settings.importSettingsDescription' => 'Ripristina le preferenze da un file',
			'settings.importSettingsConfirm' => 'Questa azione sostituirà le impostazioni attuali. Continuare?',
			'settings.importSettingsSuccess' => 'Impostazioni importate',
			'settings.importSettingsInvalidFile' => 'Questo file non è un\'esportazione Luroka valida',
			'settings.importSettingsNoUser' => 'Accedi prima di importare le impostazioni',
			'settings.shortcutsReset' => 'Scorciatoie ripristinate alle impostazioni predefinite',
			'settings.resetShortcutsConfirm' => 'Ciò sostituirà le scorciatoie personalizzate con quelle predefinite. Continuare?',
			'settings.about' => 'Informazioni',
			'settings.aboutDescription' => 'Informazioni sull\'app e le licenze',
			'settings.updates' => 'Aggiornamenti',
			'settings.updateAvailable' => 'Aggiornamento disponibile',
			'settings.checkForUpdates' => 'Controlla aggiornamenti',
			'settings.autoCheckUpdatesOnStartup' => 'Controlla automaticamente gli aggiornamenti all\'avvio',
			'settings.autoCheckUpdatesOnStartupDescription' => 'Avvisa all\'avvio quando è disponibile un aggiornamento',
			'settings.validationErrorEnterNumber' => 'Inserisci un numero valido',
			'settings.validationErrorDuration' => ({required Object min, required Object max, required Object unit}) => 'La durata deve essere compresa tra ${min} e ${max} ${unit}',
			'settings.shortcutAlreadyAssigned' => ({required Object action}) => 'Scorciatoia già assegnata a ${action}',
			'settings.shortcutUpdated' => ({required Object action}) => 'Scorciatoia aggiornata per ${action}',
			'settings.saveFailed' => 'Impossibile salvare le modifiche. Riprova.',
			'settings.autoPlayAndSkip' => 'Riproduzione automatica e salti',
			'settings.autoPlayNextEpisode' => 'Riproduci automaticamente l\'episodio successivo',
			'settings.autoPlayNextEpisodeDescription' => 'Avvia automaticamente l\'episodio successivo quando termina quello in riproduzione',
			'settings.shuffleStartsFromBeginning' => 'La riproduzione casuale inizia dall\'inizio',
			'settings.shuffleStartsFromBeginningDescription' => 'Avvia ogni episodio dall\'inizio durante la riproduzione casuale invece di riprenderlo',
			'settings.playNextCountdown' => 'Conto alla rovescia del successivo',
			'settings.playNextCountdownImmediate' => 'Riproduci subito',
			'settings.skipIntroMode' => 'Salta intro',
			'settings.skipIntroModeOffDescription' => 'Riproduci le intro normalmente senza pulsante di salto',
			'settings.skipIntroModeButtonDescription' => 'Mostra un pulsante di salto quando inizia un\'intro',
			'settings.skipIntroModeAutoDescription' => 'Salta automaticamente le intro dopo il ritardo indicato sotto',
			'settings.skipCreditsMode' => 'Salta titoli di coda',
			'settings.skipCreditsModeOffDescription' => 'Riproduci i titoli di coda normalmente senza pulsante di salto',
			'settings.skipCreditsModeButtonDescription' => 'Mostra un pulsante di salto quando iniziano i titoli di coda',
			'settings.skipCreditsModeAutoDescription' => 'Salta automaticamente i titoli di coda e riproduci l\'episodio successivo',
			'settings.skipMarkerModeOff' => 'Disattivato',
			'settings.skipMarkerModeButton' => 'Mostra pulsante',
			'settings.skipMarkerModeAuto' => 'Automatico',
			'settings.forceSkipMarkerFallback' => 'Forza i marcatori di ripiego',
			'settings.forceSkipMarkerFallbackDescription' => 'Usa i modelli dei titoli dei capitoli anche quando Plex dispone di marcatori',
			'settings.autoSkipDelay' => 'Ritardo del salto automatico',
			'settings.autoSkipDelayDescription' => ({required Object seconds}) => 'Attendi ${seconds} secondi prima del salto automatico',
			'settings.introPattern' => 'Modello del marcatore della sigla iniziale',
			'settings.introPatternDescription' => 'Espressione regolare per individuare i marcatori della sigla iniziale nei titoli dei capitoli',
			'settings.creditsPattern' => 'Modello del marcatore dei titoli di coda',
			'settings.creditsPatternDescription' => 'Espressione regolare per individuare i marcatori dei titoli di coda nei titoli dei capitoli',
			'settings.invalidRegex' => 'Espressione regolare non valida',
			'settings.regex' => 'Espressione regolare',
			'settings.downloads' => 'Download',
			'settings.downloadLocationDescription' => 'Scegli dove archiviare i contenuti scaricati',
			'settings.downloadLocationDefault' => 'Predefinita (archivio dell\'app)',
			'settings.downloadLocationCustom' => 'Posizione personalizzata',
			'settings.selectFolder' => 'Seleziona cartella',
			'settings.resetToDefault' => 'Ripristina posizione predefinita',
			'settings.currentPath' => ({required Object path}) => 'Attuale: ${path}',
			'settings.downloadLocationChanged' => 'Posizione di download modificata',
			'settings.downloadLocationReset' => 'Posizione di download ripristinata a predefinita',
			'settings.downloadLocationInvalid' => 'La cartella selezionata non è scrivibile',
			'settings.downloadLocationPickerUnavailable' => 'La selezione della cartella non è disponibile su questo dispositivo',
			'settings.downloadOnWifiOnly' => 'Scarica solo tramite Wi-Fi',
			'settings.downloadOnWifiOnlyDescription' => 'Impedisci i download quando si utilizza la rete dati cellulare',
			'settings.autoRemoveWatchedDownloads' => 'Rimuovi automaticamente i download visti',
			'settings.autoRemoveWatchedDownloadsDescription' => 'Elimina automaticamente i download già visti',
			'settings.cellularDownloadBlocked' => 'I download sono bloccati sulla rete mobile. Usa il Wi-Fi o modifica l\'impostazione.',
			'settings.maxVolume' => 'Volume massimo consentito',
			'settings.maxVolumeDescription' => 'Consenti di aumentare il volume oltre il 100% per i contenuti con audio basso',
			'settings.maxVolumePercent' => ({required Object percent}) => '${percent}%',
			'settings.discordRichPresence' => 'Attività avanzata su Discord',
			'settings.discordRichPresenceDescription' => 'Mostra su Discord cosa stai guardando',
			'settings.services' => 'Servizi',
			'settings.servicesDescription' => 'Connetti Trakt, MyAnimeList, Seerr e altro',
			'settings.manageLibrariesDescription' => 'Riordina e nascondi le librerie',
			'settings.companionRemoteServer' => 'Server del telecomando',
			'settings.companionRemoteServerDescription' => 'Consenti ai dispositivi mobili della tua rete di controllare questa app',
			'settings.companionRemoteServerStartFailed' => 'Impossibile avviare il server del telecomando',
			'settings.companionRemoteServerStopFailed' => 'Impossibile arrestare il server del telecomando',
			'settings.autoPip' => 'Picture-in-Picture automatica',
			'settings.autoPipDescription' => 'Attiva automaticamente la modalità Picture-in-Picture quando esci dall\'app durante la riproduzione',
			'settings.matchContentFrameRate' => 'Adatta la frequenza dei fotogrammi',
			'settings.matchContentFrameRateDescription' => 'Adatta la frequenza di aggiornamento dello schermo al contenuto video',
			'settings.matchContentResolution' => 'Adatta alla risoluzione del contenuto',
			'settings.matchContentResolutionDescription' => 'Passa lo schermo alla risoluzione nativa del video, così è la TV a occuparsi dell\'upscaling. Durante la riproduzione vengono ridimensionati anche menu e sottotitoli',
			'settings.matchRefreshRate' => 'Adatta la frequenza di aggiornamento',
			'settings.matchRefreshRateDescription' => 'Adatta la frequenza di aggiornamento dello schermo in modalità a schermo intero',
			'settings.matchDynamicRange' => 'Adatta la gamma dinamica',
			'settings.matchDynamicRangeDescription' => 'Attiva l\'HDR per i contenuti HDR, quindi torna all\'SDR',
			'settings.displaySwitchDelay' => 'Ritardo del cambio di modalità dello schermo',
			'settings.tunneledPlayback' => 'Riproduzione con tunneling',
			'settings.tunneledPlaybackDescription' => 'Usa il tunneling video. Disattivalo se durante la riproduzione HDR lo schermo rimane nero o il movimento scatta.',
			'settings.audioPassthrough' => 'Passthrough audio',
			'settings.audioPassthroughDescription' => 'Invia l\'audio Dolby/DTS al ricevitore o al televisore senza ricodificarlo, preservando l\'audio surround. Disattiva questa opzione se non senti alcun suono.',
			'settings.audioPassthroughDescriptionApple' => 'Usa il decoder Dolby nativo di Apple per Dolby Digital Plus, incluso Atmos. DTS e TrueHD vengono comunque riprodotti come PCM multicanale. Disattiva questa opzione se non senti alcun suono.',
			'settings.audioPassthroughDescriptionAppleSpatial' => 'Utilizza il decoder Dolby nativo di Apple per Dolby Digital Plus, incluso Atmos. Su iOS, iPadOS e tvOS 26 o versioni successive, TrueHD Atmos e DTS:X vengono riprodotti come audio spaziale. Gli altri brani DTS e TrueHD vengono riprodotti come PCM multicanale. Spegni se non senti alcun suono.',
			'settings.audioPassthroughOverriddenByNormalization' => 'Disattivato mentre la normalizzazione del volume è attiva',
			'settings.audioChannelLimit' => 'Canali audio',
			'settings.audioChannelLimitDescription' => 'Mixa l\'audio decodificato per altoparlanti, cuffie o configurazioni HDMI che non possono riprodurre tutti i canali',
			'settings.audioChannelLimitOriginal' => 'Originale',
			'settings.audioChannelLimitOriginalDescription' => 'Riproduci tutti i canali della traccia',
			'settings.audioChannelLimitSurround51' => 'Fino a 5.1',
			'settings.audioChannelLimitSurround51Description' => 'Mescola 7.1 fino a 5.1 per TV e ricevitori che accettano solo 5.1 PCM. Il passthrough non è influenzato.',
			'settings.audioChannelLimitStereo' => 'Stereo',
			'settings.audioChannelLimitStereoDescription' => 'Mixa fino a due canali per altoparlanti stereo o cuffie. Disattiva il passthrough.',
			'settings.downmixCenterBoost' => 'Amplificazione canale centrale',
			'settings.downmixCenterBoostValue' => ({required Object db}) => '${db} dB',
			'settings.downmixCenterBoostLabel' => 'Amplificazione (dB)',
			'settings.downmixCenterBoostShort' => 'dB',
			'settings.audioDownmixNormalize' => 'Normalizza il volume durante il downmix',
			'settings.audioDownmixNormalizeDescription' => 'Riduce il volume del mix per evitare il clipping. Disattiva questa opzione per mantenere il volume originale (le scene più rumorose potrebbero risultare distorte).',
			'settings.dvConversionMode' => 'Conversione Dolby Vision',
			'settings.dvConversionModeDescription' => 'Scegli come gestire i file Dolby Vision con profilo 7.',
			'settings.dvConversionAuto' => 'Auto',
			'settings.dvConversionNative' => 'Nativa / disattivata',
			'settings.dvConversionDv81' => 'P7 → P8.1',
			'settings.dvConversionHevcStrip' => 'P7 → HEVC',
			'settings.dvConversionAutoDescription' => 'Rileva le capacità del dispositivo e usa il normale meccanismo di ripiego',
			'settings.dvConversionNativeDescription' => 'Forza il DV7 nativo e impedisce nuovi tentativi di conversione DV',
			'settings.dvConversionDv81Description' => 'Forza la conversione RPU diretta al profilo Dolby Vision 8.1',
			'settings.dvConversionHevcStripDescription' => 'Rimuove i livelli RPU/EL di Dolby Vision e riproduce il video come semplice HEVC',
			'settings.disableDolbyVision' => 'Disattiva Dolby Vision',
			'settings.disableDolbyVisionDescription' => 'Riproduci il livello HDR10 o HLG del file al posto di Dolby Vision, se presente',
			'settings.hdrSdrConversion' => 'Conversione da HDR a SDR',
			'settings.hdrSdrConversionDescription' => 'Scegli cosa converte i video HDR quando lo schermo non può mostrare l\'HDR.',
			'settings.hdrSdrConversionAuto' => 'Auto',
			'settings.hdrSdrConversionAutoDescription' => 'Dispositivo da Android 9 in poi, lettore nelle versioni precedenti',
			'settings.hdrSdrConversionDevice' => 'Dispositivo',
			'settings.hdrSdrConversionDeviceDescription' => 'La conversione è affidata all\'hardware video del dispositivo. La più veloce, ma i colori dipendono dal dispositivo',
			'settings.hdrSdrConversionPlayer' => 'Lettore',
			'settings.hdrSdrConversionPlayerDescription' => 'La conversione avviene nel lettore. Colori uniformi, ma il 4K può scattare sui TV box di fascia bassa',
			'settings.deinterlace' => 'Deinterlacciamento',
			'settings.deinterlaceDescription' => 'Rimuove gli artefatti a pettine dai video interlacciati (solo lettore mpv)',
			'settings.deinterlaceOff' => 'Spento',
			'settings.deinterlaceOffDescription' => 'Mostra il video interlacciato così come viene decodificato',
			'settings.deinterlaceVideo' => 'Video',
			'settings.deinterlaceVideoDescription' => 'Trasforma ogni campo in un fotogramma completo. Per video girati per la TV, come sport, notizie e concerti',
			'settings.deinterlaceFilm' => 'Pellicola',
			'settings.deinterlaceFilmDescription' => 'Ripristina i fotogrammi originali di film e animazioni telecinemati a 29,97 fps, comune sui DVD NTSC. Video girato per balbettii televisivi. La TV in diretta utilizza il video',
			'settings.requireProfileSelectionOnOpen' => 'Chiedi di scegliere il profilo all\'apertura',
			'settings.requireProfileSelectionOnOpenDescription' => 'Mostra la selezione del profilo ogni volta che l\'app viene aperta',
			'settings.forceTvMode' => 'Forza modalità TV',
			'settings.forceTvModeKeepTitle' => 'Mantenere il layout TV?',
			'settings.forceTvModeKeepBody' => ({required Object seconds}) => 'Il layout TV è progettato per i telecomandi. Ritorno al layout normale in ${seconds} s.',
			'settings.forceTvModeKeepConfirm' => 'Mantieni il layout della TV',
			'settings.forceTvModeReverted' => 'Il layout della TV è stato ripristinato',
			'settings.forceTvModeDescription' => 'Forza il layout TV sui dispositivi che non vengono rilevati automaticamente. Richiede il riavvio.',
			'settings.startInFullscreen' => 'Avvia a schermo intero',
			'settings.startInFullscreenDescription' => 'Apri Luroka a schermo intero all\'avvio',
			'settings.exitFullscreenOnPlayerClose' => 'Esci dalla modalità a schermo intero alla chiusura del lettore',
			'settings.exitFullscreenOnPlayerCloseDescription' => 'Esce automaticamente dalla modalità a schermo intero quando chiudi il lettore video',
			'settings.autoHidePerformanceOverlay' => 'Nascondi automaticamente il riquadro delle prestazioni',
			'settings.autoHidePerformanceOverlayDescription' => 'Dissolvi il riquadro delle prestazioni insieme ai controlli di riproduzione',
			'settings.showNavBarLabels' => 'Mostra le etichette della barra di navigazione',
			'settings.showNavBarLabelsDescription' => 'Mostra le etichette di testo sotto le icone della barra di navigazione',
			'settings.startupSection' => 'Sezione di avvio',
			'settings.showExploreTab' => 'Mostra la scheda Esplora',
			'settings.showExploreTabDescription' => 'Visualizza la scheda Esplora con contenuti di Esplora di Plex e dei tracker collegati',
			'settings.liveTvDefaultFavorites' => 'Apri sui canali preferiti',
			'settings.liveTvDefaultFavoritesDescription' => 'Mostra solo i canali preferiti quando apri la TV in diretta',
			'settings.general' => 'Generali',
			'settings.generalDescription' => 'Lingua, avvio e comportamento della finestra',
			'settings.languageAndRegion' => 'Lingua e regione',
			'settings.startup' => 'Avvio',
			'settings.display' => 'Schermo',
			'settings.libraryAndCards' => 'Libreria e schede',
			'settings.homeScreen' => 'Schermata iniziale',
			'settings.navigation' => 'Navigazione',
			'settings.window' => 'Finestra',
			'settings.liveTv' => 'TV in diretta',
			'settings.player' => 'Lettore',
			'settings.videoAndDisplay' => 'Video e schermo',
			'settings.audio' => 'Audio',
			'settings.quality' => 'Qualità',
			'settings.subtitles' => 'Sottotitoli',
			'settings.seekAndTiming' => 'Avanzamento e tempi',
			'settings.behavior' => 'Comportamento',
			'settings.gestures' => 'Gesti',
			'settings.gestureBrightnessSwipe' => 'Scorrimento per la luminosità',
			'settings.gestureBrightnessSwipeDescription' => 'Scorri verso l\'alto o il basso sul bordo sinistro per regolare la luminosità',
			'settings.gestureVolumeSwipe' => 'Scorrimento per il volume',
			'settings.gestureVolumeSwipeDescription' => 'Scorri verso l\'alto o il basso sul bordo destro per regolare il volume',
			'settings.gesturePinchToZoom' => 'Pizzica per lo zoom',
			'settings.gesturePinchToZoomDescription' => 'Pizzica il video per ingrandire o ridurre',
			_ => null,
		} ?? switch (path) {
			'settings.rememberBrightnessLevel' => 'Ricorda il livello di luminosità',
			'settings.rememberBrightnessLevelDescription' => 'Avvia la riproduzione con la luminosità impostata dall\'ultimo scorrimento',
			'settings.controls' => 'Controlli',
			'settings.rememberPlayerChanges' => 'Ricorda le modifiche del lettore',
			'settings.rememberPlayerChangesDescription' => 'Dove viene salvata e riapplicata una modifica effettuata durante la riproduzione',
			'settings.scopePlaybackSpeed' => 'Velocità di riproduzione',
			'settings.scopeShaderPreset' => 'Preimpostazione shader',
			'settings.scopeAspectRatio' => 'Proporzioni',
			'settings.scopeSyncOffsets' => 'Sincronizzazione audio e sottotitoli',
			'settings.playerScopeOff' => 'Non salvare',
			'settings.playerScopeGlobal' => 'Ovunque',
			'settings.playerScopeLibrary' => 'Per libreria',
			'settings.playerScopeTitle' => 'Per serie o film',
			'settings.exportDialogTitle' => 'Esporta le impostazioni di Luroka',
			'settings.velvetHourTheme' => 'L\'ora del velluto',
			'themeEditor.builtIn' => 'Integrato',
			'themeEditor.presets' => 'Preimpostazioni',
			'themeEditor.custom' => 'Personalizzato',
			'themeEditor.customEmpty' => 'Non ancora creato',
			'themeEditor.editCustom' => 'Modifica tema personalizzato',
			'themeEditor.editCustomDescription' => 'Scegli tu stesso ogni colore',
			'themeEditor.locked' => 'Sblocca con il Sostenitore',
			'themeEditor.savedLocked' => 'Salvato: si sblocca con il Sostenitore',
			'themeEditor.title' => 'Tema personalizzato',
			'themeEditor.startFrom' => 'Inizia da',
			'themeEditor.startFromDescription' => 'Copia tutti i colori da un altro tema',
			'themeEditor.colors' => 'Colori',
			'themeEditor.preview' => 'Anteprima',
			'themeEditor.slots.bg' => 'Sfondo',
			'themeEditor.slots.surface' => 'Superficie',
			'themeEditor.slots.outline' => 'Contorno',
			'themeEditor.slots.text' => 'Testo',
			'themeEditor.slots.textMuted' => 'Testo secondario',
			'themeEditor.slots.accent' => 'Accento',
			'themeEditor.opacity' => 'Opacità',
			'themeEditor.hexHint' => '#RRGGBB o #AARRGGBB',
			'themeEditor.fromOtherThemes' => 'Da altri temi',
			'themeEditor.swatchLabel' => ({required Object theme, required Object color}) => '${theme} ${color}',
			'themeEditor.contrast.textOnBg' => 'Testo sullo sfondo',
			'themeEditor.contrast.textOnSurface' => 'Testo sulla superficie',
			'themeEditor.contrast.textMutedOnBg' => 'Testo secondario sullo sfondo',
			'themeEditor.contrast.textMutedOnSurface' => 'Testo secondario sulla superficie',
			'themeEditor.contrast.accentOnBg' => 'Accento sullo sfondo',
			'themeEditor.contrast.accentOnSurface' => 'Accento sulla superficie',
			'themeEditor.contrast.labelOnAccent' => 'Etichetta del pulsante sull\'accento',
			'themeEditor.lowContrast' => ({required Object pair, required Object ratio, required Object minimum}) => '${pair}: ${ratio}:1, al di sotto del ${minimum}:1 consigliato',
			'themeEditor.discardTitle' => 'Eliminare le modifiche?',
			'themeEditor.discardMessage' => 'Le modifiche ai colori non salvate andranno perse.',
			'themeEditor.discard' => 'Scartare',
			'themeEditor.previewCardTitle' => ({required Object number}) => 'Episodio ${number}',
			'themeEditor.previewCardSubtitle' => ({required Object minutes}) => '${minutes} min rimanente',
			'themeEditor.previewSwitch' => 'Riproduzione automatica',
			'themeEditor.previewMutedText' => 'Il testo secondario si legge così',
			'seriesBrowser.oneEpisode' => '1 episodio',
			'seriesBrowser.watchedCount' => ({required Object count}) => '${count} guardato',
			'seriesBrowser.episodeCount' => ({required Object count}) => 'Episodi ${count}',
			'seriesBrowser.episodesFor' => ({required Object season}) => '${season} · Episodi',
			'seriesBrowser.enterHint' => 'Seleziona: stagione aperta · ↓: episodi',
			'titlePage.genre' => 'Genere',
			'titlePage.remaining' => ({required Object time}) => '${time} rimanenti',
			'titlePage.continueEpisode' => ({required Object season, required Object episode}) => 'Continua S${season} E${episode}',
			'titlePage.watchlist' => 'Lista di controllo',
			'titlePage.more' => 'Di più',
			'tvMenus.appearanceDescription' => 'Tema, margini dello schermo e poster',
			'lurokaPlayer.title' => 'Impostazioni del giocatore',
			'lurokaPlayer.watch' => 'Guarda',
			'lurokaPlayer.watchDescription' => 'Stabilisci il ritmo, rilassati e decidi cosa fare dopo.',
			'lurokaPlayer.picture' => 'Impostazioni dell\'immagine',
			'lurokaPlayer.pictureDescription' => 'Zoom, HDR ed elaborazione video',
			'lurokaPlayer.sound' => 'Audio e sottotitoli',
			'lurokaPlayer.audioSettings' => 'Impostazioni audio',
			'lurokaPlayer.soundDescription' => 'Temporizzazione, volume e uscita audio',
			'lurokaPlayer.chooseTracks' => 'Scegli le lingue e le tracce dei sottotitoli',
			'lurokaPlayer.tools' => 'Avanzato',
			'lurokaPlayer.toolsDescription' => 'Informazioni sulla riproduzione e diagnostica',
			'lurokaPlayer.preferences' => 'Preferenze di riproduzione',
			'lurokaPlayer.preferencesDescription' => 'Il tuo cinema, i tuoi default. Inizia con audio e sottotitoli, quindi ottimizza lo streaming e lo schermo.',
			'lurokaPlayer.streamPreferences' => 'Qualità dello streaming',
			'lurokaPlayer.displayPreferences' => 'Visualizzazione',
			'lurokaPlayer.enginePreferences' => 'Opzioni avanzate del giocatore',
			'lurokaPlayer.seekPreferences' => 'Cerco',
			'lurokaPlayer.watchPreferences' => 'Riproduzione automatica e salto',
			'lurokaPlayer.rememberPreferences' => 'Ricorda le preferenze',
			'lurokaSettings.quickSetup' => 'Configurazione rapida',
			'lurokaSettings.quickSetupDescription' => 'Inizia con l\'essenziale: navigazione TV più fluida, schermo comodo da adattare, layout Home e preferenze di riproduzione.',
			'lurokaSettings.experience' => 'La tua esperienza',
			'lurokaSettings.experienceDescription' => 'Fai in modo che Luroka si senta a proprio agio: aspetto, lingue, riproduzione, librerie e tempo di visualizzazione.',
			'lurokaSettings.remoteHint' => '↑ ↓ Sfoglia le categorie · → / Seleziona Apri opzioni · ← Torna alle categorie',
			'playerChrome.browse' => 'Capitoli e coda',
			'playerChrome.backToPlayback' => 'Torna alla riproduzione',
			'playerChrome.nowPlaying' => 'ORA GIOCANDO',
			'playerChrome.options' => 'OPZIONI DEL GIOCATORE',
			'tvLayout.screenMargins' => 'Margini dello schermo televisivo',
			'tvLayout.screenMarginsDescription' => 'Riduci i bordi dell\'app se la TV taglia parte dell\'immagine',
			'tvLayout.screenMarginsDefault' => '0% (predefinito)',
			'studios.checkingCopies' => 'Controllo di altre librerie... Scegli una copia conosciuta in qualsiasi momento.',
			'studios.incompleteCopies' => 'Impossibile controllare alcune librerie. Scegli una copia conosciuta oppure annulla e riprova.',
			'studios.partialFavorites' => 'Impossibile caricare alcuni preferiti. Seleziona Aggiorna per riprovare.',
			'studios.copyLookupFailedTitle' => 'Impossibile controllare tutte le copie',
			'studios.copyLookupFailedMessage' => 'Alcune biblioteche non hanno risposto. Puoi aprire una delle copie già trovate oppure annullare e riprovare.',
			'studios.openKnownCopies' => 'Mostra copie conosciute',
			'studios.browseAll' => 'Sfoglia tutto',
			'studios.titleCount' => ({required Object count}) => 'Titoli ${count}',
			'studios.topRated' => 'I più votati',
			'studios.mostWatched' => 'I più visti nella tua raccolta',
			'studios.collection' => 'COLLEZIONE STUDIO',
			'studios.loadedTitles' => ({required Object count}) => '${count} titoli caricati',
			'studios.sort' => 'Ordina i titoli',
			'studios.sortTitleAscending' => 'Titolo dalla A alla Z',
			'studios.sortTitleDescending' => 'Titolo Z-A',
			'studios.sortNewest' => 'Versione più recente',
			'studios.sortOldest' => 'Versione più vecchia',
			'studios.sortAdded' => 'Aggiunto di recente',
			'studios.sortEpisodeAdded' => 'Episodio aggiunto di recente',
			'studios.sortRating' => 'Voto più alto',
			'studios.title' => 'Sfoglia per Studio',
			'studios.all' => 'Tutto',
			'studios.movies' => 'Film',
			'studios.shows' => 'Spettacoli televisivi',
			'studios.loadMore' => 'Carica più titoli',
			'studios.empty' => 'Nessun titolo corrispondente nelle tue librerie attualmente visibili.',
			'studios.retry' => 'Impossibile caricare altri titoli: seleziona per riprovare',
			'studios.description' => 'Esplora film e programmi di questo studio nelle tue raccolte.',
			'dashboard.previousFeature' => 'Titolo in primo piano precedente',
			'dashboard.nextFeature' => 'Titolo in primo piano successivo',
			'dashboard.cinemaHome' => 'CASA',
			'dashboard.episodeFallback' => 'Episodio televisivo',
			'dashboard.timeLeft' => ({required Object minutes}) => 'Ancora ${minutes} min',
			'dashboard.timeLeftHours' => ({required Object hours, required Object minutes}) => 'Ancora ${hours} h e ${minutes} min',
			'dashboard.spoilerHidden' => 'Dettagli dell\'episodio nascosti dalla tua preferenza spoiler.',
			'dashboard.synopsisUnavailable' => 'Apri Dettagli per vedere di più su questo titolo.',
			'dashboard.yourSpace' => 'IL TUO SPAZIO',
			'dashboard.title' => 'Il tuo cinema.',
			'dashboard.subtitle' => 'Riprendi una storia o trova la prossima.',
			'dashboard.featured' => 'SCELTO DA LUROKA',
			'dashboard.jumpBackIn' => 'Continua a guardare',
			'dashboard.episodeLabel' => ({required Object season, required Object episode}) => 'S${season} · E${episode}',
			'dashboard.anotherPick' => 'Un\'altra scelta',
			'dashboard.exploreSeries' => 'Esplora le serie',
			'dashboard.showFeatured' => 'Dettagli del titolo mirati',
			'dashboard.showFeaturedDescription' => 'Mostra illustrazione, sinossi e informazioni sull\'episodio per la scheda evidenziata',
			'lurokaCatalog.aboutPerson' => 'SOTTO I RIFLETTORI',
			'lurokaCatalog.biographyUnavailable' => 'Una biografia non è disponibile da questo server.',
			'lurokaCatalog.filmography' => 'Film e programmi nelle tue raccolte',
			'lurokaCatalog.recommended' => 'Consigliati',
			'lurokaCatalog.browse' => 'Tutti i titoli',
			'lurokaCatalog.collections' => 'Collezioni',
			'lurokaCatalog.browseHint' => 'Esplora il tuo catalogo. Dai forma alla selezione con filtri e ordinamento.',
			'lurokaCatalog.recommendedHint' => 'Trova la tua prossima storia',
			'lurokaCatalog.details' => 'Dietro la storia',
			'referenceDetails.oneEpisodeLeft' => '1 episodio rimasto',
			'referenceDetails.playAll' => 'Gioca tutto',
			'referenceDetails.present' => 'Presente',
			'referenceDetails.continuing' => 'Continuando',
			'referenceDetails.upNext' => 'Il prossimo',
			'referenceDetails.episodesLeft' => ({required Object count}) => 'Episodi ${count} rimasti',
			'lurokaThemes.title' => 'Luroka tavolozze cinematografiche',
			'lurokaThemes.coral' => 'Corallo · Blu notte e tramonto',
			'lurokaThemes.ocean' => 'Oceano · blu profondo e ghiaccio',
			'lurokaThemes.jade' => 'Giada · sempreverde e menta',
			'lurokaThemes.amethyst' => 'Ametista · viola di mezzanotte',
			'lurokaThemes.darkThemes' => 'Temi del cinema oscuro',
			'lurokaThemes.lightThemes' => 'Temi del cinema leggero',
			'lurokaThemes.moreThemes' => 'Più temi',
			'lurokaThemes.moreThemesDescription' => 'Sfoglia tavolozze aggiuntive e colori personalizzati',
			'lurokaThemes.obsidian' => 'Ossidiana · nero puro e champagne',
			'lurokaThemes.nocturne' => 'Notturno · carbone e champagne',
			'lurokaThemes.burgundy' => 'Borgogna · Vino di velluto e rosa',
			'lurokaThemes.slate' => 'Ardesia · grafite e pervinca',
			'lurokaThemes.espresso' => 'Espresso · cacao e caramello',
			'lurokaThemes.pearl' => 'Perla · porcellana e zaffiro',
			'lurokaThemes.linen' => 'Lino · caldo avorio e terracotta',
			'lurokaThemes.sunrise' => 'Alba · pesca e corallo',
			'lurokaThemes.coastal' => 'Costiero · Nebbia e verde acqua dell\'oceano',
			'lurokaThemes.latte' => 'Latte · panna e caramello',
			'lurokaThemes.sage' => 'Salvia · verde tenue ed eucalipto',
			'lurokaThemes.lavender' => 'Lavanda · lilla e viola intenso',
			'customPerformance.title' => 'Prestazioni ed effetti',
			'customPerformance.fireStickMode' => 'Modalità dispositivo a basso consumo',
			'customPerformance.description' => 'Utilizza effetti ridotti, sfondi statici, grafica limitata a 720p e una cache di immagini da 40 MiB. Mentre è abilitato, sovrascrive gli effetti visivi; disattivandolo si ripristina la preferenza degli effetti visivi.',
			'customPerformance.detailsTitle' => 'Dettagli sulle prestazioni',
			'customPerformance.details' => 'Effetti attivi, limite della cache delle immagini e misurazioni delle prestazioni di navigazione',
			'customPerformance.effectsTier' => 'Livello degli effetti attivi',
			'customPerformance.imageCache' => 'Limite della cache delle immagini',
			'customPerformance.measurement' => 'Misurazione della navigazione',
			'customPerformance.measureInstructions' => 'Avvia un campione di 20 secondi, torna alla Home e naviga utilizzando il telecomando. Torna qui per vedere i risultati. Ripeti le stesse azioni con la modalità attivata e disattivata per confrontare. Questo misura il lavoro dell\'interfaccia utente di Flutter, non le prestazioni del decodificatore video.',
			'customPerformance.startSample' => 'Avvia un campione di 20 secondi',
			'customPerformance.stopSample' => 'Finisci il campione adesso',
			'customPerformance.sampling' => 'Campionamento: torna alla Home e naviga. I risultati verranno conservati qui.',
			'customPerformance.frames' => 'Fotogrammi campionati',
			'customPerformance.slowFrames' => 'Cornici fuori budget',
			'customPerformance.buildP95' => 'Tempo di creazione dell\'interfaccia utente (95° percentile)',
			'customPerformance.rasterP95' => 'Tempo raster (95° percentile)',
			'customPerformance.frameBudget' => 'Budget per fotogramma',
			'customPerformance.processMemory' => 'Memoria del processo dell\'app alla fine del campione',
			'customPerformance.noFrames' => 'Nessun fotogramma renderizzato è stato catturato. Avvia un altro campione e sfoglia l\'app.',
			'homeLayout.title' => 'Personalizza la casa',
			'homeLayout.description' => 'Scegli l\'ordine delle righe e la visibilità per questo profilo. Seleziona una riga per spostarla o nasconderla.',
			'homeLayout.rows' => 'Righe domestiche',
			'homeLayout.visible' => 'Visibile',
			'homeLayout.hidden' => 'Nascosto',
			'homeLayout.showRow' => 'Mostra riga',
			'homeLayout.hideRow' => 'Nascondi riga',
			'homeLayout.moveUp' => 'Vai su',
			'homeLayout.moveDown' => 'Spostati giù',
			'homeLayout.pinnedCollections' => 'Collezioni appuntate',
			'homeLayout.pinInstructions' => 'Apri il menu di una raccolta e scegli Pin su Home. Seleziona una raccolta bloccata qui per rimuoverne il collegamento.',
			'homeLayout.pinCollection' => 'Pin a Casa',
			'homeLayout.unpinCollection' => 'Sblocca da casa',
			'homeLayout.reset' => 'Ripristina le righe predefinite',
			'homeLayout.resetDescription' => 'Ripristinare l\'ordine delle righe originale e mostrare tutte le righe per questo profilo? Le tue raccolte appuntate verranno conservate.',
			'homeLayout.saveFailed' => 'Impossibile salvare il layout della tua casa. Per favore riprova.',
			'homeLayout.emptyHint' => 'Le righe potrebbero essere nascoste. Apri Personalizza casa per mostrarli di nuovo.',
			'screenTime.title' => 'Tempo sullo schermo',
			'screenTime.description' => 'Visualizza il tempo trascorso a guardare video su questo profilo',
			'screenTime.today' => 'Oggi',
			'screenTime.thisWeek' => 'Questa settimana',
			'screenTime.thisMonth' => 'Questo mese',
			'screenTime.lessThanMinute' => '< 1 minuto',
			'screenTime.minutes' => ({required Object count}) => '${count} min',
			'screenTime.hours' => ({required Object count}) => '${count} ore',
			'screenTime.hoursMinutes' => ({required Object hours, required Object minutes}) => '${hours} ora ${minutes} min',
			'activityStats.title' => 'Visualizzazione delle statistiche',
			'activityStats.period' => 'Periodo',
			'activityStats.last7Days' => '7 giorni',
			'activityStats.last30Days' => '30 giorni',
			'activityStats.last90Days' => '90 giorni',
			'activityStats.thisYear' => 'Anno',
			'activityStats.allTime' => 'Tutto',
			'activityStats.heroAllTime' => 'Tutto il tempo',
			'activityStats.heroDailyAverage' => 'Media giornaliera',
			'activityStats.consistency' => 'Coerenza',
			'activityStats.currentStreak' => 'Serie attuale',
			'activityStats.dayCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n, one: '${n} giorno', other: '${n} giorni', ), 
			'activityStats.longestStreak' => 'Serie più lunga',
			'activityStats.bestDay' => 'Il giorno migliore',
			'activityStats.bestWeek' => 'La settimana migliore',
			'activityStats.trendTitle' => 'Guarda il tempo',
			'activityStats.trendToday' => 'Oggi',
			'activityStats.gapDetail' => ({required Object stat, required Object range}) => '${stat} su ${range}',
			'activityStats.weekdayTitle' => 'Entro i giorni feriali',
			'activityStats.hoursTitle' => 'Per ora del giorno',
			'activityStats.amLabel' => 'AM',
			'activityStats.pmLabel' => 'PM',
			'activityStats.kindsTitle' => 'Per categoria',
			'activityStats.kindMovie' => 'Film',
			'activityStats.kindTv' => 'televisione',
			'activityStats.kindLiveTv' => 'TV in diretta',
			'activityStats.kindMusic' => 'Musica',
			'activityStats.kindOther' => 'Altro',
			'activityStats.topTitlesTitle' => 'I più visti',
			'activityStats.sessionsTitle' => 'Sessioni recenti',
			'activityStats.showMore' => 'Mostra di più',
			'activityStats.sessionNoTitle' => 'Riproduzione non identificata',
			'activityStats.emptyTitle' => 'Niente qui ancora',
			'activityStats.emptyBody' => 'Guarda qualcosa e le tue statistiche si accumuleranno qui.',
			'activityStats.noDataInPeriod' => 'Nessuna riproduzione registrata in questo periodo.',
			'search.hint' => 'Cerca film, serie TV e musica...',
			'search.tryDifferentTerm' => 'Prova altri termini di ricerca',
			'search.searchYourMedia' => 'Cerca nei tuoi media',
			'search.enterTitleActorOrKeyword' => 'Inserisci un titolo, attore o parola chiave',
			'search.people' => 'Persone',
			'search.recentSearches' => 'Ricerche recenti',
			'search.clearHistory' => 'Cancella cronologia',
			'hotkeys.setShortcutFor' => ({required Object actionName}) => 'Imposta una scorciatoia per ${actionName}',
			'hotkeys.clearShortcut' => 'Elimina scorciatoia',
			'hotkeys.noShortcutSet' => 'Nessuna scorciatoia impostata',
			'hotkeys.currentShortcut' => 'Scorciatoia attuale:',
			'hotkeys.pressToRecord' => 'Seleziona per registrare una scorciatoia',
			'hotkeys.recordingShortcut' => 'Premi ora la scorciatoia',
			'hotkeys.actions.playPause' => 'Riproduci/Pausa',
			'hotkeys.actions.volumeUp' => 'Alza volume',
			'hotkeys.actions.volumeDown' => 'Abbassa volume',
			'hotkeys.actions.seekForward' => ({required Object seconds}) => 'Avanti (${seconds}s)',
			'hotkeys.actions.seekBackward' => ({required Object seconds}) => 'Indietro (${seconds}s)',
			'hotkeys.actions.fullscreenToggle' => 'Attiva/disattiva schermo intero',
			'hotkeys.actions.muteToggle' => 'Attiva/disattiva audio',
			'hotkeys.actions.subtitleToggle' => 'Attiva/disattiva sottotitoli',
			'hotkeys.actions.audioTrackNext' => 'Traccia audio successiva',
			'hotkeys.actions.subtitleTrackNext' => 'Sottotitoli successivi',
			'hotkeys.actions.chapterNext' => 'Capitolo successivo',
			'hotkeys.actions.chapterPrevious' => 'Capitolo precedente',
			'hotkeys.actions.episodeNext' => 'Episodio successivo',
			'hotkeys.actions.episodePrevious' => 'Episodio precedente',
			'hotkeys.actions.speedIncrease' => 'Aumenta velocità',
			'hotkeys.actions.speedDecrease' => 'Diminuisci velocità',
			'hotkeys.actions.speedReset' => 'Ripristina velocità',
			'hotkeys.actions.zoomIn' => 'Aumenta zoom',
			'hotkeys.actions.zoomOut' => 'Riduci zoom',
			'hotkeys.actions.zoomReset' => 'Ripristina zoom',
			'hotkeys.actions.subSeekNext' => 'Vai al sottotitolo successivo',
			'hotkeys.actions.subSeekPrev' => 'Vai al sottotitolo precedente',
			'hotkeys.actions.shaderToggle' => 'Attiva/disattiva shader',
			'hotkeys.actions.skipMarker' => 'Salta intro/titoli di coda',
			'hotkeys.actions.screenshot' => 'Cattura schermata',
			'fileInfo.title' => 'Info sul file',
			'fileInfo.overview' => 'Panoramica',
			'fileInfo.video' => 'Video',
			'fileInfo.audio' => 'Audio',
			'fileInfo.subtitles' => 'Sottotitoli',
			'fileInfo.images' => 'Immagini incorporate',
			'fileInfo.dataStreams' => 'Flussi di dati',
			'fileInfo.lyrics' => 'Testi',
			'fileInfo.file' => 'File',
			'fileInfo.attachments' => 'Allegati',
			'fileInfo.delivery' => 'Distribuzione',
			'fileInfo.versionCounter' => ({required Object index, required Object count}) => 'Versione ${index} di ${count}',
			'fileInfo.fileCounter' => ({required Object index, required Object count}) => 'File ${index} di ${count}',
			'fileInfo.noStreams' => 'Il server non ha segnalato flussi per questo file.',
			'fileInfo.copyPath' => 'Copia percorso',
			'fileInfo.pathCopied' => 'Percorso del file copiato',
			'fileInfo.codec' => 'Codec',
			'fileInfo.codecTag' => 'Tag codec',
			'fileInfo.resolution' => 'Risoluzione',
			'fileInfo.codedResolution' => 'Risoluzione codificata',
			'fileInfo.bitrate' => 'Bitrate',
			'fileInfo.frameRate' => 'Frequenza fotogrammi',
			'fileInfo.rotation' => 'Rotazione',
			'fileInfo.comment' => 'Commento',
			'fileInfo.audioDescription' => 'Descrizione audio',
			'fileInfo.headerCompression' => 'Compressione header',
			'fileInfo.sidecarFile' => 'File sidecar',
			'fileInfo.transportTimestamp' => 'Timestamp di trasporto',
			'fileInfo.displayOffset' => 'Offset di visualizzazione',
			'fileInfo.previewFailureCode' => 'Codice errore anteprima',
			'fileInfo.previewRetries' => 'Riprova anteprima',
			'fileInfo.aspectRatio' => 'Proporzioni',
			'fileInfo.pixelAspectRatio' => 'Aspect ratio pixel',
			'fileInfo.profile' => 'Profilo',
			'fileInfo.level' => 'Livello',
			'fileInfo.bitDepth' => 'Profondità in bit',
			'fileInfo.pixelFormat' => 'Formato pixel',
			'fileInfo.colorSpace' => 'Spazio colore',
			'fileInfo.colorRange' => 'Gamma colori',
			'fileInfo.colorPrimaries' => 'Colori primari',
			'fileInfo.colorTransfer' => 'Trasferimento colore',
			'fileInfo.chromaSubsampling' => 'Sottocampionamento cromatico',
			'fileInfo.chromaLocation' => 'Posizione crominanza',
			'fileInfo.scanType' => 'Tipo di scansione',
			'fileInfo.interlaced' => 'Interlacciato',
			'fileInfo.anamorphic' => 'Anamorfico',
			'fileInfo.referenceFrames' => 'Frame di riferimento',
			'fileInfo.dynamicRange' => 'Gamma dinamica',
			'fileInfo.dolbyVision' => 'Dolby Vision',
			'fileInfo.dolbyVisionLevel' => 'Livello Dolby Vision',
			'fileInfo.dolbyVisionVersion' => 'Versione Dolby Vision',
			'fileInfo.dolbyVisionLayers' => 'Livelli Dolby Vision',
			'fileInfo.baseLayerCompatibility' => 'Compatibilità layer di base',
			'fileInfo.avcBitstream' => 'Bitstream AVC',
			'fileInfo.nalLengthSize' => 'Dimensione lunghezza NAL',
			'fileInfo.scalingMatrix' => 'Matrice di scaling personalizzata',
			'fileInfo.streamIdentifier' => 'Identificatore flusso',
			'fileInfo.streamIndex' => 'Indice flusso',
			'fileInfo.streamId' => 'ID flusso',
			'fileInfo.language' => 'Lingua',
			'fileInfo.languageCode' => 'Codice lingua',
			'fileInfo.streamTitle' => 'Titolo traccia',
			'fileInfo.channels' => 'Canali',
			'fileInfo.sampleRate' => 'Frequenza di campionamento',
			'fileInfo.spatialAudio' => 'Audio spaziale',
			'fileInfo.textBased' => 'Testuale',
			'fileInfo.subtitleFormat' => 'Formato sidecar',
			'fileInfo.provider' => 'Provider',
			'fileInfo.matchScore' => 'Punteggio corrispondenza',
			'fileInfo.externalDelivery' => 'Può essere servito separatamente',
			'fileInfo.sidecarPath' => 'Percorso sidecar',
			'fileInfo.sourceStream' => 'Copiato da',
			'fileInfo.temporary' => 'Temporaneo',
			'fileInfo.timeBase' => 'Base temporale',
			'fileInfo.overallBitrate' => 'Bitrate complessivo',
			'fileInfo.path' => 'Percorso',
			'fileInfo.fileName' => 'Nome file',
			'fileInfo.size' => 'Dimensione',
			'fileInfo.totalSize' => 'Dimensione totale',
			'fileInfo.container' => 'Contenitore',
			'fileInfo.duration' => 'Durata',
			'fileInfo.previewThumbnails' => 'Miniature anteprima',
			'fileInfo.previewIndex' => 'Indice anteprima',
			'fileInfo.packetLength' => 'Lunghezza pacchetto',
			'fileInfo.filePresent' => 'File presente',
			'fileInfo.fileReadable' => 'Leggibile dal server',
			'fileInfo.streamPath' => 'Percorso flusso',
			'fileInfo.optimizedForStreaming' => 'Ottimizzato per lo streaming',
			'fileInfo.has64bitOffsets' => 'Offset a 64 bit',
			'fileInfo.protocol' => 'Protocollo',
			'fileInfo.mediaType' => 'Tipo di supporto',
			'fileInfo.sourceKind' => 'Tipo di origine',
			'fileInfo.optimizedVersion' => 'Versione ottimizzata',
			'fileInfo.optimizationTarget' => 'Obiettivo ottimizzazione',
			'fileInfo.deletedAt' => 'Eliminato',
			'fileInfo.remoteSource' => 'Origine remota',
			'fileInfo.infiniteStream' => 'Flusso infinito',
			'fileInfo.directPlay' => 'Riproduzione diretta',
			'fileInfo.directStream' => 'Streaming diretto',
			'fileInfo.transcoding' => 'Transcodifica',
			'fileInfo.etag' => 'ETag',
			'fileInfo.versionId' => 'ID versione',
			'fileInfo.fileId' => 'ID file',
			'fileInfo.defaultAudioTrack' => 'Traccia audio predefinita',
			'fileInfo.defaultSubtitleTrack' => 'Traccia sottotitoli predefinita',
			'fileInfo.subtitlesOff' => 'Disattivati',
			'fileInfo.flagDefault' => 'Predefinito',
			'fileInfo.flagForced' => 'Forzato',
			'fileInfo.flagSelected' => 'Selezionato',
			'fileInfo.flagExternal' => 'Esterno',
			'fileInfo.flagHearingImpaired' => 'Non udenti',
			'fileInfo.flagDub' => 'Doppiato',
			'fileInfo.flagOriginal' => 'Originale',
			'fileInfo.channelsMono' => 'Mono',
			'fileInfo.dolbyVisionProfile' => ({required Object profile}) => 'Profilo ${profile}',
			'mediaMenu.markAsWatched' => 'Segna come visto',
			'mediaMenu.markAsUnwatched' => 'Segna come non visto',
			'mediaMenu.clearProgress' => 'Progressi evidenti',
			'mediaMenu.removeFromContinueWatching' => 'Rimuovi da Continua a guardare',
			'mediaMenu.viewDetails' => 'Visualizza dettagli',
			'mediaMenu.goToSeries' => 'Vai alla serie',
			'mediaMenu.shufflePlay' => 'Riproduzione casuale',
			'mediaMenu.shuffleNotAvailableOffline' => 'Riproduzione casuale non disponibile offline',
			'mediaMenu.fileInfo' => 'Info sul file',
			'mediaMenu.deleteEpisodeFromServer' => 'Elimina episodio dal server',
			'mediaMenu.deleteSeasonFromServer' => 'Elimina stagione dal server',
			'mediaMenu.deleteShowFromServer' => 'Elimina serie dal server',
			'mediaMenu.deleteMovieFromServer' => 'Elimina film dal server',
			'mediaMenu.deleteEpisodeTitle' => 'Eliminare questo episodio?',
			'mediaMenu.deleteSeasonTitle' => 'Eliminare questa stagione?',
			'mediaMenu.deleteShowTitle' => 'Eliminare questa serie?',
			'mediaMenu.deleteMovieTitle' => 'Eliminare questo film?',
			'mediaMenu.deleteEpisodeConfirm' => 'Elimina episodio',
			'mediaMenu.deleteSeasonConfirm' => 'Elimina stagione',
			'mediaMenu.deleteShowConfirm' => 'Elimina serie',
			'mediaMenu.deleteMovieConfirm' => 'Elimina film',
			'mediaMenu.deleteAnyway' => 'Elimina comunque',
			'mediaMenu.confirmDeleteTarget' => ({required Object title}) => 'Eliminare definitivamente ${title} dal tuo server?',
			'mediaMenu.deleteMultipleWarning' => 'Sono inclusi tutti gli episodi e i relativi file.',
			'mediaMenu.deleteEpisodeCountWarning' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n, one: 'Questo elimina tutti i ${n} episodio in essa contenuto e il relativo file.', other: 'Questo elimina tutti i ${n} episodi in essa contenuti e i relativi file.', ), 
			'mediaMenu.deleteMultiPartWarning' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n, one: 'Questo elemento è archiviato in ${n} file, che verrà eliminato.', other: 'Questo elemento è archiviato in ${n} file, e tutti verranno eliminati.', ), 
			'mediaMenu.deleteSharedFileHeading' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n, one: '${n} altro episodio è archiviato nello stesso file e verrà eliminato anche lui:', other: '${n} altri episodi sono archiviati nello stesso file e verranno eliminati anche loro:', ), 
			'mediaMenu.deleteScopeUnverifiedProbeFailed' => 'Luroka non ha potuto verificare quali file rimuoverà, quindi potrebbe eliminare più di quanto indicato sopra. Annulla e riprova, oppure elimina comunque.',
			'mediaMenu.deleteScopeUnverifiedNoFileInfo' => 'Il tuo server non ha fornito i dettagli del file per questo elemento, quindi Luroka non può verificare quali file rimuoverà. Potrebbe eliminare più di quanto indicato sopra.',
			'mediaMenu.mediaDeletedSuccessfully' => 'Elemento multimediale eliminato correttamente',
			'mediaMenu.mediaFailedToDelete' => 'Impossibile eliminare l\'elemento multimediale',
			'mediaMenu.rate' => 'Valuta',
			'mediaMenu.playFromBeginning' => 'Riproduci dall\'inizio',
			'mediaMenu.playVersion' => 'Riproduci versione...',
			'rateSheet.title' => 'Valuta',
			'rateSheet.server' => 'Server',
			'rateSheet.favorite' => 'Preferito',
			'rateSheet.favorited' => 'Aggiunto ai preferiti',
			'rateSheet.saved' => 'Salvato',
			'rateSheet.notAvailable' => 'Nessuna corrispondenza trovata',
			'rateSheet.noConnectedServices' => 'Collega un servizio nelle Impostazioni per assegnare valutazioni anche su quel servizio.',
			'accessibility.mediaCardMovie' => ({required Object title}) => '${title}, film',
			'accessibility.mediaCardShow' => ({required Object title}) => '${title}, serie TV',
			'accessibility.mediaCardEpisode' => ({required Object title, required Object episodeInfo}) => '${title}, ${episodeInfo}',
			'accessibility.mediaCardSeason' => ({required Object title, required Object seasonInfo}) => '${title}, ${seasonInfo}',
			'accessibility.mediaCardWatched' => 'visto',
			'accessibility.mediaCardPartiallyWatched' => ({required Object percent}) => 'visto al ${percent}%',
			'accessibility.mediaCardUnwatched' => 'non visto',
			'accessibility.tapToPlay' => 'Tocca per riprodurre',
			'accessibility.decrease' => 'Diminuisci',
			'accessibility.increase' => 'Aumenta',
			'accessibility.decreaseValue' => ({required Object label}) => 'Diminuisci ${label}',
			'accessibility.increaseValue' => ({required Object label}) => 'Aumenta ${label}',
			'accessibility.hue' => 'Tonalità',
			'accessibility.saturation' => 'Saturazione',
			'accessibility.brightness' => 'Luminosità',
			'accessibility.hexColor' => 'Colore esadecimale',
			'accessibility.expandText' => 'Espandi il testo',
			'accessibility.collapseText' => 'Comprimi il testo',
			'accessibility.alphabetNavigation' => 'Navigazione alfabetica',
			'accessibility.alphabetScrollHint' => 'Scorri verso l\'alto o il basso per cambiare lettera',
			'accessibility.rowColumnPosition' => ({required Object row, required Object rowCount, required Object column, required Object columnCount}) => 'Riga ${row} di ${rowCount}, colonna ${column} di ${columnCount}',
			'accessibility.rowPosition' => ({required Object row, required Object rowCount}) => 'Riga ${row} di ${rowCount}',
			'accessibility.autoScrollPlay' => 'Avvia scorrimento automatico',
			'accessibility.autoScrollPause' => 'Sospendi scorrimento automatico',
			'accessibility.hueShort' => 'T',
			'accessibility.saturationShort' => 'S',
			'accessibility.valueShort' => 'V',
			'tooltips.shufflePlay' => 'Riproduzione casuale',
			'tooltips.playTrailer' => 'Riproduci trailer',
			'tooltips.markAsWatched' => 'Segna come visto',
			'tooltips.markAsUnwatched' => 'Segna come non visto',
			'audioTracks.track' => ({required Object n}) => 'Traccia audio ${n}',
			'videoControls.audioLabel' => 'Audio',
			'videoControls.subtitlesLabel' => 'Sottotitoli',
			'videoControls.addTime' => ({required Object amount, required Object unit}) => '+${amount}${unit}',
			'videoControls.letterbox' => 'Letterbox',
			'videoControls.fillScreen' => 'Riempi lo schermo',
			'videoControls.stretch' => 'Allunga',
			'videoControls.lockRotation' => 'Blocca rotazione',
			'videoControls.unlockRotation' => 'Sblocca rotazione',
			'videoControls.timerActive' => 'Timer attivo',
			'videoControls.playbackWillPauseIn' => ({required Object duration}) => 'La riproduzione verrà messa in pausa tra ${duration}',
			'videoControls.sleepTimerEndOfVideo' => 'Fine del video corrente',
			'videoControls.sleepTimerStopAtHeader' => 'Interrompi alle',
			'videoControls.sleepTimerDurationHeader' => 'Timer',
			'videoControls.playbackWillPauseAtEnd' => 'La riproduzione verrà messa in pausa alla fine di questo video',
			'videoControls.stillWatching' => 'Stai ancora guardando?',
			'videoControls.pausingIn' => ({required Object seconds}) => 'Pausa tra ${seconds}s',
			'videoControls.continueWatching' => 'Continua',
			'videoControls.autoPlayNext' => 'Riproduci automaticamente il successivo',
			'videoControls.playNext' => 'Riproduci il successivo',
			'videoControls.playButton' => 'Riproduci',
			'videoControls.pauseButton' => 'Pausa',
			'videoControls.playbackPaused' => 'In pausa',
			'videoControls.playbackResumed' => 'Riproduzione',
			'videoControls.loadingVideo' => 'Caricamento video',
			'videoControls.showPlaybackControls' => 'Mostra i controlli di riproduzione',
			'videoControls.hidePlaybackControls' => 'Nascondi i controlli di riproduzione',
			'videoControls.seekBackwardButton' => ({required Object seconds}) => 'Riavvolgi di ${seconds} secondi',
			'videoControls.seekForwardButton' => ({required Object seconds}) => 'Avanza di ${seconds} secondi',
			'videoControls.previousButton' => 'Episodio precedente',
			_ => null,
		} ?? switch (path) {
			'videoControls.nextButton' => 'Episodio successivo',
			'videoControls.previousChapterButton' => 'Capitolo precedente',
			'videoControls.nextChapterButton' => 'Capitolo successivo',
			'videoControls.muteButton' => 'Silenzia',
			'videoControls.unmuteButton' => 'Riattiva audio',
			'videoControls.settingsButton' => 'Impostazioni di riproduzione',
			'videoControls.infoButton' => 'Informazioni',
			'videoControls.tracksButton' => 'Audio e sottotitoli',
			'videoControls.chaptersButton' => 'Capitoli',
			'videoControls.versionQualityButton' => 'Versione e qualità',
			'videoControls.versionColumnHeader' => 'Versione',
			'videoControls.qualityColumnHeader' => 'Qualità',
			'videoControls.qualityOriginal' => 'Originale',
			'videoControls.qualityPresetLabel' => ({required Object resolution, required Object bitrate}) => '${resolution}p ${bitrate} Mbps',
			'videoControls.transcodeUnavailableFallback' => 'Transcodifica non disponibile — riproduzione in qualità originale',
			'videoControls.subtitleUnavailableFallback' => 'Impossibile caricare i sottotitoli selezionati — la riproduzione continua senza sottotitoli',
			'videoControls.pipButton' => 'Modalità Picture-in-Picture',
			'videoControls.aspectRatioButton' => 'Proporzioni',
			'videoControls.ambientLighting' => 'Illuminazione ambientale',
			'videoControls.fullscreenButton' => 'Attiva schermo intero',
			'videoControls.exitFullscreenButton' => 'Esci da schermo intero',
			'videoControls.alwaysOnTopButton' => 'Sempre in primo piano',
			'videoControls.rotationLockButton' => 'Blocco rotazione',
			'videoControls.lockScreen' => 'Blocca schermo',
			'videoControls.screenLockButton' => 'Blocco schermo',
			'videoControls.longPressToUnlock' => 'Premi a lungo per sbloccare',
			'videoControls.timelineSlider' => 'Timeline video',
			'videoControls.volumeSlider' => 'Livello volume',
			'videoControls.endsAt' => ({required Object time}) => 'Termina alle ${time}',
			'videoControls.pipActive' => 'Riproduzione in Picture-in-Picture',
			'videoControls.pipFailed' => 'Impossibile avviare la modalità Picture-in-Picture',
			'videoControls.screenshotSaved' => 'Schermata salvata',
			'videoControls.screenshotFailed' => 'Impossibile acquisire uno screenshot',
			'videoControls.zoomPercent' => ({required Object percent}) => 'Zoom ${percent}%',
			'videoControls.volumePercent' => ({required Object percent}) => 'Volume ${percent}%',
			'videoControls.pipErrors.androidVersion' => 'Richiede Android 8.0 o versioni successive',
			'videoControls.pipErrors.iosVersion' => 'Richiede iOS 15.0 o versioni successive',
			'videoControls.pipErrors.permissionDisabled' => 'La modalità Picture-in-Picture è disattivata. Attivala nelle impostazioni di sistema.',
			'videoControls.pipErrors.notSupported' => 'Questo dispositivo non supporta la modalità Picture-in-Picture',
			'videoControls.pipErrors.voSwitchFailed' => 'Impossibile cambiare l\'uscita video per Picture-in-Picture',
			'videoControls.pipErrors.failed' => 'Impossibile avviare la modalità Picture-in-Picture',
			'videoControls.pipErrors.prepareFailed' => 'Impossibile preparare la modalità Picture-in-Picture',
			'videoControls.pipErrors.unknown' => ({required Object error}) => 'Si è verificato un errore: ${error}',
			'videoControls.chapters' => 'Capitoli',
			'videoControls.noChaptersAvailable' => 'Nessun capitolo disponibile',
			'videoControls.queue' => 'Coda',
			'videoControls.noQueueItems' => 'Nessun elemento in coda',
			'videoControls.noAudioDevicesAvailable' => 'Nessun dispositivo audio disponibile',
			'videoControls.searchSubtitles' => 'Cerca sottotitoli',
			'videoControls.language' => 'Lingua',
			'videoControls.noSubtitlesFound' => 'Nessun sottotitolo trovato',
			'videoControls.subtitleDownloaded' => 'Sottotitolo scaricato',
			'videoControls.subtitleDownloadedNotApplied' => 'Il sottotitolo è stato scaricato, ma non è stato possibile selezionarlo',
			'videoControls.subtitleDownloadFailed' => 'Impossibile scaricare il sottotitolo',
			'videoControls.searchLanguages' => 'Cerca lingue...',
			'videoControls.skipIntro' => 'Salta intro',
			'videoControls.skipCredits' => 'Salta titoli',
			'videoControls.nextEpisode' => 'Episodio successivo',
			'videoControls.subtitleTrack' => ({required Object n}) => 'Traccia ${n}',
			'videoControls.subtitleFile' => ({required Object name}) => 'Sottotitolo ${name}',
			'videoControls.forcedTrack' => ({required Object label}) => '${label} (Forzato)',
			'videoControls.osdSubtitlesOff' => 'Sottotitoli: Disattivati',
			'videoControls.osdSubtitles' => ({required Object track}) => 'Sottotitoli: ${track}',
			'videoControls.osdAudio' => ({required Object track}) => 'Audio: ${track}',
			'messages.markedAsWatched' => 'Segnato come visto',
			'messages.markedAsUnwatched' => 'Segnato come non visto',
			'messages.markedAsWatchedOffline' => 'Segnato come visto (verrà sincronizzato quando torni online)',
			'messages.markedAsUnwatchedOffline' => 'Segnato come non visto (verrà sincronizzato quando torni online)',
			'messages.autoRemovedWatchedDownload' => ({required Object title}) => 'Rimosso automaticamente: ${title}',
			'messages.autoRemovedWatchedDownloads' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n, one: 'Rimosso automaticamente ${n} download già visto', other: 'Rimossi automaticamente ${n} download già visti', ), 
			'messages.removedFromContinueWatching' => 'Rimosso da Continua a guardare',
			'messages.errorLoading' => ({required Object error}) => 'Errore: ${error}',
			'messages.searchPartialResults' => 'Non è stato possibile cercare in alcuni server multimediali. Vengono mostrati i risultati disponibili.',
			'messages.streamInterrupted' => 'La riproduzione si è interrotta. Premi Riproduci o vai a un altro punto per riprovare.',
			'messages.liveStreamInterrupted' => 'La diretta si è interrotta. Premi Riproduci per riprovare.',
			'messages.fileInfoNotAvailable' => 'Informazioni sul file non disponibili',
			'messages.playbackAuthenticationRequired' => 'Accedi di nuovo al server multimediale per riprodurre questo elemento.',
			'messages.playbackServerUnavailable' => 'Il server multimediale non è disponibile. Riprova più tardi.',
			'messages.playbackDataInvalid' => 'Il server ha restituito informazioni di riproduzione non valide.',
			'messages.playbackCancelled' => 'Riproduzione annullata.',
			'messages.playbackFailed' => 'Impossibile avviare la riproduzione.',
			'messages.playbackFailedDetail' => ({required Object error}) => 'Impossibile avviare la riproduzione: ${error}',
			'messages.audioOutputFailed' => 'L\'uscita audio ha smesso di rispondere. Controlla la connessione audio del televisore o del ricevitore; se anche le altre app non hanno audio, riavvia il dispositivo.',
			'messages.mediaUnavailable' => 'Questo contenuto non è più disponibile.',
			'messages.errorLoadingFileInfo' => ({required Object error}) => 'Errore durante il caricamento delle informazioni sul file: ${error}',
			'messages.errorLoadingSeries' => 'Errore durante il caricamento della serie',
			'messages.musicNotSupported' => 'La riproduzione musicale non è ancora supportata',
			'messages.noDescriptionAvailable' => 'Nessuna descrizione disponibile',
			'messages.noProfilesAvailable' => 'Nessun profilo disponibile',
			'messages.contactAdminForProfiles' => 'Contatta l\'amministratore del server per aggiungere profili',
			'messages.unableToDetermineLibrarySection' => 'Impossibile determinare la sezione della libreria per questo elemento',
			'messages.logsCleared' => 'Log eliminati',
			'messages.logsCopied' => 'Log copiati negli appunti',
			'messages.noLogsAvailable' => 'Nessun log disponibile',
			'messages.libraryScanning' => ({required Object title}) => 'Scansione di "${title}"...',
			'messages.libraryScanStarted' => ({required Object title}) => 'Scansione della libreria avviata per "${title}"',
			'messages.libraryScanFailed' => ({required Object error}) => 'Impossibile eseguire la scansione della libreria: ${error}',
			'messages.metadataRefreshing' => ({required Object title}) => 'Aggiornamento dei metadati di "${title}"...',
			'messages.metadataRefreshStarted' => ({required Object title}) => 'Aggiornamento dei metadati avviato per "${title}"',
			'messages.metadataRefreshFailed' => ({required Object error}) => 'Impossibile aggiornare i metadati: ${error}',
			'messages.logoutConfirm' => 'Vuoi uscire dall\'account?',
			'messages.noSeasonsFound' => 'Nessuna stagione trovata',
			'messages.seasonsLoadFailed' => 'Impossibile caricare le stagioni',
			'messages.noEpisodesFound' => 'Nessun episodio trovato nella prima stagione',
			'messages.noEpisodesFoundGeneral' => 'Nessun episodio trovato',
			'messages.episodesLoadFailed' => 'Impossibile caricare gli episodi',
			'messages.noResultsFound' => 'Nessun risultato',
			'messages.sleepTimerSet' => ({required Object label}) => 'Timer di spegnimento impostato su ${label}',
			'messages.noItemsAvailable' => 'Nessun elemento disponibile',
			'messages.failedToCreatePlayQueueNoItems' => 'Impossibile creare una coda di riproduzione: nessun elemento',
			'messages.failedPlayback' => ({required Object action, required Object error}) => 'Impossibile eseguire l\'azione «${action}»: ${error}',
			'messages.switchingToCompatiblePlayer' => 'Passaggio al lettore compatibile...',
			'messages.serverLimitTitle' => 'Riproduzione non riuscita',
			'messages.serverLimitBody' => 'Errore del server (HTTP 500). È probabile che un limite di banda o transcodifica abbia impedito questa sessione. Chiedi al proprietario di modificare il limite.',
			'messages.mediaUnreadableTitle' => 'File non disponibile',
			'messages.mediaUnreadableBody' => 'Il server ha trovato questo elemento ma non ha potuto leggere il suo file (HTTP 404). Il file è stato probabilmente spostato o eliminato, oppure il suo storage è offline. Chiedi al proprietario del server di controllare il file e di riscansionare la libreria.',
			'messages.serverBusyTitle' => 'Streaming non disponibile',
			'messages.serverBusyBody' => 'Il server ha continuato a rifiutare la riproduzione in streaming di questo file (HTTP 503). Potrebbe essere in fase di riavvio, occupato oppure l\'unità in cui si trova il file potrebbe essere offline. Riprova tra qualche istante. Se il problema persiste, chiedi al proprietario del server di controllare il server e l\'unità di archiviazione del file.',
			'messages.playbackNotAllowedTitle' => 'Riproduzione non consentita',
			'messages.playbackNotAllowedBody' => 'Il server ha rifiutato lo streaming di questo elemento (HTTP 403). Il tuo account potrebbe non avere l\'autorizzazione per riprodurlo, oppure il server potrebbe consentire la riproduzione solo sulla sua rete locale.',
			'messages.logsUploaded' => 'Log caricati',
			'messages.logsUploadFailed' => 'Impossibile caricare i log',
			'messages.logId' => 'ID log',
			'messages.burnedSubtitlesUseMenu' => 'I sottotitoli sono incorporati in questo stream. Cambiali dal menu dei sottotitoli.',
			'messages.noVideoUrl' => 'Nessun URL video disponibile',
			'messages.playbackNoMediaSources' => 'Il server non ha restituito sorgenti multimediali riproducibili',
			'messages.playbackDataNotPrepared' => 'La riproduzione è stata avviata prima che i relativi dati fossero pronti',
			'messages.streamSelectionUnavailable' => 'La selezione dei flussi non è disponibile per questa sorgente',
			'messages.streamSelectionFailed' => 'Impossibile applicare i flussi selezionati',
			'messages.trackSelectionNotRemembered' => 'Questa scelta di traccia vale solo per la riproduzione corrente.',
			'messages.serverUnavailableForProfile' => 'Nessun server disponibile per il profilo attivo',
			'sourceLibraries.title' => 'I tuoi server e librerie',
			'sourceLibraries.description' => 'Scegli le librerie che Luroka utilizza per Home, Cerca, Scopri disponibilità e Studios. L\'ordine delle righe iniziali è personalizzato separatamente.',
			'sourceLibraries.partial' => 'Impossibile controllare alcuni server. Le tue scelte salvate per quelle librerie vengono mantenute. Aggiorna per riprovare.',
			'sourceLibraries.loadFailed' => 'Impossibile caricare le tue librerie. Controlla la connessione e riprova.',
			'sourceLibraries.notSelected' => 'Non disponibile nelle librerie selezionate.',
			'sourceLibraries.checkOthers' => 'Controlla le altre sorgenti collegate',
			'sourceLibraries.otherSources' => 'Disponibile su altre sorgenti collegate',
			'sourceLibraries.playOnce' => 'Gioca una volta',
			'sourceLibraries.includeLibrary' => 'Includi questa libreria',
			'sourceLibraries.noOthers' => 'Nessuna copia trovata su altre fonti collegate.',
			'sourceLibraries.chooseOne' => 'Scegli almeno una libreria per continuare.',
			'subtitlingStyling.text' => 'Testo',
			'subtitlingStyling.border' => 'Bordo',
			'subtitlingStyling.background' => 'Sfondo',
			'subtitlingStyling.fontSize' => 'Dimensione carattere',
			'subtitlingStyling.textColor' => 'Colore del testo',
			'subtitlingStyling.borderSize' => 'Dimensione del bordo',
			'subtitlingStyling.borderColor' => 'Colore del bordo',
			'subtitlingStyling.backgroundOpacity' => 'Opacità dello sfondo',
			'subtitlingStyling.backgroundColor' => 'Colore dello sfondo',
			'subtitlingStyling.position' => 'Posizione',
			'subtitlingStyling.assOverride' => 'Sovrascrittura ASS',
			'subtitlingStyling.overrideScale' => 'Ridimensiona',
			'subtitlingStyling.overrideForce' => 'Forza',
			'subtitlingStyling.overrideStrip' => 'Rimuovi stile',
			'subtitlingStyling.positionTop' => 'In alto',
			'subtitlingStyling.positionBottom' => 'In basso',
			'subtitlingStyling.useMargins' => 'Usa i margini',
			'subtitlingStyling.useMarginsDescription' => 'Consenti i sottotitoli testuali nello spazio esterno al video. I sottotitoli con stile possono mantenere la loro posizione originale.',
			'subtitlingStyling.anchorToScreen' => 'Fissa allo schermo',
			'subtitlingStyling.anchorToScreenDescription' => 'Mostra i sottotitoli testuali nelle bande nere sotto i video in formato panoramico',
			'subtitlingStyling.bold' => 'Grassetto',
			'subtitlingStyling.italic' => 'Corsivo',
			'subtitlingStyling.renderResolution' => 'Risoluzione di rendering',
			'subtitlingStyling.renderResolutionScreen' => 'Risoluzione dello schermo',
			'subtitlingStyling.renderResolutionVideo' => 'Risoluzione del video',
			'mpvConfig.title' => 'mpv.conf',
			'mpvConfig.description' => 'Impostazioni avanzate del lettore video',
			'mpvConfig.presets' => 'Preset',
			'mpvConfig.noPresets' => 'Nessun preset salvato',
			'mpvConfig.saveAsPreset' => 'Salva come preset...',
			'mpvConfig.presetName' => 'Nome preset',
			'mpvConfig.presetNameHint' => 'Inserisci un nome per questo preset',
			'mpvConfig.loadPreset' => 'Carica',
			'mpvConfig.deletePreset' => 'Elimina',
			'mpvConfig.presetSaved' => 'Preset salvato',
			'mpvConfig.presetLoaded' => 'Preset caricato',
			'mpvConfig.presetDeleted' => 'Preset eliminato',
			'mpvConfig.confirmDeletePreset' => 'Sei sicuro di voler eliminare questo preset?',
			'mpvConfig.configPlaceholder' => 'gpu-api=vulkan\nhwdec=auto\n# comment',
			'mpvConfig.lineHint' => 'option=value',
			'mpvConfig.addLine' => 'Aggiungi riga',
			'mpvConfig.removeLine' => 'Rimuovi riga',
			'mpvConfig.embeddedVoHint' => 'vo, gpu-context e gpu-api vengono ignorati su Linux: il video incorporato viene sempre renderizzato tramite vo=libmpv sul piano video e gpu-next (che gli shader di calcolo come ArtCNN richiedono) non può essere eseguito in modalità incorporata.',
			'dialog.confirmAction' => 'Conferma azione',
			'profiles.addLurokaProfile' => 'Aggiungi il profilo Luroka',
			'profiles.switchingProfile' => 'Cambio profilo…',
			'profiles.deleteThisProfileTitle' => 'Eliminare questo profilo?',
			'profiles.deleteThisProfileMessage' => ({required Object displayName}) => 'Rimuovi ${displayName}. Le connessioni resteranno invariate.',
			'profiles.active' => 'Attivo',
			'profiles.manage' => 'Gestisci',
			'profiles.delete' => 'Elimina',
			'profiles.signOut' => 'Esci',
			'profiles.signOutPlexTitle' => 'Uscire da Plex?',
			'profiles.signOutPlexMessage' => ({required Object displayName}) => 'Verranno rimossi ${displayName} e tutti gli utenti Plex Home. Potrai accedere di nuovo in qualsiasi momento.',
			'profiles.signOutPlexDeleteDownloads' => 'Elimina anche i download',
			'profiles.signOutPlexDeleteDownloadsDescription' => 'Altrimenti rimarranno su questo dispositivo e torneranno quando accedi di nuovo a questo account.',
			'profiles.signedOutPlex' => 'Disconnessione da Plex completata.',
			'profiles.signOutFailed' => 'Disconnessione non riuscita.',
			'profiles.sectionTitle' => 'Profili',
			'profiles.summarySingle' => 'Aggiungi profili per combinare utenti gestiti e identità locali',
			'profiles.summaryMultipleWithActive' => ({required Object count, required Object activeName}) => '${count} profili · attivo: ${activeName}',
			'profiles.summaryMultiple' => ({required Object count}) => '${count} profili',
			'profiles.removeConnectionTitle' => 'Rimuovere la connessione?',
			'profiles.removeConnectionMessage' => ({required Object displayName, required Object connectionLabel}) => 'Rimuovi da ${displayName} l\'accesso a ${connectionLabel}. Gli altri profili continueranno ad avervi accesso.',
			'profiles.deleteProfileTitle' => 'Eliminare il profilo?',
			'profiles.deleteProfileMessage' => ({required Object displayName}) => 'Rimuovi ${displayName} e le relative connessioni. I server resteranno disponibili.',
			'profiles.profileNameLabel' => 'Nome profilo',
			'profiles.pinProtectionLabel' => 'Protezione PIN',
			'profiles.pinManagedByPlex' => 'PIN gestito da Plex. Modifica su plex.tv.',
			'profiles.noPinSetEditOnPlex' => 'Nessun PIN impostato. Per richiederne uno, modifica l\'utente Home su plex.tv.',
			'profiles.setPin' => 'Imposta PIN',
			'profiles.setPinTitle' => 'Imposta PIN',
			'profiles.confirmPinTitle' => 'Conferma PIN',
			'profiles.pinSet' => 'PIN impostato',
			'profiles.changePin' => 'Cambia',
			'profiles.removePin' => 'Rimuovi',
			'profiles.connectionsLabel' => 'Connessioni',
			'profiles.add' => 'Aggiungi',
			'profiles.deleteProfileButton' => 'Elimina profilo',
			'profiles.noConnectionsHint' => 'Nessuna connessione — aggiungine una per usare questo profilo.',
			'profiles.noConnections' => 'Nessuna connessione',
			'profiles.plexHomeAccount' => 'Account Plex Home',
			'profiles.plexAccountChip' => ({required Object account}) => 'Account Plex: ${account}',
			'profiles.plexAccountUserChip' => ({required Object user, required Object account}) => '${user} tramite ${account}',
			'profiles.connectionDefault' => 'Predefinita',
			'profiles.connectionAs' => ({required Object displayName}) => 'come ${displayName}',
			'profiles.makeDefault' => 'Imposta come predefinita',
			'profiles.removeConnection' => 'Rimuovi',
			'profiles.profileRenamed' => 'Profilo rinominato.',
			'profiles.borrowAddTo' => ({required Object displayName}) => 'Aggiungi a ${displayName}',
			'profiles.borrowExplain' => 'Prendi in prestito la connessione di un altro profilo. I profili protetti da PIN richiedono un PIN.',
			'profiles.borrowEmpty' => 'Nulla da prendere in prestito al momento.',
			'profiles.borrowEmptySubtitle' => 'Collega prima Plex, Jellyfin o Emby a un altro profilo.',
			'profiles.borrowLoadFailed' => 'Impossibile caricare le connessioni disponibili. Riprova.',
			'profiles.borrowFromProfile' => ({required Object displayName}) => 'Da ${displayName}',
			'profiles.borrowConnectionBorrowed' => 'Connessione presa in prestito.',
			'profiles.borrowFailed' => 'Impossibile prendere in prestito la connessione.',
			'profiles.incorrectPin' => 'PIN errato.',
			'profiles.incorrectPinTryAgain' => 'PIN errato. Riprova.',
			'profiles.sourceProfileMissingParentAccount' => 'Al profilo di origine manca l\'account principale.',
			'profiles.failedToLoadHomeUsers' => 'Impossibile caricare gli utenti Plex Home. Controlla la connessione e riprova.',
			'profiles.failedToVerifyPin' => 'Impossibile verificare il PIN.',
			'profiles.newProfile' => 'Nuovo profilo',
			'profiles.profileNameHint' => 'es. Ospiti, Bambini, Soggiorno',
			'profiles.pinProtectionOptional' => 'Protezione PIN (opzionale)',
			'profiles.pinExplain' => 'PIN a 4 cifre richiesto per cambiare profilo.',
			'profiles.continueButton' => 'Continua',
			'profiles.pinsDontMatch' => 'I PIN non corrispondono',
			'profiles.tokenIdentityMismatch' => 'Il token del profilo Plex è stato associato a un server imprevisto',
			'connections.sectionTitle' => 'Connessioni',
			'connections.addConnection' => 'Aggiungi connessione',
			'connections.addConnectionSubtitleNoProfile' => 'Accedi con Plex o collega un server Jellyfin o Emby',
			'connections.addConnectionSubtitleScoped' => ({required Object displayName}) => 'Aggiungi a ${displayName}: Plex, Jellyfin, Emby o la connessione di un altro profilo',
			'connections.sessionExpiredOne' => ({required Object name}) => 'Sessione scaduta per ${name}',
			'connections.sessionExpiredMany' => ({required Object count}) => 'Sessione scaduta per ${count} server',
			'connections.accessDeniedOne' => ({required Object name}) => '${name} ha negato l\'accesso a questo account',
			'connections.accessDeniedMany' => ({required Object count}) => '${count} server hanno negato l\'accesso a questo account',
			'connections.signInAgain' => 'Accedi di nuovo',
			'connections.editMediaBrowserTitle' => ({required Object product}) => 'Modifica connessione ${product}',
			'connections.editMediaBrowserIntro' => ({required Object serverName}) => 'Aggiungi o rimuovi gli URL per ${serverName}. Luroka userà l\'URL raggiungibile con la latenza più bassa.',
			'serversAccounts.title' => 'Server e account',
			'serversAccounts.subtitle' => 'Stato di accesso per i server Plex, Jellyfin e Emby',
			'serversAccounts.online' => 'In linea',
			'serversAccounts.offline' => 'Non in linea',
			'serversAccounts.unknown' => 'Accesso non effettuato',
			'serversAccounts.usedByNone' => 'Non utilizzato da alcun profilo',
			'serversAccounts.usedByOne' => ({required Object name}) => 'Utilizzato da ${name}',
			'serversAccounts.usedByMany' => ({required Object name, required Object count}) => 'Utilizzato da ${name} e altri ${count}',
			'serversAccounts.serversOnline' => ({required Object online, required Object total}) => '${online} server su ${total} online',
			'serversAccounts.noServers' => 'Niente ancora connesso. Aggiungi il tuo account Plex o un server Jellyfin o Emby.',
			'serversAccounts.editUrls' => 'Modifica gli URL del server',
			'accountPreferences.sectionTitle' => 'Preferenze dell\'account',
			'accountPreferences.hubSubtitleSingle' => ({required Object account}) => 'Opzioni di audio, sottotitoli e libreria salvate su ${account}',
			'accountPreferences.hubSubtitleMultiple' => ({required Object count}) => 'Opzioni di audio, sottotitoli e libreria salvate su ${count} account',
			'accountPreferences.pickAccount' => 'Ogni account conserva le proprie preferenze. Scegli quale modificare.',
			'accountPreferences.storedOnAccount' => 'Queste opzioni vengono salvate sull\'account stesso, quindi ogni app che vi accede le usa — inclusa Luroka sugli altri tuoi dispositivi.',
			'accountPreferences.noAccounts' => 'Nessun account da configurare',
			'accountPreferences.noAccountsHint' => 'Accedi a Plex oppure connetti un server Jellyfin o Emby: le preferenze salvate su quell\'account appariranno qui.',
			'accountPreferences.unavailable' => 'Impossibile raggiungere questo account',
			'accountPreferences.loadFailed' => 'Impossibile caricare queste preferenze',
			'accountPreferences.noPreference' => 'Nessuna preferenza',
			'accountPreferences.notSet' => 'Non impostato',
			'accountPreferences.groups.audioAndSubtitles' => 'Audio e sottotitoli',
			'accountPreferences.groups.libraryDisplay' => 'Libreria',
			'accountPreferences.groups.personalMedia' => 'Media personali',
			'accountPreferences.preferredAudioLanguage' => 'Lingua audio preferita',
			'accountPreferences.autoSelectAudio' => 'Scegli l\'audio in base alla lingua',
			'accountPreferences.autoSelectAudioDescription' => 'Se disattivata, viene mantenuta la traccia audio che il file indica come predefinita.',
			'accountPreferences.preferredSubtitleLanguage' => 'Lingua dei sottotitoli preferita',
			'accountPreferences.subtitleMode' => 'Attiva i sottotitoli',
			'accountPreferences.subtitleModes.none' => 'Selezionati manualmente',
			'accountPreferences.subtitleModes.noneDescription' => 'Non attivare mai i sottotitoli automaticamente.',
			'accountPreferences.subtitleModes.defaultMode' => 'Segui le flag della traccia',
			'accountPreferences.subtitleModes.defaultModeDescription' => 'Usa le flag predefinite e forzate salvate su ogni traccia di sottotitoli.',
			'accountPreferences.subtitleModes.always' => 'Sempre attivi',
			'accountPreferences.subtitleModes.alwaysDescription' => 'Attiva una traccia di sottotitoli nella lingua preferita quando disponibile.',
			'accountPreferences.subtitleModes.onlyForced' => 'Solo sottotitoli forzati',
			'accountPreferences.subtitleModes.onlyForcedDescription' => 'Carica solo le tracce contrassegnate come forzate.',
			'accountPreferences.subtitleModes.smart' => 'Mostrati con audio straniero',
			'accountPreferences.subtitleModes.smartDescription' => 'Attiva i sottotitoli solo quando l\'audio è in un\'altra lingua.',
			'accountPreferences.subtitleAccessibility' => 'Sottotitoli SDH',
			'accountPreferences.subtitleAccessibilityOptions.preferNonSdh' => 'Preferisci i sottotitoli non SDH',
			'accountPreferences.subtitleAccessibilityOptions.preferSdh' => 'Preferisci i sottotitoli SDH',
			'accountPreferences.subtitleAccessibilityOptions.onlySdh' => 'Solo sottotitoli SDH',
			'accountPreferences.subtitleAccessibilityOptions.onlyNonSdh' => 'Solo sottotitoli non SDH',
			'accountPreferences.forcedSubtitles' => 'Sottotitoli forzati',
			'accountPreferences.forcedSubtitleOptions.preferNonForced' => 'Preferisci i sottotitoli non forzati',
			'accountPreferences.forcedSubtitleOptions.preferForced' => 'Preferisci i sottotitoli forzati',
			'accountPreferences.forcedSubtitleOptions.onlyForced' => 'Solo sottotitoli forzati',
			'accountPreferences.forcedSubtitleOptions.onlyNonForced' => 'Solo sottotitoli non forzati',
			'accountPreferences.displayMissingEpisodes' => 'Mostra gli episodi mancanti',
			'accountPreferences.displayMissingEpisodesDescription' => 'Elenca gli episodi noti al server ma senza un file associato.',
			'accountPreferences.hidePlayedInLatest' => 'Nascondi gli elementi visti da Aggiunti di recente',
			'accountPreferences.hidePlayedInLatestDescription' => 'Esclude dagli Aggiunti di recente del server gli elementi che hai già visto.',
			'accountPreferences.displayCollectionsView' => 'Mostra la vista Raccolte',
			'accountPreferences.displayCollectionsViewDescription' => 'Mostra la vista Raccolte del server insieme alle tue librerie.',
			'accountPreferences.rewatchingInNextUp' => 'Mantieni le serie riviste in Prossimi episodi',
			'accountPreferences.rewatchingInNextUpDescription' => 'Quando finisci una serie e la ricominci, Prossimi episodi segue la nuova visione invece di rimuovere la serie.',
			'accountPreferences.watchedIndicator' => 'Indicatori di visione',
			'accountPreferences.watchedIndicatorOptions.none' => 'Mai',
			'accountPreferences.watchedIndicatorOptions.moviesAndShows' => 'Film e serie TV',
			'accountPreferences.watchedIndicatorOptions.movies' => 'Solo film',
			'accountPreferences.watchedIndicatorOptions.shows' => 'Solo serie TV',
			'accountPreferences.mediaReviewsVisibility' => 'Valutazioni e recensioni',
			'accountPreferences.mediaReviewsOptions.usersAndCritics' => 'Utenti e critici',
			'accountPreferences.mediaReviewsOptions.usersOnly' => 'Solo utenti',
			'accountPreferences.mediaReviewsOptions.criticsOnly' => 'Solo critici',
			'accountPreferences.mediaReviewsOptions.nobody' => 'Nascoste',
			'discover.title' => 'Esplora',
			'discover.noContentAvailable' => 'Nessun contenuto disponibile',
			'discover.addMediaToLibraries' => 'Aggiungi contenuti multimediali alle tue librerie',
			'discover.continueWatching' => 'Continua a guardare',
			'discover.continueWatchingIn' => ({required Object library}) => 'Continua a guardare in ${library}',
			'discover.nextUp' => 'Prossimi episodi',
			'discover.nextUpIn' => ({required Object library}) => 'Prossimi episodi in ${library}',
			'discover.recentlyAdded' => 'Aggiunti di recente',
			'discover.recentlyAddedIn' => ({required Object library}) => 'Aggiunti di recente in ${library}',
			'discover.latestAlbumsIn' => ({required Object library}) => 'Ultimi album in ${library}',
			'discover.recentlyPlayedIn' => ({required Object library}) => 'Riprodotti di recente in ${library}',
			'discover.mostPlayedIn' => ({required Object library}) => 'Più riprodotti in ${library}',
			'discover.playEpisode' => ({required Object season, required Object episode}) => 'S${season}E${episode}',
			'discover.overview' => 'Panoramica',
			'discover.cast' => 'Attori',
			'discover.extras' => 'Trailer ed extra',
			'discover.studio' => 'Studio',
			'discover.rating' => 'Valutazione',
			'discover.director' => 'Regista',
			'discover.directors' => 'Registi',
			'discover.movie' => 'Film',
			'discover.tvShow' => 'Serie TV',
			'discover.minutesLeft' => ({required Object minutes}) => '${minutes} minuti rimanenti',
			'discover.moreLikeThis' => 'Altri contenuti simili',
			'discover.titleCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n, one: '${n} titolo', other: '${n} titoli', ), 
			'discover.person.born' => 'Nato',
			'discover.person.died' => 'Morto',
			'discover.person.birthplace' => 'Luogo di nascita',
			'discover.person.dateWithAge' => ({required Object date, required Object age}) => '${date} (all\'età di ${age} anni)',
			'discover.person.dateWithAgeAtDeath' => ({required Object date, required Object age}) => '${date} (deceduto all\'età di ${age} anni)',
			'errors.searchFailed' => ({required Object error}) => 'Ricerca non riuscita: ${error}',
			'errors.searchUnavailable' => 'La ricerca non ha potuto raggiungere alcun server multimediale.',
			'errors.connectionTimeout' => ({required Object context}) => 'Tempo scaduto per la connessione durante il caricamento di ${context}',
			'errors.connectionFailed' => 'Impossibile connettersi al server multimediale',
			'errors.unableToLoad' => ({required Object context}) => 'Impossibile caricare ${context}. Riprova.',
			'errors.noClientAvailable' => 'Nessun client disponibile',
			'errors.pleaseEnterToken' => 'Inserisci un token',
			'errors.invalidToken' => 'Token non valido',
			'errors.failedToVerifyToken' => ({required Object error}) => 'Impossibile verificare il token: ${error}',
			'errors.failedToSwitchProfile' => ({required Object displayName}) => 'Impossibile passare a ${displayName}',
			'errors.failedToDeleteProfile' => ({required Object displayName}) => 'Impossibile eliminare ${displayName}',
			'errors.failedToRate' => 'Impossibile aggiornare la valutazione',
			'errors.reasonTimedOut' => 'il tempo di connessione è scaduto',
			'errors.reasonUnreachable' => 'non è stato possibile raggiungere il server',
			'errors.reasonRefused' => 'il server ha rifiutato la richiesta',
			'errors.reasonNotFound' => 'l\'elemento non è più presente sul server',
			'errors.reasonServerError' => 'il server ha segnalato un errore',
			'errors.reasonCancelled' => 'la richiesta è stata annullata',
			'errors.reasonUnexpected' => 'si è verificato un errore imprevisto',
			'libraries.title' => 'Librerie',
			'libraries.fallbackTitle' => 'Libreria',
			'libraries.scanLibraryFiles' => 'Scansiona i file della libreria',
			'libraries.scanLibrary' => 'Scansiona libreria',
			'libraries.analyze' => 'Analizza',
			'libraries.analyzeLibrary' => 'Analizza libreria',
			'libraries.refreshMetadata' => 'Aggiorna metadati',
			'libraries.emptyTrash' => 'Svuota cestino',
			'libraries.emptyingTrash' => ({required Object title}) => 'Svuotamento del cestino di "${title}"...',
			'libraries.trashEmptied' => ({required Object title}) => 'Cestino di "${title}" svuotato',
			'libraries.failedToEmptyTrash' => ({required Object error}) => 'Impossibile svuotare il cestino: ${error}',
			'libraries.analyzing' => ({required Object title}) => 'Analisi di "${title}"...',
			'libraries.analysisStarted' => ({required Object title}) => 'Analisi avviata per "${title}"',
			'libraries.failedToAnalyze' => ({required Object error}) => 'Impossibile analizzare la libreria: ${error}',
			'libraries.noLibrariesFound' => 'Nessuna libreria trovata',
			'libraries.allLibrariesHidden' => 'Tutte le librerie sono nascoste',
			'libraries.hiddenLibrariesCount' => ({required Object count}) => 'Librerie nascoste (${count})',
			'libraries.thisLibraryIsEmpty' => 'Questa libreria è vuota',
			'libraries.noItemsMatchFilters' => 'Nessun elemento corrisponde ai filtri attivi',
			'libraries.resetFilters' => 'Reimposta filtri',
			'libraries.all' => 'Tutto',
			'libraries.clearAll' => 'Azzera tutto',
			'libraries.scanLibraryConfirm' => ({required Object title}) => 'Vuoi scansionare "${title}"?',
			'libraries.analyzeLibraryConfirm' => ({required Object title}) => 'Vuoi analizzare "${title}"?',
			'libraries.refreshMetadataConfirm' => ({required Object title}) => 'Vuoi aggiornare i metadati di "${title}"?',
			'libraries.emptyTrashConfirm' => ({required Object title}) => 'Vuoi svuotare il cestino di "${title}"?',
			'libraries.manageLibraries' => 'Gestisci librerie',
			'libraries.sort' => 'Ordina',
			'libraries.sortBy' => 'Ordina per',
			'libraries.filters' => 'Filtri',
			'libraries.confirmActionMessage' => 'Sei sicuro di voler eseguire questa azione?',
			'libraries.showLibrary' => 'Mostra libreria',
			'libraries.hideLibrary' => 'Nascondi libreria',
			'libraries.libraryOptions' => 'Opzioni libreria',
			'libraries.content' => 'contenuto della libreria',
			'libraries.selectLibrary' => 'Seleziona libreria',
			'libraries.filtersWithCount' => ({required Object count}) => 'Filtri (${count})',
			'libraries.noRecommendations' => 'Nessun consiglio disponibile',
			'libraries.noCollections' => 'Nessuna raccolta in questa libreria',
			'libraries.noFoldersFound' => 'Nessuna cartella trovata',
			'libraries.folders' => 'cartelle',
			'libraries.tabs.recommended' => 'Consigliati',
			'libraries.tabs.browse' => 'Esplora',
			'libraries.tabs.collections' => 'Raccolte',
			'libraries.tabs.playlists' => 'Playlist',
			'libraries.groupings.title' => 'Raggruppa per',
			'libraries.groupings.all' => 'Tutti',
			'libraries.groupings.movies' => 'Film',
			'libraries.groupings.shows' => 'Serie TV',
			'libraries.groupings.seasons' => 'Stagioni',
			'libraries.groupings.episodes' => 'Episodi',
			'libraries.groupings.artists' => 'Artisti',
			'libraries.groupings.albums' => 'Album',
			'libraries.groupings.tracks' => 'Brani',
			'libraries.groupings.folders' => 'Cartelle',
			'libraries.filterCategories.genre' => 'Genere',
			'libraries.filterCategories.year' => 'Anno',
			'libraries.filterCategories.contentRating' => 'Classificazione per età',
			'libraries.filterCategories.tag' => 'Tag',
			'libraries.filterCategories.unwatched' => 'Non visti',
			'libraries.filterCategories.unplayed' => 'Non riprodotti',
			'libraries.filterCategories.favorites' => 'Preferiti',
			'libraries.filterCategories.filePath' => 'Percorso file',
			'libraries.sortLabels.title' => 'Titolo',
			'libraries.sortLabels.dateAdded' => 'Data di aggiunta',
			'libraries.sortLabels.releaseDate' => 'Data di uscita',
			'libraries.sortLabels.rating' => 'Valutazione',
			'libraries.sortLabels.communityRating' => 'Valutazione della comunità',
			'libraries.sortLabels.criticRating' => 'Valutazione critica',
			'libraries.sortLabels.userRating' => 'Valutazione utente',
			'libraries.sortLabels.datePlayed' => 'Data di riproduzione',
			'libraries.sortLabels.playCount' => 'Riproduzioni',
			'libraries.sortLabels.productionYear' => 'Anno di produzione',
			'libraries.sortLabels.runtime' => 'Durata',
			'libraries.sortLabels.officialRating' => 'Classificazione ufficiale',
			'libraries.sortLabels.premiereDate' => 'Data di première',
			'libraries.sortLabels.startDate' => 'Data di inizio',
			'libraries.sortLabels.airTime' => 'Orario di messa in onda',
			'libraries.sortLabels.studio' => 'Studio',
			'libraries.sortLabels.random' => 'Casuale',
			'libraries.sortLabels.dateShared' => 'Data di condivisione',
			'libraries.sortLabels.latestEpisodeAirDate' => 'Data di trasmissione dell\'ultimo episodio',
			'libraries.sortLabels.lastEpisodeDateAdded' => 'Data di aggiunta dell\'ultimo episodio',
			'libraries.sortLabels.dateDownloaded' => 'Data di download',
			'libraries.sortLabels.size' => 'Dimensione',
			'libraries.sortLabels.library' => 'Libreria',
			'libraries.advancedFilters.include' => 'Includi',
			'libraries.advancedFilters.exclude' => 'Escludi',
			'libraries.advancedFilters.any' => 'Qualunque',
			'libraries.advancedFilters.yes' => 'Sì',
			'libraries.advancedFilters.no' => 'No',
			'libraries.advancedFilters.not' => ({required Object value}) => 'Non ${value}',
			'libraries.advancedFilters.valueCount' => ({required Object count}) => '${count} selezionati',
			'libraries.advancedFilters.valueCountExcluded' => ({required Object count}) => '${count} esclusi',
			'libraries.advancedFilters.searchValues' => 'Cerca valori',
			'libraries.advancedFilters.noValues' => 'Nessun valore',
			'libraries.advancedFilters.matchContains' => 'Contiene',
			'libraries.advancedFilters.matchNotContains' => 'Non contiene',
			'libraries.advancedFilters.matchIs' => 'Lo è',
			'libraries.advancedFilters.matchIsNot' => 'Non lo è',
			'libraries.advancedFilters.matchBeginsWith' => 'Inizia con',
			'libraries.advancedFilters.matchEndsWith' => 'Termina con',
			'libraries.advancedFilters.textHint' => 'Digita per abbinare',
			'libraries.advancedFilters.from' => 'Da',
			'libraries.advancedFilters.to' => 'A',
			'libraries.advancedFilters.range' => ({required Object from, required Object to}) => 'Da ${from} a ${to}',
			'libraries.advancedFilters.atLeast' => ({required Object value}) => '${value} e versioni successive',
			'libraries.advancedFilters.atMost' => ({required Object value}) => 'Fino a ${value}',
			'libraries.advancedFilters.dateLastDays' => ({required Object count}) => 'Ultimi ${count} giorni',
			'libraries.advancedFilters.dateLastYear' => 'L\'anno scorso',
			'libraries.advancedFilters.dateOlderThanDays' => ({required Object count}) => 'Più vecchio di ${count} giorni',
			'libraries.advancedFilters.dateOlderThanYear' => 'Più vecchio di un anno',
			'about.title' => 'Informazioni',
			'about.openSourceLicenses' => 'Licenze open source',
			'about.versionLabel' => ({required Object version}) => 'Versione ${version}',
			'about.appDescription' => 'Un elegante client Plex, Jellyfin ed Emby per Flutter',
			'about.customSource' => 'Codice sorgente',
			'about.basedOnLuroka' => 'Basato sul codice sorgente di Plezy',
			'about.viewLicensesDescription' => 'Visualizza le licenze delle librerie di terze parti',
			'about.appSection' => 'App',
			'about.communitySection' => 'Comunità',
			'about.creditsSection' => 'Crediti',
			'about.legalSection' => 'Legale',
			'about.versionMeta' => ({required Object version, required Object build, required Object platform}) => 'v${version} (${build}) · ${platform}',
			'about.versionMetaNoBuild' => ({required Object version, required Object platform}) => 'v${version} · ${platform}',
			'about.versionUnavailable' => 'Versione non disponibile',
			'about.versionDetails' => 'Dettagli della versione',
			'about.versionDetailsTitle' => ({required Object version, required Object build}) => 'Luroka ${version} (${build})',
			'about.platformLine' => ({required Object platform}) => 'Piattaforma: ${platform}',
			'about.deviceLine' => ({required Object model}) => 'Dispositivo: ${model}',
			'about.packageLine' => ({required Object package}) => 'Pacchetto: ${package}',
			'about.localeLine' => ({required Object locale}) => 'Lingua: ${locale}',
			'about.copyDetails' => 'Copia i dettagli',
			_ => null,
		} ?? switch (path) {
			'about.detailsCopied' => 'Dettagli dell\'app copiati',
			'about.detailsCopyFailed' => 'Impossibile copiare i dettagli dell\'app',
			'about.checkForUpdatesDescription' => 'Cerca su GitHub una versione più recente',
			'about.checkingForUpdates' => 'Controllo aggiornamenti…',
			'about.whatsNew' => 'Cosa c\'è di nuovo',
			'about.releaseNotesUnavailable' => 'Non sono disponibili note sulla versione.',
			'about.sourceCodeDescription' => 'Luroka su GitHub',
			'about.reportIssue' => 'Segnala un problema',
			'about.reportIssueDescription' => 'Raccontaci cosa è andato storto',
			'about.documentation' => 'Documentazione',
			'about.documentationDescription' => 'Configurazione, funzionalità e note di compilazione',
			'about.upstreamProjectDescription' => 'Progetto open source di edde746 e collaboratori',
			'about.upstreamWebsite' => 'Sito web a monte',
			'about.attribution' => 'Dati e attribuzione',
			'about.attributionDescription' => 'Metadati, classificazioni e marchi',
			'about.attributionBody' => 'Questo prodotto utilizza TMDB API ma non è approvato o certificato da TMDB. Elenchi di popolarità, metadati e valutazioni IMDb sono forniti da Cinemeta. Le partiture mantengono le etichette di origine.',
			'about.trademarkNotices' => 'Plex, Jellyfin, Emby, Trakt, Simkl, MyAnimeList, AniList, TMDB e i relativi marchi sono marchi dei rispettivi proprietari. Luroka non è affiliato o approvato da loro.',
			'about.privacyPolicy' => 'Informativa sulla privacy',
			'about.privacyPolicyDescription' => 'Come vengono gestiti i tuoi dati',
			'about.gplLicense' => 'Licenza GNU GPL-3.0',
			'about.gplLicenseDescription' => 'Luroka è un software gratuito',
			'about.linkOpenFailed' => 'Impossibile aprire questo collegamento',
			'about.opensInBrowser' => 'Si apre nel browser',
			'about.footer' => 'Luroka è software libero con licenza GPL-3.0.',
			'about.copyright' => ({required Object year}) => '© ${year} collaboratori di Luroka',
			'serverSelection.noServersFoundForAccount' => ({required Object username, required Object email}) => 'Nessun server trovato per ${username} (${email})',
			'serverSelection.failedToLoadServers' => ({required Object error}) => 'Impossibile caricare i server: ${error}',
			'serverSelection.noValidServers' => 'Nessun server utilizzabile trovato per questo account',
			'hubDetail.title' => 'Titolo',
			'hubDetail.releaseYear' => 'Anno di uscita',
			'hubDetail.dateAdded' => 'Data di aggiunta',
			'hubDetail.rating' => 'Valutazione',
			'hubDetail.noItemsFound' => 'Nessun elemento trovato',
			'logs.clearLogs' => 'Cancella log',
			'logs.copyLogs' => 'Copia log',
			'logs.uploadLogs' => 'Carica log',
			'startup.failedTitle' => 'Luroka non ha potuto avviarsi',
			'startup.failedBody' => 'Si è verificato un errore durante l\'avvio. I dettagli seguenti indicano cosa non ha funzionato.',
			'startup.failedBodyRepairable' => 'Il file delle impostazioni salvate di Luroka è danneggiato e deve essere ricostruito prima che Luroka possa avviarsi. Riprovare non servirà: scegli Ripara storage.',
			'startup.phaseLabel' => 'Passaggio',
			'startup.showDetails' => 'Mostra dettagli',
			'startup.hideDetails' => 'Nascondi dettagli',
			'startup.copyDetails' => 'Copia dettagli',
			'startup.detailsCopied' => 'Dettagli copiati negli appunti',
			'startup.uploadDetails' => 'Carica dettagli',
			'startup.repairStorage' => 'Ripara storage',
			'startup.repairTitle' => 'Riparare i dati archiviati?',
			'startup.repairBodyCommon' => 'Il file delle impostazioni di Luroka è danneggiato e non può essere letto. La riparazione ripristina ogni impostazione al suo valore predefinito.',
			'startup.repairBodyOneCredential' => 'Un accesso salvato è danneggiato e non può essere letto. La riparazione rimuove solo quello; le altre impostazioni restano intatte.',
			'startup.repairBodySignInsKept' => 'I tuoi server e profili dovrebbero rimanere con accesso effettuato.',
			'startup.repairBodySignInsLost' => 'La chiave che protegge i tuoi accessi salvati non può essere recuperata da questo file, quindi dovrai effettuare di nuovo l\'accesso a ogni server e profilo. Nulla sul tuo server multimediale è interessato.',
			'startup.repairBodySessionsUncertain' => 'I tracker (MAL, AniList, Simkl, Trakt) e Seerr sono archiviati separatamente e potrebbero sopravvivere o meno. Luroka ti dirà esattamente cosa ha conservato.',
			'startup.repairConfirm' => 'Ripara',
			'startup.repairSucceeded' => 'Storage riparato',
			'startup.repairNeedsRestart' => 'Storage riparato — riavvio richiesto',
			'startup.restartRequiredBody' => 'I tuoi dati sono stati riparati, ma Luroka deve ripartire da zero prima di poterli usare. Chiudi Luroka e riaprilo.',
			'startup.quitLuroka' => 'Esci da Luroka',
			'startup.repairFailed' => 'Riparazione non riuscita',
			'startup.repairKeptSignIns' => 'I tuoi server e profili hanno ancora l\'accesso effettuato.',
			'startup.repairLostSignIns' => 'La chiave che protegge i tuoi accessi salvati non ha potuto essere recuperata. Dovrai effettuare di nuovo l\'accesso a ogni server e profilo.',
			'startup.repairLostSessions' => 'Almeno una connessione a un tracker o a Seerr è andata persa e deve essere riconnessa.',
			'startup.backupTitle' => 'È stata conservata una copia del file danneggiato',
			'startup.backupWarning' => 'Contiene le tue credenziali di accesso. Non caricarla né condividerla.',
			'startup.deleteBackup' => 'Elimina copia',
			'startup.backupDeleted' => 'Copia eliminata.',
			'startup.previousFailureTitle' => 'Luroka non è riuscito ad avviarsi l\'ultima volta',
			'licenses.relatedPackages' => 'Pacchetti correlati',
			'licenses.license' => 'Licenza',
			'licenses.licenseNumber' => ({required Object number}) => 'Licenza ${number}',
			'licenses.licensesCount' => ({required Object count}) => '${count} licenze',
			'licenses.searchHint' => 'Cerca pacchetti',
			'licenses.noResults' => ({required Object query}) => 'Nessun pacchetto corrisponde a "${query}"',
			'licenses.clearSearch' => 'Cancella ricerca',
			'navigation.libraries' => 'Librerie',
			'navigation.downloads' => 'Download',
			'navigation.liveTv' => 'Diretta',
			'navigation.explore' => 'Esplora',
			'explore.title' => 'Esplora',
			'explore.selectSource' => 'Seleziona fonte',
			'explore.rows.watchlist' => 'Lista da guardare',
			'explore.rows.recommendedMovies' => 'Film consigliati',
			'explore.rows.recommendedShows' => 'Serie TV consigliate',
			'explore.rows.trendingMovies' => 'Film di tendenza',
			'explore.rows.trendingShows' => 'Serie TV di tendenza',
			'explore.rows.popularMovies' => 'Film popolari',
			'explore.rows.popularShows' => 'Serie TV popolari',
			'explore.rows.trendingAnime' => 'Anime di tendenza',
			'explore.rows.suggestedAnime' => 'Anime suggeriti',
			'explore.rows.airingAnime' => 'Migliori anime in onda',
			'explore.rows.popularAnime' => 'Anime più popolari',
			'explore.rows.trending' => 'Di tendenza',
			'explore.rows.upcomingMovies' => 'Film in arrivo',
			'explore.rows.upcomingShows' => 'Serie TV in arrivo',
			'explore.status.airing' => 'In onda',
			'explore.status.ended' => 'Conclusa',
			'explore.status.canceled' => 'Cancellata',
			'explore.status.upcoming' => 'In arrivo',
			'explore.episodeCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n, one: '${n} episodio', other: '${n} episodi', ), 
			'explore.cast' => 'Attori',
			'explore.characters' => 'Personaggi',
			'explore.addToWatchlist' => 'Aggiungi alla lista da guardare',
			'explore.removeFromWatchlist' => 'Rimuovi dalla lista da guardare',
			'explore.addedToWatchlist' => 'Aggiunto alla lista titoli',
			'explore.removedFromWatchlist' => 'Rimosso dalla lista titoli',
			'explore.watchlistUpdateFailed' => 'Impossibile aggiornare la lista da guardare',
			'explore.watchlistNoMatch' => 'Impossibile associare questo elemento a una lista titoli',
			'explore.notInLibrary' => 'Non è nella tua libreria',
			'explore.inTheseLibraries' => 'In queste librerie',
			'explore.checkingLibrary' => 'Ricerca nella tua libreria...',
			'explore.libraryCheckFailed' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n, one: 'Impossibile controllare ${n} server', other: 'Impossibile controllare ${n} server', ), 
			'explore.emptyTitle' => 'Ancora niente qui',
			'explore.emptyMessage' => ({required Object source}) => 'Le sezioni di ${source} appariranno qui quando saranno disponibili dei contenuti.',
			'explore.searchHint' => ({required Object source}) => 'Cerca su ${source}',
			'explore.searchEmpty' => ({required Object query}) => 'Nessun risultato per "${query}"',
			'explore.searchPrompt' => ({required Object source}) => 'Cerca film e serie TV su ${source}.',
			'explore.searchFailed' => 'Ricerca fallita. Controlla la connessione e riprova.',
			'explore.badge.rankPopular' => ({required Object n}) => '#${n} popolari',
			'explore.badge.rankAiring' => ({required Object n}) => '#${n} in onda',
			'explore.badge.rankRated' => ({required Object n}) => '#${n} valutati',
			'explore.badge.rankTrending' => ({required Object n}) => '#${n} di tendenza',
			'explore.badge.rankSeasonal' => ({required Object n, required Object season}) => '#${n} in ${season}',
			'explore.badge.watchingNow' => ({required Object n}) => '${n} in visione',
			'explore.badge.available' => 'Disponibile',
			'explore.badge.partiallyAvailable' => 'Parzialmente disponibile',
			'explore.badge.availableIn4k' => 'Disponibile in 4K',
			'explore.badge.requested' => 'Richiesto',
			'explore.badge.pendingApproval' => 'In attesa di approvazione',
			'explore.badge.processing' => 'In elaborazione',
			'explore.badge.declined' => 'Rifiutato',
			'explore.badge.requestFailed' => 'Richiesta non riuscita',
			'explore.badge.requested4k' => 'Richiesto in 4K',
			'explore.badge.seasonsAvailable' => ({required Object available, required Object total}) => '${available}/${total} stagioni',
			'explore.badge.nextEpisodeIn' => ({required Object episode, required Object duration}) => 'Ep ${episode} tra ${duration}',
			'explore.badge.nextAiringIn' => ({required Object duration}) => 'Prossimo tra ${duration}',
			'explore.badge.episodesShort' => ({required Object n}) => '${n} ep',
			'explore.badge.minutesPerEpisode' => ({required Object n}) => '${n} min/ep',
			'explore.badge.adult' => '18+',
			'explore.stats.listed' => ({required Object n}) => '${n} in elenco',
			'explore.stats.viewersDay' => ({required Object n}) => '${n} guardati oggi',
			'explore.stats.viewersWeek' => ({required Object n}) => '${n} guardati questa settimana',
			'explore.stats.viewersMonth' => ({required Object n}) => '${n} guardati questo mese',
			'explore.stats.viewersYear' => ({required Object n}) => '${n} guardati quest\'anno',
			'explore.stats.viewersAllTime' => ({required Object n}) => '${n} spettatori',
			'explore.stats.planning' => ({required Object n}) => '${n} hanno in programma di guardarlo',
			'explore.stats.favorited' => ({required Object n}) => '${n} preferiti',
			'explore.stats.dropRate' => ({required Object percent}) => '${percent} lo ha abbandonato',
			'explore.stats.comments' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n, one: '${n} commento', other: '${n} commenti', ), 
			'explore.stats.votes' => ({required Object n}) => '${n} voti',
			'explore.stats.watching' => ({required Object n}) => '${n} lo stanno guardando',
			'explore.stats.completed' => ({required Object n}) => '${n} completati',
			'explore.stats.onHold' => ({required Object n}) => '${n} in pausa',
			'explore.stats.dropped' => ({required Object n}) => '${n} abbandonati',
			'explore.season.winter' => 'Inverno',
			'explore.season.spring' => 'Primavera',
			'explore.season.summer' => 'Estate',
			'explore.season.fall' => 'Autunno',
			'explore.season.withYear' => ({required Object season, required Object year}) => '${season} ${year}',
			'explore.format.tv' => 'TV',
			'explore.format.tvShort' => 'Cortometraggio TV',
			'explore.format.movie' => 'Film',
			'explore.format.special' => 'Speciale',
			'explore.format.ova' => 'OVA',
			'explore.format.ona' => 'ONA',
			'explore.format.music' => 'Musica',
			'explore.format.other' => 'Altro',
			'explore.sourceMaterial.original' => 'Originale',
			'explore.sourceMaterial.manga' => 'Manga',
			'explore.sourceMaterial.lightNovel' => 'Light novel',
			'explore.sourceMaterial.novel' => 'Romanzo',
			'explore.sourceMaterial.visualNovel' => 'Visual novel',
			'explore.sourceMaterial.game' => 'Videogioco',
			'explore.sourceMaterial.webComic' => 'Fumetto web',
			'explore.sourceMaterial.musicRelease' => 'Musica',
			'explore.sourceMaterial.otherMedia' => 'Altro',
			'explore.creditRole.actor' => 'Attore',
			'explore.creditRole.director' => 'Regista',
			'explore.creditRole.writer' => 'Sceneggiatore',
			'explore.creditRole.producer' => 'Produttore',
			'explore.creditRole.creator' => 'Creatore',
			'explore.creditRole.composer' => 'Compositore',
			'explore.relation.prequel' => 'Prequel',
			'explore.relation.sequel' => 'Sequel',
			'explore.relation.sideStory' => 'Storia secondaria',
			'explore.relation.spinOff' => 'Spin-off',
			'explore.relation.alternativeVersion' => 'Versione alternativa',
			'explore.relation.summary' => 'Riepilogo',
			'explore.relation.parentStory' => 'Storia originale',
			'explore.relation.adaptation' => 'Adattamento',
			'explore.relation.other' => 'Correlati',
			'explore.broadcast' => ({required Object day, required Object time}) => 'Va in onda ${day} alle ${time}',
			'explore.broadcastWithZone' => ({required Object day, required Object time, required Object timezone}) => 'Va in onda ${day} alle ${time} ${timezone}',
			'explore.detail.originalTitle' => 'Titolo originale',
			'explore.detail.alsoKnownAs' => 'Conosciuto anche come',
			'explore.detail.studios' => 'Studi',
			'explore.detail.country' => 'Paese',
			'explore.detail.language' => 'Lingua',
			'explore.detail.released' => 'Uscito',
			'explore.detail.physicalRelease' => 'Su disco',
			'explore.detail.ended' => 'Concluso',
			'explore.detail.addedOn' => ({required Object date}) => 'Aggiunto ${date}',
			'explore.detail.yourRating' => 'La tua valutazione',
			'explore.detail.budget' => 'Budget',
			'explore.detail.revenue' => 'Incassi',
			'explore.detail.contentAdvisory' => 'Guida all\'età',
			'explore.detail.tags' => 'Tag',
			'explore.detail.revealSpoilerTags' => 'Mostra tag spoiler',
			'explore.detail.links' => 'Link',
			'explore.detail.watchOn' => 'Guarda su',
			'explore.detail.watchTrailer' => 'Guarda trailer',
			'explore.detail.openOn' => ({required Object site}) => 'Apri su ${site}',
			'explore.detail.crew' => 'Cast tecnico',
			'explore.detail.ratings' => 'Valutazioni',
			'explore.detail.schedule' => 'Programmazione',
			'explore.detail.recommendedByUsers' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n, one: 'Consigliato da ${n} utente', other: 'Consigliato da ${n} utenti', ), 
			'explore.detail.recommendedBy' => ({required Object who}) => 'Consigliato da ${who}',
			'explore.detail.favoritedBy' => ({required Object who}) => 'Preferito da ${who}',
			'explore.detail.unairedEpisodes' => ({required Object n}) => '${n} non ancora in onda',
			'explore.detail.recommendedByPercent' => ({required Object percent}) => 'Consigliato dal ${percent} degli spettatori',
			'explore.detail.relatedTitles' => 'Titoli correlati',
			'explore.detail.background' => 'Contesto',
			'explore.totalResults' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n, one: '${n} risultato', other: '${n} risultati', ), 
			'liveTv.title' => 'TV in diretta',
			'liveTv.guide' => 'Guida',
			'liveTv.noChannels' => 'Nessun canale disponibile',
			'liveTv.noDvr' => 'Nessun DVR configurato su alcun server',
			'liveTv.serverUnavailable' => 'Il server TV in diretta non è disponibile.',
			'liveTv.serverNotConnected' => 'Il server TV in diretta non è connesso.',
			'liveTv.noPrograms' => 'Nessun dato di programma disponibile',
			'liveTv.liveStreamFailed' => 'Streaming in diretta non riuscito',
			'liveTv.unknownProgram' => 'Programma sconosciuto',
			'liveTv.unknownHub' => 'Sconosciuto',
			'liveTv.unknownError' => 'Errore sconosciuto',
			'liveTv.channelNumber' => ({required Object number}) => 'Canale ${number}',
			'liveTv.unknownChannel' => 'Canale sconosciuto',
			'liveTv.live' => 'IN DIRETTA',
			'liveTv.reloadGuide' => 'Ricarica la guida',
			'liveTv.searchGuide' => 'Cerca nella guida',
			'liveTv.searchHint' => 'Cerca canali e programmi',
			'liveTv.searchNoResults' => ({required Object query}) => 'Nessuna corrispondenza per "${query}"',
			'liveTv.channelsSection' => 'Canali',
			'liveTv.programsSection' => 'Programmi',
			'liveTv.now' => 'Ora',
			'liveTv.today' => 'Oggi',
			'liveTv.tomorrow' => 'Domani',
			'liveTv.midnight' => 'Mezzanotte',
			'liveTv.overnight' => 'Durante la notte',
			'liveTv.morning' => 'Mattina',
			'liveTv.daytime' => 'Giornata',
			'liveTv.evening' => 'Sera',
			'liveTv.lateNight' => 'Tarda notte',
			'liveTv.whatsOn' => 'In onda ora',
			'liveTv.watchChannel' => 'Guarda il canale',
			'liveTv.favorites' => 'Preferiti',
			'liveTv.reorderFavorites' => 'Riordina i preferiti',
			'liveTv.noFavoriteChannels' => 'Nessun canale preferito',
			'liveTv.noFavoriteChannelsHint' => 'Mostra tutti i canali, quindi tieni premuto un canale per aggiungerlo ai preferiti.',
			'liveTv.showAllChannels' => 'Mostra tutti i canali',
			'liveTv.favoritesLoadFailed' => 'Impossibile caricare i preferiti. Controlla la connessione e riprova.',
			'liveTv.favoritesUpdateFailed' => 'Impossibile aggiornare i preferiti. Controlla la connessione e riprova.',
			'liveTv.joinSession' => 'Partecipa alla sessione in corso',
			'liveTv.watchFromStart' => ({required Object minutes}) => 'Guarda dall\'inizio (${minutes} min fa)',
			'liveTv.watchLive' => 'Guarda in diretta',
			'liveTv.goToLive' => 'Vai alla diretta',
			'liveTv.record' => 'Registra',
			'liveTv.recordEpisode' => 'Registra episodio',
			'liveTv.recordSeries' => 'Registra serie',
			'liveTv.recordOptions' => 'Opzioni di registrazione',
			'liveTv.saveTo' => 'Salva in',
			'liveTv.recordings' => 'Registrazioni',
			'liveTv.scheduledRecordings' => 'Programmate',
			'liveTv.recordingRules' => 'Regole di registrazione',
			'liveTv.noScheduledRecordings' => 'Nessuna registrazione in programma',
			'liveTv.manageRecording' => 'Gestisci registrazione',
			'liveTv.cancelRecording' => 'Annulla registrazione',
			'liveTv.cancelRecordingTitle' => 'Annullare questa registrazione?',
			'liveTv.cancelRecordingMessage' => ({required Object title}) => '${title} non sarà più registrato.',
			'liveTv.deleteRule' => 'Elimina regola',
			'liveTv.deleteRuleTitle' => 'Eliminare la regola di registrazione?',
			'liveTv.deleteRuleMessage' => ({required Object title}) => 'I prossimi episodi di ${title} non saranno registrati.',
			'liveTv.recordingScheduled' => 'Registrazione programmata',
			'liveTv.alreadyScheduled' => 'La registrazione di questo programma è già pianificata',
			'liveTv.dvrAdminRequired' => 'Le impostazioni DVR richiedono un account amministratore',
			'liveTv.recordingFailed' => 'Impossibile programmare la registrazione',
			'liveTv.recordingTargetMissing' => 'Impossibile determinare la libreria di registrazione',
			'liveTv.recordNotAvailable' => 'Registrazione non disponibile per questo programma',
			'liveTv.recordingCancelled' => 'Registrazione annullata',
			'liveTv.recordingRuleDeleted' => 'Regola di registrazione eliminata',
			'liveTv.processRecordingRules' => 'Rielabora le regole',
			'liveTv.recordingInProgress' => 'Registrazione in corso',
			'liveTv.recordingsCount' => ({required Object count}) => '${count} programmate',
			'liveTv.editRule' => 'Modifica regola',
			'liveTv.editRuleAction' => 'Modifica',
			'liveTv.recordingRuleUpdated' => 'Regola di registrazione aggiornata',
			'liveTv.guideReloadRequested' => 'Aggiornamento della guida richiesto',
			'liveTv.guideReloadFailed' => 'Impossibile aggiornare la guida',
			'liveTv.rulesProcessRequested' => 'Rielaborazione delle regole richiesta',
			'liveTv.rulesProcessFailed' => 'Impossibile rielaborare le regole di registrazione',
			'liveTv.recordShow' => 'Registra programma',
			'liveTv.recordSettings.startEarly' => 'Inizia in anticipo (secondi)',
			'liveTv.recordSettings.endLate' => 'Termina in ritardo (secondi)',
			'liveTv.recordSettings.newOnly' => 'Solo nuovi episodi',
			'liveTv.recordSettings.anyChannel' => 'Registra su qualsiasi canale',
			'liveTv.recordSettings.anyTime' => 'Registra a qualsiasi ora',
			'liveTv.recordSettings.skipInLibrary' => 'Salta gli episodi già presenti nella libreria',
			'liveTv.recordSettings.keepUpTo' => 'Episodi da conservare',
			'liveTv.recordSettings.keepUpToHint' => '0 conserva tutti gli episodi',
			'liveTv.startingInMinutes' => ({required Object minutes}) => 'Inizia tra ${minutes} min',
			'liveTv.dayAtTime' => ({required Object day, required Object time}) => '${day} alle ${time}',
			'liveTv.invalidPlaybackData' => ({required Object product}) => '${product} ha restituito dati di riproduzione della TV in diretta non validi',
			'liveTv.failedToStartChannel' => 'Impossibile avviare il canale in diretta',
			'liveTv.failedToBuildStreamUrl' => 'Impossibile creare l\'URL dello stream',
			'liveTv.playbackStartFailed' => ({required Object reason}) => 'Impossibile avviare il canale: ${reason}',
			'liveTv.channelSwitchFailed' => ({required Object reason}) => 'Impossibile cambiare canale: ${reason}',
			'collections.title' => 'Raccolte',
			'collections.collection' => 'Raccolta',
			'collections.empty' => 'La raccolta è vuota',
			'collections.deleteCollection' => 'Elimina raccolta',
			'collections.deleteConfirm' => ({required Object title}) => 'Eliminare "${title}"? Non si può annullare.',
			'collections.deleted' => 'Raccolta eliminata',
			'collections.deleteFailed' => 'Impossibile eliminare la raccolta',
			'collections.deleteFailedWithError' => ({required Object error}) => 'Impossibile eliminare la raccolta: ${error}',
			'collections.selectCollection' => 'Seleziona raccolta',
			'collections.collectionName' => 'Nome raccolta',
			'collections.enterCollectionName' => 'Inserisci nome raccolta',
			'collections.addedToCollection' => 'Elemento aggiunto alla raccolta',
			'collections.errorAddingToCollection' => 'Impossibile aggiungere l\'elemento alla raccolta',
			'collections.created' => 'Raccolta creata',
			'collections.removeFromCollection' => 'Rimuovi dalla raccolta',
			'collections.removeFromCollectionConfirm' => ({required Object title}) => 'Rimuovere "${title}" da questa raccolta?',
			'collections.removedFromCollection' => 'Elemento rimosso dalla raccolta',
			'collections.removeFromCollectionFailed' => 'Impossibile rimuovere dalla raccolta',
			'collections.removeFromCollectionError' => ({required Object error}) => 'Errore durante la rimozione dell\'elemento dalla raccolta: ${error}',
			'collections.searchCollections' => 'Cerca raccolte...',
			'playlists.title' => 'Playlist',
			'playlists.playlist' => 'Playlist',
			'playlists.noPlaylists' => 'Nessuna playlist trovata',
			'playlists.create' => 'Crea playlist',
			'playlists.playlistName' => 'Nome playlist',
			'playlists.enterPlaylistName' => 'Inserisci nome playlist',
			'playlists.delete' => 'Elimina playlist',
			'playlists.removeItem' => 'Rimuovi dalla playlist',
			'playlists.smartPlaylist' => 'Playlist intelligente',
			'playlists.itemCount' => ({required Object count}) => '${count} elementi',
			'playlists.oneItem' => '1 elemento',
			'playlists.emptyPlaylist' => 'Questa playlist è vuota',
			'playlists.deleteConfirm' => 'Eliminare playlist?',
			'playlists.deleteMessage' => ({required Object name}) => 'Sei sicuro di voler eliminare "${name}"?',
			'playlists.created' => 'Playlist creata',
			'playlists.deleted' => 'Playlist eliminata',
			'playlists.itemAdded' => 'Aggiunto alla playlist',
			'playlists.itemRemoved' => 'Rimosso dalla playlist',
			'playlists.selectPlaylist' => 'Seleziona playlist',
			'playlists.searchPlaylists' => 'Cerca playlist...',
			'playlists.errorCreating' => 'Impossibile creare la playlist',
			'playlists.errorDeleting' => 'Impossibile eliminare la playlist',
			'playlists.errorLoading' => 'Impossibile caricare le playlist',
			'playlists.errorAdding' => 'Impossibile aggiungere l\'elemento alla playlist',
			'playlists.errorReordering' => 'Impossibile riordinare l\'elemento della playlist',
			'playlists.errorRemoving' => 'Impossibile rimuovere l\'elemento dalla playlist',
			'music.goToAlbum' => 'Vai all\'album',
			'music.goToArtist' => 'Vai all\'artista',
			'music.instantMix' => 'Mix istantaneo',
			'music.playNext' => 'Riproduci come prossimo',
			'music.addToQueue' => 'Aggiungi alla coda',
			'music.discNumber' => ({required Object n}) => 'Disco ${n}',
			'music.trackCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n, one: '${n} brano', other: '${n} brani', ), 
			'music.nowPlaying' => 'In riproduzione',
			'music.playingFrom' => ({required Object title}) => 'Riproduzione da ${title}',
			'music.queue' => 'Coda',
			'music.clearQueue' => 'Svuota la coda',
			'music.lyrics' => 'Testo',
			'music.noLyrics' => 'Nessun testo disponibile',
			'music.sleepTimer' => 'Timer di spegnimento',
			'music.sleepTimerEndOfTrack' => 'Fine del brano',
			'music.sleepTimerMinutes' => ({required Object n}) => '${n} minuti',
			'music.stopPlayback' => 'Interrompi riproduzione',
			'music.previousTrack' => 'Brano precedente',
			'music.nextTrack' => 'Brano successivo',
			'music.repeat' => 'Ripeti',
			'music.repeatAll' => 'Ripeti tutto',
			'music.repeatOne' => 'Ripeti il brano',
			'music.instantMixNoServer' => 'Nessun server disponibile per un mix istantaneo',
			'music.instantMixFailed' => 'Impossibile caricare il mix istantaneo',
			'music.instantMixEmpty' => 'Il mix istantaneo non ha prodotto alcun brano',
			'music.noAudioUrl' => ({required Object track}) => 'Nessun URL audio disponibile per ${track}',
			'music.discography.singlesAndEps' => 'Singoli ed EP',
			'music.discography.live' => 'Dal vivo',
			'music.discography.compilations' => 'Compilation',
			'watchTogether.title' => 'Guarda insieme',
			'watchTogether.description' => 'Guarda contenuti in sincronia con amici e familiari',
			'watchTogether.createRoom' => 'Crea stanza',
			'watchTogether.creatingRoom' => 'Creazione spazio...',
			'watchTogether.joinRoom' => 'Unisciti alla stanza',
			'watchTogether.joiningRoom' => 'Sala riunioni...',
			'watchTogether.connecting' => 'Connessione...',
			'watchTogether.relayPublic' => 'Le stanze utilizzano i relè pubblici Open Watch Party.',
			'watchTogether.relayCustom' => ({required Object url}) => 'Le stanze utilizzano il tuo relè su ${url}.',
			'watchTogether.recentRooms' => 'Stanze usate di recente',
			'watchTogether.roomActions' => 'Azioni della stanza',
			'watchTogether.renameRoom' => 'Rinomina stanza',
			'watchTogether.removeRoom' => 'Rimuovi',
			'watchTogether.enterRoomCode' => 'Inserisci il codice di 6 caratteri fornito dall\'host.',
			'watchTogether.roomCode' => 'Codice della camera',
			'watchTogether.paste' => 'Incolla',
			'watchTogether.noCodeInClipboard' => 'Gli appunti non contengono un codice camera',
			'watchTogether.copyCode' => 'Copia codice',
			'watchTogether.codeCopied' => 'Codice della camera copiato',
			'watchTogether.shareInvite' => 'Condividi invito',
			'watchTogether.qrShare' => 'Condividi il codice QR',
			'watchTogether.qrHint' => 'Esegui la scansione con l\'app Luroka per entrare in questa stanza.',
			'watchTogether.phasePlaying' => 'Giocare',
			'watchTogether.phasePaused' => 'In pausa',
			'watchTogether.phaseWaiting' => 'Aspettando tutti',
			'watchTogether.inviteCopied' => 'Invito copiato. Incollalo in un messaggio.',
			'watchTogether.inviteMessage' => ({required Object code}) => 'Unisciti alla mia stanza Watch Together in Luroka: luroka://watch?code=${code} — oppure apri Watch Together e inserisci ${code}.',
			'watchTogether.openSessionControls' => 'Apri i controlli della sessione di Guarda insieme',
			'watchTogether.reconnecting' => 'Riconnessione...',
			'watchTogether.reconnectingDescription' => 'La connessione è caduta. Rientri nella stanza automaticamente.',
			'watchTogether.connected' => 'Connesso',
			'watchTogether.disconnected' => 'Disconnesso',
			'watchTogether.youAreHost' => 'Sei l\'host',
			'watchTogether.hostedBy' => ({required Object name}) => 'Ospitato da ${name}',
			'watchTogether.hostControlsPlayback' => 'L\'host controlla la riproduzione',
			'watchTogether.anyoneCanControl' => 'Tutti possono controllare la riproduzione',
			'watchTogether.roomLocked' => 'Stanza chiusa a chiave',
			'watchTogether.nowPlaying' => 'Ora in riproduzione',
			'watchTogether.nothingPlaying' => 'Niente da giocare',
			'watchTogether.nothingPlayingHost' => 'Riproduci qualcosa da qualsiasi libreria per condividerlo con la stanza.',
			'watchTogether.nothingPlayingGuest' => 'Quando l\'host riproduce qualcosa, si apre qui.',
			'watchTogether.notShareable' => 'Questo video non ha corrispondenze nel catalogo, quindi solo le persone con accesso allo stesso server possono riprodurlo.',
			'watchTogether.searching' => 'Cercando questo video nelle vostre librerie...',
			'watchTogether.yourCopy' => 'La tua copia',
			'watchTogether.sharingYourCopy' => 'Stai condividendo la tua copia',
			'watchTogether.playingOtherLength' => ({required Object difference}) => 'Riproduzione della tua copia, ${difference}',
			'watchTogether.mismatchTitle' => 'La tua copia ha una lunghezza diversa',
			'watchTogether.mismatchDescription' => ({required Object difference}) => 'La tua copia più vicina è ${difference} rispetto al video della stanza. Potrebbe essere un altro taglio o versione.',
			'watchTogether.playAnyway' => 'Gioca comunque',
			'watchTogether.chooseAnotherCopy' => 'Scegli un\'altra copia',
			'watchTogether.dontPlay' => 'Non giocare',
			'watchTogether.unavailableTitle' => 'Non hai questo video',
			'watchTogether.unavailableDescription' => 'Luroka non è riuscito a trovarlo nelle tue librerie. Scegli tu stesso una copia o cerca di nuovo.',
			'watchTogether.chooseCopy' => 'Scegli una copia',
			'watchTogether.searchAgain' => 'Cerca ancora',
			'watchTogether.noCandidates' => 'Nessuna copia trovata nelle tue biblioteche.',
			'watchTogether.choiceFailed' => 'Impossibile riprodurre questa copia per la stanza',
			'watchTogether.lengthLonger' => ({required Object duration}) => '${duration} più a lungo',
			'watchTogether.lengthShorter' => ({required Object duration}) => '${duration} più corto',
			'watchTogether.lengthSame' => 'Stessa lunghezza',
			'watchTogether.lengthUnknown' => 'Lunghezza sconosciuta',
			'watchTogether.joinCurrentPlayback' => 'Unisciti alla riproduzione corrente',
			'watchTogether.joinCurrentPlaybackDescription' => 'Torna a ciò che l\'host sta guardando in questo momento',
			'watchTogether.stopMedia' => 'Interrompi i video per tutti',
			'watchTogether.syncOffset' => 'Offset di sincronizzazione',
			'watchTogether.syncOffsetDescription' => 'Sposta il video se scorre davanti o dietro la stanza.',
			'watchTogether.offsetHint' => ({required Object difference}) => 'La tua copia è ${difference} rispetto al video della stanza.',
			'watchTogether.applyDifference' => ({required Object offset}) => 'Utilizzare ${offset}',
			'watchTogether.offsetMinusSecond' => '-1 secondo',
			'watchTogether.offsetMinusTenth' => '-100 ms',
			'watchTogether.offsetPlusTenth' => '+100 ms',
			'watchTogether.offsetPlusSecond' => '+1 secondo',
			'watchTogether.participants' => 'Partecipanti',
			'watchTogether.participantCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n, one: 'Partecipante ${n}', other: 'Partecipanti ${n}', ), 
			'watchTogether.hostBadge' => 'HOST',
			'watchTogether.nameYou' => ({required Object name}) => '${name} (Tu)',
			'watchTogether.playerIdle' => 'Inattivo',
			'watchTogether.playerLoading' => 'Caricamento in corso',
			'watchTogether.playerReady' => 'Pronto',
			'watchTogether.playerBuffering' => 'Bufferizzazione',
			'watchTogether.matchSearching' => 'Ricerca',
			'watchTogether.matchMatched' => 'Ha il video',
			'watchTogether.matchMismatched' => 'Lunghezza diversa',
			'watchTogether.matchUnavailable' => 'Non ha il video',
			'watchTogether.participantOffset' => ({required Object offset}) => 'Scostamento ${offset}',
			'watchTogether.makeHost' => 'Rendi host',
			'watchTogether.makeHostQuestion' => 'Trasferire il ruolo di host?',
			'watchTogether.makeHostConfirm' => ({required Object name}) => '${name} controllerà la riproduzione e guiderà la sessione per tutti.',
			'watchTogether.transfer' => 'Trasferisci',
			'watchTogether.removeParticipant' => 'Rimuovi dalla stanza',
			'watchTogether.removeParticipantQuestion' => ({required Object name}) => 'Rimuovere ${name}?',
			'watchTogether.removeParticipantConfirm' => ({required Object name}) => '${name} lascia la stanza. Possono unirsi di nuovo con il codice a meno che tu non chiuda la stanza.',
			'watchTogether.remove' => 'Rimuovi',
			'watchTogether.roomSettings' => 'Impostazioni della stanza',
			'watchTogether.letEveryoneControl' => 'Consenti a tutti di controllare la riproduzione',
			'watchTogether.lockRoom' => 'Stanza chiusa',
			'watchTogether.lockRoomDescription' => 'Nessun nuovo può unirsi',
			'watchTogether.leaveRoom' => 'Lascia la stanza',
			'watchTogether.leaveRoomQuestion' => 'Lasciare la stanza?',
			'watchTogether.leaveRoomConfirm' => 'Puoi unirti di nuovo con il codice della camera.',
			'watchTogether.leave' => 'Abbandona',
			'watchTogether.endRoom' => 'Fine stanza',
			'watchTogether.endRoomQuestion' => 'Fine stanza?',
			'watchTogether.endRoomConfirm' => 'Questo pone fine allo spazio per tutti.',
			'watchTogether.end' => 'Termina',
			'watchTogether.playBlockedTitle' => 'La riproduzione non è iniziata',
			'watchTogether.playBlockedDescription' => 'Premi Play per iniziare a guardare con la stanza.',
			'watchTogether.notices.pressedPlay' => ({required Object name}) => '${name} ha premuto Riproduci',
			'watchTogether.notices.playbackStarted' => 'La riproduzione è iniziata',
			'watchTogether.notices.paused' => ({required Object name}) => '${name} ha messo in pausa',
			'watchTogether.notices.playbackPaused' => 'La riproduzione è stata messa in pausa',
			'watchTogether.notices.jumpedTo' => ({required Object name, required Object position}) => '${name} è passato a ${position}',
			'watchTogether.notices.roomJumpedTo' => ({required Object position}) => 'Passato a ${position}',
			'watchTogether.notices.changedSpeed' => ({required Object name, required Object speed}) => '${name} ha impostato la velocità a ${speed}',
			'watchTogether.notices.speedChanged' => ({required Object speed}) => 'Velocità impostata su ${speed}',
			'watchTogether.notices.startedMedia' => ({required Object name, required Object title}) => '${name} ha avviato ${title}',
			'watchTogether.notices.mediaStarted' => ({required Object title}) => 'Ora sto giocando a ${title}',
			'watchTogether.notices.stoppedMedia' => ({required Object name}) => '${name} ha interrotto il video',
			'watchTogether.notices.mediaStopped' => 'Il video si è interrotto',
			'watchTogether.notices.waitingFor' => ({required Object name}) => 'In attesa di ${name}...',
			'watchTogether.notices.waitingForSomeone' => 'Aspetto che qualcuno si riprenda...',
			'watchTogether.notices.finished' => 'Finito',
			'watchTogether.notices.hostChangedTo' => ({required Object name}) => '${name} è ora l\'host',
			'watchTogether.notices.youAreNowHost' => 'Ora sei l\'host',
			_ => null,
		} ?? switch (path) {
			'watchTogether.notices.joined' => ({required Object name}) => '${name} si è unito',
			'watchTogether.notices.left' => ({required Object name}) => '${name} se ne è andato',
			'watchTogether.notices.controlRefused' => 'Solo l\'host può controllare la riproduzione',
			'watchTogether.notices.searchFailed' => 'Impossibile cercare il video della stanza in alcuni server',
			'watchTogether.notices.playBlocked' => 'Premi Riproduci per iniziare',
			'watchTogether.notices.shareFailed' => 'Impossibile condividere questo video con la stanza',
			'watchTogether.notices.notShared' => 'I video scaricati non vengono condivisi con la stanza',
			'watchTogether.notices.openFailed' => 'Impossibile aprire il video della stanza',
			'watchTogether.ended.ended' => 'L\'ospite ha chiuso la stanza',
			'watchTogether.ended.kicked' => 'Sei stato rimosso dalla stanza',
			'watchTogether.ended.expired' => 'La stanza è scaduta',
			'watchTogether.ended.replaced' => 'Ti sei unito a questa stanza virtuale su un altro dispositivo',
			'watchTogether.ended.lost' => 'Persa la connessione alla stanza',
			'watchTogether.errors.invalidCode' => 'Non è un codice della camera. I codici sono composti da 6 lettere e cifre, senza 0, 1, I, L o O.',
			'watchTogether.errors.roomNotFound' => 'Nessuna stanza ha quel codice. Potrebbe essere finita.',
			'watchTogether.errors.roomFull' => 'Quella stanza è piena.',
			'watchTogether.errors.roomLocked' => 'L\'ospite ha chiuso a chiave quella stanza.',
			'watchTogether.errors.relayFull' => 'Watch Together è occupato in questo momento. Riprova più tardi.',
			'watchTogether.errors.unreachable' => 'Impossibile raggiungere il relè Watch Together. Controlla la tua connessione.',
			'watchTogether.errors.rateLimited' => 'Troppi tentativi. Aspetta un attimo e riprova.',
			'watchTogether.errors.clientBlocked' => 'Questa versione di Luroka non può utilizzare il relè. Aggiorna l\'app.',
			'watchTogether.errors.forbidden' => 'Solo l\'host può farlo.',
			'watchTogether.errors.notInRoom' => 'Non sei in una stanza.',
			'watchTogether.errors.alreadyInRoom' => 'Sei già in una stanza.',
			'watchTogether.errors.resumeFailed' => 'Impossibile rientrare nella stanza.',
			'watchTogether.errors.unsupported' => 'Il relè non lo supporta.',
			'watchTogether.errors.generic' => 'Qualcosa è andato storto. Riprova.',
			'watchTogether.untitledEpisode' => ({required Object number}) => 'Episodio ${number}',
			'downloads.title' => 'Download',
			'downloads.manage' => 'Gestisci',
			'downloads.tvShows' => 'Serie TV',
			'downloads.movies' => 'Film',
			'downloads.music' => 'Musica',
			'downloads.tracksQueued' => ({required Object count}) => '${count} brani in coda per il download',
			'downloads.noDownloads' => 'Ancora nessun download',
			'downloads.noDownloadsDescription' => 'I contenuti scaricati appariranno qui per la visualizzazione offline',
			'downloads.downloadNow' => 'Scarica',
			'downloads.deleteDownload' => 'Elimina il download',
			'downloads.retryDownload' => 'Riprova il download',
			'downloads.downloadQueued' => 'Download in coda',
			'downloads.downloadResumed' => 'Download ripreso',
			'downloads.serverErrorBitrate' => 'Errore server: il file può superare il limite di bitrate remoto',
			'downloads.storageFull' => 'I download sono stati interrotti per preservare lo spazio disponibile. Libera spazio o scegli un’altra posizione di download, quindi riprova.',
			'downloads.storageUnavailable' => 'I download sono stati interrotti perché non è stato possibile verificare lo spazio di archiviazione disponibile. Controlla la posizione di download e riprova.',
			'downloads.episodesQueued' => ({required Object count}) => '${count} episodi in coda per il download',
			'downloads.downloadDeleted' => 'Download eliminato',
			'downloads.deleteConfirm' => ({required Object title}) => 'Eliminare "${title}" da questo dispositivo?',
			'downloads.deleteCollectionDownloads' => 'Elimina i download',
			'downloads.deleteCollectionDownloadsConfirm' => ({required Object title}) => 'Eliminare tutti i download in "${title}" da questo dispositivo?',
			'downloads.collectionDownloadsDeleted' => 'Download eliminati',
			'downloads.cancelledDownloadTitle' => 'Download annullato',
			'downloads.cancelledDownloadMessage' => 'Questo download è stato annullato. Cosa vuoi fare?',
			'downloads.allEpisodesAlreadyDownloaded' => 'Tutti gli episodi sono già stati scaricati',
			'downloads.resumeDownload' => 'Riprendi il download',
			'downloads.cancelledDownload' => 'Download annullato',
			'downloads.syncingFile' => ({required Object file, required Object status}) => '${file} (sincronizzazione ${status})',
			'downloads.downloadedFileClickToComplete' => ({required Object file}) => '${file} scaricato — fai clic per completare',
			'downloads.partialDownloadClickToComplete' => 'Scaricato parzialmente — fai clic per completare',
			'downloads.deleting' => 'Eliminazione...',
			'downloads.deletingWithProgress' => ({required Object title, required Object current, required Object total}) => 'Eliminazione di ${title}... (${current} di ${total})',
			'downloads.queuedTooltip' => 'In coda',
			'downloads.queuedFilesTooltip' => ({required Object files}) => 'In coda: ${files}',
			'downloads.downloadingTooltip' => 'Download in corso...',
			'downloads.downloadingFilesTooltip' => ({required Object files}) => 'Download di ${files}',
			'downloads.noDownloadsTree' => 'Nessun download',
			'downloads.pauseAll' => 'Metti tutto in pausa',
			'downloads.resumeAll' => 'Riprendi tutto',
			'downloads.retryAll' => 'Riprova tutto',
			'downloads.retryFailed' => 'Riprova i download non riusciti',
			'downloads.deleteAll' => 'Elimina tutto',
			'downloads.selectVersion' => 'Seleziona la versione',
			'downloads.allEpisodes' => 'Tutti gli episodi',
			'downloads.unwatchedOnly' => 'Solo non visti',
			'downloads.nextNUnwatched' => ({required Object count}) => 'Prossimi ${count} episodi non visti',
			'downloads.customAmount' => 'Quantità personalizzata...',
			'downloads.includeSpecials' => 'Includi gli speciali',
			'downloads.howManyEpisodes' => 'Quanti episodi?',
			'downloads.invalidEpisodeCount' => 'Inserisci un numero di episodi valido.',
			'downloads.keepSynced' => 'Mantieni sincronizzato',
			'downloads.downloadOnce' => 'Scarica una volta',
			'downloads.keepNUnwatched' => ({required Object count}) => 'Mantieni ${count} episodi non visti',
			'downloads.editSyncRule' => 'Modifica regola di sincronizzazione',
			'downloads.removeSyncRule' => 'Rimuovi regola di sincronizzazione',
			'downloads.removeSyncRuleConfirm' => ({required Object title}) => 'Interrompere la sincronizzazione di "${title}"? Gli episodi scaricati verranno mantenuti.',
			'downloads.removeListSyncRuleConfirm' => ({required Object title}) => 'Interrompere la sincronizzazione di "${title}"?',
			'downloads.deleteSyncRuleDownloads' => 'Elimina anche i download associati',
			'downloads.deleteSyncRuleDownloadsDescription' => 'I download usati da un\'altra regola di sincronizzazione o da un altro profilo verranno conservati.',
			'downloads.syncRuleCreated' => ({required Object count}) => 'Regola di sincronizzazione creata — ${count} episodi non visti mantenuti',
			'downloads.syncRuleUpdated' => 'Regola di sincronizzazione aggiornata',
			'downloads.syncRuleRemoved' => 'Regola di sincronizzazione rimossa',
			'downloads.syncRuleAndDownloadsRemoved' => 'Regola di sincronizzazione e download associati rimossi',
			'downloads.syncRuleCleanupBusy' => 'Le regole di sincronizzazione sono in fase di aggiornamento. Riprova tra un momento.',
			'downloads.syncRuleCleanupUnavailable' => 'Non è stato possibile identificare in sicurezza i download associati. Riconnetti il server e riprova, oppure rimuovi la regola senza eliminare i download.',
			'downloads.syncedNewEpisodes' => ({required Object count, required Object title}) => '${count} nuovi episodi sincronizzati per ${title}',
			'downloads.activeSyncRules' => 'Regole di sincronizzazione',
			'downloads.noSyncRules' => 'Nessuna regola di sincronizzazione',
			'downloads.manageSyncRule' => 'Gestisci sincronizzazione',
			'downloads.editEpisodeCount' => 'Numero di episodi',
			'downloads.editSyncFilter' => 'Filtro di sincronizzazione',
			'downloads.syncAllItems' => 'Sincronizzazione di tutti gli elementi',
			'downloads.syncUnwatchedItems' => 'Sincronizzazione degli elementi non visti',
			'downloads.syncRuleServerContext' => ({required Object server, required Object status}) => 'Server: ${server} • ${status}',
			'downloads.syncRuleAvailable' => 'Disponibile',
			'downloads.syncRuleOffline' => 'Offline',
			'downloads.syncRuleSignInRequired' => 'Accesso richiesto',
			'downloads.syncRuleAccessDenied' => 'Accesso negato',
			'downloads.syncRuleNotAvailableForProfile' => 'Non disponibile per il profilo attuale',
			'downloads.syncRuleUnknownServer' => 'Server sconosciuto',
			'downloads.syncRuleListCreated' => 'Regola di sincronizzazione creata',
			'downloads.backgroundWarning.bannerBlocked' => 'I download si interromperanno quando esci dall’app',
			'downloads.backgroundWarning.bannerDegraded' => 'I download in background potrebbero essere limitati',
			'downloads.backgroundWarning.bannerAction' => 'Dettagli',
			'downloads.backgroundWarning.sheetTitle' => 'I download in background sono bloccati',
			'downloads.backgroundWarning.sheetTitleDegraded' => 'I download in background potrebbero essere limitati',
			'downloads.backgroundWarning.sheetIntro' => 'Android impedisce a Luroka di scaricare in modo affidabile in background.',
			'downloads.backgroundWarning.sheetIntroDegraded' => 'Il dispositivo limita i momenti in cui Luroka può scaricare in background.',
			'downloads.backgroundWarning.reasonBackgroundRestricted' => 'L’uso in background di Luroka è limitato. Nelle impostazioni della batteria o dell’uso in background, seleziona «Senza restrizioni».',
			'downloads.backgroundWarning.reasonStandbyRestricted' => 'Android ha messo Luroka in uno stato di standby con restrizioni. Imposta l’uso della batteria su «Senza restrizioni».',
			'downloads.backgroundWarning.reasonDownloadChannelBlocked' => 'Le notifiche dei download sono disattivate, quindi l’avanzamento e i controlli potrebbero non essere disponibili.',
			'downloads.backgroundWarning.reasonNotificationsDisabled' => 'Le notifiche sono disattivate. Su Android 13 o versioni successive sono necessarie per i download prolungati in background.',
			'downloads.backgroundWarning.reasonDataSaver' => 'Il Risparmio dati è attivo e blocca i download in background tramite dati mobili. I download dovrebbero comunque funzionare su Wi-Fi.',
			'downloads.backgroundWarning.reasonOemUnknown' => 'I download si sono interrotti più volte mentre Luroka era in background. Controlla le impostazioni della batteria o dell’uso in background di Luroka.',
			'downloads.backgroundWarning.openSettings' => 'Apri le impostazioni',
			'downloads.backgroundWarning.stillNotWorking' => 'Guida specifica per il dispositivo',
			'downloads.backgroundWarning.stillNotWorkingDescription' => 'Consulta la procedura per il tuo dispositivo oppure invia un log da Impostazioni › Visualizza i log se il problema persiste.',
			'downloads.backgroundWarning.dialogTitle' => 'I download potrebbero non terminare',
			'downloads.backgroundWarning.dialogDownloadAnyway' => 'Scarica comunque',
			'downloads.backgroundWarning.dialogFixFirst' => 'Risolvi prima',
			'downloads.backgroundWarning.statusTile' => 'Download in background',
			'downloads.backgroundWarning.statusOk' => 'Esecuzione in background consentita',
			'downloads.backgroundWarning.statusBlocked' => 'Bloccati dalle impostazioni di sistema',
			'downloads.backgroundWarning.statusDegraded' => 'Limitati dalle impostazioni di sistema',
			'downloads.backgroundWarning.statusUnknown' => 'Non ancora verificato',
			'downloads.backgroundWarning.settingsUnavailable' => 'Impossibile aprire le impostazioni di sistema su questo dispositivo',
			'downloads.backgroundWarning.linkUnavailable' => 'Impossibile aprire dontkillmyapp.com su questo dispositivo',
			'downloads.options' => 'Opzioni download',
			'downloads.groupings.library' => 'Libreria',
			'downloads.groupings.collections' => 'Collezioni',
			'downloads.unknownLibrary' => 'Libreria sconosciuta',
			'downloads.unknownShow' => 'Serie sconosciuta',
			'downloads.unknownSeason' => 'Stagione sconosciuta',
			'downloads.unknownAlbum' => 'Album sconosciuto',
			'downloads.completedOfTotal' => ({required Object completed, required Object total}) => '${completed}/${total} completati',
			'downloads.errorFileNotFound' => 'File non trovato (404)',
			'downloads.errorDownloadNotAllowed' => 'Download non consentito dal server (403)',
			'downloads.errorDownloadFailed' => 'Download non riuscito',
			'downloads.errorDownloadFailedWithReason' => ({required Object reason}) => 'Download non riuscito: ${reason}',
			'downloads.errorHttpStatus' => ({required Object status}) => 'Download non riuscito (HTTP ${status})',
			'downloads.errorPostProcessing' => ({required Object reason}) => 'Post-elaborazione non riuscita: ${reason}',
			'downloads.reasonFileNotSaved' => 'non è stato possibile salvare il file su questo dispositivo',
			'downloads.reasonCannotResume' => 'non è stato possibile riprendere il download parziale',
			'downloads.reasonDeviceStorageFull' => 'lo spazio di archiviazione di questo dispositivo è esaurito',
			'downloads.notificationDownloading' => 'Download in corso...',
			'downloads.notificationComplete' => 'Download completato',
			'downloads.notificationPaused' => 'Download in pausa',
			'shaders.title' => 'Shader',
			'shaders.noShaderDescription' => 'Nessun miglioramento video',
			'shaders.nvscalerDescription' => 'Ridimensionamento NVIDIA per video più nitido',
			'shaders.artcnnVariantNeutral' => 'Neutro',
			'shaders.artcnnVariantDenoise' => 'Riduzione rumore',
			'shaders.artcnnVariantDenoiseSharpen' => 'Riduzione rumore + nitidezza',
			'shaders.qualityFast' => 'Veloce',
			'shaders.qualityHQ' => 'Alta qualità',
			'shaders.mode' => 'Modalità',
			'shaders.importShader' => 'Importa shader',
			'shaders.customShaderDescription' => 'Shader GLSL personalizzato',
			'shaders.shaderImported' => 'Shader importato',
			'shaders.shaderImportFailed' => 'Impossibile importare lo shader',
			'shaders.deleteShader' => 'Elimina shader',
			'shaders.deleteShaderConfirm' => ({required Object name}) => 'Eliminare "${name}"?',
			'companionRemote.title' => 'Telecomando',
			'companionRemote.connectedTo' => ({required Object name}) => 'Connesso a ${name}',
			'companionRemote.unknownDevice' => 'Dispositivo sconosciuto',
			'companionRemote.session.startingServer' => 'Avvio del server remoto...',
			'companionRemote.session.hostAddress' => 'Indirizzo host',
			'companionRemote.session.connected' => 'Connesso',
			'companionRemote.session.serverRunning' => 'Server remoto attivo',
			'companionRemote.session.serverStopped' => 'Server remoto arrestato',
			'companionRemote.session.serverRunningDescription' => 'I dispositivi mobili della tua rete possono connettersi a questa app',
			'companionRemote.session.serverStoppedDescription' => 'Avvia il server per consentire ai dispositivi mobili di connettersi',
			'companionRemote.session.usePhoneToControl' => 'Usa il tuo dispositivo mobile per controllare questa app',
			'companionRemote.session.startServer' => 'Avvia server',
			'companionRemote.session.stopServer' => 'Arresta server',
			'companionRemote.session.minimize' => 'Riduci',
			'companionRemote.session.manualAddressHint' => 'Indirizzo di connessione manuale:',
			'companionRemote.pairing.discoveryDescription' => 'I dispositivi Luroka con lo stesso account Plex appaiono qui',
			'companionRemote.pairing.hostAddressHint' => '192.168.1.100:48632',
			'companionRemote.pairing.connecting' => 'Connessione...',
			'companionRemote.pairing.searchingForDevices' => 'Ricerca dispositivi...',
			'companionRemote.pairing.noDevicesFound' => 'Nessun dispositivo trovato nella tua rete',
			'companionRemote.pairing.noDevicesHint' => 'Apri Luroka sul computer e usa la stessa rete Wi-Fi',
			'companionRemote.pairing.availableDevices' => 'Dispositivi disponibili',
			'companionRemote.pairing.manualConnection' => 'Connessione manuale',
			'companionRemote.pairing.cryptoInitFailed' => 'Impossibile avviare la connessione sicura. Accedi prima a Plex.',
			'companionRemote.pairing.validationHostRequired' => 'Inserisci l\'indirizzo host',
			'companionRemote.pairing.validationHostFormat' => 'Il formato deve essere IP:porta (es. 192.168.1.100:48632)',
			'companionRemote.pairing.connectionTimedOut' => 'Tempo scaduto per la connessione. Usa la stessa rete su entrambi i dispositivi.',
			'companionRemote.pairing.sessionNotFound' => 'Dispositivo non trovato. Assicurati che Luroka sia in esecuzione sull\'host.',
			'companionRemote.pairing.authFailed' => 'Autenticazione non riuscita. Entrambi i dispositivi devono usare lo stesso account Plex.',
			'companionRemote.pairing.failedToConnect' => ({required Object error}) => 'Connessione non riuscita: ${error}',
			'companionRemote.remote.disconnectConfirm' => 'Vuoi disconnetterti dalla sessione remota?',
			'companionRemote.remote.reconnecting' => 'Riconnessione...',
			'companionRemote.remote.attemptOf' => ({required Object current}) => 'Tentativo ${current} di 5',
			'companionRemote.remote.retryNow' => 'Riprova ora',
			'companionRemote.remote.tabRemote' => 'Telecomando',
			'companionRemote.remote.tabPlay' => 'Riproduci',
			'companionRemote.remote.tabMore' => 'Altro',
			'companionRemote.remote.menu' => 'Menu',
			'companionRemote.remote.tabNavigation' => 'Navigazione',
			'companionRemote.remote.tabDiscover' => 'Esplora',
			'companionRemote.remote.tabLibraries' => 'Librerie',
			'companionRemote.remote.tabSearch' => 'Cerca',
			'companionRemote.remote.tabDownloads' => 'Download',
			'companionRemote.remote.tabSettings' => 'Impostazioni',
			'companionRemote.remote.previous' => 'Precedente',
			'companionRemote.remote.playPause' => 'Riproduci/Pausa',
			'companionRemote.remote.next' => 'Successivo',
			'companionRemote.remote.seekBack' => 'Indietro',
			'companionRemote.remote.stop' => 'Interrompi',
			'companionRemote.remote.seekForward' => 'Avanti',
			'companionRemote.remote.volume' => 'Volume',
			'companionRemote.remote.volumeDown' => 'Abbassa',
			'companionRemote.remote.volumeUp' => 'Alza',
			'companionRemote.remote.fullscreen' => 'Schermo intero',
			'companionRemote.remote.subtitles' => 'Sottotitoli',
			'companionRemote.remote.audio' => 'Audio',
			'companionRemote.remote.searchHint' => 'Cerca sul computer...',
			'companionRemote.errors.noNetworkInterface' => 'Nessuna interfaccia di rete trovata',
			'companionRemote.errors.authenticationFailed' => 'Autenticazione non riuscita',
			'companionRemote.errors.serverStartFailed' => ({required Object error}) => 'Impossibile avviare il server remoto: ${error}',
			'companionRemote.errors.commandFailed' => ({required Object error}) => 'Impossibile inviare il comando remoto: ${error}',
			'companionRemote.errors.joinTimedOut' => 'Tempo scaduto durante la partecipazione alla sessione',
			'companionRemote.errors.failedToConnectAnyAddress' => 'Impossibile connettersi a qualsiasi indirizzo',
			'companionRemote.errors.connectionLostAfterAttempts' => ({required Object attempts}) => 'Connessione persa dopo ${attempts} tentativi',
			'companionRemote.errors.connectionLost' => 'Connessione persa',
			'companionRemote.closedBeforeAuth' => 'La connessione si è chiusa prima dell\'autenticazione',
			'videoSettings.playbackSpeed' => 'Velocità di riproduzione',
			'videoSettings.normalSpeed' => 'Normale',
			'videoSettings.sleepTimerActive' => ({required Object duration}) => 'Attivo (${duration})',
			'videoSettings.zoom' => 'Zoom',
			'videoSettings.sleepTimer' => 'Timer di spegnimento',
			'videoSettings.audioSync' => 'Sincronizzazione audio',
			'videoSettings.subtitleSync' => 'Sincronizzazione sottotitoli',
			'videoSettings.hdr' => 'HDR',
			'videoSettings.hdrUnsupported' => 'HDR non è disponibile qui: questo compositore desktop o questa uscita video non possono gestirlo.',
			'videoSettings.hdrToneMapping' => 'Mappatura dei toni HDR',
			'videoSettings.hdrToneMappingCompositor' => 'Compositore',
			'videoSettings.hdrToneMappingCompositorDescription' => 'Trasmette i metadati HDR della sorgente e lascia che il compositore desktop esegua la mappatura.',
			'videoSettings.hdrToneMappingPlayer' => 'Lettore',
			'videoSettings.hdrToneMappingPlayerDescription' => 'Esegue nel lettore la mappatura in base alla luminosità di picco dello schermo, quindi comunica il risultato al compositore.',
			'videoSettings.hdrToneMappingFailed' => 'Impossibile modificare la mappatura dei toni HDR: la modalità precedente è ancora attiva.',
			'videoSettings.audioOutput' => 'Uscita audio',
			'videoSettings.performanceOverlay' => 'Overlay prestazioni',
			'videoSettings.audioOutputDolbyAtmos' => 'Dolby Atmos',
			'videoSettings.audioOutputDolbyAudio' => 'Dolby Audio',
			'videoSettings.audioOutputSurround' => 'Surround',
			'videoSettings.audioOutputSpatial' => 'Audio spaziale',
			'videoSettings.audioOutputStereo' => 'Stereo',
			'videoSettings.audioNormalization' => 'Normalizza il volume',
			'videoSettings.audioNormalizationDisablesPassthrough' => 'Decodifica l\'audio in PCM; il passthrough è disattivato mentre questa opzione è attiva',
			'performanceOverlay.color' => 'Colore',
			'performanceOverlay.performance' => 'Prestazioni',
			'performanceOverlay.buffer' => 'Buffer',
			'performanceOverlay.app' => 'App',
			'performanceOverlay.decoder' => 'Decoder',
			'performanceOverlay.rawDecoder' => 'Decoder raw',
			'performanceOverlay.tunneling' => 'Tunneling',
			'performanceOverlay.passthrough' => 'Passthrough',
			'performanceOverlay.aspect' => 'Proporzioni',
			'performanceOverlay.rotation' => 'Rotazione',
			'performanceOverlay.dvSource' => 'Sorgente DV',
			'performanceOverlay.dvPath' => 'Percorso DV',
			'performanceOverlay.dvRouteDecoder' => 'Decodificatore Dolby Vision',
			'performanceOverlay.dvRouteDecoderP81' => 'Decodificatore Dolby Vision (P7→8.1)',
			'performanceOverlay.dvRouteBaseLayer' => 'Strato di base',
			'performanceOverlay.dvRouteBaseLayerHdr10' => 'Strato di base HDR10',
			'performanceOverlay.dvRouteBaseLayerHlg' => 'Strato di base HLG',
			'performanceOverlay.dvRouteBaseLayerSdr' => 'Strato di base SDR',
			'performanceOverlay.dvRouteReshaped' => 'RPU rimodellato (gpu-next)',
			'performanceOverlay.p7Conversion' => 'Conv. P7',
			'performanceOverlay.sampleRate' => 'Frequenza camp.',
			'performanceOverlay.pixelFormat' => 'Formato pixel',
			'performanceOverlay.hwFormat' => 'Formato HW',
			'performanceOverlay.matrix' => 'Matrice',
			'performanceOverlay.primaries' => 'Colori primari',
			'performanceOverlay.transfer' => 'Trasferimento',
			'performanceOverlay.renderFps' => 'FPS rendering',
			'performanceOverlay.displayFps' => 'FPS display',
			'performanceOverlay.avSync' => 'Sync A/V',
			'performanceOverlay.dropped' => 'Scartati',
			'performanceOverlay.dvRpus' => 'DV RPU',
			'performanceOverlay.dvRpuAverage' => 'Media DV RPU',
			'performanceOverlay.dvSampleAverage' => 'Media camp. DV',
			'performanceOverlay.maxLuma' => 'Luma max',
			'performanceOverlay.minLuma' => 'Luma min',
			'performanceOverlay.maxCll' => 'MaxCLL',
			'performanceOverlay.maxFall' => 'MaxFALL',
			'performanceOverlay.cacheUsed' => 'Cache usata',
			'performanceOverlay.cacheLimit' => 'Limite cache',
			'performanceOverlay.speed' => 'Velocità',
			'performanceOverlay.player' => 'Lettore',
			'performanceOverlay.memory' => 'Memoria',
			'performanceOverlay.uiFps' => 'FPS UI',
			'performanceOverlay.fps' => 'FPS',
			'performanceOverlay.decoderAndroidHw' => 'Android HW',
			'performanceOverlay.decoderNvidiaHw' => 'NVIDIA HW',
			'performanceOverlay.decoderQualcommHw' => 'Qualcomm HW',
			'performanceOverlay.decoderMediatekHw' => 'MediaTek HW',
			'performanceOverlay.decoderExynosHw' => 'Exynos HW',
			'performanceOverlay.decoderSoftware' => 'Software',
			'performanceOverlay.decoderHardware' => 'Hardware',
			'performanceOverlay.tunnelingActive' => 'Attivo',
			'performanceOverlay.dvRpuFailed' => ({required Object converted, required Object failures}) => '${converted} (${failures} errori)',
			'externalPlayer.title' => 'Lettore esterno',
			'externalPlayer.useExternalPlayer' => 'Usa un lettore esterno',
			'externalPlayer.useExternalPlayerDescription' => 'Apri i video in un\'altra app',
			'externalPlayer.selectPlayer' => 'Seleziona il lettore',
			'externalPlayer.customPlayers' => 'Lettori personalizzati',
			'externalPlayer.systemDefault' => 'Predefinito di sistema',
			'externalPlayer.addCustomPlayer' => 'Aggiungi lettore personalizzato',
			'externalPlayer.playerName' => 'Nome del lettore',
			'externalPlayer.playerNameHint' => 'Il mio lettore',
			'externalPlayer.playerCommand' => 'Comando',
			'externalPlayer.playerPackage' => 'Nome pacchetto',
			'externalPlayer.playerUrlScheme' => 'Schema URL',
			'externalPlayer.off' => 'Disattivato',
			'externalPlayer.launchFailed' => 'Impossibile aprire il lettore esterno',
			'externalPlayer.appNotInstalled' => ({required Object name}) => '${name} non è installato',
			'externalPlayer.playInExternalPlayer' => 'Riproduci nel lettore esterno',
			'metadataEdit.editMetadata' => 'Modifica...',
			'metadataEdit.screenTitle' => 'Modifica metadati',
			'metadataEdit.basicInfo' => 'Informazioni di base',
			'metadataEdit.artwork' => 'Immagini',
			'metadataEdit.advancedSettings' => 'Impostazioni avanzate',
			'metadataEdit.title' => 'Titolo',
			'metadataEdit.sortTitle' => 'Titolo di ordinamento',
			'metadataEdit.originalTitle' => 'Titolo originale',
			'metadataEdit.releaseDate' => 'Data di uscita',
			'metadataEdit.contentRating' => 'Classificazione per età',
			'metadataEdit.studio' => 'Studio',
			'metadataEdit.tagline' => 'Slogan',
			'metadataEdit.summary' => 'Trama',
			'metadataEdit.poster' => 'Poster',
			'metadataEdit.background' => 'Sfondo',
			'metadataEdit.logo' => 'Logo',
			'metadataEdit.squareArt' => 'Immagine quadrata',
			'metadataEdit.selectPoster' => 'Seleziona poster',
			'metadataEdit.selectBackground' => 'Seleziona sfondo',
			'metadataEdit.selectLogo' => 'Seleziona logo',
			'metadataEdit.selectSquareArt' => 'Seleziona immagine quadrata',
			'metadataEdit.fromUrl' => 'Da URL',
			'metadataEdit.uploadFile' => 'Carica file',
			'metadataEdit.enterImageUrl' => 'Inserisci URL immagine',
			'metadataEdit.imageUrl' => 'URL immagine',
			'metadataEdit.metadataUpdated' => 'Metadati aggiornati correttamente',
			'metadataEdit.metadataUpdateFailed' => 'Impossibile aggiornare i metadati',
			'metadataEdit.artworkUpdated' => 'Immagini aggiornate',
			'metadataEdit.artworkUpdateFailed' => 'Impossibile aggiornare le immagini',
			'metadataEdit.noArtworkAvailable' => 'Nessuna immagine disponibile',
			'metadataEdit.artworkOption' => ({required Object index}) => 'Opzione immagine ${index}',
			'metadataEdit.selectedArtworkOption' => ({required Object index}) => 'Opzione immagine ${index}, selezionata',
			'metadataEdit.notSet' => 'Non impostato',
			'metadataEdit.libraryDefault' => 'Predefinito della libreria',
			'metadataEdit.accountDefault' => 'Predefinito dell\'account',
			'metadataEdit.seriesDefault' => 'Predefinito della serie',
			'metadataEdit.episodeSorting' => 'Ordinamento episodi',
			'metadataEdit.oldestFirst' => 'Più vecchi prima',
			'metadataEdit.newestFirst' => 'Più recenti prima',
			'metadataEdit.keep' => 'Conserva',
			'metadataEdit.allEpisodes' => 'Tutti gli episodi',
			'metadataEdit.latestEpisodes' => ({required Object count}) => '${count} episodi più recenti',
			'metadataEdit.latestEpisode' => 'Episodio più recente',
			'metadataEdit.episodesAddedPastDays' => ({required Object count}) => 'Episodi aggiunti negli ultimi ${count} giorni',
			'metadataEdit.deleteAfterPlaying' => 'Elimina episodi dopo la riproduzione',
			'metadataEdit.never' => 'Mai',
			'metadataEdit.afterADay' => 'Dopo un giorno',
			'metadataEdit.afterAWeek' => 'Dopo una settimana',
			'metadataEdit.afterAMonth' => 'Dopo un mese',
			'metadataEdit.onNextRefresh' => 'Al prossimo aggiornamento',
			'metadataEdit.seasons' => 'Stagioni',
			'metadataEdit.show' => 'Mostra',
			'metadataEdit.hide' => 'Nascondi',
			'metadataEdit.episodeOrdering' => 'Ordine episodi',
			'metadataEdit.tmdbAiring' => 'The Movie Database (ordine di trasmissione)',
			'metadataEdit.tvdbAiring' => 'TheTVDB (ordine di trasmissione)',
			'metadataEdit.tvdbAbsolute' => 'TheTVDB (ordine assoluto)',
			'metadataEdit.metadataLanguage' => 'Lingua dei metadati',
			'metadataEdit.useOriginalTitle' => 'Usa il titolo originale',
			'metadataEdit.preferredAudioLanguage' => 'Lingua audio preferita',
			'metadataEdit.preferredSubtitleLanguage' => 'Lingua dei sottotitoli preferita',
			'metadataEdit.subtitleMode' => 'Modalità di selezione automatica dei sottotitoli',
			'metadataEdit.manuallySelected' => 'Selezionato manualmente',
			'metadataEdit.shownWithForeignAudio' => 'Mostrati con audio straniero',
			'metadataEdit.alwaysEnabled' => 'Sempre attivo',
			'metadataEdit.tags' => 'Tag',
			'metadataEdit.addTag' => 'Aggiungi tag',
			'metadataEdit.genre' => 'Genere',
			'metadataEdit.director' => 'Regista',
			'metadataEdit.writer' => 'Sceneggiatore',
			'metadataEdit.producer' => 'Produttore',
			'metadataEdit.country' => 'Paese',
			'metadataEdit.collection' => 'Raccolta',
			'metadataEdit.label' => 'Etichetta',
			'metadataEdit.quickTag' => 'Tag rapido...',
			'matchScreen.match' => 'Abbina...',
			'matchScreen.fixMatch' => 'Correggi abbinamento...',
			'matchScreen.unmatch' => 'Rimuovi abbinamento',
			'matchScreen.unmatchConfirm' => 'Rimuovere questo abbinamento? Plex considererà l\'elemento non abbinato finché non verrà eseguito un nuovo abbinamento.',
			'matchScreen.unmatchSuccess' => 'Abbinamento rimosso',
			'matchScreen.unmatchFailed' => 'Rimozione dell\'abbinamento non riuscita',
			'matchScreen.matchApplied' => 'Abbinamento applicato',
			'matchScreen.matchFailed' => 'Applicazione dell\'abbinamento non riuscita',
			'matchScreen.titleHint' => 'Titolo',
			'matchScreen.yearHint' => 'Anno',
			'matchScreen.search' => 'Cerca',
			'matchScreen.noMatchesFound' => 'Nessun risultato',
			'serverTasks.title' => 'Attività del server',
			'serverTasks.failedToLoad' => 'Impossibile caricare le attività',
			'serverTasks.noTasks' => 'Nessuna attività in corso',
			'trakt.title' => 'Trakt',
			'trakt.connected' => 'Connesso',
			'trakt.connectedAs' => ({required Object username}) => 'Connesso come @${username}',
			'trakt.disconnectConfirm' => 'Disconnettere l\'account Trakt?',
			'trakt.disconnectConfirmBody' => 'Luroka smetterà di inviare eventi a Trakt. Puoi riconnetterti quando vuoi.',
			'trakt.scrobble' => 'Scrobbling in tempo reale',
			'trakt.scrobbleDescription' => 'Invia eventi di riproduzione, pausa e arresto a Trakt durante la riproduzione.',
			'trakt.watchedSync' => 'Sincronizza lo stato di visione',
			'trakt.watchedSyncDescription' => 'Quando contrassegni un elemento come visto in Luroka, viene contrassegnato come visto anche su Trakt.',
			'seerr.title' => 'Seerr',
			'seerr.connectTitle' => 'Connetti Seerr',
			'seerr.serverUrl' => 'URL del server',
			'seerr.serverUrlHelper' => 'L\'indirizzo della tua istanza Seerr',
			'seerr.checkServer' => 'Continua',
			'seerr.signInWithJellyfin' => 'Accedi con Jellyfin',
			'seerr.signInWithEmby' => 'Accedi con Emby',
			'seerr.signInWithLocal' => 'Usa un account locale',
			'seerr.email' => 'Email',
			'seerr.noSignInMethods' => 'Questa istanza Seerr non offre alcun metodo di accesso supportato da Luroka.',
			'seerr.instance' => 'Istanza',
			'seerr.disconnectConfirm' => 'Disconnettere Seerr?',
			'seerr.disconnectConfirmBody' => 'Luroka rimuoverà questa istanza Seerr. Potrai riconnetterla in qualsiasi momento.',
			'seerr.request' => 'Richiedi',
			'seerr.request4k' => 'Richiedi in 4K',
			'seerr.seasons' => 'Stagioni',
			'seerr.allSeasons' => 'Tutte le stagioni',
			'seerr.advancedOptions' => 'Avanzate',
			'seerr.destinationServer' => 'Server di destinazione',
			'seerr.qualityProfile' => 'Profilo di qualità',
			'seerr.rootFolder' => 'Cartella radice',
			'seerr.languageProfile' => 'Profilo della lingua',
			'seerr.tags' => 'Tag',
			'seerr.noTags' => 'Nessun tag',
			'seerr.defaultOption' => ({required Object name}) => '${name} (predefinito)',
			'seerr.animeNote' => 'Questa serie è un anime.',
			'seerr.requestSubmitted' => 'Richiesta inviata',
			'seerr.requestFailed' => ({required Object error}) => 'Richiesta non riuscita: ${error}',
			'seerr.requestsLoadFailed' => 'Impossibile caricare le opzioni di richiesta',
			'seerr.nothingToRequest' => 'Tutto è già disponibile o richiesto.',
			'seerr.statusAvailable' => 'Disponibile',
			'seerr.statusPartiallyAvailable' => 'Disponibile in parte',
			'seerr.statusRequested' => 'Richiesto',
			'seerr.statusProcessing' => 'In elaborazione',
			'seerr.statusBlocklisted' => 'Nella lista di blocco',
			'seerr.couldNotReach' => ({required Object url, required Object error}) => 'Impossibile raggiungere ${url}: ${error}',
			'seerr.noInstanceAtUrl' => ({required Object url, required Object status}) => 'Nessuna istanza Seerr all\'indirizzo ${url} (HTTP ${status})',
			'seerr.behindAuthProxy' => 'Un reverse proxy con autenticazione (SSO o autenticazione HTTP) ha risposto al posto di Seerr. Luroka non può accedere attraverso di esso: consenti al percorso /api/v1 di Seerr di bypassare il proxy per questa app, oppure usa un indirizzo che raggiunga Seerr direttamente.',
			'seerr.invalidUrl' => 'Inserisci un indirizzo del server come https://seerr.example.com',
			'seerr.quickConnectUnsupported' => 'Questa istanza Seerr non supporta Quick Connect. È necessaria la versione 3.4 o successiva di Seerr.',
			'seerr.notInitialized' => 'Questa istanza Seerr non ha completato la configurazione iniziale',
			'seerr.noPlexTokenForReauth' => 'Nessun token Plex disponibile per effettuare nuovamente l\'accesso',
			'seerr.noStoredCredentials' => 'Nessuna credenziale salvata disponibile per effettuare nuovamente l\'accesso',
			'seerr.signInRejected' => 'L\'accesso è stato rifiutato',
			'seerr.noSessionCookie' => 'Seerr non ha generato un cookie di sessione',
			'seerr.freshCookieRejected' => 'Seerr ha rifiutato il nuovo cookie di sessione',
			'seerr.noUserInformation' => 'Seerr non ha restituito le informazioni sull\'utente',
			'seerr.sessionRejectedAfterReauth' => 'La sessione è stata rifiutata dopo aver effettuato nuovamente l\'accesso',
			'seerr.permissionDenied' => 'Seerr ha negato questa azione: il tuo account non dispone più dell\'autorizzazione richiesta',
			'seerr.permissionRevoked' => 'Non hai più l\'autorizzazione per richiederlo',
			'services.title' => 'Servizi',
			'services.hubSubtitle' => 'Sincronizza i progressi di visione e richiedi nuovi titoli.',
			'services.discoverySection' => 'Scoperta e richieste',
			'services.trackingSection' => 'Monitoraggio e liste',
			'services.seerrDescription' => 'Trova film e serie e invia richieste dal tuo server Seerr.',
			'services.tmdbDescription' => 'Scopri film e serie, locandine, valutazioni e dettagli.',
			'services.traktDescription' => 'Tieni traccia di film e serie, sincronizza lo stato di visione e gestisci la tua lista.',
			'services.malDescription' => 'Mantieni sincronizzati la tua lista anime e l\'avanzamento della visione.',
			'services.anilistDescription' => 'Segui gli anime e sincronizza i progressi di visione con AniList.',
			'services.simklDescription' => 'Tieni traccia di film, serie e anime con Simkl.',
			'services.mdblistDescription' => 'Collega le tue liste MDBList e le valutazioni dei film.',
			'services.connectionIntro' => ({required Object service}) => 'Collega ${service} al profilo Luroka attuale. Puoi gestire la connessione e le relative opzioni qui in qualsiasi momento.',
			'services.connectService' => ({required Object service}) => 'Collega ${service}',
			'services.seerrConnectDescription' => 'Collega il tuo server Seerr per scoprire e richiedere film e serie da Luroka.',
			'services.seerrServerStep' => 'Inserisci l\'indirizzo che usi per aprire Seerr. Verificheremo quali metodi di accesso supporta il server.',
			'services.seerrSignInStep' => 'Scegli un metodo di accesso supportato dal server.',
			'services.integrations' => 'Integrazioni',
			'services.notConnected' => 'Non connesso',
			'services.connectedAs' => ({required Object username}) => 'Connesso come @${username}',
			'services.scrobble' => 'Registra automaticamente i progressi',
			'services.scrobbleDescription' => 'Aggiorna la tua lista quando termini un episodio o un film.',
			'services.disconnectConfirm' => ({required Object service}) => 'Disconnettere ${service}?',
			'services.disconnectConfirmBody' => ({required Object service}) => 'Luroka smetterà di aggiornare ${service}. Riconnetti quando vuoi.',
			'services.connectFailed' => ({required Object service}) => 'Impossibile connettersi a ${service}. Riprova.',
			'services.names.mal' => 'MyAnimeList',
			'services.names.anilist' => 'AniList',
			'services.names.simkl' => 'Simkl',
			'services.names.seerr' => 'Seerr',
			'services.names.mdblist' => 'MDBList',
			'services.simklReconnect.title' => 'Ricollegare Simkl',
			'services.simklReconnect.subtitle' => 'Simkl sta ritirando il metodo di accesso utilizzato da questa connessione. La riconnessione apre simkl.com per approvare Luroka — Luroka non vedrà mai la tua password. La tua cronologia visualizzazioni rimane su Simkl.',
			'services.deviceCode.title' => ({required Object service}) => 'Attiva Luroka su ${service}',
			'services.deviceCode.instructions' => 'Scansiona il codice QR oppure visita l\'indirizzo qui sotto e inserisci questo codice:',
			'services.deviceCode.openToActivate' => ({required Object service}) => 'Apri ${service} per attivare',
			_ => null,
		} ?? switch (path) {
			'services.deviceCode.copyCode' => 'Copia il codice di attivazione',
			'services.deviceCode.waitingForAuthorization' => 'In attesa di autorizzazione…',
			'services.deviceCode.codeCopied' => 'Codice copiato',
			'services.oauthProxy.title' => ({required Object service}) => 'Accedi a ${service}',
			'services.oauthProxy.body' => 'Scansiona questo codice QR o apri l\'URL su qualsiasi dispositivo.',
			'services.oauthProxy.openToSignIn' => ({required Object service}) => 'Apri ${service} per accedere',
			'services.pendingAuth.copyUrl' => 'Copia l\'URL di accesso',
			'services.pendingAuth.urlCopied' => 'URL copiato',
			'services.libraryFilter.title' => 'Filtro delle librerie',
			'services.libraryFilter.subtitleAllSyncing' => 'Sincronizzazione di tutte le librerie',
			'services.libraryFilter.subtitleNoneSyncing' => 'Nessuna sincronizzazione',
			'services.libraryFilter.subtitleBlocked' => ({required Object count}) => '${count} bloccate',
			'services.libraryFilter.subtitleAllowed' => ({required Object count}) => '${count} consentite',
			'services.libraryFilter.mode' => 'Modalità filtro',
			'services.libraryFilter.modeBlacklist' => 'Lista nera',
			'services.libraryFilter.modeWhitelist' => 'Lista bianca',
			'services.libraryFilter.modeHintBlacklist' => 'Sincronizza tutte le librerie tranne quelle selezionate qui sotto.',
			'services.libraryFilter.modeHintWhitelist' => 'Sincronizza solo le librerie selezionate qui sotto.',
			'services.libraryFilter.libraries' => 'Librerie',
			'services.libraryFilter.noLibraries' => 'Nessuna libreria disponibile',
			'addServer.addMediaBrowserTitle' => ({required Object product}) => 'Aggiungi server ${product}',
			'addServer.serverUrls' => 'URL del server',
			'addServer.serverUrlsHelper' => 'Sono consentiti più URL, separati da virgole.',
			'addServer.findServer' => 'Trova il server',
			'addServer.searchingLocalMediaBrowserServers' => ({required Object product}) => 'Ricerca di server ${product} locali...',
			'addServer.localMediaBrowserServers' => ({required Object product}) => 'Server ${product} locali',
			'addServer.username' => 'Nome utente',
			'addServer.password' => 'Password',
			'addServer.signIn' => 'Accedi',
			'addServer.change' => 'Modifica',
			'addServer.required' => 'Obbligatorio',
			'addServer.couldNotReachServer' => ({required Object error}) => 'Impossibile raggiungere il server: ${error}',
			'addServer.signInFailed' => ({required Object error}) => 'Accesso non riuscito: ${error}',
			'addServer.quickConnectFailed' => ({required Object error}) => 'Quick Connect non riuscito: ${error}',
			'addServer.addPlexTitle' => 'Accedi con Plex',
			'addServer.pinExpired' => 'PIN scaduto prima dell\'accesso. Riprova.',
			'addServer.failedToRegisterAccount' => ({required Object error}) => 'Registrazione account non riuscita: ${error}',
			'addServer.enterMediaBrowserUrlError' => ({required Object product}) => 'Inserisci l\'URL del server ${product}',
			'addServer.addConnectionTitle' => 'Aggiungi connessione',
			'addServer.addConnectionTitleScoped' => ({required Object name}) => 'Aggiungi a ${name}',
			'addServer.signInWithPlexCard' => 'Accedi con Plex',
			'addServer.signInWithPlexCardSubtitle' => 'Autorizza questo dispositivo. I server condivisi vengono aggiunti.',
			'addServer.signInWithPlexCardSubtitleScoped' => 'Autorizza un account Plex. Gli utenti Home diventano profili.',
			'addServer.connectToMediaBrowserCard' => ({required Object product}) => 'Connettiti a ${product}',
			'addServer.connectToMediaBrowserCardSubtitle' => 'Inserisci l\'URL del server, il nome utente e la password.',
			'addServer.connectToMediaBrowserCardSubtitleScoped' => ({required Object product, required Object name}) => 'Accedi al tuo server ${product}. Associato a ${name}.',
			'addServer.borrowFromAnotherProfile' => 'Prendi in prestito da un altro profilo',
			'addServer.borrowFromAnotherProfileSubtitle' => 'Riutilizza la connessione di un altro profilo. I profili protetti da PIN richiedono un PIN.',
			'addServer.invalidCredentials' => 'Nome utente o password non validi',
			'addServer.authResponseNotJson' => 'La risposta di autenticazione non era un JSON valido',
			'addServer.authResponseIncomplete' => 'La risposta di accesso del server era incompleta',
			'addServer.quickConnectRejected' => 'Quick Connect è stato rifiutato dal server',
			'addServer.quickConnectNotJson' => 'La risposta di Quick Connect non era un JSON valido',
			'addServer.quickConnectMissingFields' => 'Nella risposta di Quick Connect manca un codice o un segreto',
			'addServer.quickConnectPollRejected' => 'Il polling di Quick Connect è stato rifiutato dal server',
			'addServer.serverTimedOut' => 'Il server non ha risposto in tempo',
			'addServer.responseNotJson' => 'La risposta del server non era un JSON valido',
			'addServer.responseMissingIdentity' => ({required Object product}) => 'Nella risposta manca un ID o il nome del server: è un server ${product}?',
			'addServer.probeFailed' => ({required Object error}) => 'Impossibile raggiungere il server: ${error}',
			'addServer.enterAtLeastOneUrl' => ({required Object product}) => 'Inserisci almeno un URL di un server ${product}',
			'addServer.noReachableServer' => ({required Object product}) => 'Non è stato trovato alcun server ${product} raggiungibile',
			'addServer.urlsPointToDifferentServers' => ({required Object product}) => 'Questi URL rimandano a server ${product} diversi',
			'addServer.urlDoesNotMatchServer' => ({required Object product}) => 'Questo URL non corrisponde al server ${product}',
			'addServer.redirectUnsupported' => 'Il server ha reindirizzato a un URL non supportato',
			'addServer.redirectDifferentHost' => ({required Object product}) => 'Il server ha reindirizzato a un host diverso. Inserisci direttamente l\'URL finale del server ${product}.',
			'addServer.redirectInsecure' => 'Il server ha reindirizzato da HTTPS a un URL non sicuro',
			'addServer.redirectUnsupportedEnterFinal' => ({required Object product}) => 'Il server ha reindirizzato a un URL non supportato. Inserisci direttamente l\'URL finale del server ${product}.',
			_ => null,
		};
	}
}
