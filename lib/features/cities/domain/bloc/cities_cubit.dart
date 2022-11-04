import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friflex_test/features/cities/domain/bloc/cities_state.dart';
import 'package:friflex_test/features/cities/domain/repository/cities_repository.dart';

class CitiesCubit extends Cubit<CitiesState> {
  final CitiesRepository citiesRepository;
  Timer? searchDebounce;

  CitiesCubit({required this.citiesRepository}) : super(const CitiesState.initial());

  /// Обрабатывает ввод текста
  /// Если город не находится => возвращается null
  Future<void> searchCities(String query) async {
    if (query.isNotEmpty) {
      try {
        emit(const CitiesState.loadInProgress());
        searchDebounce?.cancel();
        searchDebounce = Timer(const Duration(milliseconds: 400), () async {
          final cities = await citiesRepository.searchCities(query);
          if (cities.isNotEmpty) {
            emit(CitiesState.loadSuccess(cities: cities));
          } else {
            emit(const CitiesState.loadFailure());
          }
        });
      } catch (e) {
        emit(const CitiesState.loadFailure());
      }
    }
  }
}
