import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friflex_test/core/di/injectable.dart';
import 'package:friflex_test/features/cities/domain/model/city.dart';
import 'package:friflex_test/features/weather/domain/cubit/weather_cubit.dart';
import 'package:friflex_test/features/weather/domain/repository/weather_repository.dart';
import 'package:friflex_test/features/weather/ui/widgets/weather_content.dart';

/// Главный экран для погоды в текущий день
class WeatherScreen extends StatelessWidget {
  final City city;

  const WeatherScreen({super.key, required this.city});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WeatherCubit(weatherRepository: getIt<WeatherRepository>())..loadWeather(latitude: city.latitude, longitude: city.longitude),
      child: WeatherContent(city: city),
    );
  }
}
