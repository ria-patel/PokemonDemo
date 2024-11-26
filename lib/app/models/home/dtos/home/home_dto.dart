// Package imports:
import 'package:json_annotation/json_annotation.dart';

// Project imports:
import 'package:pokemon_demo/app/models/home/dtos/home_data/home_data_dto.dart';

part 'home_dto.g.dart';

@JsonSerializable()
class HomeDto {
  @JsonKey(defaultValue: 0)
  final int? page;
  @JsonKey(defaultValue: 0)
  final int? totalCount;
  @JsonKey(defaultValue: [])
  final List<HomeDataDto>? data;

  HomeDto({
    this.page,
    this.totalCount,
    this.data,
  });

  factory HomeDto.fromJson(Map<String, dynamic> json) =>
      _$HomeDtoFromJson(json);

  Map<String, dynamic> toJson() => _$HomeDtoToJson(this);
}
