// Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'ability_dto.g.dart';

@JsonSerializable()
class AbilityDto {
  final String? name;
  final String? text;
  final String? type;

  AbilityDto({
    this.name,
    this.text,
    this.type,
  });

  factory AbilityDto.fromJson(Map<String, dynamic> json) =>
      _$AbilityDtoFromJson(json);

  Map<String, dynamic> toJson() => _$AbilityDtoToJson(this);
}
