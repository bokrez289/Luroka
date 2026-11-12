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
class TranslationsKo extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsKo({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ko,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ko>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsKo _root = this; // ignore: unused_field

	@override
	TranslationsKo $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsKo(meta: meta ?? this.$meta);

	// Translations
	@override late final _Translations$mobileLibrary$ko mobileLibrary = _Translations$mobileLibrary$ko._(_root);
	@override late final _Translations$profileStartup$ko profileStartup = _Translations$profileStartup$ko._(_root);
	@override late final _Translations$subtitleUpload$ko subtitleUpload = _Translations$subtitleUpload$ko._(_root);
	@override late final _Translations$personSpotlight$ko personSpotlight = _Translations$personSpotlight$ko._(_root);
	@override late final _Translations$detailExtras$ko detailExtras = _Translations$detailExtras$ko._(_root);
	@override late final _Translations$mobileUi$ko mobileUi = _Translations$mobileUi$ko._(_root);
	@override late final _Translations$family$ko family = _Translations$family$ko._(_root);
	@override late final _Translations$posterDetails$ko posterDetails = _Translations$posterDetails$ko._(_root);
	@override late final _Translations$libraryPolish$ko libraryPolish = _Translations$libraryPolish$ko._(_root);
	@override late final _Translations$showSchedule$ko showSchedule = _Translations$showSchedule$ko._(_root);
	@override late final _Translations$awardsCatalog$ko awardsCatalog = _Translations$awardsCatalog$ko._(_root);
	@override late final _Translations$searchDiscovery$ko searchDiscovery = _Translations$searchDiscovery$ko._(_root);
	@override late final _Translations$lurokaPlayerDesign$ko lurokaPlayerDesign = _Translations$lurokaPlayerDesign$ko._(_root);
	@override late final _Translations$lurokaWorkspace$ko lurokaWorkspace = _Translations$lurokaWorkspace$ko._(_root);
	@override late final _Translations$mobileFixes$ko mobileFixes = _Translations$mobileFixes$ko._(_root);
	@override late final _Translations$downloadsRedesign$ko downloadsRedesign = _Translations$downloadsRedesign$ko._(_root);
	@override late final _Translations$kidsShelf$ko kidsShelf = _Translations$kidsShelf$ko._(_root);
	@override late final _Translations$kidsHome$ko kidsHome = _Translations$kidsHome$ko._(_root);
	@override late final _Translations$tvSettingsV2$ko tvSettingsV2 = _Translations$tvSettingsV2$ko._(_root);
	@override late final _Translations$settingsRedesign$ko settingsRedesign = _Translations$settingsRedesign$ko._(_root);
	@override late final _Translations$onboarding$ko onboarding = _Translations$onboarding$ko._(_root);
	@override late final _Translations$household$ko household = _Translations$household$ko._(_root);
	@override late final _Translations$detailComposition$ko detailComposition = _Translations$detailComposition$ko._(_root);
	@override late final _Translations$kids$ko kids = _Translations$kids$ko._(_root);
	@override late final _Translations$lurokaDiscovery$ko lurokaDiscovery = _Translations$lurokaDiscovery$ko._(_root);
	@override late final _Translations$app$ko app = _Translations$app$ko._(_root);
	@override late final _Translations$appIcon$ko appIcon = _Translations$appIcon$ko._(_root);
	@override late final _Translations$auth$ko auth = _Translations$auth$ko._(_root);
	@override late final _Translations$common$ko common = _Translations$common$ko._(_root);
	@override late final _Translations$tvHints$ko tvHints = _Translations$tvHints$ko._(_root);
	@override late final _Translations$screens$ko screens = _Translations$screens$ko._(_root);
	@override late final _Translations$mediaExtras$ko mediaExtras = _Translations$mediaExtras$ko._(_root);
	@override late final _Translations$update$ko update = _Translations$update$ko._(_root);
	@override late final _Translations$supporter$ko supporter = _Translations$supporter$ko._(_root);
	@override late final _Translations$settings$ko settings = _Translations$settings$ko._(_root);
	@override late final _Translations$themeEditor$ko themeEditor = _Translations$themeEditor$ko._(_root);
	@override late final _Translations$seriesBrowser$ko seriesBrowser = _Translations$seriesBrowser$ko._(_root);
	@override late final _Translations$titlePage$ko titlePage = _Translations$titlePage$ko._(_root);
	@override late final _Translations$tvMenus$ko tvMenus = _Translations$tvMenus$ko._(_root);
	@override late final _Translations$lurokaPlayer$ko lurokaPlayer = _Translations$lurokaPlayer$ko._(_root);
	@override late final _Translations$lurokaSettings$ko lurokaSettings = _Translations$lurokaSettings$ko._(_root);
	@override late final _Translations$playerChrome$ko playerChrome = _Translations$playerChrome$ko._(_root);
	@override late final _Translations$tvLayout$ko tvLayout = _Translations$tvLayout$ko._(_root);
	@override late final _Translations$studios$ko studios = _Translations$studios$ko._(_root);
	@override late final _Translations$dashboard$ko dashboard = _Translations$dashboard$ko._(_root);
	@override late final _Translations$lurokaCatalog$ko lurokaCatalog = _Translations$lurokaCatalog$ko._(_root);
	@override late final _Translations$referenceDetails$ko referenceDetails = _Translations$referenceDetails$ko._(_root);
	@override late final _Translations$lurokaThemes$ko lurokaThemes = _Translations$lurokaThemes$ko._(_root);
	@override late final _Translations$customPerformance$ko customPerformance = _Translations$customPerformance$ko._(_root);
	@override late final _Translations$homeLayout$ko homeLayout = _Translations$homeLayout$ko._(_root);
	@override late final _Translations$screenTime$ko screenTime = _Translations$screenTime$ko._(_root);
	@override late final _Translations$activityStats$ko activityStats = _Translations$activityStats$ko._(_root);
	@override late final _Translations$search$ko search = _Translations$search$ko._(_root);
	@override late final _Translations$hotkeys$ko hotkeys = _Translations$hotkeys$ko._(_root);
	@override late final _Translations$fileInfo$ko fileInfo = _Translations$fileInfo$ko._(_root);
	@override late final _Translations$mediaMenu$ko mediaMenu = _Translations$mediaMenu$ko._(_root);
	@override late final _Translations$rateSheet$ko rateSheet = _Translations$rateSheet$ko._(_root);
	@override late final _Translations$accessibility$ko accessibility = _Translations$accessibility$ko._(_root);
	@override late final _Translations$tooltips$ko tooltips = _Translations$tooltips$ko._(_root);
	@override late final _Translations$audioTracks$ko audioTracks = _Translations$audioTracks$ko._(_root);
	@override late final _Translations$videoControls$ko videoControls = _Translations$videoControls$ko._(_root);
	@override late final _Translations$messages$ko messages = _Translations$messages$ko._(_root);
	@override late final _Translations$sourceLibraries$ko sourceLibraries = _Translations$sourceLibraries$ko._(_root);
	@override late final _Translations$subtitlingStyling$ko subtitlingStyling = _Translations$subtitlingStyling$ko._(_root);
	@override late final _Translations$mpvConfig$ko mpvConfig = _Translations$mpvConfig$ko._(_root);
	@override late final _Translations$dialog$ko dialog = _Translations$dialog$ko._(_root);
	@override late final _Translations$profiles$ko profiles = _Translations$profiles$ko._(_root);
	@override late final _Translations$connections$ko connections = _Translations$connections$ko._(_root);
	@override late final _Translations$serversAccounts$ko serversAccounts = _Translations$serversAccounts$ko._(_root);
	@override late final _Translations$accountPreferences$ko accountPreferences = _Translations$accountPreferences$ko._(_root);
	@override late final _Translations$discover$ko discover = _Translations$discover$ko._(_root);
	@override late final _Translations$errors$ko errors = _Translations$errors$ko._(_root);
	@override late final _Translations$libraries$ko libraries = _Translations$libraries$ko._(_root);
	@override late final _Translations$about$ko about = _Translations$about$ko._(_root);
	@override late final _Translations$serverSelection$ko serverSelection = _Translations$serverSelection$ko._(_root);
	@override late final _Translations$hubDetail$ko hubDetail = _Translations$hubDetail$ko._(_root);
	@override late final _Translations$logs$ko logs = _Translations$logs$ko._(_root);
	@override late final _Translations$startup$ko startup = _Translations$startup$ko._(_root);
	@override late final _Translations$licenses$ko licenses = _Translations$licenses$ko._(_root);
	@override late final _Translations$navigation$ko navigation = _Translations$navigation$ko._(_root);
	@override late final _Translations$explore$ko explore = _Translations$explore$ko._(_root);
	@override late final _Translations$liveTv$ko liveTv = _Translations$liveTv$ko._(_root);
	@override late final _Translations$collections$ko collections = _Translations$collections$ko._(_root);
	@override late final _Translations$playlists$ko playlists = _Translations$playlists$ko._(_root);
	@override late final _Translations$music$ko music = _Translations$music$ko._(_root);
	@override late final _Translations$watchTogether$ko watchTogether = _Translations$watchTogether$ko._(_root);
	@override late final _Translations$downloads$ko downloads = _Translations$downloads$ko._(_root);
	@override late final _Translations$shaders$ko shaders = _Translations$shaders$ko._(_root);
	@override late final _Translations$companionRemote$ko companionRemote = _Translations$companionRemote$ko._(_root);
	@override late final _Translations$videoSettings$ko videoSettings = _Translations$videoSettings$ko._(_root);
	@override late final _Translations$performanceOverlay$ko performanceOverlay = _Translations$performanceOverlay$ko._(_root);
	@override late final _Translations$externalPlayer$ko externalPlayer = _Translations$externalPlayer$ko._(_root);
	@override late final _Translations$metadataEdit$ko metadataEdit = _Translations$metadataEdit$ko._(_root);
	@override late final _Translations$matchScreen$ko matchScreen = _Translations$matchScreen$ko._(_root);
	@override late final _Translations$serverTasks$ko serverTasks = _Translations$serverTasks$ko._(_root);
	@override late final _Translations$trakt$ko trakt = _Translations$trakt$ko._(_root);
	@override late final _Translations$seerr$ko seerr = _Translations$seerr$ko._(_root);
	@override late final _Translations$services$ko services = _Translations$services$ko._(_root);
	@override late final _Translations$offlineRecovery$ko offlineRecovery = _Translations$offlineRecovery$ko._(_root);
	@override late final _Translations$releaseUpdates$ko releaseUpdates = _Translations$releaseUpdates$ko._(_root);
	@override late final _Translations$profileIntegrations$ko profileIntegrations = _Translations$profileIntegrations$ko._(_root);
	@override late final _Translations$profileSetupGuide$ko profileSetupGuide = _Translations$profileSetupGuide$ko._(_root);
	@override late final _Translations$animeFavorites$ko animeFavorites = _Translations$animeFavorites$ko._(_root);
	@override late final _Translations$addServer$ko addServer = _Translations$addServer$ko._(_root);
}

// Path: mobileLibrary
class _Translations$mobileLibrary$ko extends Translations$mobileLibrary$en {
	_Translations$mobileLibrary$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get pickerSubtitle => '탐색할 컬렉션을 선택하세요';
	@override String get searchLibraries => '도서관 검색';
	@override String get noLibraries => '일치하는 라이브러리가 없습니다.';
	@override String get ascending => '오름차순';
	@override String get descending => '내림차순';
	@override String get sort => '정렬';
	@override String unwatchedCount({required Object count}) => '${count} 보지 않은 에피소드';
	@override String get latestEpisode => '최신 에피소드';
}

// Path: profileStartup
class _Translations$profileStartup$ko extends Translations$profileStartup$en {
	_Translations$profileStartup$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get autoLogin => '마지막으로 사용한 프로필 열기';
	@override String get autoLoginHint => 'PIN가 필요하지 않은 경우 마지막 프로필을 자동으로 엽니다.';
	@override String get allowKidsExit => '보호자 PIN 없이 키즈 프로필에서 나가기 허용';
	@override String get allowKidsExitHint => '자녀가 보호자 PIN 없이 다른 프로필로 전환할 수 있습니다. 프로필 PIN은 계속 적용됩니다.';
	@override String get chooseKidsConnection => '다른 계정이나 서버를 선택하세요';
	@override String get chooseKidsConnectionHint => '저장 후 별도의 계정을 연결하거나 다른 프로필에서 연결을 선택하세요.';
}

// Path: subtitleUpload
class _Translations$subtitleUpload$ko extends Translations$subtitleUpload$en {
	_Translations$subtitleUpload$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get chooseFile => '자막 파일 업로드';
	@override String get hint => '위에서 언어를 선택한 다음 SRT, ASS, SSA 또는 VTT 파일을 이 서버에 업로드하세요.';
	@override String get success => '자막이 서버에 업로드되었습니다. 서버가 항목을 새로 고칠 때 나타납니다.';
	@override String get failed => '자막을 업로드할 수 없습니다. 파일 및 서버 권한을 확인하세요.';
}

// Path: personSpotlight
class _Translations$personSpotlight$ko extends Translations$personSpotlight$en {
	_Translations$personSpotlight$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get inYourLibraries => '당신의 도서관에서';
	@override String libraryTitles({required Object n}) => '귀하의 라이브러리 · ${n} 타이틀';
	@override String get readBiography => '전기 읽기';
	@override String get newestFirst => '최신순';
	@override String get oldestFirst => '오래된 것부터';
	@override String get titleAscending => '제목 A~Z';
	@override String get sortTitles => '필모그래피 정렬';
	@override String unwatchedEpisodes({required Object n}) => '${n} 보지 않은 에피소드';
	@override String copies({required Object n}) => '${n} 라이브러리 사본';
	@override String versions({required Object n}) => '${n} 파일 버전';
	@override String get retryTitles => '모든 타이틀을 로드할 수 없습니다. 재시도';
}

// Path: detailExtras
class _Translations$detailExtras$ko extends Translations$detailExtras$en {
	_Translations$detailExtras$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get onlineVideos => '예고편 및 엑스트라';
	@override String get reviews => '리뷰';
	@override String get readReview => '전체 리뷰 읽기';
	@override String directedBy({required Object name}) => '${name} 감독의 작품 더보기';
	@override String get previewUnavailable => '이 미리보기를 재생할 수 없습니다. 대신 원래 앱에서 열 수 있습니다.';
	@override String get openExternally => '원본 영상 열기';
}

// Path: mobileUi
class _Translations$mobileUi$ko extends Translations$mobileUi$en {
	_Translations$mobileUi$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get readMore => '더 읽어보세요';
	@override String get readLess => '간략히 보기';
	@override String get playbackTools => '재생 옵션';
	@override String get streamingQuality => '스트리밍 품질';
	@override String get fileVersions => '파일 버전';
	@override String get qualityAndVersions => '스트리밍 품질 및 파일 버전';
	@override String get hidePlaybackTools => '재생 도구 숨기기';
	@override String remaining({required Object time}) => '${time} 왼쪽';
	@override String endsAt({required Object time}) => '${time}에서 끝납니다.';
	@override String get collection => '당신의 컬렉션';
	@override String get nowPlaying => '지금 재생 중';
	@override String get popularLibrary => '내 라이브러리에서 인기 있는 항목';
	@override String get weeklyLibrary => '이번 주 내 라이브러리 인기 급상승';
}

// Path: family
class _Translations$family$ko extends Translations$family$en {
	_Translations$family$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '프로필 및 가족';
	@override String get yourPeople => '당신의 사람들';
	@override String get manageHint => '이 기기에서 사람과 어린이의 안전, 시청 활동을 관리하세요.';
	@override String get people => '사람';
	@override String peopleCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n,
		one: '${n} 사람',
		other: '${n} 명',
	);
	@override String kidsCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n,
		one: '${n} 자식',
		other: '${n} 키즈',
	);
	@override String get you => '당신';
	@override String get adult => '성인';
	@override String get child => '어린이';
	@override String get adultTeen => '성인 또는 청소년';
	@override String get adultHint => '자체 프로필, 선택적 프로필 PIN 및 자체 서버 연결.';
	@override String get childHint => '연령 제한, 안전한 라이브러리, 어린이에게 적합한 화면을 설정합니다. 보호자 PIN으로 이 설정을 보호합니다.';
	@override String upToAge({required Object age}) => '최대 연령 ${age}';
	@override String get allAges => '모든 연령층';
	@override String get switchProfile => '프로필 전환';
	@override String get switchHint => '누가 보고 있는지 선택하세요. 개인을 관리해도 프로필은 전환되지 않습니다.';
	@override String get addPerson => '사람 추가';
	@override String get addChild => '자녀 추가';
	@override String get addHint => '이 장치에 성인, 청소년 또는 어린이 프로필을 만드세요.';
	@override String get emptyPeople => '함께 시청하는 모든 사람을 위한 공간을 확보하세요.';
	@override String get emptyKids => '아직 어린이 프로필이 없습니다. 연령 제한과 안전한 도서관을 선택하려면 어린이를 추가하세요.';
	@override String get safety => '어린이와 안전';
	@override String get safetyHint => '보호자 PIN, 키즈 프로필 및 연령 제한.';
	@override String get protection => '보호';
	@override String get kidsProfiles => '어린이 프로필';
	@override String get backupHistory => '백업 및 기록';
	@override String get parentPinOn => '보호자 PIN 사용';
	@override String get profilePin => '프로필 PIN';
	@override String get confirmParentPin => '보호자 PIN 확인';
	@override String get parentPinOff => '보호자 PIN 미설정';
	@override String get missingPin => '이 설정을 보호하려면 보호자 PIN을 추가하세요.';
	@override String get hideScope => '이 Luroka 프로필의 계속 시청에서 어린이 활동을 숨기세요. 공유 서버 시청 기록은 변경되지 않습니다.';
	@override String get localScope => '자녀 프로필 및 제한사항은 이 기기에 저장됩니다. 동일한 서버 계정을 사용하는 프로필은 해당 계정의 시청 진행 상황을 계속 공유합니다.';
	@override String get clearHistoryConfirm => '어린이가 시청한 콘텐츠가 계속 시청에 다시 표시되도록 허용하시겠습니까? 어린이 프로필, 제한 사항, 시청 시간 통계 및 서버 시청 기록이 유지됩니다.';
	@override String get editRestrictions => '어린이 제한사항 수정';
	@override String get activity => '활동 보기';
	@override String namedActivity({required Object name}) => '${name}의 시청 활동';
	@override String get thisProfile => '이 프로필';
	@override String get activityScope => '활성 프로필에 대해 이 장치에서 Luroka에 의해 기록된 재생 시간입니다. 이는 통계이지 제한이나 전체 서버 기록을 보는 것이 아닙니다.';
	@override String get activityUnavailable => '이 프로필에서는 아직 활동을 볼 수 없습니다.';
	@override String get finished => '완료';
}

// Path: posterDetails
class _Translations$posterDetails$ko extends Translations$posterDetails$en {
	_Translations$posterDetails$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get showThemeMusic => '테마 음악 재생';
	@override String get showThemeMusicDescription => '서버에서 사용 가능한 경우 세부정보 페이지가 열려 있는 동안 영화나 프로그램의 테마를 재생하세요.';
	@override String get catalogEpisodeInfo => '카탈로그 카드에 에피소드 수 및 실행 시간 표시';
	@override String get catalogEpisodeInfoDescription => '둘러보기 포스터에 에피소드 수와 평균 지속 시간을 표시합니다.';
	@override String get title => '포스터 세부정보';
	@override String get description => 'Studio, 검색, 둘러보기 및 라이브러리 전반의 포스터 아래에 제목, 연도 및 IMDb 등급을 표시합니다. 누락된 IMDb 등급은 숨겨져 있습니다. 예술작품 전용 포스터의 경우 끄세요.';
}

// Path: libraryPolish
class _Translations$libraryPolish$ko extends Translations$libraryPolish$en {
	_Translations$libraryPolish$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get compactTvNavigation => '컴팩트 라이브러리 탐색';
	@override String get compactTvNavigationDescription => '슬라이드 아웃 메뉴에 라이브러리 섹션을 표시하고 옵션을 탐색하여 포스터를 위한 더 많은 공간을 확보합니다.';
	@override String get openLibraryMenu => '라이브러리 메뉴 열기';
	@override String get posterDetails => '포스터 세부정보';
	@override String get showPosterDetails => '포스터 세부정보 표시 · 이름, 연도 및 IMDb';
	@override String get hidePosterDetails => '포스터 세부정보 숨기기';
	@override String get overview => '개요';
	@override String get refreshing => '상쾌한 도서관…';
	@override String get serverCollections => '이 서버의 모든 컬렉션';
	@override String get serverPlaylists => '이 서버의 모든 비디오 재생 목록';
	@override String get libraryCollections => '이 도서관의 컬렉션';
	@override String get searchCollections => '컬렉션 검색';
	@override String get searchPlaylists => '재생목록 검색';
	@override String get searchHint => '이름으로 검색';
	@override String get titleAscending => '제목 A~Z';
	@override String get titleDescending => '타이틀 Z–A';
	@override String get clearFilters => '필터 지우기';
	@override String get playlistEmptyTitle => '원하는 순서대로 영화 감상';
	@override String get playlistEmptyHint => '타이틀의 더보기 메뉴를 열고 재생 목록에 추가를 선택하여 첫 번째 재생 목록을 만듭니다.';
	@override String get noMatches => '일치하는 이름이 없습니다.';
	@override String get indexing => '전체 카탈로그를 검색하는 중…';
}

// Path: showSchedule
class _Translations$showSchedule$ko extends Translations$showSchedule$en {
	_Translations$showSchedule$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get today => '오늘';
	@override String get tomorrow => '내일';
	@override String get latestUpcoming => '최신 및 향후 예정';
	@override String get latestEpisode => '최신 에피소드';
	@override String get upcoming => '예정';
	@override String get inLibrary => '라이브러리에 있음';
	@override String get notInLibrary => '라이브러리에 없음';
	@override String get notYetAired => '아직 방영되지 않음';
	@override String episode({required Object number}) => '에피소드 ${number}';
	@override String get caughtUp => '다들 따라잡았어';
	@override String get finished => '이 시리즈를 마쳤습니다.';
	@override String nextAirs({required Object date}) => '다음 에피소드는 ${date}를 방송합니다.';
	@override String get watchBeginning => '처음부터 시청';
	@override String get replay => '재생';
	@override String get playNext => '다음 플레이';
}

// Path: awardsCatalog
class _Translations$awardsCatalog$ko extends Translations$awardsCatalog$en {
	_Translations$awardsCatalog$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get awards => '수상 내역';
	@override String get customize => '사용자 정의';
	@override String get chooseShelves => '디스커버 맞춤설정';
	@override String get shelvesDescription => 'Discover에서 원하는 행을 선택하세요. 수상 행에는 도서관의 우승자가 표시됩니다. 이 프로필에 대한 선택 사항이 저장되었습니다.';
	@override String get restoreShelves => '기본값 복원';
	@override String get charts => 'IMDb 차트';
	@override String get generalShelves => '인기 및 트렌드';
	@override String get saveShelvesFailed => '둘러보기 선택사항을 저장할 수 없습니다. 다시 시도해 주세요.';
	@override String get comedyActress => '주연 · 코미디';
	@override String get leadDramaActor => '주연 · 드라마';
	@override String get leadDramaActress => '주연 · 드라마';
	@override String get comedySupportingActor => '남우조연상 · 코미디';
	@override String get comedySupportingActress => '여우조연상 · 코미디';
	@override String get leadingPerformance => '은곰상 · 최우수 주연상';
	@override String get globesComedySeries => '최우수 TV 시리즈 · 뮤지컬 또는 코미디';
	@override String get limitedSupportingActor => '남우조연상 · 한정 시리즈 또는 영화';
	@override String get limitedSupportingActress => '여우조연상 · 한정 시리즈 또는 영화';
	@override String get berlinDocumentary => '베를린영화제 다큐멘터리상';
	@override String get title => '수상 및 축제';
	@override String get chooseCategory => '수상 카테고리를 선택하세요';
	@override String get winners => '우승자';
	@override String get nominees => '후보자';
	@override String get releaseDecade => '출시 10년';
	@override String get allYears => '모든 연도';
	@override String get loading => '수상 경력 로드 중…';
	@override String get matching => '도서관에서 이 책을 찾는 중...';
	@override String get unavailable => '지금은 어워드 데이터를 사용할 수 없습니다. 다시 시도해 보세요.';
	@override String get empty => '이 카테고리에 대해 표시되는 라이브러리에 일치하는 제목이 없습니다.';
	@override String get coverage => '멤버십은 Wikidata에서 제공되며 불완전할 수 있습니다. 배우 및 감독 카테고리는 자신이 수상한 영화나 쇼를 보여줍니다. 연도는 행사가 아닌 타이틀 출시를 의미합니다.';
	@override String get picture => '최우수 작품';
	@override String get film => '최우수 영화';
	@override String get international => '최고의 국제 기능';
	@override String get internationalFilm => '최우수 국제 영화';
	@override String get nonEnglishFilm => '영어가 아닌 최고의 영화';
	@override String get animated => '최고의 애니메이션 기능';
	@override String get animatedFilm => '최우수 애니메이션 영화';
	@override String get documentary => '최고의 다큐멘터리 장편';
	@override String get director => '최우수 감독';
	@override String get actor => '최우수 남우주연상';
	@override String get actress => '최우수 여배우';
	@override String get supportingActor => '최우수 조연배우';
	@override String get supportingActress => '최우수 조연배우';
	@override String get originalScreenplay => '최우수 오리지널 각본';
	@override String get adaptedScreenplay => '최우수 각색 각본';
	@override String get screenplay => '최우수 각본';
	@override String get cinematography => '최우수 촬영상';
	@override String get editing => '최고의 편집';
	@override String get score => '최고의 오리지널 스코어';
	@override String get song => '최우수 오리지널 송';
	@override String get sound => '최고의 사운드';
	@override String get effects => '최고의 시각 효과';
	@override String get productionDesign => '최고의 프로덕션 디자인';
	@override String get costume => '최고의 의상 디자인';
	@override String get makeup => '최고의 메이크업과 헤어스타일링';
	@override String get dramaSeries => '뛰어난 드라마 시리즈';
	@override String get comedySeries => '뛰어난 코미디 시리즈';
	@override String get limitedSeries => '뛰어난 한정 시리즈';
	@override String get animatedProgram => '뛰어난 애니메이션 프로그램';
	@override String get comedyActor => '주연 · 코미디';
	@override String get limitedActor => '주연 · 한정 시리즈 또는 영화';
	@override String get limitedActress => '주연 · 한정 시리즈 또는 영화';
	@override String get limitedDirecting => '연출 · 한정 시리즈 또는 영화';
	@override String get britishFilm => '최우수 영국 영화';
	@override String get goldenBear => '황금곰';
	@override String get grandJury => '심사위원 대상';
	@override String get jury => '심사위원상';
	@override String get teddy => '테디상';
	@override String get goldenLion => '황금사자';
	@override String get volpiActor => '볼피컵 · 남우주연상';
	@override String get volpiActress => '볼피컵 · 여우주연상';
	@override String get queerLion => '퀴어 라이온';
	@override String get dramaFilm => '최우수 영화 · 드라마';
	@override String get comedyFilm => '최우수 영화 · 뮤지컬 또는 코미디';
	@override String get dramaActor => '남우주연상 · 드라마';
	@override String get dramaActress => '최우수 여우주연상 · 드라마';
	@override String get usDramatic => '미국 드라마 대상 심사위원상';
	@override String get documentaryJury => '다큐멘터리 심사위원상';
	@override String get worldCinema => '월드시네마 대상 심사위원상';
	@override String get dramaticAudience => '미국 드라마 관객상';
	@override String get usDirecting => '미국 감독상';
	@override String get peopleChoice => '피플스 초이스 상';
	@override String get canadianFilm => '최고의 캐나다 영화';
	@override String get firstFeature => '최고의 첫 번째 기능';
	@override String get cassavetes => '존 카사베츠상';
	@override String get scienceFiction => '최고의 SF 영화';
	@override String get fantasy => '최우수 판타지 영화';
	@override String get horror => '최고의 공포영화';
	@override String get action => '최우수 액션 또는 어드벤처 영화';
	@override String get thriller => '최우수 스릴러 영화';
}

// Path: searchDiscovery
class _Translations$searchDiscovery$ko extends Translations$searchDiscovery$en {
	_Translations$searchDiscovery$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get suggestions => '볼만한 것';
	@override String get collections => '수상 및 컬렉션';
	@override String get collectionsHint => '라이브러리에서 수상작 및 선별된 차트';
	@override String get all => '모든 발견';
	@override String get awards => '수상 경력 및 차트';
}

// Path: lurokaPlayerDesign
class _Translations$lurokaPlayerDesign$ko extends Translations$lurokaPlayerDesign$en {
	_Translations$lurokaPlayerDesign$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get seeking => '미리보기 탐색';
	@override String get keepWatching => '계속 시청하세요';
	@override String get upNext => '다음';
	@override String playingIn({required Object seconds}) => '${seconds}에서 재생 중';
}

// Path: lurokaWorkspace
class _Translations$lurokaWorkspace$ko extends Translations$lurokaWorkspace$en {
	_Translations$lurokaWorkspace$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get everyday => '매일';
	@override String get homeDiscovery => '홈 & 디스커버리';
	@override String get librariesAccounts => '라이브러리 및 계정';
	@override String get profilesFamily => '프로필 및 가족';
	@override String get thisDevice => '이 장치';
	@override String get thisProfile => '이 프로필';
	@override String get searchSettings => '검색 설정';
	@override String get savedAutomatically => '변경 사항은 자동으로 저장됩니다. 매일 및 고급만 표시되는 컨트롤을 변경합니다.';
	@override String get audioSubtitles => '오디오 및 자막';
	@override String get audioDescription => '사운드 출력, 볼륨 및 자막 표시. 기본 언어는 연결 시 계정 기본 설정을 사용하여 서버 계정별로 설정됩니다.';
	@override String get pictureSound => '영상 및 사운드';
	@override String get pictureDescription => '이 장치에 대한 프레임 속도 일치, 해상도, HDR 및 Dolby Vision 조정.';
	@override String get engineDescription => '플레이어 엔진, 디코딩, 사용자 정의 구성 및 고급 재생 규칙.';
	@override String get networkStreaming => '네트워크 및 스트리밍';
	@override String get networkDescription => '스트리밍 품질, 직접 재생 코덱 기본 설정 및 대역폭 선택.';
	@override String get homeOptions => '홈 옵션';
	@override String get refreshHome => '새로 고침 홈 & 인기 상품';
	@override String get customizeHome => '홈 사용자 정의';
	@override String get spotlight => '홈 스포트라이트';
	@override String get rotateSpotlight => '추천 타이틀 자동 회전';
	@override String get rotateDescription => '홈이 유휴 상태인 동안 회전합니다. 상호작용이 회전을 일시 중지합니다. 서가를 탐색하거나 페이지를 열거나 앱을 종료하면 완전히 일시중지됩니다.';
	@override String get rotationInterval => '추천 타이틀 사이의 시간';
}

// Path: mobileFixes
class _Translations$mobileFixes$ko extends Translations$mobileFixes$en {
	_Translations$mobileFixes$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get connectionRecoveryHint => '서버를 사용할 수 없나요? 계정을 관리하거나 다른 서버에 연결하세요.';
}

// Path: downloadsRedesign
class _Translations$downloadsRedesign$ko extends Translations$downloadsRedesign$en {
	_Translations$downloadsRedesign$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get shelfSize => '선반당 품목';
	@override String get shelfSizeHint => '계속 시청 및 추천 서가에 16개, 32개 또는 48개의 항목을 표시합니다. 서버는 사용 가능한 타이틀을 더 적게 반환할 수 있습니다.';
	@override String get subtitle => '당신이 가장 좋아하는 것이 여행을 떠날 준비가 되었습니다.';
	@override String get transfers => '환승';
	@override String get ready => '오프라인 준비됨';
	@override String get active => '다운로드 중';
	@override String get waiting => '대기 중';
	@override String get downloaded => '다운로드됨';
	@override String get speed => '다운로드 속도';
	@override String get notificationProgress => '{progress} · {networkSpeed} · {timeRemaining} 남음';
}

// Path: kidsShelf
class _Translations$kidsShelf$ko extends Translations$kidsShelf$en {
	_Translations$kidsShelf$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get movieShelf => '영화 시간';
	@override String get showShelf => '다음 공연을 찾아보세요';
	@override String get aurora => '오로라 — 딥 틸 & 라임';
	@override String get marquee => 'Marquee — 벨벳 & 골드';
	@override String get electric => '일렉트릭 — 인디고 & 아이스';
	@override String get midnight => '미드나잇 — 스틸 & 앰버';
	@override String get yourShelf => '내 영화 섹션';
	@override String get all => '모든 것';
	@override String get pickSomething => '무엇을 보고 싶나요?';
}

// Path: kidsHome
class _Translations$kidsHome$ko extends Translations$kidsHome$en {
	_Translations$kidsHome$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get everything => '당신을 위해';
	@override String get keepWatching => '계속 시청하세요';
	@override String get emptyFilter => '아직 아무것도 없습니다. 당신을 위해 시도하거나 어른에게 당신이 좋아하는 것을 추가하도록 요청하십시오.';
}

// Path: tvSettingsV2
class _Translations$tvSettingsV2$ko extends Translations$tvSettingsV2$en {
	_Translations$tvSettingsV2$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get moreThemes => '더 많은 테마 및 맞춤 색상';
	@override String get moreThemesHint => '사용 가능한 모든 사전 설정 및 사용자 정의 테마 옵션을 엽니다.';
	@override String get previewLive => '실시간 미리보기';
	@override String get previewIllustration => '미리보기 예시';
	@override String previewShelfCount({required Object count}) => '선반당 최대 ${count} 품목';
	@override String get simple => '단순';
	@override String get homeNavigation => '홈 & 내비게이션';
	@override String get libraryCards => '도서관 및 카드';
	@override String get accountsLibraries => '계정 및 라이브러리';
	@override String get profilesFamily => '프로필 및 가족';
	@override String get aboutSupport => '정보 및 지원';
	@override String get playback => '재생';
	@override String get homeHint => '홈과 탐색에 표시되는 내용을 선택하세요.';
	@override String get libraryHint => '포스터 크기, 레이블, 시청 표시기를 조정합니다.';
	@override String get advancedPlayback => '플레이어 엔진 및 스트리밍';
	@override String get advancedPlaybackHint => '플레이어, 비디오 출력, 스트리밍 및 고급 재생 선택.';
	@override String get advancedTools => '진단 및 백업';
	@override String get advancedToolsHint => '로그, 문제 해결, 설정 백업 및 재설정.';
	@override String get themePreview => '테마 미리보기';
	@override String get libraryPreview => '라이브러리 미리보기';
	@override String get homePreview => '홈 미리보기';
	@override String get subtitlePreview => '자막 미리보기';
	@override String get subtitleSample => '자막은 다음과 같습니다.';
	@override String get previewPlaceholder => '귀하의 작품이 여기에 표시됩니다.';
	@override String get posterSize => '포스터 크기';
	@override String get serverRecommendations => '서버에서 추천하는 홈';
	@override String get tvLayout => 'TV 레이아웃 사용';
	@override String get hardwareDecode => '하드웨어 비디오 디코딩 사용';
	@override String get serverNames => '홈 행에 서버 이름 표시';
	@override String get settingsSaved => '변경 사항은 자동으로 저장됩니다.';
	@override String get morePlayback => '고급 재생';
	@override String get screenDisplay => '영상 및 사운드';
	@override String get engine => '플레이어 엔진';
	@override String get network => '스트리밍 및 네트워크';
	@override String get performance => '성능';
	@override String get simpleAudio => '언어 및 자막 표시';
}

// Path: settingsRedesign
class _Translations$settingsRedesign$ko extends Translations$settingsRedesign$en {
	_Translations$settingsRedesign$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get themeEffects => '테마 및 효과';
	@override String get libraryLayout => '라이브러리 레이아웃';
	@override String get posterInformation => '포스터 정보';
	@override String get libraryBehavior => '라이브러리 동작';
	@override String get appearanceHint => 'Luroka의 모양, 레이아웃 및 동작을 사용자 정의하세요.';
	@override String get livePreview => '실시간 미리보기';
	@override String get previewHint => '현재 설정으로 라이브러리가 어떻게 보이는지 확인하세요.';
	@override String get showLiveTv => '라이브 TV 보기';
	@override String get showLiveTvHint => '연결된 서버가 지원하는 경우 탐색에 라이브 TV를 표시합니다. 이는 서버를 변경하지 않습니다.';
	@override String get aboutTagline => '귀하의 미디어. 당신의 공간.';
	@override String get aboutDescription => 'Luroka는 Plex, Jellyfin 및 Emby 라이브러리를 휴대폰, TV 및 데스크톱용 시네마틱 플레이어에 함께 제공합니다.';
	@override String get aboutFeatures => '라이브러리를 탐색하고, 영화와 프로그램을 다시 시작하고, 프로필을 개인화하고, 다운로드를 즐기고, 함께 시청하세요. 라이브 TV는 호환되는 서버에서 사용할 수 있습니다.';
	@override String get services => '당신의 세계를 연결하세요';
	@override String get updateSource => '소스 업데이트';
	@override String get updateSourceHint => 'Luroka 릴리스 피드의 HTTPS 주소입니다. 대리점은 앱에서 이를 사전 구성할 수 있습니다.';
	@override String get updateNotConfigured => '이 빌드에는 자동 업데이트가 구성되어 있지 않습니다.';
	@override String get downloadInstall => '다운로드 및 설치';
	@override String get installUpdate => '업데이트 설치';
	@override String get downloading => '업데이트 다운로드 중…';
	@override String get downloadFailed => '업데이트를 다운로드하거나 확인할 수 없습니다. 다시 시도해 주세요.';
	@override String get installPermission => 'Luroka가 Android 설정에서 업데이트를 설치하도록 허용한 다음 돌아가서 업데이트 설치를 선택합니다.';
	@override String get updateReady => '다운로드가 확인되었습니다. 설치 준비가 완료되었습니다.';
	@override String get releaseNotes => '릴리스 노트';
	@override String get invalidFeed => '유효한 HTTPS 업데이트 피드 주소를 입력하세요.';
}

// Path: onboarding
class _Translations$onboarding$ko extends Translations$onboarding$en {
	_Translations$onboarding$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get connectStep => '01 · 연결';
	@override String get connectTitle => 'Luroka에 오신 것을 환영합니다.';
	@override String get connectHint => '라이브러리를 여기로 가져오려면 로그인하세요.';
	@override String get serverAddressHint => '서버 주소를 입력하거나 네트워크에 있는 서버를 선택하세요.';
	@override String get serverSignInHint => '서버 사용자 이름과 비밀번호를 사용하여 라이브러리를 연결하세요.';
	@override String get serverAddressTitle => '서버 주소';
	@override String get serverAccountTitle => '귀하의 서버 계정';
	@override String get plexHomeTitle => 'Plex 홈 사용자를 선택하세요';
	@override String get plexHomeHint => '사용하려는 라이브러리가 있는 Plex 사용자를 선택하십시오. 다음에는 Luroka 프로필을 설정합니다.';
	@override String get chooseService => '서비스를 선택하세요';
	@override String get profileStep => '02 · 귀하의 프로필';
	@override String get profileTitle => '집처럼 편안하게 지내세요.';
	@override String get profileHint => 'Luroka 프로필의 이름과 아바타를 선택하세요. 연결된 계정은 동일하게 유지됩니다.';
	@override String get readyStep => '03 · 시청 준비 완료';
	@override String get readyTitle => '조금 더 당신.';
	@override String get readyHint => '귀하의 서비스를 하나로 통합하거나 다른 사람을 위한 공간을 확보하십시오. 나중에 언제든지 이 작업을 수행할 수 있습니다.';
	@override String get addService => '다른 서비스 연결';
	@override String get editProfile => '이름 및 아바타 편집';
	@override String get connected => '연결 및 준비됨';
	@override String get backToProfile => '프로필로 돌아가기';
	@override String get showOtherPlexHome => '다른 Plex 홈 회원 표시';
	@override String get showOtherPlexHomeHint => '기본적으로 꺼져 있습니다. 사용한 Luroka 프로필과 Plex 홈 구성원은 계속 표시됩니다. 다른 사람을 선택하려면 켜세요.';
}

// Path: household
class _Translations$household$ko extends Translations$household$en {
	_Translations$household$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '귀하의 Luroka 가구';
	@override String get welcome => 'Luroka를 당신의 것으로 만드세요';
	@override String get welcomeHint => '첫 번째 계정이 연결되었습니다. 시청을 시작하기 전에 프로필을 개인화하거나 다른 사람을 추가하세요.';
	@override String get profiles => '프로필 및 가족';
	@override String get manageHint => '사람을 추가하고, 사진을 변경하고, 각 프로필의 연결을 관리하세요.';
	@override String get addProfile => 'Luroka 프로필 추가';
	@override String get addHint => '각 사람은 자신의 Plex, Emby 또는 Jellyfin 로그인을 연결할 수 있습니다. 프로필에 추가된 연결만 표시됩니다.';
	@override String get sharedHint => '다른 프로필의 연결을 재사용하면 해당 서버 사용자의 시청 상태 및 재생 진행 상황이 공유됩니다. 독립적인 시청 기록을 위해서는 별도의 로그인을 선택하세요.';
	@override String get personalise => '프로필 개인화';
	@override String get changePicture => '프로필 사진 변경';
	@override String get pictureHint => 'Luroka 아바타나 사진을 선택하세요. 이렇게 하면 이 장치의 사진만 변경됩니다. 귀하의 서버 계정은 그대로 유지됩니다.';
	@override String get serverPicture => '서버 사진/이니셜 사용';
	@override String get choosePhoto => '사진을 선택하세요';
	@override String get photoHint => 'JPEG, PNG 또는 기타 지원되는 이미지(최대 10MB) 사진의 크기가 조정되어 이 기기에 저장됩니다.';
	@override String get pictureSaved => '프로필 사진이 업데이트되었습니다.';
	@override String get pictureFailed => '프로필 사진을 업데이트할 수 없습니다. 최대 10MB까지 지원되는 이미지를 사용해 보세요.';
	@override String get saveFailed => '프로필 설정을 저장할 수 없습니다. 다시 시도해 주세요.';
	@override String get startWatching => '시청 시작';
	@override String get manageProfiles => '프로필 관리 또는 전환';
	@override String get addLater => '나중에 설정 → 프로필 및 가족에서 더 많은 사람을 추가할 수 있습니다.';
	@override String get connectionRequired => '이 프로필 설정을 완료하려면 서버 연결을 추가하세요.';
	@override String get mountain => '산';
	@override String get orbit => '탐험가';
	@override String get waves => '바다';
	@override String get blossom => '블라썸';
	@override String get lightning => '번개';
	@override String get moon => '달';
	@override String get avatarGallery => '아바타를 선택하세요';
	@override String get avatarIllustrationHint => '원본 일러스트 초상화, 어린이 및 동물 친구들';
	@override String get avatarPortraitSunrise => '일출 초상화';
	@override String get avatarPortraitMeadow => '초원 초상화';
	@override String get avatarPortraitBerry => '베리 초상화';
	@override String get avatarPortraitGolden => '황금 초상화';
	@override String get avatarPortraitIndigo => '인디고 초상화';
	@override String get avatarPortraitOcean => '바다 초상화';
	@override String get avatarKidArtist => '작은 예술가';
	@override String get avatarKidSkater => '작은 스케이터';
	@override String get avatarCat => '호기심 많은 고양이';
	@override String get avatarDog => '행복한 개';
	@override String get avatarPanda => '팬더';
	@override String get avatarOwl => '올빼미';
	@override String get avatarFox => '여우';
	@override String get avatarDinosaur => '공룡';
	@override String get avatarRobot => '로봇';
}

// Path: detailComposition
class _Translations$detailComposition$ko extends Translations$detailComposition$en {
	_Translations$detailComposition$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get startOver => '다시 시작하세요';
	@override String get seriesCast => '시리즈 출연진';
	@override String get streamingQuality => '스트리밍 품질…';
	@override String get trailer => '예고편';
	@override String get manageMedia => '미디어 관리…';
	@override String get playbackOptions => '재생 옵션…';
	@override String get moreActions => '추가 작업';
	@override String get watched => '시청함';
	@override String get unwatched => '시청하지 않음';
	@override String endsAt({required Object time}) => '${time}에서 끝납니다.';
	@override String get automatic => '자동';
	@override String get usePreferences => '재생 기본 설정 사용';
	@override String get mediaInformation => '미디어 정보';
	@override String get fullFileInformation => '전체 파일 정보';
	@override String get castAndCrew => '출연진 및 제작진';
}

// Path: kids
class _Translations$kids$ko extends Translations$kids$en {
	_Translations$kids$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get timeLimits => '화면 시간 제한';
	@override String get dailyWatchLimit => '일일 시청 시간';
	@override String get dailyWatchLimitHint => '매일 이 장치에서 비디오 재생을 제한합니다.';
	@override String get noTimeLimit => '제한 없음';
	@override String minutesLimit({required Object minutes}) => '${minutes}분';
	@override String get bedtime => '취침 시간';
	@override String get bedtimeHint => '이 시간에 프로필을 사용하려면 부모 PIN이 필요합니다.';
	@override String get bedtimeStart => '취침 시간 시작';
	@override String get bedtimeEnd => '취침 시간 종료';
	@override String get timeLimitReached => '오늘의 시청 시간이 끝났습니다.';
	@override String get bedtimeReached => '취침시간이다';
	@override String get timeLimitParentHint => '계속 시청하려면 부모님께 PIN을 입력해 달라고 요청하세요.';
	@override String get parentUnlock => '부모 잠금 해제';
	@override String get backupProfile => '자녀 프로필 백업';
	@override String get backupExplain => '이 프로필의 저장된 이름, 캐릭터, 제한 사항, 외모 및 로컬 보기 제외를 백업하세요. 상위 PIN, 서버 로그인, 다운로드 및 서버 재생 진행 상황은 포함되지 않습니다.';
	@override String get saveBackupFile => '백업 파일 저장';
	@override String get copyBackup => '백업 텍스트 복사';
	@override String backupSaved({required Object path}) => '${path}에 저장된 어린이 프로필 백업';
	@override String get backupCopied => '자녀 프로필 백업이 복사되었습니다.';
	@override String get backupFailed => '자녀 프로필 백업을 저장할 수 없습니다. 다시 시도해 주세요.';
	@override String get restoreProfile => '자녀 프로필 복원';
	@override String get chooseBackupFile => '백업 파일 선택';
	@override String get pasteBackup => '백업 텍스트 붙여넣기';
	@override String get backupText => '키즈 프로필 백업 JSON';
	@override String get pasteFromClipboard => '클립보드에서 붙여넣기';
	@override String get restoreReview => '복원된 설정을 검토한 후 저장하여 현재 서버 연결을 사용하여 새 자녀 프로필을 만드세요. 기존 프로필은 덮어쓰이지 않습니다. 라이브러리 선택 및 보기 제외는 동일한 서버/라이브러리 ID와만 일치합니다.';
	@override String get restoreInvalid => '지원되는 유효한 자녀 프로필 백업이 아닙니다. Luroka 어린이 프로필 JSON 백업을 선택하세요.';
	@override String get deleteProfile => '자녀 프로필 삭제';
	@override String deleteExplain({required Object name}) => 'Luroka에서 ${name}를 삭제하시겠습니까? 로컬 설정, 다운로드 및 시청 제외가 제거됩니다. 귀하의 서버 계정과 서버측 기록은 그대로 유지됩니다. 나중에 프로필을 복원하려면 먼저 백업을 만드세요.';
	@override String get profileDeleted => '자녀 프로필이 삭제되었습니다.';
	@override String get allowedLibraries => '허용된 라이브러리';
	@override String get unavailableLibrary => '이전에 선택한 라이브러리(현재 사용할 수 없음)';
	@override String get allLibraries => '연결된 모든 영화 및 TV 라이브러리 허용';
	@override String get librariesExplain => '특정 라이브러리를 선택하려면 이 기능을 끄십시오. 선택한 라이브러리 내에는 연령 및 애니메이션 규칙이 계속 적용됩니다. 선택 항목을 사용할 때 새 라이브러리가 자동으로 추가되지 않습니다.';
	@override String get librariesUnavailable => '영화 또는 TV 라이브러리가 로드되지 않습니다. 서버에 연결하고 라이브러리를 연 다음 여기로 돌아와서 선택하세요.';
	@override String get noLibrariesSelected => '선택한 도서관이 없습니다. 이 어린이에게는 어떤 책도 표시되지 않습니다.';
	@override String get animationOnly => '애니메이션만';
	@override String get animationExplain => '서버에서 애니메이션 장르로 태그된 제목만 표시합니다. 이는 연령 제한을 대체하지 않습니다. 애니메이션은 성인용으로 제작될 수도 있습니다. 누락된 장르 메타데이터가 숨겨져 있습니다.';
	@override String get allowUnrated => '연령 등급이 없는 타이틀 허용';
	@override String get unratedExplain => '기본적으로 꺼져 있습니다. 활성화되면 라이브러리 및 애니메이션 규칙에서 허용하는 경우 누락되거나 등급이 지정되지 않은 분류가 나타날 수 있습니다. 연령별로 적합성을 확인할 수 없습니다. 연령 제한을 초과하는 것으로 알려진 등급과 인식할 수 없는 분류는 숨겨진 상태로 유지됩니다.';
	@override String get whoIsWatching => '누가 보고 있나요?';
	@override String get chooseAdventure => '큰 모험이 가득한 작은 세계.';
	@override String get chooseProfile => '당신의 공간을 선택하세요. 영화의 밤을 만들어 보세요.';
	@override String welcome({required Object name}) => '안녕하세요, ${name}님!';
	@override String welcomeOlder({required Object name}) => '다음 멋진 이야기, ${name}.';
	@override String get homeSubtitle => '큰 모험. 작은 발견. 모두 당신을 위한 것입니다.';
	@override String get homeSubtitleOlder => '새로운 마음에 드는 것을 찾아보세요. 중단한 부분부터 다시 시작하세요.';
	@override String get featured => '오늘의 대모험';
	@override String get featuredOlder => '스포트라이트 속에서';
	@override String get moreInfo => '추가 정보';
	@override String get movies => '영화';
	@override String get shows => '쇼';
	@override String get profiles => '프로필';
	@override String get adultBadge => '어른들';
	@override String get avatar => '당신의 캐릭터를 선택하세요';
	@override String get avatarExplorer => '우주 탐험가';
	@override String get avatarFox => '여우';
	@override String get avatarDinosaur => '공룡';
	@override String get avatarRobot => '로봇';
	@override String get avatarChildArtist => '작은 예술가';
	@override String get avatarChildSkater => '작은 스케이터';
	@override String get avatarSunrisePerson => '일출 초상화';
	@override String get avatarOceanPerson => '바다 초상화';
	@override String get avatarCat => '호기심 많은 고양이';
	@override String get avatarDog => '행복한 개';
	@override String get avatarPanda => '팬더';
	@override String get avatarOwl => '올빼미';
	@override String get avatarBear => '곰';
	@override String get continueAdventure => '모험을 계속하세요';
	@override String get freshStories => '발견할 수 있는 새로운 이야기';
	@override String get yourMovies => '영화 시간에 가장 좋아하는 것';
	@override String get yourShows => '에피소드 하나 더';
	@override String get emptyHint => '서버에 허용된 연령 분류가 있는 타이틀이 있으면 여기에 새로운 모험이 나타납니다.';
	@override String get title => 'Luroka 키즈';
	@override String get addProfile => '어린이 프로필 추가';
	@override String get parentalControls => '자녀 보호';
	@override String get parentPin => '보호자 PIN';
	@override String get setParentPin => '보호자 PIN 설정';
	@override String get changeParentPin => '보호자 PIN 변경';
	@override String get pinExplain => '이 PIN은 이 기기의 성인 프로필과 자녀 보호 기능을 보호합니다.';
	@override String get name => '아이의 이름';
	@override String get ageGroup => '허용되는 연령 분류';
	@override String get allAges => '전연령 · G, TV-Y, TV-G, U';
	@override String get age7 => '최대 7개 · PG, TV-PG, TV-Y7도 가능';
	@override String get age12 => '최대 12 · 12 및 12A';
	@override String get age16 => '최대 16개 · PG-13, TV-14, 15 및 16도 가능';
	@override String get ratingExplain => '연령 제한을 초과하는 제목과 인식할 수 없는 분류는 숨겨집니다. 등급이 없는 제목은 아래에서 허용하지 않는 한 숨겨집니다. 등급이 지정되지 않은 에피소드는 승인된 시리즈 분류를 상속받을 수 있습니다. 등급은 서버의 메타데이터에 따라 달라집니다.';
	@override String get theme => '키즈 등장';
	@override String get themeExplain => '이 프로필이 활성화되면 다채로운 테마를 사용하세요.';
	@override String get sharedLogin => '기존 서버 로그인을 사용합니다. Plex/Emby 진행 상황 및 시청 상태는 공유된 상태로 유지됩니다. 제한사항과 자녀 프로필은 이 기기에 저장됩니다.';
	@override String get hideWatched => '계속 시청에서 어린이 시청 숨기기';
	@override String get hideExplain => '이 기기에서 어린이 프로필이 재생하는 영화와 전체 시리즈를 숨깁니다. 라이브러리에서 해당 항목이 제거되거나 서버 기록이 변경되지는 않습니다.';
	@override String get clearHistory => '어린이 시청 제외 재설정';
	@override String get historyReset => '어린이 시청 제외가 재설정되었습니다.';
	@override String get blocked => '이 어린이 프로필에서는 이 제목을 사용할 수 없습니다.';
	@override String get switchProfile => '프로필 전환';
	@override String get manageFromAdult => '설정을 관리하려면 성인 프로필로 전환하세요.';
	@override String get noConnections => '어린이 프로필을 추가하기 전에 서버를 성인 프로필에 연결하세요.';
	@override String get created => '어린이 프로필이 생성되었습니다.';
	@override String get updated => '어린이 프로필이 업데이트되었습니다.';
	@override String get saveFailed => '자녀 보호 기능을 저장할 수 없습니다. 다시 시도해 주세요.';
	@override String get kidsBadge => '어린이';
}

// Path: lurokaDiscovery
class _Translations$lurokaDiscovery$ko extends Translations$lurokaDiscovery$en {
	_Translations$lurokaDiscovery$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '둘러보기';
	@override String get chooseLibraryHint => '탐색할 도서관을 선택하세요';
	@override String get chooseCopyHint => '여러 도서관에서 이용 가능합니다. 원하는 사본을 선택하십시오.';
	@override String get weeklyMovies => '이번 주 인기 영화 · TMDb';
	@override String get weeklyShows => '이번 주 인기 프로그램 · TMDb';
	@override String get weeklyLibrary => '이번 주 인기 트렌드 · 라이브러리';
	@override String get popularLibrary => '지금 인기 있는 항목 · 라이브러리에 있음 · Cinemeta';
	@override String get publicFeedError => 'Cinemeta 검색을 사용할 수 없습니다. 다시 시도해 주세요.';
	@override String get oscars => '오스카상 · 최우수 작품상 수상자';
	@override String get imdb100 => 'IMDb 상위 100개 영화 · 2026년 9월 스냅샷';
	@override String get imdbTv100 => 'IMDb 상위 100개 프로그램 · 2026년 9월 스냅샷';
	@override String get emmyComedy => '에미상 · 코미디 시리즈 수상자 · 1971~2026년';
	@override String get emmys => '에미상 · 드라마 시리즈 수상자 · 1966~2026년';
	@override String get bafta => 'BAFTA · 최우수 영화 수상자';
	@override String get cannes => '칸 · 황금종려상 수상자';
	@override String get awardsNote => '수상 컬렉션에는 오스카 최우수 작품상 역사, 에미 드라마/코미디 수상작, BAFTA/칸 선정 작품 확대 등이 포함됩니다. 반복 우승 타이틀이 한 번 나타납니다. 멤버십은 수상 카테고리 내역과 Wikidata 사실을 사용합니다. IMDb 상위 100개 영화/쇼 목록은 mmdju/imdb-top250-api의 2026년 9월 차트 스냅샷을 유지합니다. 눈에 보이는 온라인 라이브러리의 일치 항목만 나타납니다. 컬렉션 크기는 라이브러리 가용성에 따라 다릅니다.';
	@override String get attribution => '대중 인기 목록, 메타데이터 및 IMDb 등급은 Cinemeta에서 제공됩니다. 인기 목록은 주간 시청 차트가 아닙니다. 이 제품은 TMDB API를 사용하지만 TMDB에 의해 승인되거나 인증되지 않았습니다. 선택적 TMDb 주간 추세는 수치를 보는 것이 아니라 TMDb 관심을 반영합니다. 점수는 소스 레이블을 유지합니다.';
	@override String get tmdbSettings => '발견 소스';
	@override String get setupDescription => 'Cinemeta 검색은 인기 영화 및 프로그램, IMDb 등급 및 수상작 등 계정 없이도 즉시 작동합니다. 선택적으로 API 키 또는 themoviedb.org/settings/api의 API 읽기 액세스 토큰을 사용하여 주간 추세에 대해 TMDb를 연결합니다. 귀하의 자격 증명은 이 장치에 저장되어 있습니다.';
	@override String get apiKey => 'TMDb API 키/액세스 토큰 읽기';
	@override String get connect => 'TMDb 연결';
	@override String get connecting => '연결 중…';
	@override String get connected => 'TMDb 연결됨 · 주간 트렌드 및 시상 가능';
	@override String get builtInKeyNote => 'Luroka의 내장 공유 TMDb 키에서 실행됩니다. 전용 속도 제한 및 전체 제어를 위해 아래에 무료 키를 추가하세요.';
	@override String get disconnect => 'TMDb 연결 끊기';
	@override String get invalidKey => 'TMDb를 검증할 수 없습니다. 자격 증명과 인터넷 연결을 확인하세요.';
	@override String get feedError => 'TMDb 검색을 사용할 수 없습니다. 다시 시도해 주세요.';
	@override String get allTitles => '모든 타이틀';
	@override String get available => '라이브러리에 있음';
	@override String get checking => '라이브러리를 확인하는 중…';
	@override String get availabilityUnknown => '일부 라이브러리를 확인할 수 없습니다. 새로고침해 보세요.';
	@override String get noAvailable => '선택한 라이브러리에 일치하는 제목이 없습니다.';
	@override String get sourceInfo => '주간 트렌드 및 선정된 수상작 · TMDb';
	@override String get configure => '검색 설정';
}

// Path: app
class _Translations$app$ko extends Translations$app$en {
	_Translations$app$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Luroka';
}

// Path: appIcon
class _Translations$appIcon$ko extends Translations$appIcon$en {
	_Translations$appIcon$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '앱 아이콘';
	@override String get defaultIcon => '기본값';
	@override String get current => '현재 아이콘';
	@override String get locked => '서포터 특전';
	@override String get lockedHint => '대체 아이콘은 서포터 특전입니다.';
	@override String get changeFailed => '앱 아이콘을 변경할 수 없습니다.';
	@override String get launcherHint => 'Luroka를 나가면 홈 화면에 새 아이콘이 나타납니다.';
	@override String get tvLauncherHint => 'Luroka를 떠나면 새로운 배너가 나타납니다. Android TV는 TV가 다시 시작될 때까지 이전 항목을 계속 표시할 수 있습니다.';
	@override late final _Translations$appIcon$names$ko names = _Translations$appIcon$names$ko._(_root);
}

// Path: auth
class _Translations$auth$ko extends Translations$auth$en {
	_Translations$auth$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get signInWithPlex => 'Plex 계정으로 로그인';
	@override String get showQRCode => 'QR 코드 표시';
	@override String get authenticate => '인증';
	@override String get authenticationTimeout => '인증 시간이 초과되었습니다. 다시 시도해 주세요.';
	@override String get scanQRToSignIn => '로그인하려면 이 QR 코드를 스캔하세요';
	@override String get waitingForAuth => '인증 대기 중...\n브라우저에서 로그인하세요.';
	@override String get useBrowser => '브라우저 사용';
	@override String get or => '또는';
	@override String connectToMediaBrowser({required Object product}) => '${product}에 연결';
	@override String get quickConnect => 'Quick Connect';
	@override String get useQuickConnect => 'Quick Connect 사용';
	@override String get quickConnectInstructions => 'Jellyfin에서 Quick Connect를 열고 이 코드를 입력하세요.';
	@override String get quickConnectWaiting => '승인 대기 중…';
	@override String get quickConnectCancel => '취소';
	@override String get quickConnectExpired => 'Quick Connect가 만료되었습니다. 다시 시도하세요.';
	@override String get localDataRecoveryRequired => 'Luroka에서 로컬 로그인 정보와 대기 중인 재생 데이터를 안전하게 복구하지 못했습니다. 다시 로그인해 주세요.';
	@override String get pinCheckRejected => 'Plex PIN 확인이 거부되었습니다';
}

// Path: common
class _Translations$common$ko extends Translations$common$en {
	_Translations$common$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get cancel => '취소';
	@override String get save => '저장';
	@override String get close => '닫기';
	@override String get clear => '지우기';
	@override String get reset => '초기화';
	@override String get later => '나중에';
	@override String get submit => '제출';
	@override String get confirm => '확인';
	@override String get retry => '재시도';
	@override String get logout => '로그아웃';
	@override String get unknown => '알 수 없는';
	@override String get refresh => '새로고침';
	@override String get yes => '예';
	@override String get no => '아니오';
	@override String get delete => '삭제';
	@override String get edit => '편집';
	@override String get shuffle => '무작위 재생';
	@override String get addTo => '추가하기...';
	@override String get createNew => '새로 만들기';
	@override String get connect => '연결';
	@override String get disconnect => '연결 해제';
	@override String get play => '재생';
	@override String get pause => '일시정지';
	@override String get resume => '재개';
	@override String get error => '오류';
	@override String get search => '검색';
	@override String get home => '홈';
	@override String get back => '뒤로';
	@override String get settings => '설정';
	@override String get mute => '음소거';
	@override String get ok => '확인';
	@override String get off => '꺼짐';
	@override String get options => '옵션';
	@override String seasonNumber({required Object number}) => '시즌 ${number}';
	@override String episodeNumberTitle({required Object number, required Object title}) => '${number}화 - ${title}';
	@override String chapterNumber({required Object number}) => '챕터 ${number}';
	@override String get reconnect => '다시 연결';
	@override String get viewAll => '모두 보기';
	@override String get serversUnreachable => '서버에 연결할 수 없음';
	@override String get loading => '로딩 중...';
	@override String get fullscreen => '전체 화면';
	@override String get exitFullscreen => '전체 화면 종료';
	@override late final _Translations$common$ratingSource$ko ratingSource = _Translations$common$ratingSource$ko._(_root);
	@override String get notAvailable => 'N/A';
	@override String get url => 'URL';
	@override String get letterKeys => 'ABC';
	@override late final _Translations$common$mediaKind$ko mediaKind = _Translations$common$mediaKind$ko._(_root);
	@override String get stay => '숙박';
	@override String get exitApp => '종료';
	@override String get exitAppBody => 'Luroka를 종료하시겠습니까?';
}

// Path: tvHints
class _Translations$tvHints$ko extends Translations$tvHints$en {
	_Translations$tvHints$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get select => '선택';
	@override String get browse => '찾아보기';
	@override String get back => '뒤로';
}

// Path: screens
class _Translations$screens$ko extends Translations$screens$en {
	_Translations$screens$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get licenses => '라이선스';
	@override String get switchProfile => '프로필 전환';
	@override String get subtitleStyling => '자막 스타일 설정';
	@override String get mpvConfig => 'mpv.conf';
	@override String get logs => '로그';
}

// Path: mediaExtras
class _Translations$mediaExtras$ko extends Translations$mediaExtras$en {
	_Translations$mediaExtras$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get trailers => '예고편';
	@override String get featurettes => '특집';
	@override String get interviews => '인터뷰';
	@override String get deletedScenes => '삭제된 장면';
	@override String get behindTheScenes => '비하인드 스토리';
	@override String get scenesAndClips => '장면 및 클립';
	@override String get other => '기타 추가 사항';
}

// Path: update
class _Translations$update$ko extends Translations$update$en {
	_Translations$update$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get available => '업데이트 있음';
	@override String versionAvailable({required Object version}) => '${version} 버전을 사용할 수 있습니다';
	@override String currentVersion({required Object version}) => '현재 버전: ${version}';
	@override String get skipVersion => '이 버전 건너뛰기';
	@override String get viewRelease => '릴리스 정보 보기';
	@override String get latestVersion => '최신 버전을 사용 중입니다';
	@override String get checkFailed => '업데이트 확인 실패';
}

// Path: supporter
class _Translations$supporter$ko extends Translations$supporter$en {
	_Translations$supporter$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Luroka 서포터';
	@override String get intro => 'Luroka의 개발을 지원하고 외형 추가 기능을 잠금 해제하는 일회성 구매:';
	@override String get presetThemes => '사전 설정된 테마';
	@override String get presetThemesDescription => '불씨, 빙하, 숲, 자두와 종이';
	@override String get customTheme => '맞춤 테마';
	@override String get customThemeDescription => '모든 색상을 직접 선택하세요';
	@override String get appIcons => '앱 아이콘';
	@override String get appIconsDescription => '대체 Luroka 아이콘을 선택하세요';
	@override String buy({required Object price}) => '${price}용 구매';
	@override String get loadingPrice => '가격 로드 중...';
	@override String get restore => '구매 복원';
	@override String get pending => '구매가 결제 또는 승인 대기 중입니다. 상점이 완료하자마자 추가 항목이 잠금 해제됩니다.';
	@override String get thankYouTitle => 'Luroka를 지원해 주셔서 감사합니다.';
	@override String get thankYouBody => 'Supporter 엑스트라가 잠금 해제되었습니다.';
	@override String get tileSubtitle => '일회성 구매로 테마 및 앱 아이콘 잠금 해제';
	@override String get tileSubtitleThemesOnly => '일회성 구매로 테마 잠금 해제';
	@override String get tileUnlocked => '당신의 지원에 감사드립니다';
	@override late final _Translations$supporter$errors$ko errors = _Translations$supporter$errors$ko._(_root);
}

// Path: settings
class _Translations$settings$ko extends Translations$settings$en {
	_Translations$settings$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '설정';
	@override String get supportDeveloper => 'Luroka 후원하기';
	@override String get supportDeveloperDescription => 'Liberapay로 후원하여 개발 지원';
	@override String get language => '언어';
	@override String get theme => '테마';
	@override String get appearance => '디자인';
	@override String get videoPlayback => '비디오 재생';
	@override String get videoPlaybackDescription => '재생 동작 설정';
	@override String get advanced => '고급';
	@override String get episodePosterMode => '에피소드 포스터 스타일';
	@override String get seriesPoster => '시리즈 포스터';
	@override String get seasonPoster => '시즌 포스터';
	@override String get episodeThumbnail => '썸네일';
	@override String get homeHeroSize => '캐러셀 크기';
	@override String get homeHeroSizeSmall => '작은';
	@override String get homeHeroSizeMedium => '중간';
	@override String get homeHeroSizeLarge => '대형';
	@override String get secondsLabel => '초';
	@override String get minutesLabel => '분';
	@override String get secondsShort => '초';
	@override String get minutesShort => '분';
	@override String durationHint({required Object min, required Object max}) => '기간 입력 (${min}-${max})';
	@override String get systemTheme => '시스템';
	@override String get lightTheme => '라이트';
	@override String get darkTheme => '다크';
	@override String get oledTheme => 'OLED';
	@override String get libraryDensity => '라이브러리 표시 밀도';
	@override String get displayScale => '표시 배율';
	@override String get compact => '조밀하게';
	@override String get comfortable => '여유롭게';
	@override String get gridSpacing => '그리드 간격';
	@override String get gridSpacingTight => '조밀하게';
	@override String get gridSpacingNormal => '보통';
	@override String get gridSpacingSpacious => '여유롭게';
	@override String get tvCornerSpotlightBackdrop => '모서리 스포트라이트 배경';
	@override String get tvCornerSpotlightBackdropDescription => '화면 전체를 채우는 대신 오른쪽 상단에 스포트라이트 아트워크를 표시합니다';
	@override String get viewMode => '보기 모드';
	@override String get gridView => '그리드 보기';
	@override String get listView => '목록 보기';
	@override String get continueWatchingAction => '계속 보기 동작';
	@override String get continueWatchingPlay => '재생';
	@override String get continueWatchingDetails => '상세 정보 열기';
	@override String get episodeAction => '에피소드 동작';
	@override String get episodePlay => '재생';
	@override String get episodeDetails => '상세 정보 열기';
	@override String get useGlobalHubs => '홈 레이아웃 사용';
	@override String get useGlobalHubsDescription => '통합 홈 허브를 표시합니다. 끄면 라이브러리 추천을 사용합니다.';
	@override String get showServerNameOnHubs => '허브에 서버 이름 표시';
	@override String get showServerNameOnHubsDescription => '허브 제목에 항상 서버 이름을 표시합니다.';
	@override String get groupLibrariesByServer => '서버별로 라이브러리 그룹화';
	@override String get groupLibrariesByServerDescription => '사이드바 라이브러리를 미디어 서버별로 그룹화합니다.';
	@override String get alwaysKeepSidebarOpen => '사이드바 항상 열어두기';
	@override String get alwaysKeepSidebarOpenDescription => '사이드바가 확장된 상태로 유지되고 콘텐츠 영역이 맞춰집니다';
	@override String get showUnwatchedCount => '미시청 수 표시';
	@override String get showUnwatchedCountDescription => '시리즈 및 시즌에 미시청 에피소드 수 표시';
	@override String get showWatchedIndicators => '시청 표시 보이기';
	@override String get showWatchedIndicatorsDescription => '시청한 영화, 프로그램, 에피소드에 체크 표시를 표시합니다';
	@override String get showEpisodeNumberOnCards => '카드에 에피소드 번호 표시';
	@override String get showEpisodeNumberOnCardsDescription => '에피소드 카드에 시즌 및 에피소드 번호 표시';
	@override String get showSeasonPostersOnTabs => '탭에 시즌 포스터 표시';
	@override String get showSeasonPostersOnTabsDescription => '각 시즌 포스터를 탭 위에 표시';
	@override String get tvFullCardLayout => '전체 TV 카드';
	@override String get tvFullCardLayoutDescription => 'TV 카드에 이미지만 표시하고 배우 이름을 오버레이로 표시';
	@override String get focusGlow => '포커스 글로우';
	@override String get focusGlowDescription => '포커스된 카드 주위에 은은한 빛 효과를 표시';
	@override String get visualEffects => '시각 효과';
	@override String get visualEffectsAuto => '자동';
	@override String get visualEffectsAutoDescription => '저전력 기기에서 효과를 자동으로 줄입니다';
	@override String get visualEffectsFull => '전체';
	@override String get visualEffectsReduced => '축소';
	@override String get visualEffectsReducedDescription => '애니메이션을 줄이고 아트워크 해상도를 낮춥니다';
	@override String get hideSpoilers => '미시청 에피소드 스포일러 숨기기';
	@override String get hideSpoilersDescription => '시청하지 않은 에피소드의 썸네일과 설명을 흐리게 처리';
	@override String get playerBackend => '플레이어 백엔드';
	@override String get playerBackendDescription => 'mpv는 더 많은 형식을 재생하고 더 많은 기능을 활성화합니다. 권장됩니다. ExoPlayer는 이 장치에서 재생이 실패하거나 끊기는 경우 도움이 됩니다.';
	@override String get exoPlayer => 'ExoPlayer';
	@override String get mpv => 'mpv';
	@override String get hardwareDecoding => '하드웨어 디코딩';
	@override String get hardwareDecodingDescription => '가능한 경우 하드웨어 가속을 사용합니다';
	@override String get playbackBuffer => '재생 버퍼';
	@override String get playbackBufferAuto => '자동 (권장)';
	@override String get playbackBufferLarge => '대형';
	@override String get playbackBufferExtraLarge => '초대형';
	@override String get playbackBufferDescription => '불안정한 연결에 대비해 더 많은 버퍼를 사용합니다. 버퍼 크기에 의해서도 제한됩니다.';
	@override String get defaultQualityTitle => '기본 화질';
	@override String get streamingQualityOriginalHint => '저장된 그대로 파일을 재생합니다. 최고의 품질, 가장 많은 대역폭을 사용합니다.';
	@override String get cellularQualityTitle => '셀룰러에서 기본 화질';
	@override String get cellularQualitySameAsDefault => '기본 화질과 동일';
	@override String get directPlayCoveredQuality => '작은 동영상을 원본 화질로 재생';
	@override String get directPlayCoveredQualityDescription => '화질 제한 내의 동영상은 트랜스코딩하지 않고 Direct Play합니다';
	@override String get videoCodecs => '비디오 코덱';
	@override String get videoCodecsDescription => '선택 해제한 코덱은 서버가 트랜스코딩합니다';
	@override String get videoCodecsAlwaysAccepted => '항상 허용';
	@override String get musicQualityTitle => '음악 음질';
	@override String get subtitleStyling => '자막 스타일';
	@override String get subtitleStylingDescription => '자막 모양을 사용자 지정합니다';
	@override String get smallSkipDuration => '짧은 건너뛰기 시간';
	@override String get largeSkipDuration => '긴 건너뛰기 시간';
	@override String get rewindOnResume => '재개 시 되감기';
	@override String secondsUnit({required Object seconds}) => '${seconds}초';
	@override String get defaultSleepTimer => '기본 취침 타이머';
	@override String minutesUnit({required Object minutes}) => '${minutes}분';
	@override String get rememberTrackSelections => '시리즈/영화별 트랙 선택 기억';
	@override String get rememberTrackSelectionsDescription => '작품별 오디오 및 자막 선택 기억';
	@override String get rememberTrackSelectionsBackendRule => 'Plex는 파일별로 각 선택을 서버에 저장합니다. Jellyfin은 계정의 선택 기억도 활성화합니다. Emby는 지원되지 않습니다';
	@override String get followServerTrackSelections => '서버의 에피소드별 트랙 선택 사용';
	@override String get followServerTrackSelectionsDescription => '에피소드 전환 시 현재 선택을 유지하는 대신 서버에서 선택된 오디오와 자막을 적용합니다';
	@override String get resumeMusicOnLaunch => '음악 세션 기억';
	@override String get resumeMusicOnLaunchDescription => '앱 시작 시 마지막 곡을 멈춘 위치에서 일시정지 상태로 엽니다';
	@override String get showChapterMarkersOnTimeline => '탐색 막대에 챕터 마커 표시';
	@override String get showChapterMarkersOnTimelineDescription => '챕터 경계에서 탐색 막대 구분';
	@override String get specialsOrdering => '에피소드 순서로 스페셜 표시';
	@override String get specialsOrderingDescription => '시리즈 시청 순서에서 스페셜이 재생되는 위치';
	@override String get specialsOrderingServer => '서버 순서 따르기';
	@override String get specialsOrderingAirDate => '방영일 순서로 삽입';
	@override String get specialsOrderingLast => '일반 시즌 뒤';
	@override String get clickVideoTogglesPlayback => '동영상 클릭으로 재생/일시정지 전환';
	@override String get clickVideoTogglesPlaybackDescription => '컨트롤을 표시하는 대신 동영상을 클릭하여 재생하거나 일시정지합니다.';
	@override String get videoPlayerControls => '비디오 플레이어 컨트롤';
	@override String get keyboardShortcuts => '키보드 단축키';
	@override String get keyboardShortcutsDescription => '키보드 단축키를 사용자 지정합니다';
	@override String get videoPlayerNavigation => '비디오 플레이어 탐색';
	@override String get videoPlayerNavigationDescription => '방향 키로 비디오 플레이어 컨트롤을 탐색합니다';
	@override String get watchTogetherRelay => '함께 보기 릴레이';
	@override String get watchTogetherRelayDescription => '직접 설정하지 않는 한 공개 공개 시청 파티 릴레이';
	@override String get watchTogetherRelayHint => 'https://my-relay.example.com';
	@override String get watchTogetherRelayInvalid => '올바른 HTTP 또는 HTTPS 릴레이 기본 URL을 입력하세요.';
	@override String get crashReporting => '충돌 보고';
	@override String get crashReportingDescription => '앱 개선을 위해 충돌 보고서 전송';
	@override String get debugLogging => '디버그 로깅';
	@override String get debugLoggingDescription => '문제 해결을 위해 상세 로깅 활성화';
	@override String get viewLogs => '로그 보기';
	@override String get viewLogsDescription => '애플리케이션 로그 확인';
	@override String get clearImageCache => '이미지 캐시 지우기';
	@override String get clearImageCacheDescription => '캐시된 아트워크와 썸네일을 지웁니다. 다시 다운로드할 때까지 이미지가 느리게 로드될 수 있습니다.';
	@override String get clearImageCacheSuccess => '이미지 캐시를 성공적으로 지웠습니다';
	@override String get resetSettings => '설정 재설정';
	@override String get resetSettingsDescription => '기본 설정으로 복원합니다. 되돌릴 수 없습니다.';
	@override String get resetSettingsSuccess => '설정 재설정 성공';
	@override String get backup => '백업';
	@override String get exportSettings => '설정 내보내기';
	@override String get exportSettingsDescription => '기본 설정을 파일로 저장';
	@override String get exportSettingsSuccess => '설정 내보내기 완료';
	@override String get importSettings => '설정 가져오기';
	@override String get importSettingsDescription => '파일에서 기본 설정 복원';
	@override String get importSettingsConfirm => '현재 설정을 대체합니다. 계속하시겠습니까?';
	@override String get importSettingsSuccess => '설정 가져오기 완료';
	@override String get importSettingsInvalidFile => '유효한 Luroka 설정 내보내기 파일이 아닙니다';
	@override String get importSettingsNoUser => '설정을 가져오기 전에 로그인하세요';
	@override String get shortcutsReset => '단축키가 기본값으로 재설정되었습니다';
	@override String get resetShortcutsConfirm => '그러면 사용자 정의 바로가기가 기본값으로 대체됩니다. 계속하다?';
	@override String get about => '정보';
	@override String get aboutDescription => '앱 정보 및 라이선스';
	@override String get updates => '업데이트';
	@override String get updateAvailable => '사용 가능한 업데이트 있음';
	@override String get checkForUpdates => '업데이트 확인';
	@override String get autoCheckUpdatesOnStartup => '시작 시 자동으로 업데이트 확인';
	@override String get autoCheckUpdatesOnStartupDescription => '실행 시 업데이트가 있으면 알림';
	@override String get validationErrorEnterNumber => '유효한 숫자를 입력하세요';
	@override String validationErrorDuration({required Object min, required Object max, required Object unit}) => '기간은 ${min}과 ${max} ${unit} 사이여야 합니다';
	@override String shortcutAlreadyAssigned({required Object action}) => '단축키가 이미 ${action}에 할당되었습니다';
	@override String shortcutUpdated({required Object action}) => '${action} 단축키가 업데이트되었습니다';
	@override String get saveFailed => '변경 사항을 저장하지 못했습니다. 다시 시도하세요.';
	@override String get autoPlayAndSkip => '자동 재생 및 건너뛰기';
	@override String get autoPlayNextEpisode => '다음 에피소드 자동 재생';
	@override String get autoPlayNextEpisodeDescription => '에피소드가 끝나면 다음 에피소드를 자동으로 재생';
	@override String get shuffleStartsFromBeginning => '무작위 재생 시 처음부터 시작';
	@override String get shuffleStartsFromBeginningDescription => '무작위 재생 시 이어보기 대신 각 에피소드를 처음부터 재생합니다';
	@override String get playNextCountdown => '다음 재생 카운트다운';
	@override String get playNextCountdownImmediate => '즉시 재생';
	@override String get skipIntroMode => '인트로 건너뛰기';
	@override String get skipIntroModeOffDescription => '건너뛰기 버튼 없이 인트로를 정상적으로 재생합니다';
	@override String get skipIntroModeButtonDescription => '인트로가 시작되면 건너뛰기 버튼을 표시합니다';
	@override String get skipIntroModeAutoDescription => '아래 지연 시간 후 인트로를 자동으로 건너뜁니다';
	@override String get skipCreditsMode => '크레딧 건너뛰기';
	@override String get skipCreditsModeOffDescription => '건너뛰기 버튼 없이 크레딧을 정상적으로 재생합니다';
	@override String get skipCreditsModeButtonDescription => '크레딧이 시작되면 건너뛰기 버튼을 표시합니다';
	@override String get skipCreditsModeAutoDescription => '크레딧을 자동으로 건너뛰고 다음 에피소드를 재생합니다';
	@override String get skipMarkerModeOff => '끄기';
	@override String get skipMarkerModeButton => '버튼 표시';
	@override String get skipMarkerModeAuto => '자동';
	@override String get forceSkipMarkerFallback => '대체 마커 강제 사용';
	@override String get forceSkipMarkerFallbackDescription => 'Plex에 마커가 있어도 챕터 제목 패턴 사용';
	@override String get autoSkipDelay => '자동 건너뛰기 지연';
	@override String autoSkipDelayDescription({required Object seconds}) => '자동으로 건너뛰기 전 ${seconds}초 대기';
	@override String get introPattern => '인트로 마커 패턴';
	@override String get introPatternDescription => '챕터 제목에서 인트로 마커를 인식하는 정규식 패턴';
	@override String get creditsPattern => '크레딧 마커 패턴';
	@override String get creditsPatternDescription => '챕터 제목에서 크레딧 마커를 인식하는 정규식 패턴';
	@override String get invalidRegex => '잘못된 정규식';
	@override String get regex => '정규식';
	@override String get downloads => '다운로드';
	@override String get downloadLocationDescription => '다운로드 콘텐츠 저장 위치 선택';
	@override String get downloadLocationDefault => '기본값 (앱 저장소)';
	@override String get downloadLocationCustom => '사용자 지정 위치';
	@override String get selectFolder => '폴더 선택';
	@override String get resetToDefault => '기본값으로 재설정';
	@override String currentPath({required Object path}) => '현재: ${path}';
	@override String get downloadLocationChanged => '다운로드 위치가 변경되었습니다';
	@override String get downloadLocationReset => '다운로드 위치가 기본값으로 재설정되었습니다';
	@override String get downloadLocationInvalid => '선택한 폴더에 쓰기 권한이 없습니다';
	@override String get downloadLocationPickerUnavailable => '이 기기에서는 폴더를 선택할 수 없습니다';
	@override String get downloadOnWifiOnly => 'Wi-Fi 연결 시에만 다운로드';
	@override String get downloadOnWifiOnlyDescription => '셀룰러 데이터 사용 중에는 다운로드하지 않습니다';
	@override String get downloadWifiScope => '이 장치의 모든 프로필과 다운로드에 적용됩니다.';
	@override String get autoRemoveWatchedDownloads => '시청한 다운로드 항목 자동 삭제';
	@override String get autoRemoveWatchedDownloadsDescription => '시청한 다운로드 항목을 자동으로 삭제합니다';
	@override String get cellularDownloadBlocked => '셀룰러에서는 다운로드가 차단됩니다. Wi-Fi를 사용하거나 설정을 변경하세요.';
	@override String get maxVolume => '최대 볼륨';
	@override String get maxVolumeDescription => '음량이 작은 콘텐츠를 위해 100% 이상의 볼륨을 허용합니다';
	@override String maxVolumePercent({required Object percent}) => '${percent}%';
	@override String get discordRichPresence => 'Discord 리치 프레즌스';
	@override String get discordRichPresenceDescription => 'Discord에서 시청 중인 콘텐츠 표시';
	@override String get services => '서비스';
	@override String get servicesDescription => 'Trakt, MyAnimeList, Seerr 등 연결';
	@override String get manageLibrariesDescription => '라이브러리 순서를 변경하거나 숨깁니다';
	@override String get companionRemoteServer => '컴패니언 리모트 서버';
	@override String get companionRemoteServerDescription => '네트워크의 모바일 기기가 이 앱을 제어할 수 있도록 허용';
	@override String get companionRemoteServerStartFailed => '컴패니언 리모트 서버를 시작할 수 없습니다';
	@override String get companionRemoteServerStopFailed => '컴패니언 리모트 서버를 중지할 수 없습니다';
	@override String get autoPip => '자동 PIP 모드';
	@override String get autoPipDescription => '재생 중 앱을 떠나면 자동으로 화면 속 화면 모드로 전환합니다';
	@override String get matchContentFrameRate => '콘텐츠 프레임 레이트 맞춤';
	@override String get matchContentFrameRateDescription => '디스플레이 새로 고침 빈도를 동영상 콘텐츠에 맞춤';
	@override String get matchContentResolution => '콘텐츠 해상도에 맞추기';
	@override String get matchContentResolutionDescription => 'TV가 업스케일링을 처리하도록 디스플레이를 영상 본래 해상도로 전환합니다. 재생 중에는 메뉴와 자막도 함께 업스케일됩니다';
	@override String get matchRefreshRate => '주사율 맞춤';
	@override String get matchRefreshRateDescription => '전체 화면에서 디스플레이 새로 고침 빈도 맞춤';
	@override String get matchDynamicRange => '다이나믹 레인지 맞춤';
	@override String get matchDynamicRangeDescription => 'HDR 콘텐츠에서는 HDR로 전환한 뒤 SDR로 되돌림';
	@override String get displaySwitchDelay => '디스플레이 전환 지연';
	@override String get tunneledPlayback => '터널 재생';
	@override String get tunneledPlaybackDescription => '비디오 터널링을 사용합니다. HDR 재생 시 검은 화면이 보이거나 움직임이 끊기면 비활성화하세요.';
	@override String get audioPassthrough => '오디오 패스스루';
	@override String get audioPassthroughDescription => 'Dolby/DTS 오디오를 재인코딩 없이 리시버나 TV로 전송하여 서라운드 사운드를 유지합니다. 소리가 나지 않으면 비활성화하세요.';
	@override String get audioPassthroughDescriptionApple => 'Dolby Digital Plus(Atmos 포함)에 Apple의 기본 Dolby 디코더를 사용합니다. DTS와 TrueHD는 계속 멀티채널 PCM으로 재생됩니다. 소리가 나지 않으면 비활성화하세요.';
	@override String get audioPassthroughDescriptionAppleSpatial => 'Atmos를 포함한 Dolby Digital Plus용 Apple의 기본 Dolby 디코더를 사용하세요. iOS, iPadOS 및 tvOS 26 이상에서는 TrueHD Atmos 및 DTS:X가 공간 오디오로 재생됩니다. 다른 DTS 및 TrueHD 트랙은 다중 채널 PCM으로 재생됩니다. 소리가 나지 않으면 꺼주세요.';
	@override String get audioPassthroughOverriddenByNormalization => '음량 정규화가 켜져 있는 동안 꺼짐';
	@override String get audioChannelLimit => '오디오 채널';
	@override String get audioChannelLimitDescription => '모든 채널을 재생할 수 없는 스피커, 헤드폰 또는 HDMI 설정에 대해 디코딩된 오디오 믹스 다운';
	@override String get audioChannelLimitOriginal => '원본';
	@override String get audioChannelLimitOriginalDescription => '트랙의 모든 채널을 재생합니다.';
	@override String get audioChannelLimitSurround51 => '최대 5.1';
	@override String get audioChannelLimitSurround51Description => '5.1 PCM만 사용하는 TV 및 수신기의 경우 7.1을 5.1로 혼합합니다. 통과는 영향을 받지 않습니다.';
	@override String get audioChannelLimitStereo => '스테레오';
	@override String get audioChannelLimitStereoDescription => '스테레오 스피커 또는 헤드폰을 위해 두 개의 채널로 믹스다운합니다. 패스스루를 끕니다.';
	@override String get downmixCenterBoost => '센터 채널 부스트';
	@override String downmixCenterBoostValue({required Object db}) => '${db} dB';
	@override String get downmixCenterBoostLabel => '부스트 (dB)';
	@override String get downmixCenterBoostShort => 'dB';
	@override String get audioDownmixNormalize => '다운믹스 시 음량 정규화';
	@override String get audioDownmixNormalizeDescription => '클리핑을 방지하기 위해 믹스 음량을 낮춥니다. 원래 음량을 유지하려면 끄세요(큰 소리 장면에서 왜곡될 수 있음).';
	@override String get dvConversionMode => 'Dolby Vision 변환';
	@override String get dvConversionModeDescription => 'Dolby Vision Profile 7 파일을 처리하는 방식을 선택합니다.';
	@override String get dvConversionAuto => '자동';
	@override String get dvConversionNative => '네이티브 / 비활성화';
	@override String get dvConversionDv81 => 'P7 → P8.1';
	@override String get dvConversionHevcStrip => 'P7 → HEVC';
	@override String get dvConversionAutoDescription => '기기 기능 감지와 일반 폴백 동작을 사용합니다';
	@override String get dvConversionNativeDescription => '네이티브 DV7을 강제하고 DV 변환 재시도를 억제합니다';
	@override String get dvConversionDv81Description => 'Dolby Vision 프로필 8.1로 인라인 RPU 변환을 강제합니다';
	@override String get dvConversionHevcStripDescription => 'Dolby Vision RPU/EL 레이어를 제거하고 일반 HEVC로 제공합니다';
	@override String get disableDolbyVision => 'Dolby Vision 끄기';
	@override String get disableDolbyVisionDescription => '파일에 HDR10 또는 HLG 레이어가 있으면 Dolby Vision 대신 해당 레이어를 재생합니다';
	@override String get hdrSdrConversion => 'HDR을 SDR로 변환';
	@override String get hdrSdrConversionDescription => '디스플레이가 HDR을 표시할 수 없을 때 HDR 동영상을 무엇으로 변환할지 선택합니다.';
	@override String get hdrSdrConversionAuto => '자동';
	@override String get hdrSdrConversionAutoDescription => 'Android 9 이상에서는 기기, 이전 버전에서는 플레이어';
	@override String get hdrSdrConversionDevice => '기기';
	@override String get hdrSdrConversionDeviceDescription => '기기의 비디오 하드웨어가 변환합니다. 가장 빠르지만 색상은 기기에 따라 다릅니다';
	@override String get hdrSdrConversionPlayer => '플레이어';
	@override String get hdrSdrConversionPlayerDescription => '플레이어가 변환합니다. 색상은 일정하지만 저사양 TV 박스에서는 4K가 끊길 수 있습니다';
	@override String get deinterlace => '디인터레이싱';
	@override String get deinterlaceDescription => '인터레이스 비디오의 빗살 무늬 아티팩트를 제거합니다 (mpv 플레이어만 해당)';
	@override String get deinterlaceOff => '끄다';
	@override String get deinterlaceOffDescription => '인터레이스된 비디오가 디코딩되는 동안 표시';
	@override String get deinterlaceVideo => '비디오';
	@override String get deinterlaceVideoDescription => '각 필드를 전체 프레임으로 전환합니다. 스포츠, 뉴스, 콘서트 등 TV용 영상 촬영용';
	@override String get deinterlaceFilm => '영화';
	@override String get deinterlaceFilmDescription => 'NTSC DVD에서 일반적으로 사용되는 29.97fps로 텔레시네된 영화 및 애니메이션의 원본 프레임을 복원합니다. TV 끊김 현상에 대한 비디오 촬영. 라이브 TV는 비디오를 사용합니다';
	@override String get requireProfileSelectionOnOpen => '앱 실행 시 프로필 선택';
	@override String get requireProfileSelectionOnOpenDescription => '앱을 열 때마다 프로필 선택 화면을 표시합니다';
	@override String get forceTvMode => 'TV 모드 강제 사용';
	@override String get forceTvModeKeepTitle => 'TV 레이아웃을 유지하시겠습니까?';
	@override String forceTvModeKeepBody({required Object seconds}) => 'TV 레이아웃은 리모콘용으로 설계되었습니다. ${seconds} 의 일반 레이아웃으로 되돌립니다.';
	@override String get forceTvModeKeepConfirm => 'TV 레이아웃 유지';
	@override String get forceTvModeReverted => 'TV 레이아웃이 되돌아갔습니다.';
	@override String get forceTvModeDescription => 'TV 레이아웃을 강제합니다. 자동 감지되지 않는 기기용입니다. 재시작이 필요합니다.';
	@override String get startInFullscreen => '전체 화면으로 시작';
	@override String get startInFullscreenDescription => '실행 시 Luroka를 전체 화면 모드로 엽니다';
	@override String get exitFullscreenOnPlayerClose => '플레이어를 닫을 때 전체 화면 종료';
	@override String get exitFullscreenOnPlayerCloseDescription => '비디오 플레이어를 닫을 때 자동으로 전체 화면을 종료합니다';
	@override String get autoHidePerformanceOverlay => '성능 오버레이 자동 숨기기';
	@override String get autoHidePerformanceOverlayDescription => '재생 컨트롤과 함께 성능 오버레이를 페이드 처리';
	@override String get showNavBarLabels => '내비게이션 바 라벨 표시';
	@override String get showNavBarLabelsDescription => '내비게이션 바 아이콘 아래에 텍스트 라벨을 표시합니다';
	@override String get startupSection => '시작 섹션';
	@override String get showExploreTab => '둘러보기 탭 표시';
	@override String get showExploreTabDescription => 'Plex Discover와 연결된 트래커의 콘텐츠가 포함된 둘러보기 탭을 표시합니다';
	@override String get liveTvDefaultFavorites => '즐겨찾기 채널 기본 설정';
	@override String get liveTvDefaultFavoritesDescription => '라이브 TV를 열 때 즐겨찾기 채널만 표시';
	@override String get general => '일반';
	@override String get generalDescription => '언어, 시작 및 창 동작';
	@override String get languageAndRegion => '언어 및 지역';
	@override String get startup => '시작';
	@override String get display => '디스플레이';
	@override String get libraryAndCards => '라이브러리 및 카드';
	@override String get homeScreen => '홈 화면';
	@override String get navigation => '탐색';
	@override String get window => '창';
	@override String get liveTv => '라이브 TV';
	@override String get player => '플레이어';
	@override String get videoAndDisplay => '비디오 및 디스플레이';
	@override String get audio => '오디오';
	@override String get quality => '화질';
	@override String get subtitles => '자막';
	@override String get seekAndTiming => '탐색 및 타이밍';
	@override String get behavior => '동작';
	@override String get gestures => '제스처';
	@override String get gestureBrightnessSwipe => '밝기 스와이프';
	@override String get gestureBrightnessSwipeDescription => '왼쪽 가장자리에서 위아래로 스와이프하여 밝기를 조절합니다';
	@override String get gestureVolumeSwipe => '볼륨 스와이프';
	@override String get gestureVolumeSwipeDescription => '오른쪽 가장자리에서 위아래로 스와이프하여 볼륨을 조절합니다';
	@override String get gesturePinchToZoom => '핀치 줌';
	@override String get gesturePinchToZoomDescription => '비디오에서 핀치하여 확대하거나 축소합니다';
	@override String get rememberBrightnessLevel => '밝기 수준 기억';
	@override String get rememberBrightnessLevelDescription => '마지막으로 스와이프하여 설정한 밝기로 재생을 시작합니다';
	@override String get controls => '컨트롤';
	@override String get rememberPlayerChanges => '플레이어 변경 사항 기억';
	@override String get rememberPlayerChangesDescription => '재생 중 변경한 사항을 저장하고 다시 적용할 위치';
	@override String get scopePlaybackSpeed => '재생 속도';
	@override String get scopeShaderPreset => '셰이더 프리셋';
	@override String get scopeAspectRatio => '화면 비율';
	@override String get scopeSyncOffsets => '오디오 및 자막 동기화';
	@override String get playerScopeOff => '저장하지 않음';
	@override String get playerScopeGlobal => '모든 곳';
	@override String get playerScopeLibrary => '라이브러리별';
	@override String get playerScopeTitle => '시리즈 또는 영화별';
	@override String get exportDialogTitle => 'Luroka 설정 내보내기';
	@override String get velvetHourTheme => '벨벳 아워';
}

// Path: themeEditor
class _Translations$themeEditor$ko extends Translations$themeEditor$en {
	_Translations$themeEditor$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get builtIn => '내장';
	@override String get presets => '사전 설정';
	@override String get custom => '맞춤';
	@override String get customEmpty => '아직 생성되지 않음';
	@override String get editCustom => '맞춤 테마 수정';
	@override String get editCustomDescription => '모든 색상을 직접 선택하세요';
	@override String get locked => '서포터로 잠금 해제';
	@override String get savedLocked => '저장됨 — Supporter로 잠금 해제';
	@override String get title => '맞춤 테마';
	@override String get startFrom => '다음에서 시작';
	@override String get startFromDescription => '다른 테마의 모든 색상 복사';
	@override String get colors => '색상';
	@override String get preview => '미리보기';
	@override late final _Translations$themeEditor$slots$ko slots = _Translations$themeEditor$slots$ko._(_root);
	@override String get opacity => '불투명도';
	@override String get hexHint => '#RRGGBB 또는 #AARRGGBB';
	@override String get fromOtherThemes => '다른 테마에서';
	@override String swatchLabel({required Object theme, required Object color}) => '${theme} ${color}';
	@override late final _Translations$themeEditor$contrast$ko contrast = _Translations$themeEditor$contrast$ko._(_root);
	@override String lowContrast({required Object pair, required Object ratio, required Object minimum}) => '${pair}: ${ratio}:1, 권장 ${minimum}:1 미만';
	@override String get discardTitle => '변경사항을 취소하시겠습니까?';
	@override String get discardMessage => '저장되지 않은 색상 변경 사항은 손실됩니다.';
	@override String get discard => '폐기';
	@override String previewCardTitle({required Object number}) => '에피소드 ${number}';
	@override String previewCardSubtitle({required Object minutes}) => '${minutes}분 남음';
	@override String get previewSwitch => '자동재생';
	@override String get previewMutedText => '보조 텍스트는 다음과 같습니다.';
}

// Path: seriesBrowser
class _Translations$seriesBrowser$ko extends Translations$seriesBrowser$en {
	_Translations$seriesBrowser$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get oneEpisode => '1회';
	@override String watchedCount({required Object count}) => '${count} 시청함';
	@override String episodeCount({required Object count}) => '${count} 에피소드';
	@override String episodesFor({required Object season}) => '${season} · 에피소드';
	@override String get enterHint => '선택: 오픈 시즌 · ↓: 에피소드';
}

// Path: titlePage
class _Translations$titlePage$ko extends Translations$titlePage$en {
	_Translations$titlePage$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get genre => '장르';
	@override String remaining({required Object time}) => '${time} 남음';
	@override String continueEpisode({required Object season, required Object episode}) => '계속 S${season} E${episode}';
	@override String get watchlist => '관심 목록';
	@override String get more => '더보기';
}

// Path: tvMenus
class _Translations$tvMenus$ko extends Translations$tvMenus$en {
	_Translations$tvMenus$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get appearanceDescription => '테마, 화면 여백 및 포스터';
}

// Path: lurokaPlayer
class _Translations$lurokaPlayer$ko extends Translations$lurokaPlayer$en {
	_Translations$lurokaPlayer$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '플레이어 설정';
	@override String get watch => '시계';
	@override String get watchDescription => '속도를 설정하고, 긴장을 풀고, 다음에 무엇을 재생할지 결정하세요.';
	@override String get picture => '사진 설정';
	@override String get pictureDescription => '줌, HDR 및 비디오 처리';
	@override String get sound => '오디오 및 자막';
	@override String get audioSettings => '오디오 설정';
	@override String get soundDescription => '타이밍, 볼륨 및 오디오 출력';
	@override String get chooseTracks => '언어 및 자막 트랙 선택';
	@override String get tools => '고급';
	@override String get toolsDescription => '재생 정보 및 진단';
	@override String get preferences => '재생 환경설정';
	@override String get preferencesDescription => '귀하의 영화관, 귀하의 기본값. 사운드와 캡션으로 시작한 다음 스트리밍과 화면을 미세 조정하세요.';
	@override String get streamPreferences => '스트리밍 품질';
	@override String get displayPreferences => '디스플레이';
	@override String get enginePreferences => '고급 플레이어 옵션';
	@override String get seekPreferences => '추구';
	@override String get watchPreferences => '자동재생 및 건너뛰기';
	@override String get rememberPreferences => '환경설정 기억';
}

// Path: lurokaSettings
class _Translations$lurokaSettings$ko extends Translations$lurokaSettings$en {
	_Translations$lurokaSettings$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get quickSetup => '빠른 설정';
	@override String get quickSetupDescription => '더욱 원활한 TV 탐색, 편안한 화면 맞춤, 홈 레이아웃, 재생 기본 설정 등 필수 요소부터 시작하세요.';
	@override String get experience => '귀하의 경험';
	@override String get experienceDescription => 'Luroka가 외관, 언어, 재생, 라이브러리, 화면 시간 등 올바른 느낌을 갖게 합니다.';
	@override String get remoteHint => '↑ ↓ 카테고리 찾아보기 · → / 열기 옵션 선택 · ← 카테고리로 돌아가기';
}

// Path: playerChrome
class _Translations$playerChrome$ko extends Translations$playerChrome$en {
	_Translations$playerChrome$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get browse => '챕터 및 대기열';
	@override String get backToPlayback => '재생으로 돌아가기';
	@override String get nowPlaying => '지금 재생 중';
	@override String get options => '플레이어 옵션';
}

// Path: tvLayout
class _Translations$tvLayout$ko extends Translations$tvLayout$en {
	_Translations$tvLayout$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get screenMargins => 'TV 화면 여백';
	@override String get screenMarginsDescription => 'TV에서 사진의 일부가 잘리는 경우 앱 가장자리를 축소하세요.';
	@override String get screenMarginsDefault => '0%(기본값)';
}

// Path: studios
class _Translations$studios$ko extends Translations$studios$en {
	_Translations$studios$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get checkingCopies => '다른 라이브러리 확인 중... 언제든지 알려진 복사본을 선택하세요.';
	@override String get incompleteCopies => '일부 라이브러리를 확인할 수 없습니다. 알려진 복사본을 선택하거나 취소하고 다시 시도하세요.';
	@override String get partialFavorites => '일부 즐겨찾기를 로드할 수 없습니다. 다시 시도하려면 새로 고침을 선택하세요.';
	@override String get copyLookupFailedTitle => '모든 복사본을 확인할 수 없습니다.';
	@override String get copyLookupFailedMessage => '일부 도서관은 응답하지 않았습니다. 이미 찾은 복사본 중 하나를 열거나 취소하고 다시 시도할 수 있습니다.';
	@override String get openKnownCopies => '알려진 사본 표시';
	@override String get browseAll => '모두 찾아보기';
	@override String titleCount({required Object count}) => '${count} 타이틀';
	@override String get topRated => '최고 평점';
	@override String get mostWatched => '라이브러리에서 가장 많이 시청한 콘텐츠';
	@override String get collection => '스튜디오 컬렉션';
	@override String loadedTitles({required Object count}) => '${count} 타이틀 로드됨';
	@override String get sort => '제목 정렬';
	@override String get sortTitleAscending => '제목 A~Z';
	@override String get sortTitleDescending => '타이틀 Z–A';
	@override String get sortNewest => '최신 릴리스';
	@override String get sortOldest => '가장 오래된 릴리스';
	@override String get sortAdded => '최근 추가됨';
	@override String get sortEpisodeAdded => '최근 추가된 에피소드';
	@override String get sortRating => '최고 평점';
	@override String get title => '스튜디오별로 찾아보기';
	@override String get all => '모두';
	@override String get movies => '영화';
	@override String get shows => 'TV 프로그램';
	@override String get loadMore => '더 많은 타이틀 로드';
	@override String get empty => '현재 표시되는 라이브러리에 일치하는 제목이 없습니다.';
	@override String get retry => '더 많은 타이틀을 로드할 수 없습니다. 다시 시도하려면 선택하세요.';
	@override String get description => '라이브러리에서 이 스튜디오의 영화와 프로그램을 탐색해 보세요.';
}

// Path: dashboard
class _Translations$dashboard$ko extends Translations$dashboard$en {
	_Translations$dashboard$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get previousFeature => '이전 추천 제목';
	@override String get nextFeature => '다음 추천 타이틀';
	@override String get cinemaHome => '홈';
	@override String get episodeFallback => 'TV 에피소드';
	@override String timeLeft({required Object minutes}) => '${minutes}분 남음';
	@override String timeLeftHours({required Object hours, required Object minutes}) => '${hours}시간 ${minutes}분 남음';
	@override String get spoilerHidden => '스포일러 기본 설정에 따라 에피소드 세부 정보가 숨겨집니다.';
	@override String get synopsisUnavailable => '이 타이틀에 대한 자세한 내용을 보려면 세부정보를 엽니다.';
	@override String get yourSpace => '당신의 공간';
	@override String get title => '당신의 영화관.';
	@override String get subtitle => '이야기를 이어서 보거나 다음 이야기를 찾아보세요.';
	@override String get featured => 'LUROKA 추천';
	@override String get jumpBackIn => '이어서 시청하기';
	@override String episodeLabel({required Object season, required Object episode}) => 'S${season} · E${episode}';
	@override String get anotherPick => '또 다른 선택';
	@override String get exploreSeries => '시리즈 살펴보기';
	@override String get showFeatured => '홈 스포트라이트';
	@override String get showFeaturedDescription => '홈 상단에 추천 영화와 프로그램을 표시합니다.';
}

// Path: lurokaCatalog
class _Translations$lurokaCatalog$ko extends Translations$lurokaCatalog$en {
	_Translations$lurokaCatalog$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get aboutPerson => '스포트라이트에서';
	@override String get biographyUnavailable => '이 서버에서는 전기를 사용할 수 없습니다.';
	@override String get filmography => '라이브러리의 영화 및 프로그램';
	@override String get recommended => '추천';
	@override String get browse => '모든 타이틀';
	@override String get collections => '컬렉션';
	@override String get browseHint => '카탈로그를 살펴보세요. 필터와 정렬을 사용하여 선택 항목의 모양을 지정하세요.';
	@override String get recommendedHint => '다음 이야기를 찾아보세요';
	@override String get details => '비하인드 스토리';
}

// Path: referenceDetails
class _Translations$referenceDetails$ko extends Translations$referenceDetails$en {
	_Translations$referenceDetails$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get oneEpisodeLeft => '1회 남았습니다';
	@override String get playAll => '모두 재생';
	@override String get present => '현재';
	@override String get continuing => '계속';
	@override String get upNext => '다음';
	@override String episodesLeft({required Object count}) => '${count} 에피소드 남음';
}

// Path: lurokaThemes
class _Translations$lurokaThemes$ko extends Translations$lurokaThemes$en {
	_Translations$lurokaThemes$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Luroka 시네마 팔레트';
	@override String get coral => '코럴 · 미드나잇 블루 & 선셋';
	@override String get ocean => '바다 · 딥 블루 & 아이스';
	@override String get jade => '제이드 · 에버그린 & 민트';
	@override String get amethyst => '자수정 · 미드나잇 바이올렛';
	@override String get darkThemes => '어두운 영화 테마';
	@override String get lightThemes => '가벼운 영화 테마';
	@override String get moreThemes => '더 많은 테마';
	@override String get moreThemesDescription => '추가 팔레트 및 사용자 정의 색상 찾아보기';
	@override String get obsidian => '흑요석 · 퓨어 블랙 & 샴페인';
	@override String get nocturne => '녹턴 · 숯 & 샴페인';
	@override String get burgundy => '버건디 · 벨벳 와인 & 로즈';
	@override String get slate => '슬레이트 · 흑연 & 대수리';
	@override String get espresso => '에스프레소 · 코코아 & 카라멜';
	@override String get pearl => '진주 · 도자기 & 사파이어';
	@override String get linen => '린넨 · 따뜻한 아이보리 & 테라코타';
	@override String get sunrise => '일출 · 복숭아 & 산호';
	@override String get coastal => '해안 · 안개 & 바다 청록색';
	@override String get latte => '라떼 · 크림 & 카라멜';
	@override String get sage => '세이지 · 소프트 그린 & 유칼립투스';
	@override String get lavender => '라벤더 · 라일락 & 딥 바이올렛';
}

// Path: customPerformance
class _Translations$customPerformance$ko extends Translations$customPerformance$en {
	_Translations$customPerformance$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '성능 및 효과';
	@override String get fireStickMode => '저전력 장치 모드';
	@override String get description => '감소된 효과, 정적 배경, 720p로 제한된 아트워크 및 40MiB 이미지 캐시를 사용하세요. 활성화된 동안 이는 시각 효과를 재정의합니다. 이 기능을 끄면 시각 효과 기본 설정이 복원됩니다.';
	@override String get detailsTitle => '성능 세부정보';
	@override String get details => '활성 효과, 이미지 캐시 제한 및 검색 성능 측정';
	@override String get effectsTier => '활성 효과 등급';
	@override String get imageCache => '이미지 캐시 제한';
	@override String get measurement => '브라우징 측정';
	@override String get measureInstructions => '20초 샘플을 시작하고 홈으로 돌아가서 리모컨을 사용하여 탐색하세요. 결과를 보려면 여기로 돌아오세요. 모드를 켜고 끄고 동일한 작업을 반복하여 비교하세요. 이는 비디오 디코더 성능이 아닌 Flutter UI 작업을 측정합니다.';
	@override String get startSample => '20초 샘플 시작';
	@override String get stopSample => '지금 샘플 완료';
	@override String get sampling => '샘플링 — 홈으로 돌아가 탐색합니다. 결과는 여기에 보관됩니다.';
	@override String get frames => '샘플링된 프레임';
	@override String get slowFrames => '예산 초과 프레임';
	@override String get buildP95 => 'UI 빌드 시간(95번째 백분위수)';
	@override String get rasterP95 => '래스터 시간(95번째 백분위수)';
	@override String get frameBudget => '프레임당 예산';
	@override String get processMemory => '샘플 종료 시 앱 프로세스 메모리';
	@override String get noFrames => '렌더링된 프레임이 캡처되지 않았습니다. 다른 샘플을 시작하고 앱을 찾아보세요.';
}

// Path: homeLayout
class _Translations$homeLayout$ko extends Translations$homeLayout$en {
	_Translations$homeLayout$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get manageStudios => '스튜디오 선택 및 주문';
	@override String get manageStudiosDescription => '이 프로필에 표시할 스튜디오를 선택하고 순서를 조정하세요.';
	@override String get studioUnavailable => '선택한 라이브러리에 있는 스튜디오만 홈에 표시됩니다.';
	@override String get showAllStudios => '모든 스튜디오 보기';
	@override String get hideAllStudios => '모든 스튜디오 숨기기';
	@override String get reorderStudio => '스튜디오 순서 변경';
	@override String get episodeThumbnails => '계속 시청의 에피소드 이미지';
	@override String get episodeThumbnailsDescription => '계속 시청 및 다음편에서 시리즈나 시즌 포스터 대신 에피소드 이미지를 표시하세요.';
	@override String get spotlightSource => '추천 콘텐츠 소스';
	@override String get spotlightSourceDescription => 'For You는 즐겨찾기 및 라이브러리 제목과 함께 이 기기에서 이 프로필의 시청 활동을 사용합니다.';
	@override String get spotlightForYou => '당신을 위해';
	@override String get spotlightForYouDescription => '이 기기에서 이 프로필의 시청 활동을 사용하여 시청 중인 콘텐츠, 즐겨찾기, 새로운 추가 항목 및 트렌드가 혼합되어 있습니다.';
	@override String get spotlightTrending => '인기 급상승';
	@override String get spotlightTrendingDescription => '라이브러리에 있는 인기 영화와 프로그램.';
	@override String get spotlightContinue => '계속 시청하기';
	@override String get spotlightContinueDescription => '시작한 타이틀과 계속할 수 있는 에피소드.';
	@override String get spotlightFavorites => '즐겨찾기에서';
	@override String get spotlightInspired => '귀하의 시청에서 영감을 얻었습니다.';
	@override String get spotlightNextUp => '다음은';
	@override String get title => '홈 개인화';
	@override String get description => '이 프로필의 행 순서와 공개 여부를 선택하세요. 이동하거나 숨기려면 행을 선택하세요.';
	@override String get rows => '홈 행';
	@override String get progressLayout => '계속해서 시청하고 다음 단계를 진행하세요';
	@override String get progressCombined => '한 줄로 결합';
	@override String get progressSeparate => '별도의 행';
	@override String get progressDescription => '서버에서 지원하는 경우 Next Up을 분리하세요. 다른 서버는 결합된 상태로 유지됩니다.';
	@override String get visible => '보이는';
	@override String get hidden => '숨겨진';
	@override String get showRow => '행 표시';
	@override String get hideRow => '행 숨기기';
	@override String get moveUp => '위로 이동';
	@override String get moveDown => '아래로 이동';
	@override String get pinnedCollections => '고정된 컬렉션';
	@override String get pinInstructions => '컬렉션 메뉴를 열고 Pin를 홈으로 선택하세요. 바로가기를 제거하려면 여기에서 고정된 컬렉션을 선택하세요.';
	@override String get pinCollection => 'Pin-홈';
	@override String get unpinCollection => '집에서 고정 해제';
	@override String get reset => '기본 행 복원';
	@override String get resetDescription => '원래 행 순서를 복원하고 이 프로필의 모든 행을 표시하시겠습니까? 고정된 컬렉션은 보관됩니다.';
	@override String get saveFailed => '집 레이아웃을 저장할 수 없습니다. 다시 시도해 주세요.';
	@override String get emptyHint => '행이 숨겨질 수 있습니다. 홈 개인화를 열어 다시 표시하세요.';
}

// Path: screenTime
class _Translations$screenTime$ko extends Translations$screenTime$en {
	_Translations$screenTime$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '화면 시간';
	@override String get description => '이 프로필에서 동영상 시청에 소요된 시간을 확인하세요.';
	@override String get today => '오늘';
	@override String get thisWeek => '이번 주';
	@override String get thisMonth => '이번 달';
	@override String get lessThanMinute => '< 1분';
	@override String minutes({required Object count}) => '${count} 분';
	@override String hours({required Object count}) => '${count}시간';
	@override String hoursMinutes({required Object hours, required Object minutes}) => '${hours}시간 ${minutes}분';
}

// Path: activityStats
class _Translations$activityStats$ko extends Translations$activityStats$en {
	_Translations$activityStats$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '통계 보기';
	@override String get period => '기간';
	@override String get last7Days => '7일';
	@override String get last30Days => '30일';
	@override String get last90Days => '90일';
	@override String get thisYear => '연도';
	@override String get allTime => '모두';
	@override String get heroAllTime => '모든 시간';
	@override String get heroDailyAverage => '일일 평균';
	@override String get consistency => '일관성';
	@override String get currentStreak => '현재 연속';
	@override String dayCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n,
		one: '${n}​일',
		other: '${n}일',
	);
	@override String get longestStreak => '최장 연속 행진';
	@override String get bestDay => '최고의 날';
	@override String get bestWeek => '최고의 주';
	@override String get trendTitle => '시청 시간';
	@override String get trendToday => '오늘';
	@override String gapDetail({required Object range, required Object stat}) => '${range}의 ${stat}';
	@override String get patternsTitle => '당신의 패턴';
	@override String mostlyKind({required Object kind}) => '주로 ${kind}';
	@override String get weekdayTitle => '평일 기준';
	@override String get hoursTitle => '시간대별';
	@override String get amLabel => '오전';
	@override String get pmLabel => '오후';
	@override String get kindsTitle => '카테고리별';
	@override String get kindMovie => '영화';
	@override String get kindTv => 'TV';
	@override String get kindLiveTv => '라이브 TV';
	@override String get kindMusic => '음악';
	@override String get kindOther => '기타';
	@override String get topTitlesTitle => '가장 많이 본';
	@override String get sessionsTitle => '최근 세션';
	@override String get recentViewingTitle => '최근 시청';
	@override String get recentViewingHint => '선택한 기간 동안 시청한 총 시간입니다. 날짜는 최근 시청 횟수를 보여줍니다.';
	@override String get showMore => '더 보기';
	@override String get sessionNoTitle => '미확인 재생';
	@override String get emptyTitle => '아직 아무것도 없습니다';
	@override String get emptyBody => '무언가를 시청하면 여기에 통계가 쌓일 것입니다.';
	@override String get noDataInPeriod => '이 기간에는 재생이 기록되지 않습니다.';
}

// Path: search
class _Translations$search$ko extends Translations$search$en {
	_Translations$search$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get hint => '영화, 시리즈, 음악 등을 검색하세요...';
	@override String get tryDifferentTerm => '다른 검색어를 시도해 보세요';
	@override String get searchYourMedia => '미디어 검색';
	@override String get enterTitleActorOrKeyword => '제목, 배우 또는 키워드를 입력하세요';
	@override String get people => '사람';
	@override String get recentSearches => '최근 검색어';
	@override String get clearHistory => '기록 지우기';
}

// Path: hotkeys
class _Translations$hotkeys$ko extends Translations$hotkeys$en {
	_Translations$hotkeys$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String setShortcutFor({required Object actionName}) => '${actionName}에 대한 단축키 설정';
	@override String get clearShortcut => '단축키 삭제';
	@override String get noShortcutSet => '설정된 단축키 없음';
	@override String get currentShortcut => '현재 단축키:';
	@override String get pressToRecord => '단축키를 기록하려면 선택';
	@override String get recordingShortcut => '지금 단축키를 누르세요';
	@override late final _Translations$hotkeys$actions$ko actions = _Translations$hotkeys$actions$ko._(_root);
}

// Path: fileInfo
class _Translations$fileInfo$ko extends Translations$fileInfo$en {
	_Translations$fileInfo$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '파일 정보';
	@override String get overview => '개요';
	@override String get video => '비디오';
	@override String get audio => '오디오';
	@override String get subtitles => '자막';
	@override String get images => '내장 이미지';
	@override String get dataStreams => '데이터 스트림';
	@override String get lyrics => '가사';
	@override String get file => '파일';
	@override String get attachments => '첨부 파일';
	@override String get delivery => '재생 방식';
	@override String versionCounter({required Object index, required Object count}) => '버전 ${index} / ${count}';
	@override String fileCounter({required Object index, required Object count}) => '파일 ${index} / ${count}';
	@override String get noStreams => '서버에서 이 파일에 대한 스트림 정보를 보고하지 않았습니다.';
	@override String get copyPath => '경로 복사';
	@override String get pathCopied => '파일 경로가 복사되었습니다';
	@override String get codec => '코덱';
	@override String get codecTag => '코덱 태그';
	@override String get resolution => '해상도';
	@override String get codedResolution => '코딩 해상도';
	@override String get bitrate => '비트레이트';
	@override String get frameRate => '프레임 속도';
	@override String get rotation => '회전';
	@override String get comment => '주석';
	@override String get audioDescription => '오디오 설명';
	@override String get headerCompression => '헤더 압축';
	@override String get sidecarFile => '사이드카 파일';
	@override String get transportTimestamp => '전송 타임스탬프';
	@override String get displayOffset => '표시 오프셋';
	@override String get previewFailureCode => '미리보기 오류 코드';
	@override String get previewRetries => '미리보기 재시도 횟수';
	@override String get aspectRatio => '종횡비';
	@override String get pixelAspectRatio => '픽셀 종횡비';
	@override String get profile => '프로파일';
	@override String get level => '레벨';
	@override String get bitDepth => '비트 심도';
	@override String get pixelFormat => '픽셀 포맷';
	@override String get colorSpace => '색 공간';
	@override String get colorRange => '색 범위';
	@override String get colorPrimaries => '색 원색';
	@override String get colorTransfer => '색상 전송';
	@override String get chromaSubsampling => '색차 서브샘플링';
	@override String get chromaLocation => '크로마 위치';
	@override String get scanType => '주사 방식';
	@override String get interlaced => '비월 주사';
	@override String get anamorphic => '아나모픽';
	@override String get referenceFrames => '참조 프레임';
	@override String get dynamicRange => '동적 범위';
	@override String get dolbyVision => 'Dolby Vision';
	@override String get dolbyVisionLevel => 'Dolby Vision 레벨';
	@override String get dolbyVisionVersion => 'Dolby Vision 버전';
	@override String get dolbyVisionLayers => 'Dolby Vision 레이어';
	@override String get baseLayerCompatibility => '베이스 레이어 호환성';
	@override String get avcBitstream => 'AVC 비트스트림';
	@override String get nalLengthSize => 'NAL 길이 크기';
	@override String get scalingMatrix => '사용자 지정 스케일링 매트릭스';
	@override String get streamIdentifier => '스트림 식별자';
	@override String get streamIndex => '스트림 인덱스';
	@override String get streamId => '스트림 ID';
	@override String get language => '언어';
	@override String get languageCode => '언어 코드';
	@override String get streamTitle => '트랙 제목';
	@override String get channels => '채널';
	@override String get sampleRate => '샘플 레이트';
	@override String get spatialAudio => '공간 오디오';
	@override String get textBased => '텍스트 기반';
	@override String get subtitleFormat => '사이드카 포맷';
	@override String get provider => '제공자';
	@override String get matchScore => '일치 점수';
	@override String get externalDelivery => '별도 제공 가능';
	@override String get sidecarPath => '사이드카 경로';
	@override String get sourceStream => '복사 출처';
	@override String get temporary => '임시';
	@override String get timeBase => '시간 기준';
	@override String get overallBitrate => '전체 비트레이트';
	@override String get path => '경로';
	@override String get fileName => '파일 이름';
	@override String get size => '크기';
	@override String get totalSize => '총 크기';
	@override String get container => '컨테이너';
	@override String get duration => '재생 시간';
	@override String get previewThumbnails => '미리보기 썸네일';
	@override String get previewIndex => '미리보기 인덱스';
	@override String get packetLength => '패킷 길이';
	@override String get filePresent => '파일 있음';
	@override String get fileReadable => '서버에서 읽기 가능';
	@override String get streamPath => '스트림 경로';
	@override String get optimizedForStreaming => '스트리밍 최적화';
	@override String get has64bitOffsets => '64비트 오프셋';
	@override String get protocol => '프로토콜';
	@override String get mediaType => '미디어 유형';
	@override String get sourceKind => '소스 종류';
	@override String get optimizedVersion => '최적화 버전';
	@override String get optimizationTarget => '최적화 대상';
	@override String get deletedAt => '삭제됨';
	@override String get remoteSource => '원격 소스';
	@override String get infiniteStream => '무한 스트림';
	@override String get directPlay => 'Direct Play';
	@override String get directStream => 'Direct Stream';
	@override String get transcoding => '트랜스코딩';
	@override String get etag => 'ETag';
	@override String get versionId => '버전 ID';
	@override String get fileId => '파일 ID';
	@override String get defaultAudioTrack => '기본 오디오 트랙';
	@override String get defaultSubtitleTrack => '기본 자막 트랙';
	@override String get subtitlesOff => '꺼짐';
	@override String get flagDefault => '기본';
	@override String get flagForced => '강제';
	@override String get flagSelected => '선택됨';
	@override String get flagExternal => '외부';
	@override String get flagHearingImpaired => '청각 장애인용';
	@override String get flagDub => '더빙';
	@override String get flagOriginal => '원본';
	@override String get channelsMono => '모노';
	@override String dolbyVisionProfile({required Object profile}) => '프로파일 ${profile}';
}

// Path: mediaMenu
class _Translations$mediaMenu$ko extends Translations$mediaMenu$en {
	_Translations$mediaMenu$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get markAsWatched => '시청 완료로 표시';
	@override String get markAsUnwatched => '미시청으로 표시';
	@override String get clearProgress => '진행상황 지우기';
	@override String get removeFromContinueWatching => '계속 보기에서 제거';
	@override String get viewDetails => '상세 정보 보기';
	@override String get goToSeries => '시리즈로 이동';
	@override String get shufflePlay => '무작위 재생';
	@override String get shuffleNotAvailableOffline => '오프라인에서는 무작위 재생을 사용할 수 없습니다';
	@override String get fileInfo => '파일 정보';
	@override String get deleteEpisodeFromServer => '서버에서 에피소드 삭제';
	@override String get deleteSeasonFromServer => '서버에서 시즌 삭제';
	@override String get deleteShowFromServer => '서버에서 프로그램 삭제';
	@override String get deleteMovieFromServer => '서버에서 영화 삭제';
	@override String get deleteEpisodeTitle => '이 에피소드를 삭제할까요?';
	@override String get deleteSeasonTitle => '이 시즌을 삭제할까요?';
	@override String get deleteShowTitle => '이 프로그램을 삭제할까요?';
	@override String get deleteMovieTitle => '이 영화를 삭제할까요?';
	@override String get deleteEpisodeConfirm => '에피소드 삭제';
	@override String get deleteSeasonConfirm => '시즌 삭제';
	@override String get deleteShowConfirm => '프로그램 삭제';
	@override String get deleteMovieConfirm => '영화 삭제';
	@override String get deleteAnyway => '그래도 삭제';
	@override String confirmDeleteTarget({required Object title}) => '서버에서 ${title}을(를) 영구 삭제할까요?';
	@override String get deleteMultipleWarning => '모든 에피소드와 파일이 포함됩니다.';
	@override String deleteEpisodeCountWarning({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n,
		one: '이렇게 하면 포함된 모든 ${n} 에피소드와 해당 파일이 삭제됩니다.',
		other: '포함된 에피소드 ${n}개와 해당 파일이 모두 삭제됩니다.',
	);
	@override String deleteMultiPartWarning({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n,
		one: '이 항목은 ${n} 파일로 저장되며 삭제됩니다.',
		other: '이 항목은 파일 ${n}개에 걸쳐 저장되어 있으며, 모든 파일이 삭제됩니다.',
	);
	@override String deleteSharedFileHeading({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n,
		one: '${n} 다른 에피소드도 동일한 파일에 저장되며 삭제됩니다.',
		other: '같은 파일에 저장된 다른 에피소드 ${n}개도 함께 삭제됩니다:',
	);
	@override String get deleteScopeUnverifiedProbeFailed => 'Luroka가 어떤 파일이 삭제될지 확인하지 못해 위 항목보다 더 많은 파일이 삭제될 수 있습니다. 취소하고 다시 시도하거나 그래도 삭제하세요.';
	@override String get deleteScopeUnverifiedNoFileInfo => '서버가 이 항목의 파일 정보를 제공하지 않아 Luroka가 어떤 파일이 삭제될지 확인할 수 없습니다. 위 항목보다 더 많은 파일이 삭제될 수 있습니다.';
	@override String get mediaDeletedSuccessfully => '미디어 항목이 성공적으로 삭제되었습니다';
	@override String get mediaFailedToDelete => '미디어 항목 삭제 실패';
	@override String get rate => '평가';
	@override String get playFromBeginning => '처음부터 재생';
	@override String get playVersion => '버전 재생...';
}

// Path: rateSheet
class _Translations$rateSheet$ko extends Translations$rateSheet$en {
	_Translations$rateSheet$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '평가';
	@override String get server => '서버';
	@override String get favorite => '즐겨찾기';
	@override String get favorited => '즐겨찾기됨';
	@override String get saved => '저장됨';
	@override String get notAvailable => '일치 항목 없음';
	@override String get noConnectedServices => '평가하려면 설정에서 서비스를 연결하세요.';
}

// Path: accessibility
class _Translations$accessibility$ko extends Translations$accessibility$en {
	_Translations$accessibility$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String mediaCardMovie({required Object title}) => '${title}, 영화';
	@override String mediaCardShow({required Object title}) => '${title}, TV 프로그램';
	@override String mediaCardEpisode({required Object title, required Object episodeInfo}) => '${title}, ${episodeInfo}';
	@override String mediaCardSeason({required Object title, required Object seasonInfo}) => '${title}, ${seasonInfo}';
	@override String get mediaCardWatched => '시청 완료';
	@override String mediaCardPartiallyWatched({required Object percent}) => '${percent}% 시청 완료';
	@override String get mediaCardUnwatched => '미시청';
	@override String get tapToPlay => '탭하여 재생';
	@override String get decrease => '낮추기';
	@override String get increase => '높이기';
	@override String decreaseValue({required Object label}) => '${label} 낮추기';
	@override String increaseValue({required Object label}) => '${label} 높이기';
	@override String get hue => '색조';
	@override String get saturation => '채도';
	@override String get brightness => '밝기';
	@override String get hexColor => '16진수 색상';
	@override String get expandText => '텍스트 펼치기';
	@override String get collapseText => '텍스트 접기';
	@override String get alphabetNavigation => '알파벳 탐색';
	@override String get alphabetScrollHint => '위아래로 스와이프하여 글자별로 이동';
	@override String rowColumnPosition({required Object rowCount, required Object row, required Object columnCount, required Object column}) => '${rowCount}행 중 ${row}행, ${columnCount}열 중 ${column}열';
	@override String rowPosition({required Object rowCount, required Object row}) => '${rowCount}행 중 ${row}행';
	@override String get autoScrollPlay => '자동 스크롤 재생';
	@override String get autoScrollPause => '자동 스크롤 일시정지';
	@override String get hueShort => 'H';
	@override String get saturationShort => 'S';
	@override String get valueShort => 'V';
}

// Path: tooltips
class _Translations$tooltips$ko extends Translations$tooltips$en {
	_Translations$tooltips$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get shufflePlay => '무작위 재생';
	@override String get playTrailer => '예고편 재생';
	@override String get markAsWatched => '시청 완료로 표시';
	@override String get markAsUnwatched => '미시청으로 표시';
}

// Path: audioTracks
class _Translations$audioTracks$ko extends Translations$audioTracks$en {
	_Translations$audioTracks$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String track({required Object n}) => '오디오 트랙 ${n}';
}

// Path: videoControls
class _Translations$videoControls$ko extends Translations$videoControls$en {
	_Translations$videoControls$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get audioLabel => '오디오';
	@override String get subtitlesLabel => '자막';
	@override String addTime({required Object amount, required Object unit}) => '+${amount}${unit}';
	@override String get letterbox => '레터박스 모드';
	@override String get fillScreen => '화면 채우기';
	@override String get stretch => '확장';
	@override String get lockRotation => '회전 잠금';
	@override String get unlockRotation => '회전 잠금 해제';
	@override String get timerActive => '타이머 활성화됨';
	@override String playbackWillPauseIn({required Object duration}) => '${duration} 후 재생이 일시정지됩니다';
	@override String get sleepTimerEndOfVideo => '현재 비디오의 끝';
	@override String get sleepTimerStopAtHeader => '정지 시점';
	@override String get sleepTimerDurationHeader => '타이머';
	@override String get playbackWillPauseAtEnd => '재생이 이 비디오의 끝에서 일시 중지됩니다';
	@override String get stillWatching => '아직 시청 중이신가요?';
	@override String pausingIn({required Object seconds}) => '${seconds}초 후 일시 정지';
	@override String get continueWatching => '계속';
	@override String get autoPlayNext => '다음 자동 재생';
	@override String get playNext => '다음 재생';
	@override String get playButton => '재생';
	@override String get pauseButton => '일시정지';
	@override String get playbackPaused => '일시정지됨';
	@override String get playbackResumed => '재생 중';
	@override String get loadingVideo => '동영상 로딩 중...';
	@override String get showPlaybackControls => '재생 컨트롤 표시';
	@override String get hidePlaybackControls => '재생 컨트롤 숨기기';
	@override String seekBackwardButton({required Object seconds}) => '${seconds}초 뒤로 이동';
	@override String seekForwardButton({required Object seconds}) => '${seconds}초 앞으로 이동';
	@override String get previousButton => '이전 에피소드';
	@override String get nextButton => '다음 에피소드';
	@override String get previousChapterButton => '이전 챕터';
	@override String get nextChapterButton => '다음 챕터';
	@override String get muteButton => '음소거';
	@override String get unmuteButton => '음소거 해제';
	@override String get settingsButton => '재생 설정';
	@override String get infoButton => '정보';
	@override String get tracksButton => '오디오 및 자막';
	@override String get chaptersButton => '챕터';
	@override String get versionQualityButton => '버전 및 화질';
	@override String get versionColumnHeader => '버전';
	@override String get qualityColumnHeader => '화질';
	@override String get qualityOriginal => '원본';
	@override String qualityPresetLabel({required Object resolution, required Object bitrate}) => '${resolution}p ${bitrate} Mbps';
	@override String get transcodeUnavailableFallback => '트랜스코딩을 사용할 수 없음 — 원본 화질로 재생';
	@override String get subtitleUnavailableFallback => '선택한 자막을 불러올 수 없어 자막 없이 재생을 계속합니다';
	@override String get pipButton => '픽처 인 픽처 모드';
	@override String get aspectRatioButton => '화면비율';
	@override String get ambientLighting => '주변 조명';
	@override String get fullscreenButton => '전체 화면';
	@override String get exitFullscreenButton => '전체 화면 종료';
	@override String get alwaysOnTopButton => '창 최상위 고정';
	@override String get rotationLockButton => '회전 잠금';
	@override String get lockScreen => '화면 잠금';
	@override String get screenLockButton => '화면 잠금';
	@override String get longPressToUnlock => '길게 눌러 잠금 해제';
	@override String get timelineSlider => '타임라인';
	@override String get volumeSlider => '볼륨 조절';
	@override String endsAt({required Object time}) => '${time}에 종료';
	@override String get pipActive => '화면 속 화면으로 재생 중';
	@override String get pipFailed => '화면 속 화면 모드를 시작할 수 없습니다';
	@override String get screenshotSaved => '스크린샷 저장됨';
	@override String get screenshotFailed => '스크린샷을 찍을 수 없습니다.';
	@override String zoomPercent({required Object percent}) => '확대/축소 ${percent}%';
	@override String volumePercent({required Object percent}) => '볼륨 ${percent}%';
	@override late final _Translations$videoControls$pipErrors$ko pipErrors = _Translations$videoControls$pipErrors$ko._(_root);
	@override String get chapters => '챕터';
	@override String get noChaptersAvailable => '사용 가능한 챕터가 없습니다';
	@override String get queue => '재생 대기열';
	@override String get noQueueItems => '대기열에 항목이 없습니다';
	@override String get noAudioDevicesAvailable => '사용 가능한 오디오 기기가 없습니다';
	@override String get searchSubtitles => '자막 검색';
	@override String get language => '언어';
	@override String get noSubtitlesFound => '자막을 찾을 수 없습니다';
	@override String get subtitleDownloaded => '자막이 다운로드되었습니다';
	@override String get subtitleDownloadedNotApplied => '자막을 다운로드했지만 선택할 수 없습니다';
	@override String get subtitleDownloadFailed => '자막 다운로드에 실패했습니다';
	@override String get searchLanguages => '언어 검색...';
	@override String get skipIntro => '인트로 건너뛰기';
	@override String get skipCredits => '크레딧 건너뛰기';
	@override String get nextEpisode => '다음 에피소드';
	@override String subtitleTrack({required Object n}) => '트랙 ${n}';
	@override String subtitleFile({required Object name}) => '자막 ${name}';
	@override String forcedTrack({required Object label}) => '${label} (강제)';
	@override String get osdSubtitlesOff => '자막: 꺼짐';
	@override String osdSubtitles({required Object track}) => '자막: ${track}';
	@override String osdAudio({required Object track}) => '오디오: ${track}';
}

// Path: messages
class _Translations$messages$ko extends Translations$messages$en {
	_Translations$messages$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get markedAsWatched => '시청 완료로 표시됨';
	@override String get markedAsUnwatched => '미시청으로 표시됨';
	@override String get markedAsWatchedOffline => '시청 완료로 표시됨 (연결 시 동기화됨)';
	@override String get markedAsUnwatchedOffline => '미시청으로 표시됨 (연결 시 동기화됨)';
	@override String autoRemovedWatchedDownload({required Object title}) => '자동 삭제됨: ${title}';
	@override String autoRemovedWatchedDownloads({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n,
		one: '자동 제거된 ${n} 시청 다운로드',
		other: '시청한 다운로드 ${n}개를 자동 삭제했습니다',
	);
	@override String get removedFromContinueWatching => '계속 시청 목록에서 제거됨';
	@override String errorLoading({required Object error}) => '오류: ${error}';
	@override String get searchPartialResults => '일부 미디어 서버를 검색하지 못했습니다. 사용 가능한 결과만 표시합니다.';
	@override String get streamInterrupted => '스트림이 중단되었습니다. 재생을 누르거나 탐색하여 다시 시도하세요.';
	@override String get liveStreamInterrupted => '라이브 스트림이 중단되었습니다. 재생을 눌러 다시 시도하세요.';
	@override String get fileInfoNotAvailable => '파일 정보가 없습니다';
	@override String get playbackAuthenticationRequired => '이 항목을 재생하려면 미디어 서버에 다시 로그인하세요.';
	@override String get playbackServerUnavailable => '미디어 서버를 사용할 수 없습니다. 나중에 다시 시도하세요.';
	@override String get playbackDataInvalid => '서버에서 잘못된 재생 정보를 반환했습니다.';
	@override String get playbackCancelled => '재생이 취소되었습니다.';
	@override String get playbackFailed => '재생을 시작할 수 없습니다.';
	@override String playbackFailedDetail({required Object error}) => '재생을 시작할 수 없습니다: ${error}';
	@override String get audioOutputFailed => '오디오 출력이 응답하지 않습니다. TV 또는 리시버의 오디오 연결을 확인하세요. 다른 앱에서도 소리가 나지 않으면 기기를 재시작하세요.';
	@override String get mediaUnavailable => '이 콘텐츠는 더 이상 사용할 수 없습니다.';
	@override String errorLoadingFileInfo({required Object error}) => '파일 정보 로딩 중 오류: ${error}';
	@override String get errorLoadingSeries => '시리즈 로딩 중 오류';
	@override String get musicNotSupported => '음악 재생 미지원';
	@override String get noDescriptionAvailable => '설명이 없습니다';
	@override String get noProfilesAvailable => '사용 가능한 프로필이 없습니다';
	@override String get contactAdminForProfiles => '프로필을 추가하려면 서버 관리자에게 문의하세요';
	@override String get unableToDetermineLibrarySection => '이 항목의 라이브러리 섹션을 확인할 수 없습니다';
	@override String get logsCleared => '로그가 삭제되었습니다';
	@override String get logsCopied => '로그가 클립보드에 복사되었습니다';
	@override String get noLogsAvailable => '사용 가능한 로그가 없습니다';
	@override String libraryScanning({required Object title}) => '"${title}"을(를) 스캔 중입니다...';
	@override String libraryScanStarted({required Object title}) => '"${title}" 미디어 라이브러리 스캔 시작';
	@override String libraryScanFailed({required Object error}) => '미디어 라이브러리 스캔 실패: ${error}';
	@override String metadataRefreshing({required Object title}) => '"${title}" 메타데이터 새로고침 중...';
	@override String metadataRefreshStarted({required Object title}) => '"${title}" 메타데이터 새로고침 시작됨';
	@override String metadataRefreshFailed({required Object error}) => '메타데이터 새로고침 실패: ${error}';
	@override String get logoutConfirm => '로그아웃하시겠습니까?';
	@override String get logoutDeviceConfirm => '이 기기의 Luroka에서 로그아웃하시겠습니까? 키즈 프로필, 서버 계정, 다운로드한 미디어를 포함한 모든 프로필이 이 기기에서 삭제됩니다. 나중에 다시 로그인할 수 있습니다.';
	@override String get noSeasonsFound => '시즌을 찾을 수 없음';
	@override String get seasonsLoadFailed => '시즌을 불러오지 못했습니다';
	@override String get noEpisodesFound => '시즌 1에서 에피소드를 찾을 수 없습니다';
	@override String get noEpisodesFoundGeneral => '에피소드를 찾을 수 없습니다';
	@override String get episodesLoadFailed => '에피소드를 불러오지 못했습니다';
	@override String get noResultsFound => '결과를 찾을 수 없습니다';
	@override String sleepTimerSet({required Object label}) => '취침 타이머가 ${label}(으)로 설정되었습니다';
	@override String get noItemsAvailable => '사용 가능한 항목이 없습니다';
	@override String get failedToCreatePlayQueueNoItems => '재생 대기열을 만들지 못했습니다 — 항목이 없습니다';
	@override String failedPlayback({required Object action, required Object error}) => '${action}을(를) 수행할 수 없습니다: ${error}';
	@override String get switchingToCompatiblePlayer => '호환되는 플레이어로 전환 중...';
	@override String get serverLimitTitle => '재생 실패';
	@override String get serverLimitBody => '서버 오류(HTTP 500). 대역폭/트랜스코딩 제한으로 세션이 거부된 것 같습니다. 소유자에게 조정을 요청하세요.';
	@override String get mediaUnreadableTitle => '파일을 사용할 수 없음';
	@override String get mediaUnreadableBody => '서버에서 이 항목을 찾았지만 파일을 읽을 수 없습니다(HTTP 404). 파일이 이동되거나 삭제되었거나 저장소가 오프라인 상태일 수 있습니다. 서버 관리자에게 파일 확인과 라이브러리 재스캔을 요청하세요.';
	@override String get serverBusyTitle => '스트림을 사용할 수 없음';
	@override String get serverBusyBody => '서버에서 이 파일의 스트리밍을 계속 거부했습니다(HTTP 503). 서버가 다시 시작 중이거나 사용량이 많을 수 있으며, 파일이 저장된 저장소가 오프라인일 수도 있습니다. 잠시 후 다시 시도하세요. 문제가 계속되면 서버 소유자에게 서버와 파일 저장소를 확인해 달라고 요청하세요.';
	@override String get playbackNotAllowedTitle => '재생이 허용되지 않음';
	@override String get playbackNotAllowedBody => '서버에서 이 항목의 스트리밍을 거부했습니다(HTTP 403). 계정에 재생 권한이 없거나 서버가 로컬 네트워크에서만 재생을 허용할 수 있습니다.';
	@override String get logsUploaded => '로그 업로드 완료';
	@override String get logsUploadFailed => '로그 업로드 실패';
	@override String get logId => '로그 ID';
	@override String get burnedSubtitlesUseMenu => '자막이 이 스트림에 입혀져 있습니다. 자막 메뉴에서 변경하세요.';
	@override String get noVideoUrl => '사용 가능한 비디오 URL이 없습니다';
	@override String get playbackNoMediaSources => '서버에서 재생 가능한 미디어 소스를 반환하지 않았습니다';
	@override String get playbackDataNotPrepared => '재생 데이터가 준비되기 전에 재생이 시작되었습니다';
	@override String get streamSelectionUnavailable => '이 소스에서는 스트림을 선택할 수 없습니다';
	@override String get streamSelectionFailed => '선택한 스트림을 적용할 수 없습니다';
	@override String get trackSelectionNotRemembered => '이 트랙 선택은 현재 재생에만 적용됩니다.';
	@override String get serverUnavailableForProfile => '활성 프로필에 사용할 수 있는 서버가 없습니다';
}

// Path: sourceLibraries
class _Translations$sourceLibraries$ko extends Translations$sourceLibraries$en {
	_Translations$sourceLibraries$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '서버 및 라이브러리';
	@override String get description => 'Luroka가 홈, 검색, 가용성 검색 및 스튜디오에 사용하는 라이브러리를 선택하세요. 홈 행 순서는 별도로 사용자 정의됩니다.';
	@override String get partial => '일부 서버를 확인할 수 없습니다. 해당 라이브러리에 대해 저장된 선택 사항은 유지됩니다. 다시 시도하려면 새로고침하세요.';
	@override String get loadFailed => '라이브러리를 로드할 수 없습니다. 연결을 확인하고 다시 시도해 보세요.';
	@override String get notSelected => '선택한 라이브러리에서는 사용할 수 없습니다.';
	@override String get checkOthers => '연결된 다른 소스 확인';
	@override String get otherSources => '연결된 다른 소스에서 사용 가능';
	@override String get playOnce => '한 번 플레이';
	@override String get includeLibrary => '이 라이브러리 포함';
	@override String get noOthers => '연결된 다른 소스에서 사본을 찾을 수 없습니다.';
	@override String get chooseOne => '계속하려면 라이브러리를 하나 이상 선택하세요.';
}

// Path: subtitlingStyling
class _Translations$subtitlingStyling$ko extends Translations$subtitlingStyling$en {
	_Translations$subtitlingStyling$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get text => '텍스트';
	@override String get border => '테두리';
	@override String get background => '배경';
	@override String get fontSize => '글자 크기';
	@override String get textColor => '텍스트 색상';
	@override String get borderSize => '테두리 크기';
	@override String get borderColor => '테두리 색상';
	@override String get backgroundOpacity => '배경 불투명도';
	@override String get backgroundColor => '배경색';
	@override String get position => '위치';
	@override String get assOverride => 'ASS 오버라이드';
	@override String get overrideScale => '크기 조정';
	@override String get overrideForce => '강제 적용';
	@override String get overrideStrip => '스타일 제거';
	@override String get positionTop => '위';
	@override String get positionBottom => '아래';
	@override String get useMargins => '여백 사용';
	@override String get useMarginsDescription => '텍스트 자막을 비디오 바깥 영역에 표시할 수 있습니다. 스타일이 적용된 자막은 원래 위치를 유지할 수 있습니다.';
	@override String get anchorToScreen => '화면에 고정';
	@override String get anchorToScreenDescription => '와이드스크린 비디오 아래의 검은 여백에 텍스트 자막을 표시합니다';
	@override String get bold => '굵게';
	@override String get italic => '기울임꼴';
	@override String get renderResolution => '렌더링 해상도';
	@override String get renderResolutionScreen => '화면 해상도';
	@override String get renderResolutionVideo => '영상 해상도';
}

// Path: mpvConfig
class _Translations$mpvConfig$ko extends Translations$mpvConfig$en {
	_Translations$mpvConfig$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => 'mpv.conf';
	@override String get description => '고급 비디오 플레이어 설정';
	@override String get presets => '프리셋';
	@override String get noPresets => '저장된 프리셋이 없습니다';
	@override String get saveAsPreset => '프리셋으로 저장...';
	@override String get presetName => '프리셋 이름';
	@override String get presetNameHint => '이 프리셋의 이름을 입력하세요';
	@override String get loadPreset => '불러오기';
	@override String get deletePreset => '삭제';
	@override String get presetSaved => '프리셋이 저장되었습니다';
	@override String get presetLoaded => '프리셋을 불러왔습니다';
	@override String get presetDeleted => '프리셋이 삭제되었습니다';
	@override String get confirmDeletePreset => '이 프리셋을 삭제하시겠습니까?';
	@override String get configPlaceholder => 'gpu-api=vulkan\nhwdec=auto\n# comment';
	@override String get lineHint => 'option=value';
	@override String get addLine => '줄 추가';
	@override String get removeLine => '줄 제거';
	@override String get embeddedVoHint => 'Linux에서는 vo, gpu-context, gpu-api가 무시됩니다. 내장 동영상은 항상 비디오 평면에서 vo=libmpv로 렌더링되며, gpu-next(ArtCNN 같은 컴퓨트 셰이더에 필요)는 내장 방식으로 실행할 수 없습니다.';
}

// Path: dialog
class _Translations$dialog$ko extends Translations$dialog$en {
	_Translations$dialog$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get confirmAction => '작업 확인';
}

// Path: profiles
class _Translations$profiles$ko extends Translations$profiles$en {
	_Translations$profiles$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get manageProfiles => '프로필 관리';
	@override String get quickAccess => '빠른 액세스';
	@override String get signOutDevice => '이 기기에서 로그아웃';
	@override String get addLurokaProfile => 'Luroka 프로필 추가';
	@override String get switchingProfile => '프로필 전환 중…';
	@override String get deleteThisProfileTitle => '이 프로필을 삭제하시겠습니까?';
	@override String deleteThisProfileMessage({required Object displayName}) => '${displayName}을(를) 제거합니다. 연결에는 영향이 없습니다.';
	@override String get active => '활성';
	@override String get manage => '관리';
	@override String get delete => '삭제';
	@override String get signOut => '로그아웃';
	@override String get signOutPlexTitle => 'Plex에서 로그아웃하시겠습니까?';
	@override String signOutPlexMessage({required Object displayName}) => '${displayName} 및 모든 Plex Home 사용자를 제거할까요? 언제든 다시 로그인할 수 있습니다.';
	@override String get signOutPlexDeleteDownloads => '다운로드 항목도 삭제';
	@override String get signOutPlexDeleteDownloadsDescription => '그렇지 않으면 이 장치에 남아 있다가 이 계정에 다시 로그인하면 다시 나타납니다.';
	@override String get signedOutPlex => 'Plex에서 로그아웃되었습니다.';
	@override String get signOutFailed => '로그아웃에 실패했습니다.';
	@override String get sectionTitle => '프로필';
	@override String get summarySingle => '관리되는 사용자와 로컬 ID를 혼합하려면 프로필을 추가하세요';
	@override String summaryMultipleWithActive({required Object count, required Object activeName}) => '${count}개 프로필 · 활성: ${activeName}';
	@override String summaryMultiple({required Object count}) => '${count}개 프로필';
	@override String get removeConnectionTitle => '연결을 제거하시겠습니까?';
	@override String removeConnectionMessage({required Object displayName, required Object connectionLabel}) => '${displayName}의 ${connectionLabel} 접근 권한을 제거합니다. 다른 프로필에는 유지됩니다.';
	@override String get deleteProfileTitle => '프로필을 삭제하시겠습니까?';
	@override String deleteProfileMessage({required Object displayName}) => '${displayName} 및 해당 연결을 제거합니다. 서버는 계속 사용할 수 있습니다.';
	@override String get profileNameLabel => '프로필 이름';
	@override String get pinProtectionLabel => 'PIN 보호';
	@override String get pinManagedByPlex => 'PIN은 Plex에서 관리됩니다. plex.tv에서 편집하세요.';
	@override String get noPinSetEditOnPlex => '설정된 PIN이 없습니다. 요구하려면 plex.tv에서 홈 사용자를 편집하세요.';
	@override String get setPin => 'PIN 설정';
	@override String get setPinTitle => 'PIN 설정';
	@override String get confirmPinTitle => 'PIN 확인';
	@override String get pinSet => 'PIN 설정됨';
	@override String get changePin => '변경';
	@override String get removePin => '제거';
	@override String get connectionsLabel => '연결';
	@override String get add => '추가';
	@override String get deleteProfileButton => '프로필 삭제';
	@override String get noConnectionsHint => '연결이 없습니다 — 이 프로필을 사용하려면 하나 추가하세요.';
	@override String get noConnections => '연결 없음';
	@override String get plexHomeAccount => 'Plex Home 계정';
	@override String plexAccountChip({required Object account}) => 'Plex 계정: ${account}';
	@override String plexAccountUserChip({required Object account, required Object user}) => '${account} 계정의 ${user}';
	@override String get connectionDefault => '기본값';
	@override String connectionAs({required Object displayName}) => '${displayName}(으)로';
	@override String get makeDefault => '기본값으로 설정';
	@override String get removeConnection => '제거';
	@override String get profileRenamed => '프로필 이름이 변경되었습니다.';
	@override String borrowAddTo({required Object displayName}) => '${displayName}에 추가';
	@override String get borrowExplain => '다른 프로필의 연결을 빌립니다. PIN으로 보호된 프로필에는 PIN이 필요합니다.';
	@override String get borrowEmpty => '아직 빌릴 것이 없습니다.';
	@override String get borrowEmptySubtitle => '먼저 다른 프로필에 Plex, Jellyfin 또는 Emby를 연결하세요.';
	@override String get borrowLoadFailed => '사용 가능한 연결을 불러오지 못했습니다. 다시 시도하세요.';
	@override String borrowFromProfile({required Object displayName}) => '${displayName}에서';
	@override String get borrowConnectionBorrowed => '연결을 빌렸습니다.';
	@override String get borrowFailed => '연결을 빌리지 못했습니다.';
	@override String get incorrectPin => 'PIN이 올바르지 않습니다.';
	@override String get incorrectPinTryAgain => 'PIN이 올바르지 않습니다. 다시 시도하세요.';
	@override String get sourceProfileMissingParentAccount => '원본 프로필에 상위 계정이 없습니다.';
	@override String get failedToLoadHomeUsers => 'Plex Home 사용자를 불러올 수 없습니다. 연결을 확인하고 다시 시도하세요.';
	@override String get failedToVerifyPin => 'PIN을 확인하지 못했습니다.';
	@override String get newProfile => '새 프로필';
	@override String get profileNameHint => '예: 손님, 어린이, 가족실';
	@override String get pinProtectionOptional => 'PIN 보호 (선택 사항)';
	@override String get pinExplain => '프로필 전환에는 4자리 PIN이 필요합니다.';
	@override String get continueButton => '계속';
	@override String get pinsDontMatch => 'PIN이 일치하지 않습니다';
	@override String get tokenIdentityMismatch => 'Plex 프로필 토큰이 예상과 다른 서버로 확인되었습니다';
}

// Path: connections
class _Translations$connections$ko extends Translations$connections$en {
	_Translations$connections$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get sectionTitle => '연결';
	@override String get addConnection => '연결 추가';
	@override String get addConnectionSubtitleNoProfile => 'Plex로 로그인하거나 Jellyfin 또는 Emby 서버에 연결';
	@override String addConnectionSubtitleScoped({required Object displayName}) => '${displayName}에 추가: Plex, Jellyfin, Emby 또는 다른 프로필 연결';
	@override String sessionExpiredOne({required Object name}) => '${name}의 세션이 만료되었습니다';
	@override String sessionExpiredMany({required Object count}) => '${count}개 서버의 세션이 만료되었습니다';
	@override String accessDeniedOne({required Object name}) => '${name}에서 이 계정의 접근을 거부했습니다';
	@override String accessDeniedMany({required Object count}) => '${count}개 서버에서 이 계정의 접근을 거부했습니다';
	@override String get signInAgain => '다시 로그인';
	@override String editMediaBrowserTitle({required Object product}) => '${product} 연결 편집';
	@override String editMediaBrowserIntro({required Object serverName}) => '${serverName}의 URL을 추가하거나 제거하세요. Luroka는 연결 가능한 URL 중 지연 시간이 가장 낮은 URL을 사용합니다.';
}

// Path: serversAccounts
class _Translations$serversAccounts$ko extends Translations$serversAccounts$en {
	_Translations$serversAccounts$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '서버 및 계정';
	@override String get subtitle => 'Plex, Jellyfin 및 Emby 서버의 로그인 상태';
	@override String get online => '온라인';
	@override String get offline => '오프라인';
	@override String get unknown => '여기에 로그인되지 않았습니다.';
	@override String get usedByNone => '어떤 프로필에서도 사용되지 않음';
	@override String usedByOne({required Object name}) => '${name}에서 사용됨';
	@override String usedByMany({required Object name, required Object count}) => '${name} 및 ${count}에서 사용됨';
	@override String serversOnline({required Object total, required Object online}) => '${total} 서버 중 ${online} 온라인';
	@override String get noServers => '아직 연결된 것이 없습니다. Plex 계정이나 Jellyfin 또는 Emby 서버를 추가하세요.';
	@override String get editUrls => '서버 URL 편집';
}

// Path: accountPreferences
class _Translations$accountPreferences$ko extends Translations$accountPreferences$en {
	_Translations$accountPreferences$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get sectionTitle => '계정 기본 설정';
	@override String hubSubtitleSingle({required Object account}) => '${account}에 저장된 오디오, 자막 및 라이브러리 옵션';
	@override String hubSubtitleMultiple({required Object count}) => '${count}개 계정에 저장된 오디오, 자막 및 라이브러리 옵션';
	@override String get pickAccount => '각 계정은 고유한 기본 설정을 저장합니다. 편집할 계정을 선택하세요.';
	@override String get storedOnAccount => '이러한 옵션은 서버 계정에 저장되며 다른 장치를 포함하여 해당 계정을 사용하는 모든 Luroka 프로필 및 앱에서 공유됩니다.';
	@override String get noAccounts => '구성할 계정이 없습니다';
	@override String get noAccountsHint => 'Plex에 로그인하거나 Jellyfin 또는 Emby 서버에 연결하면 해당 계정에 저장된 기본 설정이 여기에 표시됩니다.';
	@override String get unavailable => '이 계정에 연결할 수 없습니다';
	@override String get loadFailed => '이 기본 설정을 불러올 수 없습니다';
	@override String get noPreference => '기본 설정 없음';
	@override String get notSet => '설정되지 않음';
	@override late final _Translations$accountPreferences$groups$ko groups = _Translations$accountPreferences$groups$ko._(_root);
	@override String get preferredAudioLanguage => '선호 오디오 언어';
	@override String get autoSelectAudio => '언어별로 오디오 선택';
	@override String get autoSelectAudioDescription => '끄면 파일이 기본으로 표시한 오디오 트랙을 유지합니다.';
	@override String get preferredSubtitleLanguage => '선호 자막 언어';
	@override String get subtitleMode => '자막 자동 켜기';
	@override late final _Translations$accountPreferences$subtitleModes$ko subtitleModes = _Translations$accountPreferences$subtitleModes$ko._(_root);
	@override String get subtitleAccessibility => 'SDH 자막';
	@override late final _Translations$accountPreferences$subtitleAccessibilityOptions$ko subtitleAccessibilityOptions = _Translations$accountPreferences$subtitleAccessibilityOptions$ko._(_root);
	@override String get forcedSubtitles => '강제 자막';
	@override late final _Translations$accountPreferences$forcedSubtitleOptions$ko forcedSubtitleOptions = _Translations$accountPreferences$forcedSubtitleOptions$ko._(_root);
	@override String get displayMissingEpisodes => '누락된 에피소드 표시';
	@override String get displayMissingEpisodesDescription => '서버가 알고 있지만 파일이 없는 에피소드를 나열합니다.';
	@override String get hidePlayedInLatest => '최신 항목에서 시청한 항목 숨기기';
	@override String get hidePlayedInLatestDescription => '이미 시청한 항목은 서버의 최신 행에서 제외합니다.';
	@override String get displayCollectionsView => '컬렉션 보기 표시';
	@override String get displayCollectionsViewDescription => '라이브러리와 함께 서버의 컬렉션 보기를 제공합니다.';
	@override String get rewatchingInNextUp => '재시청한 프로그램을 다음 에피소드에 유지';
	@override String get rewatchingInNextUpDescription => '프로그램을 끝까지 본 뒤 다시 시작하면, 목록에서 제거하는 대신 다음 에피소드가 재시청을 따라갑니다.';
	@override String get watchedIndicator => '시청 표시';
	@override late final _Translations$accountPreferences$watchedIndicatorOptions$ko watchedIndicatorOptions = _Translations$accountPreferences$watchedIndicatorOptions$ko._(_root);
	@override String get mediaReviewsVisibility => '평점 및 리뷰';
	@override late final _Translations$accountPreferences$mediaReviewsOptions$ko mediaReviewsOptions = _Translations$accountPreferences$mediaReviewsOptions$ko._(_root);
}

// Path: discover
class _Translations$discover$ko extends Translations$discover$en {
	_Translations$discover$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '둘러보기';
	@override String get noContentAvailable => '사용 가능한 콘텐츠가 없습니다';
	@override String get addMediaToLibraries => '미디어 라이브러리에 미디어를 추가해 주세요';
	@override String get continueWatching => '계속 시청';
	@override String continueWatchingIn({required Object library}) => '${library}에서 계속 시청';
	@override String get nextUp => '다음 에피소드';
	@override String nextUpIn({required Object library}) => '${library}의 다음 에피소드';
	@override String get recentlyAdded => '최근에 추가됨';
	@override String recentlyAddedIn({required Object library}) => '${library}에 최근에 추가됨';
	@override String latestAlbumsIn({required Object library}) => '${library}의 최신 앨범';
	@override String recentlyPlayedIn({required Object library}) => '${library}에서 최근 재생';
	@override String mostPlayedIn({required Object library}) => '${library}에서 가장 많이 재생';
	@override String playEpisode({required Object season, required Object episode}) => 'S${season}E${episode}';
	@override String get overview => '개요';
	@override String get cast => '출연진';
	@override String get extras => '예고편 및 부가영상';
	@override String get studio => '제작사';
	@override String get rating => '연령 등급';
	@override String get director => '감독';
	@override String get directors => '감독';
	@override String get movie => '영화';
	@override String get tvShow => 'TV 시리즈';
	@override String minutesLeft({required Object minutes}) => '${minutes}분 남음';
	@override String get moreLikeThis => '비슷한 콘텐츠';
	@override String titleCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n,
		one: '${n} 제목',
		other: '${n}개 타이틀',
	);
	@override late final _Translations$discover$person$ko person = _Translations$discover$person$ko._(_root);
}

// Path: errors
class _Translations$errors$ko extends Translations$errors$en {
	_Translations$errors$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String searchFailed({required Object error}) => '검색 실패: ${error}';
	@override String get searchUnavailable => '검색이 어떤 미디어 서버에도 연결할 수 없습니다.';
	@override String connectionTimeout({required Object context}) => '${context} 로드 중 연결 시간 초과';
	@override String get connectionFailed => '미디어 서버에 연결할 수 없습니다';
	@override String unableToLoad({required Object context}) => '${context}을(를) 불러올 수 없습니다. 다시 시도하세요.';
	@override String get noClientAvailable => '사용 가능한 클라이언트가 없습니다';
	@override String get pleaseEnterToken => '토큰을 입력해 주세요';
	@override String get invalidToken => '토큰이 유효하지 않습니다';
	@override String failedToVerifyToken({required Object error}) => '토큰을 확인할 수 없습니다: ${error}';
	@override String failedToSwitchProfile({required Object displayName}) => '${displayName}으로 전환할 수 없습니다';
	@override String failedToDeleteProfile({required Object displayName}) => '${displayName}을(를) 삭제할 수 없습니다';
	@override String get failedToRate => '평점을 업데이트하지 못했습니다';
	@override String get reasonTimedOut => '연결 시간이 초과되었습니다';
	@override String get reasonUnreachable => '서버에 연결할 수 없습니다';
	@override String get reasonRefused => '서버가 요청을 거부했습니다';
	@override String get reasonNotFound => '항목이 더 이상 서버에 없습니다';
	@override String get reasonServerError => '서버에서 오류가 보고되었습니다';
	@override String get reasonCancelled => '요청이 취소되었습니다';
	@override String get reasonUnexpected => '예기치 않은 오류가 발생했습니다';
}

// Path: libraries
class _Translations$libraries$ko extends Translations$libraries$en {
	_Translations$libraries$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '미디어 라이브러리';
	@override String get fallbackTitle => '라이브러리';
	@override String get scanLibraryFiles => '미디어 라이브러리 파일 스캔';
	@override String get scanLibrary => '미디어 라이브러리 스캔';
	@override String get analyze => '분석';
	@override String get analyzeLibrary => '미디어 라이브러리 분석';
	@override String get refreshMetadata => '메타데이터 새로 고침';
	@override String get emptyTrash => '휴지통 비우기';
	@override String emptyingTrash({required Object title}) => '「${title}」의 휴지통을 비우고 있습니다...';
	@override String trashEmptied({required Object title}) => '「${title}」의 휴지통을 비웠습니다';
	@override String failedToEmptyTrash({required Object error}) => '휴지통 비우기 실패: ${error}';
	@override String analyzing({required Object title}) => '"${title}" 분석 중...';
	@override String analysisStarted({required Object title}) => '"${title}" 분석 시작됨';
	@override String failedToAnalyze({required Object error}) => '미디어 라이브러리 분석 실패: ${error}';
	@override String get noLibrariesFound => '미디어 라이브러리 없음';
	@override String get allLibrariesHidden => '모든 라이브러리가 숨겨졌습니다';
	@override String hiddenLibrariesCount({required Object count}) => '숨겨진 라이브러리 (${count})';
	@override String get thisLibraryIsEmpty => '이 미디어 라이브러리는 비어 있습니다';
	@override String get noItemsMatchFilters => '활성화된 필터와 일치하는 항목이 없습니다';
	@override String get resetFilters => '필터 초기화';
	@override String get all => '전체';
	@override String get clearAll => '모두 삭제';
	@override String scanLibraryConfirm({required Object title}) => '「${title}」을(를) 스캔하시겠습니까?';
	@override String analyzeLibraryConfirm({required Object title}) => '「${title}」을(를) 분석하시겠습니까?';
	@override String refreshMetadataConfirm({required Object title}) => '「${title}」의 메타데이터를 새로고침하시겠습니까?';
	@override String emptyTrashConfirm({required Object title}) => '${title}의 휴지통을 비우시겠습니까?';
	@override String get manageLibraries => '미디어 라이브러리 관리';
	@override String get sort => '정렬';
	@override String get sortBy => '정렬 기준';
	@override String get filters => '필터';
	@override String get confirmActionMessage => '이 작업을 실행하시겠습니까?';
	@override String get showLibrary => '미디어 라이브러리 표시';
	@override String get hideLibrary => '미디어 라이브러리 숨기기';
	@override String get libraryOptions => '미디어 라이브러리 옵션';
	@override String get content => '미디어 라이브러리 콘텐츠';
	@override String get selectLibrary => '미디어 라이브러리 선택';
	@override String filtersWithCount({required Object count}) => '필터 (${count})';
	@override String get noRecommendations => '추천 없음';
	@override String get noCollections => '이 미디어 라이브러리에는 컬렉션이 없습니다';
	@override String get noFoldersFound => '폴더를 찾을 수 없습니다';
	@override String get folders => '폴더';
	@override late final _Translations$libraries$tabs$ko tabs = _Translations$libraries$tabs$ko._(_root);
	@override late final _Translations$libraries$groupings$ko groupings = _Translations$libraries$groupings$ko._(_root);
	@override late final _Translations$libraries$filterCategories$ko filterCategories = _Translations$libraries$filterCategories$ko._(_root);
	@override late final _Translations$libraries$sortLabels$ko sortLabels = _Translations$libraries$sortLabels$ko._(_root);
	@override late final _Translations$libraries$advancedFilters$ko advancedFilters = _Translations$libraries$advancedFilters$ko._(_root);
}

// Path: about
class _Translations$about$ko extends Translations$about$en {
	_Translations$about$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '소개';
	@override String get openSourceLicenses => '오픈소스 라이선스';
	@override String versionLabel({required Object version}) => '버전 ${version}';
	@override String get appDescription => 'Flutter로 만든 아름다운 Plex, Jellyfin 및 Emby 클라이언트';
	@override String get customSource => '소스 코드';
	@override String get basedOnLuroka => 'Plezy 코드베이스를 기반으로 구축';
	@override String get viewLicensesDescription => '타사 라이브러리 라이선스 보기';
	@override String get appSection => '앱';
	@override String get communitySection => '커뮤니티';
	@override String get creditsSection => '크레딧';
	@override String get legalSection => '법적';
	@override String versionMeta({required Object version, required Object build, required Object platform}) => 'v${version} (${build}) · ${platform}';
	@override String versionMetaNoBuild({required Object version, required Object platform}) => 'v${version} · ${platform}';
	@override String get versionUnavailable => '버전을 사용할 수 없음';
	@override String get versionDetails => '버전 세부정보';
	@override String versionDetailsTitle({required Object version, required Object build}) => 'Luroka ${version} (${build})';
	@override String platformLine({required Object platform}) => '플랫폼: ${platform}';
	@override String deviceLine({required Object model}) => '장치: ${model}';
	@override String packageLine({required Object package}) => '패키지: ${package}';
	@override String localeLine({required Object locale}) => '언어: ${locale}';
	@override String get copyDetails => '세부정보 복사';
	@override String get detailsCopied => '앱 세부정보가 복사되었습니다.';
	@override String get detailsCopyFailed => '앱 세부정보를 복사할 수 없습니다.';
	@override String get checkForUpdatesDescription => '최신 릴리스는 GitHub를 확인하세요.';
	@override String get checkingForUpdates => '업데이트 확인 중…';
	@override String get whatsNew => '새로운 소식';
	@override String get releaseNotesUnavailable => '출시 노트가 없습니다.';
	@override String get sourceCodeDescription => 'GitHub의 Luroka';
	@override String get reportIssue => '문제 신고';
	@override String get reportIssueDescription => '무엇이 잘못되었는지 알려주세요.';
	@override String get documentation => '문서';
	@override String get documentationDescription => '설정, 기능 및 빌드 노트';
	@override String get upstreamProjectDescription => 'edde746 및 기여자의 오픈 소스 프로젝트';
	@override String get upstreamWebsite => '업스트림 웹사이트';
	@override String get attribution => '데이터 및 속성';
	@override String get attributionDescription => '메타데이터, 등급 및 상표';
	@override String get attributionBody => '이 제품은 TMDB API를 사용하지만 TMDB의 보증 또는 인증을 받지 않았습니다. 인기 목록, 메타데이터 및 IMDb 등급은 Cinemeta에서 제공됩니다. 점수는 소스 레이블을 유지합니다.';
	@override String get trademarkNotices => 'Plex, Jellyfin, Emby, Trakt, Simkl, MyAnimeList, AniList, TMDB 및 관련 상표는 해당 소유자의 상표입니다. Luroka는 이들과 제휴하거나 보증하지 않습니다.';
	@override String get privacyPolicy => '개인 정보 보호 정책';
	@override String get privacyPolicyDescription => '귀하의 데이터가 처리되는 방법';
	@override String get gplLicense => 'GNU GPL-3.0 라이센스';
	@override String get gplLicenseDescription => 'Luroka는 무료 소프트웨어입니다';
	@override String get linkOpenFailed => '이 링크를 열 수 없습니다.';
	@override String get opensInBrowser => '브라우저에서 열립니다';
	@override String get footer => 'Luroka는 GPL-3.0에 따른 무료 소프트웨어입니다.';
	@override String copyright({required Object year}) => '© ${year} Luroka 기여자';
}

// Path: serverSelection
class _Translations$serverSelection$ko extends Translations$serverSelection$en {
	_Translations$serverSelection$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String noServersFoundForAccount({required Object username, required Object email}) => '${username} (${email})의 서버를 찾을 수 없습니다.';
	@override String failedToLoadServers({required Object error}) => '서버를 로드할 수 없습니다: ${error}';
	@override String get noValidServers => '이 계정에서 사용할 수 있는 서버를 찾지 못했습니다';
}

// Path: hubDetail
class _Translations$hubDetail$ko extends Translations$hubDetail$en {
	_Translations$hubDetail$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '제목';
	@override String get releaseYear => '출시 연도';
	@override String get dateAdded => '추가 날짜';
	@override String get rating => '평점';
	@override String get noItemsFound => '항목이 없습니다';
}

// Path: logs
class _Translations$logs$ko extends Translations$logs$en {
	_Translations$logs$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get clearLogs => '로그 지우기';
	@override String get copyLogs => '로그 복사';
	@override String get uploadLogs => '로그 업로드';
}

// Path: startup
class _Translations$startup$ko extends Translations$startup$en {
	_Translations$startup$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get failedTitle => 'Luroka를 시작하지 못했습니다';
	@override String get failedBody => '시작 중 문제가 발생했습니다. 아래 세부 정보에서 실패 원인을 확인할 수 있습니다.';
	@override String get failedBodyRepairable => 'Luroka의 저장된 설정 파일이 손상되어 Luroka를 시작하려면 먼저 파일을 다시 만들어야 합니다. 재시도해도 해결되지 않습니다 — 저장소 복구를 선택하세요.';
	@override String get phaseLabel => '단계';
	@override String get showDetails => '세부 정보 표시';
	@override String get hideDetails => '세부 정보 숨기기';
	@override String get copyDetails => '세부 정보 복사';
	@override String get detailsCopied => '세부 정보가 클립보드에 복사되었습니다';
	@override String get uploadDetails => '세부 정보 업로드';
	@override String get repairStorage => '저장소 복구';
	@override String get repairTitle => '저장된 데이터를 복구할까요?';
	@override String get repairBodyCommon => 'Luroka의 설정 파일이 손상되어 읽을 수 없습니다. 복구하면 모든 설정이 기본값으로 재설정됩니다.';
	@override String get repairBodyOneCredential => '저장된 로그인 정보 하나가 손상되어 읽을 수 없습니다. 복구하면 해당 로그인 정보만 제거되며 다른 설정은 그대로 유지됩니다.';
	@override String get repairBodySignInsKept => '서버와 프로필은 로그인 상태가 유지됩니다.';
	@override String get repairBodySignInsLost => '저장된 로그인 정보를 보호하는 키를 이 파일에서 복구할 수 없어 모든 서버와 프로필에 다시 로그인해야 합니다. 미디어 서버의 데이터에는 영향이 없습니다.';
	@override String get repairBodySessionsUncertain => '트래커(MAL, AniList, Simkl, Trakt)와 Seerr는 별도로 저장되며 유지 여부가 확실하지 않습니다. Luroka가 유지된 항목을 정확히 알려줄 것입니다.';
	@override String get repairConfirm => '복구';
	@override String get repairSucceeded => '저장소가 복구되었습니다';
	@override String get repairNeedsRestart => '저장소가 복구되었습니다 — 재시작 필요';
	@override String get restartRequiredBody => '데이터가 복구되었지만 Luroka는 이를 사용하려면 새로 시작해야 합니다. Luroka를 종료한 후 다시 열어주세요.';
	@override String get quitLuroka => 'Luroka 종료';
	@override String get repairFailed => '복구 실패';
	@override String get repairKeptSignIns => '서버와 프로필이 계속 로그인 상태입니다.';
	@override String get repairLostSignIns => '저장된 로그인 정보를 보호하는 키를 복구할 수 없었습니다. 모든 서버와 프로필에 다시 로그인해야 합니다.';
	@override String get repairLostSessions => '트래커 또는 Seerr 연결이 하나 이상 끊어져 다시 연결해야 합니다.';
	@override String get backupTitle => '손상된 파일의 복사본이 보관되었습니다';
	@override String get backupWarning => '로그인 자격 증명이 포함되어 있습니다. 업로드하거나 공유하지 마세요.';
	@override String get deleteBackup => '복사본 삭제';
	@override String get backupDeleted => '복사본이 삭제되었습니다.';
	@override String get previousFailureTitle => '지난번에 Luroka를 시작하지 못했습니다';
}

// Path: licenses
class _Translations$licenses$ko extends Translations$licenses$en {
	_Translations$licenses$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get relatedPackages => '관련 소프트웨어 패키지';
	@override String get license => '라이선스';
	@override String licenseNumber({required Object number}) => '라이선스 ${number}';
	@override String licensesCount({required Object count}) => '${count}개의 라이선스';
	@override String get searchHint => '패키지 검색';
	@override String noResults({required Object query}) => '"${query}"와 일치하는 패키지가 없습니다.';
	@override String get clearSearch => '검색 지우기';
}

// Path: navigation
class _Translations$navigation$ko extends Translations$navigation$en {
	_Translations$navigation$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get libraries => '미디어 라이브러리';
	@override String get downloads => '다운로드';
	@override String get liveTv => '실시간 TV';
	@override String get explore => '탐색';
}

// Path: explore
class _Translations$explore$ko extends Translations$explore$en {
	_Translations$explore$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '탐색';
	@override String get selectSource => '소스 선택';
	@override late final _Translations$explore$rows$ko rows = _Translations$explore$rows$ko._(_root);
	@override late final _Translations$explore$status$ko status = _Translations$explore$status$ko._(_root);
	@override String episodeCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n,
		one: '${n} 에피소드',
		other: '${n}화',
	);
	@override String get cast => '출연진';
	@override String get characters => '캐릭터';
	@override String get addToWatchlist => '관심 목록에 추가';
	@override String get removeFromWatchlist => '관심 목록에서 제거';
	@override String get addedToWatchlist => '관심 목록에 추가했습니다';
	@override String get removedFromWatchlist => '관심 목록에서 삭제했습니다';
	@override String get watchlistUpdateFailed => '관심 목록을 업데이트하지 못했습니다';
	@override String get watchlistNoMatch => '이 항목을 관심 목록과 연결할 수 없습니다';
	@override String get notInLibrary => '라이브러리에 없음';
	@override String get inTheseLibraries => '이 라이브러리에 있음';
	@override String get checkingLibrary => '라이브러리 확인 중...';
	@override String libraryCheckFailed({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n,
		one: '${n} 서버를 확인할 수 없습니다.',
		other: '서버 ${n}개를 확인할 수 없습니다',
	);
	@override String get emptyTitle => '아직 아무것도 없습니다';
	@override String emptyMessage({required Object source}) => '${source}에 콘텐츠가 추가되면 여기에 표시됩니다.';
	@override String searchHint({required Object source}) => '${source}에서 검색';
	@override String searchEmpty({required Object query}) => '「${query}」에 대한 결과가 없습니다';
	@override String searchPrompt({required Object source}) => '${source}에서 영화와 TV 프로그램을 검색하세요.';
	@override String get searchFailed => '검색에 실패했습니다. 연결을 확인하고 다시 시도하세요.';
	@override late final _Translations$explore$badge$ko badge = _Translations$explore$badge$ko._(_root);
	@override late final _Translations$explore$stats$ko stats = _Translations$explore$stats$ko._(_root);
	@override late final _Translations$explore$season$ko season = _Translations$explore$season$ko._(_root);
	@override late final _Translations$explore$format$ko format = _Translations$explore$format$ko._(_root);
	@override late final _Translations$explore$sourceMaterial$ko sourceMaterial = _Translations$explore$sourceMaterial$ko._(_root);
	@override late final _Translations$explore$creditRole$ko creditRole = _Translations$explore$creditRole$ko._(_root);
	@override late final _Translations$explore$relation$ko relation = _Translations$explore$relation$ko._(_root);
	@override String broadcast({required Object day, required Object time}) => '${day} ${time} 방영';
	@override String broadcastWithZone({required Object day, required Object time, required Object timezone}) => '${day} ${time} ${timezone} 방영';
	@override late final _Translations$explore$detail$ko detail = _Translations$explore$detail$ko._(_root);
	@override String totalResults({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n,
		one: '${n} 결과',
		other: '결과 ${n}개',
	);
}

// Path: liveTv
class _Translations$liveTv$ko extends Translations$liveTv$en {
	_Translations$liveTv$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '실시간 TV';
	@override String get guide => '편성표';
	@override String get noChannels => '사용 가능한 채널이 없습니다';
	@override String get noDvr => '서버에 DVR이 구성되어 있지 않습니다';
	@override String get serverUnavailable => '라이브 TV 서버를 사용할 수 없습니다.';
	@override String get serverNotConnected => '라이브 TV 서버에 연결되어 있지 않습니다.';
	@override String get noPrograms => '프로그램 데이터가 없습니다';
	@override String get liveStreamFailed => '라이브 스트림 실패';
	@override String get unknownProgram => '알 수 없는 프로그램';
	@override String get unknownHub => '알 수 없음';
	@override String get unknownError => '알 수 없는 오류';
	@override String channelNumber({required Object number}) => '채널 ${number}';
	@override String get unknownChannel => '알 수 없는 채널';
	@override String get live => '실시간';
	@override String get reloadGuide => '편성표 새로고침';
	@override String get searchGuide => '편성표 검색';
	@override String get searchHint => '채널 및 프로그램 검색';
	@override String searchNoResults({required Object query}) => '「${query}」와(과) 일치하는 항목이 없습니다';
	@override String get channelsSection => '채널';
	@override String get programsSection => '프로그램';
	@override String get now => '지금';
	@override String get today => '오늘';
	@override String get tomorrow => '내일';
	@override String get midnight => '자정';
	@override String get overnight => '심야';
	@override String get morning => '아침';
	@override String get daytime => '낮';
	@override String get evening => '저녁';
	@override String get lateNight => '심야 방송';
	@override String get whatsOn => '지금 방송 중';
	@override String get watchChannel => '채널 시청';
	@override String get favorites => '즐겨찾기';
	@override String get reorderFavorites => '즐겨찾기 순서 변경';
	@override String get noFavoriteChannels => '즐겨찾기 채널 없음';
	@override String get noFavoriteChannelsHint => '모든 채널을 표시한 다음 채널을 길게 눌러 즐겨찾기에 추가하세요.';
	@override String get showAllChannels => '모든 채널 표시';
	@override String get favoritesLoadFailed => '즐겨찾기를 불러올 수 없습니다. 연결을 확인하고 다시 시도하세요.';
	@override String get favoritesUpdateFailed => '즐겨찾기를 업데이트할 수 없습니다. 연결을 확인하고 다시 시도하세요.';
	@override String get joinSession => '진행 중인 세션 참여';
	@override String watchFromStart({required Object minutes}) => '처음부터 시청 (${minutes}분 전 시작)';
	@override String get watchLive => '실시간 시청';
	@override String get goToLive => '실시간으로 이동';
	@override String get record => '녹화';
	@override String get recordEpisode => '에피소드 녹화';
	@override String get recordSeries => '시리즈 녹화';
	@override String get recordOptions => '녹화 옵션';
	@override String get saveTo => '저장 위치';
	@override String get recordings => '녹화';
	@override String get scheduledRecordings => '예약됨';
	@override String get recordingRules => '녹화 규칙';
	@override String get noScheduledRecordings => '예약된 녹화 없음';
	@override String get manageRecording => '녹화 관리';
	@override String get cancelRecording => '녹화 취소';
	@override String get cancelRecordingTitle => '이 녹화를 취소할까요?';
	@override String cancelRecordingMessage({required Object title}) => '${title}이(가) 더 이상 녹화되지 않습니다.';
	@override String get deleteRule => '규칙 삭제';
	@override String get deleteRuleTitle => '녹화 규칙을 삭제할까요?';
	@override String deleteRuleMessage({required Object title}) => '${title}의 향후 에피소드는 녹화되지 않습니다.';
	@override String get recordingScheduled => '녹화 예약됨';
	@override String get alreadyScheduled => '이 프로그램은 이미 예약되어 있습니다';
	@override String get dvrAdminRequired => 'DVR 설정은 관리자 계정이 필요합니다';
	@override String get recordingFailed => '녹화를 예약할 수 없습니다';
	@override String get recordingTargetMissing => '녹화 라이브러리를 확인할 수 없습니다';
	@override String get recordNotAvailable => '이 프로그램은 녹화할 수 없습니다';
	@override String get recordingCancelled => '녹화 취소됨';
	@override String get recordingRuleDeleted => '녹화 규칙 삭제됨';
	@override String get processRecordingRules => '규칙 재평가';
	@override String get recordingInProgress => '녹화 중';
	@override String recordingsCount({required Object count}) => '${count}개 예약됨';
	@override String get editRule => '규칙 편집';
	@override String get editRuleAction => '편집';
	@override String get recordingRuleUpdated => '녹화 규칙 업데이트됨';
	@override String get guideReloadRequested => '가이드 새로고침 요청됨';
	@override String get guideReloadFailed => '편성표를 새로고침할 수 없습니다';
	@override String get rulesProcessRequested => '규칙 재평가 요청됨';
	@override String get rulesProcessFailed => '녹화 규칙을 다시 적용할 수 없습니다';
	@override String get recordShow => '프로그램 녹화';
	@override late final _Translations$liveTv$recordSettings$ko recordSettings = _Translations$liveTv$recordSettings$ko._(_root);
	@override String startingInMinutes({required Object minutes}) => '${minutes}분 후 시작';
	@override String dayAtTime({required Object day, required Object time}) => '${day} ${time}';
	@override String invalidPlaybackData({required Object product}) => '${product}에서 잘못된 실시간 TV 재생 데이터를 반환했습니다';
	@override String get failedToStartChannel => '실시간 채널을 시작할 수 없습니다';
	@override String get failedToBuildStreamUrl => '스트림 URL을 생성할 수 없습니다';
	@override String playbackStartFailed({required Object reason}) => '채널을 시작하지 못했습니다: ${reason}';
	@override String channelSwitchFailed({required Object reason}) => '채널을 전환하지 못했습니다: ${reason}';
}

// Path: collections
class _Translations$collections$ko extends Translations$collections$en {
	_Translations$collections$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '컬렉션';
	@override String get collection => '컬렉션';
	@override String get empty => '컬렉션이 비어 있습니다';
	@override String get deleteCollection => '컬렉션 삭제';
	@override String deleteConfirm({required Object title}) => '"${title}"을(를) 삭제할까요? 되돌릴 수 없습니다.';
	@override String get deleted => '컬렉션 삭제됨';
	@override String get deleteFailed => '컬렉션 삭제 실패';
	@override String deleteFailedWithError({required Object error}) => '컬렉션 삭제 실패: ${error}';
	@override String get selectCollection => '컬렉션 선택';
	@override String get collectionName => '컬렉션 이름';
	@override String get enterCollectionName => '컬렉션 이름 입력';
	@override String get addedToCollection => '컬렉션에 추가됨';
	@override String get errorAddingToCollection => '컬렉션에 추가 실패';
	@override String get created => '컬렉션 생성됨';
	@override String get removeFromCollection => '컬렉션에서 제거';
	@override String removeFromCollectionConfirm({required Object title}) => '${title}을(를) 이 컬렉션에서 제거하시겠습니까?';
	@override String get removedFromCollection => '컬렉션에서 제거됨';
	@override String get removeFromCollectionFailed => '컬렉션에서 제거 실패';
	@override String removeFromCollectionError({required Object error}) => '컬렉션에서 제거 중 오류 발생: ${error}';
	@override String get searchCollections => '컬렉션 검색...';
}

// Path: playlists
class _Translations$playlists$ko extends Translations$playlists$en {
	_Translations$playlists$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '플레이리스트';
	@override String get playlist => '재생 목록';
	@override String get noPlaylists => '재생 목록을 찾을 수 없습니다';
	@override String get create => '재생 목록 생성';
	@override String get playlistName => '재생 목록 이름';
	@override String get enterPlaylistName => '재생 목록 이름 입력';
	@override String get delete => '재생 목록 삭제';
	@override String get removeItem => '재생 목록에서 항목 제거';
	@override String get smartPlaylist => '스마트 재생 목록';
	@override String itemCount({required Object count}) => '${count}개 항목';
	@override String get oneItem => '1개 항목';
	@override String get emptyPlaylist => '이 재생 목록은 비어 있습니다';
	@override String get deleteConfirm => '재생 목록을 삭제하시겠습니까?';
	@override String deleteMessage({required Object name}) => '"${name}"을(를) 삭제하시겠습니까?';
	@override String get created => '재생 목록이 생성되었습니다';
	@override String get deleted => '재생 목록이 삭제되었습니다';
	@override String get itemAdded => '재생 목록에 추가되었습니다';
	@override String get itemRemoved => '재생 목록에서 제거됨';
	@override String get selectPlaylist => '재생 목록 선택';
	@override String get searchPlaylists => '재생 목록 검색...';
	@override String get errorCreating => '재생 목록 생성 실패';
	@override String get errorDeleting => '재생 목록 삭제 실패';
	@override String get errorLoading => '재생 목록 로드 실패';
	@override String get errorAdding => '재생 목록에 추가 실패';
	@override String get errorReordering => '재생 목록 항목 재정렬 실패';
	@override String get errorRemoving => '재생 목록에서 제거 실패';
}

// Path: music
class _Translations$music$ko extends Translations$music$en {
	_Translations$music$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get goToAlbum => '앨범으로 이동';
	@override String get goToArtist => '아티스트로 이동';
	@override String get instantMix => '인스턴트 믹스';
	@override String get playNext => '다음에 재생';
	@override String get addToQueue => '대기열에 추가';
	@override String discNumber({required Object n}) => '디스크 ${n}';
	@override String trackCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n,
		one: '${n} 트랙',
		other: '${n}곡',
	);
	@override String get nowPlaying => '재생 중';
	@override String playingFrom({required Object title}) => '${title}에서 재생 중';
	@override String get queue => '재생 대기열';
	@override String get clearQueue => '대기열 비우기';
	@override String get lyrics => '가사';
	@override String get noLyrics => '가사 없음';
	@override String get sleepTimer => '취침 타이머';
	@override String get sleepTimerEndOfTrack => '곡 종료 시';
	@override String sleepTimerMinutes({required Object n}) => '${n}분';
	@override String get stopPlayback => '재생 중지';
	@override String get previousTrack => '이전 곡';
	@override String get nextTrack => '다음 곡';
	@override String get repeat => '반복';
	@override String get repeatAll => '전체 반복';
	@override String get repeatOne => '한 곡 반복';
	@override String get instantMixNoServer => '즉석 믹스에 사용할 수 있는 서버가 없습니다';
	@override String get instantMixFailed => '인스턴트 믹스를 불러오지 못했습니다';
	@override String get instantMixEmpty => '인스턴트 믹스에 트랙이 없습니다';
	@override String noAudioUrl({required Object track}) => '${track}에 사용할 수 있는 오디오 URL이 없습니다';
	@override late final _Translations$music$discography$ko discography = _Translations$music$discography$ko._(_root);
}

// Path: watchTogether
class _Translations$watchTogether$ko extends Translations$watchTogether$en {
	_Translations$watchTogether$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '함께 보기';
	@override String get description => '친구 및 가족과 콘텐츠를 동시에 시청하세요';
	@override String get createRoom => '방 만들기';
	@override String get creatingRoom => '방을 만드는 중...';
	@override String get joinRoom => '룸 참여';
	@override String get joiningRoom => '방에 참여하는 중...';
	@override String get connecting => '연결 중...';
	@override String get relayPublic => '객실은 공개 공개 Watch Party 릴레이를 사용합니다.';
	@override String relayCustom({required Object url}) => '객실은 ${url}에서 릴레이를 사용합니다.';
	@override String get recentRooms => '최근 참여한 방';
	@override String get roomActions => '룸 액션';
	@override String get renameRoom => '방 이름 변경';
	@override String get removeRoom => '제거';
	@override String get enterRoomCode => '호스트의 6자리 코드를 입력하세요.';
	@override String get roomCode => '객실 코드';
	@override String get paste => '붙여넣기';
	@override String get noCodeInClipboard => '클립보드에 객실 코드가 없습니다';
	@override String get copyCode => '코드 복사';
	@override String get codeCopied => '객실 코드가 복사되었습니다.';
	@override String get shareInvite => '공유 초대';
	@override String get qrShare => 'QR 코드 공유';
	@override String get qrHint => '이 방에 참여하려면 Luroka 앱으로 스캔하세요.';
	@override String get phasePlaying => '재생';
	@override String get phasePaused => '일시중지됨';
	@override String get phaseWaiting => '모두를 기다리고 있어요';
	@override String get inviteCopied => '초대가 복사되었습니다. 메시지에 붙여넣으세요.';
	@override String inviteMessage({required Object code}) => 'Luroka에서 함께 시청하기 방에 참여하세요: luroka://watch?code=${code} — 또는 함께 시청하기를 열고 ${code}를 입력하세요.';
	@override String get openSessionControls => '함께 보기 세션 제어 열기';
	@override String get reconnecting => '다시 연결하는 중...';
	@override String get reconnectingDescription => '연결이 끊어졌습니다. 자동으로 방에 다시 참여하게 됩니다.';
	@override String get connected => '연결됨';
	@override String get disconnected => '연결이 끊김';
	@override String get youAreHost => '호스트입니다';
	@override String hostedBy({required Object name}) => '${name}가 호스팅함';
	@override String get hostControlsPlayback => '호스트 재생 제어';
	@override String get anyoneCanControl => '누구나 재생 제어 가능';
	@override String get roomLocked => '방이 잠겨 있음';
	@override String get nowPlaying => '지금 재생 중';
	@override String get nothingPlaying => '재생 중인 항목 없음';
	@override String get nothingPlayingHost => '라이브러리의 콘텐츠를 재생하여 방과 공유하세요.';
	@override String get nothingPlayingGuest => '호스트가 무언가를 재생하면 여기에서 열립니다.';
	@override String get notShareable => '이 동영상에는 일치하는 카탈로그가 없으므로 동일한 서버에 액세스할 수 있는 사람만 재생할 수 있습니다.';
	@override String get searching => '라이브러리에서 이 비디오를 찾고 있습니다...';
	@override String get yourCopy => '귀하의 사본';
	@override String get sharingYourCopy => '사본을 공유하고 있습니다.';
	@override String playingOtherLength({required Object difference}) => '복사본을 재생하세요, ${difference}';
	@override String get mismatchTitle => '사본의 길이가 다릅니다';
	@override String mismatchDescription({required Object difference}) => '방의 영상보다 가장 가까운 사본은 ${difference}입니다. 다른 컷이나 버전일 수도 있습니다.';
	@override String get playAnyway => '어쨌든 플레이';
	@override String get chooseAnotherCopy => '다른 사본 선택';
	@override String get dontPlay => '놀지 마세요';
	@override String get unavailableTitle => '이 동영상이 없습니다.';
	@override String get unavailableDescription => 'Luroka가 라이브러리에서 찾을 수 없습니다. 사본을 직접 선택하거나 다시 검색하세요.';
	@override String get chooseCopy => '사본을 선택하세요';
	@override String get searchAgain => '다시 검색';
	@override String get noCandidates => '라이브러리에 사본이 없습니다.';
	@override String get choiceFailed => '이 사본을 회의실에서 재생할 수 없습니다.';
	@override String lengthLonger({required Object duration}) => '${duration} 더 길어짐';
	@override String lengthShorter({required Object duration}) => '${duration} 더 짧음';
	@override String get lengthSame => '같은 길이';
	@override String get lengthUnknown => '길이를 알 수 없음';
	@override String get joinCurrentPlayback => '현재 재생 참여';
	@override String get joinCurrentPlaybackDescription => '호스트가 현재 시청 중인 콘텐츠로 이동합니다';
	@override String get stopMedia => '모두를 위한 비디오 중지';
	@override String get syncOffset => '동기화 오프셋';
	@override String get syncOffsetDescription => '비디오가 방 앞이나 뒤에서 실행되는 경우 비디오를 이동하십시오.';
	@override String offsetHint({required Object difference}) => '귀하의 사본은 방의 비디오보다 ${difference}입니다.';
	@override String applyDifference({required Object offset}) => '${offset} 사용';
	@override String get offsetMinusSecond => '-1초';
	@override String get offsetMinusTenth => '-100ms';
	@override String get offsetPlusTenth => '+100ms';
	@override String get offsetPlusSecond => '+1초';
	@override String get participants => '참가자';
	@override String participantCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n,
		one: '${n} 참가자',
		other: '${n} 참가자',
	);
	@override String get hostBadge => '호스트';
	@override String nameYou({required Object name}) => '${name} (당신)';
	@override String get playerIdle => '유휴';
	@override String get playerLoading => '로드 중';
	@override String get playerReady => '준비';
	@override String get playerBuffering => '버퍼링';
	@override String get matchSearching => '검색 중';
	@override String get matchMatched => '영상 있음';
	@override String get matchMismatched => '다른 길이';
	@override String get matchUnavailable => '영상이 없어요';
	@override String participantOffset({required Object offset}) => '오프셋 ${offset}';
	@override String get makeHost => '호스트로 지정';
	@override String get makeHostQuestion => '호스트를 이전하시겠습니까?';
	@override String makeHostConfirm({required Object name}) => '${name}님이 재생을 제어하고 모든 참가자의 세션을 이끕니다.';
	@override String get transfer => '이전';
	@override String get removeParticipant => '회의실에서 삭제';
	@override String removeParticipantQuestion({required Object name}) => '${name}를 제거하시겠습니까?';
	@override String removeParticipantConfirm({required Object name}) => '${name}가 방을 나갑니다. 방을 잠그지 않는 한 코드를 사용하여 다시 참여할 수 있습니다.';
	@override String get remove => '제거';
	@override String get roomSettings => '객실 설정';
	@override String get letEveryoneControl => '모든 사람이 재생을 제어하도록 허용';
	@override String get lockRoom => '락룸';
	@override String get lockRoomDescription => '새로 가입할 수 없습니다.';
	@override String get leaveRoom => '방에서 나가기';
	@override String get leaveRoomQuestion => '회의실에서 나가시겠습니까?';
	@override String get leaveRoomConfirm => '룸코드로 다시 참여하실 수 있습니다.';
	@override String get leave => '나가기';
	@override String get endRoom => '엔드룸';
	@override String get endRoomQuestion => '엔드룸?';
	@override String get endRoomConfirm => '이것으로 모든 사람을 위한 방이 종료됩니다.';
	@override String get end => '종료';
	@override String get playBlockedTitle => '재생이 시작되지 않았습니다';
	@override String get playBlockedDescription => '재생을 눌러 방에서 시청을 시작하세요.';
	@override late final _Translations$watchTogether$notices$ko notices = _Translations$watchTogether$notices$ko._(_root);
	@override late final _Translations$watchTogether$ended$ko ended = _Translations$watchTogether$ended$ko._(_root);
	@override late final _Translations$watchTogether$errors$ko errors = _Translations$watchTogether$errors$ko._(_root);
	@override String untitledEpisode({required Object number}) => '에피소드 ${number}';
}

// Path: downloads
class _Translations$downloads$ko extends Translations$downloads$en {
	_Translations$downloads$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '다운로드';
	@override String get manage => '관리';
	@override String get tvShows => 'TV 프로그램';
	@override String get movies => '영화';
	@override String get music => '음악';
	@override String tracksQueued({required Object count}) => '${count}곡 다운로드 대기 중';
	@override String get noDownloads => '다운로드 없음';
	@override String get noDownloadsDescription => '다운로드한 콘텐츠는 오프라인 시청을 위해 여기에 표시됩니다';
	@override String get downloadNow => '다운로드';
	@override String get deleteDownload => '다운로드 삭제';
	@override String get retryDownload => '다운로드 재시도';
	@override String get downloadQueued => '다운로드 대기 중';
	@override String get downloadResumed => '다운로드를 재개했습니다';
	@override String get serverErrorBitrate => '서버 오류: 파일이 원격 비트레이트 제한을 초과할 수 있습니다';
	@override String get storageFull => '사용 가능한 저장 공간을 보호하기 위해 다운로드를 중지했습니다. 공간을 확보하거나 다른 다운로드 위치를 선택한 후 다시 시도하세요.';
	@override String get storageUnavailable => '사용 가능한 저장 공간을 확인할 수 없어 다운로드를 중지했습니다. 다운로드 위치를 확인한 후 다시 시도하세요.';
	@override String episodesQueued({required Object count}) => '에피소드 ${count}개가 다운로드 대기열에 추가되었습니다';
	@override String get downloadDeleted => '다운로드 삭제됨';
	@override String deleteConfirm({required Object title}) => '이 기기에서 "${title}"을(를) 삭제할까요?';
	@override String get deleteCollectionDownloads => '다운로드 삭제';
	@override String deleteCollectionDownloadsConfirm({required Object title}) => '이 기기에서 \'${title}\'의 모든 다운로드를 삭제하시겠습니까?';
	@override String get collectionDownloadsDeleted => '다운로드가 삭제되었습니다.';
	@override String get cancelledDownloadTitle => '취소된 다운로드';
	@override String get cancelledDownloadMessage => '이 다운로드가 취소되었습니다. 어떻게 하시겠습니까?';
	@override String get allEpisodesAlreadyDownloaded => '모든 에피소드가 이미 다운로드되었습니다';
	@override String get resumeDownload => '다운로드 재개';
	@override String get cancelledDownload => '취소된 다운로드';
	@override String syncingFile({required Object file, required Object status}) => '${file} (${status} 동기화 중)';
	@override String downloadedFileClickToComplete({required Object file}) => '${file} 다운로드됨 — 클릭하여 완료';
	@override String get partialDownloadClickToComplete => '부분 다운로드됨 — 클릭하여 완료';
	@override String get deleting => '삭제 중...';
	@override String deletingWithProgress({required Object title, required Object current, required Object total}) => '${title} 삭제 중... (${current}/${total})';
	@override String get queuedTooltip => '대기 중';
	@override String queuedFilesTooltip({required Object files}) => '대기 중: ${files}';
	@override String get downloadingTooltip => '다운로드 중...';
	@override String downloadingFilesTooltip({required Object files}) => '${files} 다운로드 중';
	@override String get noDownloadsTree => '다운로드 없음';
	@override String get pauseAll => '모두 일시정지';
	@override String get resumeAll => '모두 재개';
	@override String get retryAll => '모두 다시 시도';
	@override String get retryFailed => '실패한 다운로드 다시 시도';
	@override String get deleteAll => '모두 삭제';
	@override String get selectVersion => '버전 선택';
	@override String get allEpisodes => '모든 에피소드';
	@override String get unwatchedOnly => '시청하지 않은 것만';
	@override String nextNUnwatched({required Object count}) => '다음 ${count}개 미시청';
	@override String get customAmount => '직접 입력...';
	@override String get includeSpecials => '스페셜 포함';
	@override String get howManyEpisodes => '몇 개의 에피소드?';
	@override String get invalidEpisodeCount => '올바른 에피소드 수를 입력하세요.';
	@override String get keepSynced => '동기화 유지';
	@override String get downloadOnce => '한 번만 다운로드';
	@override String keepNUnwatched({required Object count}) => '미시청 ${count}개 유지';
	@override String get editSyncRule => '동기화 규칙 편집';
	@override String get removeSyncRule => '동기화 규칙 제거';
	@override String removeSyncRuleConfirm({required Object title}) => '"${title}" 동기화를 중단하시겠습니까? 다운로드된 에피소드는 유지됩니다.';
	@override String removeListSyncRuleConfirm({required Object title}) => '"${title}" 동기화를 중지할까요?';
	@override String get deleteSyncRuleDownloads => '연결된 다운로드도 삭제';
	@override String get deleteSyncRuleDownloadsDescription => '다른 동기화 규칙이나 프로필에서 사용하는 다운로드는 유지됩니다.';
	@override String syncRuleCreated({required Object count}) => '동기화 규칙 생성됨 — 미시청 에피소드 ${count}개 유지';
	@override String get syncRuleUpdated => '동기화 규칙 업데이트됨';
	@override String get syncRuleRemoved => '동기화 규칙 제거됨';
	@override String get syncRuleAndDownloadsRemoved => '동기화 규칙과 연결된 다운로드가 삭제되었습니다';
	@override String get syncRuleCleanupBusy => '동기화 규칙이 현재 업데이트 중입니다. 잠시 후 다시 시도하세요.';
	@override String get syncRuleCleanupUnavailable => '연결된 다운로드를 안전하게 확인할 수 없습니다. 서버에 다시 연결한 후 시도하거나, 다운로드를 삭제하지 않고 규칙만 제거하세요.';
	@override String syncedNewEpisodes({required Object title, required Object count}) => '${title}의 새 에피소드 ${count}개 동기화됨';
	@override String get activeSyncRules => '동기화 규칙';
	@override String get noSyncRules => '동기화 규칙 없음';
	@override String get manageSyncRule => '동기화 관리';
	@override String get editEpisodeCount => '에피소드 수';
	@override String get editSyncFilter => '동기화 필터';
	@override String get syncAllItems => '모든 항목 동기화 중';
	@override String get syncUnwatchedItems => '시청하지 않은 항목 동기화 중';
	@override String syncRuleServerContext({required Object server, required Object status}) => '서버: ${server} • ${status}';
	@override String get syncRuleAvailable => '사용 가능';
	@override String get syncRuleOffline => '오프라인';
	@override String get syncRuleSignInRequired => '로그인 필요';
	@override String get syncRuleAccessDenied => '접근 거부됨';
	@override String get syncRuleNotAvailableForProfile => '현재 프로필에서 사용할 수 없음';
	@override String get syncRuleUnknownServer => '알 수 없는 서버';
	@override String get syncRuleListCreated => '동기화 규칙이 생성되었습니다';
	@override late final _Translations$downloads$backgroundWarning$ko backgroundWarning = _Translations$downloads$backgroundWarning$ko._(_root);
	@override String get options => '다운로드 옵션';
	@override late final _Translations$downloads$groupings$ko groupings = _Translations$downloads$groupings$ko._(_root);
	@override String get unknownLibrary => '알 수 없는 라이브러리';
	@override String get unknownShow => '알 수 없는 프로그램';
	@override String get unknownSeason => '알 수 없는 시즌';
	@override String get unknownAlbum => '알 수 없는 앨범';
	@override String completedOfTotal({required Object completed, required Object total}) => '${completed}/${total} 완료';
	@override String get errorFileNotFound => '파일을 찾을 수 없음(404)';
	@override String get errorDownloadNotAllowed => '서버에서 다운로드를 허용하지 않음(403)';
	@override String get errorDownloadFailed => '다운로드 실패';
	@override String errorDownloadFailedWithReason({required Object reason}) => '다운로드 실패: ${reason}';
	@override String errorHttpStatus({required Object status}) => '다운로드 실패(HTTP ${status})';
	@override String errorPostProcessing({required Object reason}) => '후처리 실패: ${reason}';
	@override String get reasonFileNotSaved => '이 기기에 파일을 저장할 수 없습니다';
	@override String get reasonCannotResume => '일부만 받은 다운로드를 이어서 받을 수 없습니다';
	@override String get reasonDeviceStorageFull => '이 기기의 저장 공간이 부족합니다';
	@override String get notificationDownloading => '다운로드 중...';
	@override String get notificationComplete => '다운로드 완료';
	@override String get notificationPaused => '다운로드 일시 중지';
}

// Path: shaders
class _Translations$shaders$ko extends Translations$shaders$en {
	_Translations$shaders$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '셰이더';
	@override String get noShaderDescription => '비디오 향상 없음';
	@override String get nvscalerDescription => '더 선명한 비디오를 위한 NVIDIA 이미지 스케일링';
	@override String get artcnnVariantNeutral => '중립';
	@override String get artcnnVariantDenoise => '노이즈 제거';
	@override String get artcnnVariantDenoiseSharpen => '노이즈 제거 + 선명화';
	@override String get qualityFast => '빠름';
	@override String get qualityHQ => '고품질';
	@override String get mode => '모드';
	@override String get importShader => '셰이더 가져오기';
	@override String get customShaderDescription => '사용자 정의 GLSL 셰이더';
	@override String get shaderImported => '셰이더를 가져왔습니다';
	@override String get shaderImportFailed => '셰이더 가져오기 실패';
	@override String get deleteShader => '셰이더 삭제';
	@override String deleteShaderConfirm({required Object name}) => '"${name}"을(를) 삭제하시겠습니까?';
}

// Path: companionRemote
class _Translations$companionRemote$ko extends Translations$companionRemote$en {
	_Translations$companionRemote$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '컴패니언 리모컨';
	@override String connectedTo({required Object name}) => '${name}에 연결됨';
	@override String get unknownDevice => '알 수 없는 기기';
	@override late final _Translations$companionRemote$session$ko session = _Translations$companionRemote$session$ko._(_root);
	@override late final _Translations$companionRemote$pairing$ko pairing = _Translations$companionRemote$pairing$ko._(_root);
	@override late final _Translations$companionRemote$remote$ko remote = _Translations$companionRemote$remote$ko._(_root);
	@override late final _Translations$companionRemote$errors$ko errors = _Translations$companionRemote$errors$ko._(_root);
	@override String get closedBeforeAuth => '인증 전에 연결이 종료되었습니다';
}

// Path: videoSettings
class _Translations$videoSettings$ko extends Translations$videoSettings$en {
	_Translations$videoSettings$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get playbackSpeed => '재생 속도';
	@override String get normalSpeed => '보통';
	@override String sleepTimerActive({required Object duration}) => '활성 (${duration})';
	@override String get zoom => '확대/축소';
	@override String get sleepTimer => '취침 타이머';
	@override String get audioSync => '오디오 동기화';
	@override String get subtitleSync => '자막 동기화';
	@override String get hdr => 'HDR';
	@override String get hdrUnsupported => '여기서는 HDR을 사용할 수 없습니다. 이 데스크톱 컴포지터 또는 비디오 출력에서 HDR을 전달할 수 없습니다.';
	@override String get hdrToneMapping => 'HDR 톤 매핑';
	@override String get hdrToneMappingCompositor => '컴포지터';
	@override String get hdrToneMappingCompositorDescription => '소스의 HDR 메타데이터를 그대로 전달하고 데스크톱 컴포지터에서 매핑하도록 합니다.';
	@override String get hdrToneMappingPlayer => '플레이어';
	@override String get hdrToneMappingPlayerDescription => '플레이어에서 디스플레이의 최대 밝기에 맞게 매핑한 다음 그 결과를 컴포지터에 전달합니다.';
	@override String get hdrToneMappingFailed => 'HDR 톤 매핑을 변경할 수 없습니다. 이전 모드가 계속 적용됩니다.';
	@override String get audioOutput => '오디오 출력';
	@override String get performanceOverlay => '성능 오버레이';
	@override String get audioOutputDolbyAtmos => 'Dolby Atmos';
	@override String get audioOutputDolbyAudio => 'Dolby Audio';
	@override String get audioOutputSurround => '서라운드';
	@override String get audioOutputSpatial => '공간 음향';
	@override String get audioOutputStereo => '스테레오';
	@override String get audioNormalization => '음량 정규화';
	@override String get audioNormalizationDisablesPassthrough => '오디오를 PCM으로 디코딩합니다. 켜져 있는 동안 패스스루가 꺼집니다';
}

// Path: performanceOverlay
class _Translations$performanceOverlay$ko extends Translations$performanceOverlay$en {
	_Translations$performanceOverlay$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get color => '색상';
	@override String get performance => '성능';
	@override String get buffer => '버퍼';
	@override String get app => '앱';
	@override String get decoder => '디코더';
	@override String get rawDecoder => '원본 디코더';
	@override String get tunneling => '터널링';
	@override String get passthrough => '패스스루';
	@override String get aspect => '화면비';
	@override String get rotation => '회전';
	@override String get dvSource => 'DV 소스';
	@override String get dvPath => 'DV 경로';
	@override String get dvRouteDecoder => 'Dolby Vision 디코더';
	@override String get dvRouteDecoderP81 => 'Dolby Vision 디코더 (P7→8.1)';
	@override String get dvRouteBaseLayer => '베이스 레이어';
	@override String get dvRouteBaseLayerHdr10 => 'HDR10 기본 레이어';
	@override String get dvRouteBaseLayerHlg => 'HLG 기본 레이어';
	@override String get dvRouteBaseLayerSdr => 'SDR 기본 계층';
	@override String get dvRouteReshaped => 'RPU 재구성(gpu-next)';
	@override String get p7Conversion => 'P7 변환';
	@override String get sampleRate => '샘플 레이트';
	@override String get pixelFormat => '픽셀 형식';
	@override String get hwFormat => 'HW 형식';
	@override String get matrix => '매트릭스';
	@override String get primaries => '원색';
	@override String get transfer => '전송';
	@override String get renderFps => '렌더 FPS';
	@override String get displayFps => '디스플레이 FPS';
	@override String get avSync => 'A/V 동기화';
	@override String get dropped => '드롭됨';
	@override String get dvRpus => 'DV RPU';
	@override String get dvRpuAverage => 'DV RPU 평균';
	@override String get dvSampleAverage => 'DV 샘플 평균';
	@override String get maxLuma => '최대 휘도';
	@override String get minLuma => '최소 휘도';
	@override String get maxCll => 'MaxCLL';
	@override String get maxFall => 'MaxFALL';
	@override String get cacheUsed => '사용 캐시';
	@override String get cacheLimit => '캐시 제한';
	@override String get speed => '속도';
	@override String get player => '플레이어';
	@override String get memory => '메모리';
	@override String get uiFps => 'UI FPS';
	@override String get fps => 'FPS';
	@override String get decoderAndroidHw => 'Android HW';
	@override String get decoderNvidiaHw => 'NVIDIA HW';
	@override String get decoderQualcommHw => 'Qualcomm HW';
	@override String get decoderMediatekHw => 'MediaTek HW';
	@override String get decoderExynosHw => 'Exynos HW';
	@override String get decoderSoftware => '소프트웨어';
	@override String get decoderHardware => '하드웨어';
	@override String get tunnelingActive => '활성';
	@override String dvRpuFailed({required Object converted, required Object failures}) => '${converted} (${failures}개 실패)';
}

// Path: externalPlayer
class _Translations$externalPlayer$ko extends Translations$externalPlayer$en {
	_Translations$externalPlayer$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '외부 플레이어';
	@override String get useExternalPlayer => '외부 플레이어 사용';
	@override String get useExternalPlayerDescription => '동영상을 다른 앱에서 열기';
	@override String get selectPlayer => '플레이어 선택';
	@override String get customPlayers => '사용자 정의 플레이어';
	@override String get systemDefault => '시스템 기본값';
	@override String get addCustomPlayer => '사용자 정의 플레이어 추가';
	@override String get playerName => '플레이어 이름';
	@override String get playerNameHint => '내 플레이어';
	@override String get playerCommand => '명령어';
	@override String get playerPackage => '패키지 이름';
	@override String get playerUrlScheme => 'URL 스킴';
	@override String get off => '꺼짐';
	@override String get launchFailed => '외부 플레이어를 열 수 없습니다';
	@override String appNotInstalled({required Object name}) => '${name}이(가) 설치되어 있지 않습니다';
	@override String get playInExternalPlayer => '외부 플레이어에서 재생';
}

// Path: metadataEdit
class _Translations$metadataEdit$ko extends Translations$metadataEdit$en {
	_Translations$metadataEdit$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get editMetadata => '편집...';
	@override String get screenTitle => '메타데이터 편집';
	@override String get basicInfo => '기본 정보';
	@override String get artwork => '아트워크';
	@override String get advancedSettings => '고급 설정';
	@override String get title => '제목';
	@override String get sortTitle => '정렬 제목';
	@override String get originalTitle => '원제';
	@override String get releaseDate => '출시일';
	@override String get contentRating => '콘텐츠 등급';
	@override String get studio => '스튜디오';
	@override String get tagline => '태그라인';
	@override String get summary => '줄거리';
	@override String get poster => '포스터';
	@override String get background => '배경';
	@override String get logo => '로고';
	@override String get squareArt => '정사각형 아트';
	@override String get selectPoster => '포스터 선택';
	@override String get selectBackground => '배경 선택';
	@override String get selectLogo => '로고 선택';
	@override String get selectSquareArt => '정사각형 아트 선택';
	@override String get fromUrl => 'URL에서';
	@override String get uploadFile => '파일 업로드';
	@override String get enterImageUrl => '이미지 URL 입력';
	@override String get imageUrl => '이미지 URL';
	@override String get metadataUpdated => '메타데이터가 업데이트되었습니다';
	@override String get metadataUpdateFailed => '메타데이터 업데이트 실패';
	@override String get artworkUpdated => '아트워크가 업데이트되었습니다';
	@override String get artworkUpdateFailed => '아트워크 업데이트 실패';
	@override String get noArtworkAvailable => '사용 가능한 아트워크 없음';
	@override String artworkOption({required Object index}) => '아트워크 옵션 ${index}';
	@override String selectedArtworkOption({required Object index}) => '아트워크 옵션 ${index}, 선택됨';
	@override String get notSet => '설정되지 않음';
	@override String get libraryDefault => '라이브러리 기본값';
	@override String get accountDefault => '계정 기본값';
	@override String get seriesDefault => '시리즈 기본값';
	@override String get episodeSorting => '에피소드 정렬';
	@override String get oldestFirst => '오래된 순';
	@override String get newestFirst => '최신 순';
	@override String get keep => '유지';
	@override String get allEpisodes => '모든 에피소드';
	@override String latestEpisodes({required Object count}) => '최신 에피소드 ${count}개';
	@override String get latestEpisode => '최신 에피소드';
	@override String episodesAddedPastDays({required Object count}) => '최근 ${count}일 내 추가된 에피소드';
	@override String get deleteAfterPlaying => '재생 후 에피소드 삭제';
	@override String get never => '안 함';
	@override String get afterADay => '하루 후';
	@override String get afterAWeek => '일주일 후';
	@override String get afterAMonth => '한 달 후';
	@override String get onNextRefresh => '다음 새로고침 시';
	@override String get seasons => '시즌';
	@override String get show => '표시';
	@override String get hide => '숨기기';
	@override String get episodeOrdering => '에피소드 순서';
	@override String get tmdbAiring => 'The Movie Database (방영순)';
	@override String get tvdbAiring => 'TheTVDB (방영순)';
	@override String get tvdbAbsolute => 'TheTVDB (절대순)';
	@override String get metadataLanguage => '메타데이터 언어';
	@override String get useOriginalTitle => '원제 사용';
	@override String get preferredAudioLanguage => '선호 오디오 언어';
	@override String get preferredSubtitleLanguage => '선호 자막 언어';
	@override String get subtitleMode => '자막 자동 선택 모드';
	@override String get manuallySelected => '수동 선택';
	@override String get shownWithForeignAudio => '외국어 오디오 시 표시';
	@override String get alwaysEnabled => '항상 활성화';
	@override String get tags => '태그';
	@override String get addTag => '태그 추가';
	@override String get genre => '장르';
	@override String get director => '감독';
	@override String get writer => '작가';
	@override String get producer => '프로듀서';
	@override String get country => '국가';
	@override String get collection => '컬렉션';
	@override String get label => '라벨';
	@override String get quickTag => '빠른 태그…';
}

// Path: matchScreen
class _Translations$matchScreen$ko extends Translations$matchScreen$en {
	_Translations$matchScreen$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get match => '일치...';
	@override String get fixMatch => '일치 수정...';
	@override String get unmatch => '일치 해제';
	@override String get unmatchConfirm => '이 매칭을 지울까요? 다시 매칭될 때까지 Plex에서는 미매칭으로 처리됩니다.';
	@override String get unmatchSuccess => '일치 해제됨';
	@override String get unmatchFailed => '일치 해제에 실패했습니다';
	@override String get matchApplied => '일치 적용됨';
	@override String get matchFailed => '일치 적용에 실패했습니다';
	@override String get titleHint => '제목';
	@override String get yearHint => '연도';
	@override String get search => '검색';
	@override String get noMatchesFound => '일치하는 항목이 없습니다';
}

// Path: serverTasks
class _Translations$serverTasks$ko extends Translations$serverTasks$en {
	_Translations$serverTasks$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '서버 작업';
	@override String get failedToLoad => '작업을 불러올 수 없습니다';
	@override String get noTasks => '실행 중인 작업 없음';
}

// Path: trakt
class _Translations$trakt$ko extends Translations$trakt$en {
	_Translations$trakt$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Trakt';
	@override String get connected => '연결됨';
	@override String connectedAs({required Object username}) => '@${username}(으)로 연결됨';
	@override String get disconnectConfirm => 'Trakt 계정 연결을 끊으시겠습니까?';
	@override String get disconnectConfirmBody => 'Luroka가 Trakt로 이벤트 전송을 중지합니다. 언제든 다시 연결할 수 있습니다.';
	@override String get scrobble => '실시간 스크로블';
	@override String get scrobbleDescription => '재생 중 재생, 일시정지, 정지 이벤트를 Trakt로 전송합니다.';
	@override String get watchedSync => '시청 상태 동기화';
	@override String get watchedSyncDescription => 'Luroka에서 시청 완료로 표시한 항목이 Trakt에도 시청 완료로 표시됩니다.';
}

// Path: seerr
class _Translations$seerr$ko extends Translations$seerr$en {
	_Translations$seerr$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Seerr';
	@override String get connectTitle => 'Seerr에 연결';
	@override String get serverUrl => '서버 URL';
	@override String get serverUrlHelper => 'Seerr 인스턴스의 주소';
	@override String get checkServer => '계속';
	@override String get signInWithJellyfin => 'Jellyfin으로 로그인';
	@override String get signInWithEmby => 'Emby로 로그인';
	@override String get signInWithLocal => '로컬 계정 사용';
	@override String get email => '이메일';
	@override String get noSignInMethods => '이 Seerr 인스턴스에는 Luroka가 지원하는 로그인 방법이 없습니다.';
	@override String get instance => '인스턴스';
	@override String get disconnectConfirm => 'Seerr 연결을 해제하시겠습니까?';
	@override String get disconnectConfirmBody => 'Luroka가 이 Seerr 인스턴스를 삭제합니다. 언제든 다시 연결할 수 있습니다.';
	@override String get request => '요청';
	@override String get request4k => '4K로 요청';
	@override String get seasons => '시즌';
	@override String get allSeasons => '모든 시즌';
	@override String get advancedOptions => '고급';
	@override String get destinationServer => '대상 서버';
	@override String get qualityProfile => '화질 프로파일';
	@override String get rootFolder => '루트 폴더';
	@override String get languageProfile => '언어 프로파일';
	@override String get tags => '태그';
	@override String get noTags => '태그 없음';
	@override String defaultOption({required Object name}) => '${name} (기본값)';
	@override String get animeNote => '이 시리즈는 애니메이션입니다.';
	@override String get requestSubmitted => '요청을 제출했습니다';
	@override String requestFailed({required Object error}) => '요청 실패: ${error}';
	@override String get requestsLoadFailed => '요청 옵션을 불러올 수 없습니다';
	@override String get nothingToRequest => '모두 이미 사용 가능하거나 요청되었습니다.';
	@override String get statusAvailable => '사용 가능';
	@override String get statusPartiallyAvailable => '일부 사용 가능';
	@override String get statusRequested => '요청됨';
	@override String get statusProcessing => '처리 중';
	@override String get statusBlocklisted => '차단 목록에 있음';
	@override String couldNotReach({required Object url, required Object error}) => '${url}에 연결할 수 없습니다: ${error}';
	@override String noInstanceAtUrl({required Object url, required Object status}) => '${url}에 Seerr 인스턴스가 없습니다(HTTP ${status})';
	@override String get behindAuthProxy => 'Seerr 대신 인증이 필요한 리버스 프록시(SSO 또는 HTTP 인증)가 응답했습니다. Luroka는 이를 통해 로그인할 수 없습니다. 이 앱에서 Seerr의 /api/v1 경로가 프록시를 우회하도록 하거나, Seerr에 직접 연결되는 주소를 사용하세요.';
	@override String get invalidUrl => 'https://seerr.example.com과 같은 서버 주소를 입력하세요';
	@override String get quickConnectUnsupported => '이 Seerr 인스턴스는 Quick Connect를 지원하지 않습니다. Seerr 3.4 이상이 필요합니다.';
	@override String get notInitialized => '이 Seerr 인스턴스는 최초 실행 설정을 완료하지 않았습니다';
	@override String get noPlexTokenForReauth => '다시 로그인하는 데 사용할 수 있는 Plex 토큰이 없습니다';
	@override String get noStoredCredentials => '다시 로그인하는 데 사용할 수 있는 저장된 인증 정보가 없습니다';
	@override String get signInRejected => '로그인이 거부되었습니다';
	@override String get noSessionCookie => 'Seerr에서 세션 쿠키를 발급하지 않았습니다';
	@override String get freshCookieRejected => 'Seerr에서 새 세션 쿠키를 거부했습니다';
	@override String get noUserInformation => 'Seerr에서 사용자 정보를 반환하지 않았습니다';
	@override String get sessionRejectedAfterReauth => '다시 로그인한 후 세션이 거부되었습니다';
	@override String get permissionDenied => 'Seerr가 이 작업을 거부했습니다: 계정에 필요한 권한이 더 이상 없습니다';
	@override String get permissionRevoked => '이 항목을 요청할 권한이 더 이상 없습니다';
}

// Path: services
class _Translations$services$ko extends Translations$services$en {
	_Translations$services$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '서비스';
	@override String get hubSubtitle => '시청 진행률을 동기화하고 새 작품을 요청하세요.';
	@override String get discoverySection => '검색 및 요청';
	@override String get trackingSection => '시청 기록 및 목록';
	@override String get seerrDescription => 'Seerr 서버에서 영화와 시리즈를 찾아 요청할 수 있습니다.';
	@override String get tmdbDescription => '영화와 시리즈, 포스터, 평점 및 상세 정보를 둘러보세요.';
	@override String get traktDescription => '영화와 시리즈를 기록하고 시청 상태를 동기화하며 관심 목록을 관리합니다.';
	@override String get malDescription => '애니메이션 목록과 시청 진행 상황을 동기화합니다.';
	@override String get anilistDescription => 'AniList에서 애니메이션을 기록하고 시청 진행 상황을 동기화합니다.';
	@override String get simklDescription => 'Simkl로 영화, 시리즈, 애니메이션 시청을 기록합니다.';
	@override String get mdblistDescription => 'MDBList 목록과 영화 평점을 연결합니다.';
	@override String connectionIntro({required Object service}) => '${service}을(를) 현재 Luroka 프로필에 연결합니다. 이 연결과 옵션은 언제든 여기에서 관리할 수 있습니다.';
	@override String connectService({required Object service}) => '${service} 연결';
	@override String get seerrConnectDescription => 'Seerr 서버를 연결하면 Luroka에서 영화와 시리즈를 찾아 요청할 수 있습니다.';
	@override String get seerrServerStep => 'Seerr를 열 때 사용하는 주소를 입력하세요. 서버에서 지원하는 로그인 방법을 확인합니다.';
	@override String get seerrSignInStep => '서버에서 지원하는 로그인 방법을 선택하세요.';
	@override String get integrations => '연동';
	@override String get notConnected => '연결되지 않음';
	@override String connectedAs({required Object username}) => '@${username}(으)로 연결됨';
	@override String get scrobble => '진행률 자동 추적';
	@override String get scrobbleDescription => '에피소드나 영화를 시청하면 목록을 업데이트합니다.';
	@override String disconnectConfirm({required Object service}) => '${service} 연결을 해제하시겠습니까?';
	@override String disconnectConfirmBody({required Object service}) => 'Luroka가 ${service} 업데이트를 중지합니다. 언제든 다시 연결할 수 있습니다.';
	@override String connectFailed({required Object service}) => '${service}에 연결할 수 없습니다. 다시 시도하세요.';
	@override late final _Translations$services$names$ko names = _Translations$services$names$ko._(_root);
	@override late final _Translations$services$simklReconnect$ko simklReconnect = _Translations$services$simklReconnect$ko._(_root);
	@override late final _Translations$services$deviceCode$ko deviceCode = _Translations$services$deviceCode$ko._(_root);
	@override late final _Translations$services$oauthProxy$ko oauthProxy = _Translations$services$oauthProxy$ko._(_root);
	@override late final _Translations$services$pendingAuth$ko pendingAuth = _Translations$services$pendingAuth$ko._(_root);
	@override late final _Translations$services$libraryFilter$ko libraryFilter = _Translations$services$libraryFilter$ko._(_root);
}

// Path: offlineRecovery
class _Translations$offlineRecovery$ko extends Translations$offlineRecovery$en {
	_Translations$offlineRecovery$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '서버가 오프라인 상태입니다';
	@override String get description => '다운로드 항목은 계속 사용할 수 있습니다. 서버가 복구되면 다시 연결해 보거나 다른 서버를 추가하세요.';
	@override String get appleTvDescription => 'Luroka가 미디어 서버에 연결할 수 없습니다. 사용 가능할 때 다시 연결해 보거나 계속 시청하려면 다른 서버를 추가하세요.';
	@override String get kidsDescription => '미디어 서버에 연결할 수 없습니다. 다시 연결해 보거나 부모님께 도움을 요청하세요.';
	@override String get retrying => '연결 중…';
	@override String get addServer => '서버 추가';
}

// Path: releaseUpdates
class _Translations$releaseUpdates$ko extends Translations$releaseUpdates$en {
	_Translations$releaseUpdates$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get manualInstructions => 'GitHub에서 릴리스 아카이브를 다운로드하고 APK를 추출한 후 Android 장치에 설치합니다.';
	@override String get tvInstructions => '휴대폰이나 컴퓨터에서 이 주소를 열거나 QR 코드를 스캔하여 릴리스를 다운로드하세요.';
	@override String get pressBackAgain => '재생을 종료하려면 뒤로를 다시 누르세요.';
}

// Path: profileIntegrations
class _Translations$profileIntegrations$ko extends Translations$profileIntegrations$en {
	_Translations$profileIntegrations$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Luroka를 나만의 것으로 만드세요';
	@override String get description => '즐겨찾는 서비스를 연결하여 시청 내용을 추적하고 새 영화와 프로그램을 요청하세요. 각 Luroka 프로필에는 자체 연결이 있습니다.';
	@override String get step => '선택적 통합';
	@override String get examples => 'Trakt · Simkl · AniList · MyAnimeList · Seerr';
	@override String get connect => '통합 살펴보기';
	@override String get later => '나중에 설정하세요';
	@override String get manage => '통합 관리';
	@override String forProfile({required Object name}) => '${name}에 대한 연결';
}

// Path: profileSetupGuide
class _Translations$profileSetupGuide$ko extends Translations$profileSetupGuide$en {
	_Translations$profileSetupGuide$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '프로필을 나만의 것으로 만드세요';
	@override String get description => '이 장치에서 이 프로필에 대한 Luroka의 모양과 느낌을 선택하세요. 나중에 설정에서 모든 내용을 변경할 수 있습니다.';
	@override String get appearanceStep => '1/2 · 화면 스타일';
	@override String get homeStep => '2/2 · 홈 화면';
	@override String get preview => '미리보기';
	@override String get previewTitle => '당신의 집';
	@override String get previewPoster => '포스터';
	@override String get posterArtwork => '예술작품만';
	@override String get posterWithDetails => '포스터 세부정보 표시';
	@override String get musicDescription => '가능한 경우 세부정보 페이지가 열려 있는 동안 영화나 프로그램의 테마를 재생하세요.';
	@override String get moreThemes => '더 많은 테마';
	@override String get fewerThemes => '더 적은 테마';
	@override String get spotlightHeading => 'Spotlight에는 무엇이 나타나야 합니까?';
	@override String get progressHeading => '계속해서 시청하고 다음 단계를 진행하세요';
	@override String get skip => '기본값을 사용하고 시청을 시작하세요';
	@override String get finish => '시청 시작';
	@override String get back => '뒤로';
	@override String get kContinue => '계속';
	@override String get chooseLater => '나중에 라이브러리 선택';
	@override String get libraryScope => '이는 이 프로필의 Luroka에 나타나는 내용을 변경합니다. 서버 권한은 변경되지 않습니다.';
	@override String get createdTitle => '프로필이 생성되었습니다.';
	@override String get createdDescription => '새 프로필이 준비되었습니다. 소유자는 처음 열 때 이를 개인화할 수 있습니다.';
	@override String get switchProfile => '이 프로필로 전환';
	@override String get stayHere => '현재 프로필 유지';
}

// Path: animeFavorites
class _Translations$animeFavorites$ko extends Translations$animeFavorites$en {
	_Translations$animeFavorites$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get filter => '애니메이션';
	@override String get manage => '애니메이션 관리';
	@override String get description => '자동 감지에서는 애니메이션 라이브러리 이름과 사용 가능한 애니메이션 태그 또는 ID를 사용합니다. 라이브러리를 선택하고 개별 즐겨찾기를 수정하세요. 프로필에 대한 선택 사항이 이 기기에 저장됩니다.';
	@override String get libraries => '애니메이션 도서관';
	@override String get libraryHint => 'Anime이라는 라이브러리는 자동으로 인식됩니다. 분류를 변경할 라이브러리를 선택하세요.';
	@override String get titles => '좋아하는 제목';
	@override String get titleHint => '제목을 선택하여 애니메이션으로 표시하거나 자동 일치를 수정하세요.';
	@override String get automatic => '자동';
	@override String get include => '애니메이션';
	@override String get exclude => '애니메이션 아님';
	@override String get automaticIncluded => '자동 · 애니메이션';
	@override String get automaticExcluded => '자동 · 애니메이션 아님';
	@override String get noLibraries => '연결된 라이브러리를 사용할 수 없습니다.';
	@override String get noTitles => '좋아하는 영화나 프로그램이 없습니다.';
	@override String get empty => '즐겨찾는 애니메이션을 찾을 수 없습니다. 애니메이션 라이브러리를 확인하거나 제목을 애니메이션으로 표시하세요.';
	@override String get saveFailed => '애니메이션 설정을 저장할 수 없습니다. 다시 시도해 주세요.';
}

// Path: addServer
class _Translations$addServer$ko extends Translations$addServer$en {
	_Translations$addServer$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String addMediaBrowserTitle({required Object product}) => '${product} 서버 추가';
	@override String get serverUrls => '서버 URL';
	@override String get serverUrlsHelper => '쉼표로 구분하여 여러 URL을 입력할 수 있습니다.';
	@override String get findServer => '서버 찾기';
	@override String searchingLocalMediaBrowserServers({required Object product}) => '로컬 ${product} 서버를 찾는 중...';
	@override String localMediaBrowserServers({required Object product}) => '저장되어 있고 근처에 있는 ${product} 서버';
	@override String get username => '사용자 이름';
	@override String get password => '비밀번호';
	@override String get signIn => '로그인';
	@override String get change => '변경';
	@override String get required => '필수';
	@override String couldNotReachServer({required Object error}) => '서버에 연결할 수 없습니다: ${error}';
	@override String signInFailed({required Object error}) => '로그인 실패: ${error}';
	@override String quickConnectFailed({required Object error}) => 'Quick Connect 실패: ${error}';
	@override String get addPlexTitle => 'Plex로 로그인';
	@override String get pinExpired => '로그인 전에 PIN이 만료되었습니다. 다시 시도하세요.';
	@override String failedToRegisterAccount({required Object error}) => '계정 등록 실패: ${error}';
	@override String enterMediaBrowserUrlError({required Object product}) => '${product} 서버 URL을 입력하세요';
	@override String get addConnectionTitle => '연결 추가';
	@override String addConnectionTitleScoped({required Object name}) => '${name}에 추가';
	@override String get signInWithPlexCard => 'Plex로 로그인';
	@override String get signInWithPlexCardSubtitle => '이 기기를 승인합니다. 공유 서버가 추가됩니다.';
	@override String get signInWithPlexCardSubtitleScoped => 'Plex 계정을 승인합니다. 홈 사용자는 프로필이 됩니다.';
	@override String connectToMediaBrowserCard({required Object product}) => '${product}에 연결';
	@override String get connectToMediaBrowserCardSubtitle => '서버 URL, 사용자 이름, 비밀번호를 입력하세요.';
	@override String connectToMediaBrowserCardSubtitleScoped({required Object product, required Object name}) => '${product} 서버에 로그인하세요. ${name}에 연결됩니다.';
	@override String get borrowFromAnotherProfile => '다른 프로필에서 빌리기';
	@override String get borrowFromAnotherProfileSubtitle => '다른 프로필의 연결을 재사용합니다. PIN으로 보호된 프로필에는 PIN이 필요합니다.';
	@override String get invalidCredentials => '사용자 이름 또는 비밀번호가 올바르지 않습니다';
	@override String get authResponseNotJson => '인증 응답이 유효한 JSON이 아닙니다';
	@override String get authResponseIncomplete => '서버의 로그인 응답이 불완전합니다';
	@override String get quickConnectRejected => '서버에서 Quick Connect를 거부했습니다';
	@override String get quickConnectNotJson => 'Quick Connect 응답이 유효한 JSON이 아닙니다';
	@override String get quickConnectMissingFields => 'Quick Connect 응답에 코드 또는 비밀 키가 없습니다';
	@override String get quickConnectPollRejected => '서버에서 Quick Connect 폴링을 거부했습니다';
	@override String get serverTimedOut => '서버가 제시간에 응답하지 않았습니다';
	@override String get responseNotJson => '서버 응답이 유효한 JSON이 아닙니다';
	@override String responseMissingIdentity({required Object product}) => '응답에 ID 또는 서버 이름이 없습니다. 이 서버가 ${product} 서버인가요?';
	@override String probeFailed({required Object error}) => '서버에 연결할 수 없습니다: ${error}';
	@override String enterAtLeastOneUrl({required Object product}) => '${product} 서버 URL을 하나 이상 입력하세요';
	@override String noReachableServer({required Object product}) => '연결 가능한 ${product} 서버를 찾을 수 없습니다';
	@override String urlsPointToDifferentServers({required Object product}) => '이 URL들은 서로 다른 ${product} 서버를 가리킵니다';
	@override String urlDoesNotMatchServer({required Object product}) => '이 URL은 ${product} 서버와 일치하지 않습니다';
	@override String get redirectUnsupported => '서버가 지원되지 않는 URL로 리디렉션했습니다';
	@override String redirectDifferentHost({required Object product}) => '서버가 다른 호스트로 리디렉션했습니다. 최종 ${product} URL을 직접 입력하세요.';
	@override String get redirectInsecure => '서버가 HTTPS에서 안전하지 않은 URL로 리디렉션했습니다';
	@override String redirectUnsupportedEnterFinal({required Object product}) => '서버가 지원되지 않는 URL로 리디렉션했습니다. 최종 ${product} URL을 직접 입력하세요.';
}

// Path: appIcon.names
class _Translations$appIcon$names$ko extends Translations$appIcon$names$en {
	_Translations$appIcon$names$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get midnight => '자정';
	@override String get ember => '엠버';
	@override String get paper => '종이';
	@override String get oled => 'OLED';
	@override String get line => '라인';
	@override String get ocean => '바다';
	@override String get ultraviolet => '자외선';
	@override String get matcha => '말차';
	@override String get sunset => '일몰';
	@override String get gold => '골드';
	@override String get titanium => '티타늄';
	@override String get glass => '유리';
	@override String get crt => '브라운관';
	@override String get vhs => 'VHS';
	@override String get synthwave => '신스웨이브';
	@override String get pixel => '픽셀';
	@override String get neon => '네온';
	@override String get sticker => '스티커';
	@override String get ticket => '티켓';
	@override String get pop => '팝';
	@override String get strata => '지층';
	@override String get facet => '패싯';
	@override String get tilde => '물결표';
}

// Path: common.ratingSource
class _Translations$common$ratingSource$ko extends Translations$common$ratingSource$en {
	_Translations$common$ratingSource$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get critic => '평론가';
	@override String get audience => '관객';
	@override String get imdb => 'IMDb';
	@override String get tmdb => 'TMDB';
	@override String get rottenTomatoes => 'Rotten Tomatoes';
	@override String get simkl => 'Simkl';
	@override String get mal => 'MyAnimeList';
	@override String get anilist => 'AniList';
	@override String get trakt => 'Trakt';
	@override String get rottenTomatoesCritic => 'Rotten Tomatoes 평론가';
	@override String get rottenTomatoesAudience => 'Rotten Tomatoes 관객';
	@override String get metacritic => 'Metacritic';
	@override String get letterboxd => 'Letterboxd';
}

// Path: common.mediaKind
class _Translations$common$mediaKind$ko extends Translations$common$mediaKind$en {
	_Translations$common$mediaKind$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get movie => '영화';
	@override String get show => '시리즈';
	@override String get season => '시즌';
	@override String get episode => '에피소드';
	@override String get artist => '아티스트';
	@override String get album => '앨범';
	@override String get track => '트랙';
	@override String get collection => '컬렉션';
	@override String get playlist => '재생목록';
	@override String get clip => '클립';
	@override String get photo => '사진';
	@override String get folder => '폴더';
}

// Path: supporter.errors
class _Translations$supporter$errors$ko extends Translations$supporter$errors$en {
	_Translations$supporter$errors$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get storeUnavailable => '구매가 불가능합니다. 스토어에 로그인되어 있고 이 기기에서 구매가 허용되는지 확인하세요.';
	@override String get productNotFound => '현재 귀하의 매장에서는 Supporter를 구매할 수 없습니다.';
	@override String get productQueryFailed => '가격을 로드할 수 없습니다. 연결을 확인하고 다시 시도하세요.';
	@override String get purchaseFailed => '구매가 완료되지 않았습니다. 다시 시도해 보세요.';
	@override String get restoreFailed => '구매를 복원하기 위해 매장에 연결할 수 없습니다. 다시 시도해 보세요.';
	@override String get nothingToRestore => '이 스토어 계정에서는 Supporter 구매를 찾을 수 없습니다.';
}

// Path: themeEditor.slots
class _Translations$themeEditor$slots$ko extends Translations$themeEditor$slots$en {
	_Translations$themeEditor$slots$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get bg => '배경';
	@override String get surface => '표면';
	@override String get outline => '개요';
	@override String get text => '텍스트';
	@override String get textMuted => '보조 텍스트';
	@override String get accent => '악센트';
}

// Path: themeEditor.contrast
class _Translations$themeEditor$contrast$ko extends Translations$themeEditor$contrast$en {
	_Translations$themeEditor$contrast$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get textOnBg => '배경 텍스트';
	@override String get textOnSurface => '표면의 텍스트';
	@override String get textMutedOnBg => '배경의 보조 텍스트';
	@override String get textMutedOnSurface => '표면의 보조 텍스트';
	@override String get accentOnBg => '배경에 악센트';
	@override String get accentOnSurface => '표면에 악센트';
	@override String get labelOnAccent => '악센트에 버튼 라벨';
}

// Path: hotkeys.actions
class _Translations$hotkeys$actions$ko extends Translations$hotkeys$actions$en {
	_Translations$hotkeys$actions$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get playPause => '재생/일시정지';
	@override String get volumeUp => '볼륨 높이기';
	@override String get volumeDown => '볼륨 낮추기';
	@override String seekForward({required Object seconds}) => '앞으로 이동 (${seconds}초)';
	@override String seekBackward({required Object seconds}) => '뒤로 이동 (${seconds}초)';
	@override String get fullscreenToggle => '전체 화면 전환';
	@override String get muteToggle => '음소거 전환';
	@override String get subtitleToggle => '자막 전환';
	@override String get audioTrackNext => '다음 오디오 트랙';
	@override String get subtitleTrackNext => '다음 자막 트랙';
	@override String get chapterNext => '다음 챕터';
	@override String get chapterPrevious => '이전 챕터';
	@override String get episodeNext => '다음 에피소드';
	@override String get episodePrevious => '이전 에피소드';
	@override String get speedIncrease => '속도 높이기';
	@override String get speedDecrease => '속도 낮추기';
	@override String get speedReset => '속도 초기화';
	@override String get zoomIn => '확대';
	@override String get zoomOut => '축소';
	@override String get zoomReset => '확대/축소 초기화';
	@override String get subSeekNext => '다음 자막으로 이동';
	@override String get subSeekPrev => '이전 자막으로 이동';
	@override String get shaderToggle => '셰이더 전환';
	@override String get skipMarker => '인트로/크레딧 건너뛰기';
	@override String get screenshot => '스크린샷 찍기';
}

// Path: videoControls.pipErrors
class _Translations$videoControls$pipErrors$ko extends Translations$videoControls$pipErrors$en {
	_Translations$videoControls$pipErrors$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get androidVersion => 'Android 8.0 이상이 필요합니다';
	@override String get iosVersion => 'iOS 15.0 이상이 필요합니다';
	@override String get permissionDisabled => '화면 속 화면이 비활성화되어 있습니다. 시스템 설정에서 활성화하세요.';
	@override String get notSupported => '이 기기는 화면 속 화면 모드를 지원하지 않습니다';
	@override String get voSwitchFailed => '화면 속 화면을 위한 비디오 출력 전환에 실패했습니다';
	@override String get failed => '화면 속 화면 모드를 시작할 수 없습니다';
	@override String get prepareFailed => '화면 속 화면을 준비할 수 없습니다';
	@override String unknown({required Object error}) => '오류가 발생했습니다: ${error}';
}

// Path: accountPreferences.groups
class _Translations$accountPreferences$groups$ko extends Translations$accountPreferences$groups$en {
	_Translations$accountPreferences$groups$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get audioAndSubtitles => '오디오 및 자막';
	@override String get libraryDisplay => '라이브러리';
	@override String get personalMedia => '개인 미디어';
}

// Path: accountPreferences.subtitleModes
class _Translations$accountPreferences$subtitleModes$ko extends Translations$accountPreferences$subtitleModes$en {
	_Translations$accountPreferences$subtitleModes$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get none => '수동 선택';
	@override String get noneDescription => '자동으로 자막을 켜지 않습니다.';
	@override String get defaultMode => '트랙 플래그 따르기';
	@override String get defaultModeDescription => '각 자막 트랙에 저장된 기본 및 강제 플래그를 사용합니다.';
	@override String get always => '항상 활성화';
	@override String get alwaysDescription => '선호 언어의 자막 트랙이 있으면 항상 켭니다.';
	@override String get onlyForced => '강제 자막만';
	@override String get onlyForcedDescription => '강제로 표시된 트랙만 로드합니다.';
	@override String get smart => '외국어 오디오 시 표시';
	@override String get smartDescription => '오디오가 다른 언어일 때만 자막을 켭니다.';
}

// Path: accountPreferences.subtitleAccessibilityOptions
class _Translations$accountPreferences$subtitleAccessibilityOptions$ko extends Translations$accountPreferences$subtitleAccessibilityOptions$en {
	_Translations$accountPreferences$subtitleAccessibilityOptions$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get preferNonSdh => 'SDH가 아닌 자막 선호';
	@override String get preferSdh => 'SDH 자막 선호';
	@override String get onlySdh => 'SDH 자막만';
	@override String get onlyNonSdh => 'SDH가 아닌 자막만';
}

// Path: accountPreferences.forcedSubtitleOptions
class _Translations$accountPreferences$forcedSubtitleOptions$ko extends Translations$accountPreferences$forcedSubtitleOptions$en {
	_Translations$accountPreferences$forcedSubtitleOptions$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get preferNonForced => '강제가 아닌 자막 선호';
	@override String get preferForced => '강제 자막 선호';
	@override String get onlyForced => '강제 자막만';
	@override String get onlyNonForced => '강제가 아닌 자막만';
}

// Path: accountPreferences.watchedIndicatorOptions
class _Translations$accountPreferences$watchedIndicatorOptions$ko extends Translations$accountPreferences$watchedIndicatorOptions$en {
	_Translations$accountPreferences$watchedIndicatorOptions$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get none => '안 함';
	@override String get moviesAndShows => '영화 및 TV 프로그램';
	@override String get movies => '영화만';
	@override String get shows => 'TV 프로그램만';
}

// Path: accountPreferences.mediaReviewsOptions
class _Translations$accountPreferences$mediaReviewsOptions$ko extends Translations$accountPreferences$mediaReviewsOptions$en {
	_Translations$accountPreferences$mediaReviewsOptions$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get usersAndCritics => '사용자 및 평론가';
	@override String get usersOnly => '사용자만';
	@override String get criticsOnly => '평론가만';
	@override String get nobody => '숨김';
}

// Path: discover.person
class _Translations$discover$person$ko extends Translations$discover$person$en {
	_Translations$discover$person$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get born => '태어난';
	@override String get died => '사망';
	@override String get birthplace => '출생지';
	@override String dateWithAge({required Object date, required Object age}) => '${date}(연령 ${age})';
	@override String dateWithAgeAtDeath({required Object date, required Object age}) => '${date}(늙은 ${age})';
}

// Path: libraries.tabs
class _Translations$libraries$tabs$ko extends Translations$libraries$tabs$en {
	_Translations$libraries$tabs$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get recommended => '추천';
	@override String get browse => '찾아보기';
	@override String get collections => '컬렉션';
	@override String get playlists => '재생 목록';
}

// Path: libraries.groupings
class _Translations$libraries$groupings$ko extends Translations$libraries$groupings$en {
	_Translations$libraries$groupings$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '그룹';
	@override String get all => '전체';
	@override String get movies => '영화';
	@override String get shows => 'TV 프로그램';
	@override String get seasons => '시즌';
	@override String get episodes => '화';
	@override String get artists => '아티스트';
	@override String get albums => '앨범';
	@override String get tracks => '트랙';
	@override String get folders => '폴더';
}

// Path: libraries.filterCategories
class _Translations$libraries$filterCategories$ko extends Translations$libraries$filterCategories$en {
	_Translations$libraries$filterCategories$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get genre => '장르';
	@override String get year => '연도';
	@override String get contentRating => '시청 등급';
	@override String get tag => '태그';
	@override String get unwatched => '미시청';
	@override String get unplayed => '재생하지 않음';
	@override String get favorites => '즐겨찾기';
	@override String get filePath => '파일 경로';
}

// Path: libraries.sortLabels
class _Translations$libraries$sortLabels$ko extends Translations$libraries$sortLabels$en {
	_Translations$libraries$sortLabels$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '제목';
	@override String get dateAdded => '추가된 날짜';
	@override String get releaseDate => '출시일';
	@override String get rating => '평점';
	@override String get communityRating => '커뮤니티 평점';
	@override String get criticRating => '평론가 평점';
	@override String get userRating => '사용자 평점';
	@override String get datePlayed => '재생일';
	@override String get playCount => '재생 횟수';
	@override String get productionYear => '제작 연도';
	@override String get runtime => '재생 시간';
	@override String get officialRating => '공식 등급';
	@override String get premiereDate => '최초 공개일';
	@override String get startDate => '시작일';
	@override String get airTime => '방영 시간';
	@override String get studio => '스튜디오';
	@override String get random => '무작위';
	@override String get dateShared => '공유된 날짜';
	@override String get latestEpisodeAirDate => '최신 에피소드 방영일';
	@override String get lastEpisodeDateAdded => '최신 에피소드 추가일';
	@override String get dateDownloaded => '다운로드된 날짜';
	@override String get size => '크기';
	@override String get library => '라이브러리';
}

// Path: libraries.advancedFilters
class _Translations$libraries$advancedFilters$ko extends Translations$libraries$advancedFilters$en {
	_Translations$libraries$advancedFilters$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get include => '포함';
	@override String get exclude => '제외';
	@override String get any => '모두';
	@override String get yes => '예';
	@override String get no => '아니요';
	@override String not({required Object value}) => '${value} 아님';
	@override String valueCount({required Object count}) => '${count} 선택됨';
	@override String valueCountExcluded({required Object count}) => '${count} 제외됨';
	@override String get searchValues => '검색값';
	@override String get noValues => '값 없음';
	@override String get matchContains => '포함';
	@override String get matchNotContains => '포함하지 않음';
	@override String get matchIs => '이다';
	@override String get matchIsNot => '아니다';
	@override String get matchBeginsWith => '다음으로 시작';
	@override String get matchEndsWith => '다음으로 끝남';
	@override String get textHint => '일치하는 유형';
	@override String get from => '에서';
	@override String get to => '받는 사람';
	@override String range({required Object from, required Object to}) => '${from} ~ ${to}';
	@override String atLeast({required Object value}) => '${value} 이상';
	@override String atMost({required Object value}) => '최대 ${value}';
	@override String dateLastDays({required Object count}) => '지난 ${count}일';
	@override String get dateLastYear => '작년';
	@override String dateOlderThanDays({required Object count}) => '${count}일보다 오래됨';
	@override String get dateOlderThanYear => '1년 이상';
}

// Path: explore.rows
class _Translations$explore$rows$ko extends Translations$explore$rows$en {
	_Translations$explore$rows$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get watchlist => '관심 목록';
	@override String get recommendedMovies => '추천 영화';
	@override String get recommendedShows => '추천 TV 프로그램';
	@override String get trendingMovies => '지금 뜨는 영화';
	@override String get trendingShows => '지금 뜨는 TV 프로그램';
	@override String get popularMovies => '인기 영화';
	@override String get popularShows => '인기 TV 프로그램';
	@override String get trendingAnime => '지금 뜨는 애니메이션';
	@override String get suggestedAnime => '추천 애니메이션';
	@override String get airingAnime => '방영 중인 인기 애니메이션';
	@override String get popularAnime => '가장 인기 있는 애니메이션';
	@override String get trending => '지금 뜨는 콘텐츠';
	@override String get upcomingMovies => '개봉 예정 영화';
	@override String get upcomingShows => '방영 예정 TV 프로그램';
}

// Path: explore.status
class _Translations$explore$status$ko extends Translations$explore$status$en {
	_Translations$explore$status$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get airing => '방영 중';
	@override String get ended => '종영';
	@override String get canceled => '취소됨';
	@override String get upcoming => '방영 예정';
}

// Path: explore.badge
class _Translations$explore$badge$ko extends Translations$explore$badge$en {
	_Translations$explore$badge$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String rankPopular({required Object n}) => '#${n} 인기';
	@override String rankAiring({required Object n}) => '#${n} 방영 중';
	@override String rankRated({required Object n}) => '#${n} 평가';
	@override String rankTrending({required Object n}) => '#${n} 트렌드';
	@override String rankSeasonal({required Object n, required Object season}) => '#${n} ${season}';
	@override String watchingNow({required Object n}) => '${n}명 시청 중';
	@override String get available => '이용 가능';
	@override String get partiallyAvailable => '부분 이용 가능';
	@override String get availableIn4k => '4K 이용 가능';
	@override String get requested => '요청됨';
	@override String get pendingApproval => '승인 대기 중';
	@override String get processing => '처리 중';
	@override String get declined => '거절됨';
	@override String get requestFailed => '요청 실패';
	@override String get requested4k => '4K 요청됨';
	@override String seasonsAvailable({required Object available, required Object total}) => '시즌 ${available}/${total}';
	@override String nextEpisodeIn({required Object episode, required Object duration}) => '${episode}화 · ${duration} 후';
	@override String nextAiringIn({required Object duration}) => '${duration} 후 다음 화';
	@override String episodesShort({required Object n}) => '${n}화';
	@override String minutesPerEpisode({required Object n}) => '${n}분/화';
	@override String get adult => '18+';
}

// Path: explore.stats
class _Translations$explore$stats$ko extends Translations$explore$stats$en {
	_Translations$explore$stats$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String listed({required Object n}) => '${n}명 등록';
	@override String viewersDay({required Object n}) => '오늘 ${n}명 시청';
	@override String viewersWeek({required Object n}) => '이번 주 ${n}명 시청';
	@override String viewersMonth({required Object n}) => '이번 달 ${n}명 시청';
	@override String viewersYear({required Object n}) => '올해 ${n}명 시청';
	@override String viewersAllTime({required Object n}) => '시청자 ${n}명';
	@override String planning({required Object n}) => '${n}명 볼 예정';
	@override String favorited({required Object n}) => '즐겨찾기 ${n}명';
	@override String dropRate({required Object percent}) => '${percent} 하차';
	@override String comments({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n,
		one: '${n} 댓글',
		other: '댓글 ${n}개',
	);
	@override String votes({required Object n}) => '투표 ${n}개';
	@override String watching({required Object n}) => '시청 중 ${n}명';
	@override String completed({required Object n}) => '완료 ${n}명';
	@override String onHold({required Object n}) => '보류 ${n}명';
	@override String dropped({required Object n}) => '하차 ${n}명';
}

// Path: explore.season
class _Translations$explore$season$ko extends Translations$explore$season$en {
	_Translations$explore$season$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get winter => '겨울';
	@override String get spring => '봄';
	@override String get summer => '여름';
	@override String get fall => '가을';
	@override String withYear({required Object season, required Object year}) => '${season} ${year}년';
}

// Path: explore.format
class _Translations$explore$format$ko extends Translations$explore$format$en {
	_Translations$explore$format$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get tv => 'TV';
	@override String get tvShort => 'TV 단편';
	@override String get movie => '영화';
	@override String get special => '스페셜';
	@override String get ova => 'OVA';
	@override String get ona => 'ONA';
	@override String get music => '음악';
	@override String get other => '기타';
}

// Path: explore.sourceMaterial
class _Translations$explore$sourceMaterial$ko extends Translations$explore$sourceMaterial$en {
	_Translations$explore$sourceMaterial$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get original => '오리지널';
	@override String get manga => '만화';
	@override String get lightNovel => '라이트 노벨';
	@override String get novel => '소설';
	@override String get visualNovel => '비주얼 노벨';
	@override String get game => '게임';
	@override String get webComic => '웹툰';
	@override String get musicRelease => '음악';
	@override String get otherMedia => '기타';
}

// Path: explore.creditRole
class _Translations$explore$creditRole$ko extends Translations$explore$creditRole$en {
	_Translations$explore$creditRole$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get actor => '배우';
	@override String get director => '감독';
	@override String get writer => '각본';
	@override String get producer => '프로듀서';
	@override String get creator => '제작자';
	@override String get composer => '작곡';
}

// Path: explore.relation
class _Translations$explore$relation$ko extends Translations$explore$relation$en {
	_Translations$explore$relation$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get prequel => '프리퀄';
	@override String get sequel => '시퀄';
	@override String get sideStory => '사이드 스토리';
	@override String get spinOff => '스핀오프';
	@override String get alternativeVersion => '대체 버전';
	@override String get summary => '요약';
	@override String get parentStory => '원작';
	@override String get adaptation => '각색';
	@override String get other => '관련';
}

// Path: explore.detail
class _Translations$explore$detail$ko extends Translations$explore$detail$en {
	_Translations$explore$detail$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get originalTitle => '원제';
	@override String get alsoKnownAs => '다른 이름';
	@override String get studios => '스튜디오';
	@override String get country => '국가';
	@override String get language => '언어';
	@override String get released => '출시일';
	@override String get physicalRelease => '디스크 출시';
	@override String get ended => '종영';
	@override String addedOn({required Object date}) => '${date}에 추가됨';
	@override String get yourRating => '내 평점';
	@override String get budget => '제작비';
	@override String get revenue => '흥행 수익';
	@override String get contentAdvisory => '연령 등급';
	@override String get tags => '태그';
	@override String get revealSpoilerTags => '스포일러 태그 표시';
	@override String get links => '링크';
	@override String get watchOn => '시청처';
	@override String get watchTrailer => '예고편 보기';
	@override String openOn({required Object site}) => '${site}에서 열기';
	@override String get crew => '제작진';
	@override String get ratings => '평점';
	@override String get schedule => '방영 일정';
	@override String recommendedByUsers({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n,
		one: '${n} 사용자가 추천함',
		other: '사용자 ${n}명이 추천',
	);
	@override String recommendedBy({required Object who}) => '${who} 추천';
	@override String favoritedBy({required Object who}) => '${who} 즐겨찾기';
	@override String unairedEpisodes({required Object n}) => '미방영 ${n}개';
	@override String recommendedByPercent({required Object percent}) => '시청자의 ${percent} 추천';
	@override String get relatedTitles => '관련 작품';
	@override String get background => '배경';
}

// Path: liveTv.recordSettings
class _Translations$liveTv$recordSettings$ko extends Translations$liveTv$recordSettings$en {
	_Translations$liveTv$recordSettings$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get startEarly => '일찍 시작 (초)';
	@override String get endLate => '늦게 종료 (초)';
	@override String get newOnly => '새 에피소드만';
	@override String get anyChannel => '모든 채널에서 녹화';
	@override String get anyTime => '모든 시간대에 녹화';
	@override String get skipInLibrary => '라이브러리에 이미 있는 에피소드 건너뛰기';
	@override String get keepUpTo => '보관할 에피소드 수';
	@override String get keepUpToHint => '0이면 모든 에피소드 보관';
}

// Path: music.discography
class _Translations$music$discography$ko extends Translations$music$discography$en {
	_Translations$music$discography$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get singlesAndEps => '싱글 및 EP';
	@override String get live => '라이브';
	@override String get compilations => '컴필레이션';
}

// Path: watchTogether.notices
class _Translations$watchTogether$notices$ko extends Translations$watchTogether$notices$en {
	_Translations$watchTogether$notices$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String pressedPlay({required Object name}) => '${name} 누름 재생';
	@override String get playbackStarted => '재생이 시작되었습니다.';
	@override String paused({required Object name}) => '${name}님이 일시정지했습니다';
	@override String get playbackPaused => '재생이 일시중지되었습니다.';
	@override String jumpedTo({required Object name, required Object position}) => '${name}가 ${position}로 점프했습니다.';
	@override String roomJumpedTo({required Object position}) => '${position}로 점프했습니다.';
	@override String changedSpeed({required Object name, required Object speed}) => '${name}님이 속도를 ${speed}(으)로 설정했습니다';
	@override String speedChanged({required Object speed}) => '${speed}로 설정된 속도';
	@override String startedMedia({required Object name, required Object title}) => '${name}가 ${title}를 시작했습니다.';
	@override String mediaStarted({required Object title}) => '지금 ${title}를 플레이하고 있습니다';
	@override String stoppedMedia({required Object name}) => '${name}가 비디오를 중지했습니다.';
	@override String get mediaStopped => '영상이 멈췄어요';
	@override String waitingFor({required Object name}) => '${name}님을 기다리는 중...';
	@override String get waitingForSomeone => '누군가 따라잡기를 기다리고 있습니다...';
	@override String get finished => '완료';
	@override String hostChangedTo({required Object name}) => '${name}님이 호스트가 되었습니다';
	@override String get youAreNowHost => '이제 호스트입니다';
	@override String joined({required Object name}) => '${name}님이 참여했습니다';
	@override String left({required Object name}) => '${name}님이 나갔습니다';
	@override String get controlRefused => '호스트만 재생을 제어할 수 있습니다.';
	@override String get searchFailed => '일부 서버에서 회의실 영상을 검색할 수 없습니다.';
	@override String get playBlocked => '시작하려면 재생을 누르세요.';
	@override String get shareFailed => '이 동영상을 회의실과 공유할 수 없습니다.';
	@override String get notShared => '다운로드한 동영상은 회의실과 공유되지 않습니다.';
	@override String get openFailed => '방의 영상을 열 수 없습니다';
}

// Path: watchTogether.ended
class _Translations$watchTogether$ended$ko extends Translations$watchTogether$ended$en {
	_Translations$watchTogether$ended$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get ended => '호스트가 방을 종료했습니다.';
	@override String get kicked => '당신은 방에서 퇴장당했습니다';
	@override String get expired => '방이 만료되었습니다';
	@override String get replaced => '다른 기기에서 이 방에 참여했습니다.';
	@override String get lost => '방 연결이 끊겼어요';
}

// Path: watchTogether.errors
class _Translations$watchTogether$errors$ko extends Translations$watchTogether$errors$en {
	_Translations$watchTogether$errors$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get invalidCode => '그건 방 코드가 아닙니다. 코드는 0, 1, I, L, O 없이 6개의 문자와 숫자로 구성됩니다.';
	@override String get roomNotFound => '해당 코드가 있는 방이 없습니다. 종료되었을 수도 있습니다.';
	@override String get roomFull => '그 방은 꽉 찼어요.';
	@override String get roomLocked => '호스트가 그 방을 잠갔습니다.';
	@override String get relayFull => '함께 시청하기는 지금 바빠요. 나중에 다시 시도하세요.';
	@override String get unreachable => '함께 시청하기 릴레이에 연결할 수 없습니다. 연결을 확인하세요.';
	@override String get rateLimited => '시도 횟수가 너무 많습니다. 잠시 기다렸다가 다시 시도해 보세요.';
	@override String get clientBlocked => 'Luroka의 이 버전은 릴레이를 사용할 수 없습니다. 앱을 업데이트하세요.';
	@override String get forbidden => '호스트만이 이를 수행할 수 있습니다.';
	@override String get notInRoom => '당신은 방에 없습니다.';
	@override String get alreadyInRoom => '이미 방에 있습니다.';
	@override String get resumeFailed => '방에 다시 참여할 수 없습니다.';
	@override String get unsupported => '릴레이는 이를 지원하지 않습니다.';
	@override String get generic => '문제가 발생했습니다. 다시 시도해 보세요.';
}

// Path: downloads.backgroundWarning
class _Translations$downloads$backgroundWarning$ko extends Translations$downloads$backgroundWarning$en {
	_Translations$downloads$backgroundWarning$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get bannerBlocked => '앱에서 나가면 다운로드가 중지됩니다';
	@override String get bannerDegraded => '백그라운드 다운로드가 제한될 수 있습니다';
	@override String get bannerAction => '세부정보';
	@override String get sheetTitle => '백그라운드 다운로드가 차단됨';
	@override String get sheetTitleDegraded => '백그라운드 다운로드가 제한될 수 있음';
	@override String get sheetIntro => 'Android가 Luroka의 안정적인 백그라운드 다운로드를 차단하고 있습니다.';
	@override String get sheetIntroDegraded => '기기에서 Luroka가 백그라운드로 다운로드할 수 있는 시점을 제한하고 있습니다.';
	@override String get reasonBackgroundRestricted => 'Luroka의 백그라운드 사용이 제한되어 있습니다. 배터리 또는 백그라운드 사용을 "제한 없음"으로 설정하세요.';
	@override String get reasonStandbyRestricted => 'Android가 Luroka를 제한된 대기 상태로 전환했습니다. 배터리 사용량을 "제한 없음"으로 설정하세요.';
	@override String get reasonDownloadChannelBlocked => '다운로드 알림이 꺼져 있어 진행 상황과 제어 기능을 사용하지 못할 수 있습니다.';
	@override String get reasonNotificationsDisabled => '알림이 꺼져 있습니다. Android 13 이상에서는 장시간 백그라운드 다운로드에 알림이 필요합니다.';
	@override String get reasonDataSaver => '데이터 절약 모드가 켜져 있어 모바일 데이터로 백그라운드 다운로드를 할 수 없습니다. Wi-Fi에서는 계속 다운로드할 수 있습니다.';
	@override String get reasonOemUnknown => 'Luroka가 백그라운드에 있을 때 다운로드가 반복해서 중지되었습니다. Luroka의 배터리 또는 백그라운드 사용 설정을 확인하세요.';
	@override String get openSettings => '설정 열기';
	@override String get stillNotWorking => '기기별 도움말';
	@override String get stillNotWorkingDescription => '기기에 맞는 단계를 확인하세요. 문제가 계속되면 설정 › 로그 보기에서 로그를 보내 주세요.';
	@override String get dialogTitle => '다운로드가 완료되지 않을 수 있음';
	@override String get dialogDownloadAnyway => '그래도 다운로드';
	@override String get dialogFixFirst => '먼저 문제 해결';
	@override String get statusTile => '백그라운드 다운로드';
	@override String get statusOk => '백그라운드 실행 허용됨';
	@override String get statusBlocked => '시스템 설정에 의해 차단됨';
	@override String get statusDegraded => '시스템 설정에 의해 제한됨';
	@override String get statusUnknown => '아직 확인하지 않음';
	@override String get settingsUnavailable => '이 기기에서 시스템 설정을 열 수 없습니다';
	@override String get linkUnavailable => '이 기기에서 dontkillmyapp.com을 열 수 없습니다';
}

// Path: downloads.groupings
class _Translations$downloads$groupings$ko extends Translations$downloads$groupings$en {
	_Translations$downloads$groupings$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get library => '라이브러리';
	@override String get collections => '컬렉션';
}

// Path: companionRemote.session
class _Translations$companionRemote$session$ko extends Translations$companionRemote$session$en {
	_Translations$companionRemote$session$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get startingServer => '원격 서버 시작 중...';
	@override String get hostAddress => '호스트 주소';
	@override String get connected => '연결됨';
	@override String get serverRunning => '원격 서버 활성';
	@override String get serverStopped => '원격 서버 중지됨';
	@override String get serverRunningDescription => '네트워크의 모바일 기기가 이 앱에 연결할 수 있습니다';
	@override String get serverStoppedDescription => '모바일 기기의 연결을 허용하려면 서버를 시작하세요';
	@override String get usePhoneToControl => '모바일 기기로 이 앱을 제어하세요';
	@override String get startServer => '서버 시작';
	@override String get stopServer => '서버 중지';
	@override String get minimize => '최소화';
	@override String get manualAddressHint => '수동 연결 주소:';
}

// Path: companionRemote.pairing
class _Translations$companionRemote$pairing$ko extends Translations$companionRemote$pairing$en {
	_Translations$companionRemote$pairing$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get discoveryDescription => '같은 Plex 계정의 Luroka 기기가 여기에 표시됩니다';
	@override String get hostAddressHint => '192.168.1.100:48632';
	@override String get connecting => '연결 중...';
	@override String get searchingForDevices => '기기 검색 중...';
	@override String get noDevicesFound => '네트워크에서 기기를 찾을 수 없습니다';
	@override String get noDevicesHint => '데스크톱에서 Luroka를 열고 같은 Wi-Fi를 사용하세요';
	@override String get availableDevices => '사용 가능한 기기';
	@override String get manualConnection => '수동 연결';
	@override String get cryptoInitFailed => '보안 연결을 시작할 수 없습니다. 먼저 Plex에 로그인하세요.';
	@override String get validationHostRequired => '호스트 주소를 입력하세요';
	@override String get validationHostFormat => '형식은 IP:포트여야 합니다 (예: 192.168.1.100:48632)';
	@override String get connectionTimedOut => '연결 시간이 초과되었습니다. 두 기기에서 같은 네트워크를 사용하세요.';
	@override String get sessionNotFound => '기기를 찾을 수 없습니다. 호스트에서 Luroka가 실행 중인지 확인하세요.';
	@override String get authFailed => '인증에 실패했습니다. 두 기기 모두 같은 Plex 계정이 필요합니다.';
	@override String failedToConnect({required Object error}) => '연결 실패: ${error}';
}

// Path: companionRemote.remote
class _Translations$companionRemote$remote$ko extends Translations$companionRemote$remote$en {
	_Translations$companionRemote$remote$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get disconnectConfirm => '원격 세션 연결을 해제하시겠습니까?';
	@override String get reconnecting => '재연결 중...';
	@override String attemptOf({required Object current}) => '${current}/5 시도 중';
	@override String get retryNow => '지금 재시도';
	@override String get tabRemote => '리모컨';
	@override String get tabPlay => '재생';
	@override String get tabMore => '더 보기';
	@override String get menu => '메뉴';
	@override String get tabNavigation => '탭 탐색';
	@override String get tabDiscover => '둘러보기';
	@override String get tabLibraries => '미디어 라이브러리';
	@override String get tabSearch => '검색';
	@override String get tabDownloads => '다운로드';
	@override String get tabSettings => '설정';
	@override String get previous => '이전';
	@override String get playPause => '재생/일시정지';
	@override String get next => '다음';
	@override String get seekBack => '되감기';
	@override String get stop => '정지';
	@override String get seekForward => '빨리감기';
	@override String get volume => '볼륨';
	@override String get volumeDown => '줄이기';
	@override String get volumeUp => '높이기';
	@override String get fullscreen => '전체 화면';
	@override String get subtitles => '자막';
	@override String get audio => '오디오';
	@override String get searchHint => '데스크톱에서 검색...';
}

// Path: companionRemote.errors
class _Translations$companionRemote$errors$ko extends Translations$companionRemote$errors$en {
	_Translations$companionRemote$errors$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get noNetworkInterface => '네트워크 인터페이스를 찾을 수 없습니다';
	@override String get authenticationFailed => '인증 실패';
	@override String serverStartFailed({required Object error}) => '원격 서버를 시작하지 못했습니다: ${error}';
	@override String commandFailed({required Object error}) => '원격 명령을 보내지 못했습니다: ${error}';
	@override String get joinTimedOut => '세션 참가 시간이 초과되었습니다';
	@override String get failedToConnectAnyAddress => '어떤 주소에도 연결하지 못했습니다';
	@override String connectionLostAfterAttempts({required Object attempts}) => '${attempts}회 시도 후 연결이 끊어졌습니다';
	@override String get connectionLost => '연결이 끊어졌습니다';
}

// Path: services.names
class _Translations$services$names$ko extends Translations$services$names$en {
	_Translations$services$names$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get mal => 'MyAnimeList';
	@override String get anilist => 'AniList';
	@override String get simkl => 'Simkl';
	@override String get seerr => 'Seerr';
	@override String get mdblist => 'MDBList';
}

// Path: services.simklReconnect
class _Translations$services$simklReconnect$ko extends Translations$services$simklReconnect$en {
	_Translations$services$simklReconnect$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Simkl 다시 연결';
	@override String get subtitle => 'Simkl는 이 연결에서 사용하는 로그인 방법을 중단합니다. 다시 연결하면 simkl.com이 열리고 Luroka를 승인합니다. — Luroka는 사용자의 비밀번호를 볼 수 없습니다. 시청 기록은 Simkl에 유지됩니다.';
}

// Path: services.deviceCode
class _Translations$services$deviceCode$ko extends Translations$services$deviceCode$en {
	_Translations$services$deviceCode$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String title({required Object service}) => '${service}에서 Luroka 활성화';
	@override String get instructions => 'QR 코드를 스캔하거나 아래 주소로 이동하여 이 코드를 입력하세요:';
	@override String openToActivate({required Object service}) => '활성화하려면 ${service} 열기';
	@override String get copyCode => '활성화 코드 복사';
	@override String get waitingForAuthorization => '인증을 기다리는 중…';
	@override String get codeCopied => '코드가 복사되었습니다';
}

// Path: services.oauthProxy
class _Translations$services$oauthProxy$ko extends Translations$services$oauthProxy$en {
	_Translations$services$oauthProxy$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String title({required Object service}) => '${service}에 로그인';
	@override String get body => '이 QR 코드를 스캔하거나 아무 기기에서 URL을 여세요.';
	@override String openToSignIn({required Object service}) => '로그인하려면 ${service} 열기';
}

// Path: services.pendingAuth
class _Translations$services$pendingAuth$ko extends Translations$services$pendingAuth$en {
	_Translations$services$pendingAuth$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get copyUrl => '로그인 URL 복사';
	@override String get urlCopied => 'URL이 복사되었습니다';
}

// Path: services.libraryFilter
class _Translations$services$libraryFilter$ko extends Translations$services$libraryFilter$en {
	_Translations$services$libraryFilter$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '라이브러리 필터';
	@override String get subtitleAllSyncing => '모든 라이브러리 동기화 중';
	@override String get subtitleNoneSyncing => '동기화 안 함';
	@override String subtitleBlocked({required Object count}) => '${count}개 차단됨';
	@override String subtitleAllowed({required Object count}) => '${count}개 허용됨';
	@override String get mode => '필터 모드';
	@override String get modeBlacklist => '차단 목록';
	@override String get modeWhitelist => '허용 목록';
	@override String get modeHintBlacklist => '아래에 선택한 라이브러리를 제외한 모든 라이브러리를 동기화합니다.';
	@override String get modeHintWhitelist => '아래에 선택한 라이브러리만 동기화합니다.';
	@override String get libraries => '라이브러리';
	@override String get noLibraries => '사용 가능한 라이브러리가 없습니다';
}

/// The flat map containing all translations for locale <ko>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsKo {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'mobileLibrary.pickerSubtitle' => '탐색할 컬렉션을 선택하세요',
			'mobileLibrary.searchLibraries' => '도서관 검색',
			'mobileLibrary.noLibraries' => '일치하는 라이브러리가 없습니다.',
			'mobileLibrary.ascending' => '오름차순',
			'mobileLibrary.descending' => '내림차순',
			'mobileLibrary.sort' => '정렬',
			'mobileLibrary.unwatchedCount' => ({required Object count}) => '${count} 보지 않은 에피소드',
			'mobileLibrary.latestEpisode' => '최신 에피소드',
			'profileStartup.autoLogin' => '마지막으로 사용한 프로필 열기',
			'profileStartup.autoLoginHint' => 'PIN가 필요하지 않은 경우 마지막 프로필을 자동으로 엽니다.',
			'profileStartup.allowKidsExit' => '보호자 PIN 없이 키즈 프로필에서 나가기 허용',
			'profileStartup.allowKidsExitHint' => '자녀가 보호자 PIN 없이 다른 프로필로 전환할 수 있습니다. 프로필 PIN은 계속 적용됩니다.',
			'profileStartup.chooseKidsConnection' => '다른 계정이나 서버를 선택하세요',
			'profileStartup.chooseKidsConnectionHint' => '저장 후 별도의 계정을 연결하거나 다른 프로필에서 연결을 선택하세요.',
			'subtitleUpload.chooseFile' => '자막 파일 업로드',
			'subtitleUpload.hint' => '위에서 언어를 선택한 다음 SRT, ASS, SSA 또는 VTT 파일을 이 서버에 업로드하세요.',
			'subtitleUpload.success' => '자막이 서버에 업로드되었습니다. 서버가 항목을 새로 고칠 때 나타납니다.',
			'subtitleUpload.failed' => '자막을 업로드할 수 없습니다. 파일 및 서버 권한을 확인하세요.',
			'personSpotlight.inYourLibraries' => '당신의 도서관에서',
			'personSpotlight.libraryTitles' => ({required Object n}) => '귀하의 라이브러리 · ${n} 타이틀',
			'personSpotlight.readBiography' => '전기 읽기',
			'personSpotlight.newestFirst' => '최신순',
			'personSpotlight.oldestFirst' => '오래된 것부터',
			'personSpotlight.titleAscending' => '제목 A~Z',
			'personSpotlight.sortTitles' => '필모그래피 정렬',
			'personSpotlight.unwatchedEpisodes' => ({required Object n}) => '${n} 보지 않은 에피소드',
			'personSpotlight.copies' => ({required Object n}) => '${n} 라이브러리 사본',
			'personSpotlight.versions' => ({required Object n}) => '${n} 파일 버전',
			'personSpotlight.retryTitles' => '모든 타이틀을 로드할 수 없습니다. 재시도',
			'detailExtras.onlineVideos' => '예고편 및 엑스트라',
			'detailExtras.reviews' => '리뷰',
			'detailExtras.readReview' => '전체 리뷰 읽기',
			'detailExtras.directedBy' => ({required Object name}) => '${name} 감독의 작품 더보기',
			'detailExtras.previewUnavailable' => '이 미리보기를 재생할 수 없습니다. 대신 원래 앱에서 열 수 있습니다.',
			'detailExtras.openExternally' => '원본 영상 열기',
			'mobileUi.readMore' => '더 읽어보세요',
			'mobileUi.readLess' => '간략히 보기',
			'mobileUi.playbackTools' => '재생 옵션',
			'mobileUi.streamingQuality' => '스트리밍 품질',
			'mobileUi.fileVersions' => '파일 버전',
			'mobileUi.qualityAndVersions' => '스트리밍 품질 및 파일 버전',
			'mobileUi.hidePlaybackTools' => '재생 도구 숨기기',
			'mobileUi.remaining' => ({required Object time}) => '${time} 왼쪽',
			'mobileUi.endsAt' => ({required Object time}) => '${time}에서 끝납니다.',
			'mobileUi.collection' => '당신의 컬렉션',
			'mobileUi.nowPlaying' => '지금 재생 중',
			'mobileUi.popularLibrary' => '내 라이브러리에서 인기 있는 항목',
			'mobileUi.weeklyLibrary' => '이번 주 내 라이브러리 인기 급상승',
			'family.title' => '프로필 및 가족',
			'family.yourPeople' => '당신의 사람들',
			'family.manageHint' => '이 기기에서 사람과 어린이의 안전, 시청 활동을 관리하세요.',
			'family.people' => '사람',
			'family.peopleCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n, one: '${n} 사람', other: '${n} 명', ),
			'family.kidsCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n, one: '${n} 자식', other: '${n} 키즈', ),
			'family.you' => '당신',
			'family.adult' => '성인',
			'family.child' => '어린이',
			'family.adultTeen' => '성인 또는 청소년',
			'family.adultHint' => '자체 프로필, 선택적 프로필 PIN 및 자체 서버 연결.',
			'family.childHint' => '연령 제한, 안전한 라이브러리, 어린이에게 적합한 화면을 설정합니다. 보호자 PIN으로 이 설정을 보호합니다.',
			'family.upToAge' => ({required Object age}) => '최대 연령 ${age}',
			'family.allAges' => '모든 연령층',
			'family.switchProfile' => '프로필 전환',
			'family.switchHint' => '누가 보고 있는지 선택하세요. 개인을 관리해도 프로필은 전환되지 않습니다.',
			'family.addPerson' => '사람 추가',
			'family.addChild' => '자녀 추가',
			'family.addHint' => '이 장치에 성인, 청소년 또는 어린이 프로필을 만드세요.',
			'family.emptyPeople' => '함께 시청하는 모든 사람을 위한 공간을 확보하세요.',
			'family.emptyKids' => '아직 어린이 프로필이 없습니다. 연령 제한과 안전한 도서관을 선택하려면 어린이를 추가하세요.',
			'family.safety' => '어린이와 안전',
			'family.safetyHint' => '보호자 PIN, 키즈 프로필 및 연령 제한.',
			'family.protection' => '보호',
			'family.kidsProfiles' => '어린이 프로필',
			'family.backupHistory' => '백업 및 기록',
			'family.parentPinOn' => '보호자 PIN 사용',
			'family.profilePin' => '프로필 PIN',
			'family.confirmParentPin' => '보호자 PIN 확인',
			'family.parentPinOff' => '보호자 PIN 미설정',
			'family.missingPin' => '이 설정을 보호하려면 보호자 PIN을 추가하세요.',
			'family.hideScope' => '이 Luroka 프로필의 계속 시청에서 어린이 활동을 숨기세요. 공유 서버 시청 기록은 변경되지 않습니다.',
			'family.localScope' => '자녀 프로필 및 제한사항은 이 기기에 저장됩니다. 동일한 서버 계정을 사용하는 프로필은 해당 계정의 시청 진행 상황을 계속 공유합니다.',
			'family.clearHistoryConfirm' => '어린이가 시청한 콘텐츠가 계속 시청에 다시 표시되도록 허용하시겠습니까? 어린이 프로필, 제한 사항, 시청 시간 통계 및 서버 시청 기록이 유지됩니다.',
			'family.editRestrictions' => '어린이 제한사항 수정',
			'family.activity' => '활동 보기',
			'family.namedActivity' => ({required Object name}) => '${name}의 시청 활동',
			'family.thisProfile' => '이 프로필',
			'family.activityScope' => '활성 프로필에 대해 이 장치에서 Luroka에 의해 기록된 재생 시간입니다. 이는 통계이지 제한이나 전체 서버 기록을 보는 것이 아닙니다.',
			'family.activityUnavailable' => '이 프로필에서는 아직 활동을 볼 수 없습니다.',
			'family.finished' => '완료',
			'posterDetails.showThemeMusic' => '테마 음악 재생',
			'posterDetails.showThemeMusicDescription' => '서버에서 사용 가능한 경우 세부정보 페이지가 열려 있는 동안 영화나 프로그램의 테마를 재생하세요.',
			'posterDetails.catalogEpisodeInfo' => '카탈로그 카드에 에피소드 수 및 실행 시간 표시',
			'posterDetails.catalogEpisodeInfoDescription' => '둘러보기 포스터에 에피소드 수와 평균 지속 시간을 표시합니다.',
			'posterDetails.title' => '포스터 세부정보',
			'posterDetails.description' => 'Studio, 검색, 둘러보기 및 라이브러리 전반의 포스터 아래에 제목, 연도 및 IMDb 등급을 표시합니다. 누락된 IMDb 등급은 숨겨져 있습니다. 예술작품 전용 포스터의 경우 끄세요.',
			'libraryPolish.compactTvNavigation' => '컴팩트 라이브러리 탐색',
			'libraryPolish.compactTvNavigationDescription' => '슬라이드 아웃 메뉴에 라이브러리 섹션을 표시하고 옵션을 탐색하여 포스터를 위한 더 많은 공간을 확보합니다.',
			'libraryPolish.openLibraryMenu' => '라이브러리 메뉴 열기',
			'libraryPolish.posterDetails' => '포스터 세부정보',
			'libraryPolish.showPosterDetails' => '포스터 세부정보 표시 · 이름, 연도 및 IMDb',
			'libraryPolish.hidePosterDetails' => '포스터 세부정보 숨기기',
			'libraryPolish.overview' => '개요',
			'libraryPolish.refreshing' => '상쾌한 도서관…',
			'libraryPolish.serverCollections' => '이 서버의 모든 컬렉션',
			'libraryPolish.serverPlaylists' => '이 서버의 모든 비디오 재생 목록',
			'libraryPolish.libraryCollections' => '이 도서관의 컬렉션',
			'libraryPolish.searchCollections' => '컬렉션 검색',
			'libraryPolish.searchPlaylists' => '재생목록 검색',
			'libraryPolish.searchHint' => '이름으로 검색',
			'libraryPolish.titleAscending' => '제목 A~Z',
			'libraryPolish.titleDescending' => '타이틀 Z–A',
			'libraryPolish.clearFilters' => '필터 지우기',
			'libraryPolish.playlistEmptyTitle' => '원하는 순서대로 영화 감상',
			'libraryPolish.playlistEmptyHint' => '타이틀의 더보기 메뉴를 열고 재생 목록에 추가를 선택하여 첫 번째 재생 목록을 만듭니다.',
			'libraryPolish.noMatches' => '일치하는 이름이 없습니다.',
			'libraryPolish.indexing' => '전체 카탈로그를 검색하는 중…',
			'showSchedule.today' => '오늘',
			'showSchedule.tomorrow' => '내일',
			'showSchedule.latestUpcoming' => '최신 및 향후 예정',
			'showSchedule.latestEpisode' => '최신 에피소드',
			'showSchedule.upcoming' => '예정',
			'showSchedule.inLibrary' => '라이브러리에 있음',
			'showSchedule.notInLibrary' => '라이브러리에 없음',
			'showSchedule.notYetAired' => '아직 방영되지 않음',
			'showSchedule.episode' => ({required Object number}) => '에피소드 ${number}',
			'showSchedule.caughtUp' => '다들 따라잡았어',
			'showSchedule.finished' => '이 시리즈를 마쳤습니다.',
			'showSchedule.nextAirs' => ({required Object date}) => '다음 에피소드는 ${date}를 방송합니다.',
			'showSchedule.watchBeginning' => '처음부터 시청',
			'showSchedule.replay' => '재생',
			'showSchedule.playNext' => '다음 플레이',
			'awardsCatalog.awards' => '수상 내역',
			'awardsCatalog.customize' => '사용자 정의',
			'awardsCatalog.chooseShelves' => '디스커버 맞춤설정',
			'awardsCatalog.shelvesDescription' => 'Discover에서 원하는 행을 선택하세요. 수상 행에는 도서관의 우승자가 표시됩니다. 이 프로필에 대한 선택 사항이 저장되었습니다.',
			'awardsCatalog.restoreShelves' => '기본값 복원',
			'awardsCatalog.charts' => 'IMDb 차트',
			'awardsCatalog.generalShelves' => '인기 및 트렌드',
			'awardsCatalog.saveShelvesFailed' => '둘러보기 선택사항을 저장할 수 없습니다. 다시 시도해 주세요.',
			'awardsCatalog.comedyActress' => '주연 · 코미디',
			'awardsCatalog.leadDramaActor' => '주연 · 드라마',
			'awardsCatalog.leadDramaActress' => '주연 · 드라마',
			'awardsCatalog.comedySupportingActor' => '남우조연상 · 코미디',
			'awardsCatalog.comedySupportingActress' => '여우조연상 · 코미디',
			'awardsCatalog.leadingPerformance' => '은곰상 · 최우수 주연상',
			'awardsCatalog.globesComedySeries' => '최우수 TV 시리즈 · 뮤지컬 또는 코미디',
			'awardsCatalog.limitedSupportingActor' => '남우조연상 · 한정 시리즈 또는 영화',
			'awardsCatalog.limitedSupportingActress' => '여우조연상 · 한정 시리즈 또는 영화',
			'awardsCatalog.berlinDocumentary' => '베를린영화제 다큐멘터리상',
			'awardsCatalog.title' => '수상 및 축제',
			'awardsCatalog.chooseCategory' => '수상 카테고리를 선택하세요',
			'awardsCatalog.winners' => '우승자',
			'awardsCatalog.nominees' => '후보자',
			'awardsCatalog.releaseDecade' => '출시 10년',
			'awardsCatalog.allYears' => '모든 연도',
			'awardsCatalog.loading' => '수상 경력 로드 중…',
			'awardsCatalog.matching' => '도서관에서 이 책을 찾는 중...',
			'awardsCatalog.unavailable' => '지금은 어워드 데이터를 사용할 수 없습니다. 다시 시도해 보세요.',
			'awardsCatalog.empty' => '이 카테고리에 대해 표시되는 라이브러리에 일치하는 제목이 없습니다.',
			'awardsCatalog.coverage' => '멤버십은 Wikidata에서 제공되며 불완전할 수 있습니다. 배우 및 감독 카테고리는 자신이 수상한 영화나 쇼를 보여줍니다. 연도는 행사가 아닌 타이틀 출시를 의미합니다.',
			'awardsCatalog.picture' => '최우수 작품',
			'awardsCatalog.film' => '최우수 영화',
			'awardsCatalog.international' => '최고의 국제 기능',
			'awardsCatalog.internationalFilm' => '최우수 국제 영화',
			'awardsCatalog.nonEnglishFilm' => '영어가 아닌 최고의 영화',
			'awardsCatalog.animated' => '최고의 애니메이션 기능',
			'awardsCatalog.animatedFilm' => '최우수 애니메이션 영화',
			'awardsCatalog.documentary' => '최고의 다큐멘터리 장편',
			'awardsCatalog.director' => '최우수 감독',
			'awardsCatalog.actor' => '최우수 남우주연상',
			'awardsCatalog.actress' => '최우수 여배우',
			'awardsCatalog.supportingActor' => '최우수 조연배우',
			'awardsCatalog.supportingActress' => '최우수 조연배우',
			'awardsCatalog.originalScreenplay' => '최우수 오리지널 각본',
			'awardsCatalog.adaptedScreenplay' => '최우수 각색 각본',
			'awardsCatalog.screenplay' => '최우수 각본',
			'awardsCatalog.cinematography' => '최우수 촬영상',
			'awardsCatalog.editing' => '최고의 편집',
			'awardsCatalog.score' => '최고의 오리지널 스코어',
			'awardsCatalog.song' => '최우수 오리지널 송',
			'awardsCatalog.sound' => '최고의 사운드',
			'awardsCatalog.effects' => '최고의 시각 효과',
			'awardsCatalog.productionDesign' => '최고의 프로덕션 디자인',
			'awardsCatalog.costume' => '최고의 의상 디자인',
			'awardsCatalog.makeup' => '최고의 메이크업과 헤어스타일링',
			'awardsCatalog.dramaSeries' => '뛰어난 드라마 시리즈',
			'awardsCatalog.comedySeries' => '뛰어난 코미디 시리즈',
			'awardsCatalog.limitedSeries' => '뛰어난 한정 시리즈',
			'awardsCatalog.animatedProgram' => '뛰어난 애니메이션 프로그램',
			'awardsCatalog.comedyActor' => '주연 · 코미디',
			'awardsCatalog.limitedActor' => '주연 · 한정 시리즈 또는 영화',
			'awardsCatalog.limitedActress' => '주연 · 한정 시리즈 또는 영화',
			'awardsCatalog.limitedDirecting' => '연출 · 한정 시리즈 또는 영화',
			'awardsCatalog.britishFilm' => '최우수 영국 영화',
			'awardsCatalog.goldenBear' => '황금곰',
			'awardsCatalog.grandJury' => '심사위원 대상',
			'awardsCatalog.jury' => '심사위원상',
			'awardsCatalog.teddy' => '테디상',
			'awardsCatalog.goldenLion' => '황금사자',
			'awardsCatalog.volpiActor' => '볼피컵 · 남우주연상',
			'awardsCatalog.volpiActress' => '볼피컵 · 여우주연상',
			'awardsCatalog.queerLion' => '퀴어 라이온',
			'awardsCatalog.dramaFilm' => '최우수 영화 · 드라마',
			'awardsCatalog.comedyFilm' => '최우수 영화 · 뮤지컬 또는 코미디',
			'awardsCatalog.dramaActor' => '남우주연상 · 드라마',
			'awardsCatalog.dramaActress' => '최우수 여우주연상 · 드라마',
			'awardsCatalog.usDramatic' => '미국 드라마 대상 심사위원상',
			'awardsCatalog.documentaryJury' => '다큐멘터리 심사위원상',
			'awardsCatalog.worldCinema' => '월드시네마 대상 심사위원상',
			'awardsCatalog.dramaticAudience' => '미국 드라마 관객상',
			'awardsCatalog.usDirecting' => '미국 감독상',
			'awardsCatalog.peopleChoice' => '피플스 초이스 상',
			'awardsCatalog.canadianFilm' => '최고의 캐나다 영화',
			'awardsCatalog.firstFeature' => '최고의 첫 번째 기능',
			'awardsCatalog.cassavetes' => '존 카사베츠상',
			'awardsCatalog.scienceFiction' => '최고의 SF 영화',
			'awardsCatalog.fantasy' => '최우수 판타지 영화',
			'awardsCatalog.horror' => '최고의 공포영화',
			'awardsCatalog.action' => '최우수 액션 또는 어드벤처 영화',
			'awardsCatalog.thriller' => '최우수 스릴러 영화',
			'searchDiscovery.suggestions' => '볼만한 것',
			'searchDiscovery.collections' => '수상 및 컬렉션',
			'searchDiscovery.collectionsHint' => '라이브러리에서 수상작 및 선별된 차트',
			'searchDiscovery.all' => '모든 발견',
			'searchDiscovery.awards' => '수상 경력 및 차트',
			'lurokaPlayerDesign.seeking' => '미리보기 탐색',
			'lurokaPlayerDesign.keepWatching' => '계속 시청하세요',
			'lurokaPlayerDesign.upNext' => '다음',
			'lurokaPlayerDesign.playingIn' => ({required Object seconds}) => '${seconds}에서 재생 중',
			'lurokaWorkspace.everyday' => '매일',
			'lurokaWorkspace.homeDiscovery' => '홈 & 디스커버리',
			'lurokaWorkspace.librariesAccounts' => '라이브러리 및 계정',
			'lurokaWorkspace.profilesFamily' => '프로필 및 가족',
			'lurokaWorkspace.thisDevice' => '이 장치',
			'lurokaWorkspace.thisProfile' => '이 프로필',
			'lurokaWorkspace.searchSettings' => '검색 설정',
			'lurokaWorkspace.savedAutomatically' => '변경 사항은 자동으로 저장됩니다. 매일 및 고급만 표시되는 컨트롤을 변경합니다.',
			'lurokaWorkspace.audioSubtitles' => '오디오 및 자막',
			'lurokaWorkspace.audioDescription' => '사운드 출력, 볼륨 및 자막 표시. 기본 언어는 연결 시 계정 기본 설정을 사용하여 서버 계정별로 설정됩니다.',
			'lurokaWorkspace.pictureSound' => '영상 및 사운드',
			'lurokaWorkspace.pictureDescription' => '이 장치에 대한 프레임 속도 일치, 해상도, HDR 및 Dolby Vision 조정.',
			'lurokaWorkspace.engineDescription' => '플레이어 엔진, 디코딩, 사용자 정의 구성 및 고급 재생 규칙.',
			'lurokaWorkspace.networkStreaming' => '네트워크 및 스트리밍',
			'lurokaWorkspace.networkDescription' => '스트리밍 품질, 직접 재생 코덱 기본 설정 및 대역폭 선택.',
			'lurokaWorkspace.homeOptions' => '홈 옵션',
			'lurokaWorkspace.refreshHome' => '새로 고침 홈 & 인기 상품',
			'lurokaWorkspace.customizeHome' => '홈 사용자 정의',
			'lurokaWorkspace.spotlight' => '홈 스포트라이트',
			'lurokaWorkspace.rotateSpotlight' => '추천 타이틀 자동 회전',
			'lurokaWorkspace.rotateDescription' => '홈이 유휴 상태인 동안 회전합니다. 상호작용이 회전을 일시 중지합니다. 서가를 탐색하거나 페이지를 열거나 앱을 종료하면 완전히 일시중지됩니다.',
			'lurokaWorkspace.rotationInterval' => '추천 타이틀 사이의 시간',
			'mobileFixes.connectionRecoveryHint' => '서버를 사용할 수 없나요? 계정을 관리하거나 다른 서버에 연결하세요.',
			'downloadsRedesign.shelfSize' => '선반당 품목',
			'downloadsRedesign.shelfSizeHint' => '계속 시청 및 추천 서가에 16개, 32개 또는 48개의 항목을 표시합니다. 서버는 사용 가능한 타이틀을 더 적게 반환할 수 있습니다.',
			'downloadsRedesign.subtitle' => '당신이 가장 좋아하는 것이 여행을 떠날 준비가 되었습니다.',
			'downloadsRedesign.transfers' => '환승',
			'downloadsRedesign.ready' => '오프라인 준비됨',
			'downloadsRedesign.active' => '다운로드 중',
			'downloadsRedesign.waiting' => '대기 중',
			'downloadsRedesign.downloaded' => '다운로드됨',
			'downloadsRedesign.speed' => '다운로드 속도',
			'downloadsRedesign.notificationProgress' => '{progress} · {networkSpeed} · {timeRemaining} 남음',
			'kidsShelf.movieShelf' => '영화 시간',
			'kidsShelf.showShelf' => '다음 공연을 찾아보세요',
			'kidsShelf.aurora' => '오로라 — 딥 틸 & 라임',
			'kidsShelf.marquee' => 'Marquee — 벨벳 & 골드',
			'kidsShelf.electric' => '일렉트릭 — 인디고 & 아이스',
			'kidsShelf.midnight' => '미드나잇 — 스틸 & 앰버',
			'kidsShelf.yourShelf' => '내 영화 섹션',
			'kidsShelf.all' => '모든 것',
			'kidsShelf.pickSomething' => '무엇을 보고 싶나요?',
			'kidsHome.everything' => '당신을 위해',
			'kidsHome.keepWatching' => '계속 시청하세요',
			'kidsHome.emptyFilter' => '아직 아무것도 없습니다. 당신을 위해 시도하거나 어른에게 당신이 좋아하는 것을 추가하도록 요청하십시오.',
			'tvSettingsV2.moreThemes' => '더 많은 테마 및 맞춤 색상',
			'tvSettingsV2.moreThemesHint' => '사용 가능한 모든 사전 설정 및 사용자 정의 테마 옵션을 엽니다.',
			'tvSettingsV2.previewLive' => '실시간 미리보기',
			'tvSettingsV2.previewIllustration' => '미리보기 예시',
			'tvSettingsV2.previewShelfCount' => ({required Object count}) => '선반당 최대 ${count} 품목',
			'tvSettingsV2.simple' => '단순',
			'tvSettingsV2.homeNavigation' => '홈 & 내비게이션',
			'tvSettingsV2.libraryCards' => '도서관 및 카드',
			'tvSettingsV2.accountsLibraries' => '계정 및 라이브러리',
			'tvSettingsV2.profilesFamily' => '프로필 및 가족',
			'tvSettingsV2.aboutSupport' => '정보 및 지원',
			'tvSettingsV2.playback' => '재생',
			'tvSettingsV2.homeHint' => '홈과 탐색에 표시되는 내용을 선택하세요.',
			'tvSettingsV2.libraryHint' => '포스터 크기, 레이블, 시청 표시기를 조정합니다.',
			'tvSettingsV2.advancedPlayback' => '플레이어 엔진 및 스트리밍',
			'tvSettingsV2.advancedPlaybackHint' => '플레이어, 비디오 출력, 스트리밍 및 고급 재생 선택.',
			'tvSettingsV2.advancedTools' => '진단 및 백업',
			'tvSettingsV2.advancedToolsHint' => '로그, 문제 해결, 설정 백업 및 재설정.',
			'tvSettingsV2.themePreview' => '테마 미리보기',
			'tvSettingsV2.libraryPreview' => '라이브러리 미리보기',
			'tvSettingsV2.homePreview' => '홈 미리보기',
			'tvSettingsV2.subtitlePreview' => '자막 미리보기',
			'tvSettingsV2.subtitleSample' => '자막은 다음과 같습니다.',
			'tvSettingsV2.previewPlaceholder' => '귀하의 작품이 여기에 표시됩니다.',
			'tvSettingsV2.posterSize' => '포스터 크기',
			'tvSettingsV2.serverRecommendations' => '서버에서 추천하는 홈',
			'tvSettingsV2.tvLayout' => 'TV 레이아웃 사용',
			'tvSettingsV2.hardwareDecode' => '하드웨어 비디오 디코딩 사용',
			'tvSettingsV2.serverNames' => '홈 행에 서버 이름 표시',
			'tvSettingsV2.settingsSaved' => '변경 사항은 자동으로 저장됩니다.',
			'tvSettingsV2.morePlayback' => '고급 재생',
			'tvSettingsV2.screenDisplay' => '영상 및 사운드',
			'tvSettingsV2.engine' => '플레이어 엔진',
			'tvSettingsV2.network' => '스트리밍 및 네트워크',
			'tvSettingsV2.performance' => '성능',
			'tvSettingsV2.simpleAudio' => '언어 및 자막 표시',
			'settingsRedesign.themeEffects' => '테마 및 효과',
			'settingsRedesign.libraryLayout' => '라이브러리 레이아웃',
			'settingsRedesign.posterInformation' => '포스터 정보',
			'settingsRedesign.libraryBehavior' => '라이브러리 동작',
			'settingsRedesign.appearanceHint' => 'Luroka의 모양, 레이아웃 및 동작을 사용자 정의하세요.',
			'settingsRedesign.livePreview' => '실시간 미리보기',
			'settingsRedesign.previewHint' => '현재 설정으로 라이브러리가 어떻게 보이는지 확인하세요.',
			'settingsRedesign.showLiveTv' => '라이브 TV 보기',
			'settingsRedesign.showLiveTvHint' => '연결된 서버가 지원하는 경우 탐색에 라이브 TV를 표시합니다. 이는 서버를 변경하지 않습니다.',
			'settingsRedesign.aboutTagline' => '귀하의 미디어. 당신의 공간.',
			'settingsRedesign.aboutDescription' => 'Luroka는 Plex, Jellyfin 및 Emby 라이브러리를 휴대폰, TV 및 데스크톱용 시네마틱 플레이어에 함께 제공합니다.',
			'settingsRedesign.aboutFeatures' => '라이브러리를 탐색하고, 영화와 프로그램을 다시 시작하고, 프로필을 개인화하고, 다운로드를 즐기고, 함께 시청하세요. 라이브 TV는 호환되는 서버에서 사용할 수 있습니다.',
			'settingsRedesign.services' => '당신의 세계를 연결하세요',
			'settingsRedesign.updateSource' => '소스 업데이트',
			'settingsRedesign.updateSourceHint' => 'Luroka 릴리스 피드의 HTTPS 주소입니다. 대리점은 앱에서 이를 사전 구성할 수 있습니다.',
			'settingsRedesign.updateNotConfigured' => '이 빌드에는 자동 업데이트가 구성되어 있지 않습니다.',
			'settingsRedesign.downloadInstall' => '다운로드 및 설치',
			'settingsRedesign.installUpdate' => '업데이트 설치',
			'settingsRedesign.downloading' => '업데이트 다운로드 중…',
			'settingsRedesign.downloadFailed' => '업데이트를 다운로드하거나 확인할 수 없습니다. 다시 시도해 주세요.',
			'settingsRedesign.installPermission' => 'Luroka가 Android 설정에서 업데이트를 설치하도록 허용한 다음 돌아가서 업데이트 설치를 선택합니다.',
			'settingsRedesign.updateReady' => '다운로드가 확인되었습니다. 설치 준비가 완료되었습니다.',
			'settingsRedesign.releaseNotes' => '릴리스 노트',
			'settingsRedesign.invalidFeed' => '유효한 HTTPS 업데이트 피드 주소를 입력하세요.',
			'onboarding.connectStep' => '01 · 연결',
			'onboarding.connectTitle' => 'Luroka에 오신 것을 환영합니다.',
			'onboarding.connectHint' => '라이브러리를 여기로 가져오려면 로그인하세요.',
			'onboarding.serverAddressHint' => '서버 주소를 입력하거나 네트워크에 있는 서버를 선택하세요.',
			'onboarding.serverSignInHint' => '서버 사용자 이름과 비밀번호를 사용하여 라이브러리를 연결하세요.',
			'onboarding.serverAddressTitle' => '서버 주소',
			'onboarding.serverAccountTitle' => '귀하의 서버 계정',
			'onboarding.plexHomeTitle' => 'Plex 홈 사용자를 선택하세요',
			'onboarding.plexHomeHint' => '사용하려는 라이브러리가 있는 Plex 사용자를 선택하십시오. 다음에는 Luroka 프로필을 설정합니다.',
			'onboarding.chooseService' => '서비스를 선택하세요',
			'onboarding.profileStep' => '02 · 귀하의 프로필',
			'onboarding.profileTitle' => '집처럼 편안하게 지내세요.',
			'onboarding.profileHint' => 'Luroka 프로필의 이름과 아바타를 선택하세요. 연결된 계정은 동일하게 유지됩니다.',
			'onboarding.readyStep' => '03 · 시청 준비 완료',
			'onboarding.readyTitle' => '조금 더 당신.',
			'onboarding.readyHint' => '귀하의 서비스를 하나로 통합하거나 다른 사람을 위한 공간을 확보하십시오. 나중에 언제든지 이 작업을 수행할 수 있습니다.',
			'onboarding.addService' => '다른 서비스 연결',
			'onboarding.editProfile' => '이름 및 아바타 편집',
			'onboarding.connected' => '연결 및 준비됨',
			'onboarding.backToProfile' => '프로필로 돌아가기',
			'onboarding.showOtherPlexHome' => '다른 Plex 홈 회원 표시',
			'onboarding.showOtherPlexHomeHint' => '기본적으로 꺼져 있습니다. 사용한 Luroka 프로필과 Plex 홈 구성원은 계속 표시됩니다. 다른 사람을 선택하려면 켜세요.',
			'household.title' => '귀하의 Luroka 가구',
			'household.welcome' => 'Luroka를 당신의 것으로 만드세요',
			'household.welcomeHint' => '첫 번째 계정이 연결되었습니다. 시청을 시작하기 전에 프로필을 개인화하거나 다른 사람을 추가하세요.',
			'household.profiles' => '프로필 및 가족',
			'household.manageHint' => '사람을 추가하고, 사진을 변경하고, 각 프로필의 연결을 관리하세요.',
			'household.addProfile' => 'Luroka 프로필 추가',
			'household.addHint' => '각 사람은 자신의 Plex, Emby 또는 Jellyfin 로그인을 연결할 수 있습니다. 프로필에 추가된 연결만 표시됩니다.',
			'household.sharedHint' => '다른 프로필의 연결을 재사용하면 해당 서버 사용자의 시청 상태 및 재생 진행 상황이 공유됩니다. 독립적인 시청 기록을 위해서는 별도의 로그인을 선택하세요.',
			'household.personalise' => '프로필 개인화',
			'household.changePicture' => '프로필 사진 변경',
			'household.pictureHint' => 'Luroka 아바타나 사진을 선택하세요. 이렇게 하면 이 장치의 사진만 변경됩니다. 귀하의 서버 계정은 그대로 유지됩니다.',
			'household.serverPicture' => '서버 사진/이니셜 사용',
			'household.choosePhoto' => '사진을 선택하세요',
			'household.photoHint' => 'JPEG, PNG 또는 기타 지원되는 이미지(최대 10MB) 사진의 크기가 조정되어 이 기기에 저장됩니다.',
			'household.pictureSaved' => '프로필 사진이 업데이트되었습니다.',
			'household.pictureFailed' => '프로필 사진을 업데이트할 수 없습니다. 최대 10MB까지 지원되는 이미지를 사용해 보세요.',
			'household.saveFailed' => '프로필 설정을 저장할 수 없습니다. 다시 시도해 주세요.',
			'household.startWatching' => '시청 시작',
			'household.manageProfiles' => '프로필 관리 또는 전환',
			'household.addLater' => '나중에 설정 → 프로필 및 가족에서 더 많은 사람을 추가할 수 있습니다.',
			'household.connectionRequired' => '이 프로필 설정을 완료하려면 서버 연결을 추가하세요.',
			'household.mountain' => '산',
			'household.orbit' => '탐험가',
			'household.waves' => '바다',
			'household.blossom' => '블라썸',
			'household.lightning' => '번개',
			'household.moon' => '달',
			'household.avatarGallery' => '아바타를 선택하세요',
			'household.avatarIllustrationHint' => '원본 일러스트 초상화, 어린이 및 동물 친구들',
			'household.avatarPortraitSunrise' => '일출 초상화',
			'household.avatarPortraitMeadow' => '초원 초상화',
			'household.avatarPortraitBerry' => '베리 초상화',
			'household.avatarPortraitGolden' => '황금 초상화',
			'household.avatarPortraitIndigo' => '인디고 초상화',
			'household.avatarPortraitOcean' => '바다 초상화',
			'household.avatarKidArtist' => '작은 예술가',
			'household.avatarKidSkater' => '작은 스케이터',
			'household.avatarCat' => '호기심 많은 고양이',
			'household.avatarDog' => '행복한 개',
			'household.avatarPanda' => '팬더',
			'household.avatarOwl' => '올빼미',
			'household.avatarFox' => '여우',
			'household.avatarDinosaur' => '공룡',
			'household.avatarRobot' => '로봇',
			'detailComposition.startOver' => '다시 시작하세요',
			'detailComposition.seriesCast' => '시리즈 출연진',
			'detailComposition.streamingQuality' => '스트리밍 품질…',
			'detailComposition.trailer' => '예고편',
			'detailComposition.manageMedia' => '미디어 관리…',
			'detailComposition.playbackOptions' => '재생 옵션…',
			'detailComposition.moreActions' => '추가 작업',
			'detailComposition.watched' => '시청함',
			'detailComposition.unwatched' => '시청하지 않음',
			'detailComposition.endsAt' => ({required Object time}) => '${time}에서 끝납니다.',
			'detailComposition.automatic' => '자동',
			'detailComposition.usePreferences' => '재생 기본 설정 사용',
			'detailComposition.mediaInformation' => '미디어 정보',
			'detailComposition.fullFileInformation' => '전체 파일 정보',
			'detailComposition.castAndCrew' => '출연진 및 제작진',
			'kids.timeLimits' => '화면 시간 제한',
			'kids.dailyWatchLimit' => '일일 시청 시간',
			'kids.dailyWatchLimitHint' => '매일 이 장치에서 비디오 재생을 제한합니다.',
			'kids.noTimeLimit' => '제한 없음',
			'kids.minutesLimit' => ({required Object minutes}) => '${minutes}분',
			'kids.bedtime' => '취침 시간',
			'kids.bedtimeHint' => '이 시간에 프로필을 사용하려면 부모 PIN이 필요합니다.',
			'kids.bedtimeStart' => '취침 시간 시작',
			'kids.bedtimeEnd' => '취침 시간 종료',
			'kids.timeLimitReached' => '오늘의 시청 시간이 끝났습니다.',
			'kids.bedtimeReached' => '취침시간이다',
			'kids.timeLimitParentHint' => '계속 시청하려면 부모님께 PIN을 입력해 달라고 요청하세요.',
			'kids.parentUnlock' => '부모 잠금 해제',
			'kids.backupProfile' => '자녀 프로필 백업',
			'kids.backupExplain' => '이 프로필의 저장된 이름, 캐릭터, 제한 사항, 외모 및 로컬 보기 제외를 백업하세요. 상위 PIN, 서버 로그인, 다운로드 및 서버 재생 진행 상황은 포함되지 않습니다.',
			'kids.saveBackupFile' => '백업 파일 저장',
			'kids.copyBackup' => '백업 텍스트 복사',
			'kids.backupSaved' => ({required Object path}) => '${path}에 저장된 어린이 프로필 백업',
			'kids.backupCopied' => '자녀 프로필 백업이 복사되었습니다.',
			'kids.backupFailed' => '자녀 프로필 백업을 저장할 수 없습니다. 다시 시도해 주세요.',
			'kids.restoreProfile' => '자녀 프로필 복원',
			'kids.chooseBackupFile' => '백업 파일 선택',
			'kids.pasteBackup' => '백업 텍스트 붙여넣기',
			'kids.backupText' => '키즈 프로필 백업 JSON',
			'kids.pasteFromClipboard' => '클립보드에서 붙여넣기',
			'kids.restoreReview' => '복원된 설정을 검토한 후 저장하여 현재 서버 연결을 사용하여 새 자녀 프로필을 만드세요. 기존 프로필은 덮어쓰이지 않습니다. 라이브러리 선택 및 보기 제외는 동일한 서버/라이브러리 ID와만 일치합니다.',
			'kids.restoreInvalid' => '지원되는 유효한 자녀 프로필 백업이 아닙니다. Luroka 어린이 프로필 JSON 백업을 선택하세요.',
			'kids.deleteProfile' => '자녀 프로필 삭제',
			'kids.deleteExplain' => ({required Object name}) => 'Luroka에서 ${name}를 삭제하시겠습니까? 로컬 설정, 다운로드 및 시청 제외가 제거됩니다. 귀하의 서버 계정과 서버측 기록은 그대로 유지됩니다. 나중에 프로필을 복원하려면 먼저 백업을 만드세요.',
			'kids.profileDeleted' => '자녀 프로필이 삭제되었습니다.',
			'kids.allowedLibraries' => '허용된 라이브러리',
			'kids.unavailableLibrary' => '이전에 선택한 라이브러리(현재 사용할 수 없음)',
			'kids.allLibraries' => '연결된 모든 영화 및 TV 라이브러리 허용',
			'kids.librariesExplain' => '특정 라이브러리를 선택하려면 이 기능을 끄십시오. 선택한 라이브러리 내에는 연령 및 애니메이션 규칙이 계속 적용됩니다. 선택 항목을 사용할 때 새 라이브러리가 자동으로 추가되지 않습니다.',
			'kids.librariesUnavailable' => '영화 또는 TV 라이브러리가 로드되지 않습니다. 서버에 연결하고 라이브러리를 연 다음 여기로 돌아와서 선택하세요.',
			'kids.noLibrariesSelected' => '선택한 도서관이 없습니다. 이 어린이에게는 어떤 책도 표시되지 않습니다.',
			'kids.animationOnly' => '애니메이션만',
			'kids.animationExplain' => '서버에서 애니메이션 장르로 태그된 제목만 표시합니다. 이는 연령 제한을 대체하지 않습니다. 애니메이션은 성인용으로 제작될 수도 있습니다. 누락된 장르 메타데이터가 숨겨져 있습니다.',
			'kids.allowUnrated' => '연령 등급이 없는 타이틀 허용',
			'kids.unratedExplain' => '기본적으로 꺼져 있습니다. 활성화되면 라이브러리 및 애니메이션 규칙에서 허용하는 경우 누락되거나 등급이 지정되지 않은 분류가 나타날 수 있습니다. 연령별로 적합성을 확인할 수 없습니다. 연령 제한을 초과하는 것으로 알려진 등급과 인식할 수 없는 분류는 숨겨진 상태로 유지됩니다.',
			'kids.whoIsWatching' => '누가 보고 있나요?',
			'kids.chooseAdventure' => '큰 모험이 가득한 작은 세계.',
			'kids.chooseProfile' => '당신의 공간을 선택하세요. 영화의 밤을 만들어 보세요.',
			'kids.welcome' => ({required Object name}) => '안녕하세요, ${name}님!',
			'kids.welcomeOlder' => ({required Object name}) => '다음 멋진 이야기, ${name}.',
			'kids.homeSubtitle' => '큰 모험. 작은 발견. 모두 당신을 위한 것입니다.',
			'kids.homeSubtitleOlder' => '새로운 마음에 드는 것을 찾아보세요. 중단한 부분부터 다시 시작하세요.',
			'kids.featured' => '오늘의 대모험',
			'kids.featuredOlder' => '스포트라이트 속에서',
			'kids.moreInfo' => '추가 정보',
			'kids.movies' => '영화',
			'kids.shows' => '쇼',
			'kids.profiles' => '프로필',
			'kids.adultBadge' => '어른들',
			'kids.avatar' => '당신의 캐릭터를 선택하세요',
			'kids.avatarExplorer' => '우주 탐험가',
			'kids.avatarFox' => '여우',
			'kids.avatarDinosaur' => '공룡',
			'kids.avatarRobot' => '로봇',
			'kids.avatarChildArtist' => '작은 예술가',
			'kids.avatarChildSkater' => '작은 스케이터',
			'kids.avatarSunrisePerson' => '일출 초상화',
			'kids.avatarOceanPerson' => '바다 초상화',
			'kids.avatarCat' => '호기심 많은 고양이',
			'kids.avatarDog' => '행복한 개',
			'kids.avatarPanda' => '팬더',
			'kids.avatarOwl' => '올빼미',
			'kids.avatarBear' => '곰',
			'kids.continueAdventure' => '모험을 계속하세요',
			'kids.freshStories' => '발견할 수 있는 새로운 이야기',
			'kids.yourMovies' => '영화 시간에 가장 좋아하는 것',
			'kids.yourShows' => '에피소드 하나 더',
			'kids.emptyHint' => '서버에 허용된 연령 분류가 있는 타이틀이 있으면 여기에 새로운 모험이 나타납니다.',
			'kids.title' => 'Luroka 키즈',
			'kids.addProfile' => '어린이 프로필 추가',
			'kids.parentalControls' => '자녀 보호',
			'kids.parentPin' => '보호자 PIN',
			'kids.setParentPin' => '보호자 PIN 설정',
			'kids.changeParentPin' => '보호자 PIN 변경',
			'kids.pinExplain' => '이 PIN은 이 기기의 성인 프로필과 자녀 보호 기능을 보호합니다.',
			'kids.name' => '아이의 이름',
			'kids.ageGroup' => '허용되는 연령 분류',
			'kids.allAges' => '전연령 · G, TV-Y, TV-G, U',
			'kids.age7' => '최대 7개 · PG, TV-PG, TV-Y7도 가능',
			'kids.age12' => '최대 12 · 12 및 12A',
			'kids.age16' => '최대 16개 · PG-13, TV-14, 15 및 16도 가능',
			'kids.ratingExplain' => '연령 제한을 초과하는 제목과 인식할 수 없는 분류는 숨겨집니다. 등급이 없는 제목은 아래에서 허용하지 않는 한 숨겨집니다. 등급이 지정되지 않은 에피소드는 승인된 시리즈 분류를 상속받을 수 있습니다. 등급은 서버의 메타데이터에 따라 달라집니다.',
			'kids.theme' => '키즈 등장',
			'kids.themeExplain' => '이 프로필이 활성화되면 다채로운 테마를 사용하세요.',
			'kids.sharedLogin' => '기존 서버 로그인을 사용합니다. Plex/Emby 진행 상황 및 시청 상태는 공유된 상태로 유지됩니다. 제한사항과 자녀 프로필은 이 기기에 저장됩니다.',
			'kids.hideWatched' => '계속 시청에서 어린이 시청 숨기기',
			'kids.hideExplain' => '이 기기에서 어린이 프로필이 재생하는 영화와 전체 시리즈를 숨깁니다. 라이브러리에서 해당 항목이 제거되거나 서버 기록이 변경되지는 않습니다.',
			'kids.clearHistory' => '어린이 시청 제외 재설정',
			'kids.historyReset' => '어린이 시청 제외가 재설정되었습니다.',
			'kids.blocked' => '이 어린이 프로필에서는 이 제목을 사용할 수 없습니다.',
			'kids.switchProfile' => '프로필 전환',
			'kids.manageFromAdult' => '설정을 관리하려면 성인 프로필로 전환하세요.',
			_ => null,
		} ?? switch (path) {
			'kids.noConnections' => '어린이 프로필을 추가하기 전에 서버를 성인 프로필에 연결하세요.',
			'kids.created' => '어린이 프로필이 생성되었습니다.',
			'kids.updated' => '어린이 프로필이 업데이트되었습니다.',
			'kids.saveFailed' => '자녀 보호 기능을 저장할 수 없습니다. 다시 시도해 주세요.',
			'kids.kidsBadge' => '어린이',
			'lurokaDiscovery.title' => '둘러보기',
			'lurokaDiscovery.chooseLibraryHint' => '탐색할 도서관을 선택하세요',
			'lurokaDiscovery.chooseCopyHint' => '여러 도서관에서 이용 가능합니다. 원하는 사본을 선택하십시오.',
			'lurokaDiscovery.weeklyMovies' => '이번 주 인기 영화 · TMDb',
			'lurokaDiscovery.weeklyShows' => '이번 주 인기 프로그램 · TMDb',
			'lurokaDiscovery.weeklyLibrary' => '이번 주 인기 트렌드 · 라이브러리',
			'lurokaDiscovery.popularLibrary' => '지금 인기 있는 항목 · 라이브러리에 있음 · Cinemeta',
			'lurokaDiscovery.publicFeedError' => 'Cinemeta 검색을 사용할 수 없습니다. 다시 시도해 주세요.',
			'lurokaDiscovery.oscars' => '오스카상 · 최우수 작품상 수상자',
			'lurokaDiscovery.imdb100' => 'IMDb 상위 100개 영화 · 2026년 9월 스냅샷',
			'lurokaDiscovery.imdbTv100' => 'IMDb 상위 100개 프로그램 · 2026년 9월 스냅샷',
			'lurokaDiscovery.emmyComedy' => '에미상 · 코미디 시리즈 수상자 · 1971~2026년',
			'lurokaDiscovery.emmys' => '에미상 · 드라마 시리즈 수상자 · 1966~2026년',
			'lurokaDiscovery.bafta' => 'BAFTA · 최우수 영화 수상자',
			'lurokaDiscovery.cannes' => '칸 · 황금종려상 수상자',
			'lurokaDiscovery.awardsNote' => '수상 컬렉션에는 오스카 최우수 작품상 역사, 에미 드라마/코미디 수상작, BAFTA/칸 선정 작품 확대 등이 포함됩니다. 반복 우승 타이틀이 한 번 나타납니다. 멤버십은 수상 카테고리 내역과 Wikidata 사실을 사용합니다. IMDb 상위 100개 영화/쇼 목록은 mmdju/imdb-top250-api의 2026년 9월 차트 스냅샷을 유지합니다. 눈에 보이는 온라인 라이브러리의 일치 항목만 나타납니다. 컬렉션 크기는 라이브러리 가용성에 따라 다릅니다.',
			'lurokaDiscovery.attribution' => '대중 인기 목록, 메타데이터 및 IMDb 등급은 Cinemeta에서 제공됩니다. 인기 목록은 주간 시청 차트가 아닙니다. 이 제품은 TMDB API를 사용하지만 TMDB에 의해 승인되거나 인증되지 않았습니다. 선택적 TMDb 주간 추세는 수치를 보는 것이 아니라 TMDb 관심을 반영합니다. 점수는 소스 레이블을 유지합니다.',
			'lurokaDiscovery.tmdbSettings' => '발견 소스',
			'lurokaDiscovery.setupDescription' => 'Cinemeta 검색은 인기 영화 및 프로그램, IMDb 등급 및 수상작 등 계정 없이도 즉시 작동합니다. 선택적으로 API 키 또는 themoviedb.org/settings/api의 API 읽기 액세스 토큰을 사용하여 주간 추세에 대해 TMDb를 연결합니다. 귀하의 자격 증명은 이 장치에 저장되어 있습니다.',
			'lurokaDiscovery.apiKey' => 'TMDb API 키/액세스 토큰 읽기',
			'lurokaDiscovery.connect' => 'TMDb 연결',
			'lurokaDiscovery.connecting' => '연결 중…',
			'lurokaDiscovery.connected' => 'TMDb 연결됨 · 주간 트렌드 및 시상 가능',
			'lurokaDiscovery.builtInKeyNote' => 'Luroka의 내장 공유 TMDb 키에서 실행됩니다. 전용 속도 제한 및 전체 제어를 위해 아래에 무료 키를 추가하세요.',
			'lurokaDiscovery.disconnect' => 'TMDb 연결 끊기',
			'lurokaDiscovery.invalidKey' => 'TMDb를 검증할 수 없습니다. 자격 증명과 인터넷 연결을 확인하세요.',
			'lurokaDiscovery.feedError' => 'TMDb 검색을 사용할 수 없습니다. 다시 시도해 주세요.',
			'lurokaDiscovery.allTitles' => '모든 타이틀',
			'lurokaDiscovery.available' => '라이브러리에 있음',
			'lurokaDiscovery.checking' => '라이브러리를 확인하는 중…',
			'lurokaDiscovery.availabilityUnknown' => '일부 라이브러리를 확인할 수 없습니다. 새로고침해 보세요.',
			'lurokaDiscovery.noAvailable' => '선택한 라이브러리에 일치하는 제목이 없습니다.',
			'lurokaDiscovery.sourceInfo' => '주간 트렌드 및 선정된 수상작 · TMDb',
			'lurokaDiscovery.configure' => '검색 설정',
			'app.title' => 'Luroka',
			'appIcon.title' => '앱 아이콘',
			'appIcon.defaultIcon' => '기본값',
			'appIcon.current' => '현재 아이콘',
			'appIcon.locked' => '서포터 특전',
			'appIcon.lockedHint' => '대체 아이콘은 서포터 특전입니다.',
			'appIcon.changeFailed' => '앱 아이콘을 변경할 수 없습니다.',
			'appIcon.launcherHint' => 'Luroka를 나가면 홈 화면에 새 아이콘이 나타납니다.',
			'appIcon.tvLauncherHint' => 'Luroka를 떠나면 새로운 배너가 나타납니다. Android TV는 TV가 다시 시작될 때까지 이전 항목을 계속 표시할 수 있습니다.',
			'appIcon.names.midnight' => '자정',
			'appIcon.names.ember' => '엠버',
			'appIcon.names.paper' => '종이',
			'appIcon.names.oled' => 'OLED',
			'appIcon.names.line' => '라인',
			'appIcon.names.ocean' => '바다',
			'appIcon.names.ultraviolet' => '자외선',
			'appIcon.names.matcha' => '말차',
			'appIcon.names.sunset' => '일몰',
			'appIcon.names.gold' => '골드',
			'appIcon.names.titanium' => '티타늄',
			'appIcon.names.glass' => '유리',
			'appIcon.names.crt' => '브라운관',
			'appIcon.names.vhs' => 'VHS',
			'appIcon.names.synthwave' => '신스웨이브',
			'appIcon.names.pixel' => '픽셀',
			'appIcon.names.neon' => '네온',
			'appIcon.names.sticker' => '스티커',
			'appIcon.names.ticket' => '티켓',
			'appIcon.names.pop' => '팝',
			'appIcon.names.strata' => '지층',
			'appIcon.names.facet' => '패싯',
			'appIcon.names.tilde' => '물결표',
			'auth.signInWithPlex' => 'Plex 계정으로 로그인',
			'auth.showQRCode' => 'QR 코드 표시',
			'auth.authenticate' => '인증',
			'auth.authenticationTimeout' => '인증 시간이 초과되었습니다. 다시 시도해 주세요.',
			'auth.scanQRToSignIn' => '로그인하려면 이 QR 코드를 스캔하세요',
			'auth.waitingForAuth' => '인증 대기 중...\n브라우저에서 로그인하세요.',
			'auth.useBrowser' => '브라우저 사용',
			'auth.or' => '또는',
			'auth.connectToMediaBrowser' => ({required Object product}) => '${product}에 연결',
			'auth.quickConnect' => 'Quick Connect',
			'auth.useQuickConnect' => 'Quick Connect 사용',
			'auth.quickConnectInstructions' => 'Jellyfin에서 Quick Connect를 열고 이 코드를 입력하세요.',
			'auth.quickConnectWaiting' => '승인 대기 중…',
			'auth.quickConnectCancel' => '취소',
			'auth.quickConnectExpired' => 'Quick Connect가 만료되었습니다. 다시 시도하세요.',
			'auth.localDataRecoveryRequired' => 'Luroka에서 로컬 로그인 정보와 대기 중인 재생 데이터를 안전하게 복구하지 못했습니다. 다시 로그인해 주세요.',
			'auth.pinCheckRejected' => 'Plex PIN 확인이 거부되었습니다',
			'common.cancel' => '취소',
			'common.save' => '저장',
			'common.close' => '닫기',
			'common.clear' => '지우기',
			'common.reset' => '초기화',
			'common.later' => '나중에',
			'common.submit' => '제출',
			'common.confirm' => '확인',
			'common.retry' => '재시도',
			'common.logout' => '로그아웃',
			'common.unknown' => '알 수 없는',
			'common.refresh' => '새로고침',
			'common.yes' => '예',
			'common.no' => '아니오',
			'common.delete' => '삭제',
			'common.edit' => '편집',
			'common.shuffle' => '무작위 재생',
			'common.addTo' => '추가하기...',
			'common.createNew' => '새로 만들기',
			'common.connect' => '연결',
			'common.disconnect' => '연결 해제',
			'common.play' => '재생',
			'common.pause' => '일시정지',
			'common.resume' => '재개',
			'common.error' => '오류',
			'common.search' => '검색',
			'common.home' => '홈',
			'common.back' => '뒤로',
			'common.settings' => '설정',
			'common.mute' => '음소거',
			'common.ok' => '확인',
			'common.off' => '꺼짐',
			'common.options' => '옵션',
			'common.seasonNumber' => ({required Object number}) => '시즌 ${number}',
			'common.episodeNumberTitle' => ({required Object number, required Object title}) => '${number}화 - ${title}',
			'common.chapterNumber' => ({required Object number}) => '챕터 ${number}',
			'common.reconnect' => '다시 연결',
			'common.viewAll' => '모두 보기',
			'common.serversUnreachable' => '서버에 연결할 수 없음',
			'common.loading' => '로딩 중...',
			'common.fullscreen' => '전체 화면',
			'common.exitFullscreen' => '전체 화면 종료',
			'common.ratingSource.critic' => '평론가',
			'common.ratingSource.audience' => '관객',
			'common.ratingSource.imdb' => 'IMDb',
			'common.ratingSource.tmdb' => 'TMDB',
			'common.ratingSource.rottenTomatoes' => 'Rotten Tomatoes',
			'common.ratingSource.simkl' => 'Simkl',
			'common.ratingSource.mal' => 'MyAnimeList',
			'common.ratingSource.anilist' => 'AniList',
			'common.ratingSource.trakt' => 'Trakt',
			'common.ratingSource.rottenTomatoesCritic' => 'Rotten Tomatoes 평론가',
			'common.ratingSource.rottenTomatoesAudience' => 'Rotten Tomatoes 관객',
			'common.ratingSource.metacritic' => 'Metacritic',
			'common.ratingSource.letterboxd' => 'Letterboxd',
			'common.notAvailable' => 'N/A',
			'common.url' => 'URL',
			'common.letterKeys' => 'ABC',
			'common.mediaKind.movie' => '영화',
			'common.mediaKind.show' => '시리즈',
			'common.mediaKind.season' => '시즌',
			'common.mediaKind.episode' => '에피소드',
			'common.mediaKind.artist' => '아티스트',
			'common.mediaKind.album' => '앨범',
			'common.mediaKind.track' => '트랙',
			'common.mediaKind.collection' => '컬렉션',
			'common.mediaKind.playlist' => '재생목록',
			'common.mediaKind.clip' => '클립',
			'common.mediaKind.photo' => '사진',
			'common.mediaKind.folder' => '폴더',
			'common.stay' => '숙박',
			'common.exitApp' => '종료',
			'common.exitAppBody' => 'Luroka를 종료하시겠습니까?',
			'tvHints.select' => '선택',
			'tvHints.browse' => '찾아보기',
			'tvHints.back' => '뒤로',
			'screens.licenses' => '라이선스',
			'screens.switchProfile' => '프로필 전환',
			'screens.subtitleStyling' => '자막 스타일 설정',
			'screens.mpvConfig' => 'mpv.conf',
			'screens.logs' => '로그',
			'mediaExtras.trailers' => '예고편',
			'mediaExtras.featurettes' => '특집',
			'mediaExtras.interviews' => '인터뷰',
			'mediaExtras.deletedScenes' => '삭제된 장면',
			'mediaExtras.behindTheScenes' => '비하인드 스토리',
			'mediaExtras.scenesAndClips' => '장면 및 클립',
			'mediaExtras.other' => '기타 추가 사항',
			'update.available' => '업데이트 있음',
			'update.versionAvailable' => ({required Object version}) => '${version} 버전을 사용할 수 있습니다',
			'update.currentVersion' => ({required Object version}) => '현재 버전: ${version}',
			'update.skipVersion' => '이 버전 건너뛰기',
			'update.viewRelease' => '릴리스 정보 보기',
			'update.latestVersion' => '최신 버전을 사용 중입니다',
			'update.checkFailed' => '업데이트 확인 실패',
			'supporter.title' => 'Luroka 서포터',
			'supporter.intro' => 'Luroka의 개발을 지원하고 외형 추가 기능을 잠금 해제하는 일회성 구매:',
			'supporter.presetThemes' => '사전 설정된 테마',
			'supporter.presetThemesDescription' => '불씨, 빙하, 숲, 자두와 종이',
			'supporter.customTheme' => '맞춤 테마',
			'supporter.customThemeDescription' => '모든 색상을 직접 선택하세요',
			'supporter.appIcons' => '앱 아이콘',
			'supporter.appIconsDescription' => '대체 Luroka 아이콘을 선택하세요',
			'supporter.buy' => ({required Object price}) => '${price}용 구매',
			'supporter.loadingPrice' => '가격 로드 중...',
			'supporter.restore' => '구매 복원',
			'supporter.pending' => '구매가 결제 또는 승인 대기 중입니다. 상점이 완료하자마자 추가 항목이 잠금 해제됩니다.',
			'supporter.thankYouTitle' => 'Luroka를 지원해 주셔서 감사합니다.',
			'supporter.thankYouBody' => 'Supporter 엑스트라가 잠금 해제되었습니다.',
			'supporter.tileSubtitle' => '일회성 구매로 테마 및 앱 아이콘 잠금 해제',
			'supporter.tileSubtitleThemesOnly' => '일회성 구매로 테마 잠금 해제',
			'supporter.tileUnlocked' => '당신의 지원에 감사드립니다',
			'supporter.errors.storeUnavailable' => '구매가 불가능합니다. 스토어에 로그인되어 있고 이 기기에서 구매가 허용되는지 확인하세요.',
			'supporter.errors.productNotFound' => '현재 귀하의 매장에서는 Supporter를 구매할 수 없습니다.',
			'supporter.errors.productQueryFailed' => '가격을 로드할 수 없습니다. 연결을 확인하고 다시 시도하세요.',
			'supporter.errors.purchaseFailed' => '구매가 완료되지 않았습니다. 다시 시도해 보세요.',
			'supporter.errors.restoreFailed' => '구매를 복원하기 위해 매장에 연결할 수 없습니다. 다시 시도해 보세요.',
			'supporter.errors.nothingToRestore' => '이 스토어 계정에서는 Supporter 구매를 찾을 수 없습니다.',
			'settings.title' => '설정',
			'settings.supportDeveloper' => 'Luroka 후원하기',
			'settings.supportDeveloperDescription' => 'Liberapay로 후원하여 개발 지원',
			'settings.language' => '언어',
			'settings.theme' => '테마',
			'settings.appearance' => '디자인',
			'settings.videoPlayback' => '비디오 재생',
			'settings.videoPlaybackDescription' => '재생 동작 설정',
			'settings.advanced' => '고급',
			'settings.episodePosterMode' => '에피소드 포스터 스타일',
			'settings.seriesPoster' => '시리즈 포스터',
			'settings.seasonPoster' => '시즌 포스터',
			'settings.episodeThumbnail' => '썸네일',
			'settings.homeHeroSize' => '캐러셀 크기',
			'settings.homeHeroSizeSmall' => '작은',
			'settings.homeHeroSizeMedium' => '중간',
			'settings.homeHeroSizeLarge' => '대형',
			'settings.secondsLabel' => '초',
			'settings.minutesLabel' => '분',
			'settings.secondsShort' => '초',
			'settings.minutesShort' => '분',
			'settings.durationHint' => ({required Object min, required Object max}) => '기간 입력 (${min}-${max})',
			'settings.systemTheme' => '시스템',
			'settings.lightTheme' => '라이트',
			'settings.darkTheme' => '다크',
			'settings.oledTheme' => 'OLED',
			'settings.libraryDensity' => '라이브러리 표시 밀도',
			'settings.displayScale' => '표시 배율',
			'settings.compact' => '조밀하게',
			'settings.comfortable' => '여유롭게',
			'settings.gridSpacing' => '그리드 간격',
			'settings.gridSpacingTight' => '조밀하게',
			'settings.gridSpacingNormal' => '보통',
			'settings.gridSpacingSpacious' => '여유롭게',
			'settings.tvCornerSpotlightBackdrop' => '모서리 스포트라이트 배경',
			'settings.tvCornerSpotlightBackdropDescription' => '화면 전체를 채우는 대신 오른쪽 상단에 스포트라이트 아트워크를 표시합니다',
			'settings.viewMode' => '보기 모드',
			'settings.gridView' => '그리드 보기',
			'settings.listView' => '목록 보기',
			'settings.continueWatchingAction' => '계속 보기 동작',
			'settings.continueWatchingPlay' => '재생',
			'settings.continueWatchingDetails' => '상세 정보 열기',
			'settings.episodeAction' => '에피소드 동작',
			'settings.episodePlay' => '재생',
			'settings.episodeDetails' => '상세 정보 열기',
			'settings.useGlobalHubs' => '홈 레이아웃 사용',
			'settings.useGlobalHubsDescription' => '통합 홈 허브를 표시합니다. 끄면 라이브러리 추천을 사용합니다.',
			'settings.showServerNameOnHubs' => '허브에 서버 이름 표시',
			'settings.showServerNameOnHubsDescription' => '허브 제목에 항상 서버 이름을 표시합니다.',
			'settings.groupLibrariesByServer' => '서버별로 라이브러리 그룹화',
			'settings.groupLibrariesByServerDescription' => '사이드바 라이브러리를 미디어 서버별로 그룹화합니다.',
			'settings.alwaysKeepSidebarOpen' => '사이드바 항상 열어두기',
			'settings.alwaysKeepSidebarOpenDescription' => '사이드바가 확장된 상태로 유지되고 콘텐츠 영역이 맞춰집니다',
			'settings.showUnwatchedCount' => '미시청 수 표시',
			'settings.showUnwatchedCountDescription' => '시리즈 및 시즌에 미시청 에피소드 수 표시',
			'settings.showWatchedIndicators' => '시청 표시 보이기',
			'settings.showWatchedIndicatorsDescription' => '시청한 영화, 프로그램, 에피소드에 체크 표시를 표시합니다',
			'settings.showEpisodeNumberOnCards' => '카드에 에피소드 번호 표시',
			'settings.showEpisodeNumberOnCardsDescription' => '에피소드 카드에 시즌 및 에피소드 번호 표시',
			'settings.showSeasonPostersOnTabs' => '탭에 시즌 포스터 표시',
			'settings.showSeasonPostersOnTabsDescription' => '각 시즌 포스터를 탭 위에 표시',
			'settings.tvFullCardLayout' => '전체 TV 카드',
			'settings.tvFullCardLayoutDescription' => 'TV 카드에 이미지만 표시하고 배우 이름을 오버레이로 표시',
			'settings.focusGlow' => '포커스 글로우',
			'settings.focusGlowDescription' => '포커스된 카드 주위에 은은한 빛 효과를 표시',
			'settings.visualEffects' => '시각 효과',
			'settings.visualEffectsAuto' => '자동',
			'settings.visualEffectsAutoDescription' => '저전력 기기에서 효과를 자동으로 줄입니다',
			'settings.visualEffectsFull' => '전체',
			'settings.visualEffectsReduced' => '축소',
			'settings.visualEffectsReducedDescription' => '애니메이션을 줄이고 아트워크 해상도를 낮춥니다',
			'settings.hideSpoilers' => '미시청 에피소드 스포일러 숨기기',
			'settings.hideSpoilersDescription' => '시청하지 않은 에피소드의 썸네일과 설명을 흐리게 처리',
			'settings.playerBackend' => '플레이어 백엔드',
			'settings.playerBackendDescription' => 'mpv는 더 많은 형식을 재생하고 더 많은 기능을 활성화합니다. 권장됩니다. ExoPlayer는 이 장치에서 재생이 실패하거나 끊기는 경우 도움이 됩니다.',
			'settings.exoPlayer' => 'ExoPlayer',
			'settings.mpv' => 'mpv',
			'settings.hardwareDecoding' => '하드웨어 디코딩',
			'settings.hardwareDecodingDescription' => '가능한 경우 하드웨어 가속을 사용합니다',
			'settings.playbackBuffer' => '재생 버퍼',
			'settings.playbackBufferAuto' => '자동 (권장)',
			'settings.playbackBufferLarge' => '대형',
			'settings.playbackBufferExtraLarge' => '초대형',
			'settings.playbackBufferDescription' => '불안정한 연결에 대비해 더 많은 버퍼를 사용합니다. 버퍼 크기에 의해서도 제한됩니다.',
			'settings.defaultQualityTitle' => '기본 화질',
			'settings.streamingQualityOriginalHint' => '저장된 그대로 파일을 재생합니다. 최고의 품질, 가장 많은 대역폭을 사용합니다.',
			'settings.cellularQualityTitle' => '셀룰러에서 기본 화질',
			'settings.cellularQualitySameAsDefault' => '기본 화질과 동일',
			'settings.directPlayCoveredQuality' => '작은 동영상을 원본 화질로 재생',
			'settings.directPlayCoveredQualityDescription' => '화질 제한 내의 동영상은 트랜스코딩하지 않고 Direct Play합니다',
			'settings.videoCodecs' => '비디오 코덱',
			'settings.videoCodecsDescription' => '선택 해제한 코덱은 서버가 트랜스코딩합니다',
			'settings.videoCodecsAlwaysAccepted' => '항상 허용',
			'settings.musicQualityTitle' => '음악 음질',
			'settings.subtitleStyling' => '자막 스타일',
			'settings.subtitleStylingDescription' => '자막 모양을 사용자 지정합니다',
			'settings.smallSkipDuration' => '짧은 건너뛰기 시간',
			'settings.largeSkipDuration' => '긴 건너뛰기 시간',
			'settings.rewindOnResume' => '재개 시 되감기',
			'settings.secondsUnit' => ({required Object seconds}) => '${seconds}초',
			'settings.defaultSleepTimer' => '기본 취침 타이머',
			'settings.minutesUnit' => ({required Object minutes}) => '${minutes}분',
			'settings.rememberTrackSelections' => '시리즈/영화별 트랙 선택 기억',
			'settings.rememberTrackSelectionsDescription' => '작품별 오디오 및 자막 선택 기억',
			'settings.rememberTrackSelectionsBackendRule' => 'Plex는 파일별로 각 선택을 서버에 저장합니다. Jellyfin은 계정의 선택 기억도 활성화합니다. Emby는 지원되지 않습니다',
			'settings.followServerTrackSelections' => '서버의 에피소드별 트랙 선택 사용',
			'settings.followServerTrackSelectionsDescription' => '에피소드 전환 시 현재 선택을 유지하는 대신 서버에서 선택된 오디오와 자막을 적용합니다',
			'settings.resumeMusicOnLaunch' => '음악 세션 기억',
			'settings.resumeMusicOnLaunchDescription' => '앱 시작 시 마지막 곡을 멈춘 위치에서 일시정지 상태로 엽니다',
			'settings.showChapterMarkersOnTimeline' => '탐색 막대에 챕터 마커 표시',
			'settings.showChapterMarkersOnTimelineDescription' => '챕터 경계에서 탐색 막대 구분',
			'settings.specialsOrdering' => '에피소드 순서로 스페셜 표시',
			'settings.specialsOrderingDescription' => '시리즈 시청 순서에서 스페셜이 재생되는 위치',
			'settings.specialsOrderingServer' => '서버 순서 따르기',
			'settings.specialsOrderingAirDate' => '방영일 순서로 삽입',
			'settings.specialsOrderingLast' => '일반 시즌 뒤',
			'settings.clickVideoTogglesPlayback' => '동영상 클릭으로 재생/일시정지 전환',
			'settings.clickVideoTogglesPlaybackDescription' => '컨트롤을 표시하는 대신 동영상을 클릭하여 재생하거나 일시정지합니다.',
			'settings.videoPlayerControls' => '비디오 플레이어 컨트롤',
			'settings.keyboardShortcuts' => '키보드 단축키',
			'settings.keyboardShortcutsDescription' => '키보드 단축키를 사용자 지정합니다',
			'settings.videoPlayerNavigation' => '비디오 플레이어 탐색',
			'settings.videoPlayerNavigationDescription' => '방향 키로 비디오 플레이어 컨트롤을 탐색합니다',
			'settings.watchTogetherRelay' => '함께 보기 릴레이',
			'settings.watchTogetherRelayDescription' => '직접 설정하지 않는 한 공개 공개 시청 파티 릴레이',
			'settings.watchTogetherRelayHint' => 'https://my-relay.example.com',
			'settings.watchTogetherRelayInvalid' => '올바른 HTTP 또는 HTTPS 릴레이 기본 URL을 입력하세요.',
			'settings.crashReporting' => '충돌 보고',
			'settings.crashReportingDescription' => '앱 개선을 위해 충돌 보고서 전송',
			'settings.debugLogging' => '디버그 로깅',
			'settings.debugLoggingDescription' => '문제 해결을 위해 상세 로깅 활성화',
			'settings.viewLogs' => '로그 보기',
			'settings.viewLogsDescription' => '애플리케이션 로그 확인',
			'settings.clearImageCache' => '이미지 캐시 지우기',
			'settings.clearImageCacheDescription' => '캐시된 아트워크와 썸네일을 지웁니다. 다시 다운로드할 때까지 이미지가 느리게 로드될 수 있습니다.',
			'settings.clearImageCacheSuccess' => '이미지 캐시를 성공적으로 지웠습니다',
			'settings.resetSettings' => '설정 재설정',
			'settings.resetSettingsDescription' => '기본 설정으로 복원합니다. 되돌릴 수 없습니다.',
			'settings.resetSettingsSuccess' => '설정 재설정 성공',
			'settings.backup' => '백업',
			'settings.exportSettings' => '설정 내보내기',
			'settings.exportSettingsDescription' => '기본 설정을 파일로 저장',
			'settings.exportSettingsSuccess' => '설정 내보내기 완료',
			'settings.importSettings' => '설정 가져오기',
			'settings.importSettingsDescription' => '파일에서 기본 설정 복원',
			'settings.importSettingsConfirm' => '현재 설정을 대체합니다. 계속하시겠습니까?',
			'settings.importSettingsSuccess' => '설정 가져오기 완료',
			'settings.importSettingsInvalidFile' => '유효한 Luroka 설정 내보내기 파일이 아닙니다',
			'settings.importSettingsNoUser' => '설정을 가져오기 전에 로그인하세요',
			'settings.shortcutsReset' => '단축키가 기본값으로 재설정되었습니다',
			'settings.resetShortcutsConfirm' => '그러면 사용자 정의 바로가기가 기본값으로 대체됩니다. 계속하다?',
			'settings.about' => '정보',
			'settings.aboutDescription' => '앱 정보 및 라이선스',
			'settings.updates' => '업데이트',
			'settings.updateAvailable' => '사용 가능한 업데이트 있음',
			'settings.checkForUpdates' => '업데이트 확인',
			'settings.autoCheckUpdatesOnStartup' => '시작 시 자동으로 업데이트 확인',
			'settings.autoCheckUpdatesOnStartupDescription' => '실행 시 업데이트가 있으면 알림',
			'settings.validationErrorEnterNumber' => '유효한 숫자를 입력하세요',
			'settings.validationErrorDuration' => ({required Object min, required Object max, required Object unit}) => '기간은 ${min}과 ${max} ${unit} 사이여야 합니다',
			'settings.shortcutAlreadyAssigned' => ({required Object action}) => '단축키가 이미 ${action}에 할당되었습니다',
			'settings.shortcutUpdated' => ({required Object action}) => '${action} 단축키가 업데이트되었습니다',
			'settings.saveFailed' => '변경 사항을 저장하지 못했습니다. 다시 시도하세요.',
			'settings.autoPlayAndSkip' => '자동 재생 및 건너뛰기',
			'settings.autoPlayNextEpisode' => '다음 에피소드 자동 재생',
			'settings.autoPlayNextEpisodeDescription' => '에피소드가 끝나면 다음 에피소드를 자동으로 재생',
			'settings.shuffleStartsFromBeginning' => '무작위 재생 시 처음부터 시작',
			'settings.shuffleStartsFromBeginningDescription' => '무작위 재생 시 이어보기 대신 각 에피소드를 처음부터 재생합니다',
			'settings.playNextCountdown' => '다음 재생 카운트다운',
			'settings.playNextCountdownImmediate' => '즉시 재생',
			'settings.skipIntroMode' => '인트로 건너뛰기',
			'settings.skipIntroModeOffDescription' => '건너뛰기 버튼 없이 인트로를 정상적으로 재생합니다',
			'settings.skipIntroModeButtonDescription' => '인트로가 시작되면 건너뛰기 버튼을 표시합니다',
			'settings.skipIntroModeAutoDescription' => '아래 지연 시간 후 인트로를 자동으로 건너뜁니다',
			'settings.skipCreditsMode' => '크레딧 건너뛰기',
			'settings.skipCreditsModeOffDescription' => '건너뛰기 버튼 없이 크레딧을 정상적으로 재생합니다',
			'settings.skipCreditsModeButtonDescription' => '크레딧이 시작되면 건너뛰기 버튼을 표시합니다',
			'settings.skipCreditsModeAutoDescription' => '크레딧을 자동으로 건너뛰고 다음 에피소드를 재생합니다',
			'settings.skipMarkerModeOff' => '끄기',
			'settings.skipMarkerModeButton' => '버튼 표시',
			'settings.skipMarkerModeAuto' => '자동',
			'settings.forceSkipMarkerFallback' => '대체 마커 강제 사용',
			'settings.forceSkipMarkerFallbackDescription' => 'Plex에 마커가 있어도 챕터 제목 패턴 사용',
			'settings.autoSkipDelay' => '자동 건너뛰기 지연',
			'settings.autoSkipDelayDescription' => ({required Object seconds}) => '자동으로 건너뛰기 전 ${seconds}초 대기',
			'settings.introPattern' => '인트로 마커 패턴',
			'settings.introPatternDescription' => '챕터 제목에서 인트로 마커를 인식하는 정규식 패턴',
			'settings.creditsPattern' => '크레딧 마커 패턴',
			'settings.creditsPatternDescription' => '챕터 제목에서 크레딧 마커를 인식하는 정규식 패턴',
			'settings.invalidRegex' => '잘못된 정규식',
			'settings.regex' => '정규식',
			'settings.downloads' => '다운로드',
			'settings.downloadLocationDescription' => '다운로드 콘텐츠 저장 위치 선택',
			'settings.downloadLocationDefault' => '기본값 (앱 저장소)',
			'settings.downloadLocationCustom' => '사용자 지정 위치',
			'settings.selectFolder' => '폴더 선택',
			'settings.resetToDefault' => '기본값으로 재설정',
			'settings.currentPath' => ({required Object path}) => '현재: ${path}',
			'settings.downloadLocationChanged' => '다운로드 위치가 변경되었습니다',
			'settings.downloadLocationReset' => '다운로드 위치가 기본값으로 재설정되었습니다',
			'settings.downloadLocationInvalid' => '선택한 폴더에 쓰기 권한이 없습니다',
			'settings.downloadLocationPickerUnavailable' => '이 기기에서는 폴더를 선택할 수 없습니다',
			'settings.downloadOnWifiOnly' => 'Wi-Fi 연결 시에만 다운로드',
			'settings.downloadOnWifiOnlyDescription' => '셀룰러 데이터 사용 중에는 다운로드하지 않습니다',
			'settings.downloadWifiScope' => '이 장치의 모든 프로필과 다운로드에 적용됩니다.',
			'settings.autoRemoveWatchedDownloads' => '시청한 다운로드 항목 자동 삭제',
			'settings.autoRemoveWatchedDownloadsDescription' => '시청한 다운로드 항목을 자동으로 삭제합니다',
			'settings.cellularDownloadBlocked' => '셀룰러에서는 다운로드가 차단됩니다. Wi-Fi를 사용하거나 설정을 변경하세요.',
			'settings.maxVolume' => '최대 볼륨',
			'settings.maxVolumeDescription' => '음량이 작은 콘텐츠를 위해 100% 이상의 볼륨을 허용합니다',
			'settings.maxVolumePercent' => ({required Object percent}) => '${percent}%',
			'settings.discordRichPresence' => 'Discord 리치 프레즌스',
			'settings.discordRichPresenceDescription' => 'Discord에서 시청 중인 콘텐츠 표시',
			'settings.services' => '서비스',
			'settings.servicesDescription' => 'Trakt, MyAnimeList, Seerr 등 연결',
			'settings.manageLibrariesDescription' => '라이브러리 순서를 변경하거나 숨깁니다',
			'settings.companionRemoteServer' => '컴패니언 리모트 서버',
			'settings.companionRemoteServerDescription' => '네트워크의 모바일 기기가 이 앱을 제어할 수 있도록 허용',
			'settings.companionRemoteServerStartFailed' => '컴패니언 리모트 서버를 시작할 수 없습니다',
			'settings.companionRemoteServerStopFailed' => '컴패니언 리모트 서버를 중지할 수 없습니다',
			'settings.autoPip' => '자동 PIP 모드',
			'settings.autoPipDescription' => '재생 중 앱을 떠나면 자동으로 화면 속 화면 모드로 전환합니다',
			'settings.matchContentFrameRate' => '콘텐츠 프레임 레이트 맞춤',
			'settings.matchContentFrameRateDescription' => '디스플레이 새로 고침 빈도를 동영상 콘텐츠에 맞춤',
			'settings.matchContentResolution' => '콘텐츠 해상도에 맞추기',
			'settings.matchContentResolutionDescription' => 'TV가 업스케일링을 처리하도록 디스플레이를 영상 본래 해상도로 전환합니다. 재생 중에는 메뉴와 자막도 함께 업스케일됩니다',
			'settings.matchRefreshRate' => '주사율 맞춤',
			'settings.matchRefreshRateDescription' => '전체 화면에서 디스플레이 새로 고침 빈도 맞춤',
			'settings.matchDynamicRange' => '다이나믹 레인지 맞춤',
			'settings.matchDynamicRangeDescription' => 'HDR 콘텐츠에서는 HDR로 전환한 뒤 SDR로 되돌림',
			'settings.displaySwitchDelay' => '디스플레이 전환 지연',
			'settings.tunneledPlayback' => '터널 재생',
			'settings.tunneledPlaybackDescription' => '비디오 터널링을 사용합니다. HDR 재생 시 검은 화면이 보이거나 움직임이 끊기면 비활성화하세요.',
			'settings.audioPassthrough' => '오디오 패스스루',
			'settings.audioPassthroughDescription' => 'Dolby/DTS 오디오를 재인코딩 없이 리시버나 TV로 전송하여 서라운드 사운드를 유지합니다. 소리가 나지 않으면 비활성화하세요.',
			'settings.audioPassthroughDescriptionApple' => 'Dolby Digital Plus(Atmos 포함)에 Apple의 기본 Dolby 디코더를 사용합니다. DTS와 TrueHD는 계속 멀티채널 PCM으로 재생됩니다. 소리가 나지 않으면 비활성화하세요.',
			'settings.audioPassthroughDescriptionAppleSpatial' => 'Atmos를 포함한 Dolby Digital Plus용 Apple의 기본 Dolby 디코더를 사용하세요. iOS, iPadOS 및 tvOS 26 이상에서는 TrueHD Atmos 및 DTS:X가 공간 오디오로 재생됩니다. 다른 DTS 및 TrueHD 트랙은 다중 채널 PCM으로 재생됩니다. 소리가 나지 않으면 꺼주세요.',
			'settings.audioPassthroughOverriddenByNormalization' => '음량 정규화가 켜져 있는 동안 꺼짐',
			'settings.audioChannelLimit' => '오디오 채널',
			'settings.audioChannelLimitDescription' => '모든 채널을 재생할 수 없는 스피커, 헤드폰 또는 HDMI 설정에 대해 디코딩된 오디오 믹스 다운',
			'settings.audioChannelLimitOriginal' => '원본',
			'settings.audioChannelLimitOriginalDescription' => '트랙의 모든 채널을 재생합니다.',
			'settings.audioChannelLimitSurround51' => '최대 5.1',
			'settings.audioChannelLimitSurround51Description' => '5.1 PCM만 사용하는 TV 및 수신기의 경우 7.1을 5.1로 혼합합니다. 통과는 영향을 받지 않습니다.',
			'settings.audioChannelLimitStereo' => '스테레오',
			'settings.audioChannelLimitStereoDescription' => '스테레오 스피커 또는 헤드폰을 위해 두 개의 채널로 믹스다운합니다. 패스스루를 끕니다.',
			'settings.downmixCenterBoost' => '센터 채널 부스트',
			'settings.downmixCenterBoostValue' => ({required Object db}) => '${db} dB',
			'settings.downmixCenterBoostLabel' => '부스트 (dB)',
			'settings.downmixCenterBoostShort' => 'dB',
			'settings.audioDownmixNormalize' => '다운믹스 시 음량 정규화',
			'settings.audioDownmixNormalizeDescription' => '클리핑을 방지하기 위해 믹스 음량을 낮춥니다. 원래 음량을 유지하려면 끄세요(큰 소리 장면에서 왜곡될 수 있음).',
			'settings.dvConversionMode' => 'Dolby Vision 변환',
			'settings.dvConversionModeDescription' => 'Dolby Vision Profile 7 파일을 처리하는 방식을 선택합니다.',
			'settings.dvConversionAuto' => '자동',
			'settings.dvConversionNative' => '네이티브 / 비활성화',
			'settings.dvConversionDv81' => 'P7 → P8.1',
			'settings.dvConversionHevcStrip' => 'P7 → HEVC',
			'settings.dvConversionAutoDescription' => '기기 기능 감지와 일반 폴백 동작을 사용합니다',
			'settings.dvConversionNativeDescription' => '네이티브 DV7을 강제하고 DV 변환 재시도를 억제합니다',
			'settings.dvConversionDv81Description' => 'Dolby Vision 프로필 8.1로 인라인 RPU 변환을 강제합니다',
			'settings.dvConversionHevcStripDescription' => 'Dolby Vision RPU/EL 레이어를 제거하고 일반 HEVC로 제공합니다',
			'settings.disableDolbyVision' => 'Dolby Vision 끄기',
			'settings.disableDolbyVisionDescription' => '파일에 HDR10 또는 HLG 레이어가 있으면 Dolby Vision 대신 해당 레이어를 재생합니다',
			'settings.hdrSdrConversion' => 'HDR을 SDR로 변환',
			'settings.hdrSdrConversionDescription' => '디스플레이가 HDR을 표시할 수 없을 때 HDR 동영상을 무엇으로 변환할지 선택합니다.',
			'settings.hdrSdrConversionAuto' => '자동',
			'settings.hdrSdrConversionAutoDescription' => 'Android 9 이상에서는 기기, 이전 버전에서는 플레이어',
			'settings.hdrSdrConversionDevice' => '기기',
			'settings.hdrSdrConversionDeviceDescription' => '기기의 비디오 하드웨어가 변환합니다. 가장 빠르지만 색상은 기기에 따라 다릅니다',
			'settings.hdrSdrConversionPlayer' => '플레이어',
			'settings.hdrSdrConversionPlayerDescription' => '플레이어가 변환합니다. 색상은 일정하지만 저사양 TV 박스에서는 4K가 끊길 수 있습니다',
			'settings.deinterlace' => '디인터레이싱',
			'settings.deinterlaceDescription' => '인터레이스 비디오의 빗살 무늬 아티팩트를 제거합니다 (mpv 플레이어만 해당)',
			'settings.deinterlaceOff' => '끄다',
			'settings.deinterlaceOffDescription' => '인터레이스된 비디오가 디코딩되는 동안 표시',
			'settings.deinterlaceVideo' => '비디오',
			'settings.deinterlaceVideoDescription' => '각 필드를 전체 프레임으로 전환합니다. 스포츠, 뉴스, 콘서트 등 TV용 영상 촬영용',
			'settings.deinterlaceFilm' => '영화',
			'settings.deinterlaceFilmDescription' => 'NTSC DVD에서 일반적으로 사용되는 29.97fps로 텔레시네된 영화 및 애니메이션의 원본 프레임을 복원합니다. TV 끊김 현상에 대한 비디오 촬영. 라이브 TV는 비디오를 사용합니다',
			'settings.requireProfileSelectionOnOpen' => '앱 실행 시 프로필 선택',
			'settings.requireProfileSelectionOnOpenDescription' => '앱을 열 때마다 프로필 선택 화면을 표시합니다',
			'settings.forceTvMode' => 'TV 모드 강제 사용',
			'settings.forceTvModeKeepTitle' => 'TV 레이아웃을 유지하시겠습니까?',
			'settings.forceTvModeKeepBody' => ({required Object seconds}) => 'TV 레이아웃은 리모콘용으로 설계되었습니다. ${seconds} 의 일반 레이아웃으로 되돌립니다.',
			'settings.forceTvModeKeepConfirm' => 'TV 레이아웃 유지',
			'settings.forceTvModeReverted' => 'TV 레이아웃이 되돌아갔습니다.',
			'settings.forceTvModeDescription' => 'TV 레이아웃을 강제합니다. 자동 감지되지 않는 기기용입니다. 재시작이 필요합니다.',
			'settings.startInFullscreen' => '전체 화면으로 시작',
			'settings.startInFullscreenDescription' => '실행 시 Luroka를 전체 화면 모드로 엽니다',
			'settings.exitFullscreenOnPlayerClose' => '플레이어를 닫을 때 전체 화면 종료',
			'settings.exitFullscreenOnPlayerCloseDescription' => '비디오 플레이어를 닫을 때 자동으로 전체 화면을 종료합니다',
			'settings.autoHidePerformanceOverlay' => '성능 오버레이 자동 숨기기',
			'settings.autoHidePerformanceOverlayDescription' => '재생 컨트롤과 함께 성능 오버레이를 페이드 처리',
			'settings.showNavBarLabels' => '내비게이션 바 라벨 표시',
			'settings.showNavBarLabelsDescription' => '내비게이션 바 아이콘 아래에 텍스트 라벨을 표시합니다',
			'settings.startupSection' => '시작 섹션',
			'settings.showExploreTab' => '둘러보기 탭 표시',
			'settings.showExploreTabDescription' => 'Plex Discover와 연결된 트래커의 콘텐츠가 포함된 둘러보기 탭을 표시합니다',
			'settings.liveTvDefaultFavorites' => '즐겨찾기 채널 기본 설정',
			'settings.liveTvDefaultFavoritesDescription' => '라이브 TV를 열 때 즐겨찾기 채널만 표시',
			'settings.general' => '일반',
			'settings.generalDescription' => '언어, 시작 및 창 동작',
			'settings.languageAndRegion' => '언어 및 지역',
			'settings.startup' => '시작',
			'settings.display' => '디스플레이',
			_ => null,
		} ?? switch (path) {
			'settings.libraryAndCards' => '라이브러리 및 카드',
			'settings.homeScreen' => '홈 화면',
			'settings.navigation' => '탐색',
			'settings.window' => '창',
			'settings.liveTv' => '라이브 TV',
			'settings.player' => '플레이어',
			'settings.videoAndDisplay' => '비디오 및 디스플레이',
			'settings.audio' => '오디오',
			'settings.quality' => '화질',
			'settings.subtitles' => '자막',
			'settings.seekAndTiming' => '탐색 및 타이밍',
			'settings.behavior' => '동작',
			'settings.gestures' => '제스처',
			'settings.gestureBrightnessSwipe' => '밝기 스와이프',
			'settings.gestureBrightnessSwipeDescription' => '왼쪽 가장자리에서 위아래로 스와이프하여 밝기를 조절합니다',
			'settings.gestureVolumeSwipe' => '볼륨 스와이프',
			'settings.gestureVolumeSwipeDescription' => '오른쪽 가장자리에서 위아래로 스와이프하여 볼륨을 조절합니다',
			'settings.gesturePinchToZoom' => '핀치 줌',
			'settings.gesturePinchToZoomDescription' => '비디오에서 핀치하여 확대하거나 축소합니다',
			'settings.rememberBrightnessLevel' => '밝기 수준 기억',
			'settings.rememberBrightnessLevelDescription' => '마지막으로 스와이프하여 설정한 밝기로 재생을 시작합니다',
			'settings.controls' => '컨트롤',
			'settings.rememberPlayerChanges' => '플레이어 변경 사항 기억',
			'settings.rememberPlayerChangesDescription' => '재생 중 변경한 사항을 저장하고 다시 적용할 위치',
			'settings.scopePlaybackSpeed' => '재생 속도',
			'settings.scopeShaderPreset' => '셰이더 프리셋',
			'settings.scopeAspectRatio' => '화면 비율',
			'settings.scopeSyncOffsets' => '오디오 및 자막 동기화',
			'settings.playerScopeOff' => '저장하지 않음',
			'settings.playerScopeGlobal' => '모든 곳',
			'settings.playerScopeLibrary' => '라이브러리별',
			'settings.playerScopeTitle' => '시리즈 또는 영화별',
			'settings.exportDialogTitle' => 'Luroka 설정 내보내기',
			'settings.velvetHourTheme' => '벨벳 아워',
			'themeEditor.builtIn' => '내장',
			'themeEditor.presets' => '사전 설정',
			'themeEditor.custom' => '맞춤',
			'themeEditor.customEmpty' => '아직 생성되지 않음',
			'themeEditor.editCustom' => '맞춤 테마 수정',
			'themeEditor.editCustomDescription' => '모든 색상을 직접 선택하세요',
			'themeEditor.locked' => '서포터로 잠금 해제',
			'themeEditor.savedLocked' => '저장됨 — Supporter로 잠금 해제',
			'themeEditor.title' => '맞춤 테마',
			'themeEditor.startFrom' => '다음에서 시작',
			'themeEditor.startFromDescription' => '다른 테마의 모든 색상 복사',
			'themeEditor.colors' => '색상',
			'themeEditor.preview' => '미리보기',
			'themeEditor.slots.bg' => '배경',
			'themeEditor.slots.surface' => '표면',
			'themeEditor.slots.outline' => '개요',
			'themeEditor.slots.text' => '텍스트',
			'themeEditor.slots.textMuted' => '보조 텍스트',
			'themeEditor.slots.accent' => '악센트',
			'themeEditor.opacity' => '불투명도',
			'themeEditor.hexHint' => '#RRGGBB 또는 #AARRGGBB',
			'themeEditor.fromOtherThemes' => '다른 테마에서',
			'themeEditor.swatchLabel' => ({required Object theme, required Object color}) => '${theme} ${color}',
			'themeEditor.contrast.textOnBg' => '배경 텍스트',
			'themeEditor.contrast.textOnSurface' => '표면의 텍스트',
			'themeEditor.contrast.textMutedOnBg' => '배경의 보조 텍스트',
			'themeEditor.contrast.textMutedOnSurface' => '표면의 보조 텍스트',
			'themeEditor.contrast.accentOnBg' => '배경에 악센트',
			'themeEditor.contrast.accentOnSurface' => '표면에 악센트',
			'themeEditor.contrast.labelOnAccent' => '악센트에 버튼 라벨',
			'themeEditor.lowContrast' => ({required Object pair, required Object ratio, required Object minimum}) => '${pair}: ${ratio}:1, 권장 ${minimum}:1 미만',
			'themeEditor.discardTitle' => '변경사항을 취소하시겠습니까?',
			'themeEditor.discardMessage' => '저장되지 않은 색상 변경 사항은 손실됩니다.',
			'themeEditor.discard' => '폐기',
			'themeEditor.previewCardTitle' => ({required Object number}) => '에피소드 ${number}',
			'themeEditor.previewCardSubtitle' => ({required Object minutes}) => '${minutes}분 남음',
			'themeEditor.previewSwitch' => '자동재생',
			'themeEditor.previewMutedText' => '보조 텍스트는 다음과 같습니다.',
			'seriesBrowser.oneEpisode' => '1회',
			'seriesBrowser.watchedCount' => ({required Object count}) => '${count} 시청함',
			'seriesBrowser.episodeCount' => ({required Object count}) => '${count} 에피소드',
			'seriesBrowser.episodesFor' => ({required Object season}) => '${season} · 에피소드',
			'seriesBrowser.enterHint' => '선택: 오픈 시즌 · ↓: 에피소드',
			'titlePage.genre' => '장르',
			'titlePage.remaining' => ({required Object time}) => '${time} 남음',
			'titlePage.continueEpisode' => ({required Object season, required Object episode}) => '계속 S${season} E${episode}',
			'titlePage.watchlist' => '관심 목록',
			'titlePage.more' => '더보기',
			'tvMenus.appearanceDescription' => '테마, 화면 여백 및 포스터',
			'lurokaPlayer.title' => '플레이어 설정',
			'lurokaPlayer.watch' => '시계',
			'lurokaPlayer.watchDescription' => '속도를 설정하고, 긴장을 풀고, 다음에 무엇을 재생할지 결정하세요.',
			'lurokaPlayer.picture' => '사진 설정',
			'lurokaPlayer.pictureDescription' => '줌, HDR 및 비디오 처리',
			'lurokaPlayer.sound' => '오디오 및 자막',
			'lurokaPlayer.audioSettings' => '오디오 설정',
			'lurokaPlayer.soundDescription' => '타이밍, 볼륨 및 오디오 출력',
			'lurokaPlayer.chooseTracks' => '언어 및 자막 트랙 선택',
			'lurokaPlayer.tools' => '고급',
			'lurokaPlayer.toolsDescription' => '재생 정보 및 진단',
			'lurokaPlayer.preferences' => '재생 환경설정',
			'lurokaPlayer.preferencesDescription' => '귀하의 영화관, 귀하의 기본값. 사운드와 캡션으로 시작한 다음 스트리밍과 화면을 미세 조정하세요.',
			'lurokaPlayer.streamPreferences' => '스트리밍 품질',
			'lurokaPlayer.displayPreferences' => '디스플레이',
			'lurokaPlayer.enginePreferences' => '고급 플레이어 옵션',
			'lurokaPlayer.seekPreferences' => '추구',
			'lurokaPlayer.watchPreferences' => '자동재생 및 건너뛰기',
			'lurokaPlayer.rememberPreferences' => '환경설정 기억',
			'lurokaSettings.quickSetup' => '빠른 설정',
			'lurokaSettings.quickSetupDescription' => '더욱 원활한 TV 탐색, 편안한 화면 맞춤, 홈 레이아웃, 재생 기본 설정 등 필수 요소부터 시작하세요.',
			'lurokaSettings.experience' => '귀하의 경험',
			'lurokaSettings.experienceDescription' => 'Luroka가 외관, 언어, 재생, 라이브러리, 화면 시간 등 올바른 느낌을 갖게 합니다.',
			'lurokaSettings.remoteHint' => '↑ ↓ 카테고리 찾아보기 · → / 열기 옵션 선택 · ← 카테고리로 돌아가기',
			'playerChrome.browse' => '챕터 및 대기열',
			'playerChrome.backToPlayback' => '재생으로 돌아가기',
			'playerChrome.nowPlaying' => '지금 재생 중',
			'playerChrome.options' => '플레이어 옵션',
			'tvLayout.screenMargins' => 'TV 화면 여백',
			'tvLayout.screenMarginsDescription' => 'TV에서 사진의 일부가 잘리는 경우 앱 가장자리를 축소하세요.',
			'tvLayout.screenMarginsDefault' => '0%(기본값)',
			'studios.checkingCopies' => '다른 라이브러리 확인 중... 언제든지 알려진 복사본을 선택하세요.',
			'studios.incompleteCopies' => '일부 라이브러리를 확인할 수 없습니다. 알려진 복사본을 선택하거나 취소하고 다시 시도하세요.',
			'studios.partialFavorites' => '일부 즐겨찾기를 로드할 수 없습니다. 다시 시도하려면 새로 고침을 선택하세요.',
			'studios.copyLookupFailedTitle' => '모든 복사본을 확인할 수 없습니다.',
			'studios.copyLookupFailedMessage' => '일부 도서관은 응답하지 않았습니다. 이미 찾은 복사본 중 하나를 열거나 취소하고 다시 시도할 수 있습니다.',
			'studios.openKnownCopies' => '알려진 사본 표시',
			'studios.browseAll' => '모두 찾아보기',
			'studios.titleCount' => ({required Object count}) => '${count} 타이틀',
			'studios.topRated' => '최고 평점',
			'studios.mostWatched' => '라이브러리에서 가장 많이 시청한 콘텐츠',
			'studios.collection' => '스튜디오 컬렉션',
			'studios.loadedTitles' => ({required Object count}) => '${count} 타이틀 로드됨',
			'studios.sort' => '제목 정렬',
			'studios.sortTitleAscending' => '제목 A~Z',
			'studios.sortTitleDescending' => '타이틀 Z–A',
			'studios.sortNewest' => '최신 릴리스',
			'studios.sortOldest' => '가장 오래된 릴리스',
			'studios.sortAdded' => '최근 추가됨',
			'studios.sortEpisodeAdded' => '최근 추가된 에피소드',
			'studios.sortRating' => '최고 평점',
			'studios.title' => '스튜디오별로 찾아보기',
			'studios.all' => '모두',
			'studios.movies' => '영화',
			'studios.shows' => 'TV 프로그램',
			'studios.loadMore' => '더 많은 타이틀 로드',
			'studios.empty' => '현재 표시되는 라이브러리에 일치하는 제목이 없습니다.',
			'studios.retry' => '더 많은 타이틀을 로드할 수 없습니다. 다시 시도하려면 선택하세요.',
			'studios.description' => '라이브러리에서 이 스튜디오의 영화와 프로그램을 탐색해 보세요.',
			'dashboard.previousFeature' => '이전 추천 제목',
			'dashboard.nextFeature' => '다음 추천 타이틀',
			'dashboard.cinemaHome' => '홈',
			'dashboard.episodeFallback' => 'TV 에피소드',
			'dashboard.timeLeft' => ({required Object minutes}) => '${minutes}분 남음',
			'dashboard.timeLeftHours' => ({required Object hours, required Object minutes}) => '${hours}시간 ${minutes}분 남음',
			'dashboard.spoilerHidden' => '스포일러 기본 설정에 따라 에피소드 세부 정보가 숨겨집니다.',
			'dashboard.synopsisUnavailable' => '이 타이틀에 대한 자세한 내용을 보려면 세부정보를 엽니다.',
			'dashboard.yourSpace' => '당신의 공간',
			'dashboard.title' => '당신의 영화관.',
			'dashboard.subtitle' => '이야기를 이어서 보거나 다음 이야기를 찾아보세요.',
			'dashboard.featured' => 'LUROKA 추천',
			'dashboard.jumpBackIn' => '이어서 시청하기',
			'dashboard.episodeLabel' => ({required Object season, required Object episode}) => 'S${season} · E${episode}',
			'dashboard.anotherPick' => '또 다른 선택',
			'dashboard.exploreSeries' => '시리즈 살펴보기',
			'dashboard.showFeatured' => '홈 스포트라이트',
			'dashboard.showFeaturedDescription' => '홈 상단에 추천 영화와 프로그램을 표시합니다.',
			'lurokaCatalog.aboutPerson' => '스포트라이트에서',
			'lurokaCatalog.biographyUnavailable' => '이 서버에서는 전기를 사용할 수 없습니다.',
			'lurokaCatalog.filmography' => '라이브러리의 영화 및 프로그램',
			'lurokaCatalog.recommended' => '추천',
			'lurokaCatalog.browse' => '모든 타이틀',
			'lurokaCatalog.collections' => '컬렉션',
			'lurokaCatalog.browseHint' => '카탈로그를 살펴보세요. 필터와 정렬을 사용하여 선택 항목의 모양을 지정하세요.',
			'lurokaCatalog.recommendedHint' => '다음 이야기를 찾아보세요',
			'lurokaCatalog.details' => '비하인드 스토리',
			'referenceDetails.oneEpisodeLeft' => '1회 남았습니다',
			'referenceDetails.playAll' => '모두 재생',
			'referenceDetails.present' => '현재',
			'referenceDetails.continuing' => '계속',
			'referenceDetails.upNext' => '다음',
			'referenceDetails.episodesLeft' => ({required Object count}) => '${count} 에피소드 남음',
			'lurokaThemes.title' => 'Luroka 시네마 팔레트',
			'lurokaThemes.coral' => '코럴 · 미드나잇 블루 & 선셋',
			'lurokaThemes.ocean' => '바다 · 딥 블루 & 아이스',
			'lurokaThemes.jade' => '제이드 · 에버그린 & 민트',
			'lurokaThemes.amethyst' => '자수정 · 미드나잇 바이올렛',
			'lurokaThemes.darkThemes' => '어두운 영화 테마',
			'lurokaThemes.lightThemes' => '가벼운 영화 테마',
			'lurokaThemes.moreThemes' => '더 많은 테마',
			'lurokaThemes.moreThemesDescription' => '추가 팔레트 및 사용자 정의 색상 찾아보기',
			'lurokaThemes.obsidian' => '흑요석 · 퓨어 블랙 & 샴페인',
			'lurokaThemes.nocturne' => '녹턴 · 숯 & 샴페인',
			'lurokaThemes.burgundy' => '버건디 · 벨벳 와인 & 로즈',
			'lurokaThemes.slate' => '슬레이트 · 흑연 & 대수리',
			'lurokaThemes.espresso' => '에스프레소 · 코코아 & 카라멜',
			'lurokaThemes.pearl' => '진주 · 도자기 & 사파이어',
			'lurokaThemes.linen' => '린넨 · 따뜻한 아이보리 & 테라코타',
			'lurokaThemes.sunrise' => '일출 · 복숭아 & 산호',
			'lurokaThemes.coastal' => '해안 · 안개 & 바다 청록색',
			'lurokaThemes.latte' => '라떼 · 크림 & 카라멜',
			'lurokaThemes.sage' => '세이지 · 소프트 그린 & 유칼립투스',
			'lurokaThemes.lavender' => '라벤더 · 라일락 & 딥 바이올렛',
			'customPerformance.title' => '성능 및 효과',
			'customPerformance.fireStickMode' => '저전력 장치 모드',
			'customPerformance.description' => '감소된 효과, 정적 배경, 720p로 제한된 아트워크 및 40MiB 이미지 캐시를 사용하세요. 활성화된 동안 이는 시각 효과를 재정의합니다. 이 기능을 끄면 시각 효과 기본 설정이 복원됩니다.',
			'customPerformance.detailsTitle' => '성능 세부정보',
			'customPerformance.details' => '활성 효과, 이미지 캐시 제한 및 검색 성능 측정',
			'customPerformance.effectsTier' => '활성 효과 등급',
			'customPerformance.imageCache' => '이미지 캐시 제한',
			'customPerformance.measurement' => '브라우징 측정',
			'customPerformance.measureInstructions' => '20초 샘플을 시작하고 홈으로 돌아가서 리모컨을 사용하여 탐색하세요. 결과를 보려면 여기로 돌아오세요. 모드를 켜고 끄고 동일한 작업을 반복하여 비교하세요. 이는 비디오 디코더 성능이 아닌 Flutter UI 작업을 측정합니다.',
			'customPerformance.startSample' => '20초 샘플 시작',
			'customPerformance.stopSample' => '지금 샘플 완료',
			'customPerformance.sampling' => '샘플링 — 홈으로 돌아가 탐색합니다. 결과는 여기에 보관됩니다.',
			'customPerformance.frames' => '샘플링된 프레임',
			'customPerformance.slowFrames' => '예산 초과 프레임',
			'customPerformance.buildP95' => 'UI 빌드 시간(95번째 백분위수)',
			'customPerformance.rasterP95' => '래스터 시간(95번째 백분위수)',
			'customPerformance.frameBudget' => '프레임당 예산',
			'customPerformance.processMemory' => '샘플 종료 시 앱 프로세스 메모리',
			'customPerformance.noFrames' => '렌더링된 프레임이 캡처되지 않았습니다. 다른 샘플을 시작하고 앱을 찾아보세요.',
			'homeLayout.manageStudios' => '스튜디오 선택 및 주문',
			'homeLayout.manageStudiosDescription' => '이 프로필에 표시할 스튜디오를 선택하고 순서를 조정하세요.',
			'homeLayout.studioUnavailable' => '선택한 라이브러리에 있는 스튜디오만 홈에 표시됩니다.',
			'homeLayout.showAllStudios' => '모든 스튜디오 보기',
			'homeLayout.hideAllStudios' => '모든 스튜디오 숨기기',
			'homeLayout.reorderStudio' => '스튜디오 순서 변경',
			'homeLayout.episodeThumbnails' => '계속 시청의 에피소드 이미지',
			'homeLayout.episodeThumbnailsDescription' => '계속 시청 및 다음편에서 시리즈나 시즌 포스터 대신 에피소드 이미지를 표시하세요.',
			'homeLayout.spotlightSource' => '추천 콘텐츠 소스',
			'homeLayout.spotlightSourceDescription' => 'For You는 즐겨찾기 및 라이브러리 제목과 함께 이 기기에서 이 프로필의 시청 활동을 사용합니다.',
			'homeLayout.spotlightForYou' => '당신을 위해',
			'homeLayout.spotlightForYouDescription' => '이 기기에서 이 프로필의 시청 활동을 사용하여 시청 중인 콘텐츠, 즐겨찾기, 새로운 추가 항목 및 트렌드가 혼합되어 있습니다.',
			'homeLayout.spotlightTrending' => '인기 급상승',
			'homeLayout.spotlightTrendingDescription' => '라이브러리에 있는 인기 영화와 프로그램.',
			'homeLayout.spotlightContinue' => '계속 시청하기',
			'homeLayout.spotlightContinueDescription' => '시작한 타이틀과 계속할 수 있는 에피소드.',
			'homeLayout.spotlightFavorites' => '즐겨찾기에서',
			'homeLayout.spotlightInspired' => '귀하의 시청에서 영감을 얻었습니다.',
			'homeLayout.spotlightNextUp' => '다음은',
			'homeLayout.title' => '홈 개인화',
			'homeLayout.description' => '이 프로필의 행 순서와 공개 여부를 선택하세요. 이동하거나 숨기려면 행을 선택하세요.',
			'homeLayout.rows' => '홈 행',
			'homeLayout.progressLayout' => '계속해서 시청하고 다음 단계를 진행하세요',
			'homeLayout.progressCombined' => '한 줄로 결합',
			'homeLayout.progressSeparate' => '별도의 행',
			'homeLayout.progressDescription' => '서버에서 지원하는 경우 Next Up을 분리하세요. 다른 서버는 결합된 상태로 유지됩니다.',
			'homeLayout.visible' => '보이는',
			'homeLayout.hidden' => '숨겨진',
			'homeLayout.showRow' => '행 표시',
			'homeLayout.hideRow' => '행 숨기기',
			'homeLayout.moveUp' => '위로 이동',
			'homeLayout.moveDown' => '아래로 이동',
			'homeLayout.pinnedCollections' => '고정된 컬렉션',
			'homeLayout.pinInstructions' => '컬렉션 메뉴를 열고 Pin를 홈으로 선택하세요. 바로가기를 제거하려면 여기에서 고정된 컬렉션을 선택하세요.',
			'homeLayout.pinCollection' => 'Pin-홈',
			'homeLayout.unpinCollection' => '집에서 고정 해제',
			'homeLayout.reset' => '기본 행 복원',
			'homeLayout.resetDescription' => '원래 행 순서를 복원하고 이 프로필의 모든 행을 표시하시겠습니까? 고정된 컬렉션은 보관됩니다.',
			'homeLayout.saveFailed' => '집 레이아웃을 저장할 수 없습니다. 다시 시도해 주세요.',
			'homeLayout.emptyHint' => '행이 숨겨질 수 있습니다. 홈 개인화를 열어 다시 표시하세요.',
			'screenTime.title' => '화면 시간',
			'screenTime.description' => '이 프로필에서 동영상 시청에 소요된 시간을 확인하세요.',
			'screenTime.today' => '오늘',
			'screenTime.thisWeek' => '이번 주',
			'screenTime.thisMonth' => '이번 달',
			'screenTime.lessThanMinute' => '< 1분',
			'screenTime.minutes' => ({required Object count}) => '${count} 분',
			'screenTime.hours' => ({required Object count}) => '${count}시간',
			'screenTime.hoursMinutes' => ({required Object hours, required Object minutes}) => '${hours}시간 ${minutes}분',
			'activityStats.title' => '통계 보기',
			'activityStats.period' => '기간',
			'activityStats.last7Days' => '7일',
			'activityStats.last30Days' => '30일',
			'activityStats.last90Days' => '90일',
			'activityStats.thisYear' => '연도',
			'activityStats.allTime' => '모두',
			'activityStats.heroAllTime' => '모든 시간',
			'activityStats.heroDailyAverage' => '일일 평균',
			'activityStats.consistency' => '일관성',
			'activityStats.currentStreak' => '현재 연속',
			'activityStats.dayCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n, one: '${n}​일', other: '${n}일', ),
			'activityStats.longestStreak' => '최장 연속 행진',
			'activityStats.bestDay' => '최고의 날',
			'activityStats.bestWeek' => '최고의 주',
			'activityStats.trendTitle' => '시청 시간',
			'activityStats.trendToday' => '오늘',
			'activityStats.gapDetail' => ({required Object range, required Object stat}) => '${range}의 ${stat}',
			'activityStats.patternsTitle' => '당신의 패턴',
			'activityStats.mostlyKind' => ({required Object kind}) => '주로 ${kind}',
			'activityStats.weekdayTitle' => '평일 기준',
			'activityStats.hoursTitle' => '시간대별',
			'activityStats.amLabel' => '오전',
			'activityStats.pmLabel' => '오후',
			'activityStats.kindsTitle' => '카테고리별',
			'activityStats.kindMovie' => '영화',
			'activityStats.kindTv' => 'TV',
			'activityStats.kindLiveTv' => '라이브 TV',
			'activityStats.kindMusic' => '음악',
			'activityStats.kindOther' => '기타',
			'activityStats.topTitlesTitle' => '가장 많이 본',
			'activityStats.sessionsTitle' => '최근 세션',
			'activityStats.recentViewingTitle' => '최근 시청',
			'activityStats.recentViewingHint' => '선택한 기간 동안 시청한 총 시간입니다. 날짜는 최근 시청 횟수를 보여줍니다.',
			'activityStats.showMore' => '더 보기',
			'activityStats.sessionNoTitle' => '미확인 재생',
			'activityStats.emptyTitle' => '아직 아무것도 없습니다',
			'activityStats.emptyBody' => '무언가를 시청하면 여기에 통계가 쌓일 것입니다.',
			'activityStats.noDataInPeriod' => '이 기간에는 재생이 기록되지 않습니다.',
			'search.hint' => '영화, 시리즈, 음악 등을 검색하세요...',
			'search.tryDifferentTerm' => '다른 검색어를 시도해 보세요',
			'search.searchYourMedia' => '미디어 검색',
			'search.enterTitleActorOrKeyword' => '제목, 배우 또는 키워드를 입력하세요',
			'search.people' => '사람',
			'search.recentSearches' => '최근 검색어',
			'search.clearHistory' => '기록 지우기',
			'hotkeys.setShortcutFor' => ({required Object actionName}) => '${actionName}에 대한 단축키 설정',
			'hotkeys.clearShortcut' => '단축키 삭제',
			'hotkeys.noShortcutSet' => '설정된 단축키 없음',
			'hotkeys.currentShortcut' => '현재 단축키:',
			'hotkeys.pressToRecord' => '단축키를 기록하려면 선택',
			'hotkeys.recordingShortcut' => '지금 단축키를 누르세요',
			'hotkeys.actions.playPause' => '재생/일시정지',
			'hotkeys.actions.volumeUp' => '볼륨 높이기',
			'hotkeys.actions.volumeDown' => '볼륨 낮추기',
			'hotkeys.actions.seekForward' => ({required Object seconds}) => '앞으로 이동 (${seconds}초)',
			'hotkeys.actions.seekBackward' => ({required Object seconds}) => '뒤로 이동 (${seconds}초)',
			'hotkeys.actions.fullscreenToggle' => '전체 화면 전환',
			'hotkeys.actions.muteToggle' => '음소거 전환',
			'hotkeys.actions.subtitleToggle' => '자막 전환',
			'hotkeys.actions.audioTrackNext' => '다음 오디오 트랙',
			'hotkeys.actions.subtitleTrackNext' => '다음 자막 트랙',
			'hotkeys.actions.chapterNext' => '다음 챕터',
			'hotkeys.actions.chapterPrevious' => '이전 챕터',
			'hotkeys.actions.episodeNext' => '다음 에피소드',
			'hotkeys.actions.episodePrevious' => '이전 에피소드',
			'hotkeys.actions.speedIncrease' => '속도 높이기',
			'hotkeys.actions.speedDecrease' => '속도 낮추기',
			'hotkeys.actions.speedReset' => '속도 초기화',
			'hotkeys.actions.zoomIn' => '확대',
			'hotkeys.actions.zoomOut' => '축소',
			'hotkeys.actions.zoomReset' => '확대/축소 초기화',
			'hotkeys.actions.subSeekNext' => '다음 자막으로 이동',
			'hotkeys.actions.subSeekPrev' => '이전 자막으로 이동',
			'hotkeys.actions.shaderToggle' => '셰이더 전환',
			'hotkeys.actions.skipMarker' => '인트로/크레딧 건너뛰기',
			'hotkeys.actions.screenshot' => '스크린샷 찍기',
			'fileInfo.title' => '파일 정보',
			'fileInfo.overview' => '개요',
			'fileInfo.video' => '비디오',
			'fileInfo.audio' => '오디오',
			'fileInfo.subtitles' => '자막',
			'fileInfo.images' => '내장 이미지',
			'fileInfo.dataStreams' => '데이터 스트림',
			'fileInfo.lyrics' => '가사',
			'fileInfo.file' => '파일',
			'fileInfo.attachments' => '첨부 파일',
			'fileInfo.delivery' => '재생 방식',
			'fileInfo.versionCounter' => ({required Object index, required Object count}) => '버전 ${index} / ${count}',
			'fileInfo.fileCounter' => ({required Object index, required Object count}) => '파일 ${index} / ${count}',
			'fileInfo.noStreams' => '서버에서 이 파일에 대한 스트림 정보를 보고하지 않았습니다.',
			'fileInfo.copyPath' => '경로 복사',
			'fileInfo.pathCopied' => '파일 경로가 복사되었습니다',
			'fileInfo.codec' => '코덱',
			'fileInfo.codecTag' => '코덱 태그',
			'fileInfo.resolution' => '해상도',
			'fileInfo.codedResolution' => '코딩 해상도',
			'fileInfo.bitrate' => '비트레이트',
			'fileInfo.frameRate' => '프레임 속도',
			'fileInfo.rotation' => '회전',
			'fileInfo.comment' => '주석',
			'fileInfo.audioDescription' => '오디오 설명',
			'fileInfo.headerCompression' => '헤더 압축',
			'fileInfo.sidecarFile' => '사이드카 파일',
			'fileInfo.transportTimestamp' => '전송 타임스탬프',
			'fileInfo.displayOffset' => '표시 오프셋',
			'fileInfo.previewFailureCode' => '미리보기 오류 코드',
			'fileInfo.previewRetries' => '미리보기 재시도 횟수',
			'fileInfo.aspectRatio' => '종횡비',
			'fileInfo.pixelAspectRatio' => '픽셀 종횡비',
			'fileInfo.profile' => '프로파일',
			'fileInfo.level' => '레벨',
			'fileInfo.bitDepth' => '비트 심도',
			'fileInfo.pixelFormat' => '픽셀 포맷',
			'fileInfo.colorSpace' => '색 공간',
			'fileInfo.colorRange' => '색 범위',
			'fileInfo.colorPrimaries' => '색 원색',
			'fileInfo.colorTransfer' => '색상 전송',
			'fileInfo.chromaSubsampling' => '색차 서브샘플링',
			'fileInfo.chromaLocation' => '크로마 위치',
			'fileInfo.scanType' => '주사 방식',
			'fileInfo.interlaced' => '비월 주사',
			'fileInfo.anamorphic' => '아나모픽',
			'fileInfo.referenceFrames' => '참조 프레임',
			'fileInfo.dynamicRange' => '동적 범위',
			'fileInfo.dolbyVision' => 'Dolby Vision',
			'fileInfo.dolbyVisionLevel' => 'Dolby Vision 레벨',
			'fileInfo.dolbyVisionVersion' => 'Dolby Vision 버전',
			'fileInfo.dolbyVisionLayers' => 'Dolby Vision 레이어',
			'fileInfo.baseLayerCompatibility' => '베이스 레이어 호환성',
			'fileInfo.avcBitstream' => 'AVC 비트스트림',
			'fileInfo.nalLengthSize' => 'NAL 길이 크기',
			'fileInfo.scalingMatrix' => '사용자 지정 스케일링 매트릭스',
			'fileInfo.streamIdentifier' => '스트림 식별자',
			'fileInfo.streamIndex' => '스트림 인덱스',
			'fileInfo.streamId' => '스트림 ID',
			'fileInfo.language' => '언어',
			'fileInfo.languageCode' => '언어 코드',
			'fileInfo.streamTitle' => '트랙 제목',
			'fileInfo.channels' => '채널',
			'fileInfo.sampleRate' => '샘플 레이트',
			'fileInfo.spatialAudio' => '공간 오디오',
			'fileInfo.textBased' => '텍스트 기반',
			'fileInfo.subtitleFormat' => '사이드카 포맷',
			'fileInfo.provider' => '제공자',
			'fileInfo.matchScore' => '일치 점수',
			'fileInfo.externalDelivery' => '별도 제공 가능',
			'fileInfo.sidecarPath' => '사이드카 경로',
			'fileInfo.sourceStream' => '복사 출처',
			'fileInfo.temporary' => '임시',
			'fileInfo.timeBase' => '시간 기준',
			'fileInfo.overallBitrate' => '전체 비트레이트',
			'fileInfo.path' => '경로',
			'fileInfo.fileName' => '파일 이름',
			'fileInfo.size' => '크기',
			'fileInfo.totalSize' => '총 크기',
			'fileInfo.container' => '컨테이너',
			'fileInfo.duration' => '재생 시간',
			'fileInfo.previewThumbnails' => '미리보기 썸네일',
			'fileInfo.previewIndex' => '미리보기 인덱스',
			'fileInfo.packetLength' => '패킷 길이',
			'fileInfo.filePresent' => '파일 있음',
			'fileInfo.fileReadable' => '서버에서 읽기 가능',
			'fileInfo.streamPath' => '스트림 경로',
			'fileInfo.optimizedForStreaming' => '스트리밍 최적화',
			'fileInfo.has64bitOffsets' => '64비트 오프셋',
			'fileInfo.protocol' => '프로토콜',
			'fileInfo.mediaType' => '미디어 유형',
			'fileInfo.sourceKind' => '소스 종류',
			'fileInfo.optimizedVersion' => '최적화 버전',
			'fileInfo.optimizationTarget' => '최적화 대상',
			'fileInfo.deletedAt' => '삭제됨',
			'fileInfo.remoteSource' => '원격 소스',
			'fileInfo.infiniteStream' => '무한 스트림',
			'fileInfo.directPlay' => 'Direct Play',
			'fileInfo.directStream' => 'Direct Stream',
			'fileInfo.transcoding' => '트랜스코딩',
			'fileInfo.etag' => 'ETag',
			'fileInfo.versionId' => '버전 ID',
			'fileInfo.fileId' => '파일 ID',
			'fileInfo.defaultAudioTrack' => '기본 오디오 트랙',
			'fileInfo.defaultSubtitleTrack' => '기본 자막 트랙',
			'fileInfo.subtitlesOff' => '꺼짐',
			'fileInfo.flagDefault' => '기본',
			'fileInfo.flagForced' => '강제',
			'fileInfo.flagSelected' => '선택됨',
			'fileInfo.flagExternal' => '외부',
			'fileInfo.flagHearingImpaired' => '청각 장애인용',
			'fileInfo.flagDub' => '더빙',
			'fileInfo.flagOriginal' => '원본',
			'fileInfo.channelsMono' => '모노',
			'fileInfo.dolbyVisionProfile' => ({required Object profile}) => '프로파일 ${profile}',
			'mediaMenu.markAsWatched' => '시청 완료로 표시',
			'mediaMenu.markAsUnwatched' => '미시청으로 표시',
			'mediaMenu.clearProgress' => '진행상황 지우기',
			'mediaMenu.removeFromContinueWatching' => '계속 보기에서 제거',
			'mediaMenu.viewDetails' => '상세 정보 보기',
			'mediaMenu.goToSeries' => '시리즈로 이동',
			'mediaMenu.shufflePlay' => '무작위 재생',
			'mediaMenu.shuffleNotAvailableOffline' => '오프라인에서는 무작위 재생을 사용할 수 없습니다',
			'mediaMenu.fileInfo' => '파일 정보',
			'mediaMenu.deleteEpisodeFromServer' => '서버에서 에피소드 삭제',
			'mediaMenu.deleteSeasonFromServer' => '서버에서 시즌 삭제',
			'mediaMenu.deleteShowFromServer' => '서버에서 프로그램 삭제',
			'mediaMenu.deleteMovieFromServer' => '서버에서 영화 삭제',
			'mediaMenu.deleteEpisodeTitle' => '이 에피소드를 삭제할까요?',
			'mediaMenu.deleteSeasonTitle' => '이 시즌을 삭제할까요?',
			'mediaMenu.deleteShowTitle' => '이 프로그램을 삭제할까요?',
			'mediaMenu.deleteMovieTitle' => '이 영화를 삭제할까요?',
			'mediaMenu.deleteEpisodeConfirm' => '에피소드 삭제',
			'mediaMenu.deleteSeasonConfirm' => '시즌 삭제',
			'mediaMenu.deleteShowConfirm' => '프로그램 삭제',
			'mediaMenu.deleteMovieConfirm' => '영화 삭제',
			'mediaMenu.deleteAnyway' => '그래도 삭제',
			'mediaMenu.confirmDeleteTarget' => ({required Object title}) => '서버에서 ${title}을(를) 영구 삭제할까요?',
			'mediaMenu.deleteMultipleWarning' => '모든 에피소드와 파일이 포함됩니다.',
			'mediaMenu.deleteEpisodeCountWarning' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n, one: '이렇게 하면 포함된 모든 ${n} 에피소드와 해당 파일이 삭제됩니다.', other: '포함된 에피소드 ${n}개와 해당 파일이 모두 삭제됩니다.', ),
			'mediaMenu.deleteMultiPartWarning' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n, one: '이 항목은 ${n} 파일로 저장되며 삭제됩니다.', other: '이 항목은 파일 ${n}개에 걸쳐 저장되어 있으며, 모든 파일이 삭제됩니다.', ),
			'mediaMenu.deleteSharedFileHeading' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n, one: '${n} 다른 에피소드도 동일한 파일에 저장되며 삭제됩니다.', other: '같은 파일에 저장된 다른 에피소드 ${n}개도 함께 삭제됩니다:', ),
			'mediaMenu.deleteScopeUnverifiedProbeFailed' => 'Luroka가 어떤 파일이 삭제될지 확인하지 못해 위 항목보다 더 많은 파일이 삭제될 수 있습니다. 취소하고 다시 시도하거나 그래도 삭제하세요.',
			'mediaMenu.deleteScopeUnverifiedNoFileInfo' => '서버가 이 항목의 파일 정보를 제공하지 않아 Luroka가 어떤 파일이 삭제될지 확인할 수 없습니다. 위 항목보다 더 많은 파일이 삭제될 수 있습니다.',
			'mediaMenu.mediaDeletedSuccessfully' => '미디어 항목이 성공적으로 삭제되었습니다',
			'mediaMenu.mediaFailedToDelete' => '미디어 항목 삭제 실패',
			'mediaMenu.rate' => '평가',
			'mediaMenu.playFromBeginning' => '처음부터 재생',
			'mediaMenu.playVersion' => '버전 재생...',
			'rateSheet.title' => '평가',
			'rateSheet.server' => '서버',
			'rateSheet.favorite' => '즐겨찾기',
			'rateSheet.favorited' => '즐겨찾기됨',
			'rateSheet.saved' => '저장됨',
			'rateSheet.notAvailable' => '일치 항목 없음',
			'rateSheet.noConnectedServices' => '평가하려면 설정에서 서비스를 연결하세요.',
			'accessibility.mediaCardMovie' => ({required Object title}) => '${title}, 영화',
			'accessibility.mediaCardShow' => ({required Object title}) => '${title}, TV 프로그램',
			'accessibility.mediaCardEpisode' => ({required Object title, required Object episodeInfo}) => '${title}, ${episodeInfo}',
			'accessibility.mediaCardSeason' => ({required Object title, required Object seasonInfo}) => '${title}, ${seasonInfo}',
			'accessibility.mediaCardWatched' => '시청 완료',
			'accessibility.mediaCardPartiallyWatched' => ({required Object percent}) => '${percent}% 시청 완료',
			'accessibility.mediaCardUnwatched' => '미시청',
			'accessibility.tapToPlay' => '탭하여 재생',
			'accessibility.decrease' => '낮추기',
			'accessibility.increase' => '높이기',
			'accessibility.decreaseValue' => ({required Object label}) => '${label} 낮추기',
			'accessibility.increaseValue' => ({required Object label}) => '${label} 높이기',
			'accessibility.hue' => '색조',
			'accessibility.saturation' => '채도',
			'accessibility.brightness' => '밝기',
			_ => null,
		} ?? switch (path) {
			'accessibility.hexColor' => '16진수 색상',
			'accessibility.expandText' => '텍스트 펼치기',
			'accessibility.collapseText' => '텍스트 접기',
			'accessibility.alphabetNavigation' => '알파벳 탐색',
			'accessibility.alphabetScrollHint' => '위아래로 스와이프하여 글자별로 이동',
			'accessibility.rowColumnPosition' => ({required Object rowCount, required Object row, required Object columnCount, required Object column}) => '${rowCount}행 중 ${row}행, ${columnCount}열 중 ${column}열',
			'accessibility.rowPosition' => ({required Object rowCount, required Object row}) => '${rowCount}행 중 ${row}행',
			'accessibility.autoScrollPlay' => '자동 스크롤 재생',
			'accessibility.autoScrollPause' => '자동 스크롤 일시정지',
			'accessibility.hueShort' => 'H',
			'accessibility.saturationShort' => 'S',
			'accessibility.valueShort' => 'V',
			'tooltips.shufflePlay' => '무작위 재생',
			'tooltips.playTrailer' => '예고편 재생',
			'tooltips.markAsWatched' => '시청 완료로 표시',
			'tooltips.markAsUnwatched' => '미시청으로 표시',
			'audioTracks.track' => ({required Object n}) => '오디오 트랙 ${n}',
			'videoControls.audioLabel' => '오디오',
			'videoControls.subtitlesLabel' => '자막',
			'videoControls.addTime' => ({required Object amount, required Object unit}) => '+${amount}${unit}',
			'videoControls.letterbox' => '레터박스 모드',
			'videoControls.fillScreen' => '화면 채우기',
			'videoControls.stretch' => '확장',
			'videoControls.lockRotation' => '회전 잠금',
			'videoControls.unlockRotation' => '회전 잠금 해제',
			'videoControls.timerActive' => '타이머 활성화됨',
			'videoControls.playbackWillPauseIn' => ({required Object duration}) => '${duration} 후 재생이 일시정지됩니다',
			'videoControls.sleepTimerEndOfVideo' => '현재 비디오의 끝',
			'videoControls.sleepTimerStopAtHeader' => '정지 시점',
			'videoControls.sleepTimerDurationHeader' => '타이머',
			'videoControls.playbackWillPauseAtEnd' => '재생이 이 비디오의 끝에서 일시 중지됩니다',
			'videoControls.stillWatching' => '아직 시청 중이신가요?',
			'videoControls.pausingIn' => ({required Object seconds}) => '${seconds}초 후 일시 정지',
			'videoControls.continueWatching' => '계속',
			'videoControls.autoPlayNext' => '다음 자동 재생',
			'videoControls.playNext' => '다음 재생',
			'videoControls.playButton' => '재생',
			'videoControls.pauseButton' => '일시정지',
			'videoControls.playbackPaused' => '일시정지됨',
			'videoControls.playbackResumed' => '재생 중',
			'videoControls.loadingVideo' => '동영상 로딩 중...',
			'videoControls.showPlaybackControls' => '재생 컨트롤 표시',
			'videoControls.hidePlaybackControls' => '재생 컨트롤 숨기기',
			'videoControls.seekBackwardButton' => ({required Object seconds}) => '${seconds}초 뒤로 이동',
			'videoControls.seekForwardButton' => ({required Object seconds}) => '${seconds}초 앞으로 이동',
			'videoControls.previousButton' => '이전 에피소드',
			'videoControls.nextButton' => '다음 에피소드',
			'videoControls.previousChapterButton' => '이전 챕터',
			'videoControls.nextChapterButton' => '다음 챕터',
			'videoControls.muteButton' => '음소거',
			'videoControls.unmuteButton' => '음소거 해제',
			'videoControls.settingsButton' => '재생 설정',
			'videoControls.infoButton' => '정보',
			'videoControls.tracksButton' => '오디오 및 자막',
			'videoControls.chaptersButton' => '챕터',
			'videoControls.versionQualityButton' => '버전 및 화질',
			'videoControls.versionColumnHeader' => '버전',
			'videoControls.qualityColumnHeader' => '화질',
			'videoControls.qualityOriginal' => '원본',
			'videoControls.qualityPresetLabel' => ({required Object resolution, required Object bitrate}) => '${resolution}p ${bitrate} Mbps',
			'videoControls.transcodeUnavailableFallback' => '트랜스코딩을 사용할 수 없음 — 원본 화질로 재생',
			'videoControls.subtitleUnavailableFallback' => '선택한 자막을 불러올 수 없어 자막 없이 재생을 계속합니다',
			'videoControls.pipButton' => '픽처 인 픽처 모드',
			'videoControls.aspectRatioButton' => '화면비율',
			'videoControls.ambientLighting' => '주변 조명',
			'videoControls.fullscreenButton' => '전체 화면',
			'videoControls.exitFullscreenButton' => '전체 화면 종료',
			'videoControls.alwaysOnTopButton' => '창 최상위 고정',
			'videoControls.rotationLockButton' => '회전 잠금',
			'videoControls.lockScreen' => '화면 잠금',
			'videoControls.screenLockButton' => '화면 잠금',
			'videoControls.longPressToUnlock' => '길게 눌러 잠금 해제',
			'videoControls.timelineSlider' => '타임라인',
			'videoControls.volumeSlider' => '볼륨 조절',
			'videoControls.endsAt' => ({required Object time}) => '${time}에 종료',
			'videoControls.pipActive' => '화면 속 화면으로 재생 중',
			'videoControls.pipFailed' => '화면 속 화면 모드를 시작할 수 없습니다',
			'videoControls.screenshotSaved' => '스크린샷 저장됨',
			'videoControls.screenshotFailed' => '스크린샷을 찍을 수 없습니다.',
			'videoControls.zoomPercent' => ({required Object percent}) => '확대/축소 ${percent}%',
			'videoControls.volumePercent' => ({required Object percent}) => '볼륨 ${percent}%',
			'videoControls.pipErrors.androidVersion' => 'Android 8.0 이상이 필요합니다',
			'videoControls.pipErrors.iosVersion' => 'iOS 15.0 이상이 필요합니다',
			'videoControls.pipErrors.permissionDisabled' => '화면 속 화면이 비활성화되어 있습니다. 시스템 설정에서 활성화하세요.',
			'videoControls.pipErrors.notSupported' => '이 기기는 화면 속 화면 모드를 지원하지 않습니다',
			'videoControls.pipErrors.voSwitchFailed' => '화면 속 화면을 위한 비디오 출력 전환에 실패했습니다',
			'videoControls.pipErrors.failed' => '화면 속 화면 모드를 시작할 수 없습니다',
			'videoControls.pipErrors.prepareFailed' => '화면 속 화면을 준비할 수 없습니다',
			'videoControls.pipErrors.unknown' => ({required Object error}) => '오류가 발생했습니다: ${error}',
			'videoControls.chapters' => '챕터',
			'videoControls.noChaptersAvailable' => '사용 가능한 챕터가 없습니다',
			'videoControls.queue' => '재생 대기열',
			'videoControls.noQueueItems' => '대기열에 항목이 없습니다',
			'videoControls.noAudioDevicesAvailable' => '사용 가능한 오디오 기기가 없습니다',
			'videoControls.searchSubtitles' => '자막 검색',
			'videoControls.language' => '언어',
			'videoControls.noSubtitlesFound' => '자막을 찾을 수 없습니다',
			'videoControls.subtitleDownloaded' => '자막이 다운로드되었습니다',
			'videoControls.subtitleDownloadedNotApplied' => '자막을 다운로드했지만 선택할 수 없습니다',
			'videoControls.subtitleDownloadFailed' => '자막 다운로드에 실패했습니다',
			'videoControls.searchLanguages' => '언어 검색...',
			'videoControls.skipIntro' => '인트로 건너뛰기',
			'videoControls.skipCredits' => '크레딧 건너뛰기',
			'videoControls.nextEpisode' => '다음 에피소드',
			'videoControls.subtitleTrack' => ({required Object n}) => '트랙 ${n}',
			'videoControls.subtitleFile' => ({required Object name}) => '자막 ${name}',
			'videoControls.forcedTrack' => ({required Object label}) => '${label} (강제)',
			'videoControls.osdSubtitlesOff' => '자막: 꺼짐',
			'videoControls.osdSubtitles' => ({required Object track}) => '자막: ${track}',
			'videoControls.osdAudio' => ({required Object track}) => '오디오: ${track}',
			'messages.markedAsWatched' => '시청 완료로 표시됨',
			'messages.markedAsUnwatched' => '미시청으로 표시됨',
			'messages.markedAsWatchedOffline' => '시청 완료로 표시됨 (연결 시 동기화됨)',
			'messages.markedAsUnwatchedOffline' => '미시청으로 표시됨 (연결 시 동기화됨)',
			'messages.autoRemovedWatchedDownload' => ({required Object title}) => '자동 삭제됨: ${title}',
			'messages.autoRemovedWatchedDownloads' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n, one: '자동 제거된 ${n} 시청 다운로드', other: '시청한 다운로드 ${n}개를 자동 삭제했습니다', ),
			'messages.removedFromContinueWatching' => '계속 시청 목록에서 제거됨',
			'messages.errorLoading' => ({required Object error}) => '오류: ${error}',
			'messages.searchPartialResults' => '일부 미디어 서버를 검색하지 못했습니다. 사용 가능한 결과만 표시합니다.',
			'messages.streamInterrupted' => '스트림이 중단되었습니다. 재생을 누르거나 탐색하여 다시 시도하세요.',
			'messages.liveStreamInterrupted' => '라이브 스트림이 중단되었습니다. 재생을 눌러 다시 시도하세요.',
			'messages.fileInfoNotAvailable' => '파일 정보가 없습니다',
			'messages.playbackAuthenticationRequired' => '이 항목을 재생하려면 미디어 서버에 다시 로그인하세요.',
			'messages.playbackServerUnavailable' => '미디어 서버를 사용할 수 없습니다. 나중에 다시 시도하세요.',
			'messages.playbackDataInvalid' => '서버에서 잘못된 재생 정보를 반환했습니다.',
			'messages.playbackCancelled' => '재생이 취소되었습니다.',
			'messages.playbackFailed' => '재생을 시작할 수 없습니다.',
			'messages.playbackFailedDetail' => ({required Object error}) => '재생을 시작할 수 없습니다: ${error}',
			'messages.audioOutputFailed' => '오디오 출력이 응답하지 않습니다. TV 또는 리시버의 오디오 연결을 확인하세요. 다른 앱에서도 소리가 나지 않으면 기기를 재시작하세요.',
			'messages.mediaUnavailable' => '이 콘텐츠는 더 이상 사용할 수 없습니다.',
			'messages.errorLoadingFileInfo' => ({required Object error}) => '파일 정보 로딩 중 오류: ${error}',
			'messages.errorLoadingSeries' => '시리즈 로딩 중 오류',
			'messages.musicNotSupported' => '음악 재생 미지원',
			'messages.noDescriptionAvailable' => '설명이 없습니다',
			'messages.noProfilesAvailable' => '사용 가능한 프로필이 없습니다',
			'messages.contactAdminForProfiles' => '프로필을 추가하려면 서버 관리자에게 문의하세요',
			'messages.unableToDetermineLibrarySection' => '이 항목의 라이브러리 섹션을 확인할 수 없습니다',
			'messages.logsCleared' => '로그가 삭제되었습니다',
			'messages.logsCopied' => '로그가 클립보드에 복사되었습니다',
			'messages.noLogsAvailable' => '사용 가능한 로그가 없습니다',
			'messages.libraryScanning' => ({required Object title}) => '"${title}"을(를) 스캔 중입니다...',
			'messages.libraryScanStarted' => ({required Object title}) => '"${title}" 미디어 라이브러리 스캔 시작',
			'messages.libraryScanFailed' => ({required Object error}) => '미디어 라이브러리 스캔 실패: ${error}',
			'messages.metadataRefreshing' => ({required Object title}) => '"${title}" 메타데이터 새로고침 중...',
			'messages.metadataRefreshStarted' => ({required Object title}) => '"${title}" 메타데이터 새로고침 시작됨',
			'messages.metadataRefreshFailed' => ({required Object error}) => '메타데이터 새로고침 실패: ${error}',
			'messages.logoutConfirm' => '로그아웃하시겠습니까?',
			'messages.logoutDeviceConfirm' => '이 기기의 Luroka에서 로그아웃하시겠습니까? 키즈 프로필, 서버 계정, 다운로드한 미디어를 포함한 모든 프로필이 이 기기에서 삭제됩니다. 나중에 다시 로그인할 수 있습니다.',
			'messages.noSeasonsFound' => '시즌을 찾을 수 없음',
			'messages.seasonsLoadFailed' => '시즌을 불러오지 못했습니다',
			'messages.noEpisodesFound' => '시즌 1에서 에피소드를 찾을 수 없습니다',
			'messages.noEpisodesFoundGeneral' => '에피소드를 찾을 수 없습니다',
			'messages.episodesLoadFailed' => '에피소드를 불러오지 못했습니다',
			'messages.noResultsFound' => '결과를 찾을 수 없습니다',
			'messages.sleepTimerSet' => ({required Object label}) => '취침 타이머가 ${label}(으)로 설정되었습니다',
			'messages.noItemsAvailable' => '사용 가능한 항목이 없습니다',
			'messages.failedToCreatePlayQueueNoItems' => '재생 대기열을 만들지 못했습니다 — 항목이 없습니다',
			'messages.failedPlayback' => ({required Object action, required Object error}) => '${action}을(를) 수행할 수 없습니다: ${error}',
			'messages.switchingToCompatiblePlayer' => '호환되는 플레이어로 전환 중...',
			'messages.serverLimitTitle' => '재생 실패',
			'messages.serverLimitBody' => '서버 오류(HTTP 500). 대역폭/트랜스코딩 제한으로 세션이 거부된 것 같습니다. 소유자에게 조정을 요청하세요.',
			'messages.mediaUnreadableTitle' => '파일을 사용할 수 없음',
			'messages.mediaUnreadableBody' => '서버에서 이 항목을 찾았지만 파일을 읽을 수 없습니다(HTTP 404). 파일이 이동되거나 삭제되었거나 저장소가 오프라인 상태일 수 있습니다. 서버 관리자에게 파일 확인과 라이브러리 재스캔을 요청하세요.',
			'messages.serverBusyTitle' => '스트림을 사용할 수 없음',
			'messages.serverBusyBody' => '서버에서 이 파일의 스트리밍을 계속 거부했습니다(HTTP 503). 서버가 다시 시작 중이거나 사용량이 많을 수 있으며, 파일이 저장된 저장소가 오프라인일 수도 있습니다. 잠시 후 다시 시도하세요. 문제가 계속되면 서버 소유자에게 서버와 파일 저장소를 확인해 달라고 요청하세요.',
			'messages.playbackNotAllowedTitle' => '재생이 허용되지 않음',
			'messages.playbackNotAllowedBody' => '서버에서 이 항목의 스트리밍을 거부했습니다(HTTP 403). 계정에 재생 권한이 없거나 서버가 로컬 네트워크에서만 재생을 허용할 수 있습니다.',
			'messages.logsUploaded' => '로그 업로드 완료',
			'messages.logsUploadFailed' => '로그 업로드 실패',
			'messages.logId' => '로그 ID',
			'messages.burnedSubtitlesUseMenu' => '자막이 이 스트림에 입혀져 있습니다. 자막 메뉴에서 변경하세요.',
			'messages.noVideoUrl' => '사용 가능한 비디오 URL이 없습니다',
			'messages.playbackNoMediaSources' => '서버에서 재생 가능한 미디어 소스를 반환하지 않았습니다',
			'messages.playbackDataNotPrepared' => '재생 데이터가 준비되기 전에 재생이 시작되었습니다',
			'messages.streamSelectionUnavailable' => '이 소스에서는 스트림을 선택할 수 없습니다',
			'messages.streamSelectionFailed' => '선택한 스트림을 적용할 수 없습니다',
			'messages.trackSelectionNotRemembered' => '이 트랙 선택은 현재 재생에만 적용됩니다.',
			'messages.serverUnavailableForProfile' => '활성 프로필에 사용할 수 있는 서버가 없습니다',
			'sourceLibraries.title' => '서버 및 라이브러리',
			'sourceLibraries.description' => 'Luroka가 홈, 검색, 가용성 검색 및 스튜디오에 사용하는 라이브러리를 선택하세요. 홈 행 순서는 별도로 사용자 정의됩니다.',
			'sourceLibraries.partial' => '일부 서버를 확인할 수 없습니다. 해당 라이브러리에 대해 저장된 선택 사항은 유지됩니다. 다시 시도하려면 새로고침하세요.',
			'sourceLibraries.loadFailed' => '라이브러리를 로드할 수 없습니다. 연결을 확인하고 다시 시도해 보세요.',
			'sourceLibraries.notSelected' => '선택한 라이브러리에서는 사용할 수 없습니다.',
			'sourceLibraries.checkOthers' => '연결된 다른 소스 확인',
			'sourceLibraries.otherSources' => '연결된 다른 소스에서 사용 가능',
			'sourceLibraries.playOnce' => '한 번 플레이',
			'sourceLibraries.includeLibrary' => '이 라이브러리 포함',
			'sourceLibraries.noOthers' => '연결된 다른 소스에서 사본을 찾을 수 없습니다.',
			'sourceLibraries.chooseOne' => '계속하려면 라이브러리를 하나 이상 선택하세요.',
			'subtitlingStyling.text' => '텍스트',
			'subtitlingStyling.border' => '테두리',
			'subtitlingStyling.background' => '배경',
			'subtitlingStyling.fontSize' => '글자 크기',
			'subtitlingStyling.textColor' => '텍스트 색상',
			'subtitlingStyling.borderSize' => '테두리 크기',
			'subtitlingStyling.borderColor' => '테두리 색상',
			'subtitlingStyling.backgroundOpacity' => '배경 불투명도',
			'subtitlingStyling.backgroundColor' => '배경색',
			'subtitlingStyling.position' => '위치',
			'subtitlingStyling.assOverride' => 'ASS 오버라이드',
			'subtitlingStyling.overrideScale' => '크기 조정',
			'subtitlingStyling.overrideForce' => '강제 적용',
			'subtitlingStyling.overrideStrip' => '스타일 제거',
			'subtitlingStyling.positionTop' => '위',
			'subtitlingStyling.positionBottom' => '아래',
			'subtitlingStyling.useMargins' => '여백 사용',
			'subtitlingStyling.useMarginsDescription' => '텍스트 자막을 비디오 바깥 영역에 표시할 수 있습니다. 스타일이 적용된 자막은 원래 위치를 유지할 수 있습니다.',
			'subtitlingStyling.anchorToScreen' => '화면에 고정',
			'subtitlingStyling.anchorToScreenDescription' => '와이드스크린 비디오 아래의 검은 여백에 텍스트 자막을 표시합니다',
			'subtitlingStyling.bold' => '굵게',
			'subtitlingStyling.italic' => '기울임꼴',
			'subtitlingStyling.renderResolution' => '렌더링 해상도',
			'subtitlingStyling.renderResolutionScreen' => '화면 해상도',
			'subtitlingStyling.renderResolutionVideo' => '영상 해상도',
			'mpvConfig.title' => 'mpv.conf',
			'mpvConfig.description' => '고급 비디오 플레이어 설정',
			'mpvConfig.presets' => '프리셋',
			'mpvConfig.noPresets' => '저장된 프리셋이 없습니다',
			'mpvConfig.saveAsPreset' => '프리셋으로 저장...',
			'mpvConfig.presetName' => '프리셋 이름',
			'mpvConfig.presetNameHint' => '이 프리셋의 이름을 입력하세요',
			'mpvConfig.loadPreset' => '불러오기',
			'mpvConfig.deletePreset' => '삭제',
			'mpvConfig.presetSaved' => '프리셋이 저장되었습니다',
			'mpvConfig.presetLoaded' => '프리셋을 불러왔습니다',
			'mpvConfig.presetDeleted' => '프리셋이 삭제되었습니다',
			'mpvConfig.confirmDeletePreset' => '이 프리셋을 삭제하시겠습니까?',
			'mpvConfig.configPlaceholder' => 'gpu-api=vulkan\nhwdec=auto\n# comment',
			'mpvConfig.lineHint' => 'option=value',
			'mpvConfig.addLine' => '줄 추가',
			'mpvConfig.removeLine' => '줄 제거',
			'mpvConfig.embeddedVoHint' => 'Linux에서는 vo, gpu-context, gpu-api가 무시됩니다. 내장 동영상은 항상 비디오 평면에서 vo=libmpv로 렌더링되며, gpu-next(ArtCNN 같은 컴퓨트 셰이더에 필요)는 내장 방식으로 실행할 수 없습니다.',
			'dialog.confirmAction' => '작업 확인',
			'profiles.manageProfiles' => '프로필 관리',
			'profiles.quickAccess' => '빠른 액세스',
			'profiles.signOutDevice' => '이 기기에서 로그아웃',
			'profiles.addLurokaProfile' => 'Luroka 프로필 추가',
			'profiles.switchingProfile' => '프로필 전환 중…',
			'profiles.deleteThisProfileTitle' => '이 프로필을 삭제하시겠습니까?',
			'profiles.deleteThisProfileMessage' => ({required Object displayName}) => '${displayName}을(를) 제거합니다. 연결에는 영향이 없습니다.',
			'profiles.active' => '활성',
			'profiles.manage' => '관리',
			'profiles.delete' => '삭제',
			'profiles.signOut' => '로그아웃',
			'profiles.signOutPlexTitle' => 'Plex에서 로그아웃하시겠습니까?',
			'profiles.signOutPlexMessage' => ({required Object displayName}) => '${displayName} 및 모든 Plex Home 사용자를 제거할까요? 언제든 다시 로그인할 수 있습니다.',
			'profiles.signOutPlexDeleteDownloads' => '다운로드 항목도 삭제',
			'profiles.signOutPlexDeleteDownloadsDescription' => '그렇지 않으면 이 장치에 남아 있다가 이 계정에 다시 로그인하면 다시 나타납니다.',
			'profiles.signedOutPlex' => 'Plex에서 로그아웃되었습니다.',
			'profiles.signOutFailed' => '로그아웃에 실패했습니다.',
			'profiles.sectionTitle' => '프로필',
			'profiles.summarySingle' => '관리되는 사용자와 로컬 ID를 혼합하려면 프로필을 추가하세요',
			'profiles.summaryMultipleWithActive' => ({required Object count, required Object activeName}) => '${count}개 프로필 · 활성: ${activeName}',
			'profiles.summaryMultiple' => ({required Object count}) => '${count}개 프로필',
			'profiles.removeConnectionTitle' => '연결을 제거하시겠습니까?',
			'profiles.removeConnectionMessage' => ({required Object displayName, required Object connectionLabel}) => '${displayName}의 ${connectionLabel} 접근 권한을 제거합니다. 다른 프로필에는 유지됩니다.',
			'profiles.deleteProfileTitle' => '프로필을 삭제하시겠습니까?',
			'profiles.deleteProfileMessage' => ({required Object displayName}) => '${displayName} 및 해당 연결을 제거합니다. 서버는 계속 사용할 수 있습니다.',
			'profiles.profileNameLabel' => '프로필 이름',
			'profiles.pinProtectionLabel' => 'PIN 보호',
			'profiles.pinManagedByPlex' => 'PIN은 Plex에서 관리됩니다. plex.tv에서 편집하세요.',
			'profiles.noPinSetEditOnPlex' => '설정된 PIN이 없습니다. 요구하려면 plex.tv에서 홈 사용자를 편집하세요.',
			'profiles.setPin' => 'PIN 설정',
			'profiles.setPinTitle' => 'PIN 설정',
			'profiles.confirmPinTitle' => 'PIN 확인',
			'profiles.pinSet' => 'PIN 설정됨',
			'profiles.changePin' => '변경',
			'profiles.removePin' => '제거',
			'profiles.connectionsLabel' => '연결',
			'profiles.add' => '추가',
			'profiles.deleteProfileButton' => '프로필 삭제',
			'profiles.noConnectionsHint' => '연결이 없습니다 — 이 프로필을 사용하려면 하나 추가하세요.',
			'profiles.noConnections' => '연결 없음',
			'profiles.plexHomeAccount' => 'Plex Home 계정',
			'profiles.plexAccountChip' => ({required Object account}) => 'Plex 계정: ${account}',
			'profiles.plexAccountUserChip' => ({required Object account, required Object user}) => '${account} 계정의 ${user}',
			'profiles.connectionDefault' => '기본값',
			'profiles.connectionAs' => ({required Object displayName}) => '${displayName}(으)로',
			'profiles.makeDefault' => '기본값으로 설정',
			'profiles.removeConnection' => '제거',
			'profiles.profileRenamed' => '프로필 이름이 변경되었습니다.',
			'profiles.borrowAddTo' => ({required Object displayName}) => '${displayName}에 추가',
			'profiles.borrowExplain' => '다른 프로필의 연결을 빌립니다. PIN으로 보호된 프로필에는 PIN이 필요합니다.',
			'profiles.borrowEmpty' => '아직 빌릴 것이 없습니다.',
			'profiles.borrowEmptySubtitle' => '먼저 다른 프로필에 Plex, Jellyfin 또는 Emby를 연결하세요.',
			'profiles.borrowLoadFailed' => '사용 가능한 연결을 불러오지 못했습니다. 다시 시도하세요.',
			'profiles.borrowFromProfile' => ({required Object displayName}) => '${displayName}에서',
			'profiles.borrowConnectionBorrowed' => '연결을 빌렸습니다.',
			'profiles.borrowFailed' => '연결을 빌리지 못했습니다.',
			'profiles.incorrectPin' => 'PIN이 올바르지 않습니다.',
			'profiles.incorrectPinTryAgain' => 'PIN이 올바르지 않습니다. 다시 시도하세요.',
			'profiles.sourceProfileMissingParentAccount' => '원본 프로필에 상위 계정이 없습니다.',
			'profiles.failedToLoadHomeUsers' => 'Plex Home 사용자를 불러올 수 없습니다. 연결을 확인하고 다시 시도하세요.',
			'profiles.failedToVerifyPin' => 'PIN을 확인하지 못했습니다.',
			'profiles.newProfile' => '새 프로필',
			'profiles.profileNameHint' => '예: 손님, 어린이, 가족실',
			'profiles.pinProtectionOptional' => 'PIN 보호 (선택 사항)',
			'profiles.pinExplain' => '프로필 전환에는 4자리 PIN이 필요합니다.',
			'profiles.continueButton' => '계속',
			'profiles.pinsDontMatch' => 'PIN이 일치하지 않습니다',
			'profiles.tokenIdentityMismatch' => 'Plex 프로필 토큰이 예상과 다른 서버로 확인되었습니다',
			'connections.sectionTitle' => '연결',
			'connections.addConnection' => '연결 추가',
			'connections.addConnectionSubtitleNoProfile' => 'Plex로 로그인하거나 Jellyfin 또는 Emby 서버에 연결',
			'connections.addConnectionSubtitleScoped' => ({required Object displayName}) => '${displayName}에 추가: Plex, Jellyfin, Emby 또는 다른 프로필 연결',
			'connections.sessionExpiredOne' => ({required Object name}) => '${name}의 세션이 만료되었습니다',
			'connections.sessionExpiredMany' => ({required Object count}) => '${count}개 서버의 세션이 만료되었습니다',
			'connections.accessDeniedOne' => ({required Object name}) => '${name}에서 이 계정의 접근을 거부했습니다',
			'connections.accessDeniedMany' => ({required Object count}) => '${count}개 서버에서 이 계정의 접근을 거부했습니다',
			'connections.signInAgain' => '다시 로그인',
			'connections.editMediaBrowserTitle' => ({required Object product}) => '${product} 연결 편집',
			'connections.editMediaBrowserIntro' => ({required Object serverName}) => '${serverName}의 URL을 추가하거나 제거하세요. Luroka는 연결 가능한 URL 중 지연 시간이 가장 낮은 URL을 사용합니다.',
			'serversAccounts.title' => '서버 및 계정',
			'serversAccounts.subtitle' => 'Plex, Jellyfin 및 Emby 서버의 로그인 상태',
			'serversAccounts.online' => '온라인',
			'serversAccounts.offline' => '오프라인',
			'serversAccounts.unknown' => '여기에 로그인되지 않았습니다.',
			'serversAccounts.usedByNone' => '어떤 프로필에서도 사용되지 않음',
			'serversAccounts.usedByOne' => ({required Object name}) => '${name}에서 사용됨',
			'serversAccounts.usedByMany' => ({required Object name, required Object count}) => '${name} 및 ${count}에서 사용됨',
			'serversAccounts.serversOnline' => ({required Object total, required Object online}) => '${total} 서버 중 ${online} 온라인',
			'serversAccounts.noServers' => '아직 연결된 것이 없습니다. Plex 계정이나 Jellyfin 또는 Emby 서버를 추가하세요.',
			'serversAccounts.editUrls' => '서버 URL 편집',
			'accountPreferences.sectionTitle' => '계정 기본 설정',
			'accountPreferences.hubSubtitleSingle' => ({required Object account}) => '${account}에 저장된 오디오, 자막 및 라이브러리 옵션',
			'accountPreferences.hubSubtitleMultiple' => ({required Object count}) => '${count}개 계정에 저장된 오디오, 자막 및 라이브러리 옵션',
			'accountPreferences.pickAccount' => '각 계정은 고유한 기본 설정을 저장합니다. 편집할 계정을 선택하세요.',
			'accountPreferences.storedOnAccount' => '이러한 옵션은 서버 계정에 저장되며 다른 장치를 포함하여 해당 계정을 사용하는 모든 Luroka 프로필 및 앱에서 공유됩니다.',
			'accountPreferences.noAccounts' => '구성할 계정이 없습니다',
			'accountPreferences.noAccountsHint' => 'Plex에 로그인하거나 Jellyfin 또는 Emby 서버에 연결하면 해당 계정에 저장된 기본 설정이 여기에 표시됩니다.',
			'accountPreferences.unavailable' => '이 계정에 연결할 수 없습니다',
			'accountPreferences.loadFailed' => '이 기본 설정을 불러올 수 없습니다',
			'accountPreferences.noPreference' => '기본 설정 없음',
			'accountPreferences.notSet' => '설정되지 않음',
			'accountPreferences.groups.audioAndSubtitles' => '오디오 및 자막',
			'accountPreferences.groups.libraryDisplay' => '라이브러리',
			'accountPreferences.groups.personalMedia' => '개인 미디어',
			'accountPreferences.preferredAudioLanguage' => '선호 오디오 언어',
			'accountPreferences.autoSelectAudio' => '언어별로 오디오 선택',
			'accountPreferences.autoSelectAudioDescription' => '끄면 파일이 기본으로 표시한 오디오 트랙을 유지합니다.',
			'accountPreferences.preferredSubtitleLanguage' => '선호 자막 언어',
			'accountPreferences.subtitleMode' => '자막 자동 켜기',
			'accountPreferences.subtitleModes.none' => '수동 선택',
			'accountPreferences.subtitleModes.noneDescription' => '자동으로 자막을 켜지 않습니다.',
			'accountPreferences.subtitleModes.defaultMode' => '트랙 플래그 따르기',
			'accountPreferences.subtitleModes.defaultModeDescription' => '각 자막 트랙에 저장된 기본 및 강제 플래그를 사용합니다.',
			'accountPreferences.subtitleModes.always' => '항상 활성화',
			'accountPreferences.subtitleModes.alwaysDescription' => '선호 언어의 자막 트랙이 있으면 항상 켭니다.',
			'accountPreferences.subtitleModes.onlyForced' => '강제 자막만',
			'accountPreferences.subtitleModes.onlyForcedDescription' => '강제로 표시된 트랙만 로드합니다.',
			'accountPreferences.subtitleModes.smart' => '외국어 오디오 시 표시',
			'accountPreferences.subtitleModes.smartDescription' => '오디오가 다른 언어일 때만 자막을 켭니다.',
			'accountPreferences.subtitleAccessibility' => 'SDH 자막',
			'accountPreferences.subtitleAccessibilityOptions.preferNonSdh' => 'SDH가 아닌 자막 선호',
			'accountPreferences.subtitleAccessibilityOptions.preferSdh' => 'SDH 자막 선호',
			'accountPreferences.subtitleAccessibilityOptions.onlySdh' => 'SDH 자막만',
			'accountPreferences.subtitleAccessibilityOptions.onlyNonSdh' => 'SDH가 아닌 자막만',
			'accountPreferences.forcedSubtitles' => '강제 자막',
			'accountPreferences.forcedSubtitleOptions.preferNonForced' => '강제가 아닌 자막 선호',
			'accountPreferences.forcedSubtitleOptions.preferForced' => '강제 자막 선호',
			'accountPreferences.forcedSubtitleOptions.onlyForced' => '강제 자막만',
			'accountPreferences.forcedSubtitleOptions.onlyNonForced' => '강제가 아닌 자막만',
			'accountPreferences.displayMissingEpisodes' => '누락된 에피소드 표시',
			'accountPreferences.displayMissingEpisodesDescription' => '서버가 알고 있지만 파일이 없는 에피소드를 나열합니다.',
			'accountPreferences.hidePlayedInLatest' => '최신 항목에서 시청한 항목 숨기기',
			'accountPreferences.hidePlayedInLatestDescription' => '이미 시청한 항목은 서버의 최신 행에서 제외합니다.',
			'accountPreferences.displayCollectionsView' => '컬렉션 보기 표시',
			'accountPreferences.displayCollectionsViewDescription' => '라이브러리와 함께 서버의 컬렉션 보기를 제공합니다.',
			'accountPreferences.rewatchingInNextUp' => '재시청한 프로그램을 다음 에피소드에 유지',
			'accountPreferences.rewatchingInNextUpDescription' => '프로그램을 끝까지 본 뒤 다시 시작하면, 목록에서 제거하는 대신 다음 에피소드가 재시청을 따라갑니다.',
			'accountPreferences.watchedIndicator' => '시청 표시',
			'accountPreferences.watchedIndicatorOptions.none' => '안 함',
			'accountPreferences.watchedIndicatorOptions.moviesAndShows' => '영화 및 TV 프로그램',
			'accountPreferences.watchedIndicatorOptions.movies' => '영화만',
			'accountPreferences.watchedIndicatorOptions.shows' => 'TV 프로그램만',
			'accountPreferences.mediaReviewsVisibility' => '평점 및 리뷰',
			'accountPreferences.mediaReviewsOptions.usersAndCritics' => '사용자 및 평론가',
			'accountPreferences.mediaReviewsOptions.usersOnly' => '사용자만',
			'accountPreferences.mediaReviewsOptions.criticsOnly' => '평론가만',
			'accountPreferences.mediaReviewsOptions.nobody' => '숨김',
			'discover.title' => '둘러보기',
			'discover.noContentAvailable' => '사용 가능한 콘텐츠가 없습니다',
			'discover.addMediaToLibraries' => '미디어 라이브러리에 미디어를 추가해 주세요',
			'discover.continueWatching' => '계속 시청',
			'discover.continueWatchingIn' => ({required Object library}) => '${library}에서 계속 시청',
			'discover.nextUp' => '다음 에피소드',
			'discover.nextUpIn' => ({required Object library}) => '${library}의 다음 에피소드',
			'discover.recentlyAdded' => '최근에 추가됨',
			'discover.recentlyAddedIn' => ({required Object library}) => '${library}에 최근에 추가됨',
			'discover.latestAlbumsIn' => ({required Object library}) => '${library}의 최신 앨범',
			'discover.recentlyPlayedIn' => ({required Object library}) => '${library}에서 최근 재생',
			'discover.mostPlayedIn' => ({required Object library}) => '${library}에서 가장 많이 재생',
			'discover.playEpisode' => ({required Object season, required Object episode}) => 'S${season}E${episode}',
			'discover.overview' => '개요',
			'discover.cast' => '출연진',
			'discover.extras' => '예고편 및 부가영상',
			'discover.studio' => '제작사',
			'discover.rating' => '연령 등급',
			'discover.director' => '감독',
			'discover.directors' => '감독',
			'discover.movie' => '영화',
			'discover.tvShow' => 'TV 시리즈',
			'discover.minutesLeft' => ({required Object minutes}) => '${minutes}분 남음',
			'discover.moreLikeThis' => '비슷한 콘텐츠',
			'discover.titleCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n, one: '${n} 제목', other: '${n}개 타이틀', ),
			'discover.person.born' => '태어난',
			'discover.person.died' => '사망',
			'discover.person.birthplace' => '출생지',
			'discover.person.dateWithAge' => ({required Object date, required Object age}) => '${date}(연령 ${age})',
			'discover.person.dateWithAgeAtDeath' => ({required Object date, required Object age}) => '${date}(늙은 ${age})',
			'errors.searchFailed' => ({required Object error}) => '검색 실패: ${error}',
			'errors.searchUnavailable' => '검색이 어떤 미디어 서버에도 연결할 수 없습니다.',
			'errors.connectionTimeout' => ({required Object context}) => '${context} 로드 중 연결 시간 초과',
			'errors.connectionFailed' => '미디어 서버에 연결할 수 없습니다',
			'errors.unableToLoad' => ({required Object context}) => '${context}을(를) 불러올 수 없습니다. 다시 시도하세요.',
			'errors.noClientAvailable' => '사용 가능한 클라이언트가 없습니다',
			'errors.pleaseEnterToken' => '토큰을 입력해 주세요',
			'errors.invalidToken' => '토큰이 유효하지 않습니다',
			'errors.failedToVerifyToken' => ({required Object error}) => '토큰을 확인할 수 없습니다: ${error}',
			'errors.failedToSwitchProfile' => ({required Object displayName}) => '${displayName}으로 전환할 수 없습니다',
			'errors.failedToDeleteProfile' => ({required Object displayName}) => '${displayName}을(를) 삭제할 수 없습니다',
			'errors.failedToRate' => '평점을 업데이트하지 못했습니다',
			'errors.reasonTimedOut' => '연결 시간이 초과되었습니다',
			'errors.reasonUnreachable' => '서버에 연결할 수 없습니다',
			'errors.reasonRefused' => '서버가 요청을 거부했습니다',
			'errors.reasonNotFound' => '항목이 더 이상 서버에 없습니다',
			'errors.reasonServerError' => '서버에서 오류가 보고되었습니다',
			'errors.reasonCancelled' => '요청이 취소되었습니다',
			'errors.reasonUnexpected' => '예기치 않은 오류가 발생했습니다',
			'libraries.title' => '미디어 라이브러리',
			'libraries.fallbackTitle' => '라이브러리',
			'libraries.scanLibraryFiles' => '미디어 라이브러리 파일 스캔',
			'libraries.scanLibrary' => '미디어 라이브러리 스캔',
			'libraries.analyze' => '분석',
			'libraries.analyzeLibrary' => '미디어 라이브러리 분석',
			'libraries.refreshMetadata' => '메타데이터 새로 고침',
			'libraries.emptyTrash' => '휴지통 비우기',
			'libraries.emptyingTrash' => ({required Object title}) => '「${title}」의 휴지통을 비우고 있습니다...',
			'libraries.trashEmptied' => ({required Object title}) => '「${title}」의 휴지통을 비웠습니다',
			'libraries.failedToEmptyTrash' => ({required Object error}) => '휴지통 비우기 실패: ${error}',
			'libraries.analyzing' => ({required Object title}) => '"${title}" 분석 중...',
			'libraries.analysisStarted' => ({required Object title}) => '"${title}" 분석 시작됨',
			'libraries.failedToAnalyze' => ({required Object error}) => '미디어 라이브러리 분석 실패: ${error}',
			'libraries.noLibrariesFound' => '미디어 라이브러리 없음',
			'libraries.allLibrariesHidden' => '모든 라이브러리가 숨겨졌습니다',
			'libraries.hiddenLibrariesCount' => ({required Object count}) => '숨겨진 라이브러리 (${count})',
			'libraries.thisLibraryIsEmpty' => '이 미디어 라이브러리는 비어 있습니다',
			'libraries.noItemsMatchFilters' => '활성화된 필터와 일치하는 항목이 없습니다',
			'libraries.resetFilters' => '필터 초기화',
			'libraries.all' => '전체',
			'libraries.clearAll' => '모두 삭제',
			'libraries.scanLibraryConfirm' => ({required Object title}) => '「${title}」을(를) 스캔하시겠습니까?',
			'libraries.analyzeLibraryConfirm' => ({required Object title}) => '「${title}」을(를) 분석하시겠습니까?',
			'libraries.refreshMetadataConfirm' => ({required Object title}) => '「${title}」의 메타데이터를 새로고침하시겠습니까?',
			'libraries.emptyTrashConfirm' => ({required Object title}) => '${title}의 휴지통을 비우시겠습니까?',
			'libraries.manageLibraries' => '미디어 라이브러리 관리',
			'libraries.sort' => '정렬',
			'libraries.sortBy' => '정렬 기준',
			'libraries.filters' => '필터',
			'libraries.confirmActionMessage' => '이 작업을 실행하시겠습니까?',
			'libraries.showLibrary' => '미디어 라이브러리 표시',
			'libraries.hideLibrary' => '미디어 라이브러리 숨기기',
			'libraries.libraryOptions' => '미디어 라이브러리 옵션',
			'libraries.content' => '미디어 라이브러리 콘텐츠',
			'libraries.selectLibrary' => '미디어 라이브러리 선택',
			'libraries.filtersWithCount' => ({required Object count}) => '필터 (${count})',
			'libraries.noRecommendations' => '추천 없음',
			'libraries.noCollections' => '이 미디어 라이브러리에는 컬렉션이 없습니다',
			'libraries.noFoldersFound' => '폴더를 찾을 수 없습니다',
			'libraries.folders' => '폴더',
			'libraries.tabs.recommended' => '추천',
			'libraries.tabs.browse' => '찾아보기',
			'libraries.tabs.collections' => '컬렉션',
			'libraries.tabs.playlists' => '재생 목록',
			'libraries.groupings.title' => '그룹',
			'libraries.groupings.all' => '전체',
			'libraries.groupings.movies' => '영화',
			'libraries.groupings.shows' => 'TV 프로그램',
			'libraries.groupings.seasons' => '시즌',
			'libraries.groupings.episodes' => '화',
			'libraries.groupings.artists' => '아티스트',
			'libraries.groupings.albums' => '앨범',
			'libraries.groupings.tracks' => '트랙',
			'libraries.groupings.folders' => '폴더',
			'libraries.filterCategories.genre' => '장르',
			'libraries.filterCategories.year' => '연도',
			'libraries.filterCategories.contentRating' => '시청 등급',
			'libraries.filterCategories.tag' => '태그',
			'libraries.filterCategories.unwatched' => '미시청',
			'libraries.filterCategories.unplayed' => '재생하지 않음',
			'libraries.filterCategories.favorites' => '즐겨찾기',
			'libraries.filterCategories.filePath' => '파일 경로',
			'libraries.sortLabels.title' => '제목',
			'libraries.sortLabels.dateAdded' => '추가된 날짜',
			'libraries.sortLabels.releaseDate' => '출시일',
			'libraries.sortLabels.rating' => '평점',
			'libraries.sortLabels.communityRating' => '커뮤니티 평점',
			'libraries.sortLabels.criticRating' => '평론가 평점',
			'libraries.sortLabels.userRating' => '사용자 평점',
			'libraries.sortLabels.datePlayed' => '재생일',
			'libraries.sortLabels.playCount' => '재생 횟수',
			'libraries.sortLabels.productionYear' => '제작 연도',
			'libraries.sortLabels.runtime' => '재생 시간',
			'libraries.sortLabels.officialRating' => '공식 등급',
			'libraries.sortLabels.premiereDate' => '최초 공개일',
			'libraries.sortLabels.startDate' => '시작일',
			'libraries.sortLabels.airTime' => '방영 시간',
			'libraries.sortLabels.studio' => '스튜디오',
			'libraries.sortLabels.random' => '무작위',
			'libraries.sortLabels.dateShared' => '공유된 날짜',
			'libraries.sortLabels.latestEpisodeAirDate' => '최신 에피소드 방영일',
			'libraries.sortLabels.lastEpisodeDateAdded' => '최신 에피소드 추가일',
			_ => null,
		} ?? switch (path) {
			'libraries.sortLabels.dateDownloaded' => '다운로드된 날짜',
			'libraries.sortLabels.size' => '크기',
			'libraries.sortLabels.library' => '라이브러리',
			'libraries.advancedFilters.include' => '포함',
			'libraries.advancedFilters.exclude' => '제외',
			'libraries.advancedFilters.any' => '모두',
			'libraries.advancedFilters.yes' => '예',
			'libraries.advancedFilters.no' => '아니요',
			'libraries.advancedFilters.not' => ({required Object value}) => '${value} 아님',
			'libraries.advancedFilters.valueCount' => ({required Object count}) => '${count} 선택됨',
			'libraries.advancedFilters.valueCountExcluded' => ({required Object count}) => '${count} 제외됨',
			'libraries.advancedFilters.searchValues' => '검색값',
			'libraries.advancedFilters.noValues' => '값 없음',
			'libraries.advancedFilters.matchContains' => '포함',
			'libraries.advancedFilters.matchNotContains' => '포함하지 않음',
			'libraries.advancedFilters.matchIs' => '이다',
			'libraries.advancedFilters.matchIsNot' => '아니다',
			'libraries.advancedFilters.matchBeginsWith' => '다음으로 시작',
			'libraries.advancedFilters.matchEndsWith' => '다음으로 끝남',
			'libraries.advancedFilters.textHint' => '일치하는 유형',
			'libraries.advancedFilters.from' => '에서',
			'libraries.advancedFilters.to' => '받는 사람',
			'libraries.advancedFilters.range' => ({required Object from, required Object to}) => '${from} ~ ${to}',
			'libraries.advancedFilters.atLeast' => ({required Object value}) => '${value} 이상',
			'libraries.advancedFilters.atMost' => ({required Object value}) => '최대 ${value}',
			'libraries.advancedFilters.dateLastDays' => ({required Object count}) => '지난 ${count}일',
			'libraries.advancedFilters.dateLastYear' => '작년',
			'libraries.advancedFilters.dateOlderThanDays' => ({required Object count}) => '${count}일보다 오래됨',
			'libraries.advancedFilters.dateOlderThanYear' => '1년 이상',
			'about.title' => '소개',
			'about.openSourceLicenses' => '오픈소스 라이선스',
			'about.versionLabel' => ({required Object version}) => '버전 ${version}',
			'about.appDescription' => 'Flutter로 만든 아름다운 Plex, Jellyfin 및 Emby 클라이언트',
			'about.customSource' => '소스 코드',
			'about.basedOnLuroka' => 'Plezy 코드베이스를 기반으로 구축',
			'about.viewLicensesDescription' => '타사 라이브러리 라이선스 보기',
			'about.appSection' => '앱',
			'about.communitySection' => '커뮤니티',
			'about.creditsSection' => '크레딧',
			'about.legalSection' => '법적',
			'about.versionMeta' => ({required Object version, required Object build, required Object platform}) => 'v${version} (${build}) · ${platform}',
			'about.versionMetaNoBuild' => ({required Object version, required Object platform}) => 'v${version} · ${platform}',
			'about.versionUnavailable' => '버전을 사용할 수 없음',
			'about.versionDetails' => '버전 세부정보',
			'about.versionDetailsTitle' => ({required Object version, required Object build}) => 'Luroka ${version} (${build})',
			'about.platformLine' => ({required Object platform}) => '플랫폼: ${platform}',
			'about.deviceLine' => ({required Object model}) => '장치: ${model}',
			'about.packageLine' => ({required Object package}) => '패키지: ${package}',
			'about.localeLine' => ({required Object locale}) => '언어: ${locale}',
			'about.copyDetails' => '세부정보 복사',
			'about.detailsCopied' => '앱 세부정보가 복사되었습니다.',
			'about.detailsCopyFailed' => '앱 세부정보를 복사할 수 없습니다.',
			'about.checkForUpdatesDescription' => '최신 릴리스는 GitHub를 확인하세요.',
			'about.checkingForUpdates' => '업데이트 확인 중…',
			'about.whatsNew' => '새로운 소식',
			'about.releaseNotesUnavailable' => '출시 노트가 없습니다.',
			'about.sourceCodeDescription' => 'GitHub의 Luroka',
			'about.reportIssue' => '문제 신고',
			'about.reportIssueDescription' => '무엇이 잘못되었는지 알려주세요.',
			'about.documentation' => '문서',
			'about.documentationDescription' => '설정, 기능 및 빌드 노트',
			'about.upstreamProjectDescription' => 'edde746 및 기여자의 오픈 소스 프로젝트',
			'about.upstreamWebsite' => '업스트림 웹사이트',
			'about.attribution' => '데이터 및 속성',
			'about.attributionDescription' => '메타데이터, 등급 및 상표',
			'about.attributionBody' => '이 제품은 TMDB API를 사용하지만 TMDB의 보증 또는 인증을 받지 않았습니다. 인기 목록, 메타데이터 및 IMDb 등급은 Cinemeta에서 제공됩니다. 점수는 소스 레이블을 유지합니다.',
			'about.trademarkNotices' => 'Plex, Jellyfin, Emby, Trakt, Simkl, MyAnimeList, AniList, TMDB 및 관련 상표는 해당 소유자의 상표입니다. Luroka는 이들과 제휴하거나 보증하지 않습니다.',
			'about.privacyPolicy' => '개인 정보 보호 정책',
			'about.privacyPolicyDescription' => '귀하의 데이터가 처리되는 방법',
			'about.gplLicense' => 'GNU GPL-3.0 라이센스',
			'about.gplLicenseDescription' => 'Luroka는 무료 소프트웨어입니다',
			'about.linkOpenFailed' => '이 링크를 열 수 없습니다.',
			'about.opensInBrowser' => '브라우저에서 열립니다',
			'about.footer' => 'Luroka는 GPL-3.0에 따른 무료 소프트웨어입니다.',
			'about.copyright' => ({required Object year}) => '© ${year} Luroka 기여자',
			'serverSelection.noServersFoundForAccount' => ({required Object username, required Object email}) => '${username} (${email})의 서버를 찾을 수 없습니다.',
			'serverSelection.failedToLoadServers' => ({required Object error}) => '서버를 로드할 수 없습니다: ${error}',
			'serverSelection.noValidServers' => '이 계정에서 사용할 수 있는 서버를 찾지 못했습니다',
			'hubDetail.title' => '제목',
			'hubDetail.releaseYear' => '출시 연도',
			'hubDetail.dateAdded' => '추가 날짜',
			'hubDetail.rating' => '평점',
			'hubDetail.noItemsFound' => '항목이 없습니다',
			'logs.clearLogs' => '로그 지우기',
			'logs.copyLogs' => '로그 복사',
			'logs.uploadLogs' => '로그 업로드',
			'startup.failedTitle' => 'Luroka를 시작하지 못했습니다',
			'startup.failedBody' => '시작 중 문제가 발생했습니다. 아래 세부 정보에서 실패 원인을 확인할 수 있습니다.',
			'startup.failedBodyRepairable' => 'Luroka의 저장된 설정 파일이 손상되어 Luroka를 시작하려면 먼저 파일을 다시 만들어야 합니다. 재시도해도 해결되지 않습니다 — 저장소 복구를 선택하세요.',
			'startup.phaseLabel' => '단계',
			'startup.showDetails' => '세부 정보 표시',
			'startup.hideDetails' => '세부 정보 숨기기',
			'startup.copyDetails' => '세부 정보 복사',
			'startup.detailsCopied' => '세부 정보가 클립보드에 복사되었습니다',
			'startup.uploadDetails' => '세부 정보 업로드',
			'startup.repairStorage' => '저장소 복구',
			'startup.repairTitle' => '저장된 데이터를 복구할까요?',
			'startup.repairBodyCommon' => 'Luroka의 설정 파일이 손상되어 읽을 수 없습니다. 복구하면 모든 설정이 기본값으로 재설정됩니다.',
			'startup.repairBodyOneCredential' => '저장된 로그인 정보 하나가 손상되어 읽을 수 없습니다. 복구하면 해당 로그인 정보만 제거되며 다른 설정은 그대로 유지됩니다.',
			'startup.repairBodySignInsKept' => '서버와 프로필은 로그인 상태가 유지됩니다.',
			'startup.repairBodySignInsLost' => '저장된 로그인 정보를 보호하는 키를 이 파일에서 복구할 수 없어 모든 서버와 프로필에 다시 로그인해야 합니다. 미디어 서버의 데이터에는 영향이 없습니다.',
			'startup.repairBodySessionsUncertain' => '트래커(MAL, AniList, Simkl, Trakt)와 Seerr는 별도로 저장되며 유지 여부가 확실하지 않습니다. Luroka가 유지된 항목을 정확히 알려줄 것입니다.',
			'startup.repairConfirm' => '복구',
			'startup.repairSucceeded' => '저장소가 복구되었습니다',
			'startup.repairNeedsRestart' => '저장소가 복구되었습니다 — 재시작 필요',
			'startup.restartRequiredBody' => '데이터가 복구되었지만 Luroka는 이를 사용하려면 새로 시작해야 합니다. Luroka를 종료한 후 다시 열어주세요.',
			'startup.quitLuroka' => 'Luroka 종료',
			'startup.repairFailed' => '복구 실패',
			'startup.repairKeptSignIns' => '서버와 프로필이 계속 로그인 상태입니다.',
			'startup.repairLostSignIns' => '저장된 로그인 정보를 보호하는 키를 복구할 수 없었습니다. 모든 서버와 프로필에 다시 로그인해야 합니다.',
			'startup.repairLostSessions' => '트래커 또는 Seerr 연결이 하나 이상 끊어져 다시 연결해야 합니다.',
			'startup.backupTitle' => '손상된 파일의 복사본이 보관되었습니다',
			'startup.backupWarning' => '로그인 자격 증명이 포함되어 있습니다. 업로드하거나 공유하지 마세요.',
			'startup.deleteBackup' => '복사본 삭제',
			'startup.backupDeleted' => '복사본이 삭제되었습니다.',
			'startup.previousFailureTitle' => '지난번에 Luroka를 시작하지 못했습니다',
			'licenses.relatedPackages' => '관련 소프트웨어 패키지',
			'licenses.license' => '라이선스',
			'licenses.licenseNumber' => ({required Object number}) => '라이선스 ${number}',
			'licenses.licensesCount' => ({required Object count}) => '${count}개의 라이선스',
			'licenses.searchHint' => '패키지 검색',
			'licenses.noResults' => ({required Object query}) => '"${query}"와 일치하는 패키지가 없습니다.',
			'licenses.clearSearch' => '검색 지우기',
			'navigation.libraries' => '미디어 라이브러리',
			'navigation.downloads' => '다운로드',
			'navigation.liveTv' => '실시간 TV',
			'navigation.explore' => '탐색',
			'explore.title' => '탐색',
			'explore.selectSource' => '소스 선택',
			'explore.rows.watchlist' => '관심 목록',
			'explore.rows.recommendedMovies' => '추천 영화',
			'explore.rows.recommendedShows' => '추천 TV 프로그램',
			'explore.rows.trendingMovies' => '지금 뜨는 영화',
			'explore.rows.trendingShows' => '지금 뜨는 TV 프로그램',
			'explore.rows.popularMovies' => '인기 영화',
			'explore.rows.popularShows' => '인기 TV 프로그램',
			'explore.rows.trendingAnime' => '지금 뜨는 애니메이션',
			'explore.rows.suggestedAnime' => '추천 애니메이션',
			'explore.rows.airingAnime' => '방영 중인 인기 애니메이션',
			'explore.rows.popularAnime' => '가장 인기 있는 애니메이션',
			'explore.rows.trending' => '지금 뜨는 콘텐츠',
			'explore.rows.upcomingMovies' => '개봉 예정 영화',
			'explore.rows.upcomingShows' => '방영 예정 TV 프로그램',
			'explore.status.airing' => '방영 중',
			'explore.status.ended' => '종영',
			'explore.status.canceled' => '취소됨',
			'explore.status.upcoming' => '방영 예정',
			'explore.episodeCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n, one: '${n} 에피소드', other: '${n}화', ),
			'explore.cast' => '출연진',
			'explore.characters' => '캐릭터',
			'explore.addToWatchlist' => '관심 목록에 추가',
			'explore.removeFromWatchlist' => '관심 목록에서 제거',
			'explore.addedToWatchlist' => '관심 목록에 추가했습니다',
			'explore.removedFromWatchlist' => '관심 목록에서 삭제했습니다',
			'explore.watchlistUpdateFailed' => '관심 목록을 업데이트하지 못했습니다',
			'explore.watchlistNoMatch' => '이 항목을 관심 목록과 연결할 수 없습니다',
			'explore.notInLibrary' => '라이브러리에 없음',
			'explore.inTheseLibraries' => '이 라이브러리에 있음',
			'explore.checkingLibrary' => '라이브러리 확인 중...',
			'explore.libraryCheckFailed' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n, one: '${n} 서버를 확인할 수 없습니다.', other: '서버 ${n}개를 확인할 수 없습니다', ),
			'explore.emptyTitle' => '아직 아무것도 없습니다',
			'explore.emptyMessage' => ({required Object source}) => '${source}에 콘텐츠가 추가되면 여기에 표시됩니다.',
			'explore.searchHint' => ({required Object source}) => '${source}에서 검색',
			'explore.searchEmpty' => ({required Object query}) => '「${query}」에 대한 결과가 없습니다',
			'explore.searchPrompt' => ({required Object source}) => '${source}에서 영화와 TV 프로그램을 검색하세요.',
			'explore.searchFailed' => '검색에 실패했습니다. 연결을 확인하고 다시 시도하세요.',
			'explore.badge.rankPopular' => ({required Object n}) => '#${n} 인기',
			'explore.badge.rankAiring' => ({required Object n}) => '#${n} 방영 중',
			'explore.badge.rankRated' => ({required Object n}) => '#${n} 평가',
			'explore.badge.rankTrending' => ({required Object n}) => '#${n} 트렌드',
			'explore.badge.rankSeasonal' => ({required Object n, required Object season}) => '#${n} ${season}',
			'explore.badge.watchingNow' => ({required Object n}) => '${n}명 시청 중',
			'explore.badge.available' => '이용 가능',
			'explore.badge.partiallyAvailable' => '부분 이용 가능',
			'explore.badge.availableIn4k' => '4K 이용 가능',
			'explore.badge.requested' => '요청됨',
			'explore.badge.pendingApproval' => '승인 대기 중',
			'explore.badge.processing' => '처리 중',
			'explore.badge.declined' => '거절됨',
			'explore.badge.requestFailed' => '요청 실패',
			'explore.badge.requested4k' => '4K 요청됨',
			'explore.badge.seasonsAvailable' => ({required Object available, required Object total}) => '시즌 ${available}/${total}',
			'explore.badge.nextEpisodeIn' => ({required Object episode, required Object duration}) => '${episode}화 · ${duration} 후',
			'explore.badge.nextAiringIn' => ({required Object duration}) => '${duration} 후 다음 화',
			'explore.badge.episodesShort' => ({required Object n}) => '${n}화',
			'explore.badge.minutesPerEpisode' => ({required Object n}) => '${n}분/화',
			'explore.badge.adult' => '18+',
			'explore.stats.listed' => ({required Object n}) => '${n}명 등록',
			'explore.stats.viewersDay' => ({required Object n}) => '오늘 ${n}명 시청',
			'explore.stats.viewersWeek' => ({required Object n}) => '이번 주 ${n}명 시청',
			'explore.stats.viewersMonth' => ({required Object n}) => '이번 달 ${n}명 시청',
			'explore.stats.viewersYear' => ({required Object n}) => '올해 ${n}명 시청',
			'explore.stats.viewersAllTime' => ({required Object n}) => '시청자 ${n}명',
			'explore.stats.planning' => ({required Object n}) => '${n}명 볼 예정',
			'explore.stats.favorited' => ({required Object n}) => '즐겨찾기 ${n}명',
			'explore.stats.dropRate' => ({required Object percent}) => '${percent} 하차',
			'explore.stats.comments' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n, one: '${n} 댓글', other: '댓글 ${n}개', ),
			'explore.stats.votes' => ({required Object n}) => '투표 ${n}개',
			'explore.stats.watching' => ({required Object n}) => '시청 중 ${n}명',
			'explore.stats.completed' => ({required Object n}) => '완료 ${n}명',
			'explore.stats.onHold' => ({required Object n}) => '보류 ${n}명',
			'explore.stats.dropped' => ({required Object n}) => '하차 ${n}명',
			'explore.season.winter' => '겨울',
			'explore.season.spring' => '봄',
			'explore.season.summer' => '여름',
			'explore.season.fall' => '가을',
			'explore.season.withYear' => ({required Object season, required Object year}) => '${season} ${year}년',
			'explore.format.tv' => 'TV',
			'explore.format.tvShort' => 'TV 단편',
			'explore.format.movie' => '영화',
			'explore.format.special' => '스페셜',
			'explore.format.ova' => 'OVA',
			'explore.format.ona' => 'ONA',
			'explore.format.music' => '음악',
			'explore.format.other' => '기타',
			'explore.sourceMaterial.original' => '오리지널',
			'explore.sourceMaterial.manga' => '만화',
			'explore.sourceMaterial.lightNovel' => '라이트 노벨',
			'explore.sourceMaterial.novel' => '소설',
			'explore.sourceMaterial.visualNovel' => '비주얼 노벨',
			'explore.sourceMaterial.game' => '게임',
			'explore.sourceMaterial.webComic' => '웹툰',
			'explore.sourceMaterial.musicRelease' => '음악',
			'explore.sourceMaterial.otherMedia' => '기타',
			'explore.creditRole.actor' => '배우',
			'explore.creditRole.director' => '감독',
			'explore.creditRole.writer' => '각본',
			'explore.creditRole.producer' => '프로듀서',
			'explore.creditRole.creator' => '제작자',
			'explore.creditRole.composer' => '작곡',
			'explore.relation.prequel' => '프리퀄',
			'explore.relation.sequel' => '시퀄',
			'explore.relation.sideStory' => '사이드 스토리',
			'explore.relation.spinOff' => '스핀오프',
			'explore.relation.alternativeVersion' => '대체 버전',
			'explore.relation.summary' => '요약',
			'explore.relation.parentStory' => '원작',
			'explore.relation.adaptation' => '각색',
			'explore.relation.other' => '관련',
			'explore.broadcast' => ({required Object day, required Object time}) => '${day} ${time} 방영',
			'explore.broadcastWithZone' => ({required Object day, required Object time, required Object timezone}) => '${day} ${time} ${timezone} 방영',
			'explore.detail.originalTitle' => '원제',
			'explore.detail.alsoKnownAs' => '다른 이름',
			'explore.detail.studios' => '스튜디오',
			'explore.detail.country' => '국가',
			'explore.detail.language' => '언어',
			'explore.detail.released' => '출시일',
			'explore.detail.physicalRelease' => '디스크 출시',
			'explore.detail.ended' => '종영',
			'explore.detail.addedOn' => ({required Object date}) => '${date}에 추가됨',
			'explore.detail.yourRating' => '내 평점',
			'explore.detail.budget' => '제작비',
			'explore.detail.revenue' => '흥행 수익',
			'explore.detail.contentAdvisory' => '연령 등급',
			'explore.detail.tags' => '태그',
			'explore.detail.revealSpoilerTags' => '스포일러 태그 표시',
			'explore.detail.links' => '링크',
			'explore.detail.watchOn' => '시청처',
			'explore.detail.watchTrailer' => '예고편 보기',
			'explore.detail.openOn' => ({required Object site}) => '${site}에서 열기',
			'explore.detail.crew' => '제작진',
			'explore.detail.ratings' => '평점',
			'explore.detail.schedule' => '방영 일정',
			'explore.detail.recommendedByUsers' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n, one: '${n} 사용자가 추천함', other: '사용자 ${n}명이 추천', ),
			'explore.detail.recommendedBy' => ({required Object who}) => '${who} 추천',
			'explore.detail.favoritedBy' => ({required Object who}) => '${who} 즐겨찾기',
			'explore.detail.unairedEpisodes' => ({required Object n}) => '미방영 ${n}개',
			'explore.detail.recommendedByPercent' => ({required Object percent}) => '시청자의 ${percent} 추천',
			'explore.detail.relatedTitles' => '관련 작품',
			'explore.detail.background' => '배경',
			'explore.totalResults' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n, one: '${n} 결과', other: '결과 ${n}개', ),
			'liveTv.title' => '실시간 TV',
			'liveTv.guide' => '편성표',
			'liveTv.noChannels' => '사용 가능한 채널이 없습니다',
			'liveTv.noDvr' => '서버에 DVR이 구성되어 있지 않습니다',
			'liveTv.serverUnavailable' => '라이브 TV 서버를 사용할 수 없습니다.',
			'liveTv.serverNotConnected' => '라이브 TV 서버에 연결되어 있지 않습니다.',
			'liveTv.noPrograms' => '프로그램 데이터가 없습니다',
			'liveTv.liveStreamFailed' => '라이브 스트림 실패',
			'liveTv.unknownProgram' => '알 수 없는 프로그램',
			'liveTv.unknownHub' => '알 수 없음',
			'liveTv.unknownError' => '알 수 없는 오류',
			'liveTv.channelNumber' => ({required Object number}) => '채널 ${number}',
			'liveTv.unknownChannel' => '알 수 없는 채널',
			'liveTv.live' => '실시간',
			'liveTv.reloadGuide' => '편성표 새로고침',
			'liveTv.searchGuide' => '편성표 검색',
			'liveTv.searchHint' => '채널 및 프로그램 검색',
			'liveTv.searchNoResults' => ({required Object query}) => '「${query}」와(과) 일치하는 항목이 없습니다',
			'liveTv.channelsSection' => '채널',
			'liveTv.programsSection' => '프로그램',
			'liveTv.now' => '지금',
			'liveTv.today' => '오늘',
			'liveTv.tomorrow' => '내일',
			'liveTv.midnight' => '자정',
			'liveTv.overnight' => '심야',
			'liveTv.morning' => '아침',
			'liveTv.daytime' => '낮',
			'liveTv.evening' => '저녁',
			'liveTv.lateNight' => '심야 방송',
			'liveTv.whatsOn' => '지금 방송 중',
			'liveTv.watchChannel' => '채널 시청',
			'liveTv.favorites' => '즐겨찾기',
			'liveTv.reorderFavorites' => '즐겨찾기 순서 변경',
			'liveTv.noFavoriteChannels' => '즐겨찾기 채널 없음',
			'liveTv.noFavoriteChannelsHint' => '모든 채널을 표시한 다음 채널을 길게 눌러 즐겨찾기에 추가하세요.',
			'liveTv.showAllChannels' => '모든 채널 표시',
			'liveTv.favoritesLoadFailed' => '즐겨찾기를 불러올 수 없습니다. 연결을 확인하고 다시 시도하세요.',
			'liveTv.favoritesUpdateFailed' => '즐겨찾기를 업데이트할 수 없습니다. 연결을 확인하고 다시 시도하세요.',
			'liveTv.joinSession' => '진행 중인 세션 참여',
			'liveTv.watchFromStart' => ({required Object minutes}) => '처음부터 시청 (${minutes}분 전 시작)',
			'liveTv.watchLive' => '실시간 시청',
			'liveTv.goToLive' => '실시간으로 이동',
			'liveTv.record' => '녹화',
			'liveTv.recordEpisode' => '에피소드 녹화',
			'liveTv.recordSeries' => '시리즈 녹화',
			'liveTv.recordOptions' => '녹화 옵션',
			'liveTv.saveTo' => '저장 위치',
			'liveTv.recordings' => '녹화',
			'liveTv.scheduledRecordings' => '예약됨',
			'liveTv.recordingRules' => '녹화 규칙',
			'liveTv.noScheduledRecordings' => '예약된 녹화 없음',
			'liveTv.manageRecording' => '녹화 관리',
			'liveTv.cancelRecording' => '녹화 취소',
			'liveTv.cancelRecordingTitle' => '이 녹화를 취소할까요?',
			'liveTv.cancelRecordingMessage' => ({required Object title}) => '${title}이(가) 더 이상 녹화되지 않습니다.',
			'liveTv.deleteRule' => '규칙 삭제',
			'liveTv.deleteRuleTitle' => '녹화 규칙을 삭제할까요?',
			'liveTv.deleteRuleMessage' => ({required Object title}) => '${title}의 향후 에피소드는 녹화되지 않습니다.',
			'liveTv.recordingScheduled' => '녹화 예약됨',
			'liveTv.alreadyScheduled' => '이 프로그램은 이미 예약되어 있습니다',
			'liveTv.dvrAdminRequired' => 'DVR 설정은 관리자 계정이 필요합니다',
			'liveTv.recordingFailed' => '녹화를 예약할 수 없습니다',
			'liveTv.recordingTargetMissing' => '녹화 라이브러리를 확인할 수 없습니다',
			'liveTv.recordNotAvailable' => '이 프로그램은 녹화할 수 없습니다',
			'liveTv.recordingCancelled' => '녹화 취소됨',
			'liveTv.recordingRuleDeleted' => '녹화 규칙 삭제됨',
			'liveTv.processRecordingRules' => '규칙 재평가',
			'liveTv.recordingInProgress' => '녹화 중',
			'liveTv.recordingsCount' => ({required Object count}) => '${count}개 예약됨',
			'liveTv.editRule' => '규칙 편집',
			'liveTv.editRuleAction' => '편집',
			'liveTv.recordingRuleUpdated' => '녹화 규칙 업데이트됨',
			'liveTv.guideReloadRequested' => '가이드 새로고침 요청됨',
			'liveTv.guideReloadFailed' => '편성표를 새로고침할 수 없습니다',
			'liveTv.rulesProcessRequested' => '규칙 재평가 요청됨',
			'liveTv.rulesProcessFailed' => '녹화 규칙을 다시 적용할 수 없습니다',
			'liveTv.recordShow' => '프로그램 녹화',
			'liveTv.recordSettings.startEarly' => '일찍 시작 (초)',
			'liveTv.recordSettings.endLate' => '늦게 종료 (초)',
			'liveTv.recordSettings.newOnly' => '새 에피소드만',
			'liveTv.recordSettings.anyChannel' => '모든 채널에서 녹화',
			'liveTv.recordSettings.anyTime' => '모든 시간대에 녹화',
			'liveTv.recordSettings.skipInLibrary' => '라이브러리에 이미 있는 에피소드 건너뛰기',
			'liveTv.recordSettings.keepUpTo' => '보관할 에피소드 수',
			'liveTv.recordSettings.keepUpToHint' => '0이면 모든 에피소드 보관',
			'liveTv.startingInMinutes' => ({required Object minutes}) => '${minutes}분 후 시작',
			'liveTv.dayAtTime' => ({required Object day, required Object time}) => '${day} ${time}',
			'liveTv.invalidPlaybackData' => ({required Object product}) => '${product}에서 잘못된 실시간 TV 재생 데이터를 반환했습니다',
			'liveTv.failedToStartChannel' => '실시간 채널을 시작할 수 없습니다',
			'liveTv.failedToBuildStreamUrl' => '스트림 URL을 생성할 수 없습니다',
			'liveTv.playbackStartFailed' => ({required Object reason}) => '채널을 시작하지 못했습니다: ${reason}',
			'liveTv.channelSwitchFailed' => ({required Object reason}) => '채널을 전환하지 못했습니다: ${reason}',
			'collections.title' => '컬렉션',
			'collections.collection' => '컬렉션',
			'collections.empty' => '컬렉션이 비어 있습니다',
			'collections.deleteCollection' => '컬렉션 삭제',
			'collections.deleteConfirm' => ({required Object title}) => '"${title}"을(를) 삭제할까요? 되돌릴 수 없습니다.',
			'collections.deleted' => '컬렉션 삭제됨',
			'collections.deleteFailed' => '컬렉션 삭제 실패',
			'collections.deleteFailedWithError' => ({required Object error}) => '컬렉션 삭제 실패: ${error}',
			'collections.selectCollection' => '컬렉션 선택',
			'collections.collectionName' => '컬렉션 이름',
			'collections.enterCollectionName' => '컬렉션 이름 입력',
			'collections.addedToCollection' => '컬렉션에 추가됨',
			'collections.errorAddingToCollection' => '컬렉션에 추가 실패',
			'collections.created' => '컬렉션 생성됨',
			'collections.removeFromCollection' => '컬렉션에서 제거',
			'collections.removeFromCollectionConfirm' => ({required Object title}) => '${title}을(를) 이 컬렉션에서 제거하시겠습니까?',
			'collections.removedFromCollection' => '컬렉션에서 제거됨',
			'collections.removeFromCollectionFailed' => '컬렉션에서 제거 실패',
			'collections.removeFromCollectionError' => ({required Object error}) => '컬렉션에서 제거 중 오류 발생: ${error}',
			'collections.searchCollections' => '컬렉션 검색...',
			'playlists.title' => '플레이리스트',
			'playlists.playlist' => '재생 목록',
			'playlists.noPlaylists' => '재생 목록을 찾을 수 없습니다',
			'playlists.create' => '재생 목록 생성',
			'playlists.playlistName' => '재생 목록 이름',
			'playlists.enterPlaylistName' => '재생 목록 이름 입력',
			'playlists.delete' => '재생 목록 삭제',
			'playlists.removeItem' => '재생 목록에서 항목 제거',
			'playlists.smartPlaylist' => '스마트 재생 목록',
			'playlists.itemCount' => ({required Object count}) => '${count}개 항목',
			'playlists.oneItem' => '1개 항목',
			'playlists.emptyPlaylist' => '이 재생 목록은 비어 있습니다',
			'playlists.deleteConfirm' => '재생 목록을 삭제하시겠습니까?',
			'playlists.deleteMessage' => ({required Object name}) => '"${name}"을(를) 삭제하시겠습니까?',
			'playlists.created' => '재생 목록이 생성되었습니다',
			'playlists.deleted' => '재생 목록이 삭제되었습니다',
			'playlists.itemAdded' => '재생 목록에 추가되었습니다',
			'playlists.itemRemoved' => '재생 목록에서 제거됨',
			'playlists.selectPlaylist' => '재생 목록 선택',
			'playlists.searchPlaylists' => '재생 목록 검색...',
			'playlists.errorCreating' => '재생 목록 생성 실패',
			'playlists.errorDeleting' => '재생 목록 삭제 실패',
			'playlists.errorLoading' => '재생 목록 로드 실패',
			'playlists.errorAdding' => '재생 목록에 추가 실패',
			'playlists.errorReordering' => '재생 목록 항목 재정렬 실패',
			'playlists.errorRemoving' => '재생 목록에서 제거 실패',
			'music.goToAlbum' => '앨범으로 이동',
			'music.goToArtist' => '아티스트로 이동',
			'music.instantMix' => '인스턴트 믹스',
			'music.playNext' => '다음에 재생',
			'music.addToQueue' => '대기열에 추가',
			'music.discNumber' => ({required Object n}) => '디스크 ${n}',
			'music.trackCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n, one: '${n} 트랙', other: '${n}곡', ),
			'music.nowPlaying' => '재생 중',
			'music.playingFrom' => ({required Object title}) => '${title}에서 재생 중',
			'music.queue' => '재생 대기열',
			'music.clearQueue' => '대기열 비우기',
			'music.lyrics' => '가사',
			'music.noLyrics' => '가사 없음',
			'music.sleepTimer' => '취침 타이머',
			'music.sleepTimerEndOfTrack' => '곡 종료 시',
			'music.sleepTimerMinutes' => ({required Object n}) => '${n}분',
			'music.stopPlayback' => '재생 중지',
			'music.previousTrack' => '이전 곡',
			'music.nextTrack' => '다음 곡',
			'music.repeat' => '반복',
			'music.repeatAll' => '전체 반복',
			'music.repeatOne' => '한 곡 반복',
			'music.instantMixNoServer' => '즉석 믹스에 사용할 수 있는 서버가 없습니다',
			'music.instantMixFailed' => '인스턴트 믹스를 불러오지 못했습니다',
			'music.instantMixEmpty' => '인스턴트 믹스에 트랙이 없습니다',
			'music.noAudioUrl' => ({required Object track}) => '${track}에 사용할 수 있는 오디오 URL이 없습니다',
			'music.discography.singlesAndEps' => '싱글 및 EP',
			'music.discography.live' => '라이브',
			'music.discography.compilations' => '컴필레이션',
			'watchTogether.title' => '함께 보기',
			'watchTogether.description' => '친구 및 가족과 콘텐츠를 동시에 시청하세요',
			'watchTogether.createRoom' => '방 만들기',
			'watchTogether.creatingRoom' => '방을 만드는 중...',
			'watchTogether.joinRoom' => '룸 참여',
			'watchTogether.joiningRoom' => '방에 참여하는 중...',
			'watchTogether.connecting' => '연결 중...',
			'watchTogether.relayPublic' => '객실은 공개 공개 Watch Party 릴레이를 사용합니다.',
			'watchTogether.relayCustom' => ({required Object url}) => '객실은 ${url}에서 릴레이를 사용합니다.',
			'watchTogether.recentRooms' => '최근 참여한 방',
			'watchTogether.roomActions' => '룸 액션',
			'watchTogether.renameRoom' => '방 이름 변경',
			'watchTogether.removeRoom' => '제거',
			'watchTogether.enterRoomCode' => '호스트의 6자리 코드를 입력하세요.',
			'watchTogether.roomCode' => '객실 코드',
			'watchTogether.paste' => '붙여넣기',
			'watchTogether.noCodeInClipboard' => '클립보드에 객실 코드가 없습니다',
			'watchTogether.copyCode' => '코드 복사',
			'watchTogether.codeCopied' => '객실 코드가 복사되었습니다.',
			'watchTogether.shareInvite' => '공유 초대',
			'watchTogether.qrShare' => 'QR 코드 공유',
			'watchTogether.qrHint' => '이 방에 참여하려면 Luroka 앱으로 스캔하세요.',
			'watchTogether.phasePlaying' => '재생',
			'watchTogether.phasePaused' => '일시중지됨',
			'watchTogether.phaseWaiting' => '모두를 기다리고 있어요',
			'watchTogether.inviteCopied' => '초대가 복사되었습니다. 메시지에 붙여넣으세요.',
			'watchTogether.inviteMessage' => ({required Object code}) => 'Luroka에서 함께 시청하기 방에 참여하세요: luroka://watch?code=${code} — 또는 함께 시청하기를 열고 ${code}를 입력하세요.',
			'watchTogether.openSessionControls' => '함께 보기 세션 제어 열기',
			'watchTogether.reconnecting' => '다시 연결하는 중...',
			'watchTogether.reconnectingDescription' => '연결이 끊어졌습니다. 자동으로 방에 다시 참여하게 됩니다.',
			'watchTogether.connected' => '연결됨',
			'watchTogether.disconnected' => '연결이 끊김',
			'watchTogether.youAreHost' => '호스트입니다',
			'watchTogether.hostedBy' => ({required Object name}) => '${name}가 호스팅함',
			'watchTogether.hostControlsPlayback' => '호스트 재생 제어',
			'watchTogether.anyoneCanControl' => '누구나 재생 제어 가능',
			'watchTogether.roomLocked' => '방이 잠겨 있음',
			'watchTogether.nowPlaying' => '지금 재생 중',
			'watchTogether.nothingPlaying' => '재생 중인 항목 없음',
			'watchTogether.nothingPlayingHost' => '라이브러리의 콘텐츠를 재생하여 방과 공유하세요.',
			'watchTogether.nothingPlayingGuest' => '호스트가 무언가를 재생하면 여기에서 열립니다.',
			'watchTogether.notShareable' => '이 동영상에는 일치하는 카탈로그가 없으므로 동일한 서버에 액세스할 수 있는 사람만 재생할 수 있습니다.',
			'watchTogether.searching' => '라이브러리에서 이 비디오를 찾고 있습니다...',
			'watchTogether.yourCopy' => '귀하의 사본',
			'watchTogether.sharingYourCopy' => '사본을 공유하고 있습니다.',
			'watchTogether.playingOtherLength' => ({required Object difference}) => '복사본을 재생하세요, ${difference}',
			'watchTogether.mismatchTitle' => '사본의 길이가 다릅니다',
			'watchTogether.mismatchDescription' => ({required Object difference}) => '방의 영상보다 가장 가까운 사본은 ${difference}입니다. 다른 컷이나 버전일 수도 있습니다.',
			'watchTogether.playAnyway' => '어쨌든 플레이',
			'watchTogether.chooseAnotherCopy' => '다른 사본 선택',
			'watchTogether.dontPlay' => '놀지 마세요',
			'watchTogether.unavailableTitle' => '이 동영상이 없습니다.',
			'watchTogether.unavailableDescription' => 'Luroka가 라이브러리에서 찾을 수 없습니다. 사본을 직접 선택하거나 다시 검색하세요.',
			'watchTogether.chooseCopy' => '사본을 선택하세요',
			'watchTogether.searchAgain' => '다시 검색',
			'watchTogether.noCandidates' => '라이브러리에 사본이 없습니다.',
			'watchTogether.choiceFailed' => '이 사본을 회의실에서 재생할 수 없습니다.',
			'watchTogether.lengthLonger' => ({required Object duration}) => '${duration} 더 길어짐',
			'watchTogether.lengthShorter' => ({required Object duration}) => '${duration} 더 짧음',
			'watchTogether.lengthSame' => '같은 길이',
			'watchTogether.lengthUnknown' => '길이를 알 수 없음',
			'watchTogether.joinCurrentPlayback' => '현재 재생 참여',
			'watchTogether.joinCurrentPlaybackDescription' => '호스트가 현재 시청 중인 콘텐츠로 이동합니다',
			'watchTogether.stopMedia' => '모두를 위한 비디오 중지',
			'watchTogether.syncOffset' => '동기화 오프셋',
			'watchTogether.syncOffsetDescription' => '비디오가 방 앞이나 뒤에서 실행되는 경우 비디오를 이동하십시오.',
			'watchTogether.offsetHint' => ({required Object difference}) => '귀하의 사본은 방의 비디오보다 ${difference}입니다.',
			'watchTogether.applyDifference' => ({required Object offset}) => '${offset} 사용',
			'watchTogether.offsetMinusSecond' => '-1초',
			'watchTogether.offsetMinusTenth' => '-100ms',
			'watchTogether.offsetPlusTenth' => '+100ms',
			'watchTogether.offsetPlusSecond' => '+1초',
			'watchTogether.participants' => '참가자',
			'watchTogether.participantCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n, one: '${n} 참가자', other: '${n} 참가자', ),
			_ => null,
		} ?? switch (path) {
			'watchTogether.hostBadge' => '호스트',
			'watchTogether.nameYou' => ({required Object name}) => '${name} (당신)',
			'watchTogether.playerIdle' => '유휴',
			'watchTogether.playerLoading' => '로드 중',
			'watchTogether.playerReady' => '준비',
			'watchTogether.playerBuffering' => '버퍼링',
			'watchTogether.matchSearching' => '검색 중',
			'watchTogether.matchMatched' => '영상 있음',
			'watchTogether.matchMismatched' => '다른 길이',
			'watchTogether.matchUnavailable' => '영상이 없어요',
			'watchTogether.participantOffset' => ({required Object offset}) => '오프셋 ${offset}',
			'watchTogether.makeHost' => '호스트로 지정',
			'watchTogether.makeHostQuestion' => '호스트를 이전하시겠습니까?',
			'watchTogether.makeHostConfirm' => ({required Object name}) => '${name}님이 재생을 제어하고 모든 참가자의 세션을 이끕니다.',
			'watchTogether.transfer' => '이전',
			'watchTogether.removeParticipant' => '회의실에서 삭제',
			'watchTogether.removeParticipantQuestion' => ({required Object name}) => '${name}를 제거하시겠습니까?',
			'watchTogether.removeParticipantConfirm' => ({required Object name}) => '${name}가 방을 나갑니다. 방을 잠그지 않는 한 코드를 사용하여 다시 참여할 수 있습니다.',
			'watchTogether.remove' => '제거',
			'watchTogether.roomSettings' => '객실 설정',
			'watchTogether.letEveryoneControl' => '모든 사람이 재생을 제어하도록 허용',
			'watchTogether.lockRoom' => '락룸',
			'watchTogether.lockRoomDescription' => '새로 가입할 수 없습니다.',
			'watchTogether.leaveRoom' => '방에서 나가기',
			'watchTogether.leaveRoomQuestion' => '회의실에서 나가시겠습니까?',
			'watchTogether.leaveRoomConfirm' => '룸코드로 다시 참여하실 수 있습니다.',
			'watchTogether.leave' => '나가기',
			'watchTogether.endRoom' => '엔드룸',
			'watchTogether.endRoomQuestion' => '엔드룸?',
			'watchTogether.endRoomConfirm' => '이것으로 모든 사람을 위한 방이 종료됩니다.',
			'watchTogether.end' => '종료',
			'watchTogether.playBlockedTitle' => '재생이 시작되지 않았습니다',
			'watchTogether.playBlockedDescription' => '재생을 눌러 방에서 시청을 시작하세요.',
			'watchTogether.notices.pressedPlay' => ({required Object name}) => '${name} 누름 재생',
			'watchTogether.notices.playbackStarted' => '재생이 시작되었습니다.',
			'watchTogether.notices.paused' => ({required Object name}) => '${name}님이 일시정지했습니다',
			'watchTogether.notices.playbackPaused' => '재생이 일시중지되었습니다.',
			'watchTogether.notices.jumpedTo' => ({required Object name, required Object position}) => '${name}가 ${position}로 점프했습니다.',
			'watchTogether.notices.roomJumpedTo' => ({required Object position}) => '${position}로 점프했습니다.',
			'watchTogether.notices.changedSpeed' => ({required Object name, required Object speed}) => '${name}님이 속도를 ${speed}(으)로 설정했습니다',
			'watchTogether.notices.speedChanged' => ({required Object speed}) => '${speed}로 설정된 속도',
			'watchTogether.notices.startedMedia' => ({required Object name, required Object title}) => '${name}가 ${title}를 시작했습니다.',
			'watchTogether.notices.mediaStarted' => ({required Object title}) => '지금 ${title}를 플레이하고 있습니다',
			'watchTogether.notices.stoppedMedia' => ({required Object name}) => '${name}가 비디오를 중지했습니다.',
			'watchTogether.notices.mediaStopped' => '영상이 멈췄어요',
			'watchTogether.notices.waitingFor' => ({required Object name}) => '${name}님을 기다리는 중...',
			'watchTogether.notices.waitingForSomeone' => '누군가 따라잡기를 기다리고 있습니다...',
			'watchTogether.notices.finished' => '완료',
			'watchTogether.notices.hostChangedTo' => ({required Object name}) => '${name}님이 호스트가 되었습니다',
			'watchTogether.notices.youAreNowHost' => '이제 호스트입니다',
			'watchTogether.notices.joined' => ({required Object name}) => '${name}님이 참여했습니다',
			'watchTogether.notices.left' => ({required Object name}) => '${name}님이 나갔습니다',
			'watchTogether.notices.controlRefused' => '호스트만 재생을 제어할 수 있습니다.',
			'watchTogether.notices.searchFailed' => '일부 서버에서 회의실 영상을 검색할 수 없습니다.',
			'watchTogether.notices.playBlocked' => '시작하려면 재생을 누르세요.',
			'watchTogether.notices.shareFailed' => '이 동영상을 회의실과 공유할 수 없습니다.',
			'watchTogether.notices.notShared' => '다운로드한 동영상은 회의실과 공유되지 않습니다.',
			'watchTogether.notices.openFailed' => '방의 영상을 열 수 없습니다',
			'watchTogether.ended.ended' => '호스트가 방을 종료했습니다.',
			'watchTogether.ended.kicked' => '당신은 방에서 퇴장당했습니다',
			'watchTogether.ended.expired' => '방이 만료되었습니다',
			'watchTogether.ended.replaced' => '다른 기기에서 이 방에 참여했습니다.',
			'watchTogether.ended.lost' => '방 연결이 끊겼어요',
			'watchTogether.errors.invalidCode' => '그건 방 코드가 아닙니다. 코드는 0, 1, I, L, O 없이 6개의 문자와 숫자로 구성됩니다.',
			'watchTogether.errors.roomNotFound' => '해당 코드가 있는 방이 없습니다. 종료되었을 수도 있습니다.',
			'watchTogether.errors.roomFull' => '그 방은 꽉 찼어요.',
			'watchTogether.errors.roomLocked' => '호스트가 그 방을 잠갔습니다.',
			'watchTogether.errors.relayFull' => '함께 시청하기는 지금 바빠요. 나중에 다시 시도하세요.',
			'watchTogether.errors.unreachable' => '함께 시청하기 릴레이에 연결할 수 없습니다. 연결을 확인하세요.',
			'watchTogether.errors.rateLimited' => '시도 횟수가 너무 많습니다. 잠시 기다렸다가 다시 시도해 보세요.',
			'watchTogether.errors.clientBlocked' => 'Luroka의 이 버전은 릴레이를 사용할 수 없습니다. 앱을 업데이트하세요.',
			'watchTogether.errors.forbidden' => '호스트만이 이를 수행할 수 있습니다.',
			'watchTogether.errors.notInRoom' => '당신은 방에 없습니다.',
			'watchTogether.errors.alreadyInRoom' => '이미 방에 있습니다.',
			'watchTogether.errors.resumeFailed' => '방에 다시 참여할 수 없습니다.',
			'watchTogether.errors.unsupported' => '릴레이는 이를 지원하지 않습니다.',
			'watchTogether.errors.generic' => '문제가 발생했습니다. 다시 시도해 보세요.',
			'watchTogether.untitledEpisode' => ({required Object number}) => '에피소드 ${number}',
			'downloads.title' => '다운로드',
			'downloads.manage' => '관리',
			'downloads.tvShows' => 'TV 프로그램',
			'downloads.movies' => '영화',
			'downloads.music' => '음악',
			'downloads.tracksQueued' => ({required Object count}) => '${count}곡 다운로드 대기 중',
			'downloads.noDownloads' => '다운로드 없음',
			'downloads.noDownloadsDescription' => '다운로드한 콘텐츠는 오프라인 시청을 위해 여기에 표시됩니다',
			'downloads.downloadNow' => '다운로드',
			'downloads.deleteDownload' => '다운로드 삭제',
			'downloads.retryDownload' => '다운로드 재시도',
			'downloads.downloadQueued' => '다운로드 대기 중',
			'downloads.downloadResumed' => '다운로드를 재개했습니다',
			'downloads.serverErrorBitrate' => '서버 오류: 파일이 원격 비트레이트 제한을 초과할 수 있습니다',
			'downloads.storageFull' => '사용 가능한 저장 공간을 보호하기 위해 다운로드를 중지했습니다. 공간을 확보하거나 다른 다운로드 위치를 선택한 후 다시 시도하세요.',
			'downloads.storageUnavailable' => '사용 가능한 저장 공간을 확인할 수 없어 다운로드를 중지했습니다. 다운로드 위치를 확인한 후 다시 시도하세요.',
			'downloads.episodesQueued' => ({required Object count}) => '에피소드 ${count}개가 다운로드 대기열에 추가되었습니다',
			'downloads.downloadDeleted' => '다운로드 삭제됨',
			'downloads.deleteConfirm' => ({required Object title}) => '이 기기에서 "${title}"을(를) 삭제할까요?',
			'downloads.deleteCollectionDownloads' => '다운로드 삭제',
			'downloads.deleteCollectionDownloadsConfirm' => ({required Object title}) => '이 기기에서 \'${title}\'의 모든 다운로드를 삭제하시겠습니까?',
			'downloads.collectionDownloadsDeleted' => '다운로드가 삭제되었습니다.',
			'downloads.cancelledDownloadTitle' => '취소된 다운로드',
			'downloads.cancelledDownloadMessage' => '이 다운로드가 취소되었습니다. 어떻게 하시겠습니까?',
			'downloads.allEpisodesAlreadyDownloaded' => '모든 에피소드가 이미 다운로드되었습니다',
			'downloads.resumeDownload' => '다운로드 재개',
			'downloads.cancelledDownload' => '취소된 다운로드',
			'downloads.syncingFile' => ({required Object file, required Object status}) => '${file} (${status} 동기화 중)',
			'downloads.downloadedFileClickToComplete' => ({required Object file}) => '${file} 다운로드됨 — 클릭하여 완료',
			'downloads.partialDownloadClickToComplete' => '부분 다운로드됨 — 클릭하여 완료',
			'downloads.deleting' => '삭제 중...',
			'downloads.deletingWithProgress' => ({required Object title, required Object current, required Object total}) => '${title} 삭제 중... (${current}/${total})',
			'downloads.queuedTooltip' => '대기 중',
			'downloads.queuedFilesTooltip' => ({required Object files}) => '대기 중: ${files}',
			'downloads.downloadingTooltip' => '다운로드 중...',
			'downloads.downloadingFilesTooltip' => ({required Object files}) => '${files} 다운로드 중',
			'downloads.noDownloadsTree' => '다운로드 없음',
			'downloads.pauseAll' => '모두 일시정지',
			'downloads.resumeAll' => '모두 재개',
			'downloads.retryAll' => '모두 다시 시도',
			'downloads.retryFailed' => '실패한 다운로드 다시 시도',
			'downloads.deleteAll' => '모두 삭제',
			'downloads.selectVersion' => '버전 선택',
			'downloads.allEpisodes' => '모든 에피소드',
			'downloads.unwatchedOnly' => '시청하지 않은 것만',
			'downloads.nextNUnwatched' => ({required Object count}) => '다음 ${count}개 미시청',
			'downloads.customAmount' => '직접 입력...',
			'downloads.includeSpecials' => '스페셜 포함',
			'downloads.howManyEpisodes' => '몇 개의 에피소드?',
			'downloads.invalidEpisodeCount' => '올바른 에피소드 수를 입력하세요.',
			'downloads.keepSynced' => '동기화 유지',
			'downloads.downloadOnce' => '한 번만 다운로드',
			'downloads.keepNUnwatched' => ({required Object count}) => '미시청 ${count}개 유지',
			'downloads.editSyncRule' => '동기화 규칙 편집',
			'downloads.removeSyncRule' => '동기화 규칙 제거',
			'downloads.removeSyncRuleConfirm' => ({required Object title}) => '"${title}" 동기화를 중단하시겠습니까? 다운로드된 에피소드는 유지됩니다.',
			'downloads.removeListSyncRuleConfirm' => ({required Object title}) => '"${title}" 동기화를 중지할까요?',
			'downloads.deleteSyncRuleDownloads' => '연결된 다운로드도 삭제',
			'downloads.deleteSyncRuleDownloadsDescription' => '다른 동기화 규칙이나 프로필에서 사용하는 다운로드는 유지됩니다.',
			'downloads.syncRuleCreated' => ({required Object count}) => '동기화 규칙 생성됨 — 미시청 에피소드 ${count}개 유지',
			'downloads.syncRuleUpdated' => '동기화 규칙 업데이트됨',
			'downloads.syncRuleRemoved' => '동기화 규칙 제거됨',
			'downloads.syncRuleAndDownloadsRemoved' => '동기화 규칙과 연결된 다운로드가 삭제되었습니다',
			'downloads.syncRuleCleanupBusy' => '동기화 규칙이 현재 업데이트 중입니다. 잠시 후 다시 시도하세요.',
			'downloads.syncRuleCleanupUnavailable' => '연결된 다운로드를 안전하게 확인할 수 없습니다. 서버에 다시 연결한 후 시도하거나, 다운로드를 삭제하지 않고 규칙만 제거하세요.',
			'downloads.syncedNewEpisodes' => ({required Object title, required Object count}) => '${title}의 새 에피소드 ${count}개 동기화됨',
			'downloads.activeSyncRules' => '동기화 규칙',
			'downloads.noSyncRules' => '동기화 규칙 없음',
			'downloads.manageSyncRule' => '동기화 관리',
			'downloads.editEpisodeCount' => '에피소드 수',
			'downloads.editSyncFilter' => '동기화 필터',
			'downloads.syncAllItems' => '모든 항목 동기화 중',
			'downloads.syncUnwatchedItems' => '시청하지 않은 항목 동기화 중',
			'downloads.syncRuleServerContext' => ({required Object server, required Object status}) => '서버: ${server} • ${status}',
			'downloads.syncRuleAvailable' => '사용 가능',
			'downloads.syncRuleOffline' => '오프라인',
			'downloads.syncRuleSignInRequired' => '로그인 필요',
			'downloads.syncRuleAccessDenied' => '접근 거부됨',
			'downloads.syncRuleNotAvailableForProfile' => '현재 프로필에서 사용할 수 없음',
			'downloads.syncRuleUnknownServer' => '알 수 없는 서버',
			'downloads.syncRuleListCreated' => '동기화 규칙이 생성되었습니다',
			'downloads.backgroundWarning.bannerBlocked' => '앱에서 나가면 다운로드가 중지됩니다',
			'downloads.backgroundWarning.bannerDegraded' => '백그라운드 다운로드가 제한될 수 있습니다',
			'downloads.backgroundWarning.bannerAction' => '세부정보',
			'downloads.backgroundWarning.sheetTitle' => '백그라운드 다운로드가 차단됨',
			'downloads.backgroundWarning.sheetTitleDegraded' => '백그라운드 다운로드가 제한될 수 있음',
			'downloads.backgroundWarning.sheetIntro' => 'Android가 Luroka의 안정적인 백그라운드 다운로드를 차단하고 있습니다.',
			'downloads.backgroundWarning.sheetIntroDegraded' => '기기에서 Luroka가 백그라운드로 다운로드할 수 있는 시점을 제한하고 있습니다.',
			'downloads.backgroundWarning.reasonBackgroundRestricted' => 'Luroka의 백그라운드 사용이 제한되어 있습니다. 배터리 또는 백그라운드 사용을 "제한 없음"으로 설정하세요.',
			'downloads.backgroundWarning.reasonStandbyRestricted' => 'Android가 Luroka를 제한된 대기 상태로 전환했습니다. 배터리 사용량을 "제한 없음"으로 설정하세요.',
			'downloads.backgroundWarning.reasonDownloadChannelBlocked' => '다운로드 알림이 꺼져 있어 진행 상황과 제어 기능을 사용하지 못할 수 있습니다.',
			'downloads.backgroundWarning.reasonNotificationsDisabled' => '알림이 꺼져 있습니다. Android 13 이상에서는 장시간 백그라운드 다운로드에 알림이 필요합니다.',
			'downloads.backgroundWarning.reasonDataSaver' => '데이터 절약 모드가 켜져 있어 모바일 데이터로 백그라운드 다운로드를 할 수 없습니다. Wi-Fi에서는 계속 다운로드할 수 있습니다.',
			'downloads.backgroundWarning.reasonOemUnknown' => 'Luroka가 백그라운드에 있을 때 다운로드가 반복해서 중지되었습니다. Luroka의 배터리 또는 백그라운드 사용 설정을 확인하세요.',
			'downloads.backgroundWarning.openSettings' => '설정 열기',
			'downloads.backgroundWarning.stillNotWorking' => '기기별 도움말',
			'downloads.backgroundWarning.stillNotWorkingDescription' => '기기에 맞는 단계를 확인하세요. 문제가 계속되면 설정 › 로그 보기에서 로그를 보내 주세요.',
			'downloads.backgroundWarning.dialogTitle' => '다운로드가 완료되지 않을 수 있음',
			'downloads.backgroundWarning.dialogDownloadAnyway' => '그래도 다운로드',
			'downloads.backgroundWarning.dialogFixFirst' => '먼저 문제 해결',
			'downloads.backgroundWarning.statusTile' => '백그라운드 다운로드',
			'downloads.backgroundWarning.statusOk' => '백그라운드 실행 허용됨',
			'downloads.backgroundWarning.statusBlocked' => '시스템 설정에 의해 차단됨',
			'downloads.backgroundWarning.statusDegraded' => '시스템 설정에 의해 제한됨',
			'downloads.backgroundWarning.statusUnknown' => '아직 확인하지 않음',
			'downloads.backgroundWarning.settingsUnavailable' => '이 기기에서 시스템 설정을 열 수 없습니다',
			'downloads.backgroundWarning.linkUnavailable' => '이 기기에서 dontkillmyapp.com을 열 수 없습니다',
			'downloads.options' => '다운로드 옵션',
			'downloads.groupings.library' => '라이브러리',
			'downloads.groupings.collections' => '컬렉션',
			'downloads.unknownLibrary' => '알 수 없는 라이브러리',
			'downloads.unknownShow' => '알 수 없는 프로그램',
			'downloads.unknownSeason' => '알 수 없는 시즌',
			'downloads.unknownAlbum' => '알 수 없는 앨범',
			'downloads.completedOfTotal' => ({required Object completed, required Object total}) => '${completed}/${total} 완료',
			'downloads.errorFileNotFound' => '파일을 찾을 수 없음(404)',
			'downloads.errorDownloadNotAllowed' => '서버에서 다운로드를 허용하지 않음(403)',
			'downloads.errorDownloadFailed' => '다운로드 실패',
			'downloads.errorDownloadFailedWithReason' => ({required Object reason}) => '다운로드 실패: ${reason}',
			'downloads.errorHttpStatus' => ({required Object status}) => '다운로드 실패(HTTP ${status})',
			'downloads.errorPostProcessing' => ({required Object reason}) => '후처리 실패: ${reason}',
			'downloads.reasonFileNotSaved' => '이 기기에 파일을 저장할 수 없습니다',
			'downloads.reasonCannotResume' => '일부만 받은 다운로드를 이어서 받을 수 없습니다',
			'downloads.reasonDeviceStorageFull' => '이 기기의 저장 공간이 부족합니다',
			'downloads.notificationDownloading' => '다운로드 중...',
			'downloads.notificationComplete' => '다운로드 완료',
			'downloads.notificationPaused' => '다운로드 일시 중지',
			'shaders.title' => '셰이더',
			'shaders.noShaderDescription' => '비디오 향상 없음',
			'shaders.nvscalerDescription' => '더 선명한 비디오를 위한 NVIDIA 이미지 스케일링',
			'shaders.artcnnVariantNeutral' => '중립',
			'shaders.artcnnVariantDenoise' => '노이즈 제거',
			'shaders.artcnnVariantDenoiseSharpen' => '노이즈 제거 + 선명화',
			'shaders.qualityFast' => '빠름',
			'shaders.qualityHQ' => '고품질',
			'shaders.mode' => '모드',
			'shaders.importShader' => '셰이더 가져오기',
			'shaders.customShaderDescription' => '사용자 정의 GLSL 셰이더',
			'shaders.shaderImported' => '셰이더를 가져왔습니다',
			'shaders.shaderImportFailed' => '셰이더 가져오기 실패',
			'shaders.deleteShader' => '셰이더 삭제',
			'shaders.deleteShaderConfirm' => ({required Object name}) => '"${name}"을(를) 삭제하시겠습니까?',
			'companionRemote.title' => '컴패니언 리모컨',
			'companionRemote.connectedTo' => ({required Object name}) => '${name}에 연결됨',
			'companionRemote.unknownDevice' => '알 수 없는 기기',
			'companionRemote.session.startingServer' => '원격 서버 시작 중...',
			'companionRemote.session.hostAddress' => '호스트 주소',
			'companionRemote.session.connected' => '연결됨',
			'companionRemote.session.serverRunning' => '원격 서버 활성',
			'companionRemote.session.serverStopped' => '원격 서버 중지됨',
			'companionRemote.session.serverRunningDescription' => '네트워크의 모바일 기기가 이 앱에 연결할 수 있습니다',
			'companionRemote.session.serverStoppedDescription' => '모바일 기기의 연결을 허용하려면 서버를 시작하세요',
			'companionRemote.session.usePhoneToControl' => '모바일 기기로 이 앱을 제어하세요',
			'companionRemote.session.startServer' => '서버 시작',
			'companionRemote.session.stopServer' => '서버 중지',
			'companionRemote.session.minimize' => '최소화',
			'companionRemote.session.manualAddressHint' => '수동 연결 주소:',
			'companionRemote.pairing.discoveryDescription' => '같은 Plex 계정의 Luroka 기기가 여기에 표시됩니다',
			'companionRemote.pairing.hostAddressHint' => '192.168.1.100:48632',
			'companionRemote.pairing.connecting' => '연결 중...',
			'companionRemote.pairing.searchingForDevices' => '기기 검색 중...',
			'companionRemote.pairing.noDevicesFound' => '네트워크에서 기기를 찾을 수 없습니다',
			'companionRemote.pairing.noDevicesHint' => '데스크톱에서 Luroka를 열고 같은 Wi-Fi를 사용하세요',
			'companionRemote.pairing.availableDevices' => '사용 가능한 기기',
			'companionRemote.pairing.manualConnection' => '수동 연결',
			'companionRemote.pairing.cryptoInitFailed' => '보안 연결을 시작할 수 없습니다. 먼저 Plex에 로그인하세요.',
			'companionRemote.pairing.validationHostRequired' => '호스트 주소를 입력하세요',
			'companionRemote.pairing.validationHostFormat' => '형식은 IP:포트여야 합니다 (예: 192.168.1.100:48632)',
			'companionRemote.pairing.connectionTimedOut' => '연결 시간이 초과되었습니다. 두 기기에서 같은 네트워크를 사용하세요.',
			'companionRemote.pairing.sessionNotFound' => '기기를 찾을 수 없습니다. 호스트에서 Luroka가 실행 중인지 확인하세요.',
			'companionRemote.pairing.authFailed' => '인증에 실패했습니다. 두 기기 모두 같은 Plex 계정이 필요합니다.',
			'companionRemote.pairing.failedToConnect' => ({required Object error}) => '연결 실패: ${error}',
			'companionRemote.remote.disconnectConfirm' => '원격 세션 연결을 해제하시겠습니까?',
			'companionRemote.remote.reconnecting' => '재연결 중...',
			'companionRemote.remote.attemptOf' => ({required Object current}) => '${current}/5 시도 중',
			'companionRemote.remote.retryNow' => '지금 재시도',
			'companionRemote.remote.tabRemote' => '리모컨',
			'companionRemote.remote.tabPlay' => '재생',
			'companionRemote.remote.tabMore' => '더 보기',
			'companionRemote.remote.menu' => '메뉴',
			'companionRemote.remote.tabNavigation' => '탭 탐색',
			'companionRemote.remote.tabDiscover' => '둘러보기',
			'companionRemote.remote.tabLibraries' => '미디어 라이브러리',
			'companionRemote.remote.tabSearch' => '검색',
			'companionRemote.remote.tabDownloads' => '다운로드',
			'companionRemote.remote.tabSettings' => '설정',
			'companionRemote.remote.previous' => '이전',
			'companionRemote.remote.playPause' => '재생/일시정지',
			'companionRemote.remote.next' => '다음',
			'companionRemote.remote.seekBack' => '되감기',
			'companionRemote.remote.stop' => '정지',
			'companionRemote.remote.seekForward' => '빨리감기',
			'companionRemote.remote.volume' => '볼륨',
			'companionRemote.remote.volumeDown' => '줄이기',
			'companionRemote.remote.volumeUp' => '높이기',
			'companionRemote.remote.fullscreen' => '전체 화면',
			'companionRemote.remote.subtitles' => '자막',
			'companionRemote.remote.audio' => '오디오',
			'companionRemote.remote.searchHint' => '데스크톱에서 검색...',
			'companionRemote.errors.noNetworkInterface' => '네트워크 인터페이스를 찾을 수 없습니다',
			'companionRemote.errors.authenticationFailed' => '인증 실패',
			'companionRemote.errors.serverStartFailed' => ({required Object error}) => '원격 서버를 시작하지 못했습니다: ${error}',
			'companionRemote.errors.commandFailed' => ({required Object error}) => '원격 명령을 보내지 못했습니다: ${error}',
			'companionRemote.errors.joinTimedOut' => '세션 참가 시간이 초과되었습니다',
			'companionRemote.errors.failedToConnectAnyAddress' => '어떤 주소에도 연결하지 못했습니다',
			'companionRemote.errors.connectionLostAfterAttempts' => ({required Object attempts}) => '${attempts}회 시도 후 연결이 끊어졌습니다',
			'companionRemote.errors.connectionLost' => '연결이 끊어졌습니다',
			'companionRemote.closedBeforeAuth' => '인증 전에 연결이 종료되었습니다',
			'videoSettings.playbackSpeed' => '재생 속도',
			'videoSettings.normalSpeed' => '보통',
			'videoSettings.sleepTimerActive' => ({required Object duration}) => '활성 (${duration})',
			'videoSettings.zoom' => '확대/축소',
			'videoSettings.sleepTimer' => '취침 타이머',
			'videoSettings.audioSync' => '오디오 동기화',
			'videoSettings.subtitleSync' => '자막 동기화',
			'videoSettings.hdr' => 'HDR',
			'videoSettings.hdrUnsupported' => '여기서는 HDR을 사용할 수 없습니다. 이 데스크톱 컴포지터 또는 비디오 출력에서 HDR을 전달할 수 없습니다.',
			'videoSettings.hdrToneMapping' => 'HDR 톤 매핑',
			'videoSettings.hdrToneMappingCompositor' => '컴포지터',
			'videoSettings.hdrToneMappingCompositorDescription' => '소스의 HDR 메타데이터를 그대로 전달하고 데스크톱 컴포지터에서 매핑하도록 합니다.',
			'videoSettings.hdrToneMappingPlayer' => '플레이어',
			'videoSettings.hdrToneMappingPlayerDescription' => '플레이어에서 디스플레이의 최대 밝기에 맞게 매핑한 다음 그 결과를 컴포지터에 전달합니다.',
			'videoSettings.hdrToneMappingFailed' => 'HDR 톤 매핑을 변경할 수 없습니다. 이전 모드가 계속 적용됩니다.',
			'videoSettings.audioOutput' => '오디오 출력',
			'videoSettings.performanceOverlay' => '성능 오버레이',
			'videoSettings.audioOutputDolbyAtmos' => 'Dolby Atmos',
			'videoSettings.audioOutputDolbyAudio' => 'Dolby Audio',
			'videoSettings.audioOutputSurround' => '서라운드',
			'videoSettings.audioOutputSpatial' => '공간 음향',
			'videoSettings.audioOutputStereo' => '스테레오',
			'videoSettings.audioNormalization' => '음량 정규화',
			'videoSettings.audioNormalizationDisablesPassthrough' => '오디오를 PCM으로 디코딩합니다. 켜져 있는 동안 패스스루가 꺼집니다',
			'performanceOverlay.color' => '색상',
			'performanceOverlay.performance' => '성능',
			'performanceOverlay.buffer' => '버퍼',
			'performanceOverlay.app' => '앱',
			'performanceOverlay.decoder' => '디코더',
			'performanceOverlay.rawDecoder' => '원본 디코더',
			'performanceOverlay.tunneling' => '터널링',
			'performanceOverlay.passthrough' => '패스스루',
			'performanceOverlay.aspect' => '화면비',
			'performanceOverlay.rotation' => '회전',
			'performanceOverlay.dvSource' => 'DV 소스',
			'performanceOverlay.dvPath' => 'DV 경로',
			'performanceOverlay.dvRouteDecoder' => 'Dolby Vision 디코더',
			'performanceOverlay.dvRouteDecoderP81' => 'Dolby Vision 디코더 (P7→8.1)',
			'performanceOverlay.dvRouteBaseLayer' => '베이스 레이어',
			'performanceOverlay.dvRouteBaseLayerHdr10' => 'HDR10 기본 레이어',
			'performanceOverlay.dvRouteBaseLayerHlg' => 'HLG 기본 레이어',
			'performanceOverlay.dvRouteBaseLayerSdr' => 'SDR 기본 계층',
			'performanceOverlay.dvRouteReshaped' => 'RPU 재구성(gpu-next)',
			'performanceOverlay.p7Conversion' => 'P7 변환',
			'performanceOverlay.sampleRate' => '샘플 레이트',
			'performanceOverlay.pixelFormat' => '픽셀 형식',
			'performanceOverlay.hwFormat' => 'HW 형식',
			'performanceOverlay.matrix' => '매트릭스',
			'performanceOverlay.primaries' => '원색',
			'performanceOverlay.transfer' => '전송',
			'performanceOverlay.renderFps' => '렌더 FPS',
			'performanceOverlay.displayFps' => '디스플레이 FPS',
			'performanceOverlay.avSync' => 'A/V 동기화',
			'performanceOverlay.dropped' => '드롭됨',
			'performanceOverlay.dvRpus' => 'DV RPU',
			'performanceOverlay.dvRpuAverage' => 'DV RPU 평균',
			'performanceOverlay.dvSampleAverage' => 'DV 샘플 평균',
			'performanceOverlay.maxLuma' => '최대 휘도',
			'performanceOverlay.minLuma' => '최소 휘도',
			'performanceOverlay.maxCll' => 'MaxCLL',
			'performanceOverlay.maxFall' => 'MaxFALL',
			'performanceOverlay.cacheUsed' => '사용 캐시',
			'performanceOverlay.cacheLimit' => '캐시 제한',
			'performanceOverlay.speed' => '속도',
			'performanceOverlay.player' => '플레이어',
			'performanceOverlay.memory' => '메모리',
			'performanceOverlay.uiFps' => 'UI FPS',
			'performanceOverlay.fps' => 'FPS',
			'performanceOverlay.decoderAndroidHw' => 'Android HW',
			'performanceOverlay.decoderNvidiaHw' => 'NVIDIA HW',
			'performanceOverlay.decoderQualcommHw' => 'Qualcomm HW',
			'performanceOverlay.decoderMediatekHw' => 'MediaTek HW',
			'performanceOverlay.decoderExynosHw' => 'Exynos HW',
			'performanceOverlay.decoderSoftware' => '소프트웨어',
			'performanceOverlay.decoderHardware' => '하드웨어',
			'performanceOverlay.tunnelingActive' => '활성',
			'performanceOverlay.dvRpuFailed' => ({required Object converted, required Object failures}) => '${converted} (${failures}개 실패)',
			'externalPlayer.title' => '외부 플레이어',
			'externalPlayer.useExternalPlayer' => '외부 플레이어 사용',
			'externalPlayer.useExternalPlayerDescription' => '동영상을 다른 앱에서 열기',
			'externalPlayer.selectPlayer' => '플레이어 선택',
			'externalPlayer.customPlayers' => '사용자 정의 플레이어',
			'externalPlayer.systemDefault' => '시스템 기본값',
			'externalPlayer.addCustomPlayer' => '사용자 정의 플레이어 추가',
			'externalPlayer.playerName' => '플레이어 이름',
			'externalPlayer.playerNameHint' => '내 플레이어',
			'externalPlayer.playerCommand' => '명령어',
			'externalPlayer.playerPackage' => '패키지 이름',
			'externalPlayer.playerUrlScheme' => 'URL 스킴',
			'externalPlayer.off' => '꺼짐',
			'externalPlayer.launchFailed' => '외부 플레이어를 열 수 없습니다',
			'externalPlayer.appNotInstalled' => ({required Object name}) => '${name}이(가) 설치되어 있지 않습니다',
			'externalPlayer.playInExternalPlayer' => '외부 플레이어에서 재생',
			'metadataEdit.editMetadata' => '편집...',
			'metadataEdit.screenTitle' => '메타데이터 편집',
			'metadataEdit.basicInfo' => '기본 정보',
			'metadataEdit.artwork' => '아트워크',
			'metadataEdit.advancedSettings' => '고급 설정',
			'metadataEdit.title' => '제목',
			'metadataEdit.sortTitle' => '정렬 제목',
			'metadataEdit.originalTitle' => '원제',
			'metadataEdit.releaseDate' => '출시일',
			'metadataEdit.contentRating' => '콘텐츠 등급',
			'metadataEdit.studio' => '스튜디오',
			'metadataEdit.tagline' => '태그라인',
			'metadataEdit.summary' => '줄거리',
			'metadataEdit.poster' => '포스터',
			'metadataEdit.background' => '배경',
			'metadataEdit.logo' => '로고',
			'metadataEdit.squareArt' => '정사각형 아트',
			'metadataEdit.selectPoster' => '포스터 선택',
			'metadataEdit.selectBackground' => '배경 선택',
			'metadataEdit.selectLogo' => '로고 선택',
			'metadataEdit.selectSquareArt' => '정사각형 아트 선택',
			'metadataEdit.fromUrl' => 'URL에서',
			'metadataEdit.uploadFile' => '파일 업로드',
			'metadataEdit.enterImageUrl' => '이미지 URL 입력',
			'metadataEdit.imageUrl' => '이미지 URL',
			'metadataEdit.metadataUpdated' => '메타데이터가 업데이트되었습니다',
			'metadataEdit.metadataUpdateFailed' => '메타데이터 업데이트 실패',
			'metadataEdit.artworkUpdated' => '아트워크가 업데이트되었습니다',
			'metadataEdit.artworkUpdateFailed' => '아트워크 업데이트 실패',
			'metadataEdit.noArtworkAvailable' => '사용 가능한 아트워크 없음',
			'metadataEdit.artworkOption' => ({required Object index}) => '아트워크 옵션 ${index}',
			'metadataEdit.selectedArtworkOption' => ({required Object index}) => '아트워크 옵션 ${index}, 선택됨',
			'metadataEdit.notSet' => '설정되지 않음',
			'metadataEdit.libraryDefault' => '라이브러리 기본값',
			'metadataEdit.accountDefault' => '계정 기본값',
			'metadataEdit.seriesDefault' => '시리즈 기본값',
			'metadataEdit.episodeSorting' => '에피소드 정렬',
			'metadataEdit.oldestFirst' => '오래된 순',
			'metadataEdit.newestFirst' => '최신 순',
			'metadataEdit.keep' => '유지',
			'metadataEdit.allEpisodes' => '모든 에피소드',
			'metadataEdit.latestEpisodes' => ({required Object count}) => '최신 에피소드 ${count}개',
			'metadataEdit.latestEpisode' => '최신 에피소드',
			'metadataEdit.episodesAddedPastDays' => ({required Object count}) => '최근 ${count}일 내 추가된 에피소드',
			'metadataEdit.deleteAfterPlaying' => '재생 후 에피소드 삭제',
			'metadataEdit.never' => '안 함',
			'metadataEdit.afterADay' => '하루 후',
			'metadataEdit.afterAWeek' => '일주일 후',
			'metadataEdit.afterAMonth' => '한 달 후',
			'metadataEdit.onNextRefresh' => '다음 새로고침 시',
			'metadataEdit.seasons' => '시즌',
			'metadataEdit.show' => '표시',
			'metadataEdit.hide' => '숨기기',
			'metadataEdit.episodeOrdering' => '에피소드 순서',
			'metadataEdit.tmdbAiring' => 'The Movie Database (방영순)',
			'metadataEdit.tvdbAiring' => 'TheTVDB (방영순)',
			'metadataEdit.tvdbAbsolute' => 'TheTVDB (절대순)',
			'metadataEdit.metadataLanguage' => '메타데이터 언어',
			'metadataEdit.useOriginalTitle' => '원제 사용',
			'metadataEdit.preferredAudioLanguage' => '선호 오디오 언어',
			'metadataEdit.preferredSubtitleLanguage' => '선호 자막 언어',
			'metadataEdit.subtitleMode' => '자막 자동 선택 모드',
			'metadataEdit.manuallySelected' => '수동 선택',
			'metadataEdit.shownWithForeignAudio' => '외국어 오디오 시 표시',
			'metadataEdit.alwaysEnabled' => '항상 활성화',
			'metadataEdit.tags' => '태그',
			'metadataEdit.addTag' => '태그 추가',
			'metadataEdit.genre' => '장르',
			'metadataEdit.director' => '감독',
			'metadataEdit.writer' => '작가',
			'metadataEdit.producer' => '프로듀서',
			'metadataEdit.country' => '국가',
			'metadataEdit.collection' => '컬렉션',
			'metadataEdit.label' => '라벨',
			'metadataEdit.quickTag' => '빠른 태그…',
			'matchScreen.match' => '일치...',
			'matchScreen.fixMatch' => '일치 수정...',
			'matchScreen.unmatch' => '일치 해제',
			'matchScreen.unmatchConfirm' => '이 매칭을 지울까요? 다시 매칭될 때까지 Plex에서는 미매칭으로 처리됩니다.',
			'matchScreen.unmatchSuccess' => '일치 해제됨',
			'matchScreen.unmatchFailed' => '일치 해제에 실패했습니다',
			'matchScreen.matchApplied' => '일치 적용됨',
			'matchScreen.matchFailed' => '일치 적용에 실패했습니다',
			'matchScreen.titleHint' => '제목',
			'matchScreen.yearHint' => '연도',
			'matchScreen.search' => '검색',
			'matchScreen.noMatchesFound' => '일치하는 항목이 없습니다',
			'serverTasks.title' => '서버 작업',
			'serverTasks.failedToLoad' => '작업을 불러올 수 없습니다',
			'serverTasks.noTasks' => '실행 중인 작업 없음',
			'trakt.title' => 'Trakt',
			'trakt.connected' => '연결됨',
			'trakt.connectedAs' => ({required Object username}) => '@${username}(으)로 연결됨',
			'trakt.disconnectConfirm' => 'Trakt 계정 연결을 끊으시겠습니까?',
			'trakt.disconnectConfirmBody' => 'Luroka가 Trakt로 이벤트 전송을 중지합니다. 언제든 다시 연결할 수 있습니다.',
			'trakt.scrobble' => '실시간 스크로블',
			'trakt.scrobbleDescription' => '재생 중 재생, 일시정지, 정지 이벤트를 Trakt로 전송합니다.',
			'trakt.watchedSync' => '시청 상태 동기화',
			'trakt.watchedSyncDescription' => 'Luroka에서 시청 완료로 표시한 항목이 Trakt에도 시청 완료로 표시됩니다.',
			'seerr.title' => 'Seerr',
			'seerr.connectTitle' => 'Seerr에 연결',
			'seerr.serverUrl' => '서버 URL',
			'seerr.serverUrlHelper' => 'Seerr 인스턴스의 주소',
			'seerr.checkServer' => '계속',
			'seerr.signInWithJellyfin' => 'Jellyfin으로 로그인',
			'seerr.signInWithEmby' => 'Emby로 로그인',
			'seerr.signInWithLocal' => '로컬 계정 사용',
			'seerr.email' => '이메일',
			'seerr.noSignInMethods' => '이 Seerr 인스턴스에는 Luroka가 지원하는 로그인 방법이 없습니다.',
			'seerr.instance' => '인스턴스',
			'seerr.disconnectConfirm' => 'Seerr 연결을 해제하시겠습니까?',
			'seerr.disconnectConfirmBody' => 'Luroka가 이 Seerr 인스턴스를 삭제합니다. 언제든 다시 연결할 수 있습니다.',
			'seerr.request' => '요청',
			'seerr.request4k' => '4K로 요청',
			'seerr.seasons' => '시즌',
			'seerr.allSeasons' => '모든 시즌',
			'seerr.advancedOptions' => '고급',
			'seerr.destinationServer' => '대상 서버',
			'seerr.qualityProfile' => '화질 프로파일',
			'seerr.rootFolder' => '루트 폴더',
			'seerr.languageProfile' => '언어 프로파일',
			'seerr.tags' => '태그',
			'seerr.noTags' => '태그 없음',
			'seerr.defaultOption' => ({required Object name}) => '${name} (기본값)',
			'seerr.animeNote' => '이 시리즈는 애니메이션입니다.',
			'seerr.requestSubmitted' => '요청을 제출했습니다',
			'seerr.requestFailed' => ({required Object error}) => '요청 실패: ${error}',
			'seerr.requestsLoadFailed' => '요청 옵션을 불러올 수 없습니다',
			'seerr.nothingToRequest' => '모두 이미 사용 가능하거나 요청되었습니다.',
			'seerr.statusAvailable' => '사용 가능',
			'seerr.statusPartiallyAvailable' => '일부 사용 가능',
			'seerr.statusRequested' => '요청됨',
			'seerr.statusProcessing' => '처리 중',
			_ => null,
		} ?? switch (path) {
			'seerr.statusBlocklisted' => '차단 목록에 있음',
			'seerr.couldNotReach' => ({required Object url, required Object error}) => '${url}에 연결할 수 없습니다: ${error}',
			'seerr.noInstanceAtUrl' => ({required Object url, required Object status}) => '${url}에 Seerr 인스턴스가 없습니다(HTTP ${status})',
			'seerr.behindAuthProxy' => 'Seerr 대신 인증이 필요한 리버스 프록시(SSO 또는 HTTP 인증)가 응답했습니다. Luroka는 이를 통해 로그인할 수 없습니다. 이 앱에서 Seerr의 /api/v1 경로가 프록시를 우회하도록 하거나, Seerr에 직접 연결되는 주소를 사용하세요.',
			'seerr.invalidUrl' => 'https://seerr.example.com과 같은 서버 주소를 입력하세요',
			'seerr.quickConnectUnsupported' => '이 Seerr 인스턴스는 Quick Connect를 지원하지 않습니다. Seerr 3.4 이상이 필요합니다.',
			'seerr.notInitialized' => '이 Seerr 인스턴스는 최초 실행 설정을 완료하지 않았습니다',
			'seerr.noPlexTokenForReauth' => '다시 로그인하는 데 사용할 수 있는 Plex 토큰이 없습니다',
			'seerr.noStoredCredentials' => '다시 로그인하는 데 사용할 수 있는 저장된 인증 정보가 없습니다',
			'seerr.signInRejected' => '로그인이 거부되었습니다',
			'seerr.noSessionCookie' => 'Seerr에서 세션 쿠키를 발급하지 않았습니다',
			'seerr.freshCookieRejected' => 'Seerr에서 새 세션 쿠키를 거부했습니다',
			'seerr.noUserInformation' => 'Seerr에서 사용자 정보를 반환하지 않았습니다',
			'seerr.sessionRejectedAfterReauth' => '다시 로그인한 후 세션이 거부되었습니다',
			'seerr.permissionDenied' => 'Seerr가 이 작업을 거부했습니다: 계정에 필요한 권한이 더 이상 없습니다',
			'seerr.permissionRevoked' => '이 항목을 요청할 권한이 더 이상 없습니다',
			'services.title' => '서비스',
			'services.hubSubtitle' => '시청 진행률을 동기화하고 새 작품을 요청하세요.',
			'services.discoverySection' => '검색 및 요청',
			'services.trackingSection' => '시청 기록 및 목록',
			'services.seerrDescription' => 'Seerr 서버에서 영화와 시리즈를 찾아 요청할 수 있습니다.',
			'services.tmdbDescription' => '영화와 시리즈, 포스터, 평점 및 상세 정보를 둘러보세요.',
			'services.traktDescription' => '영화와 시리즈를 기록하고 시청 상태를 동기화하며 관심 목록을 관리합니다.',
			'services.malDescription' => '애니메이션 목록과 시청 진행 상황을 동기화합니다.',
			'services.anilistDescription' => 'AniList에서 애니메이션을 기록하고 시청 진행 상황을 동기화합니다.',
			'services.simklDescription' => 'Simkl로 영화, 시리즈, 애니메이션 시청을 기록합니다.',
			'services.mdblistDescription' => 'MDBList 목록과 영화 평점을 연결합니다.',
			'services.connectionIntro' => ({required Object service}) => '${service}을(를) 현재 Luroka 프로필에 연결합니다. 이 연결과 옵션은 언제든 여기에서 관리할 수 있습니다.',
			'services.connectService' => ({required Object service}) => '${service} 연결',
			'services.seerrConnectDescription' => 'Seerr 서버를 연결하면 Luroka에서 영화와 시리즈를 찾아 요청할 수 있습니다.',
			'services.seerrServerStep' => 'Seerr를 열 때 사용하는 주소를 입력하세요. 서버에서 지원하는 로그인 방법을 확인합니다.',
			'services.seerrSignInStep' => '서버에서 지원하는 로그인 방법을 선택하세요.',
			'services.integrations' => '연동',
			'services.notConnected' => '연결되지 않음',
			'services.connectedAs' => ({required Object username}) => '@${username}(으)로 연결됨',
			'services.scrobble' => '진행률 자동 추적',
			'services.scrobbleDescription' => '에피소드나 영화를 시청하면 목록을 업데이트합니다.',
			'services.disconnectConfirm' => ({required Object service}) => '${service} 연결을 해제하시겠습니까?',
			'services.disconnectConfirmBody' => ({required Object service}) => 'Luroka가 ${service} 업데이트를 중지합니다. 언제든 다시 연결할 수 있습니다.',
			'services.connectFailed' => ({required Object service}) => '${service}에 연결할 수 없습니다. 다시 시도하세요.',
			'services.names.mal' => 'MyAnimeList',
			'services.names.anilist' => 'AniList',
			'services.names.simkl' => 'Simkl',
			'services.names.seerr' => 'Seerr',
			'services.names.mdblist' => 'MDBList',
			'services.simklReconnect.title' => 'Simkl 다시 연결',
			'services.simklReconnect.subtitle' => 'Simkl는 이 연결에서 사용하는 로그인 방법을 중단합니다. 다시 연결하면 simkl.com이 열리고 Luroka를 승인합니다. — Luroka는 사용자의 비밀번호를 볼 수 없습니다. 시청 기록은 Simkl에 유지됩니다.',
			'services.deviceCode.title' => ({required Object service}) => '${service}에서 Luroka 활성화',
			'services.deviceCode.instructions' => 'QR 코드를 스캔하거나 아래 주소로 이동하여 이 코드를 입력하세요:',
			'services.deviceCode.openToActivate' => ({required Object service}) => '활성화하려면 ${service} 열기',
			'services.deviceCode.copyCode' => '활성화 코드 복사',
			'services.deviceCode.waitingForAuthorization' => '인증을 기다리는 중…',
			'services.deviceCode.codeCopied' => '코드가 복사되었습니다',
			'services.oauthProxy.title' => ({required Object service}) => '${service}에 로그인',
			'services.oauthProxy.body' => '이 QR 코드를 스캔하거나 아무 기기에서 URL을 여세요.',
			'services.oauthProxy.openToSignIn' => ({required Object service}) => '로그인하려면 ${service} 열기',
			'services.pendingAuth.copyUrl' => '로그인 URL 복사',
			'services.pendingAuth.urlCopied' => 'URL이 복사되었습니다',
			'services.libraryFilter.title' => '라이브러리 필터',
			'services.libraryFilter.subtitleAllSyncing' => '모든 라이브러리 동기화 중',
			'services.libraryFilter.subtitleNoneSyncing' => '동기화 안 함',
			'services.libraryFilter.subtitleBlocked' => ({required Object count}) => '${count}개 차단됨',
			'services.libraryFilter.subtitleAllowed' => ({required Object count}) => '${count}개 허용됨',
			'services.libraryFilter.mode' => '필터 모드',
			'services.libraryFilter.modeBlacklist' => '차단 목록',
			'services.libraryFilter.modeWhitelist' => '허용 목록',
			'services.libraryFilter.modeHintBlacklist' => '아래에 선택한 라이브러리를 제외한 모든 라이브러리를 동기화합니다.',
			'services.libraryFilter.modeHintWhitelist' => '아래에 선택한 라이브러리만 동기화합니다.',
			'services.libraryFilter.libraries' => '라이브러리',
			'services.libraryFilter.noLibraries' => '사용 가능한 라이브러리가 없습니다',
			'offlineRecovery.title' => '서버가 오프라인 상태입니다',
			'offlineRecovery.description' => '다운로드 항목은 계속 사용할 수 있습니다. 서버가 복구되면 다시 연결해 보거나 다른 서버를 추가하세요.',
			'offlineRecovery.appleTvDescription' => 'Luroka가 미디어 서버에 연결할 수 없습니다. 사용 가능할 때 다시 연결해 보거나 계속 시청하려면 다른 서버를 추가하세요.',
			'offlineRecovery.kidsDescription' => '미디어 서버에 연결할 수 없습니다. 다시 연결해 보거나 부모님께 도움을 요청하세요.',
			'offlineRecovery.retrying' => '연결 중…',
			'offlineRecovery.addServer' => '서버 추가',
			'releaseUpdates.manualInstructions' => 'GitHub에서 릴리스 아카이브를 다운로드하고 APK를 추출한 후 Android 장치에 설치합니다.',
			'releaseUpdates.tvInstructions' => '휴대폰이나 컴퓨터에서 이 주소를 열거나 QR 코드를 스캔하여 릴리스를 다운로드하세요.',
			'releaseUpdates.pressBackAgain' => '재생을 종료하려면 뒤로를 다시 누르세요.',
			'profileIntegrations.title' => 'Luroka를 나만의 것으로 만드세요',
			'profileIntegrations.description' => '즐겨찾는 서비스를 연결하여 시청 내용을 추적하고 새 영화와 프로그램을 요청하세요. 각 Luroka 프로필에는 자체 연결이 있습니다.',
			'profileIntegrations.step' => '선택적 통합',
			'profileIntegrations.examples' => 'Trakt · Simkl · AniList · MyAnimeList · Seerr',
			'profileIntegrations.connect' => '통합 살펴보기',
			'profileIntegrations.later' => '나중에 설정하세요',
			'profileIntegrations.manage' => '통합 관리',
			'profileIntegrations.forProfile' => ({required Object name}) => '${name}에 대한 연결',
			'profileSetupGuide.title' => '프로필을 나만의 것으로 만드세요',
			'profileSetupGuide.description' => '이 장치에서 이 프로필에 대한 Luroka의 모양과 느낌을 선택하세요. 나중에 설정에서 모든 내용을 변경할 수 있습니다.',
			'profileSetupGuide.appearanceStep' => '1/2 · 화면 스타일',
			'profileSetupGuide.homeStep' => '2/2 · 홈 화면',
			'profileSetupGuide.preview' => '미리보기',
			'profileSetupGuide.previewTitle' => '당신의 집',
			'profileSetupGuide.previewPoster' => '포스터',
			'profileSetupGuide.posterArtwork' => '예술작품만',
			'profileSetupGuide.posterWithDetails' => '포스터 세부정보 표시',
			'profileSetupGuide.musicDescription' => '가능한 경우 세부정보 페이지가 열려 있는 동안 영화나 프로그램의 테마를 재생하세요.',
			'profileSetupGuide.moreThemes' => '더 많은 테마',
			'profileSetupGuide.fewerThemes' => '더 적은 테마',
			'profileSetupGuide.spotlightHeading' => 'Spotlight에는 무엇이 나타나야 합니까?',
			'profileSetupGuide.progressHeading' => '계속해서 시청하고 다음 단계를 진행하세요',
			'profileSetupGuide.skip' => '기본값을 사용하고 시청을 시작하세요',
			'profileSetupGuide.finish' => '시청 시작',
			'profileSetupGuide.back' => '뒤로',
			'profileSetupGuide.kContinue' => '계속',
			'profileSetupGuide.chooseLater' => '나중에 라이브러리 선택',
			'profileSetupGuide.libraryScope' => '이는 이 프로필의 Luroka에 나타나는 내용을 변경합니다. 서버 권한은 변경되지 않습니다.',
			'profileSetupGuide.createdTitle' => '프로필이 생성되었습니다.',
			'profileSetupGuide.createdDescription' => '새 프로필이 준비되었습니다. 소유자는 처음 열 때 이를 개인화할 수 있습니다.',
			'profileSetupGuide.switchProfile' => '이 프로필로 전환',
			'profileSetupGuide.stayHere' => '현재 프로필 유지',
			'animeFavorites.filter' => '애니메이션',
			'animeFavorites.manage' => '애니메이션 관리',
			'animeFavorites.description' => '자동 감지에서는 애니메이션 라이브러리 이름과 사용 가능한 애니메이션 태그 또는 ID를 사용합니다. 라이브러리를 선택하고 개별 즐겨찾기를 수정하세요. 프로필에 대한 선택 사항이 이 기기에 저장됩니다.',
			'animeFavorites.libraries' => '애니메이션 도서관',
			'animeFavorites.libraryHint' => 'Anime이라는 라이브러리는 자동으로 인식됩니다. 분류를 변경할 라이브러리를 선택하세요.',
			'animeFavorites.titles' => '좋아하는 제목',
			'animeFavorites.titleHint' => '제목을 선택하여 애니메이션으로 표시하거나 자동 일치를 수정하세요.',
			'animeFavorites.automatic' => '자동',
			'animeFavorites.include' => '애니메이션',
			'animeFavorites.exclude' => '애니메이션 아님',
			'animeFavorites.automaticIncluded' => '자동 · 애니메이션',
			'animeFavorites.automaticExcluded' => '자동 · 애니메이션 아님',
			'animeFavorites.noLibraries' => '연결된 라이브러리를 사용할 수 없습니다.',
			'animeFavorites.noTitles' => '좋아하는 영화나 프로그램이 없습니다.',
			'animeFavorites.empty' => '즐겨찾는 애니메이션을 찾을 수 없습니다. 애니메이션 라이브러리를 확인하거나 제목을 애니메이션으로 표시하세요.',
			'animeFavorites.saveFailed' => '애니메이션 설정을 저장할 수 없습니다. 다시 시도해 주세요.',
			'addServer.addMediaBrowserTitle' => ({required Object product}) => '${product} 서버 추가',
			'addServer.serverUrls' => '서버 URL',
			'addServer.serverUrlsHelper' => '쉼표로 구분하여 여러 URL을 입력할 수 있습니다.',
			'addServer.findServer' => '서버 찾기',
			'addServer.searchingLocalMediaBrowserServers' => ({required Object product}) => '로컬 ${product} 서버를 찾는 중...',
			'addServer.localMediaBrowserServers' => ({required Object product}) => '저장되어 있고 근처에 있는 ${product} 서버',
			'addServer.username' => '사용자 이름',
			'addServer.password' => '비밀번호',
			'addServer.signIn' => '로그인',
			'addServer.change' => '변경',
			'addServer.required' => '필수',
			'addServer.couldNotReachServer' => ({required Object error}) => '서버에 연결할 수 없습니다: ${error}',
			'addServer.signInFailed' => ({required Object error}) => '로그인 실패: ${error}',
			'addServer.quickConnectFailed' => ({required Object error}) => 'Quick Connect 실패: ${error}',
			'addServer.addPlexTitle' => 'Plex로 로그인',
			'addServer.pinExpired' => '로그인 전에 PIN이 만료되었습니다. 다시 시도하세요.',
			'addServer.failedToRegisterAccount' => ({required Object error}) => '계정 등록 실패: ${error}',
			'addServer.enterMediaBrowserUrlError' => ({required Object product}) => '${product} 서버 URL을 입력하세요',
			'addServer.addConnectionTitle' => '연결 추가',
			'addServer.addConnectionTitleScoped' => ({required Object name}) => '${name}에 추가',
			'addServer.signInWithPlexCard' => 'Plex로 로그인',
			'addServer.signInWithPlexCardSubtitle' => '이 기기를 승인합니다. 공유 서버가 추가됩니다.',
			'addServer.signInWithPlexCardSubtitleScoped' => 'Plex 계정을 승인합니다. 홈 사용자는 프로필이 됩니다.',
			'addServer.connectToMediaBrowserCard' => ({required Object product}) => '${product}에 연결',
			'addServer.connectToMediaBrowserCardSubtitle' => '서버 URL, 사용자 이름, 비밀번호를 입력하세요.',
			'addServer.connectToMediaBrowserCardSubtitleScoped' => ({required Object product, required Object name}) => '${product} 서버에 로그인하세요. ${name}에 연결됩니다.',
			'addServer.borrowFromAnotherProfile' => '다른 프로필에서 빌리기',
			'addServer.borrowFromAnotherProfileSubtitle' => '다른 프로필의 연결을 재사용합니다. PIN으로 보호된 프로필에는 PIN이 필요합니다.',
			'addServer.invalidCredentials' => '사용자 이름 또는 비밀번호가 올바르지 않습니다',
			'addServer.authResponseNotJson' => '인증 응답이 유효한 JSON이 아닙니다',
			'addServer.authResponseIncomplete' => '서버의 로그인 응답이 불완전합니다',
			'addServer.quickConnectRejected' => '서버에서 Quick Connect를 거부했습니다',
			'addServer.quickConnectNotJson' => 'Quick Connect 응답이 유효한 JSON이 아닙니다',
			'addServer.quickConnectMissingFields' => 'Quick Connect 응답에 코드 또는 비밀 키가 없습니다',
			'addServer.quickConnectPollRejected' => '서버에서 Quick Connect 폴링을 거부했습니다',
			'addServer.serverTimedOut' => '서버가 제시간에 응답하지 않았습니다',
			'addServer.responseNotJson' => '서버 응답이 유효한 JSON이 아닙니다',
			'addServer.responseMissingIdentity' => ({required Object product}) => '응답에 ID 또는 서버 이름이 없습니다. 이 서버가 ${product} 서버인가요?',
			'addServer.probeFailed' => ({required Object error}) => '서버에 연결할 수 없습니다: ${error}',
			'addServer.enterAtLeastOneUrl' => ({required Object product}) => '${product} 서버 URL을 하나 이상 입력하세요',
			'addServer.noReachableServer' => ({required Object product}) => '연결 가능한 ${product} 서버를 찾을 수 없습니다',
			'addServer.urlsPointToDifferentServers' => ({required Object product}) => '이 URL들은 서로 다른 ${product} 서버를 가리킵니다',
			'addServer.urlDoesNotMatchServer' => ({required Object product}) => '이 URL은 ${product} 서버와 일치하지 않습니다',
			'addServer.redirectUnsupported' => '서버가 지원되지 않는 URL로 리디렉션했습니다',
			'addServer.redirectDifferentHost' => ({required Object product}) => '서버가 다른 호스트로 리디렉션했습니다. 최종 ${product} URL을 직접 입력하세요.',
			'addServer.redirectInsecure' => '서버가 HTTPS에서 안전하지 않은 URL로 리디렉션했습니다',
			'addServer.redirectUnsupportedEnterFinal' => ({required Object product}) => '서버가 지원되지 않는 URL로 리디렉션했습니다. 최종 ${product} URL을 직접 입력하세요.',
			_ => null,
		};
	}
}
