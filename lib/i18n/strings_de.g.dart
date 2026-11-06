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
class TranslationsDe extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsDe({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.de,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <de>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsDe _root = this; // ignore: unused_field

	@override 
	TranslationsDe $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsDe(meta: meta ?? this.$meta);

	// Translations
	@override late final _Translations$mobileLibrary$de mobileLibrary = _Translations$mobileLibrary$de._(_root);
	@override late final _Translations$profileStartup$de profileStartup = _Translations$profileStartup$de._(_root);
	@override late final _Translations$subtitleUpload$de subtitleUpload = _Translations$subtitleUpload$de._(_root);
	@override late final _Translations$personSpotlight$de personSpotlight = _Translations$personSpotlight$de._(_root);
	@override late final _Translations$detailExtras$de detailExtras = _Translations$detailExtras$de._(_root);
	@override late final _Translations$mobileUi$de mobileUi = _Translations$mobileUi$de._(_root);
	@override late final _Translations$family$de family = _Translations$family$de._(_root);
	@override late final _Translations$posterDetails$de posterDetails = _Translations$posterDetails$de._(_root);
	@override late final _Translations$libraryPolish$de libraryPolish = _Translations$libraryPolish$de._(_root);
	@override late final _Translations$showSchedule$de showSchedule = _Translations$showSchedule$de._(_root);
	@override late final _Translations$awardsCatalog$de awardsCatalog = _Translations$awardsCatalog$de._(_root);
	@override late final _Translations$searchDiscovery$de searchDiscovery = _Translations$searchDiscovery$de._(_root);
	@override late final _Translations$lurokaPlayerDesign$de lurokaPlayerDesign = _Translations$lurokaPlayerDesign$de._(_root);
	@override late final _Translations$lurokaWorkspace$de lurokaWorkspace = _Translations$lurokaWorkspace$de._(_root);
	@override late final _Translations$mobileFixes$de mobileFixes = _Translations$mobileFixes$de._(_root);
	@override late final _Translations$downloadsRedesign$de downloadsRedesign = _Translations$downloadsRedesign$de._(_root);
	@override late final _Translations$kidsShelf$de kidsShelf = _Translations$kidsShelf$de._(_root);
	@override late final _Translations$kidsHome$de kidsHome = _Translations$kidsHome$de._(_root);
	@override late final _Translations$tvSettingsV2$de tvSettingsV2 = _Translations$tvSettingsV2$de._(_root);
	@override late final _Translations$settingsRedesign$de settingsRedesign = _Translations$settingsRedesign$de._(_root);
	@override late final _Translations$onboarding$de onboarding = _Translations$onboarding$de._(_root);
	@override late final _Translations$household$de household = _Translations$household$de._(_root);
	@override late final _Translations$detailComposition$de detailComposition = _Translations$detailComposition$de._(_root);
	@override late final _Translations$kids$de kids = _Translations$kids$de._(_root);
	@override late final _Translations$lurokaDiscovery$de lurokaDiscovery = _Translations$lurokaDiscovery$de._(_root);
	@override late final _Translations$app$de app = _Translations$app$de._(_root);
	@override late final _Translations$appIcon$de appIcon = _Translations$appIcon$de._(_root);
	@override late final _Translations$auth$de auth = _Translations$auth$de._(_root);
	@override late final _Translations$common$de common = _Translations$common$de._(_root);
	@override late final _Translations$tvHints$de tvHints = _Translations$tvHints$de._(_root);
	@override late final _Translations$screens$de screens = _Translations$screens$de._(_root);
	@override late final _Translations$mediaExtras$de mediaExtras = _Translations$mediaExtras$de._(_root);
	@override late final _Translations$update$de update = _Translations$update$de._(_root);
	@override late final _Translations$supporter$de supporter = _Translations$supporter$de._(_root);
	@override late final _Translations$settings$de settings = _Translations$settings$de._(_root);
	@override late final _Translations$themeEditor$de themeEditor = _Translations$themeEditor$de._(_root);
	@override late final _Translations$seriesBrowser$de seriesBrowser = _Translations$seriesBrowser$de._(_root);
	@override late final _Translations$titlePage$de titlePage = _Translations$titlePage$de._(_root);
	@override late final _Translations$tvMenus$de tvMenus = _Translations$tvMenus$de._(_root);
	@override late final _Translations$lurokaPlayer$de lurokaPlayer = _Translations$lurokaPlayer$de._(_root);
	@override late final _Translations$lurokaSettings$de lurokaSettings = _Translations$lurokaSettings$de._(_root);
	@override late final _Translations$playerChrome$de playerChrome = _Translations$playerChrome$de._(_root);
	@override late final _Translations$tvLayout$de tvLayout = _Translations$tvLayout$de._(_root);
	@override late final _Translations$studios$de studios = _Translations$studios$de._(_root);
	@override late final _Translations$dashboard$de dashboard = _Translations$dashboard$de._(_root);
	@override late final _Translations$lurokaCatalog$de lurokaCatalog = _Translations$lurokaCatalog$de._(_root);
	@override late final _Translations$referenceDetails$de referenceDetails = _Translations$referenceDetails$de._(_root);
	@override late final _Translations$lurokaThemes$de lurokaThemes = _Translations$lurokaThemes$de._(_root);
	@override late final _Translations$customPerformance$de customPerformance = _Translations$customPerformance$de._(_root);
	@override late final _Translations$homeLayout$de homeLayout = _Translations$homeLayout$de._(_root);
	@override late final _Translations$screenTime$de screenTime = _Translations$screenTime$de._(_root);
	@override late final _Translations$activityStats$de activityStats = _Translations$activityStats$de._(_root);
	@override late final _Translations$search$de search = _Translations$search$de._(_root);
	@override late final _Translations$hotkeys$de hotkeys = _Translations$hotkeys$de._(_root);
	@override late final _Translations$fileInfo$de fileInfo = _Translations$fileInfo$de._(_root);
	@override late final _Translations$mediaMenu$de mediaMenu = _Translations$mediaMenu$de._(_root);
	@override late final _Translations$rateSheet$de rateSheet = _Translations$rateSheet$de._(_root);
	@override late final _Translations$accessibility$de accessibility = _Translations$accessibility$de._(_root);
	@override late final _Translations$tooltips$de tooltips = _Translations$tooltips$de._(_root);
	@override late final _Translations$audioTracks$de audioTracks = _Translations$audioTracks$de._(_root);
	@override late final _Translations$videoControls$de videoControls = _Translations$videoControls$de._(_root);
	@override late final _Translations$messages$de messages = _Translations$messages$de._(_root);
	@override late final _Translations$sourceLibraries$de sourceLibraries = _Translations$sourceLibraries$de._(_root);
	@override late final _Translations$subtitlingStyling$de subtitlingStyling = _Translations$subtitlingStyling$de._(_root);
	@override late final _Translations$mpvConfig$de mpvConfig = _Translations$mpvConfig$de._(_root);
	@override late final _Translations$dialog$de dialog = _Translations$dialog$de._(_root);
	@override late final _Translations$profiles$de profiles = _Translations$profiles$de._(_root);
	@override late final _Translations$connections$de connections = _Translations$connections$de._(_root);
	@override late final _Translations$serversAccounts$de serversAccounts = _Translations$serversAccounts$de._(_root);
	@override late final _Translations$accountPreferences$de accountPreferences = _Translations$accountPreferences$de._(_root);
	@override late final _Translations$discover$de discover = _Translations$discover$de._(_root);
	@override late final _Translations$errors$de errors = _Translations$errors$de._(_root);
	@override late final _Translations$libraries$de libraries = _Translations$libraries$de._(_root);
	@override late final _Translations$about$de about = _Translations$about$de._(_root);
	@override late final _Translations$serverSelection$de serverSelection = _Translations$serverSelection$de._(_root);
	@override late final _Translations$hubDetail$de hubDetail = _Translations$hubDetail$de._(_root);
	@override late final _Translations$logs$de logs = _Translations$logs$de._(_root);
	@override late final _Translations$startup$de startup = _Translations$startup$de._(_root);
	@override late final _Translations$licenses$de licenses = _Translations$licenses$de._(_root);
	@override late final _Translations$navigation$de navigation = _Translations$navigation$de._(_root);
	@override late final _Translations$explore$de explore = _Translations$explore$de._(_root);
	@override late final _Translations$liveTv$de liveTv = _Translations$liveTv$de._(_root);
	@override late final _Translations$collections$de collections = _Translations$collections$de._(_root);
	@override late final _Translations$playlists$de playlists = _Translations$playlists$de._(_root);
	@override late final _Translations$music$de music = _Translations$music$de._(_root);
	@override late final _Translations$watchTogether$de watchTogether = _Translations$watchTogether$de._(_root);
	@override late final _Translations$downloads$de downloads = _Translations$downloads$de._(_root);
	@override late final _Translations$shaders$de shaders = _Translations$shaders$de._(_root);
	@override late final _Translations$companionRemote$de companionRemote = _Translations$companionRemote$de._(_root);
	@override late final _Translations$videoSettings$de videoSettings = _Translations$videoSettings$de._(_root);
	@override late final _Translations$performanceOverlay$de performanceOverlay = _Translations$performanceOverlay$de._(_root);
	@override late final _Translations$externalPlayer$de externalPlayer = _Translations$externalPlayer$de._(_root);
	@override late final _Translations$metadataEdit$de metadataEdit = _Translations$metadataEdit$de._(_root);
	@override late final _Translations$matchScreen$de matchScreen = _Translations$matchScreen$de._(_root);
	@override late final _Translations$serverTasks$de serverTasks = _Translations$serverTasks$de._(_root);
	@override late final _Translations$trakt$de trakt = _Translations$trakt$de._(_root);
	@override late final _Translations$seerr$de seerr = _Translations$seerr$de._(_root);
	@override late final _Translations$services$de services = _Translations$services$de._(_root);
	@override late final _Translations$addServer$de addServer = _Translations$addServer$de._(_root);
}

// Path: mobileLibrary
class _Translations$mobileLibrary$de extends Translations$mobileLibrary$en {
	_Translations$mobileLibrary$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get pickerSubtitle => 'Wähle eine Sammlung zum Erkunden';
	@override String get searchLibraries => 'Bibliotheken durchsuchen';
	@override String get noLibraries => 'Keine passenden Bibliotheken';
	@override String get ascending => 'Aufsteigend';
	@override String get descending => 'Absteigend';
	@override String get sort => 'Sortieren';
	@override String unwatchedCount({required Object count}) => '${count} ungesehene Folgen';
	@override String get latestEpisode => 'Neueste Folge';
}

// Path: profileStartup
class _Translations$profileStartup$de extends Translations$profileStartup$en {
	_Translations$profileStartup$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get autoLogin => 'Öffne das zuletzt verwendete Profil';
	@override String get autoLoginHint => 'Öffne automatisch das zuletzt verwendete Profil, wenn dafür keine PIN erforderlich ist.';
	@override String get allowKidsExit => 'Wechsel aus dem Kids-Profil ohne Eltern-PIN erlauben';
	@override String get allowKidsExitHint => 'Ein Kind kann ohne Eltern-PIN zu einem anderen Profil wechseln. Profil-PINs gelten weiterhin.';
	@override String get chooseKidsConnection => 'Wähle ein anderes Konto oder einen anderen Server';
	@override String get chooseKidsConnectionHint => 'Verbinde nach dem Speichern ein separates Konto oder wähle eine Verbindung aus einem anderen Profil.';
}

// Path: subtitleUpload
class _Translations$subtitleUpload$de extends Translations$subtitleUpload$en {
	_Translations$subtitleUpload$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get chooseFile => 'Untertiteldatei hochladen';
	@override String get hint => 'Wähle oben die Sprache aus und lade dann eine SRT-, ASS-, SSA- oder VTT-Datei auf diesen Server hoch.';
	@override String get success => 'Der Untertitel wurde auf den Server hochgeladen. Er erscheint, sobald der Server das Element aktualisiert.';
	@override String get failed => 'Der Untertitel konnte nicht hochgeladen werden. Prüfe die Datei und die Serverberechtigungen.';
}

// Path: personSpotlight
class _Translations$personSpotlight$de extends Translations$personSpotlight$en {
	_Translations$personSpotlight$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get inYourLibraries => 'in deinen Bibliotheken';
	@override String libraryTitles({required Object n}) => 'In deinen Bibliotheken · ${n} Titel';
	@override String get readBiography => 'Biografie lesen';
	@override String get newestFirst => 'Neueste zuerst';
	@override String get oldestFirst => 'Älteste zuerst';
	@override String get titleAscending => 'Titel A–Z';
	@override String get sortTitles => 'Filmografie sortieren';
	@override String unwatchedEpisodes({required Object n}) => '${n} ungesehene Folgen';
	@override String copies({required Object n}) => '${n} Bibliothekskopien';
	@override String versions({required Object n}) => '${n} Dateiversionen';
	@override String get retryTitles => 'Nicht alle Titel konnten geladen werden. Erneut versuchen';
}

// Path: detailExtras
class _Translations$detailExtras$de extends Translations$detailExtras$en {
	_Translations$detailExtras$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get onlineVideos => 'Trailer & Extras';
	@override String get reviews => 'Kritiken';
	@override String get readReview => 'Komplette Kritik lesen';
	@override String directedBy({required Object name}) => 'Mehr von ${name}';
	@override String get previewUnavailable => 'Diese Vorschau konnte nicht abgespielt werden. Du kannst sie stattdessen in der Original-App öffnen.';
	@override String get openExternally => 'Originalvideo öffnen';
}

// Path: mobileUi
class _Translations$mobileUi$de extends Translations$mobileUi$en {
	_Translations$mobileUi$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get readMore => 'Mehr anzeigen';
	@override String get readLess => 'Weniger anzeigen';
	@override String get playbackTools => 'Wiedergabeoptionen';
	@override String get streamingQuality => 'Streaming-Qualität';
	@override String get fileVersions => 'Dateiversionen';
	@override String get qualityAndVersions => 'Streaming-Qualität & Dateiversionen';
	@override String get hidePlaybackTools => 'Wiedergabe-Tools ausblenden';
	@override String remaining({required Object time}) => '${time} verbleiben';
	@override String endsAt({required Object time}) => 'Endet um ${time}';
	@override String get collection => 'Deine Sammlung';
	@override String get nowPlaying => 'JETZT LÄUFT';
	@override String get popularLibrary => 'Beliebt in deiner Bibliothek';
	@override String get weeklyLibrary => 'Diese Woche im Trend in deiner Bibliothek';
}

// Path: family
class _Translations$family$de extends Translations$family$en {
	_Translations$family$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profile & Familie';
	@override String get yourPeople => 'Deine Leute';
	@override String get manageHint => 'Verwalte Leute, die Sicherheit für Kinder und die Sichtaktivität auf diesem Gerät.';
	@override String get people => 'Leute';
	@override String peopleCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n,
		one: '${n} Person',
		other: '${n} Personen',
	);
	@override String kidsCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n,
		one: '${n} Kind',
		other: '${n} Kinder',
	);
	@override String get you => 'Du';
	@override String get adult => 'Erwachsener';
	@override String get child => 'Kind';
	@override String get adultTeen => 'Erwachsener oder Teenager';
	@override String get adultHint => 'Eigenes Profil, optionale Profil-PIN und eigene Serververbindungen.';
	@override String get childHint => 'Altersgrenzen, sichere Bibliotheken und ein kinderfreundlicher Look. Eine Eltern-PIN schützt diese Einstellungen.';
	@override String upToAge({required Object age}) => 'Bis Alter ${age}';
	@override String get allAges => 'Alle Altersstufen';
	@override String get switchProfile => 'Profil wechseln';
	@override String get switchHint => 'Wähle, wer schaut. Das Verwalten einer Person wechselt nicht das Profil.';
	@override String get addPerson => 'Person hinzufügen';
	@override String get addChild => 'Kind hinzufügen';
	@override String get addHint => 'Erstelle ein Erwachsenen-, Teenager- oder Kinderprofil auf diesem Gerät.';
	@override String get emptyPeople => 'Mach Platz für alle, die mit dir schauen.';
	@override String get emptyKids => 'Noch keine Kinderprofile. Füge ein Kind hinzu, um Altersgrenzen und sichere Bibliotheken zu wählen.';
	@override String get safety => 'Kids & Sicherheit';
	@override String get safetyHint => 'Eltern-PIN, Kinderprofile und Altersbeschränkungen.';
	@override String get protection => 'Schutz';
	@override String get kidsProfiles => 'Kinderprofile';
	@override String get backupHistory => 'Backup & Verlauf';
	@override String get parentPinOn => 'Eltern-PIN aktiviert';
	@override String get profilePin => 'Profil-PIN';
	@override String get confirmParentPin => 'Eltern-PIN bestätigen';
	@override String get parentPinOff => 'Eltern-PIN nicht festgelegt';
	@override String get missingPin => 'Füge eine Eltern-PIN hinzu, um diese Einstellungen zu schützen.';
	@override String get hideScope => 'Blende die Kids-Wiedergabe aus „Schau weiter" dieses Luroka-Profils aus. Dies ändert die geteilte Server-Historie nicht.';
	@override String get localScope => 'Kinderprofile und Einschränkungen werden auf diesem Gerät gespeichert. Profile mit demselben Serverkonto teilen sich weiterhin den Wiedergabefortschritt.';
	@override String get clearHistoryConfirm => 'Sollen von Kindern geschaute Titel wieder in „Schau weiter" erscheinen? Kinderprofile, Einschränkungen, Sichtzeit-Statistiken und die Server-Historie bleiben erhalten.';
	@override String get editRestrictions => 'Kids-Einschränkungen bearbeiten';
	@override String get activity => 'Sichtaktivität';
	@override String namedActivity({required Object name}) => 'Sichtaktivität von ${name}';
	@override String get thisProfile => 'Dieses Profil';
	@override String get activityScope => 'Von Luroka auf diesem Gerät für das aktive Profil aufgezeichnete Wiedergabezeit. Das sind Statistiken, keine Sichtbegrenzungen und keine vollständige Server-Historie.';
	@override String get activityUnavailable => 'Die Sichtaktivität ist für dieses Profil noch nicht verfügbar.';
	@override String get finished => 'Fertig';
}

// Path: posterDetails
class _Translations$posterDetails$de extends Translations$posterDetails$en {
	_Translations$posterDetails$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get showThemeMusic => 'Titelmelodie abspielen';
	@override String get showThemeMusicDescription => 'Spiele die Titelmelodie eines Films oder einer Serie ab, solange die Detailseite geöffnet ist, wenn der Server sie bereitstellt.';
	@override String get catalogEpisodeInfo => 'Episodenanzahl und Laufzeit auf Katalog-Karten anzeigen';
	@override String get catalogEpisodeInfoDescription => 'Zeige Episodenanzahl und durchschnittliche Laufzeit auf Entdecken-Postern.';
	@override String get title => 'Poster-Details';
	@override String get description => 'Zeige Titel, Jahr und IMDb-Bewertung unter Postern in Studio, Suche, Entdecken und Bibliotheken. Fehlende IMDb-Bewertungen bleiben ausgeblendet. Schalte es aus für reine Artwork-Poster.';
}

// Path: libraryPolish
class _Translations$libraryPolish$de extends Translations$libraryPolish$en {
	_Translations$libraryPolish$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get posterDetails => 'Poster-Details';
	@override String get showPosterDetails => 'Poster-Details anzeigen · Name, Jahr & IMDb';
	@override String get hidePosterDetails => 'Poster-Details ausblenden';
	@override String get overview => 'Übersicht';
	@override String get refreshing => 'Bibliothek wird aktualisiert…';
	@override String get serverCollections => 'Alle Sammlungen auf diesem Server';
	@override String get serverPlaylists => 'Alle Videoplaylists auf diesem Server';
	@override String get libraryCollections => 'Sammlungen in dieser Bibliothek';
	@override String get searchCollections => 'Sammlungen durchsuchen';
	@override String get searchPlaylists => 'Playlists durchsuchen';
	@override String get searchHint => 'Nach Name suchen';
	@override String get titleAscending => 'Titel A–Z';
	@override String get titleDescending => 'Titel Z–A';
	@override String get clearFilters => 'Filter zurücksetzen';
	@override String get playlistEmptyTitle => 'Deine Filmm zipper, in deiner Reihenfolge';
	@override String get playlistEmptyHint => 'Öffne das Mehr-Menü eines Titels und wähle Zur Playlist hinzufügen, um deine erste Playlist zu erstellen.';
	@override String get noMatches => 'Keine passenden Namen';
	@override String get indexing => 'Durchsuche den gesamten Katalog…';
}

// Path: showSchedule
class _Translations$showSchedule$de extends Translations$showSchedule$en {
	_Translations$showSchedule$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get today => 'Heute';
	@override String get tomorrow => 'Morgen';
	@override String get latestUpcoming => 'Neueste & Anstehende';
	@override String get latestEpisode => 'Neueste Folge';
	@override String get upcoming => 'Anstehend';
	@override String get inLibrary => 'In deiner Bibliothek';
	@override String get notInLibrary => 'Nicht in deiner Bibliothek';
	@override String get notYetAired => 'Noch nicht ausgestrahlt';
	@override String episode({required Object number}) => 'Folge ${number}';
	@override String get caughtUp => 'Du bist auf dem neuesten Stand';
	@override String get finished => 'Du hast diese Serie beendet';
	@override String nextAirs({required Object date}) => 'Nächste Folge läuft ${date}';
	@override String get watchBeginning => 'Von Beginn schauen';
	@override String get replay => 'Erneut abspielen';
	@override String get playNext => 'Als Nächstes spielen';
}

// Path: awardsCatalog
class _Translations$awardsCatalog$de extends Translations$awardsCatalog$en {
	_Translations$awardsCatalog$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get awards => 'Auszeichnungen';
	@override String get customize => 'Anpassen';
	@override String get chooseShelves => 'Entdecken anpassen';
	@override String get shelvesDescription => 'Wähle die Reihen, die du auf Entdecken sehen möchtest. Auszeichnungs-Reihen zeigen Gewinner aus deinen Bibliotheken. Deine Auswahl wird für dieses Profil gespeichert.';
	@override String get restoreShelves => 'Standardeinstellungen wiederherstellen';
	@override String get charts => 'IMDb-Charts';
	@override String get generalShelves => 'Beliebt & im Trend';
	@override String get saveShelvesFailed => 'Deine Entdecken-Auswahl konnte nicht gespeichert werden. Bitte versuche es erneut.';
	@override String get comedyActress => 'Hauptdarstellerin · Komödie';
	@override String get leadDramaActor => 'Hauptdarsteller · Drama';
	@override String get leadDramaActress => 'Hauptdarstellerin · Drama';
	@override String get comedySupportingActor => 'Nebendarsteller · Komödie';
	@override String get comedySupportingActress => 'Nebendarstellerin · Komödie';
	@override String get leadingPerformance => 'Silberner Bär · Beste Hauptleistung';
	@override String get globesComedySeries => 'Beste Fernsehserie · Musical oder Komödie';
	@override String get limitedSupportingActor => 'Nebendarsteller · Miniserie oder Fernsehfilm';
	@override String get limitedSupportingActress => 'Nebendarstellerin · Miniserie oder Fernsehfilm';
	@override String get berlinDocumentary => 'Berlinale Dokumentarfilmpreis';
	@override String get title => 'Auszeichnungen & Festivals';
	@override String get chooseCategory => 'Auszeichnungskategorie wählen';
	@override String get winners => 'Gewinner';
	@override String get nominees => 'Nominierte';
	@override String get releaseDecade => 'Erscheinungsjahrzehnt';
	@override String get allYears => 'Alle Jahre';
	@override String get loading => 'Lade Auszeichnungstitel…';
	@override String get matching => 'Suche diese Titel in deinen Bibliotheken…';
	@override String get unavailable => 'Auszeichnungsdaten sind gerade nicht verfügbar. Versuche es erneut.';
	@override String get empty => 'Keine passenden Titel in deinen sichtbaren Bibliotheken für diese Kategorie.';
	@override String get coverage => 'Die Mitgliedschaft stammt aus Wikidata und kann lückenhaft sein. Actor- und Director-Kategorien zeigen die Filme oder Serien, für die sie ausgezeichnet wurden. Jahre beziehen sich auf den Titelstart, nicht auf die Verleihung.';
	@override String get picture => 'Bester Film';
	@override String get film => 'Bester Film';
	@override String get international => 'Bester internationaler Film';
	@override String get internationalFilm => 'Bester internationaler Film';
	@override String get nonEnglishFilm => 'Bester Film nicht in englischer Sprache';
	@override String get animated => 'Bester Animationsfilm';
	@override String get animatedFilm => 'Bester Animationsfilm';
	@override String get documentary => 'Bester Dokumentarfilm';
	@override String get director => 'Beste Regie';
	@override String get actor => 'Bester Hauptdarsteller';
	@override String get actress => 'Beste Hauptdarstellerin';
	@override String get supportingActor => 'Bester Nebendarsteller';
	@override String get supportingActress => 'Beste Nebendarstellerin';
	@override String get originalScreenplay => 'Bestes Originaldrehbuch';
	@override String get adaptedScreenplay => 'Bestes adaptiertes Drehbuch';
	@override String get screenplay => 'Bestes Drehbuch';
	@override String get cinematography => 'Beste Kamera';
	@override String get editing => 'Bester Schnitt';
	@override String get score => 'Beste Filmmusik';
	@override String get song => 'Bester Filmsong';
	@override String get sound => 'Bester Ton';
	@override String get effects => 'Beste visuelle Effekte';
	@override String get productionDesign => 'Bestes Szenenbild';
	@override String get costume => 'Bestes Kostümdesign';
	@override String get makeup => 'Bestes Make-up und Frisuren';
	@override String get dramaSeries => 'Herausragende Dramaserie';
	@override String get comedySeries => 'Herausragende Comedyserie';
	@override String get limitedSeries => 'Herausragende Miniserie';
	@override String get animatedProgram => 'Herausragendes Animationsprogramm';
	@override String get comedyActor => 'Hauptdarsteller · Komödie';
	@override String get limitedActor => 'Hauptdarsteller · Miniserie oder Fernsehfilm';
	@override String get limitedActress => 'Hauptdarstellerin · Miniserie oder Fernsehfilm';
	@override String get limitedDirecting => 'Regie · Miniserie oder Fernsehfilm';
	@override String get britishFilm => 'Bester britischer Film';
	@override String get goldenBear => 'Goldener Bär';
	@override String get grandJury => 'Großer Preis der Jury';
	@override String get jury => 'Preis der Jury';
	@override String get teddy => 'Teddy Award';
	@override String get goldenLion => 'Goldener Löwe';
	@override String get volpiActor => 'Volpi-Pokal · Bester Hauptdarsteller';
	@override String get volpiActress => 'Volpi-Pokal · Beste Hauptdarstellerin';
	@override String get queerLion => 'Queer Lion';
	@override String get dramaFilm => 'Bester Film · Drama';
	@override String get comedyFilm => 'Bester Film · Musical oder Komödie';
	@override String get dramaActor => 'Bester Hauptdarsteller · Drama';
	@override String get dramaActress => 'Beste Hauptdarstellerin · Drama';
	@override String get usDramatic => 'Großer Preis der Jury · US-Dramatic';
	@override String get documentaryJury => 'Großer Preis der Jury · Dokumentarfilm';
	@override String get worldCinema => 'Großer Preis der Jury · World Cinema';
	@override String get dramaticAudience => 'Publikumspreis · US-Dramatic';
	@override String get usDirecting => 'Regiepreis · US-Dramatic';
	@override String get peopleChoice => 'Publikumspreis';
	@override String get canadianFilm => 'Bester kanadischer Film';
	@override String get firstFeature => 'Bestes Debüt';
	@override String get cassavetes => 'John-Cassavetes-Preis';
	@override String get scienceFiction => 'Bester Science-Fiction-Film';
	@override String get fantasy => 'Bester Fantasyfilm';
	@override String get horror => 'Bester Horrorfilm';
	@override String get action => 'Bester Action- oder Abenteuerfilm';
	@override String get thriller => 'Bester Thriller';
}

// Path: searchDiscovery
class _Translations$searchDiscovery$de extends Translations$searchDiscovery$en {
	_Translations$searchDiscovery$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get suggestions => 'Etwas zum Anschauen';
	@override String get collections => 'Auszeichnungen & Sammlungen';
	@override String get collectionsHint => 'Auszeichnungsgewinner und kuratierte Charts aus deinen Bibliotheken';
	@override String get all => 'Alle Entdeckungen';
	@override String get awards => 'Auszeichnungen & Charts';
}

// Path: lurokaPlayerDesign
class _Translations$lurokaPlayerDesign$de extends Translations$lurokaPlayerDesign$en {
	_Translations$lurokaPlayerDesign$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get seeking => 'Spulvorschau';
	@override String get keepWatching => 'Weiterschauen';
	@override String get upNext => 'Als Nächstes';
	@override String playingIn({required Object seconds}) => 'Start in ${seconds} s';
}

// Path: lurokaWorkspace
class _Translations$lurokaWorkspace$de extends Translations$lurokaWorkspace$en {
	_Translations$lurokaWorkspace$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get everyday => 'Alltag';
	@override String get homeDiscovery => 'Startseite & Entdecken';
	@override String get librariesAccounts => 'Bibliotheken & Konten';
	@override String get profilesFamily => 'Profile & Familie';
	@override String get thisDevice => 'Dieses Gerät';
	@override String get thisProfile => 'Dieses Profil';
	@override String get searchSettings => 'Einstellungen durchsuchen';
	@override String get savedAutomatically => 'Änderungen werden automatisch gespeichert. Alltag und Erweitert ändern nur, welche Steuerungen angezeigt werden.';
	@override String get audioSubtitles => 'Audio & Untertitel';
	@override String get audioDescription => 'Tonausgabe, Lautstärke und Untertitel-Darstellung. Bevorzugte Sprachen werden pro Serverkonto über Konto-Einstellungen festgelegt, wenn verbunden.';
	@override String get pictureSound => 'Bild & Ton';
	@override String get pictureDescription => 'Bildwiederholraten-Abgleich, Auflösung, HDR- und Dolby-Vision-Feinjustage für dieses Gerät.';
	@override String get engineDescription => 'Player-Engine, Decodierung, benutzerdefinierte Konfiguration und erweiterte Wiedergaberegeln.';
	@override String get networkStreaming => 'Netzwerk & Streaming';
	@override String get networkDescription => 'Streaming-Qualität, Direct-Play-Codec-Präferenzen und Bandbreitenoptionen.';
	@override String get homeOptions => 'Startseite-Optionen';
	@override String get refreshHome => 'Startseite & Beliebt jetzt aktualisieren';
	@override String get customizeHome => 'Startseite anpassen';
	@override String get spotlight => 'Startseite-Spotlight';
	@override String get rotateSpotlight => 'Featured-Titel automatisch rotieren';
	@override String get rotateDescription => 'Rotiert, während Startseite inaktiv ist. Interaktion pausiert die Rotation; das Stöbern in Regalen, das Öffnen einer Seite oder das Verlassen der App pausiert sie vollständig.';
	@override String get rotationInterval => 'Zeit zwischen Featured-Titeln';
}

// Path: mobileFixes
class _Translations$mobileFixes$de extends Translations$mobileFixes$en {
	_Translations$mobileFixes$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get connectionRecoveryHint => 'Server nicht erreichbar? Verwalte deine Konten oder verbinde einen anderen Server.';
}

// Path: downloadsRedesign
class _Translations$downloadsRedesign$de extends Translations$downloadsRedesign$en {
	_Translations$downloadsRedesign$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get shelfSize => 'Elemente pro Regal';
	@override String get shelfSizeHint => 'Zeige 16, 32 oder 48 Elemente in „Schau weiter" und Empfehlungsregalen. Server liefern möglicherweise weniger verfügbare Titel.';
	@override String get subtitle => 'Deine Favoriten, bereit für die Reise.';
	@override String get transfers => 'Übertragungen';
	@override String get ready => 'Offline verfügbar';
	@override String get active => 'Wird geladen';
	@override String get waiting => 'Warten';
	@override String get downloaded => 'Heruntergeladen';
	@override String get speed => 'Download-Geschwindigkeit';
	@override String get notificationProgress => '{progress} · {networkSpeed} · {timeRemaining} verbleiben';
}

// Path: kidsShelf
class _Translations$kidsShelf$de extends Translations$kidsShelf$en {
	_Translations$kidsShelf$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get movieShelf => 'Filmzeit';
	@override String get showShelf => 'Finde deine nächste Serie';
	@override String get aurora => 'Aurora — tiefes Petrol & Limette';
	@override String get marquee => 'Marquee — Samt & Gold';
	@override String get electric => 'Electric — Indigo & Eis';
	@override String get midnight => 'Midnight — Stahl & Bernstein';
	@override String get yourShelf => 'Dein Filmregal';
	@override String get all => 'Alles';
	@override String get pickSomething => 'Was möchtest du schauen?';
}

// Path: kidsHome
class _Translations$kidsHome$de extends Translations$kidsHome$en {
	_Translations$kidsHome$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get everything => 'Für dich';
	@override String get keepWatching => 'Weiterschauen';
	@override String get emptyFilter => 'Hier ist noch nichts. Probier „Für dich" oder frag deine Eltern, ob sie etwas hinzufügen, das du liebst.';
}

// Path: tvSettingsV2
class _Translations$tvSettingsV2$de extends Translations$tvSettingsV2$en {
	_Translations$tvSettingsV2$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get moreThemes => 'Weitere Themen und benutzerdefinierte Farben';
	@override String get moreThemesHint => 'Öffne alle verfügbaren Voreinstellungen und benutzerdefinierten Designoptionen.';
	@override String get previewLive => 'Live-Vorschau';
	@override String get previewIllustration => 'Vorschaubeispiel';
	@override String previewShelfCount({required Object count}) => 'Bis zu ${count} Artikel pro Regal';
	@override String get simple => 'Einfach';
	@override String get homeNavigation => 'Startseite & Navigation';
	@override String get libraryCards => 'Bibliothek & Karten';
	@override String get accountsLibraries => 'Konten und Bibliotheken';
	@override String get profilesFamily => 'Profile & Familie';
	@override String get aboutSupport => 'Über & Support';
	@override String get playback => 'Wiedergabe';
	@override String get homeHint => 'Wähle aus, was auf der Startseite und in der Navigation angezeigt wird.';
	@override String get libraryHint => 'Passe Postergrößen, Beschriftungen und Gesehen-Markierungen an.';
	@override String get advancedPlayback => 'Player-Engine und Streaming';
	@override String get advancedPlaybackHint => 'Player, Videoausgabe, Streaming und erweiterte Wiedergabeoptionen.';
	@override String get advancedTools => 'Diagnose und Backups';
	@override String get advancedToolsHint => 'Protokolle, Fehlerbehebung, Sicherung und Zurücksetzen der Einstellungen.';
	@override String get themePreview => 'Themenvorschau';
	@override String get libraryPreview => 'Vorschau der Bibliothek';
	@override String get homePreview => 'Startseite-Vorschau';
	@override String get subtitlePreview => 'Untertitelvorschau';
	@override String get subtitleSample => 'Ihre Untertitel werden so aussehen.';
	@override String get previewPlaceholder => 'Ihr Kunstwerk erscheint hier';
	@override String get posterSize => 'Postergröße';
	@override String get serverRecommendations => 'Startseite-Empfehlungen von Ihrem Server';
	@override String get tvLayout => 'TV-Layout verwenden';
	@override String get hardwareDecode => 'Hardware-Videodekodierung verwenden';
	@override String get serverNames => 'Servernamen in Startseite-Zeilen anzeigen';
	@override String get settingsSaved => 'Änderungen werden automatisch gespeichert.';
	@override String get morePlayback => 'Erweiterte Wiedergabe';
	@override String get screenDisplay => 'Bild & Ton';
	@override String get engine => 'Spieler-Engine';
	@override String get network => 'Streaming & Netzwerk';
	@override String get performance => 'Leistung';
	@override String get simpleAudio => 'Sprachen und Erscheinungsbild der Untertitel';
}

// Path: settingsRedesign
class _Translations$settingsRedesign$de extends Translations$settingsRedesign$en {
	_Translations$settingsRedesign$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get themeEffects => 'Design & Effekte';
	@override String get libraryLayout => 'Bibliotheks-Layout';
	@override String get appearanceHint => 'Passe Look, Layout und Verhalten von Luroka an.';
	@override String get livePreview => 'Live-Vorschau';
	@override String get previewHint => 'Sieh, wie deine Bibliothek mit den aktuellen Einstellungen aussieht.';
	@override String get showLiveTv => 'Live TV anzeigen';
	@override String get showLiveTvHint => 'Zeige Live TV in der Navigation, wenn ein verbundener Server es unterstützt. Dies ändert deinen Server nicht.';
	@override String get aboutTagline => 'Deine Medien. Dein Raum.';
	@override String get aboutDescription => 'Luroka vereint deine Plex-, Jellyfin- und Emby-Bibliotheken in einem cineastischen Player für Handys, TVs und Desktops.';
	@override String get aboutFeatures => 'Durchstöbere deine Bibliotheken, setze Filme und Serien fort, personalisiere Profile, nutze Downloads und schau gemeinsam. Live TV ist mit einem kompatiblen Server verfügbar.';
	@override String get services => 'Verbinde deine Welt';
	@override String get updateSource => 'Update-Quelle';
	@override String get updateSourceHint => 'HTTPS-Adresse deines Luroka-Release-Feeds. Dein Distributor kann dies in der App vorkonfigurieren.';
	@override String get updateNotConfigured => 'Automatische Updates sind für diesen Build nicht konfiguriert.';
	@override String get downloadInstall => 'Herunterladen & installieren';
	@override String get installUpdate => 'Update installieren';
	@override String get downloading => 'Update wird heruntergeladen…';
	@override String get downloadFailed => 'Update konnte nicht heruntergeladen oder überprüft werden. Bitte versuche es erneut.';
	@override String get installPermission => 'Erlaube Luroka in den Android-Einstellungen, Updates zu installieren, und kehre dann zurück und wähle „Update installieren".';
	@override String get updateReady => 'Download überprüft. Bereit zur Installation.';
	@override String get releaseNotes => 'Versionshinweise';
	@override String get invalidFeed => 'Gib eine gültige HTTPS-Update-Feed-Adresse ein.';
}

// Path: onboarding
class _Translations$onboarding$de extends Translations$onboarding$en {
	_Translations$onboarding$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get connectStep => '01 · Verbinden';
	@override String get connectTitle => 'Willkommen bei Luroka';
	@override String get connectHint => 'Melde dich an, um deine Bibliotheken hierher zuholen.';
	@override String get serverAddressHint => 'Gib deine Server-Adresse ein oder wähle einen Server aus deinem Netzwerk.';
	@override String get serverSignInHint => 'Nutze Benutzername und Passwort deines Servers, um deine Bibliotheken zu verbinden.';
	@override String get serverAddressTitle => 'Server-Adresse';
	@override String get serverAccountTitle => 'Dein Server-Konto';
	@override String get plexHomeTitle => 'Wähle deinen Plex-Startseite-Benutzer';
	@override String get plexHomeHint => 'Wähle den Plex-Benutzer, dessen Bibliotheken du nutzen möchtest. Danach richtest du dein Luroka-Profil ein.';
	@override String get chooseService => 'Wähle deinen Dienst';
	@override String get profileStep => '02 · Dein Profil';
	@override String get profileTitle => 'Richte dich gemütlich ein.';
	@override String get profileHint => 'Wähle einen Namen und einen Avatar für dein Luroka-Profil. Dein verbundenes Konto bleibt dasselbe.';
	@override String get readyStep => '03 · Bereit zum Schauen';
	@override String get readyTitle => 'Ein bisschen mehr du.';
	@override String get readyHint => 'Bringe deine Dienste zusammen oder mach Platz für jemand anderen. Du kannst das jederzeit später nachholen.';
	@override String get addService => 'Weiteren Dienst verbinden';
	@override String get editProfile => 'Name & Avatar bearbeiten';
	@override String get connected => 'Verbunden und bereit';
	@override String get backToProfile => 'Zurück zu deinem Profil';
	@override String get showOtherPlexHome => 'Andere Plex-Startseite-Mitglieder anzeigen';
	@override String get showOtherPlexHomeHint => 'Standardmäßig aus. Deine Luroka-Profile und genutzte Plex-Startseite-Mitglieder bleiben sichtbar. Aktivieren, um jemand anderen zu wählen.';
}

// Path: household
class _Translations$household$de extends Translations$household$en {
	_Translations$household$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Deine Luroka-Haushaltsgemeinschaft';
	@override String get welcome => 'Mach Luroka zu deinem Ding';
	@override String get welcomeHint => 'Dein erstes Konto ist verbunden. Personalisiere dein Profil oder füge jemand anderen hinzu, bevor du mit dem Schauen beginnst.';
	@override String get profiles => 'Profile & Haushalt';
	@override String get manageHint => 'Füge Leute hinzu, ändere Bilder und verwalte die Verbindungen jedes Profils.';
	@override String get addProfile => 'Luroka-Profil hinzufügen';
	@override String get addHint => 'Jede Person kann ihre eigene Plex-, Emby- oder Jellyfin-Anmeldung verbinden. Nur Verbindungen aus ihrem Profil erscheinen für sie.';
	@override String get sharedHint => 'Werdest du die Verbindung eines anderen Profils, teilst du den Gesehen-Status und Wiedergabefortschritt dieses Server-Benutzers. Wähle eine separate Anmeldung für eine unabhängige Historie.';
	@override String get personalise => 'Profil personalisieren';
	@override String get changePicture => 'Profilbild ändern';
	@override String get pictureHint => 'Wähle einen Luroka-Avatar oder ein Foto. Das ändert das Bild nur auf diesem Gerät; dein Serverkonto bleibt unberührt.';
	@override String get serverPicture => 'Server-Bild / Initialen verwenden';
	@override String get choosePhoto => 'Foto wählen';
	@override String get photoHint => 'JPEG, PNG oder ein anderes unterstütztes Format, bis 10 MB. Fotos werden verkleinert und auf diesem Gerät gespeichert.';
	@override String get pictureSaved => 'Profilbild aktualisiert';
	@override String get pictureFailed => 'Das Profilbild konnte nicht aktualisiert werden. Versuche ein unterstütztes Bild bis 10 MB.';
	@override String get saveFailed => 'Profileinstellungen konnten nicht gespeichert werden. Bitte versuche es erneut.';
	@override String get startWatching => 'Schauen starten';
	@override String get manageProfiles => 'Profile verwalten oder wechseln';
	@override String get addLater => 'Du kannst später in Einstellungen → Profile & Haushalt weitere Personen hinzufügen.';
	@override String get connectionRequired => 'Füge eine Serververbindung hinzu, um die Einrichtung dieses Profils abzuschließen.';
	@override String get mountain => 'Berg';
	@override String get orbit => 'Entdecker';
	@override String get waves => 'Ozean';
	@override String get blossom => 'Blüte';
	@override String get lightning => 'Blitz';
	@override String get moon => 'Mond';
	@override String get avatarGallery => 'Avatar auswählen';
	@override String get avatarIllustrationHint => 'Original illustrierte Porträts, Kinder und Tierfreunde';
	@override String get avatarPortraitSunrise => 'Sonnenaufgangs-Porträt';
	@override String get avatarPortraitMeadow => 'Wiesenporträt';
	@override String get avatarPortraitBerry => 'Beerenporträt';
	@override String get avatarPortraitGolden => 'Goldenes Porträt';
	@override String get avatarPortraitIndigo => 'Indigo-Porträt';
	@override String get avatarPortraitOcean => 'Ozean-Porträt';
	@override String get avatarKidArtist => 'Kleiner Künstler';
	@override String get avatarKidSkater => 'Kleiner Skater';
	@override String get avatarCat => 'Neugierige Katze';
	@override String get avatarDog => 'Glücklicher Hund';
	@override String get avatarPanda => 'Panda';
	@override String get avatarOwl => 'Eule';
	@override String get avatarFox => 'Fuchs';
	@override String get avatarDinosaur => 'Dinosaurier';
	@override String get avatarRobot => 'Roboter';
}

// Path: detailComposition
class _Translations$detailComposition$de extends Translations$detailComposition$en {
	_Translations$detailComposition$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get startOver => 'Von vorn beginnen';
	@override String get seriesCast => 'Serienbesetzung';
	@override String get streamingQuality => 'Streaming-Qualität…';
	@override String get trailer => 'Trailer';
	@override String get manageMedia => 'Medien verwalten…';
	@override String get playbackOptions => 'Wiedergabeoptionen…';
	@override String get moreActions => 'Weitere Aktionen';
	@override String get watched => 'Gesehen';
	@override String get unwatched => 'Ungesehen';
	@override String endsAt({required Object time}) => 'Endet um ${time}';
	@override String get automatic => 'Automatisch';
	@override String get usePreferences => 'Wiedergabepräferenzen verwenden';
	@override String get mediaInformation => 'Medieninformationen';
	@override String get fullFileInformation => 'Vollständige Dateiinformationen';
	@override String get castAndCrew => 'Besetzung & Crew';
}

// Path: kids
class _Translations$kids$de extends Translations$kids$en {
	_Translations$kids$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get backupProfile => 'Kinderprofil sichern';
	@override String get backupExplain => 'Sichere den gespeicherten Namen, Charakter, Einschränkungen, das Erscheinungsbild und lokale Ausschlüsse dieses Profils. Eltern-PINs, Server-Logins, Downloads und serverseitiger Wiedergabefortschritt sind nicht enthalten.';
	@override String get saveBackupFile => 'Backup-Datei speichern';
	@override String get copyBackup => 'Backup-Text kopieren';
	@override String backupSaved({required Object path}) => 'Kinderprofil-Backup gespeichert unter ${path}';
	@override String get backupCopied => 'Kinderprofil-Backup kopiert';
	@override String get backupFailed => 'Das Kinderprofil-Backup konnte nicht gespeichert werden. Bitte versuche es erneut.';
	@override String get restoreProfile => 'Kinderprofil wiederherstellen';
	@override String get chooseBackupFile => 'Backup-Datei wählen';
	@override String get pasteBackup => 'Backup-Text einfügen';
	@override String get backupText => 'Kinderprofil-Backup-JSON';
	@override String get pasteFromClipboard => 'Aus der Zwischenablage einfügen';
	@override String get restoreReview => 'Prüfe die wiederhergestellten Einstellungen und tippe auf Speichern, um ein neues Kinderprofil mit deinen aktuellen Serververbindungen zu erstellen. Bestehende Profile werden nicht überschrieben. Bibliotheksauswahl und Ausschlüsse passen nur bei gleichen Server-/Bibliotheks-IDs.';
	@override String get restoreInvalid => 'Das ist kein gültiges unterstütztes Kinderprofil-Backup. Wähle ein Luroka-Kinderprofil-JSON-Backup.';
	@override String get deleteProfile => 'Kinderprofil löschen';
	@override String deleteExplain({required Object name}) => '${name} aus Luroka löschen? Die lokalen Einstellungen, Downloads und Ausschlüsse werden entfernt. Dein Serverkonto und die serverseitige Historie bleiben erhalten. Erstelle vorher ein Backup, wenn du das Profil später wiederherstellen möchtest.';
	@override String get profileDeleted => 'Kinderprofil gelöscht';
	@override String get allowedLibraries => 'Erlaubte Bibliotheken';
	@override String get unavailableLibrary => 'Zuvor gewählte Bibliothek (derzeit nicht verfügbar)';
	@override String get allLibraries => 'Alle verbundenen Film- und TV-Bibliotheken erlauben';
	@override String get librariesExplain => 'Schalte das aus, um bestimmte Bibliotheken zu wählen. Alters- und Animationsregeln gelten innerhalb der gewählten Bibliotheken weiter. Neue Bibliotheken werden bei einer Auswahl nicht automatisch hinzugefügt.';
	@override String get librariesUnavailable => 'Keine Film- oder TV-Bibliotheken geladen. Verbinde den Server und öffne Bibliotheken, um hier auszuwählen.';
	@override String get noLibrariesSelected => 'Keine Bibliotheken ausgewählt: Dieses Kind sieht keine Titel.';
	@override String get animationOnly => 'Nur Animation';
	@override String get animationExplain => 'Zeige nur Titel, die auf deinem Server mit dem Genre Animation markiert sind. Das ersetzt nicht das Alterslimit: Animation kann auch für Erwachsene sein. Fehlende Genre-Metadaten werden ausgeblendet.';
	@override String get allowUnrated => 'Titel ohne Altersfreigabe erlauben';
	@override String get unratedExplain => 'Standardmäßig aus. Wenn aktiviert, können fehlende oder nicht bewertete Freigaben erscheinen, sofern Bibliotheks- und Animationsregeln es erlauben. Ihre Eignung kann dem Alter nach nicht geprüft werden. Bekannte Freigaben über dem Alterslimit und unbekannte Klassifizierungen bleiben ausgeblendet.';
	@override String get whoIsWatching => 'Wer schaut?';
	@override String get chooseAdventure => 'Eine kleine Welt voller großer Abenteuer.';
	@override String get chooseProfile => 'Wähle deinen Platz. Mach eine Filmnacht draus.';
	@override String welcome({required Object name}) => 'Hi, ${name}!';
	@override String welcomeOlder({required Object name}) => 'Deine nächste große Geschichte, ${name}.';
	@override String get homeSubtitle => 'Große Abenteuer. Kleine Entdeckungen. Alles für dich.';
	@override String get homeSubtitleOlder => 'Finde einen neuen Liebling. Mach da weiter, wo du aufgehört hast.';
	@override String get featured => 'Das große Abenteuer heute';
	@override String get featuredOlder => 'Im Rampenlicht';
	@override String get moreInfo => 'Mehr Infos';
	@override String get movies => 'Filme';
	@override String get shows => 'Serien';
	@override String get profiles => 'Profile';
	@override String get adultBadge => 'Erwachsene';
	@override String get avatar => 'Wähle deinen Charakter';
	@override String get avatarExplorer => 'Weltraum-Entdecker';
	@override String get avatarFox => 'Fuchs';
	@override String get avatarDinosaur => 'Dinosaurier';
	@override String get avatarRobot => 'Roboter';
	@override String get avatarChildArtist => 'Kleiner Künstler';
	@override String get avatarChildSkater => 'Kleiner Skater';
	@override String get avatarSunrisePerson => 'Sonnenaufgangs-Porträt';
	@override String get avatarOceanPerson => 'Ozean-Porträt';
	@override String get avatarCat => 'Neugierige Katze';
	@override String get avatarDog => 'Glücklicher Hund';
	@override String get avatarPanda => 'Panda';
	@override String get avatarOwl => 'Eule';
	@override String get avatarBear => 'Bär';
	@override String get continueAdventure => 'Abenteuer fortsetzen';
	@override String get freshStories => 'Neue Geschichten zum Entdecken';
	@override String get yourMovies => 'Filmzeit-Favoriten';
	@override String get yourShows => 'Noch eine Folge';
	@override String get emptyHint => 'Neue Abenteuer erscheinen hier, wenn dein Server Titel mit erlaubter Altersfreigabe hat.';
	@override String get title => 'Luroka für Kinder';
	@override String get addProfile => 'Kinderprofil hinzufügen';
	@override String get parentalControls => 'Elternkontrollen';
	@override String get parentPin => 'Eltern-PIN';
	@override String get setParentPin => 'Eltern-PIN festlegen';
	@override String get changeParentPin => 'Eltern-PIN ändern';
	@override String get pinExplain => 'Diese PIN schützt Erwachsenenprofile und die Kindersicherung auf diesem Gerät.';
	@override String get name => 'Name des Kindes';
	@override String get ageGroup => 'Erlaubte Altersfreigabe';
	@override String get allAges => 'Alle Altersstufen · G, TV-Y, TV-G, U';
	@override String get age7 => 'Bis 7 · auch PG, TV-PG, TV-Y7';
	@override String get age12 => 'Bis 12 · auch 12 und 12A';
	@override String get age16 => 'Bis 16 · auch PG-13, TV-14, 15 und 16';
	@override String get ratingExplain => 'Titel über dem Alterslimit und unbekannte Klassifizierungen werden ausgeblendet. Titel ohne Freigabe sind ausgeblendet, sofern du sie unten nicht erlaubst. Nicht bewertete Folgen können eine freigegebene Serienklassifizierung erben. Freigaben hängen von den Metadaten deines Servers ab.';
	@override String get theme => 'Kids-Erscheinungsbild';
	@override String get themeExplain => 'Nutze ein farbenfrohes Design, wenn dieses Profil aktiv ist.';
	@override String get sharedLogin => 'Nutzt deine bestehende Server-Anmeldung. Plex/Emby-Fortschritt und Gesehen-Status bleiben geteilt. Einschränkungen und Kinderprofile werden auf diesem Gerät gespeichert.';
	@override String get hideWatched => 'Kids-Wiedergabe in meiner „Schau weiter" verstecken';
	@override String get hideExplain => 'Blende Filme und ganze Serien aus, die Kinderprofile auf diesem Gerät abgespielt haben. Das entfernt sie nicht aus deiner Bibliothek und ändert die Server-Historie nicht.';
	@override String get clearHistory => 'Kids-Wiedergabe-Ausschlüsse zurücksetzen';
	@override String get historyReset => 'Kids-Wiedergabe-Ausschlüsse zurückgesetzt';
	@override String get blocked => 'Dieser Titel ist in diesem Kinderprofil nicht verfügbar.';
	@override String get switchProfile => 'Profil wechseln';
	@override String get manageFromAdult => 'Wechsle zu einem Erwachsenen-Profil, um Einstellungen zu verwalten.';
	@override String get noConnections => 'Verbinde einen Server mit deinem Erwachsenen-Profil, bevor du ein Kinderprofil hinzufügst.';
	@override String get created => 'Kinderprofil erstellt';
	@override String get updated => 'Kinderprofil aktualisiert';
	@override String get saveFailed => 'Elternkontrollen konnten nicht gespeichert werden. Bitte versuche es erneut.';
	@override String get kidsBadge => 'Kids';
}

// Path: lurokaDiscovery
class _Translations$lurokaDiscovery$de extends Translations$lurokaDiscovery$en {
	_Translations$lurokaDiscovery$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Entdecken';
	@override String get chooseLibraryHint => 'Wähle eine Bibliothek zum Erkunden';
	@override String get chooseCopyHint => 'In mehreren Bibliotheken verfügbar. Wähle deine bevorzugte Kopie.';
	@override String get weeklyMovies => 'Trendfilme dieser Woche · TMDb';
	@override String get weeklyShows => 'Trendserien dieser Woche · TMDb';
	@override String get weeklyLibrary => 'Diese Woche im Trend · In deiner Bibliothek';
	@override String get popularLibrary => 'Jetzt beliebt · In deiner Bibliothek · Cinemeta';
	@override String get publicFeedError => 'Die Cinemeta-Entdeckung ist nicht verfügbar. Bitte versuche es erneut.';
	@override String get oscars => 'Oscars · Best-Picture-Gewinner';
	@override String get imdb100 => 'IMDb Top 100 Filme · Stand Sep 2026';
	@override String get imdbTv100 => 'IMDb Top 100 Serien · Stand Sep 2026';
	@override String get emmyComedy => 'Emmys · Comedyserien-Gewinner · 1971–2026';
	@override String get emmys => 'Emmys · Dramaserien-Gewinner · 1966–2026';
	@override String get bafta => 'BAFTA · Best-Film-Gewinner';
	@override String get cannes => 'Cannes · Goldene-Palme-Gewinner';
	@override String get awardsNote => 'Auszeichnungssammlungen umfassen Oscar-Best-Picture-Historie, Emmy-Drama-/Comedy-Gewinner und erweiterte BAFTA/Cannes-Auswahlen. Mehrfach ausgezeichnete Titel erscheinen einmal. Die Mitgliedschaft nutzt Auszeichnungskategorien-Historien und Wikidata-Fakten. Die IMDb-Top-100-Film-/Serienlisten bewahren die September-2026-Chartsnapshots von mmdju/imdb-top250-api. Nur Treffer in deinen sichtbaren, Online-Bibliotheken erscheinen; die Sammlungsgröße hängt von der Verfügbarkeit der Bibliotheken ab.';
	@override String get attribution => 'Öffentliche Beliebtheitslisten, Metadaten und IMDb-Bewertungen stammen von Cinemeta; die Popular-Listen sind keine wöchentlichen Sehcharts. Dieses Produkt nutzt die TMDB API, wird aber nicht von TMDB unterstützt oder zertifiziert. Optionale TMDb-Wochentrends spiegeln das TMDb-Interesse wider, keine Sehzahlen. Bewertungen behalten ihre Quell-Labels.';
	@override String get tmdbSettings => 'Entdeckungsquellen';
	@override String get setupDescription => 'Die Cinemeta-Entdeckung funktioniert sofort ohne Konto: beliebte Filme und Serien, IMDb-Bewertungen und Auszeichnungsgewinner. Verbinde optional TMDb für Wochentrends mit einem API-Key oder API Read Access Token von themoviedb.org/settings/api. Deine Zugangsdaten werden auf diesem Gerät gespeichert.';
	@override String get apiKey => 'TMDb API-Key / Read Access Token';
	@override String get connect => 'TMDb verbinden';
	@override String get connecting => 'Verbinde…';
	@override String get connected => 'TMDb verbunden · Wochentrends und Auszeichnungen aktiviert';
	@override String get builtInKeyNote => 'Läuft auf Lurokas integriertem gemeinsamen TMDb-Key. Füge unten deinen eigenen kostenlosen Key hinzu für eigene Rate-Limits und volle Kontrolle.';
	@override String get disconnect => 'TMDb trennen';
	@override String get invalidKey => 'TMDb konnte nicht überprüft werden. Prüfe deine Zugangsdaten und Internetverbindung.';
	@override String get feedError => 'Die TMDb-Entdeckung ist nicht verfügbar. Bitte versuche es erneut.';
	@override String get allTitles => 'Alle Titel';
	@override String get available => 'In deiner Bibliothek';
	@override String get checking => 'Prüfe deine Bibliotheken…';
	@override String get availabilityUnknown => 'Einige Bibliotheken konnten nicht geprüft werden. Versuche eine Aktualisierung.';
	@override String get noAvailable => 'Keine passenden Titel in den geprüften Bibliotheken gefunden.';
	@override String get sourceInfo => 'Wochentrends & ausgewählte Auszeichnungsgewinner · TMDb';
	@override String get configure => 'Entdeckungseinstellungen';
}

// Path: app
class _Translations$app$de extends Translations$app$en {
	_Translations$app$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Luroka';
}

// Path: appIcon
class _Translations$appIcon$de extends Translations$appIcon$en {
	_Translations$appIcon$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'App-Symbol';
	@override String get defaultIcon => 'Standard';
	@override String get current => 'Aktuelles Symbol';
	@override String get locked => 'Supporter-Vorteil';
	@override String get lockedHint => 'Alternative Symbole sind ein Supporter-Vorteil.';
	@override String get changeFailed => 'Das App-Symbol konnte nicht geändert werden';
	@override String get launcherHint => 'Das neue Symbol erscheint auf deinem Homescreen, sobald du Luroka verlässt.';
	@override String get tvLauncherHint => 'Das neue Banner erscheint, sobald du Luroka verlässt. Android TV kann das alte bis zum Neustart des TVs zeigen.';
	@override late final _Translations$appIcon$names$de names = _Translations$appIcon$names$de._(_root);
}

// Path: auth
class _Translations$auth$de extends Translations$auth$en {
	_Translations$auth$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get signInWithPlex => 'Mit Plex anmelden';
	@override String get showQRCode => 'QR-Code anzeigen';
	@override String get authenticate => 'Authentifizieren';
	@override String get authenticationTimeout => 'Authentifizierung abgelaufen. Bitte erneut versuchen.';
	@override String get scanQRToSignIn => 'Scanne diesen QR-Code, um dich anzumelden';
	@override String get waitingForAuth => 'Warte auf die Authentifizierung …\nMelde dich über deinen Browser an.';
	@override String get useBrowser => 'Browser verwenden';
	@override String get or => 'oder';
	@override String connectToMediaBrowser({required Object product}) => 'Mit ${product} verbinden';
	@override String get quickConnect => 'Quick Connect';
	@override String get useQuickConnect => 'Quick Connect verwenden';
	@override String get quickConnectInstructions => 'Öffne Quick Connect in Jellyfin und gib diesen Code ein.';
	@override String get quickConnectWaiting => 'Warte auf Bestätigung…';
	@override String get quickConnectCancel => 'Abbrechen';
	@override String get quickConnectExpired => 'Quick Connect ist abgelaufen. Versuche es erneut.';
	@override String get localDataRecoveryRequired => 'Luroka konnte lokale Anmeldedaten und ausstehende Wiedergabedaten nicht sicher wiederherstellen. Bitte melde dich erneut an.';
	@override String get pinCheckRejected => 'Die Plex-PIN-Prüfung wurde abgelehnt';
}

// Path: common
class _Translations$common$de extends Translations$common$en {
	_Translations$common$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get cancel => 'Abbrechen';
	@override String get save => 'Speichern';
	@override String get close => 'Schließen';
	@override String get clear => 'Leeren';
	@override String get reset => 'Zurücksetzen';
	@override String get later => 'Später';
	@override String get submit => 'Senden';
	@override String get confirm => 'Bestätigen';
	@override String get retry => 'Erneut versuchen';
	@override String get logout => 'Abmelden';
	@override String get unknown => 'Unbekannt';
	@override String get refresh => 'Aktualisieren';
	@override String get yes => 'Ja';
	@override String get no => 'Nein';
	@override String get delete => 'Löschen';
	@override String get edit => 'Bearbeiten';
	@override String get shuffle => 'Zufallswiedergabe';
	@override String get addTo => 'Hinzufügen zu …';
	@override String get createNew => 'Neu erstellen';
	@override String get connect => 'Verbinden';
	@override String get disconnect => 'Trennen';
	@override String get play => 'Abspielen';
	@override String get pause => 'Pause';
	@override String get resume => 'Fortsetzen';
	@override String get error => 'Fehler';
	@override String get search => 'Suche';
	@override String get home => 'Start';
	@override String get back => 'Zurück';
	@override String get settings => 'Einstellungen';
	@override String get mute => 'Stumm';
	@override String get ok => 'OK';
	@override String get off => 'Aus';
	@override String get options => 'Optionen';
	@override String seasonNumber({required Object number}) => 'Staffel ${number}';
	@override String episodeNumberTitle({required Object number, required Object title}) => 'Folge ${number} – ${title}';
	@override String chapterNumber({required Object number}) => 'Kapitel ${number}';
	@override String get reconnect => 'Erneut verbinden';
	@override String get viewAll => 'Alle anzeigen';
	@override String get serversUnreachable => 'Server nicht erreichbar';
	@override String get loading => 'Wird geladen …';
	@override String get fullscreen => 'Vollbild';
	@override String get exitFullscreen => 'Vollbild verlassen';
	@override late final _Translations$common$ratingSource$de ratingSource = _Translations$common$ratingSource$de._(_root);
	@override String get notAvailable => 'N. v.';
	@override String get url => 'URL';
	@override String get letterKeys => 'ABC';
	@override late final _Translations$common$mediaKind$de mediaKind = _Translations$common$mediaKind$de._(_root);
	@override String get stay => 'Bleiben';
	@override String get exitApp => 'Beenden';
	@override String get exitAppBody => 'Möchtest du Luroka wirklich beenden?';
}

// Path: tvHints
class _Translations$tvHints$de extends Translations$tvHints$en {
	_Translations$tvHints$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get select => 'Auswählen';
	@override String get browse => 'Stöbern';
	@override String get back => 'Zurück';
}

// Path: screens
class _Translations$screens$de extends Translations$screens$en {
	_Translations$screens$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get licenses => 'Lizenzen';
	@override String get switchProfile => 'Profil wechseln';
	@override String get subtitleStyling => 'Untertitel-Stil';
	@override String get mpvConfig => 'mpv.conf';
	@override String get logs => 'Protokolle';
}

// Path: mediaExtras
class _Translations$mediaExtras$de extends Translations$mediaExtras$en {
	_Translations$mediaExtras$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get trailers => 'Trailer';
	@override String get featurettes => 'Featuretten';
	@override String get interviews => 'Interviews';
	@override String get deletedScenes => 'Gelöschte Szenen';
	@override String get behindTheScenes => 'Hinter den Kulissen';
	@override String get scenesAndClips => 'Szenen & Clips';
	@override String get other => 'Weitere Extras';
}

// Path: update
class _Translations$update$de extends Translations$update$en {
	_Translations$update$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get available => 'Update verfügbar';
	@override String versionAvailable({required Object version}) => 'Version ${version} ist verfügbar';
	@override String currentVersion({required Object version}) => 'Aktuell: ${version}';
	@override String get skipVersion => 'Diese Version überspringen';
	@override String get viewRelease => 'Versionshinweise anzeigen';
	@override String get latestVersion => 'Aktuellste Version installiert';
	@override String get checkFailed => 'Fehler bei der Updateprüfung';
}

// Path: supporter
class _Translations$supporter$de extends Translations$supporter$en {
	_Translations$supporter$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Luroka Supporter';
	@override String get intro => 'Ein einmaliger Kauf, der die Entwicklung von Luroka unterstützt und kosmetische Extras freischaltet:';
	@override String get presetThemes => 'Preset-Designs';
	@override String get presetThemesDescription => 'Ember, Glacier, Forest, Plum und Paper';
	@override String get customTheme => 'Benutzerdefiniertes Design';
	@override String get customThemeDescription => 'Wähle jede Farbe selbst';
	@override String get appIcons => 'App-Symbole';
	@override String get appIconsDescription => 'Wähle ein alternatives Luroka-Symbol';
	@override String buy({required Object price}) => 'Für ${price} kaufen';
	@override String get loadingPrice => 'Preis wird geladen…';
	@override String get restore => 'Käufe wiederherstellen';
	@override String get pending => 'Dein Kauf wartet auf Zahlung oder Freigabe. Die Extras werden freigeschaltet, sobald der Store ihn abschließt.';
	@override String get thankYouTitle => 'Danke, dass du Luroka unterstützt';
	@override String get thankYouBody => 'Deine Supporter-Extras sind freigeschaltet.';
	@override String get tileSubtitle => 'Designs und App-Symbole mit einem einmaligen Kauf freischalten';
	@override String get tileSubtitleThemesOnly => 'Designs mit einem einmaligen Kauf freischalten';
	@override String get tileUnlocked => 'Danke für deine Unterstützung';
	@override late final _Translations$supporter$errors$de errors = _Translations$supporter$errors$de._(_root);
}

// Path: settings
class _Translations$settings$de extends Translations$settings$en {
	_Translations$settings$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Einstellungen';
	@override String get supportDeveloper => 'Luroka unterstützen';
	@override String get supportDeveloperDescription => 'Per Liberapay spenden, um die Entwicklung zu fördern';
	@override String get language => 'Sprache';
	@override String get theme => 'Design';
	@override String get appearance => 'Darstellung';
	@override String get videoPlayback => 'Videowiedergabe';
	@override String get videoPlaybackDescription => 'Wiedergabeverhalten konfigurieren';
	@override String get advanced => 'Erweitert';
	@override String get episodePosterMode => 'Episodenposter-Stil';
	@override String get seriesPoster => 'Serienposter';
	@override String get seasonPoster => 'Staffelposter';
	@override String get episodeThumbnail => 'Vorschaubild';
	@override String get homeHeroSize => 'Karussell-Größe';
	@override String get homeHeroSizeSmall => 'Klein';
	@override String get homeHeroSizeMedium => 'Mittel';
	@override String get homeHeroSizeLarge => 'Groß';
	@override String get secondsLabel => 'Sekunden';
	@override String get minutesLabel => 'Minuten';
	@override String get secondsShort => 's';
	@override String get minutesShort => 'm';
	@override String durationHint({required Object min, required Object max}) => 'Dauer eingeben (${min}-${max})';
	@override String get systemTheme => 'System';
	@override String get lightTheme => 'Hell';
	@override String get darkTheme => 'Dunkel';
	@override String get oledTheme => 'OLED';
	@override String get libraryDensity => 'Darstellungsdichte der Mediathek';
	@override String get displayScale => 'Skalierung';
	@override String get compact => 'Kompakt';
	@override String get comfortable => 'Großzügig';
	@override String get gridSpacing => 'Rasterabstand';
	@override String get gridSpacingTight => 'Eng';
	@override String get gridSpacingNormal => 'Normal';
	@override String get gridSpacingSpacious => 'Großzügig';
	@override String get tvCornerSpotlightBackdrop => 'Backdrop in der Ecke';
	@override String get tvCornerSpotlightBackdropDescription => 'Zeigt das Spotlight-Artwork oben rechts statt bildschirmfüllend';
	@override String get viewMode => 'Ansichtsmodus';
	@override String get gridView => 'Raster';
	@override String get listView => 'Liste';
	@override String get continueWatchingAction => 'Aktion für Weiterschauen';
	@override String get continueWatchingPlay => 'Abspielen';
	@override String get continueWatchingDetails => 'Details öffnen';
	@override String get episodeAction => 'Episodenaktion';
	@override String get episodePlay => 'Abspielen';
	@override String get episodeDetails => 'Details öffnen';
	@override String get useGlobalHubs => 'Startlayout verwenden';
	@override String get useGlobalHubsDescription => 'Einheitliche Start-Hubs anzeigen. Sonst Bibliotheksempfehlungen verwenden.';
	@override String get showServerNameOnHubs => 'Servername bei Hubs anzeigen';
	@override String get showServerNameOnHubsDescription => 'Servernamen immer in Hub-Titeln anzeigen.';
	@override String get groupLibrariesByServer => 'Mediatheken nach Server gruppieren';
	@override String get groupLibrariesByServerDescription => 'Sidebar-Bibliotheken nach Medienserver gruppieren.';
	@override String get alwaysKeepSidebarOpen => 'Seitenleiste immer geöffnet halten';
	@override String get alwaysKeepSidebarOpenDescription => 'Seitenleiste bleibt erweitert und Inhaltsbereich passt sich an';
	@override String get showUnwatchedCount => 'Anzahl nicht gesehener Folgen anzeigen';
	@override String get showUnwatchedCountDescription => 'Zeigt die Anzahl nicht gesehener Episoden bei Serien und Staffeln an';
	@override String get showWatchedIndicators => 'Gesehen-Markierungen anzeigen';
	@override String get showWatchedIndicatorsDescription => 'Zeigt ein Häkchen bei gesehenen Filmen, Serien und Episoden an';
	@override String get showEpisodeNumberOnCards => 'Episodennummer auf Karten anzeigen';
	@override String get showEpisodeNumberOnCardsDescription => 'Staffel- und Episodennummer auf Episodenkarten anzeigen';
	@override String get showSeasonPostersOnTabs => 'Staffelposter auf Tabs anzeigen';
	@override String get showSeasonPostersOnTabsDescription => 'Poster jeder Staffel über ihrem Tab anzeigen';
	@override String get tvFullCardLayout => 'Vollflächige TV-Karten';
	@override String get tvFullCardLayoutDescription => 'TV-Karten nur mit Bild verwenden und Darstellernamen einblenden';
	@override String get focusGlow => 'Fokusleuchten';
	@override String get focusGlowDescription => 'Sanftes Leuchten um die fokussierte Karte anzeigen';
	@override String get visualEffects => 'Visuelle Effekte';
	@override String get visualEffectsAuto => 'Automatisch';
	@override String get visualEffectsAutoDescription => 'Effekte auf leistungsschwachen Geräten automatisch reduzieren';
	@override String get visualEffectsFull => 'Vollständig';
	@override String get visualEffectsReduced => 'Reduziert';
	@override String get visualEffectsReducedDescription => 'Weniger Animationen und Grafiken mit niedrigerer Auflösung';
	@override String get hideSpoilers => 'Spoiler für nicht gesehene Episoden verbergen';
	@override String get hideSpoilersDescription => 'Vorschaubilder und Beschreibungen ungesehener Episoden verwischen';
	@override String get playerBackend => 'Wiedergabe-Engine';
	@override String get playerBackendDescription => 'mpv spielt mehr Formate ab und bietet mehr Funktionen — empfohlen. ExoPlayer hilft, wenn die Wiedergabe auf diesem Gerät fehlschlägt oder ruckelt.';
	@override String get exoPlayer => 'ExoPlayer';
	@override String get mpv => 'mpv';
	@override String get hardwareDecoding => 'Hardwaredekodierung';
	@override String get hardwareDecodingDescription => 'Hardwarebeschleunigung verwenden, sofern verfügbar';
	@override String get playbackBuffer => 'Wiedergabepuffer';
	@override String get playbackBufferAuto => 'Automatisch (empfohlen)';
	@override String get playbackBufferLarge => 'Groß';
	@override String get playbackBufferExtraLarge => 'Extra groß';
	@override String get playbackBufferDescription => 'Puffert mehr gegen instabile Verbindungen. Zusätzlich durch die Puffergröße begrenzt.';
	@override String get defaultQualityTitle => 'Standardqualität';
	@override String get streamingQualityOriginalHint => 'Spielt die Datei genau wie gespeichert ab — beste Qualität, benötigt die meiste Bandbreite';
	@override String get cellularQualityTitle => 'Standardqualität im Mobilfunknetz';
	@override String get cellularQualitySameAsDefault => 'Wie Standardqualität';
	@override String get directPlayCoveredQuality => 'Kleinere Videos in Originalqualität abspielen';
	@override String get directPlayCoveredQualityDescription => 'Videos, die bereits innerhalb des Qualitätslimits liegen, per Direct Play abspielen, statt sie zu transkodieren';
	@override String get videoCodecs => 'Video-Codecs';
	@override String get videoCodecsDescription => 'Nicht ausgewählte Codecs transkodiert der Server';
	@override String get videoCodecsAlwaysAccepted => 'Immer akzeptiert';
	@override String get musicQualityTitle => 'Musikqualität';
	@override String get subtitleStyling => 'Untertitel-Stil';
	@override String get subtitleStylingDescription => 'Aussehen von Untertiteln anpassen';
	@override String get smallSkipDuration => 'Kleines Sprungintervall';
	@override String get largeSkipDuration => 'Großes Sprungintervall';
	@override String get rewindOnResume => 'Zurückspulen bei Fortsetzung';
	@override String secondsUnit({required Object seconds}) => '${seconds} Sekunden';
	@override String get defaultSleepTimer => 'Standard-Schlaftimer';
	@override String minutesUnit({required Object minutes}) => '${minutes} Minuten';
	@override String get rememberTrackSelections => 'Spurauswahl pro Serie/Film merken';
	@override String get rememberTrackSelectionsDescription => 'Audio- und Untertitelauswahl je Titel merken';
	@override String get rememberTrackSelectionsBackendRule => 'Plex speichert jede Auswahl pro Datei auf dem Server; Jellyfin aktiviert außerdem die Kontooption „Auswahl merken“; Emby wird nicht unterstützt';
	@override String get followServerTrackSelections => 'Serverseitige Spurauswahl pro Episode verwenden';
	@override String get followServerTrackSelectionsDescription => 'Beim Episodenwechsel die auf dem Server ausgewählten Audio- und Untertitelspuren übernehmen, statt die aktuelle Auswahl zu übertragen';
	@override String get resumeMusicOnLaunch => 'Musiksitzung merken';
	@override String get resumeMusicOnLaunchDescription => 'Beim App-Start den letzten Titel pausiert an der letzten Stelle wieder öffnen';
	@override String get showChapterMarkersOnTimeline => 'Kapitelmarkierungen auf der Suchleiste anzeigen';
	@override String get showChapterMarkersOnTimelineDescription => 'Die Suchleiste an Kapitelgrenzen unterteilen';
	@override String get specialsOrdering => 'Specials in Episodenreihenfolge';
	@override String get specialsOrderingDescription => 'Wo Specials in der Wiedergabereihenfolge einer Serie abgespielt werden';
	@override String get specialsOrderingServer => 'Serverreihenfolge folgen';
	@override String get specialsOrderingAirDate => 'Nach Ausstrahlungsdatum einfügen';
	@override String get specialsOrderingLast => 'Nach den regulären Staffeln';
	@override String get clickVideoTogglesPlayback => 'Video zum Abspielen oder Pausieren anklicken';
	@override String get clickVideoTogglesPlaybackDescription => 'Video zum Abspielen oder Pausieren anklicken, statt die Steuerung anzuzeigen.';
	@override String get videoPlayerControls => 'Videoplayer-Steuerung';
	@override String get keyboardShortcuts => 'Tastenkürzel';
	@override String get keyboardShortcutsDescription => 'Tastenkürzel anpassen';
	@override String get videoPlayerNavigation => 'Videoplayer-Navigation';
	@override String get videoPlayerNavigationDescription => 'Mit den Pfeiltasten durch die Videoplayer-Steuerung navigieren';
	@override String get watchTogetherRelay => 'Relay für gemeinsames Schauen';
	@override String get watchTogetherRelayDescription => 'Öffentliche Open Watch Party Relays, sofern du kein eigenes setzt';
	@override String get watchTogetherRelayHint => 'https://mein-relay.beispiel.de';
	@override String get watchTogetherRelayInvalid => 'Gib eine gültige HTTP- oder HTTPS-Basis-URL für das Relay ein.';
	@override String get crashReporting => 'Absturzberichte';
	@override String get crashReportingDescription => 'Absturzberichte senden, um die App zu verbessern';
	@override String get debugLogging => 'Debug-Protokollierung';
	@override String get debugLoggingDescription => 'Detaillierte Protokolle zur Fehleranalyse aktivieren';
	@override String get viewLogs => 'Protokolle anzeigen';
	@override String get viewLogsDescription => 'App-Protokolle anzeigen';
	@override String get clearImageCache => 'Bildercache leeren';
	@override String get clearImageCacheDescription => 'Zwischengespeicherte Artworks und Vorschaubilder löschen. Bilder können langsamer laden, bis sie erneut heruntergeladen werden.';
	@override String get clearImageCacheSuccess => 'Bildercache erfolgreich geleert';
	@override String get resetSettings => 'Einstellungen zurücksetzen';
	@override String get resetSettingsDescription => 'Standardeinstellungen wiederherstellen. Dies kann nicht rückgängig gemacht werden.';
	@override String get resetSettingsSuccess => 'Einstellungen erfolgreich zurückgesetzt';
	@override String get backup => 'Sicherung';
	@override String get exportSettings => 'Einstellungen exportieren';
	@override String get exportSettingsDescription => 'Einstellungen in einer Datei speichern';
	@override String get exportSettingsSuccess => 'Einstellungen exportiert';
	@override String get importSettings => 'Einstellungen importieren';
	@override String get importSettingsDescription => 'Einstellungen aus einer Datei wiederherstellen';
	@override String get importSettingsConfirm => 'Dies ersetzt deine aktuellen Einstellungen. Fortfahren?';
	@override String get importSettingsSuccess => 'Einstellungen importiert';
	@override String get importSettingsInvalidFile => 'Diese Datei ist kein gültiger Luroka-Einstellungsexport';
	@override String get importSettingsNoUser => 'Vor dem Import bitte anmelden';
	@override String get shortcutsReset => 'Tastenkürzel auf Standard zurückgesetzt';
	@override String get resetShortcutsConfirm => 'Deine eigenen Shortcuts werden durch die Standard-Shortcuts ersetzt. Fortfahren?';
	@override String get about => 'Über';
	@override String get aboutDescription => 'App-Informationen und Lizenzen';
	@override String get updates => 'Updates';
	@override String get updateAvailable => 'Update verfügbar';
	@override String get checkForUpdates => 'Nach Updates suchen';
	@override String get autoCheckUpdatesOnStartup => 'Beim Start automatisch nach Updates suchen';
	@override String get autoCheckUpdatesOnStartupDescription => 'Beim Start benachrichtigen, wenn ein Update verfügbar ist';
	@override String get validationErrorEnterNumber => 'Bitte eine gültige Zahl eingeben';
	@override String validationErrorDuration({required Object min, required Object max, required Object unit}) => 'Dauer muss zwischen ${min} und ${max} ${unit} liegen';
	@override String shortcutAlreadyAssigned({required Object action}) => 'Tastenkürzel bereits zugewiesen an ${action}';
	@override String shortcutUpdated({required Object action}) => 'Tastenkürzel aktualisiert für ${action}';
	@override String get saveFailed => 'Änderungen konnten nicht gespeichert werden. Versuche es erneut.';
	@override String get autoPlayAndSkip => 'Autoplay & Überspringen';
	@override String get autoPlayNextEpisode => 'Nächste Episode automatisch abspielen';
	@override String get autoPlayNextEpisodeDescription => 'Die nächste Episode automatisch starten, wenn die aktuelle endet';
	@override String get shuffleStartsFromBeginning => 'Zufallswiedergabe beginnt am Anfang';
	@override String get shuffleStartsFromBeginningDescription => 'Bei Zufallswiedergabe jede Episode von Anfang an abspielen, statt sie fortzusetzen';
	@override String get playNextCountdown => 'Countdown bis zur nächsten Episode';
	@override String get playNextCountdownImmediate => 'Sofort abspielen';
	@override String get skipIntroMode => 'Intro überspringen';
	@override String get skipIntroModeOffDescription => 'Intros normal abspielen, ohne Schaltfläche zum Überspringen';
	@override String get skipIntroModeButtonDescription => 'Schaltfläche zum Überspringen anzeigen, wenn ein Intro beginnt';
	@override String get skipIntroModeAutoDescription => 'Intros nach der untenstehenden Verzögerung automatisch überspringen';
	@override String get skipCreditsMode => 'Abspann überspringen';
	@override String get skipCreditsModeOffDescription => 'Abspann normal abspielen, ohne Schaltfläche zum Überspringen';
	@override String get skipCreditsModeButtonDescription => 'Schaltfläche zum Überspringen anzeigen, wenn der Abspann beginnt';
	@override String get skipCreditsModeAutoDescription => 'Abspann automatisch überspringen und die nächste Episode abspielen';
	@override String get skipMarkerModeOff => 'Aus';
	@override String get skipMarkerModeButton => 'Schaltfläche anzeigen';
	@override String get skipMarkerModeAuto => 'Automatisch';
	@override String get forceSkipMarkerFallback => 'Ersatzmarkierungen erzwingen';
	@override String get forceSkipMarkerFallbackDescription => 'Kapitel-Titelmuster auch dann verwenden, wenn Plex über Markierungen verfügt';
	@override String get autoSkipDelay => 'Verzögerung für automatisches Überspringen';
	@override String autoSkipDelayDescription({required Object seconds}) => '${seconds} Sekunden vor dem automatischen Überspringen warten';
	@override String get introPattern => 'Intro-Markierungsmuster';
	@override String get introPatternDescription => 'Regulärer Ausdruck zum Erkennen von Intro-Markierungen in Kapiteltiteln';
	@override String get creditsPattern => 'Abspann-Markierungsmuster';
	@override String get creditsPatternDescription => 'Regulärer Ausdruck zum Erkennen von Abspann-Markierungen in Kapiteltiteln';
	@override String get invalidRegex => 'Ungültiger regulärer Ausdruck';
	@override String get regex => 'Regulärer Ausdruck';
	@override String get downloads => 'Downloads';
	@override String get downloadLocationDescription => 'Speicherort für heruntergeladene Inhalte wählen';
	@override String get downloadLocationDefault => 'Standard (App-Speicher)';
	@override String get downloadLocationCustom => 'Benutzerdefinierter Speicherort';
	@override String get selectFolder => 'Ordner auswählen';
	@override String get resetToDefault => 'Auf Standard zurücksetzen';
	@override String currentPath({required Object path}) => 'Aktuell: ${path}';
	@override String get downloadLocationChanged => 'Download-Speicherort geändert';
	@override String get downloadLocationReset => 'Download-Speicherort auf Standard zurückgesetzt';
	@override String get downloadLocationInvalid => 'Ausgewählter Ordner ist nicht beschreibbar';
	@override String get downloadLocationPickerUnavailable => 'Die Ordnerauswahl ist auf diesem Gerät nicht verfügbar';
	@override String get downloadOnWifiOnly => 'Nur über WLAN herunterladen';
	@override String get downloadOnWifiOnlyDescription => 'Downloads über mobile Daten verhindern';
	@override String get autoRemoveWatchedDownloads => 'Gesehene Downloads automatisch entfernen';
	@override String get autoRemoveWatchedDownloadsDescription => 'Angesehene Downloads automatisch löschen';
	@override String get cellularDownloadBlocked => 'Downloads über das Mobilfunknetz sind blockiert. Nutze WLAN oder ändere die Einstellung.';
	@override String get maxVolume => 'Maximale Lautstärke';
	@override String get maxVolumeDescription => 'Lautstärkeanhebung über 100 % für leise Medien erlauben';
	@override String maxVolumePercent({required Object percent}) => '${percent} %';
	@override String get discordRichPresence => 'Discord-Aktivitätsstatus';
	@override String get discordRichPresenceDescription => 'Auf Discord anzeigen, was du gerade schaust';
	@override String get services => 'Dienste';
	@override String get servicesDescription => 'Trakt, MyAnimeList, Seerr und mehr verbinden';
	@override String get manageLibrariesDescription => 'Mediatheken neu anordnen und ausblenden';
	@override String get companionRemoteServer => 'Companion-Fernbedienungsserver';
	@override String get companionRemoteServerDescription => 'Mobilgeräten in deinem Netzwerk erlauben, diese App zu steuern';
	@override String get companionRemoteServerStartFailed => 'Companion-Fernbedienungsserver konnte nicht gestartet werden';
	@override String get companionRemoteServerStopFailed => 'Companion-Fernbedienungsserver konnte nicht gestoppt werden';
	@override String get autoPip => 'Automatisches Bild-in-Bild';
	@override String get autoPipDescription => 'Beim Verlassen der App während der Wiedergabe automatisch Bild-in-Bild starten';
	@override String get matchContentFrameRate => 'Inhalts-Bildrate anpassen';
	@override String get matchContentFrameRateDescription => 'Bildwiederholrate des Displays an Videoinhalt anpassen';
	@override String get matchContentResolution => 'An Auflösung des Inhalts anpassen';
	@override String get matchContentResolutionDescription => 'Wechselt die Anzeige auf die native Auflösung des Videos, damit dein Fernseher das Hochskalieren übernimmt. Menüs und Untertitel werden während der Wiedergabe ebenfalls hochskaliert';
	@override String get matchRefreshRate => 'Bildwiederholrate anpassen';
	@override String get matchRefreshRateDescription => 'Bildwiederholrate im Vollbild anpassen';
	@override String get matchDynamicRange => 'Dynamikumfang anpassen';
	@override String get matchDynamicRangeDescription => 'HDR für HDR-Inhalte einschalten, danach zurück zu SDR';
	@override String get displaySwitchDelay => 'Verzögerung beim Displaywechsel';
	@override String get tunneledPlayback => 'Tunnelwiedergabe';
	@override String get tunneledPlaybackDescription => 'Video-Tunneling verwenden. Deaktivieren, wenn HDR-Wiedergabe schwarzes Video zeigt oder Bewegungen ruckeln.';
	@override String get audioPassthrough => 'Audio-Durchleitung';
	@override String get audioPassthroughDescription => 'Dolby/DTS-Audio ohne Neukodierung an deinen Receiver oder Fernseher senden und Surround-Sound erhalten. Deaktivieren, wenn kein Ton zu hören ist.';
	@override String get audioPassthroughDescriptionApple => 'Apples nativen Dolby-Decoder für Dolby Digital Plus einschließlich Atmos verwenden. DTS und TrueHD werden weiterhin als Mehrkanal-PCM wiedergegeben. Deaktivieren, wenn kein Ton zu hören ist.';
	@override String get audioPassthroughDescriptionAppleSpatial => 'Nutzt den nativen Dolby-Decoder von Apple für Dolby Digital Plus inklusive Atmos. Auf iOS, iPadOS und tvOS 26 oder neuer spielen TrueHD Atmos und DTS:X als Spatial Audio. Andere DTS- und TrueHD-Titel spielen als Multikanal-PCM. Ausschalten, wenn du keinen Ton hast.';
	@override String get audioPassthroughOverriddenByNormalization => 'Aus, solange die Lautstärkenormalisierung aktiv ist';
	@override String get audioChannelLimit => 'Audiokanäle';
	@override String get audioChannelLimitDescription => 'Mische decodierten Ton für Lautsprecher, Kopfhörer oder HDMI-Setups herunter, die nicht jeden Kanal wiedergeben können';
	@override String get audioChannelLimitOriginal => 'Original';
	@override String get audioChannelLimitOriginalDescription => 'Alle Kanäle des Titels wiedergeben';
	@override String get audioChannelLimitSurround51 => 'Bis 5.1';
	@override String get audioChannelLimitSurround51Description => 'Mixe 7.1 auf 5.1 herunter für TVs und Receiver, die nur 5.1-PCM annehmen. Passthrough ist nicht betroffen.';
	@override String get audioChannelLimitStereo => 'Stereo';
	@override String get audioChannelLimitStereoDescription => 'Auf zwei Kanäle heruntermischen für Stereo-Lautsprecher oder Kopfhörer. Schaltet Passthrough aus.';
	@override String get downmixCenterBoost => 'Verstärkung des Center-Kanals';
	@override String downmixCenterBoostValue({required Object db}) => '${db} dB';
	@override String get downmixCenterBoostLabel => 'Verstärkung (dB)';
	@override String get downmixCenterBoostShort => 'dB';
	@override String get audioDownmixNormalize => 'Lautstärke beim Downmix normalisieren';
	@override String get audioDownmixNormalizeDescription => 'Senkt den Mix ab, um Übersteuerung zu vermeiden. Deaktivieren, um die Originallautstärke zu behalten (laute Szenen können verzerren).';
	@override String get dvConversionMode => 'Dolby-Vision-Konvertierung';
	@override String get dvConversionModeDescription => 'Wähle, wie Dateien mit Dolby-Vision-Profil 7 behandelt werden.';
	@override String get dvConversionAuto => 'Automatisch';
	@override String get dvConversionNative => 'Nativ / deaktiviert';
	@override String get dvConversionDv81 => 'P7 → P8.1';
	@override String get dvConversionHevcStrip => 'P7 → HEVC';
	@override String get dvConversionAutoDescription => 'Gerätefähigkeiten erkennen und normales Fallback-Verhalten verwenden';
	@override String get dvConversionNativeDescription => 'Natives DV7 erzwingen und einen erneuten DV-Konvertierungsversuch unterdrücken';
	@override String get dvConversionDv81Description => 'Inline-RPU-Konvertierung in Dolby-Vision-Profil 8.1 erzwingen';
	@override String get dvConversionHevcStripDescription => 'Dolby-Vision-RPU/EL-Schichten entfernen und reines HEVC ausgeben';
	@override String get disableDolbyVision => 'Dolby Vision deaktivieren';
	@override String get disableDolbyVisionDescription => 'Statt Dolby Vision die HDR10- oder HLG-Ebene der Datei abspielen, sofern vorhanden';
	@override String get hdrSdrConversion => 'HDR-zu-SDR-Konvertierung';
	@override String get hdrSdrConversionDescription => 'Wähle, was HDR-Videos umwandelt, wenn das Display kein HDR darstellen kann.';
	@override String get hdrSdrConversionAuto => 'Automatisch';
	@override String get hdrSdrConversionAutoDescription => 'Gerät ab Android 9, Player bei älteren Versionen';
	@override String get hdrSdrConversionDevice => 'Gerät';
	@override String get hdrSdrConversionDeviceDescription => 'Die Videohardware des Geräts wandelt um. Am schnellsten, die Farben hängen aber vom Gerät ab';
	@override String get hdrSdrConversionPlayer => 'Player';
	@override String get hdrSdrConversionPlayerDescription => 'Der Player wandelt um. Einheitliche Farben, aber 4K kann auf schwachen TV-Boxen ruckeln';
	@override String get deinterlace => 'Deinterlacing';
	@override String get deinterlaceDescription => 'Kammartefakte aus interlaced Videos entfernen (nur mpv-Player)';
	@override String get deinterlaceOff => 'Aus';
	@override String get deinterlaceOffDescription => 'Interlaced-Video so zeigen, wie es decodiert wurde';
	@override String get deinterlaceVideo => 'Video';
	@override String get deinterlaceVideoDescription => 'Verwandle jedes Halbbild in ein Vollbild. Für für TV produziertes Video wie Sport, Nachrichten und Konzerte';
	@override String get deinterlaceFilm => 'Film';
	@override String get deinterlaceFilmDescription => 'Stellt die Originalframes von auf 29,97 fps teleziniertem Film und Animation wieder her, üblich auf NTSC-DVDs. Für TV produziertes Video ruckelt. Live TV nutzt Video';
	@override String get requireProfileSelectionOnOpen => 'Profil beim Öffnen abfragen';
	@override String get requireProfileSelectionOnOpenDescription => 'Profilauswahl bei jedem Öffnen der App anzeigen';
	@override String get forceTvMode => 'TV-Modus erzwingen';
	@override String get forceTvModeKeepTitle => 'TV-Layout behalten?';
	@override String forceTvModeKeepBody({required Object seconds}) => 'Das TV-Layout ist für Fernbedienungen ausgelegt. Zurück zum normalen Layout in ${seconds} s.';
	@override String get forceTvModeKeepConfirm => 'TV-Layout behalten';
	@override String get forceTvModeReverted => 'TV-Layout zurückgesetzt';
	@override String get forceTvModeDescription => 'TV-Layout erzwingen. Für Geräte ohne automatische Erkennung. Neustart erforderlich.';
	@override String get startInFullscreen => 'Im Vollbildmodus starten';
	@override String get startInFullscreenDescription => 'Luroka beim Start im Vollbildmodus öffnen';
	@override String get exitFullscreenOnPlayerClose => 'Vollbild beim Schließen des Players beenden';
	@override String get exitFullscreenOnPlayerCloseDescription => 'Vollbildmodus automatisch beenden, wenn der Videoplayer geschlossen wird';
	@override String get autoHidePerformanceOverlay => 'Leistungsoverlay automatisch ausblenden';
	@override String get autoHidePerformanceOverlayDescription => 'Leistungsoverlay mit den Wiedergabesteuerungen ein-/ausblenden';
	@override String get showNavBarLabels => 'Navigationsleisten-Beschriftungen anzeigen';
	@override String get showNavBarLabelsDescription => 'Textbeschriftungen unter den Symbolen der Navigationsleiste anzeigen';
	@override String get startupSection => 'Startbereich';
	@override String get showExploreTab => 'Tab „Entdecken“ anzeigen';
	@override String get showExploreTabDescription => 'Zeigt den Tab „Entdecken“ mit Inhalten aus Plex Discover und verbundenen Trackern an';
	@override String get liveTvDefaultFavorites => 'Standardmäßig Favoritenkanäle';
	@override String get liveTvDefaultFavoritesDescription => 'Beim Öffnen von Live TV nur Favoritenkanäle anzeigen';
	@override String get general => 'Allgemein';
	@override String get generalDescription => 'Sprache, Start und Fensterverhalten';
	@override String get languageAndRegion => 'Sprache & Region';
	@override String get startup => 'Start';
	@override String get display => 'Anzeige';
	@override String get libraryAndCards => 'Mediathek & Karten';
	@override String get homeScreen => 'Startseite';
	@override String get navigation => 'Navigation';
	@override String get window => 'Fenster';
	@override String get liveTv => 'Live-TV';
	@override String get player => 'Wiedergabe';
	@override String get videoAndDisplay => 'Video & Anzeige';
	@override String get audio => 'Audio';
	@override String get quality => 'Qualität';
	@override String get subtitles => 'Untertitel';
	@override String get seekAndTiming => 'Spulen & Timing';
	@override String get behavior => 'Verhalten';
	@override String get gestures => 'Gesten';
	@override String get gestureBrightnessSwipe => 'Wischen für Helligkeit';
	@override String get gestureBrightnessSwipeDescription => 'Wische am linken Rand nach oben oder unten, um die Helligkeit anzupassen';
	@override String get gestureVolumeSwipe => 'Wischen für Lautstärke';
	@override String get gestureVolumeSwipeDescription => 'Wische am rechten Rand nach oben oder unten, um die Lautstärke anzupassen';
	@override String get gesturePinchToZoom => 'Zum Zoomen kneifen';
	@override String get gesturePinchToZoomDescription => 'Kneife auf dem Video, um hinein- oder herauszuzoomen';
	@override String get rememberBrightnessLevel => 'Helligkeitsstufe merken';
	@override String get rememberBrightnessLevelDescription => 'Wiedergabe mit der zuletzt per Wischgeste eingestellten Helligkeit starten';
	@override String get controls => 'Steuerung';
	@override String get rememberPlayerChanges => 'Playeränderungen merken';
	@override String get rememberPlayerChangesDescription => 'Wo eine während der Wiedergabe vorgenommene Änderung gespeichert und erneut angewendet wird';
	@override String get scopePlaybackSpeed => 'Wiedergabegeschwindigkeit';
	@override String get scopeShaderPreset => 'Shader-Voreinstellung';
	@override String get scopeAspectRatio => 'Seitenverhältnis';
	@override String get scopeSyncOffsets => 'Audio- und Untertitelsynchronisierung';
	@override String get playerScopeOff => 'Nicht speichern';
	@override String get playerScopeGlobal => 'Überall';
	@override String get playerScopeLibrary => 'Pro Bibliothek';
	@override String get playerScopeTitle => 'Pro Serie oder Film';
	@override String get exportDialogTitle => 'Luroka-Einstellungen exportieren';
	@override String get velvetHourTheme => 'Velvet Hour';
}

// Path: themeEditor
class _Translations$themeEditor$de extends Translations$themeEditor$en {
	_Translations$themeEditor$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get builtIn => 'Integriert';
	@override String get presets => 'Presets';
	@override String get custom => 'Benutzerdefiniert';
	@override String get customEmpty => 'Noch nicht erstellt';
	@override String get editCustom => 'Benutzerdefiniertes Design bearbeiten';
	@override String get editCustomDescription => 'Wähle jede Farbe selbst';
	@override String get locked => 'Mit Supporter freischalten';
	@override String get savedLocked => 'Gespeichert — wird mit Supporter freigeschaltet';
	@override String get title => 'Benutzerdefiniertes Design';
	@override String get startFrom => 'Starten von';
	@override String get startFromDescription => 'Alle Farben aus einem anderen Design kopieren';
	@override String get colors => 'Farben';
	@override String get preview => 'Vorschau';
	@override late final _Translations$themeEditor$slots$de slots = _Translations$themeEditor$slots$de._(_root);
	@override String get opacity => 'Deckkraft';
	@override String get hexHint => '#RRGGBB oder #AARRGGBB';
	@override String get fromOtherThemes => 'Aus anderen Designs';
	@override String swatchLabel({required Object theme, required Object color}) => '${theme} ${color}';
	@override late final _Translations$themeEditor$contrast$de contrast = _Translations$themeEditor$contrast$de._(_root);
	@override String lowContrast({required Object pair, required Object ratio, required Object minimum}) => '${pair}: ${ratio}:1, unter den empfohlenen ${minimum}:1';
	@override String get discardTitle => 'Änderungen verwerfen?';
	@override String get discardMessage => 'Deine nicht gespeicherten Farbänderungen gehen verloren.';
	@override String get discard => 'Verwerfen';
	@override String previewCardTitle({required Object number}) => 'Folge ${number}';
	@override String previewCardSubtitle({required Object minutes}) => '${minutes} Min. verbleiben';
	@override String get previewSwitch => 'Autoplay';
	@override String get previewMutedText => 'Sekundärtext sieht so aus';
}

// Path: seriesBrowser
class _Translations$seriesBrowser$de extends Translations$seriesBrowser$en {
	_Translations$seriesBrowser$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get oneEpisode => '1 Folge';
	@override String watchedCount({required Object count}) => '${count} gesehen';
	@override String episodeCount({required Object count}) => '${count} Folgen';
	@override String episodesFor({required Object season}) => '${season} · Folgen';
	@override String get enterHint => 'Auswahl: Staffel öffnen · ↓: Folgen';
}

// Path: titlePage
class _Translations$titlePage$de extends Translations$titlePage$en {
	_Translations$titlePage$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get genre => 'Genre';
	@override String remaining({required Object time}) => '${time} verbleiben';
	@override String continueEpisode({required Object season, required Object episode}) => 'S${season} E${episode} fortsetzen';
	@override String get watchlist => 'Merkliste';
	@override String get more => 'Mehr';
}

// Path: tvMenus
class _Translations$tvMenus$de extends Translations$tvMenus$en {
	_Translations$tvMenus$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get appearanceDescription => 'Design, Bildränder und Poster';
}

// Path: lurokaPlayer
class _Translations$lurokaPlayer$de extends Translations$lurokaPlayer$en {
	_Translations$lurokaPlayer$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Player-Einstellungen';
	@override String get watch => 'Schauen';
	@override String get watchDescription => 'Lege das Tempo fest, klinge aus und entscheide, was als Nächstes läuft.';
	@override String get picture => 'Bildeinstellungen';
	@override String get pictureDescription => 'Zoom, HDR und Videobearbeitung';
	@override String get sound => 'Audio & Untertitel';
	@override String get audioSettings => 'Audioeinstellungen';
	@override String get soundDescription => 'Timing, Lautstärke und Tonausgabe';
	@override String get chooseTracks => 'Sprach- und Untertitelspuren wählen';
	@override String get tools => 'Erweitert';
	@override String get toolsDescription => 'Wiedergabeinformationen und Diagnose';
	@override String get preferences => 'Wiedergabepräferenzen';
	@override String get preferencesDescription => 'Dein Kino, deine Standards. Starte mit Ton und Untertiteln, dann justiere Streaming und Bildschirm fein.';
	@override String get streamPreferences => 'Streaming-Qualität';
	@override String get displayPreferences => 'Display';
	@override String get enginePreferences => 'Erweiterte Player-Optionen';
	@override String get seekPreferences => 'Spulen';
	@override String get watchPreferences => 'Autoplay & Überspringen';
	@override String get rememberPreferences => 'Präferenzen merken';
}

// Path: lurokaSettings
class _Translations$lurokaSettings$de extends Translations$lurokaSettings$en {
	_Translations$lurokaSettings$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get quickSetup => 'Schnelleinrichtung';
	@override String get quickSetupDescription => 'Starte mit dem Wichtigsten: flüssigeres TV-Browsen, eine bequeme Bildschirmanpassung, dein Startseite-Layout und Wiedergabepräferenzen.';
	@override String get experience => 'Deine Erfahrung';
	@override String get experienceDescription => 'Mach Luroka zu deinem Ding: Erscheinungsbild, Sprachen, Wiedergabe, Bibliotheken und Sehzeit.';
	@override String get remoteHint => '↑ ↓ Kategorien durchblättern  ·  → / Auswahl Optionen öffnen  ·  ← Zurück zu den Kategorien';
}

// Path: playerChrome
class _Translations$playerChrome$de extends Translations$playerChrome$en {
	_Translations$playerChrome$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get browse => 'Kapitel & Warteschlange';
	@override String get backToPlayback => 'Zurück zur Wiedergabe';
	@override String get nowPlaying => 'JETZT LÄUFT';
	@override String get options => 'PLAYER-OPTIONEN';
}

// Path: tvLayout
class _Translations$tvLayout$de extends Translations$tvLayout$en {
	_Translations$tvLayout$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get screenMargins => 'TV-Bildränder';
	@override String get screenMarginsDescription => 'App-Ränder verkleinern, wenn dein TV Teile des Bilds abschneidet';
	@override String get screenMarginsDefault => '0 % (Standard)';
}

// Path: studios
class _Translations$studios$de extends Translations$studios$en {
	_Translations$studios$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get checkingCopies => 'Andere Bibliotheken werden geprüft… Du kannst jederzeit ein bekanntes Exemplar auswählen.';
	@override String get incompleteCopies => 'Einige Bibliotheken konnten nicht geprüft werden. Wähle eine bekannte Kopie oder brich ab und versuche es erneut.';
	@override String get partialFavorites => 'Einige Favoriten konnten nicht geladen werden. Wähle „Aktualisieren“, um es erneut zu versuchen.';
	@override String get copyLookupFailedTitle => 'Es konnten nicht alle Kopien überprüft werden';
	@override String get copyLookupFailedMessage => 'Einige Bibliotheken haben nicht geantwortet. Du kannst eine bereits gefundene Kopie öffnen oder abbrechen und es erneut versuchen.';
	@override String get openKnownCopies => 'Bekannte Exemplare anzeigen';
	@override String get browseAll => 'Alle durchstöbern';
	@override String titleCount({required Object count}) => '${count} Titel';
	@override String get topRated => 'Bestbewertet';
	@override String get mostWatched => 'Am meisten geschaut in deiner Bibliothek';
	@override String get collection => 'STUDIO-KOLLEKTION';
	@override String loadedTitles({required Object count}) => '${count} Titel geladen';
	@override String get sort => 'Titel sortieren';
	@override String get sortTitleAscending => 'Titel A–Z';
	@override String get sortTitleDescending => 'Titel Z–A';
	@override String get sortNewest => 'Neueste Veröffentlichung';
	@override String get sortOldest => 'Älteste Veröffentlichung';
	@override String get sortAdded => 'Kürzlich hinzugefügt';
	@override String get sortEpisodeAdded => 'Kürzlich hinzugefügte Folge';
	@override String get sortRating => 'Bestbewertet';
	@override String get title => 'Nach Studio durchstöbern';
	@override String get all => 'Alle';
	@override String get movies => 'Filme';
	@override String get shows => 'Serien';
	@override String get loadMore => 'Weitere Titel laden';
	@override String get empty => 'Keine passenden Titel in deinen derzeit sichtbaren Bibliotheken.';
	@override String get retry => 'Weitere Titel konnten nicht geladen werden — auswählen, um es erneut zu versuchen';
	@override String get description => 'Entdecke Filme und Serien dieses Studios in deinen Bibliotheken.';
}

// Path: dashboard
class _Translations$dashboard$de extends Translations$dashboard$en {
	_Translations$dashboard$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get previousFeature => 'Vorheriger Featured-Titel';
	@override String get nextFeature => 'Nächster Featured-Titel';
	@override String get cinemaHome => 'HOME';
	@override String get episodeFallback => 'TV-Folge';
	@override String timeLeft({required Object minutes}) => '${minutes} Min. verbleiben';
	@override String timeLeftHours({required Object hours, required Object minutes}) => '${hours} Std. ${minutes} Min. verbleiben';
	@override String get spoilerHidden => 'Episodendetails durch deine Spoiler-Einstellung ausgeblendet.';
	@override String get synopsisUnavailable => 'Öffne Details, um mehr zu diesem Titel zu erfahren.';
	@override String get yourSpace => 'DEIN BEREICH';
	@override String get title => 'Dein Kino.';
	@override String get subtitle => 'Setze eine Geschichte fort oder entdecke deine nächste.';
	@override String get featured => 'LUROKA EMPFIEHLT';
	@override String get jumpBackIn => 'Weiter ansehen';
	@override String episodeLabel({required Object season, required Object episode}) => 'S${season} · E${episode}';
	@override String get anotherPick => 'Ein anderer Tipp';
	@override String get exploreSeries => 'Serie entdecken';
	@override String get showFeatured => 'Fokus-Titeldetails';
	@override String get showFeaturedDescription => 'Zeige Artwork, Inhaltsangabe und Episodeninformationen für die hervorgehobene Karte.';
}

// Path: lurokaCatalog
class _Translations$lurokaCatalog$de extends Translations$lurokaCatalog$en {
	_Translations$lurokaCatalog$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get aboutPerson => 'IM SPOTLIGHT';
	@override String get biographyUnavailable => 'Eine Biografie ist auf diesem Server nicht verfügbar.';
	@override String get filmography => 'Filme & Serien in deinen Bibliotheken';
	@override String get recommended => 'Empfohlen';
	@override String get browse => 'Alle Titel';
	@override String get collections => 'Sammlungen';
	@override String get browseHint => 'Erkunde deinen Katalog. Gestalte die Auswahl mit Filtern und Sortierung.';
	@override String get recommendedHint => 'Finde deine nächste Geschichte';
	@override String get details => 'Hinter der Geschichte';
}

// Path: referenceDetails
class _Translations$referenceDetails$de extends Translations$referenceDetails$en {
	_Translations$referenceDetails$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get oneEpisodeLeft => '1 Folge verbleibt';
	@override String get playAll => 'Alle abspielen';
	@override String get present => 'Vorhanden';
	@override String get continuing => 'Laufend';
	@override String get upNext => 'Als Nächstes';
	@override String episodesLeft({required Object count}) => '${count} Folgen verbleiben';
}

// Path: lurokaThemes
class _Translations$lurokaThemes$de extends Translations$lurokaThemes$en {
	_Translations$lurokaThemes$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Luroka-Kino-Paletten';
	@override String get coral => 'Coral · Mitternachtsblau & Sonnenuntergang';
	@override String get ocean => 'Ocean · tiefes Blau & Eis';
	@override String get jade => 'Jade · Immergrün & Minze';
	@override String get amethyst => 'Amethyst · Mitternachtsviolett';
	@override String get darkThemes => 'Dunkle Kino-Designs';
	@override String get lightThemes => 'Helle Kino-Designs';
	@override String get moreThemes => 'Weitere Themen';
	@override String get moreThemesDescription => 'Durchsuche weitere Farbpaletten und benutzerdefinierte Farben';
	@override String get obsidian => 'Obsidian · reines Schwarz & Champagner';
	@override String get nocturne => 'Nocturne · Holzkohle und Champagner';
	@override String get burgundy => 'Burgund · Samtwein & Rose';
	@override String get slate => 'Slate · Graphit & Periwinkel';
	@override String get espresso => 'Espresso · Kakao & Karamell';
	@override String get pearl => 'Pearl · Porzellan & Saphir';
	@override String get linen => 'Leinen · warmes Elfenbein & Terrakotta';
	@override String get sunrise => 'Sonnenaufgang · Pfirsich und Koralle';
	@override String get coastal => 'Küsten-, Nebel- und Ozeanblaugrün';
	@override String get latte => 'Latte · Sahne und Karamell';
	@override String get sage => 'Sage · sanftes Grün & Eukalyptus';
	@override String get lavender => 'Lavendel · Flieder & tiefes Violett';
}

// Path: customPerformance
class _Translations$customPerformance$de extends Translations$customPerformance$en {
	_Translations$customPerformance$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Leistung & Effekte';
	@override String get fireStickMode => 'Modus für leistungsschwache Geräte';
	@override String get description => 'Nutzt reduzierte Effekte, statische Hintergründe, Artwork auf 720p begrenzt und einen 40-MiB-Bildcache. Während der Aktivierung überschreibt er Visuelle Effekte; das Ausschalten stellt deine Visuelle-Effekte-Einstellung wieder her.';
	@override String get detailsTitle => 'Leistungsdetails';
	@override String get details => 'Aktive Effekte, Bildcache-Limit und Messungen der Browse-Leistung';
	@override String get effectsTier => 'Aktive Effektstufe';
	@override String get imageCache => 'Bildcache-Limit';
	@override String get measurement => 'Browse-Messung';
	@override String get measureInstructions => 'Starte eine 20-Sekunden-Messung, kehre zu Startseite zurück und navigiere mit der Fernbedienung. Kehre hierher zurück, um die Ergebnisse zu sehen. Wiederhole dieselben Aktionen mit aktiviertem und deaktiviertem Modus zum Vergleich. Gemessen wird die Flutter-UI-Arbeit, nicht die Leistung des Video-Decoders.';
	@override String get startSample => '20-Sekunden-Messung starten';
	@override String get stopSample => 'Messung jetzt beenden';
	@override String get sampling => 'Messung läuft — kehre zu Startseite zurück und navigiere. Die Ergebnisse bleiben hier erhalten.';
	@override String get frames => 'Gemessene Frames';
	@override String get slowFrames => 'Frames über dem Budget';
	@override String get buildP95 => 'UI-Renderzeit (95. Perzentil)';
	@override String get rasterP95 => 'Rasterzeit (95. Perzentil)';
	@override String get frameBudget => 'Budget pro Frame';
	@override String get processMemory => 'App-Speicher bei Messende';
	@override String get noFrames => 'Es wurden keine gerenderten Frames erfasst. Starte eine neue Messung und navigiere durch die App.';
}

// Path: homeLayout
class _Translations$homeLayout$de extends Translations$homeLayout$en {
	_Translations$homeLayout$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Startseite personalisieren';
	@override String get description => 'Wähle Reihenfolge und Sichtbarkeit der Reihen für dieses Profil. Wähle eine Reihe, um sie zu verschieben oder auszublenden.';
	@override String get rows => 'Startseite-Reihen';
	@override String get visible => 'Sichtbar';
	@override String get hidden => 'Ausgeblendet';
	@override String get showRow => 'Reihe einblenden';
	@override String get hideRow => 'Reihe ausblenden';
	@override String get moveUp => 'Nach oben';
	@override String get moveDown => 'Nach unten';
	@override String get pinnedCollections => 'Angeheftete Sammlungen';
	@override String get pinInstructions => 'Öffne das Menü einer Sammlung und wähle An Startseite anheften. Wähle hier eine angeheftete Sammlung, um den shortcut zu entfernen.';
	@override String get pinCollection => 'An Startseite anheften';
	@override String get unpinCollection => 'Von Startseite lösen';
	@override String get reset => 'Standardreihen wiederherstellen';
	@override String get resetDescription => 'Originalreihenfolge wiederherstellen und alle Reihen für dieses Profil anzeigen? Deine angehefteten Sammlungen bleiben erhalten.';
	@override String get saveFailed => 'Dein Startseite-Layout konnte nicht gespeichert werden. Bitte versuche es erneut.';
	@override String get emptyHint => 'Reihen könnten ausgeblendet sein. Öffne Startseite anpassen, um sie wieder einzublenden.';
}

// Path: screenTime
class _Translations$screenTime$de extends Translations$screenTime$en {
	_Translations$screenTime$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sehzeit';
	@override String get description => 'Sieh, wie viel Zeit du mit Videoschauen auf diesem Profil verbracht hast';
	@override String get today => 'Heute';
	@override String get thisWeek => 'Diese Woche';
	@override String get thisMonth => 'Dieser Monat';
	@override String get lessThanMinute => '< 1 Min.';
	@override String minutes({required Object count}) => '${count} Min.';
	@override String hours({required Object count}) => '${count} Std.';
	@override String hoursMinutes({required Object hours, required Object minutes}) => '${hours} Std. ${minutes} Min.';
}

// Path: activityStats
class _Translations$activityStats$de extends Translations$activityStats$en {
	_Translations$activityStats$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wiedergabestatistiken';
	@override String get period => 'Zeitraum';
	@override String get last7Days => '7 Tage';
	@override String get last30Days => '30 Tage';
	@override String get last90Days => '90 Tage';
	@override String get thisYear => 'Jahr';
	@override String get allTime => 'Gesamt';
	@override String get heroAllTime => 'Gesamt';
	@override String get heroDailyAverage => 'Tagesdurchschnitt';
	@override String get consistency => 'Konsistenz';
	@override String get currentStreak => 'Aktuelle Serie';
	@override String dayCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n,
		one: '${n} Tag',
		other: '${n} Tage',
	);
	@override String get longestStreak => 'Längste Serie';
	@override String get bestDay => 'Bester Tag';
	@override String get bestWeek => 'Beste Woche';
	@override String get trendTitle => 'Sehzeit';
	@override String get trendToday => 'Heute';
	@override String gapDetail({required Object stat, required Object range}) => '${stat} am ${range}';
	@override String get weekdayTitle => 'Nach Wochentag';
	@override String get hoursTitle => 'Nach Tageszeit';
	@override String get amLabel => 'AM';
	@override String get pmLabel => 'PM';
	@override String get kindsTitle => 'Nach Kategorie';
	@override String get kindMovie => 'Filme';
	@override String get kindTv => 'TV';
	@override String get kindLiveTv => 'Live-TV';
	@override String get kindMusic => 'Musik';
	@override String get kindOther => 'Sonstige';
	@override String get topTitlesTitle => 'Am meisten geschaut';
	@override String get sessionsTitle => 'Letzte Sitzungen';
	@override String get showMore => 'Mehr anzeigen';
	@override String get sessionNoTitle => 'Nicht identifizierte Wiedergabe';
	@override String get emptyTitle => 'Noch nichts hier';
	@override String get emptyBody => 'Schau etwas und deine Statistiken bauen sich hier auf.';
	@override String get noDataInPeriod => 'Keine Wiedergabe in diesem Zeitraum aufgezeichnet.';
}

// Path: search
class _Translations$search$de extends Translations$search$en {
	_Translations$search$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get hint => 'Filme, Serien und Musik suchen …';
	@override String get tryDifferentTerm => 'Anderen Suchbegriff versuchen';
	@override String get searchYourMedia => 'In den eigenen Medien suchen';
	@override String get enterTitleActorOrKeyword => 'Titel, Schauspieler oder Stichwort eingeben';
	@override String get people => 'Personen';
	@override String get recentSearches => 'Letzte Suchen';
	@override String get clearHistory => 'Verlauf löschen';
}

// Path: hotkeys
class _Translations$hotkeys$de extends Translations$hotkeys$en {
	_Translations$hotkeys$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String setShortcutFor({required Object actionName}) => 'Tastenkürzel festlegen für ${actionName}';
	@override String get clearShortcut => 'Kürzel löschen';
	@override String get noShortcutSet => 'Kein Tastenkürzel festgelegt';
	@override String get currentShortcut => 'Aktuelle Tastenkombination:';
	@override String get pressToRecord => 'Auswählen, um eine Tastenkombination aufzuzeichnen';
	@override String get recordingShortcut => 'Jetzt die Tastenkombination drücken';
	@override late final _Translations$hotkeys$actions$de actions = _Translations$hotkeys$actions$de._(_root);
}

// Path: fileInfo
class _Translations$fileInfo$de extends Translations$fileInfo$en {
	_Translations$fileInfo$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dateiinformationen';
	@override String get overview => 'Übersicht';
	@override String get video => 'Video';
	@override String get audio => 'Audio';
	@override String get subtitles => 'Untertitel';
	@override String get images => 'Eingebettete Bilder';
	@override String get dataStreams => 'Datenstreams';
	@override String get lyrics => 'Songtexte';
	@override String get file => 'Datei';
	@override String get attachments => 'Anhänge';
	@override String get delivery => 'Bereitstellung';
	@override String versionCounter({required Object index, required Object count}) => 'Version ${index} von ${count}';
	@override String fileCounter({required Object index, required Object count}) => 'Datei ${index} von ${count}';
	@override String get noStreams => 'Der Server hat für diese Datei keine Streams gemeldet.';
	@override String get copyPath => 'Pfad kopieren';
	@override String get pathCopied => 'Dateipfad kopiert';
	@override String get codec => 'Codec';
	@override String get codecTag => 'Codec-Tag';
	@override String get resolution => 'Auflösung';
	@override String get codedResolution => 'Codierte Auflösung';
	@override String get bitrate => 'Bitrate';
	@override String get frameRate => 'Bildrate';
	@override String get rotation => 'Rotation';
	@override String get comment => 'Kommentar';
	@override String get audioDescription => 'Audiodeskription';
	@override String get headerCompression => 'Header-Komprimierung';
	@override String get sidecarFile => 'Sidecar-Datei';
	@override String get transportTimestamp => 'Transport-Zeitstempel';
	@override String get displayOffset => 'Anzeige-Offset';
	@override String get previewFailureCode => 'Fehlercode der Vorschau';
	@override String get previewRetries => 'Vorschau-Wiederholungsversuche';
	@override String get aspectRatio => 'Seitenverhältnis';
	@override String get pixelAspectRatio => 'Pixel-Seitenverhältnis';
	@override String get profile => 'Profil';
	@override String get level => 'Level';
	@override String get bitDepth => 'Bittiefe';
	@override String get pixelFormat => 'Pixelformat';
	@override String get colorSpace => 'Farbraum';
	@override String get colorRange => 'Farbbereich';
	@override String get colorPrimaries => 'Primärfarben';
	@override String get colorTransfer => 'Farbübertragung';
	@override String get chromaSubsampling => 'Chroma-Subsampling';
	@override String get chromaLocation => 'Chroma-Position';
	@override String get scanType => 'Scan-Typ';
	@override String get interlaced => 'Interlaced';
	@override String get anamorphic => 'Anamorph';
	@override String get referenceFrames => 'Referenzbilder';
	@override String get dynamicRange => 'Dynamikbereich';
	@override String get dolbyVision => 'Dolby Vision';
	@override String get dolbyVisionLevel => 'Dolby-Vision-Level';
	@override String get dolbyVisionVersion => 'Dolby-Vision-Version';
	@override String get dolbyVisionLayers => 'Dolby-Vision-Ebenen';
	@override String get baseLayerCompatibility => 'Kompatibilität der Basisebene';
	@override String get avcBitstream => 'AVC-Bitstream';
	@override String get nalLengthSize => 'NAL-Längengröße';
	@override String get scalingMatrix => 'Benutzerdefinierte Skalierungsmatrix';
	@override String get streamIdentifier => 'Stream-Kennung';
	@override String get streamIndex => 'Stream-Index';
	@override String get streamId => 'Stream-ID';
	@override String get language => 'Sprache';
	@override String get languageCode => 'Sprachcode';
	@override String get streamTitle => 'Track-Titel';
	@override String get channels => 'Kanäle';
	@override String get sampleRate => 'Abtastrate';
	@override String get spatialAudio => 'Räumliches Audio';
	@override String get textBased => 'Textbasiert';
	@override String get subtitleFormat => 'Sidecar-Format';
	@override String get provider => 'Anbieter';
	@override String get matchScore => 'Übereinstimmungswert';
	@override String get externalDelivery => 'Kann separat bereitgestellt werden';
	@override String get sidecarPath => 'Sidecar-Pfad';
	@override String get sourceStream => 'Kopiert von';
	@override String get temporary => 'Temporär';
	@override String get timeBase => 'Zeitbasis';
	@override String get overallBitrate => 'Gesamtbitrate';
	@override String get path => 'Pfad';
	@override String get fileName => 'Dateiname';
	@override String get size => 'Größe';
	@override String get totalSize => 'Gesamtgröße';
	@override String get container => 'Container';
	@override String get duration => 'Dauer';
	@override String get previewThumbnails => 'Vorschaubilder';
	@override String get previewIndex => 'Vorschau-Index';
	@override String get packetLength => 'Paketlänge';
	@override String get filePresent => 'Datei vorhanden';
	@override String get fileReadable => 'Vom Server lesbar';
	@override String get streamPath => 'Stream-Pfad';
	@override String get optimizedForStreaming => 'Für Streaming optimiert';
	@override String get has64bitOffsets => '64-Bit-Offsets';
	@override String get protocol => 'Protokoll';
	@override String get mediaType => 'Medientyp';
	@override String get sourceKind => 'Quellenart';
	@override String get optimizedVersion => 'Optimierte Version';
	@override String get optimizationTarget => 'Optimierungsziel';
	@override String get deletedAt => 'Gelöscht';
	@override String get remoteSource => 'Remote-Quelle';
	@override String get infiniteStream => 'Endlos-Stream';
	@override String get directPlay => 'Direktwiedergabe';
	@override String get directStream => 'Direktstream';
	@override String get transcoding => 'Transkodierung';
	@override String get etag => 'ETag';
	@override String get versionId => 'Versions-ID';
	@override String get fileId => 'Datei-ID';
	@override String get defaultAudioTrack => 'Standard-Audiospur';
	@override String get defaultSubtitleTrack => 'Standard-Untertitelspur';
	@override String get subtitlesOff => 'Aus';
	@override String get flagDefault => 'Standard';
	@override String get flagForced => 'Erzwungen';
	@override String get flagSelected => 'Ausgewählt';
	@override String get flagExternal => 'Extern';
	@override String get flagHearingImpaired => 'Für Hörgeschädigte';
	@override String get flagDub => 'Dub';
	@override String get flagOriginal => 'Original';
	@override String get channelsMono => 'Mono';
	@override String dolbyVisionProfile({required Object profile}) => 'Profil ${profile}';
}

// Path: mediaMenu
class _Translations$mediaMenu$de extends Translations$mediaMenu$en {
	_Translations$mediaMenu$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get markAsWatched => 'Als gesehen markieren';
	@override String get markAsUnwatched => 'Als ungesehen markieren';
	@override String get clearProgress => 'Fortschritt löschen';
	@override String get removeFromContinueWatching => 'Aus ‚Weiterschauen‘ entfernen';
	@override String get viewDetails => 'Details anzeigen';
	@override String get goToSeries => 'Zur Serie';
	@override String get shufflePlay => 'Zufallswiedergabe';
	@override String get shuffleNotAvailableOffline => 'Zufallswiedergabe ist offline nicht verfügbar';
	@override String get fileInfo => 'Dateiinfo';
	@override String get deleteEpisodeFromServer => 'Folge vom Server löschen';
	@override String get deleteSeasonFromServer => 'Staffel vom Server löschen';
	@override String get deleteShowFromServer => 'Serie vom Server löschen';
	@override String get deleteMovieFromServer => 'Film vom Server löschen';
	@override String get deleteEpisodeTitle => 'Diese Folge löschen?';
	@override String get deleteSeasonTitle => 'Diese Staffel löschen?';
	@override String get deleteShowTitle => 'Diese Serie löschen?';
	@override String get deleteMovieTitle => 'Diesen Film löschen?';
	@override String get deleteEpisodeConfirm => 'Folge löschen';
	@override String get deleteSeasonConfirm => 'Staffel löschen';
	@override String get deleteShowConfirm => 'Serie löschen';
	@override String get deleteMovieConfirm => 'Film löschen';
	@override String get deleteAnyway => 'Trotzdem löschen';
	@override String confirmDeleteTarget({required Object title}) => '„${title}“ dauerhaft von deinem Server löschen?';
	@override String get deleteMultipleWarning => 'Dies umfasst alle Episoden und deren Dateien.';
	@override String deleteEpisodeCountWarning({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n,
		one: 'Dies löscht alle ${n} Folge darin sowie ihre Datei.',
		other: 'Dies löscht alle ${n} Folgen darin sowie ihre Dateien.',
	);
	@override String deleteMultiPartWarning({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n,
		one: 'Dieses Element ist als ${n} Datei gespeichert, die gelöscht wird.',
		other: 'Dieses Element ist über ${n} Dateien verteilt gespeichert, die alle gelöscht werden.',
	);
	@override String deleteSharedFileHeading({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n,
		one: '${n} weitere Folge ist in derselben Datei gespeichert und wird ebenfalls gelöscht:',
		other: '${n} weitere Folgen sind in derselben Datei gespeichert und werden ebenfalls gelöscht:',
	);
	@override String get deleteScopeUnverifiedProbeFailed => 'Luroka konnte nicht prüfen, welche Dateien dadurch entfernt werden. Es könnte also mehr gelöscht werden als das oben genannte Element. Brich ab und versuche es erneut, oder lösche trotzdem.';
	@override String get deleteScopeUnverifiedNoFileInfo => 'Dein Server hat für dieses Element keine Dateidetails bereitgestellt, daher kann Luroka nicht prüfen, welche Dateien entfernt werden. Es könnte mehr gelöscht werden als das oben genannte Element.';
	@override String get mediaDeletedSuccessfully => 'Medienelement gelöscht';
	@override String get mediaFailedToDelete => 'Medienelement konnte nicht gelöscht werden';
	@override String get rate => 'Bewerten';
	@override String get playFromBeginning => 'Von Anfang an abspielen';
	@override String get playVersion => 'Version abspielen …';
}

// Path: rateSheet
class _Translations$rateSheet$de extends Translations$rateSheet$en {
	_Translations$rateSheet$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bewerten';
	@override String get server => 'Server';
	@override String get favorite => 'Favorit';
	@override String get favorited => 'Favorisiert';
	@override String get saved => 'Gespeichert';
	@override String get notAvailable => 'Keine Übereinstimmung gefunden';
	@override String get noConnectedServices => 'Verbinde einen Dienst in den Einstellungen, um dort zu bewerten.';
}

// Path: accessibility
class _Translations$accessibility$de extends Translations$accessibility$en {
	_Translations$accessibility$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String mediaCardMovie({required Object title}) => '${title}, Film';
	@override String mediaCardShow({required Object title}) => '${title}, Serie';
	@override String mediaCardEpisode({required Object title, required Object episodeInfo}) => '${title}, ${episodeInfo}';
	@override String mediaCardSeason({required Object title, required Object seasonInfo}) => '${title}, ${seasonInfo}';
	@override String get mediaCardWatched => 'gesehen';
	@override String mediaCardPartiallyWatched({required Object percent}) => 'zu ${percent} Prozent gesehen';
	@override String get mediaCardUnwatched => 'ungesehen';
	@override String get tapToPlay => 'Zum Abspielen tippen';
	@override String get decrease => 'Verringern';
	@override String get increase => 'Erhöhen';
	@override String decreaseValue({required Object label}) => '${label} verringern';
	@override String increaseValue({required Object label}) => '${label} erhöhen';
	@override String get hue => 'Farbton';
	@override String get saturation => 'Sättigung';
	@override String get brightness => 'Helligkeit';
	@override String get hexColor => 'Hexadezimalfarbe';
	@override String get expandText => 'Text ausklappen';
	@override String get collapseText => 'Text einklappen';
	@override String get alphabetNavigation => 'Alphabetische Navigation';
	@override String get alphabetScrollHint => 'Nach oben oder unten wischen, um einen Buchstaben weiterzugehen';
	@override String rowColumnPosition({required Object row, required Object rowCount, required Object column, required Object columnCount}) => 'Zeile ${row} von ${rowCount}, Spalte ${column} von ${columnCount}';
	@override String rowPosition({required Object row, required Object rowCount}) => 'Zeile ${row} von ${rowCount}';
	@override String get autoScrollPlay => 'Automatisches Scrollen starten';
	@override String get autoScrollPause => 'Automatisches Scrollen pausieren';
	@override String get hueShort => 'H';
	@override String get saturationShort => 'S';
	@override String get valueShort => 'V';
}

// Path: tooltips
class _Translations$tooltips$de extends Translations$tooltips$en {
	_Translations$tooltips$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get shufflePlay => 'Zufallswiedergabe';
	@override String get playTrailer => 'Trailer abspielen';
	@override String get markAsWatched => 'Als gesehen markieren';
	@override String get markAsUnwatched => 'Als ungesehen markieren';
}

// Path: audioTracks
class _Translations$audioTracks$de extends Translations$audioTracks$en {
	_Translations$audioTracks$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String track({required Object n}) => 'Audiospur ${n}';
}

// Path: videoControls
class _Translations$videoControls$de extends Translations$videoControls$en {
	_Translations$videoControls$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get audioLabel => 'Audio';
	@override String get subtitlesLabel => 'Untertitel';
	@override String addTime({required Object amount, required Object unit}) => '+${amount}${unit}';
	@override String get letterbox => 'Letterbox';
	@override String get fillScreen => 'Bild füllen';
	@override String get stretch => 'Strecken';
	@override String get lockRotation => 'Rotation sperren';
	@override String get unlockRotation => 'Rotation entsperren';
	@override String get timerActive => 'Schlaftimer aktiv';
	@override String playbackWillPauseIn({required Object duration}) => 'Wiedergabe wird in ${duration} pausiert';
	@override String get sleepTimerEndOfVideo => 'Ende des aktuellen Videos';
	@override String get sleepTimerStopAtHeader => 'Beenden bei';
	@override String get sleepTimerDurationHeader => 'Timer';
	@override String get playbackWillPauseAtEnd => 'Wiedergabe wird am Ende dieses Videos pausiert';
	@override String get stillWatching => 'Schaust du noch?';
	@override String pausingIn({required Object seconds}) => 'Pause in ${seconds}s';
	@override String get continueWatching => 'Weiter';
	@override String get autoPlayNext => 'Nächstes automatisch abspielen';
	@override String get playNext => 'Nächstes abspielen';
	@override String get playButton => 'Abspielen';
	@override String get pauseButton => 'Pause';
	@override String get playbackPaused => 'Pausiert';
	@override String get playbackResumed => 'Wird abgespielt';
	@override String get loadingVideo => 'Video wird geladen';
	@override String get showPlaybackControls => 'Wiedergabesteuerung anzeigen';
	@override String get hidePlaybackControls => 'Wiedergabesteuerung ausblenden';
	@override String seekBackwardButton({required Object seconds}) => '${seconds} Sekunden zurück';
	@override String seekForwardButton({required Object seconds}) => '${seconds} Sekunden vorwärts';
	@override String get previousButton => 'Vorherige Episode';
	@override String get nextButton => 'Nächste Episode';
	@override String get previousChapterButton => 'Vorheriges Kapitel';
	@override String get nextChapterButton => 'Nächstes Kapitel';
	@override String get muteButton => 'Stumm schalten';
	@override String get unmuteButton => 'Stummschaltung aufheben';
	@override String get settingsButton => 'Wiedergabeeinstellungen';
	@override String get infoButton => 'Info';
	@override String get tracksButton => 'Audio und Untertitel';
	@override String get chaptersButton => 'Kapitel';
	@override String get versionQualityButton => 'Version & Qualität';
	@override String get versionColumnHeader => 'Version';
	@override String get qualityColumnHeader => 'Qualität';
	@override String get qualityOriginal => 'Original';
	@override String qualityPresetLabel({required Object resolution, required Object bitrate}) => '${resolution}p ${bitrate} Mbps';
	@override String get transcodeUnavailableFallback => 'Transkodierung nicht verfügbar – Wiedergabe in Originalqualität';
	@override String get subtitleUnavailableFallback => 'Die ausgewählten Untertitel konnten nicht geladen werden – die Wiedergabe wird ohne Untertitel fortgesetzt';
	@override String get pipButton => 'Bild-in-Bild-Modus';
	@override String get aspectRatioButton => 'Seitenverhältnis';
	@override String get ambientLighting => 'Umgebungsbeleuchtung';
	@override String get fullscreenButton => 'Vollbild aktivieren';
	@override String get exitFullscreenButton => 'Vollbild verlassen';
	@override String get alwaysOnTopButton => 'Immer im Vordergrund';
	@override String get rotationLockButton => 'Drehsperre';
	@override String get lockScreen => 'Bildschirm sperren';
	@override String get screenLockButton => 'Bildschirmsperre';
	@override String get longPressToUnlock => 'Lange drücken zum Entsperren';
	@override String get timelineSlider => 'Videozeitleiste';
	@override String get volumeSlider => 'Lautstärkepegel';
	@override String endsAt({required Object time}) => 'Endet um ${time}';
	@override String get pipActive => 'Wiedergabe im Bild-in-Bild-Modus';
	@override String get pipFailed => 'Bild-in-Bild konnte nicht gestartet werden';
	@override String get screenshotSaved => 'Screenshot gespeichert';
	@override String get screenshotFailed => 'Screenshot konnte nicht erstellt werden';
	@override String zoomPercent({required Object percent}) => 'Zoom ${percent}%';
	@override String volumePercent({required Object percent}) => 'Lautstärke ${percent}%';
	@override late final _Translations$videoControls$pipErrors$de pipErrors = _Translations$videoControls$pipErrors$de._(_root);
	@override String get chapters => 'Kapitel';
	@override String get noChaptersAvailable => 'Keine Kapitel verfügbar';
	@override String get queue => 'Warteschlange';
	@override String get noQueueItems => 'Keine Elemente in der Warteschlange';
	@override String get noAudioDevicesAvailable => 'Keine Audiogeräte verfügbar';
	@override String get searchSubtitles => 'Untertitel suchen';
	@override String get language => 'Sprache';
	@override String get noSubtitlesFound => 'Keine Untertitel gefunden';
	@override String get subtitleDownloaded => 'Untertitel heruntergeladen';
	@override String get subtitleDownloadedNotApplied => 'Der Untertitel wurde heruntergeladen, konnte aber nicht ausgewählt werden';
	@override String get subtitleDownloadFailed => 'Untertitel konnte nicht heruntergeladen werden';
	@override String get searchLanguages => 'Sprachen suchen...';
	@override String get skipIntro => 'Intro überspringen';
	@override String get skipCredits => 'Abspann überspringen';
	@override String get nextEpisode => 'Nächste Episode';
	@override String subtitleTrack({required Object n}) => 'Spur ${n}';
	@override String subtitleFile({required Object name}) => 'Untertitel ${name}';
	@override String forcedTrack({required Object label}) => '${label} (Erzwungen)';
	@override String get osdSubtitlesOff => 'Untertitel: Aus';
	@override String osdSubtitles({required Object track}) => 'Untertitel: ${track}';
	@override String osdAudio({required Object track}) => 'Audio: ${track}';
}

// Path: messages
class _Translations$messages$de extends Translations$messages$en {
	_Translations$messages$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get markedAsWatched => 'Als gesehen markiert';
	@override String get markedAsUnwatched => 'Als ungesehen markiert';
	@override String get markedAsWatchedOffline => 'Als gesehen markiert (wird synchronisiert, wenn online)';
	@override String get markedAsUnwatchedOffline => 'Als ungesehen markiert (wird synchronisiert, wenn online)';
	@override String autoRemovedWatchedDownload({required Object title}) => 'Automatisch entfernt: ${title}';
	@override String autoRemovedWatchedDownloads({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n,
		one: 'Automatisch entfernt: ${n} angesehener Download',
		other: 'Automatisch entfernt: ${n} angesehene Downloads',
	);
	@override String get removedFromContinueWatching => 'Aus „Weiterschauen“ entfernt';
	@override String errorLoading({required Object error}) => 'Fehler: ${error}';
	@override String get searchPartialResults => 'Einige Medienserver konnten nicht durchsucht werden. Verfügbare Ergebnisse werden angezeigt.';
	@override String get streamInterrupted => 'Der Stream wurde unterbrochen. Drücke auf Wiedergabe oder spule, um es erneut zu versuchen.';
	@override String get liveStreamInterrupted => 'Der Livestream wurde unterbrochen. Drücke auf Wiedergabe, um es erneut zu versuchen.';
	@override String get fileInfoNotAvailable => 'Dateiinfo nicht verfügbar';
	@override String get playbackAuthenticationRequired => 'Melde dich erneut beim Medienserver an, um dieses Element abzuspielen.';
	@override String get playbackServerUnavailable => 'Der Medienserver ist nicht verfügbar. Versuche es später erneut.';
	@override String get playbackDataInvalid => 'Der Server hat ungültige Wiedergabeinformationen zurückgegeben.';
	@override String get playbackCancelled => 'Die Wiedergabe wurde abgebrochen.';
	@override String get playbackFailed => 'Die Wiedergabe konnte nicht gestartet werden.';
	@override String playbackFailedDetail({required Object error}) => 'Die Wiedergabe konnte nicht gestartet werden: ${error}';
	@override String get audioOutputFailed => 'Die Audioausgabe reagiert nicht mehr. Prüfe die Audioverbindung des Fernsehers oder Receivers; wenn auch andere Apps keinen Ton haben, starte das Gerät neu.';
	@override String get mediaUnavailable => 'Dieser Inhalt ist nicht mehr verfügbar.';
	@override String errorLoadingFileInfo({required Object error}) => 'Fehler beim Laden der Dateiinfo: ${error}';
	@override String get errorLoadingSeries => 'Fehler beim Laden der Serie';
	@override String get musicNotSupported => 'Musikwiedergabe wird noch nicht unterstützt';
	@override String get noDescriptionAvailable => 'Keine Beschreibung verfügbar';
	@override String get noProfilesAvailable => 'Keine Profile verfügbar';
	@override String get contactAdminForProfiles => 'Wende dich an deinen Serveradministrator, um Profile hinzuzufügen';
	@override String get unableToDetermineLibrarySection => 'Der Mediatheksbereich für dieses Element konnte nicht ermittelt werden';
	@override String get logsCleared => 'Protokolle gelöscht';
	@override String get logsCopied => 'Protokolle in Zwischenablage kopiert';
	@override String get noLogsAvailable => 'Keine Protokolle verfügbar';
	@override String libraryScanning({required Object title}) => '„${title}“ wird gescannt …';
	@override String libraryScanStarted({required Object title}) => 'Mediathekscan gestartet für „${title}“';
	@override String libraryScanFailed({required Object error}) => 'Fehler beim Scannen der Mediathek: ${error}';
	@override String metadataRefreshing({required Object title}) => 'Metadaten für „${title}“ werden aktualisiert …';
	@override String metadataRefreshStarted({required Object title}) => 'Metadaten-Aktualisierung gestartet für „${title}“';
	@override String metadataRefreshFailed({required Object error}) => 'Metadaten konnten nicht aktualisiert werden: ${error}';
	@override String get logoutConfirm => 'Abmeldung wirklich durchführen?';
	@override String get noSeasonsFound => 'Keine Staffeln gefunden';
	@override String get seasonsLoadFailed => 'Staffeln konnten nicht geladen werden';
	@override String get noEpisodesFound => 'Keine Episoden in der ersten Staffel gefunden';
	@override String get noEpisodesFoundGeneral => 'Keine Episoden gefunden';
	@override String get episodesLoadFailed => 'Episoden konnten nicht geladen werden';
	@override String get noResultsFound => 'Keine Ergebnisse gefunden';
	@override String sleepTimerSet({required Object label}) => 'Schlaftimer auf ${label} eingestellt';
	@override String get noItemsAvailable => 'Keine Elemente verfügbar';
	@override String get failedToCreatePlayQueueNoItems => 'Wiedergabewarteschlange konnte nicht erstellt werden – keine Elemente';
	@override String failedPlayback({required Object action, required Object error}) => 'Wiedergabe für ${action} fehlgeschlagen: ${error}';
	@override String get switchingToCompatiblePlayer => 'Wechsel zu einem kompatiblen Player …';
	@override String get serverLimitTitle => 'Wiedergabe fehlgeschlagen';
	@override String get serverLimitBody => 'Serverfehler (HTTP 500). Vermutlich hat ein Bandbreiten- oder Transkodierungslimit diese Sitzung abgelehnt. Bitte den Besitzer, das Limit anzupassen.';
	@override String get mediaUnreadableTitle => 'Datei nicht verfügbar';
	@override String get mediaUnreadableBody => 'Der Server hat dieses Element gefunden, konnte seine Datei aber nicht lesen (HTTP 404). Die Datei wurde wahrscheinlich verschoben oder gelöscht, oder ihr Speicher ist offline. Bitte den Serverbesitzer, die Datei zu prüfen und die Mediathek neu zu scannen.';
	@override String get serverBusyTitle => 'Stream nicht verfügbar';
	@override String get serverBusyBody => 'Der Server hat das Streamen dieser Datei wiederholt abgelehnt (HTTP 503). Möglicherweise wird er neu gestartet, ist ausgelastet oder der Speicherort der Datei ist offline. Versuche es gleich noch einmal. Falls das Problem weiterhin auftritt, bitte den Serverbetreiber, den Server und den Speicherort der Datei zu überprüfen.';
	@override String get playbackNotAllowedTitle => 'Wiedergabe nicht erlaubt';
	@override String get playbackNotAllowedBody => 'Der Server hat das Streamen dieses Elements abgelehnt (HTTP 403). Dein Konto hat möglicherweise keine Berechtigung, es abzuspielen, oder der Server erlaubt die Wiedergabe nur in seinem lokalen Netzwerk.';
	@override String get logsUploaded => 'Protokolle hochgeladen';
	@override String get logsUploadFailed => 'Protokolle konnten nicht hochgeladen werden';
	@override String get logId => 'Protokoll-ID';
	@override String get burnedSubtitlesUseMenu => 'Die Untertitel sind in diesen Stream eingebrannt. Ändere sie über das Untertitelmenü.';
	@override String get noVideoUrl => 'Keine Video-URL verfügbar';
	@override String get playbackNoMediaSources => 'Der Server hat keine abspielbaren Medienquellen zurückgegeben';
	@override String get playbackDataNotPrepared => 'Die Wiedergabe wurde gestartet, bevor die Daten bereit waren';
	@override String get streamSelectionUnavailable => 'Die Streamauswahl ist für diese Quelle nicht verfügbar';
	@override String get streamSelectionFailed => 'Die ausgewählten Streams konnten nicht angewendet werden';
	@override String get trackSelectionNotRemembered => 'Diese Spurauswahl gilt nur für die aktuelle Wiedergabe.';
	@override String get serverUnavailableForProfile => 'Für das aktive Profil ist kein Server verfügbar';
}

// Path: sourceLibraries
class _Translations$sourceLibraries$de extends Translations$sourceLibraries$en {
	_Translations$sourceLibraries$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Deine Server & Bibliotheken';
	@override String get description => 'Wähle die Bibliotheken, die Luroka für Startseite, Suche, Entdecken und Studios nutzt. Die Reihenfolge der Startseite-Reihen wird separat angepasst.';
	@override String get partial => 'Einige Server konnten nicht geprüft werden. Deine gespeicherten Auswahlmöglichkeiten für diese Bibliotheken bleiben erhalten. Aktualisieren, um es erneut zu versuchen.';
	@override String get loadFailed => 'Bibliotheken konnten nicht geladen werden. Prüfe die Verbindung und versuche es erneut.';
	@override String get notSelected => 'In deinen ausgewählten Bibliotheken nicht verfügbar.';
	@override String get checkOthers => 'Andere verbundene Quellen prüfen';
	@override String get otherSources => 'Auf anderen verbundenen Quellen verfügbar';
	@override String get playOnce => 'Einmal abspielen';
	@override String get includeLibrary => 'Diese Bibliothek einbeziehen';
	@override String get noOthers => 'Keine Kopien auf anderen verbundenen Quellen gefunden.';
	@override String get chooseOne => 'Wähle mindestens eine Bibliothek, um fortzufahren.';
}

// Path: subtitlingStyling
class _Translations$subtitlingStyling$de extends Translations$subtitlingStyling$en {
	_Translations$subtitlingStyling$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get text => 'Text';
	@override String get border => 'Rahmen';
	@override String get background => 'Hintergrund';
	@override String get fontSize => 'Schriftgröße';
	@override String get textColor => 'Textfarbe';
	@override String get borderSize => 'Rahmengröße';
	@override String get borderColor => 'Rahmenfarbe';
	@override String get backgroundOpacity => 'Hintergrunddeckkraft';
	@override String get backgroundColor => 'Hintergrundfarbe';
	@override String get position => 'Position';
	@override String get assOverride => 'ASS-Überschreibung';
	@override String get overrideScale => 'Skalieren';
	@override String get overrideForce => 'Erzwingen';
	@override String get overrideStrip => 'Formatierung entfernen';
	@override String get positionTop => 'Oben';
	@override String get positionBottom => 'Unten';
	@override String get useMargins => 'Ränder verwenden';
	@override String get useMarginsDescription => 'Textuntertitel im Bereich außerhalb des Videos zulassen. Gestylte Untertitel behalten möglicherweise ihre ursprüngliche Position.';
	@override String get anchorToScreen => 'Am Bildschirm verankern';
	@override String get anchorToScreenDescription => 'Textuntertitel in den schwarzen Balken unter Breitbildvideos anzeigen';
	@override String get bold => 'Fett';
	@override String get italic => 'Kursiv';
	@override String get renderResolution => 'Render-Auflösung';
	@override String get renderResolutionScreen => 'Bildschirmauflösung';
	@override String get renderResolutionVideo => 'Videoauflösung';
}

// Path: mpvConfig
class _Translations$mpvConfig$de extends Translations$mpvConfig$en {
	_Translations$mpvConfig$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'mpv-Konfiguration';
	@override String get description => 'Erweiterte Videoplayer-Einstellungen';
	@override String get presets => 'Voreinstellungen';
	@override String get noPresets => 'Keine gespeicherten Voreinstellungen';
	@override String get saveAsPreset => 'Als Voreinstellung speichern …';
	@override String get presetName => 'Name der Voreinstellung';
	@override String get presetNameHint => 'Namen für diese Voreinstellung eingeben';
	@override String get loadPreset => 'Laden';
	@override String get deletePreset => 'Löschen';
	@override String get presetSaved => 'Voreinstellung gespeichert';
	@override String get presetLoaded => 'Voreinstellung geladen';
	@override String get presetDeleted => 'Voreinstellung gelöscht';
	@override String get confirmDeletePreset => 'Diese Voreinstellung wirklich löschen?';
	@override String get configPlaceholder => 'gpu-api=vulkan\nhwdec=auto\n# comment';
	@override String get lineHint => 'option=value';
	@override String get addLine => 'Zeile hinzufügen';
	@override String get removeLine => 'Zeile entfernen';
	@override String get embeddedVoHint => 'vo, gpu-context und gpu-api werden unter Linux ignoriert: eingebettetes Video wird immer über vo=libmpv auf der Videoebene gerendert, und gpu-next (das Compute-Shader wie ArtCNN benötigen) kann nicht eingebettet ausgeführt werden.';
}

// Path: dialog
class _Translations$dialog$de extends Translations$dialog$en {
	_Translations$dialog$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get confirmAction => 'Aktion bestätigen';
}

// Path: profiles
class _Translations$profiles$de extends Translations$profiles$en {
	_Translations$profiles$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get addLurokaProfile => 'Luroka-Profil hinzufügen';
	@override String get switchingProfile => 'Profil wird gewechselt…';
	@override String get deleteThisProfileTitle => 'Dieses Profil löschen?';
	@override String deleteThisProfileMessage({required Object displayName}) => '${displayName} entfernen. Verbindungen bleiben unberührt.';
	@override String get active => 'Aktiv';
	@override String get manage => 'Verwalten';
	@override String get delete => 'Löschen';
	@override String get signOut => 'Abmelden';
	@override String get signOutPlexTitle => 'Von Plex abmelden?';
	@override String signOutPlexMessage({required Object displayName}) => '${displayName} und alle Plex Home-Benutzer entfernen? Du kannst dich jederzeit wieder anmelden.';
	@override String get signOutPlexDeleteDownloads => 'Downloads auch löschen';
	@override String get signOutPlexDeleteDownloadsDescription => 'Andernfalls bleiben sie auf diesem Gerät und kommen zurück, wenn du dich wieder bei diesem Konto anmeldest.';
	@override String get signedOutPlex => 'Von Plex abgemeldet.';
	@override String get signOutFailed => 'Abmeldung fehlgeschlagen.';
	@override String get sectionTitle => 'Profile';
	@override String get summarySingle => 'Profile hinzufügen, um verwaltete Benutzer mit lokalen Identitäten zu kombinieren';
	@override String summaryMultipleWithActive({required Object count, required Object activeName}) => '${count} Profile · aktiv: ${activeName}';
	@override String summaryMultiple({required Object count}) => '${count} Profile';
	@override String get removeConnectionTitle => 'Verbindung entfernen?';
	@override String removeConnectionMessage({required Object displayName, required Object connectionLabel}) => 'Zugriff von ${displayName} auf ${connectionLabel} entfernen. Andere Profile behalten ihn.';
	@override String get deleteProfileTitle => 'Profil löschen?';
	@override String deleteProfileMessage({required Object displayName}) => '${displayName} und Verbindungen entfernen. Server bleiben verfügbar.';
	@override String get profileNameLabel => 'Profilname';
	@override String get pinProtectionLabel => 'PIN-Schutz';
	@override String get pinManagedByPlex => 'PIN wird von Plex verwaltet. Auf plex.tv bearbeiten.';
	@override String get noPinSetEditOnPlex => 'Keine PIN festgelegt. Um eine zu verlangen, bearbeite den Startseite-Benutzer auf plex.tv.';
	@override String get setPin => 'PIN festlegen';
	@override String get setPinTitle => 'PIN festlegen';
	@override String get confirmPinTitle => 'PIN bestätigen';
	@override String get pinSet => 'PIN festgelegt';
	@override String get changePin => 'Ändern';
	@override String get removePin => 'Entfernen';
	@override String get connectionsLabel => 'Verbindungen';
	@override String get add => 'Hinzufügen';
	@override String get deleteProfileButton => 'Profil löschen';
	@override String get noConnectionsHint => 'Keine Verbindungen — füge eine hinzu, um dieses Profil zu nutzen.';
	@override String get noConnections => 'Keine Verbindungen';
	@override String get plexHomeAccount => 'Plex Home-Konto';
	@override String plexAccountChip({required Object account}) => 'Plex-Konto: ${account}';
	@override String plexAccountUserChip({required Object user, required Object account}) => '${user} über ${account}';
	@override String get connectionDefault => 'Standard';
	@override String connectionAs({required Object displayName}) => 'als ${displayName}';
	@override String get makeDefault => 'Als Standard festlegen';
	@override String get removeConnection => 'Entfernen';
	@override String get profileRenamed => 'Profil umbenannt.';
	@override String borrowAddTo({required Object displayName}) => 'Zu ${displayName} hinzufügen';
	@override String get borrowExplain => 'Verbindung eines anderen Profils übernehmen. PIN-geschützte Profile erfordern eine PIN.';
	@override String get borrowEmpty => 'Keine Verbindungen zum Übernehmen verfügbar.';
	@override String get borrowEmptySubtitle => 'Verbinde zuerst Plex, Jellyfin oder Emby mit einem anderen Profil.';
	@override String get borrowLoadFailed => 'Verfügbare Verbindungen konnten nicht geladen werden. Versuche es erneut.';
	@override String borrowFromProfile({required Object displayName}) => 'Von ${displayName}';
	@override String get borrowConnectionBorrowed => 'Verbindung übernommen.';
	@override String get borrowFailed => 'Verbindung konnte nicht übernommen werden.';
	@override String get incorrectPin => 'Falsche PIN.';
	@override String get incorrectPinTryAgain => 'Falsche PIN. Bitte erneut versuchen.';
	@override String get sourceProfileMissingParentAccount => 'Dem Quellprofil fehlt das übergeordnete Konto.';
	@override String get failedToLoadHomeUsers => 'Deine Plex-Startseite-Benutzer konnten nicht geladen werden. Prüfe deine Verbindung und versuche es erneut.';
	@override String get failedToVerifyPin => 'PIN konnte nicht verifiziert werden.';
	@override String get newProfile => 'Neues Profil';
	@override String get profileNameHint => 'z. B. Gäste, Kinder, Wohnzimmer';
	@override String get pinProtectionOptional => 'PIN-Schutz (optional)';
	@override String get pinExplain => '4-stellige PIN zum Profilwechsel erforderlich.';
	@override String get continueButton => 'Weiter';
	@override String get pinsDontMatch => 'PINs stimmen nicht überein';
	@override String get tokenIdentityMismatch => 'Das Plex-Profil-Token wurde einem unerwarteten Server zugeordnet';
}

// Path: connections
class _Translations$connections$de extends Translations$connections$en {
	_Translations$connections$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get sectionTitle => 'Verbindungen';
	@override String get addConnection => 'Verbindung hinzufügen';
	@override String get addConnectionSubtitleNoProfile => 'Mit Plex anmelden oder mit einem Jellyfin- oder Emby-Server verbinden';
	@override String addConnectionSubtitleScoped({required Object displayName}) => 'Zu ${displayName} hinzufügen: Plex, Jellyfin, Emby oder eine andere Profilverbindung';
	@override String sessionExpiredOne({required Object name}) => 'Sitzung für ${name} abgelaufen';
	@override String sessionExpiredMany({required Object count}) => 'Sitzungen für ${count} Server abgelaufen';
	@override String accessDeniedOne({required Object name}) => '${name} verweigert diesem Konto den Zugriff';
	@override String accessDeniedMany({required Object count}) => '${count} Server verweigern diesem Konto den Zugriff';
	@override String get signInAgain => 'Erneut anmelden';
	@override String editMediaBrowserTitle({required Object product}) => 'Verbindung zu ${product} bearbeiten';
	@override String editMediaBrowserIntro({required Object serverName}) => 'URLs für ${serverName} hinzufügen oder entfernen. Luroka verwendet die erreichbare URL mit der geringsten Latenz.';
}

// Path: serversAccounts
class _Translations$serversAccounts$de extends Translations$serversAccounts$en {
	_Translations$serversAccounts$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Server & Konten';
	@override String get subtitle => 'Anmeldestatus deiner Plex-, Jellyfin- und Emby-Server';
	@override String get online => 'Online';
	@override String get offline => 'Offline';
	@override String get unknown => 'Hier nicht angemeldet';
	@override String get usedByNone => 'Von keinem Profil verwendet';
	@override String usedByOne({required Object name}) => 'Von ${name} verwendet';
	@override String usedByMany({required Object name, required Object count}) => 'Von ${name} und ${count} weiteren verwendet';
	@override String serversOnline({required Object online, required Object total}) => '${online} von ${total} Servern online';
	@override String get noServers => 'Noch nichts verbunden. Füge dein Plex-Konto oder einen Jellyfin- oder Emby-Server hinzu.';
	@override String get editUrls => 'Server-URLs bearbeiten';
}

// Path: accountPreferences
class _Translations$accountPreferences$de extends Translations$accountPreferences$en {
	_Translations$accountPreferences$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get sectionTitle => 'Kontoeinstellungen';
	@override String hubSubtitleSingle({required Object account}) => 'Audio-, Untertitel- und Mediathek-Optionen werden auf ${account} gespeichert';
	@override String hubSubtitleMultiple({required Object count}) => 'Audio-, Untertitel- und Mediathek-Optionen werden auf ${count} Konten gespeichert';
	@override String get pickAccount => 'Jedes Konto speichert seine eigenen Einstellungen. Wähle das Konto, das du bearbeiten möchtest.';
	@override String get storedOnAccount => 'Diese Optionen werden auf dem Konto selbst gespeichert, sodass jede damit angemeldete App sie verwendet — auch Luroka auf deinen anderen Geräten.';
	@override String get noAccounts => 'Keine Konten zum Konfigurieren';
	@override String get noAccountsHint => 'Melde dich bei Plex an oder verbinde einen Jellyfin- oder Emby-Server — die auf diesem Konto gespeicherten Einstellungen erscheinen dann hier.';
	@override String get unavailable => 'Dieses Konto ist nicht erreichbar';
	@override String get loadFailed => 'Diese Einstellungen konnten nicht geladen werden';
	@override String get noPreference => 'Keine Einstellung';
	@override String get notSet => 'Nicht festgelegt';
	@override late final _Translations$accountPreferences$groups$de groups = _Translations$accountPreferences$groups$de._(_root);
	@override String get preferredAudioLanguage => 'Bevorzugte Audiosprache';
	@override String get autoSelectAudio => 'Audio nach Sprache auswählen';
	@override String get autoSelectAudioDescription => 'Bei „Aus“ wird die Audiospur verwendet, die die Datei als Standard markiert.';
	@override String get preferredSubtitleLanguage => 'Bevorzugte Untertitelsprache';
	@override String get subtitleMode => 'Untertitel einschalten';
	@override late final _Translations$accountPreferences$subtitleModes$de subtitleModes = _Translations$accountPreferences$subtitleModes$de._(_root);
	@override String get subtitleAccessibility => 'SDH-Untertitel';
	@override late final _Translations$accountPreferences$subtitleAccessibilityOptions$de subtitleAccessibilityOptions = _Translations$accountPreferences$subtitleAccessibilityOptions$de._(_root);
	@override String get forcedSubtitles => 'Erzwungene Untertitel';
	@override late final _Translations$accountPreferences$forcedSubtitleOptions$de forcedSubtitleOptions = _Translations$accountPreferences$forcedSubtitleOptions$de._(_root);
	@override String get displayMissingEpisodes => 'Fehlende Episoden anzeigen';
	@override String get displayMissingEpisodesDescription => 'Episoden auflisten, die dem Server bekannt sind, für die aber keine Datei vorliegt.';
	@override String get hidePlayedInLatest => 'Gesehene Elemente in „Neueste“ ausblenden';
	@override String get hidePlayedInLatestDescription => 'Elemente, die du bereits gesehen hast, erscheinen nicht mehr in den „Neueste“-Zeilen des Servers.';
	@override String get displayCollectionsView => 'Sammlungsansicht anzeigen';
	@override String get displayCollectionsViewDescription => 'Die Sammlungsansicht des Servers zusätzlich zu deinen Mediatheken anzeigen.';
	@override String get rewatchingInNextUp => 'Erneut geschaute Serien in „Als Nächstes“ behalten';
	@override String get rewatchingInNextUpDescription => 'Beendest du eine Serie und startest sie erneut, folgt „Als Nächstes“ dem erneuten Anschauen, statt die Serie zu verwerfen.';
	@override String get watchedIndicator => 'Gesehen-Markierung';
	@override late final _Translations$accountPreferences$watchedIndicatorOptions$de watchedIndicatorOptions = _Translations$accountPreferences$watchedIndicatorOptions$de._(_root);
	@override String get mediaReviewsVisibility => 'Bewertungen & Rezensionen';
	@override late final _Translations$accountPreferences$mediaReviewsOptions$de mediaReviewsOptions = _Translations$accountPreferences$mediaReviewsOptions$de._(_root);
}

// Path: discover
class _Translations$discover$de extends Translations$discover$en {
	_Translations$discover$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Entdecken';
	@override String get noContentAvailable => 'Kein Inhalt verfügbar';
	@override String get addMediaToLibraries => 'Medien zur Mediathek hinzufügen';
	@override String get continueWatching => 'Weiterschauen';
	@override String continueWatchingIn({required Object library}) => 'Weiterschauen in ${library}';
	@override String get nextUp => 'Als Nächstes';
	@override String nextUpIn({required Object library}) => 'Als Nächstes in ${library}';
	@override String get recentlyAdded => 'Kürzlich hinzugefügt';
	@override String recentlyAddedIn({required Object library}) => 'Kürzlich hinzugefügt in ${library}';
	@override String latestAlbumsIn({required Object library}) => 'Neueste Alben in ${library}';
	@override String recentlyPlayedIn({required Object library}) => 'Kürzlich gespielt in ${library}';
	@override String mostPlayedIn({required Object library}) => 'Am häufigsten gespielt in ${library}';
	@override String playEpisode({required Object season, required Object episode}) => 'S${season}E${episode}';
	@override String get overview => 'Übersicht';
	@override String get cast => 'Besetzung';
	@override String get extras => 'Trailer & Extras';
	@override String get studio => 'Studio';
	@override String get rating => 'Altersfreigabe';
	@override String get director => 'Regisseur';
	@override String get directors => 'Regisseure';
	@override String get movie => 'Film';
	@override String get tvShow => 'Serie';
	@override String minutesLeft({required Object minutes}) => 'Noch ${minutes} Min.';
	@override String get moreLikeThis => 'Ähnliche Inhalte';
	@override String titleCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n,
		one: '${n} Titel',
		other: '${n} Titel',
	);
	@override late final _Translations$discover$person$de person = _Translations$discover$person$de._(_root);
}

// Path: errors
class _Translations$errors$de extends Translations$errors$en {
	_Translations$errors$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String searchFailed({required Object error}) => 'Suche fehlgeschlagen: ${error}';
	@override String get searchUnavailable => 'Die Suche konnte keinen Medienserver erreichen.';
	@override String connectionTimeout({required Object context}) => 'Zeitüberschreitung beim Laden von ${context}';
	@override String get connectionFailed => 'Keine Verbindung zum Medienserver möglich';
	@override String unableToLoad({required Object context}) => '${context} konnte nicht geladen werden. Bitte erneut versuchen.';
	@override String get noClientAvailable => 'Kein Client verfügbar';
	@override String get pleaseEnterToken => 'Bitte Token eingeben';
	@override String get invalidToken => 'Ungültiges Token';
	@override String failedToVerifyToken({required Object error}) => 'Token-Verifizierung fehlgeschlagen: ${error}';
	@override String failedToSwitchProfile({required Object displayName}) => 'Profilwechsel zu ${displayName} fehlgeschlagen';
	@override String failedToDeleteProfile({required Object displayName}) => 'Löschen von ${displayName} fehlgeschlagen';
	@override String get failedToRate => 'Bewertung konnte nicht aktualisiert werden';
	@override String get reasonTimedOut => 'Zeitüberschreitung bei der Verbindung';
	@override String get reasonUnreachable => 'der Medienserver konnte nicht erreicht werden';
	@override String get reasonRefused => 'der Medienserver hat die Anfrage abgelehnt';
	@override String get reasonNotFound => 'das Element befindet sich nicht mehr auf dem Medienserver';
	@override String get reasonServerError => 'der Medienserver hat einen Fehler gemeldet';
	@override String get reasonCancelled => 'die Anfrage wurde abgebrochen';
	@override String get reasonUnexpected => 'ein unerwarteter Fehler ist aufgetreten';
}

// Path: libraries
class _Translations$libraries$de extends Translations$libraries$en {
	_Translations$libraries$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mediatheken';
	@override String get fallbackTitle => 'Mediathek';
	@override String get scanLibraryFiles => 'Mediatheksdateien scannen';
	@override String get scanLibrary => 'Mediathek scannen';
	@override String get analyze => 'Analysieren';
	@override String get analyzeLibrary => 'Mediathek analysieren';
	@override String get refreshMetadata => 'Metadaten aktualisieren';
	@override String get emptyTrash => 'Papierkorb leeren';
	@override String emptyingTrash({required Object title}) => 'Papierkorb für „${title}“ wird geleert...';
	@override String trashEmptied({required Object title}) => 'Papierkorb für „${title}“ geleert';
	@override String failedToEmptyTrash({required Object error}) => 'Papierkorb konnte nicht geleert werden: ${error}';
	@override String analyzing({required Object title}) => 'Analysiere „${title}“...';
	@override String analysisStarted({required Object title}) => 'Analyse gestartet für „${title}“';
	@override String failedToAnalyze({required Object error}) => 'Analyse der Mediathek fehlgeschlagen: ${error}';
	@override String get noLibrariesFound => 'Keine Mediatheken gefunden';
	@override String get allLibrariesHidden => 'Alle Mediatheken sind ausgeblendet';
	@override String hiddenLibrariesCount({required Object count}) => 'Ausgeblendete Mediatheken (${count})';
	@override String get thisLibraryIsEmpty => 'Diese Mediathek ist leer';
	@override String get noItemsMatchFilters => 'Keine Elemente entsprechen den aktiven Filtern';
	@override String get resetFilters => 'Filter zurücksetzen';
	@override String get all => 'Alle';
	@override String get clearAll => 'Alle Filter entfernen';
	@override String scanLibraryConfirm({required Object title}) => '„${title}“ wirklich scannen?';
	@override String analyzeLibraryConfirm({required Object title}) => '„${title}“ wirklich analysieren?';
	@override String refreshMetadataConfirm({required Object title}) => 'Metadaten für „${title}“ wirklich aktualisieren?';
	@override String emptyTrashConfirm({required Object title}) => 'Papierkorb für „${title}“ wirklich leeren?';
	@override String get manageLibraries => 'Mediatheken verwalten';
	@override String get sort => 'Sortieren';
	@override String get sortBy => 'Sortieren nach';
	@override String get filters => 'Filter';
	@override String get confirmActionMessage => 'Aktion wirklich durchführen?';
	@override String get showLibrary => 'Mediathek anzeigen';
	@override String get hideLibrary => 'Mediathek ausblenden';
	@override String get libraryOptions => 'Mediatheksoptionen';
	@override String get content => 'Mediatheksinhalt';
	@override String get selectLibrary => 'Mediathek auswählen';
	@override String filtersWithCount({required Object count}) => 'Filter (${count})';
	@override String get noRecommendations => 'Keine Empfehlungen verfügbar';
	@override String get noCollections => 'Keine Sammlungen in dieser Mediathek';
	@override String get noFoldersFound => 'Keine Ordner gefunden';
	@override String get folders => 'Ordner';
	@override late final _Translations$libraries$tabs$de tabs = _Translations$libraries$tabs$de._(_root);
	@override late final _Translations$libraries$groupings$de groupings = _Translations$libraries$groupings$de._(_root);
	@override late final _Translations$libraries$filterCategories$de filterCategories = _Translations$libraries$filterCategories$de._(_root);
	@override late final _Translations$libraries$sortLabels$de sortLabels = _Translations$libraries$sortLabels$de._(_root);
	@override late final _Translations$libraries$advancedFilters$de advancedFilters = _Translations$libraries$advancedFilters$de._(_root);
}

// Path: about
class _Translations$about$de extends Translations$about$en {
	_Translations$about$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Über';
	@override String get openSourceLicenses => 'Open-Source-Lizenzen';
	@override String versionLabel({required Object version}) => 'Version ${version}';
	@override String get appDescription => 'Ein schöner, mit Flutter entwickelter Plex-, Jellyfin- und Emby-Client';
	@override String get customSource => 'Quellcode';
	@override String get basedOnLuroka => 'Basiert auf Plezy';
	@override String get viewLicensesDescription => 'Lizenzen von Drittanbieter-Bibliotheken anzeigen';
	@override String get appSection => 'App';
	@override String get communitySection => 'Community';
	@override String get creditsSection => 'Credits';
	@override String get legalSection => 'Rechtliches';
	@override String versionMeta({required Object version, required Object build, required Object platform}) => 'v${version} (${build}) · ${platform}';
	@override String versionMetaNoBuild({required Object version, required Object platform}) => 'v${version} · ${platform}';
	@override String get versionUnavailable => 'Version nicht verfügbar';
	@override String get versionDetails => 'Versionsdetails';
	@override String versionDetailsTitle({required Object version, required Object build}) => 'Luroka ${version} (${build})';
	@override String platformLine({required Object platform}) => 'Plattform: ${platform}';
	@override String deviceLine({required Object model}) => 'Gerät: ${model}';
	@override String packageLine({required Object package}) => 'Paket: ${package}';
	@override String localeLine({required Object locale}) => 'Sprache: ${locale}';
	@override String get copyDetails => 'Details kopieren';
	@override String get detailsCopied => 'App-Details kopiert';
	@override String get detailsCopyFailed => 'App-Details konnten nicht kopiert werden';
	@override String get checkForUpdatesDescription => 'Auf GitHub nach einer neueren Version suchen';
	@override String get checkingForUpdates => 'Suche nach Updates…';
	@override String get whatsNew => 'Neuigkeiten';
	@override String get releaseNotesUnavailable => 'Keine Versionshinweise verfügbar.';
	@override String get sourceCodeDescription => 'Luroka auf GitHub';
	@override String get reportIssue => 'Problem melden';
	@override String get reportIssueDescription => 'Sag uns, was nicht funktioniert hat';
	@override String get documentation => 'Dokumentation';
	@override String get documentationDescription => 'Einrichtung, Funktionen und Build-Hinweise';
	@override String get upstreamProjectDescription => 'Open-Source-Projekt von edde746 und Mitwirkenden';
	@override String get upstreamWebsite => 'Luroka-Website';
	@override String get attribution => 'Daten & Quellenangaben';
	@override String get attributionDescription => 'Metadaten, Bewertungen und Marken';
	@override String get attributionBody => 'Dieses Produkt nutzt die TMDB API, wird aber nicht von TMDB unterstützt oder zertifiziert. Beliebtheitslisten, Metadaten und IMDb-Bewertungen stammen von Cinemeta. Bewertungen behalten ihre Quell-Labels.';
	@override String get trademarkNotices => 'Plex, Jellyfin, Emby, Trakt, Simkl, MyAnimeList, AniList, TMDB und zugehörige Marken sind Marken ihrer jeweiligen Eigentümer. Luroka steht in keiner Verbindung zu ihnen und wird von ihnen nicht unterstützt.';
	@override String get privacyPolicy => 'Datenschutzerklärung';
	@override String get privacyPolicyDescription => 'Wie deine Daten behandelt werden';
	@override String get gplLicense => 'GNU GPL-3.0 Lizenz';
	@override String get gplLicenseDescription => 'Luroka ist freie Software';
	@override String get linkOpenFailed => 'Dieser Link konnte nicht geöffnet werden';
	@override String get opensInBrowser => 'Öffnet sich im Browser';
	@override String get footer => 'Luroka ist freie Software unter GPL-3.0, aufgebaut auf dem Open-Source-Projekt Luroka.';
	@override String copyright({required Object year}) => '© ${year} Luroka-Mitwirkende';
}

// Path: serverSelection
class _Translations$serverSelection$de extends Translations$serverSelection$en {
	_Translations$serverSelection$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String noServersFoundForAccount({required Object username, required Object email}) => 'Keine Server gefunden für ${username} (${email})';
	@override String failedToLoadServers({required Object error}) => 'Server konnten nicht geladen werden: ${error}';
	@override String get noValidServers => 'Für dieses Konto wurden keine nutzbaren Server gefunden';
}

// Path: hubDetail
class _Translations$hubDetail$de extends Translations$hubDetail$en {
	_Translations$hubDetail$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Titel';
	@override String get releaseYear => 'Erscheinungsjahr';
	@override String get dateAdded => 'Hinzugefügt am';
	@override String get rating => 'Bewertung';
	@override String get noItemsFound => 'Keine Elemente gefunden';
}

// Path: logs
class _Translations$logs$de extends Translations$logs$en {
	_Translations$logs$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get clearLogs => 'Protokolle löschen';
	@override String get copyLogs => 'Protokolle kopieren';
	@override String get uploadLogs => 'Protokolle hochladen';
}

// Path: startup
class _Translations$startup$de extends Translations$startup$en {
	_Translations$startup$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get failedTitle => 'Luroka konnte nicht gestartet werden';
	@override String get failedBody => 'Beim Start ist etwas schiefgelaufen. Die Details unten zeigen, was fehlgeschlagen ist.';
	@override String get failedBodyRepairable => 'Die gespeicherte Einstellungsdatei von Luroka ist beschädigt und muss neu aufgebaut werden, bevor Luroka starten kann. Erneutes Versuchen hilft nicht – wähle „Speicher reparieren“.';
	@override String get phaseLabel => 'Schritt';
	@override String get showDetails => 'Details anzeigen';
	@override String get hideDetails => 'Details ausblenden';
	@override String get copyDetails => 'Details kopieren';
	@override String get detailsCopied => 'Details in die Zwischenablage kopiert';
	@override String get uploadDetails => 'Details hochladen';
	@override String get repairStorage => 'Speicher reparieren';
	@override String get repairTitle => 'Gespeicherte Daten reparieren?';
	@override String get repairBodyCommon => 'Die Einstellungsdatei von Luroka ist beschädigt und kann nicht gelesen werden. Beim Reparieren werden alle Einstellungen auf ihre Standardwerte zurückgesetzt.';
	@override String get repairBodyOneCredential => 'Eine gespeicherte Anmeldung ist beschädigt und kann nicht gelesen werden. Beim Reparieren wird nur diese entfernt; deine übrigen Einstellungen bleiben unangetastet.';
	@override String get repairBodySignInsKept => 'Deine Server und Profile sollten angemeldet bleiben.';
	@override String get repairBodySignInsLost => 'Der Schlüssel, der deine gespeicherten Anmeldungen schützt, kann aus dieser Datei nicht wiederhergestellt werden. Du musst dich daher bei jedem Server und Profil erneut anmelden. Auf deinem Medienserver ändert sich nichts.';
	@override String get repairBodySessionsUncertain => 'Tracker (MAL, AniList, Simkl, Trakt) und Seerr werden separat gespeichert und können erhalten bleiben oder auch nicht. Luroka teilt dir genau mit, was erhalten blieb.';
	@override String get repairConfirm => 'Reparieren';
	@override String get repairSucceeded => 'Speicher repariert';
	@override String get repairNeedsRestart => 'Speicher repariert – Neustart erforderlich';
	@override String get restartRequiredBody => 'Deine Daten wurden repariert, aber Luroka muss neu starten, bevor es sie verwenden kann. Schließe Luroka und öffne es erneut.';
	@override String get quitLuroka => 'Luroka beenden';
	@override String get repairFailed => 'Reparatur fehlgeschlagen';
	@override String get repairKeptSignIns => 'Deine Server und Profile sind weiterhin angemeldet.';
	@override String get repairLostSignIns => 'Der Schlüssel, der deine gespeicherten Anmeldungen schützt, konnte nicht wiederhergestellt werden. Du musst dich bei jedem Server und Profil erneut anmelden.';
	@override String get repairLostSessions => 'Mindestens eine Tracker- oder Seerr-Verbindung ging verloren und muss neu verbunden werden.';
	@override String get backupTitle => 'Eine Kopie der beschädigten Datei wurde aufbewahrt';
	@override String get backupWarning => 'Sie enthält deine Anmeldedaten. Lade sie nicht hoch und teile sie nicht.';
	@override String get deleteBackup => 'Kopie löschen';
	@override String get backupDeleted => 'Kopie gelöscht.';
	@override String get previousFailureTitle => 'Luroka konnte beim letzten Mal nicht starten';
}

// Path: licenses
class _Translations$licenses$de extends Translations$licenses$en {
	_Translations$licenses$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get relatedPackages => 'Verwandte Pakete';
	@override String get license => 'Lizenz';
	@override String licenseNumber({required Object number}) => 'Lizenz ${number}';
	@override String licensesCount({required Object count}) => '${count} Lizenzen';
	@override String get searchHint => 'Pakete durchsuchen';
	@override String noResults({required Object query}) => 'Keine Pakete entsprechen "${query}"';
	@override String get clearSearch => 'Suche löschen';
}

// Path: navigation
class _Translations$navigation$de extends Translations$navigation$en {
	_Translations$navigation$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get libraries => 'Mediatheken';
	@override String get downloads => 'Downloads';
	@override String get liveTv => 'Live-TV';
	@override String get explore => 'Erkunden';
}

// Path: explore
class _Translations$explore$de extends Translations$explore$en {
	_Translations$explore$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Erkunden';
	@override String get selectSource => 'Quelle auswählen';
	@override late final _Translations$explore$rows$de rows = _Translations$explore$rows$de._(_root);
	@override late final _Translations$explore$status$de status = _Translations$explore$status$de._(_root);
	@override String episodeCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n,
		one: '${n} Folge',
		other: '${n} Folgen',
	);
	@override String get cast => 'Besetzung';
	@override String get characters => 'Charaktere';
	@override String get addToWatchlist => 'Zur Merkliste hinzufügen';
	@override String get removeFromWatchlist => 'Von Merkliste entfernen';
	@override String get addedToWatchlist => 'Zur Watchlist hinzugefügt';
	@override String get removedFromWatchlist => 'Von der Watchlist entfernt';
	@override String get watchlistUpdateFailed => 'Merkliste konnte nicht aktualisiert werden';
	@override String get watchlistNoMatch => 'Dieser Eintrag konnte keiner Watchlist zugeordnet werden';
	@override String get notInLibrary => 'Nicht in deiner Mediathek';
	@override String get inTheseLibraries => 'In diesen Mediatheken';
	@override String get checkingLibrary => 'Deine Mediathek wird überprüft …';
	@override String libraryCheckFailed({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n,
		one: '${n} Server konnte nicht geprüft werden',
		other: '${n} Server konnten nicht geprüft werden',
	);
	@override String get emptyTitle => 'Hier ist noch nichts';
	@override String emptyMessage({required Object source}) => 'Zeilen aus ${source} erscheinen hier, sobald sie Inhalte enthalten.';
	@override String searchHint({required Object source}) => '${source} durchsuchen';
	@override String searchEmpty({required Object query}) => 'Keine Ergebnisse für „${query}“';
	@override String searchPrompt({required Object source}) => 'Suche nach Filmen und Serien auf ${source}.';
	@override String get searchFailed => 'Suche fehlgeschlagen. Prüfe deine Verbindung und versuche es erneut.';
	@override late final _Translations$explore$badge$de badge = _Translations$explore$badge$de._(_root);
	@override late final _Translations$explore$stats$de stats = _Translations$explore$stats$de._(_root);
	@override late final _Translations$explore$season$de season = _Translations$explore$season$de._(_root);
	@override late final _Translations$explore$format$de format = _Translations$explore$format$de._(_root);
	@override late final _Translations$explore$sourceMaterial$de sourceMaterial = _Translations$explore$sourceMaterial$de._(_root);
	@override late final _Translations$explore$creditRole$de creditRole = _Translations$explore$creditRole$de._(_root);
	@override late final _Translations$explore$relation$de relation = _Translations$explore$relation$de._(_root);
	@override String broadcast({required Object day, required Object time}) => 'Läuft ${day} um ${time}';
	@override String broadcastWithZone({required Object day, required Object time, required Object timezone}) => 'Läuft ${day} um ${time} ${timezone}';
	@override late final _Translations$explore$detail$de detail = _Translations$explore$detail$de._(_root);
	@override String totalResults({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n,
		one: '${n} Ergebnis',
		other: '${n} Ergebnisse',
	);
}

// Path: liveTv
class _Translations$liveTv$de extends Translations$liveTv$en {
	_Translations$liveTv$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Live-TV';
	@override String get guide => 'TV-Programm';
	@override String get noChannels => 'Keine Kanäle verfügbar';
	@override String get noDvr => 'Auf keinem Server ist ein DVR konfiguriert';
	@override String get serverUnavailable => 'Der Live-TV-Server ist nicht verfügbar.';
	@override String get serverNotConnected => 'Der Live-TV-Server ist nicht verbunden.';
	@override String get noPrograms => 'Keine Programmdaten verfügbar';
	@override String get liveStreamFailed => 'Livestream fehlgeschlagen';
	@override String get unknownProgram => 'Unbekannte Sendung';
	@override String get unknownHub => 'Unbekannt';
	@override String get unknownError => 'Unbekannter Fehler';
	@override String channelNumber({required Object number}) => 'Kanal ${number}';
	@override String get unknownChannel => 'Unbekannter Kanal';
	@override String get live => 'LIVE';
	@override String get reloadGuide => 'TV-Programm neu laden';
	@override String get searchGuide => 'TV-Programm durchsuchen';
	@override String get searchHint => 'Kanäle & Sendungen suchen';
	@override String searchNoResults({required Object query}) => 'Keine Treffer für „${query}“';
	@override String get channelsSection => 'Kanäle';
	@override String get programsSection => 'Sendungen';
	@override String get now => 'Jetzt';
	@override String get today => 'Heute';
	@override String get tomorrow => 'Morgen';
	@override String get midnight => 'Mitternacht';
	@override String get overnight => 'Nacht';
	@override String get morning => 'Morgen';
	@override String get daytime => 'Tagsüber';
	@override String get evening => 'Abend';
	@override String get lateNight => 'Spätnacht';
	@override String get whatsOn => 'Jetzt im TV';
	@override String get watchChannel => 'Kanal ansehen';
	@override String get favorites => 'Favoriten';
	@override String get reorderFavorites => 'Favoriten sortieren';
	@override String get noFavoriteChannels => 'Keine Lieblingssender';
	@override String get noFavoriteChannelsHint => 'Zeige alle Sender an und halte dann einen Sender gedrückt, um ihn zu deinen Favoriten hinzuzufügen.';
	@override String get showAllChannels => 'Alle Sender anzeigen';
	@override String get favoritesLoadFailed => 'Favoriten konnten nicht geladen werden. Überprüfe deine Verbindung und versuche es erneut.';
	@override String get favoritesUpdateFailed => 'Favoriten konnten nicht aktualisiert werden. Prüfe deine Verbindung und versuche es erneut.';
	@override String get joinSession => 'Aktueller Sitzung beitreten';
	@override String watchFromStart({required Object minutes}) => 'Von Anfang an ansehen (vor ${minutes} Min.)';
	@override String get watchLive => 'Live ansehen';
	@override String get goToLive => 'Zum Live-Bild';
	@override String get record => 'Aufnehmen';
	@override String get recordEpisode => 'Episode aufnehmen';
	@override String get recordSeries => 'Serie aufnehmen';
	@override String get recordOptions => 'Aufnahmeoptionen';
	@override String get saveTo => 'Speichern in';
	@override String get recordings => 'Aufnahmen';
	@override String get scheduledRecordings => 'Geplant';
	@override String get recordingRules => 'Aufnahmeregeln';
	@override String get noScheduledRecordings => 'Keine geplanten Aufnahmen';
	@override String get manageRecording => 'Aufnahme verwalten';
	@override String get cancelRecording => 'Aufnahme abbrechen';
	@override String get cancelRecordingTitle => 'Diese Aufnahme abbrechen?';
	@override String cancelRecordingMessage({required Object title}) => '${title} wird nicht mehr aufgenommen.';
	@override String get deleteRule => 'Regel löschen';
	@override String get deleteRuleTitle => 'Aufnahmeregel löschen?';
	@override String deleteRuleMessage({required Object title}) => 'Zukünftige Episoden von ${title} werden nicht aufgenommen.';
	@override String get recordingScheduled => 'Aufnahme geplant';
	@override String get alreadyScheduled => 'Dieses Programm ist bereits geplant';
	@override String get dvrAdminRequired => 'DVR-Einstellungen erfordern ein Administratorkonto';
	@override String get recordingFailed => 'Aufnahme konnte nicht geplant werden';
	@override String get recordingTargetMissing => 'Aufnahmebibliothek konnte nicht ermittelt werden';
	@override String get recordNotAvailable => 'Aufnahme für dieses Programm nicht verfügbar';
	@override String get recordingCancelled => 'Aufnahme abgebrochen';
	@override String get recordingRuleDeleted => 'Aufnahmeregel gelöscht';
	@override String get processRecordingRules => 'Regeln neu bewerten';
	@override String get recordingInProgress => 'Wird jetzt aufgenommen';
	@override String recordingsCount({required Object count}) => '${count} geplant';
	@override String get editRule => 'Regel bearbeiten';
	@override String get editRuleAction => 'Bearbeiten';
	@override String get recordingRuleUpdated => 'Aufnahmeregel aktualisiert';
	@override String get guideReloadRequested => 'Aktualisierung des TV-Programms angefordert';
	@override String get guideReloadFailed => 'TV-Programm konnte nicht aktualisiert werden';
	@override String get rulesProcessRequested => 'Regelauswertung angefordert';
	@override String get rulesProcessFailed => 'Aufnahmeregeln konnten nicht neu ausgewertet werden';
	@override String get recordShow => 'Sendung aufnehmen';
	@override late final _Translations$liveTv$recordSettings$de recordSettings = _Translations$liveTv$recordSettings$de._(_root);
	@override String startingInMinutes({required Object minutes}) => 'Beginnt in ${minutes} Min.';
	@override String dayAtTime({required Object day, required Object time}) => '${day} um ${time}';
	@override String invalidPlaybackData({required Object product}) => '${product} hat ungültige Live-TV-Wiedergabedaten zurückgegeben';
	@override String get failedToStartChannel => 'Der Live-Sender konnte nicht gestartet werden';
	@override String get failedToBuildStreamUrl => 'Die Stream-URL konnte nicht erstellt werden';
	@override String playbackStartFailed({required Object reason}) => 'Sender konnte nicht gestartet werden: ${reason}';
	@override String channelSwitchFailed({required Object reason}) => 'Sender konnte nicht gewechselt werden: ${reason}';
}

// Path: collections
class _Translations$collections$de extends Translations$collections$en {
	_Translations$collections$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sammlungen';
	@override String get collection => 'Sammlung';
	@override String get empty => 'Sammlung ist leer';
	@override String get deleteCollection => 'Sammlung löschen';
	@override String deleteConfirm({required Object title}) => '„${title}“ löschen? Dies kann nicht rückgängig gemacht werden.';
	@override String get deleted => 'Sammlung gelöscht';
	@override String get deleteFailed => 'Sammlung konnte nicht gelöscht werden';
	@override String deleteFailedWithError({required Object error}) => 'Sammlung konnte nicht gelöscht werden: ${error}';
	@override String get selectCollection => 'Sammlung auswählen';
	@override String get collectionName => 'Sammlungsname';
	@override String get enterCollectionName => 'Sammlungsnamen eingeben';
	@override String get addedToCollection => 'Zur Sammlung hinzugefügt';
	@override String get errorAddingToCollection => 'Fehler beim Hinzufügen zur Sammlung';
	@override String get created => 'Sammlung erstellt';
	@override String get removeFromCollection => 'Aus Sammlung entfernen';
	@override String removeFromCollectionConfirm({required Object title}) => '„${title}“ aus dieser Sammlung entfernen?';
	@override String get removedFromCollection => 'Aus Sammlung entfernt';
	@override String get removeFromCollectionFailed => 'Entfernen aus Sammlung fehlgeschlagen';
	@override String removeFromCollectionError({required Object error}) => 'Fehler beim Entfernen aus der Sammlung: ${error}';
	@override String get searchCollections => 'Sammlungen durchsuchen...';
}

// Path: playlists
class _Translations$playlists$de extends Translations$playlists$en {
	_Translations$playlists$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wiedergabelisten';
	@override String get playlist => 'Wiedergabeliste';
	@override String get noPlaylists => 'Keine Wiedergabelisten gefunden';
	@override String get create => 'Wiedergabeliste erstellen';
	@override String get playlistName => 'Name der Wiedergabeliste';
	@override String get enterPlaylistName => 'Name der Wiedergabeliste eingeben';
	@override String get delete => 'Wiedergabeliste löschen';
	@override String get removeItem => 'Aus Wiedergabeliste entfernen';
	@override String get smartPlaylist => 'Intelligente Wiedergabeliste';
	@override String itemCount({required Object count}) => '${count} Elemente';
	@override String get oneItem => '1 Element';
	@override String get emptyPlaylist => 'Diese Wiedergabeliste ist leer';
	@override String get deleteConfirm => 'Wiedergabeliste löschen?';
	@override String deleteMessage({required Object name}) => '„${name}“ wirklich löschen?';
	@override String get created => 'Wiedergabeliste erstellt';
	@override String get deleted => 'Wiedergabeliste gelöscht';
	@override String get itemAdded => 'Zur Wiedergabeliste hinzugefügt';
	@override String get itemRemoved => 'Aus Wiedergabeliste entfernt';
	@override String get selectPlaylist => 'Wiedergabeliste auswählen';
	@override String get searchPlaylists => 'Wiedergabelisten durchsuchen...';
	@override String get errorCreating => 'Wiedergabeliste konnte nicht erstellt werden';
	@override String get errorDeleting => 'Wiedergabeliste konnte nicht gelöscht werden';
	@override String get errorLoading => 'Wiedergabelisten konnten nicht geladen werden';
	@override String get errorAdding => 'Konnte nicht zur Wiedergabeliste hinzugefügt werden';
	@override String get errorReordering => 'Element der Wiedergabeliste konnte nicht neu geordnet werden';
	@override String get errorRemoving => 'Konnte nicht aus der Wiedergabeliste entfernt werden';
}

// Path: music
class _Translations$music$de extends Translations$music$en {
	_Translations$music$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get goToAlbum => 'Zum Album';
	@override String get goToArtist => 'Zum Interpreten';
	@override String get instantMix => 'Instant-Mix';
	@override String get playNext => 'Als Nächstes abspielen';
	@override String get addToQueue => 'Zur Warteschlange hinzufügen';
	@override String discNumber({required Object n}) => 'Disc ${n}';
	@override String trackCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n,
		one: '${n} Titel',
		other: '${n} Titel',
	);
	@override String get nowPlaying => 'Wird wiedergegeben';
	@override String playingFrom({required Object title}) => 'Wiedergabe von ${title}';
	@override String get queue => 'Warteschlange';
	@override String get clearQueue => 'Warteschlange leeren';
	@override String get lyrics => 'Songtext';
	@override String get noLyrics => 'Kein Songtext verfügbar';
	@override String get sleepTimer => 'Schlaftimer';
	@override String get sleepTimerEndOfTrack => 'Ende des Titels';
	@override String sleepTimerMinutes({required Object n}) => '${n} Minuten';
	@override String get stopPlayback => 'Wiedergabe stoppen';
	@override String get previousTrack => 'Vorheriger Titel';
	@override String get nextTrack => 'Nächster Titel';
	@override String get repeat => 'Wiederholen';
	@override String get repeatAll => 'Alle wiederholen';
	@override String get repeatOne => 'Titel wiederholen';
	@override String get instantMixNoServer => 'Für einen Instant Mix ist kein Server verfügbar';
	@override String get instantMixFailed => 'Instant-Mix konnte nicht geladen werden';
	@override String get instantMixEmpty => 'Der Instant-Mix enthält keine Titel';
	@override String noAudioUrl({required Object track}) => 'Für ${track} ist keine Audio-URL verfügbar';
	@override late final _Translations$music$discography$de discography = _Translations$music$discography$de._(_root);
}

// Path: watchTogether
class _Translations$watchTogether$de extends Translations$watchTogether$en {
	_Translations$watchTogether$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gemeinsam Schauen';
	@override String get description => 'Inhalte synchron mit Freunden und Familie schauen';
	@override String get createRoom => 'Raum erstellen';
	@override String get creatingRoom => 'Raum wird erstellt…';
	@override String get joinRoom => 'Raum beitreten';
	@override String get joiningRoom => 'Raum wird beigetreten…';
	@override String get connecting => 'Verbinden…';
	@override String get relayPublic => 'Räume nutzen die öffentlichen Open Watch Party Relays.';
	@override String relayCustom({required Object url}) => 'Räume nutzen dein Relay unter ${url}.';
	@override String get recentRooms => 'Zuletzt verwendete Räume';
	@override String get roomActions => 'Raumaktionen';
	@override String get renameRoom => 'Raum umbenennen';
	@override String get removeRoom => 'Entfernen';
	@override String get enterRoomCode => 'Gib den 6-stelligen Code vom Host ein.';
	@override String get roomCode => 'Raumcode';
	@override String get paste => 'Einfügen';
	@override String get noCodeInClipboard => 'Die Zwischenablage enthält keinen Raumcode';
	@override String get copyCode => 'Code kopieren';
	@override String get codeCopied => 'Raumcode kopiert';
	@override String get shareInvite => 'Einladung teilen';
	@override String get qrShare => 'QR-Code teilen';
	@override String get qrHint => 'Scanne mit der Luroka-App, um diesem Raum beizutreten.';
	@override String get phasePlaying => 'Wird abgespielt';
	@override String get phasePaused => 'Pausiert';
	@override String get phaseWaiting => 'Warte auf alle';
	@override String get inviteCopied => 'Einladung kopiert. Füge sie in eine Nachricht ein.';
	@override String inviteMessage({required Object code}) => 'Tritt meinem Watch-Together-Raum in Luroka bei: luroka://watch?code=${code} — oder öffne Watch Together und gib ${code} ein.';
	@override String get openSessionControls => 'Sitzungssteuerung für Gemeinsam Schauen öffnen';
	@override String get reconnecting => 'Verbindung wird wiederhergestellt…';
	@override String get reconnectingDescription => 'Die Verbindung wurde unterbrochen. Du trittst dem Raum automatisch wieder bei.';
	@override String get connected => 'Verbunden';
	@override String get disconnected => 'Getrennt';
	@override String get youAreHost => 'Du bist der Host';
	@override String hostedBy({required Object name}) => 'Hostet von ${name}';
	@override String get hostControlsPlayback => 'Host steuert die Wiedergabe';
	@override String get anyoneCanControl => 'Alle können die Wiedergabe steuern';
	@override String get roomLocked => 'Raum gesperrt';
	@override String get nowPlaying => 'Wird gerade abgespielt';
	@override String get nothingPlaying => 'Nichts wird abgespielt';
	@override String get nothingPlayingHost => 'Spiele etwas aus einer beliebigen Bibliothek ab, um es mit dem Raum zu teilen.';
	@override String get nothingPlayingGuest => 'Wenn der Host etwas abspielt, öffnet es sich hier.';
	@override String get notShareable => 'Dieses Video hat keine Katalog-Übereinstimmung — nur Personen mit Zugriff auf denselben Server können es abspielen.';
	@override String get searching => 'Suche dieses Video in deinen Bibliotheken…';
	@override String get yourCopy => 'Deine Kopie';
	@override String get sharingYourCopy => 'Du teilst deine Kopie';
	@override String playingOtherLength({required Object difference}) => 'Deine Kopie wird abgespielt, ${difference}';
	@override String get mismatchTitle => 'Deine Kopie hat eine andere Länge';
	@override String mismatchDescription({required Object difference}) => 'Deine nächste Kopie ist ${difference} als das Video des Raums. Es könnte ein anderer Schnitt oder eine andere Version sein.';
	@override String get playAnyway => 'Trotzdem abspielen';
	@override String get chooseAnotherCopy => 'Andere Kopie wählen';
	@override String get dontPlay => 'Nicht abspielen';
	@override String get unavailableTitle => 'Du hast dieses Video nicht';
	@override String get unavailableDescription => 'Luroka konnte es nicht in deinen Bibliotheken finden. Wähle selbst eine Kopie oder suche erneut.';
	@override String get chooseCopy => 'Kopie wählen';
	@override String get searchAgain => 'Erneut suchen';
	@override String get noCandidates => 'Keine Kopien in deinen Bibliotheken gefunden.';
	@override String get choiceFailed => 'Diese Kopie konnte für den Raum nicht abgespielt werden';
	@override String lengthLonger({required Object duration}) => '${duration} länger';
	@override String lengthShorter({required Object duration}) => '${duration} kürzer';
	@override String get lengthSame => 'Gleiche Länge';
	@override String get lengthUnknown => 'Länge unbekannt';
	@override String get joinCurrentPlayback => 'Aktueller Wiedergabe beitreten';
	@override String get joinCurrentPlaybackDescription => 'Zu dem Inhalt wechseln, den der Host gerade ansieht';
	@override String get stopMedia => 'Video für alle stoppen';
	@override String get syncOffset => 'Sync-Offset';
	@override String get syncOffsetDescription => 'Verschiebe dein Video, wenn es vor oder hinter dem Raum läuft.';
	@override String offsetHint({required Object difference}) => 'Deine Kopie ist ${difference} als das Video des Raums.';
	@override String applyDifference({required Object offset}) => '${offset} verwenden';
	@override String get offsetMinusSecond => '-1 s';
	@override String get offsetMinusTenth => '-100 ms';
	@override String get offsetPlusTenth => '+100 ms';
	@override String get offsetPlusSecond => '+1 s';
	@override String get participants => 'Teilnehmer';
	@override String participantCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n,
		one: '${n} Teilnehmer',
		other: '${n} Teilnehmer',
	);
	@override String get hostBadge => 'HOST';
	@override String nameYou({required Object name}) => '${name} (Du)';
	@override String get playerIdle => 'Inaktiv';
	@override String get playerLoading => 'Lädt';
	@override String get playerReady => 'Bereit';
	@override String get playerBuffering => 'Puffert';
	@override String get matchSearching => 'Sucht';
	@override String get matchMatched => 'Hat das Video';
	@override String get matchMismatched => 'Andere Länge';
	@override String get matchUnavailable => 'Hat das Video nicht';
	@override String participantOffset({required Object offset}) => 'Offset ${offset}';
	@override String get makeHost => 'Zum Host machen';
	@override String get makeHostQuestion => 'Host übertragen?';
	@override String makeHostConfirm({required Object name}) => '${name} steuert dann die Wiedergabe und die Sitzung für alle.';
	@override String get transfer => 'Übertragen';
	@override String get removeParticipant => 'Aus dem Raum entfernen';
	@override String removeParticipantQuestion({required Object name}) => '${name} entfernen?';
	@override String removeParticipantConfirm({required Object name}) => '${name} verlässt den Raum. Du kannst mit dem Code wieder beitreten, sofern du den Raum nicht sperrst.';
	@override String get remove => 'Entfernen';
	@override String get roomSettings => 'Raumeinstellungen';
	@override String get letEveryoneControl => 'Alle dürfen die Wiedergabe steuern';
	@override String get lockRoom => 'Raum sperren';
	@override String get lockRoomDescription => 'Niemand Neues kann beitreten';
	@override String get leaveRoom => 'Raum verlassen';
	@override String get leaveRoomQuestion => 'Raum verlassen?';
	@override String get leaveRoomConfirm => 'Du kannst mit dem Raumcode wieder beitreten.';
	@override String get leave => 'Verlassen';
	@override String get endRoom => 'Raum beenden';
	@override String get endRoomQuestion => 'Raum beenden?';
	@override String get endRoomConfirm => 'Damit beendest du den Raum für alle.';
	@override String get end => 'Beenden';
	@override String get playBlockedTitle => 'Wiedergabe nicht gestartet';
	@override String get playBlockedDescription => 'Drücke Play, um mit dem Raum zu schauen.';
	@override late final _Translations$watchTogether$notices$de notices = _Translations$watchTogether$notices$de._(_root);
	@override late final _Translations$watchTogether$ended$de ended = _Translations$watchTogether$ended$de._(_root);
	@override late final _Translations$watchTogether$errors$de errors = _Translations$watchTogether$errors$de._(_root);
	@override String untitledEpisode({required Object number}) => 'Folge ${number}';
}

// Path: downloads
class _Translations$downloads$de extends Translations$downloads$en {
	_Translations$downloads$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Downloads';
	@override String get manage => 'Verwalten';
	@override String get tvShows => 'Serien';
	@override String get movies => 'Filme';
	@override String get music => 'Musik';
	@override String tracksQueued({required Object count}) => '${count} Titel zum Download in Warteschlange';
	@override String get noDownloads => 'Noch keine Downloads';
	@override String get noDownloadsDescription => 'Heruntergeladene Inhalte werden hier für die Offline-Wiedergabe angezeigt';
	@override String get downloadNow => 'Herunterladen';
	@override String get deleteDownload => 'Download löschen';
	@override String get retryDownload => 'Download wiederholen';
	@override String get downloadQueued => 'Download in Warteschlange';
	@override String get downloadResumed => 'Download fortgesetzt';
	@override String get serverErrorBitrate => 'Serverfehler: Datei überschreitet möglicherweise das Remote-Bitrate-Limit';
	@override String get storageFull => 'Die Downloads wurden angehalten, um den freien Speicherplatz zu schützen. Gib Speicherplatz frei oder wähle einen anderen Download-Speicherort und versuche es erneut.';
	@override String get storageUnavailable => 'Downloads wurden angehalten, weil der verfügbare Speicherplatz nicht geprüft werden konnte. Prüfe den Download-Speicherort und versuche es erneut.';
	@override String episodesQueued({required Object count}) => '${count} Episoden zum Download hinzugefügt';
	@override String get downloadDeleted => 'Download gelöscht';
	@override String deleteConfirm({required Object title}) => '"${title}" von diesem Gerät löschen?';
	@override String get deleteCollectionDownloads => 'Downloads löschen';
	@override String deleteCollectionDownloadsConfirm({required Object title}) => 'Alle Downloads in "${title}" von diesem Gerät löschen?';
	@override String get collectionDownloadsDeleted => 'Downloads gelöscht';
	@override String get cancelledDownloadTitle => 'Abgebrochener Download';
	@override String get cancelledDownloadMessage => 'Dieser Download wurde abgebrochen. Was möchtest du tun?';
	@override String get allEpisodesAlreadyDownloaded => 'Alle Episoden sind bereits heruntergeladen';
	@override String get resumeDownload => 'Download fortsetzen';
	@override String get cancelledDownload => 'Abgebrochener Download';
	@override String syncingFile({required Object file, required Object status}) => '${file} (${status} wird synchronisiert)';
	@override String downloadedFileClickToComplete({required Object file}) => '${file} heruntergeladen — zum Abschließen klicken';
	@override String get partialDownloadClickToComplete => 'Teilweise heruntergeladen — zum Abschließen klicken';
	@override String get deleting => 'Wird gelöscht …';
	@override String deletingWithProgress({required Object title, required Object current, required Object total}) => '${title} wird gelöscht … (${current} von ${total})';
	@override String get queuedTooltip => 'In Warteschlange';
	@override String queuedFilesTooltip({required Object files}) => 'In Warteschlange: ${files}';
	@override String get downloadingTooltip => 'Wird heruntergeladen …';
	@override String downloadingFilesTooltip({required Object files}) => '${files} werden heruntergeladen';
	@override String get noDownloadsTree => 'Keine Downloads';
	@override String get pauseAll => 'Alle pausieren';
	@override String get resumeAll => 'Alle fortsetzen';
	@override String get retryAll => 'Alle wiederholen';
	@override String get retryFailed => 'Fehlgeschlagene Downloads wiederholen';
	@override String get deleteAll => 'Alle löschen';
	@override String get selectVersion => 'Version auswählen';
	@override String get allEpisodes => 'Alle Episoden';
	@override String get unwatchedOnly => 'Nur ungesehene';
	@override String nextNUnwatched({required Object count}) => 'Nächste ${count} ungesehene';
	@override String get customAmount => 'Eigene Anzahl...';
	@override String get includeSpecials => 'Sonderfolgen einschließen';
	@override String get howManyEpisodes => 'Wie viele Episoden?';
	@override String get invalidEpisodeCount => 'Gib eine gültige Episodenanzahl ein.';
	@override String get keepSynced => 'Synchronisiert halten';
	@override String get downloadOnce => 'Einmal herunterladen';
	@override String keepNUnwatched({required Object count}) => '${count} ungesehene behalten';
	@override String get editSyncRule => 'Synchronisierungsregel bearbeiten';
	@override String get removeSyncRule => 'Synchronisierungsregel entfernen';
	@override String removeSyncRuleConfirm({required Object title}) => 'Synchronisierung von „${title}“ beenden? Heruntergeladene Episoden werden behalten.';
	@override String removeListSyncRuleConfirm({required Object title}) => '„${title}“ nicht mehr synchronisieren?';
	@override String get deleteSyncRuleDownloads => 'Zugehörige Downloads ebenfalls löschen';
	@override String get deleteSyncRuleDownloadsDescription => 'Downloads, die von einer anderen Synchronisierungsregel oder einem Profil verwendet werden, bleiben erhalten.';
	@override String syncRuleCreated({required Object count}) => 'Synchronisierungsregel erstellt – ${count} ungesehene Episoden werden behalten';
	@override String get syncRuleUpdated => 'Synchronisierungsregel aktualisiert';
	@override String get syncRuleRemoved => 'Synchronisierungsregel entfernt';
	@override String get syncRuleAndDownloadsRemoved => 'Synchronisierungsregel und zugehörige Downloads entfernt';
	@override String get syncRuleCleanupBusy => 'Synchronisierungsregeln werden gerade aktualisiert. Versuche es gleich noch einmal.';
	@override String get syncRuleCleanupUnavailable => 'Zugehörige Downloads konnten nicht sicher ermittelt werden. Verbinde den Server erneut und versuche es noch einmal, oder entferne die Regel, ohne die Downloads zu löschen.';
	@override String syncedNewEpisodes({required Object count, required Object title}) => '${count} neue Episoden für ${title} synchronisiert';
	@override String get activeSyncRules => 'Synchronisierungsregeln';
	@override String get noSyncRules => 'Keine Synchronisierungsregeln';
	@override String get manageSyncRule => 'Synchronisierung verwalten';
	@override String get editEpisodeCount => 'Episodenanzahl';
	@override String get editSyncFilter => 'Synchronisierungsfilter';
	@override String get syncAllItems => 'Alle Elemente synchronisieren';
	@override String get syncUnwatchedItems => 'Ungesehene Elemente synchronisieren';
	@override String syncRuleServerContext({required Object server, required Object status}) => 'Server: ${server} • ${status}';
	@override String get syncRuleAvailable => 'Verfügbar';
	@override String get syncRuleOffline => 'Offline';
	@override String get syncRuleSignInRequired => 'Anmeldung erforderlich';
	@override String get syncRuleAccessDenied => 'Zugriff verweigert';
	@override String get syncRuleNotAvailableForProfile => 'Für das aktuelle Profil nicht verfügbar';
	@override String get syncRuleUnknownServer => 'Unbekannter Server';
	@override String get syncRuleListCreated => 'Synchronisierungsregel erstellt';
	@override late final _Translations$downloads$backgroundWarning$de backgroundWarning = _Translations$downloads$backgroundWarning$de._(_root);
	@override String get options => 'Download-Optionen';
	@override late final _Translations$downloads$groupings$de groupings = _Translations$downloads$groupings$de._(_root);
	@override String get unknownLibrary => 'Unbekannte Mediathek';
	@override String get unknownShow => 'Unbekannte Serie';
	@override String get unknownSeason => 'Unbekannte Staffel';
	@override String get unknownAlbum => 'Unbekanntes Album';
	@override String completedOfTotal({required Object completed, required Object total}) => '${completed}/${total} abgeschlossen';
	@override String get errorFileNotFound => 'Datei nicht gefunden (404)';
	@override String get errorDownloadNotAllowed => 'Download vom Server nicht erlaubt (403)';
	@override String get errorDownloadFailed => 'Download fehlgeschlagen';
	@override String errorDownloadFailedWithReason({required Object reason}) => 'Download fehlgeschlagen: ${reason}';
	@override String errorHttpStatus({required Object status}) => 'Download fehlgeschlagen (HTTP ${status})';
	@override String errorPostProcessing({required Object reason}) => 'Nachbearbeitung fehlgeschlagen: ${reason}';
	@override String get reasonFileNotSaved => 'die Datei konnte auf diesem Gerät nicht gespeichert werden';
	@override String get reasonCannotResume => 'der unvollständige Download konnte nicht fortgesetzt werden';
	@override String get reasonDeviceStorageFull => 'auf diesem Gerät ist kein Speicherplatz mehr frei';
	@override String get notificationDownloading => 'Wird heruntergeladen …';
	@override String get notificationComplete => 'Download abgeschlossen';
	@override String get notificationPaused => 'Download pausiert';
}

// Path: shaders
class _Translations$shaders$de extends Translations$shaders$en {
	_Translations$shaders$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Shader';
	@override String get noShaderDescription => 'Keine Videoverbesserung';
	@override String get nvscalerDescription => 'NVIDIA-Bildskalierung für schärferes Video';
	@override String get artcnnVariantNeutral => 'Neutral';
	@override String get artcnnVariantDenoise => 'Rauschreduzierung';
	@override String get artcnnVariantDenoiseSharpen => 'Rauschreduzierung + Schärfen';
	@override String get qualityFast => 'Schnell';
	@override String get qualityHQ => 'Hohe Qualität';
	@override String get mode => 'Modus';
	@override String get importShader => 'Shader importieren';
	@override String get customShaderDescription => 'Benutzerdefinierter GLSL-Shader';
	@override String get shaderImported => 'Shader importiert';
	@override String get shaderImportFailed => 'Shader konnte nicht importiert werden';
	@override String get deleteShader => 'Shader löschen';
	@override String deleteShaderConfirm({required Object name}) => '"${name}" löschen?';
}

// Path: companionRemote
class _Translations$companionRemote$de extends Translations$companionRemote$en {
	_Translations$companionRemote$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Companion-Fernbedienung';
	@override String connectedTo({required Object name}) => 'Verbunden mit ${name}';
	@override String get unknownDevice => 'Unbekanntes Gerät';
	@override late final _Translations$companionRemote$session$de session = _Translations$companionRemote$session$de._(_root);
	@override late final _Translations$companionRemote$pairing$de pairing = _Translations$companionRemote$pairing$de._(_root);
	@override late final _Translations$companionRemote$remote$de remote = _Translations$companionRemote$remote$de._(_root);
	@override late final _Translations$companionRemote$errors$de errors = _Translations$companionRemote$errors$de._(_root);
	@override String get closedBeforeAuth => 'Die Verbindung wurde vor der Authentifizierung geschlossen';
}

// Path: videoSettings
class _Translations$videoSettings$de extends Translations$videoSettings$en {
	_Translations$videoSettings$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get playbackSpeed => 'Wiedergabegeschwindigkeit';
	@override String get normalSpeed => 'Normal';
	@override String sleepTimerActive({required Object duration}) => 'Aktiv (${duration})';
	@override String get zoom => 'Zoom';
	@override String get sleepTimer => 'Schlaftimer';
	@override String get audioSync => 'Audio-Synchronisation';
	@override String get subtitleSync => 'Untertitel-Synchronisation';
	@override String get hdr => 'HDR';
	@override String get hdrUnsupported => 'HDR ist hier nicht verfügbar – dieser Desktop-Compositor oder Videoausgang kann es nicht übertragen.';
	@override String get hdrToneMapping => 'HDR-Tone-Mapping';
	@override String get hdrToneMappingCompositor => 'Compositor';
	@override String get hdrToneMappingCompositorDescription => 'Die HDR-Metadaten der Quelle durchreichen und vom Desktop-Compositor anpassen lassen.';
	@override String get hdrToneMappingPlayer => 'Player';
	@override String get hdrToneMappingPlayerDescription => 'Im Player an die maximale Helligkeit des Displays anpassen und das Ergebnis anschließend an den Compositor melden.';
	@override String get hdrToneMappingFailed => 'Das HDR-Tone-Mapping konnte nicht geändert werden – der vorherige Modus ist weiterhin aktiv.';
	@override String get audioOutput => 'Audioausgabe';
	@override String get performanceOverlay => 'Leistungsanzeige';
	@override String get audioOutputDolbyAtmos => 'Dolby Atmos';
	@override String get audioOutputDolbyAudio => 'Dolby Audio';
	@override String get audioOutputSurround => 'Surround';
	@override String get audioOutputSpatial => 'Räumliches Audio';
	@override String get audioOutputStereo => 'Stereo';
	@override String get audioNormalization => 'Lautstärke normalisieren';
	@override String get audioNormalizationDisablesPassthrough => 'Dekodiert Audio zu PCM; Durchleitung ist aus, solange dies aktiv ist';
}

// Path: performanceOverlay
class _Translations$performanceOverlay$de extends Translations$performanceOverlay$en {
	_Translations$performanceOverlay$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get color => 'Farbe';
	@override String get performance => 'Leistung';
	@override String get buffer => 'Puffer';
	@override String get app => 'App';
	@override String get decoder => 'Decoder';
	@override String get rawDecoder => 'Raw-Decoder';
	@override String get tunneling => 'Tunneling';
	@override String get passthrough => 'Durchleitung';
	@override String get aspect => 'Seitenverhältnis';
	@override String get rotation => 'Drehung';
	@override String get dvSource => 'DV-Quelle';
	@override String get dvPath => 'DV-Pfad';
	@override String get dvRouteDecoder => 'Dolby-Vision-Decoder';
	@override String get dvRouteDecoderP81 => 'Dolby-Vision-Decoder (P7→8.1)';
	@override String get dvRouteBaseLayer => 'Basisebene';
	@override String get dvRouteBaseLayerHdr10 => 'HDR10-Basisebene';
	@override String get dvRouteBaseLayerHlg => 'HLG-Basisebene';
	@override String get dvRouteBaseLayerSdr => 'SDR-Basisebene';
	@override String get dvRouteReshaped => 'RPU umgeformt (gpu-next)';
	@override String get p7Conversion => 'P7-Konv.';
	@override String get sampleRate => 'Abtastrate';
	@override String get pixelFormat => 'Pixelformat';
	@override String get hwFormat => 'HW-Format';
	@override String get matrix => 'Matrix';
	@override String get primaries => 'Primärfarben';
	@override String get transfer => 'Transfer';
	@override String get renderFps => 'Render-FPS';
	@override String get displayFps => 'Display-FPS';
	@override String get avSync => 'A/V-Sync';
	@override String get dropped => 'Verworfen';
	@override String get dvRpus => 'DV-RPUs';
	@override String get dvRpuAverage => 'DV-RPU Ø';
	@override String get dvSampleAverage => 'DV-Sample Ø';
	@override String get maxLuma => 'Max. Luma';
	@override String get minLuma => 'Min. Luma';
	@override String get maxCll => 'MaxCLL';
	@override String get maxFall => 'MaxFALL';
	@override String get cacheUsed => 'Cache genutzt';
	@override String get cacheLimit => 'Cache-Limit';
	@override String get speed => 'Geschwindigkeit';
	@override String get player => 'Player';
	@override String get memory => 'Speicher';
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
	@override String dvRpuFailed({required Object converted, required Object failures}) => '${converted} (${failures} fehlgeschlagen)';
}

// Path: externalPlayer
class _Translations$externalPlayer$de extends Translations$externalPlayer$en {
	_Translations$externalPlayer$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Externer Player';
	@override String get useExternalPlayer => 'Externen Player verwenden';
	@override String get useExternalPlayerDescription => 'Videos in einer anderen App öffnen';
	@override String get selectPlayer => 'Player auswählen';
	@override String get customPlayers => 'Benutzerdefinierte Player';
	@override String get systemDefault => 'Systemstandard';
	@override String get addCustomPlayer => 'Benutzerdefinierten Player hinzufügen';
	@override String get playerName => 'Playername';
	@override String get playerNameHint => 'Mein Player';
	@override String get playerCommand => 'Befehl';
	@override String get playerPackage => 'Paketname';
	@override String get playerUrlScheme => 'URL-Schema';
	@override String get off => 'Aus';
	@override String get launchFailed => 'Externer Player konnte nicht geöffnet werden';
	@override String appNotInstalled({required Object name}) => '${name} ist nicht installiert';
	@override String get playInExternalPlayer => 'In externem Player abspielen';
}

// Path: metadataEdit
class _Translations$metadataEdit$de extends Translations$metadataEdit$en {
	_Translations$metadataEdit$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get editMetadata => 'Bearbeiten...';
	@override String get screenTitle => 'Metadaten bearbeiten';
	@override String get basicInfo => 'Grundinformationen';
	@override String get artwork => 'Grafiken';
	@override String get advancedSettings => 'Erweiterte Einstellungen';
	@override String get title => 'Titel';
	@override String get sortTitle => 'Sortiertitel';
	@override String get originalTitle => 'Originaltitel';
	@override String get releaseDate => 'Erscheinungsdatum';
	@override String get contentRating => 'Altersfreigabe';
	@override String get studio => 'Studio';
	@override String get tagline => 'Slogan';
	@override String get summary => 'Zusammenfassung';
	@override String get poster => 'Poster';
	@override String get background => 'Hintergrund';
	@override String get logo => 'Logo';
	@override String get squareArt => 'Quadratisches Bild';
	@override String get selectPoster => 'Poster auswählen';
	@override String get selectBackground => 'Hintergrund auswählen';
	@override String get selectLogo => 'Logo auswählen';
	@override String get selectSquareArt => 'Quadratisches Bild auswählen';
	@override String get fromUrl => 'Über URL';
	@override String get uploadFile => 'Datei hochladen';
	@override String get enterImageUrl => 'Bild-URL eingeben';
	@override String get imageUrl => 'Bild-URL';
	@override String get metadataUpdated => 'Metadaten aktualisiert';
	@override String get metadataUpdateFailed => 'Metadaten konnten nicht aktualisiert werden';
	@override String get artworkUpdated => 'Grafiken aktualisiert';
	@override String get artworkUpdateFailed => 'Grafiken konnten nicht aktualisiert werden';
	@override String get noArtworkAvailable => 'Keine Grafiken verfügbar';
	@override String artworkOption({required Object index}) => 'Grafikoption ${index}';
	@override String selectedArtworkOption({required Object index}) => 'Grafikoption ${index}, ausgewählt';
	@override String get notSet => 'Nicht festgelegt';
	@override String get libraryDefault => 'Mediatheksstandard';
	@override String get accountDefault => 'Kontostandard';
	@override String get seriesDefault => 'Serienstandard';
	@override String get episodeSorting => 'Episodensortierung';
	@override String get oldestFirst => 'Älteste zuerst';
	@override String get newestFirst => 'Neueste zuerst';
	@override String get keep => 'Behalten';
	@override String get allEpisodes => 'Alle Episoden';
	@override String latestEpisodes({required Object count}) => '${count} neueste Episoden';
	@override String get latestEpisode => 'Neueste Episode';
	@override String episodesAddedPastDays({required Object count}) => 'Episoden der letzten ${count} Tage';
	@override String get deleteAfterPlaying => 'Episoden nach Wiedergabe löschen';
	@override String get never => 'Nie';
	@override String get afterADay => 'Nach einem Tag';
	@override String get afterAWeek => 'Nach einer Woche';
	@override String get afterAMonth => 'Nach einem Monat';
	@override String get onNextRefresh => 'Bei nächster Aktualisierung';
	@override String get seasons => 'Staffeln';
	@override String get show => 'Anzeigen';
	@override String get hide => 'Ausblenden';
	@override String get episodeOrdering => 'Episodenreihenfolge';
	@override String get tmdbAiring => 'The Movie Database (Ausstrahlung)';
	@override String get tvdbAiring => 'TheTVDB (Ausstrahlung)';
	@override String get tvdbAbsolute => 'TheTVDB (absolut)';
	@override String get metadataLanguage => 'Metadaten-Sprache';
	@override String get useOriginalTitle => 'Originaltitel verwenden';
	@override String get preferredAudioLanguage => 'Bevorzugte Audiosprache';
	@override String get preferredSubtitleLanguage => 'Bevorzugte Untertitelsprache';
	@override String get subtitleMode => 'Automatische Untertitelauswahl';
	@override String get manuallySelected => 'Manuell ausgewählt';
	@override String get shownWithForeignAudio => 'Bei fremdsprachigem Audio anzeigen';
	@override String get alwaysEnabled => 'Immer aktiviert';
	@override String get tags => 'Tags';
	@override String get addTag => 'Tag hinzufügen';
	@override String get genre => 'Genre';
	@override String get director => 'Regisseur';
	@override String get writer => 'Autor';
	@override String get producer => 'Produzent';
	@override String get country => 'Land';
	@override String get collection => 'Sammlung';
	@override String get label => 'Label';
	@override String get quickTag => 'Schnell-Tag...';
}

// Path: matchScreen
class _Translations$matchScreen$de extends Translations$matchScreen$en {
	_Translations$matchScreen$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get match => 'Zuordnen...';
	@override String get fixMatch => 'Zuordnung korrigieren...';
	@override String get unmatch => 'Zuordnung aufheben';
	@override String get unmatchConfirm => 'Diese Zuordnung löschen? Plex behandelt sie als nicht zugeordnet, bis sie neu zugeordnet wird.';
	@override String get unmatchSuccess => 'Zuordnung aufgehoben';
	@override String get unmatchFailed => 'Zuordnung konnte nicht aufgehoben werden';
	@override String get matchApplied => 'Zuordnung angewendet';
	@override String get matchFailed => 'Zuordnung konnte nicht angewendet werden';
	@override String get titleHint => 'Titel';
	@override String get yearHint => 'Jahr';
	@override String get search => 'Suchen';
	@override String get noMatchesFound => 'Keine Treffer gefunden';
}

// Path: serverTasks
class _Translations$serverTasks$de extends Translations$serverTasks$en {
	_Translations$serverTasks$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Serveraufgaben';
	@override String get failedToLoad => 'Aufgaben konnten nicht geladen werden';
	@override String get noTasks => 'Keine laufenden Aufgaben';
}

// Path: trakt
class _Translations$trakt$de extends Translations$trakt$en {
	_Translations$trakt$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Trakt';
	@override String get connected => 'Verbunden';
	@override String connectedAs({required Object username}) => 'Verbunden als @${username}';
	@override String get disconnectConfirm => 'Trakt-Konto trennen?';
	@override String get disconnectConfirmBody => 'Luroka sendet keine Ereignisse mehr an Trakt. Du kannst jederzeit erneut verbinden.';
	@override String get scrobble => 'Echtzeit-Scrobbling';
	@override String get scrobbleDescription => 'Sende Play-, Pause- und Stopp-Ereignisse während der Wiedergabe an Trakt.';
	@override String get watchedSync => 'Gesehen-Status synchronisieren';
	@override String get watchedSyncDescription => 'Wenn du Inhalte in Luroka als gesehen markierst, werden sie auch auf Trakt markiert.';
}

// Path: seerr
class _Translations$seerr$de extends Translations$seerr$en {
	_Translations$seerr$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Seerr';
	@override String get connectTitle => 'Seerr verbinden';
	@override String get serverUrl => 'Server-URL';
	@override String get serverUrlHelper => 'Die Adresse deiner Seerr-Instanz';
	@override String get checkServer => 'Weiter';
	@override String get signInWithJellyfin => 'Mit Jellyfin anmelden';
	@override String get signInWithEmby => 'Mit Emby anmelden';
	@override String get signInWithLocal => 'Lokales Konto verwenden';
	@override String get email => 'E-Mail';
	@override String get noSignInMethods => 'Diese Seerr-Instanz bietet keine von Luroka unterstützte Anmeldemethode.';
	@override String get instance => 'Instanz';
	@override String get disconnectConfirm => 'Seerr trennen?';
	@override String get disconnectConfirmBody => 'Luroka vergisst diese Seerr-Instanz. Jederzeit erneut verbinden.';
	@override String get request => 'Anfragen';
	@override String get request4k => 'In 4K anfragen';
	@override String get seasons => 'Staffeln';
	@override String get allSeasons => 'Alle Staffeln';
	@override String get advancedOptions => 'Erweitert';
	@override String get destinationServer => 'Zielserver';
	@override String get qualityProfile => 'Qualitätsprofil';
	@override String get rootFolder => 'Stammordner';
	@override String get languageProfile => 'Sprachprofil';
	@override String get tags => 'Tags';
	@override String get noTags => 'Keine Tags';
	@override String defaultOption({required Object name}) => '${name} (Standard)';
	@override String get animeNote => 'Diese Serie ist ein Anime.';
	@override String get requestSubmitted => 'Anfrage gesendet';
	@override String requestFailed({required Object error}) => 'Anfrage fehlgeschlagen: ${error}';
	@override String get requestsLoadFailed => 'Anfrageoptionen konnten nicht geladen werden';
	@override String get nothingToRequest => 'Alles ist bereits verfügbar oder angefragt.';
	@override String get statusAvailable => 'Verfügbar';
	@override String get statusPartiallyAvailable => 'Teilweise verfügbar';
	@override String get statusRequested => 'Angefragt';
	@override String get statusProcessing => 'Wird verarbeitet';
	@override String get statusBlocklisted => 'Auf der Sperrliste';
	@override String couldNotReach({required Object url, required Object error}) => '${url} nicht erreichbar: ${error}';
	@override String noInstanceAtUrl({required Object url, required Object status}) => 'Keine Seerr-Instanz unter ${url} (HTTP ${status})';
	@override String get behindAuthProxy => 'Ein authentifizierender Reverse-Proxy (SSO oder HTTP-Auth) hat anstelle von Seerr geantwortet. Luroka kann sich nicht dadurch anmelden: Lass den Pfad /api/v1 von Seerr den Proxy für diese App umgehen, oder verwende eine Adresse, die Seerr direkt erreicht.';
	@override String get invalidUrl => 'Gib eine Serveradresse ein, z. B. https://seerr.example.com';
	@override String get quickConnectUnsupported => 'Diese Seerr-Instanz unterstützt Quick Connect nicht. Dafür ist Seerr 3.4 oder neuer erforderlich.';
	@override String get notInitialized => 'Die Ersteinrichtung dieser Seerr-Instanz wurde noch nicht abgeschlossen';
	@override String get noPlexTokenForReauth => 'Für die erneute Anmeldung ist kein Plex-Token verfügbar';
	@override String get noStoredCredentials => 'Für die erneute Anmeldung sind keine gespeicherten Anmeldedaten verfügbar';
	@override String get signInRejected => 'Die Anmeldung wurde abgelehnt';
	@override String get noSessionCookie => 'Seerr hat kein Sitzungscookie ausgestellt';
	@override String get freshCookieRejected => 'Seerr hat das neue Sitzungscookie abgelehnt';
	@override String get noUserInformation => 'Seerr hat keine Benutzerinformationen zurückgegeben';
	@override String get sessionRejectedAfterReauth => 'Die Sitzung wurde nach der erneuten Anmeldung abgelehnt';
	@override String get permissionDenied => 'Seerr hat diese Aktion abgelehnt: Dein Konto hat nicht mehr die erforderliche Berechtigung';
	@override String get permissionRevoked => 'Du hast keine Berechtigung mehr, dies anzufragen';
}

// Path: services
class _Translations$services$de extends Translations$services$en {
	_Translations$services$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dienste';
	@override String get hubSubtitle => 'Wiedergabefortschritt synchronisieren und neue Titel anfragen.';
	@override String get discoverySection => 'Entdecken & Anfragen';
	@override String get trackingSection => 'Sehverlauf & Listen';
	@override String get seerrDescription => 'Finde Filme und Serien auf deinem Seerr-Server und stelle Anfragen.';
	@override String get tmdbDescription => 'Entdecke Filme und Serien, Poster, Bewertungen und Details.';
	@override String get traktDescription => 'Verfolge Filme und Serien, synchronisiere den Gesehen-Status und verwalte deine Merkliste.';
	@override String get malDescription => 'Halte deine Anime-Liste und deinen Sehverlauf synchron.';
	@override String get anilistDescription => 'Verfolge Anime und synchronisiere deinen Fortschritt mit AniList.';
	@override String get simklDescription => 'Verfolge deine Filme, Serien und Anime mit Simkl.';
	@override String get mdblistDescription => 'Verbinde deine MDBList-Listen und Filmbewertungen.';
	@override String connectionIntro({required Object service}) => 'Verbinde ${service} mit deinem aktuellen Luroka-Profil. Hier kannst du die Verbindung und ihre Optionen jederzeit verwalten.';
	@override String connectService({required Object service}) => '${service} verbinden';
	@override String get seerrConnectDescription => 'Verbinde deinen Seerr-Server, um Filme und Serien in Luroka zu entdecken und anzufragen.';
	@override String get seerrServerStep => 'Gib die Adresse ein, mit der du Seerr öffnest. Wir prüfen, welche Anmeldemethoden dein Server unterstützt.';
	@override String get seerrSignInStep => 'Wähle eine Anmeldemethode, die dein Server unterstützt.';
	@override String get integrations => 'Integrationen';
	@override String get notConnected => 'Nicht verbunden';
	@override String connectedAs({required Object username}) => 'Verbunden als @${username}';
	@override String get scrobble => 'Fortschritt automatisch verfolgen';
	@override String get scrobbleDescription => 'Aktualisiere deine Liste, wenn du eine Folge oder einen Film beendest.';
	@override String disconnectConfirm({required Object service}) => '${service} trennen?';
	@override String disconnectConfirmBody({required Object service}) => 'Luroka aktualisiert ${service} nicht mehr. Jederzeit erneut verbinden.';
	@override String connectFailed({required Object service}) => 'Verbindung zu ${service} fehlgeschlagen. Versuche es erneut.';
	@override late final _Translations$services$names$de names = _Translations$services$names$de._(_root);
	@override late final _Translations$services$simklReconnect$de simklReconnect = _Translations$services$simklReconnect$de._(_root);
	@override late final _Translations$services$deviceCode$de deviceCode = _Translations$services$deviceCode$de._(_root);
	@override late final _Translations$services$oauthProxy$de oauthProxy = _Translations$services$oauthProxy$de._(_root);
	@override late final _Translations$services$pendingAuth$de pendingAuth = _Translations$services$pendingAuth$de._(_root);
	@override late final _Translations$services$libraryFilter$de libraryFilter = _Translations$services$libraryFilter$de._(_root);
}

// Path: addServer
class _Translations$addServer$de extends Translations$addServer$en {
	_Translations$addServer$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String addMediaBrowserTitle({required Object product}) => '${product}-Server hinzufügen';
	@override String get serverUrls => 'Server-URLs';
	@override String get serverUrlsHelper => 'Mehrere URLs möglich, durch Kommas getrennt.';
	@override String get findServer => 'Server finden';
	@override String searchingLocalMediaBrowserServers({required Object product}) => 'Suche nach lokalen ${product}-Servern …';
	@override String localMediaBrowserServers({required Object product}) => 'Lokale ${product}-Server';
	@override String get username => 'Benutzername';
	@override String get password => 'Passwort';
	@override String get signIn => 'Anmelden';
	@override String get change => 'Ändern';
	@override String get required => 'Erforderlich';
	@override String couldNotReachServer({required Object error}) => 'Server nicht erreichbar: ${error}';
	@override String signInFailed({required Object error}) => 'Anmeldung fehlgeschlagen: ${error}';
	@override String quickConnectFailed({required Object error}) => 'Quick Connect fehlgeschlagen: ${error}';
	@override String get addPlexTitle => 'Mit Plex anmelden';
	@override String get pinExpired => 'PIN ist vor der Anmeldung abgelaufen. Bitte erneut versuchen.';
	@override String failedToRegisterAccount({required Object error}) => 'Konto konnte nicht registriert werden: ${error}';
	@override String enterMediaBrowserUrlError({required Object product}) => 'Gib die URL deines ${product}-Servers ein';
	@override String get addConnectionTitle => 'Verbindung hinzufügen';
	@override String addConnectionTitleScoped({required Object name}) => 'Zu ${name} hinzufügen';
	@override String get signInWithPlexCard => 'Mit Plex anmelden';
	@override String get signInWithPlexCardSubtitle => 'Dieses Gerät autorisieren. Geteilte Server werden hinzugefügt.';
	@override String get signInWithPlexCardSubtitleScoped => 'Ein Plex-Konto autorisieren. Startseite-Benutzer werden zu Profilen.';
	@override String connectToMediaBrowserCard({required Object product}) => 'Mit ${product} verbinden';
	@override String get connectToMediaBrowserCardSubtitle => 'Gib Server-URL, Benutzername und Passwort ein.';
	@override String connectToMediaBrowserCardSubtitleScoped({required Object product, required Object name}) => 'Melde dich bei deinem ${product}-Server an. Wird mit ${name} verknüpft.';
	@override String get borrowFromAnotherProfile => 'Von einem anderen Profil ausleihen';
	@override String get borrowFromAnotherProfileSubtitle => 'Verbindung eines anderen Profils wiederverwenden. PIN-geschützte Profile erfordern eine PIN.';
	@override String get invalidCredentials => 'Ungültiger Benutzername oder ungültiges Passwort';
	@override String get authResponseNotJson => 'Die Authentifizierungsantwort war kein gültiges JSON';
	@override String get authResponseIncomplete => 'Die Anmeldeantwort des Servers war unvollständig';
	@override String get quickConnectRejected => 'Quick Connect wurde vom Server abgelehnt';
	@override String get quickConnectNotJson => 'Die Quick Connect-Antwort war kein gültiges JSON';
	@override String get quickConnectMissingFields => 'In der Quick Connect-Antwort fehlt ein Code oder Geheimnis';
	@override String get quickConnectPollRejected => 'Die Quick Connect-Abfrage wurde vom Server abgelehnt';
	@override String get serverTimedOut => 'Der Server hat nicht rechtzeitig geantwortet';
	@override String get responseNotJson => 'Die Serverantwort war kein gültiges JSON';
	@override String responseMissingIdentity({required Object product}) => 'In der Antwort fehlt eine ID oder ein Servername – ist dies ein ${product}-Server?';
	@override String probeFailed({required Object error}) => 'Server nicht erreichbar: ${error}';
	@override String enterAtLeastOneUrl({required Object product}) => 'Gib mindestens eine URL eines ${product}-Servers ein';
	@override String noReachableServer({required Object product}) => 'Es wurde kein erreichbarer ${product}-Server gefunden';
	@override String urlsPointToDifferentServers({required Object product}) => 'Diese URLs verweisen auf verschiedene ${product}-Server';
	@override String urlDoesNotMatchServer({required Object product}) => 'Diese URL gehört nicht zum ${product}-Server';
	@override String get redirectUnsupported => 'Der Server hat zu einer nicht unterstützten URL weitergeleitet';
	@override String redirectDifferentHost({required Object product}) => 'Der Server hat zu einem anderen Host weitergeleitet. Gib die endgültige ${product}-URL direkt ein.';
	@override String get redirectInsecure => 'Der Server hat von HTTPS zu einer unsicheren URL weitergeleitet';
	@override String redirectUnsupportedEnterFinal({required Object product}) => 'Der Server hat zu einer nicht unterstützten URL weitergeleitet. Gib die endgültige ${product}-URL direkt ein.';
}

// Path: appIcon.names
class _Translations$appIcon$names$de extends Translations$appIcon$names$en {
	_Translations$appIcon$names$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get midnight => 'Midnight';
	@override String get ember => 'Ember';
	@override String get paper => 'Paper';
	@override String get oled => 'OLED';
	@override String get line => 'Line';
	@override String get ocean => 'Ocean';
	@override String get ultraviolet => 'Ultraviolett';
	@override String get matcha => 'Matcha';
	@override String get sunset => 'Sunset';
	@override String get gold => 'Gold';
	@override String get titanium => 'Titan';
	@override String get glass => 'Glas';
	@override String get crt => 'CRT';
	@override String get vhs => 'VHS';
	@override String get synthwave => 'Synthwave';
	@override String get pixel => 'Pixel';
	@override String get neon => 'Neon';
	@override String get sticker => 'Sticker';
	@override String get ticket => 'Ticket';
	@override String get pop => 'Pop';
	@override String get strata => 'Strata';
	@override String get facet => 'Facet';
	@override String get tilde => 'Tilde';
}

// Path: common.ratingSource
class _Translations$common$ratingSource$de extends Translations$common$ratingSource$en {
	_Translations$common$ratingSource$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get critic => 'Kritiker';
	@override String get audience => 'Publikum';
	@override String get imdb => 'IMDb';
	@override String get tmdb => 'TMDB';
	@override String get rottenTomatoes => 'Rotten Tomatoes';
	@override String get simkl => 'Simkl';
	@override String get mal => 'MyAnimeList';
	@override String get anilist => 'AniList';
	@override String get trakt => 'Trakt';
	@override String get rottenTomatoesCritic => 'Rotten-Tomatoes-Kritiker';
	@override String get rottenTomatoesAudience => 'Rotten-Tomatoes-Publikum';
	@override String get metacritic => 'Metacritic';
	@override String get letterboxd => 'Letterboxd';
}

// Path: common.mediaKind
class _Translations$common$mediaKind$de extends Translations$common$mediaKind$en {
	_Translations$common$mediaKind$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get movie => 'Film';
	@override String get show => 'Serie';
	@override String get season => 'Staffel';
	@override String get episode => 'Episode';
	@override String get artist => 'Interpret';
	@override String get album => 'Album';
	@override String get track => 'Titel';
	@override String get collection => 'Sammlung';
	@override String get playlist => 'Wiedergabeliste';
	@override String get clip => 'Clip';
	@override String get photo => 'Foto';
	@override String get folder => 'Ordner';
}

// Path: supporter.errors
class _Translations$supporter$errors$de extends Translations$supporter$errors$en {
	_Translations$supporter$errors$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get storeUnavailable => 'Käufe sind nicht verfügbar. Prüfe, ob du im Store angemeldet bist und Käufe auf diesem Gerät erlaubt sind.';
	@override String get productNotFound => 'Der Supporter-Kauf ist in deinem Store gerade nicht verfügbar.';
	@override String get productQueryFailed => 'Der Preis konnte nicht geladen werden. Prüfe deine Verbindung und versuche es erneut.';
	@override String get purchaseFailed => 'Der Kauf ist nicht durchgegangen. Versuche es erneut.';
	@override String get restoreFailed => 'Der Store war nicht erreichbar, um deine Käufe wiederherzustellen. Versuche es erneut.';
	@override String get nothingToRestore => 'Für dieses Store-Konto wurde kein Supporter-Kauf gefunden.';
}

// Path: themeEditor.slots
class _Translations$themeEditor$slots$de extends Translations$themeEditor$slots$en {
	_Translations$themeEditor$slots$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get bg => 'Hintergrund';
	@override String get surface => 'Oberfläche';
	@override String get outline => 'Kontur';
	@override String get text => 'Text';
	@override String get textMuted => 'Sekundärtext';
	@override String get accent => 'Akzent';
}

// Path: themeEditor.contrast
class _Translations$themeEditor$contrast$de extends Translations$themeEditor$contrast$en {
	_Translations$themeEditor$contrast$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get textOnBg => 'Text auf Hintergrund';
	@override String get textOnSurface => 'Text auf Oberfläche';
	@override String get textMutedOnBg => 'Sekundärtext auf Hintergrund';
	@override String get textMutedOnSurface => 'Sekundärtext auf Oberfläche';
	@override String get accentOnBg => 'Akzent auf Hintergrund';
	@override String get accentOnSurface => 'Akzent auf Oberfläche';
	@override String get labelOnAccent => 'Button-Label auf Akzent';
}

// Path: hotkeys.actions
class _Translations$hotkeys$actions$de extends Translations$hotkeys$actions$en {
	_Translations$hotkeys$actions$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get playPause => 'Wiedergabe/Pause';
	@override String get volumeUp => 'Lauter';
	@override String get volumeDown => 'Leiser';
	@override String seekForward({required Object seconds}) => 'Vorspulen (${seconds}s)';
	@override String seekBackward({required Object seconds}) => 'Zurückspulen (${seconds}s)';
	@override String get fullscreenToggle => 'Vollbild umschalten';
	@override String get muteToggle => 'Stumm umschalten';
	@override String get subtitleToggle => 'Untertitel umschalten';
	@override String get audioTrackNext => 'Nächste Audiospur';
	@override String get subtitleTrackNext => 'Nächste Untertitelspur';
	@override String get chapterNext => 'Nächstes Kapitel';
	@override String get chapterPrevious => 'Vorheriges Kapitel';
	@override String get episodeNext => 'Nächste Episode';
	@override String get episodePrevious => 'Vorherige Episode';
	@override String get speedIncrease => 'Geschwindigkeit erhöhen';
	@override String get speedDecrease => 'Geschwindigkeit verringern';
	@override String get speedReset => 'Geschwindigkeit zurücksetzen';
	@override String get zoomIn => 'Vergrößern';
	@override String get zoomOut => 'Verkleinern';
	@override String get zoomReset => 'Zoom zurücksetzen';
	@override String get subSeekNext => 'Zum nächsten Untertitel springen';
	@override String get subSeekPrev => 'Zum vorherigen Untertitel springen';
	@override String get shaderToggle => 'Shader umschalten';
	@override String get skipMarker => 'Intro/Abspann überspringen';
	@override String get screenshot => 'Screenshot aufnehmen';
}

// Path: videoControls.pipErrors
class _Translations$videoControls$pipErrors$de extends Translations$videoControls$pipErrors$en {
	_Translations$videoControls$pipErrors$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get androidVersion => 'Erfordert Android 8.0 oder neuer';
	@override String get iosVersion => 'Erfordert iOS 15.0 oder neuer';
	@override String get permissionDisabled => 'Bild-in-Bild ist deaktiviert. Aktiviere es in den Systemeinstellungen.';
	@override String get notSupported => 'Dieses Gerät unterstützt den Bild-in-Bild-Modus nicht';
	@override String get voSwitchFailed => 'Videoausgabe für Bild-in-Bild konnte nicht umgeschaltet werden';
	@override String get failed => 'Bild-in-Bild konnte nicht gestartet werden';
	@override String get prepareFailed => 'Bild-in-Bild konnte nicht vorbereitet werden';
	@override String unknown({required Object error}) => 'Ein Fehler ist aufgetreten: ${error}';
}

// Path: accountPreferences.groups
class _Translations$accountPreferences$groups$de extends Translations$accountPreferences$groups$en {
	_Translations$accountPreferences$groups$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get audioAndSubtitles => 'Audio & Untertitel';
	@override String get libraryDisplay => 'Mediathek';
	@override String get personalMedia => 'Persönliche Medien';
}

// Path: accountPreferences.subtitleModes
class _Translations$accountPreferences$subtitleModes$de extends Translations$accountPreferences$subtitleModes$en {
	_Translations$accountPreferences$subtitleModes$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get none => 'Manuell ausgewählt';
	@override String get noneDescription => 'Untertitel niemals von selbst einschalten.';
	@override String get defaultMode => 'Spurmarkierungen folgen';
	@override String get defaultModeDescription => 'Die Standard- und Erzwungen-Markierungen jeder Untertitelspur verwenden.';
	@override String get always => 'Immer aktiviert';
	@override String get alwaysDescription => 'Eine Untertitelspur in der bevorzugten Sprache einschalten, sofern eine vorhanden ist.';
	@override String get onlyForced => 'Nur erzwungene Untertitel';
	@override String get onlyForcedDescription => 'Nur die als erzwungen markierten Spuren laden.';
	@override String get smart => 'Bei fremdsprachigem Audio anzeigen';
	@override String get smartDescription => 'Untertitel nur einschalten, wenn das Audio in einer anderen Sprache ist.';
}

// Path: accountPreferences.subtitleAccessibilityOptions
class _Translations$accountPreferences$subtitleAccessibilityOptions$de extends Translations$accountPreferences$subtitleAccessibilityOptions$en {
	_Translations$accountPreferences$subtitleAccessibilityOptions$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get preferNonSdh => 'Nicht-SDH-Untertitel bevorzugen';
	@override String get preferSdh => 'SDH-Untertitel bevorzugen';
	@override String get onlySdh => 'Nur SDH-Untertitel';
	@override String get onlyNonSdh => 'Nur Nicht-SDH-Untertitel';
}

// Path: accountPreferences.forcedSubtitleOptions
class _Translations$accountPreferences$forcedSubtitleOptions$de extends Translations$accountPreferences$forcedSubtitleOptions$en {
	_Translations$accountPreferences$forcedSubtitleOptions$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get preferNonForced => 'Nicht erzwungene Untertitel bevorzugen';
	@override String get preferForced => 'Erzwungene Untertitel bevorzugen';
	@override String get onlyForced => 'Nur erzwungene Untertitel';
	@override String get onlyNonForced => 'Nur nicht erzwungene Untertitel';
}

// Path: accountPreferences.watchedIndicatorOptions
class _Translations$accountPreferences$watchedIndicatorOptions$de extends Translations$accountPreferences$watchedIndicatorOptions$en {
	_Translations$accountPreferences$watchedIndicatorOptions$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get none => 'Nie';
	@override String get moviesAndShows => 'Filme und Serien';
	@override String get movies => 'Nur Filme';
	@override String get shows => 'Nur Serien';
}

// Path: accountPreferences.mediaReviewsOptions
class _Translations$accountPreferences$mediaReviewsOptions$de extends Translations$accountPreferences$mediaReviewsOptions$en {
	_Translations$accountPreferences$mediaReviewsOptions$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get usersAndCritics => 'Benutzer und Kritiker';
	@override String get usersOnly => 'Nur Benutzer';
	@override String get criticsOnly => 'Nur Kritiker';
	@override String get nobody => 'Ausgeblendet';
}

// Path: discover.person
class _Translations$discover$person$de extends Translations$discover$person$en {
	_Translations$discover$person$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get born => 'Geboren';
	@override String get died => 'Gestorben';
	@override String get birthplace => 'Geburtsort';
	@override String dateWithAge({required Object date, required Object age}) => '${date} (Alter ${age})';
	@override String dateWithAgeAtDeath({required Object date, required Object age}) => '${date} (gestorben im Alter von ${age})';
}

// Path: libraries.tabs
class _Translations$libraries$tabs$de extends Translations$libraries$tabs$en {
	_Translations$libraries$tabs$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get recommended => 'Empfohlen';
	@override String get browse => 'Durchsuchen';
	@override String get collections => 'Sammlungen';
	@override String get playlists => 'Wiedergabelisten';
}

// Path: libraries.groupings
class _Translations$libraries$groupings$de extends Translations$libraries$groupings$en {
	_Translations$libraries$groupings$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gruppierung';
	@override String get all => 'Alle';
	@override String get movies => 'Filme';
	@override String get shows => 'Serien';
	@override String get seasons => 'Staffeln';
	@override String get episodes => 'Episoden';
	@override String get artists => 'Interpreten';
	@override String get albums => 'Alben';
	@override String get tracks => 'Titel';
	@override String get folders => 'Ordner';
}

// Path: libraries.filterCategories
class _Translations$libraries$filterCategories$de extends Translations$libraries$filterCategories$en {
	_Translations$libraries$filterCategories$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get genre => 'Genre';
	@override String get year => 'Jahr';
	@override String get contentRating => 'Altersfreigabe';
	@override String get tag => 'Tag';
	@override String get unwatched => 'Ungesehene';
	@override String get unplayed => 'Nicht abgespielt';
	@override String get favorites => 'Favoriten';
	@override String get filePath => 'Dateipfad';
}

// Path: libraries.sortLabels
class _Translations$libraries$sortLabels$de extends Translations$libraries$sortLabels$en {
	_Translations$libraries$sortLabels$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Titel';
	@override String get dateAdded => 'Hinzugefügt am';
	@override String get releaseDate => 'Erscheinungsdatum';
	@override String get rating => 'Bewertung';
	@override String get communityRating => 'Communitybewertung';
	@override String get criticRating => 'Kritikerbewertung';
	@override String get userRating => 'Benutzerbewertung';
	@override String get datePlayed => 'Wiedergabedatum';
	@override String get playCount => 'Wiedergaben';
	@override String get productionYear => 'Produktionsjahr';
	@override String get runtime => 'Laufzeit';
	@override String get officialRating => 'Offizielle Bewertung';
	@override String get premiereDate => 'Veröffentlichungsdatum';
	@override String get startDate => 'Startdatum';
	@override String get airTime => 'Sendezeit';
	@override String get studio => 'Studio';
	@override String get random => 'Zufällig';
	@override String get dateShared => 'Datum geteilt';
	@override String get latestEpisodeAirDate => 'Ausstrahlungsdatum der neuesten Folge';
	@override String get lastEpisodeDateAdded => 'Hinzugefügt am (neueste Folge)';
	@override String get dateDownloaded => 'Heruntergeladen am';
	@override String get size => 'Größe';
	@override String get library => 'Mediathek';
}

// Path: libraries.advancedFilters
class _Translations$libraries$advancedFilters$de extends Translations$libraries$advancedFilters$en {
	_Translations$libraries$advancedFilters$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get include => 'Enthalten';
	@override String get exclude => 'Ausgeschlossen';
	@override String get any => 'Beliebig';
	@override String get yes => 'Ja';
	@override String get no => 'Nein';
	@override String not({required Object value}) => 'Nicht ${value}';
	@override String valueCount({required Object count}) => '${count} ausgewählt';
	@override String valueCountExcluded({required Object count}) => '${count} ausgeschlossen';
	@override String get searchValues => 'Werte suchen';
	@override String get noValues => 'Keine Werte';
	@override String get matchContains => 'Enthält';
	@override String get matchNotContains => 'Enthält nicht';
	@override String get matchIs => 'Ist';
	@override String get matchIsNot => 'Ist nicht';
	@override String get matchBeginsWith => 'Beginnt mit';
	@override String get matchEndsWith => 'Endet mit';
	@override String get textHint => 'Tippen zum Filtern';
	@override String get from => 'Von';
	@override String get to => 'Bis';
	@override String range({required Object from, required Object to}) => '${from} bis ${to}';
	@override String atLeast({required Object value}) => '${value} und mehr';
	@override String atMost({required Object value}) => 'Bis ${value}';
	@override String dateLastDays({required Object count}) => 'Letzte ${count} Tage';
	@override String get dateLastYear => 'Letztes Jahr';
	@override String dateOlderThanDays({required Object count}) => 'Älter als ${count} Tage';
	@override String get dateOlderThanYear => 'Älter als ein Jahr';
}

// Path: explore.rows
class _Translations$explore$rows$de extends Translations$explore$rows$en {
	_Translations$explore$rows$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get watchlist => 'Merkliste';
	@override String get recommendedMovies => 'Empfohlene Filme';
	@override String get recommendedShows => 'Empfohlene Serien';
	@override String get trendingMovies => 'Angesagte Filme';
	@override String get trendingShows => 'Angesagte Serien';
	@override String get popularMovies => 'Beliebte Filme';
	@override String get popularShows => 'Beliebte Serien';
	@override String get trendingAnime => 'Angesagte Anime';
	@override String get suggestedAnime => 'Empfohlene Anime';
	@override String get airingAnime => 'Beste derzeit laufende Anime';
	@override String get popularAnime => 'Beliebteste Anime';
	@override String get trending => 'Angesagt';
	@override String get upcomingMovies => 'Kommende Filme';
	@override String get upcomingShows => 'Kommende Serien';
}

// Path: explore.status
class _Translations$explore$status$de extends Translations$explore$status$en {
	_Translations$explore$status$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get airing => 'Laufend';
	@override String get ended => 'Beendet';
	@override String get canceled => 'Abgesetzt';
	@override String get upcoming => 'Demnächst';
}

// Path: explore.badge
class _Translations$explore$badge$de extends Translations$explore$badge$en {
	_Translations$explore$badge$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String rankPopular({required Object n}) => '#${n} beliebt';
	@override String rankAiring({required Object n}) => '#${n} derzeit ausgestrahlt';
	@override String rankRated({required Object n}) => '#${n} bewertet';
	@override String rankTrending({required Object n}) => '#${n} angesagt';
	@override String rankSeasonal({required Object n, required Object season}) => '#${n} in ${season}';
	@override String watchingNow({required Object n}) => '${n} schauen gerade';
	@override String get available => 'Verfügbar';
	@override String get partiallyAvailable => 'Teilweise verfügbar';
	@override String get availableIn4k => '4K verfügbar';
	@override String get requested => 'Angefragt';
	@override String get pendingApproval => 'Genehmigung ausstehend';
	@override String get processing => 'Wird verarbeitet';
	@override String get declined => 'Abgelehnt';
	@override String get requestFailed => 'Anfrage fehlgeschlagen';
	@override String get requested4k => '4K angefragt';
	@override String seasonsAvailable({required Object available, required Object total}) => '${available}/${total} Staffeln';
	@override String nextEpisodeIn({required Object episode, required Object duration}) => 'Folge ${episode} in ${duration}';
	@override String nextAiringIn({required Object duration}) => 'Nächste in ${duration}';
	@override String episodesShort({required Object n}) => '${n} Folgen';
	@override String minutesPerEpisode({required Object n}) => '${n} Min./Folge';
	@override String get adult => '18+';
}

// Path: explore.stats
class _Translations$explore$stats$de extends Translations$explore$stats$en {
	_Translations$explore$stats$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String listed({required Object n}) => '${n} gelistet';
	@override String viewersDay({required Object n}) => '${n} heute gesehen';
	@override String viewersWeek({required Object n}) => '${n} diese Woche gesehen';
	@override String viewersMonth({required Object n}) => '${n} diesen Monat gesehen';
	@override String viewersYear({required Object n}) => '${n} dieses Jahr gesehen';
	@override String viewersAllTime({required Object n}) => '${n} Zuschauer';
	@override String planning({required Object n}) => '${n} haben es geplant';
	@override String favorited({required Object n}) => '${n} Favoriten';
	@override String dropRate({required Object percent}) => '${percent} haben es abgebrochen';
	@override String comments({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n,
		one: '${n} Kommentar',
		other: '${n} Kommentare',
	);
	@override String votes({required Object n}) => '${n} Stimmen';
	@override String watching({required Object n}) => '${n} schauen es gerade';
	@override String completed({required Object n}) => '${n} abgeschlossen';
	@override String onHold({required Object n}) => '${n} pausiert';
	@override String dropped({required Object n}) => '${n} abgebrochen';
}

// Path: explore.season
class _Translations$explore$season$de extends Translations$explore$season$en {
	_Translations$explore$season$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get winter => 'Winter';
	@override String get spring => 'Frühling';
	@override String get summer => 'Sommer';
	@override String get fall => 'Herbst';
	@override String withYear({required Object season, required Object year}) => '${season} ${year}';
}

// Path: explore.format
class _Translations$explore$format$de extends Translations$explore$format$en {
	_Translations$explore$format$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get tv => 'TV';
	@override String get tvShort => 'TV-Kurzfilm';
	@override String get movie => 'Film';
	@override String get special => 'Special';
	@override String get ova => 'OVA';
	@override String get ona => 'ONA';
	@override String get music => 'Musik';
	@override String get other => 'Sonstiges';
}

// Path: explore.sourceMaterial
class _Translations$explore$sourceMaterial$de extends Translations$explore$sourceMaterial$en {
	_Translations$explore$sourceMaterial$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get original => 'Original';
	@override String get manga => 'Manga';
	@override String get lightNovel => 'Light Novel';
	@override String get novel => 'Roman';
	@override String get visualNovel => 'Visual Novel';
	@override String get game => 'Spiel';
	@override String get webComic => 'Webcomic';
	@override String get musicRelease => 'Musik';
	@override String get otherMedia => 'Sonstiges';
}

// Path: explore.creditRole
class _Translations$explore$creditRole$de extends Translations$explore$creditRole$en {
	_Translations$explore$creditRole$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get actor => 'Schauspieler';
	@override String get director => 'Regisseur';
	@override String get writer => 'Autor';
	@override String get producer => 'Produzent';
	@override String get creator => 'Schöpfer';
	@override String get composer => 'Komponist';
}

// Path: explore.relation
class _Translations$explore$relation$de extends Translations$explore$relation$en {
	_Translations$explore$relation$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get prequel => 'Prequel';
	@override String get sequel => 'Fortsetzung';
	@override String get sideStory => 'Nebengeschichte';
	@override String get spinOff => 'Spin-off';
	@override String get alternativeVersion => 'Alternative Version';
	@override String get summary => 'Zusammenfassung';
	@override String get parentStory => 'Hauptgeschichte';
	@override String get adaptation => 'Adaption';
	@override String get other => 'Verwandt';
}

// Path: explore.detail
class _Translations$explore$detail$de extends Translations$explore$detail$en {
	_Translations$explore$detail$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get originalTitle => 'Originaltitel';
	@override String get alsoKnownAs => 'Auch bekannt als';
	@override String get studios => 'Studios';
	@override String get country => 'Land';
	@override String get language => 'Sprache';
	@override String get released => 'Erschienen';
	@override String get physicalRelease => 'Auf Disc';
	@override String get ended => 'Beendet';
	@override String addedOn({required Object date}) => 'Hinzugefügt am ${date}';
	@override String get yourRating => 'Deine Bewertung';
	@override String get budget => 'Budget';
	@override String get revenue => 'Einspielergebnis';
	@override String get contentAdvisory => 'Altersfreigabe';
	@override String get tags => 'Tags';
	@override String get revealSpoilerTags => 'Spoiler-Tags anzeigen';
	@override String get links => 'Links';
	@override String get watchOn => 'Ansehen auf';
	@override String get watchTrailer => 'Trailer ansehen';
	@override String openOn({required Object site}) => 'Auf ${site} öffnen';
	@override String get crew => 'Crew';
	@override String get ratings => 'Bewertungen';
	@override String get schedule => 'Sendetermine';
	@override String recommendedByUsers({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n,
		one: 'Von ${n} Nutzer empfohlen',
		other: 'Von ${n} Nutzern empfohlen',
	);
	@override String recommendedBy({required Object who}) => 'Empfohlen von ${who}';
	@override String favoritedBy({required Object who}) => 'Favorisiert von ${who}';
	@override String unairedEpisodes({required Object n}) => '${n} noch nicht ausgestrahlt';
	@override String recommendedByPercent({required Object percent}) => 'Von ${percent} der Zuschauer empfohlen';
	@override String get relatedTitles => 'Verwandte Titel';
	@override String get background => 'Hintergrund';
}

// Path: liveTv.recordSettings
class _Translations$liveTv$recordSettings$de extends Translations$liveTv$recordSettings$en {
	_Translations$liveTv$recordSettings$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get startEarly => 'Früher starten (Sekunden)';
	@override String get endLate => 'Später beenden (Sekunden)';
	@override String get newOnly => 'Nur neue Episoden';
	@override String get anyChannel => 'Auf jedem Sender aufnehmen';
	@override String get anyTime => 'Zu jeder Zeit aufnehmen';
	@override String get skipInLibrary => 'Episoden überspringen, die schon in der Bibliothek sind';
	@override String get keepUpTo => 'Zu behaltende Episoden';
	@override String get keepUpToHint => '0 behält alle Episoden';
}

// Path: music.discography
class _Translations$music$discography$de extends Translations$music$discography$en {
	_Translations$music$discography$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get singlesAndEps => 'Singles & EPs';
	@override String get live => 'Live';
	@override String get compilations => 'Kompilationen';
}

// Path: watchTogether.notices
class _Translations$watchTogether$notices$de extends Translations$watchTogether$notices$en {
	_Translations$watchTogether$notices$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String pressedPlay({required Object name}) => '${name} hat Play gedrückt';
	@override String get playbackStarted => 'Wiedergabe gestartet';
	@override String paused({required Object name}) => '${name} hat pausiert';
	@override String get playbackPaused => 'Wiedergabe pausiert';
	@override String jumpedTo({required Object name, required Object position}) => '${name} ist zu ${position} gesprungen';
	@override String roomJumpedTo({required Object position}) => 'Zu ${position} gesprungen';
	@override String changedSpeed({required Object name, required Object speed}) => '${name} hat die Geschwindigkeit auf ${speed} gesetzt';
	@override String speedChanged({required Object speed}) => 'Geschwindigkeit auf ${speed} gesetzt';
	@override String startedMedia({required Object name, required Object title}) => '${name} hat ${title} gestartet';
	@override String mediaStarted({required Object title}) => 'Jetzt läuft ${title}';
	@override String stoppedMedia({required Object name}) => '${name} hat das Video gestoppt';
	@override String get mediaStopped => 'Das Video wurde gestoppt';
	@override String waitingFor({required Object name}) => 'Warten auf ${name} …';
	@override String get waitingForSomeone => 'Warte, bis alle aufgeholt haben…';
	@override String get finished => 'Beendet';
	@override String hostChangedTo({required Object name}) => '${name} ist jetzt der Host';
	@override String get youAreNowHost => 'Du bist jetzt der Host';
	@override String joined({required Object name}) => '${name} ist beigetreten';
	@override String left({required Object name}) => '${name} hat die Sitzung verlassen';
	@override String get controlRefused => 'Nur der Host kann die Wiedergabe steuern';
	@override String get searchFailed => 'Einige Server konnten das Video des Raums nicht durchsuchen';
	@override String get playBlocked => 'Drücke Play, um zu starten';
	@override String get shareFailed => 'Dieses Video konnte nicht mit dem Raum geteilt werden';
	@override String get notShared => 'Heruntergeladene Videos werden nicht mit dem Raum geteilt';
	@override String get openFailed => 'Das Video des Raums konnte nicht geöffnet werden';
}

// Path: watchTogether.ended
class _Translations$watchTogether$ended$de extends Translations$watchTogether$ended$en {
	_Translations$watchTogether$ended$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get ended => 'Der Host hat den Raum beendet';
	@override String get kicked => 'Du wurdest aus dem Raum entfernt';
	@override String get expired => 'Der Raum ist abgelaufen';
	@override String get replaced => 'Du bist diesem Raum auf einem anderen Gerät beigetreten';
	@override String get lost => 'Verbindung zum Raum verloren';
}

// Path: watchTogether.errors
class _Translations$watchTogether$errors$de extends Translations$watchTogether$errors$en {
	_Translations$watchTogether$errors$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get invalidCode => 'Das ist kein Raumcode. Codes bestehen aus 6 Buchstaben und Ziffern ohne 0, 1, I, L oder O.';
	@override String get roomNotFound => 'Kein Raum hat diesen Code. Er ist möglicherweise beendet.';
	@override String get roomFull => 'Dieser Raum ist voll.';
	@override String get roomLocked => 'Der Host hat diesen Raum gesperrt.';
	@override String get relayFull => 'Watch Together ist gerade ausgelastet. Versuche es später erneut.';
	@override String get unreachable => 'Das Watch-Together-Relay war nicht erreichbar. Prüfe deine Verbindung.';
	@override String get rateLimited => 'Zu viele Versuche. Warte einen Moment und versuche es erneut.';
	@override String get clientBlocked => 'Diese Luroka-Version kann das Relay nicht nutzen. Aktualisiere die App.';
	@override String get forbidden => 'Nur der Host kann das.';
	@override String get notInRoom => 'Du bist in keinem Raum.';
	@override String get alreadyInRoom => 'Du bist bereits in einem Raum.';
	@override String get resumeFailed => 'Dem Raum konnte nicht wieder beigetreten werden.';
	@override String get unsupported => 'Das Relay unterstützt das nicht.';
	@override String get generic => 'Etwas ist schiefgelaufen. Versuche es erneut.';
}

// Path: downloads.backgroundWarning
class _Translations$downloads$backgroundWarning$de extends Translations$downloads$backgroundWarning$en {
	_Translations$downloads$backgroundWarning$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get bannerBlocked => 'Downloads werden gestoppt, wenn du die App verlässt';
	@override String get bannerDegraded => 'Downloads im Hintergrund sind möglicherweise eingeschränkt';
	@override String get bannerAction => 'Details';
	@override String get sheetTitle => 'Downloads im Hintergrund sind blockiert';
	@override String get sheetTitleDegraded => 'Downloads im Hintergrund sind möglicherweise eingeschränkt';
	@override String get sheetIntro => 'Android verhindert, dass Luroka zuverlässig im Hintergrund herunterlädt.';
	@override String get sheetIntroDegraded => 'Dein Gerät schränkt ein, wann Luroka im Hintergrund herunterladen kann.';
	@override String get reasonBackgroundRestricted => 'Die Hintergrundnutzung von Luroka ist eingeschränkt. Stelle die Akku- oder Hintergrundnutzung auf „Uneingeschränkt“.';
	@override String get reasonStandbyRestricted => 'Android hat Luroka in einen eingeschränkten Standby-Modus versetzt. Stelle die Akkunutzung auf „Uneingeschränkt“.';
	@override String get reasonDownloadChannelBlocked => 'Download-Benachrichtigungen sind deaktiviert. Fortschritt und Steuerelemente sind daher möglicherweise nicht verfügbar.';
	@override String get reasonNotificationsDisabled => 'Benachrichtigungen sind deaktiviert. Ab Android 13 sind sie für lange Downloads im Hintergrund erforderlich.';
	@override String get reasonDataSaver => 'Der Datensparmodus ist aktiviert und blockiert Downloads im Hintergrund über mobile Daten. Über Wi-Fi sollten Downloads weiterhin funktionieren.';
	@override String get reasonOemUnknown => 'Downloads wurden wiederholt gestoppt, während Luroka im Hintergrund war. Prüfe die Einstellungen zur Akku- oder Hintergrundnutzung von Luroka.';
	@override String get openSettings => 'Einstellungen öffnen';
	@override String get stillNotWorking => 'Gerätespezifische Hilfe';
	@override String get stillNotWorkingDescription => 'Sieh dir die Schritte für dein Gerät an oder sende bei anhaltendem Problem ein Protokoll über Einstellungen › Protokolle anzeigen.';
	@override String get dialogTitle => 'Downloads werden möglicherweise nicht abgeschlossen';
	@override String get dialogDownloadAnyway => 'Trotzdem herunterladen';
	@override String get dialogFixFirst => 'Zuerst beheben';
	@override String get statusTile => 'Downloads im Hintergrund';
	@override String get statusOk => 'Ausführung im Hintergrund erlaubt';
	@override String get statusBlocked => 'Durch Systemeinstellungen blockiert';
	@override String get statusDegraded => 'Durch Systemeinstellungen eingeschränkt';
	@override String get statusUnknown => 'Noch nicht geprüft';
	@override String get settingsUnavailable => 'Die Systemeinstellungen konnten auf diesem Gerät nicht geöffnet werden';
	@override String get linkUnavailable => 'dontkillmyapp.com konnte auf diesem Gerät nicht geöffnet werden';
}

// Path: downloads.groupings
class _Translations$downloads$groupings$de extends Translations$downloads$groupings$en {
	_Translations$downloads$groupings$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get library => 'Mediathek';
	@override String get collections => 'Sammlungen';
}

// Path: companionRemote.session
class _Translations$companionRemote$session$de extends Translations$companionRemote$session$en {
	_Translations$companionRemote$session$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get startingServer => 'Remote-Server wird gestartet...';
	@override String get hostAddress => 'Host-Adresse';
	@override String get connected => 'Verbunden';
	@override String get serverRunning => 'Remote-Server aktiv';
	@override String get serverStopped => 'Remote-Server gestoppt';
	@override String get serverRunningDescription => 'Mobilgeräte in deinem Netzwerk können sich mit dieser App verbinden';
	@override String get serverStoppedDescription => 'Starte den Server, um Mobilgeräten die Verbindung zu ermöglichen';
	@override String get usePhoneToControl => 'Verwende dein Mobilgerät, um diese App zu steuern';
	@override String get startServer => 'Server starten';
	@override String get stopServer => 'Server stoppen';
	@override String get minimize => 'Minimieren';
	@override String get manualAddressHint => 'Manuelle Verbindungsadresse:';
}

// Path: companionRemote.pairing
class _Translations$companionRemote$pairing$de extends Translations$companionRemote$pairing$en {
	_Translations$companionRemote$pairing$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get discoveryDescription => 'Luroka-Geräte mit demselben Plex-Konto erscheinen hier';
	@override String get hostAddressHint => '192.168.1.100:48632';
	@override String get connecting => 'Verbinden...';
	@override String get searchingForDevices => 'Suche nach Geräten...';
	@override String get noDevicesFound => 'Keine Geräte in deinem Netzwerk gefunden';
	@override String get noDevicesHint => 'Öffne Luroka auf dem Desktop und nutze dasselbe WLAN';
	@override String get availableDevices => 'Verfügbare Geräte';
	@override String get manualConnection => 'Manuelle Verbindung';
	@override String get cryptoInitFailed => 'Sichere Verbindung konnte nicht gestartet werden. Melde dich zuerst bei Plex an.';
	@override String get validationHostRequired => 'Bitte Host-Adresse eingeben';
	@override String get validationHostFormat => 'Format muss IP:Port sein (z. B. 192.168.1.100:48632)';
	@override String get connectionTimedOut => 'Zeitüberschreitung bei der Verbindung. Nutze auf beiden Geräten dasselbe Netzwerk.';
	@override String get sessionNotFound => 'Gerät nicht gefunden. Stelle sicher, dass Luroka auf dem Host läuft.';
	@override String get authFailed => 'Authentifizierung fehlgeschlagen. Beide Geräte benötigen dasselbe Plex-Konto.';
	@override String failedToConnect({required Object error}) => 'Verbindung fehlgeschlagen: ${error}';
}

// Path: companionRemote.remote
class _Translations$companionRemote$remote$de extends Translations$companionRemote$remote$en {
	_Translations$companionRemote$remote$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get disconnectConfirm => 'Möchtest du die Verbindung zur Fernsteuerungssitzung trennen?';
	@override String get reconnecting => 'Verbindung wird wiederhergestellt...';
	@override String attemptOf({required Object current}) => 'Versuch ${current} von 5';
	@override String get retryNow => 'Jetzt wiederholen';
	@override String get tabRemote => 'Fernbedienung';
	@override String get tabPlay => 'Wiedergabe';
	@override String get tabMore => 'Mehr';
	@override String get menu => 'Menü';
	@override String get tabNavigation => 'Tab-Navigation';
	@override String get tabDiscover => 'Entdecken';
	@override String get tabLibraries => 'Mediatheken';
	@override String get tabSearch => 'Suche';
	@override String get tabDownloads => 'Downloads';
	@override String get tabSettings => 'Einstellungen';
	@override String get previous => 'Zurück';
	@override String get playPause => 'Wiedergabe/Pause';
	@override String get next => 'Weiter';
	@override String get seekBack => 'Zurückspulen';
	@override String get stop => 'Stopp';
	@override String get seekForward => 'Vorspulen';
	@override String get volume => 'Lautstärke';
	@override String get volumeDown => 'Leiser';
	@override String get volumeUp => 'Lauter';
	@override String get fullscreen => 'Vollbild';
	@override String get subtitles => 'Untertitel';
	@override String get audio => 'Audio';
	@override String get searchHint => 'Auf dem Desktop suchen …';
}

// Path: companionRemote.errors
class _Translations$companionRemote$errors$de extends Translations$companionRemote$errors$en {
	_Translations$companionRemote$errors$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get noNetworkInterface => 'Keine Netzwerkschnittstelle gefunden';
	@override String get authenticationFailed => 'Authentifizierung fehlgeschlagen';
	@override String serverStartFailed({required Object error}) => 'Remote-Server konnte nicht gestartet werden: ${error}';
	@override String commandFailed({required Object error}) => 'Remote-Befehl konnte nicht gesendet werden: ${error}';
	@override String get joinTimedOut => 'Zeitüberschreitung beim Beitreten zur Sitzung';
	@override String get failedToConnectAnyAddress => 'Keine Verbindung zu einer Adresse möglich';
	@override String connectionLostAfterAttempts({required Object attempts}) => 'Verbindung nach ${attempts} Versuchen verloren';
	@override String get connectionLost => 'Verbindung verloren';
}

// Path: services.names
class _Translations$services$names$de extends Translations$services$names$en {
	_Translations$services$names$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get mal => 'MyAnimeList';
	@override String get anilist => 'AniList';
	@override String get simkl => 'Simkl';
	@override String get seerr => 'Seerr';
	@override String get mdblist => 'MDBList';
}

// Path: services.simklReconnect
class _Translations$services$simklReconnect$de extends Translations$services$simklReconnect$en {
	_Translations$services$simklReconnect$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Simkl wieder verbinden';
	@override String get subtitle => 'Simkl stellt die Anmeldemethode dieser Verbindung ein. Die Wiederherstellung öffnet simkl.com, um Luroka zu bestätigen — Luroka sieht nie dein Passwort. Deine Wiedergabe-Historie bleibt auf Simkl.';
}

// Path: services.deviceCode
class _Translations$services$deviceCode$de extends Translations$services$deviceCode$en {
	_Translations$services$deviceCode$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String title({required Object service}) => 'Luroka auf ${service} aktivieren';
	@override String get instructions => 'Scanne den QR-Code oder rufe die unten angegebene Adresse auf und gib diesen Code ein:';
	@override String openToActivate({required Object service}) => '${service} zum Aktivieren öffnen';
	@override String get copyCode => 'Aktivierungscode kopieren';
	@override String get waitingForAuthorization => 'Warte auf Autorisierung…';
	@override String get codeCopied => 'Code kopiert';
}

// Path: services.oauthProxy
class _Translations$services$oauthProxy$de extends Translations$services$oauthProxy$en {
	_Translations$services$oauthProxy$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String title({required Object service}) => 'Bei ${service} anmelden';
	@override String get body => 'Scanne diesen QR-Code oder öffne die URL auf einem beliebigen Gerät.';
	@override String openToSignIn({required Object service}) => '${service} zum Anmelden öffnen';
}

// Path: services.pendingAuth
class _Translations$services$pendingAuth$de extends Translations$services$pendingAuth$en {
	_Translations$services$pendingAuth$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get copyUrl => 'Anmelde-URL kopieren';
	@override String get urlCopied => 'URL kopiert';
}

// Path: services.libraryFilter
class _Translations$services$libraryFilter$de extends Translations$services$libraryFilter$en {
	_Translations$services$libraryFilter$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mediatheksfilter';
	@override String get subtitleAllSyncing => 'Alle Mediatheken werden synchronisiert';
	@override String get subtitleNoneSyncing => 'Nichts wird synchronisiert';
	@override String subtitleBlocked({required Object count}) => '${count} ausgeschlossen';
	@override String subtitleAllowed({required Object count}) => '${count} zugelassen';
	@override String get mode => 'Filtermodus';
	@override String get modeBlacklist => 'Ausschlussliste';
	@override String get modeWhitelist => 'Zulassungsliste';
	@override String get modeHintBlacklist => 'Alle Mediatheken außer den unten markierten synchronisieren.';
	@override String get modeHintWhitelist => 'Nur die unten markierten Mediatheken synchronisieren.';
	@override String get libraries => 'Mediatheken';
	@override String get noLibraries => 'Keine Mediatheken verfügbar';
}

/// The flat map containing all translations for locale <de>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsDe {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'mobileLibrary.pickerSubtitle' => 'Wähle eine Sammlung zum Erkunden',
			'mobileLibrary.searchLibraries' => 'Bibliotheken durchsuchen',
			'mobileLibrary.noLibraries' => 'Keine passenden Bibliotheken',
			'mobileLibrary.ascending' => 'Aufsteigend',
			'mobileLibrary.descending' => 'Absteigend',
			'mobileLibrary.sort' => 'Sortieren',
			'mobileLibrary.unwatchedCount' => ({required Object count}) => '${count} ungesehene Folgen',
			'mobileLibrary.latestEpisode' => 'Neueste Folge',
			'profileStartup.autoLogin' => 'Öffne das zuletzt verwendete Profil',
			'profileStartup.autoLoginHint' => 'Öffne automatisch das zuletzt verwendete Profil, wenn dafür keine PIN erforderlich ist.',
			'profileStartup.allowKidsExit' => 'Wechsel aus dem Kids-Profil ohne Eltern-PIN erlauben',
			'profileStartup.allowKidsExitHint' => 'Ein Kind kann ohne Eltern-PIN zu einem anderen Profil wechseln. Profil-PINs gelten weiterhin.',
			'profileStartup.chooseKidsConnection' => 'Wähle ein anderes Konto oder einen anderen Server',
			'profileStartup.chooseKidsConnectionHint' => 'Verbinde nach dem Speichern ein separates Konto oder wähle eine Verbindung aus einem anderen Profil.',
			'subtitleUpload.chooseFile' => 'Untertiteldatei hochladen',
			'subtitleUpload.hint' => 'Wähle oben die Sprache aus und lade dann eine SRT-, ASS-, SSA- oder VTT-Datei auf diesen Server hoch.',
			'subtitleUpload.success' => 'Der Untertitel wurde auf den Server hochgeladen. Er erscheint, sobald der Server das Element aktualisiert.',
			'subtitleUpload.failed' => 'Der Untertitel konnte nicht hochgeladen werden. Prüfe die Datei und die Serverberechtigungen.',
			'personSpotlight.inYourLibraries' => 'in deinen Bibliotheken',
			'personSpotlight.libraryTitles' => ({required Object n}) => 'In deinen Bibliotheken · ${n} Titel',
			'personSpotlight.readBiography' => 'Biografie lesen',
			'personSpotlight.newestFirst' => 'Neueste zuerst',
			'personSpotlight.oldestFirst' => 'Älteste zuerst',
			'personSpotlight.titleAscending' => 'Titel A–Z',
			'personSpotlight.sortTitles' => 'Filmografie sortieren',
			'personSpotlight.unwatchedEpisodes' => ({required Object n}) => '${n} ungesehene Folgen',
			'personSpotlight.copies' => ({required Object n}) => '${n} Bibliothekskopien',
			'personSpotlight.versions' => ({required Object n}) => '${n} Dateiversionen',
			'personSpotlight.retryTitles' => 'Nicht alle Titel konnten geladen werden. Erneut versuchen',
			'detailExtras.onlineVideos' => 'Trailer & Extras',
			'detailExtras.reviews' => 'Kritiken',
			'detailExtras.readReview' => 'Komplette Kritik lesen',
			'detailExtras.directedBy' => ({required Object name}) => 'Mehr von ${name}',
			'detailExtras.previewUnavailable' => 'Diese Vorschau konnte nicht abgespielt werden. Du kannst sie stattdessen in der Original-App öffnen.',
			'detailExtras.openExternally' => 'Originalvideo öffnen',
			'mobileUi.readMore' => 'Mehr anzeigen',
			'mobileUi.readLess' => 'Weniger anzeigen',
			'mobileUi.playbackTools' => 'Wiedergabeoptionen',
			'mobileUi.streamingQuality' => 'Streaming-Qualität',
			'mobileUi.fileVersions' => 'Dateiversionen',
			'mobileUi.qualityAndVersions' => 'Streaming-Qualität & Dateiversionen',
			'mobileUi.hidePlaybackTools' => 'Wiedergabe-Tools ausblenden',
			'mobileUi.remaining' => ({required Object time}) => '${time} verbleiben',
			'mobileUi.endsAt' => ({required Object time}) => 'Endet um ${time}',
			'mobileUi.collection' => 'Deine Sammlung',
			'mobileUi.nowPlaying' => 'JETZT LÄUFT',
			'mobileUi.popularLibrary' => 'Beliebt in deiner Bibliothek',
			'mobileUi.weeklyLibrary' => 'Diese Woche im Trend in deiner Bibliothek',
			'family.title' => 'Profile & Familie',
			'family.yourPeople' => 'Deine Leute',
			'family.manageHint' => 'Verwalte Leute, die Sicherheit für Kinder und die Sichtaktivität auf diesem Gerät.',
			'family.people' => 'Leute',
			'family.peopleCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n, one: '${n} Person', other: '${n} Personen', ), 
			'family.kidsCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n, one: '${n} Kind', other: '${n} Kinder', ), 
			'family.you' => 'Du',
			'family.adult' => 'Erwachsener',
			'family.child' => 'Kind',
			'family.adultTeen' => 'Erwachsener oder Teenager',
			'family.adultHint' => 'Eigenes Profil, optionale Profil-PIN und eigene Serververbindungen.',
			'family.childHint' => 'Altersgrenzen, sichere Bibliotheken und ein kinderfreundlicher Look. Eine Eltern-PIN schützt diese Einstellungen.',
			'family.upToAge' => ({required Object age}) => 'Bis Alter ${age}',
			'family.allAges' => 'Alle Altersstufen',
			'family.switchProfile' => 'Profil wechseln',
			'family.switchHint' => 'Wähle, wer schaut. Das Verwalten einer Person wechselt nicht das Profil.',
			'family.addPerson' => 'Person hinzufügen',
			'family.addChild' => 'Kind hinzufügen',
			'family.addHint' => 'Erstelle ein Erwachsenen-, Teenager- oder Kinderprofil auf diesem Gerät.',
			'family.emptyPeople' => 'Mach Platz für alle, die mit dir schauen.',
			'family.emptyKids' => 'Noch keine Kinderprofile. Füge ein Kind hinzu, um Altersgrenzen und sichere Bibliotheken zu wählen.',
			'family.safety' => 'Kids & Sicherheit',
			'family.safetyHint' => 'Eltern-PIN, Kinderprofile und Altersbeschränkungen.',
			'family.protection' => 'Schutz',
			'family.kidsProfiles' => 'Kinderprofile',
			'family.backupHistory' => 'Backup & Verlauf',
			'family.parentPinOn' => 'Eltern-PIN aktiviert',
			'family.profilePin' => 'Profil-PIN',
			'family.confirmParentPin' => 'Eltern-PIN bestätigen',
			'family.parentPinOff' => 'Eltern-PIN nicht festgelegt',
			'family.missingPin' => 'Füge eine Eltern-PIN hinzu, um diese Einstellungen zu schützen.',
			'family.hideScope' => 'Blende die Kids-Wiedergabe aus „Schau weiter" dieses Luroka-Profils aus. Dies ändert die geteilte Server-Historie nicht.',
			'family.localScope' => 'Kinderprofile und Einschränkungen werden auf diesem Gerät gespeichert. Profile mit demselben Serverkonto teilen sich weiterhin den Wiedergabefortschritt.',
			'family.clearHistoryConfirm' => 'Sollen von Kindern geschaute Titel wieder in „Schau weiter" erscheinen? Kinderprofile, Einschränkungen, Sichtzeit-Statistiken und die Server-Historie bleiben erhalten.',
			'family.editRestrictions' => 'Kids-Einschränkungen bearbeiten',
			'family.activity' => 'Sichtaktivität',
			'family.namedActivity' => ({required Object name}) => 'Sichtaktivität von ${name}',
			'family.thisProfile' => 'Dieses Profil',
			'family.activityScope' => 'Von Luroka auf diesem Gerät für das aktive Profil aufgezeichnete Wiedergabezeit. Das sind Statistiken, keine Sichtbegrenzungen und keine vollständige Server-Historie.',
			'family.activityUnavailable' => 'Die Sichtaktivität ist für dieses Profil noch nicht verfügbar.',
			'family.finished' => 'Fertig',
			'posterDetails.showThemeMusic' => 'Titelmelodie abspielen',
			'posterDetails.showThemeMusicDescription' => 'Spiele die Titelmelodie eines Films oder einer Serie ab, solange die Detailseite geöffnet ist, wenn der Server sie bereitstellt.',
			'posterDetails.catalogEpisodeInfo' => 'Episodenanzahl und Laufzeit auf Katalog-Karten anzeigen',
			'posterDetails.catalogEpisodeInfoDescription' => 'Zeige Episodenanzahl und durchschnittliche Laufzeit auf Entdecken-Postern.',
			'posterDetails.title' => 'Poster-Details',
			'posterDetails.description' => 'Zeige Titel, Jahr und IMDb-Bewertung unter Postern in Studio, Suche, Entdecken und Bibliotheken. Fehlende IMDb-Bewertungen bleiben ausgeblendet. Schalte es aus für reine Artwork-Poster.',
			'libraryPolish.posterDetails' => 'Poster-Details',
			'libraryPolish.showPosterDetails' => 'Poster-Details anzeigen · Name, Jahr & IMDb',
			'libraryPolish.hidePosterDetails' => 'Poster-Details ausblenden',
			'libraryPolish.overview' => 'Übersicht',
			'libraryPolish.refreshing' => 'Bibliothek wird aktualisiert…',
			'libraryPolish.serverCollections' => 'Alle Sammlungen auf diesem Server',
			'libraryPolish.serverPlaylists' => 'Alle Videoplaylists auf diesem Server',
			'libraryPolish.libraryCollections' => 'Sammlungen in dieser Bibliothek',
			'libraryPolish.searchCollections' => 'Sammlungen durchsuchen',
			'libraryPolish.searchPlaylists' => 'Playlists durchsuchen',
			'libraryPolish.searchHint' => 'Nach Name suchen',
			'libraryPolish.titleAscending' => 'Titel A–Z',
			'libraryPolish.titleDescending' => 'Titel Z–A',
			'libraryPolish.clearFilters' => 'Filter zurücksetzen',
			'libraryPolish.playlistEmptyTitle' => 'Deine Filmm zipper, in deiner Reihenfolge',
			'libraryPolish.playlistEmptyHint' => 'Öffne das Mehr-Menü eines Titels und wähle Zur Playlist hinzufügen, um deine erste Playlist zu erstellen.',
			'libraryPolish.noMatches' => 'Keine passenden Namen',
			'libraryPolish.indexing' => 'Durchsuche den gesamten Katalog…',
			'showSchedule.today' => 'Heute',
			'showSchedule.tomorrow' => 'Morgen',
			'showSchedule.latestUpcoming' => 'Neueste & Anstehende',
			'showSchedule.latestEpisode' => 'Neueste Folge',
			'showSchedule.upcoming' => 'Anstehend',
			'showSchedule.inLibrary' => 'In deiner Bibliothek',
			'showSchedule.notInLibrary' => 'Nicht in deiner Bibliothek',
			'showSchedule.notYetAired' => 'Noch nicht ausgestrahlt',
			'showSchedule.episode' => ({required Object number}) => 'Folge ${number}',
			'showSchedule.caughtUp' => 'Du bist auf dem neuesten Stand',
			'showSchedule.finished' => 'Du hast diese Serie beendet',
			'showSchedule.nextAirs' => ({required Object date}) => 'Nächste Folge läuft ${date}',
			'showSchedule.watchBeginning' => 'Von Beginn schauen',
			'showSchedule.replay' => 'Erneut abspielen',
			'showSchedule.playNext' => 'Als Nächstes spielen',
			'awardsCatalog.awards' => 'Auszeichnungen',
			'awardsCatalog.customize' => 'Anpassen',
			'awardsCatalog.chooseShelves' => 'Entdecken anpassen',
			'awardsCatalog.shelvesDescription' => 'Wähle die Reihen, die du auf Entdecken sehen möchtest. Auszeichnungs-Reihen zeigen Gewinner aus deinen Bibliotheken. Deine Auswahl wird für dieses Profil gespeichert.',
			'awardsCatalog.restoreShelves' => 'Standardeinstellungen wiederherstellen',
			'awardsCatalog.charts' => 'IMDb-Charts',
			'awardsCatalog.generalShelves' => 'Beliebt & im Trend',
			'awardsCatalog.saveShelvesFailed' => 'Deine Entdecken-Auswahl konnte nicht gespeichert werden. Bitte versuche es erneut.',
			'awardsCatalog.comedyActress' => 'Hauptdarstellerin · Komödie',
			'awardsCatalog.leadDramaActor' => 'Hauptdarsteller · Drama',
			'awardsCatalog.leadDramaActress' => 'Hauptdarstellerin · Drama',
			'awardsCatalog.comedySupportingActor' => 'Nebendarsteller · Komödie',
			'awardsCatalog.comedySupportingActress' => 'Nebendarstellerin · Komödie',
			'awardsCatalog.leadingPerformance' => 'Silberner Bär · Beste Hauptleistung',
			'awardsCatalog.globesComedySeries' => 'Beste Fernsehserie · Musical oder Komödie',
			'awardsCatalog.limitedSupportingActor' => 'Nebendarsteller · Miniserie oder Fernsehfilm',
			'awardsCatalog.limitedSupportingActress' => 'Nebendarstellerin · Miniserie oder Fernsehfilm',
			'awardsCatalog.berlinDocumentary' => 'Berlinale Dokumentarfilmpreis',
			'awardsCatalog.title' => 'Auszeichnungen & Festivals',
			'awardsCatalog.chooseCategory' => 'Auszeichnungskategorie wählen',
			'awardsCatalog.winners' => 'Gewinner',
			'awardsCatalog.nominees' => 'Nominierte',
			'awardsCatalog.releaseDecade' => 'Erscheinungsjahrzehnt',
			'awardsCatalog.allYears' => 'Alle Jahre',
			'awardsCatalog.loading' => 'Lade Auszeichnungstitel…',
			'awardsCatalog.matching' => 'Suche diese Titel in deinen Bibliotheken…',
			'awardsCatalog.unavailable' => 'Auszeichnungsdaten sind gerade nicht verfügbar. Versuche es erneut.',
			'awardsCatalog.empty' => 'Keine passenden Titel in deinen sichtbaren Bibliotheken für diese Kategorie.',
			'awardsCatalog.coverage' => 'Die Mitgliedschaft stammt aus Wikidata und kann lückenhaft sein. Actor- und Director-Kategorien zeigen die Filme oder Serien, für die sie ausgezeichnet wurden. Jahre beziehen sich auf den Titelstart, nicht auf die Verleihung.',
			'awardsCatalog.picture' => 'Bester Film',
			'awardsCatalog.film' => 'Bester Film',
			'awardsCatalog.international' => 'Bester internationaler Film',
			'awardsCatalog.internationalFilm' => 'Bester internationaler Film',
			'awardsCatalog.nonEnglishFilm' => 'Bester Film nicht in englischer Sprache',
			'awardsCatalog.animated' => 'Bester Animationsfilm',
			'awardsCatalog.animatedFilm' => 'Bester Animationsfilm',
			'awardsCatalog.documentary' => 'Bester Dokumentarfilm',
			'awardsCatalog.director' => 'Beste Regie',
			'awardsCatalog.actor' => 'Bester Hauptdarsteller',
			'awardsCatalog.actress' => 'Beste Hauptdarstellerin',
			'awardsCatalog.supportingActor' => 'Bester Nebendarsteller',
			'awardsCatalog.supportingActress' => 'Beste Nebendarstellerin',
			'awardsCatalog.originalScreenplay' => 'Bestes Originaldrehbuch',
			'awardsCatalog.adaptedScreenplay' => 'Bestes adaptiertes Drehbuch',
			'awardsCatalog.screenplay' => 'Bestes Drehbuch',
			'awardsCatalog.cinematography' => 'Beste Kamera',
			'awardsCatalog.editing' => 'Bester Schnitt',
			'awardsCatalog.score' => 'Beste Filmmusik',
			'awardsCatalog.song' => 'Bester Filmsong',
			'awardsCatalog.sound' => 'Bester Ton',
			'awardsCatalog.effects' => 'Beste visuelle Effekte',
			'awardsCatalog.productionDesign' => 'Bestes Szenenbild',
			'awardsCatalog.costume' => 'Bestes Kostümdesign',
			'awardsCatalog.makeup' => 'Bestes Make-up und Frisuren',
			'awardsCatalog.dramaSeries' => 'Herausragende Dramaserie',
			'awardsCatalog.comedySeries' => 'Herausragende Comedyserie',
			'awardsCatalog.limitedSeries' => 'Herausragende Miniserie',
			'awardsCatalog.animatedProgram' => 'Herausragendes Animationsprogramm',
			'awardsCatalog.comedyActor' => 'Hauptdarsteller · Komödie',
			'awardsCatalog.limitedActor' => 'Hauptdarsteller · Miniserie oder Fernsehfilm',
			'awardsCatalog.limitedActress' => 'Hauptdarstellerin · Miniserie oder Fernsehfilm',
			'awardsCatalog.limitedDirecting' => 'Regie · Miniserie oder Fernsehfilm',
			'awardsCatalog.britishFilm' => 'Bester britischer Film',
			'awardsCatalog.goldenBear' => 'Goldener Bär',
			'awardsCatalog.grandJury' => 'Großer Preis der Jury',
			'awardsCatalog.jury' => 'Preis der Jury',
			'awardsCatalog.teddy' => 'Teddy Award',
			'awardsCatalog.goldenLion' => 'Goldener Löwe',
			'awardsCatalog.volpiActor' => 'Volpi-Pokal · Bester Hauptdarsteller',
			'awardsCatalog.volpiActress' => 'Volpi-Pokal · Beste Hauptdarstellerin',
			'awardsCatalog.queerLion' => 'Queer Lion',
			'awardsCatalog.dramaFilm' => 'Bester Film · Drama',
			'awardsCatalog.comedyFilm' => 'Bester Film · Musical oder Komödie',
			'awardsCatalog.dramaActor' => 'Bester Hauptdarsteller · Drama',
			'awardsCatalog.dramaActress' => 'Beste Hauptdarstellerin · Drama',
			'awardsCatalog.usDramatic' => 'Großer Preis der Jury · US-Dramatic',
			'awardsCatalog.documentaryJury' => 'Großer Preis der Jury · Dokumentarfilm',
			'awardsCatalog.worldCinema' => 'Großer Preis der Jury · World Cinema',
			'awardsCatalog.dramaticAudience' => 'Publikumspreis · US-Dramatic',
			'awardsCatalog.usDirecting' => 'Regiepreis · US-Dramatic',
			'awardsCatalog.peopleChoice' => 'Publikumspreis',
			'awardsCatalog.canadianFilm' => 'Bester kanadischer Film',
			'awardsCatalog.firstFeature' => 'Bestes Debüt',
			'awardsCatalog.cassavetes' => 'John-Cassavetes-Preis',
			'awardsCatalog.scienceFiction' => 'Bester Science-Fiction-Film',
			'awardsCatalog.fantasy' => 'Bester Fantasyfilm',
			'awardsCatalog.horror' => 'Bester Horrorfilm',
			'awardsCatalog.action' => 'Bester Action- oder Abenteuerfilm',
			'awardsCatalog.thriller' => 'Bester Thriller',
			'searchDiscovery.suggestions' => 'Etwas zum Anschauen',
			'searchDiscovery.collections' => 'Auszeichnungen & Sammlungen',
			'searchDiscovery.collectionsHint' => 'Auszeichnungsgewinner und kuratierte Charts aus deinen Bibliotheken',
			'searchDiscovery.all' => 'Alle Entdeckungen',
			'searchDiscovery.awards' => 'Auszeichnungen & Charts',
			'lurokaPlayerDesign.seeking' => 'Spulvorschau',
			'lurokaPlayerDesign.keepWatching' => 'Weiterschauen',
			'lurokaPlayerDesign.upNext' => 'Als Nächstes',
			'lurokaPlayerDesign.playingIn' => ({required Object seconds}) => 'Start in ${seconds} s',
			'lurokaWorkspace.everyday' => 'Alltag',
			'lurokaWorkspace.homeDiscovery' => 'Startseite & Entdecken',
			'lurokaWorkspace.librariesAccounts' => 'Bibliotheken & Konten',
			'lurokaWorkspace.profilesFamily' => 'Profile & Familie',
			'lurokaWorkspace.thisDevice' => 'Dieses Gerät',
			'lurokaWorkspace.thisProfile' => 'Dieses Profil',
			'lurokaWorkspace.searchSettings' => 'Einstellungen durchsuchen',
			'lurokaWorkspace.savedAutomatically' => 'Änderungen werden automatisch gespeichert. Alltag und Erweitert ändern nur, welche Steuerungen angezeigt werden.',
			'lurokaWorkspace.audioSubtitles' => 'Audio & Untertitel',
			'lurokaWorkspace.audioDescription' => 'Tonausgabe, Lautstärke und Untertitel-Darstellung. Bevorzugte Sprachen werden pro Serverkonto über Konto-Einstellungen festgelegt, wenn verbunden.',
			'lurokaWorkspace.pictureSound' => 'Bild & Ton',
			'lurokaWorkspace.pictureDescription' => 'Bildwiederholraten-Abgleich, Auflösung, HDR- und Dolby-Vision-Feinjustage für dieses Gerät.',
			'lurokaWorkspace.engineDescription' => 'Player-Engine, Decodierung, benutzerdefinierte Konfiguration und erweiterte Wiedergaberegeln.',
			'lurokaWorkspace.networkStreaming' => 'Netzwerk & Streaming',
			'lurokaWorkspace.networkDescription' => 'Streaming-Qualität, Direct-Play-Codec-Präferenzen und Bandbreitenoptionen.',
			'lurokaWorkspace.homeOptions' => 'Startseite-Optionen',
			'lurokaWorkspace.refreshHome' => 'Startseite & Beliebt jetzt aktualisieren',
			'lurokaWorkspace.customizeHome' => 'Startseite anpassen',
			'lurokaWorkspace.spotlight' => 'Startseite-Spotlight',
			'lurokaWorkspace.rotateSpotlight' => 'Featured-Titel automatisch rotieren',
			'lurokaWorkspace.rotateDescription' => 'Rotiert, während Startseite inaktiv ist. Interaktion pausiert die Rotation; das Stöbern in Regalen, das Öffnen einer Seite oder das Verlassen der App pausiert sie vollständig.',
			'lurokaWorkspace.rotationInterval' => 'Zeit zwischen Featured-Titeln',
			'mobileFixes.connectionRecoveryHint' => 'Server nicht erreichbar? Verwalte deine Konten oder verbinde einen anderen Server.',
			'downloadsRedesign.shelfSize' => 'Elemente pro Regal',
			'downloadsRedesign.shelfSizeHint' => 'Zeige 16, 32 oder 48 Elemente in „Schau weiter" und Empfehlungsregalen. Server liefern möglicherweise weniger verfügbare Titel.',
			'downloadsRedesign.subtitle' => 'Deine Favoriten, bereit für die Reise.',
			'downloadsRedesign.transfers' => 'Übertragungen',
			'downloadsRedesign.ready' => 'Offline verfügbar',
			'downloadsRedesign.active' => 'Wird geladen',
			'downloadsRedesign.waiting' => 'Warten',
			'downloadsRedesign.downloaded' => 'Heruntergeladen',
			'downloadsRedesign.speed' => 'Download-Geschwindigkeit',
			'downloadsRedesign.notificationProgress' => '{progress} · {networkSpeed} · {timeRemaining} verbleiben',
			'kidsShelf.movieShelf' => 'Filmzeit',
			'kidsShelf.showShelf' => 'Finde deine nächste Serie',
			'kidsShelf.aurora' => 'Aurora — tiefes Petrol & Limette',
			'kidsShelf.marquee' => 'Marquee — Samt & Gold',
			'kidsShelf.electric' => 'Electric — Indigo & Eis',
			'kidsShelf.midnight' => 'Midnight — Stahl & Bernstein',
			'kidsShelf.yourShelf' => 'Dein Filmregal',
			'kidsShelf.all' => 'Alles',
			'kidsShelf.pickSomething' => 'Was möchtest du schauen?',
			'kidsHome.everything' => 'Für dich',
			'kidsHome.keepWatching' => 'Weiterschauen',
			'kidsHome.emptyFilter' => 'Hier ist noch nichts. Probier „Für dich" oder frag deine Eltern, ob sie etwas hinzufügen, das du liebst.',
			'tvSettingsV2.moreThemes' => 'Weitere Themen und benutzerdefinierte Farben',
			'tvSettingsV2.moreThemesHint' => 'Öffne alle verfügbaren Voreinstellungen und benutzerdefinierten Designoptionen.',
			'tvSettingsV2.previewLive' => 'Live-Vorschau',
			'tvSettingsV2.previewIllustration' => 'Vorschaubeispiel',
			'tvSettingsV2.previewShelfCount' => ({required Object count}) => 'Bis zu ${count} Artikel pro Regal',
			'tvSettingsV2.simple' => 'Einfach',
			'tvSettingsV2.homeNavigation' => 'Startseite & Navigation',
			'tvSettingsV2.libraryCards' => 'Bibliothek & Karten',
			'tvSettingsV2.accountsLibraries' => 'Konten und Bibliotheken',
			'tvSettingsV2.profilesFamily' => 'Profile & Familie',
			'tvSettingsV2.aboutSupport' => 'Über & Support',
			'tvSettingsV2.playback' => 'Wiedergabe',
			'tvSettingsV2.homeHint' => 'Wähle aus, was auf der Startseite und in der Navigation angezeigt wird.',
			'tvSettingsV2.libraryHint' => 'Passe Postergrößen, Beschriftungen und Gesehen-Markierungen an.',
			'tvSettingsV2.advancedPlayback' => 'Player-Engine und Streaming',
			'tvSettingsV2.advancedPlaybackHint' => 'Player, Videoausgabe, Streaming und erweiterte Wiedergabeoptionen.',
			'tvSettingsV2.advancedTools' => 'Diagnose und Backups',
			'tvSettingsV2.advancedToolsHint' => 'Protokolle, Fehlerbehebung, Sicherung und Zurücksetzen der Einstellungen.',
			'tvSettingsV2.themePreview' => 'Themenvorschau',
			'tvSettingsV2.libraryPreview' => 'Vorschau der Bibliothek',
			'tvSettingsV2.homePreview' => 'Startseite-Vorschau',
			'tvSettingsV2.subtitlePreview' => 'Untertitelvorschau',
			'tvSettingsV2.subtitleSample' => 'Ihre Untertitel werden so aussehen.',
			'tvSettingsV2.previewPlaceholder' => 'Ihr Kunstwerk erscheint hier',
			'tvSettingsV2.posterSize' => 'Postergröße',
			'tvSettingsV2.serverRecommendations' => 'Startseite-Empfehlungen von Ihrem Server',
			'tvSettingsV2.tvLayout' => 'TV-Layout verwenden',
			'tvSettingsV2.hardwareDecode' => 'Hardware-Videodekodierung verwenden',
			'tvSettingsV2.serverNames' => 'Servernamen in Startseite-Zeilen anzeigen',
			'tvSettingsV2.settingsSaved' => 'Änderungen werden automatisch gespeichert.',
			'tvSettingsV2.morePlayback' => 'Erweiterte Wiedergabe',
			'tvSettingsV2.screenDisplay' => 'Bild & Ton',
			'tvSettingsV2.engine' => 'Spieler-Engine',
			'tvSettingsV2.network' => 'Streaming & Netzwerk',
			'tvSettingsV2.performance' => 'Leistung',
			'tvSettingsV2.simpleAudio' => 'Sprachen und Erscheinungsbild der Untertitel',
			'settingsRedesign.themeEffects' => 'Design & Effekte',
			'settingsRedesign.libraryLayout' => 'Bibliotheks-Layout',
			'settingsRedesign.appearanceHint' => 'Passe Look, Layout und Verhalten von Luroka an.',
			'settingsRedesign.livePreview' => 'Live-Vorschau',
			'settingsRedesign.previewHint' => 'Sieh, wie deine Bibliothek mit den aktuellen Einstellungen aussieht.',
			'settingsRedesign.showLiveTv' => 'Live TV anzeigen',
			'settingsRedesign.showLiveTvHint' => 'Zeige Live TV in der Navigation, wenn ein verbundener Server es unterstützt. Dies ändert deinen Server nicht.',
			'settingsRedesign.aboutTagline' => 'Deine Medien. Dein Raum.',
			'settingsRedesign.aboutDescription' => 'Luroka vereint deine Plex-, Jellyfin- und Emby-Bibliotheken in einem cineastischen Player für Handys, TVs und Desktops.',
			'settingsRedesign.aboutFeatures' => 'Durchstöbere deine Bibliotheken, setze Filme und Serien fort, personalisiere Profile, nutze Downloads und schau gemeinsam. Live TV ist mit einem kompatiblen Server verfügbar.',
			'settingsRedesign.services' => 'Verbinde deine Welt',
			'settingsRedesign.updateSource' => 'Update-Quelle',
			'settingsRedesign.updateSourceHint' => 'HTTPS-Adresse deines Luroka-Release-Feeds. Dein Distributor kann dies in der App vorkonfigurieren.',
			'settingsRedesign.updateNotConfigured' => 'Automatische Updates sind für diesen Build nicht konfiguriert.',
			'settingsRedesign.downloadInstall' => 'Herunterladen & installieren',
			'settingsRedesign.installUpdate' => 'Update installieren',
			'settingsRedesign.downloading' => 'Update wird heruntergeladen…',
			'settingsRedesign.downloadFailed' => 'Update konnte nicht heruntergeladen oder überprüft werden. Bitte versuche es erneut.',
			'settingsRedesign.installPermission' => 'Erlaube Luroka in den Android-Einstellungen, Updates zu installieren, und kehre dann zurück und wähle „Update installieren".',
			'settingsRedesign.updateReady' => 'Download überprüft. Bereit zur Installation.',
			'settingsRedesign.releaseNotes' => 'Versionshinweise',
			'settingsRedesign.invalidFeed' => 'Gib eine gültige HTTPS-Update-Feed-Adresse ein.',
			'onboarding.connectStep' => '01 · Verbinden',
			'onboarding.connectTitle' => 'Willkommen bei Luroka',
			'onboarding.connectHint' => 'Melde dich an, um deine Bibliotheken hierher zuholen.',
			'onboarding.serverAddressHint' => 'Gib deine Server-Adresse ein oder wähle einen Server aus deinem Netzwerk.',
			'onboarding.serverSignInHint' => 'Nutze Benutzername und Passwort deines Servers, um deine Bibliotheken zu verbinden.',
			'onboarding.serverAddressTitle' => 'Server-Adresse',
			'onboarding.serverAccountTitle' => 'Dein Server-Konto',
			'onboarding.plexHomeTitle' => 'Wähle deinen Plex-Startseite-Benutzer',
			'onboarding.plexHomeHint' => 'Wähle den Plex-Benutzer, dessen Bibliotheken du nutzen möchtest. Danach richtest du dein Luroka-Profil ein.',
			'onboarding.chooseService' => 'Wähle deinen Dienst',
			'onboarding.profileStep' => '02 · Dein Profil',
			'onboarding.profileTitle' => 'Richte dich gemütlich ein.',
			'onboarding.profileHint' => 'Wähle einen Namen und einen Avatar für dein Luroka-Profil. Dein verbundenes Konto bleibt dasselbe.',
			'onboarding.readyStep' => '03 · Bereit zum Schauen',
			'onboarding.readyTitle' => 'Ein bisschen mehr du.',
			'onboarding.readyHint' => 'Bringe deine Dienste zusammen oder mach Platz für jemand anderen. Du kannst das jederzeit später nachholen.',
			'onboarding.addService' => 'Weiteren Dienst verbinden',
			'onboarding.editProfile' => 'Name & Avatar bearbeiten',
			'onboarding.connected' => 'Verbunden und bereit',
			'onboarding.backToProfile' => 'Zurück zu deinem Profil',
			'onboarding.showOtherPlexHome' => 'Andere Plex-Startseite-Mitglieder anzeigen',
			'onboarding.showOtherPlexHomeHint' => 'Standardmäßig aus. Deine Luroka-Profile und genutzte Plex-Startseite-Mitglieder bleiben sichtbar. Aktivieren, um jemand anderen zu wählen.',
			'household.title' => 'Deine Luroka-Haushaltsgemeinschaft',
			'household.welcome' => 'Mach Luroka zu deinem Ding',
			'household.welcomeHint' => 'Dein erstes Konto ist verbunden. Personalisiere dein Profil oder füge jemand anderen hinzu, bevor du mit dem Schauen beginnst.',
			'household.profiles' => 'Profile & Haushalt',
			'household.manageHint' => 'Füge Leute hinzu, ändere Bilder und verwalte die Verbindungen jedes Profils.',
			'household.addProfile' => 'Luroka-Profil hinzufügen',
			'household.addHint' => 'Jede Person kann ihre eigene Plex-, Emby- oder Jellyfin-Anmeldung verbinden. Nur Verbindungen aus ihrem Profil erscheinen für sie.',
			'household.sharedHint' => 'Werdest du die Verbindung eines anderen Profils, teilst du den Gesehen-Status und Wiedergabefortschritt dieses Server-Benutzers. Wähle eine separate Anmeldung für eine unabhängige Historie.',
			'household.personalise' => 'Profil personalisieren',
			'household.changePicture' => 'Profilbild ändern',
			'household.pictureHint' => 'Wähle einen Luroka-Avatar oder ein Foto. Das ändert das Bild nur auf diesem Gerät; dein Serverkonto bleibt unberührt.',
			'household.serverPicture' => 'Server-Bild / Initialen verwenden',
			'household.choosePhoto' => 'Foto wählen',
			'household.photoHint' => 'JPEG, PNG oder ein anderes unterstütztes Format, bis 10 MB. Fotos werden verkleinert und auf diesem Gerät gespeichert.',
			'household.pictureSaved' => 'Profilbild aktualisiert',
			'household.pictureFailed' => 'Das Profilbild konnte nicht aktualisiert werden. Versuche ein unterstütztes Bild bis 10 MB.',
			'household.saveFailed' => 'Profileinstellungen konnten nicht gespeichert werden. Bitte versuche es erneut.',
			'household.startWatching' => 'Schauen starten',
			'household.manageProfiles' => 'Profile verwalten oder wechseln',
			'household.addLater' => 'Du kannst später in Einstellungen → Profile & Haushalt weitere Personen hinzufügen.',
			'household.connectionRequired' => 'Füge eine Serververbindung hinzu, um die Einrichtung dieses Profils abzuschließen.',
			'household.mountain' => 'Berg',
			'household.orbit' => 'Entdecker',
			'household.waves' => 'Ozean',
			'household.blossom' => 'Blüte',
			'household.lightning' => 'Blitz',
			'household.moon' => 'Mond',
			'household.avatarGallery' => 'Avatar auswählen',
			'household.avatarIllustrationHint' => 'Original illustrierte Porträts, Kinder und Tierfreunde',
			'household.avatarPortraitSunrise' => 'Sonnenaufgangs-Porträt',
			'household.avatarPortraitMeadow' => 'Wiesenporträt',
			'household.avatarPortraitBerry' => 'Beerenporträt',
			'household.avatarPortraitGolden' => 'Goldenes Porträt',
			'household.avatarPortraitIndigo' => 'Indigo-Porträt',
			'household.avatarPortraitOcean' => 'Ozean-Porträt',
			'household.avatarKidArtist' => 'Kleiner Künstler',
			'household.avatarKidSkater' => 'Kleiner Skater',
			'household.avatarCat' => 'Neugierige Katze',
			'household.avatarDog' => 'Glücklicher Hund',
			'household.avatarPanda' => 'Panda',
			'household.avatarOwl' => 'Eule',
			'household.avatarFox' => 'Fuchs',
			'household.avatarDinosaur' => 'Dinosaurier',
			'household.avatarRobot' => 'Roboter',
			'detailComposition.startOver' => 'Von vorn beginnen',
			'detailComposition.seriesCast' => 'Serienbesetzung',
			'detailComposition.streamingQuality' => 'Streaming-Qualität…',
			'detailComposition.trailer' => 'Trailer',
			'detailComposition.manageMedia' => 'Medien verwalten…',
			'detailComposition.playbackOptions' => 'Wiedergabeoptionen…',
			'detailComposition.moreActions' => 'Weitere Aktionen',
			'detailComposition.watched' => 'Gesehen',
			'detailComposition.unwatched' => 'Ungesehen',
			'detailComposition.endsAt' => ({required Object time}) => 'Endet um ${time}',
			'detailComposition.automatic' => 'Automatisch',
			'detailComposition.usePreferences' => 'Wiedergabepräferenzen verwenden',
			'detailComposition.mediaInformation' => 'Medieninformationen',
			'detailComposition.fullFileInformation' => 'Vollständige Dateiinformationen',
			'detailComposition.castAndCrew' => 'Besetzung & Crew',
			'kids.backupProfile' => 'Kinderprofil sichern',
			'kids.backupExplain' => 'Sichere den gespeicherten Namen, Charakter, Einschränkungen, das Erscheinungsbild und lokale Ausschlüsse dieses Profils. Eltern-PINs, Server-Logins, Downloads und serverseitiger Wiedergabefortschritt sind nicht enthalten.',
			'kids.saveBackupFile' => 'Backup-Datei speichern',
			'kids.copyBackup' => 'Backup-Text kopieren',
			'kids.backupSaved' => ({required Object path}) => 'Kinderprofil-Backup gespeichert unter ${path}',
			'kids.backupCopied' => 'Kinderprofil-Backup kopiert',
			'kids.backupFailed' => 'Das Kinderprofil-Backup konnte nicht gespeichert werden. Bitte versuche es erneut.',
			'kids.restoreProfile' => 'Kinderprofil wiederherstellen',
			'kids.chooseBackupFile' => 'Backup-Datei wählen',
			'kids.pasteBackup' => 'Backup-Text einfügen',
			'kids.backupText' => 'Kinderprofil-Backup-JSON',
			'kids.pasteFromClipboard' => 'Aus der Zwischenablage einfügen',
			'kids.restoreReview' => 'Prüfe die wiederhergestellten Einstellungen und tippe auf Speichern, um ein neues Kinderprofil mit deinen aktuellen Serververbindungen zu erstellen. Bestehende Profile werden nicht überschrieben. Bibliotheksauswahl und Ausschlüsse passen nur bei gleichen Server-/Bibliotheks-IDs.',
			'kids.restoreInvalid' => 'Das ist kein gültiges unterstütztes Kinderprofil-Backup. Wähle ein Luroka-Kinderprofil-JSON-Backup.',
			'kids.deleteProfile' => 'Kinderprofil löschen',
			'kids.deleteExplain' => ({required Object name}) => '${name} aus Luroka löschen? Die lokalen Einstellungen, Downloads und Ausschlüsse werden entfernt. Dein Serverkonto und die serverseitige Historie bleiben erhalten. Erstelle vorher ein Backup, wenn du das Profil später wiederherstellen möchtest.',
			'kids.profileDeleted' => 'Kinderprofil gelöscht',
			'kids.allowedLibraries' => 'Erlaubte Bibliotheken',
			'kids.unavailableLibrary' => 'Zuvor gewählte Bibliothek (derzeit nicht verfügbar)',
			'kids.allLibraries' => 'Alle verbundenen Film- und TV-Bibliotheken erlauben',
			'kids.librariesExplain' => 'Schalte das aus, um bestimmte Bibliotheken zu wählen. Alters- und Animationsregeln gelten innerhalb der gewählten Bibliotheken weiter. Neue Bibliotheken werden bei einer Auswahl nicht automatisch hinzugefügt.',
			'kids.librariesUnavailable' => 'Keine Film- oder TV-Bibliotheken geladen. Verbinde den Server und öffne Bibliotheken, um hier auszuwählen.',
			'kids.noLibrariesSelected' => 'Keine Bibliotheken ausgewählt: Dieses Kind sieht keine Titel.',
			'kids.animationOnly' => 'Nur Animation',
			'kids.animationExplain' => 'Zeige nur Titel, die auf deinem Server mit dem Genre Animation markiert sind. Das ersetzt nicht das Alterslimit: Animation kann auch für Erwachsene sein. Fehlende Genre-Metadaten werden ausgeblendet.',
			'kids.allowUnrated' => 'Titel ohne Altersfreigabe erlauben',
			'kids.unratedExplain' => 'Standardmäßig aus. Wenn aktiviert, können fehlende oder nicht bewertete Freigaben erscheinen, sofern Bibliotheks- und Animationsregeln es erlauben. Ihre Eignung kann dem Alter nach nicht geprüft werden. Bekannte Freigaben über dem Alterslimit und unbekannte Klassifizierungen bleiben ausgeblendet.',
			'kids.whoIsWatching' => 'Wer schaut?',
			'kids.chooseAdventure' => 'Eine kleine Welt voller großer Abenteuer.',
			'kids.chooseProfile' => 'Wähle deinen Platz. Mach eine Filmnacht draus.',
			'kids.welcome' => ({required Object name}) => 'Hi, ${name}!',
			'kids.welcomeOlder' => ({required Object name}) => 'Deine nächste große Geschichte, ${name}.',
			'kids.homeSubtitle' => 'Große Abenteuer. Kleine Entdeckungen. Alles für dich.',
			'kids.homeSubtitleOlder' => 'Finde einen neuen Liebling. Mach da weiter, wo du aufgehört hast.',
			'kids.featured' => 'Das große Abenteuer heute',
			'kids.featuredOlder' => 'Im Rampenlicht',
			'kids.moreInfo' => 'Mehr Infos',
			'kids.movies' => 'Filme',
			'kids.shows' => 'Serien',
			'kids.profiles' => 'Profile',
			'kids.adultBadge' => 'Erwachsene',
			'kids.avatar' => 'Wähle deinen Charakter',
			'kids.avatarExplorer' => 'Weltraum-Entdecker',
			'kids.avatarFox' => 'Fuchs',
			'kids.avatarDinosaur' => 'Dinosaurier',
			'kids.avatarRobot' => 'Roboter',
			'kids.avatarChildArtist' => 'Kleiner Künstler',
			'kids.avatarChildSkater' => 'Kleiner Skater',
			'kids.avatarSunrisePerson' => 'Sonnenaufgangs-Porträt',
			'kids.avatarOceanPerson' => 'Ozean-Porträt',
			'kids.avatarCat' => 'Neugierige Katze',
			'kids.avatarDog' => 'Glücklicher Hund',
			'kids.avatarPanda' => 'Panda',
			'kids.avatarOwl' => 'Eule',
			'kids.avatarBear' => 'Bär',
			'kids.continueAdventure' => 'Abenteuer fortsetzen',
			'kids.freshStories' => 'Neue Geschichten zum Entdecken',
			'kids.yourMovies' => 'Filmzeit-Favoriten',
			'kids.yourShows' => 'Noch eine Folge',
			'kids.emptyHint' => 'Neue Abenteuer erscheinen hier, wenn dein Server Titel mit erlaubter Altersfreigabe hat.',
			'kids.title' => 'Luroka für Kinder',
			'kids.addProfile' => 'Kinderprofil hinzufügen',
			'kids.parentalControls' => 'Elternkontrollen',
			'kids.parentPin' => 'Eltern-PIN',
			'kids.setParentPin' => 'Eltern-PIN festlegen',
			'kids.changeParentPin' => 'Eltern-PIN ändern',
			'kids.pinExplain' => 'Diese PIN schützt Erwachsenenprofile und die Kindersicherung auf diesem Gerät.',
			'kids.name' => 'Name des Kindes',
			'kids.ageGroup' => 'Erlaubte Altersfreigabe',
			'kids.allAges' => 'Alle Altersstufen · G, TV-Y, TV-G, U',
			'kids.age7' => 'Bis 7 · auch PG, TV-PG, TV-Y7',
			'kids.age12' => 'Bis 12 · auch 12 und 12A',
			'kids.age16' => 'Bis 16 · auch PG-13, TV-14, 15 und 16',
			'kids.ratingExplain' => 'Titel über dem Alterslimit und unbekannte Klassifizierungen werden ausgeblendet. Titel ohne Freigabe sind ausgeblendet, sofern du sie unten nicht erlaubst. Nicht bewertete Folgen können eine freigegebene Serienklassifizierung erben. Freigaben hängen von den Metadaten deines Servers ab.',
			'kids.theme' => 'Kids-Erscheinungsbild',
			'kids.themeExplain' => 'Nutze ein farbenfrohes Design, wenn dieses Profil aktiv ist.',
			'kids.sharedLogin' => 'Nutzt deine bestehende Server-Anmeldung. Plex/Emby-Fortschritt und Gesehen-Status bleiben geteilt. Einschränkungen und Kinderprofile werden auf diesem Gerät gespeichert.',
			'kids.hideWatched' => 'Kids-Wiedergabe in meiner „Schau weiter" verstecken',
			'kids.hideExplain' => 'Blende Filme und ganze Serien aus, die Kinderprofile auf diesem Gerät abgespielt haben. Das entfernt sie nicht aus deiner Bibliothek und ändert die Server-Historie nicht.',
			'kids.clearHistory' => 'Kids-Wiedergabe-Ausschlüsse zurücksetzen',
			'kids.historyReset' => 'Kids-Wiedergabe-Ausschlüsse zurückgesetzt',
			'kids.blocked' => 'Dieser Titel ist in diesem Kinderprofil nicht verfügbar.',
			'kids.switchProfile' => 'Profil wechseln',
			'kids.manageFromAdult' => 'Wechsle zu einem Erwachsenen-Profil, um Einstellungen zu verwalten.',
			'kids.noConnections' => 'Verbinde einen Server mit deinem Erwachsenen-Profil, bevor du ein Kinderprofil hinzufügst.',
			'kids.created' => 'Kinderprofil erstellt',
			'kids.updated' => 'Kinderprofil aktualisiert',
			'kids.saveFailed' => 'Elternkontrollen konnten nicht gespeichert werden. Bitte versuche es erneut.',
			'kids.kidsBadge' => 'Kids',
			'lurokaDiscovery.title' => 'Entdecken',
			'lurokaDiscovery.chooseLibraryHint' => 'Wähle eine Bibliothek zum Erkunden',
			'lurokaDiscovery.chooseCopyHint' => 'In mehreren Bibliotheken verfügbar. Wähle deine bevorzugte Kopie.',
			'lurokaDiscovery.weeklyMovies' => 'Trendfilme dieser Woche · TMDb',
			'lurokaDiscovery.weeklyShows' => 'Trendserien dieser Woche · TMDb',
			'lurokaDiscovery.weeklyLibrary' => 'Diese Woche im Trend · In deiner Bibliothek',
			'lurokaDiscovery.popularLibrary' => 'Jetzt beliebt · In deiner Bibliothek · Cinemeta',
			'lurokaDiscovery.publicFeedError' => 'Die Cinemeta-Entdeckung ist nicht verfügbar. Bitte versuche es erneut.',
			'lurokaDiscovery.oscars' => 'Oscars · Best-Picture-Gewinner',
			'lurokaDiscovery.imdb100' => 'IMDb Top 100 Filme · Stand Sep 2026',
			'lurokaDiscovery.imdbTv100' => 'IMDb Top 100 Serien · Stand Sep 2026',
			'lurokaDiscovery.emmyComedy' => 'Emmys · Comedyserien-Gewinner · 1971–2026',
			'lurokaDiscovery.emmys' => 'Emmys · Dramaserien-Gewinner · 1966–2026',
			_ => null,
		} ?? switch (path) {
			'lurokaDiscovery.bafta' => 'BAFTA · Best-Film-Gewinner',
			'lurokaDiscovery.cannes' => 'Cannes · Goldene-Palme-Gewinner',
			'lurokaDiscovery.awardsNote' => 'Auszeichnungssammlungen umfassen Oscar-Best-Picture-Historie, Emmy-Drama-/Comedy-Gewinner und erweiterte BAFTA/Cannes-Auswahlen. Mehrfach ausgezeichnete Titel erscheinen einmal. Die Mitgliedschaft nutzt Auszeichnungskategorien-Historien und Wikidata-Fakten. Die IMDb-Top-100-Film-/Serienlisten bewahren die September-2026-Chartsnapshots von mmdju/imdb-top250-api. Nur Treffer in deinen sichtbaren, Online-Bibliotheken erscheinen; die Sammlungsgröße hängt von der Verfügbarkeit der Bibliotheken ab.',
			'lurokaDiscovery.attribution' => 'Öffentliche Beliebtheitslisten, Metadaten und IMDb-Bewertungen stammen von Cinemeta; die Popular-Listen sind keine wöchentlichen Sehcharts. Dieses Produkt nutzt die TMDB API, wird aber nicht von TMDB unterstützt oder zertifiziert. Optionale TMDb-Wochentrends spiegeln das TMDb-Interesse wider, keine Sehzahlen. Bewertungen behalten ihre Quell-Labels.',
			'lurokaDiscovery.tmdbSettings' => 'Entdeckungsquellen',
			'lurokaDiscovery.setupDescription' => 'Die Cinemeta-Entdeckung funktioniert sofort ohne Konto: beliebte Filme und Serien, IMDb-Bewertungen und Auszeichnungsgewinner. Verbinde optional TMDb für Wochentrends mit einem API-Key oder API Read Access Token von themoviedb.org/settings/api. Deine Zugangsdaten werden auf diesem Gerät gespeichert.',
			'lurokaDiscovery.apiKey' => 'TMDb API-Key / Read Access Token',
			'lurokaDiscovery.connect' => 'TMDb verbinden',
			'lurokaDiscovery.connecting' => 'Verbinde…',
			'lurokaDiscovery.connected' => 'TMDb verbunden · Wochentrends und Auszeichnungen aktiviert',
			'lurokaDiscovery.builtInKeyNote' => 'Läuft auf Lurokas integriertem gemeinsamen TMDb-Key. Füge unten deinen eigenen kostenlosen Key hinzu für eigene Rate-Limits und volle Kontrolle.',
			'lurokaDiscovery.disconnect' => 'TMDb trennen',
			'lurokaDiscovery.invalidKey' => 'TMDb konnte nicht überprüft werden. Prüfe deine Zugangsdaten und Internetverbindung.',
			'lurokaDiscovery.feedError' => 'Die TMDb-Entdeckung ist nicht verfügbar. Bitte versuche es erneut.',
			'lurokaDiscovery.allTitles' => 'Alle Titel',
			'lurokaDiscovery.available' => 'In deiner Bibliothek',
			'lurokaDiscovery.checking' => 'Prüfe deine Bibliotheken…',
			'lurokaDiscovery.availabilityUnknown' => 'Einige Bibliotheken konnten nicht geprüft werden. Versuche eine Aktualisierung.',
			'lurokaDiscovery.noAvailable' => 'Keine passenden Titel in den geprüften Bibliotheken gefunden.',
			'lurokaDiscovery.sourceInfo' => 'Wochentrends & ausgewählte Auszeichnungsgewinner · TMDb',
			'lurokaDiscovery.configure' => 'Entdeckungseinstellungen',
			'app.title' => 'Luroka',
			'appIcon.title' => 'App-Symbol',
			'appIcon.defaultIcon' => 'Standard',
			'appIcon.current' => 'Aktuelles Symbol',
			'appIcon.locked' => 'Supporter-Vorteil',
			'appIcon.lockedHint' => 'Alternative Symbole sind ein Supporter-Vorteil.',
			'appIcon.changeFailed' => 'Das App-Symbol konnte nicht geändert werden',
			'appIcon.launcherHint' => 'Das neue Symbol erscheint auf deinem Homescreen, sobald du Luroka verlässt.',
			'appIcon.tvLauncherHint' => 'Das neue Banner erscheint, sobald du Luroka verlässt. Android TV kann das alte bis zum Neustart des TVs zeigen.',
			'appIcon.names.midnight' => 'Midnight',
			'appIcon.names.ember' => 'Ember',
			'appIcon.names.paper' => 'Paper',
			'appIcon.names.oled' => 'OLED',
			'appIcon.names.line' => 'Line',
			'appIcon.names.ocean' => 'Ocean',
			'appIcon.names.ultraviolet' => 'Ultraviolett',
			'appIcon.names.matcha' => 'Matcha',
			'appIcon.names.sunset' => 'Sunset',
			'appIcon.names.gold' => 'Gold',
			'appIcon.names.titanium' => 'Titan',
			'appIcon.names.glass' => 'Glas',
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
			'auth.signInWithPlex' => 'Mit Plex anmelden',
			'auth.showQRCode' => 'QR-Code anzeigen',
			'auth.authenticate' => 'Authentifizieren',
			'auth.authenticationTimeout' => 'Authentifizierung abgelaufen. Bitte erneut versuchen.',
			'auth.scanQRToSignIn' => 'Scanne diesen QR-Code, um dich anzumelden',
			'auth.waitingForAuth' => 'Warte auf die Authentifizierung …\nMelde dich über deinen Browser an.',
			'auth.useBrowser' => 'Browser verwenden',
			'auth.or' => 'oder',
			'auth.connectToMediaBrowser' => ({required Object product}) => 'Mit ${product} verbinden',
			'auth.quickConnect' => 'Quick Connect',
			'auth.useQuickConnect' => 'Quick Connect verwenden',
			'auth.quickConnectInstructions' => 'Öffne Quick Connect in Jellyfin und gib diesen Code ein.',
			'auth.quickConnectWaiting' => 'Warte auf Bestätigung…',
			'auth.quickConnectCancel' => 'Abbrechen',
			'auth.quickConnectExpired' => 'Quick Connect ist abgelaufen. Versuche es erneut.',
			'auth.localDataRecoveryRequired' => 'Luroka konnte lokale Anmeldedaten und ausstehende Wiedergabedaten nicht sicher wiederherstellen. Bitte melde dich erneut an.',
			'auth.pinCheckRejected' => 'Die Plex-PIN-Prüfung wurde abgelehnt',
			'common.cancel' => 'Abbrechen',
			'common.save' => 'Speichern',
			'common.close' => 'Schließen',
			'common.clear' => 'Leeren',
			'common.reset' => 'Zurücksetzen',
			'common.later' => 'Später',
			'common.submit' => 'Senden',
			'common.confirm' => 'Bestätigen',
			'common.retry' => 'Erneut versuchen',
			'common.logout' => 'Abmelden',
			'common.unknown' => 'Unbekannt',
			'common.refresh' => 'Aktualisieren',
			'common.yes' => 'Ja',
			'common.no' => 'Nein',
			'common.delete' => 'Löschen',
			'common.edit' => 'Bearbeiten',
			'common.shuffle' => 'Zufallswiedergabe',
			'common.addTo' => 'Hinzufügen zu …',
			'common.createNew' => 'Neu erstellen',
			'common.connect' => 'Verbinden',
			'common.disconnect' => 'Trennen',
			'common.play' => 'Abspielen',
			'common.pause' => 'Pause',
			'common.resume' => 'Fortsetzen',
			'common.error' => 'Fehler',
			'common.search' => 'Suche',
			'common.home' => 'Start',
			'common.back' => 'Zurück',
			'common.settings' => 'Einstellungen',
			'common.mute' => 'Stumm',
			'common.ok' => 'OK',
			'common.off' => 'Aus',
			'common.options' => 'Optionen',
			'common.seasonNumber' => ({required Object number}) => 'Staffel ${number}',
			'common.episodeNumberTitle' => ({required Object number, required Object title}) => 'Folge ${number} – ${title}',
			'common.chapterNumber' => ({required Object number}) => 'Kapitel ${number}',
			'common.reconnect' => 'Erneut verbinden',
			'common.viewAll' => 'Alle anzeigen',
			'common.serversUnreachable' => 'Server nicht erreichbar',
			'common.loading' => 'Wird geladen …',
			'common.fullscreen' => 'Vollbild',
			'common.exitFullscreen' => 'Vollbild verlassen',
			'common.ratingSource.critic' => 'Kritiker',
			'common.ratingSource.audience' => 'Publikum',
			'common.ratingSource.imdb' => 'IMDb',
			'common.ratingSource.tmdb' => 'TMDB',
			'common.ratingSource.rottenTomatoes' => 'Rotten Tomatoes',
			'common.ratingSource.simkl' => 'Simkl',
			'common.ratingSource.mal' => 'MyAnimeList',
			'common.ratingSource.anilist' => 'AniList',
			'common.ratingSource.trakt' => 'Trakt',
			'common.ratingSource.rottenTomatoesCritic' => 'Rotten-Tomatoes-Kritiker',
			'common.ratingSource.rottenTomatoesAudience' => 'Rotten-Tomatoes-Publikum',
			'common.ratingSource.metacritic' => 'Metacritic',
			'common.ratingSource.letterboxd' => 'Letterboxd',
			'common.notAvailable' => 'N. v.',
			'common.url' => 'URL',
			'common.letterKeys' => 'ABC',
			'common.mediaKind.movie' => 'Film',
			'common.mediaKind.show' => 'Serie',
			'common.mediaKind.season' => 'Staffel',
			'common.mediaKind.episode' => 'Episode',
			'common.mediaKind.artist' => 'Interpret',
			'common.mediaKind.album' => 'Album',
			'common.mediaKind.track' => 'Titel',
			'common.mediaKind.collection' => 'Sammlung',
			'common.mediaKind.playlist' => 'Wiedergabeliste',
			'common.mediaKind.clip' => 'Clip',
			'common.mediaKind.photo' => 'Foto',
			'common.mediaKind.folder' => 'Ordner',
			'common.stay' => 'Bleiben',
			'common.exitApp' => 'Beenden',
			'common.exitAppBody' => 'Möchtest du Luroka wirklich beenden?',
			'tvHints.select' => 'Auswählen',
			'tvHints.browse' => 'Stöbern',
			'tvHints.back' => 'Zurück',
			'screens.licenses' => 'Lizenzen',
			'screens.switchProfile' => 'Profil wechseln',
			'screens.subtitleStyling' => 'Untertitel-Stil',
			'screens.mpvConfig' => 'mpv.conf',
			'screens.logs' => 'Protokolle',
			'mediaExtras.trailers' => 'Trailer',
			'mediaExtras.featurettes' => 'Featuretten',
			'mediaExtras.interviews' => 'Interviews',
			'mediaExtras.deletedScenes' => 'Gelöschte Szenen',
			'mediaExtras.behindTheScenes' => 'Hinter den Kulissen',
			'mediaExtras.scenesAndClips' => 'Szenen & Clips',
			'mediaExtras.other' => 'Weitere Extras',
			'update.available' => 'Update verfügbar',
			'update.versionAvailable' => ({required Object version}) => 'Version ${version} ist verfügbar',
			'update.currentVersion' => ({required Object version}) => 'Aktuell: ${version}',
			'update.skipVersion' => 'Diese Version überspringen',
			'update.viewRelease' => 'Versionshinweise anzeigen',
			'update.latestVersion' => 'Aktuellste Version installiert',
			'update.checkFailed' => 'Fehler bei der Updateprüfung',
			'supporter.title' => 'Luroka Supporter',
			'supporter.intro' => 'Ein einmaliger Kauf, der die Entwicklung von Luroka unterstützt und kosmetische Extras freischaltet:',
			'supporter.presetThemes' => 'Preset-Designs',
			'supporter.presetThemesDescription' => 'Ember, Glacier, Forest, Plum und Paper',
			'supporter.customTheme' => 'Benutzerdefiniertes Design',
			'supporter.customThemeDescription' => 'Wähle jede Farbe selbst',
			'supporter.appIcons' => 'App-Symbole',
			'supporter.appIconsDescription' => 'Wähle ein alternatives Luroka-Symbol',
			'supporter.buy' => ({required Object price}) => 'Für ${price} kaufen',
			'supporter.loadingPrice' => 'Preis wird geladen…',
			'supporter.restore' => 'Käufe wiederherstellen',
			'supporter.pending' => 'Dein Kauf wartet auf Zahlung oder Freigabe. Die Extras werden freigeschaltet, sobald der Store ihn abschließt.',
			'supporter.thankYouTitle' => 'Danke, dass du Luroka unterstützt',
			'supporter.thankYouBody' => 'Deine Supporter-Extras sind freigeschaltet.',
			'supporter.tileSubtitle' => 'Designs und App-Symbole mit einem einmaligen Kauf freischalten',
			'supporter.tileSubtitleThemesOnly' => 'Designs mit einem einmaligen Kauf freischalten',
			'supporter.tileUnlocked' => 'Danke für deine Unterstützung',
			'supporter.errors.storeUnavailable' => 'Käufe sind nicht verfügbar. Prüfe, ob du im Store angemeldet bist und Käufe auf diesem Gerät erlaubt sind.',
			'supporter.errors.productNotFound' => 'Der Supporter-Kauf ist in deinem Store gerade nicht verfügbar.',
			'supporter.errors.productQueryFailed' => 'Der Preis konnte nicht geladen werden. Prüfe deine Verbindung und versuche es erneut.',
			'supporter.errors.purchaseFailed' => 'Der Kauf ist nicht durchgegangen. Versuche es erneut.',
			'supporter.errors.restoreFailed' => 'Der Store war nicht erreichbar, um deine Käufe wiederherzustellen. Versuche es erneut.',
			'supporter.errors.nothingToRestore' => 'Für dieses Store-Konto wurde kein Supporter-Kauf gefunden.',
			'settings.title' => 'Einstellungen',
			'settings.supportDeveloper' => 'Luroka unterstützen',
			'settings.supportDeveloperDescription' => 'Per Liberapay spenden, um die Entwicklung zu fördern',
			'settings.language' => 'Sprache',
			'settings.theme' => 'Design',
			'settings.appearance' => 'Darstellung',
			'settings.videoPlayback' => 'Videowiedergabe',
			'settings.videoPlaybackDescription' => 'Wiedergabeverhalten konfigurieren',
			'settings.advanced' => 'Erweitert',
			'settings.episodePosterMode' => 'Episodenposter-Stil',
			'settings.seriesPoster' => 'Serienposter',
			'settings.seasonPoster' => 'Staffelposter',
			'settings.episodeThumbnail' => 'Vorschaubild',
			'settings.homeHeroSize' => 'Karussell-Größe',
			'settings.homeHeroSizeSmall' => 'Klein',
			'settings.homeHeroSizeMedium' => 'Mittel',
			'settings.homeHeroSizeLarge' => 'Groß',
			'settings.secondsLabel' => 'Sekunden',
			'settings.minutesLabel' => 'Minuten',
			'settings.secondsShort' => 's',
			'settings.minutesShort' => 'm',
			'settings.durationHint' => ({required Object min, required Object max}) => 'Dauer eingeben (${min}-${max})',
			'settings.systemTheme' => 'System',
			'settings.lightTheme' => 'Hell',
			'settings.darkTheme' => 'Dunkel',
			'settings.oledTheme' => 'OLED',
			'settings.libraryDensity' => 'Darstellungsdichte der Mediathek',
			'settings.displayScale' => 'Skalierung',
			'settings.compact' => 'Kompakt',
			'settings.comfortable' => 'Großzügig',
			'settings.gridSpacing' => 'Rasterabstand',
			'settings.gridSpacingTight' => 'Eng',
			'settings.gridSpacingNormal' => 'Normal',
			'settings.gridSpacingSpacious' => 'Großzügig',
			'settings.tvCornerSpotlightBackdrop' => 'Backdrop in der Ecke',
			'settings.tvCornerSpotlightBackdropDescription' => 'Zeigt das Spotlight-Artwork oben rechts statt bildschirmfüllend',
			'settings.viewMode' => 'Ansichtsmodus',
			'settings.gridView' => 'Raster',
			'settings.listView' => 'Liste',
			'settings.continueWatchingAction' => 'Aktion für Weiterschauen',
			'settings.continueWatchingPlay' => 'Abspielen',
			'settings.continueWatchingDetails' => 'Details öffnen',
			'settings.episodeAction' => 'Episodenaktion',
			'settings.episodePlay' => 'Abspielen',
			'settings.episodeDetails' => 'Details öffnen',
			'settings.useGlobalHubs' => 'Startlayout verwenden',
			'settings.useGlobalHubsDescription' => 'Einheitliche Start-Hubs anzeigen. Sonst Bibliotheksempfehlungen verwenden.',
			'settings.showServerNameOnHubs' => 'Servername bei Hubs anzeigen',
			'settings.showServerNameOnHubsDescription' => 'Servernamen immer in Hub-Titeln anzeigen.',
			'settings.groupLibrariesByServer' => 'Mediatheken nach Server gruppieren',
			'settings.groupLibrariesByServerDescription' => 'Sidebar-Bibliotheken nach Medienserver gruppieren.',
			'settings.alwaysKeepSidebarOpen' => 'Seitenleiste immer geöffnet halten',
			'settings.alwaysKeepSidebarOpenDescription' => 'Seitenleiste bleibt erweitert und Inhaltsbereich passt sich an',
			'settings.showUnwatchedCount' => 'Anzahl nicht gesehener Folgen anzeigen',
			'settings.showUnwatchedCountDescription' => 'Zeigt die Anzahl nicht gesehener Episoden bei Serien und Staffeln an',
			'settings.showWatchedIndicators' => 'Gesehen-Markierungen anzeigen',
			'settings.showWatchedIndicatorsDescription' => 'Zeigt ein Häkchen bei gesehenen Filmen, Serien und Episoden an',
			'settings.showEpisodeNumberOnCards' => 'Episodennummer auf Karten anzeigen',
			'settings.showEpisodeNumberOnCardsDescription' => 'Staffel- und Episodennummer auf Episodenkarten anzeigen',
			'settings.showSeasonPostersOnTabs' => 'Staffelposter auf Tabs anzeigen',
			'settings.showSeasonPostersOnTabsDescription' => 'Poster jeder Staffel über ihrem Tab anzeigen',
			'settings.tvFullCardLayout' => 'Vollflächige TV-Karten',
			'settings.tvFullCardLayoutDescription' => 'TV-Karten nur mit Bild verwenden und Darstellernamen einblenden',
			'settings.focusGlow' => 'Fokusleuchten',
			'settings.focusGlowDescription' => 'Sanftes Leuchten um die fokussierte Karte anzeigen',
			'settings.visualEffects' => 'Visuelle Effekte',
			'settings.visualEffectsAuto' => 'Automatisch',
			'settings.visualEffectsAutoDescription' => 'Effekte auf leistungsschwachen Geräten automatisch reduzieren',
			'settings.visualEffectsFull' => 'Vollständig',
			'settings.visualEffectsReduced' => 'Reduziert',
			'settings.visualEffectsReducedDescription' => 'Weniger Animationen und Grafiken mit niedrigerer Auflösung',
			'settings.hideSpoilers' => 'Spoiler für nicht gesehene Episoden verbergen',
			'settings.hideSpoilersDescription' => 'Vorschaubilder und Beschreibungen ungesehener Episoden verwischen',
			'settings.playerBackend' => 'Wiedergabe-Engine',
			'settings.playerBackendDescription' => 'mpv spielt mehr Formate ab und bietet mehr Funktionen — empfohlen. ExoPlayer hilft, wenn die Wiedergabe auf diesem Gerät fehlschlägt oder ruckelt.',
			'settings.exoPlayer' => 'ExoPlayer',
			'settings.mpv' => 'mpv',
			'settings.hardwareDecoding' => 'Hardwaredekodierung',
			'settings.hardwareDecodingDescription' => 'Hardwarebeschleunigung verwenden, sofern verfügbar',
			'settings.playbackBuffer' => 'Wiedergabepuffer',
			'settings.playbackBufferAuto' => 'Automatisch (empfohlen)',
			'settings.playbackBufferLarge' => 'Groß',
			'settings.playbackBufferExtraLarge' => 'Extra groß',
			'settings.playbackBufferDescription' => 'Puffert mehr gegen instabile Verbindungen. Zusätzlich durch die Puffergröße begrenzt.',
			'settings.defaultQualityTitle' => 'Standardqualität',
			'settings.streamingQualityOriginalHint' => 'Spielt die Datei genau wie gespeichert ab — beste Qualität, benötigt die meiste Bandbreite',
			'settings.cellularQualityTitle' => 'Standardqualität im Mobilfunknetz',
			'settings.cellularQualitySameAsDefault' => 'Wie Standardqualität',
			'settings.directPlayCoveredQuality' => 'Kleinere Videos in Originalqualität abspielen',
			'settings.directPlayCoveredQualityDescription' => 'Videos, die bereits innerhalb des Qualitätslimits liegen, per Direct Play abspielen, statt sie zu transkodieren',
			'settings.videoCodecs' => 'Video-Codecs',
			'settings.videoCodecsDescription' => 'Nicht ausgewählte Codecs transkodiert der Server',
			'settings.videoCodecsAlwaysAccepted' => 'Immer akzeptiert',
			'settings.musicQualityTitle' => 'Musikqualität',
			'settings.subtitleStyling' => 'Untertitel-Stil',
			'settings.subtitleStylingDescription' => 'Aussehen von Untertiteln anpassen',
			'settings.smallSkipDuration' => 'Kleines Sprungintervall',
			'settings.largeSkipDuration' => 'Großes Sprungintervall',
			'settings.rewindOnResume' => 'Zurückspulen bei Fortsetzung',
			'settings.secondsUnit' => ({required Object seconds}) => '${seconds} Sekunden',
			'settings.defaultSleepTimer' => 'Standard-Schlaftimer',
			'settings.minutesUnit' => ({required Object minutes}) => '${minutes} Minuten',
			'settings.rememberTrackSelections' => 'Spurauswahl pro Serie/Film merken',
			'settings.rememberTrackSelectionsDescription' => 'Audio- und Untertitelauswahl je Titel merken',
			'settings.rememberTrackSelectionsBackendRule' => 'Plex speichert jede Auswahl pro Datei auf dem Server; Jellyfin aktiviert außerdem die Kontooption „Auswahl merken“; Emby wird nicht unterstützt',
			'settings.followServerTrackSelections' => 'Serverseitige Spurauswahl pro Episode verwenden',
			'settings.followServerTrackSelectionsDescription' => 'Beim Episodenwechsel die auf dem Server ausgewählten Audio- und Untertitelspuren übernehmen, statt die aktuelle Auswahl zu übertragen',
			'settings.resumeMusicOnLaunch' => 'Musiksitzung merken',
			'settings.resumeMusicOnLaunchDescription' => 'Beim App-Start den letzten Titel pausiert an der letzten Stelle wieder öffnen',
			'settings.showChapterMarkersOnTimeline' => 'Kapitelmarkierungen auf der Suchleiste anzeigen',
			'settings.showChapterMarkersOnTimelineDescription' => 'Die Suchleiste an Kapitelgrenzen unterteilen',
			'settings.specialsOrdering' => 'Specials in Episodenreihenfolge',
			'settings.specialsOrderingDescription' => 'Wo Specials in der Wiedergabereihenfolge einer Serie abgespielt werden',
			'settings.specialsOrderingServer' => 'Serverreihenfolge folgen',
			'settings.specialsOrderingAirDate' => 'Nach Ausstrahlungsdatum einfügen',
			'settings.specialsOrderingLast' => 'Nach den regulären Staffeln',
			'settings.clickVideoTogglesPlayback' => 'Video zum Abspielen oder Pausieren anklicken',
			'settings.clickVideoTogglesPlaybackDescription' => 'Video zum Abspielen oder Pausieren anklicken, statt die Steuerung anzuzeigen.',
			'settings.videoPlayerControls' => 'Videoplayer-Steuerung',
			'settings.keyboardShortcuts' => 'Tastenkürzel',
			'settings.keyboardShortcutsDescription' => 'Tastenkürzel anpassen',
			'settings.videoPlayerNavigation' => 'Videoplayer-Navigation',
			'settings.videoPlayerNavigationDescription' => 'Mit den Pfeiltasten durch die Videoplayer-Steuerung navigieren',
			'settings.watchTogetherRelay' => 'Relay für gemeinsames Schauen',
			'settings.watchTogetherRelayDescription' => 'Öffentliche Open Watch Party Relays, sofern du kein eigenes setzt',
			'settings.watchTogetherRelayHint' => 'https://mein-relay.beispiel.de',
			'settings.watchTogetherRelayInvalid' => 'Gib eine gültige HTTP- oder HTTPS-Basis-URL für das Relay ein.',
			'settings.crashReporting' => 'Absturzberichte',
			'settings.crashReportingDescription' => 'Absturzberichte senden, um die App zu verbessern',
			'settings.debugLogging' => 'Debug-Protokollierung',
			'settings.debugLoggingDescription' => 'Detaillierte Protokolle zur Fehleranalyse aktivieren',
			'settings.viewLogs' => 'Protokolle anzeigen',
			'settings.viewLogsDescription' => 'App-Protokolle anzeigen',
			'settings.clearImageCache' => 'Bildercache leeren',
			'settings.clearImageCacheDescription' => 'Zwischengespeicherte Artworks und Vorschaubilder löschen. Bilder können langsamer laden, bis sie erneut heruntergeladen werden.',
			'settings.clearImageCacheSuccess' => 'Bildercache erfolgreich geleert',
			'settings.resetSettings' => 'Einstellungen zurücksetzen',
			'settings.resetSettingsDescription' => 'Standardeinstellungen wiederherstellen. Dies kann nicht rückgängig gemacht werden.',
			'settings.resetSettingsSuccess' => 'Einstellungen erfolgreich zurückgesetzt',
			'settings.backup' => 'Sicherung',
			'settings.exportSettings' => 'Einstellungen exportieren',
			'settings.exportSettingsDescription' => 'Einstellungen in einer Datei speichern',
			'settings.exportSettingsSuccess' => 'Einstellungen exportiert',
			'settings.importSettings' => 'Einstellungen importieren',
			'settings.importSettingsDescription' => 'Einstellungen aus einer Datei wiederherstellen',
			'settings.importSettingsConfirm' => 'Dies ersetzt deine aktuellen Einstellungen. Fortfahren?',
			'settings.importSettingsSuccess' => 'Einstellungen importiert',
			'settings.importSettingsInvalidFile' => 'Diese Datei ist kein gültiger Luroka-Einstellungsexport',
			'settings.importSettingsNoUser' => 'Vor dem Import bitte anmelden',
			'settings.shortcutsReset' => 'Tastenkürzel auf Standard zurückgesetzt',
			'settings.resetShortcutsConfirm' => 'Deine eigenen Shortcuts werden durch die Standard-Shortcuts ersetzt. Fortfahren?',
			'settings.about' => 'Über',
			'settings.aboutDescription' => 'App-Informationen und Lizenzen',
			'settings.updates' => 'Updates',
			'settings.updateAvailable' => 'Update verfügbar',
			'settings.checkForUpdates' => 'Nach Updates suchen',
			'settings.autoCheckUpdatesOnStartup' => 'Beim Start automatisch nach Updates suchen',
			'settings.autoCheckUpdatesOnStartupDescription' => 'Beim Start benachrichtigen, wenn ein Update verfügbar ist',
			'settings.validationErrorEnterNumber' => 'Bitte eine gültige Zahl eingeben',
			'settings.validationErrorDuration' => ({required Object min, required Object max, required Object unit}) => 'Dauer muss zwischen ${min} und ${max} ${unit} liegen',
			'settings.shortcutAlreadyAssigned' => ({required Object action}) => 'Tastenkürzel bereits zugewiesen an ${action}',
			'settings.shortcutUpdated' => ({required Object action}) => 'Tastenkürzel aktualisiert für ${action}',
			'settings.saveFailed' => 'Änderungen konnten nicht gespeichert werden. Versuche es erneut.',
			'settings.autoPlayAndSkip' => 'Autoplay & Überspringen',
			'settings.autoPlayNextEpisode' => 'Nächste Episode automatisch abspielen',
			'settings.autoPlayNextEpisodeDescription' => 'Die nächste Episode automatisch starten, wenn die aktuelle endet',
			'settings.shuffleStartsFromBeginning' => 'Zufallswiedergabe beginnt am Anfang',
			'settings.shuffleStartsFromBeginningDescription' => 'Bei Zufallswiedergabe jede Episode von Anfang an abspielen, statt sie fortzusetzen',
			'settings.playNextCountdown' => 'Countdown bis zur nächsten Episode',
			'settings.playNextCountdownImmediate' => 'Sofort abspielen',
			'settings.skipIntroMode' => 'Intro überspringen',
			'settings.skipIntroModeOffDescription' => 'Intros normal abspielen, ohne Schaltfläche zum Überspringen',
			'settings.skipIntroModeButtonDescription' => 'Schaltfläche zum Überspringen anzeigen, wenn ein Intro beginnt',
			'settings.skipIntroModeAutoDescription' => 'Intros nach der untenstehenden Verzögerung automatisch überspringen',
			'settings.skipCreditsMode' => 'Abspann überspringen',
			'settings.skipCreditsModeOffDescription' => 'Abspann normal abspielen, ohne Schaltfläche zum Überspringen',
			'settings.skipCreditsModeButtonDescription' => 'Schaltfläche zum Überspringen anzeigen, wenn der Abspann beginnt',
			'settings.skipCreditsModeAutoDescription' => 'Abspann automatisch überspringen und die nächste Episode abspielen',
			'settings.skipMarkerModeOff' => 'Aus',
			'settings.skipMarkerModeButton' => 'Schaltfläche anzeigen',
			'settings.skipMarkerModeAuto' => 'Automatisch',
			'settings.forceSkipMarkerFallback' => 'Ersatzmarkierungen erzwingen',
			'settings.forceSkipMarkerFallbackDescription' => 'Kapitel-Titelmuster auch dann verwenden, wenn Plex über Markierungen verfügt',
			'settings.autoSkipDelay' => 'Verzögerung für automatisches Überspringen',
			'settings.autoSkipDelayDescription' => ({required Object seconds}) => '${seconds} Sekunden vor dem automatischen Überspringen warten',
			'settings.introPattern' => 'Intro-Markierungsmuster',
			'settings.introPatternDescription' => 'Regulärer Ausdruck zum Erkennen von Intro-Markierungen in Kapiteltiteln',
			'settings.creditsPattern' => 'Abspann-Markierungsmuster',
			'settings.creditsPatternDescription' => 'Regulärer Ausdruck zum Erkennen von Abspann-Markierungen in Kapiteltiteln',
			'settings.invalidRegex' => 'Ungültiger regulärer Ausdruck',
			'settings.regex' => 'Regulärer Ausdruck',
			'settings.downloads' => 'Downloads',
			'settings.downloadLocationDescription' => 'Speicherort für heruntergeladene Inhalte wählen',
			'settings.downloadLocationDefault' => 'Standard (App-Speicher)',
			'settings.downloadLocationCustom' => 'Benutzerdefinierter Speicherort',
			'settings.selectFolder' => 'Ordner auswählen',
			'settings.resetToDefault' => 'Auf Standard zurücksetzen',
			'settings.currentPath' => ({required Object path}) => 'Aktuell: ${path}',
			'settings.downloadLocationChanged' => 'Download-Speicherort geändert',
			'settings.downloadLocationReset' => 'Download-Speicherort auf Standard zurückgesetzt',
			'settings.downloadLocationInvalid' => 'Ausgewählter Ordner ist nicht beschreibbar',
			'settings.downloadLocationPickerUnavailable' => 'Die Ordnerauswahl ist auf diesem Gerät nicht verfügbar',
			'settings.downloadOnWifiOnly' => 'Nur über WLAN herunterladen',
			'settings.downloadOnWifiOnlyDescription' => 'Downloads über mobile Daten verhindern',
			'settings.autoRemoveWatchedDownloads' => 'Gesehene Downloads automatisch entfernen',
			'settings.autoRemoveWatchedDownloadsDescription' => 'Angesehene Downloads automatisch löschen',
			'settings.cellularDownloadBlocked' => 'Downloads über das Mobilfunknetz sind blockiert. Nutze WLAN oder ändere die Einstellung.',
			'settings.maxVolume' => 'Maximale Lautstärke',
			'settings.maxVolumeDescription' => 'Lautstärkeanhebung über 100 % für leise Medien erlauben',
			'settings.maxVolumePercent' => ({required Object percent}) => '${percent} %',
			'settings.discordRichPresence' => 'Discord-Aktivitätsstatus',
			'settings.discordRichPresenceDescription' => 'Auf Discord anzeigen, was du gerade schaust',
			'settings.services' => 'Dienste',
			'settings.servicesDescription' => 'Trakt, MyAnimeList, Seerr und mehr verbinden',
			'settings.manageLibrariesDescription' => 'Mediatheken neu anordnen und ausblenden',
			'settings.companionRemoteServer' => 'Companion-Fernbedienungsserver',
			'settings.companionRemoteServerDescription' => 'Mobilgeräten in deinem Netzwerk erlauben, diese App zu steuern',
			'settings.companionRemoteServerStartFailed' => 'Companion-Fernbedienungsserver konnte nicht gestartet werden',
			'settings.companionRemoteServerStopFailed' => 'Companion-Fernbedienungsserver konnte nicht gestoppt werden',
			'settings.autoPip' => 'Automatisches Bild-in-Bild',
			'settings.autoPipDescription' => 'Beim Verlassen der App während der Wiedergabe automatisch Bild-in-Bild starten',
			'settings.matchContentFrameRate' => 'Inhalts-Bildrate anpassen',
			'settings.matchContentFrameRateDescription' => 'Bildwiederholrate des Displays an Videoinhalt anpassen',
			'settings.matchContentResolution' => 'An Auflösung des Inhalts anpassen',
			'settings.matchContentResolutionDescription' => 'Wechselt die Anzeige auf die native Auflösung des Videos, damit dein Fernseher das Hochskalieren übernimmt. Menüs und Untertitel werden während der Wiedergabe ebenfalls hochskaliert',
			'settings.matchRefreshRate' => 'Bildwiederholrate anpassen',
			'settings.matchRefreshRateDescription' => 'Bildwiederholrate im Vollbild anpassen',
			'settings.matchDynamicRange' => 'Dynamikumfang anpassen',
			'settings.matchDynamicRangeDescription' => 'HDR für HDR-Inhalte einschalten, danach zurück zu SDR',
			'settings.displaySwitchDelay' => 'Verzögerung beim Displaywechsel',
			'settings.tunneledPlayback' => 'Tunnelwiedergabe',
			'settings.tunneledPlaybackDescription' => 'Video-Tunneling verwenden. Deaktivieren, wenn HDR-Wiedergabe schwarzes Video zeigt oder Bewegungen ruckeln.',
			'settings.audioPassthrough' => 'Audio-Durchleitung',
			'settings.audioPassthroughDescription' => 'Dolby/DTS-Audio ohne Neukodierung an deinen Receiver oder Fernseher senden und Surround-Sound erhalten. Deaktivieren, wenn kein Ton zu hören ist.',
			'settings.audioPassthroughDescriptionApple' => 'Apples nativen Dolby-Decoder für Dolby Digital Plus einschließlich Atmos verwenden. DTS und TrueHD werden weiterhin als Mehrkanal-PCM wiedergegeben. Deaktivieren, wenn kein Ton zu hören ist.',
			'settings.audioPassthroughDescriptionAppleSpatial' => 'Nutzt den nativen Dolby-Decoder von Apple für Dolby Digital Plus inklusive Atmos. Auf iOS, iPadOS und tvOS 26 oder neuer spielen TrueHD Atmos und DTS:X als Spatial Audio. Andere DTS- und TrueHD-Titel spielen als Multikanal-PCM. Ausschalten, wenn du keinen Ton hast.',
			'settings.audioPassthroughOverriddenByNormalization' => 'Aus, solange die Lautstärkenormalisierung aktiv ist',
			'settings.audioChannelLimit' => 'Audiokanäle',
			'settings.audioChannelLimitDescription' => 'Mische decodierten Ton für Lautsprecher, Kopfhörer oder HDMI-Setups herunter, die nicht jeden Kanal wiedergeben können',
			'settings.audioChannelLimitOriginal' => 'Original',
			'settings.audioChannelLimitOriginalDescription' => 'Alle Kanäle des Titels wiedergeben',
			'settings.audioChannelLimitSurround51' => 'Bis 5.1',
			'settings.audioChannelLimitSurround51Description' => 'Mixe 7.1 auf 5.1 herunter für TVs und Receiver, die nur 5.1-PCM annehmen. Passthrough ist nicht betroffen.',
			'settings.audioChannelLimitStereo' => 'Stereo',
			'settings.audioChannelLimitStereoDescription' => 'Auf zwei Kanäle heruntermischen für Stereo-Lautsprecher oder Kopfhörer. Schaltet Passthrough aus.',
			'settings.downmixCenterBoost' => 'Verstärkung des Center-Kanals',
			'settings.downmixCenterBoostValue' => ({required Object db}) => '${db} dB',
			'settings.downmixCenterBoostLabel' => 'Verstärkung (dB)',
			'settings.downmixCenterBoostShort' => 'dB',
			'settings.audioDownmixNormalize' => 'Lautstärke beim Downmix normalisieren',
			'settings.audioDownmixNormalizeDescription' => 'Senkt den Mix ab, um Übersteuerung zu vermeiden. Deaktivieren, um die Originallautstärke zu behalten (laute Szenen können verzerren).',
			'settings.dvConversionMode' => 'Dolby-Vision-Konvertierung',
			'settings.dvConversionModeDescription' => 'Wähle, wie Dateien mit Dolby-Vision-Profil 7 behandelt werden.',
			'settings.dvConversionAuto' => 'Automatisch',
			'settings.dvConversionNative' => 'Nativ / deaktiviert',
			'settings.dvConversionDv81' => 'P7 → P8.1',
			'settings.dvConversionHevcStrip' => 'P7 → HEVC',
			'settings.dvConversionAutoDescription' => 'Gerätefähigkeiten erkennen und normales Fallback-Verhalten verwenden',
			'settings.dvConversionNativeDescription' => 'Natives DV7 erzwingen und einen erneuten DV-Konvertierungsversuch unterdrücken',
			'settings.dvConversionDv81Description' => 'Inline-RPU-Konvertierung in Dolby-Vision-Profil 8.1 erzwingen',
			'settings.dvConversionHevcStripDescription' => 'Dolby-Vision-RPU/EL-Schichten entfernen und reines HEVC ausgeben',
			'settings.disableDolbyVision' => 'Dolby Vision deaktivieren',
			'settings.disableDolbyVisionDescription' => 'Statt Dolby Vision die HDR10- oder HLG-Ebene der Datei abspielen, sofern vorhanden',
			'settings.hdrSdrConversion' => 'HDR-zu-SDR-Konvertierung',
			'settings.hdrSdrConversionDescription' => 'Wähle, was HDR-Videos umwandelt, wenn das Display kein HDR darstellen kann.',
			'settings.hdrSdrConversionAuto' => 'Automatisch',
			'settings.hdrSdrConversionAutoDescription' => 'Gerät ab Android 9, Player bei älteren Versionen',
			'settings.hdrSdrConversionDevice' => 'Gerät',
			'settings.hdrSdrConversionDeviceDescription' => 'Die Videohardware des Geräts wandelt um. Am schnellsten, die Farben hängen aber vom Gerät ab',
			'settings.hdrSdrConversionPlayer' => 'Player',
			'settings.hdrSdrConversionPlayerDescription' => 'Der Player wandelt um. Einheitliche Farben, aber 4K kann auf schwachen TV-Boxen ruckeln',
			'settings.deinterlace' => 'Deinterlacing',
			'settings.deinterlaceDescription' => 'Kammartefakte aus interlaced Videos entfernen (nur mpv-Player)',
			'settings.deinterlaceOff' => 'Aus',
			'settings.deinterlaceOffDescription' => 'Interlaced-Video so zeigen, wie es decodiert wurde',
			'settings.deinterlaceVideo' => 'Video',
			'settings.deinterlaceVideoDescription' => 'Verwandle jedes Halbbild in ein Vollbild. Für für TV produziertes Video wie Sport, Nachrichten und Konzerte',
			'settings.deinterlaceFilm' => 'Film',
			'settings.deinterlaceFilmDescription' => 'Stellt die Originalframes von auf 29,97 fps teleziniertem Film und Animation wieder her, üblich auf NTSC-DVDs. Für TV produziertes Video ruckelt. Live TV nutzt Video',
			'settings.requireProfileSelectionOnOpen' => 'Profil beim Öffnen abfragen',
			'settings.requireProfileSelectionOnOpenDescription' => 'Profilauswahl bei jedem Öffnen der App anzeigen',
			'settings.forceTvMode' => 'TV-Modus erzwingen',
			'settings.forceTvModeKeepTitle' => 'TV-Layout behalten?',
			'settings.forceTvModeKeepBody' => ({required Object seconds}) => 'Das TV-Layout ist für Fernbedienungen ausgelegt. Zurück zum normalen Layout in ${seconds} s.',
			'settings.forceTvModeKeepConfirm' => 'TV-Layout behalten',
			'settings.forceTvModeReverted' => 'TV-Layout zurückgesetzt',
			'settings.forceTvModeDescription' => 'TV-Layout erzwingen. Für Geräte ohne automatische Erkennung. Neustart erforderlich.',
			'settings.startInFullscreen' => 'Im Vollbildmodus starten',
			'settings.startInFullscreenDescription' => 'Luroka beim Start im Vollbildmodus öffnen',
			'settings.exitFullscreenOnPlayerClose' => 'Vollbild beim Schließen des Players beenden',
			'settings.exitFullscreenOnPlayerCloseDescription' => 'Vollbildmodus automatisch beenden, wenn der Videoplayer geschlossen wird',
			'settings.autoHidePerformanceOverlay' => 'Leistungsoverlay automatisch ausblenden',
			'settings.autoHidePerformanceOverlayDescription' => 'Leistungsoverlay mit den Wiedergabesteuerungen ein-/ausblenden',
			'settings.showNavBarLabels' => 'Navigationsleisten-Beschriftungen anzeigen',
			'settings.showNavBarLabelsDescription' => 'Textbeschriftungen unter den Symbolen der Navigationsleiste anzeigen',
			'settings.startupSection' => 'Startbereich',
			'settings.showExploreTab' => 'Tab „Entdecken“ anzeigen',
			'settings.showExploreTabDescription' => 'Zeigt den Tab „Entdecken“ mit Inhalten aus Plex Discover und verbundenen Trackern an',
			'settings.liveTvDefaultFavorites' => 'Standardmäßig Favoritenkanäle',
			'settings.liveTvDefaultFavoritesDescription' => 'Beim Öffnen von Live TV nur Favoritenkanäle anzeigen',
			'settings.general' => 'Allgemein',
			'settings.generalDescription' => 'Sprache, Start und Fensterverhalten',
			'settings.languageAndRegion' => 'Sprache & Region',
			'settings.startup' => 'Start',
			'settings.display' => 'Anzeige',
			'settings.libraryAndCards' => 'Mediathek & Karten',
			'settings.homeScreen' => 'Startseite',
			'settings.navigation' => 'Navigation',
			'settings.window' => 'Fenster',
			'settings.liveTv' => 'Live-TV',
			'settings.player' => 'Wiedergabe',
			'settings.videoAndDisplay' => 'Video & Anzeige',
			'settings.audio' => 'Audio',
			'settings.quality' => 'Qualität',
			'settings.subtitles' => 'Untertitel',
			'settings.seekAndTiming' => 'Spulen & Timing',
			'settings.behavior' => 'Verhalten',
			'settings.gestures' => 'Gesten',
			'settings.gestureBrightnessSwipe' => 'Wischen für Helligkeit',
			'settings.gestureBrightnessSwipeDescription' => 'Wische am linken Rand nach oben oder unten, um die Helligkeit anzupassen',
			'settings.gestureVolumeSwipe' => 'Wischen für Lautstärke',
			'settings.gestureVolumeSwipeDescription' => 'Wische am rechten Rand nach oben oder unten, um die Lautstärke anzupassen',
			'settings.gesturePinchToZoom' => 'Zum Zoomen kneifen',
			'settings.gesturePinchToZoomDescription' => 'Kneife auf dem Video, um hinein- oder herauszuzoomen',
			_ => null,
		} ?? switch (path) {
			'settings.rememberBrightnessLevel' => 'Helligkeitsstufe merken',
			'settings.rememberBrightnessLevelDescription' => 'Wiedergabe mit der zuletzt per Wischgeste eingestellten Helligkeit starten',
			'settings.controls' => 'Steuerung',
			'settings.rememberPlayerChanges' => 'Playeränderungen merken',
			'settings.rememberPlayerChangesDescription' => 'Wo eine während der Wiedergabe vorgenommene Änderung gespeichert und erneut angewendet wird',
			'settings.scopePlaybackSpeed' => 'Wiedergabegeschwindigkeit',
			'settings.scopeShaderPreset' => 'Shader-Voreinstellung',
			'settings.scopeAspectRatio' => 'Seitenverhältnis',
			'settings.scopeSyncOffsets' => 'Audio- und Untertitelsynchronisierung',
			'settings.playerScopeOff' => 'Nicht speichern',
			'settings.playerScopeGlobal' => 'Überall',
			'settings.playerScopeLibrary' => 'Pro Bibliothek',
			'settings.playerScopeTitle' => 'Pro Serie oder Film',
			'settings.exportDialogTitle' => 'Luroka-Einstellungen exportieren',
			'settings.velvetHourTheme' => 'Velvet Hour',
			'themeEditor.builtIn' => 'Integriert',
			'themeEditor.presets' => 'Presets',
			'themeEditor.custom' => 'Benutzerdefiniert',
			'themeEditor.customEmpty' => 'Noch nicht erstellt',
			'themeEditor.editCustom' => 'Benutzerdefiniertes Design bearbeiten',
			'themeEditor.editCustomDescription' => 'Wähle jede Farbe selbst',
			'themeEditor.locked' => 'Mit Supporter freischalten',
			'themeEditor.savedLocked' => 'Gespeichert — wird mit Supporter freigeschaltet',
			'themeEditor.title' => 'Benutzerdefiniertes Design',
			'themeEditor.startFrom' => 'Starten von',
			'themeEditor.startFromDescription' => 'Alle Farben aus einem anderen Design kopieren',
			'themeEditor.colors' => 'Farben',
			'themeEditor.preview' => 'Vorschau',
			'themeEditor.slots.bg' => 'Hintergrund',
			'themeEditor.slots.surface' => 'Oberfläche',
			'themeEditor.slots.outline' => 'Kontur',
			'themeEditor.slots.text' => 'Text',
			'themeEditor.slots.textMuted' => 'Sekundärtext',
			'themeEditor.slots.accent' => 'Akzent',
			'themeEditor.opacity' => 'Deckkraft',
			'themeEditor.hexHint' => '#RRGGBB oder #AARRGGBB',
			'themeEditor.fromOtherThemes' => 'Aus anderen Designs',
			'themeEditor.swatchLabel' => ({required Object theme, required Object color}) => '${theme} ${color}',
			'themeEditor.contrast.textOnBg' => 'Text auf Hintergrund',
			'themeEditor.contrast.textOnSurface' => 'Text auf Oberfläche',
			'themeEditor.contrast.textMutedOnBg' => 'Sekundärtext auf Hintergrund',
			'themeEditor.contrast.textMutedOnSurface' => 'Sekundärtext auf Oberfläche',
			'themeEditor.contrast.accentOnBg' => 'Akzent auf Hintergrund',
			'themeEditor.contrast.accentOnSurface' => 'Akzent auf Oberfläche',
			'themeEditor.contrast.labelOnAccent' => 'Button-Label auf Akzent',
			'themeEditor.lowContrast' => ({required Object pair, required Object ratio, required Object minimum}) => '${pair}: ${ratio}:1, unter den empfohlenen ${minimum}:1',
			'themeEditor.discardTitle' => 'Änderungen verwerfen?',
			'themeEditor.discardMessage' => 'Deine nicht gespeicherten Farbänderungen gehen verloren.',
			'themeEditor.discard' => 'Verwerfen',
			'themeEditor.previewCardTitle' => ({required Object number}) => 'Folge ${number}',
			'themeEditor.previewCardSubtitle' => ({required Object minutes}) => '${minutes} Min. verbleiben',
			'themeEditor.previewSwitch' => 'Autoplay',
			'themeEditor.previewMutedText' => 'Sekundärtext sieht so aus',
			'seriesBrowser.oneEpisode' => '1 Folge',
			'seriesBrowser.watchedCount' => ({required Object count}) => '${count} gesehen',
			'seriesBrowser.episodeCount' => ({required Object count}) => '${count} Folgen',
			'seriesBrowser.episodesFor' => ({required Object season}) => '${season} · Folgen',
			'seriesBrowser.enterHint' => 'Auswahl: Staffel öffnen · ↓: Folgen',
			'titlePage.genre' => 'Genre',
			'titlePage.remaining' => ({required Object time}) => '${time} verbleiben',
			'titlePage.continueEpisode' => ({required Object season, required Object episode}) => 'S${season} E${episode} fortsetzen',
			'titlePage.watchlist' => 'Merkliste',
			'titlePage.more' => 'Mehr',
			'tvMenus.appearanceDescription' => 'Design, Bildränder und Poster',
			'lurokaPlayer.title' => 'Player-Einstellungen',
			'lurokaPlayer.watch' => 'Schauen',
			'lurokaPlayer.watchDescription' => 'Lege das Tempo fest, klinge aus und entscheide, was als Nächstes läuft.',
			'lurokaPlayer.picture' => 'Bildeinstellungen',
			'lurokaPlayer.pictureDescription' => 'Zoom, HDR und Videobearbeitung',
			'lurokaPlayer.sound' => 'Audio & Untertitel',
			'lurokaPlayer.audioSettings' => 'Audioeinstellungen',
			'lurokaPlayer.soundDescription' => 'Timing, Lautstärke und Tonausgabe',
			'lurokaPlayer.chooseTracks' => 'Sprach- und Untertitelspuren wählen',
			'lurokaPlayer.tools' => 'Erweitert',
			'lurokaPlayer.toolsDescription' => 'Wiedergabeinformationen und Diagnose',
			'lurokaPlayer.preferences' => 'Wiedergabepräferenzen',
			'lurokaPlayer.preferencesDescription' => 'Dein Kino, deine Standards. Starte mit Ton und Untertiteln, dann justiere Streaming und Bildschirm fein.',
			'lurokaPlayer.streamPreferences' => 'Streaming-Qualität',
			'lurokaPlayer.displayPreferences' => 'Display',
			'lurokaPlayer.enginePreferences' => 'Erweiterte Player-Optionen',
			'lurokaPlayer.seekPreferences' => 'Spulen',
			'lurokaPlayer.watchPreferences' => 'Autoplay & Überspringen',
			'lurokaPlayer.rememberPreferences' => 'Präferenzen merken',
			'lurokaSettings.quickSetup' => 'Schnelleinrichtung',
			'lurokaSettings.quickSetupDescription' => 'Starte mit dem Wichtigsten: flüssigeres TV-Browsen, eine bequeme Bildschirmanpassung, dein Startseite-Layout und Wiedergabepräferenzen.',
			'lurokaSettings.experience' => 'Deine Erfahrung',
			'lurokaSettings.experienceDescription' => 'Mach Luroka zu deinem Ding: Erscheinungsbild, Sprachen, Wiedergabe, Bibliotheken und Sehzeit.',
			'lurokaSettings.remoteHint' => '↑ ↓ Kategorien durchblättern  ·  → / Auswahl Optionen öffnen  ·  ← Zurück zu den Kategorien',
			'playerChrome.browse' => 'Kapitel & Warteschlange',
			'playerChrome.backToPlayback' => 'Zurück zur Wiedergabe',
			'playerChrome.nowPlaying' => 'JETZT LÄUFT',
			'playerChrome.options' => 'PLAYER-OPTIONEN',
			'tvLayout.screenMargins' => 'TV-Bildränder',
			'tvLayout.screenMarginsDescription' => 'App-Ränder verkleinern, wenn dein TV Teile des Bilds abschneidet',
			'tvLayout.screenMarginsDefault' => '0 % (Standard)',
			'studios.checkingCopies' => 'Andere Bibliotheken werden geprüft… Du kannst jederzeit ein bekanntes Exemplar auswählen.',
			'studios.incompleteCopies' => 'Einige Bibliotheken konnten nicht geprüft werden. Wähle eine bekannte Kopie oder brich ab und versuche es erneut.',
			'studios.partialFavorites' => 'Einige Favoriten konnten nicht geladen werden. Wähle „Aktualisieren“, um es erneut zu versuchen.',
			'studios.copyLookupFailedTitle' => 'Es konnten nicht alle Kopien überprüft werden',
			'studios.copyLookupFailedMessage' => 'Einige Bibliotheken haben nicht geantwortet. Du kannst eine bereits gefundene Kopie öffnen oder abbrechen und es erneut versuchen.',
			'studios.openKnownCopies' => 'Bekannte Exemplare anzeigen',
			'studios.browseAll' => 'Alle durchstöbern',
			'studios.titleCount' => ({required Object count}) => '${count} Titel',
			'studios.topRated' => 'Bestbewertet',
			'studios.mostWatched' => 'Am meisten geschaut in deiner Bibliothek',
			'studios.collection' => 'STUDIO-KOLLEKTION',
			'studios.loadedTitles' => ({required Object count}) => '${count} Titel geladen',
			'studios.sort' => 'Titel sortieren',
			'studios.sortTitleAscending' => 'Titel A–Z',
			'studios.sortTitleDescending' => 'Titel Z–A',
			'studios.sortNewest' => 'Neueste Veröffentlichung',
			'studios.sortOldest' => 'Älteste Veröffentlichung',
			'studios.sortAdded' => 'Kürzlich hinzugefügt',
			'studios.sortEpisodeAdded' => 'Kürzlich hinzugefügte Folge',
			'studios.sortRating' => 'Bestbewertet',
			'studios.title' => 'Nach Studio durchstöbern',
			'studios.all' => 'Alle',
			'studios.movies' => 'Filme',
			'studios.shows' => 'Serien',
			'studios.loadMore' => 'Weitere Titel laden',
			'studios.empty' => 'Keine passenden Titel in deinen derzeit sichtbaren Bibliotheken.',
			'studios.retry' => 'Weitere Titel konnten nicht geladen werden — auswählen, um es erneut zu versuchen',
			'studios.description' => 'Entdecke Filme und Serien dieses Studios in deinen Bibliotheken.',
			'dashboard.previousFeature' => 'Vorheriger Featured-Titel',
			'dashboard.nextFeature' => 'Nächster Featured-Titel',
			'dashboard.cinemaHome' => 'HOME',
			'dashboard.episodeFallback' => 'TV-Folge',
			'dashboard.timeLeft' => ({required Object minutes}) => '${minutes} Min. verbleiben',
			'dashboard.timeLeftHours' => ({required Object hours, required Object minutes}) => '${hours} Std. ${minutes} Min. verbleiben',
			'dashboard.spoilerHidden' => 'Episodendetails durch deine Spoiler-Einstellung ausgeblendet.',
			'dashboard.synopsisUnavailable' => 'Öffne Details, um mehr zu diesem Titel zu erfahren.',
			'dashboard.yourSpace' => 'DEIN BEREICH',
			'dashboard.title' => 'Dein Kino.',
			'dashboard.subtitle' => 'Setze eine Geschichte fort oder entdecke deine nächste.',
			'dashboard.featured' => 'LUROKA EMPFIEHLT',
			'dashboard.jumpBackIn' => 'Weiter ansehen',
			'dashboard.episodeLabel' => ({required Object season, required Object episode}) => 'S${season} · E${episode}',
			'dashboard.anotherPick' => 'Ein anderer Tipp',
			'dashboard.exploreSeries' => 'Serie entdecken',
			'dashboard.showFeatured' => 'Fokus-Titeldetails',
			'dashboard.showFeaturedDescription' => 'Zeige Artwork, Inhaltsangabe und Episodeninformationen für die hervorgehobene Karte.',
			'lurokaCatalog.aboutPerson' => 'IM SPOTLIGHT',
			'lurokaCatalog.biographyUnavailable' => 'Eine Biografie ist auf diesem Server nicht verfügbar.',
			'lurokaCatalog.filmography' => 'Filme & Serien in deinen Bibliotheken',
			'lurokaCatalog.recommended' => 'Empfohlen',
			'lurokaCatalog.browse' => 'Alle Titel',
			'lurokaCatalog.collections' => 'Sammlungen',
			'lurokaCatalog.browseHint' => 'Erkunde deinen Katalog. Gestalte die Auswahl mit Filtern und Sortierung.',
			'lurokaCatalog.recommendedHint' => 'Finde deine nächste Geschichte',
			'lurokaCatalog.details' => 'Hinter der Geschichte',
			'referenceDetails.oneEpisodeLeft' => '1 Folge verbleibt',
			'referenceDetails.playAll' => 'Alle abspielen',
			'referenceDetails.present' => 'Vorhanden',
			'referenceDetails.continuing' => 'Laufend',
			'referenceDetails.upNext' => 'Als Nächstes',
			'referenceDetails.episodesLeft' => ({required Object count}) => '${count} Folgen verbleiben',
			'lurokaThemes.title' => 'Luroka-Kino-Paletten',
			'lurokaThemes.coral' => 'Coral · Mitternachtsblau & Sonnenuntergang',
			'lurokaThemes.ocean' => 'Ocean · tiefes Blau & Eis',
			'lurokaThemes.jade' => 'Jade · Immergrün & Minze',
			'lurokaThemes.amethyst' => 'Amethyst · Mitternachtsviolett',
			'lurokaThemes.darkThemes' => 'Dunkle Kino-Designs',
			'lurokaThemes.lightThemes' => 'Helle Kino-Designs',
			'lurokaThemes.moreThemes' => 'Weitere Themen',
			'lurokaThemes.moreThemesDescription' => 'Durchsuche weitere Farbpaletten und benutzerdefinierte Farben',
			'lurokaThemes.obsidian' => 'Obsidian · reines Schwarz & Champagner',
			'lurokaThemes.nocturne' => 'Nocturne · Holzkohle und Champagner',
			'lurokaThemes.burgundy' => 'Burgund · Samtwein & Rose',
			'lurokaThemes.slate' => 'Slate · Graphit & Periwinkel',
			'lurokaThemes.espresso' => 'Espresso · Kakao & Karamell',
			'lurokaThemes.pearl' => 'Pearl · Porzellan & Saphir',
			'lurokaThemes.linen' => 'Leinen · warmes Elfenbein & Terrakotta',
			'lurokaThemes.sunrise' => 'Sonnenaufgang · Pfirsich und Koralle',
			'lurokaThemes.coastal' => 'Küsten-, Nebel- und Ozeanblaugrün',
			'lurokaThemes.latte' => 'Latte · Sahne und Karamell',
			'lurokaThemes.sage' => 'Sage · sanftes Grün & Eukalyptus',
			'lurokaThemes.lavender' => 'Lavendel · Flieder & tiefes Violett',
			'customPerformance.title' => 'Leistung & Effekte',
			'customPerformance.fireStickMode' => 'Modus für leistungsschwache Geräte',
			'customPerformance.description' => 'Nutzt reduzierte Effekte, statische Hintergründe, Artwork auf 720p begrenzt und einen 40-MiB-Bildcache. Während der Aktivierung überschreibt er Visuelle Effekte; das Ausschalten stellt deine Visuelle-Effekte-Einstellung wieder her.',
			'customPerformance.detailsTitle' => 'Leistungsdetails',
			'customPerformance.details' => 'Aktive Effekte, Bildcache-Limit und Messungen der Browse-Leistung',
			'customPerformance.effectsTier' => 'Aktive Effektstufe',
			'customPerformance.imageCache' => 'Bildcache-Limit',
			'customPerformance.measurement' => 'Browse-Messung',
			'customPerformance.measureInstructions' => 'Starte eine 20-Sekunden-Messung, kehre zu Startseite zurück und navigiere mit der Fernbedienung. Kehre hierher zurück, um die Ergebnisse zu sehen. Wiederhole dieselben Aktionen mit aktiviertem und deaktiviertem Modus zum Vergleich. Gemessen wird die Flutter-UI-Arbeit, nicht die Leistung des Video-Decoders.',
			'customPerformance.startSample' => '20-Sekunden-Messung starten',
			'customPerformance.stopSample' => 'Messung jetzt beenden',
			'customPerformance.sampling' => 'Messung läuft — kehre zu Startseite zurück und navigiere. Die Ergebnisse bleiben hier erhalten.',
			'customPerformance.frames' => 'Gemessene Frames',
			'customPerformance.slowFrames' => 'Frames über dem Budget',
			'customPerformance.buildP95' => 'UI-Renderzeit (95. Perzentil)',
			'customPerformance.rasterP95' => 'Rasterzeit (95. Perzentil)',
			'customPerformance.frameBudget' => 'Budget pro Frame',
			'customPerformance.processMemory' => 'App-Speicher bei Messende',
			'customPerformance.noFrames' => 'Es wurden keine gerenderten Frames erfasst. Starte eine neue Messung und navigiere durch die App.',
			'homeLayout.title' => 'Startseite personalisieren',
			'homeLayout.description' => 'Wähle Reihenfolge und Sichtbarkeit der Reihen für dieses Profil. Wähle eine Reihe, um sie zu verschieben oder auszublenden.',
			'homeLayout.rows' => 'Startseite-Reihen',
			'homeLayout.visible' => 'Sichtbar',
			'homeLayout.hidden' => 'Ausgeblendet',
			'homeLayout.showRow' => 'Reihe einblenden',
			'homeLayout.hideRow' => 'Reihe ausblenden',
			'homeLayout.moveUp' => 'Nach oben',
			'homeLayout.moveDown' => 'Nach unten',
			'homeLayout.pinnedCollections' => 'Angeheftete Sammlungen',
			'homeLayout.pinInstructions' => 'Öffne das Menü einer Sammlung und wähle An Startseite anheften. Wähle hier eine angeheftete Sammlung, um den shortcut zu entfernen.',
			'homeLayout.pinCollection' => 'An Startseite anheften',
			'homeLayout.unpinCollection' => 'Von Startseite lösen',
			'homeLayout.reset' => 'Standardreihen wiederherstellen',
			'homeLayout.resetDescription' => 'Originalreihenfolge wiederherstellen und alle Reihen für dieses Profil anzeigen? Deine angehefteten Sammlungen bleiben erhalten.',
			'homeLayout.saveFailed' => 'Dein Startseite-Layout konnte nicht gespeichert werden. Bitte versuche es erneut.',
			'homeLayout.emptyHint' => 'Reihen könnten ausgeblendet sein. Öffne Startseite anpassen, um sie wieder einzublenden.',
			'screenTime.title' => 'Sehzeit',
			'screenTime.description' => 'Sieh, wie viel Zeit du mit Videoschauen auf diesem Profil verbracht hast',
			'screenTime.today' => 'Heute',
			'screenTime.thisWeek' => 'Diese Woche',
			'screenTime.thisMonth' => 'Dieser Monat',
			'screenTime.lessThanMinute' => '< 1 Min.',
			'screenTime.minutes' => ({required Object count}) => '${count} Min.',
			'screenTime.hours' => ({required Object count}) => '${count} Std.',
			'screenTime.hoursMinutes' => ({required Object hours, required Object minutes}) => '${hours} Std. ${minutes} Min.',
			'activityStats.title' => 'Wiedergabestatistiken',
			'activityStats.period' => 'Zeitraum',
			'activityStats.last7Days' => '7 Tage',
			'activityStats.last30Days' => '30 Tage',
			'activityStats.last90Days' => '90 Tage',
			'activityStats.thisYear' => 'Jahr',
			'activityStats.allTime' => 'Gesamt',
			'activityStats.heroAllTime' => 'Gesamt',
			'activityStats.heroDailyAverage' => 'Tagesdurchschnitt',
			'activityStats.consistency' => 'Konsistenz',
			'activityStats.currentStreak' => 'Aktuelle Serie',
			'activityStats.dayCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n, one: '${n} Tag', other: '${n} Tage', ), 
			'activityStats.longestStreak' => 'Längste Serie',
			'activityStats.bestDay' => 'Bester Tag',
			'activityStats.bestWeek' => 'Beste Woche',
			'activityStats.trendTitle' => 'Sehzeit',
			'activityStats.trendToday' => 'Heute',
			'activityStats.gapDetail' => ({required Object stat, required Object range}) => '${stat} am ${range}',
			'activityStats.weekdayTitle' => 'Nach Wochentag',
			'activityStats.hoursTitle' => 'Nach Tageszeit',
			'activityStats.amLabel' => 'AM',
			'activityStats.pmLabel' => 'PM',
			'activityStats.kindsTitle' => 'Nach Kategorie',
			'activityStats.kindMovie' => 'Filme',
			'activityStats.kindTv' => 'TV',
			'activityStats.kindLiveTv' => 'Live-TV',
			'activityStats.kindMusic' => 'Musik',
			'activityStats.kindOther' => 'Sonstige',
			'activityStats.topTitlesTitle' => 'Am meisten geschaut',
			'activityStats.sessionsTitle' => 'Letzte Sitzungen',
			'activityStats.showMore' => 'Mehr anzeigen',
			'activityStats.sessionNoTitle' => 'Nicht identifizierte Wiedergabe',
			'activityStats.emptyTitle' => 'Noch nichts hier',
			'activityStats.emptyBody' => 'Schau etwas und deine Statistiken bauen sich hier auf.',
			'activityStats.noDataInPeriod' => 'Keine Wiedergabe in diesem Zeitraum aufgezeichnet.',
			'search.hint' => 'Filme, Serien und Musik suchen …',
			'search.tryDifferentTerm' => 'Anderen Suchbegriff versuchen',
			'search.searchYourMedia' => 'In den eigenen Medien suchen',
			'search.enterTitleActorOrKeyword' => 'Titel, Schauspieler oder Stichwort eingeben',
			'search.people' => 'Personen',
			'search.recentSearches' => 'Letzte Suchen',
			'search.clearHistory' => 'Verlauf löschen',
			'hotkeys.setShortcutFor' => ({required Object actionName}) => 'Tastenkürzel festlegen für ${actionName}',
			'hotkeys.clearShortcut' => 'Kürzel löschen',
			'hotkeys.noShortcutSet' => 'Kein Tastenkürzel festgelegt',
			'hotkeys.currentShortcut' => 'Aktuelle Tastenkombination:',
			'hotkeys.pressToRecord' => 'Auswählen, um eine Tastenkombination aufzuzeichnen',
			'hotkeys.recordingShortcut' => 'Jetzt die Tastenkombination drücken',
			'hotkeys.actions.playPause' => 'Wiedergabe/Pause',
			'hotkeys.actions.volumeUp' => 'Lauter',
			'hotkeys.actions.volumeDown' => 'Leiser',
			'hotkeys.actions.seekForward' => ({required Object seconds}) => 'Vorspulen (${seconds}s)',
			'hotkeys.actions.seekBackward' => ({required Object seconds}) => 'Zurückspulen (${seconds}s)',
			'hotkeys.actions.fullscreenToggle' => 'Vollbild umschalten',
			'hotkeys.actions.muteToggle' => 'Stumm umschalten',
			'hotkeys.actions.subtitleToggle' => 'Untertitel umschalten',
			'hotkeys.actions.audioTrackNext' => 'Nächste Audiospur',
			'hotkeys.actions.subtitleTrackNext' => 'Nächste Untertitelspur',
			'hotkeys.actions.chapterNext' => 'Nächstes Kapitel',
			'hotkeys.actions.chapterPrevious' => 'Vorheriges Kapitel',
			'hotkeys.actions.episodeNext' => 'Nächste Episode',
			'hotkeys.actions.episodePrevious' => 'Vorherige Episode',
			'hotkeys.actions.speedIncrease' => 'Geschwindigkeit erhöhen',
			'hotkeys.actions.speedDecrease' => 'Geschwindigkeit verringern',
			'hotkeys.actions.speedReset' => 'Geschwindigkeit zurücksetzen',
			'hotkeys.actions.zoomIn' => 'Vergrößern',
			'hotkeys.actions.zoomOut' => 'Verkleinern',
			'hotkeys.actions.zoomReset' => 'Zoom zurücksetzen',
			'hotkeys.actions.subSeekNext' => 'Zum nächsten Untertitel springen',
			'hotkeys.actions.subSeekPrev' => 'Zum vorherigen Untertitel springen',
			'hotkeys.actions.shaderToggle' => 'Shader umschalten',
			'hotkeys.actions.skipMarker' => 'Intro/Abspann überspringen',
			'hotkeys.actions.screenshot' => 'Screenshot aufnehmen',
			'fileInfo.title' => 'Dateiinformationen',
			'fileInfo.overview' => 'Übersicht',
			'fileInfo.video' => 'Video',
			'fileInfo.audio' => 'Audio',
			'fileInfo.subtitles' => 'Untertitel',
			'fileInfo.images' => 'Eingebettete Bilder',
			'fileInfo.dataStreams' => 'Datenstreams',
			'fileInfo.lyrics' => 'Songtexte',
			'fileInfo.file' => 'Datei',
			'fileInfo.attachments' => 'Anhänge',
			'fileInfo.delivery' => 'Bereitstellung',
			'fileInfo.versionCounter' => ({required Object index, required Object count}) => 'Version ${index} von ${count}',
			'fileInfo.fileCounter' => ({required Object index, required Object count}) => 'Datei ${index} von ${count}',
			'fileInfo.noStreams' => 'Der Server hat für diese Datei keine Streams gemeldet.',
			'fileInfo.copyPath' => 'Pfad kopieren',
			'fileInfo.pathCopied' => 'Dateipfad kopiert',
			'fileInfo.codec' => 'Codec',
			'fileInfo.codecTag' => 'Codec-Tag',
			'fileInfo.resolution' => 'Auflösung',
			'fileInfo.codedResolution' => 'Codierte Auflösung',
			'fileInfo.bitrate' => 'Bitrate',
			'fileInfo.frameRate' => 'Bildrate',
			'fileInfo.rotation' => 'Rotation',
			'fileInfo.comment' => 'Kommentar',
			'fileInfo.audioDescription' => 'Audiodeskription',
			'fileInfo.headerCompression' => 'Header-Komprimierung',
			'fileInfo.sidecarFile' => 'Sidecar-Datei',
			'fileInfo.transportTimestamp' => 'Transport-Zeitstempel',
			'fileInfo.displayOffset' => 'Anzeige-Offset',
			'fileInfo.previewFailureCode' => 'Fehlercode der Vorschau',
			'fileInfo.previewRetries' => 'Vorschau-Wiederholungsversuche',
			'fileInfo.aspectRatio' => 'Seitenverhältnis',
			'fileInfo.pixelAspectRatio' => 'Pixel-Seitenverhältnis',
			'fileInfo.profile' => 'Profil',
			'fileInfo.level' => 'Level',
			'fileInfo.bitDepth' => 'Bittiefe',
			'fileInfo.pixelFormat' => 'Pixelformat',
			'fileInfo.colorSpace' => 'Farbraum',
			'fileInfo.colorRange' => 'Farbbereich',
			'fileInfo.colorPrimaries' => 'Primärfarben',
			'fileInfo.colorTransfer' => 'Farbübertragung',
			'fileInfo.chromaSubsampling' => 'Chroma-Subsampling',
			'fileInfo.chromaLocation' => 'Chroma-Position',
			'fileInfo.scanType' => 'Scan-Typ',
			'fileInfo.interlaced' => 'Interlaced',
			'fileInfo.anamorphic' => 'Anamorph',
			'fileInfo.referenceFrames' => 'Referenzbilder',
			'fileInfo.dynamicRange' => 'Dynamikbereich',
			'fileInfo.dolbyVision' => 'Dolby Vision',
			'fileInfo.dolbyVisionLevel' => 'Dolby-Vision-Level',
			'fileInfo.dolbyVisionVersion' => 'Dolby-Vision-Version',
			'fileInfo.dolbyVisionLayers' => 'Dolby-Vision-Ebenen',
			'fileInfo.baseLayerCompatibility' => 'Kompatibilität der Basisebene',
			'fileInfo.avcBitstream' => 'AVC-Bitstream',
			'fileInfo.nalLengthSize' => 'NAL-Längengröße',
			'fileInfo.scalingMatrix' => 'Benutzerdefinierte Skalierungsmatrix',
			'fileInfo.streamIdentifier' => 'Stream-Kennung',
			'fileInfo.streamIndex' => 'Stream-Index',
			'fileInfo.streamId' => 'Stream-ID',
			'fileInfo.language' => 'Sprache',
			'fileInfo.languageCode' => 'Sprachcode',
			'fileInfo.streamTitle' => 'Track-Titel',
			'fileInfo.channels' => 'Kanäle',
			'fileInfo.sampleRate' => 'Abtastrate',
			'fileInfo.spatialAudio' => 'Räumliches Audio',
			'fileInfo.textBased' => 'Textbasiert',
			'fileInfo.subtitleFormat' => 'Sidecar-Format',
			'fileInfo.provider' => 'Anbieter',
			'fileInfo.matchScore' => 'Übereinstimmungswert',
			'fileInfo.externalDelivery' => 'Kann separat bereitgestellt werden',
			'fileInfo.sidecarPath' => 'Sidecar-Pfad',
			'fileInfo.sourceStream' => 'Kopiert von',
			'fileInfo.temporary' => 'Temporär',
			'fileInfo.timeBase' => 'Zeitbasis',
			'fileInfo.overallBitrate' => 'Gesamtbitrate',
			'fileInfo.path' => 'Pfad',
			'fileInfo.fileName' => 'Dateiname',
			'fileInfo.size' => 'Größe',
			'fileInfo.totalSize' => 'Gesamtgröße',
			'fileInfo.container' => 'Container',
			'fileInfo.duration' => 'Dauer',
			'fileInfo.previewThumbnails' => 'Vorschaubilder',
			'fileInfo.previewIndex' => 'Vorschau-Index',
			'fileInfo.packetLength' => 'Paketlänge',
			'fileInfo.filePresent' => 'Datei vorhanden',
			'fileInfo.fileReadable' => 'Vom Server lesbar',
			'fileInfo.streamPath' => 'Stream-Pfad',
			'fileInfo.optimizedForStreaming' => 'Für Streaming optimiert',
			'fileInfo.has64bitOffsets' => '64-Bit-Offsets',
			'fileInfo.protocol' => 'Protokoll',
			'fileInfo.mediaType' => 'Medientyp',
			'fileInfo.sourceKind' => 'Quellenart',
			'fileInfo.optimizedVersion' => 'Optimierte Version',
			'fileInfo.optimizationTarget' => 'Optimierungsziel',
			'fileInfo.deletedAt' => 'Gelöscht',
			'fileInfo.remoteSource' => 'Remote-Quelle',
			'fileInfo.infiniteStream' => 'Endlos-Stream',
			'fileInfo.directPlay' => 'Direktwiedergabe',
			'fileInfo.directStream' => 'Direktstream',
			'fileInfo.transcoding' => 'Transkodierung',
			'fileInfo.etag' => 'ETag',
			'fileInfo.versionId' => 'Versions-ID',
			'fileInfo.fileId' => 'Datei-ID',
			'fileInfo.defaultAudioTrack' => 'Standard-Audiospur',
			'fileInfo.defaultSubtitleTrack' => 'Standard-Untertitelspur',
			'fileInfo.subtitlesOff' => 'Aus',
			'fileInfo.flagDefault' => 'Standard',
			'fileInfo.flagForced' => 'Erzwungen',
			'fileInfo.flagSelected' => 'Ausgewählt',
			'fileInfo.flagExternal' => 'Extern',
			'fileInfo.flagHearingImpaired' => 'Für Hörgeschädigte',
			'fileInfo.flagDub' => 'Dub',
			'fileInfo.flagOriginal' => 'Original',
			'fileInfo.channelsMono' => 'Mono',
			'fileInfo.dolbyVisionProfile' => ({required Object profile}) => 'Profil ${profile}',
			'mediaMenu.markAsWatched' => 'Als gesehen markieren',
			'mediaMenu.markAsUnwatched' => 'Als ungesehen markieren',
			'mediaMenu.clearProgress' => 'Fortschritt löschen',
			'mediaMenu.removeFromContinueWatching' => 'Aus ‚Weiterschauen‘ entfernen',
			'mediaMenu.viewDetails' => 'Details anzeigen',
			'mediaMenu.goToSeries' => 'Zur Serie',
			'mediaMenu.shufflePlay' => 'Zufallswiedergabe',
			'mediaMenu.shuffleNotAvailableOffline' => 'Zufallswiedergabe ist offline nicht verfügbar',
			'mediaMenu.fileInfo' => 'Dateiinfo',
			'mediaMenu.deleteEpisodeFromServer' => 'Folge vom Server löschen',
			'mediaMenu.deleteSeasonFromServer' => 'Staffel vom Server löschen',
			'mediaMenu.deleteShowFromServer' => 'Serie vom Server löschen',
			'mediaMenu.deleteMovieFromServer' => 'Film vom Server löschen',
			'mediaMenu.deleteEpisodeTitle' => 'Diese Folge löschen?',
			'mediaMenu.deleteSeasonTitle' => 'Diese Staffel löschen?',
			'mediaMenu.deleteShowTitle' => 'Diese Serie löschen?',
			'mediaMenu.deleteMovieTitle' => 'Diesen Film löschen?',
			'mediaMenu.deleteEpisodeConfirm' => 'Folge löschen',
			'mediaMenu.deleteSeasonConfirm' => 'Staffel löschen',
			'mediaMenu.deleteShowConfirm' => 'Serie löschen',
			'mediaMenu.deleteMovieConfirm' => 'Film löschen',
			'mediaMenu.deleteAnyway' => 'Trotzdem löschen',
			'mediaMenu.confirmDeleteTarget' => ({required Object title}) => '„${title}“ dauerhaft von deinem Server löschen?',
			'mediaMenu.deleteMultipleWarning' => 'Dies umfasst alle Episoden und deren Dateien.',
			'mediaMenu.deleteEpisodeCountWarning' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n, one: 'Dies löscht alle ${n} Folge darin sowie ihre Datei.', other: 'Dies löscht alle ${n} Folgen darin sowie ihre Dateien.', ), 
			'mediaMenu.deleteMultiPartWarning' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n, one: 'Dieses Element ist als ${n} Datei gespeichert, die gelöscht wird.', other: 'Dieses Element ist über ${n} Dateien verteilt gespeichert, die alle gelöscht werden.', ), 
			'mediaMenu.deleteSharedFileHeading' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n, one: '${n} weitere Folge ist in derselben Datei gespeichert und wird ebenfalls gelöscht:', other: '${n} weitere Folgen sind in derselben Datei gespeichert und werden ebenfalls gelöscht:', ), 
			'mediaMenu.deleteScopeUnverifiedProbeFailed' => 'Luroka konnte nicht prüfen, welche Dateien dadurch entfernt werden. Es könnte also mehr gelöscht werden als das oben genannte Element. Brich ab und versuche es erneut, oder lösche trotzdem.',
			'mediaMenu.deleteScopeUnverifiedNoFileInfo' => 'Dein Server hat für dieses Element keine Dateidetails bereitgestellt, daher kann Luroka nicht prüfen, welche Dateien entfernt werden. Es könnte mehr gelöscht werden als das oben genannte Element.',
			'mediaMenu.mediaDeletedSuccessfully' => 'Medienelement gelöscht',
			'mediaMenu.mediaFailedToDelete' => 'Medienelement konnte nicht gelöscht werden',
			'mediaMenu.rate' => 'Bewerten',
			'mediaMenu.playFromBeginning' => 'Von Anfang an abspielen',
			'mediaMenu.playVersion' => 'Version abspielen …',
			'rateSheet.title' => 'Bewerten',
			'rateSheet.server' => 'Server',
			'rateSheet.favorite' => 'Favorit',
			'rateSheet.favorited' => 'Favorisiert',
			'rateSheet.saved' => 'Gespeichert',
			'rateSheet.notAvailable' => 'Keine Übereinstimmung gefunden',
			'rateSheet.noConnectedServices' => 'Verbinde einen Dienst in den Einstellungen, um dort zu bewerten.',
			'accessibility.mediaCardMovie' => ({required Object title}) => '${title}, Film',
			'accessibility.mediaCardShow' => ({required Object title}) => '${title}, Serie',
			'accessibility.mediaCardEpisode' => ({required Object title, required Object episodeInfo}) => '${title}, ${episodeInfo}',
			'accessibility.mediaCardSeason' => ({required Object title, required Object seasonInfo}) => '${title}, ${seasonInfo}',
			'accessibility.mediaCardWatched' => 'gesehen',
			'accessibility.mediaCardPartiallyWatched' => ({required Object percent}) => 'zu ${percent} Prozent gesehen',
			'accessibility.mediaCardUnwatched' => 'ungesehen',
			'accessibility.tapToPlay' => 'Zum Abspielen tippen',
			'accessibility.decrease' => 'Verringern',
			'accessibility.increase' => 'Erhöhen',
			'accessibility.decreaseValue' => ({required Object label}) => '${label} verringern',
			'accessibility.increaseValue' => ({required Object label}) => '${label} erhöhen',
			'accessibility.hue' => 'Farbton',
			'accessibility.saturation' => 'Sättigung',
			'accessibility.brightness' => 'Helligkeit',
			'accessibility.hexColor' => 'Hexadezimalfarbe',
			'accessibility.expandText' => 'Text ausklappen',
			'accessibility.collapseText' => 'Text einklappen',
			'accessibility.alphabetNavigation' => 'Alphabetische Navigation',
			'accessibility.alphabetScrollHint' => 'Nach oben oder unten wischen, um einen Buchstaben weiterzugehen',
			'accessibility.rowColumnPosition' => ({required Object row, required Object rowCount, required Object column, required Object columnCount}) => 'Zeile ${row} von ${rowCount}, Spalte ${column} von ${columnCount}',
			'accessibility.rowPosition' => ({required Object row, required Object rowCount}) => 'Zeile ${row} von ${rowCount}',
			'accessibility.autoScrollPlay' => 'Automatisches Scrollen starten',
			'accessibility.autoScrollPause' => 'Automatisches Scrollen pausieren',
			'accessibility.hueShort' => 'H',
			'accessibility.saturationShort' => 'S',
			'accessibility.valueShort' => 'V',
			'tooltips.shufflePlay' => 'Zufallswiedergabe',
			'tooltips.playTrailer' => 'Trailer abspielen',
			'tooltips.markAsWatched' => 'Als gesehen markieren',
			'tooltips.markAsUnwatched' => 'Als ungesehen markieren',
			'audioTracks.track' => ({required Object n}) => 'Audiospur ${n}',
			'videoControls.audioLabel' => 'Audio',
			'videoControls.subtitlesLabel' => 'Untertitel',
			'videoControls.addTime' => ({required Object amount, required Object unit}) => '+${amount}${unit}',
			'videoControls.letterbox' => 'Letterbox',
			'videoControls.fillScreen' => 'Bild füllen',
			'videoControls.stretch' => 'Strecken',
			'videoControls.lockRotation' => 'Rotation sperren',
			'videoControls.unlockRotation' => 'Rotation entsperren',
			'videoControls.timerActive' => 'Schlaftimer aktiv',
			'videoControls.playbackWillPauseIn' => ({required Object duration}) => 'Wiedergabe wird in ${duration} pausiert',
			'videoControls.sleepTimerEndOfVideo' => 'Ende des aktuellen Videos',
			'videoControls.sleepTimerStopAtHeader' => 'Beenden bei',
			'videoControls.sleepTimerDurationHeader' => 'Timer',
			'videoControls.playbackWillPauseAtEnd' => 'Wiedergabe wird am Ende dieses Videos pausiert',
			'videoControls.stillWatching' => 'Schaust du noch?',
			'videoControls.pausingIn' => ({required Object seconds}) => 'Pause in ${seconds}s',
			'videoControls.continueWatching' => 'Weiter',
			'videoControls.autoPlayNext' => 'Nächstes automatisch abspielen',
			'videoControls.playNext' => 'Nächstes abspielen',
			'videoControls.playButton' => 'Abspielen',
			'videoControls.pauseButton' => 'Pause',
			'videoControls.playbackPaused' => 'Pausiert',
			'videoControls.playbackResumed' => 'Wird abgespielt',
			'videoControls.loadingVideo' => 'Video wird geladen',
			'videoControls.showPlaybackControls' => 'Wiedergabesteuerung anzeigen',
			'videoControls.hidePlaybackControls' => 'Wiedergabesteuerung ausblenden',
			'videoControls.seekBackwardButton' => ({required Object seconds}) => '${seconds} Sekunden zurück',
			'videoControls.seekForwardButton' => ({required Object seconds}) => '${seconds} Sekunden vorwärts',
			'videoControls.previousButton' => 'Vorherige Episode',
			_ => null,
		} ?? switch (path) {
			'videoControls.nextButton' => 'Nächste Episode',
			'videoControls.previousChapterButton' => 'Vorheriges Kapitel',
			'videoControls.nextChapterButton' => 'Nächstes Kapitel',
			'videoControls.muteButton' => 'Stumm schalten',
			'videoControls.unmuteButton' => 'Stummschaltung aufheben',
			'videoControls.settingsButton' => 'Wiedergabeeinstellungen',
			'videoControls.infoButton' => 'Info',
			'videoControls.tracksButton' => 'Audio und Untertitel',
			'videoControls.chaptersButton' => 'Kapitel',
			'videoControls.versionQualityButton' => 'Version & Qualität',
			'videoControls.versionColumnHeader' => 'Version',
			'videoControls.qualityColumnHeader' => 'Qualität',
			'videoControls.qualityOriginal' => 'Original',
			'videoControls.qualityPresetLabel' => ({required Object resolution, required Object bitrate}) => '${resolution}p ${bitrate} Mbps',
			'videoControls.transcodeUnavailableFallback' => 'Transkodierung nicht verfügbar – Wiedergabe in Originalqualität',
			'videoControls.subtitleUnavailableFallback' => 'Die ausgewählten Untertitel konnten nicht geladen werden – die Wiedergabe wird ohne Untertitel fortgesetzt',
			'videoControls.pipButton' => 'Bild-in-Bild-Modus',
			'videoControls.aspectRatioButton' => 'Seitenverhältnis',
			'videoControls.ambientLighting' => 'Umgebungsbeleuchtung',
			'videoControls.fullscreenButton' => 'Vollbild aktivieren',
			'videoControls.exitFullscreenButton' => 'Vollbild verlassen',
			'videoControls.alwaysOnTopButton' => 'Immer im Vordergrund',
			'videoControls.rotationLockButton' => 'Drehsperre',
			'videoControls.lockScreen' => 'Bildschirm sperren',
			'videoControls.screenLockButton' => 'Bildschirmsperre',
			'videoControls.longPressToUnlock' => 'Lange drücken zum Entsperren',
			'videoControls.timelineSlider' => 'Videozeitleiste',
			'videoControls.volumeSlider' => 'Lautstärkepegel',
			'videoControls.endsAt' => ({required Object time}) => 'Endet um ${time}',
			'videoControls.pipActive' => 'Wiedergabe im Bild-in-Bild-Modus',
			'videoControls.pipFailed' => 'Bild-in-Bild konnte nicht gestartet werden',
			'videoControls.screenshotSaved' => 'Screenshot gespeichert',
			'videoControls.screenshotFailed' => 'Screenshot konnte nicht erstellt werden',
			'videoControls.zoomPercent' => ({required Object percent}) => 'Zoom ${percent}%',
			'videoControls.volumePercent' => ({required Object percent}) => 'Lautstärke ${percent}%',
			'videoControls.pipErrors.androidVersion' => 'Erfordert Android 8.0 oder neuer',
			'videoControls.pipErrors.iosVersion' => 'Erfordert iOS 15.0 oder neuer',
			'videoControls.pipErrors.permissionDisabled' => 'Bild-in-Bild ist deaktiviert. Aktiviere es in den Systemeinstellungen.',
			'videoControls.pipErrors.notSupported' => 'Dieses Gerät unterstützt den Bild-in-Bild-Modus nicht',
			'videoControls.pipErrors.voSwitchFailed' => 'Videoausgabe für Bild-in-Bild konnte nicht umgeschaltet werden',
			'videoControls.pipErrors.failed' => 'Bild-in-Bild konnte nicht gestartet werden',
			'videoControls.pipErrors.prepareFailed' => 'Bild-in-Bild konnte nicht vorbereitet werden',
			'videoControls.pipErrors.unknown' => ({required Object error}) => 'Ein Fehler ist aufgetreten: ${error}',
			'videoControls.chapters' => 'Kapitel',
			'videoControls.noChaptersAvailable' => 'Keine Kapitel verfügbar',
			'videoControls.queue' => 'Warteschlange',
			'videoControls.noQueueItems' => 'Keine Elemente in der Warteschlange',
			'videoControls.noAudioDevicesAvailable' => 'Keine Audiogeräte verfügbar',
			'videoControls.searchSubtitles' => 'Untertitel suchen',
			'videoControls.language' => 'Sprache',
			'videoControls.noSubtitlesFound' => 'Keine Untertitel gefunden',
			'videoControls.subtitleDownloaded' => 'Untertitel heruntergeladen',
			'videoControls.subtitleDownloadedNotApplied' => 'Der Untertitel wurde heruntergeladen, konnte aber nicht ausgewählt werden',
			'videoControls.subtitleDownloadFailed' => 'Untertitel konnte nicht heruntergeladen werden',
			'videoControls.searchLanguages' => 'Sprachen suchen...',
			'videoControls.skipIntro' => 'Intro überspringen',
			'videoControls.skipCredits' => 'Abspann überspringen',
			'videoControls.nextEpisode' => 'Nächste Episode',
			'videoControls.subtitleTrack' => ({required Object n}) => 'Spur ${n}',
			'videoControls.subtitleFile' => ({required Object name}) => 'Untertitel ${name}',
			'videoControls.forcedTrack' => ({required Object label}) => '${label} (Erzwungen)',
			'videoControls.osdSubtitlesOff' => 'Untertitel: Aus',
			'videoControls.osdSubtitles' => ({required Object track}) => 'Untertitel: ${track}',
			'videoControls.osdAudio' => ({required Object track}) => 'Audio: ${track}',
			'messages.markedAsWatched' => 'Als gesehen markiert',
			'messages.markedAsUnwatched' => 'Als ungesehen markiert',
			'messages.markedAsWatchedOffline' => 'Als gesehen markiert (wird synchronisiert, wenn online)',
			'messages.markedAsUnwatchedOffline' => 'Als ungesehen markiert (wird synchronisiert, wenn online)',
			'messages.autoRemovedWatchedDownload' => ({required Object title}) => 'Automatisch entfernt: ${title}',
			'messages.autoRemovedWatchedDownloads' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n, one: 'Automatisch entfernt: ${n} angesehener Download', other: 'Automatisch entfernt: ${n} angesehene Downloads', ), 
			'messages.removedFromContinueWatching' => 'Aus „Weiterschauen“ entfernt',
			'messages.errorLoading' => ({required Object error}) => 'Fehler: ${error}',
			'messages.searchPartialResults' => 'Einige Medienserver konnten nicht durchsucht werden. Verfügbare Ergebnisse werden angezeigt.',
			'messages.streamInterrupted' => 'Der Stream wurde unterbrochen. Drücke auf Wiedergabe oder spule, um es erneut zu versuchen.',
			'messages.liveStreamInterrupted' => 'Der Livestream wurde unterbrochen. Drücke auf Wiedergabe, um es erneut zu versuchen.',
			'messages.fileInfoNotAvailable' => 'Dateiinfo nicht verfügbar',
			'messages.playbackAuthenticationRequired' => 'Melde dich erneut beim Medienserver an, um dieses Element abzuspielen.',
			'messages.playbackServerUnavailable' => 'Der Medienserver ist nicht verfügbar. Versuche es später erneut.',
			'messages.playbackDataInvalid' => 'Der Server hat ungültige Wiedergabeinformationen zurückgegeben.',
			'messages.playbackCancelled' => 'Die Wiedergabe wurde abgebrochen.',
			'messages.playbackFailed' => 'Die Wiedergabe konnte nicht gestartet werden.',
			'messages.playbackFailedDetail' => ({required Object error}) => 'Die Wiedergabe konnte nicht gestartet werden: ${error}',
			'messages.audioOutputFailed' => 'Die Audioausgabe reagiert nicht mehr. Prüfe die Audioverbindung des Fernsehers oder Receivers; wenn auch andere Apps keinen Ton haben, starte das Gerät neu.',
			'messages.mediaUnavailable' => 'Dieser Inhalt ist nicht mehr verfügbar.',
			'messages.errorLoadingFileInfo' => ({required Object error}) => 'Fehler beim Laden der Dateiinfo: ${error}',
			'messages.errorLoadingSeries' => 'Fehler beim Laden der Serie',
			'messages.musicNotSupported' => 'Musikwiedergabe wird noch nicht unterstützt',
			'messages.noDescriptionAvailable' => 'Keine Beschreibung verfügbar',
			'messages.noProfilesAvailable' => 'Keine Profile verfügbar',
			'messages.contactAdminForProfiles' => 'Wende dich an deinen Serveradministrator, um Profile hinzuzufügen',
			'messages.unableToDetermineLibrarySection' => 'Der Mediatheksbereich für dieses Element konnte nicht ermittelt werden',
			'messages.logsCleared' => 'Protokolle gelöscht',
			'messages.logsCopied' => 'Protokolle in Zwischenablage kopiert',
			'messages.noLogsAvailable' => 'Keine Protokolle verfügbar',
			'messages.libraryScanning' => ({required Object title}) => '„${title}“ wird gescannt …',
			'messages.libraryScanStarted' => ({required Object title}) => 'Mediathekscan gestartet für „${title}“',
			'messages.libraryScanFailed' => ({required Object error}) => 'Fehler beim Scannen der Mediathek: ${error}',
			'messages.metadataRefreshing' => ({required Object title}) => 'Metadaten für „${title}“ werden aktualisiert …',
			'messages.metadataRefreshStarted' => ({required Object title}) => 'Metadaten-Aktualisierung gestartet für „${title}“',
			'messages.metadataRefreshFailed' => ({required Object error}) => 'Metadaten konnten nicht aktualisiert werden: ${error}',
			'messages.logoutConfirm' => 'Abmeldung wirklich durchführen?',
			'messages.noSeasonsFound' => 'Keine Staffeln gefunden',
			'messages.seasonsLoadFailed' => 'Staffeln konnten nicht geladen werden',
			'messages.noEpisodesFound' => 'Keine Episoden in der ersten Staffel gefunden',
			'messages.noEpisodesFoundGeneral' => 'Keine Episoden gefunden',
			'messages.episodesLoadFailed' => 'Episoden konnten nicht geladen werden',
			'messages.noResultsFound' => 'Keine Ergebnisse gefunden',
			'messages.sleepTimerSet' => ({required Object label}) => 'Schlaftimer auf ${label} eingestellt',
			'messages.noItemsAvailable' => 'Keine Elemente verfügbar',
			'messages.failedToCreatePlayQueueNoItems' => 'Wiedergabewarteschlange konnte nicht erstellt werden – keine Elemente',
			'messages.failedPlayback' => ({required Object action, required Object error}) => 'Wiedergabe für ${action} fehlgeschlagen: ${error}',
			'messages.switchingToCompatiblePlayer' => 'Wechsel zu einem kompatiblen Player …',
			'messages.serverLimitTitle' => 'Wiedergabe fehlgeschlagen',
			'messages.serverLimitBody' => 'Serverfehler (HTTP 500). Vermutlich hat ein Bandbreiten- oder Transkodierungslimit diese Sitzung abgelehnt. Bitte den Besitzer, das Limit anzupassen.',
			'messages.mediaUnreadableTitle' => 'Datei nicht verfügbar',
			'messages.mediaUnreadableBody' => 'Der Server hat dieses Element gefunden, konnte seine Datei aber nicht lesen (HTTP 404). Die Datei wurde wahrscheinlich verschoben oder gelöscht, oder ihr Speicher ist offline. Bitte den Serverbesitzer, die Datei zu prüfen und die Mediathek neu zu scannen.',
			'messages.serverBusyTitle' => 'Stream nicht verfügbar',
			'messages.serverBusyBody' => 'Der Server hat das Streamen dieser Datei wiederholt abgelehnt (HTTP 503). Möglicherweise wird er neu gestartet, ist ausgelastet oder der Speicherort der Datei ist offline. Versuche es gleich noch einmal. Falls das Problem weiterhin auftritt, bitte den Serverbetreiber, den Server und den Speicherort der Datei zu überprüfen.',
			'messages.playbackNotAllowedTitle' => 'Wiedergabe nicht erlaubt',
			'messages.playbackNotAllowedBody' => 'Der Server hat das Streamen dieses Elements abgelehnt (HTTP 403). Dein Konto hat möglicherweise keine Berechtigung, es abzuspielen, oder der Server erlaubt die Wiedergabe nur in seinem lokalen Netzwerk.',
			'messages.logsUploaded' => 'Protokolle hochgeladen',
			'messages.logsUploadFailed' => 'Protokolle konnten nicht hochgeladen werden',
			'messages.logId' => 'Protokoll-ID',
			'messages.burnedSubtitlesUseMenu' => 'Die Untertitel sind in diesen Stream eingebrannt. Ändere sie über das Untertitelmenü.',
			'messages.noVideoUrl' => 'Keine Video-URL verfügbar',
			'messages.playbackNoMediaSources' => 'Der Server hat keine abspielbaren Medienquellen zurückgegeben',
			'messages.playbackDataNotPrepared' => 'Die Wiedergabe wurde gestartet, bevor die Daten bereit waren',
			'messages.streamSelectionUnavailable' => 'Die Streamauswahl ist für diese Quelle nicht verfügbar',
			'messages.streamSelectionFailed' => 'Die ausgewählten Streams konnten nicht angewendet werden',
			'messages.trackSelectionNotRemembered' => 'Diese Spurauswahl gilt nur für die aktuelle Wiedergabe.',
			'messages.serverUnavailableForProfile' => 'Für das aktive Profil ist kein Server verfügbar',
			'sourceLibraries.title' => 'Deine Server & Bibliotheken',
			'sourceLibraries.description' => 'Wähle die Bibliotheken, die Luroka für Startseite, Suche, Entdecken und Studios nutzt. Die Reihenfolge der Startseite-Reihen wird separat angepasst.',
			'sourceLibraries.partial' => 'Einige Server konnten nicht geprüft werden. Deine gespeicherten Auswahlmöglichkeiten für diese Bibliotheken bleiben erhalten. Aktualisieren, um es erneut zu versuchen.',
			'sourceLibraries.loadFailed' => 'Bibliotheken konnten nicht geladen werden. Prüfe die Verbindung und versuche es erneut.',
			'sourceLibraries.notSelected' => 'In deinen ausgewählten Bibliotheken nicht verfügbar.',
			'sourceLibraries.checkOthers' => 'Andere verbundene Quellen prüfen',
			'sourceLibraries.otherSources' => 'Auf anderen verbundenen Quellen verfügbar',
			'sourceLibraries.playOnce' => 'Einmal abspielen',
			'sourceLibraries.includeLibrary' => 'Diese Bibliothek einbeziehen',
			'sourceLibraries.noOthers' => 'Keine Kopien auf anderen verbundenen Quellen gefunden.',
			'sourceLibraries.chooseOne' => 'Wähle mindestens eine Bibliothek, um fortzufahren.',
			'subtitlingStyling.text' => 'Text',
			'subtitlingStyling.border' => 'Rahmen',
			'subtitlingStyling.background' => 'Hintergrund',
			'subtitlingStyling.fontSize' => 'Schriftgröße',
			'subtitlingStyling.textColor' => 'Textfarbe',
			'subtitlingStyling.borderSize' => 'Rahmengröße',
			'subtitlingStyling.borderColor' => 'Rahmenfarbe',
			'subtitlingStyling.backgroundOpacity' => 'Hintergrunddeckkraft',
			'subtitlingStyling.backgroundColor' => 'Hintergrundfarbe',
			'subtitlingStyling.position' => 'Position',
			'subtitlingStyling.assOverride' => 'ASS-Überschreibung',
			'subtitlingStyling.overrideScale' => 'Skalieren',
			'subtitlingStyling.overrideForce' => 'Erzwingen',
			'subtitlingStyling.overrideStrip' => 'Formatierung entfernen',
			'subtitlingStyling.positionTop' => 'Oben',
			'subtitlingStyling.positionBottom' => 'Unten',
			'subtitlingStyling.useMargins' => 'Ränder verwenden',
			'subtitlingStyling.useMarginsDescription' => 'Textuntertitel im Bereich außerhalb des Videos zulassen. Gestylte Untertitel behalten möglicherweise ihre ursprüngliche Position.',
			'subtitlingStyling.anchorToScreen' => 'Am Bildschirm verankern',
			'subtitlingStyling.anchorToScreenDescription' => 'Textuntertitel in den schwarzen Balken unter Breitbildvideos anzeigen',
			'subtitlingStyling.bold' => 'Fett',
			'subtitlingStyling.italic' => 'Kursiv',
			'subtitlingStyling.renderResolution' => 'Render-Auflösung',
			'subtitlingStyling.renderResolutionScreen' => 'Bildschirmauflösung',
			'subtitlingStyling.renderResolutionVideo' => 'Videoauflösung',
			'mpvConfig.title' => 'mpv-Konfiguration',
			'mpvConfig.description' => 'Erweiterte Videoplayer-Einstellungen',
			'mpvConfig.presets' => 'Voreinstellungen',
			'mpvConfig.noPresets' => 'Keine gespeicherten Voreinstellungen',
			'mpvConfig.saveAsPreset' => 'Als Voreinstellung speichern …',
			'mpvConfig.presetName' => 'Name der Voreinstellung',
			'mpvConfig.presetNameHint' => 'Namen für diese Voreinstellung eingeben',
			'mpvConfig.loadPreset' => 'Laden',
			'mpvConfig.deletePreset' => 'Löschen',
			'mpvConfig.presetSaved' => 'Voreinstellung gespeichert',
			'mpvConfig.presetLoaded' => 'Voreinstellung geladen',
			'mpvConfig.presetDeleted' => 'Voreinstellung gelöscht',
			'mpvConfig.confirmDeletePreset' => 'Diese Voreinstellung wirklich löschen?',
			'mpvConfig.configPlaceholder' => 'gpu-api=vulkan\nhwdec=auto\n# comment',
			'mpvConfig.lineHint' => 'option=value',
			'mpvConfig.addLine' => 'Zeile hinzufügen',
			'mpvConfig.removeLine' => 'Zeile entfernen',
			'mpvConfig.embeddedVoHint' => 'vo, gpu-context und gpu-api werden unter Linux ignoriert: eingebettetes Video wird immer über vo=libmpv auf der Videoebene gerendert, und gpu-next (das Compute-Shader wie ArtCNN benötigen) kann nicht eingebettet ausgeführt werden.',
			'dialog.confirmAction' => 'Aktion bestätigen',
			'profiles.addLurokaProfile' => 'Luroka-Profil hinzufügen',
			'profiles.switchingProfile' => 'Profil wird gewechselt…',
			'profiles.deleteThisProfileTitle' => 'Dieses Profil löschen?',
			'profiles.deleteThisProfileMessage' => ({required Object displayName}) => '${displayName} entfernen. Verbindungen bleiben unberührt.',
			'profiles.active' => 'Aktiv',
			'profiles.manage' => 'Verwalten',
			'profiles.delete' => 'Löschen',
			'profiles.signOut' => 'Abmelden',
			'profiles.signOutPlexTitle' => 'Von Plex abmelden?',
			'profiles.signOutPlexMessage' => ({required Object displayName}) => '${displayName} und alle Plex Home-Benutzer entfernen? Du kannst dich jederzeit wieder anmelden.',
			'profiles.signOutPlexDeleteDownloads' => 'Downloads auch löschen',
			'profiles.signOutPlexDeleteDownloadsDescription' => 'Andernfalls bleiben sie auf diesem Gerät und kommen zurück, wenn du dich wieder bei diesem Konto anmeldest.',
			'profiles.signedOutPlex' => 'Von Plex abgemeldet.',
			'profiles.signOutFailed' => 'Abmeldung fehlgeschlagen.',
			'profiles.sectionTitle' => 'Profile',
			'profiles.summarySingle' => 'Profile hinzufügen, um verwaltete Benutzer mit lokalen Identitäten zu kombinieren',
			'profiles.summaryMultipleWithActive' => ({required Object count, required Object activeName}) => '${count} Profile · aktiv: ${activeName}',
			'profiles.summaryMultiple' => ({required Object count}) => '${count} Profile',
			'profiles.removeConnectionTitle' => 'Verbindung entfernen?',
			'profiles.removeConnectionMessage' => ({required Object displayName, required Object connectionLabel}) => 'Zugriff von ${displayName} auf ${connectionLabel} entfernen. Andere Profile behalten ihn.',
			'profiles.deleteProfileTitle' => 'Profil löschen?',
			'profiles.deleteProfileMessage' => ({required Object displayName}) => '${displayName} und Verbindungen entfernen. Server bleiben verfügbar.',
			'profiles.profileNameLabel' => 'Profilname',
			'profiles.pinProtectionLabel' => 'PIN-Schutz',
			'profiles.pinManagedByPlex' => 'PIN wird von Plex verwaltet. Auf plex.tv bearbeiten.',
			'profiles.noPinSetEditOnPlex' => 'Keine PIN festgelegt. Um eine zu verlangen, bearbeite den Startseite-Benutzer auf plex.tv.',
			'profiles.setPin' => 'PIN festlegen',
			'profiles.setPinTitle' => 'PIN festlegen',
			'profiles.confirmPinTitle' => 'PIN bestätigen',
			'profiles.pinSet' => 'PIN festgelegt',
			'profiles.changePin' => 'Ändern',
			'profiles.removePin' => 'Entfernen',
			'profiles.connectionsLabel' => 'Verbindungen',
			'profiles.add' => 'Hinzufügen',
			'profiles.deleteProfileButton' => 'Profil löschen',
			'profiles.noConnectionsHint' => 'Keine Verbindungen — füge eine hinzu, um dieses Profil zu nutzen.',
			'profiles.noConnections' => 'Keine Verbindungen',
			'profiles.plexHomeAccount' => 'Plex Home-Konto',
			'profiles.plexAccountChip' => ({required Object account}) => 'Plex-Konto: ${account}',
			'profiles.plexAccountUserChip' => ({required Object user, required Object account}) => '${user} über ${account}',
			'profiles.connectionDefault' => 'Standard',
			'profiles.connectionAs' => ({required Object displayName}) => 'als ${displayName}',
			'profiles.makeDefault' => 'Als Standard festlegen',
			'profiles.removeConnection' => 'Entfernen',
			'profiles.profileRenamed' => 'Profil umbenannt.',
			'profiles.borrowAddTo' => ({required Object displayName}) => 'Zu ${displayName} hinzufügen',
			'profiles.borrowExplain' => 'Verbindung eines anderen Profils übernehmen. PIN-geschützte Profile erfordern eine PIN.',
			'profiles.borrowEmpty' => 'Keine Verbindungen zum Übernehmen verfügbar.',
			'profiles.borrowEmptySubtitle' => 'Verbinde zuerst Plex, Jellyfin oder Emby mit einem anderen Profil.',
			'profiles.borrowLoadFailed' => 'Verfügbare Verbindungen konnten nicht geladen werden. Versuche es erneut.',
			'profiles.borrowFromProfile' => ({required Object displayName}) => 'Von ${displayName}',
			'profiles.borrowConnectionBorrowed' => 'Verbindung übernommen.',
			'profiles.borrowFailed' => 'Verbindung konnte nicht übernommen werden.',
			'profiles.incorrectPin' => 'Falsche PIN.',
			'profiles.incorrectPinTryAgain' => 'Falsche PIN. Bitte erneut versuchen.',
			'profiles.sourceProfileMissingParentAccount' => 'Dem Quellprofil fehlt das übergeordnete Konto.',
			'profiles.failedToLoadHomeUsers' => 'Deine Plex-Startseite-Benutzer konnten nicht geladen werden. Prüfe deine Verbindung und versuche es erneut.',
			'profiles.failedToVerifyPin' => 'PIN konnte nicht verifiziert werden.',
			'profiles.newProfile' => 'Neues Profil',
			'profiles.profileNameHint' => 'z. B. Gäste, Kinder, Wohnzimmer',
			'profiles.pinProtectionOptional' => 'PIN-Schutz (optional)',
			'profiles.pinExplain' => '4-stellige PIN zum Profilwechsel erforderlich.',
			'profiles.continueButton' => 'Weiter',
			'profiles.pinsDontMatch' => 'PINs stimmen nicht überein',
			'profiles.tokenIdentityMismatch' => 'Das Plex-Profil-Token wurde einem unerwarteten Server zugeordnet',
			'connections.sectionTitle' => 'Verbindungen',
			'connections.addConnection' => 'Verbindung hinzufügen',
			'connections.addConnectionSubtitleNoProfile' => 'Mit Plex anmelden oder mit einem Jellyfin- oder Emby-Server verbinden',
			'connections.addConnectionSubtitleScoped' => ({required Object displayName}) => 'Zu ${displayName} hinzufügen: Plex, Jellyfin, Emby oder eine andere Profilverbindung',
			'connections.sessionExpiredOne' => ({required Object name}) => 'Sitzung für ${name} abgelaufen',
			'connections.sessionExpiredMany' => ({required Object count}) => 'Sitzungen für ${count} Server abgelaufen',
			'connections.accessDeniedOne' => ({required Object name}) => '${name} verweigert diesem Konto den Zugriff',
			'connections.accessDeniedMany' => ({required Object count}) => '${count} Server verweigern diesem Konto den Zugriff',
			'connections.signInAgain' => 'Erneut anmelden',
			'connections.editMediaBrowserTitle' => ({required Object product}) => 'Verbindung zu ${product} bearbeiten',
			'connections.editMediaBrowserIntro' => ({required Object serverName}) => 'URLs für ${serverName} hinzufügen oder entfernen. Luroka verwendet die erreichbare URL mit der geringsten Latenz.',
			'serversAccounts.title' => 'Server & Konten',
			'serversAccounts.subtitle' => 'Anmeldestatus deiner Plex-, Jellyfin- und Emby-Server',
			'serversAccounts.online' => 'Online',
			'serversAccounts.offline' => 'Offline',
			'serversAccounts.unknown' => 'Hier nicht angemeldet',
			'serversAccounts.usedByNone' => 'Von keinem Profil verwendet',
			'serversAccounts.usedByOne' => ({required Object name}) => 'Von ${name} verwendet',
			'serversAccounts.usedByMany' => ({required Object name, required Object count}) => 'Von ${name} und ${count} weiteren verwendet',
			'serversAccounts.serversOnline' => ({required Object online, required Object total}) => '${online} von ${total} Servern online',
			'serversAccounts.noServers' => 'Noch nichts verbunden. Füge dein Plex-Konto oder einen Jellyfin- oder Emby-Server hinzu.',
			'serversAccounts.editUrls' => 'Server-URLs bearbeiten',
			'accountPreferences.sectionTitle' => 'Kontoeinstellungen',
			'accountPreferences.hubSubtitleSingle' => ({required Object account}) => 'Audio-, Untertitel- und Mediathek-Optionen werden auf ${account} gespeichert',
			'accountPreferences.hubSubtitleMultiple' => ({required Object count}) => 'Audio-, Untertitel- und Mediathek-Optionen werden auf ${count} Konten gespeichert',
			'accountPreferences.pickAccount' => 'Jedes Konto speichert seine eigenen Einstellungen. Wähle das Konto, das du bearbeiten möchtest.',
			'accountPreferences.storedOnAccount' => 'Diese Optionen werden auf dem Konto selbst gespeichert, sodass jede damit angemeldete App sie verwendet — auch Luroka auf deinen anderen Geräten.',
			'accountPreferences.noAccounts' => 'Keine Konten zum Konfigurieren',
			'accountPreferences.noAccountsHint' => 'Melde dich bei Plex an oder verbinde einen Jellyfin- oder Emby-Server — die auf diesem Konto gespeicherten Einstellungen erscheinen dann hier.',
			'accountPreferences.unavailable' => 'Dieses Konto ist nicht erreichbar',
			'accountPreferences.loadFailed' => 'Diese Einstellungen konnten nicht geladen werden',
			'accountPreferences.noPreference' => 'Keine Einstellung',
			'accountPreferences.notSet' => 'Nicht festgelegt',
			'accountPreferences.groups.audioAndSubtitles' => 'Audio & Untertitel',
			'accountPreferences.groups.libraryDisplay' => 'Mediathek',
			'accountPreferences.groups.personalMedia' => 'Persönliche Medien',
			'accountPreferences.preferredAudioLanguage' => 'Bevorzugte Audiosprache',
			'accountPreferences.autoSelectAudio' => 'Audio nach Sprache auswählen',
			'accountPreferences.autoSelectAudioDescription' => 'Bei „Aus“ wird die Audiospur verwendet, die die Datei als Standard markiert.',
			'accountPreferences.preferredSubtitleLanguage' => 'Bevorzugte Untertitelsprache',
			'accountPreferences.subtitleMode' => 'Untertitel einschalten',
			'accountPreferences.subtitleModes.none' => 'Manuell ausgewählt',
			'accountPreferences.subtitleModes.noneDescription' => 'Untertitel niemals von selbst einschalten.',
			'accountPreferences.subtitleModes.defaultMode' => 'Spurmarkierungen folgen',
			'accountPreferences.subtitleModes.defaultModeDescription' => 'Die Standard- und Erzwungen-Markierungen jeder Untertitelspur verwenden.',
			'accountPreferences.subtitleModes.always' => 'Immer aktiviert',
			'accountPreferences.subtitleModes.alwaysDescription' => 'Eine Untertitelspur in der bevorzugten Sprache einschalten, sofern eine vorhanden ist.',
			'accountPreferences.subtitleModes.onlyForced' => 'Nur erzwungene Untertitel',
			'accountPreferences.subtitleModes.onlyForcedDescription' => 'Nur die als erzwungen markierten Spuren laden.',
			'accountPreferences.subtitleModes.smart' => 'Bei fremdsprachigem Audio anzeigen',
			'accountPreferences.subtitleModes.smartDescription' => 'Untertitel nur einschalten, wenn das Audio in einer anderen Sprache ist.',
			'accountPreferences.subtitleAccessibility' => 'SDH-Untertitel',
			'accountPreferences.subtitleAccessibilityOptions.preferNonSdh' => 'Nicht-SDH-Untertitel bevorzugen',
			'accountPreferences.subtitleAccessibilityOptions.preferSdh' => 'SDH-Untertitel bevorzugen',
			'accountPreferences.subtitleAccessibilityOptions.onlySdh' => 'Nur SDH-Untertitel',
			'accountPreferences.subtitleAccessibilityOptions.onlyNonSdh' => 'Nur Nicht-SDH-Untertitel',
			'accountPreferences.forcedSubtitles' => 'Erzwungene Untertitel',
			'accountPreferences.forcedSubtitleOptions.preferNonForced' => 'Nicht erzwungene Untertitel bevorzugen',
			'accountPreferences.forcedSubtitleOptions.preferForced' => 'Erzwungene Untertitel bevorzugen',
			'accountPreferences.forcedSubtitleOptions.onlyForced' => 'Nur erzwungene Untertitel',
			'accountPreferences.forcedSubtitleOptions.onlyNonForced' => 'Nur nicht erzwungene Untertitel',
			'accountPreferences.displayMissingEpisodes' => 'Fehlende Episoden anzeigen',
			'accountPreferences.displayMissingEpisodesDescription' => 'Episoden auflisten, die dem Server bekannt sind, für die aber keine Datei vorliegt.',
			'accountPreferences.hidePlayedInLatest' => 'Gesehene Elemente in „Neueste“ ausblenden',
			'accountPreferences.hidePlayedInLatestDescription' => 'Elemente, die du bereits gesehen hast, erscheinen nicht mehr in den „Neueste“-Zeilen des Servers.',
			'accountPreferences.displayCollectionsView' => 'Sammlungsansicht anzeigen',
			'accountPreferences.displayCollectionsViewDescription' => 'Die Sammlungsansicht des Servers zusätzlich zu deinen Mediatheken anzeigen.',
			'accountPreferences.rewatchingInNextUp' => 'Erneut geschaute Serien in „Als Nächstes“ behalten',
			'accountPreferences.rewatchingInNextUpDescription' => 'Beendest du eine Serie und startest sie erneut, folgt „Als Nächstes“ dem erneuten Anschauen, statt die Serie zu verwerfen.',
			'accountPreferences.watchedIndicator' => 'Gesehen-Markierung',
			'accountPreferences.watchedIndicatorOptions.none' => 'Nie',
			'accountPreferences.watchedIndicatorOptions.moviesAndShows' => 'Filme und Serien',
			'accountPreferences.watchedIndicatorOptions.movies' => 'Nur Filme',
			'accountPreferences.watchedIndicatorOptions.shows' => 'Nur Serien',
			'accountPreferences.mediaReviewsVisibility' => 'Bewertungen & Rezensionen',
			'accountPreferences.mediaReviewsOptions.usersAndCritics' => 'Benutzer und Kritiker',
			'accountPreferences.mediaReviewsOptions.usersOnly' => 'Nur Benutzer',
			'accountPreferences.mediaReviewsOptions.criticsOnly' => 'Nur Kritiker',
			'accountPreferences.mediaReviewsOptions.nobody' => 'Ausgeblendet',
			'discover.title' => 'Entdecken',
			'discover.noContentAvailable' => 'Kein Inhalt verfügbar',
			'discover.addMediaToLibraries' => 'Medien zur Mediathek hinzufügen',
			'discover.continueWatching' => 'Weiterschauen',
			'discover.continueWatchingIn' => ({required Object library}) => 'Weiterschauen in ${library}',
			'discover.nextUp' => 'Als Nächstes',
			'discover.nextUpIn' => ({required Object library}) => 'Als Nächstes in ${library}',
			'discover.recentlyAdded' => 'Kürzlich hinzugefügt',
			'discover.recentlyAddedIn' => ({required Object library}) => 'Kürzlich hinzugefügt in ${library}',
			'discover.latestAlbumsIn' => ({required Object library}) => 'Neueste Alben in ${library}',
			'discover.recentlyPlayedIn' => ({required Object library}) => 'Kürzlich gespielt in ${library}',
			'discover.mostPlayedIn' => ({required Object library}) => 'Am häufigsten gespielt in ${library}',
			'discover.playEpisode' => ({required Object season, required Object episode}) => 'S${season}E${episode}',
			'discover.overview' => 'Übersicht',
			'discover.cast' => 'Besetzung',
			'discover.extras' => 'Trailer & Extras',
			'discover.studio' => 'Studio',
			'discover.rating' => 'Altersfreigabe',
			'discover.director' => 'Regisseur',
			'discover.directors' => 'Regisseure',
			'discover.movie' => 'Film',
			'discover.tvShow' => 'Serie',
			'discover.minutesLeft' => ({required Object minutes}) => 'Noch ${minutes} Min.',
			'discover.moreLikeThis' => 'Ähnliche Inhalte',
			'discover.titleCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n, one: '${n} Titel', other: '${n} Titel', ), 
			'discover.person.born' => 'Geboren',
			'discover.person.died' => 'Gestorben',
			'discover.person.birthplace' => 'Geburtsort',
			'discover.person.dateWithAge' => ({required Object date, required Object age}) => '${date} (Alter ${age})',
			'discover.person.dateWithAgeAtDeath' => ({required Object date, required Object age}) => '${date} (gestorben im Alter von ${age})',
			'errors.searchFailed' => ({required Object error}) => 'Suche fehlgeschlagen: ${error}',
			'errors.searchUnavailable' => 'Die Suche konnte keinen Medienserver erreichen.',
			'errors.connectionTimeout' => ({required Object context}) => 'Zeitüberschreitung beim Laden von ${context}',
			'errors.connectionFailed' => 'Keine Verbindung zum Medienserver möglich',
			'errors.unableToLoad' => ({required Object context}) => '${context} konnte nicht geladen werden. Bitte erneut versuchen.',
			'errors.noClientAvailable' => 'Kein Client verfügbar',
			'errors.pleaseEnterToken' => 'Bitte Token eingeben',
			'errors.invalidToken' => 'Ungültiges Token',
			'errors.failedToVerifyToken' => ({required Object error}) => 'Token-Verifizierung fehlgeschlagen: ${error}',
			'errors.failedToSwitchProfile' => ({required Object displayName}) => 'Profilwechsel zu ${displayName} fehlgeschlagen',
			'errors.failedToDeleteProfile' => ({required Object displayName}) => 'Löschen von ${displayName} fehlgeschlagen',
			'errors.failedToRate' => 'Bewertung konnte nicht aktualisiert werden',
			'errors.reasonTimedOut' => 'Zeitüberschreitung bei der Verbindung',
			'errors.reasonUnreachable' => 'der Medienserver konnte nicht erreicht werden',
			'errors.reasonRefused' => 'der Medienserver hat die Anfrage abgelehnt',
			'errors.reasonNotFound' => 'das Element befindet sich nicht mehr auf dem Medienserver',
			'errors.reasonServerError' => 'der Medienserver hat einen Fehler gemeldet',
			'errors.reasonCancelled' => 'die Anfrage wurde abgebrochen',
			'errors.reasonUnexpected' => 'ein unerwarteter Fehler ist aufgetreten',
			'libraries.title' => 'Mediatheken',
			'libraries.fallbackTitle' => 'Mediathek',
			'libraries.scanLibraryFiles' => 'Mediatheksdateien scannen',
			'libraries.scanLibrary' => 'Mediathek scannen',
			'libraries.analyze' => 'Analysieren',
			'libraries.analyzeLibrary' => 'Mediathek analysieren',
			'libraries.refreshMetadata' => 'Metadaten aktualisieren',
			'libraries.emptyTrash' => 'Papierkorb leeren',
			'libraries.emptyingTrash' => ({required Object title}) => 'Papierkorb für „${title}“ wird geleert...',
			'libraries.trashEmptied' => ({required Object title}) => 'Papierkorb für „${title}“ geleert',
			'libraries.failedToEmptyTrash' => ({required Object error}) => 'Papierkorb konnte nicht geleert werden: ${error}',
			'libraries.analyzing' => ({required Object title}) => 'Analysiere „${title}“...',
			'libraries.analysisStarted' => ({required Object title}) => 'Analyse gestartet für „${title}“',
			'libraries.failedToAnalyze' => ({required Object error}) => 'Analyse der Mediathek fehlgeschlagen: ${error}',
			'libraries.noLibrariesFound' => 'Keine Mediatheken gefunden',
			'libraries.allLibrariesHidden' => 'Alle Mediatheken sind ausgeblendet',
			'libraries.hiddenLibrariesCount' => ({required Object count}) => 'Ausgeblendete Mediatheken (${count})',
			'libraries.thisLibraryIsEmpty' => 'Diese Mediathek ist leer',
			'libraries.noItemsMatchFilters' => 'Keine Elemente entsprechen den aktiven Filtern',
			'libraries.resetFilters' => 'Filter zurücksetzen',
			'libraries.all' => 'Alle',
			'libraries.clearAll' => 'Alle Filter entfernen',
			'libraries.scanLibraryConfirm' => ({required Object title}) => '„${title}“ wirklich scannen?',
			'libraries.analyzeLibraryConfirm' => ({required Object title}) => '„${title}“ wirklich analysieren?',
			'libraries.refreshMetadataConfirm' => ({required Object title}) => 'Metadaten für „${title}“ wirklich aktualisieren?',
			'libraries.emptyTrashConfirm' => ({required Object title}) => 'Papierkorb für „${title}“ wirklich leeren?',
			'libraries.manageLibraries' => 'Mediatheken verwalten',
			'libraries.sort' => 'Sortieren',
			'libraries.sortBy' => 'Sortieren nach',
			'libraries.filters' => 'Filter',
			'libraries.confirmActionMessage' => 'Aktion wirklich durchführen?',
			'libraries.showLibrary' => 'Mediathek anzeigen',
			'libraries.hideLibrary' => 'Mediathek ausblenden',
			'libraries.libraryOptions' => 'Mediatheksoptionen',
			'libraries.content' => 'Mediatheksinhalt',
			'libraries.selectLibrary' => 'Mediathek auswählen',
			'libraries.filtersWithCount' => ({required Object count}) => 'Filter (${count})',
			'libraries.noRecommendations' => 'Keine Empfehlungen verfügbar',
			'libraries.noCollections' => 'Keine Sammlungen in dieser Mediathek',
			'libraries.noFoldersFound' => 'Keine Ordner gefunden',
			'libraries.folders' => 'Ordner',
			'libraries.tabs.recommended' => 'Empfohlen',
			'libraries.tabs.browse' => 'Durchsuchen',
			'libraries.tabs.collections' => 'Sammlungen',
			'libraries.tabs.playlists' => 'Wiedergabelisten',
			'libraries.groupings.title' => 'Gruppierung',
			'libraries.groupings.all' => 'Alle',
			'libraries.groupings.movies' => 'Filme',
			'libraries.groupings.shows' => 'Serien',
			'libraries.groupings.seasons' => 'Staffeln',
			'libraries.groupings.episodes' => 'Episoden',
			'libraries.groupings.artists' => 'Interpreten',
			'libraries.groupings.albums' => 'Alben',
			'libraries.groupings.tracks' => 'Titel',
			'libraries.groupings.folders' => 'Ordner',
			'libraries.filterCategories.genre' => 'Genre',
			'libraries.filterCategories.year' => 'Jahr',
			'libraries.filterCategories.contentRating' => 'Altersfreigabe',
			'libraries.filterCategories.tag' => 'Tag',
			'libraries.filterCategories.unwatched' => 'Ungesehene',
			'libraries.filterCategories.unplayed' => 'Nicht abgespielt',
			'libraries.filterCategories.favorites' => 'Favoriten',
			'libraries.filterCategories.filePath' => 'Dateipfad',
			'libraries.sortLabels.title' => 'Titel',
			'libraries.sortLabels.dateAdded' => 'Hinzugefügt am',
			'libraries.sortLabels.releaseDate' => 'Erscheinungsdatum',
			'libraries.sortLabels.rating' => 'Bewertung',
			'libraries.sortLabels.communityRating' => 'Communitybewertung',
			'libraries.sortLabels.criticRating' => 'Kritikerbewertung',
			'libraries.sortLabels.userRating' => 'Benutzerbewertung',
			'libraries.sortLabels.datePlayed' => 'Wiedergabedatum',
			'libraries.sortLabels.playCount' => 'Wiedergaben',
			'libraries.sortLabels.productionYear' => 'Produktionsjahr',
			'libraries.sortLabels.runtime' => 'Laufzeit',
			'libraries.sortLabels.officialRating' => 'Offizielle Bewertung',
			'libraries.sortLabels.premiereDate' => 'Veröffentlichungsdatum',
			'libraries.sortLabels.startDate' => 'Startdatum',
			'libraries.sortLabels.airTime' => 'Sendezeit',
			'libraries.sortLabels.studio' => 'Studio',
			'libraries.sortLabels.random' => 'Zufällig',
			'libraries.sortLabels.dateShared' => 'Datum geteilt',
			'libraries.sortLabels.latestEpisodeAirDate' => 'Ausstrahlungsdatum der neuesten Folge',
			'libraries.sortLabels.lastEpisodeDateAdded' => 'Hinzugefügt am (neueste Folge)',
			'libraries.sortLabels.dateDownloaded' => 'Heruntergeladen am',
			'libraries.sortLabels.size' => 'Größe',
			'libraries.sortLabels.library' => 'Mediathek',
			'libraries.advancedFilters.include' => 'Enthalten',
			'libraries.advancedFilters.exclude' => 'Ausgeschlossen',
			'libraries.advancedFilters.any' => 'Beliebig',
			'libraries.advancedFilters.yes' => 'Ja',
			'libraries.advancedFilters.no' => 'Nein',
			'libraries.advancedFilters.not' => ({required Object value}) => 'Nicht ${value}',
			'libraries.advancedFilters.valueCount' => ({required Object count}) => '${count} ausgewählt',
			'libraries.advancedFilters.valueCountExcluded' => ({required Object count}) => '${count} ausgeschlossen',
			'libraries.advancedFilters.searchValues' => 'Werte suchen',
			'libraries.advancedFilters.noValues' => 'Keine Werte',
			'libraries.advancedFilters.matchContains' => 'Enthält',
			'libraries.advancedFilters.matchNotContains' => 'Enthält nicht',
			'libraries.advancedFilters.matchIs' => 'Ist',
			'libraries.advancedFilters.matchIsNot' => 'Ist nicht',
			'libraries.advancedFilters.matchBeginsWith' => 'Beginnt mit',
			'libraries.advancedFilters.matchEndsWith' => 'Endet mit',
			'libraries.advancedFilters.textHint' => 'Tippen zum Filtern',
			'libraries.advancedFilters.from' => 'Von',
			'libraries.advancedFilters.to' => 'Bis',
			'libraries.advancedFilters.range' => ({required Object from, required Object to}) => '${from} bis ${to}',
			'libraries.advancedFilters.atLeast' => ({required Object value}) => '${value} und mehr',
			'libraries.advancedFilters.atMost' => ({required Object value}) => 'Bis ${value}',
			'libraries.advancedFilters.dateLastDays' => ({required Object count}) => 'Letzte ${count} Tage',
			'libraries.advancedFilters.dateLastYear' => 'Letztes Jahr',
			'libraries.advancedFilters.dateOlderThanDays' => ({required Object count}) => 'Älter als ${count} Tage',
			'libraries.advancedFilters.dateOlderThanYear' => 'Älter als ein Jahr',
			'about.title' => 'Über',
			'about.openSourceLicenses' => 'Open-Source-Lizenzen',
			'about.versionLabel' => ({required Object version}) => 'Version ${version}',
			'about.appDescription' => 'Ein schöner, mit Flutter entwickelter Plex-, Jellyfin- und Emby-Client',
			'about.customSource' => 'Quellcode',
			'about.basedOnLuroka' => 'Basiert auf Plezy',
			'about.viewLicensesDescription' => 'Lizenzen von Drittanbieter-Bibliotheken anzeigen',
			'about.appSection' => 'App',
			'about.communitySection' => 'Community',
			'about.creditsSection' => 'Credits',
			'about.legalSection' => 'Rechtliches',
			'about.versionMeta' => ({required Object version, required Object build, required Object platform}) => 'v${version} (${build}) · ${platform}',
			'about.versionMetaNoBuild' => ({required Object version, required Object platform}) => 'v${version} · ${platform}',
			'about.versionUnavailable' => 'Version nicht verfügbar',
			'about.versionDetails' => 'Versionsdetails',
			'about.versionDetailsTitle' => ({required Object version, required Object build}) => 'Luroka ${version} (${build})',
			'about.platformLine' => ({required Object platform}) => 'Plattform: ${platform}',
			'about.deviceLine' => ({required Object model}) => 'Gerät: ${model}',
			'about.packageLine' => ({required Object package}) => 'Paket: ${package}',
			'about.localeLine' => ({required Object locale}) => 'Sprache: ${locale}',
			'about.copyDetails' => 'Details kopieren',
			_ => null,
		} ?? switch (path) {
			'about.detailsCopied' => 'App-Details kopiert',
			'about.detailsCopyFailed' => 'App-Details konnten nicht kopiert werden',
			'about.checkForUpdatesDescription' => 'Auf GitHub nach einer neueren Version suchen',
			'about.checkingForUpdates' => 'Suche nach Updates…',
			'about.whatsNew' => 'Neuigkeiten',
			'about.releaseNotesUnavailable' => 'Keine Versionshinweise verfügbar.',
			'about.sourceCodeDescription' => 'Luroka auf GitHub',
			'about.reportIssue' => 'Problem melden',
			'about.reportIssueDescription' => 'Sag uns, was nicht funktioniert hat',
			'about.documentation' => 'Dokumentation',
			'about.documentationDescription' => 'Einrichtung, Funktionen und Build-Hinweise',
			'about.upstreamProjectDescription' => 'Open-Source-Projekt von edde746 und Mitwirkenden',
			'about.upstreamWebsite' => 'Luroka-Website',
			'about.attribution' => 'Daten & Quellenangaben',
			'about.attributionDescription' => 'Metadaten, Bewertungen und Marken',
			'about.attributionBody' => 'Dieses Produkt nutzt die TMDB API, wird aber nicht von TMDB unterstützt oder zertifiziert. Beliebtheitslisten, Metadaten und IMDb-Bewertungen stammen von Cinemeta. Bewertungen behalten ihre Quell-Labels.',
			'about.trademarkNotices' => 'Plex, Jellyfin, Emby, Trakt, Simkl, MyAnimeList, AniList, TMDB und zugehörige Marken sind Marken ihrer jeweiligen Eigentümer. Luroka steht in keiner Verbindung zu ihnen und wird von ihnen nicht unterstützt.',
			'about.privacyPolicy' => 'Datenschutzerklärung',
			'about.privacyPolicyDescription' => 'Wie deine Daten behandelt werden',
			'about.gplLicense' => 'GNU GPL-3.0 Lizenz',
			'about.gplLicenseDescription' => 'Luroka ist freie Software',
			'about.linkOpenFailed' => 'Dieser Link konnte nicht geöffnet werden',
			'about.opensInBrowser' => 'Öffnet sich im Browser',
			'about.footer' => 'Luroka ist freie Software unter GPL-3.0, aufgebaut auf dem Open-Source-Projekt Luroka.',
			'about.copyright' => ({required Object year}) => '© ${year} Luroka-Mitwirkende',
			'serverSelection.noServersFoundForAccount' => ({required Object username, required Object email}) => 'Keine Server gefunden für ${username} (${email})',
			'serverSelection.failedToLoadServers' => ({required Object error}) => 'Server konnten nicht geladen werden: ${error}',
			'serverSelection.noValidServers' => 'Für dieses Konto wurden keine nutzbaren Server gefunden',
			'hubDetail.title' => 'Titel',
			'hubDetail.releaseYear' => 'Erscheinungsjahr',
			'hubDetail.dateAdded' => 'Hinzugefügt am',
			'hubDetail.rating' => 'Bewertung',
			'hubDetail.noItemsFound' => 'Keine Elemente gefunden',
			'logs.clearLogs' => 'Protokolle löschen',
			'logs.copyLogs' => 'Protokolle kopieren',
			'logs.uploadLogs' => 'Protokolle hochladen',
			'startup.failedTitle' => 'Luroka konnte nicht gestartet werden',
			'startup.failedBody' => 'Beim Start ist etwas schiefgelaufen. Die Details unten zeigen, was fehlgeschlagen ist.',
			'startup.failedBodyRepairable' => 'Die gespeicherte Einstellungsdatei von Luroka ist beschädigt und muss neu aufgebaut werden, bevor Luroka starten kann. Erneutes Versuchen hilft nicht – wähle „Speicher reparieren“.',
			'startup.phaseLabel' => 'Schritt',
			'startup.showDetails' => 'Details anzeigen',
			'startup.hideDetails' => 'Details ausblenden',
			'startup.copyDetails' => 'Details kopieren',
			'startup.detailsCopied' => 'Details in die Zwischenablage kopiert',
			'startup.uploadDetails' => 'Details hochladen',
			'startup.repairStorage' => 'Speicher reparieren',
			'startup.repairTitle' => 'Gespeicherte Daten reparieren?',
			'startup.repairBodyCommon' => 'Die Einstellungsdatei von Luroka ist beschädigt und kann nicht gelesen werden. Beim Reparieren werden alle Einstellungen auf ihre Standardwerte zurückgesetzt.',
			'startup.repairBodyOneCredential' => 'Eine gespeicherte Anmeldung ist beschädigt und kann nicht gelesen werden. Beim Reparieren wird nur diese entfernt; deine übrigen Einstellungen bleiben unangetastet.',
			'startup.repairBodySignInsKept' => 'Deine Server und Profile sollten angemeldet bleiben.',
			'startup.repairBodySignInsLost' => 'Der Schlüssel, der deine gespeicherten Anmeldungen schützt, kann aus dieser Datei nicht wiederhergestellt werden. Du musst dich daher bei jedem Server und Profil erneut anmelden. Auf deinem Medienserver ändert sich nichts.',
			'startup.repairBodySessionsUncertain' => 'Tracker (MAL, AniList, Simkl, Trakt) und Seerr werden separat gespeichert und können erhalten bleiben oder auch nicht. Luroka teilt dir genau mit, was erhalten blieb.',
			'startup.repairConfirm' => 'Reparieren',
			'startup.repairSucceeded' => 'Speicher repariert',
			'startup.repairNeedsRestart' => 'Speicher repariert – Neustart erforderlich',
			'startup.restartRequiredBody' => 'Deine Daten wurden repariert, aber Luroka muss neu starten, bevor es sie verwenden kann. Schließe Luroka und öffne es erneut.',
			'startup.quitLuroka' => 'Luroka beenden',
			'startup.repairFailed' => 'Reparatur fehlgeschlagen',
			'startup.repairKeptSignIns' => 'Deine Server und Profile sind weiterhin angemeldet.',
			'startup.repairLostSignIns' => 'Der Schlüssel, der deine gespeicherten Anmeldungen schützt, konnte nicht wiederhergestellt werden. Du musst dich bei jedem Server und Profil erneut anmelden.',
			'startup.repairLostSessions' => 'Mindestens eine Tracker- oder Seerr-Verbindung ging verloren und muss neu verbunden werden.',
			'startup.backupTitle' => 'Eine Kopie der beschädigten Datei wurde aufbewahrt',
			'startup.backupWarning' => 'Sie enthält deine Anmeldedaten. Lade sie nicht hoch und teile sie nicht.',
			'startup.deleteBackup' => 'Kopie löschen',
			'startup.backupDeleted' => 'Kopie gelöscht.',
			'startup.previousFailureTitle' => 'Luroka konnte beim letzten Mal nicht starten',
			'licenses.relatedPackages' => 'Verwandte Pakete',
			'licenses.license' => 'Lizenz',
			'licenses.licenseNumber' => ({required Object number}) => 'Lizenz ${number}',
			'licenses.licensesCount' => ({required Object count}) => '${count} Lizenzen',
			'licenses.searchHint' => 'Pakete durchsuchen',
			'licenses.noResults' => ({required Object query}) => 'Keine Pakete entsprechen "${query}"',
			'licenses.clearSearch' => 'Suche löschen',
			'navigation.libraries' => 'Mediatheken',
			'navigation.downloads' => 'Downloads',
			'navigation.liveTv' => 'Live-TV',
			'navigation.explore' => 'Erkunden',
			'explore.title' => 'Erkunden',
			'explore.selectSource' => 'Quelle auswählen',
			'explore.rows.watchlist' => 'Merkliste',
			'explore.rows.recommendedMovies' => 'Empfohlene Filme',
			'explore.rows.recommendedShows' => 'Empfohlene Serien',
			'explore.rows.trendingMovies' => 'Angesagte Filme',
			'explore.rows.trendingShows' => 'Angesagte Serien',
			'explore.rows.popularMovies' => 'Beliebte Filme',
			'explore.rows.popularShows' => 'Beliebte Serien',
			'explore.rows.trendingAnime' => 'Angesagte Anime',
			'explore.rows.suggestedAnime' => 'Empfohlene Anime',
			'explore.rows.airingAnime' => 'Beste derzeit laufende Anime',
			'explore.rows.popularAnime' => 'Beliebteste Anime',
			'explore.rows.trending' => 'Angesagt',
			'explore.rows.upcomingMovies' => 'Kommende Filme',
			'explore.rows.upcomingShows' => 'Kommende Serien',
			'explore.status.airing' => 'Laufend',
			'explore.status.ended' => 'Beendet',
			'explore.status.canceled' => 'Abgesetzt',
			'explore.status.upcoming' => 'Demnächst',
			'explore.episodeCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n, one: '${n} Folge', other: '${n} Folgen', ), 
			'explore.cast' => 'Besetzung',
			'explore.characters' => 'Charaktere',
			'explore.addToWatchlist' => 'Zur Merkliste hinzufügen',
			'explore.removeFromWatchlist' => 'Von Merkliste entfernen',
			'explore.addedToWatchlist' => 'Zur Watchlist hinzugefügt',
			'explore.removedFromWatchlist' => 'Von der Watchlist entfernt',
			'explore.watchlistUpdateFailed' => 'Merkliste konnte nicht aktualisiert werden',
			'explore.watchlistNoMatch' => 'Dieser Eintrag konnte keiner Watchlist zugeordnet werden',
			'explore.notInLibrary' => 'Nicht in deiner Mediathek',
			'explore.inTheseLibraries' => 'In diesen Mediatheken',
			'explore.checkingLibrary' => 'Deine Mediathek wird überprüft …',
			'explore.libraryCheckFailed' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n, one: '${n} Server konnte nicht geprüft werden', other: '${n} Server konnten nicht geprüft werden', ), 
			'explore.emptyTitle' => 'Hier ist noch nichts',
			'explore.emptyMessage' => ({required Object source}) => 'Zeilen aus ${source} erscheinen hier, sobald sie Inhalte enthalten.',
			'explore.searchHint' => ({required Object source}) => '${source} durchsuchen',
			'explore.searchEmpty' => ({required Object query}) => 'Keine Ergebnisse für „${query}“',
			'explore.searchPrompt' => ({required Object source}) => 'Suche nach Filmen und Serien auf ${source}.',
			'explore.searchFailed' => 'Suche fehlgeschlagen. Prüfe deine Verbindung und versuche es erneut.',
			'explore.badge.rankPopular' => ({required Object n}) => '#${n} beliebt',
			'explore.badge.rankAiring' => ({required Object n}) => '#${n} derzeit ausgestrahlt',
			'explore.badge.rankRated' => ({required Object n}) => '#${n} bewertet',
			'explore.badge.rankTrending' => ({required Object n}) => '#${n} angesagt',
			'explore.badge.rankSeasonal' => ({required Object n, required Object season}) => '#${n} in ${season}',
			'explore.badge.watchingNow' => ({required Object n}) => '${n} schauen gerade',
			'explore.badge.available' => 'Verfügbar',
			'explore.badge.partiallyAvailable' => 'Teilweise verfügbar',
			'explore.badge.availableIn4k' => '4K verfügbar',
			'explore.badge.requested' => 'Angefragt',
			'explore.badge.pendingApproval' => 'Genehmigung ausstehend',
			'explore.badge.processing' => 'Wird verarbeitet',
			'explore.badge.declined' => 'Abgelehnt',
			'explore.badge.requestFailed' => 'Anfrage fehlgeschlagen',
			'explore.badge.requested4k' => '4K angefragt',
			'explore.badge.seasonsAvailable' => ({required Object available, required Object total}) => '${available}/${total} Staffeln',
			'explore.badge.nextEpisodeIn' => ({required Object episode, required Object duration}) => 'Folge ${episode} in ${duration}',
			'explore.badge.nextAiringIn' => ({required Object duration}) => 'Nächste in ${duration}',
			'explore.badge.episodesShort' => ({required Object n}) => '${n} Folgen',
			'explore.badge.minutesPerEpisode' => ({required Object n}) => '${n} Min./Folge',
			'explore.badge.adult' => '18+',
			'explore.stats.listed' => ({required Object n}) => '${n} gelistet',
			'explore.stats.viewersDay' => ({required Object n}) => '${n} heute gesehen',
			'explore.stats.viewersWeek' => ({required Object n}) => '${n} diese Woche gesehen',
			'explore.stats.viewersMonth' => ({required Object n}) => '${n} diesen Monat gesehen',
			'explore.stats.viewersYear' => ({required Object n}) => '${n} dieses Jahr gesehen',
			'explore.stats.viewersAllTime' => ({required Object n}) => '${n} Zuschauer',
			'explore.stats.planning' => ({required Object n}) => '${n} haben es geplant',
			'explore.stats.favorited' => ({required Object n}) => '${n} Favoriten',
			'explore.stats.dropRate' => ({required Object percent}) => '${percent} haben es abgebrochen',
			'explore.stats.comments' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n, one: '${n} Kommentar', other: '${n} Kommentare', ), 
			'explore.stats.votes' => ({required Object n}) => '${n} Stimmen',
			'explore.stats.watching' => ({required Object n}) => '${n} schauen es gerade',
			'explore.stats.completed' => ({required Object n}) => '${n} abgeschlossen',
			'explore.stats.onHold' => ({required Object n}) => '${n} pausiert',
			'explore.stats.dropped' => ({required Object n}) => '${n} abgebrochen',
			'explore.season.winter' => 'Winter',
			'explore.season.spring' => 'Frühling',
			'explore.season.summer' => 'Sommer',
			'explore.season.fall' => 'Herbst',
			'explore.season.withYear' => ({required Object season, required Object year}) => '${season} ${year}',
			'explore.format.tv' => 'TV',
			'explore.format.tvShort' => 'TV-Kurzfilm',
			'explore.format.movie' => 'Film',
			'explore.format.special' => 'Special',
			'explore.format.ova' => 'OVA',
			'explore.format.ona' => 'ONA',
			'explore.format.music' => 'Musik',
			'explore.format.other' => 'Sonstiges',
			'explore.sourceMaterial.original' => 'Original',
			'explore.sourceMaterial.manga' => 'Manga',
			'explore.sourceMaterial.lightNovel' => 'Light Novel',
			'explore.sourceMaterial.novel' => 'Roman',
			'explore.sourceMaterial.visualNovel' => 'Visual Novel',
			'explore.sourceMaterial.game' => 'Spiel',
			'explore.sourceMaterial.webComic' => 'Webcomic',
			'explore.sourceMaterial.musicRelease' => 'Musik',
			'explore.sourceMaterial.otherMedia' => 'Sonstiges',
			'explore.creditRole.actor' => 'Schauspieler',
			'explore.creditRole.director' => 'Regisseur',
			'explore.creditRole.writer' => 'Autor',
			'explore.creditRole.producer' => 'Produzent',
			'explore.creditRole.creator' => 'Schöpfer',
			'explore.creditRole.composer' => 'Komponist',
			'explore.relation.prequel' => 'Prequel',
			'explore.relation.sequel' => 'Fortsetzung',
			'explore.relation.sideStory' => 'Nebengeschichte',
			'explore.relation.spinOff' => 'Spin-off',
			'explore.relation.alternativeVersion' => 'Alternative Version',
			'explore.relation.summary' => 'Zusammenfassung',
			'explore.relation.parentStory' => 'Hauptgeschichte',
			'explore.relation.adaptation' => 'Adaption',
			'explore.relation.other' => 'Verwandt',
			'explore.broadcast' => ({required Object day, required Object time}) => 'Läuft ${day} um ${time}',
			'explore.broadcastWithZone' => ({required Object day, required Object time, required Object timezone}) => 'Läuft ${day} um ${time} ${timezone}',
			'explore.detail.originalTitle' => 'Originaltitel',
			'explore.detail.alsoKnownAs' => 'Auch bekannt als',
			'explore.detail.studios' => 'Studios',
			'explore.detail.country' => 'Land',
			'explore.detail.language' => 'Sprache',
			'explore.detail.released' => 'Erschienen',
			'explore.detail.physicalRelease' => 'Auf Disc',
			'explore.detail.ended' => 'Beendet',
			'explore.detail.addedOn' => ({required Object date}) => 'Hinzugefügt am ${date}',
			'explore.detail.yourRating' => 'Deine Bewertung',
			'explore.detail.budget' => 'Budget',
			'explore.detail.revenue' => 'Einspielergebnis',
			'explore.detail.contentAdvisory' => 'Altersfreigabe',
			'explore.detail.tags' => 'Tags',
			'explore.detail.revealSpoilerTags' => 'Spoiler-Tags anzeigen',
			'explore.detail.links' => 'Links',
			'explore.detail.watchOn' => 'Ansehen auf',
			'explore.detail.watchTrailer' => 'Trailer ansehen',
			'explore.detail.openOn' => ({required Object site}) => 'Auf ${site} öffnen',
			'explore.detail.crew' => 'Crew',
			'explore.detail.ratings' => 'Bewertungen',
			'explore.detail.schedule' => 'Sendetermine',
			'explore.detail.recommendedByUsers' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n, one: 'Von ${n} Nutzer empfohlen', other: 'Von ${n} Nutzern empfohlen', ), 
			'explore.detail.recommendedBy' => ({required Object who}) => 'Empfohlen von ${who}',
			'explore.detail.favoritedBy' => ({required Object who}) => 'Favorisiert von ${who}',
			'explore.detail.unairedEpisodes' => ({required Object n}) => '${n} noch nicht ausgestrahlt',
			'explore.detail.recommendedByPercent' => ({required Object percent}) => 'Von ${percent} der Zuschauer empfohlen',
			'explore.detail.relatedTitles' => 'Verwandte Titel',
			'explore.detail.background' => 'Hintergrund',
			'explore.totalResults' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n, one: '${n} Ergebnis', other: '${n} Ergebnisse', ), 
			'liveTv.title' => 'Live-TV',
			'liveTv.guide' => 'TV-Programm',
			'liveTv.noChannels' => 'Keine Kanäle verfügbar',
			'liveTv.noDvr' => 'Auf keinem Server ist ein DVR konfiguriert',
			'liveTv.serverUnavailable' => 'Der Live-TV-Server ist nicht verfügbar.',
			'liveTv.serverNotConnected' => 'Der Live-TV-Server ist nicht verbunden.',
			'liveTv.noPrograms' => 'Keine Programmdaten verfügbar',
			'liveTv.liveStreamFailed' => 'Livestream fehlgeschlagen',
			'liveTv.unknownProgram' => 'Unbekannte Sendung',
			'liveTv.unknownHub' => 'Unbekannt',
			'liveTv.unknownError' => 'Unbekannter Fehler',
			'liveTv.channelNumber' => ({required Object number}) => 'Kanal ${number}',
			'liveTv.unknownChannel' => 'Unbekannter Kanal',
			'liveTv.live' => 'LIVE',
			'liveTv.reloadGuide' => 'TV-Programm neu laden',
			'liveTv.searchGuide' => 'TV-Programm durchsuchen',
			'liveTv.searchHint' => 'Kanäle & Sendungen suchen',
			'liveTv.searchNoResults' => ({required Object query}) => 'Keine Treffer für „${query}“',
			'liveTv.channelsSection' => 'Kanäle',
			'liveTv.programsSection' => 'Sendungen',
			'liveTv.now' => 'Jetzt',
			'liveTv.today' => 'Heute',
			'liveTv.tomorrow' => 'Morgen',
			'liveTv.midnight' => 'Mitternacht',
			'liveTv.overnight' => 'Nacht',
			'liveTv.morning' => 'Morgen',
			'liveTv.daytime' => 'Tagsüber',
			'liveTv.evening' => 'Abend',
			'liveTv.lateNight' => 'Spätnacht',
			'liveTv.whatsOn' => 'Jetzt im TV',
			'liveTv.watchChannel' => 'Kanal ansehen',
			'liveTv.favorites' => 'Favoriten',
			'liveTv.reorderFavorites' => 'Favoriten sortieren',
			'liveTv.noFavoriteChannels' => 'Keine Lieblingssender',
			'liveTv.noFavoriteChannelsHint' => 'Zeige alle Sender an und halte dann einen Sender gedrückt, um ihn zu deinen Favoriten hinzuzufügen.',
			'liveTv.showAllChannels' => 'Alle Sender anzeigen',
			'liveTv.favoritesLoadFailed' => 'Favoriten konnten nicht geladen werden. Überprüfe deine Verbindung und versuche es erneut.',
			'liveTv.favoritesUpdateFailed' => 'Favoriten konnten nicht aktualisiert werden. Prüfe deine Verbindung und versuche es erneut.',
			'liveTv.joinSession' => 'Aktueller Sitzung beitreten',
			'liveTv.watchFromStart' => ({required Object minutes}) => 'Von Anfang an ansehen (vor ${minutes} Min.)',
			'liveTv.watchLive' => 'Live ansehen',
			'liveTv.goToLive' => 'Zum Live-Bild',
			'liveTv.record' => 'Aufnehmen',
			'liveTv.recordEpisode' => 'Episode aufnehmen',
			'liveTv.recordSeries' => 'Serie aufnehmen',
			'liveTv.recordOptions' => 'Aufnahmeoptionen',
			'liveTv.saveTo' => 'Speichern in',
			'liveTv.recordings' => 'Aufnahmen',
			'liveTv.scheduledRecordings' => 'Geplant',
			'liveTv.recordingRules' => 'Aufnahmeregeln',
			'liveTv.noScheduledRecordings' => 'Keine geplanten Aufnahmen',
			'liveTv.manageRecording' => 'Aufnahme verwalten',
			'liveTv.cancelRecording' => 'Aufnahme abbrechen',
			'liveTv.cancelRecordingTitle' => 'Diese Aufnahme abbrechen?',
			'liveTv.cancelRecordingMessage' => ({required Object title}) => '${title} wird nicht mehr aufgenommen.',
			'liveTv.deleteRule' => 'Regel löschen',
			'liveTv.deleteRuleTitle' => 'Aufnahmeregel löschen?',
			'liveTv.deleteRuleMessage' => ({required Object title}) => 'Zukünftige Episoden von ${title} werden nicht aufgenommen.',
			'liveTv.recordingScheduled' => 'Aufnahme geplant',
			'liveTv.alreadyScheduled' => 'Dieses Programm ist bereits geplant',
			'liveTv.dvrAdminRequired' => 'DVR-Einstellungen erfordern ein Administratorkonto',
			'liveTv.recordingFailed' => 'Aufnahme konnte nicht geplant werden',
			'liveTv.recordingTargetMissing' => 'Aufnahmebibliothek konnte nicht ermittelt werden',
			'liveTv.recordNotAvailable' => 'Aufnahme für dieses Programm nicht verfügbar',
			'liveTv.recordingCancelled' => 'Aufnahme abgebrochen',
			'liveTv.recordingRuleDeleted' => 'Aufnahmeregel gelöscht',
			'liveTv.processRecordingRules' => 'Regeln neu bewerten',
			'liveTv.recordingInProgress' => 'Wird jetzt aufgenommen',
			'liveTv.recordingsCount' => ({required Object count}) => '${count} geplant',
			'liveTv.editRule' => 'Regel bearbeiten',
			'liveTv.editRuleAction' => 'Bearbeiten',
			'liveTv.recordingRuleUpdated' => 'Aufnahmeregel aktualisiert',
			'liveTv.guideReloadRequested' => 'Aktualisierung des TV-Programms angefordert',
			'liveTv.guideReloadFailed' => 'TV-Programm konnte nicht aktualisiert werden',
			'liveTv.rulesProcessRequested' => 'Regelauswertung angefordert',
			'liveTv.rulesProcessFailed' => 'Aufnahmeregeln konnten nicht neu ausgewertet werden',
			'liveTv.recordShow' => 'Sendung aufnehmen',
			'liveTv.recordSettings.startEarly' => 'Früher starten (Sekunden)',
			'liveTv.recordSettings.endLate' => 'Später beenden (Sekunden)',
			'liveTv.recordSettings.newOnly' => 'Nur neue Episoden',
			'liveTv.recordSettings.anyChannel' => 'Auf jedem Sender aufnehmen',
			'liveTv.recordSettings.anyTime' => 'Zu jeder Zeit aufnehmen',
			'liveTv.recordSettings.skipInLibrary' => 'Episoden überspringen, die schon in der Bibliothek sind',
			'liveTv.recordSettings.keepUpTo' => 'Zu behaltende Episoden',
			'liveTv.recordSettings.keepUpToHint' => '0 behält alle Episoden',
			'liveTv.startingInMinutes' => ({required Object minutes}) => 'Beginnt in ${minutes} Min.',
			'liveTv.dayAtTime' => ({required Object day, required Object time}) => '${day} um ${time}',
			'liveTv.invalidPlaybackData' => ({required Object product}) => '${product} hat ungültige Live-TV-Wiedergabedaten zurückgegeben',
			'liveTv.failedToStartChannel' => 'Der Live-Sender konnte nicht gestartet werden',
			'liveTv.failedToBuildStreamUrl' => 'Die Stream-URL konnte nicht erstellt werden',
			'liveTv.playbackStartFailed' => ({required Object reason}) => 'Sender konnte nicht gestartet werden: ${reason}',
			'liveTv.channelSwitchFailed' => ({required Object reason}) => 'Sender konnte nicht gewechselt werden: ${reason}',
			'collections.title' => 'Sammlungen',
			'collections.collection' => 'Sammlung',
			'collections.empty' => 'Sammlung ist leer',
			'collections.deleteCollection' => 'Sammlung löschen',
			'collections.deleteConfirm' => ({required Object title}) => '„${title}“ löschen? Dies kann nicht rückgängig gemacht werden.',
			'collections.deleted' => 'Sammlung gelöscht',
			'collections.deleteFailed' => 'Sammlung konnte nicht gelöscht werden',
			'collections.deleteFailedWithError' => ({required Object error}) => 'Sammlung konnte nicht gelöscht werden: ${error}',
			'collections.selectCollection' => 'Sammlung auswählen',
			'collections.collectionName' => 'Sammlungsname',
			'collections.enterCollectionName' => 'Sammlungsnamen eingeben',
			'collections.addedToCollection' => 'Zur Sammlung hinzugefügt',
			'collections.errorAddingToCollection' => 'Fehler beim Hinzufügen zur Sammlung',
			'collections.created' => 'Sammlung erstellt',
			'collections.removeFromCollection' => 'Aus Sammlung entfernen',
			'collections.removeFromCollectionConfirm' => ({required Object title}) => '„${title}“ aus dieser Sammlung entfernen?',
			'collections.removedFromCollection' => 'Aus Sammlung entfernt',
			'collections.removeFromCollectionFailed' => 'Entfernen aus Sammlung fehlgeschlagen',
			'collections.removeFromCollectionError' => ({required Object error}) => 'Fehler beim Entfernen aus der Sammlung: ${error}',
			'collections.searchCollections' => 'Sammlungen durchsuchen...',
			'playlists.title' => 'Wiedergabelisten',
			'playlists.playlist' => 'Wiedergabeliste',
			'playlists.noPlaylists' => 'Keine Wiedergabelisten gefunden',
			'playlists.create' => 'Wiedergabeliste erstellen',
			'playlists.playlistName' => 'Name der Wiedergabeliste',
			'playlists.enterPlaylistName' => 'Name der Wiedergabeliste eingeben',
			'playlists.delete' => 'Wiedergabeliste löschen',
			'playlists.removeItem' => 'Aus Wiedergabeliste entfernen',
			'playlists.smartPlaylist' => 'Intelligente Wiedergabeliste',
			'playlists.itemCount' => ({required Object count}) => '${count} Elemente',
			'playlists.oneItem' => '1 Element',
			'playlists.emptyPlaylist' => 'Diese Wiedergabeliste ist leer',
			'playlists.deleteConfirm' => 'Wiedergabeliste löschen?',
			'playlists.deleteMessage' => ({required Object name}) => '„${name}“ wirklich löschen?',
			'playlists.created' => 'Wiedergabeliste erstellt',
			'playlists.deleted' => 'Wiedergabeliste gelöscht',
			'playlists.itemAdded' => 'Zur Wiedergabeliste hinzugefügt',
			'playlists.itemRemoved' => 'Aus Wiedergabeliste entfernt',
			'playlists.selectPlaylist' => 'Wiedergabeliste auswählen',
			'playlists.searchPlaylists' => 'Wiedergabelisten durchsuchen...',
			'playlists.errorCreating' => 'Wiedergabeliste konnte nicht erstellt werden',
			'playlists.errorDeleting' => 'Wiedergabeliste konnte nicht gelöscht werden',
			'playlists.errorLoading' => 'Wiedergabelisten konnten nicht geladen werden',
			'playlists.errorAdding' => 'Konnte nicht zur Wiedergabeliste hinzugefügt werden',
			'playlists.errorReordering' => 'Element der Wiedergabeliste konnte nicht neu geordnet werden',
			'playlists.errorRemoving' => 'Konnte nicht aus der Wiedergabeliste entfernt werden',
			'music.goToAlbum' => 'Zum Album',
			'music.goToArtist' => 'Zum Interpreten',
			'music.instantMix' => 'Instant-Mix',
			'music.playNext' => 'Als Nächstes abspielen',
			'music.addToQueue' => 'Zur Warteschlange hinzufügen',
			'music.discNumber' => ({required Object n}) => 'Disc ${n}',
			'music.trackCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n, one: '${n} Titel', other: '${n} Titel', ), 
			'music.nowPlaying' => 'Wird wiedergegeben',
			'music.playingFrom' => ({required Object title}) => 'Wiedergabe von ${title}',
			'music.queue' => 'Warteschlange',
			'music.clearQueue' => 'Warteschlange leeren',
			'music.lyrics' => 'Songtext',
			'music.noLyrics' => 'Kein Songtext verfügbar',
			'music.sleepTimer' => 'Schlaftimer',
			'music.sleepTimerEndOfTrack' => 'Ende des Titels',
			'music.sleepTimerMinutes' => ({required Object n}) => '${n} Minuten',
			'music.stopPlayback' => 'Wiedergabe stoppen',
			'music.previousTrack' => 'Vorheriger Titel',
			'music.nextTrack' => 'Nächster Titel',
			'music.repeat' => 'Wiederholen',
			'music.repeatAll' => 'Alle wiederholen',
			'music.repeatOne' => 'Titel wiederholen',
			'music.instantMixNoServer' => 'Für einen Instant Mix ist kein Server verfügbar',
			'music.instantMixFailed' => 'Instant-Mix konnte nicht geladen werden',
			'music.instantMixEmpty' => 'Der Instant-Mix enthält keine Titel',
			'music.noAudioUrl' => ({required Object track}) => 'Für ${track} ist keine Audio-URL verfügbar',
			'music.discography.singlesAndEps' => 'Singles & EPs',
			'music.discography.live' => 'Live',
			'music.discography.compilations' => 'Kompilationen',
			'watchTogether.title' => 'Gemeinsam Schauen',
			'watchTogether.description' => 'Inhalte synchron mit Freunden und Familie schauen',
			'watchTogether.createRoom' => 'Raum erstellen',
			'watchTogether.creatingRoom' => 'Raum wird erstellt…',
			'watchTogether.joinRoom' => 'Raum beitreten',
			'watchTogether.joiningRoom' => 'Raum wird beigetreten…',
			'watchTogether.connecting' => 'Verbinden…',
			'watchTogether.relayPublic' => 'Räume nutzen die öffentlichen Open Watch Party Relays.',
			'watchTogether.relayCustom' => ({required Object url}) => 'Räume nutzen dein Relay unter ${url}.',
			'watchTogether.recentRooms' => 'Zuletzt verwendete Räume',
			'watchTogether.roomActions' => 'Raumaktionen',
			'watchTogether.renameRoom' => 'Raum umbenennen',
			'watchTogether.removeRoom' => 'Entfernen',
			'watchTogether.enterRoomCode' => 'Gib den 6-stelligen Code vom Host ein.',
			'watchTogether.roomCode' => 'Raumcode',
			'watchTogether.paste' => 'Einfügen',
			'watchTogether.noCodeInClipboard' => 'Die Zwischenablage enthält keinen Raumcode',
			'watchTogether.copyCode' => 'Code kopieren',
			'watchTogether.codeCopied' => 'Raumcode kopiert',
			'watchTogether.shareInvite' => 'Einladung teilen',
			'watchTogether.qrShare' => 'QR-Code teilen',
			'watchTogether.qrHint' => 'Scanne mit der Luroka-App, um diesem Raum beizutreten.',
			'watchTogether.phasePlaying' => 'Wird abgespielt',
			'watchTogether.phasePaused' => 'Pausiert',
			'watchTogether.phaseWaiting' => 'Warte auf alle',
			'watchTogether.inviteCopied' => 'Einladung kopiert. Füge sie in eine Nachricht ein.',
			'watchTogether.inviteMessage' => ({required Object code}) => 'Tritt meinem Watch-Together-Raum in Luroka bei: luroka://watch?code=${code} — oder öffne Watch Together und gib ${code} ein.',
			'watchTogether.openSessionControls' => 'Sitzungssteuerung für Gemeinsam Schauen öffnen',
			'watchTogether.reconnecting' => 'Verbindung wird wiederhergestellt…',
			'watchTogether.reconnectingDescription' => 'Die Verbindung wurde unterbrochen. Du trittst dem Raum automatisch wieder bei.',
			'watchTogether.connected' => 'Verbunden',
			'watchTogether.disconnected' => 'Getrennt',
			'watchTogether.youAreHost' => 'Du bist der Host',
			'watchTogether.hostedBy' => ({required Object name}) => 'Hostet von ${name}',
			'watchTogether.hostControlsPlayback' => 'Host steuert die Wiedergabe',
			'watchTogether.anyoneCanControl' => 'Alle können die Wiedergabe steuern',
			'watchTogether.roomLocked' => 'Raum gesperrt',
			'watchTogether.nowPlaying' => 'Wird gerade abgespielt',
			'watchTogether.nothingPlaying' => 'Nichts wird abgespielt',
			'watchTogether.nothingPlayingHost' => 'Spiele etwas aus einer beliebigen Bibliothek ab, um es mit dem Raum zu teilen.',
			'watchTogether.nothingPlayingGuest' => 'Wenn der Host etwas abspielt, öffnet es sich hier.',
			'watchTogether.notShareable' => 'Dieses Video hat keine Katalog-Übereinstimmung — nur Personen mit Zugriff auf denselben Server können es abspielen.',
			'watchTogether.searching' => 'Suche dieses Video in deinen Bibliotheken…',
			'watchTogether.yourCopy' => 'Deine Kopie',
			'watchTogether.sharingYourCopy' => 'Du teilst deine Kopie',
			'watchTogether.playingOtherLength' => ({required Object difference}) => 'Deine Kopie wird abgespielt, ${difference}',
			'watchTogether.mismatchTitle' => 'Deine Kopie hat eine andere Länge',
			'watchTogether.mismatchDescription' => ({required Object difference}) => 'Deine nächste Kopie ist ${difference} als das Video des Raums. Es könnte ein anderer Schnitt oder eine andere Version sein.',
			'watchTogether.playAnyway' => 'Trotzdem abspielen',
			'watchTogether.chooseAnotherCopy' => 'Andere Kopie wählen',
			'watchTogether.dontPlay' => 'Nicht abspielen',
			'watchTogether.unavailableTitle' => 'Du hast dieses Video nicht',
			'watchTogether.unavailableDescription' => 'Luroka konnte es nicht in deinen Bibliotheken finden. Wähle selbst eine Kopie oder suche erneut.',
			'watchTogether.chooseCopy' => 'Kopie wählen',
			'watchTogether.searchAgain' => 'Erneut suchen',
			'watchTogether.noCandidates' => 'Keine Kopien in deinen Bibliotheken gefunden.',
			'watchTogether.choiceFailed' => 'Diese Kopie konnte für den Raum nicht abgespielt werden',
			'watchTogether.lengthLonger' => ({required Object duration}) => '${duration} länger',
			'watchTogether.lengthShorter' => ({required Object duration}) => '${duration} kürzer',
			'watchTogether.lengthSame' => 'Gleiche Länge',
			'watchTogether.lengthUnknown' => 'Länge unbekannt',
			'watchTogether.joinCurrentPlayback' => 'Aktueller Wiedergabe beitreten',
			'watchTogether.joinCurrentPlaybackDescription' => 'Zu dem Inhalt wechseln, den der Host gerade ansieht',
			'watchTogether.stopMedia' => 'Video für alle stoppen',
			'watchTogether.syncOffset' => 'Sync-Offset',
			'watchTogether.syncOffsetDescription' => 'Verschiebe dein Video, wenn es vor oder hinter dem Raum läuft.',
			'watchTogether.offsetHint' => ({required Object difference}) => 'Deine Kopie ist ${difference} als das Video des Raums.',
			'watchTogether.applyDifference' => ({required Object offset}) => '${offset} verwenden',
			'watchTogether.offsetMinusSecond' => '-1 s',
			'watchTogether.offsetMinusTenth' => '-100 ms',
			'watchTogether.offsetPlusTenth' => '+100 ms',
			'watchTogether.offsetPlusSecond' => '+1 s',
			'watchTogether.participants' => 'Teilnehmer',
			'watchTogether.participantCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n, one: '${n} Teilnehmer', other: '${n} Teilnehmer', ), 
			'watchTogether.hostBadge' => 'HOST',
			'watchTogether.nameYou' => ({required Object name}) => '${name} (Du)',
			'watchTogether.playerIdle' => 'Inaktiv',
			'watchTogether.playerLoading' => 'Lädt',
			'watchTogether.playerReady' => 'Bereit',
			'watchTogether.playerBuffering' => 'Puffert',
			'watchTogether.matchSearching' => 'Sucht',
			'watchTogether.matchMatched' => 'Hat das Video',
			'watchTogether.matchMismatched' => 'Andere Länge',
			'watchTogether.matchUnavailable' => 'Hat das Video nicht',
			'watchTogether.participantOffset' => ({required Object offset}) => 'Offset ${offset}',
			'watchTogether.makeHost' => 'Zum Host machen',
			'watchTogether.makeHostQuestion' => 'Host übertragen?',
			'watchTogether.makeHostConfirm' => ({required Object name}) => '${name} steuert dann die Wiedergabe und die Sitzung für alle.',
			'watchTogether.transfer' => 'Übertragen',
			'watchTogether.removeParticipant' => 'Aus dem Raum entfernen',
			'watchTogether.removeParticipantQuestion' => ({required Object name}) => '${name} entfernen?',
			'watchTogether.removeParticipantConfirm' => ({required Object name}) => '${name} verlässt den Raum. Du kannst mit dem Code wieder beitreten, sofern du den Raum nicht sperrst.',
			'watchTogether.remove' => 'Entfernen',
			'watchTogether.roomSettings' => 'Raumeinstellungen',
			'watchTogether.letEveryoneControl' => 'Alle dürfen die Wiedergabe steuern',
			'watchTogether.lockRoom' => 'Raum sperren',
			'watchTogether.lockRoomDescription' => 'Niemand Neues kann beitreten',
			'watchTogether.leaveRoom' => 'Raum verlassen',
			'watchTogether.leaveRoomQuestion' => 'Raum verlassen?',
			'watchTogether.leaveRoomConfirm' => 'Du kannst mit dem Raumcode wieder beitreten.',
			'watchTogether.leave' => 'Verlassen',
			'watchTogether.endRoom' => 'Raum beenden',
			'watchTogether.endRoomQuestion' => 'Raum beenden?',
			'watchTogether.endRoomConfirm' => 'Damit beendest du den Raum für alle.',
			'watchTogether.end' => 'Beenden',
			'watchTogether.playBlockedTitle' => 'Wiedergabe nicht gestartet',
			'watchTogether.playBlockedDescription' => 'Drücke Play, um mit dem Raum zu schauen.',
			'watchTogether.notices.pressedPlay' => ({required Object name}) => '${name} hat Play gedrückt',
			'watchTogether.notices.playbackStarted' => 'Wiedergabe gestartet',
			'watchTogether.notices.paused' => ({required Object name}) => '${name} hat pausiert',
			'watchTogether.notices.playbackPaused' => 'Wiedergabe pausiert',
			'watchTogether.notices.jumpedTo' => ({required Object name, required Object position}) => '${name} ist zu ${position} gesprungen',
			'watchTogether.notices.roomJumpedTo' => ({required Object position}) => 'Zu ${position} gesprungen',
			'watchTogether.notices.changedSpeed' => ({required Object name, required Object speed}) => '${name} hat die Geschwindigkeit auf ${speed} gesetzt',
			'watchTogether.notices.speedChanged' => ({required Object speed}) => 'Geschwindigkeit auf ${speed} gesetzt',
			'watchTogether.notices.startedMedia' => ({required Object name, required Object title}) => '${name} hat ${title} gestartet',
			'watchTogether.notices.mediaStarted' => ({required Object title}) => 'Jetzt läuft ${title}',
			'watchTogether.notices.stoppedMedia' => ({required Object name}) => '${name} hat das Video gestoppt',
			'watchTogether.notices.mediaStopped' => 'Das Video wurde gestoppt',
			'watchTogether.notices.waitingFor' => ({required Object name}) => 'Warten auf ${name} …',
			'watchTogether.notices.waitingForSomeone' => 'Warte, bis alle aufgeholt haben…',
			'watchTogether.notices.finished' => 'Beendet',
			'watchTogether.notices.hostChangedTo' => ({required Object name}) => '${name} ist jetzt der Host',
			'watchTogether.notices.youAreNowHost' => 'Du bist jetzt der Host',
			_ => null,
		} ?? switch (path) {
			'watchTogether.notices.joined' => ({required Object name}) => '${name} ist beigetreten',
			'watchTogether.notices.left' => ({required Object name}) => '${name} hat die Sitzung verlassen',
			'watchTogether.notices.controlRefused' => 'Nur der Host kann die Wiedergabe steuern',
			'watchTogether.notices.searchFailed' => 'Einige Server konnten das Video des Raums nicht durchsuchen',
			'watchTogether.notices.playBlocked' => 'Drücke Play, um zu starten',
			'watchTogether.notices.shareFailed' => 'Dieses Video konnte nicht mit dem Raum geteilt werden',
			'watchTogether.notices.notShared' => 'Heruntergeladene Videos werden nicht mit dem Raum geteilt',
			'watchTogether.notices.openFailed' => 'Das Video des Raums konnte nicht geöffnet werden',
			'watchTogether.ended.ended' => 'Der Host hat den Raum beendet',
			'watchTogether.ended.kicked' => 'Du wurdest aus dem Raum entfernt',
			'watchTogether.ended.expired' => 'Der Raum ist abgelaufen',
			'watchTogether.ended.replaced' => 'Du bist diesem Raum auf einem anderen Gerät beigetreten',
			'watchTogether.ended.lost' => 'Verbindung zum Raum verloren',
			'watchTogether.errors.invalidCode' => 'Das ist kein Raumcode. Codes bestehen aus 6 Buchstaben und Ziffern ohne 0, 1, I, L oder O.',
			'watchTogether.errors.roomNotFound' => 'Kein Raum hat diesen Code. Er ist möglicherweise beendet.',
			'watchTogether.errors.roomFull' => 'Dieser Raum ist voll.',
			'watchTogether.errors.roomLocked' => 'Der Host hat diesen Raum gesperrt.',
			'watchTogether.errors.relayFull' => 'Watch Together ist gerade ausgelastet. Versuche es später erneut.',
			'watchTogether.errors.unreachable' => 'Das Watch-Together-Relay war nicht erreichbar. Prüfe deine Verbindung.',
			'watchTogether.errors.rateLimited' => 'Zu viele Versuche. Warte einen Moment und versuche es erneut.',
			'watchTogether.errors.clientBlocked' => 'Diese Luroka-Version kann das Relay nicht nutzen. Aktualisiere die App.',
			'watchTogether.errors.forbidden' => 'Nur der Host kann das.',
			'watchTogether.errors.notInRoom' => 'Du bist in keinem Raum.',
			'watchTogether.errors.alreadyInRoom' => 'Du bist bereits in einem Raum.',
			'watchTogether.errors.resumeFailed' => 'Dem Raum konnte nicht wieder beigetreten werden.',
			'watchTogether.errors.unsupported' => 'Das Relay unterstützt das nicht.',
			'watchTogether.errors.generic' => 'Etwas ist schiefgelaufen. Versuche es erneut.',
			'watchTogether.untitledEpisode' => ({required Object number}) => 'Folge ${number}',
			'downloads.title' => 'Downloads',
			'downloads.manage' => 'Verwalten',
			'downloads.tvShows' => 'Serien',
			'downloads.movies' => 'Filme',
			'downloads.music' => 'Musik',
			'downloads.tracksQueued' => ({required Object count}) => '${count} Titel zum Download in Warteschlange',
			'downloads.noDownloads' => 'Noch keine Downloads',
			'downloads.noDownloadsDescription' => 'Heruntergeladene Inhalte werden hier für die Offline-Wiedergabe angezeigt',
			'downloads.downloadNow' => 'Herunterladen',
			'downloads.deleteDownload' => 'Download löschen',
			'downloads.retryDownload' => 'Download wiederholen',
			'downloads.downloadQueued' => 'Download in Warteschlange',
			'downloads.downloadResumed' => 'Download fortgesetzt',
			'downloads.serverErrorBitrate' => 'Serverfehler: Datei überschreitet möglicherweise das Remote-Bitrate-Limit',
			'downloads.storageFull' => 'Die Downloads wurden angehalten, um den freien Speicherplatz zu schützen. Gib Speicherplatz frei oder wähle einen anderen Download-Speicherort und versuche es erneut.',
			'downloads.storageUnavailable' => 'Downloads wurden angehalten, weil der verfügbare Speicherplatz nicht geprüft werden konnte. Prüfe den Download-Speicherort und versuche es erneut.',
			'downloads.episodesQueued' => ({required Object count}) => '${count} Episoden zum Download hinzugefügt',
			'downloads.downloadDeleted' => 'Download gelöscht',
			'downloads.deleteConfirm' => ({required Object title}) => '"${title}" von diesem Gerät löschen?',
			'downloads.deleteCollectionDownloads' => 'Downloads löschen',
			'downloads.deleteCollectionDownloadsConfirm' => ({required Object title}) => 'Alle Downloads in "${title}" von diesem Gerät löschen?',
			'downloads.collectionDownloadsDeleted' => 'Downloads gelöscht',
			'downloads.cancelledDownloadTitle' => 'Abgebrochener Download',
			'downloads.cancelledDownloadMessage' => 'Dieser Download wurde abgebrochen. Was möchtest du tun?',
			'downloads.allEpisodesAlreadyDownloaded' => 'Alle Episoden sind bereits heruntergeladen',
			'downloads.resumeDownload' => 'Download fortsetzen',
			'downloads.cancelledDownload' => 'Abgebrochener Download',
			'downloads.syncingFile' => ({required Object file, required Object status}) => '${file} (${status} wird synchronisiert)',
			'downloads.downloadedFileClickToComplete' => ({required Object file}) => '${file} heruntergeladen — zum Abschließen klicken',
			'downloads.partialDownloadClickToComplete' => 'Teilweise heruntergeladen — zum Abschließen klicken',
			'downloads.deleting' => 'Wird gelöscht …',
			'downloads.deletingWithProgress' => ({required Object title, required Object current, required Object total}) => '${title} wird gelöscht … (${current} von ${total})',
			'downloads.queuedTooltip' => 'In Warteschlange',
			'downloads.queuedFilesTooltip' => ({required Object files}) => 'In Warteschlange: ${files}',
			'downloads.downloadingTooltip' => 'Wird heruntergeladen …',
			'downloads.downloadingFilesTooltip' => ({required Object files}) => '${files} werden heruntergeladen',
			'downloads.noDownloadsTree' => 'Keine Downloads',
			'downloads.pauseAll' => 'Alle pausieren',
			'downloads.resumeAll' => 'Alle fortsetzen',
			'downloads.retryAll' => 'Alle wiederholen',
			'downloads.retryFailed' => 'Fehlgeschlagene Downloads wiederholen',
			'downloads.deleteAll' => 'Alle löschen',
			'downloads.selectVersion' => 'Version auswählen',
			'downloads.allEpisodes' => 'Alle Episoden',
			'downloads.unwatchedOnly' => 'Nur ungesehene',
			'downloads.nextNUnwatched' => ({required Object count}) => 'Nächste ${count} ungesehene',
			'downloads.customAmount' => 'Eigene Anzahl...',
			'downloads.includeSpecials' => 'Sonderfolgen einschließen',
			'downloads.howManyEpisodes' => 'Wie viele Episoden?',
			'downloads.invalidEpisodeCount' => 'Gib eine gültige Episodenanzahl ein.',
			'downloads.keepSynced' => 'Synchronisiert halten',
			'downloads.downloadOnce' => 'Einmal herunterladen',
			'downloads.keepNUnwatched' => ({required Object count}) => '${count} ungesehene behalten',
			'downloads.editSyncRule' => 'Synchronisierungsregel bearbeiten',
			'downloads.removeSyncRule' => 'Synchronisierungsregel entfernen',
			'downloads.removeSyncRuleConfirm' => ({required Object title}) => 'Synchronisierung von „${title}“ beenden? Heruntergeladene Episoden werden behalten.',
			'downloads.removeListSyncRuleConfirm' => ({required Object title}) => '„${title}“ nicht mehr synchronisieren?',
			'downloads.deleteSyncRuleDownloads' => 'Zugehörige Downloads ebenfalls löschen',
			'downloads.deleteSyncRuleDownloadsDescription' => 'Downloads, die von einer anderen Synchronisierungsregel oder einem Profil verwendet werden, bleiben erhalten.',
			'downloads.syncRuleCreated' => ({required Object count}) => 'Synchronisierungsregel erstellt – ${count} ungesehene Episoden werden behalten',
			'downloads.syncRuleUpdated' => 'Synchronisierungsregel aktualisiert',
			'downloads.syncRuleRemoved' => 'Synchronisierungsregel entfernt',
			'downloads.syncRuleAndDownloadsRemoved' => 'Synchronisierungsregel und zugehörige Downloads entfernt',
			'downloads.syncRuleCleanupBusy' => 'Synchronisierungsregeln werden gerade aktualisiert. Versuche es gleich noch einmal.',
			'downloads.syncRuleCleanupUnavailable' => 'Zugehörige Downloads konnten nicht sicher ermittelt werden. Verbinde den Server erneut und versuche es noch einmal, oder entferne die Regel, ohne die Downloads zu löschen.',
			'downloads.syncedNewEpisodes' => ({required Object count, required Object title}) => '${count} neue Episoden für ${title} synchronisiert',
			'downloads.activeSyncRules' => 'Synchronisierungsregeln',
			'downloads.noSyncRules' => 'Keine Synchronisierungsregeln',
			'downloads.manageSyncRule' => 'Synchronisierung verwalten',
			'downloads.editEpisodeCount' => 'Episodenanzahl',
			'downloads.editSyncFilter' => 'Synchronisierungsfilter',
			'downloads.syncAllItems' => 'Alle Elemente synchronisieren',
			'downloads.syncUnwatchedItems' => 'Ungesehene Elemente synchronisieren',
			'downloads.syncRuleServerContext' => ({required Object server, required Object status}) => 'Server: ${server} • ${status}',
			'downloads.syncRuleAvailable' => 'Verfügbar',
			'downloads.syncRuleOffline' => 'Offline',
			'downloads.syncRuleSignInRequired' => 'Anmeldung erforderlich',
			'downloads.syncRuleAccessDenied' => 'Zugriff verweigert',
			'downloads.syncRuleNotAvailableForProfile' => 'Für das aktuelle Profil nicht verfügbar',
			'downloads.syncRuleUnknownServer' => 'Unbekannter Server',
			'downloads.syncRuleListCreated' => 'Synchronisierungsregel erstellt',
			'downloads.backgroundWarning.bannerBlocked' => 'Downloads werden gestoppt, wenn du die App verlässt',
			'downloads.backgroundWarning.bannerDegraded' => 'Downloads im Hintergrund sind möglicherweise eingeschränkt',
			'downloads.backgroundWarning.bannerAction' => 'Details',
			'downloads.backgroundWarning.sheetTitle' => 'Downloads im Hintergrund sind blockiert',
			'downloads.backgroundWarning.sheetTitleDegraded' => 'Downloads im Hintergrund sind möglicherweise eingeschränkt',
			'downloads.backgroundWarning.sheetIntro' => 'Android verhindert, dass Luroka zuverlässig im Hintergrund herunterlädt.',
			'downloads.backgroundWarning.sheetIntroDegraded' => 'Dein Gerät schränkt ein, wann Luroka im Hintergrund herunterladen kann.',
			'downloads.backgroundWarning.reasonBackgroundRestricted' => 'Die Hintergrundnutzung von Luroka ist eingeschränkt. Stelle die Akku- oder Hintergrundnutzung auf „Uneingeschränkt“.',
			'downloads.backgroundWarning.reasonStandbyRestricted' => 'Android hat Luroka in einen eingeschränkten Standby-Modus versetzt. Stelle die Akkunutzung auf „Uneingeschränkt“.',
			'downloads.backgroundWarning.reasonDownloadChannelBlocked' => 'Download-Benachrichtigungen sind deaktiviert. Fortschritt und Steuerelemente sind daher möglicherweise nicht verfügbar.',
			'downloads.backgroundWarning.reasonNotificationsDisabled' => 'Benachrichtigungen sind deaktiviert. Ab Android 13 sind sie für lange Downloads im Hintergrund erforderlich.',
			'downloads.backgroundWarning.reasonDataSaver' => 'Der Datensparmodus ist aktiviert und blockiert Downloads im Hintergrund über mobile Daten. Über Wi-Fi sollten Downloads weiterhin funktionieren.',
			'downloads.backgroundWarning.reasonOemUnknown' => 'Downloads wurden wiederholt gestoppt, während Luroka im Hintergrund war. Prüfe die Einstellungen zur Akku- oder Hintergrundnutzung von Luroka.',
			'downloads.backgroundWarning.openSettings' => 'Einstellungen öffnen',
			'downloads.backgroundWarning.stillNotWorking' => 'Gerätespezifische Hilfe',
			'downloads.backgroundWarning.stillNotWorkingDescription' => 'Sieh dir die Schritte für dein Gerät an oder sende bei anhaltendem Problem ein Protokoll über Einstellungen › Protokolle anzeigen.',
			'downloads.backgroundWarning.dialogTitle' => 'Downloads werden möglicherweise nicht abgeschlossen',
			'downloads.backgroundWarning.dialogDownloadAnyway' => 'Trotzdem herunterladen',
			'downloads.backgroundWarning.dialogFixFirst' => 'Zuerst beheben',
			'downloads.backgroundWarning.statusTile' => 'Downloads im Hintergrund',
			'downloads.backgroundWarning.statusOk' => 'Ausführung im Hintergrund erlaubt',
			'downloads.backgroundWarning.statusBlocked' => 'Durch Systemeinstellungen blockiert',
			'downloads.backgroundWarning.statusDegraded' => 'Durch Systemeinstellungen eingeschränkt',
			'downloads.backgroundWarning.statusUnknown' => 'Noch nicht geprüft',
			'downloads.backgroundWarning.settingsUnavailable' => 'Die Systemeinstellungen konnten auf diesem Gerät nicht geöffnet werden',
			'downloads.backgroundWarning.linkUnavailable' => 'dontkillmyapp.com konnte auf diesem Gerät nicht geöffnet werden',
			'downloads.options' => 'Download-Optionen',
			'downloads.groupings.library' => 'Mediathek',
			'downloads.groupings.collections' => 'Sammlungen',
			'downloads.unknownLibrary' => 'Unbekannte Mediathek',
			'downloads.unknownShow' => 'Unbekannte Serie',
			'downloads.unknownSeason' => 'Unbekannte Staffel',
			'downloads.unknownAlbum' => 'Unbekanntes Album',
			'downloads.completedOfTotal' => ({required Object completed, required Object total}) => '${completed}/${total} abgeschlossen',
			'downloads.errorFileNotFound' => 'Datei nicht gefunden (404)',
			'downloads.errorDownloadNotAllowed' => 'Download vom Server nicht erlaubt (403)',
			'downloads.errorDownloadFailed' => 'Download fehlgeschlagen',
			'downloads.errorDownloadFailedWithReason' => ({required Object reason}) => 'Download fehlgeschlagen: ${reason}',
			'downloads.errorHttpStatus' => ({required Object status}) => 'Download fehlgeschlagen (HTTP ${status})',
			'downloads.errorPostProcessing' => ({required Object reason}) => 'Nachbearbeitung fehlgeschlagen: ${reason}',
			'downloads.reasonFileNotSaved' => 'die Datei konnte auf diesem Gerät nicht gespeichert werden',
			'downloads.reasonCannotResume' => 'der unvollständige Download konnte nicht fortgesetzt werden',
			'downloads.reasonDeviceStorageFull' => 'auf diesem Gerät ist kein Speicherplatz mehr frei',
			'downloads.notificationDownloading' => 'Wird heruntergeladen …',
			'downloads.notificationComplete' => 'Download abgeschlossen',
			'downloads.notificationPaused' => 'Download pausiert',
			'shaders.title' => 'Shader',
			'shaders.noShaderDescription' => 'Keine Videoverbesserung',
			'shaders.nvscalerDescription' => 'NVIDIA-Bildskalierung für schärferes Video',
			'shaders.artcnnVariantNeutral' => 'Neutral',
			'shaders.artcnnVariantDenoise' => 'Rauschreduzierung',
			'shaders.artcnnVariantDenoiseSharpen' => 'Rauschreduzierung + Schärfen',
			'shaders.qualityFast' => 'Schnell',
			'shaders.qualityHQ' => 'Hohe Qualität',
			'shaders.mode' => 'Modus',
			'shaders.importShader' => 'Shader importieren',
			'shaders.customShaderDescription' => 'Benutzerdefinierter GLSL-Shader',
			'shaders.shaderImported' => 'Shader importiert',
			'shaders.shaderImportFailed' => 'Shader konnte nicht importiert werden',
			'shaders.deleteShader' => 'Shader löschen',
			'shaders.deleteShaderConfirm' => ({required Object name}) => '"${name}" löschen?',
			'companionRemote.title' => 'Companion-Fernbedienung',
			'companionRemote.connectedTo' => ({required Object name}) => 'Verbunden mit ${name}',
			'companionRemote.unknownDevice' => 'Unbekanntes Gerät',
			'companionRemote.session.startingServer' => 'Remote-Server wird gestartet...',
			'companionRemote.session.hostAddress' => 'Host-Adresse',
			'companionRemote.session.connected' => 'Verbunden',
			'companionRemote.session.serverRunning' => 'Remote-Server aktiv',
			'companionRemote.session.serverStopped' => 'Remote-Server gestoppt',
			'companionRemote.session.serverRunningDescription' => 'Mobilgeräte in deinem Netzwerk können sich mit dieser App verbinden',
			'companionRemote.session.serverStoppedDescription' => 'Starte den Server, um Mobilgeräten die Verbindung zu ermöglichen',
			'companionRemote.session.usePhoneToControl' => 'Verwende dein Mobilgerät, um diese App zu steuern',
			'companionRemote.session.startServer' => 'Server starten',
			'companionRemote.session.stopServer' => 'Server stoppen',
			'companionRemote.session.minimize' => 'Minimieren',
			'companionRemote.session.manualAddressHint' => 'Manuelle Verbindungsadresse:',
			'companionRemote.pairing.discoveryDescription' => 'Luroka-Geräte mit demselben Plex-Konto erscheinen hier',
			'companionRemote.pairing.hostAddressHint' => '192.168.1.100:48632',
			'companionRemote.pairing.connecting' => 'Verbinden...',
			'companionRemote.pairing.searchingForDevices' => 'Suche nach Geräten...',
			'companionRemote.pairing.noDevicesFound' => 'Keine Geräte in deinem Netzwerk gefunden',
			'companionRemote.pairing.noDevicesHint' => 'Öffne Luroka auf dem Desktop und nutze dasselbe WLAN',
			'companionRemote.pairing.availableDevices' => 'Verfügbare Geräte',
			'companionRemote.pairing.manualConnection' => 'Manuelle Verbindung',
			'companionRemote.pairing.cryptoInitFailed' => 'Sichere Verbindung konnte nicht gestartet werden. Melde dich zuerst bei Plex an.',
			'companionRemote.pairing.validationHostRequired' => 'Bitte Host-Adresse eingeben',
			'companionRemote.pairing.validationHostFormat' => 'Format muss IP:Port sein (z. B. 192.168.1.100:48632)',
			'companionRemote.pairing.connectionTimedOut' => 'Zeitüberschreitung bei der Verbindung. Nutze auf beiden Geräten dasselbe Netzwerk.',
			'companionRemote.pairing.sessionNotFound' => 'Gerät nicht gefunden. Stelle sicher, dass Luroka auf dem Host läuft.',
			'companionRemote.pairing.authFailed' => 'Authentifizierung fehlgeschlagen. Beide Geräte benötigen dasselbe Plex-Konto.',
			'companionRemote.pairing.failedToConnect' => ({required Object error}) => 'Verbindung fehlgeschlagen: ${error}',
			'companionRemote.remote.disconnectConfirm' => 'Möchtest du die Verbindung zur Fernsteuerungssitzung trennen?',
			'companionRemote.remote.reconnecting' => 'Verbindung wird wiederhergestellt...',
			'companionRemote.remote.attemptOf' => ({required Object current}) => 'Versuch ${current} von 5',
			'companionRemote.remote.retryNow' => 'Jetzt wiederholen',
			'companionRemote.remote.tabRemote' => 'Fernbedienung',
			'companionRemote.remote.tabPlay' => 'Wiedergabe',
			'companionRemote.remote.tabMore' => 'Mehr',
			'companionRemote.remote.menu' => 'Menü',
			'companionRemote.remote.tabNavigation' => 'Tab-Navigation',
			'companionRemote.remote.tabDiscover' => 'Entdecken',
			'companionRemote.remote.tabLibraries' => 'Mediatheken',
			'companionRemote.remote.tabSearch' => 'Suche',
			'companionRemote.remote.tabDownloads' => 'Downloads',
			'companionRemote.remote.tabSettings' => 'Einstellungen',
			'companionRemote.remote.previous' => 'Zurück',
			'companionRemote.remote.playPause' => 'Wiedergabe/Pause',
			'companionRemote.remote.next' => 'Weiter',
			'companionRemote.remote.seekBack' => 'Zurückspulen',
			'companionRemote.remote.stop' => 'Stopp',
			'companionRemote.remote.seekForward' => 'Vorspulen',
			'companionRemote.remote.volume' => 'Lautstärke',
			'companionRemote.remote.volumeDown' => 'Leiser',
			'companionRemote.remote.volumeUp' => 'Lauter',
			'companionRemote.remote.fullscreen' => 'Vollbild',
			'companionRemote.remote.subtitles' => 'Untertitel',
			'companionRemote.remote.audio' => 'Audio',
			'companionRemote.remote.searchHint' => 'Auf dem Desktop suchen …',
			'companionRemote.errors.noNetworkInterface' => 'Keine Netzwerkschnittstelle gefunden',
			'companionRemote.errors.authenticationFailed' => 'Authentifizierung fehlgeschlagen',
			'companionRemote.errors.serverStartFailed' => ({required Object error}) => 'Remote-Server konnte nicht gestartet werden: ${error}',
			'companionRemote.errors.commandFailed' => ({required Object error}) => 'Remote-Befehl konnte nicht gesendet werden: ${error}',
			'companionRemote.errors.joinTimedOut' => 'Zeitüberschreitung beim Beitreten zur Sitzung',
			'companionRemote.errors.failedToConnectAnyAddress' => 'Keine Verbindung zu einer Adresse möglich',
			'companionRemote.errors.connectionLostAfterAttempts' => ({required Object attempts}) => 'Verbindung nach ${attempts} Versuchen verloren',
			'companionRemote.errors.connectionLost' => 'Verbindung verloren',
			'companionRemote.closedBeforeAuth' => 'Die Verbindung wurde vor der Authentifizierung geschlossen',
			'videoSettings.playbackSpeed' => 'Wiedergabegeschwindigkeit',
			'videoSettings.normalSpeed' => 'Normal',
			'videoSettings.sleepTimerActive' => ({required Object duration}) => 'Aktiv (${duration})',
			'videoSettings.zoom' => 'Zoom',
			'videoSettings.sleepTimer' => 'Schlaftimer',
			'videoSettings.audioSync' => 'Audio-Synchronisation',
			'videoSettings.subtitleSync' => 'Untertitel-Synchronisation',
			'videoSettings.hdr' => 'HDR',
			'videoSettings.hdrUnsupported' => 'HDR ist hier nicht verfügbar – dieser Desktop-Compositor oder Videoausgang kann es nicht übertragen.',
			'videoSettings.hdrToneMapping' => 'HDR-Tone-Mapping',
			'videoSettings.hdrToneMappingCompositor' => 'Compositor',
			'videoSettings.hdrToneMappingCompositorDescription' => 'Die HDR-Metadaten der Quelle durchreichen und vom Desktop-Compositor anpassen lassen.',
			'videoSettings.hdrToneMappingPlayer' => 'Player',
			'videoSettings.hdrToneMappingPlayerDescription' => 'Im Player an die maximale Helligkeit des Displays anpassen und das Ergebnis anschließend an den Compositor melden.',
			'videoSettings.hdrToneMappingFailed' => 'Das HDR-Tone-Mapping konnte nicht geändert werden – der vorherige Modus ist weiterhin aktiv.',
			'videoSettings.audioOutput' => 'Audioausgabe',
			'videoSettings.performanceOverlay' => 'Leistungsanzeige',
			'videoSettings.audioOutputDolbyAtmos' => 'Dolby Atmos',
			'videoSettings.audioOutputDolbyAudio' => 'Dolby Audio',
			'videoSettings.audioOutputSurround' => 'Surround',
			'videoSettings.audioOutputSpatial' => 'Räumliches Audio',
			'videoSettings.audioOutputStereo' => 'Stereo',
			'videoSettings.audioNormalization' => 'Lautstärke normalisieren',
			'videoSettings.audioNormalizationDisablesPassthrough' => 'Dekodiert Audio zu PCM; Durchleitung ist aus, solange dies aktiv ist',
			'performanceOverlay.color' => 'Farbe',
			'performanceOverlay.performance' => 'Leistung',
			'performanceOverlay.buffer' => 'Puffer',
			'performanceOverlay.app' => 'App',
			'performanceOverlay.decoder' => 'Decoder',
			'performanceOverlay.rawDecoder' => 'Raw-Decoder',
			'performanceOverlay.tunneling' => 'Tunneling',
			'performanceOverlay.passthrough' => 'Durchleitung',
			'performanceOverlay.aspect' => 'Seitenverhältnis',
			'performanceOverlay.rotation' => 'Drehung',
			'performanceOverlay.dvSource' => 'DV-Quelle',
			'performanceOverlay.dvPath' => 'DV-Pfad',
			'performanceOverlay.dvRouteDecoder' => 'Dolby-Vision-Decoder',
			'performanceOverlay.dvRouteDecoderP81' => 'Dolby-Vision-Decoder (P7→8.1)',
			'performanceOverlay.dvRouteBaseLayer' => 'Basisebene',
			'performanceOverlay.dvRouteBaseLayerHdr10' => 'HDR10-Basisebene',
			'performanceOverlay.dvRouteBaseLayerHlg' => 'HLG-Basisebene',
			'performanceOverlay.dvRouteBaseLayerSdr' => 'SDR-Basisebene',
			'performanceOverlay.dvRouteReshaped' => 'RPU umgeformt (gpu-next)',
			'performanceOverlay.p7Conversion' => 'P7-Konv.',
			'performanceOverlay.sampleRate' => 'Abtastrate',
			'performanceOverlay.pixelFormat' => 'Pixelformat',
			'performanceOverlay.hwFormat' => 'HW-Format',
			'performanceOverlay.matrix' => 'Matrix',
			'performanceOverlay.primaries' => 'Primärfarben',
			'performanceOverlay.transfer' => 'Transfer',
			'performanceOverlay.renderFps' => 'Render-FPS',
			'performanceOverlay.displayFps' => 'Display-FPS',
			'performanceOverlay.avSync' => 'A/V-Sync',
			'performanceOverlay.dropped' => 'Verworfen',
			'performanceOverlay.dvRpus' => 'DV-RPUs',
			'performanceOverlay.dvRpuAverage' => 'DV-RPU Ø',
			'performanceOverlay.dvSampleAverage' => 'DV-Sample Ø',
			'performanceOverlay.maxLuma' => 'Max. Luma',
			'performanceOverlay.minLuma' => 'Min. Luma',
			'performanceOverlay.maxCll' => 'MaxCLL',
			'performanceOverlay.maxFall' => 'MaxFALL',
			'performanceOverlay.cacheUsed' => 'Cache genutzt',
			'performanceOverlay.cacheLimit' => 'Cache-Limit',
			'performanceOverlay.speed' => 'Geschwindigkeit',
			'performanceOverlay.player' => 'Player',
			'performanceOverlay.memory' => 'Speicher',
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
			'performanceOverlay.dvRpuFailed' => ({required Object converted, required Object failures}) => '${converted} (${failures} fehlgeschlagen)',
			'externalPlayer.title' => 'Externer Player',
			'externalPlayer.useExternalPlayer' => 'Externen Player verwenden',
			'externalPlayer.useExternalPlayerDescription' => 'Videos in einer anderen App öffnen',
			'externalPlayer.selectPlayer' => 'Player auswählen',
			'externalPlayer.customPlayers' => 'Benutzerdefinierte Player',
			'externalPlayer.systemDefault' => 'Systemstandard',
			'externalPlayer.addCustomPlayer' => 'Benutzerdefinierten Player hinzufügen',
			'externalPlayer.playerName' => 'Playername',
			'externalPlayer.playerNameHint' => 'Mein Player',
			'externalPlayer.playerCommand' => 'Befehl',
			'externalPlayer.playerPackage' => 'Paketname',
			'externalPlayer.playerUrlScheme' => 'URL-Schema',
			'externalPlayer.off' => 'Aus',
			'externalPlayer.launchFailed' => 'Externer Player konnte nicht geöffnet werden',
			'externalPlayer.appNotInstalled' => ({required Object name}) => '${name} ist nicht installiert',
			'externalPlayer.playInExternalPlayer' => 'In externem Player abspielen',
			'metadataEdit.editMetadata' => 'Bearbeiten...',
			'metadataEdit.screenTitle' => 'Metadaten bearbeiten',
			'metadataEdit.basicInfo' => 'Grundinformationen',
			'metadataEdit.artwork' => 'Grafiken',
			'metadataEdit.advancedSettings' => 'Erweiterte Einstellungen',
			'metadataEdit.title' => 'Titel',
			'metadataEdit.sortTitle' => 'Sortiertitel',
			'metadataEdit.originalTitle' => 'Originaltitel',
			'metadataEdit.releaseDate' => 'Erscheinungsdatum',
			'metadataEdit.contentRating' => 'Altersfreigabe',
			'metadataEdit.studio' => 'Studio',
			'metadataEdit.tagline' => 'Slogan',
			'metadataEdit.summary' => 'Zusammenfassung',
			'metadataEdit.poster' => 'Poster',
			'metadataEdit.background' => 'Hintergrund',
			'metadataEdit.logo' => 'Logo',
			'metadataEdit.squareArt' => 'Quadratisches Bild',
			'metadataEdit.selectPoster' => 'Poster auswählen',
			'metadataEdit.selectBackground' => 'Hintergrund auswählen',
			'metadataEdit.selectLogo' => 'Logo auswählen',
			'metadataEdit.selectSquareArt' => 'Quadratisches Bild auswählen',
			'metadataEdit.fromUrl' => 'Über URL',
			'metadataEdit.uploadFile' => 'Datei hochladen',
			'metadataEdit.enterImageUrl' => 'Bild-URL eingeben',
			'metadataEdit.imageUrl' => 'Bild-URL',
			'metadataEdit.metadataUpdated' => 'Metadaten aktualisiert',
			'metadataEdit.metadataUpdateFailed' => 'Metadaten konnten nicht aktualisiert werden',
			'metadataEdit.artworkUpdated' => 'Grafiken aktualisiert',
			'metadataEdit.artworkUpdateFailed' => 'Grafiken konnten nicht aktualisiert werden',
			'metadataEdit.noArtworkAvailable' => 'Keine Grafiken verfügbar',
			'metadataEdit.artworkOption' => ({required Object index}) => 'Grafikoption ${index}',
			'metadataEdit.selectedArtworkOption' => ({required Object index}) => 'Grafikoption ${index}, ausgewählt',
			'metadataEdit.notSet' => 'Nicht festgelegt',
			'metadataEdit.libraryDefault' => 'Mediatheksstandard',
			'metadataEdit.accountDefault' => 'Kontostandard',
			'metadataEdit.seriesDefault' => 'Serienstandard',
			'metadataEdit.episodeSorting' => 'Episodensortierung',
			'metadataEdit.oldestFirst' => 'Älteste zuerst',
			'metadataEdit.newestFirst' => 'Neueste zuerst',
			'metadataEdit.keep' => 'Behalten',
			'metadataEdit.allEpisodes' => 'Alle Episoden',
			'metadataEdit.latestEpisodes' => ({required Object count}) => '${count} neueste Episoden',
			'metadataEdit.latestEpisode' => 'Neueste Episode',
			'metadataEdit.episodesAddedPastDays' => ({required Object count}) => 'Episoden der letzten ${count} Tage',
			'metadataEdit.deleteAfterPlaying' => 'Episoden nach Wiedergabe löschen',
			'metadataEdit.never' => 'Nie',
			'metadataEdit.afterADay' => 'Nach einem Tag',
			'metadataEdit.afterAWeek' => 'Nach einer Woche',
			'metadataEdit.afterAMonth' => 'Nach einem Monat',
			'metadataEdit.onNextRefresh' => 'Bei nächster Aktualisierung',
			'metadataEdit.seasons' => 'Staffeln',
			'metadataEdit.show' => 'Anzeigen',
			'metadataEdit.hide' => 'Ausblenden',
			'metadataEdit.episodeOrdering' => 'Episodenreihenfolge',
			'metadataEdit.tmdbAiring' => 'The Movie Database (Ausstrahlung)',
			'metadataEdit.tvdbAiring' => 'TheTVDB (Ausstrahlung)',
			'metadataEdit.tvdbAbsolute' => 'TheTVDB (absolut)',
			'metadataEdit.metadataLanguage' => 'Metadaten-Sprache',
			'metadataEdit.useOriginalTitle' => 'Originaltitel verwenden',
			'metadataEdit.preferredAudioLanguage' => 'Bevorzugte Audiosprache',
			'metadataEdit.preferredSubtitleLanguage' => 'Bevorzugte Untertitelsprache',
			'metadataEdit.subtitleMode' => 'Automatische Untertitelauswahl',
			'metadataEdit.manuallySelected' => 'Manuell ausgewählt',
			'metadataEdit.shownWithForeignAudio' => 'Bei fremdsprachigem Audio anzeigen',
			'metadataEdit.alwaysEnabled' => 'Immer aktiviert',
			'metadataEdit.tags' => 'Tags',
			'metadataEdit.addTag' => 'Tag hinzufügen',
			'metadataEdit.genre' => 'Genre',
			'metadataEdit.director' => 'Regisseur',
			'metadataEdit.writer' => 'Autor',
			'metadataEdit.producer' => 'Produzent',
			'metadataEdit.country' => 'Land',
			'metadataEdit.collection' => 'Sammlung',
			'metadataEdit.label' => 'Label',
			'metadataEdit.quickTag' => 'Schnell-Tag...',
			'matchScreen.match' => 'Zuordnen...',
			'matchScreen.fixMatch' => 'Zuordnung korrigieren...',
			'matchScreen.unmatch' => 'Zuordnung aufheben',
			'matchScreen.unmatchConfirm' => 'Diese Zuordnung löschen? Plex behandelt sie als nicht zugeordnet, bis sie neu zugeordnet wird.',
			'matchScreen.unmatchSuccess' => 'Zuordnung aufgehoben',
			'matchScreen.unmatchFailed' => 'Zuordnung konnte nicht aufgehoben werden',
			'matchScreen.matchApplied' => 'Zuordnung angewendet',
			'matchScreen.matchFailed' => 'Zuordnung konnte nicht angewendet werden',
			'matchScreen.titleHint' => 'Titel',
			'matchScreen.yearHint' => 'Jahr',
			'matchScreen.search' => 'Suchen',
			'matchScreen.noMatchesFound' => 'Keine Treffer gefunden',
			'serverTasks.title' => 'Serveraufgaben',
			'serverTasks.failedToLoad' => 'Aufgaben konnten nicht geladen werden',
			'serverTasks.noTasks' => 'Keine laufenden Aufgaben',
			'trakt.title' => 'Trakt',
			'trakt.connected' => 'Verbunden',
			'trakt.connectedAs' => ({required Object username}) => 'Verbunden als @${username}',
			'trakt.disconnectConfirm' => 'Trakt-Konto trennen?',
			'trakt.disconnectConfirmBody' => 'Luroka sendet keine Ereignisse mehr an Trakt. Du kannst jederzeit erneut verbinden.',
			'trakt.scrobble' => 'Echtzeit-Scrobbling',
			'trakt.scrobbleDescription' => 'Sende Play-, Pause- und Stopp-Ereignisse während der Wiedergabe an Trakt.',
			'trakt.watchedSync' => 'Gesehen-Status synchronisieren',
			'trakt.watchedSyncDescription' => 'Wenn du Inhalte in Luroka als gesehen markierst, werden sie auch auf Trakt markiert.',
			'seerr.title' => 'Seerr',
			'seerr.connectTitle' => 'Seerr verbinden',
			'seerr.serverUrl' => 'Server-URL',
			'seerr.serverUrlHelper' => 'Die Adresse deiner Seerr-Instanz',
			'seerr.checkServer' => 'Weiter',
			'seerr.signInWithJellyfin' => 'Mit Jellyfin anmelden',
			'seerr.signInWithEmby' => 'Mit Emby anmelden',
			'seerr.signInWithLocal' => 'Lokales Konto verwenden',
			'seerr.email' => 'E-Mail',
			'seerr.noSignInMethods' => 'Diese Seerr-Instanz bietet keine von Luroka unterstützte Anmeldemethode.',
			'seerr.instance' => 'Instanz',
			'seerr.disconnectConfirm' => 'Seerr trennen?',
			'seerr.disconnectConfirmBody' => 'Luroka vergisst diese Seerr-Instanz. Jederzeit erneut verbinden.',
			'seerr.request' => 'Anfragen',
			'seerr.request4k' => 'In 4K anfragen',
			'seerr.seasons' => 'Staffeln',
			'seerr.allSeasons' => 'Alle Staffeln',
			'seerr.advancedOptions' => 'Erweitert',
			'seerr.destinationServer' => 'Zielserver',
			'seerr.qualityProfile' => 'Qualitätsprofil',
			'seerr.rootFolder' => 'Stammordner',
			'seerr.languageProfile' => 'Sprachprofil',
			'seerr.tags' => 'Tags',
			'seerr.noTags' => 'Keine Tags',
			'seerr.defaultOption' => ({required Object name}) => '${name} (Standard)',
			'seerr.animeNote' => 'Diese Serie ist ein Anime.',
			'seerr.requestSubmitted' => 'Anfrage gesendet',
			'seerr.requestFailed' => ({required Object error}) => 'Anfrage fehlgeschlagen: ${error}',
			'seerr.requestsLoadFailed' => 'Anfrageoptionen konnten nicht geladen werden',
			'seerr.nothingToRequest' => 'Alles ist bereits verfügbar oder angefragt.',
			'seerr.statusAvailable' => 'Verfügbar',
			'seerr.statusPartiallyAvailable' => 'Teilweise verfügbar',
			'seerr.statusRequested' => 'Angefragt',
			'seerr.statusProcessing' => 'Wird verarbeitet',
			'seerr.statusBlocklisted' => 'Auf der Sperrliste',
			'seerr.couldNotReach' => ({required Object url, required Object error}) => '${url} nicht erreichbar: ${error}',
			'seerr.noInstanceAtUrl' => ({required Object url, required Object status}) => 'Keine Seerr-Instanz unter ${url} (HTTP ${status})',
			'seerr.behindAuthProxy' => 'Ein authentifizierender Reverse-Proxy (SSO oder HTTP-Auth) hat anstelle von Seerr geantwortet. Luroka kann sich nicht dadurch anmelden: Lass den Pfad /api/v1 von Seerr den Proxy für diese App umgehen, oder verwende eine Adresse, die Seerr direkt erreicht.',
			'seerr.invalidUrl' => 'Gib eine Serveradresse ein, z. B. https://seerr.example.com',
			'seerr.quickConnectUnsupported' => 'Diese Seerr-Instanz unterstützt Quick Connect nicht. Dafür ist Seerr 3.4 oder neuer erforderlich.',
			'seerr.notInitialized' => 'Die Ersteinrichtung dieser Seerr-Instanz wurde noch nicht abgeschlossen',
			'seerr.noPlexTokenForReauth' => 'Für die erneute Anmeldung ist kein Plex-Token verfügbar',
			'seerr.noStoredCredentials' => 'Für die erneute Anmeldung sind keine gespeicherten Anmeldedaten verfügbar',
			'seerr.signInRejected' => 'Die Anmeldung wurde abgelehnt',
			'seerr.noSessionCookie' => 'Seerr hat kein Sitzungscookie ausgestellt',
			'seerr.freshCookieRejected' => 'Seerr hat das neue Sitzungscookie abgelehnt',
			'seerr.noUserInformation' => 'Seerr hat keine Benutzerinformationen zurückgegeben',
			'seerr.sessionRejectedAfterReauth' => 'Die Sitzung wurde nach der erneuten Anmeldung abgelehnt',
			'seerr.permissionDenied' => 'Seerr hat diese Aktion abgelehnt: Dein Konto hat nicht mehr die erforderliche Berechtigung',
			'seerr.permissionRevoked' => 'Du hast keine Berechtigung mehr, dies anzufragen',
			'services.title' => 'Dienste',
			'services.hubSubtitle' => 'Wiedergabefortschritt synchronisieren und neue Titel anfragen.',
			'services.discoverySection' => 'Entdecken & Anfragen',
			'services.trackingSection' => 'Sehverlauf & Listen',
			'services.seerrDescription' => 'Finde Filme und Serien auf deinem Seerr-Server und stelle Anfragen.',
			'services.tmdbDescription' => 'Entdecke Filme und Serien, Poster, Bewertungen und Details.',
			'services.traktDescription' => 'Verfolge Filme und Serien, synchronisiere den Gesehen-Status und verwalte deine Merkliste.',
			'services.malDescription' => 'Halte deine Anime-Liste und deinen Sehverlauf synchron.',
			'services.anilistDescription' => 'Verfolge Anime und synchronisiere deinen Fortschritt mit AniList.',
			'services.simklDescription' => 'Verfolge deine Filme, Serien und Anime mit Simkl.',
			'services.mdblistDescription' => 'Verbinde deine MDBList-Listen und Filmbewertungen.',
			'services.connectionIntro' => ({required Object service}) => 'Verbinde ${service} mit deinem aktuellen Luroka-Profil. Hier kannst du die Verbindung und ihre Optionen jederzeit verwalten.',
			'services.connectService' => ({required Object service}) => '${service} verbinden',
			'services.seerrConnectDescription' => 'Verbinde deinen Seerr-Server, um Filme und Serien in Luroka zu entdecken und anzufragen.',
			'services.seerrServerStep' => 'Gib die Adresse ein, mit der du Seerr öffnest. Wir prüfen, welche Anmeldemethoden dein Server unterstützt.',
			'services.seerrSignInStep' => 'Wähle eine Anmeldemethode, die dein Server unterstützt.',
			'services.integrations' => 'Integrationen',
			'services.notConnected' => 'Nicht verbunden',
			'services.connectedAs' => ({required Object username}) => 'Verbunden als @${username}',
			'services.scrobble' => 'Fortschritt automatisch verfolgen',
			'services.scrobbleDescription' => 'Aktualisiere deine Liste, wenn du eine Folge oder einen Film beendest.',
			'services.disconnectConfirm' => ({required Object service}) => '${service} trennen?',
			'services.disconnectConfirmBody' => ({required Object service}) => 'Luroka aktualisiert ${service} nicht mehr. Jederzeit erneut verbinden.',
			'services.connectFailed' => ({required Object service}) => 'Verbindung zu ${service} fehlgeschlagen. Versuche es erneut.',
			'services.names.mal' => 'MyAnimeList',
			'services.names.anilist' => 'AniList',
			'services.names.simkl' => 'Simkl',
			'services.names.seerr' => 'Seerr',
			'services.names.mdblist' => 'MDBList',
			'services.simklReconnect.title' => 'Simkl wieder verbinden',
			'services.simklReconnect.subtitle' => 'Simkl stellt die Anmeldemethode dieser Verbindung ein. Die Wiederherstellung öffnet simkl.com, um Luroka zu bestätigen — Luroka sieht nie dein Passwort. Deine Wiedergabe-Historie bleibt auf Simkl.',
			'services.deviceCode.title' => ({required Object service}) => 'Luroka auf ${service} aktivieren',
			'services.deviceCode.instructions' => 'Scanne den QR-Code oder rufe die unten angegebene Adresse auf und gib diesen Code ein:',
			'services.deviceCode.openToActivate' => ({required Object service}) => '${service} zum Aktivieren öffnen',
			_ => null,
		} ?? switch (path) {
			'services.deviceCode.copyCode' => 'Aktivierungscode kopieren',
			'services.deviceCode.waitingForAuthorization' => 'Warte auf Autorisierung…',
			'services.deviceCode.codeCopied' => 'Code kopiert',
			'services.oauthProxy.title' => ({required Object service}) => 'Bei ${service} anmelden',
			'services.oauthProxy.body' => 'Scanne diesen QR-Code oder öffne die URL auf einem beliebigen Gerät.',
			'services.oauthProxy.openToSignIn' => ({required Object service}) => '${service} zum Anmelden öffnen',
			'services.pendingAuth.copyUrl' => 'Anmelde-URL kopieren',
			'services.pendingAuth.urlCopied' => 'URL kopiert',
			'services.libraryFilter.title' => 'Mediatheksfilter',
			'services.libraryFilter.subtitleAllSyncing' => 'Alle Mediatheken werden synchronisiert',
			'services.libraryFilter.subtitleNoneSyncing' => 'Nichts wird synchronisiert',
			'services.libraryFilter.subtitleBlocked' => ({required Object count}) => '${count} ausgeschlossen',
			'services.libraryFilter.subtitleAllowed' => ({required Object count}) => '${count} zugelassen',
			'services.libraryFilter.mode' => 'Filtermodus',
			'services.libraryFilter.modeBlacklist' => 'Ausschlussliste',
			'services.libraryFilter.modeWhitelist' => 'Zulassungsliste',
			'services.libraryFilter.modeHintBlacklist' => 'Alle Mediatheken außer den unten markierten synchronisieren.',
			'services.libraryFilter.modeHintWhitelist' => 'Nur die unten markierten Mediatheken synchronisieren.',
			'services.libraryFilter.libraries' => 'Mediatheken',
			'services.libraryFilter.noLibraries' => 'Keine Mediatheken verfügbar',
			'addServer.addMediaBrowserTitle' => ({required Object product}) => '${product}-Server hinzufügen',
			'addServer.serverUrls' => 'Server-URLs',
			'addServer.serverUrlsHelper' => 'Mehrere URLs möglich, durch Kommas getrennt.',
			'addServer.findServer' => 'Server finden',
			'addServer.searchingLocalMediaBrowserServers' => ({required Object product}) => 'Suche nach lokalen ${product}-Servern …',
			'addServer.localMediaBrowserServers' => ({required Object product}) => 'Lokale ${product}-Server',
			'addServer.username' => 'Benutzername',
			'addServer.password' => 'Passwort',
			'addServer.signIn' => 'Anmelden',
			'addServer.change' => 'Ändern',
			'addServer.required' => 'Erforderlich',
			'addServer.couldNotReachServer' => ({required Object error}) => 'Server nicht erreichbar: ${error}',
			'addServer.signInFailed' => ({required Object error}) => 'Anmeldung fehlgeschlagen: ${error}',
			'addServer.quickConnectFailed' => ({required Object error}) => 'Quick Connect fehlgeschlagen: ${error}',
			'addServer.addPlexTitle' => 'Mit Plex anmelden',
			'addServer.pinExpired' => 'PIN ist vor der Anmeldung abgelaufen. Bitte erneut versuchen.',
			'addServer.failedToRegisterAccount' => ({required Object error}) => 'Konto konnte nicht registriert werden: ${error}',
			'addServer.enterMediaBrowserUrlError' => ({required Object product}) => 'Gib die URL deines ${product}-Servers ein',
			'addServer.addConnectionTitle' => 'Verbindung hinzufügen',
			'addServer.addConnectionTitleScoped' => ({required Object name}) => 'Zu ${name} hinzufügen',
			'addServer.signInWithPlexCard' => 'Mit Plex anmelden',
			'addServer.signInWithPlexCardSubtitle' => 'Dieses Gerät autorisieren. Geteilte Server werden hinzugefügt.',
			'addServer.signInWithPlexCardSubtitleScoped' => 'Ein Plex-Konto autorisieren. Startseite-Benutzer werden zu Profilen.',
			'addServer.connectToMediaBrowserCard' => ({required Object product}) => 'Mit ${product} verbinden',
			'addServer.connectToMediaBrowserCardSubtitle' => 'Gib Server-URL, Benutzername und Passwort ein.',
			'addServer.connectToMediaBrowserCardSubtitleScoped' => ({required Object product, required Object name}) => 'Melde dich bei deinem ${product}-Server an. Wird mit ${name} verknüpft.',
			'addServer.borrowFromAnotherProfile' => 'Von einem anderen Profil ausleihen',
			'addServer.borrowFromAnotherProfileSubtitle' => 'Verbindung eines anderen Profils wiederverwenden. PIN-geschützte Profile erfordern eine PIN.',
			'addServer.invalidCredentials' => 'Ungültiger Benutzername oder ungültiges Passwort',
			'addServer.authResponseNotJson' => 'Die Authentifizierungsantwort war kein gültiges JSON',
			'addServer.authResponseIncomplete' => 'Die Anmeldeantwort des Servers war unvollständig',
			'addServer.quickConnectRejected' => 'Quick Connect wurde vom Server abgelehnt',
			'addServer.quickConnectNotJson' => 'Die Quick Connect-Antwort war kein gültiges JSON',
			'addServer.quickConnectMissingFields' => 'In der Quick Connect-Antwort fehlt ein Code oder Geheimnis',
			'addServer.quickConnectPollRejected' => 'Die Quick Connect-Abfrage wurde vom Server abgelehnt',
			'addServer.serverTimedOut' => 'Der Server hat nicht rechtzeitig geantwortet',
			'addServer.responseNotJson' => 'Die Serverantwort war kein gültiges JSON',
			'addServer.responseMissingIdentity' => ({required Object product}) => 'In der Antwort fehlt eine ID oder ein Servername – ist dies ein ${product}-Server?',
			'addServer.probeFailed' => ({required Object error}) => 'Server nicht erreichbar: ${error}',
			'addServer.enterAtLeastOneUrl' => ({required Object product}) => 'Gib mindestens eine URL eines ${product}-Servers ein',
			'addServer.noReachableServer' => ({required Object product}) => 'Es wurde kein erreichbarer ${product}-Server gefunden',
			'addServer.urlsPointToDifferentServers' => ({required Object product}) => 'Diese URLs verweisen auf verschiedene ${product}-Server',
			'addServer.urlDoesNotMatchServer' => ({required Object product}) => 'Diese URL gehört nicht zum ${product}-Server',
			'addServer.redirectUnsupported' => 'Der Server hat zu einer nicht unterstützten URL weitergeleitet',
			'addServer.redirectDifferentHost' => ({required Object product}) => 'Der Server hat zu einem anderen Host weitergeleitet. Gib die endgültige ${product}-URL direkt ein.',
			'addServer.redirectInsecure' => 'Der Server hat von HTTPS zu einer unsicheren URL weitergeleitet',
			'addServer.redirectUnsupportedEnterFinal' => ({required Object product}) => 'Der Server hat zu einer nicht unterstützten URL weitergeleitet. Gib die endgültige ${product}-URL direkt ein.',
			_ => null,
		};
	}
}
