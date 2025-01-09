import 'package:data/data.dart';
import 'package:flutter_test/flutter_test.dart';

final paginationResponseDto = {
  'pagination': {
    'limit': 100,
    'offset': 0,
    'count': 100,
    'total': 9944,
  },
  'data': [
    {
      'open': 228.46,
      'high': 229.52,
      'low': 227.3,
      'close': 227.79,
      'volume': 34025967.0,
      'adj_high': 229.52,
      'adj_low': 227.3,
      'adj_close': 227.79,
      'adj_open': 228.46,
      'adj_volume': 34025967.0,
      'split_factor': 1.0,
      'dividend': 0.0,
      'name': 'Apple Inc',
      'exchange_code': 'NASDAQ',
      'asset_type': 'Stock',
      'price_currency': 'usd',
      'symbol': 'AAPL',
      'exchange': 'XNAS',
      'date': '2024-09-27T00:00:00+0000',
    }
  ],
};

void main() {
  group('PaginatedResponseDTO Tests', () {
    test('Check paginated data', () {
      final paginationDto = PaginatedResponseDTO<StockDataDTO>.fromJson(
        paginationResponseDto,
        (json) => StockDataDTO.fromJson(json! as Map<String, dynamic>),
      );
      expect(paginationDto.pagination.limit, 100);
      expect(paginationDto.pagination.offset, 0);
      expect(paginationDto.pagination.count, 100);
      expect(paginationDto.pagination.total, 9944);
    });

    test('Check stock data dto', () {
      final paginationDto = PaginatedResponseDTO<StockDataDTO>.fromJson(
        paginationResponseDto,
        (json) => StockDataDTO.fromJson(json! as Map<String, dynamic>),
      );
      expect(paginationDto.data.length, 1);
      final stockData = paginationDto.data.first;

      expect(stockData.name, 'Apple Inc');
      expect(stockData.symbol, 'AAPL');
      expect(stockData.exchange, 'XNAS');
      expect(stockData.date, '2024-09-27T00:00:00+0000');
    });

    test('Should handle empty data gracefully', () {
      final emptyResponse = {
        'pagination': {
          'limit': 0,
          'offset': 0,
          'count': 0,
          'total': 0,
        },
        'data': <dynamic>[],
      };

      final paginationDto = PaginatedResponseDTO<StockDataDTO>.fromJson(
        emptyResponse,
        (json) => StockDataDTO.fromJson(json! as Map<String, dynamic>),
      );
      expect(paginationDto.pagination.limit, 0);
      expect(paginationDto.data, isEmpty);
    });
  });
}
