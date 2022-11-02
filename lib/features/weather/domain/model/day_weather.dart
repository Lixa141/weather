import 'package:friflex_test/features/weather/domain/model/weather.dart';

class DayWeather {
  final DateTime dateTime;
  final List<Weather> weathers;

  DayWeather({
    required this.dateTime,
    required this.weathers,
  });

  /// Возвращает среднюю темпераутру за день
  double get averageTemperature => weathers.map((d) => d.temperature).reduce((a, b) => a + b) / weathers.length;
}