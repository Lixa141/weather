import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injectable.config.dart';

@InjectableInit()
Future configureDependencies() async {
  $initGetIt(GetIt.instance);
}
