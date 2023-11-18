part of '../_index.dart';

class ProductDetailFab extends StatelessWidget {
  const ProductDetailFab({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.shopping_cart),
      onPressed: () => nav.to(Routes.cart),
    );
  }
}
