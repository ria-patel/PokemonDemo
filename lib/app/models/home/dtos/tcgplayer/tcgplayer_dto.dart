// Package imports:
import 'package:json_annotation/json_annotation.dart';

// Project imports:
import 'package:pokemon_demo/app/models/home/dtos/price/price_dto.dart';

part 'tcgplayer_dto.g.dart';

@JsonSerializable()
class TcgplayerDto {
  final String? url;
  final String? updatedAt;
  final PriceDto? prices;

  TcgplayerDto({
    this.url,
    this.updatedAt,
    this.prices,
  });

  factory TcgplayerDto.fromJson(Map<String, dynamic> json) =>
      _$TcgplayerDtoFromJson(json);

  Map<String, dynamic> toJson() => _$TcgplayerDtoToJson(this);
}
