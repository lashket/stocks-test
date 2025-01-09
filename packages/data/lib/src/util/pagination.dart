import 'package:domain/domain.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pagination.g.dart';

/// Paginated response DTO
@JsonSerializable(genericArgumentFactories: true)
class PaginatedResponseDTO<T> {
  /// Constructor
  PaginatedResponseDTO({
    required this.pagination,
    required this.data,
  });

  /// Factory method for creating an instance from JSON
  factory PaginatedResponseDTO.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$PaginatedResponseDTOFromJson(json, fromJsonT);

  /// Pagination information
  final PaginationDTO pagination;

  /// List of items
  final List<T> data;

  /// Method for converting an instance to JSON
  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$PaginatedResponseDTOToJson(this, toJsonT);
}

/// Pagination information DTO with limit, offset, count, and total fields
@JsonSerializable()
class PaginationDTO {
  /// Constructor for [PaginationDTO]
  PaginationDTO({
    required this.limit,
    required this.offset,
    required this.count,
    required this.total,
  });

  /// Factory method for creating an instance from JSON
  factory PaginationDTO.fromJson(Map<String, dynamic> json) =>
      _$PaginationDTOFromJson(json);

  /// Limit for the number of items per page
  final int limit;

  /// Offset for the starting point of the items
  final int offset;

  /// Count of the current page items
  final int count;

  /// Total number of items
  final int total;

  /// Method for converting an instance to JSON
  Map<String, dynamic> toJson() => _$PaginationDTOToJson(this);
}

/// Paginated request data DTO with limit and offset fields
@JsonSerializable()
class PaginatedRequestData {
  /// Constructor for [PaginatedRequestData]
  PaginatedRequestData({
    required this.limit,
    required this.offset,
  });

  /// Limit for the number of items per page
  final int limit;

  /// Offset for the starting point of the items
  final int offset;

  /// Factory method for creating an instance from JSON
  Map<String, dynamic> toJson() => _$PaginatedRequestDataToJson(this);
}

/// Pagination information with limit, offset, count, and total fields
extension PaginatedResponseDTOExtension<T> on PaginatedResponseDTO<T> {
  /// Converts the DTO to a domain object
  PaginatedResponse<U> toDomain<U>({
    required U Function(T) mapData,
  }) {
    return PaginatedResponse<U>(
      pagination: pagination.toDomain(),
      data: data.map(mapData).toList(),
    );
  }
}

/// Pagination information with limit, offset, count, and total fields
extension PaginationDTOExtension on PaginationDTO {
  /// Converts the DTO to a domain object
  Pagination toDomain() {
    return Pagination(
      limit: limit,
      offset: offset,
      count: count,
      total: total,
    );
  }
}
