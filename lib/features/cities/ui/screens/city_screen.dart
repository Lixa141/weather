import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friflex_test/core/di/injectable.dart';
import 'package:friflex_test/features/cities/domain/bloc/cities_cubit.dart';
import 'package:friflex_test/features/cities/domain/repository/cities_repository.dart';
import 'package:friflex_test/features/cities/ui/widgets/city_content.dart';

/// Главный экран поиска города
class CitiesScreen extends StatelessWidget {
  const CitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CitiesCubit(citiesRepository: getIt<CitiesRepository>()),
      child: const Scaffold(body: CitiesContent()),
    );
  }
}
