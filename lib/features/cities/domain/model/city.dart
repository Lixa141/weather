
import 'package:friflex_test/features/cities/data/dto/city_dto.dart';

class City {
  final String name;
  final double latitude;
  final double longitude;

  City({
    required this.name,
    required this.latitude,
    required this.longitude,
  });

  static City fromDto(CityDto remote) {
    return City(
      name: remote.name,
      latitude: remote.latitude,
      longitude: remote.longitude,
    );
  }
}