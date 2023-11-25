part of '../_index.dart';

class ProductListWeb extends StatelessWidget {
  const ProductListWeb({
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
                                  // nav.back();
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
              )
            ],
            backgroundColor: Colors.grey.shade400,
            pinned: true,
            floating: true,
            toolbarHeight: 77,
            bottom: PreferredSize(
              preferredSize: const Size(double.infinity, 50),
              child: TabBar(
                tabAlignment: TabAlignment.center,
                labelStyle: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
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
          ),
        ],
      ),
    );
  }
}
