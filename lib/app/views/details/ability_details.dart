// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:pokemon_demo/app/models/home/dtos/ability/ability_dto.dart';
import 'package:pokemon_demo/app_utils/constants/string_constants.dart';

class AbilityDetails extends StatelessWidget {
  final List<AbilityDto> abilityList;

  const AbilityDetails({
    super.key,
    required this.abilityList,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          StringConstants.abilities,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        ListView.builder(
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          physics: const ClampingScrollPhysics(),
          itemCount: abilityList.length,
          itemBuilder: (context, index) {
            AbilityDto abilityDto = abilityList[index];

            return ListTile(
              dense: true,
              contentPadding: EdgeInsets.zero,
              title: Text(abilityDto.name ?? ''),
              subtitle: Text(abilityDto.text ?? ''),
            );
          },
        ),
        const Divider(),
      ],
    );
  }
}
