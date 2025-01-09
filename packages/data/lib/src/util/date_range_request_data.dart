import 'package:json_annotation/json_annotation.dart';

part 'date_range_request_data.g.dart';

/// Request data for date range
@JsonSerializable()
class DateRangeRequestData {
  /// Constructor for [DateRangeRequestData]
  DateRangeRequestData({
    required this.dateFrom,
    required this.dateTo,
  });

  /// Start date
  @JsonKey(name: 'date_from')
  final String dateFrom;

  /// End date
  @JsonKey(name: 'date_to')
  final String dateTo;

  /// Create json from instance
  Map<String, dynamic> toJson() => _$DateRangeRequestDataToJson(this);
}
