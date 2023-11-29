part of '../_index.dart';

class ProductListAction extends StatelessWidget {
  const ProductListAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Row(
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
          OnReactive(
            () => InkWell(
              customBorder: const CircleBorder(),
              onTap: () {
                Scaffold.of(context).openEndDrawer();
              },
              child: Card(
                shape: const CircleBorder(),
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.grey.withOpacity(0.2),
                  backgroundImage: _dt.rxUser.st?.photoURL != null ? NetworkImage('${_dt.rxUser.st?.photoURL}') : null,
                  child: _dt.rxUser.st?.photoURL == null
                      ? const Icon(
                          Icons.person,
                          size: 20,
                          color: Colors.grey,
                        )
                      : null,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
