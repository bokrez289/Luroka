import 'package:flutter/material.dart';

import '../../i18n/strings.g.dart';
import '../../models/kids_avatar.dart';

String kidsAvatarLabel(KidsAvatarKind avatar) => switch (avatar) {
  KidsAvatarKind.explorer => t.kids.avatarExplorer,
  KidsAvatarKind.fox => t.kids.avatarFox,
  KidsAvatarKind.dinosaur => t.kids.avatarDinosaur,
  KidsAvatarKind.robot => t.kids.avatarRobot,
  KidsAvatarKind.childArtist => t.kids.avatarChildArtist,
  KidsAvatarKind.childSkater => t.kids.avatarChildSkater,
  KidsAvatarKind.sunrisePerson => t.kids.avatarSunrisePerson,
  KidsAvatarKind.oceanPerson => t.kids.avatarOceanPerson,
  KidsAvatarKind.cat => t.kids.avatarCat,
  KidsAvatarKind.dog => t.kids.avatarDog,
  KidsAvatarKind.panda => t.kids.avatarPanda,
  KidsAvatarKind.owl => t.kids.avatarOwl,
  KidsAvatarKind.bear => t.kids.avatarBear,
  KidsAvatarKind.meadowPerson => t.household.avatarPortraitMeadow,
  KidsAvatarKind.berryPerson => t.household.avatarPortraitBerry,
  KidsAvatarKind.goldenPerson => t.household.avatarPortraitGolden,
  KidsAvatarKind.indigoPerson => t.household.avatarPortraitIndigo,
};

/// Resolution-independent original artwork, also used in the tiny user menu.
class KidsAvatar extends StatelessWidget {
  const KidsAvatar({super.key, required this.avatar, this.size = 96, this.older = false});
  final KidsAvatarKind avatar;
  final double size;
  final bool older;

  @override
  Widget build(BuildContext context) => SizedBox.square(
    dimension: size,
    child: ClipOval(
      child: RepaintBoundary(child: CustomPaint(painter: _AvatarPainter(avatar, older))),
    ),
  );
}

class _AvatarPainter extends CustomPainter {
  const _AvatarPainter(this.avatar, this.older);
  final KidsAvatarKind avatar;
  final bool older;

