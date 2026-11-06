import 'package:flutter/material.dart';
import '../i18n/strings.g.dart';

import '../theme/mono_tokens.dart';
import '../utils/platform_detector.dart';

/// Unwatched-episode count chip shown in the top-right corner of poster
/// cards. Keeps a [size]-diameter circular footprint for 1–2 digit counts
/// and widens into a stadium pill beyond that; counts above 999 render as
/// "999+" so the label stays on one line.
class UnwatchedCountBadge extends StatelessWidget {
  final int count;
  final double size;
  final double fontSize;

  const UnwatchedCountBadge({super.key, required this.count, this.size = 24, this.fontSize = 12});

  @override
  Widget build(BuildContext context) {
    final mobile = PlatformDetector.isMobile(context);
    final badgeSize = mobile ? size * 0.82 : size;
    return Semantics(
      label: t.mobileLibrary.unwatchedCount(count: count),
      child: Container(
        height: badgeSize,
        constraints: BoxConstraints(minWidth: badgeSize),
        padding: EdgeInsets.symmetric(horizontal: badgeSize * 0.2),
        decoration: BoxDecoration(
          color: mobile ? const Color(0xe6111720) : tokens(context).text,
          borderRadius: BorderRadius.circular(badgeSize / 2),
          boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.3), blurRadius: 4)],
        ),
        // Center with widthFactor shrink-wraps the pill to the label (Container
        // alignment would expand into the Stack's loose width instead).
        child: Center(
          widthFactor: 1,
          child: Text(
            count > 999 ? '999+' : '$count',
            maxLines: 1,
            softWrap: false,
            style: TextStyle(
              color: mobile ? Colors.white : tokens(context).bg,
              fontSize: mobile ? fontSize - 1 : fontSize,
              fontWeight: .bold,
            ),
          ),
        ),
      ),
    );
  }
}
