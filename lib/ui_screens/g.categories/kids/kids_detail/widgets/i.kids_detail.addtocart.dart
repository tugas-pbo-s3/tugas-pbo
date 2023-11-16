part of '../_index.dart';

class KidsDetailAddtoCart extends StatelessWidget {
  const KidsDetailAddtoCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _ct.addToCart();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 100,
        ),
        decoration: BoxDecoration(
          color: const Color(0xFFFD725A),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          'Add to cart',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w600,
            letterSpacing: 1,
            color: Colors.white.withOpacity(0.9),
          ),
        ),
      ),
    );
  }
}
