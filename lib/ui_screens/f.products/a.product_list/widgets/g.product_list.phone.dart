part of '../_index.dart';

class ProductListPhone extends StatelessWidget {
  const ProductListPhone({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            const SliverAppBar(
              actions: [SizedBox.shrink()],
              title: ProductListCharlie(),
              bottom: PreferredSize(
                preferredSize: Size(double.infinity, 1),
                child: Divider(
                  height: 1,
                ),
              ),
            ),
          ];
        },
        body: const TabBarView(
          children: <Widget>[
            WomenView(),
            ManView(),
            KidsView(),
          ],
        ),
      ),
    );
  }
}
