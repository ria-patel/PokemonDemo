// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImageDto _$ImageDtoFromJson(Map<String, dynamic> json) => ImageDto(
      symbol: json['symbol'] as String?,
      logo: json['logo'] as String?,
      small: json['small'] as String?,
      large: json['large'] as String?,
    );

Map<String, dynamic> _$ImageDtoToJson(ImageDto instance) => <String, dynamic>{
      'symbol': instance.symbol,
      'logo': instance.logo,
      'small': instance.small,
      'large': instance.large,
    };
