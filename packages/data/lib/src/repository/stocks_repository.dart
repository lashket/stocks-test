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
  Future<Result<dynamic>> fetchDashboardData() {
    throw UnimplementedError();
  }

  @override
  Future<Result<PaginatedResponse<StockEntity>>> fetchStocks({
    required int page,
    required int limit,
  }) async {
    final response = await _stockDataService.getStocks(
      PaginatedRequestData(
        limit: limit,
        offset: page * limit,
      ),
    );
    return response.toDomain(
      mapSuccess: (data) {
        return data.toDomain(mapData: (dto) => dto.toDomain());
      },
    );
  }
}
