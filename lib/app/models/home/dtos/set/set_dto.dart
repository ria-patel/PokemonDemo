// Package imports:
import 'package:json_annotation/json_annotation.dart';

// Project imports:
import 'package:pokemon_demo/app/models/home/dtos/image/image_dto.dart';

part 'set_dto.g.dart';

@JsonSerializable()
class SetDto {
  final String? id;
  final String? name;
  final String? series;
  final int? printedTotal;
  final int? total;
  final String? ptcgoCode;
  final String? releaseDate;
  final String? updatedAt;
  final ImageDto? images;

  SetDto({
    this.id,
    this.name,
    this.series,
    this.printedTotal,
    this.total,
    this.ptcgoCode,
    this.releaseDate,
    this.updatedAt,
    this.images,
  });

  factory SetDto.fromJson(Map<String, dynamic> json) => _$SetDtoFromJson(json);

  Map<String, dynamic> toJson() => _$SetDtoToJson(this);
}
