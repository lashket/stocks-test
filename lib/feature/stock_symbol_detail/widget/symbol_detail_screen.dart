import 'package:auto_route/annotations.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:infinit_stocks_test_task/common/common.dart';
import 'package:infinit_stocks_test_task/feature/stock_symbol_detail/bloc/symbol_detail_cubit.dart';

@RoutePage()
class SymbolDetailScreen extends StatelessWidget {
  const SymbolDetailScreen({
    @PathParam('id') required this.symbolId,
    super.key,
  });

  final String symbolId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(symbolId),
      ),
      body: SingleRequestCubitWidget(
        cubit: SymbolDetailCubit(
          stocksRepository: get(),
          symbol: symbolId,
        ),
        onSuccess: (_, data) {
          return Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(data.name),
                Text(data.symbol),
                Text(data.cik),
                Text(data.cusip),
                Text(data.isin),
              ],
            ),
          );
        },
      ),
    );
  }
}
