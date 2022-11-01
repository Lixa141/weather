import 'package:friflex_test/core/network/dio_service.dart';
import 'package:friflex_test/features/cities/data/dto/city_dto.dart';
import 'package:injectable/injectable.dart';

abstract class CitiesApi {
  Future<List<CityDto>> loadCities(String query);
}

@Injectable(as: CitiesApi)
class CitiesApiImpl implements CitiesApi {
  final DioService dioService;

  const CitiesApiImpl({required this.dioService});

  @override
  Future<List<CityDto>> loadCities(String query) async {
    //todo: implement request
    return [
      CityDto(name: 'Лондон'),
      CityDto(name: 'Москва'),
    ];
  }
}
