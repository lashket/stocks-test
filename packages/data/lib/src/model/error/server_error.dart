import 'package:json_annotation/json_annotation.dart';

part 'server_error.g.dart';

/// A class that represents a server error.
@JsonSerializable()
class ErrorResult {
  /// Creates a [ErrorResult].
  ErrorResult({
    required this.code,
    required this.message,
  });

  /// Creates a [ErrorResult] from a JSON object.
  factory ErrorResult.fromJson(Map<String, dynamic> json) =>
      _$ErrorResultFromJson(json);

  /// The error code. eg. 404
  final int code;

  /// The error message.
  final String message;

  /// Returns this object as a JSON map.
  Map<String, dynamic> toJson() => _$ErrorResultToJson(this);
}
