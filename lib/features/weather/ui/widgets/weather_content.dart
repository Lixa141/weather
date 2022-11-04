import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friflex_test/features/cities/domain/model/city.dart';
import 'package:friflex_test/features/hourly_weather/ui/screens/hourly_weather_screen.dart';
import 'package:friflex_test/features/weather/domain/cubit/weather_cubit.dart';
import 'package:friflex_test/features/weather/domain/cubit/weather_state.dart';
import 'package:friflex_test/generated/l10n.dart';
import 'package:friflex_test/uikit/uikit.dart';
import 'package:friflex_test/utils/utils.dart';

class WeatherContent extends StatelessWidget {
  final City city;

  const WeatherContent({Key? key, required this.city}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// Обращаемся к нашим локализованным строкам
    final s = S.of(context);

    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: Text(city.name),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              context.read<WeatherCubit>().loadWeather(latitude: city.latitude, longitude: city.longitude);
              showSnackBar(context, s.refresh);
            },
            icon: const Icon(Icons.refresh),
          ),
          IconButton(
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => HourlyWeatherScreen(
                  city: city,
                ),
              ),
            ),
            icon: const Icon(Icons.read_more_outlined),
          )
        ],
      ),
      body: Center(
        child: BlocBuilder<WeatherCubit, WeatherState>(builder: (context, state) {
          return state.when(loadSuccess: (weather) {
            return WeatherCard(weather: weather);
          }, loadFailure: () {
            return Text(s.common_error);
          }, loadInProgress: () {
            return const CircularProgressIndicator();
          });
        }),
      ),
    );
  }
}
