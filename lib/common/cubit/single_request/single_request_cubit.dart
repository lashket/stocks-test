import 'package:domain/domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'single_request_cubit.freezed.dart';

@freezed
class SingleRequestState<T> with _$SingleRequestState<T> {
  const factory SingleRequestState.initial() = SingleRequestInitial<T>;

  const factory SingleRequestState.loading() = SingleRequestLoading<T>;

  const factory SingleRequestState.loaded({required T data}) =
      SingleRequestLoaded<T>;

  const factory SingleRequestState.error({required DomainError error}) =
      SingleRequestError<T>;
}

abstract class SingleRequestCubit<T> extends Cubit<SingleRequestState<T>> {
  SingleRequestCubit() : super(const SingleRequestState.initial());

  Future<Result<T>> fetchData();

  Future<void> load() async {
    emit(const SingleRequestState.loading());

    final result = await fetchData();

    result.map(
      onSuccess: (data) => emit(SingleRequestState.loaded(data: data)),
      onFailure: (error) => emit(
        SingleRequestState.error(
          error: error,
        ),
      ),
    );
  }

  Future<void> retry() => load();
}
