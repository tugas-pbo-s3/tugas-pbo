part of '../_index.dart';

class HomePhone extends StatelessWidget {
  const HomePhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.amber,
        type: BottomNavigationBarType.fixed,
        currentIndex: _dt.rxCurrentIndex.st,
        onTap: (i) {
          _dt.rxCurrentIndex.setState((s) => i);
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
      body: _dt.listPage[_dt.rxCurrentIndex.st],
    );
  }
}
