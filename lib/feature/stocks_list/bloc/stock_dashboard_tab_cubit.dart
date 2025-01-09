import 'package:domain/domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'stock_dashboard_tab_cubit.freezed.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState.initial() = DashboardInitial;

  const factory DashboardState.loading() = DashboardLoading;

  const factory DashboardState.loaded({required int totalItems}) =
      DashboardLoaded;

  const factory DashboardState.error(DomainError error) = DashboardError;
}

class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit() : super(const DashboardState.initial());

  Future<void> updateItemsCount(int length) async {
    emit(const DashboardState.loading());
    try {
      emit(DashboardState.loaded(totalItems: length));
    } catch (e) {
      emit(DashboardState.error(UnexpectedError()));
    }
  }
}
