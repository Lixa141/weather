import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppConfigModule {
  AppConfig getAppConfig() => AppConfig.current;
}

class AppConfig {
  static late AppConfig _config;

  AppConfig({required this.baseUrl});

  static AppConfig get current => _config;

  final String baseUrl;

  static void init() {
    _config = kDebugMode ? DebugAppConfig() : ProductionAppConfig();
  }
}

class ProductionAppConfig extends AppConfig {
  ProductionAppConfig() : super(baseUrl: 'apiUrl');
}

class DebugAppConfig extends AppConfig {
  DebugAppConfig() : super(baseUrl: 'apiUrl');
}
