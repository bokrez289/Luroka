import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/connection/connection.dart';
import 'package:luroka/models/plex/plex_home_user.dart';
import 'package:luroka/profiles/profile.dart';
import 'package:luroka/profiles/profile_connection.dart';
import 'package:luroka/profiles/profile_merge.dart';
import 'package:luroka/services/storage_service.dart';

import '../test_helpers/prefs.dart';

PlexHomeUser _homeUser(String uuid, String name) {
  return PlexHomeUser(
    id: 1,
    uuid: uuid,
    title: name,
    thumb: '',
    hasPassword: false,
    restricted: false,
    updatedAt: null,
    admin: false,
    guest: false,
    protected: false,
  );
}

PlexAccountConnection _account(String id) {
  return PlexAccountConnection(
    id: id,
    accountToken: 'token-$id',
    clientIdentifier: 'client-$id',
    accountLabel: 'Plex',
    createdAt: DateTime(2026, 1, 1),
  );
}

void main() {
  setUp(() {
    resetSharedPreferencesForTest();
  });

  group('profile picker visibility', () {
    final local = Profile.local(id: 'local', displayName: 'My profile', createdAt: DateTime(2026));
    final owner = Profile.virtualPlexHome(connectionId: 'plex', homeUser: _homeUser('owner', 'Owner'));
    final other = Profile.virtualPlexHome(connectionId: 'plex', homeUser: _homeUser('other', 'Other'));

    test('hides unused Home members while keeping local profiles and the selected member', () {
      expect(profilesForPicker([local, owner, other], activeId: owner.id, showOtherPlexHome: false), [local, owner]);
      expect(profilesForPicker([local, owner, other], activeId: local.id, showOtherPlexHome: false), [local]);
    });

    test('keeps a previously chosen Home member after switching to another service', () {
      final chosen = owner.copyWith(lastUsedAt: DateTime(2026));
      expect(profilesForPicker([local, chosen, other], activeId: local.id, showOtherPlexHome: false), [local, chosen]);
    });

    test('reveals members on request and never strands the first Home selection', () {
      expect(profilesForPicker([local, owner, other], activeId: local.id, showOtherPlexHome: true), [
        local,
        owner,
        other,
      ]);
      expect(profilesForPicker([owner, other], activeId: null, showOtherPlexHome: false), [owner, other]);
    });
  });

  group('visibleProfileConnections', () {
    test('keeps all local profile connection rows', () {
      final profile = Profile.local(id: 'local-1', displayName: 'Owner', createdAt: DateTime(2026, 1, 1));
      const rows = [
        ProfileConnection(profileId: 'local-1', connectionId: 'plex-1', userIdentifier: 'u1'),
        ProfileConnection(profileId: 'local-1', connectionId: 'jellyfin-1', userIdentifier: 'u2'),
      ];

      expect(visibleProfileConnections(profile, rows), rows);
    });

    test('filters Plex Home parent token cache row', () {
      final profile = Profile.plexHome(
        id: 'plex-home-plex-1-user-1',
        displayName: 'Kid',
        parentConnectionId: 'plex-1',
        createdAt: DateTime(2026, 1, 1),
      );
      const rows = [
        ProfileConnection(profileId: 'plex-home-plex-1-user-1', connectionId: 'plex-1', userIdentifier: 'user-1'),
        ProfileConnection(profileId: 'plex-home-plex-1-user-1', connectionId: 'jellyfin-1', userIdentifier: 'user-2'),
      ];

      final visible = visibleProfileConnections(profile, rows);

      expect(visible, hasLength(1));
      expect(visible.single.connectionId, 'jellyfin-1');
    });
  });

  group('mergeLocalWithPlexHome', () {
    test('sorts local and Plex Home profiles by most recent usage', () async {
      final storage = await StorageService.getInstance();
      final plexProfileId = plexHomeProfileId(accountConnectionId: 'plex-1', homeUserUuid: 'home-1');
      await storage.markProfileUsed('local-older', DateTime(2026, 1, 2));
      await storage.markProfileUsed(plexProfileId, DateTime(2026, 1, 3));

      final profiles = mergeLocalWithPlexHome(
        locals: [
          Profile.local(id: 'local-older', displayName: 'Older', createdAt: DateTime(2026, 1, 1)),
          Profile.local(id: 'local-never', displayName: 'Never', createdAt: DateTime(2026, 1, 2)),
        ],
        plexHomeByConnectionId: {
          'plex-1': [_homeUser('home-1', 'Home')],
        },
        connectionsById: {'plex-1': _account('plex-1')},
        storage: storage,
      );

      expect(profiles.map((p) => p.id).toList(), [plexProfileId, 'local-older', 'local-never']);
      expect(profiles.first.lastUsedAt, DateTime(2026, 1, 3));
    });

    test('keeps never-used profiles in fallback order', () {
      final firstPlexId = plexHomeProfileId(accountConnectionId: 'plex-1', homeUserUuid: 'home-1');
      final secondPlexId = plexHomeProfileId(accountConnectionId: 'plex-1', homeUserUuid: 'home-2');

      final profiles = mergeLocalWithPlexHome(
        locals: [
          Profile.local(id: 'local-a', displayName: 'A', createdAt: DateTime(2026, 1, 1)),
          Profile.local(id: 'local-b', displayName: 'B', createdAt: DateTime(2026, 1, 2)),
        ],
        plexHomeByConnectionId: {
          'plex-1': [_homeUser('home-1', 'Home 1'), _homeUser('home-2', 'Home 2')],
        },
        connectionsById: {'plex-1': _account('plex-1')},
      );

      expect(profiles.map((p) => p.id).toList(), ['local-a', 'local-b', firstPlexId, secondPlexId]);
    });

    test('uses the newest local timestamp from storage or the database row', () async {
      final storage = await StorageService.getInstance();
      await storage.markProfileUsed('local-storage-newer', DateTime(2026, 1, 4));
      await storage.markProfileUsed('local-db-newer', DateTime(2026, 1, 2));

      final profiles = mergeLocalWithPlexHome(
        locals: [
          Profile.local(
            id: 'local-db-newer',
            displayName: 'DB newer',
            createdAt: DateTime(2026, 1, 1),
            lastUsedAt: DateTime(2026, 1, 3),
          ),
          Profile.local(id: 'local-storage-newer', displayName: 'Storage newer', createdAt: DateTime(2026, 1, 2)),
        ],
        plexHomeByConnectionId: const {},
        connectionsById: const {},
        storage: storage,
      );

      expect(profiles.map((p) => p.id).toList(), ['local-storage-newer', 'local-db-newer']);
      expect(profiles.first.lastUsedAt, DateTime(2026, 1, 4));
      expect(profiles.last.lastUsedAt, DateTime(2026, 1, 3));
    });
  });
}
