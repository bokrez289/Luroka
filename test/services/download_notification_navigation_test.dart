import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/services/download_notification_navigation.dart';

void main() {
  test('a newer tap cannot be consumed by an earlier navigation attempt', () {
    final navigation = DownloadNotificationNavigation();
    addTearDown(navigation.dispose);
    var notifications = 0;
    navigation.addListener(() => notifications++);
    navigation.open('server:episode');
    final earlier = navigation.serial;
    navigation.open('server:episode');
    navigation.consume('server:episode', earlier);
    expect(navigation.pending, 'server:episode');
    expect(notifications, 2);
    navigation.consume('server:episode', navigation.serial);
    expect(navigation.pending, isNull);
  });
}
