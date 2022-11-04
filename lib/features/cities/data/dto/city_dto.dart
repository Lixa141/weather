import 'package:json_annotation/json_annotation.dart';

part 'city_dto.g.dart';

@JsonSerializable()
class CityDto {
  final String name;
  @JsonKey(name: 'lat')
  final double latitude;
  @JsonKey(name: 'lon')
  final double longitude;
  final String country;
  final String? state;

  CityDto({
    required this.name,
    required this.latitude,
    required this.longitude,
    required this.country,
    this.state
  });

  factory CityDto.fromJson(Map<String, dynamic> json) => _$CityDtoFromJson(json);
}
