part of '../uikit.dart';

/// Карточка для информации о погоде
class WeatherCard extends StatelessWidget {
  final Weather weather;
  final bool showDate;
  final bool showTime;

  const WeatherCard({super.key, required this.weather, this.showDate = true, this.showTime = false});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Wrap(
          direction: Axis.vertical,
          children: [
            if (showDate) Text(weather.dateTime.toDateFormat()),
            Text('${s.humidity_value(weather.humidity)} %'),
            Text('${s.temperature_value(weather.temperature.toStringAsFixed(2))} ℃'),
            Text('${s.wind_value(weather.windSpeed)} м/с'),
            if (showTime) Text(weather.dateTime.toTimeFormat()),
          ],
        ),
      ),
    );
  }
}
