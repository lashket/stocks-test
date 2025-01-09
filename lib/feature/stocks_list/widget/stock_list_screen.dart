import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class StockListScreen extends StatelessWidget {
  const StockListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Stock List Screen'),
      ),
    );
  }
}
