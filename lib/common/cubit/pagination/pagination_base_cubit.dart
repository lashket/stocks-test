import 'package:domain/domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_base_cubit.freezed.dart';

@freezed
class PaginatedState<T> with _$PaginatedState<T> {
  const factory PaginatedState.initial() = PaginatedInitial<T>;

  const factory PaginatedState.loading() = PaginatedLoading<T>;

  const factory PaginatedState.loaded({
    required List<T> items,
    required bool hasMore,
  }) = PaginatedLoaded<T>;

  const factory PaginatedState.error(DomainError error) = PaginatedError<T>;
}

typedef FetchPage<T> = Future<Result<PaginatedResponse<T>>> Function(
  int page,
  int pageSize,
);

abstract class PaginatedCubit<T> extends Cubit<PaginatedState<T>> {
  PaginatedCubit({
    required this.fetchPage,
    this.pageSize = 20,
  }) : super(const PaginatedState.initial());

  final FetchPage<T> fetchPage;
  final int pageSize;

  int _currentPage = 0;
  List<T> _items = [];
  bool _isLoading = false;

  Future<void> fetchInitialPage() async {
    _resetState();
    await _fetchNextPage();
  }

  Future<void> fetchNextPage() async {
    if (_isLoading || state is! PaginatedLoaded<T>) return;
    await _fetchNextPage();
  }

  Future<void> _fetchNextPage() async {
    _isLoading = true;
    emit(const PaginatedState.loading());

    final result = await fetchPage(_currentPage, pageSize);

    result.map(
      onSuccess: (response) {
        final newItems = response.data;
        _items.addAll(newItems);

        final hasMore = newItems.length == pageSize;
        _currentPage++;

        emit(PaginatedState.loaded(items: _items, hasMore: hasMore));
      },
      onFailure: (error) {
        emit(PaginatedState.error(error));
      },
    );

    _isLoading = false;
  }

  void _resetState() {
    _currentPage = 0;
    _items = [];
    _isLoading = false;
    emit(const PaginatedState.initial());
  }
}
