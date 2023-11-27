part of '../_index.dart';

class ProductListEcho extends StatelessWidget {
  const ProductListEcho({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            _dt.rxUser.st!.isAnonymous
                ? nav.toDialog(
                    AlertDialog(
                      title: const Text('Warning!'),
                      content: const Text(
                        'You are logged in as anonymous. Please log in to view your cart',
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
                            _ct.signOut();
                          },
                          child: const Text('Login'),
                        ),
                      ],
                    ),
                  )
                : nav.to(Routes.cart);
          },
          icon: const Icon(Icons.shopping_cart),
        ),
        IconButton(
          onPressed: () {
            Scaffold.of(context).openEndDrawer();
          },
          icon: const Icon(Icons.more_vert),
        ),
      ],
    );
  }
}
