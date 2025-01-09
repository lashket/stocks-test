import 'package:core/core.dart';

/// Setup dependency injection.
void setupDI({
  required String baseUrl,
  required String apiKey,
}) {
  setupDioDI(baseUrl: baseUrl, apiKey: apiKey);
  setupServiceDI();
}