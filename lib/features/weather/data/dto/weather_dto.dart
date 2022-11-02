import 'package:json_annotation/json_annotation.dart';

part 'weather_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class WeatherDto {
  final WeatherMainInfoDto main;
  final WeatherWindDto wind;
  @JsonKey(name: 'dt', fromJson: _fromJson)
  final DateTime dateTime;

  WeatherDto({
    required this.main,
    required this.wind,
    required this.dateTime,
  });

  factory WeatherDto.fromJson(Map<String, dynamic> json) => _$WeatherDtoFromJson(json);

  static DateTime _fromJson(int int) => DateTime.fromMillisecondsSinceEpoch(int * 1000);
}

@JsonSerializable()
class WeatherMainInfoDto {
  final double temp;
  final int humidity;

  WeatherMainInfoDto(this.temp, this.humidity);

  factory WeatherMainInfoDto.fromJson(Map<String, dynamic> json) =>
      _$WeatherMainInfoDtoFromJson(json);

  Map<String, String> toJson() =>
      Map.from(_$WeatherMainInfoDtoToJson(this));
}

@JsonSerializable()
class WeatherWindDto {
  final double speed;

  WeatherWindDto(this.speed);

  factory WeatherWindDto.fromJson(Map<String, dynamic> json) =>
      _$WeatherWindDtoFromJson(json);

  Map<String, String> toJson() =>
      Map.from(_$WeatherWindDtoToJson(this));
}

