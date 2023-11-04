part of '_index.dart';

class AdminProductInputView extends StatelessWidget {
  const AdminProductInputView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: AdminProductInputAppbar(),
      ),
      floatingActionButton: AdminProductInputFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AdminProductInputCharlie(),
            AdminProductInputDelta(),
            AdminProductInputEcho(),
          ],
        ),
      ),
    );
  }
}
