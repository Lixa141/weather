import 'package:dio/dio.dart';
import 'package:friflex_test/app/config.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class DioService {
  DioService(AppConfig appConfig) {
    final options = BaseOptions(
      baseUrl: appConfig.baseUrl,
      connectTimeout: 15000,
      receiveTimeout: 7000,
    );
    dio = Dio(options);

    addInterceptor(AuthTokenInterceptor());
  }

  late final Dio dio;

  void addInterceptor(Interceptor interceptor) {
    if (dio.interceptors.contains(interceptor)) {
      dio.interceptors.remove(interceptor);
    }
    deleteInterceptor(interceptor.runtimeType);
    dio.interceptors.add(interceptor);
  }

  void deleteInterceptor(Type interceptorType) {
    dio.interceptors.removeWhere((element) => element.runtimeType == interceptorType);
  }
}

class AuthTokenInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final requireAuth = options.extra[HttpApi.requireAuthExtra] ?? true;

    options.headers.removeWhere((key, value) => value == null);

    if (requireAuth == true) {
    //   final pref = getIt<AppSecureStorage>(); // TODO Добавить flutter_secure_storage и обернуть его в AppSecureStorage, AppSecureStorage добавить в di
    //   pref.getAuth().then((auth) {
    //     if (auth != null) {
    //       options.headers[HttpApi.authorizationHeader] = 'Bearer ${auth.token}';
    //     }
    //   });
    }

    handler.next(options);
    super.onRequest(options, handler);
  }
}

abstract class HttpApi {
  static const String requireAuthExtra = 'requireAuth';
  static const String authorizationHeader = 'Authorization';
}
