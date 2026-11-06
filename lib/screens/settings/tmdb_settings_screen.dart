import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../focus/focusable_button.dart';
import '../../focus/focusable_text_field.dart';
import '../../i18n/strings.g.dart';
import '../../providers/catalog_sources_provider.dart';
import '../../models/catalog/catalog_item.dart';
import '../../widgets/focused_scroll_scaffold.dart';
import 'integration_presentation.dart';

class TmdbSettingsScreen extends StatefulWidget {
  const TmdbSettingsScreen({super.key});
  @override
  State<TmdbSettingsScreen> createState() => _TmdbSettingsScreenState();
}

class _TmdbSettingsScreenState extends State<TmdbSettingsScreen> {
  final _controller = TextEditingController();
  final _fieldFocus = FocusNode(debugLabel: 'TmdbCredential');
  final _connectFocus = FocusNode(debugLabel: 'TmdbConnect');
  final _textInput = TvTextInputController();
  bool _busy = false;
  String? _error;

  Future<void> _connect() async {
    if (_busy) return;
    _textInput.closeTextInput();
    setState(() {
      _busy = true;
      _error = null;
    });
    try {
      await context.read<CatalogSourcesProvider>().connectTmdb(_controller.text);
      if (mounted) {
        _controller.clear();
        setState(() => _busy = false);
      }
    } catch (_) {
      if (mounted) {
        setState(() {
          _busy = false;
          _error = t.lurokaDiscovery.invalidKey;
        });
      }
    }
  }

  @override
  void dispose() {
    _fieldFocus.dispose();
    _connectFocus.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<CatalogSourcesProvider>();
    final connected = provider.tmdbSource != null;
    final custom = provider.tmdbHasCustomCredential;
    return FocusedScrollScaffold(
      title: Text(t.lurokaDiscovery.tmdbSettings),
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.all(24),
          sliver: SliverList.list(
            children: [
              IntegrationHeader(source: CatalogSourceId.tmdb, title: t.lurokaDiscovery.tmdbSettings),
              const SizedBox(height: 24),
              Text(t.lurokaDiscovery.setupDescription, style: Theme.of(context).textTheme.bodyLarge),
              const SizedBox(height: 20),
              if (connected && custom) ...[
                Text(t.lurokaDiscovery.connected, style: Theme.of(context).textTheme.titleMedium),
                const SizedBox(height: 12),
                FocusableButton(
                  onPressed: () => context.read<CatalogSourcesProvider>().disconnectTmdb(),
                  child: OutlinedButton(
                    onPressed: () => context.read<CatalogSourcesProvider>().disconnectTmdb(),
                    child: Text(t.lurokaDiscovery.disconnect),
                  ),
                ),
              ] else ...[
                if (connected) Text(t.lurokaDiscovery.builtInKeyNote, style: Theme.of(context).textTheme.bodyMedium),
                FocusableTextField(
                  focusNode: _fieldFocus,
                  tvTextInputController: _textInput,
                  tvTextInputAutoOpenBehavior: TvTextInputAutoOpenBehavior.never,
                  onNavigateDown: _connectFocus.requestFocus,
                  controller: _controller,
                  obscureText: true,
                  autocorrect: false,
                  enableSuggestions: false,
                  decoration: InputDecoration(labelText: t.lurokaDiscovery.apiKey, border: const OutlineInputBorder()),
                  onSubmitted: (_) => _connectFocus.requestFocus(),
                ),
                const SizedBox(height: 16),
                if (_error != null) Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
                FocusableButton(
                  focusNode: _connectFocus,
                  onNavigateUp: _fieldFocus.requestFocus,
                  onPressed: _busy ? null : _connect,
                  child: FilledButton(
                    onPressed: _busy ? null : _connect,
                    child: Text(_busy ? t.lurokaDiscovery.connecting : t.lurokaDiscovery.connect),
                  ),
                ),
              ],
              const SizedBox(height: 28),
              Text(t.lurokaDiscovery.attribution, style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: 12),
              Text(t.lurokaDiscovery.awardsNote, style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
        ),
      ],
    );
  }
}
