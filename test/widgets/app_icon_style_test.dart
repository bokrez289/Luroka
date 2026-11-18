import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:luroka/media/icon_style.dart';
import 'package:luroka/services/settings_service.dart';
import 'package:luroka/widgets/app_icon.dart';

import '../test_helpers/prefs.dart';

void main() {
  testWidgets('styles update live and keep stateful hearts distinguishable', (tester) async {
    resetSharedPreferencesForTest();
    SettingsService.resetForTesting();
    final settings = await SettingsService.getInstance();
    await tester.pumpWidget(const MaterialApp(home: Column(children: [
      AppIcon(Symbols.home_rounded),
      AppIcon(Symbols.favorite_rounded, fill: 1),
    ])));
    Icon rendered(int i) => tester.widgetList<Icon>(find.byType(Icon)).elementAt(i);
    expect(rendered(0).icon, Symbols.home_rounded);
    await settings.write(SettingsService.iconStyle, AppIconStyle.materialOutline);
    await tester.pump();
    expect(rendered(0).fill, 0);
    expect(rendered(1).fill, 1);
    await settings.write(SettingsService.iconStyle, AppIconStyle.lucide);
    await tester.pump();
    expect(rendered(0).icon, LucideIcons.home);
    expect(rendered(1).icon, Symbols.favorite_rounded);
  });
}
