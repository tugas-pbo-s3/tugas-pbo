part of '../_index.dart';

class AdminMenShoesListCards extends StatelessWidget {
  const AdminMenShoesListCards({
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
                AdminMenShoesListCard(
                  product: item,
                ),
              const AdminMenShoesListLoadMore()
            ],
          ),
          const AdminMenShoesListDetail(),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Align(
              alignment: Alignment.bottomRight,
              child: AdminMenShoesListFab(),
            ),
          ),
        ],
      ),
    );
  }
}
