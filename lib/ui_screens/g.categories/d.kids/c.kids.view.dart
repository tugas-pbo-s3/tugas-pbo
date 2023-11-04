part of '_index.dart';

class KidsView extends StatelessWidget {
  const KidsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: KidsAppbar(),
      ),
      floatingActionButton: KidsFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('kids'),
          ],
        ),
      ),
    );
  }
}
