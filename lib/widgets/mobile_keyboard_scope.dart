import 'package:flutter/widgets.dart';

/// The outer mobile Scaffold consumes the keyboard inset when it resizes its
/// body. Preserve visibility for nested screens without applying that inset twice.
class MobileKeyboardScope extends InheritedWidget {
  const MobileKeyboardScope({super.key, required this.visible, required super.child});
  final bool visible;

  static bool isVisibleOf(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<MobileKeyboardScope>()?.visible ??
      (MediaQuery.viewInsetsOf(context).bottom > 0);

  @override
  bool updateShouldNotify(MobileKeyboardScope oldWidget) => visible != oldWidget.visible;
}
