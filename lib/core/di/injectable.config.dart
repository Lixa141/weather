// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../app/config.dart' as _i3;
import '../../features/cities/data/api/cities_api.dart' as _i6;
import '../../features/cities/domain/repository/cities_repository.dart' as _i7;
import '../navigation/navigation.dart' as _i5;
import '../network/dio_service.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final appConfigModule = _$AppConfigModule();
  gh.factory<_i3.AppConfig>(() => appConfigModule.getAppConfig());
  gh.lazySingleton<_i4.DioService>(() => _i4.DioService(get<_i3.AppConfig>()));
  gh.lazySingleton<_i5.NavigationService>(() => _i5.NavigationService());
  gh.factory<_i6.CitiesApi>(
      () => _i6.CitiesApiImpl(dioService: get<_i4.DioService>()));
  gh.factory<_i7.CitiesRepository>(
      () => _i7.CitiesRepositoryImpl(citiesApi: get<_i6.CitiesApi>()));
  return get;
}

class _$AppConfigModule extends _i3.AppConfigModule {}
