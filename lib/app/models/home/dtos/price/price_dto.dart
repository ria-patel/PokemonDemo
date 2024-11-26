// Package imports:
import 'package:json_annotation/json_annotation.dart';

// Project imports:
import 'package:pokemon_demo/app/models/home/dtos/holofoil/holofoil_dto.dart';

part 'price_dto.g.dart';

@JsonSerializable()
class PriceDto {
  final HolofoilDto? lholofoilow;
  final HolofoilDto? reverseHolofoil;

  PriceDto({
    this.lholofoilow,
    this.reverseHolofoil,
  });

  factory PriceDto.fromJson(Map<String, dynamic> json) =>
      _$PriceDtoFromJson(json);

  Map<String, dynamic> toJson() => _$PriceDtoToJson(this);
}
