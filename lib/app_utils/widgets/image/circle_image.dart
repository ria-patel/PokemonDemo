// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:pokemon_demo/app_utils/widgets/image/cached_image.dart';

class CircleImage extends StatelessWidget {
  final String imageKey;
  final double radius;
  final Color backgroundColor;
  final double outlineWidth;
  final Color outlineColor;

  const CircleImage({
    super.key,
    required this.imageKey,
    this.radius = 40,
    this.backgroundColor = Colors.transparent,
    this.outlineWidth = 0,
    this.outlineColor = Colors.transparent,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: outlineColor,
      radius: radius + outlineWidth,
      child: CircleAvatar(
        backgroundColor: backgroundColor,
        radius: radius,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
            // shape: BoxShape.circle,
          ),
          child: ClipOval(
            clipBehavior: Clip.hardEdge,
            child: CachedImage(
              fit: BoxFit.cover,
              imageUrl: imageKey,
              height: radius * 2,
              width: radius * 2,
            ),
          ),
        ),
      ),
    );
  }
}
