// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attack_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AttackDto _$AttackDtoFromJson(Map<String, dynamic> json) => AttackDto(
      name: json['name'] as String?,
      cost: (json['cost'] as List<dynamic>?)?.map((e) => e as String).toList(),
      convertedEnergyCost: (json['convertedEnergyCost'] as num?)?.toInt(),
      damage: json['damage'] as String?,
      text: json['text'] as String?,
    );

Map<String, dynamic> _$AttackDtoToJson(AttackDto instance) => <String, dynamic>{
      'name': instance.name,
      'cost': instance.cost,
      'convertedEnergyCost': instance.convertedEnergyCost,
      'damage': instance.damage,
      'text': instance.text,
    };
