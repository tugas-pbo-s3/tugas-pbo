part of '../_index.dart';

class AdminRokCards extends StatelessWidget {
  const AdminRokCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => Stack(
        children: [
          ListView(
            children: [
              for (var item in _dt.rxProductList.st)
                AdminRokCard(
                  product: item,
                ),
              const AdminRokLoadMore()
            ],
          ),
          const AdminRokDetail(),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Align(
              alignment: Alignment.bottomRight,
              child: AdminRokFab(),
            ),
          ),
        ],
      ),
    );
  }
}
