//ignore_for_file: public_member_api_docs
import 'package:domain/domain.dart';
import 'package:json_annotation/json_annotation.dart';

part 'stock_data_dto.g.dart';

/// Data Transfer Object for Stock Data
@JsonSerializable()
class StockDataDTO {
  StockDataDTO({
    required this.open,
    required this.high,
    required this.low,
    required this.close,
    required this.volume,
    required this.name,
    required this.symbol,
    required this.exchange,
    required this.date,
  });

  factory StockDataDTO.fromJson(Map<String, dynamic> json) =>
      _$StockDataDTOFromJson(json);

  final double open;
  final double high;
  final double low;
  final double close;
  final double volume;
  final String name;
  final String symbol;
  final String exchange;
  final String date;

  Map<String, dynamic> toJson() => _$StockDataDTOToJson(this);
}

extension StockDataDTOExtension on StockDataDTO {
  StockEntity toDomain() {
    return StockEntity(
      open: open,
      high: high,
      low: low,
      close: close,
      name: name,
      symbol: symbol,
      date: DateTime.parse(date),
    );
  }
}
