import 'package:flutter/foundation.dart';

/// Holds the latest notification tap until the profile UI can consume it.
class DownloadNotificationNavigation extends ChangeNotifier {
  String? _pending;
  int _serial = 0;
  String? get pending => _pending;
  int get serial => _serial;

  void open(String globalKey) {
    if (globalKey.isEmpty) return;
    _pending = globalKey;
    _serial++;
    notifyListeners();
  }

  void consume(String globalKey, int serial) {
    if (_pending == globalKey && _serial == serial) _pending = null;
  }
}

final downloadNotificationNavigation = DownloadNotificationNavigation();
