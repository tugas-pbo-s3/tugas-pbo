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
      child: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            const SliverAppBar(
              leading: ProductListLeading(),
              actions: [ProductListAction()],
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: SizedBox(
                      width: 400,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(55, 0, 20, 0),
                        child: ProductListTabBar(),
                      ),
                    ),
                  ),
                ],
              ),
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
