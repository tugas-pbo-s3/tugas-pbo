part of '_index.dart';

class ManDetailView extends StatelessWidget {
  const ManDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ManDetailAppbar(),
      ),
      // floatingActionButton: const ManDetailFab(),
      body: OnBuilder(
        listenTo: _dt.rxProductFuture,
        builder: () => const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // MenDetailPhoto(height: 10),
            SizedBoxH(10),
            MenDetailDesc(),
          ],
        ),
      ),
    );
  }
}
