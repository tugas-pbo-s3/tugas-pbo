part of '_index.dart';

class WomanView extends StatelessWidget {
  const WomanView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: WomanAppbar(),
      ),
      floatingActionButton: WomanFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('woman'),
          ],
        ),
      ),
    );
  }
}
