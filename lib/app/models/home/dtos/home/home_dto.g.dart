// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeDto _$HomeDtoFromJson(Map<String, dynamic> json) => HomeDto(
      page: (json['page'] as num?)?.toInt() ?? 0,
      totalCount: (json['totalCount'] as num?)?.toInt() ?? 0,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => HomeDataDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$HomeDtoToJson(HomeDto instance) => <String, dynamic>{
      'page': instance.page,
      'totalCount': instance.totalCount,
      'data': instance.data,
    };
