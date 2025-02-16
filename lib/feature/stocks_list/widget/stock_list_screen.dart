import 'package:auto_route/auto_route.dart';
import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinit_stocks_test_task/app/router/router.dart';
import 'package:infinit_stocks_test_task/common/common.dart';
import 'package:infinit_stocks_test_task/common/util/util.dart';
import 'package:infinit_stocks_test_task/feature/stocks_list/bloc/bloc.dart';

part 'tabs/stocks_list_tab.dart';

part 'tabs/dashboard_tab.dart';

@RoutePage()
class StocksListScreen extends StatefulWidget {
  const StocksListScreen({super.key});

  @override
  State<StocksListScreen> createState() => _StocksListScreenState();
}

class _StocksListScreenState extends State<StocksListScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  late final StockListTabCubit _paginatedCubit;
  late final DashboardCubit _dashboardCubit;
  late final StockListScreenCubit _parentCubit;

  @override
  void initState() {
    super.initState();

    _paginatedCubit = StockListTabCubit(
      stocksRepository: get<IStocksRepository>(),
    );
    _dashboardCubit = DashboardCubit();

    _parentCubit = StockListScreenCubit(
      paginatedCubit: _paginatedCubit,
      dashboardCubit: _dashboardCubit,
    );

    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _parentCubit.close();
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: _parentCubit),
        BlocProvider.value(value: _paginatedCubit),
        BlocProvider.value(value: _dashboardCubit),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            context.localization.symbolHistory(DomainConfig.defaultSymbol),
          ),
          bottom: TabBar(
            controller: _tabController,
            tabs: [
              Tab(text: context.localization.list),
              Tab(text: context.localization.dashboard),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            _StocksListTab(cubit: _paginatedCubit),
            _DashboardTab(cubit: _dashboardCubit),
          ],
        ),
      ),
    );
  }
}
