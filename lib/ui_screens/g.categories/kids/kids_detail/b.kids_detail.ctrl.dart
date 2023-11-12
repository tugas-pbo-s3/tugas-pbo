part of '_index.dart';

class KidsDetailCtrl {
  init() => logxx.i(KidsDetailCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);
  addToCart() {
    KidsShoes product = KidsShoes(
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

    _sv.addToCart(product, totalItems: _dt.rxAngka.st);
    nav.back();
    logx.i('addtocart');
  }
}
