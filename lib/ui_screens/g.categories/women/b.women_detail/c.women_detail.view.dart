part of '_index.dart';

class WomenDetailView extends StatelessWidget {
  const WomenDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(56),
          child: WomenDetailAppbar(),
        ),
        // floatingActionButton: const ProductDetailFab(),
        body: OnBuilder(
          listenTo: _dt.rxProductFuture,
          builder: () => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WomenDetailPhoto(height: height),
              const SizedBoxH(10),
              const WomenDetailDesc(),
            ],
          ),
        ));
  }
}
