part of '../_index.dart';

class ProductListLeading extends StatelessWidget {
  const ProductListLeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Image.asset(
          'assets/images/sigeulis-text.png',
        ),
      ),
    );
  }
}
