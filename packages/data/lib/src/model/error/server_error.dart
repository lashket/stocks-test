import 'package:json_annotation/json_annotation.dart';

part 'server_error.g.dart';

@JsonSerializable()
class ErrorResult {
  final int code;
  final String message;


  ErrorResult({
    required this.code,
    required this.message,
  });

  factory ErrorResult.fromJson(Map<String, dynamic> json) =>
      _$ErrorResultFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorResultToJson(this);
}