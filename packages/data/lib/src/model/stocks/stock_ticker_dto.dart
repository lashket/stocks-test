//ignore_for_file: public_member_api_docs

import 'package:domain/domain.dart';
import 'package:json_annotation/json_annotation.dart';

part 'stock_ticker_dto.g.dart';

@JsonSerializable()
class StockTickerDto {
  StockTickerDto({
    required this.name,
    required this.symbol,
    required this.cik,
    required this.isin,
    required this.cusip,
    this.einEmployerId,
    this.lei,
    this.seriesId,
    this.itemType,
    this.sector,
    this.industry,
    this.sicCode,
    this.sicName,
  });

  factory StockTickerDto.fromJson(Map<String, dynamic> json) =>
      _$StockTickerDtoFromJson(json);
  final String name;
  final String symbol;
  final String cik;
  final String isin;
  final String cusip;

  @JsonKey(name: 'ein_employer_id')
  final String? einEmployerId;

  final String? lei;

  @JsonKey(name: 'series_id')
  final String? seriesId;

  @JsonKey(name: 'item_type')
  final String? itemType;

  final String? sector;
  final String? industry;

  @JsonKey(name: 'sic_code')
  final String? sicCode;

  @JsonKey(name: 'sic_name')
  final String? sicName;

  Map<String, dynamic> toJson() => _$StockTickerDtoToJson(this);
}

extension StockTickerDtoExtension on StockTickerDto {
  StockTickerDataEntity toDomain() {
    return StockTickerDataEntity(
      name: name,
      symbol: symbol,
      cik: cik,
      isin: isin,
      cusip: cusip,
    );
  }
}
