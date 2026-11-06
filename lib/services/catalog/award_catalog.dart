import '../../i18n/strings.g.dart';
import '../../media/media_kind.dart';

enum AwardSelection { winners, nominees }

class AwardCategory {
  const AwardCategory(this.id, this.qid, this.name, {this.kind = MediaKind.movie, this.seedId});
  final String id;
  final String qid;
  final String Function() name;
  final MediaKind kind;
  final String? seedId;
  String get title => name();
}

class AwardFamily {
  const AwardFamily(this.id, this.name, this.categories);
  final String id;
  final String name;
  final List<AwardCategory> categories;
}

/// Wikidata category identifiers describe the category, not a single ceremony.
/// Acting/directing awards resolve the winning person's "for work" qualifier.
final awardFamilies = [
  AwardFamily('oscars', 'Oscars · Academy Awards', [
    AwardCategory('picture', 'Q102427', () => t.awardsCatalog.picture, seedId: 'oscars'),
    AwardCategory('international', 'Q105304', () => t.awardsCatalog.international),
    AwardCategory('animated', 'Q106800', () => t.awardsCatalog.animated),
    AwardCategory('documentary', 'Q111332', () => t.awardsCatalog.documentary),
    AwardCategory('director', 'Q103360', () => t.awardsCatalog.director),
    AwardCategory('actor', 'Q103916', () => t.awardsCatalog.actor),
    AwardCategory('actress', 'Q103618', () => t.awardsCatalog.actress),
    AwardCategory('supportingActor', 'Q106291', () => t.awardsCatalog.supportingActor),
    AwardCategory('supportingActress', 'Q106301', () => t.awardsCatalog.supportingActress),
    AwardCategory('originalScreenplay', 'Q41417', () => t.awardsCatalog.originalScreenplay),
    AwardCategory('adaptedScreenplay', 'Q107258', () => t.awardsCatalog.adaptedScreenplay),
    AwardCategory('cinematography', 'Q131520', () => t.awardsCatalog.cinematography),
    AwardCategory('editing', 'Q281939', () => t.awardsCatalog.editing),
    AwardCategory('score', 'Q488651', () => t.awardsCatalog.score),
    AwardCategory('song', 'Q112243', () => t.awardsCatalog.song),
    AwardCategory('sound', 'Q830079', () => t.awardsCatalog.sound),
    AwardCategory('effects', 'Q393686', () => t.awardsCatalog.effects),
    AwardCategory('productionDesign', 'Q277751', () => t.awardsCatalog.productionDesign),
    AwardCategory('costume', 'Q277536', () => t.awardsCatalog.costume),
    AwardCategory('makeup', 'Q487136', () => t.awardsCatalog.makeup),
  ]),
  AwardFamily('emmys', 'Primetime Emmys', [
    AwardCategory('drama', 'Q989438', () => t.awardsCatalog.dramaSeries, kind: MediaKind.show, seedId: 'emmys'),
    AwardCategory('comedy', 'Q2110156', () => t.awardsCatalog.comedySeries, kind: MediaKind.show, seedId: 'emmyComedy'),
    AwardCategory('limited', 'Q20714679', () => t.awardsCatalog.limitedSeries, kind: MediaKind.show),
    AwardCategory('animated', 'Q337926', () => t.awardsCatalog.animatedProgram, kind: MediaKind.show),
    AwardCategory('comedyActor', 'Q989442', () => t.awardsCatalog.comedyActor, kind: MediaKind.show),
    AwardCategory('comedyActress', 'Q1287335', () => t.awardsCatalog.comedyActress, kind: MediaKind.show),
    AwardCategory('dramaActor', 'Q989439', () => t.awardsCatalog.leadDramaActor, kind: MediaKind.show),
    AwardCategory('dramaActress', 'Q989445', () => t.awardsCatalog.leadDramaActress, kind: MediaKind.show),
    AwardCategory(
      'comedySupportingActor',
      'Q1285970',
      () => t.awardsCatalog.comedySupportingActor,
      kind: MediaKind.show,
    ),
    AwardCategory(
      'comedySupportingActress',
      'Q989450',
      () => t.awardsCatalog.comedySupportingActress,
      kind: MediaKind.show,
    ),
    AwardCategory('limitedActor', 'Q989453', () => t.awardsCatalog.limitedActor, kind: MediaKind.show),
    AwardCategory('limitedActress', 'Q989447', () => t.awardsCatalog.limitedActress, kind: MediaKind.show),
    AwardCategory('supportingActor', 'Q945887', () => t.awardsCatalog.limitedSupportingActor, kind: MediaKind.show),
    AwardCategory('supportingActress', 'Q989449', () => t.awardsCatalog.limitedSupportingActress, kind: MediaKind.show),
    AwardCategory('limitedDirecting', 'Q3403229', () => t.awardsCatalog.limitedDirecting, kind: MediaKind.show),
  ]),
  AwardFamily('bafta', 'BAFTA', [
    AwardCategory('film', 'Q139184', () => t.awardsCatalog.film, seedId: 'bafta'),
    AwardCategory('britishFilm', 'Q2663714', () => t.awardsCatalog.britishFilm),
    AwardCategory('international', 'Q2925687', () => t.awardsCatalog.nonEnglishFilm),
    AwardCategory('director', 'Q787131', () => t.awardsCatalog.director),
    AwardCategory('actor', 'Q400007', () => t.awardsCatalog.actor),
    AwardCategory('actress', 'Q687123', () => t.awardsCatalog.actress),
    AwardCategory('supportingActor', 'Q548389', () => t.awardsCatalog.supportingActor),
    AwardCategory('supportingActress', 'Q787123', () => t.awardsCatalog.supportingActress),
    AwardCategory('originalScreenplay', 'Q41375', () => t.awardsCatalog.originalScreenplay),
    AwardCategory('adaptedScreenplay', 'Q739694', () => t.awardsCatalog.adaptedScreenplay),
    AwardCategory('cinematography', 'Q778870', () => t.awardsCatalog.cinematography),
    AwardCategory('editing', 'Q787145', () => t.awardsCatalog.editing),
  ]),
  AwardFamily('berlin', 'Berlin · Berlinale', [
    AwardCategory('goldenBear', 'Q154590', () => t.awardsCatalog.goldenBear),
    AwardCategory('grandJury', 'Q664212', () => t.awardsCatalog.grandJury),
    AwardCategory('jury', 'Q321207', () => t.awardsCatalog.jury),
    AwardCategory('director', 'Q706031', () => t.awardsCatalog.director),
    AwardCategory('actor', 'Q819973', () => t.awardsCatalog.actor),
    AwardCategory('leadingPerformance', 'Q110961984', () => t.awardsCatalog.leadingPerformance),
    AwardCategory('teddy', 'Q182836', () => t.awardsCatalog.teddy),
    AwardCategory('documentary', 'Q28799939', () => t.awardsCatalog.berlinDocumentary),
  ]),
  AwardFamily('cannes', 'Cannes', [
    AwardCategory('palme', 'Q179808', () => "Palme d’Or", seedId: 'cannes'),
    AwardCategory('grandPrix', 'Q844804', () => 'Grand Prix'),
    AwardCategory('director', 'Q510175', () => t.awardsCatalog.director),
    AwardCategory('actor', 'Q586140', () => t.awardsCatalog.actor),
    AwardCategory('actress', 'Q840286', () => t.awardsCatalog.actress),
  ]),
  AwardFamily('venice', 'Venice', [
    AwardCategory('goldenLion', 'Q209459', () => t.awardsCatalog.goldenLion),
    AwardCategory('grandJury', 'Q944480', () => t.awardsCatalog.grandJury),
    AwardCategory('actor', 'Q2089923', () => t.awardsCatalog.volpiActor),
    AwardCategory('actress', 'Q2089918', () => t.awardsCatalog.volpiActress),
    AwardCategory('queerLion', 'Q2504862', () => t.awardsCatalog.queerLion),
  ]),
  AwardFamily('goldenGlobes', 'Golden Globes', [
    AwardCategory('dramaFilm', 'Q1011509', () => t.awardsCatalog.dramaFilm),
    AwardCategory('comedyFilm', 'Q670282', () => t.awardsCatalog.comedyFilm),
    AwardCategory('actor', 'Q593098', () => t.awardsCatalog.dramaActor),
    AwardCategory('actress', 'Q463085', () => t.awardsCatalog.dramaActress),
    AwardCategory('comedyActor', 'Q181883', () => t.awardsCatalog.comedyActor),
    AwardCategory('director', 'Q586356', () => t.awardsCatalog.director),
    AwardCategory('screenplay', 'Q849124', () => t.awardsCatalog.screenplay),
    AwardCategory('international', 'Q387380', () => t.awardsCatalog.nonEnglishFilm),
    AwardCategory('dramaSeries', 'Q1255198', () => t.awardsCatalog.dramaSeries, kind: MediaKind.show),
    AwardCategory('comedySeries', 'Q596294', () => t.awardsCatalog.globesComedySeries, kind: MediaKind.show),
  ]),
  AwardFamily('sundance', 'Sundance', [
    AwardCategory('dramatic', 'Q3774974', () => t.awardsCatalog.usDramatic),
    AwardCategory('documentary', 'Q2366088', () => t.awardsCatalog.documentaryJury),
    AwardCategory('world', 'Q969394', () => t.awardsCatalog.worldCinema),
    AwardCategory('audience', 'Q1419872', () => t.awardsCatalog.dramaticAudience),
    AwardCategory('director', 'Q2366084', () => t.awardsCatalog.usDirecting),
  ]),
  AwardFamily('toronto', 'Toronto · TIFF', [
    AwardCategory('audience', 'Q39087364', () => t.awardsCatalog.peopleChoice),
    AwardCategory('canadian', 'Q16034468', () => t.awardsCatalog.canadianFilm),
  ]),
  AwardFamily('spirit', 'Independent Spirit', [
    AwardCategory('director', 'Q2295041', () => t.awardsCatalog.director),
    AwardCategory('actress', 'Q2544851', () => t.awardsCatalog.actress),
    AwardCategory('actor', 'Q2544859', () => t.awardsCatalog.actor),
    AwardCategory('screenplay', 'Q1170507', () => t.awardsCatalog.screenplay),
    AwardCategory('firstFeature', 'Q1170500', () => t.awardsCatalog.firstFeature),
    AwardCategory('international', 'Q2295011', () => t.awardsCatalog.internationalFilm),
    AwardCategory('cassavetes', 'Q3910543', () => t.awardsCatalog.cassavetes),
  ]),
  AwardFamily('saturn', 'Saturn Awards', [
    AwardCategory('scienceFiction', 'Q1131772', () => t.awardsCatalog.scienceFiction),
    AwardCategory('fantasy', 'Q956597', () => t.awardsCatalog.fantasy),
    AwardCategory('horror', 'Q115705', () => t.awardsCatalog.horror),
    AwardCategory('action', 'Q115737', () => t.awardsCatalog.action),
    AwardCategory('thriller', 'Q16294258', () => t.awardsCatalog.thriller),
    AwardCategory('animated', 'Q1231643', () => t.awardsCatalog.animatedFilm),
    AwardCategory('director', 'Q1265702', () => t.awardsCatalog.director),
    AwardCategory('actor', 'Q1259362', () => t.awardsCatalog.actor),
    AwardCategory('actress', 'Q1413741', () => t.awardsCatalog.actress),
  ]),
];
