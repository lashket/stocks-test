import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:infinit_stocks_test_task/app/router/app_router.dart';

class StocksApp extends StatelessWidget {
  const StocksApp({super.key});

  @override
  Widget build(BuildContext context) {
    final router = AppRouter();

    return MaterialApp.router(
      routeInformationParser: router.defaultRouteParser(),
      routerDelegate: router.delegate(
        navigatorObservers: () => [AutoRouteObserver()],
      ),
    );
  }
}
