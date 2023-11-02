part of '_index.dart';

class ManView extends StatelessWidget {
  const ManView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ManAppbar(),
      ),
      floatingActionButton: ManFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ManCharlie(),
            ManDelta(),
            ManEcho(),
          ],
        ),
      ),
    );
  }
}
