part of '../_index.dart';

class AdminProductListCard extends StatelessWidget {
  final WomenShoes product;
  const AdminProductListCard({
    Key? key,
    required this.product,
  }) : super(key: key);

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
              logx.wtf('selected id: ${_dt.rxSelectedId.st}');
              logx.wtf('id: ${product.productId}');
            },
          ),
        ),
      ),
    );
  }
}
