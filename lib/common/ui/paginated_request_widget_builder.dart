import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinit_stocks_test_task/common/common.dart';

const _scrollThreshold = 0.9;

class PaginatedListViewWidget<T> extends StatefulWidget {
  const PaginatedListViewWidget({
    required this.cubit,
    required this.itemBuilder,
    this.loadingWidget,
    this.errorBuilder,
    this.initialBuilder,
    this.emptyBuilder,
    super.key,
  });

  final PaginatedCubit<T> cubit;

  final Widget Function(BuildContext context, T item, int index) itemBuilder;

  final WidgetBuilder? loadingWidget;

  final Widget Function(
    BuildContext context,
    DomainError error,
    VoidCallback retry,
  )? errorBuilder;

  final WidgetBuilder? initialBuilder;

  final WidgetBuilder? emptyBuilder;

  @override
  State<PaginatedListViewWidget<T>> createState() =>
      _PaginatedListViewWidgetState<T>();
}

class _PaginatedListViewWidgetState<T>
    extends State<PaginatedListViewWidget<T>> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      widget.cubit.fetchInitialPage();
    });
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  void _onScroll() {
    if (!_scrollController.hasClients) return;

    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;
    if (currentScroll >= maxScroll * _scrollThreshold) {
      widget.cubit.fetchNextPage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PaginatedCubit<T>>.value(
      value: widget.cubit,
      child: BlocBuilder<PaginatedCubit<T>, PaginatedState<T>>(
        bloc: widget.cubit,
        builder: (context, state) {
          return state.when(
            initial: () =>
                widget.initialBuilder?.call(context) ??
                const Center(child: CircularProgressIndicator()),
            loading: () =>
                widget.loadingWidget?.call(context) ??
                const Center(child: CircularProgressIndicator()),
            loaded: (items, hasMore, _) {
              if (items.isEmpty) {
                return widget.emptyBuilder?.call(context) ??
                    const Center(child: Text('No items found.'));
              }

              return ListView.builder(
                controller: _scrollController,
                itemCount: items.length + (hasMore ? 1 : 0),
                itemBuilder: (context, index) {
                  if (index == items.length && hasMore) {
                    return const Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        child: CircularProgressIndicator(),
                      ),
                    );
                  }
                  final item = items[index];
                  return widget.itemBuilder(context, item, index);
                },
              );
            },
            error: (domainError) {
              return widget.errorBuilder?.call(
                    context,
                    domainError,
                    _retry,
                  ) ??
                  StocksErrorView(onRetry: _retry, error: domainError);
            },
          );
        },
      ),
    );
  }

  void _retry() => widget.cubit.fetchInitialPage();
}
