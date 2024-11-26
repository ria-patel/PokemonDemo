// Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'holofoil_dto.g.dart';

@JsonSerializable()
class HolofoilDto {
  final double? low;
  final double? mid;
  final double? high;
  final double? market;

  HolofoilDto({
    this.low,
    this.mid,
    this.high,
    this.market,
  });

  factory HolofoilDto.fromJson(Map<String, dynamic> json) =>
      _$HolofoilDtoFromJson(json);

  Map<String, dynamic> toJson() => _$HolofoilDtoToJson(this);
}
