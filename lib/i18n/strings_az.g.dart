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
class TranslationsAz extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsAz({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.az,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <az>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsAz _root = this; // ignore: unused_field

	@override 
	TranslationsAz $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsAz(meta: meta ?? this.$meta);

	// Translations
	@override late final _Translations$mobileLibrary$az mobileLibrary = _Translations$mobileLibrary$az._(_root);
	@override late final _Translations$profileStartup$az profileStartup = _Translations$profileStartup$az._(_root);
	@override late final _Translations$subtitleUpload$az subtitleUpload = _Translations$subtitleUpload$az._(_root);
	@override late final _Translations$personSpotlight$az personSpotlight = _Translations$personSpotlight$az._(_root);
	@override late final _Translations$detailExtras$az detailExtras = _Translations$detailExtras$az._(_root);
	@override late final _Translations$mobileUi$az mobileUi = _Translations$mobileUi$az._(_root);
	@override late final _Translations$family$az family = _Translations$family$az._(_root);
	@override late final _Translations$posterDetails$az posterDetails = _Translations$posterDetails$az._(_root);
	@override late final _Translations$libraryPolish$az libraryPolish = _Translations$libraryPolish$az._(_root);
	@override late final _Translations$showSchedule$az showSchedule = _Translations$showSchedule$az._(_root);
	@override late final _Translations$awardsCatalog$az awardsCatalog = _Translations$awardsCatalog$az._(_root);
	@override late final _Translations$searchDiscovery$az searchDiscovery = _Translations$searchDiscovery$az._(_root);
	@override late final _Translations$lurokaPlayerDesign$az lurokaPlayerDesign = _Translations$lurokaPlayerDesign$az._(_root);
	@override late final _Translations$lurokaWorkspace$az lurokaWorkspace = _Translations$lurokaWorkspace$az._(_root);
	@override late final _Translations$mobileFixes$az mobileFixes = _Translations$mobileFixes$az._(_root);
	@override late final _Translations$downloadsRedesign$az downloadsRedesign = _Translations$downloadsRedesign$az._(_root);
	@override late final _Translations$kidsShelf$az kidsShelf = _Translations$kidsShelf$az._(_root);
	@override late final _Translations$kidsHome$az kidsHome = _Translations$kidsHome$az._(_root);
	@override late final _Translations$tvSettingsV2$az tvSettingsV2 = _Translations$tvSettingsV2$az._(_root);
	@override late final _Translations$settingsRedesign$az settingsRedesign = _Translations$settingsRedesign$az._(_root);
	@override late final _Translations$onboarding$az onboarding = _Translations$onboarding$az._(_root);
	@override late final _Translations$household$az household = _Translations$household$az._(_root);
	@override late final _Translations$detailComposition$az detailComposition = _Translations$detailComposition$az._(_root);
	@override late final _Translations$kids$az kids = _Translations$kids$az._(_root);
	@override late final _Translations$lurokaDiscovery$az lurokaDiscovery = _Translations$lurokaDiscovery$az._(_root);
	@override late final _Translations$app$az app = _Translations$app$az._(_root);
	@override late final _Translations$appIcon$az appIcon = _Translations$appIcon$az._(_root);
	@override late final _Translations$auth$az auth = _Translations$auth$az._(_root);
	@override late final _Translations$common$az common = _Translations$common$az._(_root);
	@override late final _Translations$tvHints$az tvHints = _Translations$tvHints$az._(_root);
	@override late final _Translations$screens$az screens = _Translations$screens$az._(_root);
	@override late final _Translations$mediaExtras$az mediaExtras = _Translations$mediaExtras$az._(_root);
	@override late final _Translations$update$az update = _Translations$update$az._(_root);
	@override late final _Translations$supporter$az supporter = _Translations$supporter$az._(_root);
	@override late final _Translations$settings$az settings = _Translations$settings$az._(_root);
	@override late final _Translations$themeEditor$az themeEditor = _Translations$themeEditor$az._(_root);
	@override late final _Translations$seriesBrowser$az seriesBrowser = _Translations$seriesBrowser$az._(_root);
	@override late final _Translations$titlePage$az titlePage = _Translations$titlePage$az._(_root);
	@override late final _Translations$tvMenus$az tvMenus = _Translations$tvMenus$az._(_root);
	@override late final _Translations$lurokaPlayer$az lurokaPlayer = _Translations$lurokaPlayer$az._(_root);
	@override late final _Translations$lurokaSettings$az lurokaSettings = _Translations$lurokaSettings$az._(_root);
	@override late final _Translations$playerChrome$az playerChrome = _Translations$playerChrome$az._(_root);
	@override late final _Translations$tvLayout$az tvLayout = _Translations$tvLayout$az._(_root);
	@override late final _Translations$studios$az studios = _Translations$studios$az._(_root);
	@override late final _Translations$dashboard$az dashboard = _Translations$dashboard$az._(_root);
	@override late final _Translations$lurokaCatalog$az lurokaCatalog = _Translations$lurokaCatalog$az._(_root);
	@override late final _Translations$referenceDetails$az referenceDetails = _Translations$referenceDetails$az._(_root);
	@override late final _Translations$lurokaThemes$az lurokaThemes = _Translations$lurokaThemes$az._(_root);
	@override late final _Translations$customPerformance$az customPerformance = _Translations$customPerformance$az._(_root);
	@override late final _Translations$homeLayout$az homeLayout = _Translations$homeLayout$az._(_root);
	@override late final _Translations$screenTime$az screenTime = _Translations$screenTime$az._(_root);
	@override late final _Translations$activityStats$az activityStats = _Translations$activityStats$az._(_root);
	@override late final _Translations$search$az search = _Translations$search$az._(_root);
	@override late final _Translations$hotkeys$az hotkeys = _Translations$hotkeys$az._(_root);
	@override late final _Translations$fileInfo$az fileInfo = _Translations$fileInfo$az._(_root);
	@override late final _Translations$mediaMenu$az mediaMenu = _Translations$mediaMenu$az._(_root);
	@override late final _Translations$rateSheet$az rateSheet = _Translations$rateSheet$az._(_root);
	@override late final _Translations$accessibility$az accessibility = _Translations$accessibility$az._(_root);
	@override late final _Translations$tooltips$az tooltips = _Translations$tooltips$az._(_root);
	@override late final _Translations$audioTracks$az audioTracks = _Translations$audioTracks$az._(_root);
	@override late final _Translations$videoControls$az videoControls = _Translations$videoControls$az._(_root);
	@override late final _Translations$messages$az messages = _Translations$messages$az._(_root);
	@override late final _Translations$sourceLibraries$az sourceLibraries = _Translations$sourceLibraries$az._(_root);
	@override late final _Translations$subtitlingStyling$az subtitlingStyling = _Translations$subtitlingStyling$az._(_root);
	@override late final _Translations$mpvConfig$az mpvConfig = _Translations$mpvConfig$az._(_root);
	@override late final _Translations$dialog$az dialog = _Translations$dialog$az._(_root);
	@override late final _Translations$profiles$az profiles = _Translations$profiles$az._(_root);
	@override late final _Translations$connections$az connections = _Translations$connections$az._(_root);
	@override late final _Translations$serversAccounts$az serversAccounts = _Translations$serversAccounts$az._(_root);
	@override late final _Translations$accountPreferences$az accountPreferences = _Translations$accountPreferences$az._(_root);
	@override late final _Translations$discover$az discover = _Translations$discover$az._(_root);
	@override late final _Translations$errors$az errors = _Translations$errors$az._(_root);
	@override late final _Translations$libraries$az libraries = _Translations$libraries$az._(_root);
	@override late final _Translations$about$az about = _Translations$about$az._(_root);
	@override late final _Translations$serverSelection$az serverSelection = _Translations$serverSelection$az._(_root);
	@override late final _Translations$hubDetail$az hubDetail = _Translations$hubDetail$az._(_root);
	@override late final _Translations$logs$az logs = _Translations$logs$az._(_root);
	@override late final _Translations$startup$az startup = _Translations$startup$az._(_root);
	@override late final _Translations$licenses$az licenses = _Translations$licenses$az._(_root);
	@override late final _Translations$navigation$az navigation = _Translations$navigation$az._(_root);
	@override late final _Translations$explore$az explore = _Translations$explore$az._(_root);
	@override late final _Translations$liveTv$az liveTv = _Translations$liveTv$az._(_root);
	@override late final _Translations$collections$az collections = _Translations$collections$az._(_root);
	@override late final _Translations$playlists$az playlists = _Translations$playlists$az._(_root);
	@override late final _Translations$music$az music = _Translations$music$az._(_root);
	@override late final _Translations$watchTogether$az watchTogether = _Translations$watchTogether$az._(_root);
	@override late final _Translations$downloads$az downloads = _Translations$downloads$az._(_root);
	@override late final _Translations$shaders$az shaders = _Translations$shaders$az._(_root);
	@override late final _Translations$companionRemote$az companionRemote = _Translations$companionRemote$az._(_root);
	@override late final _Translations$videoSettings$az videoSettings = _Translations$videoSettings$az._(_root);
	@override late final _Translations$performanceOverlay$az performanceOverlay = _Translations$performanceOverlay$az._(_root);
	@override late final _Translations$externalPlayer$az externalPlayer = _Translations$externalPlayer$az._(_root);
	@override late final _Translations$metadataEdit$az metadataEdit = _Translations$metadataEdit$az._(_root);
	@override late final _Translations$matchScreen$az matchScreen = _Translations$matchScreen$az._(_root);
	@override late final _Translations$serverTasks$az serverTasks = _Translations$serverTasks$az._(_root);
	@override late final _Translations$trakt$az trakt = _Translations$trakt$az._(_root);
	@override late final _Translations$seerr$az seerr = _Translations$seerr$az._(_root);
	@override late final _Translations$services$az services = _Translations$services$az._(_root);
	@override late final _Translations$offlineRecovery$az offlineRecovery = _Translations$offlineRecovery$az._(_root);
	@override late final _Translations$releaseUpdates$az releaseUpdates = _Translations$releaseUpdates$az._(_root);
	@override late final _Translations$profileIntegrations$az profileIntegrations = _Translations$profileIntegrations$az._(_root);
	@override late final _Translations$profileSetupGuide$az profileSetupGuide = _Translations$profileSetupGuide$az._(_root);
	@override late final _Translations$animeFavorites$az animeFavorites = _Translations$animeFavorites$az._(_root);
	@override late final _Translations$addServer$az addServer = _Translations$addServer$az._(_root);
}

// Path: mobileLibrary
class _Translations$mobileLibrary$az extends Translations$mobileLibrary$en {
	_Translations$mobileLibrary$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get pickerSubtitle => 'Kəşf etmək üçün kolleksiya seçin';
	@override String get searchLibraries => 'Kitabxanaları axtarın';
	@override String get noLibraries => 'Uyğun kitabxana yoxdur';
	@override String get ascending => 'Artan';
	@override String get descending => 'Azalan';
	@override String get sort => 'Sırala';
	@override String unwatchedCount({required Object count}) => '${count} baxılmamış epizodlar';
	@override String get latestEpisode => 'Ən son epizod';
}

// Path: profileStartup
class _Translations$profileStartup$az extends Translations$profileStartup$en {
	_Translations$profileStartup$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get autoLogin => 'Son istifadə olunan profili açın';
	@override String get autoLoginHint => 'PIN tələb etmədikdə sonuncu profili avtomatik açın.';
	@override String get allowKidsExit => 'Valideyn PIN-i olmadan Uşaq profilindən çıxmağa icazə ver';
	@override String get allowKidsExitHint => 'Uşağın valideyn PIN-i daxil etmədən başqa profilə keçməsinə imkan verir. Profil PIN-ləri yenə də qüvvədədir.';
	@override String get chooseKidsConnection => 'Fərqli hesab və ya server seçin';
	@override String get chooseKidsConnectionHint => 'Yadda saxladıqdan sonra ayrıca hesabı birləşdirin və ya başqa profildən əlaqə seçin.';
}

// Path: subtitleUpload
class _Translations$subtitleUpload$az extends Translations$subtitleUpload$en {
	_Translations$subtitleUpload$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get chooseFile => 'Altyazı faylını yükləyin';
	@override String get hint => 'Yuxarıdakı dili seçin, sonra SRT, ASS, SSA və ya VTT faylını bu serverə yükləyin.';
	@override String get success => 'Subtitr serverə yükləndi. Server elementi yenilədikdə görünəcək.';
	@override String get failed => 'Altyazı yükləmək mümkün olmadı. Fayl və server icazələrini yoxlayın.';
}

// Path: personSpotlight
class _Translations$personSpotlight$az extends Translations$personSpotlight$en {
	_Translations$personSpotlight$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get inYourLibraries => 'kitabxanalarınızda';
	@override String libraryTitles({required Object n}) => 'Kitabxanalarınızda · ${n} başlıqları';
	@override String get readBiography => 'Bioqrafiya oxuyun';
	@override String get newestFirst => 'Ən yeni ilk';
	@override String get oldestFirst => 'Ən köhnə ilk';
	@override String get titleAscending => 'Başlıq A-Z';
	@override String get sortTitles => 'Filmoqrafiyanı çeşidləyin';
	@override String unwatchedEpisodes({required Object n}) => '${n} baxılmamış epizodlar';
	@override String copies({required Object n}) => '${n} kitabxana nüsxələri';
	@override String versions({required Object n}) => '${n} fayl versiyaları';
	@override String get retryTitles => 'Bütün başlıqları yükləmək mümkün olmadı. Yenidən cəhd edin';
}

// Path: detailExtras
class _Translations$detailExtras$az extends Translations$detailExtras$en {
	_Translations$detailExtras$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get onlineVideos => 'Treylerlər və əlavələr';
	@override String get reviews => 'Rəylər';
	@override String get readReview => 'Tam rəyi oxuyun';
	@override String directedBy({required Object name}) => 'Daha çox rejissor ${name}';
	@override String get previewUnavailable => 'Bu önizləməni oxutmaq mümkün olmadı. Bunun əvəzinə onu orijinal proqramında aça bilərsiniz.';
	@override String get openExternally => 'Orijinal videonu açın';
}

// Path: mobileUi
class _Translations$mobileUi$az extends Translations$mobileUi$en {
	_Translations$mobileUi$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get readMore => 'Daha ətraflı oxuyun';
	@override String get readLess => 'Daha az göstər';
	@override String get playbackTools => 'Oxutma seçimləri';
	@override String get streamingQuality => 'Axın keyfiyyəti';
	@override String get fileVersions => 'Fayl versiyaları';
	@override String get qualityAndVersions => 'Axın keyfiyyəti və fayl versiyaları';
	@override String get hidePlaybackTools => 'Oxutma alətlərini gizlədin';
	@override String remaining({required Object time}) => '${time} qaldı';
	@override String endsAt({required Object time}) => '${time}-da bitir';
	@override String get collection => 'Sizin kolleksiyanız';
	@override String get nowPlaying => 'İNDİ OYNAYIR';
	@override String get popularLibrary => 'Kitabxananızda məşhurdur';
	@override String get weeklyLibrary => 'Bu həftə kitabxananızda trend';
}

// Path: family
class _Translations$family$az extends Translations$family$en {
	_Translations$family$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profillər və Ailə';
	@override String get yourPeople => 'Sizin xalqınız';
	@override String get manageHint => 'Bu cihazda insanları, uşaqların təhlükəsizliyini və baxış fəaliyyətini idarə edin.';
	@override String get people => 'İnsanlar';
	@override String peopleCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('az'))(n,
		one: '${n} şəxs',
		other: '${n} insanlar',
	);
	@override String kidsCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('az'))(n,
		one: '${n} uşaq',
		other: '${n} uşaqlar',
	);
	@override String get you => 'sən';
	@override String get adult => 'Yetkin';
	@override String get child => 'Uşaq';
	@override String get adultTeen => 'Yetkin və ya yeniyetmə';
	@override String get adultHint => 'Öz profili, isteğe bağlı Profil PIN və öz server əlaqələri.';
	@override String get childHint => 'Yaş məhdudiyyətləri, təhlükəsiz kitabxanalar və uşaqlar üçün uyğun görünüş. Bu ayarları valideyn PIN-i qoruyur.';
	@override String upToAge({required Object age}) => '${age} yaşa qədər';
	@override String get allAges => 'Bütün yaşlar';
	@override String get switchProfile => 'Profilə keçin';
	@override String get switchHint => 'Kimin baxdığını seçin. Bir şəxsi idarə etmək profilləri dəyişdirmir.';
	@override String get addPerson => 'Şəxs əlavə edin';
	@override String get addChild => 'Uşaq əlavə edin';
	@override String get addHint => 'Bu cihazda böyüklər, yeniyetmə və ya uşaq profili yaradın.';
	@override String get emptyPeople => 'Sizinlə izləyən hər kəs üçün yer açın.';
	@override String get emptyKids => 'Hələ uşaq profili yoxdur. Yaş məhdudiyyətlərini və təhlükəsiz kitabxanaları seçmək üçün uşaq əlavə edin.';
	@override String get safety => 'Uşaqlar və təhlükəsizlik';
	@override String get safetyHint => 'Valideyn PIN-i, uşaq profilləri və yaş məhdudiyyətləri.';
	@override String get protection => 'Qoruma';
	@override String get kidsProfiles => 'Uşaq profilləri';
	@override String get backupHistory => 'Yedəkləmə və tarixçə';
	@override String get parentPinOn => 'Valideyn PIN-i aktivdir';
	@override String get profilePin => 'Profil PIN-i';
	@override String get confirmParentPin => 'Valideyn PIN-ini təsdiqləyin';
	@override String get parentPinOff => 'Valideyn PIN-i təyin edilməyib';
	@override String get missingPin => 'Bu parametrləri qorumaq üçün valideyn PIN-i təyin edin.';
	@override String get hideScope => 'Uşaqların fəaliyyətini bu Luroka profilində Baxmağa Davam et-dən gizlədin. Bu, paylaşılan server baxış tarixçəsini dəyişmir.';
	@override String get localScope => 'Uşaq profilləri və məhdudiyyətlər bu cihazda saxlanılır. Eyni server hesabından istifadə edən profillər hələ də həmin hesabın izləmə gedişatını paylaşır.';
	@override String get clearHistoryConfirm => 'Uşaqların baxdığı başlıqların yenidən Baxmağa Davam et bölməsində görünməsinə icazə verilsin? Uşaq profilləri, məhdudiyyətlər, baxış vaxtı statistikası və server baxış tarixçəsi saxlanılacaq.';
	@override String get editRestrictions => 'Uşaq məhdudiyyətlərini redaktə edin';
	@override String get activity => 'Fəaliyyətə baxış';
	@override String namedActivity({required Object name}) => '${name}-un baxış fəaliyyəti';
	@override String get thisProfile => 'Bu profil';
	@override String get activityScope => 'Aktiv profil üçün bu cihazda Luroka tərəfindən qeydə alınan oxutma vaxtı. Bunlar baxılma hədləri və ya tam server tarixçəsi deyil, statistikadır.';
	@override String get activityUnavailable => 'Baxış fəaliyyəti hələ bu profil üçün əlçatan deyil.';
	@override String get finished => 'Bitdi';
}

// Path: posterDetails
class _Translations$posterDetails$az extends Translations$posterDetails$en {
	_Translations$posterDetails$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get showThemeMusic => 'Mövzu musiqisini çalın';
	@override String get showThemeMusicDescription => 'Film və ya şounun mövzusunu, serverdə mövcud olduqda onun təfərrüatları səhifəsi açıq olarkən oynayın.';
	@override String get catalogEpisodeInfo => 'Kataloq kartlarında epizod sayını və işləmə müddətini göstərin';
	@override String get catalogEpisodeInfoDescription => 'Kəşf et posterlərində epizod saylarını və orta müddəti göstərin.';
	@override String get title => 'Poster təfərrüatları';
	@override String get description => 'Studio, Axtarış, Kəşf və Kitabxanalar üzrə posterlərin altında başlıq, il və IMDb reytinqini göstərin. Çatışmayan IMDb reytinqləri gizli qalır. Yalnız sənət əsərləri üçün afişaları söndürün.';
}

// Path: libraryPolish
class _Translations$libraryPolish$az extends Translations$libraryPolish$en {
	_Translations$libraryPolish$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get compactTvNavigation => 'Kompakt kitabxana naviqasiyası';
	@override String get compactTvNavigationDescription => 'Kitabxana bölmələrini göstərin və afişalar üçün daha çox yer buraxaraq, sürüşdürülmüş menyuda seçimlərə göz atın.';
	@override String get openLibraryMenu => 'Kitabxana menyusunu açın';
	@override String get posterDetails => 'Poster təfərrüatları';
	@override String get showPosterDetails => 'Poster təfərrüatlarını göstərin · ad, il və IMDb';
	@override String get hidePosterDetails => 'Poster detallarını gizlədin';
	@override String get overview => 'Ümumi baxış';
	@override String get refreshing => 'Kitabxana təzələnir...';
	@override String get serverCollections => 'Bu serverdəki bütün kolleksiyalar';
	@override String get serverPlaylists => 'Bu serverdəki bütün video pleylistlər';
	@override String get libraryCollections => 'Bu kitabxanadakı kolleksiyalar';
	@override String get searchCollections => 'Kolleksiyaları axtarın';
	@override String get searchPlaylists => 'Pleylistləri axtarın';
	@override String get searchHint => 'Ada görə axtarın';
	@override String get titleAscending => 'Başlıq A-Z';
	@override String get titleDescending => 'Başlıq Z–A';
	@override String get clearFilters => 'Filtrləri təmizləyin';
	@override String get playlistEmptyTitle => 'Kino gecələriniz, sifarişinizlə';
	@override String get playlistEmptyHint => 'Başlığın Daha çox menyusunu açın və ilk pleylistinizi yaratmaq üçün Pleylistə əlavə et seçin.';
	@override String get noMatches => 'Uyğun adlar yoxdur';
	@override String get indexing => 'Tam kataloq axtarılır...';
}

// Path: showSchedule
class _Translations$showSchedule$az extends Translations$showSchedule$en {
	_Translations$showSchedule$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get today => 'Bu gün';
	@override String get tomorrow => 'Sabah';
	@override String get latestUpcoming => 'Ən son və gələcək';
	@override String get latestEpisode => 'Ən son epizod';
	@override String get upcoming => 'Qarşıdan gələn';
	@override String get inLibrary => 'Kitabxananızda';
	@override String get notInLibrary => 'Kitabxananızda deyil';
	@override String get notYetAired => 'Hələ yayımlanmayıb';
	@override String episode({required Object number}) => 'Epizod ${number}';
	@override String get caughtUp => 'Hamınız tutulmusunuz';
	@override String get finished => 'Bu seriyanı bitirdiniz';
	@override String nextAirs({required Object date}) => 'Növbəti epizod ${date} yayımlanır';
	@override String get watchBeginning => 'Başdan baxın';
	@override String get replay => 'Təkrar çalın';
	@override String get playNext => 'Növbəti oynayın';
}

// Path: awardsCatalog
class _Translations$awardsCatalog$az extends Translations$awardsCatalog$en {
	_Translations$awardsCatalog$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get awards => 'Mükafatlar';
	@override String get customize => 'Fərdiləşdirin';
	@override String get chooseShelves => 'Kəşf et-i fərdiləşdirin';
	@override String get shelvesDescription => 'Kəşf et-də istədiyiniz cərgələri seçin. Mükafat sıraları kitabxanalarınızdan qalibləri göstərir. Seçimləriniz bu profil üçün yadda saxlanılır.';
	@override String get restoreShelves => 'Defoltları bərpa edin';
	@override String get charts => 'IMDb diaqramları';
	@override String get generalShelves => 'Populyar və trend';
	@override String get saveShelvesFailed => 'Kəşf seçimlərini saxlamaq mümkün olmadı. Yenidən cəhd edin.';
	@override String get comedyActress => 'Aparıcı Aktrisa · Komediya';
	@override String get leadDramaActor => 'Baş Aktyor · Dram';
	@override String get leadDramaActress => 'Aparıcı Aktrisa · Dram';
	@override String get comedySupportingActor => 'Köməkçi aktyor · Komediya';
	@override String get comedySupportingActress => 'Köməkçi Aktrisa · Komediya';
	@override String get leadingPerformance => 'Gümüş Ayı · Ən Yaxşı Aparıcı Performans';
	@override String get globesComedySeries => 'Ən Yaxşı Televiziya Serialı · Musiqili və ya Komediya';
	@override String get limitedSupportingActor => 'Köməkçi Aktyor · Məhdud Serial və ya Film';
	@override String get limitedSupportingActress => 'Köməkçi Aktrisa · Məhdud Serial və ya Film';
	@override String get berlinDocumentary => 'Berlinale Sənədli Film Mükafatı';
	@override String get title => 'Mükafatlar və festivallar';
	@override String get chooseCategory => 'Mükafat kateqoriyası seçin';
	@override String get winners => 'Qaliblər';
	@override String get nominees => 'Namizədlər';
	@override String get releaseDecade => 'Onillik buraxılış';
	@override String get allYears => 'Bütün illər';
	@override String get loading => 'Mükafat başlıqları yüklənir...';
	@override String get matching => 'Kitabxanalarınızda bu başlıqlar tapılır...';
	@override String get unavailable => 'Mükafat məlumatları hazırda əlçatan deyil. Yenidən cəhd edin.';
	@override String get empty => 'Bu kateqoriya üçün görünən kitabxanalarınızda uyğun başlıq yoxdur.';
	@override String get coverage => 'Üzvlük Vikidatadan gəlir və natamam ola bilər. Aktyor və rejissor kateqoriyaları mükafatlandırıldıqları filmləri və ya şouları göstərir. İllər mərasimə deyil, başlığın buraxılmasına aiddir.';
	@override String get picture => 'Ən Yaxşı Şəkil';
	@override String get film => 'Ən yaxşı film';
	@override String get international => 'Ən yaxşı beynəlxalq xüsusiyyət';
	@override String get internationalFilm => 'Ən yaxşı beynəlxalq film';
	@override String get nonEnglishFilm => 'İngilis dilində olmayan ən yaxşı film';
	@override String get animated => 'Ən yaxşı cizgi filmi';
	@override String get animatedFilm => 'Ən yaxşı cizgi filmi';
	@override String get documentary => 'Ən yaxşı sənədli film';
	@override String get director => 'Ən yaxşı rejissor';
	@override String get actor => 'Ən yaxşı aktyor';
	@override String get actress => 'Ən Yaxşı Aktrisa';
	@override String get supportingActor => 'Ən yaxşı ikinci plan aktyoru';
	@override String get supportingActress => 'Ən Yaxşı Köməkçi Aktrisa';
	@override String get originalScreenplay => 'Ən yaxşı orijinal ssenari';
	@override String get adaptedScreenplay => 'Ən Yaxşı Uyğunlaşdırılmış Ssenari';
	@override String get screenplay => 'Ən yaxşı ssenari';
	@override String get cinematography => 'Ən yaxşı kinematoqrafiya';
	@override String get editing => 'Ən yaxşı redaktə';
	@override String get score => 'Ən Yaxşı Orijinal Skor';
	@override String get song => 'Ən Yaxşı Orijinal Mahnı';
	@override String get sound => 'Ən yaxşı səs';
	@override String get effects => 'Ən yaxşı vizual effektlər';
	@override String get productionDesign => 'Ən yaxşı istehsal dizaynı';
	@override String get costume => 'Ən yaxşı Kostyum Dizaynı';
	@override String get makeup => 'Ən yaxşı makiyaj və saç düzümü';
	@override String get dramaSeries => 'Görkəmli dram serialı';
	@override String get comedySeries => 'Görkəmli Komediya Serialı';
	@override String get limitedSeries => 'Görkəmli Məhdud Seriya';
	@override String get animatedProgram => 'Görkəmli animasiya proqramı';
	@override String get comedyActor => 'Baş Aktyor · Komediya';
	@override String get limitedActor => 'Aparıcı Aktyor · Məhdud Serial və ya Film';
	@override String get limitedActress => 'Aparıcı Aktrisa · Məhdud Serial və ya Film';
	@override String get limitedDirecting => 'Rejissorluq · Məhdud Serial və ya Film';
	@override String get britishFilm => 'Ən yaxşı Britaniya filmi';
	@override String get goldenBear => 'Qızıl ayı';
	@override String get grandJury => 'Münsiflər Heyətinin Böyük Mükafatı';
	@override String get jury => 'Münsiflər Heyəti Mükafatı';
	@override String get teddy => 'Teddy Mükafatı';
	@override String get goldenLion => 'Qızıl Aslan';
	@override String get volpiActor => 'Volpi Kuboku · Ən Yaxşı Aktyor';
	@override String get volpiActress => 'Volpi Kuboku · Ən Yaxşı Aktrisa';
	@override String get queerLion => 'Queer Aslan';
	@override String get dramaFilm => 'Ən Yaxşı Film · Dram';
	@override String get comedyFilm => 'Ən Yaxşı Film · Musiqili və ya Komediya';
	@override String get dramaActor => 'Ən Yaxşı Aktyor · Dram';
	@override String get dramaActress => 'Ən Yaxşı Aktrisa · Dram';
	@override String get usDramatic => 'ABŞ Dramatik Münsiflər Heyətinin Böyük Mükafatı';
	@override String get documentaryJury => 'Sənədli Film Münsiflər Heyətinin Böyük Mükafatı';
	@override String get worldCinema => 'Dünya Kinosu Münsiflər Heyətinin Böyük Mükafatı';
	@override String get dramaticAudience => 'ABŞ Dramatik Tamaşaçılar Mükafatı';
	@override String get usDirecting => 'ABŞ Rejissorluq Mükafatı';
	@override String get peopleChoice => 'Xalqın Seçimi Mükafatı';
	@override String get canadianFilm => 'Ən yaxşı Kanada filmi';
	@override String get firstFeature => 'Ən Yaxşı İlk Xüsusiyyət';
	@override String get cassavetes => 'John Cassavetes mükafatı';
	@override String get scienceFiction => 'Ən yaxşı elmi fantastika filmi';
	@override String get fantasy => 'Ən yaxşı fantastik film';
	@override String get horror => 'Ən yaxşı qorxu filmi';
	@override String get action => 'Ən yaxşı fəaliyyət və ya macəra filmi';
	@override String get thriller => 'Ən yaxşı triller filmi';
}

// Path: searchDiscovery
class _Translations$searchDiscovery$az extends Translations$searchDiscovery$en {
	_Translations$searchDiscovery$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get suggestions => 'Baxmaq üçün bir şey';
	@override String get collections => 'Mükafatlar və kolleksiyalar';
	@override String get collectionsHint => 'Mükafat qalibləri və kitabxanalarınızdan seçilmiş qrafiklər';
	@override String get all => 'Bütün kəşflər';
	@override String get awards => 'Mükafatlar və qrafiklər';
}

// Path: lurokaPlayerDesign
class _Translations$lurokaPlayerDesign$az extends Translations$lurokaPlayerDesign$en {
	_Translations$lurokaPlayerDesign$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get seeking => 'Ön görünüş axtarın';
	@override String get keepWatching => 'Baxmağa davam edin';
	@override String get upNext => 'Növbəti';
	@override String playingIn({required Object seconds}) => '${seconds} s-də oynayır';
}

// Path: lurokaWorkspace
class _Translations$lurokaWorkspace$az extends Translations$lurokaWorkspace$en {
	_Translations$lurokaWorkspace$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get everyday => 'Hər gün';
	@override String get homeDiscovery => 'Ev və Kəşf';
	@override String get librariesAccounts => 'Kitabxanalar və Hesablar';
	@override String get profilesFamily => 'Profillər və Ailə';
	@override String get thisDevice => 'Bu cihaz';
	@override String get thisProfile => 'Bu profil';
	@override String get searchSettings => 'Axtarış parametrləri';
	@override String get savedAutomatically => 'Dəyişikliklər avtomatik olaraq saxlanılır. Gündəlik və Qabaqcıl yalnız hansı idarəetmələrin göstərildiyini dəyişir.';
	@override String get audioSubtitles => 'Audio və Altyazılar';
	@override String get audioDescription => 'Səs çıxışı, həcmi və altyazı görünüşü. Tercih edilən dillər qoşulduqda Hesab tərcihlərindən istifadə edərək hər server hesabı üçün təyin edilir.';
	@override String get pictureSound => 'Şəkil və Səs';
	@override String get pictureDescription => 'Bu cihaz üçün kadr tezliyi uyğunluğu, ayırdetmə, HDR və Dolby Vision kökləmə.';
	@override String get engineDescription => 'Oyunçu mühərriki, dekodlaşdırma, fərdi konfiqurasiya və təkmil oxutma qaydaları.';
	@override String get networkStreaming => 'Şəbəkə və Yayım';
	@override String get networkDescription => 'Axın keyfiyyəti, birbaşa oynatma kodek seçimləri və bant genişliyi seçimləri.';
	@override String get homeOptions => 'Ev seçimləri';
	@override String get refreshHome => 'Evi Yeniləyin və İndi Populyar';
	@override String get customizeHome => 'Evi Fərdiləşdirin';
	@override String get spotlight => 'Ev Spotlight';
	@override String get rotateSpotlight => 'Seçilmiş başlıqları avtomatik çevirin';
	@override String get rotateDescription => 'Ev boş olarkən fırladın. Qarşılıqlı əlaqə fırlanmanı dayandırır; rəflərə baxmaq, səhifə açmaq və ya proqramdan çıxmaq onu tamamilə dayandırır.';
	@override String get rotationInterval => 'Seçilmiş başlıqlar arasındakı vaxt';
}

// Path: mobileFixes
class _Translations$mobileFixes$az extends Translations$mobileFixes$en {
	_Translations$mobileFixes$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get connectionRecoveryHint => 'Server əlçatan deyil? Hesablarınızı idarə edin və ya başqa serverə qoşulun.';
}

// Path: downloadsRedesign
class _Translations$downloadsRedesign$az extends Translations$downloadsRedesign$en {
	_Translations$downloadsRedesign$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get shelfSize => 'Rəf başına əşyalar';
	@override String get shelfSizeHint => 'Davamlı Baxış və tövsiyə rəflərində 16, 32 və ya 48 elementi göstərin. Serverlər daha az mövcud başlıqları qaytara bilər.';
	@override String get subtitle => 'Sevimliləriniz, səyahətə hazırsınız.';
	@override String get transfers => 'Transferlər';
	@override String get ready => 'Oflayn hazırdır';
	@override String get active => 'Endirilir';
	@override String get waiting => 'Gözləyirəm';
	@override String get downloaded => 'Endirildi';
	@override String get speed => 'Yükləmə sürəti';
	@override String get notificationProgress => '{progress} · {networkSpeed} · {timeRemaining} qalan';
}

// Path: kidsShelf
class _Translations$kidsShelf$az extends Translations$kidsShelf$en {
	_Translations$kidsShelf$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get movieShelf => 'Kino vaxtı';
	@override String get showShelf => 'Növbəti verilişinizi tapın';
	@override String get aurora => 'Aurora - dərin çay və əhəng';
	@override String get marquee => 'Marquee - məxmər və qızıl';
	@override String get electric => 'Elektrik - indigo və buz';
	@override String get midnight => 'Gecə yarısı - polad və kəhrəba';
	@override String get yourShelf => 'Sizin film rəfiniz';
	@override String get all => 'Hər şey';
	@override String get pickSomething => 'Nəyə baxmaq istəyirsən?';
}

// Path: kidsHome
class _Translations$kidsHome$az extends Translations$kidsHome$en {
	_Translations$kidsHome$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get everything => 'Sizin üçün';
	@override String get keepWatching => 'Baxmağa davam edin';
	@override String get emptyFilter => 'Burada hələ heç nə yoxdur. Sizin üçün cəhd edin və ya böyüklərdən sevdiyiniz bir şeyi əlavə etməyi xahiş edin.';
}

// Path: tvSettingsV2
class _Translations$tvSettingsV2$az extends Translations$tvSettingsV2$en {
	_Translations$tvSettingsV2$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get moreThemes => 'Daha çox mövzu və fərdi rənglər';
	@override String get moreThemesHint => 'Bütün mövcud əvvəlcədən təyinləri və fərdi mövzu seçimlərini açın.';
	@override String get previewLive => 'Canlı önizləmə';
	@override String get previewIllustration => 'Önizləmə nümunəsi';
	@override String previewShelfCount({required Object count}) => 'Hər rəfdə ${count}-a qədər məhsul';
	@override String get simple => 'Sadə';
	@override String get homeNavigation => 'Ev və Naviqasiya';
	@override String get libraryCards => 'Kitabxana və Kartlar';
	@override String get accountsLibraries => 'Hesablar və Kitabxanalar';
	@override String get profilesFamily => 'Profillər və Ailə';
	@override String get aboutSupport => 'Haqqında & Dəstək';
	@override String get playback => 'Oynatma';
	@override String get homeHint => 'Əsas səhifədə və naviqasiyada görünənləri seçin.';
	@override String get libraryHint => 'Poster ölçülərini, etiketləri və baxılan göstəriciləri tənzimləyin.';
	@override String get advancedPlayback => 'Oyunçu mühərriki və axın';
	@override String get advancedPlaybackHint => 'Pleyer, video çıxışı, axın və təkmil oxutma seçimləri.';
	@override String get advancedTools => 'Diaqnostika və ehtiyat nüsxələri';
	@override String get advancedToolsHint => 'Qeydlər, problemlərin aradan qaldırılması, parametrlərin ehtiyat nüsxəsi və sıfırlanması.';
	@override String get themePreview => 'Mövzuya ön baxış';
	@override String get libraryPreview => 'Kitabxanaya baxış';
	@override String get homePreview => 'Evə baxış';
	@override String get subtitlePreview => 'Altyazıya baxış';
	@override String get subtitleSample => 'Subtitrləriniz belə görünəcək.';
	@override String get previewPlaceholder => 'Sənət işiniz burada görünür';
	@override String get posterSize => 'Poster ölçüsü';
	@override String get serverRecommendations => 'Serverinizdən ev tövsiyələri';
	@override String get tvLayout => 'TV düzənindən istifadə edin';
	@override String get hardwareDecode => 'Avadanlıq video deşifrindən istifadə edin';
	@override String get serverNames => 'Əsas sətirlərdə server adlarını göstərin';
	@override String get settingsSaved => 'Dəyişikliklər avtomatik olaraq saxlanılır.';
	@override String get morePlayback => 'Təkmil oxutma';
	@override String get screenDisplay => 'Şəkil və Səs';
	@override String get engine => 'Oyunçu mühərriki';
	@override String get network => 'Axın və şəbəkə';
	@override String get performance => 'Performans';
	@override String get simpleAudio => 'Dillər və altyazı görünüşü';
}

// Path: settingsRedesign
class _Translations$settingsRedesign$az extends Translations$settingsRedesign$en {
	_Translations$settingsRedesign$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get themeEffects => 'Mövzu və Effektlər';
	@override String get libraryLayout => 'Kitabxananın tərtibatı';
	@override String get posterInformation => 'Poster məlumatı';
	@override String get libraryBehavior => 'Kitabxana davranışı';
	@override String get appearanceHint => 'Luroka görünüşünü, tərtibatını və davranışını fərdiləşdirin.';
	@override String get livePreview => 'Canlı Önizləmə';
	@override String get previewHint => 'Kitabxananızın cari parametrlərlə necə görünəcəyinə baxın.';
	@override String get showLiveTv => 'Canlı TV göstərin';
	@override String get showLiveTvHint => 'Qoşulmuş server onu dəstəklədikdə Canlı TV-ni naviqasiyada göstərin. Bu serverinizi dəyişmir.';
	@override String get aboutTagline => 'Sizin media. Sizin məkanınız.';
	@override String get aboutDescription => 'Luroka sizin Plex, Jellyfin və Emby kitabxanalarınızı telefonlar, televizorlar və stolüstü kompüterlər üçün kinematik pleyerdə bir araya gətirir.';
	@override String get aboutFeatures => 'Kitabxanalarınızı gözdən keçirin, filmləri və şouları davam etdirin, profilləri fərdiləşdirin, yükləmələrdən həzz alın və birlikdə baxın. Canlı TV uyğun serverlə mövcuddur.';
	@override String get services => 'Dünyanızı birləşdirin';
	@override String get updateSource => 'Mənbəni yeniləyin';
	@override String get updateSourceHint => 'Luroka buraxılış lentinizin HTTPS ünvanı. Distribyutorunuz bunu proqramda əvvəlcədən konfiqurasiya edə bilər.';
	@override String get updateNotConfigured => 'Avtomatik yeniləmələr bu quruluş üçün konfiqurasiya edilməyib.';
	@override String get downloadInstall => 'Yükləyin və quraşdırın';
	@override String get installUpdate => 'Yeniləməni quraşdırın';
	@override String get downloading => 'Güncəlləmə endirilir...';
	@override String get downloadFailed => 'Güncəlləməni endirmək və ya doğrulamaq mümkün olmadı. Yenidən cəhd edin.';
	@override String get installPermission => 'Luroka-ya Android parametrlərində yeniləmələri quraşdırmaq icazəsi verin, sonra qayıdıb Yeniləməni quraşdır seçin.';
	@override String get updateReady => 'Yükləmə təsdiqləndi. Quraşdırmağa hazırdır.';
	@override String get releaseNotes => 'Buraxılış qeydləri';
	@override String get invalidFeed => 'Etibarlı HTTPS yeniləmə lenti ünvanını daxil edin.';
}

// Path: onboarding
class _Translations$onboarding$az extends Translations$onboarding$en {
	_Translations$onboarding$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get connectStep => '01 · Qoşulun';
	@override String get connectTitle => 'Luroka-a xoş gəlmisiniz';
	@override String get connectHint => 'Kitabxanalarınızı buraya gətirmək üçün daxil olun.';
	@override String get serverAddressHint => 'Server ünvanınızı daxil edin və ya şəbəkənizdə tapılan serveri seçin.';
	@override String get serverSignInHint => 'Kitabxanalarınızı birləşdirmək üçün server istifadəçi adınızı və şifrənizi istifadə edin.';
	@override String get serverAddressTitle => 'Server ünvanı';
	@override String get serverAccountTitle => 'Server hesabınız';
	@override String get plexHomeTitle => 'Plex Ev istifadəçinizi seçin';
	@override String get plexHomeHint => 'Kitabxanalarından istifadə etmək istədiyiniz Plex istifadəçisini seçin. Sonra Luroka profilinizi quraşdıracaqsınız.';
	@override String get chooseService => 'Xidmətinizi seçin';
	@override String get profileStep => '02 · Profiliniz';
	@override String get profileTitle => 'Özünüzü evdə edin.';
	@override String get profileHint => 'Luroka profiliniz üçün ad və avatar seçin. Qoşulmuş hesabınız eyni qalır.';
	@override String get readyStep => '03 · Baxmağa hazırdır';
	@override String get readyTitle => 'Bir az daha sən.';
	@override String get readyHint => 'Xidmətlərinizi bir araya gətirin və ya başqası üçün yer açın. Bunu hər zaman sonra edə bilərsiniz.';
	@override String get addService => 'Başqa bir xidmətə qoşulun';
	@override String get editProfile => 'Adınızı və avatarınızı redaktə edin';
	@override String get connected => 'Bağlanıb və hazırdır';
	@override String get backToProfile => 'Profilinizə qayıdın';
	@override String get showOtherPlexHome => 'Digər Plex Ev üzvlərini göstərin';
	@override String get showOtherPlexHomeHint => 'Defolt olaraq söndürülür. İstifadə etdiyiniz Luroka profilləriniz və Plex Ev üzvləriniz görünən qalır. Başqasını seçmək üçün aktiv edin.';
}

// Path: household
class _Translations$household$az extends Translations$household$en {
	_Translations$household$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Luroka ailəniz';
	@override String get welcome => 'Luroka-nu özünüz edin';
	@override String get welcomeHint => 'İlk hesabınız qoşulub. Baxmağa başlamazdan əvvəl profilinizi fərdiləşdirin və ya başqasını əlavə edin.';
	@override String get profiles => 'Profillər və məişət';
	@override String get manageHint => 'İnsanlar əlavə edin, şəkilləri dəyişdirin və hər bir profilin əlaqələrini idarə edin.';
	@override String get addProfile => 'Luroka profilini əlavə edin';
	@override String get addHint => 'Hər bir şəxs öz Plex, Emby və ya Jellyfin girişini birləşdirə bilər. Onlar üçün yalnız profillərinə əlavə edilmiş bağlantılar görünür.';
	@override String get sharedHint => 'Başqa profilin əlaqəsinin təkrar istifadəsi həmin server istifadəçisinin baxdığı statusu və oxutma gedişatını paylaşır. Müstəqil baxış tarixçəsi üçün ayrıca giriş seçin.';
	@override String get personalise => 'Profili fərdiləşdirin';
	@override String get changePicture => 'Profil şəklini dəyişdirin';
	@override String get pictureHint => 'Luroka avatar və ya şəkil seçin. Bu, yalnız bu cihazdakı şəkli dəyişir; server hesabınız toxunulmazdır.';
	@override String get serverPicture => 'Server şəklini / baş hərflərindən istifadə edin';
	@override String get choosePhoto => 'Şəkil seçin';
	@override String get photoHint => 'JPEG, PNG və ya digər dəstəklənən şəkil, 10 MB-a qədər. Fotoların ölçüsü dəyişdirilir və bu cihazda saxlanılır.';
	@override String get pictureSaved => 'Profil şəkli yeniləndi';
	@override String get pictureFailed => 'Profil şəklini yeniləmək mümkün olmadı. 10 MB-a qədər dəstəklənən şəkli sınayın.';
	@override String get saveFailed => 'Profil parametrlərini saxlamaq mümkün olmadı. Yenidən cəhd edin.';
	@override String get startWatching => 'Baxmağa başlayın';
	@override String get manageProfiles => 'Profilləri idarə edin və ya dəyişdirin';
	@override String get addLater => 'Daha sonra Parametrlər → Profillər və məişət bölməsində daha çox adam əlavə edə bilərsiniz.';
	@override String get connectionRequired => 'Bu profilin qurulmasını başa çatdırmaq üçün server bağlantısı əlavə edin.';
	@override String get mountain => 'Dağ';
	@override String get orbit => 'Explorer';
	@override String get waves => 'Okean';
	@override String get blossom => 'Çiçək';
	@override String get lightning => 'İldırım';
	@override String get moon => 'Ay';
	@override String get avatarGallery => 'Bir avatar seçin';
	@override String get avatarIllustrationHint => 'Orijinal təsvirli portretlər, uşaqlar və heyvan dostları';
	@override String get avatarPortraitSunrise => 'Günəşin doğuşu portreti';
	@override String get avatarPortraitMeadow => 'Çəmən portreti';
	@override String get avatarPortraitBerry => 'Berry portreti';
	@override String get avatarPortraitGolden => 'Qızıl portret';
	@override String get avatarPortraitIndigo => 'İndiqo portreti';
	@override String get avatarPortraitOcean => 'Okean portreti';
	@override String get avatarKidArtist => 'Balaca rəssam';
	@override String get avatarKidSkater => 'Balaca konkisürən';
	@override String get avatarCat => 'Maraqlı pişik';
	@override String get avatarDog => 'Xoşbəxt it';
	@override String get avatarPanda => 'panda';
	@override String get avatarOwl => 'bayquş';
	@override String get avatarFox => 'Tülkü';
	@override String get avatarDinosaur => 'dinozavr';
	@override String get avatarRobot => 'Robot';
}

// Path: detailComposition
class _Translations$detailComposition$az extends Translations$detailComposition$en {
	_Translations$detailComposition$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get startOver => 'Yenidən başla';
	@override String get seriesCast => 'Serial heyəti';
	@override String get streamingQuality => 'Yayım keyfiyyəti...';
	@override String get trailer => 'Treyler';
	@override String get manageMedia => 'Medianı idarə et...';
	@override String get playbackOptions => 'Oxutma seçimləri...';
	@override String get moreActions => 'Daha çox hərəkət';
	@override String get watched => 'Baxıldı';
	@override String get unwatched => 'Baxılmayıb';
	@override String endsAt({required Object time}) => '${time}-da bitir';
	@override String get automatic => 'Avtomatik';
	@override String get usePreferences => 'Oxutma tərcihlərinizdən istifadə edin';
	@override String get mediaInformation => 'Media Məlumatı';
	@override String get fullFileInformation => 'Tam fayl məlumatı';
	@override String get castAndCrew => 'Aktyorlar və Heyət';
}

// Path: kids
class _Translations$kids$az extends Translations$kids$en {
	_Translations$kids$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get timeLimits => 'Ekran vaxtı məhdudiyyətləri';
	@override String get dailyWatchLimit => 'Gündəlik baxış vaxtı';
	@override String get dailyWatchLimitHint => 'Bu cihazda hər gün videonun oxudulmasını məhdudlaşdırır.';
	@override String get noTimeLimit => 'Limit yoxdur';
	@override String minutesLimit({required Object minutes}) => '${minutes} dəqiqə';
	@override String get bedtime => 'Yuxu vaxtı';
	@override String get bedtimeHint => 'Bu saatlarda bu profildən istifadə etmək üçün valideyn PIN lazımdır.';
	@override String get bedtimeStart => 'Yuxu vaxtı başlayır';
	@override String get bedtimeEnd => 'Yuxu vaxtı bitir';
	@override String get timeLimitReached => 'Baxış vaxtı bu gün bitdi';
	@override String get bedtimeReached => 'Yuxu vaxtıdır';
	@override String get timeLimitParentHint => 'Bu sessiyaya davam etmək üçün valideyndən PIN-nu daxil etməyi xahiş edin.';
	@override String get parentUnlock => 'Valideyn kilidini açın';
	@override String get backupProfile => 'Uşaq profilini yedəkləyin';
	@override String get backupExplain => 'Bu profilin saxlanmış adını, xarakterini, məhdudiyyətlərini, görünüşünü və yerli baxış istisnalarını yedəkləyin. Ana PIN-lər, server girişləri, endirmələr və serverin oxunmasının gedişatı daxil deyil.';
	@override String get saveBackupFile => 'Yedek faylı saxla';
	@override String get copyBackup => 'Yedək mətni kopyalayın';
	@override String backupSaved({required Object path}) => 'Uşaq profilinin yedəkləməsi ${path}-da yadda saxlanıldı';
	@override String get backupCopied => 'Uşaq profilinin yedəklənməsi kopyalandı';
	@override String get backupFailed => 'Uşaq profilinin yedəkləməsini saxlamaq mümkün olmadı. Yenidən cəhd edin.';
	@override String get restoreProfile => 'Uşaq profilini bərpa edin';
	@override String get chooseBackupFile => 'Yedek faylı seçin';
	@override String get pasteBackup => 'Yedək mətni yapışdırın';
	@override String get backupText => 'Uşaq profilinin ehtiyat nüsxəsi JSON';
	@override String get pasteFromClipboard => 'Buferdən yapışdırın';
	@override String get restoreReview => 'Bu bərpa edilmiş parametrləri nəzərdən keçirin, sonra cari server bağlantılarınızdan istifadə edərək yeni uşaq profili yaratmaq üçün Saxla. Mövcud profillərin üzərinə yazılmır. Kitabxana seçimləri və baxış istisnaları yalnız eyni server/kitabxana ID-lərinə uyğun gəlir.';
	@override String get restoreInvalid => 'Bu etibarlı dəstəklənən uşaq profilinin yedəkləməsi deyil. Luroka uşaq profilinin JSON ehtiyat nüsxəsini seçin.';
	@override String get deleteProfile => 'Uşaq profilini silin';
	@override String deleteExplain({required Object name}) => '${name} Luroka-dan silinsin? Onların yerli parametrləri, endirmələri və baxış istisnaları silinəcək. Server hesabınız və server tərəfi tarixçəniz qalacaq. Profili daha sonra bərpa etmək istəyirsinizsə, əvvəlcə ehtiyat nüsxəsini yaradın.';
	@override String get profileDeleted => 'Uşaq profili silindi';
	@override String get allowedLibraries => 'İcazə verilən kitabxanalar';
	@override String get unavailableLibrary => 'Əvvəllər seçilmiş kitabxana (hazırda mövcud deyil)';
	@override String get allLibraries => 'Bütün qoşulmuş film və TV kitabxanalarına icazə verin';
	@override String get librariesExplain => 'Xüsusi kitabxanaları seçmək üçün bunu söndürün. Yaş və animasiya qaydaları seçilmiş kitabxanalarda hələ də tətbiq olunur. Seçimdən istifadə edərkən yeni kitabxanalar avtomatik əlavə edilmir.';
	@override String get librariesUnavailable => 'Heç bir film və ya televiziya kitabxanası yüklənmir. Serverə qoşulun və Kitabxanaları açın, sonra seçmək üçün bura qayıdın.';
	@override String get noLibrariesSelected => 'Heç bir kitabxana seçilməyib: bu uşaq heç bir başlıq görməyəcək.';
	@override String get animationOnly => 'Yalnız animasiya';
	@override String get animationExplain => 'Serverinizdə yalnız Animasiya janrı ilə etiketlənmiş başlıqları göstərin. Bu, yaş məhdudiyyətini əvəz etmir: animasiya böyüklər üçün də nəzərdə tutula bilər. Çatışmayan janr metadatası gizlədilib.';
	@override String get allowUnrated => 'Yaş reytinqi olmayan başlıqlara icazə verin';
	@override String get unratedExplain => 'Defolt olaraq söndürülür. Aktiv olduqda, kitabxana və animasiya qaydaları icazə verərsə, çatışmayan və ya qiymətləndirilməmiş təsnifatlar görünə bilər. Onların uyğunluğu yaşa görə yoxlanıla bilməz. Yaş həddini aşan məlum reytinqlər və tanınmayan təsnifatlar gizli qalır.';
	@override String get whoIsWatching => 'Kim baxır?';
	@override String get chooseAdventure => 'Böyük macəraların kiçik bir dünyası.';
	@override String get chooseProfile => 'Məkanınızı seçin. Kino gecəsi edin.';
	@override String welcome({required Object name}) => 'Salam, ${name}!';
	@override String welcomeOlder({required Object name}) => 'Növbəti möhtəşəm hekayəniz, ${name}.';
	@override String get homeSubtitle => 'Böyük sərgüzəştlər. Kiçik kəşflər. Hamısı sizin üçün.';
	@override String get homeSubtitleOlder => 'Yeni sevimli tapın. Qaldığınız yerdən davam edin.';
	@override String get featured => 'Bu günün böyük macərası';
	@override String get featuredOlder => 'Diqqət mərkəzində';
	@override String get moreInfo => 'Ətraflı məlumat';
	@override String get movies => 'Filmlər';
	@override String get shows => 'Şoular';
	@override String get profiles => 'Profillər';
	@override String get adultBadge => 'Böyüklər';
	@override String get avatar => 'Xarakterinizi seçin';
	@override String get avatarExplorer => 'Kosmik tədqiqatçı';
	@override String get avatarFox => 'Tülkü';
	@override String get avatarDinosaur => 'dinozavr';
	@override String get avatarRobot => 'Robot';
	@override String get avatarChildArtist => 'Balaca rəssam';
	@override String get avatarChildSkater => 'Balaca konkisürən';
	@override String get avatarSunrisePerson => 'Günəşin doğuşu portreti';
	@override String get avatarOceanPerson => 'Okean portreti';
	@override String get avatarCat => 'Maraqlı pişik';
	@override String get avatarDog => 'Xoşbəxt it';
	@override String get avatarPanda => 'panda';
	@override String get avatarOwl => 'bayquş';
	@override String get avatarBear => 'ayı';
	@override String get continueAdventure => 'Macəranı davam etdirin';
	@override String get freshStories => 'Kəşf etmək üçün yeni hekayələr';
	@override String get yourMovies => 'Kino vaxtının sevimliləri';
	@override String get yourShows => 'Daha bir epizod';
	@override String get emptyHint => 'Serverinizdə icazə verilən yaş təsnifatı olan başlıqlar olduqda burada yeni sərgüzəştlər görünəcək.';
	@override String get title => 'Uşaqlar üçün Luroka';
	@override String get addProfile => 'Uşaq profili əlavə edin';
	@override String get parentalControls => 'Valideyn nəzarəti';
	@override String get parentPin => 'Valideyn PIN-i';
	@override String get setParentPin => 'Valideyn PIN-ini təyin edin';
	@override String get changeParentPin => 'Valideyn PIN-ini dəyişin';
	@override String get pinExplain => 'Bu PIN cihazdakı böyüklər profillərini və valideyn nəzarətini qoruyur.';
	@override String get name => 'Uşağın adı';
	@override String get ageGroup => 'İcazə verilən yaş təsnifatı';
	@override String get allAges => 'Bütün yaşlar · G, TV-Y, TV-G, U';
	@override String get age7 => '7-ə qədər · həmçinin PG, TV-PG, TV-Y7';
	@override String get age12 => '12-ə qədər · həmçinin 12 və 12A';
	@override String get age16 => '16-a qədər · həmçinin PG-13, TV-14, 15 və 16';
	@override String get ratingExplain => 'Yaş məhdudiyyətindən yuxarı başlıqlar və tanınmayan təsnifatlar gizlədilir. Aşağıda onlara icazə verməyincə, reytinqi olmayan başlıqlar gizlədilir. Qiymətləndirilməmiş epizodlar təsdiqlənmiş seriya təsnifatını miras ala bilər. Reytinqlər serverinizin metadatasından asılıdır.';
	@override String get theme => 'Uşaqların görünüşü';
	@override String get themeExplain => 'Bu profil aktiv olduqda rəngli mövzudan istifadə edin.';
	@override String get sharedLogin => 'Mövcud server girişinizdən istifadə edir. Plex/Emby tərəqqi və baxılan status paylaşılmış olaraq qalır. Məhdudiyyətlər və uşaq profilləri bu cihazda saxlanılır.';
	@override String get hideWatched => 'Uşaqların baxışını Baxmağa Davam et-dən gizlədin';
	@override String get hideExplain => 'Bu cihazda uşaq profillərinin oynadığı filmləri və bütün seriyaları gizlədin. Bu, onları kitabxananızdan silmir və ya server tarixçəsini dəyişdirmir.';
	@override String get clearHistory => 'Uşaqların baxış istisnalarını sıfırlayın';
	@override String get historyReset => 'Uşaqların baxış istisnaları sıfırlandı';
	@override String get blocked => 'Bu başlıq bu uşaq profilində mövcud deyil.';
	@override String get switchProfile => 'Profilə keçin';
	@override String get manageFromAdult => 'Ayarları idarə etmək üçün böyüklər profilinə keçin.';
	@override String get noConnections => 'Uşaq profili əlavə etməzdən əvvəl serveri böyüklər profilinizə qoşun.';
	@override String get created => 'Uşaq profili yaradıldı';
	@override String get updated => 'Uşaq profili yeniləndi';
	@override String get saveFailed => 'Valideyn nəzarətlərini saxlamaq mümkün olmadı. Yenidən cəhd edin.';
	@override String get kidsBadge => 'Uşaqlar';
}

// Path: lurokaDiscovery
class _Translations$lurokaDiscovery$az extends Translations$lurokaDiscovery$en {
	_Translations$lurokaDiscovery$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kəşf et';
	@override String get chooseLibraryHint => 'Kəşf etmək üçün kitabxana seçin';
	@override String get chooseCopyHint => 'Çoxsaylı kitabxanalarda mövcuddur. Tercih etdiyiniz nüsxəni seçin.';
	@override String get weeklyMovies => 'Bu həftə trend filmlər · TMDb';
	@override String get weeklyShows => 'Bu həftənin trend şouları · TMDb';
	@override String get weeklyLibrary => 'Bu həftənin trendləri · Kitabxananızda';
	@override String get popularLibrary => 'İndi məşhur · Kitabxananızda · Cinemeta';
	@override String get publicFeedError => 'Cinemeta kəşfi əlçatan deyil. Yenidən cəhd edin.';
	@override String get oscars => 'Oskarlar · Ən yaxşı film qalibləri';
	@override String get imdb100 => 'IMDb Top 100 film · Sentyabr 2026 snapshot';
	@override String get imdbTv100 => 'IMDb Top 100 şou · Sentyabr 2026 snapshot';
	@override String get emmyComedy => 'Emmys · Komediya seriyası qalibləri · 1971–2026';
	@override String get emmys => 'Emmys · Dram Serial qalibləri · 1966–2026';
	@override String get bafta => 'BAFTA · Ən yaxşı film qalibləri';
	@override String get cannes => 'Kann · Palma d\'Or qalibləri';
	@override String get awardsNote => 'Mükafat kolleksiyalarına Oscar Ən Yaxşı Film tarixi, Emmy dram/komediya qalibləri və genişləndirilmiş BAFTA/Kann seçimləri daxildir. Təkrarlanan qalib başlıqlar bir dəfə görünür. Üzvlük mükafat kateqoriyası tarixçələrindən və Vikidata faktlarından istifadə edir. IMDb Top 100 film/şou siyahıları mmdju/imdb-top250-api-dən 2026-cı ilin sentyabr ayına aid qrafik şəkillərini qoruyur. Yalnız görünən, onlayn kitabxanalarınızdakı uyğunluqlar görünür; kolleksiyanın ölçüsü kitabxananın mövcudluğundan asılıdır.';
	@override String get attribution => 'İctimai populyarlıq siyahıları, metadata və IMDb reytinqləri Cinemeta tərəfindən təmin edilir; onun Populyar siyahıları həftəlik baxış cədvəlləri deyil. Bu məhsul TMDB API istifadə edir, lakin TMDB tərəfindən təsdiqlənməyib və ya sertifikatlaşdırılmayıb. Könüllü TMDb həftəlik tendensiyalar rəqəmlərə baxmaq deyil, TMDb marağı əks etdirir. Xallar mənbə etiketlərini saxlayır.';
	@override String get tmdbSettings => 'Kəşf mənbələri';
	@override String get setupDescription => 'Cinemeta kəşfi dərhal hesab olmadan işləyir: məşhur filmlər və şoular, IMDb reytinqləri və mükafatçılar. API açarı və ya themoviedb.org/settings/api saytından API Oxu Giriş Tokenindən istifadə edərək həftəlik tendensiyalar üçün TMDb-ni istəyə görə birləşdirin. Etibarnaməniz bu cihazda saxlanılır.';
	@override String get apiKey => 'TMDb API açarı / Oxu Giriş Tokeni';
	@override String get connect => 'TMDb qoşun';
	@override String get connecting => 'Qoşulur...';
	@override String get connected => 'TMDb qoşuldu · Həftəlik trendlər və mükafatlar aktiv edildi';
	@override String get builtInKeyNote => 'Luroka-nun daxili paylaşılan TMDb açarında işləyir. Xüsusi tarif limitləri və tam nəzarət üçün aşağıya öz pulsuz açarınızı əlavə edin.';
	@override String get disconnect => 'TMDb-ni ayırın';
	@override String get invalidKey => 'TMDb doğrulamaq mümkün olmadı. Etibarnamənizi və internet bağlantınızı yoxlayın.';
	@override String get feedError => 'TMDb kəşfi əlçatan deyil. Yenidən cəhd edin.';
	@override String get allTitles => 'Bütün başlıqlar';
	@override String get available => 'Kitabxananızda';
	@override String get checking => 'Kitabxanalarınız yoxlanılır...';
	@override String get availabilityUnknown => 'Bəzi kitabxanaları yoxlamaq mümkün olmadı. Təravətləndirməyə çalışın.';
	@override String get noAvailable => 'Yoxlanılan kitabxanalarda heç bir uyğun başlıq tapılmadı.';
	@override String get sourceInfo => 'Həftəlik trendlər və seçilmiş mükafat qalibləri · TMDb';
	@override String get configure => 'Kəşf parametrləri';
}

// Path: app
class _Translations$app$az extends Translations$app$en {
	_Translations$app$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Luroka';
}

// Path: appIcon
class _Translations$appIcon$az extends Translations$appIcon$en {
	_Translations$appIcon$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Proqram ikonu';
	@override String get defaultIcon => 'Defolt';
	@override String get current => 'Cari ikon';
	@override String get locked => 'Dəstəkçi mükafatı';
	@override String get lockedHint => 'Alternativ nişanlar Dəstəkçinin üstünlükləridir.';
	@override String get changeFailed => 'Tətbiq ikonasını dəyişmək mümkün olmadı';
	@override String get launcherHint => 'Luroka-dan ayrıldıqdan sonra yeni ikona əsas ekranınızda görünür.';
	@override String get tvLauncherHint => 'Luroka-ni tərk etdikdən sonra yeni banner görünür. Android TV televizor yenidən başlayana qədər köhnəsini göstərməyə davam edə bilər.';
	@override late final _Translations$appIcon$names$az names = _Translations$appIcon$names$az._(_root);
}

// Path: auth
class _Translations$auth$az extends Translations$auth$en {
	_Translations$auth$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get signInWithPlex => 'Plex ilə daxil ol';
	@override String get showQRCode => 'QR kodu göstər';
	@override String get authenticate => 'Təsdiqlə';
	@override String get authenticationTimeout => 'Təsdiqləmə vaxtı bitdi. Lütfən təzədən cəhd edin.';
	@override String get scanQRToSignIn => 'Daxil olmaq üçün bu QR kodu skan edin';
	@override String get waitingForAuth => 'Təsdiqləmə gözlənilir...\nSəyahətçinizdən (brauzer) daxil olun.';
	@override String get useBrowser => 'Səyahətçini istifadə et';
	@override String get or => 'və ya';
	@override String connectToMediaBrowser({required Object product}) => '${product}-a qoşul';
	@override String get quickConnect => 'Sürətli Qoşulma';
	@override String get useQuickConnect => 'Sürətli Qoşulmanı istifadə et';
	@override String get quickConnectInstructions => 'Jellyfin-də Sürətli Qoşulmanı açın və bu kodu daxil edin.';
	@override String get quickConnectWaiting => 'Təsdiq gözlənilir…';
	@override String get quickConnectCancel => 'Ləğv et';
	@override String get quickConnectExpired => 'Sürətli Qoşulmanın vaxtı bitdi. Təzədən cəhd edin.';
	@override String get localDataRecoveryRequired => 'Luroka yerli daxil olma və gözləyən oxutma məlumatlarını təhlükəsiz bərpa edə bilmədi. Lütfən təzədən daxil olun.';
	@override String get pinCheckRejected => 'Plex PIN yoxlaması rədd edildi';
}

// Path: common
class _Translations$common$az extends Translations$common$en {
	_Translations$common$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get cancel => 'Ləğv et';
	@override String get save => 'Yadda saxla';
	@override String get close => 'Bağla';
	@override String get clear => 'Təmizlə';
	@override String get reset => 'Sıfırla';
	@override String get later => 'Sonra';
	@override String get submit => 'Göndər';
	@override String get confirm => 'Təsdiqlə';
	@override String get retry => 'Təzədən cəhd et';
	@override String get logout => 'Çıxış et';
	@override String get unknown => 'Məlum deyil';
	@override String get refresh => 'Yenilə';
	@override String get yes => 'Bəli';
	@override String get no => 'Xeyr';
	@override String get delete => 'Sil';
	@override String get edit => 'Düzəliş et';
	@override String get shuffle => 'Qarışdır';
	@override String get addTo => 'Əlavə et...';
	@override String get createNew => 'Yenisini yarat';
	@override String get connect => 'Qoşul';
	@override String get disconnect => 'Əlaqəni kəs';
	@override String get play => 'Oynat';
	@override String get pause => 'Fasilə';
	@override String get resume => 'Davam et';
	@override String get error => 'Xəta';
	@override String get search => 'Axtar';
	@override String get home => 'Ana səhifə';
	@override String get back => 'Geri';
	@override String get settings => 'Tənzimləmələr';
	@override String get mute => 'Səsi söndür';
	@override String get ok => 'Oldu';
	@override String get off => 'Söndürülüb';
	@override String get options => 'Seçimlər';
	@override String seasonNumber({required Object number}) => 'Mövsüm ${number}';
	@override String episodeNumberTitle({required Object number, required Object title}) => 'Seriya ${number} - ${title}';
	@override String chapterNumber({required Object number}) => 'Hissə ${number}';
	@override String get reconnect => 'Yenidən qoşul';
	@override String get viewAll => 'Hamısına bax';
	@override String get serversUnreachable => 'Serverlər əlçatmazdır';
	@override String get loading => 'Yüklənir...';
	@override String get fullscreen => 'Tam ekran';
	@override String get exitFullscreen => 'Tam ekrandan çıx';
	@override late final _Translations$common$ratingSource$az ratingSource = _Translations$common$ratingSource$az._(_root);
	@override String get notAvailable => 'N/A';
	@override String get url => 'URL';
	@override String get letterKeys => 'ABC';
	@override late final _Translations$common$mediaKind$az mediaKind = _Translations$common$mediaKind$az._(_root);
	@override String get stay => 'Qal';
	@override String get exitApp => 'Çıx';
	@override String get exitAppBody => 'Luroka-dan çıxmaq istədiyinizə əminsiniz?';
}

// Path: tvHints
class _Translations$tvHints$az extends Translations$tvHints$en {
	_Translations$tvHints$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get select => 'seçin';
	@override String get browse => 'Gözdən keçirin';
	@override String get back => 'Geri';
}

// Path: screens
class _Translations$screens$az extends Translations$screens$en {
	_Translations$screens$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get licenses => 'Lisenziyalar';
	@override String get switchProfile => 'Profili dəyiş';
	@override String get subtitleStyling => 'Altyazı tənzimləmələri';
	@override String get mpvConfig => 'mpv.conf';
	@override String get logs => 'Jurnallar';
}

// Path: mediaExtras
class _Translations$mediaExtras$az extends Translations$mediaExtras$en {
	_Translations$mediaExtras$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get trailers => 'Qoşqular';
	@override String get featurettes => 'Bədii filmlər';
	@override String get interviews => 'Müsahibələr';
	@override String get deletedScenes => 'Silinmiş Səhnələr';
	@override String get behindTheScenes => 'Pərdəarxası';
	@override String get scenesAndClips => 'Səhnələr və Kliplər';
	@override String get other => 'Digər Əlavələr';
}

// Path: update
class _Translations$update$az extends Translations$update$en {
	_Translations$update$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get available => 'Yenilənmə var';
	@override String versionAvailable({required Object version}) => '${version} versiyası əlçatandır';
	@override String currentVersion({required Object version}) => 'Cari: ${version}';
	@override String get skipVersion => 'Bu versiyanı ötür';
	@override String get viewRelease => 'Buraxılışa bax';
	@override String get latestVersion => 'Siz ən son versiyadasınız';
	@override String get checkFailed => 'Yenilənmələr yoxlanıla bilmədi';
}

// Path: supporter
class _Translations$supporter$az extends Translations$supporter$en {
	_Translations$supporter$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Luroka Dəstəyi';
	@override String get intro => 'Luroka inkişafını dəstəkləyən və kosmetik əlavələri açan birdəfəlik alış:';
	@override String get presetThemes => 'Əvvəlcədən təyin edilmiş mövzular';
	@override String get presetThemesDescription => 'Ember, Buzlaq, Meşə, Gavalı və Kağız';
	@override String get customTheme => 'Fərdi mövzu';
	@override String get customThemeDescription => 'Hər rəngi özünüz seçin';
	@override String get appIcons => 'Proqram nişanları';
	@override String get appIconsDescription => 'Alternativ Luroka ikonasını seçin';
	@override String buy({required Object price}) => '${price} üçün satın alın';
	@override String get loadingPrice => 'Qiymət yüklənir...';
	@override String get restore => 'Satınalmaları bərpa edin';
	@override String get pending => 'Alışınız ödəniş və ya təsdiq gözləyir. Mağaza tamamlayan kimi əlavələr kilidini açır.';
	@override String get thankYouTitle => 'Luroka-nu dəstəklədiyiniz üçün təşəkkür edirik';
	@override String get thankYouBody => 'Dəstəkçi əlavələriniz açıldı.';
	@override String get tileSubtitle => 'Birdəfəlik satınalma ilə mövzuların və tətbiq nişanlarının kilidini açın';
	@override String get tileSubtitleThemesOnly => 'Birdəfəlik alışla mövzuların kilidini açın';
	@override String get tileUnlocked => 'Dəstəyiniz üçün təşəkkür edirik';
	@override late final _Translations$supporter$errors$az errors = _Translations$supporter$errors$az._(_root);
}

// Path: settings
class _Translations$settings$az extends Translations$settings$en {
	_Translations$settings$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tənzimləmələr';
	@override String get supportDeveloper => 'Luroka-yə dəstək ol';
	@override String get supportDeveloperDescription => 'İnkişafı maliyyələşdirmək üçün Liberapay vasitəsilə iyanə edin';
	@override String get language => 'Dil';
	@override String get theme => 'Mövzu';
	@override String get appearance => 'Görünüş';
	@override String get videoPlayback => 'Video oynatma';
	@override String get videoPlaybackDescription => 'Oynatma davranışını tənzimləyin';
	@override String get advanced => 'Təkmilləşdirilmiş';
	@override String get episodePosterMode => 'Seriya poster stili';
	@override String get seriesPoster => 'Serial posteri';
	@override String get seasonPoster => 'Mövsüm posteri';
	@override String get episodeThumbnail => 'Kadr önizləməsi';
	@override String get homeHeroSize => 'Karusel ölçüsü';
	@override String get homeHeroSizeSmall => 'Kiçik';
	@override String get homeHeroSizeMedium => 'Orta';
	@override String get homeHeroSizeLarge => 'Böyük';
	@override String get secondsLabel => 'Saniyə';
	@override String get minutesLabel => 'Dəqiqə';
	@override String get secondsShort => 'san';
	@override String get minutesShort => 'dəq';
	@override String durationHint({required Object min, required Object max}) => 'Müddəti daxil edin (${min}-${max})';
	@override String get systemTheme => 'Sistem';
	@override String get lightTheme => 'Açıq';
	@override String get darkTheme => 'Tünd';
	@override String get oledTheme => 'OLED';
	@override String get libraryDensity => 'Kitabxana sıxlığı';
	@override String get displayScale => 'Ekran miqyası';
	@override String get compact => 'Sıx';
	@override String get comfortable => 'Rəhat';
	@override String get gridSpacing => 'Tor aralığı';
	@override String get gridSpacingTight => 'Sıx';
	@override String get gridSpacingNormal => 'Normal';
	@override String get gridSpacingSpacious => 'Geniş';
	@override String get tvCornerSpotlightBackdrop => 'Künc işıqlandırma fonu';
	@override String get tvCornerSpotlightBackdropDescription => 'Arxa fonu ekranı örtmək əvəzinə sağ üst küncdə göstər';
	@override String get viewMode => 'Baxış rejimi';
	@override String get gridView => 'Tor';
	@override String get listView => 'Siyahı';
	@override String get continueWatchingAction => 'İzləməyə davam et əməliyyatı';
	@override String get continueWatchingPlay => 'Oynat';
	@override String get continueWatchingDetails => 'Ətraflı aç';
	@override String get episodeAction => 'Seriya əməliyyatı';
	@override String get episodePlay => 'Oynat';
	@override String get episodeDetails => 'Ətraflı aç';
	@override String get useGlobalHubs => 'Ana səhifə quruluşunu istifadə et';
	@override String get useGlobalHubsDescription => 'Birləşdirilmiş ana səhifə bölmələrini göstər. Əks halda kitabxana tövsiyələrini istifadə edir.';
	@override String get showServerNameOnHubs => 'Bölmələrdə server adını göstər';
	@override String get showServerNameOnHubsDescription => 'Bölmə başlıqlarında həmişə server adlarını göstər.';
	@override String get groupLibrariesByServer => 'Kitabxanaları serverə görə qrupla';
	@override String get groupLibrariesByServerDescription => 'Yan menyu kitabxanalarını hər media serverinin altında qruplaşdır.';
	@override String get alwaysKeepSidebarOpen => 'Yan menyunu həmişə açıq saxla';
	@override String get alwaysKeepSidebarOpenDescription => 'Yan menyu genişlənmiş qalır və məzmun sahəsi buna uyğunlaşır';
	@override String get showUnwatchedCount => 'Baxılmamış sayını göstər';
	@override String get showUnwatchedCountDescription => 'Seriallarda və mövsümlərdə baxılmamış seriya sayını göstər';
	@override String get showWatchedIndicators => 'Baxılmış göstəriciləri göstər';
	@override String get showWatchedIndicatorsDescription => 'Baxılmış kinolarda, seriallarda və seriyalarda quşçuq göstər';
	@override String get showEpisodeNumberOnCards => 'Kartlarda seriya nömrəsini göstər';
	@override String get showEpisodeNumberOnCardsDescription => 'Seriya kartlarında mövsüm və seriya nömrəsini göstər';
	@override String get showSeasonPostersOnTabs => 'Mərhələlərdə mövsüm posterlərini göstər';
	@override String get showSeasonPostersOnTabsDescription => 'Hər mövsümün posterini öz bölməsinin üstündə göstər';
	@override String get tvFullCardLayout => 'Tam TV kartları';
	@override String get tvFullCardLayoutDescription => 'Aktyor adları üstündə olan yalnız şəkil tərkibli TV kartları istifadə et';
	@override String get focusGlow => 'Fokus parıltısı';
	@override String get focusGlowDescription => 'Fokuslanmış kartın ətrafında yumşaq parıltı çək';
	@override String get visualEffects => 'Vizual effektlər';
	@override String get visualEffectsAuto => 'Avtomatik';
	@override String get visualEffectsAutoDescription => 'Zəif cihazlarda effektləri avtomatik olaraq azalt';
	@override String get visualEffectsFull => 'Tam';
	@override String get visualEffectsReduced => 'Azaldılmış';
	@override String get visualEffectsReducedDescription => 'Daha az animasiya və daha aşağı keyfiyyətli şəkillər';
	@override String get hideSpoilers => 'Baxılmamış seriyalar üçün spoylerləri gizlə';
	@override String get hideSpoilersDescription => 'Baxılmamış seriyalar üçün miniatürləri və təsvirləri bulanıqlaşdır';
	@override String get playerBackend => 'Oynadıcı infrastrukturu';
	@override String get playerBackendDescription => 'mpv daha çox format oynayır və daha çox funksiyaya imkan verir — tövsiyə olunur. ExoPlayer oxutma uğursuz olarsa və ya bu cihazda kəkələyərsə kömək edir.';
	@override String get exoPlayer => 'ExoPlayer';
	@override String get mpv => 'mpv';
	@override String get hardwareDecoding => 'Avadanlıq kod açılması';
	@override String get hardwareDecodingDescription => 'Mümkün olduqda avadanlıq sürətləndirməsini istifadə et';
	@override String get playbackBuffer => 'Oxutma buferi';
	@override String get playbackBufferAuto => 'Avtomatik (tövsiyə olunur)';
	@override String get playbackBufferLarge => 'Böyük';
	@override String get playbackBufferExtraLarge => 'Çox böyük';
	@override String get playbackBufferDescription => 'Qeyri-sabit əlaqələrə qarşı daha çox buferləyir. Bufer ölçüsü ilə də məhdudlaşır.';
	@override String get defaultQualityTitle => 'Defolt keyfiyyət';
	@override String get streamingQualityOriginalHint => 'Faylı tam olaraq saxlandığı kimi oynayır — ən yaxşı keyfiyyət, ən çox bant genişliyindən istifadə edir';
	@override String get cellularQualityTitle => 'Mobil şəbəkədə defolt keyfiyyət';
	@override String get cellularQualitySameAsDefault => 'Defolt keyfiyyətlə eyni';
	@override String get directPlayCoveredQuality => 'Kiçik videoları orijinal keyfiyyətdə oynat';
	@override String get directPlayCoveredQualityDescription => 'Keyfiyyət limitinə uyğun gələn videoları yenidən kodlaşdırmaq əvəzinə birbaşa oynat';
	@override String get videoCodecs => 'Video kodekləri';
	@override String get videoCodecsDescription => 'İşarələnməmiş kodekləri server yenidən kodlaşdırır';
	@override String get videoCodecsAlwaysAccepted => 'Həmişə qəbul edilir';
	@override String get musicQualityTitle => 'Musiqi keyfiyyəti';
	@override String get subtitleStyling => 'Altyazı tənzimləmələri';
	@override String get subtitleStylingDescription => 'Altyazı görünüşünü özünüləşdirin';
	@override String get smallSkipDuration => 'Kiçik ötürmə müddəti';
	@override String get largeSkipDuration => 'Böyük ötürmə müddəti';
	@override String get rewindOnResume => 'Davam edərkən geri sar';
	@override String secondsUnit({required Object seconds}) => '${seconds} saniyə';
	@override String get defaultSleepTimer => 'Defolt yuxu taymeri';
	@override String minutesUnit({required Object minutes}) => '${minutes} dəqiqə';
	@override String get rememberTrackSelections => 'Hər film/serial üçün səs/altyazı seçimlərini xatırla';
	@override String get rememberTrackSelectionsDescription => 'Hər məzmun üçün səs və altyazı seçimlərini yadda saxla';
	@override String get rememberTrackSelectionsBackendRule => 'Plex hər seçimi serverdə fayl üzrə saxlayır; Jellyfin həmçinin hesabın "Seçimləri xatırla" funksiyasını aktivləşdirir; Emby dəstəklənmir';
	@override String get followServerTrackSelections => 'Hər epizod üçün serverin trek seçimlərini istifadə et';
	@override String get followServerTrackSelectionsDescription => 'Epizod dəyişəndə cari seçimi köçürmək əvəzinə serverdə seçilmiş səs və altyazını tətbiq et';
	@override String get resumeMusicOnLaunch => 'Musiqi sessiyasını yadda saxla';
	@override String get resumeMusicOnLaunchDescription => 'Tətbiq açılanda son mahnını dayandırıldığı yerdə fasilədə aç';
	@override String get showChapterMarkersOnTimeline => 'Zaman çubuğunda hissə işarələrini göstər';
	@override String get showChapterMarkersOnTimelineDescription => 'Zaman çubuğunu hissə sərhədlərinə böl';
	@override String get specialsOrdering => 'Xüsusi bölmələr epizod sırasına görə';
	@override String get specialsOrderingDescription => 'Xüsusi bölmələrin serialın izləmə sırasındakı yeri';
	@override String get specialsOrderingServer => 'Server sırasını izlə';
	@override String get specialsOrderingAirDate => 'Yayım tarixinə görə qarışdır';
	@override String get specialsOrderingLast => 'Adi mövsümlərdən sonra';
	@override String get clickVideoTogglesPlayback => 'Oynat/fasilə üçün videoya toxun';
	@override String get clickVideoTogglesPlaybackDescription => 'İdarəetməni göstərmək əvəzinə oynatmaq/fasilə etmək üçün videoya toxun.';
	@override String get videoPlayerControls => 'Video oynadıcı idarəetmələri';
	@override String get keyboardShortcuts => 'Klaviatura qısayolları';
	@override String get keyboardShortcutsDescription => 'Klaviatura qısayollarını özünüləşdirin';
	@override String get videoPlayerNavigation => 'Video oynadıcı naviqasiyası';
	@override String get videoPlayerNavigationDescription => 'Oynadıcı idarəetmələrində hərəkət etmək üçün ox düymələrini istifadə edin';
	@override String get watchTogetherRelay => 'Birlikdə İzlə relesi';
	@override String get watchTogetherRelayDescription => 'İctimai Açıq İzləmə Partiyasının releləri siz özünüz təyin etməsəniz';
	@override String get watchTogetherRelayHint => 'https://my-relay.example.com';
	@override String get watchTogetherRelayInvalid => 'Düzgün HTTP və ya HTTPS rele ünvanı daxil edin.';
	@override String get crashReporting => 'Xəta hesabatı';
	@override String get crashReportingDescription => 'Tətbiqi təkmilləşdirməyə kömək etmək üçün xəta hesabatları göndərin';
	@override String get debugLogging => 'Xəta saxlama jurnalı';
	@override String get debugLoggingDescription => 'Problemləri həll etmək üçün ətraflı jurnal qeydiyyatını aktivləşdirin';
	@override String get viewLogs => 'Jurnallara bax';
	@override String get viewLogsDescription => 'Tətbiq jurnallarına baxın';
	@override String get clearImageCache => 'Şəkil keşini təmizlə';
	@override String get clearImageCacheDescription => 'Keşlənmiş şəkilləri təmizləyir. Yenidən yüklənənədək şəkillər daha yavaş yüklənə bilər.';
	@override String get clearImageCacheSuccess => 'Şəkil keşi uğurla təmizləndi';
	@override String get resetSettings => 'Tənzimləmələri sıfırla';
	@override String get resetSettingsDescription => 'Defolt tənzimləmələri bərpa edin. Bu əməliyyat geri qaytarıla bilməz.';
	@override String get resetSettingsSuccess => 'Tənzimləmələr uğurla sıfırlandı';
	@override String get backup => 'Ehtiyat nüsxə';
	@override String get exportSettings => 'Tənzimləmələri ixrac et';
	@override String get exportSettingsDescription => 'Seçimlərinizi fayla yadda saxlayın';
	@override String get exportSettingsSuccess => 'Tənzimləmələr ixrac edildi';
	@override String get importSettings => 'Tənzimləmələri idxal et';
	@override String get importSettingsDescription => 'Seçimləri fayldan bərpa edin';
	@override String get importSettingsConfirm => 'Bu cari tənzimləmələrinizin üzərinə yazacaq. Davam edilsin?';
	@override String get importSettingsSuccess => 'Tənzimləmələr idxal edildi';
	@override String get importSettingsInvalidFile => 'Bu fayl düzgün Luroka tənzimləmələr faylı deyil';
	@override String get importSettingsNoUser => 'Tənzimləmələri idxal etməzdən əvvəl daxil olun';
	@override String get shortcutsReset => 'Qısayollar defolt vəziyyətə sıfırlandı';
	@override String get resetShortcutsConfirm => 'Bu, fərdi qısayollarınızı defoltlarla əvəz edəcək. Davam edilsin?';
	@override String get about => 'Haqqında';
	@override String get aboutDescription => 'Tətbiq məlumatı və lisenziyalar';
	@override String get updates => 'Yenilənmələr';
	@override String get updateAvailable => 'Yenilənmə var';
	@override String get checkForUpdates => 'Yenilənmələri yoxla';
	@override String get autoCheckUpdatesOnStartup => 'Açılışda yenilənmələri avtomatik yoxla';
	@override String get autoCheckUpdatesOnStartupDescription => 'Açılışda yenilənmə olduqda xəbərdar et';
	@override String get validationErrorEnterNumber => 'Lütfən düzgün rəqəm daxil edin';
	@override String validationErrorDuration({required Object min, required Object max, required Object unit}) => 'Müddət ${min} və ${max} ${unit} arasında olmalıdır';
	@override String shortcutAlreadyAssigned({required Object action}) => 'Qısayol artıq ${action} üçün təyin edilib';
	@override String shortcutUpdated({required Object action}) => '${action} üçün qısayol yeniləndi';
	@override String get saveFailed => 'Dəyişikliklər yadda saxlanıla bilmədi. Təzədən cəhd edin.';
	@override String get autoPlayAndSkip => 'Avtomatik oynat və ötür';
	@override String get autoPlayNextEpisode => 'Növbəti seriyanı avtomatik oynat';
	@override String get autoPlayNextEpisodeDescription => 'Bir seriya bitdikdə növbətisini avtomatik başlat';
	@override String get shuffleStartsFromBeginning => 'Qarışdırma əvvəldən başlayır';
	@override String get shuffleStartsFromBeginningDescription => 'Qarışdırarkən hər seriyanı davam etdirmək əvəzinə əvvəldən başlat';
	@override String get playNextCountdown => 'Növbəti seriya geri sayımı';
	@override String get playNextCountdownImmediate => 'Dərhal oynat';
	@override String get skipIntroMode => 'Girişi ötür';
	@override String get skipIntroModeOffDescription => 'Girişləri ötürmə düyməsi olmadan normal oynat';
	@override String get skipIntroModeButtonDescription => 'Giriş başlayanda ötürmə düyməsini göstər';
	@override String get skipIntroModeAutoDescription => 'Girişləri aşağıdakı ləngimədən sonra avtomatik ötür';
	@override String get skipCreditsMode => 'Titrləri ötür';
	@override String get skipCreditsModeOffDescription => 'Titrləri ötürmə düyməsi olmadan normal oynat';
	@override String get skipCreditsModeButtonDescription => 'Titrlər başlayanda ötürmə düyməsini göstər';
	@override String get skipCreditsModeAutoDescription => 'Titrləri avtomatik ötür və növbəti seriyanı oynat';
	@override String get skipMarkerModeOff => 'Söndürülüb';
	@override String get skipMarkerModeButton => 'Düyməni göstər';
	@override String get skipMarkerModeAuto => 'Avtomatik';
	@override String get forceSkipMarkerFallback => 'Ehtiyat işarələri məcburi et';
	@override String get forceSkipMarkerFallbackDescription => 'Plex işarələri olsa belə hissə başlığı şablonlarını istifadə et';
	@override String get autoSkipDelay => 'Avtomatik ötürmə ləngiməsi';
	@override String autoSkipDelayDescription({required Object seconds}) => 'Avtomatik ötürməzdən əvvəl ${seconds} saniyə gözlə';
	@override String get introPattern => 'Giriş işarəsi şablonu';
	@override String get introPatternDescription => 'Hissə başlıqlarında giriş işarələrini tapmaq üçün Regex şablonu';
	@override String get creditsPattern => 'Titr işarəsi şablonu';
	@override String get creditsPatternDescription => 'Hissə başlıqlarında titr işarələrini tapmaq üçün Regex şablonu';
	@override String get invalidRegex => 'Səhv requlyar ifadə (Regex)';
	@override String get regex => 'Requlyar ifadə (Regex)';
	@override String get downloads => 'Yükləmələr';
	@override String get downloadLocationDescription => 'Yüklənmiş məzmunun harada saxlanacağını seçin';
	@override String get downloadLocationDefault => 'Defolt (Tətbiq yaddaşı)';
	@override String get downloadLocationCustom => 'Xüsusi məkan';
	@override String get selectFolder => 'Qovluq seç';
	@override String get resetToDefault => 'Defolt vəziyyətə sıfırla';
	@override String currentPath({required Object path}) => 'Cari: ${path}';
	@override String get downloadLocationChanged => 'Yükləmə məkanı dəyişdirildi';
	@override String get downloadLocationReset => 'Yükləmə məkanı defolt vəziyyətə sıfırlandı';
	@override String get downloadLocationInvalid => 'Seçilmiş qovluğa yazmaq olmur';
	@override String get downloadLocationPickerUnavailable => 'Qovluq seçimi bu cihazda əlçatan deyil';
	@override String get downloadOnWifiOnly => 'Yalnız Wi-Fi ilə yüklə';
	@override String get downloadOnWifiOnlyDescription => 'Mobil məlumat istifadə edildikdə yükləmələri dayandır';
	@override String get downloadWifiScope => 'Bu cihazdakı bütün profillərə və endirmələrə aiddir.';
	@override String get autoRemoveWatchedDownloads => 'Baxılmış yükləmələri avtomatik sil';
	@override String get autoRemoveWatchedDownloadsDescription => 'Baxılmış yükləmələri avtomatik olaraq sil';
	@override String get cellularDownloadBlocked => 'Mobil şəbəkədə yükləmələr bloklanıb. Wi-Fi istifadə edin və ya tənzimləməni dəyişin.';
	@override String get maxVolume => 'Maksimal səs';
	@override String get maxVolumeDescription => 'Sakit videolar üçün səsin 100%-dən yuxarı qalxmasına icazə ver';
	@override String maxVolumePercent({required Object percent}) => '%${percent}';
	@override String get discordRichPresence => 'Discord-da fəaliyyət statusu';
	@override String get discordRichPresenceDescription => 'Discord-da nəyə baxdığınızı göstərin';
	@override String get services => 'Xidmətlər';
	@override String get servicesDescription => 'Trakt, MyAnimeList, Seerr və daha çoxunu qoşun';
	@override String get manageLibrariesDescription => 'Kitabxanaları yenidən sıralayın və gizlədin';
	@override String get companionRemoteServer => 'Köməkçi pult serveri';
	@override String get companionRemoteServerDescription => 'Şəbəkənizdəki mobil cihazların bu tətbiqi idarə etməsinə icazə verin';
	@override String get companionRemoteServerStartFailed => 'Köməkçi pult serveri başladıla bilmədi';
	@override String get companionRemoteServerStopFailed => 'Köməkçi pult serveri dayandırıla bilmədi';
	@override String get autoPip => 'Avtomatik Pəncərə daxilində Pəncərə (PiP)';
	@override String get autoPipDescription => 'Oynatma zamanı tətbiqdən çıxdıqda avtomatik PiP rejiminə keç';
	@override String get matchContentFrameRate => 'Kadr tezliyini uyğunlaşdır';
	@override String get matchContentFrameRateDescription => 'Ekran yenilənmə tezliyini video məzmununa uyğunlaşdır';
	@override String get matchContentResolution => 'Məzmunun görüntü keyfiyyətinə uyğunlaş';
	@override String get matchContentResolutionDescription => 'Ekranı videonun öz görüntü keyfiyyətinə keçirir ki, miqyaslandırmanı televizorunuz etsin. Oxutma zamanı menyular və altyazılar da miqyaslandırılır';
	@override String get matchRefreshRate => 'Yenilənmə tezliyini uyğunlaşdır';
	@override String get matchRefreshRateDescription => 'Tam ekranda ekran yenilənmə tezliyini uyğunlaşdır';
	@override String get matchDynamicRange => 'Dinamik diapazonu uyğunlaşdır';
	@override String get matchDynamicRangeDescription => 'HDR məzmun üçün HDR-ı açın, sonra SDR-a qayıdın';
	@override String get displaySwitchDelay => 'Ekran dəyişmə ləngiməsi';
	@override String get tunneledPlayback => 'Tünellənmiş oynatma';
	@override String get tunneledPlaybackDescription => 'Video tünelləməni istifadə et. HDR oynatmada qara ekran görünürsə və ya hərəkət takılırsa söndürün.';
	@override String get audioPassthrough => 'Səsin birbaşa ötürülməsi (Passthrough)';
	@override String get audioPassthroughDescription => 'Dolby/DTS səslərini yenidən kodlamadan TV və ya resiverə göndərir. Səs gəlmirsə söndürün.';
	@override String get audioPassthroughDescriptionApple => 'Atmos daxil olmaqla Dolby Digital Plus üçün Apple-ın daxili dekoderini istifadə edin. DTS və TrueHD yenə də çoxkanallı PCM kimi oynadılır. Səs gəlmirsə söndürün.';
	@override String get audioPassthroughDescriptionAppleSpatial => 'Atmos da daxil olmaqla Dolby Digital Plus üçün Apple-ın doğma Dolby dekoderindən istifadə edin. iOS, iPadOS və tvOS 26 və ya daha yeni versiyalarda TrueHD Atmos və DTS:X məkan audio kimi oynayır. Digər DTS və TrueHD trekləri çoxkanallı PCM kimi oynayır. Səsiniz yoxdursa söndürün.';
	@override String get audioPassthroughOverriddenByNormalization => 'Səsin gurluğunu normallaşdırma aktivkən söndürülüb';
	@override String get audioChannelLimit => 'Audio Kanallar';
	@override String get audioChannelLimitDescription => 'Hər kanalı oxuya bilməyən dinamiklər, qulaqlıqlar və ya HDMI quraşdırmaları üçün deşifrə edilmiş səsi aşağı qarışdırın';
	@override String get audioChannelLimitOriginal => 'Orijinal';
	@override String get audioChannelLimitOriginalDescription => 'Trekdəki hər kanalı oynayın';
	@override String get audioChannelLimitSurround51 => '5.1-ə qədər';
	@override String get audioChannelLimitSurround51Description => 'Yalnız 5.1 PCM qəbul edən televizorlar və qəbuledicilər üçün 7.1-dən 5.1-ə qədər qarışdırın. Keçid təsirsizdir.';
	@override String get audioChannelLimitStereo => 'Stereo';
	@override String get audioChannelLimitStereoDescription => 'Stereo dinamiklər və ya qulaqlıqlar üçün iki kanala qədər qarışdırın. Keçid keçidini söndürür.';
	@override String get downmixCenterBoost => 'Mərkəz kanal gücləndirilməsi';
	@override String downmixCenterBoostValue({required Object db}) => '${db} dB';
	@override String get downmixCenterBoostLabel => 'Gücləndirmə (dB)';
	@override String get downmixCenterBoostShort => 'dB';
	@override String get audioDownmixNormalize => 'Çevirmədə səsi normallaşdır';
	@override String get audioDownmixNormalizeDescription => 'Səs kəsilmələrinin qarşısını almaq üçün səviyyəni endirin. Orijinal səs səviyyəsini saxlamaq üçün söndürün (yüksək səsli səhnələr təhrif oluna bilər).';
	@override String get dvConversionMode => 'Dolby Vision çevrilməsi';
	@override String get dvConversionModeDescription => 'Dolby Vision Profile 7 fayllarının necə emal ediləcəyini seçin.';
	@override String get dvConversionAuto => 'Avtomatik';
	@override String get dvConversionNative => 'Daxili / Söndürülüb';
	@override String get dvConversionDv81 => 'P7 → P8.1';
	@override String get dvConversionHevcStrip => 'P7 → HEVC';
	@override String get dvConversionAutoDescription => 'Cihaz imkanlarının təyini və normal davranışdan istifadə et';
	@override String get dvConversionNativeDescription => 'Daxili DV7-ni məcburi et';
	@override String get dvConversionDv81Description => 'Dolby Vision profile 8.1-ə çevrilməni məcburi et';
	@override String get dvConversionHevcStripDescription => 'Dolby Vision təbəqələrini sil və sadə HEVC kimi təqdim et';
	@override String get disableDolbyVision => 'Dolby Vision-u söndür';
	@override String get disableDolbyVisionDescription => 'Faylda varsa, Dolby Vision əvəzinə HDR10 və ya HLG təbəqəsini oynat';
	@override String get hdrSdrConversion => 'HDR-dən SDR-ə çevirmə';
	@override String get hdrSdrConversionDescription => 'Ekran HDR göstərə bilmədikdə HDR videonu nəyin çevirəcəyini seçin.';
	@override String get hdrSdrConversionAuto => 'Avtomatik';
	@override String get hdrSdrConversionAutoDescription => 'Android 9 və sonrakı versiyalarda cihaz, köhnə versiyalarda oynadıcı';
	@override String get hdrSdrConversionDevice => 'Cihaz';
	@override String get hdrSdrConversionDeviceDescription => 'Çevirməni cihazın video avadanlığı edir. Ən sürətlisi, lakin rənglər cihazdan asılıdır';
	@override String get hdrSdrConversionPlayer => 'Oynadıcı';
	@override String get hdrSdrConversionPlayerDescription => 'Çevirməni oynadıcı edir. Sabit rənglər, lakin zəif TV qutularında 4K ilişə bilər';
	@override String get deinterlace => 'Deinterleysinq';
	@override String get deinterlaceDescription => 'Sətirlərarası videodakı darama artefaktlarını aradan qaldır (yalnız mpv oynadıcısı)';
	@override String get deinterlaceOff => 'Söndür';
	@override String get deinterlaceOffDescription => 'Şifrə açılmış kimi interlaced videonu göstərin';
	@override String get deinterlaceVideo => 'Video';
	@override String get deinterlaceVideoDescription => 'Hər bir sahəni tam çərçivəyə çevirin. İdman, xəbərlər və konsertlər kimi TV üçün çəkilmiş videolar üçün';
	@override String get deinterlaceFilm => 'Film';
	@override String get deinterlaceFilmDescription => 'NTSC DVD-lərində ümumi olan 29,97 kadr/saniyəyə qədər telesinasiya edilmiş film və animasiyanın orijinal kadrlarını bərpa edin. Televiziya kəkələyənlər üçün video çəkiliş. Canlı TV Videodan istifadə edir';
	@override String get requireProfileSelectionOnOpen => 'Açılışda profil soruş';
	@override String get requireProfileSelectionOnOpenDescription => 'Tətbiq hər dəfə açıldıqda profil seçimini göstər';
	@override String get forceTvMode => 'TV rejimini məcburi et';
	@override String get forceTvModeKeepTitle => 'TV düzəni saxlanılsın?';
	@override String forceTvModeKeepBody({required Object seconds}) => 'Televizor planı uzaqdan idarəetmə üçün nəzərdə tutulmuşdur. ${seconds} s-də normal tərtibata qayıtmaq.';
	@override String get forceTvModeKeepConfirm => 'TV düzənini saxlayın';
	@override String get forceTvModeReverted => 'TV tərtibatı geri qaytarıldı';
	@override String get forceTvModeDescription => 'TV interfeysini məcburi et. Avtomatik təyin etməyən cihazlar üçündür. Yenidən başlatma tələb olunur.';
	@override String get startInFullscreen => 'Tam ekranda başlat';
	@override String get startInFullscreenDescription => 'Luroka-ni açılışda tam ekran rejimində aç';
	@override String get exitFullscreenOnPlayerClose => 'Oynadıcı bağlandıqda tam ekrandan çıx';
	@override String get exitFullscreenOnPlayerCloseDescription => 'Video oynadıcını bağlayarkən avtomatik tam ekrandan çıx';
	@override String get autoHidePerformanceOverlay => 'Məhsuldarlıq paneli avtomatik gizlənsin';
	@override String get autoHidePerformanceOverlayDescription => 'Məhsuldarlıq panelini oynatıcı idarəetmələri ilə birlikdə gizlət';
	@override String get showNavBarLabels => 'Naviqasiya paneli yazılarını göstər';
	@override String get showNavBarLabelsDescription => 'Naviqasiya paneli ikonlarının altında mətni göstər';
	@override String get startupSection => 'Başlanğıc bölməsi';
	@override String get showExploreTab => 'Kəşf et nişanını göstər';
	@override String get showExploreTabDescription => 'Plex Discover və qoşulmuş izləmə xidmətlərindəki məzmunla Kəşf et nişanını göstər';
	@override String get liveTvDefaultFavorites => 'Canlı TV-də sevimli kanalları defolt et';
	@override String get liveTvDefaultFavoritesDescription => 'Canlı TV açıldıqda yalnız sevimli kanalları göstər';
	@override String get general => 'Ümumi';
	@override String get generalDescription => 'Dil, başlanğıc və pəncərə davranışı';
	@override String get languageAndRegion => 'Dil və Region';
	@override String get startup => 'Başlanğıc';
	@override String get display => 'Ekran';
	@override String get libraryAndCards => 'Kitabxana və kartlar';
	@override String get homeScreen => 'Ana ekran';
	@override String get navigation => 'Naviqasiya';
	@override String get window => 'Pəncərə';
	@override String get liveTv => 'Canlı TV';
	@override String get player => 'Oynadıcı';
	@override String get videoAndDisplay => 'Video və Ekran';
	@override String get audio => 'Səs';
	@override String get quality => 'Keyfiyyət';
	@override String get subtitles => 'Altyazılar';
	@override String get seekAndTiming => 'Sarğı və vaxt tənzimləməsi';
	@override String get behavior => 'Davranış';
	@override String get gestures => 'Jestlər';
	@override String get gestureBrightnessSwipe => 'Parlaqlıq sürüşdürməsi';
	@override String get gestureBrightnessSwipeDescription => 'Parlaqlığı tənzimləmək üçün sol kənarda yuxarı və ya aşağı sürüşdürün';
	@override String get gestureVolumeSwipe => 'Səs sürüşdürməsi';
	@override String get gestureVolumeSwipeDescription => 'Səsi tənzimləmək üçün sağ kənarda yuxarı və ya aşağı sürüşdürün';
	@override String get gesturePinchToZoom => 'Çimdiklə yaxınlaşdır';
	@override String get gesturePinchToZoomDescription => 'Yaxınlaşdırmaq və ya uzaqlaşdırmaq üçün videoda çimdik hərəkəti edin';
	@override String get rememberBrightnessLevel => 'Parlaqlıq səviyyəsini xatırla';
	@override String get rememberBrightnessLevelDescription => 'Oxutmanı son sürüşdürmə ilə təyin edilmiş parlaqlıqda başlat';
	@override String get controls => 'İdarəetmələr';
	@override String get rememberPlayerChanges => 'Pleyer dəyişikliklərini yadda saxla';
	@override String get rememberPlayerChangesDescription => 'Oxutma zamanı edilən dəyişikliklərin harada saxlanacağı və yenidən tətbiq ediləcəyi';
	@override String get scopePlaybackSpeed => 'Oxutma sürəti';
	@override String get scopeShaderPreset => 'Şader ön ayarı';
	@override String get scopeAspectRatio => 'Tərəf nisbəti';
	@override String get scopeSyncOffsets => 'Audio və subtitr sinxronizasiyası';
	@override String get playerScopeOff => 'Saxlama';
	@override String get playerScopeGlobal => 'Hər yerdə';
	@override String get playerScopeLibrary => 'Kitabxana üzrə';
	@override String get playerScopeTitle => 'Serial və ya film üzrə';
	@override String get exportDialogTitle => 'Luroka tənzimləmələrini ixrac et';
	@override String get velvetHourTheme => 'Məxmər Saat';
}

// Path: themeEditor
class _Translations$themeEditor$az extends Translations$themeEditor$en {
	_Translations$themeEditor$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get builtIn => 'Daxili';
	@override String get presets => 'Əvvəlcədən təyinlər';
	@override String get custom => 'Xüsusi';
	@override String get customEmpty => 'Hələ yaradılmayıb';
	@override String get editCustom => 'Fərdi mövzunu redaktə edin';
	@override String get editCustomDescription => 'Hər rəngi özünüz seçin';
	@override String get locked => 'Dəstəkçi ilə kilidini açın';
	@override String get savedLocked => 'Saxlandı - Supporter ilə kiliddən çıxarır';
	@override String get title => 'Fərdi Mövzu';
	@override String get startFrom => '-dən başlayın';
	@override String get startFromDescription => 'Başqa bir mövzudan bütün rəngləri kopyalayın';
	@override String get colors => 'Rənglər';
	@override String get preview => 'Önizləmə';
	@override late final _Translations$themeEditor$slots$az slots = _Translations$themeEditor$slots$az._(_root);
	@override String get opacity => 'Qeyri-şəffaflıq';
	@override String get hexHint => '#RRGGBB və ya #AARRGGBB';
	@override String get fromOtherThemes => 'Digər mövzulardan';
	@override String swatchLabel({required Object theme, required Object color}) => '${theme} ${color}';
	@override late final _Translations$themeEditor$contrast$az contrast = _Translations$themeEditor$contrast$az._(_root);
	@override String lowContrast({required Object pair, required Object ratio, required Object minimum}) => '${pair}: ${ratio}:1, tövsiyə olunan ${minimum}:1-dən aşağı';
	@override String get discardTitle => 'Dəyişikliklər ləğv edilsin?';
	@override String get discardMessage => 'Saxlanmamış rəng dəyişiklikləriniz itiriləcək.';
	@override String get discard => 'Atın';
	@override String previewCardTitle({required Object number}) => 'Epizod ${number}';
	@override String previewCardSubtitle({required Object minutes}) => '${minutes} dəq qalıb';
	@override String get previewSwitch => 'Avtomatik oynatma';
	@override String get previewMutedText => 'İkinci dərəcəli mətn belə oxunur';
}

// Path: seriesBrowser
class _Translations$seriesBrowser$az extends Translations$seriesBrowser$en {
	_Translations$seriesBrowser$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get oneEpisode => '1 epizod';
	@override String watchedCount({required Object count}) => '${count} baxıldı';
	@override String episodeCount({required Object count}) => '${count} epizodları';
	@override String episodesFor({required Object season}) => '${season} · Epizodlar';
	@override String get enterHint => 'Seçin: açıq mövsüm · ↓: epizodlar';
}

// Path: titlePage
class _Translations$titlePage$az extends Translations$titlePage$en {
	_Translations$titlePage$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get genre => 'Janr';
	@override String remaining({required Object time}) => '${time} qalıb';
	@override String continueEpisode({required Object season, required Object episode}) => 'Davam edin S${season} E${episode}';
	@override String get watchlist => 'İzləmə siyahısı';
	@override String get more => 'Daha çox';
}

// Path: tvMenus
class _Translations$tvMenus$az extends Translations$tvMenus$en {
	_Translations$tvMenus$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get appearanceDescription => 'Mövzu, ekran kənarları və posterlər';
}

// Path: lurokaPlayer
class _Translations$lurokaPlayer$az extends Translations$lurokaPlayer$en {
	_Translations$lurokaPlayer$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Oyunçu parametrləri';
	@override String get watch => 'Bax';
	@override String get watchDescription => 'Sürəti təyin edin, sakitləşin və növbəti oyuna qərar verin.';
	@override String get picture => 'Şəkil parametrləri';
	@override String get pictureDescription => 'Zoom, HDR və video emal';
	@override String get sound => 'Audio və subtitrlər';
	@override String get audioSettings => 'Audio parametrləri';
	@override String get soundDescription => 'Vaxt, səs həcmi və səs çıxışı';
	@override String get chooseTracks => 'Dilləri və altyazı treklərini seçin';
	@override String get tools => 'Qabaqcıl';
	@override String get toolsDescription => 'Oynatma məlumatı və diaqnostika';
	@override String get preferences => 'Oxutma seçimləri';
	@override String get preferencesDescription => 'Sizin kinonuz, standartlarınız. Səs və başlıqlarla başlayın, sonra yayımı və ekranınızı dəqiqləşdirin.';
	@override String get streamPreferences => 'Axın keyfiyyəti';
	@override String get displayPreferences => 'Ekran';
	@override String get enginePreferences => 'Təkmil oyunçu seçimləri';
	@override String get seekPreferences => 'Axtarır';
	@override String get watchPreferences => 'Avtomatik oynatma və atlama';
	@override String get rememberPreferences => 'Tercihləri yadda saxla';
}

// Path: lurokaSettings
class _Translations$lurokaSettings$az extends Translations$lurokaSettings$en {
	_Translations$lurokaSettings$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get quickSetup => 'Tez quraşdırma';
	@override String get quickSetupDescription => 'Əsas şeylərdən başlayın: daha hamar TV baxışı, rahat ekran uyğunluğu, Əsas səhifə düzümü və oxutma seçimləri.';
	@override String get experience => 'Sizin təcrübəniz';
	@override String get experienceDescription => 'Luroka özünü doğru hiss etdirin: görünüş, dillər, oxutma, kitabxanalar və ekran vaxtı.';
	@override String get remoteHint => '↑ ↓ Kateqoriyalara göz atın · → / Seçimləri açın · ← Kateqoriyalara qayıdın';
}

// Path: playerChrome
class _Translations$playerChrome$az extends Translations$playerChrome$en {
	_Translations$playerChrome$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get browse => 'Fəsillər və növbə';
	@override String get backToPlayback => 'Oxumağa qayıt';
	@override String get nowPlaying => 'İNDİ OYNAYIR';
	@override String get options => 'OYUNCU SEÇENEKLERİ';
}

// Path: tvLayout
class _Translations$tvLayout$az extends Translations$tvLayout$en {
	_Translations$tvLayout$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get screenMargins => 'TV ekran kənarları';
	@override String get screenMarginsDescription => 'Televizorunuz şəklin bir hissəsini kəsirsə, proqramın kənarlarını daraltın';
	@override String get screenMarginsDefault => '0% (defolt)';
}

// Path: studios
class _Translations$studios$az extends Translations$studios$en {
	_Translations$studios$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get checkingCopies => 'Digər kitabxanalar yoxlanılır... İstənilən vaxt məlum nüsxəni seçin.';
	@override String get incompleteCopies => 'Bəzi kitabxanaları yoxlamaq mümkün olmadı. Məlum nüsxəni seçin və ya ləğv edib yenidən cəhd edin.';
	@override String get partialFavorites => 'Bəzi sevimliləri yükləmək mümkün olmadı. Yenidən cəhd etmək üçün Yenilə seçin.';
	@override String get copyLookupFailedTitle => 'Bütün nüsxələri yoxlamaq mümkün olmadı';
	@override String get copyLookupFailedMessage => 'Bəzi kitabxanalar cavab vermədi. Siz artıq tapılmış nüsxələrdən birini aça və ya ləğv edib yenidən cəhd edə bilərsiniz.';
	@override String get openKnownCopies => 'Məlum nüsxələri göstərin';
	@override String get browseAll => 'Hamısına göz atın';
	@override String titleCount({required Object count}) => '${count} başlıqları';
	@override String get topRated => 'Ən yüksək reytinq';
	@override String get mostWatched => 'Kitabxananızda ən çox baxılanlar';
	@override String get collection => 'STUDİO KOLLEKSİYASI';
	@override String loadedTitles({required Object count}) => '${count} başlıqları yükləndi';
	@override String get sort => 'Başlıqları çeşidləyin';
	@override String get sortTitleAscending => 'Başlıq A-Z';
	@override String get sortTitleDescending => 'Başlıq Z–A';
	@override String get sortNewest => 'Ən yeni buraxılış';
	@override String get sortOldest => 'Ən köhnə buraxılış';
	@override String get sortAdded => 'Bu yaxınlarda əlavə edildi';
	@override String get sortEpisodeAdded => 'Bu yaxınlarda əlavə edilmiş epizod';
	@override String get sortRating => 'Ən yüksək reytinq';
	@override String get title => 'Studio ilə gözdən keçirin';
	@override String get all => 'Hamısı';
	@override String get movies => 'Filmlər';
	@override String get shows => 'TV şouları';
	@override String get loadMore => 'Daha çox başlıq yükləyin';
	@override String get empty => 'Hazırda görünən kitabxanalarınızda uyğun başlıq yoxdur.';
	@override String get retry => 'Daha çox başlıq yükləmək mümkün olmadı — yenidən cəhd etmək üçün seçin';
	@override String get description => 'Kitabxanalarınızda bu studiyadan film və şouları araşdırın.';
}

// Path: dashboard
class _Translations$dashboard$az extends Translations$dashboard$en {
	_Translations$dashboard$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get previousFeature => 'Əvvəlki seçilmiş başlıq';
	@override String get nextFeature => 'Növbəti seçilən başlıq';
	@override String get cinemaHome => 'EV';
	@override String get episodeFallback => 'TV epizod';
	@override String timeLeft({required Object minutes}) => '${minutes} dəq qalıb';
	@override String timeLeftHours({required Object hours, required Object minutes}) => '${hours} saat ${minutes} dəq qalıb';
	@override String get spoilerHidden => 'Spoyler seçiminiz tərəfindən gizlədilən epizod təfərrüatları.';
	@override String get synopsisUnavailable => 'Bu başlıq haqqında daha çox görmək üçün Təfərrüatları açın.';
	@override String get yourSpace => 'SİZİN MƏKAN';
	@override String get title => 'Sizin kinonuz.';
	@override String get subtitle => 'Bir hekayəni davam etdirin və ya növbətisini tapın.';
	@override String get featured => 'LUROKA SEÇİMİ';
	@override String get jumpBackIn => 'İzləməyə davam edin';
	@override String episodeLabel({required Object season, required Object episode}) => 'S${season} · E${episode}';
	@override String get anotherPick => 'Başqa bir seçim';
	@override String get exploreSeries => 'Serialları araşdırın';
	@override String get showFeatured => 'Ana səhifədə seçilənlər';
	@override String get showFeaturedDescription => 'Əsas səhifənin yuxarı hissəsində seçilmiş filmləri və şouları göstərin.';
}

// Path: lurokaCatalog
class _Translations$lurokaCatalog$az extends Translations$lurokaCatalog$en {
	_Translations$lurokaCatalog$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get aboutPerson => 'DİQQƏT MƏRKƏZİNDƏ';
	@override String get biographyUnavailable => 'Bu serverdən tərcümeyi-halı əlçatan deyil.';
	@override String get filmography => 'Kitabxanalarınızdakı filmlər və şoular';
	@override String get recommended => 'Tövsiyə olunanlar';
	@override String get browse => 'Bütün başlıqlar';
	@override String get collections => 'Kolleksiyalar';
	@override String get browseHint => 'Kataloqunuzu araşdırın. Filtrlər və çeşidləmə ilə seçimi formalaşdırın.';
	@override String get recommendedHint => 'Növbəti hekayənizi tapın';
	@override String get details => 'Hekayənin arxasında';
}

// Path: referenceDetails
class _Translations$referenceDetails$az extends Translations$referenceDetails$en {
	_Translations$referenceDetails$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get oneEpisodeLeft => '1 bölüm qalıb';
	@override String get playAll => 'Hamısını oynayın';
	@override String get present => 'təqdim';
	@override String get continuing => 'Davam edir';
	@override String get upNext => 'Növbəti';
	@override String episodesLeft({required Object count}) => '${count} epizodları qalıb';
}

// Path: lurokaThemes
class _Translations$lurokaThemes$az extends Translations$lurokaThemes$en {
	_Translations$lurokaThemes$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Luroka kinoteatr palitraları';
	@override String get coral => 'Mərcan · gecə yarısı mavi və gün batımı';
	@override String get ocean => 'Okean · dərin mavi və buz';
	@override String get jade => 'Jade · həmişəyaşıl və nanə';
	@override String get amethyst => 'Ametist · gecə yarısı bənövşəyi';
	@override String get darkThemes => 'Qaranlıq kino mövzuları';
	@override String get lightThemes => 'Yüngül kino mövzuları';
	@override String get moreThemes => 'Daha çox mövzu';
	@override String get moreThemesDescription => 'Əlavə palitraları və fərdi rəngləri nəzərdən keçirin';
	@override String get obsidian => 'Obsidian · saf qara və şampan';
	@override String get nocturne => 'Nocturne · kömür və şampan';
	@override String get burgundy => 'Bordo · məxmər şərab və qızılgül';
	@override String get slate => 'Şifer · qrafit və periwinkle';
	@override String get espresso => 'Espresso · kakao və karamel';
	@override String get pearl => 'Mirvari · çini və sapfir';
	@override String get linen => 'Kətan · isti fil sümüyü və terakota';
	@override String get sunrise => 'Günəşin doğuşu · şaftalı və mərcan';
	@override String get coastal => 'Sahil · duman və okean çayı';
	@override String get latte => 'Latte · krem və karamel';
	@override String get sage => 'Adaçayı · yumşaq yaşıl və evkalipt';
	@override String get lavender => 'Lavanda · yasəmən və dərin bənövşəyi';
}

// Path: customPerformance
class _Translations$customPerformance$az extends Translations$customPerformance$en {
	_Translations$customPerformance$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Performans və effektlər';
	@override String get fireStickMode => 'Aşağı güc cihaz rejimi';
	@override String get description => 'Azaldılmış effektlər, statik fonlar, 720p ilə məhdudlaşdırılmış sənət əsəri və 40 MiB təsvir yaddaşından istifadə edin. Aktiv olduqda, bu, vizual effektləri ləğv edir; onu söndürmək vizual effektlər seçiminizi bərpa edir.';
	@override String get detailsTitle => 'Performans təfərrüatları';
	@override String get details => 'Aktiv effektlər, şəkil önbelleği limiti və baxış performansının ölçülməsi';
	@override String get effectsTier => 'Aktiv effektlər səviyyəsi';
	@override String get imageCache => 'Şəkil önbelleği limiti';
	@override String get measurement => 'Baxış ölçmə';
	@override String get measureInstructions => '20 saniyəlik nümunəyə başlayın, Əsas səhifəyə qayıdın və pultdan istifadə edərək gözdən keçirin. Nəticələri görmək üçün buraya qayıdın. Müqayisə etmək üçün rejimi yandırıb söndürməklə eyni hərəkətləri təkrarlayın. Bu, video dekoder performansını deyil, Flutter UI işini ölçür.';
	@override String get startSample => '20 saniyəlik nümunəyə başlayın';
	@override String get stopSample => 'İndi nümunəni tamamlayın';
	@override String get sampling => 'Nümunə götürmə — Əsas səhifəyə qayıdın və gözdən keçirin. Nəticələr burada saxlanılacaq.';
	@override String get frames => 'Çərçivə nümunələri';
	@override String get slowFrames => 'Büdcədən artıq çərçivələr';
	@override String get buildP95 => 'UI qurma vaxtı (95-ci faiz)';
	@override String get rasterP95 => 'Raster vaxtı (95-ci faiz)';
	@override String get frameBudget => 'Çərçivə başına büdcə';
	@override String get processMemory => 'Nümunə sonunda proqram proses yaddaşı';
	@override String get noFrames => 'İşlənmiş kadrlar alınmadı. Başqa bir nümunəyə başlayın və proqramı gözdən keçirin.';
}

// Path: homeLayout
class _Translations$homeLayout$az extends Translations$homeLayout$en {
	_Translations$homeLayout$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get manageStudios => 'Studiyaları seçin və sifariş edin';
	@override String get manageStudiosDescription => 'Bu profil üçün hansı studiyaların görünəcəyini seçin və onların sırasını təşkil edin.';
	@override String get studioUnavailable => 'Yalnız seçdiyiniz kitabxanalarda tapılan studiyalar Əsas səhifədə görünür.';
	@override String get showAllStudios => 'Bütün studiyaları göstərin';
	@override String get hideAllStudios => 'Bütün studiyaları gizlədin';
	@override String get reorderStudio => 'Studiya sırasını dəyişdirin';
	@override String get episodeThumbnails => 'Baxmağa davam et bölməsində epizod şəkilləri';
	@override String get episodeThumbnailsDescription => 'Baxmağa Davam et və Növbəti addımda serial və ya mövsüm posterləri əvəzinə epizod şəkillərini göstərin.';
	@override String get spotlightSource => 'Seçilmiş məzmunun mənbəyi';
	@override String get spotlightSourceDescription => 'Sizin üçün sevimlilər və kitabxana başlıqları ilə birlikdə bu cihazda bu profilin baxış fəaliyyətindən istifadə edir.';
	@override String get spotlightForYou => 'Sizin üçün';
	@override String get spotlightForYouDescription => 'Bu cihazda bu profilin baxış fəaliyyətindən istifadə edərək baxdıqlarınız, sevimlilər, yeni əlavələr və tendensiyaların qarışığı.';
	@override String get spotlightTrending => 'Trend';
	@override String get spotlightTrendingDescription => 'Kitabxanalarınızdakı populyar filmlər və şoular.';
	@override String get spotlightContinue => 'Baxmağa Davam Edin';
	@override String get spotlightContinueDescription => 'Başladığınız başlıqlar və davam edə biləcəyiniz epizodlar.';
	@override String get spotlightFavorites => 'Sevimlilərinizdən';
	@override String get spotlightInspired => 'Baxışınızdan ilhamlanıb';
	@override String get spotlightNextUp => 'Növbəti';
	@override String get title => 'Evi fərdiləşdirin';
	@override String get description => 'Bu profil üçün sıra sırasını və görünmə qabiliyyətini seçin. Köçürmək və ya gizlətmək üçün sıra seçin.';
	@override String get rows => 'Ev sıraları';
	@override String get progressLayout => 'Baxmağa Davam Et və Sonrası';
	@override String get progressCombined => 'Bir cərgədə birləşdirilir';
	@override String get progressSeparate => 'Ayrı-ayrı sıralar';
	@override String get progressDescription => 'Server tərəfindən dəstəkləndikdə Next Up-ı ayırın. Digər serverlər bir yerdə qalır.';
	@override String get visible => 'Görünən';
	@override String get hidden => 'Gizli';
	@override String get showRow => 'Sıra göstərin';
	@override String get hideRow => 'Sıra gizlət';
	@override String get moveUp => 'Yuxarı hərəkət edin';
	@override String get moveDown => 'Aşağı hərəkət edin';
	@override String get pinnedCollections => 'Bağlanmış kolleksiyalar';
	@override String get pinInstructions => 'Kolleksiyanın menyusunu açın və Pin to Əsas səhifə seçin. Qısayolunu silmək üçün burada bərkidilmiş kolleksiya seçin.';
	@override String get pinCollection => 'Pin Evə';
	@override String get unpinCollection => 'Evdən çıxarın';
	@override String get reset => 'Defolt sıraları bərpa edin';
	@override String get resetDescription => 'Orijinal sıra sırası bərpa edilsin və bu profil üçün bütün sıralar göstərilsin? Bağlanmış kolleksiyalarınız saxlanılacaq.';
	@override String get saveFailed => 'Ev tərtibatınızı saxlamaq mümkün olmadı. Yenidən cəhd edin.';
	@override String get emptyHint => 'Sətirlər gizlədilə bilər. Onları yenidən göstərmək üçün Fərdiləşdirin Əsas səhifəni açın.';
}

// Path: screenTime
class _Translations$screenTime$az extends Translations$screenTime$en {
	_Translations$screenTime$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ekran vaxtı';
	@override String get description => 'Bu profildə videoya baxmağa sərf olunan vaxta baxın';
	@override String get today => 'Bu gün';
	@override String get thisWeek => 'Bu Həftə';
	@override String get thisMonth => 'Bu Ay';
	@override String get lessThanMinute => '< 1 dəq';
	@override String minutes({required Object count}) => '${count} dəq';
	@override String hours({required Object count}) => '${count} saat';
	@override String hoursMinutes({required Object hours, required Object minutes}) => '${hours} saat ${minutes} dəq';
}

// Path: activityStats
class _Translations$activityStats$az extends Translations$activityStats$en {
	_Translations$activityStats$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Statistikaya baxış';
	@override String get period => 'Dövr';
	@override String get last7Days => '7 gün';
	@override String get last30Days => '30 gün';
	@override String get last90Days => '90 gün';
	@override String get thisYear => 'il';
	@override String get allTime => 'Hamısı';
	@override String get heroAllTime => 'Bütün zamanlar';
	@override String get heroDailyAverage => 'Gündəlik orta';
	@override String get consistency => 'Ardıcıllıq';
	@override String get currentStreak => 'Cari ardıcıllıq';
	@override String dayCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('az'))(n,
		one: '${n} gün',
		other: '${n} gün',
	);
	@override String get longestStreak => 'Ən uzun zolaq';
	@override String get bestDay => 'Ən yaxşı gün';
	@override String get bestWeek => 'Ən yaxşı həftə';
	@override String get trendTitle => 'Baxış vaxtı';
	@override String get trendToday => 'Bu gün';
	@override String gapDetail({required Object stat, required Object range}) => '${stat}, ${range} üzərində';
	@override String get patternsTitle => 'Naxışlarınız';
	@override String mostlyKind({required Object kind}) => 'Əsasən ${kind}';
	@override String get weekdayTitle => 'Həftə içi ilə';
	@override String get hoursTitle => 'Günün vaxtı ilə';
	@override String get amLabel => 'AM';
	@override String get pmLabel => 'PM';
	@override String get kindsTitle => 'Kateqoriyaya görə';
	@override String get kindMovie => 'Filmlər';
	@override String get kindTv => 'televizor';
	@override String get kindLiveTv => 'Canlı TV';
	@override String get kindMusic => 'Musiqi';
	@override String get kindOther => 'Digər';
	@override String get topTitlesTitle => 'Ən çox baxılan';
	@override String get sessionsTitle => 'Son sessiyalar';
	@override String get recentViewingTitle => 'Son baxış';
	@override String get recentViewingHint => 'Seçilmiş dövrdə ümumi baxılmış vaxt. Tarixlər ən son baxışı göstərir.';
	@override String get showMore => 'Daha çox göstər';
	@override String get sessionNoTitle => 'Naməlum oxutma';
	@override String get emptyTitle => 'Burada hələ heç nə yoxdur';
	@override String get emptyBody => 'Bir şeyə baxın və statistikanız burada qurulacaq.';
	@override String get noDataInPeriod => 'Bu müddətdə heç bir oxutma qeydə alınmayıb.';
}

// Path: search
class _Translations$search$az extends Translations$search$en {
	_Translations$search$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get hint => 'Kino, serial, musiqi axtar...';
	@override String get tryDifferentTerm => 'Fərqli axtarış sözü cəhd edin';
	@override String get searchYourMedia => 'Mediyanızda axtarın';
	@override String get enterTitleActorOrKeyword => 'Ad, aktyor və ya açar söz daxil edin';
	@override String get people => 'İnsanlar';
	@override String get recentSearches => 'Son axtarışlar';
	@override String get clearHistory => 'Tarixi təmizləyin';
}

// Path: hotkeys
class _Translations$hotkeys$az extends Translations$hotkeys$en {
	_Translations$hotkeys$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String setShortcutFor({required Object actionName}) => '${actionName} üçün qısayol təyin et';
	@override String get clearShortcut => 'Qısayolu təmizlə';
	@override String get noShortcutSet => 'Qısayol təyin edilməyib';
	@override String get currentShortcut => 'Cari qısayol:';
	@override String get pressToRecord => 'Qısayol yazmaq üçün seçin';
	@override String get recordingShortcut => 'İndi qısayol düymələrinə basın';
	@override late final _Translations$hotkeys$actions$az actions = _Translations$hotkeys$actions$az._(_root);
}

// Path: fileInfo
class _Translations$fileInfo$az extends Translations$fileInfo$en {
	_Translations$fileInfo$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fayl məlumatı';
	@override String get overview => 'Ümumi baxış';
	@override String get video => 'Video';
	@override String get audio => 'Səs';
	@override String get subtitles => 'Altyazılar';
	@override String get images => 'Daxili şəkillər';
	@override String get dataStreams => 'Məlumat axınları';
	@override String get lyrics => 'Mahnı sözləri';
	@override String get file => 'Fayl';
	@override String get attachments => 'Əlavələr';
	@override String get delivery => 'Çatdırılma';
	@override String versionCounter({required Object count, required Object index}) => '${count}-dən ${index} versiya';
	@override String fileCounter({required Object count, required Object index}) => '${count}-dən ${index} fayl';
	@override String get noStreams => 'Server bu fayl üçün heç bir axın bildirmədi.';
	@override String get copyPath => 'Yolu kopyala';
	@override String get pathCopied => 'Fayl yolu kopyalandı';
	@override String get codec => 'Kodek';
	@override String get codecTag => 'Kodek teqi';
	@override String get resolution => 'Ayırdetmə';
	@override String get codedResolution => 'Kodlanmış rezolyusiya';
	@override String get bitrate => 'Bit sürəti (Bitrate)';
	@override String get frameRate => 'Kadr tezliyi';
	@override String get rotation => 'Dönmə';
	@override String get comment => 'Şərh';
	@override String get audioDescription => 'Səs təsviri';
	@override String get headerCompression => 'Başlıq sıxışdırması';
	@override String get sidecarFile => 'Sidecar faylı';
	@override String get transportTimestamp => 'Transport vaxt damğası';
	@override String get displayOffset => 'Ekran ofseti';
	@override String get previewFailureCode => 'Önizləmə xəta kodu';
	@override String get previewRetries => 'Önizləmə cəhdləri';
	@override String get aspectRatio => 'Tərəf nisbəti';
	@override String get pixelAspectRatio => 'Piksel aspekt nisbəti';
	@override String get profile => 'Profil';
	@override String get level => 'Səviyyə';
	@override String get bitDepth => 'Bit dərinliyi';
	@override String get pixelFormat => 'Piksel formatı';
	@override String get colorSpace => 'Rəng sahəsi';
	@override String get colorRange => 'Rəng diapazonu';
	@override String get colorPrimaries => 'Əsas rənglər';
	@override String get colorTransfer => 'Rəng ötürməsi';
	@override String get chromaSubsampling => 'Rəng alt-diskretləşdirməsi';
	@override String get chromaLocation => 'Chroma mövqeyi';
	@override String get scanType => 'Tarama növü';
	@override String get interlaced => 'Sətirlərarası';
	@override String get anamorphic => 'Anamorfik';
	@override String get referenceFrames => 'İstinad kadrları';
	@override String get dynamicRange => 'Dinamik diapazon';
	@override String get dolbyVision => 'Dolby Vision';
	@override String get dolbyVisionLevel => 'Dolby Vision səviyyəsi';
	@override String get dolbyVisionVersion => 'Dolby Vision versiyası';
	@override String get dolbyVisionLayers => 'Dolby Vision təbəqələri';
	@override String get baseLayerCompatibility => 'Baza təbəqə uyğunluğu';
	@override String get avcBitstream => 'AVC bit axını';
	@override String get nalLengthSize => 'NAL uzunluq ölçüsü';
	@override String get scalingMatrix => 'Xüsusi miqyaslama matrisi';
	@override String get streamIdentifier => 'Axın identifikatoru';
	@override String get streamIndex => 'Axın indeksi';
	@override String get streamId => 'Axın ID-si';
	@override String get language => 'Dil';
	@override String get languageCode => 'Dil kodu';
	@override String get streamTitle => 'Trek başlığı';
	@override String get channels => 'Kanallar';
	@override String get sampleRate => 'Diskretləşdirmə tezliyi';
	@override String get spatialAudio => 'Məkan səsi';
	@override String get textBased => 'Mətn əsaslı';
	@override String get subtitleFormat => 'Sidecar formatı';
	@override String get provider => 'Provayder';
	@override String get matchScore => 'Uyğunluq balı';
	@override String get externalDelivery => 'Ayrıca ötürülə bilər';
	@override String get sidecarPath => 'Sidecar yolu';
	@override String get sourceStream => 'Kopyalanan mənbə';
	@override String get temporary => 'Müvəqqəti';
	@override String get timeBase => 'Vaxt bazası';
	@override String get overallBitrate => 'Ümumi bit sürəti';
	@override String get path => 'Yol';
	@override String get fileName => 'Fayl adı';
	@override String get size => 'Həcm';
	@override String get totalSize => 'Ümumi ölçü';
	@override String get container => 'Konteyner';
	@override String get duration => 'Müddət';
	@override String get previewThumbnails => 'Önizləmə miniatürləri';
	@override String get previewIndex => 'Önizləmə indeksi';
	@override String get packetLength => 'Paket uzunluğu';
	@override String get filePresent => 'Fayl mövcuddur';
	@override String get fileReadable => 'Server tərəfindən oxuna bilir';
	@override String get streamPath => 'Axın yolu';
	@override String get optimizedForStreaming => 'Yayım üçün optimallaşdırılıb';
	@override String get has64bitOffsets => '64-bit ofsetlər';
	@override String get protocol => 'Protokol';
	@override String get mediaType => 'Media növü';
	@override String get sourceKind => 'Mənbə növü';
	@override String get optimizedVersion => 'Optimallaşdırılmış versiya';
	@override String get optimizationTarget => 'Optimallaşdırma hədəfi';
	@override String get deletedAt => 'Silinib';
	@override String get remoteSource => 'Uzaq mənbə';
	@override String get infiniteStream => 'Sonsuz axın';
	@override String get directPlay => 'Birbaşa oynatma';
	@override String get directStream => 'Birbaşa axın';
	@override String get transcoding => 'Yenidən kodlaşdırma';
	@override String get etag => 'ETag';
	@override String get versionId => 'Versiya ID-si';
	@override String get fileId => 'Fayl ID-si';
	@override String get defaultAudioTrack => 'Defolt səs treki';
	@override String get defaultSubtitleTrack => 'Defolt altyazı treki';
	@override String get subtitlesOff => 'Söndürülüb';
	@override String get flagDefault => 'Defolt';
	@override String get flagForced => 'Məcburi';
	@override String get flagSelected => 'Seçilib';
	@override String get flagExternal => 'Xarici';
	@override String get flagHearingImpaired => 'Eşitmə qüsurlu üçün';
	@override String get flagDub => 'Dublyaj';
	@override String get flagOriginal => 'Orijinal';
	@override String get channelsMono => 'Mono';
	@override String dolbyVisionProfile({required Object profile}) => 'Profil ${profile}';
}

// Path: mediaMenu
class _Translations$mediaMenu$az extends Translations$mediaMenu$en {
	_Translations$mediaMenu$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get markAsWatched => 'Baxıldı olaraq işarələ';
	@override String get markAsUnwatched => 'Baxılmadı olaraq işarələ';
	@override String get clearProgress => 'Aydın tərəqqi';
	@override String get removeFromContinueWatching => 'İzləməyə davam et-dən sil';
	@override String get viewDetails => 'Ətraflı bax';
	@override String get goToSeries => 'Seriala keç';
	@override String get shufflePlay => 'Qarışıq oynat';
	@override String get shuffleNotAvailableOffline => 'Qarışıq oynatma oflayn rejimdə əlçatan deyil';
	@override String get fileInfo => 'Fayl məlumatı';
	@override String get deleteEpisodeFromServer => 'Seriyanı serverdən sil';
	@override String get deleteSeasonFromServer => 'Mövsümü serverdən sil';
	@override String get deleteShowFromServer => 'Serialı serverdən sil';
	@override String get deleteMovieFromServer => 'Kinonu serverdən sil';
	@override String get deleteEpisodeTitle => 'Bu seriya silinsin?';
	@override String get deleteSeasonTitle => 'Bu mövsüm silinsin?';
	@override String get deleteShowTitle => 'Bu serial silinsin?';
	@override String get deleteMovieTitle => 'Bu kino silinsin?';
	@override String get deleteEpisodeConfirm => 'Seriyanı sil';
	@override String get deleteSeasonConfirm => 'Mövsümü sil';
	@override String get deleteShowConfirm => 'Serialı sil';
	@override String get deleteMovieConfirm => 'Kinonu sil';
	@override String get deleteAnyway => 'Yenə də sil';
	@override String confirmDeleteTarget({required Object title}) => '${title} serverinizdən birdəfəlik silinsin?';
	@override String get deleteMultipleWarning => 'Bu bütün seriyaları və faylları əhatə edir.';
	@override String deleteEpisodeCountWarning({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('az'))(n,
		one: 'Bu, içindəki ${n} seriyanı və onun faylını siləcək.',
		other: 'Bu, içindəki ${n} seriyanı və onların fayllarını siləcək.',
	);
	@override String deleteMultiPartWarning({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('az'))(n,
		one: 'Bu element ${n} fayl kimi saxlanılır və o silinəcək.',
		other: 'Bu element ${n} faylda saxlanılır və hamısı silinəcək.',
	);
	@override String deleteSharedFileHeading({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('az'))(n,
		one: 'Eyni faylda saxlanılan ${n} başqa seriya da silinəcək:',
		other: 'Eyni faylda saxlanılan ${n} başqa seriya da silinəcək:',
	);
	@override String get deleteScopeUnverifiedProbeFailed => 'Luroka bunun hansı faylları siləcəyini yoxlaya bilmədi, ona görə də yuxarıda adı çəkilən elementdən daha çoxunu silə bilər. Ləğv edib təzədən cəhd edin və ya yenə də silin.';
	@override String get deleteScopeUnverifiedNoFileInfo => 'Serveriniz bu element üçün fayl təfərrüatlarını təqdim etmədi, ona görə Luroka bunun hansı faylları siləcəyini yoxlaya bilmir. Yuxarıda adı çəkilən elementdən daha çoxunu silə bilər.';
	@override String get mediaDeletedSuccessfully => 'Media elementi uğurla silindi';
	@override String get mediaFailedToDelete => 'Media elementi silinə bilmədi';
	@override String get rate => 'Qiymətləndir';
	@override String get playFromBeginning => 'Əvvəldən oynat';
	@override String get playVersion => 'Versiyanı oynat...';
}

// Path: rateSheet
class _Translations$rateSheet$az extends Translations$rateSheet$en {
	_Translations$rateSheet$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Qiymətləndir';
	@override String get server => 'Server';
	@override String get favorite => 'Sevimli';
	@override String get favorited => 'Sevimlilərə əlavə edildi';
	@override String get saved => 'Yadda saxlanıldı';
	@override String get notAvailable => 'Uyğunluq tapılmadı';
	@override String get noConnectedServices => 'Orada qiymətləndirmək üçün Tənzimləmələrdən xidmət qoşun.';
}

// Path: accessibility
class _Translations$accessibility$az extends Translations$accessibility$en {
	_Translations$accessibility$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String mediaCardMovie({required Object title}) => '${title}, kino';
	@override String mediaCardShow({required Object title}) => '${title}, TV şou';
	@override String mediaCardEpisode({required Object title, required Object episodeInfo}) => '${title}, ${episodeInfo}';
	@override String mediaCardSeason({required Object title, required Object seasonInfo}) => '${title}, ${seasonInfo}';
	@override String get mediaCardWatched => 'baxılıb';
	@override String mediaCardPartiallyWatched({required Object percent}) => '%${percent} baxılıb';
	@override String get mediaCardUnwatched => 'baxılmayıb';
	@override String get tapToPlay => 'Oynatmaq üçün toxunun';
	@override String get decrease => 'Azalt';
	@override String get increase => 'Artır';
	@override String decreaseValue({required Object label}) => '${label} dəyərini azalt';
	@override String increaseValue({required Object label}) => '${label} dəyərini artır';
	@override String get hue => 'Rəng çaları';
	@override String get saturation => 'Doyğunluq';
	@override String get brightness => 'Parlaqlıq';
	@override String get hexColor => 'Hex rəngi';
	@override String get expandText => 'Mətni genişləndir';
	@override String get collapseText => 'Mətni yığ';
	@override String get alphabetNavigation => 'Əlifba naviqasiyası';
	@override String get alphabetScrollHint => 'Hərflərə görə keçmək üçün yuxarı və ya aşağı sürüşdürün';
	@override String rowColumnPosition({required Object row, required Object rowCount, required Object column, required Object columnCount}) => 'Sətir ${row} / ${rowCount}, sütun ${column} / ${columnCount}';
	@override String rowPosition({required Object row, required Object rowCount}) => 'Sətir ${row} / ${rowCount}';
	@override String get autoScrollPlay => 'Avtomatik sürüşdürməni başlat';
	@override String get autoScrollPause => 'Avtomatik sürüşdürməyə fasilə ver';
	@override String get hueShort => 'H';
	@override String get saturationShort => 'S';
	@override String get valueShort => 'V';
}

// Path: tooltips
class _Translations$tooltips$az extends Translations$tooltips$en {
	_Translations$tooltips$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get shufflePlay => 'Qarışıq oynat';
	@override String get playTrailer => 'Treyleri oynat';
	@override String get markAsWatched => 'Baxıldı olaraq işarələ';
	@override String get markAsUnwatched => 'Baxılmadı olaraq işarələ';
}

// Path: audioTracks
class _Translations$audioTracks$az extends Translations$audioTracks$en {
	_Translations$audioTracks$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String track({required Object n}) => 'Səs zolağı ${n}';
}

// Path: videoControls
class _Translations$videoControls$az extends Translations$videoControls$en {
	_Translations$videoControls$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get audioLabel => 'Səs';
	@override String get subtitlesLabel => 'Altyazı';
	@override String addTime({required Object amount, required Object unit}) => '+${amount}${unit}';
	@override String get letterbox => 'Geniş ekran (Letterbox)';
	@override String get fillScreen => 'Ekrana doldur';
	@override String get stretch => 'Gərmək';
	@override String get lockRotation => 'Dönməni kilidlə';
	@override String get unlockRotation => 'Dönmə kilidini aç';
	@override String get timerActive => 'Taymer aktivdir';
	@override String playbackWillPauseIn({required Object duration}) => 'Oynatma ${duration} sonra fasilə olunacaq';
	@override String get sleepTimerEndOfVideo => 'Cari videonun sonu';
	@override String get sleepTimerStopAtHeader => 'Dayanma vaxtı';
	@override String get sleepTimerDurationHeader => 'Taymer';
	@override String get playbackWillPauseAtEnd => 'Oynatma bu videonun sonunda fasilə olunacaq';
	@override String get stillWatching => 'Hələ də baxırsınız?';
	@override String pausingIn({required Object seconds}) => '${seconds}san sonra fasilə edilir';
	@override String get continueWatching => 'Davam et';
	@override String get autoPlayNext => 'Növbətini avtomatik oynat';
	@override String get playNext => 'Növbətini oynat';
	@override String get playButton => 'Oynat';
	@override String get pauseButton => 'Fasilə';
	@override String get playbackPaused => 'Fasilədə';
	@override String get playbackResumed => 'Oynadılır';
	@override String get loadingVideo => 'Video yüklənir';
	@override String get showPlaybackControls => 'Oynatma idarəetmələrini göstər';
	@override String get hidePlaybackControls => 'Oynatma idarəetmələrini gizlət';
	@override String seekBackwardButton({required Object seconds}) => '${seconds} saniyə geri sar';
	@override String seekForwardButton({required Object seconds}) => '${seconds} saniyə irəli sar';
	@override String get previousButton => 'Əvvəlki seriya';
	@override String get nextButton => 'Növbəti seriya';
	@override String get previousChapterButton => 'Əvvəlki hissə';
	@override String get nextChapterButton => 'Növbəti hissə';
	@override String get muteButton => 'Səsi söndür';
	@override String get unmuteButton => 'Səsi aç';
	@override String get settingsButton => 'Oynatma tənzimləmələri';
	@override String get infoButton => 'Məlumat';
	@override String get tracksButton => 'Səs və Altyazılar';
	@override String get chaptersButton => 'Hissələr';
	@override String get versionQualityButton => 'Versiya və Keyfiyyət';
	@override String get versionColumnHeader => 'Versiya';
	@override String get qualityColumnHeader => 'Keyfiyyət';
	@override String get qualityOriginal => 'Orijinal';
	@override String qualityPresetLabel({required Object resolution, required Object bitrate}) => '${resolution}p ${bitrate} Mbps';
	@override String get transcodeUnavailableFallback => 'Kod dəyişmə əlçatan deyil — orijinal keyfiyyətdə oynadılır';
	@override String get subtitleUnavailableFallback => 'Seçilmiş altyazı yüklənə bilmədi — altyazısız davam edilir';
	@override String get pipButton => 'Pəncərə daxilində pəncərə rejimi';
	@override String get aspectRatioButton => 'Tərəf nisbəti';
	@override String get ambientLighting => 'Ətraf işıqlandırması';
	@override String get fullscreenButton => 'Tam ekrana keç';
	@override String get exitFullscreenButton => 'Tam ekrandan çıx';
	@override String get alwaysOnTopButton => 'Həmişə üstə';
	@override String get rotationLockButton => 'Dönmə kilidi';
	@override String get lockScreen => 'Ekranı kilidlə';
	@override String get screenLockButton => 'Ekran kilidi';
	@override String get longPressToUnlock => 'Kilidi açmaq üçün uzun basın';
	@override String get timelineSlider => 'Video zaman çubuğu';
	@override String get volumeSlider => 'Səs səviyyəsi';
	@override String endsAt({required Object time}) => 'Bitiş vaxtı: ${time}';
	@override String get pipActive => 'Pəncərə daxilində pəncərə rejimində oynadılır';
	@override String get pipFailed => 'PiP rejimi başladılarkən xəta';
	@override String get screenshotSaved => 'Ekran şəkli yadda saxlanıldı';
	@override String get screenshotFailed => 'Skrinşot çəkmək mümkün olmadı';
	@override String zoomPercent({required Object percent}) => 'Miqyas %${percent}';
	@override String volumePercent({required Object percent}) => 'Səs ${percent}%';
	@override late final _Translations$videoControls$pipErrors$az pipErrors = _Translations$videoControls$pipErrors$az._(_root);
	@override String get chapters => 'Hissələr';
	@override String get noChaptersAvailable => 'Hissələr əlçatan deyil';
	@override String get queue => 'Növbə';
	@override String get noQueueItems => 'Növbədə element yoxdur';
	@override String get noAudioDevicesAvailable => 'Səs cihazları əlçatan deyil';
	@override String get searchSubtitles => 'Altyazı axtar';
	@override String get language => 'Dil';
	@override String get noSubtitlesFound => 'Altyazı tapılmadı';
	@override String get subtitleDownloaded => 'Altyazı yükləndi';
	@override String get subtitleDownloadedNotApplied => 'Altyazı yükləndi, lakin seçilə bilmədi';
	@override String get subtitleDownloadFailed => 'Altyazı yüklənə bilmədi';
	@override String get searchLanguages => 'Dillərdə axtar...';
	@override String get skipIntro => 'Girişi keç';
	@override String get skipCredits => 'Titrləri keç';
	@override String get nextEpisode => 'Növbəti seriya';
	@override String subtitleTrack({required Object n}) => 'Zolaq ${n}';
	@override String subtitleFile({required Object name}) => 'Altyazı ${name}';
	@override String forcedTrack({required Object label}) => '${label} (Məcburi)';
	@override String get osdSubtitlesOff => 'Altyazı: Söndürülüb';
	@override String osdSubtitles({required Object track}) => 'Altyazı: ${track}';
	@override String osdAudio({required Object track}) => 'Səs: ${track}';
}

// Path: messages
class _Translations$messages$az extends Translations$messages$en {
	_Translations$messages$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get markedAsWatched => 'Baxıldı olaraq işarələndi';
	@override String get markedAsUnwatched => 'Baxılmadı olaraq işarələndi';
	@override String get markedAsWatchedOffline => 'Baxıldı olaraq işarələndi (onlayn olduqda eyniləşdiriləcək)';
	@override String get markedAsUnwatchedOffline => 'Baxılmadı olaraq işarələndi (onlayn olduqda eyniləşdiriləcək)';
	@override String autoRemovedWatchedDownload({required Object title}) => 'Avtomatik silindi: ${title}';
	@override String autoRemovedWatchedDownloads({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('az'))(n,
		one: 'Baxılmış ${n} yükləmə avtomatik silindi',
		other: 'Baxılmış ${n} yükləmə avtomatik silindi',
	);
	@override String get removedFromContinueWatching => 'İzləməyə davam et-dən silindi';
	@override String errorLoading({required Object error}) => 'Xəta: ${error}';
	@override String get searchPartialResults => 'Bəzi media serverlərində axtarış aparıla bilmədi. Mövcud nəticələr göstərilir.';
	@override String get streamInterrupted => 'Yayım kəsildi. Yenidən cəhd etmək üçün oynat düyməsinə basın və ya irəli-geri çəkin.';
	@override String get liveStreamInterrupted => 'Canlı yayım kəsildi. Təzədən cəhd etmək üçün oynat düyməsinə basın.';
	@override String get fileInfoNotAvailable => 'Fayl məlumatı əlçatan deyil';
	@override String get playbackAuthenticationRequired => 'Bu elementi oynatmaq üçün media serverinə yenidən daxil olun.';
	@override String get playbackServerUnavailable => 'Media serveri əlçatan deyil. Sonra təzədən cəhd edin.';
	@override String get playbackDataInvalid => 'Server yanlış oynatma məlumatı qaytardı.';
	@override String get playbackCancelled => 'Oynatma ləğv edildi.';
	@override String get playbackFailed => 'Oynatma başladılarkən xəta.';
	@override String playbackFailedDetail({required Object error}) => 'Oynatma başladıla bilmədi: ${error}';
	@override String get audioOutputFailed => 'Səs çıxışı cavab verməyi dayandırdı. TV və ya resiverin səs bağlantısını yoxlayın; başqa tətbiqlərdə də səs yoxdursa, cihazı yenidən başladın.';
	@override String get mediaUnavailable => 'Bu məzmun artıq əlçatan deyil.';
	@override String errorLoadingFileInfo({required Object error}) => 'Fayl məlumatı yüklənərkən xəta: ${error}';
	@override String get errorLoadingSeries => 'Serial yüklənərkən xəta';
	@override String get musicNotSupported => 'Musiqi oynatması hələ dəstəklənmir';
	@override String get noDescriptionAvailable => 'Təsvir əlçatan deyil';
	@override String get noProfilesAvailable => 'Profil yoxdur';
	@override String get contactAdminForProfiles => 'Profil əlavə etmək üçün server inzibatçınızla əlaqə saxlayın';
	@override String get unableToDetermineLibrarySection => 'Bu element üçün kitabxana bölməsi müəyyən edilə bilmədi';
	@override String get logsCleared => 'Jurnallar təmizləndi';
	@override String get logsCopied => 'Jurnallar buferə kopyalandı';
	@override String get noLogsAvailable => 'Jurnal yoxdur';
	@override String libraryScanning({required Object title}) => '"${title}" skan edilir...';
	@override String libraryScanStarted({required Object title}) => '"${title}" üçün skan başladı';
	@override String libraryScanFailed({required Object error}) => 'Kitabxana skan edilə bilmədi: ${error}';
	@override String metadataRefreshing({required Object title}) => '"${title}" üçün meta-məlumatlar yenilənir...';
	@override String metadataRefreshStarted({required Object title}) => '"${title}" üçün meta-məlumat yenilənməsi başladı';
	@override String metadataRefreshFailed({required Object error}) => 'Meta-məlumatlar yenilənə bilmədi: ${error}';
	@override String get logoutConfirm => 'Çıxış etmək istədiyinizdən əminsiniz?';
	@override String get logoutDeviceConfirm => 'Bu cihazda Luroka hesabından çıxın? Uşaq profilləri, server hesabları və endirilmiş media daxil olmaqla bütün profillər bu cihazdan silinəcək. Daha sonra yenidən daxil ola bilərsiniz.';
	@override String get noSeasonsFound => 'Mövsüm tapılmadı';
	@override String get seasonsLoadFailed => 'Mövsümlər yüklənə bilmədi';
	@override String get noEpisodesFound => 'Birinci mövsümdə seriya tapılmadı';
	@override String get noEpisodesFoundGeneral => 'Seriya tapılmadı';
	@override String get episodesLoadFailed => 'Seriyalar yüklənə bilmədi';
	@override String get noResultsFound => 'Nəticə tapılmadı';
	@override String sleepTimerSet({required Object label}) => 'Yuxu taymeri ${label} üçün təyin edildi';
	@override String get noItemsAvailable => 'Element yoxdur';
	@override String get failedToCreatePlayQueueNoItems => 'Oynatma növbəsi yaradıla bilmədi — element yoxdur';
	@override String failedPlayback({required Object action, required Object error}) => '${action} uğursuz oldu: ${error}';
	@override String get switchingToCompatiblePlayer => 'Uyğun oynadıcıya keçilir...';
	@override String get serverLimitTitle => 'Oynatma uğursuz oldu';
	@override String get serverLimitBody => 'Server xətası (HTTP 500). Məhdudiyyət bu seansı rədd etdi.';
	@override String get mediaUnreadableTitle => 'Fayl əlçatan deyil';
	@override String get mediaUnreadableBody => 'Server bu elementi tapdı, lakin onun faylını oxuya bilmədi (HTTP 404). Fayl yəqin ki, köçürülüb, silinib və ya onun saxlanma yeri oflayndır. Server sahibindən faylı yoxlamasını və kitabxananı yenidən skan etməsini xahiş edin.';
	@override String get serverBusyTitle => 'Yayım əlçatan deyil';
	@override String get serverBusyBody => 'Server bu faylı yayımlamaqdan dəfələrlə imtina etdi (HTTP 503). Server yenidən başladılır və ya məşğul ola bilər, yaxud faylın yerləşdiyi yaddaş oflayn ola bilər. Bir az sonra təzədən cəhd edin — problem davam edərsə, server sahibindən serveri və faylın yerləşdiyi yaddaşı yoxlamasını istəyin.';
	@override String get playbackNotAllowedTitle => 'Oynatmaya icazə verilmir';
	@override String get playbackNotAllowedBody => 'Server bu elementi yayımlamaqdan imtina etdi (HTTP 403). Hesabınızın onu oynatmaq icazəsi olmaya bilər, yaxud server oynatmaya yalnız öz yerli şəbəkəsində icazə verə bilər.';
	@override String get logsUploaded => 'Jurnallar yükləndi';
	@override String get logsUploadFailed => 'Jurnallar yüklənə bilmədi';
	@override String get logId => 'Jurnal ID-si';
	@override String get burnedSubtitlesUseMenu => 'Altyazılar bu yayıma həkk edilib. Onları altyazı menyusundan dəyişin.';
	@override String get noVideoUrl => 'Video URL-i mövcud deyil';
	@override String get playbackNoMediaSources => 'Server oynadıla bilən media mənbəyi qaytarmadı';
	@override String get playbackDataNotPrepared => 'Məlumatları hazır olmadan oynatma başladıldı';
	@override String get streamSelectionUnavailable => 'Bu mənbə üçün yayım seçimi mövcud deyil';
	@override String get streamSelectionFailed => 'Seçilmiş yayımları tətbiq etmək olmadı';
	@override String get trackSelectionNotRemembered => 'Bu trek seçimi yalnız cari oynatmaya tətbiq olunur.';
	@override String get serverUnavailableForProfile => 'Aktiv profil üçün heç bir server mövcud deyil';
}

// Path: sourceLibraries
class _Translations$sourceLibraries$az extends Translations$sourceLibraries$en {
	_Translations$sourceLibraries$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Serverləriniz və kitabxanalarınız';
	@override String get description => 'Luroka-nun Ev, axtarış, mövcudluğu kəşf və Studios üçün istifadə etdiyi kitabxanaları seçin. Əsas sıra sırası ayrıca fərdiləşdirilir.';
	@override String get partial => 'Bəzi serverləri yoxlamaq mümkün olmadı. Həmin kitabxanalar üçün saxladığınız seçimləriniz saxlanılır. Yenidən cəhd etmək üçün yeniləyin.';
	@override String get loadFailed => 'Kitabxanalarınızı yükləmək mümkün olmadı. Bağlantını yoxlayın və yenidən cəhd edin.';
	@override String get notSelected => 'Seçdiyiniz kitabxanalarda mövcud deyil.';
	@override String get checkOthers => 'Digər qoşulmuş mənbələri yoxlayın';
	@override String get otherSources => 'Digər əlaqəli mənbələrdə mövcuddur';
	@override String get playOnce => 'Bir dəfə oynayın';
	@override String get includeLibrary => 'Bu kitabxananı daxil edin';
	@override String get noOthers => 'Digər əlaqəli mənbələrdə nüsxə tapılmadı.';
	@override String get chooseOne => 'Davam etmək üçün ən azı bir kitabxana seçin.';
}

// Path: subtitlingStyling
class _Translations$subtitlingStyling$az extends Translations$subtitlingStyling$en {
	_Translations$subtitlingStyling$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get text => 'Mətn';
	@override String get border => 'Haşiyə';
	@override String get background => 'Arxa fon';
	@override String get fontSize => 'Şrift ölçüsü';
	@override String get textColor => 'Mətn rəngi';
	@override String get borderSize => 'Haşiyə ölçüsü';
	@override String get borderColor => 'Haşiyə rəngi';
	@override String get backgroundOpacity => 'Arxa fon şəffaflığı';
	@override String get backgroundColor => 'Arxa fon rəngi';
	@override String get position => 'Mövqe';
	@override String get assOverride => 'ASS ləğvi';
	@override String get overrideScale => 'Miqyasla';
	@override String get overrideForce => 'Məcburi et';
	@override String get overrideStrip => 'Formatlaşdırmanı sil';
	@override String get positionTop => 'Yuxarı';
	@override String get positionBottom => 'Aşağı';
	@override String get useMargins => 'Kənar boşluqlardan istifadə et';
	@override String get useMarginsDescription => 'Mətn altyazılarına videodan kənar sahədə icazə ver. Üslublu altyazılar öz orijinal yerləşməsini saxlaya bilər.';
	@override String get anchorToScreen => 'Ekrana bərkit';
	@override String get anchorToScreenDescription => 'Mətn altyazılarını geniş ekranlı videonun altındakı qara zolaqlarda göstər';
	@override String get bold => 'Qalın';
	@override String get italic => 'Kursiv';
	@override String get renderResolution => 'Emal imkanı (Resolution)';
	@override String get renderResolutionScreen => 'Ekran imkanı';
	@override String get renderResolutionVideo => 'Video imkanı';
}

// Path: mpvConfig
class _Translations$mpvConfig$az extends Translations$mpvConfig$en {
	_Translations$mpvConfig$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get title => 'mpv.conf';
	@override String get description => 'Təkmilləşdirilmiş video oynatıcı tənzimləmələri';
	@override String get presets => 'Ön ayarlar';
	@override String get noPresets => 'Yadda saxlanılmış ön ayar yoxdur';
	@override String get saveAsPreset => 'Ön ayar kimi yadda saxla...';
	@override String get presetName => 'Ön ayar adı';
	@override String get presetNameHint => 'Bu ön ayar üçün ad daxil edin';
	@override String get loadPreset => 'Yüklə';
	@override String get deletePreset => 'Sil';
	@override String get presetSaved => 'Ön ayar yadda saxlanıldı';
	@override String get presetLoaded => 'Ön ayar yükləndi';
	@override String get presetDeleted => 'Ön ayar silindi';
	@override String get confirmDeletePreset => 'Bu ön ayarı silmək istədiyinizə əminsiniz?';
	@override String get configPlaceholder => 'gpu-api=vulkan\nhwdec=auto\n# şərh';
	@override String get lineHint => 'option=value';
	@override String get addLine => 'Sətir əlavə et';
	@override String get removeLine => 'Sətiri sil';
	@override String get embeddedVoHint => 'vo, gpu-context və gpu-api Linux-da nəzərə alınmır: daxili video həmişə video müstəvisində vo=libmpv vasitəsilə göstərilir və gpu-next (ArtCNN kimi hesablama şeyderlərinə lazımdır) daxili işləyə bilməz.';
}

// Path: dialog
class _Translations$dialog$az extends Translations$dialog$en {
	_Translations$dialog$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get confirmAction => 'Əməliyyatı təsdiqlə';
}

// Path: profiles
class _Translations$profiles$az extends Translations$profiles$en {
	_Translations$profiles$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get manageProfiles => 'Profilləri idarə edin';
	@override String get quickAccess => 'Sürətli giriş';
	@override String get signOutDevice => 'Bu cihazdan çıxın';
	@override String get addLurokaProfile => 'Luroka profilini əlavə edin';
	@override String get switchingProfile => 'Profil dəyişdirilir…';
	@override String get deleteThisProfileTitle => 'Bu profil silinsin?';
	@override String deleteThisProfileMessage({required Object displayName}) => '${displayName} silinəcək. Qoşulmalar təsirlənmir.';
	@override String get active => 'Aktiv';
	@override String get manage => 'İdarə et';
	@override String get delete => 'Sil';
	@override String get signOut => 'Çıxış et';
	@override String get signOutPlexTitle => 'Plex-dən çıxılsın?';
	@override String signOutPlexMessage({required Object displayName}) => '${displayName} və bütün Plex Home istifadəçiləri silinsin? İstənilən vaxt yenidən daxil ola bilərsiniz.';
	@override String get signOutPlexDeleteDownloads => 'Yükləmələri də silin';
	@override String get signOutPlexDeleteDownloadsDescription => 'Əks halda, onlar bu cihazda qalır və siz bu hesaba yenidən daxil olduğunuz zaman geri qayıdırlar.';
	@override String get signedOutPlex => 'Plex-dən çıxıldı.';
	@override String get signOutFailed => 'Çıxış uğursuz oldu.';
	@override String get sectionTitle => 'Profillər';
	@override String get summarySingle => 'İdarə olunan istifadəçiləri və yerli kimlikləri qarışdırmaq üçün profillər əlavə edin';
	@override String summaryMultipleWithActive({required Object count, required Object activeName}) => '${count} profil · aktiv: ${activeName}';
	@override String summaryMultiple({required Object count}) => '${count} profil';
	@override String get removeConnectionTitle => 'Qoşulma silinsin?';
	@override String removeConnectionMessage({required Object displayName, required Object connectionLabel}) => '${displayName} istifadəçisinin ${connectionLabel} giriş hüququ silinəcək. Digər profillərdə qalacaq.';
	@override String get deleteProfileTitle => 'Profil silinsin?';
	@override String deleteProfileMessage({required Object displayName}) => '${displayName} və onun qoşulmaları silinəcək. Serverlər əlçatan qalır.';
	@override String get profileNameLabel => 'Profil adı';
	@override String get pinProtectionLabel => 'PIN mühafizəsi';
	@override String get pinManagedByPlex => 'PIN Plex tərəfindən idarə olunur. plex.tv-də düzəliş edin.';
	@override String get noPinSetEditOnPlex => 'PIN təyin edilməyib. Tələb etmək üçün plex.tv-də düzəliş edin.';
	@override String get setPin => 'PIN təyin et';
	@override String get setPinTitle => 'PIN təyin et';
	@override String get confirmPinTitle => 'PIN-i təsdiqlə';
	@override String get pinSet => 'PIN təyin edildi';
	@override String get changePin => 'Dəyişdir';
	@override String get removePin => 'Sil';
	@override String get connectionsLabel => 'Qoşulmalar';
	@override String get add => 'Əlavə et';
	@override String get deleteProfileButton => 'Profili sil';
	@override String get noConnectionsHint => 'Qoşulma yoxdur — bu profili istifadə etmək üçün birini əlavə edin.';
	@override String get noConnections => 'Qoşulma yoxdur';
	@override String get plexHomeAccount => 'Plex Ev hesabı';
	@override String plexAccountChip({required Object account}) => 'Plex hesabı: ${account}';
	@override String plexAccountUserChip({required Object account, required Object user}) => '${account} hesabı vasitəsilə ${user}';
	@override String get connectionDefault => 'Defolt';
	@override String connectionAs({required Object displayName}) => '${displayName} olaraq';
	@override String get makeDefault => 'Defolt et';
	@override String get removeConnection => 'Sil';
	@override String get profileRenamed => 'Profil adı dəyişdirildi.';
	@override String borrowAddTo({required Object displayName}) => '${displayName} profilinə əlavə et';
	@override String get borrowExplain => 'Başqa profilin qoşulmasını istifadə edin. PIN ilə qorunan profillər PIN tələb edir.';
	@override String get borrowEmpty => 'Hələ istifadə ediləcək bir şey yoxdur.';
	@override String get borrowEmptySubtitle => 'Əvvəlcə başqa bir profile Plex, Jellyfin və ya Emby qoşun.';
	@override String get borrowLoadFailed => 'Əlçatan qoşulmalar yüklənə bilmədi. Təzədən cəhd edin.';
	@override String borrowFromProfile({required Object displayName}) => '${displayName} profilindən';
	@override String get borrowConnectionBorrowed => 'Qoşulma istifadə edildi.';
	@override String get borrowFailed => 'Qoşulma istifadə edilə bilmədi.';
	@override String get incorrectPin => 'Səhv PIN.';
	@override String get incorrectPinTryAgain => 'Səhv PIN. Lütfən təzədən cəhd edin.';
	@override String get sourceProfileMissingParentAccount => 'Mənbə profilin əsas hesabı yoxdur.';
	@override String get failedToLoadHomeUsers => 'Plex Home istifadəçiləriniz yüklənə bilmədi. Bağlantınızı yoxlayın və yenidən cəhd edin.';
	@override String get failedToVerifyPin => 'PIN təsdiqlənə bilmədi.';
	@override String get newProfile => 'Yeni profil';
	@override String get profileNameHint => 'məs. Qonaqlar, Uşaqlar, Qonaq otağı';
	@override String get pinProtectionOptional => 'PIN mühafizəsi (istəyə bağlı)';
	@override String get pinExplain => 'Profillər arası keçid üçün 4 rəqəmli PIN tələb olunur.';
	@override String get continueButton => 'Davam et';
	@override String get pinsDontMatch => 'PIN-lər uyğun gəlmir';
	@override String get tokenIdentityMismatch => 'Plex profil tokeni gözlənilməyən serveri müəyyən etdi';
}

// Path: connections
class _Translations$connections$az extends Translations$connections$en {
	_Translations$connections$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get sectionTitle => 'Qoşulmalar';
	@override String get addConnection => 'Qoşulma əlavə et';
	@override String get addConnectionSubtitleNoProfile => 'Plex ilə daxil olun və ya Jellyfin yaxud Emby serverinə qoşulun';
	@override String addConnectionSubtitleScoped({required Object displayName}) => '${displayName} profilinə əlavə et: Plex, Jellyfin, Emby və ya başqa profil qoşulması';
	@override String sessionExpiredOne({required Object name}) => '${name} üçün seansın vaxtı bitdi';
	@override String sessionExpiredMany({required Object count}) => '${count} server üçün seansın vaxtı bitdi';
	@override String accessDeniedOne({required Object name}) => '${name} bu hesaba girişi rədd etdi';
	@override String accessDeniedMany({required Object count}) => '${count} server bu hesaba girişi rədd etdi';
	@override String get signInAgain => 'Yenidən daxil ol';
	@override String editMediaBrowserTitle({required Object product}) => '${product} qoşulmasını düzəliş et';
	@override String editMediaBrowserIntro({required Object serverName}) => '${serverName} üçün URL-lər əlavə edin və ya silin. Luroka əlçatan olan ən aşağı gecikməli URL-i istifadə edəcək.';
}

// Path: serversAccounts
class _Translations$serversAccounts$az extends Translations$serversAccounts$en {
	_Translations$serversAccounts$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Serverlər və hesablar';
	@override String get subtitle => 'Plex, Jellyfin və Emby serverləriniz üçün giriş statusu';
	@override String get online => 'Onlayn';
	@override String get offline => 'Oflayn';
	@override String get unknown => 'Bura daxil deyil';
	@override String get usedByNone => 'Heç bir profil tərəfindən istifadə olunmur';
	@override String usedByOne({required Object name}) => '${name} tərəfindən istifadə olunur';
	@override String usedByMany({required Object name, required Object count}) => '${name} və daha çox ${count} tərəfindən istifadə olunur';
	@override String serversOnline({required Object online, required Object total}) => '${online} of ${total} serverləri onlayn';
	@override String get noServers => 'Hələ heç nə qoşulmayıb. Plex hesabınızı və ya Jellyfin və ya Emby serverinizi əlavə edin.';
	@override String get editUrls => 'Server URL-lərini redaktə edin';
}

// Path: accountPreferences
class _Translations$accountPreferences$az extends Translations$accountPreferences$en {
	_Translations$accountPreferences$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get sectionTitle => 'Hesab tərcihləri';
	@override String hubSubtitleSingle({required Object account}) => '${account} hesabında saxlanılan səs, altyazı və kitabxana seçimləri';
	@override String hubSubtitleMultiple({required Object count}) => '${count} hesabda saxlanılan səs, altyazı və kitabxana seçimləri';
	@override String get pickAccount => 'Hər hesab öz tərcihlərini saxlayır. Düzəliş etmək üçün birini seçin.';
	@override String get storedOnAccount => 'Bu seçimlər server hesabında saxlanılır və digər cihazlar da daxil olmaqla, həmin hesabdan istifadə edən hər bir Luroka profili və tətbiqi tərəfindən paylaşılır.';
	@override String get noAccounts => 'Konfiqurasiya ediləcək hesab yoxdur';
	@override String get noAccountsHint => 'Plex-ə daxil olun və ya Jellyfin və ya Emby serverinə qoşulun; o hesabda saxlanılan tərcihlər burada görünəcək.';
	@override String get unavailable => 'Bu hesaba çatmaq olmur';
	@override String get loadFailed => 'Bu tərcihlər yüklənə bilmədi';
	@override String get noPreference => 'Tərcih yoxdur';
	@override String get notSet => 'Təyin edilməyib';
	@override late final _Translations$accountPreferences$groups$az groups = _Translations$accountPreferences$groups$az._(_root);
	@override String get preferredAudioLanguage => 'Üstünlük verilən səs dili';
	@override String get autoSelectAudio => 'Səsi dilə görə seç';
	@override String get autoSelectAudioDescription => 'Söndürüldükdə faylın defolt olaraq işarələdiyi səs treki istifadə olunur.';
	@override String get preferredSubtitleLanguage => 'Üstünlük verilən altyazı dili';
	@override String get subtitleMode => 'Altyazıları aç';
	@override late final _Translations$accountPreferences$subtitleModes$az subtitleModes = _Translations$accountPreferences$subtitleModes$az._(_root);
	@override String get subtitleAccessibility => 'SDH altyazıları';
	@override late final _Translations$accountPreferences$subtitleAccessibilityOptions$az subtitleAccessibilityOptions = _Translations$accountPreferences$subtitleAccessibilityOptions$az._(_root);
	@override String get forcedSubtitles => 'Məcburi altyazılar';
	@override late final _Translations$accountPreferences$forcedSubtitleOptions$az forcedSubtitleOptions = _Translations$accountPreferences$forcedSubtitleOptions$az._(_root);
	@override String get displayMissingEpisodes => 'Çatışmayan seriyaları göstər';
	@override String get displayMissingEpisodesDescription => 'Serverin bildiyi, lakin faylı olmayan seriyaları siyahıya al.';
	@override String get hidePlayedInLatest => 'Baxılmış elementləri Son əlavə olunanlarda gizlət';
	@override String get hidePlayedInLatestDescription => 'Artıq baxdığınız elementləri serverin Son əlavə olunanlar sətirlərində göstərmə.';
	@override String get displayCollectionsView => 'Kolleksiyalar görünüşünü göstər';
	@override String get displayCollectionsViewDescription => 'Kitabxanalarınızla yanaşı serverin Kolleksiyalar görünüşünü də təklif et.';
	@override String get rewatchingInNextUp => 'Təkrar baxılan serialları Sırada saxla';
	@override String get rewatchingInNextUpDescription => 'Bir serialı bitirdikdən sonra yenidən başlasanız, Sırada serialı atmaq əvəzinə təkrar baxışı izləyir.';
	@override String get watchedIndicator => 'Baxıldı göstəriciləri';
	@override late final _Translations$accountPreferences$watchedIndicatorOptions$az watchedIndicatorOptions = _Translations$accountPreferences$watchedIndicatorOptions$az._(_root);
	@override String get mediaReviewsVisibility => 'Reytinq və rəylər';
	@override late final _Translations$accountPreferences$mediaReviewsOptions$az mediaReviewsOptions = _Translations$accountPreferences$mediaReviewsOptions$az._(_root);
}

// Path: discover
class _Translations$discover$az extends Translations$discover$en {
	_Translations$discover$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kəşf et';
	@override String get noContentAvailable => 'Məzmun əlçatan deyil';
	@override String get addMediaToLibraries => 'Kitabxanalarınıza bir az media əlavə edin';
	@override String get continueWatching => 'İzləməyə davam et';
	@override String continueWatchingIn({required Object library}) => '${library} daxilində İzləməyə davam et';
	@override String get nextUp => 'Sırada';
	@override String nextUpIn({required Object library}) => '${library} daxilində Sırada';
	@override String get recentlyAdded => 'Son əlavə olunanlar';
	@override String recentlyAddedIn({required Object library}) => '${library} daxilində Son əlavə olunanlar';
	@override String latestAlbumsIn({required Object library}) => '${library} daxilində Son albomlar';
	@override String recentlyPlayedIn({required Object library}) => '${library} daxilində Son oynadılanlar';
	@override String mostPlayedIn({required Object library}) => '${library} daxilində Ən çox oynadılanlar';
	@override String playEpisode({required Object season, required Object episode}) => 'M${season}S${episode}';
	@override String get overview => 'İcmal';
	@override String get cast => 'Aktyorlar';
	@override String get extras => 'Treylerlər və Əlavələr';
	@override String get studio => 'Studiya';
	@override String get rating => 'Reytinq';
	@override String get director => 'Rejissor';
	@override String get directors => 'Rejissorlar';
	@override String get movie => 'Kino';
	@override String get tvShow => 'TV Şou';
	@override String minutesLeft({required Object minutes}) => '${minutes} dəq qaldı';
	@override String get moreLikeThis => 'Buna bənzərlər';
	@override String titleCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('az'))(n,
		one: '${n} başlıq',
		other: '${n} başlıq',
	);
	@override late final _Translations$discover$person$az person = _Translations$discover$person$az._(_root);
}

// Path: errors
class _Translations$errors$az extends Translations$errors$en {
	_Translations$errors$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String searchFailed({required Object error}) => 'Axtarış uğursuz oldu: ${error}';
	@override String get searchUnavailable => 'Axtarış heç bir media serverinə çata bilmədi.';
	@override String connectionTimeout({required Object context}) => '${context} yüklənərkən vaxt bitdi';
	@override String get connectionFailed => 'Media serverinə qoşulmaq olmur';
	@override String unableToLoad({required Object context}) => '${context} yüklənə bilmədi. Lütfən təzədən cəhd edin.';
	@override String get noClientAvailable => 'Əlçatan klient yoxdur';
	@override String get pleaseEnterToken => 'Lütfən token daxil edin';
	@override String get invalidToken => 'Yanlış token';
	@override String failedToVerifyToken({required Object error}) => 'Token təsdiqlənə bilmədi: ${error}';
	@override String failedToSwitchProfile({required Object displayName}) => '${displayName} profilinə keçilə bilmədi';
	@override String failedToDeleteProfile({required Object displayName}) => '${displayName} profili silinə bilmədi';
	@override String get failedToRate => 'Reytinq yenilənə bilmədi';
	@override String get reasonTimedOut => 'bağlantının vaxtı bitdi';
	@override String get reasonUnreachable => 'serverə çatmaq mümkün olmadı';
	@override String get reasonRefused => 'server sorğunu rədd etdi';
	@override String get reasonNotFound => 'element artıq serverdə yoxdur';
	@override String get reasonServerError => 'server xəta bildirdi';
	@override String get reasonCancelled => 'sorğu ləğv edildi';
	@override String get reasonUnexpected => 'gözlənilməz xəta baş verdi';
}

// Path: libraries
class _Translations$libraries$az extends Translations$libraries$en {
	_Translations$libraries$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kitabxanalar';
	@override String get fallbackTitle => 'Kitabxana';
	@override String get scanLibraryFiles => 'Kitabxana fayllarını skan et';
	@override String get scanLibrary => 'Kitabxananı skan et';
	@override String get analyze => 'Analiz et';
	@override String get analyzeLibrary => 'Kitabxananı analiz et';
	@override String get refreshMetadata => 'Meta-məlumatları yenilə';
	@override String get emptyTrash => 'Zibil qutusunu təmizlə';
	@override String emptyingTrash({required Object title}) => '"${title}" üçün zibil qutusu təmizlənir...';
	@override String trashEmptied({required Object title}) => '"${title}" üçün zibil qutusu təmizləndi';
	@override String failedToEmptyTrash({required Object error}) => 'Zibil qutusu təmizlənə bilmədi: ${error}';
	@override String analyzing({required Object title}) => '"${title}" analiz edilir...';
	@override String analysisStarted({required Object title}) => '"${title}" üçün analiz başladı';
	@override String failedToAnalyze({required Object error}) => 'Kitabxana analiz edilə bilmədi: ${error}';
	@override String get noLibrariesFound => 'Kitabxana tapılmadı';
	@override String get allLibrariesHidden => 'Bütün kitabxanalar gizlədilib';
	@override String hiddenLibrariesCount({required Object count}) => 'Gizli kitabxanalar (${count})';
	@override String get thisLibraryIsEmpty => 'Bu kitabxana boşdur';
	@override String get noItemsMatchFilters => 'Filtrlərə uyğun element tapılmadı';
	@override String get resetFilters => 'Filtrləri sıfırla';
	@override String get all => 'Hamısı';
	@override String get clearAll => 'Hamısını təmizlə';
	@override String scanLibraryConfirm({required Object title}) => '"${title}" kitabxanasını skan etmək istədiyinizdən əminsiniz?';
	@override String analyzeLibraryConfirm({required Object title}) => '"${title}" kitabxanasını analiz etmək istədiyinizdən əminsiniz?';
	@override String refreshMetadataConfirm({required Object title}) => '"${title}" üçün meta-məlumatları yeniləmək istədiyinizdən əminsiniz?';
	@override String emptyTrashConfirm({required Object title}) => '"${title}" üçün zibil qutusunu təmizləmək istədiyinizdən əminsiniz?';
	@override String get manageLibraries => 'Kitabxanaları idarə et';
	@override String get sort => 'Sırala';
	@override String get sortBy => 'Sıralama meyarı';
	@override String get filters => 'Filtrlər';
	@override String get confirmActionMessage => 'Bu əməliyyatı yerinə yetirmək istədiyinizdən əminsiniz?';
	@override String get showLibrary => 'Kitabxananı göstər';
	@override String get hideLibrary => 'Kitabxananı gizlət';
	@override String get libraryOptions => 'Kitabxana seçimləri';
	@override String get content => 'kitabxana məzmunu';
	@override String get selectLibrary => 'Kitabxana seç';
	@override String filtersWithCount({required Object count}) => 'Filtrlər (${count})';
	@override String get noRecommendations => 'Tövsiyə yoxdur';
	@override String get noCollections => 'Bu kitabxanada kolleksiya yoxdur';
	@override String get noFoldersFound => 'Qovluq tapılmadı';
	@override String get folders => 'qovluqlar';
	@override late final _Translations$libraries$tabs$az tabs = _Translations$libraries$tabs$az._(_root);
	@override late final _Translations$libraries$groupings$az groupings = _Translations$libraries$groupings$az._(_root);
	@override late final _Translations$libraries$filterCategories$az filterCategories = _Translations$libraries$filterCategories$az._(_root);
	@override late final _Translations$libraries$sortLabels$az sortLabels = _Translations$libraries$sortLabels$az._(_root);
	@override late final _Translations$libraries$advancedFilters$az advancedFilters = _Translations$libraries$advancedFilters$az._(_root);
}

// Path: about
class _Translations$about$az extends Translations$about$en {
	_Translations$about$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Haqqında';
	@override String get openSourceLicenses => 'Açıq mənbə lisenziyaları';
	@override String versionLabel({required Object version}) => 'Versiya ${version}';
	@override String get appDescription => 'Flutter üçün gözəl bir Plex, Jellyfin və Emby klienti';
	@override String get customSource => 'Mənbə kodu';
	@override String get basedOnLuroka => 'Plezy kod bazasında qurulmuşdur';
	@override String get viewLicensesDescription => 'Üçüncü tərəf kitabxanalarının lisenziyalarına baxın';
	@override String get appSection => 'Tətbiq';
	@override String get communitySection => 'İcma';
	@override String get creditsSection => 'Kreditlər';
	@override String get legalSection => 'Hüquqi';
	@override String versionMeta({required Object version, required Object build, required Object platform}) => 'v${version} (${build}) · ${platform}';
	@override String versionMetaNoBuild({required Object version, required Object platform}) => 'v${version} · ${platform}';
	@override String get versionUnavailable => 'Versiya mövcud deyil';
	@override String get versionDetails => 'Versiya təfərrüatları';
	@override String versionDetailsTitle({required Object version, required Object build}) => 'Luroka ${version} (${build})';
	@override String platformLine({required Object platform}) => 'Platforma: ${platform}';
	@override String deviceLine({required Object model}) => 'Cihaz: ${model}';
	@override String packageLine({required Object package}) => 'Paket: ${package}';
	@override String localeLine({required Object locale}) => 'Dil: ${locale}';
	@override String get copyDetails => 'Detalları kopyalayın';
	@override String get detailsCopied => 'Tətbiq təfərrüatları kopyalandı';
	@override String get detailsCopyFailed => 'Tətbiq təfərrüatlarını kopyalamaq mümkün olmadı';
	@override String get checkForUpdatesDescription => 'Daha yeni buraxılış üçün GitHub-a baxın';
	@override String get checkingForUpdates => 'Güncəlləmələr yoxlanılır...';
	@override String get whatsNew => 'Nə yenilik var';
	@override String get releaseNotesUnavailable => 'Buraxılış qeydləri mövcud deyil.';
	@override String get sourceCodeDescription => 'GitHub-da Luroka';
	@override String get reportIssue => 'Problemi bildirin';
	@override String get reportIssueDescription => 'Nəyin səhv olduğunu bizə deyin';
	@override String get documentation => 'Sənədləşdirmə';
	@override String get documentationDescription => 'Quraşdırma, xüsusiyyətlər və qeydlər qurmaq';
	@override String get upstreamProjectDescription => 'edde746 və ianəçilər tərəfindən açıq mənbəli layihə';
	@override String get upstreamWebsite => 'Upstream veb saytı';
	@override String get attribution => 'Məlumat və atribut';
	@override String get attributionDescription => 'Metadata, reytinqlər və ticarət nişanları';
	@override String get attributionBody => 'Bu məhsul TMDB API istifadə edir, lakin TMDB tərəfindən təsdiqlənməyib və ya sertifikatlaşdırılmayıb. Populyarlıq siyahıları, metadata və IMDb reytinqləri Cinemeta tərəfindən təmin edilir. Xallar mənbə etiketlərini saxlayır.';
	@override String get trademarkNotices => 'Plex, Jellyfin, Emby, Trakt, Simkl, MyAnimeList, AniList, TMDB və əlaqəli nişanlar müvafiq sahiblərinin ticarət nişanlarıdır. Luroka onlarla əlaqəli deyil və onlar tərəfindən təsdiqlənmir.';
	@override String get privacyPolicy => 'Məxfilik siyasəti';
	@override String get privacyPolicyDescription => 'Məlumatlarınız necə idarə olunur';
	@override String get gplLicense => 'GNU GPL-3.0 lisenziyası';
	@override String get gplLicenseDescription => 'Luroka pulsuz proqramdır';
	@override String get linkOpenFailed => 'Bu keçidi açmaq mümkün olmadı';
	@override String get opensInBrowser => 'Brauzerinizdə açılır';
	@override String get footer => 'Luroka GPL-3.0 altında pulsuz proqramdır.';
	@override String copyright({required Object year}) => '© ${year} Luroka ianəçilər';
}

// Path: serverSelection
class _Translations$serverSelection$az extends Translations$serverSelection$en {
	_Translations$serverSelection$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String noServersFoundForAccount({required Object username, required Object email}) => '${username} (${email}) üçün server tapılmadı';
	@override String failedToLoadServers({required Object error}) => 'Serverlər yüklənə bilmədi: ${error}';
	@override String get noValidServers => 'Bu hesabda istifadəyə yararlı server tapılmadı';
}

// Path: hubDetail
class _Translations$hubDetail$az extends Translations$hubDetail$en {
	_Translations$hubDetail$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Başlıq';
	@override String get releaseYear => 'Buraxılış ili';
	@override String get dateAdded => 'Əlavə olunma tarixi';
	@override String get rating => 'Reytinq';
	@override String get noItemsFound => 'Element tapılmadı';
}

// Path: logs
class _Translations$logs$az extends Translations$logs$en {
	_Translations$logs$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get clearLogs => 'Jurnalları təmizlə';
	@override String get copyLogs => 'Jurnalları kopyala';
	@override String get uploadLogs => 'Jurnalları yüklə';
}

// Path: startup
class _Translations$startup$az extends Translations$startup$en {
	_Translations$startup$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get failedTitle => 'Luroka başlaya bilmədi';
	@override String get failedBody => 'Başlatma zamanı nəsə səhv getdi. Aşağıdakı təfərrüatlar nəyin uğursuz olduğunu göstərir.';
	@override String get failedBodyRepairable => 'Luroka-nin saxlanmış tənzimləmə faylı zədələnib və Luroka başlamazdan əvvəl yenidən qurulmalıdır. Təzədən cəhd etmək kömək etməyəcək — Yaddaşı təmir et seçin.';
	@override String get phaseLabel => 'Addım';
	@override String get showDetails => 'Təfərrüatları göstər';
	@override String get hideDetails => 'Təfərrüatları gizlət';
	@override String get copyDetails => 'Təfərrüatları kopyala';
	@override String get detailsCopied => 'Təfərrüatlar buferə kopyalandı';
	@override String get uploadDetails => 'Təfərrüatları yüklə';
	@override String get repairStorage => 'Yaddaşı təmir et';
	@override String get repairTitle => 'Saxlanmış məlumatlar təmir edilsin?';
	@override String get repairBodyCommon => 'Luroka-nin tənzimləmə faylı zədələnib və oxuna bilmir. Təmir bütün tənzimləmələri defolt vəziyyətinə sıfırlayır.';
	@override String get repairBodyOneCredential => 'Bir saxlanmış daxil olma məlumatı zədələnib və oxuna bilmir. Təmir yalnız onu silir; digər tənzimləmələrinizə toxunulmur.';
	@override String get repairBodySignInsKept => 'Serverləriniz və profilləriniz daxil olmuş vəziyyətdə qalmalıdır.';
	@override String get repairBodySignInsLost => 'Saxlanmış daxil olmalarınızı qoruyan açar bu fayldan bərpa edilə bilmir, ona görə də hər serverə və profilə yenidən daxil olmalı olacaqsınız. Media serverinizdə heç nəyə təsir olunmur.';
	@override String get repairBodySessionsUncertain => 'İzləyicilər (MAL, AniList, Simkl, Trakt) və Seerr ayrıca saxlanılır və qalıb-qalmayacaqları bəlli deyil. Luroka sizə nəyi saxladığını dəqiq bildirəcək.';
	@override String get repairConfirm => 'Təmir et';
	@override String get repairSucceeded => 'Yaddaş təmir edildi';
	@override String get repairNeedsRestart => 'Yaddaş təmir edildi — yenidən başlatma tələb olunur';
	@override String get restartRequiredBody => 'Məlumatlarınız təmir edildi, lakin Luroka ondan istifadə etmək üçün yenidən başlamalıdır. Luroka-ni bağlayın və yenidən açın.';
	@override String get quitLuroka => 'Luroka-dən çıx';
	@override String get repairFailed => 'Təmir uğursuz oldu';
	@override String get repairKeptSignIns => 'Serverləriniz və profilləriniz hələ də daxil olub.';
	@override String get repairLostSignIns => 'Saxlanmış daxil olmalarınızı qoruyan açar bərpa edilə bilmədi. Hər serverə və profilə yenidən daxil olmalı olacaqsınız.';
	@override String get repairLostSessions => 'Ən azı bir izləyici və ya Seerr əlaqəsi itirildi və yenidən qoşulmalıdır.';
	@override String get backupTitle => 'Zədələnmiş faylın nüsxəsi saxlanıldı';
	@override String get backupWarning => 'O, daxil olma məlumatlarınızı ehtiva edir. Onu yükləməyin və ya paylaşmayın.';
	@override String get deleteBackup => 'Nüsxəni sil';
	@override String get backupDeleted => 'Nüsxə silindi.';
	@override String get previousFailureTitle => 'Luroka son dəfə başlaya bilmədi';
}

// Path: licenses
class _Translations$licenses$az extends Translations$licenses$en {
	_Translations$licenses$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get relatedPackages => 'Əlaqəli paketlər';
	@override String get license => 'Lisenziya';
	@override String licenseNumber({required Object number}) => 'Lisenziya ${number}';
	@override String licensesCount({required Object count}) => '${count} lisenziya';
	@override String get searchHint => 'Paketləri axtarın';
	@override String noResults({required Object query}) => '"${query}" ilə uyğun paket yoxdur';
	@override String get clearSearch => 'Axtarışı təmizləyin';
}

// Path: navigation
class _Translations$navigation$az extends Translations$navigation$en {
	_Translations$navigation$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get libraries => 'Kitabxanalar';
	@override String get downloads => 'Yükləmələr';
	@override String get liveTv => 'Canlı TV';
	@override String get explore => 'Kəşf et';
}

// Path: explore
class _Translations$explore$az extends Translations$explore$en {
	_Translations$explore$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kəşf et';
	@override String get selectSource => 'Mənbə seçin';
	@override late final _Translations$explore$rows$az rows = _Translations$explore$rows$az._(_root);
	@override late final _Translations$explore$status$az status = _Translations$explore$status$az._(_root);
	@override String episodeCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('az'))(n,
		one: '${n} seriya',
		other: '${n} seriya',
	);
	@override String get cast => 'Aktyorlar';
	@override String get characters => 'Personajlar';
	@override String get addToWatchlist => 'İzləmə siyahısına əlavə et';
	@override String get removeFromWatchlist => 'İzləmə siyahısından sil';
	@override String get addedToWatchlist => 'Baxış siyahısına əlavə edildi';
	@override String get removedFromWatchlist => 'Baxış siyahısından silindi';
	@override String get watchlistUpdateFailed => 'İzləmə siyahısı yenilənə bilmədi';
	@override String get watchlistNoMatch => 'Bu elementi heç bir baxış siyahısı ilə uyğunlaşdırmaq olmadı';
	@override String get notInLibrary => 'Kitabxananızda yoxdur';
	@override String get inTheseLibraries => 'Bu kitabxanalarda var';
	@override String get checkingLibrary => 'Kitabxananız yoxlanılır...';
	@override String libraryCheckFailed({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('az'))(n,
		one: '${n} serveri yoxlamaq olmadı',
		other: '${n} serveri yoxlamaq olmadı',
	);
	@override String get emptyTitle => 'Hələlik burada heç nə yoxdur';
	@override String emptyMessage({required Object source}) => '${source} mənbəsindən olan sətirlər burada görünəcək.';
	@override String searchHint({required Object source}) => '${source} daxilində axtar';
	@override String searchEmpty({required Object query}) => '"${query}" üçün nəticə tapılmadı';
	@override String searchPrompt({required Object source}) => '${source} vasitəsilə kino və seriallar axtarın.';
	@override String get searchFailed => 'Axtarış uğursuz oldu. Bağlantınızı yoxlayın və yenidən cəhd edin.';
	@override late final _Translations$explore$badge$az badge = _Translations$explore$badge$az._(_root);
	@override late final _Translations$explore$stats$az stats = _Translations$explore$stats$az._(_root);
	@override late final _Translations$explore$season$az season = _Translations$explore$season$az._(_root);
	@override late final _Translations$explore$format$az format = _Translations$explore$format$az._(_root);
	@override late final _Translations$explore$sourceMaterial$az sourceMaterial = _Translations$explore$sourceMaterial$az._(_root);
	@override late final _Translations$explore$creditRole$az creditRole = _Translations$explore$creditRole$az._(_root);
	@override late final _Translations$explore$relation$az relation = _Translations$explore$relation$az._(_root);
	@override String broadcast({required Object day, required Object time}) => '${day} saat ${time}-da yayımlanır';
	@override String broadcastWithZone({required Object day, required Object time, required Object timezone}) => '${day} saat ${time} (${timezone}) yayımlanır';
	@override late final _Translations$explore$detail$az detail = _Translations$explore$detail$az._(_root);
	@override String totalResults({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('az'))(n,
		one: '${n} nəticə',
		other: '${n} nəticə',
	);
}

// Path: liveTv
class _Translations$liveTv$az extends Translations$liveTv$en {
	_Translations$liveTv$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Canlı TV';
	@override String get guide => 'Bələdçi';
	@override String get noChannels => 'Əlçatan kanal yoxdur';
	@override String get noDvr => 'Serverdə DVR tənzimlənməyib';
	@override String get serverUnavailable => 'Canlı TV serveri əlçatan deyil.';
	@override String get serverNotConnected => 'Canlı TV serverinə qoşulmayıb.';
	@override String get noPrograms => 'Proqram məlumatı yoxdur';
	@override String get liveStreamFailed => 'Canlı yayım uğursuz oldu';
	@override String get unknownProgram => 'Bilinməyən proqram';
	@override String get unknownHub => 'Məlum deyil';
	@override String get unknownError => 'Bilinməyən xəta';
	@override String channelNumber({required Object number}) => 'Kanal ${number}';
	@override String get unknownChannel => 'Bilinməyən kanal';
	@override String get live => 'CANLI';
	@override String get reloadGuide => 'Bələdçini yenilə';
	@override String get searchGuide => 'Bələdçidə axtar';
	@override String get searchHint => 'Kanal və proqram axtar';
	@override String searchNoResults({required Object query}) => '"${query}" üçün uyğunluq tapılmadı';
	@override String get channelsSection => 'Kanallar';
	@override String get programsSection => 'Proqramlar';
	@override String get now => 'İndi';
	@override String get today => 'Bu gün';
	@override String get tomorrow => 'Sabah';
	@override String get midnight => 'Gecə yarısı';
	@override String get overnight => 'Gecə boyu';
	@override String get morning => 'Səhər';
	@override String get daytime => 'Gündüz';
	@override String get evening => 'Axşam';
	@override String get lateNight => 'Gecə vaxtı';
	@override String get whatsOn => 'İndi nə var?';
	@override String get watchChannel => 'Kanala bax';
	@override String get favorites => 'Sevimlilər';
	@override String get reorderFavorites => 'Sevimliləri yenidən sırala';
	@override String get noFavoriteChannels => 'Sevimli kanal yoxdur';
	@override String get noFavoriteChannelsHint => 'Bütün kanalları göstərin, sonra kanalı sevimlilərə əlavə etmək üçün üzərinə uzun basın.';
	@override String get showAllChannels => 'Bütün kanalları göstər';
	@override String get favoritesLoadFailed => 'Sevimlilər yüklənə bilmədi. Bağlantınızı yoxlayın və yenidən cəhd edin.';
	@override String get favoritesUpdateFailed => 'Sevimlilər yenilənə bilmədi.';
	@override String get joinSession => 'Davam edən seansa qoşul';
	@override String watchFromStart({required Object minutes}) => 'Əvvəldən bax (${minutes} dəq əvvəl)';
	@override String get watchLive => 'Canlı bax';
	@override String get goToLive => 'Canlı yayıma keç';
	@override String get record => 'Yaz';
	@override String get recordEpisode => 'Seriyanı yaz';
	@override String get recordSeries => 'Serialı yaz';
	@override String get recordOptions => 'Yazma seçimləri';
	@override String get saveTo => 'Buraya saxla';
	@override String get recordings => 'Yazılmışlar';
	@override String get scheduledRecordings => 'Planlaşdırılmışlar';
	@override String get recordingRules => 'Yazma qaydaları';
	@override String get noScheduledRecordings => 'Yazılacaq heç nə planlaşdırılmayıb';
	@override String get manageRecording => 'Yazmanı idarə et';
	@override String get cancelRecording => 'Yazmanı ləğv et';
	@override String get cancelRecordingTitle => 'Bu yazma ləğv edilsin?';
	@override String cancelRecordingMessage({required Object title}) => '${title} artıq yazılmayacaq.';
	@override String get deleteRule => 'Qaydanı sil';
	@override String get deleteRuleTitle => 'Yazma qaydası silinsin?';
	@override String deleteRuleMessage({required Object title}) => '${title} serialının gələcək seriyaları yazılmayacaq.';
	@override String get recordingScheduled => 'Yazma planlaşdırıldı';
	@override String get alreadyScheduled => 'Bu proqram artıq planlaşdırılıb';
	@override String get dvrAdminRequired => 'DVR tənzimləmələri inzibatçı hesabı tələb edir';
	@override String get recordingFailed => 'Yazma planlaşdırıla bilmədi';
	@override String get recordingTargetMissing => 'Yazma kitabxanası müəyyən edilə bilmədi';
	@override String get recordNotAvailable => 'Bu proqram üçün yazma əlçatan deyil';
	@override String get recordingCancelled => 'Yazma ləğv edildi';
	@override String get recordingRuleDeleted => 'Yazma qaydası silindi';
	@override String get processRecordingRules => 'Qaydaları yenidən qiymətləndir';
	@override String get recordingInProgress => 'İndi yazılır';
	@override String recordingsCount({required Object count}) => '${count} planlaşdırılıb';
	@override String get editRule => 'Qaydanı dəyişdir';
	@override String get editRuleAction => 'Düzəliş et';
	@override String get recordingRuleUpdated => 'Yazma qaydası yeniləndi';
	@override String get guideReloadRequested => 'Bələdçi yenilənməsi tələb olundu';
	@override String get guideReloadFailed => 'Bələdçi yenilənmədi';
	@override String get rulesProcessRequested => 'Qaydaların yenidən qiymətləndirilməsi tələb olundu';
	@override String get rulesProcessFailed => 'Yazı qaydaları yenidən qiymətləndirilmədi';
	@override String get recordShow => 'Şounu yaz';
	@override late final _Translations$liveTv$recordSettings$az recordSettings = _Translations$liveTv$recordSettings$az._(_root);
	@override String startingInMinutes({required Object minutes}) => '${minutes} dəq sonra başlayır';
	@override String dayAtTime({required Object day, required Object time}) => '${day}, saat ${time}';
	@override String invalidPlaybackData({required Object product}) => '${product} etibarsız Canlı TV oynatma məlumatı qaytardı';
	@override String get failedToStartChannel => 'Canlı kanalı başlatmaq olmadı';
	@override String get failedToBuildStreamUrl => 'Yayım URL-i yaratmaq olmadı';
	@override String playbackStartFailed({required Object reason}) => 'Kanal başladıla bilmədi: ${reason}';
	@override String channelSwitchFailed({required Object reason}) => 'Kanal dəyişdirilə bilmədi: ${reason}';
}

// Path: collections
class _Translations$collections$az extends Translations$collections$en {
	_Translations$collections$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kolleksiyalar';
	@override String get collection => 'Kolleksiya';
	@override String get empty => 'Kolleksiya boşdur';
	@override String get deleteCollection => 'Kolleksiyanı sil';
	@override String deleteConfirm({required Object title}) => '"${title}" silinsin? Bu əməliyyat geri qaytarıla bilməz.';
	@override String get deleted => 'Kolleksiya silindi';
	@override String get deleteFailed => 'Kolleksiya silinə bilmədi';
	@override String deleteFailedWithError({required Object error}) => 'Kolleksiya silinə bilmədi: ${error}';
	@override String get selectCollection => 'Kolleksiya seç';
	@override String get collectionName => 'Kolleksiya adı';
	@override String get enterCollectionName => 'Kolleksiya adını daxil edin';
	@override String get addedToCollection => 'Kolleksiyaya əlavə edildi';
	@override String get errorAddingToCollection => 'Kolleksiyaya əlavə edilə bilmədi';
	@override String get created => 'Kolleksiya yaradıldı';
	@override String get removeFromCollection => 'Kolleksiyadan sil';
	@override String removeFromCollectionConfirm({required Object title}) => '"${title}" bu kolleksiyadan silinsin?';
	@override String get removedFromCollection => 'Kolleksiyadan silindi';
	@override String get removeFromCollectionFailed => 'Kolleksiyadan silinə bilmədi';
	@override String removeFromCollectionError({required Object error}) => 'Kolleksiyadan silinərkən xəta: ${error}';
	@override String get searchCollections => 'Kolleksiyalarda axtar...';
}

// Path: playlists
class _Translations$playlists$az extends Translations$playlists$en {
	_Translations$playlists$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Oynatma siyahıları';
	@override String get playlist => 'Oynatma siyahısı';
	@override String get noPlaylists => 'Oynatma siyahısı tapılmadı';
	@override String get create => 'Oynatma siyahısı yarat';
	@override String get playlistName => 'Oynatma siyahısı adı';
	@override String get enterPlaylistName => 'Oynatma siyahısı adını daxil edin';
	@override String get delete => 'Oynatma siyahısını sil';
	@override String get removeItem => 'Oynatma siyahısından sil';
	@override String get smartPlaylist => 'Ağıllı oynatma siyahısı';
	@override String itemCount({required Object count}) => '${count} element';
	@override String get oneItem => '1 element';
	@override String get emptyPlaylist => 'Bu oynatma siyahısı boşdur';
	@override String get deleteConfirm => 'Oynatma siyahısı silinsin?';
	@override String deleteMessage({required Object name}) => '"${name}" siyahısını silmək istədiyinizdən əminsiniz?';
	@override String get created => 'Oynatma siyahısı yaradıldı';
	@override String get deleted => 'Oynatma siyahısı silindi';
	@override String get itemAdded => 'Oynatma siyahısına əlavə edildi';
	@override String get itemRemoved => 'Oynatma siyahısından silindi';
	@override String get selectPlaylist => 'Oynatma siyahısı seç';
	@override String get searchPlaylists => 'Oynatma siyahılarında axtar...';
	@override String get errorCreating => 'Oynatma siyahısı yaradıla bilmədi';
	@override String get errorDeleting => 'Oynatma siyahısı silinə bilmədi';
	@override String get errorLoading => 'Oynatma siyahıları yüklənə bilmədi';
	@override String get errorAdding => 'Oynatma siyahısına əlavə edilə bilmədi';
	@override String get errorReordering => 'Element yenidən sıralana bilmədi';
	@override String get errorRemoving => 'Oynatma siyahısından silinə bilmədi';
}

// Path: music
class _Translations$music$az extends Translations$music$en {
	_Translations$music$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get goToAlbum => 'Alboma keç';
	@override String get goToArtist => 'İfaçıya keç';
	@override String get instantMix => 'Anında qarışıq';
	@override String get playNext => 'Növbətini oynat';
	@override String get addToQueue => 'Növbəyə əlavə et';
	@override String discNumber({required Object n}) => 'Disk ${n}';
	@override String trackCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('az'))(n,
		one: '${n} mahnı',
		other: '${n} mahnı',
	);
	@override String get nowPlaying => 'İndi oynadılır';
	@override String playingFrom({required Object title}) => '${title} mənbəsindən oynadılır';
	@override String get queue => 'Növbə';
	@override String get clearQueue => 'Növbəni təmizlə';
	@override String get lyrics => 'Mahnı sözləri';
	@override String get noLyrics => 'Mahnı sözləri yoxdur';
	@override String get sleepTimer => 'Yuxu taymeri';
	@override String get sleepTimerEndOfTrack => 'Mahnının sonu';
	@override String sleepTimerMinutes({required Object n}) => '${n} dəqiqə';
	@override String get stopPlayback => 'Oynatmanı saxla';
	@override String get previousTrack => 'Əvvəlki mahnı';
	@override String get nextTrack => 'Növbəti mahnı';
	@override String get repeat => 'Təkrarla';
	@override String get repeatAll => 'Hamısını təkrarla';
	@override String get repeatOne => 'Birini təkrarla';
	@override String get instantMixNoServer => 'Ani miks üçün heç bir server mövcud deyil';
	@override String get instantMixFailed => 'Anında qarışıq yüklənə bilmədi';
	@override String get instantMixEmpty => 'Anında qarışıq heç bir mahnı qaytarmadı';
	@override String noAudioUrl({required Object track}) => '${track} üçün səs URL-i mövcud deyil';
	@override late final _Translations$music$discography$az discography = _Translations$music$discography$az._(_root);
}

// Path: watchTogether
class _Translations$watchTogether$az extends Translations$watchTogether$en {
	_Translations$watchTogether$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Birlikdə İzlə';
	@override String get description => 'Dostlarınız və ailənizlə eyni vaxtda baxın';
	@override String get createRoom => 'Otaq yaradın';
	@override String get creatingRoom => 'Otaq yaradılır...';
	@override String get joinRoom => 'Otağa qoşulun';
	@override String get joiningRoom => 'Otağa qoşulma...';
	@override String get connecting => 'Qoşulur...';
	@override String get relayPublic => 'Otaqlar ictimai Open Watch Party relelərindən istifadə edir.';
	@override String relayCustom({required Object url}) => 'Otaqlar ${url} ünvanında rölenizi istifadə edir.';
	@override String get recentRooms => 'Son otaqlar';
	@override String get roomActions => 'Otaq hərəkətləri';
	@override String get renameRoom => 'Otağın adını dəyişdir';
	@override String get removeRoom => 'Sil';
	@override String get enterRoomCode => 'Ev sahibinin 6 simvollu kodunu daxil edin.';
	@override String get roomCode => 'Otaq kodu';
	@override String get paste => 'Yapışdırın';
	@override String get noCodeInClipboard => 'Mübadilə buferində otaq kodu yoxdur';
	@override String get copyCode => 'Kodu kopyalayın';
	@override String get codeCopied => 'Otaq kodu kopyalandı';
	@override String get shareInvite => 'Dəvəti paylaşın';
	@override String get qrShare => 'QR kodu paylaşın';
	@override String get qrHint => 'Bu otağa qoşulmaq üçün Luroka tətbiqi ilə skan edin.';
	@override String get phasePlaying => 'Oynamaq';
	@override String get phasePaused => 'Fasilə verildi';
	@override String get phaseWaiting => 'Hər kəsi gözləyirik';
	@override String get inviteCopied => 'Dəvət kopyalandı. Mesaja yapışdırın.';
	@override String inviteMessage({required Object code}) => 'Luroka: luroka://watch?code=${code}-də Saat Birgə otağıma qoşulun və ya Birlikdə Baxışı açın və ${code} daxil edin.';
	@override String get openSessionControls => 'Birlikdə İzlə seans idarəetmələrini aç';
	@override String get reconnecting => 'Yenidən qoşulur...';
	@override String get reconnectingDescription => 'Bağlantı kəsildi. Otağa avtomatik qoşulursunuz.';
	@override String get connected => 'Qoşuldu';
	@override String get disconnected => 'Bağlantı kəsildi';
	@override String get youAreHost => 'Təşkilatçı sizsiniz';
	@override String hostedBy({required Object name}) => '${name} ev sahibliyi edir';
	@override String get hostControlsPlayback => 'Oynatmanı təşkilatçı idarə edir';
	@override String get anyoneCanControl => 'Oynatmanı hər kəs idarə edə bilər';
	@override String get roomLocked => 'Otaq kilidlidir';
	@override String get nowPlaying => 'İndi oynayır';
	@override String get nothingPlaying => 'Heç nə oynamır';
	@override String get nothingPlayingHost => 'İstənilən kitabxanadan nəyisə çalın və onu otaqla paylaşın.';
	@override String get nothingPlayingGuest => 'Ev sahibi nəyisə oynayanda o, burada açılır.';
	@override String get notShareable => 'Bu videonun kataloq uyğunluğu yoxdur, ona görə də yalnız eyni serverə çıxışı olan insanlar onu oynaya bilər.';
	@override String get searching => 'Bu videonu kitabxanalarınızda axtarırsınız...';
	@override String get yourCopy => 'Sizin surətiniz';
	@override String get sharingYourCopy => 'Kopyanızı paylaşırsınız';
	@override String playingOtherLength({required Object difference}) => '${difference} surəti çalınır';
	@override String get mismatchTitle => 'Surətiniz Fərqli Uzunluqdadır';
	@override String mismatchDescription({required Object difference}) => 'Ən yaxın nüsxə otağın videosundan daha ${difference}-dur. Bu başqa bir kəsik və ya versiya ola bilər.';
	@override String get playAnyway => 'Hər halda oynayın';
	@override String get chooseAnotherCopy => 'Başqa bir nüsxə seçin';
	@override String get dontPlay => 'Oynamayın';
	@override String get unavailableTitle => 'Bu videonuz yoxdur';
	@override String get unavailableDescription => 'Luroka onu kitabxanalarınızda tapa bilmədi. Bir nüsxəni özünüz seçin və ya yenidən axtarın.';
	@override String get chooseCopy => 'Surəti seçin';
	@override String get searchAgain => 'Yenidən Axtar';
	@override String get noCandidates => 'Kitabxanalarınızda heç bir nüsxə tapılmadı.';
	@override String get choiceFailed => 'Bu nüsxəni otaq üçün oynamaq mümkün olmadı';
	@override String lengthLonger({required Object duration}) => '${duration} daha uzun';
	@override String lengthShorter({required Object duration}) => '${duration} daha qısa';
	@override String get lengthSame => 'Eyni uzunluq';
	@override String get lengthUnknown => 'Uzunluğu bilinmir';
	@override String get joinCurrentPlayback => 'Cari oynatmaya qoşul';
	@override String get joinCurrentPlaybackDescription => 'Təşkilatçının indi baxdığı hissəyə keçin';
	@override String get stopMedia => 'Hər kəs üçün videonu dayandırın';
	@override String get syncOffset => 'Ofset sinxronizasiyası';
	@override String get syncOffsetDescription => 'Videonu otağın qabağında və ya arxasında keçirsə, onu dəyişdirin.';
	@override String offsetHint({required Object difference}) => 'Sizin surətiniz otağın videosundan ${difference}-dir.';
	@override String applyDifference({required Object offset}) => '${offset} istifadə edin';
	@override String get offsetMinusSecond => '-1 s';
	@override String get offsetMinusTenth => '-100 ms';
	@override String get offsetPlusTenth => '+100 ms';
	@override String get offsetPlusSecond => '+1 s';
	@override String get participants => 'İştirakçılar';
	@override String participantCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('az'))(n,
		one: '${n} iştirakçısı',
		other: '${n} iştirakçıları',
	);
	@override String get hostBadge => 'TƏŞKİLATÇI';
	@override String nameYou({required Object name}) => '${name} (Siz)';
	@override String get playerIdle => 'Boş';
	@override String get playerLoading => 'Yüklənir';
	@override String get playerReady => 'Hazır';
	@override String get playerBuffering => 'Buferləmə';
	@override String get matchSearching => 'Axtarılır';
	@override String get matchMatched => 'Videosu var';
	@override String get matchMismatched => 'Fərqli uzunluq';
	@override String get matchUnavailable => 'Videosu yoxdur';
	@override String participantOffset({required Object offset}) => 'Ofset ${offset}';
	@override String get makeHost => 'Təşkilatçı təyin et';
	@override String get makeHostQuestion => 'Təşkilatçı köçürülsün?';
	@override String makeHostConfirm({required Object name}) => '${name} oynatmanı idarə edəcək və seansı hər kəs üçün aparacaq.';
	@override String get transfer => 'Köçür';
	@override String get removeParticipant => 'Otaqdan çıxarın';
	@override String removeParticipantQuestion({required Object name}) => '${name} silinsin?';
	@override String removeParticipantConfirm({required Object name}) => '${name} otaqdan çıxır. Otağı kilidləməsəniz, onlar kodla yenidən qoşula bilərlər.';
	@override String get remove => 'Sil';
	@override String get roomSettings => 'Otaq Parametrləri';
	@override String get letEveryoneControl => 'Oxumağa hər kəsin nəzarət etməsinə icazə verin';
	@override String get lockRoom => 'Kilid otağı';
	@override String get lockRoomDescription => 'Heç kim yeni qoşula bilməz';
	@override String get leaveRoom => 'Otağı tərk edin';
	@override String get leaveRoomQuestion => 'Otağı tərk etmək istəyirsiniz?';
	@override String get leaveRoomConfirm => 'Otaq kodu ilə yenidən qoşula bilərsiniz.';
	@override String get leave => 'Çıx';
	@override String get endRoom => 'Son Otaq';
	@override String get endRoomQuestion => 'Son otaq?';
	@override String get endRoomConfirm => 'Bu, hər kəs üçün otağı bitirir.';
	@override String get end => 'Bitir';
	@override String get playBlockedTitle => 'Oxutma başlamadı';
	@override String get playBlockedDescription => 'Otaqla baxmağa başlamaq üçün oynat düyməsini basın.';
	@override late final _Translations$watchTogether$notices$az notices = _Translations$watchTogether$notices$az._(_root);
	@override late final _Translations$watchTogether$ended$az ended = _Translations$watchTogether$ended$az._(_root);
	@override late final _Translations$watchTogether$errors$az errors = _Translations$watchTogether$errors$az._(_root);
	@override String untitledEpisode({required Object number}) => 'Epizod ${number}';
}

// Path: downloads
class _Translations$downloads$az extends Translations$downloads$en {
	_Translations$downloads$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yükləmələr';
	@override String get manage => 'İdarə et';
	@override String get tvShows => 'TV Şoular';
	@override String get movies => 'Kinolar';
	@override String get music => 'Musiqi';
	@override String tracksQueued({required Object count}) => 'Yükləmə üçün ${count} mahnı növbəyə alındı';
	@override String get noDownloads => 'Hələlik yükləmə yoxdur';
	@override String get noDownloadsDescription => 'Yüklənmiş məzmun oflayn baxış üçün burada görünəcək';
	@override String get downloadNow => 'Yüklə';
	@override String get deleteDownload => 'Yükləməni sil';
	@override String get retryDownload => 'Yükləməni təzədən cəhd et';
	@override String get downloadQueued => 'Yükləmə növbəyə alındı';
	@override String get downloadResumed => 'Yükləmə davam etdirildi';
	@override String get serverErrorBitrate => 'Server xətası: fayl sürət limitini aşa bilər';
	@override String get storageFull => 'Boş yaddaşı qorumaq üçün yükləmələr dayandırıldı. Yer boşaldın və ya başqa yükləmə yeri seçin, sonra yenidən cəhd edin.';
	@override String get storageUnavailable => 'Boş yaddaşı yoxlamaq mümkün olmadığı üçün yükləmələr dayandırıldı. Yükləmə yerini yoxlayın, sonra təzədən cəhd edin.';
	@override String episodesQueued({required Object count}) => 'Yükləmə üçün ${count} seriya növbəyə alındı';
	@override String get downloadDeleted => 'Yükləmə silindi';
	@override String deleteConfirm({required Object title}) => '"${title}" bu cihazdan silinsin?';
	@override String get deleteCollectionDownloads => 'Yükləmələri silin';
	@override String deleteCollectionDownloadsConfirm({required Object title}) => 'Bu cihazdan "${title}" faylındakı hər endirmə silinsin?';
	@override String get collectionDownloadsDeleted => 'Endirmələr silindi';
	@override String get cancelledDownloadTitle => 'Ləğv edilmiş yükləmə';
	@override String get cancelledDownloadMessage => 'Bu yükləmə ləğv edildi. Nə etmək istərdiniz?';
	@override String get allEpisodesAlreadyDownloaded => 'Bütün seriyalar artıq yüklənib';
	@override String get resumeDownload => 'Yükləməni davam etdir';
	@override String get cancelledDownload => 'Ləğv edilmiş yükləmə';
	@override String syncingFile({required Object file, required Object status}) => '${file} (${status} eyniləşdirilir)';
	@override String downloadedFileClickToComplete({required Object file}) => 'Yükləndi ${file} - Tamamlamaq üçün toxunun';
	@override String get partialDownloadClickToComplete => 'Hissəvi yükləndi - Tamamlamaq üçün toxunun';
	@override String get deleting => 'Silinir...';
	@override String deletingWithProgress({required Object title, required Object current, required Object total}) => '${title} silinir... (${current} / ${total})';
	@override String get queuedTooltip => 'Növbədədir';
	@override String queuedFilesTooltip({required Object files}) => 'Növbəyə alınan fayllar: ${files}';
	@override String get downloadingTooltip => 'Yüklənir...';
	@override String downloadingFilesTooltip({required Object files}) => 'Yüklənən fayllar: ${files}';
	@override String get noDownloadsTree => 'Yükləmə yoxdur';
	@override String get pauseAll => 'Hamısını fasilə et';
	@override String get resumeAll => 'Hamısını davam etdir';
	@override String get retryAll => 'Hamısını yenidən cəhd edin';
	@override String get retryFailed => 'Uğursuz endirmələri yenidən cəhd edin';
	@override String get deleteAll => 'Hamısını sil';
	@override String get selectVersion => 'Versiya seç';
	@override String get allEpisodes => 'Bütün seriyalar';
	@override String get unwatchedOnly => 'Yalnız baxılmayanlar';
	@override String nextNUnwatched({required Object count}) => 'Növbəti ${count} baxılmayan';
	@override String get customAmount => 'Xüsusi miqdar...';
	@override String get includeSpecials => 'Xüsusi seriyaları daxil et';
	@override String get howManyEpisodes => 'Neçə seriya?';
	@override String get invalidEpisodeCount => 'Düzgün seriya sayı daxil edin.';
	@override String get keepSynced => 'Eyniləşdirilmiş saxla';
	@override String get downloadOnce => 'Bir dəfə yüklə';
	@override String keepNUnwatched({required Object count}) => '${count} baxılmayan seriyanı saxla';
	@override String get editSyncRule => 'Eyniləşdirmə qaydasını dəyişdir';
	@override String get removeSyncRule => 'Eyniləşdirmə qaydasını sil';
	@override String removeSyncRuleConfirm({required Object title}) => '"${title}" eyniləşdirməsi dayandırılsın? Yüklənmiş seriyalar saxlanılacaq.';
	@override String removeListSyncRuleConfirm({required Object title}) => '"${title}" eyniləşdirməsi dayandırılsın?';
	@override String get deleteSyncRuleDownloads => 'Əlaqəli yükləmələri də sil';
	@override String get deleteSyncRuleDownloadsDescription => 'Başqa eyniləşdirmə qaydası və ya profil tərəfindən istifadə olunan yükləmələr saxlanılacaq.';
	@override String syncRuleCreated({required Object count}) => 'Eyniləşdirmə qaydası yaradıldı — ${count} baxılmayan seriya saxlanılır';
	@override String get syncRuleUpdated => 'Eyniləşdirmə qaydası yeniləndi';
	@override String get syncRuleRemoved => 'Eyniləşdirmə qaydası silindi';
	@override String get syncRuleAndDownloadsRemoved => 'Eyniləşdirmə qaydası və əlaqəli yükləmələr silindi';
	@override String get syncRuleCleanupBusy => 'Eyniləşdirmə qaydaları hazırda yenilənir. Bir azdan təzədən cəhd edin.';
	@override String get syncRuleCleanupUnavailable => 'Əlaqəli yükləmələr təhlükəsiz şəkildə müəyyən edilə bilmədi. Serverə yenidən qoşulub cəhd edin və ya qaydanı yükləmələri silmədən silin.';
	@override String syncedNewEpisodes({required Object title, required Object count}) => '${title} üçün ${count} yeni seriya eyniləşdirildi';
	@override String get activeSyncRules => 'Eyniləşdirmə qaydaları';
	@override String get noSyncRules => 'Eyniləşdirmə qaydası yoxdur';
	@override String get manageSyncRule => 'Eyniləşdirməni idarə et';
	@override String get editEpisodeCount => 'Seriya sayı';
	@override String get editSyncFilter => 'Eyniləşdirmə filtri';
	@override String get syncAllItems => 'Bütün elementlər eyniləşdirilir';
	@override String get syncUnwatchedItems => 'Baxılmayan elementlər eyniləşdirilir';
	@override String syncRuleServerContext({required Object server, required Object status}) => 'Server: ${server} • ${status}';
	@override String get syncRuleAvailable => 'Əlçatandır';
	@override String get syncRuleOffline => 'Oflayn';
	@override String get syncRuleSignInRequired => 'Daxil olmaq tələb olunur';
	@override String get syncRuleAccessDenied => 'Giriş rədd edildi';
	@override String get syncRuleNotAvailableForProfile => 'Cari profil üçün əlçatan deyil';
	@override String get syncRuleUnknownServer => 'Bilinməyən server';
	@override String get syncRuleListCreated => 'Eyniləşdirmə qaydası yaradıldı';
	@override late final _Translations$downloads$backgroundWarning$az backgroundWarning = _Translations$downloads$backgroundWarning$az._(_root);
	@override String get options => 'Yükləmə seçimləri';
	@override late final _Translations$downloads$groupings$az groupings = _Translations$downloads$groupings$az._(_root);
	@override String get unknownLibrary => 'Məlum olmayan kitabxana';
	@override String get unknownShow => 'Məlum olmayan serial';
	@override String get unknownSeason => 'Məlum olmayan mövsüm';
	@override String get unknownAlbum => 'Məlum olmayan albom';
	@override String completedOfTotal({required Object completed, required Object total}) => '${completed}/${total} tamamlandı';
	@override String get errorFileNotFound => 'Fayl tapılmadı (404)';
	@override String get errorDownloadNotAllowed => 'Server yükləməyə icazə vermir (403)';
	@override String get errorDownloadFailed => 'Yükləmə uğursuz oldu';
	@override String errorDownloadFailedWithReason({required Object reason}) => 'Yükləmə uğursuz oldu: ${reason}';
	@override String errorHttpStatus({required Object status}) => 'Yükləmə uğursuz oldu (HTTP ${status})';
	@override String errorPostProcessing({required Object reason}) => 'Sonrakı emal uğursuz oldu: ${reason}';
	@override String get reasonFileNotSaved => 'fayl bu cihazda saxlanıla bilmədi';
	@override String get reasonCannotResume => 'yarımçıq yükləməni davam etdirmək mümkün olmadı';
	@override String get reasonDeviceStorageFull => 'bu cihazda yer qalmayıb';
	@override String get notificationDownloading => 'Yüklənir...';
	@override String get notificationComplete => 'Yükləmə tamamlandı';
	@override String get notificationPaused => 'Yükləmə dayandırıldı';
}

// Path: shaders
class _Translations$shaders$az extends Translations$shaders$en {
	_Translations$shaders$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Şeyderlər';
	@override String get noShaderDescription => 'Video təkmilləşdirməsi yoxdur';
	@override String get nvscalerDescription => 'Daha kəskin video üçün NVIDIA miqyaslaması';
	@override String get artcnnVariantNeutral => 'Neytral';
	@override String get artcnnVariantDenoise => 'Küyün aradan qaldırılması';
	@override String get artcnnVariantDenoiseSharpen => 'Küyün aradan qaldırılması + Kəskinləşdirmə';
	@override String get qualityFast => 'Sürətli';
	@override String get qualityHQ => 'Yüksək keyfiyyət';
	@override String get mode => 'Rejim';
	@override String get importShader => 'Şeyder idxal et';
	@override String get customShaderDescription => 'Xüsusi GLSL şeyderi';
	@override String get shaderImported => 'Şeyder idxal edildi';
	@override String get shaderImportFailed => 'Şeyder idxal edilə bilmədi';
	@override String get deleteShader => 'Şeyderi sil';
	@override String deleteShaderConfirm({required Object name}) => '"${name}" silinsin?';
}

// Path: companionRemote
class _Translations$companionRemote$az extends Translations$companionRemote$en {
	_Translations$companionRemote$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Köməkçi pult';
	@override String connectedTo({required Object name}) => '${name} cihazına qoşuldu';
	@override String get unknownDevice => 'Bilinməyən cihaz';
	@override late final _Translations$companionRemote$session$az session = _Translations$companionRemote$session$az._(_root);
	@override late final _Translations$companionRemote$pairing$az pairing = _Translations$companionRemote$pairing$az._(_root);
	@override late final _Translations$companionRemote$remote$az remote = _Translations$companionRemote$remote$az._(_root);
	@override late final _Translations$companionRemote$errors$az errors = _Translations$companionRemote$errors$az._(_root);
	@override String get closedBeforeAuth => 'Bağlantı autentifikasiyadan əvvəl bağlandı';
}

// Path: videoSettings
class _Translations$videoSettings$az extends Translations$videoSettings$en {
	_Translations$videoSettings$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get playbackSpeed => 'Oynatma sürəti';
	@override String get normalSpeed => 'Normal';
	@override String sleepTimerActive({required Object duration}) => 'Aktivdir (${duration})';
	@override String get zoom => 'Miqyas';
	@override String get sleepTimer => 'Yuxu taymeri';
	@override String get audioSync => 'Səs sinxronizasiyası';
	@override String get subtitleSync => 'Altyazı sinxronizasiyası';
	@override String get hdr => 'HDR';
	@override String get hdrUnsupported => 'HDR burada əlçatan deyil — bu masaüstü kompozitoru və ya video çıxışı onu ötürə bilmir.';
	@override String get hdrToneMapping => 'HDR ton uyğunlaşdırması';
	@override String get hdrToneMappingCompositor => 'Kompozitor';
	@override String get hdrToneMappingCompositorDescription => 'Mənbənin HDR metaməlumatlarını dəyişmədən ötür və ton uyğunlaşdırmasını masaüstü kompozitoruna həvalə et.';
	@override String get hdrToneMappingPlayer => 'Oynadıcı';
	@override String get hdrToneMappingPlayerDescription => 'Oynadıcıda tonları ekranın pik parlaqlığına uyğunlaşdır, sonra nəticəni kompozitora bildir.';
	@override String get hdrToneMappingFailed => 'HDR ton uyğunlaşdırmasını dəyişmək olmadı — əvvəlki rejim hələ də aktivdir.';
	@override String get audioOutput => 'Səs çıxışı';
	@override String get performanceOverlay => 'Məhsuldarlıq paneli';
	@override String get audioOutputDolbyAtmos => 'Dolby Atmos';
	@override String get audioOutputDolbyAudio => 'Dolby Audio';
	@override String get audioOutputSurround => 'Əhatəli səs';
	@override String get audioOutputSpatial => 'Məkan səsi';
	@override String get audioOutputStereo => 'Stereo';
	@override String get audioNormalization => 'Səsin gurluğunu normallaşdır';
	@override String get audioNormalizationDisablesPassthrough => 'Səsi PCM-ə dekodlayır; bu aktivkən birbaşa ötürmə söndürülür';
}

// Path: performanceOverlay
class _Translations$performanceOverlay$az extends Translations$performanceOverlay$en {
	_Translations$performanceOverlay$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get color => 'Rəng';
	@override String get performance => 'Məhsuldarlıq';
	@override String get buffer => 'Bufer';
	@override String get app => 'Tətbiq';
	@override String get decoder => 'Çözücü';
	@override String get rawDecoder => 'Xam çözücü';
	@override String get tunneling => 'Tünelləmə';
	@override String get passthrough => 'Birbaşa ötürmə';
	@override String get aspect => 'Nisbət';
	@override String get rotation => 'Dönmə';
	@override String get dvSource => 'DV mənbəyi';
	@override String get dvPath => 'DV yolu';
	@override String get dvRouteDecoder => 'Dolby Vision dekoder';
	@override String get dvRouteDecoderP81 => 'Dolby Vision dekoder (P7→8.1)';
	@override String get dvRouteBaseLayer => 'Əsas təbəqə';
	@override String get dvRouteBaseLayerHdr10 => 'HDR10 əsas qat';
	@override String get dvRouteBaseLayerHlg => 'HLG əsas təbəqəsi';
	@override String get dvRouteBaseLayerSdr => 'SDR əsas təbəqəsi';
	@override String get dvRouteReshaped => 'RPU yenidən formalaşdırıldı (gpu-növbəti)';
	@override String get p7Conversion => 'P7 çevrilməsi';
	@override String get sampleRate => 'Diskretləşdirmə tezliyi';
	@override String get pixelFormat => 'Piksel formatı';
	@override String get hwFormat => 'HW formatı';
	@override String get matrix => 'Matrisa';
	@override String get primaries => 'Əsas rənglər';
	@override String get transfer => 'Ötürmə';
	@override String get renderFps => 'Emal FPS-i';
	@override String get displayFps => 'Ekran FPS-i';
	@override String get avSync => 'A/V Eyniləşdirilməsi';
	@override String get dropped => 'İtirilmiş kadrlar';
	@override String get dvRpus => 'DV RPU-ları';
	@override String get dvRpuAverage => 'DV RPU Ort.';
	@override String get dvSampleAverage => 'DV Nümunə Ort.';
	@override String get maxLuma => 'Maks Luma';
	@override String get minLuma => 'Min Luma';
	@override String get maxCll => 'MaxCLL';
	@override String get maxFall => 'MaxFALL';
	@override String get cacheUsed => 'İstifadə olunan keş';
	@override String get cacheLimit => 'Keş limiti';
	@override String get speed => 'Sürət';
	@override String get player => 'Oynadıcı';
	@override String get memory => 'Yaddaş';
	@override String get uiFps => 'Arayüz (UI) FPS-i';
	@override String get fps => 'FPS';
	@override String get decoderAndroidHw => 'Android HW';
	@override String get decoderNvidiaHw => 'NVIDIA HW';
	@override String get decoderQualcommHw => 'Qualcomm HW';
	@override String get decoderMediatekHw => 'MediaTek HW';
	@override String get decoderExynosHw => 'Exynos HW';
	@override String get decoderSoftware => 'Proqram təminatı';
	@override String get decoderHardware => 'Aparat təminatı';
	@override String get tunnelingActive => 'Aktiv';
	@override String dvRpuFailed({required Object converted, required Object failures}) => '${converted} (${failures} uğursuz)';
}

// Path: externalPlayer
class _Translations$externalPlayer$az extends Translations$externalPlayer$en {
	_Translations$externalPlayer$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Xarici oynadıcı';
	@override String get useExternalPlayer => 'Xarici oynadıcı istifadə et';
	@override String get useExternalPlayerDescription => 'Videoları başqa tətbiqdə açın';
	@override String get selectPlayer => 'Oynadıcı seç';
	@override String get customPlayers => 'Xüsusi oynadıcılar';
	@override String get systemDefault => 'Sistem defoltu';
	@override String get addCustomPlayer => 'Xüsusi oynadıcı əlavə et';
	@override String get playerName => 'Oynadıcı adı';
	@override String get playerNameHint => 'Mənim oynadıcım';
	@override String get playerCommand => 'Əmr';
	@override String get playerPackage => 'Paket adı';
	@override String get playerUrlScheme => 'URL sxemi';
	@override String get off => 'Söndürülüb';
	@override String get launchFailed => 'Xarici oynadıcı açıla bilmədi';
	@override String appNotInstalled({required Object name}) => '${name} quraşdırılmayıb';
	@override String get playInExternalPlayer => 'Xarici oynadıcıda oynat';
}

// Path: metadataEdit
class _Translations$metadataEdit$az extends Translations$metadataEdit$en {
	_Translations$metadataEdit$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get editMetadata => 'Düzəliş et...';
	@override String get screenTitle => 'Meta-məlumatlara düzəliş et';
	@override String get basicInfo => 'Əsas məlumatlar';
	@override String get artwork => 'Şəkillər/Posterlər';
	@override String get advancedSettings => 'Təkmilləşdirilmiş tənzimləmələr';
	@override String get title => 'Başlıq';
	@override String get sortTitle => 'Sıralama başlığı';
	@override String get originalTitle => 'Orijinal başlıq';
	@override String get releaseDate => 'Buraxılış tarixi';
	@override String get contentRating => 'Məzmun reytinqi';
	@override String get studio => 'Studiya';
	@override String get tagline => 'Deviz/Slogan';
	@override String get summary => 'Məzmun/Xülasə';
	@override String get poster => 'Poster';
	@override String get background => 'Arxa fon';
	@override String get logo => 'Loqo';
	@override String get squareArt => 'Kvadrat şəkil';
	@override String get selectPoster => 'Poster seç';
	@override String get selectBackground => 'Arxa fon seç';
	@override String get selectLogo => 'Loqo seç';
	@override String get selectSquareArt => 'Kvadrat şəkil seç';
	@override String get fromUrl => 'URL-dən';
	@override String get uploadFile => 'Fayl yüklə';
	@override String get enterImageUrl => 'Şəkil URL-i daxil edin';
	@override String get imageUrl => 'Şəkil URL-i';
	@override String get metadataUpdated => 'Meta-məlumatlar yeniləndi';
	@override String get metadataUpdateFailed => 'Meta-məlumatlar yenilənə bilmədi';
	@override String get artworkUpdated => 'Şəkillər yeniləndi';
	@override String get artworkUpdateFailed => 'Şəkillər yenilənə bilmədi';
	@override String get noArtworkAvailable => 'Şəkil əlçatan deyil';
	@override String artworkOption({required Object index}) => 'Şəkil seçimi ${index}';
	@override String selectedArtworkOption({required Object index}) => 'Şəkil seçimi ${index}, seçildi';
	@override String get notSet => 'Təyin edilməyib';
	@override String get libraryDefault => 'Kitabxana defoltu';
	@override String get accountDefault => 'Hesab defoltu';
	@override String get seriesDefault => 'Serial defoltu';
	@override String get episodeSorting => 'Seriya sıralaması';
	@override String get oldestFirst => 'Əvvəlcə ən köhnə';
	@override String get newestFirst => 'Əvvəlcə ən yeni';
	@override String get keep => 'Saxla';
	@override String get allEpisodes => 'Bütün seriyalar';
	@override String latestEpisodes({required Object count}) => 'Ən son ${count} seriya';
	@override String get latestEpisode => 'Ən son seriya';
	@override String episodesAddedPastDays({required Object count}) => 'Son ${count} gündə əlavə olunan seriyalar';
	@override String get deleteAfterPlaying => 'Oynatdıqdan sonra seriyaları sil';
	@override String get never => 'Heç vaxt';
	@override String get afterADay => 'Bir gün sonra';
	@override String get afterAWeek => 'Bir həftə sonra';
	@override String get afterAMonth => 'Bir ay sonra';
	@override String get onNextRefresh => 'Növbəti yenilənmədə';
	@override String get seasons => 'Mövsümlər';
	@override String get show => 'Göstər';
	@override String get hide => 'Gizlət';
	@override String get episodeOrdering => 'Seriya ardıcıllığı';
	@override String get tmdbAiring => 'The Movie Database (Yayımlanma)';
	@override String get tvdbAiring => 'TheTVDB (Yayımlanma)';
	@override String get tvdbAbsolute => 'TheTVDB (Mütləq)';
	@override String get metadataLanguage => 'Meta-məlumat dili';
	@override String get useOriginalTitle => 'Orijinal başlığı istifadə et';
	@override String get preferredAudioLanguage => 'Üstünlük verilən səs dili';
	@override String get preferredSubtitleLanguage => 'Üstünlük verilən altyazı dili';
	@override String get subtitleMode => 'Avtomatik altyazı seçim rejimi';
	@override String get manuallySelected => 'Əl ilə seçilmiş';
	@override String get shownWithForeignAudio => 'Xarici səs olduqda göstərilən';
	@override String get alwaysEnabled => 'Həmişə aktivdir';
	@override String get tags => 'Teqlər';
	@override String get addTag => 'Teq əlavə et';
	@override String get genre => 'Janr';
	@override String get director => 'Rejissor';
	@override String get writer => 'Ssenarist';
	@override String get producer => 'Prodüser';
	@override String get country => 'Ölkə';
	@override String get collection => 'Kolleksiya';
	@override String get label => 'Etiket';
	@override String get quickTag => 'Sürətli etiket...';
}

// Path: matchScreen
class _Translations$matchScreen$az extends Translations$matchScreen$en {
	_Translations$matchScreen$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get match => 'Uyğunlaşdır...';
	@override String get fixMatch => 'Uyğunluğu düzəlt...';
	@override String get unmatch => 'Uyğunluğu ləğv et';
	@override String get unmatchConfirm => 'Bu uyğunluq təmizlənsin? Yenidən uyğunlaşdırılana qədər Plex onu uyğunlaşdırılmamış sayacaq.';
	@override String get unmatchSuccess => 'Element uyğunluğu ləğv edildi';
	@override String get unmatchFailed => 'Uyğunluq ləğv edilə bilmədi';
	@override String get matchApplied => 'Uyğunluq tətbiq edildi';
	@override String get matchFailed => 'Uyğunluq tətbiq edilə bilmədi';
	@override String get titleHint => 'Ad';
	@override String get yearHint => 'İl';
	@override String get search => 'Axtar';
	@override String get noMatchesFound => 'Uyğunluq tapılmadı';
}

// Path: serverTasks
class _Translations$serverTasks$az extends Translations$serverTasks$en {
	_Translations$serverTasks$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Server tapşırıqları';
	@override String get failedToLoad => 'Tapşırıqlar yüklənə bilmədi';
	@override String get noTasks => 'İcra olunan tapşırıq yoxdur';
}

// Path: trakt
class _Translations$trakt$az extends Translations$trakt$en {
	_Translations$trakt$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Trakt';
	@override String get connected => 'Qoşuldu';
	@override String connectedAs({required Object username}) => '@${username} olaraq qoşuldu';
	@override String get disconnectConfirm => 'Trakt hesabı ayırılsın?';
	@override String get disconnectConfirmBody => 'Luroka Trakt-a məlumat göndərməyi dayandıracaq.';
	@override String get scrobble => 'Real vaxt rejimində izləmə';
	@override String get scrobbleDescription => 'Oynatma zamanı Trakt-a məlumat göndər.';
	@override String get watchedSync => 'Baxış statusunu eyniləşdir';
	@override String get watchedSyncDescription => 'Luroka-də baxıldı işarələdikdə Trakt-da da işarələnsin.';
}

// Path: seerr
class _Translations$seerr$az extends Translations$seerr$en {
	_Translations$seerr$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Seerr';
	@override String get connectTitle => 'Seerr qoş';
	@override String get serverUrl => 'Server URL-i';
	@override String get serverUrlHelper => 'Seerr ünvanınız';
	@override String get checkServer => 'Davam et';
	@override String get signInWithJellyfin => 'Jellyfin ilə daxil ol';
	@override String get signInWithEmby => 'Emby ilə daxil ol';
	@override String get signInWithLocal => 'Yerli hesab istifadə et';
	@override String get email => 'E-poçt';
	@override String get noSignInMethods => 'Bu Seerr dəstəklənən daxil olma üsulu təklif etmir.';
	@override String get instance => 'Nüsxə';
	@override String get disconnectConfirm => 'Seerr ayırılsın?';
	@override String get disconnectConfirmBody => 'Luroka bu Seerr serverini unudacaq. İstənilən vaxt yenidən qoşula bilərsiniz.';
	@override String get request => 'Sorğu göndər';
	@override String get request4k => '4K sorğu göndər';
	@override String get seasons => 'Mövsümlər';
	@override String get allSeasons => 'Bütün mövsümlər';
	@override String get advancedOptions => 'Təkmilləşdirilmiş';
	@override String get destinationServer => 'Hədəf server';
	@override String get qualityProfile => 'Keyfiyyət profili';
	@override String get rootFolder => 'Kök qovluq';
	@override String get languageProfile => 'Dil profili';
	@override String get tags => 'Teqlər';
	@override String get noTags => 'Teq yoxdur';
	@override String defaultOption({required Object name}) => '${name} (Defolt)';
	@override String get animeNote => 'Bu serial animedir.';
	@override String get requestSubmitted => 'Sorğu göndərildi';
	@override String requestFailed({required Object error}) => 'Sorğu uğursuz oldu: ${error}';
	@override String get requestsLoadFailed => 'Seçimlər yüklənə bilmədi';
	@override String get nothingToRequest => 'Hər şey artıq var və ya sorğu göndərilib.';
	@override String get statusAvailable => 'Əlçatandır';
	@override String get statusPartiallyAvailable => 'Hissəvi əlçatandır';
	@override String get statusRequested => 'Sorğu göndərildi';
	@override String get statusProcessing => 'Emal edilir';
	@override String get statusBlocklisted => 'Bloklanmış';
	@override String couldNotReach({required Object url, required Object error}) => '${url} ünvanına çatmaq olmadı: ${error}';
	@override String noInstanceAtUrl({required Object url, required Object status}) => '${url} ünvanında Seerr instansiyası yoxdur (HTTP ${status})';
	@override String get behindAuthProxy => 'Seerr əvəzinə autentifikasiya edən tərs proksi (SSO və ya HTTP auth) cavab verdi. Luroka onun vasitəsilə daxil ola bilmir: bu tətbiq üçün Seerr-in /api/v1 yolunun proksini yan keçməsinə icazə verin və ya Seerr-ə birbaşa çatan ünvan istifadə edin.';
	@override String get invalidUrl => 'https://seerr.example.com kimi server ünvanı daxil edin';
	@override String get quickConnectUnsupported => 'Bu Seerr nüsxəsi Sürətli Qoşulmanı dəstəkləmir. Seerr 3.4 və ya daha yeni versiya tələb olunur.';
	@override String get notInitialized => 'Bu Seerr instansiyasının ilkin quraşdırılması tamamlanmayıb';
	@override String get noPlexTokenForReauth => 'Yenidən daxil olmaq üçün Plex tokeni mövcud deyil';
	@override String get noStoredCredentials => 'Yenidən daxil olmaq üçün yadda saxlanmış giriş məlumatları mövcud deyil';
	@override String get signInRejected => 'Daxil olma rədd edildi';
	@override String get noSessionCookie => 'Seerr sessiya kukisi yaratmadı';
	@override String get freshCookieRejected => 'Seerr yeni sessiya kukisini rədd etdi';
	@override String get noUserInformation => 'Seerr istifadəçi məlumatlarını qaytarmadı';
	@override String get sessionRejectedAfterReauth => 'Yenidən daxil olduqdan sonra sessiya rədd edildi';
	@override String get permissionDenied => 'Seerr bu əməliyyatı rədd etdi: hesabınızda artıq tələb olunan icazə yoxdur';
	@override String get permissionRevoked => 'Bunu sorğulamaq üçün artıq icazəniz yoxdur';
}

// Path: services
class _Translations$services$az extends Translations$services$en {
	_Translations$services$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Xidmətlər';
	@override String get hubSubtitle => 'İzləmə tərəqqisini eyniləşdirin və yeni başlıqlar sorğulayın.';
	@override String get discoverySection => 'Kəşf və sorğular';
	@override String get trackingSection => 'Baxış izləmə və siyahılar';
	@override String get seerrDescription => 'Seerr serverinizdə film və serialları tapın və sorğu göndərin.';
	@override String get tmdbDescription => 'Filmləri və serialları, posterləri, reytinqləri və təfərrüatları kəşf edin.';
	@override String get traktDescription => 'Film və serialları izləyin, baxış statusunu sinxronlaşdırın və izləmə siyahınızı idarə edin.';
	@override String get malDescription => 'Anime siyahınızı və baxış gedişatınızı sinxron saxlayın.';
	@override String get anilistDescription => 'Anime izləyin və baxış gedişatınızı AniList ilə sinxronlaşdırın.';
	@override String get simklDescription => 'Film, serial və animelərinizi Simkl ilə izləyin.';
	@override String get mdblistDescription => 'MDBList siyahılarınızı və film reytinqlərinizi qoşun.';
	@override String connectionIntro({required Object service}) => '${service} xidmətini cari Luroka profilinizə qoşun. Bu bağlantını və seçimlərini istənilən vaxt buradan idarə edə bilərsiniz.';
	@override String connectService({required Object service}) => '${service} xidmətini qoşun';
	@override String get seerrConnectDescription => 'Luroka daxilində film və serialları tapmaq və sorğu göndərmək üçün Seerr serverinizi qoşun.';
	@override String get seerrServerStep => 'Seerr-i açmaq üçün istifadə etdiyiniz ünvanı daxil edin. Serverinizin hansı giriş üsullarını dəstəklədiyini yoxlayacağıq.';
	@override String get seerrSignInStep => 'Serverinizin dəstəklədiyi giriş üsulunu seçin.';
	@override String get integrations => 'İnteqrasiyalar';
	@override String get notConnected => 'Qoşulmayıb';
	@override String connectedAs({required Object username}) => '@${username} olaraq qoşuldu';
	@override String get scrobble => 'Tərəqqini avtomatik izlə';
	@override String get scrobbleDescription => 'Bir epizodu və ya filmi bitirdikdə siyahınızı yeniləyin.';
	@override String disconnectConfirm({required Object service}) => '${service} ayırılsın?';
	@override String disconnectConfirmBody({required Object service}) => 'Luroka ${service} yeniləməyi dayandıracaq. İstənilən vaxt yenidən qoşula bilərsiniz.';
	@override String connectFailed({required Object service}) => '${service} qoşula bilmədi. Təzədən cəhd edin.';
	@override late final _Translations$services$names$az names = _Translations$services$names$az._(_root);
	@override late final _Translations$services$simklReconnect$az simklReconnect = _Translations$services$simklReconnect$az._(_root);
	@override late final _Translations$services$deviceCode$az deviceCode = _Translations$services$deviceCode$az._(_root);
	@override late final _Translations$services$oauthProxy$az oauthProxy = _Translations$services$oauthProxy$az._(_root);
	@override late final _Translations$services$pendingAuth$az pendingAuth = _Translations$services$pendingAuth$az._(_root);
	@override late final _Translations$services$libraryFilter$az libraryFilter = _Translations$services$libraryFilter$az._(_root);
}

// Path: offlineRecovery
class _Translations$offlineRecovery$az extends Translations$offlineRecovery$en {
	_Translations$offlineRecovery$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Serverləriniz oflayndır';
	@override String get description => 'Endirmələriniz hələ də əlçatandır. Serveriniz geri qayıtdıqda yenidən qoşulmağa cəhd edin və ya başqa server əlavə edin.';
	@override String get appleTvDescription => 'Luroka media serverlərinizə daxil ola bilmədi. Onlar əlçatan olduqda yenidən qoşulmağa cəhd edin və ya baxmağa davam etmək üçün başqa server əlavə edin.';
	@override String get kidsDescription => 'Media serverinizlə əlaqə saxlaya bilmədik. Yenidən qoşulmağa çalışın və ya valideyndən kömək istəyin.';
	@override String get retrying => 'Qoşulur...';
	@override String get addServer => 'Server əlavə edin';
}

// Path: releaseUpdates
class _Translations$releaseUpdates$az extends Translations$releaseUpdates$en {
	_Translations$releaseUpdates$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get manualInstructions => 'GitHub-dən buraxılış arxivini endirin, APK-ni çıxarın və Android cihazınıza quraşdırın.';
	@override String get tvInstructions => 'Bu ünvanı telefonunuzda və ya kompüterinizdə açın və ya buraxılışı yükləmək üçün QR kodunu skan edin.';
	@override String get pressBackAgain => 'Oxutmadan çıxmaq üçün yenidən Geri düyməsini basın';
}

// Path: profileIntegrations
class _Translations$profileIntegrations$az extends Translations$profileIntegrations$en {
	_Translations$profileIntegrations$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Luroka-nu özünüz edin';
	@override String get description => 'Baxdıqlarınızı izləmək və yeni filmlər və şoular tələb etmək üçün sevimli xidmətlərinizi birləşdirin. Hər bir Luroka profilinin öz əlaqələri var.';
	@override String get step => 'Könüllü inteqrasiyalar';
	@override String get examples => 'Trakt · Simkl · AniList · MyAnimeList · Seerr';
	@override String get connect => 'İnteqrasiyaları araşdırın';
	@override String get later => 'Daha sonra quraşdırın';
	@override String get manage => 'İnteqrasiyaları idarə edin';
	@override String forProfile({required Object name}) => '${name} üçün bağlantılar';
}

// Path: profileSetupGuide
class _Translations$profileSetupGuide$az extends Translations$profileSetupGuide$en {
	_Translations$profileSetupGuide$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profilinizi özünüz edin';
	@override String get description => 'Luroka-nun bu cihazda bu profilin necə göründüyünü və hiss etdiyini seçin. Daha sonra Ayarlar bölməsində hər şeyi dəyişə bilərsiniz.';
	@override String get appearanceStep => '1 / 2 · Görünüş';
	@override String get homeStep => '2/2 · Əsas ekranınız';
	@override String get preview => 'Önizləmə';
	@override String get previewTitle => 'Eviniz';
	@override String get previewPoster => 'Poster';
	@override String get posterArtwork => 'Yalnız sənət əsəri';
	@override String get posterWithDetails => 'Poster təfərrüatlarını göstərin';
	@override String get musicDescription => 'Film və ya şounun mövzusunu onun təfərrüatları səhifəsi açıq olduqda, mümkün olduqda oynayın.';
	@override String get moreThemes => 'Daha çox mövzu';
	@override String get fewerThemes => 'Daha az mövzu';
	@override String get spotlightHeading => 'Spotlight-da nə görünməlidir?';
	@override String get progressHeading => 'Baxmağa Davam Et və Sonrası';
	@override String get skip => 'Defoltlardan istifadə edin və baxmağa başlayın';
	@override String get finish => 'Baxmağa başlayın';
	@override String get back => 'Geri';
	@override String get kContinue => 'Davam et';
	@override String get chooseLater => 'Daha sonra kitabxanaları seçin';
	@override String get libraryScope => 'Bu, bu profil üçün Luroka-da görünənləri dəyişir; server icazələrini dəyişmir.';
	@override String get createdTitle => 'Profil yaradıldı';
	@override String get createdDescription => 'Yeni profiliniz hazırdır. Onun sahibi onu ilk dəfə açanda fərdiləşdirə bilər.';
	@override String get switchProfile => 'Bu profilə keçin';
	@override String get stayHere => 'Cari profildə qalın';
}

// Path: animeFavorites
class _Translations$animeFavorites$az extends Translations$animeFavorites$en {
	_Translations$animeFavorites$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get filter => 'Anime';
	@override String get manage => 'Anime idarə et';
	@override String get description => 'Avtomatik aşkarlama anime kitabxana adlarından və mövcud anime teqlərindən və ya identifikatorlarından istifadə edir. Kitabxanaları seçin və fərdi sevimliləri düzəldin. Seçimlər profiliniz üçün bu cihazda yadda saxlanılır.';
	@override String get libraries => 'Anime kitabxanaları';
	@override String get libraryHint => 'Anime adlı kitabxanalar avtomatik olaraq tanınır. Təsnifatını dəyişmək üçün kitabxana seçin.';
	@override String get titles => 'Sevimli başlıqlar';
	@override String get titleHint => 'Onu anime kimi qeyd etmək və ya avtomatik uyğunluğu düzəltmək üçün başlıq seçin.';
	@override String get automatic => 'Avtomatik';
	@override String get include => 'Anime';
	@override String get exclude => 'Anime deyil';
	@override String get automaticIncluded => 'Avtomatik · Anime';
	@override String get automaticExcluded => 'Avtomatik · Anime deyil';
	@override String get noLibraries => 'Əlçatan bağlı kitabxana yoxdur.';
	@override String get noTitles => 'Sevimli filmlər və ya şoular yoxdur.';
	@override String get empty => 'Sevimli anime tapılmadı. Anime kitabxanalarınızı yoxlayın və ya başlığı anime kimi qeyd edin.';
	@override String get saveFailed => 'Anime parametrlərini saxlamaq mümkün olmadı. Yenidən cəhd edin.';
}

// Path: addServer
class _Translations$addServer$az extends Translations$addServer$en {
	_Translations$addServer$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String addMediaBrowserTitle({required Object product}) => '${product} serveri əlavə et';
	@override String get serverUrls => 'Server URL-ləri';
	@override String get serverUrlsHelper => 'Vergüllə ayrılmış bir neçə URL-ə icazə verilir.';
	@override String get findServer => 'Server tap';
	@override String searchingLocalMediaBrowserServers({required Object product}) => 'Yerli ${product} serverləri axtarılır...';
	@override String localMediaBrowserServers({required Object product}) => 'Saxlanılan və yaxınlıqdakı ${product} serverləri';
	@override String get username => 'İstifadəçi adı';
	@override String get password => 'Şifrə';
	@override String get signIn => 'Daxil ol';
	@override String get change => 'Dəyişdir';
	@override String get required => 'Tələb olunur';
	@override String couldNotReachServer({required Object error}) => 'Serverə çatmaq olmadı: ${error}';
	@override String signInFailed({required Object error}) => 'Daxil olma uğursuz oldu: ${error}';
	@override String quickConnectFailed({required Object error}) => 'Sürətli Qoşulma uğursuz oldu: ${error}';
	@override String get addPlexTitle => 'Plex ilə daxil ol';
	@override String get pinExpired => 'PIN-in vaxtı bitdi. Lütfən təzədən cəhd edin.';
	@override String failedToRegisterAccount({required Object error}) => 'Hesab qeydiyyatı uğursuz oldu: ${error}';
	@override String enterMediaBrowserUrlError({required Object product}) => '${product} server URL-inizi daxil edin';
	@override String get addConnectionTitle => 'Qoşulma əlavə et';
	@override String addConnectionTitleScoped({required Object name}) => '${name} profilinə əlavə et';
	@override String get signInWithPlexCard => 'Plex ilə daxil ol';
	@override String get signInWithPlexCardSubtitle => 'Bu cihazı səlahiyyətləndirin. Paylaşılan serverlər əlavə olunur.';
	@override String get signInWithPlexCardSubtitleScoped => 'Plex hesabını səlahiyyətləndirin. Əsas səhifə istifadəçiləri profillərə çevrilir.';
	@override String connectToMediaBrowserCard({required Object product}) => '${product}-a qoşul';
	@override String get connectToMediaBrowserCardSubtitle => 'Server URL-inizi, istifadəçi adınızı və şifrənizi daxil edin.';
	@override String connectToMediaBrowserCardSubtitleScoped({required Object product, required Object name}) => '${product} serverinizə daxil olun. ${name} ilə əlaqələndirilir.';
	@override String get borrowFromAnotherProfile => 'Başqa profildən götür';
	@override String get borrowFromAnotherProfileSubtitle => 'Başqa profilin qoşulmasını yenidən istifadə edin. PIN ilə qorunan profillər PIN tələb edir.';
	@override String get invalidCredentials => 'İstifadəçi adı və ya şifrə yanlışdır';
	@override String get authResponseNotJson => 'Autentifikasiya cavabı etibarlı JSON deyildi';
	@override String get authResponseIncomplete => 'Serverin giriş cavabı natamam idi';
	@override String get quickConnectRejected => 'Quick Connect server tərəfindən rədd edildi';
	@override String get quickConnectNotJson => 'Quick Connect cavabı etibarlı JSON deyildi';
	@override String get quickConnectMissingFields => 'Quick Connect cavabında kod və ya məxfi açar yoxdur';
	@override String get quickConnectPollRejected => 'Quick Connect sorğulaması server tərəfindən rədd edildi';
	@override String get serverTimedOut => 'Server vaxtında cavab vermədi';
	@override String get responseNotJson => 'Server cavabı etibarlı JSON deyildi';
	@override String responseMissingIdentity({required Object product}) => 'Cavabda ID və ya server adı yoxdur — bu, ${product} serveridir?';
	@override String probeFailed({required Object error}) => 'Serverə çatmaq olmadı: ${error}';
	@override String enterAtLeastOneUrl({required Object product}) => 'Ən azı bir ${product} server URL-i daxil edin';
	@override String noReachableServer({required Object product}) => 'Əlçatan ${product} serveri tapılmadı';
	@override String urlsPointToDifferentServers({required Object product}) => 'Bu URL-lər fərqli ${product} serverlərinə aiddir';
	@override String urlDoesNotMatchServer({required Object product}) => 'Bu URL ${product} serverinə uyğun gəlmir';
	@override String get redirectUnsupported => 'Server dəstəklənməyən URL-ə yönləndirdi';
	@override String redirectDifferentHost({required Object product}) => 'Server başqa hosta yönləndirdi. Son ${product} URL-ni birbaşa daxil edin.';
	@override String get redirectInsecure => 'Server HTTPS-dən təhlükəsiz olmayan URL-ə yönləndirdi';
	@override String redirectUnsupportedEnterFinal({required Object product}) => 'Server dəstəklənməyən URL-ə yönləndirdi. Son ${product} URL-ni birbaşa daxil edin.';
}

// Path: appIcon.names
class _Translations$appIcon$names$az extends Translations$appIcon$names$en {
	_Translations$appIcon$names$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get midnight => 'Gecə yarısı';
	@override String get ember => 'Ember';
	@override String get paper => 'Kağız';
	@override String get oled => 'OLED';
	@override String get line => 'Xətt';
	@override String get ocean => 'Okean';
	@override String get ultraviolet => 'Ultraviyole';
	@override String get matcha => 'Matcha';
	@override String get sunset => 'Gün batımı';
	@override String get gold => 'Qızıl';
	@override String get titanium => 'Titan';
	@override String get glass => 'Şüşə';
	@override String get crt => 'CRT';
	@override String get vhs => 'VHS';
	@override String get synthwave => 'Synthwave';
	@override String get pixel => 'Piksel';
	@override String get neon => 'Neon';
	@override String get sticker => 'Stiker';
	@override String get ticket => 'Bilet';
	@override String get pop => 'Pop';
	@override String get strata => 'təbəqələr';
	@override String get facet => 'Faset';
	@override String get tilde => 'Tilde';
}

// Path: common.ratingSource
class _Translations$common$ratingSource$az extends Translations$common$ratingSource$en {
	_Translations$common$ratingSource$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get critic => 'Tənqidçilər';
	@override String get audience => 'Tamaşaçılar';
	@override String get imdb => 'IMDb';
	@override String get tmdb => 'TMDB';
	@override String get rottenTomatoes => 'Rotten Tomatoes';
	@override String get simkl => 'Simkl';
	@override String get mal => 'MyAnimeList';
	@override String get anilist => 'AniList';
	@override String get trakt => 'Trakt';
	@override String get rottenTomatoesCritic => 'Rotten Tomatoes tənqidçiləri';
	@override String get rottenTomatoesAudience => 'Rotten Tomatoes tamaşaçıları';
	@override String get metacritic => 'Metacritic';
	@override String get letterboxd => 'Letterboxd';
}

// Path: common.mediaKind
class _Translations$common$mediaKind$az extends Translations$common$mediaKind$en {
	_Translations$common$mediaKind$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get movie => 'Film';
	@override String get show => 'Serial';
	@override String get season => 'Sezon';
	@override String get episode => 'Epizod';
	@override String get artist => 'İfaçı';
	@override String get album => 'Albom';
	@override String get track => 'Mahnı';
	@override String get collection => 'Kolleksiya';
	@override String get playlist => 'Pleylist';
	@override String get clip => 'Klip';
	@override String get photo => 'Şəkil';
	@override String get folder => 'Qovluq';
}

// Path: supporter.errors
class _Translations$supporter$errors$az extends Translations$supporter$errors$en {
	_Translations$supporter$errors$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get storeUnavailable => 'Satınalmalar mövcud deyil. Mağazaya daxil olduğunuzu və bu cihazda alış-verişə icazə verildiyini yoxlayın.';
	@override String get productNotFound => 'Dəstəkçi alışı hazırda mağazanızda mövcud deyil.';
	@override String get productQueryFailed => 'Qiyməti yükləmək mümkün olmadı. Bağlantınızı yoxlayın və yenidən cəhd edin.';
	@override String get purchaseFailed => 'Satınalma baş tutmadı. Yenidən cəhd edin.';
	@override String get restoreFailed => 'Alışınızı bərpa etmək üçün mağaza ilə əlaqə saxlamaq mümkün olmadı. Yenidən cəhd edin.';
	@override String get nothingToRestore => 'Bu mağaza hesabı üçün heç bir Dəstəkçi alışı tapılmadı.';
}

// Path: themeEditor.slots
class _Translations$themeEditor$slots$az extends Translations$themeEditor$slots$en {
	_Translations$themeEditor$slots$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get bg => 'Fon';
	@override String get surface => 'Səthi';
	@override String get outline => 'Kontur';
	@override String get text => 'Mətn';
	@override String get textMuted => 'İkinci dərəcəli mətn';
	@override String get accent => 'Vurğu';
}

// Path: themeEditor.contrast
class _Translations$themeEditor$contrast$az extends Translations$themeEditor$contrast$en {
	_Translations$themeEditor$contrast$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get textOnBg => 'Fonda mətn';
	@override String get textOnSurface => 'Səthdə mətn';
	@override String get textMutedOnBg => 'Arxa fonda ikinci dərəcəli mətn';
	@override String get textMutedOnSurface => 'Səthdə ikinci dərəcəli mətn';
	@override String get accentOnBg => 'Arxa fonda vurğu';
	@override String get accentOnSurface => 'Səthdə vurğu';
	@override String get labelOnAccent => 'Vurğu üzərində düymə etiketi';
}

// Path: hotkeys.actions
class _Translations$hotkeys$actions$az extends Translations$hotkeys$actions$en {
	_Translations$hotkeys$actions$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get playPause => 'Oynat/Fasilə';
	@override String get volumeUp => 'Səsi artır';
	@override String get volumeDown => 'Səsi azalt';
	@override String seekForward({required Object seconds}) => 'İrəli sar (${seconds}san)';
	@override String seekBackward({required Object seconds}) => 'Geri sar (${seconds}san)';
	@override String get fullscreenToggle => 'Tam ekranı dəyişdir';
	@override String get muteToggle => 'Səsi aç/bağla';
	@override String get subtitleToggle => 'Altyazını aç/bağla';
	@override String get audioTrackNext => 'Növbəti səs zolağı';
	@override String get subtitleTrackNext => 'Növbəti altyazı zolağı';
	@override String get chapterNext => 'Növbəti hissə';
	@override String get chapterPrevious => 'Əvvəlki hissə';
	@override String get episodeNext => 'Növbəti seriya';
	@override String get episodePrevious => 'Əvvəlki seriya';
	@override String get speedIncrease => 'Sürəti artır';
	@override String get speedDecrease => 'Sürəti azalt';
	@override String get speedReset => 'Sürəti sıfırla';
	@override String get zoomIn => 'Yaxınlaşdır';
	@override String get zoomOut => 'Uzaqlaşdır';
	@override String get zoomReset => 'Miqyası sıfırla';
	@override String get subSeekNext => 'Növbəti altyazıya sar';
	@override String get subSeekPrev => 'Əvvəlki altyazıya sar';
	@override String get shaderToggle => 'Şeyderləri aç/bağla';
	@override String get skipMarker => 'Girişi/Titrləri ötür';
	@override String get screenshot => 'Ekran şəkli çək';
}

// Path: videoControls.pipErrors
class _Translations$videoControls$pipErrors$az extends Translations$videoControls$pipErrors$en {
	_Translations$videoControls$pipErrors$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get androidVersion => 'Android 8.0 və ya daha yenisini tələb edir';
	@override String get iosVersion => 'iOS 15.0 və ya daha yenisini tələb edir';
	@override String get permissionDisabled => 'PiP rejimi söndürülüb. Sistem tənzimləmələrindən aktivləşdirin.';
	@override String get notSupported => 'Cihaz PiP rejimini dəstəkləmir';
	@override String get voSwitchFailed => 'PiP üçün video çıxışı dəyişdirilə bilmədi';
	@override String get failed => 'PiP rejimi başladılarkən xəta';
	@override String get prepareFailed => 'PiP rejimi hazırlana bilmədi';
	@override String unknown({required Object error}) => 'Xəta baş verdi: ${error}';
}

// Path: accountPreferences.groups
class _Translations$accountPreferences$groups$az extends Translations$accountPreferences$groups$en {
	_Translations$accountPreferences$groups$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get audioAndSubtitles => 'Səs və altyazılar';
	@override String get libraryDisplay => 'Kitabxana';
	@override String get personalMedia => 'Şəxsi media';
}

// Path: accountPreferences.subtitleModes
class _Translations$accountPreferences$subtitleModes$az extends Translations$accountPreferences$subtitleModes$en {
	_Translations$accountPreferences$subtitleModes$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get none => 'Əl ilə seçilmiş';
	@override String get noneDescription => 'Altyazıları heç vaxt özbaşına açma.';
	@override String get defaultMode => 'Trek bayraqlarına əməl et';
	@override String get defaultModeDescription => 'Hər altyazı trekində saxlanılan defolt və məcburi bayraqları istifadə et.';
	@override String get always => 'Həmişə aktivdir';
	@override String get alwaysDescription => 'Üstünlük verilən dildə altyazı treki mövcuddursa, onu aç.';
	@override String get onlyForced => 'Yalnız məcburi altyazılar';
	@override String get onlyForcedDescription => 'Yalnız məcburi işarələnmiş trekləri yüklə.';
	@override String get smart => 'Xarici səs olduqda göstərilən';
	@override String get smartDescription => 'Altyazıları yalnız səs başqa dildə olduqda aç.';
}

// Path: accountPreferences.subtitleAccessibilityOptions
class _Translations$accountPreferences$subtitleAccessibilityOptions$az extends Translations$accountPreferences$subtitleAccessibilityOptions$en {
	_Translations$accountPreferences$subtitleAccessibilityOptions$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get preferNonSdh => 'SDH olmayan altyazılara üstünlük ver';
	@override String get preferSdh => 'SDH altyazılarına üstünlük ver';
	@override String get onlySdh => 'Yalnız SDH altyazıları';
	@override String get onlyNonSdh => 'Yalnız SDH olmayan altyazılar';
}

// Path: accountPreferences.forcedSubtitleOptions
class _Translations$accountPreferences$forcedSubtitleOptions$az extends Translations$accountPreferences$forcedSubtitleOptions$en {
	_Translations$accountPreferences$forcedSubtitleOptions$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get preferNonForced => 'Məcburi olmayan altyazılara üstünlük ver';
	@override String get preferForced => 'Məcburi altyazılara üstünlük ver';
	@override String get onlyForced => 'Yalnız məcburi altyazılar';
	@override String get onlyNonForced => 'Yalnız məcburi olmayan altyazılar';
}

// Path: accountPreferences.watchedIndicatorOptions
class _Translations$accountPreferences$watchedIndicatorOptions$az extends Translations$accountPreferences$watchedIndicatorOptions$en {
	_Translations$accountPreferences$watchedIndicatorOptions$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get none => 'Heç vaxt';
	@override String get moviesAndShows => 'Kinolar və TV şoular';
	@override String get movies => 'Yalnız kinolar';
	@override String get shows => 'Yalnız TV şoular';
}

// Path: accountPreferences.mediaReviewsOptions
class _Translations$accountPreferences$mediaReviewsOptions$az extends Translations$accountPreferences$mediaReviewsOptions$en {
	_Translations$accountPreferences$mediaReviewsOptions$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get usersAndCritics => 'İstifadəçilər və tənqidçilər';
	@override String get usersOnly => 'Yalnız istifadəçilər';
	@override String get criticsOnly => 'Yalnız tənqidçilər';
	@override String get nobody => 'Gizlədilib';
}

// Path: discover.person
class _Translations$discover$person$az extends Translations$discover$person$en {
	_Translations$discover$person$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get born => 'anadan olub';
	@override String get died => 'öldü';
	@override String get birthplace => 'Doğulduğu yer';
	@override String dateWithAge({required Object date, required Object age}) => '${date} (yaş ${age})';
	@override String dateWithAgeAtDeath({required Object date, required Object age}) => '${date} (yaşlı ${age})';
}

// Path: libraries.tabs
class _Translations$libraries$tabs$az extends Translations$libraries$tabs$en {
	_Translations$libraries$tabs$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get recommended => 'Tövsiyə olunanlar';
	@override String get browse => 'Baxış';
	@override String get collections => 'Kolleksiyalar';
	@override String get playlists => 'Oynatma siyahıları';
}

// Path: libraries.groupings
class _Translations$libraries$groupings$az extends Translations$libraries$groupings$en {
	_Translations$libraries$groupings$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Qruplaşdırma';
	@override String get all => 'Hamısı';
	@override String get movies => 'Kinolar';
	@override String get shows => 'TV Şoular';
	@override String get seasons => 'Mövsümlər';
	@override String get episodes => 'Seriyalar';
	@override String get artists => 'Müğənnilər/Müəlliflər';
	@override String get albums => 'Albomlar';
	@override String get tracks => 'Mahnılar';
	@override String get folders => 'Qovluqlar';
}

// Path: libraries.filterCategories
class _Translations$libraries$filterCategories$az extends Translations$libraries$filterCategories$en {
	_Translations$libraries$filterCategories$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get genre => 'Janr';
	@override String get year => 'İl';
	@override String get contentRating => 'Məzmun reytinqi';
	@override String get tag => 'Teq';
	@override String get unwatched => 'Baxılmayıb';
	@override String get unplayed => 'Oynadılmayıb';
	@override String get favorites => 'Sevimlilər';
	@override String get filePath => 'Fayl yolu';
}

// Path: libraries.sortLabels
class _Translations$libraries$sortLabels$az extends Translations$libraries$sortLabels$en {
	_Translations$libraries$sortLabels$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ad';
	@override String get dateAdded => 'Əlavə olunma tarixi';
	@override String get releaseDate => 'Buraxılış tarixi';
	@override String get rating => 'Reytinq';
	@override String get communityRating => 'İcma reytinqi';
	@override String get criticRating => 'Tənqidçi reytinqi';
	@override String get userRating => 'İstifadəçi reytinqi';
	@override String get datePlayed => 'Oynadılma tarixi';
	@override String get playCount => 'Oynadılma sayı';
	@override String get productionYear => 'İstehsal ili';
	@override String get runtime => 'Müddət';
	@override String get officialRating => 'Rəsmi reytinq';
	@override String get premiereDate => 'Premyera tarixi';
	@override String get startDate => 'Başlanğıc tarixi';
	@override String get airTime => 'Yayımlanma vaxtı';
	@override String get studio => 'Studiya';
	@override String get random => 'Təsadüfi';
	@override String get dateShared => 'Paylaşılma tarixi';
	@override String get latestEpisodeAirDate => 'Son seriya yayın tarixi';
	@override String get lastEpisodeDateAdded => 'Əlavə olunan son seriya tarixi';
	@override String get dateDownloaded => 'Yüklənmə tarixi';
	@override String get size => 'Həcm';
	@override String get library => 'Kitabxana';
}

// Path: libraries.advancedFilters
class _Translations$libraries$advancedFilters$az extends Translations$libraries$advancedFilters$en {
	_Translations$libraries$advancedFilters$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get include => 'Daxil et';
	@override String get exclude => 'İstisna etmək';
	@override String get any => 'İstənilən';
	@override String get yes => 'Bəli';
	@override String get no => 'yox';
	@override String not({required Object value}) => '${value} deyil';
	@override String valueCount({required Object count}) => '${count} seçildi';
	@override String valueCountExcluded({required Object count}) => '${count} xaric edilib';
	@override String get searchValues => 'Axtarış dəyərləri';
	@override String get noValues => 'Dəyər yoxdur';
	@override String get matchContains => 'ehtiva edir';
	@override String get matchNotContains => 'Tərkibində yoxdur';
	@override String get matchIs => 'edir';
	@override String get matchIsNot => 'deyil';
	@override String get matchBeginsWith => 'ilə başlayır';
	@override String get matchEndsWith => 'ilə bitir';
	@override String get textHint => 'Uyğunlaşmaq üçün yazın';
	@override String get from => 'From';
	@override String get to => 'Kimə';
	@override String range({required Object from, required Object to}) => '${from} - ${to}';
	@override String atLeast({required Object value}) => '${value} və yuxarı';
	@override String atMost({required Object value}) => '${value} qədər';
	@override String dateLastDays({required Object count}) => 'Son ${count} gün';
	@override String get dateLastYear => 'Keçən il';
	@override String dateOlderThanDays({required Object count}) => '${count} gündən köhnə';
	@override String get dateOlderThanYear => 'Bir ildən yuxarı';
}

// Path: explore.rows
class _Translations$explore$rows$az extends Translations$explore$rows$en {
	_Translations$explore$rows$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get watchlist => 'İzləmə siyahısı';
	@override String get recommendedMovies => 'Tövsiyə olunan kinolar';
	@override String get recommendedShows => 'Tövsiyə olunan seriallar';
	@override String get trendingMovies => 'Trend kinolar';
	@override String get trendingShows => 'Trend seriallar';
	@override String get popularMovies => 'Məşhur kinolar';
	@override String get popularShows => 'Məşhur seriallar';
	@override String get trendingAnime => 'Trend animelər';
	@override String get suggestedAnime => 'Tövsiyə olunan animelər';
	@override String get airingAnime => 'Ən yaxşı yayımlanan animelər';
	@override String get popularAnime => 'Ən məşhur animelər';
	@override String get trending => 'Trendlər';
	@override String get upcomingMovies => 'Gələcək kinolar';
	@override String get upcomingShows => 'Gələcək seriallar';
}

// Path: explore.status
class _Translations$explore$status$az extends Translations$explore$status$en {
	_Translations$explore$status$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get airing => 'Yayımlanır';
	@override String get ended => 'Bitdi';
	@override String get canceled => 'Ləğv edildi';
	@override String get upcoming => 'Gələcək';
}

// Path: explore.badge
class _Translations$explore$badge$az extends Translations$explore$badge$en {
	_Translations$explore$badge$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String rankPopular({required Object n}) => '#${n} populyar';
	@override String rankAiring({required Object n}) => '#${n} yayımlanır';
	@override String rankRated({required Object n}) => '#${n} qiymətləndirilib';
	@override String rankTrending({required Object n}) => '#${n} trenddə';
	@override String rankSeasonal({required Object season, required Object n}) => '${season} üçün #${n}';
	@override String watchingNow({required Object n}) => '${n} izləyir';
	@override String get available => 'Əlçatandır';
	@override String get partiallyAvailable => 'Hissəvi əlçatandır';
	@override String get availableIn4k => '4K əlçatandır';
	@override String get requested => 'Sorğu göndərildi';
	@override String get pendingApproval => 'Təsdiq gözlənilir';
	@override String get processing => 'Emal edilir';
	@override String get declined => 'Rədd edildi';
	@override String get requestFailed => 'Sorğu uğursuz oldu';
	@override String get requested4k => '4K sorğu göndərildi';
	@override String seasonsAvailable({required Object available, required Object total}) => '${available}/${total} mövsüm';
	@override String nextEpisodeIn({required Object episode, required Object duration}) => 'Ep ${episode} ${duration} sonra';
	@override String nextAiringIn({required Object duration}) => 'Növbəti ${duration} sonra';
	@override String episodesShort({required Object n}) => '${n} ep';
	@override String minutesPerEpisode({required Object n}) => '${n} dəq/ep';
	@override String get adult => '18+';
}

// Path: explore.stats
class _Translations$explore$stats$az extends Translations$explore$stats$en {
	_Translations$explore$stats$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String listed({required Object n}) => '${n} siyahıya alınıb';
	@override String viewersDay({required Object n}) => 'Bu gün ${n} izlədi';
	@override String viewersWeek({required Object n}) => 'Bu həftə ${n} izlədi';
	@override String viewersMonth({required Object n}) => 'Bu ay ${n} izlədi';
	@override String viewersYear({required Object n}) => 'Bu il ${n} izlədi';
	@override String viewersAllTime({required Object n}) => '${n} izləyici';
	@override String planning({required Object n}) => '${n} izləməyi planlaşdırır';
	@override String favorited({required Object n}) => '${n} favorit';
	@override String dropRate({required Object percent}) => '${percent} izləməyi dayandırdı';
	@override String comments({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('az'))(n,
		one: '${n} şərh',
		other: '${n} şərh',
	);
	@override String votes({required Object n}) => '${n} səs';
	@override String watching({required Object n}) => '${n} izləyir';
	@override String completed({required Object n}) => '${n} tamamladı';
	@override String onHold({required Object n}) => '${n} fasilədə';
	@override String dropped({required Object n}) => '${n} izləməyi dayandırdı';
}

// Path: explore.season
class _Translations$explore$season$az extends Translations$explore$season$en {
	_Translations$explore$season$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get winter => 'Qış';
	@override String get spring => 'Yaz';
	@override String get summer => 'Yay';
	@override String get fall => 'Payız';
	@override String withYear({required Object season, required Object year}) => '${season} ${year}';
}

// Path: explore.format
class _Translations$explore$format$az extends Translations$explore$format$en {
	_Translations$explore$format$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get tv => 'TV';
	@override String get tvShort => 'Qısa TV';
	@override String get movie => 'Kino';
	@override String get special => 'Xüsusi buraxılış';
	@override String get ova => 'OVA';
	@override String get ona => 'ONA';
	@override String get music => 'Musiqi';
	@override String get other => 'Digər';
}

// Path: explore.sourceMaterial
class _Translations$explore$sourceMaterial$az extends Translations$explore$sourceMaterial$en {
	_Translations$explore$sourceMaterial$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get original => 'Orijinal';
	@override String get manga => 'Manga';
	@override String get lightNovel => 'Light novel';
	@override String get novel => 'Roman';
	@override String get visualNovel => 'Vizual roman';
	@override String get game => 'Oyun';
	@override String get webComic => 'Veb komiks';
	@override String get musicRelease => 'Musiqi';
	@override String get otherMedia => 'Digər';
}

// Path: explore.creditRole
class _Translations$explore$creditRole$az extends Translations$explore$creditRole$en {
	_Translations$explore$creditRole$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get actor => 'Aktyor';
	@override String get director => 'Rejissor';
	@override String get writer => 'Ssenarist';
	@override String get producer => 'Prodüser';
	@override String get creator => 'Yaradıcı';
	@override String get composer => 'Bəstəkar';
}

// Path: explore.relation
class _Translations$explore$relation$az extends Translations$explore$relation$en {
	_Translations$explore$relation$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get prequel => 'Prikvel';
	@override String get sequel => 'Sikvel';
	@override String get sideStory => 'Yan hekayə';
	@override String get spinOff => 'Spin-off';
	@override String get alternativeVersion => 'Alternativ versiya';
	@override String get summary => 'Xülasə';
	@override String get parentStory => 'Əsas hekayə';
	@override String get adaptation => 'Adaptasiya';
	@override String get other => 'Əlaqəli';
}

// Path: explore.detail
class _Translations$explore$detail$az extends Translations$explore$detail$en {
	_Translations$explore$detail$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get originalTitle => 'Orijinal başlıq';
	@override String get alsoKnownAs => 'Digər adları';
	@override String get studios => 'Studiyalar';
	@override String get country => 'Ölkə';
	@override String get language => 'Dil';
	@override String get released => 'Buraxılıb';
	@override String get physicalRelease => 'Diskdə';
	@override String get ended => 'Bitib';
	@override String addedOn({required Object date}) => '${date} əlavə edildi';
	@override String get yourRating => 'Sizin qiymətləndirməniz';
	@override String get budget => 'Büdcə';
	@override String get revenue => 'Kassa gəliri';
	@override String get contentAdvisory => 'Yaş tövsiyəsi';
	@override String get tags => 'Teqlər';
	@override String get revealSpoilerTags => 'Spoyler teqlərini göstər';
	@override String get links => 'Keçidlər';
	@override String get watchOn => 'İzlə';
	@override String get watchTrailer => 'Treyleri izlə';
	@override String openOn({required Object site}) => '${site} saytında aç';
	@override String get crew => 'Heyət';
	@override String get ratings => 'Reytinq';
	@override String get schedule => 'Cədvəl';
	@override String recommendedByUsers({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('az'))(n,
		one: '${n} istifadəçi tövsiyə edir',
		other: '${n} istifadəçi tövsiyə edir',
	);
	@override String recommendedBy({required Object who}) => '${who} tövsiyə edir';
	@override String favoritedBy({required Object who}) => '${who} favorit edib';
	@override String unairedEpisodes({required Object n}) => '${n} hələ yayımlanmayıb';
	@override String recommendedByPercent({required Object percent}) => 'İzləyicilərin ${percent}-i tövsiyə edir';
	@override String get relatedTitles => 'Əlaqəli başlıqlar';
	@override String get background => 'Arxa fon';
}

// Path: liveTv.recordSettings
class _Translations$liveTv$recordSettings$az extends Translations$liveTv$recordSettings$en {
	_Translations$liveTv$recordSettings$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get startEarly => 'Erkən başla (saniyə)';
	@override String get endLate => 'Gec bitir (saniyə)';
	@override String get newOnly => 'Yalnız yeni epizodlar';
	@override String get anyChannel => 'İstənilən kanalda yaz';
	@override String get anyTime => 'İstənilən vaxt yaz';
	@override String get skipInLibrary => 'Kitabxanada artıq olan epizodları ötür';
	@override String get keepUpTo => 'Saxlanılacaq epizodlar';
	@override String get keepUpToHint => '0 bütün epizodları saxlayır';
}

// Path: music.discography
class _Translations$music$discography$az extends Translations$music$discography$en {
	_Translations$music$discography$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get singlesAndEps => 'Single-lar və EP-lər';
	@override String get live => 'Canlı';
	@override String get compilations => 'Kompilyasiyalar';
}

// Path: watchTogether.notices
class _Translations$watchTogether$notices$az extends Translations$watchTogether$notices$en {
	_Translations$watchTogether$notices$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String pressedPlay({required Object name}) => '${name} preslənmiş oyun';
	@override String get playbackStarted => 'Oxutma başladı';
	@override String paused({required Object name}) => '${name} fasilə etdi';
	@override String get playbackPaused => 'Oxuma dayandırıldı';
	@override String jumpedTo({required Object name, required Object position}) => '${name} ${position}-a keçdi';
	@override String roomJumpedTo({required Object position}) => '${position}-a keçdi';
	@override String changedSpeed({required Object name, required Object speed}) => '${name} sürəti ${speed} olaraq təyin etdi';
	@override String speedChanged({required Object speed}) => 'Sürət ${speed} olaraq təyin edildi';
	@override String startedMedia({required Object name, required Object title}) => '${name} başladı ${title}';
	@override String mediaStarted({required Object title}) => 'İndi ${title} oynayır';
	@override String stoppedMedia({required Object name}) => '${name} videonu dayandırdı';
	@override String get mediaStopped => 'Video dayandı';
	@override String waitingFor({required Object name}) => '${name} gözlənilir...';
	@override String get waitingForSomeone => 'Kiminsə yetişməsini gözləyirəm...';
	@override String get finished => 'Bitdi';
	@override String hostChangedTo({required Object name}) => '${name} indi təşkilatçıdır';
	@override String get youAreNowHost => 'İndi təşkilatçı sizsiniz';
	@override String joined({required Object name}) => '${name} qoşuldu';
	@override String left({required Object name}) => '${name} ayrıldı';
	@override String get controlRefused => 'Yalnız ev sahibi oxutmaya nəzarət edə bilər';
	@override String get searchFailed => 'Bəzi serverləri otağın videosu üçün axtarmaq mümkün olmadı';
	@override String get playBlocked => 'Başlamaq üçün oynat düyməsini basın';
	@override String get shareFailed => 'Bu videonu otaqla paylaşmaq mümkün olmadı';
	@override String get notShared => 'Endirilmiş videolar otaqla paylaşılmır';
	@override String get openFailed => 'Otağın videosunu açmaq mümkün olmadı';
}

// Path: watchTogether.ended
class _Translations$watchTogether$ended$az extends Translations$watchTogether$ended$en {
	_Translations$watchTogether$ended$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get ended => 'Ev sahibi otağı bitirdi';
	@override String get kicked => 'Siz otaqdan çıxarıldınız';
	@override String get expired => 'Otağın vaxtı bitdi';
	@override String get replaced => 'Bu otağa başqa cihazda qoşuldunuz';
	@override String get lost => 'Otaqla əlaqə kəsildi';
}

// Path: watchTogether.errors
class _Translations$watchTogether$errors$az extends Translations$watchTogether$errors$en {
	_Translations$watchTogether$errors$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get invalidCode => 'Bu otaq kodu deyil. Kodlarda 0, 1, I, L və ya O olmadan 6 hərf və rəqəm var.';
	@override String get roomNotFound => 'Heç bir otaqda belə kod yoxdur. Ola bilər ki, bitdi.';
	@override String get roomFull => 'O otaq doludur.';
	@override String get roomLocked => 'Ev sahibi həmin otağı bağladı.';
	@override String get relayFull => 'Birlikdə baxın hazırda məşğuldur. Daha sonra yenidən cəhd edin.';
	@override String get unreachable => 'Birlikdə Baxın relesinə çatmaq mümkün olmadı. Bağlantınızı yoxlayın.';
	@override String get rateLimited => 'Həddindən artıq cəhd. Bir az gözləyin və yenidən cəhd edin.';
	@override String get clientBlocked => 'Luroka-nin bu versiyası releydən istifadə edə bilməz. Proqramı yeniləyin.';
	@override String get forbidden => 'Bunu yalnız ev sahibi edə bilər.';
	@override String get notInRoom => 'Siz otaqda deyilsiniz.';
	@override String get alreadyInRoom => 'Artıq otaqdasınız.';
	@override String get resumeFailed => 'Otağa yenidən qoşulmaq mümkün olmadı.';
	@override String get unsupported => 'Rele bunu dəstəkləmir.';
	@override String get generic => 'Nəsə xəta baş verdi. Yenidən cəhd edin.';
}

// Path: downloads.backgroundWarning
class _Translations$downloads$backgroundWarning$az extends Translations$downloads$backgroundWarning$en {
	_Translations$downloads$backgroundWarning$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get bannerBlocked => 'Tətbiqdən çıxdıqda yükləmələr dayanacaq';
	@override String get bannerDegraded => 'Arxa fonda yükləmələr məhdudlaşdırıla bilər';
	@override String get bannerAction => 'Ətraflı';
	@override String get sheetTitle => 'Arxa fonda yükləmələr bloklanıb';
	@override String get sheetTitleDegraded => 'Arxa fonda yükləmələr məhdudlaşdırıla bilər';
	@override String get sheetIntro => 'Android Luroka-nin arxa fonda etibarlı şəkildə yükləməsinə mane olur.';
	@override String get sheetIntroDegraded => 'Cihazınız Luroka-nin arxa fonda nə vaxt yükləyə biləcəyini məhdudlaşdırır.';
	@override String get reasonBackgroundRestricted => 'Luroka-nin arxa fon istifadəsi məhdudlaşdırılıb. Batareya və ya arxa fon istifadəsini "Məhdudiyyətsiz" edin.';
	@override String get reasonStandbyRestricted => 'Android Luroka-ni məhdud gözləmə rejiminə salıb. Batareya istifadəsini "Məhdudiyyətsiz" edin.';
	@override String get reasonDownloadChannelBlocked => 'Yükləmə bildirişləri söndürülüb, ona görə gedişat və idarəetmələr əlçatan olmaya bilər.';
	@override String get reasonNotificationsDisabled => 'Bildirişlər söndürülüb. Android 13 və daha yeni versiyalarda uzun arxa fon yükləmələri üçün onlar tələb olunur.';
	@override String get reasonDataSaver => 'Data Saver aktivdir və bu, mobil internetdə arxa fon yükləmələrini bloklayır. Wi-Fi ilə yükləmələr işləməlidir.';
	@override String get reasonOemUnknown => 'Luroka arxa fonda olarkən yükləmələr dəfələrlə dayandı. Luroka-nin batareya və ya arxa fon istifadəsi tənzimləmələrini yoxlayın.';
	@override String get openSettings => 'Tənzimləmələri aç';
	@override String get stillNotWorking => 'Cihaza özəl kömək';
	@override String get stillNotWorkingDescription => 'Cihazınız üçün addımlara baxın və ya problem davam edərsə Tənzimləmələr › Jurnallara bax bölməsindən jurnal göndərin.';
	@override String get dialogTitle => 'Yükləmələr tamamlanmaya bilər';
	@override String get dialogDownloadAnyway => 'Yenə də yüklə';
	@override String get dialogFixFirst => 'Əvvəlcə bunu düzəlt';
	@override String get statusTile => 'Arxa fonda yükləmələr';
	@override String get statusOk => 'Arxa fonda işləməyə icazə verilir';
	@override String get statusBlocked => 'Sistem tənzimləmələri ilə bloklanıb';
	@override String get statusDegraded => 'Sistem tənzimləmələri ilə məhdudlaşdırılıb';
	@override String get statusUnknown => 'Hələ yoxlanılmayıb';
	@override String get settingsUnavailable => 'Bu cihazda sistem tənzimləmələri açıla bilmədi';
	@override String get linkUnavailable => 'Bu cihazda dontkillmyapp.com açıla bilmədi';
}

// Path: downloads.groupings
class _Translations$downloads$groupings$az extends Translations$downloads$groupings$en {
	_Translations$downloads$groupings$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get library => 'Kitabxana';
	@override String get collections => 'Kolleksiyalar';
}

// Path: companionRemote.session
class _Translations$companionRemote$session$az extends Translations$companionRemote$session$en {
	_Translations$companionRemote$session$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get startingServer => 'Pult serveri başladılır...';
	@override String get hostAddress => 'Əsas cihaz ünvanı';
	@override String get connected => 'Qoşuldu';
	@override String get serverRunning => 'Pult serveri aktivdir';
	@override String get serverStopped => 'Pult serveri dayandırıldı';
	@override String get serverRunningDescription => 'Şəbəkənizdəki mobil cihazlar qoşula bilər';
	@override String get serverStoppedDescription => 'Mobil cihazların qoşulmasına icazə vermək üçün serveri başladın';
	@override String get usePhoneToControl => 'Bu tətbiqi idarə etmək üçün mobil cihazınızı istifadə edin';
	@override String get startServer => 'Serveri başlat';
	@override String get stopServer => 'Serveri dayandır';
	@override String get minimize => 'Yığ';
	@override String get manualAddressHint => 'Əl ilə bağlantı ünvanı:';
}

// Path: companionRemote.pairing
class _Translations$companionRemote$pairing$az extends Translations$companionRemote$pairing$en {
	_Translations$companionRemote$pairing$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get discoveryDescription => 'Eyni Plex hesabına sahib Luroka cihazları burada görünür';
	@override String get hostAddressHint => '192.168.1.100:48632';
	@override String get connecting => 'Qoşulunur...';
	@override String get searchingForDevices => 'Cihazlar axtarılır...';
	@override String get noDevicesFound => 'Şəbəkənizdə cihaz tapılmadı';
	@override String get noDevicesHint => 'Masaüstündə Luroka-ni açın və eyni Wi-Fi-dan istifadə edin';
	@override String get availableDevices => 'Əlçatan cihazlar';
	@override String get manualConnection => 'Əl ilə qoşulma';
	@override String get cryptoInitFailed => 'Təhlükəsiz qoşulma başladılarkən xəta. Əvvəlcə Plex-ə daxil olun.';
	@override String get validationHostRequired => 'Lütfən əsas cihaz ünvanını daxil edin';
	@override String get validationHostFormat => 'Format IP:port şəklində olmalıdır';
	@override String get connectionTimedOut => 'Qoşulma vaxtı bitdi. Hər iki cihazda eyni şəbəkədən istifadə edin.';
	@override String get sessionNotFound => 'Cihaz tapılmadı.';
	@override String get authFailed => 'Kimlik doğrulanması uğursuz oldu.';
	@override String failedToConnect({required Object error}) => 'Qoşulma uğursuz oldu: ${error}';
}

// Path: companionRemote.remote
class _Translations$companionRemote$remote$az extends Translations$companionRemote$remote$en {
	_Translations$companionRemote$remote$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get disconnectConfirm => 'Pult seansından ayrılmaq istəyirsiniz?';
	@override String get reconnecting => 'Yenidən qoşulunur...';
	@override String attemptOf({required Object current}) => 'Cəhd ${current} / 5';
	@override String get retryNow => 'İndi təzədən cəhd et';
	@override String get tabRemote => 'Pult';
	@override String get tabPlay => 'Oynat';
	@override String get tabMore => 'Daha çox';
	@override String get menu => 'Menyu';
	@override String get tabNavigation => 'Naviqasiya';
	@override String get tabDiscover => 'Kəşf et';
	@override String get tabLibraries => 'Kitabxanalar';
	@override String get tabSearch => 'Axtar';
	@override String get tabDownloads => 'Yükləmələr';
	@override String get tabSettings => 'Tənzimləmələr';
	@override String get previous => 'Əvvəlki';
	@override String get playPause => 'Oynat/Fasilə';
	@override String get next => 'Növbəti';
	@override String get seekBack => 'Geri sar';
	@override String get stop => 'Saxla';
	@override String get seekForward => 'İrəli sar';
	@override String get volume => 'Səs';
	@override String get volumeDown => 'Azalt';
	@override String get volumeUp => 'Artır';
	@override String get fullscreen => 'Tam ekran';
	@override String get subtitles => 'Altyazılar';
	@override String get audio => 'Səs';
	@override String get searchHint => 'Masaüstündə axtar...';
}

// Path: companionRemote.errors
class _Translations$companionRemote$errors$az extends Translations$companionRemote$errors$en {
	_Translations$companionRemote$errors$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get noNetworkInterface => 'Şəbəkə interfeysi tapılmadı';
	@override String get authenticationFailed => 'Kimlik doğrulanması uğursuz oldu';
	@override String serverStartFailed({required Object error}) => 'Pult serveri başladıla bilmədi: ${error}';
	@override String commandFailed({required Object error}) => 'Pult əmri göndərilə bilmədi: ${error}';
	@override String get joinTimedOut => 'Seansa qoşulma vaxtı bitdi';
	@override String get failedToConnectAnyAddress => 'Heç bir ünvana qoşuluna bilmədi';
	@override String connectionLostAfterAttempts({required Object attempts}) => '${attempts} cəhddən sonra əlaqə kəsildi';
	@override String get connectionLost => 'Əlaqə kəsildi';
}

// Path: services.names
class _Translations$services$names$az extends Translations$services$names$en {
	_Translations$services$names$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get mal => 'MyAnimeList';
	@override String get anilist => 'AniList';
	@override String get simkl => 'Simkl';
	@override String get seerr => 'Seerr';
	@override String get mdblist => 'MDBList';
}

// Path: services.simklReconnect
class _Translations$services$simklReconnect$az extends Translations$services$simklReconnect$en {
	_Translations$services$simklReconnect$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Simkl-ni yenidən birləşdirin';
	@override String get subtitle => 'Simkl bu əlaqənin istifadə etdiyi giriş metodunu ləğv edir. Yenidən qoşulma simkl.com-u Luroka-nu təsdiqləmək üçün açır — Luroka heç vaxt parolunuzu görmür. Baxış tarixçəniz Simkl-da qalır.';
}

// Path: services.deviceCode
class _Translations$services$deviceCode$az extends Translations$services$deviceCode$en {
	_Translations$services$deviceCode$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String title({required Object service}) => 'Luroka-ni ${service} üzərində aktivləşdirin';
	@override String get instructions => 'QR kodunu skan edin və ya aşağıdakı ünvana keçib bu kodu daxil edin:';
	@override String openToActivate({required Object service}) => 'Aktivləşdirmək üçün ${service} açın';
	@override String get copyCode => 'Aktivləşdirmə kodunu kopyala';
	@override String get waitingForAuthorization => 'Səlahiyyət gözlənilir…';
	@override String get codeCopied => 'Kod kopyalandı';
}

// Path: services.oauthProxy
class _Translations$services$oauthProxy$az extends Translations$services$oauthProxy$en {
	_Translations$services$oauthProxy$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String title({required Object service}) => '${service} xidmətinə daxil olun';
	@override String get body => 'Bu QR kodu skan edin və ya URL-i açın.';
	@override String openToSignIn({required Object service}) => 'Daxil olmaq üçün ${service} açın';
}

// Path: services.pendingAuth
class _Translations$services$pendingAuth$az extends Translations$services$pendingAuth$en {
	_Translations$services$pendingAuth$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get copyUrl => 'Daxil olma URL-ini kopyala';
	@override String get urlCopied => 'URL kopyalandı';
}

// Path: services.libraryFilter
class _Translations$services$libraryFilter$az extends Translations$services$libraryFilter$en {
	_Translations$services$libraryFilter$az._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kitabxana filtri';
	@override String get subtitleAllSyncing => 'Bütün kitabxanalar eyniləşdirilir';
	@override String get subtitleNoneSyncing => 'Heç nə eyniləşdirilmir';
	@override String subtitleBlocked({required Object count}) => '${count} bloklandı';
	@override String subtitleAllowed({required Object count}) => '${count} icazə verildi';
	@override String get mode => 'Filtr rejimi';
	@override String get modeBlacklist => 'Qara siyahı';
	@override String get modeWhitelist => 'Ağ siyahı';
	@override String get modeHintBlacklist => 'Aşağıda seçilənlərdən başqa bütün kitabxanaları eyniləşdir.';
	@override String get modeHintWhitelist => 'Yalnız aşağıda seçilən kitabxanaları eyniləşdir.';
	@override String get libraries => 'Kitabxanalar';
	@override String get noLibraries => 'Kitabxana yoxdur';
}

/// The flat map containing all translations for locale <az>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsAz {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'mobileLibrary.pickerSubtitle' => 'Kəşf etmək üçün kolleksiya seçin',
			'mobileLibrary.searchLibraries' => 'Kitabxanaları axtarın',
			'mobileLibrary.noLibraries' => 'Uyğun kitabxana yoxdur',
			'mobileLibrary.ascending' => 'Artan',
			'mobileLibrary.descending' => 'Azalan',
			'mobileLibrary.sort' => 'Sırala',
			'mobileLibrary.unwatchedCount' => ({required Object count}) => '${count} baxılmamış epizodlar',
			'mobileLibrary.latestEpisode' => 'Ən son epizod',
			'profileStartup.autoLogin' => 'Son istifadə olunan profili açın',
			'profileStartup.autoLoginHint' => 'PIN tələb etmədikdə sonuncu profili avtomatik açın.',
			'profileStartup.allowKidsExit' => 'Valideyn PIN-i olmadan Uşaq profilindən çıxmağa icazə ver',
			'profileStartup.allowKidsExitHint' => 'Uşağın valideyn PIN-i daxil etmədən başqa profilə keçməsinə imkan verir. Profil PIN-ləri yenə də qüvvədədir.',
			'profileStartup.chooseKidsConnection' => 'Fərqli hesab və ya server seçin',
			'profileStartup.chooseKidsConnectionHint' => 'Yadda saxladıqdan sonra ayrıca hesabı birləşdirin və ya başqa profildən əlaqə seçin.',
			'subtitleUpload.chooseFile' => 'Altyazı faylını yükləyin',
			'subtitleUpload.hint' => 'Yuxarıdakı dili seçin, sonra SRT, ASS, SSA və ya VTT faylını bu serverə yükləyin.',
			'subtitleUpload.success' => 'Subtitr serverə yükləndi. Server elementi yenilədikdə görünəcək.',
			'subtitleUpload.failed' => 'Altyazı yükləmək mümkün olmadı. Fayl və server icazələrini yoxlayın.',
			'personSpotlight.inYourLibraries' => 'kitabxanalarınızda',
			'personSpotlight.libraryTitles' => ({required Object n}) => 'Kitabxanalarınızda · ${n} başlıqları',
			'personSpotlight.readBiography' => 'Bioqrafiya oxuyun',
			'personSpotlight.newestFirst' => 'Ən yeni ilk',
			'personSpotlight.oldestFirst' => 'Ən köhnə ilk',
			'personSpotlight.titleAscending' => 'Başlıq A-Z',
			'personSpotlight.sortTitles' => 'Filmoqrafiyanı çeşidləyin',
			'personSpotlight.unwatchedEpisodes' => ({required Object n}) => '${n} baxılmamış epizodlar',
			'personSpotlight.copies' => ({required Object n}) => '${n} kitabxana nüsxələri',
			'personSpotlight.versions' => ({required Object n}) => '${n} fayl versiyaları',
			'personSpotlight.retryTitles' => 'Bütün başlıqları yükləmək mümkün olmadı. Yenidən cəhd edin',
			'detailExtras.onlineVideos' => 'Treylerlər və əlavələr',
			'detailExtras.reviews' => 'Rəylər',
			'detailExtras.readReview' => 'Tam rəyi oxuyun',
			'detailExtras.directedBy' => ({required Object name}) => 'Daha çox rejissor ${name}',
			'detailExtras.previewUnavailable' => 'Bu önizləməni oxutmaq mümkün olmadı. Bunun əvəzinə onu orijinal proqramında aça bilərsiniz.',
			'detailExtras.openExternally' => 'Orijinal videonu açın',
			'mobileUi.readMore' => 'Daha ətraflı oxuyun',
			'mobileUi.readLess' => 'Daha az göstər',
			'mobileUi.playbackTools' => 'Oxutma seçimləri',
			'mobileUi.streamingQuality' => 'Axın keyfiyyəti',
			'mobileUi.fileVersions' => 'Fayl versiyaları',
			'mobileUi.qualityAndVersions' => 'Axın keyfiyyəti və fayl versiyaları',
			'mobileUi.hidePlaybackTools' => 'Oxutma alətlərini gizlədin',
			'mobileUi.remaining' => ({required Object time}) => '${time} qaldı',
			'mobileUi.endsAt' => ({required Object time}) => '${time}-da bitir',
			'mobileUi.collection' => 'Sizin kolleksiyanız',
			'mobileUi.nowPlaying' => 'İNDİ OYNAYIR',
			'mobileUi.popularLibrary' => 'Kitabxananızda məşhurdur',
			'mobileUi.weeklyLibrary' => 'Bu həftə kitabxananızda trend',
			'family.title' => 'Profillər və Ailə',
			'family.yourPeople' => 'Sizin xalqınız',
			'family.manageHint' => 'Bu cihazda insanları, uşaqların təhlükəsizliyini və baxış fəaliyyətini idarə edin.',
			'family.people' => 'İnsanlar',
			'family.peopleCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('az'))(n, one: '${n} şəxs', other: '${n} insanlar', ), 
			'family.kidsCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('az'))(n, one: '${n} uşaq', other: '${n} uşaqlar', ), 
			'family.you' => 'sən',
			'family.adult' => 'Yetkin',
			'family.child' => 'Uşaq',
			'family.adultTeen' => 'Yetkin və ya yeniyetmə',
			'family.adultHint' => 'Öz profili, isteğe bağlı Profil PIN və öz server əlaqələri.',
			'family.childHint' => 'Yaş məhdudiyyətləri, təhlükəsiz kitabxanalar və uşaqlar üçün uyğun görünüş. Bu ayarları valideyn PIN-i qoruyur.',
			'family.upToAge' => ({required Object age}) => '${age} yaşa qədər',
			'family.allAges' => 'Bütün yaşlar',
			'family.switchProfile' => 'Profilə keçin',
			'family.switchHint' => 'Kimin baxdığını seçin. Bir şəxsi idarə etmək profilləri dəyişdirmir.',
			'family.addPerson' => 'Şəxs əlavə edin',
			'family.addChild' => 'Uşaq əlavə edin',
			'family.addHint' => 'Bu cihazda böyüklər, yeniyetmə və ya uşaq profili yaradın.',
			'family.emptyPeople' => 'Sizinlə izləyən hər kəs üçün yer açın.',
			'family.emptyKids' => 'Hələ uşaq profili yoxdur. Yaş məhdudiyyətlərini və təhlükəsiz kitabxanaları seçmək üçün uşaq əlavə edin.',
			'family.safety' => 'Uşaqlar və təhlükəsizlik',
			'family.safetyHint' => 'Valideyn PIN-i, uşaq profilləri və yaş məhdudiyyətləri.',
			'family.protection' => 'Qoruma',
			'family.kidsProfiles' => 'Uşaq profilləri',
			'family.backupHistory' => 'Yedəkləmə və tarixçə',
			'family.parentPinOn' => 'Valideyn PIN-i aktivdir',
			'family.profilePin' => 'Profil PIN-i',
			'family.confirmParentPin' => 'Valideyn PIN-ini təsdiqləyin',
			'family.parentPinOff' => 'Valideyn PIN-i təyin edilməyib',
			'family.missingPin' => 'Bu parametrləri qorumaq üçün valideyn PIN-i təyin edin.',
			'family.hideScope' => 'Uşaqların fəaliyyətini bu Luroka profilində Baxmağa Davam et-dən gizlədin. Bu, paylaşılan server baxış tarixçəsini dəyişmir.',
			'family.localScope' => 'Uşaq profilləri və məhdudiyyətlər bu cihazda saxlanılır. Eyni server hesabından istifadə edən profillər hələ də həmin hesabın izləmə gedişatını paylaşır.',
			'family.clearHistoryConfirm' => 'Uşaqların baxdığı başlıqların yenidən Baxmağa Davam et bölməsində görünməsinə icazə verilsin? Uşaq profilləri, məhdudiyyətlər, baxış vaxtı statistikası və server baxış tarixçəsi saxlanılacaq.',
			'family.editRestrictions' => 'Uşaq məhdudiyyətlərini redaktə edin',
			'family.activity' => 'Fəaliyyətə baxış',
			'family.namedActivity' => ({required Object name}) => '${name}-un baxış fəaliyyəti',
			'family.thisProfile' => 'Bu profil',
			'family.activityScope' => 'Aktiv profil üçün bu cihazda Luroka tərəfindən qeydə alınan oxutma vaxtı. Bunlar baxılma hədləri və ya tam server tarixçəsi deyil, statistikadır.',
			'family.activityUnavailable' => 'Baxış fəaliyyəti hələ bu profil üçün əlçatan deyil.',
			'family.finished' => 'Bitdi',
			'posterDetails.showThemeMusic' => 'Mövzu musiqisini çalın',
			'posterDetails.showThemeMusicDescription' => 'Film və ya şounun mövzusunu, serverdə mövcud olduqda onun təfərrüatları səhifəsi açıq olarkən oynayın.',
			'posterDetails.catalogEpisodeInfo' => 'Kataloq kartlarında epizod sayını və işləmə müddətini göstərin',
			'posterDetails.catalogEpisodeInfoDescription' => 'Kəşf et posterlərində epizod saylarını və orta müddəti göstərin.',
			'posterDetails.title' => 'Poster təfərrüatları',
			'posterDetails.description' => 'Studio, Axtarış, Kəşf və Kitabxanalar üzrə posterlərin altında başlıq, il və IMDb reytinqini göstərin. Çatışmayan IMDb reytinqləri gizli qalır. Yalnız sənət əsərləri üçün afişaları söndürün.',
			'libraryPolish.compactTvNavigation' => 'Kompakt kitabxana naviqasiyası',
			'libraryPolish.compactTvNavigationDescription' => 'Kitabxana bölmələrini göstərin və afişalar üçün daha çox yer buraxaraq, sürüşdürülmüş menyuda seçimlərə göz atın.',
			'libraryPolish.openLibraryMenu' => 'Kitabxana menyusunu açın',
			'libraryPolish.posterDetails' => 'Poster təfərrüatları',
			'libraryPolish.showPosterDetails' => 'Poster təfərrüatlarını göstərin · ad, il və IMDb',
			'libraryPolish.hidePosterDetails' => 'Poster detallarını gizlədin',
			'libraryPolish.overview' => 'Ümumi baxış',
			'libraryPolish.refreshing' => 'Kitabxana təzələnir...',
			'libraryPolish.serverCollections' => 'Bu serverdəki bütün kolleksiyalar',
			'libraryPolish.serverPlaylists' => 'Bu serverdəki bütün video pleylistlər',
			'libraryPolish.libraryCollections' => 'Bu kitabxanadakı kolleksiyalar',
			'libraryPolish.searchCollections' => 'Kolleksiyaları axtarın',
			'libraryPolish.searchPlaylists' => 'Pleylistləri axtarın',
			'libraryPolish.searchHint' => 'Ada görə axtarın',
			'libraryPolish.titleAscending' => 'Başlıq A-Z',
			'libraryPolish.titleDescending' => 'Başlıq Z–A',
			'libraryPolish.clearFilters' => 'Filtrləri təmizləyin',
			'libraryPolish.playlistEmptyTitle' => 'Kino gecələriniz, sifarişinizlə',
			'libraryPolish.playlistEmptyHint' => 'Başlığın Daha çox menyusunu açın və ilk pleylistinizi yaratmaq üçün Pleylistə əlavə et seçin.',
			'libraryPolish.noMatches' => 'Uyğun adlar yoxdur',
			'libraryPolish.indexing' => 'Tam kataloq axtarılır...',
			'showSchedule.today' => 'Bu gün',
			'showSchedule.tomorrow' => 'Sabah',
			'showSchedule.latestUpcoming' => 'Ən son və gələcək',
			'showSchedule.latestEpisode' => 'Ən son epizod',
			'showSchedule.upcoming' => 'Qarşıdan gələn',
			'showSchedule.inLibrary' => 'Kitabxananızda',
			'showSchedule.notInLibrary' => 'Kitabxananızda deyil',
			'showSchedule.notYetAired' => 'Hələ yayımlanmayıb',
			'showSchedule.episode' => ({required Object number}) => 'Epizod ${number}',
			'showSchedule.caughtUp' => 'Hamınız tutulmusunuz',
			'showSchedule.finished' => 'Bu seriyanı bitirdiniz',
			'showSchedule.nextAirs' => ({required Object date}) => 'Növbəti epizod ${date} yayımlanır',
			'showSchedule.watchBeginning' => 'Başdan baxın',
			'showSchedule.replay' => 'Təkrar çalın',
			'showSchedule.playNext' => 'Növbəti oynayın',
			'awardsCatalog.awards' => 'Mükafatlar',
			'awardsCatalog.customize' => 'Fərdiləşdirin',
			'awardsCatalog.chooseShelves' => 'Kəşf et-i fərdiləşdirin',
			'awardsCatalog.shelvesDescription' => 'Kəşf et-də istədiyiniz cərgələri seçin. Mükafat sıraları kitabxanalarınızdan qalibləri göstərir. Seçimləriniz bu profil üçün yadda saxlanılır.',
			'awardsCatalog.restoreShelves' => 'Defoltları bərpa edin',
			'awardsCatalog.charts' => 'IMDb diaqramları',
			'awardsCatalog.generalShelves' => 'Populyar və trend',
			'awardsCatalog.saveShelvesFailed' => 'Kəşf seçimlərini saxlamaq mümkün olmadı. Yenidən cəhd edin.',
			'awardsCatalog.comedyActress' => 'Aparıcı Aktrisa · Komediya',
			'awardsCatalog.leadDramaActor' => 'Baş Aktyor · Dram',
			'awardsCatalog.leadDramaActress' => 'Aparıcı Aktrisa · Dram',
			'awardsCatalog.comedySupportingActor' => 'Köməkçi aktyor · Komediya',
			'awardsCatalog.comedySupportingActress' => 'Köməkçi Aktrisa · Komediya',
			'awardsCatalog.leadingPerformance' => 'Gümüş Ayı · Ən Yaxşı Aparıcı Performans',
			'awardsCatalog.globesComedySeries' => 'Ən Yaxşı Televiziya Serialı · Musiqili və ya Komediya',
			'awardsCatalog.limitedSupportingActor' => 'Köməkçi Aktyor · Məhdud Serial və ya Film',
			'awardsCatalog.limitedSupportingActress' => 'Köməkçi Aktrisa · Məhdud Serial və ya Film',
			'awardsCatalog.berlinDocumentary' => 'Berlinale Sənədli Film Mükafatı',
			'awardsCatalog.title' => 'Mükafatlar və festivallar',
			'awardsCatalog.chooseCategory' => 'Mükafat kateqoriyası seçin',
			'awardsCatalog.winners' => 'Qaliblər',
			'awardsCatalog.nominees' => 'Namizədlər',
			'awardsCatalog.releaseDecade' => 'Onillik buraxılış',
			'awardsCatalog.allYears' => 'Bütün illər',
			'awardsCatalog.loading' => 'Mükafat başlıqları yüklənir...',
			'awardsCatalog.matching' => 'Kitabxanalarınızda bu başlıqlar tapılır...',
			'awardsCatalog.unavailable' => 'Mükafat məlumatları hazırda əlçatan deyil. Yenidən cəhd edin.',
			'awardsCatalog.empty' => 'Bu kateqoriya üçün görünən kitabxanalarınızda uyğun başlıq yoxdur.',
			'awardsCatalog.coverage' => 'Üzvlük Vikidatadan gəlir və natamam ola bilər. Aktyor və rejissor kateqoriyaları mükafatlandırıldıqları filmləri və ya şouları göstərir. İllər mərasimə deyil, başlığın buraxılmasına aiddir.',
			'awardsCatalog.picture' => 'Ən Yaxşı Şəkil',
			'awardsCatalog.film' => 'Ən yaxşı film',
			'awardsCatalog.international' => 'Ən yaxşı beynəlxalq xüsusiyyət',
			'awardsCatalog.internationalFilm' => 'Ən yaxşı beynəlxalq film',
			'awardsCatalog.nonEnglishFilm' => 'İngilis dilində olmayan ən yaxşı film',
			'awardsCatalog.animated' => 'Ən yaxşı cizgi filmi',
			'awardsCatalog.animatedFilm' => 'Ən yaxşı cizgi filmi',
			'awardsCatalog.documentary' => 'Ən yaxşı sənədli film',
			'awardsCatalog.director' => 'Ən yaxşı rejissor',
			'awardsCatalog.actor' => 'Ən yaxşı aktyor',
			'awardsCatalog.actress' => 'Ən Yaxşı Aktrisa',
			'awardsCatalog.supportingActor' => 'Ən yaxşı ikinci plan aktyoru',
			'awardsCatalog.supportingActress' => 'Ən Yaxşı Köməkçi Aktrisa',
			'awardsCatalog.originalScreenplay' => 'Ən yaxşı orijinal ssenari',
			'awardsCatalog.adaptedScreenplay' => 'Ən Yaxşı Uyğunlaşdırılmış Ssenari',
			'awardsCatalog.screenplay' => 'Ən yaxşı ssenari',
			'awardsCatalog.cinematography' => 'Ən yaxşı kinematoqrafiya',
			'awardsCatalog.editing' => 'Ən yaxşı redaktə',
			'awardsCatalog.score' => 'Ən Yaxşı Orijinal Skor',
			'awardsCatalog.song' => 'Ən Yaxşı Orijinal Mahnı',
			'awardsCatalog.sound' => 'Ən yaxşı səs',
			'awardsCatalog.effects' => 'Ən yaxşı vizual effektlər',
			'awardsCatalog.productionDesign' => 'Ən yaxşı istehsal dizaynı',
			'awardsCatalog.costume' => 'Ən yaxşı Kostyum Dizaynı',
			'awardsCatalog.makeup' => 'Ən yaxşı makiyaj və saç düzümü',
			'awardsCatalog.dramaSeries' => 'Görkəmli dram serialı',
			'awardsCatalog.comedySeries' => 'Görkəmli Komediya Serialı',
			'awardsCatalog.limitedSeries' => 'Görkəmli Məhdud Seriya',
			'awardsCatalog.animatedProgram' => 'Görkəmli animasiya proqramı',
			'awardsCatalog.comedyActor' => 'Baş Aktyor · Komediya',
			'awardsCatalog.limitedActor' => 'Aparıcı Aktyor · Məhdud Serial və ya Film',
			'awardsCatalog.limitedActress' => 'Aparıcı Aktrisa · Məhdud Serial və ya Film',
			'awardsCatalog.limitedDirecting' => 'Rejissorluq · Məhdud Serial və ya Film',
			'awardsCatalog.britishFilm' => 'Ən yaxşı Britaniya filmi',
			'awardsCatalog.goldenBear' => 'Qızıl ayı',
			'awardsCatalog.grandJury' => 'Münsiflər Heyətinin Böyük Mükafatı',
			'awardsCatalog.jury' => 'Münsiflər Heyəti Mükafatı',
			'awardsCatalog.teddy' => 'Teddy Mükafatı',
			'awardsCatalog.goldenLion' => 'Qızıl Aslan',
			'awardsCatalog.volpiActor' => 'Volpi Kuboku · Ən Yaxşı Aktyor',
			'awardsCatalog.volpiActress' => 'Volpi Kuboku · Ən Yaxşı Aktrisa',
			'awardsCatalog.queerLion' => 'Queer Aslan',
			'awardsCatalog.dramaFilm' => 'Ən Yaxşı Film · Dram',
			'awardsCatalog.comedyFilm' => 'Ən Yaxşı Film · Musiqili və ya Komediya',
			'awardsCatalog.dramaActor' => 'Ən Yaxşı Aktyor · Dram',
			'awardsCatalog.dramaActress' => 'Ən Yaxşı Aktrisa · Dram',
			'awardsCatalog.usDramatic' => 'ABŞ Dramatik Münsiflər Heyətinin Böyük Mükafatı',
			'awardsCatalog.documentaryJury' => 'Sənədli Film Münsiflər Heyətinin Böyük Mükafatı',
			'awardsCatalog.worldCinema' => 'Dünya Kinosu Münsiflər Heyətinin Böyük Mükafatı',
			'awardsCatalog.dramaticAudience' => 'ABŞ Dramatik Tamaşaçılar Mükafatı',
			'awardsCatalog.usDirecting' => 'ABŞ Rejissorluq Mükafatı',
			'awardsCatalog.peopleChoice' => 'Xalqın Seçimi Mükafatı',
			'awardsCatalog.canadianFilm' => 'Ən yaxşı Kanada filmi',
			'awardsCatalog.firstFeature' => 'Ən Yaxşı İlk Xüsusiyyət',
			'awardsCatalog.cassavetes' => 'John Cassavetes mükafatı',
			'awardsCatalog.scienceFiction' => 'Ən yaxşı elmi fantastika filmi',
			'awardsCatalog.fantasy' => 'Ən yaxşı fantastik film',
			'awardsCatalog.horror' => 'Ən yaxşı qorxu filmi',
			'awardsCatalog.action' => 'Ən yaxşı fəaliyyət və ya macəra filmi',
			'awardsCatalog.thriller' => 'Ən yaxşı triller filmi',
			'searchDiscovery.suggestions' => 'Baxmaq üçün bir şey',
			'searchDiscovery.collections' => 'Mükafatlar və kolleksiyalar',
			'searchDiscovery.collectionsHint' => 'Mükafat qalibləri və kitabxanalarınızdan seçilmiş qrafiklər',
			'searchDiscovery.all' => 'Bütün kəşflər',
			'searchDiscovery.awards' => 'Mükafatlar və qrafiklər',
			'lurokaPlayerDesign.seeking' => 'Ön görünüş axtarın',
			'lurokaPlayerDesign.keepWatching' => 'Baxmağa davam edin',
			'lurokaPlayerDesign.upNext' => 'Növbəti',
			'lurokaPlayerDesign.playingIn' => ({required Object seconds}) => '${seconds} s-də oynayır',
			'lurokaWorkspace.everyday' => 'Hər gün',
			'lurokaWorkspace.homeDiscovery' => 'Ev və Kəşf',
			'lurokaWorkspace.librariesAccounts' => 'Kitabxanalar və Hesablar',
			'lurokaWorkspace.profilesFamily' => 'Profillər və Ailə',
			'lurokaWorkspace.thisDevice' => 'Bu cihaz',
			'lurokaWorkspace.thisProfile' => 'Bu profil',
			'lurokaWorkspace.searchSettings' => 'Axtarış parametrləri',
			'lurokaWorkspace.savedAutomatically' => 'Dəyişikliklər avtomatik olaraq saxlanılır. Gündəlik və Qabaqcıl yalnız hansı idarəetmələrin göstərildiyini dəyişir.',
			'lurokaWorkspace.audioSubtitles' => 'Audio və Altyazılar',
			'lurokaWorkspace.audioDescription' => 'Səs çıxışı, həcmi və altyazı görünüşü. Tercih edilən dillər qoşulduqda Hesab tərcihlərindən istifadə edərək hər server hesabı üçün təyin edilir.',
			'lurokaWorkspace.pictureSound' => 'Şəkil və Səs',
			'lurokaWorkspace.pictureDescription' => 'Bu cihaz üçün kadr tezliyi uyğunluğu, ayırdetmə, HDR və Dolby Vision kökləmə.',
			'lurokaWorkspace.engineDescription' => 'Oyunçu mühərriki, dekodlaşdırma, fərdi konfiqurasiya və təkmil oxutma qaydaları.',
			'lurokaWorkspace.networkStreaming' => 'Şəbəkə və Yayım',
			'lurokaWorkspace.networkDescription' => 'Axın keyfiyyəti, birbaşa oynatma kodek seçimləri və bant genişliyi seçimləri.',
			'lurokaWorkspace.homeOptions' => 'Ev seçimləri',
			'lurokaWorkspace.refreshHome' => 'Evi Yeniləyin və İndi Populyar',
			'lurokaWorkspace.customizeHome' => 'Evi Fərdiləşdirin',
			'lurokaWorkspace.spotlight' => 'Ev Spotlight',
			'lurokaWorkspace.rotateSpotlight' => 'Seçilmiş başlıqları avtomatik çevirin',
			'lurokaWorkspace.rotateDescription' => 'Ev boş olarkən fırladın. Qarşılıqlı əlaqə fırlanmanı dayandırır; rəflərə baxmaq, səhifə açmaq və ya proqramdan çıxmaq onu tamamilə dayandırır.',
			'lurokaWorkspace.rotationInterval' => 'Seçilmiş başlıqlar arasındakı vaxt',
			'mobileFixes.connectionRecoveryHint' => 'Server əlçatan deyil? Hesablarınızı idarə edin və ya başqa serverə qoşulun.',
			'downloadsRedesign.shelfSize' => 'Rəf başına əşyalar',
			'downloadsRedesign.shelfSizeHint' => 'Davamlı Baxış və tövsiyə rəflərində 16, 32 və ya 48 elementi göstərin. Serverlər daha az mövcud başlıqları qaytara bilər.',
			'downloadsRedesign.subtitle' => 'Sevimliləriniz, səyahətə hazırsınız.',
			'downloadsRedesign.transfers' => 'Transferlər',
			'downloadsRedesign.ready' => 'Oflayn hazırdır',
			'downloadsRedesign.active' => 'Endirilir',
			'downloadsRedesign.waiting' => 'Gözləyirəm',
			'downloadsRedesign.downloaded' => 'Endirildi',
			'downloadsRedesign.speed' => 'Yükləmə sürəti',
			'downloadsRedesign.notificationProgress' => '{progress} · {networkSpeed} · {timeRemaining} qalan',
			'kidsShelf.movieShelf' => 'Kino vaxtı',
			'kidsShelf.showShelf' => 'Növbəti verilişinizi tapın',
			'kidsShelf.aurora' => 'Aurora - dərin çay və əhəng',
			'kidsShelf.marquee' => 'Marquee - məxmər və qızıl',
			'kidsShelf.electric' => 'Elektrik - indigo və buz',
			'kidsShelf.midnight' => 'Gecə yarısı - polad və kəhrəba',
			'kidsShelf.yourShelf' => 'Sizin film rəfiniz',
			'kidsShelf.all' => 'Hər şey',
			'kidsShelf.pickSomething' => 'Nəyə baxmaq istəyirsən?',
			'kidsHome.everything' => 'Sizin üçün',
			'kidsHome.keepWatching' => 'Baxmağa davam edin',
			'kidsHome.emptyFilter' => 'Burada hələ heç nə yoxdur. Sizin üçün cəhd edin və ya böyüklərdən sevdiyiniz bir şeyi əlavə etməyi xahiş edin.',
			'tvSettingsV2.moreThemes' => 'Daha çox mövzu və fərdi rənglər',
			'tvSettingsV2.moreThemesHint' => 'Bütün mövcud əvvəlcədən təyinləri və fərdi mövzu seçimlərini açın.',
			'tvSettingsV2.previewLive' => 'Canlı önizləmə',
			'tvSettingsV2.previewIllustration' => 'Önizləmə nümunəsi',
			'tvSettingsV2.previewShelfCount' => ({required Object count}) => 'Hər rəfdə ${count}-a qədər məhsul',
			'tvSettingsV2.simple' => 'Sadə',
			'tvSettingsV2.homeNavigation' => 'Ev və Naviqasiya',
			'tvSettingsV2.libraryCards' => 'Kitabxana və Kartlar',
			'tvSettingsV2.accountsLibraries' => 'Hesablar və Kitabxanalar',
			'tvSettingsV2.profilesFamily' => 'Profillər və Ailə',
			'tvSettingsV2.aboutSupport' => 'Haqqında & Dəstək',
			'tvSettingsV2.playback' => 'Oynatma',
			'tvSettingsV2.homeHint' => 'Əsas səhifədə və naviqasiyada görünənləri seçin.',
			'tvSettingsV2.libraryHint' => 'Poster ölçülərini, etiketləri və baxılan göstəriciləri tənzimləyin.',
			'tvSettingsV2.advancedPlayback' => 'Oyunçu mühərriki və axın',
			'tvSettingsV2.advancedPlaybackHint' => 'Pleyer, video çıxışı, axın və təkmil oxutma seçimləri.',
			'tvSettingsV2.advancedTools' => 'Diaqnostika və ehtiyat nüsxələri',
			'tvSettingsV2.advancedToolsHint' => 'Qeydlər, problemlərin aradan qaldırılması, parametrlərin ehtiyat nüsxəsi və sıfırlanması.',
			'tvSettingsV2.themePreview' => 'Mövzuya ön baxış',
			'tvSettingsV2.libraryPreview' => 'Kitabxanaya baxış',
			'tvSettingsV2.homePreview' => 'Evə baxış',
			'tvSettingsV2.subtitlePreview' => 'Altyazıya baxış',
			'tvSettingsV2.subtitleSample' => 'Subtitrləriniz belə görünəcək.',
			'tvSettingsV2.previewPlaceholder' => 'Sənət işiniz burada görünür',
			'tvSettingsV2.posterSize' => 'Poster ölçüsü',
			'tvSettingsV2.serverRecommendations' => 'Serverinizdən ev tövsiyələri',
			'tvSettingsV2.tvLayout' => 'TV düzənindən istifadə edin',
			'tvSettingsV2.hardwareDecode' => 'Avadanlıq video deşifrindən istifadə edin',
			'tvSettingsV2.serverNames' => 'Əsas sətirlərdə server adlarını göstərin',
			'tvSettingsV2.settingsSaved' => 'Dəyişikliklər avtomatik olaraq saxlanılır.',
			'tvSettingsV2.morePlayback' => 'Təkmil oxutma',
			'tvSettingsV2.screenDisplay' => 'Şəkil və Səs',
			'tvSettingsV2.engine' => 'Oyunçu mühərriki',
			'tvSettingsV2.network' => 'Axın və şəbəkə',
			'tvSettingsV2.performance' => 'Performans',
			'tvSettingsV2.simpleAudio' => 'Dillər və altyazı görünüşü',
			'settingsRedesign.themeEffects' => 'Mövzu və Effektlər',
			'settingsRedesign.libraryLayout' => 'Kitabxananın tərtibatı',
			'settingsRedesign.posterInformation' => 'Poster məlumatı',
			'settingsRedesign.libraryBehavior' => 'Kitabxana davranışı',
			'settingsRedesign.appearanceHint' => 'Luroka görünüşünü, tərtibatını və davranışını fərdiləşdirin.',
			'settingsRedesign.livePreview' => 'Canlı Önizləmə',
			'settingsRedesign.previewHint' => 'Kitabxananızın cari parametrlərlə necə görünəcəyinə baxın.',
			'settingsRedesign.showLiveTv' => 'Canlı TV göstərin',
			'settingsRedesign.showLiveTvHint' => 'Qoşulmuş server onu dəstəklədikdə Canlı TV-ni naviqasiyada göstərin. Bu serverinizi dəyişmir.',
			'settingsRedesign.aboutTagline' => 'Sizin media. Sizin məkanınız.',
			'settingsRedesign.aboutDescription' => 'Luroka sizin Plex, Jellyfin və Emby kitabxanalarınızı telefonlar, televizorlar və stolüstü kompüterlər üçün kinematik pleyerdə bir araya gətirir.',
			'settingsRedesign.aboutFeatures' => 'Kitabxanalarınızı gözdən keçirin, filmləri və şouları davam etdirin, profilləri fərdiləşdirin, yükləmələrdən həzz alın və birlikdə baxın. Canlı TV uyğun serverlə mövcuddur.',
			'settingsRedesign.services' => 'Dünyanızı birləşdirin',
			'settingsRedesign.updateSource' => 'Mənbəni yeniləyin',
			'settingsRedesign.updateSourceHint' => 'Luroka buraxılış lentinizin HTTPS ünvanı. Distribyutorunuz bunu proqramda əvvəlcədən konfiqurasiya edə bilər.',
			'settingsRedesign.updateNotConfigured' => 'Avtomatik yeniləmələr bu quruluş üçün konfiqurasiya edilməyib.',
			'settingsRedesign.downloadInstall' => 'Yükləyin və quraşdırın',
			'settingsRedesign.installUpdate' => 'Yeniləməni quraşdırın',
			'settingsRedesign.downloading' => 'Güncəlləmə endirilir...',
			'settingsRedesign.downloadFailed' => 'Güncəlləməni endirmək və ya doğrulamaq mümkün olmadı. Yenidən cəhd edin.',
			'settingsRedesign.installPermission' => 'Luroka-ya Android parametrlərində yeniləmələri quraşdırmaq icazəsi verin, sonra qayıdıb Yeniləməni quraşdır seçin.',
			'settingsRedesign.updateReady' => 'Yükləmə təsdiqləndi. Quraşdırmağa hazırdır.',
			'settingsRedesign.releaseNotes' => 'Buraxılış qeydləri',
			'settingsRedesign.invalidFeed' => 'Etibarlı HTTPS yeniləmə lenti ünvanını daxil edin.',
			'onboarding.connectStep' => '01 · Qoşulun',
			'onboarding.connectTitle' => 'Luroka-a xoş gəlmisiniz',
			'onboarding.connectHint' => 'Kitabxanalarınızı buraya gətirmək üçün daxil olun.',
			'onboarding.serverAddressHint' => 'Server ünvanınızı daxil edin və ya şəbəkənizdə tapılan serveri seçin.',
			'onboarding.serverSignInHint' => 'Kitabxanalarınızı birləşdirmək üçün server istifadəçi adınızı və şifrənizi istifadə edin.',
			'onboarding.serverAddressTitle' => 'Server ünvanı',
			'onboarding.serverAccountTitle' => 'Server hesabınız',
			'onboarding.plexHomeTitle' => 'Plex Ev istifadəçinizi seçin',
			'onboarding.plexHomeHint' => 'Kitabxanalarından istifadə etmək istədiyiniz Plex istifadəçisini seçin. Sonra Luroka profilinizi quraşdıracaqsınız.',
			'onboarding.chooseService' => 'Xidmətinizi seçin',
			'onboarding.profileStep' => '02 · Profiliniz',
			'onboarding.profileTitle' => 'Özünüzü evdə edin.',
			'onboarding.profileHint' => 'Luroka profiliniz üçün ad və avatar seçin. Qoşulmuş hesabınız eyni qalır.',
			'onboarding.readyStep' => '03 · Baxmağa hazırdır',
			'onboarding.readyTitle' => 'Bir az daha sən.',
			'onboarding.readyHint' => 'Xidmətlərinizi bir araya gətirin və ya başqası üçün yer açın. Bunu hər zaman sonra edə bilərsiniz.',
			'onboarding.addService' => 'Başqa bir xidmətə qoşulun',
			'onboarding.editProfile' => 'Adınızı və avatarınızı redaktə edin',
			'onboarding.connected' => 'Bağlanıb və hazırdır',
			'onboarding.backToProfile' => 'Profilinizə qayıdın',
			'onboarding.showOtherPlexHome' => 'Digər Plex Ev üzvlərini göstərin',
			'onboarding.showOtherPlexHomeHint' => 'Defolt olaraq söndürülür. İstifadə etdiyiniz Luroka profilləriniz və Plex Ev üzvləriniz görünən qalır. Başqasını seçmək üçün aktiv edin.',
			'household.title' => 'Luroka ailəniz',
			'household.welcome' => 'Luroka-nu özünüz edin',
			'household.welcomeHint' => 'İlk hesabınız qoşulub. Baxmağa başlamazdan əvvəl profilinizi fərdiləşdirin və ya başqasını əlavə edin.',
			'household.profiles' => 'Profillər və məişət',
			'household.manageHint' => 'İnsanlar əlavə edin, şəkilləri dəyişdirin və hər bir profilin əlaqələrini idarə edin.',
			'household.addProfile' => 'Luroka profilini əlavə edin',
			'household.addHint' => 'Hər bir şəxs öz Plex, Emby və ya Jellyfin girişini birləşdirə bilər. Onlar üçün yalnız profillərinə əlavə edilmiş bağlantılar görünür.',
			'household.sharedHint' => 'Başqa profilin əlaqəsinin təkrar istifadəsi həmin server istifadəçisinin baxdığı statusu və oxutma gedişatını paylaşır. Müstəqil baxış tarixçəsi üçün ayrıca giriş seçin.',
			'household.personalise' => 'Profili fərdiləşdirin',
			'household.changePicture' => 'Profil şəklini dəyişdirin',
			'household.pictureHint' => 'Luroka avatar və ya şəkil seçin. Bu, yalnız bu cihazdakı şəkli dəyişir; server hesabınız toxunulmazdır.',
			'household.serverPicture' => 'Server şəklini / baş hərflərindən istifadə edin',
			'household.choosePhoto' => 'Şəkil seçin',
			'household.photoHint' => 'JPEG, PNG və ya digər dəstəklənən şəkil, 10 MB-a qədər. Fotoların ölçüsü dəyişdirilir və bu cihazda saxlanılır.',
			'household.pictureSaved' => 'Profil şəkli yeniləndi',
			'household.pictureFailed' => 'Profil şəklini yeniləmək mümkün olmadı. 10 MB-a qədər dəstəklənən şəkli sınayın.',
			'household.saveFailed' => 'Profil parametrlərini saxlamaq mümkün olmadı. Yenidən cəhd edin.',
			'household.startWatching' => 'Baxmağa başlayın',
			'household.manageProfiles' => 'Profilləri idarə edin və ya dəyişdirin',
			'household.addLater' => 'Daha sonra Parametrlər → Profillər və məişət bölməsində daha çox adam əlavə edə bilərsiniz.',
			'household.connectionRequired' => 'Bu profilin qurulmasını başa çatdırmaq üçün server bağlantısı əlavə edin.',
			'household.mountain' => 'Dağ',
			'household.orbit' => 'Explorer',
			'household.waves' => 'Okean',
			'household.blossom' => 'Çiçək',
			'household.lightning' => 'İldırım',
			'household.moon' => 'Ay',
			'household.avatarGallery' => 'Bir avatar seçin',
			'household.avatarIllustrationHint' => 'Orijinal təsvirli portretlər, uşaqlar və heyvan dostları',
			'household.avatarPortraitSunrise' => 'Günəşin doğuşu portreti',
			'household.avatarPortraitMeadow' => 'Çəmən portreti',
			'household.avatarPortraitBerry' => 'Berry portreti',
			'household.avatarPortraitGolden' => 'Qızıl portret',
			'household.avatarPortraitIndigo' => 'İndiqo portreti',
			'household.avatarPortraitOcean' => 'Okean portreti',
			'household.avatarKidArtist' => 'Balaca rəssam',
			'household.avatarKidSkater' => 'Balaca konkisürən',
			'household.avatarCat' => 'Maraqlı pişik',
			'household.avatarDog' => 'Xoşbəxt it',
			'household.avatarPanda' => 'panda',
			'household.avatarOwl' => 'bayquş',
			'household.avatarFox' => 'Tülkü',
			'household.avatarDinosaur' => 'dinozavr',
			'household.avatarRobot' => 'Robot',
			'detailComposition.startOver' => 'Yenidən başla',
			'detailComposition.seriesCast' => 'Serial heyəti',
			'detailComposition.streamingQuality' => 'Yayım keyfiyyəti...',
			'detailComposition.trailer' => 'Treyler',
			'detailComposition.manageMedia' => 'Medianı idarə et...',
			'detailComposition.playbackOptions' => 'Oxutma seçimləri...',
			'detailComposition.moreActions' => 'Daha çox hərəkət',
			'detailComposition.watched' => 'Baxıldı',
			'detailComposition.unwatched' => 'Baxılmayıb',
			'detailComposition.endsAt' => ({required Object time}) => '${time}-da bitir',
			'detailComposition.automatic' => 'Avtomatik',
			'detailComposition.usePreferences' => 'Oxutma tərcihlərinizdən istifadə edin',
			'detailComposition.mediaInformation' => 'Media Məlumatı',
			'detailComposition.fullFileInformation' => 'Tam fayl məlumatı',
			'detailComposition.castAndCrew' => 'Aktyorlar və Heyət',
			'kids.timeLimits' => 'Ekran vaxtı məhdudiyyətləri',
			'kids.dailyWatchLimit' => 'Gündəlik baxış vaxtı',
			'kids.dailyWatchLimitHint' => 'Bu cihazda hər gün videonun oxudulmasını məhdudlaşdırır.',
			'kids.noTimeLimit' => 'Limit yoxdur',
			'kids.minutesLimit' => ({required Object minutes}) => '${minutes} dəqiqə',
			'kids.bedtime' => 'Yuxu vaxtı',
			'kids.bedtimeHint' => 'Bu saatlarda bu profildən istifadə etmək üçün valideyn PIN lazımdır.',
			'kids.bedtimeStart' => 'Yuxu vaxtı başlayır',
			'kids.bedtimeEnd' => 'Yuxu vaxtı bitir',
			'kids.timeLimitReached' => 'Baxış vaxtı bu gün bitdi',
			'kids.bedtimeReached' => 'Yuxu vaxtıdır',
			'kids.timeLimitParentHint' => 'Bu sessiyaya davam etmək üçün valideyndən PIN-nu daxil etməyi xahiş edin.',
			'kids.parentUnlock' => 'Valideyn kilidini açın',
			'kids.backupProfile' => 'Uşaq profilini yedəkləyin',
			'kids.backupExplain' => 'Bu profilin saxlanmış adını, xarakterini, məhdudiyyətlərini, görünüşünü və yerli baxış istisnalarını yedəkləyin. Ana PIN-lər, server girişləri, endirmələr və serverin oxunmasının gedişatı daxil deyil.',
			'kids.saveBackupFile' => 'Yedek faylı saxla',
			'kids.copyBackup' => 'Yedək mətni kopyalayın',
			'kids.backupSaved' => ({required Object path}) => 'Uşaq profilinin yedəkləməsi ${path}-da yadda saxlanıldı',
			'kids.backupCopied' => 'Uşaq profilinin yedəklənməsi kopyalandı',
			'kids.backupFailed' => 'Uşaq profilinin yedəkləməsini saxlamaq mümkün olmadı. Yenidən cəhd edin.',
			'kids.restoreProfile' => 'Uşaq profilini bərpa edin',
			'kids.chooseBackupFile' => 'Yedek faylı seçin',
			'kids.pasteBackup' => 'Yedək mətni yapışdırın',
			'kids.backupText' => 'Uşaq profilinin ehtiyat nüsxəsi JSON',
			'kids.pasteFromClipboard' => 'Buferdən yapışdırın',
			'kids.restoreReview' => 'Bu bərpa edilmiş parametrləri nəzərdən keçirin, sonra cari server bağlantılarınızdan istifadə edərək yeni uşaq profili yaratmaq üçün Saxla. Mövcud profillərin üzərinə yazılmır. Kitabxana seçimləri və baxış istisnaları yalnız eyni server/kitabxana ID-lərinə uyğun gəlir.',
			'kids.restoreInvalid' => 'Bu etibarlı dəstəklənən uşaq profilinin yedəkləməsi deyil. Luroka uşaq profilinin JSON ehtiyat nüsxəsini seçin.',
			'kids.deleteProfile' => 'Uşaq profilini silin',
			'kids.deleteExplain' => ({required Object name}) => '${name} Luroka-dan silinsin? Onların yerli parametrləri, endirmələri və baxış istisnaları silinəcək. Server hesabınız və server tərəfi tarixçəniz qalacaq. Profili daha sonra bərpa etmək istəyirsinizsə, əvvəlcə ehtiyat nüsxəsini yaradın.',
			'kids.profileDeleted' => 'Uşaq profili silindi',
			'kids.allowedLibraries' => 'İcazə verilən kitabxanalar',
			'kids.unavailableLibrary' => 'Əvvəllər seçilmiş kitabxana (hazırda mövcud deyil)',
			'kids.allLibraries' => 'Bütün qoşulmuş film və TV kitabxanalarına icazə verin',
			'kids.librariesExplain' => 'Xüsusi kitabxanaları seçmək üçün bunu söndürün. Yaş və animasiya qaydaları seçilmiş kitabxanalarda hələ də tətbiq olunur. Seçimdən istifadə edərkən yeni kitabxanalar avtomatik əlavə edilmir.',
			'kids.librariesUnavailable' => 'Heç bir film və ya televiziya kitabxanası yüklənmir. Serverə qoşulun və Kitabxanaları açın, sonra seçmək üçün bura qayıdın.',
			'kids.noLibrariesSelected' => 'Heç bir kitabxana seçilməyib: bu uşaq heç bir başlıq görməyəcək.',
			'kids.animationOnly' => 'Yalnız animasiya',
			'kids.animationExplain' => 'Serverinizdə yalnız Animasiya janrı ilə etiketlənmiş başlıqları göstərin. Bu, yaş məhdudiyyətini əvəz etmir: animasiya böyüklər üçün də nəzərdə tutula bilər. Çatışmayan janr metadatası gizlədilib.',
			'kids.allowUnrated' => 'Yaş reytinqi olmayan başlıqlara icazə verin',
			'kids.unratedExplain' => 'Defolt olaraq söndürülür. Aktiv olduqda, kitabxana və animasiya qaydaları icazə verərsə, çatışmayan və ya qiymətləndirilməmiş təsnifatlar görünə bilər. Onların uyğunluğu yaşa görə yoxlanıla bilməz. Yaş həddini aşan məlum reytinqlər və tanınmayan təsnifatlar gizli qalır.',
			'kids.whoIsWatching' => 'Kim baxır?',
			'kids.chooseAdventure' => 'Böyük macəraların kiçik bir dünyası.',
			'kids.chooseProfile' => 'Məkanınızı seçin. Kino gecəsi edin.',
			'kids.welcome' => ({required Object name}) => 'Salam, ${name}!',
			'kids.welcomeOlder' => ({required Object name}) => 'Növbəti möhtəşəm hekayəniz, ${name}.',
			'kids.homeSubtitle' => 'Böyük sərgüzəştlər. Kiçik kəşflər. Hamısı sizin üçün.',
			'kids.homeSubtitleOlder' => 'Yeni sevimli tapın. Qaldığınız yerdən davam edin.',
			'kids.featured' => 'Bu günün böyük macərası',
			'kids.featuredOlder' => 'Diqqət mərkəzində',
			'kids.moreInfo' => 'Ətraflı məlumat',
			'kids.movies' => 'Filmlər',
			'kids.shows' => 'Şoular',
			'kids.profiles' => 'Profillər',
			'kids.adultBadge' => 'Böyüklər',
			'kids.avatar' => 'Xarakterinizi seçin',
			'kids.avatarExplorer' => 'Kosmik tədqiqatçı',
			'kids.avatarFox' => 'Tülkü',
			'kids.avatarDinosaur' => 'dinozavr',
			'kids.avatarRobot' => 'Robot',
			'kids.avatarChildArtist' => 'Balaca rəssam',
			'kids.avatarChildSkater' => 'Balaca konkisürən',
			'kids.avatarSunrisePerson' => 'Günəşin doğuşu portreti',
			'kids.avatarOceanPerson' => 'Okean portreti',
			'kids.avatarCat' => 'Maraqlı pişik',
			'kids.avatarDog' => 'Xoşbəxt it',
			'kids.avatarPanda' => 'panda',
			'kids.avatarOwl' => 'bayquş',
			'kids.avatarBear' => 'ayı',
			'kids.continueAdventure' => 'Macəranı davam etdirin',
			'kids.freshStories' => 'Kəşf etmək üçün yeni hekayələr',
			'kids.yourMovies' => 'Kino vaxtının sevimliləri',
			'kids.yourShows' => 'Daha bir epizod',
			'kids.emptyHint' => 'Serverinizdə icazə verilən yaş təsnifatı olan başlıqlar olduqda burada yeni sərgüzəştlər görünəcək.',
			'kids.title' => 'Uşaqlar üçün Luroka',
			'kids.addProfile' => 'Uşaq profili əlavə edin',
			'kids.parentalControls' => 'Valideyn nəzarəti',
			'kids.parentPin' => 'Valideyn PIN-i',
			'kids.setParentPin' => 'Valideyn PIN-ini təyin edin',
			'kids.changeParentPin' => 'Valideyn PIN-ini dəyişin',
			'kids.pinExplain' => 'Bu PIN cihazdakı böyüklər profillərini və valideyn nəzarətini qoruyur.',
			'kids.name' => 'Uşağın adı',
			'kids.ageGroup' => 'İcazə verilən yaş təsnifatı',
			'kids.allAges' => 'Bütün yaşlar · G, TV-Y, TV-G, U',
			'kids.age7' => '7-ə qədər · həmçinin PG, TV-PG, TV-Y7',
			'kids.age12' => '12-ə qədər · həmçinin 12 və 12A',
			'kids.age16' => '16-a qədər · həmçinin PG-13, TV-14, 15 və 16',
			'kids.ratingExplain' => 'Yaş məhdudiyyətindən yuxarı başlıqlar və tanınmayan təsnifatlar gizlədilir. Aşağıda onlara icazə verməyincə, reytinqi olmayan başlıqlar gizlədilir. Qiymətləndirilməmiş epizodlar təsdiqlənmiş seriya təsnifatını miras ala bilər. Reytinqlər serverinizin metadatasından asılıdır.',
			'kids.theme' => 'Uşaqların görünüşü',
			'kids.themeExplain' => 'Bu profil aktiv olduqda rəngli mövzudan istifadə edin.',
			'kids.sharedLogin' => 'Mövcud server girişinizdən istifadə edir. Plex/Emby tərəqqi və baxılan status paylaşılmış olaraq qalır. Məhdudiyyətlər və uşaq profilləri bu cihazda saxlanılır.',
			'kids.hideWatched' => 'Uşaqların baxışını Baxmağa Davam et-dən gizlədin',
			'kids.hideExplain' => 'Bu cihazda uşaq profillərinin oynadığı filmləri və bütün seriyaları gizlədin. Bu, onları kitabxananızdan silmir və ya server tarixçəsini dəyişdirmir.',
			'kids.clearHistory' => 'Uşaqların baxış istisnalarını sıfırlayın',
			'kids.historyReset' => 'Uşaqların baxış istisnaları sıfırlandı',
			'kids.blocked' => 'Bu başlıq bu uşaq profilində mövcud deyil.',
			'kids.switchProfile' => 'Profilə keçin',
			'kids.manageFromAdult' => 'Ayarları idarə etmək üçün böyüklər profilinə keçin.',
			_ => null,
		} ?? switch (path) {
			'kids.noConnections' => 'Uşaq profili əlavə etməzdən əvvəl serveri böyüklər profilinizə qoşun.',
			'kids.created' => 'Uşaq profili yaradıldı',
			'kids.updated' => 'Uşaq profili yeniləndi',
			'kids.saveFailed' => 'Valideyn nəzarətlərini saxlamaq mümkün olmadı. Yenidən cəhd edin.',
			'kids.kidsBadge' => 'Uşaqlar',
			'lurokaDiscovery.title' => 'Kəşf et',
			'lurokaDiscovery.chooseLibraryHint' => 'Kəşf etmək üçün kitabxana seçin',
			'lurokaDiscovery.chooseCopyHint' => 'Çoxsaylı kitabxanalarda mövcuddur. Tercih etdiyiniz nüsxəni seçin.',
			'lurokaDiscovery.weeklyMovies' => 'Bu həftə trend filmlər · TMDb',
			'lurokaDiscovery.weeklyShows' => 'Bu həftənin trend şouları · TMDb',
			'lurokaDiscovery.weeklyLibrary' => 'Bu həftənin trendləri · Kitabxananızda',
			'lurokaDiscovery.popularLibrary' => 'İndi məşhur · Kitabxananızda · Cinemeta',
			'lurokaDiscovery.publicFeedError' => 'Cinemeta kəşfi əlçatan deyil. Yenidən cəhd edin.',
			'lurokaDiscovery.oscars' => 'Oskarlar · Ən yaxşı film qalibləri',
			'lurokaDiscovery.imdb100' => 'IMDb Top 100 film · Sentyabr 2026 snapshot',
			'lurokaDiscovery.imdbTv100' => 'IMDb Top 100 şou · Sentyabr 2026 snapshot',
			'lurokaDiscovery.emmyComedy' => 'Emmys · Komediya seriyası qalibləri · 1971–2026',
			'lurokaDiscovery.emmys' => 'Emmys · Dram Serial qalibləri · 1966–2026',
			'lurokaDiscovery.bafta' => 'BAFTA · Ən yaxşı film qalibləri',
			'lurokaDiscovery.cannes' => 'Kann · Palma d\'Or qalibləri',
			'lurokaDiscovery.awardsNote' => 'Mükafat kolleksiyalarına Oscar Ən Yaxşı Film tarixi, Emmy dram/komediya qalibləri və genişləndirilmiş BAFTA/Kann seçimləri daxildir. Təkrarlanan qalib başlıqlar bir dəfə görünür. Üzvlük mükafat kateqoriyası tarixçələrindən və Vikidata faktlarından istifadə edir. IMDb Top 100 film/şou siyahıları mmdju/imdb-top250-api-dən 2026-cı ilin sentyabr ayına aid qrafik şəkillərini qoruyur. Yalnız görünən, onlayn kitabxanalarınızdakı uyğunluqlar görünür; kolleksiyanın ölçüsü kitabxananın mövcudluğundan asılıdır.',
			'lurokaDiscovery.attribution' => 'İctimai populyarlıq siyahıları, metadata və IMDb reytinqləri Cinemeta tərəfindən təmin edilir; onun Populyar siyahıları həftəlik baxış cədvəlləri deyil. Bu məhsul TMDB API istifadə edir, lakin TMDB tərəfindən təsdiqlənməyib və ya sertifikatlaşdırılmayıb. Könüllü TMDb həftəlik tendensiyalar rəqəmlərə baxmaq deyil, TMDb marağı əks etdirir. Xallar mənbə etiketlərini saxlayır.',
			'lurokaDiscovery.tmdbSettings' => 'Kəşf mənbələri',
			'lurokaDiscovery.setupDescription' => 'Cinemeta kəşfi dərhal hesab olmadan işləyir: məşhur filmlər və şoular, IMDb reytinqləri və mükafatçılar. API açarı və ya themoviedb.org/settings/api saytından API Oxu Giriş Tokenindən istifadə edərək həftəlik tendensiyalar üçün TMDb-ni istəyə görə birləşdirin. Etibarnaməniz bu cihazda saxlanılır.',
			'lurokaDiscovery.apiKey' => 'TMDb API açarı / Oxu Giriş Tokeni',
			'lurokaDiscovery.connect' => 'TMDb qoşun',
			'lurokaDiscovery.connecting' => 'Qoşulur...',
			'lurokaDiscovery.connected' => 'TMDb qoşuldu · Həftəlik trendlər və mükafatlar aktiv edildi',
			'lurokaDiscovery.builtInKeyNote' => 'Luroka-nun daxili paylaşılan TMDb açarında işləyir. Xüsusi tarif limitləri və tam nəzarət üçün aşağıya öz pulsuz açarınızı əlavə edin.',
			'lurokaDiscovery.disconnect' => 'TMDb-ni ayırın',
			'lurokaDiscovery.invalidKey' => 'TMDb doğrulamaq mümkün olmadı. Etibarnamənizi və internet bağlantınızı yoxlayın.',
			'lurokaDiscovery.feedError' => 'TMDb kəşfi əlçatan deyil. Yenidən cəhd edin.',
			'lurokaDiscovery.allTitles' => 'Bütün başlıqlar',
			'lurokaDiscovery.available' => 'Kitabxananızda',
			'lurokaDiscovery.checking' => 'Kitabxanalarınız yoxlanılır...',
			'lurokaDiscovery.availabilityUnknown' => 'Bəzi kitabxanaları yoxlamaq mümkün olmadı. Təravətləndirməyə çalışın.',
			'lurokaDiscovery.noAvailable' => 'Yoxlanılan kitabxanalarda heç bir uyğun başlıq tapılmadı.',
			'lurokaDiscovery.sourceInfo' => 'Həftəlik trendlər və seçilmiş mükafat qalibləri · TMDb',
			'lurokaDiscovery.configure' => 'Kəşf parametrləri',
			'app.title' => 'Luroka',
			'appIcon.title' => 'Proqram ikonu',
			'appIcon.defaultIcon' => 'Defolt',
			'appIcon.current' => 'Cari ikon',
			'appIcon.locked' => 'Dəstəkçi mükafatı',
			'appIcon.lockedHint' => 'Alternativ nişanlar Dəstəkçinin üstünlükləridir.',
			'appIcon.changeFailed' => 'Tətbiq ikonasını dəyişmək mümkün olmadı',
			'appIcon.launcherHint' => 'Luroka-dan ayrıldıqdan sonra yeni ikona əsas ekranınızda görünür.',
			'appIcon.tvLauncherHint' => 'Luroka-ni tərk etdikdən sonra yeni banner görünür. Android TV televizor yenidən başlayana qədər köhnəsini göstərməyə davam edə bilər.',
			'appIcon.names.midnight' => 'Gecə yarısı',
			'appIcon.names.ember' => 'Ember',
			'appIcon.names.paper' => 'Kağız',
			'appIcon.names.oled' => 'OLED',
			'appIcon.names.line' => 'Xətt',
			'appIcon.names.ocean' => 'Okean',
			'appIcon.names.ultraviolet' => 'Ultraviyole',
			'appIcon.names.matcha' => 'Matcha',
			'appIcon.names.sunset' => 'Gün batımı',
			'appIcon.names.gold' => 'Qızıl',
			'appIcon.names.titanium' => 'Titan',
			'appIcon.names.glass' => 'Şüşə',
			'appIcon.names.crt' => 'CRT',
			'appIcon.names.vhs' => 'VHS',
			'appIcon.names.synthwave' => 'Synthwave',
			'appIcon.names.pixel' => 'Piksel',
			'appIcon.names.neon' => 'Neon',
			'appIcon.names.sticker' => 'Stiker',
			'appIcon.names.ticket' => 'Bilet',
			'appIcon.names.pop' => 'Pop',
			'appIcon.names.strata' => 'təbəqələr',
			'appIcon.names.facet' => 'Faset',
			'appIcon.names.tilde' => 'Tilde',
			'auth.signInWithPlex' => 'Plex ilə daxil ol',
			'auth.showQRCode' => 'QR kodu göstər',
			'auth.authenticate' => 'Təsdiqlə',
			'auth.authenticationTimeout' => 'Təsdiqləmə vaxtı bitdi. Lütfən təzədən cəhd edin.',
			'auth.scanQRToSignIn' => 'Daxil olmaq üçün bu QR kodu skan edin',
			'auth.waitingForAuth' => 'Təsdiqləmə gözlənilir...\nSəyahətçinizdən (brauzer) daxil olun.',
			'auth.useBrowser' => 'Səyahətçini istifadə et',
			'auth.or' => 'və ya',
			'auth.connectToMediaBrowser' => ({required Object product}) => '${product}-a qoşul',
			'auth.quickConnect' => 'Sürətli Qoşulma',
			'auth.useQuickConnect' => 'Sürətli Qoşulmanı istifadə et',
			'auth.quickConnectInstructions' => 'Jellyfin-də Sürətli Qoşulmanı açın və bu kodu daxil edin.',
			'auth.quickConnectWaiting' => 'Təsdiq gözlənilir…',
			'auth.quickConnectCancel' => 'Ləğv et',
			'auth.quickConnectExpired' => 'Sürətli Qoşulmanın vaxtı bitdi. Təzədən cəhd edin.',
			'auth.localDataRecoveryRequired' => 'Luroka yerli daxil olma və gözləyən oxutma məlumatlarını təhlükəsiz bərpa edə bilmədi. Lütfən təzədən daxil olun.',
			'auth.pinCheckRejected' => 'Plex PIN yoxlaması rədd edildi',
			'common.cancel' => 'Ləğv et',
			'common.save' => 'Yadda saxla',
			'common.close' => 'Bağla',
			'common.clear' => 'Təmizlə',
			'common.reset' => 'Sıfırla',
			'common.later' => 'Sonra',
			'common.submit' => 'Göndər',
			'common.confirm' => 'Təsdiqlə',
			'common.retry' => 'Təzədən cəhd et',
			'common.logout' => 'Çıxış et',
			'common.unknown' => 'Məlum deyil',
			'common.refresh' => 'Yenilə',
			'common.yes' => 'Bəli',
			'common.no' => 'Xeyr',
			'common.delete' => 'Sil',
			'common.edit' => 'Düzəliş et',
			'common.shuffle' => 'Qarışdır',
			'common.addTo' => 'Əlavə et...',
			'common.createNew' => 'Yenisini yarat',
			'common.connect' => 'Qoşul',
			'common.disconnect' => 'Əlaqəni kəs',
			'common.play' => 'Oynat',
			'common.pause' => 'Fasilə',
			'common.resume' => 'Davam et',
			'common.error' => 'Xəta',
			'common.search' => 'Axtar',
			'common.home' => 'Ana səhifə',
			'common.back' => 'Geri',
			'common.settings' => 'Tənzimləmələr',
			'common.mute' => 'Səsi söndür',
			'common.ok' => 'Oldu',
			'common.off' => 'Söndürülüb',
			'common.options' => 'Seçimlər',
			'common.seasonNumber' => ({required Object number}) => 'Mövsüm ${number}',
			'common.episodeNumberTitle' => ({required Object number, required Object title}) => 'Seriya ${number} - ${title}',
			'common.chapterNumber' => ({required Object number}) => 'Hissə ${number}',
			'common.reconnect' => 'Yenidən qoşul',
			'common.viewAll' => 'Hamısına bax',
			'common.serversUnreachable' => 'Serverlər əlçatmazdır',
			'common.loading' => 'Yüklənir...',
			'common.fullscreen' => 'Tam ekran',
			'common.exitFullscreen' => 'Tam ekrandan çıx',
			'common.ratingSource.critic' => 'Tənqidçilər',
			'common.ratingSource.audience' => 'Tamaşaçılar',
			'common.ratingSource.imdb' => 'IMDb',
			'common.ratingSource.tmdb' => 'TMDB',
			'common.ratingSource.rottenTomatoes' => 'Rotten Tomatoes',
			'common.ratingSource.simkl' => 'Simkl',
			'common.ratingSource.mal' => 'MyAnimeList',
			'common.ratingSource.anilist' => 'AniList',
			'common.ratingSource.trakt' => 'Trakt',
			'common.ratingSource.rottenTomatoesCritic' => 'Rotten Tomatoes tənqidçiləri',
			'common.ratingSource.rottenTomatoesAudience' => 'Rotten Tomatoes tamaşaçıları',
			'common.ratingSource.metacritic' => 'Metacritic',
			'common.ratingSource.letterboxd' => 'Letterboxd',
			'common.notAvailable' => 'N/A',
			'common.url' => 'URL',
			'common.letterKeys' => 'ABC',
			'common.mediaKind.movie' => 'Film',
			'common.mediaKind.show' => 'Serial',
			'common.mediaKind.season' => 'Sezon',
			'common.mediaKind.episode' => 'Epizod',
			'common.mediaKind.artist' => 'İfaçı',
			'common.mediaKind.album' => 'Albom',
			'common.mediaKind.track' => 'Mahnı',
			'common.mediaKind.collection' => 'Kolleksiya',
			'common.mediaKind.playlist' => 'Pleylist',
			'common.mediaKind.clip' => 'Klip',
			'common.mediaKind.photo' => 'Şəkil',
			'common.mediaKind.folder' => 'Qovluq',
			'common.stay' => 'Qal',
			'common.exitApp' => 'Çıx',
			'common.exitAppBody' => 'Luroka-dan çıxmaq istədiyinizə əminsiniz?',
			'tvHints.select' => 'seçin',
			'tvHints.browse' => 'Gözdən keçirin',
			'tvHints.back' => 'Geri',
			'screens.licenses' => 'Lisenziyalar',
			'screens.switchProfile' => 'Profili dəyiş',
			'screens.subtitleStyling' => 'Altyazı tənzimləmələri',
			'screens.mpvConfig' => 'mpv.conf',
			'screens.logs' => 'Jurnallar',
			'mediaExtras.trailers' => 'Qoşqular',
			'mediaExtras.featurettes' => 'Bədii filmlər',
			'mediaExtras.interviews' => 'Müsahibələr',
			'mediaExtras.deletedScenes' => 'Silinmiş Səhnələr',
			'mediaExtras.behindTheScenes' => 'Pərdəarxası',
			'mediaExtras.scenesAndClips' => 'Səhnələr və Kliplər',
			'mediaExtras.other' => 'Digər Əlavələr',
			'update.available' => 'Yenilənmə var',
			'update.versionAvailable' => ({required Object version}) => '${version} versiyası əlçatandır',
			'update.currentVersion' => ({required Object version}) => 'Cari: ${version}',
			'update.skipVersion' => 'Bu versiyanı ötür',
			'update.viewRelease' => 'Buraxılışa bax',
			'update.latestVersion' => 'Siz ən son versiyadasınız',
			'update.checkFailed' => 'Yenilənmələr yoxlanıla bilmədi',
			'supporter.title' => 'Luroka Dəstəyi',
			'supporter.intro' => 'Luroka inkişafını dəstəkləyən və kosmetik əlavələri açan birdəfəlik alış:',
			'supporter.presetThemes' => 'Əvvəlcədən təyin edilmiş mövzular',
			'supporter.presetThemesDescription' => 'Ember, Buzlaq, Meşə, Gavalı və Kağız',
			'supporter.customTheme' => 'Fərdi mövzu',
			'supporter.customThemeDescription' => 'Hər rəngi özünüz seçin',
			'supporter.appIcons' => 'Proqram nişanları',
			'supporter.appIconsDescription' => 'Alternativ Luroka ikonasını seçin',
			'supporter.buy' => ({required Object price}) => '${price} üçün satın alın',
			'supporter.loadingPrice' => 'Qiymət yüklənir...',
			'supporter.restore' => 'Satınalmaları bərpa edin',
			'supporter.pending' => 'Alışınız ödəniş və ya təsdiq gözləyir. Mağaza tamamlayan kimi əlavələr kilidini açır.',
			'supporter.thankYouTitle' => 'Luroka-nu dəstəklədiyiniz üçün təşəkkür edirik',
			'supporter.thankYouBody' => 'Dəstəkçi əlavələriniz açıldı.',
			'supporter.tileSubtitle' => 'Birdəfəlik satınalma ilə mövzuların və tətbiq nişanlarının kilidini açın',
			'supporter.tileSubtitleThemesOnly' => 'Birdəfəlik alışla mövzuların kilidini açın',
			'supporter.tileUnlocked' => 'Dəstəyiniz üçün təşəkkür edirik',
			'supporter.errors.storeUnavailable' => 'Satınalmalar mövcud deyil. Mağazaya daxil olduğunuzu və bu cihazda alış-verişə icazə verildiyini yoxlayın.',
			'supporter.errors.productNotFound' => 'Dəstəkçi alışı hazırda mağazanızda mövcud deyil.',
			'supporter.errors.productQueryFailed' => 'Qiyməti yükləmək mümkün olmadı. Bağlantınızı yoxlayın və yenidən cəhd edin.',
			'supporter.errors.purchaseFailed' => 'Satınalma baş tutmadı. Yenidən cəhd edin.',
			'supporter.errors.restoreFailed' => 'Alışınızı bərpa etmək üçün mağaza ilə əlaqə saxlamaq mümkün olmadı. Yenidən cəhd edin.',
			'supporter.errors.nothingToRestore' => 'Bu mağaza hesabı üçün heç bir Dəstəkçi alışı tapılmadı.',
			'settings.title' => 'Tənzimləmələr',
			'settings.supportDeveloper' => 'Luroka-yə dəstək ol',
			'settings.supportDeveloperDescription' => 'İnkişafı maliyyələşdirmək üçün Liberapay vasitəsilə iyanə edin',
			'settings.language' => 'Dil',
			'settings.theme' => 'Mövzu',
			'settings.appearance' => 'Görünüş',
			'settings.videoPlayback' => 'Video oynatma',
			'settings.videoPlaybackDescription' => 'Oynatma davranışını tənzimləyin',
			'settings.advanced' => 'Təkmilləşdirilmiş',
			'settings.episodePosterMode' => 'Seriya poster stili',
			'settings.seriesPoster' => 'Serial posteri',
			'settings.seasonPoster' => 'Mövsüm posteri',
			'settings.episodeThumbnail' => 'Kadr önizləməsi',
			'settings.homeHeroSize' => 'Karusel ölçüsü',
			'settings.homeHeroSizeSmall' => 'Kiçik',
			'settings.homeHeroSizeMedium' => 'Orta',
			'settings.homeHeroSizeLarge' => 'Böyük',
			'settings.secondsLabel' => 'Saniyə',
			'settings.minutesLabel' => 'Dəqiqə',
			'settings.secondsShort' => 'san',
			'settings.minutesShort' => 'dəq',
			'settings.durationHint' => ({required Object min, required Object max}) => 'Müddəti daxil edin (${min}-${max})',
			'settings.systemTheme' => 'Sistem',
			'settings.lightTheme' => 'Açıq',
			'settings.darkTheme' => 'Tünd',
			'settings.oledTheme' => 'OLED',
			'settings.libraryDensity' => 'Kitabxana sıxlığı',
			'settings.displayScale' => 'Ekran miqyası',
			'settings.compact' => 'Sıx',
			'settings.comfortable' => 'Rəhat',
			'settings.gridSpacing' => 'Tor aralığı',
			'settings.gridSpacingTight' => 'Sıx',
			'settings.gridSpacingNormal' => 'Normal',
			'settings.gridSpacingSpacious' => 'Geniş',
			'settings.tvCornerSpotlightBackdrop' => 'Künc işıqlandırma fonu',
			'settings.tvCornerSpotlightBackdropDescription' => 'Arxa fonu ekranı örtmək əvəzinə sağ üst küncdə göstər',
			'settings.viewMode' => 'Baxış rejimi',
			'settings.gridView' => 'Tor',
			'settings.listView' => 'Siyahı',
			'settings.continueWatchingAction' => 'İzləməyə davam et əməliyyatı',
			'settings.continueWatchingPlay' => 'Oynat',
			'settings.continueWatchingDetails' => 'Ətraflı aç',
			'settings.episodeAction' => 'Seriya əməliyyatı',
			'settings.episodePlay' => 'Oynat',
			'settings.episodeDetails' => 'Ətraflı aç',
			'settings.useGlobalHubs' => 'Ana səhifə quruluşunu istifadə et',
			'settings.useGlobalHubsDescription' => 'Birləşdirilmiş ana səhifə bölmələrini göstər. Əks halda kitabxana tövsiyələrini istifadə edir.',
			'settings.showServerNameOnHubs' => 'Bölmələrdə server adını göstər',
			'settings.showServerNameOnHubsDescription' => 'Bölmə başlıqlarında həmişə server adlarını göstər.',
			'settings.groupLibrariesByServer' => 'Kitabxanaları serverə görə qrupla',
			'settings.groupLibrariesByServerDescription' => 'Yan menyu kitabxanalarını hər media serverinin altında qruplaşdır.',
			'settings.alwaysKeepSidebarOpen' => 'Yan menyunu həmişə açıq saxla',
			'settings.alwaysKeepSidebarOpenDescription' => 'Yan menyu genişlənmiş qalır və məzmun sahəsi buna uyğunlaşır',
			'settings.showUnwatchedCount' => 'Baxılmamış sayını göstər',
			'settings.showUnwatchedCountDescription' => 'Seriallarda və mövsümlərdə baxılmamış seriya sayını göstər',
			'settings.showWatchedIndicators' => 'Baxılmış göstəriciləri göstər',
			'settings.showWatchedIndicatorsDescription' => 'Baxılmış kinolarda, seriallarda və seriyalarda quşçuq göstər',
			'settings.showEpisodeNumberOnCards' => 'Kartlarda seriya nömrəsini göstər',
			'settings.showEpisodeNumberOnCardsDescription' => 'Seriya kartlarında mövsüm və seriya nömrəsini göstər',
			'settings.showSeasonPostersOnTabs' => 'Mərhələlərdə mövsüm posterlərini göstər',
			'settings.showSeasonPostersOnTabsDescription' => 'Hər mövsümün posterini öz bölməsinin üstündə göstər',
			'settings.tvFullCardLayout' => 'Tam TV kartları',
			'settings.tvFullCardLayoutDescription' => 'Aktyor adları üstündə olan yalnız şəkil tərkibli TV kartları istifadə et',
			'settings.focusGlow' => 'Fokus parıltısı',
			'settings.focusGlowDescription' => 'Fokuslanmış kartın ətrafında yumşaq parıltı çək',
			'settings.visualEffects' => 'Vizual effektlər',
			'settings.visualEffectsAuto' => 'Avtomatik',
			'settings.visualEffectsAutoDescription' => 'Zəif cihazlarda effektləri avtomatik olaraq azalt',
			'settings.visualEffectsFull' => 'Tam',
			'settings.visualEffectsReduced' => 'Azaldılmış',
			'settings.visualEffectsReducedDescription' => 'Daha az animasiya və daha aşağı keyfiyyətli şəkillər',
			'settings.hideSpoilers' => 'Baxılmamış seriyalar üçün spoylerləri gizlə',
			'settings.hideSpoilersDescription' => 'Baxılmamış seriyalar üçün miniatürləri və təsvirləri bulanıqlaşdır',
			'settings.playerBackend' => 'Oynadıcı infrastrukturu',
			'settings.playerBackendDescription' => 'mpv daha çox format oynayır və daha çox funksiyaya imkan verir — tövsiyə olunur. ExoPlayer oxutma uğursuz olarsa və ya bu cihazda kəkələyərsə kömək edir.',
			'settings.exoPlayer' => 'ExoPlayer',
			'settings.mpv' => 'mpv',
			'settings.hardwareDecoding' => 'Avadanlıq kod açılması',
			'settings.hardwareDecodingDescription' => 'Mümkün olduqda avadanlıq sürətləndirməsini istifadə et',
			'settings.playbackBuffer' => 'Oxutma buferi',
			'settings.playbackBufferAuto' => 'Avtomatik (tövsiyə olunur)',
			'settings.playbackBufferLarge' => 'Böyük',
			'settings.playbackBufferExtraLarge' => 'Çox böyük',
			'settings.playbackBufferDescription' => 'Qeyri-sabit əlaqələrə qarşı daha çox buferləyir. Bufer ölçüsü ilə də məhdudlaşır.',
			'settings.defaultQualityTitle' => 'Defolt keyfiyyət',
			'settings.streamingQualityOriginalHint' => 'Faylı tam olaraq saxlandığı kimi oynayır — ən yaxşı keyfiyyət, ən çox bant genişliyindən istifadə edir',
			'settings.cellularQualityTitle' => 'Mobil şəbəkədə defolt keyfiyyət',
			'settings.cellularQualitySameAsDefault' => 'Defolt keyfiyyətlə eyni',
			'settings.directPlayCoveredQuality' => 'Kiçik videoları orijinal keyfiyyətdə oynat',
			'settings.directPlayCoveredQualityDescription' => 'Keyfiyyət limitinə uyğun gələn videoları yenidən kodlaşdırmaq əvəzinə birbaşa oynat',
			'settings.videoCodecs' => 'Video kodekləri',
			'settings.videoCodecsDescription' => 'İşarələnməmiş kodekləri server yenidən kodlaşdırır',
			'settings.videoCodecsAlwaysAccepted' => 'Həmişə qəbul edilir',
			'settings.musicQualityTitle' => 'Musiqi keyfiyyəti',
			'settings.subtitleStyling' => 'Altyazı tənzimləmələri',
			'settings.subtitleStylingDescription' => 'Altyazı görünüşünü özünüləşdirin',
			'settings.smallSkipDuration' => 'Kiçik ötürmə müddəti',
			'settings.largeSkipDuration' => 'Böyük ötürmə müddəti',
			'settings.rewindOnResume' => 'Davam edərkən geri sar',
			'settings.secondsUnit' => ({required Object seconds}) => '${seconds} saniyə',
			'settings.defaultSleepTimer' => 'Defolt yuxu taymeri',
			'settings.minutesUnit' => ({required Object minutes}) => '${minutes} dəqiqə',
			'settings.rememberTrackSelections' => 'Hər film/serial üçün səs/altyazı seçimlərini xatırla',
			'settings.rememberTrackSelectionsDescription' => 'Hər məzmun üçün səs və altyazı seçimlərini yadda saxla',
			'settings.rememberTrackSelectionsBackendRule' => 'Plex hər seçimi serverdə fayl üzrə saxlayır; Jellyfin həmçinin hesabın "Seçimləri xatırla" funksiyasını aktivləşdirir; Emby dəstəklənmir',
			'settings.followServerTrackSelections' => 'Hər epizod üçün serverin trek seçimlərini istifadə et',
			'settings.followServerTrackSelectionsDescription' => 'Epizod dəyişəndə cari seçimi köçürmək əvəzinə serverdə seçilmiş səs və altyazını tətbiq et',
			'settings.resumeMusicOnLaunch' => 'Musiqi sessiyasını yadda saxla',
			'settings.resumeMusicOnLaunchDescription' => 'Tətbiq açılanda son mahnını dayandırıldığı yerdə fasilədə aç',
			'settings.showChapterMarkersOnTimeline' => 'Zaman çubuğunda hissə işarələrini göstər',
			'settings.showChapterMarkersOnTimelineDescription' => 'Zaman çubuğunu hissə sərhədlərinə böl',
			'settings.specialsOrdering' => 'Xüsusi bölmələr epizod sırasına görə',
			'settings.specialsOrderingDescription' => 'Xüsusi bölmələrin serialın izləmə sırasındakı yeri',
			'settings.specialsOrderingServer' => 'Server sırasını izlə',
			'settings.specialsOrderingAirDate' => 'Yayım tarixinə görə qarışdır',
			'settings.specialsOrderingLast' => 'Adi mövsümlərdən sonra',
			'settings.clickVideoTogglesPlayback' => 'Oynat/fasilə üçün videoya toxun',
			'settings.clickVideoTogglesPlaybackDescription' => 'İdarəetməni göstərmək əvəzinə oynatmaq/fasilə etmək üçün videoya toxun.',
			'settings.videoPlayerControls' => 'Video oynadıcı idarəetmələri',
			'settings.keyboardShortcuts' => 'Klaviatura qısayolları',
			'settings.keyboardShortcutsDescription' => 'Klaviatura qısayollarını özünüləşdirin',
			'settings.videoPlayerNavigation' => 'Video oynadıcı naviqasiyası',
			'settings.videoPlayerNavigationDescription' => 'Oynadıcı idarəetmələrində hərəkət etmək üçün ox düymələrini istifadə edin',
			'settings.watchTogetherRelay' => 'Birlikdə İzlə relesi',
			'settings.watchTogetherRelayDescription' => 'İctimai Açıq İzləmə Partiyasının releləri siz özünüz təyin etməsəniz',
			'settings.watchTogetherRelayHint' => 'https://my-relay.example.com',
			'settings.watchTogetherRelayInvalid' => 'Düzgün HTTP və ya HTTPS rele ünvanı daxil edin.',
			'settings.crashReporting' => 'Xəta hesabatı',
			'settings.crashReportingDescription' => 'Tətbiqi təkmilləşdirməyə kömək etmək üçün xəta hesabatları göndərin',
			'settings.debugLogging' => 'Xəta saxlama jurnalı',
			'settings.debugLoggingDescription' => 'Problemləri həll etmək üçün ətraflı jurnal qeydiyyatını aktivləşdirin',
			'settings.viewLogs' => 'Jurnallara bax',
			'settings.viewLogsDescription' => 'Tətbiq jurnallarına baxın',
			'settings.clearImageCache' => 'Şəkil keşini təmizlə',
			'settings.clearImageCacheDescription' => 'Keşlənmiş şəkilləri təmizləyir. Yenidən yüklənənədək şəkillər daha yavaş yüklənə bilər.',
			'settings.clearImageCacheSuccess' => 'Şəkil keşi uğurla təmizləndi',
			'settings.resetSettings' => 'Tənzimləmələri sıfırla',
			'settings.resetSettingsDescription' => 'Defolt tənzimləmələri bərpa edin. Bu əməliyyat geri qaytarıla bilməz.',
			'settings.resetSettingsSuccess' => 'Tənzimləmələr uğurla sıfırlandı',
			'settings.backup' => 'Ehtiyat nüsxə',
			'settings.exportSettings' => 'Tənzimləmələri ixrac et',
			'settings.exportSettingsDescription' => 'Seçimlərinizi fayla yadda saxlayın',
			'settings.exportSettingsSuccess' => 'Tənzimləmələr ixrac edildi',
			'settings.importSettings' => 'Tənzimləmələri idxal et',
			'settings.importSettingsDescription' => 'Seçimləri fayldan bərpa edin',
			'settings.importSettingsConfirm' => 'Bu cari tənzimləmələrinizin üzərinə yazacaq. Davam edilsin?',
			'settings.importSettingsSuccess' => 'Tənzimləmələr idxal edildi',
			'settings.importSettingsInvalidFile' => 'Bu fayl düzgün Luroka tənzimləmələr faylı deyil',
			'settings.importSettingsNoUser' => 'Tənzimləmələri idxal etməzdən əvvəl daxil olun',
			'settings.shortcutsReset' => 'Qısayollar defolt vəziyyətə sıfırlandı',
			'settings.resetShortcutsConfirm' => 'Bu, fərdi qısayollarınızı defoltlarla əvəz edəcək. Davam edilsin?',
			'settings.about' => 'Haqqında',
			'settings.aboutDescription' => 'Tətbiq məlumatı və lisenziyalar',
			'settings.updates' => 'Yenilənmələr',
			'settings.updateAvailable' => 'Yenilənmə var',
			'settings.checkForUpdates' => 'Yenilənmələri yoxla',
			'settings.autoCheckUpdatesOnStartup' => 'Açılışda yenilənmələri avtomatik yoxla',
			'settings.autoCheckUpdatesOnStartupDescription' => 'Açılışda yenilənmə olduqda xəbərdar et',
			'settings.validationErrorEnterNumber' => 'Lütfən düzgün rəqəm daxil edin',
			'settings.validationErrorDuration' => ({required Object min, required Object max, required Object unit}) => 'Müddət ${min} və ${max} ${unit} arasında olmalıdır',
			'settings.shortcutAlreadyAssigned' => ({required Object action}) => 'Qısayol artıq ${action} üçün təyin edilib',
			'settings.shortcutUpdated' => ({required Object action}) => '${action} üçün qısayol yeniləndi',
			'settings.saveFailed' => 'Dəyişikliklər yadda saxlanıla bilmədi. Təzədən cəhd edin.',
			'settings.autoPlayAndSkip' => 'Avtomatik oynat və ötür',
			'settings.autoPlayNextEpisode' => 'Növbəti seriyanı avtomatik oynat',
			'settings.autoPlayNextEpisodeDescription' => 'Bir seriya bitdikdə növbətisini avtomatik başlat',
			'settings.shuffleStartsFromBeginning' => 'Qarışdırma əvvəldən başlayır',
			'settings.shuffleStartsFromBeginningDescription' => 'Qarışdırarkən hər seriyanı davam etdirmək əvəzinə əvvəldən başlat',
			'settings.playNextCountdown' => 'Növbəti seriya geri sayımı',
			'settings.playNextCountdownImmediate' => 'Dərhal oynat',
			'settings.skipIntroMode' => 'Girişi ötür',
			'settings.skipIntroModeOffDescription' => 'Girişləri ötürmə düyməsi olmadan normal oynat',
			'settings.skipIntroModeButtonDescription' => 'Giriş başlayanda ötürmə düyməsini göstər',
			'settings.skipIntroModeAutoDescription' => 'Girişləri aşağıdakı ləngimədən sonra avtomatik ötür',
			'settings.skipCreditsMode' => 'Titrləri ötür',
			'settings.skipCreditsModeOffDescription' => 'Titrləri ötürmə düyməsi olmadan normal oynat',
			'settings.skipCreditsModeButtonDescription' => 'Titrlər başlayanda ötürmə düyməsini göstər',
			'settings.skipCreditsModeAutoDescription' => 'Titrləri avtomatik ötür və növbəti seriyanı oynat',
			'settings.skipMarkerModeOff' => 'Söndürülüb',
			'settings.skipMarkerModeButton' => 'Düyməni göstər',
			'settings.skipMarkerModeAuto' => 'Avtomatik',
			'settings.forceSkipMarkerFallback' => 'Ehtiyat işarələri məcburi et',
			'settings.forceSkipMarkerFallbackDescription' => 'Plex işarələri olsa belə hissə başlığı şablonlarını istifadə et',
			'settings.autoSkipDelay' => 'Avtomatik ötürmə ləngiməsi',
			'settings.autoSkipDelayDescription' => ({required Object seconds}) => 'Avtomatik ötürməzdən əvvəl ${seconds} saniyə gözlə',
			'settings.introPattern' => 'Giriş işarəsi şablonu',
			'settings.introPatternDescription' => 'Hissə başlıqlarında giriş işarələrini tapmaq üçün Regex şablonu',
			'settings.creditsPattern' => 'Titr işarəsi şablonu',
			'settings.creditsPatternDescription' => 'Hissə başlıqlarında titr işarələrini tapmaq üçün Regex şablonu',
			'settings.invalidRegex' => 'Səhv requlyar ifadə (Regex)',
			'settings.regex' => 'Requlyar ifadə (Regex)',
			'settings.downloads' => 'Yükləmələr',
			'settings.downloadLocationDescription' => 'Yüklənmiş məzmunun harada saxlanacağını seçin',
			'settings.downloadLocationDefault' => 'Defolt (Tətbiq yaddaşı)',
			'settings.downloadLocationCustom' => 'Xüsusi məkan',
			'settings.selectFolder' => 'Qovluq seç',
			'settings.resetToDefault' => 'Defolt vəziyyətə sıfırla',
			'settings.currentPath' => ({required Object path}) => 'Cari: ${path}',
			'settings.downloadLocationChanged' => 'Yükləmə məkanı dəyişdirildi',
			'settings.downloadLocationReset' => 'Yükləmə məkanı defolt vəziyyətə sıfırlandı',
			'settings.downloadLocationInvalid' => 'Seçilmiş qovluğa yazmaq olmur',
			'settings.downloadLocationPickerUnavailable' => 'Qovluq seçimi bu cihazda əlçatan deyil',
			'settings.downloadOnWifiOnly' => 'Yalnız Wi-Fi ilə yüklə',
			'settings.downloadOnWifiOnlyDescription' => 'Mobil məlumat istifadə edildikdə yükləmələri dayandır',
			'settings.downloadWifiScope' => 'Bu cihazdakı bütün profillərə və endirmələrə aiddir.',
			'settings.autoRemoveWatchedDownloads' => 'Baxılmış yükləmələri avtomatik sil',
			'settings.autoRemoveWatchedDownloadsDescription' => 'Baxılmış yükləmələri avtomatik olaraq sil',
			'settings.cellularDownloadBlocked' => 'Mobil şəbəkədə yükləmələr bloklanıb. Wi-Fi istifadə edin və ya tənzimləməni dəyişin.',
			'settings.maxVolume' => 'Maksimal səs',
			'settings.maxVolumeDescription' => 'Sakit videolar üçün səsin 100%-dən yuxarı qalxmasına icazə ver',
			'settings.maxVolumePercent' => ({required Object percent}) => '%${percent}',
			'settings.discordRichPresence' => 'Discord-da fəaliyyət statusu',
			'settings.discordRichPresenceDescription' => 'Discord-da nəyə baxdığınızı göstərin',
			'settings.services' => 'Xidmətlər',
			'settings.servicesDescription' => 'Trakt, MyAnimeList, Seerr və daha çoxunu qoşun',
			'settings.manageLibrariesDescription' => 'Kitabxanaları yenidən sıralayın və gizlədin',
			'settings.companionRemoteServer' => 'Köməkçi pult serveri',
			'settings.companionRemoteServerDescription' => 'Şəbəkənizdəki mobil cihazların bu tətbiqi idarə etməsinə icazə verin',
			'settings.companionRemoteServerStartFailed' => 'Köməkçi pult serveri başladıla bilmədi',
			'settings.companionRemoteServerStopFailed' => 'Köməkçi pult serveri dayandırıla bilmədi',
			'settings.autoPip' => 'Avtomatik Pəncərə daxilində Pəncərə (PiP)',
			'settings.autoPipDescription' => 'Oynatma zamanı tətbiqdən çıxdıqda avtomatik PiP rejiminə keç',
			'settings.matchContentFrameRate' => 'Kadr tezliyini uyğunlaşdır',
			'settings.matchContentFrameRateDescription' => 'Ekran yenilənmə tezliyini video məzmununa uyğunlaşdır',
			'settings.matchContentResolution' => 'Məzmunun görüntü keyfiyyətinə uyğunlaş',
			'settings.matchContentResolutionDescription' => 'Ekranı videonun öz görüntü keyfiyyətinə keçirir ki, miqyaslandırmanı televizorunuz etsin. Oxutma zamanı menyular və altyazılar da miqyaslandırılır',
			'settings.matchRefreshRate' => 'Yenilənmə tezliyini uyğunlaşdır',
			'settings.matchRefreshRateDescription' => 'Tam ekranda ekran yenilənmə tezliyini uyğunlaşdır',
			'settings.matchDynamicRange' => 'Dinamik diapazonu uyğunlaşdır',
			'settings.matchDynamicRangeDescription' => 'HDR məzmun üçün HDR-ı açın, sonra SDR-a qayıdın',
			'settings.displaySwitchDelay' => 'Ekran dəyişmə ləngiməsi',
			'settings.tunneledPlayback' => 'Tünellənmiş oynatma',
			'settings.tunneledPlaybackDescription' => 'Video tünelləməni istifadə et. HDR oynatmada qara ekran görünürsə və ya hərəkət takılırsa söndürün.',
			'settings.audioPassthrough' => 'Səsin birbaşa ötürülməsi (Passthrough)',
			'settings.audioPassthroughDescription' => 'Dolby/DTS səslərini yenidən kodlamadan TV və ya resiverə göndərir. Səs gəlmirsə söndürün.',
			'settings.audioPassthroughDescriptionApple' => 'Atmos daxil olmaqla Dolby Digital Plus üçün Apple-ın daxili dekoderini istifadə edin. DTS və TrueHD yenə də çoxkanallı PCM kimi oynadılır. Səs gəlmirsə söndürün.',
			'settings.audioPassthroughDescriptionAppleSpatial' => 'Atmos da daxil olmaqla Dolby Digital Plus üçün Apple-ın doğma Dolby dekoderindən istifadə edin. iOS, iPadOS və tvOS 26 və ya daha yeni versiyalarda TrueHD Atmos və DTS:X məkan audio kimi oynayır. Digər DTS və TrueHD trekləri çoxkanallı PCM kimi oynayır. Səsiniz yoxdursa söndürün.',
			'settings.audioPassthroughOverriddenByNormalization' => 'Səsin gurluğunu normallaşdırma aktivkən söndürülüb',
			'settings.audioChannelLimit' => 'Audio Kanallar',
			'settings.audioChannelLimitDescription' => 'Hər kanalı oxuya bilməyən dinamiklər, qulaqlıqlar və ya HDMI quraşdırmaları üçün deşifrə edilmiş səsi aşağı qarışdırın',
			'settings.audioChannelLimitOriginal' => 'Orijinal',
			'settings.audioChannelLimitOriginalDescription' => 'Trekdəki hər kanalı oynayın',
			'settings.audioChannelLimitSurround51' => '5.1-ə qədər',
			'settings.audioChannelLimitSurround51Description' => 'Yalnız 5.1 PCM qəbul edən televizorlar və qəbuledicilər üçün 7.1-dən 5.1-ə qədər qarışdırın. Keçid təsirsizdir.',
			'settings.audioChannelLimitStereo' => 'Stereo',
			'settings.audioChannelLimitStereoDescription' => 'Stereo dinamiklər və ya qulaqlıqlar üçün iki kanala qədər qarışdırın. Keçid keçidini söndürür.',
			'settings.downmixCenterBoost' => 'Mərkəz kanal gücləndirilməsi',
			'settings.downmixCenterBoostValue' => ({required Object db}) => '${db} dB',
			'settings.downmixCenterBoostLabel' => 'Gücləndirmə (dB)',
			'settings.downmixCenterBoostShort' => 'dB',
			'settings.audioDownmixNormalize' => 'Çevirmədə səsi normallaşdır',
			'settings.audioDownmixNormalizeDescription' => 'Səs kəsilmələrinin qarşısını almaq üçün səviyyəni endirin. Orijinal səs səviyyəsini saxlamaq üçün söndürün (yüksək səsli səhnələr təhrif oluna bilər).',
			'settings.dvConversionMode' => 'Dolby Vision çevrilməsi',
			'settings.dvConversionModeDescription' => 'Dolby Vision Profile 7 fayllarının necə emal ediləcəyini seçin.',
			'settings.dvConversionAuto' => 'Avtomatik',
			'settings.dvConversionNative' => 'Daxili / Söndürülüb',
			'settings.dvConversionDv81' => 'P7 → P8.1',
			'settings.dvConversionHevcStrip' => 'P7 → HEVC',
			'settings.dvConversionAutoDescription' => 'Cihaz imkanlarının təyini və normal davranışdan istifadə et',
			'settings.dvConversionNativeDescription' => 'Daxili DV7-ni məcburi et',
			'settings.dvConversionDv81Description' => 'Dolby Vision profile 8.1-ə çevrilməni məcburi et',
			'settings.dvConversionHevcStripDescription' => 'Dolby Vision təbəqələrini sil və sadə HEVC kimi təqdim et',
			'settings.disableDolbyVision' => 'Dolby Vision-u söndür',
			'settings.disableDolbyVisionDescription' => 'Faylda varsa, Dolby Vision əvəzinə HDR10 və ya HLG təbəqəsini oynat',
			'settings.hdrSdrConversion' => 'HDR-dən SDR-ə çevirmə',
			'settings.hdrSdrConversionDescription' => 'Ekran HDR göstərə bilmədikdə HDR videonu nəyin çevirəcəyini seçin.',
			'settings.hdrSdrConversionAuto' => 'Avtomatik',
			'settings.hdrSdrConversionAutoDescription' => 'Android 9 və sonrakı versiyalarda cihaz, köhnə versiyalarda oynadıcı',
			'settings.hdrSdrConversionDevice' => 'Cihaz',
			'settings.hdrSdrConversionDeviceDescription' => 'Çevirməni cihazın video avadanlığı edir. Ən sürətlisi, lakin rənglər cihazdan asılıdır',
			'settings.hdrSdrConversionPlayer' => 'Oynadıcı',
			'settings.hdrSdrConversionPlayerDescription' => 'Çevirməni oynadıcı edir. Sabit rənglər, lakin zəif TV qutularında 4K ilişə bilər',
			'settings.deinterlace' => 'Deinterleysinq',
			'settings.deinterlaceDescription' => 'Sətirlərarası videodakı darama artefaktlarını aradan qaldır (yalnız mpv oynadıcısı)',
			'settings.deinterlaceOff' => 'Söndür',
			'settings.deinterlaceOffDescription' => 'Şifrə açılmış kimi interlaced videonu göstərin',
			'settings.deinterlaceVideo' => 'Video',
			'settings.deinterlaceVideoDescription' => 'Hər bir sahəni tam çərçivəyə çevirin. İdman, xəbərlər və konsertlər kimi TV üçün çəkilmiş videolar üçün',
			'settings.deinterlaceFilm' => 'Film',
			'settings.deinterlaceFilmDescription' => 'NTSC DVD-lərində ümumi olan 29,97 kadr/saniyəyə qədər telesinasiya edilmiş film və animasiyanın orijinal kadrlarını bərpa edin. Televiziya kəkələyənlər üçün video çəkiliş. Canlı TV Videodan istifadə edir',
			'settings.requireProfileSelectionOnOpen' => 'Açılışda profil soruş',
			'settings.requireProfileSelectionOnOpenDescription' => 'Tətbiq hər dəfə açıldıqda profil seçimini göstər',
			'settings.forceTvMode' => 'TV rejimini məcburi et',
			'settings.forceTvModeKeepTitle' => 'TV düzəni saxlanılsın?',
			'settings.forceTvModeKeepBody' => ({required Object seconds}) => 'Televizor planı uzaqdan idarəetmə üçün nəzərdə tutulmuşdur. ${seconds} s-də normal tərtibata qayıtmaq.',
			'settings.forceTvModeKeepConfirm' => 'TV düzənini saxlayın',
			'settings.forceTvModeReverted' => 'TV tərtibatı geri qaytarıldı',
			'settings.forceTvModeDescription' => 'TV interfeysini məcburi et. Avtomatik təyin etməyən cihazlar üçündür. Yenidən başlatma tələb olunur.',
			'settings.startInFullscreen' => 'Tam ekranda başlat',
			'settings.startInFullscreenDescription' => 'Luroka-ni açılışda tam ekran rejimində aç',
			'settings.exitFullscreenOnPlayerClose' => 'Oynadıcı bağlandıqda tam ekrandan çıx',
			'settings.exitFullscreenOnPlayerCloseDescription' => 'Video oynadıcını bağlayarkən avtomatik tam ekrandan çıx',
			'settings.autoHidePerformanceOverlay' => 'Məhsuldarlıq paneli avtomatik gizlənsin',
			'settings.autoHidePerformanceOverlayDescription' => 'Məhsuldarlıq panelini oynatıcı idarəetmələri ilə birlikdə gizlət',
			'settings.showNavBarLabels' => 'Naviqasiya paneli yazılarını göstər',
			'settings.showNavBarLabelsDescription' => 'Naviqasiya paneli ikonlarının altında mətni göstər',
			'settings.startupSection' => 'Başlanğıc bölməsi',
			'settings.showExploreTab' => 'Kəşf et nişanını göstər',
			'settings.showExploreTabDescription' => 'Plex Discover və qoşulmuş izləmə xidmətlərindəki məzmunla Kəşf et nişanını göstər',
			'settings.liveTvDefaultFavorites' => 'Canlı TV-də sevimli kanalları defolt et',
			'settings.liveTvDefaultFavoritesDescription' => 'Canlı TV açıldıqda yalnız sevimli kanalları göstər',
			'settings.general' => 'Ümumi',
			'settings.generalDescription' => 'Dil, başlanğıc və pəncərə davranışı',
			'settings.languageAndRegion' => 'Dil və Region',
			'settings.startup' => 'Başlanğıc',
			'settings.display' => 'Ekran',
			_ => null,
		} ?? switch (path) {
			'settings.libraryAndCards' => 'Kitabxana və kartlar',
			'settings.homeScreen' => 'Ana ekran',
			'settings.navigation' => 'Naviqasiya',
			'settings.window' => 'Pəncərə',
			'settings.liveTv' => 'Canlı TV',
			'settings.player' => 'Oynadıcı',
			'settings.videoAndDisplay' => 'Video və Ekran',
			'settings.audio' => 'Səs',
			'settings.quality' => 'Keyfiyyət',
			'settings.subtitles' => 'Altyazılar',
			'settings.seekAndTiming' => 'Sarğı və vaxt tənzimləməsi',
			'settings.behavior' => 'Davranış',
			'settings.gestures' => 'Jestlər',
			'settings.gestureBrightnessSwipe' => 'Parlaqlıq sürüşdürməsi',
			'settings.gestureBrightnessSwipeDescription' => 'Parlaqlığı tənzimləmək üçün sol kənarda yuxarı və ya aşağı sürüşdürün',
			'settings.gestureVolumeSwipe' => 'Səs sürüşdürməsi',
			'settings.gestureVolumeSwipeDescription' => 'Səsi tənzimləmək üçün sağ kənarda yuxarı və ya aşağı sürüşdürün',
			'settings.gesturePinchToZoom' => 'Çimdiklə yaxınlaşdır',
			'settings.gesturePinchToZoomDescription' => 'Yaxınlaşdırmaq və ya uzaqlaşdırmaq üçün videoda çimdik hərəkəti edin',
			'settings.rememberBrightnessLevel' => 'Parlaqlıq səviyyəsini xatırla',
			'settings.rememberBrightnessLevelDescription' => 'Oxutmanı son sürüşdürmə ilə təyin edilmiş parlaqlıqda başlat',
			'settings.controls' => 'İdarəetmələr',
			'settings.rememberPlayerChanges' => 'Pleyer dəyişikliklərini yadda saxla',
			'settings.rememberPlayerChangesDescription' => 'Oxutma zamanı edilən dəyişikliklərin harada saxlanacağı və yenidən tətbiq ediləcəyi',
			'settings.scopePlaybackSpeed' => 'Oxutma sürəti',
			'settings.scopeShaderPreset' => 'Şader ön ayarı',
			'settings.scopeAspectRatio' => 'Tərəf nisbəti',
			'settings.scopeSyncOffsets' => 'Audio və subtitr sinxronizasiyası',
			'settings.playerScopeOff' => 'Saxlama',
			'settings.playerScopeGlobal' => 'Hər yerdə',
			'settings.playerScopeLibrary' => 'Kitabxana üzrə',
			'settings.playerScopeTitle' => 'Serial və ya film üzrə',
			'settings.exportDialogTitle' => 'Luroka tənzimləmələrini ixrac et',
			'settings.velvetHourTheme' => 'Məxmər Saat',
			'themeEditor.builtIn' => 'Daxili',
			'themeEditor.presets' => 'Əvvəlcədən təyinlər',
			'themeEditor.custom' => 'Xüsusi',
			'themeEditor.customEmpty' => 'Hələ yaradılmayıb',
			'themeEditor.editCustom' => 'Fərdi mövzunu redaktə edin',
			'themeEditor.editCustomDescription' => 'Hər rəngi özünüz seçin',
			'themeEditor.locked' => 'Dəstəkçi ilə kilidini açın',
			'themeEditor.savedLocked' => 'Saxlandı - Supporter ilə kiliddən çıxarır',
			'themeEditor.title' => 'Fərdi Mövzu',
			'themeEditor.startFrom' => '-dən başlayın',
			'themeEditor.startFromDescription' => 'Başqa bir mövzudan bütün rəngləri kopyalayın',
			'themeEditor.colors' => 'Rənglər',
			'themeEditor.preview' => 'Önizləmə',
			'themeEditor.slots.bg' => 'Fon',
			'themeEditor.slots.surface' => 'Səthi',
			'themeEditor.slots.outline' => 'Kontur',
			'themeEditor.slots.text' => 'Mətn',
			'themeEditor.slots.textMuted' => 'İkinci dərəcəli mətn',
			'themeEditor.slots.accent' => 'Vurğu',
			'themeEditor.opacity' => 'Qeyri-şəffaflıq',
			'themeEditor.hexHint' => '#RRGGBB və ya #AARRGGBB',
			'themeEditor.fromOtherThemes' => 'Digər mövzulardan',
			'themeEditor.swatchLabel' => ({required Object theme, required Object color}) => '${theme} ${color}',
			'themeEditor.contrast.textOnBg' => 'Fonda mətn',
			'themeEditor.contrast.textOnSurface' => 'Səthdə mətn',
			'themeEditor.contrast.textMutedOnBg' => 'Arxa fonda ikinci dərəcəli mətn',
			'themeEditor.contrast.textMutedOnSurface' => 'Səthdə ikinci dərəcəli mətn',
			'themeEditor.contrast.accentOnBg' => 'Arxa fonda vurğu',
			'themeEditor.contrast.accentOnSurface' => 'Səthdə vurğu',
			'themeEditor.contrast.labelOnAccent' => 'Vurğu üzərində düymə etiketi',
			'themeEditor.lowContrast' => ({required Object pair, required Object ratio, required Object minimum}) => '${pair}: ${ratio}:1, tövsiyə olunan ${minimum}:1-dən aşağı',
			'themeEditor.discardTitle' => 'Dəyişikliklər ləğv edilsin?',
			'themeEditor.discardMessage' => 'Saxlanmamış rəng dəyişiklikləriniz itiriləcək.',
			'themeEditor.discard' => 'Atın',
			'themeEditor.previewCardTitle' => ({required Object number}) => 'Epizod ${number}',
			'themeEditor.previewCardSubtitle' => ({required Object minutes}) => '${minutes} dəq qalıb',
			'themeEditor.previewSwitch' => 'Avtomatik oynatma',
			'themeEditor.previewMutedText' => 'İkinci dərəcəli mətn belə oxunur',
			'seriesBrowser.oneEpisode' => '1 epizod',
			'seriesBrowser.watchedCount' => ({required Object count}) => '${count} baxıldı',
			'seriesBrowser.episodeCount' => ({required Object count}) => '${count} epizodları',
			'seriesBrowser.episodesFor' => ({required Object season}) => '${season} · Epizodlar',
			'seriesBrowser.enterHint' => 'Seçin: açıq mövsüm · ↓: epizodlar',
			'titlePage.genre' => 'Janr',
			'titlePage.remaining' => ({required Object time}) => '${time} qalıb',
			'titlePage.continueEpisode' => ({required Object season, required Object episode}) => 'Davam edin S${season} E${episode}',
			'titlePage.watchlist' => 'İzləmə siyahısı',
			'titlePage.more' => 'Daha çox',
			'tvMenus.appearanceDescription' => 'Mövzu, ekran kənarları və posterlər',
			'lurokaPlayer.title' => 'Oyunçu parametrləri',
			'lurokaPlayer.watch' => 'Bax',
			'lurokaPlayer.watchDescription' => 'Sürəti təyin edin, sakitləşin və növbəti oyuna qərar verin.',
			'lurokaPlayer.picture' => 'Şəkil parametrləri',
			'lurokaPlayer.pictureDescription' => 'Zoom, HDR və video emal',
			'lurokaPlayer.sound' => 'Audio və subtitrlər',
			'lurokaPlayer.audioSettings' => 'Audio parametrləri',
			'lurokaPlayer.soundDescription' => 'Vaxt, səs həcmi və səs çıxışı',
			'lurokaPlayer.chooseTracks' => 'Dilləri və altyazı treklərini seçin',
			'lurokaPlayer.tools' => 'Qabaqcıl',
			'lurokaPlayer.toolsDescription' => 'Oynatma məlumatı və diaqnostika',
			'lurokaPlayer.preferences' => 'Oxutma seçimləri',
			'lurokaPlayer.preferencesDescription' => 'Sizin kinonuz, standartlarınız. Səs və başlıqlarla başlayın, sonra yayımı və ekranınızı dəqiqləşdirin.',
			'lurokaPlayer.streamPreferences' => 'Axın keyfiyyəti',
			'lurokaPlayer.displayPreferences' => 'Ekran',
			'lurokaPlayer.enginePreferences' => 'Təkmil oyunçu seçimləri',
			'lurokaPlayer.seekPreferences' => 'Axtarır',
			'lurokaPlayer.watchPreferences' => 'Avtomatik oynatma və atlama',
			'lurokaPlayer.rememberPreferences' => 'Tercihləri yadda saxla',
			'lurokaSettings.quickSetup' => 'Tez quraşdırma',
			'lurokaSettings.quickSetupDescription' => 'Əsas şeylərdən başlayın: daha hamar TV baxışı, rahat ekran uyğunluğu, Əsas səhifə düzümü və oxutma seçimləri.',
			'lurokaSettings.experience' => 'Sizin təcrübəniz',
			'lurokaSettings.experienceDescription' => 'Luroka özünü doğru hiss etdirin: görünüş, dillər, oxutma, kitabxanalar və ekran vaxtı.',
			'lurokaSettings.remoteHint' => '↑ ↓ Kateqoriyalara göz atın · → / Seçimləri açın · ← Kateqoriyalara qayıdın',
			'playerChrome.browse' => 'Fəsillər və növbə',
			'playerChrome.backToPlayback' => 'Oxumağa qayıt',
			'playerChrome.nowPlaying' => 'İNDİ OYNAYIR',
			'playerChrome.options' => 'OYUNCU SEÇENEKLERİ',
			'tvLayout.screenMargins' => 'TV ekran kənarları',
			'tvLayout.screenMarginsDescription' => 'Televizorunuz şəklin bir hissəsini kəsirsə, proqramın kənarlarını daraltın',
			'tvLayout.screenMarginsDefault' => '0% (defolt)',
			'studios.checkingCopies' => 'Digər kitabxanalar yoxlanılır... İstənilən vaxt məlum nüsxəni seçin.',
			'studios.incompleteCopies' => 'Bəzi kitabxanaları yoxlamaq mümkün olmadı. Məlum nüsxəni seçin və ya ləğv edib yenidən cəhd edin.',
			'studios.partialFavorites' => 'Bəzi sevimliləri yükləmək mümkün olmadı. Yenidən cəhd etmək üçün Yenilə seçin.',
			'studios.copyLookupFailedTitle' => 'Bütün nüsxələri yoxlamaq mümkün olmadı',
			'studios.copyLookupFailedMessage' => 'Bəzi kitabxanalar cavab vermədi. Siz artıq tapılmış nüsxələrdən birini aça və ya ləğv edib yenidən cəhd edə bilərsiniz.',
			'studios.openKnownCopies' => 'Məlum nüsxələri göstərin',
			'studios.browseAll' => 'Hamısına göz atın',
			'studios.titleCount' => ({required Object count}) => '${count} başlıqları',
			'studios.topRated' => 'Ən yüksək reytinq',
			'studios.mostWatched' => 'Kitabxananızda ən çox baxılanlar',
			'studios.collection' => 'STUDİO KOLLEKSİYASI',
			'studios.loadedTitles' => ({required Object count}) => '${count} başlıqları yükləndi',
			'studios.sort' => 'Başlıqları çeşidləyin',
			'studios.sortTitleAscending' => 'Başlıq A-Z',
			'studios.sortTitleDescending' => 'Başlıq Z–A',
			'studios.sortNewest' => 'Ən yeni buraxılış',
			'studios.sortOldest' => 'Ən köhnə buraxılış',
			'studios.sortAdded' => 'Bu yaxınlarda əlavə edildi',
			'studios.sortEpisodeAdded' => 'Bu yaxınlarda əlavə edilmiş epizod',
			'studios.sortRating' => 'Ən yüksək reytinq',
			'studios.title' => 'Studio ilə gözdən keçirin',
			'studios.all' => 'Hamısı',
			'studios.movies' => 'Filmlər',
			'studios.shows' => 'TV şouları',
			'studios.loadMore' => 'Daha çox başlıq yükləyin',
			'studios.empty' => 'Hazırda görünən kitabxanalarınızda uyğun başlıq yoxdur.',
			'studios.retry' => 'Daha çox başlıq yükləmək mümkün olmadı — yenidən cəhd etmək üçün seçin',
			'studios.description' => 'Kitabxanalarınızda bu studiyadan film və şouları araşdırın.',
			'dashboard.previousFeature' => 'Əvvəlki seçilmiş başlıq',
			'dashboard.nextFeature' => 'Növbəti seçilən başlıq',
			'dashboard.cinemaHome' => 'EV',
			'dashboard.episodeFallback' => 'TV epizod',
			'dashboard.timeLeft' => ({required Object minutes}) => '${minutes} dəq qalıb',
			'dashboard.timeLeftHours' => ({required Object hours, required Object minutes}) => '${hours} saat ${minutes} dəq qalıb',
			'dashboard.spoilerHidden' => 'Spoyler seçiminiz tərəfindən gizlədilən epizod təfərrüatları.',
			'dashboard.synopsisUnavailable' => 'Bu başlıq haqqında daha çox görmək üçün Təfərrüatları açın.',
			'dashboard.yourSpace' => 'SİZİN MƏKAN',
			'dashboard.title' => 'Sizin kinonuz.',
			'dashboard.subtitle' => 'Bir hekayəni davam etdirin və ya növbətisini tapın.',
			'dashboard.featured' => 'LUROKA SEÇİMİ',
			'dashboard.jumpBackIn' => 'İzləməyə davam edin',
			'dashboard.episodeLabel' => ({required Object season, required Object episode}) => 'S${season} · E${episode}',
			'dashboard.anotherPick' => 'Başqa bir seçim',
			'dashboard.exploreSeries' => 'Serialları araşdırın',
			'dashboard.showFeatured' => 'Ana səhifədə seçilənlər',
			'dashboard.showFeaturedDescription' => 'Əsas səhifənin yuxarı hissəsində seçilmiş filmləri və şouları göstərin.',
			'lurokaCatalog.aboutPerson' => 'DİQQƏT MƏRKƏZİNDƏ',
			'lurokaCatalog.biographyUnavailable' => 'Bu serverdən tərcümeyi-halı əlçatan deyil.',
			'lurokaCatalog.filmography' => 'Kitabxanalarınızdakı filmlər və şoular',
			'lurokaCatalog.recommended' => 'Tövsiyə olunanlar',
			'lurokaCatalog.browse' => 'Bütün başlıqlar',
			'lurokaCatalog.collections' => 'Kolleksiyalar',
			'lurokaCatalog.browseHint' => 'Kataloqunuzu araşdırın. Filtrlər və çeşidləmə ilə seçimi formalaşdırın.',
			'lurokaCatalog.recommendedHint' => 'Növbəti hekayənizi tapın',
			'lurokaCatalog.details' => 'Hekayənin arxasında',
			'referenceDetails.oneEpisodeLeft' => '1 bölüm qalıb',
			'referenceDetails.playAll' => 'Hamısını oynayın',
			'referenceDetails.present' => 'təqdim',
			'referenceDetails.continuing' => 'Davam edir',
			'referenceDetails.upNext' => 'Növbəti',
			'referenceDetails.episodesLeft' => ({required Object count}) => '${count} epizodları qalıb',
			'lurokaThemes.title' => 'Luroka kinoteatr palitraları',
			'lurokaThemes.coral' => 'Mərcan · gecə yarısı mavi və gün batımı',
			'lurokaThemes.ocean' => 'Okean · dərin mavi və buz',
			'lurokaThemes.jade' => 'Jade · həmişəyaşıl və nanə',
			'lurokaThemes.amethyst' => 'Ametist · gecə yarısı bənövşəyi',
			'lurokaThemes.darkThemes' => 'Qaranlıq kino mövzuları',
			'lurokaThemes.lightThemes' => 'Yüngül kino mövzuları',
			'lurokaThemes.moreThemes' => 'Daha çox mövzu',
			'lurokaThemes.moreThemesDescription' => 'Əlavə palitraları və fərdi rəngləri nəzərdən keçirin',
			'lurokaThemes.obsidian' => 'Obsidian · saf qara və şampan',
			'lurokaThemes.nocturne' => 'Nocturne · kömür və şampan',
			'lurokaThemes.burgundy' => 'Bordo · məxmər şərab və qızılgül',
			'lurokaThemes.slate' => 'Şifer · qrafit və periwinkle',
			'lurokaThemes.espresso' => 'Espresso · kakao və karamel',
			'lurokaThemes.pearl' => 'Mirvari · çini və sapfir',
			'lurokaThemes.linen' => 'Kətan · isti fil sümüyü və terakota',
			'lurokaThemes.sunrise' => 'Günəşin doğuşu · şaftalı və mərcan',
			'lurokaThemes.coastal' => 'Sahil · duman və okean çayı',
			'lurokaThemes.latte' => 'Latte · krem və karamel',
			'lurokaThemes.sage' => 'Adaçayı · yumşaq yaşıl və evkalipt',
			'lurokaThemes.lavender' => 'Lavanda · yasəmən və dərin bənövşəyi',
			'customPerformance.title' => 'Performans və effektlər',
			'customPerformance.fireStickMode' => 'Aşağı güc cihaz rejimi',
			'customPerformance.description' => 'Azaldılmış effektlər, statik fonlar, 720p ilə məhdudlaşdırılmış sənət əsəri və 40 MiB təsvir yaddaşından istifadə edin. Aktiv olduqda, bu, vizual effektləri ləğv edir; onu söndürmək vizual effektlər seçiminizi bərpa edir.',
			'customPerformance.detailsTitle' => 'Performans təfərrüatları',
			'customPerformance.details' => 'Aktiv effektlər, şəkil önbelleği limiti və baxış performansının ölçülməsi',
			'customPerformance.effectsTier' => 'Aktiv effektlər səviyyəsi',
			'customPerformance.imageCache' => 'Şəkil önbelleği limiti',
			'customPerformance.measurement' => 'Baxış ölçmə',
			'customPerformance.measureInstructions' => '20 saniyəlik nümunəyə başlayın, Əsas səhifəyə qayıdın və pultdan istifadə edərək gözdən keçirin. Nəticələri görmək üçün buraya qayıdın. Müqayisə etmək üçün rejimi yandırıb söndürməklə eyni hərəkətləri təkrarlayın. Bu, video dekoder performansını deyil, Flutter UI işini ölçür.',
			'customPerformance.startSample' => '20 saniyəlik nümunəyə başlayın',
			'customPerformance.stopSample' => 'İndi nümunəni tamamlayın',
			'customPerformance.sampling' => 'Nümunə götürmə — Əsas səhifəyə qayıdın və gözdən keçirin. Nəticələr burada saxlanılacaq.',
			'customPerformance.frames' => 'Çərçivə nümunələri',
			'customPerformance.slowFrames' => 'Büdcədən artıq çərçivələr',
			'customPerformance.buildP95' => 'UI qurma vaxtı (95-ci faiz)',
			'customPerformance.rasterP95' => 'Raster vaxtı (95-ci faiz)',
			'customPerformance.frameBudget' => 'Çərçivə başına büdcə',
			'customPerformance.processMemory' => 'Nümunə sonunda proqram proses yaddaşı',
			'customPerformance.noFrames' => 'İşlənmiş kadrlar alınmadı. Başqa bir nümunəyə başlayın və proqramı gözdən keçirin.',
			'homeLayout.manageStudios' => 'Studiyaları seçin və sifariş edin',
			'homeLayout.manageStudiosDescription' => 'Bu profil üçün hansı studiyaların görünəcəyini seçin və onların sırasını təşkil edin.',
			'homeLayout.studioUnavailable' => 'Yalnız seçdiyiniz kitabxanalarda tapılan studiyalar Əsas səhifədə görünür.',
			'homeLayout.showAllStudios' => 'Bütün studiyaları göstərin',
			'homeLayout.hideAllStudios' => 'Bütün studiyaları gizlədin',
			'homeLayout.reorderStudio' => 'Studiya sırasını dəyişdirin',
			'homeLayout.episodeThumbnails' => 'Baxmağa davam et bölməsində epizod şəkilləri',
			'homeLayout.episodeThumbnailsDescription' => 'Baxmağa Davam et və Növbəti addımda serial və ya mövsüm posterləri əvəzinə epizod şəkillərini göstərin.',
			'homeLayout.spotlightSource' => 'Seçilmiş məzmunun mənbəyi',
			'homeLayout.spotlightSourceDescription' => 'Sizin üçün sevimlilər və kitabxana başlıqları ilə birlikdə bu cihazda bu profilin baxış fəaliyyətindən istifadə edir.',
			'homeLayout.spotlightForYou' => 'Sizin üçün',
			'homeLayout.spotlightForYouDescription' => 'Bu cihazda bu profilin baxış fəaliyyətindən istifadə edərək baxdıqlarınız, sevimlilər, yeni əlavələr və tendensiyaların qarışığı.',
			'homeLayout.spotlightTrending' => 'Trend',
			'homeLayout.spotlightTrendingDescription' => 'Kitabxanalarınızdakı populyar filmlər və şoular.',
			'homeLayout.spotlightContinue' => 'Baxmağa Davam Edin',
			'homeLayout.spotlightContinueDescription' => 'Başladığınız başlıqlar və davam edə biləcəyiniz epizodlar.',
			'homeLayout.spotlightFavorites' => 'Sevimlilərinizdən',
			'homeLayout.spotlightInspired' => 'Baxışınızdan ilhamlanıb',
			'homeLayout.spotlightNextUp' => 'Növbəti',
			'homeLayout.title' => 'Evi fərdiləşdirin',
			'homeLayout.description' => 'Bu profil üçün sıra sırasını və görünmə qabiliyyətini seçin. Köçürmək və ya gizlətmək üçün sıra seçin.',
			'homeLayout.rows' => 'Ev sıraları',
			'homeLayout.progressLayout' => 'Baxmağa Davam Et və Sonrası',
			'homeLayout.progressCombined' => 'Bir cərgədə birləşdirilir',
			'homeLayout.progressSeparate' => 'Ayrı-ayrı sıralar',
			'homeLayout.progressDescription' => 'Server tərəfindən dəstəkləndikdə Next Up-ı ayırın. Digər serverlər bir yerdə qalır.',
			'homeLayout.visible' => 'Görünən',
			'homeLayout.hidden' => 'Gizli',
			'homeLayout.showRow' => 'Sıra göstərin',
			'homeLayout.hideRow' => 'Sıra gizlət',
			'homeLayout.moveUp' => 'Yuxarı hərəkət edin',
			'homeLayout.moveDown' => 'Aşağı hərəkət edin',
			'homeLayout.pinnedCollections' => 'Bağlanmış kolleksiyalar',
			'homeLayout.pinInstructions' => 'Kolleksiyanın menyusunu açın və Pin to Əsas səhifə seçin. Qısayolunu silmək üçün burada bərkidilmiş kolleksiya seçin.',
			'homeLayout.pinCollection' => 'Pin Evə',
			'homeLayout.unpinCollection' => 'Evdən çıxarın',
			'homeLayout.reset' => 'Defolt sıraları bərpa edin',
			'homeLayout.resetDescription' => 'Orijinal sıra sırası bərpa edilsin və bu profil üçün bütün sıralar göstərilsin? Bağlanmış kolleksiyalarınız saxlanılacaq.',
			'homeLayout.saveFailed' => 'Ev tərtibatınızı saxlamaq mümkün olmadı. Yenidən cəhd edin.',
			'homeLayout.emptyHint' => 'Sətirlər gizlədilə bilər. Onları yenidən göstərmək üçün Fərdiləşdirin Əsas səhifəni açın.',
			'screenTime.title' => 'Ekran vaxtı',
			'screenTime.description' => 'Bu profildə videoya baxmağa sərf olunan vaxta baxın',
			'screenTime.today' => 'Bu gün',
			'screenTime.thisWeek' => 'Bu Həftə',
			'screenTime.thisMonth' => 'Bu Ay',
			'screenTime.lessThanMinute' => '< 1 dəq',
			'screenTime.minutes' => ({required Object count}) => '${count} dəq',
			'screenTime.hours' => ({required Object count}) => '${count} saat',
			'screenTime.hoursMinutes' => ({required Object hours, required Object minutes}) => '${hours} saat ${minutes} dəq',
			'activityStats.title' => 'Statistikaya baxış',
			'activityStats.period' => 'Dövr',
			'activityStats.last7Days' => '7 gün',
			'activityStats.last30Days' => '30 gün',
			'activityStats.last90Days' => '90 gün',
			'activityStats.thisYear' => 'il',
			'activityStats.allTime' => 'Hamısı',
			'activityStats.heroAllTime' => 'Bütün zamanlar',
			'activityStats.heroDailyAverage' => 'Gündəlik orta',
			'activityStats.consistency' => 'Ardıcıllıq',
			'activityStats.currentStreak' => 'Cari ardıcıllıq',
			'activityStats.dayCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('az'))(n, one: '${n} gün', other: '${n} gün', ), 
			'activityStats.longestStreak' => 'Ən uzun zolaq',
			'activityStats.bestDay' => 'Ən yaxşı gün',
			'activityStats.bestWeek' => 'Ən yaxşı həftə',
			'activityStats.trendTitle' => 'Baxış vaxtı',
			'activityStats.trendToday' => 'Bu gün',
			'activityStats.gapDetail' => ({required Object stat, required Object range}) => '${stat}, ${range} üzərində',
			'activityStats.patternsTitle' => 'Naxışlarınız',
			'activityStats.mostlyKind' => ({required Object kind}) => 'Əsasən ${kind}',
			'activityStats.weekdayTitle' => 'Həftə içi ilə',
			'activityStats.hoursTitle' => 'Günün vaxtı ilə',
			'activityStats.amLabel' => 'AM',
			'activityStats.pmLabel' => 'PM',
			'activityStats.kindsTitle' => 'Kateqoriyaya görə',
			'activityStats.kindMovie' => 'Filmlər',
			'activityStats.kindTv' => 'televizor',
			'activityStats.kindLiveTv' => 'Canlı TV',
			'activityStats.kindMusic' => 'Musiqi',
			'activityStats.kindOther' => 'Digər',
			'activityStats.topTitlesTitle' => 'Ən çox baxılan',
			'activityStats.sessionsTitle' => 'Son sessiyalar',
			'activityStats.recentViewingTitle' => 'Son baxış',
			'activityStats.recentViewingHint' => 'Seçilmiş dövrdə ümumi baxılmış vaxt. Tarixlər ən son baxışı göstərir.',
			'activityStats.showMore' => 'Daha çox göstər',
			'activityStats.sessionNoTitle' => 'Naməlum oxutma',
			'activityStats.emptyTitle' => 'Burada hələ heç nə yoxdur',
			'activityStats.emptyBody' => 'Bir şeyə baxın və statistikanız burada qurulacaq.',
			'activityStats.noDataInPeriod' => 'Bu müddətdə heç bir oxutma qeydə alınmayıb.',
			'search.hint' => 'Kino, serial, musiqi axtar...',
			'search.tryDifferentTerm' => 'Fərqli axtarış sözü cəhd edin',
			'search.searchYourMedia' => 'Mediyanızda axtarın',
			'search.enterTitleActorOrKeyword' => 'Ad, aktyor və ya açar söz daxil edin',
			'search.people' => 'İnsanlar',
			'search.recentSearches' => 'Son axtarışlar',
			'search.clearHistory' => 'Tarixi təmizləyin',
			'hotkeys.setShortcutFor' => ({required Object actionName}) => '${actionName} üçün qısayol təyin et',
			'hotkeys.clearShortcut' => 'Qısayolu təmizlə',
			'hotkeys.noShortcutSet' => 'Qısayol təyin edilməyib',
			'hotkeys.currentShortcut' => 'Cari qısayol:',
			'hotkeys.pressToRecord' => 'Qısayol yazmaq üçün seçin',
			'hotkeys.recordingShortcut' => 'İndi qısayol düymələrinə basın',
			'hotkeys.actions.playPause' => 'Oynat/Fasilə',
			'hotkeys.actions.volumeUp' => 'Səsi artır',
			'hotkeys.actions.volumeDown' => 'Səsi azalt',
			'hotkeys.actions.seekForward' => ({required Object seconds}) => 'İrəli sar (${seconds}san)',
			'hotkeys.actions.seekBackward' => ({required Object seconds}) => 'Geri sar (${seconds}san)',
			'hotkeys.actions.fullscreenToggle' => 'Tam ekranı dəyişdir',
			'hotkeys.actions.muteToggle' => 'Səsi aç/bağla',
			'hotkeys.actions.subtitleToggle' => 'Altyazını aç/bağla',
			'hotkeys.actions.audioTrackNext' => 'Növbəti səs zolağı',
			'hotkeys.actions.subtitleTrackNext' => 'Növbəti altyazı zolağı',
			'hotkeys.actions.chapterNext' => 'Növbəti hissə',
			'hotkeys.actions.chapterPrevious' => 'Əvvəlki hissə',
			'hotkeys.actions.episodeNext' => 'Növbəti seriya',
			'hotkeys.actions.episodePrevious' => 'Əvvəlki seriya',
			'hotkeys.actions.speedIncrease' => 'Sürəti artır',
			'hotkeys.actions.speedDecrease' => 'Sürəti azalt',
			'hotkeys.actions.speedReset' => 'Sürəti sıfırla',
			'hotkeys.actions.zoomIn' => 'Yaxınlaşdır',
			'hotkeys.actions.zoomOut' => 'Uzaqlaşdır',
			'hotkeys.actions.zoomReset' => 'Miqyası sıfırla',
			'hotkeys.actions.subSeekNext' => 'Növbəti altyazıya sar',
			'hotkeys.actions.subSeekPrev' => 'Əvvəlki altyazıya sar',
			'hotkeys.actions.shaderToggle' => 'Şeyderləri aç/bağla',
			'hotkeys.actions.skipMarker' => 'Girişi/Titrləri ötür',
			'hotkeys.actions.screenshot' => 'Ekran şəkli çək',
			'fileInfo.title' => 'Fayl məlumatı',
			'fileInfo.overview' => 'Ümumi baxış',
			'fileInfo.video' => 'Video',
			'fileInfo.audio' => 'Səs',
			'fileInfo.subtitles' => 'Altyazılar',
			'fileInfo.images' => 'Daxili şəkillər',
			'fileInfo.dataStreams' => 'Məlumat axınları',
			'fileInfo.lyrics' => 'Mahnı sözləri',
			'fileInfo.file' => 'Fayl',
			'fileInfo.attachments' => 'Əlavələr',
			'fileInfo.delivery' => 'Çatdırılma',
			'fileInfo.versionCounter' => ({required Object count, required Object index}) => '${count}-dən ${index} versiya',
			'fileInfo.fileCounter' => ({required Object count, required Object index}) => '${count}-dən ${index} fayl',
			'fileInfo.noStreams' => 'Server bu fayl üçün heç bir axın bildirmədi.',
			'fileInfo.copyPath' => 'Yolu kopyala',
			'fileInfo.pathCopied' => 'Fayl yolu kopyalandı',
			'fileInfo.codec' => 'Kodek',
			'fileInfo.codecTag' => 'Kodek teqi',
			'fileInfo.resolution' => 'Ayırdetmə',
			'fileInfo.codedResolution' => 'Kodlanmış rezolyusiya',
			'fileInfo.bitrate' => 'Bit sürəti (Bitrate)',
			'fileInfo.frameRate' => 'Kadr tezliyi',
			'fileInfo.rotation' => 'Dönmə',
			'fileInfo.comment' => 'Şərh',
			'fileInfo.audioDescription' => 'Səs təsviri',
			'fileInfo.headerCompression' => 'Başlıq sıxışdırması',
			'fileInfo.sidecarFile' => 'Sidecar faylı',
			'fileInfo.transportTimestamp' => 'Transport vaxt damğası',
			'fileInfo.displayOffset' => 'Ekran ofseti',
			'fileInfo.previewFailureCode' => 'Önizləmə xəta kodu',
			'fileInfo.previewRetries' => 'Önizləmə cəhdləri',
			'fileInfo.aspectRatio' => 'Tərəf nisbəti',
			'fileInfo.pixelAspectRatio' => 'Piksel aspekt nisbəti',
			'fileInfo.profile' => 'Profil',
			'fileInfo.level' => 'Səviyyə',
			'fileInfo.bitDepth' => 'Bit dərinliyi',
			'fileInfo.pixelFormat' => 'Piksel formatı',
			'fileInfo.colorSpace' => 'Rəng sahəsi',
			'fileInfo.colorRange' => 'Rəng diapazonu',
			'fileInfo.colorPrimaries' => 'Əsas rənglər',
			'fileInfo.colorTransfer' => 'Rəng ötürməsi',
			'fileInfo.chromaSubsampling' => 'Rəng alt-diskretləşdirməsi',
			'fileInfo.chromaLocation' => 'Chroma mövqeyi',
			'fileInfo.scanType' => 'Tarama növü',
			'fileInfo.interlaced' => 'Sətirlərarası',
			'fileInfo.anamorphic' => 'Anamorfik',
			'fileInfo.referenceFrames' => 'İstinad kadrları',
			'fileInfo.dynamicRange' => 'Dinamik diapazon',
			'fileInfo.dolbyVision' => 'Dolby Vision',
			'fileInfo.dolbyVisionLevel' => 'Dolby Vision səviyyəsi',
			'fileInfo.dolbyVisionVersion' => 'Dolby Vision versiyası',
			'fileInfo.dolbyVisionLayers' => 'Dolby Vision təbəqələri',
			'fileInfo.baseLayerCompatibility' => 'Baza təbəqə uyğunluğu',
			'fileInfo.avcBitstream' => 'AVC bit axını',
			'fileInfo.nalLengthSize' => 'NAL uzunluq ölçüsü',
			'fileInfo.scalingMatrix' => 'Xüsusi miqyaslama matrisi',
			'fileInfo.streamIdentifier' => 'Axın identifikatoru',
			'fileInfo.streamIndex' => 'Axın indeksi',
			'fileInfo.streamId' => 'Axın ID-si',
			'fileInfo.language' => 'Dil',
			'fileInfo.languageCode' => 'Dil kodu',
			'fileInfo.streamTitle' => 'Trek başlığı',
			'fileInfo.channels' => 'Kanallar',
			'fileInfo.sampleRate' => 'Diskretləşdirmə tezliyi',
			'fileInfo.spatialAudio' => 'Məkan səsi',
			'fileInfo.textBased' => 'Mətn əsaslı',
			'fileInfo.subtitleFormat' => 'Sidecar formatı',
			'fileInfo.provider' => 'Provayder',
			'fileInfo.matchScore' => 'Uyğunluq balı',
			'fileInfo.externalDelivery' => 'Ayrıca ötürülə bilər',
			'fileInfo.sidecarPath' => 'Sidecar yolu',
			'fileInfo.sourceStream' => 'Kopyalanan mənbə',
			'fileInfo.temporary' => 'Müvəqqəti',
			'fileInfo.timeBase' => 'Vaxt bazası',
			'fileInfo.overallBitrate' => 'Ümumi bit sürəti',
			'fileInfo.path' => 'Yol',
			'fileInfo.fileName' => 'Fayl adı',
			'fileInfo.size' => 'Həcm',
			'fileInfo.totalSize' => 'Ümumi ölçü',
			'fileInfo.container' => 'Konteyner',
			'fileInfo.duration' => 'Müddət',
			'fileInfo.previewThumbnails' => 'Önizləmə miniatürləri',
			'fileInfo.previewIndex' => 'Önizləmə indeksi',
			'fileInfo.packetLength' => 'Paket uzunluğu',
			'fileInfo.filePresent' => 'Fayl mövcuddur',
			'fileInfo.fileReadable' => 'Server tərəfindən oxuna bilir',
			'fileInfo.streamPath' => 'Axın yolu',
			'fileInfo.optimizedForStreaming' => 'Yayım üçün optimallaşdırılıb',
			'fileInfo.has64bitOffsets' => '64-bit ofsetlər',
			'fileInfo.protocol' => 'Protokol',
			'fileInfo.mediaType' => 'Media növü',
			'fileInfo.sourceKind' => 'Mənbə növü',
			'fileInfo.optimizedVersion' => 'Optimallaşdırılmış versiya',
			'fileInfo.optimizationTarget' => 'Optimallaşdırma hədəfi',
			'fileInfo.deletedAt' => 'Silinib',
			'fileInfo.remoteSource' => 'Uzaq mənbə',
			'fileInfo.infiniteStream' => 'Sonsuz axın',
			'fileInfo.directPlay' => 'Birbaşa oynatma',
			'fileInfo.directStream' => 'Birbaşa axın',
			'fileInfo.transcoding' => 'Yenidən kodlaşdırma',
			'fileInfo.etag' => 'ETag',
			'fileInfo.versionId' => 'Versiya ID-si',
			'fileInfo.fileId' => 'Fayl ID-si',
			'fileInfo.defaultAudioTrack' => 'Defolt səs treki',
			'fileInfo.defaultSubtitleTrack' => 'Defolt altyazı treki',
			'fileInfo.subtitlesOff' => 'Söndürülüb',
			'fileInfo.flagDefault' => 'Defolt',
			'fileInfo.flagForced' => 'Məcburi',
			'fileInfo.flagSelected' => 'Seçilib',
			'fileInfo.flagExternal' => 'Xarici',
			'fileInfo.flagHearingImpaired' => 'Eşitmə qüsurlu üçün',
			'fileInfo.flagDub' => 'Dublyaj',
			'fileInfo.flagOriginal' => 'Orijinal',
			'fileInfo.channelsMono' => 'Mono',
			'fileInfo.dolbyVisionProfile' => ({required Object profile}) => 'Profil ${profile}',
			'mediaMenu.markAsWatched' => 'Baxıldı olaraq işarələ',
			'mediaMenu.markAsUnwatched' => 'Baxılmadı olaraq işarələ',
			'mediaMenu.clearProgress' => 'Aydın tərəqqi',
			'mediaMenu.removeFromContinueWatching' => 'İzləməyə davam et-dən sil',
			'mediaMenu.viewDetails' => 'Ətraflı bax',
			'mediaMenu.goToSeries' => 'Seriala keç',
			'mediaMenu.shufflePlay' => 'Qarışıq oynat',
			'mediaMenu.shuffleNotAvailableOffline' => 'Qarışıq oynatma oflayn rejimdə əlçatan deyil',
			'mediaMenu.fileInfo' => 'Fayl məlumatı',
			'mediaMenu.deleteEpisodeFromServer' => 'Seriyanı serverdən sil',
			'mediaMenu.deleteSeasonFromServer' => 'Mövsümü serverdən sil',
			'mediaMenu.deleteShowFromServer' => 'Serialı serverdən sil',
			'mediaMenu.deleteMovieFromServer' => 'Kinonu serverdən sil',
			'mediaMenu.deleteEpisodeTitle' => 'Bu seriya silinsin?',
			'mediaMenu.deleteSeasonTitle' => 'Bu mövsüm silinsin?',
			'mediaMenu.deleteShowTitle' => 'Bu serial silinsin?',
			'mediaMenu.deleteMovieTitle' => 'Bu kino silinsin?',
			'mediaMenu.deleteEpisodeConfirm' => 'Seriyanı sil',
			'mediaMenu.deleteSeasonConfirm' => 'Mövsümü sil',
			'mediaMenu.deleteShowConfirm' => 'Serialı sil',
			'mediaMenu.deleteMovieConfirm' => 'Kinonu sil',
			'mediaMenu.deleteAnyway' => 'Yenə də sil',
			'mediaMenu.confirmDeleteTarget' => ({required Object title}) => '${title} serverinizdən birdəfəlik silinsin?',
			'mediaMenu.deleteMultipleWarning' => 'Bu bütün seriyaları və faylları əhatə edir.',
			'mediaMenu.deleteEpisodeCountWarning' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('az'))(n, one: 'Bu, içindəki ${n} seriyanı və onun faylını siləcək.', other: 'Bu, içindəki ${n} seriyanı və onların fayllarını siləcək.', ), 
			'mediaMenu.deleteMultiPartWarning' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('az'))(n, one: 'Bu element ${n} fayl kimi saxlanılır və o silinəcək.', other: 'Bu element ${n} faylda saxlanılır və hamısı silinəcək.', ), 
			'mediaMenu.deleteSharedFileHeading' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('az'))(n, one: 'Eyni faylda saxlanılan ${n} başqa seriya da silinəcək:', other: 'Eyni faylda saxlanılan ${n} başqa seriya da silinəcək:', ), 
			'mediaMenu.deleteScopeUnverifiedProbeFailed' => 'Luroka bunun hansı faylları siləcəyini yoxlaya bilmədi, ona görə də yuxarıda adı çəkilən elementdən daha çoxunu silə bilər. Ləğv edib təzədən cəhd edin və ya yenə də silin.',
			'mediaMenu.deleteScopeUnverifiedNoFileInfo' => 'Serveriniz bu element üçün fayl təfərrüatlarını təqdim etmədi, ona görə Luroka bunun hansı faylları siləcəyini yoxlaya bilmir. Yuxarıda adı çəkilən elementdən daha çoxunu silə bilər.',
			'mediaMenu.mediaDeletedSuccessfully' => 'Media elementi uğurla silindi',
			'mediaMenu.mediaFailedToDelete' => 'Media elementi silinə bilmədi',
			'mediaMenu.rate' => 'Qiymətləndir',
			'mediaMenu.playFromBeginning' => 'Əvvəldən oynat',
			'mediaMenu.playVersion' => 'Versiyanı oynat...',
			'rateSheet.title' => 'Qiymətləndir',
			'rateSheet.server' => 'Server',
			'rateSheet.favorite' => 'Sevimli',
			'rateSheet.favorited' => 'Sevimlilərə əlavə edildi',
			'rateSheet.saved' => 'Yadda saxlanıldı',
			'rateSheet.notAvailable' => 'Uyğunluq tapılmadı',
			'rateSheet.noConnectedServices' => 'Orada qiymətləndirmək üçün Tənzimləmələrdən xidmət qoşun.',
			'accessibility.mediaCardMovie' => ({required Object title}) => '${title}, kino',
			'accessibility.mediaCardShow' => ({required Object title}) => '${title}, TV şou',
			'accessibility.mediaCardEpisode' => ({required Object title, required Object episodeInfo}) => '${title}, ${episodeInfo}',
			'accessibility.mediaCardSeason' => ({required Object title, required Object seasonInfo}) => '${title}, ${seasonInfo}',
			'accessibility.mediaCardWatched' => 'baxılıb',
			'accessibility.mediaCardPartiallyWatched' => ({required Object percent}) => '%${percent} baxılıb',
			'accessibility.mediaCardUnwatched' => 'baxılmayıb',
			'accessibility.tapToPlay' => 'Oynatmaq üçün toxunun',
			'accessibility.decrease' => 'Azalt',
			'accessibility.increase' => 'Artır',
			'accessibility.decreaseValue' => ({required Object label}) => '${label} dəyərini azalt',
			'accessibility.increaseValue' => ({required Object label}) => '${label} dəyərini artır',
			'accessibility.hue' => 'Rəng çaları',
			'accessibility.saturation' => 'Doyğunluq',
			'accessibility.brightness' => 'Parlaqlıq',
			_ => null,
		} ?? switch (path) {
			'accessibility.hexColor' => 'Hex rəngi',
			'accessibility.expandText' => 'Mətni genişləndir',
			'accessibility.collapseText' => 'Mətni yığ',
			'accessibility.alphabetNavigation' => 'Əlifba naviqasiyası',
			'accessibility.alphabetScrollHint' => 'Hərflərə görə keçmək üçün yuxarı və ya aşağı sürüşdürün',
			'accessibility.rowColumnPosition' => ({required Object row, required Object rowCount, required Object column, required Object columnCount}) => 'Sətir ${row} / ${rowCount}, sütun ${column} / ${columnCount}',
			'accessibility.rowPosition' => ({required Object row, required Object rowCount}) => 'Sətir ${row} / ${rowCount}',
			'accessibility.autoScrollPlay' => 'Avtomatik sürüşdürməni başlat',
			'accessibility.autoScrollPause' => 'Avtomatik sürüşdürməyə fasilə ver',
			'accessibility.hueShort' => 'H',
			'accessibility.saturationShort' => 'S',
			'accessibility.valueShort' => 'V',
			'tooltips.shufflePlay' => 'Qarışıq oynat',
			'tooltips.playTrailer' => 'Treyleri oynat',
			'tooltips.markAsWatched' => 'Baxıldı olaraq işarələ',
			'tooltips.markAsUnwatched' => 'Baxılmadı olaraq işarələ',
			'audioTracks.track' => ({required Object n}) => 'Səs zolağı ${n}',
			'videoControls.audioLabel' => 'Səs',
			'videoControls.subtitlesLabel' => 'Altyazı',
			'videoControls.addTime' => ({required Object amount, required Object unit}) => '+${amount}${unit}',
			'videoControls.letterbox' => 'Geniş ekran (Letterbox)',
			'videoControls.fillScreen' => 'Ekrana doldur',
			'videoControls.stretch' => 'Gərmək',
			'videoControls.lockRotation' => 'Dönməni kilidlə',
			'videoControls.unlockRotation' => 'Dönmə kilidini aç',
			'videoControls.timerActive' => 'Taymer aktivdir',
			'videoControls.playbackWillPauseIn' => ({required Object duration}) => 'Oynatma ${duration} sonra fasilə olunacaq',
			'videoControls.sleepTimerEndOfVideo' => 'Cari videonun sonu',
			'videoControls.sleepTimerStopAtHeader' => 'Dayanma vaxtı',
			'videoControls.sleepTimerDurationHeader' => 'Taymer',
			'videoControls.playbackWillPauseAtEnd' => 'Oynatma bu videonun sonunda fasilə olunacaq',
			'videoControls.stillWatching' => 'Hələ də baxırsınız?',
			'videoControls.pausingIn' => ({required Object seconds}) => '${seconds}san sonra fasilə edilir',
			'videoControls.continueWatching' => 'Davam et',
			'videoControls.autoPlayNext' => 'Növbətini avtomatik oynat',
			'videoControls.playNext' => 'Növbətini oynat',
			'videoControls.playButton' => 'Oynat',
			'videoControls.pauseButton' => 'Fasilə',
			'videoControls.playbackPaused' => 'Fasilədə',
			'videoControls.playbackResumed' => 'Oynadılır',
			'videoControls.loadingVideo' => 'Video yüklənir',
			'videoControls.showPlaybackControls' => 'Oynatma idarəetmələrini göstər',
			'videoControls.hidePlaybackControls' => 'Oynatma idarəetmələrini gizlət',
			'videoControls.seekBackwardButton' => ({required Object seconds}) => '${seconds} saniyə geri sar',
			'videoControls.seekForwardButton' => ({required Object seconds}) => '${seconds} saniyə irəli sar',
			'videoControls.previousButton' => 'Əvvəlki seriya',
			'videoControls.nextButton' => 'Növbəti seriya',
			'videoControls.previousChapterButton' => 'Əvvəlki hissə',
			'videoControls.nextChapterButton' => 'Növbəti hissə',
			'videoControls.muteButton' => 'Səsi söndür',
			'videoControls.unmuteButton' => 'Səsi aç',
			'videoControls.settingsButton' => 'Oynatma tənzimləmələri',
			'videoControls.infoButton' => 'Məlumat',
			'videoControls.tracksButton' => 'Səs və Altyazılar',
			'videoControls.chaptersButton' => 'Hissələr',
			'videoControls.versionQualityButton' => 'Versiya və Keyfiyyət',
			'videoControls.versionColumnHeader' => 'Versiya',
			'videoControls.qualityColumnHeader' => 'Keyfiyyət',
			'videoControls.qualityOriginal' => 'Orijinal',
			'videoControls.qualityPresetLabel' => ({required Object resolution, required Object bitrate}) => '${resolution}p ${bitrate} Mbps',
			'videoControls.transcodeUnavailableFallback' => 'Kod dəyişmə əlçatan deyil — orijinal keyfiyyətdə oynadılır',
			'videoControls.subtitleUnavailableFallback' => 'Seçilmiş altyazı yüklənə bilmədi — altyazısız davam edilir',
			'videoControls.pipButton' => 'Pəncərə daxilində pəncərə rejimi',
			'videoControls.aspectRatioButton' => 'Tərəf nisbəti',
			'videoControls.ambientLighting' => 'Ətraf işıqlandırması',
			'videoControls.fullscreenButton' => 'Tam ekrana keç',
			'videoControls.exitFullscreenButton' => 'Tam ekrandan çıx',
			'videoControls.alwaysOnTopButton' => 'Həmişə üstə',
			'videoControls.rotationLockButton' => 'Dönmə kilidi',
			'videoControls.lockScreen' => 'Ekranı kilidlə',
			'videoControls.screenLockButton' => 'Ekran kilidi',
			'videoControls.longPressToUnlock' => 'Kilidi açmaq üçün uzun basın',
			'videoControls.timelineSlider' => 'Video zaman çubuğu',
			'videoControls.volumeSlider' => 'Səs səviyyəsi',
			'videoControls.endsAt' => ({required Object time}) => 'Bitiş vaxtı: ${time}',
			'videoControls.pipActive' => 'Pəncərə daxilində pəncərə rejimində oynadılır',
			'videoControls.pipFailed' => 'PiP rejimi başladılarkən xəta',
			'videoControls.screenshotSaved' => 'Ekran şəkli yadda saxlanıldı',
			'videoControls.screenshotFailed' => 'Skrinşot çəkmək mümkün olmadı',
			'videoControls.zoomPercent' => ({required Object percent}) => 'Miqyas %${percent}',
			'videoControls.volumePercent' => ({required Object percent}) => 'Səs ${percent}%',
			'videoControls.pipErrors.androidVersion' => 'Android 8.0 və ya daha yenisini tələb edir',
			'videoControls.pipErrors.iosVersion' => 'iOS 15.0 və ya daha yenisini tələb edir',
			'videoControls.pipErrors.permissionDisabled' => 'PiP rejimi söndürülüb. Sistem tənzimləmələrindən aktivləşdirin.',
			'videoControls.pipErrors.notSupported' => 'Cihaz PiP rejimini dəstəkləmir',
			'videoControls.pipErrors.voSwitchFailed' => 'PiP üçün video çıxışı dəyişdirilə bilmədi',
			'videoControls.pipErrors.failed' => 'PiP rejimi başladılarkən xəta',
			'videoControls.pipErrors.prepareFailed' => 'PiP rejimi hazırlana bilmədi',
			'videoControls.pipErrors.unknown' => ({required Object error}) => 'Xəta baş verdi: ${error}',
			'videoControls.chapters' => 'Hissələr',
			'videoControls.noChaptersAvailable' => 'Hissələr əlçatan deyil',
			'videoControls.queue' => 'Növbə',
			'videoControls.noQueueItems' => 'Növbədə element yoxdur',
			'videoControls.noAudioDevicesAvailable' => 'Səs cihazları əlçatan deyil',
			'videoControls.searchSubtitles' => 'Altyazı axtar',
			'videoControls.language' => 'Dil',
			'videoControls.noSubtitlesFound' => 'Altyazı tapılmadı',
			'videoControls.subtitleDownloaded' => 'Altyazı yükləndi',
			'videoControls.subtitleDownloadedNotApplied' => 'Altyazı yükləndi, lakin seçilə bilmədi',
			'videoControls.subtitleDownloadFailed' => 'Altyazı yüklənə bilmədi',
			'videoControls.searchLanguages' => 'Dillərdə axtar...',
			'videoControls.skipIntro' => 'Girişi keç',
			'videoControls.skipCredits' => 'Titrləri keç',
			'videoControls.nextEpisode' => 'Növbəti seriya',
			'videoControls.subtitleTrack' => ({required Object n}) => 'Zolaq ${n}',
			'videoControls.subtitleFile' => ({required Object name}) => 'Altyazı ${name}',
			'videoControls.forcedTrack' => ({required Object label}) => '${label} (Məcburi)',
			'videoControls.osdSubtitlesOff' => 'Altyazı: Söndürülüb',
			'videoControls.osdSubtitles' => ({required Object track}) => 'Altyazı: ${track}',
			'videoControls.osdAudio' => ({required Object track}) => 'Səs: ${track}',
			'messages.markedAsWatched' => 'Baxıldı olaraq işarələndi',
			'messages.markedAsUnwatched' => 'Baxılmadı olaraq işarələndi',
			'messages.markedAsWatchedOffline' => 'Baxıldı olaraq işarələndi (onlayn olduqda eyniləşdiriləcək)',
			'messages.markedAsUnwatchedOffline' => 'Baxılmadı olaraq işarələndi (onlayn olduqda eyniləşdiriləcək)',
			'messages.autoRemovedWatchedDownload' => ({required Object title}) => 'Avtomatik silindi: ${title}',
			'messages.autoRemovedWatchedDownloads' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('az'))(n, one: 'Baxılmış ${n} yükləmə avtomatik silindi', other: 'Baxılmış ${n} yükləmə avtomatik silindi', ), 
			'messages.removedFromContinueWatching' => 'İzləməyə davam et-dən silindi',
			'messages.errorLoading' => ({required Object error}) => 'Xəta: ${error}',
			'messages.searchPartialResults' => 'Bəzi media serverlərində axtarış aparıla bilmədi. Mövcud nəticələr göstərilir.',
			'messages.streamInterrupted' => 'Yayım kəsildi. Yenidən cəhd etmək üçün oynat düyməsinə basın və ya irəli-geri çəkin.',
			'messages.liveStreamInterrupted' => 'Canlı yayım kəsildi. Təzədən cəhd etmək üçün oynat düyməsinə basın.',
			'messages.fileInfoNotAvailable' => 'Fayl məlumatı əlçatan deyil',
			'messages.playbackAuthenticationRequired' => 'Bu elementi oynatmaq üçün media serverinə yenidən daxil olun.',
			'messages.playbackServerUnavailable' => 'Media serveri əlçatan deyil. Sonra təzədən cəhd edin.',
			'messages.playbackDataInvalid' => 'Server yanlış oynatma məlumatı qaytardı.',
			'messages.playbackCancelled' => 'Oynatma ləğv edildi.',
			'messages.playbackFailed' => 'Oynatma başladılarkən xəta.',
			'messages.playbackFailedDetail' => ({required Object error}) => 'Oynatma başladıla bilmədi: ${error}',
			'messages.audioOutputFailed' => 'Səs çıxışı cavab verməyi dayandırdı. TV və ya resiverin səs bağlantısını yoxlayın; başqa tətbiqlərdə də səs yoxdursa, cihazı yenidən başladın.',
			'messages.mediaUnavailable' => 'Bu məzmun artıq əlçatan deyil.',
			'messages.errorLoadingFileInfo' => ({required Object error}) => 'Fayl məlumatı yüklənərkən xəta: ${error}',
			'messages.errorLoadingSeries' => 'Serial yüklənərkən xəta',
			'messages.musicNotSupported' => 'Musiqi oynatması hələ dəstəklənmir',
			'messages.noDescriptionAvailable' => 'Təsvir əlçatan deyil',
			'messages.noProfilesAvailable' => 'Profil yoxdur',
			'messages.contactAdminForProfiles' => 'Profil əlavə etmək üçün server inzibatçınızla əlaqə saxlayın',
			'messages.unableToDetermineLibrarySection' => 'Bu element üçün kitabxana bölməsi müəyyən edilə bilmədi',
			'messages.logsCleared' => 'Jurnallar təmizləndi',
			'messages.logsCopied' => 'Jurnallar buferə kopyalandı',
			'messages.noLogsAvailable' => 'Jurnal yoxdur',
			'messages.libraryScanning' => ({required Object title}) => '"${title}" skan edilir...',
			'messages.libraryScanStarted' => ({required Object title}) => '"${title}" üçün skan başladı',
			'messages.libraryScanFailed' => ({required Object error}) => 'Kitabxana skan edilə bilmədi: ${error}',
			'messages.metadataRefreshing' => ({required Object title}) => '"${title}" üçün meta-məlumatlar yenilənir...',
			'messages.metadataRefreshStarted' => ({required Object title}) => '"${title}" üçün meta-məlumat yenilənməsi başladı',
			'messages.metadataRefreshFailed' => ({required Object error}) => 'Meta-məlumatlar yenilənə bilmədi: ${error}',
			'messages.logoutConfirm' => 'Çıxış etmək istədiyinizdən əminsiniz?',
			'messages.logoutDeviceConfirm' => 'Bu cihazda Luroka hesabından çıxın? Uşaq profilləri, server hesabları və endirilmiş media daxil olmaqla bütün profillər bu cihazdan silinəcək. Daha sonra yenidən daxil ola bilərsiniz.',
			'messages.noSeasonsFound' => 'Mövsüm tapılmadı',
			'messages.seasonsLoadFailed' => 'Mövsümlər yüklənə bilmədi',
			'messages.noEpisodesFound' => 'Birinci mövsümdə seriya tapılmadı',
			'messages.noEpisodesFoundGeneral' => 'Seriya tapılmadı',
			'messages.episodesLoadFailed' => 'Seriyalar yüklənə bilmədi',
			'messages.noResultsFound' => 'Nəticə tapılmadı',
			'messages.sleepTimerSet' => ({required Object label}) => 'Yuxu taymeri ${label} üçün təyin edildi',
			'messages.noItemsAvailable' => 'Element yoxdur',
			'messages.failedToCreatePlayQueueNoItems' => 'Oynatma növbəsi yaradıla bilmədi — element yoxdur',
			'messages.failedPlayback' => ({required Object action, required Object error}) => '${action} uğursuz oldu: ${error}',
			'messages.switchingToCompatiblePlayer' => 'Uyğun oynadıcıya keçilir...',
			'messages.serverLimitTitle' => 'Oynatma uğursuz oldu',
			'messages.serverLimitBody' => 'Server xətası (HTTP 500). Məhdudiyyət bu seansı rədd etdi.',
			'messages.mediaUnreadableTitle' => 'Fayl əlçatan deyil',
			'messages.mediaUnreadableBody' => 'Server bu elementi tapdı, lakin onun faylını oxuya bilmədi (HTTP 404). Fayl yəqin ki, köçürülüb, silinib və ya onun saxlanma yeri oflayndır. Server sahibindən faylı yoxlamasını və kitabxananı yenidən skan etməsini xahiş edin.',
			'messages.serverBusyTitle' => 'Yayım əlçatan deyil',
			'messages.serverBusyBody' => 'Server bu faylı yayımlamaqdan dəfələrlə imtina etdi (HTTP 503). Server yenidən başladılır və ya məşğul ola bilər, yaxud faylın yerləşdiyi yaddaş oflayn ola bilər. Bir az sonra təzədən cəhd edin — problem davam edərsə, server sahibindən serveri və faylın yerləşdiyi yaddaşı yoxlamasını istəyin.',
			'messages.playbackNotAllowedTitle' => 'Oynatmaya icazə verilmir',
			'messages.playbackNotAllowedBody' => 'Server bu elementi yayımlamaqdan imtina etdi (HTTP 403). Hesabınızın onu oynatmaq icazəsi olmaya bilər, yaxud server oynatmaya yalnız öz yerli şəbəkəsində icazə verə bilər.',
			'messages.logsUploaded' => 'Jurnallar yükləndi',
			'messages.logsUploadFailed' => 'Jurnallar yüklənə bilmədi',
			'messages.logId' => 'Jurnal ID-si',
			'messages.burnedSubtitlesUseMenu' => 'Altyazılar bu yayıma həkk edilib. Onları altyazı menyusundan dəyişin.',
			'messages.noVideoUrl' => 'Video URL-i mövcud deyil',
			'messages.playbackNoMediaSources' => 'Server oynadıla bilən media mənbəyi qaytarmadı',
			'messages.playbackDataNotPrepared' => 'Məlumatları hazır olmadan oynatma başladıldı',
			'messages.streamSelectionUnavailable' => 'Bu mənbə üçün yayım seçimi mövcud deyil',
			'messages.streamSelectionFailed' => 'Seçilmiş yayımları tətbiq etmək olmadı',
			'messages.trackSelectionNotRemembered' => 'Bu trek seçimi yalnız cari oynatmaya tətbiq olunur.',
			'messages.serverUnavailableForProfile' => 'Aktiv profil üçün heç bir server mövcud deyil',
			'sourceLibraries.title' => 'Serverləriniz və kitabxanalarınız',
			'sourceLibraries.description' => 'Luroka-nun Ev, axtarış, mövcudluğu kəşf və Studios üçün istifadə etdiyi kitabxanaları seçin. Əsas sıra sırası ayrıca fərdiləşdirilir.',
			'sourceLibraries.partial' => 'Bəzi serverləri yoxlamaq mümkün olmadı. Həmin kitabxanalar üçün saxladığınız seçimləriniz saxlanılır. Yenidən cəhd etmək üçün yeniləyin.',
			'sourceLibraries.loadFailed' => 'Kitabxanalarınızı yükləmək mümkün olmadı. Bağlantını yoxlayın və yenidən cəhd edin.',
			'sourceLibraries.notSelected' => 'Seçdiyiniz kitabxanalarda mövcud deyil.',
			'sourceLibraries.checkOthers' => 'Digər qoşulmuş mənbələri yoxlayın',
			'sourceLibraries.otherSources' => 'Digər əlaqəli mənbələrdə mövcuddur',
			'sourceLibraries.playOnce' => 'Bir dəfə oynayın',
			'sourceLibraries.includeLibrary' => 'Bu kitabxananı daxil edin',
			'sourceLibraries.noOthers' => 'Digər əlaqəli mənbələrdə nüsxə tapılmadı.',
			'sourceLibraries.chooseOne' => 'Davam etmək üçün ən azı bir kitabxana seçin.',
			'subtitlingStyling.text' => 'Mətn',
			'subtitlingStyling.border' => 'Haşiyə',
			'subtitlingStyling.background' => 'Arxa fon',
			'subtitlingStyling.fontSize' => 'Şrift ölçüsü',
			'subtitlingStyling.textColor' => 'Mətn rəngi',
			'subtitlingStyling.borderSize' => 'Haşiyə ölçüsü',
			'subtitlingStyling.borderColor' => 'Haşiyə rəngi',
			'subtitlingStyling.backgroundOpacity' => 'Arxa fon şəffaflığı',
			'subtitlingStyling.backgroundColor' => 'Arxa fon rəngi',
			'subtitlingStyling.position' => 'Mövqe',
			'subtitlingStyling.assOverride' => 'ASS ləğvi',
			'subtitlingStyling.overrideScale' => 'Miqyasla',
			'subtitlingStyling.overrideForce' => 'Məcburi et',
			'subtitlingStyling.overrideStrip' => 'Formatlaşdırmanı sil',
			'subtitlingStyling.positionTop' => 'Yuxarı',
			'subtitlingStyling.positionBottom' => 'Aşağı',
			'subtitlingStyling.useMargins' => 'Kənar boşluqlardan istifadə et',
			'subtitlingStyling.useMarginsDescription' => 'Mətn altyazılarına videodan kənar sahədə icazə ver. Üslublu altyazılar öz orijinal yerləşməsini saxlaya bilər.',
			'subtitlingStyling.anchorToScreen' => 'Ekrana bərkit',
			'subtitlingStyling.anchorToScreenDescription' => 'Mətn altyazılarını geniş ekranlı videonun altındakı qara zolaqlarda göstər',
			'subtitlingStyling.bold' => 'Qalın',
			'subtitlingStyling.italic' => 'Kursiv',
			'subtitlingStyling.renderResolution' => 'Emal imkanı (Resolution)',
			'subtitlingStyling.renderResolutionScreen' => 'Ekran imkanı',
			'subtitlingStyling.renderResolutionVideo' => 'Video imkanı',
			'mpvConfig.title' => 'mpv.conf',
			'mpvConfig.description' => 'Təkmilləşdirilmiş video oynatıcı tənzimləmələri',
			'mpvConfig.presets' => 'Ön ayarlar',
			'mpvConfig.noPresets' => 'Yadda saxlanılmış ön ayar yoxdur',
			'mpvConfig.saveAsPreset' => 'Ön ayar kimi yadda saxla...',
			'mpvConfig.presetName' => 'Ön ayar adı',
			'mpvConfig.presetNameHint' => 'Bu ön ayar üçün ad daxil edin',
			'mpvConfig.loadPreset' => 'Yüklə',
			'mpvConfig.deletePreset' => 'Sil',
			'mpvConfig.presetSaved' => 'Ön ayar yadda saxlanıldı',
			'mpvConfig.presetLoaded' => 'Ön ayar yükləndi',
			'mpvConfig.presetDeleted' => 'Ön ayar silindi',
			'mpvConfig.confirmDeletePreset' => 'Bu ön ayarı silmək istədiyinizə əminsiniz?',
			'mpvConfig.configPlaceholder' => 'gpu-api=vulkan\nhwdec=auto\n# şərh',
			'mpvConfig.lineHint' => 'option=value',
			'mpvConfig.addLine' => 'Sətir əlavə et',
			'mpvConfig.removeLine' => 'Sətiri sil',
			'mpvConfig.embeddedVoHint' => 'vo, gpu-context və gpu-api Linux-da nəzərə alınmır: daxili video həmişə video müstəvisində vo=libmpv vasitəsilə göstərilir və gpu-next (ArtCNN kimi hesablama şeyderlərinə lazımdır) daxili işləyə bilməz.',
			'dialog.confirmAction' => 'Əməliyyatı təsdiqlə',
			'profiles.manageProfiles' => 'Profilləri idarə edin',
			'profiles.quickAccess' => 'Sürətli giriş',
			'profiles.signOutDevice' => 'Bu cihazdan çıxın',
			'profiles.addLurokaProfile' => 'Luroka profilini əlavə edin',
			'profiles.switchingProfile' => 'Profil dəyişdirilir…',
			'profiles.deleteThisProfileTitle' => 'Bu profil silinsin?',
			'profiles.deleteThisProfileMessage' => ({required Object displayName}) => '${displayName} silinəcək. Qoşulmalar təsirlənmir.',
			'profiles.active' => 'Aktiv',
			'profiles.manage' => 'İdarə et',
			'profiles.delete' => 'Sil',
			'profiles.signOut' => 'Çıxış et',
			'profiles.signOutPlexTitle' => 'Plex-dən çıxılsın?',
			'profiles.signOutPlexMessage' => ({required Object displayName}) => '${displayName} və bütün Plex Home istifadəçiləri silinsin? İstənilən vaxt yenidən daxil ola bilərsiniz.',
			'profiles.signOutPlexDeleteDownloads' => 'Yükləmələri də silin',
			'profiles.signOutPlexDeleteDownloadsDescription' => 'Əks halda, onlar bu cihazda qalır və siz bu hesaba yenidən daxil olduğunuz zaman geri qayıdırlar.',
			'profiles.signedOutPlex' => 'Plex-dən çıxıldı.',
			'profiles.signOutFailed' => 'Çıxış uğursuz oldu.',
			'profiles.sectionTitle' => 'Profillər',
			'profiles.summarySingle' => 'İdarə olunan istifadəçiləri və yerli kimlikləri qarışdırmaq üçün profillər əlavə edin',
			'profiles.summaryMultipleWithActive' => ({required Object count, required Object activeName}) => '${count} profil · aktiv: ${activeName}',
			'profiles.summaryMultiple' => ({required Object count}) => '${count} profil',
			'profiles.removeConnectionTitle' => 'Qoşulma silinsin?',
			'profiles.removeConnectionMessage' => ({required Object displayName, required Object connectionLabel}) => '${displayName} istifadəçisinin ${connectionLabel} giriş hüququ silinəcək. Digər profillərdə qalacaq.',
			'profiles.deleteProfileTitle' => 'Profil silinsin?',
			'profiles.deleteProfileMessage' => ({required Object displayName}) => '${displayName} və onun qoşulmaları silinəcək. Serverlər əlçatan qalır.',
			'profiles.profileNameLabel' => 'Profil adı',
			'profiles.pinProtectionLabel' => 'PIN mühafizəsi',
			'profiles.pinManagedByPlex' => 'PIN Plex tərəfindən idarə olunur. plex.tv-də düzəliş edin.',
			'profiles.noPinSetEditOnPlex' => 'PIN təyin edilməyib. Tələb etmək üçün plex.tv-də düzəliş edin.',
			'profiles.setPin' => 'PIN təyin et',
			'profiles.setPinTitle' => 'PIN təyin et',
			'profiles.confirmPinTitle' => 'PIN-i təsdiqlə',
			'profiles.pinSet' => 'PIN təyin edildi',
			'profiles.changePin' => 'Dəyişdir',
			'profiles.removePin' => 'Sil',
			'profiles.connectionsLabel' => 'Qoşulmalar',
			'profiles.add' => 'Əlavə et',
			'profiles.deleteProfileButton' => 'Profili sil',
			'profiles.noConnectionsHint' => 'Qoşulma yoxdur — bu profili istifadə etmək üçün birini əlavə edin.',
			'profiles.noConnections' => 'Qoşulma yoxdur',
			'profiles.plexHomeAccount' => 'Plex Ev hesabı',
			'profiles.plexAccountChip' => ({required Object account}) => 'Plex hesabı: ${account}',
			'profiles.plexAccountUserChip' => ({required Object account, required Object user}) => '${account} hesabı vasitəsilə ${user}',
			'profiles.connectionDefault' => 'Defolt',
			'profiles.connectionAs' => ({required Object displayName}) => '${displayName} olaraq',
			'profiles.makeDefault' => 'Defolt et',
			'profiles.removeConnection' => 'Sil',
			'profiles.profileRenamed' => 'Profil adı dəyişdirildi.',
			'profiles.borrowAddTo' => ({required Object displayName}) => '${displayName} profilinə əlavə et',
			'profiles.borrowExplain' => 'Başqa profilin qoşulmasını istifadə edin. PIN ilə qorunan profillər PIN tələb edir.',
			'profiles.borrowEmpty' => 'Hələ istifadə ediləcək bir şey yoxdur.',
			'profiles.borrowEmptySubtitle' => 'Əvvəlcə başqa bir profile Plex, Jellyfin və ya Emby qoşun.',
			'profiles.borrowLoadFailed' => 'Əlçatan qoşulmalar yüklənə bilmədi. Təzədən cəhd edin.',
			'profiles.borrowFromProfile' => ({required Object displayName}) => '${displayName} profilindən',
			'profiles.borrowConnectionBorrowed' => 'Qoşulma istifadə edildi.',
			'profiles.borrowFailed' => 'Qoşulma istifadə edilə bilmədi.',
			'profiles.incorrectPin' => 'Səhv PIN.',
			'profiles.incorrectPinTryAgain' => 'Səhv PIN. Lütfən təzədən cəhd edin.',
			'profiles.sourceProfileMissingParentAccount' => 'Mənbə profilin əsas hesabı yoxdur.',
			'profiles.failedToLoadHomeUsers' => 'Plex Home istifadəçiləriniz yüklənə bilmədi. Bağlantınızı yoxlayın və yenidən cəhd edin.',
			'profiles.failedToVerifyPin' => 'PIN təsdiqlənə bilmədi.',
			'profiles.newProfile' => 'Yeni profil',
			'profiles.profileNameHint' => 'məs. Qonaqlar, Uşaqlar, Qonaq otağı',
			'profiles.pinProtectionOptional' => 'PIN mühafizəsi (istəyə bağlı)',
			'profiles.pinExplain' => 'Profillər arası keçid üçün 4 rəqəmli PIN tələb olunur.',
			'profiles.continueButton' => 'Davam et',
			'profiles.pinsDontMatch' => 'PIN-lər uyğun gəlmir',
			'profiles.tokenIdentityMismatch' => 'Plex profil tokeni gözlənilməyən serveri müəyyən etdi',
			'connections.sectionTitle' => 'Qoşulmalar',
			'connections.addConnection' => 'Qoşulma əlavə et',
			'connections.addConnectionSubtitleNoProfile' => 'Plex ilə daxil olun və ya Jellyfin yaxud Emby serverinə qoşulun',
			'connections.addConnectionSubtitleScoped' => ({required Object displayName}) => '${displayName} profilinə əlavə et: Plex, Jellyfin, Emby və ya başqa profil qoşulması',
			'connections.sessionExpiredOne' => ({required Object name}) => '${name} üçün seansın vaxtı bitdi',
			'connections.sessionExpiredMany' => ({required Object count}) => '${count} server üçün seansın vaxtı bitdi',
			'connections.accessDeniedOne' => ({required Object name}) => '${name} bu hesaba girişi rədd etdi',
			'connections.accessDeniedMany' => ({required Object count}) => '${count} server bu hesaba girişi rədd etdi',
			'connections.signInAgain' => 'Yenidən daxil ol',
			'connections.editMediaBrowserTitle' => ({required Object product}) => '${product} qoşulmasını düzəliş et',
			'connections.editMediaBrowserIntro' => ({required Object serverName}) => '${serverName} üçün URL-lər əlavə edin və ya silin. Luroka əlçatan olan ən aşağı gecikməli URL-i istifadə edəcək.',
			'serversAccounts.title' => 'Serverlər və hesablar',
			'serversAccounts.subtitle' => 'Plex, Jellyfin və Emby serverləriniz üçün giriş statusu',
			'serversAccounts.online' => 'Onlayn',
			'serversAccounts.offline' => 'Oflayn',
			'serversAccounts.unknown' => 'Bura daxil deyil',
			'serversAccounts.usedByNone' => 'Heç bir profil tərəfindən istifadə olunmur',
			'serversAccounts.usedByOne' => ({required Object name}) => '${name} tərəfindən istifadə olunur',
			'serversAccounts.usedByMany' => ({required Object name, required Object count}) => '${name} və daha çox ${count} tərəfindən istifadə olunur',
			'serversAccounts.serversOnline' => ({required Object online, required Object total}) => '${online} of ${total} serverləri onlayn',
			'serversAccounts.noServers' => 'Hələ heç nə qoşulmayıb. Plex hesabınızı və ya Jellyfin və ya Emby serverinizi əlavə edin.',
			'serversAccounts.editUrls' => 'Server URL-lərini redaktə edin',
			'accountPreferences.sectionTitle' => 'Hesab tərcihləri',
			'accountPreferences.hubSubtitleSingle' => ({required Object account}) => '${account} hesabında saxlanılan səs, altyazı və kitabxana seçimləri',
			'accountPreferences.hubSubtitleMultiple' => ({required Object count}) => '${count} hesabda saxlanılan səs, altyazı və kitabxana seçimləri',
			'accountPreferences.pickAccount' => 'Hər hesab öz tərcihlərini saxlayır. Düzəliş etmək üçün birini seçin.',
			'accountPreferences.storedOnAccount' => 'Bu seçimlər server hesabında saxlanılır və digər cihazlar da daxil olmaqla, həmin hesabdan istifadə edən hər bir Luroka profili və tətbiqi tərəfindən paylaşılır.',
			'accountPreferences.noAccounts' => 'Konfiqurasiya ediləcək hesab yoxdur',
			'accountPreferences.noAccountsHint' => 'Plex-ə daxil olun və ya Jellyfin və ya Emby serverinə qoşulun; o hesabda saxlanılan tərcihlər burada görünəcək.',
			'accountPreferences.unavailable' => 'Bu hesaba çatmaq olmur',
			'accountPreferences.loadFailed' => 'Bu tərcihlər yüklənə bilmədi',
			'accountPreferences.noPreference' => 'Tərcih yoxdur',
			'accountPreferences.notSet' => 'Təyin edilməyib',
			'accountPreferences.groups.audioAndSubtitles' => 'Səs və altyazılar',
			'accountPreferences.groups.libraryDisplay' => 'Kitabxana',
			'accountPreferences.groups.personalMedia' => 'Şəxsi media',
			'accountPreferences.preferredAudioLanguage' => 'Üstünlük verilən səs dili',
			'accountPreferences.autoSelectAudio' => 'Səsi dilə görə seç',
			'accountPreferences.autoSelectAudioDescription' => 'Söndürüldükdə faylın defolt olaraq işarələdiyi səs treki istifadə olunur.',
			'accountPreferences.preferredSubtitleLanguage' => 'Üstünlük verilən altyazı dili',
			'accountPreferences.subtitleMode' => 'Altyazıları aç',
			'accountPreferences.subtitleModes.none' => 'Əl ilə seçilmiş',
			'accountPreferences.subtitleModes.noneDescription' => 'Altyazıları heç vaxt özbaşına açma.',
			'accountPreferences.subtitleModes.defaultMode' => 'Trek bayraqlarına əməl et',
			'accountPreferences.subtitleModes.defaultModeDescription' => 'Hər altyazı trekində saxlanılan defolt və məcburi bayraqları istifadə et.',
			'accountPreferences.subtitleModes.always' => 'Həmişə aktivdir',
			'accountPreferences.subtitleModes.alwaysDescription' => 'Üstünlük verilən dildə altyazı treki mövcuddursa, onu aç.',
			'accountPreferences.subtitleModes.onlyForced' => 'Yalnız məcburi altyazılar',
			'accountPreferences.subtitleModes.onlyForcedDescription' => 'Yalnız məcburi işarələnmiş trekləri yüklə.',
			'accountPreferences.subtitleModes.smart' => 'Xarici səs olduqda göstərilən',
			'accountPreferences.subtitleModes.smartDescription' => 'Altyazıları yalnız səs başqa dildə olduqda aç.',
			'accountPreferences.subtitleAccessibility' => 'SDH altyazıları',
			'accountPreferences.subtitleAccessibilityOptions.preferNonSdh' => 'SDH olmayan altyazılara üstünlük ver',
			'accountPreferences.subtitleAccessibilityOptions.preferSdh' => 'SDH altyazılarına üstünlük ver',
			'accountPreferences.subtitleAccessibilityOptions.onlySdh' => 'Yalnız SDH altyazıları',
			'accountPreferences.subtitleAccessibilityOptions.onlyNonSdh' => 'Yalnız SDH olmayan altyazılar',
			'accountPreferences.forcedSubtitles' => 'Məcburi altyazılar',
			'accountPreferences.forcedSubtitleOptions.preferNonForced' => 'Məcburi olmayan altyazılara üstünlük ver',
			'accountPreferences.forcedSubtitleOptions.preferForced' => 'Məcburi altyazılara üstünlük ver',
			'accountPreferences.forcedSubtitleOptions.onlyForced' => 'Yalnız məcburi altyazılar',
			'accountPreferences.forcedSubtitleOptions.onlyNonForced' => 'Yalnız məcburi olmayan altyazılar',
			'accountPreferences.displayMissingEpisodes' => 'Çatışmayan seriyaları göstər',
			'accountPreferences.displayMissingEpisodesDescription' => 'Serverin bildiyi, lakin faylı olmayan seriyaları siyahıya al.',
			'accountPreferences.hidePlayedInLatest' => 'Baxılmış elementləri Son əlavə olunanlarda gizlət',
			'accountPreferences.hidePlayedInLatestDescription' => 'Artıq baxdığınız elementləri serverin Son əlavə olunanlar sətirlərində göstərmə.',
			'accountPreferences.displayCollectionsView' => 'Kolleksiyalar görünüşünü göstər',
			'accountPreferences.displayCollectionsViewDescription' => 'Kitabxanalarınızla yanaşı serverin Kolleksiyalar görünüşünü də təklif et.',
			'accountPreferences.rewatchingInNextUp' => 'Təkrar baxılan serialları Sırada saxla',
			'accountPreferences.rewatchingInNextUpDescription' => 'Bir serialı bitirdikdən sonra yenidən başlasanız, Sırada serialı atmaq əvəzinə təkrar baxışı izləyir.',
			'accountPreferences.watchedIndicator' => 'Baxıldı göstəriciləri',
			'accountPreferences.watchedIndicatorOptions.none' => 'Heç vaxt',
			'accountPreferences.watchedIndicatorOptions.moviesAndShows' => 'Kinolar və TV şoular',
			'accountPreferences.watchedIndicatorOptions.movies' => 'Yalnız kinolar',
			'accountPreferences.watchedIndicatorOptions.shows' => 'Yalnız TV şoular',
			'accountPreferences.mediaReviewsVisibility' => 'Reytinq və rəylər',
			'accountPreferences.mediaReviewsOptions.usersAndCritics' => 'İstifadəçilər və tənqidçilər',
			'accountPreferences.mediaReviewsOptions.usersOnly' => 'Yalnız istifadəçilər',
			'accountPreferences.mediaReviewsOptions.criticsOnly' => 'Yalnız tənqidçilər',
			'accountPreferences.mediaReviewsOptions.nobody' => 'Gizlədilib',
			'discover.title' => 'Kəşf et',
			'discover.noContentAvailable' => 'Məzmun əlçatan deyil',
			'discover.addMediaToLibraries' => 'Kitabxanalarınıza bir az media əlavə edin',
			'discover.continueWatching' => 'İzləməyə davam et',
			'discover.continueWatchingIn' => ({required Object library}) => '${library} daxilində İzləməyə davam et',
			'discover.nextUp' => 'Sırada',
			'discover.nextUpIn' => ({required Object library}) => '${library} daxilində Sırada',
			'discover.recentlyAdded' => 'Son əlavə olunanlar',
			'discover.recentlyAddedIn' => ({required Object library}) => '${library} daxilində Son əlavə olunanlar',
			'discover.latestAlbumsIn' => ({required Object library}) => '${library} daxilində Son albomlar',
			'discover.recentlyPlayedIn' => ({required Object library}) => '${library} daxilində Son oynadılanlar',
			'discover.mostPlayedIn' => ({required Object library}) => '${library} daxilində Ən çox oynadılanlar',
			'discover.playEpisode' => ({required Object season, required Object episode}) => 'M${season}S${episode}',
			'discover.overview' => 'İcmal',
			'discover.cast' => 'Aktyorlar',
			'discover.extras' => 'Treylerlər və Əlavələr',
			'discover.studio' => 'Studiya',
			'discover.rating' => 'Reytinq',
			'discover.director' => 'Rejissor',
			'discover.directors' => 'Rejissorlar',
			'discover.movie' => 'Kino',
			'discover.tvShow' => 'TV Şou',
			'discover.minutesLeft' => ({required Object minutes}) => '${minutes} dəq qaldı',
			'discover.moreLikeThis' => 'Buna bənzərlər',
			'discover.titleCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('az'))(n, one: '${n} başlıq', other: '${n} başlıq', ), 
			'discover.person.born' => 'anadan olub',
			'discover.person.died' => 'öldü',
			'discover.person.birthplace' => 'Doğulduğu yer',
			'discover.person.dateWithAge' => ({required Object date, required Object age}) => '${date} (yaş ${age})',
			'discover.person.dateWithAgeAtDeath' => ({required Object date, required Object age}) => '${date} (yaşlı ${age})',
			'errors.searchFailed' => ({required Object error}) => 'Axtarış uğursuz oldu: ${error}',
			'errors.searchUnavailable' => 'Axtarış heç bir media serverinə çata bilmədi.',
			'errors.connectionTimeout' => ({required Object context}) => '${context} yüklənərkən vaxt bitdi',
			'errors.connectionFailed' => 'Media serverinə qoşulmaq olmur',
			'errors.unableToLoad' => ({required Object context}) => '${context} yüklənə bilmədi. Lütfən təzədən cəhd edin.',
			'errors.noClientAvailable' => 'Əlçatan klient yoxdur',
			'errors.pleaseEnterToken' => 'Lütfən token daxil edin',
			'errors.invalidToken' => 'Yanlış token',
			'errors.failedToVerifyToken' => ({required Object error}) => 'Token təsdiqlənə bilmədi: ${error}',
			'errors.failedToSwitchProfile' => ({required Object displayName}) => '${displayName} profilinə keçilə bilmədi',
			'errors.failedToDeleteProfile' => ({required Object displayName}) => '${displayName} profili silinə bilmədi',
			'errors.failedToRate' => 'Reytinq yenilənə bilmədi',
			'errors.reasonTimedOut' => 'bağlantının vaxtı bitdi',
			'errors.reasonUnreachable' => 'serverə çatmaq mümkün olmadı',
			'errors.reasonRefused' => 'server sorğunu rədd etdi',
			'errors.reasonNotFound' => 'element artıq serverdə yoxdur',
			'errors.reasonServerError' => 'server xəta bildirdi',
			'errors.reasonCancelled' => 'sorğu ləğv edildi',
			'errors.reasonUnexpected' => 'gözlənilməz xəta baş verdi',
			'libraries.title' => 'Kitabxanalar',
			'libraries.fallbackTitle' => 'Kitabxana',
			'libraries.scanLibraryFiles' => 'Kitabxana fayllarını skan et',
			'libraries.scanLibrary' => 'Kitabxananı skan et',
			'libraries.analyze' => 'Analiz et',
			'libraries.analyzeLibrary' => 'Kitabxananı analiz et',
			'libraries.refreshMetadata' => 'Meta-məlumatları yenilə',
			'libraries.emptyTrash' => 'Zibil qutusunu təmizlə',
			'libraries.emptyingTrash' => ({required Object title}) => '"${title}" üçün zibil qutusu təmizlənir...',
			'libraries.trashEmptied' => ({required Object title}) => '"${title}" üçün zibil qutusu təmizləndi',
			'libraries.failedToEmptyTrash' => ({required Object error}) => 'Zibil qutusu təmizlənə bilmədi: ${error}',
			'libraries.analyzing' => ({required Object title}) => '"${title}" analiz edilir...',
			'libraries.analysisStarted' => ({required Object title}) => '"${title}" üçün analiz başladı',
			'libraries.failedToAnalyze' => ({required Object error}) => 'Kitabxana analiz edilə bilmədi: ${error}',
			'libraries.noLibrariesFound' => 'Kitabxana tapılmadı',
			'libraries.allLibrariesHidden' => 'Bütün kitabxanalar gizlədilib',
			'libraries.hiddenLibrariesCount' => ({required Object count}) => 'Gizli kitabxanalar (${count})',
			'libraries.thisLibraryIsEmpty' => 'Bu kitabxana boşdur',
			'libraries.noItemsMatchFilters' => 'Filtrlərə uyğun element tapılmadı',
			'libraries.resetFilters' => 'Filtrləri sıfırla',
			'libraries.all' => 'Hamısı',
			'libraries.clearAll' => 'Hamısını təmizlə',
			'libraries.scanLibraryConfirm' => ({required Object title}) => '"${title}" kitabxanasını skan etmək istədiyinizdən əminsiniz?',
			'libraries.analyzeLibraryConfirm' => ({required Object title}) => '"${title}" kitabxanasını analiz etmək istədiyinizdən əminsiniz?',
			'libraries.refreshMetadataConfirm' => ({required Object title}) => '"${title}" üçün meta-məlumatları yeniləmək istədiyinizdən əminsiniz?',
			'libraries.emptyTrashConfirm' => ({required Object title}) => '"${title}" üçün zibil qutusunu təmizləmək istədiyinizdən əminsiniz?',
			'libraries.manageLibraries' => 'Kitabxanaları idarə et',
			'libraries.sort' => 'Sırala',
			'libraries.sortBy' => 'Sıralama meyarı',
			'libraries.filters' => 'Filtrlər',
			'libraries.confirmActionMessage' => 'Bu əməliyyatı yerinə yetirmək istədiyinizdən əminsiniz?',
			'libraries.showLibrary' => 'Kitabxananı göstər',
			'libraries.hideLibrary' => 'Kitabxananı gizlət',
			'libraries.libraryOptions' => 'Kitabxana seçimləri',
			'libraries.content' => 'kitabxana məzmunu',
			'libraries.selectLibrary' => 'Kitabxana seç',
			'libraries.filtersWithCount' => ({required Object count}) => 'Filtrlər (${count})',
			'libraries.noRecommendations' => 'Tövsiyə yoxdur',
			'libraries.noCollections' => 'Bu kitabxanada kolleksiya yoxdur',
			'libraries.noFoldersFound' => 'Qovluq tapılmadı',
			'libraries.folders' => 'qovluqlar',
			'libraries.tabs.recommended' => 'Tövsiyə olunanlar',
			'libraries.tabs.browse' => 'Baxış',
			'libraries.tabs.collections' => 'Kolleksiyalar',
			'libraries.tabs.playlists' => 'Oynatma siyahıları',
			'libraries.groupings.title' => 'Qruplaşdırma',
			'libraries.groupings.all' => 'Hamısı',
			'libraries.groupings.movies' => 'Kinolar',
			'libraries.groupings.shows' => 'TV Şoular',
			'libraries.groupings.seasons' => 'Mövsümlər',
			'libraries.groupings.episodes' => 'Seriyalar',
			'libraries.groupings.artists' => 'Müğənnilər/Müəlliflər',
			'libraries.groupings.albums' => 'Albomlar',
			'libraries.groupings.tracks' => 'Mahnılar',
			'libraries.groupings.folders' => 'Qovluqlar',
			'libraries.filterCategories.genre' => 'Janr',
			'libraries.filterCategories.year' => 'İl',
			'libraries.filterCategories.contentRating' => 'Məzmun reytinqi',
			'libraries.filterCategories.tag' => 'Teq',
			'libraries.filterCategories.unwatched' => 'Baxılmayıb',
			'libraries.filterCategories.unplayed' => 'Oynadılmayıb',
			'libraries.filterCategories.favorites' => 'Sevimlilər',
			'libraries.filterCategories.filePath' => 'Fayl yolu',
			'libraries.sortLabels.title' => 'Ad',
			'libraries.sortLabels.dateAdded' => 'Əlavə olunma tarixi',
			'libraries.sortLabels.releaseDate' => 'Buraxılış tarixi',
			'libraries.sortLabels.rating' => 'Reytinq',
			'libraries.sortLabels.communityRating' => 'İcma reytinqi',
			'libraries.sortLabels.criticRating' => 'Tənqidçi reytinqi',
			'libraries.sortLabels.userRating' => 'İstifadəçi reytinqi',
			'libraries.sortLabels.datePlayed' => 'Oynadılma tarixi',
			'libraries.sortLabels.playCount' => 'Oynadılma sayı',
			'libraries.sortLabels.productionYear' => 'İstehsal ili',
			'libraries.sortLabels.runtime' => 'Müddət',
			'libraries.sortLabels.officialRating' => 'Rəsmi reytinq',
			'libraries.sortLabels.premiereDate' => 'Premyera tarixi',
			'libraries.sortLabels.startDate' => 'Başlanğıc tarixi',
			'libraries.sortLabels.airTime' => 'Yayımlanma vaxtı',
			'libraries.sortLabels.studio' => 'Studiya',
			'libraries.sortLabels.random' => 'Təsadüfi',
			'libraries.sortLabels.dateShared' => 'Paylaşılma tarixi',
			'libraries.sortLabels.latestEpisodeAirDate' => 'Son seriya yayın tarixi',
			'libraries.sortLabels.lastEpisodeDateAdded' => 'Əlavə olunan son seriya tarixi',
			_ => null,
		} ?? switch (path) {
			'libraries.sortLabels.dateDownloaded' => 'Yüklənmə tarixi',
			'libraries.sortLabels.size' => 'Həcm',
			'libraries.sortLabels.library' => 'Kitabxana',
			'libraries.advancedFilters.include' => 'Daxil et',
			'libraries.advancedFilters.exclude' => 'İstisna etmək',
			'libraries.advancedFilters.any' => 'İstənilən',
			'libraries.advancedFilters.yes' => 'Bəli',
			'libraries.advancedFilters.no' => 'yox',
			'libraries.advancedFilters.not' => ({required Object value}) => '${value} deyil',
			'libraries.advancedFilters.valueCount' => ({required Object count}) => '${count} seçildi',
			'libraries.advancedFilters.valueCountExcluded' => ({required Object count}) => '${count} xaric edilib',
			'libraries.advancedFilters.searchValues' => 'Axtarış dəyərləri',
			'libraries.advancedFilters.noValues' => 'Dəyər yoxdur',
			'libraries.advancedFilters.matchContains' => 'ehtiva edir',
			'libraries.advancedFilters.matchNotContains' => 'Tərkibində yoxdur',
			'libraries.advancedFilters.matchIs' => 'edir',
			'libraries.advancedFilters.matchIsNot' => 'deyil',
			'libraries.advancedFilters.matchBeginsWith' => 'ilə başlayır',
			'libraries.advancedFilters.matchEndsWith' => 'ilə bitir',
			'libraries.advancedFilters.textHint' => 'Uyğunlaşmaq üçün yazın',
			'libraries.advancedFilters.from' => 'From',
			'libraries.advancedFilters.to' => 'Kimə',
			'libraries.advancedFilters.range' => ({required Object from, required Object to}) => '${from} - ${to}',
			'libraries.advancedFilters.atLeast' => ({required Object value}) => '${value} və yuxarı',
			'libraries.advancedFilters.atMost' => ({required Object value}) => '${value} qədər',
			'libraries.advancedFilters.dateLastDays' => ({required Object count}) => 'Son ${count} gün',
			'libraries.advancedFilters.dateLastYear' => 'Keçən il',
			'libraries.advancedFilters.dateOlderThanDays' => ({required Object count}) => '${count} gündən köhnə',
			'libraries.advancedFilters.dateOlderThanYear' => 'Bir ildən yuxarı',
			'about.title' => 'Haqqında',
			'about.openSourceLicenses' => 'Açıq mənbə lisenziyaları',
			'about.versionLabel' => ({required Object version}) => 'Versiya ${version}',
			'about.appDescription' => 'Flutter üçün gözəl bir Plex, Jellyfin və Emby klienti',
			'about.customSource' => 'Mənbə kodu',
			'about.basedOnLuroka' => 'Plezy kod bazasında qurulmuşdur',
			'about.viewLicensesDescription' => 'Üçüncü tərəf kitabxanalarının lisenziyalarına baxın',
			'about.appSection' => 'Tətbiq',
			'about.communitySection' => 'İcma',
			'about.creditsSection' => 'Kreditlər',
			'about.legalSection' => 'Hüquqi',
			'about.versionMeta' => ({required Object version, required Object build, required Object platform}) => 'v${version} (${build}) · ${platform}',
			'about.versionMetaNoBuild' => ({required Object version, required Object platform}) => 'v${version} · ${platform}',
			'about.versionUnavailable' => 'Versiya mövcud deyil',
			'about.versionDetails' => 'Versiya təfərrüatları',
			'about.versionDetailsTitle' => ({required Object version, required Object build}) => 'Luroka ${version} (${build})',
			'about.platformLine' => ({required Object platform}) => 'Platforma: ${platform}',
			'about.deviceLine' => ({required Object model}) => 'Cihaz: ${model}',
			'about.packageLine' => ({required Object package}) => 'Paket: ${package}',
			'about.localeLine' => ({required Object locale}) => 'Dil: ${locale}',
			'about.copyDetails' => 'Detalları kopyalayın',
			'about.detailsCopied' => 'Tətbiq təfərrüatları kopyalandı',
			'about.detailsCopyFailed' => 'Tətbiq təfərrüatlarını kopyalamaq mümkün olmadı',
			'about.checkForUpdatesDescription' => 'Daha yeni buraxılış üçün GitHub-a baxın',
			'about.checkingForUpdates' => 'Güncəlləmələr yoxlanılır...',
			'about.whatsNew' => 'Nə yenilik var',
			'about.releaseNotesUnavailable' => 'Buraxılış qeydləri mövcud deyil.',
			'about.sourceCodeDescription' => 'GitHub-da Luroka',
			'about.reportIssue' => 'Problemi bildirin',
			'about.reportIssueDescription' => 'Nəyin səhv olduğunu bizə deyin',
			'about.documentation' => 'Sənədləşdirmə',
			'about.documentationDescription' => 'Quraşdırma, xüsusiyyətlər və qeydlər qurmaq',
			'about.upstreamProjectDescription' => 'edde746 və ianəçilər tərəfindən açıq mənbəli layihə',
			'about.upstreamWebsite' => 'Upstream veb saytı',
			'about.attribution' => 'Məlumat və atribut',
			'about.attributionDescription' => 'Metadata, reytinqlər və ticarət nişanları',
			'about.attributionBody' => 'Bu məhsul TMDB API istifadə edir, lakin TMDB tərəfindən təsdiqlənməyib və ya sertifikatlaşdırılmayıb. Populyarlıq siyahıları, metadata və IMDb reytinqləri Cinemeta tərəfindən təmin edilir. Xallar mənbə etiketlərini saxlayır.',
			'about.trademarkNotices' => 'Plex, Jellyfin, Emby, Trakt, Simkl, MyAnimeList, AniList, TMDB və əlaqəli nişanlar müvafiq sahiblərinin ticarət nişanlarıdır. Luroka onlarla əlaqəli deyil və onlar tərəfindən təsdiqlənmir.',
			'about.privacyPolicy' => 'Məxfilik siyasəti',
			'about.privacyPolicyDescription' => 'Məlumatlarınız necə idarə olunur',
			'about.gplLicense' => 'GNU GPL-3.0 lisenziyası',
			'about.gplLicenseDescription' => 'Luroka pulsuz proqramdır',
			'about.linkOpenFailed' => 'Bu keçidi açmaq mümkün olmadı',
			'about.opensInBrowser' => 'Brauzerinizdə açılır',
			'about.footer' => 'Luroka GPL-3.0 altında pulsuz proqramdır.',
			'about.copyright' => ({required Object year}) => '© ${year} Luroka ianəçilər',
			'serverSelection.noServersFoundForAccount' => ({required Object username, required Object email}) => '${username} (${email}) üçün server tapılmadı',
			'serverSelection.failedToLoadServers' => ({required Object error}) => 'Serverlər yüklənə bilmədi: ${error}',
			'serverSelection.noValidServers' => 'Bu hesabda istifadəyə yararlı server tapılmadı',
			'hubDetail.title' => 'Başlıq',
			'hubDetail.releaseYear' => 'Buraxılış ili',
			'hubDetail.dateAdded' => 'Əlavə olunma tarixi',
			'hubDetail.rating' => 'Reytinq',
			'hubDetail.noItemsFound' => 'Element tapılmadı',
			'logs.clearLogs' => 'Jurnalları təmizlə',
			'logs.copyLogs' => 'Jurnalları kopyala',
			'logs.uploadLogs' => 'Jurnalları yüklə',
			'startup.failedTitle' => 'Luroka başlaya bilmədi',
			'startup.failedBody' => 'Başlatma zamanı nəsə səhv getdi. Aşağıdakı təfərrüatlar nəyin uğursuz olduğunu göstərir.',
			'startup.failedBodyRepairable' => 'Luroka-nin saxlanmış tənzimləmə faylı zədələnib və Luroka başlamazdan əvvəl yenidən qurulmalıdır. Təzədən cəhd etmək kömək etməyəcək — Yaddaşı təmir et seçin.',
			'startup.phaseLabel' => 'Addım',
			'startup.showDetails' => 'Təfərrüatları göstər',
			'startup.hideDetails' => 'Təfərrüatları gizlət',
			'startup.copyDetails' => 'Təfərrüatları kopyala',
			'startup.detailsCopied' => 'Təfərrüatlar buferə kopyalandı',
			'startup.uploadDetails' => 'Təfərrüatları yüklə',
			'startup.repairStorage' => 'Yaddaşı təmir et',
			'startup.repairTitle' => 'Saxlanmış məlumatlar təmir edilsin?',
			'startup.repairBodyCommon' => 'Luroka-nin tənzimləmə faylı zədələnib və oxuna bilmir. Təmir bütün tənzimləmələri defolt vəziyyətinə sıfırlayır.',
			'startup.repairBodyOneCredential' => 'Bir saxlanmış daxil olma məlumatı zədələnib və oxuna bilmir. Təmir yalnız onu silir; digər tənzimləmələrinizə toxunulmur.',
			'startup.repairBodySignInsKept' => 'Serverləriniz və profilləriniz daxil olmuş vəziyyətdə qalmalıdır.',
			'startup.repairBodySignInsLost' => 'Saxlanmış daxil olmalarınızı qoruyan açar bu fayldan bərpa edilə bilmir, ona görə də hər serverə və profilə yenidən daxil olmalı olacaqsınız. Media serverinizdə heç nəyə təsir olunmur.',
			'startup.repairBodySessionsUncertain' => 'İzləyicilər (MAL, AniList, Simkl, Trakt) və Seerr ayrıca saxlanılır və qalıb-qalmayacaqları bəlli deyil. Luroka sizə nəyi saxladığını dəqiq bildirəcək.',
			'startup.repairConfirm' => 'Təmir et',
			'startup.repairSucceeded' => 'Yaddaş təmir edildi',
			'startup.repairNeedsRestart' => 'Yaddaş təmir edildi — yenidən başlatma tələb olunur',
			'startup.restartRequiredBody' => 'Məlumatlarınız təmir edildi, lakin Luroka ondan istifadə etmək üçün yenidən başlamalıdır. Luroka-ni bağlayın və yenidən açın.',
			'startup.quitLuroka' => 'Luroka-dən çıx',
			'startup.repairFailed' => 'Təmir uğursuz oldu',
			'startup.repairKeptSignIns' => 'Serverləriniz və profilləriniz hələ də daxil olub.',
			'startup.repairLostSignIns' => 'Saxlanmış daxil olmalarınızı qoruyan açar bərpa edilə bilmədi. Hər serverə və profilə yenidən daxil olmalı olacaqsınız.',
			'startup.repairLostSessions' => 'Ən azı bir izləyici və ya Seerr əlaqəsi itirildi və yenidən qoşulmalıdır.',
			'startup.backupTitle' => 'Zədələnmiş faylın nüsxəsi saxlanıldı',
			'startup.backupWarning' => 'O, daxil olma məlumatlarınızı ehtiva edir. Onu yükləməyin və ya paylaşmayın.',
			'startup.deleteBackup' => 'Nüsxəni sil',
			'startup.backupDeleted' => 'Nüsxə silindi.',
			'startup.previousFailureTitle' => 'Luroka son dəfə başlaya bilmədi',
			'licenses.relatedPackages' => 'Əlaqəli paketlər',
			'licenses.license' => 'Lisenziya',
			'licenses.licenseNumber' => ({required Object number}) => 'Lisenziya ${number}',
			'licenses.licensesCount' => ({required Object count}) => '${count} lisenziya',
			'licenses.searchHint' => 'Paketləri axtarın',
			'licenses.noResults' => ({required Object query}) => '"${query}" ilə uyğun paket yoxdur',
			'licenses.clearSearch' => 'Axtarışı təmizləyin',
			'navigation.libraries' => 'Kitabxanalar',
			'navigation.downloads' => 'Yükləmələr',
			'navigation.liveTv' => 'Canlı TV',
			'navigation.explore' => 'Kəşf et',
			'explore.title' => 'Kəşf et',
			'explore.selectSource' => 'Mənbə seçin',
			'explore.rows.watchlist' => 'İzləmə siyahısı',
			'explore.rows.recommendedMovies' => 'Tövsiyə olunan kinolar',
			'explore.rows.recommendedShows' => 'Tövsiyə olunan seriallar',
			'explore.rows.trendingMovies' => 'Trend kinolar',
			'explore.rows.trendingShows' => 'Trend seriallar',
			'explore.rows.popularMovies' => 'Məşhur kinolar',
			'explore.rows.popularShows' => 'Məşhur seriallar',
			'explore.rows.trendingAnime' => 'Trend animelər',
			'explore.rows.suggestedAnime' => 'Tövsiyə olunan animelər',
			'explore.rows.airingAnime' => 'Ən yaxşı yayımlanan animelər',
			'explore.rows.popularAnime' => 'Ən məşhur animelər',
			'explore.rows.trending' => 'Trendlər',
			'explore.rows.upcomingMovies' => 'Gələcək kinolar',
			'explore.rows.upcomingShows' => 'Gələcək seriallar',
			'explore.status.airing' => 'Yayımlanır',
			'explore.status.ended' => 'Bitdi',
			'explore.status.canceled' => 'Ləğv edildi',
			'explore.status.upcoming' => 'Gələcək',
			'explore.episodeCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('az'))(n, one: '${n} seriya', other: '${n} seriya', ), 
			'explore.cast' => 'Aktyorlar',
			'explore.characters' => 'Personajlar',
			'explore.addToWatchlist' => 'İzləmə siyahısına əlavə et',
			'explore.removeFromWatchlist' => 'İzləmə siyahısından sil',
			'explore.addedToWatchlist' => 'Baxış siyahısına əlavə edildi',
			'explore.removedFromWatchlist' => 'Baxış siyahısından silindi',
			'explore.watchlistUpdateFailed' => 'İzləmə siyahısı yenilənə bilmədi',
			'explore.watchlistNoMatch' => 'Bu elementi heç bir baxış siyahısı ilə uyğunlaşdırmaq olmadı',
			'explore.notInLibrary' => 'Kitabxananızda yoxdur',
			'explore.inTheseLibraries' => 'Bu kitabxanalarda var',
			'explore.checkingLibrary' => 'Kitabxananız yoxlanılır...',
			'explore.libraryCheckFailed' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('az'))(n, one: '${n} serveri yoxlamaq olmadı', other: '${n} serveri yoxlamaq olmadı', ), 
			'explore.emptyTitle' => 'Hələlik burada heç nə yoxdur',
			'explore.emptyMessage' => ({required Object source}) => '${source} mənbəsindən olan sətirlər burada görünəcək.',
			'explore.searchHint' => ({required Object source}) => '${source} daxilində axtar',
			'explore.searchEmpty' => ({required Object query}) => '"${query}" üçün nəticə tapılmadı',
			'explore.searchPrompt' => ({required Object source}) => '${source} vasitəsilə kino və seriallar axtarın.',
			'explore.searchFailed' => 'Axtarış uğursuz oldu. Bağlantınızı yoxlayın və yenidən cəhd edin.',
			'explore.badge.rankPopular' => ({required Object n}) => '#${n} populyar',
			'explore.badge.rankAiring' => ({required Object n}) => '#${n} yayımlanır',
			'explore.badge.rankRated' => ({required Object n}) => '#${n} qiymətləndirilib',
			'explore.badge.rankTrending' => ({required Object n}) => '#${n} trenddə',
			'explore.badge.rankSeasonal' => ({required Object season, required Object n}) => '${season} üçün #${n}',
			'explore.badge.watchingNow' => ({required Object n}) => '${n} izləyir',
			'explore.badge.available' => 'Əlçatandır',
			'explore.badge.partiallyAvailable' => 'Hissəvi əlçatandır',
			'explore.badge.availableIn4k' => '4K əlçatandır',
			'explore.badge.requested' => 'Sorğu göndərildi',
			'explore.badge.pendingApproval' => 'Təsdiq gözlənilir',
			'explore.badge.processing' => 'Emal edilir',
			'explore.badge.declined' => 'Rədd edildi',
			'explore.badge.requestFailed' => 'Sorğu uğursuz oldu',
			'explore.badge.requested4k' => '4K sorğu göndərildi',
			'explore.badge.seasonsAvailable' => ({required Object available, required Object total}) => '${available}/${total} mövsüm',
			'explore.badge.nextEpisodeIn' => ({required Object episode, required Object duration}) => 'Ep ${episode} ${duration} sonra',
			'explore.badge.nextAiringIn' => ({required Object duration}) => 'Növbəti ${duration} sonra',
			'explore.badge.episodesShort' => ({required Object n}) => '${n} ep',
			'explore.badge.minutesPerEpisode' => ({required Object n}) => '${n} dəq/ep',
			'explore.badge.adult' => '18+',
			'explore.stats.listed' => ({required Object n}) => '${n} siyahıya alınıb',
			'explore.stats.viewersDay' => ({required Object n}) => 'Bu gün ${n} izlədi',
			'explore.stats.viewersWeek' => ({required Object n}) => 'Bu həftə ${n} izlədi',
			'explore.stats.viewersMonth' => ({required Object n}) => 'Bu ay ${n} izlədi',
			'explore.stats.viewersYear' => ({required Object n}) => 'Bu il ${n} izlədi',
			'explore.stats.viewersAllTime' => ({required Object n}) => '${n} izləyici',
			'explore.stats.planning' => ({required Object n}) => '${n} izləməyi planlaşdırır',
			'explore.stats.favorited' => ({required Object n}) => '${n} favorit',
			'explore.stats.dropRate' => ({required Object percent}) => '${percent} izləməyi dayandırdı',
			'explore.stats.comments' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('az'))(n, one: '${n} şərh', other: '${n} şərh', ), 
			'explore.stats.votes' => ({required Object n}) => '${n} səs',
			'explore.stats.watching' => ({required Object n}) => '${n} izləyir',
			'explore.stats.completed' => ({required Object n}) => '${n} tamamladı',
			'explore.stats.onHold' => ({required Object n}) => '${n} fasilədə',
			'explore.stats.dropped' => ({required Object n}) => '${n} izləməyi dayandırdı',
			'explore.season.winter' => 'Qış',
			'explore.season.spring' => 'Yaz',
			'explore.season.summer' => 'Yay',
			'explore.season.fall' => 'Payız',
			'explore.season.withYear' => ({required Object season, required Object year}) => '${season} ${year}',
			'explore.format.tv' => 'TV',
			'explore.format.tvShort' => 'Qısa TV',
			'explore.format.movie' => 'Kino',
			'explore.format.special' => 'Xüsusi buraxılış',
			'explore.format.ova' => 'OVA',
			'explore.format.ona' => 'ONA',
			'explore.format.music' => 'Musiqi',
			'explore.format.other' => 'Digər',
			'explore.sourceMaterial.original' => 'Orijinal',
			'explore.sourceMaterial.manga' => 'Manga',
			'explore.sourceMaterial.lightNovel' => 'Light novel',
			'explore.sourceMaterial.novel' => 'Roman',
			'explore.sourceMaterial.visualNovel' => 'Vizual roman',
			'explore.sourceMaterial.game' => 'Oyun',
			'explore.sourceMaterial.webComic' => 'Veb komiks',
			'explore.sourceMaterial.musicRelease' => 'Musiqi',
			'explore.sourceMaterial.otherMedia' => 'Digər',
			'explore.creditRole.actor' => 'Aktyor',
			'explore.creditRole.director' => 'Rejissor',
			'explore.creditRole.writer' => 'Ssenarist',
			'explore.creditRole.producer' => 'Prodüser',
			'explore.creditRole.creator' => 'Yaradıcı',
			'explore.creditRole.composer' => 'Bəstəkar',
			'explore.relation.prequel' => 'Prikvel',
			'explore.relation.sequel' => 'Sikvel',
			'explore.relation.sideStory' => 'Yan hekayə',
			'explore.relation.spinOff' => 'Spin-off',
			'explore.relation.alternativeVersion' => 'Alternativ versiya',
			'explore.relation.summary' => 'Xülasə',
			'explore.relation.parentStory' => 'Əsas hekayə',
			'explore.relation.adaptation' => 'Adaptasiya',
			'explore.relation.other' => 'Əlaqəli',
			'explore.broadcast' => ({required Object day, required Object time}) => '${day} saat ${time}-da yayımlanır',
			'explore.broadcastWithZone' => ({required Object day, required Object time, required Object timezone}) => '${day} saat ${time} (${timezone}) yayımlanır',
			'explore.detail.originalTitle' => 'Orijinal başlıq',
			'explore.detail.alsoKnownAs' => 'Digər adları',
			'explore.detail.studios' => 'Studiyalar',
			'explore.detail.country' => 'Ölkə',
			'explore.detail.language' => 'Dil',
			'explore.detail.released' => 'Buraxılıb',
			'explore.detail.physicalRelease' => 'Diskdə',
			'explore.detail.ended' => 'Bitib',
			'explore.detail.addedOn' => ({required Object date}) => '${date} əlavə edildi',
			'explore.detail.yourRating' => 'Sizin qiymətləndirməniz',
			'explore.detail.budget' => 'Büdcə',
			'explore.detail.revenue' => 'Kassa gəliri',
			'explore.detail.contentAdvisory' => 'Yaş tövsiyəsi',
			'explore.detail.tags' => 'Teqlər',
			'explore.detail.revealSpoilerTags' => 'Spoyler teqlərini göstər',
			'explore.detail.links' => 'Keçidlər',
			'explore.detail.watchOn' => 'İzlə',
			'explore.detail.watchTrailer' => 'Treyleri izlə',
			'explore.detail.openOn' => ({required Object site}) => '${site} saytında aç',
			'explore.detail.crew' => 'Heyət',
			'explore.detail.ratings' => 'Reytinq',
			'explore.detail.schedule' => 'Cədvəl',
			'explore.detail.recommendedByUsers' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('az'))(n, one: '${n} istifadəçi tövsiyə edir', other: '${n} istifadəçi tövsiyə edir', ), 
			'explore.detail.recommendedBy' => ({required Object who}) => '${who} tövsiyə edir',
			'explore.detail.favoritedBy' => ({required Object who}) => '${who} favorit edib',
			'explore.detail.unairedEpisodes' => ({required Object n}) => '${n} hələ yayımlanmayıb',
			'explore.detail.recommendedByPercent' => ({required Object percent}) => 'İzləyicilərin ${percent}-i tövsiyə edir',
			'explore.detail.relatedTitles' => 'Əlaqəli başlıqlar',
			'explore.detail.background' => 'Arxa fon',
			'explore.totalResults' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('az'))(n, one: '${n} nəticə', other: '${n} nəticə', ), 
			'liveTv.title' => 'Canlı TV',
			'liveTv.guide' => 'Bələdçi',
			'liveTv.noChannels' => 'Əlçatan kanal yoxdur',
			'liveTv.noDvr' => 'Serverdə DVR tənzimlənməyib',
			'liveTv.serverUnavailable' => 'Canlı TV serveri əlçatan deyil.',
			'liveTv.serverNotConnected' => 'Canlı TV serverinə qoşulmayıb.',
			'liveTv.noPrograms' => 'Proqram məlumatı yoxdur',
			'liveTv.liveStreamFailed' => 'Canlı yayım uğursuz oldu',
			'liveTv.unknownProgram' => 'Bilinməyən proqram',
			'liveTv.unknownHub' => 'Məlum deyil',
			'liveTv.unknownError' => 'Bilinməyən xəta',
			'liveTv.channelNumber' => ({required Object number}) => 'Kanal ${number}',
			'liveTv.unknownChannel' => 'Bilinməyən kanal',
			'liveTv.live' => 'CANLI',
			'liveTv.reloadGuide' => 'Bələdçini yenilə',
			'liveTv.searchGuide' => 'Bələdçidə axtar',
			'liveTv.searchHint' => 'Kanal və proqram axtar',
			'liveTv.searchNoResults' => ({required Object query}) => '"${query}" üçün uyğunluq tapılmadı',
			'liveTv.channelsSection' => 'Kanallar',
			'liveTv.programsSection' => 'Proqramlar',
			'liveTv.now' => 'İndi',
			'liveTv.today' => 'Bu gün',
			'liveTv.tomorrow' => 'Sabah',
			'liveTv.midnight' => 'Gecə yarısı',
			'liveTv.overnight' => 'Gecə boyu',
			'liveTv.morning' => 'Səhər',
			'liveTv.daytime' => 'Gündüz',
			'liveTv.evening' => 'Axşam',
			'liveTv.lateNight' => 'Gecə vaxtı',
			'liveTv.whatsOn' => 'İndi nə var?',
			'liveTv.watchChannel' => 'Kanala bax',
			'liveTv.favorites' => 'Sevimlilər',
			'liveTv.reorderFavorites' => 'Sevimliləri yenidən sırala',
			'liveTv.noFavoriteChannels' => 'Sevimli kanal yoxdur',
			'liveTv.noFavoriteChannelsHint' => 'Bütün kanalları göstərin, sonra kanalı sevimlilərə əlavə etmək üçün üzərinə uzun basın.',
			'liveTv.showAllChannels' => 'Bütün kanalları göstər',
			'liveTv.favoritesLoadFailed' => 'Sevimlilər yüklənə bilmədi. Bağlantınızı yoxlayın və yenidən cəhd edin.',
			'liveTv.favoritesUpdateFailed' => 'Sevimlilər yenilənə bilmədi.',
			'liveTv.joinSession' => 'Davam edən seansa qoşul',
			'liveTv.watchFromStart' => ({required Object minutes}) => 'Əvvəldən bax (${minutes} dəq əvvəl)',
			'liveTv.watchLive' => 'Canlı bax',
			'liveTv.goToLive' => 'Canlı yayıma keç',
			'liveTv.record' => 'Yaz',
			'liveTv.recordEpisode' => 'Seriyanı yaz',
			'liveTv.recordSeries' => 'Serialı yaz',
			'liveTv.recordOptions' => 'Yazma seçimləri',
			'liveTv.saveTo' => 'Buraya saxla',
			'liveTv.recordings' => 'Yazılmışlar',
			'liveTv.scheduledRecordings' => 'Planlaşdırılmışlar',
			'liveTv.recordingRules' => 'Yazma qaydaları',
			'liveTv.noScheduledRecordings' => 'Yazılacaq heç nə planlaşdırılmayıb',
			'liveTv.manageRecording' => 'Yazmanı idarə et',
			'liveTv.cancelRecording' => 'Yazmanı ləğv et',
			'liveTv.cancelRecordingTitle' => 'Bu yazma ləğv edilsin?',
			'liveTv.cancelRecordingMessage' => ({required Object title}) => '${title} artıq yazılmayacaq.',
			'liveTv.deleteRule' => 'Qaydanı sil',
			'liveTv.deleteRuleTitle' => 'Yazma qaydası silinsin?',
			'liveTv.deleteRuleMessage' => ({required Object title}) => '${title} serialının gələcək seriyaları yazılmayacaq.',
			'liveTv.recordingScheduled' => 'Yazma planlaşdırıldı',
			'liveTv.alreadyScheduled' => 'Bu proqram artıq planlaşdırılıb',
			'liveTv.dvrAdminRequired' => 'DVR tənzimləmələri inzibatçı hesabı tələb edir',
			'liveTv.recordingFailed' => 'Yazma planlaşdırıla bilmədi',
			'liveTv.recordingTargetMissing' => 'Yazma kitabxanası müəyyən edilə bilmədi',
			'liveTv.recordNotAvailable' => 'Bu proqram üçün yazma əlçatan deyil',
			'liveTv.recordingCancelled' => 'Yazma ləğv edildi',
			'liveTv.recordingRuleDeleted' => 'Yazma qaydası silindi',
			'liveTv.processRecordingRules' => 'Qaydaları yenidən qiymətləndir',
			'liveTv.recordingInProgress' => 'İndi yazılır',
			'liveTv.recordingsCount' => ({required Object count}) => '${count} planlaşdırılıb',
			'liveTv.editRule' => 'Qaydanı dəyişdir',
			'liveTv.editRuleAction' => 'Düzəliş et',
			'liveTv.recordingRuleUpdated' => 'Yazma qaydası yeniləndi',
			'liveTv.guideReloadRequested' => 'Bələdçi yenilənməsi tələb olundu',
			'liveTv.guideReloadFailed' => 'Bələdçi yenilənmədi',
			'liveTv.rulesProcessRequested' => 'Qaydaların yenidən qiymətləndirilməsi tələb olundu',
			'liveTv.rulesProcessFailed' => 'Yazı qaydaları yenidən qiymətləndirilmədi',
			'liveTv.recordShow' => 'Şounu yaz',
			'liveTv.recordSettings.startEarly' => 'Erkən başla (saniyə)',
			'liveTv.recordSettings.endLate' => 'Gec bitir (saniyə)',
			'liveTv.recordSettings.newOnly' => 'Yalnız yeni epizodlar',
			'liveTv.recordSettings.anyChannel' => 'İstənilən kanalda yaz',
			'liveTv.recordSettings.anyTime' => 'İstənilən vaxt yaz',
			'liveTv.recordSettings.skipInLibrary' => 'Kitabxanada artıq olan epizodları ötür',
			'liveTv.recordSettings.keepUpTo' => 'Saxlanılacaq epizodlar',
			'liveTv.recordSettings.keepUpToHint' => '0 bütün epizodları saxlayır',
			'liveTv.startingInMinutes' => ({required Object minutes}) => '${minutes} dəq sonra başlayır',
			'liveTv.dayAtTime' => ({required Object day, required Object time}) => '${day}, saat ${time}',
			'liveTv.invalidPlaybackData' => ({required Object product}) => '${product} etibarsız Canlı TV oynatma məlumatı qaytardı',
			'liveTv.failedToStartChannel' => 'Canlı kanalı başlatmaq olmadı',
			'liveTv.failedToBuildStreamUrl' => 'Yayım URL-i yaratmaq olmadı',
			'liveTv.playbackStartFailed' => ({required Object reason}) => 'Kanal başladıla bilmədi: ${reason}',
			'liveTv.channelSwitchFailed' => ({required Object reason}) => 'Kanal dəyişdirilə bilmədi: ${reason}',
			'collections.title' => 'Kolleksiyalar',
			'collections.collection' => 'Kolleksiya',
			'collections.empty' => 'Kolleksiya boşdur',
			'collections.deleteCollection' => 'Kolleksiyanı sil',
			'collections.deleteConfirm' => ({required Object title}) => '"${title}" silinsin? Bu əməliyyat geri qaytarıla bilməz.',
			'collections.deleted' => 'Kolleksiya silindi',
			'collections.deleteFailed' => 'Kolleksiya silinə bilmədi',
			'collections.deleteFailedWithError' => ({required Object error}) => 'Kolleksiya silinə bilmədi: ${error}',
			'collections.selectCollection' => 'Kolleksiya seç',
			'collections.collectionName' => 'Kolleksiya adı',
			'collections.enterCollectionName' => 'Kolleksiya adını daxil edin',
			'collections.addedToCollection' => 'Kolleksiyaya əlavə edildi',
			'collections.errorAddingToCollection' => 'Kolleksiyaya əlavə edilə bilmədi',
			'collections.created' => 'Kolleksiya yaradıldı',
			'collections.removeFromCollection' => 'Kolleksiyadan sil',
			'collections.removeFromCollectionConfirm' => ({required Object title}) => '"${title}" bu kolleksiyadan silinsin?',
			'collections.removedFromCollection' => 'Kolleksiyadan silindi',
			'collections.removeFromCollectionFailed' => 'Kolleksiyadan silinə bilmədi',
			'collections.removeFromCollectionError' => ({required Object error}) => 'Kolleksiyadan silinərkən xəta: ${error}',
			'collections.searchCollections' => 'Kolleksiyalarda axtar...',
			'playlists.title' => 'Oynatma siyahıları',
			'playlists.playlist' => 'Oynatma siyahısı',
			'playlists.noPlaylists' => 'Oynatma siyahısı tapılmadı',
			'playlists.create' => 'Oynatma siyahısı yarat',
			'playlists.playlistName' => 'Oynatma siyahısı adı',
			'playlists.enterPlaylistName' => 'Oynatma siyahısı adını daxil edin',
			'playlists.delete' => 'Oynatma siyahısını sil',
			'playlists.removeItem' => 'Oynatma siyahısından sil',
			'playlists.smartPlaylist' => 'Ağıllı oynatma siyahısı',
			'playlists.itemCount' => ({required Object count}) => '${count} element',
			'playlists.oneItem' => '1 element',
			'playlists.emptyPlaylist' => 'Bu oynatma siyahısı boşdur',
			'playlists.deleteConfirm' => 'Oynatma siyahısı silinsin?',
			'playlists.deleteMessage' => ({required Object name}) => '"${name}" siyahısını silmək istədiyinizdən əminsiniz?',
			'playlists.created' => 'Oynatma siyahısı yaradıldı',
			'playlists.deleted' => 'Oynatma siyahısı silindi',
			'playlists.itemAdded' => 'Oynatma siyahısına əlavə edildi',
			'playlists.itemRemoved' => 'Oynatma siyahısından silindi',
			'playlists.selectPlaylist' => 'Oynatma siyahısı seç',
			'playlists.searchPlaylists' => 'Oynatma siyahılarında axtar...',
			'playlists.errorCreating' => 'Oynatma siyahısı yaradıla bilmədi',
			'playlists.errorDeleting' => 'Oynatma siyahısı silinə bilmədi',
			'playlists.errorLoading' => 'Oynatma siyahıları yüklənə bilmədi',
			'playlists.errorAdding' => 'Oynatma siyahısına əlavə edilə bilmədi',
			'playlists.errorReordering' => 'Element yenidən sıralana bilmədi',
			'playlists.errorRemoving' => 'Oynatma siyahısından silinə bilmədi',
			'music.goToAlbum' => 'Alboma keç',
			'music.goToArtist' => 'İfaçıya keç',
			'music.instantMix' => 'Anında qarışıq',
			'music.playNext' => 'Növbətini oynat',
			'music.addToQueue' => 'Növbəyə əlavə et',
			'music.discNumber' => ({required Object n}) => 'Disk ${n}',
			'music.trackCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('az'))(n, one: '${n} mahnı', other: '${n} mahnı', ), 
			'music.nowPlaying' => 'İndi oynadılır',
			'music.playingFrom' => ({required Object title}) => '${title} mənbəsindən oynadılır',
			'music.queue' => 'Növbə',
			'music.clearQueue' => 'Növbəni təmizlə',
			'music.lyrics' => 'Mahnı sözləri',
			'music.noLyrics' => 'Mahnı sözləri yoxdur',
			'music.sleepTimer' => 'Yuxu taymeri',
			'music.sleepTimerEndOfTrack' => 'Mahnının sonu',
			'music.sleepTimerMinutes' => ({required Object n}) => '${n} dəqiqə',
			'music.stopPlayback' => 'Oynatmanı saxla',
			'music.previousTrack' => 'Əvvəlki mahnı',
			'music.nextTrack' => 'Növbəti mahnı',
			'music.repeat' => 'Təkrarla',
			'music.repeatAll' => 'Hamısını təkrarla',
			'music.repeatOne' => 'Birini təkrarla',
			'music.instantMixNoServer' => 'Ani miks üçün heç bir server mövcud deyil',
			'music.instantMixFailed' => 'Anında qarışıq yüklənə bilmədi',
			'music.instantMixEmpty' => 'Anında qarışıq heç bir mahnı qaytarmadı',
			'music.noAudioUrl' => ({required Object track}) => '${track} üçün səs URL-i mövcud deyil',
			'music.discography.singlesAndEps' => 'Single-lar və EP-lər',
			'music.discography.live' => 'Canlı',
			'music.discography.compilations' => 'Kompilyasiyalar',
			'watchTogether.title' => 'Birlikdə İzlə',
			'watchTogether.description' => 'Dostlarınız və ailənizlə eyni vaxtda baxın',
			'watchTogether.createRoom' => 'Otaq yaradın',
			'watchTogether.creatingRoom' => 'Otaq yaradılır...',
			'watchTogether.joinRoom' => 'Otağa qoşulun',
			'watchTogether.joiningRoom' => 'Otağa qoşulma...',
			'watchTogether.connecting' => 'Qoşulur...',
			'watchTogether.relayPublic' => 'Otaqlar ictimai Open Watch Party relelərindən istifadə edir.',
			'watchTogether.relayCustom' => ({required Object url}) => 'Otaqlar ${url} ünvanında rölenizi istifadə edir.',
			'watchTogether.recentRooms' => 'Son otaqlar',
			'watchTogether.roomActions' => 'Otaq hərəkətləri',
			'watchTogether.renameRoom' => 'Otağın adını dəyişdir',
			'watchTogether.removeRoom' => 'Sil',
			'watchTogether.enterRoomCode' => 'Ev sahibinin 6 simvollu kodunu daxil edin.',
			'watchTogether.roomCode' => 'Otaq kodu',
			'watchTogether.paste' => 'Yapışdırın',
			'watchTogether.noCodeInClipboard' => 'Mübadilə buferində otaq kodu yoxdur',
			'watchTogether.copyCode' => 'Kodu kopyalayın',
			'watchTogether.codeCopied' => 'Otaq kodu kopyalandı',
			'watchTogether.shareInvite' => 'Dəvəti paylaşın',
			'watchTogether.qrShare' => 'QR kodu paylaşın',
			'watchTogether.qrHint' => 'Bu otağa qoşulmaq üçün Luroka tətbiqi ilə skan edin.',
			'watchTogether.phasePlaying' => 'Oynamaq',
			'watchTogether.phasePaused' => 'Fasilə verildi',
			'watchTogether.phaseWaiting' => 'Hər kəsi gözləyirik',
			'watchTogether.inviteCopied' => 'Dəvət kopyalandı. Mesaja yapışdırın.',
			'watchTogether.inviteMessage' => ({required Object code}) => 'Luroka: luroka://watch?code=${code}-də Saat Birgə otağıma qoşulun və ya Birlikdə Baxışı açın və ${code} daxil edin.',
			'watchTogether.openSessionControls' => 'Birlikdə İzlə seans idarəetmələrini aç',
			'watchTogether.reconnecting' => 'Yenidən qoşulur...',
			'watchTogether.reconnectingDescription' => 'Bağlantı kəsildi. Otağa avtomatik qoşulursunuz.',
			'watchTogether.connected' => 'Qoşuldu',
			'watchTogether.disconnected' => 'Bağlantı kəsildi',
			'watchTogether.youAreHost' => 'Təşkilatçı sizsiniz',
			'watchTogether.hostedBy' => ({required Object name}) => '${name} ev sahibliyi edir',
			'watchTogether.hostControlsPlayback' => 'Oynatmanı təşkilatçı idarə edir',
			'watchTogether.anyoneCanControl' => 'Oynatmanı hər kəs idarə edə bilər',
			'watchTogether.roomLocked' => 'Otaq kilidlidir',
			'watchTogether.nowPlaying' => 'İndi oynayır',
			'watchTogether.nothingPlaying' => 'Heç nə oynamır',
			'watchTogether.nothingPlayingHost' => 'İstənilən kitabxanadan nəyisə çalın və onu otaqla paylaşın.',
			'watchTogether.nothingPlayingGuest' => 'Ev sahibi nəyisə oynayanda o, burada açılır.',
			'watchTogether.notShareable' => 'Bu videonun kataloq uyğunluğu yoxdur, ona görə də yalnız eyni serverə çıxışı olan insanlar onu oynaya bilər.',
			'watchTogether.searching' => 'Bu videonu kitabxanalarınızda axtarırsınız...',
			'watchTogether.yourCopy' => 'Sizin surətiniz',
			'watchTogether.sharingYourCopy' => 'Kopyanızı paylaşırsınız',
			'watchTogether.playingOtherLength' => ({required Object difference}) => '${difference} surəti çalınır',
			'watchTogether.mismatchTitle' => 'Surətiniz Fərqli Uzunluqdadır',
			'watchTogether.mismatchDescription' => ({required Object difference}) => 'Ən yaxın nüsxə otağın videosundan daha ${difference}-dur. Bu başqa bir kəsik və ya versiya ola bilər.',
			'watchTogether.playAnyway' => 'Hər halda oynayın',
			'watchTogether.chooseAnotherCopy' => 'Başqa bir nüsxə seçin',
			'watchTogether.dontPlay' => 'Oynamayın',
			'watchTogether.unavailableTitle' => 'Bu videonuz yoxdur',
			'watchTogether.unavailableDescription' => 'Luroka onu kitabxanalarınızda tapa bilmədi. Bir nüsxəni özünüz seçin və ya yenidən axtarın.',
			'watchTogether.chooseCopy' => 'Surəti seçin',
			'watchTogether.searchAgain' => 'Yenidən Axtar',
			'watchTogether.noCandidates' => 'Kitabxanalarınızda heç bir nüsxə tapılmadı.',
			'watchTogether.choiceFailed' => 'Bu nüsxəni otaq üçün oynamaq mümkün olmadı',
			'watchTogether.lengthLonger' => ({required Object duration}) => '${duration} daha uzun',
			'watchTogether.lengthShorter' => ({required Object duration}) => '${duration} daha qısa',
			'watchTogether.lengthSame' => 'Eyni uzunluq',
			'watchTogether.lengthUnknown' => 'Uzunluğu bilinmir',
			'watchTogether.joinCurrentPlayback' => 'Cari oynatmaya qoşul',
			'watchTogether.joinCurrentPlaybackDescription' => 'Təşkilatçının indi baxdığı hissəyə keçin',
			'watchTogether.stopMedia' => 'Hər kəs üçün videonu dayandırın',
			'watchTogether.syncOffset' => 'Ofset sinxronizasiyası',
			'watchTogether.syncOffsetDescription' => 'Videonu otağın qabağında və ya arxasında keçirsə, onu dəyişdirin.',
			'watchTogether.offsetHint' => ({required Object difference}) => 'Sizin surətiniz otağın videosundan ${difference}-dir.',
			'watchTogether.applyDifference' => ({required Object offset}) => '${offset} istifadə edin',
			'watchTogether.offsetMinusSecond' => '-1 s',
			'watchTogether.offsetMinusTenth' => '-100 ms',
			'watchTogether.offsetPlusTenth' => '+100 ms',
			'watchTogether.offsetPlusSecond' => '+1 s',
			'watchTogether.participants' => 'İştirakçılar',
			'watchTogether.participantCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('az'))(n, one: '${n} iştirakçısı', other: '${n} iştirakçıları', ), 
			_ => null,
		} ?? switch (path) {
			'watchTogether.hostBadge' => 'TƏŞKİLATÇI',
			'watchTogether.nameYou' => ({required Object name}) => '${name} (Siz)',
			'watchTogether.playerIdle' => 'Boş',
			'watchTogether.playerLoading' => 'Yüklənir',
			'watchTogether.playerReady' => 'Hazır',
			'watchTogether.playerBuffering' => 'Buferləmə',
			'watchTogether.matchSearching' => 'Axtarılır',
			'watchTogether.matchMatched' => 'Videosu var',
			'watchTogether.matchMismatched' => 'Fərqli uzunluq',
			'watchTogether.matchUnavailable' => 'Videosu yoxdur',
			'watchTogether.participantOffset' => ({required Object offset}) => 'Ofset ${offset}',
			'watchTogether.makeHost' => 'Təşkilatçı təyin et',
			'watchTogether.makeHostQuestion' => 'Təşkilatçı köçürülsün?',
			'watchTogether.makeHostConfirm' => ({required Object name}) => '${name} oynatmanı idarə edəcək və seansı hər kəs üçün aparacaq.',
			'watchTogether.transfer' => 'Köçür',
			'watchTogether.removeParticipant' => 'Otaqdan çıxarın',
			'watchTogether.removeParticipantQuestion' => ({required Object name}) => '${name} silinsin?',
			'watchTogether.removeParticipantConfirm' => ({required Object name}) => '${name} otaqdan çıxır. Otağı kilidləməsəniz, onlar kodla yenidən qoşula bilərlər.',
			'watchTogether.remove' => 'Sil',
			'watchTogether.roomSettings' => 'Otaq Parametrləri',
			'watchTogether.letEveryoneControl' => 'Oxumağa hər kəsin nəzarət etməsinə icazə verin',
			'watchTogether.lockRoom' => 'Kilid otağı',
			'watchTogether.lockRoomDescription' => 'Heç kim yeni qoşula bilməz',
			'watchTogether.leaveRoom' => 'Otağı tərk edin',
			'watchTogether.leaveRoomQuestion' => 'Otağı tərk etmək istəyirsiniz?',
			'watchTogether.leaveRoomConfirm' => 'Otaq kodu ilə yenidən qoşula bilərsiniz.',
			'watchTogether.leave' => 'Çıx',
			'watchTogether.endRoom' => 'Son Otaq',
			'watchTogether.endRoomQuestion' => 'Son otaq?',
			'watchTogether.endRoomConfirm' => 'Bu, hər kəs üçün otağı bitirir.',
			'watchTogether.end' => 'Bitir',
			'watchTogether.playBlockedTitle' => 'Oxutma başlamadı',
			'watchTogether.playBlockedDescription' => 'Otaqla baxmağa başlamaq üçün oynat düyməsini basın.',
			'watchTogether.notices.pressedPlay' => ({required Object name}) => '${name} preslənmiş oyun',
			'watchTogether.notices.playbackStarted' => 'Oxutma başladı',
			'watchTogether.notices.paused' => ({required Object name}) => '${name} fasilə etdi',
			'watchTogether.notices.playbackPaused' => 'Oxuma dayandırıldı',
			'watchTogether.notices.jumpedTo' => ({required Object name, required Object position}) => '${name} ${position}-a keçdi',
			'watchTogether.notices.roomJumpedTo' => ({required Object position}) => '${position}-a keçdi',
			'watchTogether.notices.changedSpeed' => ({required Object name, required Object speed}) => '${name} sürəti ${speed} olaraq təyin etdi',
			'watchTogether.notices.speedChanged' => ({required Object speed}) => 'Sürət ${speed} olaraq təyin edildi',
			'watchTogether.notices.startedMedia' => ({required Object name, required Object title}) => '${name} başladı ${title}',
			'watchTogether.notices.mediaStarted' => ({required Object title}) => 'İndi ${title} oynayır',
			'watchTogether.notices.stoppedMedia' => ({required Object name}) => '${name} videonu dayandırdı',
			'watchTogether.notices.mediaStopped' => 'Video dayandı',
			'watchTogether.notices.waitingFor' => ({required Object name}) => '${name} gözlənilir...',
			'watchTogether.notices.waitingForSomeone' => 'Kiminsə yetişməsini gözləyirəm...',
			'watchTogether.notices.finished' => 'Bitdi',
			'watchTogether.notices.hostChangedTo' => ({required Object name}) => '${name} indi təşkilatçıdır',
			'watchTogether.notices.youAreNowHost' => 'İndi təşkilatçı sizsiniz',
			'watchTogether.notices.joined' => ({required Object name}) => '${name} qoşuldu',
			'watchTogether.notices.left' => ({required Object name}) => '${name} ayrıldı',
			'watchTogether.notices.controlRefused' => 'Yalnız ev sahibi oxutmaya nəzarət edə bilər',
			'watchTogether.notices.searchFailed' => 'Bəzi serverləri otağın videosu üçün axtarmaq mümkün olmadı',
			'watchTogether.notices.playBlocked' => 'Başlamaq üçün oynat düyməsini basın',
			'watchTogether.notices.shareFailed' => 'Bu videonu otaqla paylaşmaq mümkün olmadı',
			'watchTogether.notices.notShared' => 'Endirilmiş videolar otaqla paylaşılmır',
			'watchTogether.notices.openFailed' => 'Otağın videosunu açmaq mümkün olmadı',
			'watchTogether.ended.ended' => 'Ev sahibi otağı bitirdi',
			'watchTogether.ended.kicked' => 'Siz otaqdan çıxarıldınız',
			'watchTogether.ended.expired' => 'Otağın vaxtı bitdi',
			'watchTogether.ended.replaced' => 'Bu otağa başqa cihazda qoşuldunuz',
			'watchTogether.ended.lost' => 'Otaqla əlaqə kəsildi',
			'watchTogether.errors.invalidCode' => 'Bu otaq kodu deyil. Kodlarda 0, 1, I, L və ya O olmadan 6 hərf və rəqəm var.',
			'watchTogether.errors.roomNotFound' => 'Heç bir otaqda belə kod yoxdur. Ola bilər ki, bitdi.',
			'watchTogether.errors.roomFull' => 'O otaq doludur.',
			'watchTogether.errors.roomLocked' => 'Ev sahibi həmin otağı bağladı.',
			'watchTogether.errors.relayFull' => 'Birlikdə baxın hazırda məşğuldur. Daha sonra yenidən cəhd edin.',
			'watchTogether.errors.unreachable' => 'Birlikdə Baxın relesinə çatmaq mümkün olmadı. Bağlantınızı yoxlayın.',
			'watchTogether.errors.rateLimited' => 'Həddindən artıq cəhd. Bir az gözləyin və yenidən cəhd edin.',
			'watchTogether.errors.clientBlocked' => 'Luroka-nin bu versiyası releydən istifadə edə bilməz. Proqramı yeniləyin.',
			'watchTogether.errors.forbidden' => 'Bunu yalnız ev sahibi edə bilər.',
			'watchTogether.errors.notInRoom' => 'Siz otaqda deyilsiniz.',
			'watchTogether.errors.alreadyInRoom' => 'Artıq otaqdasınız.',
			'watchTogether.errors.resumeFailed' => 'Otağa yenidən qoşulmaq mümkün olmadı.',
			'watchTogether.errors.unsupported' => 'Rele bunu dəstəkləmir.',
			'watchTogether.errors.generic' => 'Nəsə xəta baş verdi. Yenidən cəhd edin.',
			'watchTogether.untitledEpisode' => ({required Object number}) => 'Epizod ${number}',
			'downloads.title' => 'Yükləmələr',
			'downloads.manage' => 'İdarə et',
			'downloads.tvShows' => 'TV Şoular',
			'downloads.movies' => 'Kinolar',
			'downloads.music' => 'Musiqi',
			'downloads.tracksQueued' => ({required Object count}) => 'Yükləmə üçün ${count} mahnı növbəyə alındı',
			'downloads.noDownloads' => 'Hələlik yükləmə yoxdur',
			'downloads.noDownloadsDescription' => 'Yüklənmiş məzmun oflayn baxış üçün burada görünəcək',
			'downloads.downloadNow' => 'Yüklə',
			'downloads.deleteDownload' => 'Yükləməni sil',
			'downloads.retryDownload' => 'Yükləməni təzədən cəhd et',
			'downloads.downloadQueued' => 'Yükləmə növbəyə alındı',
			'downloads.downloadResumed' => 'Yükləmə davam etdirildi',
			'downloads.serverErrorBitrate' => 'Server xətası: fayl sürət limitini aşa bilər',
			'downloads.storageFull' => 'Boş yaddaşı qorumaq üçün yükləmələr dayandırıldı. Yer boşaldın və ya başqa yükləmə yeri seçin, sonra yenidən cəhd edin.',
			'downloads.storageUnavailable' => 'Boş yaddaşı yoxlamaq mümkün olmadığı üçün yükləmələr dayandırıldı. Yükləmə yerini yoxlayın, sonra təzədən cəhd edin.',
			'downloads.episodesQueued' => ({required Object count}) => 'Yükləmə üçün ${count} seriya növbəyə alındı',
			'downloads.downloadDeleted' => 'Yükləmə silindi',
			'downloads.deleteConfirm' => ({required Object title}) => '"${title}" bu cihazdan silinsin?',
			'downloads.deleteCollectionDownloads' => 'Yükləmələri silin',
			'downloads.deleteCollectionDownloadsConfirm' => ({required Object title}) => 'Bu cihazdan "${title}" faylındakı hər endirmə silinsin?',
			'downloads.collectionDownloadsDeleted' => 'Endirmələr silindi',
			'downloads.cancelledDownloadTitle' => 'Ləğv edilmiş yükləmə',
			'downloads.cancelledDownloadMessage' => 'Bu yükləmə ləğv edildi. Nə etmək istərdiniz?',
			'downloads.allEpisodesAlreadyDownloaded' => 'Bütün seriyalar artıq yüklənib',
			'downloads.resumeDownload' => 'Yükləməni davam etdir',
			'downloads.cancelledDownload' => 'Ləğv edilmiş yükləmə',
			'downloads.syncingFile' => ({required Object file, required Object status}) => '${file} (${status} eyniləşdirilir)',
			'downloads.downloadedFileClickToComplete' => ({required Object file}) => 'Yükləndi ${file} - Tamamlamaq üçün toxunun',
			'downloads.partialDownloadClickToComplete' => 'Hissəvi yükləndi - Tamamlamaq üçün toxunun',
			'downloads.deleting' => 'Silinir...',
			'downloads.deletingWithProgress' => ({required Object title, required Object current, required Object total}) => '${title} silinir... (${current} / ${total})',
			'downloads.queuedTooltip' => 'Növbədədir',
			'downloads.queuedFilesTooltip' => ({required Object files}) => 'Növbəyə alınan fayllar: ${files}',
			'downloads.downloadingTooltip' => 'Yüklənir...',
			'downloads.downloadingFilesTooltip' => ({required Object files}) => 'Yüklənən fayllar: ${files}',
			'downloads.noDownloadsTree' => 'Yükləmə yoxdur',
			'downloads.pauseAll' => 'Hamısını fasilə et',
			'downloads.resumeAll' => 'Hamısını davam etdir',
			'downloads.retryAll' => 'Hamısını yenidən cəhd edin',
			'downloads.retryFailed' => 'Uğursuz endirmələri yenidən cəhd edin',
			'downloads.deleteAll' => 'Hamısını sil',
			'downloads.selectVersion' => 'Versiya seç',
			'downloads.allEpisodes' => 'Bütün seriyalar',
			'downloads.unwatchedOnly' => 'Yalnız baxılmayanlar',
			'downloads.nextNUnwatched' => ({required Object count}) => 'Növbəti ${count} baxılmayan',
			'downloads.customAmount' => 'Xüsusi miqdar...',
			'downloads.includeSpecials' => 'Xüsusi seriyaları daxil et',
			'downloads.howManyEpisodes' => 'Neçə seriya?',
			'downloads.invalidEpisodeCount' => 'Düzgün seriya sayı daxil edin.',
			'downloads.keepSynced' => 'Eyniləşdirilmiş saxla',
			'downloads.downloadOnce' => 'Bir dəfə yüklə',
			'downloads.keepNUnwatched' => ({required Object count}) => '${count} baxılmayan seriyanı saxla',
			'downloads.editSyncRule' => 'Eyniləşdirmə qaydasını dəyişdir',
			'downloads.removeSyncRule' => 'Eyniləşdirmə qaydasını sil',
			'downloads.removeSyncRuleConfirm' => ({required Object title}) => '"${title}" eyniləşdirməsi dayandırılsın? Yüklənmiş seriyalar saxlanılacaq.',
			'downloads.removeListSyncRuleConfirm' => ({required Object title}) => '"${title}" eyniləşdirməsi dayandırılsın?',
			'downloads.deleteSyncRuleDownloads' => 'Əlaqəli yükləmələri də sil',
			'downloads.deleteSyncRuleDownloadsDescription' => 'Başqa eyniləşdirmə qaydası və ya profil tərəfindən istifadə olunan yükləmələr saxlanılacaq.',
			'downloads.syncRuleCreated' => ({required Object count}) => 'Eyniləşdirmə qaydası yaradıldı — ${count} baxılmayan seriya saxlanılır',
			'downloads.syncRuleUpdated' => 'Eyniləşdirmə qaydası yeniləndi',
			'downloads.syncRuleRemoved' => 'Eyniləşdirmə qaydası silindi',
			'downloads.syncRuleAndDownloadsRemoved' => 'Eyniləşdirmə qaydası və əlaqəli yükləmələr silindi',
			'downloads.syncRuleCleanupBusy' => 'Eyniləşdirmə qaydaları hazırda yenilənir. Bir azdan təzədən cəhd edin.',
			'downloads.syncRuleCleanupUnavailable' => 'Əlaqəli yükləmələr təhlükəsiz şəkildə müəyyən edilə bilmədi. Serverə yenidən qoşulub cəhd edin və ya qaydanı yükləmələri silmədən silin.',
			'downloads.syncedNewEpisodes' => ({required Object title, required Object count}) => '${title} üçün ${count} yeni seriya eyniləşdirildi',
			'downloads.activeSyncRules' => 'Eyniləşdirmə qaydaları',
			'downloads.noSyncRules' => 'Eyniləşdirmə qaydası yoxdur',
			'downloads.manageSyncRule' => 'Eyniləşdirməni idarə et',
			'downloads.editEpisodeCount' => 'Seriya sayı',
			'downloads.editSyncFilter' => 'Eyniləşdirmə filtri',
			'downloads.syncAllItems' => 'Bütün elementlər eyniləşdirilir',
			'downloads.syncUnwatchedItems' => 'Baxılmayan elementlər eyniləşdirilir',
			'downloads.syncRuleServerContext' => ({required Object server, required Object status}) => 'Server: ${server} • ${status}',
			'downloads.syncRuleAvailable' => 'Əlçatandır',
			'downloads.syncRuleOffline' => 'Oflayn',
			'downloads.syncRuleSignInRequired' => 'Daxil olmaq tələb olunur',
			'downloads.syncRuleAccessDenied' => 'Giriş rədd edildi',
			'downloads.syncRuleNotAvailableForProfile' => 'Cari profil üçün əlçatan deyil',
			'downloads.syncRuleUnknownServer' => 'Bilinməyən server',
			'downloads.syncRuleListCreated' => 'Eyniləşdirmə qaydası yaradıldı',
			'downloads.backgroundWarning.bannerBlocked' => 'Tətbiqdən çıxdıqda yükləmələr dayanacaq',
			'downloads.backgroundWarning.bannerDegraded' => 'Arxa fonda yükləmələr məhdudlaşdırıla bilər',
			'downloads.backgroundWarning.bannerAction' => 'Ətraflı',
			'downloads.backgroundWarning.sheetTitle' => 'Arxa fonda yükləmələr bloklanıb',
			'downloads.backgroundWarning.sheetTitleDegraded' => 'Arxa fonda yükləmələr məhdudlaşdırıla bilər',
			'downloads.backgroundWarning.sheetIntro' => 'Android Luroka-nin arxa fonda etibarlı şəkildə yükləməsinə mane olur.',
			'downloads.backgroundWarning.sheetIntroDegraded' => 'Cihazınız Luroka-nin arxa fonda nə vaxt yükləyə biləcəyini məhdudlaşdırır.',
			'downloads.backgroundWarning.reasonBackgroundRestricted' => 'Luroka-nin arxa fon istifadəsi məhdudlaşdırılıb. Batareya və ya arxa fon istifadəsini "Məhdudiyyətsiz" edin.',
			'downloads.backgroundWarning.reasonStandbyRestricted' => 'Android Luroka-ni məhdud gözləmə rejiminə salıb. Batareya istifadəsini "Məhdudiyyətsiz" edin.',
			'downloads.backgroundWarning.reasonDownloadChannelBlocked' => 'Yükləmə bildirişləri söndürülüb, ona görə gedişat və idarəetmələr əlçatan olmaya bilər.',
			'downloads.backgroundWarning.reasonNotificationsDisabled' => 'Bildirişlər söndürülüb. Android 13 və daha yeni versiyalarda uzun arxa fon yükləmələri üçün onlar tələb olunur.',
			'downloads.backgroundWarning.reasonDataSaver' => 'Data Saver aktivdir və bu, mobil internetdə arxa fon yükləmələrini bloklayır. Wi-Fi ilə yükləmələr işləməlidir.',
			'downloads.backgroundWarning.reasonOemUnknown' => 'Luroka arxa fonda olarkən yükləmələr dəfələrlə dayandı. Luroka-nin batareya və ya arxa fon istifadəsi tənzimləmələrini yoxlayın.',
			'downloads.backgroundWarning.openSettings' => 'Tənzimləmələri aç',
			'downloads.backgroundWarning.stillNotWorking' => 'Cihaza özəl kömək',
			'downloads.backgroundWarning.stillNotWorkingDescription' => 'Cihazınız üçün addımlara baxın və ya problem davam edərsə Tənzimləmələr › Jurnallara bax bölməsindən jurnal göndərin.',
			'downloads.backgroundWarning.dialogTitle' => 'Yükləmələr tamamlanmaya bilər',
			'downloads.backgroundWarning.dialogDownloadAnyway' => 'Yenə də yüklə',
			'downloads.backgroundWarning.dialogFixFirst' => 'Əvvəlcə bunu düzəlt',
			'downloads.backgroundWarning.statusTile' => 'Arxa fonda yükləmələr',
			'downloads.backgroundWarning.statusOk' => 'Arxa fonda işləməyə icazə verilir',
			'downloads.backgroundWarning.statusBlocked' => 'Sistem tənzimləmələri ilə bloklanıb',
			'downloads.backgroundWarning.statusDegraded' => 'Sistem tənzimləmələri ilə məhdudlaşdırılıb',
			'downloads.backgroundWarning.statusUnknown' => 'Hələ yoxlanılmayıb',
			'downloads.backgroundWarning.settingsUnavailable' => 'Bu cihazda sistem tənzimləmələri açıla bilmədi',
			'downloads.backgroundWarning.linkUnavailable' => 'Bu cihazda dontkillmyapp.com açıla bilmədi',
			'downloads.options' => 'Yükləmə seçimləri',
			'downloads.groupings.library' => 'Kitabxana',
			'downloads.groupings.collections' => 'Kolleksiyalar',
			'downloads.unknownLibrary' => 'Məlum olmayan kitabxana',
			'downloads.unknownShow' => 'Məlum olmayan serial',
			'downloads.unknownSeason' => 'Məlum olmayan mövsüm',
			'downloads.unknownAlbum' => 'Məlum olmayan albom',
			'downloads.completedOfTotal' => ({required Object completed, required Object total}) => '${completed}/${total} tamamlandı',
			'downloads.errorFileNotFound' => 'Fayl tapılmadı (404)',
			'downloads.errorDownloadNotAllowed' => 'Server yükləməyə icazə vermir (403)',
			'downloads.errorDownloadFailed' => 'Yükləmə uğursuz oldu',
			'downloads.errorDownloadFailedWithReason' => ({required Object reason}) => 'Yükləmə uğursuz oldu: ${reason}',
			'downloads.errorHttpStatus' => ({required Object status}) => 'Yükləmə uğursuz oldu (HTTP ${status})',
			'downloads.errorPostProcessing' => ({required Object reason}) => 'Sonrakı emal uğursuz oldu: ${reason}',
			'downloads.reasonFileNotSaved' => 'fayl bu cihazda saxlanıla bilmədi',
			'downloads.reasonCannotResume' => 'yarımçıq yükləməni davam etdirmək mümkün olmadı',
			'downloads.reasonDeviceStorageFull' => 'bu cihazda yer qalmayıb',
			'downloads.notificationDownloading' => 'Yüklənir...',
			'downloads.notificationComplete' => 'Yükləmə tamamlandı',
			'downloads.notificationPaused' => 'Yükləmə dayandırıldı',
			'shaders.title' => 'Şeyderlər',
			'shaders.noShaderDescription' => 'Video təkmilləşdirməsi yoxdur',
			'shaders.nvscalerDescription' => 'Daha kəskin video üçün NVIDIA miqyaslaması',
			'shaders.artcnnVariantNeutral' => 'Neytral',
			'shaders.artcnnVariantDenoise' => 'Küyün aradan qaldırılması',
			'shaders.artcnnVariantDenoiseSharpen' => 'Küyün aradan qaldırılması + Kəskinləşdirmə',
			'shaders.qualityFast' => 'Sürətli',
			'shaders.qualityHQ' => 'Yüksək keyfiyyət',
			'shaders.mode' => 'Rejim',
			'shaders.importShader' => 'Şeyder idxal et',
			'shaders.customShaderDescription' => 'Xüsusi GLSL şeyderi',
			'shaders.shaderImported' => 'Şeyder idxal edildi',
			'shaders.shaderImportFailed' => 'Şeyder idxal edilə bilmədi',
			'shaders.deleteShader' => 'Şeyderi sil',
			'shaders.deleteShaderConfirm' => ({required Object name}) => '"${name}" silinsin?',
			'companionRemote.title' => 'Köməkçi pult',
			'companionRemote.connectedTo' => ({required Object name}) => '${name} cihazına qoşuldu',
			'companionRemote.unknownDevice' => 'Bilinməyən cihaz',
			'companionRemote.session.startingServer' => 'Pult serveri başladılır...',
			'companionRemote.session.hostAddress' => 'Əsas cihaz ünvanı',
			'companionRemote.session.connected' => 'Qoşuldu',
			'companionRemote.session.serverRunning' => 'Pult serveri aktivdir',
			'companionRemote.session.serverStopped' => 'Pult serveri dayandırıldı',
			'companionRemote.session.serverRunningDescription' => 'Şəbəkənizdəki mobil cihazlar qoşula bilər',
			'companionRemote.session.serverStoppedDescription' => 'Mobil cihazların qoşulmasına icazə vermək üçün serveri başladın',
			'companionRemote.session.usePhoneToControl' => 'Bu tətbiqi idarə etmək üçün mobil cihazınızı istifadə edin',
			'companionRemote.session.startServer' => 'Serveri başlat',
			'companionRemote.session.stopServer' => 'Serveri dayandır',
			'companionRemote.session.minimize' => 'Yığ',
			'companionRemote.session.manualAddressHint' => 'Əl ilə bağlantı ünvanı:',
			'companionRemote.pairing.discoveryDescription' => 'Eyni Plex hesabına sahib Luroka cihazları burada görünür',
			'companionRemote.pairing.hostAddressHint' => '192.168.1.100:48632',
			'companionRemote.pairing.connecting' => 'Qoşulunur...',
			'companionRemote.pairing.searchingForDevices' => 'Cihazlar axtarılır...',
			'companionRemote.pairing.noDevicesFound' => 'Şəbəkənizdə cihaz tapılmadı',
			'companionRemote.pairing.noDevicesHint' => 'Masaüstündə Luroka-ni açın və eyni Wi-Fi-dan istifadə edin',
			'companionRemote.pairing.availableDevices' => 'Əlçatan cihazlar',
			'companionRemote.pairing.manualConnection' => 'Əl ilə qoşulma',
			'companionRemote.pairing.cryptoInitFailed' => 'Təhlükəsiz qoşulma başladılarkən xəta. Əvvəlcə Plex-ə daxil olun.',
			'companionRemote.pairing.validationHostRequired' => 'Lütfən əsas cihaz ünvanını daxil edin',
			'companionRemote.pairing.validationHostFormat' => 'Format IP:port şəklində olmalıdır',
			'companionRemote.pairing.connectionTimedOut' => 'Qoşulma vaxtı bitdi. Hər iki cihazda eyni şəbəkədən istifadə edin.',
			'companionRemote.pairing.sessionNotFound' => 'Cihaz tapılmadı.',
			'companionRemote.pairing.authFailed' => 'Kimlik doğrulanması uğursuz oldu.',
			'companionRemote.pairing.failedToConnect' => ({required Object error}) => 'Qoşulma uğursuz oldu: ${error}',
			'companionRemote.remote.disconnectConfirm' => 'Pult seansından ayrılmaq istəyirsiniz?',
			'companionRemote.remote.reconnecting' => 'Yenidən qoşulunur...',
			'companionRemote.remote.attemptOf' => ({required Object current}) => 'Cəhd ${current} / 5',
			'companionRemote.remote.retryNow' => 'İndi təzədən cəhd et',
			'companionRemote.remote.tabRemote' => 'Pult',
			'companionRemote.remote.tabPlay' => 'Oynat',
			'companionRemote.remote.tabMore' => 'Daha çox',
			'companionRemote.remote.menu' => 'Menyu',
			'companionRemote.remote.tabNavigation' => 'Naviqasiya',
			'companionRemote.remote.tabDiscover' => 'Kəşf et',
			'companionRemote.remote.tabLibraries' => 'Kitabxanalar',
			'companionRemote.remote.tabSearch' => 'Axtar',
			'companionRemote.remote.tabDownloads' => 'Yükləmələr',
			'companionRemote.remote.tabSettings' => 'Tənzimləmələr',
			'companionRemote.remote.previous' => 'Əvvəlki',
			'companionRemote.remote.playPause' => 'Oynat/Fasilə',
			'companionRemote.remote.next' => 'Növbəti',
			'companionRemote.remote.seekBack' => 'Geri sar',
			'companionRemote.remote.stop' => 'Saxla',
			'companionRemote.remote.seekForward' => 'İrəli sar',
			'companionRemote.remote.volume' => 'Səs',
			'companionRemote.remote.volumeDown' => 'Azalt',
			'companionRemote.remote.volumeUp' => 'Artır',
			'companionRemote.remote.fullscreen' => 'Tam ekran',
			'companionRemote.remote.subtitles' => 'Altyazılar',
			'companionRemote.remote.audio' => 'Səs',
			'companionRemote.remote.searchHint' => 'Masaüstündə axtar...',
			'companionRemote.errors.noNetworkInterface' => 'Şəbəkə interfeysi tapılmadı',
			'companionRemote.errors.authenticationFailed' => 'Kimlik doğrulanması uğursuz oldu',
			'companionRemote.errors.serverStartFailed' => ({required Object error}) => 'Pult serveri başladıla bilmədi: ${error}',
			'companionRemote.errors.commandFailed' => ({required Object error}) => 'Pult əmri göndərilə bilmədi: ${error}',
			'companionRemote.errors.joinTimedOut' => 'Seansa qoşulma vaxtı bitdi',
			'companionRemote.errors.failedToConnectAnyAddress' => 'Heç bir ünvana qoşuluna bilmədi',
			'companionRemote.errors.connectionLostAfterAttempts' => ({required Object attempts}) => '${attempts} cəhddən sonra əlaqə kəsildi',
			'companionRemote.errors.connectionLost' => 'Əlaqə kəsildi',
			'companionRemote.closedBeforeAuth' => 'Bağlantı autentifikasiyadan əvvəl bağlandı',
			'videoSettings.playbackSpeed' => 'Oynatma sürəti',
			'videoSettings.normalSpeed' => 'Normal',
			'videoSettings.sleepTimerActive' => ({required Object duration}) => 'Aktivdir (${duration})',
			'videoSettings.zoom' => 'Miqyas',
			'videoSettings.sleepTimer' => 'Yuxu taymeri',
			'videoSettings.audioSync' => 'Səs sinxronizasiyası',
			'videoSettings.subtitleSync' => 'Altyazı sinxronizasiyası',
			'videoSettings.hdr' => 'HDR',
			'videoSettings.hdrUnsupported' => 'HDR burada əlçatan deyil — bu masaüstü kompozitoru və ya video çıxışı onu ötürə bilmir.',
			'videoSettings.hdrToneMapping' => 'HDR ton uyğunlaşdırması',
			'videoSettings.hdrToneMappingCompositor' => 'Kompozitor',
			'videoSettings.hdrToneMappingCompositorDescription' => 'Mənbənin HDR metaməlumatlarını dəyişmədən ötür və ton uyğunlaşdırmasını masaüstü kompozitoruna həvalə et.',
			'videoSettings.hdrToneMappingPlayer' => 'Oynadıcı',
			'videoSettings.hdrToneMappingPlayerDescription' => 'Oynadıcıda tonları ekranın pik parlaqlığına uyğunlaşdır, sonra nəticəni kompozitora bildir.',
			'videoSettings.hdrToneMappingFailed' => 'HDR ton uyğunlaşdırmasını dəyişmək olmadı — əvvəlki rejim hələ də aktivdir.',
			'videoSettings.audioOutput' => 'Səs çıxışı',
			'videoSettings.performanceOverlay' => 'Məhsuldarlıq paneli',
			'videoSettings.audioOutputDolbyAtmos' => 'Dolby Atmos',
			'videoSettings.audioOutputDolbyAudio' => 'Dolby Audio',
			'videoSettings.audioOutputSurround' => 'Əhatəli səs',
			'videoSettings.audioOutputSpatial' => 'Məkan səsi',
			'videoSettings.audioOutputStereo' => 'Stereo',
			'videoSettings.audioNormalization' => 'Səsin gurluğunu normallaşdır',
			'videoSettings.audioNormalizationDisablesPassthrough' => 'Səsi PCM-ə dekodlayır; bu aktivkən birbaşa ötürmə söndürülür',
			'performanceOverlay.color' => 'Rəng',
			'performanceOverlay.performance' => 'Məhsuldarlıq',
			'performanceOverlay.buffer' => 'Bufer',
			'performanceOverlay.app' => 'Tətbiq',
			'performanceOverlay.decoder' => 'Çözücü',
			'performanceOverlay.rawDecoder' => 'Xam çözücü',
			'performanceOverlay.tunneling' => 'Tünelləmə',
			'performanceOverlay.passthrough' => 'Birbaşa ötürmə',
			'performanceOverlay.aspect' => 'Nisbət',
			'performanceOverlay.rotation' => 'Dönmə',
			'performanceOverlay.dvSource' => 'DV mənbəyi',
			'performanceOverlay.dvPath' => 'DV yolu',
			'performanceOverlay.dvRouteDecoder' => 'Dolby Vision dekoder',
			'performanceOverlay.dvRouteDecoderP81' => 'Dolby Vision dekoder (P7→8.1)',
			'performanceOverlay.dvRouteBaseLayer' => 'Əsas təbəqə',
			'performanceOverlay.dvRouteBaseLayerHdr10' => 'HDR10 əsas qat',
			'performanceOverlay.dvRouteBaseLayerHlg' => 'HLG əsas təbəqəsi',
			'performanceOverlay.dvRouteBaseLayerSdr' => 'SDR əsas təbəqəsi',
			'performanceOverlay.dvRouteReshaped' => 'RPU yenidən formalaşdırıldı (gpu-növbəti)',
			'performanceOverlay.p7Conversion' => 'P7 çevrilməsi',
			'performanceOverlay.sampleRate' => 'Diskretləşdirmə tezliyi',
			'performanceOverlay.pixelFormat' => 'Piksel formatı',
			'performanceOverlay.hwFormat' => 'HW formatı',
			'performanceOverlay.matrix' => 'Matrisa',
			'performanceOverlay.primaries' => 'Əsas rənglər',
			'performanceOverlay.transfer' => 'Ötürmə',
			'performanceOverlay.renderFps' => 'Emal FPS-i',
			'performanceOverlay.displayFps' => 'Ekran FPS-i',
			'performanceOverlay.avSync' => 'A/V Eyniləşdirilməsi',
			'performanceOverlay.dropped' => 'İtirilmiş kadrlar',
			'performanceOverlay.dvRpus' => 'DV RPU-ları',
			'performanceOverlay.dvRpuAverage' => 'DV RPU Ort.',
			'performanceOverlay.dvSampleAverage' => 'DV Nümunə Ort.',
			'performanceOverlay.maxLuma' => 'Maks Luma',
			'performanceOverlay.minLuma' => 'Min Luma',
			'performanceOverlay.maxCll' => 'MaxCLL',
			'performanceOverlay.maxFall' => 'MaxFALL',
			'performanceOverlay.cacheUsed' => 'İstifadə olunan keş',
			'performanceOverlay.cacheLimit' => 'Keş limiti',
			'performanceOverlay.speed' => 'Sürət',
			'performanceOverlay.player' => 'Oynadıcı',
			'performanceOverlay.memory' => 'Yaddaş',
			'performanceOverlay.uiFps' => 'Arayüz (UI) FPS-i',
			'performanceOverlay.fps' => 'FPS',
			'performanceOverlay.decoderAndroidHw' => 'Android HW',
			'performanceOverlay.decoderNvidiaHw' => 'NVIDIA HW',
			'performanceOverlay.decoderQualcommHw' => 'Qualcomm HW',
			'performanceOverlay.decoderMediatekHw' => 'MediaTek HW',
			'performanceOverlay.decoderExynosHw' => 'Exynos HW',
			'performanceOverlay.decoderSoftware' => 'Proqram təminatı',
			'performanceOverlay.decoderHardware' => 'Aparat təminatı',
			'performanceOverlay.tunnelingActive' => 'Aktiv',
			'performanceOverlay.dvRpuFailed' => ({required Object converted, required Object failures}) => '${converted} (${failures} uğursuz)',
			'externalPlayer.title' => 'Xarici oynadıcı',
			'externalPlayer.useExternalPlayer' => 'Xarici oynadıcı istifadə et',
			'externalPlayer.useExternalPlayerDescription' => 'Videoları başqa tətbiqdə açın',
			'externalPlayer.selectPlayer' => 'Oynadıcı seç',
			'externalPlayer.customPlayers' => 'Xüsusi oynadıcılar',
			'externalPlayer.systemDefault' => 'Sistem defoltu',
			'externalPlayer.addCustomPlayer' => 'Xüsusi oynadıcı əlavə et',
			'externalPlayer.playerName' => 'Oynadıcı adı',
			'externalPlayer.playerNameHint' => 'Mənim oynadıcım',
			'externalPlayer.playerCommand' => 'Əmr',
			'externalPlayer.playerPackage' => 'Paket adı',
			'externalPlayer.playerUrlScheme' => 'URL sxemi',
			'externalPlayer.off' => 'Söndürülüb',
			'externalPlayer.launchFailed' => 'Xarici oynadıcı açıla bilmədi',
			'externalPlayer.appNotInstalled' => ({required Object name}) => '${name} quraşdırılmayıb',
			'externalPlayer.playInExternalPlayer' => 'Xarici oynadıcıda oynat',
			'metadataEdit.editMetadata' => 'Düzəliş et...',
			'metadataEdit.screenTitle' => 'Meta-məlumatlara düzəliş et',
			'metadataEdit.basicInfo' => 'Əsas məlumatlar',
			'metadataEdit.artwork' => 'Şəkillər/Posterlər',
			'metadataEdit.advancedSettings' => 'Təkmilləşdirilmiş tənzimləmələr',
			'metadataEdit.title' => 'Başlıq',
			'metadataEdit.sortTitle' => 'Sıralama başlığı',
			'metadataEdit.originalTitle' => 'Orijinal başlıq',
			'metadataEdit.releaseDate' => 'Buraxılış tarixi',
			'metadataEdit.contentRating' => 'Məzmun reytinqi',
			'metadataEdit.studio' => 'Studiya',
			'metadataEdit.tagline' => 'Deviz/Slogan',
			'metadataEdit.summary' => 'Məzmun/Xülasə',
			'metadataEdit.poster' => 'Poster',
			'metadataEdit.background' => 'Arxa fon',
			'metadataEdit.logo' => 'Loqo',
			'metadataEdit.squareArt' => 'Kvadrat şəkil',
			'metadataEdit.selectPoster' => 'Poster seç',
			'metadataEdit.selectBackground' => 'Arxa fon seç',
			'metadataEdit.selectLogo' => 'Loqo seç',
			'metadataEdit.selectSquareArt' => 'Kvadrat şəkil seç',
			'metadataEdit.fromUrl' => 'URL-dən',
			'metadataEdit.uploadFile' => 'Fayl yüklə',
			'metadataEdit.enterImageUrl' => 'Şəkil URL-i daxil edin',
			'metadataEdit.imageUrl' => 'Şəkil URL-i',
			'metadataEdit.metadataUpdated' => 'Meta-məlumatlar yeniləndi',
			'metadataEdit.metadataUpdateFailed' => 'Meta-məlumatlar yenilənə bilmədi',
			'metadataEdit.artworkUpdated' => 'Şəkillər yeniləndi',
			'metadataEdit.artworkUpdateFailed' => 'Şəkillər yenilənə bilmədi',
			'metadataEdit.noArtworkAvailable' => 'Şəkil əlçatan deyil',
			'metadataEdit.artworkOption' => ({required Object index}) => 'Şəkil seçimi ${index}',
			'metadataEdit.selectedArtworkOption' => ({required Object index}) => 'Şəkil seçimi ${index}, seçildi',
			'metadataEdit.notSet' => 'Təyin edilməyib',
			'metadataEdit.libraryDefault' => 'Kitabxana defoltu',
			'metadataEdit.accountDefault' => 'Hesab defoltu',
			'metadataEdit.seriesDefault' => 'Serial defoltu',
			'metadataEdit.episodeSorting' => 'Seriya sıralaması',
			'metadataEdit.oldestFirst' => 'Əvvəlcə ən köhnə',
			'metadataEdit.newestFirst' => 'Əvvəlcə ən yeni',
			'metadataEdit.keep' => 'Saxla',
			'metadataEdit.allEpisodes' => 'Bütün seriyalar',
			'metadataEdit.latestEpisodes' => ({required Object count}) => 'Ən son ${count} seriya',
			'metadataEdit.latestEpisode' => 'Ən son seriya',
			'metadataEdit.episodesAddedPastDays' => ({required Object count}) => 'Son ${count} gündə əlavə olunan seriyalar',
			'metadataEdit.deleteAfterPlaying' => 'Oynatdıqdan sonra seriyaları sil',
			'metadataEdit.never' => 'Heç vaxt',
			'metadataEdit.afterADay' => 'Bir gün sonra',
			'metadataEdit.afterAWeek' => 'Bir həftə sonra',
			'metadataEdit.afterAMonth' => 'Bir ay sonra',
			'metadataEdit.onNextRefresh' => 'Növbəti yenilənmədə',
			'metadataEdit.seasons' => 'Mövsümlər',
			'metadataEdit.show' => 'Göstər',
			'metadataEdit.hide' => 'Gizlət',
			'metadataEdit.episodeOrdering' => 'Seriya ardıcıllığı',
			'metadataEdit.tmdbAiring' => 'The Movie Database (Yayımlanma)',
			'metadataEdit.tvdbAiring' => 'TheTVDB (Yayımlanma)',
			'metadataEdit.tvdbAbsolute' => 'TheTVDB (Mütləq)',
			'metadataEdit.metadataLanguage' => 'Meta-məlumat dili',
			'metadataEdit.useOriginalTitle' => 'Orijinal başlığı istifadə et',
			'metadataEdit.preferredAudioLanguage' => 'Üstünlük verilən səs dili',
			'metadataEdit.preferredSubtitleLanguage' => 'Üstünlük verilən altyazı dili',
			'metadataEdit.subtitleMode' => 'Avtomatik altyazı seçim rejimi',
			'metadataEdit.manuallySelected' => 'Əl ilə seçilmiş',
			'metadataEdit.shownWithForeignAudio' => 'Xarici səs olduqda göstərilən',
			'metadataEdit.alwaysEnabled' => 'Həmişə aktivdir',
			'metadataEdit.tags' => 'Teqlər',
			'metadataEdit.addTag' => 'Teq əlavə et',
			'metadataEdit.genre' => 'Janr',
			'metadataEdit.director' => 'Rejissor',
			'metadataEdit.writer' => 'Ssenarist',
			'metadataEdit.producer' => 'Prodüser',
			'metadataEdit.country' => 'Ölkə',
			'metadataEdit.collection' => 'Kolleksiya',
			'metadataEdit.label' => 'Etiket',
			'metadataEdit.quickTag' => 'Sürətli etiket...',
			'matchScreen.match' => 'Uyğunlaşdır...',
			'matchScreen.fixMatch' => 'Uyğunluğu düzəlt...',
			'matchScreen.unmatch' => 'Uyğunluğu ləğv et',
			'matchScreen.unmatchConfirm' => 'Bu uyğunluq təmizlənsin? Yenidən uyğunlaşdırılana qədər Plex onu uyğunlaşdırılmamış sayacaq.',
			'matchScreen.unmatchSuccess' => 'Element uyğunluğu ləğv edildi',
			'matchScreen.unmatchFailed' => 'Uyğunluq ləğv edilə bilmədi',
			'matchScreen.matchApplied' => 'Uyğunluq tətbiq edildi',
			'matchScreen.matchFailed' => 'Uyğunluq tətbiq edilə bilmədi',
			'matchScreen.titleHint' => 'Ad',
			'matchScreen.yearHint' => 'İl',
			'matchScreen.search' => 'Axtar',
			'matchScreen.noMatchesFound' => 'Uyğunluq tapılmadı',
			'serverTasks.title' => 'Server tapşırıqları',
			'serverTasks.failedToLoad' => 'Tapşırıqlar yüklənə bilmədi',
			'serverTasks.noTasks' => 'İcra olunan tapşırıq yoxdur',
			'trakt.title' => 'Trakt',
			'trakt.connected' => 'Qoşuldu',
			'trakt.connectedAs' => ({required Object username}) => '@${username} olaraq qoşuldu',
			'trakt.disconnectConfirm' => 'Trakt hesabı ayırılsın?',
			'trakt.disconnectConfirmBody' => 'Luroka Trakt-a məlumat göndərməyi dayandıracaq.',
			'trakt.scrobble' => 'Real vaxt rejimində izləmə',
			'trakt.scrobbleDescription' => 'Oynatma zamanı Trakt-a məlumat göndər.',
			'trakt.watchedSync' => 'Baxış statusunu eyniləşdir',
			'trakt.watchedSyncDescription' => 'Luroka-də baxıldı işarələdikdə Trakt-da da işarələnsin.',
			'seerr.title' => 'Seerr',
			'seerr.connectTitle' => 'Seerr qoş',
			'seerr.serverUrl' => 'Server URL-i',
			'seerr.serverUrlHelper' => 'Seerr ünvanınız',
			'seerr.checkServer' => 'Davam et',
			'seerr.signInWithJellyfin' => 'Jellyfin ilə daxil ol',
			'seerr.signInWithEmby' => 'Emby ilə daxil ol',
			'seerr.signInWithLocal' => 'Yerli hesab istifadə et',
			'seerr.email' => 'E-poçt',
			'seerr.noSignInMethods' => 'Bu Seerr dəstəklənən daxil olma üsulu təklif etmir.',
			'seerr.instance' => 'Nüsxə',
			'seerr.disconnectConfirm' => 'Seerr ayırılsın?',
			'seerr.disconnectConfirmBody' => 'Luroka bu Seerr serverini unudacaq. İstənilən vaxt yenidən qoşula bilərsiniz.',
			'seerr.request' => 'Sorğu göndər',
			'seerr.request4k' => '4K sorğu göndər',
			'seerr.seasons' => 'Mövsümlər',
			'seerr.allSeasons' => 'Bütün mövsümlər',
			'seerr.advancedOptions' => 'Təkmilləşdirilmiş',
			'seerr.destinationServer' => 'Hədəf server',
			'seerr.qualityProfile' => 'Keyfiyyət profili',
			'seerr.rootFolder' => 'Kök qovluq',
			'seerr.languageProfile' => 'Dil profili',
			'seerr.tags' => 'Teqlər',
			'seerr.noTags' => 'Teq yoxdur',
			'seerr.defaultOption' => ({required Object name}) => '${name} (Defolt)',
			'seerr.animeNote' => 'Bu serial animedir.',
			'seerr.requestSubmitted' => 'Sorğu göndərildi',
			'seerr.requestFailed' => ({required Object error}) => 'Sorğu uğursuz oldu: ${error}',
			'seerr.requestsLoadFailed' => 'Seçimlər yüklənə bilmədi',
			'seerr.nothingToRequest' => 'Hər şey artıq var və ya sorğu göndərilib.',
			'seerr.statusAvailable' => 'Əlçatandır',
			'seerr.statusPartiallyAvailable' => 'Hissəvi əlçatandır',
			'seerr.statusRequested' => 'Sorğu göndərildi',
			'seerr.statusProcessing' => 'Emal edilir',
			_ => null,
		} ?? switch (path) {
			'seerr.statusBlocklisted' => 'Bloklanmış',
			'seerr.couldNotReach' => ({required Object url, required Object error}) => '${url} ünvanına çatmaq olmadı: ${error}',
			'seerr.noInstanceAtUrl' => ({required Object url, required Object status}) => '${url} ünvanında Seerr instansiyası yoxdur (HTTP ${status})',
			'seerr.behindAuthProxy' => 'Seerr əvəzinə autentifikasiya edən tərs proksi (SSO və ya HTTP auth) cavab verdi. Luroka onun vasitəsilə daxil ola bilmir: bu tətbiq üçün Seerr-in /api/v1 yolunun proksini yan keçməsinə icazə verin və ya Seerr-ə birbaşa çatan ünvan istifadə edin.',
			'seerr.invalidUrl' => 'https://seerr.example.com kimi server ünvanı daxil edin',
			'seerr.quickConnectUnsupported' => 'Bu Seerr nüsxəsi Sürətli Qoşulmanı dəstəkləmir. Seerr 3.4 və ya daha yeni versiya tələb olunur.',
			'seerr.notInitialized' => 'Bu Seerr instansiyasının ilkin quraşdırılması tamamlanmayıb',
			'seerr.noPlexTokenForReauth' => 'Yenidən daxil olmaq üçün Plex tokeni mövcud deyil',
			'seerr.noStoredCredentials' => 'Yenidən daxil olmaq üçün yadda saxlanmış giriş məlumatları mövcud deyil',
			'seerr.signInRejected' => 'Daxil olma rədd edildi',
			'seerr.noSessionCookie' => 'Seerr sessiya kukisi yaratmadı',
			'seerr.freshCookieRejected' => 'Seerr yeni sessiya kukisini rədd etdi',
			'seerr.noUserInformation' => 'Seerr istifadəçi məlumatlarını qaytarmadı',
			'seerr.sessionRejectedAfterReauth' => 'Yenidən daxil olduqdan sonra sessiya rədd edildi',
			'seerr.permissionDenied' => 'Seerr bu əməliyyatı rədd etdi: hesabınızda artıq tələb olunan icazə yoxdur',
			'seerr.permissionRevoked' => 'Bunu sorğulamaq üçün artıq icazəniz yoxdur',
			'services.title' => 'Xidmətlər',
			'services.hubSubtitle' => 'İzləmə tərəqqisini eyniləşdirin və yeni başlıqlar sorğulayın.',
			'services.discoverySection' => 'Kəşf və sorğular',
			'services.trackingSection' => 'Baxış izləmə və siyahılar',
			'services.seerrDescription' => 'Seerr serverinizdə film və serialları tapın və sorğu göndərin.',
			'services.tmdbDescription' => 'Filmləri və serialları, posterləri, reytinqləri və təfərrüatları kəşf edin.',
			'services.traktDescription' => 'Film və serialları izləyin, baxış statusunu sinxronlaşdırın və izləmə siyahınızı idarə edin.',
			'services.malDescription' => 'Anime siyahınızı və baxış gedişatınızı sinxron saxlayın.',
			'services.anilistDescription' => 'Anime izləyin və baxış gedişatınızı AniList ilə sinxronlaşdırın.',
			'services.simklDescription' => 'Film, serial və animelərinizi Simkl ilə izləyin.',
			'services.mdblistDescription' => 'MDBList siyahılarınızı və film reytinqlərinizi qoşun.',
			'services.connectionIntro' => ({required Object service}) => '${service} xidmətini cari Luroka profilinizə qoşun. Bu bağlantını və seçimlərini istənilən vaxt buradan idarə edə bilərsiniz.',
			'services.connectService' => ({required Object service}) => '${service} xidmətini qoşun',
			'services.seerrConnectDescription' => 'Luroka daxilində film və serialları tapmaq və sorğu göndərmək üçün Seerr serverinizi qoşun.',
			'services.seerrServerStep' => 'Seerr-i açmaq üçün istifadə etdiyiniz ünvanı daxil edin. Serverinizin hansı giriş üsullarını dəstəklədiyini yoxlayacağıq.',
			'services.seerrSignInStep' => 'Serverinizin dəstəklədiyi giriş üsulunu seçin.',
			'services.integrations' => 'İnteqrasiyalar',
			'services.notConnected' => 'Qoşulmayıb',
			'services.connectedAs' => ({required Object username}) => '@${username} olaraq qoşuldu',
			'services.scrobble' => 'Tərəqqini avtomatik izlə',
			'services.scrobbleDescription' => 'Bir epizodu və ya filmi bitirdikdə siyahınızı yeniləyin.',
			'services.disconnectConfirm' => ({required Object service}) => '${service} ayırılsın?',
			'services.disconnectConfirmBody' => ({required Object service}) => 'Luroka ${service} yeniləməyi dayandıracaq. İstənilən vaxt yenidən qoşula bilərsiniz.',
			'services.connectFailed' => ({required Object service}) => '${service} qoşula bilmədi. Təzədən cəhd edin.',
			'services.names.mal' => 'MyAnimeList',
			'services.names.anilist' => 'AniList',
			'services.names.simkl' => 'Simkl',
			'services.names.seerr' => 'Seerr',
			'services.names.mdblist' => 'MDBList',
			'services.simklReconnect.title' => 'Simkl-ni yenidən birləşdirin',
			'services.simklReconnect.subtitle' => 'Simkl bu əlaqənin istifadə etdiyi giriş metodunu ləğv edir. Yenidən qoşulma simkl.com-u Luroka-nu təsdiqləmək üçün açır — Luroka heç vaxt parolunuzu görmür. Baxış tarixçəniz Simkl-da qalır.',
			'services.deviceCode.title' => ({required Object service}) => 'Luroka-ni ${service} üzərində aktivləşdirin',
			'services.deviceCode.instructions' => 'QR kodunu skan edin və ya aşağıdakı ünvana keçib bu kodu daxil edin:',
			'services.deviceCode.openToActivate' => ({required Object service}) => 'Aktivləşdirmək üçün ${service} açın',
			'services.deviceCode.copyCode' => 'Aktivləşdirmə kodunu kopyala',
			'services.deviceCode.waitingForAuthorization' => 'Səlahiyyət gözlənilir…',
			'services.deviceCode.codeCopied' => 'Kod kopyalandı',
			'services.oauthProxy.title' => ({required Object service}) => '${service} xidmətinə daxil olun',
			'services.oauthProxy.body' => 'Bu QR kodu skan edin və ya URL-i açın.',
			'services.oauthProxy.openToSignIn' => ({required Object service}) => 'Daxil olmaq üçün ${service} açın',
			'services.pendingAuth.copyUrl' => 'Daxil olma URL-ini kopyala',
			'services.pendingAuth.urlCopied' => 'URL kopyalandı',
			'services.libraryFilter.title' => 'Kitabxana filtri',
			'services.libraryFilter.subtitleAllSyncing' => 'Bütün kitabxanalar eyniləşdirilir',
			'services.libraryFilter.subtitleNoneSyncing' => 'Heç nə eyniləşdirilmir',
			'services.libraryFilter.subtitleBlocked' => ({required Object count}) => '${count} bloklandı',
			'services.libraryFilter.subtitleAllowed' => ({required Object count}) => '${count} icazə verildi',
			'services.libraryFilter.mode' => 'Filtr rejimi',
			'services.libraryFilter.modeBlacklist' => 'Qara siyahı',
			'services.libraryFilter.modeWhitelist' => 'Ağ siyahı',
			'services.libraryFilter.modeHintBlacklist' => 'Aşağıda seçilənlərdən başqa bütün kitabxanaları eyniləşdir.',
			'services.libraryFilter.modeHintWhitelist' => 'Yalnız aşağıda seçilən kitabxanaları eyniləşdir.',
			'services.libraryFilter.libraries' => 'Kitabxanalar',
			'services.libraryFilter.noLibraries' => 'Kitabxana yoxdur',
			'offlineRecovery.title' => 'Serverləriniz oflayndır',
			'offlineRecovery.description' => 'Endirmələriniz hələ də əlçatandır. Serveriniz geri qayıtdıqda yenidən qoşulmağa cəhd edin və ya başqa server əlavə edin.',
			'offlineRecovery.appleTvDescription' => 'Luroka media serverlərinizə daxil ola bilmədi. Onlar əlçatan olduqda yenidən qoşulmağa cəhd edin və ya baxmağa davam etmək üçün başqa server əlavə edin.',
			'offlineRecovery.kidsDescription' => 'Media serverinizlə əlaqə saxlaya bilmədik. Yenidən qoşulmağa çalışın və ya valideyndən kömək istəyin.',
			'offlineRecovery.retrying' => 'Qoşulur...',
			'offlineRecovery.addServer' => 'Server əlavə edin',
			'releaseUpdates.manualInstructions' => 'GitHub-dən buraxılış arxivini endirin, APK-ni çıxarın və Android cihazınıza quraşdırın.',
			'releaseUpdates.tvInstructions' => 'Bu ünvanı telefonunuzda və ya kompüterinizdə açın və ya buraxılışı yükləmək üçün QR kodunu skan edin.',
			'releaseUpdates.pressBackAgain' => 'Oxutmadan çıxmaq üçün yenidən Geri düyməsini basın',
			'profileIntegrations.title' => 'Luroka-nu özünüz edin',
			'profileIntegrations.description' => 'Baxdıqlarınızı izləmək və yeni filmlər və şoular tələb etmək üçün sevimli xidmətlərinizi birləşdirin. Hər bir Luroka profilinin öz əlaqələri var.',
			'profileIntegrations.step' => 'Könüllü inteqrasiyalar',
			'profileIntegrations.examples' => 'Trakt · Simkl · AniList · MyAnimeList · Seerr',
			'profileIntegrations.connect' => 'İnteqrasiyaları araşdırın',
			'profileIntegrations.later' => 'Daha sonra quraşdırın',
			'profileIntegrations.manage' => 'İnteqrasiyaları idarə edin',
			'profileIntegrations.forProfile' => ({required Object name}) => '${name} üçün bağlantılar',
			'profileSetupGuide.title' => 'Profilinizi özünüz edin',
			'profileSetupGuide.description' => 'Luroka-nun bu cihazda bu profilin necə göründüyünü və hiss etdiyini seçin. Daha sonra Ayarlar bölməsində hər şeyi dəyişə bilərsiniz.',
			'profileSetupGuide.appearanceStep' => '1 / 2 · Görünüş',
			'profileSetupGuide.homeStep' => '2/2 · Əsas ekranınız',
			'profileSetupGuide.preview' => 'Önizləmə',
			'profileSetupGuide.previewTitle' => 'Eviniz',
			'profileSetupGuide.previewPoster' => 'Poster',
			'profileSetupGuide.posterArtwork' => 'Yalnız sənət əsəri',
			'profileSetupGuide.posterWithDetails' => 'Poster təfərrüatlarını göstərin',
			'profileSetupGuide.musicDescription' => 'Film və ya şounun mövzusunu onun təfərrüatları səhifəsi açıq olduqda, mümkün olduqda oynayın.',
			'profileSetupGuide.moreThemes' => 'Daha çox mövzu',
			'profileSetupGuide.fewerThemes' => 'Daha az mövzu',
			'profileSetupGuide.spotlightHeading' => 'Spotlight-da nə görünməlidir?',
			'profileSetupGuide.progressHeading' => 'Baxmağa Davam Et və Sonrası',
			'profileSetupGuide.skip' => 'Defoltlardan istifadə edin və baxmağa başlayın',
			'profileSetupGuide.finish' => 'Baxmağa başlayın',
			'profileSetupGuide.back' => 'Geri',
			'profileSetupGuide.kContinue' => 'Davam et',
			'profileSetupGuide.chooseLater' => 'Daha sonra kitabxanaları seçin',
			'profileSetupGuide.libraryScope' => 'Bu, bu profil üçün Luroka-da görünənləri dəyişir; server icazələrini dəyişmir.',
			'profileSetupGuide.createdTitle' => 'Profil yaradıldı',
			'profileSetupGuide.createdDescription' => 'Yeni profiliniz hazırdır. Onun sahibi onu ilk dəfə açanda fərdiləşdirə bilər.',
			'profileSetupGuide.switchProfile' => 'Bu profilə keçin',
			'profileSetupGuide.stayHere' => 'Cari profildə qalın',
			'animeFavorites.filter' => 'Anime',
			'animeFavorites.manage' => 'Anime idarə et',
			'animeFavorites.description' => 'Avtomatik aşkarlama anime kitabxana adlarından və mövcud anime teqlərindən və ya identifikatorlarından istifadə edir. Kitabxanaları seçin və fərdi sevimliləri düzəldin. Seçimlər profiliniz üçün bu cihazda yadda saxlanılır.',
			'animeFavorites.libraries' => 'Anime kitabxanaları',
			'animeFavorites.libraryHint' => 'Anime adlı kitabxanalar avtomatik olaraq tanınır. Təsnifatını dəyişmək üçün kitabxana seçin.',
			'animeFavorites.titles' => 'Sevimli başlıqlar',
			'animeFavorites.titleHint' => 'Onu anime kimi qeyd etmək və ya avtomatik uyğunluğu düzəltmək üçün başlıq seçin.',
			'animeFavorites.automatic' => 'Avtomatik',
			'animeFavorites.include' => 'Anime',
			'animeFavorites.exclude' => 'Anime deyil',
			'animeFavorites.automaticIncluded' => 'Avtomatik · Anime',
			'animeFavorites.automaticExcluded' => 'Avtomatik · Anime deyil',
			'animeFavorites.noLibraries' => 'Əlçatan bağlı kitabxana yoxdur.',
			'animeFavorites.noTitles' => 'Sevimli filmlər və ya şoular yoxdur.',
			'animeFavorites.empty' => 'Sevimli anime tapılmadı. Anime kitabxanalarınızı yoxlayın və ya başlığı anime kimi qeyd edin.',
			'animeFavorites.saveFailed' => 'Anime parametrlərini saxlamaq mümkün olmadı. Yenidən cəhd edin.',
			'addServer.addMediaBrowserTitle' => ({required Object product}) => '${product} serveri əlavə et',
			'addServer.serverUrls' => 'Server URL-ləri',
			'addServer.serverUrlsHelper' => 'Vergüllə ayrılmış bir neçə URL-ə icazə verilir.',
			'addServer.findServer' => 'Server tap',
			'addServer.searchingLocalMediaBrowserServers' => ({required Object product}) => 'Yerli ${product} serverləri axtarılır...',
			'addServer.localMediaBrowserServers' => ({required Object product}) => 'Saxlanılan və yaxınlıqdakı ${product} serverləri',
			'addServer.username' => 'İstifadəçi adı',
			'addServer.password' => 'Şifrə',
			'addServer.signIn' => 'Daxil ol',
			'addServer.change' => 'Dəyişdir',
			'addServer.required' => 'Tələb olunur',
			'addServer.couldNotReachServer' => ({required Object error}) => 'Serverə çatmaq olmadı: ${error}',
			'addServer.signInFailed' => ({required Object error}) => 'Daxil olma uğursuz oldu: ${error}',
			'addServer.quickConnectFailed' => ({required Object error}) => 'Sürətli Qoşulma uğursuz oldu: ${error}',
			'addServer.addPlexTitle' => 'Plex ilə daxil ol',
			'addServer.pinExpired' => 'PIN-in vaxtı bitdi. Lütfən təzədən cəhd edin.',
			'addServer.failedToRegisterAccount' => ({required Object error}) => 'Hesab qeydiyyatı uğursuz oldu: ${error}',
			'addServer.enterMediaBrowserUrlError' => ({required Object product}) => '${product} server URL-inizi daxil edin',
			'addServer.addConnectionTitle' => 'Qoşulma əlavə et',
			'addServer.addConnectionTitleScoped' => ({required Object name}) => '${name} profilinə əlavə et',
			'addServer.signInWithPlexCard' => 'Plex ilə daxil ol',
			'addServer.signInWithPlexCardSubtitle' => 'Bu cihazı səlahiyyətləndirin. Paylaşılan serverlər əlavə olunur.',
			'addServer.signInWithPlexCardSubtitleScoped' => 'Plex hesabını səlahiyyətləndirin. Əsas səhifə istifadəçiləri profillərə çevrilir.',
			'addServer.connectToMediaBrowserCard' => ({required Object product}) => '${product}-a qoşul',
			'addServer.connectToMediaBrowserCardSubtitle' => 'Server URL-inizi, istifadəçi adınızı və şifrənizi daxil edin.',
			'addServer.connectToMediaBrowserCardSubtitleScoped' => ({required Object product, required Object name}) => '${product} serverinizə daxil olun. ${name} ilə əlaqələndirilir.',
			'addServer.borrowFromAnotherProfile' => 'Başqa profildən götür',
			'addServer.borrowFromAnotherProfileSubtitle' => 'Başqa profilin qoşulmasını yenidən istifadə edin. PIN ilə qorunan profillər PIN tələb edir.',
			'addServer.invalidCredentials' => 'İstifadəçi adı və ya şifrə yanlışdır',
			'addServer.authResponseNotJson' => 'Autentifikasiya cavabı etibarlı JSON deyildi',
			'addServer.authResponseIncomplete' => 'Serverin giriş cavabı natamam idi',
			'addServer.quickConnectRejected' => 'Quick Connect server tərəfindən rədd edildi',
			'addServer.quickConnectNotJson' => 'Quick Connect cavabı etibarlı JSON deyildi',
			'addServer.quickConnectMissingFields' => 'Quick Connect cavabında kod və ya məxfi açar yoxdur',
			'addServer.quickConnectPollRejected' => 'Quick Connect sorğulaması server tərəfindən rədd edildi',
			'addServer.serverTimedOut' => 'Server vaxtında cavab vermədi',
			'addServer.responseNotJson' => 'Server cavabı etibarlı JSON deyildi',
			'addServer.responseMissingIdentity' => ({required Object product}) => 'Cavabda ID və ya server adı yoxdur — bu, ${product} serveridir?',
			'addServer.probeFailed' => ({required Object error}) => 'Serverə çatmaq olmadı: ${error}',
			'addServer.enterAtLeastOneUrl' => ({required Object product}) => 'Ən azı bir ${product} server URL-i daxil edin',
			'addServer.noReachableServer' => ({required Object product}) => 'Əlçatan ${product} serveri tapılmadı',
			'addServer.urlsPointToDifferentServers' => ({required Object product}) => 'Bu URL-lər fərqli ${product} serverlərinə aiddir',
			'addServer.urlDoesNotMatchServer' => ({required Object product}) => 'Bu URL ${product} serverinə uyğun gəlmir',
			'addServer.redirectUnsupported' => 'Server dəstəklənməyən URL-ə yönləndirdi',
			'addServer.redirectDifferentHost' => ({required Object product}) => 'Server başqa hosta yönləndirdi. Son ${product} URL-ni birbaşa daxil edin.',
			'addServer.redirectInsecure' => 'Server HTTPS-dən təhlükəsiz olmayan URL-ə yönləndirdi',
			'addServer.redirectUnsupportedEnterFinal' => ({required Object product}) => 'Server dəstəklənməyən URL-ə yönləndirdi. Son ${product} URL-ni birbaşa daxil edin.',
			_ => null,
		};
	}
}
