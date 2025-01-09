// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedResponseDTO<T> _$PaginatedResponseDTOFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    PaginatedResponseDTO<T>(
      pagination:
          PaginationDTO.fromJson(json['pagination'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>).map(fromJsonT).toList(),
    );

Map<String, dynamic> _$PaginatedResponseDTOToJson<T>(
  PaginatedResponseDTO<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'pagination': instance.pagination,
      'data': instance.data.map(toJsonT).toList(),
    };

PaginationDTO _$PaginationDTOFromJson(Map<String, dynamic> json) =>
    PaginationDTO(
      limit: (json['limit'] as num).toInt(),
      offset: (json['offset'] as num).toInt(),
      count: (json['count'] as num).toInt(),
      total: (json['total'] as num).toInt(),
    );

Map<String, dynamic> _$PaginationDTOToJson(PaginationDTO instance) =>
    <String, dynamic>{
      'limit': instance.limit,
      'offset': instance.offset,
      'count': instance.count,
      'total': instance.total,
    };

PaginatedRequestData _$PaginatedRequestDataFromJson(
        Map<String, dynamic> json) =>
    PaginatedRequestData(
      limit: (json['limit'] as num).toInt(),
      offset: (json['offset'] as num).toInt(),
    );

Map<String, dynamic> _$PaginatedRequestDataToJson(
        PaginatedRequestData instance) =>
    <String, dynamic>{
      'limit': instance.limit,
      'offset': instance.offset,
    };
