import 'package:auto_route/auto_route.dart';
import 'package:infinit_stocks_test_task/app/router/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends RootStackRouter {
  AppRouter() : super();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
            initial: true,
            page: StockListRoute.page,
            path: '/',
            children: [
              AutoRoute(
                path: 'symbol/:id',
                page: SymbolDetailRoute.page,
              )
            ]),
      ];
}
