
import 'package:friflex_test/features/cities/data/dto/city_dto.dart';

class City {
  final String name;
  final double latitude;
  final double longitude;
  final String country;
  final String? state;

  City({
    required this.name,
    required this.latitude,
    required this.longitude,
    required this.country,
    this.state
  });

  static City fromDto(CityDto remote) {
    return City(
      name: remote.name,
      latitude: remote.latitude,
      longitude: remote.longitude,
      country: remote.country,
      state: remote.state,
    );
  }
}