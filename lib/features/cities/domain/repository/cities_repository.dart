import 'package:friflex_test/features/cities/data/api/cities_api.dart';
import 'package:friflex_test/features/cities/domain/model/city.dart';
import 'package:injectable/injectable.dart';

/// Сервис для работы с городами
abstract class CitiesRepository {
  /// Ищет город
  /// Возвращает первый найденный
  Future<City> searchCity(String query);
}

@Injectable(as: CitiesRepository)
class CitiesRepositoryImpl implements CitiesRepository {
  final CitiesApi cityApi;

  const CitiesRepositoryImpl({required this.cityApi});

  @override
  Future<City> searchCity(String query) async {
    var result = await cityApi.searchCity(query);

    return City.fromDto(result.first);
  }
}