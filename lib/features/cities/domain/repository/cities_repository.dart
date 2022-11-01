import 'package:friflex_test/features/cities/data/api/cities_api.dart';
import 'package:friflex_test/features/cities/domain/model/city.dart';
import 'package:injectable/injectable.dart';

abstract class CitiesRepository {
  Future<List<City>> loadCities(String query);
}

@Injectable(as: CitiesRepository)
class CitiesRepositoryImpl implements CitiesRepository {
  final CitiesApi citiesApi;

  const CitiesRepositoryImpl({required this.citiesApi});

  @override
  Future<List<City>> loadCities(String query) async {
    var result = await citiesApi.loadCities(query);

    return result.map((dto) => City.fromDto(dto)).toList();
  }
}