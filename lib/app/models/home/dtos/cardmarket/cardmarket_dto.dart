// Package imports:
import 'package:json_annotation/json_annotation.dart';

// Project imports:
import 'package:pokemon_demo/app/models/home/dtos/cardmarket/prices_dto.dart';

part 'cardmarket_dto.g.dart';

@JsonSerializable()
class CardmarketDto {
  final String? url;
  final String? updatedAt;
  final PricesDto? prices;

  CardmarketDto({
    this.url,
    this.updatedAt,
    this.prices,
  });

  factory CardmarketDto.fromJson(Map<String, dynamic> json) =>
      _$CardmarketDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CardmarketDtoToJson(this);
}
