import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinit_stocks_test_task/common/common.dart';

class PaginatedFooterWidget extends StatelessWidget {
  const PaginatedFooterWidget({
    required FooterCubit footerCubit,
    required VoidCallback onRetry,
    super.key,
  })  : _footerCubit = footerCubit,
        _onRetry = onRetry;

  final FooterCubit _footerCubit;
  final VoidCallback _onRetry;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _footerCubit,
      child: BlocBuilder<FooterCubit, FooterState>(
        bloc: _footerCubit,
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox(),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            error: (error) => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    error.message(context),
                    style: const TextStyle(color: Colors.red),
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: ElevatedButton(
                      onPressed: _onRetry,
                      child: const Text('Retry'),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
