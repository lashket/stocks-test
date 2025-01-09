import 'package:domain/domain.dart';
import 'package:infinit_stocks_test_task/common/common.dart';

class SymbolDetailCubit extends SingleRequestCubit<StockTickerDataEntity> {
  SymbolDetailCubit({
    required IStocksRepository stocksRepository,
    required String symbol,
  })  : _stocksRepository = stocksRepository,
        _symbol = symbol,
        super();

  final IStocksRepository _stocksRepository;
  final String _symbol;

  @override
  Future<Result<StockTickerDataEntity>> fetchData() {
    return _stocksRepository.fetchSymbolTicker(_symbol);
  }
}
