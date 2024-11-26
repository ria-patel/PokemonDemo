// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:pokemon_demo/app/models/home/dtos/attack/attack_dto.dart';
import 'package:pokemon_demo/app_utils/constants/string_constants.dart';

class AttackDetails extends StatelessWidget {
  final List<AttackDto> attackList;

  const AttackDetails({
    super.key,
    required this.attackList,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          StringConstants.attacks,
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
          itemCount: attackList.length,
          itemBuilder: (context, index) {
            AttackDto attackDto = attackList[index];

            return ListTile(
              dense: true,
              contentPadding: EdgeInsets.zero,
              title: Text(attackDto.name ?? ''),
              subtitle: Text(attackDto.text ?? ''),
            );
          },
        ),
        const Divider(),
      ],
    );
  }
}
