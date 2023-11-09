part of '_index.dart';

class ManDetailView extends StatelessWidget {
  const ManDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ManDetailAppbar(),
      ),
      floatingActionButton: ManDetailFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ManDetailCharlie(),
            ManDetailDelta(),
            ManDetailEcho(),
          ],
        ),
      ),
    );
  }
}
