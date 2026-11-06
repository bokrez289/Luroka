import 'package:flutter/material.dart';
import 'dart:io';
import 'package:url_launcher/url_launcher.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../i18n/strings.g.dart';
import '../services/update_service.dart';
import '../services/android_update_service.dart';
import '../widgets/dialog_action_button.dart';
import 'dialogs.dart';
import 'platform_detector.dart';

Future<void> showUpdateAvailableDialog(
  BuildContext context,
  Map<String, dynamic> updateInfo, {
  required String title,
  required String dismissLabel,
  bool showSkipVersion = false,
}) {
  return showScopedDialog<void>(
    context: context,
    builder: (dialogContext) {
      if (updateInfo['androidArtifact'] is Map) {
        return AndroidUpdateDialog(info: updateInfo, dismissLabel: dismissLabel, showSkipVersion: showSkipVersion);
      }
      final latestVersion = updateInfo['latestVersion'] as String;
      final releaseUrl = updateInfo['releaseUrl'] as String;

      return AlertDialog(
        title: Text(title),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: .min,
            crossAxisAlignment: .start,
            children: [
              Text(
                t.update.versionAvailable(version: latestVersion),
                style: Theme.of(dialogContext).textTheme.titleMedium,
              ),
              const SizedBox(height: 8),
              Text(
                t.update.currentVersion(version: updateInfo['currentVersion']),
                style: Theme.of(dialogContext).textTheme.bodySmall,
              ),
              if (Platform.isAndroid) ...[
                const SizedBox(height: 16),
                Text(t.releaseUpdates.manualInstructions),
                if (PlatformDetector.isTV()) ...[
                  const SizedBox(height: 12),
                  Text(t.releaseUpdates.tvInstructions),
                  const SizedBox(height: 12),
                  SelectableText(releaseUrl),
                  const SizedBox(height: 12),
                  QrImageView(data: releaseUrl, size: 140, backgroundColor: Colors.white),
                ],
              ],
            ],
          ),
        ),
        actions: [
          DialogActionButton(onPressed: () => Navigator.pop(dialogContext), label: dismissLabel),
          if (showSkipVersion)
            DialogActionButton(
              onPressed: () async {
                await UpdateService.skipVersion(latestVersion);
                if (dialogContext.mounted) Navigator.pop(dialogContext);
              },
              label: t.update.skipVersion,
            ),
          DialogActionButton(
            onPressed: () async {
              final url = Uri.parse(releaseUrl);
              if (await canLaunchUrl(url)) {
                await launchUrl(url, mode: LaunchMode.externalApplication);
              }
              if (dialogContext.mounted) Navigator.pop(dialogContext);
            },
            label: t.update.viewRelease,
            isPrimary: true,
          ),
        ],
      );
    },
  );
}

class AndroidUpdateDialog extends StatefulWidget {
  const AndroidUpdateDialog({super.key, required this.info, required this.dismissLabel, this.showSkipVersion = false});
  final Map<String, dynamic> info;
  final String dismissLabel;
  final bool showSkipVersion;
  @override
  State<AndroidUpdateDialog> createState() => _AndroidUpdateDialogState();
}

class _AndroidUpdateDialogState extends State<AndroidUpdateDialog> {
  HttpClient? _client;
  File? _apk;
  double? _progress;
  String? _message;
  bool _installing = false;
  Map<String, dynamic> get artifact => Map<String, dynamic>.from(widget.info['androidArtifact'] as Map);
  @override
  void dispose() {
    _client?.close(force: true);
    super.dispose();
  }

  Future<void> _download() async {
    if (_progress != null || _installing) return;
    setState(() {
      _progress = 0;
      _message = null;
    });
    final client = _client = HttpClient()..connectionTimeout = const Duration(seconds: 20);
    try {
      final apk = await AndroidUpdateService.download(
        artifact,
        client: client,
        onProgress: (value) {
          if (mounted && (value - (_progress ?? 0) >= .01 || value == 1)) setState(() => _progress = value);
        },
      );
      if (!mounted) return;
      setState(() {
        _apk = apk;
        _progress = null;
        _message = t.settingsRedesign.updateReady;
      });
      await _install();
    } catch (_) {
      if (mounted) {
        setState(() {
          _progress = null;
          _message = t.settingsRedesign.downloadFailed;
        });
      }
    } finally {
      client.close(force: true);
    }
  }

  Future<void> _install() async {
    if (_installing || _apk == null) return;
    setState(() => _installing = true);
    try {
      final launched = await AndroidUpdateService.install(_apk!, artifact['versionCode'] as int);
      if (mounted) {
        setState(() => _message = launched ? t.settingsRedesign.updateReady : t.settingsRedesign.installPermission);
      }
    } catch (_) {
      if (mounted) {
        setState(() {
          _message = t.settingsRedesign.downloadFailed;
          _apk = null;
        });
      }
    } finally {
      if (mounted) setState(() => _installing = false);
    }
  }

  @override
  Widget build(BuildContext context) => AlertDialog(
    title: Text(t.update.versionAvailable(version: '${widget.info['latestVersion']} (${artifact['versionCode']})')),
    content: SizedBox(
      width: 500,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(t.update.currentVersion(version: widget.info['currentVersion'])),
            if (widget.info['releaseNotes']?.toString().isNotEmpty == true) ...[
              const SizedBox(height: 16),
              Text(t.settingsRedesign.releaseNotes, style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(height: 8),
              Text(widget.info['releaseNotes'].toString()),
            ],
            if (_progress != null) ...[
              const SizedBox(height: 20),
              Text('${t.settingsRedesign.downloading} ${(_progress! * 100).round()}%'),
              const SizedBox(height: 8),
              LinearProgressIndicator(value: _progress),
            ],
            if (_message != null) ...[const SizedBox(height: 16), Text(_message!)],
          ],
        ),
      ),
    ),
    actions: [
      DialogActionButton(
        onPressed: () => Navigator.of(context).pop(),
        label: _progress != null ? t.common.cancel : widget.dismissLabel,
      ),
      if (widget.showSkipVersion && _progress == null)
        DialogActionButton(
          onPressed: () async {
            await UpdateService.skipVersion('${widget.info['latestVersion']}+${artifact['versionCode']}');
            if (context.mounted) Navigator.of(context).pop();
          },
          label: t.update.skipVersion,
        ),
      DialogActionButton(
        onPressed: _progress != null || _installing
            ? null
            : _apk == null
            ? _download
            : _install,
        label: _apk == null ? t.settingsRedesign.downloadInstall : t.settingsRedesign.installUpdate,
        isPrimary: true,
      ),
    ],
  );
}
