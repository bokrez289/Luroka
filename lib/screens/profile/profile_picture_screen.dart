import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../focus/focusable_wrapper.dart';
import '../../i18n/strings.g.dart';
import '../../profiles/profile.dart';
import '../../profiles/active_profile_provider.dart';
import '../../profiles/profile_avatar.dart';
import '../../services/kids_profile_service.dart';
import '../../services/profile_appearance_service.dart';
import '../../utils/platform_detector.dart';
import '../../utils/error_dialog.dart';
import '../../widgets/focused_scroll_scaffold.dart';
import '../../widgets/profile_avatar_artwork.dart';
import 'kids_settings_screen.dart';
import 'parent_access.dart';

class ProfilePictureScreen extends StatefulWidget {
  const ProfilePictureScreen({super.key, required this.profile});
  final Profile profile;
  @override
  State<ProfilePictureScreen> createState() => _ProfilePictureScreenState();
}

class _ProfilePictureScreenState extends State<ProfilePictureScreen> {
  bool _busy = false;
  final _appearance = ProfileAppearanceService.instance;

  Future<void> _change(ProfileAvatarPreset? preset, {bool photo = false}) async {
    final kids = KidsProfileService.instance;
    if (_busy || kids.isActiveKids) return;
    final owner = kids.activeId;
    setState(() => _busy = true);
    try {
      if (kids.hasKids && !await ensureParentAccess(context)) return;
      if (!mounted || kids.activeId != owner || kids.isActiveKids) return;
      if (photo) {
        final bytes = await ProfileAppearanceService.pickPhoto();
        if (bytes == null || !mounted || kids.activeId != owner || kids.isActiveKids) return;
        await _appearance.setPhoto(widget.profile.id, bytes);
      } else if (preset != null) {
        await _appearance.choosePreset(widget.profile.id, preset);
      } else {
        await _appearance.reset(widget.profile.id);
      }
      if (!mounted) return;
      setState(() {});
    } catch (_) {
      if (mounted) await showErrorDialog(context, t.household.pictureFailed);
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (KidsProfileService.instance.isActiveKids) return const KidsSettingsScreen();
    final serverAvatar = context.watch<ActiveProfileProvider?>()?.avatarUrlFor(widget.profile.id);
    final tv = PlatformDetector.isTV();
    return FocusedScrollScaffold(
      title: Text(t.household.changePicture),
      slivers: [
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: tv ? 28 : 16, vertical: tv ? 16 : 8),
          sliver: SliverList.list(
            children: [
              SizedBox(height: tv ? 10 : 4),
              Center(
                child: ProfileAvatar(profile: widget.profile, size: tv ? 88 : 72, avatarUrl: serverAvatar),
              ),
              SizedBox(height: tv ? 10 : 6),
              Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 560),
                  child: Text(
                    t.household.pictureHint,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(height: 1.35),
                  ),
                ),
              ),
              if (!tv) ...[
                const SizedBox(height: 8),
                Center(
                  child: OutlinedButton.icon(
                    key: const ValueKey('profile-choose-photo'),
                    onPressed: _busy ? null : () => _change(null, photo: true),
                    icon: const Icon(Icons.add_photo_alternate_outlined),
                    label: Text(t.household.choosePhoto),
                  ),
                ),
                const SizedBox(height: 3),
                Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 500),
                    child: Text(
                      t.household.photoHint,
                      textAlign: TextAlign.center,
                      style: Theme.of(
                        context,
                      ).textTheme.labelSmall?.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
                    ),
                  ),
                ),
              ],
              const SizedBox(height: 14),
              Center(
                child: Text(
                  t.household.avatarGallery,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w700),
                ),
              ),
              Center(
                child: Text(
                  t.household.avatarIllustrationHint,
                  style: Theme.of(
                    context,
                  ).textTheme.labelSmall?.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
                ),
              ),
              const SizedBox(height: 8),
              LayoutBuilder(
                builder: (context, bounds) {
                  final gap = tv ? 12.0 : 8.0;
                  final minimum = tv ? 132.0 : 88.0;
                  final columns = ((bounds.maxWidth + gap) / (minimum + gap)).floor().clamp(2, tv ? 7 : 4);
                  final tileWidth = (bounds.maxWidth - gap * (columns - 1)) / columns;
                  final artworkSize = (tileWidth - (tv ? 20 : 14))
                      .clamp(tv ? 70.0 : 56.0, tv ? 106.0 : 78.0)
                      .toDouble();
                  return Center(
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      runAlignment: WrapAlignment.center,
                      spacing: gap,
                      runSpacing: gap,
                      children: [
                        for (final preset in profileAvatarGallery)
                          FocusableWrapper(
                            key: ValueKey('profile-preset-${preset.name}'),
                            semanticLabel: profilePresetLabel(preset),
                            checked: _appearance.presetFor(widget.profile.id) == preset,
                            onSelect: _busy ? null : () => _change(preset),
                            canRequestFocus: !_busy,
                            borderRadius: 16,
                            descendantsAreFocusable: false,
                            child: InkWell(
                              canRequestFocus: false,
                              borderRadius: BorderRadius.circular(16),
                              onTap: _busy ? null : () => _change(preset),
                              child: Container(
                                width: tileWidth,
                                padding: EdgeInsets.symmetric(horizontal: 5, vertical: tv ? 8 : 6),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: Theme.of(context).colorScheme.surfaceContainerHighest,
                                  border: Border.all(
                                    color: _appearance.presetFor(widget.profile.id) == preset
                                        ? Theme.of(context).colorScheme.primary
                                        : Colors.transparent,
                                    width: 2,
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    ProfileAvatarArtwork(preset: preset, size: artworkSize),
                                    SizedBox(height: tv ? 6 : 4),
                                    Text(
                                      profilePresetLabel(preset),
                                      textAlign: TextAlign.center,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: Theme.of(context).textTheme.labelMedium,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  );
                },
              ),
              const SizedBox(height: 14),
              Center(
                child: Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 12,
                  runSpacing: 8,
                  children: [
                    TextButton(onPressed: _busy ? null : () => _change(null), child: Text(t.household.serverPicture)),
                    FilledButton(
                      key: const ValueKey('profile-picture-done'),
                      onPressed: _busy ? null : () => Navigator.of(context).pop(),
                      child: Text(t.common.close),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ],
    );
  }
}
