import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friflex_test/core/di/injectable.dart';
import 'package:friflex_test/features/cities/domain/model/city.dart';
import 'package:friflex_test/features/hourly_weather/domain/cubit/hourly_weather_cubit.dart';
import 'package:friflex_test/features/hourly_weather/ui/widgets/hourly_weather_content.dart';
import 'package:friflex_test/features/weather/domain/repository/weather_repository.dart';

/// Главный экран для сводки погоды на 3 дня
class HourlyWeatherScreen extends StatelessWidget {
  final City city;

  const HourlyWeatherScreen({super.key, required this.city});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HourlyWeatherCubit(weatherRepository: getIt<WeatherRepository>())..loadHourlyWeather(latitude: city.latitude, longitude: city.longitude),
      child: Scaffold(
        appBar: AppBar(
          leading: const BackButton(),
        ),
        body: const HourlyWeatherContent(),
      ),
    );
  }
}
