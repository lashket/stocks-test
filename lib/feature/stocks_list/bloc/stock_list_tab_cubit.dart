import 'package:domain/domain.dart';
import 'package:infinit_stocks_test_task/common/common.dart';

class StockListTabCubit extends PaginatedCubit<StockEntity> {
  StockListTabCubit({
    required IStocksRepository stocksRepository,
  }) : _stocksRepository = stocksRepository;

  final IStocksRepository _stocksRepository;

  @override
  Future<Result<PaginatedResponse<StockEntity>>> fetchPage(
    int page,
    int pageSize,
  ) {
    return _stocksRepository.fetchStocks(
      page: page,
      limit: pageSize,
      endDate: DateTime.now(),
      daysDifference: DomainConfig.daysForDisplayHistory,
    );
  }
}
