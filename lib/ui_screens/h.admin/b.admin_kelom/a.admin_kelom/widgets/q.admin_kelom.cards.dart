part of '../_index.dart';

class AdminKelomCards extends StatelessWidget {
  const AdminKelomCards({
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
                AdminKelomCard(
                  product: item,
                ),
              const AdminKelomLoadMore(),
            ],
          ),
          const AdminKelomDetail(),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Align(
              alignment: Alignment.bottomRight,
              child: AdminKelomFab(),
            ),
          ),
        ],
      ),
    );
  }
}
