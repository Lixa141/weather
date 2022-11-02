import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injectable.config.dart';

@InjectableInit()
Future configureDependencies() async {
  $initGetIt(GetIt.instance);
}

/// Достает зависимости из di контейнера
T getIt<T extends Object>({String? instanceName}) => GetIt.instance.get<T>(instanceName: instanceName);
