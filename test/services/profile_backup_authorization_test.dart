import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/profiles/profile.dart';
import 'package:luroka/services/profile_backup_authorization.dart';

void main() {
  final profiles = [
    Profile.local(id: 'adult-a', displayName: 'A', createdAt: DateTime(2026)),
    Profile.local(id: 'adult-b', displayName: 'B', pinHash: computePinHash('1234'), createdAt: DateTime(2026)),
    Profile.local(id: 'child-a', displayName: 'Child', createdAt: DateTime(2026)),
  ];
  Future<AuthorizedBackupSelection> authorize(
    Set<String> selected, {
    required bool Function() current,
    Future<bool> Function(Profile)? active,
    required Future<bool> Function() parent,
    required Future<bool> Function(Profile) other,
  }) => AuthorizedBackupSelection.authorize(
    activeProfileId: 'adult-a',
    profiles: profiles,
    selectedProfileIds: selected,
    isCurrent: current,
    isKid: (id) => id == 'child-a',
    parentFor: (id) => id == 'child-a' ? 'adult-a' : null,
    approveActiveProfile: active ?? (_) async => true,
    approveParent: parent,
    approveOtherAdult: other,
    includeCredentials: false,
    approveSharedCredentials: () async => false,
  );

  test('other adult and Kids profile require explicit authorization', () async {
    var parentChecks = 0;
    final otherChecks = <String>[];
    final selection = await authorize(
      {'adult-a', 'adult-b', 'child-a'},
      current: () => true,
      parent: () async {
        parentChecks++;
        return true;
      },
      other: (profile) async {
        otherChecks.add(profile.id);
        return true;
      },
    );
    expect(selection.profileIds, {'adult-a', 'adult-b', 'child-a'});
    expect(parentChecks, 1);
    expect(otherChecks, ['adult-b']);
    expect(() => selection.profileIds.add('other'), throwsUnsupportedError);
    await expectLater(
      authorize({'adult-b'}, current: () => true, parent: () async => true, other: (_) async => false),
      throwsStateError,
    );
    await expectLater(
      authorize({'adult-a', 'child-a'}, current: () => true, parent: () async => false, other: (_) async => true),
      throwsStateError,
    );
    await expectLater(
      authorize({'child-a'}, current: () => true, parent: () async => true, other: (_) async => true),
      throwsStateError,
    );
  });

  test('active profile needs a fresh authorization before any export selection', () async {
    var checks = 0;
    await expectLater(
      authorize(
        {'adult-a'},
        current: () => true,
        active: (profile) async {
          checks++;
          expect(profile.id, 'adult-a');
          return false;
        },
        parent: () async => true,
        other: (_) async => true,
      ),
      throwsStateError,
    );
    expect(checks, 1);
  });

  test('profile changes during and after approval invalidate authorization', () async {
    var fresh = true;
    await expectLater(
      authorize(
        {'adult-b'},
        current: () => fresh,
        parent: () async => true,
        other: (_) async {
          fresh = false;
          return true;
        },
      ),
      throwsStateError,
    );
    fresh = true;
    final selection = await authorize(
      {'adult-a'},
      current: () => fresh,
      parent: () async => true,
      other: (_) async => true,
    );
    fresh = false;
    expect(selection.requireCurrent, throwsStateError);
  });
}
