// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PriceDto _$PriceDtoFromJson(Map<String, dynamic> json) => PriceDto(
      lholofoilow: json['lholofoilow'] == null
          ? null
          : HolofoilDto.fromJson(json['lholofoilow'] as Map<String, dynamic>),
      reverseHolofoil: json['reverseHolofoil'] == null
          ? null
          : HolofoilDto.fromJson(
              json['reverseHolofoil'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PriceDtoToJson(PriceDto instance) => <String, dynamic>{
      'lholofoilow': instance.lholofoilow,
      'reverseHolofoil': instance.reverseHolofoil,
    };
