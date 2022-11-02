// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hour_weather_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HourWeatherResultDto _$HourWeatherResultDtoFromJson(
        Map<String, dynamic> json) =>
    HourWeatherResultDto(
      (json['list'] as List<dynamic>)
          .map((e) => WeatherDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HourWeatherResultDtoToJson(
        HourWeatherResultDto instance) =>
    <String, dynamic>{
      'list': instance.list,
    };
