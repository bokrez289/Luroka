import 'package:flutter/material.dart';
import 'mobile_keyboard_scope.dart';

/// Keep the dock at the window edge. Only the content viewport responds to the
/// IME; nested tab Scaffolds must not subtract the same inset a second time.
class MobileShellScaffold extends StatelessWidget {
  const MobileShellScaffold({super.key, required this.body, this.bottomNavigationBar});
  final Widget body;
  final Widget? bottomNavigationBar;
  @override
  Widget build(BuildContext context) {
    final inset = MediaQuery.viewInsetsOf(context).bottom;
    final keyboard = inset > 0;
    return SizedBox.expand(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: EdgeInsets.only(bottom: inset),
          child: MediaQuery.removeViewInsets(
            context: context,
            removeBottom: true,
            child: MobileKeyboardScope(visible: keyboard, child: body),
          ),
        ),
        bottomNavigationBar: keyboard ? null : bottomNavigationBar,
      ),
    );
  }
}
