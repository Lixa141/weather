import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friflex_test/features/weather/domain/cubit/weather_state.dart';
import 'package:friflex_test/features/weather/domain/repository/weather_repository.dart';

class WeatherCubit extends Cubit<WeatherState> {
  final WeatherRepository weatherRepository;

  WeatherCubit({required this.weatherRepository}) : super(const WeatherState.loadInProgress());

  /// Загружает погоду на текущий согласно координатам
  Future<void> loadWeather({required double latitude, required double longitude}) async {
    try {
      final weather = await weatherRepository.loadCurrentWeather(latitude: latitude, longitude: longitude);
      emit(WeatherState.loadSuccess(weather: weather));
    } catch (_) {
      emit(const WeatherState.loadFailure());
    }
  }
}
