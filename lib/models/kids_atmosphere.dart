import 'package:flutter/material.dart';

/// Profile-owned appearance, independent of parental restrictions.
enum KidsAtmosphere {
  sunshine(Color(0xff071529), Color(0xffffdc55), Colors.transparent),
  berry(Color(0xff28182f), Color(0xffffb5d1), Color(0xff743a70)),
  mint(Color(0xff102b2a), Color(0xff9ee9c8), Color(0xff28756a)),
  sky(Color(0xff10233b), Color(0xffa8d8ff), Color(0xff356a9b));

  const KidsAtmosphere(this.background, this.accent, this.skyTint);
  final Color background;
  final Color accent;
  final Color skyTint;

  static KidsAtmosphere fromId(String? id) =>
      values.where((value) => value.name == id).firstOrNull ?? sunshine;
}
