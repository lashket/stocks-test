import 'dart:async';

import 'package:data/data.dart';
import 'package:dio/dio.dart';
import 'package:domain/domain.dart';

/// Indicates the reason for an API failure.
enum ApiFailureReason {
  /// The API returned a status code that indicates an error.
  apiError,

  /// The network returned a status code that indicates a network error.
  networkError,
}

/// An empty response body.
class EmptyApiResponseBody {
  /// Creates a new [EmptyApiResponseBody].
  const EmptyApiResponseBody();
}

enum _Status { success, networkError, apiError }

/// A response from the API.
class ApiResponse<T> {
  const ApiResponse._(
    this._body,
    this._errorResult,
    this._statusCode,
    this._status,
  );

  /// Creates a new [ApiResponse] with the given [_body].
  const ApiResponse.ok(T this._body)
      : _statusCode = 200,
        _errorResult = null,
        _status = _Status.success;

  /// Creates a new [ApiResponse] with the given [body] and [statusCode].
  const ApiResponse.success({
    required T body,
    required int statusCode,
  })  : _body = body,
        _statusCode = statusCode,
        _errorResult = null,
        _status = _Status.success;

  /// Creates a new [ApiResponse] with a network error.
  const ApiResponse.networkError()
      : _body = null,
        _statusCode = null,
        _status = _Status.networkError,
        _errorResult = null;

  /// Creates a new [ApiResponse] with an API error.
  const ApiResponse.apiError({
    required ErrorResult? errorResult,
    required int? statusCode,
  })  : _body = null,
        _errorResult = errorResult,
        _statusCode = statusCode,
        _status = _Status.apiError;

  /// Creates a new [ApiResponse] from the given [response].
  static ApiResponse<T> fromResponse<T, K>(
    Response<dynamic> response,
    K Function(Map<String, dynamic>)? mapper,
  ) {
    if (response.statusCode != null &&
        response.statusCode! >= 200 &&
        response.statusCode! < 300) {
      if (response.data is String && (response.data as String).isNotEmpty) {
        return ApiResponse.success(
          body: response.data as T,
          statusCode: response.statusCode!,
        );
      } else if (mapper == null) {
        return ApiResponse.success(
          body: const EmptyApiResponseBody() as T,
          statusCode: response.statusCode!,
        );
      } else {
        return ApiResponse.success(
          body: response.data as T,
          statusCode: response.statusCode!,
        );
      }
    } else {
      return buildUnsuccessfulResponse<T>(response);
    }
  }

  final T? _body;
  final ErrorResult? _errorResult;
  final int? _statusCode;

  /// The status code of the API response.
  int? get statusCode => _statusCode;
  final _Status _status;

  /// Indicates whether the API call was successful.
  static ApiResponse<T> buildUnsuccessfulResponse<T>(
    Response<dynamic> response,
  ) {
    final errorResult = ErrorResult.fromJson(
      (response.data as Map<String, dynamic>)['error'] as Map<String, dynamic>,
    );

    return ApiResponse<T>.apiError(
      errorResult: errorResult,
      statusCode: response.statusCode,
    );
  }

  /// Handles a [DioException] and returns an [ApiResponse].
  static ApiResponse<T> handleDioException<T>(DioException exception) {
    if (exception.type == DioExceptionType.connectionError) {
      return const ApiResponse.networkError();
    }

    if (exception.response != null) {
      final errorResult = ErrorResult.fromJson(
        (exception.response?.data as Map<String, dynamic>)['error']
            as Map<String, dynamic>,
      );
      return ApiResponse.apiError(
        errorResult: errorResult,
        statusCode: exception.response!.statusCode,
      );
    }
    return ApiResponse.apiError(
      errorResult: ErrorResult(
        code: -1,
        message: exception.message ?? 'Unknown error occurred',
      ),
      statusCode: null,
    );
  }

  /// Handles the response with the given [onSuccess], [onApiError],
  /// and [onNetworkError] callbacks.
  Future<void> handle({
    required FutureOr<void> Function(T body) onSuccess,
    FutureOr<void> Function(ErrorResult? errorResult, int? statusCode)?
        onApiError,
    FutureOr<void> Function()? onNetworkError,
  }) async {
    try {
      switch (_status) {
        case _Status.success:
          return onSuccess(_body as T);
        case _Status.apiError:
          return onApiError?.call(_errorResult, _statusCode);
        case _Status.networkError:
          return onNetworkError?.call();
      }
    } catch (e) {
      return onApiError?.call(null, null);
    }
  }

  /// Indicates whether the API call was successful.
  bool get success => _status == _Status.success;

  /// Maps the response to a new type [R].
  ApiResponse<R> map<R>({required R Function(T body) onSuccess}) =>
      ApiResponse._(
        _status == _Status.success ? onSuccess(_body as T) : null,
        _errorResult,
        _statusCode,
        _status,
      );
}

/// An extension on [ApiResponse] that provides utility methods.
extension ApiResponseExtension<T> on ApiResponse<T> {
  /// Maps the response to a [Result] with type [U].
  Result<U> toDomain<U>({
    required U Function(T dto) mapSuccess,
  }) {
    switch (_status) {
      case _Status.success:
        return Result.success(mapSuccess(_body as T));
      case _Status.apiError:
        return Result.failure(_mapErrorToDomainError(_errorResult));
      case _Status.networkError:
        return Result.failure(NetworkError());
    }
  }

  DomainError _mapErrorToDomainError(ErrorResult? errorResult) {
    if (errorResult == null) {
      return UnexpectedError();
    }

    switch (errorResult.code) {
      case 401:
        return UnauthorizedError();
      case 404:
        return NotFoundError();
      case 500:
        return UnexpectedError();
      default:
        return UnexpectedError();
    }
  }
}
