import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SymbolDetailScreen extends StatelessWidget {
  const SymbolDetailScreen({
    @PathParam('id') required this.symbolId,
    super.key,
  });

  final String symbolId;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
