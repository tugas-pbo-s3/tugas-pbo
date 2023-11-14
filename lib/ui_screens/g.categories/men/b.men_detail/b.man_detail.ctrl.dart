part of '_index.dart';

class ManDetailCtrl {
  init() => logxx.i(ManDetailCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);

  addToCart() {
    MenShoes product = MenShoes(
      name: _dt.rxProductFuture.st!.name,
      price: _dt.rxProductFuture.st!.price,
      quantity: _dt.rxProductFuture.st!.quantity,
      productId: _pv.rxProductFuture.st!.productId,
      imageUrl: _pv.rxProductFuture.st!.imageUrl,
      createdAt: _pv.rxProductFuture.st!.createdAt,
      category: _pv.rxProductFuture.st!.category,
      colors: _pv.rxProductFuture.st!.colors,
      sizes: _pv.rxProductFuture.st!.sizes,
      merk: _pv.rxProductFuture.st!.merk,
      description: _pv.rxProductFuture.st!.description,
    );

    // _sv.addToCart(product, qty: _dt.rxAngka.st);
    _sv.addToCart(CartedShoes(shoes: product, qty: 1, size: product.sizes.first, color: product.colors.first));

    nav.back();
    logx.i('addtocart');
  }
}
