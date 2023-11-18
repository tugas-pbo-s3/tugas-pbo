part of '_index.dart';

class AdminWomenShoesListView extends StatelessWidget {
  const AdminWomenShoesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: AdminWomenShoesListAppbar(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: OnBuilder<List<WomenShoes>>.all(
          listenToMany: [_dt.rxLoadMore, _dt.rxProductList],
          onError: (e, s) => const Center(child: Text('error')),
          onWaiting: () => const Center(child: CircularProgressIndicator()),
          onData: (data) => _dt.rxProductList.st.isEmpty
              ? const Center(child: Text('Data is empty'))
              : OnReactive(
                  () => Stack(
                    children: [
                      ListView(
                        children: [
                          Text(MediaQuery.of(context).size.width.toString()),
                          for (var item in _dt.rxProductList.st)
                            AdminWomenShoesListCard(
                              product: item,
                            ),
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
                      const AdminWomenShoesListDetail(),
                      const Padding(
                        padding: EdgeInsets.all(10),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: AdminWomenShoesListFab(),
                        ),
                      ),
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
