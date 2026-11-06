import 'package:flutter/material.dart';

import '../i18n/strings.g.dart';
import '../services/profile_appearance_service.dart';
import '../models/kids_avatar.dart';
import 'kids/kids_avatar.dart';

String profilePresetLabel(ProfileAvatarPreset preset) => switch (preset) {
  ProfileAvatarPreset.mountain => t.household.mountain,
  ProfileAvatarPreset.orbit => t.household.orbit,
  ProfileAvatarPreset.waves => t.household.waves,
  ProfileAvatarPreset.blossom => t.household.blossom,
  ProfileAvatarPreset.lightning => t.household.lightning,
  ProfileAvatarPreset.moon => t.household.moon,
  ProfileAvatarPreset.portraitSunrise => t.household.avatarPortraitSunrise,
  ProfileAvatarPreset.portraitOcean => t.household.avatarPortraitOcean,
  ProfileAvatarPreset.kidArtist => t.household.avatarKidArtist,
  ProfileAvatarPreset.kidSkater => t.household.avatarKidSkater,
  ProfileAvatarPreset.cat => t.household.avatarCat,
  ProfileAvatarPreset.dog => t.household.avatarDog,
  ProfileAvatarPreset.panda => t.household.avatarPanda,
  ProfileAvatarPreset.owl => t.household.avatarOwl,
  ProfileAvatarPreset.fox => t.household.avatarFox,
  ProfileAvatarPreset.dinosaur => t.household.avatarDinosaur,
  ProfileAvatarPreset.robot => t.household.avatarRobot,
  ProfileAvatarPreset.portraitMeadow => t.household.avatarPortraitMeadow,
  ProfileAvatarPreset.portraitBerry => t.household.avatarPortraitBerry,
  ProfileAvatarPreset.portraitGolden => t.household.avatarPortraitGolden,
  ProfileAvatarPreset.portraitIndigo => t.household.avatarPortraitIndigo,
};

class ProfileAvatarArtwork extends StatelessWidget {
  const ProfileAvatarArtwork({super.key, required this.preset, this.size = 80});
  final ProfileAvatarPreset preset;
  final double size;
  @override
  Widget build(BuildContext context) {
    final character = switch (preset) {
      ProfileAvatarPreset.portraitSunrise => KidsAvatarKind.sunrisePerson,
      ProfileAvatarPreset.portraitOcean => KidsAvatarKind.oceanPerson,
      ProfileAvatarPreset.kidArtist => KidsAvatarKind.childArtist,
      ProfileAvatarPreset.kidSkater => KidsAvatarKind.childSkater,
      ProfileAvatarPreset.cat => KidsAvatarKind.cat,
      ProfileAvatarPreset.dog => KidsAvatarKind.dog,
      ProfileAvatarPreset.panda => KidsAvatarKind.panda,
      ProfileAvatarPreset.owl => KidsAvatarKind.owl,
      ProfileAvatarPreset.fox => KidsAvatarKind.fox,
      ProfileAvatarPreset.dinosaur => KidsAvatarKind.dinosaur,
      ProfileAvatarPreset.robot => KidsAvatarKind.robot,
      ProfileAvatarPreset.portraitMeadow => KidsAvatarKind.meadowPerson,
      ProfileAvatarPreset.portraitBerry => KidsAvatarKind.berryPerson,
      ProfileAvatarPreset.portraitGolden => KidsAvatarKind.goldenPerson,
      ProfileAvatarPreset.portraitIndigo => KidsAvatarKind.indigoPerson,
      _ => null,
    };
    if (character != null) return KidsAvatar(avatar: character, size: size, older: true);
    final (icon, top, bottom) = switch (preset) {
      ProfileAvatarPreset.mountain => (Icons.landscape_rounded, const Color(0xff419b91), const Color(0xff193d58)),
      ProfileAvatarPreset.orbit => (Icons.rocket_launch_rounded, const Color(0xff9c79dc), const Color(0xff34335e)),
      ProfileAvatarPreset.waves => (Icons.waves_rounded, const Color(0xff499ed0), const Color(0xff16374c)),
      ProfileAvatarPreset.blossom => (Icons.local_florist_rounded, const Color(0xffd67f9b), const Color(0xff673758)),
      ProfileAvatarPreset.lightning => (Icons.bolt_rounded, const Color(0xffdba96a), const Color(0xff77504a)),
      ProfileAvatarPreset.moon => (Icons.nightlight_round, const Color(0xff748abf), const Color(0xff252d4c)),
      ProfileAvatarPreset.portraitSunrise ||
      ProfileAvatarPreset.portraitOcean ||
      ProfileAvatarPreset.kidArtist ||
      ProfileAvatarPreset.kidSkater ||
      ProfileAvatarPreset.cat ||
      ProfileAvatarPreset.dog ||
      ProfileAvatarPreset.panda ||
      ProfileAvatarPreset.owl ||
      ProfileAvatarPreset.fox ||
      ProfileAvatarPreset.dinosaur ||
      ProfileAvatarPreset.robot => throw StateError('Character presets are rendered above'),
      ProfileAvatarPreset.portraitMeadow || ProfileAvatarPreset.portraitBerry ||
      ProfileAvatarPreset.portraitGolden || ProfileAvatarPreset.portraitIndigo => throw StateError('Character presets are rendered above'),
    };
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [top, bottom]),
      ),
      child: Icon(icon, color: const Color(0xfffff4de), size: size * 0.52),
    );
  }
}
