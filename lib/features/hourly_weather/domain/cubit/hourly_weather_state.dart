import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:friflex_test/features/weather/domain/model/day_weather.dart';

part 'hourly_weather_state.freezed.dart';

@freezed
class HourlyWeatherState with _$HourlyWeatherState {
  const factory HourlyWeatherState.loadSuccess({
    required List<DayWeather> hourlyWeather,
  }) = _HourlyWeatherSuccess;

  const factory HourlyWeatherState.loadInProgress() = _HourlyWeatherInProgress;

  const factory HourlyWeatherState.loadFailure() = _HourlyWeatherFailure;
}
