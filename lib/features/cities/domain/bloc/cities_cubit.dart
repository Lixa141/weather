import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friflex_test/features/cities/domain/bloc/cities_state.dart';
import 'package:friflex_test/features/cities/domain/repository/cities_repository.dart';

class CitiesCubit extends Cubit<CitiesState> {
  final CitiesRepository citiesRepository;

  CitiesCubit({required this.citiesRepository}) : super(const CitiesState.loadSuccess(city: null));

  /// Обрабатывает нажатие на кнопку "Подтвердить"
  /// Если город не находится => возвращается null
  Future<void> submitCity(String query) async {
    if (query.isNotEmpty) {
      try {
        emit(const CitiesState.loadInProgress());
        final city = await citiesRepository.searchCity(query);
        emit(CitiesState.loadSuccess(city: city));
      } catch (e) {
        emit(const CitiesState.loadFailure());
      }
    }
  }
}
