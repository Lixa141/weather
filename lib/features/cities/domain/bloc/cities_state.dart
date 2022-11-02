import 'package:friflex_test/features/cities/domain/model/city.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cities_state.freezed.dart';

@freezed
class CitiesState with _$CitiesState {
  const factory CitiesState.loadSuccess({
    required City? city,
  }) = _CitiesSuccess;

  const factory CitiesState.loadInProgress() = _CitiesInProgress;

  const factory CitiesState.loadFailure() = _CitiesFailure;
}
