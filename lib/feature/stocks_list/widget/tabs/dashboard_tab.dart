part of '../stock_list_screen.dart';

class _DashboardTab extends StatelessWidget {
  const _DashboardTab({
    required DashboardCubit cubit,
  }) : _cubit = cubit;

  final DashboardCubit _cubit;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardCubit, DashboardState>(
      bloc: _cubit,
      builder: (context, state) {
        return state.when(
          initial: () {
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
          loaded: (totalItemsCount) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.supervisor_account,
                  size: 54,
                ),
                Text('Total items count: $totalItemsCount'),
              ],
            );
          },
          loading: () {
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
          error: (error) {
            return Center(
              child: StocksErrorView(error: error),
            );
          },
        );
      },
    );
  }
}
