import 'package:flutter/material.dart';

import '../services/device_performance.dart';

/// Shared visual vocabulary for Kids, with a quieter treatment for older kids.
@immutable
class KidsStyle {
  const KidsStyle({required this.maxAge});
  final int maxAge;
  bool get isOlder => maxAge >= 12;
  Color get background => isOlder ? const Color(0xff101e2d) : const Color(0xff161a38);
  Color get surface => isOlder ? const Color(0xff1c3143) : const Color(0xff292d55);
  Color get accent => isOlder ? const Color(0xff89ecd3) : const Color(0xffffd77a);
  Color get violet => isOlder ? const Color(0xff6078ad) : const Color(0xffa68cfa);
  Color get teal => const Color(0xff69d8db);
  double get radius => isOlder ? 20 : 28;

  static bool reduceMotion(BuildContext context) =>
      DevicePerformance.isReduced ||
      (MediaQuery.maybeDisableAnimationsOf(context) ?? false) ||
      (MediaQuery.maybeAccessibleNavigationOf(context) ?? false);

  static Duration motion(BuildContext context, [int milliseconds = 220]) =>
      reduceMotion(context) ? Duration.zero : Duration(milliseconds: milliseconds);
}
