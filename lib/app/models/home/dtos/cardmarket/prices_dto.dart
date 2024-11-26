// Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'prices_dto.g.dart';

@JsonSerializable()
class PricesDto {
  final double? averageSellPrice;
  final double? lowPrice;
  final double? trendPrice;
  final double? germanProLow;
  final double? suggestedPrice;
  final double? reverseHoloSell;
  final double? reverseHoloLow;
  final double? reverseHoloTrend;
  final double? lowPriceExPlus;
  final double? avg1;
  final double? avg7;
  final double? avg30;
  final double? reverseHoloAvg1;
  final double? reverseHoloAvg7;
  final double? reverseHoloAvg30;

  PricesDto({
    this.averageSellPrice,
    this.lowPrice,
    this.trendPrice,
    this.germanProLow,
    this.suggestedPrice,
    this.reverseHoloSell,
    this.reverseHoloLow,
    this.reverseHoloTrend,
    this.lowPriceExPlus,
    this.avg1,
    this.avg7,
    this.avg30,
    this.reverseHoloAvg1,
    this.reverseHoloAvg7,
    this.reverseHoloAvg30,
  });

  factory PricesDto.fromJson(Map<String, dynamic> json) =>
      _$PricesDtoFromJson(json);

  Map<String, dynamic> toJson() => _$PricesDtoToJson(this);
}
