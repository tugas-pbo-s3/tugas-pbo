part of '_index.dart';

class WomenDetailCtrl {
  init() => logxx.i(WomenDetailCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);

  addToCart() {
    WomenShoes product = WomenShoes(
      name: _dt.rxProductFuture.st!.name,
      price: _dt.rxProductFuture.st!.price,
      quantity: _dt.rxProductFuture.st!.quantity,
      productId: Prov.women.st.rxProductFuture.st!.productId,
      imageUrl: Prov.women.st.rxProductFuture.st!.imageUrl,
      createdAt: Prov.women.st.rxProductFuture.st!.createdAt,
      category: Prov.women.st.rxProductFuture.st!.category,
      colors: Prov.women.st.rxProductFuture.st!.colors,
      sizes: Prov.women.st.rxProductFuture.st!.sizes,
      merk: Prov.women.st.rxProductFuture.st!.merk,
      description: Prov.women.st.rxProductFuture.st!.description,
    );

    _sv.addToCart(product, totalItems: _dt.rxAngka.st);
    nav.back();
    logx.i('addtocart');
  }

  //   addToCart(WomenShoes shoes, {int totalItems = 1}) {
  //   _svProduct.addToCart(shoes, totalItems);
  // }
}
