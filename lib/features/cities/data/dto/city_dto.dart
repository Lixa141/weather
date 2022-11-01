import 'package:json_annotation/json_annotation.dart';

part 'city_dto.g.dart';

// TODO: model from openWeatherMap
@JsonSerializable()
class CityDto {
  final String name;

  CityDto({
    required this.name,
  });

  factory CityDto.fromJson(Map<String, dynamic> json) =>
      _$CityDtoFromJson(json);
}
