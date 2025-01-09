// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_ticker_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StockTickerDto _$StockTickerDtoFromJson(Map<String, dynamic> json) =>
    StockTickerDto(
      name: json['name'] as String,
      symbol: json['symbol'] as String,
      cik: json['cik'] as String,
      isin: json['isin'] as String,
      cusip: json['cusip'] as String,
      einEmployerId: json['ein_employer_id'] as String?,
      lei: json['lei'] as String?,
      seriesId: json['series_id'] as String?,
      itemType: json['item_type'] as String?,
      sector: json['sector'] as String?,
      industry: json['industry'] as String?,
      sicCode: json['sic_code'] as String?,
      sicName: json['sic_name'] as String?,
    );

Map<String, dynamic> _$StockTickerDtoToJson(StockTickerDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'symbol': instance.symbol,
      'cik': instance.cik,
      'isin': instance.isin,
      'cusip': instance.cusip,
      'ein_employer_id': instance.einEmployerId,
      'lei': instance.lei,
      'series_id': instance.seriesId,
      'item_type': instance.itemType,
      'sector': instance.sector,
      'industry': instance.industry,
      'sic_code': instance.sicCode,
      'sic_name': instance.sicName,
    };
