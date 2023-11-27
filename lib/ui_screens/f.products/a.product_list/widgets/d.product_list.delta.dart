part of '../_index.dart';

class ProductListDelta extends StatelessWidget {
  const ProductListDelta({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(7.0),
        child: Image.asset(
          'assets/images/pegaShoes500.png',
        ),
      ),
    );
  }
}
