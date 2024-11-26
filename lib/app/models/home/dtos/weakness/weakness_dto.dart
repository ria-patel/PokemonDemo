// Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'weakness_dto.g.dart';

@JsonSerializable()
class WeaknessDto {
  final String? type;
  final String? value;

  WeaknessDto({
    this.type,
    this.value,
  });

  factory WeaknessDto.fromJson(Map<String, dynamic> json) =>
      _$WeaknessDtoFromJson(json);

  Map<String, dynamic> toJson() => _$WeaknessDtoToJson(this);
}
