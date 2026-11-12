import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/media/ids.dart';
import 'package:luroka/services/system_shelf_service.dart';

void main() {
  test('parses Luroka shelf IDs without including the prefix separator', () {
    expect(SystemShelfService.parseContentId('luroka_server_item_123'), (ServerId('server'), 'item_123'));
    expect(SystemShelfService.parseContentId('luroka__item'), isNull);
    expect(SystemShelfService.parseContentId('luroka_server_'), isNull);
    expect(SystemShelfService.parseContentId('plezy_server_item'), (ServerId('server'), 'item'));
  });
}
