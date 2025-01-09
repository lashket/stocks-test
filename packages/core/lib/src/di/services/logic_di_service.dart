import 'package:core/src/di/service_locator.dart';
import 'package:data/data.dart';
import 'package:dio/dio.dart';
import 'package:domain/domain.dart';

/// Setup service dependency injection.
void setupServiceDI() {
  get
    ..registerLazySingleton<IStockDataService>(
      () => StockRemoteService(dio: get<Dio>()),
    )
    ..registerLazySingleton<IStocksRepository>(
      () => StocksRepositoryImpl(stockDataService: get<IStockDataService>()),
    );
}
