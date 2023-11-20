part of '../_index.dart';

class ProductListPhone extends StatelessWidget {
  const ProductListPhone({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.grey.shade400,
            automaticallyImplyLeading: false,
            actions: const [SizedBox.shrink()],
            centerTitle: true,
            // title: Image.asset(
            //   'assets/images/pegaShoes2000.png',
            //   scale: 30,
            // ),
            pinned: true,
            floating: true,
            bottom: PreferredSize(
              preferredSize: const Size(double.infinity, 48),
              child: TabBar(
                labelStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                children: <Widget>[
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
