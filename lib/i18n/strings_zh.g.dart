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
class TranslationsZh extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsZh({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.zh,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <zh>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsZh _root = this; // ignore: unused_field

	@override
	TranslationsZh $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsZh(meta: meta ?? this.$meta);

	// Translations
	@override late final Translations$mobileLibrary$zh mobileLibrary = Translations$mobileLibrary$zh.internal(_root);
	@override late final Translations$profileStartup$zh profileStartup = Translations$profileStartup$zh.internal(_root);
	@override late final Translations$subtitleUpload$zh subtitleUpload = Translations$subtitleUpload$zh.internal(_root);
	@override late final Translations$personSpotlight$zh personSpotlight = Translations$personSpotlight$zh.internal(_root);
	@override late final Translations$detailExtras$zh detailExtras = Translations$detailExtras$zh.internal(_root);
	@override late final Translations$mobileUi$zh mobileUi = Translations$mobileUi$zh.internal(_root);
	@override late final Translations$family$zh family = Translations$family$zh.internal(_root);
	@override late final Translations$posterDetails$zh posterDetails = Translations$posterDetails$zh.internal(_root);
	@override late final Translations$libraryPolish$zh libraryPolish = Translations$libraryPolish$zh.internal(_root);
	@override late final Translations$showSchedule$zh showSchedule = Translations$showSchedule$zh.internal(_root);
	@override late final Translations$awardsCatalog$zh awardsCatalog = Translations$awardsCatalog$zh.internal(_root);
	@override late final Translations$searchDiscovery$zh searchDiscovery = Translations$searchDiscovery$zh.internal(_root);
	@override late final Translations$lurokaPlayerDesign$zh lurokaPlayerDesign = Translations$lurokaPlayerDesign$zh.internal(_root);
	@override late final Translations$lurokaWorkspace$zh lurokaWorkspace = Translations$lurokaWorkspace$zh.internal(_root);
	@override late final Translations$mobileFixes$zh mobileFixes = Translations$mobileFixes$zh.internal(_root);
	@override late final Translations$downloadsRedesign$zh downloadsRedesign = Translations$downloadsRedesign$zh.internal(_root);
	@override late final Translations$kidsShelf$zh kidsShelf = Translations$kidsShelf$zh.internal(_root);
	@override late final Translations$kidsHome$zh kidsHome = Translations$kidsHome$zh.internal(_root);
	@override late final Translations$tvSettingsV2$zh tvSettingsV2 = Translations$tvSettingsV2$zh.internal(_root);
	@override late final Translations$settingsRedesign$zh settingsRedesign = Translations$settingsRedesign$zh.internal(_root);
	@override late final Translations$onboarding$zh onboarding = Translations$onboarding$zh.internal(_root);
	@override late final Translations$household$zh household = Translations$household$zh.internal(_root);
	@override late final Translations$detailComposition$zh detailComposition = Translations$detailComposition$zh.internal(_root);
	@override late final Translations$kids$zh kids = Translations$kids$zh.internal(_root);
	@override late final Translations$lurokaDiscovery$zh lurokaDiscovery = Translations$lurokaDiscovery$zh.internal(_root);
	@override late final Translations$app$zh app = Translations$app$zh.internal(_root);
	@override late final Translations$appIcon$zh appIcon = Translations$appIcon$zh.internal(_root);
	@override late final Translations$auth$zh auth = Translations$auth$zh.internal(_root);
	@override late final Translations$common$zh common = Translations$common$zh.internal(_root);
	@override late final Translations$tvHints$zh tvHints = Translations$tvHints$zh.internal(_root);
	@override late final Translations$screens$zh screens = Translations$screens$zh.internal(_root);
	@override late final Translations$mediaExtras$zh mediaExtras = Translations$mediaExtras$zh.internal(_root);
	@override late final Translations$update$zh update = Translations$update$zh.internal(_root);
	@override late final Translations$supporter$zh supporter = Translations$supporter$zh.internal(_root);
	@override late final Translations$settings$zh settings = Translations$settings$zh.internal(_root);
	@override late final Translations$themeEditor$zh themeEditor = Translations$themeEditor$zh.internal(_root);
	@override late final Translations$seriesBrowser$zh seriesBrowser = Translations$seriesBrowser$zh.internal(_root);
	@override late final Translations$titlePage$zh titlePage = Translations$titlePage$zh.internal(_root);
	@override late final Translations$tvMenus$zh tvMenus = Translations$tvMenus$zh.internal(_root);
	@override late final Translations$lurokaPlayer$zh lurokaPlayer = Translations$lurokaPlayer$zh.internal(_root);
	@override late final Translations$lurokaSettings$zh lurokaSettings = Translations$lurokaSettings$zh.internal(_root);
	@override late final Translations$playerChrome$zh playerChrome = Translations$playerChrome$zh.internal(_root);
	@override late final Translations$tvLayout$zh tvLayout = Translations$tvLayout$zh.internal(_root);
	@override late final Translations$studios$zh studios = Translations$studios$zh.internal(_root);
	@override late final Translations$dashboard$zh dashboard = Translations$dashboard$zh.internal(_root);
	@override late final Translations$lurokaCatalog$zh lurokaCatalog = Translations$lurokaCatalog$zh.internal(_root);
	@override late final Translations$referenceDetails$zh referenceDetails = Translations$referenceDetails$zh.internal(_root);
	@override late final Translations$lurokaThemes$zh lurokaThemes = Translations$lurokaThemes$zh.internal(_root);
	@override late final Translations$customPerformance$zh customPerformance = Translations$customPerformance$zh.internal(_root);
	@override late final Translations$homeLayout$zh homeLayout = Translations$homeLayout$zh.internal(_root);
	@override late final Translations$screenTime$zh screenTime = Translations$screenTime$zh.internal(_root);
	@override late final Translations$activityStats$zh activityStats = Translations$activityStats$zh.internal(_root);
	@override late final Translations$search$zh search = Translations$search$zh.internal(_root);
	@override late final Translations$hotkeys$zh hotkeys = Translations$hotkeys$zh.internal(_root);
	@override late final Translations$fileInfo$zh fileInfo = Translations$fileInfo$zh.internal(_root);
	@override late final Translations$mediaMenu$zh mediaMenu = Translations$mediaMenu$zh.internal(_root);
	@override late final Translations$rateSheet$zh rateSheet = Translations$rateSheet$zh.internal(_root);
	@override late final Translations$accessibility$zh accessibility = Translations$accessibility$zh.internal(_root);
	@override late final Translations$tooltips$zh tooltips = Translations$tooltips$zh.internal(_root);
	@override late final Translations$audioTracks$zh audioTracks = Translations$audioTracks$zh.internal(_root);
	@override late final Translations$videoControls$zh videoControls = Translations$videoControls$zh.internal(_root);
	@override late final Translations$messages$zh messages = Translations$messages$zh.internal(_root);
	@override late final Translations$sourceLibraries$zh sourceLibraries = Translations$sourceLibraries$zh.internal(_root);
	@override late final Translations$subtitlingStyling$zh subtitlingStyling = Translations$subtitlingStyling$zh.internal(_root);
	@override late final Translations$mpvConfig$zh mpvConfig = Translations$mpvConfig$zh.internal(_root);
	@override late final Translations$dialog$zh dialog = Translations$dialog$zh.internal(_root);
	@override late final Translations$profiles$zh profiles = Translations$profiles$zh.internal(_root);
	@override late final Translations$connections$zh connections = Translations$connections$zh.internal(_root);
	@override late final Translations$serversAccounts$zh serversAccounts = Translations$serversAccounts$zh.internal(_root);
	@override late final Translations$accountPreferences$zh accountPreferences = Translations$accountPreferences$zh.internal(_root);
	@override late final Translations$discover$zh discover = Translations$discover$zh.internal(_root);
	@override late final Translations$errors$zh errors = Translations$errors$zh.internal(_root);
	@override late final Translations$libraries$zh libraries = Translations$libraries$zh.internal(_root);
	@override late final Translations$about$zh about = Translations$about$zh.internal(_root);
	@override late final Translations$serverSelection$zh serverSelection = Translations$serverSelection$zh.internal(_root);
	@override late final Translations$hubDetail$zh hubDetail = Translations$hubDetail$zh.internal(_root);
	@override late final Translations$logs$zh logs = Translations$logs$zh.internal(_root);
	@override late final Translations$startup$zh startup = Translations$startup$zh.internal(_root);
	@override late final Translations$licenses$zh licenses = Translations$licenses$zh.internal(_root);
	@override late final Translations$navigation$zh navigation = Translations$navigation$zh.internal(_root);
	@override late final Translations$explore$zh explore = Translations$explore$zh.internal(_root);
	@override late final Translations$liveTv$zh liveTv = Translations$liveTv$zh.internal(_root);
	@override late final Translations$collections$zh collections = Translations$collections$zh.internal(_root);
	@override late final Translations$playlists$zh playlists = Translations$playlists$zh.internal(_root);
	@override late final Translations$music$zh music = Translations$music$zh.internal(_root);
	@override late final Translations$watchTogether$zh watchTogether = Translations$watchTogether$zh.internal(_root);
	@override late final Translations$downloads$zh downloads = Translations$downloads$zh.internal(_root);
	@override late final Translations$shaders$zh shaders = Translations$shaders$zh.internal(_root);
	@override late final Translations$companionRemote$zh companionRemote = Translations$companionRemote$zh.internal(_root);
	@override late final Translations$videoSettings$zh videoSettings = Translations$videoSettings$zh.internal(_root);
	@override late final Translations$performanceOverlay$zh performanceOverlay = Translations$performanceOverlay$zh.internal(_root);
	@override late final Translations$externalPlayer$zh externalPlayer = Translations$externalPlayer$zh.internal(_root);
	@override late final Translations$metadataEdit$zh metadataEdit = Translations$metadataEdit$zh.internal(_root);
	@override late final Translations$matchScreen$zh matchScreen = Translations$matchScreen$zh.internal(_root);
	@override late final Translations$serverTasks$zh serverTasks = Translations$serverTasks$zh.internal(_root);
	@override late final Translations$trakt$zh trakt = Translations$trakt$zh.internal(_root);
	@override late final Translations$seerr$zh seerr = Translations$seerr$zh.internal(_root);
	@override late final Translations$services$zh services = Translations$services$zh.internal(_root);
	@override late final Translations$offlineRecovery$zh offlineRecovery = Translations$offlineRecovery$zh.internal(_root);
	@override late final Translations$releaseUpdates$zh releaseUpdates = Translations$releaseUpdates$zh.internal(_root);
	@override late final Translations$profileIntegrations$zh profileIntegrations = Translations$profileIntegrations$zh.internal(_root);
	@override late final Translations$profileSetupGuide$zh profileSetupGuide = Translations$profileSetupGuide$zh.internal(_root);
	@override late final Translations$animeFavorites$zh animeFavorites = Translations$animeFavorites$zh.internal(_root);
	@override late final Translations$addServer$zh addServer = Translations$addServer$zh.internal(_root);
}

// Path: mobileLibrary
class Translations$mobileLibrary$zh extends Translations$mobileLibrary$en {
	Translations$mobileLibrary$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get pickerSubtitle => '选择要探索的集合';
	@override String get searchLibraries => '搜索图书馆';
	@override String get noLibraries => '没有匹配的库';
	@override String get ascending => '升序';
	@override String get descending => '降序';
	@override String get sort => '排序';
	@override String unwatchedCount({required Object count}) => '${count} 未观看剧集';
	@override String get latestEpisode => '最新一集';
}

// Path: profileStartup
class Translations$profileStartup$zh extends Translations$profileStartup$en {
	Translations$profileStartup$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get autoLogin => '打开上次使用的配置文件';
	@override String get autoLoginHint => '当不需要 PIN 时自动打开最后一个配置文件。';
	@override String get allowKidsExit => '允许无需家长 PIN 即可退出儿童个人资料';
	@override String get allowKidsExitHint => '孩子无需输入家长 PIN 即可切换到其他个人资料。个人资料 PIN 仍然有效。';
	@override String get chooseKidsConnection => '选择不同的帐户或服务器';
	@override String get chooseKidsConnectionHint => '保存后，连接一个单独的帐户或从另一个配置文件中选择连接。';
}

// Path: subtitleUpload
class Translations$subtitleUpload$zh extends Translations$subtitleUpload$en {
	Translations$subtitleUpload$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get chooseFile => '上传字幕文件';
	@override String get hint => '选择上面的语言，然后将 SRT、ASS、SSA 或 VTT 文件上传到此服务器。';
	@override String get success => '字幕已上传至服务器。当服务器刷新该项目时它将出现。';
	@override String get failed => '无法上传字幕。检查文件和服务器权限。';
}

// Path: personSpotlight
class Translations$personSpotlight$zh extends Translations$personSpotlight$en {
	Translations$personSpotlight$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get inYourLibraries => '在你的图书馆里';
	@override String libraryTitles({required Object n}) => '在您的图书馆中 · ${n} 标题';
	@override String get readBiography => '阅读传记';
	@override String get newestFirst => '最新的优先';
	@override String get oldestFirst => '最老的在前';
	@override String get titleAscending => '标题 A-Z';
	@override String get sortTitles => '排序电影作品';
	@override String unwatchedEpisodes({required Object n}) => '${n} 未观看剧集';
	@override String copies({required Object n}) => '${n} 库副本';
	@override String versions({required Object n}) => '${n} 文件版本';
	@override String get retryTitles => '无法加载所有标题。重试';
}

// Path: detailExtras
class Translations$detailExtras$zh extends Translations$detailExtras$en {
	Translations$detailExtras$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get onlineVideos => '预告片和附加内容';
	@override String get reviews => '评论';
	@override String get readReview => '阅读完整评论';
	@override String directedBy({required Object name}) => '更多 ${name} 导演';
	@override String get previewUnavailable => '该预览无法播放。您可以在其原始应用程序中打开它。';
	@override String get openExternally => '打开原视频';
}

// Path: mobileUi
class Translations$mobileUi$zh extends Translations$mobileUi$en {
	Translations$mobileUi$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get readMore => '了解更多';
	@override String get readLess => '显示较少';
	@override String get playbackTools => '播放选项';
	@override String get streamingQuality => '流媒体质量';
	@override String get fileVersions => '文件版本';
	@override String get qualityAndVersions => '流媒体质量和文件版本';
	@override String get hidePlaybackTools => '隐藏播放工具';
	@override String remaining({required Object time}) => '${time} 左';
	@override String endsAt({required Object time}) => '结束于 ${time}';
	@override String get collection => '你的收藏';
	@override String get nowPlaying => '正在播放';
	@override String get popularLibrary => '在您的图书馆中很受欢迎';
	@override String get weeklyLibrary => '本周您图书馆的热门内容';
}

// Path: family
class Translations$family$zh extends Translations$family$en {
	Translations$family$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => '个人资料和家庭';
	@override String get yourPeople => '你的人';
	@override String get manageHint => '管理此设备上的人员、儿童的安全和观看活动。';
	@override String get people => '人';
	@override String peopleCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n,
		one: '${n}​人',
		other: '${n}人',
	);
	@override String kidsCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n,
		one: '${n}​子',
		other: '${n} 儿童',
	);
	@override String get you => '你';
	@override String get adult => '成人';
	@override String get child => '儿童';
	@override String get adultTeen => '成人或青少年';
	@override String get adultHint => '他们自己的配置文件、可选配置文件 PIN 和他们自己的服务器连接。';
	@override String get childHint => '年龄限制、安全的媒体库和适合儿童的界面。家长 PIN 可保护这些设置。';
	@override String upToAge({required Object age}) => '至年龄 ${age}';
	@override String get allAges => '所有年龄段';
	@override String get switchProfile => '切换配置文件';
	@override String get switchHint => '选择谁在观看。管理一个人并不改变个人资料。';
	@override String get addPerson => '添加人员';
	@override String get addChild => '添加孩子';
	@override String get addHint => '在此设备上创建成人、青少年或儿童的个人资料。';
	@override String get emptyPeople => '为与您一起观看的每个人腾出空间。';
	@override String get emptyKids => '还没有孩子的个人资料。添加一个孩子来选择年龄限制和安全图书馆。';
	@override String get safety => '儿童与安全';
	@override String get safetyHint => '家长 PIN、儿童个人资料和年龄限制。';
	@override String get protection => '保护';
	@override String get kidsProfiles => '儿童档案';
	@override String get backupHistory => '备份和历史记录';
	@override String get parentPinOn => '家长 PIN 已启用';
	@override String get profilePin => '个人资料 PIN';
	@override String get confirmParentPin => '确认家长 PIN';
	@override String get parentPinOff => '尚未设置家长 PIN';
	@override String get missingPin => '设置家长 PIN 以保护这些设置。';
	@override String get hideScope => '在此 Luroka 个人资料中隐藏儿童的活动，使其无法继续观看。这不会更改共享服务器观看历史记录。';
	@override String get localScope => '儿童个人资料和限制存储在此设备上。使用同一服务器帐户的配置文件仍共享该帐户的观看进度。';
	@override String get clearHistoryConfirm => '允许孩子观看过的影片再次出现在“继续观看”中吗？儿童资料、限制、观看时间统计数据和服务器观看历史记录将被保留。';
	@override String get editRestrictions => '编辑儿童限制';
	@override String get activity => '观看活动';
	@override String namedActivity({required Object name}) => '${name} 的观看活动';
	@override String get thisProfile => '此简介';
	@override String get activityScope => 'Luroka 在此设备上记录的活动配置文件的播放时间。这些是统计数据，而不是查看限制或完整的服务器历史记录。';
	@override String get activityUnavailable => '此个人资料尚无法查看活动。';
	@override String get finished => '完成';
}

// Path: posterDetails
class Translations$posterDetails$zh extends Translations$posterDetails$en {
	Translations$posterDetails$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get showThemeMusic => '播放主题音乐';
	@override String get showThemeMusicDescription => '在服务器上可用时，在其详细信息页面打开时播放电影或节目的主题。';
	@override String get catalogEpisodeInfo => '在目录卡上显示剧集数和运行时间';
	@override String get catalogEpisodeInfoDescription => '在“发现”海报上显示剧集数和平均时长。';
	@override String get title => '海报详情';
	@override String get description => '在 Studio、搜索、发现和图书馆的海报下方显示标题、年份和 IMDb 评级。缺失的 IMDb 评级保持隐藏状态。对于纯艺术作品海报请关闭。';
}

// Path: libraryPolish
class Translations$libraryPolish$zh extends Translations$libraryPolish$en {
	Translations$libraryPolish$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get compactTvNavigation => '紧凑的图书馆导航';
	@override String get compactTvNavigationDescription => '在滑出式菜单中显示库部分和浏览选项，为海报留出更多空间。';
	@override String get openLibraryMenu => '打开库菜单';
	@override String get posterDetails => '海报详情';
	@override String get showPosterDetails => '显示海报详细信息·姓名、年份和 IMDb';
	@override String get hidePosterDetails => '隐藏海报详细信息';
	@override String get overview => '概述';
	@override String get refreshing => '刷新图书馆…';
	@override String get serverCollections => '该服务器上的所有集合';
	@override String get serverPlaylists => '该服务器上的所有视频播放列表';
	@override String get libraryCollections => '该图书馆的馆藏';
	@override String get searchCollections => '搜索收藏';
	@override String get searchPlaylists => '搜索播放列表';
	@override String get searchHint => '按名称搜索';
	@override String get titleAscending => '标题 A-Z';
	@override String get titleDescending => '标题 Z–A';
	@override String get clearFilters => '清除过滤器';
	@override String get playlistEmptyTitle => '您的电影之夜，按照您的顺序';
	@override String get playlistEmptyHint => '打开标题的“更多”菜单，然后选择“添加到播放列表”以创建您的第一个播放列表。';
	@override String get noMatches => '没有匹配的名字';
	@override String get indexing => '搜索完整目录...';
}

// Path: showSchedule
class Translations$showSchedule$zh extends Translations$showSchedule$en {
	Translations$showSchedule$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get today => '今天';
	@override String get tomorrow => '明天';
	@override String get latestUpcoming => '最新及即将推出的';
	@override String get latestEpisode => '最新一集';
	@override String get upcoming => '即将推出';
	@override String get inLibrary => '在你的图书馆里';
	@override String get notInLibrary => '不在你的图书馆里';
	@override String get notYetAired => '尚未播出';
	@override String episode({required Object number}) => '剧集 ${number}';
	@override String get caughtUp => '你们都被困住了';
	@override String get finished => '您已完成本系列';
	@override String nextAirs({required Object date}) => '下一集播出 ${date}';
	@override String get watchBeginning => '从头开始观看';
	@override String get replay => '重播';
	@override String get playNext => '播放下一个';
}

// Path: awardsCatalog
class Translations$awardsCatalog$zh extends Translations$awardsCatalog$en {
	Translations$awardsCatalog$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get awards => '奖项';
	@override String get customize => '定制';
	@override String get chooseShelves => '定制发现';
	@override String get shelvesDescription => '在“发现”中选择您想要的行。奖项行显示您图书馆的获奖者。您的选择将保存到此配置文件中。';
	@override String get restoreShelves => '恢复默认设置';
	@override String get charts => 'IMDb 图表';
	@override String get generalShelves => '流行和趋势';
	@override String get saveShelvesFailed => '无法保存您的“发现”选择。请再试一次。';
	@override String get comedyActress => '喜剧女主角';
	@override String get leadDramaActor => '男主角·戏剧';
	@override String get leadDramaActress => '女主角·戏剧';
	@override String get comedySupportingActor => '男配角·喜剧';
	@override String get comedySupportingActress => '女配角·喜剧';
	@override String get leadingPerformance => '银熊奖·最佳主演';
	@override String get globesComedySeries => '最佳音乐剧或喜剧电视剧';
	@override String get limitedSupportingActor => '男配角·限定剧或电影';
	@override String get limitedSupportingActress => '女配角·限定剧或电影';
	@override String get berlinDocumentary => '柏林电影节纪录片奖';
	@override String get title => '奖项及节日';
	@override String get chooseCategory => '选择奖项类别';
	@override String get winners => '获奖者';
	@override String get nominees => '提名者';
	@override String get releaseDecade => '发布十年';
	@override String get allYears => '所有年份';
	@override String get loading => '正在加载奖项名称...';
	@override String get matching => '在您的图书馆中查找这些标题...';
	@override String get unavailable => '目前无法获得奖项数据。再试一次。';
	@override String get empty => '您的可见图书馆中没有与此类别匹配的标题。';
	@override String get coverage => '会员资格来自维基数据，可能不完整。演员和导演类别显示他们获奖的电影或节目。年份指的是头衔发布，而不是仪式。';
	@override String get picture => '最佳影片';
	@override String get film => '最佳影片';
	@override String get international => '最佳国际故事片';
	@override String get internationalFilm => '最佳国际电影';
	@override String get nonEnglishFilm => '最佳非英语电影';
	@override String get animated => '最佳动画长片';
	@override String get animatedFilm => '最佳动画电影';
	@override String get documentary => '最佳纪录片';
	@override String get director => '最佳导演';
	@override String get actor => '最佳男主角';
	@override String get actress => '最佳女主角';
	@override String get supportingActor => '最佳男配角';
	@override String get supportingActress => '最佳女配角';
	@override String get originalScreenplay => '最佳原创剧本';
	@override String get adaptedScreenplay => '最佳改编剧本';
	@override String get screenplay => '最佳剧本';
	@override String get cinematography => '最佳摄影';
	@override String get editing => '最佳剪辑';
	@override String get score => '最佳原创配乐';
	@override String get song => '最佳原创歌曲';
	@override String get sound => '最佳音效';
	@override String get effects => '最佳视觉效果';
	@override String get productionDesign => '最佳制作设计';
	@override String get costume => '最佳服装设计';
	@override String get makeup => '最佳化妆及发型设计';
	@override String get dramaSeries => '杰出剧集';
	@override String get comedySeries => '杰出喜剧系列';
	@override String get limitedSeries => '杰出限量系列';
	@override String get animatedProgram => '优秀动画节目';
	@override String get comedyActor => '主演·喜剧';
	@override String get limitedActor => '主演·限定剧或电影';
	@override String get limitedActress => '女主角·限定剧或电影';
	@override String get limitedDirecting => '导演·限定剧或电影';
	@override String get britishFilm => '最佳英国电影';
	@override String get goldenBear => '金熊';
	@override String get grandJury => '评审团大奖';
	@override String get jury => '评审团奖';
	@override String get teddy => '泰迪奖';
	@override String get goldenLion => '金狮奖';
	@override String get volpiActor => '沃尔皮杯·最佳男主角';
	@override String get volpiActress => '沃尔皮杯·最佳女主角';
	@override String get queerLion => '酷儿狮子';
	@override String get dramaFilm => '最佳影片·剧情片';
	@override String get comedyFilm => '最佳音乐或喜剧电影';
	@override String get dramaActor => '剧情类最佳男主角';
	@override String get dramaActress => '剧情类最佳女主角';
	@override String get usDramatic => '美国剧情片评审团大奖';
	@override String get documentaryJury => '纪录片评审团大奖';
	@override String get worldCinema => '世界电影评审团大奖';
	@override String get dramaticAudience => '美国戏剧观众奖';
	@override String get usDirecting => '美国导演奖';
	@override String get peopleChoice => '人民选择奖';
	@override String get canadianFilm => '最佳加拿大电影';
	@override String get firstFeature => '最佳处女作';
	@override String get cassavetes => '约翰·卡索维茨奖';
	@override String get scienceFiction => '最佳科幻片';
	@override String get fantasy => '最佳奇幻片';
	@override String get horror => '最佳恐怖片';
	@override String get action => '最佳动作或冒险片';
	@override String get thriller => '最佳惊悚片';
}

// Path: searchDiscovery
class Translations$searchDiscovery$zh extends Translations$searchDiscovery$en {
	Translations$searchDiscovery$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get suggestions => '值得一看的东西';
	@override String get collections => '奖项及收藏';
	@override String get collectionsHint => '来自您图书馆的获奖者和精选图表';
	@override String get all => '所有发现';
	@override String get awards => '奖项及排行榜';
}

// Path: lurokaPlayerDesign
class Translations$lurokaPlayerDesign$zh extends Translations$lurokaPlayerDesign$en {
	Translations$lurokaPlayerDesign$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get seeking => '寻求预览';
	@override String get keepWatching => '继续关注';
	@override String get upNext => '接下来';
	@override String playingIn({required Object seconds}) => '在 ${seconds} 中播放';
}

// Path: lurokaWorkspace
class Translations$lurokaWorkspace$zh extends Translations$lurokaWorkspace$en {
	Translations$lurokaWorkspace$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get everyday => '日常';
	@override String get homeDiscovery => '家居与探索';
	@override String get librariesAccounts => '图书馆和账户';
	@override String get profilesFamily => '个人资料和家庭';
	@override String get thisDevice => '这个装置';
	@override String get thisProfile => '此简介';
	@override String get searchSettings => '搜索设置';
	@override String get savedAutomatically => '更改会自动保存。日常和高级仅更改显示的控件。';
	@override String get audioSubtitles => '音频和字幕';
	@override String get audioDescription => '声音输出、音量和字幕外观。连接时使用帐户首选项为每个服务器帐户设置首选语言。';
	@override String get pictureSound => '图像和声音';
	@override String get pictureDescription => '该设备的帧速率匹配、分辨率、HDR 和 Dolby Vision 调整。';
	@override String get engineDescription => '播放器引擎、解码、自定义配置和高级播放规则。';
	@override String get networkStreaming => '网络与流媒体';
	@override String get networkDescription => '流媒体质量、直接播放编解码器首选项和带宽选择。';
	@override String get homeOptions => '主页选项';
	@override String get refreshHome => '刷新主页并立即流行';
	@override String get customizeHome => '定制首页';
	@override String get spotlight => '主页聚焦';
	@override String get rotateSpotlight => '自动旋转特色标题';
	@override String get rotateDescription => '当 首页 空闲时旋转。交互暂停旋转；浏览书架、打开页面或离开应用程序会使其完全暂停。';
	@override String get rotationInterval => '精选标题之间的时间';
}

// Path: mobileFixes
class Translations$mobileFixes$zh extends Translations$mobileFixes$en {
	Translations$mobileFixes$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get connectionRecoveryHint => '服务器不可用？管理您的帐户或连接其他服务器。';
}

// Path: downloadsRedesign
class Translations$downloadsRedesign$zh extends Translations$downloadsRedesign$en {
	Translations$downloadsRedesign$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get shelfSize => '每个货架的物品';
	@override String get shelfSizeHint => '在“继续观看”和推荐架中显示 16、32 或 48 项。服务器可能会返回较少的可用标题。';
	@override String get subtitle => '您最喜欢的，已准备好踏上旅程。';
	@override String get transfers => '接送服务';
	@override String get ready => '离线就绪';
	@override String get active => '正在下载';
	@override String get waiting => '等待';
	@override String get downloaded => '已下载';
	@override String get speed => '下载速度';
	@override String get notificationProgress => '{progress} · {networkSpeed} · {timeRemaining} 剩余';
}

// Path: kidsShelf
class Translations$kidsShelf$zh extends Translations$kidsShelf$en {
	Translations$kidsShelf$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get movieShelf => '电影时间';
	@override String get showShelf => '寻找您的下一场演出';
	@override String get aurora => 'Aurora — 深青色和青柠色';
	@override String get marquee => '天棚 — 天鹅绒和金色';
	@override String get electric => '电动 — 靛蓝和冰';
	@override String get midnight => '午夜——钢与琥珀';
	@override String get yourShelf => '你的电影架';
	@override String get all => '一切';
	@override String get pickSomething => '你想看什么？';
}

// Path: kidsHome
class Translations$kidsHome$zh extends Translations$kidsHome$en {
	Translations$kidsHome$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get everything => '为你';
	@override String get keepWatching => '继续关注';
	@override String get emptyFilter => '这里还什么都没有。为你尝试一下，或者让你的成年人添加一些你喜欢的东西。';
}

// Path: tvSettingsV2
class Translations$tvSettingsV2$zh extends Translations$tvSettingsV2$en {
	Translations$tvSettingsV2$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get moreThemes => '更多主题和自定义颜色';
	@override String get moreThemesHint => '打开所有可用的预设和自定义主题选项。';
	@override String get previewLive => '实时预览';
	@override String get previewIllustration => '预览示例';
	@override String previewShelfCount({required Object count}) => '每个货架最多 ${count} 件物品';
	@override String get simple => '简单';
	@override String get homeNavigation => '主页与导航';
	@override String get libraryCards => '图书馆和卡片';
	@override String get accountsLibraries => '账户和图书馆';
	@override String get profilesFamily => '个人资料和家庭';
	@override String get aboutSupport => '关于与支持';
	@override String get playback => '回放';
	@override String get homeHint => '选择主页和导航中显示的内容。';
	@override String get libraryHint => '调整海报尺寸、标签和观看指示器。';
	@override String get advancedPlayback => '播放器引擎和流媒体';
	@override String get advancedPlaybackHint => '播放器、视频输出、流媒体和高级播放选项。';
	@override String get advancedTools => '诊断和备份';
	@override String get advancedToolsHint => '日志、故障排除、设置备份和重置。';
	@override String get themePreview => '主题预览';
	@override String get libraryPreview => '库预览';
	@override String get homePreview => '首页预览';
	@override String get subtitlePreview => '字幕预览';
	@override String get subtitleSample => '您的字幕将如下所示。';
	@override String get previewPlaceholder => '您的作品出现在这里';
	@override String get posterSize => '海报尺寸';
	@override String get serverRecommendations => '来自服务器的首页推荐';
	@override String get tvLayout => '使用电视布局';
	@override String get hardwareDecode => '使用硬件视频解码';
	@override String get serverNames => '在主行上显示服务器名称';
	@override String get settingsSaved => '更改会自动保存。';
	@override String get morePlayback => '高级播放';
	@override String get screenDisplay => '图像和声音';
	@override String get engine => '播放器引擎';
	@override String get network => '流媒体和网络';
	@override String get performance => '性能';
	@override String get simpleAudio => '语言和字幕外观';
}

// Path: settingsRedesign
class Translations$settingsRedesign$zh extends Translations$settingsRedesign$en {
	Translations$settingsRedesign$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get themeEffects => '主题和效果';
	@override String get libraryLayout => '图书馆布局';
	@override String get posterInformation => '海报信息';
	@override String get libraryBehavior => '图书馆行为';
	@override String get appearanceHint => '自定义 Luroka 的外观、布局和行为。';
	@override String get livePreview => '实时预览';
	@override String get previewHint => '查看您的图书馆在当前设置下的外观。';
	@override String get showLiveTv => '显示直播电视';
	@override String get showLiveTvHint => '当连接的服务器支持时，在导航中显示直播电视。这不会改变您的服务器。';
	@override String get aboutTagline => '你的媒体。你的空间。';
	@override String get aboutDescription => 'Luroka 将您的 Plex、Jellyfin 和 Emby 库整合到手机、电视和台式机的电影播放器​​中。';
	@override String get aboutFeatures => '浏览您的图书馆、恢复电影和节目、个性化个人资料、享受下载并一起观看。通过兼容的服务器即可观看直播电视。';
	@override String get services => '连接您的世界';
	@override String get updateSource => '更新源';
	@override String get updateSourceHint => '您的 Luroka 发布源的 HTTPS 地址。您的经销商可以在应用程序中对此进行预先配置。';
	@override String get updateNotConfigured => '此版本未配置自动更新。';
	@override String get downloadInstall => '下载并安装';
	@override String get installUpdate => '安装更新';
	@override String get downloading => '正在下载更新...';
	@override String get downloadFailed => '无法下载或验证更新。请再试一次。';
	@override String get installPermission => '允许 Luroka 在 Android 设置中安装更新，然后返回并选择安装更新。';
	@override String get updateReady => '下载已验证。准备安装。';
	@override String get releaseNotes => '发行说明';
	@override String get invalidFeed => '输入有效的 HTTPS 更新源地址。';
}

// Path: onboarding
class Translations$onboarding$zh extends Translations$onboarding$en {
	Translations$onboarding$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get connectStep => '01 · 连接';
	@override String get connectTitle => '欢迎来到Luroka';
	@override String get connectHint => '登录以将您的图书馆带到此处。';
	@override String get serverAddressHint => '输入您的服务器地址，或选择在您的网络上找到的服务器。';
	@override String get serverSignInHint => '使用您的服务器用户名和密码连接您的图书馆。';
	@override String get serverAddressTitle => '服务器地址';
	@override String get serverAccountTitle => '您的服务器帐户';
	@override String get plexHomeTitle => '选择您的 Plex 家庭用户';
	@override String get plexHomeHint => '选择要使用其库的 Plex 用户。接下来，您将设置您的 Luroka 配置文件。';
	@override String get chooseService => '选择您的服务';
	@override String get profileStep => '02 · 你的个人资料';
	@override String get profileTitle => '让自己像在家一样。';
	@override String get profileHint => '为您的 Luroka 个人资料选择一个名称和头像。您关联的帐户保持不变。';
	@override String get readyStep => '03 · 准备观看';
	@override String get readyTitle => '多一点你。';
	@override String get readyHint => '将您的服务集中在一起或为其他人腾出空间。您以后可以随时执行此操作。';
	@override String get addService => '连接另一个服务';
	@override String get editProfile => '编辑您的姓名和头像';
	@override String get connected => '已连接并准备就绪';
	@override String get backToProfile => '返回您的个人资料';
	@override String get showOtherPlexHome => '显示其他 Plex 首页 会员';
	@override String get showOtherPlexHomeHint => '默认关闭。您使用过的 Luroka 个人资料和 Plex Home 成员仍然可见。开启选择其他人。';
}

// Path: household
class Translations$household$zh extends Translations$household$en {
	Translations$household$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => '您的 Luroka 家庭';
	@override String get welcome => '让 Luroka 成为您的';
	@override String get welcomeHint => '您的第一个帐户已连接。在开始观看之前，个性化您的个人资料或添加其他人。';
	@override String get profiles => '型材和家居';
	@override String get manageHint => '添加人员、更改图片以及管理每个个人资料的连接。';
	@override String get addProfile => '添加 Luroka 配置文件';
	@override String get addHint => '每个人都可以连接自己的 Plex、Emby 或 Jellyfin 登录。仅向他们显示添加到其个人资料中的连接。';
	@override String get sharedHint => '重用另一个配置文件的连接会共享该服务器用户的观看状态和播放进度。选择单独的登录以获取独立的观看历史记录。';
	@override String get personalise => '个性化个人资料';
	@override String get changePicture => '更改个人资料图片';
	@override String get pictureHint => '选择 Luroka 头像或照片。这仅更改该设备上的图片；您的服务器帐户未受影响。';
	@override String get serverPicture => '使用服务器图片/缩写';
	@override String get choosePhoto => '选择一张照片';
	@override String get photoHint => 'JPEG、PNG 或其他受支持的图像，最大 10 MB。照片已调整大小并存储在此设备上。';
	@override String get pictureSaved => '个人资料图片已更新';
	@override String get pictureFailed => '无法更新个人资料图片。尝试使用最大 10 MB 的受支持图像。';
	@override String get saveFailed => '无法保存配置文件设置。请再试一次。';
	@override String get startWatching => '开始观看';
	@override String get manageProfiles => '管理或切换配置文件';
	@override String get addLater => '您可以稍后在“设置”→“个人资料和家庭”中添加更多人。';
	@override String get connectionRequired => '添加服务器连接以完成此配置文件的设置。';
	@override String get mountain => '山';
	@override String get orbit => '探险家';
	@override String get waves => '海洋';
	@override String get blossom => '开花';
	@override String get lightning => '闪电';
	@override String get moon => '月亮';
	@override String get avatarGallery => '选择头像';
	@override String get avatarIllustrationHint => '原创插图肖像、孩子和动物朋友';
	@override String get avatarPortraitSunrise => '日出肖像';
	@override String get avatarPortraitMeadow => '草地肖像';
	@override String get avatarPortraitBerry => '浆果肖像';
	@override String get avatarPortraitGolden => '金色肖像';
	@override String get avatarPortraitIndigo => '靛蓝肖像';
	@override String get avatarPortraitOcean => '海洋肖像';
	@override String get avatarKidArtist => '小艺术家';
	@override String get avatarKidSkater => '小滑冰者';
	@override String get avatarCat => '好奇的猫';
	@override String get avatarDog => '快乐的狗';
	@override String get avatarPanda => '熊猫';
	@override String get avatarOwl => '猫头鹰';
	@override String get avatarFox => '福克斯';
	@override String get avatarDinosaur => '恐龙';
	@override String get avatarRobot => '机器人';
}

// Path: detailComposition
class Translations$detailComposition$zh extends Translations$detailComposition$en {
	Translations$detailComposition$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get startOver => '重新开始';
	@override String get seriesCast => '系列演员表';
	@override String get streamingQuality => '流媒体质量...';
	@override String get trailer => '预告片';
	@override String get manageMedia => '管理媒体...';
	@override String get playbackOptions => '播放选项...';
	@override String get moreActions => '更多行动';
	@override String get watched => '看过';
	@override String get unwatched => '无人看管';
	@override String endsAt({required Object time}) => '结束于 ${time}';
	@override String get automatic => '自动';
	@override String get usePreferences => '使用您的播放首选项';
	@override String get mediaInformation => '媒体资讯';
	@override String get fullFileInformation => '完整的文件信息';
	@override String get castAndCrew => '演职人员';
}

// Path: kids
class Translations$kids$zh extends Translations$kids$en {
	Translations$kids$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get timeLimits => '屏幕时间限制';
	@override String get dailyWatchLimit => '每日观看时长';
	@override String get dailyWatchLimitHint => '每天限制该设备上的视频播放。';
	@override String get noTimeLimit => '无限制';
	@override String minutesLimit({required Object minutes}) => '${minutes} 分钟';
	@override String get bedtime => '就寝时间';
	@override String get bedtimeHint => '在此时段使用该用户资料需要家长 PIN 码。';
	@override String get bedtimeStart => '就寝时间开始';
	@override String get bedtimeEnd => '就寝时间结束';
	@override String get timeLimitReached => '今天的观看时间已结束';
	@override String get bedtimeReached => '睡觉时间到了';
	@override String get timeLimitParentHint => '请家长输入 PIN，以便继续观看。';
	@override String get parentUnlock => '家长解锁';
	@override String get backupProfile => '备份孩子的个人资料';
	@override String get backupExplain => '备份此配置文件的已保存名称、字符、限制、外观和本地查看排除。不包括家长 PIN、服务器登录、下载和服务器播放进度。';
	@override String get saveBackupFile => '保存备份文件';
	@override String get copyBackup => '复制备份文本';
	@override String backupSaved({required Object path}) => '儿童个人资料备份保存到 ${path}';
	@override String get backupCopied => '儿童个人资料备份已复制';
	@override String get backupFailed => '无法保存孩子的个人资料备份。请再试一次。';
	@override String get restoreProfile => '恢复孩子的个人资料';
	@override String get chooseBackupFile => '选择备份文件';
	@override String get pasteBackup => '粘贴备份文本';
	@override String get backupText => '儿童个人资料备份 JSON';
	@override String get pasteFromClipboard => '从剪贴板粘贴';
	@override String get restoreReview => '查看这些恢复的设置，然后保存以使用当前的服务器连接创建新的儿童配置文件。现有配置文件不会被覆盖。库选择和查看排除仅匹配相同的服务器/库 ID。';
	@override String get restoreInvalid => '这不是有效的受支持的儿童个人资料备份。选择 Luroka 儿童个人资料 JSON 备份。';
	@override String get deleteProfile => '删除孩子的个人资料';
	@override String deleteExplain({required Object name}) => '从 Luroka 中删除 ${name} 吗？他们的本地设置、下载和查看排除将被删除。您的服务器帐户和服务器端历史记录将保留。如果您想稍后恢复配置文件，请先创建备份。';
	@override String get profileDeleted => '儿童资料已删除';
	@override String get allowedLibraries => '允许的库';
	@override String get unavailableLibrary => '以前选择的库（当前不可用）';
	@override String get allLibraries => '允许所有连接的电影和电视库';
	@override String get librariesExplain => '关闭此选项以选择特定的库。年龄和动画规则仍然适用于所选库。使用选择时不会自动添加新库。';
	@override String get librariesUnavailable => '未加载任何电影或电视库。连接到服务器并打开库，然后返回此处进行选择。';
	@override String get noLibrariesSelected => '未选择图书馆：该孩子将看不到任何书名。';
	@override String get animationOnly => '仅动画';
	@override String get animationExplain => '仅显示服务器上标有动画类型的标题。这并不能取代年龄限制：动画也可以针对成年人。缺失的流派元数据被隐藏。';
	@override String get allowUnrated => '允许没有年龄分级的标题';
	@override String get unratedExplain => '默认关闭。启用后，如果库和动画规则允许，可能会出现缺失或未评级的分类。他们的适合性不能通过年龄来检验。超过年龄限制的已知评级和未识别的分类仍然隐藏。';
	@override String get whoIsWatching => '谁在看？';
	@override String get chooseAdventure => '充满大冒险的小世界。';
	@override String get chooseProfile => '选择您的空间。让它成为一个电影之夜。';
	@override String welcome({required Object name}) => '嗨，${name}！';
	@override String welcomeOlder({required Object name}) => '你的下一个精彩故事，${name}。';
	@override String get homeSubtitle => '大冒险。小发现。一切都是为了你。';
	@override String get homeSubtitleOlder => '寻找新的最爱。从上次停下的地方继续。';
	@override String get featured => '今天的大冒险';
	@override String get featuredOlder => '在聚光灯下';
	@override String get moreInfo => '更多信息';
	@override String get movies => '电影';
	@override String get shows => '演出';
	@override String get profiles => '型材';
	@override String get adultBadge => '大人';
	@override String get avatar => '选择你的角色';
	@override String get avatarExplorer => '太空探索者';
	@override String get avatarFox => '福克斯';
	@override String get avatarDinosaur => '恐龙';
	@override String get avatarRobot => '机器人';
	@override String get avatarChildArtist => '小艺术家';
	@override String get avatarChildSkater => '小滑冰者';
	@override String get avatarSunrisePerson => '日出肖像';
	@override String get avatarOceanPerson => '海洋肖像';
	@override String get avatarCat => '好奇的猫';
	@override String get avatarDog => '快乐的狗';
	@override String get avatarPanda => '熊猫';
	@override String get avatarOwl => '猫头鹰';
	@override String get avatarBear => '熊';
	@override String get continueAdventure => '继续冒险';
	@override String get freshStories => '新故事等待发现';
	@override String get yourMovies => '电影时的最爱';
	@override String get yourShows => '还有一集';
	@override String get emptyHint => '当您的服务器具有允许年龄分类的游戏时，新的冒险将会出现在此处。';
	@override String get title => 'Luroka 儿童版';
	@override String get addProfile => '添加孩子个人资料';
	@override String get parentalControls => '家长控制';
	@override String get parentPin => '家长 PIN';
	@override String get setParentPin => '设置家长 PIN';
	@override String get changeParentPin => '更改家长 PIN';
	@override String get pinExplain => '此 PIN 可保护这台设备上的成人个人资料和家长控制功能。';
	@override String get name => '孩子的名字';
	@override String get ageGroup => '允许的年龄分类';
	@override String get allAges => '所有年龄段 · G、TV-Y、TV-G、U';
	@override String get age7 => '最多 7 个·还有 PG、TV-PG、TV-Y7';
	@override String get age12 => '最多 12 个 · 还有 12 和 12A';
	@override String get age16 => '最多 16 个 · 还有 PG-13、TV-14、15 和 16';
	@override String get ratingExplain => '超过年龄限制的标题和无法识别的分类将被隐藏。没有评级的标题将被隐藏，除非您在下面允许它们。未分级的剧集可以继承已批准的系列分类。评级取决于服务器的元数据。';
	@override String get theme => '孩子们的样子';
	@override String get themeExplain => '当此配置文件处于活动状态时，使用彩色主题。';
	@override String get sharedLogin => '使用您现有的服务器登录。 Plex/Emby 进度和观看状态保持共享。限制和儿童个人资料存储在此设备上。';
	@override String get hideWatched => '从我的“继续观看”中隐藏孩子们的观看内容';
	@override String get hideExplain => '隐藏此设备上儿童个人资料播放的电影和整个系列。这不会将它们从您的库中删除或更改服务器历史记录。';
	@override String get clearHistory => '重置儿童的观看排除';
	@override String get historyReset => '儿童观看排除重置';
	@override String get blocked => '此标题在此儿童个人资料中不可用。';
	@override String get switchProfile => '切换配置文件';
	@override String get manageFromAdult => '切换到成人配置文件以管理设置。';
	@override String get noConnections => '在添加儿童个人资料之前，将服务器连接到您的成人个人资料。';
	@override String get created => '儿童档案已创建';
	@override String get updated => '孩子们的个人资料已更新';
	@override String get saveFailed => '无法保存家长控制。请再试一次。';
	@override String get kidsBadge => '儿童';
}

// Path: lurokaDiscovery
class Translations$lurokaDiscovery$zh extends Translations$lurokaDiscovery$en {
	Translations$lurokaDiscovery$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => '发现';
	@override String get chooseLibraryHint => '选择要探索的图书馆';
	@override String get chooseCopyHint => '在多个图书馆均可找到。选择您喜欢的副本。';
	@override String get weeklyMovies => '本周热门电影 · TMDb';
	@override String get weeklyShows => '本周热门节目·TMDb';
	@override String get weeklyLibrary => '本周趋势·在你的图书馆里';
	@override String get popularLibrary => '现在很流行 · 在你的图书馆里 · Cinemeta';
	@override String get publicFeedError => 'Cinemeta 发现不可用。请再试一次。';
	@override String get oscars => '奥斯卡·最佳影片获奖者';
	@override String get imdb100 => 'IMDb 百部热门电影 · 2026 年 9 月快照';
	@override String get imdbTv100 => 'IMDb 前 100 场演出 · 2026 年 9 月快照';
	@override String get emmyComedy => '艾美奖 · 喜剧系列获奖者 · 1971–2026';
	@override String get emmys => '艾美奖 · 剧情类剧集获奖者 · 1966–2026';
	@override String get bafta => '英国电影和电视艺术学院·最佳影片获奖者';
	@override String get cannes => '戛纳·金棕榈奖得主';
	@override String get awardsNote => '获奖作品包括奥斯卡最佳影片历史奖、艾美奖戏剧/喜剧获奖作品以及英国电影和电视艺术学院 (BAFTA)/戛纳电影节精选影片。重复获奖的头衔出现一次。会员资格使用奖项类别历史和维基数据事实。 IMDb 前 100 部电影/节目列表保留了来自 mmdju/imdb-top250-api 的 2026 年 9 月图表快照。仅显示您可见的在线库中的匹配项；馆藏规模取决于图书馆的可用性。';
	@override String get attribution => '公众流行度列表、元数据和 IMDb 评级由 Cinemeta 提供；它的热门列表并不是每周的收视率排行榜。本产品使用 TMDB API，但未经 TMDB 认可或认证。可选的 TMDb 每周趋势反映了 TMDb 的兴趣，而不是查看数字。乐谱保留其来源标签。';
	@override String get tmdbSettings => '发现来源';
	@override String get setupDescription => 'Cinemeta 发现无需帐户即可立即运行：热门电影和节目、IMDb 收视率和获奖者。可以选择使用 API 密钥或 API 从 themoviedb.org/settings/api 读取访问令牌来连接 TMDb 以获取每周趋势。您的凭据存储在此设备上。';
	@override String get apiKey => 'TMDb API 密钥/读取访问令牌';
	@override String get connect => '连接TMDb';
	@override String get connecting => '正在连接…';
	@override String get connected => 'TMDb 已连接 · 启用每周趋势和奖项';
	@override String get builtInKeyNote => '在 Luroka 的内置共享 TMDb 密钥上运行。在下面添加您自己的免费密钥以获得专用速率限制和完全控制。';
	@override String get disconnect => '断开 TMDb';
	@override String get invalidKey => '无法验证 TMDb。检查您的凭据和互联网连接。';
	@override String get feedError => 'TMDb 发现不可用。请再试一次。';
	@override String get allTitles => '所有标题';
	@override String get available => '在你的图书馆里';
	@override String get checking => '检查您的库...';
	@override String get availabilityUnknown => '有些库无法检查。尝试清爽一下。';
	@override String get noAvailable => '在检查的库中未找到匹配的标题。';
	@override String get sourceInfo => '每周趋势及获奖者评选 · TMDb';
	@override String get configure => '发现设置';
}

// Path: app
class Translations$app$zh extends Translations$app$en {
	Translations$app$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => 'Luroka';
}

// Path: appIcon
class Translations$appIcon$zh extends Translations$appIcon$en {
	Translations$appIcon$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => '应用程序图标';
	@override String get defaultIcon => '默认';
	@override String get current => '当前图标';
	@override String get locked => '支持者福利';
	@override String get lockedHint => '备用图标是支持者的一项福利。';
	@override String get changeFailed => '无法更改应用程序图标';
	@override String get launcherHint => '一旦您离开 Luroka，新图标就会出现在您的主屏幕上。';
	@override String get tvLauncherHint => '一旦您离开 Luroka，就会出现新的横幅。 Android TV 可以继续显示旧的，直到电视重新启动。';
	@override late final Translations$appIcon$names$zh names = Translations$appIcon$names$zh.internal(_root);
}

// Path: auth
class Translations$auth$zh extends Translations$auth$en {
	Translations$auth$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get signInWithPlex => '使用 Plex 登录';
	@override String get showQRCode => '显示二维码';
	@override String get authenticate => '验证';
	@override String get authenticationTimeout => '验证超时。请重试。';
	@override String get scanQRToSignIn => '扫描二维码登录';
	@override String get waitingForAuth => '正在等待身份验证…\n请在浏览器中登录。';
	@override String get useBrowser => '使用浏览器';
	@override String get or => '或';
	@override String connectToMediaBrowser({required Object product}) => '连接到 ${product}';
	@override String get quickConnect => 'Quick Connect';
	@override String get useQuickConnect => '使用 Quick Connect';
	@override String get quickConnectInstructions => '在 Jellyfin 中打开 Quick Connect 并输入此代码。';
	@override String get quickConnectWaiting => '等待批准…';
	@override String get quickConnectCancel => '取消';
	@override String get quickConnectExpired => 'Quick Connect 已过期。请重试。';
	@override String get localDataRecoveryRequired => 'Luroka 无法安全恢复本地登录状态和待处理的播放数据。请重新登录。';
	@override String get pinCheckRejected => 'Plex PIN 检查被拒绝';
}

// Path: common
class Translations$common$zh extends Translations$common$en {
	Translations$common$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get cancel => '取消';
	@override String get save => '保存';
	@override String get close => '关闭';
	@override String get clear => '清除';
	@override String get reset => '重置';
	@override String get later => '稍后';
	@override String get submit => '提交';
	@override String get confirm => '确认';
	@override String get retry => '重试';
	@override String get logout => '退出登录';
	@override String get unknown => '未知';
	@override String get refresh => '刷新';
	@override String get yes => '是';
	@override String get no => '否';
	@override String get delete => '删除';
	@override String get edit => '编辑';
	@override String get shuffle => '随机播放';
	@override String get addTo => '添加到…';
	@override String get createNew => '新建';
	@override String get connect => '连接';
	@override String get disconnect => '断开连接';
	@override String get play => '播放';
	@override String get pause => '暂停';
	@override String get resume => '继续';
	@override String get error => '错误';
	@override String get search => '搜索';
	@override String get home => '首页';
	@override String get back => '返回';
	@override String get settings => '设置';
	@override String get mute => '静音';
	@override String get ok => '确定';
	@override String get off => '关闭';
	@override String get options => '选项';
	@override String seasonNumber({required Object number}) => '第${number}季';
	@override String episodeNumberTitle({required Object number, required Object title}) => '第${number}集 — ${title}';
	@override String chapterNumber({required Object number}) => '第${number}章';
	@override String get reconnect => '重新连接';
	@override String get viewAll => '查看全部';
	@override String get serversUnreachable => '服务器无法访问';
	@override String get loading => '加载中…';
	@override String get fullscreen => '全屏';
	@override String get exitFullscreen => '退出全屏';
	@override late final Translations$common$ratingSource$zh ratingSource = Translations$common$ratingSource$zh.internal(_root);
	@override String get notAvailable => 'N/A';
	@override String get url => 'URL';
	@override String get letterKeys => 'ABC';
	@override late final Translations$common$mediaKind$zh mediaKind = Translations$common$mediaKind$zh.internal(_root);
	@override String get stay => '住宿';
	@override String get exitApp => '退出';
	@override String get exitAppBody => '您确定要退出 Luroka 吗？';
}

// Path: tvHints
class Translations$tvHints$zh extends Translations$tvHints$en {
	Translations$tvHints$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get select => '选择';
	@override String get browse => '浏览';
	@override String get back => '返回';
}

// Path: screens
class Translations$screens$zh extends Translations$screens$en {
	Translations$screens$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get licenses => '许可证';
	@override String get switchProfile => '切换用户';
	@override String get subtitleStyling => '字幕样式';
	@override String get mpvConfig => 'mpv.conf';
	@override String get logs => '日志';
}

// Path: mediaExtras
class Translations$mediaExtras$zh extends Translations$mediaExtras$en {
	Translations$mediaExtras$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get trailers => '拖车';
	@override String get featurettes => '特辑';
	@override String get interviews => '采访';
	@override String get deletedScenes => '已删除的场景';
	@override String get behindTheScenes => '幕后花絮';
	@override String get scenesAndClips => '场景和剪辑';
	@override String get other => '其他附加服务';
}

// Path: update
class Translations$update$zh extends Translations$update$en {
	Translations$update$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get available => '有可用更新';
	@override String versionAvailable({required Object version}) => '版本 ${version} 已发布';
	@override String currentVersion({required Object version}) => '当前版本：${version}';
	@override String get skipVersion => '跳过此版本';
	@override String get viewRelease => '查看发布详情';
	@override String get latestVersion => '当前已是最新版本';
	@override String get checkFailed => '无法检查更新';
}

// Path: supporter
class Translations$supporter$zh extends Translations$supporter$en {
	Translations$supporter$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => 'Luroka 支持者';
	@override String get intro => '一次性购买，支持 Luroka 的开发并解锁额外装饰：';
	@override String get presetThemes => '预设主题';
	@override String get presetThemesDescription => '余烬、冰川、森林、李子和纸';
	@override String get customTheme => '自定义主题';
	@override String get customThemeDescription => '每种颜色都自己选';
	@override String get appIcons => '应用程序图标';
	@override String get appIconsDescription => '选择备用 Luroka 图标';
	@override String buy({required Object price}) => '购买 ${price}';
	@override String get loadingPrice => '加载价格...';
	@override String get restore => '恢复购买';
	@override String get pending => '您的购买正在等待付款或批准。商店完成后，额外内容就会解锁。';
	@override String get thankYouTitle => '感谢您对Luroka的支持';
	@override String get thankYouBody => '您的额外支持者已解锁。';
	@override String get tileSubtitle => '一次性购买即可解锁主题和应用程序图标';
	@override String get tileSubtitleThemesOnly => '一次性购买即可解锁主题';
	@override String get tileUnlocked => '感谢您的支持';
	@override late final Translations$supporter$errors$zh errors = Translations$supporter$errors$zh.internal(_root);
}

// Path: settings
class Translations$settings$zh extends Translations$settings$en {
	Translations$settings$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => '设置';
	@override String get supportDeveloper => '支持 Luroka';
	@override String get supportDeveloperDescription => '通过 Liberapay 捐赠支持开发';
	@override String get language => '语言';
	@override String get theme => '主题';
	@override String get appearance => '外观';
	@override String get videoPlayback => '视频播放';
	@override String get videoPlaybackDescription => '配置播放行为';
	@override String get advanced => '高级';
	@override String get episodePosterMode => '剧集海报样式';
	@override String get seriesPoster => '剧集海报';
	@override String get seasonPoster => '季海报';
	@override String get episodeThumbnail => '缩略图';
	@override String get homeHeroSize => '轮播尺寸';
	@override String get homeHeroSizeSmall => '小号';
	@override String get homeHeroSizeMedium => '中等';
	@override String get homeHeroSizeLarge => '大号';
	@override String get secondsLabel => '秒';
	@override String get minutesLabel => '分钟';
	@override String get secondsShort => 's';
	@override String get minutesShort => 'm';
	@override String durationHint({required Object min, required Object max}) => '输入时长（${min}–${max}）';
	@override String get systemTheme => '系统';
	@override String get lightTheme => '浅色';
	@override String get darkTheme => '深色';
	@override String get oledTheme => 'OLED';
	@override String get libraryDensity => '媒体库密度';
	@override String get displayScale => '界面缩放';
	@override String get compact => '紧凑';
	@override String get comfortable => '舒适';
	@override String get gridSpacing => '网格间距';
	@override String get gridSpacingTight => '紧密';
	@override String get gridSpacingNormal => '标准';
	@override String get gridSpacingSpacious => '宽松';
	@override String get tvCornerSpotlightBackdrop => '右上角聚焦背景图';
	@override String get tvCornerSpotlightBackdropDescription => '在右上角显示精选内容图片，而不是铺满整个屏幕';
	@override String get viewMode => '视图模式';
	@override String get gridView => '网格视图';
	@override String get listView => '列表视图';
	@override String get continueWatchingAction => '继续观看操作';
	@override String get continueWatchingPlay => '播放';
	@override String get continueWatchingDetails => '打开详情';
	@override String get episodeAction => '剧集操作';
	@override String get episodePlay => '播放';
	@override String get episodeDetails => '打开详情';
	@override String get useGlobalHubs => '使用主页布局';
	@override String get useGlobalHubsDescription => '显示统一主页内容；否则使用各媒体库的推荐内容。';
	@override String get showServerNameOnHubs => '在推荐栏显示服务器名称';
	@override String get showServerNameOnHubsDescription => '始终在推荐栏标题中显示服务器名称。';
	@override String get groupLibrariesByServer => '按服务器分组媒体库';
	@override String get groupLibrariesByServerDescription => '在侧边栏中按媒体服务器分组媒体库。';
	@override String get alwaysKeepSidebarOpen => '始终保持侧边栏展开';
	@override String get alwaysKeepSidebarOpenDescription => '侧边栏保持展开状态，内容区域自动调整';
	@override String get showUnwatchedCount => '显示未观看数量';
	@override String get showUnwatchedCountDescription => '在剧集和季上显示未观看集数';
	@override String get showWatchedIndicators => '显示已观看标记';
	@override String get showWatchedIndicatorsDescription => '在已观看的电影、剧集和单集上显示对勾标记';
	@override String get showEpisodeNumberOnCards => '在卡片上显示集数';
	@override String get showEpisodeNumberOnCardsDescription => '在剧集卡片上显示季和集编号';
	@override String get showSeasonPostersOnTabs => '在选项卡上显示季海报';
	@override String get showSeasonPostersOnTabsDescription => '在每季标签上方显示该季海报';
	@override String get tvFullCardLayout => '完整电视卡片';
	@override String get tvFullCardLayoutDescription => '使用仅显示图片的电视卡片，并在图片上叠加演员姓名';
	@override String get focusGlow => '焦点光晕';
	@override String get focusGlowDescription => '在获得焦点的卡片周围显示柔和的光晕';
	@override String get visualEffects => '视觉效果';
	@override String get visualEffectsAuto => '自动';
	@override String get visualEffectsAutoDescription => '在性能较低的设备上自动减少效果';
	@override String get visualEffectsFull => '完整效果';
	@override String get visualEffectsReduced => '简化';
	@override String get visualEffectsReducedDescription => '减少动画并使用较低分辨率的封面图片';
	@override String get hideSpoilers => '隐藏未看剧集的剧透内容';
	@override String get hideSpoilersDescription => '模糊未观看剧集的缩略图和描述';
	@override String get playerBackend => '播放器引擎';
	@override String get playerBackendDescription => 'mpv 可以播放更多格式并启用更多功能 - 推荐。如果在此设备上播放失败或卡顿，ExoPlayer 会提供帮助。';
	@override String get exoPlayer => 'ExoPlayer';
	@override String get mpv => 'mpv';
	@override String get hardwareDecoding => '硬件解码';
	@override String get hardwareDecodingDescription => '如果可用，使用硬件加速';
	@override String get playbackBuffer => '播放缓冲';
	@override String get playbackBufferAuto => '自动（推荐）';
	@override String get playbackBufferLarge => '大';
	@override String get playbackBufferExtraLarge => '特大';
	@override String get playbackBufferDescription => '针对不稳定的连接缓冲更多内容。也受缓冲大小限制。';
	@override String get defaultQualityTitle => '默认画质';
	@override String get streamingQualityOriginalHint => '完全按照存储的方式播放文件 - 最佳质量，使用最多带宽';
	@override String get cellularQualityTitle => '移动网络默认画质';
	@override String get cellularQualitySameAsDefault => '与默认画质相同';
	@override String get directPlayCoveredQuality => '以原始画质播放较小视频';
	@override String get directPlayCoveredQualityDescription => '已在画质限制内的视频直接播放，而非转码';
	@override String get videoCodecs => '视频编解码器';
	@override String get videoCodecsDescription => '未勾选的编解码器将由服务器转码';
	@override String get videoCodecsAlwaysAccepted => '始终接受';
	@override String get musicQualityTitle => '音乐音质';
	@override String get subtitleStyling => '字幕样式';
	@override String get subtitleStylingDescription => '调整字幕外观';
	@override String get smallSkipDuration => '短跳过时长';
	@override String get largeSkipDuration => '长跳过时长';
	@override String get rewindOnResume => '恢复时回退';
	@override String secondsUnit({required Object seconds}) => '${seconds} 秒';
	@override String get defaultSleepTimer => '默认睡眠定时器';
	@override String minutesUnit({required Object minutes}) => '${minutes} 分钟';
	@override String get rememberTrackSelections => '记住每部剧集或电影的音轨选择';
	@override String get rememberTrackSelectionsDescription => '分别记住每部内容的音频和字幕选择';
	@override String get rememberTrackSelectionsBackendRule => 'Plex 会按文件将每个选择保存在服务器上；Jellyfin 还会开启账户的“记住选择”；Emby 不支持';
	@override String get followServerTrackSelections => '使用服务器为每集选择的轨道';
	@override String get followServerTrackSelectionsDescription => '切换剧集时，应用服务器上为该集选择的音频和字幕，而不是沿用当前选择';
	@override String get resumeMusicOnLaunch => '记住音乐会话';
	@override String get resumeMusicOnLaunchDescription => '应用启动时，将上次播放的歌曲在停止位置以暂停状态打开';
	@override String get showChapterMarkersOnTimeline => '在进度条上显示章节标记';
	@override String get showChapterMarkersOnTimelineDescription => '按章节边界分段显示进度条';
	@override String get specialsOrdering => '特别篇按剧集顺序';
	@override String get specialsOrderingDescription => '特别篇在剧集观看顺序中的播放位置';
	@override String get specialsOrderingServer => '遵循服务器顺序';
	@override String get specialsOrderingAirDate => '按播出日期穿插';
	@override String get specialsOrderingLast => '常规季之后';
	@override String get clickVideoTogglesPlayback => '点击视频可切换播放/暂停';
	@override String get clickVideoTogglesPlaybackDescription => '点击视频即可播放或暂停，而不是显示控制项。';
	@override String get videoPlayerControls => '视频播放器控制';
	@override String get keyboardShortcuts => '键盘快捷键';
	@override String get keyboardShortcutsDescription => '自定义键盘快捷键';
	@override String get videoPlayerNavigation => '视频播放器导航';
	@override String get videoPlayerNavigationDescription => '使用方向键导航视频播放器控件';
	@override String get watchTogetherRelay => '一起看中继服务器';
	@override String get watchTogetherRelayDescription => '公共开放观看派对接力，除非您自己设置';
	@override String get watchTogetherRelayHint => 'https://my-relay.example.com';
	@override String get watchTogetherRelayInvalid => '请输入有效的 HTTP 或 HTTPS 中继服务器基础 URL。';
	@override String get crashReporting => '崩溃报告';
	@override String get crashReportingDescription => '发送崩溃报告以帮助改进应用';
	@override String get debugLogging => '调试日志';
	@override String get debugLoggingDescription => '启用详细日志记录以便故障排除';
	@override String get viewLogs => '查看日志';
	@override String get viewLogsDescription => '查看应用日志';
	@override String get clearImageCache => '清除图片缓存';
	@override String get clearImageCacheDescription => '清除缓存的封面与缩略图。图片在重新下载前加载速度可能会变慢。';
	@override String get clearImageCacheSuccess => '图片缓存已成功清除';
	@override String get resetSettings => '重置设置';
	@override String get resetSettingsDescription => '恢复默认设置。此操作无法撤销。';
	@override String get resetSettingsSuccess => '设置重置成功';
	@override String get backup => '备份';
	@override String get exportSettings => '导出设置';
	@override String get exportSettingsDescription => '将偏好设置保存到文件';
	@override String get exportSettingsSuccess => '设置已导出';
	@override String get importSettings => '导入设置';
	@override String get importSettingsDescription => '从文件恢复偏好设置';
	@override String get importSettingsConfirm => '这将替换您当前的设置。继续吗？';
	@override String get importSettingsSuccess => '设置已导入';
	@override String get importSettingsInvalidFile => '此文件不是有效的 Luroka 设置导出';
	@override String get importSettingsNoUser => '导入设置前请先登录';
	@override String get shortcutsReset => '快捷键已重置为默认值';
	@override String get resetShortcutsConfirm => '这会将您的自定义快捷方式替换为默认快捷方式。继续？';
	@override String get about => '关于';
	@override String get aboutDescription => '应用程序信息和许可证';
	@override String get updates => '更新';
	@override String get updateAvailable => '有可用更新';
	@override String get checkForUpdates => '检查更新';
	@override String get autoCheckUpdatesOnStartup => '启动时自动检查更新';
	@override String get autoCheckUpdatesOnStartupDescription => '启动时有可用更新则通知';
	@override String get validationErrorEnterNumber => '请输入有效数字';
	@override String validationErrorDuration({required Object min, required Object max, required Object unit}) => '时长必须介于 ${min} 和 ${max} ${unit} 之间';
	@override String shortcutAlreadyAssigned({required Object action}) => '快捷键已被分配给 ${action}';
	@override String shortcutUpdated({required Object action}) => '快捷键已为 ${action} 更新';
	@override String get saveFailed => '无法保存更改。请重试。';
	@override String get autoPlayAndSkip => '自动播放与跳过';
	@override String get autoPlayNextEpisode => '自动播放下一集';
	@override String get autoPlayNextEpisodeDescription => '当前剧集结束时自动播放下一集';
	@override String get shuffleStartsFromBeginning => '随机播放从头开始';
	@override String get shuffleStartsFromBeginningDescription => '随机播放时每集从头开始播放，而非续播';
	@override String get playNextCountdown => '播放下一集倒计时';
	@override String get playNextCountdownImmediate => '立即播放';
	@override String get skipIntroMode => '跳过片头';
	@override String get skipIntroModeOffDescription => '正常播放片头，不显示跳过按钮';
	@override String get skipIntroModeButtonDescription => '片头开始时显示跳过按钮';
	@override String get skipIntroModeAutoDescription => '在下方设定的延迟后自动跳过片头';
	@override String get skipCreditsMode => '跳过片尾';
	@override String get skipCreditsModeOffDescription => '正常播放片尾，不显示跳过按钮';
	@override String get skipCreditsModeButtonDescription => '片尾开始时显示跳过按钮';
	@override String get skipCreditsModeAutoDescription => '自动跳过片尾并播放下一集';
	@override String get skipMarkerModeOff => '关闭';
	@override String get skipMarkerModeButton => '显示按钮';
	@override String get skipMarkerModeAuto => '自动';
	@override String get forceSkipMarkerFallback => '强制使用备用标记';
	@override String get forceSkipMarkerFallbackDescription => '即使 Plex 有标记，也使用章节标题模式';
	@override String get autoSkipDelay => '自动跳过延迟';
	@override String autoSkipDelayDescription({required Object seconds}) => '自动跳过前等待 ${seconds} 秒';
	@override String get introPattern => '片头标记模式';
	@override String get introPatternDescription => '用于匹配章节标题中片头标记的正则表达式';
	@override String get creditsPattern => '片尾标记模式';
	@override String get creditsPatternDescription => '用于匹配章节标题中片尾标记的正则表达式';
	@override String get invalidRegex => '无效的正则表达式';
	@override String get regex => '正则表达式';
	@override String get downloads => '下载';
	@override String get downloadLocationDescription => '选择下载内容的存储位置';
	@override String get downloadLocationDefault => '默认（应用存储）';
	@override String get downloadLocationCustom => '自定义位置';
	@override String get selectFolder => '选择文件夹';
	@override String get resetToDefault => '重置为默认';
	@override String currentPath({required Object path}) => '当前路径：${path}';
	@override String get downloadLocationChanged => '下载位置已更改';
	@override String get downloadLocationReset => '下载位置已重置为默认';
	@override String get downloadLocationInvalid => '所选文件夹不可写入';
	@override String get downloadLocationPickerUnavailable => '此设备不支持选择文件夹';
	@override String get downloadOnWifiOnly => '仅通过 Wi-Fi 下载';
	@override String get downloadOnWifiOnlyDescription => '使用移动数据时不允许下载';
	@override String get downloadWifiScope => '适用于此设备上的所有用户资料和下载。';
	@override String get autoRemoveWatchedDownloads => '自动移除已观看的下载';
	@override String get autoRemoveWatchedDownloadsDescription => '自动删除已观看的下载';
	@override String get cellularDownloadBlocked => '已阻止通过移动网络下载。请连接 Wi-Fi 或更改设置。';
	@override String get maxVolume => '最大音量';
	@override String get maxVolumeDescription => '允许音量超过 100%，以便播放音量较低的内容';
	@override String maxVolumePercent({required Object percent}) => '${percent}%';
	@override String get discordRichPresence => 'Discord 动态状态';
	@override String get discordRichPresenceDescription => '在 Discord 上显示您正在观看的内容';
	@override String get services => '服务';
	@override String get servicesDescription => '连接 Trakt、MyAnimeList、Seerr 等';
	@override String get manageLibrariesDescription => '重新排序和隐藏媒体库';
	@override String get companionRemoteServer => '远程控制服务器';
	@override String get companionRemoteServerDescription => '允许同一网络中的移动设备控制此应用';
	@override String get companionRemoteServerStartFailed => '无法启动远程控制服务器';
	@override String get companionRemoteServerStopFailed => '无法停止远程控制服务器';
	@override String get autoPip => '自动画中画';
	@override String get autoPipDescription => '播放期间离开应用时自动进入画中画模式';
	@override String get matchContentFrameRate => '匹配内容帧率';
	@override String get matchContentFrameRateDescription => '使显示器刷新率与视频帧率匹配';
	@override String get matchContentResolution => '匹配内容分辨率';
	@override String get matchContentResolutionDescription => '将显示切换为视频的原生分辨率，由电视负责放大。播放期间菜单和字幕也会一并放大';
	@override String get matchRefreshRate => '匹配刷新率';
	@override String get matchRefreshRateDescription => '全屏时匹配显示刷新率';
	@override String get matchDynamicRange => '匹配动态范围';
	@override String get matchDynamicRangeDescription => 'HDR 内容切换到 HDR，随后切回 SDR';
	@override String get displaySwitchDelay => '显示切换延迟';
	@override String get tunneledPlayback => '隧道播放';
	@override String get tunneledPlaybackDescription => '使用视频隧道模式。若播放 HDR 内容时出现黑屏或画面卡顿，请将其关闭。';
	@override String get audioPassthrough => '音频直通';
	@override String get audioPassthroughDescription => '将 Dolby/DTS 音频不经重新编码直接发送到功放或电视，保留环绕声。如果没有声音，请关闭。';
	@override String get audioPassthroughDescriptionApple => '对 Dolby Digital Plus（含 Atmos）使用 Apple 原生 Dolby 解码器。DTS 和 TrueHD 仍以多声道 PCM 播放。如果没有声音，请关闭。';
	@override String get audioPassthroughDescriptionAppleSpatial => '使用 Apple 的原生杜比解码器实现杜比数字+ (Dolby Digital Plus)，包括 Atmos。在 iOS、iPadOS 和 tvOS 26 或更高版本上，TrueHD Atmos 和 DTS:X 作为空间音频播放。其他 DTS 和 TrueHD 曲目作为多通道 PCM 播放。如果没有声音请关闭。';
	@override String get audioPassthroughOverriddenByNormalization => '响度标准化开启时停用';
	@override String get audioChannelLimit => '音频通道';
	@override String get audioChannelLimitDescription => '为无法播放每个通道的扬声器、耳机或 HDMI 设置混合解码音频';
	@override String get audioChannelLimitOriginal => '原创';
	@override String get audioChannelLimitOriginalDescription => '播放曲目中的每个频道';
	@override String get audioChannelLimitSurround51 => '高达5.1';
	@override String get audioChannelLimitSurround51Description => '对于仅采用 5.1 PCM 的电视和接收器，将 7.1 混合到 5.1。直通不受影响。';
	@override String get audioChannelLimitStereo => '立体声';
	@override String get audioChannelLimitStereoDescription => '为立体声扬声器或耳机混合两个通道。关闭直通。';
	@override String get downmixCenterBoost => '中置声道增强';
	@override String downmixCenterBoostValue({required Object db}) => '${db} dB';
	@override String get downmixCenterBoostLabel => '增强（dB）';
	@override String get downmixCenterBoostShort => 'dB';
	@override String get audioDownmixNormalize => '下混时音量标准化';
	@override String get audioDownmixNormalizeDescription => '降低混音电平以防止削波。关闭可保持原始音量（大音量场景可能失真）。';
	@override String get dvConversionMode => 'Dolby Vision 转换';
	@override String get dvConversionModeDescription => '选择如何处理 Dolby Vision Profile 7 文件。';
	@override String get dvConversionAuto => '自动';
	@override String get dvConversionNative => '原生 / 禁用';
	@override String get dvConversionDv81 => 'P7 → P8.1';
	@override String get dvConversionHevcStrip => 'P7 → HEVC';
	@override String get dvConversionAutoDescription => '使用设备能力检测和常规回退机制';
	@override String get dvConversionNativeDescription => '强制原生 DV7 并禁止重试 DV 转换';
	@override String get dvConversionDv81Description => '强制内联 RPU 转换为 Dolby Vision Profile 8.1';
	@override String get dvConversionHevcStripDescription => '移除 Dolby Vision RPU/EL 层并呈现普通 HEVC';
	@override String get disableDolbyVision => '禁用 Dolby Vision';
	@override String get disableDolbyVisionDescription => '文件包含 HDR10 或 HLG 层时，改为播放该层而非 Dolby Vision';
	@override String get hdrSdrConversion => 'HDR 转 SDR';
	@override String get hdrSdrConversionDescription => '选择在显示器无法显示 HDR 时由谁转换 HDR 视频。';
	@override String get hdrSdrConversionAuto => '自动';
	@override String get hdrSdrConversionAutoDescription => 'Android 9 及更高版本使用设备，更早版本使用播放器';
	@override String get hdrSdrConversionDevice => '设备';
	@override String get hdrSdrConversionDeviceDescription => '由设备的视频硬件转换。速度最快，但色彩取决于设备';
	@override String get hdrSdrConversionPlayer => '播放器';
	@override String get hdrSdrConversionPlayerDescription => '由播放器转换。色彩一致，但在低端电视盒上 4K 可能卡顿';
	@override String get deinterlace => '去隔行';
	@override String get deinterlaceDescription => '消除隔行扫描视频中的梳状伪影（仅 mpv 播放器）';
	@override String get deinterlaceOff => '离开';
	@override String get deinterlaceOffDescription => '显示解码后的隔行扫描视频';
	@override String get deinterlaceVideo => '视频';
	@override String get deinterlaceVideoDescription => '将每个字段变成一个完整的帧。用于电视视频拍摄，例如体育、新闻和音乐会';
	@override String get deinterlaceFilm => '电影';
	@override String get deinterlaceFilmDescription => '将电视电影和动画的原始帧恢复至 NTSC DVD 上常见的 29.97 fps。电视视频拍摄时断断续续。直播电视使用视频';
	@override String get requireProfileSelectionOnOpen => '打开应用时选择用户资料';
	@override String get requireProfileSelectionOnOpenDescription => '每次打开应用时都显示用户资料选择界面';
	@override String get forceTvMode => '强制 TV 模式';
	@override String get forceTvModeKeepTitle => '保留电视布局？';
	@override String forceTvModeKeepBody({required Object seconds}) => '电视布局是为遥控器而设计的。恢复到 ${seconds} 中的正常布局。';
	@override String get forceTvModeKeepConfirm => '保留电视布局';
	@override String get forceTvModeReverted => '电视布局已恢复';
	@override String get forceTvModeDescription => '强制 TV 布局。适用于无法自动检测的设备。需要重启。';
	@override String get startInFullscreen => '以全屏模式启动';
	@override String get startInFullscreenDescription => '启动时以全屏模式打开 Luroka';
	@override String get exitFullscreenOnPlayerClose => '关闭播放器时退出全屏';
	@override String get exitFullscreenOnPlayerCloseDescription => '关闭视频播放器时自动退出全屏模式';
	@override String get autoHidePerformanceOverlay => '自动隐藏性能叠加层';
	@override String get autoHidePerformanceOverlayDescription => '性能叠加层随播放控件一起淡入淡出';
	@override String get showNavBarLabels => '显示导航栏标签';
	@override String get showNavBarLabelsDescription => '在导航栏图标下方显示文字标签';
	@override String get startupSection => '启动页面';
	@override String get showExploreTab => '显示“探索”标签页';
	@override String get showExploreTabDescription => '显示“探索”标签页，其中包含来自 Plex Discover 和已连接追踪服务的内容';
	@override String get liveTvDefaultFavorites => '默认显示收藏频道';
	@override String get liveTvDefaultFavoritesDescription => '打开直播电视时仅显示收藏频道';
	@override String get general => '通用';
	@override String get generalDescription => '语言、启动和窗口行为';
	@override String get languageAndRegion => '语言与地区';
	@override String get startup => '启动';
	@override String get display => '显示';
	@override String get libraryAndCards => '媒体库与卡片';
	@override String get homeScreen => '主屏幕';
	@override String get navigation => '导航';
	@override String get window => '窗口';
	@override String get liveTv => '直播电视';
	@override String get player => '播放器';
	@override String get videoAndDisplay => '视频与显示';
	@override String get audio => '音频';
	@override String get quality => '画质';
	@override String get subtitles => '字幕';
	@override String get seekAndTiming => '跳转与计时';
	@override String get behavior => '行为';
	@override String get gestures => '手势';
	@override String get gestureBrightnessSwipe => '亮度滑动';
	@override String get gestureBrightnessSwipeDescription => '在屏幕左边缘上下滑动以调节亮度';
	@override String get gestureVolumeSwipe => '音量滑动';
	@override String get gestureVolumeSwipeDescription => '在屏幕右边缘上下滑动以调节音量';
	@override String get gesturePinchToZoom => '双指缩放';
	@override String get gesturePinchToZoomDescription => '在视频上双指捏合以放大或缩小';
	@override String get rememberBrightnessLevel => '记住亮度';
	@override String get rememberBrightnessLevelDescription => '以上次滑动设置的亮度开始播放';
	@override String get controls => '控制';
	@override String get rememberPlayerChanges => '记住播放器更改';
	@override String get rememberPlayerChangesDescription => '播放期间所做的更改保存并重新应用的位置';
	@override String get scopePlaybackSpeed => '播放速度';
	@override String get scopeShaderPreset => '着色器预设';
	@override String get scopeAspectRatio => '宽高比';
	@override String get scopeSyncOffsets => '音频和字幕同步';
	@override String get playerScopeOff => '不保存';
	@override String get playerScopeGlobal => '所有位置';
	@override String get playerScopeLibrary => '按媒体库';
	@override String get playerScopeTitle => '按剧集或电影';
	@override String get exportDialogTitle => '导出 Luroka 设置';
	@override String get velvetHourTheme => '天鹅绒时光';
}

// Path: themeEditor
class Translations$themeEditor$zh extends Translations$themeEditor$en {
	Translations$themeEditor$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get builtIn => '内置';
	@override String get presets => '预设';
	@override String get custom => '定制';
	@override String get customEmpty => '尚未创建';
	@override String get editCustom => '编辑自定义主题';
	@override String get editCustomDescription => '自己选择每种颜色';
	@override String get locked => '与支持者一起解锁';
	@override String get savedLocked => '已保存 — 通过支持者解锁';
	@override String get title => '自定义主题';
	@override String get startFrom => '开始于';
	@override String get startFromDescription => '复制另一个主题的所有颜色';
	@override String get colors => '颜色';
	@override String get preview => '预览';
	@override late final Translations$themeEditor$slots$zh slots = Translations$themeEditor$slots$zh.internal(_root);
	@override String get opacity => '不透明度';
	@override String get hexHint => '#RRGGBB 或 #AARRGGBB';
	@override String get fromOtherThemes => '来自其他主题';
	@override String swatchLabel({required Object theme, required Object color}) => '${theme} ${color}';
	@override late final Translations$themeEditor$contrast$zh contrast = Translations$themeEditor$contrast$zh.internal(_root);
	@override String lowContrast({required Object pair, required Object ratio, required Object minimum}) => '${pair}：${ratio}：1，低于推荐的${minimum}：1';
	@override String get discardTitle => '放弃更改？';
	@override String get discardMessage => '您未保存的颜色更改将会丢失。';
	@override String get discard => '丢弃';
	@override String previewCardTitle({required Object number}) => '剧集 ${number}';
	@override String previewCardSubtitle({required Object minutes}) => '${minutes} 剩余时间';
	@override String get previewSwitch => '自动播放';
	@override String get previewMutedText => '辅助文本读起来像这样';
}

// Path: seriesBrowser
class Translations$seriesBrowser$zh extends Translations$seriesBrowser$en {
	Translations$seriesBrowser$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get oneEpisode => '1 集';
	@override String watchedCount({required Object count}) => '${count} 已观看';
	@override String episodeCount({required Object count}) => '${count} 剧集';
	@override String episodesFor({required Object season}) => '${season} · 剧集';
	@override String get enterHint => '选择：开放季·↓：剧集';
}

// Path: titlePage
class Translations$titlePage$zh extends Translations$titlePage$en {
	Translations$titlePage$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get genre => '流派';
	@override String remaining({required Object time}) => '剩余${time}';
	@override String continueEpisode({required Object season, required Object episode}) => '继续 S${season} E${episode}';
	@override String get watchlist => '关注列表';
	@override String get more => '更多';
}

// Path: tvMenus
class Translations$tvMenus$zh extends Translations$tvMenus$en {
	Translations$tvMenus$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get appearanceDescription => '主题、屏幕边距和海报';
}

// Path: lurokaPlayer
class Translations$lurokaPlayer$zh extends Translations$lurokaPlayer$en {
	Translations$lurokaPlayer$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => '播放器设置';
	@override String get watch => '手表';
	@override String get watchDescription => '设定节奏、放松并决定接下来播放什么。';
	@override String get picture => '图片设置';
	@override String get pictureDescription => '缩放、HDR 和视频处理';
	@override String get sound => '音频和字幕';
	@override String get audioSettings => '音频设置';
	@override String get soundDescription => '时间、音量和音频输出';
	@override String get chooseTracks => '选择语言和字幕轨道';
	@override String get tools => '高级';
	@override String get toolsDescription => '播放信息和诊断';
	@override String get preferences => '播放首选项';
	@override String get preferencesDescription => '您的电影院，您的默认设置。从声音和字幕开始，然后微调流媒体和屏幕。';
	@override String get streamPreferences => '流媒体质量';
	@override String get displayPreferences => '显示';
	@override String get enginePreferences => '高级播放器选项';
	@override String get seekPreferences => '寻求';
	@override String get watchPreferences => '自动播放和跳过';
	@override String get rememberPreferences => '记住偏好';
}

// Path: lurokaSettings
class Translations$lurokaSettings$zh extends Translations$lurokaSettings$en {
	Translations$lurokaSettings$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get quickSetup => '快速设置';
	@override String get quickSetupDescription => '从基本要素开始：更流畅的电视浏览、舒适的屏幕适配、您的主页布局和播放首选项。';
	@override String get experience => '您的经历';
	@override String get experienceDescription => '让 Luroka 感觉良好：外观、语言、播放、库和屏幕时间。';
	@override String get remoteHint => '↑ ↓ 浏览类别 · → / 选择打开选项 · ← 返回类别';
}

// Path: playerChrome
class Translations$playerChrome$zh extends Translations$playerChrome$en {
	Translations$playerChrome$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get browse => '章节和队列';
	@override String get backToPlayback => '返回播放';
	@override String get nowPlaying => '正在播放';
	@override String get options => '玩家选项';
}

// Path: tvLayout
class Translations$tvLayout$zh extends Translations$tvLayout$en {
	Translations$tvLayout$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get screenMargins => '电视屏幕边距';
	@override String get screenMarginsDescription => '如果您的电视截断了部分图片，请缩小应用程序的边缘';
	@override String get screenMarginsDefault => '0%（默认）';
}

// Path: studios
class Translations$studios$zh extends Translations$studios$en {
	Translations$studios$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get checkingCopies => '检查其他库...随时选择一个已知的副本。';
	@override String get incompleteCopies => '有些库无法检查。选择已知副本或取消并重试。';
	@override String get partialFavorites => '某些收藏夹无法加载。选择刷新以重试。';
	@override String get copyLookupFailedTitle => '无法检查所有副本';
	@override String get copyLookupFailedMessage => '一些图书馆没有回应。您可以打开已找到的副本之一或取消并重试。';
	@override String get openKnownCopies => '显示已知副本';
	@override String get browseAll => '浏览全部';
	@override String titleCount({required Object count}) => '${count} 标题';
	@override String get topRated => '评价最高';
	@override String get mostWatched => '您的图书馆中观看次数最多的';
	@override String get collection => '工作室系列';
	@override String loadedTitles({required Object count}) => '${count} 标题已加载';
	@override String get sort => '对标题进行排序';
	@override String get sortTitleAscending => '标题 A-Z';
	@override String get sortTitleDescending => '标题 Z–A';
	@override String get sortNewest => '最新发布';
	@override String get sortOldest => '最旧的版本';
	@override String get sortAdded => '最近添加';
	@override String get sortEpisodeAdded => '最近添加的剧集';
	@override String get sortRating => '最高评价';
	@override String get title => '按工作室浏览';
	@override String get all => '全部';
	@override String get movies => '电影';
	@override String get shows => '电视节目';
	@override String get loadMore => '加载更多标题';
	@override String get empty => '您当前可见的图书馆中没有匹配的标题。';
	@override String get retry => '无法加载更多标题 — 选择重试';
	@override String get description => '在您的图书馆中探索该工作室的电影和节目。';
}

// Path: dashboard
class Translations$dashboard$zh extends Translations$dashboard$en {
	Translations$dashboard$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get previousFeature => '上一个特色标题';
	@override String get nextFeature => '下一个特色标题';
	@override String get cinemaHome => '首页';
	@override String get episodeFallback => '电视剧集';
	@override String timeLeft({required Object minutes}) => '还剩 ${minutes} 分钟';
	@override String timeLeftHours({required Object hours, required Object minutes}) => '还剩 ${hours} 小时 ${minutes} 分钟';
	@override String get spoilerHidden => '您的剧透偏好隐藏了剧集详细信息。';
	@override String get synopsisUnavailable => '打开详细信息以查看有关此标题的更多信息。';
	@override String get yourSpace => '您的空间';
	@override String get title => '你的电影院。';
	@override String get subtitle => '选择一个故事，或寻找下一个故事。';
	@override String get featured => 'LUROKA 精选';
	@override String get jumpBackIn => '继续观看';
	@override String episodeLabel({required Object season, required Object episode}) => 'S${season} · E${episode}';
	@override String get anotherPick => '另一个选择';
	@override String get exploreSeries => '探索系列';
	@override String get showFeatured => '主页聚焦';
	@override String get showFeaturedDescription => '在主页顶部显示精选电影和节目。';
}

// Path: lurokaCatalog
class Translations$lurokaCatalog$zh extends Translations$lurokaCatalog$en {
	Translations$lurokaCatalog$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get aboutPerson => '在聚光灯下';
	@override String get biographyUnavailable => '该服务器无法提供传记。';
	@override String get filmography => '您图书馆中的电影和节目';
	@override String get recommended => '发现';
	@override String get browse => '所有标题';
	@override String get collections => '收藏';
	@override String get browseHint => '探索您的目录。使用过滤器和排序来塑造选择。';
	@override String get recommendedHint => '寻找你的下一个故事';
	@override String get details => '故事背后';
}

// Path: referenceDetails
class Translations$referenceDetails$zh extends Translations$referenceDetails$en {
	Translations$referenceDetails$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get oneEpisodeLeft => '还剩 1 集';
	@override String get playAll => '播放全部';
	@override String get present => '现在';
	@override String get continuing => '继续';
	@override String get upNext => '接下来';
	@override String episodesLeft({required Object count}) => '${count} 还剩几集';
}

// Path: lurokaThemes
class Translations$lurokaThemes$zh extends Translations$lurokaThemes$en {
	Translations$lurokaThemes$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => 'Luroka 影院调色板';
	@override String get coral => '珊瑚·午夜蓝&夕阳';
	@override String get ocean => '海洋·深蓝&冰';
	@override String get jade => '翡翠·万年青&薄荷';
	@override String get amethyst => '紫水晶·午夜紫罗兰';
	@override String get darkThemes => '黑暗电影主题';
	@override String get lightThemes => '轻电影主题';
	@override String get moreThemes => '更多主题';
	@override String get moreThemesDescription => '浏览其他调色板和自定义颜色';
	@override String get obsidian => '黑曜石·纯黑&香槟色';
	@override String get nocturne => '夜曲·木炭与香槟';
	@override String get burgundy => '勃艮第·天鹅绒酒与玫瑰';
	@override String get slate => '板岩·石墨&长春花';
	@override String get espresso => '浓缩咖啡·可可和焦糖';
	@override String get pearl => '珍珠·瓷器&蓝宝石';
	@override String get linen => '亚麻·温暖的象牙色和赤土色';
	@override String get sunrise => '日出·桃色与珊瑚';
	@override String get coastal => '海岸·雾海青色';
	@override String get latte => '拿铁·奶油和焦糖';
	@override String get sage => '鼠尾草·软绿&桉树';
	@override String get lavender => '薰衣草·紫丁香&深紫罗兰';
}

// Path: customPerformance
class Translations$customPerformance$zh extends Translations$customPerformance$en {
	Translations$customPerformance$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => '性能与效果';
	@override String get fireStickMode => '低功耗设备模式';
	@override String get description => '使用简化效果、静态背景、上限为 720p 的图稿以及 40 MiB 图像缓存。启用后，这会覆盖视觉效果；关闭它会恢复您的视觉效果首选项。';
	@override String get detailsTitle => '性能细节';
	@override String get details => '主动效果、图像缓存限制和浏览性能测量';
	@override String get effectsTier => '主动效果层';
	@override String get imageCache => '图像缓存限制';
	@override String get measurement => '浏览测量';
	@override String get measureInstructions => '开始 20 秒的示例，返回主页，然后使用遥控器进行浏览。返回此处查看结果。在模式打开和关闭的情况下重复相同的操作进行比较。这衡量的是 Flutter UI 的工作情况，而不是视频解码器的性能。';
	@override String get startSample => '开始 20 秒示例';
	@override String get stopSample => '立即完成样品';
	@override String get sampling => '采样 — 返回主页并浏览。结果将保存在这里。';
	@override String get frames => '采样帧数';
	@override String get slowFrames => '框架超出预算';
	@override String get buildP95 => 'UI 构建时间（第 95 个百分位）';
	@override String get rasterP95 => '光栅时间（第 95 个百分位）';
	@override String get frameBudget => '每帧预算';
	@override String get processMemory => '示例结束时的应用程序进程内存';
	@override String get noFrames => '未捕获任何渲染帧。启动另一个示例并浏览该应用程序。';
}

// Path: homeLayout
class Translations$homeLayout$zh extends Translations$homeLayout$en {
	Translations$homeLayout$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get manageStudios => '选择并订购工作室';
	@override String get manageStudiosDescription => '选择此配置文件中显示的工作室，并安排它们的顺序。';
	@override String get studioUnavailable => '只有在您选择的库中找到的工作室才会出现在主页上。';
	@override String get showAllStudios => '显示所有工作室';
	@override String get hideAllStudios => '隐藏所有工作室';
	@override String get reorderStudio => '更改工作室顺序';
	@override String get episodeThumbnails => '继续观看中的剧集图像';
	@override String get episodeThumbnailsDescription => '在“继续观看”和“下一步”中显示剧集图像而不是系列或季海报。';
	@override String get spotlightSource => '精选内容来源';
	@override String get spotlightSourceDescription => '“为您推荐”使用该个人资料在此设备上的查看活动，以及收藏夹和图书馆标题。';
	@override String get spotlightForYou => '为你';
	@override String get spotlightForYouDescription => '使用此个人资料在此设备上的观看活动，混合您正在观看的内容、收藏夹、新增内容和趋势。';
	@override String get spotlightTrending => '流行趋势';
	@override String get spotlightTrendingDescription => '您图书馆中的热门电影和节目。';
	@override String get spotlightContinue => '继续观看';
	@override String get spotlightContinueDescription => '您已开始的标题和可以继续的剧集。';
	@override String get spotlightFavorites => '从你的最爱';
	@override String get spotlightInspired => '受到您的观看启发';
	@override String get spotlightNextUp => '接下来';
	@override String get title => '个性化主页';
	@override String get description => '选择此配置文件的行顺序和可见性。选择一行以移动或隐藏它。';
	@override String get rows => '主行';
	@override String get progressLayout => '继续观看并下一步';
	@override String get progressCombined => '组合成一排';
	@override String get progressSeparate => '单独的行';
	@override String get progressDescription => '当服务器支持时，单独的下一个。其他服务器保持合并。';
	@override String get visible => '可见';
	@override String get hidden => '隐藏';
	@override String get showRow => '显示行';
	@override String get hideRow => '隐藏行';
	@override String get moveUp => '向上移动';
	@override String get moveDown => '下移';
	@override String get pinnedCollections => '固定收藏集';
	@override String get pinInstructions => '打开集合的菜单并选择 Pin 到主页。在此处选择固定集合以删除其快捷方式。';
	@override String get pinCollection => 'Pin 到首页';
	@override String get unpinCollection => '从家里取消固定';
	@override String get reset => '恢复默认行';
	@override String get resetDescription => '恢复原始行顺序并显示此配置文件的所有行？您固定的收藏将被保留。';
	@override String get saveFailed => '无法保存您的主页布局。请再试一次。';
	@override String get emptyHint => '行可能被隐藏。打开个性化主页以再次显示它们。';
}

// Path: screenTime
class Translations$screenTime$zh extends Translations$screenTime$en {
	Translations$screenTime$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => '屏幕时间';
	@override String get description => '查看在此个人资料上观看视频所花费的时间';
	@override String get today => '今天';
	@override String get thisWeek => '本周';
	@override String get thisMonth => '本月';
	@override String get lessThanMinute => '< 1 分钟';
	@override String minutes({required Object count}) => '${count} 分钟';
	@override String hours({required Object count}) => '${count} 小时';
	@override String hoursMinutes({required Object hours, required Object minutes}) => '${hours} 小时 ${minutes} 分钟';
}

// Path: activityStats
class Translations$activityStats$zh extends Translations$activityStats$en {
	Translations$activityStats$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => '查看统计数据';
	@override String get period => '时期';
	@override String get last7Days => '7天';
	@override String get last30Days => '30天';
	@override String get last90Days => '90天';
	@override String get thisYear => '年份';
	@override String get allTime => '全部';
	@override String get heroAllTime => '所有时间';
	@override String get heroDailyAverage => '日平均';
	@override String get consistency => '一致性';
	@override String get currentStreak => '当前连胜';
	@override String dayCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n,
		one: '${n} 天',
		other: '${n} 天',
	);
	@override String get longestStreak => '最长连续纪录';
	@override String get bestDay => '最好的一天';
	@override String get bestWeek => '最好的一周';
	@override String get trendTitle => '观看时间';
	@override String get trendToday => '今天';
	@override String gapDetail({required Object stat, required Object range}) => '${stat} 上 ${range}';
	@override String get patternsTitle => '你的模式';
	@override String mostlyKind({required Object kind}) => '大部分是${kind}';
	@override String get weekdayTitle => '按工作日';
	@override String get hoursTitle => '按一天中的时间';
	@override String get amLabel => '调幅';
	@override String get pmLabel => '下午';
	@override String get kindsTitle => '按类别';
	@override String get kindMovie => '电影';
	@override String get kindTv => '电视';
	@override String get kindLiveTv => '电视直播';
	@override String get kindMusic => '音乐';
	@override String get kindOther => '其他';
	@override String get topTitlesTitle => '最受关注';
	@override String get sessionsTitle => '最近的会议';
	@override String get recentViewingTitle => '最近观看';
	@override String get recentViewingHint => '所选时间段内的总观看时间。日期显示最新观看次数。';
	@override String get showMore => '显示更多';
	@override String get sessionNoTitle => '不明播放';
	@override String get emptyTitle => '这里还什么都没有';
	@override String get emptyBody => '观看一些内容，您的统计数据就会在这里建立起来。';
	@override String get noDataInPeriod => '在此期间没有播放记录。';
}

// Path: search
class Translations$search$zh extends Translations$search$en {
	Translations$search$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get hint => '搜索电影、剧集、音乐…';
	@override String get tryDifferentTerm => '尝试不同的搜索词';
	@override String get searchYourMedia => '搜索媒体';
	@override String get enterTitleActorOrKeyword => '输入标题、演员或关键词';
	@override String get people => '人';
	@override String get recentSearches => '最近的搜索';
	@override String get clearHistory => '清除历史记录';
}

// Path: hotkeys
class Translations$hotkeys$zh extends Translations$hotkeys$en {
	Translations$hotkeys$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String setShortcutFor({required Object actionName}) => '为 ${actionName} 设置快捷键';
	@override String get clearShortcut => '清除快捷键';
	@override String get noShortcutSet => '未设置快捷键';
	@override String get currentShortcut => '当前快捷键：';
	@override String get pressToRecord => '点击后录入快捷键';
	@override String get recordingShortcut => '请按下快捷键';
	@override late final Translations$hotkeys$actions$zh actions = Translations$hotkeys$actions$zh.internal(_root);
}

// Path: fileInfo
class Translations$fileInfo$zh extends Translations$fileInfo$en {
	Translations$fileInfo$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => '文件信息';
	@override String get overview => '简介';
	@override String get video => '视频';
	@override String get audio => '音频';
	@override String get subtitles => '字幕';
	@override String get images => '内嵌图片';
	@override String get dataStreams => '数据流';
	@override String get lyrics => '歌词';
	@override String get file => '文件';
	@override String get attachments => '附件';
	@override String get delivery => '传输方式';
	@override String versionCounter({required Object index, required Object count}) => '第 ${index} 个版本，共 ${count} 个';
	@override String fileCounter({required Object index, required Object count}) => '第 ${index} 个文件，共 ${count} 个';
	@override String get noStreams => '服务器报告此文件没有媒体流。';
	@override String get copyPath => '复制路径';
	@override String get pathCopied => '文件路径已复制';
	@override String get codec => '编解码器';
	@override String get codecTag => '编码器标签';
	@override String get resolution => '分辨率';
	@override String get codedResolution => '编码分辨率';
	@override String get bitrate => '比特率';
	@override String get frameRate => '帧率';
	@override String get rotation => '旋转';
	@override String get comment => '注释';
	@override String get audioDescription => '音频描述';
	@override String get headerCompression => '头部压缩';
	@override String get sidecarFile => '外挂文件';
	@override String get transportTimestamp => '传输时间戳';
	@override String get displayOffset => '显示偏移';
	@override String get previewFailureCode => '预览失败代码';
	@override String get previewRetries => '预览重试次数';
	@override String get aspectRatio => '宽高比';
	@override String get pixelAspectRatio => '像素宽高比';
	@override String get profile => '编码配置';
	@override String get level => '级别';
	@override String get bitDepth => '位深度';
	@override String get pixelFormat => '像素格式';
	@override String get colorSpace => '色彩空间';
	@override String get colorRange => '色彩范围';
	@override String get colorPrimaries => '色彩基色';
	@override String get colorTransfer => '色彩转换';
	@override String get chromaSubsampling => '色度子采样';
	@override String get chromaLocation => '色度位置';
	@override String get scanType => '扫描类型';
	@override String get interlaced => '隔行扫描';
	@override String get anamorphic => '变形宽银幕';
	@override String get referenceFrames => '参考帧';
	@override String get dynamicRange => '动态范围';
	@override String get dolbyVision => 'Dolby Vision';
	@override String get dolbyVisionLevel => 'Dolby Vision 级别';
	@override String get dolbyVisionVersion => 'Dolby Vision 版本';
	@override String get dolbyVisionLayers => 'Dolby Vision 图层';
	@override String get baseLayerCompatibility => '基础层兼容性';
	@override String get avcBitstream => 'AVC 比特流';
	@override String get nalLengthSize => 'NAL 长度';
	@override String get scalingMatrix => '自定义缩放矩阵';
	@override String get streamIdentifier => '流标识符';
	@override String get streamIndex => '流索引';
	@override String get streamId => '流 ID';
	@override String get language => '语言';
	@override String get languageCode => '语言代码';
	@override String get streamTitle => '轨道标题';
	@override String get channels => '声道';
	@override String get sampleRate => '采样率';
	@override String get spatialAudio => '空间音频';
	@override String get textBased => '基于文本';
	@override String get subtitleFormat => '外挂文件格式';
	@override String get provider => '提供方';
	@override String get matchScore => '匹配分数';
	@override String get externalDelivery => '可单独提供';
	@override String get sidecarPath => '外挂文件路径';
	@override String get sourceStream => '复制来源';
	@override String get temporary => '临时';
	@override String get timeBase => '时间基准';
	@override String get overallBitrate => '总比特率';
	@override String get path => '路径';
	@override String get fileName => '文件名';
	@override String get size => '大小';
	@override String get totalSize => '总大小';
	@override String get container => '容器';
	@override String get duration => '时长';
	@override String get previewThumbnails => '预览缩略图';
	@override String get previewIndex => '预览索引';
	@override String get packetLength => '数据包长度';
	@override String get filePresent => '文件存在';
	@override String get fileReadable => '服务器可读';
	@override String get streamPath => '流路径';
	@override String get optimizedForStreaming => '已针对流式传输优化';
	@override String get has64bitOffsets => '64 位偏移量';
	@override String get protocol => '协议';
	@override String get mediaType => '媒体类型';
	@override String get sourceKind => '来源类型';
	@override String get optimizedVersion => '优化版本';
	@override String get optimizationTarget => '优化目标';
	@override String get deletedAt => '已删除';
	@override String get remoteSource => '远程来源';
	@override String get infiniteStream => '无限流';
	@override String get directPlay => '直接播放';
	@override String get directStream => '直接串流';
	@override String get transcoding => '转码';
	@override String get etag => 'ETag';
	@override String get versionId => '版本 ID';
	@override String get fileId => '文件 ID';
	@override String get defaultAudioTrack => '默认音轨';
	@override String get defaultSubtitleTrack => '默认字幕轨道';
	@override String get subtitlesOff => '关闭';
	@override String get flagDefault => '默认';
	@override String get flagForced => '强制';
	@override String get flagSelected => '已选';
	@override String get flagExternal => '外部';
	@override String get flagHearingImpaired => '听障辅助';
	@override String get flagDub => '配音';
	@override String get flagOriginal => '原声';
	@override String get channelsMono => '单声道';
	@override String dolbyVisionProfile({required Object profile}) => '编码配置 ${profile}';
}

// Path: mediaMenu
class Translations$mediaMenu$zh extends Translations$mediaMenu$en {
	Translations$mediaMenu$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get markAsWatched => '标记为已观看';
	@override String get markAsUnwatched => '标记为未观看';
	@override String get clearProgress => '明显的进展';
	@override String get removeFromContinueWatching => '从继续观看中移除';
	@override String get viewDetails => '查看详情';
	@override String get goToSeries => '前往剧集';
	@override String get shufflePlay => '随机播放';
	@override String get shuffleNotAvailableOffline => '离线时无法随机播放';
	@override String get fileInfo => '文件信息';
	@override String get deleteEpisodeFromServer => '从服务器删除单集';
	@override String get deleteSeasonFromServer => '从服务器删除季度';
	@override String get deleteShowFromServer => '从服务器删除剧集';
	@override String get deleteMovieFromServer => '从服务器删除电影';
	@override String get deleteEpisodeTitle => '删除这个单集？';
	@override String get deleteSeasonTitle => '删除这一季度？';
	@override String get deleteShowTitle => '删除这部剧集？';
	@override String get deleteMovieTitle => '删除这部电影？';
	@override String get deleteEpisodeConfirm => '删除单集';
	@override String get deleteSeasonConfirm => '删除季度';
	@override String get deleteShowConfirm => '删除剧集';
	@override String get deleteMovieConfirm => '删除电影';
	@override String get deleteAnyway => '仍然删除';
	@override String confirmDeleteTarget({required Object title}) => '从你的服务器永久删除 ${title}？';
	@override String get deleteMultipleWarning => '这包括所有剧集及其文件。';
	@override String deleteEpisodeCountWarning({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n,
		one: '这将删除其中的所有 ${n} 剧集及其文件。',
		other: '这将删除其中全部 ${n} 集以及它们的文件。',
	);
	@override String deleteMultiPartWarning({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n,
		one: '该项目存储为 ${n} 文件，该文件将被删除。',
		other: '此项目存储在 ${n} 个文件中，所有这些文件都会被删除。',
	);
	@override String deleteSharedFileHeading({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n,
		one: '${n} 其他剧集存储在同一文件中，也将被删除：',
		other: '另外 ${n} 集存储在同一个文件中，也会一并删除：',
	);
	@override String get deleteScopeUnverifiedProbeFailed => 'Luroka 无法确认此操作会删除哪些文件，因此删除范围可能超出上面提到的项目。请取消后重试，或仍然删除。';
	@override String get deleteScopeUnverifiedNoFileInfo => '你的服务器没有提供此项目的文件详情，因此 Luroka 无法确认此操作会删除哪些文件。删除范围可能超出上面提到的项目。';
	@override String get mediaDeletedSuccessfully => '媒体项已成功删除';
	@override String get mediaFailedToDelete => '删除媒体项失败';
	@override String get rate => '评分';
	@override String get playFromBeginning => '从头播放';
	@override String get playVersion => '播放版本…';
}

// Path: rateSheet
class Translations$rateSheet$zh extends Translations$rateSheet$en {
	Translations$rateSheet$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => '评分';
	@override String get server => '服务器';
	@override String get favorite => '收藏';
	@override String get favorited => '已收藏';
	@override String get saved => '已保存';
	@override String get notAvailable => '未找到匹配项';
	@override String get noConnectedServices => '在设置中连接服务，即可在此评分。';
}

// Path: accessibility
class Translations$accessibility$zh extends Translations$accessibility$en {
	Translations$accessibility$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String mediaCardMovie({required Object title}) => '${title}, 电影';
	@override String mediaCardShow({required Object title}) => '${title}, 电视剧';
	@override String mediaCardEpisode({required Object title, required Object episodeInfo}) => '${title}, ${episodeInfo}';
	@override String mediaCardSeason({required Object title, required Object seasonInfo}) => '${title}, ${seasonInfo}';
	@override String get mediaCardWatched => '已观看';
	@override String mediaCardPartiallyWatched({required Object percent}) => '已观看 ${percent}%';
	@override String get mediaCardUnwatched => '未观看';
	@override String get tapToPlay => '点击播放';
	@override String get decrease => '减小';
	@override String get increase => '增大';
	@override String decreaseValue({required Object label}) => '减小${label}';
	@override String increaseValue({required Object label}) => '增大${label}';
	@override String get hue => '色相';
	@override String get saturation => '饱和度';
	@override String get brightness => '亮度';
	@override String get hexColor => '十六进制颜色';
	@override String get expandText => '展开文本';
	@override String get collapseText => '折叠文本';
	@override String get alphabetNavigation => '字母导航';
	@override String get alphabetScrollHint => '上下滑动以按字母移动';
	@override String rowColumnPosition({required Object row, required Object rowCount, required Object column, required Object columnCount}) => '第 ${row} 行，共 ${rowCount} 行；第 ${column} 列，共 ${columnCount} 列';
	@override String rowPosition({required Object row, required Object rowCount}) => '第 ${row} 行，共 ${rowCount} 行';
	@override String get autoScrollPlay => '开始自动滚动';
	@override String get autoScrollPause => '暂停自动滚动';
	@override String get hueShort => 'H';
	@override String get saturationShort => 'S';
	@override String get valueShort => 'V';
}

// Path: tooltips
class Translations$tooltips$zh extends Translations$tooltips$en {
	Translations$tooltips$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get shufflePlay => '随机播放';
	@override String get playTrailer => '播放预告片';
	@override String get markAsWatched => '标记为已观看';
	@override String get markAsUnwatched => '标记为未观看';
}

// Path: audioTracks
class Translations$audioTracks$zh extends Translations$audioTracks$en {
	Translations$audioTracks$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String track({required Object n}) => '音轨 ${n}';
}

// Path: videoControls
class Translations$videoControls$zh extends Translations$videoControls$en {
	Translations$videoControls$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get audioLabel => '音频';
	@override String get subtitlesLabel => '字幕';
	@override String addTime({required Object amount, required Object unit}) => '+${amount}${unit}';
	@override String get letterbox => '黑边模式';
	@override String get fillScreen => '填充屏幕';
	@override String get stretch => '拉伸';
	@override String get lockRotation => '锁定旋转';
	@override String get unlockRotation => '解锁旋转';
	@override String get timerActive => '定时器已激活';
	@override String playbackWillPauseIn({required Object duration}) => '播放将在 ${duration} 后暂停';
	@override String get sleepTimerEndOfVideo => '当前视频结束时';
	@override String get sleepTimerStopAtHeader => '停止于';
	@override String get sleepTimerDurationHeader => '定时器';
	@override String get playbackWillPauseAtEnd => '播放将在此视频结束时暂停';
	@override String get stillWatching => '还在看吗？';
	@override String pausingIn({required Object seconds}) => '${seconds} 秒后暂停';
	@override String get continueWatching => '继续';
	@override String get autoPlayNext => '自动播放下一集';
	@override String get playNext => '播放下一集';
	@override String get playButton => '播放';
	@override String get pauseButton => '暂停';
	@override String get playbackPaused => '已暂停';
	@override String get playbackResumed => '正在播放';
	@override String get loadingVideo => '正在加载视频';
	@override String get showPlaybackControls => '显示播放控制项';
	@override String get hidePlaybackControls => '隐藏播放控制项';
	@override String seekBackwardButton({required Object seconds}) => '快退 ${seconds} 秒';
	@override String seekForwardButton({required Object seconds}) => '快进 ${seconds} 秒';
	@override String get previousButton => '上一集';
	@override String get nextButton => '下一集';
	@override String get previousChapterButton => '上一章节';
	@override String get nextChapterButton => '下一章节';
	@override String get muteButton => '静音';
	@override String get unmuteButton => '取消静音';
	@override String get settingsButton => '播放设置';
	@override String get infoButton => '信息';
	@override String get tracksButton => '音频和字幕';
	@override String get chaptersButton => '章节';
	@override String get versionQualityButton => '版本与画质';
	@override String get versionColumnHeader => '版本';
	@override String get qualityColumnHeader => '画质';
	@override String get qualityOriginal => '原始';
	@override String qualityPresetLabel({required Object resolution, required Object bitrate}) => '${resolution}p ${bitrate} Mbps';
	@override String get transcodeUnavailableFallback => '转码不可用 — 以原始画质播放';
	@override String get subtitleUnavailableFallback => '无法加载所选字幕 — 将继续无字幕播放';
	@override String get pipButton => '画中画';
	@override String get aspectRatioButton => '宽高比';
	@override String get ambientLighting => '氛围灯光';
	@override String get fullscreenButton => '进入全屏';
	@override String get exitFullscreenButton => '退出全屏';
	@override String get alwaysOnTopButton => '窗口置顶';
	@override String get rotationLockButton => '旋转锁定';
	@override String get lockScreen => '锁定屏幕';
	@override String get screenLockButton => '屏幕锁定';
	@override String get longPressToUnlock => '长按解锁';
	@override String get timelineSlider => '视频时间轴';
	@override String get volumeSlider => '音量滑块';
	@override String endsAt({required Object time}) => '结束时间：${time}';
	@override String get pipActive => '正在以画中画模式播放';
	@override String get pipFailed => '画中画启动失败';
	@override String get screenshotSaved => '截图已保存';
	@override String get screenshotFailed => '无法截图';
	@override String zoomPercent({required Object percent}) => '缩放 ${percent}%';
	@override String volumePercent({required Object percent}) => '音量 ${percent}%';
	@override late final Translations$videoControls$pipErrors$zh pipErrors = Translations$videoControls$pipErrors$zh.internal(_root);
	@override String get chapters => '章节';
	@override String get noChaptersAvailable => '没有可用的章节';
	@override String get queue => '播放队列';
	@override String get noQueueItems => '队列中没有项目';
	@override String get noAudioDevicesAvailable => '没有可用的音频设备';
	@override String get searchSubtitles => '搜索字幕';
	@override String get language => '语言';
	@override String get noSubtitlesFound => '未找到字幕';
	@override String get subtitleDownloaded => '字幕已下载';
	@override String get subtitleDownloadedNotApplied => '字幕已下载，但无法选择';
	@override String get subtitleDownloadFailed => '字幕下载失败';
	@override String get searchLanguages => '搜索语言…';
	@override String get skipIntro => '跳过片头';
	@override String get skipCredits => '跳过片尾';
	@override String get nextEpisode => '下一集';
	@override String subtitleTrack({required Object n}) => '轨道 ${n}';
	@override String subtitleFile({required Object name}) => '字幕 ${name}';
	@override String forcedTrack({required Object label}) => '${label}（强制）';
	@override String get osdSubtitlesOff => '字幕：关闭';
	@override String osdSubtitles({required Object track}) => '字幕：${track}';
	@override String osdAudio({required Object track}) => '音频：${track}';
}

// Path: messages
class Translations$messages$zh extends Translations$messages$en {
	Translations$messages$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get markedAsWatched => '已标记为已观看';
	@override String get markedAsUnwatched => '已标记为未观看';
	@override String get markedAsWatchedOffline => '已标记为已观看（将在联网时同步）';
	@override String get markedAsUnwatchedOffline => '已标记为未观看（将在联网时同步）';
	@override String autoRemovedWatchedDownload({required Object title}) => '已自动移除：${title}';
	@override String autoRemovedWatchedDownloads({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n,
		one: '自动删除${n}观看下载',
		other: '已自动移除 ${n} 个看过的下载',
	);
	@override String get removedFromContinueWatching => '已从继续观看中移除';
	@override String errorLoading({required Object error}) => '出错：${error}';
	@override String get searchPartialResults => '部分媒体服务器无法搜索。正在显示可用的结果。';
	@override String get streamInterrupted => '视频流已中断。按播放键或拖动进度条重试。';
	@override String get liveStreamInterrupted => '直播流已中断。按播放键重试。';
	@override String get fileInfoNotAvailable => '文件信息不可用';
	@override String get playbackAuthenticationRequired => '请重新登录媒体服务器以播放此项目。';
	@override String get playbackServerUnavailable => '媒体服务器不可用。请稍后重试。';
	@override String get playbackDataInvalid => '服务器返回了无效的播放信息。';
	@override String get playbackCancelled => '播放已取消。';
	@override String get playbackFailed => '无法开始播放。';
	@override String playbackFailedDetail({required Object error}) => '无法开始播放：${error}';
	@override String get audioOutputFailed => '音频输出停止响应。请检查电视或功放的音频连接；如果其他应用也没有声音，请重启设备。';
	@override String get mediaUnavailable => '此内容不再可用。';
	@override String errorLoadingFileInfo({required Object error}) => '加载文件信息时出错：${error}';
	@override String get errorLoadingSeries => '加载剧集时出错';
	@override String get musicNotSupported => '尚不支持播放音乐';
	@override String get noDescriptionAvailable => '暂无描述';
	@override String get noProfilesAvailable => '没有可用的用户资料';
	@override String get contactAdminForProfiles => '请联系服务器管理员添加用户资料';
	@override String get unableToDetermineLibrarySection => '无法确定此项目所属的媒体库';
	@override String get logsCleared => '日志已清除';
	@override String get logsCopied => '日志已复制到剪贴板';
	@override String get noLogsAvailable => '没有可用日志';
	@override String libraryScanning({required Object title}) => '正在扫描“${title}”…';
	@override String libraryScanStarted({required Object title}) => '已开始扫描“${title}”媒体库';
	@override String libraryScanFailed({required Object error}) => '无法扫描媒体库：${error}';
	@override String metadataRefreshing({required Object title}) => '正在刷新“${title}”的元数据…';
	@override String metadataRefreshStarted({required Object title}) => '已开始刷新“${title}”的元数据';
	@override String metadataRefreshFailed({required Object error}) => '无法刷新元数据：${error}';
	@override String get logoutConfirm => '确定要退出登录吗？';
	@override String get logoutDeviceConfirm => '要在此设备上退出 Luroka 吗？所有用户资料（包括儿童资料）、服务器账户和已下载的媒体都将从此设备中移除。您可以稍后重新登录。';
	@override String get noSeasonsFound => '未找到季';
	@override String get seasonsLoadFailed => '无法加载季';
	@override String get noEpisodesFound => '在第一季中未找到剧集';
	@override String get noEpisodesFoundGeneral => '未找到剧集';
	@override String get episodesLoadFailed => '无法加载剧集';
	@override String get noResultsFound => '未找到结果';
	@override String sleepTimerSet({required Object label}) => '睡眠定时器已设置为 ${label}';
	@override String get noItemsAvailable => '没有可用的项目';
	@override String get failedToCreatePlayQueueNoItems => '创建播放队列失败：没有可用项目';
	@override String failedPlayback({required Object action, required Object error}) => '无法执行“${action}”：${error}';
	@override String get switchingToCompatiblePlayer => '正在切换到兼容的播放器…';
	@override String get serverLimitTitle => '播放失败';
	@override String get serverLimitBody => '服务器错误（HTTP 500）。此次会话可能因带宽或转码限制而被拒绝。请联系服务器所有者调整限制。';
	@override String get mediaUnreadableTitle => '文件不可用';
	@override String get mediaUnreadableBody => '服务器找到了此项目，但无法读取其文件（HTTP 404）。文件可能已被移动、删除，或其存储已离线。请联系服务器管理员检查文件并重新扫描媒体库。';
	@override String get serverBusyTitle => '视频流不可用';
	@override String get serverBusyBody => '服务器持续拒绝传输此文件（HTTP 503）。服务器可能正在重启或正忙，也可能是文件所在的存储设备已离线。请稍后重试；如果问题持续出现，请联系服务器所有者检查服务器和文件存储设备。';
	@override String get playbackNotAllowedTitle => '不允许播放';
	@override String get playbackNotAllowedBody => '服务器拒绝传输此项目（HTTP 403）。此账户可能没有播放权限，或服务器可能仅允许在其局域网内播放。';
	@override String get logsUploaded => '日志已上传';
	@override String get logsUploadFailed => '上传日志失败';
	@override String get logId => '日志 ID';
	@override String get burnedSubtitlesUseMenu => '字幕已烧录到此视频流中。请从字幕菜单中更改。';
	@override String get noVideoUrl => '没有可用的视频 URL';
	@override String get playbackNoMediaSources => '服务器未返回可播放的媒体源';
	@override String get playbackDataNotPrepared => '播放数据尚未准备就绪时便开始了播放';
	@override String get streamSelectionUnavailable => '此媒体源不支持选择视频流';
	@override String get streamSelectionFailed => '无法应用所选视频流';
	@override String get trackSelectionNotRemembered => '此轨道选择仅对当前播放生效。';
	@override String get serverUnavailableForProfile => '没有可供当前用户资料使用的服务器';
}

// Path: sourceLibraries
class Translations$sourceLibraries$zh extends Translations$sourceLibraries$en {
	Translations$sourceLibraries$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => '您的服务器和库';
	@override String get description => '选择 Luroka 用于主页、搜索、发现可用性和工作室的库。主行顺序单独定制。';
	@override String get partial => '某些服务器无法检查。您为这些库保存的选择将被保留。刷新再试一次。';
	@override String get loadFailed => '无法加载您的库。检查连接并重试。';
	@override String get notSelected => '在您选择的库中不可用。';
	@override String get checkOthers => '检查其他连接的来源';
	@override String get otherSources => '可在其他连接的来源上使用';
	@override String get playOnce => '玩一次';
	@override String get includeLibrary => '包含这个库';
	@override String get noOthers => '在其他连接的来源上未找到副本。';
	@override String get chooseOne => '至少选择一个库以继续。';
}

// Path: subtitlingStyling
class Translations$subtitlingStyling$zh extends Translations$subtitlingStyling$en {
	Translations$subtitlingStyling$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get text => '文本';
	@override String get border => '边框';
	@override String get background => '背景';
	@override String get fontSize => '字号';
	@override String get textColor => '文本颜色';
	@override String get borderSize => '边框大小';
	@override String get borderColor => '边框颜色';
	@override String get backgroundOpacity => '背景不透明度';
	@override String get backgroundColor => '背景颜色';
	@override String get position => '位置';
	@override String get assOverride => 'ASS 样式覆盖';
	@override String get overrideScale => '缩放';
	@override String get overrideForce => '强制';
	@override String get overrideStrip => '移除样式';
	@override String get positionTop => '顶部';
	@override String get positionBottom => '底部';
	@override String get useMargins => '使用边距';
	@override String get useMarginsDescription => '允许文字字幕显示在视频画面之外的区域。样式字幕可能保留其原始位置。';
	@override String get anchorToScreen => '锚定到屏幕';
	@override String get anchorToScreenDescription => '在宽屏视频下方的黑边中显示文本字幕';
	@override String get bold => '粗体';
	@override String get italic => '斜体';
	@override String get renderResolution => '渲染分辨率';
	@override String get renderResolutionScreen => '屏幕分辨率';
	@override String get renderResolutionVideo => '视频分辨率';
}

// Path: mpvConfig
class Translations$mpvConfig$zh extends Translations$mpvConfig$en {
	Translations$mpvConfig$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => 'mpv 配置';
	@override String get description => '高级视频播放器设置';
	@override String get presets => '预设';
	@override String get noPresets => '没有保存的预设';
	@override String get saveAsPreset => '保存为预设…';
	@override String get presetName => '预设名称';
	@override String get presetNameHint => '输入此预设的名称';
	@override String get loadPreset => '加载';
	@override String get deletePreset => '删除';
	@override String get presetSaved => '预设已保存';
	@override String get presetLoaded => '预设已加载';
	@override String get presetDeleted => '预设已删除';
	@override String get confirmDeletePreset => '确定要删除此预设吗？';
	@override String get configPlaceholder => 'gpu-api=vulkan\nhwdec=auto\n# comment';
	@override String get lineHint => 'option=value';
	@override String get addLine => '添加行';
	@override String get removeLine => '移除行';
	@override String get embeddedVoHint => 'Linux 上会忽略 vo、gpu-context 和 gpu-api：嵌入式视频始终通过视频平面上的 vo=libmpv 渲染，而 gpu-next（ArtCNN 等计算着色器需要它）无法以嵌入式方式运行。';
}

// Path: dialog
class Translations$dialog$zh extends Translations$dialog$en {
	Translations$dialog$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get confirmAction => '确认操作';
}

// Path: profiles
class Translations$profiles$zh extends Translations$profiles$en {
	Translations$profiles$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get manageProfiles => '管理个人资料';
	@override String get quickAccess => '快速访问';
	@override String get signOutDevice => '退出该设备';
	@override String get addLurokaProfile => '添加 Luroka 配置文件';
	@override String get switchingProfile => '正在切换用户资料…';
	@override String get deleteThisProfileTitle => '删除此用户资料？';
	@override String deleteThisProfileMessage({required Object displayName}) => '移除 ${displayName}。连接不会受影响。';
	@override String get active => '当前使用';
	@override String get manage => '管理';
	@override String get delete => '删除';
	@override String get signOut => '退出登录';
	@override String get signOutPlexTitle => '退出 Plex 登录？';
	@override String signOutPlexMessage({required Object displayName}) => '要移除 ${displayName} 和所有 Plex Home 用户吗？可随时重新登录。';
	@override String get signOutPlexDeleteDownloads => '还删除下载';
	@override String get signOutPlexDeleteDownloadsDescription => '否则，它们会保留在此设备上，并在您重新登录此帐户时返回。';
	@override String get signedOutPlex => '已退出 Plex 登录。';
	@override String get signOutFailed => '退出登录失败。';
	@override String get sectionTitle => '用户资料';
	@override String get summarySingle => '添加用户资料，以便同时使用受管理用户和本地用户身份';
	@override String summaryMultipleWithActive({required Object count, required Object activeName}) => '${count} 个用户资料 · 当前：${activeName}';
	@override String summaryMultiple({required Object count}) => '${count} 个用户资料';
	@override String get removeConnectionTitle => '移除连接？';
	@override String removeConnectionMessage({required Object displayName, required Object connectionLabel}) => '移除 ${displayName} 对 ${connectionLabel} 的访问权限。其他用户资料仍可使用此连接。';
	@override String get deleteProfileTitle => '删除用户资料？';
	@override String deleteProfileMessage({required Object displayName}) => '移除 ${displayName} 及其连接。服务器仍可供其他用户资料使用。';
	@override String get profileNameLabel => '用户资料名称';
	@override String get pinProtectionLabel => 'PIN 保护';
	@override String get pinManagedByPlex => 'PIN 由 Plex 管理。在 plex.tv 上编辑。';
	@override String get noPinSetEditOnPlex => '未设置 PIN。如需设置，请在 plex.tv 上编辑 Plex Home 用户。';
	@override String get setPin => '设置 PIN';
	@override String get setPinTitle => '设置 PIN';
	@override String get confirmPinTitle => '确认 PIN';
	@override String get pinSet => '已设置 PIN';
	@override String get changePin => '更改';
	@override String get removePin => '移除';
	@override String get connectionsLabel => '连接';
	@override String get add => '添加';
	@override String get deleteProfileButton => '删除用户资料';
	@override String get noConnectionsHint => '没有连接 — 请添加连接以使用此用户资料。';
	@override String get noConnections => '没有连接';
	@override String get plexHomeAccount => 'Plex Home 账户';
	@override String plexAccountChip({required Object account}) => 'Plex 账户：${account}';
	@override String plexAccountUserChip({required Object account, required Object user}) => '${account} 账户下的 ${user}';
	@override String get connectionDefault => '默认';
	@override String connectionAs({required Object displayName}) => '以 ${displayName} 身份';
	@override String get makeDefault => '设为默认';
	@override String get removeConnection => '移除';
	@override String get profileRenamed => '用户资料已重命名。';
	@override String borrowAddTo({required Object displayName}) => '添加到 ${displayName}';
	@override String get borrowExplain => '使用另一个用户资料的连接。受 PIN 保护的用户资料需要输入 PIN。';
	@override String get borrowEmpty => '暂无可用连接。';
	@override String get borrowEmptySubtitle => '请先将 Plex、Jellyfin 或 Emby 连接到另一个用户资料。';
	@override String get borrowLoadFailed => '无法加载可用连接。请重试。';
	@override String borrowFromProfile({required Object displayName}) => '来自 ${displayName}';
	@override String get borrowConnectionBorrowed => '连接已添加。';
	@override String get borrowFailed => '无法添加连接。';
	@override String get incorrectPin => 'PIN 不正确。';
	@override String get incorrectPinTryAgain => 'PIN 不正确。请重试。';
	@override String get sourceProfileMissingParentAccount => '源用户资料缺少关联的主账户。';
	@override String get failedToLoadHomeUsers => '无法加载您的 Plex Home 用户。请检查网络连接后重试。';
	@override String get failedToVerifyPin => '无法验证 PIN。';
	@override String get newProfile => '新建用户资料';
	@override String get profileNameHint => '例如：访客、儿童、客厅';
	@override String get pinProtectionOptional => 'PIN 保护（可选）';
	@override String get pinExplain => '切换用户资料时需要输入 4 位 PIN。';
	@override String get continueButton => '继续';
	@override String get pinsDontMatch => 'PIN 不匹配';
	@override String get tokenIdentityMismatch => 'Plex 用户资料令牌解析到了非预期服务器';
}

// Path: connections
class Translations$connections$zh extends Translations$connections$en {
	Translations$connections$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get sectionTitle => '连接';
	@override String get addConnection => '添加连接';
	@override String get addConnectionSubtitleNoProfile => '使用 Plex 登录，或连接 Jellyfin 或 Emby 服务器';
	@override String addConnectionSubtitleScoped({required Object displayName}) => '添加到 ${displayName}：Plex、Jellyfin、Emby，或其他用户资料的连接';
	@override String sessionExpiredOne({required Object name}) => '${name} 的会话已过期';
	@override String sessionExpiredMany({required Object count}) => '${count} 个服务器的会话已过期';
	@override String accessDeniedOne({required Object name}) => '${name} 拒绝此账户访问';
	@override String accessDeniedMany({required Object count}) => '${count} 台服务器拒绝此账户访问';
	@override String get signInAgain => '重新登录';
	@override String editMediaBrowserTitle({required Object product}) => '编辑 ${product} 连接';
	@override String editMediaBrowserIntro({required Object serverName}) => '为 ${serverName} 添加或移除 URL。Luroka 会使用延迟最低且可访问的 URL。';
}

// Path: serversAccounts
class Translations$serversAccounts$zh extends Translations$serversAccounts$en {
	Translations$serversAccounts$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => '服务器和帐户';
	@override String get subtitle => 'Plex、Jellyfin 和 Emby 服务器的登录状态';
	@override String get online => '在线';
	@override String get offline => '离线';
	@override String get unknown => '此处未登录';
	@override String get usedByNone => '未被任何配置文件使用';
	@override String usedByOne({required Object name}) => '由 ${name} 使用';
	@override String usedByMany({required Object name, required Object count}) => '${name} 和 ${count} 更多使用';
	@override String serversOnline({required Object total, required Object online}) => '${total}服务器的${online}在线';
	@override String get noServers => '还没有任何连接。添加您的 Plex 帐户或 Jellyfin 或 Emby 服务器。';
	@override String get editUrls => '编辑服务器 URL';
}

// Path: accountPreferences
class Translations$accountPreferences$zh extends Translations$accountPreferences$en {
	Translations$accountPreferences$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get sectionTitle => '账户偏好';
	@override String hubSubtitleSingle({required Object account}) => '音频、字幕和媒体库选项已保存在 ${account} 上';
	@override String hubSubtitleMultiple({required Object count}) => '音频、字幕和媒体库选项已保存在 ${count} 个账户上';
	@override String get pickAccount => '每个账户都保存自己的偏好设置。选择要编辑的账户。';
	@override String get storedOnAccount => '这些设置保存在服务器账户中，使用该账户的所有 Luroka 用户资料和应用都会共享，包括其他设备上的应用。';
	@override String get noAccounts => '没有可配置的账户';
	@override String get noAccountsHint => '登录 Plex，或连接 Jellyfin 或 Emby 服务器，该账户上保存的偏好设置就会显示在这里。';
	@override String get unavailable => '无法访问此账户';
	@override String get loadFailed => '无法加载这些偏好设置';
	@override String get noPreference => '无偏好';
	@override String get notSet => '未设置';
	@override late final Translations$accountPreferences$groups$zh groups = Translations$accountPreferences$groups$zh.internal(_root);
	@override String get preferredAudioLanguage => '首选音频语言';
	@override String get autoSelectAudio => '按语言选择音频';
	@override String get autoSelectAudioDescription => '关闭后保留文件标记为默认的音轨。';
	@override String get preferredSubtitleLanguage => '首选字幕语言';
	@override String get subtitleMode => '开启字幕';
	@override late final Translations$accountPreferences$subtitleModes$zh subtitleModes = Translations$accountPreferences$subtitleModes$zh.internal(_root);
	@override String get subtitleAccessibility => 'SDH 字幕';
	@override late final Translations$accountPreferences$subtitleAccessibilityOptions$zh subtitleAccessibilityOptions = Translations$accountPreferences$subtitleAccessibilityOptions$zh.internal(_root);
	@override String get forcedSubtitles => '强制字幕';
	@override late final Translations$accountPreferences$forcedSubtitleOptions$zh forcedSubtitleOptions = Translations$accountPreferences$forcedSubtitleOptions$zh.internal(_root);
	@override String get displayMissingEpisodes => '显示缺失剧集';
	@override String get displayMissingEpisodesDescription => '列出服务器知道但没有对应文件的剧集。';
	@override String get hidePlayedInLatest => '在“最新”中隐藏已观看项目';
	@override String get hidePlayedInLatestDescription => '将你已经看过的项目从服务器的“最新”列表中移除。';
	@override String get displayCollectionsView => '显示合集视图';
	@override String get displayCollectionsViewDescription => '在媒体库之外提供服务器的合集视图。';
	@override String get rewatchingInNextUp => '在“接下来”中保留重看的剧集';
	@override String get rewatchingInNextUpDescription => '看完一部剧集后再次开始观看时，“接下来”会跟随重看进度，而不是将剧集移除。';
	@override String get watchedIndicator => '已观看标记';
	@override late final Translations$accountPreferences$watchedIndicatorOptions$zh watchedIndicatorOptions = Translations$accountPreferences$watchedIndicatorOptions$zh.internal(_root);
	@override String get mediaReviewsVisibility => '评分与评论';
	@override late final Translations$accountPreferences$mediaReviewsOptions$zh mediaReviewsOptions = Translations$accountPreferences$mediaReviewsOptions$zh.internal(_root);
}

// Path: discover
class Translations$discover$zh extends Translations$discover$en {
	Translations$discover$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => '发现';
	@override String get noContentAvailable => '没有可用内容';
	@override String get addMediaToLibraries => '请向你的媒体库添加一些媒体';
	@override String get continueWatching => '继续观看';
	@override String continueWatchingIn({required Object library}) => '${library} 中继续观看';
	@override String get nextUp => '接下来';
	@override String nextUpIn({required Object library}) => '${library} 中接下来';
	@override String get recentlyAdded => '最近添加';
	@override String recentlyAddedIn({required Object library}) => '${library} 中最近添加';
	@override String latestAlbumsIn({required Object library}) => '${library} 中的最新专辑';
	@override String recentlyPlayedIn({required Object library}) => '${library} 中最近播放';
	@override String mostPlayedIn({required Object library}) => '${library} 中最常播放';
	@override String playEpisode({required Object season, required Object episode}) => 'S${season}E${episode}';
	@override String get overview => '概述';
	@override String get cast => '演员表';
	@override String get extras => '预告片与花絮';
	@override String get studio => '制作公司';
	@override String get rating => '年龄分级';
	@override String get director => '导演';
	@override String get directors => '导演';
	@override String get movie => '电影';
	@override String get tvShow => '电视剧';
	@override String minutesLeft({required Object minutes}) => '剩余 ${minutes} 分钟';
	@override String get moreLikeThis => '更多类似内容';
	@override String titleCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n,
		one: '${n} 标题',
		other: '${n} 个标题',
	);
	@override late final Translations$discover$person$zh person = Translations$discover$person$zh.internal(_root);
}

// Path: errors
class Translations$errors$zh extends Translations$errors$en {
	Translations$errors$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String searchFailed({required Object error}) => '搜索失败：${error}';
	@override String get searchUnavailable => '搜索无法连接任何媒体服务器。';
	@override String connectionTimeout({required Object context}) => '加载 ${context} 时连接超时';
	@override String get connectionFailed => '无法连接到媒体服务器';
	@override String unableToLoad({required Object context}) => '无法加载${context}。请重试。';
	@override String get noClientAvailable => '没有可用客户端';
	@override String get pleaseEnterToken => '请输入一个令牌';
	@override String get invalidToken => '令牌无效';
	@override String failedToVerifyToken({required Object error}) => '无法验证令牌：${error}';
	@override String failedToSwitchProfile({required Object displayName}) => '无法切换到 ${displayName}';
	@override String failedToDeleteProfile({required Object displayName}) => '无法删除 ${displayName}';
	@override String get failedToRate => '无法更新评分';
	@override String get reasonTimedOut => '连接超时';
	@override String get reasonUnreachable => '无法连接到服务器';
	@override String get reasonRefused => '服务器拒绝了此请求';
	@override String get reasonNotFound => '该项目已不在服务器上';
	@override String get reasonServerError => '服务器报告了一个错误';
	@override String get reasonCancelled => '请求已取消';
	@override String get reasonUnexpected => '发生了意外错误';
}

// Path: libraries
class Translations$libraries$zh extends Translations$libraries$en {
	Translations$libraries$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => '媒体库';
	@override String get fallbackTitle => '媒体库';
	@override String get scanLibraryFiles => '扫描媒体库文件';
	@override String get scanLibrary => '扫描媒体库';
	@override String get analyze => '分析';
	@override String get analyzeLibrary => '分析媒体库';
	@override String get refreshMetadata => '刷新元数据';
	@override String get emptyTrash => '清空回收站';
	@override String emptyingTrash({required Object title}) => '正在清空“${title}”的回收站…';
	@override String trashEmptied({required Object title}) => '已清空“${title}”的回收站';
	@override String failedToEmptyTrash({required Object error}) => '无法清空回收站：${error}';
	@override String analyzing({required Object title}) => '正在分析“${title}”…';
	@override String analysisStarted({required Object title}) => '已开始分析“${title}”';
	@override String failedToAnalyze({required Object error}) => '无法分析媒体库：${error}';
	@override String get noLibrariesFound => '未找到媒体库';
	@override String get allLibrariesHidden => '所有媒体库已隐藏';
	@override String hiddenLibrariesCount({required Object count}) => '已隐藏的媒体库 (${count})';
	@override String get thisLibraryIsEmpty => '此媒体库为空';
	@override String get noItemsMatchFilters => '没有项目符合当前筛选条件';
	@override String get resetFilters => '重置筛选条件';
	@override String get all => '全部';
	@override String get clearAll => '全部清除';
	@override String scanLibraryConfirm({required Object title}) => '确定要扫描“${title}”吗？';
	@override String analyzeLibraryConfirm({required Object title}) => '确定要分析“${title}”吗？';
	@override String refreshMetadataConfirm({required Object title}) => '确定要刷新“${title}”的元数据吗？';
	@override String emptyTrashConfirm({required Object title}) => '确定要清空“${title}”的回收站吗？';
	@override String get manageLibraries => '管理媒体库';
	@override String get sort => '排序';
	@override String get sortBy => '排序依据';
	@override String get filters => '筛选';
	@override String get confirmActionMessage => '确定要执行此操作吗？';
	@override String get showLibrary => '显示媒体库';
	@override String get hideLibrary => '隐藏媒体库';
	@override String get libraryOptions => '媒体库选项';
	@override String get content => '媒体库内容';
	@override String get selectLibrary => '选择媒体库';
	@override String filtersWithCount({required Object count}) => '筛选器（${count}）';
	@override String get noRecommendations => '暂无推荐';
	@override String get noCollections => '此媒体库中没有合集';
	@override String get noFoldersFound => '未找到文件夹';
	@override String get folders => '文件夹';
	@override late final Translations$libraries$tabs$zh tabs = Translations$libraries$tabs$zh.internal(_root);
	@override late final Translations$libraries$groupings$zh groupings = Translations$libraries$groupings$zh.internal(_root);
	@override late final Translations$libraries$filterCategories$zh filterCategories = Translations$libraries$filterCategories$zh.internal(_root);
	@override late final Translations$libraries$sortLabels$zh sortLabels = Translations$libraries$sortLabels$zh.internal(_root);
	@override late final Translations$libraries$advancedFilters$zh advancedFilters = Translations$libraries$advancedFilters$zh.internal(_root);
}

// Path: about
class Translations$about$zh extends Translations$about$en {
	Translations$about$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => '关于';
	@override String get openSourceLicenses => '开源许可证';
	@override String versionLabel({required Object version}) => '版本 ${version}';
	@override String get appDescription => '一款精美的 Flutter Plex、Jellyfin 和 Emby 客户端';
	@override String get customSource => '源代码';
	@override String get basedOnLuroka => '基于 Plezy 代码库构建';
	@override String get viewLicensesDescription => '查看第三方库的许可证';
	@override String get appSection => '应用程序';
	@override String get communitySection => '社区';
	@override String get creditsSection => '制作人员';
	@override String get legalSection => '法律';
	@override String versionMeta({required Object version, required Object build, required Object platform}) => 'v${version} (${build}) · ${platform}';
	@override String versionMetaNoBuild({required Object version, required Object platform}) => 'v${version} · ${platform}';
	@override String get versionUnavailable => '版本不可用';
	@override String get versionDetails => '版本详情';
	@override String versionDetailsTitle({required Object version, required Object build}) => 'Luroka ${version} (${build})';
	@override String platformLine({required Object platform}) => '平台：${platform}';
	@override String deviceLine({required Object model}) => '设备：${model}';
	@override String packageLine({required Object package}) => '封装：${package}';
	@override String localeLine({required Object locale}) => '语言：${locale}';
	@override String get copyDetails => '复制详细信息';
	@override String get detailsCopied => '已复制应用程序详细信息';
	@override String get detailsCopyFailed => '无法复制应用详细信息';
	@override String get checkForUpdatesDescription => '检查 GitHub 是否有更新版本';
	@override String get checkingForUpdates => '正在检查更新...';
	@override String get whatsNew => '有什么新消息';
	@override String get releaseNotesUnavailable => '没有可用的发行说明。';
	@override String get sourceCodeDescription => 'GitHub 上的 Luroka';
	@override String get reportIssue => '报告问题';
	@override String get reportIssueDescription => '告诉我们出了什么问题';
	@override String get documentation => '文档';
	@override String get documentationDescription => '设置、功能和构建说明';
	@override String get upstreamProjectDescription => 'edde746 和贡献者的开源项目';
	@override String get upstreamWebsite => '上游网站';
	@override String get attribution => '数据和归因';
	@override String get attributionDescription => '元数据、评级和商标';
	@override String get attributionBody => '本产品使用 TMDB API，但未经 TMDB 认可或认证。流行度列表、元数据和 IMDb 评级由 Cinemeta 提供。乐谱保留其来源标签。';
	@override String get trademarkNotices => 'Plex、Jellyfin、Emby、Trakt、Simkl、MyAnimeList、AniList、TMDB 及相关标记是其各自所有者的商标。 Luroka 不隶属于他们，也不受他们认可。';
	@override String get privacyPolicy => '隐私政策';
	@override String get privacyPolicyDescription => '如何处理您的数据';
	@override String get gplLicense => 'GNU GPL-3.0 许可证';
	@override String get gplLicenseDescription => 'Luroka是免费软件';
	@override String get linkOpenFailed => '无法打开此链接';
	@override String get opensInBrowser => '在浏览器中打开';
	@override String get footer => 'Luroka 是 GPL-3.0 下的自由软件。';
	@override String copyright({required Object year}) => '© ${year} Luroka 贡献者';
}

// Path: serverSelection
class Translations$serverSelection$zh extends Translations$serverSelection$en {
	Translations$serverSelection$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String noServersFoundForAccount({required Object username, required Object email}) => '未找到 ${username}（${email}）的服务器';
	@override String failedToLoadServers({required Object error}) => '无法加载服务器：${error}';
	@override String get noValidServers => '此账号下未找到可用的服务器';
}

// Path: hubDetail
class Translations$hubDetail$zh extends Translations$hubDetail$en {
	Translations$hubDetail$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => '标题';
	@override String get releaseYear => '发行年份';
	@override String get dateAdded => '添加日期';
	@override String get rating => '评分';
	@override String get noItemsFound => '未找到项目';
}

// Path: logs
class Translations$logs$zh extends Translations$logs$en {
	Translations$logs$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get clearLogs => '清除日志';
	@override String get copyLogs => '复制日志';
	@override String get uploadLogs => '上传日志';
}

// Path: startup
class Translations$startup$zh extends Translations$startup$en {
	Translations$startup$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get failedTitle => 'Luroka 无法启动';
	@override String get failedBody => '启动过程中出现问题。以下详情指出了失败的原因。';
	@override String get failedBodyRepairable => 'Luroka 的已保存设置文件已损坏，必须先重建才能启动。重试没有用——请选择“修复存储”。';
	@override String get phaseLabel => '步骤';
	@override String get showDetails => '显示详情';
	@override String get hideDetails => '隐藏详情';
	@override String get copyDetails => '复制详情';
	@override String get detailsCopied => '详情已复制到剪贴板';
	@override String get uploadDetails => '上传详情';
	@override String get repairStorage => '修复存储';
	@override String get repairTitle => '修复已存储的数据？';
	@override String get repairBodyCommon => 'Luroka 的设置文件已损坏且无法读取。修复会将所有设置重置为默认值。';
	@override String get repairBodyOneCredential => '有一项已保存的登录信息已损坏且无法读取。修复只会移除这一项，其他设置保持不变。';
	@override String get repairBodySignInsKept => '你的服务器和个人资料应保持登录状态。';
	@override String get repairBodySignInsLost => '保护已保存登录信息的密钥无法从此文件中恢复，因此你需要重新登录每个服务器和个人资料。媒体服务器上的内容不受影响。';
	@override String get repairBodySessionsUncertain => '追踪服务（MAL、AniList、Simkl、Trakt）和 Seerr 是分开存储的，可能保留也可能无法保留。Luroka 会明确告诉你保留了哪些。';
	@override String get repairConfirm => '修复';
	@override String get repairSucceeded => '存储已修复';
	@override String get repairNeedsRestart => '存储已修复 — 需要重启';
	@override String get restartRequiredBody => '你的数据已修复，但 Luroka 需要重新启动后才能使用。请关闭 Luroka 并重新打开。';
	@override String get quitLuroka => '退出 Luroka';
	@override String get repairFailed => '修复失败';
	@override String get repairKeptSignIns => '你的服务器和个人资料仍然保持登录状态。';
	@override String get repairLostSignIns => '保护已保存登录信息的密钥无法恢复。你需要重新登录每个服务器和个人资料。';
	@override String get repairLostSessions => '至少有一个追踪服务或 Seerr 连接已丢失，需要重新连接。';
	@override String get backupTitle => '已保留损坏文件的副本';
	@override String get backupWarning => '其中包含你的登录凭据。请勿上传或分享。';
	@override String get deleteBackup => '删除副本';
	@override String get backupDeleted => '副本已删除。';
	@override String get previousFailureTitle => 'Luroka 上次启动失败';
}

// Path: licenses
class Translations$licenses$zh extends Translations$licenses$en {
	Translations$licenses$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get relatedPackages => '相关软件包';
	@override String get license => '许可证';
	@override String licenseNumber({required Object number}) => '许可证 ${number}';
	@override String licensesCount({required Object count}) => '${count} 个许可证';
	@override String get searchHint => '搜索包';
	@override String noResults({required Object query}) => '没有包匹配“${query}”';
	@override String get clearSearch => '清除搜索';
}

// Path: navigation
class Translations$navigation$zh extends Translations$navigation$en {
	Translations$navigation$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get libraries => '媒体库';
	@override String get downloads => '下载';
	@override String get liveTv => '直播电视';
	@override String get explore => '探索';
}

// Path: explore
class Translations$explore$zh extends Translations$explore$en {
	Translations$explore$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => '探索';
	@override String get selectSource => '选择来源';
	@override late final Translations$explore$rows$zh rows = Translations$explore$rows$zh.internal(_root);
	@override late final Translations$explore$status$zh status = Translations$explore$status$zh.internal(_root);
	@override String episodeCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n,
		one: '${n} 剧集',
		other: '${n} 集',
	);
	@override String get cast => '演员表';
	@override String get characters => '角色';
	@override String get addToWatchlist => '添加到想看列表';
	@override String get removeFromWatchlist => '从想看列表移除';
	@override String get addedToWatchlist => '已加入待看列表';
	@override String get removedFromWatchlist => '已从待看列表中移除';
	@override String get watchlistUpdateFailed => '无法更新想看列表';
	@override String get watchlistNoMatch => '无法将此项目与待看列表匹配';
	@override String get notInLibrary => '不在你的媒体库中';
	@override String get inTheseLibraries => '在这些媒体库中';
	@override String get checkingLibrary => '正在检查你的媒体库…';
	@override String libraryCheckFailed({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n,
		one: '无法检查 ${n} 服务器',
		other: '无法检查 ${n} 台服务器',
	);
	@override String get emptyTitle => '这里还什么都没有';
	@override String emptyMessage({required Object source}) => '当 ${source} 有内容时，相关内容将显示在这里。';
	@override String searchHint({required Object source}) => '搜索 ${source}';
	@override String searchEmpty({required Object query}) => '没有“${query}”的结果';
	@override String searchPrompt({required Object source}) => '在 ${source} 上搜索电影和剧集。';
	@override String get searchFailed => '搜索失败。请检查网络连接后重试。';
	@override late final Translations$explore$badge$zh badge = Translations$explore$badge$zh.internal(_root);
	@override late final Translations$explore$stats$zh stats = Translations$explore$stats$zh.internal(_root);
	@override late final Translations$explore$season$zh season = Translations$explore$season$zh.internal(_root);
	@override late final Translations$explore$format$zh format = Translations$explore$format$zh.internal(_root);
	@override late final Translations$explore$sourceMaterial$zh sourceMaterial = Translations$explore$sourceMaterial$zh.internal(_root);
	@override late final Translations$explore$creditRole$zh creditRole = Translations$explore$creditRole$zh.internal(_root);
	@override late final Translations$explore$relation$zh relation = Translations$explore$relation$zh.internal(_root);
	@override String broadcast({required Object day, required Object time}) => '每周${day} ${time}播出';
	@override String broadcastWithZone({required Object day, required Object time, required Object timezone}) => '每周${day} ${time} ${timezone}播出';
	@override late final Translations$explore$detail$zh detail = Translations$explore$detail$zh.internal(_root);
	@override String totalResults({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n,
		one: '${n} 结果',
		other: '${n} 条结果',
	);
}

// Path: liveTv
class Translations$liveTv$zh extends Translations$liveTv$en {
	Translations$liveTv$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => '直播电视';
	@override String get guide => '节目指南';
	@override String get noChannels => '没有可用的频道';
	@override String get noDvr => '没有服务器配置 DVR';
	@override String get serverUnavailable => '直播电视服务器不可用。';
	@override String get serverNotConnected => '直播电视服务器未连接。';
	@override String get noPrograms => '没有可用的节目数据';
	@override String get liveStreamFailed => '直播流失败';
	@override String get unknownProgram => '未知节目';
	@override String get unknownHub => '未知';
	@override String get unknownError => '未知错误';
	@override String channelNumber({required Object number}) => '频道 ${number}';
	@override String get unknownChannel => '未知频道';
	@override String get live => '直播';
	@override String get reloadGuide => '重新加载节目指南';
	@override String get searchGuide => '搜索节目指南';
	@override String get searchHint => '搜索频道和节目';
	@override String searchNoResults({required Object query}) => '没有与“${query}”匹配的结果';
	@override String get channelsSection => '频道';
	@override String get programsSection => '节目';
	@override String get now => '现在';
	@override String get today => '今天';
	@override String get tomorrow => '明天';
	@override String get midnight => '午夜';
	@override String get overnight => '凌晨';
	@override String get morning => '上午';
	@override String get daytime => '白天';
	@override String get evening => '晚上';
	@override String get lateNight => '深夜';
	@override String get whatsOn => '正在播出';
	@override String get watchChannel => '观看频道';
	@override String get favorites => '收藏';
	@override String get reorderFavorites => '重新排序收藏';
	@override String get noFavoriteChannels => '没有收藏的频道';
	@override String get noFavoriteChannelsHint => '显示所有频道，然后长按某个频道将其加入收藏。';
	@override String get showAllChannels => '显示所有频道';
	@override String get favoritesLoadFailed => '无法加载收藏。请检查网络连接后重试。';
	@override String get favoritesUpdateFailed => '无法更新收藏。请检查网络连接后重试。';
	@override String get joinSession => '加入正在进行的会话';
	@override String watchFromStart({required Object minutes}) => '从头观看（${minutes}分钟前开始）';
	@override String get watchLive => '观看直播';
	@override String get goToLive => '跳至直播';
	@override String get record => '录制';
	@override String get recordEpisode => '录制单集';
	@override String get recordSeries => '录制系列节目';
	@override String get recordOptions => '录制选项';
	@override String get saveTo => '保存到';
	@override String get recordings => '录制内容';
	@override String get scheduledRecordings => '计划录制';
	@override String get recordingRules => '录制规则';
	@override String get noScheduledRecordings => '没有安排的录制';
	@override String get manageRecording => '管理录制';
	@override String get cancelRecording => '取消录制';
	@override String get cancelRecordingTitle => '取消此次录制？';
	@override String cancelRecordingMessage({required Object title}) => '将不再录制 ${title}。';
	@override String get deleteRule => '删除规则';
	@override String get deleteRuleTitle => '删除录制规则？';
	@override String deleteRuleMessage({required Object title}) => '今后将不再录制 ${title} 的剧集。';
	@override String get recordingScheduled => '录制已安排';
	@override String get alreadyScheduled => '此节目已安排录制';
	@override String get dvrAdminRequired => 'DVR 设置需要管理员账户';
	@override String get recordingFailed => '无法安排录制';
	@override String get recordingTargetMissing => '无法确定录制库';
	@override String get recordNotAvailable => '此节目无法录制';
	@override String get recordingCancelled => '录制已取消';
	@override String get recordingRuleDeleted => '录制规则已删除';
	@override String get processRecordingRules => '重新评估规则';
	@override String get recordingInProgress => '正在录制';
	@override String recordingsCount({required Object count}) => '已安排 ${count} 项录制';
	@override String get editRule => '编辑规则';
	@override String get editRuleAction => '编辑';
	@override String get recordingRuleUpdated => '录制规则已更新';
	@override String get guideReloadRequested => '已请求更新节目指南';
	@override String get guideReloadFailed => '无法刷新节目指南';
	@override String get rulesProcessRequested => '已请求重新评估规则';
	@override String get rulesProcessFailed => '无法重新评估录制规则';
	@override String get recordShow => '录制节目';
	@override late final Translations$liveTv$recordSettings$zh recordSettings = Translations$liveTv$recordSettings$zh.internal(_root);
	@override String startingInMinutes({required Object minutes}) => '${minutes} 分钟后开始';
	@override String dayAtTime({required Object day, required Object time}) => '${day} ${time}';
	@override String invalidPlaybackData({required Object product}) => '${product} 返回了无效的直播电视播放数据';
	@override String get failedToStartChannel => '无法播放直播频道';
	@override String get failedToBuildStreamUrl => '无法生成视频流 URL';
	@override String playbackStartFailed({required Object reason}) => '无法启动该频道：${reason}';
	@override String channelSwitchFailed({required Object reason}) => '无法切换频道：${reason}';
}

// Path: collections
class Translations$collections$zh extends Translations$collections$en {
	Translations$collections$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => '合集';
	@override String get collection => '合集';
	@override String get empty => '合集为空';
	@override String get deleteCollection => '删除合集';
	@override String deleteConfirm({required Object title}) => '要删除“${title}”吗？此操作无法撤销。';
	@override String get deleted => '已删除合集';
	@override String get deleteFailed => '删除合集失败';
	@override String deleteFailedWithError({required Object error}) => '删除合集失败：${error}';
	@override String get selectCollection => '选择合集';
	@override String get collectionName => '合集名称';
	@override String get enterCollectionName => '输入合集名称';
	@override String get addedToCollection => '已添加到合集';
	@override String get errorAddingToCollection => '添加到合集失败';
	@override String get created => '已创建合集';
	@override String get removeFromCollection => '从合集移除';
	@override String removeFromCollectionConfirm({required Object title}) => '将“${title}”从此合集移除？';
	@override String get removedFromCollection => '已从合集移除';
	@override String get removeFromCollectionFailed => '从合集移除失败';
	@override String removeFromCollectionError({required Object error}) => '从合集移除时出错：${error}';
	@override String get searchCollections => '搜索合集…';
}

// Path: playlists
class Translations$playlists$zh extends Translations$playlists$en {
	Translations$playlists$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => '播放列表';
	@override String get playlist => '播放列表';
	@override String get noPlaylists => '未找到播放列表';
	@override String get create => '创建播放列表';
	@override String get playlistName => '播放列表名称';
	@override String get enterPlaylistName => '输入播放列表名称';
	@override String get delete => '删除播放列表';
	@override String get removeItem => '从播放列表中移除';
	@override String get smartPlaylist => '智能播放列表';
	@override String itemCount({required Object count}) => '${count} 个项目';
	@override String get oneItem => '1 个项目';
	@override String get emptyPlaylist => '此播放列表为空';
	@override String get deleteConfirm => '删除播放列表？';
	@override String deleteMessage({required Object name}) => '确定要删除“${name}”吗？';
	@override String get created => '播放列表已创建';
	@override String get deleted => '播放列表已删除';
	@override String get itemAdded => '已添加到播放列表';
	@override String get itemRemoved => '已从播放列表中移除';
	@override String get selectPlaylist => '选择播放列表';
	@override String get searchPlaylists => '搜索播放列表…';
	@override String get errorCreating => '创建播放列表失败';
	@override String get errorDeleting => '删除播放列表失败';
	@override String get errorLoading => '加载播放列表失败';
	@override String get errorAdding => '添加到播放列表失败';
	@override String get errorReordering => '重新排序播放列表项目失败';
	@override String get errorRemoving => '从播放列表中移除失败';
}

// Path: music
class Translations$music$zh extends Translations$music$en {
	Translations$music$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get goToAlbum => '前往专辑';
	@override String get goToArtist => '前往艺术家';
	@override String get instantMix => '即时混合播放';
	@override String get playNext => '下一首播放';
	@override String get addToQueue => '添加到队列';
	@override String discNumber({required Object n}) => '碟片 ${n}';
	@override String trackCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n,
		one: '${n}轨道',
		other: '${n} 首',
	);
	@override String get nowPlaying => '正在播放';
	@override String playingFrom({required Object title}) => '播放来源：${title}';
	@override String get queue => '播放队列';
	@override String get clearQueue => '清空队列';
	@override String get lyrics => '歌词';
	@override String get noLyrics => '暂无歌词';
	@override String get sleepTimer => '睡眠定时器';
	@override String get sleepTimerEndOfTrack => '当前曲目结束时';
	@override String sleepTimerMinutes({required Object n}) => '${n} 分钟';
	@override String get stopPlayback => '停止播放';
	@override String get previousTrack => '上一首';
	@override String get nextTrack => '下一首';
	@override String get repeat => '循环';
	@override String get repeatAll => '列表循环';
	@override String get repeatOne => '单曲循环';
	@override String get instantMixNoServer => '没有可用于即时混合的服务器';
	@override String get instantMixFailed => '加载即时混合失败';
	@override String get instantMixEmpty => '即时混合没有生成任何曲目';
	@override String noAudioUrl({required Object track}) => '没有可供 ${track} 使用的音频 URL';
	@override late final Translations$music$discography$zh discography = Translations$music$discography$zh.internal(_root);
}

// Path: watchTogether
class Translations$watchTogether$zh extends Translations$watchTogether$en {
	Translations$watchTogether$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => '一起看';
	@override String get description => '与朋友和家人同步观看内容';
	@override String get createRoom => '创建房间';
	@override String get creatingRoom => '正在创建房间...';
	@override String get joinRoom => '加入房间';
	@override String get joiningRoom => '正在加入房间...';
	@override String get connecting => '正在连接...';
	@override String get relayPublic => '房间使用公共 Open Watch Party 中继。';
	@override String relayCustom({required Object url}) => '房间使用您的中继 ${url}。';
	@override String get recentRooms => '最近的房间';
	@override String get roomActions => '房间动作';
	@override String get renameRoom => '重命名房间';
	@override String get removeRoom => '移除';
	@override String get enterRoomCode => '输入主机发送的 6 个字符的代码。';
	@override String get roomCode => '房间代码';
	@override String get paste => '粘贴';
	@override String get noCodeInClipboard => '剪贴板不包含房间代码';
	@override String get copyCode => '复制代码';
	@override String get codeCopied => '房间代码已复制';
	@override String get shareInvite => '分享邀请';
	@override String get qrShare => '分享二维码';
	@override String get qrHint => '使用Luroka应用程序扫描即可加入该房间。';
	@override String get phasePlaying => '演奏';
	@override String get phasePaused => '已暂停';
	@override String get phaseWaiting => '等待大家';
	@override String get inviteCopied => '邀请已复制。将其粘贴到消息中。';
	@override String inviteMessage({required Object code}) => '加入我在 Luroka 中的 Watch Together 房间：luroka://watch?code=${code} — 或者打开 Watch Together 并输入 ${code}。';
	@override String get openSessionControls => '打开“一起看”会话控制';
	@override String get reconnecting => '正在重新连接...';
	@override String get reconnectingDescription => '连接断开了。您会自动重新加入房间。';
	@override String get connected => '已连接';
	@override String get disconnected => '已断开连接';
	@override String get youAreHost => '你是主持人';
	@override String hostedBy({required Object name}) => '主持人：${name}';
	@override String get hostControlsPlayback => '主持人控制播放';
	@override String get anyoneCanControl => '任何人都可以控制播放';
	@override String get roomLocked => '房间锁着';
	@override String get nowPlaying => '正在播放';
	@override String get nothingPlaying => '没什么玩的';
	@override String get nothingPlayingHost => '播放任何库中的内容并与房间分享。';
	@override String get nothingPlayingGuest => '当主持人播放某些内容时，它会在此处打开。';
	@override String get notShareable => '该视频没有目录匹配，因此只有有权访问同一服务器的人才能播放。';
	@override String get searching => '在您的图书馆中寻找此视频...';
	@override String get yourCopy => '你的副本';
	@override String get sharingYourCopy => '您正在分享您的副本';
	@override String playingOtherLength({required Object difference}) => '播放您的副本，${difference}';
	@override String get mismatchTitle => '您的副本长度不同';
	@override String mismatchDescription({required Object difference}) => '您最接近的副本是 ${difference} 而不是房间的视频。它可能是另一个剪辑或版本。';
	@override String get playAnyway => '无论如何都可以玩';
	@override String get chooseAnotherCopy => '选择另一个副本';
	@override String get dontPlay => '不要玩';
	@override String get unavailableTitle => '你没有这个视频';
	@override String get unavailableDescription => 'Luroka 在您的库中找不到它。自己选择一份或重新搜索。';
	@override String get chooseCopy => '选择副本';
	@override String get searchAgain => '再次搜索';
	@override String get noCandidates => '在您的图书馆中找不到任何副本。';
	@override String get choiceFailed => '无法在房间内播放此副本';
	@override String lengthLonger({required Object duration}) => '${duration}更长';
	@override String lengthShorter({required Object duration}) => '${duration} 较短';
	@override String get lengthSame => '长度相同';
	@override String get lengthUnknown => '长度未知';
	@override String get joinCurrentPlayback => '加入当前播放';
	@override String get joinCurrentPlaybackDescription => '加入主持人当前正在观看的内容';
	@override String get stopMedia => '为所有人停止视频';
	@override String get syncOffset => '同步偏移';
	@override String get syncOffsetDescription => '如果视频在房间前方或后方运行，请移动视频。';
	@override String offsetHint({required Object difference}) => '你的副本比房间的视频是${difference}。';
	@override String applyDifference({required Object offset}) => '使用${offset}';
	@override String get offsetMinusSecond => '-1秒';
	@override String get offsetMinusTenth => '-100毫秒';
	@override String get offsetPlusTenth => '+100 毫秒';
	@override String get offsetPlusSecond => '+1秒';
	@override String get participants => '参与者';
	@override String participantCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n,
		one: '${n} 参与者',
		other: '${n} 参与者',
	);
	@override String get hostBadge => '主持人';
	@override String nameYou({required Object name}) => '${name}（你）';
	@override String get playerIdle => '空闲';
	@override String get playerLoading => '加载中';
	@override String get playerReady => '准备好';
	@override String get playerBuffering => '缓冲';
	@override String get matchSearching => '搜寻中';
	@override String get matchMatched => '有视频吗';
	@override String get matchMismatched => '长度不同';
	@override String get matchUnavailable => '没有视频';
	@override String participantOffset({required Object offset}) => '偏移量 ${offset}';
	@override String get makeHost => '设为主持人';
	@override String get makeHostQuestion => '移交主持人？';
	@override String makeHostConfirm({required Object name}) => '${name} 将控制播放并主导所有人的会话。';
	@override String get transfer => '移交';
	@override String get removeParticipant => '从房间中移除';
	@override String removeParticipantQuestion({required Object name}) => '删除${name}？';
	@override String removeParticipantConfirm({required Object name}) => '${name} 离开房间。除非您锁定房间，否则他们可以使用代码再次加入。';
	@override String get remove => '删除';
	@override String get roomSettings => '房间设置';
	@override String get letEveryoneControl => '让每个人控制播放';
	@override String get lockRoom => '锁室';
	@override String get lockRoomDescription => '没有新人可以加入';
	@override String get leaveRoom => '留出空间';
	@override String get leaveRoomQuestion => '离开房间吗？';
	@override String get leaveRoomConfirm => '您可以使用房间代码再次加入。';
	@override String get leave => '离开';
	@override String get endRoom => '末室';
	@override String get endRoomQuestion => '末室？';
	@override String get endRoomConfirm => '每个人的房间到此结束。';
	@override String get end => '结束';
	@override String get playBlockedTitle => '播放未开始';
	@override String get playBlockedDescription => '按播放开始在房间里观看。';
	@override late final Translations$watchTogether$notices$zh notices = Translations$watchTogether$notices$zh.internal(_root);
	@override late final Translations$watchTogether$ended$zh ended = Translations$watchTogether$ended$zh.internal(_root);
	@override late final Translations$watchTogether$errors$zh errors = Translations$watchTogether$errors$zh.internal(_root);
	@override String untitledEpisode({required Object number}) => '剧集 ${number}';
}

// Path: downloads
class Translations$downloads$zh extends Translations$downloads$en {
	Translations$downloads$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => '下载';
	@override String get manage => '管理';
	@override String get tvShows => '电视剧';
	@override String get movies => '电影';
	@override String get music => '音乐';
	@override String tracksQueued({required Object count}) => '${count} 首曲目已加入下载队列';
	@override String get noDownloads => '暂无下载';
	@override String get noDownloadsDescription => '下载的内容将在此处显示以供离线观看';
	@override String get downloadNow => '下载';
	@override String get deleteDownload => '删除下载';
	@override String get retryDownload => '重试下载';
	@override String get downloadQueued => '下载已排队';
	@override String get downloadResumed => '下载已继续';
	@override String get serverErrorBitrate => '服务器错误：文件可能超过远程比特率限制';
	@override String get storageFull => '为保护剩余存储空间，下载已停止。请释放空间或选择其他下载位置，然后重试。';
	@override String get storageUnavailable => '无法检查可用存储空间，因此下载已停止。请检查下载位置后重试。';
	@override String episodesQueued({required Object count}) => '${count} 集已加入下载队列';
	@override String get downloadDeleted => '下载已删除';
	@override String deleteConfirm({required Object title}) => '要从此设备删除“${title}”吗？';
	@override String get deleteCollectionDownloads => '删除下载';
	@override String deleteCollectionDownloadsConfirm({required Object title}) => '从此设备删除“${title}”中的所有下载内容吗？';
	@override String get collectionDownloadsDeleted => '下载已删除';
	@override String get cancelledDownloadTitle => '已取消的下载';
	@override String get cancelledDownloadMessage => '此下载已取消。你想怎么做？';
	@override String get allEpisodesAlreadyDownloaded => '所有剧集均已下载';
	@override String get resumeDownload => '继续下载';
	@override String get cancelledDownload => '已取消的下载';
	@override String syncingFile({required Object file, required Object status}) => '${file}（正在同步 ${status}）';
	@override String downloadedFileClickToComplete({required Object file}) => '已下载 ${file} — 点击以完成';
	@override String get partialDownloadClickToComplete => '已部分下载 — 点击以完成';
	@override String get deleting => '正在删除…';
	@override String deletingWithProgress({required Object title, required Object current, required Object total}) => '正在删除 ${title}…（${current}/${total}）';
	@override String get queuedTooltip => '已排队';
	@override String queuedFilesTooltip({required Object files}) => '已排队：${files}';
	@override String get downloadingTooltip => '正在下载…';
	@override String downloadingFilesTooltip({required Object files}) => '正在下载 ${files}';
	@override String get noDownloadsTree => '暂无下载';
	@override String get pauseAll => '全部暂停';
	@override String get resumeAll => '全部继续';
	@override String get retryAll => '全部重试';
	@override String get retryFailed => '重试失败的下载';
	@override String get deleteAll => '全部删除';
	@override String get selectVersion => '选择版本';
	@override String get allEpisodes => '所有剧集';
	@override String get unwatchedOnly => '仅未观看';
	@override String nextNUnwatched({required Object count}) => '接下来 ${count} 集未观看';
	@override String get customAmount => '自定义数量…';
	@override String get includeSpecials => '包含特别篇';
	@override String get howManyEpisodes => '下载几集？';
	@override String get invalidEpisodeCount => '请输入有效的集数。';
	@override String get keepSynced => '保持同步';
	@override String get downloadOnce => '下载一次';
	@override String keepNUnwatched({required Object count}) => '保留 ${count} 集未观看内容';
	@override String get editSyncRule => '编辑同步规则';
	@override String get removeSyncRule => '删除同步规则';
	@override String removeSyncRuleConfirm({required Object title}) => '停止同步“${title}”？已下载的剧集将被保留。';
	@override String removeListSyncRuleConfirm({required Object title}) => '停止同步“${title}”？';
	@override String get deleteSyncRuleDownloads => '同时删除相关下载';
	@override String get deleteSyncRuleDownloadsDescription => '被其他同步规则或个人资料使用的下载将保留。';
	@override String syncRuleCreated({required Object count}) => '同步规则已创建 — 保留 ${count} 集未观看内容';
	@override String get syncRuleUpdated => '同步规则已更新';
	@override String get syncRuleRemoved => '同步规则已删除';
	@override String get syncRuleAndDownloadsRemoved => '同步规则及相关下载已删除';
	@override String get syncRuleCleanupBusy => '同步规则正在更新中，请稍后再试。';
	@override String get syncRuleCleanupUnavailable => '无法安全识别相关下载。请重新连接服务器后再试，或在不删除下载的情况下移除规则。';
	@override String syncedNewEpisodes({required Object title, required Object count}) => '已为 ${title} 同步 ${count} 个新剧集';
	@override String get activeSyncRules => '同步规则';
	@override String get noSyncRules => '没有同步规则';
	@override String get manageSyncRule => '管理同步';
	@override String get editEpisodeCount => '剧集数量';
	@override String get editSyncFilter => '同步筛选';
	@override String get syncAllItems => '同步所有项目';
	@override String get syncUnwatchedItems => '同步未观看项目';
	@override String syncRuleServerContext({required Object server, required Object status}) => '服务器：${server} • ${status}';
	@override String get syncRuleAvailable => '可用';
	@override String get syncRuleOffline => '离线';
	@override String get syncRuleSignInRequired => '需要登录';
	@override String get syncRuleAccessDenied => '访问被拒绝';
	@override String get syncRuleNotAvailableForProfile => '当前用户资料不可用';
	@override String get syncRuleUnknownServer => '未知服务器';
	@override String get syncRuleListCreated => '同步规则已创建';
	@override late final Translations$downloads$backgroundWarning$zh backgroundWarning = Translations$downloads$backgroundWarning$zh.internal(_root);
	@override String get options => '下载选项';
	@override late final Translations$downloads$groupings$zh groupings = Translations$downloads$groupings$zh.internal(_root);
	@override String get unknownLibrary => '未知媒体库';
	@override String get unknownShow => '未知节目';
	@override String get unknownSeason => '未知季';
	@override String get unknownAlbum => '未知专辑';
	@override String completedOfTotal({required Object completed, required Object total}) => '已完成 ${completed}/${total}';
	@override String get errorFileNotFound => '未找到文件（404）';
	@override String get errorDownloadNotAllowed => '服务器不允许下载（403）';
	@override String get errorDownloadFailed => '下载失败';
	@override String errorDownloadFailedWithReason({required Object reason}) => '下载失败：${reason}';
	@override String errorHttpStatus({required Object status}) => '下载失败（HTTP ${status}）';
	@override String errorPostProcessing({required Object reason}) => '后处理失败：${reason}';
	@override String get reasonFileNotSaved => '无法将文件保存到此设备';
	@override String get reasonCannotResume => '无法继续未完成的下载';
	@override String get reasonDeviceStorageFull => '此设备的存储空间已满';
	@override String get notificationDownloading => '正在下载…';
	@override String get notificationComplete => '下载完成';
	@override String get notificationPaused => '下载已暂停';
}

// Path: shaders
class Translations$shaders$zh extends Translations$shaders$en {
	Translations$shaders$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => '着色器';
	@override String get noShaderDescription => '无视频增强';
	@override String get nvscalerDescription => 'NVIDIA 图像缩放，使视频更清晰';
	@override String get artcnnVariantNeutral => '中性';
	@override String get artcnnVariantDenoise => '降噪';
	@override String get artcnnVariantDenoiseSharpen => '降噪 + 锐化';
	@override String get qualityFast => '快速';
	@override String get qualityHQ => '高质量';
	@override String get mode => '模式';
	@override String get importShader => '导入着色器';
	@override String get customShaderDescription => '自定义 GLSL 着色器';
	@override String get shaderImported => '着色器已导入';
	@override String get shaderImportFailed => '导入着色器失败';
	@override String get deleteShader => '删除着色器';
	@override String deleteShaderConfirm({required Object name}) => '删除“${name}”？';
}

// Path: companionRemote
class Translations$companionRemote$zh extends Translations$companionRemote$en {
	Translations$companionRemote$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => '遥控器';
	@override String connectedTo({required Object name}) => '已连接到 ${name}';
	@override String get unknownDevice => '未知设备';
	@override late final Translations$companionRemote$session$zh session = Translations$companionRemote$session$zh.internal(_root);
	@override late final Translations$companionRemote$pairing$zh pairing = Translations$companionRemote$pairing$zh.internal(_root);
	@override late final Translations$companionRemote$remote$zh remote = Translations$companionRemote$remote$zh.internal(_root);
	@override late final Translations$companionRemote$errors$zh errors = Translations$companionRemote$errors$zh.internal(_root);
	@override String get closedBeforeAuth => '连接在身份验证前已关闭';
}

// Path: videoSettings
class Translations$videoSettings$zh extends Translations$videoSettings$en {
	Translations$videoSettings$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get playbackSpeed => '播放速度';
	@override String get normalSpeed => '正常';
	@override String sleepTimerActive({required Object duration}) => '运行中（${duration}）';
	@override String get zoom => '缩放';
	@override String get sleepTimer => '睡眠定时器';
	@override String get audioSync => '音频同步';
	@override String get subtitleSync => '字幕同步';
	@override String get hdr => 'HDR';
	@override String get hdrUnsupported => '此处不支持 HDR——当前桌面合成器或视频输出无法传输 HDR。';
	@override String get hdrToneMapping => 'HDR 色调映射';
	@override String get hdrToneMappingCompositor => '合成器';
	@override String get hdrToneMappingCompositorDescription => '直接传递源的 HDR 元数据，并由桌面合成器进行映射。';
	@override String get hdrToneMappingPlayer => '播放器';
	@override String get hdrToneMappingPlayerDescription => '在播放器中映射到显示器的峰值亮度，然后将结果告知合成器。';
	@override String get hdrToneMappingFailed => '无法更改 HDR 色调映射——仍在使用之前的模式。';
	@override String get audioOutput => '音频输出';
	@override String get performanceOverlay => '性能监控';
	@override String get audioOutputDolbyAtmos => 'Dolby Atmos';
	@override String get audioOutputDolbyAudio => 'Dolby Audio';
	@override String get audioOutputSurround => '环绕声';
	@override String get audioOutputSpatial => '空间音频';
	@override String get audioOutputStereo => '立体声';
	@override String get audioNormalization => '响度标准化';
	@override String get audioNormalizationDisablesPassthrough => '将音频解码为 PCM；开启时直通关闭';
}

// Path: performanceOverlay
class Translations$performanceOverlay$zh extends Translations$performanceOverlay$en {
	Translations$performanceOverlay$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get color => '颜色';
	@override String get performance => '性能';
	@override String get buffer => '缓冲';
	@override String get app => '应用';
	@override String get decoder => '解码器';
	@override String get rawDecoder => '原始解码器';
	@override String get tunneling => '隧道';
	@override String get passthrough => '直通';
	@override String get aspect => '宽高比';
	@override String get rotation => '旋转';
	@override String get dvSource => 'DV 来源';
	@override String get dvPath => 'DV 路径';
	@override String get dvRouteDecoder => 'Dolby Vision解码器';
	@override String get dvRouteDecoderP81 => 'Dolby Vision解码器（P7→8.1）';
	@override String get dvRouteBaseLayer => '基层';
	@override String get dvRouteBaseLayerHdr10 => 'HDR10基础层';
	@override String get dvRouteBaseLayerHlg => 'HLG基层';
	@override String get dvRouteBaseLayerSdr => 'SDR基础层';
	@override String get dvRouteReshaped => 'RPU 重塑 (gpu-next)';
	@override String get p7Conversion => 'P7 转换';
	@override String get sampleRate => '采样率';
	@override String get pixelFormat => '像素格式';
	@override String get hwFormat => '硬件格式';
	@override String get matrix => '矩阵';
	@override String get primaries => '基色';
	@override String get transfer => '传递特性';
	@override String get renderFps => '渲染 FPS';
	@override String get displayFps => '显示 FPS';
	@override String get avSync => 'A/V 同步';
	@override String get dropped => '丢帧';
	@override String get dvRpus => 'DV RPU';
	@override String get dvRpuAverage => 'DV RPU 平均';
	@override String get dvSampleAverage => 'DV 采样平均';
	@override String get maxLuma => '最大亮度';
	@override String get minLuma => '最小亮度';
	@override String get maxCll => 'MaxCLL';
	@override String get maxFall => 'MaxFALL';
	@override String get cacheUsed => '已用缓存';
	@override String get cacheLimit => '缓存限制';
	@override String get speed => '速度';
	@override String get player => '播放器';
	@override String get memory => '内存';
	@override String get uiFps => 'UI FPS';
	@override String get fps => 'FPS';
	@override String get decoderAndroidHw => 'Android 硬件';
	@override String get decoderNvidiaHw => 'NVIDIA 硬件';
	@override String get decoderQualcommHw => 'Qualcomm 硬件';
	@override String get decoderMediatekHw => 'MediaTek 硬件';
	@override String get decoderExynosHw => 'Exynos 硬件';
	@override String get decoderSoftware => '软件';
	@override String get decoderHardware => '硬件';
	@override String get tunnelingActive => '已启用';
	@override String dvRpuFailed({required Object converted, required Object failures}) => '${converted}（${failures} 个失败）';
}

// Path: externalPlayer
class Translations$externalPlayer$zh extends Translations$externalPlayer$en {
	Translations$externalPlayer$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => '外部播放器';
	@override String get useExternalPlayer => '使用外部播放器';
	@override String get useExternalPlayerDescription => '在其他应用中打开视频';
	@override String get selectPlayer => '选择播放器';
	@override String get customPlayers => '自定义播放器';
	@override String get systemDefault => '系统默认';
	@override String get addCustomPlayer => '添加自定义播放器';
	@override String get playerName => '播放器名称';
	@override String get playerNameHint => '我的播放器';
	@override String get playerCommand => '命令';
	@override String get playerPackage => '包名';
	@override String get playerUrlScheme => 'URL 方案';
	@override String get off => '关闭';
	@override String get launchFailed => '无法打开外部播放器';
	@override String appNotInstalled({required Object name}) => '${name} 未安装';
	@override String get playInExternalPlayer => '在外部播放器中播放';
}

// Path: metadataEdit
class Translations$metadataEdit$zh extends Translations$metadataEdit$en {
	Translations$metadataEdit$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get editMetadata => '编辑…';
	@override String get screenTitle => '编辑元数据';
	@override String get basicInfo => '基本信息';
	@override String get artwork => '封面图片';
	@override String get advancedSettings => '高级设置';
	@override String get title => '标题';
	@override String get sortTitle => '排序标题';
	@override String get originalTitle => '原始标题';
	@override String get releaseDate => '上映日期';
	@override String get contentRating => '内容分级';
	@override String get studio => '制片厂';
	@override String get tagline => '标语';
	@override String get summary => '简介';
	@override String get poster => '海报';
	@override String get background => '背景';
	@override String get logo => '标志';
	@override String get squareArt => '方形图片';
	@override String get selectPoster => '选择海报';
	@override String get selectBackground => '选择背景';
	@override String get selectLogo => '选择标志';
	@override String get selectSquareArt => '选择方形图片';
	@override String get fromUrl => '通过 URL';
	@override String get uploadFile => '上传文件';
	@override String get enterImageUrl => '输入图片 URL';
	@override String get imageUrl => '图片 URL';
	@override String get metadataUpdated => '元数据已更新';
	@override String get metadataUpdateFailed => '元数据更新失败';
	@override String get artworkUpdated => '封面图片已更新';
	@override String get artworkUpdateFailed => '封面图片更新失败';
	@override String get noArtworkAvailable => '没有可用的封面图片';
	@override String artworkOption({required Object index}) => '封面图片选项 ${index}';
	@override String selectedArtworkOption({required Object index}) => '封面图片选项 ${index}，已选择';
	@override String get notSet => '未设置';
	@override String get libraryDefault => '媒体库默认';
	@override String get accountDefault => '账户默认';
	@override String get seriesDefault => '剧集默认';
	@override String get episodeSorting => '剧集排序';
	@override String get oldestFirst => '最旧优先';
	@override String get newestFirst => '最新优先';
	@override String get keep => '保留';
	@override String get allEpisodes => '所有剧集';
	@override String latestEpisodes({required Object count}) => '最新 ${count} 集';
	@override String get latestEpisode => '最新一集';
	@override String episodesAddedPastDays({required Object count}) => '过去 ${count} 天内添加的剧集';
	@override String get deleteAfterPlaying => '播放后删除剧集';
	@override String get never => '从不';
	@override String get afterADay => '一天后';
	@override String get afterAWeek => '一周后';
	@override String get afterAMonth => '一个月后';
	@override String get onNextRefresh => '下次刷新时';
	@override String get seasons => '季';
	@override String get show => '显示';
	@override String get hide => '隐藏';
	@override String get episodeOrdering => '剧集排列顺序';
	@override String get tmdbAiring => 'The Movie Database（播出顺序）';
	@override String get tvdbAiring => 'TheTVDB（播出顺序）';
	@override String get tvdbAbsolute => 'TheTVDB（绝对顺序）';
	@override String get metadataLanguage => '元数据语言';
	@override String get useOriginalTitle => '使用原始标题';
	@override String get preferredAudioLanguage => '首选音频语言';
	@override String get preferredSubtitleLanguage => '首选字幕语言';
	@override String get subtitleMode => '自动选择字幕模式';
	@override String get manuallySelected => '手动选择';
	@override String get shownWithForeignAudio => '外语音频时显示';
	@override String get alwaysEnabled => '始终启用';
	@override String get tags => '标签';
	@override String get addTag => '添加标签';
	@override String get genre => '类型';
	@override String get director => '导演';
	@override String get writer => '编剧';
	@override String get producer => '制片人';
	@override String get country => '国家';
	@override String get collection => '合集';
	@override String get label => '标记';
	@override String get quickTag => '快速标签…';
}

// Path: matchScreen
class Translations$matchScreen$zh extends Translations$matchScreen$en {
	Translations$matchScreen$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get match => '匹配…';
	@override String get fixMatch => '修正匹配…';
	@override String get unmatch => '取消匹配';
	@override String get unmatchConfirm => '清除此匹配？在重新匹配前，Plex 会将其视为未匹配。';
	@override String get unmatchSuccess => '已取消匹配';
	@override String get unmatchFailed => '无法取消匹配';
	@override String get matchApplied => '匹配已应用';
	@override String get matchFailed => '应用匹配失败';
	@override String get titleHint => '标题';
	@override String get yearHint => '年份';
	@override String get search => '搜索';
	@override String get noMatchesFound => '未找到匹配项';
}

// Path: serverTasks
class Translations$serverTasks$zh extends Translations$serverTasks$en {
	Translations$serverTasks$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => '服务器任务';
	@override String get failedToLoad => '加载任务失败';
	@override String get noTasks => '没有正在运行的任务';
}

// Path: trakt
class Translations$trakt$zh extends Translations$trakt$en {
	Translations$trakt$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => 'Trakt';
	@override String get connected => '已连接';
	@override String connectedAs({required Object username}) => '已以 @${username} 身份连接';
	@override String get disconnectConfirm => '断开 Trakt 账户？';
	@override String get disconnectConfirmBody => 'Luroka 将停止向 Trakt 发送事件。你可随时重新连接。';
	@override String get scrobble => '实时同步播放状态';
	@override String get scrobbleDescription => '播放期间将播放、暂停和停止事件发送到 Trakt。';
	@override String get watchedSync => '同步已观看状态';
	@override String get watchedSyncDescription => '在 Luroka 中将内容标记为已观看时，也会在 Trakt 上标记为已观看。';
}

// Path: seerr
class Translations$seerr$zh extends Translations$seerr$en {
	Translations$seerr$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => 'Seerr';
	@override String get connectTitle => '连接 Seerr';
	@override String get serverUrl => '服务器 URL';
	@override String get serverUrlHelper => '你的 Seerr 实例的地址';
	@override String get checkServer => '继续';
	@override String get signInWithJellyfin => '使用 Jellyfin 登录';
	@override String get signInWithEmby => '使用 Emby 登录';
	@override String get signInWithLocal => '使用本地账户';
	@override String get email => '邮箱';
	@override String get noSignInMethods => '此 Seerr 实例未提供 Luroka 支持的登录方式。';
	@override String get instance => '实例';
	@override String get disconnectConfirm => '断开 Seerr 连接？';
	@override String get disconnectConfirmBody => 'Luroka 将忘记此 Seerr 实例。可随时重新连接。';
	@override String get request => '请求';
	@override String get request4k => '请求 4K';
	@override String get seasons => '季';
	@override String get allSeasons => '全部季';
	@override String get advancedOptions => '高级';
	@override String get destinationServer => '目标服务器';
	@override String get qualityProfile => '画质配置';
	@override String get rootFolder => '根目录';
	@override String get languageProfile => '语言配置';
	@override String get tags => '标签';
	@override String get noTags => '无标签';
	@override String defaultOption({required Object name}) => '${name}（默认）';
	@override String get animeNote => '此剧集为动画。';
	@override String get requestSubmitted => '请求已提交';
	@override String requestFailed({required Object error}) => '请求失败：${error}';
	@override String get requestsLoadFailed => '无法加载请求选项';
	@override String get nothingToRequest => '所有内容都已可用或已请求。';
	@override String get statusAvailable => '可用';
	@override String get statusPartiallyAvailable => '部分可用';
	@override String get statusRequested => '已请求';
	@override String get statusProcessing => '处理中';
	@override String get statusBlocklisted => '已加入屏蔽列表';
	@override String couldNotReach({required Object url, required Object error}) => '无法连接到 ${url}：${error}';
	@override String noInstanceAtUrl({required Object url, required Object status}) => '${url} 上没有 Seerr 实例（HTTP ${status}）';
	@override String get behindAuthProxy => '响应来自需要身份验证的反向代理（SSO 或 HTTP 认证），而非 Seerr。Luroka 无法通过它登录：请让 Seerr 的 /api/v1 路径为此应用绕过代理，或使用可直接访问 Seerr 的地址。';
	@override String get invalidUrl => '输入服务器地址，例如 https://seerr.example.com';
	@override String get quickConnectUnsupported => '此 Seerr 实例不支持 Quick Connect。需要 Seerr 3.4 或更高版本。';
	@override String get notInitialized => '此 Seerr 实例尚未完成首次运行设置';
	@override String get noPlexTokenForReauth => '没有可用于重新登录的 Plex 令牌';
	@override String get noStoredCredentials => '没有已保存的凭据可用于重新登录';
	@override String get signInRejected => '登录被拒绝';
	@override String get noSessionCookie => 'Seerr 未签发会话 Cookie';
	@override String get freshCookieRejected => 'Seerr 拒绝了新的会话 Cookie';
	@override String get noUserInformation => 'Seerr 未返回用户信息';
	@override String get sessionRejectedAfterReauth => '重新登录后会话被拒绝';
	@override String get permissionDenied => 'Seerr 拒绝了此操作：你的账户不再拥有所需权限';
	@override String get permissionRevoked => '你不再拥有请求此内容的权限';
}

// Path: services
class Translations$services$zh extends Translations$services$en {
	Translations$services$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => '服务';
	@override String get hubSubtitle => '同步观看进度并请求新内容。';
	@override String get discoverySection => '发现与请求';
	@override String get trackingSection => '观看记录与列表';
	@override String get seerrDescription => '从 Seerr 服务器查找电影和剧集并提交请求。';
	@override String get tmdbDescription => '发现电影和剧集、海报、评分及详细信息。';
	@override String get traktDescription => '追踪电影和剧集、同步观看状态并管理待看列表。';
	@override String get malDescription => '同步动漫列表和观看进度。';
	@override String get anilistDescription => '追踪动漫并与 AniList 同步观看进度。';
	@override String get simklDescription => '使用 Simkl 追踪电影、剧集和动漫。';
	@override String get mdblistDescription => '连接 MDBList 列表和电影评分。';
	@override String connectionIntro({required Object service}) => '将 ${service} 连接到当前的 Luroka 个人资料。你可以随时在此管理连接及其选项。';
	@override String connectService({required Object service}) => '连接 ${service}';
	@override String get seerrConnectDescription => '连接 Seerr 服务器，即可在 Luroka 中发现并请求电影和剧集。';
	@override String get seerrServerStep => '输入你打开 Seerr 时使用的地址。我们会检查服务器支持哪些登录方式。';
	@override String get seerrSignInStep => '选择服务器支持的登录方式。';
	@override String get integrations => '集成';
	@override String get notConnected => '未连接';
	@override String connectedAs({required Object username}) => '已以 @${username} 身份连接';
	@override String get scrobble => '自动记录进度';
	@override String get scrobbleDescription => '观看完一集或一部电影后更新你的列表。';
	@override String disconnectConfirm({required Object service}) => '断开 ${service} 连接？';
	@override String disconnectConfirmBody({required Object service}) => 'Luroka 将停止更新 ${service}。可随时重新连接。';
	@override String connectFailed({required Object service}) => '无法连接到 ${service}。请重试。';
	@override late final Translations$services$names$zh names = Translations$services$names$zh.internal(_root);
	@override late final Translations$services$simklReconnect$zh simklReconnect = Translations$services$simklReconnect$zh.internal(_root);
	@override late final Translations$services$deviceCode$zh deviceCode = Translations$services$deviceCode$zh.internal(_root);
	@override late final Translations$services$oauthProxy$zh oauthProxy = Translations$services$oauthProxy$zh.internal(_root);
	@override late final Translations$services$pendingAuth$zh pendingAuth = Translations$services$pendingAuth$zh.internal(_root);
	@override late final Translations$services$libraryFilter$zh libraryFilter = Translations$services$libraryFilter$zh.internal(_root);
}

// Path: offlineRecovery
class Translations$offlineRecovery$zh extends Translations$offlineRecovery$en {
	Translations$offlineRecovery$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => '您的服务器离线';
	@override String get description => '您的下载仍然可用。当您的服务器恢复时尝试重新连接，或添加另一台服务器。';
	@override String get appleTvDescription => 'Luroka 无法访问您的媒体服务器。尝试在可用时重新连接，或添加另一台服务器以继续观看。';
	@override String get kidsDescription => '我们无法访问您的媒体服务器。尝试重新连接，或向家长寻求帮助。';
	@override String get retrying => '正在连接…';
	@override String get addServer => '添加服务器';
}

// Path: releaseUpdates
class Translations$releaseUpdates$zh extends Translations$releaseUpdates$en {
	Translations$releaseUpdates$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get manualInstructions => '从 GitHub 下载发布存档，解压 APK，并将其安装在您的 Android 设备上。';
	@override String get tvInstructions => '在手机或电脑上打开此地址，或扫描二维码下载版本。';
	@override String get pressBackAgain => '再次按返回退出播放';
}

// Path: profileIntegrations
class Translations$profileIntegrations$zh extends Translations$profileIntegrations$en {
	Translations$profileIntegrations$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => '打造专属 Luroka';
	@override String get description => '连接您喜欢的服务，记录观看内容并请求新电影和剧集。每个 Luroka 用户资料都有自己的连接。';
	@override String get step => '可选集成';
	@override String get examples => 'Trakt · Simkl · AniList · MyAnimeList · Seerr';
	@override String get connect => '探索集成';
	@override String get later => '稍后设置';
	@override String get manage => '管理集成';
	@override String forProfile({required Object name}) => '${name} 的连接';
}

// Path: profileSetupGuide
class Translations$profileSetupGuide$zh extends Translations$profileSetupGuide$en {
	Translations$profileSetupGuide$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => '打造专属用户资料';
	@override String get description => '为此设备上的用户资料选择 Luroka 的外观和使用方式。您可以稍后在设置中更改。';
	@override String get appearanceStep => '1 / 2 · 外观';
	@override String get homeStep => '2 / 2 · 您的首页';
	@override String get preview => '预览';
	@override String get previewTitle => '您的首页';
	@override String get previewPoster => '海报';
	@override String get posterArtwork => '仅显示海报';
	@override String get posterWithDetails => '显示海报详细信息';
	@override String get musicDescription => '打开电影或剧集详情页面时播放主题音乐（如有）。';
	@override String get moreThemes => '更多主题';
	@override String get fewerThemes => '收起主题';
	@override String get spotlightHeading => '精选区域要显示什么内容？';
	@override String get progressHeading => '继续观看和接下来观看';
	@override String get skip => '使用默认设置并开始观看';
	@override String get finish => '开始观看';
	@override String get back => '返回';
	@override String get kContinue => '继续';
	@override String get chooseLater => '稍后选择媒体库';
	@override String get libraryScope => '这只会更改此用户资料在 Luroka 中显示的内容，不会更改服务器权限。';
	@override String get createdTitle => '用户资料已创建';
	@override String get createdDescription => '新用户资料已准备就绪，使用者可以在首次打开时进行个性化设置。';
	@override String get switchProfile => '切换到此用户资料';
	@override String get stayHere => '留在当前用户资料';
}

// Path: animeFavorites
class Translations$animeFavorites$zh extends Translations$animeFavorites$en {
	Translations$animeFavorites$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get filter => '动漫';
	@override String get manage => '管理动漫';
	@override String get description => '自动检测使用动漫库名称和可用的动漫标签或 ID。选择图书馆并纠正个人最爱。您的个人资料的选择将保存在此设备上。';
	@override String get libraries => '动漫库';
	@override String get libraryHint => '名为 Anime 的库会自动识别。选择一个库以更改其分类。';
	@override String get titles => '最喜欢的标题';
	@override String get titleHint => '选择一个标题将其标记为动漫或更正自动匹配。';
	@override String get automatic => '自动';
	@override String get include => '动漫';
	@override String get exclude => '不是动漫';
	@override String get automaticIncluded => '自动·动漫';
	@override String get automaticExcluded => '自动 · 非动漫';
	@override String get noLibraries => '没有可用的连接库。';
	@override String get noTitles => '没有最喜欢的电影或节目。';
	@override String get empty => '没有找到最喜欢的动漫。检查您的动漫库或将标题标记为动漫。';
	@override String get saveFailed => '无法保存您的动漫设置。请再试一次。';
}

// Path: addServer
class Translations$addServer$zh extends Translations$addServer$en {
	Translations$addServer$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String addMediaBrowserTitle({required Object product}) => '添加 ${product} 服务器';
	@override String get serverUrls => '服务器 URL';
	@override String get serverUrlsHelper => '可输入多个 URL，并用逗号分隔。';
	@override String get findServer => '查找服务器';
	@override String searchingLocalMediaBrowserServers({required Object product}) => '正在查找本地 ${product} 服务器…';
	@override String localMediaBrowserServers({required Object product}) => '已保存和附近的 ${product} 服务器';
	@override String get username => '用户名';
	@override String get password => '密码';
	@override String get signIn => '登录';
	@override String get change => '更改';
	@override String get required => '必填';
	@override String couldNotReachServer({required Object error}) => '无法连接到服务器：${error}';
	@override String signInFailed({required Object error}) => '登录失败：${error}';
	@override String quickConnectFailed({required Object error}) => 'Quick Connect 失败：${error}';
	@override String get addPlexTitle => '使用 Plex 登录';
	@override String get pinExpired => 'PIN 在登录前已过期。请重试。';
	@override String failedToRegisterAccount({required Object error}) => '注册账户失败：${error}';
	@override String enterMediaBrowserUrlError({required Object product}) => '请输入你的 ${product} 服务器 URL';
	@override String get addConnectionTitle => '添加连接';
	@override String addConnectionTitleScoped({required Object name}) => '添加到 ${name}';
	@override String get signInWithPlexCard => '使用 Plex 登录';
	@override String get signInWithPlexCardSubtitle => '授权此设备。共享服务器会被添加。';
	@override String get signInWithPlexCardSubtitleScoped => '授权一个 Plex 账户。Plex Home 用户将成为 Luroka 用户资料。';
	@override String connectToMediaBrowserCard({required Object product}) => '连接到 ${product}';
	@override String get connectToMediaBrowserCardSubtitle => '输入你的服务器 URL、用户名和密码。';
	@override String connectToMediaBrowserCardSubtitleScoped({required Object product, required Object name}) => '登录你的 ${product} 服务器。将绑定到 ${name}。';
	@override String get borrowFromAnotherProfile => '使用其他用户资料的连接';
	@override String get borrowFromAnotherProfileSubtitle => '复用另一个用户资料的连接。受 PIN 保护的用户资料需要输入 PIN。';
	@override String get invalidCredentials => '用户名或密码无效';
	@override String get authResponseNotJson => '身份验证响应不是有效的 JSON';
	@override String get authResponseIncomplete => '服务器返回的登录响应不完整';
	@override String get quickConnectRejected => '服务器拒绝了 Quick Connect';
	@override String get quickConnectNotJson => 'Quick Connect 响应不是有效的 JSON';
	@override String get quickConnectMissingFields => 'Quick Connect 响应中缺少代码或密钥';
	@override String get quickConnectPollRejected => '服务器拒绝了 Quick Connect 轮询';
	@override String get serverTimedOut => '服务器未及时响应';
	@override String get responseNotJson => '服务器响应不是有效的 JSON';
	@override String responseMissingIdentity({required Object product}) => '响应中缺少 ID 或服务器名称——这是 ${product} 服务器吗？';
	@override String probeFailed({required Object error}) => '无法连接到服务器：${error}';
	@override String enterAtLeastOneUrl({required Object product}) => '请输入至少一个 ${product} 服务器 URL';
	@override String noReachableServer({required Object product}) => '未找到可连接的 ${product} 服务器';
	@override String urlsPointToDifferentServers({required Object product}) => '这些 URL 指向不同的 ${product} 服务器';
	@override String urlDoesNotMatchServer({required Object product}) => '此 URL 与 ${product} 服务器不匹配';
	@override String get redirectUnsupported => '服务器重定向到了不受支持的 URL';
	@override String redirectDifferentHost({required Object product}) => '服务器重定向到了其他主机。请直接输入最终的 ${product} URL。';
	@override String get redirectInsecure => '服务器从 HTTPS 重定向到了不安全的 URL';
	@override String redirectUnsupportedEnterFinal({required Object product}) => '服务器重定向到了不受支持的 URL。请直接输入最终的 ${product} URL。';
}

// Path: appIcon.names
class Translations$appIcon$names$zh extends Translations$appIcon$names$en {
	Translations$appIcon$names$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get midnight => '午夜';
	@override String get ember => '余烬';
	@override String get paper => '纸';
	@override String get oled => '有机发光二极管';
	@override String get line => '线';
	@override String get ocean => '海洋';
	@override String get ultraviolet => '紫外线';
	@override String get matcha => '抹茶';
	@override String get sunset => '日落';
	@override String get gold => '黄金';
	@override String get titanium => '钛';
	@override String get glass => '玻璃';
	@override String get crt => '显像管';
	@override String get vhs => '录像带';
	@override String get synthwave => '合成波';
	@override String get pixel => '像素';
	@override String get neon => '霓虹灯';
	@override String get sticker => '贴纸';
	@override String get ticket => '门票';
	@override String get pop => '流行音乐';
	@override String get strata => '地层';
	@override String get facet => '刻面';
	@override String get tilde => '波形符';
}

// Path: common.ratingSource
class Translations$common$ratingSource$zh extends Translations$common$ratingSource$en {
	Translations$common$ratingSource$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get critic => '影评人';
	@override String get audience => '观众';
	@override String get imdb => 'IMDb';
	@override String get tmdb => 'TMDB';
	@override String get rottenTomatoes => 'Rotten Tomatoes';
	@override String get simkl => 'Simkl';
	@override String get mal => 'MyAnimeList';
	@override String get anilist => 'AniList';
	@override String get trakt => 'Trakt';
	@override String get rottenTomatoesCritic => 'Rotten Tomatoes 影评人';
	@override String get rottenTomatoesAudience => 'Rotten Tomatoes 观众';
	@override String get metacritic => 'Metacritic';
	@override String get letterboxd => 'Letterboxd';
}

// Path: common.mediaKind
class Translations$common$mediaKind$zh extends Translations$common$mediaKind$en {
	Translations$common$mediaKind$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get movie => '电影';
	@override String get show => '剧集';
	@override String get season => '季';
	@override String get episode => '单集';
	@override String get artist => '艺术家';
	@override String get album => '专辑';
	@override String get track => '曲目';
	@override String get collection => '合集';
	@override String get playlist => '播放列表';
	@override String get clip => '短片';
	@override String get photo => '照片';
	@override String get folder => '文件夹';
}

// Path: supporter.errors
class Translations$supporter$errors$zh extends Translations$supporter$errors$en {
	Translations$supporter$errors$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get storeUnavailable => '无法购买。检查您是否已登录商店并且允许在此设备上进行购买。';
	@override String get productNotFound => '您的商店目前无法购买支持者。';
	@override String get productQueryFailed => '无法加载价格。检查您的连接并重试。';
	@override String get purchaseFailed => '购买没有成功。再试一次。';
	@override String get restoreFailed => '无法联系商店恢复您的购买。再试一次。';
	@override String get nothingToRestore => '未找到此商店帐户的支持者购买。';
}

// Path: themeEditor.slots
class Translations$themeEditor$slots$zh extends Translations$themeEditor$slots$en {
	Translations$themeEditor$slots$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get bg => '背景';
	@override String get surface => '表面';
	@override String get outline => '概要';
	@override String get text => '文字';
	@override String get textMuted => '次要文本';
	@override String get accent => '口音';
}

// Path: themeEditor.contrast
class Translations$themeEditor$contrast$zh extends Translations$themeEditor$contrast$en {
	Translations$themeEditor$contrast$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get textOnBg => '背景上的文字';
	@override String get textOnSurface => '表面文字';
	@override String get textMutedOnBg => '背景上的辅助文本';
	@override String get textMutedOnSurface => '表面上的辅助文字';
	@override String get accentOnBg => '背景强调';
	@override String get accentOnSurface => '表面强调';
	@override String get labelOnAccent => '强调按钮标签';
}

// Path: hotkeys.actions
class Translations$hotkeys$actions$zh extends Translations$hotkeys$actions$en {
	Translations$hotkeys$actions$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get playPause => '播放/暂停';
	@override String get volumeUp => '增大音量';
	@override String get volumeDown => '减小音量';
	@override String seekForward({required Object seconds}) => '快进 (${seconds}秒)';
	@override String seekBackward({required Object seconds}) => '快退 (${seconds}秒)';
	@override String get fullscreenToggle => '切换全屏';
	@override String get muteToggle => '切换静音';
	@override String get subtitleToggle => '切换字幕';
	@override String get audioTrackNext => '下一音轨';
	@override String get subtitleTrackNext => '下一字幕轨';
	@override String get chapterNext => '下一章节';
	@override String get chapterPrevious => '上一章节';
	@override String get episodeNext => '下一集';
	@override String get episodePrevious => '上一集';
	@override String get speedIncrease => '加速';
	@override String get speedDecrease => '减速';
	@override String get speedReset => '重置速度';
	@override String get zoomIn => '放大';
	@override String get zoomOut => '缩小';
	@override String get zoomReset => '重置缩放';
	@override String get subSeekNext => '跳转到下一条字幕';
	@override String get subSeekPrev => '跳转到上一条字幕';
	@override String get shaderToggle => '切换着色器';
	@override String get skipMarker => '跳过片头/片尾';
	@override String get screenshot => '截图';
}

// Path: videoControls.pipErrors
class Translations$videoControls$pipErrors$zh extends Translations$videoControls$pipErrors$en {
	Translations$videoControls$pipErrors$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get androidVersion => '需要 Android 8.0 或更高版本';
	@override String get iosVersion => '需要 iOS 15.0 或更高版本';
	@override String get permissionDisabled => '画中画已禁用。请在系统设置中启用。';
	@override String get notSupported => '此设备不支持画中画模式';
	@override String get voSwitchFailed => '无法切换画中画的视频输出';
	@override String get failed => '画中画启动失败';
	@override String get prepareFailed => '无法准备画中画';
	@override String unknown({required Object error}) => '发生错误：${error}';
}

// Path: accountPreferences.groups
class Translations$accountPreferences$groups$zh extends Translations$accountPreferences$groups$en {
	Translations$accountPreferences$groups$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get audioAndSubtitles => '音频与字幕';
	@override String get libraryDisplay => '媒体库';
	@override String get personalMedia => '个人媒体';
}

// Path: accountPreferences.subtitleModes
class Translations$accountPreferences$subtitleModes$zh extends Translations$accountPreferences$subtitleModes$en {
	Translations$accountPreferences$subtitleModes$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get none => '手动选择';
	@override String get noneDescription => '从不自动打开字幕。';
	@override String get defaultMode => '遵循轨道标记';
	@override String get defaultModeDescription => '使用存储在各字幕轨道上的默认和强制标记。';
	@override String get always => '始终启用';
	@override String get alwaysDescription => '只要有首选语言的字幕轨道就将其打开。';
	@override String get onlyForced => '仅强制字幕';
	@override String get onlyForcedDescription => '只加载标记为强制的轨道。';
	@override String get smart => '外语音频时显示';
	@override String get smartDescription => '仅在音频为其他语言时打开字幕。';
}

// Path: accountPreferences.subtitleAccessibilityOptions
class Translations$accountPreferences$subtitleAccessibilityOptions$zh extends Translations$accountPreferences$subtitleAccessibilityOptions$en {
	Translations$accountPreferences$subtitleAccessibilityOptions$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get preferNonSdh => '优先非 SDH 字幕';
	@override String get preferSdh => '优先 SDH 字幕';
	@override String get onlySdh => '仅 SDH 字幕';
	@override String get onlyNonSdh => '仅非 SDH 字幕';
}

// Path: accountPreferences.forcedSubtitleOptions
class Translations$accountPreferences$forcedSubtitleOptions$zh extends Translations$accountPreferences$forcedSubtitleOptions$en {
	Translations$accountPreferences$forcedSubtitleOptions$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get preferNonForced => '优先非强制字幕';
	@override String get preferForced => '优先强制字幕';
	@override String get onlyForced => '仅强制字幕';
	@override String get onlyNonForced => '仅非强制字幕';
}

// Path: accountPreferences.watchedIndicatorOptions
class Translations$accountPreferences$watchedIndicatorOptions$zh extends Translations$accountPreferences$watchedIndicatorOptions$en {
	Translations$accountPreferences$watchedIndicatorOptions$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get none => '从不';
	@override String get moviesAndShows => '电影和电视剧';
	@override String get movies => '仅电影';
	@override String get shows => '仅电视剧';
}

// Path: accountPreferences.mediaReviewsOptions
class Translations$accountPreferences$mediaReviewsOptions$zh extends Translations$accountPreferences$mediaReviewsOptions$en {
	Translations$accountPreferences$mediaReviewsOptions$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get usersAndCritics => '用户和影评人';
	@override String get usersOnly => '仅用户';
	@override String get criticsOnly => '仅影评人';
	@override String get nobody => '隐藏';
}

// Path: discover.person
class Translations$discover$person$zh extends Translations$discover$person$en {
	Translations$discover$person$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get born => '出生';
	@override String get died => '死了';
	@override String get birthplace => '出生地';
	@override String dateWithAge({required Object date, required Object age}) => '${date}（年龄${age}）';
	@override String dateWithAgeAtDeath({required Object date, required Object age}) => '${date}（旧${age}）';
}

// Path: libraries.tabs
class Translations$libraries$tabs$zh extends Translations$libraries$tabs$en {
	Translations$libraries$tabs$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get recommended => '推荐';
	@override String get browse => '浏览';
	@override String get collections => '合集';
	@override String get playlists => '播放列表';
}

// Path: libraries.groupings
class Translations$libraries$groupings$zh extends Translations$libraries$groupings$en {
	Translations$libraries$groupings$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => '分组';
	@override String get all => '全部';
	@override String get movies => '电影';
	@override String get shows => '剧集';
	@override String get seasons => '季';
	@override String get episodes => '集';
	@override String get artists => '艺术家';
	@override String get albums => '专辑';
	@override String get tracks => '曲目';
	@override String get folders => '文件夹';
}

// Path: libraries.filterCategories
class Translations$libraries$filterCategories$zh extends Translations$libraries$filterCategories$en {
	Translations$libraries$filterCategories$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get genre => '类型';
	@override String get year => '年份';
	@override String get contentRating => '内容分级';
	@override String get tag => '标签';
	@override String get unwatched => '未观看';
	@override String get unplayed => '未播放';
	@override String get favorites => '收藏夹';
	@override String get filePath => '文件路径';
}

// Path: libraries.sortLabels
class Translations$libraries$sortLabels$zh extends Translations$libraries$sortLabels$en {
	Translations$libraries$sortLabels$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => '标题';
	@override String get dateAdded => '添加日期';
	@override String get releaseDate => '发行日期';
	@override String get rating => '评分';
	@override String get communityRating => '社区评分';
	@override String get criticRating => '影评人评分';
	@override String get userRating => '用户评分';
	@override String get datePlayed => '播放日期';
	@override String get playCount => '播放次数';
	@override String get productionYear => '制作年份';
	@override String get runtime => '时长';
	@override String get officialRating => '官方分级';
	@override String get premiereDate => '首映日期';
	@override String get startDate => '开始日期';
	@override String get airTime => '播出时间';
	@override String get studio => '制片公司';
	@override String get random => '随机';
	@override String get dateShared => '共享日期';
	@override String get latestEpisodeAirDate => '最新一集播出日期';
	@override String get lastEpisodeDateAdded => '最新一集添加日期';
	@override String get dateDownloaded => '下载日期';
	@override String get size => '大小';
	@override String get library => '媒体库';
}

// Path: libraries.advancedFilters
class Translations$libraries$advancedFilters$zh extends Translations$libraries$advancedFilters$en {
	Translations$libraries$advancedFilters$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get include => '包括';
	@override String get exclude => '排除';
	@override String get any => '任意';
	@override String get yes => '是的';
	@override String get no => '否';
	@override String not({required Object value}) => '不是 ${value}';
	@override String valueCount({required Object count}) => '已选择 ${count}';
	@override String valueCountExcluded({required Object count}) => '${count} 排除';
	@override String get searchValues => '搜索值';
	@override String get noValues => '无值';
	@override String get matchContains => '包含';
	@override String get matchNotContains => '不包含';
	@override String get matchIs => '是';
	@override String get matchIsNot => '不是';
	@override String get matchBeginsWith => '开始于';
	@override String get matchEndsWith => '结束于';
	@override String get textHint => '键入要匹配的内容';
	@override String get from => '来自';
	@override String get to => '至';
	@override String range({required Object from, required Object to}) => '${from} 至 ${to}';
	@override String atLeast({required Object value}) => '${value} 及以上';
	@override String atMost({required Object value}) => '至${value}';
	@override String dateLastDays({required Object count}) => '最后 ${count} 天';
	@override String get dateLastYear => '去年';
	@override String dateOlderThanDays({required Object count}) => '早于 ${count} 天';
	@override String get dateOlderThanYear => '一岁以上';
}

// Path: explore.rows
class Translations$explore$rows$zh extends Translations$explore$rows$en {
	Translations$explore$rows$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get watchlist => '想看列表';
	@override String get recommendedMovies => '推荐电影';
	@override String get recommendedShows => '推荐剧集';
	@override String get trendingMovies => '近期热门电影';
	@override String get trendingShows => '近期热门剧集';
	@override String get popularMovies => '人气电影';
	@override String get popularShows => '人气剧集';
	@override String get trendingAnime => '热门动画';
	@override String get suggestedAnime => '推荐动画';
	@override String get airingAnime => '热门连载动画';
	@override String get popularAnime => '最受欢迎动画';
	@override String get trending => '近期热门';
	@override String get upcomingMovies => '即将上映的电影';
	@override String get upcomingShows => '即将播出的剧集';
}

// Path: explore.status
class Translations$explore$status$zh extends Translations$explore$status$en {
	Translations$explore$status$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get airing => '连载中';
	@override String get ended => '已完结';
	@override String get canceled => '已取消';
	@override String get upcoming => '即将上线';
}

// Path: explore.badge
class Translations$explore$badge$zh extends Translations$explore$badge$en {
	Translations$explore$badge$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String rankPopular({required Object n}) => '热门榜第 #${n} 名';
	@override String rankAiring({required Object n}) => '在播榜第 #${n} 名';
	@override String rankRated({required Object n}) => '评分榜第 #${n} 名';
	@override String rankTrending({required Object n}) => '趋势榜第 #${n} 名';
	@override String rankSeasonal({required Object season, required Object n}) => '${season}榜第 #${n} 名';
	@override String watchingNow({required Object n}) => '${n} 人正在观看';
	@override String get available => '可观看';
	@override String get partiallyAvailable => '部分可观看';
	@override String get availableIn4k => '提供 4K';
	@override String get requested => '已请求';
	@override String get pendingApproval => '待批准';
	@override String get processing => '处理中';
	@override String get declined => '已拒绝';
	@override String get requestFailed => '请求失败';
	@override String get requested4k => '已请求 4K';
	@override String seasonsAvailable({required Object available, required Object total}) => '已有 ${available}/${total} 季';
	@override String nextEpisodeIn({required Object episode, required Object duration}) => '第 ${episode} 集将在 ${duration} 后播出';
	@override String nextAiringIn({required Object duration}) => '下一集将在 ${duration} 后播出';
	@override String episodesShort({required Object n}) => '${n} 集';
	@override String minutesPerEpisode({required Object n}) => '${n} 分钟/集';
	@override String get adult => '18+';
}

// Path: explore.stats
class Translations$explore$stats$zh extends Translations$explore$stats$en {
	Translations$explore$stats$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String listed({required Object n}) => '${n} 人已标记';
	@override String viewersDay({required Object n}) => '今日 ${n} 人观看';
	@override String viewersWeek({required Object n}) => '本周 ${n} 人观看';
	@override String viewersMonth({required Object n}) => '本月 ${n} 人观看';
	@override String viewersYear({required Object n}) => '今年 ${n} 人观看';
	@override String viewersAllTime({required Object n}) => '累计 ${n} 人观看';
	@override String planning({required Object n}) => '${n} 人想看';
	@override String favorited({required Object n}) => '${n} 人收藏';
	@override String dropRate({required Object percent}) => '${percent} 弃番';
	@override String comments({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n,
		one: '${n} 评论',
		other: '${n} 条评论',
	);
	@override String votes({required Object n}) => '${n} 票';
	@override String watching({required Object n}) => '${n} 人正在观看';
	@override String completed({required Object n}) => '${n} 人已看完';
	@override String onHold({required Object n}) => '${n} 人搁置';
	@override String dropped({required Object n}) => '${n} 人弃番';
}

// Path: explore.season
class Translations$explore$season$zh extends Translations$explore$season$en {
	Translations$explore$season$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get winter => '冬季';
	@override String get spring => '春季';
	@override String get summer => '夏季';
	@override String get fall => '秋季';
	@override String withYear({required Object year, required Object season}) => '${year}年${season}';
}

// Path: explore.format
class Translations$explore$format$zh extends Translations$explore$format$en {
	Translations$explore$format$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get tv => 'TV';
	@override String get tvShort => 'TV 短片';
	@override String get movie => '电影';
	@override String get special => '特别篇';
	@override String get ova => 'OVA';
	@override String get ona => 'ONA';
	@override String get music => '音乐';
	@override String get other => '其他';
}

// Path: explore.sourceMaterial
class Translations$explore$sourceMaterial$zh extends Translations$explore$sourceMaterial$en {
	Translations$explore$sourceMaterial$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get original => '原创';
	@override String get manga => '漫画';
	@override String get lightNovel => '轻小说';
	@override String get novel => '小说';
	@override String get visualNovel => '视觉小说';
	@override String get game => '游戏';
	@override String get webComic => '网络漫画';
	@override String get musicRelease => '音乐';
	@override String get otherMedia => '其他';
}

// Path: explore.creditRole
class Translations$explore$creditRole$zh extends Translations$explore$creditRole$en {
	Translations$explore$creditRole$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get actor => '演员';
	@override String get director => '导演';
	@override String get writer => '编剧';
	@override String get producer => '制片人';
	@override String get creator => '创作者';
	@override String get composer => '作曲';
}

// Path: explore.relation
class Translations$explore$relation$zh extends Translations$explore$relation$en {
	Translations$explore$relation$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get prequel => '前传';
	@override String get sequel => '续集';
	@override String get sideStory => '番外篇';
	@override String get spinOff => '衍生作品';
	@override String get alternativeVersion => '另一版本';
	@override String get summary => '总集篇';
	@override String get parentStory => '原作';
	@override String get adaptation => '改编';
	@override String get other => '相关';
}

// Path: explore.detail
class Translations$explore$detail$zh extends Translations$explore$detail$en {
	Translations$explore$detail$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get originalTitle => '原名';
	@override String get alsoKnownAs => '又名';
	@override String get studios => '制作公司';
	@override String get country => '国家/地区';
	@override String get language => '语言';
	@override String get released => '上映日期';
	@override String get physicalRelease => '光盘发售';
	@override String get ended => '完结日期';
	@override String addedOn({required Object date}) => '添加于 ${date}';
	@override String get yourRating => '你的评分';
	@override String get budget => '预算';
	@override String get revenue => '票房';
	@override String get contentAdvisory => '年龄分级';
	@override String get tags => '标签';
	@override String get revealSpoilerTags => '显示剧透标签';
	@override String get links => '链接';
	@override String get watchOn => '观看平台';
	@override String get watchTrailer => '观看预告片';
	@override String openOn({required Object site}) => '在 ${site} 打开';
	@override String get crew => '演职人员';
	@override String get ratings => '评分';
	@override String get schedule => '播出时间';
	@override String recommendedByUsers({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n,
		one: '${n}用户推荐',
		other: '由 ${n} 位用户推荐',
	);
	@override String recommendedBy({required Object who}) => '由 ${who} 推荐';
	@override String favoritedBy({required Object who}) => '由 ${who} 收藏';
	@override String unairedEpisodes({required Object n}) => '还有 ${n} 集未播出';
	@override String recommendedByPercent({required Object percent}) => '${percent} 的观众推荐';
	@override String get relatedTitles => '相关作品';
	@override String get background => '背景';
}

// Path: liveTv.recordSettings
class Translations$liveTv$recordSettings$zh extends Translations$liveTv$recordSettings$en {
	Translations$liveTv$recordSettings$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get startEarly => '提前开始（秒）';
	@override String get endLate => '延后结束（秒）';
	@override String get newOnly => '仅新剧集';
	@override String get anyChannel => '在任意频道录制';
	@override String get anyTime => '在任意时间录制';
	@override String get skipInLibrary => '跳过媒体库中已有的剧集';
	@override String get keepUpTo => '保留的剧集数';
	@override String get keepUpToHint => '0 表示保留全部剧集';
}

// Path: music.discography
class Translations$music$discography$zh extends Translations$music$discography$en {
	Translations$music$discography$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get singlesAndEps => '单曲和 EP';
	@override String get live => '现场';
	@override String get compilations => '合集';
}

// Path: watchTogether.notices
class Translations$watchTogether$notices$zh extends Translations$watchTogether$notices$en {
	Translations$watchTogether$notices$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String pressedPlay({required Object name}) => '${name} 按下播放';
	@override String get playbackStarted => '播放开始';
	@override String paused({required Object name}) => '${name} 暂停了播放';
	@override String get playbackPaused => '播放暂停';
	@override String jumpedTo({required Object name, required Object position}) => '${name} 跳转至 ${position}';
	@override String roomJumpedTo({required Object position}) => '跳转至${position}';
	@override String changedSpeed({required Object name, required Object speed}) => '${name} 将速度设为 ${speed}';
	@override String speedChanged({required Object speed}) => '速度设置为 ${speed}';
	@override String startedMedia({required Object name, required Object title}) => '${name} 启动 ${title}';
	@override String mediaStarted({required Object title}) => '现在玩${title}';
	@override String stoppedMedia({required Object name}) => '${name} 停止了视频';
	@override String get mediaStopped => '视频停止了';
	@override String waitingFor({required Object name}) => '正在等待 ${name}…';
	@override String get waitingForSomeone => '等待有人追上...';
	@override String get finished => '完成';
	@override String hostChangedTo({required Object name}) => '${name} 现在是主持人';
	@override String get youAreNowHost => '你现在是主持人';
	@override String joined({required Object name}) => '${name} 已加入';
	@override String left({required Object name}) => '${name} 已离开';
	@override String get controlRefused => '只有主机可以控制播放';
	@override String get searchFailed => '部分服务器无法搜索房间视频';
	@override String get playBlocked => '按播放开始';
	@override String get shareFailed => '无法与房间分享此视频';
	@override String get notShared => '下载的视频不会与房间共享';
	@override String get openFailed => '无法打开房间视频';
}

// Path: watchTogether.ended
class Translations$watchTogether$ended$zh extends Translations$watchTogether$ended$en {
	Translations$watchTogether$ended$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get ended => '主持人结束了房间';
	@override String get kicked => '你已被移出房间';
	@override String get expired => '房间已过期';
	@override String get replaced => '您在另一台设备上加入了此房间';
	@override String get lost => '与房间失去连接';
}

// Path: watchTogether.errors
class Translations$watchTogether$errors$zh extends Translations$watchTogether$errors$en {
	Translations$watchTogether$errors$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get invalidCode => '这不是房间代码。代码有 6 个字母和数字，不含 0、1、I、L 或 O。';
	@override String get roomNotFound => '没有房间有该代码。可能已经结束了。';
	@override String get roomFull => '那个房间已经满了。';
	@override String get roomLocked => '主人锁了那个房间。';
	@override String get relayFull => '一起观看现在很忙。稍后再试。';
	@override String get unreachable => '无法到达“一起观看”中继。检查您的连接。';
	@override String get rateLimited => '尝试次数太多。稍等片刻，然后重试。';
	@override String get clientBlocked => '此版本的Luroka不能使用继电器。更新应用程序。';
	@override String get forbidden => '只有主人才能做到这一点。';
	@override String get notInRoom => '你们不在一个房间里。';
	@override String get alreadyInRoom => '你已经在一个房间里了。';
	@override String get resumeFailed => '无法重新加入房间。';
	@override String get unsupported => '中继不支持此功能。';
	@override String get generic => '出了点问题。再试一次。';
}

// Path: downloads.backgroundWarning
class Translations$downloads$backgroundWarning$zh extends Translations$downloads$backgroundWarning$en {
	Translations$downloads$backgroundWarning$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get bannerBlocked => '离开应用后，下载将停止';
	@override String get bannerDegraded => '后台下载可能受限';
	@override String get bannerAction => '详情';
	@override String get sheetTitle => '后台下载已被阻止';
	@override String get sheetTitleDegraded => '后台下载可能受限';
	@override String get sheetIntro => 'Android 正在阻止 Luroka 在后台稳定下载。';
	@override String get sheetIntroDegraded => '你的设备限制了 Luroka 在后台下载的时机。';
	@override String get reasonBackgroundRestricted => 'Luroka 的后台使用受到限制。请将其电池用量或后台使用设置为“不受限制”。';
	@override String get reasonStandbyRestricted => 'Android 已将 Luroka 置于受限待机状态。请将其电池用量设为“不受限制”。';
	@override String get reasonDownloadChannelBlocked => '下载通知已关闭，因此可能无法查看进度或进行控制。';
	@override String get reasonNotificationsDisabled => '通知已关闭。在 Android 13 或更高版本中，长时间后台下载需要开启通知。';
	@override String get reasonDataSaver => '流量节省程序已开启，会阻止使用移动数据进行后台下载。使用 Wi-Fi 时下载应仍可进行。';
	@override String get reasonOemUnknown => 'Luroka 在后台时，下载曾多次停止。请检查 Luroka 的电池用量或后台使用设置。';
	@override String get openSettings => '打开设置';
	@override String get stillNotWorking => '设备专属帮助';
	@override String get stillNotWorkingDescription => '查看适用于你设备的操作步骤；如果问题仍然存在，请通过设置 › 查看日志发送日志。';
	@override String get dialogTitle => '下载可能无法完成';
	@override String get dialogDownloadAnyway => '仍要下载';
	@override String get dialogFixFirst => '先解决此问题';
	@override String get statusTile => '后台下载';
	@override String get statusOk => '允许在后台运行';
	@override String get statusBlocked => '已被系统设置阻止';
	@override String get statusDegraded => '受系统设置限制';
	@override String get statusUnknown => '尚未检查';
	@override String get settingsUnavailable => '无法在此设备上打开系统设置';
	@override String get linkUnavailable => '无法在此设备上打开 dontkillmyapp.com';
}

// Path: downloads.groupings
class Translations$downloads$groupings$zh extends Translations$downloads$groupings$en {
	Translations$downloads$groupings$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get library => '媒体库';
	@override String get collections => '收藏';
}

// Path: companionRemote.session
class Translations$companionRemote$session$zh extends Translations$companionRemote$session$en {
	Translations$companionRemote$session$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get startingServer => '正在启动远程服务器…';
	@override String get hostAddress => '主机地址';
	@override String get connected => '已连接';
	@override String get serverRunning => '远程服务器已启动';
	@override String get serverStopped => '远程服务器已停止';
	@override String get serverRunningDescription => '网络上的移动设备可以连接到此应用';
	@override String get serverStoppedDescription => '启动服务器以允许移动设备连接';
	@override String get usePhoneToControl => '使用移动设备控制此应用';
	@override String get startServer => '启动服务器';
	@override String get stopServer => '停止服务器';
	@override String get minimize => '最小化';
	@override String get manualAddressHint => '手动连接地址：';
}

// Path: companionRemote.pairing
class Translations$companionRemote$pairing$zh extends Translations$companionRemote$pairing$en {
	Translations$companionRemote$pairing$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get discoveryDescription => '使用同一 Plex 账号的 Luroka 设备会显示在这里';
	@override String get hostAddressHint => '192.168.1.100:48632';
	@override String get connecting => '正在连接…';
	@override String get searchingForDevices => '正在搜索设备…';
	@override String get noDevicesFound => '未在网络中找到设备';
	@override String get noDevicesHint => '请在桌面端打开 Luroka，并确保设备连接到同一 Wi-Fi 网络';
	@override String get availableDevices => '可用设备';
	@override String get manualConnection => '手动连接';
	@override String get cryptoInitFailed => '无法启动安全连接。请先登录 Plex。';
	@override String get validationHostRequired => '请输入主机地址';
	@override String get validationHostFormat => '格式必须为 IP:端口（例如 192.168.1.100:48632）';
	@override String get connectionTimedOut => '连接超时。请在两台设备上使用同一网络。';
	@override String get sessionNotFound => '未找到设备。请确认 Luroka 正在主机上运行。';
	@override String get authFailed => '认证失败。两台设备需要使用同一 Plex 账号。';
	@override String failedToConnect({required Object error}) => '连接失败：${error}';
}

// Path: companionRemote.remote
class Translations$companionRemote$remote$zh extends Translations$companionRemote$remote$en {
	Translations$companionRemote$remote$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get disconnectConfirm => '确定要断开遥控会话吗？';
	@override String get reconnecting => '正在重新连接…';
	@override String attemptOf({required Object current}) => '第 ${current} 次尝试，共 5 次';
	@override String get retryNow => '立即重试';
	@override String get tabRemote => '遥控器';
	@override String get tabPlay => '播放';
	@override String get tabMore => '更多';
	@override String get menu => '菜单';
	@override String get tabNavigation => '导航';
	@override String get tabDiscover => '发现';
	@override String get tabLibraries => '媒体库';
	@override String get tabSearch => '搜索';
	@override String get tabDownloads => '下载';
	@override String get tabSettings => '设置';
	@override String get previous => '上一个';
	@override String get playPause => '播放/暂停';
	@override String get next => '下一个';
	@override String get seekBack => '快退';
	@override String get stop => '停止';
	@override String get seekForward => '快进';
	@override String get volume => '音量';
	@override String get volumeDown => '降低音量';
	@override String get volumeUp => '提高音量';
	@override String get fullscreen => '全屏';
	@override String get subtitles => '字幕';
	@override String get audio => '音频';
	@override String get searchHint => '在桌面端搜索…';
}

// Path: companionRemote.errors
class Translations$companionRemote$errors$zh extends Translations$companionRemote$errors$en {
	Translations$companionRemote$errors$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get noNetworkInterface => '未找到网络接口';
	@override String get authenticationFailed => '身份验证失败';
	@override String serverStartFailed({required Object error}) => '无法启动远程服务器：${error}';
	@override String commandFailed({required Object error}) => '无法发送远程命令：${error}';
	@override String get joinTimedOut => '加入会话超时';
	@override String get failedToConnectAnyAddress => '无法连接到任何地址';
	@override String connectionLostAfterAttempts({required Object attempts}) => '${attempts} 次尝试后连接丢失';
	@override String get connectionLost => '连接丢失';
}

// Path: services.names
class Translations$services$names$zh extends Translations$services$names$en {
	Translations$services$names$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get mal => 'MyAnimeList';
	@override String get anilist => 'AniList';
	@override String get simkl => 'Simkl';
	@override String get seerr => 'Seerr';
	@override String get mdblist => 'MDBList';
}

// Path: services.simklReconnect
class Translations$services$simklReconnect$zh extends Translations$services$simklReconnect$en {
	Translations$services$simklReconnect$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => '重新连接 Simkl';
	@override String get subtitle => 'Simkl 正在停用此连接使用的登录方法。重新连接会打开 simkl.com 以批准 Luroka — Luroka 永远不会看到您的密码。您的观看历史记录保留在 Simkl 上。';
}

// Path: services.deviceCode
class Translations$services$deviceCode$zh extends Translations$services$deviceCode$en {
	Translations$services$deviceCode$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String title({required Object service}) => '在 ${service} 上激活 Luroka';
	@override String get instructions => '扫描二维码，或访问下方地址并输入此代码：';
	@override String openToActivate({required Object service}) => '打开 ${service} 以激活';
	@override String get copyCode => '复制激活代码';
	@override String get waitingForAuthorization => '等待授权…';
	@override String get codeCopied => '代码已复制';
}

// Path: services.oauthProxy
class Translations$services$oauthProxy$zh extends Translations$services$oauthProxy$en {
	Translations$services$oauthProxy$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String title({required Object service}) => '登录 ${service}';
	@override String get body => '扫描此二维码，或在任意设备上打开 URL。';
	@override String openToSignIn({required Object service}) => '打开 ${service} 以登录';
}

// Path: services.pendingAuth
class Translations$services$pendingAuth$zh extends Translations$services$pendingAuth$en {
	Translations$services$pendingAuth$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get copyUrl => '复制登录 URL';
	@override String get urlCopied => 'URL 已复制';
}

// Path: services.libraryFilter
class Translations$services$libraryFilter$zh extends Translations$services$libraryFilter$en {
	Translations$services$libraryFilter$zh.internal(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => '媒体库筛选';
	@override String get subtitleAllSyncing => '同步所有媒体库';
	@override String get subtitleNoneSyncing => '不同步任何内容';
	@override String subtitleBlocked({required Object count}) => '已屏蔽 ${count} 个';
	@override String subtitleAllowed({required Object count}) => '已允许 ${count} 个';
	@override String get mode => '筛选模式';
	@override String get modeBlacklist => '黑名单';
	@override String get modeWhitelist => '白名单';
	@override String get modeHintBlacklist => '同步下方未勾选的所有媒体库。';
	@override String get modeHintWhitelist => '仅同步下方勾选的媒体库。';
	@override String get libraries => '媒体库';
	@override String get noLibraries => '没有可用的媒体库';
}

/// The flat map containing all translations for locale <zh>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsZh {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'mobileLibrary.pickerSubtitle' => '选择要探索的集合',
			'mobileLibrary.searchLibraries' => '搜索图书馆',
			'mobileLibrary.noLibraries' => '没有匹配的库',
			'mobileLibrary.ascending' => '升序',
			'mobileLibrary.descending' => '降序',
			'mobileLibrary.sort' => '排序',
			'mobileLibrary.unwatchedCount' => ({required Object count}) => '${count} 未观看剧集',
			'mobileLibrary.latestEpisode' => '最新一集',
			'profileStartup.autoLogin' => '打开上次使用的配置文件',
			'profileStartup.autoLoginHint' => '当不需要 PIN 时自动打开最后一个配置文件。',
			'profileStartup.allowKidsExit' => '允许无需家长 PIN 即可退出儿童个人资料',
			'profileStartup.allowKidsExitHint' => '孩子无需输入家长 PIN 即可切换到其他个人资料。个人资料 PIN 仍然有效。',
			'profileStartup.chooseKidsConnection' => '选择不同的帐户或服务器',
			'profileStartup.chooseKidsConnectionHint' => '保存后，连接一个单独的帐户或从另一个配置文件中选择连接。',
			'subtitleUpload.chooseFile' => '上传字幕文件',
			'subtitleUpload.hint' => '选择上面的语言，然后将 SRT、ASS、SSA 或 VTT 文件上传到此服务器。',
			'subtitleUpload.success' => '字幕已上传至服务器。当服务器刷新该项目时它将出现。',
			'subtitleUpload.failed' => '无法上传字幕。检查文件和服务器权限。',
			'personSpotlight.inYourLibraries' => '在你的图书馆里',
			'personSpotlight.libraryTitles' => ({required Object n}) => '在您的图书馆中 · ${n} 标题',
			'personSpotlight.readBiography' => '阅读传记',
			'personSpotlight.newestFirst' => '最新的优先',
			'personSpotlight.oldestFirst' => '最老的在前',
			'personSpotlight.titleAscending' => '标题 A-Z',
			'personSpotlight.sortTitles' => '排序电影作品',
			'personSpotlight.unwatchedEpisodes' => ({required Object n}) => '${n} 未观看剧集',
			'personSpotlight.copies' => ({required Object n}) => '${n} 库副本',
			'personSpotlight.versions' => ({required Object n}) => '${n} 文件版本',
			'personSpotlight.retryTitles' => '无法加载所有标题。重试',
			'detailExtras.onlineVideos' => '预告片和附加内容',
			'detailExtras.reviews' => '评论',
			'detailExtras.readReview' => '阅读完整评论',
			'detailExtras.directedBy' => ({required Object name}) => '更多 ${name} 导演',
			'detailExtras.previewUnavailable' => '该预览无法播放。您可以在其原始应用程序中打开它。',
			'detailExtras.openExternally' => '打开原视频',
			'mobileUi.readMore' => '了解更多',
			'mobileUi.readLess' => '显示较少',
			'mobileUi.playbackTools' => '播放选项',
			'mobileUi.streamingQuality' => '流媒体质量',
			'mobileUi.fileVersions' => '文件版本',
			'mobileUi.qualityAndVersions' => '流媒体质量和文件版本',
			'mobileUi.hidePlaybackTools' => '隐藏播放工具',
			'mobileUi.remaining' => ({required Object time}) => '${time} 左',
			'mobileUi.endsAt' => ({required Object time}) => '结束于 ${time}',
			'mobileUi.collection' => '你的收藏',
			'mobileUi.nowPlaying' => '正在播放',
			'mobileUi.popularLibrary' => '在您的图书馆中很受欢迎',
			'mobileUi.weeklyLibrary' => '本周您图书馆的热门内容',
			'family.title' => '个人资料和家庭',
			'family.yourPeople' => '你的人',
			'family.manageHint' => '管理此设备上的人员、儿童的安全和观看活动。',
			'family.people' => '人',
			'family.peopleCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n, one: '${n}​人', other: '${n}人', ),
			'family.kidsCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n, one: '${n}​子', other: '${n} 儿童', ),
			'family.you' => '你',
			'family.adult' => '成人',
			'family.child' => '儿童',
			'family.adultTeen' => '成人或青少年',
			'family.adultHint' => '他们自己的配置文件、可选配置文件 PIN 和他们自己的服务器连接。',
			'family.childHint' => '年龄限制、安全的媒体库和适合儿童的界面。家长 PIN 可保护这些设置。',
			'family.upToAge' => ({required Object age}) => '至年龄 ${age}',
			'family.allAges' => '所有年龄段',
			'family.switchProfile' => '切换配置文件',
			'family.switchHint' => '选择谁在观看。管理一个人并不改变个人资料。',
			'family.addPerson' => '添加人员',
			'family.addChild' => '添加孩子',
			'family.addHint' => '在此设备上创建成人、青少年或儿童的个人资料。',
			'family.emptyPeople' => '为与您一起观看的每个人腾出空间。',
			'family.emptyKids' => '还没有孩子的个人资料。添加一个孩子来选择年龄限制和安全图书馆。',
			'family.safety' => '儿童与安全',
			'family.safetyHint' => '家长 PIN、儿童个人资料和年龄限制。',
			'family.protection' => '保护',
			'family.kidsProfiles' => '儿童档案',
			'family.backupHistory' => '备份和历史记录',
			'family.parentPinOn' => '家长 PIN 已启用',
			'family.profilePin' => '个人资料 PIN',
			'family.confirmParentPin' => '确认家长 PIN',
			'family.parentPinOff' => '尚未设置家长 PIN',
			'family.missingPin' => '设置家长 PIN 以保护这些设置。',
			'family.hideScope' => '在此 Luroka 个人资料中隐藏儿童的活动，使其无法继续观看。这不会更改共享服务器观看历史记录。',
			'family.localScope' => '儿童个人资料和限制存储在此设备上。使用同一服务器帐户的配置文件仍共享该帐户的观看进度。',
			'family.clearHistoryConfirm' => '允许孩子观看过的影片再次出现在“继续观看”中吗？儿童资料、限制、观看时间统计数据和服务器观看历史记录将被保留。',
			'family.editRestrictions' => '编辑儿童限制',
			'family.activity' => '观看活动',
			'family.namedActivity' => ({required Object name}) => '${name} 的观看活动',
			'family.thisProfile' => '此简介',
			'family.activityScope' => 'Luroka 在此设备上记录的活动配置文件的播放时间。这些是统计数据，而不是查看限制或完整的服务器历史记录。',
			'family.activityUnavailable' => '此个人资料尚无法查看活动。',
			'family.finished' => '完成',
			'posterDetails.showThemeMusic' => '播放主题音乐',
			'posterDetails.showThemeMusicDescription' => '在服务器上可用时，在其详细信息页面打开时播放电影或节目的主题。',
			'posterDetails.catalogEpisodeInfo' => '在目录卡上显示剧集数和运行时间',
			'posterDetails.catalogEpisodeInfoDescription' => '在“发现”海报上显示剧集数和平均时长。',
			'posterDetails.title' => '海报详情',
			'posterDetails.description' => '在 Studio、搜索、发现和图书馆的海报下方显示标题、年份和 IMDb 评级。缺失的 IMDb 评级保持隐藏状态。对于纯艺术作品海报请关闭。',
			'libraryPolish.compactTvNavigation' => '紧凑的图书馆导航',
			'libraryPolish.compactTvNavigationDescription' => '在滑出式菜单中显示库部分和浏览选项，为海报留出更多空间。',
			'libraryPolish.openLibraryMenu' => '打开库菜单',
			'libraryPolish.posterDetails' => '海报详情',
			'libraryPolish.showPosterDetails' => '显示海报详细信息·姓名、年份和 IMDb',
			'libraryPolish.hidePosterDetails' => '隐藏海报详细信息',
			'libraryPolish.overview' => '概述',
			'libraryPolish.refreshing' => '刷新图书馆…',
			'libraryPolish.serverCollections' => '该服务器上的所有集合',
			'libraryPolish.serverPlaylists' => '该服务器上的所有视频播放列表',
			'libraryPolish.libraryCollections' => '该图书馆的馆藏',
			'libraryPolish.searchCollections' => '搜索收藏',
			'libraryPolish.searchPlaylists' => '搜索播放列表',
			'libraryPolish.searchHint' => '按名称搜索',
			'libraryPolish.titleAscending' => '标题 A-Z',
			'libraryPolish.titleDescending' => '标题 Z–A',
			'libraryPolish.clearFilters' => '清除过滤器',
			'libraryPolish.playlistEmptyTitle' => '您的电影之夜，按照您的顺序',
			'libraryPolish.playlistEmptyHint' => '打开标题的“更多”菜单，然后选择“添加到播放列表”以创建您的第一个播放列表。',
			'libraryPolish.noMatches' => '没有匹配的名字',
			'libraryPolish.indexing' => '搜索完整目录...',
			'showSchedule.today' => '今天',
			'showSchedule.tomorrow' => '明天',
			'showSchedule.latestUpcoming' => '最新及即将推出的',
			'showSchedule.latestEpisode' => '最新一集',
			'showSchedule.upcoming' => '即将推出',
			'showSchedule.inLibrary' => '在你的图书馆里',
			'showSchedule.notInLibrary' => '不在你的图书馆里',
			'showSchedule.notYetAired' => '尚未播出',
			'showSchedule.episode' => ({required Object number}) => '剧集 ${number}',
			'showSchedule.caughtUp' => '你们都被困住了',
			'showSchedule.finished' => '您已完成本系列',
			'showSchedule.nextAirs' => ({required Object date}) => '下一集播出 ${date}',
			'showSchedule.watchBeginning' => '从头开始观看',
			'showSchedule.replay' => '重播',
			'showSchedule.playNext' => '播放下一个',
			'awardsCatalog.awards' => '奖项',
			'awardsCatalog.customize' => '定制',
			'awardsCatalog.chooseShelves' => '定制发现',
			'awardsCatalog.shelvesDescription' => '在“发现”中选择您想要的行。奖项行显示您图书馆的获奖者。您的选择将保存到此配置文件中。',
			'awardsCatalog.restoreShelves' => '恢复默认设置',
			'awardsCatalog.charts' => 'IMDb 图表',
			'awardsCatalog.generalShelves' => '流行和趋势',
			'awardsCatalog.saveShelvesFailed' => '无法保存您的“发现”选择。请再试一次。',
			'awardsCatalog.comedyActress' => '喜剧女主角',
			'awardsCatalog.leadDramaActor' => '男主角·戏剧',
			'awardsCatalog.leadDramaActress' => '女主角·戏剧',
			'awardsCatalog.comedySupportingActor' => '男配角·喜剧',
			'awardsCatalog.comedySupportingActress' => '女配角·喜剧',
			'awardsCatalog.leadingPerformance' => '银熊奖·最佳主演',
			'awardsCatalog.globesComedySeries' => '最佳音乐剧或喜剧电视剧',
			'awardsCatalog.limitedSupportingActor' => '男配角·限定剧或电影',
			'awardsCatalog.limitedSupportingActress' => '女配角·限定剧或电影',
			'awardsCatalog.berlinDocumentary' => '柏林电影节纪录片奖',
			'awardsCatalog.title' => '奖项及节日',
			'awardsCatalog.chooseCategory' => '选择奖项类别',
			'awardsCatalog.winners' => '获奖者',
			'awardsCatalog.nominees' => '提名者',
			'awardsCatalog.releaseDecade' => '发布十年',
			'awardsCatalog.allYears' => '所有年份',
			'awardsCatalog.loading' => '正在加载奖项名称...',
			'awardsCatalog.matching' => '在您的图书馆中查找这些标题...',
			'awardsCatalog.unavailable' => '目前无法获得奖项数据。再试一次。',
			'awardsCatalog.empty' => '您的可见图书馆中没有与此类别匹配的标题。',
			'awardsCatalog.coverage' => '会员资格来自维基数据，可能不完整。演员和导演类别显示他们获奖的电影或节目。年份指的是头衔发布，而不是仪式。',
			'awardsCatalog.picture' => '最佳影片',
			'awardsCatalog.film' => '最佳影片',
			'awardsCatalog.international' => '最佳国际故事片',
			'awardsCatalog.internationalFilm' => '最佳国际电影',
			'awardsCatalog.nonEnglishFilm' => '最佳非英语电影',
			'awardsCatalog.animated' => '最佳动画长片',
			'awardsCatalog.animatedFilm' => '最佳动画电影',
			'awardsCatalog.documentary' => '最佳纪录片',
			'awardsCatalog.director' => '最佳导演',
			'awardsCatalog.actor' => '最佳男主角',
			'awardsCatalog.actress' => '最佳女主角',
			'awardsCatalog.supportingActor' => '最佳男配角',
			'awardsCatalog.supportingActress' => '最佳女配角',
			'awardsCatalog.originalScreenplay' => '最佳原创剧本',
			'awardsCatalog.adaptedScreenplay' => '最佳改编剧本',
			'awardsCatalog.screenplay' => '最佳剧本',
			'awardsCatalog.cinematography' => '最佳摄影',
			'awardsCatalog.editing' => '最佳剪辑',
			'awardsCatalog.score' => '最佳原创配乐',
			'awardsCatalog.song' => '最佳原创歌曲',
			'awardsCatalog.sound' => '最佳音效',
			'awardsCatalog.effects' => '最佳视觉效果',
			'awardsCatalog.productionDesign' => '最佳制作设计',
			'awardsCatalog.costume' => '最佳服装设计',
			'awardsCatalog.makeup' => '最佳化妆及发型设计',
			'awardsCatalog.dramaSeries' => '杰出剧集',
			'awardsCatalog.comedySeries' => '杰出喜剧系列',
			'awardsCatalog.limitedSeries' => '杰出限量系列',
			'awardsCatalog.animatedProgram' => '优秀动画节目',
			'awardsCatalog.comedyActor' => '主演·喜剧',
			'awardsCatalog.limitedActor' => '主演·限定剧或电影',
			'awardsCatalog.limitedActress' => '女主角·限定剧或电影',
			'awardsCatalog.limitedDirecting' => '导演·限定剧或电影',
			'awardsCatalog.britishFilm' => '最佳英国电影',
			'awardsCatalog.goldenBear' => '金熊',
			'awardsCatalog.grandJury' => '评审团大奖',
			'awardsCatalog.jury' => '评审团奖',
			'awardsCatalog.teddy' => '泰迪奖',
			'awardsCatalog.goldenLion' => '金狮奖',
			'awardsCatalog.volpiActor' => '沃尔皮杯·最佳男主角',
			'awardsCatalog.volpiActress' => '沃尔皮杯·最佳女主角',
			'awardsCatalog.queerLion' => '酷儿狮子',
			'awardsCatalog.dramaFilm' => '最佳影片·剧情片',
			'awardsCatalog.comedyFilm' => '最佳音乐或喜剧电影',
			'awardsCatalog.dramaActor' => '剧情类最佳男主角',
			'awardsCatalog.dramaActress' => '剧情类最佳女主角',
			'awardsCatalog.usDramatic' => '美国剧情片评审团大奖',
			'awardsCatalog.documentaryJury' => '纪录片评审团大奖',
			'awardsCatalog.worldCinema' => '世界电影评审团大奖',
			'awardsCatalog.dramaticAudience' => '美国戏剧观众奖',
			'awardsCatalog.usDirecting' => '美国导演奖',
			'awardsCatalog.peopleChoice' => '人民选择奖',
			'awardsCatalog.canadianFilm' => '最佳加拿大电影',
			'awardsCatalog.firstFeature' => '最佳处女作',
			'awardsCatalog.cassavetes' => '约翰·卡索维茨奖',
			'awardsCatalog.scienceFiction' => '最佳科幻片',
			'awardsCatalog.fantasy' => '最佳奇幻片',
			'awardsCatalog.horror' => '最佳恐怖片',
			'awardsCatalog.action' => '最佳动作或冒险片',
			'awardsCatalog.thriller' => '最佳惊悚片',
			'searchDiscovery.suggestions' => '值得一看的东西',
			'searchDiscovery.collections' => '奖项及收藏',
			'searchDiscovery.collectionsHint' => '来自您图书馆的获奖者和精选图表',
			'searchDiscovery.all' => '所有发现',
			'searchDiscovery.awards' => '奖项及排行榜',
			'lurokaPlayerDesign.seeking' => '寻求预览',
			'lurokaPlayerDesign.keepWatching' => '继续关注',
			'lurokaPlayerDesign.upNext' => '接下来',
			'lurokaPlayerDesign.playingIn' => ({required Object seconds}) => '在 ${seconds} 中播放',
			'lurokaWorkspace.everyday' => '日常',
			'lurokaWorkspace.homeDiscovery' => '家居与探索',
			'lurokaWorkspace.librariesAccounts' => '图书馆和账户',
			'lurokaWorkspace.profilesFamily' => '个人资料和家庭',
			'lurokaWorkspace.thisDevice' => '这个装置',
			'lurokaWorkspace.thisProfile' => '此简介',
			'lurokaWorkspace.searchSettings' => '搜索设置',
			'lurokaWorkspace.savedAutomatically' => '更改会自动保存。日常和高级仅更改显示的控件。',
			'lurokaWorkspace.audioSubtitles' => '音频和字幕',
			'lurokaWorkspace.audioDescription' => '声音输出、音量和字幕外观。连接时使用帐户首选项为每个服务器帐户设置首选语言。',
			'lurokaWorkspace.pictureSound' => '图像和声音',
			'lurokaWorkspace.pictureDescription' => '该设备的帧速率匹配、分辨率、HDR 和 Dolby Vision 调整。',
			'lurokaWorkspace.engineDescription' => '播放器引擎、解码、自定义配置和高级播放规则。',
			'lurokaWorkspace.networkStreaming' => '网络与流媒体',
			'lurokaWorkspace.networkDescription' => '流媒体质量、直接播放编解码器首选项和带宽选择。',
			'lurokaWorkspace.homeOptions' => '主页选项',
			'lurokaWorkspace.refreshHome' => '刷新主页并立即流行',
			'lurokaWorkspace.customizeHome' => '定制首页',
			'lurokaWorkspace.spotlight' => '主页聚焦',
			'lurokaWorkspace.rotateSpotlight' => '自动旋转特色标题',
			'lurokaWorkspace.rotateDescription' => '当 首页 空闲时旋转。交互暂停旋转；浏览书架、打开页面或离开应用程序会使其完全暂停。',
			'lurokaWorkspace.rotationInterval' => '精选标题之间的时间',
			'mobileFixes.connectionRecoveryHint' => '服务器不可用？管理您的帐户或连接其他服务器。',
			'downloadsRedesign.shelfSize' => '每个货架的物品',
			'downloadsRedesign.shelfSizeHint' => '在“继续观看”和推荐架中显示 16、32 或 48 项。服务器可能会返回较少的可用标题。',
			'downloadsRedesign.subtitle' => '您最喜欢的，已准备好踏上旅程。',
			'downloadsRedesign.transfers' => '接送服务',
			'downloadsRedesign.ready' => '离线就绪',
			'downloadsRedesign.active' => '正在下载',
			'downloadsRedesign.waiting' => '等待',
			'downloadsRedesign.downloaded' => '已下载',
			'downloadsRedesign.speed' => '下载速度',
			'downloadsRedesign.notificationProgress' => '{progress} · {networkSpeed} · {timeRemaining} 剩余',
			'kidsShelf.movieShelf' => '电影时间',
			'kidsShelf.showShelf' => '寻找您的下一场演出',
			'kidsShelf.aurora' => 'Aurora — 深青色和青柠色',
			'kidsShelf.marquee' => '天棚 — 天鹅绒和金色',
			'kidsShelf.electric' => '电动 — 靛蓝和冰',
			'kidsShelf.midnight' => '午夜——钢与琥珀',
			'kidsShelf.yourShelf' => '你的电影架',
			'kidsShelf.all' => '一切',
			'kidsShelf.pickSomething' => '你想看什么？',
			'kidsHome.everything' => '为你',
			'kidsHome.keepWatching' => '继续关注',
			'kidsHome.emptyFilter' => '这里还什么都没有。为你尝试一下，或者让你的成年人添加一些你喜欢的东西。',
			'tvSettingsV2.moreThemes' => '更多主题和自定义颜色',
			'tvSettingsV2.moreThemesHint' => '打开所有可用的预设和自定义主题选项。',
			'tvSettingsV2.previewLive' => '实时预览',
			'tvSettingsV2.previewIllustration' => '预览示例',
			'tvSettingsV2.previewShelfCount' => ({required Object count}) => '每个货架最多 ${count} 件物品',
			'tvSettingsV2.simple' => '简单',
			'tvSettingsV2.homeNavigation' => '主页与导航',
			'tvSettingsV2.libraryCards' => '图书馆和卡片',
			'tvSettingsV2.accountsLibraries' => '账户和图书馆',
			'tvSettingsV2.profilesFamily' => '个人资料和家庭',
			'tvSettingsV2.aboutSupport' => '关于与支持',
			'tvSettingsV2.playback' => '回放',
			'tvSettingsV2.homeHint' => '选择主页和导航中显示的内容。',
			'tvSettingsV2.libraryHint' => '调整海报尺寸、标签和观看指示器。',
			'tvSettingsV2.advancedPlayback' => '播放器引擎和流媒体',
			'tvSettingsV2.advancedPlaybackHint' => '播放器、视频输出、流媒体和高级播放选项。',
			'tvSettingsV2.advancedTools' => '诊断和备份',
			'tvSettingsV2.advancedToolsHint' => '日志、故障排除、设置备份和重置。',
			'tvSettingsV2.themePreview' => '主题预览',
			'tvSettingsV2.libraryPreview' => '库预览',
			'tvSettingsV2.homePreview' => '首页预览',
			'tvSettingsV2.subtitlePreview' => '字幕预览',
			'tvSettingsV2.subtitleSample' => '您的字幕将如下所示。',
			'tvSettingsV2.previewPlaceholder' => '您的作品出现在这里',
			'tvSettingsV2.posterSize' => '海报尺寸',
			'tvSettingsV2.serverRecommendations' => '来自服务器的首页推荐',
			'tvSettingsV2.tvLayout' => '使用电视布局',
			'tvSettingsV2.hardwareDecode' => '使用硬件视频解码',
			'tvSettingsV2.serverNames' => '在主行上显示服务器名称',
			'tvSettingsV2.settingsSaved' => '更改会自动保存。',
			'tvSettingsV2.morePlayback' => '高级播放',
			'tvSettingsV2.screenDisplay' => '图像和声音',
			'tvSettingsV2.engine' => '播放器引擎',
			'tvSettingsV2.network' => '流媒体和网络',
			'tvSettingsV2.performance' => '性能',
			'tvSettingsV2.simpleAudio' => '语言和字幕外观',
			'settingsRedesign.themeEffects' => '主题和效果',
			'settingsRedesign.libraryLayout' => '图书馆布局',
			'settingsRedesign.posterInformation' => '海报信息',
			'settingsRedesign.libraryBehavior' => '图书馆行为',
			'settingsRedesign.appearanceHint' => '自定义 Luroka 的外观、布局和行为。',
			'settingsRedesign.livePreview' => '实时预览',
			'settingsRedesign.previewHint' => '查看您的图书馆在当前设置下的外观。',
			'settingsRedesign.showLiveTv' => '显示直播电视',
			'settingsRedesign.showLiveTvHint' => '当连接的服务器支持时，在导航中显示直播电视。这不会改变您的服务器。',
			'settingsRedesign.aboutTagline' => '你的媒体。你的空间。',
			'settingsRedesign.aboutDescription' => 'Luroka 将您的 Plex、Jellyfin 和 Emby 库整合到手机、电视和台式机的电影播放器​​中。',
			'settingsRedesign.aboutFeatures' => '浏览您的图书馆、恢复电影和节目、个性化个人资料、享受下载并一起观看。通过兼容的服务器即可观看直播电视。',
			'settingsRedesign.services' => '连接您的世界',
			'settingsRedesign.updateSource' => '更新源',
			'settingsRedesign.updateSourceHint' => '您的 Luroka 发布源的 HTTPS 地址。您的经销商可以在应用程序中对此进行预先配置。',
			'settingsRedesign.updateNotConfigured' => '此版本未配置自动更新。',
			'settingsRedesign.downloadInstall' => '下载并安装',
			'settingsRedesign.installUpdate' => '安装更新',
			'settingsRedesign.downloading' => '正在下载更新...',
			'settingsRedesign.downloadFailed' => '无法下载或验证更新。请再试一次。',
			'settingsRedesign.installPermission' => '允许 Luroka 在 Android 设置中安装更新，然后返回并选择安装更新。',
			'settingsRedesign.updateReady' => '下载已验证。准备安装。',
			'settingsRedesign.releaseNotes' => '发行说明',
			'settingsRedesign.invalidFeed' => '输入有效的 HTTPS 更新源地址。',
			'onboarding.connectStep' => '01 · 连接',
			'onboarding.connectTitle' => '欢迎来到Luroka',
			'onboarding.connectHint' => '登录以将您的图书馆带到此处。',
			'onboarding.serverAddressHint' => '输入您的服务器地址，或选择在您的网络上找到的服务器。',
			'onboarding.serverSignInHint' => '使用您的服务器用户名和密码连接您的图书馆。',
			'onboarding.serverAddressTitle' => '服务器地址',
			'onboarding.serverAccountTitle' => '您的服务器帐户',
			'onboarding.plexHomeTitle' => '选择您的 Plex 家庭用户',
			'onboarding.plexHomeHint' => '选择要使用其库的 Plex 用户。接下来，您将设置您的 Luroka 配置文件。',
			'onboarding.chooseService' => '选择您的服务',
			'onboarding.profileStep' => '02 · 你的个人资料',
			'onboarding.profileTitle' => '让自己像在家一样。',
			'onboarding.profileHint' => '为您的 Luroka 个人资料选择一个名称和头像。您关联的帐户保持不变。',
			'onboarding.readyStep' => '03 · 准备观看',
			'onboarding.readyTitle' => '多一点你。',
			'onboarding.readyHint' => '将您的服务集中在一起或为其他人腾出空间。您以后可以随时执行此操作。',
			'onboarding.addService' => '连接另一个服务',
			'onboarding.editProfile' => '编辑您的姓名和头像',
			'onboarding.connected' => '已连接并准备就绪',
			'onboarding.backToProfile' => '返回您的个人资料',
			'onboarding.showOtherPlexHome' => '显示其他 Plex 首页 会员',
			'onboarding.showOtherPlexHomeHint' => '默认关闭。您使用过的 Luroka 个人资料和 Plex Home 成员仍然可见。开启选择其他人。',
			'household.title' => '您的 Luroka 家庭',
			'household.welcome' => '让 Luroka 成为您的',
			'household.welcomeHint' => '您的第一个帐户已连接。在开始观看之前，个性化您的个人资料或添加其他人。',
			'household.profiles' => '型材和家居',
			'household.manageHint' => '添加人员、更改图片以及管理每个个人资料的连接。',
			'household.addProfile' => '添加 Luroka 配置文件',
			'household.addHint' => '每个人都可以连接自己的 Plex、Emby 或 Jellyfin 登录。仅向他们显示添加到其个人资料中的连接。',
			'household.sharedHint' => '重用另一个配置文件的连接会共享该服务器用户的观看状态和播放进度。选择单独的登录以获取独立的观看历史记录。',
			'household.personalise' => '个性化个人资料',
			'household.changePicture' => '更改个人资料图片',
			'household.pictureHint' => '选择 Luroka 头像或照片。这仅更改该设备上的图片；您的服务器帐户未受影响。',
			'household.serverPicture' => '使用服务器图片/缩写',
			'household.choosePhoto' => '选择一张照片',
			'household.photoHint' => 'JPEG、PNG 或其他受支持的图像，最大 10 MB。照片已调整大小并存储在此设备上。',
			'household.pictureSaved' => '个人资料图片已更新',
			'household.pictureFailed' => '无法更新个人资料图片。尝试使用最大 10 MB 的受支持图像。',
			'household.saveFailed' => '无法保存配置文件设置。请再试一次。',
			'household.startWatching' => '开始观看',
			'household.manageProfiles' => '管理或切换配置文件',
			'household.addLater' => '您可以稍后在“设置”→“个人资料和家庭”中添加更多人。',
			'household.connectionRequired' => '添加服务器连接以完成此配置文件的设置。',
			'household.mountain' => '山',
			'household.orbit' => '探险家',
			'household.waves' => '海洋',
			'household.blossom' => '开花',
			'household.lightning' => '闪电',
			'household.moon' => '月亮',
			'household.avatarGallery' => '选择头像',
			'household.avatarIllustrationHint' => '原创插图肖像、孩子和动物朋友',
			'household.avatarPortraitSunrise' => '日出肖像',
			'household.avatarPortraitMeadow' => '草地肖像',
			'household.avatarPortraitBerry' => '浆果肖像',
			'household.avatarPortraitGolden' => '金色肖像',
			'household.avatarPortraitIndigo' => '靛蓝肖像',
			'household.avatarPortraitOcean' => '海洋肖像',
			'household.avatarKidArtist' => '小艺术家',
			'household.avatarKidSkater' => '小滑冰者',
			'household.avatarCat' => '好奇的猫',
			'household.avatarDog' => '快乐的狗',
			'household.avatarPanda' => '熊猫',
			'household.avatarOwl' => '猫头鹰',
			'household.avatarFox' => '福克斯',
			'household.avatarDinosaur' => '恐龙',
			'household.avatarRobot' => '机器人',
			'detailComposition.startOver' => '重新开始',
			'detailComposition.seriesCast' => '系列演员表',
			'detailComposition.streamingQuality' => '流媒体质量...',
			'detailComposition.trailer' => '预告片',
			'detailComposition.manageMedia' => '管理媒体...',
			'detailComposition.playbackOptions' => '播放选项...',
			'detailComposition.moreActions' => '更多行动',
			'detailComposition.watched' => '看过',
			'detailComposition.unwatched' => '无人看管',
			'detailComposition.endsAt' => ({required Object time}) => '结束于 ${time}',
			'detailComposition.automatic' => '自动',
			'detailComposition.usePreferences' => '使用您的播放首选项',
			'detailComposition.mediaInformation' => '媒体资讯',
			'detailComposition.fullFileInformation' => '完整的文件信息',
			'detailComposition.castAndCrew' => '演职人员',
			'kids.timeLimits' => '屏幕时间限制',
			'kids.dailyWatchLimit' => '每日观看时长',
			'kids.dailyWatchLimitHint' => '每天限制该设备上的视频播放。',
			'kids.noTimeLimit' => '无限制',
			'kids.minutesLimit' => ({required Object minutes}) => '${minutes} 分钟',
			'kids.bedtime' => '就寝时间',
			'kids.bedtimeHint' => '在此时段使用该用户资料需要家长 PIN 码。',
			'kids.bedtimeStart' => '就寝时间开始',
			'kids.bedtimeEnd' => '就寝时间结束',
			'kids.timeLimitReached' => '今天的观看时间已结束',
			'kids.bedtimeReached' => '睡觉时间到了',
			'kids.timeLimitParentHint' => '请家长输入 PIN，以便继续观看。',
			'kids.parentUnlock' => '家长解锁',
			'kids.backupProfile' => '备份孩子的个人资料',
			'kids.backupExplain' => '备份此配置文件的已保存名称、字符、限制、外观和本地查看排除。不包括家长 PIN、服务器登录、下载和服务器播放进度。',
			'kids.saveBackupFile' => '保存备份文件',
			'kids.copyBackup' => '复制备份文本',
			'kids.backupSaved' => ({required Object path}) => '儿童个人资料备份保存到 ${path}',
			'kids.backupCopied' => '儿童个人资料备份已复制',
			'kids.backupFailed' => '无法保存孩子的个人资料备份。请再试一次。',
			'kids.restoreProfile' => '恢复孩子的个人资料',
			'kids.chooseBackupFile' => '选择备份文件',
			'kids.pasteBackup' => '粘贴备份文本',
			'kids.backupText' => '儿童个人资料备份 JSON',
			'kids.pasteFromClipboard' => '从剪贴板粘贴',
			'kids.restoreReview' => '查看这些恢复的设置，然后保存以使用当前的服务器连接创建新的儿童配置文件。现有配置文件不会被覆盖。库选择和查看排除仅匹配相同的服务器/库 ID。',
			'kids.restoreInvalid' => '这不是有效的受支持的儿童个人资料备份。选择 Luroka 儿童个人资料 JSON 备份。',
			'kids.deleteProfile' => '删除孩子的个人资料',
			'kids.deleteExplain' => ({required Object name}) => '从 Luroka 中删除 ${name} 吗？他们的本地设置、下载和查看排除将被删除。您的服务器帐户和服务器端历史记录将保留。如果您想稍后恢复配置文件，请先创建备份。',
			'kids.profileDeleted' => '儿童资料已删除',
			'kids.allowedLibraries' => '允许的库',
			'kids.unavailableLibrary' => '以前选择的库（当前不可用）',
			'kids.allLibraries' => '允许所有连接的电影和电视库',
			'kids.librariesExplain' => '关闭此选项以选择特定的库。年龄和动画规则仍然适用于所选库。使用选择时不会自动添加新库。',
			'kids.librariesUnavailable' => '未加载任何电影或电视库。连接到服务器并打开库，然后返回此处进行选择。',
			'kids.noLibrariesSelected' => '未选择图书馆：该孩子将看不到任何书名。',
			'kids.animationOnly' => '仅动画',
			'kids.animationExplain' => '仅显示服务器上标有动画类型的标题。这并不能取代年龄限制：动画也可以针对成年人。缺失的流派元数据被隐藏。',
			'kids.allowUnrated' => '允许没有年龄分级的标题',
			'kids.unratedExplain' => '默认关闭。启用后，如果库和动画规则允许，可能会出现缺失或未评级的分类。他们的适合性不能通过年龄来检验。超过年龄限制的已知评级和未识别的分类仍然隐藏。',
			'kids.whoIsWatching' => '谁在看？',
			'kids.chooseAdventure' => '充满大冒险的小世界。',
			'kids.chooseProfile' => '选择您的空间。让它成为一个电影之夜。',
			'kids.welcome' => ({required Object name}) => '嗨，${name}！',
			'kids.welcomeOlder' => ({required Object name}) => '你的下一个精彩故事，${name}。',
			'kids.homeSubtitle' => '大冒险。小发现。一切都是为了你。',
			'kids.homeSubtitleOlder' => '寻找新的最爱。从上次停下的地方继续。',
			'kids.featured' => '今天的大冒险',
			'kids.featuredOlder' => '在聚光灯下',
			'kids.moreInfo' => '更多信息',
			'kids.movies' => '电影',
			'kids.shows' => '演出',
			'kids.profiles' => '型材',
			'kids.adultBadge' => '大人',
			'kids.avatar' => '选择你的角色',
			'kids.avatarExplorer' => '太空探索者',
			'kids.avatarFox' => '福克斯',
			'kids.avatarDinosaur' => '恐龙',
			'kids.avatarRobot' => '机器人',
			'kids.avatarChildArtist' => '小艺术家',
			'kids.avatarChildSkater' => '小滑冰者',
			'kids.avatarSunrisePerson' => '日出肖像',
			'kids.avatarOceanPerson' => '海洋肖像',
			'kids.avatarCat' => '好奇的猫',
			'kids.avatarDog' => '快乐的狗',
			'kids.avatarPanda' => '熊猫',
			'kids.avatarOwl' => '猫头鹰',
			'kids.avatarBear' => '熊',
			'kids.continueAdventure' => '继续冒险',
			'kids.freshStories' => '新故事等待发现',
			'kids.yourMovies' => '电影时的最爱',
			'kids.yourShows' => '还有一集',
			'kids.emptyHint' => '当您的服务器具有允许年龄分类的游戏时，新的冒险将会出现在此处。',
			'kids.title' => 'Luroka 儿童版',
			'kids.addProfile' => '添加孩子个人资料',
			'kids.parentalControls' => '家长控制',
			'kids.parentPin' => '家长 PIN',
			'kids.setParentPin' => '设置家长 PIN',
			'kids.changeParentPin' => '更改家长 PIN',
			'kids.pinExplain' => '此 PIN 可保护这台设备上的成人个人资料和家长控制功能。',
			'kids.name' => '孩子的名字',
			'kids.ageGroup' => '允许的年龄分类',
			'kids.allAges' => '所有年龄段 · G、TV-Y、TV-G、U',
			'kids.age7' => '最多 7 个·还有 PG、TV-PG、TV-Y7',
			'kids.age12' => '最多 12 个 · 还有 12 和 12A',
			'kids.age16' => '最多 16 个 · 还有 PG-13、TV-14、15 和 16',
			'kids.ratingExplain' => '超过年龄限制的标题和无法识别的分类将被隐藏。没有评级的标题将被隐藏，除非您在下面允许它们。未分级的剧集可以继承已批准的系列分类。评级取决于服务器的元数据。',
			'kids.theme' => '孩子们的样子',
			'kids.themeExplain' => '当此配置文件处于活动状态时，使用彩色主题。',
			'kids.sharedLogin' => '使用您现有的服务器登录。 Plex/Emby 进度和观看状态保持共享。限制和儿童个人资料存储在此设备上。',
			'kids.hideWatched' => '从我的“继续观看”中隐藏孩子们的观看内容',
			'kids.hideExplain' => '隐藏此设备上儿童个人资料播放的电影和整个系列。这不会将它们从您的库中删除或更改服务器历史记录。',
			'kids.clearHistory' => '重置儿童的观看排除',
			'kids.historyReset' => '儿童观看排除重置',
			'kids.blocked' => '此标题在此儿童个人资料中不可用。',
			'kids.switchProfile' => '切换配置文件',
			'kids.manageFromAdult' => '切换到成人配置文件以管理设置。',
			_ => null,
		} ?? switch (path) {
			'kids.noConnections' => '在添加儿童个人资料之前，将服务器连接到您的成人个人资料。',
			'kids.created' => '儿童档案已创建',
			'kids.updated' => '孩子们的个人资料已更新',
			'kids.saveFailed' => '无法保存家长控制。请再试一次。',
			'kids.kidsBadge' => '儿童',
			'lurokaDiscovery.title' => '发现',
			'lurokaDiscovery.chooseLibraryHint' => '选择要探索的图书馆',
			'lurokaDiscovery.chooseCopyHint' => '在多个图书馆均可找到。选择您喜欢的副本。',
			'lurokaDiscovery.weeklyMovies' => '本周热门电影 · TMDb',
			'lurokaDiscovery.weeklyShows' => '本周热门节目·TMDb',
			'lurokaDiscovery.weeklyLibrary' => '本周趋势·在你的图书馆里',
			'lurokaDiscovery.popularLibrary' => '现在很流行 · 在你的图书馆里 · Cinemeta',
			'lurokaDiscovery.publicFeedError' => 'Cinemeta 发现不可用。请再试一次。',
			'lurokaDiscovery.oscars' => '奥斯卡·最佳影片获奖者',
			'lurokaDiscovery.imdb100' => 'IMDb 百部热门电影 · 2026 年 9 月快照',
			'lurokaDiscovery.imdbTv100' => 'IMDb 前 100 场演出 · 2026 年 9 月快照',
			'lurokaDiscovery.emmyComedy' => '艾美奖 · 喜剧系列获奖者 · 1971–2026',
			'lurokaDiscovery.emmys' => '艾美奖 · 剧情类剧集获奖者 · 1966–2026',
			'lurokaDiscovery.bafta' => '英国电影和电视艺术学院·最佳影片获奖者',
			'lurokaDiscovery.cannes' => '戛纳·金棕榈奖得主',
			'lurokaDiscovery.awardsNote' => '获奖作品包括奥斯卡最佳影片历史奖、艾美奖戏剧/喜剧获奖作品以及英国电影和电视艺术学院 (BAFTA)/戛纳电影节精选影片。重复获奖的头衔出现一次。会员资格使用奖项类别历史和维基数据事实。 IMDb 前 100 部电影/节目列表保留了来自 mmdju/imdb-top250-api 的 2026 年 9 月图表快照。仅显示您可见的在线库中的匹配项；馆藏规模取决于图书馆的可用性。',
			'lurokaDiscovery.attribution' => '公众流行度列表、元数据和 IMDb 评级由 Cinemeta 提供；它的热门列表并不是每周的收视率排行榜。本产品使用 TMDB API，但未经 TMDB 认可或认证。可选的 TMDb 每周趋势反映了 TMDb 的兴趣，而不是查看数字。乐谱保留其来源标签。',
			'lurokaDiscovery.tmdbSettings' => '发现来源',
			'lurokaDiscovery.setupDescription' => 'Cinemeta 发现无需帐户即可立即运行：热门电影和节目、IMDb 收视率和获奖者。可以选择使用 API 密钥或 API 从 themoviedb.org/settings/api 读取访问令牌来连接 TMDb 以获取每周趋势。您的凭据存储在此设备上。',
			'lurokaDiscovery.apiKey' => 'TMDb API 密钥/读取访问令牌',
			'lurokaDiscovery.connect' => '连接TMDb',
			'lurokaDiscovery.connecting' => '正在连接…',
			'lurokaDiscovery.connected' => 'TMDb 已连接 · 启用每周趋势和奖项',
			'lurokaDiscovery.builtInKeyNote' => '在 Luroka 的内置共享 TMDb 密钥上运行。在下面添加您自己的免费密钥以获得专用速率限制和完全控制。',
			'lurokaDiscovery.disconnect' => '断开 TMDb',
			'lurokaDiscovery.invalidKey' => '无法验证 TMDb。检查您的凭据和互联网连接。',
			'lurokaDiscovery.feedError' => 'TMDb 发现不可用。请再试一次。',
			'lurokaDiscovery.allTitles' => '所有标题',
			'lurokaDiscovery.available' => '在你的图书馆里',
			'lurokaDiscovery.checking' => '检查您的库...',
			'lurokaDiscovery.availabilityUnknown' => '有些库无法检查。尝试清爽一下。',
			'lurokaDiscovery.noAvailable' => '在检查的库中未找到匹配的标题。',
			'lurokaDiscovery.sourceInfo' => '每周趋势及获奖者评选 · TMDb',
			'lurokaDiscovery.configure' => '发现设置',
			'app.title' => 'Luroka',
			'appIcon.title' => '应用程序图标',
			'appIcon.defaultIcon' => '默认',
			'appIcon.current' => '当前图标',
			'appIcon.locked' => '支持者福利',
			'appIcon.lockedHint' => '备用图标是支持者的一项福利。',
			'appIcon.changeFailed' => '无法更改应用程序图标',
			'appIcon.launcherHint' => '一旦您离开 Luroka，新图标就会出现在您的主屏幕上。',
			'appIcon.tvLauncherHint' => '一旦您离开 Luroka，就会出现新的横幅。 Android TV 可以继续显示旧的，直到电视重新启动。',
			'appIcon.names.midnight' => '午夜',
			'appIcon.names.ember' => '余烬',
			'appIcon.names.paper' => '纸',
			'appIcon.names.oled' => '有机发光二极管',
			'appIcon.names.line' => '线',
			'appIcon.names.ocean' => '海洋',
			'appIcon.names.ultraviolet' => '紫外线',
			'appIcon.names.matcha' => '抹茶',
			'appIcon.names.sunset' => '日落',
			'appIcon.names.gold' => '黄金',
			'appIcon.names.titanium' => '钛',
			'appIcon.names.glass' => '玻璃',
			'appIcon.names.crt' => '显像管',
			'appIcon.names.vhs' => '录像带',
			'appIcon.names.synthwave' => '合成波',
			'appIcon.names.pixel' => '像素',
			'appIcon.names.neon' => '霓虹灯',
			'appIcon.names.sticker' => '贴纸',
			'appIcon.names.ticket' => '门票',
			'appIcon.names.pop' => '流行音乐',
			'appIcon.names.strata' => '地层',
			'appIcon.names.facet' => '刻面',
			'appIcon.names.tilde' => '波形符',
			'auth.signInWithPlex' => '使用 Plex 登录',
			'auth.showQRCode' => '显示二维码',
			'auth.authenticate' => '验证',
			'auth.authenticationTimeout' => '验证超时。请重试。',
			'auth.scanQRToSignIn' => '扫描二维码登录',
			'auth.waitingForAuth' => '正在等待身份验证…\n请在浏览器中登录。',
			'auth.useBrowser' => '使用浏览器',
			'auth.or' => '或',
			'auth.connectToMediaBrowser' => ({required Object product}) => '连接到 ${product}',
			'auth.quickConnect' => 'Quick Connect',
			'auth.useQuickConnect' => '使用 Quick Connect',
			'auth.quickConnectInstructions' => '在 Jellyfin 中打开 Quick Connect 并输入此代码。',
			'auth.quickConnectWaiting' => '等待批准…',
			'auth.quickConnectCancel' => '取消',
			'auth.quickConnectExpired' => 'Quick Connect 已过期。请重试。',
			'auth.localDataRecoveryRequired' => 'Luroka 无法安全恢复本地登录状态和待处理的播放数据。请重新登录。',
			'auth.pinCheckRejected' => 'Plex PIN 检查被拒绝',
			'common.cancel' => '取消',
			'common.save' => '保存',
			'common.close' => '关闭',
			'common.clear' => '清除',
			'common.reset' => '重置',
			'common.later' => '稍后',
			'common.submit' => '提交',
			'common.confirm' => '确认',
			'common.retry' => '重试',
			'common.logout' => '退出登录',
			'common.unknown' => '未知',
			'common.refresh' => '刷新',
			'common.yes' => '是',
			'common.no' => '否',
			'common.delete' => '删除',
			'common.edit' => '编辑',
			'common.shuffle' => '随机播放',
			'common.addTo' => '添加到…',
			'common.createNew' => '新建',
			'common.connect' => '连接',
			'common.disconnect' => '断开连接',
			'common.play' => '播放',
			'common.pause' => '暂停',
			'common.resume' => '继续',
			'common.error' => '错误',
			'common.search' => '搜索',
			'common.home' => '首页',
			'common.back' => '返回',
			'common.settings' => '设置',
			'common.mute' => '静音',
			'common.ok' => '确定',
			'common.off' => '关闭',
			'common.options' => '选项',
			'common.seasonNumber' => ({required Object number}) => '第${number}季',
			'common.episodeNumberTitle' => ({required Object number, required Object title}) => '第${number}集 — ${title}',
			'common.chapterNumber' => ({required Object number}) => '第${number}章',
			'common.reconnect' => '重新连接',
			'common.viewAll' => '查看全部',
			'common.serversUnreachable' => '服务器无法访问',
			'common.loading' => '加载中…',
			'common.fullscreen' => '全屏',
			'common.exitFullscreen' => '退出全屏',
			'common.ratingSource.critic' => '影评人',
			'common.ratingSource.audience' => '观众',
			'common.ratingSource.imdb' => 'IMDb',
			'common.ratingSource.tmdb' => 'TMDB',
			'common.ratingSource.rottenTomatoes' => 'Rotten Tomatoes',
			'common.ratingSource.simkl' => 'Simkl',
			'common.ratingSource.mal' => 'MyAnimeList',
			'common.ratingSource.anilist' => 'AniList',
			'common.ratingSource.trakt' => 'Trakt',
			'common.ratingSource.rottenTomatoesCritic' => 'Rotten Tomatoes 影评人',
			'common.ratingSource.rottenTomatoesAudience' => 'Rotten Tomatoes 观众',
			'common.ratingSource.metacritic' => 'Metacritic',
			'common.ratingSource.letterboxd' => 'Letterboxd',
			'common.notAvailable' => 'N/A',
			'common.url' => 'URL',
			'common.letterKeys' => 'ABC',
			'common.mediaKind.movie' => '电影',
			'common.mediaKind.show' => '剧集',
			'common.mediaKind.season' => '季',
			'common.mediaKind.episode' => '单集',
			'common.mediaKind.artist' => '艺术家',
			'common.mediaKind.album' => '专辑',
			'common.mediaKind.track' => '曲目',
			'common.mediaKind.collection' => '合集',
			'common.mediaKind.playlist' => '播放列表',
			'common.mediaKind.clip' => '短片',
			'common.mediaKind.photo' => '照片',
			'common.mediaKind.folder' => '文件夹',
			'common.stay' => '住宿',
			'common.exitApp' => '退出',
			'common.exitAppBody' => '您确定要退出 Luroka 吗？',
			'tvHints.select' => '选择',
			'tvHints.browse' => '浏览',
			'tvHints.back' => '返回',
			'screens.licenses' => '许可证',
			'screens.switchProfile' => '切换用户',
			'screens.subtitleStyling' => '字幕样式',
			'screens.mpvConfig' => 'mpv.conf',
			'screens.logs' => '日志',
			'mediaExtras.trailers' => '拖车',
			'mediaExtras.featurettes' => '特辑',
			'mediaExtras.interviews' => '采访',
			'mediaExtras.deletedScenes' => '已删除的场景',
			'mediaExtras.behindTheScenes' => '幕后花絮',
			'mediaExtras.scenesAndClips' => '场景和剪辑',
			'mediaExtras.other' => '其他附加服务',
			'update.available' => '有可用更新',
			'update.versionAvailable' => ({required Object version}) => '版本 ${version} 已发布',
			'update.currentVersion' => ({required Object version}) => '当前版本：${version}',
			'update.skipVersion' => '跳过此版本',
			'update.viewRelease' => '查看发布详情',
			'update.latestVersion' => '当前已是最新版本',
			'update.checkFailed' => '无法检查更新',
			'supporter.title' => 'Luroka 支持者',
			'supporter.intro' => '一次性购买，支持 Luroka 的开发并解锁额外装饰：',
			'supporter.presetThemes' => '预设主题',
			'supporter.presetThemesDescription' => '余烬、冰川、森林、李子和纸',
			'supporter.customTheme' => '自定义主题',
			'supporter.customThemeDescription' => '每种颜色都自己选',
			'supporter.appIcons' => '应用程序图标',
			'supporter.appIconsDescription' => '选择备用 Luroka 图标',
			'supporter.buy' => ({required Object price}) => '购买 ${price}',
			'supporter.loadingPrice' => '加载价格...',
			'supporter.restore' => '恢复购买',
			'supporter.pending' => '您的购买正在等待付款或批准。商店完成后，额外内容就会解锁。',
			'supporter.thankYouTitle' => '感谢您对Luroka的支持',
			'supporter.thankYouBody' => '您的额外支持者已解锁。',
			'supporter.tileSubtitle' => '一次性购买即可解锁主题和应用程序图标',
			'supporter.tileSubtitleThemesOnly' => '一次性购买即可解锁主题',
			'supporter.tileUnlocked' => '感谢您的支持',
			'supporter.errors.storeUnavailable' => '无法购买。检查您是否已登录商店并且允许在此设备上进行购买。',
			'supporter.errors.productNotFound' => '您的商店目前无法购买支持者。',
			'supporter.errors.productQueryFailed' => '无法加载价格。检查您的连接并重试。',
			'supporter.errors.purchaseFailed' => '购买没有成功。再试一次。',
			'supporter.errors.restoreFailed' => '无法联系商店恢复您的购买。再试一次。',
			'supporter.errors.nothingToRestore' => '未找到此商店帐户的支持者购买。',
			'settings.title' => '设置',
			'settings.supportDeveloper' => '支持 Luroka',
			'settings.supportDeveloperDescription' => '通过 Liberapay 捐赠支持开发',
			'settings.language' => '语言',
			'settings.theme' => '主题',
			'settings.appearance' => '外观',
			'settings.videoPlayback' => '视频播放',
			'settings.videoPlaybackDescription' => '配置播放行为',
			'settings.advanced' => '高级',
			'settings.episodePosterMode' => '剧集海报样式',
			'settings.seriesPoster' => '剧集海报',
			'settings.seasonPoster' => '季海报',
			'settings.episodeThumbnail' => '缩略图',
			'settings.homeHeroSize' => '轮播尺寸',
			'settings.homeHeroSizeSmall' => '小号',
			'settings.homeHeroSizeMedium' => '中等',
			'settings.homeHeroSizeLarge' => '大号',
			'settings.secondsLabel' => '秒',
			'settings.minutesLabel' => '分钟',
			'settings.secondsShort' => 's',
			'settings.minutesShort' => 'm',
			'settings.durationHint' => ({required Object min, required Object max}) => '输入时长（${min}–${max}）',
			'settings.systemTheme' => '系统',
			'settings.lightTheme' => '浅色',
			'settings.darkTheme' => '深色',
			'settings.oledTheme' => 'OLED',
			'settings.libraryDensity' => '媒体库密度',
			'settings.displayScale' => '界面缩放',
			'settings.compact' => '紧凑',
			'settings.comfortable' => '舒适',
			'settings.gridSpacing' => '网格间距',
			'settings.gridSpacingTight' => '紧密',
			'settings.gridSpacingNormal' => '标准',
			'settings.gridSpacingSpacious' => '宽松',
			'settings.tvCornerSpotlightBackdrop' => '右上角聚焦背景图',
			'settings.tvCornerSpotlightBackdropDescription' => '在右上角显示精选内容图片，而不是铺满整个屏幕',
			'settings.viewMode' => '视图模式',
			'settings.gridView' => '网格视图',
			'settings.listView' => '列表视图',
			'settings.continueWatchingAction' => '继续观看操作',
			'settings.continueWatchingPlay' => '播放',
			'settings.continueWatchingDetails' => '打开详情',
			'settings.episodeAction' => '剧集操作',
			'settings.episodePlay' => '播放',
			'settings.episodeDetails' => '打开详情',
			'settings.useGlobalHubs' => '使用主页布局',
			'settings.useGlobalHubsDescription' => '显示统一主页内容；否则使用各媒体库的推荐内容。',
			'settings.showServerNameOnHubs' => '在推荐栏显示服务器名称',
			'settings.showServerNameOnHubsDescription' => '始终在推荐栏标题中显示服务器名称。',
			'settings.groupLibrariesByServer' => '按服务器分组媒体库',
			'settings.groupLibrariesByServerDescription' => '在侧边栏中按媒体服务器分组媒体库。',
			'settings.alwaysKeepSidebarOpen' => '始终保持侧边栏展开',
			'settings.alwaysKeepSidebarOpenDescription' => '侧边栏保持展开状态，内容区域自动调整',
			'settings.showUnwatchedCount' => '显示未观看数量',
			'settings.showUnwatchedCountDescription' => '在剧集和季上显示未观看集数',
			'settings.showWatchedIndicators' => '显示已观看标记',
			'settings.showWatchedIndicatorsDescription' => '在已观看的电影、剧集和单集上显示对勾标记',
			'settings.showEpisodeNumberOnCards' => '在卡片上显示集数',
			'settings.showEpisodeNumberOnCardsDescription' => '在剧集卡片上显示季和集编号',
			'settings.showSeasonPostersOnTabs' => '在选项卡上显示季海报',
			'settings.showSeasonPostersOnTabsDescription' => '在每季标签上方显示该季海报',
			'settings.tvFullCardLayout' => '完整电视卡片',
			'settings.tvFullCardLayoutDescription' => '使用仅显示图片的电视卡片，并在图片上叠加演员姓名',
			'settings.focusGlow' => '焦点光晕',
			'settings.focusGlowDescription' => '在获得焦点的卡片周围显示柔和的光晕',
			'settings.visualEffects' => '视觉效果',
			'settings.visualEffectsAuto' => '自动',
			'settings.visualEffectsAutoDescription' => '在性能较低的设备上自动减少效果',
			'settings.visualEffectsFull' => '完整效果',
			'settings.visualEffectsReduced' => '简化',
			'settings.visualEffectsReducedDescription' => '减少动画并使用较低分辨率的封面图片',
			'settings.hideSpoilers' => '隐藏未看剧集的剧透内容',
			'settings.hideSpoilersDescription' => '模糊未观看剧集的缩略图和描述',
			'settings.playerBackend' => '播放器引擎',
			'settings.playerBackendDescription' => 'mpv 可以播放更多格式并启用更多功能 - 推荐。如果在此设备上播放失败或卡顿，ExoPlayer 会提供帮助。',
			'settings.exoPlayer' => 'ExoPlayer',
			'settings.mpv' => 'mpv',
			'settings.hardwareDecoding' => '硬件解码',
			'settings.hardwareDecodingDescription' => '如果可用，使用硬件加速',
			'settings.playbackBuffer' => '播放缓冲',
			'settings.playbackBufferAuto' => '自动（推荐）',
			'settings.playbackBufferLarge' => '大',
			'settings.playbackBufferExtraLarge' => '特大',
			'settings.playbackBufferDescription' => '针对不稳定的连接缓冲更多内容。也受缓冲大小限制。',
			'settings.defaultQualityTitle' => '默认画质',
			'settings.streamingQualityOriginalHint' => '完全按照存储的方式播放文件 - 最佳质量，使用最多带宽',
			'settings.cellularQualityTitle' => '移动网络默认画质',
			'settings.cellularQualitySameAsDefault' => '与默认画质相同',
			'settings.directPlayCoveredQuality' => '以原始画质播放较小视频',
			'settings.directPlayCoveredQualityDescription' => '已在画质限制内的视频直接播放，而非转码',
			'settings.videoCodecs' => '视频编解码器',
			'settings.videoCodecsDescription' => '未勾选的编解码器将由服务器转码',
			'settings.videoCodecsAlwaysAccepted' => '始终接受',
			'settings.musicQualityTitle' => '音乐音质',
			'settings.subtitleStyling' => '字幕样式',
			'settings.subtitleStylingDescription' => '调整字幕外观',
			'settings.smallSkipDuration' => '短跳过时长',
			'settings.largeSkipDuration' => '长跳过时长',
			'settings.rewindOnResume' => '恢复时回退',
			'settings.secondsUnit' => ({required Object seconds}) => '${seconds} 秒',
			'settings.defaultSleepTimer' => '默认睡眠定时器',
			'settings.minutesUnit' => ({required Object minutes}) => '${minutes} 分钟',
			'settings.rememberTrackSelections' => '记住每部剧集或电影的音轨选择',
			'settings.rememberTrackSelectionsDescription' => '分别记住每部内容的音频和字幕选择',
			'settings.rememberTrackSelectionsBackendRule' => 'Plex 会按文件将每个选择保存在服务器上；Jellyfin 还会开启账户的“记住选择”；Emby 不支持',
			'settings.followServerTrackSelections' => '使用服务器为每集选择的轨道',
			'settings.followServerTrackSelectionsDescription' => '切换剧集时，应用服务器上为该集选择的音频和字幕，而不是沿用当前选择',
			'settings.resumeMusicOnLaunch' => '记住音乐会话',
			'settings.resumeMusicOnLaunchDescription' => '应用启动时，将上次播放的歌曲在停止位置以暂停状态打开',
			'settings.showChapterMarkersOnTimeline' => '在进度条上显示章节标记',
			'settings.showChapterMarkersOnTimelineDescription' => '按章节边界分段显示进度条',
			'settings.specialsOrdering' => '特别篇按剧集顺序',
			'settings.specialsOrderingDescription' => '特别篇在剧集观看顺序中的播放位置',
			'settings.specialsOrderingServer' => '遵循服务器顺序',
			'settings.specialsOrderingAirDate' => '按播出日期穿插',
			'settings.specialsOrderingLast' => '常规季之后',
			'settings.clickVideoTogglesPlayback' => '点击视频可切换播放/暂停',
			'settings.clickVideoTogglesPlaybackDescription' => '点击视频即可播放或暂停，而不是显示控制项。',
			'settings.videoPlayerControls' => '视频播放器控制',
			'settings.keyboardShortcuts' => '键盘快捷键',
			'settings.keyboardShortcutsDescription' => '自定义键盘快捷键',
			'settings.videoPlayerNavigation' => '视频播放器导航',
			'settings.videoPlayerNavigationDescription' => '使用方向键导航视频播放器控件',
			'settings.watchTogetherRelay' => '一起看中继服务器',
			'settings.watchTogetherRelayDescription' => '公共开放观看派对接力，除非您自己设置',
			'settings.watchTogetherRelayHint' => 'https://my-relay.example.com',
			'settings.watchTogetherRelayInvalid' => '请输入有效的 HTTP 或 HTTPS 中继服务器基础 URL。',
			'settings.crashReporting' => '崩溃报告',
			'settings.crashReportingDescription' => '发送崩溃报告以帮助改进应用',
			'settings.debugLogging' => '调试日志',
			'settings.debugLoggingDescription' => '启用详细日志记录以便故障排除',
			'settings.viewLogs' => '查看日志',
			'settings.viewLogsDescription' => '查看应用日志',
			'settings.clearImageCache' => '清除图片缓存',
			'settings.clearImageCacheDescription' => '清除缓存的封面与缩略图。图片在重新下载前加载速度可能会变慢。',
			'settings.clearImageCacheSuccess' => '图片缓存已成功清除',
			'settings.resetSettings' => '重置设置',
			'settings.resetSettingsDescription' => '恢复默认设置。此操作无法撤销。',
			'settings.resetSettingsSuccess' => '设置重置成功',
			'settings.backup' => '备份',
			'settings.exportSettings' => '导出设置',
			'settings.exportSettingsDescription' => '将偏好设置保存到文件',
			'settings.exportSettingsSuccess' => '设置已导出',
			'settings.importSettings' => '导入设置',
			'settings.importSettingsDescription' => '从文件恢复偏好设置',
			'settings.importSettingsConfirm' => '这将替换您当前的设置。继续吗？',
			'settings.importSettingsSuccess' => '设置已导入',
			'settings.importSettingsInvalidFile' => '此文件不是有效的 Luroka 设置导出',
			'settings.importSettingsNoUser' => '导入设置前请先登录',
			'settings.shortcutsReset' => '快捷键已重置为默认值',
			'settings.resetShortcutsConfirm' => '这会将您的自定义快捷方式替换为默认快捷方式。继续？',
			'settings.about' => '关于',
			'settings.aboutDescription' => '应用程序信息和许可证',
			'settings.updates' => '更新',
			'settings.updateAvailable' => '有可用更新',
			'settings.checkForUpdates' => '检查更新',
			'settings.autoCheckUpdatesOnStartup' => '启动时自动检查更新',
			'settings.autoCheckUpdatesOnStartupDescription' => '启动时有可用更新则通知',
			'settings.validationErrorEnterNumber' => '请输入有效数字',
			'settings.validationErrorDuration' => ({required Object min, required Object max, required Object unit}) => '时长必须介于 ${min} 和 ${max} ${unit} 之间',
			'settings.shortcutAlreadyAssigned' => ({required Object action}) => '快捷键已被分配给 ${action}',
			'settings.shortcutUpdated' => ({required Object action}) => '快捷键已为 ${action} 更新',
			'settings.saveFailed' => '无法保存更改。请重试。',
			'settings.autoPlayAndSkip' => '自动播放与跳过',
			'settings.autoPlayNextEpisode' => '自动播放下一集',
			'settings.autoPlayNextEpisodeDescription' => '当前剧集结束时自动播放下一集',
			'settings.shuffleStartsFromBeginning' => '随机播放从头开始',
			'settings.shuffleStartsFromBeginningDescription' => '随机播放时每集从头开始播放，而非续播',
			'settings.playNextCountdown' => '播放下一集倒计时',
			'settings.playNextCountdownImmediate' => '立即播放',
			'settings.skipIntroMode' => '跳过片头',
			'settings.skipIntroModeOffDescription' => '正常播放片头，不显示跳过按钮',
			'settings.skipIntroModeButtonDescription' => '片头开始时显示跳过按钮',
			'settings.skipIntroModeAutoDescription' => '在下方设定的延迟后自动跳过片头',
			'settings.skipCreditsMode' => '跳过片尾',
			'settings.skipCreditsModeOffDescription' => '正常播放片尾，不显示跳过按钮',
			'settings.skipCreditsModeButtonDescription' => '片尾开始时显示跳过按钮',
			'settings.skipCreditsModeAutoDescription' => '自动跳过片尾并播放下一集',
			'settings.skipMarkerModeOff' => '关闭',
			'settings.skipMarkerModeButton' => '显示按钮',
			'settings.skipMarkerModeAuto' => '自动',
			'settings.forceSkipMarkerFallback' => '强制使用备用标记',
			'settings.forceSkipMarkerFallbackDescription' => '即使 Plex 有标记，也使用章节标题模式',
			'settings.autoSkipDelay' => '自动跳过延迟',
			'settings.autoSkipDelayDescription' => ({required Object seconds}) => '自动跳过前等待 ${seconds} 秒',
			'settings.introPattern' => '片头标记模式',
			'settings.introPatternDescription' => '用于匹配章节标题中片头标记的正则表达式',
			'settings.creditsPattern' => '片尾标记模式',
			'settings.creditsPatternDescription' => '用于匹配章节标题中片尾标记的正则表达式',
			'settings.invalidRegex' => '无效的正则表达式',
			'settings.regex' => '正则表达式',
			'settings.downloads' => '下载',
			'settings.downloadLocationDescription' => '选择下载内容的存储位置',
			'settings.downloadLocationDefault' => '默认（应用存储）',
			'settings.downloadLocationCustom' => '自定义位置',
			'settings.selectFolder' => '选择文件夹',
			'settings.resetToDefault' => '重置为默认',
			'settings.currentPath' => ({required Object path}) => '当前路径：${path}',
			'settings.downloadLocationChanged' => '下载位置已更改',
			'settings.downloadLocationReset' => '下载位置已重置为默认',
			'settings.downloadLocationInvalid' => '所选文件夹不可写入',
			'settings.downloadLocationPickerUnavailable' => '此设备不支持选择文件夹',
			'settings.downloadOnWifiOnly' => '仅通过 Wi-Fi 下载',
			'settings.downloadOnWifiOnlyDescription' => '使用移动数据时不允许下载',
			'settings.downloadWifiScope' => '适用于此设备上的所有用户资料和下载。',
			'settings.autoRemoveWatchedDownloads' => '自动移除已观看的下载',
			'settings.autoRemoveWatchedDownloadsDescription' => '自动删除已观看的下载',
			'settings.cellularDownloadBlocked' => '已阻止通过移动网络下载。请连接 Wi-Fi 或更改设置。',
			'settings.maxVolume' => '最大音量',
			'settings.maxVolumeDescription' => '允许音量超过 100%，以便播放音量较低的内容',
			'settings.maxVolumePercent' => ({required Object percent}) => '${percent}%',
			'settings.discordRichPresence' => 'Discord 动态状态',
			'settings.discordRichPresenceDescription' => '在 Discord 上显示您正在观看的内容',
			'settings.services' => '服务',
			'settings.servicesDescription' => '连接 Trakt、MyAnimeList、Seerr 等',
			'settings.manageLibrariesDescription' => '重新排序和隐藏媒体库',
			'settings.companionRemoteServer' => '远程控制服务器',
			'settings.companionRemoteServerDescription' => '允许同一网络中的移动设备控制此应用',
			'settings.companionRemoteServerStartFailed' => '无法启动远程控制服务器',
			'settings.companionRemoteServerStopFailed' => '无法停止远程控制服务器',
			'settings.autoPip' => '自动画中画',
			'settings.autoPipDescription' => '播放期间离开应用时自动进入画中画模式',
			'settings.matchContentFrameRate' => '匹配内容帧率',
			'settings.matchContentFrameRateDescription' => '使显示器刷新率与视频帧率匹配',
			'settings.matchContentResolution' => '匹配内容分辨率',
			'settings.matchContentResolutionDescription' => '将显示切换为视频的原生分辨率，由电视负责放大。播放期间菜单和字幕也会一并放大',
			'settings.matchRefreshRate' => '匹配刷新率',
			'settings.matchRefreshRateDescription' => '全屏时匹配显示刷新率',
			'settings.matchDynamicRange' => '匹配动态范围',
			'settings.matchDynamicRangeDescription' => 'HDR 内容切换到 HDR，随后切回 SDR',
			'settings.displaySwitchDelay' => '显示切换延迟',
			'settings.tunneledPlayback' => '隧道播放',
			'settings.tunneledPlaybackDescription' => '使用视频隧道模式。若播放 HDR 内容时出现黑屏或画面卡顿，请将其关闭。',
			'settings.audioPassthrough' => '音频直通',
			'settings.audioPassthroughDescription' => '将 Dolby/DTS 音频不经重新编码直接发送到功放或电视，保留环绕声。如果没有声音，请关闭。',
			'settings.audioPassthroughDescriptionApple' => '对 Dolby Digital Plus（含 Atmos）使用 Apple 原生 Dolby 解码器。DTS 和 TrueHD 仍以多声道 PCM 播放。如果没有声音，请关闭。',
			'settings.audioPassthroughDescriptionAppleSpatial' => '使用 Apple 的原生杜比解码器实现杜比数字+ (Dolby Digital Plus)，包括 Atmos。在 iOS、iPadOS 和 tvOS 26 或更高版本上，TrueHD Atmos 和 DTS:X 作为空间音频播放。其他 DTS 和 TrueHD 曲目作为多通道 PCM 播放。如果没有声音请关闭。',
			'settings.audioPassthroughOverriddenByNormalization' => '响度标准化开启时停用',
			'settings.audioChannelLimit' => '音频通道',
			'settings.audioChannelLimitDescription' => '为无法播放每个通道的扬声器、耳机或 HDMI 设置混合解码音频',
			'settings.audioChannelLimitOriginal' => '原创',
			'settings.audioChannelLimitOriginalDescription' => '播放曲目中的每个频道',
			'settings.audioChannelLimitSurround51' => '高达5.1',
			'settings.audioChannelLimitSurround51Description' => '对于仅采用 5.1 PCM 的电视和接收器，将 7.1 混合到 5.1。直通不受影响。',
			'settings.audioChannelLimitStereo' => '立体声',
			'settings.audioChannelLimitStereoDescription' => '为立体声扬声器或耳机混合两个通道。关闭直通。',
			'settings.downmixCenterBoost' => '中置声道增强',
			'settings.downmixCenterBoostValue' => ({required Object db}) => '${db} dB',
			'settings.downmixCenterBoostLabel' => '增强（dB）',
			'settings.downmixCenterBoostShort' => 'dB',
			'settings.audioDownmixNormalize' => '下混时音量标准化',
			'settings.audioDownmixNormalizeDescription' => '降低混音电平以防止削波。关闭可保持原始音量（大音量场景可能失真）。',
			'settings.dvConversionMode' => 'Dolby Vision 转换',
			'settings.dvConversionModeDescription' => '选择如何处理 Dolby Vision Profile 7 文件。',
			'settings.dvConversionAuto' => '自动',
			'settings.dvConversionNative' => '原生 / 禁用',
			'settings.dvConversionDv81' => 'P7 → P8.1',
			'settings.dvConversionHevcStrip' => 'P7 → HEVC',
			'settings.dvConversionAutoDescription' => '使用设备能力检测和常规回退机制',
			'settings.dvConversionNativeDescription' => '强制原生 DV7 并禁止重试 DV 转换',
			'settings.dvConversionDv81Description' => '强制内联 RPU 转换为 Dolby Vision Profile 8.1',
			'settings.dvConversionHevcStripDescription' => '移除 Dolby Vision RPU/EL 层并呈现普通 HEVC',
			'settings.disableDolbyVision' => '禁用 Dolby Vision',
			'settings.disableDolbyVisionDescription' => '文件包含 HDR10 或 HLG 层时，改为播放该层而非 Dolby Vision',
			'settings.hdrSdrConversion' => 'HDR 转 SDR',
			'settings.hdrSdrConversionDescription' => '选择在显示器无法显示 HDR 时由谁转换 HDR 视频。',
			'settings.hdrSdrConversionAuto' => '自动',
			'settings.hdrSdrConversionAutoDescription' => 'Android 9 及更高版本使用设备，更早版本使用播放器',
			'settings.hdrSdrConversionDevice' => '设备',
			'settings.hdrSdrConversionDeviceDescription' => '由设备的视频硬件转换。速度最快，但色彩取决于设备',
			'settings.hdrSdrConversionPlayer' => '播放器',
			'settings.hdrSdrConversionPlayerDescription' => '由播放器转换。色彩一致，但在低端电视盒上 4K 可能卡顿',
			'settings.deinterlace' => '去隔行',
			'settings.deinterlaceDescription' => '消除隔行扫描视频中的梳状伪影（仅 mpv 播放器）',
			'settings.deinterlaceOff' => '离开',
			'settings.deinterlaceOffDescription' => '显示解码后的隔行扫描视频',
			'settings.deinterlaceVideo' => '视频',
			'settings.deinterlaceVideoDescription' => '将每个字段变成一个完整的帧。用于电视视频拍摄，例如体育、新闻和音乐会',
			'settings.deinterlaceFilm' => '电影',
			'settings.deinterlaceFilmDescription' => '将电视电影和动画的原始帧恢复至 NTSC DVD 上常见的 29.97 fps。电视视频拍摄时断断续续。直播电视使用视频',
			'settings.requireProfileSelectionOnOpen' => '打开应用时选择用户资料',
			'settings.requireProfileSelectionOnOpenDescription' => '每次打开应用时都显示用户资料选择界面',
			'settings.forceTvMode' => '强制 TV 模式',
			'settings.forceTvModeKeepTitle' => '保留电视布局？',
			'settings.forceTvModeKeepBody' => ({required Object seconds}) => '电视布局是为遥控器而设计的。恢复到 ${seconds} 中的正常布局。',
			'settings.forceTvModeKeepConfirm' => '保留电视布局',
			'settings.forceTvModeReverted' => '电视布局已恢复',
			'settings.forceTvModeDescription' => '强制 TV 布局。适用于无法自动检测的设备。需要重启。',
			'settings.startInFullscreen' => '以全屏模式启动',
			'settings.startInFullscreenDescription' => '启动时以全屏模式打开 Luroka',
			'settings.exitFullscreenOnPlayerClose' => '关闭播放器时退出全屏',
			'settings.exitFullscreenOnPlayerCloseDescription' => '关闭视频播放器时自动退出全屏模式',
			'settings.autoHidePerformanceOverlay' => '自动隐藏性能叠加层',
			'settings.autoHidePerformanceOverlayDescription' => '性能叠加层随播放控件一起淡入淡出',
			'settings.showNavBarLabels' => '显示导航栏标签',
			'settings.showNavBarLabelsDescription' => '在导航栏图标下方显示文字标签',
			'settings.startupSection' => '启动页面',
			'settings.showExploreTab' => '显示“探索”标签页',
			'settings.showExploreTabDescription' => '显示“探索”标签页，其中包含来自 Plex Discover 和已连接追踪服务的内容',
			'settings.liveTvDefaultFavorites' => '默认显示收藏频道',
			'settings.liveTvDefaultFavoritesDescription' => '打开直播电视时仅显示收藏频道',
			'settings.general' => '通用',
			'settings.generalDescription' => '语言、启动和窗口行为',
			'settings.languageAndRegion' => '语言与地区',
			'settings.startup' => '启动',
			'settings.display' => '显示',
			_ => null,
		} ?? switch (path) {
			'settings.libraryAndCards' => '媒体库与卡片',
			'settings.homeScreen' => '主屏幕',
			'settings.navigation' => '导航',
			'settings.window' => '窗口',
			'settings.liveTv' => '直播电视',
			'settings.player' => '播放器',
			'settings.videoAndDisplay' => '视频与显示',
			'settings.audio' => '音频',
			'settings.quality' => '画质',
			'settings.subtitles' => '字幕',
			'settings.seekAndTiming' => '跳转与计时',
			'settings.behavior' => '行为',
			'settings.gestures' => '手势',
			'settings.gestureBrightnessSwipe' => '亮度滑动',
			'settings.gestureBrightnessSwipeDescription' => '在屏幕左边缘上下滑动以调节亮度',
			'settings.gestureVolumeSwipe' => '音量滑动',
			'settings.gestureVolumeSwipeDescription' => '在屏幕右边缘上下滑动以调节音量',
			'settings.gesturePinchToZoom' => '双指缩放',
			'settings.gesturePinchToZoomDescription' => '在视频上双指捏合以放大或缩小',
			'settings.rememberBrightnessLevel' => '记住亮度',
			'settings.rememberBrightnessLevelDescription' => '以上次滑动设置的亮度开始播放',
			'settings.controls' => '控制',
			'settings.rememberPlayerChanges' => '记住播放器更改',
			'settings.rememberPlayerChangesDescription' => '播放期间所做的更改保存并重新应用的位置',
			'settings.scopePlaybackSpeed' => '播放速度',
			'settings.scopeShaderPreset' => '着色器预设',
			'settings.scopeAspectRatio' => '宽高比',
			'settings.scopeSyncOffsets' => '音频和字幕同步',
			'settings.playerScopeOff' => '不保存',
			'settings.playerScopeGlobal' => '所有位置',
			'settings.playerScopeLibrary' => '按媒体库',
			'settings.playerScopeTitle' => '按剧集或电影',
			'settings.exportDialogTitle' => '导出 Luroka 设置',
			'settings.velvetHourTheme' => '天鹅绒时光',
			'themeEditor.builtIn' => '内置',
			'themeEditor.presets' => '预设',
			'themeEditor.custom' => '定制',
			'themeEditor.customEmpty' => '尚未创建',
			'themeEditor.editCustom' => '编辑自定义主题',
			'themeEditor.editCustomDescription' => '自己选择每种颜色',
			'themeEditor.locked' => '与支持者一起解锁',
			'themeEditor.savedLocked' => '已保存 — 通过支持者解锁',
			'themeEditor.title' => '自定义主题',
			'themeEditor.startFrom' => '开始于',
			'themeEditor.startFromDescription' => '复制另一个主题的所有颜色',
			'themeEditor.colors' => '颜色',
			'themeEditor.preview' => '预览',
			'themeEditor.slots.bg' => '背景',
			'themeEditor.slots.surface' => '表面',
			'themeEditor.slots.outline' => '概要',
			'themeEditor.slots.text' => '文字',
			'themeEditor.slots.textMuted' => '次要文本',
			'themeEditor.slots.accent' => '口音',
			'themeEditor.opacity' => '不透明度',
			'themeEditor.hexHint' => '#RRGGBB 或 #AARRGGBB',
			'themeEditor.fromOtherThemes' => '来自其他主题',
			'themeEditor.swatchLabel' => ({required Object theme, required Object color}) => '${theme} ${color}',
			'themeEditor.contrast.textOnBg' => '背景上的文字',
			'themeEditor.contrast.textOnSurface' => '表面文字',
			'themeEditor.contrast.textMutedOnBg' => '背景上的辅助文本',
			'themeEditor.contrast.textMutedOnSurface' => '表面上的辅助文字',
			'themeEditor.contrast.accentOnBg' => '背景强调',
			'themeEditor.contrast.accentOnSurface' => '表面强调',
			'themeEditor.contrast.labelOnAccent' => '强调按钮标签',
			'themeEditor.lowContrast' => ({required Object pair, required Object ratio, required Object minimum}) => '${pair}：${ratio}：1，低于推荐的${minimum}：1',
			'themeEditor.discardTitle' => '放弃更改？',
			'themeEditor.discardMessage' => '您未保存的颜色更改将会丢失。',
			'themeEditor.discard' => '丢弃',
			'themeEditor.previewCardTitle' => ({required Object number}) => '剧集 ${number}',
			'themeEditor.previewCardSubtitle' => ({required Object minutes}) => '${minutes} 剩余时间',
			'themeEditor.previewSwitch' => '自动播放',
			'themeEditor.previewMutedText' => '辅助文本读起来像这样',
			'seriesBrowser.oneEpisode' => '1 集',
			'seriesBrowser.watchedCount' => ({required Object count}) => '${count} 已观看',
			'seriesBrowser.episodeCount' => ({required Object count}) => '${count} 剧集',
			'seriesBrowser.episodesFor' => ({required Object season}) => '${season} · 剧集',
			'seriesBrowser.enterHint' => '选择：开放季·↓：剧集',
			'titlePage.genre' => '流派',
			'titlePage.remaining' => ({required Object time}) => '剩余${time}',
			'titlePage.continueEpisode' => ({required Object season, required Object episode}) => '继续 S${season} E${episode}',
			'titlePage.watchlist' => '关注列表',
			'titlePage.more' => '更多',
			'tvMenus.appearanceDescription' => '主题、屏幕边距和海报',
			'lurokaPlayer.title' => '播放器设置',
			'lurokaPlayer.watch' => '手表',
			'lurokaPlayer.watchDescription' => '设定节奏、放松并决定接下来播放什么。',
			'lurokaPlayer.picture' => '图片设置',
			'lurokaPlayer.pictureDescription' => '缩放、HDR 和视频处理',
			'lurokaPlayer.sound' => '音频和字幕',
			'lurokaPlayer.audioSettings' => '音频设置',
			'lurokaPlayer.soundDescription' => '时间、音量和音频输出',
			'lurokaPlayer.chooseTracks' => '选择语言和字幕轨道',
			'lurokaPlayer.tools' => '高级',
			'lurokaPlayer.toolsDescription' => '播放信息和诊断',
			'lurokaPlayer.preferences' => '播放首选项',
			'lurokaPlayer.preferencesDescription' => '您的电影院，您的默认设置。从声音和字幕开始，然后微调流媒体和屏幕。',
			'lurokaPlayer.streamPreferences' => '流媒体质量',
			'lurokaPlayer.displayPreferences' => '显示',
			'lurokaPlayer.enginePreferences' => '高级播放器选项',
			'lurokaPlayer.seekPreferences' => '寻求',
			'lurokaPlayer.watchPreferences' => '自动播放和跳过',
			'lurokaPlayer.rememberPreferences' => '记住偏好',
			'lurokaSettings.quickSetup' => '快速设置',
			'lurokaSettings.quickSetupDescription' => '从基本要素开始：更流畅的电视浏览、舒适的屏幕适配、您的主页布局和播放首选项。',
			'lurokaSettings.experience' => '您的经历',
			'lurokaSettings.experienceDescription' => '让 Luroka 感觉良好：外观、语言、播放、库和屏幕时间。',
			'lurokaSettings.remoteHint' => '↑ ↓ 浏览类别 · → / 选择打开选项 · ← 返回类别',
			'playerChrome.browse' => '章节和队列',
			'playerChrome.backToPlayback' => '返回播放',
			'playerChrome.nowPlaying' => '正在播放',
			'playerChrome.options' => '玩家选项',
			'tvLayout.screenMargins' => '电视屏幕边距',
			'tvLayout.screenMarginsDescription' => '如果您的电视截断了部分图片，请缩小应用程序的边缘',
			'tvLayout.screenMarginsDefault' => '0%（默认）',
			'studios.checkingCopies' => '检查其他库...随时选择一个已知的副本。',
			'studios.incompleteCopies' => '有些库无法检查。选择已知副本或取消并重试。',
			'studios.partialFavorites' => '某些收藏夹无法加载。选择刷新以重试。',
			'studios.copyLookupFailedTitle' => '无法检查所有副本',
			'studios.copyLookupFailedMessage' => '一些图书馆没有回应。您可以打开已找到的副本之一或取消并重试。',
			'studios.openKnownCopies' => '显示已知副本',
			'studios.browseAll' => '浏览全部',
			'studios.titleCount' => ({required Object count}) => '${count} 标题',
			'studios.topRated' => '评价最高',
			'studios.mostWatched' => '您的图书馆中观看次数最多的',
			'studios.collection' => '工作室系列',
			'studios.loadedTitles' => ({required Object count}) => '${count} 标题已加载',
			'studios.sort' => '对标题进行排序',
			'studios.sortTitleAscending' => '标题 A-Z',
			'studios.sortTitleDescending' => '标题 Z–A',
			'studios.sortNewest' => '最新发布',
			'studios.sortOldest' => '最旧的版本',
			'studios.sortAdded' => '最近添加',
			'studios.sortEpisodeAdded' => '最近添加的剧集',
			'studios.sortRating' => '最高评价',
			'studios.title' => '按工作室浏览',
			'studios.all' => '全部',
			'studios.movies' => '电影',
			'studios.shows' => '电视节目',
			'studios.loadMore' => '加载更多标题',
			'studios.empty' => '您当前可见的图书馆中没有匹配的标题。',
			'studios.retry' => '无法加载更多标题 — 选择重试',
			'studios.description' => '在您的图书馆中探索该工作室的电影和节目。',
			'dashboard.previousFeature' => '上一个特色标题',
			'dashboard.nextFeature' => '下一个特色标题',
			'dashboard.cinemaHome' => '首页',
			'dashboard.episodeFallback' => '电视剧集',
			'dashboard.timeLeft' => ({required Object minutes}) => '还剩 ${minutes} 分钟',
			'dashboard.timeLeftHours' => ({required Object hours, required Object minutes}) => '还剩 ${hours} 小时 ${minutes} 分钟',
			'dashboard.spoilerHidden' => '您的剧透偏好隐藏了剧集详细信息。',
			'dashboard.synopsisUnavailable' => '打开详细信息以查看有关此标题的更多信息。',
			'dashboard.yourSpace' => '您的空间',
			'dashboard.title' => '你的电影院。',
			'dashboard.subtitle' => '选择一个故事，或寻找下一个故事。',
			'dashboard.featured' => 'LUROKA 精选',
			'dashboard.jumpBackIn' => '继续观看',
			'dashboard.episodeLabel' => ({required Object season, required Object episode}) => 'S${season} · E${episode}',
			'dashboard.anotherPick' => '另一个选择',
			'dashboard.exploreSeries' => '探索系列',
			'dashboard.showFeatured' => '主页聚焦',
			'dashboard.showFeaturedDescription' => '在主页顶部显示精选电影和节目。',
			'lurokaCatalog.aboutPerson' => '在聚光灯下',
			'lurokaCatalog.biographyUnavailable' => '该服务器无法提供传记。',
			'lurokaCatalog.filmography' => '您图书馆中的电影和节目',
			'lurokaCatalog.recommended' => '发现',
			'lurokaCatalog.browse' => '所有标题',
			'lurokaCatalog.collections' => '收藏',
			'lurokaCatalog.browseHint' => '探索您的目录。使用过滤器和排序来塑造选择。',
			'lurokaCatalog.recommendedHint' => '寻找你的下一个故事',
			'lurokaCatalog.details' => '故事背后',
			'referenceDetails.oneEpisodeLeft' => '还剩 1 集',
			'referenceDetails.playAll' => '播放全部',
			'referenceDetails.present' => '现在',
			'referenceDetails.continuing' => '继续',
			'referenceDetails.upNext' => '接下来',
			'referenceDetails.episodesLeft' => ({required Object count}) => '${count} 还剩几集',
			'lurokaThemes.title' => 'Luroka 影院调色板',
			'lurokaThemes.coral' => '珊瑚·午夜蓝&夕阳',
			'lurokaThemes.ocean' => '海洋·深蓝&冰',
			'lurokaThemes.jade' => '翡翠·万年青&薄荷',
			'lurokaThemes.amethyst' => '紫水晶·午夜紫罗兰',
			'lurokaThemes.darkThemes' => '黑暗电影主题',
			'lurokaThemes.lightThemes' => '轻电影主题',
			'lurokaThemes.moreThemes' => '更多主题',
			'lurokaThemes.moreThemesDescription' => '浏览其他调色板和自定义颜色',
			'lurokaThemes.obsidian' => '黑曜石·纯黑&香槟色',
			'lurokaThemes.nocturne' => '夜曲·木炭与香槟',
			'lurokaThemes.burgundy' => '勃艮第·天鹅绒酒与玫瑰',
			'lurokaThemes.slate' => '板岩·石墨&长春花',
			'lurokaThemes.espresso' => '浓缩咖啡·可可和焦糖',
			'lurokaThemes.pearl' => '珍珠·瓷器&蓝宝石',
			'lurokaThemes.linen' => '亚麻·温暖的象牙色和赤土色',
			'lurokaThemes.sunrise' => '日出·桃色与珊瑚',
			'lurokaThemes.coastal' => '海岸·雾海青色',
			'lurokaThemes.latte' => '拿铁·奶油和焦糖',
			'lurokaThemes.sage' => '鼠尾草·软绿&桉树',
			'lurokaThemes.lavender' => '薰衣草·紫丁香&深紫罗兰',
			'customPerformance.title' => '性能与效果',
			'customPerformance.fireStickMode' => '低功耗设备模式',
			'customPerformance.description' => '使用简化效果、静态背景、上限为 720p 的图稿以及 40 MiB 图像缓存。启用后，这会覆盖视觉效果；关闭它会恢复您的视觉效果首选项。',
			'customPerformance.detailsTitle' => '性能细节',
			'customPerformance.details' => '主动效果、图像缓存限制和浏览性能测量',
			'customPerformance.effectsTier' => '主动效果层',
			'customPerformance.imageCache' => '图像缓存限制',
			'customPerformance.measurement' => '浏览测量',
			'customPerformance.measureInstructions' => '开始 20 秒的示例，返回主页，然后使用遥控器进行浏览。返回此处查看结果。在模式打开和关闭的情况下重复相同的操作进行比较。这衡量的是 Flutter UI 的工作情况，而不是视频解码器的性能。',
			'customPerformance.startSample' => '开始 20 秒示例',
			'customPerformance.stopSample' => '立即完成样品',
			'customPerformance.sampling' => '采样 — 返回主页并浏览。结果将保存在这里。',
			'customPerformance.frames' => '采样帧数',
			'customPerformance.slowFrames' => '框架超出预算',
			'customPerformance.buildP95' => 'UI 构建时间（第 95 个百分位）',
			'customPerformance.rasterP95' => '光栅时间（第 95 个百分位）',
			'customPerformance.frameBudget' => '每帧预算',
			'customPerformance.processMemory' => '示例结束时的应用程序进程内存',
			'customPerformance.noFrames' => '未捕获任何渲染帧。启动另一个示例并浏览该应用程序。',
			'homeLayout.manageStudios' => '选择并订购工作室',
			'homeLayout.manageStudiosDescription' => '选择此配置文件中显示的工作室，并安排它们的顺序。',
			'homeLayout.studioUnavailable' => '只有在您选择的库中找到的工作室才会出现在主页上。',
			'homeLayout.showAllStudios' => '显示所有工作室',
			'homeLayout.hideAllStudios' => '隐藏所有工作室',
			'homeLayout.reorderStudio' => '更改工作室顺序',
			'homeLayout.episodeThumbnails' => '继续观看中的剧集图像',
			'homeLayout.episodeThumbnailsDescription' => '在“继续观看”和“下一步”中显示剧集图像而不是系列或季海报。',
			'homeLayout.spotlightSource' => '精选内容来源',
			'homeLayout.spotlightSourceDescription' => '“为您推荐”使用该个人资料在此设备上的查看活动，以及收藏夹和图书馆标题。',
			'homeLayout.spotlightForYou' => '为你',
			'homeLayout.spotlightForYouDescription' => '使用此个人资料在此设备上的观看活动，混合您正在观看的内容、收藏夹、新增内容和趋势。',
			'homeLayout.spotlightTrending' => '流行趋势',
			'homeLayout.spotlightTrendingDescription' => '您图书馆中的热门电影和节目。',
			'homeLayout.spotlightContinue' => '继续观看',
			'homeLayout.spotlightContinueDescription' => '您已开始的标题和可以继续的剧集。',
			'homeLayout.spotlightFavorites' => '从你的最爱',
			'homeLayout.spotlightInspired' => '受到您的观看启发',
			'homeLayout.spotlightNextUp' => '接下来',
			'homeLayout.title' => '个性化主页',
			'homeLayout.description' => '选择此配置文件的行顺序和可见性。选择一行以移动或隐藏它。',
			'homeLayout.rows' => '主行',
			'homeLayout.progressLayout' => '继续观看并下一步',
			'homeLayout.progressCombined' => '组合成一排',
			'homeLayout.progressSeparate' => '单独的行',
			'homeLayout.progressDescription' => '当服务器支持时，单独的下一个。其他服务器保持合并。',
			'homeLayout.visible' => '可见',
			'homeLayout.hidden' => '隐藏',
			'homeLayout.showRow' => '显示行',
			'homeLayout.hideRow' => '隐藏行',
			'homeLayout.moveUp' => '向上移动',
			'homeLayout.moveDown' => '下移',
			'homeLayout.pinnedCollections' => '固定收藏集',
			'homeLayout.pinInstructions' => '打开集合的菜单并选择 Pin 到主页。在此处选择固定集合以删除其快捷方式。',
			'homeLayout.pinCollection' => 'Pin 到首页',
			'homeLayout.unpinCollection' => '从家里取消固定',
			'homeLayout.reset' => '恢复默认行',
			'homeLayout.resetDescription' => '恢复原始行顺序并显示此配置文件的所有行？您固定的收藏将被保留。',
			'homeLayout.saveFailed' => '无法保存您的主页布局。请再试一次。',
			'homeLayout.emptyHint' => '行可能被隐藏。打开个性化主页以再次显示它们。',
			'screenTime.title' => '屏幕时间',
			'screenTime.description' => '查看在此个人资料上观看视频所花费的时间',
			'screenTime.today' => '今天',
			'screenTime.thisWeek' => '本周',
			'screenTime.thisMonth' => '本月',
			'screenTime.lessThanMinute' => '< 1 分钟',
			'screenTime.minutes' => ({required Object count}) => '${count} 分钟',
			'screenTime.hours' => ({required Object count}) => '${count} 小时',
			'screenTime.hoursMinutes' => ({required Object hours, required Object minutes}) => '${hours} 小时 ${minutes} 分钟',
			'activityStats.title' => '查看统计数据',
			'activityStats.period' => '时期',
			'activityStats.last7Days' => '7天',
			'activityStats.last30Days' => '30天',
			'activityStats.last90Days' => '90天',
			'activityStats.thisYear' => '年份',
			'activityStats.allTime' => '全部',
			'activityStats.heroAllTime' => '所有时间',
			'activityStats.heroDailyAverage' => '日平均',
			'activityStats.consistency' => '一致性',
			'activityStats.currentStreak' => '当前连胜',
			'activityStats.dayCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n, one: '${n} 天', other: '${n} 天', ),
			'activityStats.longestStreak' => '最长连续纪录',
			'activityStats.bestDay' => '最好的一天',
			'activityStats.bestWeek' => '最好的一周',
			'activityStats.trendTitle' => '观看时间',
			'activityStats.trendToday' => '今天',
			'activityStats.gapDetail' => ({required Object stat, required Object range}) => '${stat} 上 ${range}',
			'activityStats.patternsTitle' => '你的模式',
			'activityStats.mostlyKind' => ({required Object kind}) => '大部分是${kind}',
			'activityStats.weekdayTitle' => '按工作日',
			'activityStats.hoursTitle' => '按一天中的时间',
			'activityStats.amLabel' => '调幅',
			'activityStats.pmLabel' => '下午',
			'activityStats.kindsTitle' => '按类别',
			'activityStats.kindMovie' => '电影',
			'activityStats.kindTv' => '电视',
			'activityStats.kindLiveTv' => '电视直播',
			'activityStats.kindMusic' => '音乐',
			'activityStats.kindOther' => '其他',
			'activityStats.topTitlesTitle' => '最受关注',
			'activityStats.sessionsTitle' => '最近的会议',
			'activityStats.recentViewingTitle' => '最近观看',
			'activityStats.recentViewingHint' => '所选时间段内的总观看时间。日期显示最新观看次数。',
			'activityStats.showMore' => '显示更多',
			'activityStats.sessionNoTitle' => '不明播放',
			'activityStats.emptyTitle' => '这里还什么都没有',
			'activityStats.emptyBody' => '观看一些内容，您的统计数据就会在这里建立起来。',
			'activityStats.noDataInPeriod' => '在此期间没有播放记录。',
			'search.hint' => '搜索电影、剧集、音乐…',
			'search.tryDifferentTerm' => '尝试不同的搜索词',
			'search.searchYourMedia' => '搜索媒体',
			'search.enterTitleActorOrKeyword' => '输入标题、演员或关键词',
			'search.people' => '人',
			'search.recentSearches' => '最近的搜索',
			'search.clearHistory' => '清除历史记录',
			'hotkeys.setShortcutFor' => ({required Object actionName}) => '为 ${actionName} 设置快捷键',
			'hotkeys.clearShortcut' => '清除快捷键',
			'hotkeys.noShortcutSet' => '未设置快捷键',
			'hotkeys.currentShortcut' => '当前快捷键：',
			'hotkeys.pressToRecord' => '点击后录入快捷键',
			'hotkeys.recordingShortcut' => '请按下快捷键',
			'hotkeys.actions.playPause' => '播放/暂停',
			'hotkeys.actions.volumeUp' => '增大音量',
			'hotkeys.actions.volumeDown' => '减小音量',
			'hotkeys.actions.seekForward' => ({required Object seconds}) => '快进 (${seconds}秒)',
			'hotkeys.actions.seekBackward' => ({required Object seconds}) => '快退 (${seconds}秒)',
			'hotkeys.actions.fullscreenToggle' => '切换全屏',
			'hotkeys.actions.muteToggle' => '切换静音',
			'hotkeys.actions.subtitleToggle' => '切换字幕',
			'hotkeys.actions.audioTrackNext' => '下一音轨',
			'hotkeys.actions.subtitleTrackNext' => '下一字幕轨',
			'hotkeys.actions.chapterNext' => '下一章节',
			'hotkeys.actions.chapterPrevious' => '上一章节',
			'hotkeys.actions.episodeNext' => '下一集',
			'hotkeys.actions.episodePrevious' => '上一集',
			'hotkeys.actions.speedIncrease' => '加速',
			'hotkeys.actions.speedDecrease' => '减速',
			'hotkeys.actions.speedReset' => '重置速度',
			'hotkeys.actions.zoomIn' => '放大',
			'hotkeys.actions.zoomOut' => '缩小',
			'hotkeys.actions.zoomReset' => '重置缩放',
			'hotkeys.actions.subSeekNext' => '跳转到下一条字幕',
			'hotkeys.actions.subSeekPrev' => '跳转到上一条字幕',
			'hotkeys.actions.shaderToggle' => '切换着色器',
			'hotkeys.actions.skipMarker' => '跳过片头/片尾',
			'hotkeys.actions.screenshot' => '截图',
			'fileInfo.title' => '文件信息',
			'fileInfo.overview' => '简介',
			'fileInfo.video' => '视频',
			'fileInfo.audio' => '音频',
			'fileInfo.subtitles' => '字幕',
			'fileInfo.images' => '内嵌图片',
			'fileInfo.dataStreams' => '数据流',
			'fileInfo.lyrics' => '歌词',
			'fileInfo.file' => '文件',
			'fileInfo.attachments' => '附件',
			'fileInfo.delivery' => '传输方式',
			'fileInfo.versionCounter' => ({required Object index, required Object count}) => '第 ${index} 个版本，共 ${count} 个',
			'fileInfo.fileCounter' => ({required Object index, required Object count}) => '第 ${index} 个文件，共 ${count} 个',
			'fileInfo.noStreams' => '服务器报告此文件没有媒体流。',
			'fileInfo.copyPath' => '复制路径',
			'fileInfo.pathCopied' => '文件路径已复制',
			'fileInfo.codec' => '编解码器',
			'fileInfo.codecTag' => '编码器标签',
			'fileInfo.resolution' => '分辨率',
			'fileInfo.codedResolution' => '编码分辨率',
			'fileInfo.bitrate' => '比特率',
			'fileInfo.frameRate' => '帧率',
			'fileInfo.rotation' => '旋转',
			'fileInfo.comment' => '注释',
			'fileInfo.audioDescription' => '音频描述',
			'fileInfo.headerCompression' => '头部压缩',
			'fileInfo.sidecarFile' => '外挂文件',
			'fileInfo.transportTimestamp' => '传输时间戳',
			'fileInfo.displayOffset' => '显示偏移',
			'fileInfo.previewFailureCode' => '预览失败代码',
			'fileInfo.previewRetries' => '预览重试次数',
			'fileInfo.aspectRatio' => '宽高比',
			'fileInfo.pixelAspectRatio' => '像素宽高比',
			'fileInfo.profile' => '编码配置',
			'fileInfo.level' => '级别',
			'fileInfo.bitDepth' => '位深度',
			'fileInfo.pixelFormat' => '像素格式',
			'fileInfo.colorSpace' => '色彩空间',
			'fileInfo.colorRange' => '色彩范围',
			'fileInfo.colorPrimaries' => '色彩基色',
			'fileInfo.colorTransfer' => '色彩转换',
			'fileInfo.chromaSubsampling' => '色度子采样',
			'fileInfo.chromaLocation' => '色度位置',
			'fileInfo.scanType' => '扫描类型',
			'fileInfo.interlaced' => '隔行扫描',
			'fileInfo.anamorphic' => '变形宽银幕',
			'fileInfo.referenceFrames' => '参考帧',
			'fileInfo.dynamicRange' => '动态范围',
			'fileInfo.dolbyVision' => 'Dolby Vision',
			'fileInfo.dolbyVisionLevel' => 'Dolby Vision 级别',
			'fileInfo.dolbyVisionVersion' => 'Dolby Vision 版本',
			'fileInfo.dolbyVisionLayers' => 'Dolby Vision 图层',
			'fileInfo.baseLayerCompatibility' => '基础层兼容性',
			'fileInfo.avcBitstream' => 'AVC 比特流',
			'fileInfo.nalLengthSize' => 'NAL 长度',
			'fileInfo.scalingMatrix' => '自定义缩放矩阵',
			'fileInfo.streamIdentifier' => '流标识符',
			'fileInfo.streamIndex' => '流索引',
			'fileInfo.streamId' => '流 ID',
			'fileInfo.language' => '语言',
			'fileInfo.languageCode' => '语言代码',
			'fileInfo.streamTitle' => '轨道标题',
			'fileInfo.channels' => '声道',
			'fileInfo.sampleRate' => '采样率',
			'fileInfo.spatialAudio' => '空间音频',
			'fileInfo.textBased' => '基于文本',
			'fileInfo.subtitleFormat' => '外挂文件格式',
			'fileInfo.provider' => '提供方',
			'fileInfo.matchScore' => '匹配分数',
			'fileInfo.externalDelivery' => '可单独提供',
			'fileInfo.sidecarPath' => '外挂文件路径',
			'fileInfo.sourceStream' => '复制来源',
			'fileInfo.temporary' => '临时',
			'fileInfo.timeBase' => '时间基准',
			'fileInfo.overallBitrate' => '总比特率',
			'fileInfo.path' => '路径',
			'fileInfo.fileName' => '文件名',
			'fileInfo.size' => '大小',
			'fileInfo.totalSize' => '总大小',
			'fileInfo.container' => '容器',
			'fileInfo.duration' => '时长',
			'fileInfo.previewThumbnails' => '预览缩略图',
			'fileInfo.previewIndex' => '预览索引',
			'fileInfo.packetLength' => '数据包长度',
			'fileInfo.filePresent' => '文件存在',
			'fileInfo.fileReadable' => '服务器可读',
			'fileInfo.streamPath' => '流路径',
			'fileInfo.optimizedForStreaming' => '已针对流式传输优化',
			'fileInfo.has64bitOffsets' => '64 位偏移量',
			'fileInfo.protocol' => '协议',
			'fileInfo.mediaType' => '媒体类型',
			'fileInfo.sourceKind' => '来源类型',
			'fileInfo.optimizedVersion' => '优化版本',
			'fileInfo.optimizationTarget' => '优化目标',
			'fileInfo.deletedAt' => '已删除',
			'fileInfo.remoteSource' => '远程来源',
			'fileInfo.infiniteStream' => '无限流',
			'fileInfo.directPlay' => '直接播放',
			'fileInfo.directStream' => '直接串流',
			'fileInfo.transcoding' => '转码',
			'fileInfo.etag' => 'ETag',
			'fileInfo.versionId' => '版本 ID',
			'fileInfo.fileId' => '文件 ID',
			'fileInfo.defaultAudioTrack' => '默认音轨',
			'fileInfo.defaultSubtitleTrack' => '默认字幕轨道',
			'fileInfo.subtitlesOff' => '关闭',
			'fileInfo.flagDefault' => '默认',
			'fileInfo.flagForced' => '强制',
			'fileInfo.flagSelected' => '已选',
			'fileInfo.flagExternal' => '外部',
			'fileInfo.flagHearingImpaired' => '听障辅助',
			'fileInfo.flagDub' => '配音',
			'fileInfo.flagOriginal' => '原声',
			'fileInfo.channelsMono' => '单声道',
			'fileInfo.dolbyVisionProfile' => ({required Object profile}) => '编码配置 ${profile}',
			'mediaMenu.markAsWatched' => '标记为已观看',
			'mediaMenu.markAsUnwatched' => '标记为未观看',
			'mediaMenu.clearProgress' => '明显的进展',
			'mediaMenu.removeFromContinueWatching' => '从继续观看中移除',
			'mediaMenu.viewDetails' => '查看详情',
			'mediaMenu.goToSeries' => '前往剧集',
			'mediaMenu.shufflePlay' => '随机播放',
			'mediaMenu.shuffleNotAvailableOffline' => '离线时无法随机播放',
			'mediaMenu.fileInfo' => '文件信息',
			'mediaMenu.deleteEpisodeFromServer' => '从服务器删除单集',
			'mediaMenu.deleteSeasonFromServer' => '从服务器删除季度',
			'mediaMenu.deleteShowFromServer' => '从服务器删除剧集',
			'mediaMenu.deleteMovieFromServer' => '从服务器删除电影',
			'mediaMenu.deleteEpisodeTitle' => '删除这个单集？',
			'mediaMenu.deleteSeasonTitle' => '删除这一季度？',
			'mediaMenu.deleteShowTitle' => '删除这部剧集？',
			'mediaMenu.deleteMovieTitle' => '删除这部电影？',
			'mediaMenu.deleteEpisodeConfirm' => '删除单集',
			'mediaMenu.deleteSeasonConfirm' => '删除季度',
			'mediaMenu.deleteShowConfirm' => '删除剧集',
			'mediaMenu.deleteMovieConfirm' => '删除电影',
			'mediaMenu.deleteAnyway' => '仍然删除',
			'mediaMenu.confirmDeleteTarget' => ({required Object title}) => '从你的服务器永久删除 ${title}？',
			'mediaMenu.deleteMultipleWarning' => '这包括所有剧集及其文件。',
			'mediaMenu.deleteEpisodeCountWarning' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n, one: '这将删除其中的所有 ${n} 剧集及其文件。', other: '这将删除其中全部 ${n} 集以及它们的文件。', ),
			'mediaMenu.deleteMultiPartWarning' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n, one: '该项目存储为 ${n} 文件，该文件将被删除。', other: '此项目存储在 ${n} 个文件中，所有这些文件都会被删除。', ),
			'mediaMenu.deleteSharedFileHeading' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n, one: '${n} 其他剧集存储在同一文件中，也将被删除：', other: '另外 ${n} 集存储在同一个文件中，也会一并删除：', ),
			'mediaMenu.deleteScopeUnverifiedProbeFailed' => 'Luroka 无法确认此操作会删除哪些文件，因此删除范围可能超出上面提到的项目。请取消后重试，或仍然删除。',
			'mediaMenu.deleteScopeUnverifiedNoFileInfo' => '你的服务器没有提供此项目的文件详情，因此 Luroka 无法确认此操作会删除哪些文件。删除范围可能超出上面提到的项目。',
			'mediaMenu.mediaDeletedSuccessfully' => '媒体项已成功删除',
			'mediaMenu.mediaFailedToDelete' => '删除媒体项失败',
			'mediaMenu.rate' => '评分',
			'mediaMenu.playFromBeginning' => '从头播放',
			'mediaMenu.playVersion' => '播放版本…',
			'rateSheet.title' => '评分',
			'rateSheet.server' => '服务器',
			'rateSheet.favorite' => '收藏',
			'rateSheet.favorited' => '已收藏',
			'rateSheet.saved' => '已保存',
			'rateSheet.notAvailable' => '未找到匹配项',
			'rateSheet.noConnectedServices' => '在设置中连接服务，即可在此评分。',
			'accessibility.mediaCardMovie' => ({required Object title}) => '${title}, 电影',
			'accessibility.mediaCardShow' => ({required Object title}) => '${title}, 电视剧',
			'accessibility.mediaCardEpisode' => ({required Object title, required Object episodeInfo}) => '${title}, ${episodeInfo}',
			'accessibility.mediaCardSeason' => ({required Object title, required Object seasonInfo}) => '${title}, ${seasonInfo}',
			'accessibility.mediaCardWatched' => '已观看',
			'accessibility.mediaCardPartiallyWatched' => ({required Object percent}) => '已观看 ${percent}%',
			'accessibility.mediaCardUnwatched' => '未观看',
			'accessibility.tapToPlay' => '点击播放',
			'accessibility.decrease' => '减小',
			'accessibility.increase' => '增大',
			'accessibility.decreaseValue' => ({required Object label}) => '减小${label}',
			'accessibility.increaseValue' => ({required Object label}) => '增大${label}',
			'accessibility.hue' => '色相',
			'accessibility.saturation' => '饱和度',
			'accessibility.brightness' => '亮度',
			_ => null,
		} ?? switch (path) {
			'accessibility.hexColor' => '十六进制颜色',
			'accessibility.expandText' => '展开文本',
			'accessibility.collapseText' => '折叠文本',
			'accessibility.alphabetNavigation' => '字母导航',
			'accessibility.alphabetScrollHint' => '上下滑动以按字母移动',
			'accessibility.rowColumnPosition' => ({required Object row, required Object rowCount, required Object column, required Object columnCount}) => '第 ${row} 行，共 ${rowCount} 行；第 ${column} 列，共 ${columnCount} 列',
			'accessibility.rowPosition' => ({required Object row, required Object rowCount}) => '第 ${row} 行，共 ${rowCount} 行',
			'accessibility.autoScrollPlay' => '开始自动滚动',
			'accessibility.autoScrollPause' => '暂停自动滚动',
			'accessibility.hueShort' => 'H',
			'accessibility.saturationShort' => 'S',
			'accessibility.valueShort' => 'V',
			'tooltips.shufflePlay' => '随机播放',
			'tooltips.playTrailer' => '播放预告片',
			'tooltips.markAsWatched' => '标记为已观看',
			'tooltips.markAsUnwatched' => '标记为未观看',
			'audioTracks.track' => ({required Object n}) => '音轨 ${n}',
			'videoControls.audioLabel' => '音频',
			'videoControls.subtitlesLabel' => '字幕',
			'videoControls.addTime' => ({required Object amount, required Object unit}) => '+${amount}${unit}',
			'videoControls.letterbox' => '黑边模式',
			'videoControls.fillScreen' => '填充屏幕',
			'videoControls.stretch' => '拉伸',
			'videoControls.lockRotation' => '锁定旋转',
			'videoControls.unlockRotation' => '解锁旋转',
			'videoControls.timerActive' => '定时器已激活',
			'videoControls.playbackWillPauseIn' => ({required Object duration}) => '播放将在 ${duration} 后暂停',
			'videoControls.sleepTimerEndOfVideo' => '当前视频结束时',
			'videoControls.sleepTimerStopAtHeader' => '停止于',
			'videoControls.sleepTimerDurationHeader' => '定时器',
			'videoControls.playbackWillPauseAtEnd' => '播放将在此视频结束时暂停',
			'videoControls.stillWatching' => '还在看吗？',
			'videoControls.pausingIn' => ({required Object seconds}) => '${seconds} 秒后暂停',
			'videoControls.continueWatching' => '继续',
			'videoControls.autoPlayNext' => '自动播放下一集',
			'videoControls.playNext' => '播放下一集',
			'videoControls.playButton' => '播放',
			'videoControls.pauseButton' => '暂停',
			'videoControls.playbackPaused' => '已暂停',
			'videoControls.playbackResumed' => '正在播放',
			'videoControls.loadingVideo' => '正在加载视频',
			'videoControls.showPlaybackControls' => '显示播放控制项',
			'videoControls.hidePlaybackControls' => '隐藏播放控制项',
			'videoControls.seekBackwardButton' => ({required Object seconds}) => '快退 ${seconds} 秒',
			'videoControls.seekForwardButton' => ({required Object seconds}) => '快进 ${seconds} 秒',
			'videoControls.previousButton' => '上一集',
			'videoControls.nextButton' => '下一集',
			'videoControls.previousChapterButton' => '上一章节',
			'videoControls.nextChapterButton' => '下一章节',
			'videoControls.muteButton' => '静音',
			'videoControls.unmuteButton' => '取消静音',
			'videoControls.settingsButton' => '播放设置',
			'videoControls.infoButton' => '信息',
			'videoControls.tracksButton' => '音频和字幕',
			'videoControls.chaptersButton' => '章节',
			'videoControls.versionQualityButton' => '版本与画质',
			'videoControls.versionColumnHeader' => '版本',
			'videoControls.qualityColumnHeader' => '画质',
			'videoControls.qualityOriginal' => '原始',
			'videoControls.qualityPresetLabel' => ({required Object resolution, required Object bitrate}) => '${resolution}p ${bitrate} Mbps',
			'videoControls.transcodeUnavailableFallback' => '转码不可用 — 以原始画质播放',
			'videoControls.subtitleUnavailableFallback' => '无法加载所选字幕 — 将继续无字幕播放',
			'videoControls.pipButton' => '画中画',
			'videoControls.aspectRatioButton' => '宽高比',
			'videoControls.ambientLighting' => '氛围灯光',
			'videoControls.fullscreenButton' => '进入全屏',
			'videoControls.exitFullscreenButton' => '退出全屏',
			'videoControls.alwaysOnTopButton' => '窗口置顶',
			'videoControls.rotationLockButton' => '旋转锁定',
			'videoControls.lockScreen' => '锁定屏幕',
			'videoControls.screenLockButton' => '屏幕锁定',
			'videoControls.longPressToUnlock' => '长按解锁',
			'videoControls.timelineSlider' => '视频时间轴',
			'videoControls.volumeSlider' => '音量滑块',
			'videoControls.endsAt' => ({required Object time}) => '结束时间：${time}',
			'videoControls.pipActive' => '正在以画中画模式播放',
			'videoControls.pipFailed' => '画中画启动失败',
			'videoControls.screenshotSaved' => '截图已保存',
			'videoControls.screenshotFailed' => '无法截图',
			'videoControls.zoomPercent' => ({required Object percent}) => '缩放 ${percent}%',
			'videoControls.volumePercent' => ({required Object percent}) => '音量 ${percent}%',
			'videoControls.pipErrors.androidVersion' => '需要 Android 8.0 或更高版本',
			'videoControls.pipErrors.iosVersion' => '需要 iOS 15.0 或更高版本',
			'videoControls.pipErrors.permissionDisabled' => '画中画已禁用。请在系统设置中启用。',
			'videoControls.pipErrors.notSupported' => '此设备不支持画中画模式',
			'videoControls.pipErrors.voSwitchFailed' => '无法切换画中画的视频输出',
			'videoControls.pipErrors.failed' => '画中画启动失败',
			'videoControls.pipErrors.prepareFailed' => '无法准备画中画',
			'videoControls.pipErrors.unknown' => ({required Object error}) => '发生错误：${error}',
			'videoControls.chapters' => '章节',
			'videoControls.noChaptersAvailable' => '没有可用的章节',
			'videoControls.queue' => '播放队列',
			'videoControls.noQueueItems' => '队列中没有项目',
			'videoControls.noAudioDevicesAvailable' => '没有可用的音频设备',
			'videoControls.searchSubtitles' => '搜索字幕',
			'videoControls.language' => '语言',
			'videoControls.noSubtitlesFound' => '未找到字幕',
			'videoControls.subtitleDownloaded' => '字幕已下载',
			'videoControls.subtitleDownloadedNotApplied' => '字幕已下载，但无法选择',
			'videoControls.subtitleDownloadFailed' => '字幕下载失败',
			'videoControls.searchLanguages' => '搜索语言…',
			'videoControls.skipIntro' => '跳过片头',
			'videoControls.skipCredits' => '跳过片尾',
			'videoControls.nextEpisode' => '下一集',
			'videoControls.subtitleTrack' => ({required Object n}) => '轨道 ${n}',
			'videoControls.subtitleFile' => ({required Object name}) => '字幕 ${name}',
			'videoControls.forcedTrack' => ({required Object label}) => '${label}（强制）',
			'videoControls.osdSubtitlesOff' => '字幕：关闭',
			'videoControls.osdSubtitles' => ({required Object track}) => '字幕：${track}',
			'videoControls.osdAudio' => ({required Object track}) => '音频：${track}',
			'messages.markedAsWatched' => '已标记为已观看',
			'messages.markedAsUnwatched' => '已标记为未观看',
			'messages.markedAsWatchedOffline' => '已标记为已观看（将在联网时同步）',
			'messages.markedAsUnwatchedOffline' => '已标记为未观看（将在联网时同步）',
			'messages.autoRemovedWatchedDownload' => ({required Object title}) => '已自动移除：${title}',
			'messages.autoRemovedWatchedDownloads' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n, one: '自动删除${n}观看下载', other: '已自动移除 ${n} 个看过的下载', ),
			'messages.removedFromContinueWatching' => '已从继续观看中移除',
			'messages.errorLoading' => ({required Object error}) => '出错：${error}',
			'messages.searchPartialResults' => '部分媒体服务器无法搜索。正在显示可用的结果。',
			'messages.streamInterrupted' => '视频流已中断。按播放键或拖动进度条重试。',
			'messages.liveStreamInterrupted' => '直播流已中断。按播放键重试。',
			'messages.fileInfoNotAvailable' => '文件信息不可用',
			'messages.playbackAuthenticationRequired' => '请重新登录媒体服务器以播放此项目。',
			'messages.playbackServerUnavailable' => '媒体服务器不可用。请稍后重试。',
			'messages.playbackDataInvalid' => '服务器返回了无效的播放信息。',
			'messages.playbackCancelled' => '播放已取消。',
			'messages.playbackFailed' => '无法开始播放。',
			'messages.playbackFailedDetail' => ({required Object error}) => '无法开始播放：${error}',
			'messages.audioOutputFailed' => '音频输出停止响应。请检查电视或功放的音频连接；如果其他应用也没有声音，请重启设备。',
			'messages.mediaUnavailable' => '此内容不再可用。',
			'messages.errorLoadingFileInfo' => ({required Object error}) => '加载文件信息时出错：${error}',
			'messages.errorLoadingSeries' => '加载剧集时出错',
			'messages.musicNotSupported' => '尚不支持播放音乐',
			'messages.noDescriptionAvailable' => '暂无描述',
			'messages.noProfilesAvailable' => '没有可用的用户资料',
			'messages.contactAdminForProfiles' => '请联系服务器管理员添加用户资料',
			'messages.unableToDetermineLibrarySection' => '无法确定此项目所属的媒体库',
			'messages.logsCleared' => '日志已清除',
			'messages.logsCopied' => '日志已复制到剪贴板',
			'messages.noLogsAvailable' => '没有可用日志',
			'messages.libraryScanning' => ({required Object title}) => '正在扫描“${title}”…',
			'messages.libraryScanStarted' => ({required Object title}) => '已开始扫描“${title}”媒体库',
			'messages.libraryScanFailed' => ({required Object error}) => '无法扫描媒体库：${error}',
			'messages.metadataRefreshing' => ({required Object title}) => '正在刷新“${title}”的元数据…',
			'messages.metadataRefreshStarted' => ({required Object title}) => '已开始刷新“${title}”的元数据',
			'messages.metadataRefreshFailed' => ({required Object error}) => '无法刷新元数据：${error}',
			'messages.logoutConfirm' => '确定要退出登录吗？',
			'messages.logoutDeviceConfirm' => '要在此设备上退出 Luroka 吗？所有用户资料（包括儿童资料）、服务器账户和已下载的媒体都将从此设备中移除。您可以稍后重新登录。',
			'messages.noSeasonsFound' => '未找到季',
			'messages.seasonsLoadFailed' => '无法加载季',
			'messages.noEpisodesFound' => '在第一季中未找到剧集',
			'messages.noEpisodesFoundGeneral' => '未找到剧集',
			'messages.episodesLoadFailed' => '无法加载剧集',
			'messages.noResultsFound' => '未找到结果',
			'messages.sleepTimerSet' => ({required Object label}) => '睡眠定时器已设置为 ${label}',
			'messages.noItemsAvailable' => '没有可用的项目',
			'messages.failedToCreatePlayQueueNoItems' => '创建播放队列失败：没有可用项目',
			'messages.failedPlayback' => ({required Object action, required Object error}) => '无法执行“${action}”：${error}',
			'messages.switchingToCompatiblePlayer' => '正在切换到兼容的播放器…',
			'messages.serverLimitTitle' => '播放失败',
			'messages.serverLimitBody' => '服务器错误（HTTP 500）。此次会话可能因带宽或转码限制而被拒绝。请联系服务器所有者调整限制。',
			'messages.mediaUnreadableTitle' => '文件不可用',
			'messages.mediaUnreadableBody' => '服务器找到了此项目，但无法读取其文件（HTTP 404）。文件可能已被移动、删除，或其存储已离线。请联系服务器管理员检查文件并重新扫描媒体库。',
			'messages.serverBusyTitle' => '视频流不可用',
			'messages.serverBusyBody' => '服务器持续拒绝传输此文件（HTTP 503）。服务器可能正在重启或正忙，也可能是文件所在的存储设备已离线。请稍后重试；如果问题持续出现，请联系服务器所有者检查服务器和文件存储设备。',
			'messages.playbackNotAllowedTitle' => '不允许播放',
			'messages.playbackNotAllowedBody' => '服务器拒绝传输此项目（HTTP 403）。此账户可能没有播放权限，或服务器可能仅允许在其局域网内播放。',
			'messages.logsUploaded' => '日志已上传',
			'messages.logsUploadFailed' => '上传日志失败',
			'messages.logId' => '日志 ID',
			'messages.burnedSubtitlesUseMenu' => '字幕已烧录到此视频流中。请从字幕菜单中更改。',
			'messages.noVideoUrl' => '没有可用的视频 URL',
			'messages.playbackNoMediaSources' => '服务器未返回可播放的媒体源',
			'messages.playbackDataNotPrepared' => '播放数据尚未准备就绪时便开始了播放',
			'messages.streamSelectionUnavailable' => '此媒体源不支持选择视频流',
			'messages.streamSelectionFailed' => '无法应用所选视频流',
			'messages.trackSelectionNotRemembered' => '此轨道选择仅对当前播放生效。',
			'messages.serverUnavailableForProfile' => '没有可供当前用户资料使用的服务器',
			'sourceLibraries.title' => '您的服务器和库',
			'sourceLibraries.description' => '选择 Luroka 用于主页、搜索、发现可用性和工作室的库。主行顺序单独定制。',
			'sourceLibraries.partial' => '某些服务器无法检查。您为这些库保存的选择将被保留。刷新再试一次。',
			'sourceLibraries.loadFailed' => '无法加载您的库。检查连接并重试。',
			'sourceLibraries.notSelected' => '在您选择的库中不可用。',
			'sourceLibraries.checkOthers' => '检查其他连接的来源',
			'sourceLibraries.otherSources' => '可在其他连接的来源上使用',
			'sourceLibraries.playOnce' => '玩一次',
			'sourceLibraries.includeLibrary' => '包含这个库',
			'sourceLibraries.noOthers' => '在其他连接的来源上未找到副本。',
			'sourceLibraries.chooseOne' => '至少选择一个库以继续。',
			'subtitlingStyling.text' => '文本',
			'subtitlingStyling.border' => '边框',
			'subtitlingStyling.background' => '背景',
			'subtitlingStyling.fontSize' => '字号',
			'subtitlingStyling.textColor' => '文本颜色',
			'subtitlingStyling.borderSize' => '边框大小',
			'subtitlingStyling.borderColor' => '边框颜色',
			'subtitlingStyling.backgroundOpacity' => '背景不透明度',
			'subtitlingStyling.backgroundColor' => '背景颜色',
			'subtitlingStyling.position' => '位置',
			'subtitlingStyling.assOverride' => 'ASS 样式覆盖',
			'subtitlingStyling.overrideScale' => '缩放',
			'subtitlingStyling.overrideForce' => '强制',
			'subtitlingStyling.overrideStrip' => '移除样式',
			'subtitlingStyling.positionTop' => '顶部',
			'subtitlingStyling.positionBottom' => '底部',
			'subtitlingStyling.useMargins' => '使用边距',
			'subtitlingStyling.useMarginsDescription' => '允许文字字幕显示在视频画面之外的区域。样式字幕可能保留其原始位置。',
			'subtitlingStyling.anchorToScreen' => '锚定到屏幕',
			'subtitlingStyling.anchorToScreenDescription' => '在宽屏视频下方的黑边中显示文本字幕',
			'subtitlingStyling.bold' => '粗体',
			'subtitlingStyling.italic' => '斜体',
			'subtitlingStyling.renderResolution' => '渲染分辨率',
			'subtitlingStyling.renderResolutionScreen' => '屏幕分辨率',
			'subtitlingStyling.renderResolutionVideo' => '视频分辨率',
			'mpvConfig.title' => 'mpv 配置',
			'mpvConfig.description' => '高级视频播放器设置',
			'mpvConfig.presets' => '预设',
			'mpvConfig.noPresets' => '没有保存的预设',
			'mpvConfig.saveAsPreset' => '保存为预设…',
			'mpvConfig.presetName' => '预设名称',
			'mpvConfig.presetNameHint' => '输入此预设的名称',
			'mpvConfig.loadPreset' => '加载',
			'mpvConfig.deletePreset' => '删除',
			'mpvConfig.presetSaved' => '预设已保存',
			'mpvConfig.presetLoaded' => '预设已加载',
			'mpvConfig.presetDeleted' => '预设已删除',
			'mpvConfig.confirmDeletePreset' => '确定要删除此预设吗？',
			'mpvConfig.configPlaceholder' => 'gpu-api=vulkan\nhwdec=auto\n# comment',
			'mpvConfig.lineHint' => 'option=value',
			'mpvConfig.addLine' => '添加行',
			'mpvConfig.removeLine' => '移除行',
			'mpvConfig.embeddedVoHint' => 'Linux 上会忽略 vo、gpu-context 和 gpu-api：嵌入式视频始终通过视频平面上的 vo=libmpv 渲染，而 gpu-next（ArtCNN 等计算着色器需要它）无法以嵌入式方式运行。',
			'dialog.confirmAction' => '确认操作',
			'profiles.manageProfiles' => '管理个人资料',
			'profiles.quickAccess' => '快速访问',
			'profiles.signOutDevice' => '退出该设备',
			'profiles.addLurokaProfile' => '添加 Luroka 配置文件',
			'profiles.switchingProfile' => '正在切换用户资料…',
			'profiles.deleteThisProfileTitle' => '删除此用户资料？',
			'profiles.deleteThisProfileMessage' => ({required Object displayName}) => '移除 ${displayName}。连接不会受影响。',
			'profiles.active' => '当前使用',
			'profiles.manage' => '管理',
			'profiles.delete' => '删除',
			'profiles.signOut' => '退出登录',
			'profiles.signOutPlexTitle' => '退出 Plex 登录？',
			'profiles.signOutPlexMessage' => ({required Object displayName}) => '要移除 ${displayName} 和所有 Plex Home 用户吗？可随时重新登录。',
			'profiles.signOutPlexDeleteDownloads' => '还删除下载',
			'profiles.signOutPlexDeleteDownloadsDescription' => '否则，它们会保留在此设备上，并在您重新登录此帐户时返回。',
			'profiles.signedOutPlex' => '已退出 Plex 登录。',
			'profiles.signOutFailed' => '退出登录失败。',
			'profiles.sectionTitle' => '用户资料',
			'profiles.summarySingle' => '添加用户资料，以便同时使用受管理用户和本地用户身份',
			'profiles.summaryMultipleWithActive' => ({required Object count, required Object activeName}) => '${count} 个用户资料 · 当前：${activeName}',
			'profiles.summaryMultiple' => ({required Object count}) => '${count} 个用户资料',
			'profiles.removeConnectionTitle' => '移除连接？',
			'profiles.removeConnectionMessage' => ({required Object displayName, required Object connectionLabel}) => '移除 ${displayName} 对 ${connectionLabel} 的访问权限。其他用户资料仍可使用此连接。',
			'profiles.deleteProfileTitle' => '删除用户资料？',
			'profiles.deleteProfileMessage' => ({required Object displayName}) => '移除 ${displayName} 及其连接。服务器仍可供其他用户资料使用。',
			'profiles.profileNameLabel' => '用户资料名称',
			'profiles.pinProtectionLabel' => 'PIN 保护',
			'profiles.pinManagedByPlex' => 'PIN 由 Plex 管理。在 plex.tv 上编辑。',
			'profiles.noPinSetEditOnPlex' => '未设置 PIN。如需设置，请在 plex.tv 上编辑 Plex Home 用户。',
			'profiles.setPin' => '设置 PIN',
			'profiles.setPinTitle' => '设置 PIN',
			'profiles.confirmPinTitle' => '确认 PIN',
			'profiles.pinSet' => '已设置 PIN',
			'profiles.changePin' => '更改',
			'profiles.removePin' => '移除',
			'profiles.connectionsLabel' => '连接',
			'profiles.add' => '添加',
			'profiles.deleteProfileButton' => '删除用户资料',
			'profiles.noConnectionsHint' => '没有连接 — 请添加连接以使用此用户资料。',
			'profiles.noConnections' => '没有连接',
			'profiles.plexHomeAccount' => 'Plex Home 账户',
			'profiles.plexAccountChip' => ({required Object account}) => 'Plex 账户：${account}',
			'profiles.plexAccountUserChip' => ({required Object account, required Object user}) => '${account} 账户下的 ${user}',
			'profiles.connectionDefault' => '默认',
			'profiles.connectionAs' => ({required Object displayName}) => '以 ${displayName} 身份',
			'profiles.makeDefault' => '设为默认',
			'profiles.removeConnection' => '移除',
			'profiles.profileRenamed' => '用户资料已重命名。',
			'profiles.borrowAddTo' => ({required Object displayName}) => '添加到 ${displayName}',
			'profiles.borrowExplain' => '使用另一个用户资料的连接。受 PIN 保护的用户资料需要输入 PIN。',
			'profiles.borrowEmpty' => '暂无可用连接。',
			'profiles.borrowEmptySubtitle' => '请先将 Plex、Jellyfin 或 Emby 连接到另一个用户资料。',
			'profiles.borrowLoadFailed' => '无法加载可用连接。请重试。',
			'profiles.borrowFromProfile' => ({required Object displayName}) => '来自 ${displayName}',
			'profiles.borrowConnectionBorrowed' => '连接已添加。',
			'profiles.borrowFailed' => '无法添加连接。',
			'profiles.incorrectPin' => 'PIN 不正确。',
			'profiles.incorrectPinTryAgain' => 'PIN 不正确。请重试。',
			'profiles.sourceProfileMissingParentAccount' => '源用户资料缺少关联的主账户。',
			'profiles.failedToLoadHomeUsers' => '无法加载您的 Plex Home 用户。请检查网络连接后重试。',
			'profiles.failedToVerifyPin' => '无法验证 PIN。',
			'profiles.newProfile' => '新建用户资料',
			'profiles.profileNameHint' => '例如：访客、儿童、客厅',
			'profiles.pinProtectionOptional' => 'PIN 保护（可选）',
			'profiles.pinExplain' => '切换用户资料时需要输入 4 位 PIN。',
			'profiles.continueButton' => '继续',
			'profiles.pinsDontMatch' => 'PIN 不匹配',
			'profiles.tokenIdentityMismatch' => 'Plex 用户资料令牌解析到了非预期服务器',
			'connections.sectionTitle' => '连接',
			'connections.addConnection' => '添加连接',
			'connections.addConnectionSubtitleNoProfile' => '使用 Plex 登录，或连接 Jellyfin 或 Emby 服务器',
			'connections.addConnectionSubtitleScoped' => ({required Object displayName}) => '添加到 ${displayName}：Plex、Jellyfin、Emby，或其他用户资料的连接',
			'connections.sessionExpiredOne' => ({required Object name}) => '${name} 的会话已过期',
			'connections.sessionExpiredMany' => ({required Object count}) => '${count} 个服务器的会话已过期',
			'connections.accessDeniedOne' => ({required Object name}) => '${name} 拒绝此账户访问',
			'connections.accessDeniedMany' => ({required Object count}) => '${count} 台服务器拒绝此账户访问',
			'connections.signInAgain' => '重新登录',
			'connections.editMediaBrowserTitle' => ({required Object product}) => '编辑 ${product} 连接',
			'connections.editMediaBrowserIntro' => ({required Object serverName}) => '为 ${serverName} 添加或移除 URL。Luroka 会使用延迟最低且可访问的 URL。',
			'serversAccounts.title' => '服务器和帐户',
			'serversAccounts.subtitle' => 'Plex、Jellyfin 和 Emby 服务器的登录状态',
			'serversAccounts.online' => '在线',
			'serversAccounts.offline' => '离线',
			'serversAccounts.unknown' => '此处未登录',
			'serversAccounts.usedByNone' => '未被任何配置文件使用',
			'serversAccounts.usedByOne' => ({required Object name}) => '由 ${name} 使用',
			'serversAccounts.usedByMany' => ({required Object name, required Object count}) => '${name} 和 ${count} 更多使用',
			'serversAccounts.serversOnline' => ({required Object total, required Object online}) => '${total}服务器的${online}在线',
			'serversAccounts.noServers' => '还没有任何连接。添加您的 Plex 帐户或 Jellyfin 或 Emby 服务器。',
			'serversAccounts.editUrls' => '编辑服务器 URL',
			'accountPreferences.sectionTitle' => '账户偏好',
			'accountPreferences.hubSubtitleSingle' => ({required Object account}) => '音频、字幕和媒体库选项已保存在 ${account} 上',
			'accountPreferences.hubSubtitleMultiple' => ({required Object count}) => '音频、字幕和媒体库选项已保存在 ${count} 个账户上',
			'accountPreferences.pickAccount' => '每个账户都保存自己的偏好设置。选择要编辑的账户。',
			'accountPreferences.storedOnAccount' => '这些设置保存在服务器账户中，使用该账户的所有 Luroka 用户资料和应用都会共享，包括其他设备上的应用。',
			'accountPreferences.noAccounts' => '没有可配置的账户',
			'accountPreferences.noAccountsHint' => '登录 Plex，或连接 Jellyfin 或 Emby 服务器，该账户上保存的偏好设置就会显示在这里。',
			'accountPreferences.unavailable' => '无法访问此账户',
			'accountPreferences.loadFailed' => '无法加载这些偏好设置',
			'accountPreferences.noPreference' => '无偏好',
			'accountPreferences.notSet' => '未设置',
			'accountPreferences.groups.audioAndSubtitles' => '音频与字幕',
			'accountPreferences.groups.libraryDisplay' => '媒体库',
			'accountPreferences.groups.personalMedia' => '个人媒体',
			'accountPreferences.preferredAudioLanguage' => '首选音频语言',
			'accountPreferences.autoSelectAudio' => '按语言选择音频',
			'accountPreferences.autoSelectAudioDescription' => '关闭后保留文件标记为默认的音轨。',
			'accountPreferences.preferredSubtitleLanguage' => '首选字幕语言',
			'accountPreferences.subtitleMode' => '开启字幕',
			'accountPreferences.subtitleModes.none' => '手动选择',
			'accountPreferences.subtitleModes.noneDescription' => '从不自动打开字幕。',
			'accountPreferences.subtitleModes.defaultMode' => '遵循轨道标记',
			'accountPreferences.subtitleModes.defaultModeDescription' => '使用存储在各字幕轨道上的默认和强制标记。',
			'accountPreferences.subtitleModes.always' => '始终启用',
			'accountPreferences.subtitleModes.alwaysDescription' => '只要有首选语言的字幕轨道就将其打开。',
			'accountPreferences.subtitleModes.onlyForced' => '仅强制字幕',
			'accountPreferences.subtitleModes.onlyForcedDescription' => '只加载标记为强制的轨道。',
			'accountPreferences.subtitleModes.smart' => '外语音频时显示',
			'accountPreferences.subtitleModes.smartDescription' => '仅在音频为其他语言时打开字幕。',
			'accountPreferences.subtitleAccessibility' => 'SDH 字幕',
			'accountPreferences.subtitleAccessibilityOptions.preferNonSdh' => '优先非 SDH 字幕',
			'accountPreferences.subtitleAccessibilityOptions.preferSdh' => '优先 SDH 字幕',
			'accountPreferences.subtitleAccessibilityOptions.onlySdh' => '仅 SDH 字幕',
			'accountPreferences.subtitleAccessibilityOptions.onlyNonSdh' => '仅非 SDH 字幕',
			'accountPreferences.forcedSubtitles' => '强制字幕',
			'accountPreferences.forcedSubtitleOptions.preferNonForced' => '优先非强制字幕',
			'accountPreferences.forcedSubtitleOptions.preferForced' => '优先强制字幕',
			'accountPreferences.forcedSubtitleOptions.onlyForced' => '仅强制字幕',
			'accountPreferences.forcedSubtitleOptions.onlyNonForced' => '仅非强制字幕',
			'accountPreferences.displayMissingEpisodes' => '显示缺失剧集',
			'accountPreferences.displayMissingEpisodesDescription' => '列出服务器知道但没有对应文件的剧集。',
			'accountPreferences.hidePlayedInLatest' => '在“最新”中隐藏已观看项目',
			'accountPreferences.hidePlayedInLatestDescription' => '将你已经看过的项目从服务器的“最新”列表中移除。',
			'accountPreferences.displayCollectionsView' => '显示合集视图',
			'accountPreferences.displayCollectionsViewDescription' => '在媒体库之外提供服务器的合集视图。',
			'accountPreferences.rewatchingInNextUp' => '在“接下来”中保留重看的剧集',
			'accountPreferences.rewatchingInNextUpDescription' => '看完一部剧集后再次开始观看时，“接下来”会跟随重看进度，而不是将剧集移除。',
			'accountPreferences.watchedIndicator' => '已观看标记',
			'accountPreferences.watchedIndicatorOptions.none' => '从不',
			'accountPreferences.watchedIndicatorOptions.moviesAndShows' => '电影和电视剧',
			'accountPreferences.watchedIndicatorOptions.movies' => '仅电影',
			'accountPreferences.watchedIndicatorOptions.shows' => '仅电视剧',
			'accountPreferences.mediaReviewsVisibility' => '评分与评论',
			'accountPreferences.mediaReviewsOptions.usersAndCritics' => '用户和影评人',
			'accountPreferences.mediaReviewsOptions.usersOnly' => '仅用户',
			'accountPreferences.mediaReviewsOptions.criticsOnly' => '仅影评人',
			'accountPreferences.mediaReviewsOptions.nobody' => '隐藏',
			'discover.title' => '发现',
			'discover.noContentAvailable' => '没有可用内容',
			'discover.addMediaToLibraries' => '请向你的媒体库添加一些媒体',
			'discover.continueWatching' => '继续观看',
			'discover.continueWatchingIn' => ({required Object library}) => '${library} 中继续观看',
			'discover.nextUp' => '接下来',
			'discover.nextUpIn' => ({required Object library}) => '${library} 中接下来',
			'discover.recentlyAdded' => '最近添加',
			'discover.recentlyAddedIn' => ({required Object library}) => '${library} 中最近添加',
			'discover.latestAlbumsIn' => ({required Object library}) => '${library} 中的最新专辑',
			'discover.recentlyPlayedIn' => ({required Object library}) => '${library} 中最近播放',
			'discover.mostPlayedIn' => ({required Object library}) => '${library} 中最常播放',
			'discover.playEpisode' => ({required Object season, required Object episode}) => 'S${season}E${episode}',
			'discover.overview' => '概述',
			'discover.cast' => '演员表',
			'discover.extras' => '预告片与花絮',
			'discover.studio' => '制作公司',
			'discover.rating' => '年龄分级',
			'discover.director' => '导演',
			'discover.directors' => '导演',
			'discover.movie' => '电影',
			'discover.tvShow' => '电视剧',
			'discover.minutesLeft' => ({required Object minutes}) => '剩余 ${minutes} 分钟',
			'discover.moreLikeThis' => '更多类似内容',
			'discover.titleCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n, one: '${n} 标题', other: '${n} 个标题', ),
			'discover.person.born' => '出生',
			'discover.person.died' => '死了',
			'discover.person.birthplace' => '出生地',
			'discover.person.dateWithAge' => ({required Object date, required Object age}) => '${date}（年龄${age}）',
			'discover.person.dateWithAgeAtDeath' => ({required Object date, required Object age}) => '${date}（旧${age}）',
			'errors.searchFailed' => ({required Object error}) => '搜索失败：${error}',
			'errors.searchUnavailable' => '搜索无法连接任何媒体服务器。',
			'errors.connectionTimeout' => ({required Object context}) => '加载 ${context} 时连接超时',
			'errors.connectionFailed' => '无法连接到媒体服务器',
			'errors.unableToLoad' => ({required Object context}) => '无法加载${context}。请重试。',
			'errors.noClientAvailable' => '没有可用客户端',
			'errors.pleaseEnterToken' => '请输入一个令牌',
			'errors.invalidToken' => '令牌无效',
			'errors.failedToVerifyToken' => ({required Object error}) => '无法验证令牌：${error}',
			'errors.failedToSwitchProfile' => ({required Object displayName}) => '无法切换到 ${displayName}',
			'errors.failedToDeleteProfile' => ({required Object displayName}) => '无法删除 ${displayName}',
			'errors.failedToRate' => '无法更新评分',
			'errors.reasonTimedOut' => '连接超时',
			'errors.reasonUnreachable' => '无法连接到服务器',
			'errors.reasonRefused' => '服务器拒绝了此请求',
			'errors.reasonNotFound' => '该项目已不在服务器上',
			'errors.reasonServerError' => '服务器报告了一个错误',
			'errors.reasonCancelled' => '请求已取消',
			'errors.reasonUnexpected' => '发生了意外错误',
			'libraries.title' => '媒体库',
			'libraries.fallbackTitle' => '媒体库',
			'libraries.scanLibraryFiles' => '扫描媒体库文件',
			'libraries.scanLibrary' => '扫描媒体库',
			'libraries.analyze' => '分析',
			'libraries.analyzeLibrary' => '分析媒体库',
			'libraries.refreshMetadata' => '刷新元数据',
			'libraries.emptyTrash' => '清空回收站',
			'libraries.emptyingTrash' => ({required Object title}) => '正在清空“${title}”的回收站…',
			'libraries.trashEmptied' => ({required Object title}) => '已清空“${title}”的回收站',
			'libraries.failedToEmptyTrash' => ({required Object error}) => '无法清空回收站：${error}',
			'libraries.analyzing' => ({required Object title}) => '正在分析“${title}”…',
			'libraries.analysisStarted' => ({required Object title}) => '已开始分析“${title}”',
			'libraries.failedToAnalyze' => ({required Object error}) => '无法分析媒体库：${error}',
			'libraries.noLibrariesFound' => '未找到媒体库',
			'libraries.allLibrariesHidden' => '所有媒体库已隐藏',
			'libraries.hiddenLibrariesCount' => ({required Object count}) => '已隐藏的媒体库 (${count})',
			'libraries.thisLibraryIsEmpty' => '此媒体库为空',
			'libraries.noItemsMatchFilters' => '没有项目符合当前筛选条件',
			'libraries.resetFilters' => '重置筛选条件',
			'libraries.all' => '全部',
			'libraries.clearAll' => '全部清除',
			'libraries.scanLibraryConfirm' => ({required Object title}) => '确定要扫描“${title}”吗？',
			'libraries.analyzeLibraryConfirm' => ({required Object title}) => '确定要分析“${title}”吗？',
			'libraries.refreshMetadataConfirm' => ({required Object title}) => '确定要刷新“${title}”的元数据吗？',
			'libraries.emptyTrashConfirm' => ({required Object title}) => '确定要清空“${title}”的回收站吗？',
			'libraries.manageLibraries' => '管理媒体库',
			'libraries.sort' => '排序',
			'libraries.sortBy' => '排序依据',
			'libraries.filters' => '筛选',
			'libraries.confirmActionMessage' => '确定要执行此操作吗？',
			'libraries.showLibrary' => '显示媒体库',
			'libraries.hideLibrary' => '隐藏媒体库',
			'libraries.libraryOptions' => '媒体库选项',
			'libraries.content' => '媒体库内容',
			'libraries.selectLibrary' => '选择媒体库',
			'libraries.filtersWithCount' => ({required Object count}) => '筛选器（${count}）',
			'libraries.noRecommendations' => '暂无推荐',
			'libraries.noCollections' => '此媒体库中没有合集',
			'libraries.noFoldersFound' => '未找到文件夹',
			'libraries.folders' => '文件夹',
			'libraries.tabs.recommended' => '推荐',
			'libraries.tabs.browse' => '浏览',
			'libraries.tabs.collections' => '合集',
			'libraries.tabs.playlists' => '播放列表',
			'libraries.groupings.title' => '分组',
			'libraries.groupings.all' => '全部',
			'libraries.groupings.movies' => '电影',
			'libraries.groupings.shows' => '剧集',
			'libraries.groupings.seasons' => '季',
			'libraries.groupings.episodes' => '集',
			'libraries.groupings.artists' => '艺术家',
			'libraries.groupings.albums' => '专辑',
			'libraries.groupings.tracks' => '曲目',
			'libraries.groupings.folders' => '文件夹',
			'libraries.filterCategories.genre' => '类型',
			'libraries.filterCategories.year' => '年份',
			'libraries.filterCategories.contentRating' => '内容分级',
			'libraries.filterCategories.tag' => '标签',
			'libraries.filterCategories.unwatched' => '未观看',
			'libraries.filterCategories.unplayed' => '未播放',
			'libraries.filterCategories.favorites' => '收藏夹',
			'libraries.filterCategories.filePath' => '文件路径',
			'libraries.sortLabels.title' => '标题',
			'libraries.sortLabels.dateAdded' => '添加日期',
			'libraries.sortLabels.releaseDate' => '发行日期',
			'libraries.sortLabels.rating' => '评分',
			'libraries.sortLabels.communityRating' => '社区评分',
			'libraries.sortLabels.criticRating' => '影评人评分',
			'libraries.sortLabels.userRating' => '用户评分',
			'libraries.sortLabels.datePlayed' => '播放日期',
			'libraries.sortLabels.playCount' => '播放次数',
			'libraries.sortLabels.productionYear' => '制作年份',
			'libraries.sortLabels.runtime' => '时长',
			'libraries.sortLabels.officialRating' => '官方分级',
			'libraries.sortLabels.premiereDate' => '首映日期',
			'libraries.sortLabels.startDate' => '开始日期',
			'libraries.sortLabels.airTime' => '播出时间',
			'libraries.sortLabels.studio' => '制片公司',
			'libraries.sortLabels.random' => '随机',
			'libraries.sortLabels.dateShared' => '共享日期',
			'libraries.sortLabels.latestEpisodeAirDate' => '最新一集播出日期',
			'libraries.sortLabels.lastEpisodeDateAdded' => '最新一集添加日期',
			_ => null,
		} ?? switch (path) {
			'libraries.sortLabels.dateDownloaded' => '下载日期',
			'libraries.sortLabels.size' => '大小',
			'libraries.sortLabels.library' => '媒体库',
			'libraries.advancedFilters.include' => '包括',
			'libraries.advancedFilters.exclude' => '排除',
			'libraries.advancedFilters.any' => '任意',
			'libraries.advancedFilters.yes' => '是的',
			'libraries.advancedFilters.no' => '否',
			'libraries.advancedFilters.not' => ({required Object value}) => '不是 ${value}',
			'libraries.advancedFilters.valueCount' => ({required Object count}) => '已选择 ${count}',
			'libraries.advancedFilters.valueCountExcluded' => ({required Object count}) => '${count} 排除',
			'libraries.advancedFilters.searchValues' => '搜索值',
			'libraries.advancedFilters.noValues' => '无值',
			'libraries.advancedFilters.matchContains' => '包含',
			'libraries.advancedFilters.matchNotContains' => '不包含',
			'libraries.advancedFilters.matchIs' => '是',
			'libraries.advancedFilters.matchIsNot' => '不是',
			'libraries.advancedFilters.matchBeginsWith' => '开始于',
			'libraries.advancedFilters.matchEndsWith' => '结束于',
			'libraries.advancedFilters.textHint' => '键入要匹配的内容',
			'libraries.advancedFilters.from' => '来自',
			'libraries.advancedFilters.to' => '至',
			'libraries.advancedFilters.range' => ({required Object from, required Object to}) => '${from} 至 ${to}',
			'libraries.advancedFilters.atLeast' => ({required Object value}) => '${value} 及以上',
			'libraries.advancedFilters.atMost' => ({required Object value}) => '至${value}',
			'libraries.advancedFilters.dateLastDays' => ({required Object count}) => '最后 ${count} 天',
			'libraries.advancedFilters.dateLastYear' => '去年',
			'libraries.advancedFilters.dateOlderThanDays' => ({required Object count}) => '早于 ${count} 天',
			'libraries.advancedFilters.dateOlderThanYear' => '一岁以上',
			'about.title' => '关于',
			'about.openSourceLicenses' => '开源许可证',
			'about.versionLabel' => ({required Object version}) => '版本 ${version}',
			'about.appDescription' => '一款精美的 Flutter Plex、Jellyfin 和 Emby 客户端',
			'about.customSource' => '源代码',
			'about.basedOnLuroka' => '基于 Plezy 代码库构建',
			'about.viewLicensesDescription' => '查看第三方库的许可证',
			'about.appSection' => '应用程序',
			'about.communitySection' => '社区',
			'about.creditsSection' => '制作人员',
			'about.legalSection' => '法律',
			'about.versionMeta' => ({required Object version, required Object build, required Object platform}) => 'v${version} (${build}) · ${platform}',
			'about.versionMetaNoBuild' => ({required Object version, required Object platform}) => 'v${version} · ${platform}',
			'about.versionUnavailable' => '版本不可用',
			'about.versionDetails' => '版本详情',
			'about.versionDetailsTitle' => ({required Object version, required Object build}) => 'Luroka ${version} (${build})',
			'about.platformLine' => ({required Object platform}) => '平台：${platform}',
			'about.deviceLine' => ({required Object model}) => '设备：${model}',
			'about.packageLine' => ({required Object package}) => '封装：${package}',
			'about.localeLine' => ({required Object locale}) => '语言：${locale}',
			'about.copyDetails' => '复制详细信息',
			'about.detailsCopied' => '已复制应用程序详细信息',
			'about.detailsCopyFailed' => '无法复制应用详细信息',
			'about.checkForUpdatesDescription' => '检查 GitHub 是否有更新版本',
			'about.checkingForUpdates' => '正在检查更新...',
			'about.whatsNew' => '有什么新消息',
			'about.releaseNotesUnavailable' => '没有可用的发行说明。',
			'about.sourceCodeDescription' => 'GitHub 上的 Luroka',
			'about.reportIssue' => '报告问题',
			'about.reportIssueDescription' => '告诉我们出了什么问题',
			'about.documentation' => '文档',
			'about.documentationDescription' => '设置、功能和构建说明',
			'about.upstreamProjectDescription' => 'edde746 和贡献者的开源项目',
			'about.upstreamWebsite' => '上游网站',
			'about.attribution' => '数据和归因',
			'about.attributionDescription' => '元数据、评级和商标',
			'about.attributionBody' => '本产品使用 TMDB API，但未经 TMDB 认可或认证。流行度列表、元数据和 IMDb 评级由 Cinemeta 提供。乐谱保留其来源标签。',
			'about.trademarkNotices' => 'Plex、Jellyfin、Emby、Trakt、Simkl、MyAnimeList、AniList、TMDB 及相关标记是其各自所有者的商标。 Luroka 不隶属于他们，也不受他们认可。',
			'about.privacyPolicy' => '隐私政策',
			'about.privacyPolicyDescription' => '如何处理您的数据',
			'about.gplLicense' => 'GNU GPL-3.0 许可证',
			'about.gplLicenseDescription' => 'Luroka是免费软件',
			'about.linkOpenFailed' => '无法打开此链接',
			'about.opensInBrowser' => '在浏览器中打开',
			'about.footer' => 'Luroka 是 GPL-3.0 下的自由软件。',
			'about.copyright' => ({required Object year}) => '© ${year} Luroka 贡献者',
			'serverSelection.noServersFoundForAccount' => ({required Object username, required Object email}) => '未找到 ${username}（${email}）的服务器',
			'serverSelection.failedToLoadServers' => ({required Object error}) => '无法加载服务器：${error}',
			'serverSelection.noValidServers' => '此账号下未找到可用的服务器',
			'hubDetail.title' => '标题',
			'hubDetail.releaseYear' => '发行年份',
			'hubDetail.dateAdded' => '添加日期',
			'hubDetail.rating' => '评分',
			'hubDetail.noItemsFound' => '未找到项目',
			'logs.clearLogs' => '清除日志',
			'logs.copyLogs' => '复制日志',
			'logs.uploadLogs' => '上传日志',
			'startup.failedTitle' => 'Luroka 无法启动',
			'startup.failedBody' => '启动过程中出现问题。以下详情指出了失败的原因。',
			'startup.failedBodyRepairable' => 'Luroka 的已保存设置文件已损坏，必须先重建才能启动。重试没有用——请选择“修复存储”。',
			'startup.phaseLabel' => '步骤',
			'startup.showDetails' => '显示详情',
			'startup.hideDetails' => '隐藏详情',
			'startup.copyDetails' => '复制详情',
			'startup.detailsCopied' => '详情已复制到剪贴板',
			'startup.uploadDetails' => '上传详情',
			'startup.repairStorage' => '修复存储',
			'startup.repairTitle' => '修复已存储的数据？',
			'startup.repairBodyCommon' => 'Luroka 的设置文件已损坏且无法读取。修复会将所有设置重置为默认值。',
			'startup.repairBodyOneCredential' => '有一项已保存的登录信息已损坏且无法读取。修复只会移除这一项，其他设置保持不变。',
			'startup.repairBodySignInsKept' => '你的服务器和个人资料应保持登录状态。',
			'startup.repairBodySignInsLost' => '保护已保存登录信息的密钥无法从此文件中恢复，因此你需要重新登录每个服务器和个人资料。媒体服务器上的内容不受影响。',
			'startup.repairBodySessionsUncertain' => '追踪服务（MAL、AniList、Simkl、Trakt）和 Seerr 是分开存储的，可能保留也可能无法保留。Luroka 会明确告诉你保留了哪些。',
			'startup.repairConfirm' => '修复',
			'startup.repairSucceeded' => '存储已修复',
			'startup.repairNeedsRestart' => '存储已修复 — 需要重启',
			'startup.restartRequiredBody' => '你的数据已修复，但 Luroka 需要重新启动后才能使用。请关闭 Luroka 并重新打开。',
			'startup.quitLuroka' => '退出 Luroka',
			'startup.repairFailed' => '修复失败',
			'startup.repairKeptSignIns' => '你的服务器和个人资料仍然保持登录状态。',
			'startup.repairLostSignIns' => '保护已保存登录信息的密钥无法恢复。你需要重新登录每个服务器和个人资料。',
			'startup.repairLostSessions' => '至少有一个追踪服务或 Seerr 连接已丢失，需要重新连接。',
			'startup.backupTitle' => '已保留损坏文件的副本',
			'startup.backupWarning' => '其中包含你的登录凭据。请勿上传或分享。',
			'startup.deleteBackup' => '删除副本',
			'startup.backupDeleted' => '副本已删除。',
			'startup.previousFailureTitle' => 'Luroka 上次启动失败',
			'licenses.relatedPackages' => '相关软件包',
			'licenses.license' => '许可证',
			'licenses.licenseNumber' => ({required Object number}) => '许可证 ${number}',
			'licenses.licensesCount' => ({required Object count}) => '${count} 个许可证',
			'licenses.searchHint' => '搜索包',
			'licenses.noResults' => ({required Object query}) => '没有包匹配“${query}”',
			'licenses.clearSearch' => '清除搜索',
			'navigation.libraries' => '媒体库',
			'navigation.downloads' => '下载',
			'navigation.liveTv' => '直播电视',
			'navigation.explore' => '探索',
			'explore.title' => '探索',
			'explore.selectSource' => '选择来源',
			'explore.rows.watchlist' => '想看列表',
			'explore.rows.recommendedMovies' => '推荐电影',
			'explore.rows.recommendedShows' => '推荐剧集',
			'explore.rows.trendingMovies' => '近期热门电影',
			'explore.rows.trendingShows' => '近期热门剧集',
			'explore.rows.popularMovies' => '人气电影',
			'explore.rows.popularShows' => '人气剧集',
			'explore.rows.trendingAnime' => '热门动画',
			'explore.rows.suggestedAnime' => '推荐动画',
			'explore.rows.airingAnime' => '热门连载动画',
			'explore.rows.popularAnime' => '最受欢迎动画',
			'explore.rows.trending' => '近期热门',
			'explore.rows.upcomingMovies' => '即将上映的电影',
			'explore.rows.upcomingShows' => '即将播出的剧集',
			'explore.status.airing' => '连载中',
			'explore.status.ended' => '已完结',
			'explore.status.canceled' => '已取消',
			'explore.status.upcoming' => '即将上线',
			'explore.episodeCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n, one: '${n} 剧集', other: '${n} 集', ),
			'explore.cast' => '演员表',
			'explore.characters' => '角色',
			'explore.addToWatchlist' => '添加到想看列表',
			'explore.removeFromWatchlist' => '从想看列表移除',
			'explore.addedToWatchlist' => '已加入待看列表',
			'explore.removedFromWatchlist' => '已从待看列表中移除',
			'explore.watchlistUpdateFailed' => '无法更新想看列表',
			'explore.watchlistNoMatch' => '无法将此项目与待看列表匹配',
			'explore.notInLibrary' => '不在你的媒体库中',
			'explore.inTheseLibraries' => '在这些媒体库中',
			'explore.checkingLibrary' => '正在检查你的媒体库…',
			'explore.libraryCheckFailed' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n, one: '无法检查 ${n} 服务器', other: '无法检查 ${n} 台服务器', ),
			'explore.emptyTitle' => '这里还什么都没有',
			'explore.emptyMessage' => ({required Object source}) => '当 ${source} 有内容时，相关内容将显示在这里。',
			'explore.searchHint' => ({required Object source}) => '搜索 ${source}',
			'explore.searchEmpty' => ({required Object query}) => '没有“${query}”的结果',
			'explore.searchPrompt' => ({required Object source}) => '在 ${source} 上搜索电影和剧集。',
			'explore.searchFailed' => '搜索失败。请检查网络连接后重试。',
			'explore.badge.rankPopular' => ({required Object n}) => '热门榜第 #${n} 名',
			'explore.badge.rankAiring' => ({required Object n}) => '在播榜第 #${n} 名',
			'explore.badge.rankRated' => ({required Object n}) => '评分榜第 #${n} 名',
			'explore.badge.rankTrending' => ({required Object n}) => '趋势榜第 #${n} 名',
			'explore.badge.rankSeasonal' => ({required Object season, required Object n}) => '${season}榜第 #${n} 名',
			'explore.badge.watchingNow' => ({required Object n}) => '${n} 人正在观看',
			'explore.badge.available' => '可观看',
			'explore.badge.partiallyAvailable' => '部分可观看',
			'explore.badge.availableIn4k' => '提供 4K',
			'explore.badge.requested' => '已请求',
			'explore.badge.pendingApproval' => '待批准',
			'explore.badge.processing' => '处理中',
			'explore.badge.declined' => '已拒绝',
			'explore.badge.requestFailed' => '请求失败',
			'explore.badge.requested4k' => '已请求 4K',
			'explore.badge.seasonsAvailable' => ({required Object available, required Object total}) => '已有 ${available}/${total} 季',
			'explore.badge.nextEpisodeIn' => ({required Object episode, required Object duration}) => '第 ${episode} 集将在 ${duration} 后播出',
			'explore.badge.nextAiringIn' => ({required Object duration}) => '下一集将在 ${duration} 后播出',
			'explore.badge.episodesShort' => ({required Object n}) => '${n} 集',
			'explore.badge.minutesPerEpisode' => ({required Object n}) => '${n} 分钟/集',
			'explore.badge.adult' => '18+',
			'explore.stats.listed' => ({required Object n}) => '${n} 人已标记',
			'explore.stats.viewersDay' => ({required Object n}) => '今日 ${n} 人观看',
			'explore.stats.viewersWeek' => ({required Object n}) => '本周 ${n} 人观看',
			'explore.stats.viewersMonth' => ({required Object n}) => '本月 ${n} 人观看',
			'explore.stats.viewersYear' => ({required Object n}) => '今年 ${n} 人观看',
			'explore.stats.viewersAllTime' => ({required Object n}) => '累计 ${n} 人观看',
			'explore.stats.planning' => ({required Object n}) => '${n} 人想看',
			'explore.stats.favorited' => ({required Object n}) => '${n} 人收藏',
			'explore.stats.dropRate' => ({required Object percent}) => '${percent} 弃番',
			'explore.stats.comments' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n, one: '${n} 评论', other: '${n} 条评论', ),
			'explore.stats.votes' => ({required Object n}) => '${n} 票',
			'explore.stats.watching' => ({required Object n}) => '${n} 人正在观看',
			'explore.stats.completed' => ({required Object n}) => '${n} 人已看完',
			'explore.stats.onHold' => ({required Object n}) => '${n} 人搁置',
			'explore.stats.dropped' => ({required Object n}) => '${n} 人弃番',
			'explore.season.winter' => '冬季',
			'explore.season.spring' => '春季',
			'explore.season.summer' => '夏季',
			'explore.season.fall' => '秋季',
			'explore.season.withYear' => ({required Object year, required Object season}) => '${year}年${season}',
			'explore.format.tv' => 'TV',
			'explore.format.tvShort' => 'TV 短片',
			'explore.format.movie' => '电影',
			'explore.format.special' => '特别篇',
			'explore.format.ova' => 'OVA',
			'explore.format.ona' => 'ONA',
			'explore.format.music' => '音乐',
			'explore.format.other' => '其他',
			'explore.sourceMaterial.original' => '原创',
			'explore.sourceMaterial.manga' => '漫画',
			'explore.sourceMaterial.lightNovel' => '轻小说',
			'explore.sourceMaterial.novel' => '小说',
			'explore.sourceMaterial.visualNovel' => '视觉小说',
			'explore.sourceMaterial.game' => '游戏',
			'explore.sourceMaterial.webComic' => '网络漫画',
			'explore.sourceMaterial.musicRelease' => '音乐',
			'explore.sourceMaterial.otherMedia' => '其他',
			'explore.creditRole.actor' => '演员',
			'explore.creditRole.director' => '导演',
			'explore.creditRole.writer' => '编剧',
			'explore.creditRole.producer' => '制片人',
			'explore.creditRole.creator' => '创作者',
			'explore.creditRole.composer' => '作曲',
			'explore.relation.prequel' => '前传',
			'explore.relation.sequel' => '续集',
			'explore.relation.sideStory' => '番外篇',
			'explore.relation.spinOff' => '衍生作品',
			'explore.relation.alternativeVersion' => '另一版本',
			'explore.relation.summary' => '总集篇',
			'explore.relation.parentStory' => '原作',
			'explore.relation.adaptation' => '改编',
			'explore.relation.other' => '相关',
			'explore.broadcast' => ({required Object day, required Object time}) => '每周${day} ${time}播出',
			'explore.broadcastWithZone' => ({required Object day, required Object time, required Object timezone}) => '每周${day} ${time} ${timezone}播出',
			'explore.detail.originalTitle' => '原名',
			'explore.detail.alsoKnownAs' => '又名',
			'explore.detail.studios' => '制作公司',
			'explore.detail.country' => '国家/地区',
			'explore.detail.language' => '语言',
			'explore.detail.released' => '上映日期',
			'explore.detail.physicalRelease' => '光盘发售',
			'explore.detail.ended' => '完结日期',
			'explore.detail.addedOn' => ({required Object date}) => '添加于 ${date}',
			'explore.detail.yourRating' => '你的评分',
			'explore.detail.budget' => '预算',
			'explore.detail.revenue' => '票房',
			'explore.detail.contentAdvisory' => '年龄分级',
			'explore.detail.tags' => '标签',
			'explore.detail.revealSpoilerTags' => '显示剧透标签',
			'explore.detail.links' => '链接',
			'explore.detail.watchOn' => '观看平台',
			'explore.detail.watchTrailer' => '观看预告片',
			'explore.detail.openOn' => ({required Object site}) => '在 ${site} 打开',
			'explore.detail.crew' => '演职人员',
			'explore.detail.ratings' => '评分',
			'explore.detail.schedule' => '播出时间',
			'explore.detail.recommendedByUsers' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n, one: '${n}用户推荐', other: '由 ${n} 位用户推荐', ),
			'explore.detail.recommendedBy' => ({required Object who}) => '由 ${who} 推荐',
			'explore.detail.favoritedBy' => ({required Object who}) => '由 ${who} 收藏',
			'explore.detail.unairedEpisodes' => ({required Object n}) => '还有 ${n} 集未播出',
			'explore.detail.recommendedByPercent' => ({required Object percent}) => '${percent} 的观众推荐',
			'explore.detail.relatedTitles' => '相关作品',
			'explore.detail.background' => '背景',
			'explore.totalResults' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n, one: '${n} 结果', other: '${n} 条结果', ),
			'liveTv.title' => '直播电视',
			'liveTv.guide' => '节目指南',
			'liveTv.noChannels' => '没有可用的频道',
			'liveTv.noDvr' => '没有服务器配置 DVR',
			'liveTv.serverUnavailable' => '直播电视服务器不可用。',
			'liveTv.serverNotConnected' => '直播电视服务器未连接。',
			'liveTv.noPrograms' => '没有可用的节目数据',
			'liveTv.liveStreamFailed' => '直播流失败',
			'liveTv.unknownProgram' => '未知节目',
			'liveTv.unknownHub' => '未知',
			'liveTv.unknownError' => '未知错误',
			'liveTv.channelNumber' => ({required Object number}) => '频道 ${number}',
			'liveTv.unknownChannel' => '未知频道',
			'liveTv.live' => '直播',
			'liveTv.reloadGuide' => '重新加载节目指南',
			'liveTv.searchGuide' => '搜索节目指南',
			'liveTv.searchHint' => '搜索频道和节目',
			'liveTv.searchNoResults' => ({required Object query}) => '没有与“${query}”匹配的结果',
			'liveTv.channelsSection' => '频道',
			'liveTv.programsSection' => '节目',
			'liveTv.now' => '现在',
			'liveTv.today' => '今天',
			'liveTv.tomorrow' => '明天',
			'liveTv.midnight' => '午夜',
			'liveTv.overnight' => '凌晨',
			'liveTv.morning' => '上午',
			'liveTv.daytime' => '白天',
			'liveTv.evening' => '晚上',
			'liveTv.lateNight' => '深夜',
			'liveTv.whatsOn' => '正在播出',
			'liveTv.watchChannel' => '观看频道',
			'liveTv.favorites' => '收藏',
			'liveTv.reorderFavorites' => '重新排序收藏',
			'liveTv.noFavoriteChannels' => '没有收藏的频道',
			'liveTv.noFavoriteChannelsHint' => '显示所有频道，然后长按某个频道将其加入收藏。',
			'liveTv.showAllChannels' => '显示所有频道',
			'liveTv.favoritesLoadFailed' => '无法加载收藏。请检查网络连接后重试。',
			'liveTv.favoritesUpdateFailed' => '无法更新收藏。请检查网络连接后重试。',
			'liveTv.joinSession' => '加入正在进行的会话',
			'liveTv.watchFromStart' => ({required Object minutes}) => '从头观看（${minutes}分钟前开始）',
			'liveTv.watchLive' => '观看直播',
			'liveTv.goToLive' => '跳至直播',
			'liveTv.record' => '录制',
			'liveTv.recordEpisode' => '录制单集',
			'liveTv.recordSeries' => '录制系列节目',
			'liveTv.recordOptions' => '录制选项',
			'liveTv.saveTo' => '保存到',
			'liveTv.recordings' => '录制内容',
			'liveTv.scheduledRecordings' => '计划录制',
			'liveTv.recordingRules' => '录制规则',
			'liveTv.noScheduledRecordings' => '没有安排的录制',
			'liveTv.manageRecording' => '管理录制',
			'liveTv.cancelRecording' => '取消录制',
			'liveTv.cancelRecordingTitle' => '取消此次录制？',
			'liveTv.cancelRecordingMessage' => ({required Object title}) => '将不再录制 ${title}。',
			'liveTv.deleteRule' => '删除规则',
			'liveTv.deleteRuleTitle' => '删除录制规则？',
			'liveTv.deleteRuleMessage' => ({required Object title}) => '今后将不再录制 ${title} 的剧集。',
			'liveTv.recordingScheduled' => '录制已安排',
			'liveTv.alreadyScheduled' => '此节目已安排录制',
			'liveTv.dvrAdminRequired' => 'DVR 设置需要管理员账户',
			'liveTv.recordingFailed' => '无法安排录制',
			'liveTv.recordingTargetMissing' => '无法确定录制库',
			'liveTv.recordNotAvailable' => '此节目无法录制',
			'liveTv.recordingCancelled' => '录制已取消',
			'liveTv.recordingRuleDeleted' => '录制规则已删除',
			'liveTv.processRecordingRules' => '重新评估规则',
			'liveTv.recordingInProgress' => '正在录制',
			'liveTv.recordingsCount' => ({required Object count}) => '已安排 ${count} 项录制',
			'liveTv.editRule' => '编辑规则',
			'liveTv.editRuleAction' => '编辑',
			'liveTv.recordingRuleUpdated' => '录制规则已更新',
			'liveTv.guideReloadRequested' => '已请求更新节目指南',
			'liveTv.guideReloadFailed' => '无法刷新节目指南',
			'liveTv.rulesProcessRequested' => '已请求重新评估规则',
			'liveTv.rulesProcessFailed' => '无法重新评估录制规则',
			'liveTv.recordShow' => '录制节目',
			'liveTv.recordSettings.startEarly' => '提前开始（秒）',
			'liveTv.recordSettings.endLate' => '延后结束（秒）',
			'liveTv.recordSettings.newOnly' => '仅新剧集',
			'liveTv.recordSettings.anyChannel' => '在任意频道录制',
			'liveTv.recordSettings.anyTime' => '在任意时间录制',
			'liveTv.recordSettings.skipInLibrary' => '跳过媒体库中已有的剧集',
			'liveTv.recordSettings.keepUpTo' => '保留的剧集数',
			'liveTv.recordSettings.keepUpToHint' => '0 表示保留全部剧集',
			'liveTv.startingInMinutes' => ({required Object minutes}) => '${minutes} 分钟后开始',
			'liveTv.dayAtTime' => ({required Object day, required Object time}) => '${day} ${time}',
			'liveTv.invalidPlaybackData' => ({required Object product}) => '${product} 返回了无效的直播电视播放数据',
			'liveTv.failedToStartChannel' => '无法播放直播频道',
			'liveTv.failedToBuildStreamUrl' => '无法生成视频流 URL',
			'liveTv.playbackStartFailed' => ({required Object reason}) => '无法启动该频道：${reason}',
			'liveTv.channelSwitchFailed' => ({required Object reason}) => '无法切换频道：${reason}',
			'collections.title' => '合集',
			'collections.collection' => '合集',
			'collections.empty' => '合集为空',
			'collections.deleteCollection' => '删除合集',
			'collections.deleteConfirm' => ({required Object title}) => '要删除“${title}”吗？此操作无法撤销。',
			'collections.deleted' => '已删除合集',
			'collections.deleteFailed' => '删除合集失败',
			'collections.deleteFailedWithError' => ({required Object error}) => '删除合集失败：${error}',
			'collections.selectCollection' => '选择合集',
			'collections.collectionName' => '合集名称',
			'collections.enterCollectionName' => '输入合集名称',
			'collections.addedToCollection' => '已添加到合集',
			'collections.errorAddingToCollection' => '添加到合集失败',
			'collections.created' => '已创建合集',
			'collections.removeFromCollection' => '从合集移除',
			'collections.removeFromCollectionConfirm' => ({required Object title}) => '将“${title}”从此合集移除？',
			'collections.removedFromCollection' => '已从合集移除',
			'collections.removeFromCollectionFailed' => '从合集移除失败',
			'collections.removeFromCollectionError' => ({required Object error}) => '从合集移除时出错：${error}',
			'collections.searchCollections' => '搜索合集…',
			'playlists.title' => '播放列表',
			'playlists.playlist' => '播放列表',
			'playlists.noPlaylists' => '未找到播放列表',
			'playlists.create' => '创建播放列表',
			'playlists.playlistName' => '播放列表名称',
			'playlists.enterPlaylistName' => '输入播放列表名称',
			'playlists.delete' => '删除播放列表',
			'playlists.removeItem' => '从播放列表中移除',
			'playlists.smartPlaylist' => '智能播放列表',
			'playlists.itemCount' => ({required Object count}) => '${count} 个项目',
			'playlists.oneItem' => '1 个项目',
			'playlists.emptyPlaylist' => '此播放列表为空',
			'playlists.deleteConfirm' => '删除播放列表？',
			'playlists.deleteMessage' => ({required Object name}) => '确定要删除“${name}”吗？',
			'playlists.created' => '播放列表已创建',
			'playlists.deleted' => '播放列表已删除',
			'playlists.itemAdded' => '已添加到播放列表',
			'playlists.itemRemoved' => '已从播放列表中移除',
			'playlists.selectPlaylist' => '选择播放列表',
			'playlists.searchPlaylists' => '搜索播放列表…',
			'playlists.errorCreating' => '创建播放列表失败',
			'playlists.errorDeleting' => '删除播放列表失败',
			'playlists.errorLoading' => '加载播放列表失败',
			'playlists.errorAdding' => '添加到播放列表失败',
			'playlists.errorReordering' => '重新排序播放列表项目失败',
			'playlists.errorRemoving' => '从播放列表中移除失败',
			'music.goToAlbum' => '前往专辑',
			'music.goToArtist' => '前往艺术家',
			'music.instantMix' => '即时混合播放',
			'music.playNext' => '下一首播放',
			'music.addToQueue' => '添加到队列',
			'music.discNumber' => ({required Object n}) => '碟片 ${n}',
			'music.trackCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n, one: '${n}轨道', other: '${n} 首', ),
			'music.nowPlaying' => '正在播放',
			'music.playingFrom' => ({required Object title}) => '播放来源：${title}',
			'music.queue' => '播放队列',
			'music.clearQueue' => '清空队列',
			'music.lyrics' => '歌词',
			'music.noLyrics' => '暂无歌词',
			'music.sleepTimer' => '睡眠定时器',
			'music.sleepTimerEndOfTrack' => '当前曲目结束时',
			'music.sleepTimerMinutes' => ({required Object n}) => '${n} 分钟',
			'music.stopPlayback' => '停止播放',
			'music.previousTrack' => '上一首',
			'music.nextTrack' => '下一首',
			'music.repeat' => '循环',
			'music.repeatAll' => '列表循环',
			'music.repeatOne' => '单曲循环',
			'music.instantMixNoServer' => '没有可用于即时混合的服务器',
			'music.instantMixFailed' => '加载即时混合失败',
			'music.instantMixEmpty' => '即时混合没有生成任何曲目',
			'music.noAudioUrl' => ({required Object track}) => '没有可供 ${track} 使用的音频 URL',
			'music.discography.singlesAndEps' => '单曲和 EP',
			'music.discography.live' => '现场',
			'music.discography.compilations' => '合集',
			'watchTogether.title' => '一起看',
			'watchTogether.description' => '与朋友和家人同步观看内容',
			'watchTogether.createRoom' => '创建房间',
			'watchTogether.creatingRoom' => '正在创建房间...',
			'watchTogether.joinRoom' => '加入房间',
			'watchTogether.joiningRoom' => '正在加入房间...',
			'watchTogether.connecting' => '正在连接...',
			'watchTogether.relayPublic' => '房间使用公共 Open Watch Party 中继。',
			'watchTogether.relayCustom' => ({required Object url}) => '房间使用您的中继 ${url}。',
			'watchTogether.recentRooms' => '最近的房间',
			'watchTogether.roomActions' => '房间动作',
			'watchTogether.renameRoom' => '重命名房间',
			'watchTogether.removeRoom' => '移除',
			'watchTogether.enterRoomCode' => '输入主机发送的 6 个字符的代码。',
			'watchTogether.roomCode' => '房间代码',
			'watchTogether.paste' => '粘贴',
			'watchTogether.noCodeInClipboard' => '剪贴板不包含房间代码',
			'watchTogether.copyCode' => '复制代码',
			'watchTogether.codeCopied' => '房间代码已复制',
			'watchTogether.shareInvite' => '分享邀请',
			'watchTogether.qrShare' => '分享二维码',
			'watchTogether.qrHint' => '使用Luroka应用程序扫描即可加入该房间。',
			'watchTogether.phasePlaying' => '演奏',
			'watchTogether.phasePaused' => '已暂停',
			'watchTogether.phaseWaiting' => '等待大家',
			'watchTogether.inviteCopied' => '邀请已复制。将其粘贴到消息中。',
			'watchTogether.inviteMessage' => ({required Object code}) => '加入我在 Luroka 中的 Watch Together 房间：luroka://watch?code=${code} — 或者打开 Watch Together 并输入 ${code}。',
			'watchTogether.openSessionControls' => '打开“一起看”会话控制',
			'watchTogether.reconnecting' => '正在重新连接...',
			'watchTogether.reconnectingDescription' => '连接断开了。您会自动重新加入房间。',
			'watchTogether.connected' => '已连接',
			'watchTogether.disconnected' => '已断开连接',
			'watchTogether.youAreHost' => '你是主持人',
			'watchTogether.hostedBy' => ({required Object name}) => '主持人：${name}',
			'watchTogether.hostControlsPlayback' => '主持人控制播放',
			'watchTogether.anyoneCanControl' => '任何人都可以控制播放',
			'watchTogether.roomLocked' => '房间锁着',
			'watchTogether.nowPlaying' => '正在播放',
			'watchTogether.nothingPlaying' => '没什么玩的',
			'watchTogether.nothingPlayingHost' => '播放任何库中的内容并与房间分享。',
			'watchTogether.nothingPlayingGuest' => '当主持人播放某些内容时，它会在此处打开。',
			'watchTogether.notShareable' => '该视频没有目录匹配，因此只有有权访问同一服务器的人才能播放。',
			'watchTogether.searching' => '在您的图书馆中寻找此视频...',
			'watchTogether.yourCopy' => '你的副本',
			'watchTogether.sharingYourCopy' => '您正在分享您的副本',
			'watchTogether.playingOtherLength' => ({required Object difference}) => '播放您的副本，${difference}',
			'watchTogether.mismatchTitle' => '您的副本长度不同',
			'watchTogether.mismatchDescription' => ({required Object difference}) => '您最接近的副本是 ${difference} 而不是房间的视频。它可能是另一个剪辑或版本。',
			'watchTogether.playAnyway' => '无论如何都可以玩',
			'watchTogether.chooseAnotherCopy' => '选择另一个副本',
			'watchTogether.dontPlay' => '不要玩',
			'watchTogether.unavailableTitle' => '你没有这个视频',
			'watchTogether.unavailableDescription' => 'Luroka 在您的库中找不到它。自己选择一份或重新搜索。',
			'watchTogether.chooseCopy' => '选择副本',
			'watchTogether.searchAgain' => '再次搜索',
			'watchTogether.noCandidates' => '在您的图书馆中找不到任何副本。',
			'watchTogether.choiceFailed' => '无法在房间内播放此副本',
			'watchTogether.lengthLonger' => ({required Object duration}) => '${duration}更长',
			'watchTogether.lengthShorter' => ({required Object duration}) => '${duration} 较短',
			'watchTogether.lengthSame' => '长度相同',
			'watchTogether.lengthUnknown' => '长度未知',
			'watchTogether.joinCurrentPlayback' => '加入当前播放',
			'watchTogether.joinCurrentPlaybackDescription' => '加入主持人当前正在观看的内容',
			'watchTogether.stopMedia' => '为所有人停止视频',
			'watchTogether.syncOffset' => '同步偏移',
			'watchTogether.syncOffsetDescription' => '如果视频在房间前方或后方运行，请移动视频。',
			'watchTogether.offsetHint' => ({required Object difference}) => '你的副本比房间的视频是${difference}。',
			'watchTogether.applyDifference' => ({required Object offset}) => '使用${offset}',
			'watchTogether.offsetMinusSecond' => '-1秒',
			'watchTogether.offsetMinusTenth' => '-100毫秒',
			'watchTogether.offsetPlusTenth' => '+100 毫秒',
			'watchTogether.offsetPlusSecond' => '+1秒',
			'watchTogether.participants' => '参与者',
			'watchTogether.participantCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n, one: '${n} 参与者', other: '${n} 参与者', ),
			_ => null,
		} ?? switch (path) {
			'watchTogether.hostBadge' => '主持人',
			'watchTogether.nameYou' => ({required Object name}) => '${name}（你）',
			'watchTogether.playerIdle' => '空闲',
			'watchTogether.playerLoading' => '加载中',
			'watchTogether.playerReady' => '准备好',
			'watchTogether.playerBuffering' => '缓冲',
			'watchTogether.matchSearching' => '搜寻中',
			'watchTogether.matchMatched' => '有视频吗',
			'watchTogether.matchMismatched' => '长度不同',
			'watchTogether.matchUnavailable' => '没有视频',
			'watchTogether.participantOffset' => ({required Object offset}) => '偏移量 ${offset}',
			'watchTogether.makeHost' => '设为主持人',
			'watchTogether.makeHostQuestion' => '移交主持人？',
			'watchTogether.makeHostConfirm' => ({required Object name}) => '${name} 将控制播放并主导所有人的会话。',
			'watchTogether.transfer' => '移交',
			'watchTogether.removeParticipant' => '从房间中移除',
			'watchTogether.removeParticipantQuestion' => ({required Object name}) => '删除${name}？',
			'watchTogether.removeParticipantConfirm' => ({required Object name}) => '${name} 离开房间。除非您锁定房间，否则他们可以使用代码再次加入。',
			'watchTogether.remove' => '删除',
			'watchTogether.roomSettings' => '房间设置',
			'watchTogether.letEveryoneControl' => '让每个人控制播放',
			'watchTogether.lockRoom' => '锁室',
			'watchTogether.lockRoomDescription' => '没有新人可以加入',
			'watchTogether.leaveRoom' => '留出空间',
			'watchTogether.leaveRoomQuestion' => '离开房间吗？',
			'watchTogether.leaveRoomConfirm' => '您可以使用房间代码再次加入。',
			'watchTogether.leave' => '离开',
			'watchTogether.endRoom' => '末室',
			'watchTogether.endRoomQuestion' => '末室？',
			'watchTogether.endRoomConfirm' => '每个人的房间到此结束。',
			'watchTogether.end' => '结束',
			'watchTogether.playBlockedTitle' => '播放未开始',
			'watchTogether.playBlockedDescription' => '按播放开始在房间里观看。',
			'watchTogether.notices.pressedPlay' => ({required Object name}) => '${name} 按下播放',
			'watchTogether.notices.playbackStarted' => '播放开始',
			'watchTogether.notices.paused' => ({required Object name}) => '${name} 暂停了播放',
			'watchTogether.notices.playbackPaused' => '播放暂停',
			'watchTogether.notices.jumpedTo' => ({required Object name, required Object position}) => '${name} 跳转至 ${position}',
			'watchTogether.notices.roomJumpedTo' => ({required Object position}) => '跳转至${position}',
			'watchTogether.notices.changedSpeed' => ({required Object name, required Object speed}) => '${name} 将速度设为 ${speed}',
			'watchTogether.notices.speedChanged' => ({required Object speed}) => '速度设置为 ${speed}',
			'watchTogether.notices.startedMedia' => ({required Object name, required Object title}) => '${name} 启动 ${title}',
			'watchTogether.notices.mediaStarted' => ({required Object title}) => '现在玩${title}',
			'watchTogether.notices.stoppedMedia' => ({required Object name}) => '${name} 停止了视频',
			'watchTogether.notices.mediaStopped' => '视频停止了',
			'watchTogether.notices.waitingFor' => ({required Object name}) => '正在等待 ${name}…',
			'watchTogether.notices.waitingForSomeone' => '等待有人追上...',
			'watchTogether.notices.finished' => '完成',
			'watchTogether.notices.hostChangedTo' => ({required Object name}) => '${name} 现在是主持人',
			'watchTogether.notices.youAreNowHost' => '你现在是主持人',
			'watchTogether.notices.joined' => ({required Object name}) => '${name} 已加入',
			'watchTogether.notices.left' => ({required Object name}) => '${name} 已离开',
			'watchTogether.notices.controlRefused' => '只有主机可以控制播放',
			'watchTogether.notices.searchFailed' => '部分服务器无法搜索房间视频',
			'watchTogether.notices.playBlocked' => '按播放开始',
			'watchTogether.notices.shareFailed' => '无法与房间分享此视频',
			'watchTogether.notices.notShared' => '下载的视频不会与房间共享',
			'watchTogether.notices.openFailed' => '无法打开房间视频',
			'watchTogether.ended.ended' => '主持人结束了房间',
			'watchTogether.ended.kicked' => '你已被移出房间',
			'watchTogether.ended.expired' => '房间已过期',
			'watchTogether.ended.replaced' => '您在另一台设备上加入了此房间',
			'watchTogether.ended.lost' => '与房间失去连接',
			'watchTogether.errors.invalidCode' => '这不是房间代码。代码有 6 个字母和数字，不含 0、1、I、L 或 O。',
			'watchTogether.errors.roomNotFound' => '没有房间有该代码。可能已经结束了。',
			'watchTogether.errors.roomFull' => '那个房间已经满了。',
			'watchTogether.errors.roomLocked' => '主人锁了那个房间。',
			'watchTogether.errors.relayFull' => '一起观看现在很忙。稍后再试。',
			'watchTogether.errors.unreachable' => '无法到达“一起观看”中继。检查您的连接。',
			'watchTogether.errors.rateLimited' => '尝试次数太多。稍等片刻，然后重试。',
			'watchTogether.errors.clientBlocked' => '此版本的Luroka不能使用继电器。更新应用程序。',
			'watchTogether.errors.forbidden' => '只有主人才能做到这一点。',
			'watchTogether.errors.notInRoom' => '你们不在一个房间里。',
			'watchTogether.errors.alreadyInRoom' => '你已经在一个房间里了。',
			'watchTogether.errors.resumeFailed' => '无法重新加入房间。',
			'watchTogether.errors.unsupported' => '中继不支持此功能。',
			'watchTogether.errors.generic' => '出了点问题。再试一次。',
			'watchTogether.untitledEpisode' => ({required Object number}) => '剧集 ${number}',
			'downloads.title' => '下载',
			'downloads.manage' => '管理',
			'downloads.tvShows' => '电视剧',
			'downloads.movies' => '电影',
			'downloads.music' => '音乐',
			'downloads.tracksQueued' => ({required Object count}) => '${count} 首曲目已加入下载队列',
			'downloads.noDownloads' => '暂无下载',
			'downloads.noDownloadsDescription' => '下载的内容将在此处显示以供离线观看',
			'downloads.downloadNow' => '下载',
			'downloads.deleteDownload' => '删除下载',
			'downloads.retryDownload' => '重试下载',
			'downloads.downloadQueued' => '下载已排队',
			'downloads.downloadResumed' => '下载已继续',
			'downloads.serverErrorBitrate' => '服务器错误：文件可能超过远程比特率限制',
			'downloads.storageFull' => '为保护剩余存储空间，下载已停止。请释放空间或选择其他下载位置，然后重试。',
			'downloads.storageUnavailable' => '无法检查可用存储空间，因此下载已停止。请检查下载位置后重试。',
			'downloads.episodesQueued' => ({required Object count}) => '${count} 集已加入下载队列',
			'downloads.downloadDeleted' => '下载已删除',
			'downloads.deleteConfirm' => ({required Object title}) => '要从此设备删除“${title}”吗？',
			'downloads.deleteCollectionDownloads' => '删除下载',
			'downloads.deleteCollectionDownloadsConfirm' => ({required Object title}) => '从此设备删除“${title}”中的所有下载内容吗？',
			'downloads.collectionDownloadsDeleted' => '下载已删除',
			'downloads.cancelledDownloadTitle' => '已取消的下载',
			'downloads.cancelledDownloadMessage' => '此下载已取消。你想怎么做？',
			'downloads.allEpisodesAlreadyDownloaded' => '所有剧集均已下载',
			'downloads.resumeDownload' => '继续下载',
			'downloads.cancelledDownload' => '已取消的下载',
			'downloads.syncingFile' => ({required Object file, required Object status}) => '${file}（正在同步 ${status}）',
			'downloads.downloadedFileClickToComplete' => ({required Object file}) => '已下载 ${file} — 点击以完成',
			'downloads.partialDownloadClickToComplete' => '已部分下载 — 点击以完成',
			'downloads.deleting' => '正在删除…',
			'downloads.deletingWithProgress' => ({required Object title, required Object current, required Object total}) => '正在删除 ${title}…（${current}/${total}）',
			'downloads.queuedTooltip' => '已排队',
			'downloads.queuedFilesTooltip' => ({required Object files}) => '已排队：${files}',
			'downloads.downloadingTooltip' => '正在下载…',
			'downloads.downloadingFilesTooltip' => ({required Object files}) => '正在下载 ${files}',
			'downloads.noDownloadsTree' => '暂无下载',
			'downloads.pauseAll' => '全部暂停',
			'downloads.resumeAll' => '全部继续',
			'downloads.retryAll' => '全部重试',
			'downloads.retryFailed' => '重试失败的下载',
			'downloads.deleteAll' => '全部删除',
			'downloads.selectVersion' => '选择版本',
			'downloads.allEpisodes' => '所有剧集',
			'downloads.unwatchedOnly' => '仅未观看',
			'downloads.nextNUnwatched' => ({required Object count}) => '接下来 ${count} 集未观看',
			'downloads.customAmount' => '自定义数量…',
			'downloads.includeSpecials' => '包含特别篇',
			'downloads.howManyEpisodes' => '下载几集？',
			'downloads.invalidEpisodeCount' => '请输入有效的集数。',
			'downloads.keepSynced' => '保持同步',
			'downloads.downloadOnce' => '下载一次',
			'downloads.keepNUnwatched' => ({required Object count}) => '保留 ${count} 集未观看内容',
			'downloads.editSyncRule' => '编辑同步规则',
			'downloads.removeSyncRule' => '删除同步规则',
			'downloads.removeSyncRuleConfirm' => ({required Object title}) => '停止同步“${title}”？已下载的剧集将被保留。',
			'downloads.removeListSyncRuleConfirm' => ({required Object title}) => '停止同步“${title}”？',
			'downloads.deleteSyncRuleDownloads' => '同时删除相关下载',
			'downloads.deleteSyncRuleDownloadsDescription' => '被其他同步规则或个人资料使用的下载将保留。',
			'downloads.syncRuleCreated' => ({required Object count}) => '同步规则已创建 — 保留 ${count} 集未观看内容',
			'downloads.syncRuleUpdated' => '同步规则已更新',
			'downloads.syncRuleRemoved' => '同步规则已删除',
			'downloads.syncRuleAndDownloadsRemoved' => '同步规则及相关下载已删除',
			'downloads.syncRuleCleanupBusy' => '同步规则正在更新中，请稍后再试。',
			'downloads.syncRuleCleanupUnavailable' => '无法安全识别相关下载。请重新连接服务器后再试，或在不删除下载的情况下移除规则。',
			'downloads.syncedNewEpisodes' => ({required Object title, required Object count}) => '已为 ${title} 同步 ${count} 个新剧集',
			'downloads.activeSyncRules' => '同步规则',
			'downloads.noSyncRules' => '没有同步规则',
			'downloads.manageSyncRule' => '管理同步',
			'downloads.editEpisodeCount' => '剧集数量',
			'downloads.editSyncFilter' => '同步筛选',
			'downloads.syncAllItems' => '同步所有项目',
			'downloads.syncUnwatchedItems' => '同步未观看项目',
			'downloads.syncRuleServerContext' => ({required Object server, required Object status}) => '服务器：${server} • ${status}',
			'downloads.syncRuleAvailable' => '可用',
			'downloads.syncRuleOffline' => '离线',
			'downloads.syncRuleSignInRequired' => '需要登录',
			'downloads.syncRuleAccessDenied' => '访问被拒绝',
			'downloads.syncRuleNotAvailableForProfile' => '当前用户资料不可用',
			'downloads.syncRuleUnknownServer' => '未知服务器',
			'downloads.syncRuleListCreated' => '同步规则已创建',
			'downloads.backgroundWarning.bannerBlocked' => '离开应用后，下载将停止',
			'downloads.backgroundWarning.bannerDegraded' => '后台下载可能受限',
			'downloads.backgroundWarning.bannerAction' => '详情',
			'downloads.backgroundWarning.sheetTitle' => '后台下载已被阻止',
			'downloads.backgroundWarning.sheetTitleDegraded' => '后台下载可能受限',
			'downloads.backgroundWarning.sheetIntro' => 'Android 正在阻止 Luroka 在后台稳定下载。',
			'downloads.backgroundWarning.sheetIntroDegraded' => '你的设备限制了 Luroka 在后台下载的时机。',
			'downloads.backgroundWarning.reasonBackgroundRestricted' => 'Luroka 的后台使用受到限制。请将其电池用量或后台使用设置为“不受限制”。',
			'downloads.backgroundWarning.reasonStandbyRestricted' => 'Android 已将 Luroka 置于受限待机状态。请将其电池用量设为“不受限制”。',
			'downloads.backgroundWarning.reasonDownloadChannelBlocked' => '下载通知已关闭，因此可能无法查看进度或进行控制。',
			'downloads.backgroundWarning.reasonNotificationsDisabled' => '通知已关闭。在 Android 13 或更高版本中，长时间后台下载需要开启通知。',
			'downloads.backgroundWarning.reasonDataSaver' => '流量节省程序已开启，会阻止使用移动数据进行后台下载。使用 Wi-Fi 时下载应仍可进行。',
			'downloads.backgroundWarning.reasonOemUnknown' => 'Luroka 在后台时，下载曾多次停止。请检查 Luroka 的电池用量或后台使用设置。',
			'downloads.backgroundWarning.openSettings' => '打开设置',
			'downloads.backgroundWarning.stillNotWorking' => '设备专属帮助',
			'downloads.backgroundWarning.stillNotWorkingDescription' => '查看适用于你设备的操作步骤；如果问题仍然存在，请通过设置 › 查看日志发送日志。',
			'downloads.backgroundWarning.dialogTitle' => '下载可能无法完成',
			'downloads.backgroundWarning.dialogDownloadAnyway' => '仍要下载',
			'downloads.backgroundWarning.dialogFixFirst' => '先解决此问题',
			'downloads.backgroundWarning.statusTile' => '后台下载',
			'downloads.backgroundWarning.statusOk' => '允许在后台运行',
			'downloads.backgroundWarning.statusBlocked' => '已被系统设置阻止',
			'downloads.backgroundWarning.statusDegraded' => '受系统设置限制',
			'downloads.backgroundWarning.statusUnknown' => '尚未检查',
			'downloads.backgroundWarning.settingsUnavailable' => '无法在此设备上打开系统设置',
			'downloads.backgroundWarning.linkUnavailable' => '无法在此设备上打开 dontkillmyapp.com',
			'downloads.options' => '下载选项',
			'downloads.groupings.library' => '媒体库',
			'downloads.groupings.collections' => '收藏',
			'downloads.unknownLibrary' => '未知媒体库',
			'downloads.unknownShow' => '未知节目',
			'downloads.unknownSeason' => '未知季',
			'downloads.unknownAlbum' => '未知专辑',
			'downloads.completedOfTotal' => ({required Object completed, required Object total}) => '已完成 ${completed}/${total}',
			'downloads.errorFileNotFound' => '未找到文件（404）',
			'downloads.errorDownloadNotAllowed' => '服务器不允许下载（403）',
			'downloads.errorDownloadFailed' => '下载失败',
			'downloads.errorDownloadFailedWithReason' => ({required Object reason}) => '下载失败：${reason}',
			'downloads.errorHttpStatus' => ({required Object status}) => '下载失败（HTTP ${status}）',
			'downloads.errorPostProcessing' => ({required Object reason}) => '后处理失败：${reason}',
			'downloads.reasonFileNotSaved' => '无法将文件保存到此设备',
			'downloads.reasonCannotResume' => '无法继续未完成的下载',
			'downloads.reasonDeviceStorageFull' => '此设备的存储空间已满',
			'downloads.notificationDownloading' => '正在下载…',
			'downloads.notificationComplete' => '下载完成',
			'downloads.notificationPaused' => '下载已暂停',
			'shaders.title' => '着色器',
			'shaders.noShaderDescription' => '无视频增强',
			'shaders.nvscalerDescription' => 'NVIDIA 图像缩放，使视频更清晰',
			'shaders.artcnnVariantNeutral' => '中性',
			'shaders.artcnnVariantDenoise' => '降噪',
			'shaders.artcnnVariantDenoiseSharpen' => '降噪 + 锐化',
			'shaders.qualityFast' => '快速',
			'shaders.qualityHQ' => '高质量',
			'shaders.mode' => '模式',
			'shaders.importShader' => '导入着色器',
			'shaders.customShaderDescription' => '自定义 GLSL 着色器',
			'shaders.shaderImported' => '着色器已导入',
			'shaders.shaderImportFailed' => '导入着色器失败',
			'shaders.deleteShader' => '删除着色器',
			'shaders.deleteShaderConfirm' => ({required Object name}) => '删除“${name}”？',
			'companionRemote.title' => '遥控器',
			'companionRemote.connectedTo' => ({required Object name}) => '已连接到 ${name}',
			'companionRemote.unknownDevice' => '未知设备',
			'companionRemote.session.startingServer' => '正在启动远程服务器…',
			'companionRemote.session.hostAddress' => '主机地址',
			'companionRemote.session.connected' => '已连接',
			'companionRemote.session.serverRunning' => '远程服务器已启动',
			'companionRemote.session.serverStopped' => '远程服务器已停止',
			'companionRemote.session.serverRunningDescription' => '网络上的移动设备可以连接到此应用',
			'companionRemote.session.serverStoppedDescription' => '启动服务器以允许移动设备连接',
			'companionRemote.session.usePhoneToControl' => '使用移动设备控制此应用',
			'companionRemote.session.startServer' => '启动服务器',
			'companionRemote.session.stopServer' => '停止服务器',
			'companionRemote.session.minimize' => '最小化',
			'companionRemote.session.manualAddressHint' => '手动连接地址：',
			'companionRemote.pairing.discoveryDescription' => '使用同一 Plex 账号的 Luroka 设备会显示在这里',
			'companionRemote.pairing.hostAddressHint' => '192.168.1.100:48632',
			'companionRemote.pairing.connecting' => '正在连接…',
			'companionRemote.pairing.searchingForDevices' => '正在搜索设备…',
			'companionRemote.pairing.noDevicesFound' => '未在网络中找到设备',
			'companionRemote.pairing.noDevicesHint' => '请在桌面端打开 Luroka，并确保设备连接到同一 Wi-Fi 网络',
			'companionRemote.pairing.availableDevices' => '可用设备',
			'companionRemote.pairing.manualConnection' => '手动连接',
			'companionRemote.pairing.cryptoInitFailed' => '无法启动安全连接。请先登录 Plex。',
			'companionRemote.pairing.validationHostRequired' => '请输入主机地址',
			'companionRemote.pairing.validationHostFormat' => '格式必须为 IP:端口（例如 192.168.1.100:48632）',
			'companionRemote.pairing.connectionTimedOut' => '连接超时。请在两台设备上使用同一网络。',
			'companionRemote.pairing.sessionNotFound' => '未找到设备。请确认 Luroka 正在主机上运行。',
			'companionRemote.pairing.authFailed' => '认证失败。两台设备需要使用同一 Plex 账号。',
			'companionRemote.pairing.failedToConnect' => ({required Object error}) => '连接失败：${error}',
			'companionRemote.remote.disconnectConfirm' => '确定要断开遥控会话吗？',
			'companionRemote.remote.reconnecting' => '正在重新连接…',
			'companionRemote.remote.attemptOf' => ({required Object current}) => '第 ${current} 次尝试，共 5 次',
			'companionRemote.remote.retryNow' => '立即重试',
			'companionRemote.remote.tabRemote' => '遥控器',
			'companionRemote.remote.tabPlay' => '播放',
			'companionRemote.remote.tabMore' => '更多',
			'companionRemote.remote.menu' => '菜单',
			'companionRemote.remote.tabNavigation' => '导航',
			'companionRemote.remote.tabDiscover' => '发现',
			'companionRemote.remote.tabLibraries' => '媒体库',
			'companionRemote.remote.tabSearch' => '搜索',
			'companionRemote.remote.tabDownloads' => '下载',
			'companionRemote.remote.tabSettings' => '设置',
			'companionRemote.remote.previous' => '上一个',
			'companionRemote.remote.playPause' => '播放/暂停',
			'companionRemote.remote.next' => '下一个',
			'companionRemote.remote.seekBack' => '快退',
			'companionRemote.remote.stop' => '停止',
			'companionRemote.remote.seekForward' => '快进',
			'companionRemote.remote.volume' => '音量',
			'companionRemote.remote.volumeDown' => '降低音量',
			'companionRemote.remote.volumeUp' => '提高音量',
			'companionRemote.remote.fullscreen' => '全屏',
			'companionRemote.remote.subtitles' => '字幕',
			'companionRemote.remote.audio' => '音频',
			'companionRemote.remote.searchHint' => '在桌面端搜索…',
			'companionRemote.errors.noNetworkInterface' => '未找到网络接口',
			'companionRemote.errors.authenticationFailed' => '身份验证失败',
			'companionRemote.errors.serverStartFailed' => ({required Object error}) => '无法启动远程服务器：${error}',
			'companionRemote.errors.commandFailed' => ({required Object error}) => '无法发送远程命令：${error}',
			'companionRemote.errors.joinTimedOut' => '加入会话超时',
			'companionRemote.errors.failedToConnectAnyAddress' => '无法连接到任何地址',
			'companionRemote.errors.connectionLostAfterAttempts' => ({required Object attempts}) => '${attempts} 次尝试后连接丢失',
			'companionRemote.errors.connectionLost' => '连接丢失',
			'companionRemote.closedBeforeAuth' => '连接在身份验证前已关闭',
			'videoSettings.playbackSpeed' => '播放速度',
			'videoSettings.normalSpeed' => '正常',
			'videoSettings.sleepTimerActive' => ({required Object duration}) => '运行中（${duration}）',
			'videoSettings.zoom' => '缩放',
			'videoSettings.sleepTimer' => '睡眠定时器',
			'videoSettings.audioSync' => '音频同步',
			'videoSettings.subtitleSync' => '字幕同步',
			'videoSettings.hdr' => 'HDR',
			'videoSettings.hdrUnsupported' => '此处不支持 HDR——当前桌面合成器或视频输出无法传输 HDR。',
			'videoSettings.hdrToneMapping' => 'HDR 色调映射',
			'videoSettings.hdrToneMappingCompositor' => '合成器',
			'videoSettings.hdrToneMappingCompositorDescription' => '直接传递源的 HDR 元数据，并由桌面合成器进行映射。',
			'videoSettings.hdrToneMappingPlayer' => '播放器',
			'videoSettings.hdrToneMappingPlayerDescription' => '在播放器中映射到显示器的峰值亮度，然后将结果告知合成器。',
			'videoSettings.hdrToneMappingFailed' => '无法更改 HDR 色调映射——仍在使用之前的模式。',
			'videoSettings.audioOutput' => '音频输出',
			'videoSettings.performanceOverlay' => '性能监控',
			'videoSettings.audioOutputDolbyAtmos' => 'Dolby Atmos',
			'videoSettings.audioOutputDolbyAudio' => 'Dolby Audio',
			'videoSettings.audioOutputSurround' => '环绕声',
			'videoSettings.audioOutputSpatial' => '空间音频',
			'videoSettings.audioOutputStereo' => '立体声',
			'videoSettings.audioNormalization' => '响度标准化',
			'videoSettings.audioNormalizationDisablesPassthrough' => '将音频解码为 PCM；开启时直通关闭',
			'performanceOverlay.color' => '颜色',
			'performanceOverlay.performance' => '性能',
			'performanceOverlay.buffer' => '缓冲',
			'performanceOverlay.app' => '应用',
			'performanceOverlay.decoder' => '解码器',
			'performanceOverlay.rawDecoder' => '原始解码器',
			'performanceOverlay.tunneling' => '隧道',
			'performanceOverlay.passthrough' => '直通',
			'performanceOverlay.aspect' => '宽高比',
			'performanceOverlay.rotation' => '旋转',
			'performanceOverlay.dvSource' => 'DV 来源',
			'performanceOverlay.dvPath' => 'DV 路径',
			'performanceOverlay.dvRouteDecoder' => 'Dolby Vision解码器',
			'performanceOverlay.dvRouteDecoderP81' => 'Dolby Vision解码器（P7→8.1）',
			'performanceOverlay.dvRouteBaseLayer' => '基层',
			'performanceOverlay.dvRouteBaseLayerHdr10' => 'HDR10基础层',
			'performanceOverlay.dvRouteBaseLayerHlg' => 'HLG基层',
			'performanceOverlay.dvRouteBaseLayerSdr' => 'SDR基础层',
			'performanceOverlay.dvRouteReshaped' => 'RPU 重塑 (gpu-next)',
			'performanceOverlay.p7Conversion' => 'P7 转换',
			'performanceOverlay.sampleRate' => '采样率',
			'performanceOverlay.pixelFormat' => '像素格式',
			'performanceOverlay.hwFormat' => '硬件格式',
			'performanceOverlay.matrix' => '矩阵',
			'performanceOverlay.primaries' => '基色',
			'performanceOverlay.transfer' => '传递特性',
			'performanceOverlay.renderFps' => '渲染 FPS',
			'performanceOverlay.displayFps' => '显示 FPS',
			'performanceOverlay.avSync' => 'A/V 同步',
			'performanceOverlay.dropped' => '丢帧',
			'performanceOverlay.dvRpus' => 'DV RPU',
			'performanceOverlay.dvRpuAverage' => 'DV RPU 平均',
			'performanceOverlay.dvSampleAverage' => 'DV 采样平均',
			'performanceOverlay.maxLuma' => '最大亮度',
			'performanceOverlay.minLuma' => '最小亮度',
			'performanceOverlay.maxCll' => 'MaxCLL',
			'performanceOverlay.maxFall' => 'MaxFALL',
			'performanceOverlay.cacheUsed' => '已用缓存',
			'performanceOverlay.cacheLimit' => '缓存限制',
			'performanceOverlay.speed' => '速度',
			'performanceOverlay.player' => '播放器',
			'performanceOverlay.memory' => '内存',
			'performanceOverlay.uiFps' => 'UI FPS',
			'performanceOverlay.fps' => 'FPS',
			'performanceOverlay.decoderAndroidHw' => 'Android 硬件',
			'performanceOverlay.decoderNvidiaHw' => 'NVIDIA 硬件',
			'performanceOverlay.decoderQualcommHw' => 'Qualcomm 硬件',
			'performanceOverlay.decoderMediatekHw' => 'MediaTek 硬件',
			'performanceOverlay.decoderExynosHw' => 'Exynos 硬件',
			'performanceOverlay.decoderSoftware' => '软件',
			'performanceOverlay.decoderHardware' => '硬件',
			'performanceOverlay.tunnelingActive' => '已启用',
			'performanceOverlay.dvRpuFailed' => ({required Object converted, required Object failures}) => '${converted}（${failures} 个失败）',
			'externalPlayer.title' => '外部播放器',
			'externalPlayer.useExternalPlayer' => '使用外部播放器',
			'externalPlayer.useExternalPlayerDescription' => '在其他应用中打开视频',
			'externalPlayer.selectPlayer' => '选择播放器',
			'externalPlayer.customPlayers' => '自定义播放器',
			'externalPlayer.systemDefault' => '系统默认',
			'externalPlayer.addCustomPlayer' => '添加自定义播放器',
			'externalPlayer.playerName' => '播放器名称',
			'externalPlayer.playerNameHint' => '我的播放器',
			'externalPlayer.playerCommand' => '命令',
			'externalPlayer.playerPackage' => '包名',
			'externalPlayer.playerUrlScheme' => 'URL 方案',
			'externalPlayer.off' => '关闭',
			'externalPlayer.launchFailed' => '无法打开外部播放器',
			'externalPlayer.appNotInstalled' => ({required Object name}) => '${name} 未安装',
			'externalPlayer.playInExternalPlayer' => '在外部播放器中播放',
			'metadataEdit.editMetadata' => '编辑…',
			'metadataEdit.screenTitle' => '编辑元数据',
			'metadataEdit.basicInfo' => '基本信息',
			'metadataEdit.artwork' => '封面图片',
			'metadataEdit.advancedSettings' => '高级设置',
			'metadataEdit.title' => '标题',
			'metadataEdit.sortTitle' => '排序标题',
			'metadataEdit.originalTitle' => '原始标题',
			'metadataEdit.releaseDate' => '上映日期',
			'metadataEdit.contentRating' => '内容分级',
			'metadataEdit.studio' => '制片厂',
			'metadataEdit.tagline' => '标语',
			'metadataEdit.summary' => '简介',
			'metadataEdit.poster' => '海报',
			'metadataEdit.background' => '背景',
			'metadataEdit.logo' => '标志',
			'metadataEdit.squareArt' => '方形图片',
			'metadataEdit.selectPoster' => '选择海报',
			'metadataEdit.selectBackground' => '选择背景',
			'metadataEdit.selectLogo' => '选择标志',
			'metadataEdit.selectSquareArt' => '选择方形图片',
			'metadataEdit.fromUrl' => '通过 URL',
			'metadataEdit.uploadFile' => '上传文件',
			'metadataEdit.enterImageUrl' => '输入图片 URL',
			'metadataEdit.imageUrl' => '图片 URL',
			'metadataEdit.metadataUpdated' => '元数据已更新',
			'metadataEdit.metadataUpdateFailed' => '元数据更新失败',
			'metadataEdit.artworkUpdated' => '封面图片已更新',
			'metadataEdit.artworkUpdateFailed' => '封面图片更新失败',
			'metadataEdit.noArtworkAvailable' => '没有可用的封面图片',
			'metadataEdit.artworkOption' => ({required Object index}) => '封面图片选项 ${index}',
			'metadataEdit.selectedArtworkOption' => ({required Object index}) => '封面图片选项 ${index}，已选择',
			'metadataEdit.notSet' => '未设置',
			'metadataEdit.libraryDefault' => '媒体库默认',
			'metadataEdit.accountDefault' => '账户默认',
			'metadataEdit.seriesDefault' => '剧集默认',
			'metadataEdit.episodeSorting' => '剧集排序',
			'metadataEdit.oldestFirst' => '最旧优先',
			'metadataEdit.newestFirst' => '最新优先',
			'metadataEdit.keep' => '保留',
			'metadataEdit.allEpisodes' => '所有剧集',
			'metadataEdit.latestEpisodes' => ({required Object count}) => '最新 ${count} 集',
			'metadataEdit.latestEpisode' => '最新一集',
			'metadataEdit.episodesAddedPastDays' => ({required Object count}) => '过去 ${count} 天内添加的剧集',
			'metadataEdit.deleteAfterPlaying' => '播放后删除剧集',
			'metadataEdit.never' => '从不',
			'metadataEdit.afterADay' => '一天后',
			'metadataEdit.afterAWeek' => '一周后',
			'metadataEdit.afterAMonth' => '一个月后',
			'metadataEdit.onNextRefresh' => '下次刷新时',
			'metadataEdit.seasons' => '季',
			'metadataEdit.show' => '显示',
			'metadataEdit.hide' => '隐藏',
			'metadataEdit.episodeOrdering' => '剧集排列顺序',
			'metadataEdit.tmdbAiring' => 'The Movie Database（播出顺序）',
			'metadataEdit.tvdbAiring' => 'TheTVDB（播出顺序）',
			'metadataEdit.tvdbAbsolute' => 'TheTVDB（绝对顺序）',
			'metadataEdit.metadataLanguage' => '元数据语言',
			'metadataEdit.useOriginalTitle' => '使用原始标题',
			'metadataEdit.preferredAudioLanguage' => '首选音频语言',
			'metadataEdit.preferredSubtitleLanguage' => '首选字幕语言',
			'metadataEdit.subtitleMode' => '自动选择字幕模式',
			'metadataEdit.manuallySelected' => '手动选择',
			'metadataEdit.shownWithForeignAudio' => '外语音频时显示',
			'metadataEdit.alwaysEnabled' => '始终启用',
			'metadataEdit.tags' => '标签',
			'metadataEdit.addTag' => '添加标签',
			'metadataEdit.genre' => '类型',
			'metadataEdit.director' => '导演',
			'metadataEdit.writer' => '编剧',
			'metadataEdit.producer' => '制片人',
			'metadataEdit.country' => '国家',
			'metadataEdit.collection' => '合集',
			'metadataEdit.label' => '标记',
			'metadataEdit.quickTag' => '快速标签…',
			'matchScreen.match' => '匹配…',
			'matchScreen.fixMatch' => '修正匹配…',
			'matchScreen.unmatch' => '取消匹配',
			'matchScreen.unmatchConfirm' => '清除此匹配？在重新匹配前，Plex 会将其视为未匹配。',
			'matchScreen.unmatchSuccess' => '已取消匹配',
			'matchScreen.unmatchFailed' => '无法取消匹配',
			'matchScreen.matchApplied' => '匹配已应用',
			'matchScreen.matchFailed' => '应用匹配失败',
			'matchScreen.titleHint' => '标题',
			'matchScreen.yearHint' => '年份',
			'matchScreen.search' => '搜索',
			'matchScreen.noMatchesFound' => '未找到匹配项',
			'serverTasks.title' => '服务器任务',
			'serverTasks.failedToLoad' => '加载任务失败',
			'serverTasks.noTasks' => '没有正在运行的任务',
			'trakt.title' => 'Trakt',
			'trakt.connected' => '已连接',
			'trakt.connectedAs' => ({required Object username}) => '已以 @${username} 身份连接',
			'trakt.disconnectConfirm' => '断开 Trakt 账户？',
			'trakt.disconnectConfirmBody' => 'Luroka 将停止向 Trakt 发送事件。你可随时重新连接。',
			'trakt.scrobble' => '实时同步播放状态',
			'trakt.scrobbleDescription' => '播放期间将播放、暂停和停止事件发送到 Trakt。',
			'trakt.watchedSync' => '同步已观看状态',
			'trakt.watchedSyncDescription' => '在 Luroka 中将内容标记为已观看时，也会在 Trakt 上标记为已观看。',
			'seerr.title' => 'Seerr',
			'seerr.connectTitle' => '连接 Seerr',
			'seerr.serverUrl' => '服务器 URL',
			'seerr.serverUrlHelper' => '你的 Seerr 实例的地址',
			'seerr.checkServer' => '继续',
			'seerr.signInWithJellyfin' => '使用 Jellyfin 登录',
			'seerr.signInWithEmby' => '使用 Emby 登录',
			'seerr.signInWithLocal' => '使用本地账户',
			'seerr.email' => '邮箱',
			'seerr.noSignInMethods' => '此 Seerr 实例未提供 Luroka 支持的登录方式。',
			'seerr.instance' => '实例',
			'seerr.disconnectConfirm' => '断开 Seerr 连接？',
			'seerr.disconnectConfirmBody' => 'Luroka 将忘记此 Seerr 实例。可随时重新连接。',
			'seerr.request' => '请求',
			'seerr.request4k' => '请求 4K',
			'seerr.seasons' => '季',
			'seerr.allSeasons' => '全部季',
			'seerr.advancedOptions' => '高级',
			'seerr.destinationServer' => '目标服务器',
			'seerr.qualityProfile' => '画质配置',
			'seerr.rootFolder' => '根目录',
			'seerr.languageProfile' => '语言配置',
			'seerr.tags' => '标签',
			'seerr.noTags' => '无标签',
			'seerr.defaultOption' => ({required Object name}) => '${name}（默认）',
			'seerr.animeNote' => '此剧集为动画。',
			'seerr.requestSubmitted' => '请求已提交',
			'seerr.requestFailed' => ({required Object error}) => '请求失败：${error}',
			'seerr.requestsLoadFailed' => '无法加载请求选项',
			'seerr.nothingToRequest' => '所有内容都已可用或已请求。',
			'seerr.statusAvailable' => '可用',
			'seerr.statusPartiallyAvailable' => '部分可用',
			'seerr.statusRequested' => '已请求',
			'seerr.statusProcessing' => '处理中',
			_ => null,
		} ?? switch (path) {
			'seerr.statusBlocklisted' => '已加入屏蔽列表',
			'seerr.couldNotReach' => ({required Object url, required Object error}) => '无法连接到 ${url}：${error}',
			'seerr.noInstanceAtUrl' => ({required Object url, required Object status}) => '${url} 上没有 Seerr 实例（HTTP ${status}）',
			'seerr.behindAuthProxy' => '响应来自需要身份验证的反向代理（SSO 或 HTTP 认证），而非 Seerr。Luroka 无法通过它登录：请让 Seerr 的 /api/v1 路径为此应用绕过代理，或使用可直接访问 Seerr 的地址。',
			'seerr.invalidUrl' => '输入服务器地址，例如 https://seerr.example.com',
			'seerr.quickConnectUnsupported' => '此 Seerr 实例不支持 Quick Connect。需要 Seerr 3.4 或更高版本。',
			'seerr.notInitialized' => '此 Seerr 实例尚未完成首次运行设置',
			'seerr.noPlexTokenForReauth' => '没有可用于重新登录的 Plex 令牌',
			'seerr.noStoredCredentials' => '没有已保存的凭据可用于重新登录',
			'seerr.signInRejected' => '登录被拒绝',
			'seerr.noSessionCookie' => 'Seerr 未签发会话 Cookie',
			'seerr.freshCookieRejected' => 'Seerr 拒绝了新的会话 Cookie',
			'seerr.noUserInformation' => 'Seerr 未返回用户信息',
			'seerr.sessionRejectedAfterReauth' => '重新登录后会话被拒绝',
			'seerr.permissionDenied' => 'Seerr 拒绝了此操作：你的账户不再拥有所需权限',
			'seerr.permissionRevoked' => '你不再拥有请求此内容的权限',
			'services.title' => '服务',
			'services.hubSubtitle' => '同步观看进度并请求新内容。',
			'services.discoverySection' => '发现与请求',
			'services.trackingSection' => '观看记录与列表',
			'services.seerrDescription' => '从 Seerr 服务器查找电影和剧集并提交请求。',
			'services.tmdbDescription' => '发现电影和剧集、海报、评分及详细信息。',
			'services.traktDescription' => '追踪电影和剧集、同步观看状态并管理待看列表。',
			'services.malDescription' => '同步动漫列表和观看进度。',
			'services.anilistDescription' => '追踪动漫并与 AniList 同步观看进度。',
			'services.simklDescription' => '使用 Simkl 追踪电影、剧集和动漫。',
			'services.mdblistDescription' => '连接 MDBList 列表和电影评分。',
			'services.connectionIntro' => ({required Object service}) => '将 ${service} 连接到当前的 Luroka 个人资料。你可以随时在此管理连接及其选项。',
			'services.connectService' => ({required Object service}) => '连接 ${service}',
			'services.seerrConnectDescription' => '连接 Seerr 服务器，即可在 Luroka 中发现并请求电影和剧集。',
			'services.seerrServerStep' => '输入你打开 Seerr 时使用的地址。我们会检查服务器支持哪些登录方式。',
			'services.seerrSignInStep' => '选择服务器支持的登录方式。',
			'services.integrations' => '集成',
			'services.notConnected' => '未连接',
			'services.connectedAs' => ({required Object username}) => '已以 @${username} 身份连接',
			'services.scrobble' => '自动记录进度',
			'services.scrobbleDescription' => '观看完一集或一部电影后更新你的列表。',
			'services.disconnectConfirm' => ({required Object service}) => '断开 ${service} 连接？',
			'services.disconnectConfirmBody' => ({required Object service}) => 'Luroka 将停止更新 ${service}。可随时重新连接。',
			'services.connectFailed' => ({required Object service}) => '无法连接到 ${service}。请重试。',
			'services.names.mal' => 'MyAnimeList',
			'services.names.anilist' => 'AniList',
			'services.names.simkl' => 'Simkl',
			'services.names.seerr' => 'Seerr',
			'services.names.mdblist' => 'MDBList',
			'services.simklReconnect.title' => '重新连接 Simkl',
			'services.simklReconnect.subtitle' => 'Simkl 正在停用此连接使用的登录方法。重新连接会打开 simkl.com 以批准 Luroka — Luroka 永远不会看到您的密码。您的观看历史记录保留在 Simkl 上。',
			'services.deviceCode.title' => ({required Object service}) => '在 ${service} 上激活 Luroka',
			'services.deviceCode.instructions' => '扫描二维码，或访问下方地址并输入此代码：',
			'services.deviceCode.openToActivate' => ({required Object service}) => '打开 ${service} 以激活',
			'services.deviceCode.copyCode' => '复制激活代码',
			'services.deviceCode.waitingForAuthorization' => '等待授权…',
			'services.deviceCode.codeCopied' => '代码已复制',
			'services.oauthProxy.title' => ({required Object service}) => '登录 ${service}',
			'services.oauthProxy.body' => '扫描此二维码，或在任意设备上打开 URL。',
			'services.oauthProxy.openToSignIn' => ({required Object service}) => '打开 ${service} 以登录',
			'services.pendingAuth.copyUrl' => '复制登录 URL',
			'services.pendingAuth.urlCopied' => 'URL 已复制',
			'services.libraryFilter.title' => '媒体库筛选',
			'services.libraryFilter.subtitleAllSyncing' => '同步所有媒体库',
			'services.libraryFilter.subtitleNoneSyncing' => '不同步任何内容',
			'services.libraryFilter.subtitleBlocked' => ({required Object count}) => '已屏蔽 ${count} 个',
			'services.libraryFilter.subtitleAllowed' => ({required Object count}) => '已允许 ${count} 个',
			'services.libraryFilter.mode' => '筛选模式',
			'services.libraryFilter.modeBlacklist' => '黑名单',
			'services.libraryFilter.modeWhitelist' => '白名单',
			'services.libraryFilter.modeHintBlacklist' => '同步下方未勾选的所有媒体库。',
			'services.libraryFilter.modeHintWhitelist' => '仅同步下方勾选的媒体库。',
			'services.libraryFilter.libraries' => '媒体库',
			'services.libraryFilter.noLibraries' => '没有可用的媒体库',
			'offlineRecovery.title' => '您的服务器离线',
			'offlineRecovery.description' => '您的下载仍然可用。当您的服务器恢复时尝试重新连接，或添加另一台服务器。',
			'offlineRecovery.appleTvDescription' => 'Luroka 无法访问您的媒体服务器。尝试在可用时重新连接，或添加另一台服务器以继续观看。',
			'offlineRecovery.kidsDescription' => '我们无法访问您的媒体服务器。尝试重新连接，或向家长寻求帮助。',
			'offlineRecovery.retrying' => '正在连接…',
			'offlineRecovery.addServer' => '添加服务器',
			'releaseUpdates.manualInstructions' => '从 GitHub 下载发布存档，解压 APK，并将其安装在您的 Android 设备上。',
			'releaseUpdates.tvInstructions' => '在手机或电脑上打开此地址，或扫描二维码下载版本。',
			'releaseUpdates.pressBackAgain' => '再次按返回退出播放',
			'profileIntegrations.title' => '打造专属 Luroka',
			'profileIntegrations.description' => '连接您喜欢的服务，记录观看内容并请求新电影和剧集。每个 Luroka 用户资料都有自己的连接。',
			'profileIntegrations.step' => '可选集成',
			'profileIntegrations.examples' => 'Trakt · Simkl · AniList · MyAnimeList · Seerr',
			'profileIntegrations.connect' => '探索集成',
			'profileIntegrations.later' => '稍后设置',
			'profileIntegrations.manage' => '管理集成',
			'profileIntegrations.forProfile' => ({required Object name}) => '${name} 的连接',
			'profileSetupGuide.title' => '打造专属用户资料',
			'profileSetupGuide.description' => '为此设备上的用户资料选择 Luroka 的外观和使用方式。您可以稍后在设置中更改。',
			'profileSetupGuide.appearanceStep' => '1 / 2 · 外观',
			'profileSetupGuide.homeStep' => '2 / 2 · 您的首页',
			'profileSetupGuide.preview' => '预览',
			'profileSetupGuide.previewTitle' => '您的首页',
			'profileSetupGuide.previewPoster' => '海报',
			'profileSetupGuide.posterArtwork' => '仅显示海报',
			'profileSetupGuide.posterWithDetails' => '显示海报详细信息',
			'profileSetupGuide.musicDescription' => '打开电影或剧集详情页面时播放主题音乐（如有）。',
			'profileSetupGuide.moreThemes' => '更多主题',
			'profileSetupGuide.fewerThemes' => '收起主题',
			'profileSetupGuide.spotlightHeading' => '精选区域要显示什么内容？',
			'profileSetupGuide.progressHeading' => '继续观看和接下来观看',
			'profileSetupGuide.skip' => '使用默认设置并开始观看',
			'profileSetupGuide.finish' => '开始观看',
			'profileSetupGuide.back' => '返回',
			'profileSetupGuide.kContinue' => '继续',
			'profileSetupGuide.chooseLater' => '稍后选择媒体库',
			'profileSetupGuide.libraryScope' => '这只会更改此用户资料在 Luroka 中显示的内容，不会更改服务器权限。',
			'profileSetupGuide.createdTitle' => '用户资料已创建',
			'profileSetupGuide.createdDescription' => '新用户资料已准备就绪，使用者可以在首次打开时进行个性化设置。',
			'profileSetupGuide.switchProfile' => '切换到此用户资料',
			'profileSetupGuide.stayHere' => '留在当前用户资料',
			'animeFavorites.filter' => '动漫',
			'animeFavorites.manage' => '管理动漫',
			'animeFavorites.description' => '自动检测使用动漫库名称和可用的动漫标签或 ID。选择图书馆并纠正个人最爱。您的个人资料的选择将保存在此设备上。',
			'animeFavorites.libraries' => '动漫库',
			'animeFavorites.libraryHint' => '名为 Anime 的库会自动识别。选择一个库以更改其分类。',
			'animeFavorites.titles' => '最喜欢的标题',
			'animeFavorites.titleHint' => '选择一个标题将其标记为动漫或更正自动匹配。',
			'animeFavorites.automatic' => '自动',
			'animeFavorites.include' => '动漫',
			'animeFavorites.exclude' => '不是动漫',
			'animeFavorites.automaticIncluded' => '自动·动漫',
			'animeFavorites.automaticExcluded' => '自动 · 非动漫',
			'animeFavorites.noLibraries' => '没有可用的连接库。',
			'animeFavorites.noTitles' => '没有最喜欢的电影或节目。',
			'animeFavorites.empty' => '没有找到最喜欢的动漫。检查您的动漫库或将标题标记为动漫。',
			'animeFavorites.saveFailed' => '无法保存您的动漫设置。请再试一次。',
			'addServer.addMediaBrowserTitle' => ({required Object product}) => '添加 ${product} 服务器',
			'addServer.serverUrls' => '服务器 URL',
			'addServer.serverUrlsHelper' => '可输入多个 URL，并用逗号分隔。',
			'addServer.findServer' => '查找服务器',
			'addServer.searchingLocalMediaBrowserServers' => ({required Object product}) => '正在查找本地 ${product} 服务器…',
			'addServer.localMediaBrowserServers' => ({required Object product}) => '已保存和附近的 ${product} 服务器',
			'addServer.username' => '用户名',
			'addServer.password' => '密码',
			'addServer.signIn' => '登录',
			'addServer.change' => '更改',
			'addServer.required' => '必填',
			'addServer.couldNotReachServer' => ({required Object error}) => '无法连接到服务器：${error}',
			'addServer.signInFailed' => ({required Object error}) => '登录失败：${error}',
			'addServer.quickConnectFailed' => ({required Object error}) => 'Quick Connect 失败：${error}',
			'addServer.addPlexTitle' => '使用 Plex 登录',
			'addServer.pinExpired' => 'PIN 在登录前已过期。请重试。',
			'addServer.failedToRegisterAccount' => ({required Object error}) => '注册账户失败：${error}',
			'addServer.enterMediaBrowserUrlError' => ({required Object product}) => '请输入你的 ${product} 服务器 URL',
			'addServer.addConnectionTitle' => '添加连接',
			'addServer.addConnectionTitleScoped' => ({required Object name}) => '添加到 ${name}',
			'addServer.signInWithPlexCard' => '使用 Plex 登录',
			'addServer.signInWithPlexCardSubtitle' => '授权此设备。共享服务器会被添加。',
			'addServer.signInWithPlexCardSubtitleScoped' => '授权一个 Plex 账户。Plex Home 用户将成为 Luroka 用户资料。',
			'addServer.connectToMediaBrowserCard' => ({required Object product}) => '连接到 ${product}',
			'addServer.connectToMediaBrowserCardSubtitle' => '输入你的服务器 URL、用户名和密码。',
			'addServer.connectToMediaBrowserCardSubtitleScoped' => ({required Object product, required Object name}) => '登录你的 ${product} 服务器。将绑定到 ${name}。',
			'addServer.borrowFromAnotherProfile' => '使用其他用户资料的连接',
			'addServer.borrowFromAnotherProfileSubtitle' => '复用另一个用户资料的连接。受 PIN 保护的用户资料需要输入 PIN。',
			'addServer.invalidCredentials' => '用户名或密码无效',
			'addServer.authResponseNotJson' => '身份验证响应不是有效的 JSON',
			'addServer.authResponseIncomplete' => '服务器返回的登录响应不完整',
			'addServer.quickConnectRejected' => '服务器拒绝了 Quick Connect',
			'addServer.quickConnectNotJson' => 'Quick Connect 响应不是有效的 JSON',
			'addServer.quickConnectMissingFields' => 'Quick Connect 响应中缺少代码或密钥',
			'addServer.quickConnectPollRejected' => '服务器拒绝了 Quick Connect 轮询',
			'addServer.serverTimedOut' => '服务器未及时响应',
			'addServer.responseNotJson' => '服务器响应不是有效的 JSON',
			'addServer.responseMissingIdentity' => ({required Object product}) => '响应中缺少 ID 或服务器名称——这是 ${product} 服务器吗？',
			'addServer.probeFailed' => ({required Object error}) => '无法连接到服务器：${error}',
			'addServer.enterAtLeastOneUrl' => ({required Object product}) => '请输入至少一个 ${product} 服务器 URL',
			'addServer.noReachableServer' => ({required Object product}) => '未找到可连接的 ${product} 服务器',
			'addServer.urlsPointToDifferentServers' => ({required Object product}) => '这些 URL 指向不同的 ${product} 服务器',
			'addServer.urlDoesNotMatchServer' => ({required Object product}) => '此 URL 与 ${product} 服务器不匹配',
			'addServer.redirectUnsupported' => '服务器重定向到了不受支持的 URL',
			'addServer.redirectDifferentHost' => ({required Object product}) => '服务器重定向到了其他主机。请直接输入最终的 ${product} URL。',
			'addServer.redirectInsecure' => '服务器从 HTTPS 重定向到了不安全的 URL',
			'addServer.redirectUnsupportedEnterFinal' => ({required Object product}) => '服务器重定向到了不受支持的 URL。请直接输入最终的 ${product} URL。',
			_ => null,
		};
	}
}
