import 'package:friflex_test/app/constants.dart';
import 'package:friflex_test/features/weather/data/dto/weather_dto.dart';

class Weather {
  final DateTime dateTime;
  final double temperature;
  final int humidity;
  final double windSpeed;

  Weather({
    required this.temperature,
    required this.humidity,
    required this.windSpeed,
    required this.dateTime,
  });

  static Weather fromDto(WeatherDto remote) {
    return Weather(
      /// Конвертирование температуры из Кельвинов в Цельсий
      temperature: (remote.main.temp - AppConstants.kelvin),
      humidity: remote.main.humidity,
      windSpeed: remote.wind.speed,
      dateTime: remote.dateTime,
    );
  }
}