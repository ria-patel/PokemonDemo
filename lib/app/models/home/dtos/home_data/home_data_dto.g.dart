// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeDataDto _$HomeDataDtoFromJson(Map<String, dynamic> json) => HomeDataDto(
      id: json['id'] as String?,
      name: json['name'] as String?,
      supertype: json['supertype'] as String?,
      subtypes: (json['subtypes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      level: json['level'] as String?,
      hp: json['hp'] as String?,
      types:
          (json['types'] as List<dynamic>?)?.map((e) => e as String).toList(),
      evolvesFrom: json['evolvesFrom'] as String?,
      abilities: (json['abilities'] as List<dynamic>?)
          ?.map((e) => AbilityDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      attacks: (json['attacks'] as List<dynamic>?)
          ?.map((e) => AttackDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      weaknesses: (json['weaknesses'] as List<dynamic>?)
          ?.map((e) => WeaknessDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      resistances: (json['resistances'] as List<dynamic>?)
          ?.map((e) => WeaknessDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      retreatCost: (json['retreatCost'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      convertedRetreatCost: (json['convertedRetreatCost'] as num?)?.toInt(),
      set: json['set'] == null
          ? null
          : SetDto.fromJson(json['set'] as Map<String, dynamic>),
      number: json['number'] as String?,
      artist: json['artist'] as String?,
      rarity: json['rarity'] as String?,
      flavorText: json['flavorText'] as String?,
      nationalPokedexNumbers: (json['nationalPokedexNumbers'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      images: json['images'] == null
          ? null
          : ImageDto.fromJson(json['images'] as Map<String, dynamic>),
      tcgplayer: json['tcgplayer'] == null
          ? null
          : TcgplayerDto.fromJson(json['tcgplayer'] as Map<String, dynamic>),
      cardmarket: json['cardmarket'] == null
          ? null
          : CardmarketDto.fromJson(json['cardmarket'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HomeDataDtoToJson(HomeDataDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'supertype': instance.supertype,
      'subtypes': instance.subtypes,
      'level': instance.level,
      'hp': instance.hp,
      'types': instance.types,
      'evolvesFrom': instance.evolvesFrom,
      'abilities': instance.abilities,
      'attacks': instance.attacks,
      'weaknesses': instance.weaknesses,
      'resistances': instance.resistances,
      'retreatCost': instance.retreatCost,
      'convertedRetreatCost': instance.convertedRetreatCost,
      'set': instance.set,
      'number': instance.number,
      'artist': instance.artist,
      'rarity': instance.rarity,
      'flavorText': instance.flavorText,
      'nationalPokedexNumbers': instance.nationalPokedexNumbers,
      'images': instance.images,
      'tcgplayer': instance.tcgplayer,
      'cardmarket': instance.cardmarket,
    };
