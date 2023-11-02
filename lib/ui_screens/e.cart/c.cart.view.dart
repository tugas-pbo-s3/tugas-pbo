part of '_index.dart';

class CartView extends StatelessWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: CartAppbar(),
      ),
      floatingActionButton: CartFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CartCharlie(),
            CartDelta(),
            CartEcho(),
          ],
        ),
      ),
    );
  }
}
