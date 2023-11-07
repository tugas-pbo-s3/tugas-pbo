part of '_index.dart';

class AdminCategoryDetailView extends StatelessWidget {
  const AdminCategoryDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: AdminCategoryDetailAppbar(),
      ),
      floatingActionButton: const AdminCategoryDetailFab(),
      body: OnBuilder<Category?>.all(
        listenTo: _dt.rxCategoryFuture,
        onWaiting: () => const Center(child: CircularProgressIndicator()),
        onError: (e, s) => const Center(child: Text('Error')),
        onData: (data) => data == null
            ? const Center(child: Text('Data is empty'))
            : Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(data.categoryId),
                    Text(data.name),
                    Text(data.createdAt),
                    Text(data.updatedAt),
                  ],
                ),
              ),
      ),
    );
  }
}
