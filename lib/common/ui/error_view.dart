import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

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
                child: const Text('Retry'),
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
      return 'Network error';
    }
    if (this is NotFoundError) {
      return 'Not found';
    }
    if (this is UnauthorizedError) {
      return 'Unauthorized';
    }
    if (this is UnexpectedError) {
      return 'Unexpected error';
    }
    return 'Unknown error';
  }
}
