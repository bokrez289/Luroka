import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Apple TV Runner and extension use the same shelf storage identifiers', () {
    final runner = File('tvos/Runner/SystemShelfPlugin.swift').readAsStringSync();
    final sources = File('tvos/TopShelfExtension/ShelfSources.swift').readAsStringSync();
    final provider = File('tvos/TopShelfExtension/TopShelfProvider.swift').readAsStringSync();
    String value(String source, String name) => RegExp('static let $name = "([^"]+)"').firstMatch(source)!.group(1)!;

    expect(value(runner, 'sourcesKey'), value(sources, 'sourcesKey'));
    expect(value(runner, 'tokenKeychainService'), value(sources, 'tokenKeychainService'));
    expect(value(runner, 'cacheDataKey'), value(provider, 'cacheDataKey'));
    expect(value(runner, 'sourcesKey'), startsWith('Luroka'));
    expect(value(runner, 'tokenKeychainService'), startsWith('com.bokrez.luroka.'));
  });
}
