import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/services/trackers/tracker_constants.dart';
import 'package:luroka/services/trackers/tracker_session.dart';

void main() {
  for (final service in [TrackerService.simkl, TrackerService.mdblist]) {
    test('${service.name} refuses old and differently registered sessions', () {
      final response = <String, dynamic>{
        'access_token': service == TrackerService.simkl ? 'simkl_at_fake' : 'fake',
        'refresh_token': 'fake',
        'created_at': 1,
        'expires_in': 3600,
      };
      final fresh = TrackerSession.fromTokenResponse(service, response);
      expect(TrackerSession.fromJson(fresh.toJson(), service: service).clientId, fresh.clientId);
      final old = Map<String, dynamic>.from(fresh.toJson())..remove('client_id');
      expect(() => TrackerSession.fromJson(old, service: service), throwsA(isA<Exception>()));
      final other = Map<String, dynamic>.from(fresh.toJson())..['client_id'] = 'other-app';
      expect(() => TrackerSession.fromJson(other, service: service), throwsA(isA<Exception>()));
      expect(fresh.copyWith(username: 'test').clientId, fresh.clientId);
    });
  }
}
