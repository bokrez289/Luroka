import 'package:flutter/material.dart';

import '../../focus/focusable_button.dart';
import '../../i18n/strings.g.dart';
import '../../utils/platform_detector.dart';
import '../../widgets/settings_surface.dart';
import 'privacy_policy_content.g.dart';

/// The policy is bundled so it is readable on TVs without a browser or network.
class PrivacyPolicyScreen extends StatefulWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  State<PrivacyPolicyScreen> createState() => _PrivacyPolicyScreenState();
}

class _PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {
  final _scroll = ScrollController();
  @override
  void dispose() {
    _scroll.dispose();
    super.dispose();
  }

  void _scrollPage(int direction) {
    if (!_scroll.hasClients) return;
    final position = _scroll.position;
    final target = (position.pixels + direction * position.viewportDimension * 0.65).clamp(
      position.minScrollExtent,
      position.maxScrollExtent,
    );
    _scroll.animateTo(target, duration: const Duration(milliseconds: 180), curve: Curves.easeOut);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    void back() => Navigator.of(context).maybePop();
    return SettingsSurface(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(t.about.privacyPolicy),
          leading: Padding(
            padding: const EdgeInsets.all(6),
            child: FocusableButton(
              key: const ValueKey('privacy-policy-back'),
              autofocus: PlatformDetector.isTV(),
              onPressed: back,
              onBack: back,
              onNavigateDown: () => _scrollPage(1),
              onNavigateUp: () => _scrollPage(-1),
              child: Semantics(label: t.common.back, button: true, child: const Icon(Icons.arrow_back)),
            ),
          ),
        ),
        body: Scrollbar(
          controller: _scroll,
          child: ListView(
            key: const ValueKey('privacy-policy-content'),
            controller: _scroll,
            padding: const EdgeInsets.fromLTRB(24, 16, 24, 40),
            children: [
              for (final text in privacyPolicyIntroduction) _paragraph(context, text),
              for (final section in privacyPolicySections) ...[
                Padding(
                  padding: const EdgeInsets.only(top: 12, bottom: 12),
                  child: Text(section.heading, style: theme.textTheme.titleLarge),
                ),
                for (final text in section.paragraphs) _paragraph(context, text),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Widget _paragraph(BuildContext context, String text) => Padding(
    padding: const EdgeInsets.only(bottom: 16),
    child: Text(text, style: Theme.of(context).textTheme.bodyLarge?.copyWith(height: 1.5)),
  );
}
