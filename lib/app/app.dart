import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:infinit_stocks_test_task/app/router/app_router.dart';
import 'package:infinit_stocks_test_task/generated/l10n.dart';

final _router = AppRouter();

class StocksApp extends StatelessWidget {
  const StocksApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _router.defaultRouteParser(),
      localizationsDelegates: const [
        S.delegate,
      ],
      routerDelegate: _router.delegate(
        navigatorObservers: () => [AutoRouteObserver()],
      ),
    );
  }
}
