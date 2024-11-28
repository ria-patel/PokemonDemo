// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:cached_network_image/cached_network_image.dart';

// Project imports:
import 'package:pokemon_demo/app_utils/constants/string_constants.dart';

class CachedImage extends StatelessWidget {
  final String imageUrl;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final Alignment? alignment;

  const CachedImage({
    super.key,
    required this.imageUrl,
    this.width,
    this.height,
    this.fit,
    this.alignment,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      width: width,
      height: height,
      imageUrl: imageUrl,
      fit: fit,
      alignment: alignment ?? Alignment.center,
      placeholder: (_, __) => Container(
        height: 40,
        width: 40,
        alignment: Alignment.center,
        child: const CircularProgressIndicator.adaptive(),
      ),
      errorWidget: (_, __, ___) =>
          const Center(child: Text(StringConstants.noDataFound)),
    );
  }
}
