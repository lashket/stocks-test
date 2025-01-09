import 'package:data/data.dart';
import 'package:dio/dio.dart';

/// Extension for Dio to handle API responses
extension DioExtensions on Dio {
  /// Fetches data from the API and returns an [ApiResponse].
  Future<ApiResponse<T>> getData<T, K>(
    String path, {
    K Function(Map<String, dynamic>)? mapper,
    dynamic data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await get<dynamic>(
        path,
        data: data,
        queryParameters: queryParameters,
      );

      return ApiResponse.fromResponse(response, mapper);
    } on DioException catch (exception) {
      return ApiResponse.handleDioException(exception);
    } finally {}
  }
}
