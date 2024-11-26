// Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'attack_dto.g.dart';

@JsonSerializable()
class AttackDto {
  final String? name;
  final List<String>? cost;
  final int? convertedEnergyCost;
  final String? damage;
  final String? text;

  AttackDto({
    this.name,
    this.cost,
    this.convertedEnergyCost,
    this.damage,
    this.text,
  });

  factory AttackDto.fromJson(Map<String, dynamic> json) =>
      _$AttackDtoFromJson(json);

  Map<String, dynamic> toJson() => _$AttackDtoToJson(this);
}
