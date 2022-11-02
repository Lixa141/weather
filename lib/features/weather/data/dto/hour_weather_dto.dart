import 'package:friflex_test/features/weather/data/dto/weather_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'hour_weather_dto.g.dart';

@JsonSerializable()
class HourWeatherResultDto {
  final List<WeatherDto> list;

  HourWeatherResultDto(this.list);

  factory HourWeatherResultDto.fromJson(Map<String, dynamic> json) => _$HourWeatherResultDtoFromJson(json);
}
