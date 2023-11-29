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
          onWaiting: () => _dt.rxProductList.st.isEmpty
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : const AdminWomenShoesListCards(),
          onData: (data) => _dt.rxProductList.st.isEmpty
              ? const Stack(
                  children: [
                    Center(child: Text('Data is empty')),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: AdminWomenShoesListFab(),
                      ),
                    ),
                  ],
                )
              : const AdminWomenShoesListCards(),
        ),
      ),
    );
  }
}
