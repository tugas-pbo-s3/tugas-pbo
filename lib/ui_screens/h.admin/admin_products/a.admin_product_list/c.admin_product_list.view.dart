part of '_index.dart';

class AdminProductListView extends StatelessWidget {
  const AdminProductListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: AdminProductListAppbar(),
      ),
      floatingActionButton: const AdminProductListFab(),
      body: OnBuilder<List<WomenShoes>>.all(
        listenToMany: [_dt.rxLoadMore, _dt.rxProductList],
        onError: (e, s) => const Center(child: Text('error')),
        onWaiting: () => const Center(child: CircularProgressIndicator()),
        onData: (data) => _dt.rxProductList.st.isEmpty
            ? const Center(child: Text('Data is empty'))
            : ListView(
                children: [
                  for (var item in _dt.rxProductList.st)
                    AdminProductListCard(
                      product: item,
                    ),
                  // const ProductListLoadmore(),
                  // dt.rxLoadMore.rebuild.onOrElse(
                  //   onWaiting: () => const CircularProgressIndicator(),
                  //   orElse: (data) => const ProductListLoadmore(),
                  // ),
                  _dt.rxIsEnd.st
                      ? const Center(child: Text('-- end of list --'))
                      : Center(
                          child: OutlinedButton(
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
