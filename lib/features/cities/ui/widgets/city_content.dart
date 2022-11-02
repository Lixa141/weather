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
          loadSuccess: (city) {
            if (city != null) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => WeatherScreen(city: city),
                ),
              );
            }
          },
          loadFailure: () => showSnackBar(context, s.common_error),
        );
      },
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: editingController,
                decoration: InputDecoration(
                  labelText: s.search_label,
                  filled: true,
                  fillColor: Colors.white.withAlpha(235),
                  border: const OutlineInputBorder(),
                ),
              ),
            ),
            state.maybeWhen(
              loadFailure: () => Text(s.common_error),
              orElse: () => const SizedBox(),
            ),
            ElevatedButton(
              onPressed: state.maybeWhen(
                orElse: () => () => context.read<CitiesCubit>().submitCity(editingController.text),
              ),
              child: Text(s.confirm_label),
            )
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
