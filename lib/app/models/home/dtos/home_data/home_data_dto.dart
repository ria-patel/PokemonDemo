// Package imports:
import 'package:json_annotation/json_annotation.dart';

// Project imports:
import 'package:pokemon_demo/app/models/home/dtos/ability/ability_dto.dart';
import 'package:pokemon_demo/app/models/home/dtos/attack/attack_dto.dart';
import 'package:pokemon_demo/app/models/home/dtos/cardmarket/cardmarket_dto.dart';
import 'package:pokemon_demo/app/models/home/dtos/image/image_dto.dart';
import 'package:pokemon_demo/app/models/home/dtos/set/set_dto.dart';
import 'package:pokemon_demo/app/models/home/dtos/tcgplayer/tcgplayer_dto.dart';
import 'package:pokemon_demo/app/models/home/dtos/weakness/weakness_dto.dart';

part 'home_data_dto.g.dart';

@JsonSerializable()
class HomeDataDto {
  final String? id;
  final String? name;
  final String? supertype;
  final List<String>? subtypes;
  final String? level;
  final String? hp;
  final List<String>? types;
  final String? evolvesFrom;
  final List<AbilityDto>? abilities;
  final List<AttackDto>? attacks;
  final List<WeaknessDto>? weaknesses;
  final List<WeaknessDto>? resistances;
  final List<String>? retreatCost;
  final int? convertedRetreatCost;
  final SetDto? set;
  final String? number;
  final String? artist;
  final String? rarity;
  final String? flavorText;
  final List<int>? nationalPokedexNumbers;
  final ImageDto? images;
  final TcgplayerDto? tcgplayer;
  final CardmarketDto? cardmarket;

  HomeDataDto({
    this.id,
    this.name,
    this.supertype,
    this.subtypes,
    this.level,
    this.hp,
    this.types,
    this.evolvesFrom,
    this.abilities,
    this.attacks,
    this.weaknesses,
    this.resistances,
    this.retreatCost,
    this.convertedRetreatCost,
    this.set,
    this.number,
    this.artist,
    this.rarity,
    this.flavorText,
    this.nationalPokedexNumbers,
    this.images,
    this.tcgplayer,
    this.cardmarket,
  });

  factory HomeDataDto.fromJson(Map<String, dynamic> json) =>
      _$HomeDataDtoFromJson(json);

  Map<String, dynamic> toJson() => _$HomeDataDtoToJson(this);
}
