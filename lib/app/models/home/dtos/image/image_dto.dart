// Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'image_dto.g.dart';

@JsonSerializable()
class ImageDto {
  final String? symbol;
  final String? logo;
  final String? small;
  final String? large;

  ImageDto({
    this.symbol,
    this.logo,
    this.small,
    this.large,
  });

  factory ImageDto.fromJson(Map<String, dynamic> json) =>
      _$ImageDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ImageDtoToJson(this);
}
