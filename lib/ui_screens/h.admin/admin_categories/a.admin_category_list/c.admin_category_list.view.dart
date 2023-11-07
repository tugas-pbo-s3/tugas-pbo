part of '_index.dart';

class AdminCategoryListView extends StatelessWidget {
  const AdminCategoryListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: AdminCategoryListAppbar(),
      ),
      floatingActionButton: const AdminCategoryListFab(),
      body: OnBuilder<List<Category>>.all(
        listenToMany: [_dt.rxLoadMore, _dt.rxCategoryList],
        onError: (e, s) => const Center(child: Text('error')),
        onWaiting: () => const Center(child: CircularProgressIndicator()),
        onData: (data) => _dt.rxCategoryList.st.isEmpty
            ? const Center(child: Text('Data is empty'))
            : ListView(
                children: [
                  for (var item in _dt.rxCategoryList.st)
                    AdminCategoryListCard(
                      category: item,
                    ),
                  const AdminCategoryListLoadMore(),
                  // dt.rxLoadMore.rebuild.onOrElse(
                  //   onWaiting: () => const CircularProgressIndicator(),
                  //   orElse: (data) => const ProductListLoadmore(),
                  // ),
                ],
              ),
      ),
    );
  }
}
