part of '_index.dart';

class KidsDetailView extends StatelessWidget {
  const KidsDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: KidsDetailAppbar(),
      ),
      // floatingActionButton: const ProductDetailFab(),
      body: OnBuilder(
        listenTo: _dt.rxProductFuture,
        builder: () => const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // WomenDetailPhoto(height: height),
            SizedBoxH(10),
            KidsDetailDesc(),
          ],
        ),
      ),
    );
  }
}
