import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:infinit_stocks_test_task/common/util/util.dart';

class StocksErrorView extends StatelessWidget {
  const StocksErrorView({
    required this.error,
    this.onRetry,
    super.key,
  });

  final VoidCallback? onRetry;
  final DomainError error;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            error.message(context),
            style: const TextStyle(color: Colors.red),
            textAlign: TextAlign.center,
          ),
          Visibility(
            visible: onRetry != null,
            child: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: ElevatedButton(
                onPressed: onRetry,
                child: Text(context.localization.retry),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

extension DomainErrorX on DomainError {
  String message(BuildContext context) {
    // TODO(Andrei): Implement localization for error messages.
    if (this is NetworkError) {
      return context.localization.networkError;
    }
    if (this is NotFoundError) {
      return context.localization.notFound;
    }
    if (this is UnauthorizedError) {
      return context.localization.unauthorized;
    }
    if (this is UnexpectedError) {
      return context.localization.unexpectedError;
    }
    return context.localization.unknownError;
  }
}
