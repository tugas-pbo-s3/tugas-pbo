part of '../_index.dart';

class ProductListPhone extends StatelessWidget {
  const ProductListPhone({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            leading: Row(
              children: [
                Center(
                  child: Image.asset(
                    'assets/images/pegaShoes2000.png',
                  ),
                ),
              ],
            ),
            leadingWidth: width,
            actions: [
              IconButton(
                onPressed: () {
                  nav.to(Routes.search);
                },
                icon: const Icon(Icons.search),
              ),
              IconButton(
                onPressed: () {
                  nav.to(Routes.cart);
                },
                icon: const Icon(Icons.shopping_cart),
              ),
              OutlinedButton(
                onPressed: () {
                  _ct.signOut();
                },
                child: const Text("Logout"),
              ),
            ],
            backgroundColor: Colors.amber,
            pinned: true,
            floating: true,
            toolbarHeight: 99,
            bottom: PreferredSize(
              preferredSize: const Size(double.infinity, 50),
              child: TabBar(
                tabAlignment: TabAlignment.center,
                labelColor: Colors.deepPurple.shade700,
                indicatorColor: Colors.deepPurple.shade700,
                tabs: const <Widget>[
                  Tab(text: 'Women'),
                  Tab(text: 'Men'),
                  Tab(text: 'Kids'),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 1000,
              child: TabBarView(
                children: [
                  WomenView(),
                  ManView(),
                  KidsView(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
