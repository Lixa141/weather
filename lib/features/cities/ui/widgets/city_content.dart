import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friflex_test/features/cities/domain/bloc/cities_cubit.dart';
import 'package:friflex_test/features/cities/domain/bloc/cities_state.dart';
import 'package:friflex_test/features/weather/ui/screens/weather_screen.dart';
import 'package:friflex_test/generated/l10n.dart';
import 'package:friflex_test/utils/utils.dart';

class CitiesContent extends StatefulWidget {
  const CitiesContent({super.key});

  @override
  State<CitiesContent> createState() => _CitiesContentState();
}

class _CitiesContentState extends State<CitiesContent> {
  TextEditingController editingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    /// Обращаемся к нашим локализованным строкам
    final s = S.of(context);

    return BlocConsumer<CitiesCubit, CitiesState>(
      listener: (context, state) {
        state.whenOrNull(
          loadFailure: () => showSnackBar(context, s.common_error),
        );
      },
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 50, 10, 0),
              child: TextField(
                controller: editingController,
                decoration: InputDecoration(
                  labelText: s.search_label,
                  filled: true,
                  fillColor: Colors.white.withAlpha(235),
                  border: const OutlineInputBorder(),
                ),
                onChanged: (query) {
                  context.read<CitiesCubit>().searchCities(query);
                },
              ),
            ),
            state.maybeWhen(
              loadFailure: () => SizedBox(
                height: 300,
                child: Center(
                  child: Text(s.common_error),
                ),
              ),
              loadSuccess: (cities) {
                if (editingController.text.isNotEmpty) {
                  return SizedBox(
                    width: 400,
                    height: 200,
                    child: ListView.separated(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      itemBuilder: (context, index) {
                        final city = cities[index];
                        final state =
                            city.state != null ? ', ${city.state}' : '';
                        return SizedBox(
                          height: 20,
                          width: 100,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              backgroundColor: Colors.white70,
                              alignment: Alignment.centerLeft,
                            ),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      WeatherScreen(city: city),
                                ),
                              );
                            },
                            child: Text('${city.name} (${city.country}$state)'),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 8),
                      itemCount: cities.length,
                    ),
                  );
                } else {
                  return const SizedBox.shrink();
                }
              },
              orElse: () => const SizedBox(),
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    editingController.dispose();
    super.dispose();
  }
}
