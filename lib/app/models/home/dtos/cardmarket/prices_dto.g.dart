// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prices_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PricesDto _$PricesDtoFromJson(Map<String, dynamic> json) => PricesDto(
      averageSellPrice: (json['averageSellPrice'] as num?)?.toDouble(),
      lowPrice: (json['lowPrice'] as num?)?.toDouble(),
      trendPrice: (json['trendPrice'] as num?)?.toDouble(),
      germanProLow: (json['germanProLow'] as num?)?.toDouble(),
      suggestedPrice: (json['suggestedPrice'] as num?)?.toDouble(),
      reverseHoloSell: (json['reverseHoloSell'] as num?)?.toDouble(),
      reverseHoloLow: (json['reverseHoloLow'] as num?)?.toDouble(),
      reverseHoloTrend: (json['reverseHoloTrend'] as num?)?.toDouble(),
      lowPriceExPlus: (json['lowPriceExPlus'] as num?)?.toDouble(),
      avg1: (json['avg1'] as num?)?.toDouble(),
      avg7: (json['avg7'] as num?)?.toDouble(),
      avg30: (json['avg30'] as num?)?.toDouble(),
      reverseHoloAvg1: (json['reverseHoloAvg1'] as num?)?.toDouble(),
      reverseHoloAvg7: (json['reverseHoloAvg7'] as num?)?.toDouble(),
      reverseHoloAvg30: (json['reverseHoloAvg30'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$PricesDtoToJson(PricesDto instance) => <String, dynamic>{
      'averageSellPrice': instance.averageSellPrice,
      'lowPrice': instance.lowPrice,
      'trendPrice': instance.trendPrice,
      'germanProLow': instance.germanProLow,
      'suggestedPrice': instance.suggestedPrice,
      'reverseHoloSell': instance.reverseHoloSell,
      'reverseHoloLow': instance.reverseHoloLow,
      'reverseHoloTrend': instance.reverseHoloTrend,
      'lowPriceExPlus': instance.lowPriceExPlus,
      'avg1': instance.avg1,
      'avg7': instance.avg7,
      'avg30': instance.avg30,
      'reverseHoloAvg1': instance.reverseHoloAvg1,
      'reverseHoloAvg7': instance.reverseHoloAvg7,
      'reverseHoloAvg30': instance.reverseHoloAvg30,
    };
