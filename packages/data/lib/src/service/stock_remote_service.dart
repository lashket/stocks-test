import 'package:data/data.dart';
import 'package:dio/dio.dart';

/// Interface for stock data service.
abstract interface class IStockDataService {
  /// Get stocks
  Future<ApiResponse<PaginatedResponseDTO<StockDataDTO>>> getStocks(
    PaginatedRequestData requestData,
    DateRangeRequestData dateRange,
  );

  /// Get stock details
  Future<ApiResponse<StockTickerDto>> getStockTickerDetails(String symbol);
}

/// Implementation of [IStockDataService] that uses Dio to make API calls.
class StockRemoteService implements IStockDataService {
  /// Creates a new [StockRemoteService] with the given [dio].
  StockRemoteService({
    required Dio dio,
  }) : _dio = dio;

  final Dio _dio;

  @override
  Future<ApiResponse<PaginatedResponseDTO<StockDataDTO>>> getStocks(
    PaginatedRequestData requestData,
    DateRangeRequestData dateRange,
  ) {
    return _dio.getData(
      '/eod/latest',
      queryParameters: {
        ...requestData.toJson(),
        ...dateRange.toJson(),
      },
      mapper: (data) {
        return PaginatedResponseDTO<StockDataDTO>.fromJson(
          data,
          (json) => StockDataDTO.fromJson(json! as Map<String, dynamic>),
        );
      },
    );
  }

  @override
  Future<ApiResponse<StockTickerDto>> getStockTickerDetails(String symbol) {
    return _dio.getData(
      '/tickers/$symbol',
      mapper: StockTickerDto.fromJson,
    );
  }
}
