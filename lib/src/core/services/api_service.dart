import 'dart:io';
import 'package:dio/dio.dart';
import 'package:linkyou_task/src/core/services/env_service.dart';

class ApiService {
  final EnvService _env;
  ApiService({
    required EnvService env,
  }) : _env = env {
    _init();
  }

  late final Dio dio;

  void _init() {
    final options = BaseOptions(
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
      },
      baseUrl: _env.env.apisBaseUrl ?? '',
      receiveTimeout: const Duration(seconds: 30),
      connectTimeout: const Duration(seconds: 30),
      sendTimeout: const Duration(seconds: 30),
      receiveDataWhenStatusError: true,
    );

    dio = Dio(options);

    final logger = LogInterceptor(
      responseHeader: false,
      responseBody: true,
      requestBody: true,
    );
    final authExpiration = InterceptorsWrapper(
      onError: (e, handler) async {
        return handler.next(e);
      },
    );
    dio.interceptors.add(logger);
    dio.interceptors.add(authExpiration);
    HttpOverrides.global = MyHttpOverrides();
  }

  Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
    ResponseType responseType = ResponseType.json,
  }) async {
    return await dio.get(url, queryParameters: {
      ...?query,
    });
  }

  Future<Response<T>> postData<T>({
    required String url,
    Map<String, dynamic>? query,
    Object? data,
  }) async {
    return await dio.post<T>(
      url,
      data: data,
      queryParameters: query,
    );
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
