// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:pokemon_demo/app/models/home/dtos/weakness/weakness_dto.dart';

class WeaknessDetails extends StatelessWidget {
  final List<WeaknessDto> weaknessList;
  final String title;

  const WeaknessDetails({
    super.key,
    required this.weaknessList,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        ListView.builder(
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          physics: const ClampingScrollPhysics(),
          itemCount: weaknessList.length,
          itemBuilder: (context, index) {
            WeaknessDto weaknessDto = weaknessList[index];

            return ListTile(
              dense: true,
              contentPadding: EdgeInsets.zero,
              title: Text(weaknessDto.type ?? ''),
              subtitle: Text(weaknessDto.value ?? ''),
            );
          },
        ),
        const Divider(),
      ],
    );
  }
}
