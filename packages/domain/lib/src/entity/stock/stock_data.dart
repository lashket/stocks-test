/// Stock data entity
class StockEntity {
  /// Constructor for [StockEntity]
  StockEntity({
    required this.open,
    required this.high,
    required this.low,
    required this.close,
    required this.name,
    required this.symbol,
    required this.date,
  });

  /// Stock open price
  final double open;

  /// Stock high price
  final double high;

  /// Stock low price
  final double low;

  /// Stock close price
  final double close;

  /// Stock name
  final String name;

  /// Stock symbol
  final String symbol;

  /// Date of the stock
  final DateTime date;
}
