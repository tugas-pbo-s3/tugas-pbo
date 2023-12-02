part of '_index.dart';

class AdminKebayaView extends StatelessWidget {
  const AdminKebayaView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: AdminKebayaAppbar(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: OnBuilder<List<Kebaya>>.all(
          listenToMany: [_dt.rxLoadMore, _dt.rxProductList],
          onError: (e, s) => const Center(child: Text('error')),
          onWaiting: () => _dt.rxProductList.st.isEmpty
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : const AdminKebayaCards(),
          onData: (data) => _dt.rxProductList.st.isEmpty
              ? const Stack(
                  children: [
                    Center(child: Text('Data is empty')),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: AdminKebayaFab(),
                      ),
                    ),
                  ],
                )
              : const AdminKebayaCards(),
        ),
      ),
    );
  }
}
