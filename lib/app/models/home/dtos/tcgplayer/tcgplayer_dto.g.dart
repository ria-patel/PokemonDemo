// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tcgplayer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TcgplayerDto _$TcgplayerDtoFromJson(Map<String, dynamic> json) => TcgplayerDto(
      url: json['url'] as String?,
      updatedAt: json['updatedAt'] as String?,
      prices: json['prices'] == null
          ? null
          : PriceDto.fromJson(json['prices'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TcgplayerDtoToJson(TcgplayerDto instance) =>
    <String, dynamic>{
      'url': instance.url,
      'updatedAt': instance.updatedAt,
      'prices': instance.prices,
    };
