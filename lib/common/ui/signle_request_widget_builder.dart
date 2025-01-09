import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinit_stocks_test_task/common/common.dart';

class SingleRequestCubitWidget<T> extends StatelessWidget {
  const SingleRequestCubitWidget({
    required this.cubit,
    required this.onSuccess,
    this.loadingBuilder,
    this.errorBuilder,
    this.initialBuilder,
    this.retryButtonText = 'Retry',
    super.key,
  });

  final SingleRequestCubit<T> cubit;

  final Widget Function(BuildContext context, T data) onSuccess;

  final WidgetBuilder? loadingBuilder;

  final Widget Function(
    BuildContext context,
    DomainError error,
    VoidCallback retry,
  )? errorBuilder;

  final WidgetBuilder? initialBuilder;

  final String retryButtonText;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SingleRequestCubit<T>>.value(
      value: cubit,
      child: BlocBuilder<SingleRequestCubit<T>, SingleRequestState<T>>(
        builder: (context, state) {
          return state.when(
            initial: () =>
                initialBuilder?.call(context) ??
                const Center(
                  child: Text('Tap to load data.'),
                ),
            loading: () =>
                loadingBuilder?.call(context) ??
                const Center(
                  child: CircularProgressIndicator(),
                ),
            loaded: (data) => onSuccess(context, data),
            error: (message) =>
                errorBuilder?.call(
                  context,
                  message,
                  cubit.retry,
                ) ??
                StocksErrorView(
                  error: message,
                  onRetry: cubit.retry,
                ),
          );
        },
      ),
    );
  }
}
