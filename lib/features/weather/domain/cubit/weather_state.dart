import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:friflex_test/features/weather/domain/model/weather.dart';

part 'weather_state.freezed.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState.loadSuccess({
    required Weather weather,
  }) = _WeatherSuccess;

  const factory WeatherState.loadFailure(
  ) = _WeatherFailure;

  const factory WeatherState.loadInProgress() = _WeatherProgress;
}
