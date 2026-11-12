import '../profiles/profile.dart';

/// Short-lived in-memory permission for an explicitly chosen profile set.
///
/// Callers must supply live freshness checks that invalidate on profile or
/// parental-policy changes. PIN checks are a local UI barrier, not a security
/// boundary against someone with full access to the device.
final class AuthorizedBackupSelection {
  AuthorizedBackupSelection._(this.profileIds, this.profiles, this.includeCredentials, this._isCurrent);

  final Set<String> profileIds;
  final List<Profile> profiles;
  final bool includeCredentials;
  final bool Function() _isCurrent;

  void requireCurrent() {
    if (!_isCurrent()) throw StateError('Profile authorization is no longer current');
  }

  /// Explicit approval is required for every other adult, even when unpinned.
  /// A protected Plex Home profile must be verified through Plex by the caller;
  /// accepting the existing local profile-management check is insufficient.
  static Future<AuthorizedBackupSelection> authorize({
    required String activeProfileId,
    required Iterable<Profile> profiles,
    required Set<String> selectedProfileIds,
    required bool Function() isCurrent,
    required bool Function(String id) isKid,
    required String? Function(String id) parentFor,
    required Future<bool> Function(Profile profile) approveActiveProfile,
    required Future<bool> Function() approveParent,
    required Future<bool> Function(Profile profile) approveOtherAdult,
    required Future<bool> Function() approveSharedCredentials,
    required bool includeCredentials,
  }) async {
    final selected = Set<String>.unmodifiable(selectedProfileIds);
    final byId = <String, Profile>{for (final profile in profiles) profile.id: profile};
    if (!isCurrent() ||
        activeProfileId.isEmpty ||
        isKid(activeProfileId) ||
        !byId.containsKey(activeProfileId) ||
        selected.isEmpty ||
        !byId.keys.toSet().containsAll(selected)) {
      throw StateError('Invalid backup selection');
    }
    // Re-authenticate the active adult as well. Entering the profile earlier
    // is not approval to export its credentials at an arbitrary later time.
    if (!await approveActiveProfile(byId[activeProfileId]!) || !isCurrent()) {
      throw StateError('Active profile authorization was not granted');
    }
    for (final id in selected.where(isKid)) {
      final parent = parentFor(id);
      if (parent == null || !selected.contains(parent) || isKid(parent)) {
        throw StateError('Include the linked adult parent for each Kids profile');
      }
    }
    if (selected.any(isKid)) {
      if (!await approveParent() || !isCurrent()) throw StateError('Parent authorization was not granted');
    }
    for (final id in selected) {
      if (id == activeProfileId || isKid(id)) continue;
      if (!await approveOtherAdult(byId[id]!) || !isCurrent()) {
        throw StateError('Profile authorization was not granted');
      }
    }
    if (includeCredentials && (!await approveSharedCredentials() || !isCurrent())) {
      throw StateError('Shared credential authorization was not granted');
    }
    if (!isCurrent()) throw StateError('Profile authorization is no longer current');
    return AuthorizedBackupSelection._(
      selected,
      List.unmodifiable(selected.map((id) => byId[id]!)),
      includeCredentials,
      isCurrent,
    );
  }
}
