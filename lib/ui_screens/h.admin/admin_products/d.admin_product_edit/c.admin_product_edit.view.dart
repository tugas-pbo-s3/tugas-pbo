part of '_index.dart';

class AdminProductEditView extends StatelessWidget {
  const AdminProductEditView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: AdminProductEditAppbar(),
      ),
      floatingActionButton: AdminProductEditFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AdminProductEditCharlie(),
            AdminProductEditDelta(),
            AdminProductEditEcho(),
          ],
        ),
      ),
    );
  }
}
