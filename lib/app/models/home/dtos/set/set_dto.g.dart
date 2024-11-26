// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SetDto _$SetDtoFromJson(Map<String, dynamic> json) => SetDto(
      id: json['id'] as String?,
      name: json['name'] as String?,
      series: json['series'] as String?,
      printedTotal: (json['printedTotal'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
      ptcgoCode: json['ptcgoCode'] as String?,
      releaseDate: json['releaseDate'] as String?,
      updatedAt: json['updatedAt'] as String?,
      images: json['images'] == null
          ? null
          : ImageDto.fromJson(json['images'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SetDtoToJson(SetDto instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'series': instance.series,
      'printedTotal': instance.printedTotal,
      'total': instance.total,
      'ptcgoCode': instance.ptcgoCode,
      'releaseDate': instance.releaseDate,
      'updatedAt': instance.updatedAt,
      'images': instance.images,
    };
