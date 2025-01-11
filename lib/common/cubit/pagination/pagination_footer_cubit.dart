import 'package:domain/domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_footer_cubit.freezed.dart';

@freezed
class FooterState with _$FooterState {
  const factory FooterState.initial() = FooterInitial;
  const factory FooterState.loading() = FooterLoading;
  const factory FooterState.error(DomainError error) = FooterError;
}

class FooterCubit extends Cubit<FooterState> {
  FooterCubit() : super(const FooterState.initial());

  void showLoading() {
    emit(const FooterState.loading());
  }

  void showError(DomainError error) {
    emit(FooterState.error(error));
  }

  void reset() {
    emit(const FooterState.initial());
  }
}
