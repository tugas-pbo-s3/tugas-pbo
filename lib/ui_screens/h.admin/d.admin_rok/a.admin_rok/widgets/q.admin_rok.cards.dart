part of '../_index.dart';

class AdminKidsShoesListCards extends StatelessWidget {
  const AdminKidsShoesListCards({
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
                AdminKidsShoesListCard(
                  product: item,
                ),
              const AdminKidsShoesListLoadMore()
            ],
          ),
          const AdminKidsShoesListDetail(),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Align(
              alignment: Alignment.bottomRight,
              child: AdminKidsShoesListFab(),
            ),
          ),
        ],
      ),
    );
  }
}
