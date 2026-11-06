/// Stable, device-local avatar identifiers. Unknown stored values use Explorer.
enum KidsAvatarKind {
  explorer,
  fox,
  dinosaur,
  robot,
  childArtist,
  childSkater,
  sunrisePerson,
  oceanPerson,
  cat,
  dog,
  panda,
  owl,
  bear,
  meadowPerson,
  berryPerson,
  goldenPerson,
  indigoPerson;

  static KidsAvatarKind fromId(String? id) => values.where((value) => value.name == id).firstOrNull ?? explorer;
}
