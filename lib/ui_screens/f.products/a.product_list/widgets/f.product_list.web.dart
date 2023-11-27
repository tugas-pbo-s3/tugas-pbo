part of '../_index.dart';

class ProductListWeb extends StatelessWidget {
  const ProductListWeb({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 3,
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            leading: ProductListDelta(),
            actions: [ProductListEcho()],
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: SizedBox(
                    width: 400,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(55, 0, 20, 0),
                      child: ProductListCharlie(),
                    ),
                  ),
                ),
              ],
            ),
            pinned: false,
            floating: true,
            bottom: PreferredSize(
              preferredSize: Size(double.infinity, 1),
              child: Divider(
                height: 1,
              ),
            ),
          ),
          SliverToBoxAdapter(
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
