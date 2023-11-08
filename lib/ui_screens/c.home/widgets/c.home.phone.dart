part of '../_index.dart';

class HomePhone extends StatelessWidget {
  const HomePhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: OnBuilder(
        listenTo: _dt.rxCurrentIndex,
        builder: () => BottomNavigationBar(
          fixedColor: Colors.amber,
          type: BottomNavigationBarType.fixed,
          currentIndex: _dt.rxCurrentIndex.st,
          onTap: (i) {
            _dt.rxCurrentIndex.setState((s) => i);
            logx.e(i.toString());
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_sharp),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'profile',
            ),
          ],
        ),
      ),
      body: OnBuilder(
        listenTo: _dt.rxCurrentIndex,
        builder: () => _dt.listPage[_dt.rxCurrentIndex.st],
      ),
    );
  }
}
