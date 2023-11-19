part of '../_index.dart';

class AdminWomenShoesListCard extends StatelessWidget {
  final WomenShoes product;
  const AdminWomenShoesListCard({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return OnBuilder.data(
      listenToMany: [_dt.rxLoadMore, _dt.rxProductList],
      builder: (data) => Card(
        child: OnReactive(
          () => ListTile(
            selected: product.productId == _dt.rxSelectedId.st,
            title: Text(product.name),
            subtitle: Text('Rp ${Fun.formatRupiah.format(product.price)}'),
            trailing: Text('${product.quantity}'),
            onTap: () {
              _ct.select(product.productId);
            },
          ),
        ),
      ),
    );
  }
}