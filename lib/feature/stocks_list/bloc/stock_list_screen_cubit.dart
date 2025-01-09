import 'dart:async';

import 'package:domain/domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinit_stocks_test_task/common/common.dart';
import 'package:infinit_stocks_test_task/feature/stocks_list/bloc/stock_dashboard_tab_cubit.dart';

part 'stock_list_screen_cubit.freezed.dart';

@freezed
class StockListScreenState with _$StockListScreenState {
  const factory StockListScreenState({
    required PaginatedState<StockEntity> paginatedState,
    required DashboardState dashboardState,
  }) = _StockListScreenState;
}

class StockListScreenCubit extends Cubit<StockListScreenState> {
  StockListScreenCubit({
    required PaginatedCubit<StockEntity> paginatedCubit,
    required DashboardCubit dashboardCubit,
  })  : _paginatedCubit = paginatedCubit,
        _dashboardCubit = dashboardCubit,
        super(
          StockListScreenState(
            paginatedState: paginatedCubit.state,
            dashboardState: dashboardCubit.state,
          ),
        ) {
    _paginatedSubscription = _paginatedCubit.stream.listen(_onPaginatedChanged);
    _dashboardSubscription = _dashboardCubit.stream.listen(_onDashboardChanged);
  }

  final PaginatedCubit<StockEntity> _paginatedCubit;
  final DashboardCubit _dashboardCubit;

  late final StreamSubscription<PaginatedState<StockEntity>>
      _paginatedSubscription;
  late final StreamSubscription<DashboardState> _dashboardSubscription;

  void _onPaginatedChanged(PaginatedState<StockEntity> newState) {
    newState.maybeWhen(
      loaded: (items, hasMore, totalItemsCount) {
        _dashboardCubit.updateItemsCount(
          totalItemsCount,
        );
      },
      orElse: () {},
    );
    emit(state.copyWith(paginatedState: newState));
  }

  void _onDashboardChanged(DashboardState newState) {
    emit(state.copyWith(dashboardState: newState));
  }

  Future<void> fetchInitialPage() => _paginatedCubit.fetchInitialPage();

  @override
  Future<void> close() {
    _paginatedSubscription.cancel();
    _dashboardSubscription.cancel();
    _paginatedCubit.close();
    _dashboardCubit.close();
    return super.close();
  }
}
