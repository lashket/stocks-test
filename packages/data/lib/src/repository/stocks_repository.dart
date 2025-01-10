import 'package:data/data.dart';
import 'package:domain/domain.dart';

/// Implementation of [IStocksRepository].
class StocksRepositoryImpl implements IStocksRepository {
  /// Constructor for [StocksRepositoryImpl].
  const StocksRepositoryImpl({
    required IStockDataService stockDataService,
  }) : _stockDataService = stockDataService;

  final IStockDataService _stockDataService;

  @override
  Future<Result<PaginatedResponse<StockEntity>>> fetchStocks({
    required int page,
    required int limit,
    required DateTime endDate,
    required int daysDifference,
  }) async {
    final response = await _stockDataService.getStocks(
      PaginatedRequestData(
        limit: limit,
        offset: page * limit,
      ),
      DateRangeRequestData(
        dateFrom: endDate.add(Duration(days: -daysDifference)).dateFormatted,
        dateTo: endDate.dateFormatted,
      ),
      DomainConfig.defaultSymbol,
    );
    return response.toDomain(
      mapSuccess: (data) {
        return data.toDomain(mapData: (dto) => dto.toDomain());
      },
    );
  }

  @override
  Future<Result<StockTickerDataEntity>> fetchSymbolTicker(String symbol) {
    return _stockDataService
        .getStockTickerDetails(DomainConfig.defaultSymbol)
        .then(
          (response) => response.toDomain(
            mapSuccess: (data) => data.toDomain(),
          ),
        );
  }
}
