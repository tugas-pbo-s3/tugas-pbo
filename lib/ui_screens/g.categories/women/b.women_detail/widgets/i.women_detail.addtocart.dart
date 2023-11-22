part of '../_index.dart';

class WomenDetailAddtoCart extends StatelessWidget {
  const WomenDetailAddtoCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _dt.rxUser.st!.isAnonymous
            ? nav.toDialog(
                AlertDialog(
                  title: const Text('Warning!'),
                  content: const Text(
                    'You cannot add this product to your cart because you are logged in as anonymous. try to log in again',
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        nav.back();
                      },
                      child: const Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () {
                        nav.back();
                        _ct.signOut();
                      },
                      child: const Text('Login'),
                    ),
                  ],
                ),
              )
            : _ct.addToCart();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 100,
        ),
        decoration: BoxDecoration(
          color: Colors.purple,
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
