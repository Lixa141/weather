import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class DioService {
  static const String apiUrlKey = "WEATHER_MAP_URL";

  late final Dio dio;

  DioService() {
    dio = Dio(BaseOptions(baseUrl: dotenv.get(apiUrlKey)));

    dio.interceptors.add(ApiKeyInterceptor());
  }
}

/// Интерцептор, который вставляет в запрос appID полученный в OpenWeatherMap
class ApiKeyInterceptor extends Interceptor {
  static const String appIdKey = "WEATHER_MAP_APP_ID";

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    options.queryParameters.addAll({'appid': dotenv.get(appIdKey)});

    handler.next(options);
  }
}