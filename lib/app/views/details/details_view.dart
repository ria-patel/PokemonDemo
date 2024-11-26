// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'package:pokemon_demo/app/controllers/details/details_controller.dart';
import 'package:pokemon_demo/app/models/home/dtos/home_data/home_data_dto.dart';
import 'package:pokemon_demo/app/models/home/dtos/set/set_dto.dart';
import 'package:pokemon_demo/app/views/details/ability_details.dart';
import 'package:pokemon_demo/app/views/details/attack_details.dart';
import 'package:pokemon_demo/app/views/details/general_details.dart';
import 'package:pokemon_demo/app/views/details/set_details.dart';
import 'package:pokemon_demo/app/views/details/weakness_details.dart';
import 'package:pokemon_demo/app_utils/constants/string_constants.dart';

class DetailsView extends GetView<DetailsController> {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    HomeDataDto homeDataDto = Get.arguments as HomeDataDto;
    SetDto? setDto = homeDataDto.set;

    return Scaffold(
      appBar: AppBar(
        title: Text(homeDataDto.set?.name ?? ''),
        centerTitle: true,
      ),
      body: AnimatedBuilder(
        animation: controller.easeAnimation,
        builder: (context, child) {
          return Transform.translate(
            offset: Offset(0, controller.easeAnimation.value),
            child: child,
          );
        },
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GeneralDetails(
                homeDataDto: homeDataDto,
                setDto: setDto,
              ),
              SetDetails(
                homeDataDto: homeDataDto,
                setDto: setDto,
              ),
              if ((homeDataDto.weaknesses ?? []).isNotEmpty)
                WeaknessDetails(
                  weaknessList: homeDataDto.weaknesses!,
                  title: StringConstants.weaknesses,
                ),
              if ((homeDataDto.resistances ?? []).isNotEmpty)
                WeaknessDetails(
                  weaknessList: homeDataDto.resistances!,
                  title: StringConstants.resistances,
                ),
              if ((homeDataDto.attacks ?? []).isNotEmpty)
                AttackDetails(attackList: homeDataDto.attacks!),
              if ((homeDataDto.abilities ?? []).isNotEmpty)
                AbilityDetails(abilityList: homeDataDto.abilities!),
            ],
          ),
        ),
      ),
    );
  }
}
