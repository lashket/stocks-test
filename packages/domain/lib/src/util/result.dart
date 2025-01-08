import 'package:domain/src/errors/domain_error.dart';

/// A class that represents the result of an operation,
/// which can either be a success or a failure.
class Result<T> {
  /// Creates a failed result with the given error.
  factory Result.failure(DomainError error) => Result._(
        error: error,
        isSuccess: false,
      );

  /// Creates a new instance of [Result].
  const Result._({
    required this.isSuccess,
    this.data,
    this.error,
  });

  /// Creates a successful result with the given data.
  factory Result.success(T data) => Result._(data: data, isSuccess: true);

  /// The data of the result, if the operation was successful.
  final T? data;

  /// The error of the result, if the operation failed.
  final DomainError? error;

  /// A boolean indicating whether the operation was successful.
  final bool isSuccess;

  /// Maps the result to a new type based on whether it is a success or failure.
  R map<R>({
    required R Function(T data) onSuccess,
    required R Function(DomainError error) onFailure,
  }) {
    return isSuccess ? onSuccess(data as T) : onFailure(error!);
  }
}
