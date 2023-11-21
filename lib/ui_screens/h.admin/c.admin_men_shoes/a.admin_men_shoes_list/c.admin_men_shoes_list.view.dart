part of '_index.dart';

class AdminMenShoesListView extends StatelessWidget {
  const AdminMenShoesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: AdminMenShoesListAppbar(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: OnBuilder<List<MenShoes>>.all(
          listenToMany: [_dt.rxLoadMore, _dt.rxProductList],
          onError: (e, s) => const Center(child: Text('error')),
          onWaiting: () => const Center(child: CircularProgressIndicator()),
          onData: (data) => _dt.rxProductList.st.isEmpty
              ? const Stack(
                  children: [
                    Center(child: Text('Data is empty')),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: AdminMenShoesListFab(),
                      ),
                    ),
                  ],
                )
              : OnReactive(
                  () => Stack(
                    children: [
                      ListView(
                        children: [
                          // Text(MediaQuery.of(context).size.width.toString()),
                          for (var item in _dt.rxProductList.st)
                            AdminMenShoesListCard(
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
                      const AdminMenShoesListDetail(),
                      const Padding(
                        padding: EdgeInsets.all(10),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: AdminMenShoesListFab(),
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
