import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:infinit_stocks_test_task/app/app.dart';

void main() {
  // Setting up dependency injection for the app
  setupDI(
    baseUrl: const String.fromEnvironment('base_url'),
    apiKey: const String.fromEnvironment('api_key'),
  );

  runApp(const StocksApp());
}
