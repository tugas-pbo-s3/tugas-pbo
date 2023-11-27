part of '../_index.dart';

class ProductListPhone extends StatelessWidget {
  const ProductListPhone({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 3,
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            actions: [SizedBox.shrink()],
            centerTitle: true,
            title: ProductListCharlie(),
            pinned: true,
            floating: true,
            bottom: PreferredSize(
              preferredSize: Size(double.infinity, 1),
              child: Divider(
                height: 1,
              ),
            ),
          ),
          SliverFillRemaining(
            child: SizedBox(
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
