part of '../_index.dart';

class AdminWomenShoesListCards extends StatelessWidget {
  const AdminWomenShoesListCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => Stack(
        children: [
          ListView(
            children: [
              // Text(MediaQuery.of(context).size.width.toString()),
              for (var item in _dt.rxProductList.st)
                AdminWomenShoesListCard(
                  product: item,
                ),
              const AdminWomenShoesListLoadMore(),
            ],
          ),
          const AdminWomenShoesListDetail(),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Align(
              alignment: Alignment.bottomRight,
              child: AdminWomenShoesListFab(),
            ),
          ),
        ],
      ),
    );
  }
}
