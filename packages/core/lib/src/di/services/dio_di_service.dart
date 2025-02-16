import 'package:core/src/di/service_locator.dart';
import 'package:data/data.dart';
import 'package:dio/dio.dart';

/// Setup Dio dependency injection.
void setupDioDI({
  required String baseUrl,
  required String apiKey,
}) {
  get.registerLazySingleton<Dio>(
    () => _DioFactory.create(
      baseUrl: baseUrl,
      apiKey: apiKey,
    ).dio,
  );
}

class _DioFactory {
  /// Factory constructor to create a configured Dio instance.
  factory _DioFactory.create({
    required String baseUrl,
    required String apiKey,
  }) {
    final dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
      ),
    );
    dio.interceptors.addAll(
      [
        ApiKeyInterceptor(apiKey: apiKey),
        LogInterceptor(
          responseBody: true,
          requestBody: true,
        ),
        ApiVersionInterceptor(version: ApiConfig.apiVersion),
      ],
    );

    return _DioFactory._(baseUrl, apiKey).._dio = dio;
  }

  /// Private constructor to prevent instantiation.
  _DioFactory._(this.baseUrl, this.apiKey);

  final String baseUrl;
  final String apiKey;

  late final Dio _dio;

  /// Exposes the configured Dio instance.
  Dio get dio => _dio;
}

/// Interceptor to add an API key to requests.
class ApiKeyInterceptor extends Interceptor {
  /// Creates a new [ApiKeyInterceptor] with the given [apiKey].
  ApiKeyInterceptor({required this.apiKey});

  /// Api key to add to requests.
  final String apiKey;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.queryParameters['access_key'] = apiKey;
    super.onRequest(options, handler);
  }
}

/// Interceptor to prepend an API version to the path.
class ApiVersionInterceptor extends Interceptor {
  /// Creates a new [ApiVersionInterceptor] with the given [version].
  ApiVersionInterceptor({required this.version});

  /// Version of the api, eg. 'v2'.
  final String version;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (options.path.startsWith('/') && !options.path.contains('/$version')) {
      options.path = '/$version${options.path}';
    }
    super.onRequest(options, handler);
  }
}
