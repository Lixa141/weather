import 'package:collection/collection.dart';
import 'package:friflex_test/features/weather/data/api/weather_api.dart';
import 'package:friflex_test/features/weather/domain/model/day_weather.dart';
import 'package:friflex_test/features/weather/domain/model/weather.dart';
import 'package:injectable/injectable.dart';

/// Репозиторий для работы с погодой
abstract class WeatherRepository {
  /// Возвращает погоду на текущий день согласно координатам
  Future<Weather> loadCurrentWeather({required double latitude, required double longitude});

  /// Возвращает сводку погоды на 5 дней согласно координатам
  /// Группирует список [DayWeather]
  Future<List<DayWeather>> loadHourlyWeather({required double latitude, required double longitude});
}

@Injectable(as: WeatherRepository)
class WeatherRepositoryImpl implements WeatherRepository {
  final WeatherApi weatherApi;

  const WeatherRepositoryImpl({required this.weatherApi});

  @override
  Future<Weather> loadCurrentWeather({required double latitude, required double longitude}) async {
    return Weather.fromDto(await weatherApi.loadCurrentWeather(latitude: latitude, longitude: longitude));
  }

  @override
  Future<List<DayWeather>> loadHourlyWeather({required double latitude, required double longitude}) async {
    final result = await weatherApi.loadHourlyWeather(latitude: latitude, longitude: longitude);
    return result
        .groupListsBy((weather) => DateTime(weather.dateTime.year, weather.dateTime.month, weather.dateTime.day))
        .entries
        .map((entry) => DayWeather(dateTime: entry.key, weathers: entry.value.map((e) => Weather.fromDto(e)).toList()))
        .toList();
  }
}
