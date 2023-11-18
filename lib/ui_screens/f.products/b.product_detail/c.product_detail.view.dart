part of '_index.dart';

class ProductDetailView extends StatelessWidget {
  const ProductDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(56),
          child: ProductDetailAppbar(),
        ),
        // floatingActionButton: const ProductDetailFab(),
        body: OnBuilder(
          listenTo: _dt.rxProductFuture,
          builder: () => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DetailPhoto(height: height),
              const SizedBoxH(10),
              const DetailDesc(),
            ],
          ),
        ));
  }
}
