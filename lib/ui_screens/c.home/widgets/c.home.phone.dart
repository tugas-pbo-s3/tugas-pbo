part of '../_index.dart';

class HomePhone extends StatelessWidget {
  const HomePhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: OnBuilder(
        listenTo: _dt.rxCurrentIndex,
        builder: () => BottomNavigationBar(
          fixedColor: Colors.purple,
          type: BottomNavigationBarType.fixed,
          currentIndex: _dt.rxCurrentIndex.st,
          onTap: (i) {
            _dt.rxCurrentIndex.st = i;
            logx.e(i.toString());
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_sharp),
              label: 'Beranda',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Keranjang',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'profil',
            ),
          ],
        ),
      ),
      // body: OnBuilder(
      //   listenTo: _dt.rxCurrentIndex,
      //   builder: () => _dt.listPage[_dt.rxCurrentIndex.st],
      // ),
      // body: OnReactive(
      //   () => _dt.listPage[_dt.rxCurrentIndex.st],
      // ),
      body: OnReactive(
        () {
          final x = _dt.rxCurrentIndex.st;
          if (x == 0) {
            return const ProductListView();
          } else if (x == 1) {
            // _dt.rxUser.st!.isAnonymous
            //     ? nav.toDialog(
            //         AlertDialog(
            //           title: const Text('Warning!'),
            //           content: const Text(
            //             'You cannot add this product to your cart because you are logged in as anonymous. try to log in again',
            //           ),
            //           actions: [
            //             TextButton(
            //               onPressed: () {
            //                 nav.back();
            //               },
            //               child: const Text('Cancel'),
            //             ),
            //             TextButton(
            //               onPressed: () {
            //                 nav.back();
            //                 _ct.signOut();
            //               },
            //               child: const Text('Login'),
            //             ),
            //           ],
            //         ),
            //       )
            //     :

            return const CartView();
          }
          return const ProfileViewPhone();
        },
      ),
    );
  }
}
