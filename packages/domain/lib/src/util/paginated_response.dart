/// A generic class for paginated responses.
class PaginatedResponse<T> {
  /// Creates a new instance of [PaginatedResponse].
  PaginatedResponse({
    required this.pagination,
    required this.data,
  });

  /// The pagination information.
  final Pagination pagination;

  /// The list of [T] data items.
  final List<T> data;
}

/// A class representing pagination information.
class Pagination {
  /// Creates a new instance of [Pagination].
  Pagination({
    required this.limit,
    required this.offset,
    required this.count,
    required this.total,
  });

  /// The limit of items per page.
  final int limit;

  /// The offset for the current page.
  final int offset;

  /// The total number of items.
  final int count;

  /// The total number of pages.
  final int total;
}
