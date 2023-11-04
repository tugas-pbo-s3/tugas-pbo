part of '_index.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ProductListAppbar(),
      ),
      floatingActionButton: const ProductListFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const ProductListCharlie(),
            const ProductListDelta(),
            const ProductListEcho(),
            ElevatedButton(
              onPressed: () {
                _ct.signOut();
              },
              child: const Text('Sign out'),
            ),
            ElevatedButton(
              onPressed: () {
                _ct.delete();
              },
              child: const Text('Delete Account'),
            )
          ],
        ),
      ),
    );
  }
}
