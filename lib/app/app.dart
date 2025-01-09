import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:infinit_stocks_test_task/app/router/app_router.dart';

final _router = AppRouter();

class StocksApp extends StatelessWidget {
  const StocksApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _router.defaultRouteParser(),
      routerDelegate: _router.delegate(
        navigatorObservers: () => [AutoRouteObserver()],
      ),
    );
  }
}
