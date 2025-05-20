import 'package:flutter/material.dart';
import 'package:snacky/src/util/extension/color_extensions.dart';

class TouchFeedback extends StatelessWidget {
  final VoidCallback? onTap;
  final Widget child;
  final Color? color;
  final bool disableInkWell;
  final BorderRadius borderRadius;

  const TouchFeedback({
    required this.onTap,
    required this.child,
    this.color,
    this.borderRadius = BorderRadius.zero,
    this.disableInkWell = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (disableInkWell) {
      return GestureDetector(
        onTap: onTap,
        child: child,
      );
    }
    return ClipRRect(
      borderRadius: borderRadius,
      child: Material(
        color: Colors.transparent,
        borderRadius: borderRadius,
        child: InkWell(
          onTap: onTap,
          highlightColor: color?.withOpacityPercentage(0.5),
          borderRadius: borderRadius,
          child: child,
        ),
      ),
    );
  }
}
