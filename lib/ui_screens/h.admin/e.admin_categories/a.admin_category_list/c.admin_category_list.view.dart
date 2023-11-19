part of '_index.dart';

class AdminCategoryListView extends StatelessWidget {
  const AdminCategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: AdminCategoryListAppbar(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: OnBuilder<List<Category>>.all(
          listenToMany: [_dt.rxLoadMore, _dt.rxCategoryList],
          onError: (e, s) => const Center(child: Text('error')),
          onWaiting: () => const Center(child: CircularProgressIndicator()),
          onData: (data) => _dt.rxCategoryList.st.isEmpty
              ? const Center(child: Text('Data is empty'))
              : Stack(
                  children: [
                    ListView(
                      children: [
                        for (var item in _dt.rxCategoryList.st)
                          AdminCategoryListCard(
                            category: item,
                          ),
                      ],
                    ),
                    const AdminCategoryListDetail(),
                    const Padding(
                      padding: EdgeInsets.all(10),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: AdminCategoryListFab(),
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
