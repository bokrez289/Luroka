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
class TranslationsUz extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsUz({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.uz,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <uz>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsUz _root = this; // ignore: unused_field

	@override 
	TranslationsUz $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsUz(meta: meta ?? this.$meta);

	// Translations
	@override late final _Translations$mobileLibrary$uz mobileLibrary = _Translations$mobileLibrary$uz._(_root);
	@override late final _Translations$profileStartup$uz profileStartup = _Translations$profileStartup$uz._(_root);
	@override late final _Translations$subtitleUpload$uz subtitleUpload = _Translations$subtitleUpload$uz._(_root);
	@override late final _Translations$personSpotlight$uz personSpotlight = _Translations$personSpotlight$uz._(_root);
	@override late final _Translations$detailExtras$uz detailExtras = _Translations$detailExtras$uz._(_root);
	@override late final _Translations$mobileUi$uz mobileUi = _Translations$mobileUi$uz._(_root);
	@override late final _Translations$family$uz family = _Translations$family$uz._(_root);
	@override late final _Translations$posterDetails$uz posterDetails = _Translations$posterDetails$uz._(_root);
	@override late final _Translations$libraryPolish$uz libraryPolish = _Translations$libraryPolish$uz._(_root);
	@override late final _Translations$showSchedule$uz showSchedule = _Translations$showSchedule$uz._(_root);
	@override late final _Translations$awardsCatalog$uz awardsCatalog = _Translations$awardsCatalog$uz._(_root);
	@override late final _Translations$searchDiscovery$uz searchDiscovery = _Translations$searchDiscovery$uz._(_root);
	@override late final _Translations$lurokaPlayerDesign$uz lurokaPlayerDesign = _Translations$lurokaPlayerDesign$uz._(_root);
	@override late final _Translations$lurokaWorkspace$uz lurokaWorkspace = _Translations$lurokaWorkspace$uz._(_root);
	@override late final _Translations$mobileFixes$uz mobileFixes = _Translations$mobileFixes$uz._(_root);
	@override late final _Translations$downloadsRedesign$uz downloadsRedesign = _Translations$downloadsRedesign$uz._(_root);
	@override late final _Translations$kidsShelf$uz kidsShelf = _Translations$kidsShelf$uz._(_root);
	@override late final _Translations$kidsHome$uz kidsHome = _Translations$kidsHome$uz._(_root);
	@override late final _Translations$tvSettingsV2$uz tvSettingsV2 = _Translations$tvSettingsV2$uz._(_root);
	@override late final _Translations$settingsRedesign$uz settingsRedesign = _Translations$settingsRedesign$uz._(_root);
	@override late final _Translations$onboarding$uz onboarding = _Translations$onboarding$uz._(_root);
	@override late final _Translations$household$uz household = _Translations$household$uz._(_root);
	@override late final _Translations$detailComposition$uz detailComposition = _Translations$detailComposition$uz._(_root);
	@override late final _Translations$kids$uz kids = _Translations$kids$uz._(_root);
	@override late final _Translations$lurokaDiscovery$uz lurokaDiscovery = _Translations$lurokaDiscovery$uz._(_root);
	@override late final _Translations$app$uz app = _Translations$app$uz._(_root);
	@override late final _Translations$appIcon$uz appIcon = _Translations$appIcon$uz._(_root);
	@override late final _Translations$auth$uz auth = _Translations$auth$uz._(_root);
	@override late final _Translations$common$uz common = _Translations$common$uz._(_root);
	@override late final _Translations$tvHints$uz tvHints = _Translations$tvHints$uz._(_root);
	@override late final _Translations$screens$uz screens = _Translations$screens$uz._(_root);
	@override late final _Translations$mediaExtras$uz mediaExtras = _Translations$mediaExtras$uz._(_root);
	@override late final _Translations$update$uz update = _Translations$update$uz._(_root);
	@override late final _Translations$supporter$uz supporter = _Translations$supporter$uz._(_root);
	@override late final _Translations$settings$uz settings = _Translations$settings$uz._(_root);
	@override late final _Translations$themeEditor$uz themeEditor = _Translations$themeEditor$uz._(_root);
	@override late final _Translations$seriesBrowser$uz seriesBrowser = _Translations$seriesBrowser$uz._(_root);
	@override late final _Translations$titlePage$uz titlePage = _Translations$titlePage$uz._(_root);
	@override late final _Translations$tvMenus$uz tvMenus = _Translations$tvMenus$uz._(_root);
	@override late final _Translations$lurokaPlayer$uz lurokaPlayer = _Translations$lurokaPlayer$uz._(_root);
	@override late final _Translations$lurokaSettings$uz lurokaSettings = _Translations$lurokaSettings$uz._(_root);
	@override late final _Translations$playerChrome$uz playerChrome = _Translations$playerChrome$uz._(_root);
	@override late final _Translations$tvLayout$uz tvLayout = _Translations$tvLayout$uz._(_root);
	@override late final _Translations$studios$uz studios = _Translations$studios$uz._(_root);
	@override late final _Translations$dashboard$uz dashboard = _Translations$dashboard$uz._(_root);
	@override late final _Translations$lurokaCatalog$uz lurokaCatalog = _Translations$lurokaCatalog$uz._(_root);
	@override late final _Translations$referenceDetails$uz referenceDetails = _Translations$referenceDetails$uz._(_root);
	@override late final _Translations$lurokaThemes$uz lurokaThemes = _Translations$lurokaThemes$uz._(_root);
	@override late final _Translations$customPerformance$uz customPerformance = _Translations$customPerformance$uz._(_root);
	@override late final _Translations$homeLayout$uz homeLayout = _Translations$homeLayout$uz._(_root);
	@override late final _Translations$screenTime$uz screenTime = _Translations$screenTime$uz._(_root);
	@override late final _Translations$activityStats$uz activityStats = _Translations$activityStats$uz._(_root);
	@override late final _Translations$search$uz search = _Translations$search$uz._(_root);
	@override late final _Translations$hotkeys$uz hotkeys = _Translations$hotkeys$uz._(_root);
	@override late final _Translations$fileInfo$uz fileInfo = _Translations$fileInfo$uz._(_root);
	@override late final _Translations$mediaMenu$uz mediaMenu = _Translations$mediaMenu$uz._(_root);
	@override late final _Translations$rateSheet$uz rateSheet = _Translations$rateSheet$uz._(_root);
	@override late final _Translations$accessibility$uz accessibility = _Translations$accessibility$uz._(_root);
	@override late final _Translations$tooltips$uz tooltips = _Translations$tooltips$uz._(_root);
	@override late final _Translations$audioTracks$uz audioTracks = _Translations$audioTracks$uz._(_root);
	@override late final _Translations$videoControls$uz videoControls = _Translations$videoControls$uz._(_root);
	@override late final _Translations$messages$uz messages = _Translations$messages$uz._(_root);
	@override late final _Translations$sourceLibraries$uz sourceLibraries = _Translations$sourceLibraries$uz._(_root);
	@override late final _Translations$subtitlingStyling$uz subtitlingStyling = _Translations$subtitlingStyling$uz._(_root);
	@override late final _Translations$mpvConfig$uz mpvConfig = _Translations$mpvConfig$uz._(_root);
	@override late final _Translations$dialog$uz dialog = _Translations$dialog$uz._(_root);
	@override late final _Translations$profiles$uz profiles = _Translations$profiles$uz._(_root);
	@override late final _Translations$connections$uz connections = _Translations$connections$uz._(_root);
	@override late final _Translations$serversAccounts$uz serversAccounts = _Translations$serversAccounts$uz._(_root);
	@override late final _Translations$accountPreferences$uz accountPreferences = _Translations$accountPreferences$uz._(_root);
	@override late final _Translations$discover$uz discover = _Translations$discover$uz._(_root);
	@override late final _Translations$errors$uz errors = _Translations$errors$uz._(_root);
	@override late final _Translations$libraries$uz libraries = _Translations$libraries$uz._(_root);
	@override late final _Translations$about$uz about = _Translations$about$uz._(_root);
	@override late final _Translations$serverSelection$uz serverSelection = _Translations$serverSelection$uz._(_root);
	@override late final _Translations$hubDetail$uz hubDetail = _Translations$hubDetail$uz._(_root);
	@override late final _Translations$logs$uz logs = _Translations$logs$uz._(_root);
	@override late final _Translations$startup$uz startup = _Translations$startup$uz._(_root);
	@override late final _Translations$licenses$uz licenses = _Translations$licenses$uz._(_root);
	@override late final _Translations$navigation$uz navigation = _Translations$navigation$uz._(_root);
	@override late final _Translations$explore$uz explore = _Translations$explore$uz._(_root);
	@override late final _Translations$liveTv$uz liveTv = _Translations$liveTv$uz._(_root);
	@override late final _Translations$collections$uz collections = _Translations$collections$uz._(_root);
	@override late final _Translations$playlists$uz playlists = _Translations$playlists$uz._(_root);
	@override late final _Translations$music$uz music = _Translations$music$uz._(_root);
	@override late final _Translations$watchTogether$uz watchTogether = _Translations$watchTogether$uz._(_root);
	@override late final _Translations$downloads$uz downloads = _Translations$downloads$uz._(_root);
	@override late final _Translations$shaders$uz shaders = _Translations$shaders$uz._(_root);
	@override late final _Translations$companionRemote$uz companionRemote = _Translations$companionRemote$uz._(_root);
	@override late final _Translations$videoSettings$uz videoSettings = _Translations$videoSettings$uz._(_root);
	@override late final _Translations$performanceOverlay$uz performanceOverlay = _Translations$performanceOverlay$uz._(_root);
	@override late final _Translations$externalPlayer$uz externalPlayer = _Translations$externalPlayer$uz._(_root);
	@override late final _Translations$metadataEdit$uz metadataEdit = _Translations$metadataEdit$uz._(_root);
	@override late final _Translations$matchScreen$uz matchScreen = _Translations$matchScreen$uz._(_root);
	@override late final _Translations$serverTasks$uz serverTasks = _Translations$serverTasks$uz._(_root);
	@override late final _Translations$trakt$uz trakt = _Translations$trakt$uz._(_root);
	@override late final _Translations$seerr$uz seerr = _Translations$seerr$uz._(_root);
	@override late final _Translations$services$uz services = _Translations$services$uz._(_root);
	@override late final _Translations$addServer$uz addServer = _Translations$addServer$uz._(_root);
}

// Path: mobileLibrary
class _Translations$mobileLibrary$uz extends Translations$mobileLibrary$en {
	_Translations$mobileLibrary$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get pickerSubtitle => 'Tadqiq qilish uchun to\'plamni tanlang';
	@override String get searchLibraries => 'Kutubxonalarni qidirish';
	@override String get noLibraries => 'Mos kutubxonalar topilmadi';
	@override String get ascending => 'Ko\'tarilish';
	@override String get descending => 'Pastga tushmoqda';
	@override String get sort => 'Saralash';
	@override String unwatchedCount({required Object count}) => '${count} ko\'rilmagan qismlar';
	@override String get latestEpisode => 'Oxirgi epizod';
}

// Path: profileStartup
class _Translations$profileStartup$uz extends Translations$profileStartup$en {
	_Translations$profileStartup$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get autoLogin => 'Oxirgi ishlatilgan profilni oching';
	@override String get autoLoginHint => 'PIN talab qilmasa, oxirgi profilni avtomatik ravishda oching.';
	@override String get allowKidsExit => 'Ota-ona PIN-kodisiz bolalar profilidan chiqishga ruxsat berish';
	@override String get allowKidsExitHint => 'Bola ota-ona PIN-kodisiz boshqa profilga o‘ta oladi. Profil PIN-kodlari avvalgidek amal qiladi.';
	@override String get chooseKidsConnection => 'Boshqa hisob yoki serverni tanlang';
	@override String get chooseKidsConnectionHint => 'Saqlagandan so\'ng, alohida hisobni ulang yoki boshqa profildan ulanishni tanlang.';
}

// Path: subtitleUpload
class _Translations$subtitleUpload$uz extends Translations$subtitleUpload$en {
	_Translations$subtitleUpload$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get chooseFile => 'Subtitr faylini yuklang';
	@override String get hint => 'Yuqoridagi tilni tanlang, keyin SRT, ASS, SSA yoki VTT faylini ushbu serverga yuklang.';
	@override String get success => 'Subtitr serverga yuklandi. Server elementni yangilaganda paydo bo\'ladi.';
	@override String get failed => 'Subtitrni yuklab bo‘lmadi. Fayl va server ruxsatlarini tekshiring.';
}

// Path: personSpotlight
class _Translations$personSpotlight$uz extends Translations$personSpotlight$en {
	_Translations$personSpotlight$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get inYourLibraries => 'kutubxonalaringizda';
	@override String libraryTitles({required Object n}) => 'Kutubxonalaringizda · ${n} nomlari';
	@override String get readBiography => 'Biografiyani o\'qing';
	@override String get newestFirst => 'Eng yangi birinchi';
	@override String get oldestFirst => 'Eng qadimgi birinchi';
	@override String get titleAscending => 'Sarlavha A–Z';
	@override String get sortTitles => 'Filmografiyani saralash';
	@override String unwatchedEpisodes({required Object n}) => '${n} ko\'rilmagan qismlar';
	@override String copies({required Object n}) => '${n} kutubxona nusxalari';
	@override String versions({required Object n}) => '${n} fayl versiyalari';
	@override String get retryTitles => 'Barcha sarlavhalarni yuklab bo‘lmadi. Qayta urinish';
}

// Path: detailExtras
class _Translations$detailExtras$uz extends Translations$detailExtras$en {
	_Translations$detailExtras$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get onlineVideos => 'Treylerlar va qo\'shimchalar';
	@override String get reviews => 'Sharhlar';
	@override String get readReview => 'To\'liq sharhni o\'qing';
	@override String directedBy({required Object name}) => 'Batafsil rejissyor ${name}';
	@override String get previewUnavailable => 'Bu oldindan ko‘rishni o‘ynatib bo‘lmadi. Buning o\'rniga uni asl ilovasida ochishingiz mumkin.';
	@override String get openExternally => 'Asl videoni oching';
}

// Path: mobileUi
class _Translations$mobileUi$uz extends Translations$mobileUi$en {
	_Translations$mobileUi$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get readMore => 'Batafsil o\'qing';
	@override String get readLess => 'Kamroq ko\'rsating';
	@override String get playbackTools => 'Ijro opsiyalari';
	@override String get streamingQuality => 'Oqim sifati';
	@override String get fileVersions => 'Fayl versiyalari';
	@override String get qualityAndVersions => 'Oqim sifati va fayl versiyalari';
	@override String get hidePlaybackTools => 'Ijro asboblarini yashirish';
	@override String remaining({required Object time}) => '${time} qoldi';
	@override String endsAt({required Object time}) => '${time} da tugaydi';
	@override String get collection => 'Sizning kollektsiyangiz';
	@override String get nowPlaying => 'HOZIR O\'YNALAYMAN';
	@override String get popularLibrary => 'Kutubxonangizda mashhur';
	@override String get weeklyLibrary => 'Bu hafta kutubxonangizda ommabop';
}

// Path: family
class _Translations$family$uz extends Translations$family$en {
	_Translations$family$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profillar va oila';
	@override String get yourPeople => 'Sizning xalqingiz';
	@override String get manageHint => 'Ushbu qurilmada odamlar, bolalar xavfsizligi va koʻrish harakatlarini boshqaring.';
	@override String get people => 'Odamlar';
	@override String peopleCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uz'))(n,
		one: '${n} odam',
		other: '${n} odamlar',
	);
	@override String kidsCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uz'))(n,
		one: '${n} bola',
		other: '${n} bolalar',
	);
	@override String get you => 'Siz';
	@override String get adult => 'Voyaga etgan';
	@override String get child => 'Bola';
	@override String get adultTeen => 'Voyaga etgan yoki o\'smir';
	@override String get adultHint => 'Ularning shaxsiy profili, ixtiyoriy PIN profili va o‘z server ulanishlari.';
	@override String get childHint => 'Yosh cheklovlari, xavfsiz kutubxonalar va bolalarga mos ko‘rinish. Ota-ona PIN-kodi bu sozlamalarni himoya qiladi.';
	@override String upToAge({required Object age}) => '${age} yoshigacha';
	@override String get allAges => 'Barcha yoshdagilar';
	@override String get switchProfile => 'Profilni almashtirish';
	@override String get switchHint => 'Kim tomosha qilayotganini tanlang. Biror kishini boshqarish profillarni almashtirmaydi.';
	@override String get addPerson => 'Odam qo\'shing';
	@override String get addChild => 'Bola qo\'shing';
	@override String get addHint => 'Ushbu qurilmada kattalar, oʻsmirlar yoki bolalar profilini yarating.';
	@override String get emptyPeople => 'Siz bilan birga tomosha qilayotganlar uchun joy ajrating.';
	@override String get emptyKids => 'Hali bolalar profili yoʻq. Yosh chegaralari va xavfsiz kutubxonalarni tanlash uchun bolani qo\'shing.';
	@override String get safety => 'Bolalar va xavfsizlik';
	@override String get safetyHint => 'Ota-ona PIN-kodi, bolalar profillari va yosh cheklovlari.';
	@override String get protection => 'Himoya';
	@override String get kidsProfiles => 'Bolalar profili';
	@override String get backupHistory => 'Zaxira va tarix';
	@override String get parentPinOn => 'Ota-ona PIN-kodi yoqilgan';
	@override String get profilePin => 'Profil PIN-kodi';
	@override String get confirmParentPin => 'Ota-ona PIN-kodini tasdiqlang';
	@override String get parentPinOff => 'Ota-ona PIN-kodi o‘rnatilmagan';
	@override String get missingPin => 'Bu sozlamalarni himoya qilish uchun ota-ona PIN-kodini o‘rnating.';
	@override String get hideScope => 'Ushbu Luroka profilidagi “Ko‘rishni davom ettirish” sahifasida bolalar harakatlarini yashirish. Bu umumiy server tomosha tarixini o\'zgartirmaydi.';
	@override String get localScope => 'Bolalar profillari va cheklovlari ushbu qurilmada saqlanadi. Xuddi shu server hisob qaydnomasidan foydalanadigan profillar hali ham ushbu hisobning tomosha jarayonini baham ko\'rishadi.';
	@override String get clearHistoryConfirm => 'Bolalar tomonidan koʻrilgan sarlavhalar “Koʻrishni davom ettirish”da yana paydo boʻlishiga ruxsat berilsinmi? Bolalar profillari, cheklovlar, koʻrish vaqti statistikasi va server tomoshalari tarixi saqlanadi.';
	@override String get editRestrictions => 'Bolalar cheklovlarini tahrirlash';
	@override String get activity => 'Ko‘rish faoliyati';
	@override String namedActivity({required Object name}) => '${name} ko‘rish faoliyati';
	@override String get thisProfile => 'Bu profil';
	@override String get activityScope => 'Luroka tomonidan ushbu qurilmada faol profil uchun yozib olingan ijro vaqti. Bu ko\'rish cheklovlari yoki to\'liq server tarixi emas, balki statistika.';
	@override String get activityUnavailable => 'Bu profil uchun faollikni ko‘rish hali mavjud emas.';
	@override String get finished => 'Bajarildi';
}

// Path: posterDetails
class _Translations$posterDetails$uz extends Translations$posterDetails$en {
	_Translations$posterDetails$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get showThemeMusic => 'Mavzu musiqasini ijro eting';
	@override String get showThemeMusicDescription => 'Film yoki shou mavzusini serverda mavjud boʻlganda uning tafsilotlari sahifasi ochiq boʻlganda ijro eting.';
	@override String get catalogEpisodeInfo => 'Katalog kartalarida epizodlar soni va ish vaqtini ko\'rsatish';
	@override String get catalogEpisodeInfoDescription => 'Kashf qilish plakatlarida epizodlar soni va oʻrtacha davomiyligini koʻrsating.';
	@override String get title => 'Plakat tafsilotlari';
	@override String get description => 'Studiya, qidiruv, kashfiyot va kutubxonalardagi posterlar ostida nom, yil va IMDb reytingini ko‘rsating. IMDb reytingi bo‘lmasa, u yashirin qoladi. Faqat rasmli posterlar uchun bu sozlamani o‘chiring.';
}

// Path: libraryPolish
class _Translations$libraryPolish$uz extends Translations$libraryPolish$en {
	_Translations$libraryPolish$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get posterDetails => 'Plakat tafsilotlari';
	@override String get showPosterDetails => 'Poster tafsilotlarini ko\'rsatish · ism, yil va IMDb';
	@override String get hidePosterDetails => 'Poster tafsilotlarini yashirish';
	@override String get overview => 'Umumiy koʻrinish';
	@override String get refreshing => 'Kutubxona yangilanmoqda…';
	@override String get serverCollections => 'Ushbu serverdagi barcha to\'plamlar';
	@override String get serverPlaylists => 'Ushbu serverdagi barcha video pleylistlar';
	@override String get libraryCollections => 'Ushbu kutubxonadagi to\'plamlar';
	@override String get searchCollections => 'To\'plamlarni qidirish';
	@override String get searchPlaylists => 'Pleylistlarni qidirish';
	@override String get searchHint => 'Ism bo\'yicha qidirish';
	@override String get titleAscending => 'Sarlavha A–Z';
	@override String get titleDescending => 'Sarlavha Z–A';
	@override String get clearFilters => 'Filtrlarni tozalash';
	@override String get playlistEmptyTitle => 'Kino kechalaringiz, sizning tartibda';
	@override String get playlistEmptyHint => 'Sarlavhaning Ko\'proq menyusini oching va birinchi pleylistingizni yaratish uchun Pleylistga qo\'shish-ni tanlang.';
	@override String get noMatches => 'Mos nomlar yo‘q';
	@override String get indexing => 'Toʻliq katalog qidirilmoqda…';
}

// Path: showSchedule
class _Translations$showSchedule$uz extends Translations$showSchedule$en {
	_Translations$showSchedule$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get today => 'Bugun';
	@override String get tomorrow => 'Ertaga';
	@override String get latestUpcoming => 'Eng yangi va kelgusi';
	@override String get latestEpisode => 'Oxirgi epizod';
	@override String get upcoming => 'Kelgusi';
	@override String get inLibrary => 'Kutubxonangizda';
	@override String get notInLibrary => 'Kutubxonangizda emas';
	@override String get notYetAired => 'Hali efirga uzatilmagan';
	@override String episode({required Object number}) => 'Qism ${number}';
	@override String get caughtUp => 'Hammangiz qo\'lga tushdingiz';
	@override String get finished => 'Siz bu seriyani tugatdingiz';
	@override String nextAirs({required Object date}) => 'Keyingi epizod ${date}';
	@override String get watchBeginning => 'Boshidan tomosha qiling';
	@override String get replay => 'Takrorlash';
	@override String get playNext => 'Keyingisini oʻynang';
}

// Path: awardsCatalog
class _Translations$awardsCatalog$uz extends Translations$awardsCatalog$en {
	_Translations$awardsCatalog$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get awards => 'Mukofotlar';
	@override String get customize => 'Moslashtiring';
	@override String get chooseShelves => 'Kashf qilish-ni moslashtiring';
	@override String get shelvesDescription => 'Kashf qilish-da kerakli qatorlarni tanlang. Mukofot qatorlari kutubxonalaringizdan g\'oliblarni ko\'rsatadi. Sizning tanlovlaringiz ushbu profil uchun saqlanadi.';
	@override String get restoreShelves => 'Standart sozlamalarni tiklash';
	@override String get charts => 'IMDb diagrammalari';
	@override String get generalShelves => 'Mashhur va trend';
	@override String get saveShelvesFailed => 'Kashf qilish tanlovlaringizni saqlab bo‘lmadi. Iltimos, qayta urinib koʻring.';
	@override String get comedyActress => 'Bosh rol aktrisasi · Komediya';
	@override String get leadDramaActor => 'Bosh aktyor · Drama';
	@override String get leadDramaActress => 'Bosh rol aktrisasi · Drama';
	@override String get comedySupportingActor => 'Ikkinchi plandagi aktyor · Komediya';
	@override String get comedySupportingActress => 'Ikkinchi plandagi aktrisa · Komediya';
	@override String get leadingPerformance => 'Kumush ayiq · Eng yaxshi yetakchi ijro';
	@override String get globesComedySeries => 'Eng yaxshi teleserial · Musiqiy yoki komediya';
	@override String get limitedSupportingActor => 'Ikkinchi plandagi aktyor · Cheklangan serial yoki film';
	@override String get limitedSupportingActress => 'Ikkinchi plandagi aktrisa · Cheklangan serial yoki film';
	@override String get berlinDocumentary => 'Berlinale hujjatli film mukofoti';
	@override String get title => 'Mukofotlar va festivallar';
	@override String get chooseCategory => 'Mukofot toifasini tanlang';
	@override String get winners => 'G\'oliblar';
	@override String get nominees => 'Nomzodlar';
	@override String get releaseDecade => 'Chiqarish o\'n yilligi';
	@override String get allYears => 'Barcha yillar';
	@override String get loading => 'Mukofot unvonlari yuklanmoqda…';
	@override String get matching => 'Kutubxonalaringizda bu nomlar topilmoqda…';
	@override String get unavailable => 'Mukofot maʼlumotlari hozirda mavjud emas. Qayta urinib ko\'ring.';
	@override String get empty => 'Ko‘rinadigan kutubxonalaringizda ushbu turkumga mos keladigan nomlar yo‘q.';
	@override String get coverage => 'Aʼzolik Vikimaʼlumotlardan olingan va toʻliq boʻlmasligi mumkin. Aktyor va rejissyor toifalari mukofotlangan filmlar yoki shoularni ko\'rsatadi. Yillar marosimga emas, balki sarlavhaning chiqarilishiga ishora qiladi.';
	@override String get picture => 'Eng yaxshi rasm';
	@override String get film => 'Eng yaxshi film';
	@override String get international => 'Eng yaxshi xalqaro xususiyat';
	@override String get internationalFilm => 'Eng yaxshi xalqaro film';
	@override String get nonEnglishFilm => 'Ingliz tilidagi eng yaxshi film';
	@override String get animated => 'Eng yaxshi animatsion xususiyat';
	@override String get animatedFilm => 'Eng yaxshi animatsion film';
	@override String get documentary => 'Eng yaxshi hujjatli film';
	@override String get director => 'Eng yaxshi rejissyor';
	@override String get actor => 'Eng yaxshi aktyor';
	@override String get actress => 'Eng yaxshi aktrisa';
	@override String get supportingActor => 'Eng yaxshi ikkinchi plandagi aktyor';
	@override String get supportingActress => 'Eng yaxshi ikkinchi plandagi aktrisa';
	@override String get originalScreenplay => 'Eng yaxshi original ssenariy';
	@override String get adaptedScreenplay => 'Eng yaxshi moslashtirilgan ssenariy';
	@override String get screenplay => 'Eng yaxshi ssenariy';
	@override String get cinematography => 'Eng yaxshi kinematografiya';
	@override String get editing => 'Eng yaxshi tahrir';
	@override String get score => 'Eng yaxshi original ball';
	@override String get song => 'Eng yaxshi original qo\'shiq';
	@override String get sound => 'Eng yaxshi ovoz';
	@override String get effects => 'Eng yaxshi vizual effektlar';
	@override String get productionDesign => 'Eng yaxshi ishlab chiqarish dizayni';
	@override String get costume => 'Eng yaxshi kostyum dizayni';
	@override String get makeup => 'Eng yaxshi bo\'yanish va soch turmagi';
	@override String get dramaSeries => 'Ajoyib dramatik serial';
	@override String get comedySeries => 'Ajoyib komediya seriali';
	@override String get limitedSeries => 'Ajoyib cheklangan seriya';
	@override String get animatedProgram => 'Ajoyib animatsion dastur';
	@override String get comedyActor => 'Bosh rol ijrochisi · Komediya';
	@override String get limitedActor => 'Bosh aktyor · Cheklangan serial yoki film';
	@override String get limitedActress => 'Bosh rol aktrisasi · Cheklangan serial yoki film';
	@override String get limitedDirecting => 'Rejissyorlik · Cheklangan serial yoki film';
	@override String get britishFilm => 'Eng yaxshi Britaniya filmi';
	@override String get goldenBear => 'Oltin ayiq';
	@override String get grandJury => 'Hakamlar hay\'atining katta mukofoti';
	@override String get jury => 'Hakamlar hay\'ati mukofoti';
	@override String get teddy => 'Teddy mukofoti';
	@override String get goldenLion => 'Oltin sher';
	@override String get volpiActor => 'Volpi Cup · Eng yaxshi aktyor';
	@override String get volpiActress => 'Volpi Cup · Eng yaxshi aktrisa';
	@override String get queerLion => 'G\'alati sher';
	@override String get dramaFilm => 'Eng yaxshi kinofilm · Drama';
	@override String get comedyFilm => 'Eng yaxshi kinofilm · Musiqiy yoki komediya';
	@override String get dramaActor => 'Eng yaxshi aktyor · Drama';
	@override String get dramaActress => 'Eng yaxshi aktrisa · Drama';
	@override String get usDramatic => 'AQSh dramatik hakamlar hay\'atining bosh mukofoti';
	@override String get documentaryJury => 'Hujjatli filmlar uchun hakamlar hay\'atining bosh mukofoti';
	@override String get worldCinema => 'Jahon kinosi hakamlar hay\'atining bosh mukofoti';
	@override String get dramaticAudience => 'AQSh dramatik tomoshabinlar mukofoti';
	@override String get usDirecting => 'AQSh rejissyorlik mukofoti';
	@override String get peopleChoice => 'Xalq tanlovi mukofoti';
	@override String get canadianFilm => 'Eng yaxshi Kanada filmi';
	@override String get firstFeature => 'Eng yaxshi birinchi xususiyat';
	@override String get cassavetes => 'Jon Kassavetes mukofoti';
	@override String get scienceFiction => 'Eng yaxshi ilmiy-fantastik film';
	@override String get fantasy => 'Eng yaxshi fantastik film';
	@override String get horror => 'Eng yaxshi dahshatli film';
	@override String get action => 'Eng yaxshi jang yoki sarguzasht filmi';
	@override String get thriller => 'Eng yaxshi triller filmi';
}

// Path: searchDiscovery
class _Translations$searchDiscovery$uz extends Translations$searchDiscovery$en {
	_Translations$searchDiscovery$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get suggestions => 'Tomosha qilish uchun nimadir';
	@override String get collections => 'Mukofotlar va kolleksiyalar';
	@override String get collectionsHint => 'G\'oliblarni mukofotlang va kutubxonalaringizdan tayyorlangan jadvallar';
	@override String get all => 'Barcha kashfiyotlar';
	@override String get awards => 'Mukofotlar va jadvallar';
}

// Path: lurokaPlayerDesign
class _Translations$lurokaPlayerDesign$uz extends Translations$lurokaPlayerDesign$en {
	_Translations$lurokaPlayerDesign$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get seeking => 'Oldindan koʻrish';
	@override String get keepWatching => 'Tomosha qilishda davom eting';
	@override String get upNext => 'Keyingi';
	@override String playingIn({required Object seconds}) => '${seconds} s formatida oʻynash';
}

// Path: lurokaWorkspace
class _Translations$lurokaWorkspace$uz extends Translations$lurokaWorkspace$en {
	_Translations$lurokaWorkspace$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get everyday => 'Har kuni';
	@override String get homeDiscovery => 'Uy va kashfiyot';
	@override String get librariesAccounts => 'Kutubxonalar va hisoblar';
	@override String get profilesFamily => 'Profillar va oila';
	@override String get thisDevice => 'Ushbu qurilma';
	@override String get thisProfile => 'Bu profil';
	@override String get searchSettings => 'Qidiruv sozlamalari';
	@override String get savedAutomatically => 'O\'zgarishlar avtomatik ravishda saqlanadi. Har kuni va Kengaytirilgan faqat qaysi boshqaruv elementlari ko\'rsatilishini o\'zgartiradi.';
	@override String get audioSubtitles => 'Audio va Subtitrlar';
	@override String get audioDescription => 'Ovoz chiqishi, ovoz balandligi va subtitr ko\'rinishi. Afzal tillar har bir server hisobiga ulanganda Hisob sozlamalari yordamida oʻrnatiladi.';
	@override String get pictureSound => 'Rasm va ovoz';
	@override String get pictureDescription => 'Ushbu qurilma uchun kadrlar tezligini moslashtirish, oʻlchamlari, HDR va Dolby Vision sozlash.';
	@override String get engineDescription => 'O\'yinchi mexanizmi, dekodlash, maxsus konfiguratsiya va kengaytirilgan ijro qoidalari.';
	@override String get networkStreaming => 'Tarmoq va oqim';
	@override String get networkDescription => 'Oqim sifati, to‘g‘ridan-to‘g‘ri o‘ynash kodeklari va tarmoqli kengligi tanlovlari.';
	@override String get homeOptions => 'Uy variantlari';
	@override String get refreshHome => 'Uyni yangilang va hozir mashhur';
	@override String get customizeHome => 'Uyni sozlash';
	@override String get spotlight => 'Uy diqqat markazida';
	@override String get rotateSpotlight => 'Tanlangan sarlavhalarni avtomatik aylantirish';
	@override String get rotateDescription => 'Uy boʻsh turgan vaqtda aylantiring. O\'zaro ta\'sir aylanishni pauza qiladi; javonlarni ko\'rish, sahifani ochish yoki ilovadan chiqish uni butunlay to\'xtatib turadi.';
	@override String get rotationInterval => 'Tanlangan sarlavhalar orasidagi vaqt';
}

// Path: mobileFixes
class _Translations$mobileFixes$uz extends Translations$mobileFixes$en {
	_Translations$mobileFixes$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get connectionRecoveryHint => 'Server mavjud emasmi? Hisoblaringizni boshqaring yoki boshqa serverga ulang.';
}

// Path: downloadsRedesign
class _Translations$downloadsRedesign$uz extends Translations$downloadsRedesign$en {
	_Translations$downloadsRedesign$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get shelfSize => 'Har bir javondagi narsalar';
	@override String get shelfSizeHint => 'Tomosha qilishni davom ettirish va tavsiyalar javonlarida 16, 32 yoki 48 ta narsalarni ko‘rsating. Serverlar kamroq mavjud nomlarni qaytarishi mumkin.';
	@override String get subtitle => 'Sevimlilaringiz, sayohatga tayyor.';
	@override String get transfers => 'Transferlar';
	@override String get ready => 'Oflayn rejimda';
	@override String get active => 'Yuklab olinmoqda';
	@override String get waiting => 'Kutilmoqda';
	@override String get downloaded => 'Yuklab olingan';
	@override String get speed => 'Yuklab olish tezligi';
	@override String get notificationProgress => '{progress} · {networkSpeed} · {timeRemaining} qoldi';
}

// Path: kidsShelf
class _Translations$kidsShelf$uz extends Translations$kidsShelf$en {
	_Translations$kidsShelf$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get movieShelf => 'Kino vaqti';
	@override String get showShelf => 'Keyingi ko\'rsatuvingizni toping';
	@override String get aurora => 'Aurora - chuqur choy va ohak';
	@override String get marquee => 'Marquee - baxmal va oltin';
	@override String get electric => 'Elektr - indigo va muz';
	@override String get midnight => 'Yarim tun - po\'lat va amber';
	@override String get yourShelf => 'Sizning kino javoningiz';
	@override String get all => 'Hamma narsa';
	@override String get pickSomething => 'Nimani tomosha qilishni xohlaysiz?';
}

// Path: kidsHome
class _Translations$kidsHome$uz extends Translations$kidsHome$en {
	_Translations$kidsHome$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get everything => 'Siz uchun';
	@override String get keepWatching => 'Tomosha qilishda davom eting';
	@override String get emptyFilter => 'Bu yerda hali hech narsa. Siz uchun sinab ko\'ring yoki kattalaringizdan sizga yoqadigan narsani qo\'shishini so\'rang.';
}

// Path: tvSettingsV2
class _Translations$tvSettingsV2$uz extends Translations$tvSettingsV2$en {
	_Translations$tvSettingsV2$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get moreThemes => 'Koʻproq mavzular va moslashtirilgan ranglar';
	@override String get moreThemesHint => 'Barcha mavjud sozlamalarni va maxsus mavzu parametrlarini oching.';
	@override String get previewLive => 'Jonli ko‘rish';
	@override String get previewIllustration => 'Ko\'rib chiqish misoli';
	@override String previewShelfCount({required Object count}) => 'Har bir javonda ${count} gacha mahsulot';
	@override String get simple => 'Oddiy';
	@override String get homeNavigation => 'Bosh sahifa va navigatsiya';
	@override String get libraryCards => 'Kutubxona va kartalar';
	@override String get accountsLibraries => 'Hisoblar va kutubxonalar';
	@override String get profilesFamily => 'Profillar va oila';
	@override String get aboutSupport => 'Haqida & Yordam';
	@override String get playback => 'Ijro';
	@override String get homeHint => 'Bosh sahifada va navigatsiyada nima koʻrinishini tanlang.';
	@override String get libraryHint => 'Plakat o\'lchamlari, teglar va ko\'rilgan ko\'rsatkichlarni sozlang.';
	@override String get advancedPlayback => 'Pleyer va striming';
	@override String get advancedPlaybackHint => 'Pleyer, video chiqishi, oqim va kengaytirilgan ijro tanlovlari.';
	@override String get advancedTools => 'Diagnostika va zaxira';
	@override String get advancedToolsHint => 'Jurnallar, muammolarni bartaraf etish, sozlamalarni zaxiralash va tiklash.';
	@override String get themePreview => 'Mavzuni oldindan ko‘rish';
	@override String get libraryPreview => 'Kutubxonani oldindan ko\'rish';
	@override String get homePreview => 'Bosh sahifani oldindan ko‘rish';
	@override String get subtitlePreview => 'Subtitrni oldindan ko\'rish';
	@override String get subtitleSample => 'Subtitrlaringiz shunday ko\'rinadi.';
	@override String get previewPlaceholder => 'Sizning san\'at asaringiz shu yerda ko\'rinadi';
	@override String get posterSize => 'Plakat hajmi';
	@override String get serverRecommendations => 'Serveringizdan bosh sahifa tavsiyalari';
	@override String get tvLayout => 'TV ko‘rinishidan foydalaning';
	@override String get hardwareDecode => 'Uskuna video dekodlashdan foydalaning';
	@override String get serverNames => 'Asosiy satrlarda server nomlarini ko\'rsatish';
	@override String get settingsSaved => 'O\'zgarishlar avtomatik ravishda saqlanadi.';
	@override String get morePlayback => 'Kengaytirilgan ijro';
	@override String get screenDisplay => 'Rasm va ovoz';
	@override String get engine => 'Pleyer mexanizmi';
	@override String get network => 'Oqim va tarmoq';
	@override String get performance => 'Ishlash';
	@override String get simpleAudio => 'Tillar va subtitr ko\'rinishi';
}

// Path: settingsRedesign
class _Translations$settingsRedesign$uz extends Translations$settingsRedesign$en {
	_Translations$settingsRedesign$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get themeEffects => 'Mavzu va effektlar';
	@override String get libraryLayout => 'Kutubxona tartibi';
	@override String get appearanceHint => 'Luroka ko‘rinishini, tartibini va harakatini moslashtiring.';
	@override String get livePreview => 'Jonli ko‘rish';
	@override String get previewHint => 'Kutubxonangiz joriy sozlamalar bilan qanday ko‘rinishini ko‘ring.';
	@override String get showLiveTv => 'Jonli TV ko\'rsatish';
	@override String get showLiveTvHint => 'Ulangan server qo‘llab-quvvatlasa, navigatsiyada jonli TV-ni ko‘rsating. Bu serveringizdagi sozlamalarni o‘zgartirmaydi.';
	@override String get aboutTagline => 'Sizning ommaviy axborot vositalari. Sizning joyingiz.';
	@override String get aboutDescription => 'Luroka Plex, Jellyfin va Emby kutubxonalaringizni telefonlar, televizorlar va ish stollari uchun kinematik pleyerda birlashtiradi.';
	@override String get aboutFeatures => 'Kutubxonalaringizni ko\'rib chiqing, filmlar va shoularni davom ettiring, profillarni shaxsiylashtiring, yuklab olishlardan zavqlaning va birgalikda tomosha qiling. Jonli TV mos server bilan mavjud.';
	@override String get services => 'Dunyongizni bog\'lang';
	@override String get updateSource => 'Manbani yangilash';
	@override String get updateSourceHint => 'Luroka reliz tasmangizning HTTPS manzili. Sizning distribyutoringiz buni ilovada oldindan sozlashi mumkin.';
	@override String get updateNotConfigured => 'Ushbu qurilma uchun avtomatik yangilanishlar sozlanmagan.';
	@override String get downloadInstall => 'Yuklab oling va o\'rnating';
	@override String get installUpdate => 'Yangilanishni o\'rnating';
	@override String get downloading => 'Yangilanish yuklab olinmoqda…';
	@override String get downloadFailed => 'Yangilanishni yuklab bo‘lmadi yoki tasdiqlanmadi. Iltimos, qayta urinib koʻring.';
	@override String get installPermission => 'Luroka-ga Android sozlamalarida yangilanishlarni o\'rnatishga ruxsat bering, so\'ngra qaytib, Yangilanishni o\'rnatish-ni tanlang.';
	@override String get updateReady => 'Yuklab olish tasdiqlangan. Oʻrnatishga tayyor.';
	@override String get releaseNotes => 'Chiqarish qaydlari';
	@override String get invalidFeed => 'Yaroqli HTTPS yangilanish tasma manzilini kiriting.';
}

// Path: onboarding
class _Translations$onboarding$uz extends Translations$onboarding$en {
	_Translations$onboarding$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get connectStep => '01 · Ulanish';
	@override String get connectTitle => 'Luroka ga xush kelibsiz';
	@override String get connectHint => 'Kutubxonalaringizni bu yerga olib kelish uchun tizimga kiring.';
	@override String get serverAddressHint => 'Server manzilingizni kiriting yoki tarmog\'ingizda topilgan serverni tanlang.';
	@override String get serverSignInHint => 'Kutubxonalarni ulash uchun server foydalanuvchi nomi va parolidan foydalaning.';
	@override String get serverAddressTitle => 'Server manzili';
	@override String get serverAccountTitle => 'Sizning server hisobingiz';
	@override String get plexHomeTitle => 'Plex uy foydalanuvchisini tanlang';
	@override String get plexHomeHint => 'Kutubxonalaridan foydalanmoqchi bo\'lgan Plex foydalanuvchisini tanlang. Keyinchalik Luroka profilingizni o\'rnatasiz.';
	@override String get chooseService => 'Xizmatingizni tanlang';
	@override String get profileStep => '02 · Sizning profilingiz';
	@override String get profileTitle => 'O\'zingizni uyda qiling.';
	@override String get profileHint => 'Luroka profilingiz uchun ism va avatarni tanlang. Bog\'langan hisobingiz o\'zgarishsiz qoladi.';
	@override String get readyStep => '03 · Tomosha qilishga tayyor';
	@override String get readyTitle => 'Bir oz ko\'proq siz.';
	@override String get readyHint => 'Xizmatlaringizni birga keltiring yoki boshqa birovga joy ajrating. Buni har doim keyinroq qilishingiz mumkin.';
	@override String get addService => 'Boshqa xizmatni ulang';
	@override String get editProfile => 'Ismingiz va avataringizni tahrirlang';
	@override String get connected => 'Ulangan va tayyor';
	@override String get backToProfile => 'Profilingizga qayting';
	@override String get showOtherPlexHome => 'Boshqa Plex Bosh sahifa aʼzolarini koʻrsatish';
	@override String get showOtherPlexHomeHint => 'Sukut boʻyicha oʻchirilgan. Siz foydalangan Luroka profillaringiz va Plex uy aʼzolari koʻrinadigan boʻlib qoladi. Boshqa birovni tanlash uchun yoqing.';
}

// Path: household
class _Translations$household$uz extends Translations$household$en {
	_Translations$household$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Luroka xonadoningiz';
	@override String get welcome => 'Lurokani sizniki qiling';
	@override String get welcomeHint => 'Birinchi hisobingiz ulangan. Ko\'rishni boshlashdan oldin profilingizni shaxsiylashtiring yoki boshqa birovni qo\'shing.';
	@override String get profiles => 'Profillar va uy xo\'jaligi';
	@override String get manageHint => 'Odamlarni qo\'shing, rasmlarni o\'zgartiring va har bir profilning ulanishlarini boshqaring.';
	@override String get addProfile => 'Luroka profilini qo\'shing';
	@override String get addHint => 'Har bir kishi o\'zining Plex, Emby yoki Jellyfin loginlarini ulashi mumkin. Ular uchun faqat profiliga qo\'shilgan ulanishlar ko\'rinadi.';
	@override String get sharedHint => 'Boshqa profilning ulanishidan qayta foydalanish server foydalanuvchisi tomosha qilgan holati va ijro jarayonini baham ko‘radi. Mustaqil ko\'rish tarixi uchun alohida loginni tanlang.';
	@override String get personalise => 'Profilni shaxsiylashtirish';
	@override String get changePicture => 'Profil rasmini o\'zgartirish';
	@override String get pictureHint => 'Luroka avatarini yoki rasmni tanlang. Bu faqat ushbu qurilmadagi rasmni o\'zgartiradi; server hisobingizga tegmagan.';
	@override String get serverPicture => 'Server rasmi/bosh harflaridan foydalaning';
	@override String get choosePhoto => 'Surat tanlang';
	@override String get photoHint => 'JPEG, PNG yoki boshqa qo\'llab-quvvatlanadigan rasm, 10 MB gacha. Rasmlar oʻlchamlari oʻzgartiriladi va ushbu qurilmada saqlanadi.';
	@override String get pictureSaved => 'Profil rasmi yangilandi';
	@override String get pictureFailed => 'Profil rasmini yangilab bo‘lmadi. 10 MB gacha bo\'lgan qo\'llab-quvvatlanadigan rasmni sinab ko\'ring.';
	@override String get saveFailed => 'Profil sozlamalarini saqlab bo‘lmadi. Iltimos, qayta urinib koʻring.';
	@override String get startWatching => 'Ko\'rishni boshlang';
	@override String get manageProfiles => 'Profillarni boshqarish yoki almashtirish';
	@override String get addLater => 'Keyinroq Sozlamalar → Profillar va uy xo‘jaliklari bo‘limida ko‘proq odam qo‘shishingiz mumkin.';
	@override String get connectionRequired => 'Ushbu profilni sozlashni tugatish uchun server ulanishini qo\'shing.';
	@override String get mountain => 'Tog\'';
	@override String get orbit => 'Explorer';
	@override String get waves => 'Okean';
	@override String get blossom => 'Gullash';
	@override String get lightning => 'Chaqmoq';
	@override String get moon => 'Oy';
	@override String get avatarGallery => 'Avatarni tanlang';
	@override String get avatarIllustrationHint => 'Asl tasvirlangan portretlar, bolalar va hayvonlarning do\'stlari';
	@override String get avatarPortraitSunrise => 'Quyosh chiqishi portreti';
	@override String get avatarPortraitMeadow => 'Yaylov portreti';
	@override String get avatarPortraitBerry => 'Berry portreti';
	@override String get avatarPortraitGolden => 'Oltin portret';
	@override String get avatarPortraitIndigo => 'Indigo portreti';
	@override String get avatarPortraitOcean => 'Okean portreti';
	@override String get avatarKidArtist => 'Kichik rassom';
	@override String get avatarKidSkater => 'Kichkina konkida uchuvchi';
	@override String get avatarCat => 'Qiziq mushuk';
	@override String get avatarDog => 'Baxtli it';
	@override String get avatarPanda => 'Panda';
	@override String get avatarOwl => 'Boyqush';
	@override String get avatarFox => 'Tulki';
	@override String get avatarDinosaur => 'Dinozavr';
	@override String get avatarRobot => 'Robot';
}

// Path: detailComposition
class _Translations$detailComposition$uz extends Translations$detailComposition$en {
	_Translations$detailComposition$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get startOver => 'Qaytadan boshlang';
	@override String get seriesCast => 'Serial aktyorlari';
	@override String get streamingQuality => 'Oqim sifati…';
	@override String get trailer => 'Treyler';
	@override String get manageMedia => 'Mediani boshqarish…';
	@override String get playbackOptions => 'Ijro variantlari…';
	@override String get moreActions => 'Ko\'proq harakatlar';
	@override String get watched => 'Ko\'rildi';
	@override String get unwatched => 'Koʻrilmagan';
	@override String endsAt({required Object time}) => '${time} da tugaydi';
	@override String get automatic => 'Avtomatik';
	@override String get usePreferences => 'Ijro qilish sozlamalaringizdan foydalaning';
	@override String get mediaInformation => 'OAV ma\'lumotlari';
	@override String get fullFileInformation => 'To\'liq fayl ma\'lumotlari';
	@override String get castAndCrew => 'Aktyorlar va ekipaj';
}

// Path: kids
class _Translations$kids$uz extends Translations$kids$en {
	_Translations$kids$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get backupProfile => 'Bolalar profilini zaxiralang';
	@override String get backupExplain => 'Ushbu profilning saqlangan nomi, xarakteri, cheklovlari, tashqi koʻrinishi va mahalliy koʻrish istisnolarini zaxiralang. Ota-ona PIN-kodlari, serverga kirishlar, yuklab olishlar va serverni ijro etish jarayoni kiritilmagan.';
	@override String get saveBackupFile => 'Zaxira faylini saqlang';
	@override String get copyBackup => 'Zaxira matnni nusxalash';
	@override String backupSaved({required Object path}) => 'Bolalar profilining zaxira nusxasi ${path} fayliga saqlandi';
	@override String get backupCopied => 'Bolalar profilining zaxira nusxasi nusxalandi';
	@override String get backupFailed => 'Bolalar profilining zaxira nusxasini saqlab bo‘lmadi. Iltimos, qayta urinib koʻring.';
	@override String get restoreProfile => 'Bolalar profilini tiklang';
	@override String get chooseBackupFile => 'Zaxira faylini tanlang';
	@override String get pasteBackup => 'Zaxira matnni joylashtiring';
	@override String get backupText => 'Bolalar profilining zaxira nusxasi JSON';
	@override String get pasteFromClipboard => 'Buferdan joylashtirish';
	@override String get restoreReview => 'Qayta tiklangan ushbu sozlamalarni ko‘rib chiqing, so‘ngra joriy server ulanishlaridan foydalanib yangi bolalar profilini yaratish uchun saqlang. Mavjud profillar ustiga yozilmaydi. Kutubxona tanlovlari va ko‘rish istisnolari faqat bir xil server/kutubxona identifikatorlariga mos keladi.';
	@override String get restoreInvalid => 'Bu bolalar profilining qo‘llab-quvvatlanadigan zaxira nusxasi emas. Luroka bolalar profilining JSON zaxira nusxasini tanlang.';
	@override String get deleteProfile => 'Bolalar profilini o\'chirish';
	@override String deleteExplain({required Object name}) => '${name} Lurokadan o‘chirilsinmi? Ularning mahalliy sozlamalari, yuklab olishlari va ko‘rish istisnolari olib tashlanadi. Server hisobingiz va server tarixi saqlanib qoladi. Agar profilni keyinroq tiklamoqchi bo\'lsangiz, avval zaxira nusxasini yarating.';
	@override String get profileDeleted => 'Bolalar profili oʻchirildi';
	@override String get allowedLibraries => 'Ruxsat etilgan kutubxonalar';
	@override String get unavailableLibrary => 'Oldin tanlangan kutubxona (hozirda mavjud emas)';
	@override String get allLibraries => 'Barcha ulangan kino va televizor kutubxonalariga ruxsat bering';
	@override String get librariesExplain => 'Muayyan kutubxonalarni tanlash uchun buni o\'chiring. Tanlangan kutubxonalar ichida yosh va animatsiya qoidalari hali ham amal qiladi. Tanlovdan foydalanganda yangi kutubxonalar avtomatik ravishda qo\'shilmaydi.';
	@override String get librariesUnavailable => 'Hech qanday film yoki televizor kutubxonasi yuklanmagan. Serverga ulaning va Kutubxonalarni oching, keyin tanlash uchun shu yerga qayting.';
	@override String get noLibrariesSelected => 'Hech qanday kutubxona tanlanmagan: bu bola hech qanday nom ko‘rmaydi.';
	@override String get animationOnly => 'Faqat animatsiya';
	@override String get animationExplain => 'Serveringizda faqat Animatsiya janri bilan teglangan sarlavhalarni ko\'rsating. Bu yosh chegarasini almashtirmaydi: animatsiya kattalar uchun ham mo\'ljallangan bo\'lishi mumkin. Yo\'qolgan janr metama\'lumotlari yashirilgan.';
	@override String get allowUnrated => 'Yosh reytingi bo\'lmagan sarlavhalarga ruxsat bering';
	@override String get unratedExplain => 'Sukut boʻyicha oʻchirilgan. Yoqilganda, kutubxona va animatsiya qoidalari ruxsat bersa, etishmayotgan yoki baholanmagan tasniflar paydo bo\'lishi mumkin. Ularning mosligini yoshga qarab tekshirib bo\'lmaydi. Yosh chegarasidan yuqori bo\'lgan ma\'lum reytinglar va tan olinmagan tasniflar yashirin qoladi.';
	@override String get whoIsWatching => 'Kim tomosha qilmoqda?';
	@override String get chooseAdventure => 'Katta sarguzashtlarning kichik dunyosi.';
	@override String get chooseProfile => 'Joyingizni tanlang. Uni kino kechasiga aylantiring.';
	@override String welcome({required Object name}) => 'Salom, ${name}!';
	@override String welcomeOlder({required Object name}) => 'Sizning keyingi ajoyib hikoyangiz, ${name}.';
	@override String get homeSubtitle => 'Katta sarguzashtlar. Kichik kashfiyotlar. Hammasi siz uchun.';
	@override String get homeSubtitleOlder => 'Yangi sevimlini toping. To‘xtagan joydan davom eting.';
	@override String get featured => 'Bugungi katta sarguzasht';
	@override String get featuredOlder => 'Diqqat markazida';
	@override String get moreInfo => 'Batafsil ma\'lumot';
	@override String get movies => 'Filmlar';
	@override String get shows => 'Ko\'rsatuvlar';
	@override String get profiles => 'Profillar';
	@override String get adultBadge => 'Kattalar';
	@override String get avatar => 'O\'zingizning xarakteringizni tanlang';
	@override String get avatarExplorer => 'Kosmik tadqiqotchi';
	@override String get avatarFox => 'Tulki';
	@override String get avatarDinosaur => 'Dinozavr';
	@override String get avatarRobot => 'Robot';
	@override String get avatarChildArtist => 'Kichik rassom';
	@override String get avatarChildSkater => 'Kichkina konkida uchuvchi';
	@override String get avatarSunrisePerson => 'Quyosh chiqishi portreti';
	@override String get avatarOceanPerson => 'Okean portreti';
	@override String get avatarCat => 'Qiziq mushuk';
	@override String get avatarDog => 'Baxtli it';
	@override String get avatarPanda => 'Panda';
	@override String get avatarOwl => 'Boyqush';
	@override String get avatarBear => 'Ayiq';
	@override String get continueAdventure => 'Sarguzashtni davom ettiring';
	@override String get freshStories => 'Yangi kashfiyotlar';
	@override String get yourMovies => 'Sevimli filmlar';
	@override String get yourShows => 'Yana bir epizod';
	@override String get emptyHint => 'Yangi sarguzashtlar serveringizda ruxsat etilgan yosh tasnifiga ega sarlavhalarga ega bo\'lganda paydo bo\'ladi.';
	@override String get title => 'Bolalar uchun Luroka';
	@override String get addProfile => 'Bolalar profilini qo\'shing';
	@override String get parentalControls => 'Ota-ona nazorati';
	@override String get parentPin => 'Ota-ona PIN-kodi';
	@override String get setParentPin => 'Ota-ona PIN-kodini o‘rnating';
	@override String get changeParentPin => 'Ota-ona PIN-kodini o‘zgartiring';
	@override String get pinExplain => 'Bu PIN-kod ushbu qurilmadagi kattalar profillari va ota-ona nazoratini himoya qiladi.';
	@override String get name => 'Bolaning ismi';
	@override String get ageGroup => 'Ruxsat berilgan yosh tasnifi';
	@override String get allAges => 'Barcha yoshdagilar · G, TV-Y, TV-G, U';
	@override String get age7 => '7 tagacha · shuningdek PG, TV-PG, TV-Y7';
	@override String get age12 => '12 gacha · shuningdek 12 va 12A';
	@override String get age16 => '16 gacha · shuningdek, PG-13, TV-14, 15 va 16';
	@override String get ratingExplain => 'Yosh chegarasidan yuqori unvonlar va tan olinmagan tasniflar yashiriladi. Agar siz quyida ruxsat bermasangiz, reytingsiz sarlavhalar berkitiladi. Baholanmagan epizodlar tasdiqlangan seriya tasnifini meros qilib olishi mumkin. Reytinglar serveringiz metamaʼlumotlariga bogʻliq.';
	@override String get theme => 'Bolalarning tashqi ko\'rinishi';
	@override String get themeExplain => 'Ushbu profil faol bo\'lganda rangli mavzudan foydalaning.';
	@override String get sharedLogin => 'Mavjud server loginingizdan foydalanadi. Plex/Emby jarayoni va tomosha holati umumiy bo‘lib qoladi. Cheklovlar va bolalar profillari ushbu qurilmada saqlanadi.';
	@override String get hideWatched => 'Bolalar koʻrishlarini “Koʻrishni davom ettirish” sahifasidan berkitish';
	@override String get hideExplain => 'Ushbu qurilmada bolalar profillari tomonidan ijro etilgan filmlar va butun seriyalarni yashirish. Bu ularni kutubxonangizdan olib tashlamaydi yoki server tarixini o\'zgartirmaydi.';
	@override String get clearHistory => 'Bolalarning koʻrish istisnolarini qayta oʻrnating';
	@override String get historyReset => 'Bolalar uchun koʻrish istisnolari qayta tiklandi';
	@override String get blocked => 'Bu nom ushbu bolalar profilida mavjud emas.';
	@override String get switchProfile => 'Profilni almashtirish';
	@override String get manageFromAdult => 'Sozlamalarni boshqarish uchun kattalar profiliga oʻting.';
	@override String get noConnections => 'Bolalar profilini qo\'shishdan oldin serverni kattalar profilingizga ulang.';
	@override String get created => 'Bolalar profili yaratildi';
	@override String get updated => 'Bolalar profili yangilandi';
	@override String get saveFailed => 'Ota-ona nazorati saqlanmadi. Iltimos, qayta urinib koʻring.';
	@override String get kidsBadge => 'Bolalar';
}

// Path: lurokaDiscovery
class _Translations$lurokaDiscovery$uz extends Translations$lurokaDiscovery$en {
	_Translations$lurokaDiscovery$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kashf qilish';
	@override String get chooseLibraryHint => 'Tadqiq qilish uchun kutubxonani tanlang';
	@override String get chooseCopyHint => 'Bir nechta kutubxonalarda mavjud. O\'zingiz yoqtirgan nusxani tanlang.';
	@override String get weeklyMovies => 'Bu hafta ommabop filmlar · TMDb';
	@override String get weeklyShows => 'Bu hafta ommabop shoular · TMDb';
	@override String get weeklyLibrary => 'Bu hafta trendlari · Kutubxonangizda';
	@override String get popularLibrary => 'Hozir mashhur · Kutubxonangizda · Cinemeta';
	@override String get publicFeedError => 'Cinemeta kashfiyoti mavjud emas. Iltimos, qayta urinib koʻring.';
	@override String get oscars => 'Oskar · Eng yaxshi film g\'oliblari';
	@override String get imdb100 => 'IMDb Top 100 ta film · 2026-yil sentabr lavhasi';
	@override String get imdbTv100 => 'IMDb Eng yaxshi 100 ta shou · 2026-yil sentabr lavhasi';
	@override String get emmyComedy => 'Emmi · Komediya seriyasi g\'oliblari · 1971–2026';
	@override String get emmys => 'Emmi · Drama seriali gʻoliblari · 1966–2026';
	@override String get bafta => 'BAFTA · Eng yaxshi film g\'oliblari';
	@override String get cannes => 'Kann · Palma d\'Or g\'oliblari';
	@override String get awardsNote => 'Mukofot kollektsiyalariga Oskarning eng yaxshi filmi tarixi, Emmi drama/komediya g\'oliblari va kengaytirilgan BAFTA/Kann tanlovlari kiradi. Takroriy yutuq unvonlari bir marta paydo bo\'ladi. A\'zolik mukofot toifalari tarixi va Vikido\'stlik faktlaridan foydalanadi. IMDb Top 100 ta film/shou roʻyxati mmdju/imdb-top250-api dan 2026-yil sentabr oyidagi diagramma suratlarini saqlaydi. Faqat ko\'rinadigan, onlayn kutubxonalaringizdagi mosliklar paydo bo\'ladi; to\'plam hajmi kutubxona mavjudligiga bog\'liq.';
	@override String get attribution => 'Ommaviy mashhurlik roʻyxatlari, metamaʼlumotlar va IMDb reytinglari Cinemeta tomonidan taqdim etiladi; uning mashhur ro\'yxatlari haftalik ko\'rish jadvallari emas. Ushbu mahsulot TMDB API dan foydalanadi, lekin TMDB tomonidan tasdiqlanmagan yoki sertifikatlanmagan. Ixtiyoriy TMDb haftalik tendentsiyalari raqamlarni ko\'rishni emas, balki TMDb qiziqishini aks ettiradi. Ballar manba belgilarini saqlab qoladi.';
	@override String get tmdbSettings => 'Kashfiyot manbalari';
	@override String get setupDescription => 'Cinemeta kashfiyoti darhol akkauntsiz ishlaydi: mashhur filmlar va shoular, IMDb reytinglari va sovrindorlar. TMDb ni API kaliti yoki themoviedb.org/settings/api dan API o‘qish kirish tokeni yordamida haftalik trendlar uchun ixtiyoriy ravishda ulang. Hisob maʼlumotlaringiz ushbu qurilmada saqlanadi.';
	@override String get apiKey => 'TMDb API kaliti / kirish tokenini o\'qish';
	@override String get connect => 'TMDb ni ulang';
	@override String get connecting => 'Ulanmoqda…';
	@override String get connected => 'TMDb ulandi · Haftalik tendentsiyalar va mukofotlar yoqilgan';
	@override String get builtInKeyNote => 'Luroka o‘rnatilgan umumiy TMDb kalitida ishlaydi. Ajratilgan tarif cheklovlari va to\'liq nazorat uchun o\'zingizning bepul kalitingizni quyida qo\'shing.';
	@override String get disconnect => 'TMDbni uzing';
	@override String get invalidKey => 'TMDb tasdiqlanmadi. Hisob ma\'lumotlarini va internet ulanishingizni tekshiring.';
	@override String get feedError => 'TMDb kashfiyoti mavjud emas. Iltimos, qayta urinib koʻring.';
	@override String get allTitles => 'Barcha sarlavhalar';
	@override String get available => 'Kutubxonangizda';
	@override String get checking => 'Kutubxonalar tekshirilmoqda…';
	@override String get availabilityUnknown => 'Ayrim kutubxonalarni tekshirib bo‘lmadi. Yangilashga harakat qiling.';
	@override String get noAvailable => 'Kutubxonalarda mos keladigan nomlar topilmadi.';
	@override String get sourceInfo => 'Haftalik tendentsiyalar va tanlangan mukofot g\'oliblari · TMDb';
	@override String get configure => 'Kashfiyot sozlamalari';
}

// Path: app
class _Translations$app$uz extends Translations$app$en {
	_Translations$app$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Luroka';
}

// Path: appIcon
class _Translations$appIcon$uz extends Translations$appIcon$en {
	_Translations$appIcon$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ilova belgisi';
	@override String get defaultIcon => 'Standart';
	@override String get current => 'Joriy belgi';
	@override String get locked => 'Qo\'llab-quvvatlovchi imtiyozi';
	@override String get lockedHint => 'Muqobil piktogrammalar qo\'llab-quvvatlovchi imtiyozidir.';
	@override String get changeFailed => 'Ilova belgisini o‘zgartirib bo‘lmadi';
	@override String get launcherHint => 'Lurokadan chiqqaningizdan keyin yangi belgi asosiy ekranda paydo bo\'ladi.';
	@override String get tvLauncherHint => 'Yangi banner Lurokadan chiqqaningizdan keyin paydo bo\'ladi. Android TV televizor qayta ishga tushmaguncha eskisini ko‘rsatishda davom etishi mumkin.';
	@override late final _Translations$appIcon$names$uz names = _Translations$appIcon$names$uz._(_root);
}

// Path: auth
class _Translations$auth$uz extends Translations$auth$en {
	_Translations$auth$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get signInWithPlex => 'Plex orqali kirish';
	@override String get showQRCode => 'QR kodni koʻrsatish';
	@override String get authenticate => 'Tasdiqlash';
	@override String get authenticationTimeout => 'Tasdiqlash vaqti tugadi. Iltimos, qaytadan urinib koʻring.';
	@override String get scanQRToSignIn => 'Kirish uchun ushbu QR kodni skanerlang';
	@override String get waitingForAuth => 'Tasdiqlanish kutilmoqda...\nBrauzeringizdan kiring.';
	@override String get useBrowser => 'Brauzerdan foydalanish';
	@override String get or => 'yoki';
	@override String connectToMediaBrowser({required Object product}) => '${product}ga ulanish';
	@override String get quickConnect => 'Tezkor ulanish';
	@override String get useQuickConnect => 'Tezkor ulanishdan foydalanish';
	@override String get quickConnectInstructions => 'Jellyfin-da Tezkor ulanishni oching va ushbu kodni kiriting.';
	@override String get quickConnectWaiting => 'Tasdiq kutilmoqda…';
	@override String get quickConnectCancel => 'Bekor qilish';
	@override String get quickConnectExpired => 'Tezkor ulanish vaqti tugadi. Qaytadan urinib koʻring.';
	@override String get localDataRecoveryRequired => 'Luroka mahalliy kirish maʼlumotlarini tiklay olmadi. Iltimos, qaytadan kiring.';
	@override String get pinCheckRejected => 'Plex PIN tekshiruvi rad etildi';
}

// Path: common
class _Translations$common$uz extends Translations$common$en {
	_Translations$common$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get cancel => 'Bekor qilish';
	@override String get save => 'Saqlash';
	@override String get close => 'Yopish';
	@override String get clear => 'Tozalash';
	@override String get reset => 'Qayta oʻrnatish';
	@override String get later => 'Keyinroq';
	@override String get submit => 'Yuborish';
	@override String get confirm => 'Tasdiqlash';
	@override String get retry => 'Qaytadan urinish';
	@override String get logout => 'Chiqish';
	@override String get unknown => 'Nomaʼlum';
	@override String get refresh => 'Yangilash';
	@override String get yes => 'Ha';
	@override String get no => 'Yoʻq';
	@override String get delete => 'Oʻchirish';
	@override String get edit => 'Tahrirlash';
	@override String get shuffle => 'Aralashtirish';
	@override String get addTo => 'Qoʻshish...';
	@override String get createNew => 'Yangi yaratish';
	@override String get connect => 'Ulanish';
	@override String get disconnect => 'Uzilish';
	@override String get play => 'Ijro etish';
	@override String get pause => 'Pauza';
	@override String get resume => 'Davom ettirish';
	@override String get error => 'Xatolik';
	@override String get search => 'Qidiruv';
	@override String get home => 'Bosh sahifa';
	@override String get back => 'Orqaga';
	@override String get settings => 'Sozlamalar';
	@override String get mute => 'Ovozni oʻchirish';
	@override String get ok => 'Tushunarli';
	@override String get off => 'Oʻchirilgan';
	@override String get options => 'Parametrlar';
	@override String seasonNumber({required Object number}) => '${number}-mavsum';
	@override String episodeNumberTitle({required Object number, required Object title}) => '${number}-qism - ${title}';
	@override String chapterNumber({required Object number}) => '${number}-boʻlim';
	@override String get reconnect => 'Qayta ulanish';
	@override String get viewAll => 'Barchasini koʻrish';
	@override String get serversUnreachable => 'Serverlarga kirish imkonsiz';
	@override String get loading => 'Yuklanmoqda...';
	@override String get fullscreen => 'Toʻliq ekran';
	@override String get exitFullscreen => 'Toʻliq ekrandan chiqish';
	@override late final _Translations$common$ratingSource$uz ratingSource = _Translations$common$ratingSource$uz._(_root);
	@override String get notAvailable => 'N/A';
	@override String get url => 'URL';
	@override String get letterKeys => 'ABC';
	@override late final _Translations$common$mediaKind$uz mediaKind = _Translations$common$mediaKind$uz._(_root);
	@override String get stay => 'Qoling';
	@override String get exitApp => 'Chiqish';
	@override String get exitAppBody => 'Haqiqatan ham Luroka dan chiqmoqchimisiz?';
}

// Path: tvHints
class _Translations$tvHints$uz extends Translations$tvHints$en {
	_Translations$tvHints$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get select => 'Tanlang';
	@override String get browse => 'Ko‘rib chiqish';
	@override String get back => 'Orqaga';
}

// Path: screens
class _Translations$screens$uz extends Translations$screens$en {
	_Translations$screens$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get licenses => 'Litsenziyalar';
	@override String get switchProfile => 'Profilni almashtirish';
	@override String get subtitleStyling => 'Subtitr sozlamalari';
	@override String get mpvConfig => 'mpv.conf';
	@override String get logs => 'Jurnallar';
}

// Path: mediaExtras
class _Translations$mediaExtras$uz extends Translations$mediaExtras$en {
	_Translations$mediaExtras$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get trailers => 'Treylerlar';
	@override String get featurettes => 'Xarakteristikalar';
	@override String get interviews => 'Intervyular';
	@override String get deletedScenes => 'O\'chirilgan sahnalar';
	@override String get behindTheScenes => 'Sahna ortida';
	@override String get scenesAndClips => 'Sahnalar va Kliplar';
	@override String get other => 'Boshqa qo\'shimchalar';
}

// Path: update
class _Translations$update$uz extends Translations$update$en {
	_Translations$update$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get available => 'Yangilanish mavjud';
	@override String versionAvailable({required Object version}) => '${version} versiyasi mavjud';
	@override String currentVersion({required Object version}) => 'Joriy: ${version}';
	@override String get skipVersion => 'Ushbu versiyani oʻtkazib yuborish';
	@override String get viewRelease => 'Tafsilotlarni koʻrish';
	@override String get latestVersion => 'Sizda eng soʻnggi versiya oʻrnatilgan';
	@override String get checkFailed => 'Yangilanishlarni tekshirish imkoni boʻlmadi';
}

// Path: supporter
class _Translations$supporter$uz extends Translations$supporter$en {
	_Translations$supporter$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Luroka qo\'llab-quvvatlovchi';
	@override String get intro => 'Luroka rivojlanishini qo\'llab-quvvatlaydigan va kosmetik qo\'shimchalarni ochadigan bir martalik xarid:';
	@override String get presetThemes => 'Oldindan o\'rnatilgan mavzular';
	@override String get presetThemesDescription => 'Ember, muzlik, o\'rmon, olxo\'ri va qog\'oz';
	@override String get customTheme => 'Shaxsiy mavzu';
	@override String get customThemeDescription => 'Har bir rangni o\'zingiz tanlang';
	@override String get appIcons => 'Ilova piktogrammalari';
	@override String get appIconsDescription => 'Muqobil Luroka belgisini tanlang';
	@override String buy({required Object price}) => '${price} uchun sotib oling';
	@override String get loadingPrice => 'Narxi yuklanmoqda...';
	@override String get restore => 'Xaridlarni tiklash';
	@override String get pending => 'Xaridingiz toʻlov yoki tasdiqlashni kutmoqda. Do\'kon uni tugatgandan so\'ng, qo\'shimchalar qulfdan chiqariladi.';
	@override String get thankYouTitle => 'Luroka-ni qo\'llab-quvvatlaganingiz uchun tashakkur';
	@override String get thankYouBody => 'Qo\'llab-quvvatlovchi qo\'shimchalaringiz qulfdan chiqarildi.';
	@override String get tileSubtitle => 'Bir martalik xarid bilan mavzular va ilova piktogrammalarini qulfdan chiqaring';
	@override String get tileSubtitleThemesOnly => 'Bir martalik xarid bilan mavzularni oching';
	@override String get tileUnlocked => 'Qo\'llab-quvvatlaganingiz uchun rahmat';
	@override late final _Translations$supporter$errors$uz errors = _Translations$supporter$errors$uz._(_root);
}

// Path: settings
class _Translations$settings$uz extends Translations$settings$en {
	_Translations$settings$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sozlamalar';
	@override String get supportDeveloper => 'Luroka-ni qoʻllab-quvvatlash';
	@override String get supportDeveloperDescription => 'Dasturchini Liberapay orqali qoʻllab-quvvatlang';
	@override String get language => 'Til';
	@override String get theme => 'Mavzu';
	@override String get appearance => 'Tashqi koʻrinish';
	@override String get videoPlayback => 'Video ijrosi';
	@override String get videoPlaybackDescription => 'Ijro parametrlarini sozlang';
	@override String get advanced => 'Kengaytirilgan';
	@override String get episodePosterMode => 'Epizod afishasi uslubi';
	@override String get seriesPoster => 'Serial posteri';
	@override String get seasonPoster => 'Mavsum posteri';
	@override String get episodeThumbnail => 'Kadr koʻrinishi';
	@override String get homeHeroSize => 'Karusel o\'lchami';
	@override String get homeHeroSizeSmall => 'Kichik';
	@override String get homeHeroSizeMedium => 'O\'rta';
	@override String get homeHeroSizeLarge => 'Katta';
	@override String get secondsLabel => 'Soniya';
	@override String get minutesLabel => 'Daqiqa';
	@override String get secondsShort => 'son';
	@override String get minutesShort => 'daq';
	@override String durationHint({required Object min, required Object max}) => 'Vaqtni kiriting (${min}-${max})';
	@override String get systemTheme => 'Tizim sozlamasi';
	@override String get lightTheme => 'Yorugʻ';
	@override String get darkTheme => 'Toʻq';
	@override String get oledTheme => 'OLED';
	@override String get libraryDensity => 'Kutubxona zichligi';
	@override String get displayScale => 'Ekran miqyosi';
	@override String get compact => 'Ixcham';
	@override String get comfortable => 'Qulay';
	@override String get gridSpacing => 'Toʻr oraligʻi';
	@override String get gridSpacingTight => 'Zich';
	@override String get gridSpacingNormal => 'Normal';
	@override String get gridSpacingSpacious => 'Keng';
	@override String get tvCornerSpotlightBackdrop => 'Burchak yoritish foni';
	@override String get tvCornerSpotlightBackdropDescription => 'Fonni toʻliq ekran oʻrniga yuqori oʻng burchakda koʻrsatish';
	@override String get viewMode => 'Koʻrish rejimi';
	@override String get gridView => 'Toʻrsimon';
	@override String get listView => 'Roʻyxat';
	@override String get continueWatchingAction => '"Tomoshani davom ettirish" harakati';
	@override String get continueWatchingPlay => 'Ijro etish';
	@override String get continueWatchingDetails => 'Tafsilotlarni ochish';
	@override String get episodeAction => 'Qism harakati';
	@override String get episodePlay => 'Ijro etish';
	@override String get episodeDetails => 'Tafsilotlarni ochish';
	@override String get useGlobalHubs => 'Bosh sahifa tuzilishidan foydalanish';
	@override String get useGlobalHubsDescription => 'Birlashtirilgan bosh sahifa boʻlimlarini koʻrsatish.';
	@override String get showServerNameOnHubs => 'Boʻlimlarda server nomini koʻrsatish';
	@override String get showServerNameOnHubsDescription => 'Boʻlim sarlavhalarida har doim server nomini koʻrsatish.';
	@override String get groupLibrariesByServer => 'Kutubxonalarni server boʻyicha guruhlash';
	@override String get groupLibrariesByServerDescription => 'Yon menyudagi kutubxonalarni serverlar boʻyicha guruhlash.';
	@override String get alwaysKeepSidebarOpen => 'Yon menyuni har doim ochiq saqlash';
	@override String get alwaysKeepSidebarOpenDescription => 'Yon menyu ochiq holatda qoladi, kontent maydoni unga moslashadi';
	@override String get showUnwatchedCount => 'Koʻrilmaganlar sonini koʻrsatish';
	@override String get showUnwatchedCountDescription => 'Seriallar va mavsumlarda koʻrilmagan qismlar sonini koʻrsatish';
	@override String get showWatchedIndicators => 'Koʻrilgan belgilarni koʻrsatish';
	@override String get showWatchedIndicatorsDescription => 'Koʻrilgan filmlar, seriallar va qismlarda tasdiq belgisi koʻrsatish';
	@override String get showEpisodeNumberOnCards => 'Kartochkalarda qism raqamini koʻrsatish';
	@override String get showEpisodeNumberOnCardsDescription => 'Qism kartochkalarida mavsum va qism raqamini koʻrsatish';
	@override String get showSeasonPostersOnTabs => 'Varaqlarda mavsum posterlarini koʻrsatish';
	@override String get showSeasonPostersOnTabsDescription => 'Har bir mavsum posterini oʻz boʻlimida koʻrsatish';
	@override String get tvFullCardLayout => 'Toʻliq TV kartochkalari';
	@override String get tvFullCardLayoutDescription => 'Aktyor ismlari ustiga yozilgan, faqat rasmdan iborat TV kartochkalaridan foydalanish';
	@override String get focusGlow => 'Fokus nuri';
	@override String get focusGlowDescription => 'Tanlangan kartochka atrofida yumshoq nur koʻrsatish';
	@override String get visualEffects => 'Vizual effektlar';
	@override String get visualEffectsAuto => 'Avtomatik';
	@override String get visualEffectsAutoDescription => 'Kuchsiz qurilmalarda effektlarni avtomatik kamaytirish';
	@override String get visualEffectsFull => 'Toʻliq';
	@override String get visualEffectsReduced => 'Kamaytirilgan';
	@override String get visualEffectsReducedDescription => 'Kamroq animatsiya va pastroq sifatli rasmlar';
	@override String get hideSpoilers => 'Koʻrilmagan qismlar uchun spoylerlarni yashirish';
	@override String get hideSpoilersDescription => 'Koʻrilmagan qismlar rasmlari va tavsiflarini xiralashtirish';
	@override String get playerBackend => 'Pleyer infratuzilmasi';
	@override String get playerBackendDescription => 'mpv koʻproq formatlarni oʻynaydi va koʻproq funksiyalarni yoqadi — tavsiya etiladi. ExoPlayer bu qurilmada ijro muvaffaqiyatsiz yoki qoqilib qolsa yordam beradi.';
	@override String get exoPlayer => 'ExoPlayer';
	@override String get mpv => 'mpv';
	@override String get hardwareDecoding => 'Apparatli dekodlash';
	@override String get hardwareDecodingDescription => 'Imkon qadar apparatli tezlashtirishdan foydalanish';
	@override String get playbackBuffer => 'Ijro buferi';
	@override String get playbackBufferAuto => 'Avto (tavsiya etiladi)';
	@override String get playbackBufferLarge => 'Katta';
	@override String get playbackBufferExtraLarge => 'Juda katta';
	@override String get playbackBufferDescription => 'Beqaror ulanishlarga qarshi koʻproq buferlaydi. Bufer hajmi bilan ham cheklanadi.';
	@override String get defaultQualityTitle => 'Standart sifat';
	@override String get streamingQualityOriginalHint => 'Faylni aynan saqlangan tarzda ijro etadi - eng yaxshi sifat, eng ko\'p tarmoqli kengligidan foydalanadi';
	@override String get cellularQualityTitle => 'Mobil tarmoqda standart sifat';
	@override String get cellularQualitySameAsDefault => 'Standart sifat bilan bir xil';
	@override String get directPlayCoveredQuality => 'Kichik videolarni asl sifatda ijro etish';
	@override String get directPlayCoveredQualityDescription => 'Sifat chegarasiga kiruvchi videolarni qayta kodlash oʻrniga toʻgʻridan-toʻgʻri ijro etish';
	@override String get videoCodecs => 'Video kodeklar';
	@override String get videoCodecsDescription => 'Belgilanmagan kodeklarni server qayta kodlaydi';
	@override String get videoCodecsAlwaysAccepted => 'Har doim qabul qilinadi';
	@override String get musicQualityTitle => 'Musiqa sifati';
	@override String get subtitleStyling => 'Subtitr sozlamalari';
	@override String get subtitleStylingDescription => 'Subtitrlar koʻrinishini moslashtiring';
	@override String get smallSkipDuration => 'Kichik oʻtkazish vaqti';
	@override String get largeSkipDuration => 'Katta oʻtkazish vaqti';
	@override String get rewindOnResume => 'Davom ettirganda orqaga qaytarish';
	@override String secondsUnit({required Object seconds}) => '${seconds} soniya';
	@override String get defaultSleepTimer => 'Standart uyqu taymeri';
	@override String minutesUnit({required Object minutes}) => '${minutes} daqiqa';
	@override String get rememberTrackSelections => 'Har bir film/serial uchun ovoz/subtitr tanlovini eslab qolish';
	@override String get rememberTrackSelectionsDescription => 'Har bir media uchun ovoz va subtitr sozlamalarini saqlash';
	@override String get rememberTrackSelectionsBackendRule => 'Plex har bir tanlovni serverda fayl boʻyicha saqlaydi; Jellyfin hisobning "Tanlovlarni eslab qolish" funksiyasini ham yoqadi; Emby qoʻllab-quvvatlanmaydi';
	@override String get followServerTrackSelections => 'Har bir epizod uchun serverdagi tanlovlardan foydalanish';
	@override String get followServerTrackSelectionsDescription => 'Epizod almashganda joriy tanlovni ko\'chirish o\'rniga serverda tanlangan ovoz va subtitrni qo\'llash';
	@override String get resumeMusicOnLaunch => 'Musiqa seansini eslab qolish';
	@override String get resumeMusicOnLaunchDescription => 'Ilova ochilganda oxirgi qo\'shiqni to\'xtagan joyida pauzada ochish';
	@override String get showChapterMarkersOnTimeline => 'Vaqt shkalasida boʻlim belgilarini koʻrsatish';
	@override String get showChapterMarkersOnTimelineDescription => 'Vaqt shkalasini boʻlimlarga boʻlish';
	@override String get specialsOrdering => 'Maxsus qismlar epizodlar tartibida';
	@override String get specialsOrderingDescription => 'Maxsus qismlar serialning tomosha qilish tartibida qayerda ijro etiladi';
	@override String get specialsOrderingServer => 'Server tartibiga amal qilish';
	@override String get specialsOrderingAirDate => 'Efirdagi sana boʻyicha aralashtirish';
	@override String get specialsOrderingLast => 'Oddiy fasllardan keyin';
	@override String get clickVideoTogglesPlayback => 'Ijro/pauza uchun videoga bosing';
	@override String get clickVideoTogglesPlaybackDescription => 'Boshqaruv tugmalarini koʻrsatish oʻrniga videoni ijro etish yoki pauza qilish';
	@override String get videoPlayerControls => 'Video pleyer boshqaruv elementlari';
	@override String get keyboardShortcuts => 'Klaviatura tugmalari';
	@override String get keyboardShortcutsDescription => 'Klaviatura tugmalarini moslashtiring';
	@override String get videoPlayerNavigation => 'Video pleyer navigatsiyasi';
	@override String get videoPlayerNavigationDescription => 'Pleyerni boshqarish uchun yoʻnalish tugmalaridan foydalaning';
	@override String get watchTogetherRelay => 'Birgalikda tomosha relesi';
	@override String get watchTogetherRelayDescription => 'Ochiq kuzatuv partiyasi releylari, agar siz oʻzingiz oʻrnatmasangiz';
	@override String get watchTogetherRelayHint => 'https://my-relay.example.com';
	@override String get watchTogetherRelayInvalid => 'Toʻgʻri HTTP yoki HTTPS rele manzilini kiriting.';
	@override String get crashReporting => 'Xatoliklar haqida hisobot';
	@override String get crashReportingDescription => 'Ilovani takomillashtirishga yordam berish uchun xatoliklar hisobotini yuboring';
	@override String get debugLogging => 'Nosozliklarni aniqlash jurnali';
	@override String get debugLoggingDescription => 'Muammolarni hal qilish uchun batafsil jurnal yuritishni yoqing';
	@override String get viewLogs => 'Jurnallarni koʻrish';
	@override String get viewLogsDescription => 'Ilova jurnallarini koʻrish';
	@override String get clearImageCache => 'Rasm keshini tozalash';
	@override String get clearImageCacheDescription => 'Keshlangan rasm va eskizlarni tozalaydi. Qayta yuklab olinmaguncha rasmlar sekinroq ochilishi mumkin.';
	@override String get clearImageCacheSuccess => 'Rasm keshi muvaffaqiyatli tozalandi';
	@override String get resetSettings => 'Sozlamalarni qayta oʻrnatish';
	@override String get resetSettingsDescription => 'Standart sozlamalarni tiklash. Bu amalni ortga qaytarib boʻlmaydi.';
	@override String get resetSettingsSuccess => 'Sozlamalar muvaffaqiyatli qayta oʻrnatildi';
	@override String get backup => 'Zahira nusxa';
	@override String get exportSettings => 'Sozlamalarni eksport qilish';
	@override String get exportSettingsDescription => 'Parametrlaringizni faylga saqlang';
	@override String get exportSettingsSuccess => 'Sozlamalar eksport qilindi';
	@override String get importSettings => 'Sozlamalarni import qilish';
	@override String get importSettingsDescription => 'Parametrlarni fayldan tiklang';
	@override String get importSettingsConfirm => 'Bu joriy sozlamalaringiz ustidan yoziladi. Davom etasizmi?';
	@override String get importSettingsSuccess => 'Sozlamalar import qilindi';
	@override String get importSettingsInvalidFile => 'Ushbu fayl toʻgʻri Luroka sozlamalar fayli emas';
	@override String get importSettingsNoUser => 'Sozlamalarni import qilishdan oldin tizimga kiring';
	@override String get shortcutsReset => 'Tugmalar birlashmasi standart holatga qaytarildi';
	@override String get resetShortcutsConfirm => 'Bu sizning shaxsiy yorliqlaringizni standart sozlamalar bilan almashtiradi. Davom ettirilsinmi?';
	@override String get about => 'Dastur haqida';
	@override String get aboutDescription => 'Ilova haqida maʼlumot va litsenziyalar';
	@override String get updates => 'Yangilanishlar';
	@override String get updateAvailable => 'Yangilanish mavjud';
	@override String get checkForUpdates => 'Yangilanishlarni tekshirish';
	@override String get autoCheckUpdatesOnStartup => 'Ishga tushganda avtomatik tekshirish';
	@override String get autoCheckUpdatesOnStartupDescription => 'Ishga tushganda yangilanish boʻlsa xabar berish';
	@override String get validationErrorEnterNumber => 'Toʻgʻri raqam kiriting';
	@override String validationErrorDuration({required Object min, required Object max, required Object unit}) => 'Vaqt ${min} va ${max} ${unit} orasida boʻlishi kerak';
	@override String shortcutAlreadyAssigned({required Object action}) => 'Bu birlashma ${action} harakatiga biriktirilgan';
	@override String shortcutUpdated({required Object action}) => '${action} uchun tugmalar birlashmasi yangilandi';
	@override String get saveFailed => 'Oʻzgarishlar saqlanmadi. Qaytadan urinib koʻring.';
	@override String get autoPlayAndSkip => 'Avtomatik ijro va oʻtkazish';
	@override String get autoPlayNextEpisode => 'Keyingi qismni avtomatik ijro etish';
	@override String get autoPlayNextEpisodeDescription => 'Qism tugagach, keyingisini avtomatik ijro etish';
	@override String get shuffleStartsFromBeginning => 'Aralashtirish boshidan boshlanadi';
	@override String get shuffleStartsFromBeginningDescription => 'Aralashtirganda har bir qismni davom ettirish oʻrniga boshidan boshlash';
	@override String get playNextCountdown => 'Keyingi qism sanogʻi';
	@override String get playNextCountdownImmediate => 'Darhol ijro etish';
	@override String get skipIntroMode => 'Kirishni oʻtkazish';
	@override String get skipIntroModeOffDescription => 'Kirishlarni oʻtkazish tugmasiz oddiy ijro etish';
	@override String get skipIntroModeButtonDescription => 'Kirish boshlanganda oʻtkazish tugmasini koʻrsatish';
	@override String get skipIntroModeAutoDescription => 'Kirishlarni quyidagi kechikishdan keyin avtomatik oʻtkazish';
	@override String get skipCreditsMode => 'Titrlarni oʻtkazish';
	@override String get skipCreditsModeOffDescription => 'Titrlarni oʻtkazish tugmasiz oddiy ijro etish';
	@override String get skipCreditsModeButtonDescription => 'Titrlar boshlanganda oʻtkazish tugmasini koʻrsatish';
	@override String get skipCreditsModeAutoDescription => 'Titrlarni avtomatik oʻtkazib, keyingi qismni ijro etish';
	@override String get skipMarkerModeOff => 'Oʻchirilgan';
	@override String get skipMarkerModeButton => 'Tugmani koʻrsatish';
	@override String get skipMarkerModeAuto => 'Avtomatik';
	@override String get forceSkipMarkerFallback => 'Zahira belgilarini majburlash';
	@override String get forceSkipMarkerFallbackDescription => 'Plex belgilari boʻlsa ham boʻlim sarlavhasi shablonlaridan foydalanish';
	@override String get autoSkipDelay => 'Avtomatik oʻtkazish kechikishi';
	@override String autoSkipDelayDescription({required Object seconds}) => 'Avtomatik oʻtkazishdan oldin ${seconds} soniya kutilsin';
	@override String get introPattern => 'Kirish qismi belgisi shabloni';
	@override String get introPatternDescription => 'Boʻlim sarlavhalarida introni topish uchun Regex shabloni';
	@override String get creditsPattern => 'Titr belgisi shabloni';
	@override String get creditsPatternDescription => 'Boʻlim sarlavhalarida titrlarni topish uchun Regex shabloni';
	@override String get invalidRegex => 'Notoʻgʻri muntazam ifoda (Regex)';
	@override String get regex => 'Muntazam ifoda (Regex)';
	@override String get downloads => 'Yuklamalar';
	@override String get downloadLocationDescription => 'Yuklangan fayllar saqlanadigan joyni tanlang';
	@override String get downloadLocationDefault => 'Standart (Ilova xotirasi)';
	@override String get downloadLocationCustom => 'Boshqa joy';
	@override String get selectFolder => 'Jildni tanlash';
	@override String get resetToDefault => 'Standart holatga qaytarish';
	@override String currentPath({required Object path}) => 'Joriy: ${path}';
	@override String get downloadLocationChanged => 'Yuklash joyi oʻzgartirildi';
	@override String get downloadLocationReset => 'Yuklash joyi standart holatga qaytarildi';
	@override String get downloadLocationInvalid => 'Tanlangan jildga yozib boʻlmadi';
	@override String get downloadLocationPickerUnavailable => 'Ushbu qurilmada jildni tanlash imkoniyati yoʻq';
	@override String get downloadOnWifiOnly => 'Faqat Wi-Fi orqali yuklash';
	@override String get downloadOnWifiOnlyDescription => 'Mobil tarmoqdan foydalanilganda yuklashni toʻxtatib turish';
	@override String get autoRemoveWatchedDownloads => 'Koʻrilgan yuklamalarni avtomatik oʻchirish';
	@override String get autoRemoveWatchedDownloadsDescription => 'Koʻrib boʻlingan yuklamalarni avtomatik oʻchirish';
	@override String get cellularDownloadBlocked => 'Mobil tarmoqda yuklash taqiqlangan. Wi-Fi-dan foydalaning yoki sozlamani oʻzgartiring.';
	@override String get maxVolume => 'Maksimal ovoz';
	@override String get maxVolumeDescription => 'Pastroq ovozli videolar uchun ovozni 100%-dan oshirishga ruxsat berish';
	@override String maxVolumePercent({required Object percent}) => '%${percent}';
	@override String get discordRichPresence => 'Discord’dagi faollik holati';
	@override String get discordRichPresenceDescription => 'Discord-da nima tomosha qilayotganingizni koʻrsatish';
	@override String get services => 'Xizmatlar';
	@override String get servicesDescription => 'Trakt, MyAnimeList, Seerr va boshqalarni ulang';
	@override String get manageLibrariesDescription => 'Kutubxonalarni tartiblash va yashirish';
	@override String get companionRemoteServer => 'Yordamchi pult serveri';
	@override String get companionRemoteServerDescription => 'Tarmoqdagi mobil qurilmalarga ushbu ilovani boshqarishga ruxsat berish';
	@override String get companionRemoteServerStartFailed => 'Yordamchi pult serverini ishga tushirib bo‘lmadi';
	@override String get companionRemoteServerStopFailed => 'Yordamchi pult serverini to‘xtatib bo‘lmadi';
	@override String get autoPip => 'Avtomatik Rasm ichida rasm (PiP)';
	@override String get autoPipDescription => 'Video ijro etilayotganda ilovadan chiqilganda avto-PiP rejimiga oʻtish';
	@override String get matchContentFrameRate => 'Kadrlar chastotasini moslashtirish';
	@override String get matchContentFrameRateDescription => 'Ekran chastotasini video kontentiga moslashtirish';
	@override String get matchContentResolution => 'Kontent oʻlchamiga moslashtirish';
	@override String get matchContentResolutionDescription => 'Masshtablashni televizor bajarishi uchun ekranni videoning oʻz oʻlchamiga oʻtkazadi. Ijro vaqtida menyular va subtitrlar ham masshtablanadi';
	@override String get matchRefreshRate => 'Yangilanish chastotasini moslashtirish';
	@override String get matchRefreshRateDescription => 'Toʻliq ekranda ekran chastotasini moslashtirish';
	@override String get matchDynamicRange => 'Dinamik diapazonni moslashtirish';
	@override String get matchDynamicRangeDescription => 'HDR kontent uchun HDR-ni yoqish, soʻng SDR-ga qaytish';
	@override String get displaySwitchDelay => 'Ekranni almashtirish kechikishi';
	@override String get tunneledPlayback => 'Tunnelli ijro';
	@override String get tunneledPlaybackDescription => 'Video tunnellashdan foydalanish. HDR ijrosida ekran qora boʻlsa yoki harakat uzilib qolsa, oʻchiring.';
	@override String get audioPassthrough => 'Ovozni toʻgʻridan-toʻgʻri oʻtkazish (Passthrough)';
	@override String get audioPassthroughDescription => 'Dolby/DTS ovozini qayta kodlamasdan resiver yoki televizoringizga yuboradi va atroflicha ovozni saqlaydi. Ovoz boʻlmasa, oʻchiring.';
	@override String get audioPassthroughDescriptionApple => 'Dolby Digital Plus, jumladan Atmos uchun Apple’ning oʻz Dolby dekoderidan foydalanish. DTS va TrueHD avvalgidek koʻp kanalli PCM sifatida ijro etiladi. Ovoz boʻlmasa, oʻchiring.';
	@override String get audioPassthroughDescriptionAppleSpatial => 'Dolby Digital Plus, jumladan Atmos uchun Apple kompaniyasining Dolby dekoderidan foydalaning. iOS, iPadOS va tvOS 26 yoki undan keyingi versiyalarida TrueHD Atmos va DTS:X fazoviy audio sifatida ijro etiladi. Boshqa DTS va TrueHD treklari ko\'p kanalli PCM sifatida o\'ynaydi. Ovoz bo\'lmasa, o\'chiring.';
	@override String get audioPassthroughOverriddenByNormalization => 'Ovoz balandligini meʼyorlashtirish yoqilganda oʻchirilgan';
	@override String get audioChannelLimit => 'Audio kanallar';
	@override String get audioChannelLimitDescription => 'Har bir kanalni ijro eta olmaydigan karnaylar, naushniklar yoki HDMI sozlamalari uchun dekodlangan audioni pastga aralashtiring';
	@override String get audioChannelLimitOriginal => 'Asl';
	@override String get audioChannelLimitOriginalDescription => 'Trekdagi har bir kanalni o\'ynang';
	@override String get audioChannelLimitSurround51 => '5.1 gacha';
	@override String get audioChannelLimitSurround51Description => 'Faqat 5,1 PCM talab qiladigan televizorlar va qabul qiluvchilar uchun 7,1 dan 5,1 gacha aralashtiriladi. O\'tish joyi ta\'sir qilmaydi.';
	@override String get audioChannelLimitStereo => 'Stereo';
	@override String get audioChannelLimitStereoDescription => 'Stereo dinamiklar yoki minigarnituralar uchun ikkita kanalni aralashtiring. O\'tishni o\'chiradi.';
	@override String get downmixCenterBoost => 'Markaziy kanalni kuchaytirish';
	@override String downmixCenterBoostValue({required Object db}) => '${db} dB';
	@override String get downmixCenterBoostLabel => 'Kuchaytirish (dB)';
	@override String get downmixCenterBoostShort => 'dB';
	@override String get audioDownmixNormalize => 'Oʻtkazishda ovozni meʼyorlashtirish';
	@override String get audioDownmixNormalizeDescription => 'Ovoz buzilishining oldini olish uchun darajani tushirish. Asl ovoz balandligini saqlash uchun oʻchiring (baland sahnalar buzilishi mumkin).';
	@override String get dvConversionMode => 'Dolby Vision oʻtkazmasi';
	@override String get dvConversionModeDescription => 'Dolby Vision Profile 7 fayllarini qayta ishlash rejimini tanlang.';
	@override String get dvConversionAuto => 'Avtomatik';
	@override String get dvConversionNative => 'Ichki / Oʻchirilgan';
	@override String get dvConversionDv81 => 'P7 → P8.1';
	@override String get dvConversionHevcStrip => 'P7 → HEVC';
	@override String get dvConversionAutoDescription => 'Qurilma imkoniyatlaridan foydalanish';
	@override String get dvConversionNativeDescription => 'Ichki DV7 rejimini majburlash';
	@override String get dvConversionDv81Description => 'Dolby Vision profile 8.1 formatiga oʻtkazish';
	@override String get dvConversionHevcStripDescription => 'Dolby Vision qatlamlarini olib tashlash va HEVC sifatida koʻrsatish';
	@override String get disableDolbyVision => 'Dolby Vision\'ni oʻchirish';
	@override String get disableDolbyVisionDescription => 'Faylda boʻlsa, Dolby Vision oʻrniga HDR10 yoki HLG qatlamini ijro etish';
	@override String get hdrSdrConversion => 'HDR\'ni SDR\'ga aylantirish';
	@override String get hdrSdrConversionDescription => 'Displey HDR\'ni ko‘rsata olmaganda HDR videoni nima aylantirishini tanlang.';
	@override String get hdrSdrConversionAuto => 'Avtomatik';
	@override String get hdrSdrConversionAutoDescription => 'Android 9 va undan keyingi versiyalarda qurilma, eskiroq versiyalarda pleyer';
	@override String get hdrSdrConversionDevice => 'Qurilma';
	@override String get hdrSdrConversionDeviceDescription => 'Aylantirishni qurilmaning video apparati bajaradi. Eng tezi, lekin ranglar qurilmaga bog‘liq';
	@override String get hdrSdrConversionPlayer => 'Pleyer';
	@override String get hdrSdrConversionPlayerDescription => 'Aylantirishni pleyer bajaradi. Ranglar bir xil, lekin kuchsiz TV-pristavkalarda 4K qotishi mumkin';
	@override String get deinterlace => 'Interleysni olib tashlash';
	@override String get deinterlaceDescription => 'Interleys videodagi taroqsimon artefaktlarni olib tashlash (faqat mpv pleyerida)';
	@override String get deinterlaceOff => 'Oʻchirilgan';
	@override String get deinterlaceOffDescription => 'O‘zaro bog‘langan videoni dekodlangan holda ko‘rsatish';
	@override String get deinterlaceVideo => 'Video';
	@override String get deinterlaceVideoDescription => 'Har bir maydonni to\'liq kadrga aylantiring. Sport, yangiliklar va kontsertlar kabi TV uchun olingan videolar uchun';
	@override String get deinterlaceFilm => 'Film';
	@override String get deinterlaceFilmDescription => 'NTSC DVD disklarida keng tarqalgan 29,97 kadr / sekundgacha telesinatsiya qilingan film va animatsiyaning asl kadrlarini tiklang. Televizorda duduqlanishlar uchun video suratga olingan. Live TV Videodan foydalanadi';
	@override String get requireProfileSelectionOnOpen => 'Ochilganda profilni soʻrash';
	@override String get requireProfileSelectionOnOpenDescription => 'Ilova ochilgan har safar profilni tanlashni koʻrsatish';
	@override String get forceTvMode => 'TV rejimini majburlash';
	@override String get forceTvModeKeepTitle => 'Televizor tartibi saqlanib qolsinmi?';
	@override String forceTvModeKeepBody({required Object seconds}) => 'Televizor sxemasi masofadan boshqarish uchun mo\'ljallangan. ${seconds} s da oddiy tartibga qaytish.';
	@override String get forceTvModeKeepConfirm => 'Televizor tartibini saqlang';
	@override String get forceTvModeReverted => 'Televizor tartibi qaytarildi';
	@override String get forceTvModeDescription => 'TV interfeysini majburiy yoqish. Avtomatik aniqlanmaydigan qurilmalar uchun. Qayta ishga tushirish talab qilinadi.';
	@override String get startInFullscreen => 'Toʻliq ekranda boshlash';
	@override String get startInFullscreenDescription => 'Luroka-ni ochganda toʻliq ekran rejimida ochish';
	@override String get exitFullscreenOnPlayerClose => 'Pleyer yopilganda toʻliq ekrandan chiqish';
	@override String get exitFullscreenOnPlayerCloseDescription => 'Video pleyerni yopganda avtomatik ravishda toʻliq ekrandan chiqish';
	@override String get autoHidePerformanceOverlay => 'Unumdorlik panelini avto-yashirish';
	@override String get autoHidePerformanceOverlayDescription => 'Unumdorlik panelini boshqaruv tugmalari bilan birga yashirish';
	@override String get showNavBarLabels => 'Navigatsiya paneli matnlarini koʻrsatish';
	@override String get showNavBarLabelsDescription => 'Navigatsiya belgilarining ostida matnni koʻrsatish';
	@override String get startupSection => 'Boshlangʻich boʻlim';
	@override String get showExploreTab => 'Kashf qilish varagʻini koʻrsatish';
	@override String get showExploreTabDescription => 'Plex Discover va ulangan kuzatuvchilardagi kontent bilan Kashf qilish varagʻini koʻrsatish';
	@override String get liveTvDefaultFavorites => 'Jonli TV-da tanlangan kanallarni standart qilish';
	@override String get liveTvDefaultFavoritesDescription => 'Jonli TV ochilganda faqat tanlangan kanallarni koʻrsatish';
	@override String get general => 'Umumiy';
	@override String get generalDescription => 'Til, ishga tushirish va oyna xatti-harakati';
	@override String get languageAndRegion => 'Til va mintaqa';
	@override String get startup => 'Ishga tushirish';
	@override String get display => 'Displey';
	@override String get libraryAndCards => 'Kutubxona va kartochkalar';
	@override String get homeScreen => 'Bosh ekran';
	@override String get navigation => 'Navigatsiya';
	@override String get window => 'Oyna';
	@override String get liveTv => 'Jonli TV';
	@override String get player => 'Pleyer';
	@override String get videoAndDisplay => 'Video va displey';
	@override String get audio => 'Audio';
	@override String get quality => 'Sifat';
	@override String get subtitles => 'Subtitrlar';
	@override String get seekAndTiming => 'Oʻtkazish va vaqt sozlamalari';
	@override String get behavior => 'Xatti-harakat';
	@override String get gestures => 'Imo-ishoralar';
	@override String get gestureBrightnessSwipe => 'Yorqinlik surish';
	@override String get gestureBrightnessSwipeDescription => 'Yorqinlikni sozlash uchun chap chekkada yuqoriga yoki pastga suring';
	@override String get gestureVolumeSwipe => 'Ovoz surish';
	@override String get gestureVolumeSwipeDescription => 'Ovozni sozlash uchun oʻng chekkada yuqoriga yoki pastga suring';
	@override String get gesturePinchToZoom => 'Chimchilab masshtablash';
	@override String get gesturePinchToZoomDescription => 'Videoni yaqinlashtirish yoki uzoqlashtirish uchun chimchilang';
	@override String get rememberBrightnessLevel => 'Yorqinlik darajasini eslab qolish';
	@override String get rememberBrightnessLevelDescription => 'Ijroni oxirgi surish bilan oʻrnatilgan yorqinlikda boshlash';
	@override String get controls => 'Boshqaruv elementlari';
	@override String get rememberPlayerChanges => 'Pleyer oʻzgarishlarini eslab qolish';
	@override String get rememberPlayerChangesDescription => 'Ijro vaqtida qilingan oʻzgarish qayerda saqlanishi va qayta qoʻllanishi';
	@override String get scopePlaybackSpeed => 'Ijro tezligi';
	@override String get scopeShaderPreset => 'Sheyder oldindan sozlamasi';
	@override String get scopeAspectRatio => 'Tomonlar nisbati';
	@override String get scopeSyncOffsets => 'Audio va subtitr sinxronizatsiyasi';
	@override String get playerScopeOff => 'Saqlamaslik';
	@override String get playerScopeGlobal => 'Hamma joyda';
	@override String get playerScopeLibrary => 'Kutubxona boʻyicha';
	@override String get playerScopeTitle => 'Serial yoki film boʻyicha';
	@override String get exportDialogTitle => 'Luroka sozlamalarini eksport qilish';
	@override String get velvetHourTheme => 'Velvet soati';
}

// Path: themeEditor
class _Translations$themeEditor$uz extends Translations$themeEditor$en {
	_Translations$themeEditor$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get builtIn => 'O\'rnatilgan';
	@override String get presets => 'Oldindan sozlash';
	@override String get custom => 'Maxsus';
	@override String get customEmpty => 'Hali yaratilmagan';
	@override String get editCustom => 'Maxsus mavzuni tahrirlash';
	@override String get editCustomDescription => 'Har bir rangni o\'zingiz tanlang';
	@override String get locked => 'Supporter bilan qulfni oching';
	@override String get savedLocked => 'Saqlangan - Supporter bilan qulfdan chiqariladi';
	@override String get title => 'Maxsus mavzu';
	@override String get startFrom => 'dan boshlang';
	@override String get startFromDescription => 'Boshqa mavzudagi barcha ranglardan nusxa oling';
	@override String get colors => 'Ranglar';
	@override String get preview => 'Ko‘rib chiqish';
	@override late final _Translations$themeEditor$slots$uz slots = _Translations$themeEditor$slots$uz._(_root);
	@override String get opacity => 'Shaffoflik';
	@override String get hexHint => '#RRGGBB yoki #AARRGGBB';
	@override String get fromOtherThemes => 'Boshqa mavzulardan';
	@override String swatchLabel({required Object theme, required Object color}) => '${theme} ${color}';
	@override late final _Translations$themeEditor$contrast$uz contrast = _Translations$themeEditor$contrast$uz._(_root);
	@override String lowContrast({required Object pair, required Object ratio, required Object minimum}) => '${pair}: ${ratio}:1, tavsiya etilgan ${minimum}:1dan past';
	@override String get discardTitle => 'O\'zgarishlar bekor qilinsinmi?';
	@override String get discardMessage => 'Saqlanmagan rang o\'zgarishlaringiz yo\'qoladi.';
	@override String get discard => 'Bekor qilish';
	@override String previewCardTitle({required Object number}) => 'Qism ${number}';
	@override String previewCardSubtitle({required Object minutes}) => '${minutes} daqiqa qoldi';
	@override String get previewSwitch => 'Avtomatik ijro';
	@override String get previewMutedText => 'Ikkilamchi matn shunday o\'qiladi';
}

// Path: seriesBrowser
class _Translations$seriesBrowser$uz extends Translations$seriesBrowser$en {
	_Translations$seriesBrowser$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get oneEpisode => '1 qism';
	@override String watchedCount({required Object count}) => '${count} tomosha qilindi';
	@override String episodeCount({required Object count}) => '${count} epizodlari';
	@override String episodesFor({required Object season}) => '${season} · Qismlar';
	@override String get enterHint => 'Tanlang: ochiq mavsum · ↓: epizodlar';
}

// Path: titlePage
class _Translations$titlePage$uz extends Translations$titlePage$en {
	_Translations$titlePage$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get genre => 'Janr';
	@override String remaining({required Object time}) => '${time} qoldi';
	@override String continueEpisode({required Object season, required Object episode}) => 'Davom etish S${season} E${episode}';
	@override String get watchlist => 'Kuzatuv roʻyxati';
	@override String get more => 'Batafsil';
}

// Path: tvMenus
class _Translations$tvMenus$uz extends Translations$tvMenus$en {
	_Translations$tvMenus$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get appearanceDescription => 'Mavzu, ekran chetlari va plakatlar';
}

// Path: lurokaPlayer
class _Translations$lurokaPlayer$uz extends Translations$lurokaPlayer$en {
	_Translations$lurokaPlayer$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'O\'yinchi sozlamalari';
	@override String get watch => 'Tomosha qiling';
	@override String get watchDescription => 'Tezlikni o\'rnating, dam oling va keyin nima o\'ynashini hal qiling.';
	@override String get picture => 'Rasm sozlamalari';
	@override String get pictureDescription => 'Kattalashtirish, HDR va videoni qayta ishlash';
	@override String get sound => 'Audio va subtitrlar';
	@override String get audioSettings => 'Audio sozlamalari';
	@override String get soundDescription => 'Vaqt, ovoz balandligi va audio chiqishi';
	@override String get chooseTracks => 'Tillarni va subtitr treklarini tanlang';
	@override String get tools => 'Murakkab';
	@override String get toolsDescription => 'Ijro haqida ma\'lumot va diagnostika';
	@override String get preferences => 'Ijro qilish sozlamalari';
	@override String get preferencesDescription => 'Sizning kinoingiz, standart sozlamalaringiz. Ovoz va taglavhalar bilan boshlang, so‘ngra oqim va ekraningizni sozlang.';
	@override String get streamPreferences => 'Oqim sifati';
	@override String get displayPreferences => 'Displey';
	@override String get enginePreferences => 'Kengaytirilgan o\'yinchi variantlari';
	@override String get seekPreferences => 'Qidiruv';
	@override String get watchPreferences => 'Avtomatik ijro va oʻtkazib yuborish';
	@override String get rememberPreferences => 'Afzalliklarni eslab qoling';
}

// Path: lurokaSettings
class _Translations$lurokaSettings$uz extends Translations$lurokaSettings$en {
	_Translations$lurokaSettings$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get quickSetup => 'Tez sozlash';
	@override String get quickSetupDescription => 'Asosiy narsalardan boshlang: televizorni ravon ko‘rish, ekranning qulay joylashishi, uy tartibi va ijro sozlamalari.';
	@override String get experience => 'Sizning tajribangiz';
	@override String get experienceDescription => 'Luroka o‘zini to‘g‘ri his qiling: tashqi ko‘rinish, tillar, ijro, kutubxonalar va ekran vaqti.';
	@override String get remoteHint => '↑ ↓ Kategoriyalarni koʻrib chiqish · → / Ochish opsiyalarini tanlang · ← Kategoriyalarga qaytish';
}

// Path: playerChrome
class _Translations$playerChrome$uz extends Translations$playerChrome$en {
	_Translations$playerChrome$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get browse => 'Bo\'limlar va navbat';
	@override String get backToPlayback => 'Ijroga qaytish';
	@override String get nowPlaying => 'HOZIR O\'YNALAYMAN';
	@override String get options => 'O\'YINCHI VARITALARI';
}

// Path: tvLayout
class _Translations$tvLayout$uz extends Translations$tvLayout$en {
	_Translations$tvLayout$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get screenMargins => 'Televizor ekranining chegaralari';
	@override String get screenMarginsDescription => 'Agar televizoringiz rasmning bir qismini kesib tashlasa, ilovaning chetlarini kichraytiring';
	@override String get screenMarginsDefault => '0% (standart)';
}

// Path: studios
class _Translations$studios$uz extends Translations$studios$en {
	_Translations$studios$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get checkingCopies => 'Boshqa kutubxonalar tekshirilmoqda… Istalgan vaqtda maʼlum nusxani tanlang.';
	@override String get incompleteCopies => 'Ayrim kutubxonalarni tekshirib bo‘lmadi. Ma\'lum nusxani tanlang yoki bekor qiling va qayta urinib ko\'ring.';
	@override String get partialFavorites => 'Ayrim sevimlilarni yuklab bo‘lmadi. Qayta urinish uchun Yangilashni tanlang.';
	@override String get copyLookupFailedTitle => 'Barcha nusxalarni tekshirib bo‘lmadi';
	@override String get copyLookupFailedMessage => 'Ba\'zi kutubxonalar javob bermadi. Siz allaqachon topilgan nusxalardan birini ochishingiz yoki bekor qilib, qaytadan urinib ko\'rishingiz mumkin.';
	@override String get openKnownCopies => 'Ma\'lum nusxalarni ko\'rsatish';
	@override String get browseAll => 'Hammasini ko‘rib chiqish';
	@override String titleCount({required Object count}) => '${count} sarlavhalari';
	@override String get topRated => 'Yuqori baholangan';
	@override String get mostWatched => 'Kutubxonangizda eng koʻp tomosha qilingan';
	@override String get collection => 'STUDIYA TO‘PLAMI';
	@override String loadedTitles({required Object count}) => '${count} sarlavhalari yuklandi';
	@override String get sort => 'Sarlavhalarni saralash';
	@override String get sortTitleAscending => 'Sarlavha A–Z';
	@override String get sortTitleDescending => 'Sarlavha Z–A';
	@override String get sortNewest => 'Eng yangi nashr';
	@override String get sortOldest => 'Eng eski nashr';
	@override String get sortAdded => 'Yaqinda qo\'shilgan';
	@override String get sortEpisodeAdded => 'Yaqinda qo\'shilgan qism';
	@override String get sortRating => 'Eng yuqori baho';
	@override String get title => 'Studiyalar bo‘yicha ko‘rish';
	@override String get all => 'Hammasi';
	@override String get movies => 'Filmlar';
	@override String get shows => 'Teleko\'rsatuvlar';
	@override String get loadMore => 'Koʻproq sarlavhalarni yuklang';
	@override String get empty => 'Hozir ko‘rinib turgan kutubxonalaringizda mos nomlar topilmadi.';
	@override String get retry => 'Boshqa sarlavhalarni yuklab boʻlmadi — qayta urinib koʻrish uchun tanlang';
	@override String get description => 'Kutubxonalaringizda ushbu studiyaning filmlari va seriallarini ko‘ring.';
}

// Path: dashboard
class _Translations$dashboard$uz extends Translations$dashboard$en {
	_Translations$dashboard$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get previousFeature => 'Oldingi tanlangan sarlavha';
	@override String get nextFeature => 'Keyingi tanlangan sarlavha';
	@override String get cinemaHome => 'UY';
	@override String get episodeFallback => 'Televizion epizod';
	@override String timeLeft({required Object minutes}) => '${minutes} daqiqa qoldi';
	@override String timeLeftHours({required Object hours, required Object minutes}) => '${hours} soat ${minutes} daqiqa qoldi';
	@override String get spoilerHidden => 'Spoiler sozlamangiz tufayli epizod tafsilotlari yashirilgan.';
	@override String get synopsisUnavailable => 'Bu sarlavha haqida koʻproq bilish uchun “Tafsilotlar”ni oching.';
	@override String get yourSpace => 'SIZNING MAKONINGIZ';
	@override String get title => 'Sizning kinoteatringiz.';
	@override String get subtitle => 'Hikoyani davom ettiring yoki keyingisini toping.';
	@override String get featured => 'LUROKA TAVSIYASI';
	@override String get jumpBackIn => 'Ko‘rishni davom ettiring';
	@override String episodeLabel({required Object season, required Object episode}) => 'S${season} · E${episode}';
	@override String get anotherPick => 'Boshqa tanlov';
	@override String get exploreSeries => 'Seriyani o\'rganing';
	@override String get showFeatured => 'Fokuslangan sarlavha tafsilotlari';
	@override String get showFeaturedDescription => 'Ajratib ko‘rsatilgan kartaning posteri, qisqacha mazmuni va epizod ma’lumotlarini ko‘rsatish';
}

// Path: lurokaCatalog
class _Translations$lurokaCatalog$uz extends Translations$lurokaCatalog$en {
	_Translations$lurokaCatalog$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get aboutPerson => 'E\'tibor markazida';
	@override String get biographyUnavailable => 'Bu serverda biografiya mavjud emas.';
	@override String get filmography => 'Kutubxonangizdagi film va seriallar';
	@override String get recommended => 'Tavsiya etilganlar';
	@override String get browse => 'Barcha sarlavhalar';
	@override String get collections => 'To\'plamlar';
	@override String get browseHint => 'Katalogingizni o\'rganing. Tanlovni filtrlar va saralash bilan shakllantiring.';
	@override String get recommendedHint => 'Keyingi hikoyangizni toping';
	@override String get details => 'Hikoya ortida';
}

// Path: referenceDetails
class _Translations$referenceDetails$uz extends Translations$referenceDetails$en {
	_Translations$referenceDetails$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get oneEpisodeLeft => '1 qism qoldi';
	@override String get playAll => 'Hammasini o\'ynang';
	@override String get present => 'Hozirgi';
	@override String get continuing => 'Davom etilmoqda';
	@override String get upNext => 'Keyingi';
	@override String episodesLeft({required Object count}) => '${count} qismlari qoldi';
}

// Path: lurokaThemes
class _Translations$lurokaThemes$uz extends Translations$lurokaThemes$en {
	_Translations$lurokaThemes$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Luroka kino palitralari';
	@override String get coral => 'Marjon · yarim tunda ko\'k va quyosh botishi';
	@override String get ocean => 'Okean · chuqur ko\'k va muz';
	@override String get jade => 'Jade · doim yashil va yalpiz';
	@override String get amethyst => 'Ametist · yarim tunda binafsha';
	@override String get darkThemes => 'Qorong\'u kino mavzular';
	@override String get lightThemes => 'Engil kino mavzulari';
	@override String get moreThemes => 'Ko\'proq mavzular';
	@override String get moreThemesDescription => 'Qo\'shimcha palitralar va maxsus ranglarni ko\'rib chiqing';
	@override String get obsidian => 'Obsidian · toza qora va shampan';
	@override String get nocturne => 'Nocturne · ko\'mir va shampan';
	@override String get burgundy => 'Burgundiya · baxmal vino va atirgul';
	@override String get slate => 'Shifer · grafit va periwinkle';
	@override String get espresso => 'Espresso · kakao va karamel';
	@override String get pearl => 'Marvarid · chinni va sapfir';
	@override String get linen => 'Zig\'ir mato · issiq fil suyagi va terakota';
	@override String get sunrise => 'Quyosh chiqishi · shaftoli va marjon';
	@override String get coastal => 'Sohil · tuman va okean choyi';
	@override String get latte => 'Latte · qaymoq va karamel';
	@override String get sage => 'Adaçayı · yumshoq yashil va evkalipt';
	@override String get lavender => 'Lavanda · lilak va chuqur binafsha';
}

// Path: customPerformance
class _Translations$customPerformance$uz extends Translations$customPerformance$en {
	_Translations$customPerformance$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ishlash va effektlar';
	@override String get fireStickMode => 'Kam quvvatli qurilma rejimi';
	@override String get description => 'Kamaytirilgan effektlar, statik fonlar, 720p gacha bo‘lgan tasvirlar va 40 MiB tasvir keshi ishlatiladi. Yoqilganda bu vizual effektlar sozlamangizni vaqtincha almashtiradi; o‘chirilganda avvalgi sozlamangiz tiklanadi.';
	@override String get detailsTitle => 'Ishlash tafsilotlari';
	@override String get details => 'Faol effektlar, tasvir keshi chegarasi va ko‘rish unumdorligi o‘lchovlari';
	@override String get effectsTier => 'Faol effektlar darajasi';
	@override String get imageCache => 'Tasvir-kesh chegarasi';
	@override String get measurement => 'Ko\'rib chiqish o\'lchovi';
	@override String get measureInstructions => '20 soniyalik namunani ishga tushiring, Bosh sahifaga qayting va masofadan boshqarish pultidan foydalanib koʻring. Natijalarni ko\'rish uchun bu yerga qayting. Taqqoslash uchun rejimni yoqish va o\'chirish bilan bir xil amallarni takrorlang. Bu video dekoder ishlashini emas, balki Flutter UI ishini o‘lchaydi.';
	@override String get startSample => '20 soniyalik namunani boshlang';
	@override String get stopSample => 'Hozir namunani tugating';
	@override String get sampling => 'Namuna olish — Bosh sahifaga qayting va koʻrib chiqing. Natijalar shu yerda saqlanadi.';
	@override String get frames => 'Namuna olingan ramkalar';
	@override String get slowFrames => 'Byudjetdan ortiq ramkalar';
	@override String get buildP95 => 'UI yaratish vaqti (95 foiz)';
	@override String get rasterP95 => 'Rastr vaqti (95 foiz)';
	@override String get frameBudget => 'Kadrlar uchun byudjet';
	@override String get processMemory => 'Namuna oxirida ilova jarayoni xotirasi';
	@override String get noFrames => 'Tasvirlangan kadrlar olinmadi. Boshqa namunani ishga tushiring va ilovani ko\'rib chiqing.';
}

// Path: homeLayout
class _Translations$homeLayout$uz extends Translations$homeLayout$en {
	_Translations$homeLayout$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bosh sahifani sozlash';
	@override String get description => 'Ushbu profil uchun qatorlar tartibi va koʻrinishini tanlang. Ko‘chirish yoki yashirish uchun qatorni tanlang.';
	@override String get rows => 'Uy qatorlari';
	@override String get visible => 'Ko\'rinadigan';
	@override String get hidden => 'Yashirin';
	@override String get showRow => 'Qatorni ko\'rsatish';
	@override String get hideRow => 'Qatorni yashirish';
	@override String get moveUp => 'Yuqoriga siljiting';
	@override String get moveDown => 'Pastga siljiting';
	@override String get pinnedCollections => 'Qattiqlashtirilgan kolleksiyalar';
	@override String get pinInstructions => 'To‘plam menyusini oching va Pin to Bosh sahifa-ni tanlang. Yorliqni olib tashlash uchun bu yerda mahkamlangan to‘plamni tanlang.';
	@override String get pinCollection => 'Pin uyga';
	@override String get unpinCollection => 'Bosh sahifadan olib tashlash';
	@override String get reset => 'Standart qatorlarni tiklang';
	@override String get resetDescription => 'Asl qatorlar tartibi tiklansinmi va ushbu profil uchun barcha qatorlar koʻrsatilsinmi? Qadalgan kollektsiyalaringiz saqlanadi.';
	@override String get saveFailed => 'Uyingiz tartibini saqlab bo‘lmadi. Iltimos, qayta urinib koʻring.';
	@override String get emptyHint => 'Qatorlar yashirilishi mumkin. Ularni yana koʻrsatish uchun “Uyni shaxsiylashtirish”ni oching.';
}

// Path: screenTime
class _Translations$screenTime$uz extends Translations$screenTime$en {
	_Translations$screenTime$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ekran vaqti';
	@override String get description => 'Ushbu profilda video tomosha qilish uchun sarflangan vaqtni ko\'ring';
	@override String get today => 'Bugun';
	@override String get thisWeek => 'Bu hafta';
	@override String get thisMonth => 'Shu oy';
	@override String get lessThanMinute => '< 1 min';
	@override String minutes({required Object count}) => '${count} min';
	@override String hours({required Object count}) => '${count} soat';
	@override String hoursMinutes({required Object hours, required Object minutes}) => '${hours} soat ${minutes} min';
}

// Path: activityStats
class _Translations$activityStats$uz extends Translations$activityStats$en {
	_Translations$activityStats$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Statistikani ko\'rish';
	@override String get period => 'Davr';
	@override String get last7Days => '7 kun';
	@override String get last30Days => '30 kun';
	@override String get last90Days => '90 kun';
	@override String get thisYear => 'Yil';
	@override String get allTime => 'Hammasi';
	@override String get heroAllTime => 'Hamma vaqt';
	@override String get heroDailyAverage => 'Kunlik o\'rtacha';
	@override String get consistency => 'Muvofiqlik';
	@override String get currentStreak => 'Joriy chiziq';
	@override String dayCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uz'))(n,
		one: '${n} kun',
		other: '${n} kun',
	);
	@override String get longestStreak => 'Eng uzun chiziq';
	@override String get bestDay => 'Eng yaxshi kun';
	@override String get bestWeek => 'Eng yaxshi hafta';
	@override String get trendTitle => 'Tomosha vaqti';
	@override String get trendToday => 'Bugun';
	@override String gapDetail({required Object stat, required Object range}) => '${stat} ${range} da';
	@override String get weekdayTitle => 'Ish kuni bo\'yicha';
	@override String get hoursTitle => 'Kunning vaqti bo\'yicha';
	@override String get amLabel => 'AM';
	@override String get pmLabel => 'PM';
	@override String get kindsTitle => 'Kategoriya bo\'yicha';
	@override String get kindMovie => 'Filmlar';
	@override String get kindTv => 'televizor';
	@override String get kindLiveTv => 'Jonli TV';
	@override String get kindMusic => 'Musiqa';
	@override String get kindOther => 'Boshqa';
	@override String get topTitlesTitle => 'Eng ko\'p tomosha qilingan';
	@override String get sessionsTitle => 'Oxirgi sessiyalar';
	@override String get showMore => 'Ko\'proq ko\'rsatish';
	@override String get sessionNoTitle => 'Noma\'lum ijro';
	@override String get emptyTitle => 'Bu yerda hali hech narsa';
	@override String get emptyBody => 'Biror narsani tomosha qiling va statistikangiz shu yerda to\'planadi.';
	@override String get noDataInPeriod => 'Bu davrda hech qanday ijro qayd etilmagan.';
}

// Path: search
class _Translations$search$uz extends Translations$search$en {
	_Translations$search$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get hint => 'Filmlar, seriallar, musiqa qidirish...';
	@override String get tryDifferentTerm => 'Boshqa qidiruv soʻzini kiriting';
	@override String get searchYourMedia => 'Medialaringizdan qidiring';
	@override String get enterTitleActorOrKeyword => 'Nomini, aktyorni yoki kalit soʻzni kiriting';
	@override String get people => 'Odamlar';
	@override String get recentSearches => 'Oxirgi qidiruvlar';
	@override String get clearHistory => 'Tarixni tozalash';
}

// Path: hotkeys
class _Translations$hotkeys$uz extends Translations$hotkeys$en {
	_Translations$hotkeys$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String setShortcutFor({required Object actionName}) => '${actionName} uchun tugmalar birlashmasini oʻrnatish';
	@override String get clearShortcut => 'Birlashmani tozalash';
	@override String get noShortcutSet => 'Tugmalar birlashmasi oʻrnatilmagan';
	@override String get currentShortcut => 'Joriy birlashma:';
	@override String get pressToRecord => 'Birlashmani yozib olish uchun bosing';
	@override String get recordingShortcut => 'Endi tugmalarni bosing';
	@override late final _Translations$hotkeys$actions$uz actions = _Translations$hotkeys$actions$uz._(_root);
}

// Path: fileInfo
class _Translations$fileInfo$uz extends Translations$fileInfo$en {
	_Translations$fileInfo$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fayl haqida maʼlumot';
	@override String get overview => 'Tavsif';
	@override String get video => 'Video';
	@override String get audio => 'Audio';
	@override String get subtitles => 'Subtitrlar';
	@override String get images => 'Ichiga joylangan rasmlar';
	@override String get dataStreams => 'Maʼlumot oqimlari';
	@override String get lyrics => 'Qoʻshiq matni';
	@override String get file => 'Fayl';
	@override String get attachments => 'Biriktirilgan fayllar';
	@override String get delivery => 'Yetkazib berish';
	@override String versionCounter({required Object index, required Object count}) => '${index}-versiya (${count} tadan)';
	@override String fileCounter({required Object index, required Object count}) => '${index}-fayl (${count} tadan)';
	@override String get noStreams => 'Server ushbu fayl uchun oqimlar mavjud emasligini bildirdi.';
	@override String get copyPath => 'Yoʻlni nusxalash';
	@override String get pathCopied => 'Fayl yoʻli nusxalandi';
	@override String get codec => 'Kodek';
	@override String get codecTag => 'Kodek yorligʻi';
	@override String get resolution => 'Oʻlchamlari (Resolution)';
	@override String get codedResolution => 'Kodlangan oʻlcham';
	@override String get bitrate => 'Bitreyt (Bitrate)';
	@override String get frameRate => 'Kadrlar chastotasi';
	@override String get rotation => 'Burilish';
	@override String get comment => 'Izoh';
	@override String get audioDescription => 'Audio tavsif';
	@override String get headerCompression => 'Sarlavha siqish';
	@override String get sidecarFile => 'Yordamchi fayl';
	@override String get transportTimestamp => 'Transport vaqt belgisi';
	@override String get displayOffset => 'Koʻrsatish siljishi';
	@override String get previewFailureCode => 'Oldindan koʻrish xatosi kodi';
	@override String get previewRetries => 'Oldindan koʻrish urinishlari';
	@override String get aspectRatio => 'Tomonlar nisbati';
	@override String get pixelAspectRatio => 'Piksel tomonlar nisbati';
	@override String get profile => 'Profil';
	@override String get level => 'Daraja';
	@override String get bitDepth => 'Bit chuqurligi';
	@override String get pixelFormat => 'Piksel formati';
	@override String get colorSpace => 'Rang makoni';
	@override String get colorRange => 'Rang diapazoni';
	@override String get colorPrimaries => 'Asosiy ranglar';
	@override String get colorTransfer => 'Rang uzatish';
	@override String get chromaSubsampling => 'Rangli subdiskretlash';
	@override String get chromaLocation => 'Chroma joylashuvi';
	@override String get scanType => 'Skanerlash turi';
	@override String get interlaced => 'Interleys';
	@override String get anamorphic => 'Anamorfik';
	@override String get referenceFrames => 'Tayanch kadrlar';
	@override String get dynamicRange => 'Dinamik diapazon';
	@override String get dolbyVision => 'Dolby Vision';
	@override String get dolbyVisionLevel => 'Dolby Vision darajasi';
	@override String get dolbyVisionVersion => 'Dolby Vision versiyasi';
	@override String get dolbyVisionLayers => 'Dolby Vision qatlamlari';
	@override String get baseLayerCompatibility => 'Asosiy qatlam mosligi';
	@override String get avcBitstream => 'AVC bit oqimi';
	@override String get nalLengthSize => 'NAL uzunlik oʻlchami';
	@override String get scalingMatrix => 'Maxsus masshtablash matritsasi';
	@override String get streamIdentifier => 'Oqim identifikatori';
	@override String get streamIndex => 'Oqim indeksi';
	@override String get streamId => 'Oqim ID-si';
	@override String get language => 'Til';
	@override String get languageCode => 'Til kodi';
	@override String get streamTitle => 'Trek nomi';
	@override String get channels => 'Kanallar';
	@override String get sampleRate => 'Namuna tezligi';
	@override String get spatialAudio => 'Fazoviy audio';
	@override String get textBased => 'Matnga asoslangan';
	@override String get subtitleFormat => 'Yordamchi format';
	@override String get provider => 'Provayder';
	@override String get matchScore => 'Moslik darajasi';
	@override String get externalDelivery => 'Alohida uzatilishi mumkin';
	@override String get sidecarPath => 'Yordamchi fayl yoʻli';
	@override String get sourceStream => 'Nusxa olingan manba';
	@override String get temporary => 'Vaqtinchalik';
	@override String get timeBase => 'Vaqt bazasi';
	@override String get overallBitrate => 'Umumiy bitreyt';
	@override String get path => 'Yoʻl';
	@override String get fileName => 'Fayl nomi';
	@override String get size => 'Hajmi';
	@override String get totalSize => 'Umumiy hajm';
	@override String get container => 'Konteyner';
	@override String get duration => 'Davomiyligi';
	@override String get previewThumbnails => 'Oldindan koʻrish eskizlari';
	@override String get previewIndex => 'Oldindan koʻrish indeksi';
	@override String get packetLength => 'Paket uzunligi';
	@override String get filePresent => 'Fayl mavjud';
	@override String get fileReadable => 'Server tomonidan oʻqiladigan';
	@override String get streamPath => 'Oqim yoʻli';
	@override String get optimizedForStreaming => 'Oqimli uzatish uchun optimallashtirilgan';
	@override String get has64bitOffsets => '64-bitli siljishlar';
	@override String get protocol => 'Protokol';
	@override String get mediaType => 'Media turi';
	@override String get sourceKind => 'Manba turi';
	@override String get optimizedVersion => 'Optimallashtirilgan versiya';
	@override String get optimizationTarget => 'Optimallashtirish maqsadi';
	@override String get deletedAt => 'Oʻchirilgan';
	@override String get remoteSource => 'Masofaviy manba';
	@override String get infiniteStream => 'Cheksiz oqim';
	@override String get directPlay => 'Toʻgʻridan-toʻgʻri ijro';
	@override String get directStream => 'Toʻgʻridan-toʻgʻri oqim';
	@override String get transcoding => 'Qayta kodlash';
	@override String get etag => 'ETag';
	@override String get versionId => 'Versiya ID-si';
	@override String get fileId => 'Fayl ID-si';
	@override String get defaultAudioTrack => 'Standart audio trek';
	@override String get defaultSubtitleTrack => 'Standart subtitr treki';
	@override String get subtitlesOff => 'Oʻchirilgan';
	@override String get flagDefault => 'Standart';
	@override String get flagForced => 'Majburiy';
	@override String get flagSelected => 'Tanlangan';
	@override String get flagExternal => 'Tashqi';
	@override String get flagHearingImpaired => 'Eshitishida nuqsoni borlar uchun';
	@override String get flagDub => 'Dublyaj';
	@override String get flagOriginal => 'Asl';
	@override String get channelsMono => 'Mono';
	@override String dolbyVisionProfile({required Object profile}) => 'Profil ${profile}';
}

// Path: mediaMenu
class _Translations$mediaMenu$uz extends Translations$mediaMenu$en {
	_Translations$mediaMenu$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get markAsWatched => 'Koʻrilgan deb belgilash';
	@override String get markAsUnwatched => 'Koʻrilmagan deb belgilash';
	@override String get clearProgress => 'Aniq taraqqiyot';
	@override String get removeFromContinueWatching => '"Tomoshani davom ettirish"dan oʻchirish';
	@override String get viewDetails => 'Batafsil koʻrish';
	@override String get goToSeries => 'Serialga oʻtish';
	@override String get shufflePlay => 'Aralashtirib ijro etish';
	@override String get shuffleNotAvailableOffline => 'Aralashtirib ijro etish oflayn rejimda mavjud emas';
	@override String get fileInfo => 'Fayl haqida maʼlumot';
	@override String get deleteEpisodeFromServer => 'Qismni serverdan oʻchirish';
	@override String get deleteSeasonFromServer => 'Mavsumni serverdan oʻchirish';
	@override String get deleteShowFromServer => 'Shouni serverdan oʻchirish';
	@override String get deleteMovieFromServer => 'Filmni serverdan oʻchirish';
	@override String get deleteEpisodeTitle => 'Ushbu qism oʻchirilsinmi?';
	@override String get deleteSeasonTitle => 'Ushbu mavsum oʻchirilsinmi?';
	@override String get deleteShowTitle => 'Ushbu shou oʻchirilsinmi?';
	@override String get deleteMovieTitle => 'Ushbu film oʻchirilsinmi?';
	@override String get deleteEpisodeConfirm => 'Qismni oʻchirish';
	@override String get deleteSeasonConfirm => 'Mavsumni oʻchirish';
	@override String get deleteShowConfirm => 'Shouni oʻchirish';
	@override String get deleteMovieConfirm => 'Filmni oʻchirish';
	@override String get deleteAnyway => 'Baribir oʻchirish';
	@override String confirmDeleteTarget({required Object title}) => '${title} serveringizdan butunlay oʻchirilsinmi?';
	@override String get deleteMultipleWarning => 'Bu barcha qismlar va fayllarga taʼsir qiladi.';
	@override String deleteEpisodeCountWarning({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uz'))(n,
		one: 'Bu undagi barcha ${n} qismni va uning faylini oʻchiradi.',
		other: 'Bu undagi barcha ${n} qismni va ularning fayllarini oʻchiradi.',
	);
	@override String deleteMultiPartWarning({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uz'))(n,
		one: 'Bu element ${n} fayl shaklida saqlanadi va u oʻchiriladi.',
		other: 'Bu element ${n} faylda saqlanadi va ularning barchasi oʻchiriladi.',
	);
	@override String deleteSharedFileHeading({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uz'))(n,
		one: 'Xuddi shu faylda yana ${n} qism saqlanadi va u ham oʻchiriladi:',
		other: 'Xuddi shu faylda yana ${n} qism saqlanadi va ular ham oʻchiriladi:',
	);
	@override String get deleteScopeUnverifiedProbeFailed => 'Luroka qaysi fayllar olib tashlanishini tekshira olmadi, shuning uchun u yuqorida koʻrsatilgan elementdan koʻproq narsani oʻchirishi mumkin. Bekor qilib qaytadan urining yoki baribir oʻchiring.';
	@override String get deleteScopeUnverifiedNoFileInfo => 'Serveringiz ushbu element uchun fayl tafsilotlarini taqdim etmadi, shuning uchun Luroka qaysi fayllar olib tashlanishini tekshira olmaydi. U yuqorida koʻrsatilgan elementdan koʻproq narsani oʻchirishi mumkin.';
	@override String get mediaDeletedSuccessfully => 'Media elementi muvaffaqiyatli oʻchirildi';
	@override String get mediaFailedToDelete => 'Media elementini oʻchirib boʻlmadi';
	@override String get rate => 'Baho berish';
	@override String get playFromBeginning => 'Boshidan ijro etish';
	@override String get playVersion => 'Versiyani ijro etish...';
}

// Path: rateSheet
class _Translations$rateSheet$uz extends Translations$rateSheet$en {
	_Translations$rateSheet$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Baho berish';
	@override String get server => 'Server';
	@override String get favorite => 'Tanlangan';
	@override String get favorited => 'Tanlanganlarga qoʻshildi';
	@override String get saved => 'Saqlandi';
	@override String get notAvailable => 'Moslik topilmadi';
	@override String get noConnectedServices => 'Baho berish uchun Sozlamalardan xizmatni ulang.';
}

// Path: accessibility
class _Translations$accessibility$uz extends Translations$accessibility$en {
	_Translations$accessibility$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String mediaCardMovie({required Object title}) => '${title}, film';
	@override String mediaCardShow({required Object title}) => '${title}, TV shou';
	@override String mediaCardEpisode({required Object title, required Object episodeInfo}) => '${title}, ${episodeInfo}';
	@override String mediaCardSeason({required Object title, required Object seasonInfo}) => '${title}, ${seasonInfo}';
	@override String get mediaCardWatched => 'koʻrilgan';
	@override String mediaCardPartiallyWatched({required Object percent}) => '%${percent} koʻrilgan';
	@override String get mediaCardUnwatched => 'koʻrilmagan';
	@override String get tapToPlay => 'Ijro etish uchun bosing';
	@override String get decrease => 'Kamaytirish';
	@override String get increase => 'Oshirish';
	@override String decreaseValue({required Object label}) => '${label} qiymatini kamaytirish';
	@override String increaseValue({required Object label}) => '${label} qiymatini oshirish';
	@override String get hue => 'Rang jilosi';
	@override String get saturation => 'Toʻyinganlik';
	@override String get brightness => 'Yorqinlik';
	@override String get hexColor => 'Hex rangi';
	@override String get expandText => 'Matnni yoyish';
	@override String get collapseText => 'Matnni yigʻish';
	@override String get alphabetNavigation => 'Alifboli navigatsiya';
	@override String get alphabetScrollHint => 'Harflar boʻyicha oʻtish uchun yuqoriga yoki pastga suring';
	@override String rowColumnPosition({required Object row, required Object rowCount, required Object column, required Object columnCount}) => 'Qator ${row} / ${rowCount}, ustun ${column} / ${columnCount}';
	@override String rowPosition({required Object row, required Object rowCount}) => 'Qator ${row} / ${rowCount}';
	@override String get autoScrollPlay => 'Avtomatik aylantirishni boshlash';
	@override String get autoScrollPause => 'Avtomatik aylantirishni pauza qilish';
	@override String get hueShort => 'H';
	@override String get saturationShort => 'S';
	@override String get valueShort => 'V';
}

// Path: tooltips
class _Translations$tooltips$uz extends Translations$tooltips$en {
	_Translations$tooltips$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get shufflePlay => 'Aralashtirib ijro etish';
	@override String get playTrailer => 'Treylerni koʻrish';
	@override String get markAsWatched => 'Koʻrilgan deb belgilash';
	@override String get markAsUnwatched => 'Koʻrilmagan deb belgilash';
}

// Path: audioTracks
class _Translations$audioTracks$uz extends Translations$audioTracks$en {
	_Translations$audioTracks$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String track({required Object n}) => 'Audio yoʻlak ${n}';
}

// Path: videoControls
class _Translations$videoControls$uz extends Translations$videoControls$en {
	_Translations$videoControls$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get audioLabel => 'Ovoz';
	@override String get subtitlesLabel => 'Subtitr';
	@override String addTime({required Object amount, required Object unit}) => '+${amount}${unit}';
	@override String get letterbox => 'Keng ekran (Letterbox)';
	@override String get fillScreen => 'Ekranni toʻldirish';
	@override String get stretch => 'Choʻzish';
	@override String get lockRotation => 'Aylanishni qulflash';
	@override String get unlockRotation => 'Aylanish qulfini ochish';
	@override String get timerActive => 'Taymer faol';
	@override String playbackWillPauseIn({required Object duration}) => 'Ijro ${duration}-dan keyin toʻxtatiladi';
	@override String get sleepTimerEndOfVideo => 'Joriy videoning oxiri';
	@override String get sleepTimerStopAtHeader => 'Toʻxtash vaqti';
	@override String get sleepTimerDurationHeader => 'Taymer';
	@override String get playbackWillPauseAtEnd => 'Ijro ushbu videoning oxirida toʻxtatiladi';
	@override String get stillWatching => 'Hali ham tomosha qilyapsizmi?';
	@override String pausingIn({required Object seconds}) => '${seconds}son-dan keyin toʻxtatiladi';
	@override String get continueWatching => 'Davom ettirish';
	@override String get autoPlayNext => 'Keyingisini avtomatik ijro etish';
	@override String get playNext => 'Keyingisini ijro etish';
	@override String get playButton => 'Ijro etish';
	@override String get pauseButton => 'Pauza';
	@override String get playbackPaused => 'Pauza';
	@override String get playbackResumed => 'Ijro etilmoqda';
	@override String get loadingVideo => 'Video yuklanmoqda';
	@override String get showPlaybackControls => 'Boshqaruv tugmalarini koʻrsatish';
	@override String get hidePlaybackControls => 'Boshqaruv tugmalarini yashirish';
	@override String seekBackwardButton({required Object seconds}) => '${seconds} soniya orqaga oʻtkazish';
	@override String seekForwardButton({required Object seconds}) => '${seconds} soniya oldinga oʻtkazish';
	@override String get previousButton => 'Oldingi qism';
	@override String get nextButton => 'Keyingi qism';
	@override String get previousChapterButton => 'Oldingi boʻlimcha';
	@override String get nextChapterButton => 'Keyingi boʻlimcha';
	@override String get muteButton => 'Ovozni oʻchirish';
	@override String get unmuteButton => 'Ovozni yoqish';
	@override String get settingsButton => 'Ijro sozlamalari';
	@override String get infoButton => 'Ma\'lumot';
	@override String get tracksButton => 'Ovoz va subtitrlar';
	@override String get chaptersButton => 'Boʻlimlar';
	@override String get versionQualityButton => 'Versiya va sifat';
	@override String get versionColumnHeader => 'Versiya';
	@override String get qualityColumnHeader => 'Sifat';
	@override String get qualityOriginal => 'Asl nusxa';
	@override String qualityPresetLabel({required Object resolution, required Object bitrate}) => '${resolution}p ${bitrate} Mbps';
	@override String get transcodeUnavailableFallback => 'Qayta kodlash mavjud emas — asl sifatda ijro etiladi';
	@override String get subtitleUnavailableFallback => 'Tanlangan subtitr yuklanmadi';
	@override String get pipButton => 'Rasm ichida rasm rejimi';
	@override String get aspectRatioButton => 'Tomonlar nisbati';
	@override String get ambientLighting => 'Atrof-muhit yoritilishi';
	@override String get fullscreenButton => 'Toʻliq ekranga oʻtish';
	@override String get exitFullscreenButton => 'Toʻliq ekrandan chiqish';
	@override String get alwaysOnTopButton => 'Har doim ustida';
	@override String get rotationLockButton => 'Aylanish qulfi';
	@override String get lockScreen => 'Ekranni qulflash';
	@override String get screenLockButton => 'Ekran qulfi';
	@override String get longPressToUnlock => 'Qulfdan chiqarish uchun bosib turing';
	@override String get timelineSlider => 'Video vaqt shkalasi';
	@override String get volumeSlider => 'Ovoz balandligi';
	@override String endsAt({required Object time}) => 'Tugash vaqti: ${time}';
	@override String get pipActive => 'Rasm ichida rasm rejimida ijro etilmoqda';
	@override String get pipFailed => 'PiP rejimini ishga tushirishda xatolik';
	@override String get screenshotSaved => 'Ekran tasviri saqlandi';
	@override String get screenshotFailed => 'Skrinshotni olib bo‘lmadi';
	@override String zoomPercent({required Object percent}) => 'Masshtab %${percent}';
	@override String volumePercent({required Object percent}) => 'Ovoz ${percent}%';
	@override late final _Translations$videoControls$pipErrors$uz pipErrors = _Translations$videoControls$pipErrors$uz._(_root);
	@override String get chapters => 'Boʻlimlar';
	@override String get noChaptersAvailable => 'Boʻlimlar mavjud emas';
	@override String get queue => 'Navbat';
	@override String get noQueueItems => 'Navbatda elementlar yoʻq';
	@override String get noAudioDevicesAvailable => 'Mavjud audio qurilmalar yoʻq';
	@override String get searchSubtitles => 'Subtitr qidirish';
	@override String get language => 'Til';
	@override String get noSubtitlesFound => 'Subtitr topilmadi';
	@override String get subtitleDownloaded => 'Subtitr yuklab olindi';
	@override String get subtitleDownloadedNotApplied => 'Subtitr yuklab olindi, lekin qoʻllanilmadi';
	@override String get subtitleDownloadFailed => 'Subtitrni yuklab boʻlmadi';
	@override String get searchLanguages => 'Tillardan qidirish...';
	@override String get skipIntro => 'Kirishni oʻtkazish';
	@override String get skipCredits => 'Titrlardan oʻtish';
	@override String get nextEpisode => 'Keyingi qism';
	@override String subtitleTrack({required Object n}) => 'Yoʻlak ${n}';
	@override String subtitleFile({required Object name}) => 'Subtitr ${name}';
	@override String forcedTrack({required Object label}) => '${label} (Majburiy)';
	@override String get osdSubtitlesOff => 'Subtitr: Oʻchirilgan';
	@override String osdSubtitles({required Object track}) => 'Subtitr: ${track}';
	@override String osdAudio({required Object track}) => 'Ovoz: ${track}';
}

// Path: messages
class _Translations$messages$uz extends Translations$messages$en {
	_Translations$messages$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get markedAsWatched => 'Koʻrilgan deb belgilandi';
	@override String get markedAsUnwatched => 'Koʻrilmagan deb belgilandi';
	@override String get markedAsWatchedOffline => 'Koʻrilgan deb belgilandi (tarmoqqa ulanganda sinxronlanadi)';
	@override String get markedAsUnwatchedOffline => 'Koʻrilmagan deb belgilandi (tarmoqqa ulanganda sinxronlanadi)';
	@override String autoRemovedWatchedDownload({required Object title}) => 'Avtomatik oʻchirildi: ${title}';
	@override String autoRemovedWatchedDownloads({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uz'))(n,
		one: 'Koʻrilgan ${n} yuklama avtomatik oʻchirildi',
		other: 'Koʻrilgan ${n} yuklama avtomatik oʻchirildi',
	);
	@override String get removedFromContinueWatching => '"Tomoshani davom ettirish"dan oʻchirildi';
	@override String errorLoading({required Object error}) => 'Xatolik: ${error}';
	@override String get searchPartialResults => 'Baʼzi media serverlarda qidiruv amalga oshmadi. Mavjud natijalar koʻrsatilmoqda.';
	@override String get streamInterrupted => 'Oqim uzildi. Qayta urinish uchun ijro tugmasini bosing yoki boshqa joyga oʻting.';
	@override String get liveStreamInterrupted => 'Jonli oqim uzildi. Qayta urinish uchun ijro tugmasini bosing.';
	@override String get fileInfoNotAvailable => 'Fayl haqida maʼlumot mavjud emas';
	@override String get playbackAuthenticationRequired => 'Ushbu elementni ijro etish uchun serverga qaytadan kiring.';
	@override String get playbackServerUnavailable => 'Media serveri mavjud emas. Keyinroq qaytadan urinib koʻring.';
	@override String get playbackDataInvalid => 'Server notoʻgʻri ijro maʼlumotlarini qaytardi.';
	@override String get playbackCancelled => 'Ijro bekor qilindi.';
	@override String get playbackFailed => 'Ijroni ishga tushirishda xatolik.';
	@override String playbackFailedDetail({required Object error}) => 'Ijroni boshlab boʻlmadi: ${error}';
	@override String get audioOutputFailed => 'Audio chiqishi javob bermay qoldi. Televizor yoki resiverning audio ulanishini tekshiring; boshqa ilovalarda ham ovoz boʻlmasa, qurilmani qayta ishga tushiring.';
	@override String get mediaUnavailable => 'Bu kontent endi mavjud emas.';
	@override String errorLoadingFileInfo({required Object error}) => 'Fayl maʼlumotlarini yuklashda xatolik: ${error}';
	@override String get errorLoadingSeries => 'Serialni yuklashda xatolik';
	@override String get musicNotSupported => 'Musiqa ijrosi hali qoʻllab-quvvatlanmaydi';
	@override String get noDescriptionAvailable => 'Tavsif mavjud emas';
	@override String get noProfilesAvailable => 'Profillar yoʻq';
	@override String get contactAdminForProfiles => 'Profil qoʻshish uchun administratorga murojaat qiling';
	@override String get unableToDetermineLibrarySection => 'Kutubxona boʻlimini aniqlab boʻlmadi';
	@override String get logsCleared => 'Jurnallar tozalandi';
	@override String get logsCopied => 'Jurnallar nusxalandi';
	@override String get noLogsAvailable => 'Jurnallar yoʻq';
	@override String libraryScanning({required Object title}) => '"${title}" skanerlanmoqda...';
	@override String libraryScanStarted({required Object title}) => '"${title}" uchun skanerlash boshlandi';
	@override String libraryScanFailed({required Object error}) => 'Kutubxonani skanerlab boʻlmadi: ${error}';
	@override String metadataRefreshing({required Object title}) => '"${title}" uchun metamaʼlumotlar yangilanmoqda...';
	@override String metadataRefreshStarted({required Object title}) => '"${title}" uchun metamaʼlumotlarni yangilash boshlandi';
	@override String metadataRefreshFailed({required Object error}) => 'Metamaʼlumotlarni yangilab boʻlmadi: ${error}';
	@override String get logoutConfirm => 'Haqiqatan ham chiqmoqchimisiz?';
	@override String get noSeasonsFound => 'Mavsumlar topilmadi';
	@override String get seasonsLoadFailed => 'Mavsumlarni yuklab boʻlmadi';
	@override String get noEpisodesFound => 'Birinchi mavsumda qismlar topilmadi';
	@override String get noEpisodesFoundGeneral => 'Qismlar topilmadi';
	@override String get episodesLoadFailed => 'Qismlarni yuklab boʻlmadi';
	@override String get noResultsFound => 'Natijalar topilmadi';
	@override String sleepTimerSet({required Object label}) => 'Uyqu taymeri ${label} vaqtiga oʻrnatildi';
	@override String get noItemsAvailable => 'Elementlar yoʻq';
	@override String get failedToCreatePlayQueueNoItems => 'Ijro navbatini yaratib boʻlmadi — elementlar yoʻq';
	@override String failedPlayback({required Object action, required Object error}) => '${action} muvaffaqiyatsiz tugadi: ${error}';
	@override String get switchingToCompatiblePlayer => 'Mos keluvchi pleyerga oʻtilmoqda...';
	@override String get serverLimitTitle => 'Ijro etishda xatolik';
	@override String get serverLimitBody => 'Server xatoligi (HTTP 500). Cheklov ushbu seansni rad etdi.';
	@override String get mediaUnreadableTitle => 'Fayl mavjud emas';
	@override String get mediaUnreadableBody => 'Server bu elementni topdi, lekin uning faylini oʻqiy olmadi (HTTP 404). Fayl koʻchirilgan, oʻchirilgan yoki uning saqlash joyi oflayn boʻlishi mumkin. Server egasidan faylni tekshirishni va kutubxonani qayta skanerlashni soʻrang.';
	@override String get serverBusyTitle => 'Oqim mavjud emas';
	@override String get serverBusyBody => 'Server bu faylni uzatishni qayta-qayta rad etdi (HTTP 503). U qayta ishga tushayotgan yoki band boʻlishi, yoxud fayl saqlanadigan xotira oflayn boʻlishi mumkin. Birozdan keyin qaytadan urinib koʻring. Muammo davom etsa, server egasidan server va fayl xotirasini tekshirishni soʻrang.';
	@override String get playbackNotAllowedTitle => 'Ijro etishga ruxsat berilmagan';
	@override String get playbackNotAllowedBody => 'Server bu elementni uzatishni rad etdi (HTTP 403). Hisobingizda uni ijro etishga ruxsat boʻlmasligi yoki server ijroga faqat oʻzining mahalliy tarmogʻida ruxsat berishi mumkin.';
	@override String get logsUploaded => 'Jurnallar yuklandi';
	@override String get logsUploadFailed => 'Jurnallarni yuklab boʻlmadi';
	@override String get logId => 'Jurnal ID-si';
	@override String get burnedSubtitlesUseMenu => 'Subtitrlar bu oqim tasviriga singdirilgan. Ularni subtitr menyusidan oʻzgartiring.';
	@override String get noVideoUrl => 'Video URL mavjud emas';
	@override String get playbackNoMediaSources => 'Server ijro etiladigan media manbalarini qaytarmadi';
	@override String get playbackDataNotPrepared => 'Ijro maʼlumotlari tayyor boʻlishidan oldin boshlandi';
	@override String get streamSelectionUnavailable => 'Bu manba uchun oqim tanlash imkoni yoʻq';
	@override String get streamSelectionFailed => 'Tanlangan oqimlarni qoʻllab boʻlmadi';
	@override String get trackSelectionNotRemembered => 'Bu trek tanlovi faqat joriy ijroga qoʻllanadi.';
	@override String get serverUnavailableForProfile => 'Faol profil uchun hech qanday server mavjud emas';
}

// Path: sourceLibraries
class _Translations$sourceLibraries$uz extends Translations$sourceLibraries$en {
	_Translations$sourceLibraries$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sizning serverlaringiz va kutubxonalaringiz';
	@override String get description => 'Luroka bosh sahifa, qidiruv, kashfiyotdagi mavjudlik va studiyalar uchun foydalanadigan kutubxonalarni tanlang. Bosh sahifadagi qatorlar tartibi alohida sozlanadi.';
	@override String get partial => 'Ba\'zi serverlarni tekshirib bo\'lmadi. Ushbu kutubxonalar uchun saqlangan tanlovlaringiz saqlanadi. Qayta urinish uchun yangilang.';
	@override String get loadFailed => 'Kutubxonalaringizni yuklab bo‘lmadi. Ulanishni tekshiring va qaytadan urining.';
	@override String get notSelected => 'Siz tanlagan kutubxonalarda mavjud emas.';
	@override String get checkOthers => 'Boshqa ulangan manbalarni tekshiring';
	@override String get otherSources => 'Boshqa ulangan manbalarda mavjud';
	@override String get playOnce => 'Bir marta o\'ynang';
	@override String get includeLibrary => 'Ushbu kutubxonani qo\'shing';
	@override String get noOthers => 'Boshqa ulangan manbalarda hech qanday nusxa topilmadi.';
	@override String get chooseOne => 'Davom etish uchun kamida bitta kutubxona tanlang.';
}

// Path: subtitlingStyling
class _Translations$subtitlingStyling$uz extends Translations$subtitlingStyling$en {
	_Translations$subtitlingStyling$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get text => 'Matn';
	@override String get border => 'Hoshiya';
	@override String get background => 'Fon';
	@override String get fontSize => 'Shrift oʻlchami';
	@override String get textColor => 'Matn rangi';
	@override String get borderSize => 'Hoshiya oʻlchami';
	@override String get borderColor => 'Hoshiya rangi';
	@override String get backgroundOpacity => 'Fon shaffofligi';
	@override String get backgroundColor => 'Fon rangi';
	@override String get position => 'Joylashuvi';
	@override String get assOverride => 'ASS qayta aniqlash';
	@override String get overrideScale => 'Masshtablash';
	@override String get overrideForce => 'Majburlash';
	@override String get overrideStrip => 'Formatlashni olib tashlash';
	@override String get positionTop => 'Yuqori';
	@override String get positionBottom => 'Pastki';
	@override String get useMargins => 'Chekkalardan foydalanish';
	@override String get useMarginsDescription => 'Matnli subtitrlarga videodan tashqaridagi joydan foydalanishga ruxsat berish. Uslubiy subtitrlar oʻz joylashuvini saqlashi mumkin.';
	@override String get anchorToScreen => 'Ekranga mahkamlash';
	@override String get anchorToScreenDescription => 'Matnli subtitrlarni keng ekranli video ostidagi qora hoshiyalarda koʻrsatish';
	@override String get bold => 'Qalin';
	@override String get italic => 'Qiya';
	@override String get renderResolution => 'Renderlash oʻlchamlari';
	@override String get renderResolutionScreen => 'Ekran oʻlchamlari';
	@override String get renderResolutionVideo => 'Video oʻlchamlari';
}

// Path: mpvConfig
class _Translations$mpvConfig$uz extends Translations$mpvConfig$en {
	_Translations$mpvConfig$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'mpv.conf';
	@override String get description => 'Kengaytirilgan video pleyer sozlamalari';
	@override String get presets => 'Tayyor sozlamalar';
	@override String get noPresets => 'Saqlangan sozlamalar yoʻq';
	@override String get saveAsPreset => 'Sozlama sifatida saqlash...';
	@override String get presetName => 'Sozlama nomi';
	@override String get presetNameHint => 'Ushbu sozlama uchun nom kiriting';
	@override String get loadPreset => 'Yuklash';
	@override String get deletePreset => 'Oʻchirish';
	@override String get presetSaved => 'Sozlama saqlandi';
	@override String get presetLoaded => 'Sozlama yuklandi';
	@override String get presetDeleted => 'Sozlama oʻchirildi';
	@override String get confirmDeletePreset => 'Ushbu sozlamani oʻchirishga ishonchingiz komilmi?';
	@override String get configPlaceholder => 'gpu-api=vulkan\nhwdec=auto\n# izoh';
	@override String get lineHint => 'option=value';
	@override String get addLine => 'Qator qoʻshish';
	@override String get removeLine => 'Qatorni oʻchirish';
	@override String get embeddedVoHint => 'Linux-da vo, gpu-context va gpu-api e\'tiborga olinmaydi: ichki video har doim video tekisligida vo=libmpv orqali ko\'rsatiladi va gpu-next (ArtCNN kabi compute shaderlar uchun zarur) ichki rejimda ishlay olmaydi.';
}

// Path: dialog
class _Translations$dialog$uz extends Translations$dialog$en {
	_Translations$dialog$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get confirmAction => 'Harakatni tasdiqlash';
}

// Path: profiles
class _Translations$profiles$uz extends Translations$profiles$en {
	_Translations$profiles$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get addLurokaProfile => 'Luroka profilini qo\'shing';
	@override String get switchingProfile => 'Profil almashtirilmoqda…';
	@override String get deleteThisProfileTitle => 'Ushbu profil oʻchirilsinmi?';
	@override String deleteThisProfileMessage({required Object displayName}) => '${displayName} oʻchiriladi. Ulanishlarga taʼsir qilmaydi.';
	@override String get active => 'Faol';
	@override String get manage => 'Boshqarish';
	@override String get delete => 'Oʻchirish';
	@override String get signOut => 'Chiqish';
	@override String get signOutPlexTitle => 'Plex-dan chiqilsinmi?';
	@override String signOutPlexMessage({required Object displayName}) => '${displayName} va barcha Plex Home foydalanuvchilari oʻchirilsinmi? Istalgan vaqtda qayta kirishingiz mumkin.';
	@override String get signOutPlexDeleteDownloads => 'Yuklashlarni ham oʻchirib tashlang';
	@override String get signOutPlexDeleteDownloadsDescription => 'Aks holda, ular shu qurilmada qoladi va siz bu hisobga qayta kirganingizda qaytib keladi.';
	@override String get signedOutPlex => 'Plex-dan chiqdingiz.';
	@override String get signOutFailed => 'Chiqish amalga oshmadi.';
	@override String get sectionTitle => 'Profillar';
	@override String get summarySingle => 'Boshqariladigan foydalanuvchilarni birlashtirish uchun profillar qoʻshing';
	@override String summaryMultipleWithActive({required Object count, required Object activeName}) => '${count} profil · faol: ${activeName}';
	@override String summaryMultiple({required Object count}) => '${count} profil';
	@override String get removeConnectionTitle => 'Ulanish oʻchirilsinmi?';
	@override String removeConnectionMessage({required Object displayName, required Object connectionLabel}) => '${displayName} foydalanuvchisining ${connectionLabel} kirish huquqi oʻchiriladi.';
	@override String get deleteProfileTitle => 'Profil oʻchirilsinmi?';
	@override String deleteProfileMessage({required Object displayName}) => '${displayName} va uning ulanishlari oʻchiriladi. Serverlar mavjud boʻlib qoladi.';
	@override String get profileNameLabel => 'Profil nomi';
	@override String get pinProtectionLabel => 'PIN himoyasi';
	@override String get pinManagedByPlex => 'PIN kodni Plex boshqaradi. plex.tv saytida tahrirlang.';
	@override String get noPinSetEditOnPlex => 'PIN kod oʻrnatilmagan. Talab qilish uchun plex.tv saytida Bosh sahifa foydalanuvchisini tahrirlang.';
	@override String get setPin => 'PIN oʻrnatish';
	@override String get setPinTitle => 'PIN oʻrnatish';
	@override String get confirmPinTitle => 'PIN kodni tasdiqlash';
	@override String get pinSet => 'PIN oʻrnatildi';
	@override String get changePin => 'Oʻzgartirish';
	@override String get removePin => 'Oʻchirish';
	@override String get connectionsLabel => 'Ulanishlar';
	@override String get add => 'Qoʻshish';
	@override String get deleteProfileButton => 'Profilni oʻchirish';
	@override String get noConnectionsHint => 'Ulanishlar yoʻq — ushbu profildan foydalanish uchun ulanish qoʻshing.';
	@override String get noConnections => 'Ulanishlar yoʻq';
	@override String get plexHomeAccount => 'Plex Home hisobi';
	@override String plexAccountChip({required Object account}) => 'Plex hisobi: ${account}';
	@override String plexAccountUserChip({required Object account, required Object user}) => '${account} hisobi orqali ${user}';
	@override String get connectionDefault => 'Standart';
	@override String connectionAs({required Object displayName}) => '${displayName} sifatida';
	@override String get makeDefault => 'Standart qilish';
	@override String get removeConnection => 'Oʻchirish';
	@override String get profileRenamed => 'Profil nomi oʻzgartirildi.';
	@override String borrowAddTo({required Object displayName}) => '${displayName} profiliga qoʻshish';
	@override String get borrowExplain => 'Boshqa profilning ulanishidan foydalanish. PIN bilan himoyalangan profillar PIN talab qiladi.';
	@override String get borrowEmpty => 'Hali foydalanadigan hech narsa yoʻq.';
	@override String get borrowEmptySubtitle => 'Avval boshqa profilga Plex, Jellyfin yoki Emby ulang.';
	@override String get borrowLoadFailed => 'Mavjud ulanishlarni yuklab boʻlmadi.';
	@override String borrowFromProfile({required Object displayName}) => '${displayName} profilidan';
	@override String get borrowConnectionBorrowed => 'Ulanishdan foydalanildi.';
	@override String get borrowFailed => 'Ulanishdan foydalanib boʻlmadi.';
	@override String get incorrectPin => 'Notoʻgʻri PIN kod.';
	@override String get incorrectPinTryAgain => 'Notoʻgʻri PIN kod. Qaytadan urinib koʻring.';
	@override String get sourceProfileMissingParentAccount => 'Manba profilda asosiy hisob yoʻq.';
	@override String get failedToLoadHomeUsers => 'Plex Home foydalanuvchilarini yuklab boʻlmadi.';
	@override String get failedToVerifyPin => 'PIN kodni tekshirib boʻlmadi.';
	@override String get newProfile => 'Yangi profil';
	@override String get profileNameHint => 'masalan, Mehmonlar, Bolalar';
	@override String get pinProtectionOptional => 'PIN himoyasi (ixtiyoriy)';
	@override String get pinExplain => 'Profillar orasida oʻtish uchun 4 xonali PIN kod talab qilinadi.';
	@override String get continueButton => 'Davom ettirish';
	@override String get pinsDontMatch => 'PIN kodlar mos kelmadi';
	@override String get tokenIdentityMismatch => 'Plex profil tokeni kutilmagan serverga tegishli boʻlib chiqdi';
}

// Path: connections
class _Translations$connections$uz extends Translations$connections$en {
	_Translations$connections$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get sectionTitle => 'Ulanishlar';
	@override String get addConnection => 'Ulanish qoʻshish';
	@override String get addConnectionSubtitleNoProfile => 'Plex orqali kiring yoki Jellyfin yoki Emby serveriga ulaning';
	@override String addConnectionSubtitleScoped({required Object displayName}) => '${displayName} profiliga qoʻshish: Plex, Jellyfin, Emby yoki boshqa ulanish';
	@override String sessionExpiredOne({required Object name}) => '${name} uchun seans vaqti tugadi';
	@override String sessionExpiredMany({required Object count}) => '${count} server uchun seans vaqti tugadi';
	@override String accessDeniedOne({required Object name}) => '${name} ushbu hisobga kirishni rad etdi';
	@override String accessDeniedMany({required Object count}) => '${count} ta server ushbu hisobga kirishni rad etdi';
	@override String get signInAgain => 'Qaytadan kirish';
	@override String editMediaBrowserTitle({required Object product}) => '${product} ulanishini tahrirlash';
	@override String editMediaBrowserIntro({required Object serverName}) => '${serverName} uchun URL-larni qoʻshing yoki olib tashlang. Luroka eng kam kechikishga ega boʻlgan mavjud URL-dan foydalanadi.';
}

// Path: serversAccounts
class _Translations$serversAccounts$uz extends Translations$serversAccounts$en {
	_Translations$serversAccounts$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Serverlar va hisoblar';
	@override String get subtitle => 'Plex, Jellyfin va Emby serverlaringiz uchun tizimga kirish holati';
	@override String get online => 'Onlayn';
	@override String get offline => 'Oflayn';
	@override String get unknown => 'Bu yerda tizimga kirmagan';
	@override String get usedByNone => 'Hech qanday profil ishlatilmaydi';
	@override String usedByOne({required Object name}) => '${name} tomonidan foydalaniladi';
	@override String usedByMany({required Object name, required Object count}) => '${name} va ${count} tomonidan qo\'llaniladi';
	@override String serversOnline({required Object online, required Object total}) => '${online} ${total} serverlari onlayn';
	@override String get noServers => 'Hali hech narsa ulanmagan. Plex hisob qaydnomangizni yoki Jellyfin yoki Emby serverini qo\'shing.';
	@override String get editUrls => 'Server URL manzillarini tahrirlash';
}

// Path: accountPreferences
class _Translations$accountPreferences$uz extends Translations$accountPreferences$en {
	_Translations$accountPreferences$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get sectionTitle => 'Hisob sozlamalari';
	@override String hubSubtitleSingle({required Object account}) => '${account} hisobida saqlangan audio, subtitr va kutubxona parametrlari';
	@override String hubSubtitleMultiple({required Object count}) => '${count} ta hisobda saqlangan audio, subtitr va kutubxona parametrlari';
	@override String get pickAccount => 'Har bir hisob oʻz sozlamalarini saqlaydi. Tahrirlash uchun birini tanlang.';
	@override String get storedOnAccount => 'Bu parametrlar hisobning oʻzida saqlanadi — unga kirilgan har bir ilova ulardan foydalanadi, jumladan boshqa qurilmalaringizdagi Luroka ham.';
	@override String get noAccounts => 'Sozlanadigan hisoblar yoʻq';
	@override String get noAccountsHint => 'Plex-ga kiring yoki Jellyfin yoki Emby serverini ulang — shunda oʻsha hisobda saqlangan sozlamalar shu yerda koʻrinadi.';
	@override String get unavailable => 'Bu hisobga ulanib boʻlmadi';
	@override String get loadFailed => 'Bu sozlamalarni yuklab boʻlmadi';
	@override String get noPreference => 'Afzallik yoʻq';
	@override String get notSet => 'Oʻrnatilmagan';
	@override late final _Translations$accountPreferences$groups$uz groups = _Translations$accountPreferences$groups$uz._(_root);
	@override String get preferredAudioLanguage => 'Afzal koʻrilgan audio tili';
	@override String get autoSelectAudio => 'Audioni til boʻyicha tanlash';
	@override String get autoSelectAudioDescription => 'Oʻchirilgan holatda faylda standart deb belgilangan audio trek ishlatiladi.';
	@override String get preferredSubtitleLanguage => 'Afzal koʻrilgan subtitr tili';
	@override String get subtitleMode => 'Subtitrni yoqish';
	@override late final _Translations$accountPreferences$subtitleModes$uz subtitleModes = _Translations$accountPreferences$subtitleModes$uz._(_root);
	@override String get subtitleAccessibility => 'SDH subtitrlar';
	@override late final _Translations$accountPreferences$subtitleAccessibilityOptions$uz subtitleAccessibilityOptions = _Translations$accountPreferences$subtitleAccessibilityOptions$uz._(_root);
	@override String get forcedSubtitles => 'Majburiy subtitrlar';
	@override late final _Translations$accountPreferences$forcedSubtitleOptions$uz forcedSubtitleOptions = _Translations$accountPreferences$forcedSubtitleOptions$uz._(_root);
	@override String get displayMissingEpisodes => 'Yoʻqolgan qismlarni koʻrsatish';
	@override String get displayMissingEpisodesDescription => 'Server biladigan, lekin fayli boʻlmagan qismlarni roʻyxatlaydi.';
	@override String get hidePlayedInLatest => '"Soʻnggi" boʻlimida koʻrilganlarni yashirish';
	@override String get hidePlayedInLatestDescription => 'Serverning "Soʻnggi" qatorlariga allaqachon koʻrgan narsalaringizni kiritmaslik.';
	@override String get displayCollectionsView => 'Toʻplamlar koʻrinishini koʻrsatish';
	@override String get displayCollectionsViewDescription => 'Kutubxonalaringiz yonida serverning Toʻplamlar koʻrinishini taklif qilish.';
	@override String get rewatchingInNextUp => 'Qayta koʻrilgan seriallarni "Keyingi" boʻlimida saqlash';
	@override String get rewatchingInNextUpDescription => 'Serialni tugatib, qayta boshlasangiz, "Keyingi" boʻlimi serialni tashlab yuborish oʻrniga qayta tomoshaga ergashadi.';
	@override String get watchedIndicator => 'Koʻrilganlik belgilari';
	@override late final _Translations$accountPreferences$watchedIndicatorOptions$uz watchedIndicatorOptions = _Translations$accountPreferences$watchedIndicatorOptions$uz._(_root);
	@override String get mediaReviewsVisibility => 'Baholar va sharhlar';
	@override late final _Translations$accountPreferences$mediaReviewsOptions$uz mediaReviewsOptions = _Translations$accountPreferences$mediaReviewsOptions$uz._(_root);
}

// Path: discover
class _Translations$discover$uz extends Translations$discover$en {
	_Translations$discover$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kashf qilish';
	@override String get noContentAvailable => 'Kontent mavjud emas';
	@override String get addMediaToLibraries => 'Kutubxonalaringizga media qoʻshing';
	@override String get continueWatching => 'Tomoshani davom ettirish';
	@override String continueWatchingIn({required Object library}) => '${library} ichida tomoshani davom ettirish';
	@override String get nextUp => 'Navbatda';
	@override String nextUpIn({required Object library}) => '${library} ichida navbatda';
	@override String get recentlyAdded => 'Yaqinda qoʻshilganlar';
	@override String recentlyAddedIn({required Object library}) => '${library} ichida yaqinda qoʻshilganlar';
	@override String latestAlbumsIn({required Object library}) => '${library} ichida soʻnggi albomlar';
	@override String recentlyPlayedIn({required Object library}) => '${library} ichida yaqinda eshitilganlar';
	@override String mostPlayedIn({required Object library}) => '${library} ichida eng koʻp eshitilganlar';
	@override String playEpisode({required Object season, required Object episode}) => 'M${season}Q${episode}';
	@override String get overview => 'Tavsif';
	@override String get cast => 'Aktyorlar';
	@override String get extras => 'Treylerlar va qoʻshimchalar';
	@override String get studio => 'Studiya';
	@override String get rating => 'Reyting';
	@override String get director => 'Rejissyor';
	@override String get directors => 'Rejissyorlar';
	@override String get movie => 'Film';
	@override String get tvShow => 'TV Shou';
	@override String minutesLeft({required Object minutes}) => '${minutes} daq qoldi';
	@override String get moreLikeThis => 'Oʻxshashlar';
	@override String titleCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uz'))(n,
		one: '${n} ta nom',
		other: '${n} ta nom',
	);
	@override late final _Translations$discover$person$uz person = _Translations$discover$person$uz._(_root);
}

// Path: errors
class _Translations$errors$uz extends Translations$errors$en {
	_Translations$errors$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String searchFailed({required Object error}) => 'Qidiruv xatoligi: ${error}';
	@override String get searchUnavailable => 'Qidiruv hech bir media serverga ulana olmadi.';
	@override String connectionTimeout({required Object context}) => '${context} yuklanish vaqti tugadi';
	@override String get connectionFailed => 'Media serveriga ulanib boʻlmadi';
	@override String unableToLoad({required Object context}) => '${context} yuklab boʻlmadi.';
	@override String get noClientAvailable => 'Mavjud mijoz yoʻq';
	@override String get pleaseEnterToken => 'Tokenni kiriting';
	@override String get invalidToken => 'Notoʻgʻri token';
	@override String failedToVerifyToken({required Object error}) => 'Tokenni tekshirib boʻlmadi: ${error}';
	@override String failedToSwitchProfile({required Object displayName}) => '${displayName} profiliga oʻtib boʻlmadi';
	@override String failedToDeleteProfile({required Object displayName}) => '${displayName} profilini oʻchirib boʻlmadi';
	@override String get failedToRate => 'Reytingni yangilab boʻlmadi';
	@override String get reasonTimedOut => 'ulanish vaqti tugadi';
	@override String get reasonUnreachable => 'serverga ulanib boʻlmadi';
	@override String get reasonRefused => 'server soʻrovni rad etdi';
	@override String get reasonNotFound => 'element endi serverda yoʻq';
	@override String get reasonServerError => 'server xatolik haqida xabar berdi';
	@override String get reasonCancelled => 'soʻrov bekor qilindi';
	@override String get reasonUnexpected => 'kutilmagan xatolik yuz berdi';
}

// Path: libraries
class _Translations$libraries$uz extends Translations$libraries$en {
	_Translations$libraries$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kutubxonalar';
	@override String get fallbackTitle => 'Kutubxona';
	@override String get scanLibraryFiles => 'Fayllarni skanerlash';
	@override String get scanLibrary => 'Kutubxonani skanerlash';
	@override String get analyze => 'Tahlil qilish';
	@override String get analyzeLibrary => 'Kutubxonani tahlil qilish';
	@override String get refreshMetadata => 'Metamaʼlumotlarni yangilash';
	@override String get emptyTrash => 'Savatni tozalash';
	@override String emptyingTrash({required Object title}) => '"${title}" savati tozalanmoqda...';
	@override String trashEmptied({required Object title}) => '"${title}" savati tozalandi';
	@override String failedToEmptyTrash({required Object error}) => 'Savatni tozalab boʻlmadi: ${error}';
	@override String analyzing({required Object title}) => '"${title}" tahlil qilinmoqda...';
	@override String analysisStarted({required Object title}) => '"${title}" uchun tahlil boshlandi';
	@override String failedToAnalyze({required Object error}) => 'Tahlil qilib boʻlmadi: ${error}';
	@override String get noLibrariesFound => 'Kutubxonalar topilmadi';
	@override String get allLibrariesHidden => 'Barcha kutubxonalar yashirilgan';
	@override String hiddenLibrariesCount({required Object count}) => 'Yashirin kutubxonalar (${count})';
	@override String get thisLibraryIsEmpty => 'Ushbu kutubxona boʻsh';
	@override String get noItemsMatchFilters => 'Filtrlarga mos keladigan elementlar topilmadi';
	@override String get resetFilters => 'Filtrlarni qayta oʻrnatish';
	@override String get all => 'Barchasi';
	@override String get clearAll => 'Barchasini tozalash';
	@override String scanLibraryConfirm({required Object title}) => '"${title}" kutubxonasini skanerlamoqchimisiz?';
	@override String analyzeLibraryConfirm({required Object title}) => '"${title}" kutubxonasini tahlil qilmoqchimisiz?';
	@override String refreshMetadataConfirm({required Object title}) => '"${title}" metamaʼlumotlarini yangilaysizmi?';
	@override String emptyTrashConfirm({required Object title}) => '"${title}" savatini tozalaysizmi?';
	@override String get manageLibraries => 'Kutubxonalarni boshqarish';
	@override String get sort => 'Saralash';
	@override String get sortBy => 'Saralash mezonlari';
	@override String get filters => 'Filtrlar';
	@override String get confirmActionMessage => 'Ushbu harakatni bajarmoqchimisiz?';
	@override String get showLibrary => 'Kutubxonani koʻrsatish';
	@override String get hideLibrary => 'Kutubxonani yashirish';
	@override String get libraryOptions => 'Kutubxona parametrlari';
	@override String get content => 'kutubxona tarkibi';
	@override String get selectLibrary => 'Kutubxonani tanlash';
	@override String filtersWithCount({required Object count}) => 'Filtrlar (${count})';
	@override String get noRecommendations => 'Tavsiyalar yoʻq';
	@override String get noCollections => 'Ushbu kutubxonada toʻplamlar yoʻq';
	@override String get noFoldersFound => 'Jildlar topilmadi';
	@override String get folders => 'jildlar';
	@override late final _Translations$libraries$tabs$uz tabs = _Translations$libraries$tabs$uz._(_root);
	@override late final _Translations$libraries$groupings$uz groupings = _Translations$libraries$groupings$uz._(_root);
	@override late final _Translations$libraries$filterCategories$uz filterCategories = _Translations$libraries$filterCategories$uz._(_root);
	@override late final _Translations$libraries$sortLabels$uz sortLabels = _Translations$libraries$sortLabels$uz._(_root);
	@override late final _Translations$libraries$advancedFilters$uz advancedFilters = _Translations$libraries$advancedFilters$uz._(_root);
}

// Path: about
class _Translations$about$uz extends Translations$about$en {
	_Translations$about$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dastur haqida';
	@override String get openSourceLicenses => 'Ochiq kodli litsenziyalar';
	@override String versionLabel({required Object version}) => 'Versiya ${version}';
	@override String get appDescription => 'Flutter asosidagi qulay Plex, Jellyfin va Emby mijozi';
	@override String get customSource => 'Manba kodi';
	@override String get basedOnLuroka => 'Plezy kod bazasida qurilgan';
	@override String get viewLicensesDescription => 'Uchinchi tomon kutubxonalarining litsenziyalarini koʻrish';
	@override String get appSection => 'Ilova';
	@override String get communitySection => 'Jamiyat';
	@override String get creditsSection => 'Kreditlar';
	@override String get legalSection => 'Huquqiy';
	@override String versionMeta({required Object version, required Object build, required Object platform}) => 'v${version} (${build}) · ${platform}';
	@override String versionMetaNoBuild({required Object version, required Object platform}) => 'v${version} · ${platform}';
	@override String get versionUnavailable => 'Versiya mavjud emas';
	@override String get versionDetails => 'Versiya tafsilotlari';
	@override String versionDetailsTitle({required Object version, required Object build}) => 'Luroka ${version} (${build})';
	@override String platformLine({required Object platform}) => 'Platforma: ${platform}';
	@override String deviceLine({required Object model}) => 'Qurilma: ${model}';
	@override String packageLine({required Object package}) => 'Paket: ${package}';
	@override String localeLine({required Object locale}) => 'Til: ${locale}';
	@override String get copyDetails => 'Tafsilotlarni nusxalash';
	@override String get detailsCopied => 'Ilova tafsilotlari nusxalandi';
	@override String get detailsCopyFailed => 'Ilova tafsilotlarini nusxalab bo‘lmadi';
	@override String get checkForUpdatesDescription => 'Yangi versiya uchun GitHub-ni tekshiring';
	@override String get checkingForUpdates => 'Yangilanishlar tekshirilmoqda…';
	@override String get whatsNew => 'Nima yangilik';
	@override String get releaseNotesUnavailable => 'Chiqarish qaydlari mavjud emas.';
	@override String get sourceCodeDescription => 'GitHub-da Luroka';
	@override String get reportIssue => 'Muammo haqida xabar bering';
	@override String get reportIssueDescription => 'Nima xato bo\'lganini bizga ayting';
	@override String get documentation => 'Hujjatlar';
	@override String get documentationDescription => 'Sozlash, xususiyatlar va eslatmalar yaratish';
	@override String get upstreamProjectDescription => 'Edde746 va ishtirokchilar tomonidan ochiq manbali loyiha';
	@override String get upstreamWebsite => 'Yuqoridagi veb-sayt';
	@override String get attribution => 'Ma\'lumotlar va atributlar';
	@override String get attributionDescription => 'Metadata, reytinglar va savdo belgilari';
	@override String get attributionBody => 'Ushbu mahsulot TMDB API dan foydalanadi, lekin TMDB tomonidan tasdiqlanmagan yoki sertifikatlanmagan. Mashhurlik roʻyxati, metamaʼlumotlar va IMDb reytinglari Cinemeta tomonidan taqdim etilgan. Ballar manba belgilarini saqlab qoladi.';
	@override String get trademarkNotices => 'Plex, Jellyfin, Emby, Trakt, Simkl, MyAnimeList, AniList, ZXQKEEP0, ZX7KEEP0 va tegishli savdo belgilari, egalari. Luroka ular bilan aloqador emas yoki ular tomonidan tasdiqlanmagan.';
	@override String get privacyPolicy => 'Maxfiylik siyosati';
	@override String get privacyPolicyDescription => 'Ma\'lumotlaringiz qanday qayta ishlanadi';
	@override String get gplLicense => 'GNU GPL-3.0 litsenziyasi';
	@override String get gplLicenseDescription => 'Luroka bepul dastur hisoblanadi';
	@override String get linkOpenFailed => 'Bu havolani ochib boʻlmadi';
	@override String get opensInBrowser => 'Brauzeringizda ochiladi';
	@override String get footer => 'Luroka GPL-3.0 ostida bepul dastur hisoblanadi.';
	@override String copyright({required Object year}) => '© ${year} Luroka ishtirokchilari';
}

// Path: serverSelection
class _Translations$serverSelection$uz extends Translations$serverSelection$en {
	_Translations$serverSelection$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String noServersFoundForAccount({required Object username, required Object email}) => '${username} (${email}) uchun serverlar topilmadi';
	@override String failedToLoadServers({required Object error}) => 'Serverlarni yuklashda xatolik: ${error}';
	@override String get noValidServers => 'Bu hisobda foydalanish mumkin boʻlgan server topilmadi';
}

// Path: hubDetail
class _Translations$hubDetail$uz extends Translations$hubDetail$en {
	_Translations$hubDetail$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nomi';
	@override String get releaseYear => 'Chiqqan yili';
	@override String get dateAdded => 'Qoʻshilgan sanasi';
	@override String get rating => 'Reyting';
	@override String get noItemsFound => 'Elementlar topilmadi';
}

// Path: logs
class _Translations$logs$uz extends Translations$logs$en {
	_Translations$logs$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get clearLogs => 'Jurnallarni tozalash';
	@override String get copyLogs => 'Jurnallarni nusxalash';
	@override String get uploadLogs => 'Jurnallarni yuklash';
}

// Path: startup
class _Translations$startup$uz extends Translations$startup$en {
	_Translations$startup$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get failedTitle => 'Luroka ishga tusha olmadi';
	@override String get failedBody => 'Ishga tushirish paytida nimadir xato ketdi. Quyidagi tafsilotlar aynan nima muvaffaqiyatsiz boʻlganini koʻrsatadi.';
	@override String get failedBodyRepairable => 'Lurokaning saqlangan sozlamalar fayli shikastlangan va Luroka ishga tushishidan oldin uni qayta tiklash kerak. Qayta urinish yordam bermaydi — Saqlashni tiklashni tanlang.';
	@override String get phaseLabel => 'Qadam';
	@override String get showDetails => 'Tafsilotlarni koʻrsatish';
	@override String get hideDetails => 'Tafsilotlarni yashirish';
	@override String get copyDetails => 'Tafsilotlarni nusxalash';
	@override String get detailsCopied => 'Tafsilotlar buferga nusxalandi';
	@override String get uploadDetails => 'Tafsilotlarni yuklash';
	@override String get repairStorage => 'Saqlashni tiklash';
	@override String get repairTitle => 'Saqlangan maʼlumotlar tikilsinmi?';
	@override String get repairBodyCommon => 'Lurokaning sozlamalar fayli shikastlangan va uni oʻqib boʻlmaydi. Tiklash barcha sozlamalarni standart holatiga qaytaradi.';
	@override String get repairBodyOneCredential => 'Bitta saqlangan kirish maʼlumoti shikastlangan va uni oʻqib boʻlmaydi. Tiklash faqat uni olib tashlaydi; boshqa sozlamalaringizga tegilmaydi.';
	@override String get repairBodySignInsKept => 'Serverlaringiz va profillaringiz tizimga kirgan holda qoladi.';
	@override String get repairBodySignInsLost => 'Saqlangan kirish maʼlumotlaringizni himoya qiluvchi kalitni ushbu fayldan tiklab boʻlmaydi, shuning uchun har bir server va profilga qaytadan kirishingiz kerak boʻladi. Media serveringizdagi hech narsaga taʼsir qilmaydi.';
	@override String get repairBodySessionsUncertain => 'Trekerlar (MAL, AniList, Simkl, Trakt) va Seerr alohida saqlanadi va ular saqlanib qolishi ham, yoʻqolishi ham mumkin. Luroka aynan nimani saqlaganini sizga xabar qiladi.';
	@override String get repairConfirm => 'Tiklash';
	@override String get repairSucceeded => 'Saqlash tiklandi';
	@override String get repairNeedsRestart => 'Saqlash tiklandi — qayta ishga tushirish kerak';
	@override String get restartRequiredBody => 'Maʼlumotlaringiz tiklandi, lekin Luroka ulardan foydalanishi uchun yangidan ishga tushishi kerak. Luroka-ni yoping va qayta oching.';
	@override String get quitLuroka => 'Luroka-dan chiqish';
	@override String get repairFailed => 'Tiklash amalga oshmadi';
	@override String get repairKeptSignIns => 'Serverlaringiz va profillaringiz hali ham tizimga kirgan.';
	@override String get repairLostSignIns => 'Saqlangan kirish maʼlumotlaringizni himoya qiluvchi kalitni tiklab boʻlmadi. Har bir server va profilga qaytadan kirishingiz kerak boʻladi.';
	@override String get repairLostSessions => 'Kamida bitta treker yoki Seerr ulanishi yoʻqoldi va uni qayta ulash kerak.';
	@override String get backupTitle => 'Shikastlangan faylning nusxasi saqlab qoʻyildi';
	@override String get backupWarning => 'Unda kirish hisob maʼlumotlaringiz bor. Uni yuklamang yoki baham koʻrmang.';
	@override String get deleteBackup => 'Nusxani oʻchirish';
	@override String get backupDeleted => 'Nusxa oʻchirildi.';
	@override String get previousFailureTitle => 'Luroka oxirgi marta ishga tushmadi';
}

// Path: licenses
class _Translations$licenses$uz extends Translations$licenses$en {
	_Translations$licenses$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get relatedPackages => 'Bogʻliq paketlar';
	@override String get license => 'Litsenziya';
	@override String licenseNumber({required Object number}) => 'Litsenziya ${number}';
	@override String licensesCount({required Object count}) => '${count} litsenziya';
	@override String get searchHint => 'Paketlarni qidirish';
	@override String noResults({required Object query}) => '“${query}” paketiga mos keladigan paketlar topilmadi';
	@override String get clearSearch => 'Qidiruvni tozalash';
}

// Path: navigation
class _Translations$navigation$uz extends Translations$navigation$en {
	_Translations$navigation$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get libraries => 'Kutubxonalar';
	@override String get downloads => 'Yuklamalar';
	@override String get liveTv => 'Jonli TV';
	@override String get explore => 'Kashf qilish';
}

// Path: explore
class _Translations$explore$uz extends Translations$explore$en {
	_Translations$explore$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kashf qilish';
	@override String get selectSource => 'Manbani tanlang';
	@override late final _Translations$explore$rows$uz rows = _Translations$explore$rows$uz._(_root);
	@override late final _Translations$explore$status$uz status = _Translations$explore$status$uz._(_root);
	@override String episodeCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uz'))(n,
		one: '${n} qism',
		other: '${n} qism',
	);
	@override String get cast => 'Aktyorlar';
	@override String get characters => 'Qahramonlar';
	@override String get addToWatchlist => 'Tomosha roʻyxatiga qoʻshish';
	@override String get removeFromWatchlist => 'Tomosha roʻyxatidan oʻchirish';
	@override String get addedToWatchlist => 'Tomosha roʻyxatiga qoʻshildi';
	@override String get removedFromWatchlist => 'Tomosha roʻyxatidan olib tashlandi';
	@override String get watchlistUpdateFailed => 'Tomosha roʻyxatini yangilab boʻlmadi';
	@override String get watchlistNoMatch => 'Bu elementni tomosha roʻyxatiga moslab boʻlmadi';
	@override String get notInLibrary => 'Kutubxonangizda yoʻq';
	@override String get inTheseLibraries => 'Ushbu kutubxonalarda bor';
	@override String get checkingLibrary => 'Kutubxona tekshirilmoqda...';
	@override String libraryCheckFailed({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uz'))(n,
		one: '${n} serverni tekshirib boʻlmadi',
		other: '${n} serverni tekshirib boʻlmadi',
	);
	@override String get emptyTitle => 'Hali bu yerda hech narsa yoʻq';
	@override String emptyMessage({required Object source}) => '${source} manbasidan olingan qatorlar bu yerda koʻrinadi.';
	@override String searchHint({required Object source}) => '${source} ichidan qidirish';
	@override String searchEmpty({required Object query}) => '"${query}" boʻyicha natija topilmadi';
	@override String searchPrompt({required Object source}) => '${source} orqali filmlar va seriallarni qidiring.';
	@override String get searchFailed => 'Qidiruv xatoligi. Ulanishni tekshiring.';
	@override late final _Translations$explore$badge$uz badge = _Translations$explore$badge$uz._(_root);
	@override late final _Translations$explore$stats$uz stats = _Translations$explore$stats$uz._(_root);
	@override late final _Translations$explore$season$uz season = _Translations$explore$season$uz._(_root);
	@override late final _Translations$explore$format$uz format = _Translations$explore$format$uz._(_root);
	@override late final _Translations$explore$sourceMaterial$uz sourceMaterial = _Translations$explore$sourceMaterial$uz._(_root);
	@override late final _Translations$explore$creditRole$uz creditRole = _Translations$explore$creditRole$uz._(_root);
	@override late final _Translations$explore$relation$uz relation = _Translations$explore$relation$uz._(_root);
	@override String broadcast({required Object day, required Object time}) => '${day} kuni soat ${time} da efirga uzatiladi';
	@override String broadcastWithZone({required Object day, required Object time, required Object timezone}) => '${day} kuni soat ${time} ${timezone} da efirga uzatiladi';
	@override late final _Translations$explore$detail$uz detail = _Translations$explore$detail$uz._(_root);
	@override String totalResults({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uz'))(n,
		one: '${n} ta natija',
		other: '${n} ta natija',
	);
}

// Path: liveTv
class _Translations$liveTv$uz extends Translations$liveTv$en {
	_Translations$liveTv$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Jonli TV';
	@override String get guide => 'Dasturlar jadvali';
	@override String get noChannels => 'Mavjud kanallar yoʻq';
	@override String get noDvr => 'Serverda DVR sozlanmagan';
	@override String get serverUnavailable => 'Jonli TV serveri mavjud emas.';
	@override String get serverNotConnected => 'Jonli TV serveriga ulanmagan.';
	@override String get noPrograms => 'Dastur haqida maʼlumot yoʻq';
	@override String get liveStreamFailed => 'Jonli oqim xatoligi';
	@override String get unknownProgram => 'Nomaʼlum dastur';
	@override String get unknownHub => 'Nomaʼlum';
	@override String get unknownError => 'Nomaʼlum xatolik';
	@override String channelNumber({required Object number}) => '${number}-kanal';
	@override String get unknownChannel => 'Nomaʼlum kanal';
	@override String get live => 'JONLI EFIR';
	@override String get reloadGuide => 'Jadvalni yangilash';
	@override String get searchGuide => 'Dasturlar jadvalidan qidirish';
	@override String get searchHint => 'Kanal va dasturlarni qidirish';
	@override String searchNoResults({required Object query}) => '"${query}" boʻyicha moslik topilmadi';
	@override String get channelsSection => 'Kanallar';
	@override String get programsSection => 'Dasturlar';
	@override String get now => 'Hozir';
	@override String get today => 'Bugun';
	@override String get tomorrow => 'Ertaga';
	@override String get midnight => 'Yarim tun';
	@override String get overnight => 'Tunda';
	@override String get morning => 'Ertalab';
	@override String get daytime => 'Kunduzi';
	@override String get evening => 'Kechqurun';
	@override String get lateNight => 'Tunda';
	@override String get whatsOn => 'Hozir nima efirda?';
	@override String get watchChannel => 'Kanalni tomosha qilish';
	@override String get favorites => 'Tanlanganlar';
	@override String get reorderFavorites => 'Tanlanganlarni tartiblash';
	@override String get noFavoriteChannels => 'Sevimli kanallar yoʻq';
	@override String get noFavoriteChannelsHint => 'Barcha kanallarni koʻrsating, soʻng kanalni sevimlilarga qoʻshish uchun uni bosib turing.';
	@override String get showAllChannels => 'Barcha kanallarni koʻrsatish';
	@override String get favoritesLoadFailed => 'Tanlanganlarni yuklab boʻlmadi. Ulanishni tekshirib, qayta urinib koʻring.';
	@override String get favoritesUpdateFailed => 'Tanlanganlarni yangilab boʻlmadi.';
	@override String get joinSession => 'Davom etayotgan seansga qoʻshilish';
	@override String watchFromStart({required Object minutes}) => 'Boshidan tomosha qilish (${minutes} daq ilgari)';
	@override String get watchLive => 'Jonli efirni tomosha qilish';
	@override String get goToLive => 'Jonli efirga oʻtish';
	@override String get record => 'Yozib olish';
	@override String get recordEpisode => 'Qismni yozib olish';
	@override String get recordSeries => 'Serialni yozib olish';
	@override String get recordOptions => 'Yozib olish parametrlari';
	@override String get saveTo => 'Shu yerga saqlash';
	@override String get recordings => 'Yozib olinganlar';
	@override String get scheduledRecordings => 'Rejalashtirilganlar';
	@override String get recordingRules => 'Yozib olish qoidalari';
	@override String get noScheduledRecordings => 'Rejalashtirilgan yozuvlar yoʻq';
	@override String get manageRecording => 'Yozuvni boshqarish';
	@override String get cancelRecording => 'Yozishni bekor qilish';
	@override String get cancelRecordingTitle => 'Yozish toʻxtatilsinmi?';
	@override String cancelRecordingMessage({required Object title}) => '${title} endi yozib olinmaydi.';
	@override String get deleteRule => 'Qoidani oʻchirish';
	@override String get deleteRuleTitle => 'Yozib olish qoidasi oʻchirilsinmi?';
	@override String deleteRuleMessage({required Object title}) => '${title} serialining keyingi qismlari yozib olinmaydi.';
	@override String get recordingScheduled => 'Yozib olish rejalashtirildi';
	@override String get alreadyScheduled => 'Ushbu dastur avvaldan rejalashtirilgan';
	@override String get dvrAdminRequired => 'DVR sozlamalari administrator huquqini talab qiladi';
	@override String get recordingFailed => 'Yozib olishni rejalashtirib boʻlmadi';
	@override String get recordingTargetMissing => 'Yozib olinadigan kutubxona aniqlanmadi';
	@override String get recordNotAvailable => 'Ushbu dasturni yozib olib boʻlmaydi';
	@override String get recordingCancelled => 'Yozib olish bekor qilindi';
	@override String get recordingRuleDeleted => 'Yozib olish qoidasi oʻchirildi';
	@override String get processRecordingRules => 'Qoidalarni qayta baholash';
	@override String get recordingInProgress => 'Hozir yozib olinmoqda';
	@override String recordingsCount({required Object count}) => '${count} rejalashtirilgan';
	@override String get editRule => 'Qoidani tahrirlash';
	@override String get editRuleAction => 'Tahrirlash';
	@override String get recordingRuleUpdated => 'Yozib olish qoidasi yangilandi';
	@override String get guideReloadRequested => 'Jadvalni yangilash soʻraldi';
	@override String get guideReloadFailed => 'Dasturlar jadvalini yangilab boʻlmadi';
	@override String get rulesProcessRequested => 'Qoidalarni qayta baholash soʻraldi';
	@override String get rulesProcessFailed => 'Yozib olish qoidalarini qayta baholab boʻlmadi';
	@override String get recordShow => 'Shouni yozib olish';
	@override late final _Translations$liveTv$recordSettings$uz recordSettings = _Translations$liveTv$recordSettings$uz._(_root);
	@override String startingInMinutes({required Object minutes}) => '${minutes} daqiqadan keyin boshlanadi';
	@override String dayAtTime({required Object day, required Object time}) => '${day}, soat ${time} da';
	@override String invalidPlaybackData({required Object product}) => '${product} Jonli TV ijrosi uchun notoʻgʻri maʼlumot qaytardi';
	@override String get failedToStartChannel => 'Jonli kanalni boshlab boʻlmadi';
	@override String get failedToBuildStreamUrl => 'Oqim URL-ini tuzib boʻlmadi';
	@override String playbackStartFailed({required Object reason}) => 'Kanalni ishga tushirib boʻlmadi: ${reason}';
	@override String channelSwitchFailed({required Object reason}) => 'Kanalni almashtirib boʻlmadi: ${reason}';
}

// Path: collections
class _Translations$collections$uz extends Translations$collections$en {
	_Translations$collections$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Toʻplamlar';
	@override String get collection => 'Toʻplam';
	@override String get empty => 'Toʻplam boʻsh';
	@override String get deleteCollection => 'Toʻplamni oʻchirish';
	@override String deleteConfirm({required Object title}) => '"${title}" oʻchirilsinmi?';
	@override String get deleted => 'Toʻplam oʻchirildi';
	@override String get deleteFailed => 'Toʻplamni oʻchirib boʻlmadi';
	@override String deleteFailedWithError({required Object error}) => 'Toʻplamni oʻchirish xatoligi: ${error}';
	@override String get selectCollection => 'Toʻplamni tanlash';
	@override String get collectionName => 'Toʻplam nomi';
	@override String get enterCollectionName => 'Toʻplam nomini kiriting';
	@override String get addedToCollection => 'Toʻplamga qoʻshildi';
	@override String get errorAddingToCollection => 'Toʻplamga qoʻshib boʻlmadi';
	@override String get created => 'Toʻplam yaratildi';
	@override String get removeFromCollection => 'Toʻplamdan oʻchirish';
	@override String removeFromCollectionConfirm({required Object title}) => '"${title}" ushbu toʻplamdan oʻchirilsinmi?';
	@override String get removedFromCollection => 'Toʻplamdan oʻchirildi';
	@override String get removeFromCollectionFailed => 'Toʻplamdan oʻchirib boʻlmadi';
	@override String removeFromCollectionError({required Object error}) => 'Oʻchirish xatoligi: ${error}';
	@override String get searchCollections => 'Toʻplamlardan qidirish...';
}

// Path: playlists
class _Translations$playlists$uz extends Translations$playlists$en {
	_Translations$playlists$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ijro roʻyxatlari';
	@override String get playlist => 'Ijro roʻyxati';
	@override String get noPlaylists => 'Ijro roʻyxatlari topilmadi';
	@override String get create => 'Ijro roʻyxatini yaratish';
	@override String get playlistName => 'Ijro roʻyxati nomi';
	@override String get enterPlaylistName => 'Roʻyxat nomini kiriting';
	@override String get delete => 'Ijro roʻyxatini oʻchirish';
	@override String get removeItem => 'Roʻyxatdan oʻchirish';
	@override String get smartPlaylist => 'Aqlli ijro roʻyxati';
	@override String itemCount({required Object count}) => '${count} element';
	@override String get oneItem => '1 element';
	@override String get emptyPlaylist => 'Ushbu roʻyxat boʻsh';
	@override String get deleteConfirm => 'Ijro roʻyxati oʻchirilsinmi?';
	@override String deleteMessage({required Object name}) => '"${name}" oʻchirilsinmi?';
	@override String get created => 'Ijro roʻyxati yaratildi';
	@override String get deleted => 'Ijro roʻyxati oʻchirildi';
	@override String get itemAdded => 'Roʻyxatga qoʻshildi';
	@override String get itemRemoved => 'Roʻyxatdan oʻchirildi';
	@override String get selectPlaylist => 'Roʻyxatni tanlash';
	@override String get searchPlaylists => 'Ijro roʻyxatlaridan qidirish...';
	@override String get errorCreating => 'Roʻyxatni yaratib boʻlmadi';
	@override String get errorDeleting => 'Roʻyxatni oʻchirib boʻlmadi';
	@override String get errorLoading => 'Roʻyxatlarni yuklab boʻlmadi';
	@override String get errorAdding => 'Roʻyxatga qoʻshib boʻlmadi';
	@override String get errorReordering => 'Qayta tartiblab boʻlmadi';
	@override String get errorRemoving => 'Roʻyxatdan oʻchirib boʻlmadi';
}

// Path: music
class _Translations$music$uz extends Translations$music$en {
	_Translations$music$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get goToAlbum => 'Albomga oʻtish';
	@override String get goToArtist => 'Ijrochiga oʻtish';
	@override String get instantMix => 'Tezkor miks';
	@override String get playNext => 'Keyingisini ijro etish';
	@override String get addToQueue => 'Navbatga qoʻshish';
	@override String discNumber({required Object n}) => '${n}-disk';
	@override String trackCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uz'))(n,
		one: '${n} tarona',
		other: '${n} tarona',
	);
	@override String get nowPlaying => 'Hozir ijro etilmoqda';
	@override String playingFrom({required Object title}) => '${title} manbasidan';
	@override String get queue => 'Navbat';
	@override String get clearQueue => 'Navbatni tozalash';
	@override String get lyrics => 'Musiqa matni';
	@override String get noLyrics => 'Musiqa matni yoʻq';
	@override String get sleepTimer => 'Uyqu taymeri';
	@override String get sleepTimerEndOfTrack => 'Taronaning oxiri';
	@override String sleepTimerMinutes({required Object n}) => '${n} daqiqa';
	@override String get stopPlayback => 'Ijroni toʻxtatish';
	@override String get previousTrack => 'Oldingi tarona';
	@override String get nextTrack => 'Keyingi tarona';
	@override String get repeat => 'Takrorlash';
	@override String get repeatAll => 'Barchasini takrorlash';
	@override String get repeatOne => 'Birtasini takrorlash';
	@override String get instantMixNoServer => 'Tezkor miks uchun hech qanday server mavjud emas';
	@override String get instantMixFailed => 'Tezkor miksni yuklab boʻlmadi';
	@override String get instantMixEmpty => 'Tezkor miks hech qanday taronani qaytarmadi';
	@override String noAudioUrl({required Object track}) => '${track} uchun audio URL mavjud emas';
	@override late final _Translations$music$discography$uz discography = _Translations$music$discography$uz._(_root);
}

// Path: watchTogether
class _Translations$watchTogether$uz extends Translations$watchTogether$en {
	_Translations$watchTogether$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Birgalikda tomosha qilish';
	@override String get description => 'Doʻstlaringiz va oilangiz bilan birga tomosha qiling';
	@override String get createRoom => 'Xona yaratish';
	@override String get creatingRoom => 'Xona yaratilmoqda...';
	@override String get joinRoom => 'Xonaga kirish';
	@override String get joiningRoom => 'Xonaga kirish...';
	@override String get connecting => 'Ulanmoqda...';
	@override String get relayPublic => 'Xonalar ommaviy Open Watch Party relelaridan foydalanadi.';
	@override String relayCustom({required Object url}) => 'Xonalar ${url} manzilidagi releyingizdan foydalanadi.';
	@override String get recentRooms => 'Yaqindagi xonalar';
	@override String get roomActions => 'Xonadagi harakatlar';
	@override String get renameRoom => 'Xona nomini oʻzgartirish';
	@override String get removeRoom => 'Oʻchirish';
	@override String get enterRoomCode => 'Xostdan 6 ta belgidan iborat kodni kiriting.';
	@override String get roomCode => 'Xona kodi';
	@override String get paste => 'joylashtirish';
	@override String get noCodeInClipboard => 'Buferda xona kodi mavjud emas';
	@override String get copyCode => 'Kodni nusxalash';
	@override String get codeCopied => 'Xona kodi nusxalandi';
	@override String get shareInvite => 'Taklifni ulashing';
	@override String get qrShare => 'QR kodini ulashing';
	@override String get qrHint => 'Bu xonaga qo‘shilish uchun Luroka ilovasi bilan skanerlang.';
	@override String get phasePlaying => 'Oʻynamoqda';
	@override String get phasePaused => 'Pauza qilingan';
	@override String get phaseWaiting => 'Hammani kutaman';
	@override String get inviteCopied => 'Taklif nusxalandi. Uni xabarga joylashtiring.';
	@override String inviteMessage({required Object code}) => 'Luroka: luroka://watch?code=${code}: “Birga tomosha” xonasiga qo‘shiling yoki “Birga tomosha”ni oching va ${code}-ni kiriting.';
	@override String get openSessionControls => 'Boshqaruv elementlarini ochish';
	@override String get reconnecting => 'Qayta ulanmoqda...';
	@override String get reconnectingDescription => 'Ulanish uzildi. Siz xonaga avtomatik ravishda qaytasiz.';
	@override String get connected => 'Ulangan';
	@override String get disconnected => 'Ulangan';
	@override String get youAreHost => 'Siz tashkilotchisiz';
	@override String hostedBy({required Object name}) => '${name} tomonidan joylashtirilgan';
	@override String get hostControlsPlayback => 'Ijroni tashkilotchi boshqaradi';
	@override String get anyoneCanControl => 'Ijroni har kim boshqara oladi';
	@override String get roomLocked => 'Xona qulflangan';
	@override String get nowPlaying => 'Hozir ijro etilmoqda';
	@override String get nothingPlaying => 'Hech narsa o\'ynamaydi';
	@override String get nothingPlayingHost => 'Xona bilan bo‘lishish uchun istalgan kutubxonadagi biror narsani o‘ynang.';
	@override String get nothingPlayingGuest => 'Uy egasi biror narsani o\'ynasa, u shu erda ochiladi.';
	@override String get notShareable => 'Bu videoda hech qanday katalog mavjud emas, shuning uchun uni faqat bir xil serverga kirish huquqiga ega odamlar oʻynashi mumkin.';
	@override String get searching => 'Bu video kutubxonalaringizdan qidirilmoqda...';
	@override String get yourCopy => 'Sizning nusxangiz';
	@override String get sharingYourCopy => 'Nusxangizni baham ko\'rasiz';
	@override String playingOtherLength({required Object difference}) => 'Sizning nusxangiz ijro etilmoqda, ${difference}';
	@override String get mismatchTitle => 'Sizning nusxangiz boshqa uzunlikda';
	@override String mismatchDescription({required Object difference}) => 'Sizning eng yaqin nusxangiz ${difference} xona videosiga qaraganda. Bu boshqa kesish yoki versiya bo\'lishi mumkin.';
	@override String get playAnyway => 'Baribir oʻynang';
	@override String get chooseAnotherCopy => 'Boshqa nusxani tanlang';
	@override String get dontPlay => 'O\'ynamang';
	@override String get unavailableTitle => 'Sizda bu video yoʻq';
	@override String get unavailableDescription => 'Luroka uni kutubxonalaringizdan topa olmadi. Nusxasini oʻzingiz tanlang yoki qaytadan qidiring.';
	@override String get chooseCopy => 'Nusxasini tanlang';
	@override String get searchAgain => 'Qayta qidirish';
	@override String get noCandidates => 'Kutubxonalaringizda hech qanday nusxa topilmadi.';
	@override String get choiceFailed => 'Bu nusxani xona uchun o‘ynatib bo‘lmadi';
	@override String lengthLonger({required Object duration}) => '${duration} uzoqroq';
	@override String lengthShorter({required Object duration}) => '${duration} qisqaroq';
	@override String get lengthSame => 'Bir xil uzunlik';
	@override String get lengthUnknown => 'Uzunligi noma\'lum';
	@override String get joinCurrentPlayback => 'Joriy ijroga qoʻshilish';
	@override String get joinCurrentPlaybackDescription => 'Tashkilotchi koʻrayotgan joyga oʻting';
	@override String get stopMedia => 'Hamma uchun videoni to\'xtating';
	@override String get syncOffset => 'Sinxronlash ofset';
	@override String get syncOffsetDescription => 'Agar video xonadan oldinda yoki orqasida ishlayotgan bo\'lsa, uni o\'zgartiring.';
	@override String offsetHint({required Object difference}) => 'Sizning nusxangiz ${difference} xonadagi videoga qaraganda.';
	@override String applyDifference({required Object offset}) => '${offset} dan foydalaning';
	@override String get offsetMinusSecond => '-1 s';
	@override String get offsetMinusTenth => '-100 ms';
	@override String get offsetPlusTenth => '+100 ms';
	@override String get offsetPlusSecond => '+1 s';
	@override String get participants => 'Ishtirokchilar';
	@override String participantCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uz'))(n,
		one: '${n} ishtirokchisi',
		other: '${n} ishtirokchilari',
	);
	@override String get hostBadge => 'TASHKILOTCHI';
	@override String nameYou({required Object name}) => '${name} (siz)';
	@override String get playerIdle => 'Bo\'sh';
	@override String get playerLoading => 'Yuklanmoqda';
	@override String get playerReady => 'Tayyor';
	@override String get playerBuffering => 'Buferlash';
	@override String get matchSearching => 'Qidirilmoqda';
	@override String get matchMatched => 'Videosi bor';
	@override String get matchMismatched => 'Turli uzunlik';
	@override String get matchUnavailable => 'Video yo\'q';
	@override String participantOffset({required Object offset}) => 'Ofset ${offset}';
	@override String get makeHost => 'Tashkilotchi qilish';
	@override String get makeHostQuestion => 'Tashkilotchi oʻtkazilsinmi?';
	@override String makeHostConfirm({required Object name}) => '${name} ijroni boshqaradi va seansni hamma uchun olib boradi.';
	@override String get transfer => 'Oʻtkazish';
	@override String get removeParticipant => 'Xonadan olib tashlash';
	@override String removeParticipantQuestion({required Object name}) => '${name} olib tashlansinmi?';
	@override String removeParticipantConfirm({required Object name}) => '${name} xonani tark etadi. Xonani qulflamaguningizcha ular kod bilan yana qoʻshilishlari mumkin.';
	@override String get remove => 'O\'chirish';
	@override String get roomSettings => 'Xona sozlamalari';
	@override String get letEveryoneControl => 'Ijroni hammaga boshqarishga ruxsat bering';
	@override String get lockRoom => 'Qulf xonasi';
	@override String get lockRoomDescription => 'Hech kim yangi qo\'shila olmaydi';
	@override String get leaveRoom => 'Xonani tark eting';
	@override String get leaveRoomQuestion => 'Xonadan chiqasizmi?';
	@override String get leaveRoomConfirm => 'Xona kodi bilan yana qoʻshilishingiz mumkin.';
	@override String get leave => 'Chiqish';
	@override String get endRoom => 'Yakuniy xona';
	@override String get endRoomQuestion => 'Yakuniy xonami?';
	@override String get endRoomConfirm => 'Bu hamma uchun xonani tugatadi.';
	@override String get end => 'Yakunlash';
	@override String get playBlockedTitle => 'Ijro boshlanmadi';
	@override String get playBlockedDescription => 'Xona bilan tomosha qilishni boshlash uchun oʻynash tugmasini bosing.';
	@override late final _Translations$watchTogether$notices$uz notices = _Translations$watchTogether$notices$uz._(_root);
	@override late final _Translations$watchTogether$ended$uz ended = _Translations$watchTogether$ended$uz._(_root);
	@override late final _Translations$watchTogether$errors$uz errors = _Translations$watchTogether$errors$uz._(_root);
	@override String untitledEpisode({required Object number}) => 'Qism ${number}';
}

// Path: downloads
class _Translations$downloads$uz extends Translations$downloads$en {
	_Translations$downloads$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yuklamalar';
	@override String get manage => 'Boshqarish';
	@override String get tvShows => 'TV Shoular';
	@override String get movies => 'Filmlar';
	@override String get music => 'Musiqa';
	@override String tracksQueued({required Object count}) => '${count} tarona yuklash navbatiga qoʻshildi';
	@override String get noDownloads => 'Hali yuklamalar yoʻq';
	@override String get noDownloadsDescription => 'Yuklangan fayllar oflayn koʻrish uchun bu yerda koʻrinadi';
	@override String get downloadNow => 'Yuklab olish';
	@override String get deleteDownload => 'Yuklamani oʻchirish';
	@override String get retryDownload => 'Yuklashni qaytadan urinish';
	@override String get downloadQueued => 'Yuklash navbatga qoʻyildi';
	@override String get downloadResumed => 'Yuklash davom ettirildi';
	@override String get serverErrorBitrate => 'Server xatoligi: fayl tezlik cheklovidan oshgan boʻlishi mumkin';
	@override String get storageFull => 'Boʻsh xotirani saqlash uchun yuklashlar toʻxtatildi. Joy boʻshating yoki boshqa yuklash joyini tanlang, soʻng qayta urinib koʻring.';
	@override String get storageUnavailable => 'Boʻsh xotirani tekshirib boʻlmagani uchun yuklamalar toʻxtatildi. Yuklash joyini tekshirib, qaytadan urinib koʻring.';
	@override String episodesQueued({required Object count}) => '${count} qism yuklash navbatiga qoʻshildi';
	@override String get downloadDeleted => 'Yuklama oʻchirildi';
	@override String deleteConfirm({required Object title}) => '"${title}" ushbu qurilmadan oʻchirilsinmi?';
	@override String get deleteCollectionDownloads => 'Yuklab olishlarni o\'chirish';
	@override String deleteCollectionDownloadsConfirm({required Object title}) => '“${title}” faylidagi har bir yuklab olish ushbu qurilmadan oʻchirilsinmi?';
	@override String get collectionDownloadsDeleted => 'Yuklashlar oʻchirildi';
	@override String get cancelledDownloadTitle => 'Toʻxtatilgan yuklama';
	@override String get cancelledDownloadMessage => 'Ushbu yuklash bekor qilindi. Nima qilmoqchisiz?';
	@override String get allEpisodesAlreadyDownloaded => 'Barcha qismlar avvaldan yuklab olingan';
	@override String get resumeDownload => 'Yuklashni davom ettirish';
	@override String get cancelledDownload => 'Toʻxtatilgan yuklama';
	@override String syncingFile({required Object file, required Object status}) => '${file} (${status} sinxronlanmoqda)';
	@override String downloadedFileClickToComplete({required Object file}) => 'Yuklab olindi ${file} - Yakunlash uchun bosing';
	@override String get partialDownloadClickToComplete => 'Qisman yuklandi - Yakunlash uchun bosing';
	@override String get deleting => 'Oʻchirilmoqda...';
	@override String deletingWithProgress({required Object title, required Object current, required Object total}) => '${title} oʻchirilmoqda... (${current} / ${total})';
	@override String get queuedTooltip => 'Navbatda';
	@override String queuedFilesTooltip({required Object files}) => 'Navbatdagi fayllar: ${files}';
	@override String get downloadingTooltip => 'Yuklanmoqda...';
	@override String downloadingFilesTooltip({required Object files}) => 'Yuklanayotgan fayllar: ${files}';
	@override String get noDownloadsTree => 'Yuklamalar yoʻq';
	@override String get pauseAll => 'Barchasini toʻxtatib turish';
	@override String get resumeAll => 'Barchasini davom ettirish';
	@override String get retryAll => 'Hammasini qayta urinib ko\'ring';
	@override String get retryFailed => 'Muvaffaqiyatsiz yuklab olishlarni qaytadan urinish';
	@override String get deleteAll => 'Barchasini oʻchirish';
	@override String get selectVersion => 'Versiyani tanlash';
	@override String get allEpisodes => 'Barcha qismlar';
	@override String get unwatchedOnly => 'Faqat koʻrilmaganlar';
	@override String nextNUnwatched({required Object count}) => 'Keyingi ${count} koʻrilmagan';
	@override String get customAmount => 'Boshqa miqdor...';
	@override String get includeSpecials => 'Maxsus qismlarni qoʻshish';
	@override String get howManyEpisodes => 'Nechta qism?';
	@override String get invalidEpisodeCount => 'Toʻgʻri qismlar sonini kiriting.';
	@override String get keepSynced => 'Sinxronlangan holatda ushlash';
	@override String get downloadOnce => 'Bir marta yuklab olish';
	@override String keepNUnwatched({required Object count}) => '${count} koʻrilmagan qismni saqlash';
	@override String get editSyncRule => 'Sinxronlash qoidasini tahrirlash';
	@override String get removeSyncRule => 'Sinxronlash qoidasini oʻchirish';
	@override String removeSyncRuleConfirm({required Object title}) => '"${title}" sinxronlashi toʻxtatilsinmi? Yuklab olingan qismlar saqlanadi.';
	@override String removeListSyncRuleConfirm({required Object title}) => '"${title}" sinxronlashi toʻxtatilsinmi?';
	@override String get deleteSyncRuleDownloads => 'Bogʻliq yuklamalar ham oʻchirilsin';
	@override String get deleteSyncRuleDownloadsDescription => 'Boshqa sinxronlash qoidasi yoki profil ishlatayotgan yuklamalar saqlanadi.';
	@override String syncRuleCreated({required Object count}) => 'Sinxronlash qoidasi yaratildi — ${count} koʻrilmagan qism saqlanadi';
	@override String get syncRuleUpdated => 'Sinxronlash qoidasi yangilandi';
	@override String get syncRuleRemoved => 'Sinxronlash qoidasi oʻchirildi';
	@override String get syncRuleAndDownloadsRemoved => 'Sinxronlash qoidasi va bogʻliq yuklamalar oʻchirildi';
	@override String get syncRuleCleanupBusy => 'Sinxronlash qoidalari hozir yangilanmoqda. Bir ozdan soʻng qayta urinib koʻring.';
	@override String get syncRuleCleanupUnavailable => 'Bogʻliq yuklamalarni xavfsiz aniqlab boʻlmadi. Serverga qayta ulanib koʻring yoki yuklamalarni oʻchirmasdan qoidani olib tashlang.';
	@override String syncedNewEpisodes({required Object title, required Object count}) => '${title} uchun ${count} yangi qism sinxronlandi';
	@override String get activeSyncRules => 'Faol sinxronlash qoidalari';
	@override String get noSyncRules => 'Sinxronlash qoidalari yoʻq';
	@override String get manageSyncRule => 'Sinxronlashni boshqarish';
	@override String get editEpisodeCount => 'Qismlar soni';
	@override String get editSyncFilter => 'Sinxronlash filtri';
	@override String get syncAllItems => 'Barcha elementlar sinxronlanadi';
	@override String get syncUnwatchedItems => 'Koʻrilmagan elementlar sinxronlanadi';
	@override String syncRuleServerContext({required Object server, required Object status}) => 'Server: ${server} • ${status}';
	@override String get syncRuleAvailable => 'Mavjud';
	@override String get syncRuleOffline => 'Oflayn';
	@override String get syncRuleSignInRequired => 'Kirish talab etiladi';
	@override String get syncRuleAccessDenied => 'Kirish rad etildi';
	@override String get syncRuleNotAvailableForProfile => 'Joriy profil uchun mavjud emas';
	@override String get syncRuleUnknownServer => 'Nomaʼlum server';
	@override String get syncRuleListCreated => 'Sinxronlash qoidasi yaratildi';
	@override late final _Translations$downloads$backgroundWarning$uz backgroundWarning = _Translations$downloads$backgroundWarning$uz._(_root);
	@override String get options => 'Yuklamalar parametrlari';
	@override late final _Translations$downloads$groupings$uz groupings = _Translations$downloads$groupings$uz._(_root);
	@override String get unknownLibrary => 'Nomaʼlum kutubxona';
	@override String get unknownShow => 'Nomaʼlum serial';
	@override String get unknownSeason => 'Nomaʼlum mavsum';
	@override String get unknownAlbum => 'Nomaʼlum albom';
	@override String completedOfTotal({required Object completed, required Object total}) => '${completed}/${total} ta yakunlandi';
	@override String get errorFileNotFound => 'Fayl topilmadi (404)';
	@override String get errorDownloadNotAllowed => 'Server yuklab olishga ruxsat bermaydi (403)';
	@override String get errorDownloadFailed => 'Yuklab boʻlmadi';
	@override String errorDownloadFailedWithReason({required Object reason}) => 'Yuklab boʻlmadi: ${reason}';
	@override String errorHttpStatus({required Object status}) => 'Yuklab boʻlmadi (HTTP ${status})';
	@override String errorPostProcessing({required Object reason}) => 'Keyingi ishlov berishda xatolik: ${reason}';
	@override String get reasonFileNotSaved => 'faylni ushbu qurilmada saqlab boʻlmadi';
	@override String get reasonCannotResume => 'qisman yuklab olishni davom ettirib boʻlmadi';
	@override String get reasonDeviceStorageFull => 'ushbu qurilmada xotira qolmadi';
	@override String get notificationDownloading => 'Yuklanmoqda...';
	@override String get notificationComplete => 'Yuklash tugallandi';
	@override String get notificationPaused => 'Yuklash toʻxtatib turildi';
}

// Path: shaders
class _Translations$shaders$uz extends Translations$shaders$en {
	_Translations$shaders$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sheyderlar';
	@override String get noShaderDescription => 'Video yaxshilash oʻchirilgan';
	@override String get nvscalerDescription => 'Aniqroq video uchun NVIDIA masshtabi';
	@override String get artcnnVariantNeutral => 'Neytral';
	@override String get artcnnVariantDenoise => 'Shovqinni kamaytirish';
	@override String get artcnnVariantDenoiseSharpen => 'Shovqinni kamaytirish + Aniqlik';
	@override String get qualityFast => 'Tezkor';
	@override String get qualityHQ => 'Yuqori sifat';
	@override String get mode => 'Rejim';
	@override String get importShader => 'Sheyderni import qilish';
	@override String get customShaderDescription => 'Maxsus GLSL sheyderi';
	@override String get shaderImported => 'Sheyder import qilindi';
	@override String get shaderImportFailed => 'Sheyderni import qilib boʻlmadi';
	@override String get deleteShader => 'Sheyderni oʻchirish';
	@override String deleteShaderConfirm({required Object name}) => '"${name}" oʻchirilsinmi?';
}

// Path: companionRemote
class _Translations$companionRemote$uz extends Translations$companionRemote$en {
	_Translations$companionRemote$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yordamchi pult';
	@override String connectedTo({required Object name}) => '${name} qurilmasiga ulandi';
	@override String get unknownDevice => 'Nomaʼlum qurilma';
	@override late final _Translations$companionRemote$session$uz session = _Translations$companionRemote$session$uz._(_root);
	@override late final _Translations$companionRemote$pairing$uz pairing = _Translations$companionRemote$pairing$uz._(_root);
	@override late final _Translations$companionRemote$remote$uz remote = _Translations$companionRemote$remote$uz._(_root);
	@override late final _Translations$companionRemote$errors$uz errors = _Translations$companionRemote$errors$uz._(_root);
	@override String get closedBeforeAuth => 'Ulanish autentifikatsiyadan oldin yopildi';
}

// Path: videoSettings
class _Translations$videoSettings$uz extends Translations$videoSettings$en {
	_Translations$videoSettings$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get playbackSpeed => 'Ijro tezligi';
	@override String get normalSpeed => 'Normal';
	@override String sleepTimerActive({required Object duration}) => 'Faol (${duration})';
	@override String get zoom => 'Masshtab';
	@override String get sleepTimer => 'Uyqu taymeri';
	@override String get audioSync => 'Audio sinxronlash';
	@override String get subtitleSync => 'Subtitr sinxronlash';
	@override String get hdr => 'HDR';
	@override String get hdrUnsupported => 'Bu yerda HDR mavjud emas — ish stoli kompozitori yoki video chiqishi uni uzata olmaydi.';
	@override String get hdrToneMapping => 'HDR tonlarini moslashtirish';
	@override String get hdrToneMappingCompositor => 'Kompozitor';
	@override String get hdrToneMappingCompositorDescription => 'Manbaning HDR metamaʼlumotlarini oʻzgarishsiz uzatib, ularni moslashtirishni ish stoli kompozitoriga topshirish.';
	@override String get hdrToneMappingPlayer => 'Pleyer';
	@override String get hdrToneMappingPlayerDescription => 'Pleyerda displeyning eng yuqori yorqinligiga moslashtirib, soʻng natijani kompozitorga bildirish.';
	@override String get hdrToneMappingFailed => 'HDR tonlarini moslashtirishni oʻzgartirib boʻlmadi — avvalgi rejim hali ham faol.';
	@override String get audioOutput => 'Audio chiqishi';
	@override String get performanceOverlay => 'Unumdorlik paneli';
	@override String get audioOutputDolbyAtmos => 'Dolby Atmos';
	@override String get audioOutputDolbyAudio => 'Dolby Audio';
	@override String get audioOutputSurround => 'Surround';
	@override String get audioOutputSpatial => 'Fazoviy audio';
	@override String get audioOutputStereo => 'Stereo';
	@override String get audioNormalization => 'Ovoz balandligini meʼyorlashtirish';
	@override String get audioNormalizationDisablesPassthrough => 'Ovozni PCM-ga dekodlaydi; bu yoqilganda toʻgʻridan-toʻgʻri oʻtkazish oʻchiriladi';
}

// Path: performanceOverlay
class _Translations$performanceOverlay$uz extends Translations$performanceOverlay$en {
	_Translations$performanceOverlay$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get color => 'Rang';
	@override String get performance => 'Unumdorlik';
	@override String get buffer => 'Bufer';
	@override String get app => 'Ilova';
	@override String get decoder => 'Dekoder';
	@override String get rawDecoder => 'Ishlov berilmagan dekoder';
	@override String get tunneling => 'Tunnellash';
	@override String get passthrough => 'Toʻgʻridan-toʻgʻri oʻtkazish';
	@override String get aspect => 'Nisbat';
	@override String get rotation => 'Aylanish';
	@override String get dvSource => 'DV manbasi';
	@override String get dvPath => 'DV yoʻli';
	@override String get dvRouteDecoder => 'Dolby Vision dekoderi';
	@override String get dvRouteDecoderP81 => 'Dolby Vision dekoderi (P7→8.1)';
	@override String get dvRouteBaseLayer => 'Asosiy qatlam';
	@override String get dvRouteBaseLayerHdr10 => 'HDR10 asosiy qatlam';
	@override String get dvRouteBaseLayerHlg => 'HLG asosiy qatlami';
	@override String get dvRouteBaseLayerSdr => 'SDR asosiy qatlami';
	@override String get dvRouteReshaped => 'RPU shakli o\'zgartirildi (gpu-keyingi)';
	@override String get p7Conversion => 'P7 oʻtkazmasi';
	@override String get sampleRate => 'Diskretlash chastotasi';
	@override String get pixelFormat => 'Piksel formati';
	@override String get hwFormat => 'HW formati';
	@override String get matrix => 'Matritsa';
	@override String get primaries => 'Asosiy ranglar';
	@override String get transfer => 'Uzatish';
	@override String get renderFps => 'Render FPS';
	@override String get displayFps => 'Displey FPS';
	@override String get avSync => 'A/V sinxronlash';
	@override String get dropped => 'Tushirib qoldirilgan kadrlar';
	@override String get dvRpus => 'DV RPU-lar';
	@override String get dvRpuAverage => 'DV RPU Oʻrt.';
	@override String get dvSampleAverage => 'DV Namuna Oʻrt.';
	@override String get maxLuma => 'Maks Luma';
	@override String get minLuma => 'Min Luma';
	@override String get maxCll => 'MaxCLL';
	@override String get maxFall => 'MaxFALL';
	@override String get cacheUsed => 'Foydalanilgan kesh';
	@override String get cacheLimit => 'Kesh chegarasi';
	@override String get speed => 'Tezlik';
	@override String get player => 'Pleyer';
	@override String get memory => 'Xotira';
	@override String get uiFps => 'Interfeys (UI) FPS';
	@override String get fps => 'FPS';
	@override String get decoderAndroidHw => 'Android HW';
	@override String get decoderNvidiaHw => 'NVIDIA HW';
	@override String get decoderQualcommHw => 'Qualcomm HW';
	@override String get decoderMediatekHw => 'MediaTek HW';
	@override String get decoderExynosHw => 'Exynos HW';
	@override String get decoderSoftware => 'Dasturiy';
	@override String get decoderHardware => 'Apparat';
	@override String get tunnelingActive => 'Faol';
	@override String dvRpuFailed({required Object converted, required Object failures}) => '${converted} (${failures} ta muvaffaqiyatsiz)';
}

// Path: externalPlayer
class _Translations$externalPlayer$uz extends Translations$externalPlayer$en {
	_Translations$externalPlayer$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tashqi pleyer';
	@override String get useExternalPlayer => 'Tashqi pleyerdan foydalanish';
	@override String get useExternalPlayerDescription => 'Videolarni boshqa ilovada ochish';
	@override String get selectPlayer => 'Pleyerni tanlash';
	@override String get customPlayers => 'Maxsus pleyerlar';
	@override String get systemDefault => 'Tizim standarti';
	@override String get addCustomPlayer => 'Maxsus pleyer qoʻshish';
	@override String get playerName => 'Pleyer nomi';
	@override String get playerNameHint => 'Mening pleyerim';
	@override String get playerCommand => 'Buyruq';
	@override String get playerPackage => 'Paket nomi';
	@override String get playerUrlScheme => 'URL sxemasi';
	@override String get off => 'Oʻchirilgan';
	@override String get launchFailed => 'Tashqi pleyerni ishga tushirib boʻlmadi';
	@override String appNotInstalled({required Object name}) => '${name} oʻrnatilmagan';
	@override String get playInExternalPlayer => 'Tashqi pleyerda ijro etish';
}

// Path: metadataEdit
class _Translations$metadataEdit$uz extends Translations$metadataEdit$en {
	_Translations$metadataEdit$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get editMetadata => 'Tahrirlash...';
	@override String get screenTitle => 'Metamaʼlumotlarni tahrirlash';
	@override String get basicInfo => 'Asosiy maʼlumotlar';
	@override String get artwork => 'Rasmlar/Posterlar';
	@override String get advancedSettings => 'Kengaytirilgan sozlamalar';
	@override String get title => 'Nomi';
	@override String get sortTitle => 'Saralash nomi';
	@override String get originalTitle => 'Asl nomi';
	@override String get releaseDate => 'Chiqqan sanasi';
	@override String get contentRating => 'Kontent reytingi';
	@override String get studio => 'Studiya';
	@override String get tagline => 'Shior/Slogan';
	@override String get summary => 'Tavsif/Qisqacha';
	@override String get poster => 'Afisha';
	@override String get background => 'Fon';
	@override String get logo => 'Logotip';
	@override String get squareArt => 'Kvadrat rasm';
	@override String get selectPoster => 'Posterni tanlash';
	@override String get selectBackground => 'Fonni tanlash';
	@override String get selectLogo => 'Logotipni tanlash';
	@override String get selectSquareArt => 'Kvadrat rasm tanlash';
	@override String get fromUrl => 'URL orqali';
	@override String get uploadFile => 'Fayl yuklash';
	@override String get enterImageUrl => 'Rasm URL-manzilini kiriting';
	@override String get imageUrl => 'Rasm URL-manzili';
	@override String get metadataUpdated => 'Metamaʼlumotlar yangilandi';
	@override String get metadataUpdateFailed => 'Metamaʼlumotlarni yangilab boʻlmadi';
	@override String get artworkUpdated => 'Rasmlar yangilandi';
	@override String get artworkUpdateFailed => 'Rasmlarni yangilab boʻlmadi';
	@override String get noArtworkAvailable => 'Rasm mavjud emas';
	@override String artworkOption({required Object index}) => 'Rasm opsiyasi ${index}';
	@override String selectedArtworkOption({required Object index}) => 'Rasm opsiyasi ${index}, tanlandi';
	@override String get notSet => 'Oʻrnatilmagan';
	@override String get libraryDefault => 'Kutubxona standarti';
	@override String get accountDefault => 'Hisob standarti';
	@override String get seriesDefault => 'Serial standarti';
	@override String get episodeSorting => 'Qismlarni saralash';
	@override String get oldestFirst => 'Avval eskilar';
	@override String get newestFirst => 'Avval yangilar';
	@override String get keep => 'Saqlash';
	@override String get allEpisodes => 'Barcha qismlar';
	@override String latestEpisodes({required Object count}) => 'Soʻnggi ${count} qism';
	@override String get latestEpisode => 'Soʻnggi qism';
	@override String episodesAddedPastDays({required Object count}) => 'Soʻnggi ${count} kunda qoʻshilgan qismlar';
	@override String get deleteAfterPlaying => 'Ijro etgandan keyin oʻchirish';
	@override String get never => 'Hech qachon';
	@override String get afterADay => 'Bir kundan keyin';
	@override String get afterAWeek => 'Bir haftadan keyin';
	@override String get afterAMonth => 'Bir oydan keyin';
	@override String get onNextRefresh => 'Keyingi yangilanishda';
	@override String get seasons => 'Mavsumlar';
	@override String get show => 'Koʻrsatish';
	@override String get hide => 'Yashirish';
	@override String get episodeOrdering => 'Qismlar tartibi';
	@override String get tmdbAiring => 'The Movie Database (Efir)';
	@override String get tvdbAiring => 'TheTVDB (Efir)';
	@override String get tvdbAbsolute => 'TheTVDB (Absolyut)';
	@override String get metadataLanguage => 'Metamaʼlumotlar tili';
	@override String get useOriginalTitle => 'Asl nomidan foydalanish';
	@override String get preferredAudioLanguage => 'Afzal koʻrilgan audio tili';
	@override String get preferredSubtitleLanguage => 'Afzal koʻrilgan subtitr tili';
	@override String get subtitleMode => 'Avtomatik subtitr tanlash rejimi';
	@override String get manuallySelected => 'Qoʻlda tanlangan';
	@override String get shownWithForeignAudio => 'Chet el audiosi bilan koʻrsatiladi';
	@override String get alwaysEnabled => 'Har doim yoqilgan';
	@override String get tags => 'Teglar';
	@override String get addTag => 'Teg qoʻshish';
	@override String get genre => 'Janr';
	@override String get director => 'Rejissyor';
	@override String get writer => 'Ssenarist';
	@override String get producer => 'Prodyuser';
	@override String get country => 'Mamlakat';
	@override String get collection => 'Toʻplam';
	@override String get label => 'Yorliq';
	@override String get quickTag => 'Tezkor teg...';
}

// Path: matchScreen
class _Translations$matchScreen$uz extends Translations$matchScreen$en {
	_Translations$matchScreen$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get match => 'Moslashtirish...';
	@override String get fixMatch => 'Moslikni tuzatish...';
	@override String get unmatch => 'Moslikni oʻchirish';
	@override String get unmatchConfirm => 'Ushbu moslik oʻchirilsinmi? Qayta moslashtirilgunga qadar Plex uni moslashtirilmagan deb hisoblaydi.';
	@override String get unmatchSuccess => 'Moslik oʻchirildi';
	@override String get unmatchFailed => 'Moslikni oʻchirib boʻlmadi';
	@override String get matchApplied => 'Moslik qoʻllanildi';
	@override String get matchFailed => 'Moslikni qoʻllab boʻlmadi';
	@override String get titleHint => 'Nomi';
	@override String get yearHint => 'Yil';
	@override String get search => 'Qidiruv';
	@override String get noMatchesFound => 'Mosliklar topilmadi';
}

// Path: serverTasks
class _Translations$serverTasks$uz extends Translations$serverTasks$en {
	_Translations$serverTasks$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Server vazifalari';
	@override String get failedToLoad => 'Vazifalarni yuklab boʻlmadi';
	@override String get noTasks => 'Bajarilayotgan vazifalar yoʻq';
}

// Path: trakt
class _Translations$trakt$uz extends Translations$trakt$en {
	_Translations$trakt$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Trakt';
	@override String get connected => 'Ulandi';
	@override String connectedAs({required Object username}) => '@${username} sifatida ulandi';
	@override String get disconnectConfirm => 'Trakt uzilsinmi?';
	@override String get disconnectConfirmBody => 'Luroka Trakt-ga maʼlumot yuborishni toʻxtatadi.';
	@override String get scrobble => 'Real vaqt rejimida kuzatish';
	@override String get scrobbleDescription => 'Ijro paytida Trakt-ga maʼlumot yuborish.';
	@override String get watchedSync => 'Koʻrish holatini sinxronlash';
	@override String get watchedSyncDescription => 'Luroka-da belgilanganda Trakt-da ham belgilanadi.';
}

// Path: seerr
class _Translations$seerr$uz extends Translations$seerr$en {
	_Translations$seerr$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Seerr';
	@override String get connectTitle => 'Seerr ulash';
	@override String get serverUrl => 'Server URL-i';
	@override String get serverUrlHelper => 'Seerr manzilingiz';
	@override String get checkServer => 'Davom ettirish';
	@override String get signInWithJellyfin => 'Jellyfin orqali kirish';
	@override String get signInWithEmby => 'Emby orqali kirish';
	@override String get signInWithLocal => 'Mahalliy hisobdan foydalanish';
	@override String get email => 'Elektron pochta';
	@override String get noSignInMethods => 'Ushbu Seerr qoʻllab-quvvatlanadigan kirish usulini taklif qilmaydi.';
	@override String get instance => 'Instansiya';
	@override String get disconnectConfirm => 'Seerr uzilsinmi?';
	@override String get disconnectConfirmBody => 'Luroka ushbu Seerr nusxasini unutadi. Istalgan vaqtda qayta ulanishingiz mumkin.';
	@override String get request => 'Soʻrov yuborish';
	@override String get request4k => '4K soʻrov yuborish';
	@override String get seasons => 'Mavsumlar';
	@override String get allSeasons => 'Barcha mavsumlar';
	@override String get advancedOptions => 'Kengaytirilgan';
	@override String get destinationServer => 'Moʻljal server';
	@override String get qualityProfile => 'Sifat profili';
	@override String get rootFolder => 'Asosiy jild';
	@override String get languageProfile => 'Til profili';
	@override String get tags => 'Yorliqlar';
	@override String get noTags => 'Yorliqlar yoʻq';
	@override String defaultOption({required Object name}) => '${name} (Standart)';
	@override String get animeNote => 'Bu serial anime.';
	@override String get requestSubmitted => 'Soʻrov yuborildi';
	@override String requestFailed({required Object error}) => 'Soʻrov xatoligi: ${error}';
	@override String get requestsLoadFailed => 'Parametrlarni yuklab boʻlmadi';
	@override String get nothingToRequest => 'Barchasi avvaldan bor yoki soʻralgan.';
	@override String get statusAvailable => 'Mavjud';
	@override String get statusPartiallyAvailable => 'Qisman mavjud';
	@override String get statusRequested => 'Soʻraldi';
	@override String get statusProcessing => 'Ishlanmoqda';
	@override String get statusBlocklisted => 'Bloklangan roʻyxatda';
	@override String couldNotReach({required Object url, required Object error}) => '${url} manziliga ulanib boʻlmadi: ${error}';
	@override String noInstanceAtUrl({required Object url, required Object status}) => '${url} manzilida Seerr nusxasi yoʻq (HTTP ${status})';
	@override String get behindAuthProxy => 'Seerr oʻrniga autentifikatsiya qiluvchi teskari proksi (SSO yoki HTTP auth) javob berdi. Luroka uning orqali kira olmaydi: ushbu ilova uchun Seerrning /api/v1 yoʻli proksini aylanib oʻtishiga ruxsat bering yoki Seerrga toʻgʻridan-toʻgʻri yetadigan manzildan foydalaning.';
	@override String get invalidUrl => 'Server manzilini kiriting, masalan: https://seerr.example.com';
	@override String get quickConnectUnsupported => 'Bu Seerr nusxasi Tezkor ulanishni qoʻllab-quvvatlamaydi. Buning uchun Seerr 3.4 yoki undan yangi versiya kerak.';
	@override String get notInitialized => 'Bu Seerr nusxasining dastlabki sozlamasi yakunlanmagan';
	@override String get noPlexTokenForReauth => 'Qayta kirish uchun Plex tokeni mavjud emas';
	@override String get noStoredCredentials => 'Qayta kirish uchun saqlangan kirish maʼlumotlari mavjud emas';
	@override String get signInRejected => 'Kirish rad etildi';
	@override String get noSessionCookie => 'Seerr seans cookie-faylini bermadi';
	@override String get freshCookieRejected => 'Seerr yangi seans cookie-faylini rad etdi';
	@override String get noUserInformation => 'Seerr foydalanuvchi maʼlumotlarini qaytarmadi';
	@override String get sessionRejectedAfterReauth => 'Qayta kirilgandan keyin seans rad etildi';
	@override String get permissionDenied => 'Seerr bu amalni rad etdi: hisobingizda endi kerakli ruxsat yoʻq';
	@override String get permissionRevoked => 'Buni soʻrash uchun endi ruxsatingiz yoʻq';
}

// Path: services
class _Translations$services$uz extends Translations$services$en {
	_Translations$services$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Xizmatlar';
	@override String get hubSubtitle => 'Koʻrish jarayonini sinxronlang va yangi kontent soʻrang.';
	@override String get discoverySection => 'Kashf qilish va so‘rovlar';
	@override String get trackingSection => 'Ko‘rishni kuzatish va ro‘yxatlar';
	@override String get seerrDescription => 'Seerr serveringizdan film va seriallarni topib, so‘rov yuboring.';
	@override String get tmdbDescription => 'Film va seriallar, posterlar, baholar va tafsilotlarni toping.';
	@override String get traktDescription => 'Film va seriallarni kuzating, ko‘rilgan holatini sinxronlang va tomosha ro‘yxatini boshqaring.';
	@override String get malDescription => 'Anime ro‘yxati va ko‘rish jarayonini sinxron holatda saqlang.';
	@override String get anilistDescription => 'Animelarni kuzating va ko‘rish jarayonini AniList bilan sinxronlang.';
	@override String get simklDescription => 'Film, serial va animelarni Simkl orqali kuzating.';
	@override String get mdblistDescription => 'MDBList ro‘yxatlari va film baholarini ulang.';
	@override String connectionIntro({required Object service}) => '${service} xizmatini joriy Luroka profilingizga ulang. Bu ulanish va uning parametrlarini istalgan vaqtda shu yerda boshqarishingiz mumkin.';
	@override String connectService({required Object service}) => '${service} xizmatini ulash';
	@override String get seerrConnectDescription => 'Luroka orqali film va seriallarni topish va so‘rov yuborish uchun Seerr serveringizni ulang.';
	@override String get seerrServerStep => 'Seerr’ni ochishda foydalanadigan manzilni kiriting. Serveringiz qaysi kirish usullarini qo‘llashini tekshiramiz.';
	@override String get seerrSignInStep => 'Serveringiz qo‘llaydigan kirish usulini tanlang.';
	@override String get integrations => 'Integratsiyalar';
	@override String get notConnected => 'Ulanmagan';
	@override String connectedAs({required Object username}) => '@${username} sifatida ulandi';
	@override String get scrobble => 'Jarayonni avtomatik kuzatish';
	@override String get scrobbleDescription => 'Epizod yoki filmni tugatganingizda roʻyxatingizni yangilash.';
	@override String disconnectConfirm({required Object service}) => '${service} uzilsinmi?';
	@override String disconnectConfirmBody({required Object service}) => 'Luroka ${service} yangilashni toʻxtatadi. Istalgan vaqtda qayta ulanishingiz mumkin.';
	@override String connectFailed({required Object service}) => '${service} ulana olmadi. Qaytadan urinib koʻring.';
	@override late final _Translations$services$names$uz names = _Translations$services$names$uz._(_root);
	@override late final _Translations$services$simklReconnect$uz simklReconnect = _Translations$services$simklReconnect$uz._(_root);
	@override late final _Translations$services$deviceCode$uz deviceCode = _Translations$services$deviceCode$uz._(_root);
	@override late final _Translations$services$oauthProxy$uz oauthProxy = _Translations$services$oauthProxy$uz._(_root);
	@override late final _Translations$services$pendingAuth$uz pendingAuth = _Translations$services$pendingAuth$uz._(_root);
	@override late final _Translations$services$libraryFilter$uz libraryFilter = _Translations$services$libraryFilter$uz._(_root);
}

// Path: addServer
class _Translations$addServer$uz extends Translations$addServer$en {
	_Translations$addServer$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String addMediaBrowserTitle({required Object product}) => '${product} serverini qoʻshish';
	@override String get serverUrls => 'Server URL-lari';
	@override String get serverUrlsHelper => 'Vergul bilan ajratilgan bir nechta URL manziliga ruxsat beriladi.';
	@override String get findServer => 'Serverni topish';
	@override String searchingLocalMediaBrowserServers({required Object product}) => 'Mahalliy ${product} serverlari qidirilmoqda...';
	@override String localMediaBrowserServers({required Object product}) => 'Mahalliy ${product} serverlari';
	@override String get username => 'Foydalanuvchi nomi';
	@override String get password => 'Parol';
	@override String get signIn => 'Kirish';
	@override String get change => 'Oʻzgartirish';
	@override String get required => 'Talab qilinadi';
	@override String couldNotReachServer({required Object error}) => 'Serverga ulanib boʻlmadi: ${error}';
	@override String signInFailed({required Object error}) => 'Kirish xatoligi: ${error}';
	@override String quickConnectFailed({required Object error}) => 'Tezkor ulanish xatoligi: ${error}';
	@override String get addPlexTitle => 'Plex orqali kirish';
	@override String get pinExpired => 'PIN kod vaqti tugadi.';
	@override String failedToRegisterAccount({required Object error}) => 'Hisobni roʻyxatdan oʻtkazishda xatolik: ${error}';
	@override String enterMediaBrowserUrlError({required Object product}) => '${product} server URL-ini kiriting';
	@override String get addConnectionTitle => 'Ulanish qoʻshish';
	@override String addConnectionTitleScoped({required Object name}) => '${name} profiliga qoʻshish';
	@override String get signInWithPlexCard => 'Plex orqali kirish';
	@override String get signInWithPlexCardSubtitle => 'Ushbu qurilmani avtorizatsiya qiling. Ulashilgan serverlar qoʻshiladi.';
	@override String get signInWithPlexCardSubtitleScoped => 'Plex hisobini avtorizatsiya qiling. Bosh sahifa foydalanuvchilari profillarga aylanadi.';
	@override String connectToMediaBrowserCard({required Object product}) => '${product}ga ulanish';
	@override String get connectToMediaBrowserCardSubtitle => 'Server URL-ini, foydalanuvchi nomini va parolni kiriting.';
	@override String connectToMediaBrowserCardSubtitleScoped({required Object product, required Object name}) => '${product} serveringizga kiring. ${name} profiliga bogʻlanadi.';
	@override String get borrowFromAnotherProfile => 'Boshqa profildan olish';
	@override String get borrowFromAnotherProfileSubtitle => 'Boshqa profilning ulanishidan qayta foydalaning.';
	@override String get invalidCredentials => 'Foydalanuvchi nomi yoki parol notoʻgʻri';
	@override String get authResponseNotJson => 'Autentifikatsiya javobi yaroqli JSON emas';
	@override String get authResponseIncomplete => 'Serverdan kelgan kirish javobi toʻliq emas';
	@override String get quickConnectRejected => 'Quick Connect server tomonidan rad etildi';
	@override String get quickConnectNotJson => 'Quick Connect javobi yaroqli JSON emas';
	@override String get quickConnectMissingFields => 'Quick Connect javobida kod yoki maxfiy kalit yoʻq';
	@override String get quickConnectPollRejected => 'Quick Connect soʻrovi server tomonidan rad etildi';
	@override String get serverTimedOut => 'Server oʻz vaqtida javob bermadi';
	@override String get responseNotJson => 'Server javobi yaroqli JSON emas';
	@override String responseMissingIdentity({required Object product}) => 'Javobda ID yoki server nomi yoʻq — bu ${product} serverimi?';
	@override String probeFailed({required Object error}) => 'Serverga ulanib boʻlmadi: ${error}';
	@override String enterAtLeastOneUrl({required Object product}) => 'Kamida bitta ${product} server URL-ini kiriting';
	@override String noReachableServer({required Object product}) => 'Ulanish mumkin boʻlgan ${product} serveri topilmadi';
	@override String urlsPointToDifferentServers({required Object product}) => 'Bu URL-lar turli ${product} serverlariga olib boradi';
	@override String urlDoesNotMatchServer({required Object product}) => 'Bu URL ${product} serveriga mos kelmaydi';
	@override String get redirectUnsupported => 'Server qoʻllab-quvvatlanmaydigan URL-ga yoʻnaltirdi';
	@override String redirectDifferentHost({required Object product}) => 'Server boshqa xostga yoʻnaltirdi. Yakuniy ${product} URL-ini bevosita kiriting.';
	@override String get redirectInsecure => 'Server HTTPS manzilidan xavfsiz boʻlmagan URL-ga yoʻnaltirdi';
	@override String redirectUnsupportedEnterFinal({required Object product}) => 'Server qoʻllab-quvvatlanmaydigan URL-ga yoʻnaltirdi. Yakuniy ${product} URL-ini bevosita kiriting.';
}

// Path: appIcon.names
class _Translations$appIcon$names$uz extends Translations$appIcon$names$en {
	_Translations$appIcon$names$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get midnight => 'Yarim tun';
	@override String get ember => 'Ember';
	@override String get paper => 'Qog\'oz';
	@override String get oled => 'OLED';
	@override String get line => 'Chiziq';
	@override String get ocean => 'Okean';
	@override String get ultraviolet => 'Ultraviyole';
	@override String get matcha => 'Matcha';
	@override String get sunset => 'Quyosh botishi';
	@override String get gold => 'Oltin';
	@override String get titanium => 'Titan';
	@override String get glass => 'Shisha';
	@override String get crt => 'CRT';
	@override String get vhs => 'VHS';
	@override String get synthwave => 'Synthwave';
	@override String get pixel => 'Piksel';
	@override String get neon => 'Neon';
	@override String get sticker => 'Stiker';
	@override String get ticket => 'Chipta';
	@override String get pop => 'Pop';
	@override String get strata => 'Qatlamlar';
	@override String get facet => 'Faset';
	@override String get tilde => 'Tilde';
}

// Path: common.ratingSource
class _Translations$common$ratingSource$uz extends Translations$common$ratingSource$en {
	_Translations$common$ratingSource$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get critic => 'Tanqidchilar';
	@override String get audience => 'Tomoshabinlar';
	@override String get imdb => 'IMDb';
	@override String get tmdb => 'TMDB';
	@override String get rottenTomatoes => 'Rotten Tomatoes';
	@override String get simkl => 'Simkl';
	@override String get mal => 'MyAnimeList';
	@override String get anilist => 'AniList';
	@override String get trakt => 'Trakt';
	@override String get rottenTomatoesCritic => 'Rotten Tomatoes tanqidchilari';
	@override String get rottenTomatoesAudience => 'Rotten Tomatoes tomoshabinlari';
	@override String get metacritic => 'Metacritic';
	@override String get letterboxd => 'Letterboxd';
}

// Path: common.mediaKind
class _Translations$common$mediaKind$uz extends Translations$common$mediaKind$en {
	_Translations$common$mediaKind$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get movie => 'Film';
	@override String get show => 'Serial';
	@override String get season => 'Fasl';
	@override String get episode => 'Epizod';
	@override String get artist => 'Ijrochi';
	@override String get album => 'Albom';
	@override String get track => 'Trek';
	@override String get collection => 'Toʻplam';
	@override String get playlist => 'Pleylist';
	@override String get clip => 'Klip';
	@override String get photo => 'Foto';
	@override String get folder => 'Papka';
}

// Path: supporter.errors
class _Translations$supporter$errors$uz extends Translations$supporter$errors$en {
	_Translations$supporter$errors$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get storeUnavailable => 'Xaridlar mavjud emas. Doʻkonga kirganingizni va bu qurilmada xaridlarga ruxsat berilganligini tekshiring.';
	@override String get productNotFound => 'Qo‘llab-quvvatlovchi xaridi hozirda do‘koningizda mavjud emas.';
	@override String get productQueryFailed => 'Narxni yuklab bo‘lmadi. Ulanishingizni tekshiring va qaytadan urining.';
	@override String get purchaseFailed => 'Xarid amalga oshmadi. Qayta urinib ko\'ring.';
	@override String get restoreFailed => 'Xaridingizni tiklash uchun doʻkonga etib boʻlmadi. Qayta urinib ko\'ring.';
	@override String get nothingToRestore => 'Bu doʻkon hisobi uchun hech qanday qoʻllab-quvvatlovchi xaridi topilmadi.';
}

// Path: themeEditor.slots
class _Translations$themeEditor$slots$uz extends Translations$themeEditor$slots$en {
	_Translations$themeEditor$slots$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get bg => 'Fon';
	@override String get surface => 'Yuzaki';
	@override String get outline => 'Kontur';
	@override String get text => 'Matn';
	@override String get textMuted => 'Ikkilamchi matn';
	@override String get accent => 'Urg\'u';
}

// Path: themeEditor.contrast
class _Translations$themeEditor$contrast$uz extends Translations$themeEditor$contrast$en {
	_Translations$themeEditor$contrast$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get textOnBg => 'Fonda matn';
	@override String get textOnSurface => 'Matn yuzasida';
	@override String get textMutedOnBg => 'Fonda ikkinchi darajali matn';
	@override String get textMutedOnSurface => 'Sirtdagi ikkinchi darajali matn';
	@override String get accentOnBg => 'Fonda aksent';
	@override String get accentOnSurface => 'Sirtdagi urg\'u';
	@override String get labelOnAccent => 'Urg\'udagi tugma yorlig\'i';
}

// Path: hotkeys.actions
class _Translations$hotkeys$actions$uz extends Translations$hotkeys$actions$en {
	_Translations$hotkeys$actions$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get playPause => 'Ijro/Pauza';
	@override String get volumeUp => 'Ovozni balandlatish';
	@override String get volumeDown => 'Ovozni pastlatish';
	@override String seekForward({required Object seconds}) => 'Oldinga oʻtkazish (${seconds}son)';
	@override String seekBackward({required Object seconds}) => 'Orqaga oʻtkazish (${seconds}son)';
	@override String get fullscreenToggle => 'Toʻliq ekranga oʻtish/chiqish';
	@override String get muteToggle => 'Ovozni oʻchirish/yoqish';
	@override String get subtitleToggle => 'Subtitrni yoqish/oʻchirish';
	@override String get audioTrackNext => 'Keyingi audio yoʻlak';
	@override String get subtitleTrackNext => 'Keyingi subtitr yoʻlagi';
	@override String get chapterNext => 'Keyingi boʻlim';
	@override String get chapterPrevious => 'Oldingi boʻlim';
	@override String get episodeNext => 'Keyingi qism';
	@override String get episodePrevious => 'Oldingi qism';
	@override String get speedIncrease => 'Tezlikni oshirish';
	@override String get speedDecrease => 'Tezlikni kamaytirish';
	@override String get speedReset => 'Tezlikni qayta oʻrnatish';
	@override String get zoomIn => 'Yaqinlashtirish';
	@override String get zoomOut => 'Uzoqlashtirish';
	@override String get zoomReset => 'Masshtabni qayta oʻrnatish';
	@override String get subSeekNext => 'Keyingi subtitrga oʻtish';
	@override String get subSeekPrev => 'Oldingi subtitrga oʻtish';
	@override String get shaderToggle => 'Sheyderlarni yoqish/oʻchirish';
	@override String get skipMarker => 'Intro/Titrlarni oʻtkazib yuborish';
	@override String get screenshot => 'Ekran tasvirini olish';
}

// Path: videoControls.pipErrors
class _Translations$videoControls$pipErrors$uz extends Translations$videoControls$pipErrors$en {
	_Translations$videoControls$pipErrors$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get androidVersion => 'Android 8.0 yoki undan yangisi talab qilinadi';
	@override String get iosVersion => 'iOS 15.0 yoki undan yangisi talab qilinadi';
	@override String get permissionDisabled => 'PiP rejimi oʻchirilgan. Tizim sozlamalaridan yoqing.';
	@override String get notSupported => 'Qurilma PiP rejimini qoʻllab-quvvatlamaydi';
	@override String get voSwitchFailed => 'PiP uchun video chiqishini almashtirib boʻlmadi';
	@override String get failed => 'PiP rejimini ishga tushirishda xatolik';
	@override String get prepareFailed => 'PiP rejimini tayyorlab boʻlmadi';
	@override String unknown({required Object error}) => 'Xatolik yuz berdi: ${error}';
}

// Path: accountPreferences.groups
class _Translations$accountPreferences$groups$uz extends Translations$accountPreferences$groups$en {
	_Translations$accountPreferences$groups$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get audioAndSubtitles => 'Audio va subtitrlar';
	@override String get libraryDisplay => 'Kutubxona';
	@override String get personalMedia => 'Shaxsiy media';
}

// Path: accountPreferences.subtitleModes
class _Translations$accountPreferences$subtitleModes$uz extends Translations$accountPreferences$subtitleModes$en {
	_Translations$accountPreferences$subtitleModes$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get none => 'Qoʻlda tanlangan';
	@override String get noneDescription => 'Subtitrni hech qachon oʻzi yoqmaydi.';
	@override String get defaultMode => 'Trek bayroqlariga amal qilish';
	@override String get defaultModeDescription => 'Har bir subtitr trekida saqlangan standart va majburiy bayroqlardan foydalanish.';
	@override String get always => 'Har doim yoqilgan';
	@override String get alwaysDescription => 'Mavjud boʻlganda afzal koʻrilgan tildagi subtitr treki yoqiladi.';
	@override String get onlyForced => 'Faqat majburiy subtitrlar';
	@override String get onlyForcedDescription => 'Faqat majburiy deb belgilangan treklar yuklanadi.';
	@override String get smart => 'Chet el audiosi bilan koʻrsatiladi';
	@override String get smartDescription => 'Subtitr faqat audio boshqa tilda boʻlganda yoqiladi.';
}

// Path: accountPreferences.subtitleAccessibilityOptions
class _Translations$accountPreferences$subtitleAccessibilityOptions$uz extends Translations$accountPreferences$subtitleAccessibilityOptions$en {
	_Translations$accountPreferences$subtitleAccessibilityOptions$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get preferNonSdh => 'SDH boʻlmagan subtitrlarga ustunlik berish';
	@override String get preferSdh => 'SDH subtitrlarga ustunlik berish';
	@override String get onlySdh => 'Faqat SDH subtitrlar';
	@override String get onlyNonSdh => 'Faqat SDH boʻlmagan subtitrlar';
}

// Path: accountPreferences.forcedSubtitleOptions
class _Translations$accountPreferences$forcedSubtitleOptions$uz extends Translations$accountPreferences$forcedSubtitleOptions$en {
	_Translations$accountPreferences$forcedSubtitleOptions$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get preferNonForced => 'Majburiy boʻlmagan subtitrlarga ustunlik berish';
	@override String get preferForced => 'Majburiy subtitrlarga ustunlik berish';
	@override String get onlyForced => 'Faqat majburiy subtitrlar';
	@override String get onlyNonForced => 'Faqat majburiy boʻlmagan subtitrlar';
}

// Path: accountPreferences.watchedIndicatorOptions
class _Translations$accountPreferences$watchedIndicatorOptions$uz extends Translations$accountPreferences$watchedIndicatorOptions$en {
	_Translations$accountPreferences$watchedIndicatorOptions$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get none => 'Hech qachon';
	@override String get moviesAndShows => 'Filmlar va seriallar';
	@override String get movies => 'Faqat filmlar';
	@override String get shows => 'Faqat seriallar';
}

// Path: accountPreferences.mediaReviewsOptions
class _Translations$accountPreferences$mediaReviewsOptions$uz extends Translations$accountPreferences$mediaReviewsOptions$en {
	_Translations$accountPreferences$mediaReviewsOptions$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get usersAndCritics => 'Foydalanuvchilar va tanqidchilar';
	@override String get usersOnly => 'Faqat foydalanuvchilar';
	@override String get criticsOnly => 'Faqat tanqidchilar';
	@override String get nobody => 'Yashirilgan';
}

// Path: discover.person
class _Translations$discover$person$uz extends Translations$discover$person$en {
	_Translations$discover$person$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get born => 'Tug\'ilgan';
	@override String get died => 'O\'lgan';
	@override String get birthplace => 'Tug\'ilgan joyi';
	@override String dateWithAge({required Object date, required Object age}) => '${date} (yoshi ${age})';
	@override String dateWithAgeAtDeath({required Object date, required Object age}) => '${date} (yoshi ${age})';
}

// Path: libraries.tabs
class _Translations$libraries$tabs$uz extends Translations$libraries$tabs$en {
	_Translations$libraries$tabs$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get recommended => 'Tavsiya etilganlar';
	@override String get browse => 'Koʻrib chiqish';
	@override String get collections => 'Toʻplamlar';
	@override String get playlists => 'Ijro roʻyxatlari';
}

// Path: libraries.groupings
class _Translations$libraries$groupings$uz extends Translations$libraries$groupings$en {
	_Translations$libraries$groupings$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Guruhlash';
	@override String get all => 'Barchasi';
	@override String get movies => 'Filmlar';
	@override String get shows => 'TV Shoular';
	@override String get seasons => 'Mavsumlar';
	@override String get episodes => 'Qismlar';
	@override String get artists => 'Ijrochilar';
	@override String get albums => 'Albomlar';
	@override String get tracks => 'Taronalar';
	@override String get folders => 'Jildlar';
}

// Path: libraries.filterCategories
class _Translations$libraries$filterCategories$uz extends Translations$libraries$filterCategories$en {
	_Translations$libraries$filterCategories$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get genre => 'Janr';
	@override String get year => 'Yil';
	@override String get contentRating => 'Kontent reytingi';
	@override String get tag => 'Teg';
	@override String get unwatched => 'Koʻrilmagan';
	@override String get unplayed => 'Eshitilmagan';
	@override String get favorites => 'Tanlanganlar';
	@override String get filePath => 'Fayl yo\'li';
}

// Path: libraries.sortLabels
class _Translations$libraries$sortLabels$uz extends Translations$libraries$sortLabels$en {
	_Translations$libraries$sortLabels$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nomi';
	@override String get dateAdded => 'Qoʻshilgan sanasi';
	@override String get releaseDate => 'Chıqqan sanasi';
	@override String get rating => 'Reyting';
	@override String get communityRating => 'Hamjamiyat reytingi';
	@override String get criticRating => 'Muntaqidlar reytingi';
	@override String get userRating => 'Foydalanuvchi reytingi';
	@override String get datePlayed => 'Ijro etilgan sanasi';
	@override String get playCount => 'Ijrolar soni';
	@override String get productionYear => 'Ishlab chiqarilgan yili';
	@override String get runtime => 'Davomiyligi';
	@override String get officialRating => 'Rasmiy reyting';
	@override String get premiereDate => 'Premyera sanasi';
	@override String get startDate => 'Boshlangan sanasi';
	@override String get airTime => 'Efir vaqti';
	@override String get studio => 'Studiya';
	@override String get random => 'Tasodifiy';
	@override String get dateShared => 'Ulashilgan sanasi';
	@override String get latestEpisodeAirDate => 'Soʻnggi qism chiqqan sana';
	@override String get lastEpisodeDateAdded => 'Soʻnggi qoʻshilgan qism sanasi';
	@override String get dateDownloaded => 'Yuklab olingan sanasi';
	@override String get size => 'Hajmi';
	@override String get library => 'Kutubxona';
}

// Path: libraries.advancedFilters
class _Translations$libraries$advancedFilters$uz extends Translations$libraries$advancedFilters$en {
	_Translations$libraries$advancedFilters$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get include => 'O\'z ichiga oladi';
	@override String get exclude => 'Cheklash';
	@override String get any => 'Har qanday';
	@override String get yes => 'Ha';
	@override String get no => 'Yo\'q';
	@override String not({required Object value}) => '${value} emas';
	@override String valueCount({required Object count}) => '${count} tanlandi';
	@override String valueCountExcluded({required Object count}) => '${count} chiqarib tashlandi';
	@override String get searchValues => 'Qidiruv qiymatlari';
	@override String get noValues => 'Hech qanday qiymat yo\'q';
	@override String get matchContains => 'Tarkibida';
	@override String get matchNotContains => 'Tarkibi yo\'q';
	@override String get matchIs => 'Bu';
	@override String get matchIsNot => 'Yo\'q';
	@override String get matchBeginsWith => 'bilan boshlanadi';
	@override String get matchEndsWith => 'bilan tugaydi';
	@override String get textHint => 'Moslash uchun yozing';
	@override String get from => 'Kimdan';
	@override String get to => 'Kimga';
	@override String range({required Object from, required Object to}) => '${from} dan ${to}gacha';
	@override String atLeast({required Object value}) => '${value} va undan yuqori';
	@override String atMost({required Object value}) => '${value} gacha';
	@override String dateLastDays({required Object count}) => 'Oxirgi ${count} kunlar';
	@override String get dateLastYear => 'O\'tgan yil';
	@override String dateOlderThanDays({required Object count}) => '${count} kundan eski';
	@override String get dateOlderThanYear => 'Bir yoshdan katta';
}

// Path: explore.rows
class _Translations$explore$rows$uz extends Translations$explore$rows$en {
	_Translations$explore$rows$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get watchlist => 'Tomosha roʻyxati';
	@override String get recommendedMovies => 'Tavsiya etilgan filmlar';
	@override String get recommendedShows => 'Tavsiya etilgan seriallar';
	@override String get trendingMovies => 'Ommabop filmlar';
	@override String get trendingShows => 'Ommabop seriallar';
	@override String get popularMovies => 'Mashhur filmlar';
	@override String get popularShows => 'Mashhur seriallar';
	@override String get trendingAnime => 'Ommabop anime';
	@override String get suggestedAnime => 'Tavsiya etilgan anime';
	@override String get airingAnime => 'Efirga uzatilayotgan eng yaxshi anime';
	@override String get popularAnime => 'Eng mashhur anime';
	@override String get trending => 'Ommaboplar';
	@override String get upcomingMovies => 'Kutilayotgan filmlar';
	@override String get upcomingShows => 'Kutilayotgan seriallar';
}

// Path: explore.status
class _Translations$explore$status$uz extends Translations$explore$status$en {
	_Translations$explore$status$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get airing => 'Efirda';
	@override String get ended => 'Tugallandi';
	@override String get canceled => 'Bekor qilindi';
	@override String get upcoming => 'Kutilmoqda';
}

// Path: explore.badge
class _Translations$explore$badge$uz extends Translations$explore$badge$en {
	_Translations$explore$badge$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String rankPopular({required Object n}) => '#${n} mashhur';
	@override String rankAiring({required Object n}) => '#${n} efirda';
	@override String rankRated({required Object n}) => '#${n} baholangan';
	@override String rankTrending({required Object n}) => '#${n} ommabop';
	@override String rankSeasonal({required Object n, required Object season}) => '#${n} ${season} mavsumida';
	@override String watchingNow({required Object n}) => '${n} kishi tomosha qilmoqda';
	@override String get available => 'Mavjud';
	@override String get partiallyAvailable => 'Qisman mavjud';
	@override String get availableIn4k => '4K mavjud';
	@override String get requested => 'Soʻralgan';
	@override String get pendingApproval => 'Tasdiq kutilmoqda';
	@override String get processing => 'Ishlanmoqda';
	@override String get declined => 'Rad etilgan';
	@override String get requestFailed => 'Soʻrov amalga oshmadi';
	@override String get requested4k => '4K soʻralgan';
	@override String seasonsAvailable({required Object available, required Object total}) => '${available}/${total} mavsum';
	@override String nextEpisodeIn({required Object episode, required Object duration}) => '${episode}-qism ${duration} ichida';
	@override String nextAiringIn({required Object duration}) => 'Keyingisi ${duration} ichida';
	@override String episodesShort({required Object n}) => '${n} qism';
	@override String minutesPerEpisode({required Object n}) => '${n} daq/qism';
	@override String get adult => '18+';
}

// Path: explore.stats
class _Translations$explore$stats$uz extends Translations$explore$stats$en {
	_Translations$explore$stats$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String listed({required Object n}) => '${n} roʻyxatda';
	@override String viewersDay({required Object n}) => 'Bugun ${n} kishi tomosha qildi';
	@override String viewersWeek({required Object n}) => 'Bu hafta ${n} kishi tomosha qildi';
	@override String viewersMonth({required Object n}) => 'Bu oy ${n} kishi tomosha qildi';
	@override String viewersYear({required Object n}) => 'Bu yil ${n} kishi tomosha qildi';
	@override String viewersAllTime({required Object n}) => '${n} kishi tomosha qilgan';
	@override String planning({required Object n}) => '${n} kishi tomosha qilishni rejalashtirmoqda';
	@override String favorited({required Object n}) => '${n} ta tanlangan';
	@override String dropRate({required Object percent}) => '${percent} tomosha qilishni toʻxtatgan';
	@override String comments({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uz'))(n,
		one: '${n} ta izoh',
		other: '${n} ta izoh',
	);
	@override String votes({required Object n}) => '${n} ta ovoz';
	@override String watching({required Object n}) => '${n} kishi tomosha qilmoqda';
	@override String completed({required Object n}) => '${n} kishi yakunlagan';
	@override String onHold({required Object n}) => '${n} kishi toʻxtatib turibdi';
	@override String dropped({required Object n}) => '${n} kishi toʻxtatgan';
}

// Path: explore.season
class _Translations$explore$season$uz extends Translations$explore$season$en {
	_Translations$explore$season$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get winter => 'Qish';
	@override String get spring => 'Bahor';
	@override String get summer => 'Yoz';
	@override String get fall => 'Kuz';
	@override String withYear({required Object season, required Object year}) => '${season} ${year}';
}

// Path: explore.format
class _Translations$explore$format$uz extends Translations$explore$format$en {
	_Translations$explore$format$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get tv => 'TV';
	@override String get tvShort => 'Qisqa TV';
	@override String get movie => 'Film';
	@override String get special => 'Maxsus';
	@override String get ova => 'OVA';
	@override String get ona => 'ONA';
	@override String get music => 'Musiqa';
	@override String get other => 'Boshqa';
}

// Path: explore.sourceMaterial
class _Translations$explore$sourceMaterial$uz extends Translations$explore$sourceMaterial$en {
	_Translations$explore$sourceMaterial$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get original => 'Asl';
	@override String get manga => 'Manga';
	@override String get lightNovel => 'Light novel';
	@override String get novel => 'Roman';
	@override String get visualNovel => 'Visual novel';
	@override String get game => 'Oʻyin';
	@override String get webComic => 'Veb-komiks';
	@override String get musicRelease => 'Musiqa';
	@override String get otherMedia => 'Boshqa';
}

// Path: explore.creditRole
class _Translations$explore$creditRole$uz extends Translations$explore$creditRole$en {
	_Translations$explore$creditRole$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get actor => 'Aktyor';
	@override String get director => 'Rejissyor';
	@override String get writer => 'Ssenarist';
	@override String get producer => 'Prodyuser';
	@override String get creator => 'Muallif';
	@override String get composer => 'Bastakor';
}

// Path: explore.relation
class _Translations$explore$relation$uz extends Translations$explore$relation$en {
	_Translations$explore$relation$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get prequel => 'Prikvel';
	@override String get sequel => 'Sikvel';
	@override String get sideStory => 'Yon hikoya';
	@override String get spinOff => 'Spin-off';
	@override String get alternativeVersion => 'Muqobil versiya';
	@override String get summary => 'Xulosa';
	@override String get parentStory => 'Asosiy hikoya';
	@override String get adaptation => 'Adaptatsiya';
	@override String get other => 'Bogʻliq';
}

// Path: explore.detail
class _Translations$explore$detail$uz extends Translations$explore$detail$en {
	_Translations$explore$detail$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get originalTitle => 'Asl nomi';
	@override String get alsoKnownAs => 'Boshqa nomi bilan ham tanilgan';
	@override String get studios => 'Studiyalar';
	@override String get country => 'Mamlakat';
	@override String get language => 'Til';
	@override String get released => 'Chiqarilgan';
	@override String get physicalRelease => 'Diskda';
	@override String get ended => 'Yakunlangan';
	@override String addedOn({required Object date}) => '${date} da qoʻshilgan';
	@override String get yourRating => 'Sizning bahoyingiz';
	@override String get budget => 'Byudjet';
	@override String get revenue => 'Kassa yigʻimi';
	@override String get contentAdvisory => 'Yosh cheklovi';
	@override String get tags => 'Teglar';
	@override String get revealSpoilerTags => 'Spoyler teglarini koʻrsatish';
	@override String get links => 'Havolalar';
	@override String get watchOn => 'Tomosha qilish';
	@override String get watchTrailer => 'Treylerni koʻrish';
	@override String openOn({required Object site}) => '${site} da ochish';
	@override String get crew => 'Jamoa';
	@override String get ratings => 'Baholar';
	@override String get schedule => 'Jadval';
	@override String recommendedByUsers({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uz'))(n,
		one: '${n} foydalanuvchi tavsiya qilgan',
		other: '${n} foydalanuvchi tavsiya qilgan',
	);
	@override String recommendedBy({required Object who}) => '${who} tavsiya qilgan';
	@override String favoritedBy({required Object who}) => '${who} tanlanganlarga qoʻshgan';
	@override String unairedEpisodes({required Object n}) => '${n} hali efirga chiqmagan';
	@override String recommendedByPercent({required Object percent}) => 'Tomoshabinlarning ${percent} tavsiya qilgan';
	@override String get relatedTitles => 'Bogʻliq nomlar';
	@override String get background => 'Orqa fon';
}

// Path: liveTv.recordSettings
class _Translations$liveTv$recordSettings$uz extends Translations$liveTv$recordSettings$en {
	_Translations$liveTv$recordSettings$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get startEarly => 'Erta boshlash (soniya)';
	@override String get endLate => 'Kech tugatish (soniya)';
	@override String get newOnly => 'Faqat yangi epizodlar';
	@override String get anyChannel => 'Istalgan kanaldan yozib olish';
	@override String get anyTime => 'Istalgan vaqtda yozib olish';
	@override String get skipInLibrary => 'Kutubxonada mavjud epizodlarni oʻtkazib yuborish';
	@override String get keepUpTo => 'Saqlanadigan epizodlar';
	@override String get keepUpToHint => '0 barcha epizodlarni saqlaydi';
}

// Path: music.discography
class _Translations$music$discography$uz extends Translations$music$discography$en {
	_Translations$music$discography$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get singlesAndEps => 'Singllar va EP';
	@override String get live => 'Jonli';
	@override String get compilations => 'Toʻplamlar';
}

// Path: watchTogether.notices
class _Translations$watchTogether$notices$uz extends Translations$watchTogether$notices$en {
	_Translations$watchTogether$notices$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String pressedPlay({required Object name}) => '${name} bosilgan ijro';
	@override String get playbackStarted => 'Ijro boshlandi';
	@override String paused({required Object name}) => '${name} toʻxtatdi';
	@override String get playbackPaused => 'Ijro to‘xtatildi';
	@override String jumpedTo({required Object name, required Object position}) => '${name} ${position} ga o\'tdi';
	@override String roomJumpedTo({required Object position}) => '${position} ga oʻtildi';
	@override String changedSpeed({required Object name, required Object speed}) => '${name} tezlikni ${speed} ga oʻrnatdi';
	@override String speedChanged({required Object speed}) => 'Tezlik ${speed} ga sozlangan';
	@override String startedMedia({required Object name, required Object title}) => '${name} ${title} ishga tushirildi';
	@override String mediaStarted({required Object title}) => 'Hozir ${title} oʻynalmoqda';
	@override String stoppedMedia({required Object name}) => '${name} videoni to‘xtatdi';
	@override String get mediaStopped => 'Video toʻxtadi';
	@override String waitingFor({required Object name}) => '${name} kutilmoqda...';
	@override String get waitingForSomeone => 'Kimdir yetib olishini kutmoqda...';
	@override String get finished => 'Tugallandi';
	@override String hostChangedTo({required Object name}) => '${name} endi tashkilotchi';
	@override String get youAreNowHost => 'Endi tashkilotchi sizsiz';
	@override String joined({required Object name}) => '${name} qoʻshildi';
	@override String left({required Object name}) => '${name} chiqdi';
	@override String get controlRefused => 'Faqat uy egasi ijroni boshqarishi mumkin';
	@override String get searchFailed => 'Baʼzi serverlarda xonaning videosini qidirib boʻlmadi';
	@override String get playBlocked => 'Boshlash uchun o\'ynash tugmasini bosing';
	@override String get shareFailed => 'Bu videoni xonaga ulashib bo‘lmadi';
	@override String get notShared => 'Yuklab olingan videolar xonaga ulashilmaydi';
	@override String get openFailed => 'Xonadagi videoni ochib bo‘lmadi';
}

// Path: watchTogether.ended
class _Translations$watchTogether$ended$uz extends Translations$watchTogether$ended$en {
	_Translations$watchTogether$ended$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get ended => 'Uy egasi xonani tugatdi';
	@override String get kicked => 'Siz xonadan chiqarildingiz';
	@override String get expired => 'Xona muddati tugadi';
	@override String get replaced => 'Bu xonaga boshqa qurilmada qo‘shildingiz';
	@override String get lost => 'Xona bilan aloqa uzildi';
}

// Path: watchTogether.errors
class _Translations$watchTogether$errors$uz extends Translations$watchTogether$errors$en {
	_Translations$watchTogether$errors$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get invalidCode => 'Bu xona kodi emas. Kodlar 0, 1, I, L yoki O bo\'lmagan 6 ta harf va raqamdan iborat.';
	@override String get roomNotFound => 'Hech bir xonada bunday kod yo\'q. Bu tugagan bo\'lishi mumkin.';
	@override String get roomFull => 'Bu xona to\'la.';
	@override String get roomLocked => 'Uy egasi xonani qulflab qo\'ydi.';
	@override String get relayFull => 'Birga tomosha qiling hozir band. Keyinroq qayta urinib ko‘ring.';
	@override String get unreachable => 'Birgalikda tomosha qilish estafetasiga etib bo‘lmadi. Ulanishingizni tekshiring.';
	@override String get rateLimited => 'Juda koʻp urinishlar. Bir oz kutib turing va qayta urinib ko\'ring.';
	@override String get clientBlocked => 'Luroka ning ushbu versiyasi releydan foydalana olmaydi. Ilovani yangilang.';
	@override String get forbidden => 'Buni faqat uy egasi qila oladi.';
	@override String get notInRoom => 'Siz xonada emassiz.';
	@override String get alreadyInRoom => 'Siz allaqachon xonadasiz.';
	@override String get resumeFailed => 'Xonaga qayta qo‘shilib bo‘lmadi.';
	@override String get unsupported => 'Rele buni qo\'llab-quvvatlamaydi.';
	@override String get generic => 'Nimadir xato ketdi. Qayta urinib ko\'ring.';
}

// Path: downloads.backgroundWarning
class _Translations$downloads$backgroundWarning$uz extends Translations$downloads$backgroundWarning$en {
	_Translations$downloads$backgroundWarning$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get bannerBlocked => 'Ilovadan chiqqaningizda yuklamalar toʻxtaydi';
	@override String get bannerDegraded => 'Fondagi yuklamalar cheklangan boʻlishi mumkin';
	@override String get bannerAction => 'Batafsil';
	@override String get sheetTitle => 'Fondagi yuklamalar bloklangan';
	@override String get sheetTitleDegraded => 'Fondagi yuklamalar cheklangan boʻlishi mumkin';
	@override String get sheetIntro => 'Android Luroka-ning fonda ishonchli yuklab olishiga toʻsqinlik qilmoqda.';
	@override String get sheetIntroDegraded => 'Qurilmangiz Luroka fonda qachon yuklay olishini cheklamoqda.';
	@override String get reasonBackgroundRestricted => 'Luroka-ning fondagi faoliyati cheklangan. Batareya yoki fondagi foydalanishni "Cheklanmagan" qilib belgilang.';
	@override String get reasonStandbyRestricted => 'Android Luroka-ni cheklangan kutish holatiga oʻtkazdi. Batareya foydalanishini "Cheklanmagan" qilib belgilang.';
	@override String get reasonDownloadChannelBlocked => 'Yuklash bildirishnomalari oʻchirilgan, shuning uchun jarayon koʻrsatkichi va boshqaruv elementlari mavjud boʻlmasligi mumkin.';
	@override String get reasonNotificationsDisabled => 'Bildirishnomalar oʻchirilgan. Android 13 va undan yangi versiyalarda uzoq davom etadigan fondagi yuklamalar uchun ular talab qilinadi.';
	@override String get reasonDataSaver => 'Trafik tejash yoqilgan, bu mobil internetda fondagi yuklamalarni bloklaydi. Wi-Fi orqali yuklamalar ishlashi kerak.';
	@override String get reasonOemUnknown => 'Luroka fonda boʻlganida yuklamalar bir necha marta toʻxtadi. Luroka-ning batareya yoki fondagi foydalanish sozlamalarini tekshiring.';
	@override String get openSettings => 'Sozlamalarni ochish';
	@override String get stillNotWorking => 'Qurilmaga oid yordam';
	@override String get stillNotWorkingDescription => 'Qurilmangiz uchun qadamlarni koʻring yoki muammo davom etsa Sozlamalar › Jurnallarni koʻrish boʻlimidan jurnal yuboring.';
	@override String get dialogTitle => 'Yuklamalar tugamasligi mumkin';
	@override String get dialogDownloadAnyway => 'Baribir yuklash';
	@override String get dialogFixFirst => 'Avval buni tuzatish';
	@override String get statusTile => 'Fondagi yuklamalar';
	@override String get statusOk => 'Fonda ishlashga ruxsat berilgan';
	@override String get statusBlocked => 'Tizim sozlamalari tomonidan bloklangan';
	@override String get statusDegraded => 'Tizim sozlamalari tomonidan cheklangan';
	@override String get statusUnknown => 'Hali tekshirilmagan';
	@override String get settingsUnavailable => 'Bu qurilmada tizim sozlamalarini ochib boʻlmadi';
	@override String get linkUnavailable => 'Bu qurilmada dontkillmyapp.com-ni ochib boʻlmadi';
}

// Path: downloads.groupings
class _Translations$downloads$groupings$uz extends Translations$downloads$groupings$en {
	_Translations$downloads$groupings$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get library => 'Kutubxona';
	@override String get collections => 'To\'plamlar';
}

// Path: companionRemote.session
class _Translations$companionRemote$session$uz extends Translations$companionRemote$session$en {
	_Translations$companionRemote$session$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get startingServer => 'Pult serveri ishga tushmoqda...';
	@override String get hostAddress => 'Xost manzili';
	@override String get connected => 'Ulandi';
	@override String get serverRunning => 'Server faol';
	@override String get serverStopped => 'Server toʻxtatildi';
	@override String get serverRunningDescription => 'Tarmoqdagi mobil qurilmalar ulanishi mumkin';
	@override String get serverStoppedDescription => 'Ulanishga ruxsat berish uchun serverni ishga tushiring';
	@override String get usePhoneToControl => 'Ushbu ilovani boshqarish uchun telefoningizdan foydalaning';
	@override String get startServer => 'Serverni ishga tushirish';
	@override String get stopServer => 'Serverni toʻxtatish';
	@override String get minimize => 'Yigʻish';
	@override String get manualAddressHint => 'Qoʻlda ulanish manzili:';
}

// Path: companionRemote.pairing
class _Translations$companionRemote$pairing$uz extends Translations$companionRemote$pairing$en {
	_Translations$companionRemote$pairing$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get discoveryDescription => 'Bir xil Plex hisobidagi Luroka qurilmalari bu yerda koʻrinadi';
	@override String get hostAddressHint => '192.168.1.100:48632';
	@override String get connecting => 'Ulanilmoqda...';
	@override String get searchingForDevices => 'Qurilmalar qidirilmoqda...';
	@override String get noDevicesFound => 'Tarmoqda qurilmalar topilmadi';
	@override String get noDevicesHint => 'Kompyuterda Luroka-ni oching va bir xil Wi-Fi-ga ulaning';
	@override String get availableDevices => 'Mavjud qurilmalar';
	@override String get manualConnection => 'Qoʻlda ulanish';
	@override String get cryptoInitFailed => 'Xavfsiz ulanish xatoligi. Avval Plex-ga kiring.';
	@override String get validationHostRequired => 'Xost manzilini kiriting';
	@override String get validationHostFormat => 'Format IP:port koʻrinishida boʻlishi kerak';
	@override String get connectionTimedOut => 'Ulanish vaqti tugadi. Ikkala qurilmada ham bir xil tarmoqdan foydalaning.';
	@override String get sessionNotFound => 'Qurilma topilmadi. Luroka xost qurilmada ishga tushirilganiga ishonch hosil qiling.';
	@override String get authFailed => 'Autentifikatsiya xatoligi.';
	@override String failedToConnect({required Object error}) => 'Ulanib boʻlmadi: ${error}';
}

// Path: companionRemote.remote
class _Translations$companionRemote$remote$uz extends Translations$companionRemote$remote$en {
	_Translations$companionRemote$remote$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get disconnectConfirm => 'Pult seansidan uzilasizmi?';
	@override String get reconnecting => 'Qayta ulanilmoqda...';
	@override String attemptOf({required Object current}) => 'Urinish ${current} / 5';
	@override String get retryNow => 'Hozir qaytadan urinib koʻrish';
	@override String get tabRemote => 'Pult';
	@override String get tabPlay => 'Ijro';
	@override String get tabMore => 'Koʻproq';
	@override String get menu => 'Menyu';
	@override String get tabNavigation => 'Navigatsiya';
	@override String get tabDiscover => 'Kashf qilish';
	@override String get tabLibraries => 'Kutubxonalar';
	@override String get tabSearch => 'Qidiruv';
	@override String get tabDownloads => 'Yuklamalar';
	@override String get tabSettings => 'Sozlamalar';
	@override String get previous => 'Oldingi';
	@override String get playPause => 'Ijro/Pauza';
	@override String get next => 'Keyingi';
	@override String get seekBack => 'Orqaga oʻtkazish';
	@override String get stop => 'Toʻxtatish';
	@override String get seekForward => 'Oldinga oʻtkazish';
	@override String get volume => 'Ovoz';
	@override String get volumeDown => 'Kamaytirish';
	@override String get volumeUp => 'Oshirish';
	@override String get fullscreen => 'Toʻliq ekran';
	@override String get subtitles => 'Subtitrlar';
	@override String get audio => 'Ovoz';
	@override String get searchHint => 'Kompyuterda qidirish...';
}

// Path: companionRemote.errors
class _Translations$companionRemote$errors$uz extends Translations$companionRemote$errors$en {
	_Translations$companionRemote$errors$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get noNetworkInterface => 'Tarmoq interfeysi topilmadi';
	@override String get authenticationFailed => 'Autentifikatsiya xatoligi';
	@override String serverStartFailed({required Object error}) => 'Serverni ishga tushirishda xatolik: ${error}';
	@override String commandFailed({required Object error}) => 'Buyruqni yuborishda xatolik: ${error}';
	@override String get joinTimedOut => 'Ulanish vaqti tugadi';
	@override String get failedToConnectAnyAddress => 'Hech bir manzilga ulanib boʻlmadi';
	@override String connectionLostAfterAttempts({required Object attempts}) => '${attempts} urinishdan keyin aloqa uzildi';
	@override String get connectionLost => 'Aloqa uzildi';
}

// Path: services.names
class _Translations$services$names$uz extends Translations$services$names$en {
	_Translations$services$names$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get mal => 'MyAnimeList';
	@override String get anilist => 'AniList';
	@override String get simkl => 'Simkl';
	@override String get seerr => 'Seerr';
	@override String get mdblist => 'MDBList';
}

// Path: services.simklReconnect
class _Translations$services$simklReconnect$uz extends Translations$services$simklReconnect$en {
	_Translations$services$simklReconnect$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Simkl ni qayta ulang';
	@override String get subtitle => 'Simkl ushbu ulanishdan foydalanadigan kirish usulini bekor qilmoqda. Qayta ulanish simkl.com saytini Lurokani tasdiqlash uchun ochadi — Luroka hech qachon parolingizni ko‘rmaydi. Tomosha tarixingiz Simkl da qoladi.';
}

// Path: services.deviceCode
class _Translations$services$deviceCode$uz extends Translations$services$deviceCode$en {
	_Translations$services$deviceCode$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String title({required Object service}) => 'Luroka-ni ${service} xizmatida faollashtiring';
	@override String get instructions => 'QR-kodni skanerlang yoki quyidagi manzilga oʻtib, bu kodni kiriting:';
	@override String openToActivate({required Object service}) => 'Faollashtirish uchun ${service} xizmatini oching';
	@override String get copyCode => 'Faollashtirish kodini nusxalash';
	@override String get waitingForAuthorization => 'Avtorizatsiya kutilmoqda…';
	@override String get codeCopied => 'Kod nusxalandi';
}

// Path: services.oauthProxy
class _Translations$services$oauthProxy$uz extends Translations$services$oauthProxy$en {
	_Translations$services$oauthProxy$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String title({required Object service}) => '${service} xizmatiga kiring';
	@override String get body => 'Ushbu QR kodni skanerlang yoki URL-ni oching.';
	@override String openToSignIn({required Object service}) => 'Kirish uchun ${service} xizmatini oching';
}

// Path: services.pendingAuth
class _Translations$services$pendingAuth$uz extends Translations$services$pendingAuth$en {
	_Translations$services$pendingAuth$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get copyUrl => 'Kirish URL-ini nusxalash';
	@override String get urlCopied => 'URL nusxalandi';
}

// Path: services.libraryFilter
class _Translations$services$libraryFilter$uz extends Translations$services$libraryFilter$en {
	_Translations$services$libraryFilter$uz._(TranslationsUz root) : this._root = root, super.internal(root);

	final TranslationsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kutubxona filtri';
	@override String get subtitleAllSyncing => 'Barcha kutubxonalar sinxronlanmoqda';
	@override String get subtitleNoneSyncing => 'Hech narsa sinxronlanmaydi';
	@override String subtitleBlocked({required Object count}) => '${count} bloklandi';
	@override String subtitleAllowed({required Object count}) => '${count} ruxsat berildi';
	@override String get mode => 'Filtr rejimi';
	@override String get modeBlacklist => 'Qora roʻyxat';
	@override String get modeWhitelist => 'Oq roʻyxat';
	@override String get modeHintBlacklist => 'Quyida tanlanganlardan tashqari barcha kutubxonalarni sinxronlash.';
	@override String get modeHintWhitelist => 'Faqat quyida tanlangan kutubxonalarni sinxronlash.';
	@override String get libraries => 'Kutubxonalar';
	@override String get noLibraries => 'Kutubxonalar yoʻq';
}

/// The flat map containing all translations for locale <uz>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsUz {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'mobileLibrary.pickerSubtitle' => 'Tadqiq qilish uchun to\'plamni tanlang',
			'mobileLibrary.searchLibraries' => 'Kutubxonalarni qidirish',
			'mobileLibrary.noLibraries' => 'Mos kutubxonalar topilmadi',
			'mobileLibrary.ascending' => 'Ko\'tarilish',
			'mobileLibrary.descending' => 'Pastga tushmoqda',
			'mobileLibrary.sort' => 'Saralash',
			'mobileLibrary.unwatchedCount' => ({required Object count}) => '${count} ko\'rilmagan qismlar',
			'mobileLibrary.latestEpisode' => 'Oxirgi epizod',
			'profileStartup.autoLogin' => 'Oxirgi ishlatilgan profilni oching',
			'profileStartup.autoLoginHint' => 'PIN talab qilmasa, oxirgi profilni avtomatik ravishda oching.',
			'profileStartup.allowKidsExit' => 'Ota-ona PIN-kodisiz bolalar profilidan chiqishga ruxsat berish',
			'profileStartup.allowKidsExitHint' => 'Bola ota-ona PIN-kodisiz boshqa profilga o‘ta oladi. Profil PIN-kodlari avvalgidek amal qiladi.',
			'profileStartup.chooseKidsConnection' => 'Boshqa hisob yoki serverni tanlang',
			'profileStartup.chooseKidsConnectionHint' => 'Saqlagandan so\'ng, alohida hisobni ulang yoki boshqa profildan ulanishni tanlang.',
			'subtitleUpload.chooseFile' => 'Subtitr faylini yuklang',
			'subtitleUpload.hint' => 'Yuqoridagi tilni tanlang, keyin SRT, ASS, SSA yoki VTT faylini ushbu serverga yuklang.',
			'subtitleUpload.success' => 'Subtitr serverga yuklandi. Server elementni yangilaganda paydo bo\'ladi.',
			'subtitleUpload.failed' => 'Subtitrni yuklab bo‘lmadi. Fayl va server ruxsatlarini tekshiring.',
			'personSpotlight.inYourLibraries' => 'kutubxonalaringizda',
			'personSpotlight.libraryTitles' => ({required Object n}) => 'Kutubxonalaringizda · ${n} nomlari',
			'personSpotlight.readBiography' => 'Biografiyani o\'qing',
			'personSpotlight.newestFirst' => 'Eng yangi birinchi',
			'personSpotlight.oldestFirst' => 'Eng qadimgi birinchi',
			'personSpotlight.titleAscending' => 'Sarlavha A–Z',
			'personSpotlight.sortTitles' => 'Filmografiyani saralash',
			'personSpotlight.unwatchedEpisodes' => ({required Object n}) => '${n} ko\'rilmagan qismlar',
			'personSpotlight.copies' => ({required Object n}) => '${n} kutubxona nusxalari',
			'personSpotlight.versions' => ({required Object n}) => '${n} fayl versiyalari',
			'personSpotlight.retryTitles' => 'Barcha sarlavhalarni yuklab bo‘lmadi. Qayta urinish',
			'detailExtras.onlineVideos' => 'Treylerlar va qo\'shimchalar',
			'detailExtras.reviews' => 'Sharhlar',
			'detailExtras.readReview' => 'To\'liq sharhni o\'qing',
			'detailExtras.directedBy' => ({required Object name}) => 'Batafsil rejissyor ${name}',
			'detailExtras.previewUnavailable' => 'Bu oldindan ko‘rishni o‘ynatib bo‘lmadi. Buning o\'rniga uni asl ilovasida ochishingiz mumkin.',
			'detailExtras.openExternally' => 'Asl videoni oching',
			'mobileUi.readMore' => 'Batafsil o\'qing',
			'mobileUi.readLess' => 'Kamroq ko\'rsating',
			'mobileUi.playbackTools' => 'Ijro opsiyalari',
			'mobileUi.streamingQuality' => 'Oqim sifati',
			'mobileUi.fileVersions' => 'Fayl versiyalari',
			'mobileUi.qualityAndVersions' => 'Oqim sifati va fayl versiyalari',
			'mobileUi.hidePlaybackTools' => 'Ijro asboblarini yashirish',
			'mobileUi.remaining' => ({required Object time}) => '${time} qoldi',
			'mobileUi.endsAt' => ({required Object time}) => '${time} da tugaydi',
			'mobileUi.collection' => 'Sizning kollektsiyangiz',
			'mobileUi.nowPlaying' => 'HOZIR O\'YNALAYMAN',
			'mobileUi.popularLibrary' => 'Kutubxonangizda mashhur',
			'mobileUi.weeklyLibrary' => 'Bu hafta kutubxonangizda ommabop',
			'family.title' => 'Profillar va oila',
			'family.yourPeople' => 'Sizning xalqingiz',
			'family.manageHint' => 'Ushbu qurilmada odamlar, bolalar xavfsizligi va koʻrish harakatlarini boshqaring.',
			'family.people' => 'Odamlar',
			'family.peopleCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uz'))(n, one: '${n} odam', other: '${n} odamlar', ), 
			'family.kidsCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uz'))(n, one: '${n} bola', other: '${n} bolalar', ), 
			'family.you' => 'Siz',
			'family.adult' => 'Voyaga etgan',
			'family.child' => 'Bola',
			'family.adultTeen' => 'Voyaga etgan yoki o\'smir',
			'family.adultHint' => 'Ularning shaxsiy profili, ixtiyoriy PIN profili va o‘z server ulanishlari.',
			'family.childHint' => 'Yosh cheklovlari, xavfsiz kutubxonalar va bolalarga mos ko‘rinish. Ota-ona PIN-kodi bu sozlamalarni himoya qiladi.',
			'family.upToAge' => ({required Object age}) => '${age} yoshigacha',
			'family.allAges' => 'Barcha yoshdagilar',
			'family.switchProfile' => 'Profilni almashtirish',
			'family.switchHint' => 'Kim tomosha qilayotganini tanlang. Biror kishini boshqarish profillarni almashtirmaydi.',
			'family.addPerson' => 'Odam qo\'shing',
			'family.addChild' => 'Bola qo\'shing',
			'family.addHint' => 'Ushbu qurilmada kattalar, oʻsmirlar yoki bolalar profilini yarating.',
			'family.emptyPeople' => 'Siz bilan birga tomosha qilayotganlar uchun joy ajrating.',
			'family.emptyKids' => 'Hali bolalar profili yoʻq. Yosh chegaralari va xavfsiz kutubxonalarni tanlash uchun bolani qo\'shing.',
			'family.safety' => 'Bolalar va xavfsizlik',
			'family.safetyHint' => 'Ota-ona PIN-kodi, bolalar profillari va yosh cheklovlari.',
			'family.protection' => 'Himoya',
			'family.kidsProfiles' => 'Bolalar profili',
			'family.backupHistory' => 'Zaxira va tarix',
			'family.parentPinOn' => 'Ota-ona PIN-kodi yoqilgan',
			'family.profilePin' => 'Profil PIN-kodi',
			'family.confirmParentPin' => 'Ota-ona PIN-kodini tasdiqlang',
			'family.parentPinOff' => 'Ota-ona PIN-kodi o‘rnatilmagan',
			'family.missingPin' => 'Bu sozlamalarni himoya qilish uchun ota-ona PIN-kodini o‘rnating.',
			'family.hideScope' => 'Ushbu Luroka profilidagi “Ko‘rishni davom ettirish” sahifasida bolalar harakatlarini yashirish. Bu umumiy server tomosha tarixini o\'zgartirmaydi.',
			'family.localScope' => 'Bolalar profillari va cheklovlari ushbu qurilmada saqlanadi. Xuddi shu server hisob qaydnomasidan foydalanadigan profillar hali ham ushbu hisobning tomosha jarayonini baham ko\'rishadi.',
			'family.clearHistoryConfirm' => 'Bolalar tomonidan koʻrilgan sarlavhalar “Koʻrishni davom ettirish”da yana paydo boʻlishiga ruxsat berilsinmi? Bolalar profillari, cheklovlar, koʻrish vaqti statistikasi va server tomoshalari tarixi saqlanadi.',
			'family.editRestrictions' => 'Bolalar cheklovlarini tahrirlash',
			'family.activity' => 'Ko‘rish faoliyati',
			'family.namedActivity' => ({required Object name}) => '${name} ko‘rish faoliyati',
			'family.thisProfile' => 'Bu profil',
			'family.activityScope' => 'Luroka tomonidan ushbu qurilmada faol profil uchun yozib olingan ijro vaqti. Bu ko\'rish cheklovlari yoki to\'liq server tarixi emas, balki statistika.',
			'family.activityUnavailable' => 'Bu profil uchun faollikni ko‘rish hali mavjud emas.',
			'family.finished' => 'Bajarildi',
			'posterDetails.showThemeMusic' => 'Mavzu musiqasini ijro eting',
			'posterDetails.showThemeMusicDescription' => 'Film yoki shou mavzusini serverda mavjud boʻlganda uning tafsilotlari sahifasi ochiq boʻlganda ijro eting.',
			'posterDetails.catalogEpisodeInfo' => 'Katalog kartalarida epizodlar soni va ish vaqtini ko\'rsatish',
			'posterDetails.catalogEpisodeInfoDescription' => 'Kashf qilish plakatlarida epizodlar soni va oʻrtacha davomiyligini koʻrsating.',
			'posterDetails.title' => 'Plakat tafsilotlari',
			'posterDetails.description' => 'Studiya, qidiruv, kashfiyot va kutubxonalardagi posterlar ostida nom, yil va IMDb reytingini ko‘rsating. IMDb reytingi bo‘lmasa, u yashirin qoladi. Faqat rasmli posterlar uchun bu sozlamani o‘chiring.',
			'libraryPolish.posterDetails' => 'Plakat tafsilotlari',
			'libraryPolish.showPosterDetails' => 'Poster tafsilotlarini ko\'rsatish · ism, yil va IMDb',
			'libraryPolish.hidePosterDetails' => 'Poster tafsilotlarini yashirish',
			'libraryPolish.overview' => 'Umumiy koʻrinish',
			'libraryPolish.refreshing' => 'Kutubxona yangilanmoqda…',
			'libraryPolish.serverCollections' => 'Ushbu serverdagi barcha to\'plamlar',
			'libraryPolish.serverPlaylists' => 'Ushbu serverdagi barcha video pleylistlar',
			'libraryPolish.libraryCollections' => 'Ushbu kutubxonadagi to\'plamlar',
			'libraryPolish.searchCollections' => 'To\'plamlarni qidirish',
			'libraryPolish.searchPlaylists' => 'Pleylistlarni qidirish',
			'libraryPolish.searchHint' => 'Ism bo\'yicha qidirish',
			'libraryPolish.titleAscending' => 'Sarlavha A–Z',
			'libraryPolish.titleDescending' => 'Sarlavha Z–A',
			'libraryPolish.clearFilters' => 'Filtrlarni tozalash',
			'libraryPolish.playlistEmptyTitle' => 'Kino kechalaringiz, sizning tartibda',
			'libraryPolish.playlistEmptyHint' => 'Sarlavhaning Ko\'proq menyusini oching va birinchi pleylistingizni yaratish uchun Pleylistga qo\'shish-ni tanlang.',
			'libraryPolish.noMatches' => 'Mos nomlar yo‘q',
			'libraryPolish.indexing' => 'Toʻliq katalog qidirilmoqda…',
			'showSchedule.today' => 'Bugun',
			'showSchedule.tomorrow' => 'Ertaga',
			'showSchedule.latestUpcoming' => 'Eng yangi va kelgusi',
			'showSchedule.latestEpisode' => 'Oxirgi epizod',
			'showSchedule.upcoming' => 'Kelgusi',
			'showSchedule.inLibrary' => 'Kutubxonangizda',
			'showSchedule.notInLibrary' => 'Kutubxonangizda emas',
			'showSchedule.notYetAired' => 'Hali efirga uzatilmagan',
			'showSchedule.episode' => ({required Object number}) => 'Qism ${number}',
			'showSchedule.caughtUp' => 'Hammangiz qo\'lga tushdingiz',
			'showSchedule.finished' => 'Siz bu seriyani tugatdingiz',
			'showSchedule.nextAirs' => ({required Object date}) => 'Keyingi epizod ${date}',
			'showSchedule.watchBeginning' => 'Boshidan tomosha qiling',
			'showSchedule.replay' => 'Takrorlash',
			'showSchedule.playNext' => 'Keyingisini oʻynang',
			'awardsCatalog.awards' => 'Mukofotlar',
			'awardsCatalog.customize' => 'Moslashtiring',
			'awardsCatalog.chooseShelves' => 'Kashf qilish-ni moslashtiring',
			'awardsCatalog.shelvesDescription' => 'Kashf qilish-da kerakli qatorlarni tanlang. Mukofot qatorlari kutubxonalaringizdan g\'oliblarni ko\'rsatadi. Sizning tanlovlaringiz ushbu profil uchun saqlanadi.',
			'awardsCatalog.restoreShelves' => 'Standart sozlamalarni tiklash',
			'awardsCatalog.charts' => 'IMDb diagrammalari',
			'awardsCatalog.generalShelves' => 'Mashhur va trend',
			'awardsCatalog.saveShelvesFailed' => 'Kashf qilish tanlovlaringizni saqlab bo‘lmadi. Iltimos, qayta urinib koʻring.',
			'awardsCatalog.comedyActress' => 'Bosh rol aktrisasi · Komediya',
			'awardsCatalog.leadDramaActor' => 'Bosh aktyor · Drama',
			'awardsCatalog.leadDramaActress' => 'Bosh rol aktrisasi · Drama',
			'awardsCatalog.comedySupportingActor' => 'Ikkinchi plandagi aktyor · Komediya',
			'awardsCatalog.comedySupportingActress' => 'Ikkinchi plandagi aktrisa · Komediya',
			'awardsCatalog.leadingPerformance' => 'Kumush ayiq · Eng yaxshi yetakchi ijro',
			'awardsCatalog.globesComedySeries' => 'Eng yaxshi teleserial · Musiqiy yoki komediya',
			'awardsCatalog.limitedSupportingActor' => 'Ikkinchi plandagi aktyor · Cheklangan serial yoki film',
			'awardsCatalog.limitedSupportingActress' => 'Ikkinchi plandagi aktrisa · Cheklangan serial yoki film',
			'awardsCatalog.berlinDocumentary' => 'Berlinale hujjatli film mukofoti',
			'awardsCatalog.title' => 'Mukofotlar va festivallar',
			'awardsCatalog.chooseCategory' => 'Mukofot toifasini tanlang',
			'awardsCatalog.winners' => 'G\'oliblar',
			'awardsCatalog.nominees' => 'Nomzodlar',
			'awardsCatalog.releaseDecade' => 'Chiqarish o\'n yilligi',
			'awardsCatalog.allYears' => 'Barcha yillar',
			'awardsCatalog.loading' => 'Mukofot unvonlari yuklanmoqda…',
			'awardsCatalog.matching' => 'Kutubxonalaringizda bu nomlar topilmoqda…',
			'awardsCatalog.unavailable' => 'Mukofot maʼlumotlari hozirda mavjud emas. Qayta urinib ko\'ring.',
			'awardsCatalog.empty' => 'Ko‘rinadigan kutubxonalaringizda ushbu turkumga mos keladigan nomlar yo‘q.',
			'awardsCatalog.coverage' => 'Aʼzolik Vikimaʼlumotlardan olingan va toʻliq boʻlmasligi mumkin. Aktyor va rejissyor toifalari mukofotlangan filmlar yoki shoularni ko\'rsatadi. Yillar marosimga emas, balki sarlavhaning chiqarilishiga ishora qiladi.',
			'awardsCatalog.picture' => 'Eng yaxshi rasm',
			'awardsCatalog.film' => 'Eng yaxshi film',
			'awardsCatalog.international' => 'Eng yaxshi xalqaro xususiyat',
			'awardsCatalog.internationalFilm' => 'Eng yaxshi xalqaro film',
			'awardsCatalog.nonEnglishFilm' => 'Ingliz tilidagi eng yaxshi film',
			'awardsCatalog.animated' => 'Eng yaxshi animatsion xususiyat',
			'awardsCatalog.animatedFilm' => 'Eng yaxshi animatsion film',
			'awardsCatalog.documentary' => 'Eng yaxshi hujjatli film',
			'awardsCatalog.director' => 'Eng yaxshi rejissyor',
			'awardsCatalog.actor' => 'Eng yaxshi aktyor',
			'awardsCatalog.actress' => 'Eng yaxshi aktrisa',
			'awardsCatalog.supportingActor' => 'Eng yaxshi ikkinchi plandagi aktyor',
			'awardsCatalog.supportingActress' => 'Eng yaxshi ikkinchi plandagi aktrisa',
			'awardsCatalog.originalScreenplay' => 'Eng yaxshi original ssenariy',
			'awardsCatalog.adaptedScreenplay' => 'Eng yaxshi moslashtirilgan ssenariy',
			'awardsCatalog.screenplay' => 'Eng yaxshi ssenariy',
			'awardsCatalog.cinematography' => 'Eng yaxshi kinematografiya',
			'awardsCatalog.editing' => 'Eng yaxshi tahrir',
			'awardsCatalog.score' => 'Eng yaxshi original ball',
			'awardsCatalog.song' => 'Eng yaxshi original qo\'shiq',
			'awardsCatalog.sound' => 'Eng yaxshi ovoz',
			'awardsCatalog.effects' => 'Eng yaxshi vizual effektlar',
			'awardsCatalog.productionDesign' => 'Eng yaxshi ishlab chiqarish dizayni',
			'awardsCatalog.costume' => 'Eng yaxshi kostyum dizayni',
			'awardsCatalog.makeup' => 'Eng yaxshi bo\'yanish va soch turmagi',
			'awardsCatalog.dramaSeries' => 'Ajoyib dramatik serial',
			'awardsCatalog.comedySeries' => 'Ajoyib komediya seriali',
			'awardsCatalog.limitedSeries' => 'Ajoyib cheklangan seriya',
			'awardsCatalog.animatedProgram' => 'Ajoyib animatsion dastur',
			'awardsCatalog.comedyActor' => 'Bosh rol ijrochisi · Komediya',
			'awardsCatalog.limitedActor' => 'Bosh aktyor · Cheklangan serial yoki film',
			'awardsCatalog.limitedActress' => 'Bosh rol aktrisasi · Cheklangan serial yoki film',
			'awardsCatalog.limitedDirecting' => 'Rejissyorlik · Cheklangan serial yoki film',
			'awardsCatalog.britishFilm' => 'Eng yaxshi Britaniya filmi',
			'awardsCatalog.goldenBear' => 'Oltin ayiq',
			'awardsCatalog.grandJury' => 'Hakamlar hay\'atining katta mukofoti',
			'awardsCatalog.jury' => 'Hakamlar hay\'ati mukofoti',
			'awardsCatalog.teddy' => 'Teddy mukofoti',
			'awardsCatalog.goldenLion' => 'Oltin sher',
			'awardsCatalog.volpiActor' => 'Volpi Cup · Eng yaxshi aktyor',
			'awardsCatalog.volpiActress' => 'Volpi Cup · Eng yaxshi aktrisa',
			'awardsCatalog.queerLion' => 'G\'alati sher',
			'awardsCatalog.dramaFilm' => 'Eng yaxshi kinofilm · Drama',
			'awardsCatalog.comedyFilm' => 'Eng yaxshi kinofilm · Musiqiy yoki komediya',
			'awardsCatalog.dramaActor' => 'Eng yaxshi aktyor · Drama',
			'awardsCatalog.dramaActress' => 'Eng yaxshi aktrisa · Drama',
			'awardsCatalog.usDramatic' => 'AQSh dramatik hakamlar hay\'atining bosh mukofoti',
			'awardsCatalog.documentaryJury' => 'Hujjatli filmlar uchun hakamlar hay\'atining bosh mukofoti',
			'awardsCatalog.worldCinema' => 'Jahon kinosi hakamlar hay\'atining bosh mukofoti',
			'awardsCatalog.dramaticAudience' => 'AQSh dramatik tomoshabinlar mukofoti',
			'awardsCatalog.usDirecting' => 'AQSh rejissyorlik mukofoti',
			'awardsCatalog.peopleChoice' => 'Xalq tanlovi mukofoti',
			'awardsCatalog.canadianFilm' => 'Eng yaxshi Kanada filmi',
			'awardsCatalog.firstFeature' => 'Eng yaxshi birinchi xususiyat',
			'awardsCatalog.cassavetes' => 'Jon Kassavetes mukofoti',
			'awardsCatalog.scienceFiction' => 'Eng yaxshi ilmiy-fantastik film',
			'awardsCatalog.fantasy' => 'Eng yaxshi fantastik film',
			'awardsCatalog.horror' => 'Eng yaxshi dahshatli film',
			'awardsCatalog.action' => 'Eng yaxshi jang yoki sarguzasht filmi',
			'awardsCatalog.thriller' => 'Eng yaxshi triller filmi',
			'searchDiscovery.suggestions' => 'Tomosha qilish uchun nimadir',
			'searchDiscovery.collections' => 'Mukofotlar va kolleksiyalar',
			'searchDiscovery.collectionsHint' => 'G\'oliblarni mukofotlang va kutubxonalaringizdan tayyorlangan jadvallar',
			'searchDiscovery.all' => 'Barcha kashfiyotlar',
			'searchDiscovery.awards' => 'Mukofotlar va jadvallar',
			'lurokaPlayerDesign.seeking' => 'Oldindan koʻrish',
			'lurokaPlayerDesign.keepWatching' => 'Tomosha qilishda davom eting',
			'lurokaPlayerDesign.upNext' => 'Keyingi',
			'lurokaPlayerDesign.playingIn' => ({required Object seconds}) => '${seconds} s formatida oʻynash',
			'lurokaWorkspace.everyday' => 'Har kuni',
			'lurokaWorkspace.homeDiscovery' => 'Uy va kashfiyot',
			'lurokaWorkspace.librariesAccounts' => 'Kutubxonalar va hisoblar',
			'lurokaWorkspace.profilesFamily' => 'Profillar va oila',
			'lurokaWorkspace.thisDevice' => 'Ushbu qurilma',
			'lurokaWorkspace.thisProfile' => 'Bu profil',
			'lurokaWorkspace.searchSettings' => 'Qidiruv sozlamalari',
			'lurokaWorkspace.savedAutomatically' => 'O\'zgarishlar avtomatik ravishda saqlanadi. Har kuni va Kengaytirilgan faqat qaysi boshqaruv elementlari ko\'rsatilishini o\'zgartiradi.',
			'lurokaWorkspace.audioSubtitles' => 'Audio va Subtitrlar',
			'lurokaWorkspace.audioDescription' => 'Ovoz chiqishi, ovoz balandligi va subtitr ko\'rinishi. Afzal tillar har bir server hisobiga ulanganda Hisob sozlamalari yordamida oʻrnatiladi.',
			'lurokaWorkspace.pictureSound' => 'Rasm va ovoz',
			'lurokaWorkspace.pictureDescription' => 'Ushbu qurilma uchun kadrlar tezligini moslashtirish, oʻlchamlari, HDR va Dolby Vision sozlash.',
			'lurokaWorkspace.engineDescription' => 'O\'yinchi mexanizmi, dekodlash, maxsus konfiguratsiya va kengaytirilgan ijro qoidalari.',
			'lurokaWorkspace.networkStreaming' => 'Tarmoq va oqim',
			'lurokaWorkspace.networkDescription' => 'Oqim sifati, to‘g‘ridan-to‘g‘ri o‘ynash kodeklari va tarmoqli kengligi tanlovlari.',
			'lurokaWorkspace.homeOptions' => 'Uy variantlari',
			'lurokaWorkspace.refreshHome' => 'Uyni yangilang va hozir mashhur',
			'lurokaWorkspace.customizeHome' => 'Uyni sozlash',
			'lurokaWorkspace.spotlight' => 'Uy diqqat markazida',
			'lurokaWorkspace.rotateSpotlight' => 'Tanlangan sarlavhalarni avtomatik aylantirish',
			'lurokaWorkspace.rotateDescription' => 'Uy boʻsh turgan vaqtda aylantiring. O\'zaro ta\'sir aylanishni pauza qiladi; javonlarni ko\'rish, sahifani ochish yoki ilovadan chiqish uni butunlay to\'xtatib turadi.',
			'lurokaWorkspace.rotationInterval' => 'Tanlangan sarlavhalar orasidagi vaqt',
			'mobileFixes.connectionRecoveryHint' => 'Server mavjud emasmi? Hisoblaringizni boshqaring yoki boshqa serverga ulang.',
			'downloadsRedesign.shelfSize' => 'Har bir javondagi narsalar',
			'downloadsRedesign.shelfSizeHint' => 'Tomosha qilishni davom ettirish va tavsiyalar javonlarida 16, 32 yoki 48 ta narsalarni ko‘rsating. Serverlar kamroq mavjud nomlarni qaytarishi mumkin.',
			'downloadsRedesign.subtitle' => 'Sevimlilaringiz, sayohatga tayyor.',
			'downloadsRedesign.transfers' => 'Transferlar',
			'downloadsRedesign.ready' => 'Oflayn rejimda',
			'downloadsRedesign.active' => 'Yuklab olinmoqda',
			'downloadsRedesign.waiting' => 'Kutilmoqda',
			'downloadsRedesign.downloaded' => 'Yuklab olingan',
			'downloadsRedesign.speed' => 'Yuklab olish tezligi',
			'downloadsRedesign.notificationProgress' => '{progress} · {networkSpeed} · {timeRemaining} qoldi',
			'kidsShelf.movieShelf' => 'Kino vaqti',
			'kidsShelf.showShelf' => 'Keyingi ko\'rsatuvingizni toping',
			'kidsShelf.aurora' => 'Aurora - chuqur choy va ohak',
			'kidsShelf.marquee' => 'Marquee - baxmal va oltin',
			'kidsShelf.electric' => 'Elektr - indigo va muz',
			'kidsShelf.midnight' => 'Yarim tun - po\'lat va amber',
			'kidsShelf.yourShelf' => 'Sizning kino javoningiz',
			'kidsShelf.all' => 'Hamma narsa',
			'kidsShelf.pickSomething' => 'Nimani tomosha qilishni xohlaysiz?',
			'kidsHome.everything' => 'Siz uchun',
			'kidsHome.keepWatching' => 'Tomosha qilishda davom eting',
			'kidsHome.emptyFilter' => 'Bu yerda hali hech narsa. Siz uchun sinab ko\'ring yoki kattalaringizdan sizga yoqadigan narsani qo\'shishini so\'rang.',
			'tvSettingsV2.moreThemes' => 'Koʻproq mavzular va moslashtirilgan ranglar',
			'tvSettingsV2.moreThemesHint' => 'Barcha mavjud sozlamalarni va maxsus mavzu parametrlarini oching.',
			'tvSettingsV2.previewLive' => 'Jonli ko‘rish',
			'tvSettingsV2.previewIllustration' => 'Ko\'rib chiqish misoli',
			'tvSettingsV2.previewShelfCount' => ({required Object count}) => 'Har bir javonda ${count} gacha mahsulot',
			'tvSettingsV2.simple' => 'Oddiy',
			'tvSettingsV2.homeNavigation' => 'Bosh sahifa va navigatsiya',
			'tvSettingsV2.libraryCards' => 'Kutubxona va kartalar',
			'tvSettingsV2.accountsLibraries' => 'Hisoblar va kutubxonalar',
			'tvSettingsV2.profilesFamily' => 'Profillar va oila',
			'tvSettingsV2.aboutSupport' => 'Haqida & Yordam',
			'tvSettingsV2.playback' => 'Ijro',
			'tvSettingsV2.homeHint' => 'Bosh sahifada va navigatsiyada nima koʻrinishini tanlang.',
			'tvSettingsV2.libraryHint' => 'Plakat o\'lchamlari, teglar va ko\'rilgan ko\'rsatkichlarni sozlang.',
			'tvSettingsV2.advancedPlayback' => 'Pleyer va striming',
			'tvSettingsV2.advancedPlaybackHint' => 'Pleyer, video chiqishi, oqim va kengaytirilgan ijro tanlovlari.',
			'tvSettingsV2.advancedTools' => 'Diagnostika va zaxira',
			'tvSettingsV2.advancedToolsHint' => 'Jurnallar, muammolarni bartaraf etish, sozlamalarni zaxiralash va tiklash.',
			'tvSettingsV2.themePreview' => 'Mavzuni oldindan ko‘rish',
			'tvSettingsV2.libraryPreview' => 'Kutubxonani oldindan ko\'rish',
			'tvSettingsV2.homePreview' => 'Bosh sahifani oldindan ko‘rish',
			'tvSettingsV2.subtitlePreview' => 'Subtitrni oldindan ko\'rish',
			'tvSettingsV2.subtitleSample' => 'Subtitrlaringiz shunday ko\'rinadi.',
			'tvSettingsV2.previewPlaceholder' => 'Sizning san\'at asaringiz shu yerda ko\'rinadi',
			'tvSettingsV2.posterSize' => 'Plakat hajmi',
			'tvSettingsV2.serverRecommendations' => 'Serveringizdan bosh sahifa tavsiyalari',
			'tvSettingsV2.tvLayout' => 'TV ko‘rinishidan foydalaning',
			'tvSettingsV2.hardwareDecode' => 'Uskuna video dekodlashdan foydalaning',
			'tvSettingsV2.serverNames' => 'Asosiy satrlarda server nomlarini ko\'rsatish',
			'tvSettingsV2.settingsSaved' => 'O\'zgarishlar avtomatik ravishda saqlanadi.',
			'tvSettingsV2.morePlayback' => 'Kengaytirilgan ijro',
			'tvSettingsV2.screenDisplay' => 'Rasm va ovoz',
			'tvSettingsV2.engine' => 'Pleyer mexanizmi',
			'tvSettingsV2.network' => 'Oqim va tarmoq',
			'tvSettingsV2.performance' => 'Ishlash',
			'tvSettingsV2.simpleAudio' => 'Tillar va subtitr ko\'rinishi',
			'settingsRedesign.themeEffects' => 'Mavzu va effektlar',
			'settingsRedesign.libraryLayout' => 'Kutubxona tartibi',
			'settingsRedesign.appearanceHint' => 'Luroka ko‘rinishini, tartibini va harakatini moslashtiring.',
			'settingsRedesign.livePreview' => 'Jonli ko‘rish',
			'settingsRedesign.previewHint' => 'Kutubxonangiz joriy sozlamalar bilan qanday ko‘rinishini ko‘ring.',
			'settingsRedesign.showLiveTv' => 'Jonli TV ko\'rsatish',
			'settingsRedesign.showLiveTvHint' => 'Ulangan server qo‘llab-quvvatlasa, navigatsiyada jonli TV-ni ko‘rsating. Bu serveringizdagi sozlamalarni o‘zgartirmaydi.',
			'settingsRedesign.aboutTagline' => 'Sizning ommaviy axborot vositalari. Sizning joyingiz.',
			'settingsRedesign.aboutDescription' => 'Luroka Plex, Jellyfin va Emby kutubxonalaringizni telefonlar, televizorlar va ish stollari uchun kinematik pleyerda birlashtiradi.',
			'settingsRedesign.aboutFeatures' => 'Kutubxonalaringizni ko\'rib chiqing, filmlar va shoularni davom ettiring, profillarni shaxsiylashtiring, yuklab olishlardan zavqlaning va birgalikda tomosha qiling. Jonli TV mos server bilan mavjud.',
			'settingsRedesign.services' => 'Dunyongizni bog\'lang',
			'settingsRedesign.updateSource' => 'Manbani yangilash',
			'settingsRedesign.updateSourceHint' => 'Luroka reliz tasmangizning HTTPS manzili. Sizning distribyutoringiz buni ilovada oldindan sozlashi mumkin.',
			'settingsRedesign.updateNotConfigured' => 'Ushbu qurilma uchun avtomatik yangilanishlar sozlanmagan.',
			'settingsRedesign.downloadInstall' => 'Yuklab oling va o\'rnating',
			'settingsRedesign.installUpdate' => 'Yangilanishni o\'rnating',
			'settingsRedesign.downloading' => 'Yangilanish yuklab olinmoqda…',
			'settingsRedesign.downloadFailed' => 'Yangilanishni yuklab bo‘lmadi yoki tasdiqlanmadi. Iltimos, qayta urinib koʻring.',
			'settingsRedesign.installPermission' => 'Luroka-ga Android sozlamalarida yangilanishlarni o\'rnatishga ruxsat bering, so\'ngra qaytib, Yangilanishni o\'rnatish-ni tanlang.',
			'settingsRedesign.updateReady' => 'Yuklab olish tasdiqlangan. Oʻrnatishga tayyor.',
			'settingsRedesign.releaseNotes' => 'Chiqarish qaydlari',
			'settingsRedesign.invalidFeed' => 'Yaroqli HTTPS yangilanish tasma manzilini kiriting.',
			'onboarding.connectStep' => '01 · Ulanish',
			'onboarding.connectTitle' => 'Luroka ga xush kelibsiz',
			'onboarding.connectHint' => 'Kutubxonalaringizni bu yerga olib kelish uchun tizimga kiring.',
			'onboarding.serverAddressHint' => 'Server manzilingizni kiriting yoki tarmog\'ingizda topilgan serverni tanlang.',
			'onboarding.serverSignInHint' => 'Kutubxonalarni ulash uchun server foydalanuvchi nomi va parolidan foydalaning.',
			'onboarding.serverAddressTitle' => 'Server manzili',
			'onboarding.serverAccountTitle' => 'Sizning server hisobingiz',
			'onboarding.plexHomeTitle' => 'Plex uy foydalanuvchisini tanlang',
			'onboarding.plexHomeHint' => 'Kutubxonalaridan foydalanmoqchi bo\'lgan Plex foydalanuvchisini tanlang. Keyinchalik Luroka profilingizni o\'rnatasiz.',
			'onboarding.chooseService' => 'Xizmatingizni tanlang',
			'onboarding.profileStep' => '02 · Sizning profilingiz',
			'onboarding.profileTitle' => 'O\'zingizni uyda qiling.',
			'onboarding.profileHint' => 'Luroka profilingiz uchun ism va avatarni tanlang. Bog\'langan hisobingiz o\'zgarishsiz qoladi.',
			'onboarding.readyStep' => '03 · Tomosha qilishga tayyor',
			'onboarding.readyTitle' => 'Bir oz ko\'proq siz.',
			'onboarding.readyHint' => 'Xizmatlaringizni birga keltiring yoki boshqa birovga joy ajrating. Buni har doim keyinroq qilishingiz mumkin.',
			'onboarding.addService' => 'Boshqa xizmatni ulang',
			'onboarding.editProfile' => 'Ismingiz va avataringizni tahrirlang',
			'onboarding.connected' => 'Ulangan va tayyor',
			'onboarding.backToProfile' => 'Profilingizga qayting',
			'onboarding.showOtherPlexHome' => 'Boshqa Plex Bosh sahifa aʼzolarini koʻrsatish',
			'onboarding.showOtherPlexHomeHint' => 'Sukut boʻyicha oʻchirilgan. Siz foydalangan Luroka profillaringiz va Plex uy aʼzolari koʻrinadigan boʻlib qoladi. Boshqa birovni tanlash uchun yoqing.',
			'household.title' => 'Luroka xonadoningiz',
			'household.welcome' => 'Lurokani sizniki qiling',
			'household.welcomeHint' => 'Birinchi hisobingiz ulangan. Ko\'rishni boshlashdan oldin profilingizni shaxsiylashtiring yoki boshqa birovni qo\'shing.',
			'household.profiles' => 'Profillar va uy xo\'jaligi',
			'household.manageHint' => 'Odamlarni qo\'shing, rasmlarni o\'zgartiring va har bir profilning ulanishlarini boshqaring.',
			'household.addProfile' => 'Luroka profilini qo\'shing',
			'household.addHint' => 'Har bir kishi o\'zining Plex, Emby yoki Jellyfin loginlarini ulashi mumkin. Ular uchun faqat profiliga qo\'shilgan ulanishlar ko\'rinadi.',
			'household.sharedHint' => 'Boshqa profilning ulanishidan qayta foydalanish server foydalanuvchisi tomosha qilgan holati va ijro jarayonini baham ko‘radi. Mustaqil ko\'rish tarixi uchun alohida loginni tanlang.',
			'household.personalise' => 'Profilni shaxsiylashtirish',
			'household.changePicture' => 'Profil rasmini o\'zgartirish',
			'household.pictureHint' => 'Luroka avatarini yoki rasmni tanlang. Bu faqat ushbu qurilmadagi rasmni o\'zgartiradi; server hisobingizga tegmagan.',
			'household.serverPicture' => 'Server rasmi/bosh harflaridan foydalaning',
			'household.choosePhoto' => 'Surat tanlang',
			'household.photoHint' => 'JPEG, PNG yoki boshqa qo\'llab-quvvatlanadigan rasm, 10 MB gacha. Rasmlar oʻlchamlari oʻzgartiriladi va ushbu qurilmada saqlanadi.',
			'household.pictureSaved' => 'Profil rasmi yangilandi',
			'household.pictureFailed' => 'Profil rasmini yangilab bo‘lmadi. 10 MB gacha bo\'lgan qo\'llab-quvvatlanadigan rasmni sinab ko\'ring.',
			'household.saveFailed' => 'Profil sozlamalarini saqlab bo‘lmadi. Iltimos, qayta urinib koʻring.',
			'household.startWatching' => 'Ko\'rishni boshlang',
			'household.manageProfiles' => 'Profillarni boshqarish yoki almashtirish',
			'household.addLater' => 'Keyinroq Sozlamalar → Profillar va uy xo‘jaliklari bo‘limida ko‘proq odam qo‘shishingiz mumkin.',
			'household.connectionRequired' => 'Ushbu profilni sozlashni tugatish uchun server ulanishini qo\'shing.',
			'household.mountain' => 'Tog\'',
			'household.orbit' => 'Explorer',
			'household.waves' => 'Okean',
			'household.blossom' => 'Gullash',
			'household.lightning' => 'Chaqmoq',
			'household.moon' => 'Oy',
			'household.avatarGallery' => 'Avatarni tanlang',
			'household.avatarIllustrationHint' => 'Asl tasvirlangan portretlar, bolalar va hayvonlarning do\'stlari',
			'household.avatarPortraitSunrise' => 'Quyosh chiqishi portreti',
			'household.avatarPortraitMeadow' => 'Yaylov portreti',
			'household.avatarPortraitBerry' => 'Berry portreti',
			'household.avatarPortraitGolden' => 'Oltin portret',
			'household.avatarPortraitIndigo' => 'Indigo portreti',
			'household.avatarPortraitOcean' => 'Okean portreti',
			'household.avatarKidArtist' => 'Kichik rassom',
			'household.avatarKidSkater' => 'Kichkina konkida uchuvchi',
			'household.avatarCat' => 'Qiziq mushuk',
			'household.avatarDog' => 'Baxtli it',
			'household.avatarPanda' => 'Panda',
			'household.avatarOwl' => 'Boyqush',
			'household.avatarFox' => 'Tulki',
			'household.avatarDinosaur' => 'Dinozavr',
			'household.avatarRobot' => 'Robot',
			'detailComposition.startOver' => 'Qaytadan boshlang',
			'detailComposition.seriesCast' => 'Serial aktyorlari',
			'detailComposition.streamingQuality' => 'Oqim sifati…',
			'detailComposition.trailer' => 'Treyler',
			'detailComposition.manageMedia' => 'Mediani boshqarish…',
			'detailComposition.playbackOptions' => 'Ijro variantlari…',
			'detailComposition.moreActions' => 'Ko\'proq harakatlar',
			'detailComposition.watched' => 'Ko\'rildi',
			'detailComposition.unwatched' => 'Koʻrilmagan',
			'detailComposition.endsAt' => ({required Object time}) => '${time} da tugaydi',
			'detailComposition.automatic' => 'Avtomatik',
			'detailComposition.usePreferences' => 'Ijro qilish sozlamalaringizdan foydalaning',
			'detailComposition.mediaInformation' => 'OAV ma\'lumotlari',
			'detailComposition.fullFileInformation' => 'To\'liq fayl ma\'lumotlari',
			'detailComposition.castAndCrew' => 'Aktyorlar va ekipaj',
			'kids.backupProfile' => 'Bolalar profilini zaxiralang',
			'kids.backupExplain' => 'Ushbu profilning saqlangan nomi, xarakteri, cheklovlari, tashqi koʻrinishi va mahalliy koʻrish istisnolarini zaxiralang. Ota-ona PIN-kodlari, serverga kirishlar, yuklab olishlar va serverni ijro etish jarayoni kiritilmagan.',
			'kids.saveBackupFile' => 'Zaxira faylini saqlang',
			'kids.copyBackup' => 'Zaxira matnni nusxalash',
			'kids.backupSaved' => ({required Object path}) => 'Bolalar profilining zaxira nusxasi ${path} fayliga saqlandi',
			'kids.backupCopied' => 'Bolalar profilining zaxira nusxasi nusxalandi',
			'kids.backupFailed' => 'Bolalar profilining zaxira nusxasini saqlab bo‘lmadi. Iltimos, qayta urinib koʻring.',
			'kids.restoreProfile' => 'Bolalar profilini tiklang',
			'kids.chooseBackupFile' => 'Zaxira faylini tanlang',
			'kids.pasteBackup' => 'Zaxira matnni joylashtiring',
			'kids.backupText' => 'Bolalar profilining zaxira nusxasi JSON',
			'kids.pasteFromClipboard' => 'Buferdan joylashtirish',
			'kids.restoreReview' => 'Qayta tiklangan ushbu sozlamalarni ko‘rib chiqing, so‘ngra joriy server ulanishlaridan foydalanib yangi bolalar profilini yaratish uchun saqlang. Mavjud profillar ustiga yozilmaydi. Kutubxona tanlovlari va ko‘rish istisnolari faqat bir xil server/kutubxona identifikatorlariga mos keladi.',
			'kids.restoreInvalid' => 'Bu bolalar profilining qo‘llab-quvvatlanadigan zaxira nusxasi emas. Luroka bolalar profilining JSON zaxira nusxasini tanlang.',
			'kids.deleteProfile' => 'Bolalar profilini o\'chirish',
			'kids.deleteExplain' => ({required Object name}) => '${name} Lurokadan o‘chirilsinmi? Ularning mahalliy sozlamalari, yuklab olishlari va ko‘rish istisnolari olib tashlanadi. Server hisobingiz va server tarixi saqlanib qoladi. Agar profilni keyinroq tiklamoqchi bo\'lsangiz, avval zaxira nusxasini yarating.',
			'kids.profileDeleted' => 'Bolalar profili oʻchirildi',
			'kids.allowedLibraries' => 'Ruxsat etilgan kutubxonalar',
			'kids.unavailableLibrary' => 'Oldin tanlangan kutubxona (hozirda mavjud emas)',
			'kids.allLibraries' => 'Barcha ulangan kino va televizor kutubxonalariga ruxsat bering',
			'kids.librariesExplain' => 'Muayyan kutubxonalarni tanlash uchun buni o\'chiring. Tanlangan kutubxonalar ichida yosh va animatsiya qoidalari hali ham amal qiladi. Tanlovdan foydalanganda yangi kutubxonalar avtomatik ravishda qo\'shilmaydi.',
			'kids.librariesUnavailable' => 'Hech qanday film yoki televizor kutubxonasi yuklanmagan. Serverga ulaning va Kutubxonalarni oching, keyin tanlash uchun shu yerga qayting.',
			'kids.noLibrariesSelected' => 'Hech qanday kutubxona tanlanmagan: bu bola hech qanday nom ko‘rmaydi.',
			'kids.animationOnly' => 'Faqat animatsiya',
			'kids.animationExplain' => 'Serveringizda faqat Animatsiya janri bilan teglangan sarlavhalarni ko\'rsating. Bu yosh chegarasini almashtirmaydi: animatsiya kattalar uchun ham mo\'ljallangan bo\'lishi mumkin. Yo\'qolgan janr metama\'lumotlari yashirilgan.',
			'kids.allowUnrated' => 'Yosh reytingi bo\'lmagan sarlavhalarga ruxsat bering',
			'kids.unratedExplain' => 'Sukut boʻyicha oʻchirilgan. Yoqilganda, kutubxona va animatsiya qoidalari ruxsat bersa, etishmayotgan yoki baholanmagan tasniflar paydo bo\'lishi mumkin. Ularning mosligini yoshga qarab tekshirib bo\'lmaydi. Yosh chegarasidan yuqori bo\'lgan ma\'lum reytinglar va tan olinmagan tasniflar yashirin qoladi.',
			'kids.whoIsWatching' => 'Kim tomosha qilmoqda?',
			'kids.chooseAdventure' => 'Katta sarguzashtlarning kichik dunyosi.',
			'kids.chooseProfile' => 'Joyingizni tanlang. Uni kino kechasiga aylantiring.',
			'kids.welcome' => ({required Object name}) => 'Salom, ${name}!',
			'kids.welcomeOlder' => ({required Object name}) => 'Sizning keyingi ajoyib hikoyangiz, ${name}.',
			'kids.homeSubtitle' => 'Katta sarguzashtlar. Kichik kashfiyotlar. Hammasi siz uchun.',
			'kids.homeSubtitleOlder' => 'Yangi sevimlini toping. To‘xtagan joydan davom eting.',
			'kids.featured' => 'Bugungi katta sarguzasht',
			'kids.featuredOlder' => 'Diqqat markazida',
			'kids.moreInfo' => 'Batafsil ma\'lumot',
			'kids.movies' => 'Filmlar',
			'kids.shows' => 'Ko\'rsatuvlar',
			'kids.profiles' => 'Profillar',
			'kids.adultBadge' => 'Kattalar',
			'kids.avatar' => 'O\'zingizning xarakteringizni tanlang',
			'kids.avatarExplorer' => 'Kosmik tadqiqotchi',
			'kids.avatarFox' => 'Tulki',
			'kids.avatarDinosaur' => 'Dinozavr',
			'kids.avatarRobot' => 'Robot',
			'kids.avatarChildArtist' => 'Kichik rassom',
			'kids.avatarChildSkater' => 'Kichkina konkida uchuvchi',
			'kids.avatarSunrisePerson' => 'Quyosh chiqishi portreti',
			'kids.avatarOceanPerson' => 'Okean portreti',
			'kids.avatarCat' => 'Qiziq mushuk',
			'kids.avatarDog' => 'Baxtli it',
			'kids.avatarPanda' => 'Panda',
			'kids.avatarOwl' => 'Boyqush',
			'kids.avatarBear' => 'Ayiq',
			'kids.continueAdventure' => 'Sarguzashtni davom ettiring',
			'kids.freshStories' => 'Yangi kashfiyotlar',
			'kids.yourMovies' => 'Sevimli filmlar',
			'kids.yourShows' => 'Yana bir epizod',
			'kids.emptyHint' => 'Yangi sarguzashtlar serveringizda ruxsat etilgan yosh tasnifiga ega sarlavhalarga ega bo\'lganda paydo bo\'ladi.',
			'kids.title' => 'Bolalar uchun Luroka',
			'kids.addProfile' => 'Bolalar profilini qo\'shing',
			'kids.parentalControls' => 'Ota-ona nazorati',
			'kids.parentPin' => 'Ota-ona PIN-kodi',
			'kids.setParentPin' => 'Ota-ona PIN-kodini o‘rnating',
			'kids.changeParentPin' => 'Ota-ona PIN-kodini o‘zgartiring',
			'kids.pinExplain' => 'Bu PIN-kod ushbu qurilmadagi kattalar profillari va ota-ona nazoratini himoya qiladi.',
			'kids.name' => 'Bolaning ismi',
			'kids.ageGroup' => 'Ruxsat berilgan yosh tasnifi',
			'kids.allAges' => 'Barcha yoshdagilar · G, TV-Y, TV-G, U',
			'kids.age7' => '7 tagacha · shuningdek PG, TV-PG, TV-Y7',
			'kids.age12' => '12 gacha · shuningdek 12 va 12A',
			'kids.age16' => '16 gacha · shuningdek, PG-13, TV-14, 15 va 16',
			'kids.ratingExplain' => 'Yosh chegarasidan yuqori unvonlar va tan olinmagan tasniflar yashiriladi. Agar siz quyida ruxsat bermasangiz, reytingsiz sarlavhalar berkitiladi. Baholanmagan epizodlar tasdiqlangan seriya tasnifini meros qilib olishi mumkin. Reytinglar serveringiz metamaʼlumotlariga bogʻliq.',
			'kids.theme' => 'Bolalarning tashqi ko\'rinishi',
			'kids.themeExplain' => 'Ushbu profil faol bo\'lganda rangli mavzudan foydalaning.',
			'kids.sharedLogin' => 'Mavjud server loginingizdan foydalanadi. Plex/Emby jarayoni va tomosha holati umumiy bo‘lib qoladi. Cheklovlar va bolalar profillari ushbu qurilmada saqlanadi.',
			'kids.hideWatched' => 'Bolalar koʻrishlarini “Koʻrishni davom ettirish” sahifasidan berkitish',
			'kids.hideExplain' => 'Ushbu qurilmada bolalar profillari tomonidan ijro etilgan filmlar va butun seriyalarni yashirish. Bu ularni kutubxonangizdan olib tashlamaydi yoki server tarixini o\'zgartirmaydi.',
			'kids.clearHistory' => 'Bolalarning koʻrish istisnolarini qayta oʻrnating',
			'kids.historyReset' => 'Bolalar uchun koʻrish istisnolari qayta tiklandi',
			'kids.blocked' => 'Bu nom ushbu bolalar profilida mavjud emas.',
			'kids.switchProfile' => 'Profilni almashtirish',
			'kids.manageFromAdult' => 'Sozlamalarni boshqarish uchun kattalar profiliga oʻting.',
			'kids.noConnections' => 'Bolalar profilini qo\'shishdan oldin serverni kattalar profilingizga ulang.',
			'kids.created' => 'Bolalar profili yaratildi',
			'kids.updated' => 'Bolalar profili yangilandi',
			'kids.saveFailed' => 'Ota-ona nazorati saqlanmadi. Iltimos, qayta urinib koʻring.',
			'kids.kidsBadge' => 'Bolalar',
			'lurokaDiscovery.title' => 'Kashf qilish',
			'lurokaDiscovery.chooseLibraryHint' => 'Tadqiq qilish uchun kutubxonani tanlang',
			'lurokaDiscovery.chooseCopyHint' => 'Bir nechta kutubxonalarda mavjud. O\'zingiz yoqtirgan nusxani tanlang.',
			'lurokaDiscovery.weeklyMovies' => 'Bu hafta ommabop filmlar · TMDb',
			'lurokaDiscovery.weeklyShows' => 'Bu hafta ommabop shoular · TMDb',
			'lurokaDiscovery.weeklyLibrary' => 'Bu hafta trendlari · Kutubxonangizda',
			'lurokaDiscovery.popularLibrary' => 'Hozir mashhur · Kutubxonangizda · Cinemeta',
			'lurokaDiscovery.publicFeedError' => 'Cinemeta kashfiyoti mavjud emas. Iltimos, qayta urinib koʻring.',
			'lurokaDiscovery.oscars' => 'Oskar · Eng yaxshi film g\'oliblari',
			'lurokaDiscovery.imdb100' => 'IMDb Top 100 ta film · 2026-yil sentabr lavhasi',
			'lurokaDiscovery.imdbTv100' => 'IMDb Eng yaxshi 100 ta shou · 2026-yil sentabr lavhasi',
			'lurokaDiscovery.emmyComedy' => 'Emmi · Komediya seriyasi g\'oliblari · 1971–2026',
			'lurokaDiscovery.emmys' => 'Emmi · Drama seriali gʻoliblari · 1966–2026',
			_ => null,
		} ?? switch (path) {
			'lurokaDiscovery.bafta' => 'BAFTA · Eng yaxshi film g\'oliblari',
			'lurokaDiscovery.cannes' => 'Kann · Palma d\'Or g\'oliblari',
			'lurokaDiscovery.awardsNote' => 'Mukofot kollektsiyalariga Oskarning eng yaxshi filmi tarixi, Emmi drama/komediya g\'oliblari va kengaytirilgan BAFTA/Kann tanlovlari kiradi. Takroriy yutuq unvonlari bir marta paydo bo\'ladi. A\'zolik mukofot toifalari tarixi va Vikido\'stlik faktlaridan foydalanadi. IMDb Top 100 ta film/shou roʻyxati mmdju/imdb-top250-api dan 2026-yil sentabr oyidagi diagramma suratlarini saqlaydi. Faqat ko\'rinadigan, onlayn kutubxonalaringizdagi mosliklar paydo bo\'ladi; to\'plam hajmi kutubxona mavjudligiga bog\'liq.',
			'lurokaDiscovery.attribution' => 'Ommaviy mashhurlik roʻyxatlari, metamaʼlumotlar va IMDb reytinglari Cinemeta tomonidan taqdim etiladi; uning mashhur ro\'yxatlari haftalik ko\'rish jadvallari emas. Ushbu mahsulot TMDB API dan foydalanadi, lekin TMDB tomonidan tasdiqlanmagan yoki sertifikatlanmagan. Ixtiyoriy TMDb haftalik tendentsiyalari raqamlarni ko\'rishni emas, balki TMDb qiziqishini aks ettiradi. Ballar manba belgilarini saqlab qoladi.',
			'lurokaDiscovery.tmdbSettings' => 'Kashfiyot manbalari',
			'lurokaDiscovery.setupDescription' => 'Cinemeta kashfiyoti darhol akkauntsiz ishlaydi: mashhur filmlar va shoular, IMDb reytinglari va sovrindorlar. TMDb ni API kaliti yoki themoviedb.org/settings/api dan API o‘qish kirish tokeni yordamida haftalik trendlar uchun ixtiyoriy ravishda ulang. Hisob maʼlumotlaringiz ushbu qurilmada saqlanadi.',
			'lurokaDiscovery.apiKey' => 'TMDb API kaliti / kirish tokenini o\'qish',
			'lurokaDiscovery.connect' => 'TMDb ni ulang',
			'lurokaDiscovery.connecting' => 'Ulanmoqda…',
			'lurokaDiscovery.connected' => 'TMDb ulandi · Haftalik tendentsiyalar va mukofotlar yoqilgan',
			'lurokaDiscovery.builtInKeyNote' => 'Luroka o‘rnatilgan umumiy TMDb kalitida ishlaydi. Ajratilgan tarif cheklovlari va to\'liq nazorat uchun o\'zingizning bepul kalitingizni quyida qo\'shing.',
			'lurokaDiscovery.disconnect' => 'TMDbni uzing',
			'lurokaDiscovery.invalidKey' => 'TMDb tasdiqlanmadi. Hisob ma\'lumotlarini va internet ulanishingizni tekshiring.',
			'lurokaDiscovery.feedError' => 'TMDb kashfiyoti mavjud emas. Iltimos, qayta urinib koʻring.',
			'lurokaDiscovery.allTitles' => 'Barcha sarlavhalar',
			'lurokaDiscovery.available' => 'Kutubxonangizda',
			'lurokaDiscovery.checking' => 'Kutubxonalar tekshirilmoqda…',
			'lurokaDiscovery.availabilityUnknown' => 'Ayrim kutubxonalarni tekshirib bo‘lmadi. Yangilashga harakat qiling.',
			'lurokaDiscovery.noAvailable' => 'Kutubxonalarda mos keladigan nomlar topilmadi.',
			'lurokaDiscovery.sourceInfo' => 'Haftalik tendentsiyalar va tanlangan mukofot g\'oliblari · TMDb',
			'lurokaDiscovery.configure' => 'Kashfiyot sozlamalari',
			'app.title' => 'Luroka',
			'appIcon.title' => 'Ilova belgisi',
			'appIcon.defaultIcon' => 'Standart',
			'appIcon.current' => 'Joriy belgi',
			'appIcon.locked' => 'Qo\'llab-quvvatlovchi imtiyozi',
			'appIcon.lockedHint' => 'Muqobil piktogrammalar qo\'llab-quvvatlovchi imtiyozidir.',
			'appIcon.changeFailed' => 'Ilova belgisini o‘zgartirib bo‘lmadi',
			'appIcon.launcherHint' => 'Lurokadan chiqqaningizdan keyin yangi belgi asosiy ekranda paydo bo\'ladi.',
			'appIcon.tvLauncherHint' => 'Yangi banner Lurokadan chiqqaningizdan keyin paydo bo\'ladi. Android TV televizor qayta ishga tushmaguncha eskisini ko‘rsatishda davom etishi mumkin.',
			'appIcon.names.midnight' => 'Yarim tun',
			'appIcon.names.ember' => 'Ember',
			'appIcon.names.paper' => 'Qog\'oz',
			'appIcon.names.oled' => 'OLED',
			'appIcon.names.line' => 'Chiziq',
			'appIcon.names.ocean' => 'Okean',
			'appIcon.names.ultraviolet' => 'Ultraviyole',
			'appIcon.names.matcha' => 'Matcha',
			'appIcon.names.sunset' => 'Quyosh botishi',
			'appIcon.names.gold' => 'Oltin',
			'appIcon.names.titanium' => 'Titan',
			'appIcon.names.glass' => 'Shisha',
			'appIcon.names.crt' => 'CRT',
			'appIcon.names.vhs' => 'VHS',
			'appIcon.names.synthwave' => 'Synthwave',
			'appIcon.names.pixel' => 'Piksel',
			'appIcon.names.neon' => 'Neon',
			'appIcon.names.sticker' => 'Stiker',
			'appIcon.names.ticket' => 'Chipta',
			'appIcon.names.pop' => 'Pop',
			'appIcon.names.strata' => 'Qatlamlar',
			'appIcon.names.facet' => 'Faset',
			'appIcon.names.tilde' => 'Tilde',
			'auth.signInWithPlex' => 'Plex orqali kirish',
			'auth.showQRCode' => 'QR kodni koʻrsatish',
			'auth.authenticate' => 'Tasdiqlash',
			'auth.authenticationTimeout' => 'Tasdiqlash vaqti tugadi. Iltimos, qaytadan urinib koʻring.',
			'auth.scanQRToSignIn' => 'Kirish uchun ushbu QR kodni skanerlang',
			'auth.waitingForAuth' => 'Tasdiqlanish kutilmoqda...\nBrauzeringizdan kiring.',
			'auth.useBrowser' => 'Brauzerdan foydalanish',
			'auth.or' => 'yoki',
			'auth.connectToMediaBrowser' => ({required Object product}) => '${product}ga ulanish',
			'auth.quickConnect' => 'Tezkor ulanish',
			'auth.useQuickConnect' => 'Tezkor ulanishdan foydalanish',
			'auth.quickConnectInstructions' => 'Jellyfin-da Tezkor ulanishni oching va ushbu kodni kiriting.',
			'auth.quickConnectWaiting' => 'Tasdiq kutilmoqda…',
			'auth.quickConnectCancel' => 'Bekor qilish',
			'auth.quickConnectExpired' => 'Tezkor ulanish vaqti tugadi. Qaytadan urinib koʻring.',
			'auth.localDataRecoveryRequired' => 'Luroka mahalliy kirish maʼlumotlarini tiklay olmadi. Iltimos, qaytadan kiring.',
			'auth.pinCheckRejected' => 'Plex PIN tekshiruvi rad etildi',
			'common.cancel' => 'Bekor qilish',
			'common.save' => 'Saqlash',
			'common.close' => 'Yopish',
			'common.clear' => 'Tozalash',
			'common.reset' => 'Qayta oʻrnatish',
			'common.later' => 'Keyinroq',
			'common.submit' => 'Yuborish',
			'common.confirm' => 'Tasdiqlash',
			'common.retry' => 'Qaytadan urinish',
			'common.logout' => 'Chiqish',
			'common.unknown' => 'Nomaʼlum',
			'common.refresh' => 'Yangilash',
			'common.yes' => 'Ha',
			'common.no' => 'Yoʻq',
			'common.delete' => 'Oʻchirish',
			'common.edit' => 'Tahrirlash',
			'common.shuffle' => 'Aralashtirish',
			'common.addTo' => 'Qoʻshish...',
			'common.createNew' => 'Yangi yaratish',
			'common.connect' => 'Ulanish',
			'common.disconnect' => 'Uzilish',
			'common.play' => 'Ijro etish',
			'common.pause' => 'Pauza',
			'common.resume' => 'Davom ettirish',
			'common.error' => 'Xatolik',
			'common.search' => 'Qidiruv',
			'common.home' => 'Bosh sahifa',
			'common.back' => 'Orqaga',
			'common.settings' => 'Sozlamalar',
			'common.mute' => 'Ovozni oʻchirish',
			'common.ok' => 'Tushunarli',
			'common.off' => 'Oʻchirilgan',
			'common.options' => 'Parametrlar',
			'common.seasonNumber' => ({required Object number}) => '${number}-mavsum',
			'common.episodeNumberTitle' => ({required Object number, required Object title}) => '${number}-qism - ${title}',
			'common.chapterNumber' => ({required Object number}) => '${number}-boʻlim',
			'common.reconnect' => 'Qayta ulanish',
			'common.viewAll' => 'Barchasini koʻrish',
			'common.serversUnreachable' => 'Serverlarga kirish imkonsiz',
			'common.loading' => 'Yuklanmoqda...',
			'common.fullscreen' => 'Toʻliq ekran',
			'common.exitFullscreen' => 'Toʻliq ekrandan chiqish',
			'common.ratingSource.critic' => 'Tanqidchilar',
			'common.ratingSource.audience' => 'Tomoshabinlar',
			'common.ratingSource.imdb' => 'IMDb',
			'common.ratingSource.tmdb' => 'TMDB',
			'common.ratingSource.rottenTomatoes' => 'Rotten Tomatoes',
			'common.ratingSource.simkl' => 'Simkl',
			'common.ratingSource.mal' => 'MyAnimeList',
			'common.ratingSource.anilist' => 'AniList',
			'common.ratingSource.trakt' => 'Trakt',
			'common.ratingSource.rottenTomatoesCritic' => 'Rotten Tomatoes tanqidchilari',
			'common.ratingSource.rottenTomatoesAudience' => 'Rotten Tomatoes tomoshabinlari',
			'common.ratingSource.metacritic' => 'Metacritic',
			'common.ratingSource.letterboxd' => 'Letterboxd',
			'common.notAvailable' => 'N/A',
			'common.url' => 'URL',
			'common.letterKeys' => 'ABC',
			'common.mediaKind.movie' => 'Film',
			'common.mediaKind.show' => 'Serial',
			'common.mediaKind.season' => 'Fasl',
			'common.mediaKind.episode' => 'Epizod',
			'common.mediaKind.artist' => 'Ijrochi',
			'common.mediaKind.album' => 'Albom',
			'common.mediaKind.track' => 'Trek',
			'common.mediaKind.collection' => 'Toʻplam',
			'common.mediaKind.playlist' => 'Pleylist',
			'common.mediaKind.clip' => 'Klip',
			'common.mediaKind.photo' => 'Foto',
			'common.mediaKind.folder' => 'Papka',
			'common.stay' => 'Qoling',
			'common.exitApp' => 'Chiqish',
			'common.exitAppBody' => 'Haqiqatan ham Luroka dan chiqmoqchimisiz?',
			'tvHints.select' => 'Tanlang',
			'tvHints.browse' => 'Ko‘rib chiqish',
			'tvHints.back' => 'Orqaga',
			'screens.licenses' => 'Litsenziyalar',
			'screens.switchProfile' => 'Profilni almashtirish',
			'screens.subtitleStyling' => 'Subtitr sozlamalari',
			'screens.mpvConfig' => 'mpv.conf',
			'screens.logs' => 'Jurnallar',
			'mediaExtras.trailers' => 'Treylerlar',
			'mediaExtras.featurettes' => 'Xarakteristikalar',
			'mediaExtras.interviews' => 'Intervyular',
			'mediaExtras.deletedScenes' => 'O\'chirilgan sahnalar',
			'mediaExtras.behindTheScenes' => 'Sahna ortida',
			'mediaExtras.scenesAndClips' => 'Sahnalar va Kliplar',
			'mediaExtras.other' => 'Boshqa qo\'shimchalar',
			'update.available' => 'Yangilanish mavjud',
			'update.versionAvailable' => ({required Object version}) => '${version} versiyasi mavjud',
			'update.currentVersion' => ({required Object version}) => 'Joriy: ${version}',
			'update.skipVersion' => 'Ushbu versiyani oʻtkazib yuborish',
			'update.viewRelease' => 'Tafsilotlarni koʻrish',
			'update.latestVersion' => 'Sizda eng soʻnggi versiya oʻrnatilgan',
			'update.checkFailed' => 'Yangilanishlarni tekshirish imkoni boʻlmadi',
			'supporter.title' => 'Luroka qo\'llab-quvvatlovchi',
			'supporter.intro' => 'Luroka rivojlanishini qo\'llab-quvvatlaydigan va kosmetik qo\'shimchalarni ochadigan bir martalik xarid:',
			'supporter.presetThemes' => 'Oldindan o\'rnatilgan mavzular',
			'supporter.presetThemesDescription' => 'Ember, muzlik, o\'rmon, olxo\'ri va qog\'oz',
			'supporter.customTheme' => 'Shaxsiy mavzu',
			'supporter.customThemeDescription' => 'Har bir rangni o\'zingiz tanlang',
			'supporter.appIcons' => 'Ilova piktogrammalari',
			'supporter.appIconsDescription' => 'Muqobil Luroka belgisini tanlang',
			'supporter.buy' => ({required Object price}) => '${price} uchun sotib oling',
			'supporter.loadingPrice' => 'Narxi yuklanmoqda...',
			'supporter.restore' => 'Xaridlarni tiklash',
			'supporter.pending' => 'Xaridingiz toʻlov yoki tasdiqlashni kutmoqda. Do\'kon uni tugatgandan so\'ng, qo\'shimchalar qulfdan chiqariladi.',
			'supporter.thankYouTitle' => 'Luroka-ni qo\'llab-quvvatlaganingiz uchun tashakkur',
			'supporter.thankYouBody' => 'Qo\'llab-quvvatlovchi qo\'shimchalaringiz qulfdan chiqarildi.',
			'supporter.tileSubtitle' => 'Bir martalik xarid bilan mavzular va ilova piktogrammalarini qulfdan chiqaring',
			'supporter.tileSubtitleThemesOnly' => 'Bir martalik xarid bilan mavzularni oching',
			'supporter.tileUnlocked' => 'Qo\'llab-quvvatlaganingiz uchun rahmat',
			'supporter.errors.storeUnavailable' => 'Xaridlar mavjud emas. Doʻkonga kirganingizni va bu qurilmada xaridlarga ruxsat berilganligini tekshiring.',
			'supporter.errors.productNotFound' => 'Qo‘llab-quvvatlovchi xaridi hozirda do‘koningizda mavjud emas.',
			'supporter.errors.productQueryFailed' => 'Narxni yuklab bo‘lmadi. Ulanishingizni tekshiring va qaytadan urining.',
			'supporter.errors.purchaseFailed' => 'Xarid amalga oshmadi. Qayta urinib ko\'ring.',
			'supporter.errors.restoreFailed' => 'Xaridingizni tiklash uchun doʻkonga etib boʻlmadi. Qayta urinib ko\'ring.',
			'supporter.errors.nothingToRestore' => 'Bu doʻkon hisobi uchun hech qanday qoʻllab-quvvatlovchi xaridi topilmadi.',
			'settings.title' => 'Sozlamalar',
			'settings.supportDeveloper' => 'Luroka-ni qoʻllab-quvvatlash',
			'settings.supportDeveloperDescription' => 'Dasturchini Liberapay orqali qoʻllab-quvvatlang',
			'settings.language' => 'Til',
			'settings.theme' => 'Mavzu',
			'settings.appearance' => 'Tashqi koʻrinish',
			'settings.videoPlayback' => 'Video ijrosi',
			'settings.videoPlaybackDescription' => 'Ijro parametrlarini sozlang',
			'settings.advanced' => 'Kengaytirilgan',
			'settings.episodePosterMode' => 'Epizod afishasi uslubi',
			'settings.seriesPoster' => 'Serial posteri',
			'settings.seasonPoster' => 'Mavsum posteri',
			'settings.episodeThumbnail' => 'Kadr koʻrinishi',
			'settings.homeHeroSize' => 'Karusel o\'lchami',
			'settings.homeHeroSizeSmall' => 'Kichik',
			'settings.homeHeroSizeMedium' => 'O\'rta',
			'settings.homeHeroSizeLarge' => 'Katta',
			'settings.secondsLabel' => 'Soniya',
			'settings.minutesLabel' => 'Daqiqa',
			'settings.secondsShort' => 'son',
			'settings.minutesShort' => 'daq',
			'settings.durationHint' => ({required Object min, required Object max}) => 'Vaqtni kiriting (${min}-${max})',
			'settings.systemTheme' => 'Tizim sozlamasi',
			'settings.lightTheme' => 'Yorugʻ',
			'settings.darkTheme' => 'Toʻq',
			'settings.oledTheme' => 'OLED',
			'settings.libraryDensity' => 'Kutubxona zichligi',
			'settings.displayScale' => 'Ekran miqyosi',
			'settings.compact' => 'Ixcham',
			'settings.comfortable' => 'Qulay',
			'settings.gridSpacing' => 'Toʻr oraligʻi',
			'settings.gridSpacingTight' => 'Zich',
			'settings.gridSpacingNormal' => 'Normal',
			'settings.gridSpacingSpacious' => 'Keng',
			'settings.tvCornerSpotlightBackdrop' => 'Burchak yoritish foni',
			'settings.tvCornerSpotlightBackdropDescription' => 'Fonni toʻliq ekran oʻrniga yuqori oʻng burchakda koʻrsatish',
			'settings.viewMode' => 'Koʻrish rejimi',
			'settings.gridView' => 'Toʻrsimon',
			'settings.listView' => 'Roʻyxat',
			'settings.continueWatchingAction' => '"Tomoshani davom ettirish" harakati',
			'settings.continueWatchingPlay' => 'Ijro etish',
			'settings.continueWatchingDetails' => 'Tafsilotlarni ochish',
			'settings.episodeAction' => 'Qism harakati',
			'settings.episodePlay' => 'Ijro etish',
			'settings.episodeDetails' => 'Tafsilotlarni ochish',
			'settings.useGlobalHubs' => 'Bosh sahifa tuzilishidan foydalanish',
			'settings.useGlobalHubsDescription' => 'Birlashtirilgan bosh sahifa boʻlimlarini koʻrsatish.',
			'settings.showServerNameOnHubs' => 'Boʻlimlarda server nomini koʻrsatish',
			'settings.showServerNameOnHubsDescription' => 'Boʻlim sarlavhalarida har doim server nomini koʻrsatish.',
			'settings.groupLibrariesByServer' => 'Kutubxonalarni server boʻyicha guruhlash',
			'settings.groupLibrariesByServerDescription' => 'Yon menyudagi kutubxonalarni serverlar boʻyicha guruhlash.',
			'settings.alwaysKeepSidebarOpen' => 'Yon menyuni har doim ochiq saqlash',
			'settings.alwaysKeepSidebarOpenDescription' => 'Yon menyu ochiq holatda qoladi, kontent maydoni unga moslashadi',
			'settings.showUnwatchedCount' => 'Koʻrilmaganlar sonini koʻrsatish',
			'settings.showUnwatchedCountDescription' => 'Seriallar va mavsumlarda koʻrilmagan qismlar sonini koʻrsatish',
			'settings.showWatchedIndicators' => 'Koʻrilgan belgilarni koʻrsatish',
			'settings.showWatchedIndicatorsDescription' => 'Koʻrilgan filmlar, seriallar va qismlarda tasdiq belgisi koʻrsatish',
			'settings.showEpisodeNumberOnCards' => 'Kartochkalarda qism raqamini koʻrsatish',
			'settings.showEpisodeNumberOnCardsDescription' => 'Qism kartochkalarida mavsum va qism raqamini koʻrsatish',
			'settings.showSeasonPostersOnTabs' => 'Varaqlarda mavsum posterlarini koʻrsatish',
			'settings.showSeasonPostersOnTabsDescription' => 'Har bir mavsum posterini oʻz boʻlimida koʻrsatish',
			'settings.tvFullCardLayout' => 'Toʻliq TV kartochkalari',
			'settings.tvFullCardLayoutDescription' => 'Aktyor ismlari ustiga yozilgan, faqat rasmdan iborat TV kartochkalaridan foydalanish',
			'settings.focusGlow' => 'Fokus nuri',
			'settings.focusGlowDescription' => 'Tanlangan kartochka atrofida yumshoq nur koʻrsatish',
			'settings.visualEffects' => 'Vizual effektlar',
			'settings.visualEffectsAuto' => 'Avtomatik',
			'settings.visualEffectsAutoDescription' => 'Kuchsiz qurilmalarda effektlarni avtomatik kamaytirish',
			'settings.visualEffectsFull' => 'Toʻliq',
			'settings.visualEffectsReduced' => 'Kamaytirilgan',
			'settings.visualEffectsReducedDescription' => 'Kamroq animatsiya va pastroq sifatli rasmlar',
			'settings.hideSpoilers' => 'Koʻrilmagan qismlar uchun spoylerlarni yashirish',
			'settings.hideSpoilersDescription' => 'Koʻrilmagan qismlar rasmlari va tavsiflarini xiralashtirish',
			'settings.playerBackend' => 'Pleyer infratuzilmasi',
			'settings.playerBackendDescription' => 'mpv koʻproq formatlarni oʻynaydi va koʻproq funksiyalarni yoqadi — tavsiya etiladi. ExoPlayer bu qurilmada ijro muvaffaqiyatsiz yoki qoqilib qolsa yordam beradi.',
			'settings.exoPlayer' => 'ExoPlayer',
			'settings.mpv' => 'mpv',
			'settings.hardwareDecoding' => 'Apparatli dekodlash',
			'settings.hardwareDecodingDescription' => 'Imkon qadar apparatli tezlashtirishdan foydalanish',
			'settings.playbackBuffer' => 'Ijro buferi',
			'settings.playbackBufferAuto' => 'Avto (tavsiya etiladi)',
			'settings.playbackBufferLarge' => 'Katta',
			'settings.playbackBufferExtraLarge' => 'Juda katta',
			'settings.playbackBufferDescription' => 'Beqaror ulanishlarga qarshi koʻproq buferlaydi. Bufer hajmi bilan ham cheklanadi.',
			'settings.defaultQualityTitle' => 'Standart sifat',
			'settings.streamingQualityOriginalHint' => 'Faylni aynan saqlangan tarzda ijro etadi - eng yaxshi sifat, eng ko\'p tarmoqli kengligidan foydalanadi',
			'settings.cellularQualityTitle' => 'Mobil tarmoqda standart sifat',
			'settings.cellularQualitySameAsDefault' => 'Standart sifat bilan bir xil',
			'settings.directPlayCoveredQuality' => 'Kichik videolarni asl sifatda ijro etish',
			'settings.directPlayCoveredQualityDescription' => 'Sifat chegarasiga kiruvchi videolarni qayta kodlash oʻrniga toʻgʻridan-toʻgʻri ijro etish',
			'settings.videoCodecs' => 'Video kodeklar',
			'settings.videoCodecsDescription' => 'Belgilanmagan kodeklarni server qayta kodlaydi',
			'settings.videoCodecsAlwaysAccepted' => 'Har doim qabul qilinadi',
			'settings.musicQualityTitle' => 'Musiqa sifati',
			'settings.subtitleStyling' => 'Subtitr sozlamalari',
			'settings.subtitleStylingDescription' => 'Subtitrlar koʻrinishini moslashtiring',
			'settings.smallSkipDuration' => 'Kichik oʻtkazish vaqti',
			'settings.largeSkipDuration' => 'Katta oʻtkazish vaqti',
			'settings.rewindOnResume' => 'Davom ettirganda orqaga qaytarish',
			'settings.secondsUnit' => ({required Object seconds}) => '${seconds} soniya',
			'settings.defaultSleepTimer' => 'Standart uyqu taymeri',
			'settings.minutesUnit' => ({required Object minutes}) => '${minutes} daqiqa',
			'settings.rememberTrackSelections' => 'Har bir film/serial uchun ovoz/subtitr tanlovini eslab qolish',
			'settings.rememberTrackSelectionsDescription' => 'Har bir media uchun ovoz va subtitr sozlamalarini saqlash',
			'settings.rememberTrackSelectionsBackendRule' => 'Plex har bir tanlovni serverda fayl boʻyicha saqlaydi; Jellyfin hisobning "Tanlovlarni eslab qolish" funksiyasini ham yoqadi; Emby qoʻllab-quvvatlanmaydi',
			'settings.followServerTrackSelections' => 'Har bir epizod uchun serverdagi tanlovlardan foydalanish',
			'settings.followServerTrackSelectionsDescription' => 'Epizod almashganda joriy tanlovni ko\'chirish o\'rniga serverda tanlangan ovoz va subtitrni qo\'llash',
			'settings.resumeMusicOnLaunch' => 'Musiqa seansini eslab qolish',
			'settings.resumeMusicOnLaunchDescription' => 'Ilova ochilganda oxirgi qo\'shiqni to\'xtagan joyida pauzada ochish',
			'settings.showChapterMarkersOnTimeline' => 'Vaqt shkalasida boʻlim belgilarini koʻrsatish',
			'settings.showChapterMarkersOnTimelineDescription' => 'Vaqt shkalasini boʻlimlarga boʻlish',
			'settings.specialsOrdering' => 'Maxsus qismlar epizodlar tartibida',
			'settings.specialsOrderingDescription' => 'Maxsus qismlar serialning tomosha qilish tartibida qayerda ijro etiladi',
			'settings.specialsOrderingServer' => 'Server tartibiga amal qilish',
			'settings.specialsOrderingAirDate' => 'Efirdagi sana boʻyicha aralashtirish',
			'settings.specialsOrderingLast' => 'Oddiy fasllardan keyin',
			'settings.clickVideoTogglesPlayback' => 'Ijro/pauza uchun videoga bosing',
			'settings.clickVideoTogglesPlaybackDescription' => 'Boshqaruv tugmalarini koʻrsatish oʻrniga videoni ijro etish yoki pauza qilish',
			'settings.videoPlayerControls' => 'Video pleyer boshqaruv elementlari',
			'settings.keyboardShortcuts' => 'Klaviatura tugmalari',
			'settings.keyboardShortcutsDescription' => 'Klaviatura tugmalarini moslashtiring',
			'settings.videoPlayerNavigation' => 'Video pleyer navigatsiyasi',
			'settings.videoPlayerNavigationDescription' => 'Pleyerni boshqarish uchun yoʻnalish tugmalaridan foydalaning',
			'settings.watchTogetherRelay' => 'Birgalikda tomosha relesi',
			'settings.watchTogetherRelayDescription' => 'Ochiq kuzatuv partiyasi releylari, agar siz oʻzingiz oʻrnatmasangiz',
			'settings.watchTogetherRelayHint' => 'https://my-relay.example.com',
			'settings.watchTogetherRelayInvalid' => 'Toʻgʻri HTTP yoki HTTPS rele manzilini kiriting.',
			'settings.crashReporting' => 'Xatoliklar haqida hisobot',
			'settings.crashReportingDescription' => 'Ilovani takomillashtirishga yordam berish uchun xatoliklar hisobotini yuboring',
			'settings.debugLogging' => 'Nosozliklarni aniqlash jurnali',
			'settings.debugLoggingDescription' => 'Muammolarni hal qilish uchun batafsil jurnal yuritishni yoqing',
			'settings.viewLogs' => 'Jurnallarni koʻrish',
			'settings.viewLogsDescription' => 'Ilova jurnallarini koʻrish',
			'settings.clearImageCache' => 'Rasm keshini tozalash',
			'settings.clearImageCacheDescription' => 'Keshlangan rasm va eskizlarni tozalaydi. Qayta yuklab olinmaguncha rasmlar sekinroq ochilishi mumkin.',
			'settings.clearImageCacheSuccess' => 'Rasm keshi muvaffaqiyatli tozalandi',
			'settings.resetSettings' => 'Sozlamalarni qayta oʻrnatish',
			'settings.resetSettingsDescription' => 'Standart sozlamalarni tiklash. Bu amalni ortga qaytarib boʻlmaydi.',
			'settings.resetSettingsSuccess' => 'Sozlamalar muvaffaqiyatli qayta oʻrnatildi',
			'settings.backup' => 'Zahira nusxa',
			'settings.exportSettings' => 'Sozlamalarni eksport qilish',
			'settings.exportSettingsDescription' => 'Parametrlaringizni faylga saqlang',
			'settings.exportSettingsSuccess' => 'Sozlamalar eksport qilindi',
			'settings.importSettings' => 'Sozlamalarni import qilish',
			'settings.importSettingsDescription' => 'Parametrlarni fayldan tiklang',
			'settings.importSettingsConfirm' => 'Bu joriy sozlamalaringiz ustidan yoziladi. Davom etasizmi?',
			'settings.importSettingsSuccess' => 'Sozlamalar import qilindi',
			'settings.importSettingsInvalidFile' => 'Ushbu fayl toʻgʻri Luroka sozlamalar fayli emas',
			'settings.importSettingsNoUser' => 'Sozlamalarni import qilishdan oldin tizimga kiring',
			'settings.shortcutsReset' => 'Tugmalar birlashmasi standart holatga qaytarildi',
			'settings.resetShortcutsConfirm' => 'Bu sizning shaxsiy yorliqlaringizni standart sozlamalar bilan almashtiradi. Davom ettirilsinmi?',
			'settings.about' => 'Dastur haqida',
			'settings.aboutDescription' => 'Ilova haqida maʼlumot va litsenziyalar',
			'settings.updates' => 'Yangilanishlar',
			'settings.updateAvailable' => 'Yangilanish mavjud',
			'settings.checkForUpdates' => 'Yangilanishlarni tekshirish',
			'settings.autoCheckUpdatesOnStartup' => 'Ishga tushganda avtomatik tekshirish',
			'settings.autoCheckUpdatesOnStartupDescription' => 'Ishga tushganda yangilanish boʻlsa xabar berish',
			'settings.validationErrorEnterNumber' => 'Toʻgʻri raqam kiriting',
			'settings.validationErrorDuration' => ({required Object min, required Object max, required Object unit}) => 'Vaqt ${min} va ${max} ${unit} orasida boʻlishi kerak',
			'settings.shortcutAlreadyAssigned' => ({required Object action}) => 'Bu birlashma ${action} harakatiga biriktirilgan',
			'settings.shortcutUpdated' => ({required Object action}) => '${action} uchun tugmalar birlashmasi yangilandi',
			'settings.saveFailed' => 'Oʻzgarishlar saqlanmadi. Qaytadan urinib koʻring.',
			'settings.autoPlayAndSkip' => 'Avtomatik ijro va oʻtkazish',
			'settings.autoPlayNextEpisode' => 'Keyingi qismni avtomatik ijro etish',
			'settings.autoPlayNextEpisodeDescription' => 'Qism tugagach, keyingisini avtomatik ijro etish',
			'settings.shuffleStartsFromBeginning' => 'Aralashtirish boshidan boshlanadi',
			'settings.shuffleStartsFromBeginningDescription' => 'Aralashtirganda har bir qismni davom ettirish oʻrniga boshidan boshlash',
			'settings.playNextCountdown' => 'Keyingi qism sanogʻi',
			'settings.playNextCountdownImmediate' => 'Darhol ijro etish',
			'settings.skipIntroMode' => 'Kirishni oʻtkazish',
			'settings.skipIntroModeOffDescription' => 'Kirishlarni oʻtkazish tugmasiz oddiy ijro etish',
			'settings.skipIntroModeButtonDescription' => 'Kirish boshlanganda oʻtkazish tugmasini koʻrsatish',
			'settings.skipIntroModeAutoDescription' => 'Kirishlarni quyidagi kechikishdan keyin avtomatik oʻtkazish',
			'settings.skipCreditsMode' => 'Titrlarni oʻtkazish',
			'settings.skipCreditsModeOffDescription' => 'Titrlarni oʻtkazish tugmasiz oddiy ijro etish',
			'settings.skipCreditsModeButtonDescription' => 'Titrlar boshlanganda oʻtkazish tugmasini koʻrsatish',
			'settings.skipCreditsModeAutoDescription' => 'Titrlarni avtomatik oʻtkazib, keyingi qismni ijro etish',
			'settings.skipMarkerModeOff' => 'Oʻchirilgan',
			'settings.skipMarkerModeButton' => 'Tugmani koʻrsatish',
			'settings.skipMarkerModeAuto' => 'Avtomatik',
			'settings.forceSkipMarkerFallback' => 'Zahira belgilarini majburlash',
			'settings.forceSkipMarkerFallbackDescription' => 'Plex belgilari boʻlsa ham boʻlim sarlavhasi shablonlaridan foydalanish',
			'settings.autoSkipDelay' => 'Avtomatik oʻtkazish kechikishi',
			'settings.autoSkipDelayDescription' => ({required Object seconds}) => 'Avtomatik oʻtkazishdan oldin ${seconds} soniya kutilsin',
			'settings.introPattern' => 'Kirish qismi belgisi shabloni',
			'settings.introPatternDescription' => 'Boʻlim sarlavhalarida introni topish uchun Regex shabloni',
			'settings.creditsPattern' => 'Titr belgisi shabloni',
			'settings.creditsPatternDescription' => 'Boʻlim sarlavhalarida titrlarni topish uchun Regex shabloni',
			'settings.invalidRegex' => 'Notoʻgʻri muntazam ifoda (Regex)',
			'settings.regex' => 'Muntazam ifoda (Regex)',
			'settings.downloads' => 'Yuklamalar',
			'settings.downloadLocationDescription' => 'Yuklangan fayllar saqlanadigan joyni tanlang',
			'settings.downloadLocationDefault' => 'Standart (Ilova xotirasi)',
			'settings.downloadLocationCustom' => 'Boshqa joy',
			'settings.selectFolder' => 'Jildni tanlash',
			'settings.resetToDefault' => 'Standart holatga qaytarish',
			'settings.currentPath' => ({required Object path}) => 'Joriy: ${path}',
			'settings.downloadLocationChanged' => 'Yuklash joyi oʻzgartirildi',
			'settings.downloadLocationReset' => 'Yuklash joyi standart holatga qaytarildi',
			'settings.downloadLocationInvalid' => 'Tanlangan jildga yozib boʻlmadi',
			'settings.downloadLocationPickerUnavailable' => 'Ushbu qurilmada jildni tanlash imkoniyati yoʻq',
			'settings.downloadOnWifiOnly' => 'Faqat Wi-Fi orqali yuklash',
			'settings.downloadOnWifiOnlyDescription' => 'Mobil tarmoqdan foydalanilganda yuklashni toʻxtatib turish',
			'settings.autoRemoveWatchedDownloads' => 'Koʻrilgan yuklamalarni avtomatik oʻchirish',
			'settings.autoRemoveWatchedDownloadsDescription' => 'Koʻrib boʻlingan yuklamalarni avtomatik oʻchirish',
			'settings.cellularDownloadBlocked' => 'Mobil tarmoqda yuklash taqiqlangan. Wi-Fi-dan foydalaning yoki sozlamani oʻzgartiring.',
			'settings.maxVolume' => 'Maksimal ovoz',
			'settings.maxVolumeDescription' => 'Pastroq ovozli videolar uchun ovozni 100%-dan oshirishga ruxsat berish',
			'settings.maxVolumePercent' => ({required Object percent}) => '%${percent}',
			'settings.discordRichPresence' => 'Discord’dagi faollik holati',
			'settings.discordRichPresenceDescription' => 'Discord-da nima tomosha qilayotganingizni koʻrsatish',
			'settings.services' => 'Xizmatlar',
			'settings.servicesDescription' => 'Trakt, MyAnimeList, Seerr va boshqalarni ulang',
			'settings.manageLibrariesDescription' => 'Kutubxonalarni tartiblash va yashirish',
			'settings.companionRemoteServer' => 'Yordamchi pult serveri',
			'settings.companionRemoteServerDescription' => 'Tarmoqdagi mobil qurilmalarga ushbu ilovani boshqarishga ruxsat berish',
			'settings.companionRemoteServerStartFailed' => 'Yordamchi pult serverini ishga tushirib bo‘lmadi',
			'settings.companionRemoteServerStopFailed' => 'Yordamchi pult serverini to‘xtatib bo‘lmadi',
			'settings.autoPip' => 'Avtomatik Rasm ichida rasm (PiP)',
			'settings.autoPipDescription' => 'Video ijro etilayotganda ilovadan chiqilganda avto-PiP rejimiga oʻtish',
			'settings.matchContentFrameRate' => 'Kadrlar chastotasini moslashtirish',
			'settings.matchContentFrameRateDescription' => 'Ekran chastotasini video kontentiga moslashtirish',
			'settings.matchContentResolution' => 'Kontent oʻlchamiga moslashtirish',
			'settings.matchContentResolutionDescription' => 'Masshtablashni televizor bajarishi uchun ekranni videoning oʻz oʻlchamiga oʻtkazadi. Ijro vaqtida menyular va subtitrlar ham masshtablanadi',
			'settings.matchRefreshRate' => 'Yangilanish chastotasini moslashtirish',
			'settings.matchRefreshRateDescription' => 'Toʻliq ekranda ekran chastotasini moslashtirish',
			'settings.matchDynamicRange' => 'Dinamik diapazonni moslashtirish',
			'settings.matchDynamicRangeDescription' => 'HDR kontent uchun HDR-ni yoqish, soʻng SDR-ga qaytish',
			'settings.displaySwitchDelay' => 'Ekranni almashtirish kechikishi',
			'settings.tunneledPlayback' => 'Tunnelli ijro',
			'settings.tunneledPlaybackDescription' => 'Video tunnellashdan foydalanish. HDR ijrosida ekran qora boʻlsa yoki harakat uzilib qolsa, oʻchiring.',
			'settings.audioPassthrough' => 'Ovozni toʻgʻridan-toʻgʻri oʻtkazish (Passthrough)',
			'settings.audioPassthroughDescription' => 'Dolby/DTS ovozini qayta kodlamasdan resiver yoki televizoringizga yuboradi va atroflicha ovozni saqlaydi. Ovoz boʻlmasa, oʻchiring.',
			'settings.audioPassthroughDescriptionApple' => 'Dolby Digital Plus, jumladan Atmos uchun Apple’ning oʻz Dolby dekoderidan foydalanish. DTS va TrueHD avvalgidek koʻp kanalli PCM sifatida ijro etiladi. Ovoz boʻlmasa, oʻchiring.',
			'settings.audioPassthroughDescriptionAppleSpatial' => 'Dolby Digital Plus, jumladan Atmos uchun Apple kompaniyasining Dolby dekoderidan foydalaning. iOS, iPadOS va tvOS 26 yoki undan keyingi versiyalarida TrueHD Atmos va DTS:X fazoviy audio sifatida ijro etiladi. Boshqa DTS va TrueHD treklari ko\'p kanalli PCM sifatida o\'ynaydi. Ovoz bo\'lmasa, o\'chiring.',
			'settings.audioPassthroughOverriddenByNormalization' => 'Ovoz balandligini meʼyorlashtirish yoqilganda oʻchirilgan',
			'settings.audioChannelLimit' => 'Audio kanallar',
			'settings.audioChannelLimitDescription' => 'Har bir kanalni ijro eta olmaydigan karnaylar, naushniklar yoki HDMI sozlamalari uchun dekodlangan audioni pastga aralashtiring',
			'settings.audioChannelLimitOriginal' => 'Asl',
			'settings.audioChannelLimitOriginalDescription' => 'Trekdagi har bir kanalni o\'ynang',
			'settings.audioChannelLimitSurround51' => '5.1 gacha',
			'settings.audioChannelLimitSurround51Description' => 'Faqat 5,1 PCM talab qiladigan televizorlar va qabul qiluvchilar uchun 7,1 dan 5,1 gacha aralashtiriladi. O\'tish joyi ta\'sir qilmaydi.',
			'settings.audioChannelLimitStereo' => 'Stereo',
			'settings.audioChannelLimitStereoDescription' => 'Stereo dinamiklar yoki minigarnituralar uchun ikkita kanalni aralashtiring. O\'tishni o\'chiradi.',
			'settings.downmixCenterBoost' => 'Markaziy kanalni kuchaytirish',
			'settings.downmixCenterBoostValue' => ({required Object db}) => '${db} dB',
			'settings.downmixCenterBoostLabel' => 'Kuchaytirish (dB)',
			'settings.downmixCenterBoostShort' => 'dB',
			'settings.audioDownmixNormalize' => 'Oʻtkazishda ovozni meʼyorlashtirish',
			'settings.audioDownmixNormalizeDescription' => 'Ovoz buzilishining oldini olish uchun darajani tushirish. Asl ovoz balandligini saqlash uchun oʻchiring (baland sahnalar buzilishi mumkin).',
			'settings.dvConversionMode' => 'Dolby Vision oʻtkazmasi',
			'settings.dvConversionModeDescription' => 'Dolby Vision Profile 7 fayllarini qayta ishlash rejimini tanlang.',
			'settings.dvConversionAuto' => 'Avtomatik',
			'settings.dvConversionNative' => 'Ichki / Oʻchirilgan',
			'settings.dvConversionDv81' => 'P7 → P8.1',
			'settings.dvConversionHevcStrip' => 'P7 → HEVC',
			'settings.dvConversionAutoDescription' => 'Qurilma imkoniyatlaridan foydalanish',
			'settings.dvConversionNativeDescription' => 'Ichki DV7 rejimini majburlash',
			'settings.dvConversionDv81Description' => 'Dolby Vision profile 8.1 formatiga oʻtkazish',
			'settings.dvConversionHevcStripDescription' => 'Dolby Vision qatlamlarini olib tashlash va HEVC sifatida koʻrsatish',
			'settings.disableDolbyVision' => 'Dolby Vision\'ni oʻchirish',
			'settings.disableDolbyVisionDescription' => 'Faylda boʻlsa, Dolby Vision oʻrniga HDR10 yoki HLG qatlamini ijro etish',
			'settings.hdrSdrConversion' => 'HDR\'ni SDR\'ga aylantirish',
			'settings.hdrSdrConversionDescription' => 'Displey HDR\'ni ko‘rsata olmaganda HDR videoni nima aylantirishini tanlang.',
			'settings.hdrSdrConversionAuto' => 'Avtomatik',
			'settings.hdrSdrConversionAutoDescription' => 'Android 9 va undan keyingi versiyalarda qurilma, eskiroq versiyalarda pleyer',
			'settings.hdrSdrConversionDevice' => 'Qurilma',
			'settings.hdrSdrConversionDeviceDescription' => 'Aylantirishni qurilmaning video apparati bajaradi. Eng tezi, lekin ranglar qurilmaga bog‘liq',
			'settings.hdrSdrConversionPlayer' => 'Pleyer',
			'settings.hdrSdrConversionPlayerDescription' => 'Aylantirishni pleyer bajaradi. Ranglar bir xil, lekin kuchsiz TV-pristavkalarda 4K qotishi mumkin',
			'settings.deinterlace' => 'Interleysni olib tashlash',
			'settings.deinterlaceDescription' => 'Interleys videodagi taroqsimon artefaktlarni olib tashlash (faqat mpv pleyerida)',
			'settings.deinterlaceOff' => 'Oʻchirilgan',
			'settings.deinterlaceOffDescription' => 'O‘zaro bog‘langan videoni dekodlangan holda ko‘rsatish',
			'settings.deinterlaceVideo' => 'Video',
			'settings.deinterlaceVideoDescription' => 'Har bir maydonni to\'liq kadrga aylantiring. Sport, yangiliklar va kontsertlar kabi TV uchun olingan videolar uchun',
			'settings.deinterlaceFilm' => 'Film',
			'settings.deinterlaceFilmDescription' => 'NTSC DVD disklarida keng tarqalgan 29,97 kadr / sekundgacha telesinatsiya qilingan film va animatsiyaning asl kadrlarini tiklang. Televizorda duduqlanishlar uchun video suratga olingan. Live TV Videodan foydalanadi',
			'settings.requireProfileSelectionOnOpen' => 'Ochilganda profilni soʻrash',
			'settings.requireProfileSelectionOnOpenDescription' => 'Ilova ochilgan har safar profilni tanlashni koʻrsatish',
			'settings.forceTvMode' => 'TV rejimini majburlash',
			'settings.forceTvModeKeepTitle' => 'Televizor tartibi saqlanib qolsinmi?',
			'settings.forceTvModeKeepBody' => ({required Object seconds}) => 'Televizor sxemasi masofadan boshqarish uchun mo\'ljallangan. ${seconds} s da oddiy tartibga qaytish.',
			'settings.forceTvModeKeepConfirm' => 'Televizor tartibini saqlang',
			'settings.forceTvModeReverted' => 'Televizor tartibi qaytarildi',
			'settings.forceTvModeDescription' => 'TV interfeysini majburiy yoqish. Avtomatik aniqlanmaydigan qurilmalar uchun. Qayta ishga tushirish talab qilinadi.',
			'settings.startInFullscreen' => 'Toʻliq ekranda boshlash',
			'settings.startInFullscreenDescription' => 'Luroka-ni ochganda toʻliq ekran rejimida ochish',
			'settings.exitFullscreenOnPlayerClose' => 'Pleyer yopilganda toʻliq ekrandan chiqish',
			'settings.exitFullscreenOnPlayerCloseDescription' => 'Video pleyerni yopganda avtomatik ravishda toʻliq ekrandan chiqish',
			'settings.autoHidePerformanceOverlay' => 'Unumdorlik panelini avto-yashirish',
			'settings.autoHidePerformanceOverlayDescription' => 'Unumdorlik panelini boshqaruv tugmalari bilan birga yashirish',
			'settings.showNavBarLabels' => 'Navigatsiya paneli matnlarini koʻrsatish',
			'settings.showNavBarLabelsDescription' => 'Navigatsiya belgilarining ostida matnni koʻrsatish',
			'settings.startupSection' => 'Boshlangʻich boʻlim',
			'settings.showExploreTab' => 'Kashf qilish varagʻini koʻrsatish',
			'settings.showExploreTabDescription' => 'Plex Discover va ulangan kuzatuvchilardagi kontent bilan Kashf qilish varagʻini koʻrsatish',
			'settings.liveTvDefaultFavorites' => 'Jonli TV-da tanlangan kanallarni standart qilish',
			'settings.liveTvDefaultFavoritesDescription' => 'Jonli TV ochilganda faqat tanlangan kanallarni koʻrsatish',
			'settings.general' => 'Umumiy',
			'settings.generalDescription' => 'Til, ishga tushirish va oyna xatti-harakati',
			'settings.languageAndRegion' => 'Til va mintaqa',
			'settings.startup' => 'Ishga tushirish',
			'settings.display' => 'Displey',
			'settings.libraryAndCards' => 'Kutubxona va kartochkalar',
			'settings.homeScreen' => 'Bosh ekran',
			'settings.navigation' => 'Navigatsiya',
			'settings.window' => 'Oyna',
			'settings.liveTv' => 'Jonli TV',
			'settings.player' => 'Pleyer',
			'settings.videoAndDisplay' => 'Video va displey',
			'settings.audio' => 'Audio',
			'settings.quality' => 'Sifat',
			'settings.subtitles' => 'Subtitrlar',
			'settings.seekAndTiming' => 'Oʻtkazish va vaqt sozlamalari',
			'settings.behavior' => 'Xatti-harakat',
			'settings.gestures' => 'Imo-ishoralar',
			'settings.gestureBrightnessSwipe' => 'Yorqinlik surish',
			'settings.gestureBrightnessSwipeDescription' => 'Yorqinlikni sozlash uchun chap chekkada yuqoriga yoki pastga suring',
			'settings.gestureVolumeSwipe' => 'Ovoz surish',
			'settings.gestureVolumeSwipeDescription' => 'Ovozni sozlash uchun oʻng chekkada yuqoriga yoki pastga suring',
			'settings.gesturePinchToZoom' => 'Chimchilab masshtablash',
			'settings.gesturePinchToZoomDescription' => 'Videoni yaqinlashtirish yoki uzoqlashtirish uchun chimchilang',
			_ => null,
		} ?? switch (path) {
			'settings.rememberBrightnessLevel' => 'Yorqinlik darajasini eslab qolish',
			'settings.rememberBrightnessLevelDescription' => 'Ijroni oxirgi surish bilan oʻrnatilgan yorqinlikda boshlash',
			'settings.controls' => 'Boshqaruv elementlari',
			'settings.rememberPlayerChanges' => 'Pleyer oʻzgarishlarini eslab qolish',
			'settings.rememberPlayerChangesDescription' => 'Ijro vaqtida qilingan oʻzgarish qayerda saqlanishi va qayta qoʻllanishi',
			'settings.scopePlaybackSpeed' => 'Ijro tezligi',
			'settings.scopeShaderPreset' => 'Sheyder oldindan sozlamasi',
			'settings.scopeAspectRatio' => 'Tomonlar nisbati',
			'settings.scopeSyncOffsets' => 'Audio va subtitr sinxronizatsiyasi',
			'settings.playerScopeOff' => 'Saqlamaslik',
			'settings.playerScopeGlobal' => 'Hamma joyda',
			'settings.playerScopeLibrary' => 'Kutubxona boʻyicha',
			'settings.playerScopeTitle' => 'Serial yoki film boʻyicha',
			'settings.exportDialogTitle' => 'Luroka sozlamalarini eksport qilish',
			'settings.velvetHourTheme' => 'Velvet soati',
			'themeEditor.builtIn' => 'O\'rnatilgan',
			'themeEditor.presets' => 'Oldindan sozlash',
			'themeEditor.custom' => 'Maxsus',
			'themeEditor.customEmpty' => 'Hali yaratilmagan',
			'themeEditor.editCustom' => 'Maxsus mavzuni tahrirlash',
			'themeEditor.editCustomDescription' => 'Har bir rangni o\'zingiz tanlang',
			'themeEditor.locked' => 'Supporter bilan qulfni oching',
			'themeEditor.savedLocked' => 'Saqlangan - Supporter bilan qulfdan chiqariladi',
			'themeEditor.title' => 'Maxsus mavzu',
			'themeEditor.startFrom' => 'dan boshlang',
			'themeEditor.startFromDescription' => 'Boshqa mavzudagi barcha ranglardan nusxa oling',
			'themeEditor.colors' => 'Ranglar',
			'themeEditor.preview' => 'Ko‘rib chiqish',
			'themeEditor.slots.bg' => 'Fon',
			'themeEditor.slots.surface' => 'Yuzaki',
			'themeEditor.slots.outline' => 'Kontur',
			'themeEditor.slots.text' => 'Matn',
			'themeEditor.slots.textMuted' => 'Ikkilamchi matn',
			'themeEditor.slots.accent' => 'Urg\'u',
			'themeEditor.opacity' => 'Shaffoflik',
			'themeEditor.hexHint' => '#RRGGBB yoki #AARRGGBB',
			'themeEditor.fromOtherThemes' => 'Boshqa mavzulardan',
			'themeEditor.swatchLabel' => ({required Object theme, required Object color}) => '${theme} ${color}',
			'themeEditor.contrast.textOnBg' => 'Fonda matn',
			'themeEditor.contrast.textOnSurface' => 'Matn yuzasida',
			'themeEditor.contrast.textMutedOnBg' => 'Fonda ikkinchi darajali matn',
			'themeEditor.contrast.textMutedOnSurface' => 'Sirtdagi ikkinchi darajali matn',
			'themeEditor.contrast.accentOnBg' => 'Fonda aksent',
			'themeEditor.contrast.accentOnSurface' => 'Sirtdagi urg\'u',
			'themeEditor.contrast.labelOnAccent' => 'Urg\'udagi tugma yorlig\'i',
			'themeEditor.lowContrast' => ({required Object pair, required Object ratio, required Object minimum}) => '${pair}: ${ratio}:1, tavsiya etilgan ${minimum}:1dan past',
			'themeEditor.discardTitle' => 'O\'zgarishlar bekor qilinsinmi?',
			'themeEditor.discardMessage' => 'Saqlanmagan rang o\'zgarishlaringiz yo\'qoladi.',
			'themeEditor.discard' => 'Bekor qilish',
			'themeEditor.previewCardTitle' => ({required Object number}) => 'Qism ${number}',
			'themeEditor.previewCardSubtitle' => ({required Object minutes}) => '${minutes} daqiqa qoldi',
			'themeEditor.previewSwitch' => 'Avtomatik ijro',
			'themeEditor.previewMutedText' => 'Ikkilamchi matn shunday o\'qiladi',
			'seriesBrowser.oneEpisode' => '1 qism',
			'seriesBrowser.watchedCount' => ({required Object count}) => '${count} tomosha qilindi',
			'seriesBrowser.episodeCount' => ({required Object count}) => '${count} epizodlari',
			'seriesBrowser.episodesFor' => ({required Object season}) => '${season} · Qismlar',
			'seriesBrowser.enterHint' => 'Tanlang: ochiq mavsum · ↓: epizodlar',
			'titlePage.genre' => 'Janr',
			'titlePage.remaining' => ({required Object time}) => '${time} qoldi',
			'titlePage.continueEpisode' => ({required Object season, required Object episode}) => 'Davom etish S${season} E${episode}',
			'titlePage.watchlist' => 'Kuzatuv roʻyxati',
			'titlePage.more' => 'Batafsil',
			'tvMenus.appearanceDescription' => 'Mavzu, ekran chetlari va plakatlar',
			'lurokaPlayer.title' => 'O\'yinchi sozlamalari',
			'lurokaPlayer.watch' => 'Tomosha qiling',
			'lurokaPlayer.watchDescription' => 'Tezlikni o\'rnating, dam oling va keyin nima o\'ynashini hal qiling.',
			'lurokaPlayer.picture' => 'Rasm sozlamalari',
			'lurokaPlayer.pictureDescription' => 'Kattalashtirish, HDR va videoni qayta ishlash',
			'lurokaPlayer.sound' => 'Audio va subtitrlar',
			'lurokaPlayer.audioSettings' => 'Audio sozlamalari',
			'lurokaPlayer.soundDescription' => 'Vaqt, ovoz balandligi va audio chiqishi',
			'lurokaPlayer.chooseTracks' => 'Tillarni va subtitr treklarini tanlang',
			'lurokaPlayer.tools' => 'Murakkab',
			'lurokaPlayer.toolsDescription' => 'Ijro haqida ma\'lumot va diagnostika',
			'lurokaPlayer.preferences' => 'Ijro qilish sozlamalari',
			'lurokaPlayer.preferencesDescription' => 'Sizning kinoingiz, standart sozlamalaringiz. Ovoz va taglavhalar bilan boshlang, so‘ngra oqim va ekraningizni sozlang.',
			'lurokaPlayer.streamPreferences' => 'Oqim sifati',
			'lurokaPlayer.displayPreferences' => 'Displey',
			'lurokaPlayer.enginePreferences' => 'Kengaytirilgan o\'yinchi variantlari',
			'lurokaPlayer.seekPreferences' => 'Qidiruv',
			'lurokaPlayer.watchPreferences' => 'Avtomatik ijro va oʻtkazib yuborish',
			'lurokaPlayer.rememberPreferences' => 'Afzalliklarni eslab qoling',
			'lurokaSettings.quickSetup' => 'Tez sozlash',
			'lurokaSettings.quickSetupDescription' => 'Asosiy narsalardan boshlang: televizorni ravon ko‘rish, ekranning qulay joylashishi, uy tartibi va ijro sozlamalari.',
			'lurokaSettings.experience' => 'Sizning tajribangiz',
			'lurokaSettings.experienceDescription' => 'Luroka o‘zini to‘g‘ri his qiling: tashqi ko‘rinish, tillar, ijro, kutubxonalar va ekran vaqti.',
			'lurokaSettings.remoteHint' => '↑ ↓ Kategoriyalarni koʻrib chiqish · → / Ochish opsiyalarini tanlang · ← Kategoriyalarga qaytish',
			'playerChrome.browse' => 'Bo\'limlar va navbat',
			'playerChrome.backToPlayback' => 'Ijroga qaytish',
			'playerChrome.nowPlaying' => 'HOZIR O\'YNALAYMAN',
			'playerChrome.options' => 'O\'YINCHI VARITALARI',
			'tvLayout.screenMargins' => 'Televizor ekranining chegaralari',
			'tvLayout.screenMarginsDescription' => 'Agar televizoringiz rasmning bir qismini kesib tashlasa, ilovaning chetlarini kichraytiring',
			'tvLayout.screenMarginsDefault' => '0% (standart)',
			'studios.checkingCopies' => 'Boshqa kutubxonalar tekshirilmoqda… Istalgan vaqtda maʼlum nusxani tanlang.',
			'studios.incompleteCopies' => 'Ayrim kutubxonalarni tekshirib bo‘lmadi. Ma\'lum nusxani tanlang yoki bekor qiling va qayta urinib ko\'ring.',
			'studios.partialFavorites' => 'Ayrim sevimlilarni yuklab bo‘lmadi. Qayta urinish uchun Yangilashni tanlang.',
			'studios.copyLookupFailedTitle' => 'Barcha nusxalarni tekshirib bo‘lmadi',
			'studios.copyLookupFailedMessage' => 'Ba\'zi kutubxonalar javob bermadi. Siz allaqachon topilgan nusxalardan birini ochishingiz yoki bekor qilib, qaytadan urinib ko\'rishingiz mumkin.',
			'studios.openKnownCopies' => 'Ma\'lum nusxalarni ko\'rsatish',
			'studios.browseAll' => 'Hammasini ko‘rib chiqish',
			'studios.titleCount' => ({required Object count}) => '${count} sarlavhalari',
			'studios.topRated' => 'Yuqori baholangan',
			'studios.mostWatched' => 'Kutubxonangizda eng koʻp tomosha qilingan',
			'studios.collection' => 'STUDIYA TO‘PLAMI',
			'studios.loadedTitles' => ({required Object count}) => '${count} sarlavhalari yuklandi',
			'studios.sort' => 'Sarlavhalarni saralash',
			'studios.sortTitleAscending' => 'Sarlavha A–Z',
			'studios.sortTitleDescending' => 'Sarlavha Z–A',
			'studios.sortNewest' => 'Eng yangi nashr',
			'studios.sortOldest' => 'Eng eski nashr',
			'studios.sortAdded' => 'Yaqinda qo\'shilgan',
			'studios.sortEpisodeAdded' => 'Yaqinda qo\'shilgan qism',
			'studios.sortRating' => 'Eng yuqori baho',
			'studios.title' => 'Studiyalar bo‘yicha ko‘rish',
			'studios.all' => 'Hammasi',
			'studios.movies' => 'Filmlar',
			'studios.shows' => 'Teleko\'rsatuvlar',
			'studios.loadMore' => 'Koʻproq sarlavhalarni yuklang',
			'studios.empty' => 'Hozir ko‘rinib turgan kutubxonalaringizda mos nomlar topilmadi.',
			'studios.retry' => 'Boshqa sarlavhalarni yuklab boʻlmadi — qayta urinib koʻrish uchun tanlang',
			'studios.description' => 'Kutubxonalaringizda ushbu studiyaning filmlari va seriallarini ko‘ring.',
			'dashboard.previousFeature' => 'Oldingi tanlangan sarlavha',
			'dashboard.nextFeature' => 'Keyingi tanlangan sarlavha',
			'dashboard.cinemaHome' => 'UY',
			'dashboard.episodeFallback' => 'Televizion epizod',
			'dashboard.timeLeft' => ({required Object minutes}) => '${minutes} daqiqa qoldi',
			'dashboard.timeLeftHours' => ({required Object hours, required Object minutes}) => '${hours} soat ${minutes} daqiqa qoldi',
			'dashboard.spoilerHidden' => 'Spoiler sozlamangiz tufayli epizod tafsilotlari yashirilgan.',
			'dashboard.synopsisUnavailable' => 'Bu sarlavha haqida koʻproq bilish uchun “Tafsilotlar”ni oching.',
			'dashboard.yourSpace' => 'SIZNING MAKONINGIZ',
			'dashboard.title' => 'Sizning kinoteatringiz.',
			'dashboard.subtitle' => 'Hikoyani davom ettiring yoki keyingisini toping.',
			'dashboard.featured' => 'LUROKA TAVSIYASI',
			'dashboard.jumpBackIn' => 'Ko‘rishni davom ettiring',
			'dashboard.episodeLabel' => ({required Object season, required Object episode}) => 'S${season} · E${episode}',
			'dashboard.anotherPick' => 'Boshqa tanlov',
			'dashboard.exploreSeries' => 'Seriyani o\'rganing',
			'dashboard.showFeatured' => 'Fokuslangan sarlavha tafsilotlari',
			'dashboard.showFeaturedDescription' => 'Ajratib ko‘rsatilgan kartaning posteri, qisqacha mazmuni va epizod ma’lumotlarini ko‘rsatish',
			'lurokaCatalog.aboutPerson' => 'E\'tibor markazida',
			'lurokaCatalog.biographyUnavailable' => 'Bu serverda biografiya mavjud emas.',
			'lurokaCatalog.filmography' => 'Kutubxonangizdagi film va seriallar',
			'lurokaCatalog.recommended' => 'Tavsiya etilganlar',
			'lurokaCatalog.browse' => 'Barcha sarlavhalar',
			'lurokaCatalog.collections' => 'To\'plamlar',
			'lurokaCatalog.browseHint' => 'Katalogingizni o\'rganing. Tanlovni filtrlar va saralash bilan shakllantiring.',
			'lurokaCatalog.recommendedHint' => 'Keyingi hikoyangizni toping',
			'lurokaCatalog.details' => 'Hikoya ortida',
			'referenceDetails.oneEpisodeLeft' => '1 qism qoldi',
			'referenceDetails.playAll' => 'Hammasini o\'ynang',
			'referenceDetails.present' => 'Hozirgi',
			'referenceDetails.continuing' => 'Davom etilmoqda',
			'referenceDetails.upNext' => 'Keyingi',
			'referenceDetails.episodesLeft' => ({required Object count}) => '${count} qismlari qoldi',
			'lurokaThemes.title' => 'Luroka kino palitralari',
			'lurokaThemes.coral' => 'Marjon · yarim tunda ko\'k va quyosh botishi',
			'lurokaThemes.ocean' => 'Okean · chuqur ko\'k va muz',
			'lurokaThemes.jade' => 'Jade · doim yashil va yalpiz',
			'lurokaThemes.amethyst' => 'Ametist · yarim tunda binafsha',
			'lurokaThemes.darkThemes' => 'Qorong\'u kino mavzular',
			'lurokaThemes.lightThemes' => 'Engil kino mavzulari',
			'lurokaThemes.moreThemes' => 'Ko\'proq mavzular',
			'lurokaThemes.moreThemesDescription' => 'Qo\'shimcha palitralar va maxsus ranglarni ko\'rib chiqing',
			'lurokaThemes.obsidian' => 'Obsidian · toza qora va shampan',
			'lurokaThemes.nocturne' => 'Nocturne · ko\'mir va shampan',
			'lurokaThemes.burgundy' => 'Burgundiya · baxmal vino va atirgul',
			'lurokaThemes.slate' => 'Shifer · grafit va periwinkle',
			'lurokaThemes.espresso' => 'Espresso · kakao va karamel',
			'lurokaThemes.pearl' => 'Marvarid · chinni va sapfir',
			'lurokaThemes.linen' => 'Zig\'ir mato · issiq fil suyagi va terakota',
			'lurokaThemes.sunrise' => 'Quyosh chiqishi · shaftoli va marjon',
			'lurokaThemes.coastal' => 'Sohil · tuman va okean choyi',
			'lurokaThemes.latte' => 'Latte · qaymoq va karamel',
			'lurokaThemes.sage' => 'Adaçayı · yumshoq yashil va evkalipt',
			'lurokaThemes.lavender' => 'Lavanda · lilak va chuqur binafsha',
			'customPerformance.title' => 'Ishlash va effektlar',
			'customPerformance.fireStickMode' => 'Kam quvvatli qurilma rejimi',
			'customPerformance.description' => 'Kamaytirilgan effektlar, statik fonlar, 720p gacha bo‘lgan tasvirlar va 40 MiB tasvir keshi ishlatiladi. Yoqilganda bu vizual effektlar sozlamangizni vaqtincha almashtiradi; o‘chirilganda avvalgi sozlamangiz tiklanadi.',
			'customPerformance.detailsTitle' => 'Ishlash tafsilotlari',
			'customPerformance.details' => 'Faol effektlar, tasvir keshi chegarasi va ko‘rish unumdorligi o‘lchovlari',
			'customPerformance.effectsTier' => 'Faol effektlar darajasi',
			'customPerformance.imageCache' => 'Tasvir-kesh chegarasi',
			'customPerformance.measurement' => 'Ko\'rib chiqish o\'lchovi',
			'customPerformance.measureInstructions' => '20 soniyalik namunani ishga tushiring, Bosh sahifaga qayting va masofadan boshqarish pultidan foydalanib koʻring. Natijalarni ko\'rish uchun bu yerga qayting. Taqqoslash uchun rejimni yoqish va o\'chirish bilan bir xil amallarni takrorlang. Bu video dekoder ishlashini emas, balki Flutter UI ishini o‘lchaydi.',
			'customPerformance.startSample' => '20 soniyalik namunani boshlang',
			'customPerformance.stopSample' => 'Hozir namunani tugating',
			'customPerformance.sampling' => 'Namuna olish — Bosh sahifaga qayting va koʻrib chiqing. Natijalar shu yerda saqlanadi.',
			'customPerformance.frames' => 'Namuna olingan ramkalar',
			'customPerformance.slowFrames' => 'Byudjetdan ortiq ramkalar',
			'customPerformance.buildP95' => 'UI yaratish vaqti (95 foiz)',
			'customPerformance.rasterP95' => 'Rastr vaqti (95 foiz)',
			'customPerformance.frameBudget' => 'Kadrlar uchun byudjet',
			'customPerformance.processMemory' => 'Namuna oxirida ilova jarayoni xotirasi',
			'customPerformance.noFrames' => 'Tasvirlangan kadrlar olinmadi. Boshqa namunani ishga tushiring va ilovani ko\'rib chiqing.',
			'homeLayout.title' => 'Bosh sahifani sozlash',
			'homeLayout.description' => 'Ushbu profil uchun qatorlar tartibi va koʻrinishini tanlang. Ko‘chirish yoki yashirish uchun qatorni tanlang.',
			'homeLayout.rows' => 'Uy qatorlari',
			'homeLayout.visible' => 'Ko\'rinadigan',
			'homeLayout.hidden' => 'Yashirin',
			'homeLayout.showRow' => 'Qatorni ko\'rsatish',
			'homeLayout.hideRow' => 'Qatorni yashirish',
			'homeLayout.moveUp' => 'Yuqoriga siljiting',
			'homeLayout.moveDown' => 'Pastga siljiting',
			'homeLayout.pinnedCollections' => 'Qattiqlashtirilgan kolleksiyalar',
			'homeLayout.pinInstructions' => 'To‘plam menyusini oching va Pin to Bosh sahifa-ni tanlang. Yorliqni olib tashlash uchun bu yerda mahkamlangan to‘plamni tanlang.',
			'homeLayout.pinCollection' => 'Pin uyga',
			'homeLayout.unpinCollection' => 'Bosh sahifadan olib tashlash',
			'homeLayout.reset' => 'Standart qatorlarni tiklang',
			'homeLayout.resetDescription' => 'Asl qatorlar tartibi tiklansinmi va ushbu profil uchun barcha qatorlar koʻrsatilsinmi? Qadalgan kollektsiyalaringiz saqlanadi.',
			'homeLayout.saveFailed' => 'Uyingiz tartibini saqlab bo‘lmadi. Iltimos, qayta urinib koʻring.',
			'homeLayout.emptyHint' => 'Qatorlar yashirilishi mumkin. Ularni yana koʻrsatish uchun “Uyni shaxsiylashtirish”ni oching.',
			'screenTime.title' => 'Ekran vaqti',
			'screenTime.description' => 'Ushbu profilda video tomosha qilish uchun sarflangan vaqtni ko\'ring',
			'screenTime.today' => 'Bugun',
			'screenTime.thisWeek' => 'Bu hafta',
			'screenTime.thisMonth' => 'Shu oy',
			'screenTime.lessThanMinute' => '< 1 min',
			'screenTime.minutes' => ({required Object count}) => '${count} min',
			'screenTime.hours' => ({required Object count}) => '${count} soat',
			'screenTime.hoursMinutes' => ({required Object hours, required Object minutes}) => '${hours} soat ${minutes} min',
			'activityStats.title' => 'Statistikani ko\'rish',
			'activityStats.period' => 'Davr',
			'activityStats.last7Days' => '7 kun',
			'activityStats.last30Days' => '30 kun',
			'activityStats.last90Days' => '90 kun',
			'activityStats.thisYear' => 'Yil',
			'activityStats.allTime' => 'Hammasi',
			'activityStats.heroAllTime' => 'Hamma vaqt',
			'activityStats.heroDailyAverage' => 'Kunlik o\'rtacha',
			'activityStats.consistency' => 'Muvofiqlik',
			'activityStats.currentStreak' => 'Joriy chiziq',
			'activityStats.dayCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uz'))(n, one: '${n} kun', other: '${n} kun', ), 
			'activityStats.longestStreak' => 'Eng uzun chiziq',
			'activityStats.bestDay' => 'Eng yaxshi kun',
			'activityStats.bestWeek' => 'Eng yaxshi hafta',
			'activityStats.trendTitle' => 'Tomosha vaqti',
			'activityStats.trendToday' => 'Bugun',
			'activityStats.gapDetail' => ({required Object stat, required Object range}) => '${stat} ${range} da',
			'activityStats.weekdayTitle' => 'Ish kuni bo\'yicha',
			'activityStats.hoursTitle' => 'Kunning vaqti bo\'yicha',
			'activityStats.amLabel' => 'AM',
			'activityStats.pmLabel' => 'PM',
			'activityStats.kindsTitle' => 'Kategoriya bo\'yicha',
			'activityStats.kindMovie' => 'Filmlar',
			'activityStats.kindTv' => 'televizor',
			'activityStats.kindLiveTv' => 'Jonli TV',
			'activityStats.kindMusic' => 'Musiqa',
			'activityStats.kindOther' => 'Boshqa',
			'activityStats.topTitlesTitle' => 'Eng ko\'p tomosha qilingan',
			'activityStats.sessionsTitle' => 'Oxirgi sessiyalar',
			'activityStats.showMore' => 'Ko\'proq ko\'rsatish',
			'activityStats.sessionNoTitle' => 'Noma\'lum ijro',
			'activityStats.emptyTitle' => 'Bu yerda hali hech narsa',
			'activityStats.emptyBody' => 'Biror narsani tomosha qiling va statistikangiz shu yerda to\'planadi.',
			'activityStats.noDataInPeriod' => 'Bu davrda hech qanday ijro qayd etilmagan.',
			'search.hint' => 'Filmlar, seriallar, musiqa qidirish...',
			'search.tryDifferentTerm' => 'Boshqa qidiruv soʻzini kiriting',
			'search.searchYourMedia' => 'Medialaringizdan qidiring',
			'search.enterTitleActorOrKeyword' => 'Nomini, aktyorni yoki kalit soʻzni kiriting',
			'search.people' => 'Odamlar',
			'search.recentSearches' => 'Oxirgi qidiruvlar',
			'search.clearHistory' => 'Tarixni tozalash',
			'hotkeys.setShortcutFor' => ({required Object actionName}) => '${actionName} uchun tugmalar birlashmasini oʻrnatish',
			'hotkeys.clearShortcut' => 'Birlashmani tozalash',
			'hotkeys.noShortcutSet' => 'Tugmalar birlashmasi oʻrnatilmagan',
			'hotkeys.currentShortcut' => 'Joriy birlashma:',
			'hotkeys.pressToRecord' => 'Birlashmani yozib olish uchun bosing',
			'hotkeys.recordingShortcut' => 'Endi tugmalarni bosing',
			'hotkeys.actions.playPause' => 'Ijro/Pauza',
			'hotkeys.actions.volumeUp' => 'Ovozni balandlatish',
			'hotkeys.actions.volumeDown' => 'Ovozni pastlatish',
			'hotkeys.actions.seekForward' => ({required Object seconds}) => 'Oldinga oʻtkazish (${seconds}son)',
			'hotkeys.actions.seekBackward' => ({required Object seconds}) => 'Orqaga oʻtkazish (${seconds}son)',
			'hotkeys.actions.fullscreenToggle' => 'Toʻliq ekranga oʻtish/chiqish',
			'hotkeys.actions.muteToggle' => 'Ovozni oʻchirish/yoqish',
			'hotkeys.actions.subtitleToggle' => 'Subtitrni yoqish/oʻchirish',
			'hotkeys.actions.audioTrackNext' => 'Keyingi audio yoʻlak',
			'hotkeys.actions.subtitleTrackNext' => 'Keyingi subtitr yoʻlagi',
			'hotkeys.actions.chapterNext' => 'Keyingi boʻlim',
			'hotkeys.actions.chapterPrevious' => 'Oldingi boʻlim',
			'hotkeys.actions.episodeNext' => 'Keyingi qism',
			'hotkeys.actions.episodePrevious' => 'Oldingi qism',
			'hotkeys.actions.speedIncrease' => 'Tezlikni oshirish',
			'hotkeys.actions.speedDecrease' => 'Tezlikni kamaytirish',
			'hotkeys.actions.speedReset' => 'Tezlikni qayta oʻrnatish',
			'hotkeys.actions.zoomIn' => 'Yaqinlashtirish',
			'hotkeys.actions.zoomOut' => 'Uzoqlashtirish',
			'hotkeys.actions.zoomReset' => 'Masshtabni qayta oʻrnatish',
			'hotkeys.actions.subSeekNext' => 'Keyingi subtitrga oʻtish',
			'hotkeys.actions.subSeekPrev' => 'Oldingi subtitrga oʻtish',
			'hotkeys.actions.shaderToggle' => 'Sheyderlarni yoqish/oʻchirish',
			'hotkeys.actions.skipMarker' => 'Intro/Titrlarni oʻtkazib yuborish',
			'hotkeys.actions.screenshot' => 'Ekran tasvirini olish',
			'fileInfo.title' => 'Fayl haqida maʼlumot',
			'fileInfo.overview' => 'Tavsif',
			'fileInfo.video' => 'Video',
			'fileInfo.audio' => 'Audio',
			'fileInfo.subtitles' => 'Subtitrlar',
			'fileInfo.images' => 'Ichiga joylangan rasmlar',
			'fileInfo.dataStreams' => 'Maʼlumot oqimlari',
			'fileInfo.lyrics' => 'Qoʻshiq matni',
			'fileInfo.file' => 'Fayl',
			'fileInfo.attachments' => 'Biriktirilgan fayllar',
			'fileInfo.delivery' => 'Yetkazib berish',
			'fileInfo.versionCounter' => ({required Object index, required Object count}) => '${index}-versiya (${count} tadan)',
			'fileInfo.fileCounter' => ({required Object index, required Object count}) => '${index}-fayl (${count} tadan)',
			'fileInfo.noStreams' => 'Server ushbu fayl uchun oqimlar mavjud emasligini bildirdi.',
			'fileInfo.copyPath' => 'Yoʻlni nusxalash',
			'fileInfo.pathCopied' => 'Fayl yoʻli nusxalandi',
			'fileInfo.codec' => 'Kodek',
			'fileInfo.codecTag' => 'Kodek yorligʻi',
			'fileInfo.resolution' => 'Oʻlchamlari (Resolution)',
			'fileInfo.codedResolution' => 'Kodlangan oʻlcham',
			'fileInfo.bitrate' => 'Bitreyt (Bitrate)',
			'fileInfo.frameRate' => 'Kadrlar chastotasi',
			'fileInfo.rotation' => 'Burilish',
			'fileInfo.comment' => 'Izoh',
			'fileInfo.audioDescription' => 'Audio tavsif',
			'fileInfo.headerCompression' => 'Sarlavha siqish',
			'fileInfo.sidecarFile' => 'Yordamchi fayl',
			'fileInfo.transportTimestamp' => 'Transport vaqt belgisi',
			'fileInfo.displayOffset' => 'Koʻrsatish siljishi',
			'fileInfo.previewFailureCode' => 'Oldindan koʻrish xatosi kodi',
			'fileInfo.previewRetries' => 'Oldindan koʻrish urinishlari',
			'fileInfo.aspectRatio' => 'Tomonlar nisbati',
			'fileInfo.pixelAspectRatio' => 'Piksel tomonlar nisbati',
			'fileInfo.profile' => 'Profil',
			'fileInfo.level' => 'Daraja',
			'fileInfo.bitDepth' => 'Bit chuqurligi',
			'fileInfo.pixelFormat' => 'Piksel formati',
			'fileInfo.colorSpace' => 'Rang makoni',
			'fileInfo.colorRange' => 'Rang diapazoni',
			'fileInfo.colorPrimaries' => 'Asosiy ranglar',
			'fileInfo.colorTransfer' => 'Rang uzatish',
			'fileInfo.chromaSubsampling' => 'Rangli subdiskretlash',
			'fileInfo.chromaLocation' => 'Chroma joylashuvi',
			'fileInfo.scanType' => 'Skanerlash turi',
			'fileInfo.interlaced' => 'Interleys',
			'fileInfo.anamorphic' => 'Anamorfik',
			'fileInfo.referenceFrames' => 'Tayanch kadrlar',
			'fileInfo.dynamicRange' => 'Dinamik diapazon',
			'fileInfo.dolbyVision' => 'Dolby Vision',
			'fileInfo.dolbyVisionLevel' => 'Dolby Vision darajasi',
			'fileInfo.dolbyVisionVersion' => 'Dolby Vision versiyasi',
			'fileInfo.dolbyVisionLayers' => 'Dolby Vision qatlamlari',
			'fileInfo.baseLayerCompatibility' => 'Asosiy qatlam mosligi',
			'fileInfo.avcBitstream' => 'AVC bit oqimi',
			'fileInfo.nalLengthSize' => 'NAL uzunlik oʻlchami',
			'fileInfo.scalingMatrix' => 'Maxsus masshtablash matritsasi',
			'fileInfo.streamIdentifier' => 'Oqim identifikatori',
			'fileInfo.streamIndex' => 'Oqim indeksi',
			'fileInfo.streamId' => 'Oqim ID-si',
			'fileInfo.language' => 'Til',
			'fileInfo.languageCode' => 'Til kodi',
			'fileInfo.streamTitle' => 'Trek nomi',
			'fileInfo.channels' => 'Kanallar',
			'fileInfo.sampleRate' => 'Namuna tezligi',
			'fileInfo.spatialAudio' => 'Fazoviy audio',
			'fileInfo.textBased' => 'Matnga asoslangan',
			'fileInfo.subtitleFormat' => 'Yordamchi format',
			'fileInfo.provider' => 'Provayder',
			'fileInfo.matchScore' => 'Moslik darajasi',
			'fileInfo.externalDelivery' => 'Alohida uzatilishi mumkin',
			'fileInfo.sidecarPath' => 'Yordamchi fayl yoʻli',
			'fileInfo.sourceStream' => 'Nusxa olingan manba',
			'fileInfo.temporary' => 'Vaqtinchalik',
			'fileInfo.timeBase' => 'Vaqt bazasi',
			'fileInfo.overallBitrate' => 'Umumiy bitreyt',
			'fileInfo.path' => 'Yoʻl',
			'fileInfo.fileName' => 'Fayl nomi',
			'fileInfo.size' => 'Hajmi',
			'fileInfo.totalSize' => 'Umumiy hajm',
			'fileInfo.container' => 'Konteyner',
			'fileInfo.duration' => 'Davomiyligi',
			'fileInfo.previewThumbnails' => 'Oldindan koʻrish eskizlari',
			'fileInfo.previewIndex' => 'Oldindan koʻrish indeksi',
			'fileInfo.packetLength' => 'Paket uzunligi',
			'fileInfo.filePresent' => 'Fayl mavjud',
			'fileInfo.fileReadable' => 'Server tomonidan oʻqiladigan',
			'fileInfo.streamPath' => 'Oqim yoʻli',
			'fileInfo.optimizedForStreaming' => 'Oqimli uzatish uchun optimallashtirilgan',
			'fileInfo.has64bitOffsets' => '64-bitli siljishlar',
			'fileInfo.protocol' => 'Protokol',
			'fileInfo.mediaType' => 'Media turi',
			'fileInfo.sourceKind' => 'Manba turi',
			'fileInfo.optimizedVersion' => 'Optimallashtirilgan versiya',
			'fileInfo.optimizationTarget' => 'Optimallashtirish maqsadi',
			'fileInfo.deletedAt' => 'Oʻchirilgan',
			'fileInfo.remoteSource' => 'Masofaviy manba',
			'fileInfo.infiniteStream' => 'Cheksiz oqim',
			'fileInfo.directPlay' => 'Toʻgʻridan-toʻgʻri ijro',
			'fileInfo.directStream' => 'Toʻgʻridan-toʻgʻri oqim',
			'fileInfo.transcoding' => 'Qayta kodlash',
			'fileInfo.etag' => 'ETag',
			'fileInfo.versionId' => 'Versiya ID-si',
			'fileInfo.fileId' => 'Fayl ID-si',
			'fileInfo.defaultAudioTrack' => 'Standart audio trek',
			'fileInfo.defaultSubtitleTrack' => 'Standart subtitr treki',
			'fileInfo.subtitlesOff' => 'Oʻchirilgan',
			'fileInfo.flagDefault' => 'Standart',
			'fileInfo.flagForced' => 'Majburiy',
			'fileInfo.flagSelected' => 'Tanlangan',
			'fileInfo.flagExternal' => 'Tashqi',
			'fileInfo.flagHearingImpaired' => 'Eshitishida nuqsoni borlar uchun',
			'fileInfo.flagDub' => 'Dublyaj',
			'fileInfo.flagOriginal' => 'Asl',
			'fileInfo.channelsMono' => 'Mono',
			'fileInfo.dolbyVisionProfile' => ({required Object profile}) => 'Profil ${profile}',
			'mediaMenu.markAsWatched' => 'Koʻrilgan deb belgilash',
			'mediaMenu.markAsUnwatched' => 'Koʻrilmagan deb belgilash',
			'mediaMenu.clearProgress' => 'Aniq taraqqiyot',
			'mediaMenu.removeFromContinueWatching' => '"Tomoshani davom ettirish"dan oʻchirish',
			'mediaMenu.viewDetails' => 'Batafsil koʻrish',
			'mediaMenu.goToSeries' => 'Serialga oʻtish',
			'mediaMenu.shufflePlay' => 'Aralashtirib ijro etish',
			'mediaMenu.shuffleNotAvailableOffline' => 'Aralashtirib ijro etish oflayn rejimda mavjud emas',
			'mediaMenu.fileInfo' => 'Fayl haqida maʼlumot',
			'mediaMenu.deleteEpisodeFromServer' => 'Qismni serverdan oʻchirish',
			'mediaMenu.deleteSeasonFromServer' => 'Mavsumni serverdan oʻchirish',
			'mediaMenu.deleteShowFromServer' => 'Shouni serverdan oʻchirish',
			'mediaMenu.deleteMovieFromServer' => 'Filmni serverdan oʻchirish',
			'mediaMenu.deleteEpisodeTitle' => 'Ushbu qism oʻchirilsinmi?',
			'mediaMenu.deleteSeasonTitle' => 'Ushbu mavsum oʻchirilsinmi?',
			'mediaMenu.deleteShowTitle' => 'Ushbu shou oʻchirilsinmi?',
			'mediaMenu.deleteMovieTitle' => 'Ushbu film oʻchirilsinmi?',
			'mediaMenu.deleteEpisodeConfirm' => 'Qismni oʻchirish',
			'mediaMenu.deleteSeasonConfirm' => 'Mavsumni oʻchirish',
			'mediaMenu.deleteShowConfirm' => 'Shouni oʻchirish',
			'mediaMenu.deleteMovieConfirm' => 'Filmni oʻchirish',
			'mediaMenu.deleteAnyway' => 'Baribir oʻchirish',
			'mediaMenu.confirmDeleteTarget' => ({required Object title}) => '${title} serveringizdan butunlay oʻchirilsinmi?',
			'mediaMenu.deleteMultipleWarning' => 'Bu barcha qismlar va fayllarga taʼsir qiladi.',
			'mediaMenu.deleteEpisodeCountWarning' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uz'))(n, one: 'Bu undagi barcha ${n} qismni va uning faylini oʻchiradi.', other: 'Bu undagi barcha ${n} qismni va ularning fayllarini oʻchiradi.', ), 
			'mediaMenu.deleteMultiPartWarning' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uz'))(n, one: 'Bu element ${n} fayl shaklida saqlanadi va u oʻchiriladi.', other: 'Bu element ${n} faylda saqlanadi va ularning barchasi oʻchiriladi.', ), 
			'mediaMenu.deleteSharedFileHeading' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uz'))(n, one: 'Xuddi shu faylda yana ${n} qism saqlanadi va u ham oʻchiriladi:', other: 'Xuddi shu faylda yana ${n} qism saqlanadi va ular ham oʻchiriladi:', ), 
			'mediaMenu.deleteScopeUnverifiedProbeFailed' => 'Luroka qaysi fayllar olib tashlanishini tekshira olmadi, shuning uchun u yuqorida koʻrsatilgan elementdan koʻproq narsani oʻchirishi mumkin. Bekor qilib qaytadan urining yoki baribir oʻchiring.',
			'mediaMenu.deleteScopeUnverifiedNoFileInfo' => 'Serveringiz ushbu element uchun fayl tafsilotlarini taqdim etmadi, shuning uchun Luroka qaysi fayllar olib tashlanishini tekshira olmaydi. U yuqorida koʻrsatilgan elementdan koʻproq narsani oʻchirishi mumkin.',
			'mediaMenu.mediaDeletedSuccessfully' => 'Media elementi muvaffaqiyatli oʻchirildi',
			'mediaMenu.mediaFailedToDelete' => 'Media elementini oʻchirib boʻlmadi',
			'mediaMenu.rate' => 'Baho berish',
			'mediaMenu.playFromBeginning' => 'Boshidan ijro etish',
			'mediaMenu.playVersion' => 'Versiyani ijro etish...',
			'rateSheet.title' => 'Baho berish',
			'rateSheet.server' => 'Server',
			'rateSheet.favorite' => 'Tanlangan',
			'rateSheet.favorited' => 'Tanlanganlarga qoʻshildi',
			'rateSheet.saved' => 'Saqlandi',
			'rateSheet.notAvailable' => 'Moslik topilmadi',
			'rateSheet.noConnectedServices' => 'Baho berish uchun Sozlamalardan xizmatni ulang.',
			'accessibility.mediaCardMovie' => ({required Object title}) => '${title}, film',
			'accessibility.mediaCardShow' => ({required Object title}) => '${title}, TV shou',
			'accessibility.mediaCardEpisode' => ({required Object title, required Object episodeInfo}) => '${title}, ${episodeInfo}',
			'accessibility.mediaCardSeason' => ({required Object title, required Object seasonInfo}) => '${title}, ${seasonInfo}',
			'accessibility.mediaCardWatched' => 'koʻrilgan',
			'accessibility.mediaCardPartiallyWatched' => ({required Object percent}) => '%${percent} koʻrilgan',
			'accessibility.mediaCardUnwatched' => 'koʻrilmagan',
			'accessibility.tapToPlay' => 'Ijro etish uchun bosing',
			'accessibility.decrease' => 'Kamaytirish',
			'accessibility.increase' => 'Oshirish',
			'accessibility.decreaseValue' => ({required Object label}) => '${label} qiymatini kamaytirish',
			'accessibility.increaseValue' => ({required Object label}) => '${label} qiymatini oshirish',
			'accessibility.hue' => 'Rang jilosi',
			'accessibility.saturation' => 'Toʻyinganlik',
			'accessibility.brightness' => 'Yorqinlik',
			'accessibility.hexColor' => 'Hex rangi',
			'accessibility.expandText' => 'Matnni yoyish',
			'accessibility.collapseText' => 'Matnni yigʻish',
			'accessibility.alphabetNavigation' => 'Alifboli navigatsiya',
			'accessibility.alphabetScrollHint' => 'Harflar boʻyicha oʻtish uchun yuqoriga yoki pastga suring',
			'accessibility.rowColumnPosition' => ({required Object row, required Object rowCount, required Object column, required Object columnCount}) => 'Qator ${row} / ${rowCount}, ustun ${column} / ${columnCount}',
			'accessibility.rowPosition' => ({required Object row, required Object rowCount}) => 'Qator ${row} / ${rowCount}',
			'accessibility.autoScrollPlay' => 'Avtomatik aylantirishni boshlash',
			'accessibility.autoScrollPause' => 'Avtomatik aylantirishni pauza qilish',
			'accessibility.hueShort' => 'H',
			'accessibility.saturationShort' => 'S',
			'accessibility.valueShort' => 'V',
			'tooltips.shufflePlay' => 'Aralashtirib ijro etish',
			'tooltips.playTrailer' => 'Treylerni koʻrish',
			'tooltips.markAsWatched' => 'Koʻrilgan deb belgilash',
			'tooltips.markAsUnwatched' => 'Koʻrilmagan deb belgilash',
			'audioTracks.track' => ({required Object n}) => 'Audio yoʻlak ${n}',
			'videoControls.audioLabel' => 'Ovoz',
			'videoControls.subtitlesLabel' => 'Subtitr',
			'videoControls.addTime' => ({required Object amount, required Object unit}) => '+${amount}${unit}',
			'videoControls.letterbox' => 'Keng ekran (Letterbox)',
			'videoControls.fillScreen' => 'Ekranni toʻldirish',
			'videoControls.stretch' => 'Choʻzish',
			'videoControls.lockRotation' => 'Aylanishni qulflash',
			'videoControls.unlockRotation' => 'Aylanish qulfini ochish',
			'videoControls.timerActive' => 'Taymer faol',
			'videoControls.playbackWillPauseIn' => ({required Object duration}) => 'Ijro ${duration}-dan keyin toʻxtatiladi',
			'videoControls.sleepTimerEndOfVideo' => 'Joriy videoning oxiri',
			'videoControls.sleepTimerStopAtHeader' => 'Toʻxtash vaqti',
			'videoControls.sleepTimerDurationHeader' => 'Taymer',
			'videoControls.playbackWillPauseAtEnd' => 'Ijro ushbu videoning oxirida toʻxtatiladi',
			'videoControls.stillWatching' => 'Hali ham tomosha qilyapsizmi?',
			'videoControls.pausingIn' => ({required Object seconds}) => '${seconds}son-dan keyin toʻxtatiladi',
			'videoControls.continueWatching' => 'Davom ettirish',
			'videoControls.autoPlayNext' => 'Keyingisini avtomatik ijro etish',
			'videoControls.playNext' => 'Keyingisini ijro etish',
			'videoControls.playButton' => 'Ijro etish',
			'videoControls.pauseButton' => 'Pauza',
			'videoControls.playbackPaused' => 'Pauza',
			'videoControls.playbackResumed' => 'Ijro etilmoqda',
			'videoControls.loadingVideo' => 'Video yuklanmoqda',
			'videoControls.showPlaybackControls' => 'Boshqaruv tugmalarini koʻrsatish',
			'videoControls.hidePlaybackControls' => 'Boshqaruv tugmalarini yashirish',
			'videoControls.seekBackwardButton' => ({required Object seconds}) => '${seconds} soniya orqaga oʻtkazish',
			'videoControls.seekForwardButton' => ({required Object seconds}) => '${seconds} soniya oldinga oʻtkazish',
			'videoControls.previousButton' => 'Oldingi qism',
			_ => null,
		} ?? switch (path) {
			'videoControls.nextButton' => 'Keyingi qism',
			'videoControls.previousChapterButton' => 'Oldingi boʻlimcha',
			'videoControls.nextChapterButton' => 'Keyingi boʻlimcha',
			'videoControls.muteButton' => 'Ovozni oʻchirish',
			'videoControls.unmuteButton' => 'Ovozni yoqish',
			'videoControls.settingsButton' => 'Ijro sozlamalari',
			'videoControls.infoButton' => 'Ma\'lumot',
			'videoControls.tracksButton' => 'Ovoz va subtitrlar',
			'videoControls.chaptersButton' => 'Boʻlimlar',
			'videoControls.versionQualityButton' => 'Versiya va sifat',
			'videoControls.versionColumnHeader' => 'Versiya',
			'videoControls.qualityColumnHeader' => 'Sifat',
			'videoControls.qualityOriginal' => 'Asl nusxa',
			'videoControls.qualityPresetLabel' => ({required Object resolution, required Object bitrate}) => '${resolution}p ${bitrate} Mbps',
			'videoControls.transcodeUnavailableFallback' => 'Qayta kodlash mavjud emas — asl sifatda ijro etiladi',
			'videoControls.subtitleUnavailableFallback' => 'Tanlangan subtitr yuklanmadi',
			'videoControls.pipButton' => 'Rasm ichida rasm rejimi',
			'videoControls.aspectRatioButton' => 'Tomonlar nisbati',
			'videoControls.ambientLighting' => 'Atrof-muhit yoritilishi',
			'videoControls.fullscreenButton' => 'Toʻliq ekranga oʻtish',
			'videoControls.exitFullscreenButton' => 'Toʻliq ekrandan chiqish',
			'videoControls.alwaysOnTopButton' => 'Har doim ustida',
			'videoControls.rotationLockButton' => 'Aylanish qulfi',
			'videoControls.lockScreen' => 'Ekranni qulflash',
			'videoControls.screenLockButton' => 'Ekran qulfi',
			'videoControls.longPressToUnlock' => 'Qulfdan chiqarish uchun bosib turing',
			'videoControls.timelineSlider' => 'Video vaqt shkalasi',
			'videoControls.volumeSlider' => 'Ovoz balandligi',
			'videoControls.endsAt' => ({required Object time}) => 'Tugash vaqti: ${time}',
			'videoControls.pipActive' => 'Rasm ichida rasm rejimida ijro etilmoqda',
			'videoControls.pipFailed' => 'PiP rejimini ishga tushirishda xatolik',
			'videoControls.screenshotSaved' => 'Ekran tasviri saqlandi',
			'videoControls.screenshotFailed' => 'Skrinshotni olib bo‘lmadi',
			'videoControls.zoomPercent' => ({required Object percent}) => 'Masshtab %${percent}',
			'videoControls.volumePercent' => ({required Object percent}) => 'Ovoz ${percent}%',
			'videoControls.pipErrors.androidVersion' => 'Android 8.0 yoki undan yangisi talab qilinadi',
			'videoControls.pipErrors.iosVersion' => 'iOS 15.0 yoki undan yangisi talab qilinadi',
			'videoControls.pipErrors.permissionDisabled' => 'PiP rejimi oʻchirilgan. Tizim sozlamalaridan yoqing.',
			'videoControls.pipErrors.notSupported' => 'Qurilma PiP rejimini qoʻllab-quvvatlamaydi',
			'videoControls.pipErrors.voSwitchFailed' => 'PiP uchun video chiqishini almashtirib boʻlmadi',
			'videoControls.pipErrors.failed' => 'PiP rejimini ishga tushirishda xatolik',
			'videoControls.pipErrors.prepareFailed' => 'PiP rejimini tayyorlab boʻlmadi',
			'videoControls.pipErrors.unknown' => ({required Object error}) => 'Xatolik yuz berdi: ${error}',
			'videoControls.chapters' => 'Boʻlimlar',
			'videoControls.noChaptersAvailable' => 'Boʻlimlar mavjud emas',
			'videoControls.queue' => 'Navbat',
			'videoControls.noQueueItems' => 'Navbatda elementlar yoʻq',
			'videoControls.noAudioDevicesAvailable' => 'Mavjud audio qurilmalar yoʻq',
			'videoControls.searchSubtitles' => 'Subtitr qidirish',
			'videoControls.language' => 'Til',
			'videoControls.noSubtitlesFound' => 'Subtitr topilmadi',
			'videoControls.subtitleDownloaded' => 'Subtitr yuklab olindi',
			'videoControls.subtitleDownloadedNotApplied' => 'Subtitr yuklab olindi, lekin qoʻllanilmadi',
			'videoControls.subtitleDownloadFailed' => 'Subtitrni yuklab boʻlmadi',
			'videoControls.searchLanguages' => 'Tillardan qidirish...',
			'videoControls.skipIntro' => 'Kirishni oʻtkazish',
			'videoControls.skipCredits' => 'Titrlardan oʻtish',
			'videoControls.nextEpisode' => 'Keyingi qism',
			'videoControls.subtitleTrack' => ({required Object n}) => 'Yoʻlak ${n}',
			'videoControls.subtitleFile' => ({required Object name}) => 'Subtitr ${name}',
			'videoControls.forcedTrack' => ({required Object label}) => '${label} (Majburiy)',
			'videoControls.osdSubtitlesOff' => 'Subtitr: Oʻchirilgan',
			'videoControls.osdSubtitles' => ({required Object track}) => 'Subtitr: ${track}',
			'videoControls.osdAudio' => ({required Object track}) => 'Ovoz: ${track}',
			'messages.markedAsWatched' => 'Koʻrilgan deb belgilandi',
			'messages.markedAsUnwatched' => 'Koʻrilmagan deb belgilandi',
			'messages.markedAsWatchedOffline' => 'Koʻrilgan deb belgilandi (tarmoqqa ulanganda sinxronlanadi)',
			'messages.markedAsUnwatchedOffline' => 'Koʻrilmagan deb belgilandi (tarmoqqa ulanganda sinxronlanadi)',
			'messages.autoRemovedWatchedDownload' => ({required Object title}) => 'Avtomatik oʻchirildi: ${title}',
			'messages.autoRemovedWatchedDownloads' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uz'))(n, one: 'Koʻrilgan ${n} yuklama avtomatik oʻchirildi', other: 'Koʻrilgan ${n} yuklama avtomatik oʻchirildi', ), 
			'messages.removedFromContinueWatching' => '"Tomoshani davom ettirish"dan oʻchirildi',
			'messages.errorLoading' => ({required Object error}) => 'Xatolik: ${error}',
			'messages.searchPartialResults' => 'Baʼzi media serverlarda qidiruv amalga oshmadi. Mavjud natijalar koʻrsatilmoqda.',
			'messages.streamInterrupted' => 'Oqim uzildi. Qayta urinish uchun ijro tugmasini bosing yoki boshqa joyga oʻting.',
			'messages.liveStreamInterrupted' => 'Jonli oqim uzildi. Qayta urinish uchun ijro tugmasini bosing.',
			'messages.fileInfoNotAvailable' => 'Fayl haqida maʼlumot mavjud emas',
			'messages.playbackAuthenticationRequired' => 'Ushbu elementni ijro etish uchun serverga qaytadan kiring.',
			'messages.playbackServerUnavailable' => 'Media serveri mavjud emas. Keyinroq qaytadan urinib koʻring.',
			'messages.playbackDataInvalid' => 'Server notoʻgʻri ijro maʼlumotlarini qaytardi.',
			'messages.playbackCancelled' => 'Ijro bekor qilindi.',
			'messages.playbackFailed' => 'Ijroni ishga tushirishda xatolik.',
			'messages.playbackFailedDetail' => ({required Object error}) => 'Ijroni boshlab boʻlmadi: ${error}',
			'messages.audioOutputFailed' => 'Audio chiqishi javob bermay qoldi. Televizor yoki resiverning audio ulanishini tekshiring; boshqa ilovalarda ham ovoz boʻlmasa, qurilmani qayta ishga tushiring.',
			'messages.mediaUnavailable' => 'Bu kontent endi mavjud emas.',
			'messages.errorLoadingFileInfo' => ({required Object error}) => 'Fayl maʼlumotlarini yuklashda xatolik: ${error}',
			'messages.errorLoadingSeries' => 'Serialni yuklashda xatolik',
			'messages.musicNotSupported' => 'Musiqa ijrosi hali qoʻllab-quvvatlanmaydi',
			'messages.noDescriptionAvailable' => 'Tavsif mavjud emas',
			'messages.noProfilesAvailable' => 'Profillar yoʻq',
			'messages.contactAdminForProfiles' => 'Profil qoʻshish uchun administratorga murojaat qiling',
			'messages.unableToDetermineLibrarySection' => 'Kutubxona boʻlimini aniqlab boʻlmadi',
			'messages.logsCleared' => 'Jurnallar tozalandi',
			'messages.logsCopied' => 'Jurnallar nusxalandi',
			'messages.noLogsAvailable' => 'Jurnallar yoʻq',
			'messages.libraryScanning' => ({required Object title}) => '"${title}" skanerlanmoqda...',
			'messages.libraryScanStarted' => ({required Object title}) => '"${title}" uchun skanerlash boshlandi',
			'messages.libraryScanFailed' => ({required Object error}) => 'Kutubxonani skanerlab boʻlmadi: ${error}',
			'messages.metadataRefreshing' => ({required Object title}) => '"${title}" uchun metamaʼlumotlar yangilanmoqda...',
			'messages.metadataRefreshStarted' => ({required Object title}) => '"${title}" uchun metamaʼlumotlarni yangilash boshlandi',
			'messages.metadataRefreshFailed' => ({required Object error}) => 'Metamaʼlumotlarni yangilab boʻlmadi: ${error}',
			'messages.logoutConfirm' => 'Haqiqatan ham chiqmoqchimisiz?',
			'messages.noSeasonsFound' => 'Mavsumlar topilmadi',
			'messages.seasonsLoadFailed' => 'Mavsumlarni yuklab boʻlmadi',
			'messages.noEpisodesFound' => 'Birinchi mavsumda qismlar topilmadi',
			'messages.noEpisodesFoundGeneral' => 'Qismlar topilmadi',
			'messages.episodesLoadFailed' => 'Qismlarni yuklab boʻlmadi',
			'messages.noResultsFound' => 'Natijalar topilmadi',
			'messages.sleepTimerSet' => ({required Object label}) => 'Uyqu taymeri ${label} vaqtiga oʻrnatildi',
			'messages.noItemsAvailable' => 'Elementlar yoʻq',
			'messages.failedToCreatePlayQueueNoItems' => 'Ijro navbatini yaratib boʻlmadi — elementlar yoʻq',
			'messages.failedPlayback' => ({required Object action, required Object error}) => '${action} muvaffaqiyatsiz tugadi: ${error}',
			'messages.switchingToCompatiblePlayer' => 'Mos keluvchi pleyerga oʻtilmoqda...',
			'messages.serverLimitTitle' => 'Ijro etishda xatolik',
			'messages.serverLimitBody' => 'Server xatoligi (HTTP 500). Cheklov ushbu seansni rad etdi.',
			'messages.mediaUnreadableTitle' => 'Fayl mavjud emas',
			'messages.mediaUnreadableBody' => 'Server bu elementni topdi, lekin uning faylini oʻqiy olmadi (HTTP 404). Fayl koʻchirilgan, oʻchirilgan yoki uning saqlash joyi oflayn boʻlishi mumkin. Server egasidan faylni tekshirishni va kutubxonani qayta skanerlashni soʻrang.',
			'messages.serverBusyTitle' => 'Oqim mavjud emas',
			'messages.serverBusyBody' => 'Server bu faylni uzatishni qayta-qayta rad etdi (HTTP 503). U qayta ishga tushayotgan yoki band boʻlishi, yoxud fayl saqlanadigan xotira oflayn boʻlishi mumkin. Birozdan keyin qaytadan urinib koʻring. Muammo davom etsa, server egasidan server va fayl xotirasini tekshirishni soʻrang.',
			'messages.playbackNotAllowedTitle' => 'Ijro etishga ruxsat berilmagan',
			'messages.playbackNotAllowedBody' => 'Server bu elementni uzatishni rad etdi (HTTP 403). Hisobingizda uni ijro etishga ruxsat boʻlmasligi yoki server ijroga faqat oʻzining mahalliy tarmogʻida ruxsat berishi mumkin.',
			'messages.logsUploaded' => 'Jurnallar yuklandi',
			'messages.logsUploadFailed' => 'Jurnallarni yuklab boʻlmadi',
			'messages.logId' => 'Jurnal ID-si',
			'messages.burnedSubtitlesUseMenu' => 'Subtitrlar bu oqim tasviriga singdirilgan. Ularni subtitr menyusidan oʻzgartiring.',
			'messages.noVideoUrl' => 'Video URL mavjud emas',
			'messages.playbackNoMediaSources' => 'Server ijro etiladigan media manbalarini qaytarmadi',
			'messages.playbackDataNotPrepared' => 'Ijro maʼlumotlari tayyor boʻlishidan oldin boshlandi',
			'messages.streamSelectionUnavailable' => 'Bu manba uchun oqim tanlash imkoni yoʻq',
			'messages.streamSelectionFailed' => 'Tanlangan oqimlarni qoʻllab boʻlmadi',
			'messages.trackSelectionNotRemembered' => 'Bu trek tanlovi faqat joriy ijroga qoʻllanadi.',
			'messages.serverUnavailableForProfile' => 'Faol profil uchun hech qanday server mavjud emas',
			'sourceLibraries.title' => 'Sizning serverlaringiz va kutubxonalaringiz',
			'sourceLibraries.description' => 'Luroka bosh sahifa, qidiruv, kashfiyotdagi mavjudlik va studiyalar uchun foydalanadigan kutubxonalarni tanlang. Bosh sahifadagi qatorlar tartibi alohida sozlanadi.',
			'sourceLibraries.partial' => 'Ba\'zi serverlarni tekshirib bo\'lmadi. Ushbu kutubxonalar uchun saqlangan tanlovlaringiz saqlanadi. Qayta urinish uchun yangilang.',
			'sourceLibraries.loadFailed' => 'Kutubxonalaringizni yuklab bo‘lmadi. Ulanishni tekshiring va qaytadan urining.',
			'sourceLibraries.notSelected' => 'Siz tanlagan kutubxonalarda mavjud emas.',
			'sourceLibraries.checkOthers' => 'Boshqa ulangan manbalarni tekshiring',
			'sourceLibraries.otherSources' => 'Boshqa ulangan manbalarda mavjud',
			'sourceLibraries.playOnce' => 'Bir marta o\'ynang',
			'sourceLibraries.includeLibrary' => 'Ushbu kutubxonani qo\'shing',
			'sourceLibraries.noOthers' => 'Boshqa ulangan manbalarda hech qanday nusxa topilmadi.',
			'sourceLibraries.chooseOne' => 'Davom etish uchun kamida bitta kutubxona tanlang.',
			'subtitlingStyling.text' => 'Matn',
			'subtitlingStyling.border' => 'Hoshiya',
			'subtitlingStyling.background' => 'Fon',
			'subtitlingStyling.fontSize' => 'Shrift oʻlchami',
			'subtitlingStyling.textColor' => 'Matn rangi',
			'subtitlingStyling.borderSize' => 'Hoshiya oʻlchami',
			'subtitlingStyling.borderColor' => 'Hoshiya rangi',
			'subtitlingStyling.backgroundOpacity' => 'Fon shaffofligi',
			'subtitlingStyling.backgroundColor' => 'Fon rangi',
			'subtitlingStyling.position' => 'Joylashuvi',
			'subtitlingStyling.assOverride' => 'ASS qayta aniqlash',
			'subtitlingStyling.overrideScale' => 'Masshtablash',
			'subtitlingStyling.overrideForce' => 'Majburlash',
			'subtitlingStyling.overrideStrip' => 'Formatlashni olib tashlash',
			'subtitlingStyling.positionTop' => 'Yuqori',
			'subtitlingStyling.positionBottom' => 'Pastki',
			'subtitlingStyling.useMargins' => 'Chekkalardan foydalanish',
			'subtitlingStyling.useMarginsDescription' => 'Matnli subtitrlarga videodan tashqaridagi joydan foydalanishga ruxsat berish. Uslubiy subtitrlar oʻz joylashuvini saqlashi mumkin.',
			'subtitlingStyling.anchorToScreen' => 'Ekranga mahkamlash',
			'subtitlingStyling.anchorToScreenDescription' => 'Matnli subtitrlarni keng ekranli video ostidagi qora hoshiyalarda koʻrsatish',
			'subtitlingStyling.bold' => 'Qalin',
			'subtitlingStyling.italic' => 'Qiya',
			'subtitlingStyling.renderResolution' => 'Renderlash oʻlchamlari',
			'subtitlingStyling.renderResolutionScreen' => 'Ekran oʻlchamlari',
			'subtitlingStyling.renderResolutionVideo' => 'Video oʻlchamlari',
			'mpvConfig.title' => 'mpv.conf',
			'mpvConfig.description' => 'Kengaytirilgan video pleyer sozlamalari',
			'mpvConfig.presets' => 'Tayyor sozlamalar',
			'mpvConfig.noPresets' => 'Saqlangan sozlamalar yoʻq',
			'mpvConfig.saveAsPreset' => 'Sozlama sifatida saqlash...',
			'mpvConfig.presetName' => 'Sozlama nomi',
			'mpvConfig.presetNameHint' => 'Ushbu sozlama uchun nom kiriting',
			'mpvConfig.loadPreset' => 'Yuklash',
			'mpvConfig.deletePreset' => 'Oʻchirish',
			'mpvConfig.presetSaved' => 'Sozlama saqlandi',
			'mpvConfig.presetLoaded' => 'Sozlama yuklandi',
			'mpvConfig.presetDeleted' => 'Sozlama oʻchirildi',
			'mpvConfig.confirmDeletePreset' => 'Ushbu sozlamani oʻchirishga ishonchingiz komilmi?',
			'mpvConfig.configPlaceholder' => 'gpu-api=vulkan\nhwdec=auto\n# izoh',
			'mpvConfig.lineHint' => 'option=value',
			'mpvConfig.addLine' => 'Qator qoʻshish',
			'mpvConfig.removeLine' => 'Qatorni oʻchirish',
			'mpvConfig.embeddedVoHint' => 'Linux-da vo, gpu-context va gpu-api e\'tiborga olinmaydi: ichki video har doim video tekisligida vo=libmpv orqali ko\'rsatiladi va gpu-next (ArtCNN kabi compute shaderlar uchun zarur) ichki rejimda ishlay olmaydi.',
			'dialog.confirmAction' => 'Harakatni tasdiqlash',
			'profiles.addLurokaProfile' => 'Luroka profilini qo\'shing',
			'profiles.switchingProfile' => 'Profil almashtirilmoqda…',
			'profiles.deleteThisProfileTitle' => 'Ushbu profil oʻchirilsinmi?',
			'profiles.deleteThisProfileMessage' => ({required Object displayName}) => '${displayName} oʻchiriladi. Ulanishlarga taʼsir qilmaydi.',
			'profiles.active' => 'Faol',
			'profiles.manage' => 'Boshqarish',
			'profiles.delete' => 'Oʻchirish',
			'profiles.signOut' => 'Chiqish',
			'profiles.signOutPlexTitle' => 'Plex-dan chiqilsinmi?',
			'profiles.signOutPlexMessage' => ({required Object displayName}) => '${displayName} va barcha Plex Home foydalanuvchilari oʻchirilsinmi? Istalgan vaqtda qayta kirishingiz mumkin.',
			'profiles.signOutPlexDeleteDownloads' => 'Yuklashlarni ham oʻchirib tashlang',
			'profiles.signOutPlexDeleteDownloadsDescription' => 'Aks holda, ular shu qurilmada qoladi va siz bu hisobga qayta kirganingizda qaytib keladi.',
			'profiles.signedOutPlex' => 'Plex-dan chiqdingiz.',
			'profiles.signOutFailed' => 'Chiqish amalga oshmadi.',
			'profiles.sectionTitle' => 'Profillar',
			'profiles.summarySingle' => 'Boshqariladigan foydalanuvchilarni birlashtirish uchun profillar qoʻshing',
			'profiles.summaryMultipleWithActive' => ({required Object count, required Object activeName}) => '${count} profil · faol: ${activeName}',
			'profiles.summaryMultiple' => ({required Object count}) => '${count} profil',
			'profiles.removeConnectionTitle' => 'Ulanish oʻchirilsinmi?',
			'profiles.removeConnectionMessage' => ({required Object displayName, required Object connectionLabel}) => '${displayName} foydalanuvchisining ${connectionLabel} kirish huquqi oʻchiriladi.',
			'profiles.deleteProfileTitle' => 'Profil oʻchirilsinmi?',
			'profiles.deleteProfileMessage' => ({required Object displayName}) => '${displayName} va uning ulanishlari oʻchiriladi. Serverlar mavjud boʻlib qoladi.',
			'profiles.profileNameLabel' => 'Profil nomi',
			'profiles.pinProtectionLabel' => 'PIN himoyasi',
			'profiles.pinManagedByPlex' => 'PIN kodni Plex boshqaradi. plex.tv saytida tahrirlang.',
			'profiles.noPinSetEditOnPlex' => 'PIN kod oʻrnatilmagan. Talab qilish uchun plex.tv saytida Bosh sahifa foydalanuvchisini tahrirlang.',
			'profiles.setPin' => 'PIN oʻrnatish',
			'profiles.setPinTitle' => 'PIN oʻrnatish',
			'profiles.confirmPinTitle' => 'PIN kodni tasdiqlash',
			'profiles.pinSet' => 'PIN oʻrnatildi',
			'profiles.changePin' => 'Oʻzgartirish',
			'profiles.removePin' => 'Oʻchirish',
			'profiles.connectionsLabel' => 'Ulanishlar',
			'profiles.add' => 'Qoʻshish',
			'profiles.deleteProfileButton' => 'Profilni oʻchirish',
			'profiles.noConnectionsHint' => 'Ulanishlar yoʻq — ushbu profildan foydalanish uchun ulanish qoʻshing.',
			'profiles.noConnections' => 'Ulanishlar yoʻq',
			'profiles.plexHomeAccount' => 'Plex Home hisobi',
			'profiles.plexAccountChip' => ({required Object account}) => 'Plex hisobi: ${account}',
			'profiles.plexAccountUserChip' => ({required Object account, required Object user}) => '${account} hisobi orqali ${user}',
			'profiles.connectionDefault' => 'Standart',
			'profiles.connectionAs' => ({required Object displayName}) => '${displayName} sifatida',
			'profiles.makeDefault' => 'Standart qilish',
			'profiles.removeConnection' => 'Oʻchirish',
			'profiles.profileRenamed' => 'Profil nomi oʻzgartirildi.',
			'profiles.borrowAddTo' => ({required Object displayName}) => '${displayName} profiliga qoʻshish',
			'profiles.borrowExplain' => 'Boshqa profilning ulanishidan foydalanish. PIN bilan himoyalangan profillar PIN talab qiladi.',
			'profiles.borrowEmpty' => 'Hali foydalanadigan hech narsa yoʻq.',
			'profiles.borrowEmptySubtitle' => 'Avval boshqa profilga Plex, Jellyfin yoki Emby ulang.',
			'profiles.borrowLoadFailed' => 'Mavjud ulanishlarni yuklab boʻlmadi.',
			'profiles.borrowFromProfile' => ({required Object displayName}) => '${displayName} profilidan',
			'profiles.borrowConnectionBorrowed' => 'Ulanishdan foydalanildi.',
			'profiles.borrowFailed' => 'Ulanishdan foydalanib boʻlmadi.',
			'profiles.incorrectPin' => 'Notoʻgʻri PIN kod.',
			'profiles.incorrectPinTryAgain' => 'Notoʻgʻri PIN kod. Qaytadan urinib koʻring.',
			'profiles.sourceProfileMissingParentAccount' => 'Manba profilda asosiy hisob yoʻq.',
			'profiles.failedToLoadHomeUsers' => 'Plex Home foydalanuvchilarini yuklab boʻlmadi.',
			'profiles.failedToVerifyPin' => 'PIN kodni tekshirib boʻlmadi.',
			'profiles.newProfile' => 'Yangi profil',
			'profiles.profileNameHint' => 'masalan, Mehmonlar, Bolalar',
			'profiles.pinProtectionOptional' => 'PIN himoyasi (ixtiyoriy)',
			'profiles.pinExplain' => 'Profillar orasida oʻtish uchun 4 xonali PIN kod talab qilinadi.',
			'profiles.continueButton' => 'Davom ettirish',
			'profiles.pinsDontMatch' => 'PIN kodlar mos kelmadi',
			'profiles.tokenIdentityMismatch' => 'Plex profil tokeni kutilmagan serverga tegishli boʻlib chiqdi',
			'connections.sectionTitle' => 'Ulanishlar',
			'connections.addConnection' => 'Ulanish qoʻshish',
			'connections.addConnectionSubtitleNoProfile' => 'Plex orqali kiring yoki Jellyfin yoki Emby serveriga ulaning',
			'connections.addConnectionSubtitleScoped' => ({required Object displayName}) => '${displayName} profiliga qoʻshish: Plex, Jellyfin, Emby yoki boshqa ulanish',
			'connections.sessionExpiredOne' => ({required Object name}) => '${name} uchun seans vaqti tugadi',
			'connections.sessionExpiredMany' => ({required Object count}) => '${count} server uchun seans vaqti tugadi',
			'connections.accessDeniedOne' => ({required Object name}) => '${name} ushbu hisobga kirishni rad etdi',
			'connections.accessDeniedMany' => ({required Object count}) => '${count} ta server ushbu hisobga kirishni rad etdi',
			'connections.signInAgain' => 'Qaytadan kirish',
			'connections.editMediaBrowserTitle' => ({required Object product}) => '${product} ulanishini tahrirlash',
			'connections.editMediaBrowserIntro' => ({required Object serverName}) => '${serverName} uchun URL-larni qoʻshing yoki olib tashlang. Luroka eng kam kechikishga ega boʻlgan mavjud URL-dan foydalanadi.',
			'serversAccounts.title' => 'Serverlar va hisoblar',
			'serversAccounts.subtitle' => 'Plex, Jellyfin va Emby serverlaringiz uchun tizimga kirish holati',
			'serversAccounts.online' => 'Onlayn',
			'serversAccounts.offline' => 'Oflayn',
			'serversAccounts.unknown' => 'Bu yerda tizimga kirmagan',
			'serversAccounts.usedByNone' => 'Hech qanday profil ishlatilmaydi',
			'serversAccounts.usedByOne' => ({required Object name}) => '${name} tomonidan foydalaniladi',
			'serversAccounts.usedByMany' => ({required Object name, required Object count}) => '${name} va ${count} tomonidan qo\'llaniladi',
			'serversAccounts.serversOnline' => ({required Object online, required Object total}) => '${online} ${total} serverlari onlayn',
			'serversAccounts.noServers' => 'Hali hech narsa ulanmagan. Plex hisob qaydnomangizni yoki Jellyfin yoki Emby serverini qo\'shing.',
			'serversAccounts.editUrls' => 'Server URL manzillarini tahrirlash',
			'accountPreferences.sectionTitle' => 'Hisob sozlamalari',
			'accountPreferences.hubSubtitleSingle' => ({required Object account}) => '${account} hisobida saqlangan audio, subtitr va kutubxona parametrlari',
			'accountPreferences.hubSubtitleMultiple' => ({required Object count}) => '${count} ta hisobda saqlangan audio, subtitr va kutubxona parametrlari',
			'accountPreferences.pickAccount' => 'Har bir hisob oʻz sozlamalarini saqlaydi. Tahrirlash uchun birini tanlang.',
			'accountPreferences.storedOnAccount' => 'Bu parametrlar hisobning oʻzida saqlanadi — unga kirilgan har bir ilova ulardan foydalanadi, jumladan boshqa qurilmalaringizdagi Luroka ham.',
			'accountPreferences.noAccounts' => 'Sozlanadigan hisoblar yoʻq',
			'accountPreferences.noAccountsHint' => 'Plex-ga kiring yoki Jellyfin yoki Emby serverini ulang — shunda oʻsha hisobda saqlangan sozlamalar shu yerda koʻrinadi.',
			'accountPreferences.unavailable' => 'Bu hisobga ulanib boʻlmadi',
			'accountPreferences.loadFailed' => 'Bu sozlamalarni yuklab boʻlmadi',
			'accountPreferences.noPreference' => 'Afzallik yoʻq',
			'accountPreferences.notSet' => 'Oʻrnatilmagan',
			'accountPreferences.groups.audioAndSubtitles' => 'Audio va subtitrlar',
			'accountPreferences.groups.libraryDisplay' => 'Kutubxona',
			'accountPreferences.groups.personalMedia' => 'Shaxsiy media',
			'accountPreferences.preferredAudioLanguage' => 'Afzal koʻrilgan audio tili',
			'accountPreferences.autoSelectAudio' => 'Audioni til boʻyicha tanlash',
			'accountPreferences.autoSelectAudioDescription' => 'Oʻchirilgan holatda faylda standart deb belgilangan audio trek ishlatiladi.',
			'accountPreferences.preferredSubtitleLanguage' => 'Afzal koʻrilgan subtitr tili',
			'accountPreferences.subtitleMode' => 'Subtitrni yoqish',
			'accountPreferences.subtitleModes.none' => 'Qoʻlda tanlangan',
			'accountPreferences.subtitleModes.noneDescription' => 'Subtitrni hech qachon oʻzi yoqmaydi.',
			'accountPreferences.subtitleModes.defaultMode' => 'Trek bayroqlariga amal qilish',
			'accountPreferences.subtitleModes.defaultModeDescription' => 'Har bir subtitr trekida saqlangan standart va majburiy bayroqlardan foydalanish.',
			'accountPreferences.subtitleModes.always' => 'Har doim yoqilgan',
			'accountPreferences.subtitleModes.alwaysDescription' => 'Mavjud boʻlganda afzal koʻrilgan tildagi subtitr treki yoqiladi.',
			'accountPreferences.subtitleModes.onlyForced' => 'Faqat majburiy subtitrlar',
			'accountPreferences.subtitleModes.onlyForcedDescription' => 'Faqat majburiy deb belgilangan treklar yuklanadi.',
			'accountPreferences.subtitleModes.smart' => 'Chet el audiosi bilan koʻrsatiladi',
			'accountPreferences.subtitleModes.smartDescription' => 'Subtitr faqat audio boshqa tilda boʻlganda yoqiladi.',
			'accountPreferences.subtitleAccessibility' => 'SDH subtitrlar',
			'accountPreferences.subtitleAccessibilityOptions.preferNonSdh' => 'SDH boʻlmagan subtitrlarga ustunlik berish',
			'accountPreferences.subtitleAccessibilityOptions.preferSdh' => 'SDH subtitrlarga ustunlik berish',
			'accountPreferences.subtitleAccessibilityOptions.onlySdh' => 'Faqat SDH subtitrlar',
			'accountPreferences.subtitleAccessibilityOptions.onlyNonSdh' => 'Faqat SDH boʻlmagan subtitrlar',
			'accountPreferences.forcedSubtitles' => 'Majburiy subtitrlar',
			'accountPreferences.forcedSubtitleOptions.preferNonForced' => 'Majburiy boʻlmagan subtitrlarga ustunlik berish',
			'accountPreferences.forcedSubtitleOptions.preferForced' => 'Majburiy subtitrlarga ustunlik berish',
			'accountPreferences.forcedSubtitleOptions.onlyForced' => 'Faqat majburiy subtitrlar',
			'accountPreferences.forcedSubtitleOptions.onlyNonForced' => 'Faqat majburiy boʻlmagan subtitrlar',
			'accountPreferences.displayMissingEpisodes' => 'Yoʻqolgan qismlarni koʻrsatish',
			'accountPreferences.displayMissingEpisodesDescription' => 'Server biladigan, lekin fayli boʻlmagan qismlarni roʻyxatlaydi.',
			'accountPreferences.hidePlayedInLatest' => '"Soʻnggi" boʻlimida koʻrilganlarni yashirish',
			'accountPreferences.hidePlayedInLatestDescription' => 'Serverning "Soʻnggi" qatorlariga allaqachon koʻrgan narsalaringizni kiritmaslik.',
			'accountPreferences.displayCollectionsView' => 'Toʻplamlar koʻrinishini koʻrsatish',
			'accountPreferences.displayCollectionsViewDescription' => 'Kutubxonalaringiz yonida serverning Toʻplamlar koʻrinishini taklif qilish.',
			'accountPreferences.rewatchingInNextUp' => 'Qayta koʻrilgan seriallarni "Keyingi" boʻlimida saqlash',
			'accountPreferences.rewatchingInNextUpDescription' => 'Serialni tugatib, qayta boshlasangiz, "Keyingi" boʻlimi serialni tashlab yuborish oʻrniga qayta tomoshaga ergashadi.',
			'accountPreferences.watchedIndicator' => 'Koʻrilganlik belgilari',
			'accountPreferences.watchedIndicatorOptions.none' => 'Hech qachon',
			'accountPreferences.watchedIndicatorOptions.moviesAndShows' => 'Filmlar va seriallar',
			'accountPreferences.watchedIndicatorOptions.movies' => 'Faqat filmlar',
			'accountPreferences.watchedIndicatorOptions.shows' => 'Faqat seriallar',
			'accountPreferences.mediaReviewsVisibility' => 'Baholar va sharhlar',
			'accountPreferences.mediaReviewsOptions.usersAndCritics' => 'Foydalanuvchilar va tanqidchilar',
			'accountPreferences.mediaReviewsOptions.usersOnly' => 'Faqat foydalanuvchilar',
			'accountPreferences.mediaReviewsOptions.criticsOnly' => 'Faqat tanqidchilar',
			'accountPreferences.mediaReviewsOptions.nobody' => 'Yashirilgan',
			'discover.title' => 'Kashf qilish',
			'discover.noContentAvailable' => 'Kontent mavjud emas',
			'discover.addMediaToLibraries' => 'Kutubxonalaringizga media qoʻshing',
			'discover.continueWatching' => 'Tomoshani davom ettirish',
			'discover.continueWatchingIn' => ({required Object library}) => '${library} ichida tomoshani davom ettirish',
			'discover.nextUp' => 'Navbatda',
			'discover.nextUpIn' => ({required Object library}) => '${library} ichida navbatda',
			'discover.recentlyAdded' => 'Yaqinda qoʻshilganlar',
			'discover.recentlyAddedIn' => ({required Object library}) => '${library} ichida yaqinda qoʻshilganlar',
			'discover.latestAlbumsIn' => ({required Object library}) => '${library} ichida soʻnggi albomlar',
			'discover.recentlyPlayedIn' => ({required Object library}) => '${library} ichida yaqinda eshitilganlar',
			'discover.mostPlayedIn' => ({required Object library}) => '${library} ichida eng koʻp eshitilganlar',
			'discover.playEpisode' => ({required Object season, required Object episode}) => 'M${season}Q${episode}',
			'discover.overview' => 'Tavsif',
			'discover.cast' => 'Aktyorlar',
			'discover.extras' => 'Treylerlar va qoʻshimchalar',
			'discover.studio' => 'Studiya',
			'discover.rating' => 'Reyting',
			'discover.director' => 'Rejissyor',
			'discover.directors' => 'Rejissyorlar',
			'discover.movie' => 'Film',
			'discover.tvShow' => 'TV Shou',
			'discover.minutesLeft' => ({required Object minutes}) => '${minutes} daq qoldi',
			'discover.moreLikeThis' => 'Oʻxshashlar',
			'discover.titleCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uz'))(n, one: '${n} ta nom', other: '${n} ta nom', ), 
			'discover.person.born' => 'Tug\'ilgan',
			'discover.person.died' => 'O\'lgan',
			'discover.person.birthplace' => 'Tug\'ilgan joyi',
			'discover.person.dateWithAge' => ({required Object date, required Object age}) => '${date} (yoshi ${age})',
			'discover.person.dateWithAgeAtDeath' => ({required Object date, required Object age}) => '${date} (yoshi ${age})',
			'errors.searchFailed' => ({required Object error}) => 'Qidiruv xatoligi: ${error}',
			'errors.searchUnavailable' => 'Qidiruv hech bir media serverga ulana olmadi.',
			'errors.connectionTimeout' => ({required Object context}) => '${context} yuklanish vaqti tugadi',
			'errors.connectionFailed' => 'Media serveriga ulanib boʻlmadi',
			'errors.unableToLoad' => ({required Object context}) => '${context} yuklab boʻlmadi.',
			'errors.noClientAvailable' => 'Mavjud mijoz yoʻq',
			'errors.pleaseEnterToken' => 'Tokenni kiriting',
			'errors.invalidToken' => 'Notoʻgʻri token',
			'errors.failedToVerifyToken' => ({required Object error}) => 'Tokenni tekshirib boʻlmadi: ${error}',
			'errors.failedToSwitchProfile' => ({required Object displayName}) => '${displayName} profiliga oʻtib boʻlmadi',
			'errors.failedToDeleteProfile' => ({required Object displayName}) => '${displayName} profilini oʻchirib boʻlmadi',
			'errors.failedToRate' => 'Reytingni yangilab boʻlmadi',
			'errors.reasonTimedOut' => 'ulanish vaqti tugadi',
			'errors.reasonUnreachable' => 'serverga ulanib boʻlmadi',
			'errors.reasonRefused' => 'server soʻrovni rad etdi',
			'errors.reasonNotFound' => 'element endi serverda yoʻq',
			'errors.reasonServerError' => 'server xatolik haqida xabar berdi',
			'errors.reasonCancelled' => 'soʻrov bekor qilindi',
			'errors.reasonUnexpected' => 'kutilmagan xatolik yuz berdi',
			'libraries.title' => 'Kutubxonalar',
			'libraries.fallbackTitle' => 'Kutubxona',
			'libraries.scanLibraryFiles' => 'Fayllarni skanerlash',
			'libraries.scanLibrary' => 'Kutubxonani skanerlash',
			'libraries.analyze' => 'Tahlil qilish',
			'libraries.analyzeLibrary' => 'Kutubxonani tahlil qilish',
			'libraries.refreshMetadata' => 'Metamaʼlumotlarni yangilash',
			'libraries.emptyTrash' => 'Savatni tozalash',
			'libraries.emptyingTrash' => ({required Object title}) => '"${title}" savati tozalanmoqda...',
			'libraries.trashEmptied' => ({required Object title}) => '"${title}" savati tozalandi',
			'libraries.failedToEmptyTrash' => ({required Object error}) => 'Savatni tozalab boʻlmadi: ${error}',
			'libraries.analyzing' => ({required Object title}) => '"${title}" tahlil qilinmoqda...',
			'libraries.analysisStarted' => ({required Object title}) => '"${title}" uchun tahlil boshlandi',
			'libraries.failedToAnalyze' => ({required Object error}) => 'Tahlil qilib boʻlmadi: ${error}',
			'libraries.noLibrariesFound' => 'Kutubxonalar topilmadi',
			'libraries.allLibrariesHidden' => 'Barcha kutubxonalar yashirilgan',
			'libraries.hiddenLibrariesCount' => ({required Object count}) => 'Yashirin kutubxonalar (${count})',
			'libraries.thisLibraryIsEmpty' => 'Ushbu kutubxona boʻsh',
			'libraries.noItemsMatchFilters' => 'Filtrlarga mos keladigan elementlar topilmadi',
			'libraries.resetFilters' => 'Filtrlarni qayta oʻrnatish',
			'libraries.all' => 'Barchasi',
			'libraries.clearAll' => 'Barchasini tozalash',
			'libraries.scanLibraryConfirm' => ({required Object title}) => '"${title}" kutubxonasini skanerlamoqchimisiz?',
			'libraries.analyzeLibraryConfirm' => ({required Object title}) => '"${title}" kutubxonasini tahlil qilmoqchimisiz?',
			'libraries.refreshMetadataConfirm' => ({required Object title}) => '"${title}" metamaʼlumotlarini yangilaysizmi?',
			'libraries.emptyTrashConfirm' => ({required Object title}) => '"${title}" savatini tozalaysizmi?',
			'libraries.manageLibraries' => 'Kutubxonalarni boshqarish',
			'libraries.sort' => 'Saralash',
			'libraries.sortBy' => 'Saralash mezonlari',
			'libraries.filters' => 'Filtrlar',
			'libraries.confirmActionMessage' => 'Ushbu harakatni bajarmoqchimisiz?',
			'libraries.showLibrary' => 'Kutubxonani koʻrsatish',
			'libraries.hideLibrary' => 'Kutubxonani yashirish',
			'libraries.libraryOptions' => 'Kutubxona parametrlari',
			'libraries.content' => 'kutubxona tarkibi',
			'libraries.selectLibrary' => 'Kutubxonani tanlash',
			'libraries.filtersWithCount' => ({required Object count}) => 'Filtrlar (${count})',
			'libraries.noRecommendations' => 'Tavsiyalar yoʻq',
			'libraries.noCollections' => 'Ushbu kutubxonada toʻplamlar yoʻq',
			'libraries.noFoldersFound' => 'Jildlar topilmadi',
			'libraries.folders' => 'jildlar',
			'libraries.tabs.recommended' => 'Tavsiya etilganlar',
			'libraries.tabs.browse' => 'Koʻrib chiqish',
			'libraries.tabs.collections' => 'Toʻplamlar',
			'libraries.tabs.playlists' => 'Ijro roʻyxatlari',
			'libraries.groupings.title' => 'Guruhlash',
			'libraries.groupings.all' => 'Barchasi',
			'libraries.groupings.movies' => 'Filmlar',
			'libraries.groupings.shows' => 'TV Shoular',
			'libraries.groupings.seasons' => 'Mavsumlar',
			'libraries.groupings.episodes' => 'Qismlar',
			'libraries.groupings.artists' => 'Ijrochilar',
			'libraries.groupings.albums' => 'Albomlar',
			'libraries.groupings.tracks' => 'Taronalar',
			'libraries.groupings.folders' => 'Jildlar',
			'libraries.filterCategories.genre' => 'Janr',
			'libraries.filterCategories.year' => 'Yil',
			'libraries.filterCategories.contentRating' => 'Kontent reytingi',
			'libraries.filterCategories.tag' => 'Teg',
			'libraries.filterCategories.unwatched' => 'Koʻrilmagan',
			'libraries.filterCategories.unplayed' => 'Eshitilmagan',
			'libraries.filterCategories.favorites' => 'Tanlanganlar',
			'libraries.filterCategories.filePath' => 'Fayl yo\'li',
			'libraries.sortLabels.title' => 'Nomi',
			'libraries.sortLabels.dateAdded' => 'Qoʻshilgan sanasi',
			'libraries.sortLabels.releaseDate' => 'Chıqqan sanasi',
			'libraries.sortLabels.rating' => 'Reyting',
			'libraries.sortLabels.communityRating' => 'Hamjamiyat reytingi',
			'libraries.sortLabels.criticRating' => 'Muntaqidlar reytingi',
			'libraries.sortLabels.userRating' => 'Foydalanuvchi reytingi',
			'libraries.sortLabels.datePlayed' => 'Ijro etilgan sanasi',
			'libraries.sortLabels.playCount' => 'Ijrolar soni',
			'libraries.sortLabels.productionYear' => 'Ishlab chiqarilgan yili',
			'libraries.sortLabels.runtime' => 'Davomiyligi',
			'libraries.sortLabels.officialRating' => 'Rasmiy reyting',
			'libraries.sortLabels.premiereDate' => 'Premyera sanasi',
			'libraries.sortLabels.startDate' => 'Boshlangan sanasi',
			'libraries.sortLabels.airTime' => 'Efir vaqti',
			'libraries.sortLabels.studio' => 'Studiya',
			'libraries.sortLabels.random' => 'Tasodifiy',
			'libraries.sortLabels.dateShared' => 'Ulashilgan sanasi',
			'libraries.sortLabels.latestEpisodeAirDate' => 'Soʻnggi qism chiqqan sana',
			'libraries.sortLabels.lastEpisodeDateAdded' => 'Soʻnggi qoʻshilgan qism sanasi',
			'libraries.sortLabels.dateDownloaded' => 'Yuklab olingan sanasi',
			'libraries.sortLabels.size' => 'Hajmi',
			'libraries.sortLabels.library' => 'Kutubxona',
			'libraries.advancedFilters.include' => 'O\'z ichiga oladi',
			'libraries.advancedFilters.exclude' => 'Cheklash',
			'libraries.advancedFilters.any' => 'Har qanday',
			'libraries.advancedFilters.yes' => 'Ha',
			'libraries.advancedFilters.no' => 'Yo\'q',
			'libraries.advancedFilters.not' => ({required Object value}) => '${value} emas',
			'libraries.advancedFilters.valueCount' => ({required Object count}) => '${count} tanlandi',
			'libraries.advancedFilters.valueCountExcluded' => ({required Object count}) => '${count} chiqarib tashlandi',
			'libraries.advancedFilters.searchValues' => 'Qidiruv qiymatlari',
			'libraries.advancedFilters.noValues' => 'Hech qanday qiymat yo\'q',
			'libraries.advancedFilters.matchContains' => 'Tarkibida',
			'libraries.advancedFilters.matchNotContains' => 'Tarkibi yo\'q',
			'libraries.advancedFilters.matchIs' => 'Bu',
			'libraries.advancedFilters.matchIsNot' => 'Yo\'q',
			'libraries.advancedFilters.matchBeginsWith' => 'bilan boshlanadi',
			'libraries.advancedFilters.matchEndsWith' => 'bilan tugaydi',
			'libraries.advancedFilters.textHint' => 'Moslash uchun yozing',
			'libraries.advancedFilters.from' => 'Kimdan',
			'libraries.advancedFilters.to' => 'Kimga',
			'libraries.advancedFilters.range' => ({required Object from, required Object to}) => '${from} dan ${to}gacha',
			'libraries.advancedFilters.atLeast' => ({required Object value}) => '${value} va undan yuqori',
			'libraries.advancedFilters.atMost' => ({required Object value}) => '${value} gacha',
			'libraries.advancedFilters.dateLastDays' => ({required Object count}) => 'Oxirgi ${count} kunlar',
			'libraries.advancedFilters.dateLastYear' => 'O\'tgan yil',
			'libraries.advancedFilters.dateOlderThanDays' => ({required Object count}) => '${count} kundan eski',
			'libraries.advancedFilters.dateOlderThanYear' => 'Bir yoshdan katta',
			'about.title' => 'Dastur haqida',
			'about.openSourceLicenses' => 'Ochiq kodli litsenziyalar',
			'about.versionLabel' => ({required Object version}) => 'Versiya ${version}',
			'about.appDescription' => 'Flutter asosidagi qulay Plex, Jellyfin va Emby mijozi',
			'about.customSource' => 'Manba kodi',
			'about.basedOnLuroka' => 'Plezy kod bazasida qurilgan',
			'about.viewLicensesDescription' => 'Uchinchi tomon kutubxonalarining litsenziyalarini koʻrish',
			'about.appSection' => 'Ilova',
			'about.communitySection' => 'Jamiyat',
			'about.creditsSection' => 'Kreditlar',
			'about.legalSection' => 'Huquqiy',
			'about.versionMeta' => ({required Object version, required Object build, required Object platform}) => 'v${version} (${build}) · ${platform}',
			'about.versionMetaNoBuild' => ({required Object version, required Object platform}) => 'v${version} · ${platform}',
			'about.versionUnavailable' => 'Versiya mavjud emas',
			'about.versionDetails' => 'Versiya tafsilotlari',
			'about.versionDetailsTitle' => ({required Object version, required Object build}) => 'Luroka ${version} (${build})',
			'about.platformLine' => ({required Object platform}) => 'Platforma: ${platform}',
			'about.deviceLine' => ({required Object model}) => 'Qurilma: ${model}',
			'about.packageLine' => ({required Object package}) => 'Paket: ${package}',
			'about.localeLine' => ({required Object locale}) => 'Til: ${locale}',
			'about.copyDetails' => 'Tafsilotlarni nusxalash',
			_ => null,
		} ?? switch (path) {
			'about.detailsCopied' => 'Ilova tafsilotlari nusxalandi',
			'about.detailsCopyFailed' => 'Ilova tafsilotlarini nusxalab bo‘lmadi',
			'about.checkForUpdatesDescription' => 'Yangi versiya uchun GitHub-ni tekshiring',
			'about.checkingForUpdates' => 'Yangilanishlar tekshirilmoqda…',
			'about.whatsNew' => 'Nima yangilik',
			'about.releaseNotesUnavailable' => 'Chiqarish qaydlari mavjud emas.',
			'about.sourceCodeDescription' => 'GitHub-da Luroka',
			'about.reportIssue' => 'Muammo haqida xabar bering',
			'about.reportIssueDescription' => 'Nima xato bo\'lganini bizga ayting',
			'about.documentation' => 'Hujjatlar',
			'about.documentationDescription' => 'Sozlash, xususiyatlar va eslatmalar yaratish',
			'about.upstreamProjectDescription' => 'Edde746 va ishtirokchilar tomonidan ochiq manbali loyiha',
			'about.upstreamWebsite' => 'Yuqoridagi veb-sayt',
			'about.attribution' => 'Ma\'lumotlar va atributlar',
			'about.attributionDescription' => 'Metadata, reytinglar va savdo belgilari',
			'about.attributionBody' => 'Ushbu mahsulot TMDB API dan foydalanadi, lekin TMDB tomonidan tasdiqlanmagan yoki sertifikatlanmagan. Mashhurlik roʻyxati, metamaʼlumotlar va IMDb reytinglari Cinemeta tomonidan taqdim etilgan. Ballar manba belgilarini saqlab qoladi.',
			'about.trademarkNotices' => 'Plex, Jellyfin, Emby, Trakt, Simkl, MyAnimeList, AniList, ZXQKEEP0, ZX7KEEP0 va tegishli savdo belgilari, egalari. Luroka ular bilan aloqador emas yoki ular tomonidan tasdiqlanmagan.',
			'about.privacyPolicy' => 'Maxfiylik siyosati',
			'about.privacyPolicyDescription' => 'Ma\'lumotlaringiz qanday qayta ishlanadi',
			'about.gplLicense' => 'GNU GPL-3.0 litsenziyasi',
			'about.gplLicenseDescription' => 'Luroka bepul dastur hisoblanadi',
			'about.linkOpenFailed' => 'Bu havolani ochib boʻlmadi',
			'about.opensInBrowser' => 'Brauzeringizda ochiladi',
			'about.footer' => 'Luroka GPL-3.0 ostida bepul dastur hisoblanadi.',
			'about.copyright' => ({required Object year}) => '© ${year} Luroka ishtirokchilari',
			'serverSelection.noServersFoundForAccount' => ({required Object username, required Object email}) => '${username} (${email}) uchun serverlar topilmadi',
			'serverSelection.failedToLoadServers' => ({required Object error}) => 'Serverlarni yuklashda xatolik: ${error}',
			'serverSelection.noValidServers' => 'Bu hisobda foydalanish mumkin boʻlgan server topilmadi',
			'hubDetail.title' => 'Nomi',
			'hubDetail.releaseYear' => 'Chiqqan yili',
			'hubDetail.dateAdded' => 'Qoʻshilgan sanasi',
			'hubDetail.rating' => 'Reyting',
			'hubDetail.noItemsFound' => 'Elementlar topilmadi',
			'logs.clearLogs' => 'Jurnallarni tozalash',
			'logs.copyLogs' => 'Jurnallarni nusxalash',
			'logs.uploadLogs' => 'Jurnallarni yuklash',
			'startup.failedTitle' => 'Luroka ishga tusha olmadi',
			'startup.failedBody' => 'Ishga tushirish paytida nimadir xato ketdi. Quyidagi tafsilotlar aynan nima muvaffaqiyatsiz boʻlganini koʻrsatadi.',
			'startup.failedBodyRepairable' => 'Lurokaning saqlangan sozlamalar fayli shikastlangan va Luroka ishga tushishidan oldin uni qayta tiklash kerak. Qayta urinish yordam bermaydi — Saqlashni tiklashni tanlang.',
			'startup.phaseLabel' => 'Qadam',
			'startup.showDetails' => 'Tafsilotlarni koʻrsatish',
			'startup.hideDetails' => 'Tafsilotlarni yashirish',
			'startup.copyDetails' => 'Tafsilotlarni nusxalash',
			'startup.detailsCopied' => 'Tafsilotlar buferga nusxalandi',
			'startup.uploadDetails' => 'Tafsilotlarni yuklash',
			'startup.repairStorage' => 'Saqlashni tiklash',
			'startup.repairTitle' => 'Saqlangan maʼlumotlar tikilsinmi?',
			'startup.repairBodyCommon' => 'Lurokaning sozlamalar fayli shikastlangan va uni oʻqib boʻlmaydi. Tiklash barcha sozlamalarni standart holatiga qaytaradi.',
			'startup.repairBodyOneCredential' => 'Bitta saqlangan kirish maʼlumoti shikastlangan va uni oʻqib boʻlmaydi. Tiklash faqat uni olib tashlaydi; boshqa sozlamalaringizga tegilmaydi.',
			'startup.repairBodySignInsKept' => 'Serverlaringiz va profillaringiz tizimga kirgan holda qoladi.',
			'startup.repairBodySignInsLost' => 'Saqlangan kirish maʼlumotlaringizni himoya qiluvchi kalitni ushbu fayldan tiklab boʻlmaydi, shuning uchun har bir server va profilga qaytadan kirishingiz kerak boʻladi. Media serveringizdagi hech narsaga taʼsir qilmaydi.',
			'startup.repairBodySessionsUncertain' => 'Trekerlar (MAL, AniList, Simkl, Trakt) va Seerr alohida saqlanadi va ular saqlanib qolishi ham, yoʻqolishi ham mumkin. Luroka aynan nimani saqlaganini sizga xabar qiladi.',
			'startup.repairConfirm' => 'Tiklash',
			'startup.repairSucceeded' => 'Saqlash tiklandi',
			'startup.repairNeedsRestart' => 'Saqlash tiklandi — qayta ishga tushirish kerak',
			'startup.restartRequiredBody' => 'Maʼlumotlaringiz tiklandi, lekin Luroka ulardan foydalanishi uchun yangidan ishga tushishi kerak. Luroka-ni yoping va qayta oching.',
			'startup.quitLuroka' => 'Luroka-dan chiqish',
			'startup.repairFailed' => 'Tiklash amalga oshmadi',
			'startup.repairKeptSignIns' => 'Serverlaringiz va profillaringiz hali ham tizimga kirgan.',
			'startup.repairLostSignIns' => 'Saqlangan kirish maʼlumotlaringizni himoya qiluvchi kalitni tiklab boʻlmadi. Har bir server va profilga qaytadan kirishingiz kerak boʻladi.',
			'startup.repairLostSessions' => 'Kamida bitta treker yoki Seerr ulanishi yoʻqoldi va uni qayta ulash kerak.',
			'startup.backupTitle' => 'Shikastlangan faylning nusxasi saqlab qoʻyildi',
			'startup.backupWarning' => 'Unda kirish hisob maʼlumotlaringiz bor. Uni yuklamang yoki baham koʻrmang.',
			'startup.deleteBackup' => 'Nusxani oʻchirish',
			'startup.backupDeleted' => 'Nusxa oʻchirildi.',
			'startup.previousFailureTitle' => 'Luroka oxirgi marta ishga tushmadi',
			'licenses.relatedPackages' => 'Bogʻliq paketlar',
			'licenses.license' => 'Litsenziya',
			'licenses.licenseNumber' => ({required Object number}) => 'Litsenziya ${number}',
			'licenses.licensesCount' => ({required Object count}) => '${count} litsenziya',
			'licenses.searchHint' => 'Paketlarni qidirish',
			'licenses.noResults' => ({required Object query}) => '“${query}” paketiga mos keladigan paketlar topilmadi',
			'licenses.clearSearch' => 'Qidiruvni tozalash',
			'navigation.libraries' => 'Kutubxonalar',
			'navigation.downloads' => 'Yuklamalar',
			'navigation.liveTv' => 'Jonli TV',
			'navigation.explore' => 'Kashf qilish',
			'explore.title' => 'Kashf qilish',
			'explore.selectSource' => 'Manbani tanlang',
			'explore.rows.watchlist' => 'Tomosha roʻyxati',
			'explore.rows.recommendedMovies' => 'Tavsiya etilgan filmlar',
			'explore.rows.recommendedShows' => 'Tavsiya etilgan seriallar',
			'explore.rows.trendingMovies' => 'Ommabop filmlar',
			'explore.rows.trendingShows' => 'Ommabop seriallar',
			'explore.rows.popularMovies' => 'Mashhur filmlar',
			'explore.rows.popularShows' => 'Mashhur seriallar',
			'explore.rows.trendingAnime' => 'Ommabop anime',
			'explore.rows.suggestedAnime' => 'Tavsiya etilgan anime',
			'explore.rows.airingAnime' => 'Efirga uzatilayotgan eng yaxshi anime',
			'explore.rows.popularAnime' => 'Eng mashhur anime',
			'explore.rows.trending' => 'Ommaboplar',
			'explore.rows.upcomingMovies' => 'Kutilayotgan filmlar',
			'explore.rows.upcomingShows' => 'Kutilayotgan seriallar',
			'explore.status.airing' => 'Efirda',
			'explore.status.ended' => 'Tugallandi',
			'explore.status.canceled' => 'Bekor qilindi',
			'explore.status.upcoming' => 'Kutilmoqda',
			'explore.episodeCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uz'))(n, one: '${n} qism', other: '${n} qism', ), 
			'explore.cast' => 'Aktyorlar',
			'explore.characters' => 'Qahramonlar',
			'explore.addToWatchlist' => 'Tomosha roʻyxatiga qoʻshish',
			'explore.removeFromWatchlist' => 'Tomosha roʻyxatidan oʻchirish',
			'explore.addedToWatchlist' => 'Tomosha roʻyxatiga qoʻshildi',
			'explore.removedFromWatchlist' => 'Tomosha roʻyxatidan olib tashlandi',
			'explore.watchlistUpdateFailed' => 'Tomosha roʻyxatini yangilab boʻlmadi',
			'explore.watchlistNoMatch' => 'Bu elementni tomosha roʻyxatiga moslab boʻlmadi',
			'explore.notInLibrary' => 'Kutubxonangizda yoʻq',
			'explore.inTheseLibraries' => 'Ushbu kutubxonalarda bor',
			'explore.checkingLibrary' => 'Kutubxona tekshirilmoqda...',
			'explore.libraryCheckFailed' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uz'))(n, one: '${n} serverni tekshirib boʻlmadi', other: '${n} serverni tekshirib boʻlmadi', ), 
			'explore.emptyTitle' => 'Hali bu yerda hech narsa yoʻq',
			'explore.emptyMessage' => ({required Object source}) => '${source} manbasidan olingan qatorlar bu yerda koʻrinadi.',
			'explore.searchHint' => ({required Object source}) => '${source} ichidan qidirish',
			'explore.searchEmpty' => ({required Object query}) => '"${query}" boʻyicha natija topilmadi',
			'explore.searchPrompt' => ({required Object source}) => '${source} orqali filmlar va seriallarni qidiring.',
			'explore.searchFailed' => 'Qidiruv xatoligi. Ulanishni tekshiring.',
			'explore.badge.rankPopular' => ({required Object n}) => '#${n} mashhur',
			'explore.badge.rankAiring' => ({required Object n}) => '#${n} efirda',
			'explore.badge.rankRated' => ({required Object n}) => '#${n} baholangan',
			'explore.badge.rankTrending' => ({required Object n}) => '#${n} ommabop',
			'explore.badge.rankSeasonal' => ({required Object n, required Object season}) => '#${n} ${season} mavsumida',
			'explore.badge.watchingNow' => ({required Object n}) => '${n} kishi tomosha qilmoqda',
			'explore.badge.available' => 'Mavjud',
			'explore.badge.partiallyAvailable' => 'Qisman mavjud',
			'explore.badge.availableIn4k' => '4K mavjud',
			'explore.badge.requested' => 'Soʻralgan',
			'explore.badge.pendingApproval' => 'Tasdiq kutilmoqda',
			'explore.badge.processing' => 'Ishlanmoqda',
			'explore.badge.declined' => 'Rad etilgan',
			'explore.badge.requestFailed' => 'Soʻrov amalga oshmadi',
			'explore.badge.requested4k' => '4K soʻralgan',
			'explore.badge.seasonsAvailable' => ({required Object available, required Object total}) => '${available}/${total} mavsum',
			'explore.badge.nextEpisodeIn' => ({required Object episode, required Object duration}) => '${episode}-qism ${duration} ichida',
			'explore.badge.nextAiringIn' => ({required Object duration}) => 'Keyingisi ${duration} ichida',
			'explore.badge.episodesShort' => ({required Object n}) => '${n} qism',
			'explore.badge.minutesPerEpisode' => ({required Object n}) => '${n} daq/qism',
			'explore.badge.adult' => '18+',
			'explore.stats.listed' => ({required Object n}) => '${n} roʻyxatda',
			'explore.stats.viewersDay' => ({required Object n}) => 'Bugun ${n} kishi tomosha qildi',
			'explore.stats.viewersWeek' => ({required Object n}) => 'Bu hafta ${n} kishi tomosha qildi',
			'explore.stats.viewersMonth' => ({required Object n}) => 'Bu oy ${n} kishi tomosha qildi',
			'explore.stats.viewersYear' => ({required Object n}) => 'Bu yil ${n} kishi tomosha qildi',
			'explore.stats.viewersAllTime' => ({required Object n}) => '${n} kishi tomosha qilgan',
			'explore.stats.planning' => ({required Object n}) => '${n} kishi tomosha qilishni rejalashtirmoqda',
			'explore.stats.favorited' => ({required Object n}) => '${n} ta tanlangan',
			'explore.stats.dropRate' => ({required Object percent}) => '${percent} tomosha qilishni toʻxtatgan',
			'explore.stats.comments' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uz'))(n, one: '${n} ta izoh', other: '${n} ta izoh', ), 
			'explore.stats.votes' => ({required Object n}) => '${n} ta ovoz',
			'explore.stats.watching' => ({required Object n}) => '${n} kishi tomosha qilmoqda',
			'explore.stats.completed' => ({required Object n}) => '${n} kishi yakunlagan',
			'explore.stats.onHold' => ({required Object n}) => '${n} kishi toʻxtatib turibdi',
			'explore.stats.dropped' => ({required Object n}) => '${n} kishi toʻxtatgan',
			'explore.season.winter' => 'Qish',
			'explore.season.spring' => 'Bahor',
			'explore.season.summer' => 'Yoz',
			'explore.season.fall' => 'Kuz',
			'explore.season.withYear' => ({required Object season, required Object year}) => '${season} ${year}',
			'explore.format.tv' => 'TV',
			'explore.format.tvShort' => 'Qisqa TV',
			'explore.format.movie' => 'Film',
			'explore.format.special' => 'Maxsus',
			'explore.format.ova' => 'OVA',
			'explore.format.ona' => 'ONA',
			'explore.format.music' => 'Musiqa',
			'explore.format.other' => 'Boshqa',
			'explore.sourceMaterial.original' => 'Asl',
			'explore.sourceMaterial.manga' => 'Manga',
			'explore.sourceMaterial.lightNovel' => 'Light novel',
			'explore.sourceMaterial.novel' => 'Roman',
			'explore.sourceMaterial.visualNovel' => 'Visual novel',
			'explore.sourceMaterial.game' => 'Oʻyin',
			'explore.sourceMaterial.webComic' => 'Veb-komiks',
			'explore.sourceMaterial.musicRelease' => 'Musiqa',
			'explore.sourceMaterial.otherMedia' => 'Boshqa',
			'explore.creditRole.actor' => 'Aktyor',
			'explore.creditRole.director' => 'Rejissyor',
			'explore.creditRole.writer' => 'Ssenarist',
			'explore.creditRole.producer' => 'Prodyuser',
			'explore.creditRole.creator' => 'Muallif',
			'explore.creditRole.composer' => 'Bastakor',
			'explore.relation.prequel' => 'Prikvel',
			'explore.relation.sequel' => 'Sikvel',
			'explore.relation.sideStory' => 'Yon hikoya',
			'explore.relation.spinOff' => 'Spin-off',
			'explore.relation.alternativeVersion' => 'Muqobil versiya',
			'explore.relation.summary' => 'Xulosa',
			'explore.relation.parentStory' => 'Asosiy hikoya',
			'explore.relation.adaptation' => 'Adaptatsiya',
			'explore.relation.other' => 'Bogʻliq',
			'explore.broadcast' => ({required Object day, required Object time}) => '${day} kuni soat ${time} da efirga uzatiladi',
			'explore.broadcastWithZone' => ({required Object day, required Object time, required Object timezone}) => '${day} kuni soat ${time} ${timezone} da efirga uzatiladi',
			'explore.detail.originalTitle' => 'Asl nomi',
			'explore.detail.alsoKnownAs' => 'Boshqa nomi bilan ham tanilgan',
			'explore.detail.studios' => 'Studiyalar',
			'explore.detail.country' => 'Mamlakat',
			'explore.detail.language' => 'Til',
			'explore.detail.released' => 'Chiqarilgan',
			'explore.detail.physicalRelease' => 'Diskda',
			'explore.detail.ended' => 'Yakunlangan',
			'explore.detail.addedOn' => ({required Object date}) => '${date} da qoʻshilgan',
			'explore.detail.yourRating' => 'Sizning bahoyingiz',
			'explore.detail.budget' => 'Byudjet',
			'explore.detail.revenue' => 'Kassa yigʻimi',
			'explore.detail.contentAdvisory' => 'Yosh cheklovi',
			'explore.detail.tags' => 'Teglar',
			'explore.detail.revealSpoilerTags' => 'Spoyler teglarini koʻrsatish',
			'explore.detail.links' => 'Havolalar',
			'explore.detail.watchOn' => 'Tomosha qilish',
			'explore.detail.watchTrailer' => 'Treylerni koʻrish',
			'explore.detail.openOn' => ({required Object site}) => '${site} da ochish',
			'explore.detail.crew' => 'Jamoa',
			'explore.detail.ratings' => 'Baholar',
			'explore.detail.schedule' => 'Jadval',
			'explore.detail.recommendedByUsers' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uz'))(n, one: '${n} foydalanuvchi tavsiya qilgan', other: '${n} foydalanuvchi tavsiya qilgan', ), 
			'explore.detail.recommendedBy' => ({required Object who}) => '${who} tavsiya qilgan',
			'explore.detail.favoritedBy' => ({required Object who}) => '${who} tanlanganlarga qoʻshgan',
			'explore.detail.unairedEpisodes' => ({required Object n}) => '${n} hali efirga chiqmagan',
			'explore.detail.recommendedByPercent' => ({required Object percent}) => 'Tomoshabinlarning ${percent} tavsiya qilgan',
			'explore.detail.relatedTitles' => 'Bogʻliq nomlar',
			'explore.detail.background' => 'Orqa fon',
			'explore.totalResults' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uz'))(n, one: '${n} ta natija', other: '${n} ta natija', ), 
			'liveTv.title' => 'Jonli TV',
			'liveTv.guide' => 'Dasturlar jadvali',
			'liveTv.noChannels' => 'Mavjud kanallar yoʻq',
			'liveTv.noDvr' => 'Serverda DVR sozlanmagan',
			'liveTv.serverUnavailable' => 'Jonli TV serveri mavjud emas.',
			'liveTv.serverNotConnected' => 'Jonli TV serveriga ulanmagan.',
			'liveTv.noPrograms' => 'Dastur haqida maʼlumot yoʻq',
			'liveTv.liveStreamFailed' => 'Jonli oqim xatoligi',
			'liveTv.unknownProgram' => 'Nomaʼlum dastur',
			'liveTv.unknownHub' => 'Nomaʼlum',
			'liveTv.unknownError' => 'Nomaʼlum xatolik',
			'liveTv.channelNumber' => ({required Object number}) => '${number}-kanal',
			'liveTv.unknownChannel' => 'Nomaʼlum kanal',
			'liveTv.live' => 'JONLI EFIR',
			'liveTv.reloadGuide' => 'Jadvalni yangilash',
			'liveTv.searchGuide' => 'Dasturlar jadvalidan qidirish',
			'liveTv.searchHint' => 'Kanal va dasturlarni qidirish',
			'liveTv.searchNoResults' => ({required Object query}) => '"${query}" boʻyicha moslik topilmadi',
			'liveTv.channelsSection' => 'Kanallar',
			'liveTv.programsSection' => 'Dasturlar',
			'liveTv.now' => 'Hozir',
			'liveTv.today' => 'Bugun',
			'liveTv.tomorrow' => 'Ertaga',
			'liveTv.midnight' => 'Yarim tun',
			'liveTv.overnight' => 'Tunda',
			'liveTv.morning' => 'Ertalab',
			'liveTv.daytime' => 'Kunduzi',
			'liveTv.evening' => 'Kechqurun',
			'liveTv.lateNight' => 'Tunda',
			'liveTv.whatsOn' => 'Hozir nima efirda?',
			'liveTv.watchChannel' => 'Kanalni tomosha qilish',
			'liveTv.favorites' => 'Tanlanganlar',
			'liveTv.reorderFavorites' => 'Tanlanganlarni tartiblash',
			'liveTv.noFavoriteChannels' => 'Sevimli kanallar yoʻq',
			'liveTv.noFavoriteChannelsHint' => 'Barcha kanallarni koʻrsating, soʻng kanalni sevimlilarga qoʻshish uchun uni bosib turing.',
			'liveTv.showAllChannels' => 'Barcha kanallarni koʻrsatish',
			'liveTv.favoritesLoadFailed' => 'Tanlanganlarni yuklab boʻlmadi. Ulanishni tekshirib, qayta urinib koʻring.',
			'liveTv.favoritesUpdateFailed' => 'Tanlanganlarni yangilab boʻlmadi.',
			'liveTv.joinSession' => 'Davom etayotgan seansga qoʻshilish',
			'liveTv.watchFromStart' => ({required Object minutes}) => 'Boshidan tomosha qilish (${minutes} daq ilgari)',
			'liveTv.watchLive' => 'Jonli efirni tomosha qilish',
			'liveTv.goToLive' => 'Jonli efirga oʻtish',
			'liveTv.record' => 'Yozib olish',
			'liveTv.recordEpisode' => 'Qismni yozib olish',
			'liveTv.recordSeries' => 'Serialni yozib olish',
			'liveTv.recordOptions' => 'Yozib olish parametrlari',
			'liveTv.saveTo' => 'Shu yerga saqlash',
			'liveTv.recordings' => 'Yozib olinganlar',
			'liveTv.scheduledRecordings' => 'Rejalashtirilganlar',
			'liveTv.recordingRules' => 'Yozib olish qoidalari',
			'liveTv.noScheduledRecordings' => 'Rejalashtirilgan yozuvlar yoʻq',
			'liveTv.manageRecording' => 'Yozuvni boshqarish',
			'liveTv.cancelRecording' => 'Yozishni bekor qilish',
			'liveTv.cancelRecordingTitle' => 'Yozish toʻxtatilsinmi?',
			'liveTv.cancelRecordingMessage' => ({required Object title}) => '${title} endi yozib olinmaydi.',
			'liveTv.deleteRule' => 'Qoidani oʻchirish',
			'liveTv.deleteRuleTitle' => 'Yozib olish qoidasi oʻchirilsinmi?',
			'liveTv.deleteRuleMessage' => ({required Object title}) => '${title} serialining keyingi qismlari yozib olinmaydi.',
			'liveTv.recordingScheduled' => 'Yozib olish rejalashtirildi',
			'liveTv.alreadyScheduled' => 'Ushbu dastur avvaldan rejalashtirilgan',
			'liveTv.dvrAdminRequired' => 'DVR sozlamalari administrator huquqini talab qiladi',
			'liveTv.recordingFailed' => 'Yozib olishni rejalashtirib boʻlmadi',
			'liveTv.recordingTargetMissing' => 'Yozib olinadigan kutubxona aniqlanmadi',
			'liveTv.recordNotAvailable' => 'Ushbu dasturni yozib olib boʻlmaydi',
			'liveTv.recordingCancelled' => 'Yozib olish bekor qilindi',
			'liveTv.recordingRuleDeleted' => 'Yozib olish qoidasi oʻchirildi',
			'liveTv.processRecordingRules' => 'Qoidalarni qayta baholash',
			'liveTv.recordingInProgress' => 'Hozir yozib olinmoqda',
			'liveTv.recordingsCount' => ({required Object count}) => '${count} rejalashtirilgan',
			'liveTv.editRule' => 'Qoidani tahrirlash',
			'liveTv.editRuleAction' => 'Tahrirlash',
			'liveTv.recordingRuleUpdated' => 'Yozib olish qoidasi yangilandi',
			'liveTv.guideReloadRequested' => 'Jadvalni yangilash soʻraldi',
			'liveTv.guideReloadFailed' => 'Dasturlar jadvalini yangilab boʻlmadi',
			'liveTv.rulesProcessRequested' => 'Qoidalarni qayta baholash soʻraldi',
			'liveTv.rulesProcessFailed' => 'Yozib olish qoidalarini qayta baholab boʻlmadi',
			'liveTv.recordShow' => 'Shouni yozib olish',
			'liveTv.recordSettings.startEarly' => 'Erta boshlash (soniya)',
			'liveTv.recordSettings.endLate' => 'Kech tugatish (soniya)',
			'liveTv.recordSettings.newOnly' => 'Faqat yangi epizodlar',
			'liveTv.recordSettings.anyChannel' => 'Istalgan kanaldan yozib olish',
			'liveTv.recordSettings.anyTime' => 'Istalgan vaqtda yozib olish',
			'liveTv.recordSettings.skipInLibrary' => 'Kutubxonada mavjud epizodlarni oʻtkazib yuborish',
			'liveTv.recordSettings.keepUpTo' => 'Saqlanadigan epizodlar',
			'liveTv.recordSettings.keepUpToHint' => '0 barcha epizodlarni saqlaydi',
			'liveTv.startingInMinutes' => ({required Object minutes}) => '${minutes} daqiqadan keyin boshlanadi',
			'liveTv.dayAtTime' => ({required Object day, required Object time}) => '${day}, soat ${time} da',
			'liveTv.invalidPlaybackData' => ({required Object product}) => '${product} Jonli TV ijrosi uchun notoʻgʻri maʼlumot qaytardi',
			'liveTv.failedToStartChannel' => 'Jonli kanalni boshlab boʻlmadi',
			'liveTv.failedToBuildStreamUrl' => 'Oqim URL-ini tuzib boʻlmadi',
			'liveTv.playbackStartFailed' => ({required Object reason}) => 'Kanalni ishga tushirib boʻlmadi: ${reason}',
			'liveTv.channelSwitchFailed' => ({required Object reason}) => 'Kanalni almashtirib boʻlmadi: ${reason}',
			'collections.title' => 'Toʻplamlar',
			'collections.collection' => 'Toʻplam',
			'collections.empty' => 'Toʻplam boʻsh',
			'collections.deleteCollection' => 'Toʻplamni oʻchirish',
			'collections.deleteConfirm' => ({required Object title}) => '"${title}" oʻchirilsinmi?',
			'collections.deleted' => 'Toʻplam oʻchirildi',
			'collections.deleteFailed' => 'Toʻplamni oʻchirib boʻlmadi',
			'collections.deleteFailedWithError' => ({required Object error}) => 'Toʻplamni oʻchirish xatoligi: ${error}',
			'collections.selectCollection' => 'Toʻplamni tanlash',
			'collections.collectionName' => 'Toʻplam nomi',
			'collections.enterCollectionName' => 'Toʻplam nomini kiriting',
			'collections.addedToCollection' => 'Toʻplamga qoʻshildi',
			'collections.errorAddingToCollection' => 'Toʻplamga qoʻshib boʻlmadi',
			'collections.created' => 'Toʻplam yaratildi',
			'collections.removeFromCollection' => 'Toʻplamdan oʻchirish',
			'collections.removeFromCollectionConfirm' => ({required Object title}) => '"${title}" ushbu toʻplamdan oʻchirilsinmi?',
			'collections.removedFromCollection' => 'Toʻplamdan oʻchirildi',
			'collections.removeFromCollectionFailed' => 'Toʻplamdan oʻchirib boʻlmadi',
			'collections.removeFromCollectionError' => ({required Object error}) => 'Oʻchirish xatoligi: ${error}',
			'collections.searchCollections' => 'Toʻplamlardan qidirish...',
			'playlists.title' => 'Ijro roʻyxatlari',
			'playlists.playlist' => 'Ijro roʻyxati',
			'playlists.noPlaylists' => 'Ijro roʻyxatlari topilmadi',
			'playlists.create' => 'Ijro roʻyxatini yaratish',
			'playlists.playlistName' => 'Ijro roʻyxati nomi',
			'playlists.enterPlaylistName' => 'Roʻyxat nomini kiriting',
			'playlists.delete' => 'Ijro roʻyxatini oʻchirish',
			'playlists.removeItem' => 'Roʻyxatdan oʻchirish',
			'playlists.smartPlaylist' => 'Aqlli ijro roʻyxati',
			'playlists.itemCount' => ({required Object count}) => '${count} element',
			'playlists.oneItem' => '1 element',
			'playlists.emptyPlaylist' => 'Ushbu roʻyxat boʻsh',
			'playlists.deleteConfirm' => 'Ijro roʻyxati oʻchirilsinmi?',
			'playlists.deleteMessage' => ({required Object name}) => '"${name}" oʻchirilsinmi?',
			'playlists.created' => 'Ijro roʻyxati yaratildi',
			'playlists.deleted' => 'Ijro roʻyxati oʻchirildi',
			'playlists.itemAdded' => 'Roʻyxatga qoʻshildi',
			'playlists.itemRemoved' => 'Roʻyxatdan oʻchirildi',
			'playlists.selectPlaylist' => 'Roʻyxatni tanlash',
			'playlists.searchPlaylists' => 'Ijro roʻyxatlaridan qidirish...',
			'playlists.errorCreating' => 'Roʻyxatni yaratib boʻlmadi',
			'playlists.errorDeleting' => 'Roʻyxatni oʻchirib boʻlmadi',
			'playlists.errorLoading' => 'Roʻyxatlarni yuklab boʻlmadi',
			'playlists.errorAdding' => 'Roʻyxatga qoʻshib boʻlmadi',
			'playlists.errorReordering' => 'Qayta tartiblab boʻlmadi',
			'playlists.errorRemoving' => 'Roʻyxatdan oʻchirib boʻlmadi',
			'music.goToAlbum' => 'Albomga oʻtish',
			'music.goToArtist' => 'Ijrochiga oʻtish',
			'music.instantMix' => 'Tezkor miks',
			'music.playNext' => 'Keyingisini ijro etish',
			'music.addToQueue' => 'Navbatga qoʻshish',
			'music.discNumber' => ({required Object n}) => '${n}-disk',
			'music.trackCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uz'))(n, one: '${n} tarona', other: '${n} tarona', ), 
			'music.nowPlaying' => 'Hozir ijro etilmoqda',
			'music.playingFrom' => ({required Object title}) => '${title} manbasidan',
			'music.queue' => 'Navbat',
			'music.clearQueue' => 'Navbatni tozalash',
			'music.lyrics' => 'Musiqa matni',
			'music.noLyrics' => 'Musiqa matni yoʻq',
			'music.sleepTimer' => 'Uyqu taymeri',
			'music.sleepTimerEndOfTrack' => 'Taronaning oxiri',
			'music.sleepTimerMinutes' => ({required Object n}) => '${n} daqiqa',
			'music.stopPlayback' => 'Ijroni toʻxtatish',
			'music.previousTrack' => 'Oldingi tarona',
			'music.nextTrack' => 'Keyingi tarona',
			'music.repeat' => 'Takrorlash',
			'music.repeatAll' => 'Barchasini takrorlash',
			'music.repeatOne' => 'Birtasini takrorlash',
			'music.instantMixNoServer' => 'Tezkor miks uchun hech qanday server mavjud emas',
			'music.instantMixFailed' => 'Tezkor miksni yuklab boʻlmadi',
			'music.instantMixEmpty' => 'Tezkor miks hech qanday taronani qaytarmadi',
			'music.noAudioUrl' => ({required Object track}) => '${track} uchun audio URL mavjud emas',
			'music.discography.singlesAndEps' => 'Singllar va EP',
			'music.discography.live' => 'Jonli',
			'music.discography.compilations' => 'Toʻplamlar',
			'watchTogether.title' => 'Birgalikda tomosha qilish',
			'watchTogether.description' => 'Doʻstlaringiz va oilangiz bilan birga tomosha qiling',
			'watchTogether.createRoom' => 'Xona yaratish',
			'watchTogether.creatingRoom' => 'Xona yaratilmoqda...',
			'watchTogether.joinRoom' => 'Xonaga kirish',
			'watchTogether.joiningRoom' => 'Xonaga kirish...',
			'watchTogether.connecting' => 'Ulanmoqda...',
			'watchTogether.relayPublic' => 'Xonalar ommaviy Open Watch Party relelaridan foydalanadi.',
			'watchTogether.relayCustom' => ({required Object url}) => 'Xonalar ${url} manzilidagi releyingizdan foydalanadi.',
			'watchTogether.recentRooms' => 'Yaqindagi xonalar',
			'watchTogether.roomActions' => 'Xonadagi harakatlar',
			'watchTogether.renameRoom' => 'Xona nomini oʻzgartirish',
			'watchTogether.removeRoom' => 'Oʻchirish',
			'watchTogether.enterRoomCode' => 'Xostdan 6 ta belgidan iborat kodni kiriting.',
			'watchTogether.roomCode' => 'Xona kodi',
			'watchTogether.paste' => 'joylashtirish',
			'watchTogether.noCodeInClipboard' => 'Buferda xona kodi mavjud emas',
			'watchTogether.copyCode' => 'Kodni nusxalash',
			'watchTogether.codeCopied' => 'Xona kodi nusxalandi',
			'watchTogether.shareInvite' => 'Taklifni ulashing',
			'watchTogether.qrShare' => 'QR kodini ulashing',
			'watchTogether.qrHint' => 'Bu xonaga qo‘shilish uchun Luroka ilovasi bilan skanerlang.',
			'watchTogether.phasePlaying' => 'Oʻynamoqda',
			'watchTogether.phasePaused' => 'Pauza qilingan',
			'watchTogether.phaseWaiting' => 'Hammani kutaman',
			'watchTogether.inviteCopied' => 'Taklif nusxalandi. Uni xabarga joylashtiring.',
			'watchTogether.inviteMessage' => ({required Object code}) => 'Luroka: luroka://watch?code=${code}: “Birga tomosha” xonasiga qo‘shiling yoki “Birga tomosha”ni oching va ${code}-ni kiriting.',
			'watchTogether.openSessionControls' => 'Boshqaruv elementlarini ochish',
			'watchTogether.reconnecting' => 'Qayta ulanmoqda...',
			'watchTogether.reconnectingDescription' => 'Ulanish uzildi. Siz xonaga avtomatik ravishda qaytasiz.',
			'watchTogether.connected' => 'Ulangan',
			'watchTogether.disconnected' => 'Ulangan',
			'watchTogether.youAreHost' => 'Siz tashkilotchisiz',
			'watchTogether.hostedBy' => ({required Object name}) => '${name} tomonidan joylashtirilgan',
			'watchTogether.hostControlsPlayback' => 'Ijroni tashkilotchi boshqaradi',
			'watchTogether.anyoneCanControl' => 'Ijroni har kim boshqara oladi',
			'watchTogether.roomLocked' => 'Xona qulflangan',
			'watchTogether.nowPlaying' => 'Hozir ijro etilmoqda',
			'watchTogether.nothingPlaying' => 'Hech narsa o\'ynamaydi',
			'watchTogether.nothingPlayingHost' => 'Xona bilan bo‘lishish uchun istalgan kutubxonadagi biror narsani o‘ynang.',
			'watchTogether.nothingPlayingGuest' => 'Uy egasi biror narsani o\'ynasa, u shu erda ochiladi.',
			'watchTogether.notShareable' => 'Bu videoda hech qanday katalog mavjud emas, shuning uchun uni faqat bir xil serverga kirish huquqiga ega odamlar oʻynashi mumkin.',
			'watchTogether.searching' => 'Bu video kutubxonalaringizdan qidirilmoqda...',
			'watchTogether.yourCopy' => 'Sizning nusxangiz',
			'watchTogether.sharingYourCopy' => 'Nusxangizni baham ko\'rasiz',
			'watchTogether.playingOtherLength' => ({required Object difference}) => 'Sizning nusxangiz ijro etilmoqda, ${difference}',
			'watchTogether.mismatchTitle' => 'Sizning nusxangiz boshqa uzunlikda',
			'watchTogether.mismatchDescription' => ({required Object difference}) => 'Sizning eng yaqin nusxangiz ${difference} xona videosiga qaraganda. Bu boshqa kesish yoki versiya bo\'lishi mumkin.',
			'watchTogether.playAnyway' => 'Baribir oʻynang',
			'watchTogether.chooseAnotherCopy' => 'Boshqa nusxani tanlang',
			'watchTogether.dontPlay' => 'O\'ynamang',
			'watchTogether.unavailableTitle' => 'Sizda bu video yoʻq',
			'watchTogether.unavailableDescription' => 'Luroka uni kutubxonalaringizdan topa olmadi. Nusxasini oʻzingiz tanlang yoki qaytadan qidiring.',
			'watchTogether.chooseCopy' => 'Nusxasini tanlang',
			'watchTogether.searchAgain' => 'Qayta qidirish',
			'watchTogether.noCandidates' => 'Kutubxonalaringizda hech qanday nusxa topilmadi.',
			'watchTogether.choiceFailed' => 'Bu nusxani xona uchun o‘ynatib bo‘lmadi',
			'watchTogether.lengthLonger' => ({required Object duration}) => '${duration} uzoqroq',
			'watchTogether.lengthShorter' => ({required Object duration}) => '${duration} qisqaroq',
			'watchTogether.lengthSame' => 'Bir xil uzunlik',
			'watchTogether.lengthUnknown' => 'Uzunligi noma\'lum',
			'watchTogether.joinCurrentPlayback' => 'Joriy ijroga qoʻshilish',
			'watchTogether.joinCurrentPlaybackDescription' => 'Tashkilotchi koʻrayotgan joyga oʻting',
			'watchTogether.stopMedia' => 'Hamma uchun videoni to\'xtating',
			'watchTogether.syncOffset' => 'Sinxronlash ofset',
			'watchTogether.syncOffsetDescription' => 'Agar video xonadan oldinda yoki orqasida ishlayotgan bo\'lsa, uni o\'zgartiring.',
			'watchTogether.offsetHint' => ({required Object difference}) => 'Sizning nusxangiz ${difference} xonadagi videoga qaraganda.',
			'watchTogether.applyDifference' => ({required Object offset}) => '${offset} dan foydalaning',
			'watchTogether.offsetMinusSecond' => '-1 s',
			'watchTogether.offsetMinusTenth' => '-100 ms',
			'watchTogether.offsetPlusTenth' => '+100 ms',
			'watchTogether.offsetPlusSecond' => '+1 s',
			'watchTogether.participants' => 'Ishtirokchilar',
			'watchTogether.participantCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uz'))(n, one: '${n} ishtirokchisi', other: '${n} ishtirokchilari', ), 
			'watchTogether.hostBadge' => 'TASHKILOTCHI',
			'watchTogether.nameYou' => ({required Object name}) => '${name} (siz)',
			'watchTogether.playerIdle' => 'Bo\'sh',
			'watchTogether.playerLoading' => 'Yuklanmoqda',
			'watchTogether.playerReady' => 'Tayyor',
			'watchTogether.playerBuffering' => 'Buferlash',
			'watchTogether.matchSearching' => 'Qidirilmoqda',
			'watchTogether.matchMatched' => 'Videosi bor',
			'watchTogether.matchMismatched' => 'Turli uzunlik',
			'watchTogether.matchUnavailable' => 'Video yo\'q',
			'watchTogether.participantOffset' => ({required Object offset}) => 'Ofset ${offset}',
			'watchTogether.makeHost' => 'Tashkilotchi qilish',
			'watchTogether.makeHostQuestion' => 'Tashkilotchi oʻtkazilsinmi?',
			'watchTogether.makeHostConfirm' => ({required Object name}) => '${name} ijroni boshqaradi va seansni hamma uchun olib boradi.',
			'watchTogether.transfer' => 'Oʻtkazish',
			'watchTogether.removeParticipant' => 'Xonadan olib tashlash',
			'watchTogether.removeParticipantQuestion' => ({required Object name}) => '${name} olib tashlansinmi?',
			'watchTogether.removeParticipantConfirm' => ({required Object name}) => '${name} xonani tark etadi. Xonani qulflamaguningizcha ular kod bilan yana qoʻshilishlari mumkin.',
			'watchTogether.remove' => 'O\'chirish',
			'watchTogether.roomSettings' => 'Xona sozlamalari',
			'watchTogether.letEveryoneControl' => 'Ijroni hammaga boshqarishga ruxsat bering',
			'watchTogether.lockRoom' => 'Qulf xonasi',
			'watchTogether.lockRoomDescription' => 'Hech kim yangi qo\'shila olmaydi',
			'watchTogether.leaveRoom' => 'Xonani tark eting',
			'watchTogether.leaveRoomQuestion' => 'Xonadan chiqasizmi?',
			'watchTogether.leaveRoomConfirm' => 'Xona kodi bilan yana qoʻshilishingiz mumkin.',
			'watchTogether.leave' => 'Chiqish',
			'watchTogether.endRoom' => 'Yakuniy xona',
			'watchTogether.endRoomQuestion' => 'Yakuniy xonami?',
			'watchTogether.endRoomConfirm' => 'Bu hamma uchun xonani tugatadi.',
			'watchTogether.end' => 'Yakunlash',
			'watchTogether.playBlockedTitle' => 'Ijro boshlanmadi',
			'watchTogether.playBlockedDescription' => 'Xona bilan tomosha qilishni boshlash uchun oʻynash tugmasini bosing.',
			'watchTogether.notices.pressedPlay' => ({required Object name}) => '${name} bosilgan ijro',
			'watchTogether.notices.playbackStarted' => 'Ijro boshlandi',
			'watchTogether.notices.paused' => ({required Object name}) => '${name} toʻxtatdi',
			'watchTogether.notices.playbackPaused' => 'Ijro to‘xtatildi',
			'watchTogether.notices.jumpedTo' => ({required Object name, required Object position}) => '${name} ${position} ga o\'tdi',
			'watchTogether.notices.roomJumpedTo' => ({required Object position}) => '${position} ga oʻtildi',
			'watchTogether.notices.changedSpeed' => ({required Object name, required Object speed}) => '${name} tezlikni ${speed} ga oʻrnatdi',
			'watchTogether.notices.speedChanged' => ({required Object speed}) => 'Tezlik ${speed} ga sozlangan',
			'watchTogether.notices.startedMedia' => ({required Object name, required Object title}) => '${name} ${title} ishga tushirildi',
			'watchTogether.notices.mediaStarted' => ({required Object title}) => 'Hozir ${title} oʻynalmoqda',
			'watchTogether.notices.stoppedMedia' => ({required Object name}) => '${name} videoni to‘xtatdi',
			'watchTogether.notices.mediaStopped' => 'Video toʻxtadi',
			'watchTogether.notices.waitingFor' => ({required Object name}) => '${name} kutilmoqda...',
			'watchTogether.notices.waitingForSomeone' => 'Kimdir yetib olishini kutmoqda...',
			'watchTogether.notices.finished' => 'Tugallandi',
			'watchTogether.notices.hostChangedTo' => ({required Object name}) => '${name} endi tashkilotchi',
			'watchTogether.notices.youAreNowHost' => 'Endi tashkilotchi sizsiz',
			_ => null,
		} ?? switch (path) {
			'watchTogether.notices.joined' => ({required Object name}) => '${name} qoʻshildi',
			'watchTogether.notices.left' => ({required Object name}) => '${name} chiqdi',
			'watchTogether.notices.controlRefused' => 'Faqat uy egasi ijroni boshqarishi mumkin',
			'watchTogether.notices.searchFailed' => 'Baʼzi serverlarda xonaning videosini qidirib boʻlmadi',
			'watchTogether.notices.playBlocked' => 'Boshlash uchun o\'ynash tugmasini bosing',
			'watchTogether.notices.shareFailed' => 'Bu videoni xonaga ulashib bo‘lmadi',
			'watchTogether.notices.notShared' => 'Yuklab olingan videolar xonaga ulashilmaydi',
			'watchTogether.notices.openFailed' => 'Xonadagi videoni ochib bo‘lmadi',
			'watchTogether.ended.ended' => 'Uy egasi xonani tugatdi',
			'watchTogether.ended.kicked' => 'Siz xonadan chiqarildingiz',
			'watchTogether.ended.expired' => 'Xona muddati tugadi',
			'watchTogether.ended.replaced' => 'Bu xonaga boshqa qurilmada qo‘shildingiz',
			'watchTogether.ended.lost' => 'Xona bilan aloqa uzildi',
			'watchTogether.errors.invalidCode' => 'Bu xona kodi emas. Kodlar 0, 1, I, L yoki O bo\'lmagan 6 ta harf va raqamdan iborat.',
			'watchTogether.errors.roomNotFound' => 'Hech bir xonada bunday kod yo\'q. Bu tugagan bo\'lishi mumkin.',
			'watchTogether.errors.roomFull' => 'Bu xona to\'la.',
			'watchTogether.errors.roomLocked' => 'Uy egasi xonani qulflab qo\'ydi.',
			'watchTogether.errors.relayFull' => 'Birga tomosha qiling hozir band. Keyinroq qayta urinib ko‘ring.',
			'watchTogether.errors.unreachable' => 'Birgalikda tomosha qilish estafetasiga etib bo‘lmadi. Ulanishingizni tekshiring.',
			'watchTogether.errors.rateLimited' => 'Juda koʻp urinishlar. Bir oz kutib turing va qayta urinib ko\'ring.',
			'watchTogether.errors.clientBlocked' => 'Luroka ning ushbu versiyasi releydan foydalana olmaydi. Ilovani yangilang.',
			'watchTogether.errors.forbidden' => 'Buni faqat uy egasi qila oladi.',
			'watchTogether.errors.notInRoom' => 'Siz xonada emassiz.',
			'watchTogether.errors.alreadyInRoom' => 'Siz allaqachon xonadasiz.',
			'watchTogether.errors.resumeFailed' => 'Xonaga qayta qo‘shilib bo‘lmadi.',
			'watchTogether.errors.unsupported' => 'Rele buni qo\'llab-quvvatlamaydi.',
			'watchTogether.errors.generic' => 'Nimadir xato ketdi. Qayta urinib ko\'ring.',
			'watchTogether.untitledEpisode' => ({required Object number}) => 'Qism ${number}',
			'downloads.title' => 'Yuklamalar',
			'downloads.manage' => 'Boshqarish',
			'downloads.tvShows' => 'TV Shoular',
			'downloads.movies' => 'Filmlar',
			'downloads.music' => 'Musiqa',
			'downloads.tracksQueued' => ({required Object count}) => '${count} tarona yuklash navbatiga qoʻshildi',
			'downloads.noDownloads' => 'Hali yuklamalar yoʻq',
			'downloads.noDownloadsDescription' => 'Yuklangan fayllar oflayn koʻrish uchun bu yerda koʻrinadi',
			'downloads.downloadNow' => 'Yuklab olish',
			'downloads.deleteDownload' => 'Yuklamani oʻchirish',
			'downloads.retryDownload' => 'Yuklashni qaytadan urinish',
			'downloads.downloadQueued' => 'Yuklash navbatga qoʻyildi',
			'downloads.downloadResumed' => 'Yuklash davom ettirildi',
			'downloads.serverErrorBitrate' => 'Server xatoligi: fayl tezlik cheklovidan oshgan boʻlishi mumkin',
			'downloads.storageFull' => 'Boʻsh xotirani saqlash uchun yuklashlar toʻxtatildi. Joy boʻshating yoki boshqa yuklash joyini tanlang, soʻng qayta urinib koʻring.',
			'downloads.storageUnavailable' => 'Boʻsh xotirani tekshirib boʻlmagani uchun yuklamalar toʻxtatildi. Yuklash joyini tekshirib, qaytadan urinib koʻring.',
			'downloads.episodesQueued' => ({required Object count}) => '${count} qism yuklash navbatiga qoʻshildi',
			'downloads.downloadDeleted' => 'Yuklama oʻchirildi',
			'downloads.deleteConfirm' => ({required Object title}) => '"${title}" ushbu qurilmadan oʻchirilsinmi?',
			'downloads.deleteCollectionDownloads' => 'Yuklab olishlarni o\'chirish',
			'downloads.deleteCollectionDownloadsConfirm' => ({required Object title}) => '“${title}” faylidagi har bir yuklab olish ushbu qurilmadan oʻchirilsinmi?',
			'downloads.collectionDownloadsDeleted' => 'Yuklashlar oʻchirildi',
			'downloads.cancelledDownloadTitle' => 'Toʻxtatilgan yuklama',
			'downloads.cancelledDownloadMessage' => 'Ushbu yuklash bekor qilindi. Nima qilmoqchisiz?',
			'downloads.allEpisodesAlreadyDownloaded' => 'Barcha qismlar avvaldan yuklab olingan',
			'downloads.resumeDownload' => 'Yuklashni davom ettirish',
			'downloads.cancelledDownload' => 'Toʻxtatilgan yuklama',
			'downloads.syncingFile' => ({required Object file, required Object status}) => '${file} (${status} sinxronlanmoqda)',
			'downloads.downloadedFileClickToComplete' => ({required Object file}) => 'Yuklab olindi ${file} - Yakunlash uchun bosing',
			'downloads.partialDownloadClickToComplete' => 'Qisman yuklandi - Yakunlash uchun bosing',
			'downloads.deleting' => 'Oʻchirilmoqda...',
			'downloads.deletingWithProgress' => ({required Object title, required Object current, required Object total}) => '${title} oʻchirilmoqda... (${current} / ${total})',
			'downloads.queuedTooltip' => 'Navbatda',
			'downloads.queuedFilesTooltip' => ({required Object files}) => 'Navbatdagi fayllar: ${files}',
			'downloads.downloadingTooltip' => 'Yuklanmoqda...',
			'downloads.downloadingFilesTooltip' => ({required Object files}) => 'Yuklanayotgan fayllar: ${files}',
			'downloads.noDownloadsTree' => 'Yuklamalar yoʻq',
			'downloads.pauseAll' => 'Barchasini toʻxtatib turish',
			'downloads.resumeAll' => 'Barchasini davom ettirish',
			'downloads.retryAll' => 'Hammasini qayta urinib ko\'ring',
			'downloads.retryFailed' => 'Muvaffaqiyatsiz yuklab olishlarni qaytadan urinish',
			'downloads.deleteAll' => 'Barchasini oʻchirish',
			'downloads.selectVersion' => 'Versiyani tanlash',
			'downloads.allEpisodes' => 'Barcha qismlar',
			'downloads.unwatchedOnly' => 'Faqat koʻrilmaganlar',
			'downloads.nextNUnwatched' => ({required Object count}) => 'Keyingi ${count} koʻrilmagan',
			'downloads.customAmount' => 'Boshqa miqdor...',
			'downloads.includeSpecials' => 'Maxsus qismlarni qoʻshish',
			'downloads.howManyEpisodes' => 'Nechta qism?',
			'downloads.invalidEpisodeCount' => 'Toʻgʻri qismlar sonini kiriting.',
			'downloads.keepSynced' => 'Sinxronlangan holatda ushlash',
			'downloads.downloadOnce' => 'Bir marta yuklab olish',
			'downloads.keepNUnwatched' => ({required Object count}) => '${count} koʻrilmagan qismni saqlash',
			'downloads.editSyncRule' => 'Sinxronlash qoidasini tahrirlash',
			'downloads.removeSyncRule' => 'Sinxronlash qoidasini oʻchirish',
			'downloads.removeSyncRuleConfirm' => ({required Object title}) => '"${title}" sinxronlashi toʻxtatilsinmi? Yuklab olingan qismlar saqlanadi.',
			'downloads.removeListSyncRuleConfirm' => ({required Object title}) => '"${title}" sinxronlashi toʻxtatilsinmi?',
			'downloads.deleteSyncRuleDownloads' => 'Bogʻliq yuklamalar ham oʻchirilsin',
			'downloads.deleteSyncRuleDownloadsDescription' => 'Boshqa sinxronlash qoidasi yoki profil ishlatayotgan yuklamalar saqlanadi.',
			'downloads.syncRuleCreated' => ({required Object count}) => 'Sinxronlash qoidasi yaratildi — ${count} koʻrilmagan qism saqlanadi',
			'downloads.syncRuleUpdated' => 'Sinxronlash qoidasi yangilandi',
			'downloads.syncRuleRemoved' => 'Sinxronlash qoidasi oʻchirildi',
			'downloads.syncRuleAndDownloadsRemoved' => 'Sinxronlash qoidasi va bogʻliq yuklamalar oʻchirildi',
			'downloads.syncRuleCleanupBusy' => 'Sinxronlash qoidalari hozir yangilanmoqda. Bir ozdan soʻng qayta urinib koʻring.',
			'downloads.syncRuleCleanupUnavailable' => 'Bogʻliq yuklamalarni xavfsiz aniqlab boʻlmadi. Serverga qayta ulanib koʻring yoki yuklamalarni oʻchirmasdan qoidani olib tashlang.',
			'downloads.syncedNewEpisodes' => ({required Object title, required Object count}) => '${title} uchun ${count} yangi qism sinxronlandi',
			'downloads.activeSyncRules' => 'Faol sinxronlash qoidalari',
			'downloads.noSyncRules' => 'Sinxronlash qoidalari yoʻq',
			'downloads.manageSyncRule' => 'Sinxronlashni boshqarish',
			'downloads.editEpisodeCount' => 'Qismlar soni',
			'downloads.editSyncFilter' => 'Sinxronlash filtri',
			'downloads.syncAllItems' => 'Barcha elementlar sinxronlanadi',
			'downloads.syncUnwatchedItems' => 'Koʻrilmagan elementlar sinxronlanadi',
			'downloads.syncRuleServerContext' => ({required Object server, required Object status}) => 'Server: ${server} • ${status}',
			'downloads.syncRuleAvailable' => 'Mavjud',
			'downloads.syncRuleOffline' => 'Oflayn',
			'downloads.syncRuleSignInRequired' => 'Kirish talab etiladi',
			'downloads.syncRuleAccessDenied' => 'Kirish rad etildi',
			'downloads.syncRuleNotAvailableForProfile' => 'Joriy profil uchun mavjud emas',
			'downloads.syncRuleUnknownServer' => 'Nomaʼlum server',
			'downloads.syncRuleListCreated' => 'Sinxronlash qoidasi yaratildi',
			'downloads.backgroundWarning.bannerBlocked' => 'Ilovadan chiqqaningizda yuklamalar toʻxtaydi',
			'downloads.backgroundWarning.bannerDegraded' => 'Fondagi yuklamalar cheklangan boʻlishi mumkin',
			'downloads.backgroundWarning.bannerAction' => 'Batafsil',
			'downloads.backgroundWarning.sheetTitle' => 'Fondagi yuklamalar bloklangan',
			'downloads.backgroundWarning.sheetTitleDegraded' => 'Fondagi yuklamalar cheklangan boʻlishi mumkin',
			'downloads.backgroundWarning.sheetIntro' => 'Android Luroka-ning fonda ishonchli yuklab olishiga toʻsqinlik qilmoqda.',
			'downloads.backgroundWarning.sheetIntroDegraded' => 'Qurilmangiz Luroka fonda qachon yuklay olishini cheklamoqda.',
			'downloads.backgroundWarning.reasonBackgroundRestricted' => 'Luroka-ning fondagi faoliyati cheklangan. Batareya yoki fondagi foydalanishni "Cheklanmagan" qilib belgilang.',
			'downloads.backgroundWarning.reasonStandbyRestricted' => 'Android Luroka-ni cheklangan kutish holatiga oʻtkazdi. Batareya foydalanishini "Cheklanmagan" qilib belgilang.',
			'downloads.backgroundWarning.reasonDownloadChannelBlocked' => 'Yuklash bildirishnomalari oʻchirilgan, shuning uchun jarayon koʻrsatkichi va boshqaruv elementlari mavjud boʻlmasligi mumkin.',
			'downloads.backgroundWarning.reasonNotificationsDisabled' => 'Bildirishnomalar oʻchirilgan. Android 13 va undan yangi versiyalarda uzoq davom etadigan fondagi yuklamalar uchun ular talab qilinadi.',
			'downloads.backgroundWarning.reasonDataSaver' => 'Trafik tejash yoqilgan, bu mobil internetda fondagi yuklamalarni bloklaydi. Wi-Fi orqali yuklamalar ishlashi kerak.',
			'downloads.backgroundWarning.reasonOemUnknown' => 'Luroka fonda boʻlganida yuklamalar bir necha marta toʻxtadi. Luroka-ning batareya yoki fondagi foydalanish sozlamalarini tekshiring.',
			'downloads.backgroundWarning.openSettings' => 'Sozlamalarni ochish',
			'downloads.backgroundWarning.stillNotWorking' => 'Qurilmaga oid yordam',
			'downloads.backgroundWarning.stillNotWorkingDescription' => 'Qurilmangiz uchun qadamlarni koʻring yoki muammo davom etsa Sozlamalar › Jurnallarni koʻrish boʻlimidan jurnal yuboring.',
			'downloads.backgroundWarning.dialogTitle' => 'Yuklamalar tugamasligi mumkin',
			'downloads.backgroundWarning.dialogDownloadAnyway' => 'Baribir yuklash',
			'downloads.backgroundWarning.dialogFixFirst' => 'Avval buni tuzatish',
			'downloads.backgroundWarning.statusTile' => 'Fondagi yuklamalar',
			'downloads.backgroundWarning.statusOk' => 'Fonda ishlashga ruxsat berilgan',
			'downloads.backgroundWarning.statusBlocked' => 'Tizim sozlamalari tomonidan bloklangan',
			'downloads.backgroundWarning.statusDegraded' => 'Tizim sozlamalari tomonidan cheklangan',
			'downloads.backgroundWarning.statusUnknown' => 'Hali tekshirilmagan',
			'downloads.backgroundWarning.settingsUnavailable' => 'Bu qurilmada tizim sozlamalarini ochib boʻlmadi',
			'downloads.backgroundWarning.linkUnavailable' => 'Bu qurilmada dontkillmyapp.com-ni ochib boʻlmadi',
			'downloads.options' => 'Yuklamalar parametrlari',
			'downloads.groupings.library' => 'Kutubxona',
			'downloads.groupings.collections' => 'To\'plamlar',
			'downloads.unknownLibrary' => 'Nomaʼlum kutubxona',
			'downloads.unknownShow' => 'Nomaʼlum serial',
			'downloads.unknownSeason' => 'Nomaʼlum mavsum',
			'downloads.unknownAlbum' => 'Nomaʼlum albom',
			'downloads.completedOfTotal' => ({required Object completed, required Object total}) => '${completed}/${total} ta yakunlandi',
			'downloads.errorFileNotFound' => 'Fayl topilmadi (404)',
			'downloads.errorDownloadNotAllowed' => 'Server yuklab olishga ruxsat bermaydi (403)',
			'downloads.errorDownloadFailed' => 'Yuklab boʻlmadi',
			'downloads.errorDownloadFailedWithReason' => ({required Object reason}) => 'Yuklab boʻlmadi: ${reason}',
			'downloads.errorHttpStatus' => ({required Object status}) => 'Yuklab boʻlmadi (HTTP ${status})',
			'downloads.errorPostProcessing' => ({required Object reason}) => 'Keyingi ishlov berishda xatolik: ${reason}',
			'downloads.reasonFileNotSaved' => 'faylni ushbu qurilmada saqlab boʻlmadi',
			'downloads.reasonCannotResume' => 'qisman yuklab olishni davom ettirib boʻlmadi',
			'downloads.reasonDeviceStorageFull' => 'ushbu qurilmada xotira qolmadi',
			'downloads.notificationDownloading' => 'Yuklanmoqda...',
			'downloads.notificationComplete' => 'Yuklash tugallandi',
			'downloads.notificationPaused' => 'Yuklash toʻxtatib turildi',
			'shaders.title' => 'Sheyderlar',
			'shaders.noShaderDescription' => 'Video yaxshilash oʻchirilgan',
			'shaders.nvscalerDescription' => 'Aniqroq video uchun NVIDIA masshtabi',
			'shaders.artcnnVariantNeutral' => 'Neytral',
			'shaders.artcnnVariantDenoise' => 'Shovqinni kamaytirish',
			'shaders.artcnnVariantDenoiseSharpen' => 'Shovqinni kamaytirish + Aniqlik',
			'shaders.qualityFast' => 'Tezkor',
			'shaders.qualityHQ' => 'Yuqori sifat',
			'shaders.mode' => 'Rejim',
			'shaders.importShader' => 'Sheyderni import qilish',
			'shaders.customShaderDescription' => 'Maxsus GLSL sheyderi',
			'shaders.shaderImported' => 'Sheyder import qilindi',
			'shaders.shaderImportFailed' => 'Sheyderni import qilib boʻlmadi',
			'shaders.deleteShader' => 'Sheyderni oʻchirish',
			'shaders.deleteShaderConfirm' => ({required Object name}) => '"${name}" oʻchirilsinmi?',
			'companionRemote.title' => 'Yordamchi pult',
			'companionRemote.connectedTo' => ({required Object name}) => '${name} qurilmasiga ulandi',
			'companionRemote.unknownDevice' => 'Nomaʼlum qurilma',
			'companionRemote.session.startingServer' => 'Pult serveri ishga tushmoqda...',
			'companionRemote.session.hostAddress' => 'Xost manzili',
			'companionRemote.session.connected' => 'Ulandi',
			'companionRemote.session.serverRunning' => 'Server faol',
			'companionRemote.session.serverStopped' => 'Server toʻxtatildi',
			'companionRemote.session.serverRunningDescription' => 'Tarmoqdagi mobil qurilmalar ulanishi mumkin',
			'companionRemote.session.serverStoppedDescription' => 'Ulanishga ruxsat berish uchun serverni ishga tushiring',
			'companionRemote.session.usePhoneToControl' => 'Ushbu ilovani boshqarish uchun telefoningizdan foydalaning',
			'companionRemote.session.startServer' => 'Serverni ishga tushirish',
			'companionRemote.session.stopServer' => 'Serverni toʻxtatish',
			'companionRemote.session.minimize' => 'Yigʻish',
			'companionRemote.session.manualAddressHint' => 'Qoʻlda ulanish manzili:',
			'companionRemote.pairing.discoveryDescription' => 'Bir xil Plex hisobidagi Luroka qurilmalari bu yerda koʻrinadi',
			'companionRemote.pairing.hostAddressHint' => '192.168.1.100:48632',
			'companionRemote.pairing.connecting' => 'Ulanilmoqda...',
			'companionRemote.pairing.searchingForDevices' => 'Qurilmalar qidirilmoqda...',
			'companionRemote.pairing.noDevicesFound' => 'Tarmoqda qurilmalar topilmadi',
			'companionRemote.pairing.noDevicesHint' => 'Kompyuterda Luroka-ni oching va bir xil Wi-Fi-ga ulaning',
			'companionRemote.pairing.availableDevices' => 'Mavjud qurilmalar',
			'companionRemote.pairing.manualConnection' => 'Qoʻlda ulanish',
			'companionRemote.pairing.cryptoInitFailed' => 'Xavfsiz ulanish xatoligi. Avval Plex-ga kiring.',
			'companionRemote.pairing.validationHostRequired' => 'Xost manzilini kiriting',
			'companionRemote.pairing.validationHostFormat' => 'Format IP:port koʻrinishida boʻlishi kerak',
			'companionRemote.pairing.connectionTimedOut' => 'Ulanish vaqti tugadi. Ikkala qurilmada ham bir xil tarmoqdan foydalaning.',
			'companionRemote.pairing.sessionNotFound' => 'Qurilma topilmadi. Luroka xost qurilmada ishga tushirilganiga ishonch hosil qiling.',
			'companionRemote.pairing.authFailed' => 'Autentifikatsiya xatoligi.',
			'companionRemote.pairing.failedToConnect' => ({required Object error}) => 'Ulanib boʻlmadi: ${error}',
			'companionRemote.remote.disconnectConfirm' => 'Pult seansidan uzilasizmi?',
			'companionRemote.remote.reconnecting' => 'Qayta ulanilmoqda...',
			'companionRemote.remote.attemptOf' => ({required Object current}) => 'Urinish ${current} / 5',
			'companionRemote.remote.retryNow' => 'Hozir qaytadan urinib koʻrish',
			'companionRemote.remote.tabRemote' => 'Pult',
			'companionRemote.remote.tabPlay' => 'Ijro',
			'companionRemote.remote.tabMore' => 'Koʻproq',
			'companionRemote.remote.menu' => 'Menyu',
			'companionRemote.remote.tabNavigation' => 'Navigatsiya',
			'companionRemote.remote.tabDiscover' => 'Kashf qilish',
			'companionRemote.remote.tabLibraries' => 'Kutubxonalar',
			'companionRemote.remote.tabSearch' => 'Qidiruv',
			'companionRemote.remote.tabDownloads' => 'Yuklamalar',
			'companionRemote.remote.tabSettings' => 'Sozlamalar',
			'companionRemote.remote.previous' => 'Oldingi',
			'companionRemote.remote.playPause' => 'Ijro/Pauza',
			'companionRemote.remote.next' => 'Keyingi',
			'companionRemote.remote.seekBack' => 'Orqaga oʻtkazish',
			'companionRemote.remote.stop' => 'Toʻxtatish',
			'companionRemote.remote.seekForward' => 'Oldinga oʻtkazish',
			'companionRemote.remote.volume' => 'Ovoz',
			'companionRemote.remote.volumeDown' => 'Kamaytirish',
			'companionRemote.remote.volumeUp' => 'Oshirish',
			'companionRemote.remote.fullscreen' => 'Toʻliq ekran',
			'companionRemote.remote.subtitles' => 'Subtitrlar',
			'companionRemote.remote.audio' => 'Ovoz',
			'companionRemote.remote.searchHint' => 'Kompyuterda qidirish...',
			'companionRemote.errors.noNetworkInterface' => 'Tarmoq interfeysi topilmadi',
			'companionRemote.errors.authenticationFailed' => 'Autentifikatsiya xatoligi',
			'companionRemote.errors.serverStartFailed' => ({required Object error}) => 'Serverni ishga tushirishda xatolik: ${error}',
			'companionRemote.errors.commandFailed' => ({required Object error}) => 'Buyruqni yuborishda xatolik: ${error}',
			'companionRemote.errors.joinTimedOut' => 'Ulanish vaqti tugadi',
			'companionRemote.errors.failedToConnectAnyAddress' => 'Hech bir manzilga ulanib boʻlmadi',
			'companionRemote.errors.connectionLostAfterAttempts' => ({required Object attempts}) => '${attempts} urinishdan keyin aloqa uzildi',
			'companionRemote.errors.connectionLost' => 'Aloqa uzildi',
			'companionRemote.closedBeforeAuth' => 'Ulanish autentifikatsiyadan oldin yopildi',
			'videoSettings.playbackSpeed' => 'Ijro tezligi',
			'videoSettings.normalSpeed' => 'Normal',
			'videoSettings.sleepTimerActive' => ({required Object duration}) => 'Faol (${duration})',
			'videoSettings.zoom' => 'Masshtab',
			'videoSettings.sleepTimer' => 'Uyqu taymeri',
			'videoSettings.audioSync' => 'Audio sinxronlash',
			'videoSettings.subtitleSync' => 'Subtitr sinxronlash',
			'videoSettings.hdr' => 'HDR',
			'videoSettings.hdrUnsupported' => 'Bu yerda HDR mavjud emas — ish stoli kompozitori yoki video chiqishi uni uzata olmaydi.',
			'videoSettings.hdrToneMapping' => 'HDR tonlarini moslashtirish',
			'videoSettings.hdrToneMappingCompositor' => 'Kompozitor',
			'videoSettings.hdrToneMappingCompositorDescription' => 'Manbaning HDR metamaʼlumotlarini oʻzgarishsiz uzatib, ularni moslashtirishni ish stoli kompozitoriga topshirish.',
			'videoSettings.hdrToneMappingPlayer' => 'Pleyer',
			'videoSettings.hdrToneMappingPlayerDescription' => 'Pleyerda displeyning eng yuqori yorqinligiga moslashtirib, soʻng natijani kompozitorga bildirish.',
			'videoSettings.hdrToneMappingFailed' => 'HDR tonlarini moslashtirishni oʻzgartirib boʻlmadi — avvalgi rejim hali ham faol.',
			'videoSettings.audioOutput' => 'Audio chiqishi',
			'videoSettings.performanceOverlay' => 'Unumdorlik paneli',
			'videoSettings.audioOutputDolbyAtmos' => 'Dolby Atmos',
			'videoSettings.audioOutputDolbyAudio' => 'Dolby Audio',
			'videoSettings.audioOutputSurround' => 'Surround',
			'videoSettings.audioOutputSpatial' => 'Fazoviy audio',
			'videoSettings.audioOutputStereo' => 'Stereo',
			'videoSettings.audioNormalization' => 'Ovoz balandligini meʼyorlashtirish',
			'videoSettings.audioNormalizationDisablesPassthrough' => 'Ovozni PCM-ga dekodlaydi; bu yoqilganda toʻgʻridan-toʻgʻri oʻtkazish oʻchiriladi',
			'performanceOverlay.color' => 'Rang',
			'performanceOverlay.performance' => 'Unumdorlik',
			'performanceOverlay.buffer' => 'Bufer',
			'performanceOverlay.app' => 'Ilova',
			'performanceOverlay.decoder' => 'Dekoder',
			'performanceOverlay.rawDecoder' => 'Ishlov berilmagan dekoder',
			'performanceOverlay.tunneling' => 'Tunnellash',
			'performanceOverlay.passthrough' => 'Toʻgʻridan-toʻgʻri oʻtkazish',
			'performanceOverlay.aspect' => 'Nisbat',
			'performanceOverlay.rotation' => 'Aylanish',
			'performanceOverlay.dvSource' => 'DV manbasi',
			'performanceOverlay.dvPath' => 'DV yoʻli',
			'performanceOverlay.dvRouteDecoder' => 'Dolby Vision dekoderi',
			'performanceOverlay.dvRouteDecoderP81' => 'Dolby Vision dekoderi (P7→8.1)',
			'performanceOverlay.dvRouteBaseLayer' => 'Asosiy qatlam',
			'performanceOverlay.dvRouteBaseLayerHdr10' => 'HDR10 asosiy qatlam',
			'performanceOverlay.dvRouteBaseLayerHlg' => 'HLG asosiy qatlami',
			'performanceOverlay.dvRouteBaseLayerSdr' => 'SDR asosiy qatlami',
			'performanceOverlay.dvRouteReshaped' => 'RPU shakli o\'zgartirildi (gpu-keyingi)',
			'performanceOverlay.p7Conversion' => 'P7 oʻtkazmasi',
			'performanceOverlay.sampleRate' => 'Diskretlash chastotasi',
			'performanceOverlay.pixelFormat' => 'Piksel formati',
			'performanceOverlay.hwFormat' => 'HW formati',
			'performanceOverlay.matrix' => 'Matritsa',
			'performanceOverlay.primaries' => 'Asosiy ranglar',
			'performanceOverlay.transfer' => 'Uzatish',
			'performanceOverlay.renderFps' => 'Render FPS',
			'performanceOverlay.displayFps' => 'Displey FPS',
			'performanceOverlay.avSync' => 'A/V sinxronlash',
			'performanceOverlay.dropped' => 'Tushirib qoldirilgan kadrlar',
			'performanceOverlay.dvRpus' => 'DV RPU-lar',
			'performanceOverlay.dvRpuAverage' => 'DV RPU Oʻrt.',
			'performanceOverlay.dvSampleAverage' => 'DV Namuna Oʻrt.',
			'performanceOverlay.maxLuma' => 'Maks Luma',
			'performanceOverlay.minLuma' => 'Min Luma',
			'performanceOverlay.maxCll' => 'MaxCLL',
			'performanceOverlay.maxFall' => 'MaxFALL',
			'performanceOverlay.cacheUsed' => 'Foydalanilgan kesh',
			'performanceOverlay.cacheLimit' => 'Kesh chegarasi',
			'performanceOverlay.speed' => 'Tezlik',
			'performanceOverlay.player' => 'Pleyer',
			'performanceOverlay.memory' => 'Xotira',
			'performanceOverlay.uiFps' => 'Interfeys (UI) FPS',
			'performanceOverlay.fps' => 'FPS',
			'performanceOverlay.decoderAndroidHw' => 'Android HW',
			'performanceOverlay.decoderNvidiaHw' => 'NVIDIA HW',
			'performanceOverlay.decoderQualcommHw' => 'Qualcomm HW',
			'performanceOverlay.decoderMediatekHw' => 'MediaTek HW',
			'performanceOverlay.decoderExynosHw' => 'Exynos HW',
			'performanceOverlay.decoderSoftware' => 'Dasturiy',
			'performanceOverlay.decoderHardware' => 'Apparat',
			'performanceOverlay.tunnelingActive' => 'Faol',
			'performanceOverlay.dvRpuFailed' => ({required Object converted, required Object failures}) => '${converted} (${failures} ta muvaffaqiyatsiz)',
			'externalPlayer.title' => 'Tashqi pleyer',
			'externalPlayer.useExternalPlayer' => 'Tashqi pleyerdan foydalanish',
			'externalPlayer.useExternalPlayerDescription' => 'Videolarni boshqa ilovada ochish',
			'externalPlayer.selectPlayer' => 'Pleyerni tanlash',
			'externalPlayer.customPlayers' => 'Maxsus pleyerlar',
			'externalPlayer.systemDefault' => 'Tizim standarti',
			'externalPlayer.addCustomPlayer' => 'Maxsus pleyer qoʻshish',
			'externalPlayer.playerName' => 'Pleyer nomi',
			'externalPlayer.playerNameHint' => 'Mening pleyerim',
			'externalPlayer.playerCommand' => 'Buyruq',
			'externalPlayer.playerPackage' => 'Paket nomi',
			'externalPlayer.playerUrlScheme' => 'URL sxemasi',
			'externalPlayer.off' => 'Oʻchirilgan',
			'externalPlayer.launchFailed' => 'Tashqi pleyerni ishga tushirib boʻlmadi',
			'externalPlayer.appNotInstalled' => ({required Object name}) => '${name} oʻrnatilmagan',
			'externalPlayer.playInExternalPlayer' => 'Tashqi pleyerda ijro etish',
			'metadataEdit.editMetadata' => 'Tahrirlash...',
			'metadataEdit.screenTitle' => 'Metamaʼlumotlarni tahrirlash',
			'metadataEdit.basicInfo' => 'Asosiy maʼlumotlar',
			'metadataEdit.artwork' => 'Rasmlar/Posterlar',
			'metadataEdit.advancedSettings' => 'Kengaytirilgan sozlamalar',
			'metadataEdit.title' => 'Nomi',
			'metadataEdit.sortTitle' => 'Saralash nomi',
			'metadataEdit.originalTitle' => 'Asl nomi',
			'metadataEdit.releaseDate' => 'Chiqqan sanasi',
			'metadataEdit.contentRating' => 'Kontent reytingi',
			'metadataEdit.studio' => 'Studiya',
			'metadataEdit.tagline' => 'Shior/Slogan',
			'metadataEdit.summary' => 'Tavsif/Qisqacha',
			'metadataEdit.poster' => 'Afisha',
			'metadataEdit.background' => 'Fon',
			'metadataEdit.logo' => 'Logotip',
			'metadataEdit.squareArt' => 'Kvadrat rasm',
			'metadataEdit.selectPoster' => 'Posterni tanlash',
			'metadataEdit.selectBackground' => 'Fonni tanlash',
			'metadataEdit.selectLogo' => 'Logotipni tanlash',
			'metadataEdit.selectSquareArt' => 'Kvadrat rasm tanlash',
			'metadataEdit.fromUrl' => 'URL orqali',
			'metadataEdit.uploadFile' => 'Fayl yuklash',
			'metadataEdit.enterImageUrl' => 'Rasm URL-manzilini kiriting',
			'metadataEdit.imageUrl' => 'Rasm URL-manzili',
			'metadataEdit.metadataUpdated' => 'Metamaʼlumotlar yangilandi',
			'metadataEdit.metadataUpdateFailed' => 'Metamaʼlumotlarni yangilab boʻlmadi',
			'metadataEdit.artworkUpdated' => 'Rasmlar yangilandi',
			'metadataEdit.artworkUpdateFailed' => 'Rasmlarni yangilab boʻlmadi',
			'metadataEdit.noArtworkAvailable' => 'Rasm mavjud emas',
			'metadataEdit.artworkOption' => ({required Object index}) => 'Rasm opsiyasi ${index}',
			'metadataEdit.selectedArtworkOption' => ({required Object index}) => 'Rasm opsiyasi ${index}, tanlandi',
			'metadataEdit.notSet' => 'Oʻrnatilmagan',
			'metadataEdit.libraryDefault' => 'Kutubxona standarti',
			'metadataEdit.accountDefault' => 'Hisob standarti',
			'metadataEdit.seriesDefault' => 'Serial standarti',
			'metadataEdit.episodeSorting' => 'Qismlarni saralash',
			'metadataEdit.oldestFirst' => 'Avval eskilar',
			'metadataEdit.newestFirst' => 'Avval yangilar',
			'metadataEdit.keep' => 'Saqlash',
			'metadataEdit.allEpisodes' => 'Barcha qismlar',
			'metadataEdit.latestEpisodes' => ({required Object count}) => 'Soʻnggi ${count} qism',
			'metadataEdit.latestEpisode' => 'Soʻnggi qism',
			'metadataEdit.episodesAddedPastDays' => ({required Object count}) => 'Soʻnggi ${count} kunda qoʻshilgan qismlar',
			'metadataEdit.deleteAfterPlaying' => 'Ijro etgandan keyin oʻchirish',
			'metadataEdit.never' => 'Hech qachon',
			'metadataEdit.afterADay' => 'Bir kundan keyin',
			'metadataEdit.afterAWeek' => 'Bir haftadan keyin',
			'metadataEdit.afterAMonth' => 'Bir oydan keyin',
			'metadataEdit.onNextRefresh' => 'Keyingi yangilanishda',
			'metadataEdit.seasons' => 'Mavsumlar',
			'metadataEdit.show' => 'Koʻrsatish',
			'metadataEdit.hide' => 'Yashirish',
			'metadataEdit.episodeOrdering' => 'Qismlar tartibi',
			'metadataEdit.tmdbAiring' => 'The Movie Database (Efir)',
			'metadataEdit.tvdbAiring' => 'TheTVDB (Efir)',
			'metadataEdit.tvdbAbsolute' => 'TheTVDB (Absolyut)',
			'metadataEdit.metadataLanguage' => 'Metamaʼlumotlar tili',
			'metadataEdit.useOriginalTitle' => 'Asl nomidan foydalanish',
			'metadataEdit.preferredAudioLanguage' => 'Afzal koʻrilgan audio tili',
			'metadataEdit.preferredSubtitleLanguage' => 'Afzal koʻrilgan subtitr tili',
			'metadataEdit.subtitleMode' => 'Avtomatik subtitr tanlash rejimi',
			'metadataEdit.manuallySelected' => 'Qoʻlda tanlangan',
			'metadataEdit.shownWithForeignAudio' => 'Chet el audiosi bilan koʻrsatiladi',
			'metadataEdit.alwaysEnabled' => 'Har doim yoqilgan',
			'metadataEdit.tags' => 'Teglar',
			'metadataEdit.addTag' => 'Teg qoʻshish',
			'metadataEdit.genre' => 'Janr',
			'metadataEdit.director' => 'Rejissyor',
			'metadataEdit.writer' => 'Ssenarist',
			'metadataEdit.producer' => 'Prodyuser',
			'metadataEdit.country' => 'Mamlakat',
			'metadataEdit.collection' => 'Toʻplam',
			'metadataEdit.label' => 'Yorliq',
			'metadataEdit.quickTag' => 'Tezkor teg...',
			'matchScreen.match' => 'Moslashtirish...',
			'matchScreen.fixMatch' => 'Moslikni tuzatish...',
			'matchScreen.unmatch' => 'Moslikni oʻchirish',
			'matchScreen.unmatchConfirm' => 'Ushbu moslik oʻchirilsinmi? Qayta moslashtirilgunga qadar Plex uni moslashtirilmagan deb hisoblaydi.',
			'matchScreen.unmatchSuccess' => 'Moslik oʻchirildi',
			'matchScreen.unmatchFailed' => 'Moslikni oʻchirib boʻlmadi',
			'matchScreen.matchApplied' => 'Moslik qoʻllanildi',
			'matchScreen.matchFailed' => 'Moslikni qoʻllab boʻlmadi',
			'matchScreen.titleHint' => 'Nomi',
			'matchScreen.yearHint' => 'Yil',
			'matchScreen.search' => 'Qidiruv',
			'matchScreen.noMatchesFound' => 'Mosliklar topilmadi',
			'serverTasks.title' => 'Server vazifalari',
			'serverTasks.failedToLoad' => 'Vazifalarni yuklab boʻlmadi',
			'serverTasks.noTasks' => 'Bajarilayotgan vazifalar yoʻq',
			'trakt.title' => 'Trakt',
			'trakt.connected' => 'Ulandi',
			'trakt.connectedAs' => ({required Object username}) => '@${username} sifatida ulandi',
			'trakt.disconnectConfirm' => 'Trakt uzilsinmi?',
			'trakt.disconnectConfirmBody' => 'Luroka Trakt-ga maʼlumot yuborishni toʻxtatadi.',
			'trakt.scrobble' => 'Real vaqt rejimida kuzatish',
			'trakt.scrobbleDescription' => 'Ijro paytida Trakt-ga maʼlumot yuborish.',
			'trakt.watchedSync' => 'Koʻrish holatini sinxronlash',
			'trakt.watchedSyncDescription' => 'Luroka-da belgilanganda Trakt-da ham belgilanadi.',
			'seerr.title' => 'Seerr',
			'seerr.connectTitle' => 'Seerr ulash',
			'seerr.serverUrl' => 'Server URL-i',
			'seerr.serverUrlHelper' => 'Seerr manzilingiz',
			'seerr.checkServer' => 'Davom ettirish',
			'seerr.signInWithJellyfin' => 'Jellyfin orqali kirish',
			'seerr.signInWithEmby' => 'Emby orqali kirish',
			'seerr.signInWithLocal' => 'Mahalliy hisobdan foydalanish',
			'seerr.email' => 'Elektron pochta',
			'seerr.noSignInMethods' => 'Ushbu Seerr qoʻllab-quvvatlanadigan kirish usulini taklif qilmaydi.',
			'seerr.instance' => 'Instansiya',
			'seerr.disconnectConfirm' => 'Seerr uzilsinmi?',
			'seerr.disconnectConfirmBody' => 'Luroka ushbu Seerr nusxasini unutadi. Istalgan vaqtda qayta ulanishingiz mumkin.',
			'seerr.request' => 'Soʻrov yuborish',
			'seerr.request4k' => '4K soʻrov yuborish',
			'seerr.seasons' => 'Mavsumlar',
			'seerr.allSeasons' => 'Barcha mavsumlar',
			'seerr.advancedOptions' => 'Kengaytirilgan',
			'seerr.destinationServer' => 'Moʻljal server',
			'seerr.qualityProfile' => 'Sifat profili',
			'seerr.rootFolder' => 'Asosiy jild',
			'seerr.languageProfile' => 'Til profili',
			'seerr.tags' => 'Yorliqlar',
			'seerr.noTags' => 'Yorliqlar yoʻq',
			'seerr.defaultOption' => ({required Object name}) => '${name} (Standart)',
			'seerr.animeNote' => 'Bu serial anime.',
			'seerr.requestSubmitted' => 'Soʻrov yuborildi',
			'seerr.requestFailed' => ({required Object error}) => 'Soʻrov xatoligi: ${error}',
			'seerr.requestsLoadFailed' => 'Parametrlarni yuklab boʻlmadi',
			'seerr.nothingToRequest' => 'Barchasi avvaldan bor yoki soʻralgan.',
			'seerr.statusAvailable' => 'Mavjud',
			'seerr.statusPartiallyAvailable' => 'Qisman mavjud',
			'seerr.statusRequested' => 'Soʻraldi',
			'seerr.statusProcessing' => 'Ishlanmoqda',
			'seerr.statusBlocklisted' => 'Bloklangan roʻyxatda',
			'seerr.couldNotReach' => ({required Object url, required Object error}) => '${url} manziliga ulanib boʻlmadi: ${error}',
			'seerr.noInstanceAtUrl' => ({required Object url, required Object status}) => '${url} manzilida Seerr nusxasi yoʻq (HTTP ${status})',
			'seerr.behindAuthProxy' => 'Seerr oʻrniga autentifikatsiya qiluvchi teskari proksi (SSO yoki HTTP auth) javob berdi. Luroka uning orqali kira olmaydi: ushbu ilova uchun Seerrning /api/v1 yoʻli proksini aylanib oʻtishiga ruxsat bering yoki Seerrga toʻgʻridan-toʻgʻri yetadigan manzildan foydalaning.',
			'seerr.invalidUrl' => 'Server manzilini kiriting, masalan: https://seerr.example.com',
			'seerr.quickConnectUnsupported' => 'Bu Seerr nusxasi Tezkor ulanishni qoʻllab-quvvatlamaydi. Buning uchun Seerr 3.4 yoki undan yangi versiya kerak.',
			'seerr.notInitialized' => 'Bu Seerr nusxasining dastlabki sozlamasi yakunlanmagan',
			'seerr.noPlexTokenForReauth' => 'Qayta kirish uchun Plex tokeni mavjud emas',
			'seerr.noStoredCredentials' => 'Qayta kirish uchun saqlangan kirish maʼlumotlari mavjud emas',
			'seerr.signInRejected' => 'Kirish rad etildi',
			'seerr.noSessionCookie' => 'Seerr seans cookie-faylini bermadi',
			'seerr.freshCookieRejected' => 'Seerr yangi seans cookie-faylini rad etdi',
			'seerr.noUserInformation' => 'Seerr foydalanuvchi maʼlumotlarini qaytarmadi',
			'seerr.sessionRejectedAfterReauth' => 'Qayta kirilgandan keyin seans rad etildi',
			'seerr.permissionDenied' => 'Seerr bu amalni rad etdi: hisobingizda endi kerakli ruxsat yoʻq',
			'seerr.permissionRevoked' => 'Buni soʻrash uchun endi ruxsatingiz yoʻq',
			'services.title' => 'Xizmatlar',
			'services.hubSubtitle' => 'Koʻrish jarayonini sinxronlang va yangi kontent soʻrang.',
			'services.discoverySection' => 'Kashf qilish va so‘rovlar',
			'services.trackingSection' => 'Ko‘rishni kuzatish va ro‘yxatlar',
			'services.seerrDescription' => 'Seerr serveringizdan film va seriallarni topib, so‘rov yuboring.',
			'services.tmdbDescription' => 'Film va seriallar, posterlar, baholar va tafsilotlarni toping.',
			'services.traktDescription' => 'Film va seriallarni kuzating, ko‘rilgan holatini sinxronlang va tomosha ro‘yxatini boshqaring.',
			'services.malDescription' => 'Anime ro‘yxati va ko‘rish jarayonini sinxron holatda saqlang.',
			'services.anilistDescription' => 'Animelarni kuzating va ko‘rish jarayonini AniList bilan sinxronlang.',
			'services.simklDescription' => 'Film, serial va animelarni Simkl orqali kuzating.',
			'services.mdblistDescription' => 'MDBList ro‘yxatlari va film baholarini ulang.',
			'services.connectionIntro' => ({required Object service}) => '${service} xizmatini joriy Luroka profilingizga ulang. Bu ulanish va uning parametrlarini istalgan vaqtda shu yerda boshqarishingiz mumkin.',
			'services.connectService' => ({required Object service}) => '${service} xizmatini ulash',
			'services.seerrConnectDescription' => 'Luroka orqali film va seriallarni topish va so‘rov yuborish uchun Seerr serveringizni ulang.',
			'services.seerrServerStep' => 'Seerr’ni ochishda foydalanadigan manzilni kiriting. Serveringiz qaysi kirish usullarini qo‘llashini tekshiramiz.',
			'services.seerrSignInStep' => 'Serveringiz qo‘llaydigan kirish usulini tanlang.',
			'services.integrations' => 'Integratsiyalar',
			'services.notConnected' => 'Ulanmagan',
			'services.connectedAs' => ({required Object username}) => '@${username} sifatida ulandi',
			'services.scrobble' => 'Jarayonni avtomatik kuzatish',
			'services.scrobbleDescription' => 'Epizod yoki filmni tugatganingizda roʻyxatingizni yangilash.',
			'services.disconnectConfirm' => ({required Object service}) => '${service} uzilsinmi?',
			'services.disconnectConfirmBody' => ({required Object service}) => 'Luroka ${service} yangilashni toʻxtatadi. Istalgan vaqtda qayta ulanishingiz mumkin.',
			'services.connectFailed' => ({required Object service}) => '${service} ulana olmadi. Qaytadan urinib koʻring.',
			'services.names.mal' => 'MyAnimeList',
			'services.names.anilist' => 'AniList',
			'services.names.simkl' => 'Simkl',
			'services.names.seerr' => 'Seerr',
			'services.names.mdblist' => 'MDBList',
			'services.simklReconnect.title' => 'Simkl ni qayta ulang',
			'services.simklReconnect.subtitle' => 'Simkl ushbu ulanishdan foydalanadigan kirish usulini bekor qilmoqda. Qayta ulanish simkl.com saytini Lurokani tasdiqlash uchun ochadi — Luroka hech qachon parolingizni ko‘rmaydi. Tomosha tarixingiz Simkl da qoladi.',
			'services.deviceCode.title' => ({required Object service}) => 'Luroka-ni ${service} xizmatida faollashtiring',
			'services.deviceCode.instructions' => 'QR-kodni skanerlang yoki quyidagi manzilga oʻtib, bu kodni kiriting:',
			'services.deviceCode.openToActivate' => ({required Object service}) => 'Faollashtirish uchun ${service} xizmatini oching',
			_ => null,
		} ?? switch (path) {
			'services.deviceCode.copyCode' => 'Faollashtirish kodini nusxalash',
			'services.deviceCode.waitingForAuthorization' => 'Avtorizatsiya kutilmoqda…',
			'services.deviceCode.codeCopied' => 'Kod nusxalandi',
			'services.oauthProxy.title' => ({required Object service}) => '${service} xizmatiga kiring',
			'services.oauthProxy.body' => 'Ushbu QR kodni skanerlang yoki URL-ni oching.',
			'services.oauthProxy.openToSignIn' => ({required Object service}) => 'Kirish uchun ${service} xizmatini oching',
			'services.pendingAuth.copyUrl' => 'Kirish URL-ini nusxalash',
			'services.pendingAuth.urlCopied' => 'URL nusxalandi',
			'services.libraryFilter.title' => 'Kutubxona filtri',
			'services.libraryFilter.subtitleAllSyncing' => 'Barcha kutubxonalar sinxronlanmoqda',
			'services.libraryFilter.subtitleNoneSyncing' => 'Hech narsa sinxronlanmaydi',
			'services.libraryFilter.subtitleBlocked' => ({required Object count}) => '${count} bloklandi',
			'services.libraryFilter.subtitleAllowed' => ({required Object count}) => '${count} ruxsat berildi',
			'services.libraryFilter.mode' => 'Filtr rejimi',
			'services.libraryFilter.modeBlacklist' => 'Qora roʻyxat',
			'services.libraryFilter.modeWhitelist' => 'Oq roʻyxat',
			'services.libraryFilter.modeHintBlacklist' => 'Quyida tanlanganlardan tashqari barcha kutubxonalarni sinxronlash.',
			'services.libraryFilter.modeHintWhitelist' => 'Faqat quyida tanlangan kutubxonalarni sinxronlash.',
			'services.libraryFilter.libraries' => 'Kutubxonalar',
			'services.libraryFilter.noLibraries' => 'Kutubxonalar yoʻq',
			'addServer.addMediaBrowserTitle' => ({required Object product}) => '${product} serverini qoʻshish',
			'addServer.serverUrls' => 'Server URL-lari',
			'addServer.serverUrlsHelper' => 'Vergul bilan ajratilgan bir nechta URL manziliga ruxsat beriladi.',
			'addServer.findServer' => 'Serverni topish',
			'addServer.searchingLocalMediaBrowserServers' => ({required Object product}) => 'Mahalliy ${product} serverlari qidirilmoqda...',
			'addServer.localMediaBrowserServers' => ({required Object product}) => 'Mahalliy ${product} serverlari',
			'addServer.username' => 'Foydalanuvchi nomi',
			'addServer.password' => 'Parol',
			'addServer.signIn' => 'Kirish',
			'addServer.change' => 'Oʻzgartirish',
			'addServer.required' => 'Talab qilinadi',
			'addServer.couldNotReachServer' => ({required Object error}) => 'Serverga ulanib boʻlmadi: ${error}',
			'addServer.signInFailed' => ({required Object error}) => 'Kirish xatoligi: ${error}',
			'addServer.quickConnectFailed' => ({required Object error}) => 'Tezkor ulanish xatoligi: ${error}',
			'addServer.addPlexTitle' => 'Plex orqali kirish',
			'addServer.pinExpired' => 'PIN kod vaqti tugadi.',
			'addServer.failedToRegisterAccount' => ({required Object error}) => 'Hisobni roʻyxatdan oʻtkazishda xatolik: ${error}',
			'addServer.enterMediaBrowserUrlError' => ({required Object product}) => '${product} server URL-ini kiriting',
			'addServer.addConnectionTitle' => 'Ulanish qoʻshish',
			'addServer.addConnectionTitleScoped' => ({required Object name}) => '${name} profiliga qoʻshish',
			'addServer.signInWithPlexCard' => 'Plex orqali kirish',
			'addServer.signInWithPlexCardSubtitle' => 'Ushbu qurilmani avtorizatsiya qiling. Ulashilgan serverlar qoʻshiladi.',
			'addServer.signInWithPlexCardSubtitleScoped' => 'Plex hisobini avtorizatsiya qiling. Bosh sahifa foydalanuvchilari profillarga aylanadi.',
			'addServer.connectToMediaBrowserCard' => ({required Object product}) => '${product}ga ulanish',
			'addServer.connectToMediaBrowserCardSubtitle' => 'Server URL-ini, foydalanuvchi nomini va parolni kiriting.',
			'addServer.connectToMediaBrowserCardSubtitleScoped' => ({required Object product, required Object name}) => '${product} serveringizga kiring. ${name} profiliga bogʻlanadi.',
			'addServer.borrowFromAnotherProfile' => 'Boshqa profildan olish',
			'addServer.borrowFromAnotherProfileSubtitle' => 'Boshqa profilning ulanishidan qayta foydalaning.',
			'addServer.invalidCredentials' => 'Foydalanuvchi nomi yoki parol notoʻgʻri',
			'addServer.authResponseNotJson' => 'Autentifikatsiya javobi yaroqli JSON emas',
			'addServer.authResponseIncomplete' => 'Serverdan kelgan kirish javobi toʻliq emas',
			'addServer.quickConnectRejected' => 'Quick Connect server tomonidan rad etildi',
			'addServer.quickConnectNotJson' => 'Quick Connect javobi yaroqli JSON emas',
			'addServer.quickConnectMissingFields' => 'Quick Connect javobida kod yoki maxfiy kalit yoʻq',
			'addServer.quickConnectPollRejected' => 'Quick Connect soʻrovi server tomonidan rad etildi',
			'addServer.serverTimedOut' => 'Server oʻz vaqtida javob bermadi',
			'addServer.responseNotJson' => 'Server javobi yaroqli JSON emas',
			'addServer.responseMissingIdentity' => ({required Object product}) => 'Javobda ID yoki server nomi yoʻq — bu ${product} serverimi?',
			'addServer.probeFailed' => ({required Object error}) => 'Serverga ulanib boʻlmadi: ${error}',
			'addServer.enterAtLeastOneUrl' => ({required Object product}) => 'Kamida bitta ${product} server URL-ini kiriting',
			'addServer.noReachableServer' => ({required Object product}) => 'Ulanish mumkin boʻlgan ${product} serveri topilmadi',
			'addServer.urlsPointToDifferentServers' => ({required Object product}) => 'Bu URL-lar turli ${product} serverlariga olib boradi',
			'addServer.urlDoesNotMatchServer' => ({required Object product}) => 'Bu URL ${product} serveriga mos kelmaydi',
			'addServer.redirectUnsupported' => 'Server qoʻllab-quvvatlanmaydigan URL-ga yoʻnaltirdi',
			'addServer.redirectDifferentHost' => ({required Object product}) => 'Server boshqa xostga yoʻnaltirdi. Yakuniy ${product} URL-ini bevosita kiriting.',
			'addServer.redirectInsecure' => 'Server HTTPS manzilidan xavfsiz boʻlmagan URL-ga yoʻnaltirdi',
			'addServer.redirectUnsupportedEnterFinal' => ({required Object product}) => 'Server qoʻllab-quvvatlanmaydigan URL-ga yoʻnaltirdi. Yakuniy ${product} URL-ini bevosita kiriting.',
			_ => null,
		};
	}
}
