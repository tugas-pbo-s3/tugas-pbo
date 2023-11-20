part of '_index.dart';

class WomenServ {
  init() => logxx.i(WomenServ, '.....');

  readAllProducts() {
    _pv.rxLoadMore.stateAsync = _rp.readAllProducts(
      _pv.rxProductList.st.isNotEmpty ? _pv.rxProductList.st.last.createdAt : '9999-99-99 99:99:99.999',
    );
    logx.e('ini womenn');
  }

  addToList(List<WomenShoes> moreProduct) {
    _pv.rxProductList.st = [..._pv.rxProductList.st, ...moreProduct];
    if (moreProduct.length < _pv.limit) {
      _pv.rxIsEnd.st = true;
    }
  }

  setSelectedId(String id) {
    _pv.rxSelectedId.refresh();
    _pv.rxSelectedId.setState((s) => id);
  }

  initProducts() {
    _pv.rxIsEnd.refresh();
    _pv.rxProductList.refresh();
    _pv.rxSelectedId.refresh();

    readAllProducts();
  }

  // * serv read detail
  readProduct() {
    _pv.rxProductFuture.stateAsync = _rp.readProduct();
  }

  Future<void> createProduct(WomenShoes product) {
    return _rp.createProduct(product);
  }

  Future<void> updateProduct(WomenShoes womenShoes, Map<String, String>? images) async {
    return _rp.updateProduct(womenShoes, images);
  }

  Future<void> uploadImages(Map<String, String> images) {
    return _rp.uploadImages(images);
  }

  updateOneOfProductList(WomenShoes w) {
    _pv.rxProductList.setState(
      (s) {
        final index = s.indexWhere((element) => element.productId == _pv.rxSelectedId.st);
        return s[index] = w;
      },
    );
  }

  // * cart

  addToCart(CartedShoes cartedShoes) {
    _svCart.addToCart(cartedShoes);
  }

  updateToCart(CartedShoes cartedShoes, int index) {
    _svCart.updateToCart(cartedShoes, index);
  }

// *--------------------------
  deleteOneOfProduct() {
    _pv.rxProductList.st = [..._pv.rxProductList.st]
      ..removeWhere((element) => element.productId == _pv.rxSelectedId.st);
  }

  Future<void> deleteProduct() {
    return _rp.deleteProduct();
  }
}
