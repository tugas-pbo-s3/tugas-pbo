part of '../_index.dart';

class AdminKebayaCards extends StatelessWidget {
  const AdminKebayaCards({
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
                AdminKebayaCard(
                  product: item,
                ),
              const AdminKebayaLoadMore()
            ],
          ),
          const AdminKebayaDetail(),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Align(
              alignment: Alignment.bottomRight,
              child: AdminKebayaFab(),
            ),
          ),
        ],
      ),
    );
  }
}
