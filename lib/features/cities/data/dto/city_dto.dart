import 'package:json_annotation/json_annotation.dart';

part 'city_dto.g.dart';

@JsonSerializable()
class CityDto {
  final String name;
  @JsonKey(name: 'lat')
  final double latitude;
  @JsonKey(name: 'lon')
  final double longitude;

  CityDto({
    required this.name,
    required this.latitude,
    required this.longitude,
  });

  factory CityDto.fromJson(Map<String, dynamic> json) => _$CityDtoFromJson(json);
}
