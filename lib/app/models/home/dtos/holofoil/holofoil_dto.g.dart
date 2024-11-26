// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'holofoil_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HolofoilDto _$HolofoilDtoFromJson(Map<String, dynamic> json) => HolofoilDto(
      low: (json['low'] as num?)?.toDouble(),
      mid: (json['mid'] as num?)?.toDouble(),
      high: (json['high'] as num?)?.toDouble(),
      market: (json['market'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$HolofoilDtoToJson(HolofoilDto instance) =>
    <String, dynamic>{
      'low': instance.low,
      'mid': instance.mid,
      'high': instance.high,
      'market': instance.market,
    };
