// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:infinit_stocks_test_task/feature/stock_symbol_detail/widget/symbol_detail_screen.dart'
    as _i2;
import 'package:infinit_stocks_test_task/feature/stocks_list/widget/stock_list_screen.dart'
    as _i1;

/// generated route for
/// [_i1.StockListScreen]
class StockListRoute extends _i3.PageRouteInfo<void> {
  const StockListRoute({List<_i3.PageRouteInfo>? children})
      : super(
          StockListRoute.name,
          initialChildren: children,
        );

  static const String name = 'StockListRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i1.StockListScreen();
    },
  );
}

/// generated route for
/// [_i2.SymbolDetailScreen]
class SymbolDetailRoute extends _i3.PageRouteInfo<SymbolDetailRouteArgs> {
  SymbolDetailRoute({
    _i4.Key? key,
    required String symbolId,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          SymbolDetailRoute.name,
          args: SymbolDetailRouteArgs(
            key: key,
            symbolId: symbolId,
          ),
          rawPathParams: {'id': symbolId},
          initialChildren: children,
        );

  static const String name = 'SymbolDetailRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<SymbolDetailRouteArgs>(
          orElse: () =>
              SymbolDetailRouteArgs(symbolId: pathParams.getString('id')));
      return _i2.SymbolDetailScreen(
        key: args.key,
        symbolId: args.symbolId,
      );
    },
  );
}

class SymbolDetailRouteArgs {
  const SymbolDetailRouteArgs({
    this.key,
    required this.symbolId,
  });

  final _i4.Key? key;

  final String symbolId;

  @override
  String toString() {
    return 'SymbolDetailRouteArgs{key: $key, symbolId: $symbolId}';
  }
}