  @override
  void paint(Canvas canvas, Size size) {
    canvas.scale(size.width / 100, size.height / 100);
    final tint = switch (avatar) {
      KidsAvatarKind.explorer => const Color(0xff65d9df),
      KidsAvatarKind.fox => const Color(0xffffbc77),
      KidsAvatarKind.dinosaur => const Color(0xff91e5a7),
      KidsAvatarKind.robot => const Color(0xffb79df6),
      KidsAvatarKind.childArtist => const Color(0xfff084ab),
      KidsAvatarKind.childSkater => const Color(0xff63c3d4),
      KidsAvatarKind.sunrisePerson => const Color(0xffffa56b),
      KidsAvatarKind.oceanPerson => const Color(0xff5c9ed8),
      KidsAvatarKind.cat => const Color(0xffffc16c),
      KidsAvatarKind.dog => const Color(0xffb98562),
      KidsAvatarKind.panda => const Color(0xff82c8bf),
      KidsAvatarKind.owl => const Color(0xffb295db),
      KidsAvatarKind.bear => const Color(0xffd29b70),
      KidsAvatarKind.meadowPerson => const Color(0xff70bb8d),
      KidsAvatarKind.berryPerson => const Color(0xffc685a4),
      KidsAvatarKind.goldenPerson => const Color(0xffe2b363),
      KidsAvatarKind.indigoPerson => const Color(0xff8e99dd),
    };
    final paint = Paint()
      ..shader = LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          tint.withValues(alpha: older ? 0.45 : 0.85),
          const Color(0xff303559),
        ],
      ).createShader(const Rect.fromLTWH(0, 0, 100, 100));
    canvas.drawRect(const Rect.fromLTWH(0, 0, 100, 100), paint);
    void oval(Rect rect, Color color) => canvas.drawOval(rect, Paint()..color = color);
    void box(Rect rect, double radius, Color color) =>
        canvas.drawRRect(RRect.fromRectAndRadius(rect, Radius.circular(radius)), Paint()..color = color);
    void path(List<Offset> points, Color color) {
      final shape = Path()..moveTo(points.first.dx, points.first.dy);
      for (final p in points.skip(1)) {
        shape.lineTo(p.dx, p.dy);
      }
      canvas.drawPath(shape..close(), Paint()..color = color);
    }

    const ink = Color(0xff182d43);
    const cream = Color(0xfffff3dc);
    switch (avatar) {
      case KidsAvatarKind.explorer:
        box(const Rect.fromLTWH(24, 74, 52, 35), 16, cream);
        oval(const Rect.fromLTWH(17, 16, 66, 68), cream);
        box(const Rect.fromLTWH(23, 33, 54, 37), 17, ink);
        box(const Rect.fromLTWH(29, 38, 42, 26), 12, const Color(0xff277d94));
        oval(const Rect.fromLTWH(32, 42, 16, 5), Colors.white.withValues(alpha: 0.65));
        box(const Rect.fromLTWH(40, 82, 20, 10), 3, const Color(0xffffc76f));
      case KidsAvatarKind.fox:
        path([const Offset(18, 50), const Offset(20, 12), const Offset(45, 34)], const Color(0xfff58a48));
        path([const Offset(55, 34), const Offset(80, 12), const Offset(82, 50)], const Color(0xfff58a48));
        path([const Offset(25, 34), const Offset(26, 22), const Offset(37, 36)], cream);
        path([const Offset(63, 36), const Offset(74, 22), const Offset(75, 34)], cream);
        oval(const Rect.fromLTWH(17, 28, 66, 59), const Color(0xfff58a48));
        oval(const Rect.fromLTWH(23, 50, 30, 30), cream);
        oval(const Rect.fromLTWH(47, 50, 30, 30), cream);
        oval(const Rect.fromLTWH(32, 46, 7, 9), ink);
        oval(const Rect.fromLTWH(61, 46, 7, 9), ink);
        path([const Offset(44, 64), const Offset(56, 64), const Offset(50, 72)], ink);
      case KidsAvatarKind.dinosaur:
        for (var i = 0; i < 4; i++) {
          path([
            Offset(28.0 + i * 11, 34),
            Offset(33.0 + i * 11, 12 + (i % 2) * 5),
            Offset(43.0 + i * 11, 34),
          ], const Color(0xffffd57a));
        }
        box(const Rect.fromLTWH(19, 26, 62, 62), 26, const Color(0xff71ce98));
        box(const Rect.fromLTWH(28, 54, 56, 30), 15, const Color(0xffb5edb8));
        oval(const Rect.fromLTWH(32, 42, 7, 9), ink);
        oval(const Rect.fromLTWH(61, 42, 7, 9), ink);
        oval(const Rect.fromLTWH(64, 61, 4, 3), ink);
        canvas.drawArc(
          const Rect.fromLTWH(37, 60, 22, 14),
          0.2,
          2.7,
          false,
          Paint()
            ..color = ink
            ..style = PaintingStyle.stroke
            ..strokeWidth = 2.3
            ..strokeCap = StrokeCap.round,
        );
      case KidsAvatarKind.robot:
        box(const Rect.fromLTWH(47, 14, 6, 18), 3, cream);
        oval(const Rect.fromLTWH(44, 10, 12, 12), const Color(0xffffd77a));
        box(const Rect.fromLTWH(12, 44, 12, 22), 5, const Color(0xffffd77a));
        box(const Rect.fromLTWH(76, 44, 12, 22), 5, const Color(0xffffd77a));
        box(const Rect.fromLTWH(21, 29, 58, 53), 15, const Color(0xffc9b6ff));
        box(const Rect.fromLTWH(27, 39, 46, 28), 9, ink);
        box(const Rect.fromLTWH(34, 47, 9, 10), 4, const Color(0xff89ecd3));
        box(const Rect.fromLTWH(57, 47, 9, 10), 4, const Color(0xff89ecd3));
        box(const Rect.fromLTWH(41, 72, 18, 4), 2, ink);
      case KidsAvatarKind.childArtist:
        _person(
          canvas,
          oval,
          box,
          path,
          skin: const Color(0xff9a583c),
          hair: const Color(0xff272239),
          shirt: const Color(0xffe77ca5),
          curls: true,
        );
        // Tiny original paintbrush makes the illustration recognizable at menu size.
        path([const Offset(72, 78), const Offset(84, 50), const Offset(87, 52)], const Color(0xffffdd91));
      case KidsAvatarKind.childSkater:
        _person(
          canvas,
          oval,
          box,
          path,
          skin: const Color(0xffe1a878),
          hair: const Color(0xff75442f),
          shirt: const Color(0xff4c9fb3),
          cap: true,
        );
        box(const Rect.fromLTWH(30, 31, 40, 8), 4, const Color(0xffffd67d));
      case KidsAvatarKind.sunrisePerson:
        _person(
          canvas,
          oval,
          box,
          path,
          skin: const Color(0xffb56c4b),
          hair: const Color(0xff302638),
          shirt: const Color(0xffed9b6b),
          curls: true,
        );
      case KidsAvatarKind.oceanPerson:
        _person(
          canvas,
          oval,
          box,
          path,
          skin: const Color(0xffeac19b),
          hair: const Color(0xff423249),
          shirt: const Color(0xff5799cf),
        );
      case KidsAvatarKind.meadowPerson:
        _person(canvas, oval, box, path, skin: const Color(0xff77492f), hair: const Color(0xff1c1a20), shirt: const Color(0xff70bb8d), curls: true);
      case KidsAvatarKind.berryPerson:
        _person(canvas, oval, box, path, skin: const Color(0xfff0c6a5), hair: const Color(0xff80432e), shirt: const Color(0xffbe7292));
      case KidsAvatarKind.goldenPerson:
        _person(canvas, oval, box, path, skin: const Color(0xffb7744f), hair: const Color(0xff342821), shirt: const Color(0xffd8a44c), cap: true);
      case KidsAvatarKind.indigoPerson:
        _person(canvas, oval, box, path, skin: const Color(0xffd69a6c), hair: const Color(0xff2e2032), shirt: const Color(0xff747bc8), curls: true);
      case KidsAvatarKind.cat:
        path([const Offset(22, 48), const Offset(26, 14), const Offset(47, 34)], const Color(0xfff1a85f));
        path([const Offset(53, 34), const Offset(75, 14), const Offset(80, 48)], const Color(0xfff1a85f));
        path([const Offset(28, 39), const Offset(30, 24), const Offset(41, 38)], const Color(0xffffe7bd));
        path([const Offset(58, 38), const Offset(70, 24), const Offset(72, 39)], const Color(0xffffe7bd));
        oval(const Rect.fromLTWH(18, 30, 64, 59), const Color(0xfff1a85f));
        oval(const Rect.fromLTWH(25, 51, 50, 33), const Color(0xffffe7bd));
        oval(const Rect.fromLTWH(32, 48, 7, 9), ink);
        oval(const Rect.fromLTWH(61, 48, 7, 9), ink);
        path([const Offset(45, 64), const Offset(55, 64), const Offset(50, 70)], const Color(0xffb9645c));
        _whiskers(canvas, ink);
      case KidsAvatarKind.dog:
        oval(const Rect.fromLTWH(12, 25, 28, 48), const Color(0xff794d3b));
        oval(const Rect.fromLTWH(60, 25, 28, 48), const Color(0xff794d3b));
        oval(const Rect.fromLTWH(18, 27, 64, 62), const Color(0xffd59a68));
        oval(const Rect.fromLTWH(28, 54, 44, 31), const Color(0xffffe7c1));
        oval(const Rect.fromLTWH(33, 43, 7, 9), ink);
        oval(const Rect.fromLTWH(60, 43, 7, 9), ink);
        oval(const Rect.fromLTWH(44, 59, 12, 9), ink);
        canvas.drawArc(
          const Rect.fromLTWH(39, 63, 22, 17),
          .1,
          2.9,
          false,
          Paint()
            ..color = ink
            ..style = PaintingStyle.stroke
            ..strokeWidth = 2
            ..strokeCap = StrokeCap.round,
        );
      case KidsAvatarKind.panda:
        oval(const Rect.fromLTWH(18, 15, 25, 26), ink);
        oval(const Rect.fromLTWH(57, 15, 25, 26), ink);
        oval(const Rect.fromLTWH(17, 25, 66, 64), const Color(0xfffff5e7));
        oval(const Rect.fromLTWH(27, 43, 20, 23), ink);
        oval(const Rect.fromLTWH(53, 43, 20, 23), ink);
        oval(const Rect.fromLTWH(35, 48, 7, 8), const Color(0xfff4d986));
        oval(const Rect.fromLTWH(58, 48, 7, 8), const Color(0xfff4d986));
        oval(const Rect.fromLTWH(43, 64, 14, 10), ink);
      case KidsAvatarKind.owl:
        path([const Offset(20, 39), const Offset(24, 16), const Offset(43, 34)], const Color(0xff8b62a7));
        path([const Offset(57, 34), const Offset(76, 16), const Offset(80, 39)], const Color(0xff8b62a7));
        oval(const Rect.fromLTWH(17, 28, 66, 63), const Color(0xff8b62a7));
        oval(const Rect.fromLTWH(25, 41, 28, 27), const Color(0xfffff0cf));
        oval(const Rect.fromLTWH(47, 41, 28, 27), const Color(0xfffff0cf));
        oval(const Rect.fromLTWH(35, 49, 9, 11), ink);
        oval(const Rect.fromLTWH(56, 49, 9, 11), ink);
        path([const Offset(45, 62), const Offset(55, 62), const Offset(50, 72)], const Color(0xffffca73));
        box(const Rect.fromLTWH(28, 82, 44, 10), 5, const Color(0xffffca73));
      case KidsAvatarKind.bear:
        oval(const Rect.fromLTWH(15, 20, 30, 30), const Color(0xff966443));
        oval(const Rect.fromLTWH(55, 20, 30, 30), const Color(0xff966443));
        oval(const Rect.fromLTWH(20, 28, 60, 62), const Color(0xffc58b5f));
        oval(const Rect.fromLTWH(29, 47, 8, 10), ink);
        oval(const Rect.fromLTWH(63, 47, 8, 10), ink);
        oval(const Rect.fromLTWH(39, 59, 22, 18), const Color(0xffffe0ae));
        oval(const Rect.fromLTWH(45, 61, 10, 7), ink);
    }
    if (!older) {
      canvas.drawCircle(const Offset(86, 22), 2, Paint()..color = cream.withValues(alpha: 0.7));
      canvas.drawCircle(const Offset(12, 76), 1.6, Paint()..color = cream.withValues(alpha: 0.6));
    }
  }

  void _person(
    Canvas canvas,
    void Function(Rect, Color) oval,
    void Function(Rect, double, Color) box,
    void Function(List<Offset>, Color) path, {
    required Color skin,
    required Color hair,
    required Color shirt,
    bool curls = false,
    bool cap = false,
  }) {
    const ink = Color(0xff28253a);
    oval(const Rect.fromLTWH(20, 67, 60, 45), shirt);
    oval(const Rect.fromLTWH(31, 25, 38, 50), skin);
    oval(const Rect.fromLTWH(28, 21, 44, 34), hair);
    if (curls) {
      for (final p in const [
        Offset(31, 34),
        Offset(40, 24),
        Offset(51, 22),
        Offset(62, 27),
        Offset(69, 38),
        Offset(29, 44),
      ]) {
        canvas.drawCircle(p, 8, Paint()..color = hair);
      }
    } else {
      path([
        const Offset(29, 41),
        const Offset(30, 20),
        const Offset(49, 26),
        const Offset(70, 18),
        const Offset(72, 43),
      ], hair);
    }
    if (cap) {
      oval(const Rect.fromLTWH(25, 17, 50, 22), const Color(0xff30445c));
      box(const Rect.fromLTWH(19, 34, 58, 6), 3, const Color(0xffffd67d));
    }
    oval(const Rect.fromLTWH(39, 47, 4, 6), ink);
    oval(const Rect.fromLTWH(57, 47, 4, 6), ink);
    canvas.drawArc(
      const Rect.fromLTWH(41, 52, 18, 13),
      .2,
      2.7,
      false,
      Paint()
        ..color = ink
        ..style = PaintingStyle.stroke
        ..strokeWidth = 1.8
        ..strokeCap = StrokeCap.round,
    );
  }

  void _whiskers(Canvas canvas, Color color) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5
      ..strokeCap = StrokeCap.round;
    for (final start in const [Offset(28, 62), Offset(28, 68), Offset(72, 62), Offset(72, 68)]) {
      final left = start.dx < 50;
      canvas.drawLine(start, start + Offset(left ? -14 : 14, -3), paint);
    }
  }

  @override
  bool shouldRepaint(_AvatarPainter old) => old.avatar != avatar || old.older != older;
}
