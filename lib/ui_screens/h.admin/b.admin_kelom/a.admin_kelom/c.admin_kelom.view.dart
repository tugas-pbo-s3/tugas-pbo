part of '_index.dart';

class AdminKelomView extends StatelessWidget {
  const AdminKelomView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: AdminKelomAppbar(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: OnBuilder<List<Kelom>>.all(
          listenToMany: [_dt.rxLoadMore, _dt.rxProductList],
          onError: (e, s) => const Center(child: Text('error')),
          onWaiting: () => _dt.rxProductList.st.isEmpty
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : const AdminKelomCards(),
          onData: (data) => _dt.rxProductList.st.isEmpty
              ? const Stack(
                  children: [
                    Center(child: Text('Data is empty')),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: AdminKelomFab(),
                      ),
                    ),
                  ],
                )
              : const AdminKelomCards(),
        ),
      ),
    );
  }
}