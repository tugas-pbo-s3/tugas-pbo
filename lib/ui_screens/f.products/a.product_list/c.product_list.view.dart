part of '_index.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: width > 500
          ? DefaultTabController(
              length: 4,
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
                          child: const Text("Logout")),
                      TextButton(onPressed: () {}, child: const Text("Register")),
                      //   PopupMenuButton(
                      //     position: PopupMenuPosition.under,
                      //     child: const Center(child: Text('Women')),
                      //     itemBuilder: (context) {
                      //       return const [
                      //         PopupMenuItem(
                      //           child: Text('text'),
                      //         ),
                      //       ];
                      //     },
                      //   ),
                      //   const SizedBoxW(20),
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
                          Tab(text: 'All'),
                          Tab(text: 'Woman'),
                          Tab(text: 'Man'),
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
                          AllView(),
                          WomanView(),
                          ManView(),
                          KidsView(),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          : DefaultTabController(
              length: 4,
              child: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    backgroundColor: Colors.amber,
                    automaticallyImplyLeading: false,
                    centerTitle: true,
                    title: Image.asset(
                      'assets/images/pegaShoes2000.png',
                      scale: 22,
                    ),
                    actions: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.search),
                      ),
                    ],
                    pinned: true,
                    floating: true,
                    bottom: PreferredSize(
                      preferredSize: const Size(double.infinity, 48),
                      child: TabBar(
                        labelColor: Colors.deepPurple.shade700,
                        indicatorColor: Colors.deepPurple.shade700,
                        tabs: const <Widget>[
                          Tab(text: 'All'),
                          Tab(text: 'Woman'),
                          Tab(text: 'Man'),
                          Tab(text: 'Kids'),
                        ],
                      ),
                    ),
                  ),
                  const SliverToBoxAdapter(
                    child: SizedBox(
                      height: 1000,
                      child: TabBarView(
                        children: <Widget>[
                          AllView(),
                          WomanView(),
                          ManView(),
                          KidsView(),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
    );
  }
}
