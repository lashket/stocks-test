// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StockDataDTO _$StockDataDTOFromJson(Map<String, dynamic> json) => StockDataDTO(
      open: (json['open'] as num).toDouble(),
      high: (json['high'] as num).toDouble(),
      low: (json['low'] as num).toDouble(),
      close: (json['close'] as num).toDouble(),
      volume: (json['volume'] as num).toDouble(),
      name: json['name'] as String,
      symbol: json['symbol'] as String,
      exchange: json['exchange'] as String,
      date: json['date'] as String,
    );

Map<String, dynamic> _$StockDataDTOToJson(StockDataDTO instance) =>
    <String, dynamic>{
      'open': instance.open,
      'high': instance.high,
      'low': instance.low,
      'close': instance.close,
      'volume': instance.volume,
      'name': instance.name,
      'symbol': instance.symbol,
      'exchange': instance.exchange,
      'date': instance.date,
    };
