import 'dart:async';

import 'package:flutter/material.dart';

import '../../focus/focusable_button.dart';
import '../../i18n/strings.g.dart';
import '../../widgets/focused_scroll_scaffold.dart';
import 'integration_presentation.dart';
import 'tracker_service_info.dart';

/// An explanation before starting a tracker's device/OAuth authorization.
class TrackerIntegrationScreen extends StatelessWidget {
  const TrackerIntegrationScreen({super.key, required this.info});

  final TrackerServiceInfo info;

  @override
  Widget build(BuildContext context) {
    final connected = info.isConnected(context);
    final username = connected ? info.username(context) : null;
    return FocusedScrollScaffold(
      title: Text(info.displayName),
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.all(24),
          sliver: SliverToBoxAdapter(
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 720),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    IntegrationHeader(
                      source: info.logoSource,
                      title: info.displayName,
                      status: connected
                          ? (username == null ? info.displayName : t.services.connectedAs(username: username))
                          : t.services.notConnected,
                    ),
                    const SizedBox(height: 24),
                    Text(
                      t.services.connectionIntro(service: info.displayName),
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    const SizedBox(height: 20),
                    FocusableButton(
                      autofocus: true,
                      useBackgroundFocus: true,
                      onPressed: connected
                          ? () => Navigator.push(
                              context,
                              MaterialPageRoute<void>(builder: (_) => info.buildSettingsScreen()),
                            )
                          : () => unawaited(info.startConnection(context)),
                      child: FilledButton(
                        onPressed: connected
                            ? () => Navigator.push(
                                context,
                                MaterialPageRoute<void>(builder: (_) => info.buildSettingsScreen()),
                              )
                            : () => unawaited(info.startConnection(context)),
                        child: Text(
                          connected ? t.settings.title : t.services.connectService(service: info.displayName),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
