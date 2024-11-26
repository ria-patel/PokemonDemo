// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:pokemon_demo/app/models/home/dtos/home_data/home_data_dto.dart';
import 'package:pokemon_demo/app/models/home/dtos/set/set_dto.dart';
import 'package:pokemon_demo/app_utils/constants/string_constants.dart';
import 'package:pokemon_demo/app_utils/widgets/image/cached_image.dart';

class GeneralDetails extends StatelessWidget {
  final HomeDataDto? homeDataDto;
  final SetDto? setDto;

  const GeneralDetails({
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
          StringConstants.details,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: CachedImage(imageUrl: setDto?.images?.logo ?? '')),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    homeDataDto?.name ?? '',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                      '${StringConstants.superType}${homeDataDto?.supertype ?? ''}'),
                ],
              ),
            )
          ],
        ),
        const SizedBox(height: 4),
        Text('${StringConstants.types}${homeDataDto?.types?.join(',')}'),
        const SizedBox(height: 4),
        Text('${StringConstants.subType}${homeDataDto?.subtypes?.join(',')}'),
        const Divider(),
      ],
    );
  }
}
