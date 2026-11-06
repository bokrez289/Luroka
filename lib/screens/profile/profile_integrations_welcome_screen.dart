import 'dart:async';
import 'package:flutter/material.dart';

import '../../focus/focusable_button.dart';
import '../../i18n/strings.g.dart';
import '../../services/profile_appearance_service.dart';
import '../../widgets/onboarding_scaffold.dart';
import '../settings/services_settings_screen.dart';

/// Optional first-run introduction, hosted inside the active profile session.
class ProfileIntegrationsWelcomeScreen extends StatefulWidget {
  const ProfileIntegrationsWelcomeScreen({super.key, required this.profileId});

  final String profileId;

  @override
  State<ProfileIntegrationsWelcomeScreen> createState() => _ProfileIntegrationsWelcomeScreenState();
}

class _ProfileIntegrationsWelcomeScreenState extends State<ProfileIntegrationsWelcomeScreen> {
  bool _visitedIntegrations = false;
  @override
  void initState() {
    super.initState();
    unawaited(ProfileAppearanceService.instance.markIntegrationsPresented(widget.profileId));
  }

  Future<void> _openIntegrations() async {
    await Navigator.of(context).push(MaterialPageRoute<void>(builder: (_) => const ServicesSettingsScreen()));
    if (mounted) setState(() => _visitedIntegrations = true);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return OnboardingScaffold(
      title: t.profileIntegrations.title,
      description: t.profileIntegrations.description,
      step: t.profileIntegrations.step,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(t.profileIntegrations.examples, style: theme.textTheme.titleMedium?.copyWith(height: 1.5)),
          const SizedBox(height: 24),
          FocusableButton(
            autofocus: true,
            onPressed: _openIntegrations,
            child: FilledButton.icon(
              key: const ValueKey('onboarding-integrations-connect'),
              onPressed: _openIntegrations,
              icon: const Icon(Icons.link_rounded),
              label: Text(t.profileIntegrations.connect),
            ),
          ),
          const SizedBox(height: 12),
          FocusableButton(
            onPressed: () => Navigator.of(context).pop(),
            child: OutlinedButton(
              key: const ValueKey('onboarding-integrations-later'),
              onPressed: () => Navigator.of(context).pop(),
              child: Text(_visitedIntegrations ? t.household.startWatching : t.profileIntegrations.later),
            ),
          ),
        ],
      ),
    );
  }
}
