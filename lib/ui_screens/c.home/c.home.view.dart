part of '_index.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  var listPage = <Widget>[
    const ProductListView(),
    const CartView(),
    const ProfileView(),
  ];
  int x = 0;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return width < 500
        ? Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              fixedColor: Colors.amber,
              type: BottomNavigationBarType.fixed,
              currentIndex: x,
              onTap: (i) {
                x = i;
                setState(() {});
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
            body: listPage[x],
          )
        : const ProductListView();
  }
}
