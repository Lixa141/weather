// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CityDto _$CityDtoFromJson(Map<String, dynamic> json) => CityDto(
      name: json['name'] as String,
      latitude: (json['lat'] as num).toDouble(),
      longitude: (json['lon'] as num).toDouble(),
      country: json['country'] as String,
      state: json['state'] as String?,
    );

Map<String, dynamic> _$CityDtoToJson(CityDto instance) => <String, dynamic>{
      'name': instance.name,
      'lat': instance.latitude,
      'lon': instance.longitude,
      'country': instance.country,
      'state': instance.state,
    };
