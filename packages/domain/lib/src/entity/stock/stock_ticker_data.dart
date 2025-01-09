/// StockTickerDataEntity
class StockTickerDataEntity {
  ///
  StockTickerDataEntity({
    required this.name,
    required this.symbol,
    required this.cik,
    required this.isin,
    required this.cusip,
  });

  /// Name
  final String name;

  /// Symbol
  final String symbol;

  /// CIK
  final String cik;

  /// ISIN
  final String isin;

  /// CUSIP
  final String cusip;
}
