import 'dart:async';

import 'package:dio/dio.dart';
import 'package:friflex_test/core/network/dio_service.dart';
import 'package:friflex_test/features/cities/data/dto/city_dto.dart';
import 'package:injectable/injectable.dart';

/// Сервис для работы с api городов
abstract class CitiesApi {
  /// Ищет города по заданной строке
  Future<List<CityDto>> searchCities(String query);
}

@Injectable(as: CitiesApi)
class CitiesApiImpl implements CitiesApi {
  final DioService httpService;

  const CitiesApiImpl({required this.httpService});

  @override
  Future<List<CityDto>> searchCities(String query) async {
    try {
      final response = await httpService.dio.get<List<dynamic>>(
        '/geo/1.0/direct',
        queryParameters: {'q': query, 'limit': 5},
      );

      return (response.data as List<dynamic>).map((e) => CityDto.fromJson(e)).toList();
    } on DioError catch (_) {
      return [];
    }

  }
}
