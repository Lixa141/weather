import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friflex_test/app/constants.dart';
import 'package:friflex_test/features/hourly_weather/domain/cubit/hourly_weather_state.dart';
import 'package:friflex_test/features/weather/domain/repository/weather_repository.dart';

class HourlyWeatherCubit extends Cubit<HourlyWeatherState> {
  final WeatherRepository weatherRepository;

  HourlyWeatherCubit({required this.weatherRepository}) : super(const HourlyWeatherState.loadInProgress());

  /// Загружает сводку за следующие "dayLimit" дней
  Future<void> loadHourlyWeather({required double latitude, required double longitude}) async {
    try {
      var hourlyWeather = (await weatherRepository.loadHourlyWeather(latitude: latitude, longitude: longitude))
          .take(AppConstants.dayLimitForHourlyWeather)
          .toList();

      /// Сортирует по самой низкой средней температуре
      hourlyWeather.sort((a, b) => a.averageTemperature.compareTo(b.averageTemperature));

      emit(HourlyWeatherState.loadSuccess(hourlyWeather: hourlyWeather));
    } catch (e) {
      emit(const HourlyWeatherState.loadFailure());
    }
  }
}
