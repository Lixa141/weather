// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherDto _$WeatherDtoFromJson(Map<String, dynamic> json) => WeatherDto(
      main: WeatherMainInfoDto.fromJson(json['main'] as Map<String, dynamic>),
      wind: WeatherWindDto.fromJson(json['wind'] as Map<String, dynamic>),
      dateTime: WeatherDto._fromJson(json['dt'] as int),
    );

Map<String, dynamic> _$WeatherDtoToJson(WeatherDto instance) =>
    <String, dynamic>{
      'main': instance.main.toJson(),
      'wind': instance.wind.toJson(),
      'dt': instance.dateTime.toIso8601String(),
    };

WeatherMainInfoDto _$WeatherMainInfoDtoFromJson(Map<String, dynamic> json) =>
    WeatherMainInfoDto(
      (json['temp'] as num).toDouble(),
      json['humidity'] as int,
    );

Map<String, dynamic> _$WeatherMainInfoDtoToJson(WeatherMainInfoDto instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'humidity': instance.humidity,
    };

WeatherWindDto _$WeatherWindDtoFromJson(Map<String, dynamic> json) =>
    WeatherWindDto(
      (json['speed'] as num).toDouble(),
    );

Map<String, dynamic> _$WeatherWindDtoToJson(WeatherWindDto instance) =>
    <String, dynamic>{
      'speed': instance.speed,
    };
