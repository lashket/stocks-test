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
    required int totalItems,
  }) = PaginatedLoaded<T>;

  const factory PaginatedState.error(DomainError error) = PaginatedError<T>;
}

abstract class PaginatedCubit<T> extends Cubit<PaginatedState<T>> {
  PaginatedCubit({this.pageSize = 10}) : super(const PaginatedState.initial());

  final int pageSize;

  int _currentPage = 0;
  List<T> _items = [];
  bool _isLoading = false;

  Future<Result<PaginatedResponse<T>>> fetchPage(int page, int pageSize);

  Future<void> fetchInitialPage() async {
    _resetState();
    await _fetchNextPage();
  }

  Future<void> fetchNextPage() async {
    if (_isLoading ||
        state is! PaginatedLoaded<T> ||
        !(state as PaginatedLoaded<T>).hasMore) return;
    await _fetchNextPage();
  }

  Future<void> _fetchNextPage() async {
    _isLoading = true;
    if (_currentPage == 0) {
      emit(const PaginatedState.loading());
    }

    final result = await fetchPage(_currentPage, pageSize);

    result.map(
      onSuccess: (response) {
        final newItems = response.data;

        final paginationData = response.pagination;

        final updatedList = [..._items, ...newItems]; // brand-new list object
        _items = updatedList;

        final hasMore = _items.length < paginationData.total;
        _currentPage++;

        emit(
          PaginatedState.loaded(
            items: _items,
            hasMore: hasMore,
            totalItems: response.pagination.total,
          ),
        );
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
