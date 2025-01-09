import 'package:domain/domain.dart';

/// Repository for fetching stocks.
abstract class IStocksRepository {
  /// Fetches a list of stocks.
  Future<Result<PaginatedResponse<StockEntity>>> fetchStocks({
    required int page,
    required int limit,
    required DateTime endDate,
    required int daysDifference,
  });

  /// Fetch [StockTickerDataEntity] data
  Future<Result<StockTickerDataEntity>> fetchSymbolTicker(String symbol);
}
