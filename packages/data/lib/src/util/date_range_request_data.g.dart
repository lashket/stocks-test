// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'date_range_request_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DateRangeRequestData _$DateRangeRequestDataFromJson(
        Map<String, dynamic> json) =>
    DateRangeRequestData(
      dateFrom: json['date_from'] as String,
      dateTo: json['date_to'] as String,
    );

Map<String, dynamic> _$DateRangeRequestDataToJson(
        DateRangeRequestData instance) =>
    <String, dynamic>{
      'date_from': instance.dateFrom,
      'date_to': instance.dateTo,
    };
