import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friflex_test/features/hourly_weather/domain/cubit/hourly_weather_cubit.dart';
import 'package:friflex_test/features/hourly_weather/domain/cubit/hourly_weather_state.dart';
import 'package:friflex_test/generated/l10n.dart';
import 'package:friflex_test/uikit/uikit.dart';
import 'package:friflex_test/utils/datetime_utils.dart';

class HourlyWeatherContent extends StatelessWidget {
  const HourlyWeatherContent({super.key});

  @override
  Widget build(BuildContext context) {
    /// Обращаемся к нашим локализованным строкам
    final s = S.of(context);

    return BlocBuilder<HourlyWeatherCubit, HourlyWeatherState>(
      builder: (context, state) {
        return state.when(
          loadSuccess: (weathers) {
            return ListView.separated(
              padding: const EdgeInsets.all(16),
              itemBuilder: (_, index) {
                final dayWeather = weathers[index];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(dayWeather.dateTime.toDateFormat()),
                    Text(s.average_temperature(dayWeather.averageTemperature.toStringAsFixed(2))),
                    SizedBox(
                      height: 80,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          final weather = dayWeather.weathers[index];
                          return WeatherCard(weather: weather, showDate: false, showTime: true);
                        },
                        separatorBuilder: (context, index) => const SizedBox(height: 8),
                        itemCount: dayWeather.weathers.length,
                      ),
                    ),
                  ],
                );
              },
              separatorBuilder: (context, index) => const SizedBox(height: 8),
              itemCount: weathers.length,
            );
          },
          loadFailure: () {
            return Center(child: Text(s.common_error));
          },
          loadInProgress: () {
            return const Center(child: CircularProgressIndicator());
          },
        );
      },
    );
  }
}
