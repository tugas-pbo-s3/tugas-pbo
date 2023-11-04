part of '_index.dart';

class AdminProductDetailView extends StatelessWidget {
  const AdminProductDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: AdminProductDetailAppbar(),
      ),
      floatingActionButton: AdminProductDetailFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AdminProductDetailCharlie(),
            AdminProductDetailDelta(),
            AdminProductDetailEcho(),
          ],
        ),
      ),
    );
  }
}
