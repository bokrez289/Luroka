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
class TranslationsPt extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsPt({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.pt,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <pt>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsPt _root = this; // ignore: unused_field

	@override 
	TranslationsPt $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsPt(meta: meta ?? this.$meta);

	// Translations
	@override late final _Translations$mobileLibrary$pt mobileLibrary = _Translations$mobileLibrary$pt._(_root);
	@override late final _Translations$profileStartup$pt profileStartup = _Translations$profileStartup$pt._(_root);
	@override late final _Translations$subtitleUpload$pt subtitleUpload = _Translations$subtitleUpload$pt._(_root);
	@override late final _Translations$personSpotlight$pt personSpotlight = _Translations$personSpotlight$pt._(_root);
	@override late final _Translations$detailExtras$pt detailExtras = _Translations$detailExtras$pt._(_root);
	@override late final _Translations$mobileUi$pt mobileUi = _Translations$mobileUi$pt._(_root);
	@override late final _Translations$family$pt family = _Translations$family$pt._(_root);
	@override late final _Translations$posterDetails$pt posterDetails = _Translations$posterDetails$pt._(_root);
	@override late final _Translations$libraryPolish$pt libraryPolish = _Translations$libraryPolish$pt._(_root);
	@override late final _Translations$showSchedule$pt showSchedule = _Translations$showSchedule$pt._(_root);
	@override late final _Translations$awardsCatalog$pt awardsCatalog = _Translations$awardsCatalog$pt._(_root);
	@override late final _Translations$searchDiscovery$pt searchDiscovery = _Translations$searchDiscovery$pt._(_root);
	@override late final _Translations$lurokaPlayerDesign$pt lurokaPlayerDesign = _Translations$lurokaPlayerDesign$pt._(_root);
	@override late final _Translations$lurokaWorkspace$pt lurokaWorkspace = _Translations$lurokaWorkspace$pt._(_root);
	@override late final _Translations$mobileFixes$pt mobileFixes = _Translations$mobileFixes$pt._(_root);
	@override late final _Translations$downloadsRedesign$pt downloadsRedesign = _Translations$downloadsRedesign$pt._(_root);
	@override late final _Translations$kidsShelf$pt kidsShelf = _Translations$kidsShelf$pt._(_root);
	@override late final _Translations$kidsHome$pt kidsHome = _Translations$kidsHome$pt._(_root);
	@override late final _Translations$tvSettingsV2$pt tvSettingsV2 = _Translations$tvSettingsV2$pt._(_root);
	@override late final _Translations$settingsRedesign$pt settingsRedesign = _Translations$settingsRedesign$pt._(_root);
	@override late final _Translations$onboarding$pt onboarding = _Translations$onboarding$pt._(_root);
	@override late final _Translations$household$pt household = _Translations$household$pt._(_root);
	@override late final _Translations$detailComposition$pt detailComposition = _Translations$detailComposition$pt._(_root);
	@override late final _Translations$kids$pt kids = _Translations$kids$pt._(_root);
	@override late final _Translations$lurokaDiscovery$pt lurokaDiscovery = _Translations$lurokaDiscovery$pt._(_root);
	@override late final _Translations$app$pt app = _Translations$app$pt._(_root);
	@override late final _Translations$appIcon$pt appIcon = _Translations$appIcon$pt._(_root);
	@override late final _Translations$auth$pt auth = _Translations$auth$pt._(_root);
	@override late final _Translations$common$pt common = _Translations$common$pt._(_root);
	@override late final _Translations$tvHints$pt tvHints = _Translations$tvHints$pt._(_root);
	@override late final _Translations$screens$pt screens = _Translations$screens$pt._(_root);
	@override late final _Translations$mediaExtras$pt mediaExtras = _Translations$mediaExtras$pt._(_root);
	@override late final _Translations$update$pt update = _Translations$update$pt._(_root);
	@override late final _Translations$supporter$pt supporter = _Translations$supporter$pt._(_root);
	@override late final _Translations$settings$pt settings = _Translations$settings$pt._(_root);
	@override late final _Translations$themeEditor$pt themeEditor = _Translations$themeEditor$pt._(_root);
	@override late final _Translations$seriesBrowser$pt seriesBrowser = _Translations$seriesBrowser$pt._(_root);
	@override late final _Translations$titlePage$pt titlePage = _Translations$titlePage$pt._(_root);
	@override late final _Translations$tvMenus$pt tvMenus = _Translations$tvMenus$pt._(_root);
	@override late final _Translations$lurokaPlayer$pt lurokaPlayer = _Translations$lurokaPlayer$pt._(_root);
	@override late final _Translations$lurokaSettings$pt lurokaSettings = _Translations$lurokaSettings$pt._(_root);
	@override late final _Translations$playerChrome$pt playerChrome = _Translations$playerChrome$pt._(_root);
	@override late final _Translations$tvLayout$pt tvLayout = _Translations$tvLayout$pt._(_root);
	@override late final _Translations$studios$pt studios = _Translations$studios$pt._(_root);
	@override late final _Translations$dashboard$pt dashboard = _Translations$dashboard$pt._(_root);
	@override late final _Translations$lurokaCatalog$pt lurokaCatalog = _Translations$lurokaCatalog$pt._(_root);
	@override late final _Translations$referenceDetails$pt referenceDetails = _Translations$referenceDetails$pt._(_root);
	@override late final _Translations$lurokaThemes$pt lurokaThemes = _Translations$lurokaThemes$pt._(_root);
	@override late final _Translations$customPerformance$pt customPerformance = _Translations$customPerformance$pt._(_root);
	@override late final _Translations$homeLayout$pt homeLayout = _Translations$homeLayout$pt._(_root);
	@override late final _Translations$screenTime$pt screenTime = _Translations$screenTime$pt._(_root);
	@override late final _Translations$activityStats$pt activityStats = _Translations$activityStats$pt._(_root);
	@override late final _Translations$search$pt search = _Translations$search$pt._(_root);
	@override late final _Translations$hotkeys$pt hotkeys = _Translations$hotkeys$pt._(_root);
	@override late final _Translations$fileInfo$pt fileInfo = _Translations$fileInfo$pt._(_root);
	@override late final _Translations$mediaMenu$pt mediaMenu = _Translations$mediaMenu$pt._(_root);
	@override late final _Translations$rateSheet$pt rateSheet = _Translations$rateSheet$pt._(_root);
	@override late final _Translations$accessibility$pt accessibility = _Translations$accessibility$pt._(_root);
	@override late final _Translations$tooltips$pt tooltips = _Translations$tooltips$pt._(_root);
	@override late final _Translations$audioTracks$pt audioTracks = _Translations$audioTracks$pt._(_root);
	@override late final _Translations$videoControls$pt videoControls = _Translations$videoControls$pt._(_root);
	@override late final _Translations$messages$pt messages = _Translations$messages$pt._(_root);
	@override late final _Translations$sourceLibraries$pt sourceLibraries = _Translations$sourceLibraries$pt._(_root);
	@override late final _Translations$subtitlingStyling$pt subtitlingStyling = _Translations$subtitlingStyling$pt._(_root);
	@override late final _Translations$mpvConfig$pt mpvConfig = _Translations$mpvConfig$pt._(_root);
	@override late final _Translations$dialog$pt dialog = _Translations$dialog$pt._(_root);
	@override late final _Translations$profiles$pt profiles = _Translations$profiles$pt._(_root);
	@override late final _Translations$connections$pt connections = _Translations$connections$pt._(_root);
	@override late final _Translations$serversAccounts$pt serversAccounts = _Translations$serversAccounts$pt._(_root);
	@override late final _Translations$accountPreferences$pt accountPreferences = _Translations$accountPreferences$pt._(_root);
	@override late final _Translations$discover$pt discover = _Translations$discover$pt._(_root);
	@override late final _Translations$errors$pt errors = _Translations$errors$pt._(_root);
	@override late final _Translations$libraries$pt libraries = _Translations$libraries$pt._(_root);
	@override late final _Translations$about$pt about = _Translations$about$pt._(_root);
	@override late final _Translations$serverSelection$pt serverSelection = _Translations$serverSelection$pt._(_root);
	@override late final _Translations$hubDetail$pt hubDetail = _Translations$hubDetail$pt._(_root);
	@override late final _Translations$logs$pt logs = _Translations$logs$pt._(_root);
	@override late final _Translations$startup$pt startup = _Translations$startup$pt._(_root);
	@override late final _Translations$licenses$pt licenses = _Translations$licenses$pt._(_root);
	@override late final _Translations$navigation$pt navigation = _Translations$navigation$pt._(_root);
	@override late final _Translations$explore$pt explore = _Translations$explore$pt._(_root);
	@override late final _Translations$liveTv$pt liveTv = _Translations$liveTv$pt._(_root);
	@override late final _Translations$collections$pt collections = _Translations$collections$pt._(_root);
	@override late final _Translations$playlists$pt playlists = _Translations$playlists$pt._(_root);
	@override late final _Translations$music$pt music = _Translations$music$pt._(_root);
	@override late final _Translations$watchTogether$pt watchTogether = _Translations$watchTogether$pt._(_root);
	@override late final _Translations$downloads$pt downloads = _Translations$downloads$pt._(_root);
	@override late final _Translations$shaders$pt shaders = _Translations$shaders$pt._(_root);
	@override late final _Translations$companionRemote$pt companionRemote = _Translations$companionRemote$pt._(_root);
	@override late final _Translations$videoSettings$pt videoSettings = _Translations$videoSettings$pt._(_root);
	@override late final _Translations$performanceOverlay$pt performanceOverlay = _Translations$performanceOverlay$pt._(_root);
	@override late final _Translations$externalPlayer$pt externalPlayer = _Translations$externalPlayer$pt._(_root);
	@override late final _Translations$metadataEdit$pt metadataEdit = _Translations$metadataEdit$pt._(_root);
	@override late final _Translations$matchScreen$pt matchScreen = _Translations$matchScreen$pt._(_root);
	@override late final _Translations$serverTasks$pt serverTasks = _Translations$serverTasks$pt._(_root);
	@override late final _Translations$trakt$pt trakt = _Translations$trakt$pt._(_root);
	@override late final _Translations$seerr$pt seerr = _Translations$seerr$pt._(_root);
	@override late final _Translations$services$pt services = _Translations$services$pt._(_root);
	@override late final _Translations$offlineRecovery$pt offlineRecovery = _Translations$offlineRecovery$pt._(_root);
	@override late final _Translations$releaseUpdates$pt releaseUpdates = _Translations$releaseUpdates$pt._(_root);
	@override late final _Translations$profileIntegrations$pt profileIntegrations = _Translations$profileIntegrations$pt._(_root);
	@override late final _Translations$profileSetupGuide$pt profileSetupGuide = _Translations$profileSetupGuide$pt._(_root);
	@override late final _Translations$animeFavorites$pt animeFavorites = _Translations$animeFavorites$pt._(_root);
	@override late final _Translations$addServer$pt addServer = _Translations$addServer$pt._(_root);
}

// Path: mobileLibrary
class _Translations$mobileLibrary$pt extends Translations$mobileLibrary$en {
	_Translations$mobileLibrary$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get pickerSubtitle => 'Escolha uma coleção para explorar';
	@override String get searchLibraries => 'Pesquisar bibliotecas';
	@override String get noLibraries => 'Nenhuma biblioteca correspondente';
	@override String get ascending => 'Ascendente';
	@override String get descending => 'Descendente';
	@override String get sort => 'Classificar';
	@override String unwatchedCount({required Object count}) => '${count} episódios não assistidos';
	@override String get latestEpisode => 'Último episódio';
}

// Path: profileStartup
class _Translations$profileStartup$pt extends Translations$profileStartup$en {
	_Translations$profileStartup$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get autoLogin => 'Abra o último perfil usado';
	@override String get autoLoginHint => 'Abra automaticamente o último perfil quando não for necessário um PIN.';
	@override String get allowKidsExit => 'Permitir sair do perfil infantil sem o PIN dos pais';
	@override String get allowKidsExitHint => 'Permite que a criança mude para outro perfil sem o PIN dos pais. Os PINs dos perfis continuam valendo.';
	@override String get chooseKidsConnection => 'Escolha uma conta ou servidor diferente';
	@override String get chooseKidsConnectionHint => 'Após salvar, conecte uma conta separada ou escolha uma conexão de outro perfil.';
}

// Path: subtitleUpload
class _Translations$subtitleUpload$pt extends Translations$subtitleUpload$en {
	_Translations$subtitleUpload$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get chooseFile => 'Carregar arquivo de legenda';
	@override String get hint => 'Escolha o idioma acima e carregue um arquivo SRT, ASS, SSA ou VTT para este servidor.';
	@override String get success => 'Legenda enviada para o servidor. Ele aparecerá quando o servidor atualizar o item.';
	@override String get failed => 'Não foi possível carregar a legenda. Verifique as permissões do arquivo e do servidor.';
}

// Path: personSpotlight
class _Translations$personSpotlight$pt extends Translations$personSpotlight$en {
	_Translations$personSpotlight$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get inYourLibraries => 'em suas bibliotecas';
	@override String libraryTitles({required Object n}) => 'Em suas bibliotecas · Títulos ${n}';
	@override String get readBiography => 'Leia a biografia';
	@override String get newestFirst => 'O mais novo primeiro';
	@override String get oldestFirst => 'Mais antigo primeiro';
	@override String get titleAscending => 'Título A – Z';
	@override String get sortTitles => 'Classificar filmografia';
	@override String unwatchedEpisodes({required Object n}) => '${n} episódios não assistidos';
	@override String copies({required Object n}) => 'Cópias da biblioteca ${n}';
	@override String versions({required Object n}) => 'Versões do arquivo ${n}';
	@override String get retryTitles => 'Não foi possível carregar todos os títulos. Tentar novamente';
}

// Path: detailExtras
class _Translations$detailExtras$pt extends Translations$detailExtras$en {
	_Translations$detailExtras$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get onlineVideos => 'Reboques e extras';
	@override String get reviews => 'Avaliações';
	@override String get readReview => 'Leia a crítica completa';
	@override String directedBy({required Object name}) => 'Mais dirigido por ${name}';
	@override String get previewUnavailable => 'Esta pré-visualização não pôde ser reproduzida. Você pode abri-lo em seu aplicativo original.';
	@override String get openExternally => 'Abra o vídeo original';
}

// Path: mobileUi
class _Translations$mobileUi$pt extends Translations$mobileUi$en {
	_Translations$mobileUi$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get readMore => 'Leia mais';
	@override String get readLess => 'Mostrar menos';
	@override String get playbackTools => 'Opções de reprodução';
	@override String get streamingQuality => 'Qualidade de transmissão';
	@override String get fileVersions => 'Versões de arquivo';
	@override String get qualityAndVersions => 'Qualidade de streaming e versões de arquivos';
	@override String get hidePlaybackTools => 'Ocultar ferramentas de reprodução';
	@override String remaining({required Object time}) => '${time} esquerda';
	@override String endsAt({required Object time}) => 'Termina em ${time}';
	@override String get collection => 'Sua coleção';
	@override String get nowPlaying => 'AGORA JOGANDO';
	@override String get popularLibrary => 'Popular em sua biblioteca';
	@override String get weeklyLibrary => 'Tendências na sua biblioteca esta semana';
}

// Path: family
class _Translations$family$pt extends Translations$family$en {
	_Translations$family$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Perfis e família';
	@override String get yourPeople => 'Seu povo';
	@override String get manageHint => 'Gerencie pessoas, a segurança das crianças e as atividades de visualização neste dispositivo.';
	@override String get people => 'Pessoas';
	@override String peopleCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n,
		one: '${n} pessoa',
		other: '${n} pessoas',
	);
	@override String kidsCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n,
		one: '${n} filho',
		other: '${n} crianças',
	);
	@override String get you => 'Você';
	@override String get adult => 'Adulto';
	@override String get child => 'Criança';
	@override String get adultTeen => 'Adulto ou adolescente';
	@override String get adultHint => 'Seu próprio perfil, perfil opcional PIN e suas próprias conexões de servidor.';
	@override String get childHint => 'Limites de idade, bibliotecas seguras e uma aparência adequada para crianças. O PIN dos pais protege estas definições.';
	@override String upToAge({required Object age}) => 'Até a idade ${age}';
	@override String get allAges => 'Todas as idades';
	@override String get switchProfile => 'Mudar perfil';
	@override String get switchHint => 'Escolha quem está assistindo. Gerenciar uma pessoa não troca de perfil.';
	@override String get addPerson => 'Adicionar pessoa';
	@override String get addChild => 'Adicionar filho';
	@override String get addHint => 'Crie um perfil de adulto, adolescente ou criança neste dispositivo.';
	@override String get emptyPeople => 'Abra espaço para todos que assistem com você.';
	@override String get emptyKids => 'Ainda não há perfis infantis. Adicione uma criança para escolher limites de idade e bibliotecas seguras.';
	@override String get safety => 'Crianças e segurança';
	@override String get safetyHint => 'PIN dos pais, perfis infantis e limites de idade.';
	@override String get protection => 'Proteção';
	@override String get kidsProfiles => 'Perfis infantis';
	@override String get backupHistory => 'Backup e histórico';
	@override String get parentPinOn => 'PIN dos pais ativado';
	@override String get profilePin => 'PIN do perfil';
	@override String get confirmParentPin => 'Confirmar PIN dos pais';
	@override String get parentPinOff => 'PIN dos pais não definido';
	@override String get missingPin => 'Defina um PIN dos pais para proteger estas definições.';
	@override String get hideScope => 'Oculte a atividade das crianças em Continuar assistindo neste perfil Luroka. Isso não altera o histórico de exibição do servidor compartilhado.';
	@override String get localScope => 'Perfis e restrições infantis são armazenados neste dispositivo. Perfis que usam a mesma conta de servidor ainda compartilham o progresso de exibição dessa conta.';
	@override String get clearHistoryConfirm => 'Permitir que títulos assistidos por crianças apareçam em Continuar assistindo novamente? Perfis infantis, restrições, estatísticas de tempo de visualização e histórico de exibição do servidor serão mantidos.';
	@override String get editRestrictions => 'Editar restrições para crianças';
	@override String get activity => 'Visualizando atividade';
	@override String namedActivity({required Object name}) => 'Atividade de visualização de ${name}';
	@override String get thisProfile => 'Este perfil';
	@override String get activityScope => 'Tempo de reprodução registrado por Luroka neste dispositivo para o perfil ativo. Estas são estatísticas, não limites de visualização ou histórico completo do servidor.';
	@override String get activityUnavailable => 'A atividade de visualização ainda não está disponível para este perfil.';
	@override String get finished => 'Concluído';
}

// Path: posterDetails
class _Translations$posterDetails$pt extends Translations$posterDetails$en {
	_Translations$posterDetails$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get showThemeMusic => 'Tocar música tema';
	@override String get showThemeMusicDescription => 'Reproduza o tema de um filme ou programa enquanto sua página de detalhes estiver aberta, quando disponível no servidor.';
	@override String get catalogEpisodeInfo => 'Mostrar contagem de episódios e tempo de execução em cartões de catálogo';
	@override String get catalogEpisodeInfoDescription => 'Mostre a contagem de episódios e a duração média nos pôsteres do Descobrir.';
	@override String get title => 'Detalhes do pôster';
	@override String get description => 'Mostre o título, o ano e a classificação IMDb abaixo dos pôsteres no Studio, Search, Descobrir e Bibliotecas. As classificações IMDb ausentes permanecem ocultas. Desative para pôsteres somente com arte.';
}

// Path: libraryPolish
class _Translations$libraryPolish$pt extends Translations$libraryPolish$en {
	_Translations$libraryPolish$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get compactTvNavigation => 'Navegação de biblioteca compacta';
	@override String get compactTvNavigationDescription => 'Mostre seções da biblioteca e navegue pelas opções em um menu deslizante, deixando mais espaço para pôsteres.';
	@override String get openLibraryMenu => 'Abrir menu da biblioteca';
	@override String get posterDetails => 'Detalhes do pôster';
	@override String get showPosterDetails => 'Mostrar detalhes do pôster · nome, ano e IMDb';
	@override String get hidePosterDetails => 'Ocultar detalhes do pôster';
	@override String get overview => 'Visão geral';
	@override String get refreshing => 'Biblioteca atualizada…';
	@override String get serverCollections => 'Todas as coleções neste servidor';
	@override String get serverPlaylists => 'Todas as playlists de vídeos neste servidor';
	@override String get libraryCollections => 'Coleções nesta biblioteca';
	@override String get searchCollections => 'Pesquisar coleções';
	@override String get searchPlaylists => 'Pesquisar listas de reprodução';
	@override String get searchHint => 'Pesquisar por nome';
	@override String get titleAscending => 'Título A – Z';
	@override String get titleDescending => 'Título Z – A';
	@override String get clearFilters => 'Limpar filtros';
	@override String get playlistEmptyTitle => 'Suas noites de cinema, na sua ordem';
	@override String get playlistEmptyHint => 'Abra o menu Mais de um título e escolha Adicionar à lista de reprodução para criar sua primeira lista de reprodução.';
	@override String get noMatches => 'Nenhum nome correspondente';
	@override String get indexing => 'Pesquisando o catálogo completo…';
}

// Path: showSchedule
class _Translations$showSchedule$pt extends Translations$showSchedule$en {
	_Translations$showSchedule$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get today => 'Hoje';
	@override String get tomorrow => 'Amanhã';
	@override String get latestUpcoming => 'Mais recentes e futuros';
	@override String get latestEpisode => 'Último episódio';
	@override String get upcoming => 'Próximos';
	@override String get inLibrary => 'Na sua biblioteca';
	@override String get notInLibrary => 'Não está na sua biblioteca';
	@override String get notYetAired => 'Ainda não foi ao ar';
	@override String episode({required Object number}) => 'Episódio ${number}';
	@override String get caughtUp => 'Vocês estão todos em dia';
	@override String get finished => 'Você terminou esta série';
	@override String nextAirs({required Object date}) => 'Próximo episódio vai ao ar ${date}';
	@override String get watchBeginning => 'Assista desde o início';
	@override String get replay => 'Repetir';
	@override String get playNext => 'Jogue a seguir';
}

// Path: awardsCatalog
class _Translations$awardsCatalog$pt extends Translations$awardsCatalog$en {
	_Translations$awardsCatalog$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get awards => 'Prêmios';
	@override String get customize => 'Personalizar';
	@override String get chooseShelves => 'Personalize a descoberta';
	@override String get shelvesDescription => 'Escolha as linhas desejadas no Descobrir. As linhas de prêmios mostram os vencedores de suas bibliotecas. Suas escolhas são salvas para este perfil.';
	@override String get restoreShelves => 'Restaurar padrões';
	@override String get charts => 'Gráficos IMDb';
	@override String get generalShelves => 'Populares e tendências';
	@override String get saveShelvesFailed => 'Não foi possível salvar suas escolhas do Descobrir. Por favor, tente novamente.';
	@override String get comedyActress => 'Atriz principal · Comédia';
	@override String get leadDramaActor => 'Ator principal · Drama';
	@override String get leadDramaActress => 'Atriz principal · Drama';
	@override String get comedySupportingActor => 'Ator Coadjuvante · Comédia';
	@override String get comedySupportingActress => 'Atriz Coadjuvante · Comédia';
	@override String get leadingPerformance => 'Urso de Prata · Melhor Performance de Líder';
	@override String get globesComedySeries => 'Melhor série de televisão · Musical ou comédia';
	@override String get limitedSupportingActor => 'Ator Coadjuvante · Série Limitada ou Filme';
	@override String get limitedSupportingActress => 'Atriz Coadjuvante · Série Limitada ou Filme';
	@override String get berlinDocumentary => 'Prêmio Documentário Berlinale';
	@override String get title => 'Prêmios e festivais';
	@override String get chooseCategory => 'Escolha uma categoria de premiação';
	@override String get winners => 'Vencedores';
	@override String get nominees => 'Nomeados';
	@override String get releaseDecade => 'Década de lançamento';
	@override String get allYears => 'Todos os anos';
	@override String get loading => 'Carregando títulos de prêmios…';
	@override String get matching => 'Encontrar esses títulos em suas bibliotecas…';
	@override String get unavailable => 'Os dados do prêmio não estão disponíveis no momento. Tente novamente.';
	@override String get empty => 'Não há títulos correspondentes nas suas bibliotecas visíveis para esta categoria.';
	@override String get coverage => 'A adesão vem do Wikidata e pode ser incompleta. As categorias de ator e diretor mostram os filmes ou espetáculos pelos quais foram premiados. Os anos referem-se ao lançamento do título, não à cerimônia.';
	@override String get picture => 'Melhor Foto';
	@override String get film => 'Melhor Filme';
	@override String get international => 'Melhor Filme Internacional';
	@override String get internationalFilm => 'Melhor Filme Internacional';
	@override String get nonEnglishFilm => 'Melhor Filme Não na Língua Inglesa';
	@override String get animated => 'Melhor Animação';
	@override String get animatedFilm => 'Melhor Filme de Animação';
	@override String get documentary => 'Melhor Documentário';
	@override String get director => 'Melhor Diretor';
	@override String get actor => 'Melhor Ator';
	@override String get actress => 'Melhor Atriz';
	@override String get supportingActor => 'Melhor Ator Coadjuvante';
	@override String get supportingActress => 'Melhor Atriz Coadjuvante';
	@override String get originalScreenplay => 'Melhor Roteiro Original';
	@override String get adaptedScreenplay => 'Melhor Roteiro Adaptado';
	@override String get screenplay => 'Melhor Roteiro';
	@override String get cinematography => 'Melhor Fotografia';
	@override String get editing => 'Melhor Edição';
	@override String get score => 'Melhor trilha sonora original';
	@override String get song => 'Melhor Canção Original';
	@override String get sound => 'Melhor som';
	@override String get effects => 'Melhores efeitos visuais';
	@override String get productionDesign => 'Melhor Design de Produção';
	@override String get costume => 'Melhor figurino';
	@override String get makeup => 'Melhor maquiagem e penteado';
	@override String get dramaSeries => 'Excelente série dramática';
	@override String get comedySeries => 'Excelente série de comédia';
	@override String get limitedSeries => 'Excelente série limitada';
	@override String get animatedProgram => 'Excelente programa de animação';
	@override String get comedyActor => 'Ator principal · Comédia';
	@override String get limitedActor => 'Ator principal · Série limitada ou filme';
	@override String get limitedActress => 'Atriz principal · Série limitada ou filme';
	@override String get limitedDirecting => 'Direção · Série Limitada ou Filme';
	@override String get britishFilm => 'Melhor Filme Britânico';
	@override String get goldenBear => 'Urso Dourado';
	@override String get grandJury => 'Grande Prêmio do Júri';
	@override String get jury => 'Prêmio do Júri';
	@override String get teddy => 'Prêmio Teddy';
	@override String get goldenLion => 'Leão Dourado';
	@override String get volpiActor => 'Copa Volpi · Melhor Ator';
	@override String get volpiActress => 'Copa Volpi · Melhor Atriz';
	@override String get queerLion => 'Leão Queer';
	@override String get dramaFilm => 'Melhor Filme · Drama';
	@override String get comedyFilm => 'Melhor Filme · Musical ou Comédia';
	@override String get dramaActor => 'Melhor Ator · Drama';
	@override String get dramaActress => 'Melhor Atriz · Drama';
	@override String get usDramatic => 'Prêmio do Grande Júri Dramático dos EUA';
	@override String get documentaryJury => 'Grande Prêmio do Júri de Documentário';
	@override String get worldCinema => 'Prêmio do Grande Júri do Cinema Mundial';
	@override String get dramaticAudience => 'Prêmio do Público Dramático dos EUA';
	@override String get usDirecting => 'Prêmio de Direção nos EUA';
	@override String get peopleChoice => 'Prêmio Escolha do Povo';
	@override String get canadianFilm => 'Melhor Filme Canadense';
	@override String get firstFeature => 'Melhor primeiro recurso';
	@override String get cassavetes => 'Prémio João Cassavetes';
	@override String get scienceFiction => 'Melhor Filme de Ficção Científica';
	@override String get fantasy => 'Melhor Filme de Fantasia';
	@override String get horror => 'Melhor Filme de Terror';
	@override String get action => 'Melhor Filme de Ação ou Aventura';
	@override String get thriller => 'Melhor filme de suspense';
}

// Path: searchDiscovery
class _Translations$searchDiscovery$pt extends Translations$searchDiscovery$en {
	_Translations$searchDiscovery$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get suggestions => 'Algo para assistir';
	@override String get collections => 'Prêmios e coleções';
	@override String get collectionsHint => 'Vencedores de prêmios e gráficos selecionados de suas bibliotecas';
	@override String get all => 'Todas as descobertas';
	@override String get awards => 'Prêmios e paradas';
}

// Path: lurokaPlayerDesign
class _Translations$lurokaPlayerDesign$pt extends Translations$lurokaPlayerDesign$en {
	_Translations$lurokaPlayerDesign$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get seeking => 'Buscar visualização';
	@override String get keepWatching => 'Continue assistindo';
	@override String get upNext => 'A seguir';
	@override String playingIn({required Object seconds}) => 'Jogando em ${seconds}';
}

// Path: lurokaWorkspace
class _Translations$lurokaWorkspace$pt extends Translations$lurokaWorkspace$en {
	_Translations$lurokaWorkspace$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get everyday => 'Todos os dias';
	@override String get homeDiscovery => 'Casa e descoberta';
	@override String get librariesAccounts => 'Bibliotecas e contas';
	@override String get profilesFamily => 'Perfis e família';
	@override String get thisDevice => 'Este dispositivo';
	@override String get thisProfile => 'Este perfil';
	@override String get searchSettings => 'Configurações de pesquisa';
	@override String get savedAutomatically => 'As alterações são salvas automaticamente. Diário e Avançado alteram apenas os controles mostrados.';
	@override String get audioSubtitles => 'Áudio e legendas';
	@override String get audioDescription => 'Saída de som, volume e aparência de legendas. Os idiomas preferidos são definidos por conta do servidor usando as preferências da conta quando conectado.';
	@override String get pictureSound => 'Imagem e som';
	@override String get pictureDescription => 'Correspondência de taxa de quadros, resolução, ajuste HDR e Dolby Vision para este dispositivo.';
	@override String get engineDescription => 'Mecanismo de player, decodificação, configuração personalizada e regras avançadas de reprodução.';
	@override String get networkStreaming => 'Rede e streaming';
	@override String get networkDescription => 'Qualidade de streaming, preferências de codec de reprodução direta e opções de largura de banda.';
	@override String get homeOptions => 'Opções de casa';
	@override String get refreshHome => 'Atualizar página inicial e popular agora';
	@override String get customizeHome => 'Personalize a página inicial';
	@override String get spotlight => 'Destaque inicial';
	@override String get rotateSpotlight => 'Girar automaticamente os títulos em destaque';
	@override String get rotateDescription => 'Gire enquanto o Início estiver ocioso. A interação pausa a rotação; navegar nas prateleiras, abrir uma página ou sair do aplicativo o pausa completamente.';
	@override String get rotationInterval => 'Tempo entre títulos em destaque';
}

// Path: mobileFixes
class _Translations$mobileFixes$pt extends Translations$mobileFixes$en {
	_Translations$mobileFixes$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get connectionRecoveryHint => 'Servidor indisponível? Gerencie suas contas ou conecte outro servidor.';
}

// Path: downloadsRedesign
class _Translations$downloadsRedesign$pt extends Translations$downloadsRedesign$en {
	_Translations$downloadsRedesign$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get shelfSize => 'Itens por prateleira';
	@override String get shelfSizeHint => 'Mostre 16, 32 ou 48 itens nas prateleiras Continuar assistindo e recomendações. Os servidores podem retornar menos títulos disponíveis.';
	@override String get subtitle => 'Seus favoritos, prontos para a viagem.';
	@override String get transfers => 'Transferências';
	@override String get ready => 'Pronto off-line';
	@override String get active => 'Baixando';
	@override String get waiting => 'Esperando';
	@override String get downloaded => 'Baixado';
	@override String get speed => 'Velocidade de download';
	@override String get notificationProgress => '{progress} · {networkSpeed} · {timeRemaining} restante';
}

// Path: kidsShelf
class _Translations$kidsShelf$pt extends Translations$kidsShelf$en {
	_Translations$kidsShelf$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get movieShelf => 'Hora do filme';
	@override String get showShelf => 'Encontre seu próximo programa';
	@override String get aurora => 'Aurora – azul-petróleo profundo e limão';
	@override String get marquee => 'Tenda – veludo e ouro';
	@override String get electric => 'Elétrico – índigo e gelo';
	@override String get midnight => 'Meia-Noite – aço e âmbar';
	@override String get yourShelf => 'Sua estante de filmes';
	@override String get all => 'Tudo';
	@override String get pickSomething => 'O que você quer assistir?';
}

// Path: kidsHome
class _Translations$kidsHome$pt extends Translations$kidsHome$en {
	_Translations$kidsHome$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get everything => 'Para você';
	@override String get keepWatching => 'Continue assistindo';
	@override String get emptyFilter => 'Nada aqui ainda. Experimente Para você ou peça ao seu adulto para adicionar algo que você adora.';
}

// Path: tvSettingsV2
class _Translations$tvSettingsV2$pt extends Translations$tvSettingsV2$en {
	_Translations$tvSettingsV2$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get moreThemes => 'Mais temas e cores personalizadas';
	@override String get moreThemesHint => 'Abra todas as predefinições disponíveis e opções de temas personalizados.';
	@override String get previewLive => 'Visualização ao vivo';
	@override String get previewIllustration => 'Exemplo de visualização';
	@override String previewShelfCount({required Object count}) => 'Até itens ${count} por prateleira';
	@override String get simple => 'Simples';
	@override String get homeNavigation => 'Início e navegação';
	@override String get libraryCards => 'Biblioteca e Cartões';
	@override String get accountsLibraries => 'Contas e bibliotecas';
	@override String get profilesFamily => 'Perfis e família';
	@override String get aboutSupport => 'Sobre e suporte';
	@override String get playback => 'Reprodução';
	@override String get homeHint => 'Escolha o que aparece na página inicial e na navegação.';
	@override String get libraryHint => 'Ajuste tamanhos de pôsteres, rótulos e indicadores observados.';
	@override String get advancedPlayback => 'Mecanismo de player e streaming';
	@override String get advancedPlaybackHint => 'Player, saída de vídeo, streaming e opções avançadas de reprodução.';
	@override String get advancedTools => 'Diagnósticos e backups';
	@override String get advancedToolsHint => 'Logs, solução de problemas, backup e redefinição de configurações.';
	@override String get themePreview => 'Visualização do tema';
	@override String get libraryPreview => 'Visualização da biblioteca';
	@override String get homePreview => 'Visualização inicial';
	@override String get subtitlePreview => 'Visualização da legenda';
	@override String get subtitleSample => 'Suas legendas ficarão assim.';
	@override String get previewPlaceholder => 'Sua arte aparece aqui';
	@override String get posterSize => 'Tamanho do pôster';
	@override String get serverRecommendations => 'Recomendações iniciais do seu servidor';
	@override String get tvLayout => 'Usar layout de TV';
	@override String get hardwareDecode => 'Use decodificação de vídeo de hardware';
	@override String get serverNames => 'Mostrar nomes de servidores nas linhas iniciais';
	@override String get settingsSaved => 'As alterações são salvas automaticamente.';
	@override String get morePlayback => 'Reprodução avançada';
	@override String get screenDisplay => 'Imagem e som';
	@override String get engine => 'Motor do jogador';
	@override String get network => 'Streaming e rede';
	@override String get performance => 'Desempenho';
	@override String get simpleAudio => 'Idiomas e aparência de legendas';
}

// Path: settingsRedesign
class _Translations$settingsRedesign$pt extends Translations$settingsRedesign$en {
	_Translations$settingsRedesign$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get themeEffects => 'Tema e efeitos';
	@override String get libraryLayout => 'Layout da biblioteca';
	@override String get posterInformation => 'Informações do pôster';
	@override String get libraryBehavior => 'Comportamento da biblioteca';
	@override String get appearanceHint => 'Personalize a aparência, o layout e o comportamento do Luroka.';
	@override String get livePreview => 'Visualização ao vivo';
	@override String get previewHint => 'Veja como ficará sua biblioteca com as configurações atuais.';
	@override String get showLiveTv => 'Mostrar TV ao vivo';
	@override String get showLiveTvHint => 'Mostrar TV ao vivo na navegação quando um servidor conectado oferecer suporte. Isso não altera seu servidor.';
	@override String get aboutTagline => 'Sua mídia. Seu espaço.';
	@override String get aboutDescription => 'Luroka reúne suas bibliotecas Plex, Jellyfin e Emby em um player cinematográfico para telefones, TVs e desktops.';
	@override String get aboutFeatures => 'Navegue em suas bibliotecas, retome filmes e programas, personalize perfis, aproveite downloads e assista juntos. A TV ao vivo está disponível com um servidor compatível.';
	@override String get services => 'Conecte seu mundo';
	@override String get updateSource => 'Fonte de atualização';
	@override String get updateSourceHint => 'Endereço HTTPS do seu feed de lançamento Luroka. Seu distribuidor pode pré-configurar isso no aplicativo.';
	@override String get updateNotConfigured => 'As atualizações automáticas não estão configuradas para esta compilação.';
	@override String get downloadInstall => 'Baixe e instale';
	@override String get installUpdate => 'Instalar atualização';
	@override String get downloading => 'Baixando atualização…';
	@override String get downloadFailed => 'Não foi possível baixar ou verificar a atualização. Por favor, tente novamente.';
	@override String get installPermission => 'Permita que Luroka instale atualizações nas configurações do Android, retorne e selecione Instalar atualização.';
	@override String get updateReady => 'Download verificado. Pronto para instalar.';
	@override String get releaseNotes => 'Notas de lançamento';
	@override String get invalidFeed => 'Insira um endereço de feed de atualização HTTPS válido.';
}

// Path: onboarding
class _Translations$onboarding$pt extends Translations$onboarding$en {
	_Translations$onboarding$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get connectStep => '01 · Conectar';
	@override String get connectTitle => 'Bem-vindo ao Luroka';
	@override String get connectHint => 'Faça login para trazer suas bibliotecas aqui.';
	@override String get serverAddressHint => 'Digite o endereço do seu servidor ou escolha um servidor encontrado na sua rede.';
	@override String get serverSignInHint => 'Use o nome de usuário e a senha do servidor para conectar suas bibliotecas.';
	@override String get serverAddressTitle => 'Endereço do servidor';
	@override String get serverAccountTitle => 'Sua conta do servidor';
	@override String get plexHomeTitle => 'Escolha seu usuário doméstico Plex';
	@override String get plexHomeHint => 'Selecione o usuário Plex cujas bibliotecas você deseja usar. A seguir, você configurará seu perfil Luroka.';
	@override String get chooseService => 'Escolha seu serviço';
	@override String get profileStep => '02 · Seu perfil';
	@override String get profileTitle => 'Sinta-se em casa.';
	@override String get profileHint => 'Escolha um nome e um avatar para o seu perfil Luroka. Sua conta conectada permanece a mesma.';
	@override String get readyStep => '03 · Pronto para assistir';
	@override String get readyTitle => 'Um pouco mais de você.';
	@override String get readyHint => 'Reúna seus serviços ou abra espaço para outra pessoa. Você sempre pode fazer isso mais tarde.';
	@override String get addService => 'Conecte outro serviço';
	@override String get editProfile => 'Edite seu nome e avatar';
	@override String get connected => 'Conectado e pronto';
	@override String get backToProfile => 'Voltar ao seu perfil';
	@override String get showOtherPlexHome => 'Mostrar outros membros da página inicial Plex';
	@override String get showOtherPlexHomeHint => 'Desativado por padrão. Seus perfis Luroka e membros do Plex Home que você usou permanecem visíveis. Ative para escolher outra pessoa.';
}

// Path: household
class _Translations$household$pt extends Translations$household$en {
	_Translations$household$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sua família Luroka';
	@override String get welcome => 'Torne Luroka seu';
	@override String get welcomeHint => 'Sua primeira conta está conectada. Personalize seu perfil ou adicione outra pessoa antes de começar a assistir.';
	@override String get profiles => 'Perfis e família';
	@override String get manageHint => 'Adicione pessoas, altere fotos e gerencie as conexões de cada perfil.';
	@override String get addProfile => 'Adicionar perfil Luroka';
	@override String get addHint => 'Cada pessoa pode conectar seu próprio login Plex, Emby ou Jellyfin. Somente conexões adicionadas ao seu perfil aparecem para eles.';
	@override String get sharedHint => 'A reutilização da conexão de outro perfil compartilha o status assistido do usuário do servidor e o progresso da reprodução. Escolha um login separado para visualização independente do histórico.';
	@override String get personalise => 'Personalizar perfil';
	@override String get changePicture => 'Alterar foto do perfil';
	@override String get pictureHint => 'Escolha um avatar Luroka ou uma foto. Isto altera a imagem apenas neste dispositivo; sua conta do servidor permanece intacta.';
	@override String get serverPicture => 'Use a imagem/iniciais do servidor';
	@override String get choosePhoto => 'Escolha uma foto';
	@override String get photoHint => 'JPEG, PNG ou outra imagem suportada, até 10 MB. As fotos são redimensionadas e armazenadas neste dispositivo.';
	@override String get pictureSaved => 'Foto do perfil atualizada';
	@override String get pictureFailed => 'Não foi possível atualizar a foto do perfil. Experimente uma imagem suportada de até 10 MB.';
	@override String get saveFailed => 'Não foi possível salvar as configurações do perfil. Por favor, tente novamente.';
	@override String get startWatching => 'Comece a assistir';
	@override String get manageProfiles => 'Gerencie ou alterne perfis';
	@override String get addLater => 'Você pode adicionar mais pessoas posteriormente em Configurações → Perfis e família.';
	@override String get connectionRequired => 'Adicione uma conexão de servidor para concluir a configuração deste perfil.';
	@override String get mountain => 'Montanha';
	@override String get orbit => 'Explorador';
	@override String get waves => 'Oceano';
	@override String get blossom => 'Flor';
	@override String get lightning => 'Relâmpago';
	@override String get moon => 'Lua';
	@override String get avatarGallery => 'Escolha um avatar';
	@override String get avatarIllustrationHint => 'Retratos ilustrados originais, crianças e amigos animais';
	@override String get avatarPortraitSunrise => 'Retrato do nascer do sol';
	@override String get avatarPortraitMeadow => 'Retrato de prado';
	@override String get avatarPortraitBerry => 'Retrato de baga';
	@override String get avatarPortraitGolden => 'Retrato dourado';
	@override String get avatarPortraitIndigo => 'Retrato índigo';
	@override String get avatarPortraitOcean => 'Retrato do oceano';
	@override String get avatarKidArtist => 'Pequeno artista';
	@override String get avatarKidSkater => 'Pequeno patinador';
	@override String get avatarCat => 'Gato curioso';
	@override String get avatarDog => 'Cachorro feliz';
	@override String get avatarPanda => 'panda';
	@override String get avatarOwl => 'Coruja';
	@override String get avatarFox => 'Raposa';
	@override String get avatarDinosaur => 'Dinossauro';
	@override String get avatarRobot => 'Robô';
}

// Path: detailComposition
class _Translations$detailComposition$pt extends Translations$detailComposition$en {
	_Translations$detailComposition$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get startOver => 'Recomeçar';
	@override String get seriesCast => 'Elenco da série';
	@override String get streamingQuality => 'Qualidade de transmissão…';
	@override String get trailer => 'Reboque';
	@override String get manageMedia => 'Gerenciar mídia…';
	@override String get playbackOptions => 'Opções de reprodução…';
	@override String get moreActions => 'Mais ações';
	@override String get watched => 'Assistido';
	@override String get unwatched => 'Não assistido';
	@override String endsAt({required Object time}) => 'Termina em ${time}';
	@override String get automatic => 'Automático';
	@override String get usePreferences => 'Use suas preferências de reprodução';
	@override String get mediaInformation => 'Informações sobre mídia';
	@override String get fullFileInformation => 'Informações completas do arquivo';
	@override String get castAndCrew => 'Elenco e equipe';
}

// Path: kids
class _Translations$kids$pt extends Translations$kids$en {
	_Translations$kids$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get timeLimits => 'Limites de tempo de tela';
	@override String get dailyWatchLimit => 'Tempo de exibição diário';
	@override String get dailyWatchLimitHint => 'Limita a reprodução de vídeo neste dispositivo todos os dias.';
	@override String get noTimeLimit => 'Sem limite';
	@override String minutesLimit({required Object minutes}) => '${minutes} minutos';
	@override String get bedtime => 'Hora de dormir';
	@override String get bedtimeHint => 'É necessário o PIN dos pais para usar este perfil nesse horário.';
	@override String get bedtimeStart => 'A hora de dormir começa';
	@override String get bedtimeEnd => 'A hora de dormir termina';
	@override String get timeLimitReached => 'O tempo de exibição acabou por hoje';
	@override String get bedtimeReached => 'É hora de dormir';
	@override String get timeLimitParentHint => 'Peça a um dos pais para inserir seu PIN para continuar esta sessão.';
	@override String get parentUnlock => 'Desbloqueio parental';
	@override String get backupProfile => 'Fazer backup do perfil infantil';
	@override String get backupExplain => 'Faça backup do nome salvo, personagem, restrições, aparência e exclusões de visualização local deste perfil. PINs dos pais, logins de servidor, downloads e progresso de reprodução do servidor não estão incluídos.';
	@override String get saveBackupFile => 'Salvar arquivo de backup';
	@override String get copyBackup => 'Copiar texto de backup';
	@override String backupSaved({required Object path}) => 'Backup do perfil infantil salvo em ${path}';
	@override String get backupCopied => 'Backup do perfil infantil copiado';
	@override String get backupFailed => 'Não foi possível salvar o backup do perfil infantil. Por favor, tente novamente.';
	@override String get restoreProfile => 'Restaurar perfil infantil';
	@override String get chooseBackupFile => 'Escolha o arquivo de backup';
	@override String get pasteBackup => 'Colar texto de backup';
	@override String get backupText => 'JSON de backup do perfil infantil';
	@override String get pasteFromClipboard => 'Colar da área de transferência';
	@override String get restoreReview => 'Revise essas configurações restauradas e salve para criar um novo perfil infantil usando suas conexões de servidor atuais. Os perfis existentes não são substituídos. As seleções de biblioteca e exclusões de visualização correspondem apenas aos mesmos IDs de servidor/biblioteca.';
	@override String get restoreInvalid => 'Este não é um backup de perfil infantil válido e compatível. Escolha um backup JSON do perfil infantil Luroka.';
	@override String get deleteProfile => 'Excluir perfil infantil';
	@override String deleteExplain({required Object name}) => 'Excluir ${name} de Luroka? Suas configurações locais, downloads e exclusões de visualização serão removidos. Sua conta do servidor e o histórico do servidor permanecerão. Crie um backup primeiro se quiser restaurar o perfil mais tarde.';
	@override String get profileDeleted => 'Perfil infantil excluído';
	@override String get allowedLibraries => 'Bibliotecas permitidas';
	@override String get unavailableLibrary => 'Biblioteca selecionada anteriormente (atualmente indisponível)';
	@override String get allLibraries => 'Permitir todas as bibliotecas de filmes e TV conectadas';
	@override String get librariesExplain => 'Desligue para escolher bibliotecas específicas. As regras de idade e animação ainda se aplicam às bibliotecas selecionadas. Novas bibliotecas não são adicionadas automaticamente ao usar uma seleção.';
	@override String get librariesUnavailable => 'Nenhuma biblioteca de filmes ou TV está carregada. Conecte-se ao servidor e abra Bibliotecas, depois volte aqui para escolher.';
	@override String get noLibrariesSelected => 'Nenhuma biblioteca selecionada: esta criança não verá nenhum título.';
	@override String get animationOnly => 'Somente animação';
	@override String get animationExplain => 'Mostre apenas títulos marcados com o gênero Animação em seu servidor. Isto não substitui o limite de idade: a animação também pode ser destinada a adultos. Os metadados de gênero ausentes estão ocultos.';
	@override String get allowUnrated => 'Permitir títulos sem classificação etária';
	@override String get unratedExplain => 'Desativado por padrão. Quando ativado, classificações ausentes ou sem classificação podem aparecer se as regras da biblioteca e da animação permitirem. A sua adequação não pode ser verificada pela idade. As classificações conhecidas acima do limite de idade e as classificações não reconhecidas permanecem ocultas.';
	@override String get whoIsWatching => 'Quem está assistindo?';
	@override String get chooseAdventure => 'Um pequeno mundo de grandes aventuras.';
	@override String get chooseProfile => 'Escolha o seu espaço. Faça disso uma noite de cinema.';
	@override String welcome({required Object name}) => 'Olá, ${name}!';
	@override String welcomeOlder({required Object name}) => 'Sua próxima grande história, ${name}.';
	@override String get homeSubtitle => 'Grandes aventuras. Pequenas descobertas. Tudo para você.';
	@override String get homeSubtitleOlder => 'Encontre um novo favorito. Continue de onde parou.';
	@override String get featured => 'A grande aventura de hoje';
	@override String get featuredOlder => 'No centro das atenções';
	@override String get moreInfo => 'Mais informações';
	@override String get movies => 'Filmes';
	@override String get shows => 'Programas';
	@override String get profiles => 'Perfis';
	@override String get adultBadge => 'Adultos';
	@override String get avatar => 'Escolha seu personagem';
	@override String get avatarExplorer => 'Explorador espacial';
	@override String get avatarFox => 'Raposa';
	@override String get avatarDinosaur => 'Dinossauro';
	@override String get avatarRobot => 'Robô';
	@override String get avatarChildArtist => 'Pequeno artista';
	@override String get avatarChildSkater => 'Pequeno patinador';
	@override String get avatarSunrisePerson => 'Retrato do nascer do sol';
	@override String get avatarOceanPerson => 'Retrato do oceano';
	@override String get avatarCat => 'Gato curioso';
	@override String get avatarDog => 'Cachorro feliz';
	@override String get avatarPanda => 'panda';
	@override String get avatarOwl => 'Coruja';
	@override String get avatarBear => 'Urso';
	@override String get continueAdventure => 'Continue a aventura';
	@override String get freshStories => 'Novas histórias para descobrir';
	@override String get yourMovies => 'Favoritos da hora do cinema';
	@override String get yourShows => 'Mais um episódio';
	@override String get emptyHint => 'Novas aventuras aparecerão aqui quando seu servidor tiver títulos com classificação etária permitida.';
	@override String get title => 'Luroka para crianças';
	@override String get addProfile => 'Adicionar perfil infantil';
	@override String get parentalControls => 'Controles parentais';
	@override String get parentPin => 'PIN dos pais';
	@override String get setParentPin => 'Definir PIN dos pais';
	@override String get changeParentPin => 'Alterar PIN dos pais';
	@override String get pinExplain => 'Este PIN protege os perfis adultos e o controlo parental neste dispositivo.';
	@override String get name => 'Nome da criança';
	@override String get ageGroup => 'Classificação etária permitida';
	@override String get allAges => 'Todas as idades · G, TV-Y, TV-G, U';
	@override String get age7 => 'Até 7 · também PG, TV-PG, TV-Y7';
	@override String get age12 => 'Até 12 · também 12 e 12A';
	@override String get age16 => 'Até 16 · também PG-13, TV-14, 15 e 16';
	@override String get ratingExplain => 'Títulos acima do limite de idade e classificações não reconhecidas ficam ocultos. Os títulos sem classificação ficam ocultos, a menos que você os permita abaixo. Episódios sem classificação podem herdar uma classificação de série aprovada. As classificações dependem dos metadados do seu servidor.';
	@override String get theme => 'Aparência infantil';
	@override String get themeExplain => 'Use um tema colorido quando este perfil estiver ativo.';
	@override String get sharedLogin => 'Usa o login do servidor existente. O progresso e o status assistido de Plex/Emby permanecem compartilhados. Restrições e perfis infantis são armazenados neste dispositivo.';
	@override String get hideWatched => 'Ocultar a visualização das crianças em Continuar assistindo';
	@override String get hideExplain => 'Oculte filmes e séries inteiras reproduzidas por perfis infantis neste dispositivo. Isso não os remove da sua biblioteca nem altera o histórico do servidor.';
	@override String get clearHistory => 'Redefinir as exclusões de visualização das crianças';
	@override String get historyReset => 'Redefinição das exclusões de visualização para crianças';
	@override String get blocked => 'Este título não está disponível neste perfil infantil.';
	@override String get switchProfile => 'Mudar perfil';
	@override String get manageFromAdult => 'Mude para um perfil adulto para gerenciar as configurações.';
	@override String get noConnections => 'Conecte um servidor ao seu perfil adulto antes de adicionar um perfil infantil.';
	@override String get created => 'Perfil infantil criado';
	@override String get updated => 'Perfil infantil atualizado';
	@override String get saveFailed => 'Não foi possível salvar o controle dos pais. Por favor, tente novamente.';
	@override String get kidsBadge => 'Crianças';
}

// Path: lurokaDiscovery
class _Translations$lurokaDiscovery$pt extends Translations$lurokaDiscovery$en {
	_Translations$lurokaDiscovery$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Descobrir';
	@override String get chooseLibraryHint => 'Escolha uma biblioteca para explorar';
	@override String get chooseCopyHint => 'Disponível em várias bibliotecas. Escolha sua cópia preferida.';
	@override String get weeklyMovies => 'Filmes em alta esta semana · TMDb';
	@override String get weeklyShows => 'Programas populares desta semana · TMDb';
	@override String get weeklyLibrary => 'Tendências desta semana · Na sua biblioteca';
	@override String get popularLibrary => 'Popular agora · Na sua biblioteca · Cinemeta';
	@override String get publicFeedError => 'A descoberta do Cinemameta não está disponível. Por favor, tente novamente.';
	@override String get oscars => 'Oscar · Vencedores de melhor filme';
	@override String get imdb100 => 'IMDb Os 100 melhores filmes · Instantâneo de setembro de 2026';
	@override String get imdbTv100 => 'IMDb Top 100 programas · Instantâneo de setembro de 2026';
	@override String get emmyComedy => 'Emmys · Vencedores de séries de comédia · 1971–2026';
	@override String get emmys => 'Emmys · Vencedores de séries dramáticas · 1966–2026';
	@override String get bafta => 'BAFTA · Vencedores de melhor filme';
	@override String get cannes => 'Cannes · Vencedores da Palma de Ouro';
	@override String get awardsNote => 'As coleções de prêmios incluem a história do Oscar de Melhor Filme, vencedores do Emmy de drama/comédia e seleções ampliadas do BAFTA/Cannes. Títulos vencedores repetidos aparecem uma vez. A associação usa históricos de categorias de prêmios e fatos do Wikidata. IMDb As 100 principais listas de filmes/programas preservam instantâneos do gráfico de setembro de 2026 de mmdju/imdb-top250-api. Somente correspondências em suas bibliotecas on-line visíveis são exibidas; o tamanho da coleção depende da disponibilidade da biblioteca.';
	@override String get attribution => 'Listas públicas de popularidade, metadados e classificações IMDb são fornecidas pela Cinemeta; suas listas populares não são gráficos de visualização semanal. Este produto usa TMDB API, mas não é endossado ou certificado por TMDB. As tendências semanais opcionais do TMDb refletem o interesse do TMDb, não a visualização dos números. As pontuações mantêm seus rótulos de origem.';
	@override String get tmdbSettings => 'Fontes de descoberta';
	@override String get setupDescription => 'A descoberta do Cinemeta funciona imediatamente sem uma conta: filmes e programas populares, classificações IMDb e vencedores de prêmios. Opcionalmente, conecte TMDb para tendências semanais usando uma chave API ou token de acesso de leitura API em themoviedb.org/settings/api. Sua credencial está armazenada neste dispositivo.';
	@override String get apiKey => 'Chave TMDb API/token de acesso de leitura';
	@override String get connect => 'Conecte TMDb';
	@override String get connecting => 'Conectando…';
	@override String get connected => 'TMDb conectado · Tendências semanais e prêmios habilitados';
	@override String get builtInKeyNote => 'Executando na chave TMDb compartilhada integrada do Luroka. Adicione sua própria chave gratuita abaixo para limites de taxa dedicados e controle total.';
	@override String get disconnect => 'Desconecte TMDb';
	@override String get invalidKey => 'Não foi possível validar TMDb. Verifique sua credencial e conexão com a Internet.';
	@override String get feedError => 'A descoberta TMDb não está disponível. Por favor, tente novamente.';
	@override String get allTitles => 'Todos os títulos';
	@override String get available => 'Na sua biblioteca';
	@override String get checking => 'Verificando suas bibliotecas…';
	@override String get availabilityUnknown => 'Algumas bibliotecas não puderam ser verificadas. Experimente refrescar.';
	@override String get noAvailable => 'Nenhum título correspondente encontrado nas bibliotecas verificadas.';
	@override String get sourceInfo => 'Tendências semanais e vencedores de prêmios selecionados · TMDb';
	@override String get configure => 'Configurações de descoberta';
}

// Path: app
class _Translations$app$pt extends Translations$app$en {
	_Translations$app$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Luroka';
}

// Path: appIcon
class _Translations$appIcon$pt extends Translations$appIcon$en {
	_Translations$appIcon$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ícone do aplicativo';
	@override String get defaultIcon => 'Padrão';
	@override String get current => 'Ícone atual';
	@override String get locked => 'Benefício de apoiador';
	@override String get lockedHint => 'Ícones alternativos são uma vantagem do Apoiador.';
	@override String get changeFailed => 'Não foi possível alterar o ícone do aplicativo';
	@override String get launcherHint => 'O novo ícone aparece na tela inicial assim que você sai do Luroka.';
	@override String get tvLauncherHint => 'O novo banner aparece quando você sai de Luroka. Android TV pode continuar mostrando o antigo até que a TV seja reiniciada.';
	@override late final _Translations$appIcon$names$pt names = _Translations$appIcon$names$pt._(_root);
}

// Path: auth
class _Translations$auth$pt extends Translations$auth$en {
	_Translations$auth$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get signInWithPlex => 'Entrar com Plex';
	@override String get showQRCode => 'Mostrar código QR';
	@override String get authenticate => 'Autenticar';
	@override String get authenticationTimeout => 'A autenticação expirou. Tente novamente.';
	@override String get scanQRToSignIn => 'Leia este código QR para entrar';
	@override String get waitingForAuth => 'Aguardando autenticação...\nEntre pelo navegador.';
	@override String get useBrowser => 'Usar navegador';
	@override String get or => 'ou';
	@override String connectToMediaBrowser({required Object product}) => 'Conectar ao ${product}';
	@override String get quickConnect => 'Quick Connect';
	@override String get useQuickConnect => 'Usar Quick Connect';
	@override String get quickConnectInstructions => 'Abra o Quick Connect no Jellyfin e insira este código.';
	@override String get quickConnectWaiting => 'Aguardando aprovação…';
	@override String get quickConnectCancel => 'Cancelar';
	@override String get quickConnectExpired => 'Quick Connect expirou. Tente novamente.';
	@override String get localDataRecoveryRequired => 'O Luroka não conseguiu recuperar com segurança os dados locais de acesso e de reproduções pendentes. Entre novamente.';
	@override String get pinCheckRejected => 'A verificação do PIN do Plex foi rejeitada';
}

// Path: common
class _Translations$common$pt extends Translations$common$en {
	_Translations$common$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get cancel => 'Cancelar';
	@override String get save => 'Salvar';
	@override String get close => 'Fechar';
	@override String get clear => 'Limpar';
	@override String get reset => 'Redefinir';
	@override String get later => 'Depois';
	@override String get submit => 'Enviar';
	@override String get confirm => 'Confirmar';
	@override String get retry => 'Tentar novamente';
	@override String get logout => 'Sair';
	@override String get unknown => 'Desconhecido';
	@override String get refresh => 'Atualizar';
	@override String get yes => 'Sim';
	@override String get no => 'Não';
	@override String get delete => 'Excluir';
	@override String get edit => 'Editar';
	@override String get shuffle => 'Aleatório';
	@override String get addTo => 'Adicionar a...';
	@override String get createNew => 'Criar novo';
	@override String get connect => 'Conectar';
	@override String get disconnect => 'Desconectar';
	@override String get play => 'Reproduzir';
	@override String get pause => 'Pausar';
	@override String get resume => 'Retomar';
	@override String get error => 'Erro';
	@override String get search => 'Buscar';
	@override String get home => 'Início';
	@override String get back => 'Voltar';
	@override String get settings => 'Configurações';
	@override String get mute => 'Silenciar';
	@override String get ok => 'OK';
	@override String get off => 'Desativado';
	@override String get options => 'Opções';
	@override String seasonNumber({required Object number}) => 'Temporada ${number}';
	@override String episodeNumberTitle({required Object number, required Object title}) => 'Episódio ${number} - ${title}';
	@override String chapterNumber({required Object number}) => 'Capítulo ${number}';
	@override String get reconnect => 'Reconectar';
	@override String get viewAll => 'Ver tudo';
	@override String get serversUnreachable => 'Servidores inacessíveis';
	@override String get loading => 'Carregando...';
	@override String get fullscreen => 'Tela cheia';
	@override String get exitFullscreen => 'Sair da tela cheia';
	@override late final _Translations$common$ratingSource$pt ratingSource = _Translations$common$ratingSource$pt._(_root);
	@override String get notAvailable => 'N/D';
	@override String get url => 'URL';
	@override String get letterKeys => 'ABC';
	@override late final _Translations$common$mediaKind$pt mediaKind = _Translations$common$mediaKind$pt._(_root);
	@override String get stay => 'Fique';
	@override String get exitApp => 'Sair';
	@override String get exitAppBody => 'Tem certeza de que deseja sair do Luroka?';
}

// Path: tvHints
class _Translations$tvHints$pt extends Translations$tvHints$en {
	_Translations$tvHints$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get select => 'Selecione';
	@override String get browse => 'Navegar';
	@override String get back => 'Voltar';
}

// Path: screens
class _Translations$screens$pt extends Translations$screens$en {
	_Translations$screens$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get licenses => 'Licenças';
	@override String get switchProfile => 'Trocar Perfil';
	@override String get subtitleStyling => 'Estilo de Legendas';
	@override String get mpvConfig => 'mpv.conf';
	@override String get logs => 'Logs';
}

// Path: mediaExtras
class _Translations$mediaExtras$pt extends Translations$mediaExtras$en {
	_Translations$mediaExtras$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get trailers => 'Reboques';
	@override String get featurettes => 'Recursos';
	@override String get interviews => 'Entrevistas';
	@override String get deletedScenes => 'Cenas excluídas';
	@override String get behindTheScenes => 'Nos bastidores';
	@override String get scenesAndClips => 'Cenas e clipes';
	@override String get other => 'Outros extras';
}

// Path: update
class _Translations$update$pt extends Translations$update$en {
	_Translations$update$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get available => 'Atualização disponível';
	@override String versionAvailable({required Object version}) => 'A versão ${version} está disponível';
	@override String currentVersion({required Object version}) => 'Atual: ${version}';
	@override String get skipVersion => 'Pular esta versão';
	@override String get viewRelease => 'Ver Lançamento';
	@override String get latestVersion => 'Você está na versão mais recente';
	@override String get checkFailed => 'Falha ao verificar atualizações';
}

// Path: supporter
class _Translations$supporter$pt extends Translations$supporter$en {
	_Translations$supporter$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Apoiador Luroka';
	@override String get intro => 'Uma compra única que apoia o desenvolvimento do Luroka e desbloqueia extras cosméticos:';
	@override String get presetThemes => 'Temas predefinidos';
	@override String get presetThemesDescription => 'Brasa, Geleira, Floresta, Ameixa e Papel';
	@override String get customTheme => 'Tema personalizado';
	@override String get customThemeDescription => 'Escolha você mesmo todas as cores';
	@override String get appIcons => 'Ícones de aplicativos';
	@override String get appIconsDescription => 'Escolha um ícone Luroka alternativo';
	@override String buy({required Object price}) => 'Compre por ${price}';
	@override String get loadingPrice => 'Carregando preço...';
	@override String get restore => 'Restaurar compras';
	@override String get pending => 'Sua compra está aguardando pagamento ou aprovação. Os extras são desbloqueados assim que a loja o conclui.';
	@override String get thankYouTitle => 'Obrigado por apoiar Luroka';
	@override String get thankYouBody => 'Seus extras de Apoiador estão desbloqueados.';
	@override String get tileSubtitle => 'Desbloqueie temas e ícones de aplicativos com uma compra única';
	@override String get tileSubtitleThemesOnly => 'Desbloqueie temas com uma compra única';
	@override String get tileUnlocked => 'Obrigado pelo seu apoio';
	@override late final _Translations$supporter$errors$pt errors = _Translations$supporter$errors$pt._(_root);
}

// Path: settings
class _Translations$settings$pt extends Translations$settings$en {
	_Translations$settings$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Configurações';
	@override String get supportDeveloper => 'Apoie o Luroka';
	@override String get supportDeveloperDescription => 'Doe via Liberapay para financiar o desenvolvimento';
	@override String get language => 'Idioma';
	@override String get theme => 'Tema';
	@override String get appearance => 'Aparência';
	@override String get videoPlayback => 'Reprodução de Vídeo';
	@override String get videoPlaybackDescription => 'Configurar comportamento de reprodução';
	@override String get advanced => 'Avançado';
	@override String get episodePosterMode => 'Estilo do pôster do episódio';
	@override String get seriesPoster => 'Pôster da série';
	@override String get seasonPoster => 'Pôster da temporada';
	@override String get episodeThumbnail => 'Miniatura';
	@override String get homeHeroSize => 'Tamanho do carrossel';
	@override String get homeHeroSizeSmall => 'Pequeno';
	@override String get homeHeroSizeMedium => 'Médio';
	@override String get homeHeroSizeLarge => 'Grande';
	@override String get secondsLabel => 'Segundos';
	@override String get minutesLabel => 'Minutos';
	@override String get secondsShort => 's';
	@override String get minutesShort => 'm';
	@override String durationHint({required Object min, required Object max}) => 'Insira a duração (${min}-${max})';
	@override String get systemTheme => 'Sistema';
	@override String get lightTheme => 'Claro';
	@override String get darkTheme => 'Escuro';
	@override String get oledTheme => 'OLED';
	@override String get libraryDensity => 'Densidade da Biblioteca';
	@override String get displayScale => 'Escala de exibição';
	@override String get compact => 'Compacto';
	@override String get comfortable => 'Confortável';
	@override String get gridSpacing => 'Espaçamento da grade';
	@override String get gridSpacingTight => 'Compacto';
	@override String get gridSpacingNormal => 'Normal';
	@override String get gridSpacingSpacious => 'Espaçoso';
	@override String get tvCornerSpotlightBackdrop => 'Imagem de destaque no canto';
	@override String get tvCornerSpotlightBackdropDescription => 'Mostrar a imagem de destaque no canto superior direito em vez de preencher a tela';
	@override String get viewMode => 'Modo de Visualização';
	@override String get gridView => 'Grade';
	@override String get listView => 'Lista';
	@override String get continueWatchingAction => 'Ação da seção Continuar assistindo';
	@override String get continueWatchingPlay => 'Reproduzir';
	@override String get continueWatchingDetails => 'Abrir detalhes';
	@override String get episodeAction => 'Ação do episódio';
	@override String get episodePlay => 'Reproduzir';
	@override String get episodeDetails => 'Abrir detalhes';
	@override String get useGlobalHubs => 'Usar layout inicial';
	@override String get useGlobalHubsDescription => 'Mostrar hubs iniciais unificados. Caso contrário, usar recomendações da biblioteca.';
	@override String get showServerNameOnHubs => 'Mostrar Nome do Servidor nos Hubs';
	@override String get showServerNameOnHubsDescription => 'Sempre mostrar nomes dos servidores nos títulos dos hubs.';
	@override String get groupLibrariesByServer => 'Agrupar Bibliotecas por Servidor';
	@override String get groupLibrariesByServerDescription => 'Agrupar bibliotecas da barra lateral por servidor de mídia.';
	@override String get alwaysKeepSidebarOpen => 'Manter Barra Lateral Sempre Aberta';
	@override String get alwaysKeepSidebarOpenDescription => 'A barra lateral fica expandida e a área de conteúdo se ajusta';
	@override String get showUnwatchedCount => 'Mostrar Contagem de Não Assistidos';
	@override String get showUnwatchedCountDescription => 'Exibir contagem de episódios não assistidos em séries e temporadas';
	@override String get showWatchedIndicators => 'Mostrar Indicadores de Assistidos';
	@override String get showWatchedIndicatorsDescription => 'Exibir uma marca de verificação em filmes, séries e episódios assistidos';
	@override String get showEpisodeNumberOnCards => 'Mostrar Número do Episódio nos Cards';
	@override String get showEpisodeNumberOnCardsDescription => 'Mostrar temporada e episódio nos cartões de episódio';
	@override String get showSeasonPostersOnTabs => 'Mostrar Pôsteres de Temporada nas Abas';
	@override String get showSeasonPostersOnTabsDescription => 'Mostrar o pôster de cada temporada acima da aba';
	@override String get tvFullCardLayout => 'Cartões TV completos';
	@override String get tvFullCardLayoutDescription => 'Usar cartões de TV só com imagem e nomes dos atores sobrepostos';
	@override String get focusGlow => 'Brilho de foco';
	@override String get focusGlowDescription => 'Mostrar um brilho suave ao redor do cartão em foco';
	@override String get visualEffects => 'Efeitos visuais';
	@override String get visualEffectsAuto => 'Automático';
	@override String get visualEffectsAutoDescription => 'Reduzir os efeitos automaticamente em dispositivos de baixo consumo';
	@override String get visualEffectsFull => 'Completos';
	@override String get visualEffectsReduced => 'Reduzidos';
	@override String get visualEffectsReducedDescription => 'Menos animações e imagens em menor resolução';
	@override String get hideSpoilers => 'Ocultar spoilers de episódios não assistidos';
	@override String get hideSpoilersDescription => 'Desfocar miniaturas e descrições de episódios não assistidos';
	@override String get playerBackend => 'Mecanismo de reprodução';
	@override String get playerBackendDescription => 'mpv reproduz mais formatos e habilita mais recursos – recomendado. ExoPlayer ajuda se a reprodução falhar ou falhar neste dispositivo.';
	@override String get exoPlayer => 'ExoPlayer';
	@override String get mpv => 'mpv';
	@override String get hardwareDecoding => 'Decodificação por Hardware';
	@override String get hardwareDecodingDescription => 'Usar aceleração por hardware quando disponível';
	@override String get playbackBuffer => 'Buffer de reprodução';
	@override String get playbackBufferAuto => 'Automático (recomendado)';
	@override String get playbackBufferLarge => 'Grande';
	@override String get playbackBufferExtraLarge => 'Extra grande';
	@override String get playbackBufferDescription => 'Faz buffer extra contra conexões instáveis. Também limitado pelo tamanho do buffer.';
	@override String get defaultQualityTitle => 'Qualidade padrão';
	@override String get streamingQualityOriginalHint => 'Reproduz o arquivo exatamente como armazenado — melhor qualidade, usa mais largura de banda';
	@override String get cellularQualityTitle => 'Qualidade padrão nos dados móveis';
	@override String get cellularQualitySameAsDefault => 'Igual à qualidade padrão';
	@override String get directPlayCoveredQuality => 'Reproduzir Vídeos Menores na Qualidade Original';
	@override String get directPlayCoveredQualityDescription => 'Reproduzir diretamente os vídeos que já estão dentro do limite de qualidade em vez de transcodificá-los';
	@override String get videoCodecs => 'Codecs de vídeo';
	@override String get videoCodecsDescription => 'Codecs desmarcados são transcodificados pelo servidor';
	@override String get videoCodecsAlwaysAccepted => 'Sempre aceito';
	@override String get musicQualityTitle => 'Qualidade da música';
	@override String get subtitleStyling => 'Estilo de Legendas';
	@override String get subtitleStylingDescription => 'Personalizar aparência das legendas';
	@override String get smallSkipDuration => 'Duração do Avanço Curto';
	@override String get largeSkipDuration => 'Duração do Avanço Longo';
	@override String get rewindOnResume => 'Rebobinar ao retomar';
	@override String secondsUnit({required Object seconds}) => '${seconds} segundos';
	@override String get defaultSleepTimer => 'Temporizador de suspensão padrão';
	@override String minutesUnit({required Object minutes}) => '${minutes} minutos';
	@override String get rememberTrackSelections => 'Lembrar seleção de faixas por série/filme';
	@override String get rememberTrackSelectionsDescription => 'Lembrar escolhas de áudio e legendas por título';
	@override String get rememberTrackSelectionsBackendRule => 'O Plex salva cada escolha no servidor por arquivo; o Jellyfin também ativa a opção Lembrar seleções da conta; o Emby não é compatível';
	@override String get followServerTrackSelections => 'Usar a seleção de faixas do servidor por episódio';
	@override String get followServerTrackSelectionsDescription => 'Ao mudar de episódio, aplicar o áudio e as legendas selecionados no servidor em vez de manter a escolha atual';
	@override String get resumeMusicOnLaunch => 'Lembrar a sessão de música';
	@override String get resumeMusicOnLaunchDescription => 'Ao iniciar a aplicação, reabrir a última música em pausa onde parou';
	@override String get showChapterMarkersOnTimeline => 'Mostrar marcadores de capítulos na barra de reprodução';
	@override String get showChapterMarkersOnTimelineDescription => 'Segmentar a barra de reprodução nos limites dos capítulos';
	@override String get specialsOrdering => 'Especiais na ordem dos episódios';
	@override String get specialsOrderingDescription => 'Onde os especiais são reproduzidos na ordem de exibição de uma série';
	@override String get specialsOrderingServer => 'Seguir a ordem do servidor';
	@override String get specialsOrderingAirDate => 'Intercalar pela data de exibição';
	@override String get specialsOrderingLast => 'Após as temporadas regulares';
	@override String get clickVideoTogglesPlayback => 'Clicar no vídeo para alternar reprodução/pausa';
	@override String get clickVideoTogglesPlaybackDescription => 'Clicar no vídeo para reproduzir ou pausar em vez de mostrar os controles.';
	@override String get videoPlayerControls => 'Controles do reprodutor de vídeo';
	@override String get keyboardShortcuts => 'Atalhos de Teclado';
	@override String get keyboardShortcutsDescription => 'Personalizar atalhos de teclado';
	@override String get videoPlayerNavigation => 'Navegação do reprodutor de vídeo';
	@override String get videoPlayerNavigationDescription => 'Usar as teclas de seta para navegar pelos controles do reprodutor';
	@override String get watchTogetherRelay => 'Servidor de retransmissão do Assistir Juntos';
	@override String get watchTogetherRelayDescription => 'Retransmissões do Public Open Watch Party, a menos que você defina o seu próprio';
	@override String get watchTogetherRelayHint => 'https://minha-retransmissao.exemplo.com.br';
	@override String get watchTogetherRelayInvalid => 'Insira uma URL base de retransmissão HTTP ou HTTPS válida.';
	@override String get crashReporting => 'Relatório de Erros';
	@override String get crashReportingDescription => 'Enviar relatórios de erros para ajudar a melhorar o app';
	@override String get debugLogging => 'Log de Depuração';
	@override String get debugLoggingDescription => 'Ativar log detalhado para solução de problemas';
	@override String get viewLogs => 'Ver Logs';
	@override String get viewLogsDescription => 'Ver logs do app';
	@override String get clearImageCache => 'Limpar cache de imagens';
	@override String get clearImageCacheDescription => 'Limpar artes e miniaturas em cache. As imagens podem carregar mais devagar até serem baixadas novamente.';
	@override String get clearImageCacheSuccess => 'Cache de imagens limpo com sucesso';
	@override String get resetSettings => 'Redefinir Configurações';
	@override String get resetSettingsDescription => 'Restaurar configurações padrão. Não pode ser desfeito.';
	@override String get resetSettingsSuccess => 'Configurações redefinidas com sucesso';
	@override String get backup => 'Backup';
	@override String get exportSettings => 'Exportar Configurações';
	@override String get exportSettingsDescription => 'Salvar suas preferências em um arquivo';
	@override String get exportSettingsSuccess => 'Configurações exportadas';
	@override String get importSettings => 'Importar Configurações';
	@override String get importSettingsDescription => 'Restaurar preferências a partir de um arquivo';
	@override String get importSettingsConfirm => 'Isso substituirá suas configurações atuais. Continuar?';
	@override String get importSettingsSuccess => 'Configurações importadas';
	@override String get importSettingsInvalidFile => 'Este arquivo não é uma exportação válida do Luroka';
	@override String get importSettingsNoUser => 'Entre na conta antes de importar as configurações';
	@override String get shortcutsReset => 'Atalhos redefinidos para o padrão';
	@override String get resetShortcutsConfirm => 'Isso substituirá seus atalhos personalizados pelos padrões. Continuar?';
	@override String get about => 'Sobre';
	@override String get aboutDescription => 'Informações do app e licenças';
	@override String get updates => 'Atualizações';
	@override String get updateAvailable => 'Atualização Disponível';
	@override String get checkForUpdates => 'Verificar Atualizações';
	@override String get autoCheckUpdatesOnStartup => 'Verificar atualizações automaticamente ao iniciar';
	@override String get autoCheckUpdatesOnStartupDescription => 'Notificar ao iniciar quando houver atualização disponível';
	@override String get validationErrorEnterNumber => 'Insira um número válido';
	@override String validationErrorDuration({required Object min, required Object max, required Object unit}) => 'A duração deve estar entre ${min} e ${max} ${unit}';
	@override String shortcutAlreadyAssigned({required Object action}) => 'Atalho já atribuído a ${action}';
	@override String shortcutUpdated({required Object action}) => 'Atalho atualizado para ${action}';
	@override String get saveFailed => 'Não foi possível salvar as alterações. Tente novamente.';
	@override String get autoPlayAndSkip => 'Reprodução automática e pulos';
	@override String get autoPlayNextEpisode => 'Reproduzir próximo episódio automaticamente';
	@override String get autoPlayNextEpisodeDescription => 'Iniciar o próximo episódio automaticamente quando um terminar';
	@override String get shuffleStartsFromBeginning => 'Reprodução Aleatória Começa do Início';
	@override String get shuffleStartsFromBeginningDescription => 'Iniciar cada episódio do início na reprodução aleatória em vez de retomá-lo';
	@override String get playNextCountdown => 'Contagem regressiva do próximo episódio';
	@override String get playNextCountdownImmediate => 'Reproduzir imediatamente';
	@override String get skipIntroMode => 'Pular Abertura';
	@override String get skipIntroModeOffDescription => 'Reproduzir as aberturas normalmente sem botão de pulo';
	@override String get skipIntroModeButtonDescription => 'Mostrar um botão de pulo quando uma abertura começar';
	@override String get skipIntroModeAutoDescription => 'Pular as aberturas automaticamente após o atraso abaixo';
	@override String get skipCreditsMode => 'Pular Créditos';
	@override String get skipCreditsModeOffDescription => 'Reproduzir os créditos normalmente sem botão de pulo';
	@override String get skipCreditsModeButtonDescription => 'Mostrar um botão de pulo quando os créditos começarem';
	@override String get skipCreditsModeAutoDescription => 'Pular os créditos automaticamente e reproduzir o próximo episódio';
	@override String get skipMarkerModeOff => 'Desativado';
	@override String get skipMarkerModeButton => 'Mostrar botão';
	@override String get skipMarkerModeAuto => 'Automático';
	@override String get forceSkipMarkerFallback => 'Forçar marcadores alternativos';
	@override String get forceSkipMarkerFallbackDescription => 'Usar padrões de títulos de capítulos mesmo quando o Plex tiver marcadores';
	@override String get autoSkipDelay => 'Atraso para pular automaticamente';
	@override String autoSkipDelayDescription({required Object seconds}) => 'Aguardar ${seconds} segundos antes de pular automaticamente';
	@override String get introPattern => 'Padrão do marcador de introdução';
	@override String get introPatternDescription => 'Expressão regular que identifica marcadores de introdução nos títulos dos capítulos';
	@override String get creditsPattern => 'Padrão do marcador de créditos';
	@override String get creditsPatternDescription => 'Expressão regular que identifica marcadores de créditos nos títulos dos capítulos';
	@override String get invalidRegex => 'Expressão regular inválida';
	@override String get regex => 'Expressão regular';
	@override String get downloads => 'Downloads';
	@override String get downloadLocationDescription => 'Escolha onde armazenar conteúdo baixado';
	@override String get downloadLocationDefault => 'Padrão (Armazenamento do App)';
	@override String get downloadLocationCustom => 'Local Personalizado';
	@override String get selectFolder => 'Selecionar Pasta';
	@override String get resetToDefault => 'Redefinir para Padrão';
	@override String currentPath({required Object path}) => 'Atual: ${path}';
	@override String get downloadLocationChanged => 'Local de download alterado';
	@override String get downloadLocationReset => 'Local de download redefinido para padrão';
	@override String get downloadLocationInvalid => 'A pasta selecionada não permite gravação';
	@override String get downloadLocationPickerUnavailable => 'A seleção de pasta não está disponível neste dispositivo';
	@override String get downloadOnWifiOnly => 'Baixar apenas por Wi-Fi';
	@override String get downloadOnWifiOnlyDescription => 'Impedir downloads ao usar dados móveis';
	@override String get downloadWifiScope => 'Aplica-se a todos os perfis e downloads neste dispositivo.';
	@override String get autoRemoveWatchedDownloads => 'Remover automaticamente os downloads assistidos';
	@override String get autoRemoveWatchedDownloadsDescription => 'Excluir automaticamente os downloads assistidos';
	@override String get cellularDownloadBlocked => 'Os downloads estão bloqueados nos dados móveis. Use Wi-Fi ou altere a configuração.';
	@override String get maxVolume => 'Volume Máximo';
	@override String get maxVolumeDescription => 'Permitir aumento de volume acima de 100% para mídias silenciosas';
	@override String maxVolumePercent({required Object percent}) => '${percent}%';
	@override String get discordRichPresence => 'Status de atividade do Discord';
	@override String get discordRichPresenceDescription => 'Mostrar o que você está assistindo no Discord';
	@override String get services => 'Serviços';
	@override String get servicesDescription => 'Conecte Trakt, MyAnimeList, Seerr e mais';
	@override String get manageLibrariesDescription => 'Reordene e oculte bibliotecas';
	@override String get companionRemoteServer => 'Servidor de controle remoto';
	@override String get companionRemoteServerDescription => 'Permitir que dispositivos móveis na sua rede controlem este app';
	@override String get companionRemoteServerStartFailed => 'Não foi possível iniciar o servidor de controle remoto';
	@override String get companionRemoteServerStopFailed => 'Não foi possível parar o servidor de controle remoto';
	@override String get autoPip => 'Picture-in-picture automático';
	@override String get autoPipDescription => 'Entrar automaticamente no modo picture-in-picture ao sair do app durante a reprodução';
	@override String get matchContentFrameRate => 'Ajustar à taxa de quadros do conteúdo';
	@override String get matchContentFrameRateDescription => 'Ajustar a taxa de atualização da tela ao conteúdo de vídeo';
	@override String get matchContentResolution => 'Ajustar à resolução do conteúdo';
	@override String get matchContentResolutionDescription => 'Muda a tela para a resolução nativa do vídeo para que a TV cuide do upscaling. Menus e legendas também são ampliados durante a reprodução';
	@override String get matchRefreshRate => 'Ajustar à taxa de atualização';
	@override String get matchRefreshRateDescription => 'Ajustar a taxa de atualização da tela em tela cheia';
	@override String get matchDynamicRange => 'Ajustar à faixa dinâmica';
	@override String get matchDynamicRangeDescription => 'Ativar HDR para conteúdo HDR e depois voltar para SDR';
	@override String get displaySwitchDelay => 'Atraso na troca do modo de exibição';
	@override String get tunneledPlayback => 'Reprodução em túnel';
	@override String get tunneledPlaybackDescription => 'Usar o tunelamento de vídeo. Desative se o vídeo ficar preto ao reproduzir em HDR ou o movimento travar.';
	@override String get audioPassthrough => 'Passagem direta de áudio';
	@override String get audioPassthroughDescription => 'Enviar o áudio Dolby/DTS ao receptor ou à TV sem recodificação, preservando o som surround. Desative se não houver som.';
	@override String get audioPassthroughDescriptionApple => 'Usar o decodificador Dolby nativo da Apple para Dolby Digital Plus, incluindo Atmos. DTS e TrueHD continuam sendo reproduzidos como PCM multicanal. Desative se não houver som.';
	@override String get audioPassthroughDescriptionAppleSpatial => 'Use o decodificador Dolby nativo da Apple para Dolby Digital Plus, incluindo Atmos. No iOS, iPadOS e tvOS 26 ou posterior, TrueHD Atmos e DTS:X são reproduzidos como áudio espacial. Outras faixas DTS e TrueHD são reproduzidas como PCM multicanal. Desligue se não tiver som.';
	@override String get audioPassthroughOverriddenByNormalization => 'Desativada enquanto a normalização de intensidade sonora estiver ativa';
	@override String get audioChannelLimit => 'Canais de áudio';
	@override String get audioChannelLimitDescription => 'Misture áudio decodificado para alto-falantes, fones de ouvido ou configurações HDMI que não podem reproduzir todos os canais';
	@override String get audioChannelLimitOriginal => 'Originais';
	@override String get audioChannelLimitOriginalDescription => 'Reproduza todos os canais da faixa';
	@override String get audioChannelLimitSurround51 => 'Até 5,1';
	@override String get audioChannelLimitSurround51Description => 'Misture 7.1 até 5.1 para TVs e receptores que utilizam apenas 5.1 PCM. A passagem não é afetada.';
	@override String get audioChannelLimitStereo => 'Estéreo';
	@override String get audioChannelLimitStereoDescription => 'Misture até dois canais para alto-falantes estéreo ou fones de ouvido. Desativa a passagem.';
	@override String get downmixCenterBoost => 'Reforço do canal central';
	@override String downmixCenterBoostValue({required Object db}) => '${db} dB';
	@override String get downmixCenterBoostLabel => 'Reforço (dB)';
	@override String get downmixCenterBoostShort => 'dB';
	@override String get audioDownmixNormalize => 'Normalizar volume na conversão para estéreo';
	@override String get audioDownmixNormalizeDescription => 'Reduzir o volume da mixagem para evitar saturação. Desative para manter o volume original, que pode distorcer em cenas muito altas.';
	@override String get dvConversionMode => 'Conversão Dolby Vision';
	@override String get dvConversionModeDescription => 'Escolha como os arquivos Dolby Vision Profile 7 são tratados.';
	@override String get dvConversionAuto => 'Automático';
	@override String get dvConversionNative => 'Nativo / desativado';
	@override String get dvConversionDv81 => 'P7 → P8.1';
	@override String get dvConversionHevcStrip => 'P7 → HEVC';
	@override String get dvConversionAutoDescription => 'Usar a detecção de recursos do dispositivo e o comportamento alternativo padrão';
	@override String get dvConversionNativeDescription => 'Forçar DV7 nativo e impedir uma nova tentativa de conversão de DV';
	@override String get dvConversionDv81Description => 'Forçar a conversão RPU integrada para Dolby Vision perfil 8.1';
	@override String get dvConversionHevcStripDescription => 'Remover as camadas RPU/EL do Dolby Vision e apresentar HEVC sem Dolby Vision';
	@override String get disableDolbyVision => 'Desativar Dolby Vision';
	@override String get disableDolbyVisionDescription => 'Reproduzir a camada HDR10 ou HLG do arquivo em vez de Dolby Vision, quando houver';
	@override String get hdrSdrConversion => 'Conversão de HDR para SDR';
	@override String get hdrSdrConversionDescription => 'Escolha o que converte vídeos HDR quando a tela não consegue exibir HDR.';
	@override String get hdrSdrConversionAuto => 'Automático';
	@override String get hdrSdrConversionAutoDescription => 'Dispositivo no Android 9 ou posterior, reprodutor em versões anteriores';
	@override String get hdrSdrConversionDevice => 'Dispositivo';
	@override String get hdrSdrConversionDeviceDescription => 'O hardware de vídeo do dispositivo faz a conversão. Mais rápido, mas as cores dependem do dispositivo';
	@override String get hdrSdrConversionPlayer => 'Reprodutor';
	@override String get hdrSdrConversionPlayerDescription => 'O reprodutor faz a conversão. Cores consistentes, mas o 4K pode travar em TV boxes mais simples';
	@override String get deinterlace => 'Desentrelaçamento';
	@override String get deinterlaceDescription => 'Remover artefatos de pente de vídeo entrelaçado (apenas no reprodutor mpv)';
	@override String get deinterlaceOff => 'Desligado';
	@override String get deinterlaceOffDescription => 'Mostrar vídeo entrelaçado à medida que é decodificado';
	@override String get deinterlaceVideo => 'Vídeo';
	@override String get deinterlaceVideoDescription => 'Transforme cada campo em um quadro completo. Para gravação de vídeo para TV, como esportes, notícias e shows';
	@override String get deinterlaceFilm => 'Filme';
	@override String get deinterlaceFilmDescription => 'Restaure os quadros originais do filme e da animação telecineados para 29,97 fps, comum em DVDs NTSC. Vídeo filmado para TV gagueja. TV ao vivo usa vídeo';
	@override String get requireProfileSelectionOnOpen => 'Pedir perfil ao abrir o app';
	@override String get requireProfileSelectionOnOpenDescription => 'Mostrar a seleção de perfil sempre que o app for aberto';
	@override String get forceTvMode => 'Forçar modo TV';
	@override String get forceTvModeKeepTitle => 'Manter o layout da TV?';
	@override String forceTvModeKeepBody({required Object seconds}) => 'O layout da TV é projetado para controles remotos. Revertendo para o layout normal em ${seconds} s.';
	@override String get forceTvModeKeepConfirm => 'Mantenha o layout da TV';
	@override String get forceTvModeReverted => 'Layout da TV revertido';
	@override String get forceTvModeDescription => 'Forçar o layout de TV em dispositivos sem detecção automática. Requer reiniciar o app.';
	@override String get startInFullscreen => 'Iniciar em tela cheia';
	@override String get startInFullscreenDescription => 'Abrir o Luroka em modo de tela cheia ao iniciar';
	@override String get exitFullscreenOnPlayerClose => 'Sair da tela cheia ao fechar o reprodutor';
	@override String get exitFullscreenOnPlayerCloseDescription => 'Sair automaticamente da tela cheia ao fechar o reprodutor de vídeo';
	@override String get autoHidePerformanceOverlay => 'Ocultar automaticamente o painel de desempenho';
	@override String get autoHidePerformanceOverlayDescription => 'Esmaecer o painel de desempenho junto com os controles de reprodução';
	@override String get showNavBarLabels => 'Mostrar Rótulos da Barra de Navegação';
	@override String get showNavBarLabelsDescription => 'Exibir rótulos de texto sob os ícones da barra de navegação';
	@override String get startupSection => 'Seção inicial';
	@override String get showExploreTab => 'Mostrar aba Explorar';
	@override String get showExploreTabDescription => 'Exibir a aba Explorar com conteúdo do Plex Discover e dos rastreadores conectados';
	@override String get liveTvDefaultFavorites => 'Canais favoritos por padrão';
	@override String get liveTvDefaultFavoritesDescription => 'Mostrar apenas os canais favoritos ao abrir a TV ao vivo';
	@override String get general => 'Geral';
	@override String get generalDescription => 'Idioma, inicialização e comportamento da janela';
	@override String get languageAndRegion => 'Idioma e Região';
	@override String get startup => 'Inicialização';
	@override String get display => 'Tela';
	@override String get libraryAndCards => 'Biblioteca e Cards';
	@override String get homeScreen => 'Tela inicial';
	@override String get navigation => 'Navegação';
	@override String get window => 'Janela';
	@override String get liveTv => 'TV ao Vivo';
	@override String get player => 'Reprodutor';
	@override String get videoAndDisplay => 'Vídeo e Tela';
	@override String get audio => 'Áudio';
	@override String get quality => 'Qualidade';
	@override String get subtitles => 'Legendas';
	@override String get seekAndTiming => 'Busca e tempo';
	@override String get behavior => 'Comportamento';
	@override String get gestures => 'Gestos';
	@override String get gestureBrightnessSwipe => 'Deslize para brilho';
	@override String get gestureBrightnessSwipeDescription => 'Deslize para cima ou para baixo na borda esquerda para ajustar o brilho';
	@override String get gestureVolumeSwipe => 'Deslize para volume';
	@override String get gestureVolumeSwipeDescription => 'Deslize para cima ou para baixo na borda direita para ajustar o volume';
	@override String get gesturePinchToZoom => 'Pinça para zoom';
	@override String get gesturePinchToZoomDescription => 'Pince o vídeo para ampliar ou reduzir';
	@override String get rememberBrightnessLevel => 'Lembrar Nível de Brilho';
	@override String get rememberBrightnessLevelDescription => 'Iniciar a reprodução com o brilho definido pelo último deslize';
	@override String get controls => 'Controles';
	@override String get rememberPlayerChanges => 'Lembrar alterações do reprodutor';
	@override String get rememberPlayerChangesDescription => 'Onde uma alteração feita durante a reprodução é salva e reaplicada';
	@override String get scopePlaybackSpeed => 'Velocidade de reprodução';
	@override String get scopeShaderPreset => 'Predefinição de shader';
	@override String get scopeAspectRatio => 'Proporção da tela';
	@override String get scopeSyncOffsets => 'Sincronização de áudio e legendas';
	@override String get playerScopeOff => 'Não salvar';
	@override String get playerScopeGlobal => 'Em todos os lugares';
	@override String get playerScopeLibrary => 'Por biblioteca';
	@override String get playerScopeTitle => 'Por série ou filme';
	@override String get exportDialogTitle => 'Exportar configurações do Luroka';
	@override String get velvetHourTheme => 'Hora de veludo';
}

// Path: themeEditor
class _Translations$themeEditor$pt extends Translations$themeEditor$en {
	_Translations$themeEditor$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get builtIn => 'Integrado';
	@override String get presets => 'Predefinições';
	@override String get custom => 'Personalizado';
	@override String get customEmpty => 'Ainda não criado';
	@override String get editCustom => 'Editar tema personalizado';
	@override String get editCustomDescription => 'Escolha você mesmo cada cor';
	@override String get locked => 'Desbloquear com apoiador';
	@override String get savedLocked => 'Salvo — desbloqueia com Apoiador';
	@override String get title => 'Tema personalizado';
	@override String get startFrom => 'Começar de';
	@override String get startFromDescription => 'Copie todas as cores de outro tema';
	@override String get colors => 'Cores';
	@override String get preview => 'Visualização';
	@override late final _Translations$themeEditor$slots$pt slots = _Translations$themeEditor$slots$pt._(_root);
	@override String get opacity => 'Opacidade';
	@override String get hexHint => '#RRGGBB ou #AARRGGBB';
	@override String get fromOtherThemes => 'De outros temas';
	@override String swatchLabel({required Object theme, required Object color}) => '${theme} ${color}';
	@override late final _Translations$themeEditor$contrast$pt contrast = _Translations$themeEditor$contrast$pt._(_root);
	@override String lowContrast({required Object pair, required Object ratio, required Object minimum}) => '${pair}: ${ratio}:1, abaixo do recomendado ${minimum}:1';
	@override String get discardTitle => 'Descartar alterações?';
	@override String get discardMessage => 'Suas alterações de cores não salvas serão perdidas.';
	@override String get discard => 'Descartar';
	@override String previewCardTitle({required Object number}) => 'Episódio ${number}';
	@override String previewCardSubtitle({required Object minutes}) => '${minutes} minutos restantes';
	@override String get previewSwitch => 'Reprodução automática';
	@override String get previewMutedText => 'O texto secundário é assim';
}

// Path: seriesBrowser
class _Translations$seriesBrowser$pt extends Translations$seriesBrowser$en {
	_Translations$seriesBrowser$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get oneEpisode => '1 episódio';
	@override String watchedCount({required Object count}) => '${count} assistido';
	@override String episodeCount({required Object count}) => 'Episódios ${count}';
	@override String episodesFor({required Object season}) => '${season} · Episódios';
	@override String get enterHint => 'Selecione: temporada aberta · ↓: episódios';
}

// Path: titlePage
class _Translations$titlePage$pt extends Translations$titlePage$en {
	_Translations$titlePage$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get genre => 'Gênero';
	@override String remaining({required Object time}) => '${time} restante';
	@override String continueEpisode({required Object season, required Object episode}) => 'Continuar S${season} E${episode}';
	@override String get watchlist => 'Lista de observação';
	@override String get more => 'Mais';
}

// Path: tvMenus
class _Translations$tvMenus$pt extends Translations$tvMenus$en {
	_Translations$tvMenus$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get appearanceDescription => 'Tema, margens da tela e pôsteres';
}

// Path: lurokaPlayer
class _Translations$lurokaPlayer$pt extends Translations$lurokaPlayer$en {
	_Translations$lurokaPlayer$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Configurações do jogador';
	@override String get watch => 'Assistir';
	@override String get watchDescription => 'Defina o ritmo, relaxe e decida o que acontecerá a seguir.';
	@override String get picture => 'Configurações de imagem';
	@override String get pictureDescription => 'Zoom, HDR e processamento de vídeo';
	@override String get sound => 'Áudio e legendas';
	@override String get audioSettings => 'Configurações de áudio';
	@override String get soundDescription => 'Tempo, volume e saída de áudio';
	@override String get chooseTracks => 'Escolha idiomas e faixas de legendas';
	@override String get tools => 'Avançado';
	@override String get toolsDescription => 'Informações de reprodução e diagnóstico';
	@override String get preferences => 'Preferências de reprodução';
	@override String get preferencesDescription => 'Seu cinema, seus padrões. Comece com som e legendas e, em seguida, ajuste a transmissão e sua tela.';
	@override String get streamPreferences => 'Qualidade de transmissão';
	@override String get displayPreferences => 'Exibição';
	@override String get enginePreferences => 'Opções avançadas de jogador';
	@override String get seekPreferences => 'Procurando';
	@override String get watchPreferences => 'Reprodução automática e salto';
	@override String get rememberPreferences => 'Lembre-se de preferências';
}

// Path: lurokaSettings
class _Translations$lurokaSettings$pt extends Translations$lurokaSettings$en {
	_Translations$lurokaSettings$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get quickSetup => 'Configuração rápida';
	@override String get quickSetupDescription => 'Comece com o essencial: navegação mais suave na TV, ajuste confortável da tela, layout da sua página inicial e preferências de reprodução.';
	@override String get experience => 'Sua experiência';
	@override String get experienceDescription => 'Faça com que o Luroka pareça certo: aparência, idiomas, reprodução, bibliotecas e tempo de tela.';
	@override String get remoteHint => '↑ ↓ Navegar pelas categorias · → / Selecionar Opções abertas · ← Retornar às categorias';
}

// Path: playerChrome
class _Translations$playerChrome$pt extends Translations$playerChrome$en {
	_Translations$playerChrome$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get browse => 'Capítulos e fila';
	@override String get backToPlayback => 'Voltar à reprodução';
	@override String get nowPlaying => 'AGORA JOGANDO';
	@override String get options => 'OPÇÕES DE JOGADOR';
}

// Path: tvLayout
class _Translations$tvLayout$pt extends Translations$tvLayout$en {
	_Translations$tvLayout$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get screenMargins => 'Margens da tela da TV';
	@override String get screenMarginsDescription => 'Reduza as bordas do aplicativo se sua TV cortar parte da imagem';
	@override String get screenMarginsDefault => '0% (padrão)';
}

// Path: studios
class _Translations$studios$pt extends Translations$studios$en {
	_Translations$studios$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get checkingCopies => 'Verificando outras bibliotecas… Escolha uma cópia conhecida a qualquer momento.';
	@override String get incompleteCopies => 'Algumas bibliotecas não puderam ser verificadas. Escolha uma cópia conhecida ou cancele e tente novamente.';
	@override String get partialFavorites => 'Não foi possível carregar alguns favoritos. Selecione Atualizar para tentar novamente.';
	@override String get copyLookupFailedTitle => 'Não foi possível verificar todas as cópias';
	@override String get copyLookupFailedMessage => 'Algumas bibliotecas não responderam. Você pode abrir uma das cópias já encontradas ou cancelar e tentar novamente.';
	@override String get openKnownCopies => 'Mostrar cópias conhecidas';
	@override String get browseAll => 'Navegar por tudo';
	@override String titleCount({required Object count}) => 'Títulos ${count}';
	@override String get topRated => 'Melhor avaliado';
	@override String get mostWatched => 'Mais assistidos na sua biblioteca';
	@override String get collection => 'COLEÇÃO DE ESTÚDIO';
	@override String loadedTitles({required Object count}) => 'Títulos ${count} carregados';
	@override String get sort => 'Classificar títulos';
	@override String get sortTitleAscending => 'Título A – Z';
	@override String get sortTitleDescending => 'Título Z – A';
	@override String get sortNewest => 'Lançamento mais recente';
	@override String get sortOldest => 'Lançamento mais antigo';
	@override String get sortAdded => 'Adicionado recentemente';
	@override String get sortEpisodeAdded => 'Episódio adicionado recentemente';
	@override String get sortRating => 'Melhor classificação';
	@override String get title => 'Navegar por estúdio';
	@override String get all => 'Todos';
	@override String get movies => 'Filmes';
	@override String get shows => 'Programas de TV';
	@override String get loadMore => 'Carregue mais títulos';
	@override String get empty => 'Não há títulos correspondentes nas suas bibliotecas atualmente visíveis.';
	@override String get retry => 'Não foi possível carregar mais títulos. Selecione para tentar novamente';
	@override String get description => 'Explore filmes e programas deste estúdio em suas bibliotecas.';
}

// Path: dashboard
class _Translations$dashboard$pt extends Translations$dashboard$en {
	_Translations$dashboard$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get previousFeature => 'Título em destaque anterior';
	@override String get nextFeature => 'Próximo título em destaque';
	@override String get cinemaHome => 'CASA';
	@override String get episodeFallback => 'Episódio de TV';
	@override String timeLeft({required Object minutes}) => '${minutes} minutos restantes';
	@override String timeLeftHours({required Object hours, required Object minutes}) => 'Faltam ${hours} h e ${minutes} min';
	@override String get spoilerHidden => 'Detalhes do episódio ocultos por sua preferência de spoiler.';
	@override String get synopsisUnavailable => 'Abra Detalhes para ver mais sobre este título.';
	@override String get yourSpace => 'SEU ESPAÇO';
	@override String get title => 'Seu cinema.';
	@override String get subtitle => 'Escolha uma história ou encontre a próxima.';
	@override String get featured => 'LUROKA EM DESTAQUE';
	@override String get jumpBackIn => 'Continue assistindo';
	@override String episodeLabel({required Object season, required Object episode}) => 'S${season} · E${episode}';
	@override String get anotherPick => 'Outra escolha';
	@override String get exploreSeries => 'Explorar série';
	@override String get showFeatured => 'Destaque inicial';
	@override String get showFeaturedDescription => 'Mostre filmes e programas em destaque na parte superior da página inicial.';
}

// Path: lurokaCatalog
class _Translations$lurokaCatalog$pt extends Translations$lurokaCatalog$en {
	_Translations$lurokaCatalog$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get aboutPerson => 'EM DESTAQUE';
	@override String get biographyUnavailable => 'Uma biografia não está disponível neste servidor.';
	@override String get filmography => 'Filmes e programas em suas bibliotecas';
	@override String get recommended => 'Recomendados';
	@override String get browse => 'Todos os títulos';
	@override String get collections => 'Coleções';
	@override String get browseHint => 'Explore seu catálogo. Molde a seleção com filtros e classificação.';
	@override String get recommendedHint => 'Encontre sua próxima história';
	@override String get details => 'Por trás da história';
}

// Path: referenceDetails
class _Translations$referenceDetails$pt extends Translations$referenceDetails$en {
	_Translations$referenceDetails$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get oneEpisodeLeft => '1 episódio restante';
	@override String get playAll => 'Jogue tudo';
	@override String get present => 'Presente';
	@override String get continuing => 'Continuando';
	@override String get upNext => 'A seguir';
	@override String episodesLeft({required Object count}) => 'Episódios restantes de ${count}';
}

// Path: lurokaThemes
class _Translations$lurokaThemes$pt extends Translations$lurokaThemes$en {
	_Translations$lurokaThemes$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Paletas de cinema Luroka';
	@override String get coral => 'Coral · azul meia-noite e pôr do sol';
	@override String get ocean => 'Oceano · azul profundo e gelo';
	@override String get jade => 'Jade · sempre-viva e menta';
	@override String get amethyst => 'Ametista · Violeta meia-noite';
	@override String get darkThemes => 'Temas de cinema sombrio';
	@override String get lightThemes => 'Temas de cinema leve';
	@override String get moreThemes => 'Mais temas';
	@override String get moreThemesDescription => 'Procure paletas adicionais e cores personalizadas';
	@override String get obsidian => 'Obsidiana · preto puro e champanhe';
	@override String get nocturne => 'Noturno · carvão e champanhe';
	@override String get burgundy => 'Borgonha · vinho aveludado e rosa';
	@override String get slate => 'Ardósia · grafite e pervinca';
	@override String get espresso => 'Expresso · cacau e caramelo';
	@override String get pearl => 'Pérola · porcelana e safira';
	@override String get linen => 'Linho · marfim quente e terracota';
	@override String get sunrise => 'Nascer do sol · pêssego e coral';
	@override String get coastal => 'Litoral · neblina e azul-petróleo';
	@override String get latte => 'Café com leite · creme e caramelo';
	@override String get sage => 'Sálvia · verde suave e eucalipto';
	@override String get lavender => 'Lavanda · lilás e violeta profundo';
}

// Path: customPerformance
class _Translations$customPerformance$pt extends Translations$customPerformance$en {
	_Translations$customPerformance$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Desempenho e efeitos';
	@override String get fireStickMode => 'Modo de dispositivo de baixo consumo de energia';
	@override String get description => 'Use efeitos reduzidos, cenários estáticos, arte limitada a 720p e cache de imagem de 40 MiB. Enquanto ativado, substitui os efeitos visuais; desligá-lo restaura sua preferência de efeitos visuais.';
	@override String get detailsTitle => 'Detalhes de desempenho';
	@override String get details => 'Efeitos ativos, limite de cache de imagens e medições de desempenho de navegação';
	@override String get effectsTier => 'Camada de efeitos ativos';
	@override String get imageCache => 'Limite de cache de imagens';
	@override String get measurement => 'Medição de navegação';
	@override String get measureInstructions => 'Inicie uma amostra de 20 segundos, volte para Início e navegue usando o controle remoto. Volte aqui para ver os resultados. Repita as mesmas ações com o modo ativado e desativado para comparar. Isso mede o trabalho da UI do Flutter, não o desempenho do decodificador de vídeo.';
	@override String get startSample => 'Iniciar amostra de 20 segundos';
	@override String get stopSample => 'Concluir amostra agora';
	@override String get sampling => 'Amostragem — volte para a página inicial e navegue. Os resultados serão mantidos aqui.';
	@override String get frames => 'Quadros amostrados';
	@override String get slowFrames => 'Quadros acima do orçamento';
	@override String get buildP95 => 'Tempo de construção da IU (percentil 95)';
	@override String get rasterP95 => 'Tempo raster (percentil 95)';
	@override String get frameBudget => 'Orçamento por quadro';
	@override String get processMemory => 'Memória do processo do aplicativo no final da amostra';
	@override String get noFrames => 'Nenhum quadro renderizado foi capturado. Inicie outra amostra e navegue no aplicativo.';
}

// Path: homeLayout
class _Translations$homeLayout$pt extends Translations$homeLayout$en {
	_Translations$homeLayout$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get manageStudios => 'Escolha e solicite estúdios';
	@override String get manageStudiosDescription => 'Escolha quais estúdios aparecem para este perfil e organize sua ordem.';
	@override String get studioUnavailable => 'Apenas os estúdios encontrados nas bibliotecas selecionadas aparecem na página inicial.';
	@override String get showAllStudios => 'Mostrar todos os estúdios';
	@override String get hideAllStudios => 'Ocultar todos os estúdios';
	@override String get reorderStudio => 'Alterar ordem do estúdio';
	@override String get episodeThumbnails => 'Imagens dos episódios em Continuar assistindo';
	@override String get episodeThumbnailsDescription => 'Mostre imagens de episódios em vez de pôsteres de séries ou temporadas em Continuar assistindo e Próximo.';
	@override String get spotlightSource => 'Origem dos destaques';
	@override String get spotlightSourceDescription => 'For You usa a atividade de visualização deste perfil neste dispositivo, juntamente com favoritos e títulos de biblioteca.';
	@override String get spotlightForYou => 'Para você';
	@override String get spotlightForYouDescription => 'Uma mistura do que você está assistindo, favoritos, novidades e tendências, usando a atividade de visualização deste perfil neste dispositivo.';
	@override String get spotlightTrending => 'Tendências';
	@override String get spotlightTrendingDescription => 'Filmes e programas populares em suas bibliotecas.';
	@override String get spotlightContinue => 'Continuar assistindo';
	@override String get spotlightContinueDescription => 'Títulos que você iniciou e episódios que você pode continuar.';
	@override String get spotlightFavorites => 'Dos seus favoritos';
	@override String get spotlightInspired => 'Inspirado pela sua visualização';
	@override String get spotlightNextUp => 'Próximo';
	@override String get title => 'Personalize a página inicial';
	@override String get description => 'Escolha a ordem das linhas e a visibilidade deste perfil. Selecione uma linha para movê-la ou ocultá-la.';
	@override String get rows => 'Linhas iniciais';
	@override String get progressLayout => 'Continue assistindo e próximo';
	@override String get progressCombined => 'Combinado em uma linha';
	@override String get progressSeparate => 'Linhas separadas';
	@override String get progressDescription => 'Separar Next Up quando suportado pelo servidor. Outros servidores permanecem combinados.';
	@override String get visible => 'Visível';
	@override String get hidden => 'Oculto';
	@override String get showRow => 'Mostrar linha';
	@override String get hideRow => 'Ocultar linha';
	@override String get moveUp => 'Subir';
	@override String get moveDown => 'Mover para baixo';
	@override String get pinnedCollections => 'Coleções fixadas';
	@override String get pinInstructions => 'Abra o menu de uma coleção e escolha Pin para Início. Selecione uma coleção fixada aqui para remover seu atalho.';
	@override String get pinCollection => 'Pin para casa';
	@override String get unpinCollection => 'Liberar da página inicial';
	@override String get reset => 'Restaurar linhas padrão';
	@override String get resetDescription => 'Restaurar a ordem original das linhas e mostrar todas as linhas deste perfil? Suas coleções fixadas serão mantidas.';
	@override String get saveFailed => 'Não foi possível salvar o layout da sua página inicial. Por favor, tente novamente.';
	@override String get emptyHint => 'As linhas podem estar ocultas. Abra Personalizar página inicial para mostrá-los novamente.';
}

// Path: screenTime
class _Translations$screenTime$pt extends Translations$screenTime$en {
	_Translations$screenTime$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tempo de tela';
	@override String get description => 'Veja o tempo gasto assistindo a vídeos neste perfil';
	@override String get today => 'Hoje';
	@override String get thisWeek => 'Esta semana';
	@override String get thisMonth => 'Este mês';
	@override String get lessThanMinute => '<1 minuto';
	@override String minutes({required Object count}) => '${count} min';
	@override String hours({required Object count}) => '${count} horas';
	@override String hoursMinutes({required Object hours, required Object minutes}) => '${hours} horas ${minutes} minutos';
}

// Path: activityStats
class _Translations$activityStats$pt extends Translations$activityStats$en {
	_Translations$activityStats$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Visualizando estatísticas';
	@override String get period => 'Período';
	@override String get last7Days => '7 dias';
	@override String get last30Days => '30 dias';
	@override String get last90Days => '90 dias';
	@override String get thisYear => 'Ano';
	@override String get allTime => 'Todos';
	@override String get heroAllTime => 'Todo o tempo';
	@override String get heroDailyAverage => 'Média diária';
	@override String get consistency => 'Consistência';
	@override String get currentStreak => 'Sequência atual';
	@override String dayCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n,
		one: '${n} dia',
		other: '${n} dias',
	);
	@override String get longestStreak => 'Sequência mais longa';
	@override String get bestDay => 'Melhor dia';
	@override String get bestWeek => 'Melhor semana';
	@override String get trendTitle => 'Tempo de exibição';
	@override String get trendToday => 'Hoje';
	@override String gapDetail({required Object stat, required Object range}) => '${stat} em ${range}';
	@override String get patternsTitle => 'Seus padrões';
	@override String mostlyKind({required Object kind}) => 'Principalmente ${kind}';
	@override String get weekdayTitle => 'Por dia da semana';
	@override String get hoursTitle => 'Por hora do dia';
	@override String get amLabel => 'SOU';
	@override String get pmLabel => 'PM';
	@override String get kindsTitle => 'Por categoria';
	@override String get kindMovie => 'Filmes';
	@override String get kindTv => 'televisão';
	@override String get kindLiveTv => 'TV ao vivo';
	@override String get kindMusic => 'Música';
	@override String get kindOther => 'Outro';
	@override String get topTitlesTitle => 'Mais assistidos';
	@override String get sessionsTitle => 'Sessões recentes';
	@override String get recentViewingTitle => 'Visualização recente';
	@override String get recentViewingHint => 'Tempo total assistido no período selecionado. As datas mostram a visualização mais recente.';
	@override String get showMore => 'Mostrar mais';
	@override String get sessionNoTitle => 'Reprodução não identificada';
	@override String get emptyTitle => 'Nada aqui ainda';
	@override String get emptyBody => 'Observe algo e suas estatísticas serão acumuladas aqui.';
	@override String get noDataInPeriod => 'Nenhuma reprodução gravada neste período.';
}

// Path: search
class _Translations$search$pt extends Translations$search$en {
	_Translations$search$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get hint => 'Buscar filmes, séries, músicas...';
	@override String get tryDifferentTerm => 'Tente um termo de busca diferente';
	@override String get searchYourMedia => 'Buscar suas mídias';
	@override String get enterTitleActorOrKeyword => 'Insira um título, ator ou palavra-chave';
	@override String get people => 'Pessoas';
	@override String get recentSearches => 'Pesquisas recentes';
	@override String get clearHistory => 'Limpar histórico';
}

// Path: hotkeys
class _Translations$hotkeys$pt extends Translations$hotkeys$en {
	_Translations$hotkeys$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String setShortcutFor({required Object actionName}) => 'Definir Atalho para ${actionName}';
	@override String get clearShortcut => 'Limpar atalho';
	@override String get noShortcutSet => 'Nenhum atalho definido';
	@override String get currentShortcut => 'Atalho atual:';
	@override String get pressToRecord => 'Selecionar para gravar um atalho';
	@override String get recordingShortcut => 'Pressione o atalho agora';
	@override late final _Translations$hotkeys$actions$pt actions = _Translations$hotkeys$actions$pt._(_root);
}

// Path: fileInfo
class _Translations$fileInfo$pt extends Translations$fileInfo$en {
	_Translations$fileInfo$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Informações do arquivo';
	@override String get overview => 'Visão geral';
	@override String get video => 'Vídeo';
	@override String get audio => 'Áudio';
	@override String get subtitles => 'Legendas';
	@override String get images => 'Imagens incorporadas';
	@override String get dataStreams => 'Fluxos de dados';
	@override String get lyrics => 'Letras';
	@override String get file => 'Arquivo';
	@override String get attachments => 'Anexos';
	@override String get delivery => 'Entrega';
	@override String versionCounter({required Object index, required Object count}) => 'Versão ${index} de ${count}';
	@override String fileCounter({required Object index, required Object count}) => 'Arquivo ${index} de ${count}';
	@override String get noStreams => 'O servidor não relatou fluxos para este arquivo.';
	@override String get copyPath => 'Copiar caminho';
	@override String get pathCopied => 'Caminho do arquivo copiado';
	@override String get codec => 'Codec';
	@override String get codecTag => 'Tag do codec';
	@override String get resolution => 'Resolução';
	@override String get codedResolution => 'Resolução codificada';
	@override String get bitrate => 'Taxa de bits';
	@override String get frameRate => 'Taxa de Quadros';
	@override String get rotation => 'Rotação';
	@override String get comment => 'Comentário';
	@override String get audioDescription => 'Descrição de áudio';
	@override String get headerCompression => 'Compactação de cabeçalho';
	@override String get sidecarFile => 'Arquivo sidecar';
	@override String get transportTimestamp => 'Carimbo de transporte';
	@override String get displayOffset => 'Deslocamento de exibição';
	@override String get previewFailureCode => 'Código de falha da pré-visualização';
	@override String get previewRetries => 'Tentativas da pré-visualização';
	@override String get aspectRatio => 'Proporção';
	@override String get pixelAspectRatio => 'Proporção de aspecto de pixel';
	@override String get profile => 'Perfil';
	@override String get level => 'Nível';
	@override String get bitDepth => 'Profundidade de bits';
	@override String get pixelFormat => 'Formato de pixel';
	@override String get colorSpace => 'Espaço de Cor';
	@override String get colorRange => 'Faixa de Cor';
	@override String get colorPrimaries => 'Primárias de Cor';
	@override String get colorTransfer => 'Transferência de cor';
	@override String get chromaSubsampling => 'Subamostragem de Croma';
	@override String get chromaLocation => 'Localização do croma';
	@override String get scanType => 'Tipo de varredura';
	@override String get interlaced => 'Entrelaçado';
	@override String get anamorphic => 'Anamórfico';
	@override String get referenceFrames => 'Quadros de referência';
	@override String get dynamicRange => 'Faixa dinâmica';
	@override String get dolbyVision => 'Dolby Vision';
	@override String get dolbyVisionLevel => 'Nível Dolby Vision';
	@override String get dolbyVisionVersion => 'Versão Dolby Vision';
	@override String get dolbyVisionLayers => 'Camadas Dolby Vision';
	@override String get baseLayerCompatibility => 'Compatibilidade da camada base';
	@override String get avcBitstream => 'Bitstream AVC';
	@override String get nalLengthSize => 'Tamanho do comprimento NAL';
	@override String get scalingMatrix => 'Matriz de dimensionamento personalizada';
	@override String get streamIdentifier => 'Identificador do fluxo';
	@override String get streamIndex => 'Índice do fluxo';
	@override String get streamId => 'ID do fluxo';
	@override String get language => 'Idioma';
	@override String get languageCode => 'Código do idioma';
	@override String get streamTitle => 'Título da faixa';
	@override String get channels => 'Canais';
	@override String get sampleRate => 'Taxa de amostragem';
	@override String get spatialAudio => 'Áudio espacial';
	@override String get textBased => 'Baseado em texto';
	@override String get subtitleFormat => 'Formato sidecar';
	@override String get provider => 'Provedor';
	@override String get matchScore => 'Pontuação de correspondência';
	@override String get externalDelivery => 'Pode ser servido separadamente';
	@override String get sidecarPath => 'Caminho do sidecar';
	@override String get sourceStream => 'Copiado de';
	@override String get temporary => 'Temporário';
	@override String get timeBase => 'Base de tempo';
	@override String get overallBitrate => 'Taxa de bits total';
	@override String get path => 'Caminho';
	@override String get fileName => 'Nome do arquivo';
	@override String get size => 'Tamanho';
	@override String get totalSize => 'Tamanho total';
	@override String get container => 'Contêiner';
	@override String get duration => 'Duração';
	@override String get previewThumbnails => 'Miniaturas de pré-visualização';
	@override String get previewIndex => 'Índice de pré-visualização';
	@override String get packetLength => 'Tamanho do pacote';
	@override String get filePresent => 'Arquivo presente';
	@override String get fileReadable => 'Legível pelo servidor';
	@override String get streamPath => 'Caminho do fluxo';
	@override String get optimizedForStreaming => 'Otimizado para transmissão';
	@override String get has64bitOffsets => 'Deslocamentos de 64 bits';
	@override String get protocol => 'Protocolo';
	@override String get mediaType => 'Tipo de mídia';
	@override String get sourceKind => 'Tipo de origem';
	@override String get optimizedVersion => 'Versão otimizada';
	@override String get optimizationTarget => 'Alvo de otimização';
	@override String get deletedAt => 'Excluído';
	@override String get remoteSource => 'Origem remota';
	@override String get infiniteStream => 'Fluxo infinito';
	@override String get directPlay => 'Reprodução direta';
	@override String get directStream => 'Fluxo direto';
	@override String get transcoding => 'Transcodificação';
	@override String get etag => 'ETag';
	@override String get versionId => 'ID da versão';
	@override String get fileId => 'ID do arquivo';
	@override String get defaultAudioTrack => 'Faixa de áudio padrão';
	@override String get defaultSubtitleTrack => 'Faixa de legenda padrão';
	@override String get subtitlesOff => 'Desativadas';
	@override String get flagDefault => 'Padrão';
	@override String get flagForced => 'Forçada';
	@override String get flagSelected => 'Selecionada';
	@override String get flagExternal => 'Externa';
	@override String get flagHearingImpaired => 'Deficiência auditiva';
	@override String get flagDub => 'Dublada';
	@override String get flagOriginal => 'Original';
	@override String get channelsMono => 'Mono';
	@override String dolbyVisionProfile({required Object profile}) => 'Perfil ${profile}';
}

// Path: mediaMenu
class _Translations$mediaMenu$pt extends Translations$mediaMenu$en {
	_Translations$mediaMenu$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get markAsWatched => 'Marcar como Assistido';
	@override String get markAsUnwatched => 'Marcar como Não Assistido';
	@override String get clearProgress => 'Progresso claro';
	@override String get removeFromContinueWatching => 'Remover de Continuar Assistindo';
	@override String get viewDetails => 'Ver detalhes';
	@override String get goToSeries => 'Ir para a série';
	@override String get shufflePlay => 'Reprodução Aleatória';
	@override String get shuffleNotAvailableOffline => 'Reprodução aleatória indisponível offline';
	@override String get fileInfo => 'Informações do arquivo';
	@override String get deleteEpisodeFromServer => 'Excluir episódio do servidor';
	@override String get deleteSeasonFromServer => 'Excluir temporada do servidor';
	@override String get deleteShowFromServer => 'Excluir série do servidor';
	@override String get deleteMovieFromServer => 'Excluir filme do servidor';
	@override String get deleteEpisodeTitle => 'Excluir este episódio?';
	@override String get deleteSeasonTitle => 'Excluir esta temporada?';
	@override String get deleteShowTitle => 'Excluir esta série?';
	@override String get deleteMovieTitle => 'Excluir este filme?';
	@override String get deleteEpisodeConfirm => 'Excluir episódio';
	@override String get deleteSeasonConfirm => 'Excluir temporada';
	@override String get deleteShowConfirm => 'Excluir série';
	@override String get deleteMovieConfirm => 'Excluir filme';
	@override String get deleteAnyway => 'Excluir mesmo assim';
	@override String confirmDeleteTarget({required Object title}) => 'Excluir permanentemente ${title} do seu servidor?';
	@override String get deleteMultipleWarning => 'Isso inclui todos os episódios e seus arquivos.';
	@override String deleteEpisodeCountWarning({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n,
		one: 'Isso exclui o ${n} episódio e o arquivo dele.',
		other: 'Isso exclui todos os ${n} episódios e os arquivos deles.',
	);
	@override String deleteMultiPartWarning({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n,
		one: 'Este item está armazenado como ${n} arquivo, que será excluído.',
		other: 'Este item está armazenado em ${n} arquivos, e todos eles serão excluídos.',
	);
	@override String deleteSharedFileHeading({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n,
		one: 'Mais ${n} episódio está armazenado no mesmo arquivo e também será excluído:',
		other: 'Mais ${n} episódios estão armazenados no mesmo arquivo e também serão excluídos:',
	);
	@override String get deleteScopeUnverifiedProbeFailed => 'O Luroka não conseguiu verificar quais arquivos serão removidos, então pode excluir mais do que o item acima. Cancele e tente novamente, ou exclua mesmo assim.';
	@override String get deleteScopeUnverifiedNoFileInfo => 'Seu servidor não forneceu detalhes do arquivo para este item, então o Luroka não pode verificar quais arquivos serão removidos. Pode excluir mais do que o item acima.';
	@override String get mediaDeletedSuccessfully => 'Item de mídia excluído com sucesso';
	@override String get mediaFailedToDelete => 'Falha ao excluir item de mídia';
	@override String get rate => 'Avaliar';
	@override String get playFromBeginning => 'Reproduzir do início';
	@override String get playVersion => 'Reproduzir versão...';
}

// Path: rateSheet
class _Translations$rateSheet$pt extends Translations$rateSheet$en {
	_Translations$rateSheet$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Avaliar';
	@override String get server => 'Servidor';
	@override String get favorite => 'Favorito';
	@override String get favorited => 'Adicionado aos favoritos';
	@override String get saved => 'Salvo';
	@override String get notAvailable => 'Nenhuma correspondência encontrada';
	@override String get noConnectedServices => 'Conecte um serviço nas Configurações para avaliar por lá.';
}

// Path: accessibility
class _Translations$accessibility$pt extends Translations$accessibility$en {
	_Translations$accessibility$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String mediaCardMovie({required Object title}) => '${title}, filme';
	@override String mediaCardShow({required Object title}) => '${title}, série de TV';
	@override String mediaCardEpisode({required Object title, required Object episodeInfo}) => '${title}, ${episodeInfo}';
	@override String mediaCardSeason({required Object title, required Object seasonInfo}) => '${title}, ${seasonInfo}';
	@override String get mediaCardWatched => 'assistido';
	@override String mediaCardPartiallyWatched({required Object percent}) => '${percent} por cento assistido';
	@override String get mediaCardUnwatched => 'não assistido';
	@override String get tapToPlay => 'Toque para reproduzir';
	@override String get decrease => 'Diminuir';
	@override String get increase => 'Aumentar';
	@override String decreaseValue({required Object label}) => 'Diminuir ${label}';
	@override String increaseValue({required Object label}) => 'Aumentar ${label}';
	@override String get hue => 'Matiz';
	@override String get saturation => 'Saturação';
	@override String get brightness => 'Brilho';
	@override String get hexColor => 'Cor hexadecimal';
	@override String get expandText => 'Expandir texto';
	@override String get collapseText => 'Recolher texto';
	@override String get alphabetNavigation => 'Navegação alfabética';
	@override String get alphabetScrollHint => 'Deslize para cima ou para baixo para avançar por letra';
	@override String rowColumnPosition({required Object row, required Object rowCount, required Object column, required Object columnCount}) => 'Linha ${row} de ${rowCount}, coluna ${column} de ${columnCount}';
	@override String rowPosition({required Object row, required Object rowCount}) => 'Linha ${row} de ${rowCount}';
	@override String get autoScrollPlay => 'Iniciar rolagem automática';
	@override String get autoScrollPause => 'Pausar rolagem automática';
	@override String get hueShort => 'M';
	@override String get saturationShort => 'S';
	@override String get valueShort => 'V';
}

// Path: tooltips
class _Translations$tooltips$pt extends Translations$tooltips$en {
	_Translations$tooltips$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get shufflePlay => 'Reprodução aleatória';
	@override String get playTrailer => 'Reproduzir trailer';
	@override String get markAsWatched => 'Marcar como assistido';
	@override String get markAsUnwatched => 'Marcar como não assistido';
}

// Path: audioTracks
class _Translations$audioTracks$pt extends Translations$audioTracks$en {
	_Translations$audioTracks$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String track({required Object n}) => 'Faixa de áudio ${n}';
}

// Path: videoControls
class _Translations$videoControls$pt extends Translations$videoControls$en {
	_Translations$videoControls$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get audioLabel => 'Áudio';
	@override String get subtitlesLabel => 'Legendas';
	@override String addTime({required Object amount, required Object unit}) => '+${amount}${unit}';
	@override String get letterbox => 'Letterbox';
	@override String get fillScreen => 'Preencher tela';
	@override String get stretch => 'Esticar';
	@override String get lockRotation => 'Travar rotação';
	@override String get unlockRotation => 'Destravar rotação';
	@override String get timerActive => 'Temporizador ativo';
	@override String playbackWillPauseIn({required Object duration}) => 'A reprodução pausará em ${duration}';
	@override String get sleepTimerEndOfVideo => 'Fim do vídeo atual';
	@override String get sleepTimerStopAtHeader => 'Parar em';
	@override String get sleepTimerDurationHeader => 'Temporizador';
	@override String get playbackWillPauseAtEnd => 'A reprodução pausará no final deste vídeo';
	@override String get stillWatching => 'Ainda assistindo?';
	@override String pausingIn({required Object seconds}) => 'Pausando em ${seconds}s';
	@override String get continueWatching => 'Continuar';
	@override String get autoPlayNext => 'Reproduzir Próximo Automaticamente';
	@override String get playNext => 'Reproduzir Próximo';
	@override String get playButton => 'Reproduzir';
	@override String get pauseButton => 'Pausar';
	@override String get playbackPaused => 'Pausado';
	@override String get playbackResumed => 'Reproduzindo';
	@override String get loadingVideo => 'Carregando vídeo';
	@override String get showPlaybackControls => 'Mostrar controles de reprodução';
	@override String get hidePlaybackControls => 'Ocultar controles de reprodução';
	@override String seekBackwardButton({required Object seconds}) => 'Retroceder ${seconds} segundos';
	@override String seekForwardButton({required Object seconds}) => 'Avançar ${seconds} segundos';
	@override String get previousButton => 'Episódio anterior';
	@override String get nextButton => 'Próximo episódio';
	@override String get previousChapterButton => 'Capítulo anterior';
	@override String get nextChapterButton => 'Próximo capítulo';
	@override String get muteButton => 'Silenciar';
	@override String get unmuteButton => 'Ativar som';
	@override String get settingsButton => 'Configurações de reprodução';
	@override String get infoButton => 'Informações';
	@override String get tracksButton => 'Áudio e legendas';
	@override String get chaptersButton => 'Capítulos';
	@override String get versionQualityButton => 'Versão e qualidade';
	@override String get versionColumnHeader => 'Versão';
	@override String get qualityColumnHeader => 'Qualidade';
	@override String get qualityOriginal => 'Original';
	@override String qualityPresetLabel({required Object resolution, required Object bitrate}) => '${resolution}p ${bitrate} Mbps';
	@override String get transcodeUnavailableFallback => 'Transcodificação indisponível — reproduzindo qualidade original';
	@override String get subtitleUnavailableFallback => 'Não foi possível carregar as legendas selecionadas — a reprodução continuará sem legendas';
	@override String get pipButton => 'Modo Picture-in-Picture';
	@override String get aspectRatioButton => 'Proporção';
	@override String get ambientLighting => 'Iluminação ambiente';
	@override String get fullscreenButton => 'Entrar em tela cheia';
	@override String get exitFullscreenButton => 'Sair da tela cheia';
	@override String get alwaysOnTopButton => 'Sempre no topo';
	@override String get rotationLockButton => 'Travar rotação';
	@override String get lockScreen => 'Travar tela';
	@override String get screenLockButton => 'Travar tela';
	@override String get longPressToUnlock => 'Pressione e segure para destravar';
	@override String get timelineSlider => 'Linha do tempo do vídeo';
	@override String get volumeSlider => 'Nível de volume';
	@override String endsAt({required Object time}) => 'Termina às ${time}';
	@override String get pipActive => 'Reproduzindo em Picture-in-Picture';
	@override String get pipFailed => 'Falha ao iniciar picture-in-picture';
	@override String get screenshotSaved => 'Captura de tela salva';
	@override String get screenshotFailed => 'Não foi possível fazer uma captura de tela';
	@override String zoomPercent({required Object percent}) => 'Zoom ${percent}%';
	@override String volumePercent({required Object percent}) => 'Volume ${percent}%';
	@override late final _Translations$videoControls$pipErrors$pt pipErrors = _Translations$videoControls$pipErrors$pt._(_root);
	@override String get chapters => 'Capítulos';
	@override String get noChaptersAvailable => 'Nenhum capítulo disponível';
	@override String get queue => 'Fila';
	@override String get noQueueItems => 'Nenhum item na fila';
	@override String get noAudioDevicesAvailable => 'Nenhum dispositivo de áudio disponível';
	@override String get searchSubtitles => 'Pesquisar legendas';
	@override String get language => 'Idioma';
	@override String get noSubtitlesFound => 'Nenhuma legenda encontrada';
	@override String get subtitleDownloaded => 'Legenda baixada';
	@override String get subtitleDownloadedNotApplied => 'A legenda foi baixada, mas não foi possível selecioná-la';
	@override String get subtitleDownloadFailed => 'Falha ao baixar legenda';
	@override String get searchLanguages => 'Pesquisar idiomas...';
	@override String get skipIntro => 'Pular abertura';
	@override String get skipCredits => 'Pular créditos';
	@override String get nextEpisode => 'Próximo episódio';
	@override String subtitleTrack({required Object n}) => 'Faixa ${n}';
	@override String subtitleFile({required Object name}) => 'Legenda ${name}';
	@override String forcedTrack({required Object label}) => '${label} (Forçada)';
	@override String get osdSubtitlesOff => 'Legendas: desativadas';
	@override String osdSubtitles({required Object track}) => 'Legendas: ${track}';
	@override String osdAudio({required Object track}) => 'Áudio: ${track}';
}

// Path: messages
class _Translations$messages$pt extends Translations$messages$en {
	_Translations$messages$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get markedAsWatched => 'Marcado como assistido';
	@override String get markedAsUnwatched => 'Marcado como não assistido';
	@override String get markedAsWatchedOffline => 'Marcado como assistido (será sincronizado quando online)';
	@override String get markedAsUnwatchedOffline => 'Marcado como não assistido (será sincronizado quando online)';
	@override String autoRemovedWatchedDownload({required Object title}) => 'Removido automaticamente: ${title}';
	@override String autoRemovedWatchedDownloads({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n,
		one: 'Removido automaticamente ${n} download assistido',
		other: 'Removidos automaticamente ${n} downloads assistidos',
	);
	@override String get removedFromContinueWatching => 'Removido de Continuar assistindo';
	@override String errorLoading({required Object error}) => 'Erro: ${error}';
	@override String get searchPartialResults => 'Alguns servidores de mídia não puderam ser pesquisados. Exibindo os resultados disponíveis.';
	@override String get streamInterrupted => 'A transmissão foi interrompida. Pressione reproduzir ou avance para tentar novamente.';
	@override String get liveStreamInterrupted => 'A transmissão ao vivo foi interrompida. Pressione reproduzir para tentar novamente.';
	@override String get fileInfoNotAvailable => 'Informações do arquivo não disponíveis';
	@override String get playbackAuthenticationRequired => 'Entre novamente no servidor de mídia para reproduzir este item.';
	@override String get playbackServerUnavailable => 'O servidor de mídia está indisponível. Tente novamente mais tarde.';
	@override String get playbackDataInvalid => 'O servidor retornou informações de reprodução inválidas.';
	@override String get playbackCancelled => 'A reprodução foi cancelada.';
	@override String get playbackFailed => 'Não foi possível iniciar a reprodução.';
	@override String playbackFailedDetail({required Object error}) => 'Não foi possível iniciar a reprodução: ${error}';
	@override String get audioOutputFailed => 'A saída de áudio parou de responder. Verifique a conexão de áudio da TV ou do receptor; se outros aplicativos também estiverem sem som, reinicie o dispositivo.';
	@override String get mediaUnavailable => 'Este conteúdo não está mais disponível.';
	@override String errorLoadingFileInfo({required Object error}) => 'Erro ao carregar as informações do arquivo: ${error}';
	@override String get errorLoadingSeries => 'Erro ao carregar série';
	@override String get musicNotSupported => 'A reprodução de música ainda não é compatível';
	@override String get noDescriptionAvailable => 'Nenhuma descrição disponível';
	@override String get noProfilesAvailable => 'Nenhum perfil disponível';
	@override String get contactAdminForProfiles => 'Entre em contato com o administrador do servidor para adicionar perfis';
	@override String get unableToDetermineLibrarySection => 'Não foi possível determinar a seção da biblioteca deste item';
	@override String get logsCleared => 'Logs limpos';
	@override String get logsCopied => 'Logs copiados para a área de transferência';
	@override String get noLogsAvailable => 'Nenhum log disponível';
	@override String libraryScanning({required Object title}) => 'Escaneando "${title}"...';
	@override String libraryScanStarted({required Object title}) => 'Escaneamento da biblioteca iniciado para "${title}"';
	@override String libraryScanFailed({required Object error}) => 'Falha ao escanear biblioteca: ${error}';
	@override String metadataRefreshing({required Object title}) => 'Atualizando metadados de "${title}"...';
	@override String metadataRefreshStarted({required Object title}) => 'Atualização de metadados iniciada para "${title}"';
	@override String metadataRefreshFailed({required Object error}) => 'Falha ao atualizar metadados: ${error}';
	@override String get logoutConfirm => 'Tem certeza de que deseja sair?';
	@override String get logoutDeviceConfirm => 'Sair do Luroka neste dispositivo? Todos os perfis, incluindo perfis infantis, contas de servidor e mídia baixada, serão removidos deste dispositivo. Você pode fazer login novamente mais tarde.';
	@override String get noSeasonsFound => 'Nenhuma temporada encontrada';
	@override String get seasonsLoadFailed => 'Não foi possível carregar as temporadas';
	@override String get noEpisodesFound => 'Nenhum episódio encontrado na primeira temporada';
	@override String get noEpisodesFoundGeneral => 'Nenhum episódio encontrado';
	@override String get episodesLoadFailed => 'Não foi possível carregar os episódios';
	@override String get noResultsFound => 'Nenhum resultado encontrado';
	@override String sleepTimerSet({required Object label}) => 'Temporizador de suspensão definido como ${label}';
	@override String get noItemsAvailable => 'Nenhum item disponível';
	@override String get failedToCreatePlayQueueNoItems => 'Falha ao criar a fila de reprodução — nenhum item';
	@override String failedPlayback({required Object action, required Object error}) => 'Falha ao ${action}: ${error}';
	@override String get switchingToCompatiblePlayer => 'Alternando para um reprodutor compatível...';
	@override String get serverLimitTitle => 'Falha na reprodução';
	@override String get serverLimitBody => 'Erro do servidor (HTTP 500). Um limite de largura de banda ou transcodificação provavelmente rejeitou esta sessão. Peça ao proprietário do servidor para ajustá-lo.';
	@override String get mediaUnreadableTitle => 'Arquivo indisponível';
	@override String get mediaUnreadableBody => 'O servidor encontrou este item, mas não conseguiu ler o arquivo (HTTP 404). O arquivo provavelmente foi movido, excluído ou o armazenamento está offline. Peça ao responsável pelo servidor para verificar o arquivo e reexaminar a biblioteca.';
	@override String get serverBusyTitle => 'Transmissão indisponível';
	@override String get serverBusyBody => 'O servidor continuou se recusando a transmitir este arquivo (HTTP 503). Ele pode estar reiniciando ou ocupado, ou o armazenamento do arquivo pode estar offline. Tente novamente em instantes — se isso continuar acontecendo, peça ao proprietário do servidor para verificar o servidor e o armazenamento do arquivo.';
	@override String get playbackNotAllowedTitle => 'Reprodução não permitida';
	@override String get playbackNotAllowedBody => 'O servidor se recusou a transmitir este item (HTTP 403). Sua conta pode não ter permissão para reproduzi-lo, ou o servidor pode permitir a reprodução apenas na própria rede local.';
	@override String get logsUploaded => 'Logs enviados';
	@override String get logsUploadFailed => 'Falha ao enviar logs';
	@override String get logId => 'ID do log';
	@override String get burnedSubtitlesUseMenu => 'As legendas estão incorporadas a esta transmissão. Altere-as no menu de legendas.';
	@override String get noVideoUrl => 'Nenhuma URL de vídeo disponível';
	@override String get playbackNoMediaSources => 'O servidor não retornou nenhuma fonte de mídia reproduzível';
	@override String get playbackDataNotPrepared => 'A reprodução foi iniciada antes que os dados estivessem prontos';
	@override String get streamSelectionUnavailable => 'A seleção de fluxos não está disponível para esta fonte';
	@override String get streamSelectionFailed => 'Não foi possível aplicar os fluxos selecionados';
	@override String get trackSelectionNotRemembered => 'Esta escolha de faixa se aplica apenas à reprodução atual.';
	@override String get serverUnavailableForProfile => 'Nenhum servidor está disponível para o perfil ativo';
}

// Path: sourceLibraries
class _Translations$sourceLibraries$pt extends Translations$sourceLibraries$en {
	_Translations$sourceLibraries$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Seus servidores e bibliotecas';
	@override String get description => 'Escolha as bibliotecas que Luroka usa para Início, pesquisa, descoberta de disponibilidade e estúdios. A ordem das linhas iniciais é personalizada separadamente.';
	@override String get partial => 'Alguns servidores não puderam ser verificados. Suas escolhas salvas para essas bibliotecas serão mantidas. Atualize para tentar novamente.';
	@override String get loadFailed => 'Não foi possível carregar suas bibliotecas. Verifique a conexão e tente novamente.';
	@override String get notSelected => 'Não disponível nas bibliotecas selecionadas.';
	@override String get checkOthers => 'Verifique outras fontes conectadas';
	@override String get otherSources => 'Disponível em outras fontes conectadas';
	@override String get playOnce => 'Jogue uma vez';
	@override String get includeLibrary => 'Incluir esta biblioteca';
	@override String get noOthers => 'Nenhuma cópia encontrada em outras fontes conectadas.';
	@override String get chooseOne => 'Escolha pelo menos uma biblioteca para continuar.';
}

// Path: subtitlingStyling
class _Translations$subtitlingStyling$pt extends Translations$subtitlingStyling$en {
	_Translations$subtitlingStyling$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get text => 'Texto';
	@override String get border => 'Borda';
	@override String get background => 'Fundo';
	@override String get fontSize => 'Tamanho da Fonte';
	@override String get textColor => 'Cor do Texto';
	@override String get borderSize => 'Tamanho da Borda';
	@override String get borderColor => 'Cor da Borda';
	@override String get backgroundOpacity => 'Opacidade do Fundo';
	@override String get backgroundColor => 'Cor de Fundo';
	@override String get position => 'Posição';
	@override String get assOverride => 'Substituição ASS';
	@override String get overrideScale => 'Dimensionar';
	@override String get overrideForce => 'Forçar';
	@override String get overrideStrip => 'Remover estilo';
	@override String get positionTop => 'Superior';
	@override String get positionBottom => 'Inferior';
	@override String get useMargins => 'Usar margens';
	@override String get useMarginsDescription => 'Permitir legendas de texto no espaço fora do vídeo. Legendas estilizadas podem manter sua posição original.';
	@override String get anchorToScreen => 'Ancorar à tela';
	@override String get anchorToScreenDescription => 'Exibir as legendas de texto nas faixas pretas abaixo de vídeos em tela ampla';
	@override String get bold => 'Negrito';
	@override String get italic => 'Itálico';
	@override String get renderResolution => 'Resolução de renderização';
	@override String get renderResolutionScreen => 'Resolução da tela';
	@override String get renderResolutionVideo => 'Resolução do vídeo';
}

// Path: mpvConfig
class _Translations$mpvConfig$pt extends Translations$mpvConfig$en {
	_Translations$mpvConfig$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'mpv.conf';
	@override String get description => 'Configurações avançadas do reprodutor de vídeo';
	@override String get presets => 'Predefinições';
	@override String get noPresets => 'Nenhuma predefinição salva';
	@override String get saveAsPreset => 'Salvar como Predefinição...';
	@override String get presetName => 'Nome da Predefinição';
	@override String get presetNameHint => 'Insira um nome para esta predefinição';
	@override String get loadPreset => 'Carregar';
	@override String get deletePreset => 'Excluir';
	@override String get presetSaved => 'Predefinição salva';
	@override String get presetLoaded => 'Predefinição carregada';
	@override String get presetDeleted => 'Predefinição excluída';
	@override String get confirmDeletePreset => 'Tem certeza de que deseja excluir esta predefinição?';
	@override String get configPlaceholder => 'gpu-api=vulkan\nhwdec=auto\n# comment';
	@override String get lineHint => 'option=value';
	@override String get addLine => 'Adicionar linha';
	@override String get removeLine => 'Remover linha';
	@override String get embeddedVoHint => 'vo, gpu-context e gpu-api são ignorados no Linux: o vídeo incorporado é sempre renderizado via vo=libmpv no plano de vídeo, e gpu-next (necessário para shaders de computação como ArtCNN) não pode ser executado incorporado.';
}

// Path: dialog
class _Translations$dialog$pt extends Translations$dialog$en {
	_Translations$dialog$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get confirmAction => 'Confirmar Ação';
}

// Path: profiles
class _Translations$profiles$pt extends Translations$profiles$en {
	_Translations$profiles$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get manageProfiles => 'Gerenciar perfis';
	@override String get quickAccess => 'Acesso rápido';
	@override String get signOutDevice => 'Sair deste dispositivo';
	@override String get addLurokaProfile => 'Adicionar perfil Luroka';
	@override String get switchingProfile => 'Mudando perfil…';
	@override String get deleteThisProfileTitle => 'Excluir este perfil?';
	@override String deleteThisProfileMessage({required Object displayName}) => 'Remover ${displayName}. As conexões não serão afetadas.';
	@override String get active => 'Ativo';
	@override String get manage => 'Gerenciar';
	@override String get delete => 'Excluir';
	@override String get signOut => 'Sair';
	@override String get signOutPlexTitle => 'Sair do Plex?';
	@override String signOutPlexMessage({required Object displayName}) => 'Remover ${displayName} e todos os usuários do Plex Home? Você pode entrar novamente quando quiser.';
	@override String get signOutPlexDeleteDownloads => 'Exclua também downloads';
	@override String get signOutPlexDeleteDownloadsDescription => 'Caso contrário, eles permanecerão neste dispositivo e voltarão quando você fizer login novamente nesta conta.';
	@override String get signedOutPlex => 'Saiu do Plex.';
	@override String get signOutFailed => 'Falha ao sair.';
	@override String get sectionTitle => 'Perfis';
	@override String get summarySingle => 'Adicione perfis para combinar usuários gerenciados e identidades locais';
	@override String summaryMultipleWithActive({required Object count, required Object activeName}) => '${count} perfis · ativo: ${activeName}';
	@override String summaryMultiple({required Object count}) => '${count} perfis';
	@override String get removeConnectionTitle => 'Remover conexão?';
	@override String removeConnectionMessage({required Object displayName, required Object connectionLabel}) => 'Remover acesso de ${displayName} a ${connectionLabel}. Outros perfis mantêm o acesso.';
	@override String get deleteProfileTitle => 'Excluir perfil?';
	@override String deleteProfileMessage({required Object displayName}) => 'Remover ${displayName} e suas conexões. Servidores continuam disponíveis.';
	@override String get profileNameLabel => 'Nome do perfil';
	@override String get pinProtectionLabel => 'Proteção por PIN';
	@override String get pinManagedByPlex => 'PIN gerenciado pelo Plex. Edite em plex.tv.';
	@override String get noPinSetEditOnPlex => 'Nenhum PIN definido. Para exigir um, edite o usuário do Plex Home em plex.tv.';
	@override String get setPin => 'Definir PIN';
	@override String get setPinTitle => 'Definir PIN';
	@override String get confirmPinTitle => 'Confirmar PIN';
	@override String get pinSet => 'PIN definido';
	@override String get changePin => 'Alterar';
	@override String get removePin => 'Remover';
	@override String get connectionsLabel => 'Conexões';
	@override String get add => 'Adicionar';
	@override String get deleteProfileButton => 'Excluir perfil';
	@override String get noConnectionsHint => 'Sem conexões — adicione uma para usar este perfil.';
	@override String get noConnections => 'Sem conexões';
	@override String get plexHomeAccount => 'Conta Plex Home';
	@override String plexAccountChip({required Object account}) => 'Conta Plex: ${account}';
	@override String plexAccountUserChip({required Object user, required Object account}) => '${user} via ${account}';
	@override String get connectionDefault => 'Padrão';
	@override String connectionAs({required Object displayName}) => 'como ${displayName}';
	@override String get makeDefault => 'Definir como padrão';
	@override String get removeConnection => 'Remover';
	@override String get profileRenamed => 'Perfil renomeado.';
	@override String borrowAddTo({required Object displayName}) => 'Adicionar a ${displayName}';
	@override String get borrowExplain => 'Use a conexão de outro perfil. Perfis protegidos por PIN exigem PIN.';
	@override String get borrowEmpty => 'Nenhuma conexão disponível ainda.';
	@override String get borrowEmptySubtitle => 'Conecte Plex, Jellyfin ou Emby a outro perfil primeiro.';
	@override String get borrowLoadFailed => 'Não foi possível carregar as conexões disponíveis. Tente novamente.';
	@override String borrowFromProfile({required Object displayName}) => 'De ${displayName}';
	@override String get borrowConnectionBorrowed => 'Conexão adicionada ao perfil.';
	@override String get borrowFailed => 'Não foi possível adicionar a conexão.';
	@override String get incorrectPin => 'PIN incorreto.';
	@override String get incorrectPinTryAgain => 'PIN incorreto. Tente novamente.';
	@override String get sourceProfileMissingParentAccount => 'O perfil de origem não tem a conta principal.';
	@override String get failedToLoadHomeUsers => 'Não foi possível carregar os usuários do Plex Home. Verifique sua conexão e tente novamente.';
	@override String get failedToVerifyPin => 'Não foi possível verificar o PIN.';
	@override String get newProfile => 'Novo perfil';
	@override String get profileNameHint => 'Ex.: Visitantes, Crianças, Sala de família';
	@override String get pinProtectionOptional => 'Proteção por PIN (opcional)';
	@override String get pinExplain => 'PIN de 4 dígitos necessário para trocar perfis.';
	@override String get continueButton => 'Continuar';
	@override String get pinsDontMatch => 'Os PINs não correspondem';
	@override String get tokenIdentityMismatch => 'O token do perfil do Plex foi associado a um servidor inesperado';
}

// Path: connections
class _Translations$connections$pt extends Translations$connections$en {
	_Translations$connections$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get sectionTitle => 'Conexões';
	@override String get addConnection => 'Adicionar conexão';
	@override String get addConnectionSubtitleNoProfile => 'Entre com Plex ou conecte um servidor Jellyfin ou Emby';
	@override String addConnectionSubtitleScoped({required Object displayName}) => 'Adicionar a ${displayName}: Plex, Jellyfin, Emby ou outra conexão de perfil';
	@override String sessionExpiredOne({required Object name}) => 'Sessão de ${name} expirada';
	@override String sessionExpiredMany({required Object count}) => 'Sessões expiradas em ${count} servidores';
	@override String accessDeniedOne({required Object name}) => '${name} negou acesso a esta conta';
	@override String accessDeniedMany({required Object count}) => '${count} servidores negaram acesso a esta conta';
	@override String get signInAgain => 'Entrar novamente';
	@override String editMediaBrowserTitle({required Object product}) => 'Editar conexão do ${product}';
	@override String editMediaBrowserIntro({required Object serverName}) => 'Adicione ou remova URLs para ${serverName}. O Luroka usará a URL acessível com menor latência.';
}

// Path: serversAccounts
class _Translations$serversAccounts$pt extends Translations$serversAccounts$en {
	_Translations$serversAccounts$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Servidores e contas';
	@override String get subtitle => 'Status de login para seus servidores Plex, Jellyfin e Emby';
	@override String get online => 'On-line';
	@override String get offline => 'Off-line';
	@override String get unknown => 'Não conectado aqui';
	@override String get usedByNone => 'Não usado por nenhum perfil';
	@override String usedByOne({required Object name}) => 'Usado por ${name}';
	@override String usedByMany({required Object name, required Object count}) => 'Usado por ${name} e ${count} mais';
	@override String serversOnline({required Object online, required Object total}) => '${online} de servidores ${total} on-line';
	@override String get noServers => 'Nada conectado ainda. Adicione sua conta Plex ou um servidor Jellyfin ou Emby.';
	@override String get editUrls => 'Editar URLs do servidor';
}

// Path: accountPreferences
class _Translations$accountPreferences$pt extends Translations$accountPreferences$en {
	_Translations$accountPreferences$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get sectionTitle => 'Preferências da conta';
	@override String hubSubtitleSingle({required Object account}) => 'Opções de áudio, legendas e biblioteca salvas em ${account}';
	@override String hubSubtitleMultiple({required Object count}) => 'Opções de áudio, legendas e biblioteca salvas em ${count} contas';
	@override String get pickAccount => 'Cada conta armazena suas próprias preferências. Escolha a que deseja editar.';
	@override String get storedOnAccount => 'Essas opções são salvas na conta do servidor e compartilhadas por cada perfil e aplicativo Luroka que usa essa conta, inclusive em outros dispositivos.';
	@override String get noAccounts => 'Nenhuma conta para configurar';
	@override String get noAccountsHint => 'Entre no Plex ou conecte um servidor Jellyfin ou Emby, e as preferências armazenadas nessa conta aparecerão aqui.';
	@override String get unavailable => 'Não foi possível acessar esta conta';
	@override String get loadFailed => 'Não foi possível carregar estas preferências';
	@override String get noPreference => 'Sem preferência';
	@override String get notSet => 'Não definido';
	@override late final _Translations$accountPreferences$groups$pt groups = _Translations$accountPreferences$groups$pt._(_root);
	@override String get preferredAudioLanguage => 'Idioma de áudio preferido';
	@override String get autoSelectAudio => 'Escolher áudio pelo idioma';
	@override String get autoSelectAudioDescription => 'Desativado mantém a faixa de áudio que o arquivo marca como padrão.';
	@override String get preferredSubtitleLanguage => 'Idioma de legenda preferido';
	@override String get subtitleMode => 'Ativar legendas';
	@override late final _Translations$accountPreferences$subtitleModes$pt subtitleModes = _Translations$accountPreferences$subtitleModes$pt._(_root);
	@override String get subtitleAccessibility => 'Legendas SDH';
	@override late final _Translations$accountPreferences$subtitleAccessibilityOptions$pt subtitleAccessibilityOptions = _Translations$accountPreferences$subtitleAccessibilityOptions$pt._(_root);
	@override String get forcedSubtitles => 'Legendas forçadas';
	@override late final _Translations$accountPreferences$forcedSubtitleOptions$pt forcedSubtitleOptions = _Translations$accountPreferences$forcedSubtitleOptions$pt._(_root);
	@override String get displayMissingEpisodes => 'Mostrar episódios ausentes';
	@override String get displayMissingEpisodesDescription => 'Listar episódios que o servidor conhece, mas para os quais não há arquivo.';
	@override String get hidePlayedInLatest => 'Ocultar itens assistidos em Recentes';
	@override String get hidePlayedInLatestDescription => 'Manter fora das linhas Recentes do servidor os itens que você já assistiu.';
	@override String get displayCollectionsView => 'Mostrar a visualização de Coleções';
	@override String get displayCollectionsViewDescription => 'Oferecer a visualização de Coleções do servidor junto às suas bibliotecas.';
	@override String get rewatchingInNextUp => 'Manter séries reassistidas em A seguir';
	@override String get rewatchingInNextUpDescription => 'Ao terminar uma série, comece a assistir de novo e A seguir acompanha a reexibição em vez de remover a série.';
	@override String get watchedIndicator => 'Indicadores de assistido';
	@override late final _Translations$accountPreferences$watchedIndicatorOptions$pt watchedIndicatorOptions = _Translations$accountPreferences$watchedIndicatorOptions$pt._(_root);
	@override String get mediaReviewsVisibility => 'Avaliações e resenhas';
	@override late final _Translations$accountPreferences$mediaReviewsOptions$pt mediaReviewsOptions = _Translations$accountPreferences$mediaReviewsOptions$pt._(_root);
}

// Path: discover
class _Translations$discover$pt extends Translations$discover$en {
	_Translations$discover$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Descobrir';
	@override String get noContentAvailable => 'Nenhum conteúdo disponível';
	@override String get addMediaToLibraries => 'Adicione mídias às suas bibliotecas';
	@override String get continueWatching => 'Continuar Assistindo';
	@override String continueWatchingIn({required Object library}) => 'Continuar assistindo em ${library}';
	@override String get nextUp => 'A seguir';
	@override String nextUpIn({required Object library}) => 'A seguir em ${library}';
	@override String get recentlyAdded => 'Adicionados recentemente';
	@override String recentlyAddedIn({required Object library}) => 'Adicionados recentemente em ${library}';
	@override String latestAlbumsIn({required Object library}) => 'Álbuns mais recentes em ${library}';
	@override String recentlyPlayedIn({required Object library}) => 'Reproduzidos recentemente em ${library}';
	@override String mostPlayedIn({required Object library}) => 'Mais reproduzidos em ${library}';
	@override String playEpisode({required Object season, required Object episode}) => 'S${season}E${episode}';
	@override String get overview => 'Sinopse';
	@override String get cast => 'Elenco';
	@override String get extras => 'Trailers e extras';
	@override String get studio => 'Estúdio';
	@override String get rating => 'Avaliação';
	@override String get director => 'Diretor';
	@override String get directors => 'Diretores';
	@override String get movie => 'Filme';
	@override String get tvShow => 'Série de TV';
	@override String minutesLeft({required Object minutes}) => '${minutes} min restantes';
	@override String get moreLikeThis => 'Títulos semelhantes';
	@override String titleCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n,
		one: '${n} título',
		other: '${n} títulos',
	);
	@override late final _Translations$discover$person$pt person = _Translations$discover$person$pt._(_root);
}

// Path: errors
class _Translations$errors$pt extends Translations$errors$en {
	_Translations$errors$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String searchFailed({required Object error}) => 'Falha na busca: ${error}';
	@override String get searchUnavailable => 'A busca não conseguiu alcançar nenhum servidor de mídia.';
	@override String connectionTimeout({required Object context}) => 'Tempo de conexão esgotado ao carregar ${context}';
	@override String get connectionFailed => 'Não foi possível conectar ao servidor de mídia';
	@override String unableToLoad({required Object context}) => 'Não foi possível carregar ${context}. Tente novamente.';
	@override String get noClientAvailable => 'Nenhum cliente disponível';
	@override String get pleaseEnterToken => 'Insira um token';
	@override String get invalidToken => 'Token inválido';
	@override String failedToVerifyToken({required Object error}) => 'Falha ao verificar token: ${error}';
	@override String failedToSwitchProfile({required Object displayName}) => 'Falha ao trocar para ${displayName}';
	@override String failedToDeleteProfile({required Object displayName}) => 'Falha ao excluir ${displayName}';
	@override String get failedToRate => 'Não foi possível atualizar a classificação';
	@override String get reasonTimedOut => 'o tempo de conexão se esgotou';
	@override String get reasonUnreachable => 'não foi possível alcançar o servidor';
	@override String get reasonRefused => 'o servidor recusou a solicitação';
	@override String get reasonNotFound => 'o item não está mais no servidor';
	@override String get reasonServerError => 'o servidor relatou um erro';
	@override String get reasonCancelled => 'a solicitação foi cancelada';
	@override String get reasonUnexpected => 'ocorreu um erro inesperado';
}

// Path: libraries
class _Translations$libraries$pt extends Translations$libraries$en {
	_Translations$libraries$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bibliotecas';
	@override String get fallbackTitle => 'Biblioteca';
	@override String get scanLibraryFiles => 'Escanear Arquivos da Biblioteca';
	@override String get scanLibrary => 'Escanear Biblioteca';
	@override String get analyze => 'Analisar';
	@override String get analyzeLibrary => 'Analisar Biblioteca';
	@override String get refreshMetadata => 'Atualizar Metadados';
	@override String get emptyTrash => 'Esvaziar Lixeira';
	@override String emptyingTrash({required Object title}) => 'Esvaziando lixeira de "${title}"...';
	@override String trashEmptied({required Object title}) => 'Lixeira esvaziada de "${title}"';
	@override String failedToEmptyTrash({required Object error}) => 'Falha ao esvaziar lixeira: ${error}';
	@override String analyzing({required Object title}) => 'Analisando "${title}"...';
	@override String analysisStarted({required Object title}) => 'Análise iniciada para "${title}"';
	@override String failedToAnalyze({required Object error}) => 'Falha ao analisar biblioteca: ${error}';
	@override String get noLibrariesFound => 'Nenhuma biblioteca encontrada';
	@override String get allLibrariesHidden => 'Todas as bibliotecas estão ocultas';
	@override String hiddenLibrariesCount({required Object count}) => 'Bibliotecas ocultas (${count})';
	@override String get thisLibraryIsEmpty => 'Esta biblioteca está vazia';
	@override String get noItemsMatchFilters => 'Nenhum item corresponde aos filtros ativos';
	@override String get resetFilters => 'Redefinir filtros';
	@override String get all => 'Todos';
	@override String get clearAll => 'Limpar tudo';
	@override String scanLibraryConfirm({required Object title}) => 'Tem certeza de que deseja escanear "${title}"?';
	@override String analyzeLibraryConfirm({required Object title}) => 'Tem certeza de que deseja analisar "${title}"?';
	@override String refreshMetadataConfirm({required Object title}) => 'Tem certeza de que deseja atualizar os metadados de "${title}"?';
	@override String emptyTrashConfirm({required Object title}) => 'Tem certeza de que deseja esvaziar a lixeira de "${title}"?';
	@override String get manageLibraries => 'Gerenciar Bibliotecas';
	@override String get sort => 'Ordenar';
	@override String get sortBy => 'Ordenar por';
	@override String get filters => 'Filtros';
	@override String get confirmActionMessage => 'Tem certeza de que deseja realizar esta ação?';
	@override String get showLibrary => 'Mostrar biblioteca';
	@override String get hideLibrary => 'Ocultar biblioteca';
	@override String get libraryOptions => 'Opções da biblioteca';
	@override String get content => 'conteúdo da biblioteca';
	@override String get selectLibrary => 'Selecionar biblioteca';
	@override String filtersWithCount({required Object count}) => 'Filtros (${count})';
	@override String get noRecommendations => 'Nenhuma recomendação disponível';
	@override String get noCollections => 'Nenhuma coleção nesta biblioteca';
	@override String get noFoldersFound => 'Nenhuma pasta encontrada';
	@override String get folders => 'pastas';
	@override late final _Translations$libraries$tabs$pt tabs = _Translations$libraries$tabs$pt._(_root);
	@override late final _Translations$libraries$groupings$pt groupings = _Translations$libraries$groupings$pt._(_root);
	@override late final _Translations$libraries$filterCategories$pt filterCategories = _Translations$libraries$filterCategories$pt._(_root);
	@override late final _Translations$libraries$sortLabels$pt sortLabels = _Translations$libraries$sortLabels$pt._(_root);
	@override late final _Translations$libraries$advancedFilters$pt advancedFilters = _Translations$libraries$advancedFilters$pt._(_root);
}

// Path: about
class _Translations$about$pt extends Translations$about$en {
	_Translations$about$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sobre';
	@override String get openSourceLicenses => 'Licenças de código aberto';
	@override String versionLabel({required Object version}) => 'Versão ${version}';
	@override String get appDescription => 'Um belo cliente de Plex, Jellyfin e Emby feito com Flutter';
	@override String get customSource => 'Código fonte';
	@override String get basedOnLuroka => 'Construído na base de código Plezy';
	@override String get viewLicensesDescription => 'Ver as licenças de bibliotecas de terceiros';
	@override String get appSection => 'Aplicativo';
	@override String get communitySection => 'Comunidade';
	@override String get creditsSection => 'Créditos';
	@override String get legalSection => 'Jurídico';
	@override String versionMeta({required Object version, required Object build, required Object platform}) => 'v${version} (${build}) · ${platform}';
	@override String versionMetaNoBuild({required Object version, required Object platform}) => 'v${version} · ${platform}';
	@override String get versionUnavailable => 'Versão indisponível';
	@override String get versionDetails => 'Detalhes da versão';
	@override String versionDetailsTitle({required Object version, required Object build}) => 'Luroka ${version} (${build})';
	@override String platformLine({required Object platform}) => 'Plataforma: ${platform}';
	@override String deviceLine({required Object model}) => 'Dispositivo: ${model}';
	@override String packageLine({required Object package}) => 'Pacote: ${package}';
	@override String localeLine({required Object locale}) => 'Idioma: ${locale}';
	@override String get copyDetails => 'Copiar detalhes';
	@override String get detailsCopied => 'Detalhes do aplicativo copiados';
	@override String get detailsCopyFailed => 'Não foi possível copiar os detalhes do app';
	@override String get checkForUpdatesDescription => 'Verifique o GitHub para uma versão mais recente';
	@override String get checkingForUpdates => 'Verificando atualizações…';
	@override String get whatsNew => 'O que há de novo';
	@override String get releaseNotesUnavailable => 'Nenhuma nota de lançamento está disponível.';
	@override String get sourceCodeDescription => 'Luroka no GitHub';
	@override String get reportIssue => 'Informar um problema';
	@override String get reportIssueDescription => 'Conte-nos o que deu errado';
	@override String get documentation => 'Documentação';
	@override String get documentationDescription => 'Configuração, recursos e notas de construção';
	@override String get upstreamProjectDescription => 'Projeto de código aberto por edde746 e colaboradores';
	@override String get upstreamWebsite => 'Site a montante';
	@override String get attribution => 'Dados e atribuição';
	@override String get attributionDescription => 'Metadados, classificações e marcas registradas';
	@override String get attributionBody => 'Este produto usa TMDB API, mas não é endossado ou certificado por TMDB. Listas de popularidade, metadados e classificações IMDb são fornecidas pela Cinemeta. As pontuações mantêm seus rótulos de origem.';
	@override String get trademarkNotices => 'Plex, Jellyfin, Emby, Trakt, Simkl, MyAnimeList, AniList, TMDB e marcas relacionadas são marcas registradas de seus respectivos proprietários. Luroka não é afiliado ou endossado por eles.';
	@override String get privacyPolicy => 'Política de privacidade';
	@override String get privacyPolicyDescription => 'Como seus dados são tratados';
	@override String get gplLicense => 'Licença GNU GPL-3.0';
	@override String get gplLicenseDescription => 'Luroka é software livre';
	@override String get linkOpenFailed => 'Não foi possível abrir este link';
	@override String get opensInBrowser => 'Abre no seu navegador';
	@override String get footer => 'Luroka é um software livre sob GPL-3.0.';
	@override String copyright({required Object year}) => '© ${year} Luroka contribuidores';
}

// Path: serverSelection
class _Translations$serverSelection$pt extends Translations$serverSelection$en {
	_Translations$serverSelection$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String noServersFoundForAccount({required Object username, required Object email}) => 'Nenhum servidor encontrado para ${username} (${email})';
	@override String failedToLoadServers({required Object error}) => 'Falha ao carregar servidores: ${error}';
	@override String get noValidServers => 'Nenhum servidor utilizável foi encontrado nesta conta';
}

// Path: hubDetail
class _Translations$hubDetail$pt extends Translations$hubDetail$en {
	_Translations$hubDetail$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Título';
	@override String get releaseYear => 'Ano de Lançamento';
	@override String get dateAdded => 'Data de Adição';
	@override String get rating => 'Avaliação';
	@override String get noItemsFound => 'Nenhum item encontrado';
}

// Path: logs
class _Translations$logs$pt extends Translations$logs$en {
	_Translations$logs$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get clearLogs => 'Limpar Logs';
	@override String get copyLogs => 'Copiar Logs';
	@override String get uploadLogs => 'Enviar Logs';
}

// Path: startup
class _Translations$startup$pt extends Translations$startup$en {
	_Translations$startup$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get failedTitle => 'O Luroka não conseguiu iniciar';
	@override String get failedBody => 'Algo deu errado durante a inicialização. Os detalhes abaixo identificam o que falhou.';
	@override String get failedBodyRepairable => 'O arquivo de configurações salvo do Luroka está danificado e precisa ser reconstruído antes que o Luroka possa iniciar. Tentar novamente não vai ajudar — escolha Reparar armazenamento.';
	@override String get phaseLabel => 'Etapa';
	@override String get showDetails => 'Mostrar detalhes';
	@override String get hideDetails => 'Ocultar detalhes';
	@override String get copyDetails => 'Copiar detalhes';
	@override String get detailsCopied => 'Detalhes copiados para a área de transferência';
	@override String get uploadDetails => 'Enviar detalhes';
	@override String get repairStorage => 'Reparar armazenamento';
	@override String get repairTitle => 'Reparar dados armazenados?';
	@override String get repairBodyCommon => 'O arquivo de configurações do Luroka está danificado e não pode ser lido. Reparar redefine todas as configurações para o padrão.';
	@override String get repairBodyOneCredential => 'Um login salvo está danificado e não pode ser lido. Reparar remove apenas ele; suas outras configurações permanecem intactas.';
	@override String get repairBodySignInsKept => 'Seus servidores e perfis devem permanecer conectados.';
	@override String get repairBodySignInsLost => 'A chave que protege seus logins salvos não pode ser recuperada deste arquivo, então você terá que entrar novamente em todos os servidores e perfis. Nada no seu servidor de mídia é afetado.';
	@override String get repairBodySessionsUncertain => 'Os rastreadores (MAL, AniList, Simkl, Trakt) e o Seerr são armazenados separadamente e podem ou não ser preservados. O Luroka informará exatamente o que foi mantido.';
	@override String get repairConfirm => 'Reparar';
	@override String get repairSucceeded => 'Armazenamento reparado';
	@override String get repairNeedsRestart => 'Armazenamento reparado — reinício necessário';
	@override String get restartRequiredBody => 'Seus dados foram reparados, mas o Luroka precisa iniciar do zero antes de usá-los. Feche o Luroka e abra-o novamente.';
	@override String get quitLuroka => 'Sair do Luroka';
	@override String get repairFailed => 'Falha no reparo';
	@override String get repairKeptSignIns => 'Seus servidores e perfis ainda estão conectados.';
	@override String get repairLostSignIns => 'A chave que protege seus logins salvos não pôde ser recuperada. Você terá que entrar novamente em todos os servidores e perfis.';
	@override String get repairLostSessions => 'Pelo menos uma conexão de rastreador ou do Seerr foi perdida e precisa ser reconectada.';
	@override String get backupTitle => 'Uma cópia do arquivo danificado foi mantida';
	@override String get backupWarning => 'Ele contém suas credenciais de login. Não envie nem compartilhe.';
	@override String get deleteBackup => 'Excluir cópia';
	@override String get backupDeleted => 'Cópia excluída.';
	@override String get previousFailureTitle => 'O Luroka falhou ao iniciar da última vez';
}

// Path: licenses
class _Translations$licenses$pt extends Translations$licenses$en {
	_Translations$licenses$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get relatedPackages => 'Pacotes Relacionados';
	@override String get license => 'Licença';
	@override String licenseNumber({required Object number}) => 'Licença ${number}';
	@override String licensesCount({required Object count}) => '${count} licenças';
	@override String get searchHint => 'Pesquisar pacotes';
	@override String noResults({required Object query}) => 'Nenhum pacote corresponde a "${query}"';
	@override String get clearSearch => 'Limpar pesquisa';
}

// Path: navigation
class _Translations$navigation$pt extends Translations$navigation$en {
	_Translations$navigation$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get libraries => 'Bibliotecas';
	@override String get downloads => 'Downloads';
	@override String get liveTv => 'TV ao Vivo';
	@override String get explore => 'Explorar';
}

// Path: explore
class _Translations$explore$pt extends Translations$explore$en {
	_Translations$explore$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Explorar';
	@override String get selectSource => 'Selecionar fonte';
	@override late final _Translations$explore$rows$pt rows = _Translations$explore$rows$pt._(_root);
	@override late final _Translations$explore$status$pt status = _Translations$explore$status$pt._(_root);
	@override String episodeCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n,
		one: '${n} episódio',
		other: '${n} episódios',
	);
	@override String get cast => 'Elenco';
	@override String get characters => 'Personagens';
	@override String get addToWatchlist => 'Adicionar à lista para assistir';
	@override String get removeFromWatchlist => 'Remover da lista para assistir';
	@override String get addedToWatchlist => 'Adicionado à lista de interesses';
	@override String get removedFromWatchlist => 'Removido da lista de interesses';
	@override String get watchlistUpdateFailed => 'Não foi possível atualizar a lista para assistir';
	@override String get watchlistNoMatch => 'Não foi possível associar este item a uma lista de interesses';
	@override String get notInLibrary => 'Não está na sua biblioteca';
	@override String get inTheseLibraries => 'Nestas bibliotecas';
	@override String get checkingLibrary => 'Verificando sua biblioteca...';
	@override String libraryCheckFailed({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n,
		one: 'Não foi possível verificar ${n} servidor',
		other: 'Não foi possível verificar ${n} servidores',
	);
	@override String get emptyTitle => 'Ainda não há nada aqui';
	@override String emptyMessage({required Object source}) => 'As linhas de ${source} aparecerão aqui quando tiverem conteúdo.';
	@override String searchHint({required Object source}) => 'Buscar em ${source}';
	@override String searchEmpty({required Object query}) => 'Nenhum resultado para "${query}"';
	@override String searchPrompt({required Object source}) => 'Busque filmes e séries em ${source}.';
	@override String get searchFailed => 'Falha na busca. Verifique sua conexão e tente novamente.';
	@override late final _Translations$explore$badge$pt badge = _Translations$explore$badge$pt._(_root);
	@override late final _Translations$explore$stats$pt stats = _Translations$explore$stats$pt._(_root);
	@override late final _Translations$explore$season$pt season = _Translations$explore$season$pt._(_root);
	@override late final _Translations$explore$format$pt format = _Translations$explore$format$pt._(_root);
	@override late final _Translations$explore$sourceMaterial$pt sourceMaterial = _Translations$explore$sourceMaterial$pt._(_root);
	@override late final _Translations$explore$creditRole$pt creditRole = _Translations$explore$creditRole$pt._(_root);
	@override late final _Translations$explore$relation$pt relation = _Translations$explore$relation$pt._(_root);
	@override String broadcast({required Object day, required Object time}) => 'Vai ao ar ${day} às ${time}';
	@override String broadcastWithZone({required Object day, required Object time, required Object timezone}) => 'Vai ao ar ${day} às ${time} ${timezone}';
	@override late final _Translations$explore$detail$pt detail = _Translations$explore$detail$pt._(_root);
	@override String totalResults({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n,
		one: '${n} resultado',
		other: '${n} resultados',
	);
}

// Path: liveTv
class _Translations$liveTv$pt extends Translations$liveTv$en {
	_Translations$liveTv$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'TV ao Vivo';
	@override String get guide => 'Guia';
	@override String get noChannels => 'Nenhum canal disponível';
	@override String get noDvr => 'Nenhum DVR configurado em nenhum servidor';
	@override String get serverUnavailable => 'O servidor de TV ao vivo não está disponível.';
	@override String get serverNotConnected => 'O servidor de TV ao vivo não está conectado.';
	@override String get noPrograms => 'Nenhum dado de programação disponível';
	@override String get liveStreamFailed => 'Falha na transmissão ao vivo';
	@override String get unknownProgram => 'Programa desconhecido';
	@override String get unknownHub => 'Desconhecido';
	@override String get unknownError => 'Erro desconhecido';
	@override String channelNumber({required Object number}) => 'Canal ${number}';
	@override String get unknownChannel => 'Canal desconhecido';
	@override String get live => 'AO VIVO';
	@override String get reloadGuide => 'Recarregar Guia';
	@override String get searchGuide => 'Buscar no guia';
	@override String get searchHint => 'Buscar canais e programas';
	@override String searchNoResults({required Object query}) => 'Nenhuma correspondência para "${query}"';
	@override String get channelsSection => 'Canais';
	@override String get programsSection => 'Programas';
	@override String get now => 'Agora';
	@override String get today => 'Hoje';
	@override String get tomorrow => 'Amanhã';
	@override String get midnight => 'Meia-noite';
	@override String get overnight => 'Madrugada';
	@override String get morning => 'Manhã';
	@override String get daytime => 'Dia';
	@override String get evening => 'Noite';
	@override String get lateNight => 'Madrugada';
	@override String get whatsOn => 'O que está passando';
	@override String get watchChannel => 'Assistir ao canal';
	@override String get favorites => 'Favoritos';
	@override String get reorderFavorites => 'Reordenar favoritos';
	@override String get noFavoriteChannels => 'Nenhum canal favorito';
	@override String get noFavoriteChannelsHint => 'Mostre todos os canais e mantenha um canal pressionado para adicioná-lo aos favoritos.';
	@override String get showAllChannels => 'Mostrar todos os canais';
	@override String get favoritesLoadFailed => 'Não foi possível carregar os favoritos. Verifique sua conexão e tente novamente.';
	@override String get favoritesUpdateFailed => 'Não foi possível atualizar os favoritos. Verifique sua conexão e tente novamente.';
	@override String get joinSession => 'Entrar na sessão em andamento';
	@override String watchFromStart({required Object minutes}) => 'Assistir do início (${minutes} min atrás)';
	@override String get watchLive => 'Assistir ao vivo';
	@override String get goToLive => 'Ir para o ponto ao vivo';
	@override String get record => 'Gravar';
	@override String get recordEpisode => 'Gravar episódio';
	@override String get recordSeries => 'Gravar série';
	@override String get recordOptions => 'Opções de gravação';
	@override String get saveTo => 'Salvar em';
	@override String get recordings => 'Gravações';
	@override String get scheduledRecordings => 'Agendadas';
	@override String get recordingRules => 'Regras de gravação';
	@override String get noScheduledRecordings => 'Sem gravações agendadas';
	@override String get manageRecording => 'Gerenciar gravação';
	@override String get cancelRecording => 'Cancelar gravação';
	@override String get cancelRecordingTitle => 'Cancelar esta gravação?';
	@override String cancelRecordingMessage({required Object title}) => '${title} não será mais gravado.';
	@override String get deleteRule => 'Excluir regra';
	@override String get deleteRuleTitle => 'Excluir regra de gravação?';
	@override String deleteRuleMessage({required Object title}) => 'Episódios futuros de ${title} não serão gravados.';
	@override String get recordingScheduled => 'Gravação agendada';
	@override String get alreadyScheduled => 'Este programa já está agendado';
	@override String get dvrAdminRequired => 'As configurações de DVR exigem uma conta de administrador';
	@override String get recordingFailed => 'Não foi possível agendar a gravação';
	@override String get recordingTargetMissing => 'Não foi possível determinar a biblioteca de gravação';
	@override String get recordNotAvailable => 'Gravação indisponível para este programa';
	@override String get recordingCancelled => 'Gravação cancelada';
	@override String get recordingRuleDeleted => 'Regra de gravação excluída';
	@override String get processRecordingRules => 'Reavaliar regras';
	@override String get recordingInProgress => 'Gravando agora';
	@override String recordingsCount({required Object count}) => '${count} agendadas';
	@override String get editRule => 'Editar regra';
	@override String get editRuleAction => 'Editar';
	@override String get recordingRuleUpdated => 'Regra de gravação atualizada';
	@override String get guideReloadRequested => 'Atualização do guia solicitada';
	@override String get guideReloadFailed => 'Não foi possível atualizar o guia';
	@override String get rulesProcessRequested => 'Reavaliação de regras solicitada';
	@override String get rulesProcessFailed => 'Não foi possível reavaliar as regras de gravação';
	@override String get recordShow => 'Gravar programa';
	@override late final _Translations$liveTv$recordSettings$pt recordSettings = _Translations$liveTv$recordSettings$pt._(_root);
	@override String startingInMinutes({required Object minutes}) => 'Começa em ${minutes} min';
	@override String dayAtTime({required Object day, required Object time}) => '${day} às ${time}';
	@override String invalidPlaybackData({required Object product}) => '${product} retornou dados inválidos de reprodução de TV ao Vivo';
	@override String get failedToStartChannel => 'Não foi possível iniciar o canal ao vivo';
	@override String get failedToBuildStreamUrl => 'Não foi possível gerar a URL da transmissão';
	@override String playbackStartFailed({required Object reason}) => 'Não foi possível iniciar o canal: ${reason}';
	@override String channelSwitchFailed({required Object reason}) => 'Não foi possível trocar de canal: ${reason}';
}

// Path: collections
class _Translations$collections$pt extends Translations$collections$en {
	_Translations$collections$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Coleções';
	@override String get collection => 'Coleção';
	@override String get empty => 'A coleção está vazia';
	@override String get deleteCollection => 'Excluir Coleção';
	@override String deleteConfirm({required Object title}) => 'Excluir "${title}"? Não pode ser desfeito.';
	@override String get deleted => 'Coleção excluída';
	@override String get deleteFailed => 'Falha ao excluir coleção';
	@override String deleteFailedWithError({required Object error}) => 'Falha ao excluir coleção: ${error}';
	@override String get selectCollection => 'Selecionar Coleção';
	@override String get collectionName => 'Nome da Coleção';
	@override String get enterCollectionName => 'Insira o nome da coleção';
	@override String get addedToCollection => 'Adicionado à coleção';
	@override String get errorAddingToCollection => 'Falha ao adicionar à coleção';
	@override String get created => 'Coleção criada';
	@override String get removeFromCollection => 'Remover da coleção';
	@override String removeFromCollectionConfirm({required Object title}) => 'Remover "${title}" desta coleção?';
	@override String get removedFromCollection => 'Removido da coleção';
	@override String get removeFromCollectionFailed => 'Falha ao remover da coleção';
	@override String removeFromCollectionError({required Object error}) => 'Erro ao remover da coleção: ${error}';
	@override String get searchCollections => 'Pesquisar coleções...';
}

// Path: playlists
class _Translations$playlists$pt extends Translations$playlists$en {
	_Translations$playlists$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Playlists';
	@override String get playlist => 'Playlist';
	@override String get noPlaylists => 'Nenhuma playlist encontrada';
	@override String get create => 'Criar Playlist';
	@override String get playlistName => 'Nome da Playlist';
	@override String get enterPlaylistName => 'Insira o nome da playlist';
	@override String get delete => 'Excluir Playlist';
	@override String get removeItem => 'Remover da Playlist';
	@override String get smartPlaylist => 'Playlist Inteligente';
	@override String itemCount({required Object count}) => '${count} itens';
	@override String get oneItem => '1 item';
	@override String get emptyPlaylist => 'Esta playlist está vazia';
	@override String get deleteConfirm => 'Excluir Playlist?';
	@override String deleteMessage({required Object name}) => 'Tem certeza de que deseja excluir "${name}"?';
	@override String get created => 'Playlist criada';
	@override String get deleted => 'Playlist excluída';
	@override String get itemAdded => 'Adicionado à playlist';
	@override String get itemRemoved => 'Removido da playlist';
	@override String get selectPlaylist => 'Selecionar Playlist';
	@override String get searchPlaylists => 'Pesquisar playlists...';
	@override String get errorCreating => 'Falha ao criar playlist';
	@override String get errorDeleting => 'Falha ao excluir playlist';
	@override String get errorLoading => 'Falha ao carregar playlists';
	@override String get errorAdding => 'Falha ao adicionar à playlist';
	@override String get errorReordering => 'Falha ao reordenar item da playlist';
	@override String get errorRemoving => 'Falha ao remover da playlist';
}

// Path: music
class _Translations$music$pt extends Translations$music$en {
	_Translations$music$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get goToAlbum => 'Ir para o álbum';
	@override String get goToArtist => 'Ir para o artista';
	@override String get instantMix => 'Mix instantâneo';
	@override String get playNext => 'Reproduzir a seguir';
	@override String get addToQueue => 'Adicionar à fila';
	@override String discNumber({required Object n}) => 'Disco ${n}';
	@override String trackCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n,
		one: '${n} faixa',
		other: '${n} faixas',
	);
	@override String get nowPlaying => 'Reproduzindo agora';
	@override String playingFrom({required Object title}) => 'Reproduzindo de ${title}';
	@override String get queue => 'Fila';
	@override String get clearQueue => 'Limpar fila';
	@override String get lyrics => 'Letra';
	@override String get noLyrics => 'Nenhuma letra disponível';
	@override String get sleepTimer => 'Temporizador de suspensão';
	@override String get sleepTimerEndOfTrack => 'Fim da faixa';
	@override String sleepTimerMinutes({required Object n}) => '${n} minutos';
	@override String get stopPlayback => 'Parar reprodução';
	@override String get previousTrack => 'Faixa anterior';
	@override String get nextTrack => 'Próxima faixa';
	@override String get repeat => 'Repetir';
	@override String get repeatAll => 'Repetir tudo';
	@override String get repeatOne => 'Repetir uma faixa';
	@override String get instantMixNoServer => 'Nenhum servidor está disponível para uma mistura instantânea';
	@override String get instantMixFailed => 'Falha ao carregar o mix instantâneo';
	@override String get instantMixEmpty => 'O mix instantâneo não retornou nenhuma faixa';
	@override String noAudioUrl({required Object track}) => 'Nenhuma URL de áudio está disponível para ${track}';
	@override late final _Translations$music$discography$pt discography = _Translations$music$discography$pt._(_root);
}

// Path: watchTogether
class _Translations$watchTogether$pt extends Translations$watchTogether$en {
	_Translations$watchTogether$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Assistir Juntos';
	@override String get description => 'Assista a conteúdos sincronizados com amigos e familiares';
	@override String get createRoom => 'Criar sala';
	@override String get creatingRoom => 'Criando sala...';
	@override String get joinRoom => 'Entrar na sala';
	@override String get joiningRoom => 'Entrando na sala...';
	@override String get connecting => 'Conectando...';
	@override String get relayPublic => 'As salas usam os retransmissores públicos do Open Watch Party.';
	@override String relayCustom({required Object url}) => 'As salas usam seu relé em ${url}.';
	@override String get recentRooms => 'Salas recentes';
	@override String get roomActions => 'Ações da sala';
	@override String get renameRoom => 'Renomear sala';
	@override String get removeRoom => 'Remover';
	@override String get enterRoomCode => 'Insira o código de 6 caracteres do host.';
	@override String get roomCode => 'Código do quarto';
	@override String get paste => 'Colar';
	@override String get noCodeInClipboard => 'A área de transferência não contém um código de sala';
	@override String get copyCode => 'Copiar código';
	@override String get codeCopied => 'Código do quarto copiado';
	@override String get shareInvite => 'Compartilhar convite';
	@override String get qrShare => 'Compartilhar código QR';
	@override String get qrHint => 'Digitalize com o aplicativo Luroka para entrar nesta sala.';
	@override String get phasePlaying => 'Jogando';
	@override String get phasePaused => 'Pausado';
	@override String get phaseWaiting => 'Esperando por todos';
	@override String get inviteCopied => 'Convite copiado. Cole-o em uma mensagem.';
	@override String inviteMessage({required Object code}) => 'Junte-se à minha sala Watch Together em Luroka: luroka://watch?code=${code} - ou abra Watch Together e digite ${code}.';
	@override String get openSessionControls => 'Abrir os controles da sessão Assistir Juntos';
	@override String get reconnecting => 'Reconectando...';
	@override String get reconnectingDescription => 'A conexão caiu. Você entra na sala automaticamente.';
	@override String get connected => 'Conectado';
	@override String get disconnected => 'Desconectado';
	@override String get youAreHost => 'Você é o anfitrião';
	@override String hostedBy({required Object name}) => 'Hospedado por ${name}';
	@override String get hostControlsPlayback => 'O anfitrião controla a reprodução';
	@override String get anyoneCanControl => 'Qualquer pessoa pode controlar a reprodução';
	@override String get roomLocked => 'Quarto trancado';
	@override String get nowPlaying => 'Agora jogando';
	@override String get nothingPlaying => 'Nada jogando';
	@override String get nothingPlayingHost => 'Jogue algo de qualquer biblioteca para compartilhar com a sala.';
	@override String get nothingPlayingGuest => 'Quando o anfitrião toca alguma coisa, ela abre aqui.';
	@override String get notShareable => 'Este vídeo não possui correspondência de catálogo, portanto somente pessoas com acesso ao mesmo servidor poderão reproduzi-lo.';
	@override String get searching => 'Procurando este vídeo em suas bibliotecas...';
	@override String get yourCopy => 'Sua cópia';
	@override String get sharingYourCopy => 'Você está compartilhando sua cópia';
	@override String playingOtherLength({required Object difference}) => 'Reproduzindo sua cópia, ${difference}';
	@override String get mismatchTitle => 'Sua cópia tem comprimento diferente';
	@override String mismatchDescription({required Object difference}) => 'Sua cópia mais próxima é ${difference} do que o vídeo da sala. Pode ser outro corte ou versão.';
	@override String get playAnyway => 'Jogue mesmo assim';
	@override String get chooseAnotherCopy => 'Escolha outra cópia';
	@override String get dontPlay => 'Não jogue';
	@override String get unavailableTitle => 'Você não tem esse vídeo';
	@override String get unavailableDescription => 'Luroka não conseguiu encontrá-lo em suas bibliotecas. Escolha você mesmo uma cópia ou pesquise novamente.';
	@override String get chooseCopy => 'Escolha uma cópia';
	@override String get searchAgain => 'Pesquise novamente';
	@override String get noCandidates => 'Nenhuma cópia encontrada em suas bibliotecas.';
	@override String get choiceFailed => 'Não foi possível reproduzir esta cópia para a sala';
	@override String lengthLonger({required Object duration}) => '${duration} por mais tempo';
	@override String lengthShorter({required Object duration}) => '${duration} mais curto';
	@override String get lengthSame => 'Mesmo comprimento';
	@override String get lengthUnknown => 'Comprimento desconhecido';
	@override String get joinCurrentPlayback => 'Entrar na reprodução atual';
	@override String get joinCurrentPlaybackDescription => 'Voltar ao conteúdo que o anfitrião está assistindo agora';
	@override String get stopMedia => 'Pare o vídeo para todos';
	@override String get syncOffset => 'Deslocamento de sincronização';
	@override String get syncOffsetDescription => 'Mude seu vídeo se ele for exibido na frente ou atrás da sala.';
	@override String offsetHint({required Object difference}) => 'Sua cópia é ${difference} que o vídeo da sala.';
	@override String applyDifference({required Object offset}) => 'Usar ${offset}';
	@override String get offsetMinusSecond => '-1s';
	@override String get offsetMinusTenth => '-100ms';
	@override String get offsetPlusTenth => '+100ms';
	@override String get offsetPlusSecond => '+1s';
	@override String get participants => 'Participantes';
	@override String participantCount({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n,
		one: 'Participante ${n}',
		other: 'Participantes ${n}',
	);
	@override String get hostBadge => 'ANFITRIÃO';
	@override String nameYou({required Object name}) => '${name} (Você)';
	@override String get playerIdle => 'Inativo';
	@override String get playerLoading => 'Carregando';
	@override String get playerReady => 'Pronto';
	@override String get playerBuffering => 'Buffer';
	@override String get matchSearching => 'Procurando';
	@override String get matchMatched => 'Tem o vídeo';
	@override String get matchMismatched => 'Comprimento diferente';
	@override String get matchUnavailable => 'Não tem o vídeo';
	@override String participantOffset({required Object offset}) => 'Deslocamento ${offset}';
	@override String get makeHost => 'Tornar anfitrião';
	@override String get makeHostQuestion => 'Transferir anfitrião?';
	@override String makeHostConfirm({required Object name}) => '${name} controlará a reprodução e conduzirá a sessão para todos.';
	@override String get transfer => 'Transferir';
	@override String get removeParticipant => 'Remover da sala';
	@override String removeParticipantQuestion({required Object name}) => 'Remover ${name}?';
	@override String removeParticipantConfirm({required Object name}) => '${name} sai da sala. Eles podem entrar novamente com o código, a menos que você tranque a sala.';
	@override String get remove => 'Remover';
	@override String get roomSettings => 'Configurações da sala';
	@override String get letEveryoneControl => 'Deixe que todos controlem a reprodução';
	@override String get lockRoom => 'Fechadura';
	@override String get lockRoomDescription => 'Ninguém novo pode participar';
	@override String get leaveRoom => 'Sair da sala';
	@override String get leaveRoomQuestion => 'Sair da sala?';
	@override String get leaveRoomConfirm => 'Você pode entrar novamente com o código da sala.';
	@override String get leave => 'Sair';
	@override String get endRoom => 'Sala final';
	@override String get endRoomQuestion => 'Fim da sala?';
	@override String get endRoomConfirm => 'Isso acaba com a sala para todos.';
	@override String get end => 'Encerrar';
	@override String get playBlockedTitle => 'A reprodução não começou';
	@override String get playBlockedDescription => 'Aperte o play para começar a assistir com a sala.';
	@override late final _Translations$watchTogether$notices$pt notices = _Translations$watchTogether$notices$pt._(_root);
	@override late final _Translations$watchTogether$ended$pt ended = _Translations$watchTogether$ended$pt._(_root);
	@override late final _Translations$watchTogether$errors$pt errors = _Translations$watchTogether$errors$pt._(_root);
	@override String untitledEpisode({required Object number}) => 'Episódio ${number}';
}

// Path: downloads
class _Translations$downloads$pt extends Translations$downloads$en {
	_Translations$downloads$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Downloads';
	@override String get manage => 'Gerenciar';
	@override String get tvShows => 'Séries de TV';
	@override String get movies => 'Filmes';
	@override String get music => 'Música';
	@override String tracksQueued({required Object count}) => '${count} faixas na fila para download';
	@override String get noDownloads => 'Nenhum download ainda';
	@override String get noDownloadsDescription => 'O conteúdo baixado aparecerá aqui para assistir offline';
	@override String get downloadNow => 'Baixar';
	@override String get deleteDownload => 'Excluir download';
	@override String get retryDownload => 'Tentar download novamente';
	@override String get downloadQueued => 'Download na fila';
	@override String get downloadResumed => 'Download retomado';
	@override String get serverErrorBitrate => 'Erro do servidor: o arquivo pode exceder o limite remoto de taxa de bits';
	@override String get storageFull => 'Os downloads foram interrompidos para proteger o espaço disponível. Libere espaço ou escolha outro local de download e tente novamente.';
	@override String get storageUnavailable => 'Os downloads foram interrompidos porque não foi possível verificar o armazenamento disponível. Verifique o local de download e tente novamente.';
	@override String episodesQueued({required Object count}) => '${count} episódios na fila de download';
	@override String get downloadDeleted => 'Download excluído';
	@override String deleteConfirm({required Object title}) => 'Excluir "${title}" deste dispositivo?';
	@override String get deleteCollectionDownloads => 'Excluir downloads';
	@override String deleteCollectionDownloadsConfirm({required Object title}) => 'Excluir todos os downloads em "${title}" deste dispositivo?';
	@override String get collectionDownloadsDeleted => 'Downloads excluídos';
	@override String get cancelledDownloadTitle => 'Download cancelado';
	@override String get cancelledDownloadMessage => 'Este download foi cancelado. O que você deseja fazer?';
	@override String get allEpisodesAlreadyDownloaded => 'Todos os episódios já foram baixados';
	@override String get resumeDownload => 'Retomar download';
	@override String get cancelledDownload => 'Download cancelado';
	@override String syncingFile({required Object file, required Object status}) => '${file} (sincronizando ${status})';
	@override String downloadedFileClickToComplete({required Object file}) => '${file} baixado — clique para concluir';
	@override String get partialDownloadClickToComplete => 'Parcialmente baixado — clique para concluir';
	@override String get deleting => 'Excluindo...';
	@override String deletingWithProgress({required Object title, required Object current, required Object total}) => 'Excluindo ${title}... (${current} de ${total})';
	@override String get queuedTooltip => 'Na fila';
	@override String queuedFilesTooltip({required Object files}) => 'Na fila: ${files}';
	@override String get downloadingTooltip => 'Baixando...';
	@override String downloadingFilesTooltip({required Object files}) => 'Baixando ${files}';
	@override String get noDownloadsTree => 'Nenhum download';
	@override String get pauseAll => 'Pausar todos';
	@override String get resumeAll => 'Retomar todos';
	@override String get retryAll => 'Tentar tudo novamente';
	@override String get retryFailed => 'Tentar novamente downloads com falha';
	@override String get deleteAll => 'Excluir todos';
	@override String get selectVersion => 'Selecionar versão';
	@override String get allEpisodes => 'Todos os episódios';
	@override String get unwatchedOnly => 'Apenas não assistidos';
	@override String nextNUnwatched({required Object count}) => 'Próximos ${count} episódios não assistidos';
	@override String get customAmount => 'Quantidade personalizada...';
	@override String get includeSpecials => 'Incluir especiais';
	@override String get howManyEpisodes => 'Quantos episódios?';
	@override String get invalidEpisodeCount => 'Insira uma quantidade válida de episódios.';
	@override String get keepSynced => 'Manter sincronizado';
	@override String get downloadOnce => 'Baixar uma vez';
	@override String keepNUnwatched({required Object count}) => 'Manter ${count} episódios não assistidos';
	@override String get editSyncRule => 'Editar regra de sincronização';
	@override String get removeSyncRule => 'Remover regra de sincronização';
	@override String removeSyncRuleConfirm({required Object title}) => 'Parar de sincronizar "${title}"? Os episódios baixados serão mantidos.';
	@override String removeListSyncRuleConfirm({required Object title}) => 'Parar a sincronização de "${title}"?';
	@override String get deleteSyncRuleDownloads => 'Também excluir downloads associados';
	@override String get deleteSyncRuleDownloadsDescription => 'Downloads usados por outra regra de sincronização ou perfil serão mantidos.';
	@override String syncRuleCreated({required Object count}) => 'Regra de sincronização criada — mantendo ${count} episódios não assistidos';
	@override String get syncRuleUpdated => 'Regra de sincronização atualizada';
	@override String get syncRuleRemoved => 'Regra de sincronização removida';
	@override String get syncRuleAndDownloadsRemoved => 'Regra de sincronização e downloads associados removidos';
	@override String get syncRuleCleanupBusy => 'As regras de sincronização estão sendo atualizadas. Tente novamente em instantes.';
	@override String get syncRuleCleanupUnavailable => 'Os downloads associados não puderam ser identificados com segurança. Reconecte o servidor e tente novamente, ou remova a regra sem excluir os downloads.';
	@override String syncedNewEpisodes({required Object count, required Object title}) => '${count} novos episódios sincronizados para ${title}';
	@override String get activeSyncRules => 'Regras de sincronização';
	@override String get noSyncRules => 'Nenhuma regra de sincronização';
	@override String get manageSyncRule => 'Gerenciar sincronização';
	@override String get editEpisodeCount => 'Número de episódios';
	@override String get editSyncFilter => 'Filtro de sincronização';
	@override String get syncAllItems => 'Sincronizando todos os itens';
	@override String get syncUnwatchedItems => 'Sincronizando itens não assistidos';
	@override String syncRuleServerContext({required Object server, required Object status}) => 'Servidor: ${server} • ${status}';
	@override String get syncRuleAvailable => 'Disponível';
	@override String get syncRuleOffline => 'Offline';
	@override String get syncRuleSignInRequired => 'É necessário entrar';
	@override String get syncRuleAccessDenied => 'Acesso negado';
	@override String get syncRuleNotAvailableForProfile => 'Indisponível para o perfil atual';
	@override String get syncRuleUnknownServer => 'Servidor desconhecido';
	@override String get syncRuleListCreated => 'Regra de sincronização criada';
	@override late final _Translations$downloads$backgroundWarning$pt backgroundWarning = _Translations$downloads$backgroundWarning$pt._(_root);
	@override String get options => 'Opções de downloads';
	@override late final _Translations$downloads$groupings$pt groupings = _Translations$downloads$groupings$pt._(_root);
	@override String get unknownLibrary => 'Biblioteca desconhecida';
	@override String get unknownShow => 'Série desconhecida';
	@override String get unknownSeason => 'Temporada desconhecida';
	@override String get unknownAlbum => 'Álbum desconhecido';
	@override String completedOfTotal({required Object completed, required Object total}) => '${completed}/${total} concluídos';
	@override String get errorFileNotFound => 'Arquivo não encontrado (404)';
	@override String get errorDownloadNotAllowed => 'Download não permitido pelo servidor (403)';
	@override String get errorDownloadFailed => 'Falha no download';
	@override String errorDownloadFailedWithReason({required Object reason}) => 'Falha no download: ${reason}';
	@override String errorHttpStatus({required Object status}) => 'Falha no download (HTTP ${status})';
	@override String errorPostProcessing({required Object reason}) => 'Falha no pós-processamento: ${reason}';
	@override String get reasonFileNotSaved => 'não foi possível salvar o arquivo neste dispositivo';
	@override String get reasonCannotResume => 'não foi possível retomar o download parcial';
	@override String get reasonDeviceStorageFull => 'este dispositivo está sem espaço de armazenamento';
	@override String get notificationDownloading => 'Baixando...';
	@override String get notificationComplete => 'Download concluído';
	@override String get notificationPaused => 'Download pausado';
}

// Path: shaders
class _Translations$shaders$pt extends Translations$shaders$en {
	_Translations$shaders$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Shaders';
	@override String get noShaderDescription => 'Sem aprimoramento de vídeo';
	@override String get nvscalerDescription => 'Dimensionamento de imagem da NVIDIA para vídeos mais nítidos';
	@override String get artcnnVariantNeutral => 'Neutro';
	@override String get artcnnVariantDenoise => 'Redução de ruído';
	@override String get artcnnVariantDenoiseSharpen => 'Redução de ruído + nitidez';
	@override String get qualityFast => 'Rápido';
	@override String get qualityHQ => 'Alta Qualidade';
	@override String get mode => 'Modo';
	@override String get importShader => 'Importar Shader';
	@override String get customShaderDescription => 'Shader GLSL personalizado';
	@override String get shaderImported => 'Shader importado';
	@override String get shaderImportFailed => 'Falha ao importar shader';
	@override String get deleteShader => 'Excluir Shader';
	@override String deleteShaderConfirm({required Object name}) => 'Excluir "${name}"?';
}

// Path: companionRemote
class _Translations$companionRemote$pt extends Translations$companionRemote$en {
	_Translations$companionRemote$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Controle remoto';
	@override String connectedTo({required Object name}) => 'Conectado a ${name}';
	@override String get unknownDevice => 'Dispositivo desconhecido';
	@override late final _Translations$companionRemote$session$pt session = _Translations$companionRemote$session$pt._(_root);
	@override late final _Translations$companionRemote$pairing$pt pairing = _Translations$companionRemote$pairing$pt._(_root);
	@override late final _Translations$companionRemote$remote$pt remote = _Translations$companionRemote$remote$pt._(_root);
	@override late final _Translations$companionRemote$errors$pt errors = _Translations$companionRemote$errors$pt._(_root);
	@override String get closedBeforeAuth => 'A conexão foi encerrada antes da autenticação';
}

// Path: videoSettings
class _Translations$videoSettings$pt extends Translations$videoSettings$en {
	_Translations$videoSettings$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get playbackSpeed => 'Velocidade de Reprodução';
	@override String get normalSpeed => 'Normal';
	@override String sleepTimerActive({required Object duration}) => 'Ativo (${duration})';
	@override String get zoom => 'Zoom';
	@override String get sleepTimer => 'Temporizador de suspensão';
	@override String get audioSync => 'Sincronia de áudio';
	@override String get subtitleSync => 'Sincronia de legendas';
	@override String get hdr => 'HDR';
	@override String get hdrUnsupported => 'O HDR não está disponível aqui — este compositor da área de trabalho ou esta saída de vídeo não é compatível com ele.';
	@override String get hdrToneMapping => 'Mapeamento de tons HDR';
	@override String get hdrToneMappingCompositor => 'Compositor';
	@override String get hdrToneMappingCompositorDescription => 'Repassar os metadados HDR da fonte e deixar que o compositor da área de trabalho faça o mapeamento.';
	@override String get hdrToneMappingPlayer => 'Reprodutor';
	@override String get hdrToneMappingPlayerDescription => 'Mapear para o brilho máximo da tela no reprodutor e informar o resultado ao compositor.';
	@override String get hdrToneMappingFailed => 'Não foi possível alterar o mapeamento de tons HDR — o modo anterior continua ativo.';
	@override String get audioOutput => 'Saída de áudio';
	@override String get performanceOverlay => 'Painel de desempenho';
	@override String get audioOutputDolbyAtmos => 'Dolby Atmos';
	@override String get audioOutputDolbyAudio => 'Dolby Audio';
	@override String get audioOutputSurround => 'Surround';
	@override String get audioOutputSpatial => 'Áudio espacial';
	@override String get audioOutputStereo => 'Estéreo';
	@override String get audioNormalization => 'Normalizar intensidade sonora';
	@override String get audioNormalizationDisablesPassthrough => 'Decodifica o áudio para PCM; a passagem direta fica desativada enquanto esta opção estiver ativa';
}

// Path: performanceOverlay
class _Translations$performanceOverlay$pt extends Translations$performanceOverlay$en {
	_Translations$performanceOverlay$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get color => 'Cor';
	@override String get performance => 'Desempenho';
	@override String get buffer => 'Buffer';
	@override String get app => 'App';
	@override String get decoder => 'Decodificador';
	@override String get rawDecoder => 'Decodificador bruto';
	@override String get tunneling => 'Túnel';
	@override String get passthrough => 'Passagem direta';
	@override String get aspect => 'Aspecto';
	@override String get rotation => 'Rotação';
	@override String get dvSource => 'Fonte DV';
	@override String get dvPath => 'Caminho DV';
	@override String get dvRouteDecoder => 'Decodificador Dolby Vision';
	@override String get dvRouteDecoderP81 => 'Decodificador Dolby Vision (P7→8.1)';
	@override String get dvRouteBaseLayer => 'Camada base';
	@override String get dvRouteBaseLayerHdr10 => 'Camada base HDR10';
	@override String get dvRouteBaseLayerHlg => 'Camada base HLG';
	@override String get dvRouteBaseLayerSdr => 'Camada base SDR';
	@override String get dvRouteReshaped => 'RPU remodelado (gpu-next)';
	@override String get p7Conversion => 'Conv. P7';
	@override String get sampleRate => 'Taxa de amostragem';
	@override String get pixelFormat => 'Formato de pixel';
	@override String get hwFormat => 'Formato HW';
	@override String get matrix => 'Matriz';
	@override String get primaries => 'Primárias';
	@override String get transfer => 'Transferência';
	@override String get renderFps => 'FPS de renderização';
	@override String get displayFps => 'FPS da tela';
	@override String get avSync => 'Sincronia A/V';
	@override String get dropped => 'Descartados';
	@override String get dvRpus => 'DV RPUs';
	@override String get dvRpuAverage => 'Média DV RPU';
	@override String get dvSampleAverage => 'Média amostra DV';
	@override String get maxLuma => 'Luma máx.';
	@override String get minLuma => 'Luma mín.';
	@override String get maxCll => 'MaxCLL';
	@override String get maxFall => 'MaxFALL';
	@override String get cacheUsed => 'Cache usado';
	@override String get cacheLimit => 'Limite do cache';
	@override String get speed => 'Velocidade';
	@override String get player => 'Reprodutor';
	@override String get memory => 'Memória';
	@override String get uiFps => 'UI FPS';
	@override String get fps => 'FPS';
	@override String get decoderAndroidHw => 'Android HW';
	@override String get decoderNvidiaHw => 'NVIDIA HW';
	@override String get decoderQualcommHw => 'Qualcomm HW';
	@override String get decoderMediatekHw => 'MediaTek HW';
	@override String get decoderExynosHw => 'Exynos HW';
	@override String get decoderSoftware => 'Software';
	@override String get decoderHardware => 'Hardware';
	@override String get tunnelingActive => 'Ativo';
	@override String dvRpuFailed({required Object converted, required Object failures}) => '${converted} (${failures} com falha)';
}

// Path: externalPlayer
class _Translations$externalPlayer$pt extends Translations$externalPlayer$en {
	_Translations$externalPlayer$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Reprodutor externo';
	@override String get useExternalPlayer => 'Usar reprodutor externo';
	@override String get useExternalPlayerDescription => 'Abrir vídeos em outro app';
	@override String get selectPlayer => 'Selecionar reprodutor';
	@override String get customPlayers => 'Reprodutores personalizados';
	@override String get systemDefault => 'Padrão do sistema';
	@override String get addCustomPlayer => 'Adicionar reprodutor personalizado';
	@override String get playerName => 'Nome do reprodutor';
	@override String get playerNameHint => 'Meu reprodutor';
	@override String get playerCommand => 'Comando';
	@override String get playerPackage => 'Nome do pacote';
	@override String get playerUrlScheme => 'Esquema de URL';
	@override String get off => 'Desativado';
	@override String get launchFailed => 'Falha ao abrir o reprodutor externo';
	@override String appNotInstalled({required Object name}) => '${name} não está instalado';
	@override String get playInExternalPlayer => 'Reproduzir no reprodutor externo';
}

// Path: metadataEdit
class _Translations$metadataEdit$pt extends Translations$metadataEdit$en {
	_Translations$metadataEdit$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get editMetadata => 'Editar...';
	@override String get screenTitle => 'Editar Metadados';
	@override String get basicInfo => 'Informações Básicas';
	@override String get artwork => 'Arte';
	@override String get advancedSettings => 'Configurações Avançadas';
	@override String get title => 'Título';
	@override String get sortTitle => 'Título para Ordenação';
	@override String get originalTitle => 'Título Original';
	@override String get releaseDate => 'Data de Lançamento';
	@override String get contentRating => 'Classificação Indicativa';
	@override String get studio => 'Estúdio';
	@override String get tagline => 'Slogan';
	@override String get summary => 'Sinopse';
	@override String get poster => 'Pôster';
	@override String get background => 'Plano de Fundo';
	@override String get logo => 'Logo';
	@override String get squareArt => 'Imagem Quadrada';
	@override String get selectPoster => 'Selecionar pôster';
	@override String get selectBackground => 'Selecionar Plano de Fundo';
	@override String get selectLogo => 'Selecionar Logo';
	@override String get selectSquareArt => 'Selecionar Imagem Quadrada';
	@override String get fromUrl => 'Da URL';
	@override String get uploadFile => 'Enviar Arquivo';
	@override String get enterImageUrl => 'Insira a URL da imagem';
	@override String get imageUrl => 'URL da Imagem';
	@override String get metadataUpdated => 'Metadados atualizados';
	@override String get metadataUpdateFailed => 'Falha ao atualizar metadados';
	@override String get artworkUpdated => 'Arte atualizada';
	@override String get artworkUpdateFailed => 'Falha ao atualizar arte';
	@override String get noArtworkAvailable => 'Nenhuma arte disponível';
	@override String artworkOption({required Object index}) => 'Opção de arte ${index}';
	@override String selectedArtworkOption({required Object index}) => 'Opção de arte ${index}, selecionada';
	@override String get notSet => 'Não definido';
	@override String get libraryDefault => 'Padrão da biblioteca';
	@override String get accountDefault => 'Padrão da conta';
	@override String get seriesDefault => 'Padrão da série';
	@override String get episodeSorting => 'Ordenação de Episódios';
	@override String get oldestFirst => 'Mais antigos primeiro';
	@override String get newestFirst => 'Mais recentes primeiro';
	@override String get keep => 'Manter';
	@override String get allEpisodes => 'Todos os episódios';
	@override String latestEpisodes({required Object count}) => '${count} episódios mais recentes';
	@override String get latestEpisode => 'Episódio mais recente';
	@override String episodesAddedPastDays({required Object count}) => 'Episódios adicionados nos últimos ${count} dias';
	@override String get deleteAfterPlaying => 'Excluir Episódios Após Reproduzir';
	@override String get never => 'Nunca';
	@override String get afterADay => 'Após um dia';
	@override String get afterAWeek => 'Após uma semana';
	@override String get afterAMonth => 'Após um mês';
	@override String get onNextRefresh => 'Na próxima atualização';
	@override String get seasons => 'Temporadas';
	@override String get show => 'Mostrar';
	@override String get hide => 'Ocultar';
	@override String get episodeOrdering => 'Ordenação de Episódios';
	@override String get tmdbAiring => 'The Movie Database (Exibição)';
	@override String get tvdbAiring => 'TheTVDB (Exibição)';
	@override String get tvdbAbsolute => 'TheTVDB (Absoluto)';
	@override String get metadataLanguage => 'Idioma dos Metadados';
	@override String get useOriginalTitle => 'Usar Título Original';
	@override String get preferredAudioLanguage => 'Idioma de Áudio Preferido';
	@override String get preferredSubtitleLanguage => 'Idioma de Legenda Preferido';
	@override String get subtitleMode => 'Modo de Seleção Automática de Legendas';
	@override String get manuallySelected => 'Seleção manual';
	@override String get shownWithForeignAudio => 'Exibir com áudio estrangeiro';
	@override String get alwaysEnabled => 'Sempre ativado';
	@override String get tags => 'Tags';
	@override String get addTag => 'Adicionar tag';
	@override String get genre => 'Gênero';
	@override String get director => 'Diretor';
	@override String get writer => 'Roteirista';
	@override String get producer => 'Produtor';
	@override String get country => 'País';
	@override String get collection => 'Coleção';
	@override String get label => 'Rótulo';
	@override String get quickTag => 'Tag rápida...';
}

// Path: matchScreen
class _Translations$matchScreen$pt extends Translations$matchScreen$en {
	_Translations$matchScreen$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get match => 'Associar...';
	@override String get fixMatch => 'Corrigir correspondência...';
	@override String get unmatch => 'Desassociar';
	@override String get unmatchConfirm => 'Limpar esta correspondência? Plex tratará como sem correspondência até refazer.';
	@override String get unmatchSuccess => 'Item desassociado';
	@override String get unmatchFailed => 'Falha ao desassociar item';
	@override String get matchApplied => 'Correspondência aplicada';
	@override String get matchFailed => 'Falha ao aplicar correspondência';
	@override String get titleHint => 'Título';
	@override String get yearHint => 'Ano';
	@override String get search => 'Pesquisar';
	@override String get noMatchesFound => 'Nenhuma correspondência encontrada';
}

// Path: serverTasks
class _Translations$serverTasks$pt extends Translations$serverTasks$en {
	_Translations$serverTasks$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tarefas do servidor';
	@override String get failedToLoad => 'Falha ao carregar tarefas';
	@override String get noTasks => 'Nenhuma tarefa em execução';
}

// Path: trakt
class _Translations$trakt$pt extends Translations$trakt$en {
	_Translations$trakt$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Trakt';
	@override String get connected => 'Conectado';
	@override String connectedAs({required Object username}) => 'Conectado como @${username}';
	@override String get disconnectConfirm => 'Desconectar a conta do Trakt?';
	@override String get disconnectConfirmBody => 'O Luroka deixará de enviar eventos ao Trakt. Você pode reconectar quando quiser.';
	@override String get scrobble => 'Scrobbling em tempo real';
	@override String get scrobbleDescription => 'Envia eventos de reprodução, pausa e parada ao Trakt durante a exibição.';
	@override String get watchedSync => 'Sincronizar status de assistido';
	@override String get watchedSyncDescription => 'Ao marcar itens como assistidos no Luroka, eles também serão marcados no Trakt.';
}

// Path: seerr
class _Translations$seerr$pt extends Translations$seerr$en {
	_Translations$seerr$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Seerr';
	@override String get connectTitle => 'Conectar ao Seerr';
	@override String get serverUrl => 'URL do servidor';
	@override String get serverUrlHelper => 'O endereço da sua instância do Seerr';
	@override String get checkServer => 'Continuar';
	@override String get signInWithJellyfin => 'Entrar com Jellyfin';
	@override String get signInWithEmby => 'Entrar com Emby';
	@override String get signInWithLocal => 'Usar uma conta local';
	@override String get email => 'E-mail';
	@override String get noSignInMethods => 'Esta instância do Seerr não oferece nenhum método de acesso compatível com o Luroka.';
	@override String get instance => 'Instância';
	@override String get disconnectConfirm => 'Desconectar Seerr?';
	@override String get disconnectConfirmBody => 'O Luroka esquecerá esta instância do Seerr. Reconecte quando quiser.';
	@override String get request => 'Solicitar';
	@override String get request4k => 'Solicitar em 4K';
	@override String get seasons => 'Temporadas';
	@override String get allSeasons => 'Todas as temporadas';
	@override String get advancedOptions => 'Avançado';
	@override String get destinationServer => 'Servidor de destino';
	@override String get qualityProfile => 'Perfil de qualidade';
	@override String get rootFolder => 'Pasta raiz';
	@override String get languageProfile => 'Perfil de idioma';
	@override String get tags => 'Etiquetas';
	@override String get noTags => 'Sem etiquetas';
	@override String defaultOption({required Object name}) => '${name} (padrão)';
	@override String get animeNote => 'Esta série é um anime.';
	@override String get requestSubmitted => 'Solicitação enviada';
	@override String requestFailed({required Object error}) => 'Falha na solicitação: ${error}';
	@override String get requestsLoadFailed => 'Não foi possível carregar as opções de solicitação';
	@override String get nothingToRequest => 'Tudo já está disponível ou solicitado.';
	@override String get statusAvailable => 'Disponível';
	@override String get statusPartiallyAvailable => 'Parcialmente disponível';
	@override String get statusRequested => 'Solicitado';
	@override String get statusProcessing => 'Processando';
	@override String get statusBlocklisted => 'Na lista de bloqueio';
	@override String couldNotReach({required Object url, required Object error}) => 'Não foi possível acessar ${url}: ${error}';
	@override String noInstanceAtUrl({required Object url, required Object status}) => 'Nenhuma instância do Seerr em ${url} (HTTP ${status})';
	@override String get behindAuthProxy => 'Um proxy reverso com autenticação (SSO ou autenticação HTTP) respondeu no lugar do Seerr. O Luroka não consegue entrar através dele: permita que o caminho /api/v1 do Seerr ignore o proxy para este aplicativo, ou use um endereço que alcance o Seerr diretamente.';
	@override String get invalidUrl => 'Insira um endereço de servidor como https://seerr.example.com';
	@override String get quickConnectUnsupported => 'Esta instância do Seerr não oferece suporte a Quick Connect. Ela precisa do Seerr 3.4 ou mais recente.';
	@override String get notInitialized => 'Esta instância do Seerr não concluiu a configuração inicial';
	@override String get noPlexTokenForReauth => 'Nenhum token do Plex está disponível para entrar novamente';
	@override String get noStoredCredentials => 'Nenhuma credencial armazenada está disponível para entrar novamente';
	@override String get signInRejected => 'A entrada foi rejeitada';
	@override String get noSessionCookie => 'O Seerr não forneceu um cookie de sessão';
	@override String get freshCookieRejected => 'O Seerr rejeitou o novo cookie de sessão';
	@override String get noUserInformation => 'O Seerr não retornou informações do usuário';
	@override String get sessionRejectedAfterReauth => 'A sessão foi rejeitada após entrar novamente';
	@override String get permissionDenied => 'O Seerr negou esta ação: sua conta não tem mais a permissão necessária';
	@override String get permissionRevoked => 'Você não tem mais permissão para solicitar isso';
}

// Path: services
class _Translations$services$pt extends Translations$services$en {
	_Translations$services$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Serviços';
	@override String get hubSubtitle => 'Sincronize o progresso de exibição e solicite novos títulos.';
	@override String get discoverySection => 'Descoberta e pedidos';
	@override String get trackingSection => 'Acompanhamento e listas';
	@override String get seerrDescription => 'Encontre filmes e séries e envie pedidos através do seu servidor Seerr.';
	@override String get tmdbDescription => 'Descubra filmes e séries, cartazes, classificações e detalhes.';
	@override String get traktDescription => 'Acompanhe filmes e séries, sincronize o estado de visualização e gira a sua lista.';
	@override String get malDescription => 'Mantenha a lista de anime e o progresso de visualização sincronizados.';
	@override String get anilistDescription => 'Acompanhe anime e sincronize o progresso de visualização com o AniList.';
	@override String get simklDescription => 'Acompanhe filmes, séries e anime com o Simkl.';
	@override String get mdblistDescription => 'Ligue as listas MDBList e as classificações de filmes.';
	@override String connectionIntro({required Object service}) => 'Ligue o ${service} ao perfil Luroka atual. Pode gerir esta ligação e as respetivas opções aqui a qualquer momento.';
	@override String connectService({required Object service}) => 'Ligar ${service}';
	@override String get seerrConnectDescription => 'Ligue o servidor Seerr para descobrir e pedir filmes e séries através do Luroka.';
	@override String get seerrServerStep => 'Introduza o endereço que utiliza para abrir o Seerr. Vamos verificar os métodos de início de sessão suportados pelo servidor.';
	@override String get seerrSignInStep => 'Escolha um método de início de sessão suportado pelo servidor.';
	@override String get integrations => 'Integrações';
	@override String get notConnected => 'Não conectado';
	@override String connectedAs({required Object username}) => 'Conectado como @${username}';
	@override String get scrobble => 'Registrar progresso automaticamente';
	@override String get scrobbleDescription => 'Atualiza sua lista quando você termina um episódio ou filme.';
	@override String disconnectConfirm({required Object service}) => 'Desconectar ${service}?';
	@override String disconnectConfirmBody({required Object service}) => 'O Luroka deixará de atualizar ${service}. Reconecte quando quiser.';
	@override String connectFailed({required Object service}) => 'Não foi possível conectar ao ${service}. Tente novamente.';
	@override late final _Translations$services$names$pt names = _Translations$services$names$pt._(_root);
	@override late final _Translations$services$simklReconnect$pt simklReconnect = _Translations$services$simklReconnect$pt._(_root);
	@override late final _Translations$services$deviceCode$pt deviceCode = _Translations$services$deviceCode$pt._(_root);
	@override late final _Translations$services$oauthProxy$pt oauthProxy = _Translations$services$oauthProxy$pt._(_root);
	@override late final _Translations$services$pendingAuth$pt pendingAuth = _Translations$services$pendingAuth$pt._(_root);
	@override late final _Translations$services$libraryFilter$pt libraryFilter = _Translations$services$libraryFilter$pt._(_root);
}

// Path: offlineRecovery
class _Translations$offlineRecovery$pt extends Translations$offlineRecovery$en {
	_Translations$offlineRecovery$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Seus servidores estão off-line';
	@override String get description => 'Seus downloads ainda estão disponíveis. Tente reconectar quando o servidor estiver de volta ou adicione outro servidor.';
	@override String get appleTvDescription => 'Luroka não conseguiu acessar seus servidores de mídia. Tente reconectar quando eles estiverem disponíveis ou adicione outro servidor para continuar assistindo.';
	@override String get kidsDescription => 'Não foi possível acessar seu servidor de mídia. Tente se reconectar ou peça ajuda a um dos pais.';
	@override String get retrying => 'Conectando…';
	@override String get addServer => 'Adicionar um servidor';
}

// Path: releaseUpdates
class _Translations$releaseUpdates$pt extends Translations$releaseUpdates$en {
	_Translations$releaseUpdates$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get manualInstructions => 'Baixe o arquivo de lançamento de GitHub, extraia o APK e instale-o em seu dispositivo Android.';
	@override String get tvInstructions => 'Abra este endereço no seu telefone ou computador, ou escaneie o código QR para baixar o lançamento.';
	@override String get pressBackAgain => 'Pressione Voltar novamente para sair da reprodução';
}

// Path: profileIntegrations
class _Translations$profileIntegrations$pt extends Translations$profileIntegrations$en {
	_Translations$profileIntegrations$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Torne Luroka seu';
	@override String get description => 'Conecte seus serviços favoritos para acompanhar o que você assiste e solicitar novos filmes e programas. Cada perfil Luroka possui suas próprias conexões.';
	@override String get step => 'Integrações opcionais';
	@override String get examples => 'Trakt · Simkl · AniList · MyAnimeList · Seerr';
	@override String get connect => 'Explorar integrações';
	@override String get later => 'Configurar mais tarde';
	@override String get manage => 'Gerenciar integrações';
	@override String forProfile({required Object name}) => 'Conexões para ${name}';
}

// Path: profileSetupGuide
class _Translations$profileSetupGuide$pt extends Translations$profileSetupGuide$en {
	_Translations$profileSetupGuide$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Faça do seu perfil o seu';
	@override String get description => 'Escolha a aparência e comportamento de Luroka para este perfil neste dispositivo. Você pode alterar tudo posteriormente em Configurações.';
	@override String get appearanceStep => '1 de 2 · Aparência';
	@override String get homeStep => '2 de 2 · Sua tela inicial';
	@override String get preview => 'Visualização';
	@override String get previewTitle => 'Sua casa';
	@override String get previewPoster => 'Pôster';
	@override String get posterArtwork => 'Somente arte';
	@override String get posterWithDetails => 'Mostrar detalhes do pôster';
	@override String get musicDescription => 'Reproduza o tema de um filme ou programa enquanto a página de detalhes estiver aberta, quando disponível.';
	@override String get moreThemes => 'Mais temas';
	@override String get fewerThemes => 'Menos temas';
	@override String get spotlightHeading => 'O que deve aparecer no Spotlight?';
	@override String get progressHeading => 'Continue assistindo e próximo';
	@override String get skip => 'Use os padrões e comece a assistir';
	@override String get finish => 'Comece a assistir';
	@override String get back => 'Voltar';
	@override String get kContinue => 'Continuar';
	@override String get chooseLater => 'Escolha bibliotecas mais tarde';
	@override String get libraryScope => 'Isso altera o que aparece em Luroka para este perfil; isso não altera as permissões do servidor.';
	@override String get createdTitle => 'Perfil criado';
	@override String get createdDescription => 'Seu novo perfil está pronto. Seu proprietário pode personalizá-lo na primeira vez que o abrir.';
	@override String get switchProfile => 'Mudar para este perfil';
	@override String get stayHere => 'Fique no perfil atual';
}

// Path: animeFavorites
class _Translations$animeFavorites$pt extends Translations$animeFavorites$en {
	_Translations$animeFavorites$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get filter => 'Anime';
	@override String get manage => 'Gerenciar animes';
	@override String get description => 'A detecção automática usa nomes de bibliotecas de anime e tags ou IDs de anime disponíveis. Escolha bibliotecas e corrija favoritos individuais. As escolhas são salvas neste dispositivo para o seu perfil.';
	@override String get libraries => 'Bibliotecas de anime';
	@override String get libraryHint => 'Bibliotecas chamadas Anime são reconhecidas automaticamente. Selecione uma biblioteca para alterar sua classificação.';
	@override String get titles => 'Títulos favoritos';
	@override String get titleHint => 'Selecione um título para marcá-lo como anime ou corrija uma correspondência automática.';
	@override String get automatic => 'Automático';
	@override String get include => 'Anime';
	@override String get exclude => 'Não é anime';
	@override String get automaticIncluded => 'Automático · Anime';
	@override String get automaticExcluded => 'Automático · Não é anime';
	@override String get noLibraries => 'Nenhuma biblioteca conectada disponível.';
	@override String get noTitles => 'Nenhum filme ou programa favorito disponível.';
	@override String get empty => 'Nenhum favorito de anime encontrado. Verifique suas bibliotecas de anime ou marque um título como anime.';
	@override String get saveFailed => 'Não foi possível salvar suas configurações de anime. Por favor, tente novamente.';
}

// Path: addServer
class _Translations$addServer$pt extends Translations$addServer$en {
	_Translations$addServer$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String addMediaBrowserTitle({required Object product}) => 'Adicionar servidor ${product}';
	@override String get serverUrls => 'URLs do servidor';
	@override String get serverUrlsHelper => 'Várias URLs são permitidas, separadas por vírgulas.';
	@override String get findServer => 'Encontrar servidor';
	@override String searchingLocalMediaBrowserServers({required Object product}) => 'Procurando servidores ${product} locais...';
	@override String localMediaBrowserServers({required Object product}) => 'Servidores ${product} salvos e próximos';
	@override String get username => 'Usuário';
	@override String get password => 'Senha';
	@override String get signIn => 'Entrar';
	@override String get change => 'Alterar';
	@override String get required => 'Obrigatório';
	@override String couldNotReachServer({required Object error}) => 'Não foi possível conectar ao servidor: ${error}';
	@override String signInFailed({required Object error}) => 'Falha ao entrar: ${error}';
	@override String quickConnectFailed({required Object error}) => 'Quick Connect falhou: ${error}';
	@override String get addPlexTitle => 'Entrar com Plex';
	@override String get pinExpired => 'O PIN expirou antes de entrar. Tente novamente.';
	@override String failedToRegisterAccount({required Object error}) => 'Falha ao registrar a conta: ${error}';
	@override String enterMediaBrowserUrlError({required Object product}) => 'Digite a URL do seu servidor ${product}';
	@override String get addConnectionTitle => 'Adicionar conexão';
	@override String addConnectionTitleScoped({required Object name}) => 'Adicionar a ${name}';
	@override String get signInWithPlexCard => 'Entrar com Plex';
	@override String get signInWithPlexCardSubtitle => 'Autorize este dispositivo. Servidores compartilhados são adicionados.';
	@override String get signInWithPlexCardSubtitleScoped => 'Autorize uma conta Plex. Os usuários do Plex Home se tornam perfis.';
	@override String connectToMediaBrowserCard({required Object product}) => 'Conectar ao ${product}';
	@override String get connectToMediaBrowserCardSubtitle => 'Digite a URL do servidor, o nome de usuário e a senha.';
	@override String connectToMediaBrowserCardSubtitleScoped({required Object product, required Object name}) => 'Entre no seu servidor ${product}. Vinculado a ${name}.';
	@override String get borrowFromAnotherProfile => 'Pegar emprestado de outro perfil';
	@override String get borrowFromAnotherProfileSubtitle => 'Reutilize a conexão de outro perfil. Perfis protegidos por PIN exigem PIN.';
	@override String get invalidCredentials => 'Usuário ou senha inválidos';
	@override String get authResponseNotJson => 'A resposta de autenticação não era um JSON válido';
	@override String get authResponseIncomplete => 'A resposta de login do servidor estava incompleta';
	@override String get quickConnectRejected => 'O Quick Connect foi rejeitado pelo servidor';
	@override String get quickConnectNotJson => 'A resposta do Quick Connect não era um JSON válido';
	@override String get quickConnectMissingFields => 'A resposta do Quick Connect não contém um código ou segredo';
	@override String get quickConnectPollRejected => 'A consulta do Quick Connect foi rejeitada pelo servidor';
	@override String get serverTimedOut => 'O servidor não respondeu a tempo';
	@override String get responseNotJson => 'A resposta do servidor não era um JSON válido';
	@override String responseMissingIdentity({required Object product}) => 'A resposta não contém um ID ou nome de servidor — este é um servidor ${product}?';
	@override String probeFailed({required Object error}) => 'Não foi possível conectar ao servidor: ${error}';
	@override String enterAtLeastOneUrl({required Object product}) => 'Insira pelo menos uma URL de servidor ${product}';
	@override String noReachableServer({required Object product}) => 'Nenhum servidor ${product} acessível foi encontrado';
	@override String urlsPointToDifferentServers({required Object product}) => 'Estas URLs apontam para servidores ${product} diferentes';
	@override String urlDoesNotMatchServer({required Object product}) => 'Esta URL não corresponde ao servidor ${product}';
	@override String get redirectUnsupported => 'O servidor redirecionou para uma URL não compatível';
	@override String redirectDifferentHost({required Object product}) => 'O servidor redirecionou para outro host. Insira diretamente a URL final do ${product}.';
	@override String get redirectInsecure => 'O servidor redirecionou de HTTPS para uma URL insegura';
	@override String redirectUnsupportedEnterFinal({required Object product}) => 'O servidor redirecionou para uma URL não compatível. Insira diretamente a URL final do ${product}.';
}

// Path: appIcon.names
class _Translations$appIcon$names$pt extends Translations$appIcon$names$en {
	_Translations$appIcon$names$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get midnight => 'Meia-noite';
	@override String get ember => 'Brasa';
	@override String get paper => 'Papel';
	@override String get oled => 'OLED';
	@override String get line => 'Linha';
	@override String get ocean => 'Oceano';
	@override String get ultraviolet => 'Ultravioleta';
	@override String get matcha => 'Matchá';
	@override String get sunset => 'Pôr do sol';
	@override String get gold => 'Ouro';
	@override String get titanium => 'Titânio';
	@override String get glass => 'Vidro';
	@override String get crt => 'CRT';
	@override String get vhs => 'VHS';
	@override String get synthwave => 'Onda sintética';
	@override String get pixel => 'Pixel';
	@override String get neon => 'Néon';
	@override String get sticker => 'Adesivo';
	@override String get ticket => 'Bilhete';
	@override String get pop => 'Pop';
	@override String get strata => 'Estratos';
	@override String get facet => 'Faceta';
	@override String get tilde => 'Til';
}

// Path: common.ratingSource
class _Translations$common$ratingSource$pt extends Translations$common$ratingSource$en {
	_Translations$common$ratingSource$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get critic => 'Críticos';
	@override String get audience => 'Público';
	@override String get imdb => 'IMDb';
	@override String get tmdb => 'TMDB';
	@override String get rottenTomatoes => 'Rotten Tomatoes';
	@override String get simkl => 'Simkl';
	@override String get mal => 'MyAnimeList';
	@override String get anilist => 'AniList';
	@override String get trakt => 'Trakt';
	@override String get rottenTomatoesCritic => 'Críticos do Rotten Tomatoes';
	@override String get rottenTomatoesAudience => 'Público do Rotten Tomatoes';
	@override String get metacritic => 'Metacritic';
	@override String get letterboxd => 'Letterboxd';
}

// Path: common.mediaKind
class _Translations$common$mediaKind$pt extends Translations$common$mediaKind$en {
	_Translations$common$mediaKind$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get movie => 'Filme';
	@override String get show => 'Série';
	@override String get season => 'Temporada';
	@override String get episode => 'Episódio';
	@override String get artist => 'Artista';
	@override String get album => 'Álbum';
	@override String get track => 'Faixa';
	@override String get collection => 'Coleção';
	@override String get playlist => 'Playlist';
	@override String get clip => 'Clipe';
	@override String get photo => 'Foto';
	@override String get folder => 'Pasta';
}

// Path: supporter.errors
class _Translations$supporter$errors$pt extends Translations$supporter$errors$en {
	_Translations$supporter$errors$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get storeUnavailable => 'As compras não estão disponíveis. Verifique se você está conectado à loja e se as compras são permitidas neste dispositivo.';
	@override String get productNotFound => 'A compra de Apoiador não está disponível em sua loja no momento.';
	@override String get productQueryFailed => 'Não foi possível carregar o preço. Verifique sua conexão e tente novamente.';
	@override String get purchaseFailed => 'A compra não foi concretizada. Tente novamente.';
	@override String get restoreFailed => 'Não foi possível entrar em contato com a loja para restaurar sua compra. Tente novamente.';
	@override String get nothingToRestore => 'Nenhuma compra de Apoiador foi encontrada para esta conta da loja.';
}

// Path: themeEditor.slots
class _Translations$themeEditor$slots$pt extends Translations$themeEditor$slots$en {
	_Translations$themeEditor$slots$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get bg => 'Plano de fundo';
	@override String get surface => 'Superfície';
	@override String get outline => 'Esboço';
	@override String get text => 'Texto';
	@override String get textMuted => 'Texto secundário';
	@override String get accent => 'Sotaque';
}

// Path: themeEditor.contrast
class _Translations$themeEditor$contrast$pt extends Translations$themeEditor$contrast$en {
	_Translations$themeEditor$contrast$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get textOnBg => 'Texto em segundo plano';
	@override String get textOnSurface => 'Texto na superfície';
	@override String get textMutedOnBg => 'Texto secundário em segundo plano';
	@override String get textMutedOnSurface => 'Texto secundário na superfície';
	@override String get accentOnBg => 'Destaque no fundo';
	@override String get accentOnSurface => 'Destaque na superfície';
	@override String get labelOnAccent => 'Etiqueta do botão com destaque';
}

// Path: hotkeys.actions
class _Translations$hotkeys$actions$pt extends Translations$hotkeys$actions$en {
	_Translations$hotkeys$actions$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get playPause => 'Reproduzir/Pausar';
	@override String get volumeUp => 'Aumentar Volume';
	@override String get volumeDown => 'Diminuir Volume';
	@override String seekForward({required Object seconds}) => 'Avançar (${seconds}s)';
	@override String seekBackward({required Object seconds}) => 'Retroceder (${seconds}s)';
	@override String get fullscreenToggle => 'Alternar Tela Cheia';
	@override String get muteToggle => 'Alternar Silêncio';
	@override String get subtitleToggle => 'Alternar Legendas';
	@override String get audioTrackNext => 'Próxima Faixa de Áudio';
	@override String get subtitleTrackNext => 'Próxima Faixa de Legenda';
	@override String get chapterNext => 'Próximo Capítulo';
	@override String get chapterPrevious => 'Capítulo Anterior';
	@override String get episodeNext => 'Próximo Episódio';
	@override String get episodePrevious => 'Episódio Anterior';
	@override String get speedIncrease => 'Aumentar Velocidade';
	@override String get speedDecrease => 'Diminuir Velocidade';
	@override String get speedReset => 'Redefinir Velocidade';
	@override String get zoomIn => 'Aumentar zoom';
	@override String get zoomOut => 'Diminuir zoom';
	@override String get zoomReset => 'Redefinir zoom';
	@override String get subSeekNext => 'Ir para Próxima Legenda';
	@override String get subSeekPrev => 'Ir para Legenda Anterior';
	@override String get shaderToggle => 'Alternar Shaders';
	@override String get skipMarker => 'Pular introdução/créditos';
	@override String get screenshot => 'Capturar tela';
}

// Path: videoControls.pipErrors
class _Translations$videoControls$pipErrors$pt extends Translations$videoControls$pipErrors$en {
	_Translations$videoControls$pipErrors$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get androidVersion => 'Requer Android 8.0 ou superior';
	@override String get iosVersion => 'Requer iOS 15.0 ou superior';
	@override String get permissionDisabled => 'Picture-in-picture está desativado. Ative nas configurações do sistema.';
	@override String get notSupported => 'O dispositivo não suporta modo picture-in-picture';
	@override String get voSwitchFailed => 'Falha ao trocar saída de vídeo para picture-in-picture';
	@override String get failed => 'Falha ao iniciar picture-in-picture';
	@override String get prepareFailed => 'Não foi possível preparar o picture-in-picture';
	@override String unknown({required Object error}) => 'Ocorreu um erro: ${error}';
}

// Path: accountPreferences.groups
class _Translations$accountPreferences$groups$pt extends Translations$accountPreferences$groups$en {
	_Translations$accountPreferences$groups$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get audioAndSubtitles => 'Áudio e legendas';
	@override String get libraryDisplay => 'Biblioteca';
	@override String get personalMedia => 'Mídia pessoal';
}

// Path: accountPreferences.subtitleModes
class _Translations$accountPreferences$subtitleModes$pt extends Translations$accountPreferences$subtitleModes$en {
	_Translations$accountPreferences$subtitleModes$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get none => 'Seleção manual';
	@override String get noneDescription => 'Nunca ativar legendas por conta própria.';
	@override String get defaultMode => 'Seguir as marcações da faixa';
	@override String get defaultModeDescription => 'Usar as marcações padrão e forçada armazenadas em cada faixa de legenda.';
	@override String get always => 'Sempre ativado';
	@override String get alwaysDescription => 'Ativar uma faixa de legenda no idioma preferido sempre que houver uma.';
	@override String get onlyForced => 'Apenas legendas forçadas';
	@override String get onlyForcedDescription => 'Carregar apenas as faixas marcadas como forçadas.';
	@override String get smart => 'Exibir com áudio estrangeiro';
	@override String get smartDescription => 'Ativar legendas apenas quando o áudio estiver em outro idioma.';
}

// Path: accountPreferences.subtitleAccessibilityOptions
class _Translations$accountPreferences$subtitleAccessibilityOptions$pt extends Translations$accountPreferences$subtitleAccessibilityOptions$en {
	_Translations$accountPreferences$subtitleAccessibilityOptions$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get preferNonSdh => 'Preferir legendas não SDH';
	@override String get preferSdh => 'Preferir legendas SDH';
	@override String get onlySdh => 'Apenas legendas SDH';
	@override String get onlyNonSdh => 'Apenas legendas não SDH';
}

// Path: accountPreferences.forcedSubtitleOptions
class _Translations$accountPreferences$forcedSubtitleOptions$pt extends Translations$accountPreferences$forcedSubtitleOptions$en {
	_Translations$accountPreferences$forcedSubtitleOptions$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get preferNonForced => 'Preferir legendas não forçadas';
	@override String get preferForced => 'Preferir legendas forçadas';
	@override String get onlyForced => 'Apenas legendas forçadas';
	@override String get onlyNonForced => 'Apenas legendas não forçadas';
}

// Path: accountPreferences.watchedIndicatorOptions
class _Translations$accountPreferences$watchedIndicatorOptions$pt extends Translations$accountPreferences$watchedIndicatorOptions$en {
	_Translations$accountPreferences$watchedIndicatorOptions$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get none => 'Nunca';
	@override String get moviesAndShows => 'Filmes e séries de TV';
	@override String get movies => 'Apenas filmes';
	@override String get shows => 'Apenas séries de TV';
}

// Path: accountPreferences.mediaReviewsOptions
class _Translations$accountPreferences$mediaReviewsOptions$pt extends Translations$accountPreferences$mediaReviewsOptions$en {
	_Translations$accountPreferences$mediaReviewsOptions$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get usersAndCritics => 'Usuários e críticos';
	@override String get usersOnly => 'Apenas usuários';
	@override String get criticsOnly => 'Apenas críticos';
	@override String get nobody => 'Oculto';
}

// Path: discover.person
class _Translations$discover$person$pt extends Translations$discover$person$en {
	_Translations$discover$person$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get born => 'Nascido';
	@override String get died => 'Morreu';
	@override String get birthplace => 'Local de nascimento';
	@override String dateWithAge({required Object date, required Object age}) => '${date} (idade ${age})';
	@override String dateWithAgeAtDeath({required Object date, required Object age}) => '${date} (idade ${age})';
}

// Path: libraries.tabs
class _Translations$libraries$tabs$pt extends Translations$libraries$tabs$en {
	_Translations$libraries$tabs$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get recommended => 'Recomendados';
	@override String get browse => 'Navegar';
	@override String get collections => 'Coleções';
	@override String get playlists => 'Playlists';
}

// Path: libraries.groupings
class _Translations$libraries$groupings$pt extends Translations$libraries$groupings$en {
	_Translations$libraries$groupings$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Agrupamento';
	@override String get all => 'Todos';
	@override String get movies => 'Filmes';
	@override String get shows => 'Séries de TV';
	@override String get seasons => 'Temporadas';
	@override String get episodes => 'Episódios';
	@override String get artists => 'Artistas';
	@override String get albums => 'Álbuns';
	@override String get tracks => 'Faixas';
	@override String get folders => 'Pastas';
}

// Path: libraries.filterCategories
class _Translations$libraries$filterCategories$pt extends Translations$libraries$filterCategories$en {
	_Translations$libraries$filterCategories$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get genre => 'Gênero';
	@override String get year => 'Ano';
	@override String get contentRating => 'Classificação indicativa';
	@override String get tag => 'Tag';
	@override String get unwatched => 'Não assistidos';
	@override String get unplayed => 'Não reproduzidos';
	@override String get favorites => 'Favoritos';
	@override String get filePath => 'Caminho do arquivo';
}

// Path: libraries.sortLabels
class _Translations$libraries$sortLabels$pt extends Translations$libraries$sortLabels$en {
	_Translations$libraries$sortLabels$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Título';
	@override String get dateAdded => 'Data de adição';
	@override String get releaseDate => 'Data de lançamento';
	@override String get rating => 'Avaliação';
	@override String get communityRating => 'Avaliação da comunidade';
	@override String get criticRating => 'Avaliação da crítica';
	@override String get userRating => 'Avaliação do usuário';
	@override String get datePlayed => 'Data de reprodução';
	@override String get playCount => 'Reproduções';
	@override String get productionYear => 'Ano de produção';
	@override String get runtime => 'Duração';
	@override String get officialRating => 'Classificação oficial';
	@override String get premiereDate => 'Data de estreia';
	@override String get startDate => 'Data de início';
	@override String get airTime => 'Horário de exibição';
	@override String get studio => 'Estúdio';
	@override String get random => 'Aleatório';
	@override String get dateShared => 'Data de compartilhamento';
	@override String get latestEpisodeAirDate => 'Última data de exibição do episódio';
	@override String get lastEpisodeDateAdded => 'Data de adição do último episódio';
	@override String get dateDownloaded => 'Data de download';
	@override String get size => 'Tamanho';
	@override String get library => 'Biblioteca';
}

// Path: libraries.advancedFilters
class _Translations$libraries$advancedFilters$pt extends Translations$libraries$advancedFilters$en {
	_Translations$libraries$advancedFilters$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get include => 'Incluir';
	@override String get exclude => 'Excluir';
	@override String get any => 'Qualquer';
	@override String get yes => 'Sim';
	@override String get no => 'Não';
	@override String not({required Object value}) => 'Não ${value}';
	@override String valueCount({required Object count}) => '${count} selecionado';
	@override String valueCountExcluded({required Object count}) => '${count} excluído';
	@override String get searchValues => 'Valores de pesquisa';
	@override String get noValues => 'Sem valores';
	@override String get matchContains => 'Contém';
	@override String get matchNotContains => 'Não contém';
	@override String get matchIs => 'É';
	@override String get matchIsNot => 'Não é';
	@override String get matchBeginsWith => 'Começa com';
	@override String get matchEndsWith => 'Termina com';
	@override String get textHint => 'Digite para combinar';
	@override String get from => 'De';
	@override String get to => 'Para';
	@override String range({required Object from, required Object to}) => '${from} para ${to}';
	@override String atLeast({required Object value}) => '${value} e superior';
	@override String atMost({required Object value}) => 'Até ${value}';
	@override String dateLastDays({required Object count}) => 'Últimos dias ${count}';
	@override String get dateLastYear => 'Ano passado';
	@override String dateOlderThanDays({required Object count}) => 'Mais de ${count} dias';
	@override String get dateOlderThanYear => 'Mais de um ano';
}

// Path: explore.rows
class _Translations$explore$rows$pt extends Translations$explore$rows$en {
	_Translations$explore$rows$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get watchlist => 'Lista para assistir';
	@override String get recommendedMovies => 'Filmes recomendados';
	@override String get recommendedShows => 'Séries recomendadas';
	@override String get trendingMovies => 'Filmes em alta';
	@override String get trendingShows => 'Séries em alta';
	@override String get popularMovies => 'Filmes populares';
	@override String get popularShows => 'Séries populares';
	@override String get trendingAnime => 'Anime em alta';
	@override String get suggestedAnime => 'Anime sugerido';
	@override String get airingAnime => 'Melhores animes em exibição';
	@override String get popularAnime => 'Anime mais popular';
	@override String get trending => 'Em alta';
	@override String get upcomingMovies => 'Próximos filmes';
	@override String get upcomingShows => 'Próximas séries';
}

// Path: explore.status
class _Translations$explore$status$pt extends Translations$explore$status$en {
	_Translations$explore$status$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get airing => 'Em exibição';
	@override String get ended => 'Finalizada';
	@override String get canceled => 'Cancelada';
	@override String get upcoming => 'Em breve';
}

// Path: explore.badge
class _Translations$explore$badge$pt extends Translations$explore$badge$en {
	_Translations$explore$badge$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String rankPopular({required Object n}) => '#${n} em popularidade';
	@override String rankAiring({required Object n}) => '#${n} no ar';
	@override String rankRated({required Object n}) => '#${n} avaliado';
	@override String rankTrending({required Object n}) => '#${n} em alta';
	@override String rankSeasonal({required Object n, required Object season}) => '#${n} em ${season}';
	@override String watchingNow({required Object n}) => '${n} assistindo';
	@override String get available => 'Disponível';
	@override String get partiallyAvailable => 'Parcialmente disponível';
	@override String get availableIn4k => '4K disponível';
	@override String get requested => 'Solicitado';
	@override String get pendingApproval => 'Aguardando aprovação';
	@override String get processing => 'Processando';
	@override String get declined => 'Recusado';
	@override String get requestFailed => 'Falha na solicitação';
	@override String get requested4k => '4K solicitado';
	@override String seasonsAvailable({required Object available, required Object total}) => '${available}/${total} temporadas';
	@override String nextEpisodeIn({required Object episode, required Object duration}) => 'Ep ${episode} em ${duration}';
	@override String nextAiringIn({required Object duration}) => 'Próximo em ${duration}';
	@override String episodesShort({required Object n}) => '${n} epps';
	@override String minutesPerEpisode({required Object n}) => '${n} min/ep';
	@override String get adult => '18+';
}

// Path: explore.stats
class _Translations$explore$stats$pt extends Translations$explore$stats$en {
	_Translations$explore$stats$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String listed({required Object n}) => '${n} listados';
	@override String viewersDay({required Object n}) => '${n} assistiram hoje';
	@override String viewersWeek({required Object n}) => '${n} assistiram esta semana';
	@override String viewersMonth({required Object n}) => '${n} assistiram este mês';
	@override String viewersYear({required Object n}) => '${n} assistiram este ano';
	@override String viewersAllTime({required Object n}) => '${n} espectadores';
	@override String planning({required Object n}) => '${n} pretendem assistir';
	@override String favorited({required Object n}) => '${n} favoritos';
	@override String dropRate({required Object percent}) => '${percent} abandonaram';
	@override String comments({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n,
		one: '${n} comentário',
		other: '${n} comentários',
	);
	@override String votes({required Object n}) => '${n} votos';
	@override String watching({required Object n}) => '${n} assistindo';
	@override String completed({required Object n}) => '${n} concluíram';
	@override String onHold({required Object n}) => '${n} em pausa';
	@override String dropped({required Object n}) => '${n} abandonaram';
}

// Path: explore.season
class _Translations$explore$season$pt extends Translations$explore$season$en {
	_Translations$explore$season$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get winter => 'Inverno';
	@override String get spring => 'Primavera';
	@override String get summer => 'Verão';
	@override String get fall => 'Outono';
	@override String withYear({required Object season, required Object year}) => '${season} ${year}';
}

// Path: explore.format
class _Translations$explore$format$pt extends Translations$explore$format$en {
	_Translations$explore$format$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get tv => 'TV';
	@override String get tvShort => 'Curta de TV';
	@override String get movie => 'Filme';
	@override String get special => 'Especial';
	@override String get ova => 'OVA';
	@override String get ona => 'ONA';
	@override String get music => 'Música';
	@override String get other => 'Outro';
}

// Path: explore.sourceMaterial
class _Translations$explore$sourceMaterial$pt extends Translations$explore$sourceMaterial$en {
	_Translations$explore$sourceMaterial$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get original => 'Original';
	@override String get manga => 'Mangá';
	@override String get lightNovel => 'Light novel';
	@override String get novel => 'Romance';
	@override String get visualNovel => 'Visual novel';
	@override String get game => 'Jogo';
	@override String get webComic => 'Webcomic';
	@override String get musicRelease => 'Música';
	@override String get otherMedia => 'Outro';
}

// Path: explore.creditRole
class _Translations$explore$creditRole$pt extends Translations$explore$creditRole$en {
	_Translations$explore$creditRole$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get actor => 'Ator';
	@override String get director => 'Diretor';
	@override String get writer => 'Roteirista';
	@override String get producer => 'Produtor';
	@override String get creator => 'Criador';
	@override String get composer => 'Compositor';
}

// Path: explore.relation
class _Translations$explore$relation$pt extends Translations$explore$relation$en {
	_Translations$explore$relation$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get prequel => 'Prequela';
	@override String get sequel => 'Sequela';
	@override String get sideStory => 'História paralela';
	@override String get spinOff => 'Spin-off';
	@override String get alternativeVersion => 'Versão alternativa';
	@override String get summary => 'Resumo';
	@override String get parentStory => 'História principal';
	@override String get adaptation => 'Adaptação';
	@override String get other => 'Relacionado';
}

// Path: explore.detail
class _Translations$explore$detail$pt extends Translations$explore$detail$en {
	_Translations$explore$detail$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get originalTitle => 'Título original';
	@override String get alsoKnownAs => 'Também conhecido como';
	@override String get studios => 'Estúdios';
	@override String get country => 'País';
	@override String get language => 'Idioma';
	@override String get released => 'Lançado';
	@override String get physicalRelease => 'Em disco';
	@override String get ended => 'Encerrado';
	@override String addedOn({required Object date}) => 'Adicionado em ${date}';
	@override String get yourRating => 'Sua avaliação';
	@override String get budget => 'Orçamento';
	@override String get revenue => 'Bilheteria';
	@override String get contentAdvisory => 'Classificação indicativa';
	@override String get tags => 'Tags';
	@override String get revealSpoilerTags => 'Mostrar tags de spoiler';
	@override String get links => 'Links';
	@override String get watchOn => 'Assistir em';
	@override String get watchTrailer => 'Ver trailer';
	@override String openOn({required Object site}) => 'Abrir em ${site}';
	@override String get crew => 'Equipe';
	@override String get ratings => 'Avaliações';
	@override String get schedule => 'Programação';
	@override String recommendedByUsers({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n,
		one: 'Recomendado por ${n} usuário',
		other: 'Recomendado por ${n} usuários',
	);
	@override String recommendedBy({required Object who}) => 'Recomendado por ${who}';
	@override String favoritedBy({required Object who}) => 'Favoritado por ${who}';
	@override String unairedEpisodes({required Object n}) => '${n} ainda não exibidos';
	@override String recommendedByPercent({required Object percent}) => 'Recomendado por ${percent} dos espectadores';
	@override String get relatedTitles => 'Títulos relacionados';
	@override String get background => 'Contexto';
}

// Path: liveTv.recordSettings
class _Translations$liveTv$recordSettings$pt extends Translations$liveTv$recordSettings$en {
	_Translations$liveTv$recordSettings$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get startEarly => 'Começar antes (segundos)';
	@override String get endLate => 'Terminar depois (segundos)';
	@override String get newOnly => 'Apenas episódios novos';
	@override String get anyChannel => 'Gravar em qualquer canal';
	@override String get anyTime => 'Gravar a qualquer hora';
	@override String get skipInLibrary => 'Ignorar episódios que já estão na biblioteca';
	@override String get keepUpTo => 'Episódios a manter';
	@override String get keepUpToHint => '0 mantém todos os episódios';
}

// Path: music.discography
class _Translations$music$discography$pt extends Translations$music$discography$en {
	_Translations$music$discography$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get singlesAndEps => 'Singles e EPs';
	@override String get live => 'Ao vivo';
	@override String get compilations => 'Compilações';
}

// Path: watchTogether.notices
class _Translations$watchTogether$notices$pt extends Translations$watchTogether$notices$en {
	_Translations$watchTogether$notices$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String pressedPlay({required Object name}) => '${name} pressionou play';
	@override String get playbackStarted => 'A reprodução começou';
	@override String paused({required Object name}) => '${name} pausou';
	@override String get playbackPaused => 'Reprodução pausada';
	@override String jumpedTo({required Object name, required Object position}) => '${name} saltou para ${position}';
	@override String roomJumpedTo({required Object position}) => 'Saltou para ${position}';
	@override String changedSpeed({required Object name, required Object speed}) => '${name} definiu a velocidade para ${speed}';
	@override String speedChanged({required Object speed}) => 'Velocidade definida como ${speed}';
	@override String startedMedia({required Object name, required Object title}) => '${name} iniciado ${title}';
	@override String mediaStarted({required Object title}) => 'Agora jogando ${title}';
	@override String stoppedMedia({required Object name}) => '${name} interrompeu o vídeo';
	@override String get mediaStopped => 'O vídeo parou';
	@override String waitingFor({required Object name}) => 'Aguardando ${name}...';
	@override String get waitingForSomeone => 'Esperando alguém se atualizar...';
	@override String get finished => 'Concluído';
	@override String hostChangedTo({required Object name}) => '${name} agora é o anfitrião';
	@override String get youAreNowHost => 'Agora você é o anfitrião';
	@override String joined({required Object name}) => '${name} entrou';
	@override String left({required Object name}) => '${name} saiu';
	@override String get controlRefused => 'Somente o host pode controlar a reprodução';
	@override String get searchFailed => 'Não foi possível pesquisar o vídeo da sala em alguns servidores';
	@override String get playBlocked => 'Aperte o play para começar';
	@override String get shareFailed => 'Não foi possível compartilhar este vídeo com a sala';
	@override String get notShared => 'Os vídeos baixados não são compartilhados com a sala';
	@override String get openFailed => 'Não foi possível abrir o vídeo da sala';
}

// Path: watchTogether.ended
class _Translations$watchTogether$ended$pt extends Translations$watchTogether$ended$en {
	_Translations$watchTogether$ended$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get ended => 'O anfitrião encerrou a sala';
	@override String get kicked => 'Você foi removido da sala';
	@override String get expired => 'O quarto expirou';
	@override String get replaced => 'Você entrou nesta sala em outro dispositivo';
	@override String get lost => 'Perdeu a conexão com a sala';
}

// Path: watchTogether.errors
class _Translations$watchTogether$errors$pt extends Translations$watchTogether$errors$en {
	_Translations$watchTogether$errors$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get invalidCode => 'Esse não é um código de quarto. Os códigos possuem 6 letras e dígitos, sem 0, 1, I, L ou O.';
	@override String get roomNotFound => 'Nenhum quarto tem esse código. Pode ter terminado.';
	@override String get roomFull => 'Essa sala está cheia.';
	@override String get roomLocked => 'O anfitrião trancou aquele quarto.';
	@override String get relayFull => 'Assistir Juntos está ocupado agora. Tente novamente mais tarde.';
	@override String get unreachable => 'Não foi possível acessar o retransmissor do Watch Together. Verifique sua conexão.';
	@override String get rateLimited => 'Muitas tentativas. Espere um momento e tente novamente.';
	@override String get clientBlocked => 'Esta versão do Luroka não pode usar o relé. Atualize o aplicativo.';
	@override String get forbidden => 'Somente o anfitrião pode fazer isso.';
	@override String get notInRoom => 'Você não está em uma sala.';
	@override String get alreadyInRoom => 'Você já está em uma sala.';
	@override String get resumeFailed => 'Não foi possível voltar à sala.';
	@override String get unsupported => 'O relé não suporta isso.';
	@override String get generic => 'Algo deu errado. Tente novamente.';
}

// Path: downloads.backgroundWarning
class _Translations$downloads$backgroundWarning$pt extends Translations$downloads$backgroundWarning$en {
	_Translations$downloads$backgroundWarning$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get bannerBlocked => 'Os downloads serão interrompidos ao sair do app';
	@override String get bannerDegraded => 'Os downloads em segundo plano podem ser limitados';
	@override String get bannerAction => 'Detalhes';
	@override String get sheetTitle => 'Os downloads em segundo plano estão bloqueados';
	@override String get sheetTitleDegraded => 'Os downloads em segundo plano podem ser limitados';
	@override String get sheetIntro => 'O Android está impedindo que o Luroka faça downloads de forma confiável em segundo plano.';
	@override String get sheetIntroDegraded => 'Seu dispositivo está limitando quando o Luroka pode fazer downloads em segundo plano.';
	@override String get reasonBackgroundRestricted => 'O uso em segundo plano do Luroka está restrito. Defina o uso da bateria ou o uso em segundo plano como "Sem restrições".';
	@override String get reasonStandbyRestricted => 'O Android colocou o Luroka em um modo de espera restrito. Defina o uso da bateria como "Sem restrições".';
	@override String get reasonDownloadChannelBlocked => 'As notificações de download estão desativadas; por isso, o progresso e os controles podem ficar indisponíveis.';
	@override String get reasonNotificationsDisabled => 'As notificações estão desativadas. No Android 13 ou mais recente, elas são necessárias para downloads longos em segundo plano.';
	@override String get reasonDataSaver => 'A Economia de dados está ativada e bloqueia downloads em segundo plano usando dados móveis. Os downloads ainda devem funcionar no Wi-Fi.';
	@override String get reasonOemUnknown => 'Os downloads foram interrompidos várias vezes enquanto o Luroka estava em segundo plano. Verifique as configurações de bateria ou uso em segundo plano do Luroka.';
	@override String get openSettings => 'Abrir configurações';
	@override String get stillNotWorking => 'Ajuda específica para o dispositivo';
	@override String get stillNotWorkingDescription => 'Veja as instruções para seu dispositivo ou, se o problema persistir, envie um log em Configurações › Ver Logs.';
	@override String get dialogTitle => 'Os downloads podem não ser concluídos';
	@override String get dialogDownloadAnyway => 'Baixar mesmo assim';
	@override String get dialogFixFirst => 'Corrigir primeiro';
	@override String get statusTile => 'Downloads em segundo plano';
	@override String get statusOk => 'Execução em segundo plano permitida';
	@override String get statusBlocked => 'Bloqueado pelas configurações do sistema';
	@override String get statusDegraded => 'Limitado pelas configurações do sistema';
	@override String get statusUnknown => 'Ainda não verificado';
	@override String get settingsUnavailable => 'Não foi possível abrir as configurações do sistema neste dispositivo';
	@override String get linkUnavailable => 'Não foi possível abrir dontkillmyapp.com neste dispositivo';
}

// Path: downloads.groupings
class _Translations$downloads$groupings$pt extends Translations$downloads$groupings$en {
	_Translations$downloads$groupings$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get library => 'Biblioteca';
	@override String get collections => 'Coleções';
}

// Path: companionRemote.session
class _Translations$companionRemote$session$pt extends Translations$companionRemote$session$en {
	_Translations$companionRemote$session$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get startingServer => 'Iniciando servidor remoto...';
	@override String get hostAddress => 'Endereço do host';
	@override String get connected => 'Conectado';
	@override String get serverRunning => 'Servidor remoto ativo';
	@override String get serverStopped => 'Servidor remoto parado';
	@override String get serverRunningDescription => 'Dispositivos móveis na sua rede podem se conectar a este app';
	@override String get serverStoppedDescription => 'Inicie o servidor para permitir que dispositivos móveis se conectem';
	@override String get usePhoneToControl => 'Use seu dispositivo móvel para controlar este app';
	@override String get startServer => 'Iniciar servidor';
	@override String get stopServer => 'Parar servidor';
	@override String get minimize => 'Minimizar';
	@override String get manualAddressHint => 'Endereço de conexão manual:';
}

// Path: companionRemote.pairing
class _Translations$companionRemote$pairing$pt extends Translations$companionRemote$pairing$en {
	_Translations$companionRemote$pairing$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get discoveryDescription => 'Dispositivos Luroka com a mesma conta Plex aparecem aqui';
	@override String get hostAddressHint => '192.168.1.100:48632';
	@override String get connecting => 'Conectando...';
	@override String get searchingForDevices => 'Procurando dispositivos...';
	@override String get noDevicesFound => 'Nenhum dispositivo encontrado na sua rede';
	@override String get noDevicesHint => 'Abra o Luroka no desktop e use a mesma rede Wi-Fi';
	@override String get availableDevices => 'Dispositivos disponíveis';
	@override String get manualConnection => 'Conexão manual';
	@override String get cryptoInitFailed => 'Não foi possível iniciar a conexão segura. Entre no Plex primeiro.';
	@override String get validationHostRequired => 'Insira o endereço do host';
	@override String get validationHostFormat => 'O formato deve ser IP:porta (ex.: 192.168.1.100:48632)';
	@override String get connectionTimedOut => 'A conexão atingiu o tempo limite. Use a mesma rede nos dois dispositivos.';
	@override String get sessionNotFound => 'Dispositivo não encontrado. Verifique se o Luroka está em execução no host.';
	@override String get authFailed => 'Falha na autenticação. Ambos os dispositivos precisam da mesma conta Plex.';
	@override String failedToConnect({required Object error}) => 'Falha ao conectar: ${error}';
}

// Path: companionRemote.remote
class _Translations$companionRemote$remote$pt extends Translations$companionRemote$remote$en {
	_Translations$companionRemote$remote$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get disconnectConfirm => 'Deseja desconectar da sessão remota?';
	@override String get reconnecting => 'Reconectando...';
	@override String attemptOf({required Object current}) => 'Tentativa ${current} de 5';
	@override String get retryNow => 'Tentar agora';
	@override String get tabRemote => 'Remoto';
	@override String get tabPlay => 'Reproduzir';
	@override String get tabMore => 'Mais';
	@override String get menu => 'Menu';
	@override String get tabNavigation => 'Navegação por abas';
	@override String get tabDiscover => 'Descobrir';
	@override String get tabLibraries => 'Bibliotecas';
	@override String get tabSearch => 'Buscar';
	@override String get tabDownloads => 'Downloads';
	@override String get tabSettings => 'Configurações';
	@override String get previous => 'Anterior';
	@override String get playPause => 'Reproduzir/Pausar';
	@override String get next => 'Próximo';
	@override String get seekBack => 'Retroceder';
	@override String get stop => 'Parar';
	@override String get seekForward => 'Avançar';
	@override String get volume => 'Volume';
	@override String get volumeDown => 'Diminuir';
	@override String get volumeUp => 'Aumentar';
	@override String get fullscreen => 'Tela cheia';
	@override String get subtitles => 'Legendas';
	@override String get audio => 'Áudio';
	@override String get searchHint => 'Buscar no desktop...';
}

// Path: companionRemote.errors
class _Translations$companionRemote$errors$pt extends Translations$companionRemote$errors$en {
	_Translations$companionRemote$errors$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get noNetworkInterface => 'Nenhuma interface de rede encontrada';
	@override String get authenticationFailed => 'Falha na autenticação';
	@override String serverStartFailed({required Object error}) => 'Falha ao iniciar o servidor remoto: ${error}';
	@override String commandFailed({required Object error}) => 'Falha ao enviar o comando remoto: ${error}';
	@override String get joinTimedOut => 'Tempo esgotado ao entrar na sessão';
	@override String get failedToConnectAnyAddress => 'Falha ao conectar a qualquer endereço';
	@override String connectionLostAfterAttempts({required Object attempts}) => 'Conexão perdida após ${attempts} tentativas';
	@override String get connectionLost => 'Conexão perdida';
}

// Path: services.names
class _Translations$services$names$pt extends Translations$services$names$en {
	_Translations$services$names$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get mal => 'MyAnimeList';
	@override String get anilist => 'AniList';
	@override String get simkl => 'Simkl';
	@override String get seerr => 'Seerr';
	@override String get mdblist => 'MDBList';
}

// Path: services.simklReconnect
class _Translations$services$simklReconnect$pt extends Translations$services$simklReconnect$en {
	_Translations$services$simklReconnect$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Reconecte Simkl';
	@override String get subtitle => 'Simkl está descontinuando o método de login usado por esta conexão. A reconexão abre simkl.com para aprovar Luroka - Luroka nunca vê sua senha. Seu histórico de exibição permanece em Simkl.';
}

// Path: services.deviceCode
class _Translations$services$deviceCode$pt extends Translations$services$deviceCode$en {
	_Translations$services$deviceCode$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String title({required Object service}) => 'Ativar o Luroka no ${service}';
	@override String get instructions => 'Leia o código QR ou acesse o endereço abaixo e insira este código:';
	@override String openToActivate({required Object service}) => 'Abrir ${service} para ativar';
	@override String get copyCode => 'Copiar código de ativação';
	@override String get waitingForAuthorization => 'Aguardando autorização…';
	@override String get codeCopied => 'Código copiado';
}

// Path: services.oauthProxy
class _Translations$services$oauthProxy$pt extends Translations$services$oauthProxy$en {
	_Translations$services$oauthProxy$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String title({required Object service}) => 'Entrar no ${service}';
	@override String get body => 'Leia este código QR ou abra a URL em qualquer dispositivo.';
	@override String openToSignIn({required Object service}) => 'Abrir ${service} para entrar';
}

// Path: services.pendingAuth
class _Translations$services$pendingAuth$pt extends Translations$services$pendingAuth$en {
	_Translations$services$pendingAuth$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get copyUrl => 'Copiar URL de acesso';
	@override String get urlCopied => 'URL copiada';
}

// Path: services.libraryFilter
class _Translations$services$libraryFilter$pt extends Translations$services$libraryFilter$en {
	_Translations$services$libraryFilter$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Filtro de bibliotecas';
	@override String get subtitleAllSyncing => 'Sincronizando todas as bibliotecas';
	@override String get subtitleNoneSyncing => 'Nada a sincronizar';
	@override String subtitleBlocked({required Object count}) => '${count} bloqueadas';
	@override String subtitleAllowed({required Object count}) => '${count} permitidas';
	@override String get mode => 'Modo de filtro';
	@override String get modeBlacklist => 'Lista de bloqueio';
	@override String get modeWhitelist => 'Lista de permissões';
	@override String get modeHintBlacklist => 'Sincronizar todas as bibliotecas, exceto as marcadas abaixo.';
	@override String get modeHintWhitelist => 'Sincronizar apenas as bibliotecas marcadas abaixo.';
	@override String get libraries => 'Bibliotecas';
	@override String get noLibraries => 'Nenhuma biblioteca disponível';
}

/// The flat map containing all translations for locale <pt>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsPt {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'mobileLibrary.pickerSubtitle' => 'Escolha uma coleção para explorar',
			'mobileLibrary.searchLibraries' => 'Pesquisar bibliotecas',
			'mobileLibrary.noLibraries' => 'Nenhuma biblioteca correspondente',
			'mobileLibrary.ascending' => 'Ascendente',
			'mobileLibrary.descending' => 'Descendente',
			'mobileLibrary.sort' => 'Classificar',
			'mobileLibrary.unwatchedCount' => ({required Object count}) => '${count} episódios não assistidos',
			'mobileLibrary.latestEpisode' => 'Último episódio',
			'profileStartup.autoLogin' => 'Abra o último perfil usado',
			'profileStartup.autoLoginHint' => 'Abra automaticamente o último perfil quando não for necessário um PIN.',
			'profileStartup.allowKidsExit' => 'Permitir sair do perfil infantil sem o PIN dos pais',
			'profileStartup.allowKidsExitHint' => 'Permite que a criança mude para outro perfil sem o PIN dos pais. Os PINs dos perfis continuam valendo.',
			'profileStartup.chooseKidsConnection' => 'Escolha uma conta ou servidor diferente',
			'profileStartup.chooseKidsConnectionHint' => 'Após salvar, conecte uma conta separada ou escolha uma conexão de outro perfil.',
			'subtitleUpload.chooseFile' => 'Carregar arquivo de legenda',
			'subtitleUpload.hint' => 'Escolha o idioma acima e carregue um arquivo SRT, ASS, SSA ou VTT para este servidor.',
			'subtitleUpload.success' => 'Legenda enviada para o servidor. Ele aparecerá quando o servidor atualizar o item.',
			'subtitleUpload.failed' => 'Não foi possível carregar a legenda. Verifique as permissões do arquivo e do servidor.',
			'personSpotlight.inYourLibraries' => 'em suas bibliotecas',
			'personSpotlight.libraryTitles' => ({required Object n}) => 'Em suas bibliotecas · Títulos ${n}',
			'personSpotlight.readBiography' => 'Leia a biografia',
			'personSpotlight.newestFirst' => 'O mais novo primeiro',
			'personSpotlight.oldestFirst' => 'Mais antigo primeiro',
			'personSpotlight.titleAscending' => 'Título A – Z',
			'personSpotlight.sortTitles' => 'Classificar filmografia',
			'personSpotlight.unwatchedEpisodes' => ({required Object n}) => '${n} episódios não assistidos',
			'personSpotlight.copies' => ({required Object n}) => 'Cópias da biblioteca ${n}',
			'personSpotlight.versions' => ({required Object n}) => 'Versões do arquivo ${n}',
			'personSpotlight.retryTitles' => 'Não foi possível carregar todos os títulos. Tentar novamente',
			'detailExtras.onlineVideos' => 'Reboques e extras',
			'detailExtras.reviews' => 'Avaliações',
			'detailExtras.readReview' => 'Leia a crítica completa',
			'detailExtras.directedBy' => ({required Object name}) => 'Mais dirigido por ${name}',
			'detailExtras.previewUnavailable' => 'Esta pré-visualização não pôde ser reproduzida. Você pode abri-lo em seu aplicativo original.',
			'detailExtras.openExternally' => 'Abra o vídeo original',
			'mobileUi.readMore' => 'Leia mais',
			'mobileUi.readLess' => 'Mostrar menos',
			'mobileUi.playbackTools' => 'Opções de reprodução',
			'mobileUi.streamingQuality' => 'Qualidade de transmissão',
			'mobileUi.fileVersions' => 'Versões de arquivo',
			'mobileUi.qualityAndVersions' => 'Qualidade de streaming e versões de arquivos',
			'mobileUi.hidePlaybackTools' => 'Ocultar ferramentas de reprodução',
			'mobileUi.remaining' => ({required Object time}) => '${time} esquerda',
			'mobileUi.endsAt' => ({required Object time}) => 'Termina em ${time}',
			'mobileUi.collection' => 'Sua coleção',
			'mobileUi.nowPlaying' => 'AGORA JOGANDO',
			'mobileUi.popularLibrary' => 'Popular em sua biblioteca',
			'mobileUi.weeklyLibrary' => 'Tendências na sua biblioteca esta semana',
			'family.title' => 'Perfis e família',
			'family.yourPeople' => 'Seu povo',
			'family.manageHint' => 'Gerencie pessoas, a segurança das crianças e as atividades de visualização neste dispositivo.',
			'family.people' => 'Pessoas',
			'family.peopleCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n, one: '${n} pessoa', other: '${n} pessoas', ), 
			'family.kidsCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n, one: '${n} filho', other: '${n} crianças', ), 
			'family.you' => 'Você',
			'family.adult' => 'Adulto',
			'family.child' => 'Criança',
			'family.adultTeen' => 'Adulto ou adolescente',
			'family.adultHint' => 'Seu próprio perfil, perfil opcional PIN e suas próprias conexões de servidor.',
			'family.childHint' => 'Limites de idade, bibliotecas seguras e uma aparência adequada para crianças. O PIN dos pais protege estas definições.',
			'family.upToAge' => ({required Object age}) => 'Até a idade ${age}',
			'family.allAges' => 'Todas as idades',
			'family.switchProfile' => 'Mudar perfil',
			'family.switchHint' => 'Escolha quem está assistindo. Gerenciar uma pessoa não troca de perfil.',
			'family.addPerson' => 'Adicionar pessoa',
			'family.addChild' => 'Adicionar filho',
			'family.addHint' => 'Crie um perfil de adulto, adolescente ou criança neste dispositivo.',
			'family.emptyPeople' => 'Abra espaço para todos que assistem com você.',
			'family.emptyKids' => 'Ainda não há perfis infantis. Adicione uma criança para escolher limites de idade e bibliotecas seguras.',
			'family.safety' => 'Crianças e segurança',
			'family.safetyHint' => 'PIN dos pais, perfis infantis e limites de idade.',
			'family.protection' => 'Proteção',
			'family.kidsProfiles' => 'Perfis infantis',
			'family.backupHistory' => 'Backup e histórico',
			'family.parentPinOn' => 'PIN dos pais ativado',
			'family.profilePin' => 'PIN do perfil',
			'family.confirmParentPin' => 'Confirmar PIN dos pais',
			'family.parentPinOff' => 'PIN dos pais não definido',
			'family.missingPin' => 'Defina um PIN dos pais para proteger estas definições.',
			'family.hideScope' => 'Oculte a atividade das crianças em Continuar assistindo neste perfil Luroka. Isso não altera o histórico de exibição do servidor compartilhado.',
			'family.localScope' => 'Perfis e restrições infantis são armazenados neste dispositivo. Perfis que usam a mesma conta de servidor ainda compartilham o progresso de exibição dessa conta.',
			'family.clearHistoryConfirm' => 'Permitir que títulos assistidos por crianças apareçam em Continuar assistindo novamente? Perfis infantis, restrições, estatísticas de tempo de visualização e histórico de exibição do servidor serão mantidos.',
			'family.editRestrictions' => 'Editar restrições para crianças',
			'family.activity' => 'Visualizando atividade',
			'family.namedActivity' => ({required Object name}) => 'Atividade de visualização de ${name}',
			'family.thisProfile' => 'Este perfil',
			'family.activityScope' => 'Tempo de reprodução registrado por Luroka neste dispositivo para o perfil ativo. Estas são estatísticas, não limites de visualização ou histórico completo do servidor.',
			'family.activityUnavailable' => 'A atividade de visualização ainda não está disponível para este perfil.',
			'family.finished' => 'Concluído',
			'posterDetails.showThemeMusic' => 'Tocar música tema',
			'posterDetails.showThemeMusicDescription' => 'Reproduza o tema de um filme ou programa enquanto sua página de detalhes estiver aberta, quando disponível no servidor.',
			'posterDetails.catalogEpisodeInfo' => 'Mostrar contagem de episódios e tempo de execução em cartões de catálogo',
			'posterDetails.catalogEpisodeInfoDescription' => 'Mostre a contagem de episódios e a duração média nos pôsteres do Descobrir.',
			'posterDetails.title' => 'Detalhes do pôster',
			'posterDetails.description' => 'Mostre o título, o ano e a classificação IMDb abaixo dos pôsteres no Studio, Search, Descobrir e Bibliotecas. As classificações IMDb ausentes permanecem ocultas. Desative para pôsteres somente com arte.',
			'libraryPolish.compactTvNavigation' => 'Navegação de biblioteca compacta',
			'libraryPolish.compactTvNavigationDescription' => 'Mostre seções da biblioteca e navegue pelas opções em um menu deslizante, deixando mais espaço para pôsteres.',
			'libraryPolish.openLibraryMenu' => 'Abrir menu da biblioteca',
			'libraryPolish.posterDetails' => 'Detalhes do pôster',
			'libraryPolish.showPosterDetails' => 'Mostrar detalhes do pôster · nome, ano e IMDb',
			'libraryPolish.hidePosterDetails' => 'Ocultar detalhes do pôster',
			'libraryPolish.overview' => 'Visão geral',
			'libraryPolish.refreshing' => 'Biblioteca atualizada…',
			'libraryPolish.serverCollections' => 'Todas as coleções neste servidor',
			'libraryPolish.serverPlaylists' => 'Todas as playlists de vídeos neste servidor',
			'libraryPolish.libraryCollections' => 'Coleções nesta biblioteca',
			'libraryPolish.searchCollections' => 'Pesquisar coleções',
			'libraryPolish.searchPlaylists' => 'Pesquisar listas de reprodução',
			'libraryPolish.searchHint' => 'Pesquisar por nome',
			'libraryPolish.titleAscending' => 'Título A – Z',
			'libraryPolish.titleDescending' => 'Título Z – A',
			'libraryPolish.clearFilters' => 'Limpar filtros',
			'libraryPolish.playlistEmptyTitle' => 'Suas noites de cinema, na sua ordem',
			'libraryPolish.playlistEmptyHint' => 'Abra o menu Mais de um título e escolha Adicionar à lista de reprodução para criar sua primeira lista de reprodução.',
			'libraryPolish.noMatches' => 'Nenhum nome correspondente',
			'libraryPolish.indexing' => 'Pesquisando o catálogo completo…',
			'showSchedule.today' => 'Hoje',
			'showSchedule.tomorrow' => 'Amanhã',
			'showSchedule.latestUpcoming' => 'Mais recentes e futuros',
			'showSchedule.latestEpisode' => 'Último episódio',
			'showSchedule.upcoming' => 'Próximos',
			'showSchedule.inLibrary' => 'Na sua biblioteca',
			'showSchedule.notInLibrary' => 'Não está na sua biblioteca',
			'showSchedule.notYetAired' => 'Ainda não foi ao ar',
			'showSchedule.episode' => ({required Object number}) => 'Episódio ${number}',
			'showSchedule.caughtUp' => 'Vocês estão todos em dia',
			'showSchedule.finished' => 'Você terminou esta série',
			'showSchedule.nextAirs' => ({required Object date}) => 'Próximo episódio vai ao ar ${date}',
			'showSchedule.watchBeginning' => 'Assista desde o início',
			'showSchedule.replay' => 'Repetir',
			'showSchedule.playNext' => 'Jogue a seguir',
			'awardsCatalog.awards' => 'Prêmios',
			'awardsCatalog.customize' => 'Personalizar',
			'awardsCatalog.chooseShelves' => 'Personalize a descoberta',
			'awardsCatalog.shelvesDescription' => 'Escolha as linhas desejadas no Descobrir. As linhas de prêmios mostram os vencedores de suas bibliotecas. Suas escolhas são salvas para este perfil.',
			'awardsCatalog.restoreShelves' => 'Restaurar padrões',
			'awardsCatalog.charts' => 'Gráficos IMDb',
			'awardsCatalog.generalShelves' => 'Populares e tendências',
			'awardsCatalog.saveShelvesFailed' => 'Não foi possível salvar suas escolhas do Descobrir. Por favor, tente novamente.',
			'awardsCatalog.comedyActress' => 'Atriz principal · Comédia',
			'awardsCatalog.leadDramaActor' => 'Ator principal · Drama',
			'awardsCatalog.leadDramaActress' => 'Atriz principal · Drama',
			'awardsCatalog.comedySupportingActor' => 'Ator Coadjuvante · Comédia',
			'awardsCatalog.comedySupportingActress' => 'Atriz Coadjuvante · Comédia',
			'awardsCatalog.leadingPerformance' => 'Urso de Prata · Melhor Performance de Líder',
			'awardsCatalog.globesComedySeries' => 'Melhor série de televisão · Musical ou comédia',
			'awardsCatalog.limitedSupportingActor' => 'Ator Coadjuvante · Série Limitada ou Filme',
			'awardsCatalog.limitedSupportingActress' => 'Atriz Coadjuvante · Série Limitada ou Filme',
			'awardsCatalog.berlinDocumentary' => 'Prêmio Documentário Berlinale',
			'awardsCatalog.title' => 'Prêmios e festivais',
			'awardsCatalog.chooseCategory' => 'Escolha uma categoria de premiação',
			'awardsCatalog.winners' => 'Vencedores',
			'awardsCatalog.nominees' => 'Nomeados',
			'awardsCatalog.releaseDecade' => 'Década de lançamento',
			'awardsCatalog.allYears' => 'Todos os anos',
			'awardsCatalog.loading' => 'Carregando títulos de prêmios…',
			'awardsCatalog.matching' => 'Encontrar esses títulos em suas bibliotecas…',
			'awardsCatalog.unavailable' => 'Os dados do prêmio não estão disponíveis no momento. Tente novamente.',
			'awardsCatalog.empty' => 'Não há títulos correspondentes nas suas bibliotecas visíveis para esta categoria.',
			'awardsCatalog.coverage' => 'A adesão vem do Wikidata e pode ser incompleta. As categorias de ator e diretor mostram os filmes ou espetáculos pelos quais foram premiados. Os anos referem-se ao lançamento do título, não à cerimônia.',
			'awardsCatalog.picture' => 'Melhor Foto',
			'awardsCatalog.film' => 'Melhor Filme',
			'awardsCatalog.international' => 'Melhor Filme Internacional',
			'awardsCatalog.internationalFilm' => 'Melhor Filme Internacional',
			'awardsCatalog.nonEnglishFilm' => 'Melhor Filme Não na Língua Inglesa',
			'awardsCatalog.animated' => 'Melhor Animação',
			'awardsCatalog.animatedFilm' => 'Melhor Filme de Animação',
			'awardsCatalog.documentary' => 'Melhor Documentário',
			'awardsCatalog.director' => 'Melhor Diretor',
			'awardsCatalog.actor' => 'Melhor Ator',
			'awardsCatalog.actress' => 'Melhor Atriz',
			'awardsCatalog.supportingActor' => 'Melhor Ator Coadjuvante',
			'awardsCatalog.supportingActress' => 'Melhor Atriz Coadjuvante',
			'awardsCatalog.originalScreenplay' => 'Melhor Roteiro Original',
			'awardsCatalog.adaptedScreenplay' => 'Melhor Roteiro Adaptado',
			'awardsCatalog.screenplay' => 'Melhor Roteiro',
			'awardsCatalog.cinematography' => 'Melhor Fotografia',
			'awardsCatalog.editing' => 'Melhor Edição',
			'awardsCatalog.score' => 'Melhor trilha sonora original',
			'awardsCatalog.song' => 'Melhor Canção Original',
			'awardsCatalog.sound' => 'Melhor som',
			'awardsCatalog.effects' => 'Melhores efeitos visuais',
			'awardsCatalog.productionDesign' => 'Melhor Design de Produção',
			'awardsCatalog.costume' => 'Melhor figurino',
			'awardsCatalog.makeup' => 'Melhor maquiagem e penteado',
			'awardsCatalog.dramaSeries' => 'Excelente série dramática',
			'awardsCatalog.comedySeries' => 'Excelente série de comédia',
			'awardsCatalog.limitedSeries' => 'Excelente série limitada',
			'awardsCatalog.animatedProgram' => 'Excelente programa de animação',
			'awardsCatalog.comedyActor' => 'Ator principal · Comédia',
			'awardsCatalog.limitedActor' => 'Ator principal · Série limitada ou filme',
			'awardsCatalog.limitedActress' => 'Atriz principal · Série limitada ou filme',
			'awardsCatalog.limitedDirecting' => 'Direção · Série Limitada ou Filme',
			'awardsCatalog.britishFilm' => 'Melhor Filme Britânico',
			'awardsCatalog.goldenBear' => 'Urso Dourado',
			'awardsCatalog.grandJury' => 'Grande Prêmio do Júri',
			'awardsCatalog.jury' => 'Prêmio do Júri',
			'awardsCatalog.teddy' => 'Prêmio Teddy',
			'awardsCatalog.goldenLion' => 'Leão Dourado',
			'awardsCatalog.volpiActor' => 'Copa Volpi · Melhor Ator',
			'awardsCatalog.volpiActress' => 'Copa Volpi · Melhor Atriz',
			'awardsCatalog.queerLion' => 'Leão Queer',
			'awardsCatalog.dramaFilm' => 'Melhor Filme · Drama',
			'awardsCatalog.comedyFilm' => 'Melhor Filme · Musical ou Comédia',
			'awardsCatalog.dramaActor' => 'Melhor Ator · Drama',
			'awardsCatalog.dramaActress' => 'Melhor Atriz · Drama',
			'awardsCatalog.usDramatic' => 'Prêmio do Grande Júri Dramático dos EUA',
			'awardsCatalog.documentaryJury' => 'Grande Prêmio do Júri de Documentário',
			'awardsCatalog.worldCinema' => 'Prêmio do Grande Júri do Cinema Mundial',
			'awardsCatalog.dramaticAudience' => 'Prêmio do Público Dramático dos EUA',
			'awardsCatalog.usDirecting' => 'Prêmio de Direção nos EUA',
			'awardsCatalog.peopleChoice' => 'Prêmio Escolha do Povo',
			'awardsCatalog.canadianFilm' => 'Melhor Filme Canadense',
			'awardsCatalog.firstFeature' => 'Melhor primeiro recurso',
			'awardsCatalog.cassavetes' => 'Prémio João Cassavetes',
			'awardsCatalog.scienceFiction' => 'Melhor Filme de Ficção Científica',
			'awardsCatalog.fantasy' => 'Melhor Filme de Fantasia',
			'awardsCatalog.horror' => 'Melhor Filme de Terror',
			'awardsCatalog.action' => 'Melhor Filme de Ação ou Aventura',
			'awardsCatalog.thriller' => 'Melhor filme de suspense',
			'searchDiscovery.suggestions' => 'Algo para assistir',
			'searchDiscovery.collections' => 'Prêmios e coleções',
			'searchDiscovery.collectionsHint' => 'Vencedores de prêmios e gráficos selecionados de suas bibliotecas',
			'searchDiscovery.all' => 'Todas as descobertas',
			'searchDiscovery.awards' => 'Prêmios e paradas',
			'lurokaPlayerDesign.seeking' => 'Buscar visualização',
			'lurokaPlayerDesign.keepWatching' => 'Continue assistindo',
			'lurokaPlayerDesign.upNext' => 'A seguir',
			'lurokaPlayerDesign.playingIn' => ({required Object seconds}) => 'Jogando em ${seconds}',
			'lurokaWorkspace.everyday' => 'Todos os dias',
			'lurokaWorkspace.homeDiscovery' => 'Casa e descoberta',
			'lurokaWorkspace.librariesAccounts' => 'Bibliotecas e contas',
			'lurokaWorkspace.profilesFamily' => 'Perfis e família',
			'lurokaWorkspace.thisDevice' => 'Este dispositivo',
			'lurokaWorkspace.thisProfile' => 'Este perfil',
			'lurokaWorkspace.searchSettings' => 'Configurações de pesquisa',
			'lurokaWorkspace.savedAutomatically' => 'As alterações são salvas automaticamente. Diário e Avançado alteram apenas os controles mostrados.',
			'lurokaWorkspace.audioSubtitles' => 'Áudio e legendas',
			'lurokaWorkspace.audioDescription' => 'Saída de som, volume e aparência de legendas. Os idiomas preferidos são definidos por conta do servidor usando as preferências da conta quando conectado.',
			'lurokaWorkspace.pictureSound' => 'Imagem e som',
			'lurokaWorkspace.pictureDescription' => 'Correspondência de taxa de quadros, resolução, ajuste HDR e Dolby Vision para este dispositivo.',
			'lurokaWorkspace.engineDescription' => 'Mecanismo de player, decodificação, configuração personalizada e regras avançadas de reprodução.',
			'lurokaWorkspace.networkStreaming' => 'Rede e streaming',
			'lurokaWorkspace.networkDescription' => 'Qualidade de streaming, preferências de codec de reprodução direta e opções de largura de banda.',
			'lurokaWorkspace.homeOptions' => 'Opções de casa',
			'lurokaWorkspace.refreshHome' => 'Atualizar página inicial e popular agora',
			'lurokaWorkspace.customizeHome' => 'Personalize a página inicial',
			'lurokaWorkspace.spotlight' => 'Destaque inicial',
			'lurokaWorkspace.rotateSpotlight' => 'Girar automaticamente os títulos em destaque',
			'lurokaWorkspace.rotateDescription' => 'Gire enquanto o Início estiver ocioso. A interação pausa a rotação; navegar nas prateleiras, abrir uma página ou sair do aplicativo o pausa completamente.',
			'lurokaWorkspace.rotationInterval' => 'Tempo entre títulos em destaque',
			'mobileFixes.connectionRecoveryHint' => 'Servidor indisponível? Gerencie suas contas ou conecte outro servidor.',
			'downloadsRedesign.shelfSize' => 'Itens por prateleira',
			'downloadsRedesign.shelfSizeHint' => 'Mostre 16, 32 ou 48 itens nas prateleiras Continuar assistindo e recomendações. Os servidores podem retornar menos títulos disponíveis.',
			'downloadsRedesign.subtitle' => 'Seus favoritos, prontos para a viagem.',
			'downloadsRedesign.transfers' => 'Transferências',
			'downloadsRedesign.ready' => 'Pronto off-line',
			'downloadsRedesign.active' => 'Baixando',
			'downloadsRedesign.waiting' => 'Esperando',
			'downloadsRedesign.downloaded' => 'Baixado',
			'downloadsRedesign.speed' => 'Velocidade de download',
			'downloadsRedesign.notificationProgress' => '{progress} · {networkSpeed} · {timeRemaining} restante',
			'kidsShelf.movieShelf' => 'Hora do filme',
			'kidsShelf.showShelf' => 'Encontre seu próximo programa',
			'kidsShelf.aurora' => 'Aurora – azul-petróleo profundo e limão',
			'kidsShelf.marquee' => 'Tenda – veludo e ouro',
			'kidsShelf.electric' => 'Elétrico – índigo e gelo',
			'kidsShelf.midnight' => 'Meia-Noite – aço e âmbar',
			'kidsShelf.yourShelf' => 'Sua estante de filmes',
			'kidsShelf.all' => 'Tudo',
			'kidsShelf.pickSomething' => 'O que você quer assistir?',
			'kidsHome.everything' => 'Para você',
			'kidsHome.keepWatching' => 'Continue assistindo',
			'kidsHome.emptyFilter' => 'Nada aqui ainda. Experimente Para você ou peça ao seu adulto para adicionar algo que você adora.',
			'tvSettingsV2.moreThemes' => 'Mais temas e cores personalizadas',
			'tvSettingsV2.moreThemesHint' => 'Abra todas as predefinições disponíveis e opções de temas personalizados.',
			'tvSettingsV2.previewLive' => 'Visualização ao vivo',
			'tvSettingsV2.previewIllustration' => 'Exemplo de visualização',
			'tvSettingsV2.previewShelfCount' => ({required Object count}) => 'Até itens ${count} por prateleira',
			'tvSettingsV2.simple' => 'Simples',
			'tvSettingsV2.homeNavigation' => 'Início e navegação',
			'tvSettingsV2.libraryCards' => 'Biblioteca e Cartões',
			'tvSettingsV2.accountsLibraries' => 'Contas e bibliotecas',
			'tvSettingsV2.profilesFamily' => 'Perfis e família',
			'tvSettingsV2.aboutSupport' => 'Sobre e suporte',
			'tvSettingsV2.playback' => 'Reprodução',
			'tvSettingsV2.homeHint' => 'Escolha o que aparece na página inicial e na navegação.',
			'tvSettingsV2.libraryHint' => 'Ajuste tamanhos de pôsteres, rótulos e indicadores observados.',
			'tvSettingsV2.advancedPlayback' => 'Mecanismo de player e streaming',
			'tvSettingsV2.advancedPlaybackHint' => 'Player, saída de vídeo, streaming e opções avançadas de reprodução.',
			'tvSettingsV2.advancedTools' => 'Diagnósticos e backups',
			'tvSettingsV2.advancedToolsHint' => 'Logs, solução de problemas, backup e redefinição de configurações.',
			'tvSettingsV2.themePreview' => 'Visualização do tema',
			'tvSettingsV2.libraryPreview' => 'Visualização da biblioteca',
			'tvSettingsV2.homePreview' => 'Visualização inicial',
			'tvSettingsV2.subtitlePreview' => 'Visualização da legenda',
			'tvSettingsV2.subtitleSample' => 'Suas legendas ficarão assim.',
			'tvSettingsV2.previewPlaceholder' => 'Sua arte aparece aqui',
			'tvSettingsV2.posterSize' => 'Tamanho do pôster',
			'tvSettingsV2.serverRecommendations' => 'Recomendações iniciais do seu servidor',
			'tvSettingsV2.tvLayout' => 'Usar layout de TV',
			'tvSettingsV2.hardwareDecode' => 'Use decodificação de vídeo de hardware',
			'tvSettingsV2.serverNames' => 'Mostrar nomes de servidores nas linhas iniciais',
			'tvSettingsV2.settingsSaved' => 'As alterações são salvas automaticamente.',
			'tvSettingsV2.morePlayback' => 'Reprodução avançada',
			'tvSettingsV2.screenDisplay' => 'Imagem e som',
			'tvSettingsV2.engine' => 'Motor do jogador',
			'tvSettingsV2.network' => 'Streaming e rede',
			'tvSettingsV2.performance' => 'Desempenho',
			'tvSettingsV2.simpleAudio' => 'Idiomas e aparência de legendas',
			'settingsRedesign.themeEffects' => 'Tema e efeitos',
			'settingsRedesign.libraryLayout' => 'Layout da biblioteca',
			'settingsRedesign.posterInformation' => 'Informações do pôster',
			'settingsRedesign.libraryBehavior' => 'Comportamento da biblioteca',
			'settingsRedesign.appearanceHint' => 'Personalize a aparência, o layout e o comportamento do Luroka.',
			'settingsRedesign.livePreview' => 'Visualização ao vivo',
			'settingsRedesign.previewHint' => 'Veja como ficará sua biblioteca com as configurações atuais.',
			'settingsRedesign.showLiveTv' => 'Mostrar TV ao vivo',
			'settingsRedesign.showLiveTvHint' => 'Mostrar TV ao vivo na navegação quando um servidor conectado oferecer suporte. Isso não altera seu servidor.',
			'settingsRedesign.aboutTagline' => 'Sua mídia. Seu espaço.',
			'settingsRedesign.aboutDescription' => 'Luroka reúne suas bibliotecas Plex, Jellyfin e Emby em um player cinematográfico para telefones, TVs e desktops.',
			'settingsRedesign.aboutFeatures' => 'Navegue em suas bibliotecas, retome filmes e programas, personalize perfis, aproveite downloads e assista juntos. A TV ao vivo está disponível com um servidor compatível.',
			'settingsRedesign.services' => 'Conecte seu mundo',
			'settingsRedesign.updateSource' => 'Fonte de atualização',
			'settingsRedesign.updateSourceHint' => 'Endereço HTTPS do seu feed de lançamento Luroka. Seu distribuidor pode pré-configurar isso no aplicativo.',
			'settingsRedesign.updateNotConfigured' => 'As atualizações automáticas não estão configuradas para esta compilação.',
			'settingsRedesign.downloadInstall' => 'Baixe e instale',
			'settingsRedesign.installUpdate' => 'Instalar atualização',
			'settingsRedesign.downloading' => 'Baixando atualização…',
			'settingsRedesign.downloadFailed' => 'Não foi possível baixar ou verificar a atualização. Por favor, tente novamente.',
			'settingsRedesign.installPermission' => 'Permita que Luroka instale atualizações nas configurações do Android, retorne e selecione Instalar atualização.',
			'settingsRedesign.updateReady' => 'Download verificado. Pronto para instalar.',
			'settingsRedesign.releaseNotes' => 'Notas de lançamento',
			'settingsRedesign.invalidFeed' => 'Insira um endereço de feed de atualização HTTPS válido.',
			'onboarding.connectStep' => '01 · Conectar',
			'onboarding.connectTitle' => 'Bem-vindo ao Luroka',
			'onboarding.connectHint' => 'Faça login para trazer suas bibliotecas aqui.',
			'onboarding.serverAddressHint' => 'Digite o endereço do seu servidor ou escolha um servidor encontrado na sua rede.',
			'onboarding.serverSignInHint' => 'Use o nome de usuário e a senha do servidor para conectar suas bibliotecas.',
			'onboarding.serverAddressTitle' => 'Endereço do servidor',
			'onboarding.serverAccountTitle' => 'Sua conta do servidor',
			'onboarding.plexHomeTitle' => 'Escolha seu usuário doméstico Plex',
			'onboarding.plexHomeHint' => 'Selecione o usuário Plex cujas bibliotecas você deseja usar. A seguir, você configurará seu perfil Luroka.',
			'onboarding.chooseService' => 'Escolha seu serviço',
			'onboarding.profileStep' => '02 · Seu perfil',
			'onboarding.profileTitle' => 'Sinta-se em casa.',
			'onboarding.profileHint' => 'Escolha um nome e um avatar para o seu perfil Luroka. Sua conta conectada permanece a mesma.',
			'onboarding.readyStep' => '03 · Pronto para assistir',
			'onboarding.readyTitle' => 'Um pouco mais de você.',
			'onboarding.readyHint' => 'Reúna seus serviços ou abra espaço para outra pessoa. Você sempre pode fazer isso mais tarde.',
			'onboarding.addService' => 'Conecte outro serviço',
			'onboarding.editProfile' => 'Edite seu nome e avatar',
			'onboarding.connected' => 'Conectado e pronto',
			'onboarding.backToProfile' => 'Voltar ao seu perfil',
			'onboarding.showOtherPlexHome' => 'Mostrar outros membros da página inicial Plex',
			'onboarding.showOtherPlexHomeHint' => 'Desativado por padrão. Seus perfis Luroka e membros do Plex Home que você usou permanecem visíveis. Ative para escolher outra pessoa.',
			'household.title' => 'Sua família Luroka',
			'household.welcome' => 'Torne Luroka seu',
			'household.welcomeHint' => 'Sua primeira conta está conectada. Personalize seu perfil ou adicione outra pessoa antes de começar a assistir.',
			'household.profiles' => 'Perfis e família',
			'household.manageHint' => 'Adicione pessoas, altere fotos e gerencie as conexões de cada perfil.',
			'household.addProfile' => 'Adicionar perfil Luroka',
			'household.addHint' => 'Cada pessoa pode conectar seu próprio login Plex, Emby ou Jellyfin. Somente conexões adicionadas ao seu perfil aparecem para eles.',
			'household.sharedHint' => 'A reutilização da conexão de outro perfil compartilha o status assistido do usuário do servidor e o progresso da reprodução. Escolha um login separado para visualização independente do histórico.',
			'household.personalise' => 'Personalizar perfil',
			'household.changePicture' => 'Alterar foto do perfil',
			'household.pictureHint' => 'Escolha um avatar Luroka ou uma foto. Isto altera a imagem apenas neste dispositivo; sua conta do servidor permanece intacta.',
			'household.serverPicture' => 'Use a imagem/iniciais do servidor',
			'household.choosePhoto' => 'Escolha uma foto',
			'household.photoHint' => 'JPEG, PNG ou outra imagem suportada, até 10 MB. As fotos são redimensionadas e armazenadas neste dispositivo.',
			'household.pictureSaved' => 'Foto do perfil atualizada',
			'household.pictureFailed' => 'Não foi possível atualizar a foto do perfil. Experimente uma imagem suportada de até 10 MB.',
			'household.saveFailed' => 'Não foi possível salvar as configurações do perfil. Por favor, tente novamente.',
			'household.startWatching' => 'Comece a assistir',
			'household.manageProfiles' => 'Gerencie ou alterne perfis',
			'household.addLater' => 'Você pode adicionar mais pessoas posteriormente em Configurações → Perfis e família.',
			'household.connectionRequired' => 'Adicione uma conexão de servidor para concluir a configuração deste perfil.',
			'household.mountain' => 'Montanha',
			'household.orbit' => 'Explorador',
			'household.waves' => 'Oceano',
			'household.blossom' => 'Flor',
			'household.lightning' => 'Relâmpago',
			'household.moon' => 'Lua',
			'household.avatarGallery' => 'Escolha um avatar',
			'household.avatarIllustrationHint' => 'Retratos ilustrados originais, crianças e amigos animais',
			'household.avatarPortraitSunrise' => 'Retrato do nascer do sol',
			'household.avatarPortraitMeadow' => 'Retrato de prado',
			'household.avatarPortraitBerry' => 'Retrato de baga',
			'household.avatarPortraitGolden' => 'Retrato dourado',
			'household.avatarPortraitIndigo' => 'Retrato índigo',
			'household.avatarPortraitOcean' => 'Retrato do oceano',
			'household.avatarKidArtist' => 'Pequeno artista',
			'household.avatarKidSkater' => 'Pequeno patinador',
			'household.avatarCat' => 'Gato curioso',
			'household.avatarDog' => 'Cachorro feliz',
			'household.avatarPanda' => 'panda',
			'household.avatarOwl' => 'Coruja',
			'household.avatarFox' => 'Raposa',
			'household.avatarDinosaur' => 'Dinossauro',
			'household.avatarRobot' => 'Robô',
			'detailComposition.startOver' => 'Recomeçar',
			'detailComposition.seriesCast' => 'Elenco da série',
			'detailComposition.streamingQuality' => 'Qualidade de transmissão…',
			'detailComposition.trailer' => 'Reboque',
			'detailComposition.manageMedia' => 'Gerenciar mídia…',
			'detailComposition.playbackOptions' => 'Opções de reprodução…',
			'detailComposition.moreActions' => 'Mais ações',
			'detailComposition.watched' => 'Assistido',
			'detailComposition.unwatched' => 'Não assistido',
			'detailComposition.endsAt' => ({required Object time}) => 'Termina em ${time}',
			'detailComposition.automatic' => 'Automático',
			'detailComposition.usePreferences' => 'Use suas preferências de reprodução',
			'detailComposition.mediaInformation' => 'Informações sobre mídia',
			'detailComposition.fullFileInformation' => 'Informações completas do arquivo',
			'detailComposition.castAndCrew' => 'Elenco e equipe',
			'kids.timeLimits' => 'Limites de tempo de tela',
			'kids.dailyWatchLimit' => 'Tempo de exibição diário',
			'kids.dailyWatchLimitHint' => 'Limita a reprodução de vídeo neste dispositivo todos os dias.',
			'kids.noTimeLimit' => 'Sem limite',
			'kids.minutesLimit' => ({required Object minutes}) => '${minutes} minutos',
			'kids.bedtime' => 'Hora de dormir',
			'kids.bedtimeHint' => 'É necessário o PIN dos pais para usar este perfil nesse horário.',
			'kids.bedtimeStart' => 'A hora de dormir começa',
			'kids.bedtimeEnd' => 'A hora de dormir termina',
			'kids.timeLimitReached' => 'O tempo de exibição acabou por hoje',
			'kids.bedtimeReached' => 'É hora de dormir',
			'kids.timeLimitParentHint' => 'Peça a um dos pais para inserir seu PIN para continuar esta sessão.',
			'kids.parentUnlock' => 'Desbloqueio parental',
			'kids.backupProfile' => 'Fazer backup do perfil infantil',
			'kids.backupExplain' => 'Faça backup do nome salvo, personagem, restrições, aparência e exclusões de visualização local deste perfil. PINs dos pais, logins de servidor, downloads e progresso de reprodução do servidor não estão incluídos.',
			'kids.saveBackupFile' => 'Salvar arquivo de backup',
			'kids.copyBackup' => 'Copiar texto de backup',
			'kids.backupSaved' => ({required Object path}) => 'Backup do perfil infantil salvo em ${path}',
			'kids.backupCopied' => 'Backup do perfil infantil copiado',
			'kids.backupFailed' => 'Não foi possível salvar o backup do perfil infantil. Por favor, tente novamente.',
			'kids.restoreProfile' => 'Restaurar perfil infantil',
			'kids.chooseBackupFile' => 'Escolha o arquivo de backup',
			'kids.pasteBackup' => 'Colar texto de backup',
			'kids.backupText' => 'JSON de backup do perfil infantil',
			'kids.pasteFromClipboard' => 'Colar da área de transferência',
			'kids.restoreReview' => 'Revise essas configurações restauradas e salve para criar um novo perfil infantil usando suas conexões de servidor atuais. Os perfis existentes não são substituídos. As seleções de biblioteca e exclusões de visualização correspondem apenas aos mesmos IDs de servidor/biblioteca.',
			'kids.restoreInvalid' => 'Este não é um backup de perfil infantil válido e compatível. Escolha um backup JSON do perfil infantil Luroka.',
			'kids.deleteProfile' => 'Excluir perfil infantil',
			'kids.deleteExplain' => ({required Object name}) => 'Excluir ${name} de Luroka? Suas configurações locais, downloads e exclusões de visualização serão removidos. Sua conta do servidor e o histórico do servidor permanecerão. Crie um backup primeiro se quiser restaurar o perfil mais tarde.',
			'kids.profileDeleted' => 'Perfil infantil excluído',
			'kids.allowedLibraries' => 'Bibliotecas permitidas',
			'kids.unavailableLibrary' => 'Biblioteca selecionada anteriormente (atualmente indisponível)',
			'kids.allLibraries' => 'Permitir todas as bibliotecas de filmes e TV conectadas',
			'kids.librariesExplain' => 'Desligue para escolher bibliotecas específicas. As regras de idade e animação ainda se aplicam às bibliotecas selecionadas. Novas bibliotecas não são adicionadas automaticamente ao usar uma seleção.',
			'kids.librariesUnavailable' => 'Nenhuma biblioteca de filmes ou TV está carregada. Conecte-se ao servidor e abra Bibliotecas, depois volte aqui para escolher.',
			'kids.noLibrariesSelected' => 'Nenhuma biblioteca selecionada: esta criança não verá nenhum título.',
			'kids.animationOnly' => 'Somente animação',
			'kids.animationExplain' => 'Mostre apenas títulos marcados com o gênero Animação em seu servidor. Isto não substitui o limite de idade: a animação também pode ser destinada a adultos. Os metadados de gênero ausentes estão ocultos.',
			'kids.allowUnrated' => 'Permitir títulos sem classificação etária',
			'kids.unratedExplain' => 'Desativado por padrão. Quando ativado, classificações ausentes ou sem classificação podem aparecer se as regras da biblioteca e da animação permitirem. A sua adequação não pode ser verificada pela idade. As classificações conhecidas acima do limite de idade e as classificações não reconhecidas permanecem ocultas.',
			'kids.whoIsWatching' => 'Quem está assistindo?',
			'kids.chooseAdventure' => 'Um pequeno mundo de grandes aventuras.',
			'kids.chooseProfile' => 'Escolha o seu espaço. Faça disso uma noite de cinema.',
			'kids.welcome' => ({required Object name}) => 'Olá, ${name}!',
			'kids.welcomeOlder' => ({required Object name}) => 'Sua próxima grande história, ${name}.',
			'kids.homeSubtitle' => 'Grandes aventuras. Pequenas descobertas. Tudo para você.',
			'kids.homeSubtitleOlder' => 'Encontre um novo favorito. Continue de onde parou.',
			'kids.featured' => 'A grande aventura de hoje',
			'kids.featuredOlder' => 'No centro das atenções',
			'kids.moreInfo' => 'Mais informações',
			'kids.movies' => 'Filmes',
			'kids.shows' => 'Programas',
			'kids.profiles' => 'Perfis',
			'kids.adultBadge' => 'Adultos',
			'kids.avatar' => 'Escolha seu personagem',
			'kids.avatarExplorer' => 'Explorador espacial',
			'kids.avatarFox' => 'Raposa',
			'kids.avatarDinosaur' => 'Dinossauro',
			'kids.avatarRobot' => 'Robô',
			'kids.avatarChildArtist' => 'Pequeno artista',
			'kids.avatarChildSkater' => 'Pequeno patinador',
			'kids.avatarSunrisePerson' => 'Retrato do nascer do sol',
			'kids.avatarOceanPerson' => 'Retrato do oceano',
			'kids.avatarCat' => 'Gato curioso',
			'kids.avatarDog' => 'Cachorro feliz',
			'kids.avatarPanda' => 'panda',
			'kids.avatarOwl' => 'Coruja',
			'kids.avatarBear' => 'Urso',
			'kids.continueAdventure' => 'Continue a aventura',
			'kids.freshStories' => 'Novas histórias para descobrir',
			'kids.yourMovies' => 'Favoritos da hora do cinema',
			'kids.yourShows' => 'Mais um episódio',
			'kids.emptyHint' => 'Novas aventuras aparecerão aqui quando seu servidor tiver títulos com classificação etária permitida.',
			'kids.title' => 'Luroka para crianças',
			'kids.addProfile' => 'Adicionar perfil infantil',
			'kids.parentalControls' => 'Controles parentais',
			'kids.parentPin' => 'PIN dos pais',
			'kids.setParentPin' => 'Definir PIN dos pais',
			'kids.changeParentPin' => 'Alterar PIN dos pais',
			'kids.pinExplain' => 'Este PIN protege os perfis adultos e o controlo parental neste dispositivo.',
			'kids.name' => 'Nome da criança',
			'kids.ageGroup' => 'Classificação etária permitida',
			'kids.allAges' => 'Todas as idades · G, TV-Y, TV-G, U',
			'kids.age7' => 'Até 7 · também PG, TV-PG, TV-Y7',
			'kids.age12' => 'Até 12 · também 12 e 12A',
			'kids.age16' => 'Até 16 · também PG-13, TV-14, 15 e 16',
			'kids.ratingExplain' => 'Títulos acima do limite de idade e classificações não reconhecidas ficam ocultos. Os títulos sem classificação ficam ocultos, a menos que você os permita abaixo. Episódios sem classificação podem herdar uma classificação de série aprovada. As classificações dependem dos metadados do seu servidor.',
			'kids.theme' => 'Aparência infantil',
			'kids.themeExplain' => 'Use um tema colorido quando este perfil estiver ativo.',
			'kids.sharedLogin' => 'Usa o login do servidor existente. O progresso e o status assistido de Plex/Emby permanecem compartilhados. Restrições e perfis infantis são armazenados neste dispositivo.',
			'kids.hideWatched' => 'Ocultar a visualização das crianças em Continuar assistindo',
			'kids.hideExplain' => 'Oculte filmes e séries inteiras reproduzidas por perfis infantis neste dispositivo. Isso não os remove da sua biblioteca nem altera o histórico do servidor.',
			'kids.clearHistory' => 'Redefinir as exclusões de visualização das crianças',
			'kids.historyReset' => 'Redefinição das exclusões de visualização para crianças',
			'kids.blocked' => 'Este título não está disponível neste perfil infantil.',
			'kids.switchProfile' => 'Mudar perfil',
			'kids.manageFromAdult' => 'Mude para um perfil adulto para gerenciar as configurações.',
			_ => null,
		} ?? switch (path) {
			'kids.noConnections' => 'Conecte um servidor ao seu perfil adulto antes de adicionar um perfil infantil.',
			'kids.created' => 'Perfil infantil criado',
			'kids.updated' => 'Perfil infantil atualizado',
			'kids.saveFailed' => 'Não foi possível salvar o controle dos pais. Por favor, tente novamente.',
			'kids.kidsBadge' => 'Crianças',
			'lurokaDiscovery.title' => 'Descobrir',
			'lurokaDiscovery.chooseLibraryHint' => 'Escolha uma biblioteca para explorar',
			'lurokaDiscovery.chooseCopyHint' => 'Disponível em várias bibliotecas. Escolha sua cópia preferida.',
			'lurokaDiscovery.weeklyMovies' => 'Filmes em alta esta semana · TMDb',
			'lurokaDiscovery.weeklyShows' => 'Programas populares desta semana · TMDb',
			'lurokaDiscovery.weeklyLibrary' => 'Tendências desta semana · Na sua biblioteca',
			'lurokaDiscovery.popularLibrary' => 'Popular agora · Na sua biblioteca · Cinemeta',
			'lurokaDiscovery.publicFeedError' => 'A descoberta do Cinemameta não está disponível. Por favor, tente novamente.',
			'lurokaDiscovery.oscars' => 'Oscar · Vencedores de melhor filme',
			'lurokaDiscovery.imdb100' => 'IMDb Os 100 melhores filmes · Instantâneo de setembro de 2026',
			'lurokaDiscovery.imdbTv100' => 'IMDb Top 100 programas · Instantâneo de setembro de 2026',
			'lurokaDiscovery.emmyComedy' => 'Emmys · Vencedores de séries de comédia · 1971–2026',
			'lurokaDiscovery.emmys' => 'Emmys · Vencedores de séries dramáticas · 1966–2026',
			'lurokaDiscovery.bafta' => 'BAFTA · Vencedores de melhor filme',
			'lurokaDiscovery.cannes' => 'Cannes · Vencedores da Palma de Ouro',
			'lurokaDiscovery.awardsNote' => 'As coleções de prêmios incluem a história do Oscar de Melhor Filme, vencedores do Emmy de drama/comédia e seleções ampliadas do BAFTA/Cannes. Títulos vencedores repetidos aparecem uma vez. A associação usa históricos de categorias de prêmios e fatos do Wikidata. IMDb As 100 principais listas de filmes/programas preservam instantâneos do gráfico de setembro de 2026 de mmdju/imdb-top250-api. Somente correspondências em suas bibliotecas on-line visíveis são exibidas; o tamanho da coleção depende da disponibilidade da biblioteca.',
			'lurokaDiscovery.attribution' => 'Listas públicas de popularidade, metadados e classificações IMDb são fornecidas pela Cinemeta; suas listas populares não são gráficos de visualização semanal. Este produto usa TMDB API, mas não é endossado ou certificado por TMDB. As tendências semanais opcionais do TMDb refletem o interesse do TMDb, não a visualização dos números. As pontuações mantêm seus rótulos de origem.',
			'lurokaDiscovery.tmdbSettings' => 'Fontes de descoberta',
			'lurokaDiscovery.setupDescription' => 'A descoberta do Cinemeta funciona imediatamente sem uma conta: filmes e programas populares, classificações IMDb e vencedores de prêmios. Opcionalmente, conecte TMDb para tendências semanais usando uma chave API ou token de acesso de leitura API em themoviedb.org/settings/api. Sua credencial está armazenada neste dispositivo.',
			'lurokaDiscovery.apiKey' => 'Chave TMDb API/token de acesso de leitura',
			'lurokaDiscovery.connect' => 'Conecte TMDb',
			'lurokaDiscovery.connecting' => 'Conectando…',
			'lurokaDiscovery.connected' => 'TMDb conectado · Tendências semanais e prêmios habilitados',
			'lurokaDiscovery.builtInKeyNote' => 'Executando na chave TMDb compartilhada integrada do Luroka. Adicione sua própria chave gratuita abaixo para limites de taxa dedicados e controle total.',
			'lurokaDiscovery.disconnect' => 'Desconecte TMDb',
			'lurokaDiscovery.invalidKey' => 'Não foi possível validar TMDb. Verifique sua credencial e conexão com a Internet.',
			'lurokaDiscovery.feedError' => 'A descoberta TMDb não está disponível. Por favor, tente novamente.',
			'lurokaDiscovery.allTitles' => 'Todos os títulos',
			'lurokaDiscovery.available' => 'Na sua biblioteca',
			'lurokaDiscovery.checking' => 'Verificando suas bibliotecas…',
			'lurokaDiscovery.availabilityUnknown' => 'Algumas bibliotecas não puderam ser verificadas. Experimente refrescar.',
			'lurokaDiscovery.noAvailable' => 'Nenhum título correspondente encontrado nas bibliotecas verificadas.',
			'lurokaDiscovery.sourceInfo' => 'Tendências semanais e vencedores de prêmios selecionados · TMDb',
			'lurokaDiscovery.configure' => 'Configurações de descoberta',
			'app.title' => 'Luroka',
			'appIcon.title' => 'Ícone do aplicativo',
			'appIcon.defaultIcon' => 'Padrão',
			'appIcon.current' => 'Ícone atual',
			'appIcon.locked' => 'Benefício de apoiador',
			'appIcon.lockedHint' => 'Ícones alternativos são uma vantagem do Apoiador.',
			'appIcon.changeFailed' => 'Não foi possível alterar o ícone do aplicativo',
			'appIcon.launcherHint' => 'O novo ícone aparece na tela inicial assim que você sai do Luroka.',
			'appIcon.tvLauncherHint' => 'O novo banner aparece quando você sai de Luroka. Android TV pode continuar mostrando o antigo até que a TV seja reiniciada.',
			'appIcon.names.midnight' => 'Meia-noite',
			'appIcon.names.ember' => 'Brasa',
			'appIcon.names.paper' => 'Papel',
			'appIcon.names.oled' => 'OLED',
			'appIcon.names.line' => 'Linha',
			'appIcon.names.ocean' => 'Oceano',
			'appIcon.names.ultraviolet' => 'Ultravioleta',
			'appIcon.names.matcha' => 'Matchá',
			'appIcon.names.sunset' => 'Pôr do sol',
			'appIcon.names.gold' => 'Ouro',
			'appIcon.names.titanium' => 'Titânio',
			'appIcon.names.glass' => 'Vidro',
			'appIcon.names.crt' => 'CRT',
			'appIcon.names.vhs' => 'VHS',
			'appIcon.names.synthwave' => 'Onda sintética',
			'appIcon.names.pixel' => 'Pixel',
			'appIcon.names.neon' => 'Néon',
			'appIcon.names.sticker' => 'Adesivo',
			'appIcon.names.ticket' => 'Bilhete',
			'appIcon.names.pop' => 'Pop',
			'appIcon.names.strata' => 'Estratos',
			'appIcon.names.facet' => 'Faceta',
			'appIcon.names.tilde' => 'Til',
			'auth.signInWithPlex' => 'Entrar com Plex',
			'auth.showQRCode' => 'Mostrar código QR',
			'auth.authenticate' => 'Autenticar',
			'auth.authenticationTimeout' => 'A autenticação expirou. Tente novamente.',
			'auth.scanQRToSignIn' => 'Leia este código QR para entrar',
			'auth.waitingForAuth' => 'Aguardando autenticação...\nEntre pelo navegador.',
			'auth.useBrowser' => 'Usar navegador',
			'auth.or' => 'ou',
			'auth.connectToMediaBrowser' => ({required Object product}) => 'Conectar ao ${product}',
			'auth.quickConnect' => 'Quick Connect',
			'auth.useQuickConnect' => 'Usar Quick Connect',
			'auth.quickConnectInstructions' => 'Abra o Quick Connect no Jellyfin e insira este código.',
			'auth.quickConnectWaiting' => 'Aguardando aprovação…',
			'auth.quickConnectCancel' => 'Cancelar',
			'auth.quickConnectExpired' => 'Quick Connect expirou. Tente novamente.',
			'auth.localDataRecoveryRequired' => 'O Luroka não conseguiu recuperar com segurança os dados locais de acesso e de reproduções pendentes. Entre novamente.',
			'auth.pinCheckRejected' => 'A verificação do PIN do Plex foi rejeitada',
			'common.cancel' => 'Cancelar',
			'common.save' => 'Salvar',
			'common.close' => 'Fechar',
			'common.clear' => 'Limpar',
			'common.reset' => 'Redefinir',
			'common.later' => 'Depois',
			'common.submit' => 'Enviar',
			'common.confirm' => 'Confirmar',
			'common.retry' => 'Tentar novamente',
			'common.logout' => 'Sair',
			'common.unknown' => 'Desconhecido',
			'common.refresh' => 'Atualizar',
			'common.yes' => 'Sim',
			'common.no' => 'Não',
			'common.delete' => 'Excluir',
			'common.edit' => 'Editar',
			'common.shuffle' => 'Aleatório',
			'common.addTo' => 'Adicionar a...',
			'common.createNew' => 'Criar novo',
			'common.connect' => 'Conectar',
			'common.disconnect' => 'Desconectar',
			'common.play' => 'Reproduzir',
			'common.pause' => 'Pausar',
			'common.resume' => 'Retomar',
			'common.error' => 'Erro',
			'common.search' => 'Buscar',
			'common.home' => 'Início',
			'common.back' => 'Voltar',
			'common.settings' => 'Configurações',
			'common.mute' => 'Silenciar',
			'common.ok' => 'OK',
			'common.off' => 'Desativado',
			'common.options' => 'Opções',
			'common.seasonNumber' => ({required Object number}) => 'Temporada ${number}',
			'common.episodeNumberTitle' => ({required Object number, required Object title}) => 'Episódio ${number} - ${title}',
			'common.chapterNumber' => ({required Object number}) => 'Capítulo ${number}',
			'common.reconnect' => 'Reconectar',
			'common.viewAll' => 'Ver tudo',
			'common.serversUnreachable' => 'Servidores inacessíveis',
			'common.loading' => 'Carregando...',
			'common.fullscreen' => 'Tela cheia',
			'common.exitFullscreen' => 'Sair da tela cheia',
			'common.ratingSource.critic' => 'Críticos',
			'common.ratingSource.audience' => 'Público',
			'common.ratingSource.imdb' => 'IMDb',
			'common.ratingSource.tmdb' => 'TMDB',
			'common.ratingSource.rottenTomatoes' => 'Rotten Tomatoes',
			'common.ratingSource.simkl' => 'Simkl',
			'common.ratingSource.mal' => 'MyAnimeList',
			'common.ratingSource.anilist' => 'AniList',
			'common.ratingSource.trakt' => 'Trakt',
			'common.ratingSource.rottenTomatoesCritic' => 'Críticos do Rotten Tomatoes',
			'common.ratingSource.rottenTomatoesAudience' => 'Público do Rotten Tomatoes',
			'common.ratingSource.metacritic' => 'Metacritic',
			'common.ratingSource.letterboxd' => 'Letterboxd',
			'common.notAvailable' => 'N/D',
			'common.url' => 'URL',
			'common.letterKeys' => 'ABC',
			'common.mediaKind.movie' => 'Filme',
			'common.mediaKind.show' => 'Série',
			'common.mediaKind.season' => 'Temporada',
			'common.mediaKind.episode' => 'Episódio',
			'common.mediaKind.artist' => 'Artista',
			'common.mediaKind.album' => 'Álbum',
			'common.mediaKind.track' => 'Faixa',
			'common.mediaKind.collection' => 'Coleção',
			'common.mediaKind.playlist' => 'Playlist',
			'common.mediaKind.clip' => 'Clipe',
			'common.mediaKind.photo' => 'Foto',
			'common.mediaKind.folder' => 'Pasta',
			'common.stay' => 'Fique',
			'common.exitApp' => 'Sair',
			'common.exitAppBody' => 'Tem certeza de que deseja sair do Luroka?',
			'tvHints.select' => 'Selecione',
			'tvHints.browse' => 'Navegar',
			'tvHints.back' => 'Voltar',
			'screens.licenses' => 'Licenças',
			'screens.switchProfile' => 'Trocar Perfil',
			'screens.subtitleStyling' => 'Estilo de Legendas',
			'screens.mpvConfig' => 'mpv.conf',
			'screens.logs' => 'Logs',
			'mediaExtras.trailers' => 'Reboques',
			'mediaExtras.featurettes' => 'Recursos',
			'mediaExtras.interviews' => 'Entrevistas',
			'mediaExtras.deletedScenes' => 'Cenas excluídas',
			'mediaExtras.behindTheScenes' => 'Nos bastidores',
			'mediaExtras.scenesAndClips' => 'Cenas e clipes',
			'mediaExtras.other' => 'Outros extras',
			'update.available' => 'Atualização disponível',
			'update.versionAvailable' => ({required Object version}) => 'A versão ${version} está disponível',
			'update.currentVersion' => ({required Object version}) => 'Atual: ${version}',
			'update.skipVersion' => 'Pular esta versão',
			'update.viewRelease' => 'Ver Lançamento',
			'update.latestVersion' => 'Você está na versão mais recente',
			'update.checkFailed' => 'Falha ao verificar atualizações',
			'supporter.title' => 'Apoiador Luroka',
			'supporter.intro' => 'Uma compra única que apoia o desenvolvimento do Luroka e desbloqueia extras cosméticos:',
			'supporter.presetThemes' => 'Temas predefinidos',
			'supporter.presetThemesDescription' => 'Brasa, Geleira, Floresta, Ameixa e Papel',
			'supporter.customTheme' => 'Tema personalizado',
			'supporter.customThemeDescription' => 'Escolha você mesmo todas as cores',
			'supporter.appIcons' => 'Ícones de aplicativos',
			'supporter.appIconsDescription' => 'Escolha um ícone Luroka alternativo',
			'supporter.buy' => ({required Object price}) => 'Compre por ${price}',
			'supporter.loadingPrice' => 'Carregando preço...',
			'supporter.restore' => 'Restaurar compras',
			'supporter.pending' => 'Sua compra está aguardando pagamento ou aprovação. Os extras são desbloqueados assim que a loja o conclui.',
			'supporter.thankYouTitle' => 'Obrigado por apoiar Luroka',
			'supporter.thankYouBody' => 'Seus extras de Apoiador estão desbloqueados.',
			'supporter.tileSubtitle' => 'Desbloqueie temas e ícones de aplicativos com uma compra única',
			'supporter.tileSubtitleThemesOnly' => 'Desbloqueie temas com uma compra única',
			'supporter.tileUnlocked' => 'Obrigado pelo seu apoio',
			'supporter.errors.storeUnavailable' => 'As compras não estão disponíveis. Verifique se você está conectado à loja e se as compras são permitidas neste dispositivo.',
			'supporter.errors.productNotFound' => 'A compra de Apoiador não está disponível em sua loja no momento.',
			'supporter.errors.productQueryFailed' => 'Não foi possível carregar o preço. Verifique sua conexão e tente novamente.',
			'supporter.errors.purchaseFailed' => 'A compra não foi concretizada. Tente novamente.',
			'supporter.errors.restoreFailed' => 'Não foi possível entrar em contato com a loja para restaurar sua compra. Tente novamente.',
			'supporter.errors.nothingToRestore' => 'Nenhuma compra de Apoiador foi encontrada para esta conta da loja.',
			'settings.title' => 'Configurações',
			'settings.supportDeveloper' => 'Apoie o Luroka',
			'settings.supportDeveloperDescription' => 'Doe via Liberapay para financiar o desenvolvimento',
			'settings.language' => 'Idioma',
			'settings.theme' => 'Tema',
			'settings.appearance' => 'Aparência',
			'settings.videoPlayback' => 'Reprodução de Vídeo',
			'settings.videoPlaybackDescription' => 'Configurar comportamento de reprodução',
			'settings.advanced' => 'Avançado',
			'settings.episodePosterMode' => 'Estilo do pôster do episódio',
			'settings.seriesPoster' => 'Pôster da série',
			'settings.seasonPoster' => 'Pôster da temporada',
			'settings.episodeThumbnail' => 'Miniatura',
			'settings.homeHeroSize' => 'Tamanho do carrossel',
			'settings.homeHeroSizeSmall' => 'Pequeno',
			'settings.homeHeroSizeMedium' => 'Médio',
			'settings.homeHeroSizeLarge' => 'Grande',
			'settings.secondsLabel' => 'Segundos',
			'settings.minutesLabel' => 'Minutos',
			'settings.secondsShort' => 's',
			'settings.minutesShort' => 'm',
			'settings.durationHint' => ({required Object min, required Object max}) => 'Insira a duração (${min}-${max})',
			'settings.systemTheme' => 'Sistema',
			'settings.lightTheme' => 'Claro',
			'settings.darkTheme' => 'Escuro',
			'settings.oledTheme' => 'OLED',
			'settings.libraryDensity' => 'Densidade da Biblioteca',
			'settings.displayScale' => 'Escala de exibição',
			'settings.compact' => 'Compacto',
			'settings.comfortable' => 'Confortável',
			'settings.gridSpacing' => 'Espaçamento da grade',
			'settings.gridSpacingTight' => 'Compacto',
			'settings.gridSpacingNormal' => 'Normal',
			'settings.gridSpacingSpacious' => 'Espaçoso',
			'settings.tvCornerSpotlightBackdrop' => 'Imagem de destaque no canto',
			'settings.tvCornerSpotlightBackdropDescription' => 'Mostrar a imagem de destaque no canto superior direito em vez de preencher a tela',
			'settings.viewMode' => 'Modo de Visualização',
			'settings.gridView' => 'Grade',
			'settings.listView' => 'Lista',
			'settings.continueWatchingAction' => 'Ação da seção Continuar assistindo',
			'settings.continueWatchingPlay' => 'Reproduzir',
			'settings.continueWatchingDetails' => 'Abrir detalhes',
			'settings.episodeAction' => 'Ação do episódio',
			'settings.episodePlay' => 'Reproduzir',
			'settings.episodeDetails' => 'Abrir detalhes',
			'settings.useGlobalHubs' => 'Usar layout inicial',
			'settings.useGlobalHubsDescription' => 'Mostrar hubs iniciais unificados. Caso contrário, usar recomendações da biblioteca.',
			'settings.showServerNameOnHubs' => 'Mostrar Nome do Servidor nos Hubs',
			'settings.showServerNameOnHubsDescription' => 'Sempre mostrar nomes dos servidores nos títulos dos hubs.',
			'settings.groupLibrariesByServer' => 'Agrupar Bibliotecas por Servidor',
			'settings.groupLibrariesByServerDescription' => 'Agrupar bibliotecas da barra lateral por servidor de mídia.',
			'settings.alwaysKeepSidebarOpen' => 'Manter Barra Lateral Sempre Aberta',
			'settings.alwaysKeepSidebarOpenDescription' => 'A barra lateral fica expandida e a área de conteúdo se ajusta',
			'settings.showUnwatchedCount' => 'Mostrar Contagem de Não Assistidos',
			'settings.showUnwatchedCountDescription' => 'Exibir contagem de episódios não assistidos em séries e temporadas',
			'settings.showWatchedIndicators' => 'Mostrar Indicadores de Assistidos',
			'settings.showWatchedIndicatorsDescription' => 'Exibir uma marca de verificação em filmes, séries e episódios assistidos',
			'settings.showEpisodeNumberOnCards' => 'Mostrar Número do Episódio nos Cards',
			'settings.showEpisodeNumberOnCardsDescription' => 'Mostrar temporada e episódio nos cartões de episódio',
			'settings.showSeasonPostersOnTabs' => 'Mostrar Pôsteres de Temporada nas Abas',
			'settings.showSeasonPostersOnTabsDescription' => 'Mostrar o pôster de cada temporada acima da aba',
			'settings.tvFullCardLayout' => 'Cartões TV completos',
			'settings.tvFullCardLayoutDescription' => 'Usar cartões de TV só com imagem e nomes dos atores sobrepostos',
			'settings.focusGlow' => 'Brilho de foco',
			'settings.focusGlowDescription' => 'Mostrar um brilho suave ao redor do cartão em foco',
			'settings.visualEffects' => 'Efeitos visuais',
			'settings.visualEffectsAuto' => 'Automático',
			'settings.visualEffectsAutoDescription' => 'Reduzir os efeitos automaticamente em dispositivos de baixo consumo',
			'settings.visualEffectsFull' => 'Completos',
			'settings.visualEffectsReduced' => 'Reduzidos',
			'settings.visualEffectsReducedDescription' => 'Menos animações e imagens em menor resolução',
			'settings.hideSpoilers' => 'Ocultar spoilers de episódios não assistidos',
			'settings.hideSpoilersDescription' => 'Desfocar miniaturas e descrições de episódios não assistidos',
			'settings.playerBackend' => 'Mecanismo de reprodução',
			'settings.playerBackendDescription' => 'mpv reproduz mais formatos e habilita mais recursos – recomendado. ExoPlayer ajuda se a reprodução falhar ou falhar neste dispositivo.',
			'settings.exoPlayer' => 'ExoPlayer',
			'settings.mpv' => 'mpv',
			'settings.hardwareDecoding' => 'Decodificação por Hardware',
			'settings.hardwareDecodingDescription' => 'Usar aceleração por hardware quando disponível',
			'settings.playbackBuffer' => 'Buffer de reprodução',
			'settings.playbackBufferAuto' => 'Automático (recomendado)',
			'settings.playbackBufferLarge' => 'Grande',
			'settings.playbackBufferExtraLarge' => 'Extra grande',
			'settings.playbackBufferDescription' => 'Faz buffer extra contra conexões instáveis. Também limitado pelo tamanho do buffer.',
			'settings.defaultQualityTitle' => 'Qualidade padrão',
			'settings.streamingQualityOriginalHint' => 'Reproduz o arquivo exatamente como armazenado — melhor qualidade, usa mais largura de banda',
			'settings.cellularQualityTitle' => 'Qualidade padrão nos dados móveis',
			'settings.cellularQualitySameAsDefault' => 'Igual à qualidade padrão',
			'settings.directPlayCoveredQuality' => 'Reproduzir Vídeos Menores na Qualidade Original',
			'settings.directPlayCoveredQualityDescription' => 'Reproduzir diretamente os vídeos que já estão dentro do limite de qualidade em vez de transcodificá-los',
			'settings.videoCodecs' => 'Codecs de vídeo',
			'settings.videoCodecsDescription' => 'Codecs desmarcados são transcodificados pelo servidor',
			'settings.videoCodecsAlwaysAccepted' => 'Sempre aceito',
			'settings.musicQualityTitle' => 'Qualidade da música',
			'settings.subtitleStyling' => 'Estilo de Legendas',
			'settings.subtitleStylingDescription' => 'Personalizar aparência das legendas',
			'settings.smallSkipDuration' => 'Duração do Avanço Curto',
			'settings.largeSkipDuration' => 'Duração do Avanço Longo',
			'settings.rewindOnResume' => 'Rebobinar ao retomar',
			'settings.secondsUnit' => ({required Object seconds}) => '${seconds} segundos',
			'settings.defaultSleepTimer' => 'Temporizador de suspensão padrão',
			'settings.minutesUnit' => ({required Object minutes}) => '${minutes} minutos',
			'settings.rememberTrackSelections' => 'Lembrar seleção de faixas por série/filme',
			'settings.rememberTrackSelectionsDescription' => 'Lembrar escolhas de áudio e legendas por título',
			'settings.rememberTrackSelectionsBackendRule' => 'O Plex salva cada escolha no servidor por arquivo; o Jellyfin também ativa a opção Lembrar seleções da conta; o Emby não é compatível',
			'settings.followServerTrackSelections' => 'Usar a seleção de faixas do servidor por episódio',
			'settings.followServerTrackSelectionsDescription' => 'Ao mudar de episódio, aplicar o áudio e as legendas selecionados no servidor em vez de manter a escolha atual',
			'settings.resumeMusicOnLaunch' => 'Lembrar a sessão de música',
			'settings.resumeMusicOnLaunchDescription' => 'Ao iniciar a aplicação, reabrir a última música em pausa onde parou',
			'settings.showChapterMarkersOnTimeline' => 'Mostrar marcadores de capítulos na barra de reprodução',
			'settings.showChapterMarkersOnTimelineDescription' => 'Segmentar a barra de reprodução nos limites dos capítulos',
			'settings.specialsOrdering' => 'Especiais na ordem dos episódios',
			'settings.specialsOrderingDescription' => 'Onde os especiais são reproduzidos na ordem de exibição de uma série',
			'settings.specialsOrderingServer' => 'Seguir a ordem do servidor',
			'settings.specialsOrderingAirDate' => 'Intercalar pela data de exibição',
			'settings.specialsOrderingLast' => 'Após as temporadas regulares',
			'settings.clickVideoTogglesPlayback' => 'Clicar no vídeo para alternar reprodução/pausa',
			'settings.clickVideoTogglesPlaybackDescription' => 'Clicar no vídeo para reproduzir ou pausar em vez de mostrar os controles.',
			'settings.videoPlayerControls' => 'Controles do reprodutor de vídeo',
			'settings.keyboardShortcuts' => 'Atalhos de Teclado',
			'settings.keyboardShortcutsDescription' => 'Personalizar atalhos de teclado',
			'settings.videoPlayerNavigation' => 'Navegação do reprodutor de vídeo',
			'settings.videoPlayerNavigationDescription' => 'Usar as teclas de seta para navegar pelos controles do reprodutor',
			'settings.watchTogetherRelay' => 'Servidor de retransmissão do Assistir Juntos',
			'settings.watchTogetherRelayDescription' => 'Retransmissões do Public Open Watch Party, a menos que você defina o seu próprio',
			'settings.watchTogetherRelayHint' => 'https://minha-retransmissao.exemplo.com.br',
			'settings.watchTogetherRelayInvalid' => 'Insira uma URL base de retransmissão HTTP ou HTTPS válida.',
			'settings.crashReporting' => 'Relatório de Erros',
			'settings.crashReportingDescription' => 'Enviar relatórios de erros para ajudar a melhorar o app',
			'settings.debugLogging' => 'Log de Depuração',
			'settings.debugLoggingDescription' => 'Ativar log detalhado para solução de problemas',
			'settings.viewLogs' => 'Ver Logs',
			'settings.viewLogsDescription' => 'Ver logs do app',
			'settings.clearImageCache' => 'Limpar cache de imagens',
			'settings.clearImageCacheDescription' => 'Limpar artes e miniaturas em cache. As imagens podem carregar mais devagar até serem baixadas novamente.',
			'settings.clearImageCacheSuccess' => 'Cache de imagens limpo com sucesso',
			'settings.resetSettings' => 'Redefinir Configurações',
			'settings.resetSettingsDescription' => 'Restaurar configurações padrão. Não pode ser desfeito.',
			'settings.resetSettingsSuccess' => 'Configurações redefinidas com sucesso',
			'settings.backup' => 'Backup',
			'settings.exportSettings' => 'Exportar Configurações',
			'settings.exportSettingsDescription' => 'Salvar suas preferências em um arquivo',
			'settings.exportSettingsSuccess' => 'Configurações exportadas',
			'settings.importSettings' => 'Importar Configurações',
			'settings.importSettingsDescription' => 'Restaurar preferências a partir de um arquivo',
			'settings.importSettingsConfirm' => 'Isso substituirá suas configurações atuais. Continuar?',
			'settings.importSettingsSuccess' => 'Configurações importadas',
			'settings.importSettingsInvalidFile' => 'Este arquivo não é uma exportação válida do Luroka',
			'settings.importSettingsNoUser' => 'Entre na conta antes de importar as configurações',
			'settings.shortcutsReset' => 'Atalhos redefinidos para o padrão',
			'settings.resetShortcutsConfirm' => 'Isso substituirá seus atalhos personalizados pelos padrões. Continuar?',
			'settings.about' => 'Sobre',
			'settings.aboutDescription' => 'Informações do app e licenças',
			'settings.updates' => 'Atualizações',
			'settings.updateAvailable' => 'Atualização Disponível',
			'settings.checkForUpdates' => 'Verificar Atualizações',
			'settings.autoCheckUpdatesOnStartup' => 'Verificar atualizações automaticamente ao iniciar',
			'settings.autoCheckUpdatesOnStartupDescription' => 'Notificar ao iniciar quando houver atualização disponível',
			'settings.validationErrorEnterNumber' => 'Insira um número válido',
			'settings.validationErrorDuration' => ({required Object min, required Object max, required Object unit}) => 'A duração deve estar entre ${min} e ${max} ${unit}',
			'settings.shortcutAlreadyAssigned' => ({required Object action}) => 'Atalho já atribuído a ${action}',
			'settings.shortcutUpdated' => ({required Object action}) => 'Atalho atualizado para ${action}',
			'settings.saveFailed' => 'Não foi possível salvar as alterações. Tente novamente.',
			'settings.autoPlayAndSkip' => 'Reprodução automática e pulos',
			'settings.autoPlayNextEpisode' => 'Reproduzir próximo episódio automaticamente',
			'settings.autoPlayNextEpisodeDescription' => 'Iniciar o próximo episódio automaticamente quando um terminar',
			'settings.shuffleStartsFromBeginning' => 'Reprodução Aleatória Começa do Início',
			'settings.shuffleStartsFromBeginningDescription' => 'Iniciar cada episódio do início na reprodução aleatória em vez de retomá-lo',
			'settings.playNextCountdown' => 'Contagem regressiva do próximo episódio',
			'settings.playNextCountdownImmediate' => 'Reproduzir imediatamente',
			'settings.skipIntroMode' => 'Pular Abertura',
			'settings.skipIntroModeOffDescription' => 'Reproduzir as aberturas normalmente sem botão de pulo',
			'settings.skipIntroModeButtonDescription' => 'Mostrar um botão de pulo quando uma abertura começar',
			'settings.skipIntroModeAutoDescription' => 'Pular as aberturas automaticamente após o atraso abaixo',
			'settings.skipCreditsMode' => 'Pular Créditos',
			'settings.skipCreditsModeOffDescription' => 'Reproduzir os créditos normalmente sem botão de pulo',
			'settings.skipCreditsModeButtonDescription' => 'Mostrar um botão de pulo quando os créditos começarem',
			'settings.skipCreditsModeAutoDescription' => 'Pular os créditos automaticamente e reproduzir o próximo episódio',
			'settings.skipMarkerModeOff' => 'Desativado',
			'settings.skipMarkerModeButton' => 'Mostrar botão',
			'settings.skipMarkerModeAuto' => 'Automático',
			'settings.forceSkipMarkerFallback' => 'Forçar marcadores alternativos',
			'settings.forceSkipMarkerFallbackDescription' => 'Usar padrões de títulos de capítulos mesmo quando o Plex tiver marcadores',
			'settings.autoSkipDelay' => 'Atraso para pular automaticamente',
			'settings.autoSkipDelayDescription' => ({required Object seconds}) => 'Aguardar ${seconds} segundos antes de pular automaticamente',
			'settings.introPattern' => 'Padrão do marcador de introdução',
			'settings.introPatternDescription' => 'Expressão regular que identifica marcadores de introdução nos títulos dos capítulos',
			'settings.creditsPattern' => 'Padrão do marcador de créditos',
			'settings.creditsPatternDescription' => 'Expressão regular que identifica marcadores de créditos nos títulos dos capítulos',
			'settings.invalidRegex' => 'Expressão regular inválida',
			'settings.regex' => 'Expressão regular',
			'settings.downloads' => 'Downloads',
			'settings.downloadLocationDescription' => 'Escolha onde armazenar conteúdo baixado',
			'settings.downloadLocationDefault' => 'Padrão (Armazenamento do App)',
			'settings.downloadLocationCustom' => 'Local Personalizado',
			'settings.selectFolder' => 'Selecionar Pasta',
			'settings.resetToDefault' => 'Redefinir para Padrão',
			'settings.currentPath' => ({required Object path}) => 'Atual: ${path}',
			'settings.downloadLocationChanged' => 'Local de download alterado',
			'settings.downloadLocationReset' => 'Local de download redefinido para padrão',
			'settings.downloadLocationInvalid' => 'A pasta selecionada não permite gravação',
			'settings.downloadLocationPickerUnavailable' => 'A seleção de pasta não está disponível neste dispositivo',
			'settings.downloadOnWifiOnly' => 'Baixar apenas por Wi-Fi',
			'settings.downloadOnWifiOnlyDescription' => 'Impedir downloads ao usar dados móveis',
			'settings.downloadWifiScope' => 'Aplica-se a todos os perfis e downloads neste dispositivo.',
			'settings.autoRemoveWatchedDownloads' => 'Remover automaticamente os downloads assistidos',
			'settings.autoRemoveWatchedDownloadsDescription' => 'Excluir automaticamente os downloads assistidos',
			'settings.cellularDownloadBlocked' => 'Os downloads estão bloqueados nos dados móveis. Use Wi-Fi ou altere a configuração.',
			'settings.maxVolume' => 'Volume Máximo',
			'settings.maxVolumeDescription' => 'Permitir aumento de volume acima de 100% para mídias silenciosas',
			'settings.maxVolumePercent' => ({required Object percent}) => '${percent}%',
			'settings.discordRichPresence' => 'Status de atividade do Discord',
			'settings.discordRichPresenceDescription' => 'Mostrar o que você está assistindo no Discord',
			'settings.services' => 'Serviços',
			'settings.servicesDescription' => 'Conecte Trakt, MyAnimeList, Seerr e mais',
			'settings.manageLibrariesDescription' => 'Reordene e oculte bibliotecas',
			'settings.companionRemoteServer' => 'Servidor de controle remoto',
			'settings.companionRemoteServerDescription' => 'Permitir que dispositivos móveis na sua rede controlem este app',
			'settings.companionRemoteServerStartFailed' => 'Não foi possível iniciar o servidor de controle remoto',
			'settings.companionRemoteServerStopFailed' => 'Não foi possível parar o servidor de controle remoto',
			'settings.autoPip' => 'Picture-in-picture automático',
			'settings.autoPipDescription' => 'Entrar automaticamente no modo picture-in-picture ao sair do app durante a reprodução',
			'settings.matchContentFrameRate' => 'Ajustar à taxa de quadros do conteúdo',
			'settings.matchContentFrameRateDescription' => 'Ajustar a taxa de atualização da tela ao conteúdo de vídeo',
			'settings.matchContentResolution' => 'Ajustar à resolução do conteúdo',
			'settings.matchContentResolutionDescription' => 'Muda a tela para a resolução nativa do vídeo para que a TV cuide do upscaling. Menus e legendas também são ampliados durante a reprodução',
			'settings.matchRefreshRate' => 'Ajustar à taxa de atualização',
			'settings.matchRefreshRateDescription' => 'Ajustar a taxa de atualização da tela em tela cheia',
			'settings.matchDynamicRange' => 'Ajustar à faixa dinâmica',
			'settings.matchDynamicRangeDescription' => 'Ativar HDR para conteúdo HDR e depois voltar para SDR',
			'settings.displaySwitchDelay' => 'Atraso na troca do modo de exibição',
			'settings.tunneledPlayback' => 'Reprodução em túnel',
			'settings.tunneledPlaybackDescription' => 'Usar o tunelamento de vídeo. Desative se o vídeo ficar preto ao reproduzir em HDR ou o movimento travar.',
			'settings.audioPassthrough' => 'Passagem direta de áudio',
			'settings.audioPassthroughDescription' => 'Enviar o áudio Dolby/DTS ao receptor ou à TV sem recodificação, preservando o som surround. Desative se não houver som.',
			'settings.audioPassthroughDescriptionApple' => 'Usar o decodificador Dolby nativo da Apple para Dolby Digital Plus, incluindo Atmos. DTS e TrueHD continuam sendo reproduzidos como PCM multicanal. Desative se não houver som.',
			'settings.audioPassthroughDescriptionAppleSpatial' => 'Use o decodificador Dolby nativo da Apple para Dolby Digital Plus, incluindo Atmos. No iOS, iPadOS e tvOS 26 ou posterior, TrueHD Atmos e DTS:X são reproduzidos como áudio espacial. Outras faixas DTS e TrueHD são reproduzidas como PCM multicanal. Desligue se não tiver som.',
			'settings.audioPassthroughOverriddenByNormalization' => 'Desativada enquanto a normalização de intensidade sonora estiver ativa',
			'settings.audioChannelLimit' => 'Canais de áudio',
			'settings.audioChannelLimitDescription' => 'Misture áudio decodificado para alto-falantes, fones de ouvido ou configurações HDMI que não podem reproduzir todos os canais',
			'settings.audioChannelLimitOriginal' => 'Originais',
			'settings.audioChannelLimitOriginalDescription' => 'Reproduza todos os canais da faixa',
			'settings.audioChannelLimitSurround51' => 'Até 5,1',
			'settings.audioChannelLimitSurround51Description' => 'Misture 7.1 até 5.1 para TVs e receptores que utilizam apenas 5.1 PCM. A passagem não é afetada.',
			'settings.audioChannelLimitStereo' => 'Estéreo',
			'settings.audioChannelLimitStereoDescription' => 'Misture até dois canais para alto-falantes estéreo ou fones de ouvido. Desativa a passagem.',
			'settings.downmixCenterBoost' => 'Reforço do canal central',
			'settings.downmixCenterBoostValue' => ({required Object db}) => '${db} dB',
			'settings.downmixCenterBoostLabel' => 'Reforço (dB)',
			'settings.downmixCenterBoostShort' => 'dB',
			'settings.audioDownmixNormalize' => 'Normalizar volume na conversão para estéreo',
			'settings.audioDownmixNormalizeDescription' => 'Reduzir o volume da mixagem para evitar saturação. Desative para manter o volume original, que pode distorcer em cenas muito altas.',
			'settings.dvConversionMode' => 'Conversão Dolby Vision',
			'settings.dvConversionModeDescription' => 'Escolha como os arquivos Dolby Vision Profile 7 são tratados.',
			'settings.dvConversionAuto' => 'Automático',
			'settings.dvConversionNative' => 'Nativo / desativado',
			'settings.dvConversionDv81' => 'P7 → P8.1',
			'settings.dvConversionHevcStrip' => 'P7 → HEVC',
			'settings.dvConversionAutoDescription' => 'Usar a detecção de recursos do dispositivo e o comportamento alternativo padrão',
			'settings.dvConversionNativeDescription' => 'Forçar DV7 nativo e impedir uma nova tentativa de conversão de DV',
			'settings.dvConversionDv81Description' => 'Forçar a conversão RPU integrada para Dolby Vision perfil 8.1',
			'settings.dvConversionHevcStripDescription' => 'Remover as camadas RPU/EL do Dolby Vision e apresentar HEVC sem Dolby Vision',
			'settings.disableDolbyVision' => 'Desativar Dolby Vision',
			'settings.disableDolbyVisionDescription' => 'Reproduzir a camada HDR10 ou HLG do arquivo em vez de Dolby Vision, quando houver',
			'settings.hdrSdrConversion' => 'Conversão de HDR para SDR',
			'settings.hdrSdrConversionDescription' => 'Escolha o que converte vídeos HDR quando a tela não consegue exibir HDR.',
			'settings.hdrSdrConversionAuto' => 'Automático',
			'settings.hdrSdrConversionAutoDescription' => 'Dispositivo no Android 9 ou posterior, reprodutor em versões anteriores',
			'settings.hdrSdrConversionDevice' => 'Dispositivo',
			'settings.hdrSdrConversionDeviceDescription' => 'O hardware de vídeo do dispositivo faz a conversão. Mais rápido, mas as cores dependem do dispositivo',
			'settings.hdrSdrConversionPlayer' => 'Reprodutor',
			'settings.hdrSdrConversionPlayerDescription' => 'O reprodutor faz a conversão. Cores consistentes, mas o 4K pode travar em TV boxes mais simples',
			'settings.deinterlace' => 'Desentrelaçamento',
			'settings.deinterlaceDescription' => 'Remover artefatos de pente de vídeo entrelaçado (apenas no reprodutor mpv)',
			'settings.deinterlaceOff' => 'Desligado',
			'settings.deinterlaceOffDescription' => 'Mostrar vídeo entrelaçado à medida que é decodificado',
			'settings.deinterlaceVideo' => 'Vídeo',
			'settings.deinterlaceVideoDescription' => 'Transforme cada campo em um quadro completo. Para gravação de vídeo para TV, como esportes, notícias e shows',
			'settings.deinterlaceFilm' => 'Filme',
			'settings.deinterlaceFilmDescription' => 'Restaure os quadros originais do filme e da animação telecineados para 29,97 fps, comum em DVDs NTSC. Vídeo filmado para TV gagueja. TV ao vivo usa vídeo',
			'settings.requireProfileSelectionOnOpen' => 'Pedir perfil ao abrir o app',
			'settings.requireProfileSelectionOnOpenDescription' => 'Mostrar a seleção de perfil sempre que o app for aberto',
			'settings.forceTvMode' => 'Forçar modo TV',
			'settings.forceTvModeKeepTitle' => 'Manter o layout da TV?',
			'settings.forceTvModeKeepBody' => ({required Object seconds}) => 'O layout da TV é projetado para controles remotos. Revertendo para o layout normal em ${seconds} s.',
			'settings.forceTvModeKeepConfirm' => 'Mantenha o layout da TV',
			'settings.forceTvModeReverted' => 'Layout da TV revertido',
			'settings.forceTvModeDescription' => 'Forçar o layout de TV em dispositivos sem detecção automática. Requer reiniciar o app.',
			'settings.startInFullscreen' => 'Iniciar em tela cheia',
			'settings.startInFullscreenDescription' => 'Abrir o Luroka em modo de tela cheia ao iniciar',
			'settings.exitFullscreenOnPlayerClose' => 'Sair da tela cheia ao fechar o reprodutor',
			'settings.exitFullscreenOnPlayerCloseDescription' => 'Sair automaticamente da tela cheia ao fechar o reprodutor de vídeo',
			'settings.autoHidePerformanceOverlay' => 'Ocultar automaticamente o painel de desempenho',
			'settings.autoHidePerformanceOverlayDescription' => 'Esmaecer o painel de desempenho junto com os controles de reprodução',
			'settings.showNavBarLabels' => 'Mostrar Rótulos da Barra de Navegação',
			'settings.showNavBarLabelsDescription' => 'Exibir rótulos de texto sob os ícones da barra de navegação',
			'settings.startupSection' => 'Seção inicial',
			'settings.showExploreTab' => 'Mostrar aba Explorar',
			'settings.showExploreTabDescription' => 'Exibir a aba Explorar com conteúdo do Plex Discover e dos rastreadores conectados',
			'settings.liveTvDefaultFavorites' => 'Canais favoritos por padrão',
			'settings.liveTvDefaultFavoritesDescription' => 'Mostrar apenas os canais favoritos ao abrir a TV ao vivo',
			'settings.general' => 'Geral',
			'settings.generalDescription' => 'Idioma, inicialização e comportamento da janela',
			'settings.languageAndRegion' => 'Idioma e Região',
			'settings.startup' => 'Inicialização',
			'settings.display' => 'Tela',
			_ => null,
		} ?? switch (path) {
			'settings.libraryAndCards' => 'Biblioteca e Cards',
			'settings.homeScreen' => 'Tela inicial',
			'settings.navigation' => 'Navegação',
			'settings.window' => 'Janela',
			'settings.liveTv' => 'TV ao Vivo',
			'settings.player' => 'Reprodutor',
			'settings.videoAndDisplay' => 'Vídeo e Tela',
			'settings.audio' => 'Áudio',
			'settings.quality' => 'Qualidade',
			'settings.subtitles' => 'Legendas',
			'settings.seekAndTiming' => 'Busca e tempo',
			'settings.behavior' => 'Comportamento',
			'settings.gestures' => 'Gestos',
			'settings.gestureBrightnessSwipe' => 'Deslize para brilho',
			'settings.gestureBrightnessSwipeDescription' => 'Deslize para cima ou para baixo na borda esquerda para ajustar o brilho',
			'settings.gestureVolumeSwipe' => 'Deslize para volume',
			'settings.gestureVolumeSwipeDescription' => 'Deslize para cima ou para baixo na borda direita para ajustar o volume',
			'settings.gesturePinchToZoom' => 'Pinça para zoom',
			'settings.gesturePinchToZoomDescription' => 'Pince o vídeo para ampliar ou reduzir',
			'settings.rememberBrightnessLevel' => 'Lembrar Nível de Brilho',
			'settings.rememberBrightnessLevelDescription' => 'Iniciar a reprodução com o brilho definido pelo último deslize',
			'settings.controls' => 'Controles',
			'settings.rememberPlayerChanges' => 'Lembrar alterações do reprodutor',
			'settings.rememberPlayerChangesDescription' => 'Onde uma alteração feita durante a reprodução é salva e reaplicada',
			'settings.scopePlaybackSpeed' => 'Velocidade de reprodução',
			'settings.scopeShaderPreset' => 'Predefinição de shader',
			'settings.scopeAspectRatio' => 'Proporção da tela',
			'settings.scopeSyncOffsets' => 'Sincronização de áudio e legendas',
			'settings.playerScopeOff' => 'Não salvar',
			'settings.playerScopeGlobal' => 'Em todos os lugares',
			'settings.playerScopeLibrary' => 'Por biblioteca',
			'settings.playerScopeTitle' => 'Por série ou filme',
			'settings.exportDialogTitle' => 'Exportar configurações do Luroka',
			'settings.velvetHourTheme' => 'Hora de veludo',
			'themeEditor.builtIn' => 'Integrado',
			'themeEditor.presets' => 'Predefinições',
			'themeEditor.custom' => 'Personalizado',
			'themeEditor.customEmpty' => 'Ainda não criado',
			'themeEditor.editCustom' => 'Editar tema personalizado',
			'themeEditor.editCustomDescription' => 'Escolha você mesmo cada cor',
			'themeEditor.locked' => 'Desbloquear com apoiador',
			'themeEditor.savedLocked' => 'Salvo — desbloqueia com Apoiador',
			'themeEditor.title' => 'Tema personalizado',
			'themeEditor.startFrom' => 'Começar de',
			'themeEditor.startFromDescription' => 'Copie todas as cores de outro tema',
			'themeEditor.colors' => 'Cores',
			'themeEditor.preview' => 'Visualização',
			'themeEditor.slots.bg' => 'Plano de fundo',
			'themeEditor.slots.surface' => 'Superfície',
			'themeEditor.slots.outline' => 'Esboço',
			'themeEditor.slots.text' => 'Texto',
			'themeEditor.slots.textMuted' => 'Texto secundário',
			'themeEditor.slots.accent' => 'Sotaque',
			'themeEditor.opacity' => 'Opacidade',
			'themeEditor.hexHint' => '#RRGGBB ou #AARRGGBB',
			'themeEditor.fromOtherThemes' => 'De outros temas',
			'themeEditor.swatchLabel' => ({required Object theme, required Object color}) => '${theme} ${color}',
			'themeEditor.contrast.textOnBg' => 'Texto em segundo plano',
			'themeEditor.contrast.textOnSurface' => 'Texto na superfície',
			'themeEditor.contrast.textMutedOnBg' => 'Texto secundário em segundo plano',
			'themeEditor.contrast.textMutedOnSurface' => 'Texto secundário na superfície',
			'themeEditor.contrast.accentOnBg' => 'Destaque no fundo',
			'themeEditor.contrast.accentOnSurface' => 'Destaque na superfície',
			'themeEditor.contrast.labelOnAccent' => 'Etiqueta do botão com destaque',
			'themeEditor.lowContrast' => ({required Object pair, required Object ratio, required Object minimum}) => '${pair}: ${ratio}:1, abaixo do recomendado ${minimum}:1',
			'themeEditor.discardTitle' => 'Descartar alterações?',
			'themeEditor.discardMessage' => 'Suas alterações de cores não salvas serão perdidas.',
			'themeEditor.discard' => 'Descartar',
			'themeEditor.previewCardTitle' => ({required Object number}) => 'Episódio ${number}',
			'themeEditor.previewCardSubtitle' => ({required Object minutes}) => '${minutes} minutos restantes',
			'themeEditor.previewSwitch' => 'Reprodução automática',
			'themeEditor.previewMutedText' => 'O texto secundário é assim',
			'seriesBrowser.oneEpisode' => '1 episódio',
			'seriesBrowser.watchedCount' => ({required Object count}) => '${count} assistido',
			'seriesBrowser.episodeCount' => ({required Object count}) => 'Episódios ${count}',
			'seriesBrowser.episodesFor' => ({required Object season}) => '${season} · Episódios',
			'seriesBrowser.enterHint' => 'Selecione: temporada aberta · ↓: episódios',
			'titlePage.genre' => 'Gênero',
			'titlePage.remaining' => ({required Object time}) => '${time} restante',
			'titlePage.continueEpisode' => ({required Object season, required Object episode}) => 'Continuar S${season} E${episode}',
			'titlePage.watchlist' => 'Lista de observação',
			'titlePage.more' => 'Mais',
			'tvMenus.appearanceDescription' => 'Tema, margens da tela e pôsteres',
			'lurokaPlayer.title' => 'Configurações do jogador',
			'lurokaPlayer.watch' => 'Assistir',
			'lurokaPlayer.watchDescription' => 'Defina o ritmo, relaxe e decida o que acontecerá a seguir.',
			'lurokaPlayer.picture' => 'Configurações de imagem',
			'lurokaPlayer.pictureDescription' => 'Zoom, HDR e processamento de vídeo',
			'lurokaPlayer.sound' => 'Áudio e legendas',
			'lurokaPlayer.audioSettings' => 'Configurações de áudio',
			'lurokaPlayer.soundDescription' => 'Tempo, volume e saída de áudio',
			'lurokaPlayer.chooseTracks' => 'Escolha idiomas e faixas de legendas',
			'lurokaPlayer.tools' => 'Avançado',
			'lurokaPlayer.toolsDescription' => 'Informações de reprodução e diagnóstico',
			'lurokaPlayer.preferences' => 'Preferências de reprodução',
			'lurokaPlayer.preferencesDescription' => 'Seu cinema, seus padrões. Comece com som e legendas e, em seguida, ajuste a transmissão e sua tela.',
			'lurokaPlayer.streamPreferences' => 'Qualidade de transmissão',
			'lurokaPlayer.displayPreferences' => 'Exibição',
			'lurokaPlayer.enginePreferences' => 'Opções avançadas de jogador',
			'lurokaPlayer.seekPreferences' => 'Procurando',
			'lurokaPlayer.watchPreferences' => 'Reprodução automática e salto',
			'lurokaPlayer.rememberPreferences' => 'Lembre-se de preferências',
			'lurokaSettings.quickSetup' => 'Configuração rápida',
			'lurokaSettings.quickSetupDescription' => 'Comece com o essencial: navegação mais suave na TV, ajuste confortável da tela, layout da sua página inicial e preferências de reprodução.',
			'lurokaSettings.experience' => 'Sua experiência',
			'lurokaSettings.experienceDescription' => 'Faça com que o Luroka pareça certo: aparência, idiomas, reprodução, bibliotecas e tempo de tela.',
			'lurokaSettings.remoteHint' => '↑ ↓ Navegar pelas categorias · → / Selecionar Opções abertas · ← Retornar às categorias',
			'playerChrome.browse' => 'Capítulos e fila',
			'playerChrome.backToPlayback' => 'Voltar à reprodução',
			'playerChrome.nowPlaying' => 'AGORA JOGANDO',
			'playerChrome.options' => 'OPÇÕES DE JOGADOR',
			'tvLayout.screenMargins' => 'Margens da tela da TV',
			'tvLayout.screenMarginsDescription' => 'Reduza as bordas do aplicativo se sua TV cortar parte da imagem',
			'tvLayout.screenMarginsDefault' => '0% (padrão)',
			'studios.checkingCopies' => 'Verificando outras bibliotecas… Escolha uma cópia conhecida a qualquer momento.',
			'studios.incompleteCopies' => 'Algumas bibliotecas não puderam ser verificadas. Escolha uma cópia conhecida ou cancele e tente novamente.',
			'studios.partialFavorites' => 'Não foi possível carregar alguns favoritos. Selecione Atualizar para tentar novamente.',
			'studios.copyLookupFailedTitle' => 'Não foi possível verificar todas as cópias',
			'studios.copyLookupFailedMessage' => 'Algumas bibliotecas não responderam. Você pode abrir uma das cópias já encontradas ou cancelar e tentar novamente.',
			'studios.openKnownCopies' => 'Mostrar cópias conhecidas',
			'studios.browseAll' => 'Navegar por tudo',
			'studios.titleCount' => ({required Object count}) => 'Títulos ${count}',
			'studios.topRated' => 'Melhor avaliado',
			'studios.mostWatched' => 'Mais assistidos na sua biblioteca',
			'studios.collection' => 'COLEÇÃO DE ESTÚDIO',
			'studios.loadedTitles' => ({required Object count}) => 'Títulos ${count} carregados',
			'studios.sort' => 'Classificar títulos',
			'studios.sortTitleAscending' => 'Título A – Z',
			'studios.sortTitleDescending' => 'Título Z – A',
			'studios.sortNewest' => 'Lançamento mais recente',
			'studios.sortOldest' => 'Lançamento mais antigo',
			'studios.sortAdded' => 'Adicionado recentemente',
			'studios.sortEpisodeAdded' => 'Episódio adicionado recentemente',
			'studios.sortRating' => 'Melhor classificação',
			'studios.title' => 'Navegar por estúdio',
			'studios.all' => 'Todos',
			'studios.movies' => 'Filmes',
			'studios.shows' => 'Programas de TV',
			'studios.loadMore' => 'Carregue mais títulos',
			'studios.empty' => 'Não há títulos correspondentes nas suas bibliotecas atualmente visíveis.',
			'studios.retry' => 'Não foi possível carregar mais títulos. Selecione para tentar novamente',
			'studios.description' => 'Explore filmes e programas deste estúdio em suas bibliotecas.',
			'dashboard.previousFeature' => 'Título em destaque anterior',
			'dashboard.nextFeature' => 'Próximo título em destaque',
			'dashboard.cinemaHome' => 'CASA',
			'dashboard.episodeFallback' => 'Episódio de TV',
			'dashboard.timeLeft' => ({required Object minutes}) => '${minutes} minutos restantes',
			'dashboard.timeLeftHours' => ({required Object hours, required Object minutes}) => 'Faltam ${hours} h e ${minutes} min',
			'dashboard.spoilerHidden' => 'Detalhes do episódio ocultos por sua preferência de spoiler.',
			'dashboard.synopsisUnavailable' => 'Abra Detalhes para ver mais sobre este título.',
			'dashboard.yourSpace' => 'SEU ESPAÇO',
			'dashboard.title' => 'Seu cinema.',
			'dashboard.subtitle' => 'Escolha uma história ou encontre a próxima.',
			'dashboard.featured' => 'LUROKA EM DESTAQUE',
			'dashboard.jumpBackIn' => 'Continue assistindo',
			'dashboard.episodeLabel' => ({required Object season, required Object episode}) => 'S${season} · E${episode}',
			'dashboard.anotherPick' => 'Outra escolha',
			'dashboard.exploreSeries' => 'Explorar série',
			'dashboard.showFeatured' => 'Destaque inicial',
			'dashboard.showFeaturedDescription' => 'Mostre filmes e programas em destaque na parte superior da página inicial.',
			'lurokaCatalog.aboutPerson' => 'EM DESTAQUE',
			'lurokaCatalog.biographyUnavailable' => 'Uma biografia não está disponível neste servidor.',
			'lurokaCatalog.filmography' => 'Filmes e programas em suas bibliotecas',
			'lurokaCatalog.recommended' => 'Recomendados',
			'lurokaCatalog.browse' => 'Todos os títulos',
			'lurokaCatalog.collections' => 'Coleções',
			'lurokaCatalog.browseHint' => 'Explore seu catálogo. Molde a seleção com filtros e classificação.',
			'lurokaCatalog.recommendedHint' => 'Encontre sua próxima história',
			'lurokaCatalog.details' => 'Por trás da história',
			'referenceDetails.oneEpisodeLeft' => '1 episódio restante',
			'referenceDetails.playAll' => 'Jogue tudo',
			'referenceDetails.present' => 'Presente',
			'referenceDetails.continuing' => 'Continuando',
			'referenceDetails.upNext' => 'A seguir',
			'referenceDetails.episodesLeft' => ({required Object count}) => 'Episódios restantes de ${count}',
			'lurokaThemes.title' => 'Paletas de cinema Luroka',
			'lurokaThemes.coral' => 'Coral · azul meia-noite e pôr do sol',
			'lurokaThemes.ocean' => 'Oceano · azul profundo e gelo',
			'lurokaThemes.jade' => 'Jade · sempre-viva e menta',
			'lurokaThemes.amethyst' => 'Ametista · Violeta meia-noite',
			'lurokaThemes.darkThemes' => 'Temas de cinema sombrio',
			'lurokaThemes.lightThemes' => 'Temas de cinema leve',
			'lurokaThemes.moreThemes' => 'Mais temas',
			'lurokaThemes.moreThemesDescription' => 'Procure paletas adicionais e cores personalizadas',
			'lurokaThemes.obsidian' => 'Obsidiana · preto puro e champanhe',
			'lurokaThemes.nocturne' => 'Noturno · carvão e champanhe',
			'lurokaThemes.burgundy' => 'Borgonha · vinho aveludado e rosa',
			'lurokaThemes.slate' => 'Ardósia · grafite e pervinca',
			'lurokaThemes.espresso' => 'Expresso · cacau e caramelo',
			'lurokaThemes.pearl' => 'Pérola · porcelana e safira',
			'lurokaThemes.linen' => 'Linho · marfim quente e terracota',
			'lurokaThemes.sunrise' => 'Nascer do sol · pêssego e coral',
			'lurokaThemes.coastal' => 'Litoral · neblina e azul-petróleo',
			'lurokaThemes.latte' => 'Café com leite · creme e caramelo',
			'lurokaThemes.sage' => 'Sálvia · verde suave e eucalipto',
			'lurokaThemes.lavender' => 'Lavanda · lilás e violeta profundo',
			'customPerformance.title' => 'Desempenho e efeitos',
			'customPerformance.fireStickMode' => 'Modo de dispositivo de baixo consumo de energia',
			'customPerformance.description' => 'Use efeitos reduzidos, cenários estáticos, arte limitada a 720p e cache de imagem de 40 MiB. Enquanto ativado, substitui os efeitos visuais; desligá-lo restaura sua preferência de efeitos visuais.',
			'customPerformance.detailsTitle' => 'Detalhes de desempenho',
			'customPerformance.details' => 'Efeitos ativos, limite de cache de imagens e medições de desempenho de navegação',
			'customPerformance.effectsTier' => 'Camada de efeitos ativos',
			'customPerformance.imageCache' => 'Limite de cache de imagens',
			'customPerformance.measurement' => 'Medição de navegação',
			'customPerformance.measureInstructions' => 'Inicie uma amostra de 20 segundos, volte para Início e navegue usando o controle remoto. Volte aqui para ver os resultados. Repita as mesmas ações com o modo ativado e desativado para comparar. Isso mede o trabalho da UI do Flutter, não o desempenho do decodificador de vídeo.',
			'customPerformance.startSample' => 'Iniciar amostra de 20 segundos',
			'customPerformance.stopSample' => 'Concluir amostra agora',
			'customPerformance.sampling' => 'Amostragem — volte para a página inicial e navegue. Os resultados serão mantidos aqui.',
			'customPerformance.frames' => 'Quadros amostrados',
			'customPerformance.slowFrames' => 'Quadros acima do orçamento',
			'customPerformance.buildP95' => 'Tempo de construção da IU (percentil 95)',
			'customPerformance.rasterP95' => 'Tempo raster (percentil 95)',
			'customPerformance.frameBudget' => 'Orçamento por quadro',
			'customPerformance.processMemory' => 'Memória do processo do aplicativo no final da amostra',
			'customPerformance.noFrames' => 'Nenhum quadro renderizado foi capturado. Inicie outra amostra e navegue no aplicativo.',
			'homeLayout.manageStudios' => 'Escolha e solicite estúdios',
			'homeLayout.manageStudiosDescription' => 'Escolha quais estúdios aparecem para este perfil e organize sua ordem.',
			'homeLayout.studioUnavailable' => 'Apenas os estúdios encontrados nas bibliotecas selecionadas aparecem na página inicial.',
			'homeLayout.showAllStudios' => 'Mostrar todos os estúdios',
			'homeLayout.hideAllStudios' => 'Ocultar todos os estúdios',
			'homeLayout.reorderStudio' => 'Alterar ordem do estúdio',
			'homeLayout.episodeThumbnails' => 'Imagens dos episódios em Continuar assistindo',
			'homeLayout.episodeThumbnailsDescription' => 'Mostre imagens de episódios em vez de pôsteres de séries ou temporadas em Continuar assistindo e Próximo.',
			'homeLayout.spotlightSource' => 'Origem dos destaques',
			'homeLayout.spotlightSourceDescription' => 'For You usa a atividade de visualização deste perfil neste dispositivo, juntamente com favoritos e títulos de biblioteca.',
			'homeLayout.spotlightForYou' => 'Para você',
			'homeLayout.spotlightForYouDescription' => 'Uma mistura do que você está assistindo, favoritos, novidades e tendências, usando a atividade de visualização deste perfil neste dispositivo.',
			'homeLayout.spotlightTrending' => 'Tendências',
			'homeLayout.spotlightTrendingDescription' => 'Filmes e programas populares em suas bibliotecas.',
			'homeLayout.spotlightContinue' => 'Continuar assistindo',
			'homeLayout.spotlightContinueDescription' => 'Títulos que você iniciou e episódios que você pode continuar.',
			'homeLayout.spotlightFavorites' => 'Dos seus favoritos',
			'homeLayout.spotlightInspired' => 'Inspirado pela sua visualização',
			'homeLayout.spotlightNextUp' => 'Próximo',
			'homeLayout.title' => 'Personalize a página inicial',
			'homeLayout.description' => 'Escolha a ordem das linhas e a visibilidade deste perfil. Selecione uma linha para movê-la ou ocultá-la.',
			'homeLayout.rows' => 'Linhas iniciais',
			'homeLayout.progressLayout' => 'Continue assistindo e próximo',
			'homeLayout.progressCombined' => 'Combinado em uma linha',
			'homeLayout.progressSeparate' => 'Linhas separadas',
			'homeLayout.progressDescription' => 'Separar Next Up quando suportado pelo servidor. Outros servidores permanecem combinados.',
			'homeLayout.visible' => 'Visível',
			'homeLayout.hidden' => 'Oculto',
			'homeLayout.showRow' => 'Mostrar linha',
			'homeLayout.hideRow' => 'Ocultar linha',
			'homeLayout.moveUp' => 'Subir',
			'homeLayout.moveDown' => 'Mover para baixo',
			'homeLayout.pinnedCollections' => 'Coleções fixadas',
			'homeLayout.pinInstructions' => 'Abra o menu de uma coleção e escolha Pin para Início. Selecione uma coleção fixada aqui para remover seu atalho.',
			'homeLayout.pinCollection' => 'Pin para casa',
			'homeLayout.unpinCollection' => 'Liberar da página inicial',
			'homeLayout.reset' => 'Restaurar linhas padrão',
			'homeLayout.resetDescription' => 'Restaurar a ordem original das linhas e mostrar todas as linhas deste perfil? Suas coleções fixadas serão mantidas.',
			'homeLayout.saveFailed' => 'Não foi possível salvar o layout da sua página inicial. Por favor, tente novamente.',
			'homeLayout.emptyHint' => 'As linhas podem estar ocultas. Abra Personalizar página inicial para mostrá-los novamente.',
			'screenTime.title' => 'Tempo de tela',
			'screenTime.description' => 'Veja o tempo gasto assistindo a vídeos neste perfil',
			'screenTime.today' => 'Hoje',
			'screenTime.thisWeek' => 'Esta semana',
			'screenTime.thisMonth' => 'Este mês',
			'screenTime.lessThanMinute' => '<1 minuto',
			'screenTime.minutes' => ({required Object count}) => '${count} min',
			'screenTime.hours' => ({required Object count}) => '${count} horas',
			'screenTime.hoursMinutes' => ({required Object hours, required Object minutes}) => '${hours} horas ${minutes} minutos',
			'activityStats.title' => 'Visualizando estatísticas',
			'activityStats.period' => 'Período',
			'activityStats.last7Days' => '7 dias',
			'activityStats.last30Days' => '30 dias',
			'activityStats.last90Days' => '90 dias',
			'activityStats.thisYear' => 'Ano',
			'activityStats.allTime' => 'Todos',
			'activityStats.heroAllTime' => 'Todo o tempo',
			'activityStats.heroDailyAverage' => 'Média diária',
			'activityStats.consistency' => 'Consistência',
			'activityStats.currentStreak' => 'Sequência atual',
			'activityStats.dayCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n, one: '${n} dia', other: '${n} dias', ), 
			'activityStats.longestStreak' => 'Sequência mais longa',
			'activityStats.bestDay' => 'Melhor dia',
			'activityStats.bestWeek' => 'Melhor semana',
			'activityStats.trendTitle' => 'Tempo de exibição',
			'activityStats.trendToday' => 'Hoje',
			'activityStats.gapDetail' => ({required Object stat, required Object range}) => '${stat} em ${range}',
			'activityStats.patternsTitle' => 'Seus padrões',
			'activityStats.mostlyKind' => ({required Object kind}) => 'Principalmente ${kind}',
			'activityStats.weekdayTitle' => 'Por dia da semana',
			'activityStats.hoursTitle' => 'Por hora do dia',
			'activityStats.amLabel' => 'SOU',
			'activityStats.pmLabel' => 'PM',
			'activityStats.kindsTitle' => 'Por categoria',
			'activityStats.kindMovie' => 'Filmes',
			'activityStats.kindTv' => 'televisão',
			'activityStats.kindLiveTv' => 'TV ao vivo',
			'activityStats.kindMusic' => 'Música',
			'activityStats.kindOther' => 'Outro',
			'activityStats.topTitlesTitle' => 'Mais assistidos',
			'activityStats.sessionsTitle' => 'Sessões recentes',
			'activityStats.recentViewingTitle' => 'Visualização recente',
			'activityStats.recentViewingHint' => 'Tempo total assistido no período selecionado. As datas mostram a visualização mais recente.',
			'activityStats.showMore' => 'Mostrar mais',
			'activityStats.sessionNoTitle' => 'Reprodução não identificada',
			'activityStats.emptyTitle' => 'Nada aqui ainda',
			'activityStats.emptyBody' => 'Observe algo e suas estatísticas serão acumuladas aqui.',
			'activityStats.noDataInPeriod' => 'Nenhuma reprodução gravada neste período.',
			'search.hint' => 'Buscar filmes, séries, músicas...',
			'search.tryDifferentTerm' => 'Tente um termo de busca diferente',
			'search.searchYourMedia' => 'Buscar suas mídias',
			'search.enterTitleActorOrKeyword' => 'Insira um título, ator ou palavra-chave',
			'search.people' => 'Pessoas',
			'search.recentSearches' => 'Pesquisas recentes',
			'search.clearHistory' => 'Limpar histórico',
			'hotkeys.setShortcutFor' => ({required Object actionName}) => 'Definir Atalho para ${actionName}',
			'hotkeys.clearShortcut' => 'Limpar atalho',
			'hotkeys.noShortcutSet' => 'Nenhum atalho definido',
			'hotkeys.currentShortcut' => 'Atalho atual:',
			'hotkeys.pressToRecord' => 'Selecionar para gravar um atalho',
			'hotkeys.recordingShortcut' => 'Pressione o atalho agora',
			'hotkeys.actions.playPause' => 'Reproduzir/Pausar',
			'hotkeys.actions.volumeUp' => 'Aumentar Volume',
			'hotkeys.actions.volumeDown' => 'Diminuir Volume',
			'hotkeys.actions.seekForward' => ({required Object seconds}) => 'Avançar (${seconds}s)',
			'hotkeys.actions.seekBackward' => ({required Object seconds}) => 'Retroceder (${seconds}s)',
			'hotkeys.actions.fullscreenToggle' => 'Alternar Tela Cheia',
			'hotkeys.actions.muteToggle' => 'Alternar Silêncio',
			'hotkeys.actions.subtitleToggle' => 'Alternar Legendas',
			'hotkeys.actions.audioTrackNext' => 'Próxima Faixa de Áudio',
			'hotkeys.actions.subtitleTrackNext' => 'Próxima Faixa de Legenda',
			'hotkeys.actions.chapterNext' => 'Próximo Capítulo',
			'hotkeys.actions.chapterPrevious' => 'Capítulo Anterior',
			'hotkeys.actions.episodeNext' => 'Próximo Episódio',
			'hotkeys.actions.episodePrevious' => 'Episódio Anterior',
			'hotkeys.actions.speedIncrease' => 'Aumentar Velocidade',
			'hotkeys.actions.speedDecrease' => 'Diminuir Velocidade',
			'hotkeys.actions.speedReset' => 'Redefinir Velocidade',
			'hotkeys.actions.zoomIn' => 'Aumentar zoom',
			'hotkeys.actions.zoomOut' => 'Diminuir zoom',
			'hotkeys.actions.zoomReset' => 'Redefinir zoom',
			'hotkeys.actions.subSeekNext' => 'Ir para Próxima Legenda',
			'hotkeys.actions.subSeekPrev' => 'Ir para Legenda Anterior',
			'hotkeys.actions.shaderToggle' => 'Alternar Shaders',
			'hotkeys.actions.skipMarker' => 'Pular introdução/créditos',
			'hotkeys.actions.screenshot' => 'Capturar tela',
			'fileInfo.title' => 'Informações do arquivo',
			'fileInfo.overview' => 'Visão geral',
			'fileInfo.video' => 'Vídeo',
			'fileInfo.audio' => 'Áudio',
			'fileInfo.subtitles' => 'Legendas',
			'fileInfo.images' => 'Imagens incorporadas',
			'fileInfo.dataStreams' => 'Fluxos de dados',
			'fileInfo.lyrics' => 'Letras',
			'fileInfo.file' => 'Arquivo',
			'fileInfo.attachments' => 'Anexos',
			'fileInfo.delivery' => 'Entrega',
			'fileInfo.versionCounter' => ({required Object index, required Object count}) => 'Versão ${index} de ${count}',
			'fileInfo.fileCounter' => ({required Object index, required Object count}) => 'Arquivo ${index} de ${count}',
			'fileInfo.noStreams' => 'O servidor não relatou fluxos para este arquivo.',
			'fileInfo.copyPath' => 'Copiar caminho',
			'fileInfo.pathCopied' => 'Caminho do arquivo copiado',
			'fileInfo.codec' => 'Codec',
			'fileInfo.codecTag' => 'Tag do codec',
			'fileInfo.resolution' => 'Resolução',
			'fileInfo.codedResolution' => 'Resolução codificada',
			'fileInfo.bitrate' => 'Taxa de bits',
			'fileInfo.frameRate' => 'Taxa de Quadros',
			'fileInfo.rotation' => 'Rotação',
			'fileInfo.comment' => 'Comentário',
			'fileInfo.audioDescription' => 'Descrição de áudio',
			'fileInfo.headerCompression' => 'Compactação de cabeçalho',
			'fileInfo.sidecarFile' => 'Arquivo sidecar',
			'fileInfo.transportTimestamp' => 'Carimbo de transporte',
			'fileInfo.displayOffset' => 'Deslocamento de exibição',
			'fileInfo.previewFailureCode' => 'Código de falha da pré-visualização',
			'fileInfo.previewRetries' => 'Tentativas da pré-visualização',
			'fileInfo.aspectRatio' => 'Proporção',
			'fileInfo.pixelAspectRatio' => 'Proporção de aspecto de pixel',
			'fileInfo.profile' => 'Perfil',
			'fileInfo.level' => 'Nível',
			'fileInfo.bitDepth' => 'Profundidade de bits',
			'fileInfo.pixelFormat' => 'Formato de pixel',
			'fileInfo.colorSpace' => 'Espaço de Cor',
			'fileInfo.colorRange' => 'Faixa de Cor',
			'fileInfo.colorPrimaries' => 'Primárias de Cor',
			'fileInfo.colorTransfer' => 'Transferência de cor',
			'fileInfo.chromaSubsampling' => 'Subamostragem de Croma',
			'fileInfo.chromaLocation' => 'Localização do croma',
			'fileInfo.scanType' => 'Tipo de varredura',
			'fileInfo.interlaced' => 'Entrelaçado',
			'fileInfo.anamorphic' => 'Anamórfico',
			'fileInfo.referenceFrames' => 'Quadros de referência',
			'fileInfo.dynamicRange' => 'Faixa dinâmica',
			'fileInfo.dolbyVision' => 'Dolby Vision',
			'fileInfo.dolbyVisionLevel' => 'Nível Dolby Vision',
			'fileInfo.dolbyVisionVersion' => 'Versão Dolby Vision',
			'fileInfo.dolbyVisionLayers' => 'Camadas Dolby Vision',
			'fileInfo.baseLayerCompatibility' => 'Compatibilidade da camada base',
			'fileInfo.avcBitstream' => 'Bitstream AVC',
			'fileInfo.nalLengthSize' => 'Tamanho do comprimento NAL',
			'fileInfo.scalingMatrix' => 'Matriz de dimensionamento personalizada',
			'fileInfo.streamIdentifier' => 'Identificador do fluxo',
			'fileInfo.streamIndex' => 'Índice do fluxo',
			'fileInfo.streamId' => 'ID do fluxo',
			'fileInfo.language' => 'Idioma',
			'fileInfo.languageCode' => 'Código do idioma',
			'fileInfo.streamTitle' => 'Título da faixa',
			'fileInfo.channels' => 'Canais',
			'fileInfo.sampleRate' => 'Taxa de amostragem',
			'fileInfo.spatialAudio' => 'Áudio espacial',
			'fileInfo.textBased' => 'Baseado em texto',
			'fileInfo.subtitleFormat' => 'Formato sidecar',
			'fileInfo.provider' => 'Provedor',
			'fileInfo.matchScore' => 'Pontuação de correspondência',
			'fileInfo.externalDelivery' => 'Pode ser servido separadamente',
			'fileInfo.sidecarPath' => 'Caminho do sidecar',
			'fileInfo.sourceStream' => 'Copiado de',
			'fileInfo.temporary' => 'Temporário',
			'fileInfo.timeBase' => 'Base de tempo',
			'fileInfo.overallBitrate' => 'Taxa de bits total',
			'fileInfo.path' => 'Caminho',
			'fileInfo.fileName' => 'Nome do arquivo',
			'fileInfo.size' => 'Tamanho',
			'fileInfo.totalSize' => 'Tamanho total',
			'fileInfo.container' => 'Contêiner',
			'fileInfo.duration' => 'Duração',
			'fileInfo.previewThumbnails' => 'Miniaturas de pré-visualização',
			'fileInfo.previewIndex' => 'Índice de pré-visualização',
			'fileInfo.packetLength' => 'Tamanho do pacote',
			'fileInfo.filePresent' => 'Arquivo presente',
			'fileInfo.fileReadable' => 'Legível pelo servidor',
			'fileInfo.streamPath' => 'Caminho do fluxo',
			'fileInfo.optimizedForStreaming' => 'Otimizado para transmissão',
			'fileInfo.has64bitOffsets' => 'Deslocamentos de 64 bits',
			'fileInfo.protocol' => 'Protocolo',
			'fileInfo.mediaType' => 'Tipo de mídia',
			'fileInfo.sourceKind' => 'Tipo de origem',
			'fileInfo.optimizedVersion' => 'Versão otimizada',
			'fileInfo.optimizationTarget' => 'Alvo de otimização',
			'fileInfo.deletedAt' => 'Excluído',
			'fileInfo.remoteSource' => 'Origem remota',
			'fileInfo.infiniteStream' => 'Fluxo infinito',
			'fileInfo.directPlay' => 'Reprodução direta',
			'fileInfo.directStream' => 'Fluxo direto',
			'fileInfo.transcoding' => 'Transcodificação',
			'fileInfo.etag' => 'ETag',
			'fileInfo.versionId' => 'ID da versão',
			'fileInfo.fileId' => 'ID do arquivo',
			'fileInfo.defaultAudioTrack' => 'Faixa de áudio padrão',
			'fileInfo.defaultSubtitleTrack' => 'Faixa de legenda padrão',
			'fileInfo.subtitlesOff' => 'Desativadas',
			'fileInfo.flagDefault' => 'Padrão',
			'fileInfo.flagForced' => 'Forçada',
			'fileInfo.flagSelected' => 'Selecionada',
			'fileInfo.flagExternal' => 'Externa',
			'fileInfo.flagHearingImpaired' => 'Deficiência auditiva',
			'fileInfo.flagDub' => 'Dublada',
			'fileInfo.flagOriginal' => 'Original',
			'fileInfo.channelsMono' => 'Mono',
			'fileInfo.dolbyVisionProfile' => ({required Object profile}) => 'Perfil ${profile}',
			'mediaMenu.markAsWatched' => 'Marcar como Assistido',
			'mediaMenu.markAsUnwatched' => 'Marcar como Não Assistido',
			'mediaMenu.clearProgress' => 'Progresso claro',
			'mediaMenu.removeFromContinueWatching' => 'Remover de Continuar Assistindo',
			'mediaMenu.viewDetails' => 'Ver detalhes',
			'mediaMenu.goToSeries' => 'Ir para a série',
			'mediaMenu.shufflePlay' => 'Reprodução Aleatória',
			'mediaMenu.shuffleNotAvailableOffline' => 'Reprodução aleatória indisponível offline',
			'mediaMenu.fileInfo' => 'Informações do arquivo',
			'mediaMenu.deleteEpisodeFromServer' => 'Excluir episódio do servidor',
			'mediaMenu.deleteSeasonFromServer' => 'Excluir temporada do servidor',
			'mediaMenu.deleteShowFromServer' => 'Excluir série do servidor',
			'mediaMenu.deleteMovieFromServer' => 'Excluir filme do servidor',
			'mediaMenu.deleteEpisodeTitle' => 'Excluir este episódio?',
			'mediaMenu.deleteSeasonTitle' => 'Excluir esta temporada?',
			'mediaMenu.deleteShowTitle' => 'Excluir esta série?',
			'mediaMenu.deleteMovieTitle' => 'Excluir este filme?',
			'mediaMenu.deleteEpisodeConfirm' => 'Excluir episódio',
			'mediaMenu.deleteSeasonConfirm' => 'Excluir temporada',
			'mediaMenu.deleteShowConfirm' => 'Excluir série',
			'mediaMenu.deleteMovieConfirm' => 'Excluir filme',
			'mediaMenu.deleteAnyway' => 'Excluir mesmo assim',
			'mediaMenu.confirmDeleteTarget' => ({required Object title}) => 'Excluir permanentemente ${title} do seu servidor?',
			'mediaMenu.deleteMultipleWarning' => 'Isso inclui todos os episódios e seus arquivos.',
			'mediaMenu.deleteEpisodeCountWarning' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n, one: 'Isso exclui o ${n} episódio e o arquivo dele.', other: 'Isso exclui todos os ${n} episódios e os arquivos deles.', ), 
			'mediaMenu.deleteMultiPartWarning' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n, one: 'Este item está armazenado como ${n} arquivo, que será excluído.', other: 'Este item está armazenado em ${n} arquivos, e todos eles serão excluídos.', ), 
			'mediaMenu.deleteSharedFileHeading' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n, one: 'Mais ${n} episódio está armazenado no mesmo arquivo e também será excluído:', other: 'Mais ${n} episódios estão armazenados no mesmo arquivo e também serão excluídos:', ), 
			'mediaMenu.deleteScopeUnverifiedProbeFailed' => 'O Luroka não conseguiu verificar quais arquivos serão removidos, então pode excluir mais do que o item acima. Cancele e tente novamente, ou exclua mesmo assim.',
			'mediaMenu.deleteScopeUnverifiedNoFileInfo' => 'Seu servidor não forneceu detalhes do arquivo para este item, então o Luroka não pode verificar quais arquivos serão removidos. Pode excluir mais do que o item acima.',
			'mediaMenu.mediaDeletedSuccessfully' => 'Item de mídia excluído com sucesso',
			'mediaMenu.mediaFailedToDelete' => 'Falha ao excluir item de mídia',
			'mediaMenu.rate' => 'Avaliar',
			'mediaMenu.playFromBeginning' => 'Reproduzir do início',
			'mediaMenu.playVersion' => 'Reproduzir versão...',
			'rateSheet.title' => 'Avaliar',
			'rateSheet.server' => 'Servidor',
			'rateSheet.favorite' => 'Favorito',
			'rateSheet.favorited' => 'Adicionado aos favoritos',
			'rateSheet.saved' => 'Salvo',
			'rateSheet.notAvailable' => 'Nenhuma correspondência encontrada',
			'rateSheet.noConnectedServices' => 'Conecte um serviço nas Configurações para avaliar por lá.',
			'accessibility.mediaCardMovie' => ({required Object title}) => '${title}, filme',
			'accessibility.mediaCardShow' => ({required Object title}) => '${title}, série de TV',
			'accessibility.mediaCardEpisode' => ({required Object title, required Object episodeInfo}) => '${title}, ${episodeInfo}',
			'accessibility.mediaCardSeason' => ({required Object title, required Object seasonInfo}) => '${title}, ${seasonInfo}',
			'accessibility.mediaCardWatched' => 'assistido',
			'accessibility.mediaCardPartiallyWatched' => ({required Object percent}) => '${percent} por cento assistido',
			'accessibility.mediaCardUnwatched' => 'não assistido',
			'accessibility.tapToPlay' => 'Toque para reproduzir',
			'accessibility.decrease' => 'Diminuir',
			'accessibility.increase' => 'Aumentar',
			'accessibility.decreaseValue' => ({required Object label}) => 'Diminuir ${label}',
			'accessibility.increaseValue' => ({required Object label}) => 'Aumentar ${label}',
			'accessibility.hue' => 'Matiz',
			'accessibility.saturation' => 'Saturação',
			'accessibility.brightness' => 'Brilho',
			_ => null,
		} ?? switch (path) {
			'accessibility.hexColor' => 'Cor hexadecimal',
			'accessibility.expandText' => 'Expandir texto',
			'accessibility.collapseText' => 'Recolher texto',
			'accessibility.alphabetNavigation' => 'Navegação alfabética',
			'accessibility.alphabetScrollHint' => 'Deslize para cima ou para baixo para avançar por letra',
			'accessibility.rowColumnPosition' => ({required Object row, required Object rowCount, required Object column, required Object columnCount}) => 'Linha ${row} de ${rowCount}, coluna ${column} de ${columnCount}',
			'accessibility.rowPosition' => ({required Object row, required Object rowCount}) => 'Linha ${row} de ${rowCount}',
			'accessibility.autoScrollPlay' => 'Iniciar rolagem automática',
			'accessibility.autoScrollPause' => 'Pausar rolagem automática',
			'accessibility.hueShort' => 'M',
			'accessibility.saturationShort' => 'S',
			'accessibility.valueShort' => 'V',
			'tooltips.shufflePlay' => 'Reprodução aleatória',
			'tooltips.playTrailer' => 'Reproduzir trailer',
			'tooltips.markAsWatched' => 'Marcar como assistido',
			'tooltips.markAsUnwatched' => 'Marcar como não assistido',
			'audioTracks.track' => ({required Object n}) => 'Faixa de áudio ${n}',
			'videoControls.audioLabel' => 'Áudio',
			'videoControls.subtitlesLabel' => 'Legendas',
			'videoControls.addTime' => ({required Object amount, required Object unit}) => '+${amount}${unit}',
			'videoControls.letterbox' => 'Letterbox',
			'videoControls.fillScreen' => 'Preencher tela',
			'videoControls.stretch' => 'Esticar',
			'videoControls.lockRotation' => 'Travar rotação',
			'videoControls.unlockRotation' => 'Destravar rotação',
			'videoControls.timerActive' => 'Temporizador ativo',
			'videoControls.playbackWillPauseIn' => ({required Object duration}) => 'A reprodução pausará em ${duration}',
			'videoControls.sleepTimerEndOfVideo' => 'Fim do vídeo atual',
			'videoControls.sleepTimerStopAtHeader' => 'Parar em',
			'videoControls.sleepTimerDurationHeader' => 'Temporizador',
			'videoControls.playbackWillPauseAtEnd' => 'A reprodução pausará no final deste vídeo',
			'videoControls.stillWatching' => 'Ainda assistindo?',
			'videoControls.pausingIn' => ({required Object seconds}) => 'Pausando em ${seconds}s',
			'videoControls.continueWatching' => 'Continuar',
			'videoControls.autoPlayNext' => 'Reproduzir Próximo Automaticamente',
			'videoControls.playNext' => 'Reproduzir Próximo',
			'videoControls.playButton' => 'Reproduzir',
			'videoControls.pauseButton' => 'Pausar',
			'videoControls.playbackPaused' => 'Pausado',
			'videoControls.playbackResumed' => 'Reproduzindo',
			'videoControls.loadingVideo' => 'Carregando vídeo',
			'videoControls.showPlaybackControls' => 'Mostrar controles de reprodução',
			'videoControls.hidePlaybackControls' => 'Ocultar controles de reprodução',
			'videoControls.seekBackwardButton' => ({required Object seconds}) => 'Retroceder ${seconds} segundos',
			'videoControls.seekForwardButton' => ({required Object seconds}) => 'Avançar ${seconds} segundos',
			'videoControls.previousButton' => 'Episódio anterior',
			'videoControls.nextButton' => 'Próximo episódio',
			'videoControls.previousChapterButton' => 'Capítulo anterior',
			'videoControls.nextChapterButton' => 'Próximo capítulo',
			'videoControls.muteButton' => 'Silenciar',
			'videoControls.unmuteButton' => 'Ativar som',
			'videoControls.settingsButton' => 'Configurações de reprodução',
			'videoControls.infoButton' => 'Informações',
			'videoControls.tracksButton' => 'Áudio e legendas',
			'videoControls.chaptersButton' => 'Capítulos',
			'videoControls.versionQualityButton' => 'Versão e qualidade',
			'videoControls.versionColumnHeader' => 'Versão',
			'videoControls.qualityColumnHeader' => 'Qualidade',
			'videoControls.qualityOriginal' => 'Original',
			'videoControls.qualityPresetLabel' => ({required Object resolution, required Object bitrate}) => '${resolution}p ${bitrate} Mbps',
			'videoControls.transcodeUnavailableFallback' => 'Transcodificação indisponível — reproduzindo qualidade original',
			'videoControls.subtitleUnavailableFallback' => 'Não foi possível carregar as legendas selecionadas — a reprodução continuará sem legendas',
			'videoControls.pipButton' => 'Modo Picture-in-Picture',
			'videoControls.aspectRatioButton' => 'Proporção',
			'videoControls.ambientLighting' => 'Iluminação ambiente',
			'videoControls.fullscreenButton' => 'Entrar em tela cheia',
			'videoControls.exitFullscreenButton' => 'Sair da tela cheia',
			'videoControls.alwaysOnTopButton' => 'Sempre no topo',
			'videoControls.rotationLockButton' => 'Travar rotação',
			'videoControls.lockScreen' => 'Travar tela',
			'videoControls.screenLockButton' => 'Travar tela',
			'videoControls.longPressToUnlock' => 'Pressione e segure para destravar',
			'videoControls.timelineSlider' => 'Linha do tempo do vídeo',
			'videoControls.volumeSlider' => 'Nível de volume',
			'videoControls.endsAt' => ({required Object time}) => 'Termina às ${time}',
			'videoControls.pipActive' => 'Reproduzindo em Picture-in-Picture',
			'videoControls.pipFailed' => 'Falha ao iniciar picture-in-picture',
			'videoControls.screenshotSaved' => 'Captura de tela salva',
			'videoControls.screenshotFailed' => 'Não foi possível fazer uma captura de tela',
			'videoControls.zoomPercent' => ({required Object percent}) => 'Zoom ${percent}%',
			'videoControls.volumePercent' => ({required Object percent}) => 'Volume ${percent}%',
			'videoControls.pipErrors.androidVersion' => 'Requer Android 8.0 ou superior',
			'videoControls.pipErrors.iosVersion' => 'Requer iOS 15.0 ou superior',
			'videoControls.pipErrors.permissionDisabled' => 'Picture-in-picture está desativado. Ative nas configurações do sistema.',
			'videoControls.pipErrors.notSupported' => 'O dispositivo não suporta modo picture-in-picture',
			'videoControls.pipErrors.voSwitchFailed' => 'Falha ao trocar saída de vídeo para picture-in-picture',
			'videoControls.pipErrors.failed' => 'Falha ao iniciar picture-in-picture',
			'videoControls.pipErrors.prepareFailed' => 'Não foi possível preparar o picture-in-picture',
			'videoControls.pipErrors.unknown' => ({required Object error}) => 'Ocorreu um erro: ${error}',
			'videoControls.chapters' => 'Capítulos',
			'videoControls.noChaptersAvailable' => 'Nenhum capítulo disponível',
			'videoControls.queue' => 'Fila',
			'videoControls.noQueueItems' => 'Nenhum item na fila',
			'videoControls.noAudioDevicesAvailable' => 'Nenhum dispositivo de áudio disponível',
			'videoControls.searchSubtitles' => 'Pesquisar legendas',
			'videoControls.language' => 'Idioma',
			'videoControls.noSubtitlesFound' => 'Nenhuma legenda encontrada',
			'videoControls.subtitleDownloaded' => 'Legenda baixada',
			'videoControls.subtitleDownloadedNotApplied' => 'A legenda foi baixada, mas não foi possível selecioná-la',
			'videoControls.subtitleDownloadFailed' => 'Falha ao baixar legenda',
			'videoControls.searchLanguages' => 'Pesquisar idiomas...',
			'videoControls.skipIntro' => 'Pular abertura',
			'videoControls.skipCredits' => 'Pular créditos',
			'videoControls.nextEpisode' => 'Próximo episódio',
			'videoControls.subtitleTrack' => ({required Object n}) => 'Faixa ${n}',
			'videoControls.subtitleFile' => ({required Object name}) => 'Legenda ${name}',
			'videoControls.forcedTrack' => ({required Object label}) => '${label} (Forçada)',
			'videoControls.osdSubtitlesOff' => 'Legendas: desativadas',
			'videoControls.osdSubtitles' => ({required Object track}) => 'Legendas: ${track}',
			'videoControls.osdAudio' => ({required Object track}) => 'Áudio: ${track}',
			'messages.markedAsWatched' => 'Marcado como assistido',
			'messages.markedAsUnwatched' => 'Marcado como não assistido',
			'messages.markedAsWatchedOffline' => 'Marcado como assistido (será sincronizado quando online)',
			'messages.markedAsUnwatchedOffline' => 'Marcado como não assistido (será sincronizado quando online)',
			'messages.autoRemovedWatchedDownload' => ({required Object title}) => 'Removido automaticamente: ${title}',
			'messages.autoRemovedWatchedDownloads' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n, one: 'Removido automaticamente ${n} download assistido', other: 'Removidos automaticamente ${n} downloads assistidos', ), 
			'messages.removedFromContinueWatching' => 'Removido de Continuar assistindo',
			'messages.errorLoading' => ({required Object error}) => 'Erro: ${error}',
			'messages.searchPartialResults' => 'Alguns servidores de mídia não puderam ser pesquisados. Exibindo os resultados disponíveis.',
			'messages.streamInterrupted' => 'A transmissão foi interrompida. Pressione reproduzir ou avance para tentar novamente.',
			'messages.liveStreamInterrupted' => 'A transmissão ao vivo foi interrompida. Pressione reproduzir para tentar novamente.',
			'messages.fileInfoNotAvailable' => 'Informações do arquivo não disponíveis',
			'messages.playbackAuthenticationRequired' => 'Entre novamente no servidor de mídia para reproduzir este item.',
			'messages.playbackServerUnavailable' => 'O servidor de mídia está indisponível. Tente novamente mais tarde.',
			'messages.playbackDataInvalid' => 'O servidor retornou informações de reprodução inválidas.',
			'messages.playbackCancelled' => 'A reprodução foi cancelada.',
			'messages.playbackFailed' => 'Não foi possível iniciar a reprodução.',
			'messages.playbackFailedDetail' => ({required Object error}) => 'Não foi possível iniciar a reprodução: ${error}',
			'messages.audioOutputFailed' => 'A saída de áudio parou de responder. Verifique a conexão de áudio da TV ou do receptor; se outros aplicativos também estiverem sem som, reinicie o dispositivo.',
			'messages.mediaUnavailable' => 'Este conteúdo não está mais disponível.',
			'messages.errorLoadingFileInfo' => ({required Object error}) => 'Erro ao carregar as informações do arquivo: ${error}',
			'messages.errorLoadingSeries' => 'Erro ao carregar série',
			'messages.musicNotSupported' => 'A reprodução de música ainda não é compatível',
			'messages.noDescriptionAvailable' => 'Nenhuma descrição disponível',
			'messages.noProfilesAvailable' => 'Nenhum perfil disponível',
			'messages.contactAdminForProfiles' => 'Entre em contato com o administrador do servidor para adicionar perfis',
			'messages.unableToDetermineLibrarySection' => 'Não foi possível determinar a seção da biblioteca deste item',
			'messages.logsCleared' => 'Logs limpos',
			'messages.logsCopied' => 'Logs copiados para a área de transferência',
			'messages.noLogsAvailable' => 'Nenhum log disponível',
			'messages.libraryScanning' => ({required Object title}) => 'Escaneando "${title}"...',
			'messages.libraryScanStarted' => ({required Object title}) => 'Escaneamento da biblioteca iniciado para "${title}"',
			'messages.libraryScanFailed' => ({required Object error}) => 'Falha ao escanear biblioteca: ${error}',
			'messages.metadataRefreshing' => ({required Object title}) => 'Atualizando metadados de "${title}"...',
			'messages.metadataRefreshStarted' => ({required Object title}) => 'Atualização de metadados iniciada para "${title}"',
			'messages.metadataRefreshFailed' => ({required Object error}) => 'Falha ao atualizar metadados: ${error}',
			'messages.logoutConfirm' => 'Tem certeza de que deseja sair?',
			'messages.logoutDeviceConfirm' => 'Sair do Luroka neste dispositivo? Todos os perfis, incluindo perfis infantis, contas de servidor e mídia baixada, serão removidos deste dispositivo. Você pode fazer login novamente mais tarde.',
			'messages.noSeasonsFound' => 'Nenhuma temporada encontrada',
			'messages.seasonsLoadFailed' => 'Não foi possível carregar as temporadas',
			'messages.noEpisodesFound' => 'Nenhum episódio encontrado na primeira temporada',
			'messages.noEpisodesFoundGeneral' => 'Nenhum episódio encontrado',
			'messages.episodesLoadFailed' => 'Não foi possível carregar os episódios',
			'messages.noResultsFound' => 'Nenhum resultado encontrado',
			'messages.sleepTimerSet' => ({required Object label}) => 'Temporizador de suspensão definido como ${label}',
			'messages.noItemsAvailable' => 'Nenhum item disponível',
			'messages.failedToCreatePlayQueueNoItems' => 'Falha ao criar a fila de reprodução — nenhum item',
			'messages.failedPlayback' => ({required Object action, required Object error}) => 'Falha ao ${action}: ${error}',
			'messages.switchingToCompatiblePlayer' => 'Alternando para um reprodutor compatível...',
			'messages.serverLimitTitle' => 'Falha na reprodução',
			'messages.serverLimitBody' => 'Erro do servidor (HTTP 500). Um limite de largura de banda ou transcodificação provavelmente rejeitou esta sessão. Peça ao proprietário do servidor para ajustá-lo.',
			'messages.mediaUnreadableTitle' => 'Arquivo indisponível',
			'messages.mediaUnreadableBody' => 'O servidor encontrou este item, mas não conseguiu ler o arquivo (HTTP 404). O arquivo provavelmente foi movido, excluído ou o armazenamento está offline. Peça ao responsável pelo servidor para verificar o arquivo e reexaminar a biblioteca.',
			'messages.serverBusyTitle' => 'Transmissão indisponível',
			'messages.serverBusyBody' => 'O servidor continuou se recusando a transmitir este arquivo (HTTP 503). Ele pode estar reiniciando ou ocupado, ou o armazenamento do arquivo pode estar offline. Tente novamente em instantes — se isso continuar acontecendo, peça ao proprietário do servidor para verificar o servidor e o armazenamento do arquivo.',
			'messages.playbackNotAllowedTitle' => 'Reprodução não permitida',
			'messages.playbackNotAllowedBody' => 'O servidor se recusou a transmitir este item (HTTP 403). Sua conta pode não ter permissão para reproduzi-lo, ou o servidor pode permitir a reprodução apenas na própria rede local.',
			'messages.logsUploaded' => 'Logs enviados',
			'messages.logsUploadFailed' => 'Falha ao enviar logs',
			'messages.logId' => 'ID do log',
			'messages.burnedSubtitlesUseMenu' => 'As legendas estão incorporadas a esta transmissão. Altere-as no menu de legendas.',
			'messages.noVideoUrl' => 'Nenhuma URL de vídeo disponível',
			'messages.playbackNoMediaSources' => 'O servidor não retornou nenhuma fonte de mídia reproduzível',
			'messages.playbackDataNotPrepared' => 'A reprodução foi iniciada antes que os dados estivessem prontos',
			'messages.streamSelectionUnavailable' => 'A seleção de fluxos não está disponível para esta fonte',
			'messages.streamSelectionFailed' => 'Não foi possível aplicar os fluxos selecionados',
			'messages.trackSelectionNotRemembered' => 'Esta escolha de faixa se aplica apenas à reprodução atual.',
			'messages.serverUnavailableForProfile' => 'Nenhum servidor está disponível para o perfil ativo',
			'sourceLibraries.title' => 'Seus servidores e bibliotecas',
			'sourceLibraries.description' => 'Escolha as bibliotecas que Luroka usa para Início, pesquisa, descoberta de disponibilidade e estúdios. A ordem das linhas iniciais é personalizada separadamente.',
			'sourceLibraries.partial' => 'Alguns servidores não puderam ser verificados. Suas escolhas salvas para essas bibliotecas serão mantidas. Atualize para tentar novamente.',
			'sourceLibraries.loadFailed' => 'Não foi possível carregar suas bibliotecas. Verifique a conexão e tente novamente.',
			'sourceLibraries.notSelected' => 'Não disponível nas bibliotecas selecionadas.',
			'sourceLibraries.checkOthers' => 'Verifique outras fontes conectadas',
			'sourceLibraries.otherSources' => 'Disponível em outras fontes conectadas',
			'sourceLibraries.playOnce' => 'Jogue uma vez',
			'sourceLibraries.includeLibrary' => 'Incluir esta biblioteca',
			'sourceLibraries.noOthers' => 'Nenhuma cópia encontrada em outras fontes conectadas.',
			'sourceLibraries.chooseOne' => 'Escolha pelo menos uma biblioteca para continuar.',
			'subtitlingStyling.text' => 'Texto',
			'subtitlingStyling.border' => 'Borda',
			'subtitlingStyling.background' => 'Fundo',
			'subtitlingStyling.fontSize' => 'Tamanho da Fonte',
			'subtitlingStyling.textColor' => 'Cor do Texto',
			'subtitlingStyling.borderSize' => 'Tamanho da Borda',
			'subtitlingStyling.borderColor' => 'Cor da Borda',
			'subtitlingStyling.backgroundOpacity' => 'Opacidade do Fundo',
			'subtitlingStyling.backgroundColor' => 'Cor de Fundo',
			'subtitlingStyling.position' => 'Posição',
			'subtitlingStyling.assOverride' => 'Substituição ASS',
			'subtitlingStyling.overrideScale' => 'Dimensionar',
			'subtitlingStyling.overrideForce' => 'Forçar',
			'subtitlingStyling.overrideStrip' => 'Remover estilo',
			'subtitlingStyling.positionTop' => 'Superior',
			'subtitlingStyling.positionBottom' => 'Inferior',
			'subtitlingStyling.useMargins' => 'Usar margens',
			'subtitlingStyling.useMarginsDescription' => 'Permitir legendas de texto no espaço fora do vídeo. Legendas estilizadas podem manter sua posição original.',
			'subtitlingStyling.anchorToScreen' => 'Ancorar à tela',
			'subtitlingStyling.anchorToScreenDescription' => 'Exibir as legendas de texto nas faixas pretas abaixo de vídeos em tela ampla',
			'subtitlingStyling.bold' => 'Negrito',
			'subtitlingStyling.italic' => 'Itálico',
			'subtitlingStyling.renderResolution' => 'Resolução de renderização',
			'subtitlingStyling.renderResolutionScreen' => 'Resolução da tela',
			'subtitlingStyling.renderResolutionVideo' => 'Resolução do vídeo',
			'mpvConfig.title' => 'mpv.conf',
			'mpvConfig.description' => 'Configurações avançadas do reprodutor de vídeo',
			'mpvConfig.presets' => 'Predefinições',
			'mpvConfig.noPresets' => 'Nenhuma predefinição salva',
			'mpvConfig.saveAsPreset' => 'Salvar como Predefinição...',
			'mpvConfig.presetName' => 'Nome da Predefinição',
			'mpvConfig.presetNameHint' => 'Insira um nome para esta predefinição',
			'mpvConfig.loadPreset' => 'Carregar',
			'mpvConfig.deletePreset' => 'Excluir',
			'mpvConfig.presetSaved' => 'Predefinição salva',
			'mpvConfig.presetLoaded' => 'Predefinição carregada',
			'mpvConfig.presetDeleted' => 'Predefinição excluída',
			'mpvConfig.confirmDeletePreset' => 'Tem certeza de que deseja excluir esta predefinição?',
			'mpvConfig.configPlaceholder' => 'gpu-api=vulkan\nhwdec=auto\n# comment',
			'mpvConfig.lineHint' => 'option=value',
			'mpvConfig.addLine' => 'Adicionar linha',
			'mpvConfig.removeLine' => 'Remover linha',
			'mpvConfig.embeddedVoHint' => 'vo, gpu-context e gpu-api são ignorados no Linux: o vídeo incorporado é sempre renderizado via vo=libmpv no plano de vídeo, e gpu-next (necessário para shaders de computação como ArtCNN) não pode ser executado incorporado.',
			'dialog.confirmAction' => 'Confirmar Ação',
			'profiles.manageProfiles' => 'Gerenciar perfis',
			'profiles.quickAccess' => 'Acesso rápido',
			'profiles.signOutDevice' => 'Sair deste dispositivo',
			'profiles.addLurokaProfile' => 'Adicionar perfil Luroka',
			'profiles.switchingProfile' => 'Mudando perfil…',
			'profiles.deleteThisProfileTitle' => 'Excluir este perfil?',
			'profiles.deleteThisProfileMessage' => ({required Object displayName}) => 'Remover ${displayName}. As conexões não serão afetadas.',
			'profiles.active' => 'Ativo',
			'profiles.manage' => 'Gerenciar',
			'profiles.delete' => 'Excluir',
			'profiles.signOut' => 'Sair',
			'profiles.signOutPlexTitle' => 'Sair do Plex?',
			'profiles.signOutPlexMessage' => ({required Object displayName}) => 'Remover ${displayName} e todos os usuários do Plex Home? Você pode entrar novamente quando quiser.',
			'profiles.signOutPlexDeleteDownloads' => 'Exclua também downloads',
			'profiles.signOutPlexDeleteDownloadsDescription' => 'Caso contrário, eles permanecerão neste dispositivo e voltarão quando você fizer login novamente nesta conta.',
			'profiles.signedOutPlex' => 'Saiu do Plex.',
			'profiles.signOutFailed' => 'Falha ao sair.',
			'profiles.sectionTitle' => 'Perfis',
			'profiles.summarySingle' => 'Adicione perfis para combinar usuários gerenciados e identidades locais',
			'profiles.summaryMultipleWithActive' => ({required Object count, required Object activeName}) => '${count} perfis · ativo: ${activeName}',
			'profiles.summaryMultiple' => ({required Object count}) => '${count} perfis',
			'profiles.removeConnectionTitle' => 'Remover conexão?',
			'profiles.removeConnectionMessage' => ({required Object displayName, required Object connectionLabel}) => 'Remover acesso de ${displayName} a ${connectionLabel}. Outros perfis mantêm o acesso.',
			'profiles.deleteProfileTitle' => 'Excluir perfil?',
			'profiles.deleteProfileMessage' => ({required Object displayName}) => 'Remover ${displayName} e suas conexões. Servidores continuam disponíveis.',
			'profiles.profileNameLabel' => 'Nome do perfil',
			'profiles.pinProtectionLabel' => 'Proteção por PIN',
			'profiles.pinManagedByPlex' => 'PIN gerenciado pelo Plex. Edite em plex.tv.',
			'profiles.noPinSetEditOnPlex' => 'Nenhum PIN definido. Para exigir um, edite o usuário do Plex Home em plex.tv.',
			'profiles.setPin' => 'Definir PIN',
			'profiles.setPinTitle' => 'Definir PIN',
			'profiles.confirmPinTitle' => 'Confirmar PIN',
			'profiles.pinSet' => 'PIN definido',
			'profiles.changePin' => 'Alterar',
			'profiles.removePin' => 'Remover',
			'profiles.connectionsLabel' => 'Conexões',
			'profiles.add' => 'Adicionar',
			'profiles.deleteProfileButton' => 'Excluir perfil',
			'profiles.noConnectionsHint' => 'Sem conexões — adicione uma para usar este perfil.',
			'profiles.noConnections' => 'Sem conexões',
			'profiles.plexHomeAccount' => 'Conta Plex Home',
			'profiles.plexAccountChip' => ({required Object account}) => 'Conta Plex: ${account}',
			'profiles.plexAccountUserChip' => ({required Object user, required Object account}) => '${user} via ${account}',
			'profiles.connectionDefault' => 'Padrão',
			'profiles.connectionAs' => ({required Object displayName}) => 'como ${displayName}',
			'profiles.makeDefault' => 'Definir como padrão',
			'profiles.removeConnection' => 'Remover',
			'profiles.profileRenamed' => 'Perfil renomeado.',
			'profiles.borrowAddTo' => ({required Object displayName}) => 'Adicionar a ${displayName}',
			'profiles.borrowExplain' => 'Use a conexão de outro perfil. Perfis protegidos por PIN exigem PIN.',
			'profiles.borrowEmpty' => 'Nenhuma conexão disponível ainda.',
			'profiles.borrowEmptySubtitle' => 'Conecte Plex, Jellyfin ou Emby a outro perfil primeiro.',
			'profiles.borrowLoadFailed' => 'Não foi possível carregar as conexões disponíveis. Tente novamente.',
			'profiles.borrowFromProfile' => ({required Object displayName}) => 'De ${displayName}',
			'profiles.borrowConnectionBorrowed' => 'Conexão adicionada ao perfil.',
			'profiles.borrowFailed' => 'Não foi possível adicionar a conexão.',
			'profiles.incorrectPin' => 'PIN incorreto.',
			'profiles.incorrectPinTryAgain' => 'PIN incorreto. Tente novamente.',
			'profiles.sourceProfileMissingParentAccount' => 'O perfil de origem não tem a conta principal.',
			'profiles.failedToLoadHomeUsers' => 'Não foi possível carregar os usuários do Plex Home. Verifique sua conexão e tente novamente.',
			'profiles.failedToVerifyPin' => 'Não foi possível verificar o PIN.',
			'profiles.newProfile' => 'Novo perfil',
			'profiles.profileNameHint' => 'Ex.: Visitantes, Crianças, Sala de família',
			'profiles.pinProtectionOptional' => 'Proteção por PIN (opcional)',
			'profiles.pinExplain' => 'PIN de 4 dígitos necessário para trocar perfis.',
			'profiles.continueButton' => 'Continuar',
			'profiles.pinsDontMatch' => 'Os PINs não correspondem',
			'profiles.tokenIdentityMismatch' => 'O token do perfil do Plex foi associado a um servidor inesperado',
			'connections.sectionTitle' => 'Conexões',
			'connections.addConnection' => 'Adicionar conexão',
			'connections.addConnectionSubtitleNoProfile' => 'Entre com Plex ou conecte um servidor Jellyfin ou Emby',
			'connections.addConnectionSubtitleScoped' => ({required Object displayName}) => 'Adicionar a ${displayName}: Plex, Jellyfin, Emby ou outra conexão de perfil',
			'connections.sessionExpiredOne' => ({required Object name}) => 'Sessão de ${name} expirada',
			'connections.sessionExpiredMany' => ({required Object count}) => 'Sessões expiradas em ${count} servidores',
			'connections.accessDeniedOne' => ({required Object name}) => '${name} negou acesso a esta conta',
			'connections.accessDeniedMany' => ({required Object count}) => '${count} servidores negaram acesso a esta conta',
			'connections.signInAgain' => 'Entrar novamente',
			'connections.editMediaBrowserTitle' => ({required Object product}) => 'Editar conexão do ${product}',
			'connections.editMediaBrowserIntro' => ({required Object serverName}) => 'Adicione ou remova URLs para ${serverName}. O Luroka usará a URL acessível com menor latência.',
			'serversAccounts.title' => 'Servidores e contas',
			'serversAccounts.subtitle' => 'Status de login para seus servidores Plex, Jellyfin e Emby',
			'serversAccounts.online' => 'On-line',
			'serversAccounts.offline' => 'Off-line',
			'serversAccounts.unknown' => 'Não conectado aqui',
			'serversAccounts.usedByNone' => 'Não usado por nenhum perfil',
			'serversAccounts.usedByOne' => ({required Object name}) => 'Usado por ${name}',
			'serversAccounts.usedByMany' => ({required Object name, required Object count}) => 'Usado por ${name} e ${count} mais',
			'serversAccounts.serversOnline' => ({required Object online, required Object total}) => '${online} de servidores ${total} on-line',
			'serversAccounts.noServers' => 'Nada conectado ainda. Adicione sua conta Plex ou um servidor Jellyfin ou Emby.',
			'serversAccounts.editUrls' => 'Editar URLs do servidor',
			'accountPreferences.sectionTitle' => 'Preferências da conta',
			'accountPreferences.hubSubtitleSingle' => ({required Object account}) => 'Opções de áudio, legendas e biblioteca salvas em ${account}',
			'accountPreferences.hubSubtitleMultiple' => ({required Object count}) => 'Opções de áudio, legendas e biblioteca salvas em ${count} contas',
			'accountPreferences.pickAccount' => 'Cada conta armazena suas próprias preferências. Escolha a que deseja editar.',
			'accountPreferences.storedOnAccount' => 'Essas opções são salvas na conta do servidor e compartilhadas por cada perfil e aplicativo Luroka que usa essa conta, inclusive em outros dispositivos.',
			'accountPreferences.noAccounts' => 'Nenhuma conta para configurar',
			'accountPreferences.noAccountsHint' => 'Entre no Plex ou conecte um servidor Jellyfin ou Emby, e as preferências armazenadas nessa conta aparecerão aqui.',
			'accountPreferences.unavailable' => 'Não foi possível acessar esta conta',
			'accountPreferences.loadFailed' => 'Não foi possível carregar estas preferências',
			'accountPreferences.noPreference' => 'Sem preferência',
			'accountPreferences.notSet' => 'Não definido',
			'accountPreferences.groups.audioAndSubtitles' => 'Áudio e legendas',
			'accountPreferences.groups.libraryDisplay' => 'Biblioteca',
			'accountPreferences.groups.personalMedia' => 'Mídia pessoal',
			'accountPreferences.preferredAudioLanguage' => 'Idioma de áudio preferido',
			'accountPreferences.autoSelectAudio' => 'Escolher áudio pelo idioma',
			'accountPreferences.autoSelectAudioDescription' => 'Desativado mantém a faixa de áudio que o arquivo marca como padrão.',
			'accountPreferences.preferredSubtitleLanguage' => 'Idioma de legenda preferido',
			'accountPreferences.subtitleMode' => 'Ativar legendas',
			'accountPreferences.subtitleModes.none' => 'Seleção manual',
			'accountPreferences.subtitleModes.noneDescription' => 'Nunca ativar legendas por conta própria.',
			'accountPreferences.subtitleModes.defaultMode' => 'Seguir as marcações da faixa',
			'accountPreferences.subtitleModes.defaultModeDescription' => 'Usar as marcações padrão e forçada armazenadas em cada faixa de legenda.',
			'accountPreferences.subtitleModes.always' => 'Sempre ativado',
			'accountPreferences.subtitleModes.alwaysDescription' => 'Ativar uma faixa de legenda no idioma preferido sempre que houver uma.',
			'accountPreferences.subtitleModes.onlyForced' => 'Apenas legendas forçadas',
			'accountPreferences.subtitleModes.onlyForcedDescription' => 'Carregar apenas as faixas marcadas como forçadas.',
			'accountPreferences.subtitleModes.smart' => 'Exibir com áudio estrangeiro',
			'accountPreferences.subtitleModes.smartDescription' => 'Ativar legendas apenas quando o áudio estiver em outro idioma.',
			'accountPreferences.subtitleAccessibility' => 'Legendas SDH',
			'accountPreferences.subtitleAccessibilityOptions.preferNonSdh' => 'Preferir legendas não SDH',
			'accountPreferences.subtitleAccessibilityOptions.preferSdh' => 'Preferir legendas SDH',
			'accountPreferences.subtitleAccessibilityOptions.onlySdh' => 'Apenas legendas SDH',
			'accountPreferences.subtitleAccessibilityOptions.onlyNonSdh' => 'Apenas legendas não SDH',
			'accountPreferences.forcedSubtitles' => 'Legendas forçadas',
			'accountPreferences.forcedSubtitleOptions.preferNonForced' => 'Preferir legendas não forçadas',
			'accountPreferences.forcedSubtitleOptions.preferForced' => 'Preferir legendas forçadas',
			'accountPreferences.forcedSubtitleOptions.onlyForced' => 'Apenas legendas forçadas',
			'accountPreferences.forcedSubtitleOptions.onlyNonForced' => 'Apenas legendas não forçadas',
			'accountPreferences.displayMissingEpisodes' => 'Mostrar episódios ausentes',
			'accountPreferences.displayMissingEpisodesDescription' => 'Listar episódios que o servidor conhece, mas para os quais não há arquivo.',
			'accountPreferences.hidePlayedInLatest' => 'Ocultar itens assistidos em Recentes',
			'accountPreferences.hidePlayedInLatestDescription' => 'Manter fora das linhas Recentes do servidor os itens que você já assistiu.',
			'accountPreferences.displayCollectionsView' => 'Mostrar a visualização de Coleções',
			'accountPreferences.displayCollectionsViewDescription' => 'Oferecer a visualização de Coleções do servidor junto às suas bibliotecas.',
			'accountPreferences.rewatchingInNextUp' => 'Manter séries reassistidas em A seguir',
			'accountPreferences.rewatchingInNextUpDescription' => 'Ao terminar uma série, comece a assistir de novo e A seguir acompanha a reexibição em vez de remover a série.',
			'accountPreferences.watchedIndicator' => 'Indicadores de assistido',
			'accountPreferences.watchedIndicatorOptions.none' => 'Nunca',
			'accountPreferences.watchedIndicatorOptions.moviesAndShows' => 'Filmes e séries de TV',
			'accountPreferences.watchedIndicatorOptions.movies' => 'Apenas filmes',
			'accountPreferences.watchedIndicatorOptions.shows' => 'Apenas séries de TV',
			'accountPreferences.mediaReviewsVisibility' => 'Avaliações e resenhas',
			'accountPreferences.mediaReviewsOptions.usersAndCritics' => 'Usuários e críticos',
			'accountPreferences.mediaReviewsOptions.usersOnly' => 'Apenas usuários',
			'accountPreferences.mediaReviewsOptions.criticsOnly' => 'Apenas críticos',
			'accountPreferences.mediaReviewsOptions.nobody' => 'Oculto',
			'discover.title' => 'Descobrir',
			'discover.noContentAvailable' => 'Nenhum conteúdo disponível',
			'discover.addMediaToLibraries' => 'Adicione mídias às suas bibliotecas',
			'discover.continueWatching' => 'Continuar Assistindo',
			'discover.continueWatchingIn' => ({required Object library}) => 'Continuar assistindo em ${library}',
			'discover.nextUp' => 'A seguir',
			'discover.nextUpIn' => ({required Object library}) => 'A seguir em ${library}',
			'discover.recentlyAdded' => 'Adicionados recentemente',
			'discover.recentlyAddedIn' => ({required Object library}) => 'Adicionados recentemente em ${library}',
			'discover.latestAlbumsIn' => ({required Object library}) => 'Álbuns mais recentes em ${library}',
			'discover.recentlyPlayedIn' => ({required Object library}) => 'Reproduzidos recentemente em ${library}',
			'discover.mostPlayedIn' => ({required Object library}) => 'Mais reproduzidos em ${library}',
			'discover.playEpisode' => ({required Object season, required Object episode}) => 'S${season}E${episode}',
			'discover.overview' => 'Sinopse',
			'discover.cast' => 'Elenco',
			'discover.extras' => 'Trailers e extras',
			'discover.studio' => 'Estúdio',
			'discover.rating' => 'Avaliação',
			'discover.director' => 'Diretor',
			'discover.directors' => 'Diretores',
			'discover.movie' => 'Filme',
			'discover.tvShow' => 'Série de TV',
			'discover.minutesLeft' => ({required Object minutes}) => '${minutes} min restantes',
			'discover.moreLikeThis' => 'Títulos semelhantes',
			'discover.titleCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n, one: '${n} título', other: '${n} títulos', ), 
			'discover.person.born' => 'Nascido',
			'discover.person.died' => 'Morreu',
			'discover.person.birthplace' => 'Local de nascimento',
			'discover.person.dateWithAge' => ({required Object date, required Object age}) => '${date} (idade ${age})',
			'discover.person.dateWithAgeAtDeath' => ({required Object date, required Object age}) => '${date} (idade ${age})',
			'errors.searchFailed' => ({required Object error}) => 'Falha na busca: ${error}',
			'errors.searchUnavailable' => 'A busca não conseguiu alcançar nenhum servidor de mídia.',
			'errors.connectionTimeout' => ({required Object context}) => 'Tempo de conexão esgotado ao carregar ${context}',
			'errors.connectionFailed' => 'Não foi possível conectar ao servidor de mídia',
			'errors.unableToLoad' => ({required Object context}) => 'Não foi possível carregar ${context}. Tente novamente.',
			'errors.noClientAvailable' => 'Nenhum cliente disponível',
			'errors.pleaseEnterToken' => 'Insira um token',
			'errors.invalidToken' => 'Token inválido',
			'errors.failedToVerifyToken' => ({required Object error}) => 'Falha ao verificar token: ${error}',
			'errors.failedToSwitchProfile' => ({required Object displayName}) => 'Falha ao trocar para ${displayName}',
			'errors.failedToDeleteProfile' => ({required Object displayName}) => 'Falha ao excluir ${displayName}',
			'errors.failedToRate' => 'Não foi possível atualizar a classificação',
			'errors.reasonTimedOut' => 'o tempo de conexão se esgotou',
			'errors.reasonUnreachable' => 'não foi possível alcançar o servidor',
			'errors.reasonRefused' => 'o servidor recusou a solicitação',
			'errors.reasonNotFound' => 'o item não está mais no servidor',
			'errors.reasonServerError' => 'o servidor relatou um erro',
			'errors.reasonCancelled' => 'a solicitação foi cancelada',
			'errors.reasonUnexpected' => 'ocorreu um erro inesperado',
			'libraries.title' => 'Bibliotecas',
			'libraries.fallbackTitle' => 'Biblioteca',
			'libraries.scanLibraryFiles' => 'Escanear Arquivos da Biblioteca',
			'libraries.scanLibrary' => 'Escanear Biblioteca',
			'libraries.analyze' => 'Analisar',
			'libraries.analyzeLibrary' => 'Analisar Biblioteca',
			'libraries.refreshMetadata' => 'Atualizar Metadados',
			'libraries.emptyTrash' => 'Esvaziar Lixeira',
			'libraries.emptyingTrash' => ({required Object title}) => 'Esvaziando lixeira de "${title}"...',
			'libraries.trashEmptied' => ({required Object title}) => 'Lixeira esvaziada de "${title}"',
			'libraries.failedToEmptyTrash' => ({required Object error}) => 'Falha ao esvaziar lixeira: ${error}',
			'libraries.analyzing' => ({required Object title}) => 'Analisando "${title}"...',
			'libraries.analysisStarted' => ({required Object title}) => 'Análise iniciada para "${title}"',
			'libraries.failedToAnalyze' => ({required Object error}) => 'Falha ao analisar biblioteca: ${error}',
			'libraries.noLibrariesFound' => 'Nenhuma biblioteca encontrada',
			'libraries.allLibrariesHidden' => 'Todas as bibliotecas estão ocultas',
			'libraries.hiddenLibrariesCount' => ({required Object count}) => 'Bibliotecas ocultas (${count})',
			'libraries.thisLibraryIsEmpty' => 'Esta biblioteca está vazia',
			'libraries.noItemsMatchFilters' => 'Nenhum item corresponde aos filtros ativos',
			'libraries.resetFilters' => 'Redefinir filtros',
			'libraries.all' => 'Todos',
			'libraries.clearAll' => 'Limpar tudo',
			'libraries.scanLibraryConfirm' => ({required Object title}) => 'Tem certeza de que deseja escanear "${title}"?',
			'libraries.analyzeLibraryConfirm' => ({required Object title}) => 'Tem certeza de que deseja analisar "${title}"?',
			'libraries.refreshMetadataConfirm' => ({required Object title}) => 'Tem certeza de que deseja atualizar os metadados de "${title}"?',
			'libraries.emptyTrashConfirm' => ({required Object title}) => 'Tem certeza de que deseja esvaziar a lixeira de "${title}"?',
			'libraries.manageLibraries' => 'Gerenciar Bibliotecas',
			'libraries.sort' => 'Ordenar',
			'libraries.sortBy' => 'Ordenar por',
			'libraries.filters' => 'Filtros',
			'libraries.confirmActionMessage' => 'Tem certeza de que deseja realizar esta ação?',
			'libraries.showLibrary' => 'Mostrar biblioteca',
			'libraries.hideLibrary' => 'Ocultar biblioteca',
			'libraries.libraryOptions' => 'Opções da biblioteca',
			'libraries.content' => 'conteúdo da biblioteca',
			'libraries.selectLibrary' => 'Selecionar biblioteca',
			'libraries.filtersWithCount' => ({required Object count}) => 'Filtros (${count})',
			'libraries.noRecommendations' => 'Nenhuma recomendação disponível',
			'libraries.noCollections' => 'Nenhuma coleção nesta biblioteca',
			'libraries.noFoldersFound' => 'Nenhuma pasta encontrada',
			'libraries.folders' => 'pastas',
			'libraries.tabs.recommended' => 'Recomendados',
			'libraries.tabs.browse' => 'Navegar',
			'libraries.tabs.collections' => 'Coleções',
			'libraries.tabs.playlists' => 'Playlists',
			'libraries.groupings.title' => 'Agrupamento',
			'libraries.groupings.all' => 'Todos',
			'libraries.groupings.movies' => 'Filmes',
			'libraries.groupings.shows' => 'Séries de TV',
			'libraries.groupings.seasons' => 'Temporadas',
			'libraries.groupings.episodes' => 'Episódios',
			'libraries.groupings.artists' => 'Artistas',
			'libraries.groupings.albums' => 'Álbuns',
			'libraries.groupings.tracks' => 'Faixas',
			'libraries.groupings.folders' => 'Pastas',
			'libraries.filterCategories.genre' => 'Gênero',
			'libraries.filterCategories.year' => 'Ano',
			'libraries.filterCategories.contentRating' => 'Classificação indicativa',
			'libraries.filterCategories.tag' => 'Tag',
			'libraries.filterCategories.unwatched' => 'Não assistidos',
			'libraries.filterCategories.unplayed' => 'Não reproduzidos',
			'libraries.filterCategories.favorites' => 'Favoritos',
			'libraries.filterCategories.filePath' => 'Caminho do arquivo',
			'libraries.sortLabels.title' => 'Título',
			'libraries.sortLabels.dateAdded' => 'Data de adição',
			'libraries.sortLabels.releaseDate' => 'Data de lançamento',
			'libraries.sortLabels.rating' => 'Avaliação',
			'libraries.sortLabels.communityRating' => 'Avaliação da comunidade',
			'libraries.sortLabels.criticRating' => 'Avaliação da crítica',
			'libraries.sortLabels.userRating' => 'Avaliação do usuário',
			'libraries.sortLabels.datePlayed' => 'Data de reprodução',
			'libraries.sortLabels.playCount' => 'Reproduções',
			'libraries.sortLabels.productionYear' => 'Ano de produção',
			'libraries.sortLabels.runtime' => 'Duração',
			'libraries.sortLabels.officialRating' => 'Classificação oficial',
			'libraries.sortLabels.premiereDate' => 'Data de estreia',
			'libraries.sortLabels.startDate' => 'Data de início',
			'libraries.sortLabels.airTime' => 'Horário de exibição',
			'libraries.sortLabels.studio' => 'Estúdio',
			'libraries.sortLabels.random' => 'Aleatório',
			'libraries.sortLabels.dateShared' => 'Data de compartilhamento',
			'libraries.sortLabels.latestEpisodeAirDate' => 'Última data de exibição do episódio',
			'libraries.sortLabels.lastEpisodeDateAdded' => 'Data de adição do último episódio',
			_ => null,
		} ?? switch (path) {
			'libraries.sortLabels.dateDownloaded' => 'Data de download',
			'libraries.sortLabels.size' => 'Tamanho',
			'libraries.sortLabels.library' => 'Biblioteca',
			'libraries.advancedFilters.include' => 'Incluir',
			'libraries.advancedFilters.exclude' => 'Excluir',
			'libraries.advancedFilters.any' => 'Qualquer',
			'libraries.advancedFilters.yes' => 'Sim',
			'libraries.advancedFilters.no' => 'Não',
			'libraries.advancedFilters.not' => ({required Object value}) => 'Não ${value}',
			'libraries.advancedFilters.valueCount' => ({required Object count}) => '${count} selecionado',
			'libraries.advancedFilters.valueCountExcluded' => ({required Object count}) => '${count} excluído',
			'libraries.advancedFilters.searchValues' => 'Valores de pesquisa',
			'libraries.advancedFilters.noValues' => 'Sem valores',
			'libraries.advancedFilters.matchContains' => 'Contém',
			'libraries.advancedFilters.matchNotContains' => 'Não contém',
			'libraries.advancedFilters.matchIs' => 'É',
			'libraries.advancedFilters.matchIsNot' => 'Não é',
			'libraries.advancedFilters.matchBeginsWith' => 'Começa com',
			'libraries.advancedFilters.matchEndsWith' => 'Termina com',
			'libraries.advancedFilters.textHint' => 'Digite para combinar',
			'libraries.advancedFilters.from' => 'De',
			'libraries.advancedFilters.to' => 'Para',
			'libraries.advancedFilters.range' => ({required Object from, required Object to}) => '${from} para ${to}',
			'libraries.advancedFilters.atLeast' => ({required Object value}) => '${value} e superior',
			'libraries.advancedFilters.atMost' => ({required Object value}) => 'Até ${value}',
			'libraries.advancedFilters.dateLastDays' => ({required Object count}) => 'Últimos dias ${count}',
			'libraries.advancedFilters.dateLastYear' => 'Ano passado',
			'libraries.advancedFilters.dateOlderThanDays' => ({required Object count}) => 'Mais de ${count} dias',
			'libraries.advancedFilters.dateOlderThanYear' => 'Mais de um ano',
			'about.title' => 'Sobre',
			'about.openSourceLicenses' => 'Licenças de código aberto',
			'about.versionLabel' => ({required Object version}) => 'Versão ${version}',
			'about.appDescription' => 'Um belo cliente de Plex, Jellyfin e Emby feito com Flutter',
			'about.customSource' => 'Código fonte',
			'about.basedOnLuroka' => 'Construído na base de código Plezy',
			'about.viewLicensesDescription' => 'Ver as licenças de bibliotecas de terceiros',
			'about.appSection' => 'Aplicativo',
			'about.communitySection' => 'Comunidade',
			'about.creditsSection' => 'Créditos',
			'about.legalSection' => 'Jurídico',
			'about.versionMeta' => ({required Object version, required Object build, required Object platform}) => 'v${version} (${build}) · ${platform}',
			'about.versionMetaNoBuild' => ({required Object version, required Object platform}) => 'v${version} · ${platform}',
			'about.versionUnavailable' => 'Versão indisponível',
			'about.versionDetails' => 'Detalhes da versão',
			'about.versionDetailsTitle' => ({required Object version, required Object build}) => 'Luroka ${version} (${build})',
			'about.platformLine' => ({required Object platform}) => 'Plataforma: ${platform}',
			'about.deviceLine' => ({required Object model}) => 'Dispositivo: ${model}',
			'about.packageLine' => ({required Object package}) => 'Pacote: ${package}',
			'about.localeLine' => ({required Object locale}) => 'Idioma: ${locale}',
			'about.copyDetails' => 'Copiar detalhes',
			'about.detailsCopied' => 'Detalhes do aplicativo copiados',
			'about.detailsCopyFailed' => 'Não foi possível copiar os detalhes do app',
			'about.checkForUpdatesDescription' => 'Verifique o GitHub para uma versão mais recente',
			'about.checkingForUpdates' => 'Verificando atualizações…',
			'about.whatsNew' => 'O que há de novo',
			'about.releaseNotesUnavailable' => 'Nenhuma nota de lançamento está disponível.',
			'about.sourceCodeDescription' => 'Luroka no GitHub',
			'about.reportIssue' => 'Informar um problema',
			'about.reportIssueDescription' => 'Conte-nos o que deu errado',
			'about.documentation' => 'Documentação',
			'about.documentationDescription' => 'Configuração, recursos e notas de construção',
			'about.upstreamProjectDescription' => 'Projeto de código aberto por edde746 e colaboradores',
			'about.upstreamWebsite' => 'Site a montante',
			'about.attribution' => 'Dados e atribuição',
			'about.attributionDescription' => 'Metadados, classificações e marcas registradas',
			'about.attributionBody' => 'Este produto usa TMDB API, mas não é endossado ou certificado por TMDB. Listas de popularidade, metadados e classificações IMDb são fornecidas pela Cinemeta. As pontuações mantêm seus rótulos de origem.',
			'about.trademarkNotices' => 'Plex, Jellyfin, Emby, Trakt, Simkl, MyAnimeList, AniList, TMDB e marcas relacionadas são marcas registradas de seus respectivos proprietários. Luroka não é afiliado ou endossado por eles.',
			'about.privacyPolicy' => 'Política de privacidade',
			'about.privacyPolicyDescription' => 'Como seus dados são tratados',
			'about.gplLicense' => 'Licença GNU GPL-3.0',
			'about.gplLicenseDescription' => 'Luroka é software livre',
			'about.linkOpenFailed' => 'Não foi possível abrir este link',
			'about.opensInBrowser' => 'Abre no seu navegador',
			'about.footer' => 'Luroka é um software livre sob GPL-3.0.',
			'about.copyright' => ({required Object year}) => '© ${year} Luroka contribuidores',
			'serverSelection.noServersFoundForAccount' => ({required Object username, required Object email}) => 'Nenhum servidor encontrado para ${username} (${email})',
			'serverSelection.failedToLoadServers' => ({required Object error}) => 'Falha ao carregar servidores: ${error}',
			'serverSelection.noValidServers' => 'Nenhum servidor utilizável foi encontrado nesta conta',
			'hubDetail.title' => 'Título',
			'hubDetail.releaseYear' => 'Ano de Lançamento',
			'hubDetail.dateAdded' => 'Data de Adição',
			'hubDetail.rating' => 'Avaliação',
			'hubDetail.noItemsFound' => 'Nenhum item encontrado',
			'logs.clearLogs' => 'Limpar Logs',
			'logs.copyLogs' => 'Copiar Logs',
			'logs.uploadLogs' => 'Enviar Logs',
			'startup.failedTitle' => 'O Luroka não conseguiu iniciar',
			'startup.failedBody' => 'Algo deu errado durante a inicialização. Os detalhes abaixo identificam o que falhou.',
			'startup.failedBodyRepairable' => 'O arquivo de configurações salvo do Luroka está danificado e precisa ser reconstruído antes que o Luroka possa iniciar. Tentar novamente não vai ajudar — escolha Reparar armazenamento.',
			'startup.phaseLabel' => 'Etapa',
			'startup.showDetails' => 'Mostrar detalhes',
			'startup.hideDetails' => 'Ocultar detalhes',
			'startup.copyDetails' => 'Copiar detalhes',
			'startup.detailsCopied' => 'Detalhes copiados para a área de transferência',
			'startup.uploadDetails' => 'Enviar detalhes',
			'startup.repairStorage' => 'Reparar armazenamento',
			'startup.repairTitle' => 'Reparar dados armazenados?',
			'startup.repairBodyCommon' => 'O arquivo de configurações do Luroka está danificado e não pode ser lido. Reparar redefine todas as configurações para o padrão.',
			'startup.repairBodyOneCredential' => 'Um login salvo está danificado e não pode ser lido. Reparar remove apenas ele; suas outras configurações permanecem intactas.',
			'startup.repairBodySignInsKept' => 'Seus servidores e perfis devem permanecer conectados.',
			'startup.repairBodySignInsLost' => 'A chave que protege seus logins salvos não pode ser recuperada deste arquivo, então você terá que entrar novamente em todos os servidores e perfis. Nada no seu servidor de mídia é afetado.',
			'startup.repairBodySessionsUncertain' => 'Os rastreadores (MAL, AniList, Simkl, Trakt) e o Seerr são armazenados separadamente e podem ou não ser preservados. O Luroka informará exatamente o que foi mantido.',
			'startup.repairConfirm' => 'Reparar',
			'startup.repairSucceeded' => 'Armazenamento reparado',
			'startup.repairNeedsRestart' => 'Armazenamento reparado — reinício necessário',
			'startup.restartRequiredBody' => 'Seus dados foram reparados, mas o Luroka precisa iniciar do zero antes de usá-los. Feche o Luroka e abra-o novamente.',
			'startup.quitLuroka' => 'Sair do Luroka',
			'startup.repairFailed' => 'Falha no reparo',
			'startup.repairKeptSignIns' => 'Seus servidores e perfis ainda estão conectados.',
			'startup.repairLostSignIns' => 'A chave que protege seus logins salvos não pôde ser recuperada. Você terá que entrar novamente em todos os servidores e perfis.',
			'startup.repairLostSessions' => 'Pelo menos uma conexão de rastreador ou do Seerr foi perdida e precisa ser reconectada.',
			'startup.backupTitle' => 'Uma cópia do arquivo danificado foi mantida',
			'startup.backupWarning' => 'Ele contém suas credenciais de login. Não envie nem compartilhe.',
			'startup.deleteBackup' => 'Excluir cópia',
			'startup.backupDeleted' => 'Cópia excluída.',
			'startup.previousFailureTitle' => 'O Luroka falhou ao iniciar da última vez',
			'licenses.relatedPackages' => 'Pacotes Relacionados',
			'licenses.license' => 'Licença',
			'licenses.licenseNumber' => ({required Object number}) => 'Licença ${number}',
			'licenses.licensesCount' => ({required Object count}) => '${count} licenças',
			'licenses.searchHint' => 'Pesquisar pacotes',
			'licenses.noResults' => ({required Object query}) => 'Nenhum pacote corresponde a "${query}"',
			'licenses.clearSearch' => 'Limpar pesquisa',
			'navigation.libraries' => 'Bibliotecas',
			'navigation.downloads' => 'Downloads',
			'navigation.liveTv' => 'TV ao Vivo',
			'navigation.explore' => 'Explorar',
			'explore.title' => 'Explorar',
			'explore.selectSource' => 'Selecionar fonte',
			'explore.rows.watchlist' => 'Lista para assistir',
			'explore.rows.recommendedMovies' => 'Filmes recomendados',
			'explore.rows.recommendedShows' => 'Séries recomendadas',
			'explore.rows.trendingMovies' => 'Filmes em alta',
			'explore.rows.trendingShows' => 'Séries em alta',
			'explore.rows.popularMovies' => 'Filmes populares',
			'explore.rows.popularShows' => 'Séries populares',
			'explore.rows.trendingAnime' => 'Anime em alta',
			'explore.rows.suggestedAnime' => 'Anime sugerido',
			'explore.rows.airingAnime' => 'Melhores animes em exibição',
			'explore.rows.popularAnime' => 'Anime mais popular',
			'explore.rows.trending' => 'Em alta',
			'explore.rows.upcomingMovies' => 'Próximos filmes',
			'explore.rows.upcomingShows' => 'Próximas séries',
			'explore.status.airing' => 'Em exibição',
			'explore.status.ended' => 'Finalizada',
			'explore.status.canceled' => 'Cancelada',
			'explore.status.upcoming' => 'Em breve',
			'explore.episodeCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n, one: '${n} episódio', other: '${n} episódios', ), 
			'explore.cast' => 'Elenco',
			'explore.characters' => 'Personagens',
			'explore.addToWatchlist' => 'Adicionar à lista para assistir',
			'explore.removeFromWatchlist' => 'Remover da lista para assistir',
			'explore.addedToWatchlist' => 'Adicionado à lista de interesses',
			'explore.removedFromWatchlist' => 'Removido da lista de interesses',
			'explore.watchlistUpdateFailed' => 'Não foi possível atualizar a lista para assistir',
			'explore.watchlistNoMatch' => 'Não foi possível associar este item a uma lista de interesses',
			'explore.notInLibrary' => 'Não está na sua biblioteca',
			'explore.inTheseLibraries' => 'Nestas bibliotecas',
			'explore.checkingLibrary' => 'Verificando sua biblioteca...',
			'explore.libraryCheckFailed' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n, one: 'Não foi possível verificar ${n} servidor', other: 'Não foi possível verificar ${n} servidores', ), 
			'explore.emptyTitle' => 'Ainda não há nada aqui',
			'explore.emptyMessage' => ({required Object source}) => 'As linhas de ${source} aparecerão aqui quando tiverem conteúdo.',
			'explore.searchHint' => ({required Object source}) => 'Buscar em ${source}',
			'explore.searchEmpty' => ({required Object query}) => 'Nenhum resultado para "${query}"',
			'explore.searchPrompt' => ({required Object source}) => 'Busque filmes e séries em ${source}.',
			'explore.searchFailed' => 'Falha na busca. Verifique sua conexão e tente novamente.',
			'explore.badge.rankPopular' => ({required Object n}) => '#${n} em popularidade',
			'explore.badge.rankAiring' => ({required Object n}) => '#${n} no ar',
			'explore.badge.rankRated' => ({required Object n}) => '#${n} avaliado',
			'explore.badge.rankTrending' => ({required Object n}) => '#${n} em alta',
			'explore.badge.rankSeasonal' => ({required Object n, required Object season}) => '#${n} em ${season}',
			'explore.badge.watchingNow' => ({required Object n}) => '${n} assistindo',
			'explore.badge.available' => 'Disponível',
			'explore.badge.partiallyAvailable' => 'Parcialmente disponível',
			'explore.badge.availableIn4k' => '4K disponível',
			'explore.badge.requested' => 'Solicitado',
			'explore.badge.pendingApproval' => 'Aguardando aprovação',
			'explore.badge.processing' => 'Processando',
			'explore.badge.declined' => 'Recusado',
			'explore.badge.requestFailed' => 'Falha na solicitação',
			'explore.badge.requested4k' => '4K solicitado',
			'explore.badge.seasonsAvailable' => ({required Object available, required Object total}) => '${available}/${total} temporadas',
			'explore.badge.nextEpisodeIn' => ({required Object episode, required Object duration}) => 'Ep ${episode} em ${duration}',
			'explore.badge.nextAiringIn' => ({required Object duration}) => 'Próximo em ${duration}',
			'explore.badge.episodesShort' => ({required Object n}) => '${n} epps',
			'explore.badge.minutesPerEpisode' => ({required Object n}) => '${n} min/ep',
			'explore.badge.adult' => '18+',
			'explore.stats.listed' => ({required Object n}) => '${n} listados',
			'explore.stats.viewersDay' => ({required Object n}) => '${n} assistiram hoje',
			'explore.stats.viewersWeek' => ({required Object n}) => '${n} assistiram esta semana',
			'explore.stats.viewersMonth' => ({required Object n}) => '${n} assistiram este mês',
			'explore.stats.viewersYear' => ({required Object n}) => '${n} assistiram este ano',
			'explore.stats.viewersAllTime' => ({required Object n}) => '${n} espectadores',
			'explore.stats.planning' => ({required Object n}) => '${n} pretendem assistir',
			'explore.stats.favorited' => ({required Object n}) => '${n} favoritos',
			'explore.stats.dropRate' => ({required Object percent}) => '${percent} abandonaram',
			'explore.stats.comments' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n, one: '${n} comentário', other: '${n} comentários', ), 
			'explore.stats.votes' => ({required Object n}) => '${n} votos',
			'explore.stats.watching' => ({required Object n}) => '${n} assistindo',
			'explore.stats.completed' => ({required Object n}) => '${n} concluíram',
			'explore.stats.onHold' => ({required Object n}) => '${n} em pausa',
			'explore.stats.dropped' => ({required Object n}) => '${n} abandonaram',
			'explore.season.winter' => 'Inverno',
			'explore.season.spring' => 'Primavera',
			'explore.season.summer' => 'Verão',
			'explore.season.fall' => 'Outono',
			'explore.season.withYear' => ({required Object season, required Object year}) => '${season} ${year}',
			'explore.format.tv' => 'TV',
			'explore.format.tvShort' => 'Curta de TV',
			'explore.format.movie' => 'Filme',
			'explore.format.special' => 'Especial',
			'explore.format.ova' => 'OVA',
			'explore.format.ona' => 'ONA',
			'explore.format.music' => 'Música',
			'explore.format.other' => 'Outro',
			'explore.sourceMaterial.original' => 'Original',
			'explore.sourceMaterial.manga' => 'Mangá',
			'explore.sourceMaterial.lightNovel' => 'Light novel',
			'explore.sourceMaterial.novel' => 'Romance',
			'explore.sourceMaterial.visualNovel' => 'Visual novel',
			'explore.sourceMaterial.game' => 'Jogo',
			'explore.sourceMaterial.webComic' => 'Webcomic',
			'explore.sourceMaterial.musicRelease' => 'Música',
			'explore.sourceMaterial.otherMedia' => 'Outro',
			'explore.creditRole.actor' => 'Ator',
			'explore.creditRole.director' => 'Diretor',
			'explore.creditRole.writer' => 'Roteirista',
			'explore.creditRole.producer' => 'Produtor',
			'explore.creditRole.creator' => 'Criador',
			'explore.creditRole.composer' => 'Compositor',
			'explore.relation.prequel' => 'Prequela',
			'explore.relation.sequel' => 'Sequela',
			'explore.relation.sideStory' => 'História paralela',
			'explore.relation.spinOff' => 'Spin-off',
			'explore.relation.alternativeVersion' => 'Versão alternativa',
			'explore.relation.summary' => 'Resumo',
			'explore.relation.parentStory' => 'História principal',
			'explore.relation.adaptation' => 'Adaptação',
			'explore.relation.other' => 'Relacionado',
			'explore.broadcast' => ({required Object day, required Object time}) => 'Vai ao ar ${day} às ${time}',
			'explore.broadcastWithZone' => ({required Object day, required Object time, required Object timezone}) => 'Vai ao ar ${day} às ${time} ${timezone}',
			'explore.detail.originalTitle' => 'Título original',
			'explore.detail.alsoKnownAs' => 'Também conhecido como',
			'explore.detail.studios' => 'Estúdios',
			'explore.detail.country' => 'País',
			'explore.detail.language' => 'Idioma',
			'explore.detail.released' => 'Lançado',
			'explore.detail.physicalRelease' => 'Em disco',
			'explore.detail.ended' => 'Encerrado',
			'explore.detail.addedOn' => ({required Object date}) => 'Adicionado em ${date}',
			'explore.detail.yourRating' => 'Sua avaliação',
			'explore.detail.budget' => 'Orçamento',
			'explore.detail.revenue' => 'Bilheteria',
			'explore.detail.contentAdvisory' => 'Classificação indicativa',
			'explore.detail.tags' => 'Tags',
			'explore.detail.revealSpoilerTags' => 'Mostrar tags de spoiler',
			'explore.detail.links' => 'Links',
			'explore.detail.watchOn' => 'Assistir em',
			'explore.detail.watchTrailer' => 'Ver trailer',
			'explore.detail.openOn' => ({required Object site}) => 'Abrir em ${site}',
			'explore.detail.crew' => 'Equipe',
			'explore.detail.ratings' => 'Avaliações',
			'explore.detail.schedule' => 'Programação',
			'explore.detail.recommendedByUsers' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n, one: 'Recomendado por ${n} usuário', other: 'Recomendado por ${n} usuários', ), 
			'explore.detail.recommendedBy' => ({required Object who}) => 'Recomendado por ${who}',
			'explore.detail.favoritedBy' => ({required Object who}) => 'Favoritado por ${who}',
			'explore.detail.unairedEpisodes' => ({required Object n}) => '${n} ainda não exibidos',
			'explore.detail.recommendedByPercent' => ({required Object percent}) => 'Recomendado por ${percent} dos espectadores',
			'explore.detail.relatedTitles' => 'Títulos relacionados',
			'explore.detail.background' => 'Contexto',
			'explore.totalResults' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n, one: '${n} resultado', other: '${n} resultados', ), 
			'liveTv.title' => 'TV ao Vivo',
			'liveTv.guide' => 'Guia',
			'liveTv.noChannels' => 'Nenhum canal disponível',
			'liveTv.noDvr' => 'Nenhum DVR configurado em nenhum servidor',
			'liveTv.serverUnavailable' => 'O servidor de TV ao vivo não está disponível.',
			'liveTv.serverNotConnected' => 'O servidor de TV ao vivo não está conectado.',
			'liveTv.noPrograms' => 'Nenhum dado de programação disponível',
			'liveTv.liveStreamFailed' => 'Falha na transmissão ao vivo',
			'liveTv.unknownProgram' => 'Programa desconhecido',
			'liveTv.unknownHub' => 'Desconhecido',
			'liveTv.unknownError' => 'Erro desconhecido',
			'liveTv.channelNumber' => ({required Object number}) => 'Canal ${number}',
			'liveTv.unknownChannel' => 'Canal desconhecido',
			'liveTv.live' => 'AO VIVO',
			'liveTv.reloadGuide' => 'Recarregar Guia',
			'liveTv.searchGuide' => 'Buscar no guia',
			'liveTv.searchHint' => 'Buscar canais e programas',
			'liveTv.searchNoResults' => ({required Object query}) => 'Nenhuma correspondência para "${query}"',
			'liveTv.channelsSection' => 'Canais',
			'liveTv.programsSection' => 'Programas',
			'liveTv.now' => 'Agora',
			'liveTv.today' => 'Hoje',
			'liveTv.tomorrow' => 'Amanhã',
			'liveTv.midnight' => 'Meia-noite',
			'liveTv.overnight' => 'Madrugada',
			'liveTv.morning' => 'Manhã',
			'liveTv.daytime' => 'Dia',
			'liveTv.evening' => 'Noite',
			'liveTv.lateNight' => 'Madrugada',
			'liveTv.whatsOn' => 'O que está passando',
			'liveTv.watchChannel' => 'Assistir ao canal',
			'liveTv.favorites' => 'Favoritos',
			'liveTv.reorderFavorites' => 'Reordenar favoritos',
			'liveTv.noFavoriteChannels' => 'Nenhum canal favorito',
			'liveTv.noFavoriteChannelsHint' => 'Mostre todos os canais e mantenha um canal pressionado para adicioná-lo aos favoritos.',
			'liveTv.showAllChannels' => 'Mostrar todos os canais',
			'liveTv.favoritesLoadFailed' => 'Não foi possível carregar os favoritos. Verifique sua conexão e tente novamente.',
			'liveTv.favoritesUpdateFailed' => 'Não foi possível atualizar os favoritos. Verifique sua conexão e tente novamente.',
			'liveTv.joinSession' => 'Entrar na sessão em andamento',
			'liveTv.watchFromStart' => ({required Object minutes}) => 'Assistir do início (${minutes} min atrás)',
			'liveTv.watchLive' => 'Assistir ao vivo',
			'liveTv.goToLive' => 'Ir para o ponto ao vivo',
			'liveTv.record' => 'Gravar',
			'liveTv.recordEpisode' => 'Gravar episódio',
			'liveTv.recordSeries' => 'Gravar série',
			'liveTv.recordOptions' => 'Opções de gravação',
			'liveTv.saveTo' => 'Salvar em',
			'liveTv.recordings' => 'Gravações',
			'liveTv.scheduledRecordings' => 'Agendadas',
			'liveTv.recordingRules' => 'Regras de gravação',
			'liveTv.noScheduledRecordings' => 'Sem gravações agendadas',
			'liveTv.manageRecording' => 'Gerenciar gravação',
			'liveTv.cancelRecording' => 'Cancelar gravação',
			'liveTv.cancelRecordingTitle' => 'Cancelar esta gravação?',
			'liveTv.cancelRecordingMessage' => ({required Object title}) => '${title} não será mais gravado.',
			'liveTv.deleteRule' => 'Excluir regra',
			'liveTv.deleteRuleTitle' => 'Excluir regra de gravação?',
			'liveTv.deleteRuleMessage' => ({required Object title}) => 'Episódios futuros de ${title} não serão gravados.',
			'liveTv.recordingScheduled' => 'Gravação agendada',
			'liveTv.alreadyScheduled' => 'Este programa já está agendado',
			'liveTv.dvrAdminRequired' => 'As configurações de DVR exigem uma conta de administrador',
			'liveTv.recordingFailed' => 'Não foi possível agendar a gravação',
			'liveTv.recordingTargetMissing' => 'Não foi possível determinar a biblioteca de gravação',
			'liveTv.recordNotAvailable' => 'Gravação indisponível para este programa',
			'liveTv.recordingCancelled' => 'Gravação cancelada',
			'liveTv.recordingRuleDeleted' => 'Regra de gravação excluída',
			'liveTv.processRecordingRules' => 'Reavaliar regras',
			'liveTv.recordingInProgress' => 'Gravando agora',
			'liveTv.recordingsCount' => ({required Object count}) => '${count} agendadas',
			'liveTv.editRule' => 'Editar regra',
			'liveTv.editRuleAction' => 'Editar',
			'liveTv.recordingRuleUpdated' => 'Regra de gravação atualizada',
			'liveTv.guideReloadRequested' => 'Atualização do guia solicitada',
			'liveTv.guideReloadFailed' => 'Não foi possível atualizar o guia',
			'liveTv.rulesProcessRequested' => 'Reavaliação de regras solicitada',
			'liveTv.rulesProcessFailed' => 'Não foi possível reavaliar as regras de gravação',
			'liveTv.recordShow' => 'Gravar programa',
			'liveTv.recordSettings.startEarly' => 'Começar antes (segundos)',
			'liveTv.recordSettings.endLate' => 'Terminar depois (segundos)',
			'liveTv.recordSettings.newOnly' => 'Apenas episódios novos',
			'liveTv.recordSettings.anyChannel' => 'Gravar em qualquer canal',
			'liveTv.recordSettings.anyTime' => 'Gravar a qualquer hora',
			'liveTv.recordSettings.skipInLibrary' => 'Ignorar episódios que já estão na biblioteca',
			'liveTv.recordSettings.keepUpTo' => 'Episódios a manter',
			'liveTv.recordSettings.keepUpToHint' => '0 mantém todos os episódios',
			'liveTv.startingInMinutes' => ({required Object minutes}) => 'Começa em ${minutes} min',
			'liveTv.dayAtTime' => ({required Object day, required Object time}) => '${day} às ${time}',
			'liveTv.invalidPlaybackData' => ({required Object product}) => '${product} retornou dados inválidos de reprodução de TV ao Vivo',
			'liveTv.failedToStartChannel' => 'Não foi possível iniciar o canal ao vivo',
			'liveTv.failedToBuildStreamUrl' => 'Não foi possível gerar a URL da transmissão',
			'liveTv.playbackStartFailed' => ({required Object reason}) => 'Não foi possível iniciar o canal: ${reason}',
			'liveTv.channelSwitchFailed' => ({required Object reason}) => 'Não foi possível trocar de canal: ${reason}',
			'collections.title' => 'Coleções',
			'collections.collection' => 'Coleção',
			'collections.empty' => 'A coleção está vazia',
			'collections.deleteCollection' => 'Excluir Coleção',
			'collections.deleteConfirm' => ({required Object title}) => 'Excluir "${title}"? Não pode ser desfeito.',
			'collections.deleted' => 'Coleção excluída',
			'collections.deleteFailed' => 'Falha ao excluir coleção',
			'collections.deleteFailedWithError' => ({required Object error}) => 'Falha ao excluir coleção: ${error}',
			'collections.selectCollection' => 'Selecionar Coleção',
			'collections.collectionName' => 'Nome da Coleção',
			'collections.enterCollectionName' => 'Insira o nome da coleção',
			'collections.addedToCollection' => 'Adicionado à coleção',
			'collections.errorAddingToCollection' => 'Falha ao adicionar à coleção',
			'collections.created' => 'Coleção criada',
			'collections.removeFromCollection' => 'Remover da coleção',
			'collections.removeFromCollectionConfirm' => ({required Object title}) => 'Remover "${title}" desta coleção?',
			'collections.removedFromCollection' => 'Removido da coleção',
			'collections.removeFromCollectionFailed' => 'Falha ao remover da coleção',
			'collections.removeFromCollectionError' => ({required Object error}) => 'Erro ao remover da coleção: ${error}',
			'collections.searchCollections' => 'Pesquisar coleções...',
			'playlists.title' => 'Playlists',
			'playlists.playlist' => 'Playlist',
			'playlists.noPlaylists' => 'Nenhuma playlist encontrada',
			'playlists.create' => 'Criar Playlist',
			'playlists.playlistName' => 'Nome da Playlist',
			'playlists.enterPlaylistName' => 'Insira o nome da playlist',
			'playlists.delete' => 'Excluir Playlist',
			'playlists.removeItem' => 'Remover da Playlist',
			'playlists.smartPlaylist' => 'Playlist Inteligente',
			'playlists.itemCount' => ({required Object count}) => '${count} itens',
			'playlists.oneItem' => '1 item',
			'playlists.emptyPlaylist' => 'Esta playlist está vazia',
			'playlists.deleteConfirm' => 'Excluir Playlist?',
			'playlists.deleteMessage' => ({required Object name}) => 'Tem certeza de que deseja excluir "${name}"?',
			'playlists.created' => 'Playlist criada',
			'playlists.deleted' => 'Playlist excluída',
			'playlists.itemAdded' => 'Adicionado à playlist',
			'playlists.itemRemoved' => 'Removido da playlist',
			'playlists.selectPlaylist' => 'Selecionar Playlist',
			'playlists.searchPlaylists' => 'Pesquisar playlists...',
			'playlists.errorCreating' => 'Falha ao criar playlist',
			'playlists.errorDeleting' => 'Falha ao excluir playlist',
			'playlists.errorLoading' => 'Falha ao carregar playlists',
			'playlists.errorAdding' => 'Falha ao adicionar à playlist',
			'playlists.errorReordering' => 'Falha ao reordenar item da playlist',
			'playlists.errorRemoving' => 'Falha ao remover da playlist',
			'music.goToAlbum' => 'Ir para o álbum',
			'music.goToArtist' => 'Ir para o artista',
			'music.instantMix' => 'Mix instantâneo',
			'music.playNext' => 'Reproduzir a seguir',
			'music.addToQueue' => 'Adicionar à fila',
			'music.discNumber' => ({required Object n}) => 'Disco ${n}',
			'music.trackCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n, one: '${n} faixa', other: '${n} faixas', ), 
			'music.nowPlaying' => 'Reproduzindo agora',
			'music.playingFrom' => ({required Object title}) => 'Reproduzindo de ${title}',
			'music.queue' => 'Fila',
			'music.clearQueue' => 'Limpar fila',
			'music.lyrics' => 'Letra',
			'music.noLyrics' => 'Nenhuma letra disponível',
			'music.sleepTimer' => 'Temporizador de suspensão',
			'music.sleepTimerEndOfTrack' => 'Fim da faixa',
			'music.sleepTimerMinutes' => ({required Object n}) => '${n} minutos',
			'music.stopPlayback' => 'Parar reprodução',
			'music.previousTrack' => 'Faixa anterior',
			'music.nextTrack' => 'Próxima faixa',
			'music.repeat' => 'Repetir',
			'music.repeatAll' => 'Repetir tudo',
			'music.repeatOne' => 'Repetir uma faixa',
			'music.instantMixNoServer' => 'Nenhum servidor está disponível para uma mistura instantânea',
			'music.instantMixFailed' => 'Falha ao carregar o mix instantâneo',
			'music.instantMixEmpty' => 'O mix instantâneo não retornou nenhuma faixa',
			'music.noAudioUrl' => ({required Object track}) => 'Nenhuma URL de áudio está disponível para ${track}',
			'music.discography.singlesAndEps' => 'Singles e EPs',
			'music.discography.live' => 'Ao vivo',
			'music.discography.compilations' => 'Compilações',
			'watchTogether.title' => 'Assistir Juntos',
			'watchTogether.description' => 'Assista a conteúdos sincronizados com amigos e familiares',
			'watchTogether.createRoom' => 'Criar sala',
			'watchTogether.creatingRoom' => 'Criando sala...',
			'watchTogether.joinRoom' => 'Entrar na sala',
			'watchTogether.joiningRoom' => 'Entrando na sala...',
			'watchTogether.connecting' => 'Conectando...',
			'watchTogether.relayPublic' => 'As salas usam os retransmissores públicos do Open Watch Party.',
			'watchTogether.relayCustom' => ({required Object url}) => 'As salas usam seu relé em ${url}.',
			'watchTogether.recentRooms' => 'Salas recentes',
			'watchTogether.roomActions' => 'Ações da sala',
			'watchTogether.renameRoom' => 'Renomear sala',
			'watchTogether.removeRoom' => 'Remover',
			'watchTogether.enterRoomCode' => 'Insira o código de 6 caracteres do host.',
			'watchTogether.roomCode' => 'Código do quarto',
			'watchTogether.paste' => 'Colar',
			'watchTogether.noCodeInClipboard' => 'A área de transferência não contém um código de sala',
			'watchTogether.copyCode' => 'Copiar código',
			'watchTogether.codeCopied' => 'Código do quarto copiado',
			'watchTogether.shareInvite' => 'Compartilhar convite',
			'watchTogether.qrShare' => 'Compartilhar código QR',
			'watchTogether.qrHint' => 'Digitalize com o aplicativo Luroka para entrar nesta sala.',
			'watchTogether.phasePlaying' => 'Jogando',
			'watchTogether.phasePaused' => 'Pausado',
			'watchTogether.phaseWaiting' => 'Esperando por todos',
			'watchTogether.inviteCopied' => 'Convite copiado. Cole-o em uma mensagem.',
			'watchTogether.inviteMessage' => ({required Object code}) => 'Junte-se à minha sala Watch Together em Luroka: luroka://watch?code=${code} - ou abra Watch Together e digite ${code}.',
			'watchTogether.openSessionControls' => 'Abrir os controles da sessão Assistir Juntos',
			'watchTogether.reconnecting' => 'Reconectando...',
			'watchTogether.reconnectingDescription' => 'A conexão caiu. Você entra na sala automaticamente.',
			'watchTogether.connected' => 'Conectado',
			'watchTogether.disconnected' => 'Desconectado',
			'watchTogether.youAreHost' => 'Você é o anfitrião',
			'watchTogether.hostedBy' => ({required Object name}) => 'Hospedado por ${name}',
			'watchTogether.hostControlsPlayback' => 'O anfitrião controla a reprodução',
			'watchTogether.anyoneCanControl' => 'Qualquer pessoa pode controlar a reprodução',
			'watchTogether.roomLocked' => 'Quarto trancado',
			'watchTogether.nowPlaying' => 'Agora jogando',
			'watchTogether.nothingPlaying' => 'Nada jogando',
			'watchTogether.nothingPlayingHost' => 'Jogue algo de qualquer biblioteca para compartilhar com a sala.',
			'watchTogether.nothingPlayingGuest' => 'Quando o anfitrião toca alguma coisa, ela abre aqui.',
			'watchTogether.notShareable' => 'Este vídeo não possui correspondência de catálogo, portanto somente pessoas com acesso ao mesmo servidor poderão reproduzi-lo.',
			'watchTogether.searching' => 'Procurando este vídeo em suas bibliotecas...',
			'watchTogether.yourCopy' => 'Sua cópia',
			'watchTogether.sharingYourCopy' => 'Você está compartilhando sua cópia',
			'watchTogether.playingOtherLength' => ({required Object difference}) => 'Reproduzindo sua cópia, ${difference}',
			'watchTogether.mismatchTitle' => 'Sua cópia tem comprimento diferente',
			'watchTogether.mismatchDescription' => ({required Object difference}) => 'Sua cópia mais próxima é ${difference} do que o vídeo da sala. Pode ser outro corte ou versão.',
			'watchTogether.playAnyway' => 'Jogue mesmo assim',
			'watchTogether.chooseAnotherCopy' => 'Escolha outra cópia',
			'watchTogether.dontPlay' => 'Não jogue',
			'watchTogether.unavailableTitle' => 'Você não tem esse vídeo',
			'watchTogether.unavailableDescription' => 'Luroka não conseguiu encontrá-lo em suas bibliotecas. Escolha você mesmo uma cópia ou pesquise novamente.',
			'watchTogether.chooseCopy' => 'Escolha uma cópia',
			'watchTogether.searchAgain' => 'Pesquise novamente',
			'watchTogether.noCandidates' => 'Nenhuma cópia encontrada em suas bibliotecas.',
			'watchTogether.choiceFailed' => 'Não foi possível reproduzir esta cópia para a sala',
			'watchTogether.lengthLonger' => ({required Object duration}) => '${duration} por mais tempo',
			'watchTogether.lengthShorter' => ({required Object duration}) => '${duration} mais curto',
			'watchTogether.lengthSame' => 'Mesmo comprimento',
			'watchTogether.lengthUnknown' => 'Comprimento desconhecido',
			'watchTogether.joinCurrentPlayback' => 'Entrar na reprodução atual',
			'watchTogether.joinCurrentPlaybackDescription' => 'Voltar ao conteúdo que o anfitrião está assistindo agora',
			'watchTogether.stopMedia' => 'Pare o vídeo para todos',
			'watchTogether.syncOffset' => 'Deslocamento de sincronização',
			'watchTogether.syncOffsetDescription' => 'Mude seu vídeo se ele for exibido na frente ou atrás da sala.',
			'watchTogether.offsetHint' => ({required Object difference}) => 'Sua cópia é ${difference} que o vídeo da sala.',
			'watchTogether.applyDifference' => ({required Object offset}) => 'Usar ${offset}',
			'watchTogether.offsetMinusSecond' => '-1s',
			'watchTogether.offsetMinusTenth' => '-100ms',
			'watchTogether.offsetPlusTenth' => '+100ms',
			'watchTogether.offsetPlusSecond' => '+1s',
			'watchTogether.participants' => 'Participantes',
			'watchTogether.participantCount' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n, one: 'Participante ${n}', other: 'Participantes ${n}', ), 
			_ => null,
		} ?? switch (path) {
			'watchTogether.hostBadge' => 'ANFITRIÃO',
			'watchTogether.nameYou' => ({required Object name}) => '${name} (Você)',
			'watchTogether.playerIdle' => 'Inativo',
			'watchTogether.playerLoading' => 'Carregando',
			'watchTogether.playerReady' => 'Pronto',
			'watchTogether.playerBuffering' => 'Buffer',
			'watchTogether.matchSearching' => 'Procurando',
			'watchTogether.matchMatched' => 'Tem o vídeo',
			'watchTogether.matchMismatched' => 'Comprimento diferente',
			'watchTogether.matchUnavailable' => 'Não tem o vídeo',
			'watchTogether.participantOffset' => ({required Object offset}) => 'Deslocamento ${offset}',
			'watchTogether.makeHost' => 'Tornar anfitrião',
			'watchTogether.makeHostQuestion' => 'Transferir anfitrião?',
			'watchTogether.makeHostConfirm' => ({required Object name}) => '${name} controlará a reprodução e conduzirá a sessão para todos.',
			'watchTogether.transfer' => 'Transferir',
			'watchTogether.removeParticipant' => 'Remover da sala',
			'watchTogether.removeParticipantQuestion' => ({required Object name}) => 'Remover ${name}?',
			'watchTogether.removeParticipantConfirm' => ({required Object name}) => '${name} sai da sala. Eles podem entrar novamente com o código, a menos que você tranque a sala.',
			'watchTogether.remove' => 'Remover',
			'watchTogether.roomSettings' => 'Configurações da sala',
			'watchTogether.letEveryoneControl' => 'Deixe que todos controlem a reprodução',
			'watchTogether.lockRoom' => 'Fechadura',
			'watchTogether.lockRoomDescription' => 'Ninguém novo pode participar',
			'watchTogether.leaveRoom' => 'Sair da sala',
			'watchTogether.leaveRoomQuestion' => 'Sair da sala?',
			'watchTogether.leaveRoomConfirm' => 'Você pode entrar novamente com o código da sala.',
			'watchTogether.leave' => 'Sair',
			'watchTogether.endRoom' => 'Sala final',
			'watchTogether.endRoomQuestion' => 'Fim da sala?',
			'watchTogether.endRoomConfirm' => 'Isso acaba com a sala para todos.',
			'watchTogether.end' => 'Encerrar',
			'watchTogether.playBlockedTitle' => 'A reprodução não começou',
			'watchTogether.playBlockedDescription' => 'Aperte o play para começar a assistir com a sala.',
			'watchTogether.notices.pressedPlay' => ({required Object name}) => '${name} pressionou play',
			'watchTogether.notices.playbackStarted' => 'A reprodução começou',
			'watchTogether.notices.paused' => ({required Object name}) => '${name} pausou',
			'watchTogether.notices.playbackPaused' => 'Reprodução pausada',
			'watchTogether.notices.jumpedTo' => ({required Object name, required Object position}) => '${name} saltou para ${position}',
			'watchTogether.notices.roomJumpedTo' => ({required Object position}) => 'Saltou para ${position}',
			'watchTogether.notices.changedSpeed' => ({required Object name, required Object speed}) => '${name} definiu a velocidade para ${speed}',
			'watchTogether.notices.speedChanged' => ({required Object speed}) => 'Velocidade definida como ${speed}',
			'watchTogether.notices.startedMedia' => ({required Object name, required Object title}) => '${name} iniciado ${title}',
			'watchTogether.notices.mediaStarted' => ({required Object title}) => 'Agora jogando ${title}',
			'watchTogether.notices.stoppedMedia' => ({required Object name}) => '${name} interrompeu o vídeo',
			'watchTogether.notices.mediaStopped' => 'O vídeo parou',
			'watchTogether.notices.waitingFor' => ({required Object name}) => 'Aguardando ${name}...',
			'watchTogether.notices.waitingForSomeone' => 'Esperando alguém se atualizar...',
			'watchTogether.notices.finished' => 'Concluído',
			'watchTogether.notices.hostChangedTo' => ({required Object name}) => '${name} agora é o anfitrião',
			'watchTogether.notices.youAreNowHost' => 'Agora você é o anfitrião',
			'watchTogether.notices.joined' => ({required Object name}) => '${name} entrou',
			'watchTogether.notices.left' => ({required Object name}) => '${name} saiu',
			'watchTogether.notices.controlRefused' => 'Somente o host pode controlar a reprodução',
			'watchTogether.notices.searchFailed' => 'Não foi possível pesquisar o vídeo da sala em alguns servidores',
			'watchTogether.notices.playBlocked' => 'Aperte o play para começar',
			'watchTogether.notices.shareFailed' => 'Não foi possível compartilhar este vídeo com a sala',
			'watchTogether.notices.notShared' => 'Os vídeos baixados não são compartilhados com a sala',
			'watchTogether.notices.openFailed' => 'Não foi possível abrir o vídeo da sala',
			'watchTogether.ended.ended' => 'O anfitrião encerrou a sala',
			'watchTogether.ended.kicked' => 'Você foi removido da sala',
			'watchTogether.ended.expired' => 'O quarto expirou',
			'watchTogether.ended.replaced' => 'Você entrou nesta sala em outro dispositivo',
			'watchTogether.ended.lost' => 'Perdeu a conexão com a sala',
			'watchTogether.errors.invalidCode' => 'Esse não é um código de quarto. Os códigos possuem 6 letras e dígitos, sem 0, 1, I, L ou O.',
			'watchTogether.errors.roomNotFound' => 'Nenhum quarto tem esse código. Pode ter terminado.',
			'watchTogether.errors.roomFull' => 'Essa sala está cheia.',
			'watchTogether.errors.roomLocked' => 'O anfitrião trancou aquele quarto.',
			'watchTogether.errors.relayFull' => 'Assistir Juntos está ocupado agora. Tente novamente mais tarde.',
			'watchTogether.errors.unreachable' => 'Não foi possível acessar o retransmissor do Watch Together. Verifique sua conexão.',
			'watchTogether.errors.rateLimited' => 'Muitas tentativas. Espere um momento e tente novamente.',
			'watchTogether.errors.clientBlocked' => 'Esta versão do Luroka não pode usar o relé. Atualize o aplicativo.',
			'watchTogether.errors.forbidden' => 'Somente o anfitrião pode fazer isso.',
			'watchTogether.errors.notInRoom' => 'Você não está em uma sala.',
			'watchTogether.errors.alreadyInRoom' => 'Você já está em uma sala.',
			'watchTogether.errors.resumeFailed' => 'Não foi possível voltar à sala.',
			'watchTogether.errors.unsupported' => 'O relé não suporta isso.',
			'watchTogether.errors.generic' => 'Algo deu errado. Tente novamente.',
			'watchTogether.untitledEpisode' => ({required Object number}) => 'Episódio ${number}',
			'downloads.title' => 'Downloads',
			'downloads.manage' => 'Gerenciar',
			'downloads.tvShows' => 'Séries de TV',
			'downloads.movies' => 'Filmes',
			'downloads.music' => 'Música',
			'downloads.tracksQueued' => ({required Object count}) => '${count} faixas na fila para download',
			'downloads.noDownloads' => 'Nenhum download ainda',
			'downloads.noDownloadsDescription' => 'O conteúdo baixado aparecerá aqui para assistir offline',
			'downloads.downloadNow' => 'Baixar',
			'downloads.deleteDownload' => 'Excluir download',
			'downloads.retryDownload' => 'Tentar download novamente',
			'downloads.downloadQueued' => 'Download na fila',
			'downloads.downloadResumed' => 'Download retomado',
			'downloads.serverErrorBitrate' => 'Erro do servidor: o arquivo pode exceder o limite remoto de taxa de bits',
			'downloads.storageFull' => 'Os downloads foram interrompidos para proteger o espaço disponível. Libere espaço ou escolha outro local de download e tente novamente.',
			'downloads.storageUnavailable' => 'Os downloads foram interrompidos porque não foi possível verificar o armazenamento disponível. Verifique o local de download e tente novamente.',
			'downloads.episodesQueued' => ({required Object count}) => '${count} episódios na fila de download',
			'downloads.downloadDeleted' => 'Download excluído',
			'downloads.deleteConfirm' => ({required Object title}) => 'Excluir "${title}" deste dispositivo?',
			'downloads.deleteCollectionDownloads' => 'Excluir downloads',
			'downloads.deleteCollectionDownloadsConfirm' => ({required Object title}) => 'Excluir todos os downloads em "${title}" deste dispositivo?',
			'downloads.collectionDownloadsDeleted' => 'Downloads excluídos',
			'downloads.cancelledDownloadTitle' => 'Download cancelado',
			'downloads.cancelledDownloadMessage' => 'Este download foi cancelado. O que você deseja fazer?',
			'downloads.allEpisodesAlreadyDownloaded' => 'Todos os episódios já foram baixados',
			'downloads.resumeDownload' => 'Retomar download',
			'downloads.cancelledDownload' => 'Download cancelado',
			'downloads.syncingFile' => ({required Object file, required Object status}) => '${file} (sincronizando ${status})',
			'downloads.downloadedFileClickToComplete' => ({required Object file}) => '${file} baixado — clique para concluir',
			'downloads.partialDownloadClickToComplete' => 'Parcialmente baixado — clique para concluir',
			'downloads.deleting' => 'Excluindo...',
			'downloads.deletingWithProgress' => ({required Object title, required Object current, required Object total}) => 'Excluindo ${title}... (${current} de ${total})',
			'downloads.queuedTooltip' => 'Na fila',
			'downloads.queuedFilesTooltip' => ({required Object files}) => 'Na fila: ${files}',
			'downloads.downloadingTooltip' => 'Baixando...',
			'downloads.downloadingFilesTooltip' => ({required Object files}) => 'Baixando ${files}',
			'downloads.noDownloadsTree' => 'Nenhum download',
			'downloads.pauseAll' => 'Pausar todos',
			'downloads.resumeAll' => 'Retomar todos',
			'downloads.retryAll' => 'Tentar tudo novamente',
			'downloads.retryFailed' => 'Tentar novamente downloads com falha',
			'downloads.deleteAll' => 'Excluir todos',
			'downloads.selectVersion' => 'Selecionar versão',
			'downloads.allEpisodes' => 'Todos os episódios',
			'downloads.unwatchedOnly' => 'Apenas não assistidos',
			'downloads.nextNUnwatched' => ({required Object count}) => 'Próximos ${count} episódios não assistidos',
			'downloads.customAmount' => 'Quantidade personalizada...',
			'downloads.includeSpecials' => 'Incluir especiais',
			'downloads.howManyEpisodes' => 'Quantos episódios?',
			'downloads.invalidEpisodeCount' => 'Insira uma quantidade válida de episódios.',
			'downloads.keepSynced' => 'Manter sincronizado',
			'downloads.downloadOnce' => 'Baixar uma vez',
			'downloads.keepNUnwatched' => ({required Object count}) => 'Manter ${count} episódios não assistidos',
			'downloads.editSyncRule' => 'Editar regra de sincronização',
			'downloads.removeSyncRule' => 'Remover regra de sincronização',
			'downloads.removeSyncRuleConfirm' => ({required Object title}) => 'Parar de sincronizar "${title}"? Os episódios baixados serão mantidos.',
			'downloads.removeListSyncRuleConfirm' => ({required Object title}) => 'Parar a sincronização de "${title}"?',
			'downloads.deleteSyncRuleDownloads' => 'Também excluir downloads associados',
			'downloads.deleteSyncRuleDownloadsDescription' => 'Downloads usados por outra regra de sincronização ou perfil serão mantidos.',
			'downloads.syncRuleCreated' => ({required Object count}) => 'Regra de sincronização criada — mantendo ${count} episódios não assistidos',
			'downloads.syncRuleUpdated' => 'Regra de sincronização atualizada',
			'downloads.syncRuleRemoved' => 'Regra de sincronização removida',
			'downloads.syncRuleAndDownloadsRemoved' => 'Regra de sincronização e downloads associados removidos',
			'downloads.syncRuleCleanupBusy' => 'As regras de sincronização estão sendo atualizadas. Tente novamente em instantes.',
			'downloads.syncRuleCleanupUnavailable' => 'Os downloads associados não puderam ser identificados com segurança. Reconecte o servidor e tente novamente, ou remova a regra sem excluir os downloads.',
			'downloads.syncedNewEpisodes' => ({required Object count, required Object title}) => '${count} novos episódios sincronizados para ${title}',
			'downloads.activeSyncRules' => 'Regras de sincronização',
			'downloads.noSyncRules' => 'Nenhuma regra de sincronização',
			'downloads.manageSyncRule' => 'Gerenciar sincronização',
			'downloads.editEpisodeCount' => 'Número de episódios',
			'downloads.editSyncFilter' => 'Filtro de sincronização',
			'downloads.syncAllItems' => 'Sincronizando todos os itens',
			'downloads.syncUnwatchedItems' => 'Sincronizando itens não assistidos',
			'downloads.syncRuleServerContext' => ({required Object server, required Object status}) => 'Servidor: ${server} • ${status}',
			'downloads.syncRuleAvailable' => 'Disponível',
			'downloads.syncRuleOffline' => 'Offline',
			'downloads.syncRuleSignInRequired' => 'É necessário entrar',
			'downloads.syncRuleAccessDenied' => 'Acesso negado',
			'downloads.syncRuleNotAvailableForProfile' => 'Indisponível para o perfil atual',
			'downloads.syncRuleUnknownServer' => 'Servidor desconhecido',
			'downloads.syncRuleListCreated' => 'Regra de sincronização criada',
			'downloads.backgroundWarning.bannerBlocked' => 'Os downloads serão interrompidos ao sair do app',
			'downloads.backgroundWarning.bannerDegraded' => 'Os downloads em segundo plano podem ser limitados',
			'downloads.backgroundWarning.bannerAction' => 'Detalhes',
			'downloads.backgroundWarning.sheetTitle' => 'Os downloads em segundo plano estão bloqueados',
			'downloads.backgroundWarning.sheetTitleDegraded' => 'Os downloads em segundo plano podem ser limitados',
			'downloads.backgroundWarning.sheetIntro' => 'O Android está impedindo que o Luroka faça downloads de forma confiável em segundo plano.',
			'downloads.backgroundWarning.sheetIntroDegraded' => 'Seu dispositivo está limitando quando o Luroka pode fazer downloads em segundo plano.',
			'downloads.backgroundWarning.reasonBackgroundRestricted' => 'O uso em segundo plano do Luroka está restrito. Defina o uso da bateria ou o uso em segundo plano como "Sem restrições".',
			'downloads.backgroundWarning.reasonStandbyRestricted' => 'O Android colocou o Luroka em um modo de espera restrito. Defina o uso da bateria como "Sem restrições".',
			'downloads.backgroundWarning.reasonDownloadChannelBlocked' => 'As notificações de download estão desativadas; por isso, o progresso e os controles podem ficar indisponíveis.',
			'downloads.backgroundWarning.reasonNotificationsDisabled' => 'As notificações estão desativadas. No Android 13 ou mais recente, elas são necessárias para downloads longos em segundo plano.',
			'downloads.backgroundWarning.reasonDataSaver' => 'A Economia de dados está ativada e bloqueia downloads em segundo plano usando dados móveis. Os downloads ainda devem funcionar no Wi-Fi.',
			'downloads.backgroundWarning.reasonOemUnknown' => 'Os downloads foram interrompidos várias vezes enquanto o Luroka estava em segundo plano. Verifique as configurações de bateria ou uso em segundo plano do Luroka.',
			'downloads.backgroundWarning.openSettings' => 'Abrir configurações',
			'downloads.backgroundWarning.stillNotWorking' => 'Ajuda específica para o dispositivo',
			'downloads.backgroundWarning.stillNotWorkingDescription' => 'Veja as instruções para seu dispositivo ou, se o problema persistir, envie um log em Configurações › Ver Logs.',
			'downloads.backgroundWarning.dialogTitle' => 'Os downloads podem não ser concluídos',
			'downloads.backgroundWarning.dialogDownloadAnyway' => 'Baixar mesmo assim',
			'downloads.backgroundWarning.dialogFixFirst' => 'Corrigir primeiro',
			'downloads.backgroundWarning.statusTile' => 'Downloads em segundo plano',
			'downloads.backgroundWarning.statusOk' => 'Execução em segundo plano permitida',
			'downloads.backgroundWarning.statusBlocked' => 'Bloqueado pelas configurações do sistema',
			'downloads.backgroundWarning.statusDegraded' => 'Limitado pelas configurações do sistema',
			'downloads.backgroundWarning.statusUnknown' => 'Ainda não verificado',
			'downloads.backgroundWarning.settingsUnavailable' => 'Não foi possível abrir as configurações do sistema neste dispositivo',
			'downloads.backgroundWarning.linkUnavailable' => 'Não foi possível abrir dontkillmyapp.com neste dispositivo',
			'downloads.options' => 'Opções de downloads',
			'downloads.groupings.library' => 'Biblioteca',
			'downloads.groupings.collections' => 'Coleções',
			'downloads.unknownLibrary' => 'Biblioteca desconhecida',
			'downloads.unknownShow' => 'Série desconhecida',
			'downloads.unknownSeason' => 'Temporada desconhecida',
			'downloads.unknownAlbum' => 'Álbum desconhecido',
			'downloads.completedOfTotal' => ({required Object completed, required Object total}) => '${completed}/${total} concluídos',
			'downloads.errorFileNotFound' => 'Arquivo não encontrado (404)',
			'downloads.errorDownloadNotAllowed' => 'Download não permitido pelo servidor (403)',
			'downloads.errorDownloadFailed' => 'Falha no download',
			'downloads.errorDownloadFailedWithReason' => ({required Object reason}) => 'Falha no download: ${reason}',
			'downloads.errorHttpStatus' => ({required Object status}) => 'Falha no download (HTTP ${status})',
			'downloads.errorPostProcessing' => ({required Object reason}) => 'Falha no pós-processamento: ${reason}',
			'downloads.reasonFileNotSaved' => 'não foi possível salvar o arquivo neste dispositivo',
			'downloads.reasonCannotResume' => 'não foi possível retomar o download parcial',
			'downloads.reasonDeviceStorageFull' => 'este dispositivo está sem espaço de armazenamento',
			'downloads.notificationDownloading' => 'Baixando...',
			'downloads.notificationComplete' => 'Download concluído',
			'downloads.notificationPaused' => 'Download pausado',
			'shaders.title' => 'Shaders',
			'shaders.noShaderDescription' => 'Sem aprimoramento de vídeo',
			'shaders.nvscalerDescription' => 'Dimensionamento de imagem da NVIDIA para vídeos mais nítidos',
			'shaders.artcnnVariantNeutral' => 'Neutro',
			'shaders.artcnnVariantDenoise' => 'Redução de ruído',
			'shaders.artcnnVariantDenoiseSharpen' => 'Redução de ruído + nitidez',
			'shaders.qualityFast' => 'Rápido',
			'shaders.qualityHQ' => 'Alta Qualidade',
			'shaders.mode' => 'Modo',
			'shaders.importShader' => 'Importar Shader',
			'shaders.customShaderDescription' => 'Shader GLSL personalizado',
			'shaders.shaderImported' => 'Shader importado',
			'shaders.shaderImportFailed' => 'Falha ao importar shader',
			'shaders.deleteShader' => 'Excluir Shader',
			'shaders.deleteShaderConfirm' => ({required Object name}) => 'Excluir "${name}"?',
			'companionRemote.title' => 'Controle remoto',
			'companionRemote.connectedTo' => ({required Object name}) => 'Conectado a ${name}',
			'companionRemote.unknownDevice' => 'Dispositivo desconhecido',
			'companionRemote.session.startingServer' => 'Iniciando servidor remoto...',
			'companionRemote.session.hostAddress' => 'Endereço do host',
			'companionRemote.session.connected' => 'Conectado',
			'companionRemote.session.serverRunning' => 'Servidor remoto ativo',
			'companionRemote.session.serverStopped' => 'Servidor remoto parado',
			'companionRemote.session.serverRunningDescription' => 'Dispositivos móveis na sua rede podem se conectar a este app',
			'companionRemote.session.serverStoppedDescription' => 'Inicie o servidor para permitir que dispositivos móveis se conectem',
			'companionRemote.session.usePhoneToControl' => 'Use seu dispositivo móvel para controlar este app',
			'companionRemote.session.startServer' => 'Iniciar servidor',
			'companionRemote.session.stopServer' => 'Parar servidor',
			'companionRemote.session.minimize' => 'Minimizar',
			'companionRemote.session.manualAddressHint' => 'Endereço de conexão manual:',
			'companionRemote.pairing.discoveryDescription' => 'Dispositivos Luroka com a mesma conta Plex aparecem aqui',
			'companionRemote.pairing.hostAddressHint' => '192.168.1.100:48632',
			'companionRemote.pairing.connecting' => 'Conectando...',
			'companionRemote.pairing.searchingForDevices' => 'Procurando dispositivos...',
			'companionRemote.pairing.noDevicesFound' => 'Nenhum dispositivo encontrado na sua rede',
			'companionRemote.pairing.noDevicesHint' => 'Abra o Luroka no desktop e use a mesma rede Wi-Fi',
			'companionRemote.pairing.availableDevices' => 'Dispositivos disponíveis',
			'companionRemote.pairing.manualConnection' => 'Conexão manual',
			'companionRemote.pairing.cryptoInitFailed' => 'Não foi possível iniciar a conexão segura. Entre no Plex primeiro.',
			'companionRemote.pairing.validationHostRequired' => 'Insira o endereço do host',
			'companionRemote.pairing.validationHostFormat' => 'O formato deve ser IP:porta (ex.: 192.168.1.100:48632)',
			'companionRemote.pairing.connectionTimedOut' => 'A conexão atingiu o tempo limite. Use a mesma rede nos dois dispositivos.',
			'companionRemote.pairing.sessionNotFound' => 'Dispositivo não encontrado. Verifique se o Luroka está em execução no host.',
			'companionRemote.pairing.authFailed' => 'Falha na autenticação. Ambos os dispositivos precisam da mesma conta Plex.',
			'companionRemote.pairing.failedToConnect' => ({required Object error}) => 'Falha ao conectar: ${error}',
			'companionRemote.remote.disconnectConfirm' => 'Deseja desconectar da sessão remota?',
			'companionRemote.remote.reconnecting' => 'Reconectando...',
			'companionRemote.remote.attemptOf' => ({required Object current}) => 'Tentativa ${current} de 5',
			'companionRemote.remote.retryNow' => 'Tentar agora',
			'companionRemote.remote.tabRemote' => 'Remoto',
			'companionRemote.remote.tabPlay' => 'Reproduzir',
			'companionRemote.remote.tabMore' => 'Mais',
			'companionRemote.remote.menu' => 'Menu',
			'companionRemote.remote.tabNavigation' => 'Navegação por abas',
			'companionRemote.remote.tabDiscover' => 'Descobrir',
			'companionRemote.remote.tabLibraries' => 'Bibliotecas',
			'companionRemote.remote.tabSearch' => 'Buscar',
			'companionRemote.remote.tabDownloads' => 'Downloads',
			'companionRemote.remote.tabSettings' => 'Configurações',
			'companionRemote.remote.previous' => 'Anterior',
			'companionRemote.remote.playPause' => 'Reproduzir/Pausar',
			'companionRemote.remote.next' => 'Próximo',
			'companionRemote.remote.seekBack' => 'Retroceder',
			'companionRemote.remote.stop' => 'Parar',
			'companionRemote.remote.seekForward' => 'Avançar',
			'companionRemote.remote.volume' => 'Volume',
			'companionRemote.remote.volumeDown' => 'Diminuir',
			'companionRemote.remote.volumeUp' => 'Aumentar',
			'companionRemote.remote.fullscreen' => 'Tela cheia',
			'companionRemote.remote.subtitles' => 'Legendas',
			'companionRemote.remote.audio' => 'Áudio',
			'companionRemote.remote.searchHint' => 'Buscar no desktop...',
			'companionRemote.errors.noNetworkInterface' => 'Nenhuma interface de rede encontrada',
			'companionRemote.errors.authenticationFailed' => 'Falha na autenticação',
			'companionRemote.errors.serverStartFailed' => ({required Object error}) => 'Falha ao iniciar o servidor remoto: ${error}',
			'companionRemote.errors.commandFailed' => ({required Object error}) => 'Falha ao enviar o comando remoto: ${error}',
			'companionRemote.errors.joinTimedOut' => 'Tempo esgotado ao entrar na sessão',
			'companionRemote.errors.failedToConnectAnyAddress' => 'Falha ao conectar a qualquer endereço',
			'companionRemote.errors.connectionLostAfterAttempts' => ({required Object attempts}) => 'Conexão perdida após ${attempts} tentativas',
			'companionRemote.errors.connectionLost' => 'Conexão perdida',
			'companionRemote.closedBeforeAuth' => 'A conexão foi encerrada antes da autenticação',
			'videoSettings.playbackSpeed' => 'Velocidade de Reprodução',
			'videoSettings.normalSpeed' => 'Normal',
			'videoSettings.sleepTimerActive' => ({required Object duration}) => 'Ativo (${duration})',
			'videoSettings.zoom' => 'Zoom',
			'videoSettings.sleepTimer' => 'Temporizador de suspensão',
			'videoSettings.audioSync' => 'Sincronia de áudio',
			'videoSettings.subtitleSync' => 'Sincronia de legendas',
			'videoSettings.hdr' => 'HDR',
			'videoSettings.hdrUnsupported' => 'O HDR não está disponível aqui — este compositor da área de trabalho ou esta saída de vídeo não é compatível com ele.',
			'videoSettings.hdrToneMapping' => 'Mapeamento de tons HDR',
			'videoSettings.hdrToneMappingCompositor' => 'Compositor',
			'videoSettings.hdrToneMappingCompositorDescription' => 'Repassar os metadados HDR da fonte e deixar que o compositor da área de trabalho faça o mapeamento.',
			'videoSettings.hdrToneMappingPlayer' => 'Reprodutor',
			'videoSettings.hdrToneMappingPlayerDescription' => 'Mapear para o brilho máximo da tela no reprodutor e informar o resultado ao compositor.',
			'videoSettings.hdrToneMappingFailed' => 'Não foi possível alterar o mapeamento de tons HDR — o modo anterior continua ativo.',
			'videoSettings.audioOutput' => 'Saída de áudio',
			'videoSettings.performanceOverlay' => 'Painel de desempenho',
			'videoSettings.audioOutputDolbyAtmos' => 'Dolby Atmos',
			'videoSettings.audioOutputDolbyAudio' => 'Dolby Audio',
			'videoSettings.audioOutputSurround' => 'Surround',
			'videoSettings.audioOutputSpatial' => 'Áudio espacial',
			'videoSettings.audioOutputStereo' => 'Estéreo',
			'videoSettings.audioNormalization' => 'Normalizar intensidade sonora',
			'videoSettings.audioNormalizationDisablesPassthrough' => 'Decodifica o áudio para PCM; a passagem direta fica desativada enquanto esta opção estiver ativa',
			'performanceOverlay.color' => 'Cor',
			'performanceOverlay.performance' => 'Desempenho',
			'performanceOverlay.buffer' => 'Buffer',
			'performanceOverlay.app' => 'App',
			'performanceOverlay.decoder' => 'Decodificador',
			'performanceOverlay.rawDecoder' => 'Decodificador bruto',
			'performanceOverlay.tunneling' => 'Túnel',
			'performanceOverlay.passthrough' => 'Passagem direta',
			'performanceOverlay.aspect' => 'Aspecto',
			'performanceOverlay.rotation' => 'Rotação',
			'performanceOverlay.dvSource' => 'Fonte DV',
			'performanceOverlay.dvPath' => 'Caminho DV',
			'performanceOverlay.dvRouteDecoder' => 'Decodificador Dolby Vision',
			'performanceOverlay.dvRouteDecoderP81' => 'Decodificador Dolby Vision (P7→8.1)',
			'performanceOverlay.dvRouteBaseLayer' => 'Camada base',
			'performanceOverlay.dvRouteBaseLayerHdr10' => 'Camada base HDR10',
			'performanceOverlay.dvRouteBaseLayerHlg' => 'Camada base HLG',
			'performanceOverlay.dvRouteBaseLayerSdr' => 'Camada base SDR',
			'performanceOverlay.dvRouteReshaped' => 'RPU remodelado (gpu-next)',
			'performanceOverlay.p7Conversion' => 'Conv. P7',
			'performanceOverlay.sampleRate' => 'Taxa de amostragem',
			'performanceOverlay.pixelFormat' => 'Formato de pixel',
			'performanceOverlay.hwFormat' => 'Formato HW',
			'performanceOverlay.matrix' => 'Matriz',
			'performanceOverlay.primaries' => 'Primárias',
			'performanceOverlay.transfer' => 'Transferência',
			'performanceOverlay.renderFps' => 'FPS de renderização',
			'performanceOverlay.displayFps' => 'FPS da tela',
			'performanceOverlay.avSync' => 'Sincronia A/V',
			'performanceOverlay.dropped' => 'Descartados',
			'performanceOverlay.dvRpus' => 'DV RPUs',
			'performanceOverlay.dvRpuAverage' => 'Média DV RPU',
			'performanceOverlay.dvSampleAverage' => 'Média amostra DV',
			'performanceOverlay.maxLuma' => 'Luma máx.',
			'performanceOverlay.minLuma' => 'Luma mín.',
			'performanceOverlay.maxCll' => 'MaxCLL',
			'performanceOverlay.maxFall' => 'MaxFALL',
			'performanceOverlay.cacheUsed' => 'Cache usado',
			'performanceOverlay.cacheLimit' => 'Limite do cache',
			'performanceOverlay.speed' => 'Velocidade',
			'performanceOverlay.player' => 'Reprodutor',
			'performanceOverlay.memory' => 'Memória',
			'performanceOverlay.uiFps' => 'UI FPS',
			'performanceOverlay.fps' => 'FPS',
			'performanceOverlay.decoderAndroidHw' => 'Android HW',
			'performanceOverlay.decoderNvidiaHw' => 'NVIDIA HW',
			'performanceOverlay.decoderQualcommHw' => 'Qualcomm HW',
			'performanceOverlay.decoderMediatekHw' => 'MediaTek HW',
			'performanceOverlay.decoderExynosHw' => 'Exynos HW',
			'performanceOverlay.decoderSoftware' => 'Software',
			'performanceOverlay.decoderHardware' => 'Hardware',
			'performanceOverlay.tunnelingActive' => 'Ativo',
			'performanceOverlay.dvRpuFailed' => ({required Object converted, required Object failures}) => '${converted} (${failures} com falha)',
			'externalPlayer.title' => 'Reprodutor externo',
			'externalPlayer.useExternalPlayer' => 'Usar reprodutor externo',
			'externalPlayer.useExternalPlayerDescription' => 'Abrir vídeos em outro app',
			'externalPlayer.selectPlayer' => 'Selecionar reprodutor',
			'externalPlayer.customPlayers' => 'Reprodutores personalizados',
			'externalPlayer.systemDefault' => 'Padrão do sistema',
			'externalPlayer.addCustomPlayer' => 'Adicionar reprodutor personalizado',
			'externalPlayer.playerName' => 'Nome do reprodutor',
			'externalPlayer.playerNameHint' => 'Meu reprodutor',
			'externalPlayer.playerCommand' => 'Comando',
			'externalPlayer.playerPackage' => 'Nome do pacote',
			'externalPlayer.playerUrlScheme' => 'Esquema de URL',
			'externalPlayer.off' => 'Desativado',
			'externalPlayer.launchFailed' => 'Falha ao abrir o reprodutor externo',
			'externalPlayer.appNotInstalled' => ({required Object name}) => '${name} não está instalado',
			'externalPlayer.playInExternalPlayer' => 'Reproduzir no reprodutor externo',
			'metadataEdit.editMetadata' => 'Editar...',
			'metadataEdit.screenTitle' => 'Editar Metadados',
			'metadataEdit.basicInfo' => 'Informações Básicas',
			'metadataEdit.artwork' => 'Arte',
			'metadataEdit.advancedSettings' => 'Configurações Avançadas',
			'metadataEdit.title' => 'Título',
			'metadataEdit.sortTitle' => 'Título para Ordenação',
			'metadataEdit.originalTitle' => 'Título Original',
			'metadataEdit.releaseDate' => 'Data de Lançamento',
			'metadataEdit.contentRating' => 'Classificação Indicativa',
			'metadataEdit.studio' => 'Estúdio',
			'metadataEdit.tagline' => 'Slogan',
			'metadataEdit.summary' => 'Sinopse',
			'metadataEdit.poster' => 'Pôster',
			'metadataEdit.background' => 'Plano de Fundo',
			'metadataEdit.logo' => 'Logo',
			'metadataEdit.squareArt' => 'Imagem Quadrada',
			'metadataEdit.selectPoster' => 'Selecionar pôster',
			'metadataEdit.selectBackground' => 'Selecionar Plano de Fundo',
			'metadataEdit.selectLogo' => 'Selecionar Logo',
			'metadataEdit.selectSquareArt' => 'Selecionar Imagem Quadrada',
			'metadataEdit.fromUrl' => 'Da URL',
			'metadataEdit.uploadFile' => 'Enviar Arquivo',
			'metadataEdit.enterImageUrl' => 'Insira a URL da imagem',
			'metadataEdit.imageUrl' => 'URL da Imagem',
			'metadataEdit.metadataUpdated' => 'Metadados atualizados',
			'metadataEdit.metadataUpdateFailed' => 'Falha ao atualizar metadados',
			'metadataEdit.artworkUpdated' => 'Arte atualizada',
			'metadataEdit.artworkUpdateFailed' => 'Falha ao atualizar arte',
			'metadataEdit.noArtworkAvailable' => 'Nenhuma arte disponível',
			'metadataEdit.artworkOption' => ({required Object index}) => 'Opção de arte ${index}',
			'metadataEdit.selectedArtworkOption' => ({required Object index}) => 'Opção de arte ${index}, selecionada',
			'metadataEdit.notSet' => 'Não definido',
			'metadataEdit.libraryDefault' => 'Padrão da biblioteca',
			'metadataEdit.accountDefault' => 'Padrão da conta',
			'metadataEdit.seriesDefault' => 'Padrão da série',
			'metadataEdit.episodeSorting' => 'Ordenação de Episódios',
			'metadataEdit.oldestFirst' => 'Mais antigos primeiro',
			'metadataEdit.newestFirst' => 'Mais recentes primeiro',
			'metadataEdit.keep' => 'Manter',
			'metadataEdit.allEpisodes' => 'Todos os episódios',
			'metadataEdit.latestEpisodes' => ({required Object count}) => '${count} episódios mais recentes',
			'metadataEdit.latestEpisode' => 'Episódio mais recente',
			'metadataEdit.episodesAddedPastDays' => ({required Object count}) => 'Episódios adicionados nos últimos ${count} dias',
			'metadataEdit.deleteAfterPlaying' => 'Excluir Episódios Após Reproduzir',
			'metadataEdit.never' => 'Nunca',
			'metadataEdit.afterADay' => 'Após um dia',
			'metadataEdit.afterAWeek' => 'Após uma semana',
			'metadataEdit.afterAMonth' => 'Após um mês',
			'metadataEdit.onNextRefresh' => 'Na próxima atualização',
			'metadataEdit.seasons' => 'Temporadas',
			'metadataEdit.show' => 'Mostrar',
			'metadataEdit.hide' => 'Ocultar',
			'metadataEdit.episodeOrdering' => 'Ordenação de Episódios',
			'metadataEdit.tmdbAiring' => 'The Movie Database (Exibição)',
			'metadataEdit.tvdbAiring' => 'TheTVDB (Exibição)',
			'metadataEdit.tvdbAbsolute' => 'TheTVDB (Absoluto)',
			'metadataEdit.metadataLanguage' => 'Idioma dos Metadados',
			'metadataEdit.useOriginalTitle' => 'Usar Título Original',
			'metadataEdit.preferredAudioLanguage' => 'Idioma de Áudio Preferido',
			'metadataEdit.preferredSubtitleLanguage' => 'Idioma de Legenda Preferido',
			'metadataEdit.subtitleMode' => 'Modo de Seleção Automática de Legendas',
			'metadataEdit.manuallySelected' => 'Seleção manual',
			'metadataEdit.shownWithForeignAudio' => 'Exibir com áudio estrangeiro',
			'metadataEdit.alwaysEnabled' => 'Sempre ativado',
			'metadataEdit.tags' => 'Tags',
			'metadataEdit.addTag' => 'Adicionar tag',
			'metadataEdit.genre' => 'Gênero',
			'metadataEdit.director' => 'Diretor',
			'metadataEdit.writer' => 'Roteirista',
			'metadataEdit.producer' => 'Produtor',
			'metadataEdit.country' => 'País',
			'metadataEdit.collection' => 'Coleção',
			'metadataEdit.label' => 'Rótulo',
			'metadataEdit.quickTag' => 'Tag rápida...',
			'matchScreen.match' => 'Associar...',
			'matchScreen.fixMatch' => 'Corrigir correspondência...',
			'matchScreen.unmatch' => 'Desassociar',
			'matchScreen.unmatchConfirm' => 'Limpar esta correspondência? Plex tratará como sem correspondência até refazer.',
			'matchScreen.unmatchSuccess' => 'Item desassociado',
			'matchScreen.unmatchFailed' => 'Falha ao desassociar item',
			'matchScreen.matchApplied' => 'Correspondência aplicada',
			'matchScreen.matchFailed' => 'Falha ao aplicar correspondência',
			'matchScreen.titleHint' => 'Título',
			'matchScreen.yearHint' => 'Ano',
			'matchScreen.search' => 'Pesquisar',
			'matchScreen.noMatchesFound' => 'Nenhuma correspondência encontrada',
			'serverTasks.title' => 'Tarefas do servidor',
			'serverTasks.failedToLoad' => 'Falha ao carregar tarefas',
			'serverTasks.noTasks' => 'Nenhuma tarefa em execução',
			'trakt.title' => 'Trakt',
			'trakt.connected' => 'Conectado',
			'trakt.connectedAs' => ({required Object username}) => 'Conectado como @${username}',
			'trakt.disconnectConfirm' => 'Desconectar a conta do Trakt?',
			'trakt.disconnectConfirmBody' => 'O Luroka deixará de enviar eventos ao Trakt. Você pode reconectar quando quiser.',
			'trakt.scrobble' => 'Scrobbling em tempo real',
			'trakt.scrobbleDescription' => 'Envia eventos de reprodução, pausa e parada ao Trakt durante a exibição.',
			'trakt.watchedSync' => 'Sincronizar status de assistido',
			'trakt.watchedSyncDescription' => 'Ao marcar itens como assistidos no Luroka, eles também serão marcados no Trakt.',
			'seerr.title' => 'Seerr',
			'seerr.connectTitle' => 'Conectar ao Seerr',
			'seerr.serverUrl' => 'URL do servidor',
			'seerr.serverUrlHelper' => 'O endereço da sua instância do Seerr',
			'seerr.checkServer' => 'Continuar',
			'seerr.signInWithJellyfin' => 'Entrar com Jellyfin',
			'seerr.signInWithEmby' => 'Entrar com Emby',
			'seerr.signInWithLocal' => 'Usar uma conta local',
			'seerr.email' => 'E-mail',
			'seerr.noSignInMethods' => 'Esta instância do Seerr não oferece nenhum método de acesso compatível com o Luroka.',
			'seerr.instance' => 'Instância',
			'seerr.disconnectConfirm' => 'Desconectar Seerr?',
			'seerr.disconnectConfirmBody' => 'O Luroka esquecerá esta instância do Seerr. Reconecte quando quiser.',
			'seerr.request' => 'Solicitar',
			'seerr.request4k' => 'Solicitar em 4K',
			'seerr.seasons' => 'Temporadas',
			'seerr.allSeasons' => 'Todas as temporadas',
			'seerr.advancedOptions' => 'Avançado',
			'seerr.destinationServer' => 'Servidor de destino',
			'seerr.qualityProfile' => 'Perfil de qualidade',
			'seerr.rootFolder' => 'Pasta raiz',
			'seerr.languageProfile' => 'Perfil de idioma',
			'seerr.tags' => 'Etiquetas',
			'seerr.noTags' => 'Sem etiquetas',
			'seerr.defaultOption' => ({required Object name}) => '${name} (padrão)',
			'seerr.animeNote' => 'Esta série é um anime.',
			'seerr.requestSubmitted' => 'Solicitação enviada',
			'seerr.requestFailed' => ({required Object error}) => 'Falha na solicitação: ${error}',
			'seerr.requestsLoadFailed' => 'Não foi possível carregar as opções de solicitação',
			'seerr.nothingToRequest' => 'Tudo já está disponível ou solicitado.',
			'seerr.statusAvailable' => 'Disponível',
			'seerr.statusPartiallyAvailable' => 'Parcialmente disponível',
			'seerr.statusRequested' => 'Solicitado',
			'seerr.statusProcessing' => 'Processando',
			_ => null,
		} ?? switch (path) {
			'seerr.statusBlocklisted' => 'Na lista de bloqueio',
			'seerr.couldNotReach' => ({required Object url, required Object error}) => 'Não foi possível acessar ${url}: ${error}',
			'seerr.noInstanceAtUrl' => ({required Object url, required Object status}) => 'Nenhuma instância do Seerr em ${url} (HTTP ${status})',
			'seerr.behindAuthProxy' => 'Um proxy reverso com autenticação (SSO ou autenticação HTTP) respondeu no lugar do Seerr. O Luroka não consegue entrar através dele: permita que o caminho /api/v1 do Seerr ignore o proxy para este aplicativo, ou use um endereço que alcance o Seerr diretamente.',
			'seerr.invalidUrl' => 'Insira um endereço de servidor como https://seerr.example.com',
			'seerr.quickConnectUnsupported' => 'Esta instância do Seerr não oferece suporte a Quick Connect. Ela precisa do Seerr 3.4 ou mais recente.',
			'seerr.notInitialized' => 'Esta instância do Seerr não concluiu a configuração inicial',
			'seerr.noPlexTokenForReauth' => 'Nenhum token do Plex está disponível para entrar novamente',
			'seerr.noStoredCredentials' => 'Nenhuma credencial armazenada está disponível para entrar novamente',
			'seerr.signInRejected' => 'A entrada foi rejeitada',
			'seerr.noSessionCookie' => 'O Seerr não forneceu um cookie de sessão',
			'seerr.freshCookieRejected' => 'O Seerr rejeitou o novo cookie de sessão',
			'seerr.noUserInformation' => 'O Seerr não retornou informações do usuário',
			'seerr.sessionRejectedAfterReauth' => 'A sessão foi rejeitada após entrar novamente',
			'seerr.permissionDenied' => 'O Seerr negou esta ação: sua conta não tem mais a permissão necessária',
			'seerr.permissionRevoked' => 'Você não tem mais permissão para solicitar isso',
			'services.title' => 'Serviços',
			'services.hubSubtitle' => 'Sincronize o progresso de exibição e solicite novos títulos.',
			'services.discoverySection' => 'Descoberta e pedidos',
			'services.trackingSection' => 'Acompanhamento e listas',
			'services.seerrDescription' => 'Encontre filmes e séries e envie pedidos através do seu servidor Seerr.',
			'services.tmdbDescription' => 'Descubra filmes e séries, cartazes, classificações e detalhes.',
			'services.traktDescription' => 'Acompanhe filmes e séries, sincronize o estado de visualização e gira a sua lista.',
			'services.malDescription' => 'Mantenha a lista de anime e o progresso de visualização sincronizados.',
			'services.anilistDescription' => 'Acompanhe anime e sincronize o progresso de visualização com o AniList.',
			'services.simklDescription' => 'Acompanhe filmes, séries e anime com o Simkl.',
			'services.mdblistDescription' => 'Ligue as listas MDBList e as classificações de filmes.',
			'services.connectionIntro' => ({required Object service}) => 'Ligue o ${service} ao perfil Luroka atual. Pode gerir esta ligação e as respetivas opções aqui a qualquer momento.',
			'services.connectService' => ({required Object service}) => 'Ligar ${service}',
			'services.seerrConnectDescription' => 'Ligue o servidor Seerr para descobrir e pedir filmes e séries através do Luroka.',
			'services.seerrServerStep' => 'Introduza o endereço que utiliza para abrir o Seerr. Vamos verificar os métodos de início de sessão suportados pelo servidor.',
			'services.seerrSignInStep' => 'Escolha um método de início de sessão suportado pelo servidor.',
			'services.integrations' => 'Integrações',
			'services.notConnected' => 'Não conectado',
			'services.connectedAs' => ({required Object username}) => 'Conectado como @${username}',
			'services.scrobble' => 'Registrar progresso automaticamente',
			'services.scrobbleDescription' => 'Atualiza sua lista quando você termina um episódio ou filme.',
			'services.disconnectConfirm' => ({required Object service}) => 'Desconectar ${service}?',
			'services.disconnectConfirmBody' => ({required Object service}) => 'O Luroka deixará de atualizar ${service}. Reconecte quando quiser.',
			'services.connectFailed' => ({required Object service}) => 'Não foi possível conectar ao ${service}. Tente novamente.',
			'services.names.mal' => 'MyAnimeList',
			'services.names.anilist' => 'AniList',
			'services.names.simkl' => 'Simkl',
			'services.names.seerr' => 'Seerr',
			'services.names.mdblist' => 'MDBList',
			'services.simklReconnect.title' => 'Reconecte Simkl',
			'services.simklReconnect.subtitle' => 'Simkl está descontinuando o método de login usado por esta conexão. A reconexão abre simkl.com para aprovar Luroka - Luroka nunca vê sua senha. Seu histórico de exibição permanece em Simkl.',
			'services.deviceCode.title' => ({required Object service}) => 'Ativar o Luroka no ${service}',
			'services.deviceCode.instructions' => 'Leia o código QR ou acesse o endereço abaixo e insira este código:',
			'services.deviceCode.openToActivate' => ({required Object service}) => 'Abrir ${service} para ativar',
			'services.deviceCode.copyCode' => 'Copiar código de ativação',
			'services.deviceCode.waitingForAuthorization' => 'Aguardando autorização…',
			'services.deviceCode.codeCopied' => 'Código copiado',
			'services.oauthProxy.title' => ({required Object service}) => 'Entrar no ${service}',
			'services.oauthProxy.body' => 'Leia este código QR ou abra a URL em qualquer dispositivo.',
			'services.oauthProxy.openToSignIn' => ({required Object service}) => 'Abrir ${service} para entrar',
			'services.pendingAuth.copyUrl' => 'Copiar URL de acesso',
			'services.pendingAuth.urlCopied' => 'URL copiada',
			'services.libraryFilter.title' => 'Filtro de bibliotecas',
			'services.libraryFilter.subtitleAllSyncing' => 'Sincronizando todas as bibliotecas',
			'services.libraryFilter.subtitleNoneSyncing' => 'Nada a sincronizar',
			'services.libraryFilter.subtitleBlocked' => ({required Object count}) => '${count} bloqueadas',
			'services.libraryFilter.subtitleAllowed' => ({required Object count}) => '${count} permitidas',
			'services.libraryFilter.mode' => 'Modo de filtro',
			'services.libraryFilter.modeBlacklist' => 'Lista de bloqueio',
			'services.libraryFilter.modeWhitelist' => 'Lista de permissões',
			'services.libraryFilter.modeHintBlacklist' => 'Sincronizar todas as bibliotecas, exceto as marcadas abaixo.',
			'services.libraryFilter.modeHintWhitelist' => 'Sincronizar apenas as bibliotecas marcadas abaixo.',
			'services.libraryFilter.libraries' => 'Bibliotecas',
			'services.libraryFilter.noLibraries' => 'Nenhuma biblioteca disponível',
			'offlineRecovery.title' => 'Seus servidores estão off-line',
			'offlineRecovery.description' => 'Seus downloads ainda estão disponíveis. Tente reconectar quando o servidor estiver de volta ou adicione outro servidor.',
			'offlineRecovery.appleTvDescription' => 'Luroka não conseguiu acessar seus servidores de mídia. Tente reconectar quando eles estiverem disponíveis ou adicione outro servidor para continuar assistindo.',
			'offlineRecovery.kidsDescription' => 'Não foi possível acessar seu servidor de mídia. Tente se reconectar ou peça ajuda a um dos pais.',
			'offlineRecovery.retrying' => 'Conectando…',
			'offlineRecovery.addServer' => 'Adicionar um servidor',
			'releaseUpdates.manualInstructions' => 'Baixe o arquivo de lançamento de GitHub, extraia o APK e instale-o em seu dispositivo Android.',
			'releaseUpdates.tvInstructions' => 'Abra este endereço no seu telefone ou computador, ou escaneie o código QR para baixar o lançamento.',
			'releaseUpdates.pressBackAgain' => 'Pressione Voltar novamente para sair da reprodução',
			'profileIntegrations.title' => 'Torne Luroka seu',
			'profileIntegrations.description' => 'Conecte seus serviços favoritos para acompanhar o que você assiste e solicitar novos filmes e programas. Cada perfil Luroka possui suas próprias conexões.',
			'profileIntegrations.step' => 'Integrações opcionais',
			'profileIntegrations.examples' => 'Trakt · Simkl · AniList · MyAnimeList · Seerr',
			'profileIntegrations.connect' => 'Explorar integrações',
			'profileIntegrations.later' => 'Configurar mais tarde',
			'profileIntegrations.manage' => 'Gerenciar integrações',
			'profileIntegrations.forProfile' => ({required Object name}) => 'Conexões para ${name}',
			'profileSetupGuide.title' => 'Faça do seu perfil o seu',
			'profileSetupGuide.description' => 'Escolha a aparência e comportamento de Luroka para este perfil neste dispositivo. Você pode alterar tudo posteriormente em Configurações.',
			'profileSetupGuide.appearanceStep' => '1 de 2 · Aparência',
			'profileSetupGuide.homeStep' => '2 de 2 · Sua tela inicial',
			'profileSetupGuide.preview' => 'Visualização',
			'profileSetupGuide.previewTitle' => 'Sua casa',
			'profileSetupGuide.previewPoster' => 'Pôster',
			'profileSetupGuide.posterArtwork' => 'Somente arte',
			'profileSetupGuide.posterWithDetails' => 'Mostrar detalhes do pôster',
			'profileSetupGuide.musicDescription' => 'Reproduza o tema de um filme ou programa enquanto a página de detalhes estiver aberta, quando disponível.',
			'profileSetupGuide.moreThemes' => 'Mais temas',
			'profileSetupGuide.fewerThemes' => 'Menos temas',
			'profileSetupGuide.spotlightHeading' => 'O que deve aparecer no Spotlight?',
			'profileSetupGuide.progressHeading' => 'Continue assistindo e próximo',
			'profileSetupGuide.skip' => 'Use os padrões e comece a assistir',
			'profileSetupGuide.finish' => 'Comece a assistir',
			'profileSetupGuide.back' => 'Voltar',
			'profileSetupGuide.kContinue' => 'Continuar',
			'profileSetupGuide.chooseLater' => 'Escolha bibliotecas mais tarde',
			'profileSetupGuide.libraryScope' => 'Isso altera o que aparece em Luroka para este perfil; isso não altera as permissões do servidor.',
			'profileSetupGuide.createdTitle' => 'Perfil criado',
			'profileSetupGuide.createdDescription' => 'Seu novo perfil está pronto. Seu proprietário pode personalizá-lo na primeira vez que o abrir.',
			'profileSetupGuide.switchProfile' => 'Mudar para este perfil',
			'profileSetupGuide.stayHere' => 'Fique no perfil atual',
			'animeFavorites.filter' => 'Anime',
			'animeFavorites.manage' => 'Gerenciar animes',
			'animeFavorites.description' => 'A detecção automática usa nomes de bibliotecas de anime e tags ou IDs de anime disponíveis. Escolha bibliotecas e corrija favoritos individuais. As escolhas são salvas neste dispositivo para o seu perfil.',
			'animeFavorites.libraries' => 'Bibliotecas de anime',
			'animeFavorites.libraryHint' => 'Bibliotecas chamadas Anime são reconhecidas automaticamente. Selecione uma biblioteca para alterar sua classificação.',
			'animeFavorites.titles' => 'Títulos favoritos',
			'animeFavorites.titleHint' => 'Selecione um título para marcá-lo como anime ou corrija uma correspondência automática.',
			'animeFavorites.automatic' => 'Automático',
			'animeFavorites.include' => 'Anime',
			'animeFavorites.exclude' => 'Não é anime',
			'animeFavorites.automaticIncluded' => 'Automático · Anime',
			'animeFavorites.automaticExcluded' => 'Automático · Não é anime',
			'animeFavorites.noLibraries' => 'Nenhuma biblioteca conectada disponível.',
			'animeFavorites.noTitles' => 'Nenhum filme ou programa favorito disponível.',
			'animeFavorites.empty' => 'Nenhum favorito de anime encontrado. Verifique suas bibliotecas de anime ou marque um título como anime.',
			'animeFavorites.saveFailed' => 'Não foi possível salvar suas configurações de anime. Por favor, tente novamente.',
			'addServer.addMediaBrowserTitle' => ({required Object product}) => 'Adicionar servidor ${product}',
			'addServer.serverUrls' => 'URLs do servidor',
			'addServer.serverUrlsHelper' => 'Várias URLs são permitidas, separadas por vírgulas.',
			'addServer.findServer' => 'Encontrar servidor',
			'addServer.searchingLocalMediaBrowserServers' => ({required Object product}) => 'Procurando servidores ${product} locais...',
			'addServer.localMediaBrowserServers' => ({required Object product}) => 'Servidores ${product} salvos e próximos',
			'addServer.username' => 'Usuário',
			'addServer.password' => 'Senha',
			'addServer.signIn' => 'Entrar',
			'addServer.change' => 'Alterar',
			'addServer.required' => 'Obrigatório',
			'addServer.couldNotReachServer' => ({required Object error}) => 'Não foi possível conectar ao servidor: ${error}',
			'addServer.signInFailed' => ({required Object error}) => 'Falha ao entrar: ${error}',
			'addServer.quickConnectFailed' => ({required Object error}) => 'Quick Connect falhou: ${error}',
			'addServer.addPlexTitle' => 'Entrar com Plex',
			'addServer.pinExpired' => 'O PIN expirou antes de entrar. Tente novamente.',
			'addServer.failedToRegisterAccount' => ({required Object error}) => 'Falha ao registrar a conta: ${error}',
			'addServer.enterMediaBrowserUrlError' => ({required Object product}) => 'Digite a URL do seu servidor ${product}',
			'addServer.addConnectionTitle' => 'Adicionar conexão',
			'addServer.addConnectionTitleScoped' => ({required Object name}) => 'Adicionar a ${name}',
			'addServer.signInWithPlexCard' => 'Entrar com Plex',
			'addServer.signInWithPlexCardSubtitle' => 'Autorize este dispositivo. Servidores compartilhados são adicionados.',
			'addServer.signInWithPlexCardSubtitleScoped' => 'Autorize uma conta Plex. Os usuários do Plex Home se tornam perfis.',
			'addServer.connectToMediaBrowserCard' => ({required Object product}) => 'Conectar ao ${product}',
			'addServer.connectToMediaBrowserCardSubtitle' => 'Digite a URL do servidor, o nome de usuário e a senha.',
			'addServer.connectToMediaBrowserCardSubtitleScoped' => ({required Object product, required Object name}) => 'Entre no seu servidor ${product}. Vinculado a ${name}.',
			'addServer.borrowFromAnotherProfile' => 'Pegar emprestado de outro perfil',
			'addServer.borrowFromAnotherProfileSubtitle' => 'Reutilize a conexão de outro perfil. Perfis protegidos por PIN exigem PIN.',
			'addServer.invalidCredentials' => 'Usuário ou senha inválidos',
			'addServer.authResponseNotJson' => 'A resposta de autenticação não era um JSON válido',
			'addServer.authResponseIncomplete' => 'A resposta de login do servidor estava incompleta',
			'addServer.quickConnectRejected' => 'O Quick Connect foi rejeitado pelo servidor',
			'addServer.quickConnectNotJson' => 'A resposta do Quick Connect não era um JSON válido',
			'addServer.quickConnectMissingFields' => 'A resposta do Quick Connect não contém um código ou segredo',
			'addServer.quickConnectPollRejected' => 'A consulta do Quick Connect foi rejeitada pelo servidor',
			'addServer.serverTimedOut' => 'O servidor não respondeu a tempo',
			'addServer.responseNotJson' => 'A resposta do servidor não era um JSON válido',
			'addServer.responseMissingIdentity' => ({required Object product}) => 'A resposta não contém um ID ou nome de servidor — este é um servidor ${product}?',
			'addServer.probeFailed' => ({required Object error}) => 'Não foi possível conectar ao servidor: ${error}',
			'addServer.enterAtLeastOneUrl' => ({required Object product}) => 'Insira pelo menos uma URL de servidor ${product}',
			'addServer.noReachableServer' => ({required Object product}) => 'Nenhum servidor ${product} acessível foi encontrado',
			'addServer.urlsPointToDifferentServers' => ({required Object product}) => 'Estas URLs apontam para servidores ${product} diferentes',
			'addServer.urlDoesNotMatchServer' => ({required Object product}) => 'Esta URL não corresponde ao servidor ${product}',
			'addServer.redirectUnsupported' => 'O servidor redirecionou para uma URL não compatível',
			'addServer.redirectDifferentHost' => ({required Object product}) => 'O servidor redirecionou para outro host. Insira diretamente a URL final do ${product}.',
			'addServer.redirectInsecure' => 'O servidor redirecionou de HTTPS para uma URL insegura',
			'addServer.redirectUnsupportedEnterFinal' => ({required Object product}) => 'O servidor redirecionou para uma URL não compatível. Insira diretamente a URL final do ${product}.',
			_ => null,
		};
	}
}
