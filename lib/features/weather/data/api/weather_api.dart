import 'package:friflex_test/core/network/dio_service.dart';
import 'package:friflex_test/features/weather/data/dto/weather_dto.dart';
import 'package:injectable/injectable.dart';

/// Сервис для работы с апи погоды
abstract class WeatherApi {
  /// Возвращает текущую погоду по координатам
  Future<WeatherDto> loadCurrentWeather({required double latitude, required double longitude});

  /// Возвращается сводку погоды за 5 дней
  Future<List<WeatherDto>> loadHourlyWeather({required double latitude, required double longitude});
}

@Injectable(as: WeatherApi)
class WeatherApiImpl implements WeatherApi {
  final DioService httpService;

  const WeatherApiImpl({required this.httpService});

  @override
  Future<WeatherDto> loadCurrentWeather({required double latitude, required double longitude}) async {
    final response = await httpService.dio.get<Map<String, dynamic>>(
      '/data/2.5/weather',
      queryParameters: {'lat': latitude, 'lon': longitude},
    );

    return WeatherDto.fromJson(response.data as Map<String, dynamic>);
  }

  @override
  Future<List<WeatherDto>> loadHourlyWeather({required double latitude, required double longitude}) async {
    final response = await httpService.dio.get<Map<String, dynamic>>(
      '/data/2.5/forecast',
      queryParameters: {'lat': latitude, 'lon': longitude},
    );

    return (response.data!['list'] as List<dynamic>).map((e) => WeatherDto.fromJson(e)).toList();
  }
}
