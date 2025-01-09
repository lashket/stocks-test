part of '../stock_list_screen.dart';

class _StocksListTab extends StatelessWidget {
  const _StocksListTab({
    required StockListTabCubit cubit,
  }) : _cubit = cubit;

  final StockListTabCubit _cubit;

  @override
  Widget build(BuildContext context) {
    return PaginatedListViewWidget(
      cubit: _cubit,
      itemBuilder: (
        ctx,
        entity,
        position,
      ) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 4,
          ),
          child: InkWell(
            onTap: () {
              context.router.push(
                SymbolDetailRoute(symbolId: entity.symbol),
              );
            },
            child: Card(
              child: ListTile(
                title: Text(entity.name),
                subtitle: Text(entity.symbol),
                trailing: Text(
                  entity.date.dateFormatted,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
