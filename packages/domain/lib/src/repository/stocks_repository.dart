import 'package:domain/domain.dart';

/// Repository for fetching stocks.
abstract class IStocksRepository {
  /// Fetches a list of stocks.
  Future<Result<PaginatedResponse<StockEntity>>> fetchStocks({
    required int page,
    required int limit,
  });

  /// Fetch [dynamic] dashboard data
  Future<Result<dynamic>> fetchDashboardData();
}
