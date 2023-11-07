part of '../_index.dart';

class AdminCategoryListLoadMore extends StatelessWidget {
  const AdminCategoryListLoadMore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OnBuilder<List<Category>>.all(
              listenTo: _dt.rxLoadMore,
              onWaiting: () => const CircularProgressIndicator(),
              onError: (_, __) => const Text('error'),
              onData: (_) => _dt.rxIsEnd.st
                  ? const Text('... end of list ...')
                  : OutlinedButton(
                      child: const Text('load more'),
                      onPressed: () => _ct.loadMore(),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
