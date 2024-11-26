// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cardmarket_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CardmarketDto _$CardmarketDtoFromJson(Map<String, dynamic> json) =>
    CardmarketDto(
      url: json['url'] as String?,
      updatedAt: json['updatedAt'] as String?,
      prices: json['prices'] == null
          ? null
          : PricesDto.fromJson(json['prices'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CardmarketDtoToJson(CardmarketDto instance) =>
    <String, dynamic>{
      'url': instance.url,
      'updatedAt': instance.updatedAt,
      'prices': instance.prices,
    };
