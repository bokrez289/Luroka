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
class TranslationsRu extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsRu({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ru,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ru>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsRu _root = this; // ignore: unused_field

	@override 
	TranslationsRu $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsRu(meta: meta ?? this.$meta);

	// Translations
	@override late final _Translations$mobileLibrary$ru mobileLibrary = _Translations$mobileLibrary$ru._(_root);
	@override late final _Translations$profileStartup$ru profileStartup = _Translations$profileStartup$ru._(_root);
	@override late final _Translations$subtitleUpload$ru subtitleUpload = _Translations$subtitleUpload$ru._(_root);
	@override late final _Translations$personSpotlight$ru personSpotlight = _Translations$personSpotlight$ru._(_root);
	@override late final _Translations$detailExtras$ru detailExtras = _Translations$detailExtras$ru._(_root);
	@override late final _Translations$mobileUi$ru mobileUi = _Translations$mobileUi$ru._(_root);
	@override late final _Translations$family$ru family = _Translations$family$ru._(_root);
	@override late final _Translations$posterDetails$ru posterDetails = _Translations$posterDetails$ru._(_root);
	@override late final _Translations$libraryPolish$ru libraryPolish = _Translations$libraryPolish$ru._(_root);
	@override late final _Translations$showSchedule$ru showSchedule = _Translations$showSchedule$ru._(_root);
	@override late final _Translations$awardsCatalog$ru awardsCatalog = _Translations$awardsCatalog$ru._(_root);
	@override late final _Translations$searchDiscovery$ru searchDiscovery = _Translations$searchDiscovery$ru._(_root);
	@override late final _Translations$lurokaPlayerDesign$ru lurokaPlayerDesign = _Translations$lurokaPlayerDesign$ru._(_root);
	@override late final _Translations$lurokaWorkspace$ru lurokaWorkspace = _Translations$lurokaWorkspace$ru._(_root);
	@override late final _Translations$mobileFixes$ru mobileFixes = _Translations$mobileFixes$ru._(_root);
	@override late final _Translations$downloadsRedesign$ru downloadsRedesign = _Translations$downloadsRedesign$ru._(_root);
	@override late final _Translations$kidsShelf$ru kidsShelf = _Translations$kidsShelf$ru._(_root);
	@override late final _Translations$kidsHome$ru kidsHome = _Translations$kidsHome$ru._(_root);
	@override late final _Translations$tvSettingsV2$ru tvSettingsV2 = _Translations$tvSettingsV2$ru._(_root);
	@override late final _Translations$settingsRedesign$ru settingsRedesign = _Translations$settingsRedesign$ru._(_root);
	@override late final _Translations$onboarding$ru onboarding = _Translations$onboarding$ru._(_root);
	@override late final _Translations$household$ru household = _Translations$household$ru._(_root);
	@override late final _Translations$detailComposition$ru detailComposition = _Translations$detailComposition$ru._(_root);
	@override late final _Translations$kids$ru kids = _Translations$kids$ru._(_root);
	@override late final _Translations$lurokaDiscovery$ru lurokaDiscovery = _Translations$lurokaDiscovery$ru._(_root);
	@override late final _Translations$app$ru app = _Translations$app$ru._(_root);
	@override late final _Translations$appIcon$ru appIcon = _Translations$appIcon$ru._(_root);
	@override late final _Translations$auth$ru auth = _Translations$auth$ru._(_root);
	@override late final _Translations$common$ru common = _Translations$common$ru._(_root);
	@override late final _Translations$tvHints$ru tvHints = _Translations$tvHints$ru._(_root);
	@override late final _Translations$screens$ru screens = _Translations$screens$ru._(_root);
	@override late final _Translations$mediaExtras$ru mediaExtras = _Translations$mediaExtras$ru._(_root);
	@override late final _Translations$update$ru update = _Translations$update$ru._(_root);
	@override late final _Translations$supporter$ru supporter = _Translations$supporter$ru._(_root);
	@override late final _Translations$settings$ru settings = _Translations$settings$ru._(_root);
	@override late final _Translations$themeEditor$ru themeEditor = _Translations$themeEditor$ru._(_root);
	@override late final _Translations$seriesBrowser$ru seriesBrowser = _Translations$seriesBrowser$ru._(_root);
	@override late final _Translations$titlePage$ru titlePage = _Translations$titlePage$ru._(_root);
	@override late final _Translations$tvMenus$ru tvMenus = _Translations$tvMenus$ru._(_root);
	@override late final _Translations$lurokaPlayer$ru lurokaPlayer = _Translations$lurokaPlayer$ru._(_root);
	@override late final _Translations$lurokaSettings$ru lurokaSettings = _Translations$lurokaSettings$ru._(_root);
	@override late final _Translations$playerChrome$ru playerChrome = _Translations$playerChrome$ru._(_root);
	@override late final _Translations$tvLayout$ru tvLayout = _Translations$tvLayout$ru._(_root);
	@override late final _Translations$studios$ru studios = _Translations$studios$ru._(_root);
	@override late final _Translations$dashboard$ru dashboard = _Translations$dashboard$ru._(_root);
	@override late final _Translations$lurokaCatalog$ru lurokaCatalog = _Translations$lurokaCatalog$ru._(_root);
	@override late final _Translations$referenceDetails$ru referenceDetails = _Translations$referenceDetails$ru._(_root);
	@override late final _Translations$lurokaThemes$ru lurokaThemes = _Translations$lurokaThemes$ru._(_root);
	@override late final _Translations$customPerformance$ru customPerformance = _Translations$customPerformance$ru._(_root);
	@override late final _Translations$homeLayout$ru homeLayout = _Translations$homeLayout$ru._(_root);
	@override late final _Translations$screenTime$ru screenTime = _Translations$screenTime$ru._(_root);
	@override late final _Translations$activityStats$ru activityStats = _Translations$activityStats$ru._(_root);
	@override late final _Translations$search$ru search = _Translations$search$ru._(_root);
	@override late final _Translations$hotkeys$ru hotkeys = _Translations$hotkeys$ru._(_root);
	@override late final _Translations$fileInfo$ru fileInfo = _Translations$fileInfo$ru._(_root);
	@override late final _Translations$mediaMenu$ru mediaMenu = _Translations$mediaMenu$ru._(_root);
	@override late final _Translations$rateSheet$ru rateSheet = _Translations$rateSheet$ru._(_root);
	@override late final _Translations$accessibility$ru accessibility = _Translations$accessibility$ru._(_root);
	@override late final _Translations$tooltips$ru tooltips = _Translations$tooltips$ru._(_root);
	@override late final _Translations$audioTracks$ru audioTracks = _Translations$audioTracks$ru._(_root);
	@override late final _Translations$videoControls$ru videoControls = _Translations$videoControls$ru._(_root);
	@override late final _Translations$messages$ru messages = _Translations$messages$ru._(_root);
	@override late final _Translations$sourceLibraries$ru sourceLibraries = _Translations$sourceLibraries$ru._(_root);
	@override late final _Translations$subtitlingStyling$ru subtitlingStyling = _Translations$subtitlingStyling$ru._(_root);
	@override late final _Translations$mpvConfig$ru mpvConfig = _Translations$mpvConfig$ru._(_root);
	@override late final _Translations$dialog$ru dialog = _Translations$dialog$ru._(_root);
	@override late final _Translations$profiles$ru profiles = _Translations$profiles$ru._(_root);
	@override late final _Translations$connections$ru connections = _Translations$connections$ru._(_root);
	@override late final _Translations$serversAccounts$ru serversAccounts = _Translations$serversAccounts$ru._(_root);
	@override late final _Translations$accountPreferences$ru accountPreferences = _Translations$accountPreferences$ru._(_root);
	@override late final _Translations$discover$ru discover = _Translations$discover$ru._(_root);
	@override late final _Translations$errors$ru errors = _Translations$errors$ru._(_root);
	@override late final _Translations$libraries$ru libraries = _Translations$libraries$ru._(_root);
	@override late final _Translations$about$ru about = _Translations$about$ru._(_root);
	@override late final _Translations$serverSelection$ru serverSelection = _Translations$serverSelection$ru._(_root);
	@override late final _Translations$hubDetail$ru hubDetail = _Translations$hubDetail$ru._(_root);
	@override late final _Translations$logs$ru logs = _Translations$logs$ru._(_root);
	@override late final _Translations$startup$ru startup = _Translations$startup$ru._(_root);
	@override late final _Translations$licenses$ru licenses = _Translations$licenses$ru._(_root);
	@override late final _Translations$navigation$ru navigation = _Translations$navigation$ru._(_root);
	@override late final _Translations$explore$ru explore = _Translations$explore$ru._(_root);
	@override late final _Translations$liveTv$ru liveTv = _Translations$liveTv$ru._(_root);
	@override late final _Translations$collections$ru collections = _Translations$collections$ru._(_root);
	@override late final _Translations$playlists$ru playlists = _Translations$playlists$ru._(_root);
	@override late final _Translations$music$ru music = _Translations$music$ru._(_root);
	@override late final _Translations$watchTogether$ru watchTogether = _Translations$watchTogether$ru._(_root);
	@override late final _Translations$downloads$ru downloads = _Translations$downloads$ru._(_root);
	@override late final _Translations$shaders$ru shaders = _Translations$shaders$ru._(_root);
	@override late final _Translations$companionRemote$ru companionRemote = _Translations$companionRemote$ru._(_root);
	@override late final _Translations$videoSettings$ru videoSettings = _Translations$videoSettings$ru._(_root);
	@override late final _Translations$performanceOverlay$ru performanceOverlay = _Translations$performanceOverlay$ru._(_root);
	@override late final _Translations$externalPlayer$ru externalPlayer = _Translations$externalPlayer$ru._(_root);
	@override late final _Translations$metadataEdit$ru metadataEdit = _Translations$metadataEdit$ru._(_root);
	@override late final _Translations$matchScreen$ru matchScreen = _Translations$matchScreen$ru._(_root);
	@override late final _Translations$serverTasks$ru serverTasks = _Translations$serverTasks$ru._(_root);
	@override late final _Translations$trakt$ru trakt = _Translations$trakt$ru._(_root);
	@override late final _Translations$seerr$ru seerr = _Translations$seerr$ru._(_root);
	@override late final _Translations$services$ru services = _Translations$services$ru._(_root);
	@override late final _Translations$addServer$ru addServer = _Translations$addServer$ru._(_root);
}

// Path: mobileLibrary
class _Translations$mobileLibrary$ru extends Translations$mobileLibrary$en {
	_Translations$mobileLibrary$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get pickerSubtitle => 'Выберите коллекцию для изучения';
	@override String get searchLibraries => 'Поиск библиотек';
	@override String get noLibraries => 'Нет подходящих библиотек';
	@override String get ascending => 'восходящий';
	@override String get descending => 'По убыванию';
	@override String get sort => 'Сортировать';
	@override String unwatchedCount({required Object count}) => '${count} непросмотренные серии';
	@override String get latestEpisode => 'Последний выпуск';
}

// Path: profileStartup
class _Translations$profileStartup$ru extends Translations$profileStartup$en {
	_Translations$profileStartup$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get autoLogin => 'Открыть последний использованный профиль';
	@override String get autoLoginHint => 'Автоматически открывать последний профиль, если для него не требуется PIN.';
	@override String get allowKidsExit => 'Разрешить выход из детского профиля без родительского PIN-кода';
	@override String get allowKidsExitHint => 'Ребёнок сможет перейти в другой профиль без родительского PIN-кода. PIN-коды профилей по-прежнему действуют.';
	@override String get chooseKidsConnection => 'Выберите другую учетную запись или сервер';
	@override String get chooseKidsConnectionHint => 'После сохранения подключите отдельный аккаунт или выберите подключение из другого профиля.';
}

// Path: subtitleUpload
class _Translations$subtitleUpload$ru extends Translations$subtitleUpload$en {
	_Translations$subtitleUpload$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get chooseFile => 'Загрузите файл субтитров';
	@override String get hint => 'Выберите язык выше, затем загрузите на этот сервер файл SRT, ASS, SSA или VTT.';
	@override String get success => 'Субтитры загружены на сервер. Он появится, когда сервер обновит элемент.';
	@override String get failed => 'Не удалось загрузить субтитры. Проверьте права доступа к файлу и серверу.';
}

// Path: personSpotlight
class _Translations$personSpotlight$ru extends Translations$personSpotlight$en {
	_Translations$personSpotlight$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get inYourLibraries => 'в ваших библиотеках';
	@override String libraryTitles({required Object n}) => 'В ваших библиотеках · ${n} заголовки';
	@override String get readBiography => 'Читать биографию';
	@override String get newestFirst => 'Сначала самые новые';
	@override String get oldestFirst => 'Сначала самый старый';
	@override String get titleAscending => 'Название А–Я';
	@override String get sortTitles => 'Сортировать фильмографию';
	@override String unwatchedEpisodes({required Object n}) => '${n} непросмотренные серии';
	@override String copies({required Object n}) => 'Копии библиотеки ${n}';
	@override String versions({required Object n}) => 'Версии файла ${n}';
	@override String get retryTitles => 'Не удалось загрузить все названия. Повторить попытку';
}

// Path: detailExtras
class _Translations$detailExtras$ru extends Translations$detailExtras$en {
	_Translations$detailExtras$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get onlineVideos => 'Трейлеры и дополнения';
	@override String get reviews => 'Отзывы';
	@override String get readReview => 'Читать полный обзор';
	@override String directedBy({required Object name}) => 'Режиссер: ${name}.';
	@override String get previewUnavailable => 'Не удалось воспроизвести этот предварительный просмотр. Вместо этого вы можете открыть его в исходном приложении.';
	@override String get openExternally => 'Открыть оригинальное видео';
}

// Path: mobileUi
class _Translations$mobileUi$ru extends Translations$mobileUi$en {
	_Translations$mobileUi$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get readMore => 'Подробнее';
	@override String get readLess => 'Показать меньше';
	@override String get playbackTools => 'Параметры воспроизведения';
	@override String get streamingQuality => 'Качество потоковой передачи';
	@override String get fileVersions => 'Версии файлов';
	@override String get qualityAndVersions => 'Качество потоковой передачи и версии файлов';
	@override String get hidePlaybackTools => 'Скрыть инструменты воспроизведения';
	@override String remaining({required Object time}) => '${time} слева';
	@override String endsAt({required Object time}) => 'Заканчивается на ${time}';
	@override String get collection => 'Ваша коллекция';
	@override String get nowPlaying => 'СЕЙЧАС ИГРАЕТ';
	@override String get popularLibrary => 'Популярное в вашей библиотеке';
	@override String get weeklyLibrary => 'Тенденции в вашей библиотеке на этой неделе';
}

// Path: family
class _Translations$family$ru extends Translations$family$en {
	_Translations$family$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Профили и семья';
	@override String get yourPeople => 'Ваши люди';
	@override String get manageHint => 'Управляйте людьми, безопасностью детей и просмотрами на этом устройстве.';
	@override String get people => 'Люди';
	@override String peopleCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n,
		one: '${n} человек',
		few: '${n} человека',
		many: '${n} человек',
		other: '${n} человек',
	);
	@override String kidsCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n,
		one: '${n} дочерний элемент',
		few: '${n} детей',
		many: '${n} детей',
		other: '${n} детей',
	);
	@override String get you => 'ты';
	@override String get adult => 'Взрослый';
	@override String get child => 'Ребенок';
	@override String get adultTeen => 'Взрослый или подросток';
	@override String get adultHint => 'Собственный профиль, дополнительный профиль PIN и собственные подключения к серверу.';
	@override String get childHint => 'Возрастные ограничения, безопасные библиотеки и детский интерфейс. Родительский PIN-код защищает эти настройки.';
	@override String upToAge({required Object age}) => 'До возраста ${age}';
	@override String get allAges => 'Все возрасты';
	@override String get switchProfile => 'Переключить профиль';
	@override String get switchHint => 'Выберите, кто смотрит. Управление человеком не переключает профили.';
	@override String get addPerson => 'Добавить человека';
	@override String get addChild => 'Добавить ребенка';
	@override String get addHint => 'Создайте на этом устройстве профиль взрослого, подростка или ребенка.';
	@override String get emptyPeople => 'Освободите место для всех, кто смотрит вместе с вами.';
	@override String get emptyKids => 'Детских профилей пока нет. Добавьте ребенка, чтобы выбрать возрастные ограничения и безопасные библиотеки.';
	@override String get safety => 'Дети и безопасность';
	@override String get safetyHint => 'Родительский PIN-код, детские профили и возрастные ограничения.';
	@override String get protection => 'Защита';
	@override String get kidsProfiles => 'Детские профили';
	@override String get backupHistory => 'Резервное копирование и история';
	@override String get parentPinOn => 'Родительский PIN-код включён';
	@override String get profilePin => 'PIN-код профиля';
	@override String get confirmParentPin => 'Подтвердите родительский PIN-код';
	@override String get parentPinOff => 'Родительский PIN-код не задан';
	@override String get missingPin => 'Задайте родительский PIN-код, чтобы защитить эти настройки.';
	@override String get hideScope => 'Скройте активность детей от «Продолжить просмотр» в этом профиле Luroka. Это не меняет историю просмотра общего сервера.';
	@override String get localScope => 'Детские профили и ограничения хранятся на этом устройстве. Профили, использующие одну и ту же учетную запись сервера, по-прежнему делятся прогрессом просмотра этой учетной записи.';
	@override String get clearHistoryConfirm => 'Разрешить снова показывать фильмы, которые смотрят дети, в разделе «Продолжить просмотр»? Профили детей, ограничения, статистика времени просмотра и история просмотра сервера будут сохранены.';
	@override String get editRestrictions => 'Изменить ограничения для детей';
	@override String get activity => 'Просмотр активности';
	@override String namedActivity({required Object name}) => 'Просмотр активности пользователя ${name}';
	@override String get thisProfile => 'Этот профиль';
	@override String get activityScope => 'Время воспроизведения, записанное Luroka на этом устройстве для активного профиля. Это статистика, а не просмотр лимитов или полной истории сервера.';
	@override String get activityUnavailable => 'Для этого профиля пока недоступен просмотр активности.';
	@override String get finished => 'Готово';
}

// Path: posterDetails
class _Translations$posterDetails$ru extends Translations$posterDetails$en {
	_Translations$posterDetails$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get showThemeMusic => 'Включи музыкальную тему';
	@override String get showThemeMusicDescription => 'Воспроизведите тему фильма или шоу, пока открыта страница его сведений, если она доступна на сервере.';
	@override String get catalogEpisodeInfo => 'Отображение количества эпизодов и продолжительности их просмотра на карточках каталога.';
	@override String get catalogEpisodeInfoDescription => 'Покажите количество серий и среднюю продолжительность на постерах Обзор.';
	@override String get title => 'Детали плаката';
	@override String get description => 'Покажите название, год и рейтинг IMDb под плакатами в Studio, Search, Обзор и библиотеках. Отсутствующие рейтинги IMDb остаются скрытыми. Отключите этот параметр для плакатов, содержащих только иллюстрации.';
}

// Path: libraryPolish
class _Translations$libraryPolish$ru extends Translations$libraryPolish$en {
	_Translations$libraryPolish$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get posterDetails => 'Детали плаката';
	@override String get showPosterDetails => 'Показать детали плаката · имя, год и IMDb';
	@override String get hidePosterDetails => 'Скрыть детали постера';
	@override String get overview => 'Обзор';
	@override String get refreshing => 'Обновление библиотеки…';
	@override String get serverCollections => 'Все коллекции на этом сервере';
	@override String get serverPlaylists => 'Все плейлисты видео на этом сервере';
	@override String get libraryCollections => 'Коллекции в этой библиотеке';
	@override String get searchCollections => 'Поиск коллекций';
	@override String get searchPlaylists => 'Поиск плейлистов';
	@override String get searchHint => 'Поиск по имени';
	@override String get titleAscending => 'Название А–Я';
	@override String get titleDescending => 'Название Z – A';
	@override String get clearFilters => 'Очистить фильтры';
	@override String get playlistEmptyTitle => 'Ваши вечера кино в вашем заказе';
	@override String get playlistEmptyHint => 'Откройте меню «Дополнительно» заголовка и выберите «Добавить в плейлист», чтобы создать свой первый плейлист.';
	@override String get noMatches => 'Нет подходящих имен';
	@override String get indexing => 'Поиск по полному каталогу…';
}

// Path: showSchedule
class _Translations$showSchedule$ru extends Translations$showSchedule$en {
	_Translations$showSchedule$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get today => 'Сегодня';
	@override String get tomorrow => 'Завтра';
	@override String get latestUpcoming => 'Последние и предстоящие';
	@override String get latestEpisode => 'Последний выпуск';
	@override String get upcoming => 'Предстоящие';
	@override String get inLibrary => 'В вашей библиотеке';
	@override String get notInLibrary => 'Нет в вашей библиотеке';
	@override String get notYetAired => 'Еще не вышел в эфир';
	@override String episode({required Object number}) => 'Эпизод ${number}';
	@override String get caughtUp => 'Вы все в плену';
	@override String get finished => 'Вы закончили эту серию';
	@override String nextAirs({required Object date}) => 'Следующий выпуск выйдет в эфир ${date}';
	@override String get watchBeginning => 'Смотреть с начала';
	@override String get replay => 'Повтор';
	@override String get playNext => 'Играть дальше';
}

// Path: awardsCatalog
class _Translations$awardsCatalog$ru extends Translations$awardsCatalog$en {
	_Translations$awardsCatalog$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get awards => 'Награды';
	@override String get customize => 'Настроить';
	@override String get chooseShelves => 'Настроить Откройте для себя';
	@override String get shelvesDescription => 'Выберите нужные строки в Обзор. В рядах наград показаны победители из ваших библиотек. Ваш выбор сохраняется для этого профиля.';
	@override String get restoreShelves => 'Восстановить настройки по умолчанию';
	@override String get charts => 'Графики IMDb';
	@override String get generalShelves => 'Популярное и трендовое';
	@override String get saveShelvesFailed => 'Не удалось сохранить выбранные вами варианты Обзор. Пожалуйста, попробуйте еще раз.';
	@override String get comedyActress => 'Главная актриса · Комедия';
	@override String get leadDramaActor => 'Главный актер · Драма';
	@override String get leadDramaActress => 'Главная актриса · Драма';
	@override String get comedySupportingActor => 'Актер второго плана · Комедия';
	@override String get comedySupportingActress => 'Актриса второго плана · Комедия';
	@override String get leadingPerformance => 'Серебряный медведь · Лучшая главная роль';
	@override String get globesComedySeries => 'Лучший телесериал · Мюзикл или комедия';
	@override String get limitedSupportingActor => 'Актер второго плана · Ограниченный сериал или фильм';
	@override String get limitedSupportingActress => 'Актриса второго плана · Ограниченный сериал или фильм';
	@override String get berlinDocumentary => 'Премия Берлинале в области документального кино';
	@override String get title => 'Награды и фестивали';
	@override String get chooseCategory => 'Выберите категорию награды';
	@override String get winners => 'Победители';
	@override String get nominees => 'Номинанты';
	@override String get releaseDecade => 'Десятилетие выпуска';
	@override String get allYears => 'Все годы';
	@override String get loading => 'Загрузка наград…';
	@override String get matching => 'Находя эти названия в своих библиотеках…';
	@override String get unavailable => 'Данные о наградах сейчас недоступны. Попробуйте еще раз.';
	@override String get empty => 'В видимых библиотеках для этой категории нет подходящих заголовков.';
	@override String get coverage => 'Членство происходит из Викиданных и может быть неполным. В категориях актеров и режиссеров представлены фильмы или шоу, за которые они были награждены. Годы относятся к выпуску титула, а не к церемонии.';
	@override String get picture => 'Лучший фильм';
	@override String get film => 'Лучший фильм';
	@override String get international => 'Лучший международный полнометражный фильм';
	@override String get internationalFilm => 'Лучший международный фильм';
	@override String get nonEnglishFilm => 'Лучший фильм не на английском языке';
	@override String get animated => 'Лучший анимационный фильм';
	@override String get animatedFilm => 'Лучший анимационный фильм';
	@override String get documentary => 'Лучший документальный фильм';
	@override String get director => 'Лучший режиссер';
	@override String get actor => 'Лучший актер';
	@override String get actress => 'Лучшая актриса';
	@override String get supportingActor => 'Лучший актер второго плана';
	@override String get supportingActress => 'Лучшая актриса второго плана';
	@override String get originalScreenplay => 'Лучший оригинальный сценарий';
	@override String get adaptedScreenplay => 'Лучший адаптированный сценарий';
	@override String get screenplay => 'Лучший сценарий';
	@override String get cinematography => 'Лучшая операторская работа';
	@override String get editing => 'Лучший монтаж';
	@override String get score => 'Лучший оригинальный саундтрек';
	@override String get song => 'Лучшая оригинальная песня';
	@override String get sound => 'Лучший звук';
	@override String get effects => 'Лучшие визуальные эффекты';
	@override String get productionDesign => 'Лучший художник-постановщик';
	@override String get costume => 'Лучший дизайн костюмов';
	@override String get makeup => 'Лучший макияж и прическа';
	@override String get dramaSeries => 'Выдающийся драматический сериал';
	@override String get comedySeries => 'Выдающийся комедийный сериал';
	@override String get limitedSeries => 'Выдающаяся ограниченная серия';
	@override String get animatedProgram => 'Выдающаяся анимационная программа';
	@override String get comedyActor => 'Главный актер · Комедия';
	@override String get limitedActor => 'Главный актер · Ограниченный сериал или фильм';
	@override String get limitedActress => 'Ведущая актриса · Ограниченный сериал или фильм';
	@override String get limitedDirecting => 'Режиссура · Ограниченный сериал или фильм';
	@override String get britishFilm => 'Лучший британский фильм';
	@override String get goldenBear => 'Золотой Медведь';
	@override String get grandJury => 'Приз Большого жюри';
	@override String get jury => 'Приз жюри';
	@override String get teddy => 'Премия Тедди';
	@override String get goldenLion => 'Золотой Лев';
	@override String get volpiActor => 'Кубок Вольпи · Лучший актер';
	@override String get volpiActress => 'Кубок Вольпи · Лучшая женская роль';
	@override String get queerLion => 'странный лев';
	@override String get dramaFilm => 'Лучший фильм · Драма';
	@override String get comedyFilm => 'Лучший фильм · мюзикл или комедия';
	@override String get dramaActor => 'Лучший актер · Драма';
	@override String get dramaActress => 'Лучшая женская роль · Драма';
	@override String get usDramatic => 'Приз Большого жюри США в области драматического искусства';
	@override String get documentaryJury => 'Приз Большого жюри документального кино';
	@override String get worldCinema => 'Приз Большого жюри мирового кино';
	@override String get dramaticAudience => 'Приз зрительских симпатий США';
	@override String get usDirecting => 'Режиссерская премия США';
	@override String get peopleChoice => 'Приз зрительских симпатий';
	@override String get canadianFilm => 'Лучший канадский фильм';
	@override String get firstFeature => 'Лучший первый полнометражный фильм';
	@override String get cassavetes => 'Премия Джона Кассаветиса';
	@override String get scienceFiction => 'Лучший научно-фантастический фильм';
	@override String get fantasy => 'Лучший фэнтезийный фильм';
	@override String get horror => 'Лучший фильм ужасов';
	@override String get action => 'Лучший боевик или приключенческий фильм';
	@override String get thriller => 'Лучший триллер';
}

// Path: searchDiscovery
class _Translations$searchDiscovery$ru extends Translations$searchDiscovery$en {
	_Translations$searchDiscovery$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get suggestions => 'Есть что посмотреть';
	@override String get collections => 'Награды и коллекции';
	@override String get collectionsHint => 'Победители наград и тщательно подобранные диаграммы из ваших библиотек.';
	@override String get all => 'Все открытия';
	@override String get awards => 'Награды и чарты';
}

// Path: lurokaPlayerDesign
class _Translations$lurokaPlayerDesign$ru extends Translations$lurokaPlayerDesign$en {
	_Translations$lurokaPlayerDesign$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get seeking => 'Искать предварительный просмотр';
	@override String get keepWatching => 'Продолжайте смотреть';
	@override String get upNext => 'Далее';
	@override String playingIn({required Object seconds}) => 'Воспроизведение начнётся через ${seconds} с';
}

// Path: lurokaWorkspace
class _Translations$lurokaWorkspace$ru extends Translations$lurokaWorkspace$en {
	_Translations$lurokaWorkspace$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get everyday => 'Повседневный режим';
	@override String get homeDiscovery => 'Главная и каталог';
	@override String get librariesAccounts => 'Библиотеки и учетные записи';
	@override String get profilesFamily => 'Профили и семья';
	@override String get thisDevice => 'Это устройство';
	@override String get thisProfile => 'Этот профиль';
	@override String get searchSettings => 'Настройки поиска';
	@override String get savedAutomatically => 'Изменения сохраняются автоматически. Режимы «Повседневный» и «Расширенный» изменяют только отображаемые элементы управления.';
	@override String get audioSubtitles => 'Аудио и субтитры';
	@override String get audioDescription => 'Вывод звука, громкость и внешний вид субтитров. Предпочитаемые языки устанавливаются для каждой учетной записи сервера с использованием настроек учетной записи при подключении.';
	@override String get pictureSound => 'Изображение и звук';
	@override String get pictureDescription => 'Соответствие частоты кадров, разрешения, настройки HDR и Dolby Vision для этого устройства.';
	@override String get engineDescription => 'Движок плеера, декодирование, пользовательская конфигурация и расширенные правила воспроизведения.';
	@override String get networkStreaming => 'Сеть и потоковая передача';
	@override String get networkDescription => 'Качество потоковой передачи, настройки кодека прямого воспроизведения и выбор полосы пропускания.';
	@override String get homeOptions => 'Настройки главной';
	@override String get refreshHome => 'Обновить главную и популярное сейчас';
	@override String get customizeHome => 'Настроить главную';
	@override String get spotlight => 'Подборка на главной';
	@override String get rotateSpotlight => 'Автоматически чередовать избранные заголовки';
	@override String get rotateDescription => 'Подборка меняется, пока главная неактивна. Любое действие приостанавливает смену; просмотр рядов, открытие страницы или выход из приложения останавливают её.';
	@override String get rotationInterval => 'Время между избранными названиями';
}

// Path: mobileFixes
class _Translations$mobileFixes$ru extends Translations$mobileFixes$en {
	_Translations$mobileFixes$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get connectionRecoveryHint => 'Сервер недоступен? Управляйте своими учетными записями или подключите другой сервер.';
}

// Path: downloadsRedesign
class _Translations$downloadsRedesign$ru extends Translations$downloadsRedesign$en {
	_Translations$downloadsRedesign$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get shelfSize => 'Товаров на полке';
	@override String get shelfSizeHint => 'Покажите 16, 32 или 48 товаров на полках «Продолжить просмотр» и «Рекомендации». Серверы могут возвращать меньше доступных названий.';
	@override String get subtitle => 'Ваши любимцы готовы к путешествию.';
	@override String get transfers => 'Трансферы';
	@override String get ready => 'Готово в автономном режиме';
	@override String get active => 'Загрузка';
	@override String get waiting => 'Ожидание';
	@override String get downloaded => 'Скачано';
	@override String get speed => 'Скорость загрузки';
	@override String get notificationProgress => '{progress} · {networkSpeed} · {timeRemaining} осталось';
}

// Path: kidsShelf
class _Translations$kidsShelf$ru extends Translations$kidsShelf$en {
	_Translations$kidsShelf$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get movieShelf => 'Время кино';
	@override String get showShelf => 'Найдите свое следующее шоу';
	@override String get aurora => 'Aurora — глубокий бирюзовый и лаймовый';
	@override String get marquee => 'Marquee — бархат и золото';
	@override String get electric => 'Электрический — индиго и лед';
	@override String get midnight => 'Midnight — сталь и янтарь';
	@override String get yourShelf => 'Ваша полка с фильмами';
	@override String get all => 'все';
	@override String get pickSomething => 'Что вы хотите посмотреть?';
}

// Path: kidsHome
class _Translations$kidsHome$ru extends Translations$kidsHome$en {
	_Translations$kidsHome$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get everything => 'Для тебя';
	@override String get keepWatching => 'Продолжайте смотреть';
	@override String get emptyFilter => 'Здесь пока ничего. Попробуйте «Для вас» или попросите взрослого добавить что-нибудь, что вам нравится.';
}

// Path: tvSettingsV2
class _Translations$tvSettingsV2$ru extends Translations$tvSettingsV2$en {
	_Translations$tvSettingsV2$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get moreThemes => 'Больше тем и пользовательских цветов';
	@override String get moreThemesHint => 'Откройте все доступные пресеты и пользовательские параметры темы.';
	@override String get previewLive => 'Предварительный просмотр в реальном времени';
	@override String get previewIllustration => 'Пример предварительного просмотра';
	@override String previewShelfCount({required Object count}) => 'До ${count} товаров на полке';
	@override String get simple => 'Простой';
	@override String get homeNavigation => 'Главная и навигация';
	@override String get libraryCards => 'Библиотека и карты';
	@override String get accountsLibraries => 'Аккаунты и библиотеки';
	@override String get profilesFamily => 'Профили и семья';
	@override String get aboutSupport => 'О компании и поддержка';
	@override String get playback => 'Воспроизведение';
	@override String get homeHint => 'Выберите, что будет отображаться на главной странице и в навигации.';
	@override String get libraryHint => 'Настройте размеры плакатов, метки и индикаторы просмотра.';
	@override String get advancedPlayback => 'Движок проигрывателя и потоковая передача';
	@override String get advancedPlaybackHint => 'Плеер, видеовыход, потоковая передача и расширенные возможности воспроизведения.';
	@override String get advancedTools => 'Диагностика и резервное копирование';
	@override String get advancedToolsHint => 'Журналы, устранение неполадок, резервное копирование и сброс настроек.';
	@override String get themePreview => 'Предварительный просмотр темы';
	@override String get libraryPreview => 'Предварительный просмотр библиотеки';
	@override String get homePreview => 'Домашний предварительный просмотр';
	@override String get subtitlePreview => 'Предварительный просмотр субтитров';
	@override String get subtitleSample => 'Ваши субтитры будут выглядеть так.';
	@override String get previewPlaceholder => 'Здесь появится ваше произведение искусства';
	@override String get posterSize => 'Размер плаката';
	@override String get serverRecommendations => 'Домашние рекомендации с вашего сервера';
	@override String get tvLayout => 'Использовать макет ТВ';
	@override String get hardwareDecode => 'Использовать аппаратное декодирование видео';
	@override String get serverNames => 'Показывать имена серверов в домашних строках';
	@override String get settingsSaved => 'Изменения сохраняются автоматически.';
	@override String get morePlayback => 'Расширенное воспроизведение';
	@override String get screenDisplay => 'Изображение и звук';
	@override String get engine => 'Движок проигрывателя';
	@override String get network => 'Потоковая передача и сеть';
	@override String get performance => 'Производительность';
	@override String get simpleAudio => 'Языки и внешний вид субтитров';
}

// Path: settingsRedesign
class _Translations$settingsRedesign$ru extends Translations$settingsRedesign$en {
	_Translations$settingsRedesign$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get themeEffects => 'Тема и эффекты';
	@override String get libraryLayout => 'Макет библиотеки';
	@override String get appearanceHint => 'Настройте внешний вид, макет и поведение Luroka.';
	@override String get livePreview => 'Живой просмотр';
	@override String get previewHint => 'Посмотрите, как ваша библиотека будет выглядеть с текущими настройками.';
	@override String get showLiveTv => 'Показать прямой эфир';
	@override String get showLiveTvHint => 'Показывать Live TV в навигации, если подключенный сервер поддерживает это. Это не меняет ваш сервер.';
	@override String get aboutTagline => 'Ваши СМИ. Ваше пространство.';
	@override String get aboutDescription => 'Luroka объединяет библиотеки Plex, Jellyfin и Emby в кинематографическом проигрывателе для телефонов, телевизоров и настольных компьютеров.';
	@override String get aboutFeatures => 'Просматривайте свои библиотеки, возобновляйте фильмы и шоу, персонализируйте профили, наслаждайтесь загрузками и смотрите вместе. Live TV доступен с совместимым сервером.';
	@override String get services => 'Подключите свой мир';
	@override String get updateSource => 'Обновить источник';
	@override String get updateSourceHint => 'HTTPS-адрес вашего канала выпуска Luroka. Ваш дистрибьютор может предварительно настроить это в приложении.';
	@override String get updateNotConfigured => 'Для этой сборки автоматические обновления не настроены.';
	@override String get downloadInstall => 'Скачать и установить';
	@override String get installUpdate => 'Установить обновление';
	@override String get downloading => 'Загрузка обновления…';
	@override String get downloadFailed => 'Не удалось загрузить или проверить обновление. Пожалуйста, попробуйте еще раз.';
	@override String get installPermission => 'Разрешите Luroka устанавливать обновления в настройках Android, затем вернитесь и выберите «Установить обновление».';
	@override String get updateReady => 'Загрузка проверена. Готов к установке.';
	@override String get releaseNotes => 'Примечания к выпуску';
	@override String get invalidFeed => 'Введите действительный адрес канала обновлений HTTPS.';
}

// Path: onboarding
class _Translations$onboarding$ru extends Translations$onboarding$en {
	_Translations$onboarding$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get connectStep => '01 · Подключиться';
	@override String get connectTitle => 'Добро пожаловать в Luroka';
	@override String get connectHint => 'Войдите, чтобы перенести сюда свои библиотеки.';
	@override String get serverAddressHint => 'Введите адрес вашего сервера или выберите сервер, найденный в вашей сети.';
	@override String get serverSignInHint => 'Используйте имя пользователя и пароль вашего сервера для подключения ваших библиотек.';
	@override String get serverAddressTitle => 'Адрес сервера';
	@override String get serverAccountTitle => 'Ваша учетная запись на сервере';
	@override String get plexHomeTitle => 'Выберите домашнего пользователя Plex.';
	@override String get plexHomeHint => 'Выберите пользователя Plex, библиотеки которого вы хотите использовать. Далее вы настроите свой профиль Luroka.';
	@override String get chooseService => 'Выберите свой сервис';
	@override String get profileStep => '02 · Ваш профиль';
	@override String get profileTitle => 'Чувствуйте себя как дома.';
	@override String get profileHint => 'Выберите имя и аватар для своего профиля Luroka. Ваша подключенная учетная запись останется прежней.';
	@override String get readyStep => '03 · Готов к просмотру';
	@override String get readyTitle => 'Еще немного тебя.';
	@override String get readyHint => 'Объедините свои услуги или освободите место для кого-то еще. Вы всегда можете сделать это позже.';
	@override String get addService => 'Подключить другую услугу';
	@override String get editProfile => 'Отредактируйте свое имя и аватар';
	@override String get connected => 'Подключено и готово';
	@override String get backToProfile => 'Вернуться в свой профиль';
	@override String get showOtherPlexHome => 'Показать других участников Plex Home';
	@override String get showOtherPlexHomeHint => 'По умолчанию выключено. Ваши профили Luroka и участники домашней страницы Plex, которых вы использовали, остаются видимыми. Включите, чтобы выбрать кого-то другого.';
}

// Path: household
class _Translations$household$ru extends Translations$household$en {
	_Translations$household$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ваша семья Luroka';
	@override String get welcome => 'Сделайте Luroka своим';
	@override String get welcomeHint => 'Ваш первый аккаунт подключен. Персонализируйте свой профиль или добавьте кого-нибудь еще, прежде чем начать просмотр.';
	@override String get profiles => 'Профили и домашнее хозяйство';
	@override String get manageHint => 'Добавляйте людей, меняйте изображения и управляйте подключениями каждого профиля.';
	@override String get addProfile => 'Добавить профиль Luroka';
	@override String get addHint => 'Каждый человек может подключить свой собственный логин Plex, Emby или Jellyfin. Для них отображаются только соединения, добавленные в их профиль.';
	@override String get sharedHint => 'Повторное использование подключения другого профиля позволяет использовать статус просмотра и прогресс воспроизведения этого пользователя сервера. Выберите отдельный логин для самостоятельного просмотра истории.';
	@override String get personalise => 'Персонализировать профиль';
	@override String get changePicture => 'Изменить изображение профиля';
	@override String get pictureHint => 'Выберите аватар или фотографию Luroka. При этом меняется картинка только на этом устройстве; ваша учетная запись сервера нетронута.';
	@override String get serverPicture => 'Используйте изображение/инициалы сервера';
	@override String get choosePhoto => 'Выберите фотографию';
	@override String get photoHint => 'JPEG, PNG или другое поддерживаемое изображение размером до 10 МБ. Размер фотографий изменяется и сохраняется на этом устройстве.';
	@override String get pictureSaved => 'Изображение профиля обновлено';
	@override String get pictureFailed => 'Не удалось обновить изображение профиля. Попробуйте поддерживаемый образ размером до 10 МБ.';
	@override String get saveFailed => 'Не удалось сохранить настройки профиля. Пожалуйста, попробуйте еще раз.';
	@override String get startWatching => 'Начать просмотр';
	@override String get manageProfiles => 'Управление или переключение профилей';
	@override String get addLater => 'Вы можете добавить больше людей позже в «Настройки» → «Профили и семья».';
	@override String get connectionRequired => 'Добавьте подключение к серверу, чтобы завершить настройку этого профиля.';
	@override String get mountain => 'Гора';
	@override String get orbit => 'Исследователь';
	@override String get waves => 'Океан';
	@override String get blossom => 'Цветение';
	@override String get lightning => 'Молния';
	@override String get moon => 'Луна';
	@override String get avatarGallery => 'Выберите аватар';
	@override String get avatarIllustrationHint => 'Оригинальные иллюстрированные портреты детей и друзей-животных.';
	@override String get avatarPortraitSunrise => 'Портрет восхода солнца';
	@override String get avatarPortraitMeadow => 'Луговой портрет';
	@override String get avatarPortraitBerry => 'Портрет Берри';
	@override String get avatarPortraitGolden => 'Золотой портрет';
	@override String get avatarPortraitIndigo => 'Индиго портрет';
	@override String get avatarPortraitOcean => 'Портрет океана';
	@override String get avatarKidArtist => 'Маленький художник';
	@override String get avatarKidSkater => 'Маленький фигурист';
	@override String get avatarCat => 'Любопытный кот';
	@override String get avatarDog => 'Счастливая собака';
	@override String get avatarPanda => 'Панда';
	@override String get avatarOwl => 'Сова';
	@override String get avatarFox => 'Фокс';
	@override String get avatarDinosaur => 'Динозавр';
	@override String get avatarRobot => 'Робот';
}

// Path: detailComposition
class _Translations$detailComposition$ru extends Translations$detailComposition$en {
	_Translations$detailComposition$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get startOver => 'Начать сначала';
	@override String get seriesCast => 'Актерский состав сериала';
	@override String get streamingQuality => 'Качество потоковой передачи…';
	@override String get trailer => 'Трейлер';
	@override String get manageMedia => 'Управлять медиа…';
	@override String get playbackOptions => 'Параметры воспроизведения…';
	@override String get moreActions => 'Дополнительные действия';
	@override String get watched => 'Смотрел';
	@override String get unwatched => 'Непросмотренный';
	@override String endsAt({required Object time}) => 'Заканчивается на ${time}';
	@override String get automatic => 'Автоматический';
	@override String get usePreferences => 'Используйте свои настройки воспроизведения';
	@override String get mediaInformation => 'Информация для СМИ';
	@override String get fullFileInformation => 'Полная информация о файле';
	@override String get castAndCrew => 'Актеры и съемочная группа';
}

// Path: kids
class _Translations$kids$ru extends Translations$kids$en {
	_Translations$kids$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get backupProfile => 'Резервное копирование детского профиля';
	@override String get backupExplain => 'Создайте резервную копию сохраненного имени, персонажа, ограничений, внешнего вида и исключений локального просмотра этого профиля. Родительские PIN-коды, входы на сервер, загрузки и прогресс воспроизведения на сервере не учитываются.';
	@override String get saveBackupFile => 'Сохранить файл резервной копии';
	@override String get copyBackup => 'Скопировать резервный текст';
	@override String backupSaved({required Object path}) => 'Резервная копия детского профиля сохранена в ${path}.';
	@override String get backupCopied => 'Резервная копия детского профиля скопирована.';
	@override String get backupFailed => 'Не удалось сохранить резервную копию профиля детей. Пожалуйста, попробуйте еще раз.';
	@override String get restoreProfile => 'Восстановить детский профиль';
	@override String get chooseBackupFile => 'Выберите файл резервной копии';
	@override String get pasteBackup => 'Вставить резервный текст';
	@override String get backupText => 'Резервное копирование детского профиля в формате JSON';
	@override String get pasteFromClipboard => 'Вставить из буфера обмена';
	@override String get restoreReview => 'Просмотрите эти восстановленные настройки, затем «Сохранить», чтобы создать новый детский профиль, используя текущие подключения к серверу. Существующие профили не перезаписываются. Выбор библиотеки и исключения просмотра соответствуют только одним и тем же идентификаторам сервера/библиотеки.';
	@override String get restoreInvalid => 'Это недействительная поддерживаемая резервная копия детского профиля. Выберите резервную копию детского профиля Luroka в формате JSON.';
	@override String get deleteProfile => 'Удалить детский профиль';
	@override String deleteExplain({required Object name}) => 'Удалить ${name} из Luroka? Их локальные настройки, исключения загрузок и просмотра будут удалены. Ваша учетная запись сервера и история на стороне сервера останутся. Сначала создайте резервную копию, если вы хотите восстановить профиль позже.';
	@override String get profileDeleted => 'Детский профиль удален.';
	@override String get allowedLibraries => 'Разрешенные библиотеки';
	@override String get unavailableLibrary => 'Ранее выбранная библиотека (в настоящее время недоступна)';
	@override String get allLibraries => 'Разрешить все подключенные библиотеки фильмов и телепередач';
	@override String get librariesExplain => 'Отключите это, чтобы выбрать определенные библиотеки. Правила возраста и анимации по-прежнему применяются внутри выбранных библиотек. Новые библиотеки не добавляются автоматически при использовании выделения.';
	@override String get librariesUnavailable => 'Библиотеки фильмов и ТВ не загружаются. Подключитесь к серверу и откройте «Библиотеки», затем вернитесь сюда, чтобы выбрать.';
	@override String get noLibrariesSelected => 'Библиотеки не выбраны: этот ребенок не увидит ни одного названия.';
	@override String get animationOnly => 'Только анимация';
	@override String get animationExplain => 'Показывать на вашем сервере только заголовки с тегом «Анимация». Это не отменяет возрастного ограничения: анимация может быть предназначена и для взрослых. Отсутствующие метаданные жанра скрыты.';
	@override String get allowUnrated => 'Разрешить названия без возрастного рейтинга';
	@override String get unratedExplain => 'По умолчанию выключено. Если этот параметр включен, могут отображаться отсутствующие или неоцененные классификации, если это разрешено правилами библиотеки и анимации. Их пригодность невозможно проверить по возрасту. Известные рейтинги выше возрастного ограничения и непризнанные классификации остаются скрытыми.';
	@override String get whoIsWatching => 'Кто смотрит?';
	@override String get chooseAdventure => 'Маленький мир больших приключений.';
	@override String get chooseProfile => 'Выберите свое пространство. Устройте вечер кино.';
	@override String welcome({required Object name}) => 'Привет, ${name}!';
	@override String welcomeOlder({required Object name}) => 'Ваша следующая замечательная история, ${name}.';
	@override String get homeSubtitle => 'Большие приключения. Маленькие открытия. Все для тебя.';
	@override String get homeSubtitleOlder => 'Найдите нового фаворита. Продолжайте с того места, где вы остановились.';
	@override String get featured => 'Сегодняшнее большое приключение';
	@override String get featuredOlder => 'В центре внимания';
	@override String get moreInfo => 'Дополнительная информация';
	@override String get movies => 'Фильмы';
	@override String get shows => 'Шоу';
	@override String get profiles => 'Профили';
	@override String get adultBadge => 'Взрослые';
	@override String get avatar => 'Выберите своего персонажа';
	@override String get avatarExplorer => 'Исследователь космоса';
	@override String get avatarFox => 'Фокс';
	@override String get avatarDinosaur => 'Динозавр';
	@override String get avatarRobot => 'Робот';
	@override String get avatarChildArtist => 'Маленький художник';
	@override String get avatarChildSkater => 'Маленький фигурист';
	@override String get avatarSunrisePerson => 'Портрет восхода солнца';
	@override String get avatarOceanPerson => 'Портрет океана';
	@override String get avatarCat => 'Любопытный кот';
	@override String get avatarDog => 'Счастливая собака';
	@override String get avatarPanda => 'Панда';
	@override String get avatarOwl => 'Сова';
	@override String get avatarBear => 'Медведь';
	@override String get continueAdventure => 'Продолжайте приключение';
	@override String get freshStories => 'Новые истории, которые стоит открыть';
	@override String get yourMovies => 'Фавориты кинопросмотра';
	@override String get yourShows => 'Еще один эпизод';
	@override String get emptyHint => 'Новые приключения появятся здесь, когда на вашем сервере появятся игры с разрешенной возрастной категорией.';
	@override String get title => 'Luroka для детей';
	@override String get addProfile => 'Добавить детский профиль';
	@override String get parentalControls => 'Родительский контроль';
	@override String get parentPin => 'Родительский PIN-код';
	@override String get setParentPin => 'Задать родительский PIN-код';
	@override String get changeParentPin => 'Изменить родительский PIN-код';
	@override String get pinExplain => 'Этот PIN-код защищает взрослые профили и родительский контроль на устройстве.';
	@override String get name => 'Имя ребенка';
	@override String get ageGroup => 'Разрешенная возрастная классификация';
	@override String get allAges => 'Для всех возрастов · G, TV-Y, TV-G, U';
	@override String get age7 => 'До 7 · также PG, TV-PG, TV-Y7';
	@override String get age12 => 'До 12 · также 12 и 12А';
	@override String get age16 => 'До 16 · также ПГ-13, ТВ-14, 15 и 16';
	@override String get ratingExplain => 'Титулы выше возрастного ограничения и непризнанные классификации скрыты. Заголовки без рейтинга скрыты, если вы не разрешите их использование ниже. Эпизоды без рейтинга могут наследовать утвержденную классификацию сериалов. Рейтинги зависят от метаданных вашего сервера.';
	@override String get theme => 'Внешний вид детей';
	@override String get themeExplain => 'Используйте красочную тему, когда этот профиль активен.';
	@override String get sharedLogin => 'Использует существующий логин на сервере. Plex/Emby прогресс и статус просмотра остаются общими. На этом устройстве хранятся ограничения и детские профили.';
	@override String get hideWatched => 'Скрыть просмотр детьми из моего Продолжить просмотр';
	@override String get hideExplain => 'Скрывайте на этом устройстве фильмы и целые сериалы, которые воспроизводят дети. Это не удалит их из вашей библиотеки и не изменит историю сервера.';
	@override String get clearHistory => 'Сбросить ограничения просмотра для детей';
	@override String get historyReset => 'Исключения просмотра для детей сброшены';
	@override String get blocked => 'Это название недоступно в этом детском профиле.';
	@override String get switchProfile => 'Переключить профиль';
	@override String get manageFromAdult => 'Переключитесь на профиль для взрослых, чтобы управлять настройками.';
	@override String get noConnections => 'Подключите сервер к своему взрослому профилю, прежде чем добавлять детский профиль.';
	@override String get created => 'Детский профиль создан.';
	@override String get updated => 'Детский профиль обновлен.';
	@override String get saveFailed => 'Не удалось сохранить родительский контроль. Пожалуйста, попробуйте еще раз.';
	@override String get kidsBadge => 'Дети';
}

// Path: lurokaDiscovery
class _Translations$lurokaDiscovery$ru extends Translations$lurokaDiscovery$en {
	_Translations$lurokaDiscovery$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Обзор';
	@override String get chooseLibraryHint => 'Выберите библиотеку для изучения';
	@override String get chooseCopyHint => 'Доступен в нескольких библиотеках. Выберите предпочитаемую копию.';
	@override String get weeklyMovies => 'Популярные фильмы на этой неделе · TMDb';
	@override String get weeklyShows => 'Популярные шоу на этой неделе · TMDb';
	@override String get weeklyLibrary => 'Тенденции этой недели · В вашей библиотеке';
	@override String get popularLibrary => 'Популярно сейчас · В вашей библиотеке · Cinemeta';
	@override String get publicFeedError => 'Открытие Cinemeta недоступно. Пожалуйста, попробуйте еще раз.';
	@override String get oscars => '«Оскар» · Победители в номинации «Лучший фильм»';
	@override String get imdb100 => 'IMDb 100 лучших фильмов · снимок за сентябрь 2026 г.';
	@override String get imdbTv100 => 'IMDb 100 лучших шоу · снимок за сентябрь 2026 г.';
	@override String get emmyComedy => 'Эмми · Победители комедийных сериалов · 1971–2026 гг.';
	@override String get emmys => 'Эмми · Победители драматических сериалов · 1966–2026 гг.';
	@override String get bafta => 'BAFTA · Победители в номинациях «Лучший фильм»';
	@override String get cannes => 'Канны · Обладатели «Золотой пальмовой ветви»';
	@override String get awardsNote => 'Коллекции наград включают историю «Оскара» за лучший фильм, лауреатов премии «Эмми» в области драмы и комедии, а также расширенный отбор BAFTA/Канн. Повторные выигрышные титулы появляются один раз. При членстве используются истории категорий наград и факты из Викиданных. В списках IMDb 100 лучших фильмов и шоу сохранены снимки диаграмм за сентябрь 2026 года из mmdju/imdb-top250-api. Появляются только совпадения в видимых онлайн-библиотеках; размер коллекции зависит от наличия библиотеки.';
	@override String get attribution => 'Списки общедоступной популярности, метаданные и рейтинги IMDb предоставляются Cinemeta; его популярные списки не являются еженедельными диаграммами просмотра. В этом продукте используется TMDB API, но он не одобрен и не сертифицирован TMDB. Дополнительные еженедельные тенденции TMDb отражают интерес TMDb, а не просмотр цифр. Партитуры сохраняют свои исходные метки.';
	@override String get tmdbSettings => 'Источники обнаружения';
	@override String get setupDescription => 'Открытие Cinemeta работает сразу без учетной записи: популярные фильмы и сериалы, рейтинги IMDb и лауреаты наград. При необходимости подключите TMDb для получения еженедельных тенденций, используя ключ API или токен доступа для чтения API с сайта themoviedb.org/settings/api. Ваши учетные данные хранятся на этом устройстве.';
	@override String get apiKey => 'TMDb API ключ/токен доступа для чтения';
	@override String get connect => 'Подключить TMDb';
	@override String get connecting => 'Подключение…';
	@override String get connected => 'TMDb подключен · Еженедельные тенденции и награды включены';
	@override String get builtInKeyNote => 'Работает на встроенном общем ключе Luroka TMDb. Добавьте свой собственный бесплатный ключ ниже, чтобы получить выделенные ограничения скорости и полный контроль.';
	@override String get disconnect => 'Отключить TMDb';
	@override String get invalidKey => 'Не удалось проверить TMDb. Проверьте свои учетные данные и подключение к Интернету.';
	@override String get feedError => 'Обнаружение TMDb недоступно. Пожалуйста, попробуйте еще раз.';
	@override String get allTitles => 'Все названия';
	@override String get available => 'В вашей библиотеке';
	@override String get checking => 'Проверка ваших библиотек…';
	@override String get availabilityUnknown => 'Некоторые библиотеки не удалось проверить. Попробуйте обновиться.';
	@override String get noAvailable => 'В проверенных библиотеках не найдено соответствующих заголовков.';
	@override String get sourceInfo => 'Тенденции недели и избранные победители · TMDb';
	@override String get configure => 'Настройки обнаружения';
}

// Path: app
class _Translations$app$ru extends Translations$app$en {
	_Translations$app$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Luroka';
}

// Path: appIcon
class _Translations$appIcon$ru extends Translations$appIcon$en {
	_Translations$appIcon$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Значок приложения';
	@override String get defaultIcon => 'По умолчанию';
	@override String get current => 'Текущий значок';
	@override String get locked => 'Перк сторонника';
	@override String get lockedHint => 'Альтернативные значки — это перк сторонника.';
	@override String get changeFailed => 'Не удалось изменить значок приложения';
	@override String get launcherHint => 'Новый значок появится на главном экране, как только вы покинете Luroka.';
	@override String get tvLauncherHint => 'Новый баннер появится, как только вы покинете Luroka. Android TV может продолжать показывать старое изображение до тех пор, пока телевизор не перезагрузится.';
	@override late final _Translations$appIcon$names$ru names = _Translations$appIcon$names$ru._(_root);
}

// Path: auth
class _Translations$auth$ru extends Translations$auth$en {
	_Translations$auth$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get signInWithPlex => 'Войти через Plex';
	@override String get showQRCode => 'Показать QR-код';
	@override String get authenticate => 'Войти';
	@override String get authenticationTimeout => 'Время аутентификации истекло. Попробуйте снова.';
	@override String get scanQRToSignIn => 'Отсканируйте QR-код для входа';
	@override String get waitingForAuth => 'Ожидание аутентификации...\nВыполните вход в браузере.';
	@override String get useBrowser => 'Использовать браузер';
	@override String get or => 'или';
	@override String connectToMediaBrowser({required Object product}) => 'Подключиться к ${product}';
	@override String get quickConnect => 'Quick Connect';
	@override String get useQuickConnect => 'Использовать Quick Connect';
	@override String get quickConnectInstructions => 'Откройте Quick Connect в Jellyfin и введите этот код.';
	@override String get quickConnectWaiting => 'Ожидание подтверждения…';
	@override String get quickConnectCancel => 'Отмена';
	@override String get quickConnectExpired => 'Срок действия Quick Connect истёк. Попробуйте снова.';
	@override String get localDataRecoveryRequired => 'Luroka не удалось безопасно восстановить данные локального входа и несинхронизированные данные о воспроизведении. Войдите снова.';
	@override String get pinCheckRejected => 'Проверка PIN-кода Plex была отклонена';
}

// Path: common
class _Translations$common$ru extends Translations$common$en {
	_Translations$common$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get cancel => 'Отмена';
	@override String get save => 'Сохранить';
	@override String get close => 'Закрыть';
	@override String get clear => 'Очистить';
	@override String get reset => 'Сбросить';
	@override String get later => 'Позже';
	@override String get submit => 'Отправить';
	@override String get confirm => 'Подтвердить';
	@override String get retry => 'Повторить';
	@override String get logout => 'Выйти';
	@override String get unknown => 'Неизвестно';
	@override String get refresh => 'Обновить';
	@override String get yes => 'Да';
	@override String get no => 'Нет';
	@override String get delete => 'Удалить';
	@override String get edit => 'Редактировать';
	@override String get shuffle => 'Перемешать';
	@override String get addTo => 'Добавить в...';
	@override String get createNew => 'Создать новый';
	@override String get connect => 'Подключить';
	@override String get disconnect => 'Отключить';
	@override String get play => 'Воспроизвести';
	@override String get pause => 'Пауза';
	@override String get resume => 'Продолжить';
	@override String get error => 'Ошибка';
	@override String get search => 'Поиск';
	@override String get home => 'Главная';
	@override String get back => 'Назад';
	@override String get settings => 'Настройки';
	@override String get mute => 'Без звука';
	@override String get ok => 'OK';
	@override String get off => 'Выкл.';
	@override String get options => 'Параметры';
	@override String seasonNumber({required Object number}) => 'Сезон ${number}';
	@override String episodeNumberTitle({required Object number, required Object title}) => 'Эпизод ${number} - ${title}';
	@override String chapterNumber({required Object number}) => 'Глава ${number}';
	@override String get reconnect => 'Переподключить';
	@override String get viewAll => 'Показать все';
	@override String get serversUnreachable => 'Серверы недоступны';
	@override String get loading => 'Загрузка...';
	@override String get fullscreen => 'Полноэкранный режим';
	@override String get exitFullscreen => 'Выйти из полноэкранного режима';
	@override late final _Translations$common$ratingSource$ru ratingSource = _Translations$common$ratingSource$ru._(_root);
	@override String get notAvailable => 'Н/Д';
	@override String get url => 'URL';
	@override String get letterKeys => 'АБВ';
	@override late final _Translations$common$mediaKind$ru mediaKind = _Translations$common$mediaKind$ru._(_root);
	@override String get stay => 'Останься';
	@override String get exitApp => 'Выход';
	@override String get exitAppBody => 'Вы уверены, что хотите выйти из Luroka?';
}

// Path: tvHints
class _Translations$tvHints$ru extends Translations$tvHints$en {
	_Translations$tvHints$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get select => 'Выбрать';
	@override String get browse => 'Обзор';
	@override String get back => 'Назад';
}

// Path: screens
class _Translations$screens$ru extends Translations$screens$en {
	_Translations$screens$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get licenses => 'Лицензии';
	@override String get switchProfile => 'Сменить профиль';
	@override String get subtitleStyling => 'Стиль субтитров';
	@override String get mpvConfig => 'mpv.conf';
	@override String get logs => 'Логи';
}

// Path: mediaExtras
class _Translations$mediaExtras$ru extends Translations$mediaExtras$en {
	_Translations$mediaExtras$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get trailers => 'Трейлеры';
	@override String get featurettes => 'Короткометражки';
	@override String get interviews => 'Интервью';
	@override String get deletedScenes => 'Удаленные сцены';
	@override String get behindTheScenes => 'За кулисами';
	@override String get scenesAndClips => 'Сцены и клипы';
	@override String get other => 'Другие дополнения';
}

// Path: update
class _Translations$update$ru extends Translations$update$en {
	_Translations$update$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get available => 'Доступно обновление';
	@override String versionAvailable({required Object version}) => 'Доступна версия ${version}';
	@override String currentVersion({required Object version}) => 'Текущая: ${version}';
	@override String get skipVersion => 'Пропустить эту версию';
	@override String get viewRelease => 'Посмотреть релиз';
	@override String get latestVersion => 'У вас последняя версия';
	@override String get checkFailed => 'Не удалось проверить обновления';
}

// Path: supporter
class _Translations$supporter$ru extends Translations$supporter$en {
	_Translations$supporter$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Сторонник Luroka';
	@override String get intro => 'Одноразовая покупка, которая поддерживает разработку Luroka и открывает косметические дополнения:';
	@override String get presetThemes => 'Предустановленные темы';
	@override String get presetThemesDescription => 'Уголь, ледник, лес, слива и бумага';
	@override String get customTheme => 'Пользовательская тема';
	@override String get customThemeDescription => 'Каждый цвет выбирайте сами';
	@override String get appIcons => 'Значки приложений';
	@override String get appIconsDescription => 'Выберите альтернативный значок Luroka.';
	@override String buy({required Object price}) => 'Купить за ${price}';
	@override String get loadingPrice => 'Загрузка цены...';
	@override String get restore => 'Восстановить покупки';
	@override String get pending => 'Ваша покупка ожидает оплаты или одобрения. Дополнения разблокируются, как только магазин завершит их.';
	@override String get thankYouTitle => 'Спасибо за поддержку Luroka';
	@override String get thankYouBody => 'Ваши дополнительные возможности Supporter разблокированы.';
	@override String get tileSubtitle => 'Разблокируйте темы и значки приложений, совершив единоразовую покупку.';
	@override String get tileSubtitleThemesOnly => 'Разблокируйте темы с помощью единоразовой покупки';
	@override String get tileUnlocked => 'Спасибо за вашу поддержку';
	@override late final _Translations$supporter$errors$ru errors = _Translations$supporter$errors$ru._(_root);
}

// Path: settings
class _Translations$settings$ru extends Translations$settings$en {
	_Translations$settings$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Настройки';
	@override String get supportDeveloper => 'Поддержать Luroka';
	@override String get supportDeveloperDescription => 'Пожертвуйте через Liberapay на развитие';
	@override String get language => 'Язык';
	@override String get theme => 'Тема';
	@override String get appearance => 'Внешний вид';
	@override String get videoPlayback => 'Воспроизведение видео';
	@override String get videoPlaybackDescription => 'Настройка поведения воспроизведения';
	@override String get advanced => 'Дополнительно';
	@override String get episodePosterMode => 'Стиль постера эпизода';
	@override String get seriesPoster => 'Постер сериала';
	@override String get seasonPoster => 'Постер сезона';
	@override String get episodeThumbnail => 'Миниатюра';
	@override String get homeHeroSize => 'Размер карусели';
	@override String get homeHeroSizeSmall => 'Маленький';
	@override String get homeHeroSizeMedium => 'Средний';
	@override String get homeHeroSizeLarge => 'Большой';
	@override String get secondsLabel => 'Секунды';
	@override String get minutesLabel => 'Минуты';
	@override String get secondsShort => 'с';
	@override String get minutesShort => 'м';
	@override String durationHint({required Object min, required Object max}) => 'Введите длительность (${min}-${max})';
	@override String get systemTheme => 'Системная';
	@override String get lightTheme => 'Светлая';
	@override String get darkTheme => 'Тёмная';
	@override String get oledTheme => 'OLED';
	@override String get libraryDensity => 'Плотность библиотеки';
	@override String get displayScale => 'Масштаб отображения';
	@override String get compact => 'Компактный';
	@override String get comfortable => 'Комфортный';
	@override String get gridSpacing => 'Отступы сетки';
	@override String get gridSpacingTight => 'Плотные';
	@override String get gridSpacingNormal => 'Обычные';
	@override String get gridSpacingSpacious => 'Просторные';
	@override String get tvCornerSpotlightBackdrop => 'Фоновое изображение в углу';
	@override String get tvCornerSpotlightBackdropDescription => 'Показывать изображение избранного материала в правом верхнем углу, а не на весь экран';
	@override String get viewMode => 'Режим просмотра';
	@override String get gridView => 'Сетка';
	@override String get listView => 'Список';
	@override String get continueWatchingAction => 'Действие для «Продолжить просмотр»';
	@override String get continueWatchingPlay => 'Воспроизвести';
	@override String get continueWatchingDetails => 'Открыть сведения';
	@override String get episodeAction => 'Действие для эпизодов';
	@override String get episodePlay => 'Воспроизвести';
	@override String get episodeDetails => 'Открыть сведения';
	@override String get useGlobalHubs => 'Использовать макет главной';
	@override String get useGlobalHubsDescription => 'Показывать единые разделы главной. Иначе использовать рекомендации библиотек.';
	@override String get showServerNameOnHubs => 'Показывать имя сервера в хабах';
	@override String get showServerNameOnHubsDescription => 'Всегда показывать имена серверов в заголовках разделов.';
	@override String get groupLibrariesByServer => 'Группировать библиотеки по серверам';
	@override String get groupLibrariesByServerDescription => 'Группировать библиотеки боковой панели по медиасерверам.';
	@override String get alwaysKeepSidebarOpen => 'Всегда держать боковую панель открытой';
	@override String get alwaysKeepSidebarOpenDescription => 'Боковая панель остаётся развёрнутой, область контента подстраивается';
	@override String get showUnwatchedCount => 'Показывать количество непросмотренных';
	@override String get showUnwatchedCountDescription => 'Отображать количество непросмотренных эпизодов для сериалов и сезонов';
	@override String get showWatchedIndicators => 'Показывать индикаторы просмотра';
	@override String get showWatchedIndicatorsDescription => 'Отображать галочку на просмотренных фильмах, сериалах и эпизодах';
	@override String get showEpisodeNumberOnCards => 'Показывать номер эпизода на карточках';
	@override String get showEpisodeNumberOnCardsDescription => 'Показывать номер сезона и серии на карточках серий';
	@override String get showSeasonPostersOnTabs => 'Показывать постеры сезонов на вкладках';
	@override String get showSeasonPostersOnTabsDescription => 'Показывать постер каждого сезона над его вкладкой';
	@override String get tvFullCardLayout => 'Полноформатные ТВ-карточки';
	@override String get tvFullCardLayoutDescription => 'Использовать ТВ-карточки только с изображением и наложенными именами актёров';
	@override String get focusGlow => 'Свечение при фокусе';
	@override String get focusGlowDescription => 'Показывать мягкое свечение вокруг карточки в фокусе';
	@override String get visualEffects => 'Визуальные эффекты';
	@override String get visualEffectsAuto => 'Автоматически';
	@override String get visualEffectsAutoDescription => 'Автоматически уменьшать эффекты на маломощных устройствах';
	@override String get visualEffectsFull => 'Полные';
	@override String get visualEffectsReduced => 'Уменьшенные';
	@override String get visualEffectsReducedDescription => 'Меньше анимаций и графика с более низким разрешением';
	@override String get hideSpoilers => 'Скрыть спойлеры непросмотренных эпизодов';
	@override String get hideSpoilersDescription => 'Размывать миниатюры и описания непросмотренных серий';
	@override String get playerBackend => 'Бэкенд плеера';
	@override String get playerBackendDescription => 'mpv воспроизводит больше форматов и предоставляет больше функций — рекомендуется. ExoPlayer помогает, если воспроизведение не работает или заикается на этом устройстве.';
	@override String get exoPlayer => 'ExoPlayer';
	@override String get mpv => 'mpv';
	@override String get hardwareDecoding => 'Аппаратное декодирование';
	@override String get hardwareDecodingDescription => 'Использовать аппаратное ускорение, когда доступно';
	@override String get playbackBuffer => 'Буфер воспроизведения';
	@override String get playbackBufferAuto => 'Авто (рекомендуется)';
	@override String get playbackBufferLarge => 'Большой';
	@override String get playbackBufferExtraLarge => 'Очень большой';
	@override String get playbackBufferDescription => 'Буферизирует больше при нестабильном соединении. Также ограничено размером буфера.';
	@override String get defaultQualityTitle => 'Качество по умолчанию';
	@override String get streamingQualityOriginalHint => 'Воспроизводит файл точно так же, как он сохранен — лучшее качество, максимально использует полосу пропускания.';
	@override String get cellularQualityTitle => 'Качество по умолчанию в мобильной сети';
	@override String get cellularQualitySameAsDefault => 'Как качество по умолчанию';
	@override String get directPlayCoveredQuality => 'Воспроизводить меньшие видео в исходном качестве';
	@override String get directPlayCoveredQualityDescription => 'Воспроизводить напрямую видео, уже укладывающиеся в ограничение качества, вместо их транскодирования';
	@override String get videoCodecs => 'Видеокодеки';
	@override String get videoCodecsDescription => 'Кодеки без отметки транскодирует сервер';
	@override String get videoCodecsAlwaysAccepted => 'Принимается всегда';
	@override String get musicQualityTitle => 'Качество музыки';
	@override String get subtitleStyling => 'Стиль субтитров';
	@override String get subtitleStylingDescription => 'Настроить внешний вид субтитров';
	@override String get smallSkipDuration => 'Малая перемотка';
	@override String get largeSkipDuration => 'Большая перемотка';
	@override String get rewindOnResume => 'Перемотка при возобновлении';
	@override String secondsUnit({required Object seconds}) => '${seconds} с';
	@override String get defaultSleepTimer => 'Таймер сна по умолчанию';
	@override String minutesUnit({required Object minutes}) => '${minutes} мин';
	@override String get rememberTrackSelections => 'Запоминать выбор дорожек для каждого сериала/фильма';
	@override String get rememberTrackSelectionsDescription => 'Запоминать выбор аудиодорожки и субтитров для каждого материала';
	@override String get rememberTrackSelectionsBackendRule => 'Plex сохраняет каждый выбор на сервере для каждого файла; Jellyfin также включает «Запоминать выбор» в учётной записи; Emby не поддерживается';
	@override String get followServerTrackSelections => 'Использовать выбор дорожек сервера для каждой серии';
	@override String get followServerTrackSelectionsDescription => 'При смене серии применять аудио и субтитры, выбранные на сервере, вместо переноса текущего выбора';
	@override String get resumeMusicOnLaunch => 'Запоминать музыкальную сессию';
	@override String get resumeMusicOnLaunchDescription => 'При запуске приложения открывать последний трек на паузе с того места, где он остановился';
	@override String get showChapterMarkersOnTimeline => 'Показывать маркеры глав на шкале перемотки';
	@override String get showChapterMarkersOnTimelineDescription => 'Разделять шкалу перемотки по границам глав';
	@override String get specialsOrdering => 'Спецвыпуски в порядке эпизодов';
	@override String get specialsOrderingDescription => 'Место спецвыпусков в порядке просмотра сериала';
	@override String get specialsOrderingServer => 'Следовать порядку сервера';
	@override String get specialsOrderingAirDate => 'Чередовать по дате выхода';
	@override String get specialsOrderingLast => 'После обычных сезонов';
	@override String get clickVideoTogglesPlayback => 'Нажатие на видео запускает или приостанавливает воспроизведение';
	@override String get clickVideoTogglesPlaybackDescription => 'Нажатие на видео запускает или приостанавливает воспроизведение вместо показа элементов управления.';
	@override String get videoPlayerControls => 'Элементы управления плеером';
	@override String get keyboardShortcuts => 'Горячие клавиши';
	@override String get keyboardShortcutsDescription => 'Настроить горячие клавиши';
	@override String get videoPlayerNavigation => 'Навигация видеоплеера';
	@override String get videoPlayerNavigationDescription => 'Использовать клавиши стрелок для навигации по элементам управления плеером';
	@override String get watchTogetherRelay => 'Сервер ретрансляции для совместного просмотра';
	@override String get watchTogetherRelayDescription => 'Ретрансляции Public Open Watch Party, если вы не установите свои собственные';
	@override String get watchTogetherRelayHint => 'https://my-relay.example.com';
	@override String get watchTogetherRelayInvalid => 'Введите допустимый базовый HTTP- или HTTPS-адрес сервера ретрансляции.';
	@override String get crashReporting => 'Отчёты об ошибках';
	@override String get crashReportingDescription => 'Отправлять отчёты об ошибках для улучшения приложения';
	@override String get debugLogging => 'Журнал отладки';
	@override String get debugLoggingDescription => 'Включить подробное журналирование для устранения неполадок';
	@override String get viewLogs => 'Просмотр логов';
	@override String get viewLogsDescription => 'Просмотр логов приложения';
	@override String get clearImageCache => 'Очистить кэш изображений';
	@override String get clearImageCacheDescription => 'Очистить кэшированные обложки и миниатюры. Изображения могут загружаться медленнее, пока не будут загружены снова.';
	@override String get clearImageCacheSuccess => 'Кэш изображений успешно очищен';
	@override String get resetSettings => 'Сбросить настройки';
	@override String get resetSettingsDescription => 'Восстановить настройки по умолчанию. Это нельзя отменить.';
	@override String get resetSettingsSuccess => 'Настройки успешно сброшены';
	@override String get backup => 'Резервная копия';
	@override String get exportSettings => 'Экспорт настроек';
	@override String get exportSettingsDescription => 'Сохранить настройки в файл';
	@override String get exportSettingsSuccess => 'Настройки экспортированы';
	@override String get importSettings => 'Импорт настроек';
	@override String get importSettingsDescription => 'Восстановить настройки из файла';
	@override String get importSettingsConfirm => 'Это заменит ваши текущие настройки. Продолжить?';
	@override String get importSettingsSuccess => 'Настройки импортированы';
	@override String get importSettingsInvalidFile => 'Этот файл не является действительным экспортом настроек Luroka';
	@override String get importSettingsNoUser => 'Войдите в систему перед импортом настроек';
	@override String get shortcutsReset => 'Горячие клавиши сброшены по умолчанию';
	@override String get resetShortcutsConfirm => 'Это заменит ваши пользовательские ярлыки на значения по умолчанию. Продолжать?';
	@override String get about => 'О приложении';
	@override String get aboutDescription => 'Информация о приложении и лицензии';
	@override String get updates => 'Обновления';
	@override String get updateAvailable => 'Доступно обновление';
	@override String get checkForUpdates => 'Проверить обновления';
	@override String get autoCheckUpdatesOnStartup => 'Автоматически проверять обновления при запуске';
	@override String get autoCheckUpdatesOnStartupDescription => 'Уведомлять о доступном обновлении при запуске';
	@override String get validationErrorEnterNumber => 'Введите корректное число';
	@override String validationErrorDuration({required Object min, required Object max, required Object unit}) => 'Длительность должна быть от ${min} до ${max} ${unit}';
	@override String shortcutAlreadyAssigned({required Object action}) => 'Сочетание клавиш уже назначено действию «${action}»';
	@override String shortcutUpdated({required Object action}) => 'Сочетание клавиш для действия «${action}» обновлено';
	@override String get saveFailed => 'Не удалось сохранить изменения. Попробуйте снова.';
	@override String get autoPlayAndSkip => 'Автовоспроизведение и пропуск';
	@override String get autoPlayNextEpisode => 'Автовоспроизведение следующего эпизода';
	@override String get autoPlayNextEpisodeDescription => 'Автоматически запускать следующий эпизод, когда заканчивается текущий';
	@override String get shuffleStartsFromBeginning => 'Случайный порядок начинает с начала';
	@override String get shuffleStartsFromBeginningDescription => 'Начинать каждый эпизод с начала при случайном воспроизведении вместо продолжения';
	@override String get playNextCountdown => 'Обратный отсчёт перед следующим';
	@override String get playNextCountdownImmediate => 'Воспроизводить сразу';
	@override String get skipIntroMode => 'Пропуск вступления';
	@override String get skipIntroModeOffDescription => 'Воспроизводить вступления обычным образом, без кнопки пропуска';
	@override String get skipIntroModeButtonDescription => 'Показывать кнопку пропуска при начале вступления';
	@override String get skipIntroModeAutoDescription => 'Пропускать вступления автоматически после указанной ниже задержки';
	@override String get skipCreditsMode => 'Пропуск титров';
	@override String get skipCreditsModeOffDescription => 'Воспроизводить титры обычным образом, без кнопки пропуска';
	@override String get skipCreditsModeButtonDescription => 'Показывать кнопку пропуска при начале титров';
	@override String get skipCreditsModeAutoDescription => 'Пропускать титры автоматически и воспроизводить следующий эпизод';
	@override String get skipMarkerModeOff => 'Выкл.';
	@override String get skipMarkerModeButton => 'Показывать кнопку';
	@override String get skipMarkerModeAuto => 'Автоматически';
	@override String get forceSkipMarkerFallback => 'Всегда использовать резервные маркеры';
	@override String get forceSkipMarkerFallbackDescription => 'Использовать шаблоны названий глав, даже если в Plex есть собственные маркеры';
	@override String get autoSkipDelay => 'Задержка автопропуска';
	@override String autoSkipDelayDescription({required Object seconds}) => 'Подождать ${seconds} секунд перед автопропуском';
	@override String get introPattern => 'Шаблон маркера вступления';
	@override String get introPatternDescription => 'Регулярное выражение для распознавания маркеров вступления в заголовках глав';
	@override String get creditsPattern => 'Шаблон маркера титров';
	@override String get creditsPatternDescription => 'Регулярное выражение для распознавания маркеров титров в заголовках глав';
	@override String get invalidRegex => 'Недопустимое регулярное выражение';
	@override String get regex => 'Регулярное выражение';
	@override String get downloads => 'Загрузки';
	@override String get downloadLocationDescription => 'Выберите место для хранения загруженного контента';
	@override String get downloadLocationDefault => 'По умолчанию (Хранилище приложения)';
	@override String get downloadLocationCustom => 'Другое расположение';
	@override String get selectFolder => 'Выбрать папку';
	@override String get resetToDefault => 'Сбросить по умолчанию';
	@override String currentPath({required Object path}) => 'Текущий: ${path}';
	@override String get downloadLocationChanged => 'Место загрузки изменено';
	@override String get downloadLocationReset => 'Место загрузки сброшено по умолчанию';
	@override String get downloadLocationInvalid => 'Выбранная папка недоступна для записи';
	@override String get downloadLocationPickerUnavailable => 'Выбор папки недоступен на этом устройстве';
	@override String get downloadOnWifiOnly => 'Загружать только по Wi-Fi';
	@override String get downloadOnWifiOnlyDescription => 'Запретить загрузку по мобильным данным';
	@override String get autoRemoveWatchedDownloads => 'Автоудаление просмотренных загрузок';
	@override String get autoRemoveWatchedDownloadsDescription => 'Автоматически удалять просмотренные загрузки';
	@override String get cellularDownloadBlocked => 'Загрузки через мобильную сеть заблокированы. Используйте Wi-Fi или измените настройку.';
	@override String get maxVolume => 'Максимальная громкость';
	@override String get maxVolumeDescription => 'Разрешить усиление громкости выше 100% для тихих медиа';
	@override String maxVolumePercent({required Object percent}) => '${percent}%';
	@override String get discordRichPresence => 'Статус активности Discord';
	@override String get discordRichPresenceDescription => 'Показывать, что вы смотрите, в Discord';
	@override String get services => 'Сервисы';
	@override String get servicesDescription => 'Подключите Trakt, MyAnimeList, Seerr и другие';
	@override String get manageLibrariesDescription => 'Изменять порядок и скрывать библиотеки';
	@override String get companionRemoteServer => 'Сервер удалённого управления';
	@override String get companionRemoteServerDescription => 'Разрешить мобильным устройствам в сети управлять этим приложением';
	@override String get companionRemoteServerStartFailed => 'Не удалось запустить сервер удалённого управления';
	@override String get companionRemoteServerStopFailed => 'Не удалось остановить сервер удалённого управления';
	@override String get autoPip => 'Автоматический режим «картинка в картинке»';
	@override String get autoPipDescription => 'Автоматически включать режим «картинка в картинке» при выходе из приложения во время воспроизведения';
	@override String get matchContentFrameRate => 'Соответствие частоты кадров контента';
	@override String get matchContentFrameRateDescription => 'Подстраивать частоту обновления экрана под видео';
	@override String get matchContentResolution => 'Подстраивать под разрешение контента';
	@override String get matchContentResolutionDescription => 'Переключает экран на исходное разрешение видео, чтобы масштабированием занимался телевизор. Во время воспроизведения меню и субтитры тоже масштабируются';
	@override String get matchRefreshRate => 'Соответствие частоты обновления';
	@override String get matchRefreshRateDescription => 'Подстраивать частоту обновления в полноэкранном режиме';
	@override String get matchDynamicRange => 'Соответствие динамического диапазона';
	@override String get matchDynamicRangeDescription => 'Включать HDR для HDR-контента, затем возвращаться к SDR';
	@override String get displaySwitchDelay => 'Задержка переключения дисплея';
	@override String get tunneledPlayback => 'Туннельное воспроизведение';
	@override String get tunneledPlaybackDescription => 'Использовать видеотуннелирование. Отключите, если при воспроизведении HDR отображается чёрный экран или движение прерывается.';
	@override String get audioPassthrough => 'Сквозной вывод аудио';
	@override String get audioPassthroughDescription => 'Передавать звук Dolby/DTS на ресивер или телевизор без перекодирования, сохраняя объёмный звук. Отключите, если нет звука.';
	@override String get audioPassthroughDescriptionApple => 'Использовать встроенный декодер Dolby от Apple для Dolby Digital Plus, включая Atmos. DTS и TrueHD по-прежнему воспроизводятся как многоканальный PCM. Отключите, если звук отсутствует.';
	@override String get audioPassthroughDescriptionAppleSpatial => 'Используйте собственный декодер Dolby от Apple для Dolby Digital Plus, включая Atmos. В iOS, iPadOS и tvOS 26 или новее TrueHD Atmos и DTS:X воспроизводятся как пространственный звук. Другие треки DTS и TrueHD воспроизводятся как многоканальный PCM. Выключите, если у вас нет звука.';
	@override String get audioPassthroughOverriddenByNormalization => 'Отключено при включённой нормализации громкости';
	@override String get audioChannelLimit => 'Аудиоканалы';
	@override String get audioChannelLimitDescription => 'Смешайте декодированный звук для динамиков, наушников или настроек HDMI, которые не могут воспроизводить все каналы.';
	@override String get audioChannelLimitOriginal => 'Оригинал';
	@override String get audioChannelLimitOriginalDescription => 'Воспроизведение каждого канала трека';
	@override String get audioChannelLimitSurround51 => 'До 5,1';
	@override String get audioChannelLimitSurround51Description => 'Смешайте 7.1 с 5.1 для телевизоров и ресиверов, поддерживающих только 5.1 PCM. Прохождение не затрагивается.';
	@override String get audioChannelLimitStereo => 'Стерео';
	@override String get audioChannelLimitStereoDescription => 'Сведите два канала для стереодинамиков или наушников. Отключает сквозную передачу.';
	@override String get downmixCenterBoost => 'Усиление центрального канала';
	@override String downmixCenterBoostValue({required Object db}) => '${db} дБ';
	@override String get downmixCenterBoostLabel => 'Усиление (дБ)';
	@override String get downmixCenterBoostShort => 'дБ';
	@override String get audioDownmixNormalize => 'Нормализация громкости при микшировании';
	@override String get audioDownmixNormalizeDescription => 'Снижает уровень микса во избежание клиппинга. Отключите, чтобы сохранить исходную громкость (возможны искажения в громких сценах).';
	@override String get dvConversionMode => 'Преобразование Dolby Vision';
	@override String get dvConversionModeDescription => 'Выберите, как обрабатывать файлы Dolby Vision Profile 7.';
	@override String get dvConversionAuto => 'Авто';
	@override String get dvConversionNative => 'Нативно / отключено';
	@override String get dvConversionDv81 => 'P7 → P8.1';
	@override String get dvConversionHevcStrip => 'P7 → HEVC';
	@override String get dvConversionAutoDescription => 'Использовать определение возможностей устройства и обычное резервное поведение';
	@override String get dvConversionNativeDescription => 'Принудительно использовать нативный DV7 и не повторять DV-конвертацию';
	@override String get dvConversionDv81Description => 'Принудительно выполнять inline-конвертацию RPU в Dolby Vision профиль 8.1';
	@override String get dvConversionHevcStripDescription => 'Удалять слои Dolby Vision RPU/EL и передавать обычный HEVC';
	@override String get disableDolbyVision => 'Отключить Dolby Vision';
	@override String get disableDolbyVisionDescription => 'Воспроизводить слой HDR10 или HLG из файла вместо Dolby Vision, если он есть';
	@override String get hdrSdrConversion => 'Преобразование HDR в SDR';
	@override String get hdrSdrConversionDescription => 'Выберите, что преобразует HDR-видео, если дисплей не поддерживает HDR.';
	@override String get hdrSdrConversionAuto => 'Авто';
	@override String get hdrSdrConversionAutoDescription => 'Устройство на Android 9 и новее, проигрыватель на более старых версиях';
	@override String get hdrSdrConversionDevice => 'Устройство';
	@override String get hdrSdrConversionDeviceDescription => 'Преобразует видеооборудование устройства. Быстрее всего, но цвета зависят от устройства';
	@override String get hdrSdrConversionPlayer => 'Проигрыватель';
	@override String get hdrSdrConversionPlayerDescription => 'Преобразует проигрыватель. Одинаковые цвета, но 4K может подтормаживать на слабых ТВ-приставках';
	@override String get deinterlace => 'Деинтерлейсинг';
	@override String get deinterlaceDescription => 'Устранять гребёнку на чересстрочном видео (только в плеере mpv)';
	@override String get deinterlaceOff => 'Выключенный';
	@override String get deinterlaceOffDescription => 'Показывать чересстрочное видео в декодированном виде';
	@override String get deinterlaceVideo => 'Видео';
	@override String get deinterlaceVideoDescription => 'Превратите каждое поле в полный кадр. Для видеороликов, снятых для телевидения, например спортивных состязаний, новостей и концертов.';
	@override String get deinterlaceFilm => 'Фильм';
	@override String get deinterlaceFilmDescription => 'Восстановите исходные кадры фильмов и анимации, записанные по телесину со скоростью 29,97 кадров в секунду, что является обычным явлением на DVD-дисках NTSC. Видео снято для ТВ заикается. В прямом эфире используется видео';
	@override String get requireProfileSelectionOnOpen => 'Запрашивать профиль при запуске';
	@override String get requireProfileSelectionOnOpenDescription => 'Показывать выбор профиля при каждом открытии приложения';
	@override String get forceTvMode => 'Принудительный режим ТВ';
	@override String get forceTvModeKeepTitle => 'Сохранить макет телевизора?';
	@override String forceTvModeKeepBody({required Object seconds}) => 'Раскладка телевизора рассчитана на пульты дистанционного управления. Возврат к нормальному макету в ${seconds} s.';
	@override String get forceTvModeKeepConfirm => 'Сохранить макет телевизора';
	@override String get forceTvModeReverted => 'Расположение телевизора возвращено';
	@override String get forceTvModeDescription => 'Принудительно включить ТВ-интерфейс. Для устройств без автоопределения. Требуется перезапуск.';
	@override String get startInFullscreen => 'Запускать в полноэкранном режиме';
	@override String get startInFullscreenDescription => 'Открывать Luroka в полноэкранном режиме при запуске';
	@override String get exitFullscreenOnPlayerClose => 'Выходить из полноэкранного режима при закрытии плеера';
	@override String get exitFullscreenOnPlayerCloseDescription => 'Автоматически выходить из полноэкранного режима при закрытии видеоплеера';
	@override String get autoHidePerformanceOverlay => 'Автоскрытие оверлея производительности';
	@override String get autoHidePerformanceOverlayDescription => 'Скрывать оверлей производительности вместе с элементами управления воспроизведением';
	@override String get showNavBarLabels => 'Показывать подписи панели навигации';
	@override String get showNavBarLabelsDescription => 'Отображать текстовые подписи под иконками панели навигации';
	@override String get startupSection => 'Начальный раздел';
	@override String get showExploreTab => 'Показывать вкладку «Обзор»';
	@override String get showExploreTabDescription => 'Показывать вкладку «Обзор» с контентом из Plex Discover и подключённых трекеров';
	@override String get liveTvDefaultFavorites => 'Избранные каналы по умолчанию';
	@override String get liveTvDefaultFavoritesDescription => 'Показывать только избранные каналы при открытии ТВ';
	@override String get general => 'Основные';
	@override String get generalDescription => 'Язык, запуск и поведение окна';
	@override String get languageAndRegion => 'Язык и регион';
	@override String get startup => 'Запуск';
	@override String get display => 'Экран';
	@override String get libraryAndCards => 'Библиотека и карточки';
	@override String get homeScreen => 'Главный экран';
	@override String get navigation => 'Навигация';
	@override String get window => 'Окно';
	@override String get liveTv => 'Прямой эфир';
	@override String get player => 'Плеер';
	@override String get videoAndDisplay => 'Видео и экран';
	@override String get audio => 'Аудио';
	@override String get quality => 'Качество';
	@override String get subtitles => 'Субтитры';
	@override String get seekAndTiming => 'Перемотка и время';
	@override String get behavior => 'Поведение';
	@override String get gestures => 'Жесты';
	@override String get gestureBrightnessSwipe => 'Свайп для яркости';
	@override String get gestureBrightnessSwipeDescription => 'Проведите вверх или вниз по левому краю, чтобы изменить яркость';
	@override String get gestureVolumeSwipe => 'Свайп для громкости';
	@override String get gestureVolumeSwipeDescription => 'Проведите вверх или вниз по правому краю, чтобы изменить громкость';
	@override String get gesturePinchToZoom => 'Щипок для масштабирования';
	@override String get gesturePinchToZoomDescription => 'Сведите или разведите пальцы на видео, чтобы изменить масштаб';
	@override String get rememberBrightnessLevel => 'Запоминать уровень яркости';
	@override String get rememberBrightnessLevelDescription => 'Начинать воспроизведение с яркостью, установленной последним свайпом';
	@override String get controls => 'Элементы управления';
	@override String get rememberPlayerChanges => 'Запоминать изменения плеера';
	@override String get rememberPlayerChangesDescription => 'Где сохраняется и откуда повторно применяется изменение, сделанное во время воспроизведения';
	@override String get scopePlaybackSpeed => 'Скорость воспроизведения';
	@override String get scopeShaderPreset => 'Предустановка шейдера';
	@override String get scopeAspectRatio => 'Соотношение сторон';
	@override String get scopeSyncOffsets => 'Синхронизация аудио и субтитров';
	@override String get playerScopeOff => 'Не сохранять';
	@override String get playerScopeGlobal => 'Везде';
	@override String get playerScopeLibrary => 'Для библиотеки';
	@override String get playerScopeTitle => 'Для сериала или фильма';
	@override String get exportDialogTitle => 'Экспорт настроек Luroka';
	@override String get velvetHourTheme => 'Бархатный час';
}

// Path: themeEditor
class _Translations$themeEditor$ru extends Translations$themeEditor$en {
	_Translations$themeEditor$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get builtIn => 'Встроенный';
	@override String get presets => 'Пресеты';
	@override String get custom => 'Пользовательский';
	@override String get customEmpty => 'Еще не создан';
	@override String get editCustom => 'Редактировать пользовательскую тему';
	@override String get editCustomDescription => 'Каждый цвет выбирайте сами';
	@override String get locked => 'Разблокировать с помощью сторонника';
	@override String get savedLocked => 'Сохранено — разблокируется с помощью сторонника.';
	@override String get title => 'Пользовательская тема';
	@override String get startFrom => 'Начать с';
	@override String get startFromDescription => 'Скопируйте все цвета из другой темы';
	@override String get colors => 'Цвета';
	@override String get preview => 'Предварительный просмотр';
	@override late final _Translations$themeEditor$slots$ru slots = _Translations$themeEditor$slots$ru._(_root);
	@override String get opacity => 'Непрозрачность';
	@override String get hexHint => '#RRGGBB или #AARRGGBB';
	@override String get fromOtherThemes => 'Из других тем';
	@override String swatchLabel({required Object theme, required Object color}) => '${theme} ${color}';
	@override late final _Translations$themeEditor$contrast$ru contrast = _Translations$themeEditor$contrast$ru._(_root);
	@override String lowContrast({required Object pair, required Object ratio, required Object minimum}) => '${pair}: ${ratio}:1, ниже рекомендованного ${minimum}:1.';
	@override String get discardTitle => 'Отменить изменения?';
	@override String get discardMessage => 'Несохраненные изменения цвета будут потеряны.';
	@override String get discard => 'Отбросить';
	@override String previewCardTitle({required Object number}) => 'Эпизод ${number}';
	@override String previewCardSubtitle({required Object minutes}) => '${minutes} осталось мин.';
	@override String get previewSwitch => 'Автозапуск';
	@override String get previewMutedText => 'Второстепенный текст читается так';
}

// Path: seriesBrowser
class _Translations$seriesBrowser$ru extends Translations$seriesBrowser$en {
	_Translations$seriesBrowser$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get oneEpisode => '1 серия';
	@override String watchedCount({required Object count}) => '${count} смотрел';
	@override String episodeCount({required Object count}) => '${count} эпизоды';
	@override String episodesFor({required Object season}) => '${season} · Эпизоды';
	@override String get enterHint => 'Выберите: открытый сезон · ↓: серии';
}

// Path: titlePage
class _Translations$titlePage$ru extends Translations$titlePage$en {
	_Translations$titlePage$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get genre => 'Жанр';
	@override String remaining({required Object time}) => 'Осталось ${time}';
	@override String continueEpisode({required Object season, required Object episode}) => 'Продолжить S${season} E${episode}';
	@override String get watchlist => 'Список наблюдения';
	@override String get more => 'Подробнее';
}

// Path: tvMenus
class _Translations$tvMenus$ru extends Translations$tvMenus$en {
	_Translations$tvMenus$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get appearanceDescription => 'Тема, поля экрана и постеры';
}

// Path: lurokaPlayer
class _Translations$lurokaPlayer$ru extends Translations$lurokaPlayer$en {
	_Translations$lurokaPlayer$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Настройки плеера';
	@override String get watch => 'Смотреть';
	@override String get watchDescription => 'Задайте темп, успокойтесь и решите, что будет дальше.';
	@override String get picture => 'Настройки изображения';
	@override String get pictureDescription => 'Zoom, HDR и обработка видео';
	@override String get sound => 'Аудио и субтитры';
	@override String get audioSettings => 'Настройки звука';
	@override String get soundDescription => 'Тайминг, громкость и аудиовыход';
	@override String get chooseTracks => 'Выбор языков и дорожек субтитров';
	@override String get tools => 'Расширенный';
	@override String get toolsDescription => 'Информация о воспроизведении и диагностика';
	@override String get preferences => 'Настройки воспроизведения';
	@override String get preferencesDescription => 'Ваш кинотеатр, ваши настройки по умолчанию. Начните со звука и титров, затем настройте потоковую передачу и экран.';
	@override String get streamPreferences => 'Качество потоковой передачи';
	@override String get displayPreferences => 'Дисплей';
	@override String get enginePreferences => 'Расширенные возможности проигрывателя';
	@override String get seekPreferences => 'Ищу';
	@override String get watchPreferences => 'Автозапуск и пропуск';
	@override String get rememberPreferences => 'Помните предпочтения';
}

// Path: lurokaSettings
class _Translations$lurokaSettings$ru extends Translations$lurokaSettings$en {
	_Translations$lurokaSettings$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get quickSetup => 'Быстрая настройка';
	@override String get quickSetupDescription => 'Начните с самого необходимого: более плавного просмотра ТВ, удобного расположения экрана, макета «Домой» и настроек воспроизведения.';
	@override String get experience => 'Ваш опыт';
	@override String get experienceDescription => 'Сделайте Luroka удобным: внешний вид, языки, воспроизведение, библиотеки и время работы на экране.';
	@override String get remoteHint => '↑ ↓ Просмотр категорий · → / Выбрать Открыть параметры · ← Вернуться к категориям';
}

// Path: playerChrome
class _Translations$playerChrome$ru extends Translations$playerChrome$en {
	_Translations$playerChrome$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get browse => 'Главы и очередь';
	@override String get backToPlayback => 'Вернуться к воспроизведению';
	@override String get nowPlaying => 'СЕЙЧАС ИГРАЕТ';
	@override String get options => 'ОПЦИИ ИГРОКА';
}

// Path: tvLayout
class _Translations$tvLayout$ru extends Translations$tvLayout$en {
	_Translations$tvLayout$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get screenMargins => 'Поля экрана телевизора';
	@override String get screenMarginsDescription => 'Уменьшите края приложения, если ваш телевизор обрезает часть изображения.';
	@override String get screenMarginsDefault => '0% (по умолчанию)';
}

// Path: studios
class _Translations$studios$ru extends Translations$studios$en {
	_Translations$studios$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get checkingCopies => 'Проверка других библиотек... Выбирайте известную копию в любой момент.';
	@override String get incompleteCopies => 'Некоторые библиотеки не удалось проверить. Выберите известную копию или отмените и повторите попытку.';
	@override String get partialFavorites => 'Некоторые избранные не удалось загрузить. Выберите «Обновить», чтобы повторить попытку.';
	@override String get copyLookupFailedTitle => 'Не удалось проверить все копии';
	@override String get copyLookupFailedMessage => 'Некоторые библиотеки не ответили. Вы можете открыть одну из уже найденных копий или отменить и повторить попытку.';
	@override String get openKnownCopies => 'Показать известные копии';
	@override String get browseAll => 'Просмотреть все';
	@override String titleCount({required Object count}) => '${count} заголовки';
	@override String get topRated => 'Лучшие по рейтингу';
	@override String get mostWatched => 'Самые просматриваемые в вашей библиотеке';
	@override String get collection => 'СТУДИЙСКАЯ КОЛЛЕКЦИЯ';
	@override String loadedTitles({required Object count}) => '${count} заголовки загружены';
	@override String get sort => 'Сортировать названия';
	@override String get sortTitleAscending => 'Название А–Я';
	@override String get sortTitleDescending => 'Название Z – A';
	@override String get sortNewest => 'Новейший выпуск';
	@override String get sortOldest => 'Самый старый выпуск';
	@override String get sortAdded => 'Недавно добавлено';
	@override String get sortEpisodeAdded => 'Недавно добавленный эпизод';
	@override String get sortRating => 'Самый высокий рейтинг';
	@override String get title => 'Просмотр по студии';
	@override String get all => 'Все';
	@override String get movies => 'Фильмы';
	@override String get shows => 'ТВ-шоу';
	@override String get loadMore => 'Загрузить больше названий';
	@override String get empty => 'В видимых в данный момент библиотеках нет соответствующих заголовков.';
	@override String get retry => 'Не удалось загрузить больше названий. Выберите, чтобы повторить попытку.';
	@override String get description => 'Находите фильмы и сериалы этой студии в своих библиотеках.';
}

// Path: dashboard
class _Translations$dashboard$ru extends Translations$dashboard$en {
	_Translations$dashboard$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get previousFeature => 'Предыдущее избранное название';
	@override String get nextFeature => 'Следующий избранный заголовок';
	@override String get cinemaHome => 'ГЛАВНАЯ';
	@override String get episodeFallback => 'ТВ-эпизод';
	@override String timeLeft({required Object minutes}) => 'Осталось ${minutes} мин.';
	@override String timeLeftHours({required Object hours, required Object minutes}) => 'Осталось ${hours} ч ${minutes} мин.';
	@override String get spoilerHidden => 'Подробности эпизода скрыты вашим спойлером.';
	@override String get synopsisUnavailable => 'Откройте «Подробности», чтобы узнать больше об этом заголовке.';
	@override String get yourSpace => 'ВАШЕ ПРОСТРАНСТВО';
	@override String get title => 'Ваше кино.';
	@override String get subtitle => 'Продолжите просмотр или найдите следующую историю.';
	@override String get featured => 'ВЫБОР LUROKA';
	@override String get jumpBackIn => 'Продолжить просмотр';
	@override String episodeLabel({required Object season, required Object episode}) => 'S${season} · E${episode}';
	@override String get anotherPick => 'Еще один выбор';
	@override String get exploreSeries => 'Изучите серию';
	@override String get showFeatured => 'Сфокусированные детали заголовка';
	@override String get showFeaturedDescription => 'Показать обложку, краткий обзор и информацию об эпизоде для выделенной карточки.';
}

// Path: lurokaCatalog
class _Translations$lurokaCatalog$ru extends Translations$lurokaCatalog$en {
	_Translations$lurokaCatalog$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get aboutPerson => 'В ЦЕНТРЕ ВНИМАНИЯ';
	@override String get biographyUnavailable => 'Биография недоступна на этом сервере.';
	@override String get filmography => 'Фильмы и сериалы в ваших библиотеках';
	@override String get recommended => 'Рекомендации';
	@override String get browse => 'Все названия';
	@override String get collections => 'Коллекции';
	@override String get browseHint => 'Изучите свой каталог. Формируйте выбор с помощью фильтров и сортировки.';
	@override String get recommendedHint => 'Найдите свою следующую историю';
	@override String get details => 'За историей';
}

// Path: referenceDetails
class _Translations$referenceDetails$ru extends Translations$referenceDetails$en {
	_Translations$referenceDetails$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get oneEpisodeLeft => 'остался 1 эпизод';
	@override String get playAll => 'Воспроизвести все';
	@override String get present => 'Настоящее время';
	@override String get continuing => 'Продолжение';
	@override String get upNext => 'Далее';
	@override String episodesLeft({required Object count}) => '${count} осталось серий';
}

// Path: lurokaThemes
class _Translations$lurokaThemes$ru extends Translations$lurokaThemes$en {
	_Translations$lurokaThemes$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Кинопалитры Luroka';
	@override String get coral => 'Коралл · темно-синий и закат';
	@override String get ocean => 'Океан · темно-синий и лед';
	@override String get jade => 'Нефрит · вечнозеленый и мятный';
	@override String get amethyst => 'Аметист · полуночно-фиолетовый';
	@override String get darkThemes => 'Темные темы кино';
	@override String get lightThemes => 'Легкие кинематографические темы';
	@override String get moreThemes => 'Больше тем';
	@override String get moreThemesDescription => 'Просмотрите дополнительные палитры и пользовательские цвета';
	@override String get obsidian => 'Обсидиан · чистый черный и шампанское';
	@override String get nocturne => 'Ноктюрн · уголь и шампанское';
	@override String get burgundy => 'Бургундия · бархатное вино и роза';
	@override String get slate => 'Сланец · графит и барвинок';
	@override String get espresso => 'Эспрессо · какао и карамель';
	@override String get pearl => 'Жемчуг · фарфор и сапфир';
	@override String get linen => 'Лен · теплый цвет слоновой кости и терракоты';
	@override String get sunrise => 'Восход · персик и коралл';
	@override String get coastal => 'Прибрежный · туман и бирюзовый океан';
	@override String get latte => 'Латте · сливки и карамель';
	@override String get sage => 'Шалфей · мягкий зеленый и эвкалипт';
	@override String get lavender => 'Лаванда · сирень и темно-фиолетовый';
}

// Path: customPerformance
class _Translations$customPerformance$ru extends Translations$customPerformance$en {
	_Translations$customPerformance$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Производительность и эффекты';
	@override String get fireStickMode => 'Режим энергосбережения устройства';
	@override String get description => 'Используйте уменьшенные эффекты, статические фоны, изображения с разрешением 720p и кэш изображений размером 40 МБ. Если этот параметр включен, он переопределяет визуальные эффекты; его отключение восстанавливает настройки визуальных эффектов.';
	@override String get detailsTitle => 'Детали производительности';
	@override String get details => 'Активные эффекты, ограничение кэша изображений и измерения производительности просмотра';
	@override String get effectsTier => 'Уровень активных эффектов';
	@override String get imageCache => 'Ограничение кэша изображений';
	@override String get measurement => 'Просмотр измерений';
	@override String get measureInstructions => 'Запустите 20-секундный образец, вернитесь на главный экран и просмотрите содержимое с помощью пульта дистанционного управления. Вернитесь сюда, чтобы увидеть результаты. Для сравнения повторите те же действия с включенным и выключенным режимом. Это измеряет работу пользовательского интерфейса Flutter, а не производительность видеодекодера.';
	@override String get startSample => 'Запустить 20-секундный образец';
	@override String get stopSample => 'Завершить образец сейчас';
	@override String get sampling => 'Выборка — вернитесь на главную и просмотрите. Результаты будут храниться здесь.';
	@override String get frames => 'Выборка кадров';
	@override String get slowFrames => 'Рамки сверх бюджета';
	@override String get buildP95 => 'Время сборки пользовательского интерфейса (95-й процентиль)';
	@override String get rasterP95 => 'Время растра (95-й процентиль)';
	@override String get frameBudget => 'Бюджет на кадр';
	@override String get processMemory => 'Память процесса приложения в конце выборки';
	@override String get noFrames => 'Отрендеренные кадры не были захвачены. Запустите другой образец и просмотрите приложение.';
}

// Path: homeLayout
class _Translations$homeLayout$ru extends Translations$homeLayout$en {
	_Translations$homeLayout$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Персонализируйте дом';
	@override String get description => 'Выберите порядок строк и видимость для этого профиля. Выберите строку, чтобы переместить или скрыть ее.';
	@override String get rows => 'Домашние строки';
	@override String get visible => 'Видимый';
	@override String get hidden => 'Скрытый';
	@override String get showRow => 'Показать строку';
	@override String get hideRow => 'Скрыть строку';
	@override String get moveUp => 'Вверх';
	@override String get moveDown => 'Двигаться вниз';
	@override String get pinnedCollections => 'Закрепленные коллекции';
	@override String get pinInstructions => 'Откройте меню коллекции и выберите Pin на главную. Выберите здесь закрепленную коллекцию, чтобы удалить ее ярлык.';
	@override String get pinCollection => 'Pin домой';
	@override String get unpinCollection => 'Открепить от дома';
	@override String get reset => 'Восстановить строки по умолчанию';
	@override String get resetDescription => 'Восстановить исходный порядок строк и показать все строки этого профиля? Ваши закрепленные коллекции будут сохранены.';
	@override String get saveFailed => 'Не удалось сохранить план дома. Пожалуйста, попробуйте еще раз.';
	@override String get emptyHint => 'Строки могут быть скрыты. Откройте «Персонализация главного экрана», чтобы показать их снова.';
}

// Path: screenTime
class _Translations$screenTime$ru extends Translations$screenTime$en {
	_Translations$screenTime$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Экранное время';
	@override String get description => 'Посмотрите время, потраченное на просмотр видео в этом профиле';
	@override String get today => 'Сегодня';
	@override String get thisWeek => 'На этой неделе';
	@override String get thisMonth => 'В этом месяце';
	@override String get lessThanMinute => '< 1 мин.';
	@override String minutes({required Object count}) => '${count} мин.';
	@override String hours({required Object count}) => '${count} час';
	@override String hoursMinutes({required Object hours, required Object minutes}) => '${hours} час ${minutes} мин';
}

// Path: activityStats
class _Translations$activityStats$ru extends Translations$activityStats$en {
	_Translations$activityStats$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Просмотр статистики';
	@override String get period => 'Период';
	@override String get last7Days => '7 дней';
	@override String get last30Days => '30 дней';
	@override String get last90Days => '90 дней';
	@override String get thisYear => 'Год';
	@override String get allTime => 'Все';
	@override String get heroAllTime => 'Все время';
	@override String get heroDailyAverage => 'Среднесуточное значение';
	@override String get consistency => 'Консистенция';
	@override String get currentStreak => 'Текущая серия';
	@override String dayCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n,
		one: '${n} день',
		few: '${n} дня',
		many: '${n} дней',
		other: '${n} дней',
	);
	@override String get longestStreak => 'Самая длинная серия';
	@override String get bestDay => 'Лучший день';
	@override String get bestWeek => 'Лучшая неделя';
	@override String get trendTitle => 'Время просмотра';
	@override String get trendToday => 'Сегодня';
	@override String gapDetail({required Object stat, required Object range}) => '${stat} на ${range}';
	@override String get weekdayTitle => 'По будням';
	@override String get hoursTitle => 'По времени суток';
	@override String get amLabel => 'AM';
	@override String get pmLabel => 'ПМ';
	@override String get kindsTitle => 'По категориям';
	@override String get kindMovie => 'Фильмы';
	@override String get kindTv => 'ТВ';
	@override String get kindLiveTv => 'Прямой эфир';
	@override String get kindMusic => 'Музыка';
	@override String get kindOther => 'Другое';
	@override String get topTitlesTitle => 'Самые просматриваемые';
	@override String get sessionsTitle => 'Последние сессии';
	@override String get showMore => 'Показать больше';
	@override String get sessionNoTitle => 'Неопознанное воспроизведение';
	@override String get emptyTitle => 'Здесь пока ничего';
	@override String get emptyBody => 'Посмотрите что-нибудь, и ваша статистика будет накапливаться здесь.';
	@override String get noDataInPeriod => 'За этот период не было записано ни одного воспроизведения.';
}

// Path: search
class _Translations$search$ru extends Translations$search$en {
	_Translations$search$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get hint => 'Поиск фильмов, сериалов, музыки...';
	@override String get tryDifferentTerm => 'Попробуйте другой запрос';
	@override String get searchYourMedia => 'Поиск в вашей медиатеке';
	@override String get enterTitleActorOrKeyword => 'Введите название, актёра или ключевое слово';
	@override String get people => 'Люди';
	@override String get recentSearches => 'Недавние поиски';
	@override String get clearHistory => 'Очистить историю';
}

// Path: hotkeys
class _Translations$hotkeys$ru extends Translations$hotkeys$en {
	_Translations$hotkeys$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String setShortcutFor({required Object actionName}) => 'Назначить клавишу для ${actionName}';
	@override String get clearShortcut => 'Очистить клавишу';
	@override String get noShortcutSet => 'Сочетание не задано';
	@override String get currentShortcut => 'Текущее сочетание:';
	@override String get pressToRecord => 'Выберите, чтобы записать сочетание клавиш';
	@override String get recordingShortcut => 'Нажмите сочетание клавиш сейчас';
	@override late final _Translations$hotkeys$actions$ru actions = _Translations$hotkeys$actions$ru._(_root);
}

// Path: fileInfo
class _Translations$fileInfo$ru extends Translations$fileInfo$en {
	_Translations$fileInfo$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Информация о файле';
	@override String get overview => 'Обзор';
	@override String get video => 'Видео';
	@override String get audio => 'Аудио';
	@override String get subtitles => 'Субтитры';
	@override String get images => 'Встроенные изображения';
	@override String get dataStreams => 'Потоки данных';
	@override String get lyrics => 'Текст песни';
	@override String get file => 'Файл';
	@override String get attachments => 'Вложения';
	@override String get delivery => 'Доставка';
	@override String versionCounter({required Object index, required Object count}) => 'Версия ${index} из ${count}';
	@override String fileCounter({required Object index, required Object count}) => 'Файл ${index} из ${count}';
	@override String get noStreams => 'Сервер не сообщил о потоках для этого файла.';
	@override String get copyPath => 'Копировать путь';
	@override String get pathCopied => 'Путь к файлу скопирован';
	@override String get codec => 'Кодек';
	@override String get codecTag => 'Тег кодека';
	@override String get resolution => 'Разрешение';
	@override String get codedResolution => 'Кодированное разрешение';
	@override String get bitrate => 'Битрейт';
	@override String get frameRate => 'Частота кадров';
	@override String get rotation => 'Поворот';
	@override String get comment => 'Комментарий';
	@override String get audioDescription => 'Аудиоописание';
	@override String get headerCompression => 'Сжатие заголовков';
	@override String get sidecarFile => 'Файл-спутник';
	@override String get transportTimestamp => 'Метка времени транспорта';
	@override String get displayOffset => 'Смещение отображения';
	@override String get previewFailureCode => 'Код ошибки превью';
	@override String get previewRetries => 'Повторные попытки превью';
	@override String get aspectRatio => 'Соотношение сторон';
	@override String get pixelAspectRatio => 'Попиксельное соотношение сторон';
	@override String get profile => 'Профиль';
	@override String get level => 'Уровень';
	@override String get bitDepth => 'Глубина цвета';
	@override String get pixelFormat => 'Формат пикселей';
	@override String get colorSpace => 'Цветовое пространство';
	@override String get colorRange => 'Цветовой диапазон';
	@override String get colorPrimaries => 'Основные цвета';
	@override String get colorTransfer => 'Передача цвета';
	@override String get chromaSubsampling => 'Субдискретизация цветности';
	@override String get chromaLocation => 'Расположение цветности';
	@override String get scanType => 'Тип развёртки';
	@override String get interlaced => 'Чересстрочный';
	@override String get anamorphic => 'Анаморфный';
	@override String get referenceFrames => 'Опорные кадры';
	@override String get dynamicRange => 'Динамический диапазон';
	@override String get dolbyVision => 'Dolby Vision';
	@override String get dolbyVisionLevel => 'Уровень Dolby Vision';
	@override String get dolbyVisionVersion => 'Версия Dolby Vision';
	@override String get dolbyVisionLayers => 'Слои Dolby Vision';
	@override String get baseLayerCompatibility => 'Совместимость базового слоя';
	@override String get avcBitstream => 'Битовый поток AVC';
	@override String get nalLengthSize => 'Размер длины NAL';
	@override String get scalingMatrix => 'Пользовательская матрица масштабирования';
	@override String get streamIdentifier => 'Идентификатор потока';
	@override String get streamIndex => 'Индекс потока';
	@override String get streamId => 'ID потока';
	@override String get language => 'Язык';
	@override String get languageCode => 'Код языка';
	@override String get streamTitle => 'Название дорожки';
	@override String get channels => 'Каналы';
	@override String get sampleRate => 'Частота дискретизации';
	@override String get spatialAudio => 'Пространственное аудио';
	@override String get textBased => 'Текстовый';
	@override String get subtitleFormat => 'Формат файла-спутника';
	@override String get provider => 'Провайдер';
	@override String get matchScore => 'Оценка совпадения';
	@override String get externalDelivery => 'Может передаваться отдельно';
	@override String get sidecarPath => 'Путь к файлу-спутнику';
	@override String get sourceStream => 'Скопировано из';
	@override String get temporary => 'Временный';
	@override String get timeBase => 'Временная база';
	@override String get overallBitrate => 'Общий битрейт';
	@override String get path => 'Путь';
	@override String get fileName => 'Имя файла';
	@override String get size => 'Размер';
	@override String get totalSize => 'Общий размер';
	@override String get container => 'Контейнер';
	@override String get duration => 'Длительность';
	@override String get previewThumbnails => 'Миниатюры превью';
	@override String get previewIndex => 'Индекс превью';
	@override String get packetLength => 'Длина пакета';
	@override String get filePresent => 'Файл присутствует';
	@override String get fileReadable => 'Доступен для чтения сервером';
	@override String get streamPath => 'Путь потока';
	@override String get optimizedForStreaming => 'Оптимизировано для потоковой передачи';
	@override String get has64bitOffsets => '64-битные смещения';
	@override String get protocol => 'Протокол';
	@override String get mediaType => 'Тип медиа';
	@override String get sourceKind => 'Тип источника';
	@override String get optimizedVersion => 'Оптимизированная версия';
	@override String get optimizationTarget => 'Цель оптимизации';
	@override String get deletedAt => 'Удалено';
	@override String get remoteSource => 'Удалённый источник';
	@override String get infiniteStream => 'Бесконечный поток';
	@override String get directPlay => 'Прямое воспроизведение';
	@override String get directStream => 'Прямой поток';
	@override String get transcoding => 'Транскодирование';
	@override String get etag => 'ETag';
	@override String get versionId => 'ID версии';
	@override String get fileId => 'ID файла';
	@override String get defaultAudioTrack => 'Аудиодорожка по умолчанию';
	@override String get defaultSubtitleTrack => 'Дорожка субтитров по умолчанию';
	@override String get subtitlesOff => 'Выкл.';
	@override String get flagDefault => 'По умолчанию';
	@override String get flagForced => 'Принудительная';
	@override String get flagSelected => 'Выбрана';
	@override String get flagExternal => 'Внешняя';
	@override String get flagHearingImpaired => 'Для слабослышащих';
	@override String get flagDub => 'Дубляж';
	@override String get flagOriginal => 'Оригинал';
	@override String get channelsMono => 'Моно';
	@override String dolbyVisionProfile({required Object profile}) => 'Профиль ${profile}';
}

// Path: mediaMenu
class _Translations$mediaMenu$ru extends Translations$mediaMenu$en {
	_Translations$mediaMenu$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get markAsWatched => 'Отметить как просмотренное';
	@override String get markAsUnwatched => 'Отметить как непросмотренное';
	@override String get clearProgress => 'Очевидный прогресс';
	@override String get removeFromContinueWatching => 'Удалить из «Продолжить просмотр»';
	@override String get viewDetails => 'Показать сведения';
	@override String get goToSeries => 'Перейти к сериалу';
	@override String get shufflePlay => 'Случайное воспроизведение';
	@override String get shuffleNotAvailableOffline => 'Перемешивание недоступно офлайн';
	@override String get fileInfo => 'Информация о файле';
	@override String get deleteEpisodeFromServer => 'Удалить эпизод с сервера';
	@override String get deleteSeasonFromServer => 'Удалить сезон с сервера';
	@override String get deleteShowFromServer => 'Удалить сериал с сервера';
	@override String get deleteMovieFromServer => 'Удалить фильм с сервера';
	@override String get deleteEpisodeTitle => 'Удалить этот эпизод?';
	@override String get deleteSeasonTitle => 'Удалить этот сезон?';
	@override String get deleteShowTitle => 'Удалить этот сериал?';
	@override String get deleteMovieTitle => 'Удалить этот фильм?';
	@override String get deleteEpisodeConfirm => 'Удалить эпизод';
	@override String get deleteSeasonConfirm => 'Удалить сезон';
	@override String get deleteShowConfirm => 'Удалить сериал';
	@override String get deleteMovieConfirm => 'Удалить фильм';
	@override String get deleteAnyway => 'Всё равно удалить';
	@override String confirmDeleteTarget({required Object title}) => 'Навсегда удалить ${title} с вашего сервера?';
	@override String get deleteMultipleWarning => 'Это включает все эпизоды и их файлы.';
	@override String deleteEpisodeCountWarning({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n,
		one: 'Это удалит содержащийся в нём ${n} эпизод и его файл.',
		few: 'Это удалит содержащиеся в нём ${n} эпизода и их файлы.',
		many: 'Это удалит содержащиеся в нём ${n} эпизодов и их файлы.',
		other: 'Это удалит содержащиеся в нём ${n} эпизодов и их файлы.',
	);
	@override String deleteMultiPartWarning({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n,
		one: 'Этот элемент хранится как ${n} файл, который будет удалён.',
		few: 'Этот элемент хранится в ${n} файлах, и все они будут удалены.',
		many: 'Этот элемент хранится в ${n} файлах, и все они будут удалены.',
		other: 'Этот элемент хранится в ${n} файлах, и все они будут удалены.',
	);
	@override String deleteSharedFileHeading({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n,
		one: 'В этом же файле хранится ещё ${n} эпизод, и он тоже будет удалён:',
		few: 'В этом же файле хранятся ещё ${n} эпизода, и они тоже будут удалены:',
		many: 'В этом же файле хранятся ещё ${n} эпизодов, и они тоже будут удалены:',
		other: 'В этом же файле хранятся ещё ${n} эпизодов, и они тоже будут удалены:',
	);
	@override String get deleteScopeUnverifiedProbeFailed => 'Luroka не смог проверить, какие файлы будут удалены, поэтому может быть удалено больше, чем указанный выше элемент. Отмените и попробуйте снова либо удалите в любом случае.';
	@override String get deleteScopeUnverifiedNoFileInfo => 'Ваш сервер не предоставил сведения о файлах для этого элемента, поэтому Luroka не может проверить, какие файлы будут удалены. Может быть удалено больше, чем указанный выше элемент.';
	@override String get mediaDeletedSuccessfully => 'Медиаэлемент успешно удалён';
	@override String get mediaFailedToDelete => 'Не удалось удалить медиаэлемент';
	@override String get rate => 'Оценить';
	@override String get playFromBeginning => 'Воспроизвести сначала';
	@override String get playVersion => 'Воспроизвести версию...';
}

// Path: rateSheet
class _Translations$rateSheet$ru extends Translations$rateSheet$en {
	_Translations$rateSheet$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Оценить';
	@override String get server => 'Сервер';
	@override String get favorite => 'Добавить в избранное';
	@override String get favorited => 'Добавлено в избранное';
	@override String get saved => 'Сохранено';
	@override String get notAvailable => 'Совпадений не найдено';
	@override String get noConnectedServices => 'Подключите сервис в настройках, чтобы выставлять оценки в нём.';
}

// Path: accessibility
class _Translations$accessibility$ru extends Translations$accessibility$en {
	_Translations$accessibility$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String mediaCardMovie({required Object title}) => '${title}, фильм';
	@override String mediaCardShow({required Object title}) => '${title}, сериал';
	@override String mediaCardEpisode({required Object title, required Object episodeInfo}) => '${title}, ${episodeInfo}';
	@override String mediaCardSeason({required Object title, required Object seasonInfo}) => '${title}, ${seasonInfo}';
	@override String get mediaCardWatched => 'просмотрено';
	@override String mediaCardPartiallyWatched({required Object percent}) => 'просмотрено ${percent} процентов';
	@override String get mediaCardUnwatched => 'не просмотрено';
	@override String get tapToPlay => 'Нажмите для воспроизведения';
	@override String get decrease => 'Уменьшить';
	@override String get increase => 'Увеличить';
	@override String decreaseValue({required Object label}) => 'Уменьшить ${label}';
	@override String increaseValue({required Object label}) => 'Увеличить ${label}';
	@override String get hue => 'Цветовой тон';
	@override String get saturation => 'Насыщенность';
	@override String get brightness => 'Яркость';
	@override String get hexColor => 'Шестнадцатеричный цвет';
	@override String get expandText => 'Развернуть текст';
	@override String get collapseText => 'Свернуть текст';
	@override String get alphabetNavigation => 'Навигация по алфавиту';
	@override String get alphabetScrollHint => 'Проведите вверх или вниз для перехода по буквам';
	@override String rowColumnPosition({required Object row, required Object rowCount, required Object column, required Object columnCount}) => 'Строка ${row} из ${rowCount}, столбец ${column} из ${columnCount}';
	@override String rowPosition({required Object row, required Object rowCount}) => 'Строка ${row} из ${rowCount}';
	@override String get autoScrollPlay => 'Запустить автопрокрутку';
	@override String get autoScrollPause => 'Приостановить автопрокрутку';
	@override String get hueShort => 'H';
	@override String get saturationShort => 'S';
	@override String get valueShort => 'V';
}

// Path: tooltips
class _Translations$tooltips$ru extends Translations$tooltips$en {
	_Translations$tooltips$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get shufflePlay => 'Случайное воспроизведение';
	@override String get playTrailer => 'Воспроизвести трейлер';
	@override String get markAsWatched => 'Отметить как просмотренное';
	@override String get markAsUnwatched => 'Отметить как непросмотренное';
}

// Path: audioTracks
class _Translations$audioTracks$ru extends Translations$audioTracks$en {
	_Translations$audioTracks$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String track({required Object n}) => 'Аудиодорожка ${n}';
}

// Path: videoControls
class _Translations$videoControls$ru extends Translations$videoControls$en {
	_Translations$videoControls$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get audioLabel => 'Аудио';
	@override String get subtitlesLabel => 'Субтитры';
	@override String addTime({required Object amount, required Object unit}) => '+${amount}${unit}';
	@override String get letterbox => 'Вписать в экран';
	@override String get fillScreen => 'Заполнить экран';
	@override String get stretch => 'Растянуть';
	@override String get lockRotation => 'Заблокировать поворот';
	@override String get unlockRotation => 'Разблокировать поворот';
	@override String get timerActive => 'Таймер активен';
	@override String playbackWillPauseIn({required Object duration}) => 'Воспроизведение будет приостановлено через ${duration}';
	@override String get sleepTimerEndOfVideo => 'Конец текущего видео';
	@override String get sleepTimerStopAtHeader => 'Остановить на';
	@override String get sleepTimerDurationHeader => 'Таймер';
	@override String get playbackWillPauseAtEnd => 'Воспроизведение будет приостановлено в конце этого видео';
	@override String get stillWatching => 'Всё ещё смотрите?';
	@override String pausingIn({required Object seconds}) => 'Пауза через ${seconds}с';
	@override String get continueWatching => 'Продолжить';
	@override String get autoPlayNext => 'Автовоспроизведение следующего';
	@override String get playNext => 'Следующее';
	@override String get playButton => 'Воспроизвести';
	@override String get pauseButton => 'Пауза';
	@override String get playbackPaused => 'На паузе';
	@override String get playbackResumed => 'Воспроизведение';
	@override String get loadingVideo => 'Загрузка видео';
	@override String get showPlaybackControls => 'Показать элементы управления воспроизведением';
	@override String get hidePlaybackControls => 'Скрыть элементы управления воспроизведением';
	@override String seekBackwardButton({required Object seconds}) => 'Перемотать назад на ${seconds} с';
	@override String seekForwardButton({required Object seconds}) => 'Перемотать вперёд на ${seconds} с';
	@override String get previousButton => 'Предыдущий эпизод';
	@override String get nextButton => 'Следующий эпизод';
	@override String get previousChapterButton => 'Предыдущая глава';
	@override String get nextChapterButton => 'Следующая глава';
	@override String get muteButton => 'Без звука';
	@override String get unmuteButton => 'Включить звук';
	@override String get settingsButton => 'Настройки воспроизведения';
	@override String get infoButton => 'Информация';
	@override String get tracksButton => 'Аудио и субтитры';
	@override String get chaptersButton => 'Главы';
	@override String get versionQualityButton => 'Версия и качество';
	@override String get versionColumnHeader => 'Версия';
	@override String get qualityColumnHeader => 'Качество';
	@override String get qualityOriginal => 'Оригинал';
	@override String qualityPresetLabel({required Object resolution, required Object bitrate}) => '${resolution}p ${bitrate} Мбит/с';
	@override String get transcodeUnavailableFallback => 'Транскодирование недоступно — воспроизведение в оригинальном качестве';
	@override String get subtitleUnavailableFallback => 'Не удалось загрузить выбранные субтитры — воспроизведение продолжится без субтитров';
	@override String get pipButton => 'Режим «картинка в картинке»';
	@override String get aspectRatioButton => 'Соотношение сторон';
	@override String get ambientLighting => 'Фоновая подсветка';
	@override String get fullscreenButton => 'Полноэкранный режим';
	@override String get exitFullscreenButton => 'Выйти из полноэкранного режима';
	@override String get alwaysOnTopButton => 'Всегда поверх';
	@override String get rotationLockButton => 'Блокировка поворота';
	@override String get lockScreen => 'Заблокировать экран';
	@override String get screenLockButton => 'Блокировка экрана';
	@override String get longPressToUnlock => 'Удерживайте для разблокировки';
	@override String get timelineSlider => 'Временная шкала';
	@override String get volumeSlider => 'Уровень громкости';
	@override String endsAt({required Object time}) => 'Закончится в ${time}';
	@override String get pipActive => 'Воспроизводится в режиме «картинка в картинке»';
	@override String get pipFailed => 'Не удалось запустить режим «картинка в картинке»';
	@override String get screenshotSaved => 'Снимок экрана сохранён';
	@override String get screenshotFailed => 'Не удалось сделать скриншот';
	@override String zoomPercent({required Object percent}) => 'Масштаб ${percent}%';
	@override String volumePercent({required Object percent}) => 'Громкость ${percent}%';
	@override late final _Translations$videoControls$pipErrors$ru pipErrors = _Translations$videoControls$pipErrors$ru._(_root);
	@override String get chapters => 'Главы';
	@override String get noChaptersAvailable => 'Главы недоступны';
	@override String get queue => 'Очередь';
	@override String get noQueueItems => 'В очереди нет элементов';
	@override String get noAudioDevicesAvailable => 'Нет доступных аудиоустройств';
	@override String get searchSubtitles => 'Поиск субтитров';
	@override String get language => 'Язык';
	@override String get noSubtitlesFound => 'Субтитры не найдены';
	@override String get subtitleDownloaded => 'Субтитры загружены';
	@override String get subtitleDownloadedNotApplied => 'Субтитры загружены, но их не удалось выбрать';
	@override String get subtitleDownloadFailed => 'Не удалось загрузить субтитры';
	@override String get searchLanguages => 'Поиск языков...';
	@override String get skipIntro => 'Пропустить заставку';
	@override String get skipCredits => 'Пропустить титры';
	@override String get nextEpisode => 'Следующий эпизод';
	@override String subtitleTrack({required Object n}) => 'Дорожка ${n}';
	@override String subtitleFile({required Object name}) => 'Субтитры ${name}';
	@override String forcedTrack({required Object label}) => '${label} (принудительная)';
	@override String get osdSubtitlesOff => 'Субтитры: выкл.';
	@override String osdSubtitles({required Object track}) => 'Субтитры: ${track}';
	@override String osdAudio({required Object track}) => 'Аудио: ${track}';
}

// Path: messages
class _Translations$messages$ru extends Translations$messages$en {
	_Translations$messages$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get markedAsWatched => 'Отмечено как просмотренное';
	@override String get markedAsUnwatched => 'Отмечено как непросмотренное';
	@override String get markedAsWatchedOffline => 'Отмечено как просмотренное (синхронизируется при подключении)';
	@override String get markedAsUnwatchedOffline => 'Отмечено как непросмотренное (синхронизируется при подключении)';
	@override String autoRemovedWatchedDownload({required Object title}) => 'Автоудалено: ${title}';
	@override String autoRemovedWatchedDownloads({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n,
		one: 'Автоматически удалена ${n} просмотренная загрузка',
		few: 'Автоматически удалены ${n} просмотренные загрузки',
		many: 'Автоматически удалено ${n} просмотренных загрузок',
		other: 'Автоматически удалено ${n} просмотренной загрузки',
	);
	@override String get removedFromContinueWatching => 'Удалено из «Продолжить просмотр»';
	@override String errorLoading({required Object error}) => 'Ошибка: ${error}';
	@override String get searchPartialResults => 'Поиск по некоторым медиасерверам не удался. Показываем доступные результаты.';
	@override String get streamInterrupted => 'Поток прервался. Нажмите «Воспроизвести» или перемотайте, чтобы повторить попытку.';
	@override String get liveStreamInterrupted => 'Прямая трансляция прервалась. Нажмите «Воспроизвести», чтобы повторить попытку.';
	@override String get fileInfoNotAvailable => 'Информация о файле недоступна';
	@override String get playbackAuthenticationRequired => 'Чтобы воспроизвести этот материал, снова войдите на медиасервер.';
	@override String get playbackServerUnavailable => 'Медиасервер недоступен. Попробуйте позже.';
	@override String get playbackDataInvalid => 'Сервер вернул некорректные сведения для воспроизведения.';
	@override String get playbackCancelled => 'Воспроизведение отменено.';
	@override String get playbackFailed => 'Не удалось начать воспроизведение.';
	@override String playbackFailedDetail({required Object error}) => 'Не удалось начать воспроизведение: ${error}';
	@override String get audioOutputFailed => 'Аудиовыход перестал отвечать. Проверьте аудиоподключение телевизора или ресивера; если в других приложениях тоже нет звука, перезагрузите устройство.';
	@override String get mediaUnavailable => 'Этот контент больше недоступен.';
	@override String errorLoadingFileInfo({required Object error}) => 'Ошибка загрузки информации о файле: ${error}';
	@override String get errorLoadingSeries => 'Ошибка загрузки сериала';
	@override String get musicNotSupported => 'Воспроизведение музыки пока не поддерживается';
	@override String get noDescriptionAvailable => 'Описание недоступно';
	@override String get noProfilesAvailable => 'Профили недоступны';
	@override String get contactAdminForProfiles => 'Обратитесь к администратору сервера для добавления профилей';
	@override String get unableToDetermineLibrarySection => 'Не удаётся определить раздел библиотеки для этого элемента';
	@override String get logsCleared => 'Логи очищены';
	@override String get logsCopied => 'Логи скопированы в буфер обмена';
	@override String get noLogsAvailable => 'Логи отсутствуют';
	@override String libraryScanning({required Object title}) => 'Сканирование "${title}"...';
	@override String libraryScanStarted({required Object title}) => 'Сканирование библиотеки начато для "${title}"';
	@override String libraryScanFailed({required Object error}) => 'Не удалось отсканировать библиотеку: ${error}';
	@override String metadataRefreshing({required Object title}) => 'Обновление метаданных "${title}"...';
	@override String metadataRefreshStarted({required Object title}) => 'Обновление метаданных начато для "${title}"';
	@override String metadataRefreshFailed({required Object error}) => 'Не удалось обновить метаданные: ${error}';
	@override String get logoutConfirm => 'Вы уверены, что хотите выйти?';
	@override String get noSeasonsFound => 'Сезоны не найдены';
	@override String get seasonsLoadFailed => 'Не удалось загрузить сезоны';
	@override String get noEpisodesFound => 'Эпизоды в первом сезоне не найдены';
	@override String get noEpisodesFoundGeneral => 'Эпизоды не найдены';
	@override String get episodesLoadFailed => 'Не удалось загрузить эпизоды';
	@override String get noResultsFound => 'Результаты не найдены';
	@override String sleepTimerSet({required Object label}) => 'Таймер сна установлен на ${label}';
	@override String get noItemsAvailable => 'Нет доступных элементов';
	@override String get failedToCreatePlayQueueNoItems => 'Не удалось создать очередь воспроизведения — нет элементов';
	@override String failedPlayback({required Object action, required Object error}) => 'Не удалось ${action}: ${error}';
	@override String get switchingToCompatiblePlayer => 'Переключение на совместимый плеер...';
	@override String get serverLimitTitle => 'Ошибка воспроизведения';
	@override String get serverLimitBody => 'Ошибка сервера (HTTP 500). Лимит пропускной способности/транскодирования, вероятно, отклонил сессию. Попросите владельца изменить настройки.';
	@override String get mediaUnreadableTitle => 'Файл недоступен';
	@override String get mediaUnreadableBody => 'Сервер нашёл этот элемент, но не смог прочитать его файл (HTTP 404). Вероятно, файл был перемещён, удалён или его хранилище недоступно. Попросите владельца сервера проверить файл и пересканировать библиотеку.';
	@override String get serverBusyTitle => 'Поток недоступен';
	@override String get serverBusyBody => 'Сервер продолжает отклонять запросы на потоковую передачу этого файла (HTTP 503). Возможно, он перезапускается, перегружен или хранилище с файлом недоступно. Повторите попытку через некоторое время. Если это продолжает происходить, попросите владельца сервера проверить сервер и хранилище с файлом.';
	@override String get playbackNotAllowedTitle => 'Воспроизведение запрещено';
	@override String get playbackNotAllowedBody => 'Сервер отказал в потоковой передаче этого элемента (HTTP 403). Возможно, у вашей учётной записи нет разрешения на его воспроизведение или сервер разрешает воспроизведение только в своей локальной сети.';
	@override String get logsUploaded => 'Логи загружены';
	@override String get logsUploadFailed => 'Не удалось загрузить логи';
	@override String get logId => 'ID лога';
	@override String get burnedSubtitlesUseMenu => 'Субтитры встроены в этот поток. Изменить их можно в меню субтитров.';
	@override String get noVideoUrl => 'URL видео недоступен';
	@override String get playbackNoMediaSources => 'Сервер не вернул пригодных для воспроизведения медиаисточников';
	@override String get playbackDataNotPrepared => 'Воспроизведение началось до того, как данные были готовы';
	@override String get streamSelectionUnavailable => 'Выбор потоков недоступен для этого источника';
	@override String get streamSelectionFailed => 'Не удалось применить выбранные потоки';
	@override String get trackSelectionNotRemembered => 'Этот выбор дорожки действует только для текущего воспроизведения.';
	@override String get serverUnavailableForProfile => 'Для активного профиля нет доступных серверов';
}

// Path: sourceLibraries
class _Translations$sourceLibraries$ru extends Translations$sourceLibraries$en {
	_Translations$sourceLibraries$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ваши серверы и библиотеки';
	@override String get description => 'Выберите библиотеки, которые Luroka использует для домашней страницы, поиска, доступности Обзор и студий. Порядок исходных строк настраивается отдельно.';
	@override String get partial => 'Некоторые серверы не удалось проверить. Сохраненный вами выбор для этих библиотек сохраняется. Обновите, чтобы повторить попытку.';
	@override String get loadFailed => 'Не удалось загрузить ваши библиотеки. Проверьте соединение и повторите попытку.';
	@override String get notSelected => 'Недоступно в выбранных вами библиотеках.';
	@override String get checkOthers => 'Проверьте другие подключенные источники';
	@override String get otherSources => 'Доступно в других подключенных источниках';
	@override String get playOnce => 'Сыграть один раз';
	@override String get includeLibrary => 'Включить эту библиотеку';
	@override String get noOthers => 'В других подключенных источниках копий не найдено.';
	@override String get chooseOne => 'Выберите хотя бы одну библиотеку, чтобы продолжить.';
}

// Path: subtitlingStyling
class _Translations$subtitlingStyling$ru extends Translations$subtitlingStyling$en {
	_Translations$subtitlingStyling$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get text => 'Текст';
	@override String get border => 'Обводка';
	@override String get background => 'Фон';
	@override String get fontSize => 'Размер шрифта';
	@override String get textColor => 'Цвет текста';
	@override String get borderSize => 'Размер обводки';
	@override String get borderColor => 'Цвет обводки';
	@override String get backgroundOpacity => 'Прозрачность фона';
	@override String get backgroundColor => 'Цвет фона';
	@override String get position => 'Позиция';
	@override String get assOverride => 'Переопределение ASS';
	@override String get overrideScale => 'Масштаб';
	@override String get overrideForce => 'Принудительно';
	@override String get overrideStrip => 'Удалить стили';
	@override String get positionTop => 'Сверху';
	@override String get positionBottom => 'Снизу';
	@override String get useMargins => 'Использовать поля';
	@override String get useMarginsDescription => 'Разрешить текстовым субтитрам размещаться в области за пределами видео. Стилизованные субтитры могут сохранять исходное положение.';
	@override String get anchorToScreen => 'Привязка к экрану';
	@override String get anchorToScreenDescription => 'Показывать текстовые субтитры в чёрных полосах под широкоформатным видео';
	@override String get bold => 'Жирный';
	@override String get italic => 'Курсив';
	@override String get renderResolution => 'Разрешение отрисовки';
	@override String get renderResolutionScreen => 'Разрешение экрана';
	@override String get renderResolutionVideo => 'Разрешение видео';
}

// Path: mpvConfig
class _Translations$mpvConfig$ru extends Translations$mpvConfig$en {
	_Translations$mpvConfig$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'mpv.conf';
	@override String get description => 'Расширенные настройки видеоплеера';
	@override String get presets => 'Пресеты';
	@override String get noPresets => 'Нет сохранённых пресетов';
	@override String get saveAsPreset => 'Сохранить как пресет...';
	@override String get presetName => 'Название пресета';
	@override String get presetNameHint => 'Введите название для пресета';
	@override String get loadPreset => 'Загрузить';
	@override String get deletePreset => 'Удалить';
	@override String get presetSaved => 'Пресет сохранён';
	@override String get presetLoaded => 'Пресет загружен';
	@override String get presetDeleted => 'Пресет удалён';
	@override String get confirmDeletePreset => 'Вы уверены, что хотите удалить этот пресет?';
	@override String get configPlaceholder => 'gpu-api=vulkan\nhwdec=auto\n# comment';
	@override String get lineHint => 'option=value';
	@override String get addLine => 'Добавить строку';
	@override String get removeLine => 'Удалить строку';
	@override String get embeddedVoHint => 'vo, gpu-context и gpu-api игнорируются в Linux: встроенное видео всегда отображается через vo=libmpv на видеоплоскости, а gpu-next (нужный для compute-шейдеров вроде ArtCNN) не может работать во встроенном режиме.';
}

// Path: dialog
class _Translations$dialog$ru extends Translations$dialog$en {
	_Translations$dialog$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get confirmAction => 'Подтвердить действие';
}

// Path: profiles
class _Translations$profiles$ru extends Translations$profiles$en {
	_Translations$profiles$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get addLurokaProfile => 'Добавить профиль Luroka';
	@override String get switchingProfile => 'Переключение профиля…';
	@override String get deleteThisProfileTitle => 'Удалить этот профиль?';
	@override String deleteThisProfileMessage({required Object displayName}) => 'Удалить ${displayName}. Подключения не изменятся.';
	@override String get active => 'Активный';
	@override String get manage => 'Управление';
	@override String get delete => 'Удалить';
	@override String get signOut => 'Выйти';
	@override String get signOutPlexTitle => 'Выйти из Plex?';
	@override String signOutPlexMessage({required Object displayName}) => 'Удалить ${displayName} и всех пользователей Plex Home? Вы сможете войти снова в любое время.';
	@override String get signOutPlexDeleteDownloads => 'Также удалить загрузки';
	@override String get signOutPlexDeleteDownloadsDescription => 'В противном случае они останутся на этом устройстве и вернутся, когда вы снова войдете в эту учетную запись.';
	@override String get signedOutPlex => 'Вы вышли из Plex.';
	@override String get signOutFailed => 'Не удалось выйти.';
	@override String get sectionTitle => 'Профили';
	@override String get summarySingle => 'Добавляйте профили, чтобы сочетать управляемых пользователей и локальные профили';
	@override String summaryMultipleWithActive({required Object count, required Object activeName}) => '${count} профилей · активный: ${activeName}';
	@override String summaryMultiple({required Object count}) => '${count} профилей';
	@override String get removeConnectionTitle => 'Удалить соединение?';
	@override String removeConnectionMessage({required Object displayName, required Object connectionLabel}) => 'Удалить доступ ${displayName} к ${connectionLabel}. У других профилей он останется.';
	@override String get deleteProfileTitle => 'Удалить профиль?';
	@override String deleteProfileMessage({required Object displayName}) => 'Удалить ${displayName} и его подключения. Серверы останутся доступны.';
	@override String get profileNameLabel => 'Имя профиля';
	@override String get pinProtectionLabel => 'Защита PIN-кодом';
	@override String get pinManagedByPlex => 'PIN управляется Plex. Редактируйте на plex.tv.';
	@override String get noPinSetEditOnPlex => 'PIN не установлен. Чтобы требовать его, отредактируйте пользователя Главная на plex.tv.';
	@override String get setPin => 'Установить PIN';
	@override String get setPinTitle => 'Установить PIN';
	@override String get confirmPinTitle => 'Подтвердить PIN';
	@override String get pinSet => 'PIN установлен';
	@override String get changePin => 'Изменить';
	@override String get removePin => 'Удалить';
	@override String get connectionsLabel => 'Соединения';
	@override String get add => 'Добавить';
	@override String get deleteProfileButton => 'Удалить профиль';
	@override String get noConnectionsHint => 'Нет соединений — добавьте одно, чтобы использовать этот профиль.';
	@override String get noConnections => 'Нет соединений';
	@override String get plexHomeAccount => 'Аккаунт Plex Home';
	@override String plexAccountChip({required Object account}) => 'Аккаунт Plex: ${account}';
	@override String plexAccountUserChip({required Object user, required Object account}) => '${user} через ${account}';
	@override String get connectionDefault => 'По умолчанию';
	@override String connectionAs({required Object displayName}) => 'как ${displayName}';
	@override String get makeDefault => 'Сделать по умолчанию';
	@override String get removeConnection => 'Удалить';
	@override String get profileRenamed => 'Профиль переименован.';
	@override String borrowAddTo({required Object displayName}) => 'Добавить в ${displayName}';
	@override String get borrowExplain => 'Используйте подключение другого профиля. Для защищённых профилей потребуется PIN.';
	@override String get borrowEmpty => 'Пока нет доступных подключений.';
	@override String get borrowEmptySubtitle => 'Сначала подключите Plex, Jellyfin или Emby к другому профилю.';
	@override String get borrowLoadFailed => 'Не удалось загрузить доступные подключения. Попробуйте снова.';
	@override String borrowFromProfile({required Object displayName}) => 'От ${displayName}';
	@override String get borrowConnectionBorrowed => 'Подключение добавлено.';
	@override String get borrowFailed => 'Не удалось добавить подключение.';
	@override String get incorrectPin => 'Неверный PIN.';
	@override String get incorrectPinTryAgain => 'Неверный PIN. Попробуйте ещё раз.';
	@override String get sourceProfileMissingParentAccount => 'У исходного профиля отсутствует родительская учётная запись.';
	@override String get failedToLoadHomeUsers => 'Не удалось загрузить пользователей Plex Home. Проверьте подключение и попробуйте ещё раз.';
	@override String get failedToVerifyPin => 'Не удалось проверить PIN.';
	@override String get newProfile => 'Новый профиль';
	@override String get profileNameHint => 'например, Гости, Дети, Семейная комната';
	@override String get pinProtectionOptional => 'Защита PIN-кодом (необязательно)';
	@override String get pinExplain => 'Для переключения профилей нужен 4-значный PIN.';
	@override String get continueButton => 'Продолжить';
	@override String get pinsDontMatch => 'PIN-коды не совпадают';
	@override String get tokenIdentityMismatch => 'Токен профиля Plex указал на неожиданный сервер';
}

// Path: connections
class _Translations$connections$ru extends Translations$connections$en {
	_Translations$connections$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get sectionTitle => 'Подключения';
	@override String get addConnection => 'Добавить подключение';
	@override String get addConnectionSubtitleNoProfile => 'Войдите через Plex или подключите сервер Jellyfin или Emby';
	@override String addConnectionSubtitleScoped({required Object displayName}) => 'Добавить к ${displayName}: Plex, Jellyfin, Emby или подключение другого профиля';
	@override String sessionExpiredOne({required Object name}) => 'Сессия истекла для ${name}';
	@override String sessionExpiredMany({required Object count}) => 'Сессия истекла для ${count} серверов';
	@override String accessDeniedOne({required Object name}) => '${name} отказал в доступе этой учётной записи';
	@override String accessDeniedMany({required Object count}) => 'Доступ для этой учётной записи запрещён на ${count} серверах';
	@override String get signInAgain => 'Войти снова';
	@override String editMediaBrowserTitle({required Object product}) => 'Изменить подключение ${product}';
	@override String editMediaBrowserIntro({required Object serverName}) => 'Добавьте или удалите URL-адреса для ${serverName}. Luroka будет использовать доступный URL с наименьшей задержкой.';
}

// Path: serversAccounts
class _Translations$serversAccounts$ru extends Translations$serversAccounts$en {
	_Translations$serversAccounts$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Серверы и учетные записи';
	@override String get subtitle => 'Статус входа на серверы Plex, Jellyfin и Emby';
	@override String get online => 'Онлайн';
	@override String get offline => 'Оффлайн';
	@override String get unknown => 'Здесь не выполнен вход';
	@override String get usedByNone => 'Не используется ни одним профилем';
	@override String usedByOne({required Object name}) => 'Используется ${name}';
	@override String usedByMany({required Object name, required Object count}) => 'Используется ${name} и ${count}.';
	@override String serversOnline({required Object online, required Object total}) => '${online} серверов ${total} онлайн';
	@override String get noServers => 'Пока ничего не подключено. Добавьте свою учетную запись Plex или сервер Jellyfin или Emby.';
	@override String get editUrls => 'Изменить URL-адреса серверов';
}

// Path: accountPreferences
class _Translations$accountPreferences$ru extends Translations$accountPreferences$en {
	_Translations$accountPreferences$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get sectionTitle => 'Настройки аккаунта';
	@override String hubSubtitleSingle({required Object account}) => 'Параметры аудио, субтитров и библиотеки сохранены на аккаунте ${account}';
	@override String hubSubtitleMultiple({required Object count}) => 'Параметры аудио, субтитров и библиотеки сохранены на ${count} аккаунтах';
	@override String get pickAccount => 'Каждый аккаунт хранит собственные настройки. Выберите, какой редактировать.';
	@override String get storedOnAccount => 'Эти параметры сохраняются на самом аккаунте, поэтому их используют все приложения, вошедшие в него, — включая Luroka на ваших других устройствах.';
	@override String get noAccounts => 'Нет аккаунтов для настройки';
	@override String get noAccountsHint => 'Войдите в Plex или подключите сервер Jellyfin или Emby — и настройки, сохранённые на этом аккаунте, появятся здесь.';
	@override String get unavailable => 'Не удаётся получить доступ к этому аккаунту';
	@override String get loadFailed => 'Не удалось загрузить эти настройки';
	@override String get noPreference => 'Без предпочтений';
	@override String get notSet => 'Не задано';
	@override late final _Translations$accountPreferences$groups$ru groups = _Translations$accountPreferences$groups$ru._(_root);
	@override String get preferredAudioLanguage => 'Предпочитаемый язык аудио';
	@override String get autoSelectAudio => 'Выбирать аудиодорожку по языку';
	@override String get autoSelectAudioDescription => 'В выключенном состоянии используется аудиодорожка, помеченная в файле как дорожка по умолчанию.';
	@override String get preferredSubtitleLanguage => 'Предпочитаемый язык субтитров';
	@override String get subtitleMode => 'Включать субтитры';
	@override late final _Translations$accountPreferences$subtitleModes$ru subtitleModes = _Translations$accountPreferences$subtitleModes$ru._(_root);
	@override String get subtitleAccessibility => 'Субтитры SDH';
	@override late final _Translations$accountPreferences$subtitleAccessibilityOptions$ru subtitleAccessibilityOptions = _Translations$accountPreferences$subtitleAccessibilityOptions$ru._(_root);
	@override String get forcedSubtitles => 'Принудительные субтитры';
	@override late final _Translations$accountPreferences$forcedSubtitleOptions$ru forcedSubtitleOptions = _Translations$accountPreferences$forcedSubtitleOptions$ru._(_root);
	@override String get displayMissingEpisodes => 'Показывать отсутствующие эпизоды';
	@override String get displayMissingEpisodesDescription => 'Перечислять эпизоды, которые знает сервер, но для которых нет файлов.';
	@override String get hidePlayedInLatest => 'Скрывать просмотренное в «Недавно добавленном»';
	@override String get hidePlayedInLatestDescription => 'Исключать уже просмотренные материалы из рядов «Недавно добавленное» сервера.';
	@override String get displayCollectionsView => 'Показывать раздел «Коллекции»';
	@override String get displayCollectionsViewDescription => 'Показывать раздел коллекций сервера рядом с вашими библиотеками.';
	@override String get rewatchingInNextUp => 'Сохранять пересматриваемые сериалы в «Далее»';
	@override String get rewatchingInNextUpDescription => 'Когда вы досматриваете сериал и начинаете его заново, «Далее» продолжает отслеживать повторный просмотр, а не убирает сериал.';
	@override String get watchedIndicator => 'Индикаторы просмотра';
	@override late final _Translations$accountPreferences$watchedIndicatorOptions$ru watchedIndicatorOptions = _Translations$accountPreferences$watchedIndicatorOptions$ru._(_root);
	@override String get mediaReviewsVisibility => 'Оценки и отзывы';
	@override late final _Translations$accountPreferences$mediaReviewsOptions$ru mediaReviewsOptions = _Translations$accountPreferences$mediaReviewsOptions$ru._(_root);
}

// Path: discover
class _Translations$discover$ru extends Translations$discover$en {
	_Translations$discover$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Обзор';
	@override String get noContentAvailable => 'Контент недоступен';
	@override String get addMediaToLibraries => 'Добавьте медиафайлы в ваши библиотеки';
	@override String get continueWatching => 'Продолжить просмотр';
	@override String continueWatchingIn({required Object library}) => 'Продолжить просмотр в ${library}';
	@override String get nextUp => 'Далее';
	@override String nextUpIn({required Object library}) => 'Далее в ${library}';
	@override String get recentlyAdded => 'Недавно добавленное';
	@override String recentlyAddedIn({required Object library}) => 'Недавно добавленное в ${library}';
	@override String latestAlbumsIn({required Object library}) => 'Последние альбомы в ${library}';
	@override String recentlyPlayedIn({required Object library}) => 'Недавно прослушанное в ${library}';
	@override String mostPlayedIn({required Object library}) => 'Часто прослушиваемое в ${library}';
	@override String playEpisode({required Object season, required Object episode}) => 'S${season}E${episode}';
	@override String get overview => 'Обзор';
	@override String get cast => 'В ролях';
	@override String get extras => 'Трейлеры и доп. материалы';
	@override String get studio => 'Студия';
	@override String get rating => 'Рейтинг';
	@override String get director => 'Режиссёр';
	@override String get directors => 'Режиссёры';
	@override String get movie => 'Фильм';
	@override String get tvShow => 'Сериал';
	@override String minutesLeft({required Object minutes}) => 'Осталось ${minutes} мин';
	@override String get moreLikeThis => 'Похожее';
	@override String titleCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n,
		one: '${n} название',
		few: '${n} названия',
		many: '${n} названий',
		other: '${n} названия',
	);
	@override late final _Translations$discover$person$ru person = _Translations$discover$person$ru._(_root);
}

// Path: errors
class _Translations$errors$ru extends Translations$errors$en {
	_Translations$errors$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String searchFailed({required Object error}) => 'Ошибка поиска: ${error}';
	@override String get searchUnavailable => 'Поиску не удалось связаться ни с одним медиасервером.';
	@override String connectionTimeout({required Object context}) => 'Таймаут подключения при загрузке ${context}';
	@override String get connectionFailed => 'Не удалось подключиться к медиасерверу';
	@override String unableToLoad({required Object context}) => 'Не удалось загрузить ${context}. Повторите попытку.';
	@override String get noClientAvailable => 'Клиент недоступен';
	@override String get pleaseEnterToken => 'Введите токен';
	@override String get invalidToken => 'Недействительный токен';
	@override String failedToVerifyToken({required Object error}) => 'Не удалось проверить токен: ${error}';
	@override String failedToSwitchProfile({required Object displayName}) => 'Не удалось переключиться на ${displayName}';
	@override String failedToDeleteProfile({required Object displayName}) => 'Не удалось удалить ${displayName}';
	@override String get failedToRate => 'Не удалось обновить оценку';
	@override String get reasonTimedOut => 'истекло время ожидания подключения';
	@override String get reasonUnreachable => 'не удалось связаться с сервером';
	@override String get reasonRefused => 'сервер отклонил запрос';
	@override String get reasonNotFound => 'элемента больше нет на сервере';
	@override String get reasonServerError => 'сервер сообщил об ошибке';
	@override String get reasonCancelled => 'запрос был отменён';
	@override String get reasonUnexpected => 'произошла непредвиденная ошибка';
}

// Path: libraries
class _Translations$libraries$ru extends Translations$libraries$en {
	_Translations$libraries$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Библиотеки';
	@override String get fallbackTitle => 'Библиотека';
	@override String get scanLibraryFiles => 'Сканировать файлы библиотеки';
	@override String get scanLibrary => 'Сканировать библиотеку';
	@override String get analyze => 'Анализировать';
	@override String get analyzeLibrary => 'Анализировать библиотеку';
	@override String get refreshMetadata => 'Обновить метаданные';
	@override String get emptyTrash => 'Очистить корзину';
	@override String emptyingTrash({required Object title}) => 'Очистка корзины для "${title}"...';
	@override String trashEmptied({required Object title}) => 'Корзина очищена для "${title}"';
	@override String failedToEmptyTrash({required Object error}) => 'Не удалось очистить корзину: ${error}';
	@override String analyzing({required Object title}) => 'Анализ "${title}"...';
	@override String analysisStarted({required Object title}) => 'Анализ начат для "${title}"';
	@override String failedToAnalyze({required Object error}) => 'Не удалось проанализировать библиотеку: ${error}';
	@override String get noLibrariesFound => 'Библиотеки не найдены';
	@override String get allLibrariesHidden => 'Все библиотеки скрыты';
	@override String hiddenLibrariesCount({required Object count}) => 'Скрытые библиотеки (${count})';
	@override String get thisLibraryIsEmpty => 'Эта библиотека пуста';
	@override String get noItemsMatchFilters => 'Нет элементов, соответствующих активным фильтрам';
	@override String get resetFilters => 'Сбросить фильтры';
	@override String get all => 'Все';
	@override String get clearAll => 'Очистить все';
	@override String scanLibraryConfirm({required Object title}) => 'Вы уверены, что хотите сканировать "${title}"?';
	@override String analyzeLibraryConfirm({required Object title}) => 'Вы уверены, что хотите проанализировать "${title}"?';
	@override String refreshMetadataConfirm({required Object title}) => 'Вы уверены, что хотите обновить метаданные для "${title}"?';
	@override String emptyTrashConfirm({required Object title}) => 'Вы уверены, что хотите очистить корзину для "${title}"?';
	@override String get manageLibraries => 'Управление библиотеками';
	@override String get sort => 'Сортировка';
	@override String get sortBy => 'Сортировать по';
	@override String get filters => 'Фильтры';
	@override String get confirmActionMessage => 'Вы уверены, что хотите выполнить это действие?';
	@override String get showLibrary => 'Показать библиотеку';
	@override String get hideLibrary => 'Скрыть библиотеку';
	@override String get libraryOptions => 'Параметры библиотеки';
	@override String get content => 'содержимое библиотеки';
	@override String get selectLibrary => 'Выбрать библиотеку';
	@override String filtersWithCount({required Object count}) => 'Фильтры (${count})';
	@override String get noRecommendations => 'Рекомендации недоступны';
	@override String get noCollections => 'В этой библиотеке нет коллекций';
	@override String get noFoldersFound => 'Папки не найдены';
	@override String get folders => 'папки';
	@override late final _Translations$libraries$tabs$ru tabs = _Translations$libraries$tabs$ru._(_root);
	@override late final _Translations$libraries$groupings$ru groupings = _Translations$libraries$groupings$ru._(_root);
	@override late final _Translations$libraries$filterCategories$ru filterCategories = _Translations$libraries$filterCategories$ru._(_root);
	@override late final _Translations$libraries$sortLabels$ru sortLabels = _Translations$libraries$sortLabels$ru._(_root);
	@override late final _Translations$libraries$advancedFilters$ru advancedFilters = _Translations$libraries$advancedFilters$ru._(_root);
}

// Path: about
class _Translations$about$ru extends Translations$about$en {
	_Translations$about$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'О приложении';
	@override String get openSourceLicenses => 'Лицензии открытого ПО';
	@override String versionLabel({required Object version}) => 'Версия ${version}';
	@override String get appDescription => 'Красивый клиент Plex, Jellyfin и Emby на Flutter';
	@override String get customSource => 'Исходный код';
	@override String get basedOnLuroka => 'Построен на базе кода Plezy.';
	@override String get viewLicensesDescription => 'Просмотр лицензий сторонних библиотек';
	@override String get appSection => 'Приложение';
	@override String get communitySection => 'Сообщество';
	@override String get creditsSection => 'Кредиты';
	@override String get legalSection => 'Юридический';
	@override String versionMeta({required Object version, required Object build, required Object platform}) => 'v${version} (${build}) · ${platform}';
	@override String versionMetaNoBuild({required Object version, required Object platform}) => 'v${version} · ${platform}';
	@override String get versionUnavailable => 'Версия недоступна';
	@override String get versionDetails => 'Подробности версии';
	@override String versionDetailsTitle({required Object version, required Object build}) => 'Luroka ${version} (${build})';
	@override String platformLine({required Object platform}) => 'Платформа: ${platform}';
	@override String deviceLine({required Object model}) => 'Устройство: ${model}';
	@override String packageLine({required Object package}) => 'Пакет: ${package}';
	@override String localeLine({required Object locale}) => 'Язык: ${locale}';
	@override String get copyDetails => 'Копировать детали';
	@override String get detailsCopied => 'Сведения о приложении скопированы.';
	@override String get detailsCopyFailed => 'Не удалось скопировать сведения о приложении.';
	@override String get checkForUpdatesDescription => 'Проверьте GitHub на наличие новой версии.';
	@override String get checkingForUpdates => 'Проверка обновлений…';
	@override String get whatsNew => 'Что нового';
	@override String get releaseNotesUnavailable => 'Примечания к выпуску отсутствуют.';
	@override String get sourceCodeDescription => 'Luroka на GitHub';
	@override String get reportIssue => 'Сообщить о проблеме';
	@override String get reportIssueDescription => 'Расскажите нам, что пошло не так';
	@override String get documentation => 'Документация';
	@override String get documentationDescription => 'Настройка, функции и примечания к сборке';
	@override String get upstreamProjectDescription => 'Проект с открытым исходным кодом, созданный edde746 и его участниками';
	@override String get upstreamWebsite => 'Веб-сайт разведки и добычи';
	@override String get attribution => 'Данные и атрибуция';
	@override String get attributionDescription => 'Метаданные, рейтинги и товарные знаки';
	@override String get attributionBody => 'В этом продукте используется TMDB API, но он не одобрен и не сертифицирован TMDB. Списки популярности, метаданные и рейтинги IMDb предоставляются Cinemeta. Партитуры сохраняют свои исходные метки.';
	@override String get trademarkNotices => 'Plex, Jellyfin, Emby, Trakt, Simkl, MyAnimeList, AniList, TMDB и связанные с ними знаки являются товарные знаки соответствующих владельцев. Luroka не связан с ними и не одобрен ими.';
	@override String get privacyPolicy => 'Политика конфиденциальности';
	@override String get privacyPolicyDescription => 'Как обрабатываются ваши данные';
	@override String get gplLicense => 'Лицензия GNU GPL-3.0';
	@override String get gplLicenseDescription => 'Luroka — бесплатное программное обеспечение.';
	@override String get linkOpenFailed => 'Не удалось открыть эту ссылку';
	@override String get opensInBrowser => 'Открывается в вашем браузере';
	@override String get footer => 'Luroka — бесплатное программное обеспечение под лицензией GPL-3.0.';
	@override String copyright({required Object year}) => '© ${year} Luroka участники';
}

// Path: serverSelection
class _Translations$serverSelection$ru extends Translations$serverSelection$en {
	_Translations$serverSelection$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String noServersFoundForAccount({required Object username, required Object email}) => 'Серверы не найдены для ${username} (${email})';
	@override String failedToLoadServers({required Object error}) => 'Не удалось загрузить серверы: ${error}';
	@override String get noValidServers => 'В этой учётной записи не найдено пригодных серверов';
}

// Path: hubDetail
class _Translations$hubDetail$ru extends Translations$hubDetail$en {
	_Translations$hubDetail$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Название';
	@override String get releaseYear => 'Год выпуска';
	@override String get dateAdded => 'Дата добавления';
	@override String get rating => 'Рейтинг';
	@override String get noItemsFound => 'Элементы не найдены';
}

// Path: logs
class _Translations$logs$ru extends Translations$logs$en {
	_Translations$logs$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get clearLogs => 'Очистить логи';
	@override String get copyLogs => 'Скопировать логи';
	@override String get uploadLogs => 'Загрузить логи';
}

// Path: startup
class _Translations$startup$ru extends Translations$startup$en {
	_Translations$startup$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get failedTitle => 'Luroka не удалось запустить';
	@override String get failedBody => 'Во время запуска что-то пошло не так. Сведения ниже показывают, что именно не удалось.';
	@override String get failedBodyRepairable => 'Сохранённый файл настроек Luroka повреждён, и его необходимо пересоздать, прежде чем Luroka сможет запуститься. Повторные попытки не помогут — выберите «Восстановить хранилище».';
	@override String get phaseLabel => 'Шаг';
	@override String get showDetails => 'Показать сведения';
	@override String get hideDetails => 'Скрыть сведения';
	@override String get copyDetails => 'Копировать сведения';
	@override String get detailsCopied => 'Сведения скопированы в буфер обмена';
	@override String get uploadDetails => 'Отправить сведения';
	@override String get repairStorage => 'Восстановить хранилище';
	@override String get repairTitle => 'Восстановить сохранённые данные?';
	@override String get repairBodyCommon => 'Файл настроек Luroka повреждён и не может быть прочитан. Восстановление сбросит все настройки к значениям по умолчанию.';
	@override String get repairBodyOneCredential => 'Одна сохранённая учётная запись повреждена и не может быть прочитана. Восстановление удалит только её; остальные настройки не будут затронуты.';
	@override String get repairBodySignInsKept => 'Вход в ваши серверы и профили будет сохранён.';
	@override String get repairBodySignInsLost => 'Ключ, защищающий сохранённые входы, невозможно восстановить из этого файла, поэтому вам придётся снова войти на каждый сервер и в каждый профиль. На вашем медиасервере ничего не изменится.';
	@override String get repairBodySessionsUncertain => 'Трекеры (MAL, AniList, Simkl, Trakt) и Seerr хранятся отдельно и могут сохраниться или нет. Luroka точно сообщит, что удалось сохранить.';
	@override String get repairConfirm => 'Восстановить';
	@override String get repairSucceeded => 'Хранилище восстановлено';
	@override String get repairNeedsRestart => 'Хранилище восстановлено — требуется перезапуск';
	@override String get restartRequiredBody => 'Ваши данные были восстановлены, но Luroka должен запуститься заново, чтобы использовать их. Закройте Luroka и откройте его снова.';
	@override String get quitLuroka => 'Выйти из Luroka';
	@override String get repairFailed => 'Не удалось восстановить';
	@override String get repairKeptSignIns => 'Ваши серверы и профили по-прежнему в системе.';
	@override String get repairLostSignIns => 'Ключ, защищающий сохранённые входы, не удалось восстановить. Вам придётся снова войти на каждый сервер и в каждый профиль.';
	@override String get repairLostSessions => 'Потеряно как минимум одно подключение трекера или Seerr — его нужно восстановить.';
	@override String get backupTitle => 'Сохранена копия повреждённого файла';
	@override String get backupWarning => 'Она содержит ваши учётные данные для входа. Не загружайте и не передавайте её.';
	@override String get deleteBackup => 'Удалить копию';
	@override String get backupDeleted => 'Копия удалена.';
	@override String get previousFailureTitle => 'В прошлый раз Luroka не удалось запустить';
}

// Path: licenses
class _Translations$licenses$ru extends Translations$licenses$en {
	_Translations$licenses$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get relatedPackages => 'Связанные пакеты';
	@override String get license => 'Лицензия';
	@override String licenseNumber({required Object number}) => 'Лицензия ${number}';
	@override String licensesCount({required Object count}) => '${count} лицензий';
	@override String get searchHint => 'Поиск пакетов';
	@override String noResults({required Object query}) => 'Нет пакетов, соответствующих «${query}».';
	@override String get clearSearch => 'Очистить поиск';
}

// Path: navigation
class _Translations$navigation$ru extends Translations$navigation$en {
	_Translations$navigation$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get libraries => 'Библиотеки';
	@override String get downloads => 'Загрузки';
	@override String get liveTv => 'Прямой эфир';
	@override String get explore => 'Обзор';
}

// Path: explore
class _Translations$explore$ru extends Translations$explore$en {
	_Translations$explore$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Обзор';
	@override String get selectSource => 'Выбрать источник';
	@override late final _Translations$explore$rows$ru rows = _Translations$explore$rows$ru._(_root);
	@override late final _Translations$explore$status$ru status = _Translations$explore$status$ru._(_root);
	@override String episodeCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n,
		one: '${n} эпизод',
		few: '${n} эпизода',
		many: '${n} эпизодов',
		other: '${n} эпизода',
	);
	@override String get cast => 'В ролях';
	@override String get characters => 'Персонажи';
	@override String get addToWatchlist => 'Добавить в список для просмотра';
	@override String get removeFromWatchlist => 'Удалить из списка для просмотра';
	@override String get addedToWatchlist => 'Добавлено в список просмотра';
	@override String get removedFromWatchlist => 'Удалено из списка просмотра';
	@override String get watchlistUpdateFailed => 'Не удалось обновить список для просмотра';
	@override String get watchlistNoMatch => 'Не удалось сопоставить этот элемент со списком просмотра';
	@override String get notInLibrary => 'Нет в вашей библиотеке';
	@override String get inTheseLibraries => 'В этих библиотеках';
	@override String get checkingLibrary => 'Проверка вашей библиотеки...';
	@override String libraryCheckFailed({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n,
		one: 'Не удалось проверить ${n} сервер',
		few: 'Не удалось проверить ${n} сервера',
		many: 'Не удалось проверить ${n} серверов',
		other: 'Не удалось проверить ${n} сервера',
	);
	@override String get emptyTitle => 'Здесь пока ничего нет';
	@override String emptyMessage({required Object source}) => 'Разделы из ${source} появятся здесь, когда в них появится контент.';
	@override String searchHint({required Object source}) => 'Поиск в ${source}';
	@override String searchEmpty({required Object query}) => 'Нет результатов по запросу "${query}"';
	@override String searchPrompt({required Object source}) => 'Ищите фильмы и сериалы в ${source}.';
	@override String get searchFailed => 'Ошибка поиска. Проверьте подключение и повторите попытку.';
	@override late final _Translations$explore$badge$ru badge = _Translations$explore$badge$ru._(_root);
	@override late final _Translations$explore$stats$ru stats = _Translations$explore$stats$ru._(_root);
	@override late final _Translations$explore$season$ru season = _Translations$explore$season$ru._(_root);
	@override late final _Translations$explore$format$ru format = _Translations$explore$format$ru._(_root);
	@override late final _Translations$explore$sourceMaterial$ru sourceMaterial = _Translations$explore$sourceMaterial$ru._(_root);
	@override late final _Translations$explore$creditRole$ru creditRole = _Translations$explore$creditRole$ru._(_root);
	@override late final _Translations$explore$relation$ru relation = _Translations$explore$relation$ru._(_root);
	@override String broadcast({required Object day, required Object time}) => 'Выходит ${day} в ${time}';
	@override String broadcastWithZone({required Object day, required Object time, required Object timezone}) => 'Выходит ${day} в ${time} ${timezone}';
	@override late final _Translations$explore$detail$ru detail = _Translations$explore$detail$ru._(_root);
	@override String totalResults({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n,
		one: '${n} результат',
		few: '${n} результата',
		many: '${n} результатов',
		other: '${n} результатов',
	);
}

// Path: liveTv
class _Translations$liveTv$ru extends Translations$liveTv$en {
	_Translations$liveTv$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'ТВ в прямом эфире';
	@override String get guide => 'Программа';
	@override String get noChannels => 'Нет доступных каналов';
	@override String get noDvr => 'DVR не настроен ни на одном сервере';
	@override String get serverUnavailable => 'Сервер прямого эфира недоступен.';
	@override String get serverNotConnected => 'Сервер прямого эфира не подключён.';
	@override String get noPrograms => 'Нет данных о программах';
	@override String get liveStreamFailed => 'Не удалось запустить прямой эфир';
	@override String get unknownProgram => 'Неизвестная программа';
	@override String get unknownHub => 'Неизвестно';
	@override String get unknownError => 'Неизвестная ошибка';
	@override String channelNumber({required Object number}) => 'Канал ${number}';
	@override String get unknownChannel => 'Неизвестный канал';
	@override String get live => 'ЭФИР';
	@override String get reloadGuide => 'Перезагрузить программу';
	@override String get searchGuide => 'Поиск в программе';
	@override String get searchHint => 'Поиск каналов и программ';
	@override String searchNoResults({required Object query}) => 'Нет совпадений по запросу "${query}"';
	@override String get channelsSection => 'Каналы';
	@override String get programsSection => 'Программы';
	@override String get now => 'Сейчас';
	@override String get today => 'Сегодня';
	@override String get tomorrow => 'Завтра';
	@override String get midnight => 'Полночь';
	@override String get overnight => 'Ночь';
	@override String get morning => 'Утро';
	@override String get daytime => 'День';
	@override String get evening => 'Вечер';
	@override String get lateNight => 'Поздний вечер';
	@override String get whatsOn => 'Что идёт';
	@override String get watchChannel => 'Смотреть канал';
	@override String get favorites => 'Избранное';
	@override String get reorderFavorites => 'Изменить порядок избранного';
	@override String get noFavoriteChannels => 'Нет избранных каналов';
	@override String get noFavoriteChannelsHint => 'Покажите все каналы, затем нажмите и удерживайте канал, чтобы добавить его в избранное.';
	@override String get showAllChannels => 'Показать все каналы';
	@override String get favoritesLoadFailed => 'Не удалось загрузить избранное. Проверьте подключение и повторите попытку.';
	@override String get favoritesUpdateFailed => 'Не удалось обновить избранное. Проверьте подключение и повторите попытку.';
	@override String get joinSession => 'Присоединиться к текущему сеансу';
	@override String watchFromStart({required Object minutes}) => 'Смотреть сначала (${minutes} мин. назад)';
	@override String get watchLive => 'Смотреть в прямом эфире';
	@override String get goToLive => 'К прямому эфиру';
	@override String get record => 'Запись';
	@override String get recordEpisode => 'Записать эпизод';
	@override String get recordSeries => 'Записать сериал';
	@override String get recordOptions => 'Параметры записи';
	@override String get saveTo => 'Сохранить в';
	@override String get recordings => 'Записи';
	@override String get scheduledRecordings => 'Запланировано';
	@override String get recordingRules => 'Правила записи';
	@override String get noScheduledRecordings => 'Нет запланированных записей';
	@override String get manageRecording => 'Управление записью';
	@override String get cancelRecording => 'Отменить запись';
	@override String get cancelRecordingTitle => 'Отменить эту запись?';
	@override String cancelRecordingMessage({required Object title}) => '${title} больше не будет записываться.';
	@override String get deleteRule => 'Удалить правило';
	@override String get deleteRuleTitle => 'Удалить правило записи?';
	@override String deleteRuleMessage({required Object title}) => 'Будущие эпизоды ${title} не будут записаны.';
	@override String get recordingScheduled => 'Запись запланирована';
	@override String get alreadyScheduled => 'Эта передача уже запланирована';
	@override String get dvrAdminRequired => 'Настройки DVR требуют учётной записи администратора';
	@override String get recordingFailed => 'Не удалось запланировать запись';
	@override String get recordingTargetMissing => 'Не удалось определить библиотеку записи';
	@override String get recordNotAvailable => 'Запись недоступна для этой передачи';
	@override String get recordingCancelled => 'Запись отменена';
	@override String get recordingRuleDeleted => 'Правило записи удалено';
	@override String get processRecordingRules => 'Пересчитать правила';
	@override String get recordingInProgress => 'Идёт запись';
	@override String recordingsCount({required Object count}) => 'Запланировано: ${count}';
	@override String get editRule => 'Изменить правило';
	@override String get editRuleAction => 'Изменить';
	@override String get recordingRuleUpdated => 'Правило записи обновлено';
	@override String get guideReloadRequested => 'Запрошено обновление гайда';
	@override String get guideReloadFailed => 'Не удалось обновить программу';
	@override String get rulesProcessRequested => 'Запрошен пересчёт правил';
	@override String get rulesProcessFailed => 'Не удалось повторно применить правила записи';
	@override String get recordShow => 'Записать передачу';
	@override late final _Translations$liveTv$recordSettings$ru recordSettings = _Translations$liveTv$recordSettings$ru._(_root);
	@override String startingInMinutes({required Object minutes}) => 'Начало через ${minutes} мин';
	@override String dayAtTime({required Object day, required Object time}) => '${day} в ${time}';
	@override String invalidPlaybackData({required Object product}) => '${product} вернул некорректные данные для воспроизведения ТВ в прямом эфире';
	@override String get failedToStartChannel => 'Не удалось запустить канал в прямом эфире';
	@override String get failedToBuildStreamUrl => 'Не удалось сформировать URL потока';
	@override String playbackStartFailed({required Object reason}) => 'Не удалось запустить канал: ${reason}';
	@override String channelSwitchFailed({required Object reason}) => 'Не удалось переключить канал: ${reason}';
}

// Path: collections
class _Translations$collections$ru extends Translations$collections$en {
	_Translations$collections$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Коллекции';
	@override String get collection => 'Коллекция';
	@override String get empty => 'Коллекция пуста';
	@override String get deleteCollection => 'Удалить коллекцию';
	@override String deleteConfirm({required Object title}) => 'Удалить "${title}"? Это нельзя отменить.';
	@override String get deleted => 'Коллекция удалена';
	@override String get deleteFailed => 'Не удалось удалить коллекцию';
	@override String deleteFailedWithError({required Object error}) => 'Не удалось удалить коллекцию: ${error}';
	@override String get selectCollection => 'Выбрать коллекцию';
	@override String get collectionName => 'Название коллекции';
	@override String get enterCollectionName => 'Введите название коллекции';
	@override String get addedToCollection => 'Добавлено в коллекцию';
	@override String get errorAddingToCollection => 'Не удалось добавить в коллекцию';
	@override String get created => 'Коллекция создана';
	@override String get removeFromCollection => 'Удалить из коллекции';
	@override String removeFromCollectionConfirm({required Object title}) => 'Удалить "${title}" из этой коллекции?';
	@override String get removedFromCollection => 'Удалено из коллекции';
	@override String get removeFromCollectionFailed => 'Не удалось удалить из коллекции';
	@override String removeFromCollectionError({required Object error}) => 'Ошибка удаления из коллекции: ${error}';
	@override String get searchCollections => 'Поиск коллекций...';
}

// Path: playlists
class _Translations$playlists$ru extends Translations$playlists$en {
	_Translations$playlists$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Плейлисты';
	@override String get playlist => 'Плейлист';
	@override String get noPlaylists => 'Плейлисты не найдены';
	@override String get create => 'Создать плейлист';
	@override String get playlistName => 'Название плейлиста';
	@override String get enterPlaylistName => 'Введите название плейлиста';
	@override String get delete => 'Удалить плейлист';
	@override String get removeItem => 'Удалить из плейлиста';
	@override String get smartPlaylist => 'Умный плейлист';
	@override String itemCount({required Object count}) => '${count} элементов';
	@override String get oneItem => '1 элемент';
	@override String get emptyPlaylist => 'Этот плейлист пуст';
	@override String get deleteConfirm => 'Удалить плейлист?';
	@override String deleteMessage({required Object name}) => 'Вы уверены, что хотите удалить "${name}"?';
	@override String get created => 'Плейлист создан';
	@override String get deleted => 'Плейлист удалён';
	@override String get itemAdded => 'Добавлено в плейлист';
	@override String get itemRemoved => 'Удалено из плейлиста';
	@override String get selectPlaylist => 'Выбрать плейлист';
	@override String get searchPlaylists => 'Поиск плейлистов...';
	@override String get errorCreating => 'Не удалось создать плейлист';
	@override String get errorDeleting => 'Не удалось удалить плейлист';
	@override String get errorLoading => 'Не удалось загрузить плейлисты';
	@override String get errorAdding => 'Не удалось добавить в плейлист';
	@override String get errorReordering => 'Не удалось переупорядочить элемент плейлиста';
	@override String get errorRemoving => 'Не удалось удалить из плейлиста';
}

// Path: music
class _Translations$music$ru extends Translations$music$en {
	_Translations$music$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get goToAlbum => 'Перейти к альбому';
	@override String get goToArtist => 'Перейти к исполнителю';
	@override String get instantMix => 'Быстрый микс';
	@override String get playNext => 'Воспроизвести следующим';
	@override String get addToQueue => 'Добавить в очередь';
	@override String discNumber({required Object n}) => 'Диск ${n}';
	@override String trackCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n,
		one: '${n} трек',
		few: '${n} трека',
		many: '${n} треков',
		other: '${n} трека',
	);
	@override String get nowPlaying => 'Сейчас играет';
	@override String playingFrom({required Object title}) => 'Воспроизведение из ${title}';
	@override String get queue => 'Очередь';
	@override String get clearQueue => 'Очистить очередь';
	@override String get lyrics => 'Текст песни';
	@override String get noLyrics => 'Текст песни недоступен';
	@override String get sleepTimer => 'Таймер сна';
	@override String get sleepTimerEndOfTrack => 'Конец трека';
	@override String sleepTimerMinutes({required Object n}) => '${n} минут';
	@override String get stopPlayback => 'Остановить воспроизведение';
	@override String get previousTrack => 'Предыдущий трек';
	@override String get nextTrack => 'Следующий трек';
	@override String get repeat => 'Повтор';
	@override String get repeatAll => 'Повторять все';
	@override String get repeatOne => 'Повторять один';
	@override String get instantMixNoServer => 'Нет доступного сервера для мгновенного микса';
	@override String get instantMixFailed => 'Не удалось загрузить быстрый микс';
	@override String get instantMixEmpty => 'Быстрый микс не нашёл ни одного трека';
	@override String noAudioUrl({required Object track}) => 'Для трека ${track} нет доступного URL аудио';
	@override late final _Translations$music$discography$ru discography = _Translations$music$discography$ru._(_root);
}

// Path: watchTogether
class _Translations$watchTogether$ru extends Translations$watchTogether$en {
	_Translations$watchTogether$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Смотреть вместе';
	@override String get description => 'Смотрите контент синхронно с друзьями и семьёй';
	@override String get createRoom => 'Создать комнату';
	@override String get creatingRoom => 'Создание комнаты...';
	@override String get joinRoom => 'Присоединиться к комнате';
	@override String get joiningRoom => 'Присоединение к комнате...';
	@override String get connecting => 'Подключение...';
	@override String get relayPublic => 'В комнатах используются общедоступные реле Open Watch Party.';
	@override String relayCustom({required Object url}) => 'Комнаты используют ваше реле по адресу ${url}.';
	@override String get recentRooms => 'Недавние комнаты';
	@override String get roomActions => 'Действия комнаты';
	@override String get renameRoom => 'Переименовать комнату';
	@override String get removeRoom => 'Удалить';
	@override String get enterRoomCode => 'Введите 6-значный код от хостера.';
	@override String get roomCode => 'Код номера';
	@override String get paste => 'Вставить';
	@override String get noCodeInClipboard => 'В буфере обмена нет кода комнаты.';
	@override String get copyCode => 'Копировать код';
	@override String get codeCopied => 'Код номера скопирован.';
	@override String get shareInvite => 'Поделиться Пригласить';
	@override String get qrShare => 'Поделиться QR-кодом';
	@override String get qrHint => 'Отсканируйте с помощью приложения Luroka, чтобы присоединиться к этой комнате.';
	@override String get phasePlaying => 'Играя';
	@override String get phasePaused => 'Приостановлено';
	@override String get phaseWaiting => 'Жду всех';
	@override String get inviteCopied => 'Приглашение скопировано. Вставьте его в сообщение.';
	@override String inviteMessage({required Object code}) => 'Присоединяйтесь к моей комнате Watch Together в Luroka: luroka://watch?code=${code} — или откройте Watch Together и введите ${code}.';
	@override String get openSessionControls => 'Открыть управление сессией «Смотреть вместе»';
	@override String get reconnecting => 'Повторное подключение...';
	@override String get reconnectingDescription => 'Связь прервалась. Вы автоматически возвращаетесь в комнату.';
	@override String get connected => 'Подключено';
	@override String get disconnected => 'Отключено';
	@override String get youAreHost => 'Вы — организатор';
	@override String hostedBy({required Object name}) => 'Хостинг: ${name}';
	@override String get hostControlsPlayback => 'Организатор управляет воспроизведением';
	@override String get anyoneCanControl => 'Любой может управлять воспроизведением';
	@override String get roomLocked => 'Комната заперта';
	@override String get nowPlaying => 'Сейчас играет';
	@override String get nothingPlaying => 'Ничего не играет';
	@override String get nothingPlayingHost => 'Воспроизведите что-нибудь из любой библиотеки, чтобы поделиться этим с комнатой.';
	@override String get nothingPlayingGuest => 'Когда ведущий что-то воспроизводит, оно открывается здесь.';
	@override String get notShareable => 'Это видео не соответствует каталогу, поэтому его могут воспроизводить только люди, имеющие доступ к тому же серверу.';
	@override String get searching => 'Ищу это видео в своих библиотеках...';
	@override String get yourCopy => 'Ваша копия';
	@override String get sharingYourCopy => 'Вы делитесь своей копией';
	@override String playingOtherLength({required Object difference}) => 'Воспроизведение вашей копии, ${difference}';
	@override String get mismatchTitle => 'Ваш текст имеет другую длину';
	@override String mismatchDescription({required Object difference}) => 'Ваша ближайшая копия — ${difference}, чем видео комнаты. Это может быть другая версия или версия.';
	@override String get playAnyway => 'Играть в любом случае';
	@override String get chooseAnotherCopy => 'Выбрать другую копию';
	@override String get dontPlay => 'Не Играй';
	@override String get unavailableTitle => 'У вас нет этого видео';
	@override String get unavailableDescription => 'Luroka не удалось найти его в ваших библиотеках. Выберите копию самостоятельно или выполните поиск еще раз.';
	@override String get chooseCopy => 'Выберите копию';
	@override String get searchAgain => 'Искать снова';
	@override String get noCandidates => 'В ваших библиотеках копий не найдено.';
	@override String get choiceFailed => 'Не удалось воспроизвести эту копию для комнаты.';
	@override String lengthLonger({required Object duration}) => '${duration} длиннее';
	@override String lengthShorter({required Object duration}) => '${duration} короче';
	@override String get lengthSame => 'Одинаковая длина';
	@override String get lengthUnknown => 'Длина неизвестна';
	@override String get joinCurrentPlayback => 'Присоединиться к текущему воспроизведению';
	@override String get joinCurrentPlaybackDescription => 'Вернуться к материалу, который сейчас смотрит организатор';
	@override String get stopMedia => 'Остановить видео для всех';
	@override String get syncOffset => 'Смещение синхронизации';
	@override String get syncOffsetDescription => 'Сдвиньте видео, если оно идет впереди или позади комнаты.';
	@override String offsetHint({required Object difference}) => 'Ваша копия ${difference}, чем видео комнаты.';
	@override String applyDifference({required Object offset}) => 'Используйте ${offset}.';
	@override String get offsetMinusSecond => '-1 с';
	@override String get offsetMinusTenth => '-100 мс';
	@override String get offsetPlusTenth => '+100 мс';
	@override String get offsetPlusSecond => '+1 с';
	@override String get participants => 'Участники';
	@override String participantCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n,
		one: 'Участник ${n}',
		few: '${n} участника',
		many: '${n} участников',
		other: '${n} участников',
	);
	@override String get hostBadge => 'ОРГАНИЗАТОР';
	@override String nameYou({required Object name}) => '${name} (Вы)';
	@override String get playerIdle => 'Простой';
	@override String get playerLoading => 'Загрузка';
	@override String get playerReady => 'Готово';
	@override String get playerBuffering => 'Буферизация';
	@override String get matchSearching => 'Поиск';
	@override String get matchMatched => 'Есть видео';
	@override String get matchMismatched => 'Разная длина';
	@override String get matchUnavailable => 'Нет видео';
	@override String participantOffset({required Object offset}) => 'Смещение ${offset}';
	@override String get makeHost => 'Назначить организатором';
	@override String get makeHostQuestion => 'Передать роль организатора?';
	@override String makeHostConfirm({required Object name}) => '${name} будет управлять воспроизведением и вести сессию для всех.';
	@override String get transfer => 'Передать';
	@override String get removeParticipant => 'Удалить из комнаты';
	@override String removeParticipantQuestion({required Object name}) => 'Удалить ${name}?';
	@override String removeParticipantConfirm({required Object name}) => '${name} выходит из комнаты. Они смогут снова присоединиться с помощью кода, если вы не закроете комнату.';
	@override String get remove => 'Удалить';
	@override String get roomSettings => 'Настройки комнаты';
	@override String get letEveryoneControl => 'Пусть каждый контролирует воспроизведение';
	@override String get lockRoom => 'Запираемая комната';
	@override String get lockRoomDescription => 'Никто новый не может присоединиться';
	@override String get leaveRoom => 'Покинуть комнату';
	@override String get leaveRoomQuestion => 'Покинуть комнату?';
	@override String get leaveRoomConfirm => 'Вы можете присоединиться снова, указав код комнаты.';
	@override String get leave => 'Покинуть';
	@override String get endRoom => 'Конечная комната';
	@override String get endRoomQuestion => 'Конечная комната?';
	@override String get endRoomConfirm => 'На этом комната для всех заканчивается.';
	@override String get end => 'Завершить';
	@override String get playBlockedTitle => 'Воспроизведение не началось';
	@override String get playBlockedDescription => 'Нажмите кнопку воспроизведения, чтобы начать просмотр вместе с комнатой.';
	@override late final _Translations$watchTogether$notices$ru notices = _Translations$watchTogether$notices$ru._(_root);
	@override late final _Translations$watchTogether$ended$ru ended = _Translations$watchTogether$ended$ru._(_root);
	@override late final _Translations$watchTogether$errors$ru errors = _Translations$watchTogether$errors$ru._(_root);
	@override String untitledEpisode({required Object number}) => 'Эпизод ${number}';
}

// Path: downloads
class _Translations$downloads$ru extends Translations$downloads$en {
	_Translations$downloads$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Загрузки';
	@override String get manage => 'Управление';
	@override String get tvShows => 'Сериалы';
	@override String get movies => 'Фильмы';
	@override String get music => 'Музыка';
	@override String tracksQueued({required Object count}) => '${count} треков в очереди на загрузку';
	@override String get noDownloads => 'Загрузок пока нет';
	@override String get noDownloadsDescription => 'Загруженный контент появится здесь для просмотра офлайн';
	@override String get downloadNow => 'Загрузить';
	@override String get deleteDownload => 'Удалить загрузку';
	@override String get retryDownload => 'Повторить загрузку';
	@override String get downloadQueued => 'Загрузка поставлена в очередь';
	@override String get downloadResumed => 'Загрузка возобновлена';
	@override String get serverErrorBitrate => 'Ошибка сервера: файл может превышать установленное на сервере ограничение битрейта';
	@override String get storageFull => 'Загрузки остановлены, чтобы сохранить свободное место. Освободите место или выберите другое расположение для загрузок и повторите попытку.';
	@override String get storageUnavailable => 'Загрузки остановлены, так как не удалось проверить доступное место. Проверьте место загрузки и повторите попытку.';
	@override String episodesQueued({required Object count}) => '${count} эпизодов поставлено в очередь загрузки';
	@override String get downloadDeleted => 'Загрузка удалена';
	@override String deleteConfirm({required Object title}) => 'Удалить "${title}" с этого устройства?';
	@override String get deleteCollectionDownloads => 'Удалить загрузки';
	@override String deleteCollectionDownloadsConfirm({required Object title}) => 'Удалить все загрузки в «${title}» с этого устройства?';
	@override String get collectionDownloadsDeleted => 'Загрузки удалены.';
	@override String get cancelledDownloadTitle => 'Загрузка отменена';
	@override String get cancelledDownloadMessage => 'Эта загрузка была отменена. Что вы хотите сделать?';
	@override String get allEpisodesAlreadyDownloaded => 'Все эпизоды уже загружены';
	@override String get resumeDownload => 'Возобновить загрузку';
	@override String get cancelledDownload => 'Загрузка отменена';
	@override String syncingFile({required Object file, required Object status}) => '${file} (синхронизация ${status})';
	@override String downloadedFileClickToComplete({required Object file}) => '${file} загружен — нажмите, чтобы завершить';
	@override String get partialDownloadClickToComplete => 'Частично загружено — нажмите, чтобы завершить';
	@override String get deleting => 'Удаление...';
	@override String deletingWithProgress({required Object title, required Object current, required Object total}) => 'Удаление ${title}... (${current} из ${total})';
	@override String get queuedTooltip => 'В очереди';
	@override String queuedFilesTooltip({required Object files}) => 'В очереди: ${files}';
	@override String get downloadingTooltip => 'Загрузка...';
	@override String downloadingFilesTooltip({required Object files}) => 'Загрузка ${files}';
	@override String get noDownloadsTree => 'Нет загрузок';
	@override String get pauseAll => 'Приостановить все';
	@override String get resumeAll => 'Возобновить все';
	@override String get retryAll => 'Повторить все';
	@override String get retryFailed => 'Повторить неудачную загрузку';
	@override String get deleteAll => 'Удалить все';
	@override String get selectVersion => 'Выбрать версию';
	@override String get allEpisodes => 'Все эпизоды';
	@override String get unwatchedOnly => 'Только непросмотренные';
	@override String nextNUnwatched({required Object count}) => 'Следующие ${count} непросмотренных';
	@override String get customAmount => 'Указать количество...';
	@override String get includeSpecials => 'Включить спецвыпуски';
	@override String get howManyEpisodes => 'Сколько эпизодов?';
	@override String get invalidEpisodeCount => 'Введите допустимое количество эпизодов.';
	@override String get keepSynced => 'Синхронизировать';
	@override String get downloadOnce => 'Скачать один раз';
	@override String keepNUnwatched({required Object count}) => 'Хранить ${count} непросмотренных';
	@override String get editSyncRule => 'Редактировать правило синхронизации';
	@override String get removeSyncRule => 'Удалить правило синхронизации';
	@override String removeSyncRuleConfirm({required Object title}) => 'Прекратить синхронизацию «${title}»? Скачанные эпизоды будут сохранены.';
	@override String removeListSyncRuleConfirm({required Object title}) => 'Прекратить синхронизацию "${title}"?';
	@override String get deleteSyncRuleDownloads => 'Также удалить связанные загрузки';
	@override String get deleteSyncRuleDownloadsDescription => 'Загрузки, используемые другим правилом синхронизации или профилем, будут сохранены.';
	@override String syncRuleCreated({required Object count}) => 'Правило синхронизации создано — хранится ${count} непросмотренных эпизодов';
	@override String get syncRuleUpdated => 'Правило синхронизации обновлено';
	@override String get syncRuleRemoved => 'Правило синхронизации удалено';
	@override String get syncRuleAndDownloadsRemoved => 'Правило синхронизации и связанные загрузки удалены';
	@override String get syncRuleCleanupBusy => 'Правила синхронизации сейчас обновляются. Попробуйте снова чуть позже.';
	@override String get syncRuleCleanupUnavailable => 'Не удалось надёжно определить связанные загрузки. Переподключите сервер и повторите попытку либо удалите правило без удаления загрузок.';
	@override String syncedNewEpisodes({required Object count, required Object title}) => 'Синхронизировано ${count} новых эпизодов для ${title}';
	@override String get activeSyncRules => 'Правила синхронизации';
	@override String get noSyncRules => 'Нет правил синхронизации';
	@override String get manageSyncRule => 'Управление синхронизацией';
	@override String get editEpisodeCount => 'Количество эпизодов';
	@override String get editSyncFilter => 'Фильтр синхронизации';
	@override String get syncAllItems => 'Синхронизация всех элементов';
	@override String get syncUnwatchedItems => 'Синхронизация непросмотренных элементов';
	@override String syncRuleServerContext({required Object server, required Object status}) => 'Сервер: ${server} • ${status}';
	@override String get syncRuleAvailable => 'Доступен';
	@override String get syncRuleOffline => 'Офлайн';
	@override String get syncRuleSignInRequired => 'Требуется вход';
	@override String get syncRuleAccessDenied => 'Доступ запрещён';
	@override String get syncRuleNotAvailableForProfile => 'Недоступно для текущего профиля';
	@override String get syncRuleUnknownServer => 'Неизвестный сервер';
	@override String get syncRuleListCreated => 'Правило синхронизации создано';
	@override late final _Translations$downloads$backgroundWarning$ru backgroundWarning = _Translations$downloads$backgroundWarning$ru._(_root);
	@override String get options => 'Параметры загрузок';
	@override late final _Translations$downloads$groupings$ru groupings = _Translations$downloads$groupings$ru._(_root);
	@override String get unknownLibrary => 'Неизвестная библиотека';
	@override String get unknownShow => 'Неизвестный сериал';
	@override String get unknownSeason => 'Неизвестный сезон';
	@override String get unknownAlbum => 'Неизвестный альбом';
	@override String completedOfTotal({required Object completed, required Object total}) => 'Завершено: ${completed}/${total}';
	@override String get errorFileNotFound => 'Файл не найден (404)';
	@override String get errorDownloadNotAllowed => 'Сервер не разрешает загрузку (403)';
	@override String get errorDownloadFailed => 'Не удалось выполнить загрузку';
	@override String errorDownloadFailedWithReason({required Object reason}) => 'Не удалось выполнить загрузку: ${reason}';
	@override String errorHttpStatus({required Object status}) => 'Не удалось выполнить загрузку (HTTP ${status})';
	@override String errorPostProcessing({required Object reason}) => 'Не удалось выполнить постобработку: ${reason}';
	@override String get reasonFileNotSaved => 'не удалось сохранить файл на этом устройстве';
	@override String get reasonCannotResume => 'не удалось возобновить частичную загрузку';
	@override String get reasonDeviceStorageFull => 'на этом устройстве закончилось место';
	@override String get notificationDownloading => 'Загрузка...';
	@override String get notificationComplete => 'Загрузка завершена';
	@override String get notificationPaused => 'Загрузка приостановлена';
}

// Path: shaders
class _Translations$shaders$ru extends Translations$shaders$en {
	_Translations$shaders$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Шейдеры';
	@override String get noShaderDescription => 'Без улучшения видео';
	@override String get nvscalerDescription => 'Масштабирование NVIDIA для более чёткого видео';
	@override String get artcnnVariantNeutral => 'Нейтральный';
	@override String get artcnnVariantDenoise => 'Шумоподавление';
	@override String get artcnnVariantDenoiseSharpen => 'Шумоподавление + резкость';
	@override String get qualityFast => 'Быстрый';
	@override String get qualityHQ => 'Высокое качество';
	@override String get mode => 'Режим';
	@override String get importShader => 'Импортировать шейдер';
	@override String get customShaderDescription => 'Пользовательский GLSL шейдер';
	@override String get shaderImported => 'Шейдер импортирован';
	@override String get shaderImportFailed => 'Не удалось импортировать шейдер';
	@override String get deleteShader => 'Удалить шейдер';
	@override String deleteShaderConfirm({required Object name}) => 'Удалить "${name}"?';
}

// Path: companionRemote
class _Translations$companionRemote$ru extends Translations$companionRemote$en {
	_Translations$companionRemote$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Пульт управления';
	@override String connectedTo({required Object name}) => 'Подключено к ${name}';
	@override String get unknownDevice => 'Неизвестное устройство';
	@override late final _Translations$companionRemote$session$ru session = _Translations$companionRemote$session$ru._(_root);
	@override late final _Translations$companionRemote$pairing$ru pairing = _Translations$companionRemote$pairing$ru._(_root);
	@override late final _Translations$companionRemote$remote$ru remote = _Translations$companionRemote$remote$ru._(_root);
	@override late final _Translations$companionRemote$errors$ru errors = _Translations$companionRemote$errors$ru._(_root);
	@override String get closedBeforeAuth => 'Соединение было закрыто до аутентификации';
}

// Path: videoSettings
class _Translations$videoSettings$ru extends Translations$videoSettings$en {
	_Translations$videoSettings$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get playbackSpeed => 'Скорость воспроизведения';
	@override String get normalSpeed => 'Обычная';
	@override String sleepTimerActive({required Object duration}) => 'Активен (${duration})';
	@override String get zoom => 'Масштаб';
	@override String get sleepTimer => 'Таймер сна';
	@override String get audioSync => 'Синхронизация аудио';
	@override String get subtitleSync => 'Синхронизация субтитров';
	@override String get hdr => 'HDR';
	@override String get hdrUnsupported => 'HDR здесь недоступен: этот композитор рабочего стола или видеовыход не поддерживает его передачу.';
	@override String get hdrToneMapping => 'Тональное отображение HDR';
	@override String get hdrToneMappingCompositor => 'Композитор';
	@override String get hdrToneMappingCompositorDescription => 'Передавать метаданные HDR источника без изменений, чтобы тональное отображение выполнял композитор рабочего стола.';
	@override String get hdrToneMappingPlayer => 'Проигрыватель';
	@override String get hdrToneMappingPlayerDescription => 'Выполнять тональное отображение в проигрывателе с учётом пиковой яркости дисплея, а затем передавать результат композитору.';
	@override String get hdrToneMappingFailed => 'Не удалось изменить тональное отображение HDR — предыдущий режим по-прежнему активен.';
	@override String get audioOutput => 'Аудиовыход';
	@override String get performanceOverlay => 'Оверлей производительности';
	@override String get audioOutputDolbyAtmos => 'Dolby Atmos';
	@override String get audioOutputDolbyAudio => 'Dolby Audio';
	@override String get audioOutputSurround => 'Объёмный звук';
	@override String get audioOutputSpatial => 'Пространственное аудио';
	@override String get audioOutputStereo => 'Стерео';
	@override String get audioNormalization => 'Нормализация громкости';
	@override String get audioNormalizationDisablesPassthrough => 'Декодирует аудио в PCM; сквозной вывод отключён, пока эта опция включена';
}

// Path: performanceOverlay
class _Translations$performanceOverlay$ru extends Translations$performanceOverlay$en {
	_Translations$performanceOverlay$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get color => 'Цвет';
	@override String get performance => 'Производительность';
	@override String get buffer => 'Буфер';
	@override String get app => 'Приложение';
	@override String get decoder => 'Декодер';
	@override String get rawDecoder => 'Raw-декодер';
	@override String get tunneling => 'Туннелирование';
	@override String get passthrough => 'Сквозной вывод';
	@override String get aspect => 'Соотношение';
	@override String get rotation => 'Поворот';
	@override String get dvSource => 'Источник DV';
	@override String get dvPath => 'Путь DV';
	@override String get dvRouteDecoder => 'Декодер Dolby Vision';
	@override String get dvRouteDecoderP81 => 'Декодер Dolby Vision (P7→8.1)';
	@override String get dvRouteBaseLayer => 'Базовый слой';
	@override String get dvRouteBaseLayerHdr10 => 'Базовый слой HDR10';
	@override String get dvRouteBaseLayerHlg => 'Базовый слой ГВУ';
	@override String get dvRouteBaseLayerSdr => 'Базовый слой SDR';
	@override String get dvRouteReshaped => 'Изменение формы RPU (gpu-next)';
	@override String get p7Conversion => 'Конв. P7';
	@override String get sampleRate => 'Частота дискр.';
	@override String get pixelFormat => 'Формат пикселей';
	@override String get hwFormat => 'Формат HW';
	@override String get matrix => 'Матрица';
	@override String get primaries => 'Основные цвета';
	@override String get transfer => 'Передача';
	@override String get renderFps => 'FPS рендера';
	@override String get displayFps => 'FPS дисплея';
	@override String get avSync => 'A/V синхр.';
	@override String get dropped => 'Пропущено';
	@override String get dvRpus => 'DV RPU';
	@override String get dvRpuAverage => 'Сред. DV RPU';
	@override String get dvSampleAverage => 'Сред. сэмпл DV';
	@override String get maxLuma => 'Макс. яркость';
	@override String get minLuma => 'Мин. яркость';
	@override String get maxCll => 'MaxCLL';
	@override String get maxFall => 'MaxFALL';
	@override String get cacheUsed => 'Кэш использован';
	@override String get cacheLimit => 'Лимит кэша';
	@override String get speed => 'Скорость';
	@override String get player => 'Плеер';
	@override String get memory => 'Память';
	@override String get uiFps => 'UI FPS';
	@override String get fps => 'FPS';
	@override String get decoderAndroidHw => 'Android, аппаратный';
	@override String get decoderNvidiaHw => 'NVIDIA, аппаратный';
	@override String get decoderQualcommHw => 'Qualcomm, аппаратный';
	@override String get decoderMediatekHw => 'MediaTek, аппаратный';
	@override String get decoderExynosHw => 'Exynos, аппаратный';
	@override String get decoderSoftware => 'Программный';
	@override String get decoderHardware => 'Аппаратный';
	@override String get tunnelingActive => 'Активно';
	@override String dvRpuFailed({required Object converted, required Object failures}) => '${converted} (ошибок: ${failures})';
}

// Path: externalPlayer
class _Translations$externalPlayer$ru extends Translations$externalPlayer$en {
	_Translations$externalPlayer$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Внешний плеер';
	@override String get useExternalPlayer => 'Использовать внешний плеер';
	@override String get useExternalPlayerDescription => 'Открывать видео в другом приложении';
	@override String get selectPlayer => 'Выбрать плеер';
	@override String get customPlayers => 'Свои плееры';
	@override String get systemDefault => 'Системный по умолчанию';
	@override String get addCustomPlayer => 'Добавить свой плеер';
	@override String get playerName => 'Название плеера';
	@override String get playerNameHint => 'Мой плеер';
	@override String get playerCommand => 'Команда';
	@override String get playerPackage => 'Имя пакета';
	@override String get playerUrlScheme => 'URL-схема';
	@override String get off => 'Выкл.';
	@override String get launchFailed => 'Не удалось открыть внешний плеер';
	@override String appNotInstalled({required Object name}) => '${name} не установлен';
	@override String get playInExternalPlayer => 'Воспроизвести во внешнем плеере';
}

// Path: metadataEdit
class _Translations$metadataEdit$ru extends Translations$metadataEdit$en {
	_Translations$metadataEdit$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get editMetadata => 'Редактировать...';
	@override String get screenTitle => 'Редактировать метаданные';
	@override String get basicInfo => 'Основная информация';
	@override String get artwork => 'Обложка';
	@override String get advancedSettings => 'Дополнительные настройки';
	@override String get title => 'Название';
	@override String get sortTitle => 'Название для сортировки';
	@override String get originalTitle => 'Оригинальное название';
	@override String get releaseDate => 'Дата выпуска';
	@override String get contentRating => 'Возрастной рейтинг';
	@override String get studio => 'Студия';
	@override String get tagline => 'Слоган';
	@override String get summary => 'Описание';
	@override String get poster => 'Постер';
	@override String get background => 'Фон';
	@override String get logo => 'Логотип';
	@override String get squareArt => 'Квадратное изображение';
	@override String get selectPoster => 'Выбрать постер';
	@override String get selectBackground => 'Выбрать фон';
	@override String get selectLogo => 'Выбрать логотип';
	@override String get selectSquareArt => 'Выбрать квадратное изображение';
	@override String get fromUrl => 'По URL';
	@override String get uploadFile => 'Загрузить файл';
	@override String get enterImageUrl => 'Введите URL изображения';
	@override String get imageUrl => 'URL изображения';
	@override String get metadataUpdated => 'Метаданные обновлены';
	@override String get metadataUpdateFailed => 'Не удалось обновить метаданные';
	@override String get artworkUpdated => 'Обложка обновлена';
	@override String get artworkUpdateFailed => 'Не удалось обновить обложку';
	@override String get noArtworkAvailable => 'Обложки недоступны';
	@override String artworkOption({required Object index}) => 'Вариант обложки ${index}';
	@override String selectedArtworkOption({required Object index}) => 'Вариант обложки ${index}, выбран';
	@override String get notSet => 'Не задано';
	@override String get libraryDefault => 'По умолчанию библиотеки';
	@override String get accountDefault => 'По умолчанию аккаунта';
	@override String get seriesDefault => 'По умолчанию сериала';
	@override String get episodeSorting => 'Сортировка эпизодов';
	@override String get oldestFirst => 'Сначала старые';
	@override String get newestFirst => 'Сначала новые';
	@override String get keep => 'Сохранять';
	@override String get allEpisodes => 'Все эпизоды';
	@override String latestEpisodes({required Object count}) => '${count} последних эпизодов';
	@override String get latestEpisode => 'Последний эпизод';
	@override String episodesAddedPastDays({required Object count}) => 'Эпизоды, добавленные за последние ${count} дней';
	@override String get deleteAfterPlaying => 'Удалять эпизоды после просмотра';
	@override String get never => 'Никогда';
	@override String get afterADay => 'Через день';
	@override String get afterAWeek => 'Через неделю';
	@override String get afterAMonth => 'Через месяц';
	@override String get onNextRefresh => 'При следующем обновлении';
	@override String get seasons => 'Сезоны';
	@override String get show => 'Показать';
	@override String get hide => 'Скрыть';
	@override String get episodeOrdering => 'Порядок эпизодов';
	@override String get tmdbAiring => 'The Movie Database (по дате выхода)';
	@override String get tvdbAiring => 'TheTVDB (по дате выхода)';
	@override String get tvdbAbsolute => 'TheTVDB (абсолютный порядок)';
	@override String get metadataLanguage => 'Язык метаданных';
	@override String get useOriginalTitle => 'Использовать оригинальное название';
	@override String get preferredAudioLanguage => 'Предпочитаемый язык аудио';
	@override String get preferredSubtitleLanguage => 'Предпочитаемый язык субтитров';
	@override String get subtitleMode => 'Автовыбор субтитров';
	@override String get manuallySelected => 'Выбор вручную';
	@override String get shownWithForeignAudio => 'Показывать при иноязычном аудио';
	@override String get alwaysEnabled => 'Всегда включены';
	@override String get tags => 'Теги';
	@override String get addTag => 'Добавить тег';
	@override String get genre => 'Жанр';
	@override String get director => 'Режиссёр';
	@override String get writer => 'Сценарист';
	@override String get producer => 'Продюсер';
	@override String get country => 'Страна';
	@override String get collection => 'Коллекция';
	@override String get label => 'Метка';
	@override String get quickTag => 'Быстрый тег...';
}

// Path: matchScreen
class _Translations$matchScreen$ru extends Translations$matchScreen$en {
	_Translations$matchScreen$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get match => 'Сопоставить...';
	@override String get fixMatch => 'Исправить сопоставление...';
	@override String get unmatch => 'Сбросить сопоставление';
	@override String get unmatchConfirm => 'Очистить это совпадение? Plex будет считать его несопоставленным до повторного сопоставления.';
	@override String get unmatchSuccess => 'Сопоставление сброшено';
	@override String get unmatchFailed => 'Не удалось сбросить сопоставление';
	@override String get matchApplied => 'Сопоставление применено';
	@override String get matchFailed => 'Не удалось применить сопоставление';
	@override String get titleHint => 'Название';
	@override String get yearHint => 'Год';
	@override String get search => 'Поиск';
	@override String get noMatchesFound => 'Совпадений не найдено';
}

// Path: serverTasks
class _Translations$serverTasks$ru extends Translations$serverTasks$en {
	_Translations$serverTasks$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Задачи сервера';
	@override String get failedToLoad => 'Не удалось загрузить задачи';
	@override String get noTasks => 'Нет выполняемых задач';
}

// Path: trakt
class _Translations$trakt$ru extends Translations$trakt$en {
	_Translations$trakt$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Trakt';
	@override String get connected => 'Подключено';
	@override String connectedAs({required Object username}) => 'Подключено как @${username}';
	@override String get disconnectConfirm => 'Отключить аккаунт Trakt?';
	@override String get disconnectConfirmBody => 'Luroka перестанет отправлять события в Trakt. Можно подключить снова в любое время.';
	@override String get scrobble => 'Скробблинг в реальном времени';
	@override String get scrobbleDescription => 'Отправлять события воспроизведения, паузы и остановки в Trakt во время просмотра.';
	@override String get watchedSync => 'Синхронизация статуса просмотра';
	@override String get watchedSyncDescription => 'Когда вы отмечаете элементы как просмотренные в Luroka, они отмечаются и в Trakt.';
}

// Path: seerr
class _Translations$seerr$ru extends Translations$seerr$en {
	_Translations$seerr$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Seerr';
	@override String get connectTitle => 'Подключить Seerr';
	@override String get serverUrl => 'URL сервера';
	@override String get serverUrlHelper => 'Адрес вашего экземпляра Seerr';
	@override String get checkServer => 'Продолжить';
	@override String get signInWithJellyfin => 'Войти через Jellyfin';
	@override String get signInWithEmby => 'Войти через Emby';
	@override String get signInWithLocal => 'Использовать локальную учётную запись';
	@override String get email => 'Эл. почта';
	@override String get noSignInMethods => 'Этот экземпляр Seerr не предлагает способа входа, поддерживаемого Luroka.';
	@override String get instance => 'Экземпляр';
	@override String get disconnectConfirm => 'Отключить Seerr?';
	@override String get disconnectConfirmBody => 'Luroka забудет этот экземпляр Seerr. Подключитесь снова в любое время.';
	@override String get request => 'Запросить';
	@override String get request4k => 'Запросить в 4K';
	@override String get seasons => 'Сезоны';
	@override String get allSeasons => 'Все сезоны';
	@override String get advancedOptions => 'Дополнительно';
	@override String get destinationServer => 'Целевой сервер';
	@override String get qualityProfile => 'Профиль качества';
	@override String get rootFolder => 'Корневая папка';
	@override String get languageProfile => 'Языковой профиль';
	@override String get tags => 'Теги';
	@override String get noTags => 'Нет тегов';
	@override String defaultOption({required Object name}) => '${name} (по умолчанию)';
	@override String get animeNote => 'Этот сериал — аниме.';
	@override String get requestSubmitted => 'Запрос отправлен';
	@override String requestFailed({required Object error}) => 'Ошибка запроса: ${error}';
	@override String get requestsLoadFailed => 'Не удалось загрузить параметры запроса';
	@override String get nothingToRequest => 'Всё уже доступно или запрошено.';
	@override String get statusAvailable => 'Доступно';
	@override String get statusPartiallyAvailable => 'Частично доступно';
	@override String get statusRequested => 'Запрошено';
	@override String get statusProcessing => 'Обработка';
	@override String get statusBlocklisted => 'В списке блокировки';
	@override String couldNotReach({required Object url, required Object error}) => 'Не удалось связаться с ${url}: ${error}';
	@override String noInstanceAtUrl({required Object url, required Object status}) => 'По адресу ${url} нет экземпляра Seerr (HTTP ${status})';
	@override String get behindAuthProxy => 'Вместо Seerr ответил аутентифицирующий обратный прокси (SSO или HTTP-аутентификация). Luroka не может войти через него: разрешите пути /api/v1 Seerr обходить прокси для этого приложения или используйте адрес, ведущий к Seerr напрямую.';
	@override String get invalidUrl => 'Введите адрес сервера, например https://seerr.example.com';
	@override String get quickConnectUnsupported => 'Этот экземпляр Seerr не поддерживает Quick Connect. Нужна версия Seerr 3.4 или новее.';
	@override String get notInitialized => 'Первоначальная настройка этого экземпляра Seerr не завершена';
	@override String get noPlexTokenForReauth => 'Нет токена Plex для повторного входа';
	@override String get noStoredCredentials => 'Нет сохранённых учётных данных для повторного входа';
	@override String get signInRejected => 'Вход был отклонён';
	@override String get noSessionCookie => 'Seerr не выдал cookie-файл сеанса';
	@override String get freshCookieRejected => 'Seerr отклонил новый cookie-файл сеанса';
	@override String get noUserInformation => 'Seerr не вернул сведения о пользователе';
	@override String get sessionRejectedAfterReauth => 'Сеанс был отклонён после повторного входа';
	@override String get permissionDenied => 'Seerr отклонил это действие: у вашей учётной записи больше нет необходимого разрешения';
	@override String get permissionRevoked => 'У вас больше нет разрешения запрашивать это';
}

// Path: services
class _Translations$services$ru extends Translations$services$en {
	_Translations$services$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Сервисы';
	@override String get hubSubtitle => 'Синхронизируйте прогресс просмотра и запрашивайте новые фильмы и сериалы.';
	@override String get discoverySection => 'Поиск и запросы';
	@override String get trackingSection => 'Отслеживание и списки';
	@override String get seerrDescription => 'Находите фильмы и сериалы и отправляйте запросы через свой сервер Seerr.';
	@override String get tmdbDescription => 'Ищите фильмы и сериалы, постеры, рейтинги и сведения о них.';
	@override String get traktDescription => 'Отслеживайте фильмы и сериалы, синхронизируйте статус просмотра и управляйте списком.';
	@override String get malDescription => 'Синхронизируйте список аниме и прогресс просмотра.';
	@override String get anilistDescription => 'Следите за аниме и синхронизируйте прогресс просмотра с AniList.';
	@override String get simklDescription => 'Отслеживайте фильмы, сериалы и аниме с помощью Simkl.';
	@override String get mdblistDescription => 'Подключите списки MDBList и рейтинги фильмов.';
	@override String connectionIntro({required Object service}) => 'Подключите ${service} к текущему профилю Luroka. Здесь можно в любое время управлять подключением и его настройками.';
	@override String connectService({required Object service}) => 'Подключить ${service}';
	@override String get seerrConnectDescription => 'Подключите сервер Seerr, чтобы находить и запрашивать фильмы и сериалы в Luroka.';
	@override String get seerrServerStep => 'Введите адрес, по которому вы открываете Seerr. Мы проверим, какие способы входа поддерживает сервер.';
	@override String get seerrSignInStep => 'Выберите способ входа, поддерживаемый сервером.';
	@override String get integrations => 'Интеграции';
	@override String get notConnected => 'Не подключено';
	@override String connectedAs({required Object username}) => 'Подключено как @${username}';
	@override String get scrobble => 'Автоматически отслеживать прогресс';
	@override String get scrobbleDescription => 'Обновляет список, когда вы заканчиваете эпизод или фильм.';
	@override String disconnectConfirm({required Object service}) => 'Отключить ${service}?';
	@override String disconnectConfirmBody({required Object service}) => 'Luroka перестанет обновлять ${service}. Подключите снова в любое время.';
	@override String connectFailed({required Object service}) => 'Не удалось подключиться к ${service}. Попробуйте ещё раз.';
	@override late final _Translations$services$names$ru names = _Translations$services$names$ru._(_root);
	@override late final _Translations$services$simklReconnect$ru simklReconnect = _Translations$services$simklReconnect$ru._(_root);
	@override late final _Translations$services$deviceCode$ru deviceCode = _Translations$services$deviceCode$ru._(_root);
	@override late final _Translations$services$oauthProxy$ru oauthProxy = _Translations$services$oauthProxy$ru._(_root);
	@override late final _Translations$services$pendingAuth$ru pendingAuth = _Translations$services$pendingAuth$ru._(_root);
	@override late final _Translations$services$libraryFilter$ru libraryFilter = _Translations$services$libraryFilter$ru._(_root);
}

// Path: addServer
class _Translations$addServer$ru extends Translations$addServer$en {
	_Translations$addServer$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String addMediaBrowserTitle({required Object product}) => 'Добавить сервер ${product}';
	@override String get serverUrls => 'URL-адреса сервера';
	@override String get serverUrlsHelper => 'Можно указать несколько URL через запятую.';
	@override String get findServer => 'Найти сервер';
	@override String searchingLocalMediaBrowserServers({required Object product}) => 'Поиск локальных серверов ${product}...';
	@override String localMediaBrowserServers({required Object product}) => 'Локальные серверы ${product}';
	@override String get username => 'Имя пользователя';
	@override String get password => 'Пароль';
	@override String get signIn => 'Войти';
	@override String get change => 'Изменить';
	@override String get required => 'Обязательно';
	@override String couldNotReachServer({required Object error}) => 'Не удалось связаться с сервером: ${error}';
	@override String signInFailed({required Object error}) => 'Не удалось войти: ${error}';
	@override String quickConnectFailed({required Object error}) => 'Quick Connect не удался: ${error}';
	@override String get addPlexTitle => 'Войти через Plex';
	@override String get pinExpired => 'Срок действия PIN истёк до входа. Попробуйте снова.';
	@override String failedToRegisterAccount({required Object error}) => 'Не удалось зарегистрировать учётную запись: ${error}';
	@override String enterMediaBrowserUrlError({required Object product}) => 'Введите URL вашего сервера ${product}';
	@override String get addConnectionTitle => 'Добавить подключение';
	@override String addConnectionTitleScoped({required Object name}) => 'Добавить в ${name}';
	@override String get signInWithPlexCard => 'Войти через Plex';
	@override String get signInWithPlexCardSubtitle => 'Авторизуйте это устройство. Общие серверы будут добавлены.';
	@override String get signInWithPlexCardSubtitleScoped => 'Авторизуйте аккаунт Plex. Пользователи Главная станут профилями.';
	@override String connectToMediaBrowserCard({required Object product}) => 'Подключиться к ${product}';
	@override String get connectToMediaBrowserCardSubtitle => 'Введите URL сервера, имя пользователя и пароль.';
	@override String connectToMediaBrowserCardSubtitleScoped({required Object product, required Object name}) => 'Войдите на свой сервер ${product}. Будет привязано к ${name}.';
	@override String get borrowFromAnotherProfile => 'Использовать подключение другого профиля';
	@override String get borrowFromAnotherProfileSubtitle => 'Повторно используйте подключение другого профиля. Для защищённых профилей потребуется PIN.';
	@override String get invalidCredentials => 'Неверное имя пользователя или пароль';
	@override String get authResponseNotJson => 'Ответ аутентификации не является допустимым JSON';
	@override String get authResponseIncomplete => 'Ответ сервера при входе оказался неполным';
	@override String get quickConnectRejected => 'Quick Connect был отклонён сервером';
	@override String get quickConnectNotJson => 'Ответ Quick Connect не является допустимым JSON';
	@override String get quickConnectMissingFields => 'В ответе Quick Connect отсутствует код или секрет';
	@override String get quickConnectPollRejected => 'Опрос Quick Connect был отклонён сервером';
	@override String get serverTimedOut => 'Сервер не ответил вовремя';
	@override String get responseNotJson => 'Ответ сервера не является допустимым JSON';
	@override String responseMissingIdentity({required Object product}) => 'В ответе отсутствует идентификатор или имя сервера. Это точно сервер ${product}?';
	@override String probeFailed({required Object error}) => 'Не удалось связаться с сервером: ${error}';
	@override String enterAtLeastOneUrl({required Object product}) => 'Введите хотя бы один URL сервера ${product}';
	@override String noReachableServer({required Object product}) => 'Не найдено ни одного доступного сервера ${product}';
	@override String urlsPointToDifferentServers({required Object product}) => 'Эти URL указывают на разные серверы ${product}';
	@override String urlDoesNotMatchServer({required Object product}) => 'Этот URL не соответствует серверу ${product}';
	@override String get redirectUnsupported => 'Сервер перенаправил на неподдерживаемый URL';
	@override String redirectDifferentHost({required Object product}) => 'Сервер перенаправил на другой хост. Введите конечный URL ${product} напрямую.';
	@override String get redirectInsecure => 'Сервер перенаправил с HTTPS на небезопасный URL';
	@override String redirectUnsupportedEnterFinal({required Object product}) => 'Сервер перенаправил на неподдерживаемый URL. Введите конечный URL ${product} напрямую.';
}

// Path: appIcon.names
class _Translations$appIcon$names$ru extends Translations$appIcon$names$en {
	_Translations$appIcon$names$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get midnight => 'Полночь';
	@override String get ember => 'Эмбер';
	@override String get paper => 'Бумага';
	@override String get oled => 'OLED';
	@override String get line => 'Линия';
	@override String get ocean => 'Океан';
	@override String get ultraviolet => 'Ультрафиолетовый';
	@override String get matcha => 'Матча';
	@override String get sunset => 'Закат';
	@override String get gold => 'Золото';
	@override String get titanium => 'Титан';
	@override String get glass => 'Стекло';
	@override String get crt => 'ЭЛТ';
	@override String get vhs => 'VHS';
	@override String get synthwave => 'Синтвейв';
	@override String get pixel => 'Пиксель';
	@override String get neon => 'Неон';
	@override String get sticker => 'наклейка';
	@override String get ticket => 'Билет';
	@override String get pop => 'Поп';
	@override String get strata => 'Страта';
	@override String get facet => 'Фасет';
	@override String get tilde => 'Тильда';
}

// Path: common.ratingSource
class _Translations$common$ratingSource$ru extends Translations$common$ratingSource$en {
	_Translations$common$ratingSource$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get critic => 'Критики';
	@override String get audience => 'Зрители';
	@override String get imdb => 'IMDb';
	@override String get tmdb => 'TMDB';
	@override String get rottenTomatoes => 'Rotten Tomatoes';
	@override String get simkl => 'Simkl';
	@override String get mal => 'MyAnimeList';
	@override String get anilist => 'AniList';
	@override String get trakt => 'Trakt';
	@override String get rottenTomatoesCritic => 'Критики Rotten Tomatoes';
	@override String get rottenTomatoesAudience => 'Зрители Rotten Tomatoes';
	@override String get metacritic => 'Metacritic';
	@override String get letterboxd => 'Letterboxd';
}

// Path: common.mediaKind
class _Translations$common$mediaKind$ru extends Translations$common$mediaKind$en {
	_Translations$common$mediaKind$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get movie => 'Фильм';
	@override String get show => 'Сериал';
	@override String get season => 'Сезон';
	@override String get episode => 'Эпизод';
	@override String get artist => 'Исполнитель';
	@override String get album => 'Альбом';
	@override String get track => 'Трек';
	@override String get collection => 'Коллекция';
	@override String get playlist => 'Плейлист';
	@override String get clip => 'Клип';
	@override String get photo => 'Фото';
	@override String get folder => 'Папка';
}

// Path: supporter.errors
class _Translations$supporter$errors$ru extends Translations$supporter$errors$en {
	_Translations$supporter$errors$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get storeUnavailable => 'Покупки недоступны. Убедитесь, что вы вошли в магазин и на этом устройстве разрешены покупки.';
	@override String get productNotFound => 'Покупка Supporter сейчас недоступна в вашем магазине.';
	@override String get productQueryFailed => 'Не удалось загрузить цену. Проверьте подключение и повторите попытку.';
	@override String get purchaseFailed => 'Покупка не прошла. Попробуйте еще раз.';
	@override String get restoreFailed => 'Не удалось связаться с магазином, чтобы восстановить покупку. Попробуйте еще раз.';
	@override String get nothingToRestore => 'Для этой учетной записи магазина не обнаружено покупок Supporter.';
}

// Path: themeEditor.slots
class _Translations$themeEditor$slots$ru extends Translations$themeEditor$slots$en {
	_Translations$themeEditor$slots$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get bg => 'Фон';
	@override String get surface => 'Поверхность';
	@override String get outline => 'Схема';
	@override String get text => 'Текст';
	@override String get textMuted => 'Вторичный текст';
	@override String get accent => 'Акцент';
}

// Path: themeEditor.contrast
class _Translations$themeEditor$contrast$ru extends Translations$themeEditor$contrast$en {
	_Translations$themeEditor$contrast$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get textOnBg => 'Текст на заднем плане';
	@override String get textOnSurface => 'Текст на поверхности';
	@override String get textMutedOnBg => 'Дополнительный текст на заднем плане';
	@override String get textMutedOnSurface => 'Вторичный текст на поверхности';
	@override String get accentOnBg => 'Акцент на фоне';
	@override String get accentOnSurface => 'Акцент на поверхности';
	@override String get labelOnAccent => 'Надпись на кнопке на акценте';
}

// Path: hotkeys.actions
class _Translations$hotkeys$actions$ru extends Translations$hotkeys$actions$en {
	_Translations$hotkeys$actions$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get playPause => 'Воспроизведение/Пауза';
	@override String get volumeUp => 'Громкость выше';
	@override String get volumeDown => 'Громкость ниже';
	@override String seekForward({required Object seconds}) => 'Перемотка вперёд (${seconds}с)';
	@override String seekBackward({required Object seconds}) => 'Перемотка назад (${seconds}с)';
	@override String get fullscreenToggle => 'Полноэкранный режим';
	@override String get muteToggle => 'Вкл./выкл. звук';
	@override String get subtitleToggle => 'Вкл./выкл. субтитры';
	@override String get audioTrackNext => 'Следующая аудиодорожка';
	@override String get subtitleTrackNext => 'Следующая дорожка субтитров';
	@override String get chapterNext => 'Следующая глава';
	@override String get chapterPrevious => 'Предыдущая глава';
	@override String get episodeNext => 'Следующая серия';
	@override String get episodePrevious => 'Предыдущая серия';
	@override String get speedIncrease => 'Увеличить скорость';
	@override String get speedDecrease => 'Уменьшить скорость';
	@override String get speedReset => 'Сбросить скорость';
	@override String get zoomIn => 'Увеличить масштаб';
	@override String get zoomOut => 'Уменьшить масштаб';
	@override String get zoomReset => 'Сбросить масштаб';
	@override String get subSeekNext => 'К следующему субтитру';
	@override String get subSeekPrev => 'К предыдущему субтитру';
	@override String get shaderToggle => 'Вкл./выкл. шейдеры';
	@override String get skipMarker => 'Пропустить вступление/титры';
	@override String get screenshot => 'Сделать снимок экрана';
}

// Path: videoControls.pipErrors
class _Translations$videoControls$pipErrors$ru extends Translations$videoControls$pipErrors$en {
	_Translations$videoControls$pipErrors$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get androidVersion => 'Требуется Android 8.0 или новее';
	@override String get iosVersion => 'Требуется iOS 15.0 или новее';
	@override String get permissionDisabled => 'Режим «картинка в картинке» отключён. Включите его в системных настройках.';
	@override String get notSupported => 'Устройство не поддерживает режим «картинка в картинке»';
	@override String get voSwitchFailed => 'Не удалось переключить видеовыход для «картинки в картинке»';
	@override String get failed => 'Не удалось запустить режим «картинка в картинке»';
	@override String get prepareFailed => 'Не удалось подготовить режим «картинка в картинке»';
	@override String unknown({required Object error}) => 'Произошла ошибка: ${error}';
}

// Path: accountPreferences.groups
class _Translations$accountPreferences$groups$ru extends Translations$accountPreferences$groups$en {
	_Translations$accountPreferences$groups$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get audioAndSubtitles => 'Аудио и субтитры';
	@override String get libraryDisplay => 'Библиотека';
	@override String get personalMedia => 'Личные медиа';
}

// Path: accountPreferences.subtitleModes
class _Translations$accountPreferences$subtitleModes$ru extends Translations$accountPreferences$subtitleModes$en {
	_Translations$accountPreferences$subtitleModes$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get none => 'Выбор вручную';
	@override String get noneDescription => 'Никогда не включать субтитры автоматически.';
	@override String get defaultMode => 'Следовать флагам дорожки';
	@override String get defaultModeDescription => 'Использовать флаги «по умолчанию» и «принудительная», сохранённые на каждой дорожке субтитров.';
	@override String get always => 'Всегда включены';
	@override String get alwaysDescription => 'Включать дорожку субтитров на предпочитаемом языке, когда такая существует.';
	@override String get onlyForced => 'Только принудительные субтитры';
	@override String get onlyForcedDescription => 'Загружать только дорожки, помеченные как принудительные.';
	@override String get smart => 'Показывать при иноязычном аудио';
	@override String get smartDescription => 'Включать субтитры только когда аудио на другом языке.';
}

// Path: accountPreferences.subtitleAccessibilityOptions
class _Translations$accountPreferences$subtitleAccessibilityOptions$ru extends Translations$accountPreferences$subtitleAccessibilityOptions$en {
	_Translations$accountPreferences$subtitleAccessibilityOptions$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get preferNonSdh => 'Предпочитать субтитры без SDH';
	@override String get preferSdh => 'Предпочитать субтитры SDH';
	@override String get onlySdh => 'Только субтитры SDH';
	@override String get onlyNonSdh => 'Только субтитры без SDH';
}

// Path: accountPreferences.forcedSubtitleOptions
class _Translations$accountPreferences$forcedSubtitleOptions$ru extends Translations$accountPreferences$forcedSubtitleOptions$en {
	_Translations$accountPreferences$forcedSubtitleOptions$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get preferNonForced => 'Предпочитать непринудительные субтитры';
	@override String get preferForced => 'Предпочитать принудительные субтитры';
	@override String get onlyForced => 'Только принудительные субтитры';
	@override String get onlyNonForced => 'Только непринудительные субтитры';
}

// Path: accountPreferences.watchedIndicatorOptions
class _Translations$accountPreferences$watchedIndicatorOptions$ru extends Translations$accountPreferences$watchedIndicatorOptions$en {
	_Translations$accountPreferences$watchedIndicatorOptions$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get none => 'Никогда';
	@override String get moviesAndShows => 'Фильмы и сериалы';
	@override String get movies => 'Только фильмы';
	@override String get shows => 'Только сериалы';
}

// Path: accountPreferences.mediaReviewsOptions
class _Translations$accountPreferences$mediaReviewsOptions$ru extends Translations$accountPreferences$mediaReviewsOptions$en {
	_Translations$accountPreferences$mediaReviewsOptions$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get usersAndCritics => 'Пользователи и критики';
	@override String get usersOnly => 'Только пользователи';
	@override String get criticsOnly => 'Только критики';
	@override String get nobody => 'Скрыто';
}

// Path: discover.person
class _Translations$discover$person$ru extends Translations$discover$person$en {
	_Translations$discover$person$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get born => 'Родился';
	@override String get died => 'Умер';
	@override String get birthplace => 'Место рождения';
	@override String dateWithAge({required Object date, required Object age}) => '${date} (возраст ${age})';
	@override String dateWithAgeAtDeath({required Object date, required Object age}) => '${date} (устаревший ${age})';
}

// Path: libraries.tabs
class _Translations$libraries$tabs$ru extends Translations$libraries$tabs$en {
	_Translations$libraries$tabs$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get recommended => 'Рекомендуемые';
	@override String get browse => 'Обзор';
	@override String get collections => 'Коллекции';
	@override String get playlists => 'Плейлисты';
}

// Path: libraries.groupings
class _Translations$libraries$groupings$ru extends Translations$libraries$groupings$en {
	_Translations$libraries$groupings$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Группировка';
	@override String get all => 'Все';
	@override String get movies => 'Фильмы';
	@override String get shows => 'Сериалы';
	@override String get seasons => 'Сезоны';
	@override String get episodes => 'Эпизоды';
	@override String get artists => 'Исполнители';
	@override String get albums => 'Альбомы';
	@override String get tracks => 'Треки';
	@override String get folders => 'Папки';
}

// Path: libraries.filterCategories
class _Translations$libraries$filterCategories$ru extends Translations$libraries$filterCategories$en {
	_Translations$libraries$filterCategories$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get genre => 'Жанр';
	@override String get year => 'Год';
	@override String get contentRating => 'Возрастной рейтинг';
	@override String get tag => 'Тег';
	@override String get unwatched => 'Непросмотренные';
	@override String get unplayed => 'Не прослушано';
	@override String get favorites => 'Избранное';
	@override String get filePath => 'Путь к файлу';
}

// Path: libraries.sortLabels
class _Translations$libraries$sortLabels$ru extends Translations$libraries$sortLabels$en {
	_Translations$libraries$sortLabels$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Название';
	@override String get dateAdded => 'Дата добавления';
	@override String get releaseDate => 'Дата выхода';
	@override String get rating => 'Рейтинг';
	@override String get communityRating => 'Оценка сообщества';
	@override String get criticRating => 'Оценка критиков';
	@override String get userRating => 'Пользовательская оценка';
	@override String get datePlayed => 'Дата просмотра';
	@override String get playCount => 'Количество просмотров';
	@override String get productionYear => 'Год производства';
	@override String get runtime => 'Длительность';
	@override String get officialRating => 'Официальный рейтинг';
	@override String get premiereDate => 'Дата премьеры';
	@override String get startDate => 'Дата начала';
	@override String get airTime => 'Время эфира';
	@override String get studio => 'Студия';
	@override String get random => 'Случайно';
	@override String get dateShared => 'Дата открытия доступа';
	@override String get latestEpisodeAirDate => 'Дата выхода последнего эпизода';
	@override String get lastEpisodeDateAdded => 'Дата добавления последнего эпизода';
	@override String get dateDownloaded => 'Дата загрузки';
	@override String get size => 'Размер';
	@override String get library => 'Библиотека';
}

// Path: libraries.advancedFilters
class _Translations$libraries$advancedFilters$ru extends Translations$libraries$advancedFilters$en {
	_Translations$libraries$advancedFilters$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get include => 'Включить';
	@override String get exclude => 'Исключить';
	@override String get any => 'Любой';
	@override String get yes => 'Да';
	@override String get no => 'Нет';
	@override String not({required Object value}) => 'Не ${value}';
	@override String valueCount({required Object count}) => '${count} выбрано';
	@override String valueCountExcluded({required Object count}) => '${count} исключен';
	@override String get searchValues => 'Значения поиска';
	@override String get noValues => 'Нет значений';
	@override String get matchContains => 'Содержит';
	@override String get matchNotContains => 'Не содержит';
	@override String get matchIs => 'Есть';
	@override String get matchIsNot => 'Нет';
	@override String get matchBeginsWith => 'Начинается с';
	@override String get matchEndsWith => 'Заканчивается на';
	@override String get textHint => 'Введите соответствующий';
	@override String get from => 'От';
	@override String get to => 'Чтобы';
	@override String range({required Object from, required Object to}) => '${from} — ${to}';
	@override String atLeast({required Object value}) => '${value} и выше';
	@override String atMost({required Object value}) => 'До ${value}';
	@override String dateLastDays({required Object count}) => 'Последние ${count} дней';
	@override String get dateLastYear => 'Прошлый год';
	@override String dateOlderThanDays({required Object count}) => 'Старше ${count} дней';
	@override String get dateOlderThanYear => 'Старше года';
}

// Path: explore.rows
class _Translations$explore$rows$ru extends Translations$explore$rows$en {
	_Translations$explore$rows$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get watchlist => 'Список для просмотра';
	@override String get recommendedMovies => 'Рекомендуемые фильмы';
	@override String get recommendedShows => 'Рекомендуемые сериалы';
	@override String get trendingMovies => 'Фильмы в тренде';
	@override String get trendingShows => 'Сериалы в тренде';
	@override String get popularMovies => 'Популярные фильмы';
	@override String get popularShows => 'Популярные сериалы';
	@override String get trendingAnime => 'Аниме в тренде';
	@override String get suggestedAnime => 'Рекомендуемые аниме';
	@override String get airingAnime => 'Топ выходящих аниме';
	@override String get popularAnime => 'Самые популярные аниме';
	@override String get trending => 'В тренде';
	@override String get upcomingMovies => 'Ожидаемые фильмы';
	@override String get upcomingShows => 'Ожидаемые сериалы';
}

// Path: explore.status
class _Translations$explore$status$ru extends Translations$explore$status$en {
	_Translations$explore$status$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get airing => 'Выходит';
	@override String get ended => 'Завершён';
	@override String get canceled => 'Отменён';
	@override String get upcoming => 'Скоро';
}

// Path: explore.badge
class _Translations$explore$badge$ru extends Translations$explore$badge$en {
	_Translations$explore$badge$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String rankPopular({required Object n}) => '#${n} по популярности';
	@override String rankAiring({required Object n}) => '#${n} в эфире';
	@override String rankRated({required Object n}) => '#${n} по оценкам';
	@override String rankTrending({required Object n}) => '#${n} в тренде';
	@override String rankSeasonal({required Object n, required Object season}) => '#${n} в сезоне ${season}';
	@override String watchingNow({required Object n}) => '${n} смотрят';
	@override String get available => 'Доступно';
	@override String get partiallyAvailable => 'Доступно частично';
	@override String get availableIn4k => 'Доступно в 4K';
	@override String get requested => 'Запрошено';
	@override String get pendingApproval => 'Ожидает одобрения';
	@override String get processing => 'В обработке';
	@override String get declined => 'Отклонено';
	@override String get requestFailed => 'Запрос не удался';
	@override String get requested4k => 'Запрошено в 4K';
	@override String seasonsAvailable({required Object available, required Object total}) => '${available}/${total} сезонов';
	@override String nextEpisodeIn({required Object episode, required Object duration}) => 'Серия ${episode} через ${duration}';
	@override String nextAiringIn({required Object duration}) => 'Далее через ${duration}';
	@override String episodesShort({required Object n}) => '${n} эп.';
	@override String minutesPerEpisode({required Object n}) => '${n} мин/эп.';
	@override String get adult => '18+';
}

// Path: explore.stats
class _Translations$explore$stats$ru extends Translations$explore$stats$en {
	_Translations$explore$stats$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String listed({required Object n}) => '${n} в списках';
	@override String viewersDay({required Object n}) => '${n} посмотрели сегодня';
	@override String viewersWeek({required Object n}) => '${n} посмотрели на этой неделе';
	@override String viewersMonth({required Object n}) => '${n} посмотрели в этом месяце';
	@override String viewersYear({required Object n}) => '${n} посмотрели в этом году';
	@override String viewersAllTime({required Object n}) => '${n} зрителей';
	@override String planning({required Object n}) => '${n} планируют посмотреть';
	@override String favorited({required Object n}) => '${n} в избранном';
	@override String dropRate({required Object percent}) => '${percent} бросили';
	@override String comments({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n,
		one: '${n} комментарий',
		few: '${n} комментария',
		many: '${n} комментариев',
		other: '${n} комментариев',
	);
	@override String votes({required Object n}) => '${n} голосов';
	@override String watching({required Object n}) => '${n} смотрят';
	@override String completed({required Object n}) => '${n} завершили';
	@override String onHold({required Object n}) => '${n} отложили';
	@override String dropped({required Object n}) => '${n} бросили';
}

// Path: explore.season
class _Translations$explore$season$ru extends Translations$explore$season$en {
	_Translations$explore$season$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get winter => 'Зима';
	@override String get spring => 'Весна';
	@override String get summer => 'Лето';
	@override String get fall => 'Осень';
	@override String withYear({required Object season, required Object year}) => '${season} ${year}';
}

// Path: explore.format
class _Translations$explore$format$ru extends Translations$explore$format$en {
	_Translations$explore$format$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get tv => 'ТВ';
	@override String get tvShort => 'Короткометражное ТВ';
	@override String get movie => 'Фильм';
	@override String get special => 'Спецвыпуск';
	@override String get ova => 'OVA';
	@override String get ona => 'ONA';
	@override String get music => 'Музыка';
	@override String get other => 'Другое';
}

// Path: explore.sourceMaterial
class _Translations$explore$sourceMaterial$ru extends Translations$explore$sourceMaterial$en {
	_Translations$explore$sourceMaterial$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get original => 'Оригинал';
	@override String get manga => 'Манга';
	@override String get lightNovel => 'Ранобэ';
	@override String get novel => 'Новелла';
	@override String get visualNovel => 'Визуальная новелла';
	@override String get game => 'Игра';
	@override String get webComic => 'Веб-комикс';
	@override String get musicRelease => 'Музыка';
	@override String get otherMedia => 'Другое';
}

// Path: explore.creditRole
class _Translations$explore$creditRole$ru extends Translations$explore$creditRole$en {
	_Translations$explore$creditRole$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get actor => 'Актер';
	@override String get director => 'Режиссёр';
	@override String get writer => 'Сценарист';
	@override String get producer => 'Продюсер';
	@override String get creator => 'Создатель';
	@override String get composer => 'Композитор';
}

// Path: explore.relation
class _Translations$explore$relation$ru extends Translations$explore$relation$en {
	_Translations$explore$relation$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get prequel => 'Приквел';
	@override String get sequel => 'Сиквел';
	@override String get sideStory => 'Побочная история';
	@override String get spinOff => 'Спин-офф';
	@override String get alternativeVersion => 'Альтернативная версия';
	@override String get summary => 'Краткое изложение';
	@override String get parentStory => 'Основная история';
	@override String get adaptation => 'Адаптация';
	@override String get other => 'Связано';
}

// Path: explore.detail
class _Translations$explore$detail$ru extends Translations$explore$detail$en {
	_Translations$explore$detail$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get originalTitle => 'Оригинальное название';
	@override String get alsoKnownAs => 'Также известен как';
	@override String get studios => 'Студии';
	@override String get country => 'Страна';
	@override String get language => 'Язык';
	@override String get released => 'Выпущено';
	@override String get physicalRelease => 'На диске';
	@override String get ended => 'Завершено';
	@override String addedOn({required Object date}) => 'Добавлено ${date}';
	@override String get yourRating => 'Ваша оценка';
	@override String get budget => 'Бюджет';
	@override String get revenue => 'Сборы';
	@override String get contentAdvisory => 'Возрастные ограничения';
	@override String get tags => 'Теги';
	@override String get revealSpoilerTags => 'Показать теги со спойлерами';
	@override String get links => 'Ссылки';
	@override String get watchOn => 'Смотреть на';
	@override String get watchTrailer => 'Смотреть трейлер';
	@override String openOn({required Object site}) => 'Открыть на ${site}';
	@override String get crew => 'Съёмочная группа';
	@override String get ratings => 'Рейтинги';
	@override String get schedule => 'Расписание';
	@override String recommendedByUsers({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n,
		one: 'Рекомендуют ${n} пользователь',
		few: 'Рекомендуют ${n} пользователя',
		many: 'Рекомендуют ${n} пользователей',
		other: 'Рекомендуют ${n} пользователей',
	);
	@override String recommendedBy({required Object who}) => 'Рекомендовано: ${who}';
	@override String favoritedBy({required Object who}) => 'В избранном у ${who}';
	@override String unairedEpisodes({required Object n}) => '${n} ещё не вышли';
	@override String recommendedByPercent({required Object percent}) => 'Рекомендуют ${percent} зрителей';
	@override String get relatedTitles => 'Связанные названия';
	@override String get background => 'Фон';
}

// Path: liveTv.recordSettings
class _Translations$liveTv$recordSettings$ru extends Translations$liveTv$recordSettings$en {
	_Translations$liveTv$recordSettings$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get startEarly => 'Начинать раньше (секунды)';
	@override String get endLate => 'Заканчивать позже (секунды)';
	@override String get newOnly => 'Только новые эпизоды';
	@override String get anyChannel => 'Записывать на любом канале';
	@override String get anyTime => 'Записывать в любое время';
	@override String get skipInLibrary => 'Пропускать эпизоды, уже имеющиеся в библиотеке';
	@override String get keepUpTo => 'Сколько эпизодов хранить';
	@override String get keepUpToHint => '0 — хранить все эпизоды';
}

// Path: music.discography
class _Translations$music$discography$ru extends Translations$music$discography$en {
	_Translations$music$discography$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get singlesAndEps => 'Синглы и EP';
	@override String get live => 'Концертные';
	@override String get compilations => 'Сборники';
}

// Path: watchTogether.notices
class _Translations$watchTogether$notices$ru extends Translations$watchTogether$notices$en {
	_Translations$watchTogether$notices$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String pressedPlay({required Object name}) => '${name} нажал кнопку воспроизведения';
	@override String get playbackStarted => 'Воспроизведение началось';
	@override String paused({required Object name}) => '${name} поставил на паузу';
	@override String get playbackPaused => 'Воспроизведение приостановлено';
	@override String jumpedTo({required Object name, required Object position}) => '${name} перешел на ${position}.';
	@override String roomJumpedTo({required Object position}) => 'Перешел на ${position}.';
	@override String changedSpeed({required Object name, required Object speed}) => '${name} установил скорость ${speed}';
	@override String speedChanged({required Object speed}) => 'Скорость установлена на ${speed}.';
	@override String startedMedia({required Object name, required Object title}) => '${name} запущен ${title}';
	@override String mediaStarted({required Object title}) => 'Сейчас играю в ${title}';
	@override String stoppedMedia({required Object name}) => '${name} остановил видео';
	@override String get mediaStopped => 'Видео остановлено';
	@override String waitingFor({required Object name}) => 'Ожидание ${name}...';
	@override String get waitingForSomeone => 'Жду, пока кто-нибудь догонит...';
	@override String get finished => 'Закончено';
	@override String hostChangedTo({required Object name}) => '${name} теперь организатор';
	@override String get youAreNowHost => 'Теперь вы — организатор';
	@override String joined({required Object name}) => '${name} присоединился';
	@override String left({required Object name}) => '${name} вышел';
	@override String get controlRefused => 'Только хост может управлять воспроизведением';
	@override String get searchFailed => 'На некоторых серверах не удалось найти видео комнаты.';
	@override String get playBlocked => 'Нажмите кнопку воспроизведения, чтобы начать';
	@override String get shareFailed => 'Не удалось поделиться этим видео с комнатой.';
	@override String get notShared => 'Загруженные видео не доступны в комнате.';
	@override String get openFailed => 'Не удалось открыть видео комнаты.';
}

// Path: watchTogether.ended
class _Translations$watchTogether$ended$ru extends Translations$watchTogether$ended$en {
	_Translations$watchTogether$ended$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get ended => 'Хозяин закончил комнату';
	@override String get kicked => 'Вас удалили из комнаты';
	@override String get expired => 'Срок действия комнаты истек';
	@override String get replaced => 'Вы присоединились к этой комнате на другом устройстве';
	@override String get lost => 'Потеряна связь с комнатой';
}

// Path: watchTogether.errors
class _Translations$watchTogether$errors$ru extends Translations$watchTogether$errors$en {
	_Translations$watchTogether$errors$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get invalidCode => 'Это не код комнаты. Коды состоят из 6 букв и цифр, без 0, 1, I, L или O.';
	@override String get roomNotFound => 'Ни в одной комнате нет такого кода. Возможно, это закончилось.';
	@override String get roomFull => 'Эта комната полна.';
	@override String get roomLocked => 'Хозяин запер эту комнату.';
	@override String get relayFull => 'Watch Together сейчас занят. Повторите попытку позже.';
	@override String get unreachable => 'Не удалось связаться с ретранслятором Watch Together. Проверьте свое соединение.';
	@override String get rateLimited => 'Слишком много попыток. Подождите немного и повторите попытку.';
	@override String get clientBlocked => 'Эта версия Luroka не может использовать реле. Обновите приложение.';
	@override String get forbidden => 'Это может сделать только хост.';
	@override String get notInRoom => 'Ты не в комнате.';
	@override String get alreadyInRoom => 'Вы уже в комнате.';
	@override String get resumeFailed => 'Не удалось вернуться в комнату.';
	@override String get unsupported => 'Реле этого не поддерживает.';
	@override String get generic => 'Что-то пошло не так. Попробуйте еще раз.';
}

// Path: downloads.backgroundWarning
class _Translations$downloads$backgroundWarning$ru extends Translations$downloads$backgroundWarning$en {
	_Translations$downloads$backgroundWarning$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get bannerBlocked => 'Загрузки остановятся, когда вы выйдете из приложения';
	@override String get bannerDegraded => 'Фоновые загрузки могут быть ограничены';
	@override String get bannerAction => 'Подробнее';
	@override String get sheetTitle => 'Фоновые загрузки заблокированы';
	@override String get sheetTitleDegraded => 'Фоновые загрузки могут быть ограничены';
	@override String get sheetIntro => 'Android не позволяет Luroka стабильно выполнять загрузки в фоновом режиме.';
	@override String get sheetIntroDegraded => 'Ваше устройство ограничивает время, когда Luroka может выполнять загрузки в фоновом режиме.';
	@override String get reasonBackgroundRestricted => 'Фоновая работа Luroka ограничена. В настройках расхода заряда батареи или фоновой работы выберите «Без ограничений».';
	@override String get reasonStandbyRestricted => 'Android перевёл Luroka в режим ожидания с ограничениями. Для расхода заряда батареи выберите «Без ограничений».';
	@override String get reasonDownloadChannelBlocked => 'Уведомления о загрузках отключены, поэтому ход загрузок и элементы управления могут быть недоступны.';
	@override String get reasonNotificationsDisabled => 'Уведомления отключены. В Android 13 и более новых версиях они необходимы для длительных фоновых загрузок.';
	@override String get reasonDataSaver => 'Экономия трафика включена, поэтому фоновые загрузки через мобильную сеть заблокированы. Загрузки по Wi-Fi должны работать.';
	@override String get reasonOemUnknown => 'Загрузки неоднократно останавливались, пока Luroka работал в фоне. Проверьте настройки расхода заряда батареи или фоновой работы для Luroka.';
	@override String get openSettings => 'Открыть настройки';
	@override String get stillNotWorking => 'Помощь для вашего устройства';
	@override String get stillNotWorkingDescription => 'Посмотрите инструкции для своего устройства. Если проблема не исчезнет, отправьте лог через Настройки › Просмотр логов.';
	@override String get dialogTitle => 'Загрузки могут не завершиться';
	@override String get dialogDownloadAnyway => 'Всё равно скачать';
	@override String get dialogFixFirst => 'Сначала исправить';
	@override String get statusTile => 'Фоновые загрузки';
	@override String get statusOk => 'Работа в фоне разрешена';
	@override String get statusBlocked => 'Заблокировано настройками системы';
	@override String get statusDegraded => 'Ограничено настройками системы';
	@override String get statusUnknown => 'Ещё не проверено';
	@override String get settingsUnavailable => 'Не удалось открыть системные настройки на этом устройстве';
	@override String get linkUnavailable => 'Не удалось открыть dontkillmyapp.com на этом устройстве';
}

// Path: downloads.groupings
class _Translations$downloads$groupings$ru extends Translations$downloads$groupings$en {
	_Translations$downloads$groupings$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get library => 'Библиотека';
	@override String get collections => 'Коллекции';
}

// Path: companionRemote.session
class _Translations$companionRemote$session$ru extends Translations$companionRemote$session$en {
	_Translations$companionRemote$session$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get startingServer => 'Запуск удалённого сервера...';
	@override String get hostAddress => 'Адрес хоста';
	@override String get connected => 'Подключено';
	@override String get serverRunning => 'Удалённый сервер активен';
	@override String get serverStopped => 'Удалённый сервер остановлен';
	@override String get serverRunningDescription => 'Мобильные устройства в вашей сети могут подключаться к этому приложению';
	@override String get serverStoppedDescription => 'Запустите сервер, чтобы разрешить подключение мобильных устройств';
	@override String get usePhoneToControl => 'Используйте мобильное устройство для управления этим приложением';
	@override String get startServer => 'Запустить сервер';
	@override String get stopServer => 'Остановить сервер';
	@override String get minimize => 'Свернуть';
	@override String get manualAddressHint => 'Адрес для подключения вручную:';
}

// Path: companionRemote.pairing
class _Translations$companionRemote$pairing$ru extends Translations$companionRemote$pairing$en {
	_Translations$companionRemote$pairing$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get discoveryDescription => 'Устройства Luroka с тем же аккаунтом Plex появятся здесь';
	@override String get hostAddressHint => '192.168.1.100:48632';
	@override String get connecting => 'Подключение...';
	@override String get searchingForDevices => 'Поиск устройств...';
	@override String get noDevicesFound => 'Устройства в вашей сети не найдены';
	@override String get noDevicesHint => 'Откройте Luroka на компьютере и подключите оба устройства к одной сети Wi-Fi';
	@override String get availableDevices => 'Доступные устройства';
	@override String get manualConnection => 'Ручное подключение';
	@override String get cryptoInitFailed => 'Не удалось установить защищённое соединение. Сначала войдите в Plex.';
	@override String get validationHostRequired => 'Введите адрес хоста';
	@override String get validationHostFormat => 'Формат должен быть IP:порт (например, 192.168.1.100:48632)';
	@override String get connectionTimedOut => 'Время подключения истекло. Используйте одну сеть на обоих устройствах.';
	@override String get sessionNotFound => 'Устройство не найдено. Убедитесь, что Luroka запущен на хосте.';
	@override String get authFailed => 'Аутентификация не удалась. На обоих устройствах нужен один аккаунт Plex.';
	@override String failedToConnect({required Object error}) => 'Не удалось подключиться: ${error}';
}

// Path: companionRemote.remote
class _Translations$companionRemote$remote$ru extends Translations$companionRemote$remote$en {
	_Translations$companionRemote$remote$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get disconnectConfirm => 'Отключиться от удалённой сессии?';
	@override String get reconnecting => 'Переподключение...';
	@override String attemptOf({required Object current}) => 'Попытка ${current} из 5';
	@override String get retryNow => 'Повторить сейчас';
	@override String get tabRemote => 'Пульт';
	@override String get tabPlay => 'Воспроизведение';
	@override String get tabMore => 'Ещё';
	@override String get menu => 'Меню';
	@override String get tabNavigation => 'Навигация';
	@override String get tabDiscover => 'Обзор';
	@override String get tabLibraries => 'Библиотеки';
	@override String get tabSearch => 'Поиск';
	@override String get tabDownloads => 'Загрузки';
	@override String get tabSettings => 'Настройки';
	@override String get previous => 'Предыдущий';
	@override String get playPause => 'Воспроизведение/Пауза';
	@override String get next => 'Следующий';
	@override String get seekBack => 'Назад';
	@override String get stop => 'Стоп';
	@override String get seekForward => 'Вперёд';
	@override String get volume => 'Громкость';
	@override String get volumeDown => 'Тише';
	@override String get volumeUp => 'Громче';
	@override String get fullscreen => 'Полноэкранный';
	@override String get subtitles => 'Субтитры';
	@override String get audio => 'Аудио';
	@override String get searchHint => 'Поиск на десктопе...';
}

// Path: companionRemote.errors
class _Translations$companionRemote$errors$ru extends Translations$companionRemote$errors$en {
	_Translations$companionRemote$errors$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get noNetworkInterface => 'Сетевой интерфейс не найден';
	@override String get authenticationFailed => 'Ошибка аутентификации';
	@override String serverStartFailed({required Object error}) => 'Не удалось запустить удалённый сервер: ${error}';
	@override String commandFailed({required Object error}) => 'Не удалось отправить удалённую команду: ${error}';
	@override String get joinTimedOut => 'Время подключения к сеансу истекло';
	@override String get failedToConnectAnyAddress => 'Не удалось подключиться ни к одному адресу';
	@override String connectionLostAfterAttempts({required Object attempts}) => 'Соединение потеряно после ${attempts} попыток';
	@override String get connectionLost => 'Соединение потеряно';
}

// Path: services.names
class _Translations$services$names$ru extends Translations$services$names$en {
	_Translations$services$names$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get mal => 'MyAnimeList';
	@override String get anilist => 'AniList';
	@override String get simkl => 'Simkl';
	@override String get seerr => 'Seerr';
	@override String get mdblist => 'MDBList';
}

// Path: services.simklReconnect
class _Translations$services$simklReconnect$ru extends Translations$services$simklReconnect$en {
	_Translations$services$simklReconnect$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Переподключите Simkl';
	@override String get subtitle => 'Simkl прекращает поддержку метода входа, который использует это соединение. При повторном подключении открывается simkl.com для подтверждения Luroka — Luroka никогда не видит ваш пароль. Ваша история просмотров сохраняется на Simkl.';
}

// Path: services.deviceCode
class _Translations$services$deviceCode$ru extends Translations$services$deviceCode$en {
	_Translations$services$deviceCode$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String title({required Object service}) => 'Активируйте Luroka в ${service}';
	@override String get instructions => 'Отсканируйте QR-код или перейдите по адресу ниже и введите этот код:';
	@override String openToActivate({required Object service}) => 'Открыть ${service} для активации';
	@override String get copyCode => 'Скопировать код активации';
	@override String get waitingForAuthorization => 'Ожидание авторизации…';
	@override String get codeCopied => 'Код скопирован';
}

// Path: services.oauthProxy
class _Translations$services$oauthProxy$ru extends Translations$services$oauthProxy$en {
	_Translations$services$oauthProxy$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String title({required Object service}) => 'Войти в ${service}';
	@override String get body => 'Отсканируйте этот QR-код или откройте URL на любом устройстве.';
	@override String openToSignIn({required Object service}) => 'Открыть ${service} для входа';
}

// Path: services.pendingAuth
class _Translations$services$pendingAuth$ru extends Translations$services$pendingAuth$en {
	_Translations$services$pendingAuth$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get copyUrl => 'Скопировать URL для входа';
	@override String get urlCopied => 'URL скопирован';
}

// Path: services.libraryFilter
class _Translations$services$libraryFilter$ru extends Translations$services$libraryFilter$en {
	_Translations$services$libraryFilter$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Фильтр библиотек';
	@override String get subtitleAllSyncing => 'Синхронизация всех библиотек';
	@override String get subtitleNoneSyncing => 'Ничего не синхронизируется';
	@override String subtitleBlocked({required Object count}) => '${count} заблокировано';
	@override String subtitleAllowed({required Object count}) => '${count} разрешено';
	@override String get mode => 'Режим фильтра';
	@override String get modeBlacklist => 'Чёрный список';
	@override String get modeWhitelist => 'Белый список';
	@override String get modeHintBlacklist => 'Синхронизировать все библиотеки, кроме отмеченных ниже.';
	@override String get modeHintWhitelist => 'Синхронизировать только библиотеки, отмеченные ниже.';
	@override String get libraries => 'Библиотеки';
	@override String get noLibraries => 'Библиотеки недоступны';
}

/// The flat map containing all translations for locale <ru>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsRu {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'mobileLibrary.pickerSubtitle' => 'Выберите коллекцию для изучения',
			'mobileLibrary.searchLibraries' => 'Поиск библиотек',
			'mobileLibrary.noLibraries' => 'Нет подходящих библиотек',
			'mobileLibrary.ascending' => 'восходящий',
			'mobileLibrary.descending' => 'По убыванию',
			'mobileLibrary.sort' => 'Сортировать',
			'mobileLibrary.unwatchedCount' => ({required Object count}) => '${count} непросмотренные серии',
			'mobileLibrary.latestEpisode' => 'Последний выпуск',
			'profileStartup.autoLogin' => 'Открыть последний использованный профиль',
			'profileStartup.autoLoginHint' => 'Автоматически открывать последний профиль, если для него не требуется PIN.',
			'profileStartup.allowKidsExit' => 'Разрешить выход из детского профиля без родительского PIN-кода',
			'profileStartup.allowKidsExitHint' => 'Ребёнок сможет перейти в другой профиль без родительского PIN-кода. PIN-коды профилей по-прежнему действуют.',
			'profileStartup.chooseKidsConnection' => 'Выберите другую учетную запись или сервер',
			'profileStartup.chooseKidsConnectionHint' => 'После сохранения подключите отдельный аккаунт или выберите подключение из другого профиля.',
			'subtitleUpload.chooseFile' => 'Загрузите файл субтитров',
			'subtitleUpload.hint' => 'Выберите язык выше, затем загрузите на этот сервер файл SRT, ASS, SSA или VTT.',
			'subtitleUpload.success' => 'Субтитры загружены на сервер. Он появится, когда сервер обновит элемент.',
			'subtitleUpload.failed' => 'Не удалось загрузить субтитры. Проверьте права доступа к файлу и серверу.',
			'personSpotlight.inYourLibraries' => 'в ваших библиотеках',
			'personSpotlight.libraryTitles' => ({required Object n}) => 'В ваших библиотеках · ${n} заголовки',
			'personSpotlight.readBiography' => 'Читать биографию',
			'personSpotlight.newestFirst' => 'Сначала самые новые',
			'personSpotlight.oldestFirst' => 'Сначала самый старый',
			'personSpotlight.titleAscending' => 'Название А–Я',
			'personSpotlight.sortTitles' => 'Сортировать фильмографию',
			'personSpotlight.unwatchedEpisodes' => ({required Object n}) => '${n} непросмотренные серии',
			'personSpotlight.copies' => ({required Object n}) => 'Копии библиотеки ${n}',
			'personSpotlight.versions' => ({required Object n}) => 'Версии файла ${n}',
			'personSpotlight.retryTitles' => 'Не удалось загрузить все названия. Повторить попытку',
			'detailExtras.onlineVideos' => 'Трейлеры и дополнения',
			'detailExtras.reviews' => 'Отзывы',
			'detailExtras.readReview' => 'Читать полный обзор',
			'detailExtras.directedBy' => ({required Object name}) => 'Режиссер: ${name}.',
			'detailExtras.previewUnavailable' => 'Не удалось воспроизвести этот предварительный просмотр. Вместо этого вы можете открыть его в исходном приложении.',
			'detailExtras.openExternally' => 'Открыть оригинальное видео',
			'mobileUi.readMore' => 'Подробнее',
			'mobileUi.readLess' => 'Показать меньше',
			'mobileUi.playbackTools' => 'Параметры воспроизведения',
			'mobileUi.streamingQuality' => 'Качество потоковой передачи',
			'mobileUi.fileVersions' => 'Версии файлов',
			'mobileUi.qualityAndVersions' => 'Качество потоковой передачи и версии файлов',
			'mobileUi.hidePlaybackTools' => 'Скрыть инструменты воспроизведения',
			'mobileUi.remaining' => ({required Object time}) => '${time} слева',
			'mobileUi.endsAt' => ({required Object time}) => 'Заканчивается на ${time}',
			'mobileUi.collection' => 'Ваша коллекция',
			'mobileUi.nowPlaying' => 'СЕЙЧАС ИГРАЕТ',
			'mobileUi.popularLibrary' => 'Популярное в вашей библиотеке',
			'mobileUi.weeklyLibrary' => 'Тенденции в вашей библиотеке на этой неделе',
			'family.title' => 'Профили и семья',
			'family.yourPeople' => 'Ваши люди',
			'family.manageHint' => 'Управляйте людьми, безопасностью детей и просмотрами на этом устройстве.',
			'family.people' => 'Люди',
			'family.peopleCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n, one: '${n} человек', few: '${n} человека', many: '${n} человек', other: '${n} человек', ), 
			'family.kidsCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n, one: '${n} дочерний элемент', few: '${n} детей', many: '${n} детей', other: '${n} детей', ), 
			'family.you' => 'ты',
			'family.adult' => 'Взрослый',
			'family.child' => 'Ребенок',
			'family.adultTeen' => 'Взрослый или подросток',
			'family.adultHint' => 'Собственный профиль, дополнительный профиль PIN и собственные подключения к серверу.',
			'family.childHint' => 'Возрастные ограничения, безопасные библиотеки и детский интерфейс. Родительский PIN-код защищает эти настройки.',
			'family.upToAge' => ({required Object age}) => 'До возраста ${age}',
			'family.allAges' => 'Все возрасты',
			'family.switchProfile' => 'Переключить профиль',
			'family.switchHint' => 'Выберите, кто смотрит. Управление человеком не переключает профили.',
			'family.addPerson' => 'Добавить человека',
			'family.addChild' => 'Добавить ребенка',
			'family.addHint' => 'Создайте на этом устройстве профиль взрослого, подростка или ребенка.',
			'family.emptyPeople' => 'Освободите место для всех, кто смотрит вместе с вами.',
			'family.emptyKids' => 'Детских профилей пока нет. Добавьте ребенка, чтобы выбрать возрастные ограничения и безопасные библиотеки.',
			'family.safety' => 'Дети и безопасность',
			'family.safetyHint' => 'Родительский PIN-код, детские профили и возрастные ограничения.',
			'family.protection' => 'Защита',
			'family.kidsProfiles' => 'Детские профили',
			'family.backupHistory' => 'Резервное копирование и история',
			'family.parentPinOn' => 'Родительский PIN-код включён',
			'family.profilePin' => 'PIN-код профиля',
			'family.confirmParentPin' => 'Подтвердите родительский PIN-код',
			'family.parentPinOff' => 'Родительский PIN-код не задан',
			'family.missingPin' => 'Задайте родительский PIN-код, чтобы защитить эти настройки.',
			'family.hideScope' => 'Скройте активность детей от «Продолжить просмотр» в этом профиле Luroka. Это не меняет историю просмотра общего сервера.',
			'family.localScope' => 'Детские профили и ограничения хранятся на этом устройстве. Профили, использующие одну и ту же учетную запись сервера, по-прежнему делятся прогрессом просмотра этой учетной записи.',
			'family.clearHistoryConfirm' => 'Разрешить снова показывать фильмы, которые смотрят дети, в разделе «Продолжить просмотр»? Профили детей, ограничения, статистика времени просмотра и история просмотра сервера будут сохранены.',
			'family.editRestrictions' => 'Изменить ограничения для детей',
			'family.activity' => 'Просмотр активности',
			'family.namedActivity' => ({required Object name}) => 'Просмотр активности пользователя ${name}',
			'family.thisProfile' => 'Этот профиль',
			'family.activityScope' => 'Время воспроизведения, записанное Luroka на этом устройстве для активного профиля. Это статистика, а не просмотр лимитов или полной истории сервера.',
			'family.activityUnavailable' => 'Для этого профиля пока недоступен просмотр активности.',
			'family.finished' => 'Готово',
			'posterDetails.showThemeMusic' => 'Включи музыкальную тему',
			'posterDetails.showThemeMusicDescription' => 'Воспроизведите тему фильма или шоу, пока открыта страница его сведений, если она доступна на сервере.',
			'posterDetails.catalogEpisodeInfo' => 'Отображение количества эпизодов и продолжительности их просмотра на карточках каталога.',
			'posterDetails.catalogEpisodeInfoDescription' => 'Покажите количество серий и среднюю продолжительность на постерах Обзор.',
			'posterDetails.title' => 'Детали плаката',
			'posterDetails.description' => 'Покажите название, год и рейтинг IMDb под плакатами в Studio, Search, Обзор и библиотеках. Отсутствующие рейтинги IMDb остаются скрытыми. Отключите этот параметр для плакатов, содержащих только иллюстрации.',
			'libraryPolish.posterDetails' => 'Детали плаката',
			'libraryPolish.showPosterDetails' => 'Показать детали плаката · имя, год и IMDb',
			'libraryPolish.hidePosterDetails' => 'Скрыть детали постера',
			'libraryPolish.overview' => 'Обзор',
			'libraryPolish.refreshing' => 'Обновление библиотеки…',
			'libraryPolish.serverCollections' => 'Все коллекции на этом сервере',
			'libraryPolish.serverPlaylists' => 'Все плейлисты видео на этом сервере',
			'libraryPolish.libraryCollections' => 'Коллекции в этой библиотеке',
			'libraryPolish.searchCollections' => 'Поиск коллекций',
			'libraryPolish.searchPlaylists' => 'Поиск плейлистов',
			'libraryPolish.searchHint' => 'Поиск по имени',
			'libraryPolish.titleAscending' => 'Название А–Я',
			'libraryPolish.titleDescending' => 'Название Z – A',
			'libraryPolish.clearFilters' => 'Очистить фильтры',
			'libraryPolish.playlistEmptyTitle' => 'Ваши вечера кино в вашем заказе',
			'libraryPolish.playlistEmptyHint' => 'Откройте меню «Дополнительно» заголовка и выберите «Добавить в плейлист», чтобы создать свой первый плейлист.',
			'libraryPolish.noMatches' => 'Нет подходящих имен',
			'libraryPolish.indexing' => 'Поиск по полному каталогу…',
			'showSchedule.today' => 'Сегодня',
			'showSchedule.tomorrow' => 'Завтра',
			'showSchedule.latestUpcoming' => 'Последние и предстоящие',
			'showSchedule.latestEpisode' => 'Последний выпуск',
			'showSchedule.upcoming' => 'Предстоящие',
			'showSchedule.inLibrary' => 'В вашей библиотеке',
			'showSchedule.notInLibrary' => 'Нет в вашей библиотеке',
			'showSchedule.notYetAired' => 'Еще не вышел в эфир',
			'showSchedule.episode' => ({required Object number}) => 'Эпизод ${number}',
			'showSchedule.caughtUp' => 'Вы все в плену',
			'showSchedule.finished' => 'Вы закончили эту серию',
			'showSchedule.nextAirs' => ({required Object date}) => 'Следующий выпуск выйдет в эфир ${date}',
			'showSchedule.watchBeginning' => 'Смотреть с начала',
			'showSchedule.replay' => 'Повтор',
			'showSchedule.playNext' => 'Играть дальше',
			'awardsCatalog.awards' => 'Награды',
			'awardsCatalog.customize' => 'Настроить',
			'awardsCatalog.chooseShelves' => 'Настроить Откройте для себя',
			'awardsCatalog.shelvesDescription' => 'Выберите нужные строки в Обзор. В рядах наград показаны победители из ваших библиотек. Ваш выбор сохраняется для этого профиля.',
			'awardsCatalog.restoreShelves' => 'Восстановить настройки по умолчанию',
			'awardsCatalog.charts' => 'Графики IMDb',
			'awardsCatalog.generalShelves' => 'Популярное и трендовое',
			'awardsCatalog.saveShelvesFailed' => 'Не удалось сохранить выбранные вами варианты Обзор. Пожалуйста, попробуйте еще раз.',
			'awardsCatalog.comedyActress' => 'Главная актриса · Комедия',
			'awardsCatalog.leadDramaActor' => 'Главный актер · Драма',
			'awardsCatalog.leadDramaActress' => 'Главная актриса · Драма',
			'awardsCatalog.comedySupportingActor' => 'Актер второго плана · Комедия',
			'awardsCatalog.comedySupportingActress' => 'Актриса второго плана · Комедия',
			'awardsCatalog.leadingPerformance' => 'Серебряный медведь · Лучшая главная роль',
			'awardsCatalog.globesComedySeries' => 'Лучший телесериал · Мюзикл или комедия',
			'awardsCatalog.limitedSupportingActor' => 'Актер второго плана · Ограниченный сериал или фильм',
			'awardsCatalog.limitedSupportingActress' => 'Актриса второго плана · Ограниченный сериал или фильм',
			'awardsCatalog.berlinDocumentary' => 'Премия Берлинале в области документального кино',
			'awardsCatalog.title' => 'Награды и фестивали',
			'awardsCatalog.chooseCategory' => 'Выберите категорию награды',
			'awardsCatalog.winners' => 'Победители',
			'awardsCatalog.nominees' => 'Номинанты',
			'awardsCatalog.releaseDecade' => 'Десятилетие выпуска',
			'awardsCatalog.allYears' => 'Все годы',
			'awardsCatalog.loading' => 'Загрузка наград…',
			'awardsCatalog.matching' => 'Находя эти названия в своих библиотеках…',
			'awardsCatalog.unavailable' => 'Данные о наградах сейчас недоступны. Попробуйте еще раз.',
			'awardsCatalog.empty' => 'В видимых библиотеках для этой категории нет подходящих заголовков.',
			'awardsCatalog.coverage' => 'Членство происходит из Викиданных и может быть неполным. В категориях актеров и режиссеров представлены фильмы или шоу, за которые они были награждены. Годы относятся к выпуску титула, а не к церемонии.',
			'awardsCatalog.picture' => 'Лучший фильм',
			'awardsCatalog.film' => 'Лучший фильм',
			'awardsCatalog.international' => 'Лучший международный полнометражный фильм',
			'awardsCatalog.internationalFilm' => 'Лучший международный фильм',
			'awardsCatalog.nonEnglishFilm' => 'Лучший фильм не на английском языке',
			'awardsCatalog.animated' => 'Лучший анимационный фильм',
			'awardsCatalog.animatedFilm' => 'Лучший анимационный фильм',
			'awardsCatalog.documentary' => 'Лучший документальный фильм',
			'awardsCatalog.director' => 'Лучший режиссер',
			'awardsCatalog.actor' => 'Лучший актер',
			'awardsCatalog.actress' => 'Лучшая актриса',
			'awardsCatalog.supportingActor' => 'Лучший актер второго плана',
			'awardsCatalog.supportingActress' => 'Лучшая актриса второго плана',
			'awardsCatalog.originalScreenplay' => 'Лучший оригинальный сценарий',
			'awardsCatalog.adaptedScreenplay' => 'Лучший адаптированный сценарий',
			'awardsCatalog.screenplay' => 'Лучший сценарий',
			'awardsCatalog.cinematography' => 'Лучшая операторская работа',
			'awardsCatalog.editing' => 'Лучший монтаж',
			'awardsCatalog.score' => 'Лучший оригинальный саундтрек',
			'awardsCatalog.song' => 'Лучшая оригинальная песня',
			'awardsCatalog.sound' => 'Лучший звук',
			'awardsCatalog.effects' => 'Лучшие визуальные эффекты',
			'awardsCatalog.productionDesign' => 'Лучший художник-постановщик',
			'awardsCatalog.costume' => 'Лучший дизайн костюмов',
			'awardsCatalog.makeup' => 'Лучший макияж и прическа',
			'awardsCatalog.dramaSeries' => 'Выдающийся драматический сериал',
			'awardsCatalog.comedySeries' => 'Выдающийся комедийный сериал',
			'awardsCatalog.limitedSeries' => 'Выдающаяся ограниченная серия',
			'awardsCatalog.animatedProgram' => 'Выдающаяся анимационная программа',
			'awardsCatalog.comedyActor' => 'Главный актер · Комедия',
			'awardsCatalog.limitedActor' => 'Главный актер · Ограниченный сериал или фильм',
			'awardsCatalog.limitedActress' => 'Ведущая актриса · Ограниченный сериал или фильм',
			'awardsCatalog.limitedDirecting' => 'Режиссура · Ограниченный сериал или фильм',
			'awardsCatalog.britishFilm' => 'Лучший британский фильм',
			'awardsCatalog.goldenBear' => 'Золотой Медведь',
			'awardsCatalog.grandJury' => 'Приз Большого жюри',
			'awardsCatalog.jury' => 'Приз жюри',
			'awardsCatalog.teddy' => 'Премия Тедди',
			'awardsCatalog.goldenLion' => 'Золотой Лев',
			'awardsCatalog.volpiActor' => 'Кубок Вольпи · Лучший актер',
			'awardsCatalog.volpiActress' => 'Кубок Вольпи · Лучшая женская роль',
			'awardsCatalog.queerLion' => 'странный лев',
			'awardsCatalog.dramaFilm' => 'Лучший фильм · Драма',
			'awardsCatalog.comedyFilm' => 'Лучший фильм · мюзикл или комедия',
			'awardsCatalog.dramaActor' => 'Лучший актер · Драма',
			'awardsCatalog.dramaActress' => 'Лучшая женская роль · Драма',
			'awardsCatalog.usDramatic' => 'Приз Большого жюри США в области драматического искусства',
			'awardsCatalog.documentaryJury' => 'Приз Большого жюри документального кино',
			'awardsCatalog.worldCinema' => 'Приз Большого жюри мирового кино',
			'awardsCatalog.dramaticAudience' => 'Приз зрительских симпатий США',
			'awardsCatalog.usDirecting' => 'Режиссерская премия США',
			'awardsCatalog.peopleChoice' => 'Приз зрительских симпатий',
			'awardsCatalog.canadianFilm' => 'Лучший канадский фильм',
			'awardsCatalog.firstFeature' => 'Лучший первый полнометражный фильм',
			'awardsCatalog.cassavetes' => 'Премия Джона Кассаветиса',
			'awardsCatalog.scienceFiction' => 'Лучший научно-фантастический фильм',
			'awardsCatalog.fantasy' => 'Лучший фэнтезийный фильм',
			'awardsCatalog.horror' => 'Лучший фильм ужасов',
			'awardsCatalog.action' => 'Лучший боевик или приключенческий фильм',
			'awardsCatalog.thriller' => 'Лучший триллер',
			'searchDiscovery.suggestions' => 'Есть что посмотреть',
			'searchDiscovery.collections' => 'Награды и коллекции',
			'searchDiscovery.collectionsHint' => 'Победители наград и тщательно подобранные диаграммы из ваших библиотек.',
			'searchDiscovery.all' => 'Все открытия',
			'searchDiscovery.awards' => 'Награды и чарты',
			'lurokaPlayerDesign.seeking' => 'Искать предварительный просмотр',
			'lurokaPlayerDesign.keepWatching' => 'Продолжайте смотреть',
			'lurokaPlayerDesign.upNext' => 'Далее',
			'lurokaPlayerDesign.playingIn' => ({required Object seconds}) => 'Воспроизведение начнётся через ${seconds} с',
			'lurokaWorkspace.everyday' => 'Повседневный режим',
			'lurokaWorkspace.homeDiscovery' => 'Главная и каталог',
			'lurokaWorkspace.librariesAccounts' => 'Библиотеки и учетные записи',
			'lurokaWorkspace.profilesFamily' => 'Профили и семья',
			'lurokaWorkspace.thisDevice' => 'Это устройство',
			'lurokaWorkspace.thisProfile' => 'Этот профиль',
			'lurokaWorkspace.searchSettings' => 'Настройки поиска',
			'lurokaWorkspace.savedAutomatically' => 'Изменения сохраняются автоматически. Режимы «Повседневный» и «Расширенный» изменяют только отображаемые элементы управления.',
			'lurokaWorkspace.audioSubtitles' => 'Аудио и субтитры',
			'lurokaWorkspace.audioDescription' => 'Вывод звука, громкость и внешний вид субтитров. Предпочитаемые языки устанавливаются для каждой учетной записи сервера с использованием настроек учетной записи при подключении.',
			'lurokaWorkspace.pictureSound' => 'Изображение и звук',
			'lurokaWorkspace.pictureDescription' => 'Соответствие частоты кадров, разрешения, настройки HDR и Dolby Vision для этого устройства.',
			'lurokaWorkspace.engineDescription' => 'Движок плеера, декодирование, пользовательская конфигурация и расширенные правила воспроизведения.',
			'lurokaWorkspace.networkStreaming' => 'Сеть и потоковая передача',
			'lurokaWorkspace.networkDescription' => 'Качество потоковой передачи, настройки кодека прямого воспроизведения и выбор полосы пропускания.',
			'lurokaWorkspace.homeOptions' => 'Настройки главной',
			'lurokaWorkspace.refreshHome' => 'Обновить главную и популярное сейчас',
			'lurokaWorkspace.customizeHome' => 'Настроить главную',
			'lurokaWorkspace.spotlight' => 'Подборка на главной',
			'lurokaWorkspace.rotateSpotlight' => 'Автоматически чередовать избранные заголовки',
			'lurokaWorkspace.rotateDescription' => 'Подборка меняется, пока главная неактивна. Любое действие приостанавливает смену; просмотр рядов, открытие страницы или выход из приложения останавливают её.',
			'lurokaWorkspace.rotationInterval' => 'Время между избранными названиями',
			'mobileFixes.connectionRecoveryHint' => 'Сервер недоступен? Управляйте своими учетными записями или подключите другой сервер.',
			'downloadsRedesign.shelfSize' => 'Товаров на полке',
			'downloadsRedesign.shelfSizeHint' => 'Покажите 16, 32 или 48 товаров на полках «Продолжить просмотр» и «Рекомендации». Серверы могут возвращать меньше доступных названий.',
			'downloadsRedesign.subtitle' => 'Ваши любимцы готовы к путешествию.',
			'downloadsRedesign.transfers' => 'Трансферы',
			'downloadsRedesign.ready' => 'Готово в автономном режиме',
			'downloadsRedesign.active' => 'Загрузка',
			'downloadsRedesign.waiting' => 'Ожидание',
			'downloadsRedesign.downloaded' => 'Скачано',
			'downloadsRedesign.speed' => 'Скорость загрузки',
			'downloadsRedesign.notificationProgress' => '{progress} · {networkSpeed} · {timeRemaining} осталось',
			'kidsShelf.movieShelf' => 'Время кино',
			'kidsShelf.showShelf' => 'Найдите свое следующее шоу',
			'kidsShelf.aurora' => 'Aurora — глубокий бирюзовый и лаймовый',
			'kidsShelf.marquee' => 'Marquee — бархат и золото',
			'kidsShelf.electric' => 'Электрический — индиго и лед',
			'kidsShelf.midnight' => 'Midnight — сталь и янтарь',
			'kidsShelf.yourShelf' => 'Ваша полка с фильмами',
			'kidsShelf.all' => 'все',
			'kidsShelf.pickSomething' => 'Что вы хотите посмотреть?',
			'kidsHome.everything' => 'Для тебя',
			'kidsHome.keepWatching' => 'Продолжайте смотреть',
			'kidsHome.emptyFilter' => 'Здесь пока ничего. Попробуйте «Для вас» или попросите взрослого добавить что-нибудь, что вам нравится.',
			'tvSettingsV2.moreThemes' => 'Больше тем и пользовательских цветов',
			'tvSettingsV2.moreThemesHint' => 'Откройте все доступные пресеты и пользовательские параметры темы.',
			'tvSettingsV2.previewLive' => 'Предварительный просмотр в реальном времени',
			'tvSettingsV2.previewIllustration' => 'Пример предварительного просмотра',
			'tvSettingsV2.previewShelfCount' => ({required Object count}) => 'До ${count} товаров на полке',
			'tvSettingsV2.simple' => 'Простой',
			'tvSettingsV2.homeNavigation' => 'Главная и навигация',
			'tvSettingsV2.libraryCards' => 'Библиотека и карты',
			'tvSettingsV2.accountsLibraries' => 'Аккаунты и библиотеки',
			'tvSettingsV2.profilesFamily' => 'Профили и семья',
			'tvSettingsV2.aboutSupport' => 'О компании и поддержка',
			'tvSettingsV2.playback' => 'Воспроизведение',
			'tvSettingsV2.homeHint' => 'Выберите, что будет отображаться на главной странице и в навигации.',
			'tvSettingsV2.libraryHint' => 'Настройте размеры плакатов, метки и индикаторы просмотра.',
			'tvSettingsV2.advancedPlayback' => 'Движок проигрывателя и потоковая передача',
			'tvSettingsV2.advancedPlaybackHint' => 'Плеер, видеовыход, потоковая передача и расширенные возможности воспроизведения.',
			'tvSettingsV2.advancedTools' => 'Диагностика и резервное копирование',
			'tvSettingsV2.advancedToolsHint' => 'Журналы, устранение неполадок, резервное копирование и сброс настроек.',
			'tvSettingsV2.themePreview' => 'Предварительный просмотр темы',
			'tvSettingsV2.libraryPreview' => 'Предварительный просмотр библиотеки',
			'tvSettingsV2.homePreview' => 'Домашний предварительный просмотр',
			'tvSettingsV2.subtitlePreview' => 'Предварительный просмотр субтитров',
			'tvSettingsV2.subtitleSample' => 'Ваши субтитры будут выглядеть так.',
			'tvSettingsV2.previewPlaceholder' => 'Здесь появится ваше произведение искусства',
			'tvSettingsV2.posterSize' => 'Размер плаката',
			'tvSettingsV2.serverRecommendations' => 'Домашние рекомендации с вашего сервера',
			'tvSettingsV2.tvLayout' => 'Использовать макет ТВ',
			'tvSettingsV2.hardwareDecode' => 'Использовать аппаратное декодирование видео',
			'tvSettingsV2.serverNames' => 'Показывать имена серверов в домашних строках',
			'tvSettingsV2.settingsSaved' => 'Изменения сохраняются автоматически.',
			'tvSettingsV2.morePlayback' => 'Расширенное воспроизведение',
			'tvSettingsV2.screenDisplay' => 'Изображение и звук',
			'tvSettingsV2.engine' => 'Движок проигрывателя',
			'tvSettingsV2.network' => 'Потоковая передача и сеть',
			'tvSettingsV2.performance' => 'Производительность',
			'tvSettingsV2.simpleAudio' => 'Языки и внешний вид субтитров',
			'settingsRedesign.themeEffects' => 'Тема и эффекты',
			'settingsRedesign.libraryLayout' => 'Макет библиотеки',
			'settingsRedesign.appearanceHint' => 'Настройте внешний вид, макет и поведение Luroka.',
			'settingsRedesign.livePreview' => 'Живой просмотр',
			'settingsRedesign.previewHint' => 'Посмотрите, как ваша библиотека будет выглядеть с текущими настройками.',
			'settingsRedesign.showLiveTv' => 'Показать прямой эфир',
			'settingsRedesign.showLiveTvHint' => 'Показывать Live TV в навигации, если подключенный сервер поддерживает это. Это не меняет ваш сервер.',
			'settingsRedesign.aboutTagline' => 'Ваши СМИ. Ваше пространство.',
			'settingsRedesign.aboutDescription' => 'Luroka объединяет библиотеки Plex, Jellyfin и Emby в кинематографическом проигрывателе для телефонов, телевизоров и настольных компьютеров.',
			'settingsRedesign.aboutFeatures' => 'Просматривайте свои библиотеки, возобновляйте фильмы и шоу, персонализируйте профили, наслаждайтесь загрузками и смотрите вместе. Live TV доступен с совместимым сервером.',
			'settingsRedesign.services' => 'Подключите свой мир',
			'settingsRedesign.updateSource' => 'Обновить источник',
			'settingsRedesign.updateSourceHint' => 'HTTPS-адрес вашего канала выпуска Luroka. Ваш дистрибьютор может предварительно настроить это в приложении.',
			'settingsRedesign.updateNotConfigured' => 'Для этой сборки автоматические обновления не настроены.',
			'settingsRedesign.downloadInstall' => 'Скачать и установить',
			'settingsRedesign.installUpdate' => 'Установить обновление',
			'settingsRedesign.downloading' => 'Загрузка обновления…',
			'settingsRedesign.downloadFailed' => 'Не удалось загрузить или проверить обновление. Пожалуйста, попробуйте еще раз.',
			'settingsRedesign.installPermission' => 'Разрешите Luroka устанавливать обновления в настройках Android, затем вернитесь и выберите «Установить обновление».',
			'settingsRedesign.updateReady' => 'Загрузка проверена. Готов к установке.',
			'settingsRedesign.releaseNotes' => 'Примечания к выпуску',
			'settingsRedesign.invalidFeed' => 'Введите действительный адрес канала обновлений HTTPS.',
			'onboarding.connectStep' => '01 · Подключиться',
			'onboarding.connectTitle' => 'Добро пожаловать в Luroka',
			'onboarding.connectHint' => 'Войдите, чтобы перенести сюда свои библиотеки.',
			'onboarding.serverAddressHint' => 'Введите адрес вашего сервера или выберите сервер, найденный в вашей сети.',
			'onboarding.serverSignInHint' => 'Используйте имя пользователя и пароль вашего сервера для подключения ваших библиотек.',
			'onboarding.serverAddressTitle' => 'Адрес сервера',
			'onboarding.serverAccountTitle' => 'Ваша учетная запись на сервере',
			'onboarding.plexHomeTitle' => 'Выберите домашнего пользователя Plex.',
			'onboarding.plexHomeHint' => 'Выберите пользователя Plex, библиотеки которого вы хотите использовать. Далее вы настроите свой профиль Luroka.',
			'onboarding.chooseService' => 'Выберите свой сервис',
			'onboarding.profileStep' => '02 · Ваш профиль',
			'onboarding.profileTitle' => 'Чувствуйте себя как дома.',
			'onboarding.profileHint' => 'Выберите имя и аватар для своего профиля Luroka. Ваша подключенная учетная запись останется прежней.',
			'onboarding.readyStep' => '03 · Готов к просмотру',
			'onboarding.readyTitle' => 'Еще немного тебя.',
			'onboarding.readyHint' => 'Объедините свои услуги или освободите место для кого-то еще. Вы всегда можете сделать это позже.',
			'onboarding.addService' => 'Подключить другую услугу',
			'onboarding.editProfile' => 'Отредактируйте свое имя и аватар',
			'onboarding.connected' => 'Подключено и готово',
			'onboarding.backToProfile' => 'Вернуться в свой профиль',
			'onboarding.showOtherPlexHome' => 'Показать других участников Plex Home',
			'onboarding.showOtherPlexHomeHint' => 'По умолчанию выключено. Ваши профили Luroka и участники домашней страницы Plex, которых вы использовали, остаются видимыми. Включите, чтобы выбрать кого-то другого.',
			'household.title' => 'Ваша семья Luroka',
			'household.welcome' => 'Сделайте Luroka своим',
			'household.welcomeHint' => 'Ваш первый аккаунт подключен. Персонализируйте свой профиль или добавьте кого-нибудь еще, прежде чем начать просмотр.',
			'household.profiles' => 'Профили и домашнее хозяйство',
			'household.manageHint' => 'Добавляйте людей, меняйте изображения и управляйте подключениями каждого профиля.',
			'household.addProfile' => 'Добавить профиль Luroka',
			'household.addHint' => 'Каждый человек может подключить свой собственный логин Plex, Emby или Jellyfin. Для них отображаются только соединения, добавленные в их профиль.',
			'household.sharedHint' => 'Повторное использование подключения другого профиля позволяет использовать статус просмотра и прогресс воспроизведения этого пользователя сервера. Выберите отдельный логин для самостоятельного просмотра истории.',
			'household.personalise' => 'Персонализировать профиль',
			'household.changePicture' => 'Изменить изображение профиля',
			'household.pictureHint' => 'Выберите аватар или фотографию Luroka. При этом меняется картинка только на этом устройстве; ваша учетная запись сервера нетронута.',
			'household.serverPicture' => 'Используйте изображение/инициалы сервера',
			'household.choosePhoto' => 'Выберите фотографию',
			'household.photoHint' => 'JPEG, PNG или другое поддерживаемое изображение размером до 10 МБ. Размер фотографий изменяется и сохраняется на этом устройстве.',
			'household.pictureSaved' => 'Изображение профиля обновлено',
			'household.pictureFailed' => 'Не удалось обновить изображение профиля. Попробуйте поддерживаемый образ размером до 10 МБ.',
			'household.saveFailed' => 'Не удалось сохранить настройки профиля. Пожалуйста, попробуйте еще раз.',
			'household.startWatching' => 'Начать просмотр',
			'household.manageProfiles' => 'Управление или переключение профилей',
			'household.addLater' => 'Вы можете добавить больше людей позже в «Настройки» → «Профили и семья».',
			'household.connectionRequired' => 'Добавьте подключение к серверу, чтобы завершить настройку этого профиля.',
			'household.mountain' => 'Гора',
			'household.orbit' => 'Исследователь',
			'household.waves' => 'Океан',
			'household.blossom' => 'Цветение',
			'household.lightning' => 'Молния',
			'household.moon' => 'Луна',
			'household.avatarGallery' => 'Выберите аватар',
			'household.avatarIllustrationHint' => 'Оригинальные иллюстрированные портреты детей и друзей-животных.',
			'household.avatarPortraitSunrise' => 'Портрет восхода солнца',
			'household.avatarPortraitMeadow' => 'Луговой портрет',
			'household.avatarPortraitBerry' => 'Портрет Берри',
			'household.avatarPortraitGolden' => 'Золотой портрет',
			'household.avatarPortraitIndigo' => 'Индиго портрет',
			'household.avatarPortraitOcean' => 'Портрет океана',
			'household.avatarKidArtist' => 'Маленький художник',
			'household.avatarKidSkater' => 'Маленький фигурист',
			'household.avatarCat' => 'Любопытный кот',
			'household.avatarDog' => 'Счастливая собака',
			'household.avatarPanda' => 'Панда',
			'household.avatarOwl' => 'Сова',
			'household.avatarFox' => 'Фокс',
			'household.avatarDinosaur' => 'Динозавр',
			'household.avatarRobot' => 'Робот',
			'detailComposition.startOver' => 'Начать сначала',
			'detailComposition.seriesCast' => 'Актерский состав сериала',
			'detailComposition.streamingQuality' => 'Качество потоковой передачи…',
			'detailComposition.trailer' => 'Трейлер',
			'detailComposition.manageMedia' => 'Управлять медиа…',
			'detailComposition.playbackOptions' => 'Параметры воспроизведения…',
			'detailComposition.moreActions' => 'Дополнительные действия',
			'detailComposition.watched' => 'Смотрел',
			'detailComposition.unwatched' => 'Непросмотренный',
			'detailComposition.endsAt' => ({required Object time}) => 'Заканчивается на ${time}',
			'detailComposition.automatic' => 'Автоматический',
			'detailComposition.usePreferences' => 'Используйте свои настройки воспроизведения',
			'detailComposition.mediaInformation' => 'Информация для СМИ',
			'detailComposition.fullFileInformation' => 'Полная информация о файле',
			'detailComposition.castAndCrew' => 'Актеры и съемочная группа',
			'kids.backupProfile' => 'Резервное копирование детского профиля',
			'kids.backupExplain' => 'Создайте резервную копию сохраненного имени, персонажа, ограничений, внешнего вида и исключений локального просмотра этого профиля. Родительские PIN-коды, входы на сервер, загрузки и прогресс воспроизведения на сервере не учитываются.',
			'kids.saveBackupFile' => 'Сохранить файл резервной копии',
			'kids.copyBackup' => 'Скопировать резервный текст',
			'kids.backupSaved' => ({required Object path}) => 'Резервная копия детского профиля сохранена в ${path}.',
			'kids.backupCopied' => 'Резервная копия детского профиля скопирована.',
			'kids.backupFailed' => 'Не удалось сохранить резервную копию профиля детей. Пожалуйста, попробуйте еще раз.',
			'kids.restoreProfile' => 'Восстановить детский профиль',
			'kids.chooseBackupFile' => 'Выберите файл резервной копии',
			'kids.pasteBackup' => 'Вставить резервный текст',
			'kids.backupText' => 'Резервное копирование детского профиля в формате JSON',
			'kids.pasteFromClipboard' => 'Вставить из буфера обмена',
			'kids.restoreReview' => 'Просмотрите эти восстановленные настройки, затем «Сохранить», чтобы создать новый детский профиль, используя текущие подключения к серверу. Существующие профили не перезаписываются. Выбор библиотеки и исключения просмотра соответствуют только одним и тем же идентификаторам сервера/библиотеки.',
			'kids.restoreInvalid' => 'Это недействительная поддерживаемая резервная копия детского профиля. Выберите резервную копию детского профиля Luroka в формате JSON.',
			'kids.deleteProfile' => 'Удалить детский профиль',
			'kids.deleteExplain' => ({required Object name}) => 'Удалить ${name} из Luroka? Их локальные настройки, исключения загрузок и просмотра будут удалены. Ваша учетная запись сервера и история на стороне сервера останутся. Сначала создайте резервную копию, если вы хотите восстановить профиль позже.',
			'kids.profileDeleted' => 'Детский профиль удален.',
			'kids.allowedLibraries' => 'Разрешенные библиотеки',
			'kids.unavailableLibrary' => 'Ранее выбранная библиотека (в настоящее время недоступна)',
			'kids.allLibraries' => 'Разрешить все подключенные библиотеки фильмов и телепередач',
			'kids.librariesExplain' => 'Отключите это, чтобы выбрать определенные библиотеки. Правила возраста и анимации по-прежнему применяются внутри выбранных библиотек. Новые библиотеки не добавляются автоматически при использовании выделения.',
			'kids.librariesUnavailable' => 'Библиотеки фильмов и ТВ не загружаются. Подключитесь к серверу и откройте «Библиотеки», затем вернитесь сюда, чтобы выбрать.',
			'kids.noLibrariesSelected' => 'Библиотеки не выбраны: этот ребенок не увидит ни одного названия.',
			'kids.animationOnly' => 'Только анимация',
			'kids.animationExplain' => 'Показывать на вашем сервере только заголовки с тегом «Анимация». Это не отменяет возрастного ограничения: анимация может быть предназначена и для взрослых. Отсутствующие метаданные жанра скрыты.',
			'kids.allowUnrated' => 'Разрешить названия без возрастного рейтинга',
			'kids.unratedExplain' => 'По умолчанию выключено. Если этот параметр включен, могут отображаться отсутствующие или неоцененные классификации, если это разрешено правилами библиотеки и анимации. Их пригодность невозможно проверить по возрасту. Известные рейтинги выше возрастного ограничения и непризнанные классификации остаются скрытыми.',
			'kids.whoIsWatching' => 'Кто смотрит?',
			'kids.chooseAdventure' => 'Маленький мир больших приключений.',
			'kids.chooseProfile' => 'Выберите свое пространство. Устройте вечер кино.',
			'kids.welcome' => ({required Object name}) => 'Привет, ${name}!',
			'kids.welcomeOlder' => ({required Object name}) => 'Ваша следующая замечательная история, ${name}.',
			'kids.homeSubtitle' => 'Большие приключения. Маленькие открытия. Все для тебя.',
			'kids.homeSubtitleOlder' => 'Найдите нового фаворита. Продолжайте с того места, где вы остановились.',
			'kids.featured' => 'Сегодняшнее большое приключение',
			'kids.featuredOlder' => 'В центре внимания',
			'kids.moreInfo' => 'Дополнительная информация',
			'kids.movies' => 'Фильмы',
			'kids.shows' => 'Шоу',
			'kids.profiles' => 'Профили',
			'kids.adultBadge' => 'Взрослые',
			'kids.avatar' => 'Выберите своего персонажа',
			'kids.avatarExplorer' => 'Исследователь космоса',
			'kids.avatarFox' => 'Фокс',
			'kids.avatarDinosaur' => 'Динозавр',
			'kids.avatarRobot' => 'Робот',
			'kids.avatarChildArtist' => 'Маленький художник',
			'kids.avatarChildSkater' => 'Маленький фигурист',
			'kids.avatarSunrisePerson' => 'Портрет восхода солнца',
			'kids.avatarOceanPerson' => 'Портрет океана',
			'kids.avatarCat' => 'Любопытный кот',
			'kids.avatarDog' => 'Счастливая собака',
			'kids.avatarPanda' => 'Панда',
			'kids.avatarOwl' => 'Сова',
			'kids.avatarBear' => 'Медведь',
			'kids.continueAdventure' => 'Продолжайте приключение',
			'kids.freshStories' => 'Новые истории, которые стоит открыть',
			'kids.yourMovies' => 'Фавориты кинопросмотра',
			'kids.yourShows' => 'Еще один эпизод',
			'kids.emptyHint' => 'Новые приключения появятся здесь, когда на вашем сервере появятся игры с разрешенной возрастной категорией.',
			'kids.title' => 'Luroka для детей',
			'kids.addProfile' => 'Добавить детский профиль',
			'kids.parentalControls' => 'Родительский контроль',
			'kids.parentPin' => 'Родительский PIN-код',
			'kids.setParentPin' => 'Задать родительский PIN-код',
			'kids.changeParentPin' => 'Изменить родительский PIN-код',
			'kids.pinExplain' => 'Этот PIN-код защищает взрослые профили и родительский контроль на устройстве.',
			'kids.name' => 'Имя ребенка',
			'kids.ageGroup' => 'Разрешенная возрастная классификация',
			'kids.allAges' => 'Для всех возрастов · G, TV-Y, TV-G, U',
			'kids.age7' => 'До 7 · также PG, TV-PG, TV-Y7',
			'kids.age12' => 'До 12 · также 12 и 12А',
			'kids.age16' => 'До 16 · также ПГ-13, ТВ-14, 15 и 16',
			'kids.ratingExplain' => 'Титулы выше возрастного ограничения и непризнанные классификации скрыты. Заголовки без рейтинга скрыты, если вы не разрешите их использование ниже. Эпизоды без рейтинга могут наследовать утвержденную классификацию сериалов. Рейтинги зависят от метаданных вашего сервера.',
			'kids.theme' => 'Внешний вид детей',
			'kids.themeExplain' => 'Используйте красочную тему, когда этот профиль активен.',
			'kids.sharedLogin' => 'Использует существующий логин на сервере. Plex/Emby прогресс и статус просмотра остаются общими. На этом устройстве хранятся ограничения и детские профили.',
			'kids.hideWatched' => 'Скрыть просмотр детьми из моего Продолжить просмотр',
			'kids.hideExplain' => 'Скрывайте на этом устройстве фильмы и целые сериалы, которые воспроизводят дети. Это не удалит их из вашей библиотеки и не изменит историю сервера.',
			'kids.clearHistory' => 'Сбросить ограничения просмотра для детей',
			'kids.historyReset' => 'Исключения просмотра для детей сброшены',
			'kids.blocked' => 'Это название недоступно в этом детском профиле.',
			'kids.switchProfile' => 'Переключить профиль',
			'kids.manageFromAdult' => 'Переключитесь на профиль для взрослых, чтобы управлять настройками.',
			'kids.noConnections' => 'Подключите сервер к своему взрослому профилю, прежде чем добавлять детский профиль.',
			'kids.created' => 'Детский профиль создан.',
			'kids.updated' => 'Детский профиль обновлен.',
			'kids.saveFailed' => 'Не удалось сохранить родительский контроль. Пожалуйста, попробуйте еще раз.',
			'kids.kidsBadge' => 'Дети',
			'lurokaDiscovery.title' => 'Обзор',
			'lurokaDiscovery.chooseLibraryHint' => 'Выберите библиотеку для изучения',
			'lurokaDiscovery.chooseCopyHint' => 'Доступен в нескольких библиотеках. Выберите предпочитаемую копию.',
			'lurokaDiscovery.weeklyMovies' => 'Популярные фильмы на этой неделе · TMDb',
			'lurokaDiscovery.weeklyShows' => 'Популярные шоу на этой неделе · TMDb',
			'lurokaDiscovery.weeklyLibrary' => 'Тенденции этой недели · В вашей библиотеке',
			'lurokaDiscovery.popularLibrary' => 'Популярно сейчас · В вашей библиотеке · Cinemeta',
			'lurokaDiscovery.publicFeedError' => 'Открытие Cinemeta недоступно. Пожалуйста, попробуйте еще раз.',
			'lurokaDiscovery.oscars' => '«Оскар» · Победители в номинации «Лучший фильм»',
			'lurokaDiscovery.imdb100' => 'IMDb 100 лучших фильмов · снимок за сентябрь 2026 г.',
			'lurokaDiscovery.imdbTv100' => 'IMDb 100 лучших шоу · снимок за сентябрь 2026 г.',
			'lurokaDiscovery.emmyComedy' => 'Эмми · Победители комедийных сериалов · 1971–2026 гг.',
			'lurokaDiscovery.emmys' => 'Эмми · Победители драматических сериалов · 1966–2026 гг.',
			_ => null,
		} ?? switch (path) {
			'lurokaDiscovery.bafta' => 'BAFTA · Победители в номинациях «Лучший фильм»',
			'lurokaDiscovery.cannes' => 'Канны · Обладатели «Золотой пальмовой ветви»',
			'lurokaDiscovery.awardsNote' => 'Коллекции наград включают историю «Оскара» за лучший фильм, лауреатов премии «Эмми» в области драмы и комедии, а также расширенный отбор BAFTA/Канн. Повторные выигрышные титулы появляются один раз. При членстве используются истории категорий наград и факты из Викиданных. В списках IMDb 100 лучших фильмов и шоу сохранены снимки диаграмм за сентябрь 2026 года из mmdju/imdb-top250-api. Появляются только совпадения в видимых онлайн-библиотеках; размер коллекции зависит от наличия библиотеки.',
			'lurokaDiscovery.attribution' => 'Списки общедоступной популярности, метаданные и рейтинги IMDb предоставляются Cinemeta; его популярные списки не являются еженедельными диаграммами просмотра. В этом продукте используется TMDB API, но он не одобрен и не сертифицирован TMDB. Дополнительные еженедельные тенденции TMDb отражают интерес TMDb, а не просмотр цифр. Партитуры сохраняют свои исходные метки.',
			'lurokaDiscovery.tmdbSettings' => 'Источники обнаружения',
			'lurokaDiscovery.setupDescription' => 'Открытие Cinemeta работает сразу без учетной записи: популярные фильмы и сериалы, рейтинги IMDb и лауреаты наград. При необходимости подключите TMDb для получения еженедельных тенденций, используя ключ API или токен доступа для чтения API с сайта themoviedb.org/settings/api. Ваши учетные данные хранятся на этом устройстве.',
			'lurokaDiscovery.apiKey' => 'TMDb API ключ/токен доступа для чтения',
			'lurokaDiscovery.connect' => 'Подключить TMDb',
			'lurokaDiscovery.connecting' => 'Подключение…',
			'lurokaDiscovery.connected' => 'TMDb подключен · Еженедельные тенденции и награды включены',
			'lurokaDiscovery.builtInKeyNote' => 'Работает на встроенном общем ключе Luroka TMDb. Добавьте свой собственный бесплатный ключ ниже, чтобы получить выделенные ограничения скорости и полный контроль.',
			'lurokaDiscovery.disconnect' => 'Отключить TMDb',
			'lurokaDiscovery.invalidKey' => 'Не удалось проверить TMDb. Проверьте свои учетные данные и подключение к Интернету.',
			'lurokaDiscovery.feedError' => 'Обнаружение TMDb недоступно. Пожалуйста, попробуйте еще раз.',
			'lurokaDiscovery.allTitles' => 'Все названия',
			'lurokaDiscovery.available' => 'В вашей библиотеке',
			'lurokaDiscovery.checking' => 'Проверка ваших библиотек…',
			'lurokaDiscovery.availabilityUnknown' => 'Некоторые библиотеки не удалось проверить. Попробуйте обновиться.',
			'lurokaDiscovery.noAvailable' => 'В проверенных библиотеках не найдено соответствующих заголовков.',
			'lurokaDiscovery.sourceInfo' => 'Тенденции недели и избранные победители · TMDb',
			'lurokaDiscovery.configure' => 'Настройки обнаружения',
			'app.title' => 'Luroka',
			'appIcon.title' => 'Значок приложения',
			'appIcon.defaultIcon' => 'По умолчанию',
			'appIcon.current' => 'Текущий значок',
			'appIcon.locked' => 'Перк сторонника',
			'appIcon.lockedHint' => 'Альтернативные значки — это перк сторонника.',
			'appIcon.changeFailed' => 'Не удалось изменить значок приложения',
			'appIcon.launcherHint' => 'Новый значок появится на главном экране, как только вы покинете Luroka.',
			'appIcon.tvLauncherHint' => 'Новый баннер появится, как только вы покинете Luroka. Android TV может продолжать показывать старое изображение до тех пор, пока телевизор не перезагрузится.',
			'appIcon.names.midnight' => 'Полночь',
			'appIcon.names.ember' => 'Эмбер',
			'appIcon.names.paper' => 'Бумага',
			'appIcon.names.oled' => 'OLED',
			'appIcon.names.line' => 'Линия',
			'appIcon.names.ocean' => 'Океан',
			'appIcon.names.ultraviolet' => 'Ультрафиолетовый',
			'appIcon.names.matcha' => 'Матча',
			'appIcon.names.sunset' => 'Закат',
			'appIcon.names.gold' => 'Золото',
			'appIcon.names.titanium' => 'Титан',
			'appIcon.names.glass' => 'Стекло',
			'appIcon.names.crt' => 'ЭЛТ',
			'appIcon.names.vhs' => 'VHS',
			'appIcon.names.synthwave' => 'Синтвейв',
			'appIcon.names.pixel' => 'Пиксель',
			'appIcon.names.neon' => 'Неон',
			'appIcon.names.sticker' => 'наклейка',
			'appIcon.names.ticket' => 'Билет',
			'appIcon.names.pop' => 'Поп',
			'appIcon.names.strata' => 'Страта',
			'appIcon.names.facet' => 'Фасет',
			'appIcon.names.tilde' => 'Тильда',
			'auth.signInWithPlex' => 'Войти через Plex',
			'auth.showQRCode' => 'Показать QR-код',
			'auth.authenticate' => 'Войти',
			'auth.authenticationTimeout' => 'Время аутентификации истекло. Попробуйте снова.',
			'auth.scanQRToSignIn' => 'Отсканируйте QR-код для входа',
			'auth.waitingForAuth' => 'Ожидание аутентификации...\nВыполните вход в браузере.',
			'auth.useBrowser' => 'Использовать браузер',
			'auth.or' => 'или',
			'auth.connectToMediaBrowser' => ({required Object product}) => 'Подключиться к ${product}',
			'auth.quickConnect' => 'Quick Connect',
			'auth.useQuickConnect' => 'Использовать Quick Connect',
			'auth.quickConnectInstructions' => 'Откройте Quick Connect в Jellyfin и введите этот код.',
			'auth.quickConnectWaiting' => 'Ожидание подтверждения…',
			'auth.quickConnectCancel' => 'Отмена',
			'auth.quickConnectExpired' => 'Срок действия Quick Connect истёк. Попробуйте снова.',
			'auth.localDataRecoveryRequired' => 'Luroka не удалось безопасно восстановить данные локального входа и несинхронизированные данные о воспроизведении. Войдите снова.',
			'auth.pinCheckRejected' => 'Проверка PIN-кода Plex была отклонена',
			'common.cancel' => 'Отмена',
			'common.save' => 'Сохранить',
			'common.close' => 'Закрыть',
			'common.clear' => 'Очистить',
			'common.reset' => 'Сбросить',
			'common.later' => 'Позже',
			'common.submit' => 'Отправить',
			'common.confirm' => 'Подтвердить',
			'common.retry' => 'Повторить',
			'common.logout' => 'Выйти',
			'common.unknown' => 'Неизвестно',
			'common.refresh' => 'Обновить',
			'common.yes' => 'Да',
			'common.no' => 'Нет',
			'common.delete' => 'Удалить',
			'common.edit' => 'Редактировать',
			'common.shuffle' => 'Перемешать',
			'common.addTo' => 'Добавить в...',
			'common.createNew' => 'Создать новый',
			'common.connect' => 'Подключить',
			'common.disconnect' => 'Отключить',
			'common.play' => 'Воспроизвести',
			'common.pause' => 'Пауза',
			'common.resume' => 'Продолжить',
			'common.error' => 'Ошибка',
			'common.search' => 'Поиск',
			'common.home' => 'Главная',
			'common.back' => 'Назад',
			'common.settings' => 'Настройки',
			'common.mute' => 'Без звука',
			'common.ok' => 'OK',
			'common.off' => 'Выкл.',
			'common.options' => 'Параметры',
			'common.seasonNumber' => ({required Object number}) => 'Сезон ${number}',
			'common.episodeNumberTitle' => ({required Object number, required Object title}) => 'Эпизод ${number} - ${title}',
			'common.chapterNumber' => ({required Object number}) => 'Глава ${number}',
			'common.reconnect' => 'Переподключить',
			'common.viewAll' => 'Показать все',
			'common.serversUnreachable' => 'Серверы недоступны',
			'common.loading' => 'Загрузка...',
			'common.fullscreen' => 'Полноэкранный режим',
			'common.exitFullscreen' => 'Выйти из полноэкранного режима',
			'common.ratingSource.critic' => 'Критики',
			'common.ratingSource.audience' => 'Зрители',
			'common.ratingSource.imdb' => 'IMDb',
			'common.ratingSource.tmdb' => 'TMDB',
			'common.ratingSource.rottenTomatoes' => 'Rotten Tomatoes',
			'common.ratingSource.simkl' => 'Simkl',
			'common.ratingSource.mal' => 'MyAnimeList',
			'common.ratingSource.anilist' => 'AniList',
			'common.ratingSource.trakt' => 'Trakt',
			'common.ratingSource.rottenTomatoesCritic' => 'Критики Rotten Tomatoes',
			'common.ratingSource.rottenTomatoesAudience' => 'Зрители Rotten Tomatoes',
			'common.ratingSource.metacritic' => 'Metacritic',
			'common.ratingSource.letterboxd' => 'Letterboxd',
			'common.notAvailable' => 'Н/Д',
			'common.url' => 'URL',
			'common.letterKeys' => 'АБВ',
			'common.mediaKind.movie' => 'Фильм',
			'common.mediaKind.show' => 'Сериал',
			'common.mediaKind.season' => 'Сезон',
			'common.mediaKind.episode' => 'Эпизод',
			'common.mediaKind.artist' => 'Исполнитель',
			'common.mediaKind.album' => 'Альбом',
			'common.mediaKind.track' => 'Трек',
			'common.mediaKind.collection' => 'Коллекция',
			'common.mediaKind.playlist' => 'Плейлист',
			'common.mediaKind.clip' => 'Клип',
			'common.mediaKind.photo' => 'Фото',
			'common.mediaKind.folder' => 'Папка',
			'common.stay' => 'Останься',
			'common.exitApp' => 'Выход',
			'common.exitAppBody' => 'Вы уверены, что хотите выйти из Luroka?',
			'tvHints.select' => 'Выбрать',
			'tvHints.browse' => 'Обзор',
			'tvHints.back' => 'Назад',
			'screens.licenses' => 'Лицензии',
			'screens.switchProfile' => 'Сменить профиль',
			'screens.subtitleStyling' => 'Стиль субтитров',
			'screens.mpvConfig' => 'mpv.conf',
			'screens.logs' => 'Логи',
			'mediaExtras.trailers' => 'Трейлеры',
			'mediaExtras.featurettes' => 'Короткометражки',
			'mediaExtras.interviews' => 'Интервью',
			'mediaExtras.deletedScenes' => 'Удаленные сцены',
			'mediaExtras.behindTheScenes' => 'За кулисами',
			'mediaExtras.scenesAndClips' => 'Сцены и клипы',
			'mediaExtras.other' => 'Другие дополнения',
			'update.available' => 'Доступно обновление',
			'update.versionAvailable' => ({required Object version}) => 'Доступна версия ${version}',
			'update.currentVersion' => ({required Object version}) => 'Текущая: ${version}',
			'update.skipVersion' => 'Пропустить эту версию',
			'update.viewRelease' => 'Посмотреть релиз',
			'update.latestVersion' => 'У вас последняя версия',
			'update.checkFailed' => 'Не удалось проверить обновления',
			'supporter.title' => 'Сторонник Luroka',
			'supporter.intro' => 'Одноразовая покупка, которая поддерживает разработку Luroka и открывает косметические дополнения:',
			'supporter.presetThemes' => 'Предустановленные темы',
			'supporter.presetThemesDescription' => 'Уголь, ледник, лес, слива и бумага',
			'supporter.customTheme' => 'Пользовательская тема',
			'supporter.customThemeDescription' => 'Каждый цвет выбирайте сами',
			'supporter.appIcons' => 'Значки приложений',
			'supporter.appIconsDescription' => 'Выберите альтернативный значок Luroka.',
			'supporter.buy' => ({required Object price}) => 'Купить за ${price}',
			'supporter.loadingPrice' => 'Загрузка цены...',
			'supporter.restore' => 'Восстановить покупки',
			'supporter.pending' => 'Ваша покупка ожидает оплаты или одобрения. Дополнения разблокируются, как только магазин завершит их.',
			'supporter.thankYouTitle' => 'Спасибо за поддержку Luroka',
			'supporter.thankYouBody' => 'Ваши дополнительные возможности Supporter разблокированы.',
			'supporter.tileSubtitle' => 'Разблокируйте темы и значки приложений, совершив единоразовую покупку.',
			'supporter.tileSubtitleThemesOnly' => 'Разблокируйте темы с помощью единоразовой покупки',
			'supporter.tileUnlocked' => 'Спасибо за вашу поддержку',
			'supporter.errors.storeUnavailable' => 'Покупки недоступны. Убедитесь, что вы вошли в магазин и на этом устройстве разрешены покупки.',
			'supporter.errors.productNotFound' => 'Покупка Supporter сейчас недоступна в вашем магазине.',
			'supporter.errors.productQueryFailed' => 'Не удалось загрузить цену. Проверьте подключение и повторите попытку.',
			'supporter.errors.purchaseFailed' => 'Покупка не прошла. Попробуйте еще раз.',
			'supporter.errors.restoreFailed' => 'Не удалось связаться с магазином, чтобы восстановить покупку. Попробуйте еще раз.',
			'supporter.errors.nothingToRestore' => 'Для этой учетной записи магазина не обнаружено покупок Supporter.',
			'settings.title' => 'Настройки',
			'settings.supportDeveloper' => 'Поддержать Luroka',
			'settings.supportDeveloperDescription' => 'Пожертвуйте через Liberapay на развитие',
			'settings.language' => 'Язык',
			'settings.theme' => 'Тема',
			'settings.appearance' => 'Внешний вид',
			'settings.videoPlayback' => 'Воспроизведение видео',
			'settings.videoPlaybackDescription' => 'Настройка поведения воспроизведения',
			'settings.advanced' => 'Дополнительно',
			'settings.episodePosterMode' => 'Стиль постера эпизода',
			'settings.seriesPoster' => 'Постер сериала',
			'settings.seasonPoster' => 'Постер сезона',
			'settings.episodeThumbnail' => 'Миниатюра',
			'settings.homeHeroSize' => 'Размер карусели',
			'settings.homeHeroSizeSmall' => 'Маленький',
			'settings.homeHeroSizeMedium' => 'Средний',
			'settings.homeHeroSizeLarge' => 'Большой',
			'settings.secondsLabel' => 'Секунды',
			'settings.minutesLabel' => 'Минуты',
			'settings.secondsShort' => 'с',
			'settings.minutesShort' => 'м',
			'settings.durationHint' => ({required Object min, required Object max}) => 'Введите длительность (${min}-${max})',
			'settings.systemTheme' => 'Системная',
			'settings.lightTheme' => 'Светлая',
			'settings.darkTheme' => 'Тёмная',
			'settings.oledTheme' => 'OLED',
			'settings.libraryDensity' => 'Плотность библиотеки',
			'settings.displayScale' => 'Масштаб отображения',
			'settings.compact' => 'Компактный',
			'settings.comfortable' => 'Комфортный',
			'settings.gridSpacing' => 'Отступы сетки',
			'settings.gridSpacingTight' => 'Плотные',
			'settings.gridSpacingNormal' => 'Обычные',
			'settings.gridSpacingSpacious' => 'Просторные',
			'settings.tvCornerSpotlightBackdrop' => 'Фоновое изображение в углу',
			'settings.tvCornerSpotlightBackdropDescription' => 'Показывать изображение избранного материала в правом верхнем углу, а не на весь экран',
			'settings.viewMode' => 'Режим просмотра',
			'settings.gridView' => 'Сетка',
			'settings.listView' => 'Список',
			'settings.continueWatchingAction' => 'Действие для «Продолжить просмотр»',
			'settings.continueWatchingPlay' => 'Воспроизвести',
			'settings.continueWatchingDetails' => 'Открыть сведения',
			'settings.episodeAction' => 'Действие для эпизодов',
			'settings.episodePlay' => 'Воспроизвести',
			'settings.episodeDetails' => 'Открыть сведения',
			'settings.useGlobalHubs' => 'Использовать макет главной',
			'settings.useGlobalHubsDescription' => 'Показывать единые разделы главной. Иначе использовать рекомендации библиотек.',
			'settings.showServerNameOnHubs' => 'Показывать имя сервера в хабах',
			'settings.showServerNameOnHubsDescription' => 'Всегда показывать имена серверов в заголовках разделов.',
			'settings.groupLibrariesByServer' => 'Группировать библиотеки по серверам',
			'settings.groupLibrariesByServerDescription' => 'Группировать библиотеки боковой панели по медиасерверам.',
			'settings.alwaysKeepSidebarOpen' => 'Всегда держать боковую панель открытой',
			'settings.alwaysKeepSidebarOpenDescription' => 'Боковая панель остаётся развёрнутой, область контента подстраивается',
			'settings.showUnwatchedCount' => 'Показывать количество непросмотренных',
			'settings.showUnwatchedCountDescription' => 'Отображать количество непросмотренных эпизодов для сериалов и сезонов',
			'settings.showWatchedIndicators' => 'Показывать индикаторы просмотра',
			'settings.showWatchedIndicatorsDescription' => 'Отображать галочку на просмотренных фильмах, сериалах и эпизодах',
			'settings.showEpisodeNumberOnCards' => 'Показывать номер эпизода на карточках',
			'settings.showEpisodeNumberOnCardsDescription' => 'Показывать номер сезона и серии на карточках серий',
			'settings.showSeasonPostersOnTabs' => 'Показывать постеры сезонов на вкладках',
			'settings.showSeasonPostersOnTabsDescription' => 'Показывать постер каждого сезона над его вкладкой',
			'settings.tvFullCardLayout' => 'Полноформатные ТВ-карточки',
			'settings.tvFullCardLayoutDescription' => 'Использовать ТВ-карточки только с изображением и наложенными именами актёров',
			'settings.focusGlow' => 'Свечение при фокусе',
			'settings.focusGlowDescription' => 'Показывать мягкое свечение вокруг карточки в фокусе',
			'settings.visualEffects' => 'Визуальные эффекты',
			'settings.visualEffectsAuto' => 'Автоматически',
			'settings.visualEffectsAutoDescription' => 'Автоматически уменьшать эффекты на маломощных устройствах',
			'settings.visualEffectsFull' => 'Полные',
			'settings.visualEffectsReduced' => 'Уменьшенные',
			'settings.visualEffectsReducedDescription' => 'Меньше анимаций и графика с более низким разрешением',
			'settings.hideSpoilers' => 'Скрыть спойлеры непросмотренных эпизодов',
			'settings.hideSpoilersDescription' => 'Размывать миниатюры и описания непросмотренных серий',
			'settings.playerBackend' => 'Бэкенд плеера',
			'settings.playerBackendDescription' => 'mpv воспроизводит больше форматов и предоставляет больше функций — рекомендуется. ExoPlayer помогает, если воспроизведение не работает или заикается на этом устройстве.',
			'settings.exoPlayer' => 'ExoPlayer',
			'settings.mpv' => 'mpv',
			'settings.hardwareDecoding' => 'Аппаратное декодирование',
			'settings.hardwareDecodingDescription' => 'Использовать аппаратное ускорение, когда доступно',
			'settings.playbackBuffer' => 'Буфер воспроизведения',
			'settings.playbackBufferAuto' => 'Авто (рекомендуется)',
			'settings.playbackBufferLarge' => 'Большой',
			'settings.playbackBufferExtraLarge' => 'Очень большой',
			'settings.playbackBufferDescription' => 'Буферизирует больше при нестабильном соединении. Также ограничено размером буфера.',
			'settings.defaultQualityTitle' => 'Качество по умолчанию',
			'settings.streamingQualityOriginalHint' => 'Воспроизводит файл точно так же, как он сохранен — лучшее качество, максимально использует полосу пропускания.',
			'settings.cellularQualityTitle' => 'Качество по умолчанию в мобильной сети',
			'settings.cellularQualitySameAsDefault' => 'Как качество по умолчанию',
			'settings.directPlayCoveredQuality' => 'Воспроизводить меньшие видео в исходном качестве',
			'settings.directPlayCoveredQualityDescription' => 'Воспроизводить напрямую видео, уже укладывающиеся в ограничение качества, вместо их транскодирования',
			'settings.videoCodecs' => 'Видеокодеки',
			'settings.videoCodecsDescription' => 'Кодеки без отметки транскодирует сервер',
			'settings.videoCodecsAlwaysAccepted' => 'Принимается всегда',
			'settings.musicQualityTitle' => 'Качество музыки',
			'settings.subtitleStyling' => 'Стиль субтитров',
			'settings.subtitleStylingDescription' => 'Настроить внешний вид субтитров',
			'settings.smallSkipDuration' => 'Малая перемотка',
			'settings.largeSkipDuration' => 'Большая перемотка',
			'settings.rewindOnResume' => 'Перемотка при возобновлении',
			'settings.secondsUnit' => ({required Object seconds}) => '${seconds} с',
			'settings.defaultSleepTimer' => 'Таймер сна по умолчанию',
			'settings.minutesUnit' => ({required Object minutes}) => '${minutes} мин',
			'settings.rememberTrackSelections' => 'Запоминать выбор дорожек для каждого сериала/фильма',
			'settings.rememberTrackSelectionsDescription' => 'Запоминать выбор аудиодорожки и субтитров для каждого материала',
			'settings.rememberTrackSelectionsBackendRule' => 'Plex сохраняет каждый выбор на сервере для каждого файла; Jellyfin также включает «Запоминать выбор» в учётной записи; Emby не поддерживается',
			'settings.followServerTrackSelections' => 'Использовать выбор дорожек сервера для каждой серии',
			'settings.followServerTrackSelectionsDescription' => 'При смене серии применять аудио и субтитры, выбранные на сервере, вместо переноса текущего выбора',
			'settings.resumeMusicOnLaunch' => 'Запоминать музыкальную сессию',
			'settings.resumeMusicOnLaunchDescription' => 'При запуске приложения открывать последний трек на паузе с того места, где он остановился',
			'settings.showChapterMarkersOnTimeline' => 'Показывать маркеры глав на шкале перемотки',
			'settings.showChapterMarkersOnTimelineDescription' => 'Разделять шкалу перемотки по границам глав',
			'settings.specialsOrdering' => 'Спецвыпуски в порядке эпизодов',
			'settings.specialsOrderingDescription' => 'Место спецвыпусков в порядке просмотра сериала',
			'settings.specialsOrderingServer' => 'Следовать порядку сервера',
			'settings.specialsOrderingAirDate' => 'Чередовать по дате выхода',
			'settings.specialsOrderingLast' => 'После обычных сезонов',
			'settings.clickVideoTogglesPlayback' => 'Нажатие на видео запускает или приостанавливает воспроизведение',
			'settings.clickVideoTogglesPlaybackDescription' => 'Нажатие на видео запускает или приостанавливает воспроизведение вместо показа элементов управления.',
			'settings.videoPlayerControls' => 'Элементы управления плеером',
			'settings.keyboardShortcuts' => 'Горячие клавиши',
			'settings.keyboardShortcutsDescription' => 'Настроить горячие клавиши',
			'settings.videoPlayerNavigation' => 'Навигация видеоплеера',
			'settings.videoPlayerNavigationDescription' => 'Использовать клавиши стрелок для навигации по элементам управления плеером',
			'settings.watchTogetherRelay' => 'Сервер ретрансляции для совместного просмотра',
			'settings.watchTogetherRelayDescription' => 'Ретрансляции Public Open Watch Party, если вы не установите свои собственные',
			'settings.watchTogetherRelayHint' => 'https://my-relay.example.com',
			'settings.watchTogetherRelayInvalid' => 'Введите допустимый базовый HTTP- или HTTPS-адрес сервера ретрансляции.',
			'settings.crashReporting' => 'Отчёты об ошибках',
			'settings.crashReportingDescription' => 'Отправлять отчёты об ошибках для улучшения приложения',
			'settings.debugLogging' => 'Журнал отладки',
			'settings.debugLoggingDescription' => 'Включить подробное журналирование для устранения неполадок',
			'settings.viewLogs' => 'Просмотр логов',
			'settings.viewLogsDescription' => 'Просмотр логов приложения',
			'settings.clearImageCache' => 'Очистить кэш изображений',
			'settings.clearImageCacheDescription' => 'Очистить кэшированные обложки и миниатюры. Изображения могут загружаться медленнее, пока не будут загружены снова.',
			'settings.clearImageCacheSuccess' => 'Кэш изображений успешно очищен',
			'settings.resetSettings' => 'Сбросить настройки',
			'settings.resetSettingsDescription' => 'Восстановить настройки по умолчанию. Это нельзя отменить.',
			'settings.resetSettingsSuccess' => 'Настройки успешно сброшены',
			'settings.backup' => 'Резервная копия',
			'settings.exportSettings' => 'Экспорт настроек',
			'settings.exportSettingsDescription' => 'Сохранить настройки в файл',
			'settings.exportSettingsSuccess' => 'Настройки экспортированы',
			'settings.importSettings' => 'Импорт настроек',
			'settings.importSettingsDescription' => 'Восстановить настройки из файла',
			'settings.importSettingsConfirm' => 'Это заменит ваши текущие настройки. Продолжить?',
			'settings.importSettingsSuccess' => 'Настройки импортированы',
			'settings.importSettingsInvalidFile' => 'Этот файл не является действительным экспортом настроек Luroka',
			'settings.importSettingsNoUser' => 'Войдите в систему перед импортом настроек',
			'settings.shortcutsReset' => 'Горячие клавиши сброшены по умолчанию',
			'settings.resetShortcutsConfirm' => 'Это заменит ваши пользовательские ярлыки на значения по умолчанию. Продолжать?',
			'settings.about' => 'О приложении',
			'settings.aboutDescription' => 'Информация о приложении и лицензии',
			'settings.updates' => 'Обновления',
			'settings.updateAvailable' => 'Доступно обновление',
			'settings.checkForUpdates' => 'Проверить обновления',
			'settings.autoCheckUpdatesOnStartup' => 'Автоматически проверять обновления при запуске',
			'settings.autoCheckUpdatesOnStartupDescription' => 'Уведомлять о доступном обновлении при запуске',
			'settings.validationErrorEnterNumber' => 'Введите корректное число',
			'settings.validationErrorDuration' => ({required Object min, required Object max, required Object unit}) => 'Длительность должна быть от ${min} до ${max} ${unit}',
			'settings.shortcutAlreadyAssigned' => ({required Object action}) => 'Сочетание клавиш уже назначено действию «${action}»',
			'settings.shortcutUpdated' => ({required Object action}) => 'Сочетание клавиш для действия «${action}» обновлено',
			'settings.saveFailed' => 'Не удалось сохранить изменения. Попробуйте снова.',
			'settings.autoPlayAndSkip' => 'Автовоспроизведение и пропуск',
			'settings.autoPlayNextEpisode' => 'Автовоспроизведение следующего эпизода',
			'settings.autoPlayNextEpisodeDescription' => 'Автоматически запускать следующий эпизод, когда заканчивается текущий',
			'settings.shuffleStartsFromBeginning' => 'Случайный порядок начинает с начала',
			'settings.shuffleStartsFromBeginningDescription' => 'Начинать каждый эпизод с начала при случайном воспроизведении вместо продолжения',
			'settings.playNextCountdown' => 'Обратный отсчёт перед следующим',
			'settings.playNextCountdownImmediate' => 'Воспроизводить сразу',
			'settings.skipIntroMode' => 'Пропуск вступления',
			'settings.skipIntroModeOffDescription' => 'Воспроизводить вступления обычным образом, без кнопки пропуска',
			'settings.skipIntroModeButtonDescription' => 'Показывать кнопку пропуска при начале вступления',
			'settings.skipIntroModeAutoDescription' => 'Пропускать вступления автоматически после указанной ниже задержки',
			'settings.skipCreditsMode' => 'Пропуск титров',
			'settings.skipCreditsModeOffDescription' => 'Воспроизводить титры обычным образом, без кнопки пропуска',
			'settings.skipCreditsModeButtonDescription' => 'Показывать кнопку пропуска при начале титров',
			'settings.skipCreditsModeAutoDescription' => 'Пропускать титры автоматически и воспроизводить следующий эпизод',
			'settings.skipMarkerModeOff' => 'Выкл.',
			'settings.skipMarkerModeButton' => 'Показывать кнопку',
			'settings.skipMarkerModeAuto' => 'Автоматически',
			'settings.forceSkipMarkerFallback' => 'Всегда использовать резервные маркеры',
			'settings.forceSkipMarkerFallbackDescription' => 'Использовать шаблоны названий глав, даже если в Plex есть собственные маркеры',
			'settings.autoSkipDelay' => 'Задержка автопропуска',
			'settings.autoSkipDelayDescription' => ({required Object seconds}) => 'Подождать ${seconds} секунд перед автопропуском',
			'settings.introPattern' => 'Шаблон маркера вступления',
			'settings.introPatternDescription' => 'Регулярное выражение для распознавания маркеров вступления в заголовках глав',
			'settings.creditsPattern' => 'Шаблон маркера титров',
			'settings.creditsPatternDescription' => 'Регулярное выражение для распознавания маркеров титров в заголовках глав',
			'settings.invalidRegex' => 'Недопустимое регулярное выражение',
			'settings.regex' => 'Регулярное выражение',
			'settings.downloads' => 'Загрузки',
			'settings.downloadLocationDescription' => 'Выберите место для хранения загруженного контента',
			'settings.downloadLocationDefault' => 'По умолчанию (Хранилище приложения)',
			'settings.downloadLocationCustom' => 'Другое расположение',
			'settings.selectFolder' => 'Выбрать папку',
			'settings.resetToDefault' => 'Сбросить по умолчанию',
			'settings.currentPath' => ({required Object path}) => 'Текущий: ${path}',
			'settings.downloadLocationChanged' => 'Место загрузки изменено',
			'settings.downloadLocationReset' => 'Место загрузки сброшено по умолчанию',
			'settings.downloadLocationInvalid' => 'Выбранная папка недоступна для записи',
			'settings.downloadLocationPickerUnavailable' => 'Выбор папки недоступен на этом устройстве',
			'settings.downloadOnWifiOnly' => 'Загружать только по Wi-Fi',
			'settings.downloadOnWifiOnlyDescription' => 'Запретить загрузку по мобильным данным',
			'settings.autoRemoveWatchedDownloads' => 'Автоудаление просмотренных загрузок',
			'settings.autoRemoveWatchedDownloadsDescription' => 'Автоматически удалять просмотренные загрузки',
			'settings.cellularDownloadBlocked' => 'Загрузки через мобильную сеть заблокированы. Используйте Wi-Fi или измените настройку.',
			'settings.maxVolume' => 'Максимальная громкость',
			'settings.maxVolumeDescription' => 'Разрешить усиление громкости выше 100% для тихих медиа',
			'settings.maxVolumePercent' => ({required Object percent}) => '${percent}%',
			'settings.discordRichPresence' => 'Статус активности Discord',
			'settings.discordRichPresenceDescription' => 'Показывать, что вы смотрите, в Discord',
			'settings.services' => 'Сервисы',
			'settings.servicesDescription' => 'Подключите Trakt, MyAnimeList, Seerr и другие',
			'settings.manageLibrariesDescription' => 'Изменять порядок и скрывать библиотеки',
			'settings.companionRemoteServer' => 'Сервер удалённого управления',
			'settings.companionRemoteServerDescription' => 'Разрешить мобильным устройствам в сети управлять этим приложением',
			'settings.companionRemoteServerStartFailed' => 'Не удалось запустить сервер удалённого управления',
			'settings.companionRemoteServerStopFailed' => 'Не удалось остановить сервер удалённого управления',
			'settings.autoPip' => 'Автоматический режим «картинка в картинке»',
			'settings.autoPipDescription' => 'Автоматически включать режим «картинка в картинке» при выходе из приложения во время воспроизведения',
			'settings.matchContentFrameRate' => 'Соответствие частоты кадров контента',
			'settings.matchContentFrameRateDescription' => 'Подстраивать частоту обновления экрана под видео',
			'settings.matchContentResolution' => 'Подстраивать под разрешение контента',
			'settings.matchContentResolutionDescription' => 'Переключает экран на исходное разрешение видео, чтобы масштабированием занимался телевизор. Во время воспроизведения меню и субтитры тоже масштабируются',
			'settings.matchRefreshRate' => 'Соответствие частоты обновления',
			'settings.matchRefreshRateDescription' => 'Подстраивать частоту обновления в полноэкранном режиме',
			'settings.matchDynamicRange' => 'Соответствие динамического диапазона',
			'settings.matchDynamicRangeDescription' => 'Включать HDR для HDR-контента, затем возвращаться к SDR',
			'settings.displaySwitchDelay' => 'Задержка переключения дисплея',
			'settings.tunneledPlayback' => 'Туннельное воспроизведение',
			'settings.tunneledPlaybackDescription' => 'Использовать видеотуннелирование. Отключите, если при воспроизведении HDR отображается чёрный экран или движение прерывается.',
			'settings.audioPassthrough' => 'Сквозной вывод аудио',
			'settings.audioPassthroughDescription' => 'Передавать звук Dolby/DTS на ресивер или телевизор без перекодирования, сохраняя объёмный звук. Отключите, если нет звука.',
			'settings.audioPassthroughDescriptionApple' => 'Использовать встроенный декодер Dolby от Apple для Dolby Digital Plus, включая Atmos. DTS и TrueHD по-прежнему воспроизводятся как многоканальный PCM. Отключите, если звук отсутствует.',
			'settings.audioPassthroughDescriptionAppleSpatial' => 'Используйте собственный декодер Dolby от Apple для Dolby Digital Plus, включая Atmos. В iOS, iPadOS и tvOS 26 или новее TrueHD Atmos и DTS:X воспроизводятся как пространственный звук. Другие треки DTS и TrueHD воспроизводятся как многоканальный PCM. Выключите, если у вас нет звука.',
			'settings.audioPassthroughOverriddenByNormalization' => 'Отключено при включённой нормализации громкости',
			'settings.audioChannelLimit' => 'Аудиоканалы',
			'settings.audioChannelLimitDescription' => 'Смешайте декодированный звук для динамиков, наушников или настроек HDMI, которые не могут воспроизводить все каналы.',
			'settings.audioChannelLimitOriginal' => 'Оригинал',
			'settings.audioChannelLimitOriginalDescription' => 'Воспроизведение каждого канала трека',
			'settings.audioChannelLimitSurround51' => 'До 5,1',
			'settings.audioChannelLimitSurround51Description' => 'Смешайте 7.1 с 5.1 для телевизоров и ресиверов, поддерживающих только 5.1 PCM. Прохождение не затрагивается.',
			'settings.audioChannelLimitStereo' => 'Стерео',
			'settings.audioChannelLimitStereoDescription' => 'Сведите два канала для стереодинамиков или наушников. Отключает сквозную передачу.',
			'settings.downmixCenterBoost' => 'Усиление центрального канала',
			'settings.downmixCenterBoostValue' => ({required Object db}) => '${db} дБ',
			'settings.downmixCenterBoostLabel' => 'Усиление (дБ)',
			'settings.downmixCenterBoostShort' => 'дБ',
			'settings.audioDownmixNormalize' => 'Нормализация громкости при микшировании',
			'settings.audioDownmixNormalizeDescription' => 'Снижает уровень микса во избежание клиппинга. Отключите, чтобы сохранить исходную громкость (возможны искажения в громких сценах).',
			'settings.dvConversionMode' => 'Преобразование Dolby Vision',
			'settings.dvConversionModeDescription' => 'Выберите, как обрабатывать файлы Dolby Vision Profile 7.',
			'settings.dvConversionAuto' => 'Авто',
			'settings.dvConversionNative' => 'Нативно / отключено',
			'settings.dvConversionDv81' => 'P7 → P8.1',
			'settings.dvConversionHevcStrip' => 'P7 → HEVC',
			'settings.dvConversionAutoDescription' => 'Использовать определение возможностей устройства и обычное резервное поведение',
			'settings.dvConversionNativeDescription' => 'Принудительно использовать нативный DV7 и не повторять DV-конвертацию',
			'settings.dvConversionDv81Description' => 'Принудительно выполнять inline-конвертацию RPU в Dolby Vision профиль 8.1',
			'settings.dvConversionHevcStripDescription' => 'Удалять слои Dolby Vision RPU/EL и передавать обычный HEVC',
			'settings.disableDolbyVision' => 'Отключить Dolby Vision',
			'settings.disableDolbyVisionDescription' => 'Воспроизводить слой HDR10 или HLG из файла вместо Dolby Vision, если он есть',
			'settings.hdrSdrConversion' => 'Преобразование HDR в SDR',
			'settings.hdrSdrConversionDescription' => 'Выберите, что преобразует HDR-видео, если дисплей не поддерживает HDR.',
			'settings.hdrSdrConversionAuto' => 'Авто',
			'settings.hdrSdrConversionAutoDescription' => 'Устройство на Android 9 и новее, проигрыватель на более старых версиях',
			'settings.hdrSdrConversionDevice' => 'Устройство',
			'settings.hdrSdrConversionDeviceDescription' => 'Преобразует видеооборудование устройства. Быстрее всего, но цвета зависят от устройства',
			'settings.hdrSdrConversionPlayer' => 'Проигрыватель',
			'settings.hdrSdrConversionPlayerDescription' => 'Преобразует проигрыватель. Одинаковые цвета, но 4K может подтормаживать на слабых ТВ-приставках',
			'settings.deinterlace' => 'Деинтерлейсинг',
			'settings.deinterlaceDescription' => 'Устранять гребёнку на чересстрочном видео (только в плеере mpv)',
			'settings.deinterlaceOff' => 'Выключенный',
			'settings.deinterlaceOffDescription' => 'Показывать чересстрочное видео в декодированном виде',
			'settings.deinterlaceVideo' => 'Видео',
			'settings.deinterlaceVideoDescription' => 'Превратите каждое поле в полный кадр. Для видеороликов, снятых для телевидения, например спортивных состязаний, новостей и концертов.',
			'settings.deinterlaceFilm' => 'Фильм',
			'settings.deinterlaceFilmDescription' => 'Восстановите исходные кадры фильмов и анимации, записанные по телесину со скоростью 29,97 кадров в секунду, что является обычным явлением на DVD-дисках NTSC. Видео снято для ТВ заикается. В прямом эфире используется видео',
			'settings.requireProfileSelectionOnOpen' => 'Запрашивать профиль при запуске',
			'settings.requireProfileSelectionOnOpenDescription' => 'Показывать выбор профиля при каждом открытии приложения',
			'settings.forceTvMode' => 'Принудительный режим ТВ',
			'settings.forceTvModeKeepTitle' => 'Сохранить макет телевизора?',
			'settings.forceTvModeKeepBody' => ({required Object seconds}) => 'Раскладка телевизора рассчитана на пульты дистанционного управления. Возврат к нормальному макету в ${seconds} s.',
			'settings.forceTvModeKeepConfirm' => 'Сохранить макет телевизора',
			'settings.forceTvModeReverted' => 'Расположение телевизора возвращено',
			'settings.forceTvModeDescription' => 'Принудительно включить ТВ-интерфейс. Для устройств без автоопределения. Требуется перезапуск.',
			'settings.startInFullscreen' => 'Запускать в полноэкранном режиме',
			'settings.startInFullscreenDescription' => 'Открывать Luroka в полноэкранном режиме при запуске',
			'settings.exitFullscreenOnPlayerClose' => 'Выходить из полноэкранного режима при закрытии плеера',
			'settings.exitFullscreenOnPlayerCloseDescription' => 'Автоматически выходить из полноэкранного режима при закрытии видеоплеера',
			'settings.autoHidePerformanceOverlay' => 'Автоскрытие оверлея производительности',
			'settings.autoHidePerformanceOverlayDescription' => 'Скрывать оверлей производительности вместе с элементами управления воспроизведением',
			'settings.showNavBarLabels' => 'Показывать подписи панели навигации',
			'settings.showNavBarLabelsDescription' => 'Отображать текстовые подписи под иконками панели навигации',
			'settings.startupSection' => 'Начальный раздел',
			'settings.showExploreTab' => 'Показывать вкладку «Обзор»',
			'settings.showExploreTabDescription' => 'Показывать вкладку «Обзор» с контентом из Plex Discover и подключённых трекеров',
			'settings.liveTvDefaultFavorites' => 'Избранные каналы по умолчанию',
			'settings.liveTvDefaultFavoritesDescription' => 'Показывать только избранные каналы при открытии ТВ',
			'settings.general' => 'Основные',
			'settings.generalDescription' => 'Язык, запуск и поведение окна',
			'settings.languageAndRegion' => 'Язык и регион',
			'settings.startup' => 'Запуск',
			'settings.display' => 'Экран',
			'settings.libraryAndCards' => 'Библиотека и карточки',
			'settings.homeScreen' => 'Главный экран',
			'settings.navigation' => 'Навигация',
			'settings.window' => 'Окно',
			'settings.liveTv' => 'Прямой эфир',
			'settings.player' => 'Плеер',
			'settings.videoAndDisplay' => 'Видео и экран',
			'settings.audio' => 'Аудио',
			'settings.quality' => 'Качество',
			'settings.subtitles' => 'Субтитры',
			'settings.seekAndTiming' => 'Перемотка и время',
			'settings.behavior' => 'Поведение',
			'settings.gestures' => 'Жесты',
			'settings.gestureBrightnessSwipe' => 'Свайп для яркости',
			'settings.gestureBrightnessSwipeDescription' => 'Проведите вверх или вниз по левому краю, чтобы изменить яркость',
			'settings.gestureVolumeSwipe' => 'Свайп для громкости',
			'settings.gestureVolumeSwipeDescription' => 'Проведите вверх или вниз по правому краю, чтобы изменить громкость',
			'settings.gesturePinchToZoom' => 'Щипок для масштабирования',
			'settings.gesturePinchToZoomDescription' => 'Сведите или разведите пальцы на видео, чтобы изменить масштаб',
			_ => null,
		} ?? switch (path) {
			'settings.rememberBrightnessLevel' => 'Запоминать уровень яркости',
			'settings.rememberBrightnessLevelDescription' => 'Начинать воспроизведение с яркостью, установленной последним свайпом',
			'settings.controls' => 'Элементы управления',
			'settings.rememberPlayerChanges' => 'Запоминать изменения плеера',
			'settings.rememberPlayerChangesDescription' => 'Где сохраняется и откуда повторно применяется изменение, сделанное во время воспроизведения',
			'settings.scopePlaybackSpeed' => 'Скорость воспроизведения',
			'settings.scopeShaderPreset' => 'Предустановка шейдера',
			'settings.scopeAspectRatio' => 'Соотношение сторон',
			'settings.scopeSyncOffsets' => 'Синхронизация аудио и субтитров',
			'settings.playerScopeOff' => 'Не сохранять',
			'settings.playerScopeGlobal' => 'Везде',
			'settings.playerScopeLibrary' => 'Для библиотеки',
			'settings.playerScopeTitle' => 'Для сериала или фильма',
			'settings.exportDialogTitle' => 'Экспорт настроек Luroka',
			'settings.velvetHourTheme' => 'Бархатный час',
			'themeEditor.builtIn' => 'Встроенный',
			'themeEditor.presets' => 'Пресеты',
			'themeEditor.custom' => 'Пользовательский',
			'themeEditor.customEmpty' => 'Еще не создан',
			'themeEditor.editCustom' => 'Редактировать пользовательскую тему',
			'themeEditor.editCustomDescription' => 'Каждый цвет выбирайте сами',
			'themeEditor.locked' => 'Разблокировать с помощью сторонника',
			'themeEditor.savedLocked' => 'Сохранено — разблокируется с помощью сторонника.',
			'themeEditor.title' => 'Пользовательская тема',
			'themeEditor.startFrom' => 'Начать с',
			'themeEditor.startFromDescription' => 'Скопируйте все цвета из другой темы',
			'themeEditor.colors' => 'Цвета',
			'themeEditor.preview' => 'Предварительный просмотр',
			'themeEditor.slots.bg' => 'Фон',
			'themeEditor.slots.surface' => 'Поверхность',
			'themeEditor.slots.outline' => 'Схема',
			'themeEditor.slots.text' => 'Текст',
			'themeEditor.slots.textMuted' => 'Вторичный текст',
			'themeEditor.slots.accent' => 'Акцент',
			'themeEditor.opacity' => 'Непрозрачность',
			'themeEditor.hexHint' => '#RRGGBB или #AARRGGBB',
			'themeEditor.fromOtherThemes' => 'Из других тем',
			'themeEditor.swatchLabel' => ({required Object theme, required Object color}) => '${theme} ${color}',
			'themeEditor.contrast.textOnBg' => 'Текст на заднем плане',
			'themeEditor.contrast.textOnSurface' => 'Текст на поверхности',
			'themeEditor.contrast.textMutedOnBg' => 'Дополнительный текст на заднем плане',
			'themeEditor.contrast.textMutedOnSurface' => 'Вторичный текст на поверхности',
			'themeEditor.contrast.accentOnBg' => 'Акцент на фоне',
			'themeEditor.contrast.accentOnSurface' => 'Акцент на поверхности',
			'themeEditor.contrast.labelOnAccent' => 'Надпись на кнопке на акценте',
			'themeEditor.lowContrast' => ({required Object pair, required Object ratio, required Object minimum}) => '${pair}: ${ratio}:1, ниже рекомендованного ${minimum}:1.',
			'themeEditor.discardTitle' => 'Отменить изменения?',
			'themeEditor.discardMessage' => 'Несохраненные изменения цвета будут потеряны.',
			'themeEditor.discard' => 'Отбросить',
			'themeEditor.previewCardTitle' => ({required Object number}) => 'Эпизод ${number}',
			'themeEditor.previewCardSubtitle' => ({required Object minutes}) => '${minutes} осталось мин.',
			'themeEditor.previewSwitch' => 'Автозапуск',
			'themeEditor.previewMutedText' => 'Второстепенный текст читается так',
			'seriesBrowser.oneEpisode' => '1 серия',
			'seriesBrowser.watchedCount' => ({required Object count}) => '${count} смотрел',
			'seriesBrowser.episodeCount' => ({required Object count}) => '${count} эпизоды',
			'seriesBrowser.episodesFor' => ({required Object season}) => '${season} · Эпизоды',
			'seriesBrowser.enterHint' => 'Выберите: открытый сезон · ↓: серии',
			'titlePage.genre' => 'Жанр',
			'titlePage.remaining' => ({required Object time}) => 'Осталось ${time}',
			'titlePage.continueEpisode' => ({required Object season, required Object episode}) => 'Продолжить S${season} E${episode}',
			'titlePage.watchlist' => 'Список наблюдения',
			'titlePage.more' => 'Подробнее',
			'tvMenus.appearanceDescription' => 'Тема, поля экрана и постеры',
			'lurokaPlayer.title' => 'Настройки плеера',
			'lurokaPlayer.watch' => 'Смотреть',
			'lurokaPlayer.watchDescription' => 'Задайте темп, успокойтесь и решите, что будет дальше.',
			'lurokaPlayer.picture' => 'Настройки изображения',
			'lurokaPlayer.pictureDescription' => 'Zoom, HDR и обработка видео',
			'lurokaPlayer.sound' => 'Аудио и субтитры',
			'lurokaPlayer.audioSettings' => 'Настройки звука',
			'lurokaPlayer.soundDescription' => 'Тайминг, громкость и аудиовыход',
			'lurokaPlayer.chooseTracks' => 'Выбор языков и дорожек субтитров',
			'lurokaPlayer.tools' => 'Расширенный',
			'lurokaPlayer.toolsDescription' => 'Информация о воспроизведении и диагностика',
			'lurokaPlayer.preferences' => 'Настройки воспроизведения',
			'lurokaPlayer.preferencesDescription' => 'Ваш кинотеатр, ваши настройки по умолчанию. Начните со звука и титров, затем настройте потоковую передачу и экран.',
			'lurokaPlayer.streamPreferences' => 'Качество потоковой передачи',
			'lurokaPlayer.displayPreferences' => 'Дисплей',
			'lurokaPlayer.enginePreferences' => 'Расширенные возможности проигрывателя',
			'lurokaPlayer.seekPreferences' => 'Ищу',
			'lurokaPlayer.watchPreferences' => 'Автозапуск и пропуск',
			'lurokaPlayer.rememberPreferences' => 'Помните предпочтения',
			'lurokaSettings.quickSetup' => 'Быстрая настройка',
			'lurokaSettings.quickSetupDescription' => 'Начните с самого необходимого: более плавного просмотра ТВ, удобного расположения экрана, макета «Домой» и настроек воспроизведения.',
			'lurokaSettings.experience' => 'Ваш опыт',
			'lurokaSettings.experienceDescription' => 'Сделайте Luroka удобным: внешний вид, языки, воспроизведение, библиотеки и время работы на экране.',
			'lurokaSettings.remoteHint' => '↑ ↓ Просмотр категорий · → / Выбрать Открыть параметры · ← Вернуться к категориям',
			'playerChrome.browse' => 'Главы и очередь',
			'playerChrome.backToPlayback' => 'Вернуться к воспроизведению',
			'playerChrome.nowPlaying' => 'СЕЙЧАС ИГРАЕТ',
			'playerChrome.options' => 'ОПЦИИ ИГРОКА',
			'tvLayout.screenMargins' => 'Поля экрана телевизора',
			'tvLayout.screenMarginsDescription' => 'Уменьшите края приложения, если ваш телевизор обрезает часть изображения.',
			'tvLayout.screenMarginsDefault' => '0% (по умолчанию)',
			'studios.checkingCopies' => 'Проверка других библиотек... Выбирайте известную копию в любой момент.',
			'studios.incompleteCopies' => 'Некоторые библиотеки не удалось проверить. Выберите известную копию или отмените и повторите попытку.',
			'studios.partialFavorites' => 'Некоторые избранные не удалось загрузить. Выберите «Обновить», чтобы повторить попытку.',
			'studios.copyLookupFailedTitle' => 'Не удалось проверить все копии',
			'studios.copyLookupFailedMessage' => 'Некоторые библиотеки не ответили. Вы можете открыть одну из уже найденных копий или отменить и повторить попытку.',
			'studios.openKnownCopies' => 'Показать известные копии',
			'studios.browseAll' => 'Просмотреть все',
			'studios.titleCount' => ({required Object count}) => '${count} заголовки',
			'studios.topRated' => 'Лучшие по рейтингу',
			'studios.mostWatched' => 'Самые просматриваемые в вашей библиотеке',
			'studios.collection' => 'СТУДИЙСКАЯ КОЛЛЕКЦИЯ',
			'studios.loadedTitles' => ({required Object count}) => '${count} заголовки загружены',
			'studios.sort' => 'Сортировать названия',
			'studios.sortTitleAscending' => 'Название А–Я',
			'studios.sortTitleDescending' => 'Название Z – A',
			'studios.sortNewest' => 'Новейший выпуск',
			'studios.sortOldest' => 'Самый старый выпуск',
			'studios.sortAdded' => 'Недавно добавлено',
			'studios.sortEpisodeAdded' => 'Недавно добавленный эпизод',
			'studios.sortRating' => 'Самый высокий рейтинг',
			'studios.title' => 'Просмотр по студии',
			'studios.all' => 'Все',
			'studios.movies' => 'Фильмы',
			'studios.shows' => 'ТВ-шоу',
			'studios.loadMore' => 'Загрузить больше названий',
			'studios.empty' => 'В видимых в данный момент библиотеках нет соответствующих заголовков.',
			'studios.retry' => 'Не удалось загрузить больше названий. Выберите, чтобы повторить попытку.',
			'studios.description' => 'Находите фильмы и сериалы этой студии в своих библиотеках.',
			'dashboard.previousFeature' => 'Предыдущее избранное название',
			'dashboard.nextFeature' => 'Следующий избранный заголовок',
			'dashboard.cinemaHome' => 'ГЛАВНАЯ',
			'dashboard.episodeFallback' => 'ТВ-эпизод',
			'dashboard.timeLeft' => ({required Object minutes}) => 'Осталось ${minutes} мин.',
			'dashboard.timeLeftHours' => ({required Object hours, required Object minutes}) => 'Осталось ${hours} ч ${minutes} мин.',
			'dashboard.spoilerHidden' => 'Подробности эпизода скрыты вашим спойлером.',
			'dashboard.synopsisUnavailable' => 'Откройте «Подробности», чтобы узнать больше об этом заголовке.',
			'dashboard.yourSpace' => 'ВАШЕ ПРОСТРАНСТВО',
			'dashboard.title' => 'Ваше кино.',
			'dashboard.subtitle' => 'Продолжите просмотр или найдите следующую историю.',
			'dashboard.featured' => 'ВЫБОР LUROKA',
			'dashboard.jumpBackIn' => 'Продолжить просмотр',
			'dashboard.episodeLabel' => ({required Object season, required Object episode}) => 'S${season} · E${episode}',
			'dashboard.anotherPick' => 'Еще один выбор',
			'dashboard.exploreSeries' => 'Изучите серию',
			'dashboard.showFeatured' => 'Сфокусированные детали заголовка',
			'dashboard.showFeaturedDescription' => 'Показать обложку, краткий обзор и информацию об эпизоде для выделенной карточки.',
			'lurokaCatalog.aboutPerson' => 'В ЦЕНТРЕ ВНИМАНИЯ',
			'lurokaCatalog.biographyUnavailable' => 'Биография недоступна на этом сервере.',
			'lurokaCatalog.filmography' => 'Фильмы и сериалы в ваших библиотеках',
			'lurokaCatalog.recommended' => 'Рекомендации',
			'lurokaCatalog.browse' => 'Все названия',
			'lurokaCatalog.collections' => 'Коллекции',
			'lurokaCatalog.browseHint' => 'Изучите свой каталог. Формируйте выбор с помощью фильтров и сортировки.',
			'lurokaCatalog.recommendedHint' => 'Найдите свою следующую историю',
			'lurokaCatalog.details' => 'За историей',
			'referenceDetails.oneEpisodeLeft' => 'остался 1 эпизод',
			'referenceDetails.playAll' => 'Воспроизвести все',
			'referenceDetails.present' => 'Настоящее время',
			'referenceDetails.continuing' => 'Продолжение',
			'referenceDetails.upNext' => 'Далее',
			'referenceDetails.episodesLeft' => ({required Object count}) => '${count} осталось серий',
			'lurokaThemes.title' => 'Кинопалитры Luroka',
			'lurokaThemes.coral' => 'Коралл · темно-синий и закат',
			'lurokaThemes.ocean' => 'Океан · темно-синий и лед',
			'lurokaThemes.jade' => 'Нефрит · вечнозеленый и мятный',
			'lurokaThemes.amethyst' => 'Аметист · полуночно-фиолетовый',
			'lurokaThemes.darkThemes' => 'Темные темы кино',
			'lurokaThemes.lightThemes' => 'Легкие кинематографические темы',
			'lurokaThemes.moreThemes' => 'Больше тем',
			'lurokaThemes.moreThemesDescription' => 'Просмотрите дополнительные палитры и пользовательские цвета',
			'lurokaThemes.obsidian' => 'Обсидиан · чистый черный и шампанское',
			'lurokaThemes.nocturne' => 'Ноктюрн · уголь и шампанское',
			'lurokaThemes.burgundy' => 'Бургундия · бархатное вино и роза',
			'lurokaThemes.slate' => 'Сланец · графит и барвинок',
			'lurokaThemes.espresso' => 'Эспрессо · какао и карамель',
			'lurokaThemes.pearl' => 'Жемчуг · фарфор и сапфир',
			'lurokaThemes.linen' => 'Лен · теплый цвет слоновой кости и терракоты',
			'lurokaThemes.sunrise' => 'Восход · персик и коралл',
			'lurokaThemes.coastal' => 'Прибрежный · туман и бирюзовый океан',
			'lurokaThemes.latte' => 'Латте · сливки и карамель',
			'lurokaThemes.sage' => 'Шалфей · мягкий зеленый и эвкалипт',
			'lurokaThemes.lavender' => 'Лаванда · сирень и темно-фиолетовый',
			'customPerformance.title' => 'Производительность и эффекты',
			'customPerformance.fireStickMode' => 'Режим энергосбережения устройства',
			'customPerformance.description' => 'Используйте уменьшенные эффекты, статические фоны, изображения с разрешением 720p и кэш изображений размером 40 МБ. Если этот параметр включен, он переопределяет визуальные эффекты; его отключение восстанавливает настройки визуальных эффектов.',
			'customPerformance.detailsTitle' => 'Детали производительности',
			'customPerformance.details' => 'Активные эффекты, ограничение кэша изображений и измерения производительности просмотра',
			'customPerformance.effectsTier' => 'Уровень активных эффектов',
			'customPerformance.imageCache' => 'Ограничение кэша изображений',
			'customPerformance.measurement' => 'Просмотр измерений',
			'customPerformance.measureInstructions' => 'Запустите 20-секундный образец, вернитесь на главный экран и просмотрите содержимое с помощью пульта дистанционного управления. Вернитесь сюда, чтобы увидеть результаты. Для сравнения повторите те же действия с включенным и выключенным режимом. Это измеряет работу пользовательского интерфейса Flutter, а не производительность видеодекодера.',
			'customPerformance.startSample' => 'Запустить 20-секундный образец',
			'customPerformance.stopSample' => 'Завершить образец сейчас',
			'customPerformance.sampling' => 'Выборка — вернитесь на главную и просмотрите. Результаты будут храниться здесь.',
			'customPerformance.frames' => 'Выборка кадров',
			'customPerformance.slowFrames' => 'Рамки сверх бюджета',
			'customPerformance.buildP95' => 'Время сборки пользовательского интерфейса (95-й процентиль)',
			'customPerformance.rasterP95' => 'Время растра (95-й процентиль)',
			'customPerformance.frameBudget' => 'Бюджет на кадр',
			'customPerformance.processMemory' => 'Память процесса приложения в конце выборки',
			'customPerformance.noFrames' => 'Отрендеренные кадры не были захвачены. Запустите другой образец и просмотрите приложение.',
			'homeLayout.title' => 'Персонализируйте дом',
			'homeLayout.description' => 'Выберите порядок строк и видимость для этого профиля. Выберите строку, чтобы переместить или скрыть ее.',
			'homeLayout.rows' => 'Домашние строки',
			'homeLayout.visible' => 'Видимый',
			'homeLayout.hidden' => 'Скрытый',
			'homeLayout.showRow' => 'Показать строку',
			'homeLayout.hideRow' => 'Скрыть строку',
			'homeLayout.moveUp' => 'Вверх',
			'homeLayout.moveDown' => 'Двигаться вниз',
			'homeLayout.pinnedCollections' => 'Закрепленные коллекции',
			'homeLayout.pinInstructions' => 'Откройте меню коллекции и выберите Pin на главную. Выберите здесь закрепленную коллекцию, чтобы удалить ее ярлык.',
			'homeLayout.pinCollection' => 'Pin домой',
			'homeLayout.unpinCollection' => 'Открепить от дома',
			'homeLayout.reset' => 'Восстановить строки по умолчанию',
			'homeLayout.resetDescription' => 'Восстановить исходный порядок строк и показать все строки этого профиля? Ваши закрепленные коллекции будут сохранены.',
			'homeLayout.saveFailed' => 'Не удалось сохранить план дома. Пожалуйста, попробуйте еще раз.',
			'homeLayout.emptyHint' => 'Строки могут быть скрыты. Откройте «Персонализация главного экрана», чтобы показать их снова.',
			'screenTime.title' => 'Экранное время',
			'screenTime.description' => 'Посмотрите время, потраченное на просмотр видео в этом профиле',
			'screenTime.today' => 'Сегодня',
			'screenTime.thisWeek' => 'На этой неделе',
			'screenTime.thisMonth' => 'В этом месяце',
			'screenTime.lessThanMinute' => '< 1 мин.',
			'screenTime.minutes' => ({required Object count}) => '${count} мин.',
			'screenTime.hours' => ({required Object count}) => '${count} час',
			'screenTime.hoursMinutes' => ({required Object hours, required Object minutes}) => '${hours} час ${minutes} мин',
			'activityStats.title' => 'Просмотр статистики',
			'activityStats.period' => 'Период',
			'activityStats.last7Days' => '7 дней',
			'activityStats.last30Days' => '30 дней',
			'activityStats.last90Days' => '90 дней',
			'activityStats.thisYear' => 'Год',
			'activityStats.allTime' => 'Все',
			'activityStats.heroAllTime' => 'Все время',
			'activityStats.heroDailyAverage' => 'Среднесуточное значение',
			'activityStats.consistency' => 'Консистенция',
			'activityStats.currentStreak' => 'Текущая серия',
			'activityStats.dayCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n, one: '${n} день', few: '${n} дня', many: '${n} дней', other: '${n} дней', ), 
			'activityStats.longestStreak' => 'Самая длинная серия',
			'activityStats.bestDay' => 'Лучший день',
			'activityStats.bestWeek' => 'Лучшая неделя',
			'activityStats.trendTitle' => 'Время просмотра',
			'activityStats.trendToday' => 'Сегодня',
			'activityStats.gapDetail' => ({required Object stat, required Object range}) => '${stat} на ${range}',
			'activityStats.weekdayTitle' => 'По будням',
			'activityStats.hoursTitle' => 'По времени суток',
			'activityStats.amLabel' => 'AM',
			'activityStats.pmLabel' => 'ПМ',
			'activityStats.kindsTitle' => 'По категориям',
			'activityStats.kindMovie' => 'Фильмы',
			'activityStats.kindTv' => 'ТВ',
			'activityStats.kindLiveTv' => 'Прямой эфир',
			'activityStats.kindMusic' => 'Музыка',
			'activityStats.kindOther' => 'Другое',
			'activityStats.topTitlesTitle' => 'Самые просматриваемые',
			'activityStats.sessionsTitle' => 'Последние сессии',
			'activityStats.showMore' => 'Показать больше',
			'activityStats.sessionNoTitle' => 'Неопознанное воспроизведение',
			'activityStats.emptyTitle' => 'Здесь пока ничего',
			'activityStats.emptyBody' => 'Посмотрите что-нибудь, и ваша статистика будет накапливаться здесь.',
			'activityStats.noDataInPeriod' => 'За этот период не было записано ни одного воспроизведения.',
			'search.hint' => 'Поиск фильмов, сериалов, музыки...',
			'search.tryDifferentTerm' => 'Попробуйте другой запрос',
			'search.searchYourMedia' => 'Поиск в вашей медиатеке',
			'search.enterTitleActorOrKeyword' => 'Введите название, актёра или ключевое слово',
			'search.people' => 'Люди',
			'search.recentSearches' => 'Недавние поиски',
			'search.clearHistory' => 'Очистить историю',
			'hotkeys.setShortcutFor' => ({required Object actionName}) => 'Назначить клавишу для ${actionName}',
			'hotkeys.clearShortcut' => 'Очистить клавишу',
			'hotkeys.noShortcutSet' => 'Сочетание не задано',
			'hotkeys.currentShortcut' => 'Текущее сочетание:',
			'hotkeys.pressToRecord' => 'Выберите, чтобы записать сочетание клавиш',
			'hotkeys.recordingShortcut' => 'Нажмите сочетание клавиш сейчас',
			'hotkeys.actions.playPause' => 'Воспроизведение/Пауза',
			'hotkeys.actions.volumeUp' => 'Громкость выше',
			'hotkeys.actions.volumeDown' => 'Громкость ниже',
			'hotkeys.actions.seekForward' => ({required Object seconds}) => 'Перемотка вперёд (${seconds}с)',
			'hotkeys.actions.seekBackward' => ({required Object seconds}) => 'Перемотка назад (${seconds}с)',
			'hotkeys.actions.fullscreenToggle' => 'Полноэкранный режим',
			'hotkeys.actions.muteToggle' => 'Вкл./выкл. звук',
			'hotkeys.actions.subtitleToggle' => 'Вкл./выкл. субтитры',
			'hotkeys.actions.audioTrackNext' => 'Следующая аудиодорожка',
			'hotkeys.actions.subtitleTrackNext' => 'Следующая дорожка субтитров',
			'hotkeys.actions.chapterNext' => 'Следующая глава',
			'hotkeys.actions.chapterPrevious' => 'Предыдущая глава',
			'hotkeys.actions.episodeNext' => 'Следующая серия',
			'hotkeys.actions.episodePrevious' => 'Предыдущая серия',
			'hotkeys.actions.speedIncrease' => 'Увеличить скорость',
			'hotkeys.actions.speedDecrease' => 'Уменьшить скорость',
			'hotkeys.actions.speedReset' => 'Сбросить скорость',
			'hotkeys.actions.zoomIn' => 'Увеличить масштаб',
			'hotkeys.actions.zoomOut' => 'Уменьшить масштаб',
			'hotkeys.actions.zoomReset' => 'Сбросить масштаб',
			'hotkeys.actions.subSeekNext' => 'К следующему субтитру',
			'hotkeys.actions.subSeekPrev' => 'К предыдущему субтитру',
			'hotkeys.actions.shaderToggle' => 'Вкл./выкл. шейдеры',
			'hotkeys.actions.skipMarker' => 'Пропустить вступление/титры',
			'hotkeys.actions.screenshot' => 'Сделать снимок экрана',
			'fileInfo.title' => 'Информация о файле',
			'fileInfo.overview' => 'Обзор',
			'fileInfo.video' => 'Видео',
			'fileInfo.audio' => 'Аудио',
			'fileInfo.subtitles' => 'Субтитры',
			'fileInfo.images' => 'Встроенные изображения',
			'fileInfo.dataStreams' => 'Потоки данных',
			'fileInfo.lyrics' => 'Текст песни',
			'fileInfo.file' => 'Файл',
			'fileInfo.attachments' => 'Вложения',
			'fileInfo.delivery' => 'Доставка',
			'fileInfo.versionCounter' => ({required Object index, required Object count}) => 'Версия ${index} из ${count}',
			'fileInfo.fileCounter' => ({required Object index, required Object count}) => 'Файл ${index} из ${count}',
			'fileInfo.noStreams' => 'Сервер не сообщил о потоках для этого файла.',
			'fileInfo.copyPath' => 'Копировать путь',
			'fileInfo.pathCopied' => 'Путь к файлу скопирован',
			'fileInfo.codec' => 'Кодек',
			'fileInfo.codecTag' => 'Тег кодека',
			'fileInfo.resolution' => 'Разрешение',
			'fileInfo.codedResolution' => 'Кодированное разрешение',
			'fileInfo.bitrate' => 'Битрейт',
			'fileInfo.frameRate' => 'Частота кадров',
			'fileInfo.rotation' => 'Поворот',
			'fileInfo.comment' => 'Комментарий',
			'fileInfo.audioDescription' => 'Аудиоописание',
			'fileInfo.headerCompression' => 'Сжатие заголовков',
			'fileInfo.sidecarFile' => 'Файл-спутник',
			'fileInfo.transportTimestamp' => 'Метка времени транспорта',
			'fileInfo.displayOffset' => 'Смещение отображения',
			'fileInfo.previewFailureCode' => 'Код ошибки превью',
			'fileInfo.previewRetries' => 'Повторные попытки превью',
			'fileInfo.aspectRatio' => 'Соотношение сторон',
			'fileInfo.pixelAspectRatio' => 'Попиксельное соотношение сторон',
			'fileInfo.profile' => 'Профиль',
			'fileInfo.level' => 'Уровень',
			'fileInfo.bitDepth' => 'Глубина цвета',
			'fileInfo.pixelFormat' => 'Формат пикселей',
			'fileInfo.colorSpace' => 'Цветовое пространство',
			'fileInfo.colorRange' => 'Цветовой диапазон',
			'fileInfo.colorPrimaries' => 'Основные цвета',
			'fileInfo.colorTransfer' => 'Передача цвета',
			'fileInfo.chromaSubsampling' => 'Субдискретизация цветности',
			'fileInfo.chromaLocation' => 'Расположение цветности',
			'fileInfo.scanType' => 'Тип развёртки',
			'fileInfo.interlaced' => 'Чересстрочный',
			'fileInfo.anamorphic' => 'Анаморфный',
			'fileInfo.referenceFrames' => 'Опорные кадры',
			'fileInfo.dynamicRange' => 'Динамический диапазон',
			'fileInfo.dolbyVision' => 'Dolby Vision',
			'fileInfo.dolbyVisionLevel' => 'Уровень Dolby Vision',
			'fileInfo.dolbyVisionVersion' => 'Версия Dolby Vision',
			'fileInfo.dolbyVisionLayers' => 'Слои Dolby Vision',
			'fileInfo.baseLayerCompatibility' => 'Совместимость базового слоя',
			'fileInfo.avcBitstream' => 'Битовый поток AVC',
			'fileInfo.nalLengthSize' => 'Размер длины NAL',
			'fileInfo.scalingMatrix' => 'Пользовательская матрица масштабирования',
			'fileInfo.streamIdentifier' => 'Идентификатор потока',
			'fileInfo.streamIndex' => 'Индекс потока',
			'fileInfo.streamId' => 'ID потока',
			'fileInfo.language' => 'Язык',
			'fileInfo.languageCode' => 'Код языка',
			'fileInfo.streamTitle' => 'Название дорожки',
			'fileInfo.channels' => 'Каналы',
			'fileInfo.sampleRate' => 'Частота дискретизации',
			'fileInfo.spatialAudio' => 'Пространственное аудио',
			'fileInfo.textBased' => 'Текстовый',
			'fileInfo.subtitleFormat' => 'Формат файла-спутника',
			'fileInfo.provider' => 'Провайдер',
			'fileInfo.matchScore' => 'Оценка совпадения',
			'fileInfo.externalDelivery' => 'Может передаваться отдельно',
			'fileInfo.sidecarPath' => 'Путь к файлу-спутнику',
			'fileInfo.sourceStream' => 'Скопировано из',
			'fileInfo.temporary' => 'Временный',
			'fileInfo.timeBase' => 'Временная база',
			'fileInfo.overallBitrate' => 'Общий битрейт',
			'fileInfo.path' => 'Путь',
			'fileInfo.fileName' => 'Имя файла',
			'fileInfo.size' => 'Размер',
			'fileInfo.totalSize' => 'Общий размер',
			'fileInfo.container' => 'Контейнер',
			'fileInfo.duration' => 'Длительность',
			'fileInfo.previewThumbnails' => 'Миниатюры превью',
			'fileInfo.previewIndex' => 'Индекс превью',
			'fileInfo.packetLength' => 'Длина пакета',
			'fileInfo.filePresent' => 'Файл присутствует',
			'fileInfo.fileReadable' => 'Доступен для чтения сервером',
			'fileInfo.streamPath' => 'Путь потока',
			'fileInfo.optimizedForStreaming' => 'Оптимизировано для потоковой передачи',
			'fileInfo.has64bitOffsets' => '64-битные смещения',
			'fileInfo.protocol' => 'Протокол',
			'fileInfo.mediaType' => 'Тип медиа',
			'fileInfo.sourceKind' => 'Тип источника',
			'fileInfo.optimizedVersion' => 'Оптимизированная версия',
			'fileInfo.optimizationTarget' => 'Цель оптимизации',
			'fileInfo.deletedAt' => 'Удалено',
			'fileInfo.remoteSource' => 'Удалённый источник',
			'fileInfo.infiniteStream' => 'Бесконечный поток',
			'fileInfo.directPlay' => 'Прямое воспроизведение',
			'fileInfo.directStream' => 'Прямой поток',
			'fileInfo.transcoding' => 'Транскодирование',
			'fileInfo.etag' => 'ETag',
			'fileInfo.versionId' => 'ID версии',
			'fileInfo.fileId' => 'ID файла',
			'fileInfo.defaultAudioTrack' => 'Аудиодорожка по умолчанию',
			'fileInfo.defaultSubtitleTrack' => 'Дорожка субтитров по умолчанию',
			'fileInfo.subtitlesOff' => 'Выкл.',
			'fileInfo.flagDefault' => 'По умолчанию',
			'fileInfo.flagForced' => 'Принудительная',
			'fileInfo.flagSelected' => 'Выбрана',
			'fileInfo.flagExternal' => 'Внешняя',
			'fileInfo.flagHearingImpaired' => 'Для слабослышащих',
			'fileInfo.flagDub' => 'Дубляж',
			'fileInfo.flagOriginal' => 'Оригинал',
			'fileInfo.channelsMono' => 'Моно',
			'fileInfo.dolbyVisionProfile' => ({required Object profile}) => 'Профиль ${profile}',
			'mediaMenu.markAsWatched' => 'Отметить как просмотренное',
			'mediaMenu.markAsUnwatched' => 'Отметить как непросмотренное',
			'mediaMenu.clearProgress' => 'Очевидный прогресс',
			'mediaMenu.removeFromContinueWatching' => 'Удалить из «Продолжить просмотр»',
			'mediaMenu.viewDetails' => 'Показать сведения',
			'mediaMenu.goToSeries' => 'Перейти к сериалу',
			'mediaMenu.shufflePlay' => 'Случайное воспроизведение',
			'mediaMenu.shuffleNotAvailableOffline' => 'Перемешивание недоступно офлайн',
			'mediaMenu.fileInfo' => 'Информация о файле',
			'mediaMenu.deleteEpisodeFromServer' => 'Удалить эпизод с сервера',
			'mediaMenu.deleteSeasonFromServer' => 'Удалить сезон с сервера',
			'mediaMenu.deleteShowFromServer' => 'Удалить сериал с сервера',
			'mediaMenu.deleteMovieFromServer' => 'Удалить фильм с сервера',
			'mediaMenu.deleteEpisodeTitle' => 'Удалить этот эпизод?',
			'mediaMenu.deleteSeasonTitle' => 'Удалить этот сезон?',
			'mediaMenu.deleteShowTitle' => 'Удалить этот сериал?',
			'mediaMenu.deleteMovieTitle' => 'Удалить этот фильм?',
			'mediaMenu.deleteEpisodeConfirm' => 'Удалить эпизод',
			'mediaMenu.deleteSeasonConfirm' => 'Удалить сезон',
			'mediaMenu.deleteShowConfirm' => 'Удалить сериал',
			'mediaMenu.deleteMovieConfirm' => 'Удалить фильм',
			'mediaMenu.deleteAnyway' => 'Всё равно удалить',
			'mediaMenu.confirmDeleteTarget' => ({required Object title}) => 'Навсегда удалить ${title} с вашего сервера?',
			'mediaMenu.deleteMultipleWarning' => 'Это включает все эпизоды и их файлы.',
			'mediaMenu.deleteEpisodeCountWarning' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n, one: 'Это удалит содержащийся в нём ${n} эпизод и его файл.', few: 'Это удалит содержащиеся в нём ${n} эпизода и их файлы.', many: 'Это удалит содержащиеся в нём ${n} эпизодов и их файлы.', other: 'Это удалит содержащиеся в нём ${n} эпизодов и их файлы.', ), 
			'mediaMenu.deleteMultiPartWarning' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n, one: 'Этот элемент хранится как ${n} файл, который будет удалён.', few: 'Этот элемент хранится в ${n} файлах, и все они будут удалены.', many: 'Этот элемент хранится в ${n} файлах, и все они будут удалены.', other: 'Этот элемент хранится в ${n} файлах, и все они будут удалены.', ), 
			'mediaMenu.deleteSharedFileHeading' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n, one: 'В этом же файле хранится ещё ${n} эпизод, и он тоже будет удалён:', few: 'В этом же файле хранятся ещё ${n} эпизода, и они тоже будут удалены:', many: 'В этом же файле хранятся ещё ${n} эпизодов, и они тоже будут удалены:', other: 'В этом же файле хранятся ещё ${n} эпизодов, и они тоже будут удалены:', ), 
			'mediaMenu.deleteScopeUnverifiedProbeFailed' => 'Luroka не смог проверить, какие файлы будут удалены, поэтому может быть удалено больше, чем указанный выше элемент. Отмените и попробуйте снова либо удалите в любом случае.',
			'mediaMenu.deleteScopeUnverifiedNoFileInfo' => 'Ваш сервер не предоставил сведения о файлах для этого элемента, поэтому Luroka не может проверить, какие файлы будут удалены. Может быть удалено больше, чем указанный выше элемент.',
			'mediaMenu.mediaDeletedSuccessfully' => 'Медиаэлемент успешно удалён',
			'mediaMenu.mediaFailedToDelete' => 'Не удалось удалить медиаэлемент',
			'mediaMenu.rate' => 'Оценить',
			'mediaMenu.playFromBeginning' => 'Воспроизвести сначала',
			'mediaMenu.playVersion' => 'Воспроизвести версию...',
			'rateSheet.title' => 'Оценить',
			'rateSheet.server' => 'Сервер',
			'rateSheet.favorite' => 'Добавить в избранное',
			'rateSheet.favorited' => 'Добавлено в избранное',
			'rateSheet.saved' => 'Сохранено',
			'rateSheet.notAvailable' => 'Совпадений не найдено',
			'rateSheet.noConnectedServices' => 'Подключите сервис в настройках, чтобы выставлять оценки в нём.',
			'accessibility.mediaCardMovie' => ({required Object title}) => '${title}, фильм',
			'accessibility.mediaCardShow' => ({required Object title}) => '${title}, сериал',
			'accessibility.mediaCardEpisode' => ({required Object title, required Object episodeInfo}) => '${title}, ${episodeInfo}',
			'accessibility.mediaCardSeason' => ({required Object title, required Object seasonInfo}) => '${title}, ${seasonInfo}',
			'accessibility.mediaCardWatched' => 'просмотрено',
			'accessibility.mediaCardPartiallyWatched' => ({required Object percent}) => 'просмотрено ${percent} процентов',
			'accessibility.mediaCardUnwatched' => 'не просмотрено',
			'accessibility.tapToPlay' => 'Нажмите для воспроизведения',
			'accessibility.decrease' => 'Уменьшить',
			'accessibility.increase' => 'Увеличить',
			'accessibility.decreaseValue' => ({required Object label}) => 'Уменьшить ${label}',
			'accessibility.increaseValue' => ({required Object label}) => 'Увеличить ${label}',
			'accessibility.hue' => 'Цветовой тон',
			'accessibility.saturation' => 'Насыщенность',
			'accessibility.brightness' => 'Яркость',
			'accessibility.hexColor' => 'Шестнадцатеричный цвет',
			'accessibility.expandText' => 'Развернуть текст',
			'accessibility.collapseText' => 'Свернуть текст',
			'accessibility.alphabetNavigation' => 'Навигация по алфавиту',
			'accessibility.alphabetScrollHint' => 'Проведите вверх или вниз для перехода по буквам',
			'accessibility.rowColumnPosition' => ({required Object row, required Object rowCount, required Object column, required Object columnCount}) => 'Строка ${row} из ${rowCount}, столбец ${column} из ${columnCount}',
			'accessibility.rowPosition' => ({required Object row, required Object rowCount}) => 'Строка ${row} из ${rowCount}',
			'accessibility.autoScrollPlay' => 'Запустить автопрокрутку',
			'accessibility.autoScrollPause' => 'Приостановить автопрокрутку',
			'accessibility.hueShort' => 'H',
			'accessibility.saturationShort' => 'S',
			'accessibility.valueShort' => 'V',
			'tooltips.shufflePlay' => 'Случайное воспроизведение',
			'tooltips.playTrailer' => 'Воспроизвести трейлер',
			'tooltips.markAsWatched' => 'Отметить как просмотренное',
			'tooltips.markAsUnwatched' => 'Отметить как непросмотренное',
			'audioTracks.track' => ({required Object n}) => 'Аудиодорожка ${n}',
			'videoControls.audioLabel' => 'Аудио',
			'videoControls.subtitlesLabel' => 'Субтитры',
			'videoControls.addTime' => ({required Object amount, required Object unit}) => '+${amount}${unit}',
			'videoControls.letterbox' => 'Вписать в экран',
			'videoControls.fillScreen' => 'Заполнить экран',
			'videoControls.stretch' => 'Растянуть',
			'videoControls.lockRotation' => 'Заблокировать поворот',
			'videoControls.unlockRotation' => 'Разблокировать поворот',
			'videoControls.timerActive' => 'Таймер активен',
			'videoControls.playbackWillPauseIn' => ({required Object duration}) => 'Воспроизведение будет приостановлено через ${duration}',
			'videoControls.sleepTimerEndOfVideo' => 'Конец текущего видео',
			'videoControls.sleepTimerStopAtHeader' => 'Остановить на',
			'videoControls.sleepTimerDurationHeader' => 'Таймер',
			'videoControls.playbackWillPauseAtEnd' => 'Воспроизведение будет приостановлено в конце этого видео',
			'videoControls.stillWatching' => 'Всё ещё смотрите?',
			'videoControls.pausingIn' => ({required Object seconds}) => 'Пауза через ${seconds}с',
			'videoControls.continueWatching' => 'Продолжить',
			'videoControls.autoPlayNext' => 'Автовоспроизведение следующего',
			'videoControls.playNext' => 'Следующее',
			'videoControls.playButton' => 'Воспроизвести',
			'videoControls.pauseButton' => 'Пауза',
			'videoControls.playbackPaused' => 'На паузе',
			'videoControls.playbackResumed' => 'Воспроизведение',
			'videoControls.loadingVideo' => 'Загрузка видео',
			'videoControls.showPlaybackControls' => 'Показать элементы управления воспроизведением',
			'videoControls.hidePlaybackControls' => 'Скрыть элементы управления воспроизведением',
			'videoControls.seekBackwardButton' => ({required Object seconds}) => 'Перемотать назад на ${seconds} с',
			'videoControls.seekForwardButton' => ({required Object seconds}) => 'Перемотать вперёд на ${seconds} с',
			'videoControls.previousButton' => 'Предыдущий эпизод',
			_ => null,
		} ?? switch (path) {
			'videoControls.nextButton' => 'Следующий эпизод',
			'videoControls.previousChapterButton' => 'Предыдущая глава',
			'videoControls.nextChapterButton' => 'Следующая глава',
			'videoControls.muteButton' => 'Без звука',
			'videoControls.unmuteButton' => 'Включить звук',
			'videoControls.settingsButton' => 'Настройки воспроизведения',
			'videoControls.infoButton' => 'Информация',
			'videoControls.tracksButton' => 'Аудио и субтитры',
			'videoControls.chaptersButton' => 'Главы',
			'videoControls.versionQualityButton' => 'Версия и качество',
			'videoControls.versionColumnHeader' => 'Версия',
			'videoControls.qualityColumnHeader' => 'Качество',
			'videoControls.qualityOriginal' => 'Оригинал',
			'videoControls.qualityPresetLabel' => ({required Object resolution, required Object bitrate}) => '${resolution}p ${bitrate} Мбит/с',
			'videoControls.transcodeUnavailableFallback' => 'Транскодирование недоступно — воспроизведение в оригинальном качестве',
			'videoControls.subtitleUnavailableFallback' => 'Не удалось загрузить выбранные субтитры — воспроизведение продолжится без субтитров',
			'videoControls.pipButton' => 'Режим «картинка в картинке»',
			'videoControls.aspectRatioButton' => 'Соотношение сторон',
			'videoControls.ambientLighting' => 'Фоновая подсветка',
			'videoControls.fullscreenButton' => 'Полноэкранный режим',
			'videoControls.exitFullscreenButton' => 'Выйти из полноэкранного режима',
			'videoControls.alwaysOnTopButton' => 'Всегда поверх',
			'videoControls.rotationLockButton' => 'Блокировка поворота',
			'videoControls.lockScreen' => 'Заблокировать экран',
			'videoControls.screenLockButton' => 'Блокировка экрана',
			'videoControls.longPressToUnlock' => 'Удерживайте для разблокировки',
			'videoControls.timelineSlider' => 'Временная шкала',
			'videoControls.volumeSlider' => 'Уровень громкости',
			'videoControls.endsAt' => ({required Object time}) => 'Закончится в ${time}',
			'videoControls.pipActive' => 'Воспроизводится в режиме «картинка в картинке»',
			'videoControls.pipFailed' => 'Не удалось запустить режим «картинка в картинке»',
			'videoControls.screenshotSaved' => 'Снимок экрана сохранён',
			'videoControls.screenshotFailed' => 'Не удалось сделать скриншот',
			'videoControls.zoomPercent' => ({required Object percent}) => 'Масштаб ${percent}%',
			'videoControls.volumePercent' => ({required Object percent}) => 'Громкость ${percent}%',
			'videoControls.pipErrors.androidVersion' => 'Требуется Android 8.0 или новее',
			'videoControls.pipErrors.iosVersion' => 'Требуется iOS 15.0 или новее',
			'videoControls.pipErrors.permissionDisabled' => 'Режим «картинка в картинке» отключён. Включите его в системных настройках.',
			'videoControls.pipErrors.notSupported' => 'Устройство не поддерживает режим «картинка в картинке»',
			'videoControls.pipErrors.voSwitchFailed' => 'Не удалось переключить видеовыход для «картинки в картинке»',
			'videoControls.pipErrors.failed' => 'Не удалось запустить режим «картинка в картинке»',
			'videoControls.pipErrors.prepareFailed' => 'Не удалось подготовить режим «картинка в картинке»',
			'videoControls.pipErrors.unknown' => ({required Object error}) => 'Произошла ошибка: ${error}',
			'videoControls.chapters' => 'Главы',
			'videoControls.noChaptersAvailable' => 'Главы недоступны',
			'videoControls.queue' => 'Очередь',
			'videoControls.noQueueItems' => 'В очереди нет элементов',
			'videoControls.noAudioDevicesAvailable' => 'Нет доступных аудиоустройств',
			'videoControls.searchSubtitles' => 'Поиск субтитров',
			'videoControls.language' => 'Язык',
			'videoControls.noSubtitlesFound' => 'Субтитры не найдены',
			'videoControls.subtitleDownloaded' => 'Субтитры загружены',
			'videoControls.subtitleDownloadedNotApplied' => 'Субтитры загружены, но их не удалось выбрать',
			'videoControls.subtitleDownloadFailed' => 'Не удалось загрузить субтитры',
			'videoControls.searchLanguages' => 'Поиск языков...',
			'videoControls.skipIntro' => 'Пропустить заставку',
			'videoControls.skipCredits' => 'Пропустить титры',
			'videoControls.nextEpisode' => 'Следующий эпизод',
			'videoControls.subtitleTrack' => ({required Object n}) => 'Дорожка ${n}',
			'videoControls.subtitleFile' => ({required Object name}) => 'Субтитры ${name}',
			'videoControls.forcedTrack' => ({required Object label}) => '${label} (принудительная)',
			'videoControls.osdSubtitlesOff' => 'Субтитры: выкл.',
			'videoControls.osdSubtitles' => ({required Object track}) => 'Субтитры: ${track}',
			'videoControls.osdAudio' => ({required Object track}) => 'Аудио: ${track}',
			'messages.markedAsWatched' => 'Отмечено как просмотренное',
			'messages.markedAsUnwatched' => 'Отмечено как непросмотренное',
			'messages.markedAsWatchedOffline' => 'Отмечено как просмотренное (синхронизируется при подключении)',
			'messages.markedAsUnwatchedOffline' => 'Отмечено как непросмотренное (синхронизируется при подключении)',
			'messages.autoRemovedWatchedDownload' => ({required Object title}) => 'Автоудалено: ${title}',
			'messages.autoRemovedWatchedDownloads' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n, one: 'Автоматически удалена ${n} просмотренная загрузка', few: 'Автоматически удалены ${n} просмотренные загрузки', many: 'Автоматически удалено ${n} просмотренных загрузок', other: 'Автоматически удалено ${n} просмотренной загрузки', ), 
			'messages.removedFromContinueWatching' => 'Удалено из «Продолжить просмотр»',
			'messages.errorLoading' => ({required Object error}) => 'Ошибка: ${error}',
			'messages.searchPartialResults' => 'Поиск по некоторым медиасерверам не удался. Показываем доступные результаты.',
			'messages.streamInterrupted' => 'Поток прервался. Нажмите «Воспроизвести» или перемотайте, чтобы повторить попытку.',
			'messages.liveStreamInterrupted' => 'Прямая трансляция прервалась. Нажмите «Воспроизвести», чтобы повторить попытку.',
			'messages.fileInfoNotAvailable' => 'Информация о файле недоступна',
			'messages.playbackAuthenticationRequired' => 'Чтобы воспроизвести этот материал, снова войдите на медиасервер.',
			'messages.playbackServerUnavailable' => 'Медиасервер недоступен. Попробуйте позже.',
			'messages.playbackDataInvalid' => 'Сервер вернул некорректные сведения для воспроизведения.',
			'messages.playbackCancelled' => 'Воспроизведение отменено.',
			'messages.playbackFailed' => 'Не удалось начать воспроизведение.',
			'messages.playbackFailedDetail' => ({required Object error}) => 'Не удалось начать воспроизведение: ${error}',
			'messages.audioOutputFailed' => 'Аудиовыход перестал отвечать. Проверьте аудиоподключение телевизора или ресивера; если в других приложениях тоже нет звука, перезагрузите устройство.',
			'messages.mediaUnavailable' => 'Этот контент больше недоступен.',
			'messages.errorLoadingFileInfo' => ({required Object error}) => 'Ошибка загрузки информации о файле: ${error}',
			'messages.errorLoadingSeries' => 'Ошибка загрузки сериала',
			'messages.musicNotSupported' => 'Воспроизведение музыки пока не поддерживается',
			'messages.noDescriptionAvailable' => 'Описание недоступно',
			'messages.noProfilesAvailable' => 'Профили недоступны',
			'messages.contactAdminForProfiles' => 'Обратитесь к администратору сервера для добавления профилей',
			'messages.unableToDetermineLibrarySection' => 'Не удаётся определить раздел библиотеки для этого элемента',
			'messages.logsCleared' => 'Логи очищены',
			'messages.logsCopied' => 'Логи скопированы в буфер обмена',
			'messages.noLogsAvailable' => 'Логи отсутствуют',
			'messages.libraryScanning' => ({required Object title}) => 'Сканирование "${title}"...',
			'messages.libraryScanStarted' => ({required Object title}) => 'Сканирование библиотеки начато для "${title}"',
			'messages.libraryScanFailed' => ({required Object error}) => 'Не удалось отсканировать библиотеку: ${error}',
			'messages.metadataRefreshing' => ({required Object title}) => 'Обновление метаданных "${title}"...',
			'messages.metadataRefreshStarted' => ({required Object title}) => 'Обновление метаданных начато для "${title}"',
			'messages.metadataRefreshFailed' => ({required Object error}) => 'Не удалось обновить метаданные: ${error}',
			'messages.logoutConfirm' => 'Вы уверены, что хотите выйти?',
			'messages.noSeasonsFound' => 'Сезоны не найдены',
			'messages.seasonsLoadFailed' => 'Не удалось загрузить сезоны',
			'messages.noEpisodesFound' => 'Эпизоды в первом сезоне не найдены',
			'messages.noEpisodesFoundGeneral' => 'Эпизоды не найдены',
			'messages.episodesLoadFailed' => 'Не удалось загрузить эпизоды',
			'messages.noResultsFound' => 'Результаты не найдены',
			'messages.sleepTimerSet' => ({required Object label}) => 'Таймер сна установлен на ${label}',
			'messages.noItemsAvailable' => 'Нет доступных элементов',
			'messages.failedToCreatePlayQueueNoItems' => 'Не удалось создать очередь воспроизведения — нет элементов',
			'messages.failedPlayback' => ({required Object action, required Object error}) => 'Не удалось ${action}: ${error}',
			'messages.switchingToCompatiblePlayer' => 'Переключение на совместимый плеер...',
			'messages.serverLimitTitle' => 'Ошибка воспроизведения',
			'messages.serverLimitBody' => 'Ошибка сервера (HTTP 500). Лимит пропускной способности/транскодирования, вероятно, отклонил сессию. Попросите владельца изменить настройки.',
			'messages.mediaUnreadableTitle' => 'Файл недоступен',
			'messages.mediaUnreadableBody' => 'Сервер нашёл этот элемент, но не смог прочитать его файл (HTTP 404). Вероятно, файл был перемещён, удалён или его хранилище недоступно. Попросите владельца сервера проверить файл и пересканировать библиотеку.',
			'messages.serverBusyTitle' => 'Поток недоступен',
			'messages.serverBusyBody' => 'Сервер продолжает отклонять запросы на потоковую передачу этого файла (HTTP 503). Возможно, он перезапускается, перегружен или хранилище с файлом недоступно. Повторите попытку через некоторое время. Если это продолжает происходить, попросите владельца сервера проверить сервер и хранилище с файлом.',
			'messages.playbackNotAllowedTitle' => 'Воспроизведение запрещено',
			'messages.playbackNotAllowedBody' => 'Сервер отказал в потоковой передаче этого элемента (HTTP 403). Возможно, у вашей учётной записи нет разрешения на его воспроизведение или сервер разрешает воспроизведение только в своей локальной сети.',
			'messages.logsUploaded' => 'Логи загружены',
			'messages.logsUploadFailed' => 'Не удалось загрузить логи',
			'messages.logId' => 'ID лога',
			'messages.burnedSubtitlesUseMenu' => 'Субтитры встроены в этот поток. Изменить их можно в меню субтитров.',
			'messages.noVideoUrl' => 'URL видео недоступен',
			'messages.playbackNoMediaSources' => 'Сервер не вернул пригодных для воспроизведения медиаисточников',
			'messages.playbackDataNotPrepared' => 'Воспроизведение началось до того, как данные были готовы',
			'messages.streamSelectionUnavailable' => 'Выбор потоков недоступен для этого источника',
			'messages.streamSelectionFailed' => 'Не удалось применить выбранные потоки',
			'messages.trackSelectionNotRemembered' => 'Этот выбор дорожки действует только для текущего воспроизведения.',
			'messages.serverUnavailableForProfile' => 'Для активного профиля нет доступных серверов',
			'sourceLibraries.title' => 'Ваши серверы и библиотеки',
			'sourceLibraries.description' => 'Выберите библиотеки, которые Luroka использует для домашней страницы, поиска, доступности Обзор и студий. Порядок исходных строк настраивается отдельно.',
			'sourceLibraries.partial' => 'Некоторые серверы не удалось проверить. Сохраненный вами выбор для этих библиотек сохраняется. Обновите, чтобы повторить попытку.',
			'sourceLibraries.loadFailed' => 'Не удалось загрузить ваши библиотеки. Проверьте соединение и повторите попытку.',
			'sourceLibraries.notSelected' => 'Недоступно в выбранных вами библиотеках.',
			'sourceLibraries.checkOthers' => 'Проверьте другие подключенные источники',
			'sourceLibraries.otherSources' => 'Доступно в других подключенных источниках',
			'sourceLibraries.playOnce' => 'Сыграть один раз',
			'sourceLibraries.includeLibrary' => 'Включить эту библиотеку',
			'sourceLibraries.noOthers' => 'В других подключенных источниках копий не найдено.',
			'sourceLibraries.chooseOne' => 'Выберите хотя бы одну библиотеку, чтобы продолжить.',
			'subtitlingStyling.text' => 'Текст',
			'subtitlingStyling.border' => 'Обводка',
			'subtitlingStyling.background' => 'Фон',
			'subtitlingStyling.fontSize' => 'Размер шрифта',
			'subtitlingStyling.textColor' => 'Цвет текста',
			'subtitlingStyling.borderSize' => 'Размер обводки',
			'subtitlingStyling.borderColor' => 'Цвет обводки',
			'subtitlingStyling.backgroundOpacity' => 'Прозрачность фона',
			'subtitlingStyling.backgroundColor' => 'Цвет фона',
			'subtitlingStyling.position' => 'Позиция',
			'subtitlingStyling.assOverride' => 'Переопределение ASS',
			'subtitlingStyling.overrideScale' => 'Масштаб',
			'subtitlingStyling.overrideForce' => 'Принудительно',
			'subtitlingStyling.overrideStrip' => 'Удалить стили',
			'subtitlingStyling.positionTop' => 'Сверху',
			'subtitlingStyling.positionBottom' => 'Снизу',
			'subtitlingStyling.useMargins' => 'Использовать поля',
			'subtitlingStyling.useMarginsDescription' => 'Разрешить текстовым субтитрам размещаться в области за пределами видео. Стилизованные субтитры могут сохранять исходное положение.',
			'subtitlingStyling.anchorToScreen' => 'Привязка к экрану',
			'subtitlingStyling.anchorToScreenDescription' => 'Показывать текстовые субтитры в чёрных полосах под широкоформатным видео',
			'subtitlingStyling.bold' => 'Жирный',
			'subtitlingStyling.italic' => 'Курсив',
			'subtitlingStyling.renderResolution' => 'Разрешение отрисовки',
			'subtitlingStyling.renderResolutionScreen' => 'Разрешение экрана',
			'subtitlingStyling.renderResolutionVideo' => 'Разрешение видео',
			'mpvConfig.title' => 'mpv.conf',
			'mpvConfig.description' => 'Расширенные настройки видеоплеера',
			'mpvConfig.presets' => 'Пресеты',
			'mpvConfig.noPresets' => 'Нет сохранённых пресетов',
			'mpvConfig.saveAsPreset' => 'Сохранить как пресет...',
			'mpvConfig.presetName' => 'Название пресета',
			'mpvConfig.presetNameHint' => 'Введите название для пресета',
			'mpvConfig.loadPreset' => 'Загрузить',
			'mpvConfig.deletePreset' => 'Удалить',
			'mpvConfig.presetSaved' => 'Пресет сохранён',
			'mpvConfig.presetLoaded' => 'Пресет загружен',
			'mpvConfig.presetDeleted' => 'Пресет удалён',
			'mpvConfig.confirmDeletePreset' => 'Вы уверены, что хотите удалить этот пресет?',
			'mpvConfig.configPlaceholder' => 'gpu-api=vulkan\nhwdec=auto\n# comment',
			'mpvConfig.lineHint' => 'option=value',
			'mpvConfig.addLine' => 'Добавить строку',
			'mpvConfig.removeLine' => 'Удалить строку',
			'mpvConfig.embeddedVoHint' => 'vo, gpu-context и gpu-api игнорируются в Linux: встроенное видео всегда отображается через vo=libmpv на видеоплоскости, а gpu-next (нужный для compute-шейдеров вроде ArtCNN) не может работать во встроенном режиме.',
			'dialog.confirmAction' => 'Подтвердить действие',
			'profiles.addLurokaProfile' => 'Добавить профиль Luroka',
			'profiles.switchingProfile' => 'Переключение профиля…',
			'profiles.deleteThisProfileTitle' => 'Удалить этот профиль?',
			'profiles.deleteThisProfileMessage' => ({required Object displayName}) => 'Удалить ${displayName}. Подключения не изменятся.',
			'profiles.active' => 'Активный',
			'profiles.manage' => 'Управление',
			'profiles.delete' => 'Удалить',
			'profiles.signOut' => 'Выйти',
			'profiles.signOutPlexTitle' => 'Выйти из Plex?',
			'profiles.signOutPlexMessage' => ({required Object displayName}) => 'Удалить ${displayName} и всех пользователей Plex Home? Вы сможете войти снова в любое время.',
			'profiles.signOutPlexDeleteDownloads' => 'Также удалить загрузки',
			'profiles.signOutPlexDeleteDownloadsDescription' => 'В противном случае они останутся на этом устройстве и вернутся, когда вы снова войдете в эту учетную запись.',
			'profiles.signedOutPlex' => 'Вы вышли из Plex.',
			'profiles.signOutFailed' => 'Не удалось выйти.',
			'profiles.sectionTitle' => 'Профили',
			'profiles.summarySingle' => 'Добавляйте профили, чтобы сочетать управляемых пользователей и локальные профили',
			'profiles.summaryMultipleWithActive' => ({required Object count, required Object activeName}) => '${count} профилей · активный: ${activeName}',
			'profiles.summaryMultiple' => ({required Object count}) => '${count} профилей',
			'profiles.removeConnectionTitle' => 'Удалить соединение?',
			'profiles.removeConnectionMessage' => ({required Object displayName, required Object connectionLabel}) => 'Удалить доступ ${displayName} к ${connectionLabel}. У других профилей он останется.',
			'profiles.deleteProfileTitle' => 'Удалить профиль?',
			'profiles.deleteProfileMessage' => ({required Object displayName}) => 'Удалить ${displayName} и его подключения. Серверы останутся доступны.',
			'profiles.profileNameLabel' => 'Имя профиля',
			'profiles.pinProtectionLabel' => 'Защита PIN-кодом',
			'profiles.pinManagedByPlex' => 'PIN управляется Plex. Редактируйте на plex.tv.',
			'profiles.noPinSetEditOnPlex' => 'PIN не установлен. Чтобы требовать его, отредактируйте пользователя Главная на plex.tv.',
			'profiles.setPin' => 'Установить PIN',
			'profiles.setPinTitle' => 'Установить PIN',
			'profiles.confirmPinTitle' => 'Подтвердить PIN',
			'profiles.pinSet' => 'PIN установлен',
			'profiles.changePin' => 'Изменить',
			'profiles.removePin' => 'Удалить',
			'profiles.connectionsLabel' => 'Соединения',
			'profiles.add' => 'Добавить',
			'profiles.deleteProfileButton' => 'Удалить профиль',
			'profiles.noConnectionsHint' => 'Нет соединений — добавьте одно, чтобы использовать этот профиль.',
			'profiles.noConnections' => 'Нет соединений',
			'profiles.plexHomeAccount' => 'Аккаунт Plex Home',
			'profiles.plexAccountChip' => ({required Object account}) => 'Аккаунт Plex: ${account}',
			'profiles.plexAccountUserChip' => ({required Object user, required Object account}) => '${user} через ${account}',
			'profiles.connectionDefault' => 'По умолчанию',
			'profiles.connectionAs' => ({required Object displayName}) => 'как ${displayName}',
			'profiles.makeDefault' => 'Сделать по умолчанию',
			'profiles.removeConnection' => 'Удалить',
			'profiles.profileRenamed' => 'Профиль переименован.',
			'profiles.borrowAddTo' => ({required Object displayName}) => 'Добавить в ${displayName}',
			'profiles.borrowExplain' => 'Используйте подключение другого профиля. Для защищённых профилей потребуется PIN.',
			'profiles.borrowEmpty' => 'Пока нет доступных подключений.',
			'profiles.borrowEmptySubtitle' => 'Сначала подключите Plex, Jellyfin или Emby к другому профилю.',
			'profiles.borrowLoadFailed' => 'Не удалось загрузить доступные подключения. Попробуйте снова.',
			'profiles.borrowFromProfile' => ({required Object displayName}) => 'От ${displayName}',
			'profiles.borrowConnectionBorrowed' => 'Подключение добавлено.',
			'profiles.borrowFailed' => 'Не удалось добавить подключение.',
			'profiles.incorrectPin' => 'Неверный PIN.',
			'profiles.incorrectPinTryAgain' => 'Неверный PIN. Попробуйте ещё раз.',
			'profiles.sourceProfileMissingParentAccount' => 'У исходного профиля отсутствует родительская учётная запись.',
			'profiles.failedToLoadHomeUsers' => 'Не удалось загрузить пользователей Plex Home. Проверьте подключение и попробуйте ещё раз.',
			'profiles.failedToVerifyPin' => 'Не удалось проверить PIN.',
			'profiles.newProfile' => 'Новый профиль',
			'profiles.profileNameHint' => 'например, Гости, Дети, Семейная комната',
			'profiles.pinProtectionOptional' => 'Защита PIN-кодом (необязательно)',
			'profiles.pinExplain' => 'Для переключения профилей нужен 4-значный PIN.',
			'profiles.continueButton' => 'Продолжить',
			'profiles.pinsDontMatch' => 'PIN-коды не совпадают',
			'profiles.tokenIdentityMismatch' => 'Токен профиля Plex указал на неожиданный сервер',
			'connections.sectionTitle' => 'Подключения',
			'connections.addConnection' => 'Добавить подключение',
			'connections.addConnectionSubtitleNoProfile' => 'Войдите через Plex или подключите сервер Jellyfin или Emby',
			'connections.addConnectionSubtitleScoped' => ({required Object displayName}) => 'Добавить к ${displayName}: Plex, Jellyfin, Emby или подключение другого профиля',
			'connections.sessionExpiredOne' => ({required Object name}) => 'Сессия истекла для ${name}',
			'connections.sessionExpiredMany' => ({required Object count}) => 'Сессия истекла для ${count} серверов',
			'connections.accessDeniedOne' => ({required Object name}) => '${name} отказал в доступе этой учётной записи',
			'connections.accessDeniedMany' => ({required Object count}) => 'Доступ для этой учётной записи запрещён на ${count} серверах',
			'connections.signInAgain' => 'Войти снова',
			'connections.editMediaBrowserTitle' => ({required Object product}) => 'Изменить подключение ${product}',
			'connections.editMediaBrowserIntro' => ({required Object serverName}) => 'Добавьте или удалите URL-адреса для ${serverName}. Luroka будет использовать доступный URL с наименьшей задержкой.',
			'serversAccounts.title' => 'Серверы и учетные записи',
			'serversAccounts.subtitle' => 'Статус входа на серверы Plex, Jellyfin и Emby',
			'serversAccounts.online' => 'Онлайн',
			'serversAccounts.offline' => 'Оффлайн',
			'serversAccounts.unknown' => 'Здесь не выполнен вход',
			'serversAccounts.usedByNone' => 'Не используется ни одним профилем',
			'serversAccounts.usedByOne' => ({required Object name}) => 'Используется ${name}',
			'serversAccounts.usedByMany' => ({required Object name, required Object count}) => 'Используется ${name} и ${count}.',
			'serversAccounts.serversOnline' => ({required Object online, required Object total}) => '${online} серверов ${total} онлайн',
			'serversAccounts.noServers' => 'Пока ничего не подключено. Добавьте свою учетную запись Plex или сервер Jellyfin или Emby.',
			'serversAccounts.editUrls' => 'Изменить URL-адреса серверов',
			'accountPreferences.sectionTitle' => 'Настройки аккаунта',
			'accountPreferences.hubSubtitleSingle' => ({required Object account}) => 'Параметры аудио, субтитров и библиотеки сохранены на аккаунте ${account}',
			'accountPreferences.hubSubtitleMultiple' => ({required Object count}) => 'Параметры аудио, субтитров и библиотеки сохранены на ${count} аккаунтах',
			'accountPreferences.pickAccount' => 'Каждый аккаунт хранит собственные настройки. Выберите, какой редактировать.',
			'accountPreferences.storedOnAccount' => 'Эти параметры сохраняются на самом аккаунте, поэтому их используют все приложения, вошедшие в него, — включая Luroka на ваших других устройствах.',
			'accountPreferences.noAccounts' => 'Нет аккаунтов для настройки',
			'accountPreferences.noAccountsHint' => 'Войдите в Plex или подключите сервер Jellyfin или Emby — и настройки, сохранённые на этом аккаунте, появятся здесь.',
			'accountPreferences.unavailable' => 'Не удаётся получить доступ к этому аккаунту',
			'accountPreferences.loadFailed' => 'Не удалось загрузить эти настройки',
			'accountPreferences.noPreference' => 'Без предпочтений',
			'accountPreferences.notSet' => 'Не задано',
			'accountPreferences.groups.audioAndSubtitles' => 'Аудио и субтитры',
			'accountPreferences.groups.libraryDisplay' => 'Библиотека',
			'accountPreferences.groups.personalMedia' => 'Личные медиа',
			'accountPreferences.preferredAudioLanguage' => 'Предпочитаемый язык аудио',
			'accountPreferences.autoSelectAudio' => 'Выбирать аудиодорожку по языку',
			'accountPreferences.autoSelectAudioDescription' => 'В выключенном состоянии используется аудиодорожка, помеченная в файле как дорожка по умолчанию.',
			'accountPreferences.preferredSubtitleLanguage' => 'Предпочитаемый язык субтитров',
			'accountPreferences.subtitleMode' => 'Включать субтитры',
			'accountPreferences.subtitleModes.none' => 'Выбор вручную',
			'accountPreferences.subtitleModes.noneDescription' => 'Никогда не включать субтитры автоматически.',
			'accountPreferences.subtitleModes.defaultMode' => 'Следовать флагам дорожки',
			'accountPreferences.subtitleModes.defaultModeDescription' => 'Использовать флаги «по умолчанию» и «принудительная», сохранённые на каждой дорожке субтитров.',
			'accountPreferences.subtitleModes.always' => 'Всегда включены',
			'accountPreferences.subtitleModes.alwaysDescription' => 'Включать дорожку субтитров на предпочитаемом языке, когда такая существует.',
			'accountPreferences.subtitleModes.onlyForced' => 'Только принудительные субтитры',
			'accountPreferences.subtitleModes.onlyForcedDescription' => 'Загружать только дорожки, помеченные как принудительные.',
			'accountPreferences.subtitleModes.smart' => 'Показывать при иноязычном аудио',
			'accountPreferences.subtitleModes.smartDescription' => 'Включать субтитры только когда аудио на другом языке.',
			'accountPreferences.subtitleAccessibility' => 'Субтитры SDH',
			'accountPreferences.subtitleAccessibilityOptions.preferNonSdh' => 'Предпочитать субтитры без SDH',
			'accountPreferences.subtitleAccessibilityOptions.preferSdh' => 'Предпочитать субтитры SDH',
			'accountPreferences.subtitleAccessibilityOptions.onlySdh' => 'Только субтитры SDH',
			'accountPreferences.subtitleAccessibilityOptions.onlyNonSdh' => 'Только субтитры без SDH',
			'accountPreferences.forcedSubtitles' => 'Принудительные субтитры',
			'accountPreferences.forcedSubtitleOptions.preferNonForced' => 'Предпочитать непринудительные субтитры',
			'accountPreferences.forcedSubtitleOptions.preferForced' => 'Предпочитать принудительные субтитры',
			'accountPreferences.forcedSubtitleOptions.onlyForced' => 'Только принудительные субтитры',
			'accountPreferences.forcedSubtitleOptions.onlyNonForced' => 'Только непринудительные субтитры',
			'accountPreferences.displayMissingEpisodes' => 'Показывать отсутствующие эпизоды',
			'accountPreferences.displayMissingEpisodesDescription' => 'Перечислять эпизоды, которые знает сервер, но для которых нет файлов.',
			'accountPreferences.hidePlayedInLatest' => 'Скрывать просмотренное в «Недавно добавленном»',
			'accountPreferences.hidePlayedInLatestDescription' => 'Исключать уже просмотренные материалы из рядов «Недавно добавленное» сервера.',
			'accountPreferences.displayCollectionsView' => 'Показывать раздел «Коллекции»',
			'accountPreferences.displayCollectionsViewDescription' => 'Показывать раздел коллекций сервера рядом с вашими библиотеками.',
			'accountPreferences.rewatchingInNextUp' => 'Сохранять пересматриваемые сериалы в «Далее»',
			'accountPreferences.rewatchingInNextUpDescription' => 'Когда вы досматриваете сериал и начинаете его заново, «Далее» продолжает отслеживать повторный просмотр, а не убирает сериал.',
			'accountPreferences.watchedIndicator' => 'Индикаторы просмотра',
			'accountPreferences.watchedIndicatorOptions.none' => 'Никогда',
			'accountPreferences.watchedIndicatorOptions.moviesAndShows' => 'Фильмы и сериалы',
			'accountPreferences.watchedIndicatorOptions.movies' => 'Только фильмы',
			'accountPreferences.watchedIndicatorOptions.shows' => 'Только сериалы',
			'accountPreferences.mediaReviewsVisibility' => 'Оценки и отзывы',
			'accountPreferences.mediaReviewsOptions.usersAndCritics' => 'Пользователи и критики',
			'accountPreferences.mediaReviewsOptions.usersOnly' => 'Только пользователи',
			'accountPreferences.mediaReviewsOptions.criticsOnly' => 'Только критики',
			'accountPreferences.mediaReviewsOptions.nobody' => 'Скрыто',
			'discover.title' => 'Обзор',
			'discover.noContentAvailable' => 'Контент недоступен',
			'discover.addMediaToLibraries' => 'Добавьте медиафайлы в ваши библиотеки',
			'discover.continueWatching' => 'Продолжить просмотр',
			'discover.continueWatchingIn' => ({required Object library}) => 'Продолжить просмотр в ${library}',
			'discover.nextUp' => 'Далее',
			'discover.nextUpIn' => ({required Object library}) => 'Далее в ${library}',
			'discover.recentlyAdded' => 'Недавно добавленное',
			'discover.recentlyAddedIn' => ({required Object library}) => 'Недавно добавленное в ${library}',
			'discover.latestAlbumsIn' => ({required Object library}) => 'Последние альбомы в ${library}',
			'discover.recentlyPlayedIn' => ({required Object library}) => 'Недавно прослушанное в ${library}',
			'discover.mostPlayedIn' => ({required Object library}) => 'Часто прослушиваемое в ${library}',
			'discover.playEpisode' => ({required Object season, required Object episode}) => 'S${season}E${episode}',
			'discover.overview' => 'Обзор',
			'discover.cast' => 'В ролях',
			'discover.extras' => 'Трейлеры и доп. материалы',
			'discover.studio' => 'Студия',
			'discover.rating' => 'Рейтинг',
			'discover.director' => 'Режиссёр',
			'discover.directors' => 'Режиссёры',
			'discover.movie' => 'Фильм',
			'discover.tvShow' => 'Сериал',
			'discover.minutesLeft' => ({required Object minutes}) => 'Осталось ${minutes} мин',
			'discover.moreLikeThis' => 'Похожее',
			'discover.titleCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n, one: '${n} название', few: '${n} названия', many: '${n} названий', other: '${n} названия', ), 
			'discover.person.born' => 'Родился',
			'discover.person.died' => 'Умер',
			'discover.person.birthplace' => 'Место рождения',
			'discover.person.dateWithAge' => ({required Object date, required Object age}) => '${date} (возраст ${age})',
			'discover.person.dateWithAgeAtDeath' => ({required Object date, required Object age}) => '${date} (устаревший ${age})',
			'errors.searchFailed' => ({required Object error}) => 'Ошибка поиска: ${error}',
			'errors.searchUnavailable' => 'Поиску не удалось связаться ни с одним медиасервером.',
			'errors.connectionTimeout' => ({required Object context}) => 'Таймаут подключения при загрузке ${context}',
			'errors.connectionFailed' => 'Не удалось подключиться к медиасерверу',
			'errors.unableToLoad' => ({required Object context}) => 'Не удалось загрузить ${context}. Повторите попытку.',
			'errors.noClientAvailable' => 'Клиент недоступен',
			'errors.pleaseEnterToken' => 'Введите токен',
			'errors.invalidToken' => 'Недействительный токен',
			'errors.failedToVerifyToken' => ({required Object error}) => 'Не удалось проверить токен: ${error}',
			'errors.failedToSwitchProfile' => ({required Object displayName}) => 'Не удалось переключиться на ${displayName}',
			'errors.failedToDeleteProfile' => ({required Object displayName}) => 'Не удалось удалить ${displayName}',
			'errors.failedToRate' => 'Не удалось обновить оценку',
			'errors.reasonTimedOut' => 'истекло время ожидания подключения',
			'errors.reasonUnreachable' => 'не удалось связаться с сервером',
			'errors.reasonRefused' => 'сервер отклонил запрос',
			'errors.reasonNotFound' => 'элемента больше нет на сервере',
			'errors.reasonServerError' => 'сервер сообщил об ошибке',
			'errors.reasonCancelled' => 'запрос был отменён',
			'errors.reasonUnexpected' => 'произошла непредвиденная ошибка',
			'libraries.title' => 'Библиотеки',
			'libraries.fallbackTitle' => 'Библиотека',
			'libraries.scanLibraryFiles' => 'Сканировать файлы библиотеки',
			'libraries.scanLibrary' => 'Сканировать библиотеку',
			'libraries.analyze' => 'Анализировать',
			'libraries.analyzeLibrary' => 'Анализировать библиотеку',
			'libraries.refreshMetadata' => 'Обновить метаданные',
			'libraries.emptyTrash' => 'Очистить корзину',
			'libraries.emptyingTrash' => ({required Object title}) => 'Очистка корзины для "${title}"...',
			'libraries.trashEmptied' => ({required Object title}) => 'Корзина очищена для "${title}"',
			'libraries.failedToEmptyTrash' => ({required Object error}) => 'Не удалось очистить корзину: ${error}',
			'libraries.analyzing' => ({required Object title}) => 'Анализ "${title}"...',
			'libraries.analysisStarted' => ({required Object title}) => 'Анализ начат для "${title}"',
			'libraries.failedToAnalyze' => ({required Object error}) => 'Не удалось проанализировать библиотеку: ${error}',
			'libraries.noLibrariesFound' => 'Библиотеки не найдены',
			'libraries.allLibrariesHidden' => 'Все библиотеки скрыты',
			'libraries.hiddenLibrariesCount' => ({required Object count}) => 'Скрытые библиотеки (${count})',
			'libraries.thisLibraryIsEmpty' => 'Эта библиотека пуста',
			'libraries.noItemsMatchFilters' => 'Нет элементов, соответствующих активным фильтрам',
			'libraries.resetFilters' => 'Сбросить фильтры',
			'libraries.all' => 'Все',
			'libraries.clearAll' => 'Очистить все',
			'libraries.scanLibraryConfirm' => ({required Object title}) => 'Вы уверены, что хотите сканировать "${title}"?',
			'libraries.analyzeLibraryConfirm' => ({required Object title}) => 'Вы уверены, что хотите проанализировать "${title}"?',
			'libraries.refreshMetadataConfirm' => ({required Object title}) => 'Вы уверены, что хотите обновить метаданные для "${title}"?',
			'libraries.emptyTrashConfirm' => ({required Object title}) => 'Вы уверены, что хотите очистить корзину для "${title}"?',
			'libraries.manageLibraries' => 'Управление библиотеками',
			'libraries.sort' => 'Сортировка',
			'libraries.sortBy' => 'Сортировать по',
			'libraries.filters' => 'Фильтры',
			'libraries.confirmActionMessage' => 'Вы уверены, что хотите выполнить это действие?',
			'libraries.showLibrary' => 'Показать библиотеку',
			'libraries.hideLibrary' => 'Скрыть библиотеку',
			'libraries.libraryOptions' => 'Параметры библиотеки',
			'libraries.content' => 'содержимое библиотеки',
			'libraries.selectLibrary' => 'Выбрать библиотеку',
			'libraries.filtersWithCount' => ({required Object count}) => 'Фильтры (${count})',
			'libraries.noRecommendations' => 'Рекомендации недоступны',
			'libraries.noCollections' => 'В этой библиотеке нет коллекций',
			'libraries.noFoldersFound' => 'Папки не найдены',
			'libraries.folders' => 'папки',
			'libraries.tabs.recommended' => 'Рекомендуемые',
			'libraries.tabs.browse' => 'Обзор',
			'libraries.tabs.collections' => 'Коллекции',
			'libraries.tabs.playlists' => 'Плейлисты',
			'libraries.groupings.title' => 'Группировка',
			'libraries.groupings.all' => 'Все',
			'libraries.groupings.movies' => 'Фильмы',
			'libraries.groupings.shows' => 'Сериалы',
			'libraries.groupings.seasons' => 'Сезоны',
			'libraries.groupings.episodes' => 'Эпизоды',
			'libraries.groupings.artists' => 'Исполнители',
			'libraries.groupings.albums' => 'Альбомы',
			'libraries.groupings.tracks' => 'Треки',
			'libraries.groupings.folders' => 'Папки',
			'libraries.filterCategories.genre' => 'Жанр',
			'libraries.filterCategories.year' => 'Год',
			'libraries.filterCategories.contentRating' => 'Возрастной рейтинг',
			'libraries.filterCategories.tag' => 'Тег',
			'libraries.filterCategories.unwatched' => 'Непросмотренные',
			'libraries.filterCategories.unplayed' => 'Не прослушано',
			'libraries.filterCategories.favorites' => 'Избранное',
			'libraries.filterCategories.filePath' => 'Путь к файлу',
			'libraries.sortLabels.title' => 'Название',
			'libraries.sortLabels.dateAdded' => 'Дата добавления',
			'libraries.sortLabels.releaseDate' => 'Дата выхода',
			'libraries.sortLabels.rating' => 'Рейтинг',
			'libraries.sortLabels.communityRating' => 'Оценка сообщества',
			'libraries.sortLabels.criticRating' => 'Оценка критиков',
			'libraries.sortLabels.userRating' => 'Пользовательская оценка',
			'libraries.sortLabels.datePlayed' => 'Дата просмотра',
			'libraries.sortLabels.playCount' => 'Количество просмотров',
			'libraries.sortLabels.productionYear' => 'Год производства',
			'libraries.sortLabels.runtime' => 'Длительность',
			'libraries.sortLabels.officialRating' => 'Официальный рейтинг',
			'libraries.sortLabels.premiereDate' => 'Дата премьеры',
			'libraries.sortLabels.startDate' => 'Дата начала',
			'libraries.sortLabels.airTime' => 'Время эфира',
			'libraries.sortLabels.studio' => 'Студия',
			'libraries.sortLabels.random' => 'Случайно',
			'libraries.sortLabels.dateShared' => 'Дата открытия доступа',
			'libraries.sortLabels.latestEpisodeAirDate' => 'Дата выхода последнего эпизода',
			'libraries.sortLabels.lastEpisodeDateAdded' => 'Дата добавления последнего эпизода',
			'libraries.sortLabels.dateDownloaded' => 'Дата загрузки',
			'libraries.sortLabels.size' => 'Размер',
			'libraries.sortLabels.library' => 'Библиотека',
			'libraries.advancedFilters.include' => 'Включить',
			'libraries.advancedFilters.exclude' => 'Исключить',
			'libraries.advancedFilters.any' => 'Любой',
			'libraries.advancedFilters.yes' => 'Да',
			'libraries.advancedFilters.no' => 'Нет',
			'libraries.advancedFilters.not' => ({required Object value}) => 'Не ${value}',
			'libraries.advancedFilters.valueCount' => ({required Object count}) => '${count} выбрано',
			'libraries.advancedFilters.valueCountExcluded' => ({required Object count}) => '${count} исключен',
			'libraries.advancedFilters.searchValues' => 'Значения поиска',
			'libraries.advancedFilters.noValues' => 'Нет значений',
			'libraries.advancedFilters.matchContains' => 'Содержит',
			'libraries.advancedFilters.matchNotContains' => 'Не содержит',
			'libraries.advancedFilters.matchIs' => 'Есть',
			'libraries.advancedFilters.matchIsNot' => 'Нет',
			'libraries.advancedFilters.matchBeginsWith' => 'Начинается с',
			'libraries.advancedFilters.matchEndsWith' => 'Заканчивается на',
			'libraries.advancedFilters.textHint' => 'Введите соответствующий',
			'libraries.advancedFilters.from' => 'От',
			'libraries.advancedFilters.to' => 'Чтобы',
			'libraries.advancedFilters.range' => ({required Object from, required Object to}) => '${from} — ${to}',
			'libraries.advancedFilters.atLeast' => ({required Object value}) => '${value} и выше',
			'libraries.advancedFilters.atMost' => ({required Object value}) => 'До ${value}',
			'libraries.advancedFilters.dateLastDays' => ({required Object count}) => 'Последние ${count} дней',
			'libraries.advancedFilters.dateLastYear' => 'Прошлый год',
			'libraries.advancedFilters.dateOlderThanDays' => ({required Object count}) => 'Старше ${count} дней',
			'libraries.advancedFilters.dateOlderThanYear' => 'Старше года',
			'about.title' => 'О приложении',
			'about.openSourceLicenses' => 'Лицензии открытого ПО',
			'about.versionLabel' => ({required Object version}) => 'Версия ${version}',
			'about.appDescription' => 'Красивый клиент Plex, Jellyfin и Emby на Flutter',
			'about.customSource' => 'Исходный код',
			'about.basedOnLuroka' => 'Построен на базе кода Plezy.',
			'about.viewLicensesDescription' => 'Просмотр лицензий сторонних библиотек',
			'about.appSection' => 'Приложение',
			'about.communitySection' => 'Сообщество',
			'about.creditsSection' => 'Кредиты',
			'about.legalSection' => 'Юридический',
			'about.versionMeta' => ({required Object version, required Object build, required Object platform}) => 'v${version} (${build}) · ${platform}',
			'about.versionMetaNoBuild' => ({required Object version, required Object platform}) => 'v${version} · ${platform}',
			'about.versionUnavailable' => 'Версия недоступна',
			'about.versionDetails' => 'Подробности версии',
			'about.versionDetailsTitle' => ({required Object version, required Object build}) => 'Luroka ${version} (${build})',
			'about.platformLine' => ({required Object platform}) => 'Платформа: ${platform}',
			'about.deviceLine' => ({required Object model}) => 'Устройство: ${model}',
			'about.packageLine' => ({required Object package}) => 'Пакет: ${package}',
			'about.localeLine' => ({required Object locale}) => 'Язык: ${locale}',
			'about.copyDetails' => 'Копировать детали',
			_ => null,
		} ?? switch (path) {
			'about.detailsCopied' => 'Сведения о приложении скопированы.',
			'about.detailsCopyFailed' => 'Не удалось скопировать сведения о приложении.',
			'about.checkForUpdatesDescription' => 'Проверьте GitHub на наличие новой версии.',
			'about.checkingForUpdates' => 'Проверка обновлений…',
			'about.whatsNew' => 'Что нового',
			'about.releaseNotesUnavailable' => 'Примечания к выпуску отсутствуют.',
			'about.sourceCodeDescription' => 'Luroka на GitHub',
			'about.reportIssue' => 'Сообщить о проблеме',
			'about.reportIssueDescription' => 'Расскажите нам, что пошло не так',
			'about.documentation' => 'Документация',
			'about.documentationDescription' => 'Настройка, функции и примечания к сборке',
			'about.upstreamProjectDescription' => 'Проект с открытым исходным кодом, созданный edde746 и его участниками',
			'about.upstreamWebsite' => 'Веб-сайт разведки и добычи',
			'about.attribution' => 'Данные и атрибуция',
			'about.attributionDescription' => 'Метаданные, рейтинги и товарные знаки',
			'about.attributionBody' => 'В этом продукте используется TMDB API, но он не одобрен и не сертифицирован TMDB. Списки популярности, метаданные и рейтинги IMDb предоставляются Cinemeta. Партитуры сохраняют свои исходные метки.',
			'about.trademarkNotices' => 'Plex, Jellyfin, Emby, Trakt, Simkl, MyAnimeList, AniList, TMDB и связанные с ними знаки являются товарные знаки соответствующих владельцев. Luroka не связан с ними и не одобрен ими.',
			'about.privacyPolicy' => 'Политика конфиденциальности',
			'about.privacyPolicyDescription' => 'Как обрабатываются ваши данные',
			'about.gplLicense' => 'Лицензия GNU GPL-3.0',
			'about.gplLicenseDescription' => 'Luroka — бесплатное программное обеспечение.',
			'about.linkOpenFailed' => 'Не удалось открыть эту ссылку',
			'about.opensInBrowser' => 'Открывается в вашем браузере',
			'about.footer' => 'Luroka — бесплатное программное обеспечение под лицензией GPL-3.0.',
			'about.copyright' => ({required Object year}) => '© ${year} Luroka участники',
			'serverSelection.noServersFoundForAccount' => ({required Object username, required Object email}) => 'Серверы не найдены для ${username} (${email})',
			'serverSelection.failedToLoadServers' => ({required Object error}) => 'Не удалось загрузить серверы: ${error}',
			'serverSelection.noValidServers' => 'В этой учётной записи не найдено пригодных серверов',
			'hubDetail.title' => 'Название',
			'hubDetail.releaseYear' => 'Год выпуска',
			'hubDetail.dateAdded' => 'Дата добавления',
			'hubDetail.rating' => 'Рейтинг',
			'hubDetail.noItemsFound' => 'Элементы не найдены',
			'logs.clearLogs' => 'Очистить логи',
			'logs.copyLogs' => 'Скопировать логи',
			'logs.uploadLogs' => 'Загрузить логи',
			'startup.failedTitle' => 'Luroka не удалось запустить',
			'startup.failedBody' => 'Во время запуска что-то пошло не так. Сведения ниже показывают, что именно не удалось.',
			'startup.failedBodyRepairable' => 'Сохранённый файл настроек Luroka повреждён, и его необходимо пересоздать, прежде чем Luroka сможет запуститься. Повторные попытки не помогут — выберите «Восстановить хранилище».',
			'startup.phaseLabel' => 'Шаг',
			'startup.showDetails' => 'Показать сведения',
			'startup.hideDetails' => 'Скрыть сведения',
			'startup.copyDetails' => 'Копировать сведения',
			'startup.detailsCopied' => 'Сведения скопированы в буфер обмена',
			'startup.uploadDetails' => 'Отправить сведения',
			'startup.repairStorage' => 'Восстановить хранилище',
			'startup.repairTitle' => 'Восстановить сохранённые данные?',
			'startup.repairBodyCommon' => 'Файл настроек Luroka повреждён и не может быть прочитан. Восстановление сбросит все настройки к значениям по умолчанию.',
			'startup.repairBodyOneCredential' => 'Одна сохранённая учётная запись повреждена и не может быть прочитана. Восстановление удалит только её; остальные настройки не будут затронуты.',
			'startup.repairBodySignInsKept' => 'Вход в ваши серверы и профили будет сохранён.',
			'startup.repairBodySignInsLost' => 'Ключ, защищающий сохранённые входы, невозможно восстановить из этого файла, поэтому вам придётся снова войти на каждый сервер и в каждый профиль. На вашем медиасервере ничего не изменится.',
			'startup.repairBodySessionsUncertain' => 'Трекеры (MAL, AniList, Simkl, Trakt) и Seerr хранятся отдельно и могут сохраниться или нет. Luroka точно сообщит, что удалось сохранить.',
			'startup.repairConfirm' => 'Восстановить',
			'startup.repairSucceeded' => 'Хранилище восстановлено',
			'startup.repairNeedsRestart' => 'Хранилище восстановлено — требуется перезапуск',
			'startup.restartRequiredBody' => 'Ваши данные были восстановлены, но Luroka должен запуститься заново, чтобы использовать их. Закройте Luroka и откройте его снова.',
			'startup.quitLuroka' => 'Выйти из Luroka',
			'startup.repairFailed' => 'Не удалось восстановить',
			'startup.repairKeptSignIns' => 'Ваши серверы и профили по-прежнему в системе.',
			'startup.repairLostSignIns' => 'Ключ, защищающий сохранённые входы, не удалось восстановить. Вам придётся снова войти на каждый сервер и в каждый профиль.',
			'startup.repairLostSessions' => 'Потеряно как минимум одно подключение трекера или Seerr — его нужно восстановить.',
			'startup.backupTitle' => 'Сохранена копия повреждённого файла',
			'startup.backupWarning' => 'Она содержит ваши учётные данные для входа. Не загружайте и не передавайте её.',
			'startup.deleteBackup' => 'Удалить копию',
			'startup.backupDeleted' => 'Копия удалена.',
			'startup.previousFailureTitle' => 'В прошлый раз Luroka не удалось запустить',
			'licenses.relatedPackages' => 'Связанные пакеты',
			'licenses.license' => 'Лицензия',
			'licenses.licenseNumber' => ({required Object number}) => 'Лицензия ${number}',
			'licenses.licensesCount' => ({required Object count}) => '${count} лицензий',
			'licenses.searchHint' => 'Поиск пакетов',
			'licenses.noResults' => ({required Object query}) => 'Нет пакетов, соответствующих «${query}».',
			'licenses.clearSearch' => 'Очистить поиск',
			'navigation.libraries' => 'Библиотеки',
			'navigation.downloads' => 'Загрузки',
			'navigation.liveTv' => 'Прямой эфир',
			'navigation.explore' => 'Обзор',
			'explore.title' => 'Обзор',
			'explore.selectSource' => 'Выбрать источник',
			'explore.rows.watchlist' => 'Список для просмотра',
			'explore.rows.recommendedMovies' => 'Рекомендуемые фильмы',
			'explore.rows.recommendedShows' => 'Рекомендуемые сериалы',
			'explore.rows.trendingMovies' => 'Фильмы в тренде',
			'explore.rows.trendingShows' => 'Сериалы в тренде',
			'explore.rows.popularMovies' => 'Популярные фильмы',
			'explore.rows.popularShows' => 'Популярные сериалы',
			'explore.rows.trendingAnime' => 'Аниме в тренде',
			'explore.rows.suggestedAnime' => 'Рекомендуемые аниме',
			'explore.rows.airingAnime' => 'Топ выходящих аниме',
			'explore.rows.popularAnime' => 'Самые популярные аниме',
			'explore.rows.trending' => 'В тренде',
			'explore.rows.upcomingMovies' => 'Ожидаемые фильмы',
			'explore.rows.upcomingShows' => 'Ожидаемые сериалы',
			'explore.status.airing' => 'Выходит',
			'explore.status.ended' => 'Завершён',
			'explore.status.canceled' => 'Отменён',
			'explore.status.upcoming' => 'Скоро',
			'explore.episodeCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n, one: '${n} эпизод', few: '${n} эпизода', many: '${n} эпизодов', other: '${n} эпизода', ), 
			'explore.cast' => 'В ролях',
			'explore.characters' => 'Персонажи',
			'explore.addToWatchlist' => 'Добавить в список для просмотра',
			'explore.removeFromWatchlist' => 'Удалить из списка для просмотра',
			'explore.addedToWatchlist' => 'Добавлено в список просмотра',
			'explore.removedFromWatchlist' => 'Удалено из списка просмотра',
			'explore.watchlistUpdateFailed' => 'Не удалось обновить список для просмотра',
			'explore.watchlistNoMatch' => 'Не удалось сопоставить этот элемент со списком просмотра',
			'explore.notInLibrary' => 'Нет в вашей библиотеке',
			'explore.inTheseLibraries' => 'В этих библиотеках',
			'explore.checkingLibrary' => 'Проверка вашей библиотеки...',
			'explore.libraryCheckFailed' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n, one: 'Не удалось проверить ${n} сервер', few: 'Не удалось проверить ${n} сервера', many: 'Не удалось проверить ${n} серверов', other: 'Не удалось проверить ${n} сервера', ), 
			'explore.emptyTitle' => 'Здесь пока ничего нет',
			'explore.emptyMessage' => ({required Object source}) => 'Разделы из ${source} появятся здесь, когда в них появится контент.',
			'explore.searchHint' => ({required Object source}) => 'Поиск в ${source}',
			'explore.searchEmpty' => ({required Object query}) => 'Нет результатов по запросу "${query}"',
			'explore.searchPrompt' => ({required Object source}) => 'Ищите фильмы и сериалы в ${source}.',
			'explore.searchFailed' => 'Ошибка поиска. Проверьте подключение и повторите попытку.',
			'explore.badge.rankPopular' => ({required Object n}) => '#${n} по популярности',
			'explore.badge.rankAiring' => ({required Object n}) => '#${n} в эфире',
			'explore.badge.rankRated' => ({required Object n}) => '#${n} по оценкам',
			'explore.badge.rankTrending' => ({required Object n}) => '#${n} в тренде',
			'explore.badge.rankSeasonal' => ({required Object n, required Object season}) => '#${n} в сезоне ${season}',
			'explore.badge.watchingNow' => ({required Object n}) => '${n} смотрят',
			'explore.badge.available' => 'Доступно',
			'explore.badge.partiallyAvailable' => 'Доступно частично',
			'explore.badge.availableIn4k' => 'Доступно в 4K',
			'explore.badge.requested' => 'Запрошено',
			'explore.badge.pendingApproval' => 'Ожидает одобрения',
			'explore.badge.processing' => 'В обработке',
			'explore.badge.declined' => 'Отклонено',
			'explore.badge.requestFailed' => 'Запрос не удался',
			'explore.badge.requested4k' => 'Запрошено в 4K',
			'explore.badge.seasonsAvailable' => ({required Object available, required Object total}) => '${available}/${total} сезонов',
			'explore.badge.nextEpisodeIn' => ({required Object episode, required Object duration}) => 'Серия ${episode} через ${duration}',
			'explore.badge.nextAiringIn' => ({required Object duration}) => 'Далее через ${duration}',
			'explore.badge.episodesShort' => ({required Object n}) => '${n} эп.',
			'explore.badge.minutesPerEpisode' => ({required Object n}) => '${n} мин/эп.',
			'explore.badge.adult' => '18+',
			'explore.stats.listed' => ({required Object n}) => '${n} в списках',
			'explore.stats.viewersDay' => ({required Object n}) => '${n} посмотрели сегодня',
			'explore.stats.viewersWeek' => ({required Object n}) => '${n} посмотрели на этой неделе',
			'explore.stats.viewersMonth' => ({required Object n}) => '${n} посмотрели в этом месяце',
			'explore.stats.viewersYear' => ({required Object n}) => '${n} посмотрели в этом году',
			'explore.stats.viewersAllTime' => ({required Object n}) => '${n} зрителей',
			'explore.stats.planning' => ({required Object n}) => '${n} планируют посмотреть',
			'explore.stats.favorited' => ({required Object n}) => '${n} в избранном',
			'explore.stats.dropRate' => ({required Object percent}) => '${percent} бросили',
			'explore.stats.comments' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n, one: '${n} комментарий', few: '${n} комментария', many: '${n} комментариев', other: '${n} комментариев', ), 
			'explore.stats.votes' => ({required Object n}) => '${n} голосов',
			'explore.stats.watching' => ({required Object n}) => '${n} смотрят',
			'explore.stats.completed' => ({required Object n}) => '${n} завершили',
			'explore.stats.onHold' => ({required Object n}) => '${n} отложили',
			'explore.stats.dropped' => ({required Object n}) => '${n} бросили',
			'explore.season.winter' => 'Зима',
			'explore.season.spring' => 'Весна',
			'explore.season.summer' => 'Лето',
			'explore.season.fall' => 'Осень',
			'explore.season.withYear' => ({required Object season, required Object year}) => '${season} ${year}',
			'explore.format.tv' => 'ТВ',
			'explore.format.tvShort' => 'Короткометражное ТВ',
			'explore.format.movie' => 'Фильм',
			'explore.format.special' => 'Спецвыпуск',
			'explore.format.ova' => 'OVA',
			'explore.format.ona' => 'ONA',
			'explore.format.music' => 'Музыка',
			'explore.format.other' => 'Другое',
			'explore.sourceMaterial.original' => 'Оригинал',
			'explore.sourceMaterial.manga' => 'Манга',
			'explore.sourceMaterial.lightNovel' => 'Ранобэ',
			'explore.sourceMaterial.novel' => 'Новелла',
			'explore.sourceMaterial.visualNovel' => 'Визуальная новелла',
			'explore.sourceMaterial.game' => 'Игра',
			'explore.sourceMaterial.webComic' => 'Веб-комикс',
			'explore.sourceMaterial.musicRelease' => 'Музыка',
			'explore.sourceMaterial.otherMedia' => 'Другое',
			'explore.creditRole.actor' => 'Актер',
			'explore.creditRole.director' => 'Режиссёр',
			'explore.creditRole.writer' => 'Сценарист',
			'explore.creditRole.producer' => 'Продюсер',
			'explore.creditRole.creator' => 'Создатель',
			'explore.creditRole.composer' => 'Композитор',
			'explore.relation.prequel' => 'Приквел',
			'explore.relation.sequel' => 'Сиквел',
			'explore.relation.sideStory' => 'Побочная история',
			'explore.relation.spinOff' => 'Спин-офф',
			'explore.relation.alternativeVersion' => 'Альтернативная версия',
			'explore.relation.summary' => 'Краткое изложение',
			'explore.relation.parentStory' => 'Основная история',
			'explore.relation.adaptation' => 'Адаптация',
			'explore.relation.other' => 'Связано',
			'explore.broadcast' => ({required Object day, required Object time}) => 'Выходит ${day} в ${time}',
			'explore.broadcastWithZone' => ({required Object day, required Object time, required Object timezone}) => 'Выходит ${day} в ${time} ${timezone}',
			'explore.detail.originalTitle' => 'Оригинальное название',
			'explore.detail.alsoKnownAs' => 'Также известен как',
			'explore.detail.studios' => 'Студии',
			'explore.detail.country' => 'Страна',
			'explore.detail.language' => 'Язык',
			'explore.detail.released' => 'Выпущено',
			'explore.detail.physicalRelease' => 'На диске',
			'explore.detail.ended' => 'Завершено',
			'explore.detail.addedOn' => ({required Object date}) => 'Добавлено ${date}',
			'explore.detail.yourRating' => 'Ваша оценка',
			'explore.detail.budget' => 'Бюджет',
			'explore.detail.revenue' => 'Сборы',
			'explore.detail.contentAdvisory' => 'Возрастные ограничения',
			'explore.detail.tags' => 'Теги',
			'explore.detail.revealSpoilerTags' => 'Показать теги со спойлерами',
			'explore.detail.links' => 'Ссылки',
			'explore.detail.watchOn' => 'Смотреть на',
			'explore.detail.watchTrailer' => 'Смотреть трейлер',
			'explore.detail.openOn' => ({required Object site}) => 'Открыть на ${site}',
			'explore.detail.crew' => 'Съёмочная группа',
			'explore.detail.ratings' => 'Рейтинги',
			'explore.detail.schedule' => 'Расписание',
			'explore.detail.recommendedByUsers' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n, one: 'Рекомендуют ${n} пользователь', few: 'Рекомендуют ${n} пользователя', many: 'Рекомендуют ${n} пользователей', other: 'Рекомендуют ${n} пользователей', ), 
			'explore.detail.recommendedBy' => ({required Object who}) => 'Рекомендовано: ${who}',
			'explore.detail.favoritedBy' => ({required Object who}) => 'В избранном у ${who}',
			'explore.detail.unairedEpisodes' => ({required Object n}) => '${n} ещё не вышли',
			'explore.detail.recommendedByPercent' => ({required Object percent}) => 'Рекомендуют ${percent} зрителей',
			'explore.detail.relatedTitles' => 'Связанные названия',
			'explore.detail.background' => 'Фон',
			'explore.totalResults' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n, one: '${n} результат', few: '${n} результата', many: '${n} результатов', other: '${n} результатов', ), 
			'liveTv.title' => 'ТВ в прямом эфире',
			'liveTv.guide' => 'Программа',
			'liveTv.noChannels' => 'Нет доступных каналов',
			'liveTv.noDvr' => 'DVR не настроен ни на одном сервере',
			'liveTv.serverUnavailable' => 'Сервер прямого эфира недоступен.',
			'liveTv.serverNotConnected' => 'Сервер прямого эфира не подключён.',
			'liveTv.noPrograms' => 'Нет данных о программах',
			'liveTv.liveStreamFailed' => 'Не удалось запустить прямой эфир',
			'liveTv.unknownProgram' => 'Неизвестная программа',
			'liveTv.unknownHub' => 'Неизвестно',
			'liveTv.unknownError' => 'Неизвестная ошибка',
			'liveTv.channelNumber' => ({required Object number}) => 'Канал ${number}',
			'liveTv.unknownChannel' => 'Неизвестный канал',
			'liveTv.live' => 'ЭФИР',
			'liveTv.reloadGuide' => 'Перезагрузить программу',
			'liveTv.searchGuide' => 'Поиск в программе',
			'liveTv.searchHint' => 'Поиск каналов и программ',
			'liveTv.searchNoResults' => ({required Object query}) => 'Нет совпадений по запросу "${query}"',
			'liveTv.channelsSection' => 'Каналы',
			'liveTv.programsSection' => 'Программы',
			'liveTv.now' => 'Сейчас',
			'liveTv.today' => 'Сегодня',
			'liveTv.tomorrow' => 'Завтра',
			'liveTv.midnight' => 'Полночь',
			'liveTv.overnight' => 'Ночь',
			'liveTv.morning' => 'Утро',
			'liveTv.daytime' => 'День',
			'liveTv.evening' => 'Вечер',
			'liveTv.lateNight' => 'Поздний вечер',
			'liveTv.whatsOn' => 'Что идёт',
			'liveTv.watchChannel' => 'Смотреть канал',
			'liveTv.favorites' => 'Избранное',
			'liveTv.reorderFavorites' => 'Изменить порядок избранного',
			'liveTv.noFavoriteChannels' => 'Нет избранных каналов',
			'liveTv.noFavoriteChannelsHint' => 'Покажите все каналы, затем нажмите и удерживайте канал, чтобы добавить его в избранное.',
			'liveTv.showAllChannels' => 'Показать все каналы',
			'liveTv.favoritesLoadFailed' => 'Не удалось загрузить избранное. Проверьте подключение и повторите попытку.',
			'liveTv.favoritesUpdateFailed' => 'Не удалось обновить избранное. Проверьте подключение и повторите попытку.',
			'liveTv.joinSession' => 'Присоединиться к текущему сеансу',
			'liveTv.watchFromStart' => ({required Object minutes}) => 'Смотреть сначала (${minutes} мин. назад)',
			'liveTv.watchLive' => 'Смотреть в прямом эфире',
			'liveTv.goToLive' => 'К прямому эфиру',
			'liveTv.record' => 'Запись',
			'liveTv.recordEpisode' => 'Записать эпизод',
			'liveTv.recordSeries' => 'Записать сериал',
			'liveTv.recordOptions' => 'Параметры записи',
			'liveTv.saveTo' => 'Сохранить в',
			'liveTv.recordings' => 'Записи',
			'liveTv.scheduledRecordings' => 'Запланировано',
			'liveTv.recordingRules' => 'Правила записи',
			'liveTv.noScheduledRecordings' => 'Нет запланированных записей',
			'liveTv.manageRecording' => 'Управление записью',
			'liveTv.cancelRecording' => 'Отменить запись',
			'liveTv.cancelRecordingTitle' => 'Отменить эту запись?',
			'liveTv.cancelRecordingMessage' => ({required Object title}) => '${title} больше не будет записываться.',
			'liveTv.deleteRule' => 'Удалить правило',
			'liveTv.deleteRuleTitle' => 'Удалить правило записи?',
			'liveTv.deleteRuleMessage' => ({required Object title}) => 'Будущие эпизоды ${title} не будут записаны.',
			'liveTv.recordingScheduled' => 'Запись запланирована',
			'liveTv.alreadyScheduled' => 'Эта передача уже запланирована',
			'liveTv.dvrAdminRequired' => 'Настройки DVR требуют учётной записи администратора',
			'liveTv.recordingFailed' => 'Не удалось запланировать запись',
			'liveTv.recordingTargetMissing' => 'Не удалось определить библиотеку записи',
			'liveTv.recordNotAvailable' => 'Запись недоступна для этой передачи',
			'liveTv.recordingCancelled' => 'Запись отменена',
			'liveTv.recordingRuleDeleted' => 'Правило записи удалено',
			'liveTv.processRecordingRules' => 'Пересчитать правила',
			'liveTv.recordingInProgress' => 'Идёт запись',
			'liveTv.recordingsCount' => ({required Object count}) => 'Запланировано: ${count}',
			'liveTv.editRule' => 'Изменить правило',
			'liveTv.editRuleAction' => 'Изменить',
			'liveTv.recordingRuleUpdated' => 'Правило записи обновлено',
			'liveTv.guideReloadRequested' => 'Запрошено обновление гайда',
			'liveTv.guideReloadFailed' => 'Не удалось обновить программу',
			'liveTv.rulesProcessRequested' => 'Запрошен пересчёт правил',
			'liveTv.rulesProcessFailed' => 'Не удалось повторно применить правила записи',
			'liveTv.recordShow' => 'Записать передачу',
			'liveTv.recordSettings.startEarly' => 'Начинать раньше (секунды)',
			'liveTv.recordSettings.endLate' => 'Заканчивать позже (секунды)',
			'liveTv.recordSettings.newOnly' => 'Только новые эпизоды',
			'liveTv.recordSettings.anyChannel' => 'Записывать на любом канале',
			'liveTv.recordSettings.anyTime' => 'Записывать в любое время',
			'liveTv.recordSettings.skipInLibrary' => 'Пропускать эпизоды, уже имеющиеся в библиотеке',
			'liveTv.recordSettings.keepUpTo' => 'Сколько эпизодов хранить',
			'liveTv.recordSettings.keepUpToHint' => '0 — хранить все эпизоды',
			'liveTv.startingInMinutes' => ({required Object minutes}) => 'Начало через ${minutes} мин',
			'liveTv.dayAtTime' => ({required Object day, required Object time}) => '${day} в ${time}',
			'liveTv.invalidPlaybackData' => ({required Object product}) => '${product} вернул некорректные данные для воспроизведения ТВ в прямом эфире',
			'liveTv.failedToStartChannel' => 'Не удалось запустить канал в прямом эфире',
			'liveTv.failedToBuildStreamUrl' => 'Не удалось сформировать URL потока',
			'liveTv.playbackStartFailed' => ({required Object reason}) => 'Не удалось запустить канал: ${reason}',
			'liveTv.channelSwitchFailed' => ({required Object reason}) => 'Не удалось переключить канал: ${reason}',
			'collections.title' => 'Коллекции',
			'collections.collection' => 'Коллекция',
			'collections.empty' => 'Коллекция пуста',
			'collections.deleteCollection' => 'Удалить коллекцию',
			'collections.deleteConfirm' => ({required Object title}) => 'Удалить "${title}"? Это нельзя отменить.',
			'collections.deleted' => 'Коллекция удалена',
			'collections.deleteFailed' => 'Не удалось удалить коллекцию',
			'collections.deleteFailedWithError' => ({required Object error}) => 'Не удалось удалить коллекцию: ${error}',
			'collections.selectCollection' => 'Выбрать коллекцию',
			'collections.collectionName' => 'Название коллекции',
			'collections.enterCollectionName' => 'Введите название коллекции',
			'collections.addedToCollection' => 'Добавлено в коллекцию',
			'collections.errorAddingToCollection' => 'Не удалось добавить в коллекцию',
			'collections.created' => 'Коллекция создана',
			'collections.removeFromCollection' => 'Удалить из коллекции',
			'collections.removeFromCollectionConfirm' => ({required Object title}) => 'Удалить "${title}" из этой коллекции?',
			'collections.removedFromCollection' => 'Удалено из коллекции',
			'collections.removeFromCollectionFailed' => 'Не удалось удалить из коллекции',
			'collections.removeFromCollectionError' => ({required Object error}) => 'Ошибка удаления из коллекции: ${error}',
			'collections.searchCollections' => 'Поиск коллекций...',
			'playlists.title' => 'Плейлисты',
			'playlists.playlist' => 'Плейлист',
			'playlists.noPlaylists' => 'Плейлисты не найдены',
			'playlists.create' => 'Создать плейлист',
			'playlists.playlistName' => 'Название плейлиста',
			'playlists.enterPlaylistName' => 'Введите название плейлиста',
			'playlists.delete' => 'Удалить плейлист',
			'playlists.removeItem' => 'Удалить из плейлиста',
			'playlists.smartPlaylist' => 'Умный плейлист',
			'playlists.itemCount' => ({required Object count}) => '${count} элементов',
			'playlists.oneItem' => '1 элемент',
			'playlists.emptyPlaylist' => 'Этот плейлист пуст',
			'playlists.deleteConfirm' => 'Удалить плейлист?',
			'playlists.deleteMessage' => ({required Object name}) => 'Вы уверены, что хотите удалить "${name}"?',
			'playlists.created' => 'Плейлист создан',
			'playlists.deleted' => 'Плейлист удалён',
			'playlists.itemAdded' => 'Добавлено в плейлист',
			'playlists.itemRemoved' => 'Удалено из плейлиста',
			'playlists.selectPlaylist' => 'Выбрать плейлист',
			'playlists.searchPlaylists' => 'Поиск плейлистов...',
			'playlists.errorCreating' => 'Не удалось создать плейлист',
			'playlists.errorDeleting' => 'Не удалось удалить плейлист',
			'playlists.errorLoading' => 'Не удалось загрузить плейлисты',
			'playlists.errorAdding' => 'Не удалось добавить в плейлист',
			'playlists.errorReordering' => 'Не удалось переупорядочить элемент плейлиста',
			'playlists.errorRemoving' => 'Не удалось удалить из плейлиста',
			'music.goToAlbum' => 'Перейти к альбому',
			'music.goToArtist' => 'Перейти к исполнителю',
			'music.instantMix' => 'Быстрый микс',
			'music.playNext' => 'Воспроизвести следующим',
			'music.addToQueue' => 'Добавить в очередь',
			'music.discNumber' => ({required Object n}) => 'Диск ${n}',
			'music.trackCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n, one: '${n} трек', few: '${n} трека', many: '${n} треков', other: '${n} трека', ), 
			'music.nowPlaying' => 'Сейчас играет',
			'music.playingFrom' => ({required Object title}) => 'Воспроизведение из ${title}',
			'music.queue' => 'Очередь',
			'music.clearQueue' => 'Очистить очередь',
			'music.lyrics' => 'Текст песни',
			'music.noLyrics' => 'Текст песни недоступен',
			'music.sleepTimer' => 'Таймер сна',
			'music.sleepTimerEndOfTrack' => 'Конец трека',
			'music.sleepTimerMinutes' => ({required Object n}) => '${n} минут',
			'music.stopPlayback' => 'Остановить воспроизведение',
			'music.previousTrack' => 'Предыдущий трек',
			'music.nextTrack' => 'Следующий трек',
			'music.repeat' => 'Повтор',
			'music.repeatAll' => 'Повторять все',
			'music.repeatOne' => 'Повторять один',
			'music.instantMixNoServer' => 'Нет доступного сервера для мгновенного микса',
			'music.instantMixFailed' => 'Не удалось загрузить быстрый микс',
			'music.instantMixEmpty' => 'Быстрый микс не нашёл ни одного трека',
			'music.noAudioUrl' => ({required Object track}) => 'Для трека ${track} нет доступного URL аудио',
			'music.discography.singlesAndEps' => 'Синглы и EP',
			'music.discography.live' => 'Концертные',
			'music.discography.compilations' => 'Сборники',
			'watchTogether.title' => 'Смотреть вместе',
			'watchTogether.description' => 'Смотрите контент синхронно с друзьями и семьёй',
			'watchTogether.createRoom' => 'Создать комнату',
			'watchTogether.creatingRoom' => 'Создание комнаты...',
			'watchTogether.joinRoom' => 'Присоединиться к комнате',
			'watchTogether.joiningRoom' => 'Присоединение к комнате...',
			'watchTogether.connecting' => 'Подключение...',
			'watchTogether.relayPublic' => 'В комнатах используются общедоступные реле Open Watch Party.',
			'watchTogether.relayCustom' => ({required Object url}) => 'Комнаты используют ваше реле по адресу ${url}.',
			'watchTogether.recentRooms' => 'Недавние комнаты',
			'watchTogether.roomActions' => 'Действия комнаты',
			'watchTogether.renameRoom' => 'Переименовать комнату',
			'watchTogether.removeRoom' => 'Удалить',
			'watchTogether.enterRoomCode' => 'Введите 6-значный код от хостера.',
			'watchTogether.roomCode' => 'Код номера',
			'watchTogether.paste' => 'Вставить',
			'watchTogether.noCodeInClipboard' => 'В буфере обмена нет кода комнаты.',
			'watchTogether.copyCode' => 'Копировать код',
			'watchTogether.codeCopied' => 'Код номера скопирован.',
			'watchTogether.shareInvite' => 'Поделиться Пригласить',
			'watchTogether.qrShare' => 'Поделиться QR-кодом',
			'watchTogether.qrHint' => 'Отсканируйте с помощью приложения Luroka, чтобы присоединиться к этой комнате.',
			'watchTogether.phasePlaying' => 'Играя',
			'watchTogether.phasePaused' => 'Приостановлено',
			'watchTogether.phaseWaiting' => 'Жду всех',
			'watchTogether.inviteCopied' => 'Приглашение скопировано. Вставьте его в сообщение.',
			'watchTogether.inviteMessage' => ({required Object code}) => 'Присоединяйтесь к моей комнате Watch Together в Luroka: luroka://watch?code=${code} — или откройте Watch Together и введите ${code}.',
			'watchTogether.openSessionControls' => 'Открыть управление сессией «Смотреть вместе»',
			'watchTogether.reconnecting' => 'Повторное подключение...',
			'watchTogether.reconnectingDescription' => 'Связь прервалась. Вы автоматически возвращаетесь в комнату.',
			'watchTogether.connected' => 'Подключено',
			'watchTogether.disconnected' => 'Отключено',
			'watchTogether.youAreHost' => 'Вы — организатор',
			'watchTogether.hostedBy' => ({required Object name}) => 'Хостинг: ${name}',
			'watchTogether.hostControlsPlayback' => 'Организатор управляет воспроизведением',
			'watchTogether.anyoneCanControl' => 'Любой может управлять воспроизведением',
			'watchTogether.roomLocked' => 'Комната заперта',
			'watchTogether.nowPlaying' => 'Сейчас играет',
			'watchTogether.nothingPlaying' => 'Ничего не играет',
			'watchTogether.nothingPlayingHost' => 'Воспроизведите что-нибудь из любой библиотеки, чтобы поделиться этим с комнатой.',
			'watchTogether.nothingPlayingGuest' => 'Когда ведущий что-то воспроизводит, оно открывается здесь.',
			'watchTogether.notShareable' => 'Это видео не соответствует каталогу, поэтому его могут воспроизводить только люди, имеющие доступ к тому же серверу.',
			'watchTogether.searching' => 'Ищу это видео в своих библиотеках...',
			'watchTogether.yourCopy' => 'Ваша копия',
			'watchTogether.sharingYourCopy' => 'Вы делитесь своей копией',
			'watchTogether.playingOtherLength' => ({required Object difference}) => 'Воспроизведение вашей копии, ${difference}',
			'watchTogether.mismatchTitle' => 'Ваш текст имеет другую длину',
			'watchTogether.mismatchDescription' => ({required Object difference}) => 'Ваша ближайшая копия — ${difference}, чем видео комнаты. Это может быть другая версия или версия.',
			'watchTogether.playAnyway' => 'Играть в любом случае',
			'watchTogether.chooseAnotherCopy' => 'Выбрать другую копию',
			'watchTogether.dontPlay' => 'Не Играй',
			'watchTogether.unavailableTitle' => 'У вас нет этого видео',
			'watchTogether.unavailableDescription' => 'Luroka не удалось найти его в ваших библиотеках. Выберите копию самостоятельно или выполните поиск еще раз.',
			'watchTogether.chooseCopy' => 'Выберите копию',
			'watchTogether.searchAgain' => 'Искать снова',
			'watchTogether.noCandidates' => 'В ваших библиотеках копий не найдено.',
			'watchTogether.choiceFailed' => 'Не удалось воспроизвести эту копию для комнаты.',
			'watchTogether.lengthLonger' => ({required Object duration}) => '${duration} длиннее',
			'watchTogether.lengthShorter' => ({required Object duration}) => '${duration} короче',
			'watchTogether.lengthSame' => 'Одинаковая длина',
			'watchTogether.lengthUnknown' => 'Длина неизвестна',
			'watchTogether.joinCurrentPlayback' => 'Присоединиться к текущему воспроизведению',
			'watchTogether.joinCurrentPlaybackDescription' => 'Вернуться к материалу, который сейчас смотрит организатор',
			'watchTogether.stopMedia' => 'Остановить видео для всех',
			'watchTogether.syncOffset' => 'Смещение синхронизации',
			'watchTogether.syncOffsetDescription' => 'Сдвиньте видео, если оно идет впереди или позади комнаты.',
			'watchTogether.offsetHint' => ({required Object difference}) => 'Ваша копия ${difference}, чем видео комнаты.',
			'watchTogether.applyDifference' => ({required Object offset}) => 'Используйте ${offset}.',
			'watchTogether.offsetMinusSecond' => '-1 с',
			'watchTogether.offsetMinusTenth' => '-100 мс',
			'watchTogether.offsetPlusTenth' => '+100 мс',
			'watchTogether.offsetPlusSecond' => '+1 с',
			'watchTogether.participants' => 'Участники',
			'watchTogether.participantCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n, one: 'Участник ${n}', few: '${n} участника', many: '${n} участников', other: '${n} участников', ), 
			'watchTogether.hostBadge' => 'ОРГАНИЗАТОР',
			'watchTogether.nameYou' => ({required Object name}) => '${name} (Вы)',
			'watchTogether.playerIdle' => 'Простой',
			'watchTogether.playerLoading' => 'Загрузка',
			'watchTogether.playerReady' => 'Готово',
			'watchTogether.playerBuffering' => 'Буферизация',
			'watchTogether.matchSearching' => 'Поиск',
			'watchTogether.matchMatched' => 'Есть видео',
			'watchTogether.matchMismatched' => 'Разная длина',
			'watchTogether.matchUnavailable' => 'Нет видео',
			'watchTogether.participantOffset' => ({required Object offset}) => 'Смещение ${offset}',
			'watchTogether.makeHost' => 'Назначить организатором',
			'watchTogether.makeHostQuestion' => 'Передать роль организатора?',
			'watchTogether.makeHostConfirm' => ({required Object name}) => '${name} будет управлять воспроизведением и вести сессию для всех.',
			'watchTogether.transfer' => 'Передать',
			'watchTogether.removeParticipant' => 'Удалить из комнаты',
			'watchTogether.removeParticipantQuestion' => ({required Object name}) => 'Удалить ${name}?',
			'watchTogether.removeParticipantConfirm' => ({required Object name}) => '${name} выходит из комнаты. Они смогут снова присоединиться с помощью кода, если вы не закроете комнату.',
			'watchTogether.remove' => 'Удалить',
			'watchTogether.roomSettings' => 'Настройки комнаты',
			'watchTogether.letEveryoneControl' => 'Пусть каждый контролирует воспроизведение',
			'watchTogether.lockRoom' => 'Запираемая комната',
			'watchTogether.lockRoomDescription' => 'Никто новый не может присоединиться',
			'watchTogether.leaveRoom' => 'Покинуть комнату',
			'watchTogether.leaveRoomQuestion' => 'Покинуть комнату?',
			'watchTogether.leaveRoomConfirm' => 'Вы можете присоединиться снова, указав код комнаты.',
			'watchTogether.leave' => 'Покинуть',
			'watchTogether.endRoom' => 'Конечная комната',
			'watchTogether.endRoomQuestion' => 'Конечная комната?',
			'watchTogether.endRoomConfirm' => 'На этом комната для всех заканчивается.',
			'watchTogether.end' => 'Завершить',
			'watchTogether.playBlockedTitle' => 'Воспроизведение не началось',
			'watchTogether.playBlockedDescription' => 'Нажмите кнопку воспроизведения, чтобы начать просмотр вместе с комнатой.',
			'watchTogether.notices.pressedPlay' => ({required Object name}) => '${name} нажал кнопку воспроизведения',
			'watchTogether.notices.playbackStarted' => 'Воспроизведение началось',
			'watchTogether.notices.paused' => ({required Object name}) => '${name} поставил на паузу',
			'watchTogether.notices.playbackPaused' => 'Воспроизведение приостановлено',
			'watchTogether.notices.jumpedTo' => ({required Object name, required Object position}) => '${name} перешел на ${position}.',
			'watchTogether.notices.roomJumpedTo' => ({required Object position}) => 'Перешел на ${position}.',
			'watchTogether.notices.changedSpeed' => ({required Object name, required Object speed}) => '${name} установил скорость ${speed}',
			'watchTogether.notices.speedChanged' => ({required Object speed}) => 'Скорость установлена на ${speed}.',
			'watchTogether.notices.startedMedia' => ({required Object name, required Object title}) => '${name} запущен ${title}',
			'watchTogether.notices.mediaStarted' => ({required Object title}) => 'Сейчас играю в ${title}',
			'watchTogether.notices.stoppedMedia' => ({required Object name}) => '${name} остановил видео',
			'watchTogether.notices.mediaStopped' => 'Видео остановлено',
			'watchTogether.notices.waitingFor' => ({required Object name}) => 'Ожидание ${name}...',
			'watchTogether.notices.waitingForSomeone' => 'Жду, пока кто-нибудь догонит...',
			'watchTogether.notices.finished' => 'Закончено',
			'watchTogether.notices.hostChangedTo' => ({required Object name}) => '${name} теперь организатор',
			'watchTogether.notices.youAreNowHost' => 'Теперь вы — организатор',
			_ => null,
		} ?? switch (path) {
			'watchTogether.notices.joined' => ({required Object name}) => '${name} присоединился',
			'watchTogether.notices.left' => ({required Object name}) => '${name} вышел',
			'watchTogether.notices.controlRefused' => 'Только хост может управлять воспроизведением',
			'watchTogether.notices.searchFailed' => 'На некоторых серверах не удалось найти видео комнаты.',
			'watchTogether.notices.playBlocked' => 'Нажмите кнопку воспроизведения, чтобы начать',
			'watchTogether.notices.shareFailed' => 'Не удалось поделиться этим видео с комнатой.',
			'watchTogether.notices.notShared' => 'Загруженные видео не доступны в комнате.',
			'watchTogether.notices.openFailed' => 'Не удалось открыть видео комнаты.',
			'watchTogether.ended.ended' => 'Хозяин закончил комнату',
			'watchTogether.ended.kicked' => 'Вас удалили из комнаты',
			'watchTogether.ended.expired' => 'Срок действия комнаты истек',
			'watchTogether.ended.replaced' => 'Вы присоединились к этой комнате на другом устройстве',
			'watchTogether.ended.lost' => 'Потеряна связь с комнатой',
			'watchTogether.errors.invalidCode' => 'Это не код комнаты. Коды состоят из 6 букв и цифр, без 0, 1, I, L или O.',
			'watchTogether.errors.roomNotFound' => 'Ни в одной комнате нет такого кода. Возможно, это закончилось.',
			'watchTogether.errors.roomFull' => 'Эта комната полна.',
			'watchTogether.errors.roomLocked' => 'Хозяин запер эту комнату.',
			'watchTogether.errors.relayFull' => 'Watch Together сейчас занят. Повторите попытку позже.',
			'watchTogether.errors.unreachable' => 'Не удалось связаться с ретранслятором Watch Together. Проверьте свое соединение.',
			'watchTogether.errors.rateLimited' => 'Слишком много попыток. Подождите немного и повторите попытку.',
			'watchTogether.errors.clientBlocked' => 'Эта версия Luroka не может использовать реле. Обновите приложение.',
			'watchTogether.errors.forbidden' => 'Это может сделать только хост.',
			'watchTogether.errors.notInRoom' => 'Ты не в комнате.',
			'watchTogether.errors.alreadyInRoom' => 'Вы уже в комнате.',
			'watchTogether.errors.resumeFailed' => 'Не удалось вернуться в комнату.',
			'watchTogether.errors.unsupported' => 'Реле этого не поддерживает.',
			'watchTogether.errors.generic' => 'Что-то пошло не так. Попробуйте еще раз.',
			'watchTogether.untitledEpisode' => ({required Object number}) => 'Эпизод ${number}',
			'downloads.title' => 'Загрузки',
			'downloads.manage' => 'Управление',
			'downloads.tvShows' => 'Сериалы',
			'downloads.movies' => 'Фильмы',
			'downloads.music' => 'Музыка',
			'downloads.tracksQueued' => ({required Object count}) => '${count} треков в очереди на загрузку',
			'downloads.noDownloads' => 'Загрузок пока нет',
			'downloads.noDownloadsDescription' => 'Загруженный контент появится здесь для просмотра офлайн',
			'downloads.downloadNow' => 'Загрузить',
			'downloads.deleteDownload' => 'Удалить загрузку',
			'downloads.retryDownload' => 'Повторить загрузку',
			'downloads.downloadQueued' => 'Загрузка поставлена в очередь',
			'downloads.downloadResumed' => 'Загрузка возобновлена',
			'downloads.serverErrorBitrate' => 'Ошибка сервера: файл может превышать установленное на сервере ограничение битрейта',
			'downloads.storageFull' => 'Загрузки остановлены, чтобы сохранить свободное место. Освободите место или выберите другое расположение для загрузок и повторите попытку.',
			'downloads.storageUnavailable' => 'Загрузки остановлены, так как не удалось проверить доступное место. Проверьте место загрузки и повторите попытку.',
			'downloads.episodesQueued' => ({required Object count}) => '${count} эпизодов поставлено в очередь загрузки',
			'downloads.downloadDeleted' => 'Загрузка удалена',
			'downloads.deleteConfirm' => ({required Object title}) => 'Удалить "${title}" с этого устройства?',
			'downloads.deleteCollectionDownloads' => 'Удалить загрузки',
			'downloads.deleteCollectionDownloadsConfirm' => ({required Object title}) => 'Удалить все загрузки в «${title}» с этого устройства?',
			'downloads.collectionDownloadsDeleted' => 'Загрузки удалены.',
			'downloads.cancelledDownloadTitle' => 'Загрузка отменена',
			'downloads.cancelledDownloadMessage' => 'Эта загрузка была отменена. Что вы хотите сделать?',
			'downloads.allEpisodesAlreadyDownloaded' => 'Все эпизоды уже загружены',
			'downloads.resumeDownload' => 'Возобновить загрузку',
			'downloads.cancelledDownload' => 'Загрузка отменена',
			'downloads.syncingFile' => ({required Object file, required Object status}) => '${file} (синхронизация ${status})',
			'downloads.downloadedFileClickToComplete' => ({required Object file}) => '${file} загружен — нажмите, чтобы завершить',
			'downloads.partialDownloadClickToComplete' => 'Частично загружено — нажмите, чтобы завершить',
			'downloads.deleting' => 'Удаление...',
			'downloads.deletingWithProgress' => ({required Object title, required Object current, required Object total}) => 'Удаление ${title}... (${current} из ${total})',
			'downloads.queuedTooltip' => 'В очереди',
			'downloads.queuedFilesTooltip' => ({required Object files}) => 'В очереди: ${files}',
			'downloads.downloadingTooltip' => 'Загрузка...',
			'downloads.downloadingFilesTooltip' => ({required Object files}) => 'Загрузка ${files}',
			'downloads.noDownloadsTree' => 'Нет загрузок',
			'downloads.pauseAll' => 'Приостановить все',
			'downloads.resumeAll' => 'Возобновить все',
			'downloads.retryAll' => 'Повторить все',
			'downloads.retryFailed' => 'Повторить неудачную загрузку',
			'downloads.deleteAll' => 'Удалить все',
			'downloads.selectVersion' => 'Выбрать версию',
			'downloads.allEpisodes' => 'Все эпизоды',
			'downloads.unwatchedOnly' => 'Только непросмотренные',
			'downloads.nextNUnwatched' => ({required Object count}) => 'Следующие ${count} непросмотренных',
			'downloads.customAmount' => 'Указать количество...',
			'downloads.includeSpecials' => 'Включить спецвыпуски',
			'downloads.howManyEpisodes' => 'Сколько эпизодов?',
			'downloads.invalidEpisodeCount' => 'Введите допустимое количество эпизодов.',
			'downloads.keepSynced' => 'Синхронизировать',
			'downloads.downloadOnce' => 'Скачать один раз',
			'downloads.keepNUnwatched' => ({required Object count}) => 'Хранить ${count} непросмотренных',
			'downloads.editSyncRule' => 'Редактировать правило синхронизации',
			'downloads.removeSyncRule' => 'Удалить правило синхронизации',
			'downloads.removeSyncRuleConfirm' => ({required Object title}) => 'Прекратить синхронизацию «${title}»? Скачанные эпизоды будут сохранены.',
			'downloads.removeListSyncRuleConfirm' => ({required Object title}) => 'Прекратить синхронизацию "${title}"?',
			'downloads.deleteSyncRuleDownloads' => 'Также удалить связанные загрузки',
			'downloads.deleteSyncRuleDownloadsDescription' => 'Загрузки, используемые другим правилом синхронизации или профилем, будут сохранены.',
			'downloads.syncRuleCreated' => ({required Object count}) => 'Правило синхронизации создано — хранится ${count} непросмотренных эпизодов',
			'downloads.syncRuleUpdated' => 'Правило синхронизации обновлено',
			'downloads.syncRuleRemoved' => 'Правило синхронизации удалено',
			'downloads.syncRuleAndDownloadsRemoved' => 'Правило синхронизации и связанные загрузки удалены',
			'downloads.syncRuleCleanupBusy' => 'Правила синхронизации сейчас обновляются. Попробуйте снова чуть позже.',
			'downloads.syncRuleCleanupUnavailable' => 'Не удалось надёжно определить связанные загрузки. Переподключите сервер и повторите попытку либо удалите правило без удаления загрузок.',
			'downloads.syncedNewEpisodes' => ({required Object count, required Object title}) => 'Синхронизировано ${count} новых эпизодов для ${title}',
			'downloads.activeSyncRules' => 'Правила синхронизации',
			'downloads.noSyncRules' => 'Нет правил синхронизации',
			'downloads.manageSyncRule' => 'Управление синхронизацией',
			'downloads.editEpisodeCount' => 'Количество эпизодов',
			'downloads.editSyncFilter' => 'Фильтр синхронизации',
			'downloads.syncAllItems' => 'Синхронизация всех элементов',
			'downloads.syncUnwatchedItems' => 'Синхронизация непросмотренных элементов',
			'downloads.syncRuleServerContext' => ({required Object server, required Object status}) => 'Сервер: ${server} • ${status}',
			'downloads.syncRuleAvailable' => 'Доступен',
			'downloads.syncRuleOffline' => 'Офлайн',
			'downloads.syncRuleSignInRequired' => 'Требуется вход',
			'downloads.syncRuleAccessDenied' => 'Доступ запрещён',
			'downloads.syncRuleNotAvailableForProfile' => 'Недоступно для текущего профиля',
			'downloads.syncRuleUnknownServer' => 'Неизвестный сервер',
			'downloads.syncRuleListCreated' => 'Правило синхронизации создано',
			'downloads.backgroundWarning.bannerBlocked' => 'Загрузки остановятся, когда вы выйдете из приложения',
			'downloads.backgroundWarning.bannerDegraded' => 'Фоновые загрузки могут быть ограничены',
			'downloads.backgroundWarning.bannerAction' => 'Подробнее',
			'downloads.backgroundWarning.sheetTitle' => 'Фоновые загрузки заблокированы',
			'downloads.backgroundWarning.sheetTitleDegraded' => 'Фоновые загрузки могут быть ограничены',
			'downloads.backgroundWarning.sheetIntro' => 'Android не позволяет Luroka стабильно выполнять загрузки в фоновом режиме.',
			'downloads.backgroundWarning.sheetIntroDegraded' => 'Ваше устройство ограничивает время, когда Luroka может выполнять загрузки в фоновом режиме.',
			'downloads.backgroundWarning.reasonBackgroundRestricted' => 'Фоновая работа Luroka ограничена. В настройках расхода заряда батареи или фоновой работы выберите «Без ограничений».',
			'downloads.backgroundWarning.reasonStandbyRestricted' => 'Android перевёл Luroka в режим ожидания с ограничениями. Для расхода заряда батареи выберите «Без ограничений».',
			'downloads.backgroundWarning.reasonDownloadChannelBlocked' => 'Уведомления о загрузках отключены, поэтому ход загрузок и элементы управления могут быть недоступны.',
			'downloads.backgroundWarning.reasonNotificationsDisabled' => 'Уведомления отключены. В Android 13 и более новых версиях они необходимы для длительных фоновых загрузок.',
			'downloads.backgroundWarning.reasonDataSaver' => 'Экономия трафика включена, поэтому фоновые загрузки через мобильную сеть заблокированы. Загрузки по Wi-Fi должны работать.',
			'downloads.backgroundWarning.reasonOemUnknown' => 'Загрузки неоднократно останавливались, пока Luroka работал в фоне. Проверьте настройки расхода заряда батареи или фоновой работы для Luroka.',
			'downloads.backgroundWarning.openSettings' => 'Открыть настройки',
			'downloads.backgroundWarning.stillNotWorking' => 'Помощь для вашего устройства',
			'downloads.backgroundWarning.stillNotWorkingDescription' => 'Посмотрите инструкции для своего устройства. Если проблема не исчезнет, отправьте лог через Настройки › Просмотр логов.',
			'downloads.backgroundWarning.dialogTitle' => 'Загрузки могут не завершиться',
			'downloads.backgroundWarning.dialogDownloadAnyway' => 'Всё равно скачать',
			'downloads.backgroundWarning.dialogFixFirst' => 'Сначала исправить',
			'downloads.backgroundWarning.statusTile' => 'Фоновые загрузки',
			'downloads.backgroundWarning.statusOk' => 'Работа в фоне разрешена',
			'downloads.backgroundWarning.statusBlocked' => 'Заблокировано настройками системы',
			'downloads.backgroundWarning.statusDegraded' => 'Ограничено настройками системы',
			'downloads.backgroundWarning.statusUnknown' => 'Ещё не проверено',
			'downloads.backgroundWarning.settingsUnavailable' => 'Не удалось открыть системные настройки на этом устройстве',
			'downloads.backgroundWarning.linkUnavailable' => 'Не удалось открыть dontkillmyapp.com на этом устройстве',
			'downloads.options' => 'Параметры загрузок',
			'downloads.groupings.library' => 'Библиотека',
			'downloads.groupings.collections' => 'Коллекции',
			'downloads.unknownLibrary' => 'Неизвестная библиотека',
			'downloads.unknownShow' => 'Неизвестный сериал',
			'downloads.unknownSeason' => 'Неизвестный сезон',
			'downloads.unknownAlbum' => 'Неизвестный альбом',
			'downloads.completedOfTotal' => ({required Object completed, required Object total}) => 'Завершено: ${completed}/${total}',
			'downloads.errorFileNotFound' => 'Файл не найден (404)',
			'downloads.errorDownloadNotAllowed' => 'Сервер не разрешает загрузку (403)',
			'downloads.errorDownloadFailed' => 'Не удалось выполнить загрузку',
			'downloads.errorDownloadFailedWithReason' => ({required Object reason}) => 'Не удалось выполнить загрузку: ${reason}',
			'downloads.errorHttpStatus' => ({required Object status}) => 'Не удалось выполнить загрузку (HTTP ${status})',
			'downloads.errorPostProcessing' => ({required Object reason}) => 'Не удалось выполнить постобработку: ${reason}',
			'downloads.reasonFileNotSaved' => 'не удалось сохранить файл на этом устройстве',
			'downloads.reasonCannotResume' => 'не удалось возобновить частичную загрузку',
			'downloads.reasonDeviceStorageFull' => 'на этом устройстве закончилось место',
			'downloads.notificationDownloading' => 'Загрузка...',
			'downloads.notificationComplete' => 'Загрузка завершена',
			'downloads.notificationPaused' => 'Загрузка приостановлена',
			'shaders.title' => 'Шейдеры',
			'shaders.noShaderDescription' => 'Без улучшения видео',
			'shaders.nvscalerDescription' => 'Масштабирование NVIDIA для более чёткого видео',
			'shaders.artcnnVariantNeutral' => 'Нейтральный',
			'shaders.artcnnVariantDenoise' => 'Шумоподавление',
			'shaders.artcnnVariantDenoiseSharpen' => 'Шумоподавление + резкость',
			'shaders.qualityFast' => 'Быстрый',
			'shaders.qualityHQ' => 'Высокое качество',
			'shaders.mode' => 'Режим',
			'shaders.importShader' => 'Импортировать шейдер',
			'shaders.customShaderDescription' => 'Пользовательский GLSL шейдер',
			'shaders.shaderImported' => 'Шейдер импортирован',
			'shaders.shaderImportFailed' => 'Не удалось импортировать шейдер',
			'shaders.deleteShader' => 'Удалить шейдер',
			'shaders.deleteShaderConfirm' => ({required Object name}) => 'Удалить "${name}"?',
			'companionRemote.title' => 'Пульт управления',
			'companionRemote.connectedTo' => ({required Object name}) => 'Подключено к ${name}',
			'companionRemote.unknownDevice' => 'Неизвестное устройство',
			'companionRemote.session.startingServer' => 'Запуск удалённого сервера...',
			'companionRemote.session.hostAddress' => 'Адрес хоста',
			'companionRemote.session.connected' => 'Подключено',
			'companionRemote.session.serverRunning' => 'Удалённый сервер активен',
			'companionRemote.session.serverStopped' => 'Удалённый сервер остановлен',
			'companionRemote.session.serverRunningDescription' => 'Мобильные устройства в вашей сети могут подключаться к этому приложению',
			'companionRemote.session.serverStoppedDescription' => 'Запустите сервер, чтобы разрешить подключение мобильных устройств',
			'companionRemote.session.usePhoneToControl' => 'Используйте мобильное устройство для управления этим приложением',
			'companionRemote.session.startServer' => 'Запустить сервер',
			'companionRemote.session.stopServer' => 'Остановить сервер',
			'companionRemote.session.minimize' => 'Свернуть',
			'companionRemote.session.manualAddressHint' => 'Адрес для подключения вручную:',
			'companionRemote.pairing.discoveryDescription' => 'Устройства Luroka с тем же аккаунтом Plex появятся здесь',
			'companionRemote.pairing.hostAddressHint' => '192.168.1.100:48632',
			'companionRemote.pairing.connecting' => 'Подключение...',
			'companionRemote.pairing.searchingForDevices' => 'Поиск устройств...',
			'companionRemote.pairing.noDevicesFound' => 'Устройства в вашей сети не найдены',
			'companionRemote.pairing.noDevicesHint' => 'Откройте Luroka на компьютере и подключите оба устройства к одной сети Wi-Fi',
			'companionRemote.pairing.availableDevices' => 'Доступные устройства',
			'companionRemote.pairing.manualConnection' => 'Ручное подключение',
			'companionRemote.pairing.cryptoInitFailed' => 'Не удалось установить защищённое соединение. Сначала войдите в Plex.',
			'companionRemote.pairing.validationHostRequired' => 'Введите адрес хоста',
			'companionRemote.pairing.validationHostFormat' => 'Формат должен быть IP:порт (например, 192.168.1.100:48632)',
			'companionRemote.pairing.connectionTimedOut' => 'Время подключения истекло. Используйте одну сеть на обоих устройствах.',
			'companionRemote.pairing.sessionNotFound' => 'Устройство не найдено. Убедитесь, что Luroka запущен на хосте.',
			'companionRemote.pairing.authFailed' => 'Аутентификация не удалась. На обоих устройствах нужен один аккаунт Plex.',
			'companionRemote.pairing.failedToConnect' => ({required Object error}) => 'Не удалось подключиться: ${error}',
			'companionRemote.remote.disconnectConfirm' => 'Отключиться от удалённой сессии?',
			'companionRemote.remote.reconnecting' => 'Переподключение...',
			'companionRemote.remote.attemptOf' => ({required Object current}) => 'Попытка ${current} из 5',
			'companionRemote.remote.retryNow' => 'Повторить сейчас',
			'companionRemote.remote.tabRemote' => 'Пульт',
			'companionRemote.remote.tabPlay' => 'Воспроизведение',
			'companionRemote.remote.tabMore' => 'Ещё',
			'companionRemote.remote.menu' => 'Меню',
			'companionRemote.remote.tabNavigation' => 'Навигация',
			'companionRemote.remote.tabDiscover' => 'Обзор',
			'companionRemote.remote.tabLibraries' => 'Библиотеки',
			'companionRemote.remote.tabSearch' => 'Поиск',
			'companionRemote.remote.tabDownloads' => 'Загрузки',
			'companionRemote.remote.tabSettings' => 'Настройки',
			'companionRemote.remote.previous' => 'Предыдущий',
			'companionRemote.remote.playPause' => 'Воспроизведение/Пауза',
			'companionRemote.remote.next' => 'Следующий',
			'companionRemote.remote.seekBack' => 'Назад',
			'companionRemote.remote.stop' => 'Стоп',
			'companionRemote.remote.seekForward' => 'Вперёд',
			'companionRemote.remote.volume' => 'Громкость',
			'companionRemote.remote.volumeDown' => 'Тише',
			'companionRemote.remote.volumeUp' => 'Громче',
			'companionRemote.remote.fullscreen' => 'Полноэкранный',
			'companionRemote.remote.subtitles' => 'Субтитры',
			'companionRemote.remote.audio' => 'Аудио',
			'companionRemote.remote.searchHint' => 'Поиск на десктопе...',
			'companionRemote.errors.noNetworkInterface' => 'Сетевой интерфейс не найден',
			'companionRemote.errors.authenticationFailed' => 'Ошибка аутентификации',
			'companionRemote.errors.serverStartFailed' => ({required Object error}) => 'Не удалось запустить удалённый сервер: ${error}',
			'companionRemote.errors.commandFailed' => ({required Object error}) => 'Не удалось отправить удалённую команду: ${error}',
			'companionRemote.errors.joinTimedOut' => 'Время подключения к сеансу истекло',
			'companionRemote.errors.failedToConnectAnyAddress' => 'Не удалось подключиться ни к одному адресу',
			'companionRemote.errors.connectionLostAfterAttempts' => ({required Object attempts}) => 'Соединение потеряно после ${attempts} попыток',
			'companionRemote.errors.connectionLost' => 'Соединение потеряно',
			'companionRemote.closedBeforeAuth' => 'Соединение было закрыто до аутентификации',
			'videoSettings.playbackSpeed' => 'Скорость воспроизведения',
			'videoSettings.normalSpeed' => 'Обычная',
			'videoSettings.sleepTimerActive' => ({required Object duration}) => 'Активен (${duration})',
			'videoSettings.zoom' => 'Масштаб',
			'videoSettings.sleepTimer' => 'Таймер сна',
			'videoSettings.audioSync' => 'Синхронизация аудио',
			'videoSettings.subtitleSync' => 'Синхронизация субтитров',
			'videoSettings.hdr' => 'HDR',
			'videoSettings.hdrUnsupported' => 'HDR здесь недоступен: этот композитор рабочего стола или видеовыход не поддерживает его передачу.',
			'videoSettings.hdrToneMapping' => 'Тональное отображение HDR',
			'videoSettings.hdrToneMappingCompositor' => 'Композитор',
			'videoSettings.hdrToneMappingCompositorDescription' => 'Передавать метаданные HDR источника без изменений, чтобы тональное отображение выполнял композитор рабочего стола.',
			'videoSettings.hdrToneMappingPlayer' => 'Проигрыватель',
			'videoSettings.hdrToneMappingPlayerDescription' => 'Выполнять тональное отображение в проигрывателе с учётом пиковой яркости дисплея, а затем передавать результат композитору.',
			'videoSettings.hdrToneMappingFailed' => 'Не удалось изменить тональное отображение HDR — предыдущий режим по-прежнему активен.',
			'videoSettings.audioOutput' => 'Аудиовыход',
			'videoSettings.performanceOverlay' => 'Оверлей производительности',
			'videoSettings.audioOutputDolbyAtmos' => 'Dolby Atmos',
			'videoSettings.audioOutputDolbyAudio' => 'Dolby Audio',
			'videoSettings.audioOutputSurround' => 'Объёмный звук',
			'videoSettings.audioOutputSpatial' => 'Пространственное аудио',
			'videoSettings.audioOutputStereo' => 'Стерео',
			'videoSettings.audioNormalization' => 'Нормализация громкости',
			'videoSettings.audioNormalizationDisablesPassthrough' => 'Декодирует аудио в PCM; сквозной вывод отключён, пока эта опция включена',
			'performanceOverlay.color' => 'Цвет',
			'performanceOverlay.performance' => 'Производительность',
			'performanceOverlay.buffer' => 'Буфер',
			'performanceOverlay.app' => 'Приложение',
			'performanceOverlay.decoder' => 'Декодер',
			'performanceOverlay.rawDecoder' => 'Raw-декодер',
			'performanceOverlay.tunneling' => 'Туннелирование',
			'performanceOverlay.passthrough' => 'Сквозной вывод',
			'performanceOverlay.aspect' => 'Соотношение',
			'performanceOverlay.rotation' => 'Поворот',
			'performanceOverlay.dvSource' => 'Источник DV',
			'performanceOverlay.dvPath' => 'Путь DV',
			'performanceOverlay.dvRouteDecoder' => 'Декодер Dolby Vision',
			'performanceOverlay.dvRouteDecoderP81' => 'Декодер Dolby Vision (P7→8.1)',
			'performanceOverlay.dvRouteBaseLayer' => 'Базовый слой',
			'performanceOverlay.dvRouteBaseLayerHdr10' => 'Базовый слой HDR10',
			'performanceOverlay.dvRouteBaseLayerHlg' => 'Базовый слой ГВУ',
			'performanceOverlay.dvRouteBaseLayerSdr' => 'Базовый слой SDR',
			'performanceOverlay.dvRouteReshaped' => 'Изменение формы RPU (gpu-next)',
			'performanceOverlay.p7Conversion' => 'Конв. P7',
			'performanceOverlay.sampleRate' => 'Частота дискр.',
			'performanceOverlay.pixelFormat' => 'Формат пикселей',
			'performanceOverlay.hwFormat' => 'Формат HW',
			'performanceOverlay.matrix' => 'Матрица',
			'performanceOverlay.primaries' => 'Основные цвета',
			'performanceOverlay.transfer' => 'Передача',
			'performanceOverlay.renderFps' => 'FPS рендера',
			'performanceOverlay.displayFps' => 'FPS дисплея',
			'performanceOverlay.avSync' => 'A/V синхр.',
			'performanceOverlay.dropped' => 'Пропущено',
			'performanceOverlay.dvRpus' => 'DV RPU',
			'performanceOverlay.dvRpuAverage' => 'Сред. DV RPU',
			'performanceOverlay.dvSampleAverage' => 'Сред. сэмпл DV',
			'performanceOverlay.maxLuma' => 'Макс. яркость',
			'performanceOverlay.minLuma' => 'Мин. яркость',
			'performanceOverlay.maxCll' => 'MaxCLL',
			'performanceOverlay.maxFall' => 'MaxFALL',
			'performanceOverlay.cacheUsed' => 'Кэш использован',
			'performanceOverlay.cacheLimit' => 'Лимит кэша',
			'performanceOverlay.speed' => 'Скорость',
			'performanceOverlay.player' => 'Плеер',
			'performanceOverlay.memory' => 'Память',
			'performanceOverlay.uiFps' => 'UI FPS',
			'performanceOverlay.fps' => 'FPS',
			'performanceOverlay.decoderAndroidHw' => 'Android, аппаратный',
			'performanceOverlay.decoderNvidiaHw' => 'NVIDIA, аппаратный',
			'performanceOverlay.decoderQualcommHw' => 'Qualcomm, аппаратный',
			'performanceOverlay.decoderMediatekHw' => 'MediaTek, аппаратный',
			'performanceOverlay.decoderExynosHw' => 'Exynos, аппаратный',
			'performanceOverlay.decoderSoftware' => 'Программный',
			'performanceOverlay.decoderHardware' => 'Аппаратный',
			'performanceOverlay.tunnelingActive' => 'Активно',
			'performanceOverlay.dvRpuFailed' => ({required Object converted, required Object failures}) => '${converted} (ошибок: ${failures})',
			'externalPlayer.title' => 'Внешний плеер',
			'externalPlayer.useExternalPlayer' => 'Использовать внешний плеер',
			'externalPlayer.useExternalPlayerDescription' => 'Открывать видео в другом приложении',
			'externalPlayer.selectPlayer' => 'Выбрать плеер',
			'externalPlayer.customPlayers' => 'Свои плееры',
			'externalPlayer.systemDefault' => 'Системный по умолчанию',
			'externalPlayer.addCustomPlayer' => 'Добавить свой плеер',
			'externalPlayer.playerName' => 'Название плеера',
			'externalPlayer.playerNameHint' => 'Мой плеер',
			'externalPlayer.playerCommand' => 'Команда',
			'externalPlayer.playerPackage' => 'Имя пакета',
			'externalPlayer.playerUrlScheme' => 'URL-схема',
			'externalPlayer.off' => 'Выкл.',
			'externalPlayer.launchFailed' => 'Не удалось открыть внешний плеер',
			'externalPlayer.appNotInstalled' => ({required Object name}) => '${name} не установлен',
			'externalPlayer.playInExternalPlayer' => 'Воспроизвести во внешнем плеере',
			'metadataEdit.editMetadata' => 'Редактировать...',
			'metadataEdit.screenTitle' => 'Редактировать метаданные',
			'metadataEdit.basicInfo' => 'Основная информация',
			'metadataEdit.artwork' => 'Обложка',
			'metadataEdit.advancedSettings' => 'Дополнительные настройки',
			'metadataEdit.title' => 'Название',
			'metadataEdit.sortTitle' => 'Название для сортировки',
			'metadataEdit.originalTitle' => 'Оригинальное название',
			'metadataEdit.releaseDate' => 'Дата выпуска',
			'metadataEdit.contentRating' => 'Возрастной рейтинг',
			'metadataEdit.studio' => 'Студия',
			'metadataEdit.tagline' => 'Слоган',
			'metadataEdit.summary' => 'Описание',
			'metadataEdit.poster' => 'Постер',
			'metadataEdit.background' => 'Фон',
			'metadataEdit.logo' => 'Логотип',
			'metadataEdit.squareArt' => 'Квадратное изображение',
			'metadataEdit.selectPoster' => 'Выбрать постер',
			'metadataEdit.selectBackground' => 'Выбрать фон',
			'metadataEdit.selectLogo' => 'Выбрать логотип',
			'metadataEdit.selectSquareArt' => 'Выбрать квадратное изображение',
			'metadataEdit.fromUrl' => 'По URL',
			'metadataEdit.uploadFile' => 'Загрузить файл',
			'metadataEdit.enterImageUrl' => 'Введите URL изображения',
			'metadataEdit.imageUrl' => 'URL изображения',
			'metadataEdit.metadataUpdated' => 'Метаданные обновлены',
			'metadataEdit.metadataUpdateFailed' => 'Не удалось обновить метаданные',
			'metadataEdit.artworkUpdated' => 'Обложка обновлена',
			'metadataEdit.artworkUpdateFailed' => 'Не удалось обновить обложку',
			'metadataEdit.noArtworkAvailable' => 'Обложки недоступны',
			'metadataEdit.artworkOption' => ({required Object index}) => 'Вариант обложки ${index}',
			'metadataEdit.selectedArtworkOption' => ({required Object index}) => 'Вариант обложки ${index}, выбран',
			'metadataEdit.notSet' => 'Не задано',
			'metadataEdit.libraryDefault' => 'По умолчанию библиотеки',
			'metadataEdit.accountDefault' => 'По умолчанию аккаунта',
			'metadataEdit.seriesDefault' => 'По умолчанию сериала',
			'metadataEdit.episodeSorting' => 'Сортировка эпизодов',
			'metadataEdit.oldestFirst' => 'Сначала старые',
			'metadataEdit.newestFirst' => 'Сначала новые',
			'metadataEdit.keep' => 'Сохранять',
			'metadataEdit.allEpisodes' => 'Все эпизоды',
			'metadataEdit.latestEpisodes' => ({required Object count}) => '${count} последних эпизодов',
			'metadataEdit.latestEpisode' => 'Последний эпизод',
			'metadataEdit.episodesAddedPastDays' => ({required Object count}) => 'Эпизоды, добавленные за последние ${count} дней',
			'metadataEdit.deleteAfterPlaying' => 'Удалять эпизоды после просмотра',
			'metadataEdit.never' => 'Никогда',
			'metadataEdit.afterADay' => 'Через день',
			'metadataEdit.afterAWeek' => 'Через неделю',
			'metadataEdit.afterAMonth' => 'Через месяц',
			'metadataEdit.onNextRefresh' => 'При следующем обновлении',
			'metadataEdit.seasons' => 'Сезоны',
			'metadataEdit.show' => 'Показать',
			'metadataEdit.hide' => 'Скрыть',
			'metadataEdit.episodeOrdering' => 'Порядок эпизодов',
			'metadataEdit.tmdbAiring' => 'The Movie Database (по дате выхода)',
			'metadataEdit.tvdbAiring' => 'TheTVDB (по дате выхода)',
			'metadataEdit.tvdbAbsolute' => 'TheTVDB (абсолютный порядок)',
			'metadataEdit.metadataLanguage' => 'Язык метаданных',
			'metadataEdit.useOriginalTitle' => 'Использовать оригинальное название',
			'metadataEdit.preferredAudioLanguage' => 'Предпочитаемый язык аудио',
			'metadataEdit.preferredSubtitleLanguage' => 'Предпочитаемый язык субтитров',
			'metadataEdit.subtitleMode' => 'Автовыбор субтитров',
			'metadataEdit.manuallySelected' => 'Выбор вручную',
			'metadataEdit.shownWithForeignAudio' => 'Показывать при иноязычном аудио',
			'metadataEdit.alwaysEnabled' => 'Всегда включены',
			'metadataEdit.tags' => 'Теги',
			'metadataEdit.addTag' => 'Добавить тег',
			'metadataEdit.genre' => 'Жанр',
			'metadataEdit.director' => 'Режиссёр',
			'metadataEdit.writer' => 'Сценарист',
			'metadataEdit.producer' => 'Продюсер',
			'metadataEdit.country' => 'Страна',
			'metadataEdit.collection' => 'Коллекция',
			'metadataEdit.label' => 'Метка',
			'metadataEdit.quickTag' => 'Быстрый тег...',
			'matchScreen.match' => 'Сопоставить...',
			'matchScreen.fixMatch' => 'Исправить сопоставление...',
			'matchScreen.unmatch' => 'Сбросить сопоставление',
			'matchScreen.unmatchConfirm' => 'Очистить это совпадение? Plex будет считать его несопоставленным до повторного сопоставления.',
			'matchScreen.unmatchSuccess' => 'Сопоставление сброшено',
			'matchScreen.unmatchFailed' => 'Не удалось сбросить сопоставление',
			'matchScreen.matchApplied' => 'Сопоставление применено',
			'matchScreen.matchFailed' => 'Не удалось применить сопоставление',
			'matchScreen.titleHint' => 'Название',
			'matchScreen.yearHint' => 'Год',
			'matchScreen.search' => 'Поиск',
			'matchScreen.noMatchesFound' => 'Совпадений не найдено',
			'serverTasks.title' => 'Задачи сервера',
			'serverTasks.failedToLoad' => 'Не удалось загрузить задачи',
			'serverTasks.noTasks' => 'Нет выполняемых задач',
			'trakt.title' => 'Trakt',
			'trakt.connected' => 'Подключено',
			'trakt.connectedAs' => ({required Object username}) => 'Подключено как @${username}',
			'trakt.disconnectConfirm' => 'Отключить аккаунт Trakt?',
			'trakt.disconnectConfirmBody' => 'Luroka перестанет отправлять события в Trakt. Можно подключить снова в любое время.',
			'trakt.scrobble' => 'Скробблинг в реальном времени',
			'trakt.scrobbleDescription' => 'Отправлять события воспроизведения, паузы и остановки в Trakt во время просмотра.',
			'trakt.watchedSync' => 'Синхронизация статуса просмотра',
			'trakt.watchedSyncDescription' => 'Когда вы отмечаете элементы как просмотренные в Luroka, они отмечаются и в Trakt.',
			'seerr.title' => 'Seerr',
			'seerr.connectTitle' => 'Подключить Seerr',
			'seerr.serverUrl' => 'URL сервера',
			'seerr.serverUrlHelper' => 'Адрес вашего экземпляра Seerr',
			'seerr.checkServer' => 'Продолжить',
			'seerr.signInWithJellyfin' => 'Войти через Jellyfin',
			'seerr.signInWithEmby' => 'Войти через Emby',
			'seerr.signInWithLocal' => 'Использовать локальную учётную запись',
			'seerr.email' => 'Эл. почта',
			'seerr.noSignInMethods' => 'Этот экземпляр Seerr не предлагает способа входа, поддерживаемого Luroka.',
			'seerr.instance' => 'Экземпляр',
			'seerr.disconnectConfirm' => 'Отключить Seerr?',
			'seerr.disconnectConfirmBody' => 'Luroka забудет этот экземпляр Seerr. Подключитесь снова в любое время.',
			'seerr.request' => 'Запросить',
			'seerr.request4k' => 'Запросить в 4K',
			'seerr.seasons' => 'Сезоны',
			'seerr.allSeasons' => 'Все сезоны',
			'seerr.advancedOptions' => 'Дополнительно',
			'seerr.destinationServer' => 'Целевой сервер',
			'seerr.qualityProfile' => 'Профиль качества',
			'seerr.rootFolder' => 'Корневая папка',
			'seerr.languageProfile' => 'Языковой профиль',
			'seerr.tags' => 'Теги',
			'seerr.noTags' => 'Нет тегов',
			'seerr.defaultOption' => ({required Object name}) => '${name} (по умолчанию)',
			'seerr.animeNote' => 'Этот сериал — аниме.',
			'seerr.requestSubmitted' => 'Запрос отправлен',
			'seerr.requestFailed' => ({required Object error}) => 'Ошибка запроса: ${error}',
			'seerr.requestsLoadFailed' => 'Не удалось загрузить параметры запроса',
			'seerr.nothingToRequest' => 'Всё уже доступно или запрошено.',
			'seerr.statusAvailable' => 'Доступно',
			'seerr.statusPartiallyAvailable' => 'Частично доступно',
			'seerr.statusRequested' => 'Запрошено',
			'seerr.statusProcessing' => 'Обработка',
			'seerr.statusBlocklisted' => 'В списке блокировки',
			'seerr.couldNotReach' => ({required Object url, required Object error}) => 'Не удалось связаться с ${url}: ${error}',
			'seerr.noInstanceAtUrl' => ({required Object url, required Object status}) => 'По адресу ${url} нет экземпляра Seerr (HTTP ${status})',
			'seerr.behindAuthProxy' => 'Вместо Seerr ответил аутентифицирующий обратный прокси (SSO или HTTP-аутентификация). Luroka не может войти через него: разрешите пути /api/v1 Seerr обходить прокси для этого приложения или используйте адрес, ведущий к Seerr напрямую.',
			'seerr.invalidUrl' => 'Введите адрес сервера, например https://seerr.example.com',
			'seerr.quickConnectUnsupported' => 'Этот экземпляр Seerr не поддерживает Quick Connect. Нужна версия Seerr 3.4 или новее.',
			'seerr.notInitialized' => 'Первоначальная настройка этого экземпляра Seerr не завершена',
			'seerr.noPlexTokenForReauth' => 'Нет токена Plex для повторного входа',
			'seerr.noStoredCredentials' => 'Нет сохранённых учётных данных для повторного входа',
			'seerr.signInRejected' => 'Вход был отклонён',
			'seerr.noSessionCookie' => 'Seerr не выдал cookie-файл сеанса',
			'seerr.freshCookieRejected' => 'Seerr отклонил новый cookie-файл сеанса',
			'seerr.noUserInformation' => 'Seerr не вернул сведения о пользователе',
			'seerr.sessionRejectedAfterReauth' => 'Сеанс был отклонён после повторного входа',
			'seerr.permissionDenied' => 'Seerr отклонил это действие: у вашей учётной записи больше нет необходимого разрешения',
			'seerr.permissionRevoked' => 'У вас больше нет разрешения запрашивать это',
			'services.title' => 'Сервисы',
			'services.hubSubtitle' => 'Синхронизируйте прогресс просмотра и запрашивайте новые фильмы и сериалы.',
			'services.discoverySection' => 'Поиск и запросы',
			'services.trackingSection' => 'Отслеживание и списки',
			'services.seerrDescription' => 'Находите фильмы и сериалы и отправляйте запросы через свой сервер Seerr.',
			'services.tmdbDescription' => 'Ищите фильмы и сериалы, постеры, рейтинги и сведения о них.',
			'services.traktDescription' => 'Отслеживайте фильмы и сериалы, синхронизируйте статус просмотра и управляйте списком.',
			'services.malDescription' => 'Синхронизируйте список аниме и прогресс просмотра.',
			'services.anilistDescription' => 'Следите за аниме и синхронизируйте прогресс просмотра с AniList.',
			'services.simklDescription' => 'Отслеживайте фильмы, сериалы и аниме с помощью Simkl.',
			'services.mdblistDescription' => 'Подключите списки MDBList и рейтинги фильмов.',
			'services.connectionIntro' => ({required Object service}) => 'Подключите ${service} к текущему профилю Luroka. Здесь можно в любое время управлять подключением и его настройками.',
			'services.connectService' => ({required Object service}) => 'Подключить ${service}',
			'services.seerrConnectDescription' => 'Подключите сервер Seerr, чтобы находить и запрашивать фильмы и сериалы в Luroka.',
			'services.seerrServerStep' => 'Введите адрес, по которому вы открываете Seerr. Мы проверим, какие способы входа поддерживает сервер.',
			'services.seerrSignInStep' => 'Выберите способ входа, поддерживаемый сервером.',
			'services.integrations' => 'Интеграции',
			'services.notConnected' => 'Не подключено',
			'services.connectedAs' => ({required Object username}) => 'Подключено как @${username}',
			'services.scrobble' => 'Автоматически отслеживать прогресс',
			'services.scrobbleDescription' => 'Обновляет список, когда вы заканчиваете эпизод или фильм.',
			'services.disconnectConfirm' => ({required Object service}) => 'Отключить ${service}?',
			'services.disconnectConfirmBody' => ({required Object service}) => 'Luroka перестанет обновлять ${service}. Подключите снова в любое время.',
			'services.connectFailed' => ({required Object service}) => 'Не удалось подключиться к ${service}. Попробуйте ещё раз.',
			'services.names.mal' => 'MyAnimeList',
			'services.names.anilist' => 'AniList',
			'services.names.simkl' => 'Simkl',
			'services.names.seerr' => 'Seerr',
			'services.names.mdblist' => 'MDBList',
			'services.simklReconnect.title' => 'Переподключите Simkl',
			'services.simklReconnect.subtitle' => 'Simkl прекращает поддержку метода входа, который использует это соединение. При повторном подключении открывается simkl.com для подтверждения Luroka — Luroka никогда не видит ваш пароль. Ваша история просмотров сохраняется на Simkl.',
			'services.deviceCode.title' => ({required Object service}) => 'Активируйте Luroka в ${service}',
			'services.deviceCode.instructions' => 'Отсканируйте QR-код или перейдите по адресу ниже и введите этот код:',
			'services.deviceCode.openToActivate' => ({required Object service}) => 'Открыть ${service} для активации',
			_ => null,
		} ?? switch (path) {
			'services.deviceCode.copyCode' => 'Скопировать код активации',
			'services.deviceCode.waitingForAuthorization' => 'Ожидание авторизации…',
			'services.deviceCode.codeCopied' => 'Код скопирован',
			'services.oauthProxy.title' => ({required Object service}) => 'Войти в ${service}',
			'services.oauthProxy.body' => 'Отсканируйте этот QR-код или откройте URL на любом устройстве.',
			'services.oauthProxy.openToSignIn' => ({required Object service}) => 'Открыть ${service} для входа',
			'services.pendingAuth.copyUrl' => 'Скопировать URL для входа',
			'services.pendingAuth.urlCopied' => 'URL скопирован',
			'services.libraryFilter.title' => 'Фильтр библиотек',
			'services.libraryFilter.subtitleAllSyncing' => 'Синхронизация всех библиотек',
			'services.libraryFilter.subtitleNoneSyncing' => 'Ничего не синхронизируется',
			'services.libraryFilter.subtitleBlocked' => ({required Object count}) => '${count} заблокировано',
			'services.libraryFilter.subtitleAllowed' => ({required Object count}) => '${count} разрешено',
			'services.libraryFilter.mode' => 'Режим фильтра',
			'services.libraryFilter.modeBlacklist' => 'Чёрный список',
			'services.libraryFilter.modeWhitelist' => 'Белый список',
			'services.libraryFilter.modeHintBlacklist' => 'Синхронизировать все библиотеки, кроме отмеченных ниже.',
			'services.libraryFilter.modeHintWhitelist' => 'Синхронизировать только библиотеки, отмеченные ниже.',
			'services.libraryFilter.libraries' => 'Библиотеки',
			'services.libraryFilter.noLibraries' => 'Библиотеки недоступны',
			'addServer.addMediaBrowserTitle' => ({required Object product}) => 'Добавить сервер ${product}',
			'addServer.serverUrls' => 'URL-адреса сервера',
			'addServer.serverUrlsHelper' => 'Можно указать несколько URL через запятую.',
			'addServer.findServer' => 'Найти сервер',
			'addServer.searchingLocalMediaBrowserServers' => ({required Object product}) => 'Поиск локальных серверов ${product}...',
			'addServer.localMediaBrowserServers' => ({required Object product}) => 'Локальные серверы ${product}',
			'addServer.username' => 'Имя пользователя',
			'addServer.password' => 'Пароль',
			'addServer.signIn' => 'Войти',
			'addServer.change' => 'Изменить',
			'addServer.required' => 'Обязательно',
			'addServer.couldNotReachServer' => ({required Object error}) => 'Не удалось связаться с сервером: ${error}',
			'addServer.signInFailed' => ({required Object error}) => 'Не удалось войти: ${error}',
			'addServer.quickConnectFailed' => ({required Object error}) => 'Quick Connect не удался: ${error}',
			'addServer.addPlexTitle' => 'Войти через Plex',
			'addServer.pinExpired' => 'Срок действия PIN истёк до входа. Попробуйте снова.',
			'addServer.failedToRegisterAccount' => ({required Object error}) => 'Не удалось зарегистрировать учётную запись: ${error}',
			'addServer.enterMediaBrowserUrlError' => ({required Object product}) => 'Введите URL вашего сервера ${product}',
			'addServer.addConnectionTitle' => 'Добавить подключение',
			'addServer.addConnectionTitleScoped' => ({required Object name}) => 'Добавить в ${name}',
			'addServer.signInWithPlexCard' => 'Войти через Plex',
			'addServer.signInWithPlexCardSubtitle' => 'Авторизуйте это устройство. Общие серверы будут добавлены.',
			'addServer.signInWithPlexCardSubtitleScoped' => 'Авторизуйте аккаунт Plex. Пользователи Главная станут профилями.',
			'addServer.connectToMediaBrowserCard' => ({required Object product}) => 'Подключиться к ${product}',
			'addServer.connectToMediaBrowserCardSubtitle' => 'Введите URL сервера, имя пользователя и пароль.',
			'addServer.connectToMediaBrowserCardSubtitleScoped' => ({required Object product, required Object name}) => 'Войдите на свой сервер ${product}. Будет привязано к ${name}.',
			'addServer.borrowFromAnotherProfile' => 'Использовать подключение другого профиля',
			'addServer.borrowFromAnotherProfileSubtitle' => 'Повторно используйте подключение другого профиля. Для защищённых профилей потребуется PIN.',
			'addServer.invalidCredentials' => 'Неверное имя пользователя или пароль',
			'addServer.authResponseNotJson' => 'Ответ аутентификации не является допустимым JSON',
			'addServer.authResponseIncomplete' => 'Ответ сервера при входе оказался неполным',
			'addServer.quickConnectRejected' => 'Quick Connect был отклонён сервером',
			'addServer.quickConnectNotJson' => 'Ответ Quick Connect не является допустимым JSON',
			'addServer.quickConnectMissingFields' => 'В ответе Quick Connect отсутствует код или секрет',
			'addServer.quickConnectPollRejected' => 'Опрос Quick Connect был отклонён сервером',
			'addServer.serverTimedOut' => 'Сервер не ответил вовремя',
			'addServer.responseNotJson' => 'Ответ сервера не является допустимым JSON',
			'addServer.responseMissingIdentity' => ({required Object product}) => 'В ответе отсутствует идентификатор или имя сервера. Это точно сервер ${product}?',
			'addServer.probeFailed' => ({required Object error}) => 'Не удалось связаться с сервером: ${error}',
			'addServer.enterAtLeastOneUrl' => ({required Object product}) => 'Введите хотя бы один URL сервера ${product}',
			'addServer.noReachableServer' => ({required Object product}) => 'Не найдено ни одного доступного сервера ${product}',
			'addServer.urlsPointToDifferentServers' => ({required Object product}) => 'Эти URL указывают на разные серверы ${product}',
			'addServer.urlDoesNotMatchServer' => ({required Object product}) => 'Этот URL не соответствует серверу ${product}',
			'addServer.redirectUnsupported' => 'Сервер перенаправил на неподдерживаемый URL',
			'addServer.redirectDifferentHost' => ({required Object product}) => 'Сервер перенаправил на другой хост. Введите конечный URL ${product} напрямую.',
			'addServer.redirectInsecure' => 'Сервер перенаправил с HTTPS на небезопасный URL',
			'addServer.redirectUnsupportedEnterFinal' => ({required Object product}) => 'Сервер перенаправил на неподдерживаемый URL. Введите конечный URL ${product} напрямую.',
			_ => null,
		};
	}
}
