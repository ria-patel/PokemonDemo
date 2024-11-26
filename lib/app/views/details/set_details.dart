// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:pokemon_demo/app/models/home/dtos/home_data/home_data_dto.dart';
import 'package:pokemon_demo/app/models/home/dtos/set/set_dto.dart';
import 'package:pokemon_demo/app_utils/constants/string_constants.dart';
import 'package:pokemon_demo/app_utils/widgets/image/cached_image.dart';

class SetDetails extends StatelessWidget {
  final HomeDataDto? homeDataDto;
  final SetDto? setDto;

  const SetDetails({
    super.key,
    required this.homeDataDto,
    required this.setDto,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          StringConstants.setDetails,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        CachedImage(imageUrl: setDto?.images?.logo ?? ''),
        const SizedBox(height: 8),
        Text(
          homeDataDto?.name ?? '',
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text('${StringConstants.series}${setDto?.series}'),
        const SizedBox(height: 4),
        Text('${StringConstants.totalPrintedSet}${setDto?.printedTotal}'),
        const SizedBox(height: 4),
        Text('${StringConstants.releasedOn}${setDto?.releaseDate}'),
        const Divider(),
      ],
    );
  }
}