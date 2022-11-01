import 'package:friflex_test/features/cities/data/dto/city_dto.dart';

class City {
  final String name;

  City({
    required this.name,
  });

  static City fromDto(CityDto remote) {
    return City(
      name: remote.name,
    );
  }
}